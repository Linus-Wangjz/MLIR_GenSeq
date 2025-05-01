module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global internal constant @str4("Finished!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Time used on Min_Cost_Path() function: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Test Case Generated!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Time used on calculation: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Time used on initialization: %f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.func @Min_Cost_Path(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64) {
    %0 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(2048 : index) : i64
    %3 = llvm.mlir.constant(1 : index) : i64
    %4 = llvm.mlir.constant(512 : index) : i64
    %5 = llvm.mlir.constant(-1 : index) : i64
    %6 = llvm.mlir.constant(8 : index) : i64
    %7 = llvm.call @clock() : () -> i64
    llvm.br ^bb1(%1 : i64)
  ^bb1(%8: i64):  // 2 preds: ^bb0, ^bb5
    %9 = llvm.icmp "slt" %8, %2 : i64
    llvm.cond_br %9, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %10 = llvm.load %arg6 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %11 = llvm.extractvalue %10[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.load %11 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %14 = llvm.extractvalue %13[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %15 = llvm.load %14 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %17 = llvm.getelementptr %16[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %18 = llvm.load %17 : !llvm.ptr -> i32
    %19 = llvm.extractvalue %12[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %19[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %18, %20 : i32, !llvm.ptr
    llvm.br ^bb3(%3 : i64)
  ^bb3(%21: i64):  // 2 preds: ^bb2, ^bb4
    %22 = llvm.icmp "slt" %21, %4 : i64
    llvm.cond_br %22, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %23 = llvm.getelementptr %arg6[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %24 = llvm.load %23 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.load %25 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.add %21, %5  : i64
    %28 = llvm.getelementptr %arg6[%27] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.load %28 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.extractvalue %29[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.load %30 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.extractvalue %31[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.load %32 : !llvm.ptr -> i32
    %34 = llvm.getelementptr %arg1[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.load %34 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.extractvalue %35[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.load %36 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %38 = llvm.extractvalue %37[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.getelementptr %38[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %40 = llvm.load %39 : !llvm.ptr -> i32
    %41 = llvm.add %33, %40  : i32
    %42 = llvm.extractvalue %26[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.getelementptr %42[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %41, %43 : i32, !llvm.ptr
    %44 = llvm.load %arg6 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.getelementptr %45[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.load %46 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.add %21, %5  : i64
    %49 = llvm.extractvalue %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.getelementptr %49[%48] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.load %50 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %52 = llvm.extractvalue %51[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.load %52 : !llvm.ptr -> i32
    %54 = llvm.load %arg1 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.extractvalue %54[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.getelementptr %55[%21] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.load %56 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %58 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.getelementptr %58[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %60 = llvm.load %59 : !llvm.ptr -> i32
    %61 = llvm.add %53, %60  : i32
    %62 = llvm.extractvalue %47[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%8] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %61, %63 : i32, !llvm.ptr
    %64 = llvm.add %21, %3  : i64
    llvm.br ^bb3(%64 : i64)
  ^bb5:  // pred: ^bb3
    %65 = llvm.add %8, %3  : i64
    llvm.br ^bb1(%65 : i64)
  ^bb6:  // pred: ^bb1
    %66 = llvm.call @clock() : () -> i64
    %67 = llvm.sub %66, %7  : i64
    %68 = llvm.sitofp %67 : i64 to f64
    %69 = llvm.fdiv %68, %0  : f64
    %70 = llvm.mlir.addressof @str0 : !llvm.ptr
    %71 = llvm.getelementptr %70[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %72 = llvm.call @printf(%71, %69) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %73 = llvm.call @clock() : () -> i64
    llvm.br ^bb7(%1 : i64)
  ^bb7(%74: i64):  // 2 preds: ^bb6, ^bb14
    %75 = llvm.icmp "slt" %74, %2 : i64
    llvm.cond_br %75, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%3 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb13
    %77 = llvm.icmp "slt" %76, %4 : i64
    llvm.cond_br %77, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    llvm.br ^bb11(%3 : i64)
  ^bb11(%78: i64):  // 2 preds: ^bb10, ^bb12
    %79 = llvm.icmp "slt" %78, %4 : i64
    llvm.cond_br %79, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %80 = llvm.add %76, %5  : i64
    %81 = llvm.getelementptr %arg6[%80] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %82 = llvm.load %81 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %83 = llvm.add %78, %5  : i64
    %84 = llvm.extractvalue %82[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.getelementptr %84[%83] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %86 = llvm.load %85 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.extractvalue %86[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.getelementptr %87[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %89 = llvm.load %88 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %90 = llvm.extractvalue %82[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.getelementptr %90[%78] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %92 = llvm.load %91 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %93 = llvm.extractvalue %92[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.getelementptr %93[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %95 = llvm.load %94 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %96 = llvm.getelementptr %arg6[%76] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %97 = llvm.load %96 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %98 = llvm.add %78, %5  : i64
    %99 = llvm.extractvalue %97[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.getelementptr %99[%98] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %101 = llvm.load %100 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %102 = llvm.extractvalue %101[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.getelementptr %102[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %104 = llvm.load %103 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %105 = llvm.icmp "sgt" %89, %95 : vector<8xi32>
    %106 = llvm.select %105, %95, %89 : vector<8xi1>, vector<8xi32>
    %107 = llvm.icmp "sgt" %106, %104 : vector<8xi32>
    %108 = llvm.select %107, %104, %106 : vector<8xi1>, vector<8xi32>
    %109 = llvm.extractvalue %97[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %110 = llvm.getelementptr %109[%78] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %111 = llvm.load %110 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.getelementptr %arg1[%76] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.load %112 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %114 = llvm.extractvalue %113[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.getelementptr %114[%78] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %116 = llvm.load %115 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %117 = llvm.extractvalue %116[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.getelementptr %117[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %119 = llvm.load %118 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %120 = llvm.add %108, %119  : vector<8xi32>
    %121 = llvm.extractvalue %111[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.getelementptr %121[%74] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %120, %122 {alignment = 4 : i64} : vector<8xi32>, !llvm.ptr
    %123 = llvm.add %78, %3  : i64
    llvm.br ^bb11(%123 : i64)
  ^bb13:  // pred: ^bb11
    %124 = llvm.add %76, %3  : i64
    llvm.br ^bb9(%124 : i64)
  ^bb14:  // pred: ^bb9
    %125 = llvm.add %74, %6  : i64
    llvm.br ^bb7(%125 : i64)
  ^bb15:  // pred: ^bb7
    %126 = llvm.call @clock() : () -> i64
    %127 = llvm.sub %126, %73  : i64
    %128 = llvm.sitofp %127 : i64 to f64
    %129 = llvm.fdiv %128, %0  : f64
    %130 = llvm.mlir.addressof @str1 : !llvm.ptr
    %131 = llvm.getelementptr %130[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %132 = llvm.call @printf(%131, %129) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    llvm.return
  }
  llvm.func @clock() -> i64 attributes {sym_visibility = "private"}
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64) -> i32 {
    %0 = llvm.mlir.constant(2048 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(512 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(true) : i1
    %5 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %6 = llvm.mlir.constant(0 : i32) : i32
    %7 = llvm.mlir.constant(512 : i64) : i64
    %8 = llvm.mlir.constant(8 : i64) : i64
    %9 = llvm.mul %8, %7  : i64
    %10 = llvm.udiv %9, %8  : i64
    %11 = llvm.mlir.zero : !llvm.ptr
    %12 = llvm.getelementptr %11[%10] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %13 = llvm.ptrtoint %12 : !llvm.ptr to i64
    %14 = llvm.mlir.zero : !llvm.ptr
    %15 = llvm.getelementptr %14[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %16 = llvm.ptrtoint %15 : !llvm.ptr to i64
    %17 = llvm.add %13, %16  : i64
    %18 = llvm.call @malloc(%17) : (i64) -> !llvm.ptr
    %19 = llvm.ptrtoint %18 : !llvm.ptr to i64
    %20 = llvm.sub %16, %1  : i64
    %21 = llvm.add %19, %20  : i64
    %22 = llvm.urem %21, %16  : i64
    %23 = llvm.sub %21, %22  : i64
    %24 = llvm.inttoptr %23 : i64 to !llvm.ptr
    %25 = llvm.mul %8, %7  : i64
    %26 = llvm.udiv %25, %8  : i64
    llvm.br ^bb1(%3 : i64)
  ^bb1(%27: i64):  // 2 preds: ^bb0, ^bb5
    %28 = llvm.icmp "slt" %27, %2 : i64
    llvm.cond_br %28, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %29 = llvm.mlir.zero : !llvm.ptr
    %30 = llvm.getelementptr %29[%26] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.mlir.zero : !llvm.ptr
    %33 = llvm.getelementptr %32[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.add %31, %34  : i64
    %36 = llvm.call @malloc(%35) : (i64) -> !llvm.ptr
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.sub %34, %1  : i64
    %39 = llvm.add %37, %38  : i64
    %40 = llvm.urem %39, %34  : i64
    %41 = llvm.sub %39, %40  : i64
    %42 = llvm.inttoptr %41 : i64 to !llvm.ptr
    %43 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %44 = llvm.insertvalue %36, %43[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.insertvalue %42, %44[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %3, %45[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %26, %46[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %1, %47[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.getelementptr %24[%27] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %48, %49 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    llvm.br ^bb3(%3 : i64)
  ^bb3(%50: i64):  // 2 preds: ^bb2, ^bb4
    %51 = llvm.icmp "slt" %50, %2 : i64
    llvm.cond_br %51, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %52 = llvm.getelementptr %24[%27] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %53 = llvm.load %52 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %54 = llvm.mlir.zero : !llvm.ptr
    %55 = llvm.getelementptr %54[2048] : (!llvm.ptr) -> !llvm.ptr, i32
    %56 = llvm.ptrtoint %55 : !llvm.ptr to i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr
    %58 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %3, %60[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %0, %61[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %1, %62[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.extractvalue %53[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.getelementptr %64[%50] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %63, %65 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %66 = llvm.add %50, %1  : i64
    llvm.br ^bb3(%66 : i64)
  ^bb5:  // pred: ^bb3
    %67 = llvm.add %27, %1  : i64
    llvm.br ^bb1(%67 : i64)
  ^bb6:  // pred: ^bb1
    %68 = llvm.mul %8, %7  : i64
    %69 = llvm.udiv %68, %8  : i64
    %70 = llvm.mlir.zero : !llvm.ptr
    %71 = llvm.getelementptr %70[%69] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %72 = llvm.ptrtoint %71 : !llvm.ptr to i64
    %73 = llvm.mlir.zero : !llvm.ptr
    %74 = llvm.getelementptr %73[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %75 = llvm.ptrtoint %74 : !llvm.ptr to i64
    %76 = llvm.add %72, %75  : i64
    %77 = llvm.call @malloc(%76) : (i64) -> !llvm.ptr
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.sub %75, %1  : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.urem %80, %75  : i64
    %82 = llvm.sub %80, %81  : i64
    %83 = llvm.inttoptr %82 : i64 to !llvm.ptr
    %84 = llvm.mul %8, %7  : i64
    %85 = llvm.udiv %84, %8  : i64
    llvm.br ^bb7(%3 : i64)
  ^bb7(%86: i64):  // 2 preds: ^bb6, ^bb11
    %87 = llvm.icmp "slt" %86, %2 : i64
    llvm.cond_br %87, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %88 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.getelementptr %88[%85] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.zero : !llvm.ptr
    %92 = llvm.getelementptr %91[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %93 = llvm.ptrtoint %92 : !llvm.ptr to i64
    %94 = llvm.add %90, %93  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.sub %93, %1  : i64
    %98 = llvm.add %96, %97  : i64
    %99 = llvm.urem %98, %93  : i64
    %100 = llvm.sub %98, %99  : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr
    %102 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %103 = llvm.insertvalue %95, %102[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %3, %104[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %85, %105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %1, %106[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.getelementptr %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %107, %108 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    llvm.br ^bb9(%3 : i64)
  ^bb9(%109: i64):  // 2 preds: ^bb8, ^bb10
    %110 = llvm.icmp "slt" %109, %2 : i64
    llvm.cond_br %110, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %111 = llvm.getelementptr %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.load %111 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.mlir.zero : !llvm.ptr
    %114 = llvm.getelementptr %113[2048] : (!llvm.ptr) -> !llvm.ptr, i32
    %115 = llvm.ptrtoint %114 : !llvm.ptr to i64
    %116 = llvm.call @malloc(%115) : (i64) -> !llvm.ptr
    %117 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %118 = llvm.insertvalue %116, %117[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.insertvalue %116, %118[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = llvm.insertvalue %3, %119[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %0, %120[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.insertvalue %1, %121[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.getelementptr %123[%109] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %122, %124 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %125 = llvm.add %109, %1  : i64
    llvm.br ^bb9(%125 : i64)
  ^bb11:  // pred: ^bb9
    %126 = llvm.add %86, %1  : i64
    llvm.br ^bb7(%126 : i64)
  ^bb12:  // pred: ^bb7
    %127 = llvm.mlir.addressof @str2 : !llvm.ptr
    %128 = llvm.getelementptr %127[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
    %129 = llvm.call @printf(%128) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %130 = llvm.call @clock() : () -> i64
    llvm.call @Min_Cost_Path(%18, %24, %3, %10, %1, %77, %83, %3, %69, %1) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64) -> ()
    %131 = llvm.call @clock() : () -> i64
    %132 = llvm.sub %131, %130  : i64
    %133 = llvm.sitofp %132 : i64 to f64
    %134 = llvm.fdiv %133, %5  : f64
    %135 = llvm.mlir.addressof @str3 : !llvm.ptr
    %136 = llvm.getelementptr %135[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<43 x i8>
    %137 = llvm.call @printf(%136, %134) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    llvm.br ^bb13(%3 : i64)
  ^bb13(%138: i64):  // 2 preds: ^bb12, ^bb19
    %139 = llvm.icmp "slt" %138, %2 : i64
    llvm.cond_br %139, ^bb14, ^bb20
  ^bb14:  // pred: ^bb13
    llvm.cond_br %4, ^bb15, ^bb19
  ^bb15:  // pred: ^bb14
    %140 = llvm.getelementptr %24[%138] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %141 = llvm.load %140 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %142 = llvm.getelementptr %83[%138] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %143 = llvm.load %142 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb16(%3 : i64)
  ^bb16(%144: i64):  // 2 preds: ^bb15, ^bb17
    %145 = llvm.icmp "slt" %144, %2 : i64
    llvm.cond_br %145, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %146 = llvm.extractvalue %141[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.getelementptr %146[%144] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %148 = llvm.load %147 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %149 = llvm.extractvalue %148[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @free(%149) : (!llvm.ptr) -> ()
    %150 = llvm.extractvalue %143[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.getelementptr %150[%144] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %152 = llvm.load %151 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %153 = llvm.extractvalue %152[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @free(%153) : (!llvm.ptr) -> ()
    %154 = llvm.add %144, %1  : i64
    llvm.br ^bb16(%154 : i64)
  ^bb18:  // pred: ^bb16
    llvm.br ^bb19
  ^bb19:  // 2 preds: ^bb14, ^bb18
    %155 = llvm.getelementptr %24[%138] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %156 = llvm.load %155 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %157 = llvm.extractvalue %156[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @free(%157) : (!llvm.ptr) -> ()
    %158 = llvm.getelementptr %83[%138] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %159 = llvm.load %158 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %160 = llvm.extractvalue %159[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @free(%160) : (!llvm.ptr) -> ()
    %161 = llvm.add %138, %1  : i64
    llvm.br ^bb13(%161 : i64)
  ^bb20:  // pred: ^bb13
    llvm.call @free(%18) : (!llvm.ptr) -> ()
    llvm.call @free(%77) : (!llvm.ptr) -> ()
    %162 = llvm.mlir.addressof @str4 : !llvm.ptr
    %163 = llvm.getelementptr %162[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i8>
    %164 = llvm.call @printf(%163) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return %6 : i32
  }
}

