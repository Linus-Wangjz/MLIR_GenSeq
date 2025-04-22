#ifndef LIB_TRANSFORM_AFFINE_AFFINEFULLUNROLL_H_
#define LIB_TRANSFORM_AFFINE_AFFINEFULLUNROLL_H_

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Pass/Pass.h"

namespace mlir {
namespace tutorial {

class AffineLoadVectorize :
    public PassWrapper<AffineLoadVectorize,
                       OperationPass<mlir::func::FuncOp>> {

private:
    void runOnOperation() override;

    StringRef getArgument() const final { return "affine-load-vectorize"; }

    StringRef getDescription() const final {
        return "Change affine.load to vector.load";
    }
};

} // namespace tutorial
} // namespace mlir

#endif // LIB_TRANSFORM_AFFINE_AFFINEFULLUNROLL_H_