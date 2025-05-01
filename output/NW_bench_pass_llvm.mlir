module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @free(!llvm.ptr)
  llvm.func @malloc(i64) -> !llvm.ptr
  llvm.mlir.global internal constant @str4("Finished!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Time used on Needleman_Wunsch() function: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Test Case Generated!\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Time used on calculation: %f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("Time used on initialization: %f\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.func @Needleman_Wunsch(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr, %arg6: !llvm.ptr, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: !llvm.ptr, %arg11: !llvm.ptr, %arg12: i64, %arg13: i64, %arg14: i64) {
    %0 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(0 : index) : i64
    %3 = llvm.mlir.constant(2048 : index) : i64
    %4 = llvm.mlir.constant(1 : index) : i64
    %5 = llvm.mlir.constant(513 : index) : i64
    %6 = llvm.mlir.constant(8 : index) : i64
    %7 = llvm.mlir.constant(-1 : index) : i64
    %8 = llvm.mlir.constant(dense<2> : vector<8xi32>) : vector<8xi32>
    %9 = llvm.mlir.constant(dense<7> : vector<8xi32>) : vector<8xi32>
    %10 = llvm.mlir.constant(dense<-5> : vector<8xi32>) : vector<8xi32>
    %11 = llvm.call @clock() : () -> i64
    llvm.br ^bb1(%2 : i64)
  ^bb1(%12: i64):  // 2 preds: ^bb0, ^bb5
    %13 = llvm.icmp "slt" %12, %3 : i64
    llvm.cond_br %13, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%2 : i64)
  ^bb3(%14: i64):  // 2 preds: ^bb2, ^bb4
    %15 = llvm.icmp "slt" %14, %5 : i64
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.trunc %14 : i64 to i32
    %17 = llvm.getelementptr %arg11[%14] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.load %17 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %19 = llvm.extractvalue %18[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.load %19 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.sub %1, %16  : i32
    %22 = llvm.extractvalue %20[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.getelementptr %22[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %21, %23 : i32, !llvm.ptr
    %24 = llvm.load %arg11 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %25 = llvm.extractvalue %24[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.getelementptr %25[%14] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.load %26 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %28 = llvm.extractvalue %27[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.getelementptr %28[%12] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %21, %29 : i32, !llvm.ptr
    %30 = llvm.add %14, %4  : i64
    llvm.br ^bb3(%30 : i64)
  ^bb5:  // pred: ^bb3
    %31 = llvm.add %12, %4  : i64
    llvm.br ^bb1(%31 : i64)
  ^bb6:  // pred: ^bb1
    %32 = llvm.call @clock() : () -> i64
    %33 = llvm.sub %32, %11  : i64
    %34 = llvm.sitofp %33 : i64 to f64
    %35 = llvm.fdiv %34, %0  : f64
    %36 = llvm.mlir.addressof @str0 : !llvm.ptr
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<33 x i8>
    %38 = llvm.call @printf(%37, %35) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    %39 = llvm.call @clock() : () -> i64
    llvm.br ^bb7(%2 : i64)
  ^bb7(%40: i64):  // 2 preds: ^bb6, ^bb14
    %41 = llvm.icmp "slt" %40, %3 : i64
    llvm.cond_br %41, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%4 : i64)
  ^bb9(%42: i64):  // 2 preds: ^bb8, ^bb13
    %43 = llvm.icmp "slt" %42, %5 : i64
    llvm.cond_br %43, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    llvm.br ^bb11(%4 : i64)
  ^bb11(%44: i64):  // 2 preds: ^bb10, ^bb12
    %45 = llvm.icmp "slt" %44, %5 : i64
    llvm.cond_br %45, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %46 = llvm.add %42, %7  : i64
    %47 = llvm.getelementptr %arg11[%46] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.load %47 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %49 = llvm.extractvalue %48[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.getelementptr %49[%44] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.load %50 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %52 = llvm.extractvalue %51[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.getelementptr %52[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %54 = llvm.load %53 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %55 = llvm.add %54, %10  : vector<8xi32>
    %56 = llvm.getelementptr %arg11[%42] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.load %56 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %58 = llvm.add %44, %7  : i64
    %59 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.getelementptr %59[%58] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.load %60 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %62 = llvm.extractvalue %61[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.getelementptr %62[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %64 = llvm.load %63 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %65 = llvm.add %64, %10  : vector<8xi32>
    %66 = llvm.add %44, %7  : i64
    %67 = llvm.extractvalue %48[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.getelementptr %67[%66] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.load %68 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %70 = llvm.extractvalue %69[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.getelementptr %70[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %72 = llvm.load %71 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %73 = llvm.add %42, %7  : i64
    %74 = llvm.getelementptr %arg1[%73] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %75 = llvm.load %74 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %76 = llvm.extractvalue %75[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.getelementptr %76[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %78 = llvm.load %77 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %79 = llvm.add %42, %7  : i64
    %80 = llvm.getelementptr %arg6[%79] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %81 = llvm.load %80 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %82 = llvm.extractvalue %81[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.getelementptr %82[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %84 = llvm.load %83 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %85 = llvm.icmp "eq" %78, %84 : vector<8xi32>
    %86 = llvm.zext %85 : vector<8xi1> to vector<8xi32>
    %87 = llvm.mul %86, %9  : vector<8xi32>
    %88 = llvm.sub %72, %87  : vector<8xi32>
    %89 = llvm.add %88, %8  : vector<8xi32>
    %90 = llvm.icmp "slt" %55, %65 : vector<8xi32>
    %91 = llvm.select %90, %65, %55 : vector<8xi1>, vector<8xi32>
    %92 = llvm.icmp "slt" %91, %89 : vector<8xi32>
    %93 = llvm.select %92, %89, %91 : vector<8xi1>, vector<8xi32>
    %94 = llvm.extractvalue %57[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.getelementptr %94[%44] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %96 = llvm.load %95 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %97 = llvm.extractvalue %96[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.getelementptr %97[%40] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %93, %98 {alignment = 4 : i64} : vector<8xi32>, !llvm.ptr
    %99 = llvm.add %44, %4  : i64
    llvm.br ^bb11(%99 : i64)
  ^bb13:  // pred: ^bb11
    %100 = llvm.add %42, %4  : i64
    llvm.br ^bb9(%100 : i64)
  ^bb14:  // pred: ^bb9
    %101 = llvm.add %40, %6  : i64
    llvm.br ^bb7(%101 : i64)
  ^bb15:  // pred: ^bb7
    %102 = llvm.call @clock() : () -> i64
    %103 = llvm.sub %102, %39  : i64
    %104 = llvm.sitofp %103 : i64 to f64
    %105 = llvm.fdiv %104, %0  : f64
    %106 = llvm.mlir.addressof @str1 : !llvm.ptr
    %107 = llvm.getelementptr %106[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<30 x i8>
    %108 = llvm.call @printf(%107, %105) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    llvm.return
  }
  llvm.func @clock() -> i64 attributes {sym_visibility = "private"}
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr, %arg2: !llvm.ptr, %arg3: i64, %arg4: i64, %arg5: i64) -> i32 {
    %0 = llvm.mlir.constant(2048 : index) : i64
    %1 = llvm.mlir.constant(513 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(512 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(true) : i1
    %6 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %7 = llvm.mlir.constant(513 : i64) : i64
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(512 : i64) : i64
    %10 = llvm.mlir.constant(8 : i64) : i64
    %11 = llvm.mul %10, %9  : i64
    %12 = llvm.udiv %11, %10  : i64
    %13 = llvm.mlir.zero : !llvm.ptr
    %14 = llvm.getelementptr %13[%12] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %15 = llvm.ptrtoint %14 : !llvm.ptr to i64
    %16 = llvm.mlir.zero : !llvm.ptr
    %17 = llvm.getelementptr %16[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.ptrtoint %17 : !llvm.ptr to i64
    %19 = llvm.add %15, %18  : i64
    %20 = llvm.call @malloc(%19) : (i64) -> !llvm.ptr
    %21 = llvm.ptrtoint %20 : !llvm.ptr to i64
    %22 = llvm.sub %18, %2  : i64
    %23 = llvm.add %21, %22  : i64
    %24 = llvm.urem %23, %18  : i64
    %25 = llvm.sub %23, %24  : i64
    %26 = llvm.inttoptr %25 : i64 to !llvm.ptr
    %27 = llvm.mul %10, %9  : i64
    %28 = llvm.udiv %27, %10  : i64
    %29 = llvm.mlir.zero : !llvm.ptr
    %30 = llvm.getelementptr %29[%28] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %31 = llvm.ptrtoint %30 : !llvm.ptr to i64
    %32 = llvm.mlir.zero : !llvm.ptr
    %33 = llvm.getelementptr %32[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %34 = llvm.ptrtoint %33 : !llvm.ptr to i64
    %35 = llvm.add %31, %34  : i64
    %36 = llvm.call @malloc(%35) : (i64) -> !llvm.ptr
    %37 = llvm.ptrtoint %36 : !llvm.ptr to i64
    %38 = llvm.sub %34, %2  : i64
    %39 = llvm.add %37, %38  : i64
    %40 = llvm.urem %39, %34  : i64
    %41 = llvm.sub %39, %40  : i64
    %42 = llvm.inttoptr %41 : i64 to !llvm.ptr
    llvm.br ^bb1(%4 : i64)
  ^bb1(%43: i64):  // 2 preds: ^bb0, ^bb2
    %44 = llvm.icmp "slt" %43, %3 : i64
    llvm.cond_br %44, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %45 = llvm.mlir.zero : !llvm.ptr
    %46 = llvm.getelementptr %45[2048] : (!llvm.ptr) -> !llvm.ptr, i32
    %47 = llvm.ptrtoint %46 : !llvm.ptr to i64
    %48 = llvm.call @malloc(%47) : (i64) -> !llvm.ptr
    %49 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %4, %51[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %0, %52[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.insertvalue %2, %53[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.getelementptr %26[%43] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %54, %55 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %56 = llvm.mlir.zero : !llvm.ptr
    %57 = llvm.getelementptr %56[2048] : (!llvm.ptr) -> !llvm.ptr, i32
    %58 = llvm.ptrtoint %57 : !llvm.ptr to i64
    %59 = llvm.call @malloc(%58) : (i64) -> !llvm.ptr
    %60 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.insertvalue %4, %62[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %0, %63[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.insertvalue %2, %64[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.getelementptr %42[%43] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %65, %66 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %67 = llvm.add %43, %2  : i64
    llvm.br ^bb1(%67 : i64)
  ^bb3:  // pred: ^bb1
    %68 = llvm.mul %10, %7  : i64
    %69 = llvm.udiv %68, %10  : i64
    %70 = llvm.mlir.zero : !llvm.ptr
    %71 = llvm.getelementptr %70[%69] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %72 = llvm.ptrtoint %71 : !llvm.ptr to i64
    %73 = llvm.mlir.zero : !llvm.ptr
    %74 = llvm.getelementptr %73[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %75 = llvm.ptrtoint %74 : !llvm.ptr to i64
    %76 = llvm.add %72, %75  : i64
    %77 = llvm.call @malloc(%76) : (i64) -> !llvm.ptr
    %78 = llvm.ptrtoint %77 : !llvm.ptr to i64
    %79 = llvm.sub %75, %2  : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.urem %80, %75  : i64
    %82 = llvm.sub %80, %81  : i64
    %83 = llvm.inttoptr %82 : i64 to !llvm.ptr
    %84 = llvm.mul %10, %7  : i64
    %85 = llvm.udiv %84, %10  : i64
    llvm.br ^bb4(%4 : i64)
  ^bb4(%86: i64):  // 2 preds: ^bb3, ^bb8
    %87 = llvm.icmp "slt" %86, %1 : i64
    llvm.cond_br %87, ^bb5, ^bb9
  ^bb5:  // pred: ^bb4
    %88 = llvm.mlir.zero : !llvm.ptr
    %89 = llvm.getelementptr %88[%85] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %90 = llvm.ptrtoint %89 : !llvm.ptr to i64
    %91 = llvm.mlir.zero : !llvm.ptr
    %92 = llvm.getelementptr %91[1] : (!llvm.ptr) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %93 = llvm.ptrtoint %92 : !llvm.ptr to i64
    %94 = llvm.add %90, %93  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr
    %96 = llvm.ptrtoint %95 : !llvm.ptr to i64
    %97 = llvm.sub %93, %2  : i64
    %98 = llvm.add %96, %97  : i64
    %99 = llvm.urem %98, %93  : i64
    %100 = llvm.sub %98, %99  : i64
    %101 = llvm.inttoptr %100 : i64 to !llvm.ptr
    %102 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %103 = llvm.insertvalue %95, %102[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.insertvalue %101, %103[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %4, %104[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %85, %105[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.insertvalue %2, %106[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.getelementptr %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %107, %108 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    llvm.br ^bb6(%4 : i64)
  ^bb6(%109: i64):  // 2 preds: ^bb5, ^bb7
    %110 = llvm.icmp "slt" %109, %1 : i64
    llvm.cond_br %110, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %111 = llvm.getelementptr %83[%86] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.load %111 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.mlir.zero : !llvm.ptr
    %114 = llvm.getelementptr %113[2048] : (!llvm.ptr) -> !llvm.ptr, i32
    %115 = llvm.ptrtoint %114 : !llvm.ptr to i64
    %116 = llvm.call @malloc(%115) : (i64) -> !llvm.ptr
    %117 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %118 = llvm.insertvalue %116, %117[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.insertvalue %116, %118[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = llvm.insertvalue %4, %119[2] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %0, %120[3, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.insertvalue %2, %121[4, 0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.extractvalue %112[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.getelementptr %123[%109] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.store %122, %124 : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>, !llvm.ptr
    %125 = llvm.add %109, %2  : i64
    llvm.br ^bb6(%125 : i64)
  ^bb8:  // pred: ^bb6
    %126 = llvm.add %86, %2  : i64
    llvm.br ^bb4(%126 : i64)
  ^bb9:  // pred: ^bb4
    llvm.br ^bb10(%4 : i64)
  ^bb10(%127: i64):  // 2 preds: ^bb9, ^bb14
    %128 = llvm.icmp "slt" %127, %0 : i64
    llvm.cond_br %128, ^bb11, ^bb15
  ^bb11:  // pred: ^bb10
    llvm.br ^bb12(%4 : i64)
  ^bb12(%129: i64):  // 2 preds: ^bb11, ^bb13
    %130 = llvm.icmp "slt" %129, %3 : i64
    llvm.cond_br %130, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %131 = llvm.getelementptr %26[%129] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %132 = llvm.load %131 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %133 = llvm.call @rand() : () -> i32
    %134 = llvm.extractvalue %132[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.getelementptr %134[%127] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %133, %135 : i32, !llvm.ptr
    %136 = llvm.getelementptr %42[%129] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %137 = llvm.load %136 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %138 = llvm.call @rand() : () -> i32
    %139 = llvm.extractvalue %137[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.getelementptr %139[%127] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %138, %140 : i32, !llvm.ptr
    %141 = llvm.add %129, %2  : i64
    llvm.br ^bb12(%141 : i64)
  ^bb14:  // pred: ^bb12
    %142 = llvm.add %127, %2  : i64
    llvm.br ^bb10(%142 : i64)
  ^bb15:  // pred: ^bb10
    %143 = llvm.mlir.addressof @str2 : !llvm.ptr
    %144 = llvm.getelementptr %143[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<22 x i8>
    %145 = llvm.call @printf(%144) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    %146 = llvm.call @clock() : () -> i64
    llvm.call @Needleman_Wunsch(%20, %26, %4, %12, %2, %36, %42, %4, %28, %2, %77, %83, %4, %69, %2) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64) -> ()
    %147 = llvm.call @clock() : () -> i64
    %148 = llvm.sub %147, %146  : i64
    %149 = llvm.sitofp %148 : i64 to f64
    %150 = llvm.fdiv %149, %6  : f64
    %151 = llvm.mlir.addressof @str3 : !llvm.ptr
    %152 = llvm.getelementptr %151[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<46 x i8>
    %153 = llvm.call @printf(%152, %150) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr, f64) -> i32
    llvm.br ^bb16(%4 : i64)
  ^bb16(%154: i64):  // 2 preds: ^bb15, ^bb17
    %155 = llvm.icmp "slt" %154, %3 : i64
    llvm.cond_br %155, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %156 = llvm.getelementptr %26[%154] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %157 = llvm.load %156 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %158 = llvm.extractvalue %157[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @free(%158) : (!llvm.ptr) -> ()
    %159 = llvm.getelementptr %42[%154] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %160 = llvm.load %159 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %161 = llvm.extractvalue %160[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @free(%161) : (!llvm.ptr) -> ()
    %162 = llvm.add %154, %2  : i64
    llvm.br ^bb16(%162 : i64)
  ^bb18:  // pred: ^bb16
    llvm.call @free(%20) : (!llvm.ptr) -> ()
    llvm.call @free(%36) : (!llvm.ptr) -> ()
    llvm.br ^bb19(%4 : i64)
  ^bb19(%163: i64):  // 2 preds: ^bb18, ^bb25
    %164 = llvm.icmp "slt" %163, %3 : i64
    llvm.cond_br %164, ^bb20, ^bb26
  ^bb20:  // pred: ^bb19
    llvm.cond_br %5, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %165 = llvm.getelementptr %83[%163] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %166 = llvm.load %165 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    llvm.br ^bb22(%4 : i64)
  ^bb22(%167: i64):  // 2 preds: ^bb21, ^bb23
    %168 = llvm.icmp "slt" %167, %3 : i64
    llvm.cond_br %168, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %169 = llvm.extractvalue %166[1] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.getelementptr %169[%167] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %171 = llvm.load %170 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %172 = llvm.extractvalue %171[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @free(%172) : (!llvm.ptr) -> ()
    %173 = llvm.add %167, %2  : i64
    llvm.br ^bb22(%173 : i64)
  ^bb24:  // pred: ^bb22
    llvm.br ^bb25
  ^bb25:  // 2 preds: ^bb20, ^bb24
    %174 = llvm.getelementptr %83[%163] : (!llvm.ptr, i64) -> !llvm.ptr, !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %175 = llvm.load %174 : !llvm.ptr -> !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)>
    %176 = llvm.extractvalue %175[0] : !llvm.struct<(ptr, ptr, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.call @free(%176) : (!llvm.ptr) -> ()
    %177 = llvm.add %163, %2  : i64
    llvm.br ^bb19(%177 : i64)
  ^bb26:  // pred: ^bb19
    llvm.call @free(%77) : (!llvm.ptr) -> ()
    %178 = llvm.mlir.addressof @str4 : !llvm.ptr
    %179 = llvm.getelementptr %178[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<11 x i8>
    %180 = llvm.call @printf(%179) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return %8 : i32
  }
  llvm.func @rand() -> i32 attributes {sym_visibility = "private"}
}

