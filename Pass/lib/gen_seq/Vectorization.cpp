#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Transforms/DialectConversion.h"
#include "llvm/ADT/Sequence.h"
#include "llvm/Support/raw_ostream.h"
#include <ostream>
#include "Hello/HelloPasses.h"

struct GenSeqPass : public mlir::PassWrapper<GenSeqPass, mlir::OperationPass<mlir::ModuleOp>> {
    void runOnOperation() override {
        llvm::outs() << "run gen seq pass\n";
        getOperation().walk([](mlir::affine::AffineForOp forOp1) {
            bool is_target_loop = false;
            forOp1.getBody()->walk([&is_target_loop](mlir::affine::AffineForOp forOp2) {
                forOp2.getBody()->walk([&is_target_loop](mlir::affine::AffineForOp forOp3) {
                    is_target_loop = true;
                    forOp3.getBody()->walk([](mlir::Operation *op) {
                        llvm::outs() << op->getName() << "\n";
                    });
                });
            });
            if (is_target_loop) {
                llvm::outs() << "I am the outest loop of the three loops\n";
            }
        });
    }
};

std::unique_ptr<mlir::Pass> gen_seq::createVectorizationPass() {
    return std::make_unique<GenSeqPass>();
  }
