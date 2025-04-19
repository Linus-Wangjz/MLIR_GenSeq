module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str0("Success!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.func @Needleman_Wunsch(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr) {
    %0 = llvm.mlir.constant(-1 : index) : i64
    %1 = llvm.mlir.constant(51 : index) : i64
    %2 = llvm.mlir.constant(-5 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(512 : index) : i64
    %7 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%5 : i64)
  ^bb1(%8: i64):  // 2 preds: ^bb0, ^bb5
    %9 = llvm.icmp "slt" %8, %6 : i64
    llvm.cond_br %9, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%5 : i64)
  ^bb3(%10: i64):  // 2 preds: ^bb2, ^bb4
    %11 = llvm.icmp "slt" %10, %1 : i64
    llvm.cond_br %11, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %12 = llvm.trunc %10 : i64 to i32
    %13 = llvm.sub %4, %12  : i32
    %14 = llvm.getelementptr %arg2[%8, %10, 0] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    llvm.store %13, %14 : i32, !llvm.ptr
    %15 = llvm.getelementptr %arg2[%8, 0, %10] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    llvm.store %13, %15 : i32, !llvm.ptr
    %16 = llvm.add %10, %7  : i64
    llvm.br ^bb3(%16 : i64)
  ^bb5:  // pred: ^bb3
    %17 = llvm.add %8, %7  : i64
    llvm.br ^bb1(%17 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%5 : i64)
  ^bb7(%18: i64):  // 2 preds: ^bb6, ^bb17
    %19 = llvm.icmp "slt" %18, %6 : i64
    llvm.cond_br %19, ^bb8, ^bb18
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%7 : i64)
  ^bb9(%20: i64):  // 2 preds: ^bb8, ^bb16
    %21 = llvm.icmp "slt" %20, %1 : i64
    llvm.cond_br %21, ^bb10, ^bb17
  ^bb10:  // pred: ^bb9
    llvm.br ^bb11(%7 : i64)
  ^bb11(%22: i64):  // 2 preds: ^bb10, ^bb15
    %23 = llvm.icmp "slt" %22, %1 : i64
    llvm.cond_br %23, ^bb12, ^bb16
  ^bb12:  // pred: ^bb11
    %24 = llvm.add %20, %0  : i64
    %25 = llvm.getelementptr %arg2[%18, %24, %22] : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    %26 = llvm.load %25 : !llvm.ptr -> i32
    %27 = llvm.add %26, %2  : i32
    %28 = llvm.add %22, %0  : i64
    %29 = llvm.getelementptr %arg2[%18, %20, %28] : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    %30 = llvm.load %29 : !llvm.ptr -> i32
    %31 = llvm.add %30, %2  : i32
    %32 = llvm.add %20, %0  : i64
    %33 = llvm.add %22, %0  : i64
    %34 = llvm.getelementptr %arg2[%18, %32, %33] : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    %35 = llvm.load %34 : !llvm.ptr -> i32
    %36 = llvm.add %20, %0  : i64
    %37 = llvm.getelementptr %arg0[%18, %36] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<50 x i32>
    %38 = llvm.load %37 : !llvm.ptr -> i32
    %39 = llvm.add %20, %0  : i64
    %40 = llvm.getelementptr %arg1[%18, %39] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<50 x i32>
    %41 = llvm.load %40 : !llvm.ptr -> i32
    %42 = llvm.icmp "eq" %38, %41 : i32
    llvm.cond_br %42, ^bb13(%3 : i32), ^bb13(%2 : i32)
  ^bb13(%43: i32):  // 2 preds: ^bb12, ^bb12
    %44 = llvm.add %35, %43  : i32
    llvm.br ^bb14(%44 : i32)
  ^bb14(%45: i32):  // pred: ^bb13
    llvm.br ^bb15
  ^bb15:  // pred: ^bb14
    %46 = llvm.icmp "slt" %27, %31 : i32
    %47 = llvm.select %46, %31, %27 : i1, i32
    %48 = llvm.icmp "slt" %47, %45 : i32
    %49 = llvm.select %48, %45, %47 : i1, i32
    %50 = llvm.getelementptr %arg2[%18, %20, %22] : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    llvm.store %49, %50 : i32, !llvm.ptr
    %51 = llvm.add %22, %7  : i64
    llvm.br ^bb11(%51 : i64)
  ^bb16:  // pred: ^bb11
    %52 = llvm.add %20, %7  : i64
    llvm.br ^bb9(%52 : i64)
  ^bb17:  // pred: ^bb9
    %53 = llvm.add %18, %7  : i64
    llvm.br ^bb7(%53 : i64)
  ^bb18:  // pred: ^bb7
    llvm.return
  }
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(51 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(512 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(-5 : i32) : i32
    %5 = llvm.mlir.constant(-1 : index) : i64
    %6 = llvm.mlir.constant(-1 : i32) : i32
    %7 = llvm.mlir.constant(2 : i32) : i32
    %8 = llvm.mlir.constant(4 : i32) : i32
    %9 = llvm.mlir.constant(3 : i32) : i32
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.alloca %2 x !llvm.array<51 x array<51 x i32>> : (i64) -> !llvm.ptr
    llvm.br ^bb1(%3 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb5
    %13 = llvm.icmp "slt" %12, %2 : i64
    llvm.cond_br %13, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%3 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %0 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.trunc %14 : i64 to i32
    %17 = llvm.sub %10, %16  : i32
    %18 = llvm.getelementptr %11[%12, %14, 0] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    llvm.store %17, %18 : i32, !llvm.ptr
    %19 = llvm.getelementptr %11[%12, 0, %14] : (!llvm.ptr, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    llvm.store %17, %19 : i32, !llvm.ptr
    %20 = llvm.add %14, %1  : i64
    llvm.br ^bb3(%20 : i64)
  ^bb5:  // pred: ^bb3
    %21 = llvm.add %12, %1  : i64
    llvm.br ^bb1(%21 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%3 : i64)
  ^bb7(%22: i64):  // 2 preds: ^bb6, ^bb17
    %23 = llvm.icmp "slt" %22, %2 : i64
    llvm.cond_br %23, ^bb8, ^bb18
  ^bb8:  // pred: ^bb7
    %24 = llvm.trunc %22 : i64 to i32
    %25 = llvm.mul %24, %9  : i32
    %26 = llvm.add %24, %6  : i32
    llvm.br ^bb9(%1 : i64)
  ^bb9(%27: i64):  // 2 preds: ^bb8, ^bb16
    %28 = llvm.icmp "slt" %27, %0 : i64
    llvm.cond_br %28, ^bb10, ^bb17
  ^bb10:  // pred: ^bb9
    %29 = llvm.add %27, %5  : i64
    %30 = llvm.trunc %29 : i64 to i32
    %31 = llvm.mul %24, %30  : i32
    %32 = llvm.add %31, %25  : i32
    %33 = llvm.add %32, %30  : i32
    %34 = llvm.srem %33, %8  : i32
    %35 = llvm.mul %26, %30  : i32
    %36 = llvm.mul %35, %9  : i32
    %37 = llvm.add %36, %24  : i32
    %38 = llvm.mul %30, %7  : i32
    %39 = llvm.add %37, %38  : i32
    %40 = llvm.srem %39, %8  : i32
    %41 = llvm.icmp "eq" %34, %40 : i32
    llvm.br ^bb11(%1 : i64)
  ^bb11(%42: i64):  // 2 preds: ^bb10, ^bb15
    %43 = llvm.icmp "slt" %42, %0 : i64
    llvm.cond_br %43, ^bb12, ^bb16
  ^bb12:  // pred: ^bb11
    %44 = llvm.add %27, %5  : i64
    %45 = llvm.getelementptr %11[%22, %44, %42] : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    %46 = llvm.load %45 : !llvm.ptr -> i32
    %47 = llvm.add %46, %4  : i32
    %48 = llvm.add %42, %5  : i64
    %49 = llvm.getelementptr %11[%22, %27, %48] : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    %50 = llvm.load %49 : !llvm.ptr -> i32
    %51 = llvm.add %50, %4  : i32
    %52 = llvm.add %27, %5  : i64
    %53 = llvm.add %42, %5  : i64
    %54 = llvm.getelementptr %11[%22, %52, %53] : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    %55 = llvm.load %54 : !llvm.ptr -> i32
    llvm.cond_br %41, ^bb13(%7 : i32), ^bb13(%4 : i32)
  ^bb13(%56: i32):  // 2 preds: ^bb12, ^bb12
    %57 = llvm.add %55, %56  : i32
    llvm.br ^bb14(%57 : i32)
  ^bb14(%58: i32):  // pred: ^bb13
    llvm.br ^bb15
  ^bb15:  // pred: ^bb14
    %59 = llvm.icmp "slt" %47, %51 : i32
    %60 = llvm.select %59, %51, %47 : i1, i32
    %61 = llvm.icmp "slt" %60, %58 : i32
    %62 = llvm.select %61, %58, %60 : i1, i32
    %63 = llvm.getelementptr %11[%22, %27, %42] : (!llvm.ptr, i64, i64, i64) -> !llvm.ptr, !llvm.array<51 x array<51 x i32>>
    llvm.store %62, %63 : i32, !llvm.ptr
    %64 = llvm.add %42, %1  : i64
    llvm.br ^bb11(%64 : i64)
  ^bb16:  // pred: ^bb11
    %65 = llvm.add %27, %1  : i64
    llvm.br ^bb9(%65 : i64)
  ^bb17:  // pred: ^bb9
    %66 = llvm.add %22, %1  : i64
    llvm.br ^bb7(%66 : i64)
  ^bb18:  // pred: ^bb7
    %67 = llvm.mlir.addressof @str0 : !llvm.ptr
    %68 = llvm.getelementptr %67[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %69 = llvm.call @printf(%68) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return %10 : i32
  }
}

