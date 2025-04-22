module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("Success!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?x50xi32>, %arg1: memref<?x50xi32>, %arg2: memref<?x51x51xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c0_i32 = arith.constant 0 : i32
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %c512 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c51 = arith.constant 51 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg4 = %c0_3 to %c51 step %c1_4 {
        %0 = arith.index_cast %arg4 : index to i32
        %1 = arith.subi %c0_i32, %0 : i32
        %c0_5 = arith.constant 0 : index
        memref.store %1, %arg2[%arg3, %arg4, %c0_5] : memref<?x51x51xi32>
        %c0_6 = arith.constant 0 : index
        memref.store %1, %arg2[%arg3, %c0_6, %arg4] : memref<?x51x51xi32>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c512_1 = arith.constant 512 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg3 = %c0_0 to %c512_1 step %c1_2 {
      %c1_3 = arith.constant 1 : index
      %c51 = arith.constant 51 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg4 = %c1_3 to %c51 step %c1_4 {
        %c1_5 = arith.constant 1 : index
        %c51_6 = arith.constant 51 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg5 = %c1_5 to %c51_6 step %c1_7 {
          %c-1 = arith.constant -1 : index
          %0 = arith.addi %arg4, %c-1 : index
          %1 = memref.load %arg2[%arg3, %0, %arg5] : memref<?x51x51xi32>
          %2 = arith.addi %1, %c-5_i32 : i32
          %c-1_8 = arith.constant -1 : index
          %3 = arith.addi %arg5, %c-1_8 : index
          %4 = memref.load %arg2[%arg3, %arg4, %3] : memref<?x51x51xi32>
          %5 = arith.addi %4, %c-5_i32 : i32
          %c-1_9 = arith.constant -1 : index
          %6 = arith.addi %arg4, %c-1_9 : index
          %c-1_10 = arith.constant -1 : index
          %7 = arith.addi %arg5, %c-1_10 : index
          %8 = memref.load %arg2[%arg3, %6, %7] : memref<?x51x51xi32>
          %c-1_11 = arith.constant -1 : index
          %9 = arith.addi %arg4, %c-1_11 : index
          %10 = memref.load %arg0[%arg3, %9] : memref<?x50xi32>
          %c-1_12 = arith.constant -1 : index
          %11 = arith.addi %arg4, %c-1_12 : index
          %12 = memref.load %arg1[%arg3, %11] : memref<?x50xi32>
          %13 = arith.cmpi eq, %10, %12 : i32
          %14 = scf.if %13 -> (i32) {
            %19 = arith.addi %8, %c2_i32 : i32
            scf.yield %19 : i32
          } else {
            %19 = arith.addi %8, %c-5_i32 : i32
            scf.yield %19 : i32
          }
          %15 = arith.cmpi slt, %2, %5 : i32
          %16 = arith.select %15, %5, %2 : i32
          %17 = arith.cmpi slt, %16, %14 : i32
          %18 = arith.select %17, %14, %16 : i32
          memref.store %18, %arg2[%arg3, %arg4, %arg5] : memref<?x51x51xi32>
        }
      }
    }
    return
  }
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c-1 = arith.constant -1 : index
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<512x51x51xi32>
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    scf.for %arg0 = %c0 to %c512 step %c1 {
      %c0_3 = arith.constant 0 : index
      %c51 = arith.constant 51 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg1 = %c0_3 to %c51 step %c1_4 {
        %3 = arith.index_cast %arg1 : index to i32
        %4 = arith.subi %c0_i32, %3 : i32
        %c0_5 = arith.constant 0 : index
        memref.store %4, %alloca[%arg0, %arg1, %c0_5] : memref<512x51x51xi32>
        %c0_6 = arith.constant 0 : index
        memref.store %4, %alloca[%arg0, %c0_6, %arg1] : memref<512x51x51xi32>
      }
    }
    %c0_0 = arith.constant 0 : index
    %c512_1 = arith.constant 512 : index
    %c1_2 = arith.constant 1 : index
    scf.for %arg0 = %c0_0 to %c512_1 step %c1_2 {
      %3 = arith.index_cast %arg0 : index to i32
      %4 = arith.muli %3, %c3_i32 : i32
      %5 = arith.addi %3, %c-1_i32 : i32
      %c1_3 = arith.constant 1 : index
      %c51 = arith.constant 51 : index
      %c1_4 = arith.constant 1 : index
      scf.for %arg1 = %c1_3 to %c51 step %c1_4 {
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
        %c1_5 = arith.constant 1 : index
        %c51_6 = arith.constant 51 : index
        %c1_7 = arith.constant 1 : index
        scf.for %arg2 = %c1_5 to %c51_6 step %c1_7 {
          %c-1_8 = arith.constant -1 : index
          %19 = arith.addi %arg1, %c-1_8 : index
          %20 = memref.load %alloca[%arg0, %19, %arg2] : memref<512x51x51xi32>
          %21 = arith.addi %20, %c-5_i32 : i32
          %c-1_9 = arith.constant -1 : index
          %22 = arith.addi %arg2, %c-1_9 : index
          %23 = memref.load %alloca[%arg0, %arg1, %22] : memref<512x51x51xi32>
          %24 = arith.addi %23, %c-5_i32 : i32
          %c-1_10 = arith.constant -1 : index
          %25 = arith.addi %arg1, %c-1_10 : index
          %c-1_11 = arith.constant -1 : index
          %26 = arith.addi %arg2, %c-1_11 : index
          %27 = memref.load %alloca[%arg0, %25, %26] : memref<512x51x51xi32>
          %28 = scf.if %18 -> (i32) {
            %33 = arith.addi %27, %c2_i32 : i32
            scf.yield %33 : i32
          } else {
            %33 = arith.addi %27, %c-5_i32 : i32
            scf.yield %33 : i32
          }
          %29 = arith.cmpi slt, %21, %24 : i32
          %30 = arith.select %29, %24, %21 : i32
          %31 = arith.cmpi slt, %30, %28 : i32
          %32 = arith.select %31, %28, %30 : i32
          memref.store %32, %alloca[%arg0, %arg1, %arg2] : memref<512x51x51xi32>
        }
      }
    }
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %2 = llvm.call @printf(%1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    return %c0_i32 : i32
  }
}

