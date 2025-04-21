#include "../../include/AffineFullUnroll.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Affine/LoopUtils.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Pass/Pass.h"

namespace mlir {
namespace tutorial {

using mlir::affine::AffineForOp;
using mlir::affine::loopUnrollFull;

void AffineFullUnrollPass::runOnOperation() {
  // return;
  getOperation().walk([&](AffineForOp op) {
    if (failed(loopUnrollFull(op))) {
      op.emitError("unrolling failed");
      signalPassFailure();
    }
  });
}

struct AffineFullUnrollPattern :
  public OpRewritePattern<AffineForOp> {
    AffineFullUnrollPattern(mlir::MLIRContext *context)
      : OpRewritePattern<AffineForOp>(context, 1) {}

  LogicalResult matchAndRewrite(AffineForOp op, PatternRewriter &rewritter) const override {
    return loopUnrollFull(op);
  }
};

void AffineFullUnrollPassAsPatternRewrite::runOnOperation() {
  mlir::RewritePatternSet patterns(&getContext());
  patterns.add<AffineFullUnrollPattern>(&getContext());

  (void)applyPatternsAndFoldGreedily(getOperation(), std::move(patterns));
}

} // namespace tutorial
} // namespace mlir