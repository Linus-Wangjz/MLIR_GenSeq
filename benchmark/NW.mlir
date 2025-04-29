module {
  llvm.mlir.global internal constant @str6("Success!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("Read-in Success!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("%c\00") {addr_space = 0 : i32}
  llvm.func @__isoc99_fscanf(!llvm.ptr, !llvm.ptr, ...) -> i32
  llvm.mlir.global internal constant @str3("Invalid number of pairs: %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Cannot open %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("r\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Usage: ./NW.exe PATH_TO_SEQX PATH_TO_SEQY NUM_OF_PAIRS\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?xmemref<?xi32>>, %arg1: memref<?xmemref<?xi32>>, %arg2: memref<?xmemref<?xmemref<?xi32>>>, %arg3: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c7_i32 = arith.constant 7 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = arith.index_cast %arg3 : i32 to index
    affine.for %arg4 = 0 to %0 {
      affine.for %arg5 = 0 to 513 {
        %1 = arith.index_cast %arg5 : index to i32
        %2 = affine.load %arg2[%arg5] : memref<?xmemref<?xmemref<?xi32>>>
        %3 = affine.load %2[0] : memref<?xmemref<?xi32>>
        %4 = arith.subi %c0_i32, %1 : i32
        affine.store %4, %3[%arg4] : memref<?xi32>
        %5 = affine.load %arg2[0] : memref<?xmemref<?xmemref<?xi32>>>
        %6 = affine.load %5[%arg5] : memref<?xmemref<?xi32>>
        affine.store %4, %6[%arg4] : memref<?xi32>
      }
    }
    affine.for %arg4 = 0 to %0 {
      affine.for %arg5 = 1 to 513 {
        affine.for %arg6 = 1 to 513 {
          %1 = affine.load %arg2[%arg5 - 1] : memref<?xmemref<?xmemref<?xi32>>>
          %2 = affine.load %1[%arg6] : memref<?xmemref<?xi32>>
          %3 = affine.load %2[%arg4] : memref<?xi32>
          %4 = arith.addi %3, %c-5_i32 : i32
          %5 = affine.load %arg2[%arg5] : memref<?xmemref<?xmemref<?xi32>>>
          %6 = affine.load %5[%arg6 - 1] : memref<?xmemref<?xi32>>
          %7 = affine.load %6[%arg4] : memref<?xi32>
          %8 = arith.addi %7, %c-5_i32 : i32
          %9 = affine.load %1[%arg6 - 1] : memref<?xmemref<?xi32>>
          %10 = affine.load %9[%arg4] : memref<?xi32>
          %11 = affine.load %arg0[%arg5 - 1] : memref<?xmemref<?xi32>>
          %12 = affine.load %11[%arg4] : memref<?xi32>
          %13 = affine.load %arg1[%arg5 - 1] : memref<?xmemref<?xi32>>
          %14 = affine.load %13[%arg4] : memref<?xi32>
          %15 = arith.cmpi eq, %12, %14 : i32
          %16 = arith.extui %15 : i1 to i32
          %17 = arith.muli %16, %c7_i32 : i32
          %18 = arith.subi %10, %17 : i32
          %19 = arith.addi %18, %c2_i32 : i32
          %20 = arith.cmpi slt, %4, %8 : i32
          %21 = arith.select %20, %8, %4 : i32
          %22 = arith.cmpi slt, %21, %19 : i32
          %23 = arith.select %22, %19, %21 : i32
          %24 = affine.load %5[%arg6] : memref<?xmemref<?xi32>>
          affine.store %23, %24[%arg4] : memref<?xi32>
        }
      }
    }
    return
  }
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c7_i32 = arith.constant 7 : i32
    %c2_i32 = arith.constant 2 : i32
    %c-5_i32 = arith.constant -5 : i32
    %c4 = arith.constant 4 : index
    %c4_i64 = arith.constant 4 : i64
    %c513_i64 = arith.constant 513 : i64
    %c512_i64 = arith.constant 512 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %c4_i32 = arith.constant 4 : i32
    %alloca = memref.alloca() : memref<1xi8>
    %0 = llvm.mlir.undef : i8
    affine.store %0, %alloca[0] : memref<1xi8>
    %alloca_0 = memref.alloca() : memref<1xi8>
    affine.store %0, %alloca_0[0] : memref<1xi8>
    %1 = arith.cmpi ne, %arg0, %c4_i32 : i32
    scf.if %1 {
      %46 = llvm.mlir.addressof @str0 : !llvm.ptr
      %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<56 x i8>
      %48 = llvm.call @printf(%47) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %2 = affine.load %arg1[1] : memref<?xmemref<?xi8>>
    %3 = llvm.mlir.addressof @str1 : !llvm.ptr
    %4 = "polygeist.pointer2memref"(%3) : (!llvm.ptr) -> memref<?xi8>
    %5 = call @fopen(%2, %4) : (memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %6 = llvm.mlir.zero : !llvm.ptr
    %7 = "polygeist.memref2pointer"(%5) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %8 = llvm.icmp "eq" %7, %6 : !llvm.ptr
    scf.if %8 {
      %46 = llvm.mlir.addressof @str2 : !llvm.ptr
      %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<16 x i8>
      %48 = affine.load %arg1[1] : memref<?xmemref<?xi8>>
      %49 = "polygeist.memref2pointer"(%48) : (memref<?xi8>) -> !llvm.ptr
      %50 = llvm.call @printf(%47, %49) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %9 = affine.load %arg1[2] : memref<?xmemref<?xi8>>
    %10 = call @fopen(%9, %4) : (memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %11 = "polygeist.memref2pointer"(%10) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %12 = llvm.icmp "eq" %11, %6 : !llvm.ptr
    scf.if %12 {
      %46 = llvm.mlir.addressof @str2 : !llvm.ptr
      %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<16 x i8>
      %48 = affine.load %arg1[2] : memref<?xmemref<?xi8>>
      %49 = "polygeist.memref2pointer"(%48) : (memref<?xi8>) -> !llvm.ptr
      %50 = llvm.call @printf(%47, %49) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %13 = affine.load %arg1[3] : memref<?xmemref<?xi8>>
    %14 = call @atoi(%13) : (memref<?xi8>) -> i32
    %15 = arith.cmpi eq, %14, %c0_i32 : i32
    scf.if %15 {
      %46 = llvm.mlir.addressof @str3 : !llvm.ptr
      %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<29 x i8>
      %48 = affine.load %arg1[3] : memref<?xmemref<?xi8>>
      %49 = "polygeist.memref2pointer"(%48) : (memref<?xi8>) -> !llvm.ptr
      %50 = llvm.call @printf(%47, %49) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %16 = "polygeist.typeSize"() <{source = memref<?xi32>}> : () -> index
    %17 = arith.index_cast %16 : index to i64
    %18 = arith.muli %17, %c512_i64 : i64
    %19 = arith.index_cast %18 : i64 to index
    %20 = arith.divui %19, %16 : index
    %alloc = memref.alloc(%20) : memref<?xmemref<?xi32>>
    %alloc_1 = memref.alloc(%20) : memref<?xmemref<?xi32>>
    %21 = arith.extsi %14 : i32 to i64
    %22 = arith.muli %21, %c4_i64 : i64
    %23 = arith.index_cast %22 : i64 to index
    %24 = arith.divui %23, %c4 : index
    affine.for %arg2 = 0 to 512 {
      %alloc_4 = memref.alloc(%24) : memref<?xi32>
      affine.store %alloc_4, %alloc[%arg2] : memref<?xmemref<?xi32>>
      %alloc_5 = memref.alloc(%24) : memref<?xi32>
      affine.store %alloc_5, %alloc_1[%arg2] : memref<?xmemref<?xi32>>
    }
    %25 = "polygeist.typeSize"() <{source = memref<?xmemref<?xi32>>}> : () -> index
    %26 = arith.index_cast %25 : index to i64
    %27 = arith.muli %26, %c513_i64 : i64
    %28 = arith.index_cast %27 : i64 to index
    %29 = arith.divui %28, %25 : index
    %alloc_2 = memref.alloc(%29) : memref<?xmemref<?xmemref<?xi32>>>
    %30 = arith.muli %17, %c513_i64 : i64
    %31 = arith.index_cast %30 : i64 to index
    %32 = arith.divui %31, %16 : index
    affine.for %arg2 = 0 to 513 {
      %alloc_4 = memref.alloc(%32) : memref<?xmemref<?xi32>>
      affine.store %alloc_4, %alloc_2[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 513 {
        %alloc_5 = memref.alloc(%24) : memref<?xi32>
        affine.store %alloc_5, %alloc_4[%arg3] : memref<?xmemref<?xi32>>
      }
    }
    %33 = arith.index_cast %14 : i32 to index
    %34 = llvm.mlir.addressof @str4 : !llvm.ptr
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %36 = "polygeist.memref2pointer"(%alloca_0) : (memref<1xi8>) -> !llvm.ptr
    %cast = memref.cast %alloca_0 : memref<1xi8> to memref<?xi8>
    affine.for %arg2 = 0 to %33 {
      affine.for %arg3 = 0 to 512 {
        %46 = llvm.call @__isoc99_fscanf(%7, %35, %36) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
        %47 = affine.load %alloc[%arg3] : memref<?xmemref<?xi32>>
        %48 = func.call @atoi(%cast) : (memref<?xi8>) -> i32
        affine.store %48, %47[%arg2] : memref<?xi32>
      }
    }
    %37 = "polygeist.memref2pointer"(%alloca) : (memref<1xi8>) -> !llvm.ptr
    %cast_3 = memref.cast %alloca : memref<1xi8> to memref<?xi8>
    affine.for %arg2 = 0 to %33 {
      affine.for %arg3 = 0 to 512 {
        %46 = llvm.call @__isoc99_fscanf(%11, %35, %37) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
        %47 = affine.load %alloc_1[%arg3] : memref<?xmemref<?xi32>>
        %48 = func.call @atoi(%cast_3) : (memref<?xi8>) -> i32
        affine.store %48, %47[%arg2] : memref<?xi32>
      }
    }
    %38 = llvm.mlir.addressof @str5 : !llvm.ptr
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<18 x i8>
    %40 = llvm.call @printf(%39) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    affine.for %arg2 = 0 to %33 {
      %46 = affine.load %alloc_2[0] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 513 {
        %47 = arith.index_cast %arg3 : index to i32
        %48 = affine.load %alloc_2[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %49 = affine.load %48[0] : memref<?xmemref<?xi32>>
        %50 = arith.subi %c0_i32, %47 : i32
        affine.store %50, %49[%arg2] : memref<?xi32>
        %51 = affine.load %46[%arg3] : memref<?xmemref<?xi32>>
        affine.store %50, %51[%arg2] : memref<?xi32>
      }
    }
    affine.for %arg2 = 0 to %33 {
      affine.for %arg3 = 1 to 513 {
        %46 = affine.load %alloc_2[%arg3 - 1] : memref<?xmemref<?xmemref<?xi32>>>
        %47 = affine.load %alloc_2[%arg3] : memref<?xmemref<?xmemref<?xi32>>>
        %48 = affine.load %alloc[%arg3 - 1] : memref<?xmemref<?xi32>>
        %49 = affine.load %alloc_1[%arg3 - 1] : memref<?xmemref<?xi32>>
        affine.for %arg4 = 1 to 513 {
          %50 = affine.load %46[%arg4] : memref<?xmemref<?xi32>>
          %51 = affine.load %50[%arg2] : memref<?xi32>
          %52 = arith.addi %51, %c-5_i32 : i32
          %53 = affine.load %47[%arg4 - 1] : memref<?xmemref<?xi32>>
          %54 = affine.load %53[%arg2] : memref<?xi32>
          %55 = arith.addi %54, %c-5_i32 : i32
          %56 = affine.load %46[%arg4 - 1] : memref<?xmemref<?xi32>>
          %57 = affine.load %56[%arg2] : memref<?xi32>
          %58 = affine.load %48[%arg2] : memref<?xi32>
          %59 = affine.load %49[%arg2] : memref<?xi32>
          %60 = arith.cmpi eq, %58, %59 : i32
          %61 = arith.extui %60 : i1 to i32
          %62 = arith.muli %61, %c7_i32 : i32
          %63 = arith.subi %57, %62 : i32
          %64 = arith.addi %63, %c2_i32 : i32
          %65 = arith.cmpi slt, %52, %55 : i32
          %66 = arith.select %65, %55, %52 : i32
          %67 = arith.cmpi slt, %66, %64 : i32
          %68 = arith.select %67, %64, %66 : i32
          %69 = affine.load %47[%arg4] : memref<?xmemref<?xi32>>
          affine.store %68, %69[%arg2] : memref<?xi32>
        }
      }
    }
    %41 = llvm.mlir.addressof @str6 : !llvm.ptr
    %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %43 = llvm.call @printf(%42) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    affine.for %arg2 = 0 to 512 {
      %46 = affine.load %alloc[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %46 : memref<?xi32>
      %47 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %47 : memref<?xi32>
    }
    memref.dealloc %alloc : memref<?xmemref<?xi32>>
    memref.dealloc %alloc_1 : memref<?xmemref<?xi32>>
    affine.for %arg2 = 0 to 512 {
      %46 = affine.load %alloc_2[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 512 {
        %47 = affine.load %46[%arg3] : memref<?xmemref<?xi32>>
        memref.dealloc %47 : memref<?xi32>
      }
      memref.dealloc %46 : memref<?xmemref<?xi32>>
    }
    memref.dealloc %alloc_2 : memref<?xmemref<?xmemref<?xi32>>>
    %44 = call @fclose(%5) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i32
    %45 = call @fclose(%10) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i32
    return %c0_i32 : i32
  }
  func.func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fopen(memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fclose(memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
