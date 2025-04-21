module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  func.func @_Z6matmulPA4_iPA3_iS2_(%arg0: memref<?x4xi32>, %arg1: memref<?x3xi32>, %arg2: memref<?x3xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = affine.load %arg0[%c0, %c0] : memref<?x4xi32>
    %1 = affine.load %arg1[%c0, %c0] : memref<?x3xi32>
    %2 = arith.muli %0, %1 : i32
    %3 = affine.load %arg2[%c0, %c0] : memref<?x3xi32>
    %4 = arith.addi %3, %2 : i32
    affine.store %4, %arg2[%c0, %c0] : memref<?x3xi32>
    %5 = affine.load %arg0[%c0, %c1] : memref<?x4xi32>
    %6 = affine.load %arg1[%c1, %c0] : memref<?x3xi32>
    %7 = arith.muli %5, %6 : i32
    %8 = affine.load %arg2[%c0, %c0] : memref<?x3xi32>
    %9 = arith.addi %8, %7 : i32
    affine.store %9, %arg2[%c0, %c0] : memref<?x3xi32>
    %10 = affine.load %arg0[%c0, %c2] : memref<?x4xi32>
    %11 = affine.load %arg1[%c2, %c0] : memref<?x3xi32>
    %12 = arith.muli %10, %11 : i32
    %13 = affine.load %arg2[%c0, %c0] : memref<?x3xi32>
    %14 = arith.addi %13, %12 : i32
    affine.store %14, %arg2[%c0, %c0] : memref<?x3xi32>
    %15 = affine.load %arg0[%c0, %c3] : memref<?x4xi32>
    %16 = affine.load %arg1[%c3, %c0] : memref<?x3xi32>
    %17 = arith.muli %15, %16 : i32
    %18 = affine.load %arg2[%c0, %c0] : memref<?x3xi32>
    %19 = arith.addi %18, %17 : i32
    affine.store %19, %arg2[%c0, %c0] : memref<?x3xi32>
    %20 = affine.load %arg0[%c0, %c0] : memref<?x4xi32>
    %21 = affine.load %arg1[%c0, %c1] : memref<?x3xi32>
    %22 = arith.muli %20, %21 : i32
    %23 = affine.load %arg2[%c0, %c1] : memref<?x3xi32>
    %24 = arith.addi %23, %22 : i32
    affine.store %24, %arg2[%c0, %c1] : memref<?x3xi32>
    %25 = affine.load %arg0[%c0, %c1] : memref<?x4xi32>
    %26 = affine.load %arg1[%c1, %c1] : memref<?x3xi32>
    %27 = arith.muli %25, %26 : i32
    %28 = affine.load %arg2[%c0, %c1] : memref<?x3xi32>
    %29 = arith.addi %28, %27 : i32
    affine.store %29, %arg2[%c0, %c1] : memref<?x3xi32>
    %30 = affine.load %arg0[%c0, %c2] : memref<?x4xi32>
    %31 = affine.load %arg1[%c2, %c1] : memref<?x3xi32>
    %32 = arith.muli %30, %31 : i32
    %33 = affine.load %arg2[%c0, %c1] : memref<?x3xi32>
    %34 = arith.addi %33, %32 : i32
    affine.store %34, %arg2[%c0, %c1] : memref<?x3xi32>
    %35 = affine.load %arg0[%c0, %c3] : memref<?x4xi32>
    %36 = affine.load %arg1[%c3, %c1] : memref<?x3xi32>
    %37 = arith.muli %35, %36 : i32
    %38 = affine.load %arg2[%c0, %c1] : memref<?x3xi32>
    %39 = arith.addi %38, %37 : i32
    affine.store %39, %arg2[%c0, %c1] : memref<?x3xi32>
    %40 = affine.load %arg0[%c0, %c0] : memref<?x4xi32>
    %41 = affine.load %arg1[%c0, %c2] : memref<?x3xi32>
    %42 = arith.muli %40, %41 : i32
    %43 = affine.load %arg2[%c0, %c2] : memref<?x3xi32>
    %44 = arith.addi %43, %42 : i32
    affine.store %44, %arg2[%c0, %c2] : memref<?x3xi32>
    %45 = affine.load %arg0[%c0, %c1] : memref<?x4xi32>
    %46 = affine.load %arg1[%c1, %c2] : memref<?x3xi32>
    %47 = arith.muli %45, %46 : i32
    %48 = affine.load %arg2[%c0, %c2] : memref<?x3xi32>
    %49 = arith.addi %48, %47 : i32
    affine.store %49, %arg2[%c0, %c2] : memref<?x3xi32>
    %50 = affine.load %arg0[%c0, %c2] : memref<?x4xi32>
    %51 = affine.load %arg1[%c2, %c2] : memref<?x3xi32>
    %52 = arith.muli %50, %51 : i32
    %53 = affine.load %arg2[%c0, %c2] : memref<?x3xi32>
    %54 = arith.addi %53, %52 : i32
    affine.store %54, %arg2[%c0, %c2] : memref<?x3xi32>
    %55 = affine.load %arg0[%c0, %c3] : memref<?x4xi32>
    %56 = affine.load %arg1[%c3, %c2] : memref<?x3xi32>
    %57 = arith.muli %55, %56 : i32
    %58 = affine.load %arg2[%c0, %c2] : memref<?x3xi32>
    %59 = arith.addi %58, %57 : i32
    affine.store %59, %arg2[%c0, %c2] : memref<?x3xi32>
    %60 = affine.load %arg0[%c1, %c0] : memref<?x4xi32>
    %61 = affine.load %arg1[%c0, %c0] : memref<?x3xi32>
    %62 = arith.muli %60, %61 : i32
    %63 = affine.load %arg2[%c1, %c0] : memref<?x3xi32>
    %64 = arith.addi %63, %62 : i32
    affine.store %64, %arg2[%c1, %c0] : memref<?x3xi32>
    %65 = affine.load %arg0[%c1, %c1] : memref<?x4xi32>
    %66 = affine.load %arg1[%c1, %c0] : memref<?x3xi32>
    %67 = arith.muli %65, %66 : i32
    %68 = affine.load %arg2[%c1, %c0] : memref<?x3xi32>
    %69 = arith.addi %68, %67 : i32
    affine.store %69, %arg2[%c1, %c0] : memref<?x3xi32>
    %70 = affine.load %arg0[%c1, %c2] : memref<?x4xi32>
    %71 = affine.load %arg1[%c2, %c0] : memref<?x3xi32>
    %72 = arith.muli %70, %71 : i32
    %73 = affine.load %arg2[%c1, %c0] : memref<?x3xi32>
    %74 = arith.addi %73, %72 : i32
    affine.store %74, %arg2[%c1, %c0] : memref<?x3xi32>
    %75 = affine.load %arg0[%c1, %c3] : memref<?x4xi32>
    %76 = affine.load %arg1[%c3, %c0] : memref<?x3xi32>
    %77 = arith.muli %75, %76 : i32
    %78 = affine.load %arg2[%c1, %c0] : memref<?x3xi32>
    %79 = arith.addi %78, %77 : i32
    affine.store %79, %arg2[%c1, %c0] : memref<?x3xi32>
    %80 = affine.load %arg0[%c1, %c0] : memref<?x4xi32>
    %81 = affine.load %arg1[%c0, %c1] : memref<?x3xi32>
    %82 = arith.muli %80, %81 : i32
    %83 = affine.load %arg2[%c1, %c1] : memref<?x3xi32>
    %84 = arith.addi %83, %82 : i32
    affine.store %84, %arg2[%c1, %c1] : memref<?x3xi32>
    %85 = affine.load %arg0[%c1, %c1] : memref<?x4xi32>
    %86 = affine.load %arg1[%c1, %c1] : memref<?x3xi32>
    %87 = arith.muli %85, %86 : i32
    %88 = affine.load %arg2[%c1, %c1] : memref<?x3xi32>
    %89 = arith.addi %88, %87 : i32
    affine.store %89, %arg2[%c1, %c1] : memref<?x3xi32>
    %90 = affine.load %arg0[%c1, %c2] : memref<?x4xi32>
    %91 = affine.load %arg1[%c2, %c1] : memref<?x3xi32>
    %92 = arith.muli %90, %91 : i32
    %93 = affine.load %arg2[%c1, %c1] : memref<?x3xi32>
    %94 = arith.addi %93, %92 : i32
    affine.store %94, %arg2[%c1, %c1] : memref<?x3xi32>
    %95 = affine.load %arg0[%c1, %c3] : memref<?x4xi32>
    %96 = affine.load %arg1[%c3, %c1] : memref<?x3xi32>
    %97 = arith.muli %95, %96 : i32
    %98 = affine.load %arg2[%c1, %c1] : memref<?x3xi32>
    %99 = arith.addi %98, %97 : i32
    affine.store %99, %arg2[%c1, %c1] : memref<?x3xi32>
    %100 = affine.load %arg0[%c1, %c0] : memref<?x4xi32>
    %101 = affine.load %arg1[%c0, %c2] : memref<?x3xi32>
    %102 = arith.muli %100, %101 : i32
    %103 = affine.load %arg2[%c1, %c2] : memref<?x3xi32>
    %104 = arith.addi %103, %102 : i32
    affine.store %104, %arg2[%c1, %c2] : memref<?x3xi32>
    %105 = affine.load %arg0[%c1, %c1] : memref<?x4xi32>
    %106 = affine.load %arg1[%c1, %c2] : memref<?x3xi32>
    %107 = arith.muli %105, %106 : i32
    %108 = affine.load %arg2[%c1, %c2] : memref<?x3xi32>
    %109 = arith.addi %108, %107 : i32
    affine.store %109, %arg2[%c1, %c2] : memref<?x3xi32>
    %110 = affine.load %arg0[%c1, %c2] : memref<?x4xi32>
    %111 = affine.load %arg1[%c2, %c2] : memref<?x3xi32>
    %112 = arith.muli %110, %111 : i32
    %113 = affine.load %arg2[%c1, %c2] : memref<?x3xi32>
    %114 = arith.addi %113, %112 : i32
    affine.store %114, %arg2[%c1, %c2] : memref<?x3xi32>
    %115 = affine.load %arg0[%c1, %c3] : memref<?x4xi32>
    %116 = affine.load %arg1[%c3, %c2] : memref<?x3xi32>
    %117 = arith.muli %115, %116 : i32
    %118 = affine.load %arg2[%c1, %c2] : memref<?x3xi32>
    %119 = arith.addi %118, %117 : i32
    affine.store %119, %arg2[%c1, %c2] : memref<?x3xi32>
    return
  }
}

