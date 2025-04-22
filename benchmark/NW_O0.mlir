module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("Success!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?x50xi32>, %arg1: memref<?x50xi32>, %arg2: memref<?x51x512xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
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
          %5 = affine.load %arg0[%arg3, %arg4 - 1] : memref<?x50xi32>
          %6 = affine.load %arg1[%arg3, %arg4 - 1] : memref<?x50xi32>
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
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<51x51x512xi32>
    %alloca_0 = memref.alloca() : memref<512x50xi32>
    %alloca_1 = memref.alloca() : memref<512x50xi32>
    affine.for %arg0 = 0 to 512 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.muli %3, %c3_i32 : i32
      affine.for %arg1 = 0 to 50 {
        %5 = arith.index_cast %arg1 : index to i32
        %6 = arith.muli %3, %5 : i32
        %7 = arith.addi %6, %4 : i32
        %8 = arith.addi %7, %5 : i32
        %9 = arith.remsi %8, %c4_i32 : i32
        affine.store %9, %alloca_1[%arg0, %arg1] : memref<512x50xi32>
      }
    }
    affine.for %arg0 = 0 to 512 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.addi %3, %c-1_i32 : i32
      affine.for %arg1 = 0 to 50 {
        %5 = arith.index_cast %arg1 : index to i32
        %6 = arith.muli %4, %5 : i32
        %7 = arith.muli %6, %c3_i32 : i32
        %8 = arith.addi %7, %3 : i32
        %9 = arith.muli %5, %c2_i32 : i32
        %10 = arith.addi %8, %9 : i32
        %11 = arith.remsi %10, %c4_i32 : i32
        affine.store %11, %alloca_0[%arg0, %arg1] : memref<512x50xi32>
      }
    }
    %cast = memref.cast %alloca_1 : memref<512x50xi32> to memref<?x50xi32>
    %cast_2 = memref.cast %alloca_0 : memref<512x50xi32> to memref<?x50xi32>
    %cast_3 = memref.cast %alloca : memref<51x51x512xi32> to memref<?x51x512xi32>
    call @Needleman_Wunsch(%cast, %cast_2, %cast_3) : (memref<?x50xi32>, memref<?x50xi32>, memref<?x51x512xi32>) -> ()
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %2 = llvm.call @printf(%1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    return %c0_i32 : i32
  }
}
