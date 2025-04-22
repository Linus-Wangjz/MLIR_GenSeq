module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("%d\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @loop_tiling() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.undef : i32
    %alloca = memref.alloca() : memref<16x16xi32>
    %alloca_0 = memref.alloca() : memref<16x16xi32>
    %1 = affine.for %arg0 = 0 to 256 step 16 iter_args(%arg1 = %0) -> (i32) {
      %c42_i32 = arith.constant 42 : i32
      %test0 = vector.broadcast %c42_i32 : i32 to vector<16xi32>
      %c42_i32_0 = arith.constant 42 : i32
      %test1 = vector.broadcast %c42_i32_0 : i32 to vector<16xi32>
      %2 = affine.for %arg2 = 0 to 16 iter_args(%arg3 = %arg1) -> (i32) {
        %3 = affine.for %arg4 = 0 to 16 iter_args(%arg5 = %arg3) -> (i32) {
          %4 = affine.load %alloca_0[%arg2, %arg4] : memref<16x16xi32>
          %5 = affine.load %alloca[%arg2, %arg4] : memref<16x16xi32>
          %6 = arith.addi %4, %5 : i32
          affine.yield %6 : i32
        }
        affine.yield %3 : i32
      }
      affine.yield %2 : i32
    }
    return %1 : i32
  }
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.undef : i32
    %1 = call @loop_tiling() : () -> i32
    %2 = llvm.mlir.addressof @str0 : !llvm.ptr
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<4 x i8>
    %4 = llvm.call @printf(%3, %1) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, i32) -> i32
    return %0 : i32
  }
}
