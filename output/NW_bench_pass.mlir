module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str4("Finished!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Time used on Needleman_Wunsch() function: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Test Case Generated!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Time used on calculation: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Time used on initialization: %f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?xmemref<?xi32>>, %arg1: memref<?xmemref<?xi32>>, %arg2: memref<?xmemref<?xmemref<?xi32>>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %0 = vector.broadcast %c-5_i32 : i32 to vector<8xi32>
    %c7_i32 = arith.constant 7 : i32
    %1 = vector.broadcast %c7_i32 : i32 to vector<8xi32>
    %c2_i32 = arith.constant 2 : i32
    %2 = vector.broadcast %c2_i32 : i32 to vector<8xi32>
    %cst = arith.constant 1.000000e+06 : f64
    %c0_i32 = arith.constant 0 : i32
    %3 = call @clock() : () -> i64
    affine.for %arg3 = 0 to 2048 {
      affine.for %arg4 = 0 to 513 {
        %19 = arith.index_cast %arg4 : index to i32
        %20 = affine.load %arg2[%arg4] : memref<?xmemref<?xmemref<?xi32>>>
        %21 = affine.load %20[0] : memref<?xmemref<?xi32>>
        %22 = arith.subi %c0_i32, %19 : i32
        affine.store %22, %21[%arg3] : memref<?xi32>
        %23 = affine.load %arg2[0] : memref<?xmemref<?xmemref<?xi32>>>
        %24 = affine.load %23[%arg4] : memref<?xmemref<?xi32>>
        affine.store %22, %24[%arg3] : memref<?xi32>
      }
    }
    %4 = call @clock() : () -> i64
    %5 = arith.subi %4, %3 : i64
    %6 = arith.sitofp %5 : i64 to f64
    %7 = arith.divf %6, %cst : f64
    %8 = llvm.mlir.addressof @str0 : !llvm.ptr
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %10 = llvm.call @printf(%9, %7) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %11 = call @clock() : () -> i64
    affine.for %arg3 = 0 to 2048 step 8 {
      affine.for %arg4 = 1 to 513 {
        affine.for %arg5 = 1 to 513 {
          %19 = affine.load %arg2[%arg4 - 1] : memref<?xmemref<?xmemref<?xi32>>>
          %20 = affine.load %19[%arg5] : memref<?xmemref<?xi32>>
          %21 = vector.load %20[%arg3] : memref<?xi32>, vector<8xi32>
          %22 = arith.addi %21, %0 : vector<8xi32>
          %23 = affine.load %arg2[%arg4] : memref<?xmemref<?xmemref<?xi32>>>
          %24 = affine.load %23[%arg5 - 1] : memref<?xmemref<?xi32>>
          %25 = vector.load %24[%arg3] : memref<?xi32>, vector<8xi32>
          %26 = arith.addi %25, %0 : vector<8xi32>
          %27 = affine.load %19[%arg5 - 1] : memref<?xmemref<?xi32>>
          %28 = vector.load %27[%arg3] : memref<?xi32>, vector<8xi32>
          %29 = affine.load %arg0[%arg4 - 1] : memref<?xmemref<?xi32>>
          %30 = vector.load %29[%arg3] : memref<?xi32>, vector<8xi32>
          %31 = affine.load %arg1[%arg4 - 1] : memref<?xmemref<?xi32>>
          %32 = vector.load %31[%arg3] : memref<?xi32>, vector<8xi32>
          %33 = arith.cmpi eq, %30, %32 : vector<8xi32>
          %34 = arith.extui %33 : vector<8xi1> to vector<8xi32>
          %35 = arith.muli %34, %1 : vector<8xi32>
          %36 = arith.subi %28, %35 : vector<8xi32>
          %37 = arith.addi %36, %2 : vector<8xi32>
          %38 = arith.cmpi slt, %22, %26 : vector<8xi32>
          %39 = arith.select %38, %26, %22 : vector<8xi1>, vector<8xi32>
          %40 = arith.cmpi slt, %39, %37 : vector<8xi32>
          %41 = arith.select %40, %37, %39 : vector<8xi1>, vector<8xi32>
          %42 = affine.load %23[%arg5] : memref<?xmemref<?xi32>>
          vector.store %41, %42[%arg3] : memref<?xi32>, vector<8xi32>
        }
      }
    }
    %12 = call @clock() : () -> i64
    %13 = arith.subi %12, %11 : i64
    %14 = arith.sitofp %13 : i64 to f64
    %15 = arith.divf %14, %cst : f64
    %16 = llvm.mlir.addressof @str1 : !llvm.ptr
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %18 = llvm.call @printf(%17, %15) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    return
  }
  func.func private @clock() -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %true = arith.constant true
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
    %5 = "polygeist.typeSize"() <{source = memref<?xi32>}> : () -> index
    %6 = arith.index_cast %5 : index to i64
    %7 = arith.muli %6, %c512_i64 : i64
    %8 = arith.index_cast %7 : i64 to index
    %9 = arith.divui %8, %5 : index
    %alloc_0 = memref.alloc(%9) : memref<?xmemref<?xi32>>
    affine.for %arg2 = 0 to 512 {
      %alloc_2 = memref.alloc() : memref<2048xi32>
      %cast = memref.cast %alloc_2 : memref<2048xi32> to memref<?xi32>
      affine.store %cast, %alloc[%arg2] : memref<?xmemref<?xi32>>
      %alloc_3 = memref.alloc() : memref<2048xi32>
      %cast_4 = memref.cast %alloc_3 : memref<2048xi32> to memref<?xi32>
      affine.store %cast_4, %alloc_0[%arg2] : memref<?xmemref<?xi32>>
    }
    %10 = "polygeist.typeSize"() <{source = memref<?xmemref<?xi32>>}> : () -> index
    %11 = arith.index_cast %10 : index to i64
    %12 = arith.muli %11, %c513_i64 : i64
    %13 = arith.index_cast %12 : i64 to index
    %14 = arith.divui %13, %10 : index
    %alloc_1 = memref.alloc(%14) : memref<?xmemref<?xmemref<?xi32>>>
    %15 = "polygeist.typeSize"() <{source = memref<?xi32>}> : () -> index
    %16 = arith.index_cast %15 : index to i64
    %17 = arith.muli %16, %c513_i64 : i64
    %18 = arith.index_cast %17 : i64 to index
    %19 = arith.divui %18, %15 : index
    affine.for %arg2 = 0 to 513 {
      %alloc_2 = memref.alloc(%19) : memref<?xmemref<?xi32>>
      affine.store %alloc_2, %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 513 {
        %34 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
        %alloc_3 = memref.alloc() : memref<2048xi32>
        %cast = memref.cast %alloc_3 : memref<2048xi32> to memref<?xi32>
        affine.store %cast, %34[%arg3] : memref<?xmemref<?xi32>>
      }
    }
    affine.for %arg2 = 0 to 2048 {
      affine.for %arg3 = 0 to 512 {
        %34 = affine.load %alloc[%arg3] : memref<?xmemref<?xi32>>
        %35 = func.call @rand() : () -> i32
        affine.store %35, %34[%arg2] : memref<?xi32>
        %36 = affine.load %alloc_0[%arg3] : memref<?xmemref<?xi32>>
        %37 = func.call @rand() : () -> i32
        affine.store %37, %36[%arg2] : memref<?xi32>
      }
    }
    %20 = llvm.mlir.addressof @str2 : !llvm.ptr
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
    %22 = llvm.call @printf(%21) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %23 = call @clock() : () -> i64
    call @Needleman_Wunsch(%alloc, %alloc_0, %alloc_1) : (memref<?xmemref<?xi32>>, memref<?xmemref<?xi32>>, memref<?xmemref<?xmemref<?xi32>>>) -> ()
    %24 = call @clock() : () -> i64
    %25 = arith.subi %24, %23 : i64
    %26 = arith.sitofp %25 : i64 to f64
    %27 = arith.divf %26, %cst : f64
    %28 = llvm.mlir.addressof @str3 : !llvm.ptr
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<46 x i8>
    %30 = llvm.call @printf(%29, %27) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    affine.for %arg2 = 0 to 512 {
      %34 = affine.load %alloc[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %34 : memref<?xi32>
      %35 = affine.load %alloc_0[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %35 : memref<?xi32>
    }
    memref.dealloc %alloc : memref<?xmemref<?xi32>>
    memref.dealloc %alloc_0 : memref<?xmemref<?xi32>>
    affine.for %arg2 = 0 to 512 {
      scf.if %true {
        %35 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
        affine.for %arg3 = 0 to 512 {
          %36 = affine.load %35[%arg3] : memref<?xmemref<?xi32>>
          memref.dealloc %36 : memref<?xi32>
        }
      }
      %34 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      memref.dealloc %34 : memref<?xmemref<?xi32>>
    }
    memref.dealloc %alloc_1 : memref<?xmemref<?xmemref<?xi32>>>
    %31 = llvm.mlir.addressof @str4 : !llvm.ptr
    %32 = llvm.getelementptr %31[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i8>
    %33 = llvm.call @printf(%32) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    return %c0_i32 : i32
  }
  func.func private @rand() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}

