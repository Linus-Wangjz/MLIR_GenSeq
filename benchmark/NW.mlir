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
        %2 = arith.index_cast %arg5 : index to i32
        %3 = affine.load %arg2[%arg5] : memref<?xmemref<?xmemref<?xi32>>>
        %4 = affine.load %3[0] : memref<?xmemref<?xi32>>
        %5 = arith.subi %c0_i32, %2 : i32
        affine.store %5, %4[%arg4] : memref<?xi32>
        %6 = affine.load %arg2[0] : memref<?xmemref<?xmemref<?xi32>>>
        %7 = affine.load %6[%arg5] : memref<?xmemref<?xi32>>
        affine.store %5, %7[%arg4] : memref<?xi32>
      }
    }
    %1 = arith.index_cast %arg3 : i32 to index
    affine.for %arg4 = 0 to %1 {
      affine.for %arg5 = 1 to 513 {
        affine.for %arg6 = 1 to 513 {
          %2 = affine.load %arg2[%arg5 - 1] : memref<?xmemref<?xmemref<?xi32>>>
          %3 = affine.load %2[%arg6] : memref<?xmemref<?xi32>>
          %4 = affine.load %3[%arg4] : memref<?xi32>
          %5 = arith.addi %4, %c-5_i32 : i32
          %6 = affine.load %arg2[%arg5] : memref<?xmemref<?xmemref<?xi32>>>
          %7 = affine.load %6[%arg6 - 1] : memref<?xmemref<?xi32>>
          %8 = affine.load %7[%arg4] : memref<?xi32>
          %9 = arith.addi %8, %c-5_i32 : i32
          %10 = affine.load %2[%arg6 - 1] : memref<?xmemref<?xi32>>
          %11 = affine.load %10[%arg4] : memref<?xi32>
          %12 = affine.load %arg0[%arg5 - 1] : memref<?xmemref<?xi32>>
          %13 = affine.load %12[%arg4] : memref<?xi32>
          %14 = affine.load %arg1[%arg5 - 1] : memref<?xmemref<?xi32>>
          %15 = affine.load %14[%arg4] : memref<?xi32>
          %16 = arith.cmpi eq, %13, %15 : i32
          %17 = arith.extui %16 : i1 to i32
          %18 = arith.muli %17, %c7_i32 : i32
          %19 = arith.subi %11, %18 : i32
          %20 = arith.addi %19, %c2_i32 : i32
          %21 = arith.cmpi slt, %5, %9 : i32
          %22 = arith.select %21, %9, %5 : i32
          %23 = arith.cmpi slt, %22, %20 : i32
          %24 = arith.select %23, %20, %22 : i32
          %25 = affine.load %6[%arg6] : memref<?xmemref<?xi32>>
          affine.store %24, %25[%arg4] : memref<?xi32>
        }
      }
    }
    return
  }
  func.func @main(%arg0: i32, %arg1: memref<?xmemref<?xi8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %true = arith.constant true
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
      %65 = llvm.mlir.addressof @str0 : !llvm.ptr
      %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<56 x i8>
      %67 = llvm.call @printf(%66) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
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
      %65 = llvm.mlir.addressof @str2 : !llvm.ptr
      %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<16 x i8>
      %67 = affine.load %arg1[1] : memref<?xmemref<?xi8>>
      %68 = "polygeist.memref2pointer"(%67) : (memref<?xi8>) -> !llvm.ptr
      %69 = llvm.call @printf(%66, %68) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %9 = affine.load %arg1[2] : memref<?xmemref<?xi8>>
    %10 = llvm.mlir.addressof @str1 : !llvm.ptr
    %11 = "polygeist.pointer2memref"(%10) : (!llvm.ptr) -> memref<?xi8>
    %12 = call @fopen(%9, %11) : (memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>
    %13 = llvm.mlir.zero : !llvm.ptr
    %14 = "polygeist.memref2pointer"(%12) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %15 = llvm.icmp "eq" %14, %13 : !llvm.ptr
    scf.if %15 {
      %65 = llvm.mlir.addressof @str2 : !llvm.ptr
      %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<16 x i8>
      %67 = affine.load %arg1[2] : memref<?xmemref<?xi8>>
      %68 = "polygeist.memref2pointer"(%67) : (memref<?xi8>) -> !llvm.ptr
      %69 = llvm.call @printf(%66, %68) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %16 = affine.load %arg1[3] : memref<?xmemref<?xi8>>
    %17 = call @atoi(%16) : (memref<?xi8>) -> i32
    %18 = arith.cmpi eq, %17, %c0_i32 : i32
    scf.if %18 {
      %65 = llvm.mlir.addressof @str3 : !llvm.ptr
      %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<29 x i8>
      %67 = affine.load %arg1[3] : memref<?xmemref<?xi8>>
      %68 = "polygeist.memref2pointer"(%67) : (memref<?xi8>) -> !llvm.ptr
      %69 = llvm.call @printf(%66, %68) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, !llvm.ptr) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %19 = "polygeist.typeSize"() <{source = memref<?xi32>}> : () -> index
    %20 = arith.index_cast %19 : index to i64
    %21 = arith.muli %20, %c512_i64 : i64
    %22 = arith.index_cast %21 : i64 to index
    %23 = arith.divui %22, %19 : index
    %alloc = memref.alloc(%23) : memref<?xmemref<?xi32>>
    %24 = "polygeist.typeSize"() <{source = memref<?xi32>}> : () -> index
    %25 = arith.index_cast %24 : index to i64
    %26 = arith.muli %25, %c512_i64 : i64
    %27 = arith.index_cast %26 : i64 to index
    %28 = arith.divui %27, %24 : index
    %alloc_1 = memref.alloc(%28) : memref<?xmemref<?xi32>>
    %29 = arith.extsi %17 : i32 to i64
    %30 = arith.muli %29, %c4_i64 : i64
    %31 = arith.index_cast %30 : i64 to index
    %32 = arith.divui %31, %c4 : index
    affine.for %arg2 = 0 to 512 {
      %alloc_4 = memref.alloc(%32) : memref<?xi32>
      affine.store %alloc_4, %alloc[%arg2] : memref<?xmemref<?xi32>>
      %alloc_5 = memref.alloc(%32) : memref<?xi32>
      affine.store %alloc_5, %alloc_1[%arg2] : memref<?xmemref<?xi32>>
    }
    %33 = "polygeist.typeSize"() <{source = memref<?xmemref<?xi32>>}> : () -> index
    %34 = arith.index_cast %33 : index to i64
    %35 = arith.muli %34, %c513_i64 : i64
    %36 = arith.index_cast %35 : i64 to index
    %37 = arith.divui %36, %33 : index
    %alloc_2 = memref.alloc(%37) : memref<?xmemref<?xmemref<?xi32>>>
    %38 = "polygeist.typeSize"() <{source = memref<?xi32>}> : () -> index
    %39 = arith.index_cast %38 : index to i64
    %40 = arith.muli %39, %c513_i64 : i64
    %41 = arith.index_cast %40 : i64 to index
    %42 = arith.extsi %17 : i32 to i64
    %43 = arith.muli %42, %c4_i64 : i64
    %44 = arith.index_cast %43 : i64 to index
    %45 = arith.divui %44, %c4 : index
    %46 = arith.divui %41, %38 : index
    affine.for %arg2 = 0 to 513 {
      %alloc_4 = memref.alloc(%46) : memref<?xmemref<?xi32>>
      affine.store %alloc_4, %alloc_2[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      affine.for %arg3 = 0 to 513 {
        %65 = affine.load %alloc_2[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
        %alloc_5 = memref.alloc(%45) : memref<?xi32>
        affine.store %alloc_5, %65[%arg3] : memref<?xmemref<?xi32>>
      }
    }
    %47 = arith.index_cast %17 : i32 to index
    %48 = "polygeist.memref2pointer"(%5) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %49 = llvm.mlir.addressof @str4 : !llvm.ptr
    %50 = llvm.getelementptr %49[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %51 = "polygeist.memref2pointer"(%alloca_0) : (memref<1xi8>) -> !llvm.ptr
    %cast = memref.cast %alloca_0 : memref<1xi8> to memref<?xi8>
    affine.for %arg2 = 0 to %47 {
      affine.for %arg3 = 0 to 512 {
        %65 = llvm.call @__isoc99_fscanf(%48, %50, %51) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
        %66 = affine.load %alloc[%arg3] : memref<?xmemref<?xi32>>
        %67 = func.call @atoi(%cast) : (memref<?xi8>) -> i32
        affine.store %67, %66[%arg2] : memref<?xi32>
      }
    }
    %52 = arith.index_cast %17 : i32 to index
    %53 = "polygeist.memref2pointer"(%12) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> !llvm.ptr
    %54 = llvm.mlir.addressof @str4 : !llvm.ptr
    %55 = llvm.getelementptr %54[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<3 x i8>
    %56 = "polygeist.memref2pointer"(%alloca) : (memref<1xi8>) -> !llvm.ptr
    %cast_3 = memref.cast %alloca : memref<1xi8> to memref<?xi8>
    affine.for %arg2 = 0 to %52 {
      affine.for %arg3 = 0 to 512 {
        %65 = llvm.call @__isoc99_fscanf(%53, %55, %56) vararg(!llvm.func<i32 (ptr, ptr, ...)>) : (!llvm.ptr, !llvm.ptr, !llvm.ptr) -> i32
        %66 = affine.load %alloc_1[%arg3] : memref<?xmemref<?xi32>>
        %67 = func.call @atoi(%cast_3) : (memref<?xi8>) -> i32
        affine.store %67, %66[%arg2] : memref<?xi32>
      }
    }
    %57 = llvm.mlir.addressof @str5 : !llvm.ptr
    %58 = llvm.getelementptr %57[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<18 x i8>
    %59 = llvm.call @printf(%58) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    call @Needleman_Wunsch(%alloc, %alloc_1, %alloc_2, %17) : (memref<?xmemref<?xi32>>, memref<?xmemref<?xi32>>, memref<?xmemref<?xmemref<?xi32>>>, i32) -> ()
    %60 = llvm.mlir.addressof @str6 : !llvm.ptr
    %61 = llvm.getelementptr %60[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %62 = llvm.call @printf(%61) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    affine.for %arg2 = 0 to 512 {
      %65 = affine.load %alloc[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %65 : memref<?xi32>
      %66 = affine.load %alloc_1[%arg2] : memref<?xmemref<?xi32>>
      memref.dealloc %66 : memref<?xi32>
    }
    memref.dealloc %alloc : memref<?xmemref<?xi32>>
    memref.dealloc %alloc_1 : memref<?xmemref<?xi32>>
    affine.for %arg2 = 0 to 512 {
      scf.if %true {
        %66 = affine.load %alloc_2[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
        affine.for %arg3 = 0 to 512 {
          %67 = affine.load %66[%arg3] : memref<?xmemref<?xi32>>
          memref.dealloc %67 : memref<?xi32>
        }
      }
      %65 = affine.load %alloc_2[%arg2] : memref<?xmemref<?xmemref<?xi32>>>
      memref.dealloc %65 : memref<?xmemref<?xi32>>
    }
    memref.dealloc %alloc_2 : memref<?xmemref<?xmemref<?xi32>>>
    %63 = call @fclose(%5) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i32
    %64 = call @fclose(%12) : (memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i32
    return %c0_i32 : i32
  }
  func.func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fopen(memref<?xi8>, memref<?xi8>) -> memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @atoi(memref<?xi8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @fclose(memref<?x!llvm.struct<(i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, array<1 x i8>, ptr, i64, ptr, ptr, ptr, ptr, i64, i32, array<20 x i8>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
}
