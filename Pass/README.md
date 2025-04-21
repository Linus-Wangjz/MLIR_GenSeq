# MLIR Hello Dialect ![nightly build status](https://github.com/Lewuathe/mlir-hello/actions/workflows/nightly-build.yml/badge.svg)

This is the minimal example to look into the way to implement the hello-world kind of program with MLIR. The basic code structure is borrowed from [standalone](https://github.com/llvm/llvm-project/tree/main/mlir/examples/standalone) and [Toy language](https://github.com/llvm/llvm-project/tree/main/mlir/examples/toy) in LLVM project.

## Prerequisites

* [LLVM](https://llvm.org/)
* [MLIR](https://mlir.llvm.org/)
* [CMake](https://cmake.org/)
* [Ninja](https://ninja-build.org/)

We need to build our own MLIR in the local machine in advance. Please follow the build instruction for MLIR [here](https://mlir.llvm.org/getting_started/). 

## Building

Please make sure to build LLVM project first according to [the instruction](https://mlir.llvm.org/getting_started/).

```sh
cmake -G Ninja .. -DLLVM_DIR=~/Documents/llvm-project/build/lib/cmake/llvm \
  -DMLIR_DIR=~/Documents/llvm-project/build/lib/cmake/mlir \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=1

cmake --build . --target vec-opt
```

To run the test:
./build/bin/vec-opt ./test/loop-tiling.mlir
```
