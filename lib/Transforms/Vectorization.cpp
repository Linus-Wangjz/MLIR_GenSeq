#include <vector>

#include "../../include/Vectorization.h"

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"           // func::FuncOp
#include "mlir/Dialect/Arith/IR/Arith.h"      
#include "mlir/Dialect/MemRef/IR/MemRef.h"          
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Dialect/Vector/Transforms/VectorTransforms.h"
#include "mlir/IR/IRMapping.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Pass/Pass.h"

namespace mlir {
namespace tutorial {

// ---------------------------------------------------------------------
// AffineLoadVectorize pass implementation
// ---------------------------------------------------------------------

void AffineLoadVectorize::runOnOperation() {
  // Collect candidate loads first (we cannot mutate IR while walking).
  std::vector<affine::AffineLoadOp> loads;

  func::FuncOp func = getOperation();
  IRRewriter rewriter(func.getContext());

  // Walk all nested affine.for loops down to the innermost level and record
  // every affine.load we see.  We need to capture `loads` by reference (`&`).
  func.walk([&](affine::AffineForOp forOp1) {
    forOp1.getBody()->walk([&](affine::AffineForOp forOp2) {
      forOp2.getBody()->walk([&](affine::AffineForOp forOp3) {
        forOp3.getBody()->walk([&](affine::AffineLoadOp load) {
          loads.push_back(load);
        });
      });
    });
  });

  // Rewrite every collected affine.load into vector.load of width 8 and keep
  // lane #0 to preserve original scalar semantics.
  for (affine::AffineLoadOp ld : loads) {
    constexpr int kWidth = 8;           // SIMD width (adjust if needed)

    auto elemTy = ld.getType();         // scalar element type
    auto vecTy  = VectorType::get({kWidth}, elemTy); // <8 x T>

    // Insert new ops *at* the original load position.
    rewriter.setInsertionPoint(ld);

    
    AffineMap map = ld.getAffineMap();
    // SmallVector<Value, 4> mapOperands(ld.getMapOperands());
    ValueRange mapOps = ld.getMapOperands();        // ValueRange
    SmallVector<OpFoldResult, 4> ofrs;               // 临时缓冲
    ofrs.append(mapOps.begin(), mapOps.end());       // Value → OpFoldResult

    std::vector<Value> effectiveIndices;
    effectiveIndices.reserve(map.getNumResults());

    // Materialize each effective index defined by the AffineMap
    for (unsigned i = 0, e = map.getNumResults(); i < e; ++i) {
      // Create an affine.apply op to compute the i-th result of the map
      // makeComposedAffineApply simplifies the expression if possible (e.g.,
      // if map result is just 'd0', it returns the corresponding operand directly)
      Value effectiveIndex = affine::makeComposedAffineApply(
          rewriter, ld.getLoc(), map.getSubMap({i}), ofrs);
      effectiveIndices.push_back(effectiveIndex);
    }

    // 1. vector.load memref[%indices] : memref<..>, vector<8xT>
    auto vload = rewriter.create<vector::LoadOp>(
        ld.getLoc(), vecTy, ld.getMemRef(), effectiveIndices);


    // 3. Replace all uses of the *result value* of the original load.
    ld.getResult().replaceAllUsesWith(vload.getResult());

    // 4. Erase the old scalar load op.
    rewriter.eraseOp(ld);
  }
}

} // namespace tutorial
} // namespace mlir
