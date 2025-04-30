#ifndef LIB_GENSEQ_NW_VECTORIZE_H_
#define LIB_GENSEQ_NW_VECTORIZE_H_

#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Pass/Pass.h"

namespace mlir
{

class NWVectorize :
    public PassWrapper<NWVectorize, OperationPass<func::FuncOp>> 
{
public:
    void getDependentDialects(DialectRegistry &registry) const override {
        // If the pass uses other dialects (e.g. LLVM, SCF), add them here too.
        registry.insert<vector::VectorDialect>();
    }

private:
    void runOnOperation() override;

    StringRef getArgument() const final { return "nw-vectorize"; }

    StringRef getDescription() const final {
        return "Auto-vectorization for Needleman-Wunsch Algorithm";
    }
};

}

#endif // LIB_GENSEQ_NW_VECTORIZE_H_