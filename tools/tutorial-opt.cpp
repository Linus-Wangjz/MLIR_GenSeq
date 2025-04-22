#include "../include/Vectorization.h"
#include "mlir/InitAllDialects.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/Tools/mlir-opt/MlirOptMain.h"

int main(int argc, char **argv)
{
    mlir::DialectRegistry registry;
    // mlir::registerAllDialects(registry);
    registry.insert<mlir::affine::AffineDialect>();
    registry.insert<mlir::func::FuncDialect>();
    registry.insert<mlir::LLVM::LLVMDialect>();
    registry.insert<mlir::arith::ArithDialect>();
    registry.insert<mlir::memref::MemRefDialect>();

    // mlir::PassRegistration<mlir::tutorial::AffineFullUnrollPass>();
    mlir::PassRegistration<mlir::tutorial::AffineLoadVectorize>();


    return mlir::asMainReturnCode(
        mlir::MlirOptMain(argc, argv, "Tutorial Pass Driver", registry)
    );
}