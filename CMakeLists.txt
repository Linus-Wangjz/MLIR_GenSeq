cmake_minimum_required(VERSION 3.13.4)

project(tutorial-opt VERSION 0.0.0)

cmake_policy(SET CMP0116 NEW)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")

find_package(MLIR REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")

include(TableGen)
include(AddLLVM)
include(AddMLIR)
include(HandleLLVMOptions)

include_directories(${LLVM_INCLUDE_DIRS} ${MLIR_INCLUDE_DIRS})

add_executable(tutorial-opt tools/tutorial-opt.cpp)

add_library(AffineFullUnroll STATIC
  lib/Transforms/AffineFullUnroll.cpp
)

target_link_libraries(
  tutorial-opt

  PRIVATE

  AffineFullUnroll

  MLIRFuncDialect
  MLIRAffineDialect
  
  MLIRIR
  MLIRParser

  MLIRPass
  MLIRTransforms  

  MLIROptLib
  MLIRSupport

  LLVMSupport
)