module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str4("Finished!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Time used on Min_Cost_Path() function: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Test Case Generated!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Time used on calculation: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Time used on initialization: %f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Min_Cost_Path(%arg0: memref<?xmemref<?xmemref<?xi32>>>, %arg1: memref<?xmemref<?xmemref<?xi32>>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.000000e+06 : f64
    %0 = call @clock() : () -> i64
    affine.for %arg2 = 0 to 10240 {
      %16 = affine.load %arg1[0] : memref<?xmemref<?xmemref<?xi32>>>
      %17 = affine.load %16[0] : memref<?xmemref<?xi32>>
      %18 = affine.load %arg0[0] : memref<?xmemref<?xmemref<?xi32>>>
      %19 = affine.load %18[0] : memref<?xmemref<?xi32>>
      %20 = affine.load %19[%arg2] : memref<?xi32>
      affine.store %20, %17[%arg2] : memref<?xi32>
      affine.for %arg3 = 1 to 512 {
        %21 = affine.load %arg1[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %22 = affine.load %21[0] : memref<?xmemref<?xi32>>
        %23 = affine.load %arg1[%arg3 - 1] : memref<?xmemref<?xmemref<?xi32>>>
        %24 = affine.load %23[0] : memref<?xmemref<?xi32>>
        %25 = affine.load %24[0] : memref<?xi32>
        %26 = affine.load %arg0[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %27 = affine.load %26[0] : memref<?xmemref<?xi32>>
        %28 = affine.load %27[%arg2] : memref<?xi32>
        %29 = arith.addi %25, %28 : i32
        affine.store %29, %22[%arg2] : memref<?xi32>
        %30 = affine.load %arg1[0] : memref<?xmemref<?xmemref<?xi32>>>
        %31 = affine.load %30[%arg3] : memref<?xmemref<?xi32>>
        %32 = affine.load %30[%arg3 - 1] : memref<?xmemref<?xi32>>
        %33 = affine.load %32[0] : memref<?xi32>
        %34 = affine.load %arg0[0] : memref<?xmemref<?xmemref<?xi32>>>
        %35 = affine.load %34[%arg3] : memref<?xmemref<?xi32>>
        %36 = affine.load %35[%arg2] : memref<?xi32>
        %37 = arith.addi %33, %36 : i32
        affine.store %37, %31[%arg2] : memref<?xi32>
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
    affine.for %arg2 = 0 to 10240 {
      affine.for %arg3 = 1 to 512 {
        affine.for %arg4 = 1 to 512 {
          %16 = affine.load %arg1[%arg3 - 1] : memref<?xmemref<?xmemref<?xi32>>>
          %17 = affine.load %16[%arg4 - 1] : memref<?xmemref<?xi32>>
          %18 = affine.load %17[%arg2] : memref<?xi32>
          %19 = affine.load %16[%arg4] : memref<?xmemref<?xi32>>
          %20 = affine.load %19[%arg2] : memref<?xi32>
          %21 = affine.load %arg1[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
          %22 = affine.load %21[%arg4 - 1] : memref<?xmemref<?xi32>>
          %23 = affine.load %22[%arg2] : memref<?xi32>
          %24 = arith.cmpi sgt, %18, %20 : i32
          %25 = arith.select %24, %20, %18 : i32
          %26 = arith.cmpi sgt, %25, %23 : i32
          %27 = arith.select %26, %23, %25 : i32
          %28 = affine.load %21[%arg4] : memref<?xmemref<?xi32>>
          %29 = affine.load %arg0[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
          %30 = affine.load %29[%arg4] : memref<?xmemref<?xi32>>
          %31 = affine.load %30[%arg2] : memref<?xi32>
          %32 = arith.addi %27, %31 : i32
          affine.store %32, %28[%arg2] : memref<?xi32>
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
    %cst = arith.constant 1.000000e+06 : f64
    %c0_i32 = arith.constant 0 : i32
    %c512_i64 = arith.constant 512 : i64
    %0 = "polygeist.typeSize"() <{source = memref<?xmemref<?xi32>>}> : () -> index
    %1 = arith.index_cast %0 : index to i64
    %2 = arith.muli %1, %c512_i64 : i64
    %3 = arith.index_cast %2 : i64 to index
    %4 = arith.divui %3, %0 : index
    %alloc = memref.alloc(%4) : memref<?xmemref<?xmemref<?xi32>>>
    %5 = "polygeist.typeSize"() <{source = memref<?xi32>}> : () -> index
    %6 = arith.index_cast %5 : index to i64
    %7 = arith.muli %6, %c512_i64 : i64
    %8 = arith.index_cast %7 : i64 to index
    %9 = arith.divui %8, %5 : index
    affine.for %arg2 = 0 to 512 {
      %alloc_1 = memref.alloc(%9) : memref<?xmemref<?xi32>>
      affine.store %alloc_1, %alloc[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 512 {
        %alloc_2 = memref.alloc() : memref<10240xi32>
        %cast = memref.cast %alloc_2 : memref<10240xi32> to memref<?xi32>
        affine.store %cast, %alloc_1[%arg3] : memref<?xmemref<?xi32>>
      }
    }
    %alloc_0 = memref.alloc(%4) : memref<?xmemref<?xmemref<?xi32>>>
    affine.for %arg2 = 0 to 512 {
      %alloc_1 = memref.alloc(%9) : memref<?xmemref<?xi32>>
      affine.store %alloc_1, %alloc_0[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 512 {
        %alloc_2 = memref.alloc() : memref<10240xi32>
        %cast = memref.cast %alloc_2 : memref<10240xi32> to memref<?xi32>
        affine.store %cast, %alloc_1[%arg3] : memref<?xmemref<?xi32>>
      }
    }
    %10 = llvm.mlir.addressof @str2 : !llvm.ptr
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
    %12 = llvm.call @printf(%11) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %13 = call @clock() : () -> i64
    %14 = call @clock() : () -> i64
    %15 = affine.load %alloc_0[0] : memref<?xmemref<?xmemref<?xi32>>>
    %16 = affine.load %alloc[0] : memref<?xmemref<?xmemref<?xi32>>>
    affine.for %arg2 = 0 to 10240 {
      %42 = affine.load %15[0] : memref<?xmemref<?xi32>>
      %43 = affine.load %16[0] : memref<?xmemref<?xi32>>
      %44 = affine.load %43[%arg2] : memref<?xi32>
      affine.store %44, %42[%arg2] : memref<?xi32>
      affine.for %arg3 = 1 to 512 {
        %45 = affine.load %alloc_0[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %46 = affine.load %45[0] : memref<?xmemref<?xi32>>
        %47 = affine.load %alloc_0[%arg3 - 1] : memref<?xmemref<?xmemref<?xi32>>>
        %48 = affine.load %47[0] : memref<?xmemref<?xi32>>
        %49 = affine.load %48[0] : memref<?xi32>
        %50 = affine.load %alloc[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %51 = affine.load %50[0] : memref<?xmemref<?xi32>>
        %52 = affine.load %51[%arg2] : memref<?xi32>
        %53 = arith.addi %49, %52 : i32
        affine.store %53, %46[%arg2] : memref<?xi32>
        %54 = affine.load %15[%arg3] : memref<?xmemref<?xi32>>
        %55 = affine.load %15[%arg3 - 1] : memref<?xmemref<?xi32>>
        %56 = affine.load %55[0] : memref<?xi32>
        %57 = affine.load %16[%arg3] : memref<?xmemref<?xi32>>
        %58 = affine.load %57[%arg2] : memref<?xi32>
        %59 = arith.addi %56, %58 : i32
        affine.store %59, %54[%arg2] : memref<?xi32>
      }
    }
    %17 = call @clock() : () -> i64
    %18 = arith.subi %17, %14 : i64
    %19 = arith.sitofp %18 : i64 to f64
    %20 = arith.divf %19, %cst : f64
    %21 = llvm.mlir.addressof @str0 : !llvm.ptr
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %23 = llvm.call @printf(%22, %20) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %24 = call @clock() : () -> i64
    affine.for %arg2 = 0 to 10240 {
      affine.for %arg3 = 1 to 512 {
        %42 = affine.load %alloc_0[%arg3 - 1] : memref<?xmemref<?xmemref<?xi32>>>
        %43 = affine.load %alloc_0[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %44 = affine.load %alloc[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        affine.for %arg4 = 1 to 512 {
          %45 = affine.load %42[%arg4 - 1] : memref<?xmemref<?xi32>>
          %46 = affine.load %45[%arg2] : memref<?xi32>
          %47 = affine.load %42[%arg4] : memref<?xmemref<?xi32>>
          %48 = affine.load %47[%arg2] : memref<?xi32>
          %49 = affine.load %43[%arg4 - 1] : memref<?xmemref<?xi32>>
          %50 = affine.load %49[%arg2] : memref<?xi32>
          %51 = arith.cmpi sgt, %46, %48 : i32
          %52 = arith.select %51, %48, %46 : i32
          %53 = arith.cmpi sgt, %52, %50 : i32
          %54 = arith.select %53, %50, %52 : i32
          %55 = affine.load %43[%arg4] : memref<?xmemref<?xi32>>
          %56 = affine.load %44[%arg4] : memref<?xmemref<?xi32>>
          %57 = affine.load %56[%arg2] : memref<?xi32>
          %58 = arith.addi %54, %57 : i32
          affine.store %58, %55[%arg2] : memref<?xi32>
        }
      }
    }
    %25 = call @clock() : () -> i64
    %26 = arith.subi %25, %24 : i64
    %27 = arith.sitofp %26 : i64 to f64
    %28 = arith.divf %27, %cst : f64
    %29 = llvm.mlir.addressof @str1 : !llvm.ptr
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %31 = llvm.call @printf(%30, %28) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %32 = call @clock() : () -> i64
    %33 = arith.subi %32, %13 : i64
    %34 = arith.sitofp %33 : i64 to f64
    %35 = arith.divf %34, %cst : f64
    %36 = llvm.mlir.addressof @str3 : !llvm.ptr
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<43 x i8>
    %38 = llvm.call @printf(%37, %35) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    affine.for %arg2 = 0 to 512 {
      %42 = affine.load %alloc[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      %43 = affine.load %alloc_0[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 512 {
        %44 = affine.load %42[%arg3] : memref<?xmemref<?xi32>>
        memref.dealloc %44 : memref<?xi32>
        %45 = affine.load %43[%arg3] : memref<?xmemref<?xi32>>
        memref.dealloc %45 : memref<?xi32>
      }
      memref.dealloc %42 : memref<?xmemref<?xi32>>
      memref.dealloc %43 : memref<?xmemref<?xi32>>
    }
    memref.dealloc %alloc : memref<?xmemref<?xmemref<?xi32>>>
    memref.dealloc %alloc_0 : memref<?xmemref<?xmemref<?xi32>>>
    %39 = llvm.mlir.addressof @str4 : !llvm.ptr
    %40 = llvm.getelementptr %39[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i8>
    %41 = llvm.call @printf(%40) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    return %c0_i32 : i32
  }
}
