// From Polygeist
#include "mlir/Conversion/Passes.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/Async/IR/Async.h"
#include "mlir/Dialect/DLTI/DLTI.h"
#include "mlir/Dialect/Func/Extensions/InlinerExtension.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/LLVMIR/NVVMDialect.h"
#include "mlir/Dialect/Math/IR/Math.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/OpenMP/OpenMPDialect.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "../include/polygeist/Dialect.h"
#include "../include/polygeist/Passes/Passes.h"

// For genseq-opt
#include "mlir/InitAllDialects.h"
#include "mlir/InitAllPasses.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Pass/PassRegistry.h"
#include "mlir/Tools/mlir-opt/MlirOptMain.h"
#include "mlir/Transforms/Passes.h"
#include "../include/GenSeq/NWVectorize.h"


using namespace mlir;

class MemRefInsider
    : public mlir::MemRefElementTypeInterface::FallbackModel<MemRefInsider> {};

template <typename T>
struct PtrElementModel
    : public mlir::LLVM::PointerElementTypeInterface::ExternalModel<
          PtrElementModel<T>, T> {};

int main(int argc, char **argv)
{


    mlir::DialectRegistry registry;

    // From Polygeist
    registry.insert<mlir::affine::AffineDialect>();
    registry.insert<mlir::LLVM::LLVMDialect>();
    registry.insert<mlir::memref::MemRefDialect>();
    registry.insert<mlir::async::AsyncDialect>();
    registry.insert<mlir::func::FuncDialect>();
    registry.insert<mlir::arith::ArithDialect>();
    registry.insert<mlir::scf::SCFDialect>();
    registry.insert<mlir::gpu::GPUDialect>();
    registry.insert<mlir::NVVM::NVVMDialect>();
    registry.insert<mlir::omp::OpenMPDialect>();
    registry.insert<mlir::math::MathDialect>();
    registry.insert<mlir::cf::ControlFlowDialect>();
    registry.insert<mlir::polygeist::PolygeistDialect>();
    registry.insert<DLTIDialect>();

    // From genseq-opt
    // mlir::registerAllDialects(registry);
    // registry.insert<mlir::affine::AffineDialect>();
    // registry.insert<mlir::arith::ArithDialect>();
    // registry.insert<mlir::func::FuncDialect>();
    // registry.insert<mlir::LLVM::LLVMDialect>();
    // registry.insert<mlir::memref::MemRefDialect>();
    // registry.insert<mlir::scf::SCFDialect>();
    // registry.insert<mlir::vector::VectorDialect>();


    // mlir::PassRegistration<mlir::tutorial::AffineFullUnrollPass>();
    // mlir::PassRegistration<mlir::tutorial::AffineLoadVectorize>();
    mlir::PassRegistration<mlir::NWVectorize>();


    // Register the standard passes we want.
    mlir::registerAllPasses();
    // mlir::registerCSEPass();
    // mlir::registerConvertAffineToStandardPass();
    // mlir::registerSCCPPass();
    // mlir::registerInlinerPass();
    // mlir::registerCanonicalizerPass();
    // mlir::registerSymbolDCEPass();
    // mlir::registerLoopInvariantCodeMotionPass();
    // mlir::registerConvertSCFToOpenMPPass();
    // mlir::affine::registerAffinePasses();

    registry.addExtension(+[](MLIRContext *ctx, LLVM::LLVMDialect *dialect) {
        LLVM::LLVMFunctionType::attachInterface<MemRefInsider>(*ctx);
    });
    registry.addExtension(+[](MLIRContext *ctx, LLVM::LLVMDialect *dialect) {
        LLVM::LLVMArrayType::attachInterface<MemRefInsider>(*ctx);
    });
    registry.addExtension(+[](MLIRContext *ctx, LLVM::LLVMDialect *dialect) {
        LLVM::LLVMPointerType::attachInterface<MemRefInsider>(*ctx);
    });
    registry.addExtension(+[](MLIRContext *ctx, LLVM::LLVMDialect *dialect) {
        LLVM::LLVMStructType::attachInterface<MemRefInsider>(*ctx);
    });
    registry.addExtension(+[](MLIRContext *ctx, memref::MemRefDialect *dialect) {
        MemRefType::attachInterface<PtrElementModel<MemRefType>>(*ctx);
    });

    registry.addExtension(+[](MLIRContext *ctx, LLVM::LLVMDialect *dialect) {
        LLVM::LLVMStructType::attachInterface<
            PtrElementModel<LLVM::LLVMStructType>>(*ctx);
    });

    registry.addExtension(+[](MLIRContext *ctx, LLVM::LLVMDialect *dialect) {
        LLVM::LLVMPointerType::attachInterface<
            PtrElementModel<LLVM::LLVMPointerType>>(*ctx);
    });

    registry.addExtension(+[](MLIRContext *ctx, LLVM::LLVMDialect *dialect) {
        LLVM::LLVMArrayType::attachInterface<PtrElementModel<LLVM::LLVMArrayType>>(
            *ctx);
    });

    return mlir::asMainReturnCode(
        mlir::MlirOptMain(argc, argv, "Genome Sequencing Vectorization Driver", registry)
    );
}
