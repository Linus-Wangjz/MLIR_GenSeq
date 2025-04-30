module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str1("Success! Time used: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Test Case Generated!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?xmemref<?xi32>>, %arg1: memref<?xmemref<?xi32>>, %arg2: memref<?xmemref<?xmemref<?xi32>>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c7_i32 = arith.constant 7 : i32
    %c0_i32 = arith.constant 0 : i32
    affine.for %arg3 = 0 to 2048 {
      affine.for %arg4 = 0 to 513 {
        %0 = arith.index_cast %arg4 : index to i32
        %1 = affine.load %arg2[%arg4] : memref<?xmemref<?xmemref<?xi32>>>
        %2 = affine.load %1[0] : memref<?xmemref<?xi32>>
        %3 = arith.subi %c0_i32, %0 : i32
        affine.store %3, %2[%arg3] : memref<?xi32>
        %4 = affine.load %arg2[0] : memref<?xmemref<?xmemref<?xi32>>>
        %5 = affine.load %4[%arg4] : memref<?xmemref<?xi32>>
        affine.store %3, %5[%arg3] : memref<?xi32>
      }
    }
    affine.for %arg3 = 0 to 2048 {
      affine.for %arg4 = 1 to 513 {
        affine.for %arg5 = 1 to 513 {
          %0 = affine.load %arg2[%arg4 - 1] : memref<?xmemref<?xmemref<?xi32>>>
          %1 = affine.load %0[%arg5] : memref<?xmemref<?xi32>>
          %2 = affine.load %1[%arg3] : memref<?xi32>
          %3 = arith.addi %2, %c-5_i32 : i32
          %4 = affine.load %arg2[%arg4] : memref<?xmemref<?xmemref<?xi32>>>
          %5 = affine.load %4[%arg5 - 1] : memref<?xmemref<?xi32>>
          %6 = affine.load %5[%arg3] : memref<?xi32>
          %7 = arith.addi %6, %c-5_i32 : i32
          %8 = affine.load %0[%arg5 - 1] : memref<?xmemref<?xi32>>
          %9 = affine.load %8[%arg3] : memref<?xi32>
          %10 = affine.load %arg0[%arg4 - 1] : memref<?xmemref<?xi32>>
          %11 = affine.load %10[%arg3] : memref<?xi32>
          %12 = affine.load %arg1[%arg4 - 1] : memref<?xmemref<?xi32>>
          %13 = affine.load %12[%arg3] : memref<?xi32>
          %14 = arith.cmpi eq, %11, %13 : i32
          %15 = arith.extui %14 : i1 to i32
          %16 = arith.muli %15, %c7_i32 : i32
          %17 = arith.subi %9, %16 : i32
          %18 = arith.addi %17, %c2_i32 : i32
          %19 = arith.cmpi slt, %3, %7 : i32
          %20 = arith.select %19, %7, %3 : i32
          %21 = arith.cmpi slt, %20, %18 : i32
          %22 = arith.select %21, %18, %20 : i32
          %23 = affine.load %4[%arg5] : memref<?xmemref<?xi32>>
          affine.store %22, %23[%arg3] : memref<?xi32>
        }
      }
    }
    return
  }
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
        %31 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
        %alloc_3 = memref.alloc() : memref<2048xi32>
        %cast = memref.cast %alloc_3 : memref<2048xi32> to memref<?xi32>
        affine.store %cast, %31[%arg3] : memref<?xmemref<?xi32>>
      }
    }
    affine.for %arg2 = 0 to 2048 {
      affine.for %arg3 = 0 to 512 {
        %31 = affine.load %alloc[%arg3] : memref<?xmemref<?xi32>>
        %32 = func.call @rand() : () -> i32
        affine.store %32, %31[%arg2] : memref<?xi32>
        %33 = affine.load %alloc_0[%arg3] : memref<?xmemref<?xi32>>
        %34 = func.call @rand() : () -> i32
        affine.store %34, %33[%arg2] : memref<?xi32>
      }
    }
    %20 = llvm.mlir.addressof @str0 : !llvm.ptr
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
    %22 = llvm.call @printf(%21) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %23 = call @clock() : () -> i64
    call @Needleman_Wunsch(%alloc, %alloc_0, %alloc_1) : (memref<?xmemref<?xi32>>, memref<?xmemref<?xi32>>, memref<?xmemref<?xmemref<?xi32>>>) -> ()
    %24 = call @clock() : () -> i64
    %25 = arith.subi %24, %23 : i64
    %26 = arith.sitofp %25 : i64 to f64
    %27 = arith.divf %26, %cst : f64
    %28 = llvm.mlir.addressof @str1 : !llvm.ptr
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<24 x i8>
    %30 = llvm.call @printf(%29, %27) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    affine.for %arg2 = 0 to 512 {
      %31 = affine.load %alloc[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %31 : memref<?xi32>
      %32 = affine.load %alloc_0[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %32 : memref<?xi32>
    }
    memref.dealloc %alloc : memref<?xmemref<?xi32>>
    memref.dealloc %alloc_0 : memref<?xmemref<?xi32>>
    affine.for %arg2 = 0 to 512 {
      scf.if %true {
        %32 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
        affine.for %arg3 = 0 to 512 {
          %33 = affine.load %32[%arg3] : memref<?xmemref<?xi32>>
          memref.dealloc %33 : memref<?xi32>
        }
      }
      %31 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      memref.dealloc %31 : memref<?xmemref<?xi32>>
    }
    memref.dealloc %alloc_1 : memref<?xmemref<?xmemref<?xi32>>>
    return %c0_i32 : i32
  }
  func.func private @rand() -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @clock() -> i64 attributes {llvm.linkage = #llvm.linkage<external>}
}
