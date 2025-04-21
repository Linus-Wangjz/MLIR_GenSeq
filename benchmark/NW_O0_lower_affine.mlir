module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("Success!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?x50xi32>, %arg1: memref<?x50xi32>, %arg2: memref<?x51x51xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c7_i32 = arith.constant 7 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.undef : i32
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c512 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c51 = arith.constant 51 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg4 = %c0_3 to %c51 step %c1_4 {
        %2 = arith.index_cast %arg4 : index to i32
        %3 = arith.subi %c0_i32, %2 : i32
        %c0_5 = arith.constant 0 : index
        memref.store %3, %arg2[%arg3, %arg4, %c0_5] : memref<?x51x51xi32>
        %c0_6 = arith.constant 0 : index
        memref.store %3, %arg2[%arg3, %c0_6, %arg4] : memref<?x51x51xi32>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c512_1 = arith.constant 512 : index
    %c1_2 = arith.constant 1 : index
    %1 = scf.for %arg3 = %c0_0 to %c512_1 step %c1_2 iter_args(%arg4 = %0) -> (i32) {
      %c1_3 = arith.constant 1 : index
      %c51 = arith.constant 51 : index
      %c1_4 = arith.constant 1 : index
      %2 = scf.for %arg5 = %c1_3 to %c51 step %c1_4 iter_args(%arg6 = %arg4) -> (i32) {
        %c1_5 = arith.constant 1 : index
        %c51_6 = arith.constant 51 : index
        %c1_7 = arith.constant 1 : index
        %3 = scf.for %arg7 = %c1_5 to %c51_6 step %c1_7 iter_args(%arg8 = %arg6) -> (i32) {
          %c-1 = arith.constant -1 : index
          %4 = arith.addi %arg7, %c-1 : index
          %5 = memref.load %arg2[%arg3, %arg5, %4] : memref<?x51x51xi32>
          %6 = arith.addi %5, %c-5_i32 : i32
          %c-1_8 = arith.constant -1 : index
          %7 = arith.addi %arg5, %c-1_8 : index
          %c-1_9 = arith.constant -1 : index
          %8 = arith.addi %arg7, %c-1_9 : index
          %9 = memref.load %arg2[%arg3, %7, %8] : memref<?x51x51xi32>
          %c-1_10 = arith.constant -1 : index
          %10 = arith.addi %arg5, %c-1_10 : index
          %11 = memref.load %arg0[%arg3, %10] : memref<?x50xi32>
          %c-1_11 = arith.constant -1 : index
          %12 = arith.addi %arg5, %c-1_11 : index
          %13 = memref.load %arg1[%arg3, %12] : memref<?x50xi32>
          %14 = arith.cmpi eq, %11, %13 : i32
          %15 = arith.extui %14 : i1 to i32
          %16 = arith.muli %15, %c7_i32 : i32
          %17 = arith.subi %9, %16 : i32
          %18 = arith.addi %17, %c2_i32 : i32
          %19 = arith.cmpi slt, %arg8, %6 : i32
          %20 = arith.select %19, %6, %arg8 : i32
          %21 = arith.cmpi slt, %20, %18 : i32
          %22 = arith.select %21, %18, %20 : i32
          memref.store %22, %arg2[%arg3, %arg5, %arg7] : memref<?x51x51xi32>
          scf.yield %22 : i32
        }
        scf.yield %3 : i32
      }
      scf.yield %2 : i32
    }
    return
  }
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<512x51x51xi32>
    %alloca_0 = memref.alloca() : memref<512x50xi32>
    %alloca_1 = memref.alloca() : memref<512x50xi32>
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    scf.for %arg0 = %c0 to %c512 step %c1 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.muli %3, %c3_i32 : i32
      %c0_7 = arith.constant 0 : index
      %c50 = arith.constant 50 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg1 = %c0_7 to %c50 step %c1_8 {
        %5 = arith.index_cast %arg1 : index to i32
        %6 = arith.muli %3, %5 : i32
        %7 = arith.addi %6, %4 : i32
        %8 = arith.addi %7, %5 : i32
        %9 = arith.remsi %8, %c4_i32 : i32
        memref.store %9, %alloca_1[%arg0, %arg1] : memref<512x50xi32>
      }
    }
    %c0_2 = arith.constant 0 : index
    %c512_3 = arith.constant 512 : index
    %c1_4 = arith.constant 1 : index
    scf.for %arg0 = %c0_2 to %c512_3 step %c1_4 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.addi %3, %c-1_i32 : i32
      %c0_7 = arith.constant 0 : index
      %c50 = arith.constant 50 : index
      %c1_8 = arith.constant 1 : index
      scf.for %arg1 = %c0_7 to %c50 step %c1_8 {
        %5 = arith.index_cast %arg1 : index to i32
        %6 = arith.muli %4, %5 : i32
        %7 = arith.muli %6, %c3_i32 : i32
        %8 = arith.addi %7, %3 : i32
        %9 = arith.muli %5, %c2_i32 : i32
        %10 = arith.addi %8, %9 : i32
        %11 = arith.remsi %10, %c4_i32 : i32
        memref.store %11, %alloca_0[%arg0, %arg1] : memref<512x50xi32>
      }
    }
    %cast = memref.cast %alloca_1 : memref<512x50xi32> to memref<?x50xi32>
    %cast_5 = memref.cast %alloca_0 : memref<512x50xi32> to memref<?x50xi32>
    %cast_6 = memref.cast %alloca : memref<512x51x51xi32> to memref<?x51x51xi32>
    call @Needleman_Wunsch(%cast, %cast_5, %cast_6) : (memref<?x50xi32>, memref<?x50xi32>, memref<?x51x51xi32>) -> ()
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %2 = llvm.call @printf(%1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    return %c0_i32 : i32
  }
}

