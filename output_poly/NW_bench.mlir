module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str4("Finished!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Time used on Needleman_Wunsch() function: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Test Case Generated!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Time used on calculation: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Time used on initialization: %f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?xmemref<?xi32>>, %arg1: memref<?xmemref<?xi32>>, %arg2: memref<?xmemref<?xmemref<?xi32>>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c7_i32 = arith.constant 7 : i32
    %cst = arith.constant 1.000000e+06 : f64
    %c0_i32 = arith.constant 0 : i32
    %0 = call @clock() : () -> i64
    affine.for %arg3 = 0 to 10240 {
      affine.for %arg4 = 0 to 513 {
        %16 = arith.index_cast %arg4 : index to i32
        %17 = affine.load %arg2[%arg4] : memref<?xmemref<?xmemref<?xi32>>>
        %18 = affine.load %17[0] : memref<?xmemref<?xi32>>
        %19 = arith.subi %c0_i32, %16 : i32
        affine.store %19, %18[%arg3] : memref<?xi32>
        %20 = affine.load %arg2[0] : memref<?xmemref<?xmemref<?xi32>>>
        %21 = affine.load %20[%arg4] : memref<?xmemref<?xi32>>
        affine.store %19, %21[%arg3] : memref<?xi32>
      }
    }
    %1 = call @clock() : () -> i64
    %2 = arith.subi %1, %0 : i64
    %3 = arith.sitofp %2 : i64 to f64
    %4 = arith.divf %3, %cst : f64
    %5 = llvm.mlir.addressof @str0 : !llvm.ptr
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %7 = llvm.call @printf(%6, %4) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %8 = call @clock() : () -> i64
    affine.for %arg3 = 0 to 10240 {
      affine.for %arg4 = 1 to 513 {
        affine.for %arg5 = 1 to 513 {
          %16 = affine.load %arg2[%arg4 - 1] : memref<?xmemref<?xmemref<?xi32>>>
          %17 = affine.load %16[%arg5] : memref<?xmemref<?xi32>>
          %18 = affine.load %17[%arg3] : memref<?xi32>
          %19 = arith.addi %18, %c-5_i32 : i32
          %20 = affine.load %arg2[%arg4] : memref<?xmemref<?xmemref<?xi32>>>
          %21 = affine.load %20[%arg5 - 1] : memref<?xmemref<?xi32>>
          %22 = affine.load %21[%arg3] : memref<?xi32>
          %23 = arith.addi %22, %c-5_i32 : i32
          %24 = affine.load %16[%arg5 - 1] : memref<?xmemref<?xi32>>
          %25 = affine.load %24[%arg3] : memref<?xi32>
          %26 = affine.load %arg0[%arg4 - 1] : memref<?xmemref<?xi32>>
          %27 = affine.load %26[%arg3] : memref<?xi32>
          %28 = affine.load %arg1[%arg4 - 1] : memref<?xmemref<?xi32>>
          %29 = affine.load %28[%arg3] : memref<?xi32>
          %30 = arith.cmpi eq, %27, %29 : i32
          %31 = arith.extui %30 : i1 to i32
          %32 = arith.muli %31, %c7_i32 : i32
          %33 = arith.subi %25, %32 : i32
          %34 = arith.addi %33, %c2_i32 : i32
          %35 = arith.cmpi slt, %19, %23 : i32
          %36 = arith.select %35, %23, %19 : i32
          %37 = arith.cmpi slt, %36, %34 : i32
          %38 = arith.select %37, %34, %36 : i32
          %39 = affine.load %20[%arg5] : memref<?xmemref<?xi32>>
          affine.store %38, %39[%arg3] : memref<?xi32>
        }
      }
    }
    %9 = call @clock() : () -> i64
    %10 = arith.subi %9, %8 : i64
    %11 = arith.sitofp %10 : i64 to f64
    %12 = arith.divf %11, %cst : f64
    %13 = llvm.mlir.addressof @str1 : !llvm.ptr
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %15 = llvm.call @printf(%14, %12) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    return
  }
  func.func private @clock() -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c7_i32 = arith.constant 7 : i32
    %c2_i32 = arith.constant 2 : i32
    %c-5_i32 = arith.constant -5 : i32
    %cst = arith.constant 1.000000e+06 : f64
    %c513_i64 = arith.constant 513 : i64
    %c0_i32 = arith.constant 0 : i32
    %c512_i64 = arith.constant 512 : i64
    %0 = "polygeist.typeSize"() <{source = memref<?xi32>}> : () -> index
    %1 = arith.index_cast %0 : index to i64
    %2 = arith.muli %1, %c512_i64 : i64
    %3 = arith.index_cast %2 : i64 to index
    %4 = arith.divui %3, %0 : index
    %alloc = memref.alloc(%4) : memref<?xmemref<?xi32>>
    %alloc_0 = memref.alloc(%4) : memref<?xmemref<?xi32>>
    affine.for %arg2 = 0 to 512 {
      %alloc_2 = memref.alloc() : memref<10240xi32>
      %cast = memref.cast %alloc_2 : memref<10240xi32> to memref<?xi32>
      affine.store %cast, %alloc[%arg2] : memref<?xmemref<?xi32>>
      %alloc_3 = memref.alloc() : memref<10240xi32>
      %cast_4 = memref.cast %alloc_3 : memref<10240xi32> to memref<?xi32>
      affine.store %cast_4, %alloc_0[%arg2] : memref<?xmemref<?xi32>>
    }
    %5 = "polygeist.typeSize"() <{source = memref<?xmemref<?xi32>>}> : () -> index
    %6 = arith.index_cast %5 : index to i64
    %7 = arith.muli %6, %c513_i64 : i64
    %8 = arith.index_cast %7 : i64 to index
    %9 = arith.divui %8, %5 : index
    %alloc_1 = memref.alloc(%9) : memref<?xmemref<?xmemref<?xi32>>>
    %10 = arith.muli %1, %c513_i64 : i64
    %11 = arith.index_cast %10 : i64 to index
    %12 = arith.divui %11, %0 : index
    affine.for %arg2 = 0 to 513 {
      %alloc_2 = memref.alloc(%12) : memref<?xmemref<?xi32>>
      affine.store %alloc_2, %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 513 {
        %alloc_3 = memref.alloc() : memref<10240xi32>
        %cast = memref.cast %alloc_3 : memref<10240xi32> to memref<?xi32>
        affine.store %cast, %alloc_2[%arg3] : memref<?xmemref<?xi32>>
      }
    }
    affine.for %arg2 = 0 to 10240 {
      affine.for %arg3 = 0 to 512 {
        %43 = affine.load %alloc[%arg3] : memref<?xmemref<?xi32>>
        %44 = func.call @rand() : () -> i32
        affine.store %44, %43[%arg2] : memref<?xi32>
        %45 = affine.load %alloc_0[%arg3] : memref<?xmemref<?xi32>>
        %46 = func.call @rand() : () -> i32
        affine.store %46, %45[%arg2] : memref<?xi32>
      }
    }
    %13 = llvm.mlir.addressof @str2 : !llvm.ptr
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
    %15 = llvm.call @printf(%14) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %16 = call @clock() : () -> i64
    %17 = call @clock() : () -> i64
    affine.for %arg2 = 0 to 10240 {
      %43 = affine.load %alloc_1[0] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 513 {
        %44 = arith.index_cast %arg3 : index to i32
        %45 = affine.load %alloc_1[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %46 = affine.load %45[0] : memref<?xmemref<?xi32>>
        %47 = arith.subi %c0_i32, %44 : i32
        affine.store %47, %46[%arg2] : memref<?xi32>
        %48 = affine.load %43[%arg3] : memref<?xmemref<?xi32>>
        affine.store %47, %48[%arg2] : memref<?xi32>
      }
    }
    %18 = call @clock() : () -> i64
    %19 = arith.subi %18, %17 : i64
    %20 = arith.sitofp %19 : i64 to f64
    %21 = arith.divf %20, %cst : f64
    %22 = llvm.mlir.addressof @str0 : !llvm.ptr
    %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %24 = llvm.call @printf(%23, %21) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %25 = call @clock() : () -> i64
    affine.for %arg2 = 0 to 10240 {
      affine.for %arg3 = 1 to 513 {
        %43 = affine.load %alloc_1[%arg3 - 1] : memref<?xmemref<?xmemref<?xi32>>>
        %44 = affine.load %alloc_1[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %45 = affine.load %alloc[%arg3 - 1] : memref<?xmemref<?xi32>>
        %46 = affine.load %alloc_0[%arg3 - 1] : memref<?xmemref<?xi32>>
        affine.for %arg4 = 1 to 513 {
          %47 = affine.load %43[%arg4] : memref<?xmemref<?xi32>>
          %48 = affine.load %47[%arg2] : memref<?xi32>
          %49 = arith.addi %48, %c-5_i32 : i32
          %50 = affine.load %44[%arg4 - 1] : memref<?xmemref<?xi32>>
          %51 = affine.load %50[%arg2] : memref<?xi32>
          %52 = arith.addi %51, %c-5_i32 : i32
          %53 = affine.load %43[%arg4 - 1] : memref<?xmemref<?xi32>>
          %54 = affine.load %53[%arg2] : memref<?xi32>
          %55 = affine.load %45[%arg2] : memref<?xi32>
          %56 = affine.load %46[%arg2] : memref<?xi32>
          %57 = arith.cmpi eq, %55, %56 : i32
          %58 = arith.extui %57 : i1 to i32
          %59 = arith.muli %58, %c7_i32 : i32
          %60 = arith.subi %54, %59 : i32
          %61 = arith.addi %60, %c2_i32 : i32
          %62 = arith.cmpi slt, %49, %52 : i32
          %63 = arith.select %62, %52, %49 : i32
          %64 = arith.cmpi slt, %63, %61 : i32
          %65 = arith.select %64, %61, %63 : i32
          %66 = affine.load %44[%arg4] : memref<?xmemref<?xi32>>
          affine.store %65, %66[%arg2] : memref<?xi32>
        }
      }
    }
    %26 = call @clock() : () -> i64
    %27 = arith.subi %26, %25 : i64
    %28 = arith.sitofp %27 : i64 to f64
    %29 = arith.divf %28, %cst : f64
    %30 = llvm.mlir.addressof @str1 : !llvm.ptr
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %32 = llvm.call @printf(%31, %29) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %33 = call @clock() : () -> i64
    %34 = arith.subi %33, %16 : i64
    %35 = arith.sitofp %34 : i64 to f64
    %36 = arith.divf %35, %cst : f64
    %37 = llvm.mlir.addressof @str3 : !llvm.ptr
    %38 = llvm.getelementptr %37[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<46 x i8>
    %39 = llvm.call @printf(%38, %36) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    affine.for %arg2 = 0 to 512 {
      %43 = affine.load %alloc[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %43 : memref<?xi32>
      %44 = affine.load %alloc_0[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %44 : memref<?xi32>
    }
    memref.dealloc %alloc : memref<?xmemref<?xi32>>
    memref.dealloc %alloc_0 : memref<?xmemref<?xi32>>
    affine.for %arg2 = 0 to 512 {
      %43 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 512 {
        %44 = affine.load %43[%arg3] : memref<?xmemref<?xi32>>
        memref.dealloc %44 : memref<?xi32>
      }
      memref.dealloc %43 : memref<?xmemref<?xi32>>
    }
    memref.dealloc %alloc_1 : memref<?xmemref<?xmemref<?xi32>>>
    %40 = llvm.mlir.addressof @str4 : !llvm.ptr
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i8>
    %42 = llvm.call @printf(%41) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    return %c0_i32 : i32
  }
  func.func private @rand() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
