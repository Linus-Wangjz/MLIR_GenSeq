#ifndef LIB_TRANSFORM_AFFINE_AFFINEFULLUNROLL_H_
#define LIB_TRANSFORM_AFFINE_AFFINEFULLUNROLL_H_

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Pass/Pass.h"

namespace mlir
{

class GenSeqVectorize :
    public PassWrapper<GenSeqVectorize, OperationPass<func::FuncOp>> 
{
public:
    void getDependentDialects(DialectRegistry &registry) const override {
        // If the pass uses other dialects (e.g. LLVM, SCF), add them here too.
        registry.insert<vector::VectorDialect>();
    }

private:
    void runOnOperation() override;

    StringRef getArgument() const final { return "gen-seq-vectorize"; }

    StringRef getDescription() const final {
        return "Auto-vectorization for Genome Sequencing Algorithms";
    }
};

}

#endif // LIB_TRANSFORM_AFFINE_AFFINEFULLUNROLL_H_