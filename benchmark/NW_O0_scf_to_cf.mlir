module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("Success!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  func.func @Needleman_Wunsch(%arg0: memref<?x50xi32>, %arg1: memref<?x50xi32>, %arg2: memref<?x51x51xi32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-5_i32 = arith.constant -5 : i32
    %c2_i32 = arith.constant 2 : i32
    %c7_i32 = arith.constant 7 : i32
    %c0_i32 = arith.constant 0 : i32
    %0 = llvm.mlir.undef : i32
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%1: index):  // 2 preds: ^bb0, ^bb5
    %2 = arith.cmpi slt, %1, %c512 : index
    cf.cond_br %2, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %c0_0 = arith.constant 0 : index
    %c51 = arith.constant 51 : index
    %c1_1 = arith.constant 1 : index
    cf.br ^bb3(%c0_0 : index)
  ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
    %4 = arith.cmpi slt, %3, %c51 : index
    cf.cond_br %4, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %5 = arith.index_cast %3 : index to i32
    %6 = arith.subi %c0_i32, %5 : i32
    %c0_2 = arith.constant 0 : index
    memref.store %6, %arg2[%1, %3, %c0_2] : memref<?x51x51xi32>
    %c0_3 = arith.constant 0 : index
    memref.store %6, %arg2[%1, %c0_3, %3] : memref<?x51x51xi32>
    %7 = arith.addi %3, %c1_1 : index
    cf.br ^bb3(%7 : index)
  ^bb5:  // pred: ^bb3
    %8 = arith.addi %1, %c1 : index
    cf.br ^bb1(%8 : index)
  ^bb6:  // pred: ^bb1
    %c0_4 = arith.constant 0 : index
    %c512_5 = arith.constant 512 : index
    %c1_6 = arith.constant 1 : index
    cf.br ^bb7(%c0_4, %0 : index, i32)
  ^bb7(%9: index, %10: i32):  // 2 preds: ^bb6, ^bb14
    %11 = arith.cmpi slt, %9, %c512_5 : index
    cf.cond_br %11, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    %c1_7 = arith.constant 1 : index
    %c51_8 = arith.constant 51 : index
    %c1_9 = arith.constant 1 : index
    cf.br ^bb9(%c1_7, %10 : index, i32)
  ^bb9(%12: index, %13: i32):  // 2 preds: ^bb8, ^bb13
    %14 = arith.cmpi slt, %12, %c51_8 : index
    cf.cond_br %14, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %c1_10 = arith.constant 1 : index
    %c51_11 = arith.constant 51 : index
    %c1_12 = arith.constant 1 : index
    cf.br ^bb11(%c1_10, %13 : index, i32)
  ^bb11(%15: index, %16: i32):  // 2 preds: ^bb10, ^bb12
    %17 = arith.cmpi slt, %15, %c51_11 : index
    cf.cond_br %17, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %c-1 = arith.constant -1 : index
    %18 = arith.addi %15, %c-1 : index
    %19 = memref.load %arg2[%9, %12, %18] : memref<?x51x51xi32>
    %20 = arith.addi %19, %c-5_i32 : i32
    %c-1_13 = arith.constant -1 : index
    %21 = arith.addi %12, %c-1_13 : index
    %c-1_14 = arith.constant -1 : index
    %22 = arith.addi %15, %c-1_14 : index
    %23 = memref.load %arg2[%9, %21, %22] : memref<?x51x51xi32>
    %c-1_15 = arith.constant -1 : index
    %24 = arith.addi %12, %c-1_15 : index
    %25 = memref.load %arg0[%9, %24] : memref<?x50xi32>
    %c-1_16 = arith.constant -1 : index
    %26 = arith.addi %12, %c-1_16 : index
    %27 = memref.load %arg1[%9, %26] : memref<?x50xi32>
    %28 = arith.cmpi eq, %25, %27 : i32
    %29 = arith.extui %28 : i1 to i32
    %30 = arith.muli %29, %c7_i32 : i32
    %31 = arith.subi %23, %30 : i32
    %32 = arith.addi %31, %c2_i32 : i32
    %33 = arith.cmpi slt, %16, %20 : i32
    %34 = arith.select %33, %20, %16 : i32
    %35 = arith.cmpi slt, %34, %32 : i32
    %36 = arith.select %35, %32, %34 : i32
    memref.store %36, %arg2[%9, %12, %15] : memref<?x51x51xi32>
    %37 = arith.addi %15, %c1_12 : index
    cf.br ^bb11(%37, %36 : index, i32)
  ^bb13:  // pred: ^bb11
    %38 = arith.addi %12, %c1_9 : index
    cf.br ^bb9(%38, %16 : index, i32)
  ^bb14:  // pred: ^bb9
    %39 = arith.addi %9, %c1_6 : index
    cf.br ^bb7(%39, %13 : index, i32)
  ^bb15:  // pred: ^bb7
    return
  }
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c-1_i32 = arith.constant -1 : i32
    %c2_i32 = arith.constant 2 : i32
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<512x51x51xi32>
    %alloca_0 = memref.alloca() : memref<512x50xi32>
    %alloca_1 = memref.alloca() : memref<512x50xi32>
    %c0 = arith.constant 0 : index
    %c512 = arith.constant 512 : index
    %c1 = arith.constant 1 : index
    cf.br ^bb1(%c0 : index)
  ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
    %1 = arith.cmpi slt, %0, %c512 : index
    cf.cond_br %1, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %2 = arith.index_cast %0 : index to i32
    %3 = arith.muli %2, %c3_i32 : i32
    %c0_2 = arith.constant 0 : index
    %c50 = arith.constant 50 : index
    %c1_3 = arith.constant 1 : index
    cf.br ^bb3(%c0_2 : index)
  ^bb3(%4: index):  // 2 preds: ^bb2, ^bb4
    %5 = arith.cmpi slt, %4, %c50 : index
    cf.cond_br %5, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %6 = arith.index_cast %4 : index to i32
    %7 = arith.muli %2, %6 : i32
    %8 = arith.addi %7, %3 : i32
    %9 = arith.addi %8, %6 : i32
    %10 = arith.remsi %9, %c4_i32 : i32
    memref.store %10, %alloca_1[%0, %4] : memref<512x50xi32>
    %11 = arith.addi %4, %c1_3 : index
    cf.br ^bb3(%11 : index)
  ^bb5:  // pred: ^bb3
    %12 = arith.addi %0, %c1 : index
    cf.br ^bb1(%12 : index)
  ^bb6:  // pred: ^bb1
    %c0_4 = arith.constant 0 : index
    %c512_5 = arith.constant 512 : index
    %c1_6 = arith.constant 1 : index
    cf.br ^bb7(%c0_4 : index)
  ^bb7(%13: index):  // 2 preds: ^bb6, ^bb11
    %14 = arith.cmpi slt, %13, %c512_5 : index
    cf.cond_br %14, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %15 = arith.index_cast %13 : index to i32
    %16 = arith.addi %15, %c-1_i32 : i32
    %c0_7 = arith.constant 0 : index
    %c50_8 = arith.constant 50 : index
    %c1_9 = arith.constant 1 : index
    cf.br ^bb9(%c0_7 : index)
  ^bb9(%17: index):  // 2 preds: ^bb8, ^bb10
    %18 = arith.cmpi slt, %17, %c50_8 : index
    cf.cond_br %18, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %19 = arith.index_cast %17 : index to i32
    %20 = arith.muli %16, %19 : i32
    %21 = arith.muli %20, %c3_i32 : i32
    %22 = arith.addi %21, %15 : i32
    %23 = arith.muli %19, %c2_i32 : i32
    %24 = arith.addi %22, %23 : i32
    %25 = arith.remsi %24, %c4_i32 : i32
    memref.store %25, %alloca_0[%13, %17] : memref<512x50xi32>
    %26 = arith.addi %17, %c1_9 : index
    cf.br ^bb9(%26 : index)
  ^bb11:  // pred: ^bb9
    %27 = arith.addi %13, %c1_6 : index
    cf.br ^bb7(%27 : index)
  ^bb12:  // pred: ^bb7
    %cast = memref.cast %alloca_1 : memref<512x50xi32> to memref<?x50xi32>
    %cast_10 = memref.cast %alloca_0 : memref<512x50xi32> to memref<?x50xi32>
    %cast_11 = memref.cast %alloca : memref<512x51x51xi32> to memref<?x51x51xi32>
    call @Needleman_Wunsch(%cast, %cast_10, %cast_11) : (memref<?x50xi32>, memref<?x50xi32>, memref<?x51x51xi32>) -> ()
    %28 = llvm.mlir.addressof @str0 : !llvm.ptr
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %30 = llvm.call @printf(%29) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    return %c0_i32 : i32
  }
}

