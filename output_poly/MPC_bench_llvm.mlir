module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global internal constant @str4("Finished!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Time used on Min_Cost_Path() function: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Test Case Generated!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Time used on calculation: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Time used on initialization: %f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.func @Min_Cost_Path(%arg0: !llvm.ptr, %arg1: !llvm.ptr) {
    %0 = llvm.mlir.constant(-1 : index) : i64
    %1 = llvm.mlir.constant(512 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(10240 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %6 = llvm.call @clock() : () -> i64
    llvm.br ^bb1(%4 : i64)
  ^bb1(%7: i64):  // 2 preds: ^bb0, ^bb5
    %8 = llvm.icmp "slt" %7, %3 : i64
    llvm.cond_br %8, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %9 = llvm.load %arg1 : !llvm.ptr -> !llvm.ptr
    %10 = llvm.load %9 : !llvm.ptr -> !llvm.ptr
    %11 = llvm.load %arg0 : !llvm.ptr -> !llvm.ptr
    %12 = llvm.load %11 : !llvm.ptr -> !llvm.ptr
    %13 = llvm.getelementptr %12[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %14 = llvm.load %13 : !llvm.ptr -> i32
    %15 = llvm.getelementptr %10[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %14, %15 : i32, !llvm.ptr
    llvm.br ^bb3(%2 : i64)
  ^bb3(%16: i64):  // 2 preds: ^bb2, ^bb4
    %17 = llvm.icmp "slt" %16, %1 : i64
    llvm.cond_br %17, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %18 = llvm.getelementptr %arg1[%16] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %19 = llvm.load %18 : !llvm.ptr -> !llvm.ptr
    %20 = llvm.load %19 : !llvm.ptr -> !llvm.ptr
    %21 = llvm.add %16, %0  : i64
    %22 = llvm.getelementptr %arg1[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %23 = llvm.load %22 : !llvm.ptr -> !llvm.ptr
    %24 = llvm.load %23 : !llvm.ptr -> !llvm.ptr
    %25 = llvm.load %24 : !llvm.ptr -> i32
    %26 = llvm.getelementptr %arg0[%16] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %27 = llvm.load %26 : !llvm.ptr -> !llvm.ptr
    %28 = llvm.load %27 : !llvm.ptr -> !llvm.ptr
    %29 = llvm.getelementptr %28[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %30 = llvm.load %29 : !llvm.ptr -> i32
    %31 = llvm.add %25, %30  : i32
    %32 = llvm.getelementptr %20[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %31, %32 : i32, !llvm.ptr
    %33 = llvm.load %arg1 : !llvm.ptr -> !llvm.ptr
    %34 = llvm.getelementptr %33[%16] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %35 = llvm.load %34 : !llvm.ptr -> !llvm.ptr
    %36 = llvm.add %16, %0  : i64
    %37 = llvm.getelementptr %33[%36] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %38 = llvm.load %37 : !llvm.ptr -> !llvm.ptr
    %39 = llvm.load %38 : !llvm.ptr -> i32
    %40 = llvm.load %arg0 : !llvm.ptr -> !llvm.ptr
    %41 = llvm.getelementptr %40[%16] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %42 = llvm.load %41 : !llvm.ptr -> !llvm.ptr
    %43 = llvm.getelementptr %42[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %44 = llvm.load %43 : !llvm.ptr -> i32
    %45 = llvm.add %39, %44  : i32
    %46 = llvm.getelementptr %35[%7] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %45, %46 : i32, !llvm.ptr
    %47 = llvm.add %16, %2  : i64
    llvm.br ^bb3(%47 : i64)
  ^bb5:  // pred: ^bb3
    %48 = llvm.add %7, %2  : i64
    llvm.br ^bb1(%48 : i64)
  ^bb6:  // pred: ^bb1
    %49 = llvm.call @clock() : () -> i64
    %50 = llvm.sub %49, %6  : i64
    %51 = llvm.sitofp %50 : i64 to f64
    %52 = llvm.fdiv %51, %5  : f64
    %53 = llvm.mlir.addressof @str0 : !llvm.ptr
    %54 = llvm.getelementptr %53[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %55 = llvm.call @printf(%54, %52) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %56 = llvm.call @clock() : () -> i64
    llvm.br ^bb7(%4 : i64)
  ^bb7(%57: i64):  // 2 preds: ^bb6, ^bb14
    %58 = llvm.icmp "slt" %57, %3 : i64
    llvm.cond_br %58, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%2 : i64)
  ^bb9(%59: i64):  // 2 preds: ^bb8, ^bb13
    %60 = llvm.icmp "slt" %59, %1 : i64
    llvm.cond_br %60, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    llvm.br ^bb11(%2 : i64)
  ^bb11(%61: i64):  // 2 preds: ^bb10, ^bb12
    %62 = llvm.icmp "slt" %61, %1 : i64
    llvm.cond_br %62, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %63 = llvm.add %59, %0  : i64
    %64 = llvm.getelementptr %arg1[%63] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %65 = llvm.load %64 : !llvm.ptr -> !llvm.ptr
    %66 = llvm.add %61, %0  : i64
    %67 = llvm.getelementptr %65[%66] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %68 = llvm.load %67 : !llvm.ptr -> !llvm.ptr
    %69 = llvm.getelementptr %68[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %70 = llvm.load %69 : !llvm.ptr -> i32
    %71 = llvm.getelementptr %65[%61] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %72 = llvm.load %71 : !llvm.ptr -> !llvm.ptr
    %73 = llvm.getelementptr %72[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %74 = llvm.load %73 : !llvm.ptr -> i32
    %75 = llvm.getelementptr %arg1[%59] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %76 = llvm.load %75 : !llvm.ptr -> !llvm.ptr
    %77 = llvm.add %61, %0  : i64
    %78 = llvm.getelementptr %76[%77] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %79 = llvm.load %78 : !llvm.ptr -> !llvm.ptr
    %80 = llvm.getelementptr %79[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %81 = llvm.load %80 : !llvm.ptr -> i32
    %82 = llvm.icmp "sgt" %70, %74 : i32
    %83 = llvm.select %82, %74, %70 : i1, i32
    %84 = llvm.icmp "sgt" %83, %81 : i32
    %85 = llvm.select %84, %81, %83 : i1, i32
    %86 = llvm.getelementptr %76[%61] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %87 = llvm.load %86 : !llvm.ptr -> !llvm.ptr
    %88 = llvm.getelementptr %arg0[%59] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %89 = llvm.load %88 : !llvm.ptr -> !llvm.ptr
    %90 = llvm.getelementptr %89[%61] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %91 = llvm.load %90 : !llvm.ptr -> !llvm.ptr
    %92 = llvm.getelementptr %91[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %93 = llvm.load %92 : !llvm.ptr -> i32
    %94 = llvm.add %85, %93  : i32
    %95 = llvm.getelementptr %87[%57] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %94, %95 : i32, !llvm.ptr
    %96 = llvm.add %61, %2  : i64
    llvm.br ^bb11(%96 : i64)
  ^bb13:  // pred: ^bb11
    %97 = llvm.add %59, %2  : i64
    llvm.br ^bb9(%97 : i64)
  ^bb14:  // pred: ^bb9
    %98 = llvm.add %57, %2  : i64
    llvm.br ^bb7(%98 : i64)
  ^bb15:  // pred: ^bb7
    %99 = llvm.call @clock() : () -> i64
    %100 = llvm.sub %99, %56  : i64
    %101 = llvm.sitofp %100 : i64 to f64
    %102 = llvm.fdiv %101, %5  : f64
    %103 = llvm.mlir.addressof @str1 : !llvm.ptr
    %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %105 = llvm.call @printf(%104, %102) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    llvm.return
  }
  llvm.func @clock() -> i64 attributes {sym_visibility = "private"}
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr) -> i32 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(-1 : index) : i64
    %2 = llvm.mlir.constant(10240 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(512 : index) : i64
    %5 = llvm.mlir.constant(0 : index) : i64
    %6 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %7 = llvm.mlir.constant(0 : i32) : i32
    %8 = llvm.mlir.constant(512 : i64) : i64
    %9 = llvm.mlir.constant(8 : i64) : i64
    %10 = llvm.mul %9, %8  : i64
    %11 = llvm.udiv %10, %9  : i64
    %12 = llvm.mul %11, %9  : i64
    %13 = llvm.call @malloc(%12) : (i64) -> !llvm.ptr
    %14 = llvm.mul %9, %8  : i64
    %15 = llvm.udiv %14, %9  : i64
    llvm.br ^bb1(%5 : i64)
  ^bb1(%16: i64):  // 2 preds: ^bb0, ^bb5
    %17 = llvm.icmp "slt" %16, %4 : i64
    llvm.cond_br %17, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %18 = llvm.mul %15, %9  : i64
    %19 = llvm.call @malloc(%18) : (i64) -> !llvm.ptr
    %20 = llvm.getelementptr %13[%16] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %19, %20 : !llvm.ptr, !llvm.ptr
    llvm.br ^bb3(%5 : i64)
  ^bb3(%21: i64):  // 2 preds: ^bb2, ^bb4
    %22 = llvm.icmp "slt" %21, %4 : i64
    llvm.cond_br %22, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %23 = llvm.mul %0, %2  : i64
    %24 = llvm.call @malloc(%23) : (i64) -> !llvm.ptr
    %25 = llvm.getelementptr %19[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %24, %25 : !llvm.ptr, !llvm.ptr
    %26 = llvm.add %21, %3  : i64
    llvm.br ^bb3(%26 : i64)
  ^bb5:  // pred: ^bb3
    %27 = llvm.add %16, %3  : i64
    llvm.br ^bb1(%27 : i64)
  ^bb6:  // pred: ^bb1
    %28 = llvm.mul %11, %9  : i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr
    llvm.br ^bb7(%5 : i64)
  ^bb7(%30: i64):  // 2 preds: ^bb6, ^bb11
    %31 = llvm.icmp "slt" %30, %4 : i64
    llvm.cond_br %31, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %32 = llvm.mul %15, %9  : i64
    %33 = llvm.call @malloc(%32) : (i64) -> !llvm.ptr
    %34 = llvm.getelementptr %29[%30] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %33, %34 : !llvm.ptr, !llvm.ptr
    llvm.br ^bb9(%5 : i64)
  ^bb9(%35: i64):  // 2 preds: ^bb8, ^bb10
    %36 = llvm.icmp "slt" %35, %4 : i64
    llvm.cond_br %36, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %37 = llvm.mul %0, %2  : i64
    %38 = llvm.call @malloc(%37) : (i64) -> !llvm.ptr
    %39 = llvm.getelementptr %33[%35] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    llvm.store %38, %39 : !llvm.ptr, !llvm.ptr
    %40 = llvm.add %35, %3  : i64
    llvm.br ^bb9(%40 : i64)
  ^bb11:  // pred: ^bb9
    %41 = llvm.add %30, %3  : i64
    llvm.br ^bb7(%41 : i64)
  ^bb12:  // pred: ^bb7
    %42 = llvm.mlir.addressof @str2 : !llvm.ptr
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
    %44 = llvm.call @printf(%43) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %45 = llvm.call @clock() : () -> i64
    %46 = llvm.call @clock() : () -> i64
    %47 = llvm.load %29 : !llvm.ptr -> !llvm.ptr
    %48 = llvm.load %13 : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb13(%5 : i64)
  ^bb13(%49: i64):  // 2 preds: ^bb12, ^bb17
    %50 = llvm.icmp "slt" %49, %2 : i64
    llvm.cond_br %50, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    %51 = llvm.load %47 : !llvm.ptr -> !llvm.ptr
    %52 = llvm.load %48 : !llvm.ptr -> !llvm.ptr
    %53 = llvm.getelementptr %52[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %54 = llvm.load %53 : !llvm.ptr -> i32
    %55 = llvm.getelementptr %51[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %54, %55 : i32, !llvm.ptr
    llvm.br ^bb15(%3 : i64)
  ^bb15(%56: i64):  // 2 preds: ^bb14, ^bb16
    %57 = llvm.icmp "slt" %56, %4 : i64
    llvm.cond_br %57, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %58 = llvm.getelementptr %29[%56] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %59 = llvm.load %58 : !llvm.ptr -> !llvm.ptr
    %60 = llvm.load %59 : !llvm.ptr -> !llvm.ptr
    %61 = llvm.add %56, %1  : i64
    %62 = llvm.getelementptr %29[%61] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %63 = llvm.load %62 : !llvm.ptr -> !llvm.ptr
    %64 = llvm.load %63 : !llvm.ptr -> !llvm.ptr
    %65 = llvm.load %64 : !llvm.ptr -> i32
    %66 = llvm.getelementptr %13[%56] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %67 = llvm.load %66 : !llvm.ptr -> !llvm.ptr
    %68 = llvm.load %67 : !llvm.ptr -> !llvm.ptr
    %69 = llvm.getelementptr %68[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %70 = llvm.load %69 : !llvm.ptr -> i32
    %71 = llvm.add %65, %70  : i32
    %72 = llvm.getelementptr %60[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %71, %72 : i32, !llvm.ptr
    %73 = llvm.getelementptr %47[%56] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %74 = llvm.load %73 : !llvm.ptr -> !llvm.ptr
    %75 = llvm.add %56, %1  : i64
    %76 = llvm.getelementptr %47[%75] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %77 = llvm.load %76 : !llvm.ptr -> !llvm.ptr
    %78 = llvm.load %77 : !llvm.ptr -> i32
    %79 = llvm.getelementptr %48[%56] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %80 = llvm.load %79 : !llvm.ptr -> !llvm.ptr
    %81 = llvm.getelementptr %80[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %82 = llvm.load %81 : !llvm.ptr -> i32
    %83 = llvm.add %78, %82  : i32
    %84 = llvm.getelementptr %74[%49] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %83, %84 : i32, !llvm.ptr
    %85 = llvm.add %56, %3  : i64
    llvm.br ^bb15(%85 : i64)
  ^bb17:  // pred: ^bb15
    %86 = llvm.add %49, %3  : i64
    llvm.br ^bb13(%86 : i64)
  ^bb18:  // pred: ^bb13
    %87 = llvm.call @clock() : () -> i64
    %88 = llvm.sub %87, %46  : i64
    %89 = llvm.sitofp %88 : i64 to f64
    %90 = llvm.fdiv %89, %6  : f64
    %91 = llvm.mlir.addressof @str0 : !llvm.ptr
    %92 = llvm.getelementptr %91[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %93 = llvm.call @printf(%92, %90) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %94 = llvm.call @clock() : () -> i64
    llvm.br ^bb19(%5 : i64)
  ^bb19(%95: i64):  // 2 preds: ^bb18, ^bb26
    %96 = llvm.icmp "slt" %95, %2 : i64
    llvm.cond_br %96, ^bb20, ^bb27
  ^bb20:  // pred: ^bb19
    llvm.br ^bb21(%3 : i64)
  ^bb21(%97: i64):  // 2 preds: ^bb20, ^bb25
    %98 = llvm.icmp "slt" %97, %4 : i64
    llvm.cond_br %98, ^bb22, ^bb26
  ^bb22:  // pred: ^bb21
    %99 = llvm.add %97, %1  : i64
    %100 = llvm.getelementptr %29[%99] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %101 = llvm.load %100 : !llvm.ptr -> !llvm.ptr
    %102 = llvm.getelementptr %29[%97] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %103 = llvm.load %102 : !llvm.ptr -> !llvm.ptr
    %104 = llvm.getelementptr %13[%97] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %105 = llvm.load %104 : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb23(%3 : i64)
  ^bb23(%106: i64):  // 2 preds: ^bb22, ^bb24
    %107 = llvm.icmp "slt" %106, %4 : i64
    llvm.cond_br %107, ^bb24, ^bb25
  ^bb24:  // pred: ^bb23
    %108 = llvm.add %106, %1  : i64
    %109 = llvm.getelementptr %101[%108] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %110 = llvm.load %109 : !llvm.ptr -> !llvm.ptr
    %111 = llvm.getelementptr %110[%95] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %112 = llvm.load %111 : !llvm.ptr -> i32
    %113 = llvm.getelementptr %101[%106] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %114 = llvm.load %113 : !llvm.ptr -> !llvm.ptr
    %115 = llvm.getelementptr %114[%95] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %116 = llvm.load %115 : !llvm.ptr -> i32
    %117 = llvm.add %106, %1  : i64
    %118 = llvm.getelementptr %103[%117] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %119 = llvm.load %118 : !llvm.ptr -> !llvm.ptr
    %120 = llvm.getelementptr %119[%95] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %121 = llvm.load %120 : !llvm.ptr -> i32
    %122 = llvm.icmp "sgt" %112, %116 : i32
    %123 = llvm.select %122, %116, %112 : i1, i32
    %124 = llvm.icmp "sgt" %123, %121 : i32
    %125 = llvm.select %124, %121, %123 : i1, i32
    %126 = llvm.getelementptr %103[%106] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %127 = llvm.load %126 : !llvm.ptr -> !llvm.ptr
    %128 = llvm.getelementptr %105[%106] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %129 = llvm.load %128 : !llvm.ptr -> !llvm.ptr
    %130 = llvm.getelementptr %129[%95] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %131 = llvm.load %130 : !llvm.ptr -> i32
    %132 = llvm.add %125, %131  : i32
    %133 = llvm.getelementptr %127[%95] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %132, %133 : i32, !llvm.ptr
    %134 = llvm.add %106, %3  : i64
    llvm.br ^bb23(%134 : i64)
  ^bb25:  // pred: ^bb23
    %135 = llvm.add %97, %3  : i64
    llvm.br ^bb21(%135 : i64)
  ^bb26:  // pred: ^bb21
    %136 = llvm.add %95, %3  : i64
    llvm.br ^bb19(%136 : i64)
  ^bb27:  // pred: ^bb19
    %137 = llvm.call @clock() : () -> i64
    %138 = llvm.sub %137, %94  : i64
    %139 = llvm.sitofp %138 : i64 to f64
    %140 = llvm.fdiv %139, %6  : f64
    %141 = llvm.mlir.addressof @str1 : !llvm.ptr
    %142 = llvm.getelementptr %141[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %143 = llvm.call @printf(%142, %140) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %144 = llvm.call @clock() : () -> i64
    %145 = llvm.sub %144, %45  : i64
    %146 = llvm.sitofp %145 : i64 to f64
    %147 = llvm.fdiv %146, %6  : f64
    %148 = llvm.mlir.addressof @str3 : !llvm.ptr
    %149 = llvm.getelementptr %148[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<43 x i8>
    %150 = llvm.call @printf(%149, %147) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    llvm.br ^bb28(%5 : i64)
  ^bb28(%151: i64):  // 2 preds: ^bb27, ^bb32
    %152 = llvm.icmp "slt" %151, %4 : i64
    llvm.cond_br %152, ^bb29, ^bb33
  ^bb29:  // pred: ^bb28
    %153 = llvm.getelementptr %13[%151] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %154 = llvm.load %153 : !llvm.ptr -> !llvm.ptr
    %155 = llvm.getelementptr %29[%151] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %156 = llvm.load %155 : !llvm.ptr -> !llvm.ptr
    llvm.br ^bb30(%5 : i64)
  ^bb30(%157: i64):  // 2 preds: ^bb29, ^bb31
    %158 = llvm.icmp "slt" %157, %4 : i64
    llvm.cond_br %158, ^bb31, ^bb32
  ^bb31:  // pred: ^bb30
    %159 = llvm.getelementptr %154[%157] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %160 = llvm.load %159 : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%160) : (!llvm.ptr) -> ()
    %161 = llvm.getelementptr %156[%157] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.ptr
    %162 = llvm.load %161 : !llvm.ptr -> !llvm.ptr
    llvm.call @free(%162) : (!llvm.ptr) -> ()
    %163 = llvm.add %157, %3  : i64
    llvm.br ^bb30(%163 : i64)
  ^bb32:  // pred: ^bb30
    llvm.call @free(%154) : (!llvm.ptr) -> ()
    llvm.call @free(%156) : (!llvm.ptr) -> ()
    %164 = llvm.add %151, %3  : i64
    llvm.br ^bb28(%164 : i64)
  ^bb33:  // pred: ^bb28
    llvm.call @free(%13) : (!llvm.ptr) -> ()
    llvm.call @free(%29) : (!llvm.ptr) -> ()
    %165 = llvm.mlir.addressof @str4 : !llvm.ptr
    %166 = llvm.getelementptr %165[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i8>
    %167 = llvm.call @printf(%166) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return %7 : i32
  }
}

