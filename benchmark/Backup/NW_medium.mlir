module {
  llvm.mlir.global internal constant @str1("Success! Time used: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Initialization Success!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<512xi32>, %arg1: memref<512xi32>, %arg2: memref<513x512xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c7_i32 = arith.constant 7 : i32
    %c0_i32 = arith.constant 0 : i32
    affine.for %arg3 = 0 to 512 {
      affine.for %arg4 = 0 to 513 {
        %0 = arith.index_cast %arg4 : index to i32
        %1 = arith.subi %c0_i32, %0 : i32
        affine.store %1, %arg2[%arg4, %arg3] : memref<513x512xi32>
        affine.store %1, %arg2[0, %arg3 + %arg4] : memref<513x512xi32>
      }
    }
    affine.for %arg3 = 0 to 512 {
      affine.for %arg4 = 1 to 513 {
        affine.for %arg5 = 1 to 513 {
          %0 = affine.load %arg2[%arg4 - 1, %arg3 + %arg5] : memref<513x512xi32>
          %1 = arith.addi %0, %c-5_i32 : i32
          %2 = affine.load %arg2[%arg4, %arg3 + %arg5 - 1] : memref<513x512xi32>
          %3 = arith.addi %2, %c-5_i32 : i32
          %4 = affine.load %arg2[%arg4 - 1, %arg3 + %arg5 - 1] : memref<513x512xi32>
          %5 = affine.load %arg0[%arg3 + %arg4 - 1] : memref<512xi32>
          %6 = affine.load %arg1[%arg3 + %arg4 - 1] : memref<512xi32>
          %7 = arith.cmpi eq, %5, %6 : i32
          %8 = arith.extui %7 : i1 to i32
          %9 = arith.muli %8, %c7_i32 : i32
          %10 = arith.subi %4, %9 : i32
          %11 = arith.addi %10, %c2_i32 : i32
          %12 = arith.cmpi slt, %1, %3 : i32
          %13 = arith.select %12, %3, %1 : i32
          %14 = arith.cmpi slt, %13, %11 : i32
          %15 = arith.select %14, %11, %13 : i32
          affine.store %15, %arg2[%arg4, %arg3 + %arg5] : memref<513x512xi32>
        }
      }
    }
    return
  }
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.000000e+06 : f64
    %c0_i32 = arith.constant 0 : i32
    %alloc = memref.alloc() : memref<512xi32>
    %alloc_0 = memref.alloc() : memref<512xi32>
    %alloc_1 = memref.alloc() : memref<513x512xi32>
    affine.for %arg2 = 0 to 512 {
      affine.for %arg3 = 0 to 512 {
        %11 = func.call @rand() : () -> i32
        affine.store %11, %alloc[%arg2 + %arg3] : memref<512xi32>
        %12 = func.call @rand() : () -> i32
        affine.store %12, %alloc_0[%arg2 + %arg3] : memref<512xi32>
      }
    }
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<25 x i8>
    %2 = llvm.call @printf(%1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %3 = call @clock() : () -> i64
    call @Needleman_Wunsch(%alloc, %alloc_0, %alloc_1) : (memref<512xi32>, memref<512xi32>, memref<513x512xi32>) -> ()
    %4 = call @clock() : () -> i64
    %5 = arith.subi %4, %3 : i64
    %6 = arith.sitofp %5 : i64 to f64
    %7 = arith.divf %6, %cst : f64
    %8 = llvm.mlir.addressof @str1 : !llvm.ptr
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<24 x i8>
    %10 = llvm.call @printf(%9, %7) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    memref.dealloc %alloc : memref<512xi32>
    memref.dealloc %alloc_0 : memref<512xi32>
    memref.dealloc %alloc_1 : memref<513x512xi32>
    return %c0_i32 : i32
  }
  func.func private @rand() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @clock() -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
}
