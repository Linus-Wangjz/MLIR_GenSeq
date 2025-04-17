#include ""

namespace toy {
    // 先生成定义
    #define GEN_PASS_DECL
    #include "toy/ToyPasses.h.inc"
    
    // 在写 create 函数表
    std::unique_ptr<mlir::Pass> createAutoVecPass();
    
    // 生成注册函数
    #define GEN_PASS_REGISTRATION
    #include "toy/ToyPasses.h.inc"
}