1. Polygeist has really limited (if any) support for C++; Should use C instead

2. "stddef.h" header file is in a specific location, not under "/usr/include". Use "export C(PLUS)_INCLUDE_PATH=/usr/lib/llvm-14/lib/clang/14.0.6/include" (may vary depend on the computer you use) to specify an environment variable so that compilers could find the "stddef.h" file

3. The step (2) is for the following step using "{$POLYGEIST_BUILD_DIR}/bin/cgeist ./benchmark/NW.c -S -raise-scf-to-affine > ./benchmark/NW.mlir" to convert the C code into MLIR dialect
(~/Documents/Polygeist/build/bin/cgeist ./benchmark/NW.c -S -O0 -raise-scf-to-affine > ./benchmark/NW.mlir)

*** Delete Attribute

4. Compile the pass 
mkdir build && cd build
cmake -G Ninja .. -DLLVM_DIR=~/Documents/llvm-project/build/lib/cmake/llvm \
  -DMLIR_DIR=~/Documents/llvm-project/build/lib/cmake/mlir \
  -DCMAKE_EXPORT_COMPILE_COMMANDS=1

cmake --build . --target vec-opt

5. Run the pass for the generated NW.mlir
./bin/vec-opt ../../benchmark/NW.mlir > ../../benchmark/NW_pass.mlir

5. Lower from other dialect to LLVM dialect with "mlir-opt". Run:
~/Documents/Polygeist/llvm-project/build/bin/mlir-opt --lower-affine --convert-vector-to-llvm="enable-x86vector" --convert-scf-to-cf --convert-to-llvm --reconcile-unrealized-casts ./benchmark/NW_pass.mlir > ./benchmark/NW_pass_llvm.mlir

6. Use the mlir-translatr with option "--mlir-to-llvmir" to translate LLVM dialect to LLVM IR. Run 
~/Documents/Polygeist/llvm-project/build/bin/mlir-translate --mlir-to-llvmir ./benchmark/NW_pass_llvm.mlir -o ./benchmark/NW_pass.ll

7. Use clang to compile the LLVM IR. Notice the previous uses opaque pointer as default, so your LLVM version should be newer than 15
~/Documents/Polygeist/llvm-project/build/bin/clang -O3 -mavx2 ./benchmark/NW_pass.ll -o ./benchmark/NW_pass.exe

8. (Bonus) use 
~/Documents/Polygeist/llvm-project/build/bin/clang -S -mavx2 ./benchmark/NW_pass.ll -o ./benchmark/NW_pass.s
~/Documents/Polygeist/llvm-project/build/bin/clang -S -mavx2 ./benchmark/NW.c -o ./benchmark/NW_orig.s

9. (Comparison) ~/Documents/Polygeist/llvm-project/build/bin/clang -O3 -mavx2 ./benchmark/NW.c -o ./benchmark/NW_orig.exe