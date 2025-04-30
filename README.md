# MLIR GenSeq

Run compile_pass_opt.sh or compile_poly_opt.sh with argument --llvm-dir=/path/to/llvm-project --polygeist-dir=/path/to/polygeist --input=NW_C_FILE(./benchmark/NW_bench.c) --output-dir=NW_EXE_DIR 

In the output directory, you will find the following files:
  - NW_bench.mlir: MLIR representation of the input C file
  - NW_bench_pass.mlir: MLIR representation after applying the pass
  - NW_bench_pass_llvm.mlir: MLIR representation after lowering to LLVM dialect
  - NW_bench_pass.ll: LLVM IR representation
  - NW_bench_pass.exe: Executable generated from the LLVM IR
  - NW_bench_pass.s: Assembly representation of the vectorized executable
  - NW_bench_orig.s: Assembly representation of the original executable
  - NW_bench_orig.exe: Executable generated from the original C file