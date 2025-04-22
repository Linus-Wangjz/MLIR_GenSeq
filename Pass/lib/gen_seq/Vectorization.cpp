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
#include <unordered_map>
#include <vector>

void vectorize_ops(std::unordered_map<mlir::Operation *, mlir::OpResult> &map, std::vector<mlir::Operation *> &garbage, mlir::Operation *op, mlir::OpBuilder &builder) {
    if (auto loadOp = mlir::dyn_cast<mlir::affine::AffineLoadOp>(op)) {
        // Get the AffineMap and its operands
        mlir::AffineMap map = loadOp.getAffineMap();
        mlir::ValueRange mapOps = loadOp.getMapOperands();        // ValueRange
        llvm::SmallVector<mlir::OpFoldResult, 4> ofrs;               // 临时缓冲
        ofrs.append(mapOps.begin(), mapOps.end());       // Value → OpFoldResult

        std::vector<mlir::Value> effectiveIndices;
        effectiveIndices.reserve(map.getNumResults());

        for (unsigned i = 0, e = map.getNumResults(); i < e; ++i) {
            // Create an affine.apply op to compute the i-th result of the map
            // makeComposedAffineApply simplifies the expression if possible (e.g.,
            // if map result is just 'd0', it returns the corresponding operand directly)
            mlir::Value effectiveIndex = mlir::affine::makeComposedAffineApply(
                builder, loadOp.getLoc(), map.getSubMap({i}), ofrs);
            effectiveIndices.push_back(effectiveIndex);
        }

        auto memRefType = loadOp.getMemref();
        auto vectorType = mlir::VectorType::get({8}, builder.getIntegerType(32));
        // auto indices = loadOp.getIndices();
        const auto loadOp_vec = builder.create<mlir::vector::LoadOp>(loadOp->getLoc(), vectorType, memRefType, effectiveIndices);
        // map[loadOp.getOperation()] = loadOp_vec->getResult(0);
    }
}


struct GenSeqPass : public mlir::PassWrapper<GenSeqPass, mlir::OperationPass<mlir::ModuleOp>> {
    void runOnOperation() override {
        llvm::outs() << "run gen seq pass\n";
        // map to store hoist ops
        getOperation().walk([](mlir::affine::AffineForOp forOp1) {
            std::unordered_map<mlir::Operation *, mlir::OpResult> map;
            std::vector<mlir::Operation *> garbage;
            forOp1.getBody()->walk([&](mlir::affine::AffineForOp forOp2) {
                forOp2.getBody()->walk([&](mlir::affine::AffineForOp forOp3) {
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
                                        // garbage.push_back(constOp.getOperation());
                                    }
                                }
                            }
                        }
                    });
                    builder.setInsertionPointToStart(forOp3.getBody());
                    forOp3.getBody()->walk([&](mlir::Operation *op) {
                        vectorize_ops(map, garbage, op, builder);
                    });
                    // forOp3.getBody()->walk([&](mlir::arith::ConstantIntOp constOp) {
                    //     auto constOp_val = constOp.getValue();
                    //     auto int_val = mlir::dyn_cast<mlir::IntegerAttr>(constOp_val);
                    //     const auto &constOp_hoist = builder.create<mlir::arith::ConstantIntOp>(forOp1->getLoc(), int_val.getInt(), 32);
                    //     auto vectorType = mlir::VectorType::get({16}, builder.getIntegerType(32));
                    //     const auto &vec_op = builder.create<mlir::vector::BroadcastOp>(forOp1->getLoc(), vectorType, constOp_hoist->getResult(0));
                    //     map[constOp.getOperation()] = vec_op->getResult(0);
                    //     garbage.push_back(constOp.getOperation());
                    // });
                    // forOp3.getBody()->walk([&](mlir::arith::AddIOp addiOp) {
                    //     builder.setInsertionPointToStart(forOp3.getBody());
                    //     // auto vectorType = mlir::VectorType::get({16}, builder.getIntegerType(32));
                    //     auto op1 = addiOp.getOperand(0);
                    //     auto op2 = addiOp.getOperand(1);
                    //     auto op1_new = map[op1.getDefiningOp()];
                    //     auto op2_new = map[op2.getDefiningOp()];
                    //     builder.create<mlir::arith::AddIOp>(forOp3->getLoc(), op1_new, op2_new);
                    //     garbage.push_back(addiOp.getOperation());
                    // });
                });
            });
            llvm::outs() << "Collecting Garbage\n";

            for (auto &g: garbage) {
                g->remove();
            }
        });
    }
};

std::unique_ptr<mlir::Pass> gen_seq::createVectorizationPass() {
    return std::make_unique<GenSeqPass>();
  }
