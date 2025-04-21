#map = affine_map<(d0) -> (d0 + 1)>
#map1 = affine_map<(d0) -> (d0 + 2)>
#map2 = affine_map<(d0) -> (d0 + 3)>
module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @_Z6matmulPA4_iPA3_iS2_(%arg0: memref<?x4xi32>, %arg1: memref<?x3xi32>, %arg2: memref<?x3xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c0_0 = arith.constant 0 : index
    %c0_1 = arith.constant 0 : index
    %0 = affine.load %arg0[%c0, %c0_1] : memref<?x4xi32>
    %1 = affine.load %arg1[%c0_1, %c0_0] : memref<?x3xi32>
    %2 = arith.muli %0, %1 : i32
    %3 = affine.load %arg2[%c0, %c0_0] : memref<?x3xi32>
    %4 = arith.addi %3, %2 : i32
    affine.store %4, %arg2[%c0, %c0_0] : memref<?x3xi32>
    %5 = affine.apply #map(%c0_1)
    %6 = affine.load %arg0[%c0, %5] : memref<?x4xi32>
    %7 = affine.load %arg1[%5, %c0_0] : memref<?x3xi32>
    %8 = arith.muli %6, %7 : i32
    %9 = affine.load %arg2[%c0, %c0_0] : memref<?x3xi32>
    %10 = arith.addi %9, %8 : i32
    affine.store %10, %arg2[%c0, %c0_0] : memref<?x3xi32>
    %11 = affine.apply #map1(%c0_1)
    %12 = affine.load %arg0[%c0, %11] : memref<?x4xi32>
    %13 = affine.load %arg1[%11, %c0_0] : memref<?x3xi32>
    %14 = arith.muli %12, %13 : i32
    %15 = affine.load %arg2[%c0, %c0_0] : memref<?x3xi32>
    %16 = arith.addi %15, %14 : i32
    affine.store %16, %arg2[%c0, %c0_0] : memref<?x3xi32>
    %17 = affine.apply #map2(%c0_1)
    %18 = affine.load %arg0[%c0, %17] : memref<?x4xi32>
    %19 = affine.load %arg1[%17, %c0_0] : memref<?x3xi32>
    %20 = arith.muli %18, %19 : i32
    %21 = affine.load %arg2[%c0, %c0_0] : memref<?x3xi32>
    %22 = arith.addi %21, %20 : i32
    affine.store %22, %arg2[%c0, %c0_0] : memref<?x3xi32>
    %23 = affine.apply #map(%c0_0)
    %24 = affine.load %arg0[%c0, %c0_1] : memref<?x4xi32>
    %25 = affine.load %arg1[%c0_1, %23] : memref<?x3xi32>
    %26 = arith.muli %24, %25 : i32
    %27 = affine.load %arg2[%c0, %23] : memref<?x3xi32>
    %28 = arith.addi %27, %26 : i32
    affine.store %28, %arg2[%c0, %23] : memref<?x3xi32>
    %29 = affine.apply #map(%c0_1)
    %30 = affine.load %arg0[%c0, %29] : memref<?x4xi32>
    %31 = affine.load %arg1[%29, %23] : memref<?x3xi32>
    %32 = arith.muli %30, %31 : i32
    %33 = affine.load %arg2[%c0, %23] : memref<?x3xi32>
    %34 = arith.addi %33, %32 : i32
    affine.store %34, %arg2[%c0, %23] : memref<?x3xi32>
    %35 = affine.apply #map1(%c0_1)
    %36 = affine.load %arg0[%c0, %35] : memref<?x4xi32>
    %37 = affine.load %arg1[%35, %23] : memref<?x3xi32>
    %38 = arith.muli %36, %37 : i32
    %39 = affine.load %arg2[%c0, %23] : memref<?x3xi32>
    %40 = arith.addi %39, %38 : i32
    affine.store %40, %arg2[%c0, %23] : memref<?x3xi32>
    %41 = affine.apply #map2(%c0_1)
    %42 = affine.load %arg0[%c0, %41] : memref<?x4xi32>
    %43 = affine.load %arg1[%41, %23] : memref<?x3xi32>
    %44 = arith.muli %42, %43 : i32
    %45 = affine.load %arg2[%c0, %23] : memref<?x3xi32>
    %46 = arith.addi %45, %44 : i32
    affine.store %46, %arg2[%c0, %23] : memref<?x3xi32>
    %47 = affine.apply #map1(%c0_0)
    %48 = affine.load %arg0[%c0, %c0_1] : memref<?x4xi32>
    %49 = affine.load %arg1[%c0_1, %47] : memref<?x3xi32>
    %50 = arith.muli %48, %49 : i32
    %51 = affine.load %arg2[%c0, %47] : memref<?x3xi32>
    %52 = arith.addi %51, %50 : i32
    affine.store %52, %arg2[%c0, %47] : memref<?x3xi32>
    %53 = affine.apply #map(%c0_1)
    %54 = affine.load %arg0[%c0, %53] : memref<?x4xi32>
    %55 = affine.load %arg1[%53, %47] : memref<?x3xi32>
    %56 = arith.muli %54, %55 : i32
    %57 = affine.load %arg2[%c0, %47] : memref<?x3xi32>
    %58 = arith.addi %57, %56 : i32
    affine.store %58, %arg2[%c0, %47] : memref<?x3xi32>
    %59 = affine.apply #map1(%c0_1)
    %60 = affine.load %arg0[%c0, %59] : memref<?x4xi32>
    %61 = affine.load %arg1[%59, %47] : memref<?x3xi32>
    %62 = arith.muli %60, %61 : i32
    %63 = affine.load %arg2[%c0, %47] : memref<?x3xi32>
    %64 = arith.addi %63, %62 : i32
    affine.store %64, %arg2[%c0, %47] : memref<?x3xi32>
    %65 = affine.apply #map2(%c0_1)
    %66 = affine.load %arg0[%c0, %65] : memref<?x4xi32>
    %67 = affine.load %arg1[%65, %47] : memref<?x3xi32>
    %68 = arith.muli %66, %67 : i32
    %69 = affine.load %arg2[%c0, %47] : memref<?x3xi32>
    %70 = arith.addi %69, %68 : i32
    affine.store %70, %arg2[%c0, %47] : memref<?x3xi32>
    %71 = affine.apply #map(%c0)
    %72 = affine.load %arg0[%71, %c0_1] : memref<?x4xi32>
    %73 = affine.load %arg1[%c0_1, %c0_0] : memref<?x3xi32>
    %74 = arith.muli %72, %73 : i32
    %75 = affine.load %arg2[%71, %c0_0] : memref<?x3xi32>
    %76 = arith.addi %75, %74 : i32
    affine.store %76, %arg2[%71, %c0_0] : memref<?x3xi32>
    %77 = affine.apply #map(%c0_1)
    %78 = affine.load %arg0[%71, %77] : memref<?x4xi32>
    %79 = affine.load %arg1[%77, %c0_0] : memref<?x3xi32>
    %80 = arith.muli %78, %79 : i32
    %81 = affine.load %arg2[%71, %c0_0] : memref<?x3xi32>
    %82 = arith.addi %81, %80 : i32
    affine.store %82, %arg2[%71, %c0_0] : memref<?x3xi32>
    %83 = affine.apply #map1(%c0_1)
    %84 = affine.load %arg0[%71, %83] : memref<?x4xi32>
    %85 = affine.load %arg1[%83, %c0_0] : memref<?x3xi32>
    %86 = arith.muli %84, %85 : i32
    %87 = affine.load %arg2[%71, %c0_0] : memref<?x3xi32>
    %88 = arith.addi %87, %86 : i32
    affine.store %88, %arg2[%71, %c0_0] : memref<?x3xi32>
    %89 = affine.apply #map2(%c0_1)
    %90 = affine.load %arg0[%71, %89] : memref<?x4xi32>
    %91 = affine.load %arg1[%89, %c0_0] : memref<?x3xi32>
    %92 = arith.muli %90, %91 : i32
    %93 = affine.load %arg2[%71, %c0_0] : memref<?x3xi32>
    %94 = arith.addi %93, %92 : i32
    affine.store %94, %arg2[%71, %c0_0] : memref<?x3xi32>
    %95 = affine.apply #map(%c0_0)
    %96 = affine.load %arg0[%71, %c0_1] : memref<?x4xi32>
    %97 = affine.load %arg1[%c0_1, %95] : memref<?x3xi32>
    %98 = arith.muli %96, %97 : i32
    %99 = affine.load %arg2[%71, %95] : memref<?x3xi32>
    %100 = arith.addi %99, %98 : i32
    affine.store %100, %arg2[%71, %95] : memref<?x3xi32>
    %101 = affine.apply #map(%c0_1)
    %102 = affine.load %arg0[%71, %101] : memref<?x4xi32>
    %103 = affine.load %arg1[%101, %95] : memref<?x3xi32>
    %104 = arith.muli %102, %103 : i32
    %105 = affine.load %arg2[%71, %95] : memref<?x3xi32>
    %106 = arith.addi %105, %104 : i32
    affine.store %106, %arg2[%71, %95] : memref<?x3xi32>
    %107 = affine.apply #map1(%c0_1)
    %108 = affine.load %arg0[%71, %107] : memref<?x4xi32>
    %109 = affine.load %arg1[%107, %95] : memref<?x3xi32>
    %110 = arith.muli %108, %109 : i32
    %111 = affine.load %arg2[%71, %95] : memref<?x3xi32>
    %112 = arith.addi %111, %110 : i32
    affine.store %112, %arg2[%71, %95] : memref<?x3xi32>
    %113 = affine.apply #map2(%c0_1)
    %114 = affine.load %arg0[%71, %113] : memref<?x4xi32>
    %115 = affine.load %arg1[%113, %95] : memref<?x3xi32>
    %116 = arith.muli %114, %115 : i32
    %117 = affine.load %arg2[%71, %95] : memref<?x3xi32>
    %118 = arith.addi %117, %116 : i32
    affine.store %118, %arg2[%71, %95] : memref<?x3xi32>
    %119 = affine.apply #map1(%c0_0)
    %120 = affine.load %arg0[%71, %c0_1] : memref<?x4xi32>
    %121 = affine.load %arg1[%c0_1, %119] : memref<?x3xi32>
    %122 = arith.muli %120, %121 : i32
    %123 = affine.load %arg2[%71, %119] : memref<?x3xi32>
    %124 = arith.addi %123, %122 : i32
    affine.store %124, %arg2[%71, %119] : memref<?x3xi32>
    %125 = affine.apply #map(%c0_1)
    %126 = affine.load %arg0[%71, %125] : memref<?x4xi32>
    %127 = affine.load %arg1[%125, %119] : memref<?x3xi32>
    %128 = arith.muli %126, %127 : i32
    %129 = affine.load %arg2[%71, %119] : memref<?x3xi32>
    %130 = arith.addi %129, %128 : i32
    affine.store %130, %arg2[%71, %119] : memref<?x3xi32>
    %131 = affine.apply #map1(%c0_1)
    %132 = affine.load %arg0[%71, %131] : memref<?x4xi32>
    %133 = affine.load %arg1[%131, %119] : memref<?x3xi32>
    %134 = arith.muli %132, %133 : i32
    %135 = affine.load %arg2[%71, %119] : memref<?x3xi32>
    %136 = arith.addi %135, %134 : i32
    affine.store %136, %arg2[%71, %119] : memref<?x3xi32>
    %137 = affine.apply #map2(%c0_1)
    %138 = affine.load %arg0[%71, %137] : memref<?x4xi32>
    %139 = affine.load %arg1[%137, %119] : memref<?x3xi32>
    %140 = arith.muli %138, %139 : i32
    %141 = affine.load %arg2[%71, %119] : memref<?x3xi32>
    %142 = arith.addi %141, %140 : i32
    affine.store %142, %arg2[%71, %119] : memref<?x3xi32>
    return
  }
}

