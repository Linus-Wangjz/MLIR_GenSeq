module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global internal constant @str4("Finished!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Time used on Needleman_Wunsch() function: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Test Case Generated!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Time used on calculation: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Time used on initialization: %f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.func @Needleman_Wunsch(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: !llvm.ptr) {
    %0 = llvm.mlir.constant(-1 : index) : i64
    %1 = llvm.mlir.constant(513 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(10240 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(-5 : i32) : i32
    %6 = llvm.mlir.constant(2 : i32) : i32
    %7 = llvm.mlir.constant(7 : i32) : i32
    %8 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %9 = llvm.mlir.constant(0 : i32) : i32
    %10 = llvm.call @clock() : () -> i64
    llvm.br ^bb1(%4 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb5
    %12 = llvm.icmp "slt" %11, %3 : i64
    llvm.cond_br %12, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%4 : i64)
  ^bb3(%13: i64):  // 2 preds: ^bb2, ^bb4
    %14 = llvm.icmp "slt" %13, %1 : i64
    llvm.cond_br %14, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %15 = llvm.trunc %13 : i64 to i32
    %16 = llvm.getelementptr %arg2[%13] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %17 = llvm.load %16 : !llvm.ptr -> !llvm.ptr
    %18 = llvm.load %17 : !llvm.ptr -> !llvm.ptr
    %19 = llvm.sub %9, %15  : i32
    %20 = llvm.getelementptr %18[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %19, %20 : i32, !llvm.ptr
    %21 = llvm.load %arg2 : !llvm.ptr -> !llvm.ptr
    %22 = llvm.getelementptr %21[%13] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
    %24 = llvm.getelementptr %23[%11] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %19, %24 : i32, !llvm.ptr
    %25 = llvm.add %13, %2  : i64
    llvm.br ^bb3(%25 : i64)
  ^bb5:  // pred: ^bb3
    %26 = llvm.add %11, %2  : i64
    llvm.br ^bb1(%26 : i64)
  ^bb6:  // pred: ^bb1
    %27 = llvm.call @clock() : () -> i64
    %28 = llvm.sub %27, %10  : i64
    %29 = llvm.sitofp %28 : i64 to f64
    %30 = llvm.fdiv %29, %8  : f64
    %31 = llvm.mlir.addressof @str0 : !llvm.ptr
    %32 = llvm.getelementptr %31[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %33 = llvm.call @printf(%32, %30) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %34 = llvm.call @clock() : () -> i64
    llvm.br ^bb7(%4 : i64)
  ^bb7(%35: i64):  // 2 preds: ^bb6, ^bb14
    %36 = llvm.icmp "slt" %35, %3 : i64
    llvm.cond_br %36, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%2 : i64)
  ^bb9(%37: i64):  // 2 preds: ^bb8, ^bb13
    %38 = llvm.icmp "slt" %37, %1 : i64
    llvm.cond_br %38, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    llvm.br ^bb11(%2 : i64)
  ^bb11(%39: i64):  // 2 preds: ^bb10, ^bb12
    %40 = llvm.icmp "slt" %39, %1 : i64
    llvm.cond_br %40, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %41 = llvm.add %37, %0  : i64
    %42 = llvm.getelementptr %arg2[%41] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %43 = llvm.load %42 : !llvm.ptr -> !llvm.ptr
    %44 = llvm.getelementptr %43[%39] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %45 = llvm.load %44 : !llvm.ptr -> !llvm.ptr
    %46 = llvm.getelementptr %45[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %47 = llvm.load %46 : !llvm.ptr -> i32
    %48 = llvm.add %47, %5  : i32
    %49 = llvm.getelementptr %arg2[%37] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %50 = llvm.load %49 : !llvm.ptr -> !llvm.ptr
    %51 = llvm.add %39, %0  : i64
    %52 = llvm.getelementptr %50[%51] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %53 = llvm.load %52 : !llvm.ptr -> !llvm.ptr
    %54 = llvm.getelementptr %53[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %55 = llvm.load %54 : !llvm.ptr -> i32
    %56 = llvm.add %55, %5  : i32
    %57 = llvm.add %39, %0  : i64
    %58 = llvm.getelementptr %43[%57] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %59 = llvm.load %58 : !llvm.ptr -> !llvm.ptr
    %60 = llvm.getelementptr %59[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %61 = llvm.load %60 : !llvm.ptr -> i32
    %62 = llvm.add %37, %0  : i64
    %63 = llvm.getelementptr %arg0[%62] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %64 = llvm.load %63 : !llvm.ptr -> !llvm.ptr
    %65 = llvm.getelementptr %64[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %66 = llvm.load %65 : !llvm.ptr -> i32
    %67 = llvm.add %37, %0  : i64
    %68 = llvm.getelementptr %arg1[%67] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %69 = llvm.load %68 : !llvm.ptr -> !llvm.ptr
    %70 = llvm.getelementptr %69[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %71 = llvm.load %70 : !llvm.ptr -> i32
    %72 = llvm.icmp "eq" %66, %71 : i32
    %73 = llvm.zext %72 : i1 to i32
    %74 = llvm.mul %73, %7  : i32
    %75 = llvm.sub %61, %74  : i32
    %76 = llvm.add %75, %6  : i32
    %77 = llvm.icmp "slt" %48, %56 : i32
    %78 = llvm.select %77, %56, %48 : i1, i32
    %79 = llvm.icmp "slt" %78, %76 : i32
    %80 = llvm.select %79, %76, %78 : i1, i32
    %81 = llvm.getelementptr %50[%39] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %82 = llvm.load %81 : !llvm.ptr -> !llvm.ptr
    %83 = llvm.getelementptr %82[%35] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %80, %83 : i32, !llvm.ptr
    %84 = llvm.add %39, %2  : i64
    llvm.br ^bb11(%84 : i64)
  ^bb13:  // pred: ^bb11
    %85 = llvm.add %37, %2  : i64
    llvm.br ^bb9(%85 : i64)
  ^bb14:  // pred: ^bb9
    %86 = llvm.add %35, %2  : i64
    llvm.br ^bb7(%86 : i64)
  ^bb15:  // pred: ^bb7
    %87 = llvm.call @clock() : () -> i64
    %88 = llvm.sub %87, %34  : i64
    %89 = llvm.sitofp %88 : i64 to f64
    %90 = llvm.fdiv %89, %8  : f64
    %91 = llvm.mlir.addressof @str1 : !llvm.ptr
    %92 = llvm.getelementptr %91[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %93 = llvm.call @printf(%92, %90) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    llvm.return
  }
  llvm.func @clock() -> i64 attributes {sym_visibility = "private"}
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr) -> i32 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(-1 : index) : i64
    %2 = llvm.mlir.constant(10240 : index) : i64
    %3 = llvm.mlir.constant(513 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(512 : index) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(7 : i32) : i32
    %8 = llvm.mlir.constant(2 : i32) : i32
    %9 = llvm.mlir.constant(-5 : i32) : i32
    %10 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %11 = llvm.mlir.constant(513 : i64) : i64
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.constant(512 : i64) : i64
    %14 = llvm.mlir.constant(8 : i64) : i64
    %15 = llvm.mul %14, %13  : i64
    %16 = llvm.udiv %15, %14  : i64
    %17 = llvm.mul %16, %14  : i64
    %18 = llvm.call @malloc(%17) : (i64) -> !llvm.ptr
    %19 = llvm.mul %16, %14  : i64
    %20 = llvm.call @malloc(%19) : (i64) -> !llvm.ptr
    llvm.br ^bb1(%6 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb2
    %22 = llvm.icmp "slt" %21, %5 : i64
    llvm.cond_br %22, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %23 = llvm.mul %0, %2  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.getelementptr %18[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %24, %25 : !llvm.ptr, !llvm.ptr
    %26 = llvm.mul %0, %2  : i64
    %27 = llvm.call @malloc(%26) : (i64) -> !llvm.ptr
    %28 = llvm.getelementptr %20[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %27, %28 : !llvm.ptr, !llvm.ptr
    %29 = llvm.add %21, %4  : i64
    llvm.br ^bb1(%29 : i64)
  ^bb3:  // pred: ^bb1
    %30 = llvm.mul %14, %11  : i64
    %31 = llvm.udiv %30, %14  : i64
    %32 = llvm.mul %31, %14  : i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr
    %34 = llvm.mul %14, %11  : i64
    %35 = llvm.udiv %34, %14  : i64
    llvm.br ^bb4(%6 : i64)
  ^bb4(%36: i64):  // 2 preds: ^bb3, ^bb8
    %37 = llvm.icmp "slt" %36, %3 : i64
    llvm.cond_br %37, ^bb5, ^bb9
  ^bb5:  // pred: ^bb4
    %38 = llvm.mul %35, %14  : i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr
    %40 = llvm.getelementptr %33[%36] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %39, %40 : !llvm.ptr, !llvm.ptr
    llvm.br ^bb6(%6 : i64)
  ^bb6(%41: i64):  // 2 preds: ^bb5, ^bb7
    %42 = llvm.icmp "slt" %41, %3 : i64
    llvm.cond_br %42, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %43 = llvm.mul %0, %2  : i64
    %44 = llvm.call @malloc(%43) : (i64) -> !llvm.ptr
    %45 = llvm.getelementptr %39[%41] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %44, %45 : !llvm.ptr, !llvm.ptr
    %46 = llvm.add %41, %4  : i64
    llvm.br ^bb6(%46 : i64)
  ^bb8:  // pred: ^bb6
    %47 = llvm.add %36, %4  : i64
    llvm.br ^bb4(%47 : i64)
  ^bb9:  // pred: ^bb4
    llvm.br ^bb10(%6 : i64)
  ^bb10(%48: i64):  // 2 preds: ^bb9, ^bb14
    %49 = llvm.icmp "slt" %48, %2 : i64
    llvm.cond_br %49, ^bb11, ^bb15
  ^bb11:  // pred: ^bb10
    llvm.br ^bb12(%6 : i64)
  ^bb12(%50: i64):  // 2 preds: ^bb11, ^bb13
    %51 = llvm.icmp "slt" %50, %5 : i64
    llvm.cond_br %51, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %52 = llvm.getelementptr %18[%50] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %53 = llvm.load %52 : !llvm.ptr -> !llvm.ptr
    %54 = llvm.call @rand() : () -> i32
    %55 = llvm.getelementptr %53[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %54, %55 : i32, !llvm.ptr
    %56 = llvm.getelementptr %20[%50] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %57 = llvm.load %56 : !llvm.ptr -> !llvm.ptr
    %58 = llvm.call @rand() : () -> i32
    %59 = llvm.getelementptr %57[%48] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %58, %59 : i32, !llvm.ptr
    %60 = llvm.add %50, %4  : i64
    llvm.br ^bb12(%60 : i64)
  ^bb14:  // pred: ^bb12
    %61 = llvm.add %48, %4  : i64
    llvm.br ^bb10(%61 : i64)
  ^bb15:  // pred: ^bb10
    %62 = llvm.mlir.addressof @str2 : !llvm.ptr
    %63 = llvm.getelementptr %62[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
    %64 = llvm.call @printf(%63) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %65 = llvm.call @clock() : () -> i64
    %66 = llvm.call @clock() : () -> i64
    llvm.br ^bb16(%6 : i64)
  ^bb16(%67: i64):  // 2 preds: ^bb15, ^bb20
    %68 = llvm.icmp "slt" %67, %2 : i64
    llvm.cond_br %68, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    %69 = llvm.load %33 : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb18(%6 : i64)
  ^bb18(%70: i64):  // 2 preds: ^bb17, ^bb19
    %71 = llvm.icmp "slt" %70, %3 : i64
    llvm.cond_br %71, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %72 = llvm.trunc %70 : i64 to i32
    %73 = llvm.getelementptr %33[%70] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %74 = llvm.load %73 : !llvm.ptr -> !llvm.ptr
    %75 = llvm.load %74 : !llvm.ptr -> !llvm.ptr
    %76 = llvm.sub %12, %72  : i32
    %77 = llvm.getelementptr %75[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %76, %77 : i32, !llvm.ptr
    %78 = llvm.getelementptr %69[%70] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %79 = llvm.load %78 : !llvm.ptr -> !llvm.ptr
    %80 = llvm.getelementptr %79[%67] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %76, %80 : i32, !llvm.ptr
    %81 = llvm.add %70, %4  : i64
    llvm.br ^bb18(%81 : i64)
  ^bb20:  // pred: ^bb18
    %82 = llvm.add %67, %4  : i64
    llvm.br ^bb16(%82 : i64)
  ^bb21:  // pred: ^bb16
    %83 = llvm.call @clock() : () -> i64
    %84 = llvm.sub %83, %66  : i64
    %85 = llvm.sitofp %84 : i64 to f64
    %86 = llvm.fdiv %85, %10  : f64
    %87 = llvm.mlir.addressof @str0 : !llvm.ptr
    %88 = llvm.getelementptr %87[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %89 = llvm.call @printf(%88, %86) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %90 = llvm.call @clock() : () -> i64
    llvm.br ^bb22(%6 : i64)
  ^bb22(%91: i64):  // 2 preds: ^bb21, ^bb29
    %92 = llvm.icmp "slt" %91, %2 : i64
    llvm.cond_br %92, ^bb23, ^bb30
  ^bb23:  // pred: ^bb22
    llvm.br ^bb24(%4 : i64)
  ^bb24(%93: i64):  // 2 preds: ^bb23, ^bb28
    %94 = llvm.icmp "slt" %93, %3 : i64
    llvm.cond_br %94, ^bb25, ^bb29
  ^bb25:  // pred: ^bb24
    %95 = llvm.add %93, %1  : i64
    %96 = llvm.getelementptr %33[%95] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %97 = llvm.load %96 : !llvm.ptr -> !llvm.ptr
    %98 = llvm.getelementptr %33[%93] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %99 = llvm.load %98 : !llvm.ptr -> !llvm.ptr
    %100 = llvm.add %93, %1  : i64
    %101 = llvm.getelementptr %18[%100] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %102 = llvm.load %101 : !llvm.ptr -> !llvm.ptr
    %103 = llvm.add %93, %1  : i64
    %104 = llvm.getelementptr %20[%103] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %105 = llvm.load %104 : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb26(%4 : i64)
  ^bb26(%106: i64):  // 2 preds: ^bb25, ^bb27
    %107 = llvm.icmp "slt" %106, %3 : i64
    llvm.cond_br %107, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %108 = llvm.getelementptr %97[%106] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %109 = llvm.load %108 : !llvm.ptr -> !llvm.ptr
    %110 = llvm.getelementptr %109[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %111 = llvm.load %110 : !llvm.ptr -> i32
    %112 = llvm.add %111, %9  : i32
    %113 = llvm.add %106, %1  : i64
    %114 = llvm.getelementptr %99[%113] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %115 = llvm.load %114 : !llvm.ptr -> !llvm.ptr
    %116 = llvm.getelementptr %115[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %117 = llvm.load %116 : !llvm.ptr -> i32
    %118 = llvm.add %117, %9  : i32
    %119 = llvm.add %106, %1  : i64
    %120 = llvm.getelementptr %97[%119] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %121 = llvm.load %120 : !llvm.ptr -> !llvm.ptr
    %122 = llvm.getelementptr %121[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %123 = llvm.load %122 : !llvm.ptr -> i32
    %124 = llvm.getelementptr %102[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %125 = llvm.load %124 : !llvm.ptr -> i32
    %126 = llvm.getelementptr %105[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %127 = llvm.load %126 : !llvm.ptr -> i32
    %128 = llvm.icmp "eq" %125, %127 : i32
    %129 = llvm.zext %128 : i1 to i32
    %130 = llvm.mul %129, %7  : i32
    %131 = llvm.sub %123, %130  : i32
    %132 = llvm.add %131, %8  : i32
    %133 = llvm.icmp "slt" %112, %118 : i32
    %134 = llvm.select %133, %118, %112 : i1, i32
    %135 = llvm.icmp "slt" %134, %132 : i32
    %136 = llvm.select %135, %132, %134 : i1, i32
    %137 = llvm.getelementptr %99[%106] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %138 = llvm.load %137 : !llvm.ptr -> !llvm.ptr
    %139 = llvm.getelementptr %138[%91] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %136, %139 : i32, !llvm.ptr
    %140 = llvm.add %106, %4  : i64
    llvm.br ^bb26(%140 : i64)
  ^bb28:  // pred: ^bb26
    %141 = llvm.add %93, %4  : i64
    llvm.br ^bb24(%141 : i64)
  ^bb29:  // pred: ^bb24
    %142 = llvm.add %91, %4  : i64
    llvm.br ^bb22(%142 : i64)
  ^bb30:  // pred: ^bb22
    %143 = llvm.call @clock() : () -> i64
    %144 = llvm.sub %143, %90  : i64
    %145 = llvm.sitofp %144 : i64 to f64
    %146 = llvm.fdiv %145, %10  : f64
    %147 = llvm.mlir.addressof @str1 : !llvm.ptr
    %148 = llvm.getelementptr %147[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %149 = llvm.call @printf(%148, %146) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %150 = llvm.call @clock() : () -> i64
    %151 = llvm.sub %150, %65  : i64
    %152 = llvm.sitofp %151 : i64 to f64
    %153 = llvm.fdiv %152, %10  : f64
    %154 = llvm.mlir.addressof @str3 : !llvm.ptr
    %155 = llvm.getelementptr %154[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<46 x i8>
    %156 = llvm.call @printf(%155, %153) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    llvm.br ^bb31(%6 : i64)
  ^bb31(%157: i64):  // 2 preds: ^bb30, ^bb32
    %158 = llvm.icmp "slt" %157, %5 : i64
    llvm.cond_br %158, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %159 = llvm.getelementptr %18[%157] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %160 = llvm.load %159 : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%160) : (!llvm.ptr) -> ()
    %161 = llvm.getelementptr %20[%157] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %162 = llvm.load %161 : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%162) : (!llvm.ptr) -> ()
    %163 = llvm.add %157, %4  : i64
    llvm.br ^bb31(%163 : i64)
  ^bb33:  // pred: ^bb31
    llvm.call @free(%18) : (!llvm.ptr) -> ()
    llvm.call @free(%20) : (!llvm.ptr) -> ()
    llvm.br ^bb34(%6 : i64)
  ^bb34(%164: i64):  // 2 preds: ^bb33, ^bb38
    %165 = llvm.icmp "slt" %164, %5 : i64
    llvm.cond_br %165, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %166 = llvm.getelementptr %33[%164] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %167 = llvm.load %166 : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb36(%6 : i64)
  ^bb36(%168: i64):  // 2 preds: ^bb35, ^bb37
    %169 = llvm.icmp "slt" %168, %5 : i64
    llvm.cond_br %169, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %170 = llvm.getelementptr %167[%168] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %171 = llvm.load %170 : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%171) : (!llvm.ptr) -> ()
    %172 = llvm.add %168, %4  : i64
    llvm.br ^bb36(%172 : i64)
  ^bb38:  // pred: ^bb36
    llvm.call @free(%167) : (!llvm.ptr) -> ()
    %173 = llvm.add %164, %4  : i64
    llvm.br ^bb34(%173 : i64)
  ^bb39:  // pred: ^bb34
    llvm.call @free(%33) : (!llvm.ptr) -> ()
    %174 = llvm.mlir.addressof @str4 : !llvm.ptr
    %175 = llvm.getelementptr %174[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i8>
    %176 = llvm.call @printf(%175) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return %12 : i32
  }
  llvm.func @rand() -> i32 attributes {sym_visibility = "private"}
}

