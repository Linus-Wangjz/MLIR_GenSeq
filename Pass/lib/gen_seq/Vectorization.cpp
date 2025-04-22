#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinAttributes.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/IR/Value.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Support/LLVM.h"
#include "mlir/Transforms/DialectConversion.h"
#include "llvm/ADT/Sequence.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/raw_ostream.h"
#include "Hello/HelloPasses.h"
#include <cstddef>
#include <unordered_map>
#include <vector>

void collect_garbage(std::vector<mlir::Operation *> &garbage) {
    while (!garbage.empty()) {
        garbage.back()->erase();
        garbage.pop_back();
    }
}

void vectorize_ops(std::unordered_map<mlir::Operation *, mlir::OpResult> &map, std::vector<mlir::Operation *> &garbage, mlir::Operation *op, mlir::OpBuilder &builder) {
    if (auto loadOp = mlir::dyn_cast<mlir::affine::AffineLoadOp>(op)) {
        auto memRef = loadOp.getMemref();
        auto vectorType = mlir::VectorType::get({8}, builder.getIntegerType(32));
        auto indices = loadOp.getIndices();
        const auto &loadOp_vec = builder.create<mlir::vector::LoadOp>(loadOp->getLoc(), vectorType, memRef, indices);
        map[loadOp.getOperation()] = loadOp_vec->getResult(0);
        // collect garbage
        garbage.push_back(loadOp.getOperation());
    } else if (auto addiOp = mlir::dyn_cast<mlir::arith::AddIOp>(op)) {
        auto op1 = addiOp.getOperand(0);
        auto op2 = addiOp.getOperand(1);
        auto op1_new = map[op1.getDefiningOp()];
        auto op2_new = map[op2.getDefiningOp()];
        const auto &addi_vec = builder.create<mlir::arith::AddIOp>(addiOp->getLoc(), op1_new, op2_new);
        map[addiOp.getOperation()] = addi_vec->getResult(0);
        // collect garbage
        garbage.push_back(addiOp.getOperation());
    } else if (auto cmpiOp = mlir::dyn_cast<mlir::arith::CmpIOp>(op)) {
        auto op1 = cmpiOp.getOperand(0);
        auto op2 = cmpiOp.getOperand(1);
        const auto &cmpi_vec = builder.create<mlir::arith::CmpIOp>(cmpiOp->getLoc(), cmpiOp.getPredicate(), map[op1.getDefiningOp()], map[op2.getDefiningOp()]);
        map[cmpiOp.getOperation()] = cmpi_vec->getResult(0);
        // collect garbage
        garbage.push_back(cmpiOp.getOperation());
    } else if (auto extuiOp = mlir::dyn_cast<mlir::arith::ExtUIOp>(op)) {
        auto op1 = extuiOp.getOperand();
        auto vectorType = mlir::VectorType::get({8}, builder.getIntegerType(32));
        const auto &extui_vec = builder.create<mlir::arith::ExtUIOp>(extuiOp->getLoc(), vectorType, map[op1.getDefiningOp()]);
        map[extuiOp.getOperation()] = extui_vec->getResult(0);
        // collect garbage
        garbage.push_back(extuiOp.getOperation());
    } else if (auto muliOp = mlir::dyn_cast<mlir::arith::MulIOp>(op)) {
        auto op1 = muliOp.getOperand(0);
        auto op2 = muliOp.getOperand(1);
        const auto &muli_vec = builder.create<mlir::arith::MulIOp>(muliOp->getLoc(), map[op1.getDefiningOp()], map[op2.getDefiningOp()]);
        map[muliOp.getOperation()] = muli_vec->getResult(0);
        // collect garbage
        garbage.push_back(muliOp.getOperation());
    } else if (auto subiOp = mlir::dyn_cast<mlir::arith::SubIOp>(op)) {
        auto op1 = subiOp.getOperand(0);
        auto op2 = subiOp.getOperand(1);
        const auto &subi_vec = builder.create<mlir::arith::SubIOp>(subiOp->getLoc(), map[op1.getDefiningOp()], map[op2.getDefiningOp()]);
        map[subiOp.getOperation()] = subi_vec->getResult(0);
        // collect garbage
        garbage.push_back(subiOp.getOperation());
    } else if (auto selectOp = mlir::dyn_cast<mlir::arith::SelectOp>(op)) {
        auto op1 = selectOp.getOperand(0);
        auto op2 = selectOp.getOperand(1);
        auto op3 = selectOp.getOperand(2);
        const auto &select_vec = builder.create<mlir::arith::SelectOp>(selectOp->getLoc(), map[op1.getDefiningOp()], map[op2.getDefiningOp()], map[op3.getDefiningOp()]);
        map[selectOp.getOperation()] = select_vec->getResult(0);
        // collect garbage
        garbage.push_back(selectOp.getOperation());
    } else if (auto storeOp = mlir::dyn_cast<mlir::affine::AffineStoreOp>(op)) {
        auto memRef = storeOp.getMemRef(); 
        // auto vectorType = mlir::VectorType::get({8}, builder.getIntegerType(32));
        auto indices = storeOp.getIndices(); 
        auto op = storeOp.getValueToStore();
        builder.create<mlir::vector::StoreOp>(storeOp->getLoc(), map[op.getDefiningOp()], memRef, indices);
        // map[storeOp.getOperation()] = store_vec->getResult(0);
        // collect garbage
        storeOp.erase();
    } 
} 

