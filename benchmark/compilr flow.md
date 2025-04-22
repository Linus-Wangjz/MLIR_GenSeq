1. Polygeist has really limited (if any) support for C++; Should use C instead

2. "stddef.h" header file is in a specific location, not under "/usr/include". Use "export C(PLUS)_INCLUDE_PATH=/usr/lib/llvm-14/lib/clang/14.0.6/include" (may vary depend on the computer you use) to specify an environment variable so that compilers could find the "stddef.h" file

3. The step (2) is for the following step using "{$POLYGEIST_BUILD_DIR}/bin/cgeist ./benchmark/NW.c -S -raise-scf-to-affine > ./benchmark/NW.mlir" to convert the C code into MLIR dialect
(~/Documents/Polygeist/build/bin/cgeist ./benchmark/NW.c -S -raise-scf-to-affine > ./benchmark/NW.mlir)

4. Run the pass for the generated NW.mlir

5. Lower from other dialect to LLVM dialect with "mlir-opt". Run "{$MLIR_BUILD_DIR}/bin/mlir-opt ./benchmark/NW.mlir --lower-affine --convert-polygeist-to-llvm > ./benchmark/NW_llvm.mlir" to convert to llvm dialect. Notice the "--lower-affine" option is needed as "--convert-polygeist-to-llvm" option assumes that affine has already be lowered.

~/Documents/Polygeist/llvm-project/build/bin/mlir-opt --lower-affine --convert-vector-to-llvm="enable-x86vector" --convert-scf-to-cf --convert-to-llvm --reconcile-unrealized-casts ./benchmark/NW_pass.mlir > ./benchmark/NW_pass_llvm.mlir

6. Use the mlir-translatr with option "--mlir-to-llvmir" to translate LLVM dialect to LLVM IR. Run "{$LLVM_BUILD_DIR}/bin/mlir-translate --mlir-to-llvmir ./benchmark/NW_llvm.mlir -o NW.ll"

7. Use clang to compile the LLVM IR. Notice Step 5 uses opaque pointer as default, so your LLVM version should be newer than 15