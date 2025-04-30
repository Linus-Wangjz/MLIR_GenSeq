#!/bin/bash
#
set -e

# Sample usage
# '
#   Usage: ./compile_nw_opt.sh --llvm-dir=/path/to/llvm-project --polygeist-dir=/path/to/polygeist --input=NW_C_FILE --output-dir=NW_EXE_DIR
#   In the output directory, you will find the following files:
#   - NW.mlir: MLIR representation of the input C file
#   - NW_pass.mlir: MLIR representation after applying the pass
#   - NW_pass_llvm.mlir: MLIR representation after lowering to LLVM dialect
#   - NW_pass.ll: LLVM IR representation
#   - NW_pass.exe: Executable generated from the LLVM IR
#   - NW_pass.s: Assembly representation of the vectorized executable
#   - NW_orig.s: Assembly representation of the original executable
#   - NW_orig.exe: Executable generated from the original C file
# '

# Default paths (can be overridden by command line arguments)
LLVM_PROJECT_DIR="$HOME/Documents/llvm-project"
POLYGEIST_DIR="$HOME/Documents/Polygeist"
INPUT_FILE=""
OUTPUT_DIR="./output_poly"

# Parse command line arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    --llvm-dir=*)
      LLVM_PROJECT_DIR="${1#*=}"
      shift
      ;;
    --polygeist-dir=*)
      POLYGEIST_DIR="${1#*=}"
      shift
      ;;
    --input=*)
      INPUT_FILE="${1#*=}"
      shift
      ;;
    --output-dir=*)
      OUTPUT_DIR="${1#*=}"
      shift
      ;;
    --help)
      echo "Usage: $0 [options]"
      echo "Options:"
      echo "  --llvm-dir=PATH      Path to LLVM project directory (default: $LLVM_PROJECT_DIR)"
      echo "  --polygeist-dir=PATH Path to Polygeist directory (default: $POLYGEIST_DIR)"
      echo "  --input=FILE         Input C file to process (required)"
      echo "  --output-dir=DIR     Output directory for generated files (default: $OUTPUT_DIR)"
      echo "  --help               Show this help message"
      exit 0
      ;;
    *)
      echo "Unknown option: $1"
      echo "Use --help for usage information"
      exit 1
      ;;
  esac
done

# Check if input file is provided
if [ -z "$INPUT_FILE" ]; then
  echo "Error: Input file not specified. Use --input=FILE"
  exit 1
fi

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
  echo "Error: Input file '$INPUT_FILE' not found"
  exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Extract filename without extension
FILENAME=$(basename "$INPUT_FILE" .c)

LLVM_PROJECT_DIR="${LLVM_PROJECT_DIR/#\~/$HOME}"
POLYGEIST_DIR="${POLYGEIST_DIR/#\~/$HOME}"
# Set paths
LLVM_BUILD_DIR="$LLVM_PROJECT_DIR/build"
POLYGEIST_BUILD_DIR="$POLYGEIST_DIR/build"

echo "=== Setting up environment ==="
# Set include path for stddef.h
export C_INCLUDE_PATH="$LLVM_BUILD_DIR/lib/clang/18/include"
export C_INCLUDE_PATH=$(ls -d "$LLVM_BUILD_DIR"/lib/clang/*/include | head -n1)
# export CPLUS_INCLUDE_PATH="$LLVM_BUILD_DIR/lib/clang/14.0.6/include"

echo "=== Converting C to Affine Dialect MLIR ==="
"$POLYGEIST_BUILD_DIR/bin/cgeist" "$INPUT_FILE" -S -O3 -raise-scf-to-affine > "$OUTPUT_DIR/${FILENAME}.mlir"
echo "Generated: $OUTPUT_DIR/${FILENAME}.mlir"

echo "=== Lowering to LLVM dialect ==="
"$POLYGEIST_BUILD_DIR/bin/polygeist-opt" --lower-affine --convert-polygeist-to-llvm \
  "$OUTPUT_DIR/${FILENAME}.mlir" > "$OUTPUT_DIR/${FILENAME}_llvm.mlir"
echo "Generated: $OUTPUT_DIR/${FILENAME}_llvm.mlir"

echo "=== Translating to LLVM IR ==="
"$LLVM_BUILD_DIR/bin/mlir-translate" --mlir-to-llvmir \
  "$OUTPUT_DIR/${FILENAME}_llvm.mlir" -o "$OUTPUT_DIR/${FILENAME}.ll"
echo "Generated: $OUTPUT_DIR/${FILENAME}.ll"

echo "=== Compiling to executable ==="
"$LLVM_BUILD_DIR/bin/clang" -O3 -mavx2 "$OUTPUT_DIR/${FILENAME}.ll" -o "$OUTPUT_DIR/${FILENAME}_poly.exe"
echo "Generated: $OUTPUT_DIR/${FILENAME}_poly.exe"

echo "=== Compiling original for comparison ==="
"$LLVM_BUILD_DIR/bin/clang" -O3 -mavx2 "$INPUT_FILE" -o "$OUTPUT_DIR/${FILENAME}_orig.exe"
echo "Generated: $OUTPUT_DIR/${FILENAME}_orig.exe"

echo "=== Running benchmark ===" 
echo "You can now compare the performance of:"
echo "Vectorized version:"
"$OUTPUT_DIR/${FILENAME}_poly.exe"
echo "Original version:"
"$OUTPUT_DIR/${FILENAME}_orig.exe"

echo "=== All steps completed successfully ==="
# echo "You can now compare the performance of:"
# echo "  $OUTPUT_DIR/${FILENAME}_pass.exe (vectorized)"
# echo "  $OUTPUT_DIR/${FILENAME}_orig.exe (original)"