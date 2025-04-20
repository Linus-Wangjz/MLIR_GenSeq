#!/bin/bash
# This script helps you set up MLIR
# Prerequisites: cmake, c compiler, make
# also, make sure you do `git submodule update --init --recursive`
# in this repo to get llvm-project under thirdparty

# Set up MLIR
LLVM_REPO=
BUILD_DIR=$LLVM_REPO/build
INSTALL_DIR=$LLVM_REPO/install

set -e

# set up mlir-hello
mkdir -p build
cmake -S . -B build -G Ninja \
  -DLLVM_DIR=$LLVM_REPO/build/lib/cmake/llvm \
  -DMLIR_DIR=$LLVM_REPO/build/lib/cmake/mlir \

cmake --build build --target hello-opt

# test run

./build/bin/hello-opt ./test/Hello/print.mlir > print.ll
$BUILD_DIR/bin/lli print.ll
