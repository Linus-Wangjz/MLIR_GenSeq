#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @_Z6matmulPA400_fPA300_fS2_(%arg0: memref<?x400xf32>, %arg1: memref<?x300xf32>, %arg2: memref<?x300xf32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    affine.for %arg3 = 0 to 200 {
      affine.for %arg4 = 0 to 300 {
        affine.for %arg5 = 0 to 400 step 4 {
          %0 = affine.load %arg0[%arg3, %arg5] : memref<?x400xf32>
          %1 = affine.load %arg1[%arg5, %arg4] : memref<?x300xf32>
          %2 = arith.mulf %0, %1 : f32
          %3 = affine.load %arg2[%arg3, %arg4] : memref<?x300xf32>
          %4 = arith.addf %3, %2 : f32
          affine.store %4, %arg2[%arg3, %arg4] : memref<?x300xf32>
          %5 = affine.apply #map(%arg5)
          %6 = affine.load %arg0[%arg3, %5] : memref<?x400xf32>
          %7 = affine.load %arg1[%5, %arg4] : memref<?x300xf32>
          %8 = arith.mulf %6, %7 : f32
          %9 = affine.load %arg2[%arg3, %arg4] : memref<?x300xf32>
          %10 = arith.addf %9, %8 : f32
          affine.store %10, %arg2[%arg3, %arg4] : memref<?x300xf32>
          %11 = affine.apply #map1(%arg5)
          %12 = affine.load %arg0[%arg3, %11] : memref<?x400xf32>
          %13 = affine.load %arg1[%11, %arg4] : memref<?x300xf32>
          %14 = arith.mulf %12, %13 : f32
          %15 = affine.load %arg2[%arg3, %arg4] : memref<?x300xf32>
          %16 = arith.addf %15, %14 : f32
          affine.store %16, %arg2[%arg3, %arg4] : memref<?x300xf32>
          %17 = affine.apply #map2(%arg5)
          %18 = affine.load %arg0[%arg3, %17] : memref<?x400xf32>
          %19 = affine.load %arg1[%17, %arg4] : memref<?x300xf32>
          %20 = arith.mulf %18, %19 : f32
          %21 = affine.load %arg2[%arg3, %arg4] : memref<?x300xf32>
          %22 = arith.addf %21, %20 : f32
          affine.store %22, %arg2[%arg3, %arg4] : memref<?x300xf32>
        }
      }
    }
    return
  }
}