struct GenSeqPass : public mlir::PassWrapper<GenSeqPass, mlir::OperationPass<mlir::ModuleOp>> {
    void runOnOperation() override {
        llvm::outs() << "run gen seq pass\n";
        // map to store hoist ops
        getOperation().walk([](mlir::affine::AffineForOp forOp1) {
            std::unordered_map<mlir::Operation *, mlir::OpResult> map;
            forOp1.getBody()->walk([&](mlir::affine::AffineForOp forOp2) {
                forOp2.getBody()->walk([&](mlir::affine::AffineForOp forOp3) {
                    std::vector<mlir::Operation *> garbage;
                    mlir::OpBuilder builder(forOp1->getContext());
                    builder.setInsertionPointToStart(forOp1->getBlock());
                    forOp1.setStep(8);
                    // walk through all ops to find constant attr
                    forOp3.getBody()->walk([&](mlir::Operation *op) {
                        for (const auto &operand: op->getOperands()) {
                            if (auto oper = operand.getDefiningOp()) {
                                if (auto constOp = mlir::dyn_cast<mlir::arith::ConstantIntOp>(oper)) {
                                    if (map.find(constOp.getOperation()) == map.end()) {
                                        auto constOp_val = constOp.getValue();
                                        auto int_val = mlir::dyn_cast<mlir::IntegerAttr>(constOp_val);
                                        const auto &constOp_hoist = builder.create<mlir::arith::ConstantIntOp>(forOp1->getLoc(), int_val.getInt(), 32);
                                        auto vectorType = mlir::VectorType::get({8}, builder.getIntegerType(32));
                                        const auto &vec_op = builder.create<mlir::vector::BroadcastOp>(forOp1->getLoc(), vectorType, constOp_hoist->getResult(0));
                                        map[constOp.getOperation()] = vec_op->getResult(0);
                                        // TODO: collect garbage
                                        garbage.push_back(constOp.getOperation());
                                    }
                                }
                            }
                        }
                    });
                    builder.setInsertionPointToStart(forOp3.getBody());
                    forOp3.getBody()->walk([&](mlir::Operation *op) {
                        llvm::outs() << "vectorizing\n";
                        vectorize_ops(map, garbage, op, builder);
                    });
                    collect_garbage(garbage);
                    llvm::outs() << "Garbage left: " << garbage.size() << "\n";
                });
            });
        });
    }
};

std::unique_ptr<mlir::Pass> gen_seq::createVectorizationPass() {
    return std::make_unique<GenSeqPass>();
}
