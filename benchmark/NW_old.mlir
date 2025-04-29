module {
  llvm.mlir.global internal constant @str0("Success!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?x512xi32>, %arg1: memref<?x512xi32>, %arg2: memref<?x51x512xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c7_i32 = arith.constant 7 : i32
    %c0_i32 = arith.constant 0 : i32
    affine.for %arg3 = 0 to 512 {
      affine.for %arg4 = 0 to 51 {
        %0 = arith.index_cast %arg4 : index to i32
        %1 = arith.subi %c0_i32, %0 : i32
        affine.store %1, %arg2[%arg4, 0, %arg3] : memref<?x51x512xi32>
        affine.store %1, %arg2[0, %arg4, %arg3] : memref<?x51x512xi32>
      }
    }
    affine.for %arg3 = 0 to 512 {
      affine.for %arg4 = 1 to 51 {
        affine.for %arg5 = 1 to 51 {
          %0 = affine.load %arg2[%arg4 - 1, %arg5, %arg3] : memref<?x51x512xi32>
          %1 = arith.addi %0, %c-5_i32 : i32
          %2 = affine.load %arg2[%arg4, %arg5 - 1, %arg3] : memref<?x51x512xi32>
          %3 = arith.addi %2, %c-5_i32 : i32
          %4 = affine.load %arg2[%arg4 - 1, %arg5 - 1, %arg3] : memref<?x51x512xi32>
          %5 = affine.load %arg0[%arg4 - 1, %arg3] : memref<?x512xi32>
          %6 = affine.load %arg1[%arg4 - 1, %arg3] : memref<?x512xi32>
          %7 = arith.cmpi eq, %5, %6 : i32
          %8 = arith.extui %7 : i1 to i32
          %9 = arith.muli %8, %c7_i32 : i32
          %10 = arith.subi %4, %9 : i32
          %11 = arith.addi %10, %c2_i32 : i32
          %12 = arith.cmpi slt, %1, %3 : i32
          %13 = arith.select %12, %3, %1 : i32
          %14 = arith.cmpi slt, %13, %11 : i32
          %15 = arith.select %14, %11, %13 : i32
          affine.store %15, %arg2[%arg4, %arg5, %arg3] : memref<?x51x512xi32>
        }
      }
    }
    return
  }
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c7_i32 = arith.constant 7 : i32
    %c-5_i32 = arith.constant -5 : i32
    %c-1 = arith.constant -1 : index
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<51x51x512xi32>
    affine.for %arg0 = 0 to 512 {
      affine.for %arg1 = 0 to 51 {
        %3 = arith.index_cast %arg1 : index to i32
        %4 = arith.subi %c0_i32, %3 : i32
        affine.store %4, %alloca[%arg1, 0, %arg0] : memref<51x51x512xi32>
        affine.store %4, %alloca[0, %arg1, %arg0] : memref<51x51x512xi32>
      }
    }
    affine.for %arg0 = 0 to 512 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.muli %3, %c3_i32 : i32
      %5 = arith.addi %3, %c-1_i32 : i32
      affine.for %arg1 = 1 to 51 {
        %6 = arith.addi %arg1, %c-1 : index
        %7 = arith.index_cast %6 : index to i32
        %8 = arith.muli %3, %7 : i32
        %9 = arith.addi %8, %4 : i32
        %10 = arith.addi %9, %7 : i32
        %11 = arith.remsi %10, %c4_i32 : i32
        %12 = arith.muli %5, %7 : i32
        %13 = arith.muli %12, %c3_i32 : i32
        %14 = arith.addi %13, %3 : i32
        %15 = arith.muli %7, %c2_i32 : i32
        %16 = arith.addi %14, %15 : i32
        %17 = arith.remsi %16, %c4_i32 : i32
        %18 = arith.cmpi eq, %11, %17 : i32
        %19 = arith.extui %18 : i1 to i32
        %20 = arith.muli %19, %c7_i32 : i32
        affine.for %arg2 = 1 to 51 {
          %21 = affine.load %alloca[%arg1 - 1, %arg2, %arg0] : memref<51x51x512xi32>
          %22 = arith.addi %21, %c-5_i32 : i32
          %23 = affine.load %alloca[%arg1, %arg2 - 1, %arg0] : memref<51x51x512xi32>
          %24 = arith.addi %23, %c-5_i32 : i32
          %25 = affine.load %alloca[%arg1 - 1, %arg2 - 1, %arg0] : memref<51x51x512xi32>
          %26 = arith.subi %25, %20 : i32
          %27 = arith.addi %26, %c2_i32 : i32
          %28 = arith.cmpi slt, %22, %24 : i32
          %29 = arith.select %28, %24, %22 : i32
          %30 = arith.cmpi slt, %29, %27 : i32
          %31 = arith.select %30, %27, %29 : i32
          affine.store %31, %alloca[%arg1, %arg2, %arg0] : memref<51x51x512xi32>
        }
      }
    }
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %2 = llvm.call @printf(%1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    return %c0_i32 : i32
  }
}
