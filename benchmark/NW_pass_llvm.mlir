module {
  llvm.mlir.global internal constant @str0("Success!\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr, ...) -> i32
  llvm.func @Needleman_Wunsch(%arg0: !llvm.ptr, %arg1: !llvm.ptr, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr, %arg8: !llvm.ptr, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr, %arg15: !llvm.ptr, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64) {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %17 = llvm.insertvalue %arg14, %16[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %arg16, %18[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.insertvalue %arg22, %24[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.mlir.constant(dense<-5> : vector<8xi32>) : vector<8xi32>
    %27 = llvm.mlir.constant(dense<7> : vector<8xi32>) : vector<8xi32>
    %28 = llvm.mlir.constant(dense<2> : vector<8xi32>) : vector<8xi32>
    %29 = llvm.mlir.constant(8 : index) : i64
    %30 = llvm.mlir.constant(51 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(512 : index) : i64
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.mlir.constant(0 : i32) : i32
    llvm.br ^bb1(%33 : i64)
  ^bb1(%35: i64):  // 2 preds: ^bb0, ^bb5
    %36 = llvm.icmp "slt" %35, %32 : i64
    llvm.cond_br %36, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    llvm.br ^bb3(%33 : i64)
  ^bb3(%37: i64):  // 2 preds: ^bb2, ^bb4
    %38 = llvm.icmp "slt" %37, %30 : i64
    llvm.cond_br %38, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %39 = llvm.trunc %37 : i64 to i32
    %40 = llvm.sub %34, %39  : i32
    %41 = llvm.mlir.constant(26112 : index) : i64
    %42 = llvm.mul %37, %41  : i64
    %43 = llvm.mlir.constant(512 : index) : i64
    %44 = llvm.mul %33, %43  : i64
    %45 = llvm.add %42, %44  : i64
    %46 = llvm.add %45, %35  : i64
    %47 = llvm.getelementptr %arg15[%46] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %40, %47 : i32, !llvm.ptr
    %48 = llvm.mlir.constant(26112 : index) : i64
    %49 = llvm.mul %33, %48  : i64
    %50 = llvm.mlir.constant(512 : index) : i64
    %51 = llvm.mul %37, %50  : i64
    %52 = llvm.add %49, %51  : i64
    %53 = llvm.add %52, %35  : i64
    %54 = llvm.getelementptr %arg15[%53] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %40, %54 : i32, !llvm.ptr
    %55 = llvm.add %37, %31  : i64
    llvm.br ^bb3(%55 : i64)
  ^bb5:  // pred: ^bb3
    %56 = llvm.add %35, %31  : i64
    llvm.br ^bb1(%56 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%33 : i64)
  ^bb7(%57: i64):  // 2 preds: ^bb6, ^bb14
    %58 = llvm.icmp "slt" %57, %32 : i64
    llvm.cond_br %58, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%31 : i64)
  ^bb9(%59: i64):  // 2 preds: ^bb8, ^bb13
    %60 = llvm.icmp "slt" %59, %30 : i64
    llvm.cond_br %60, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    llvm.br ^bb11(%31 : i64)
  ^bb11(%61: i64):  // 2 preds: ^bb10, ^bb12
    %62 = llvm.icmp "slt" %61, %30 : i64
    llvm.cond_br %62, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %63 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(26112 : index) : i64
    %65 = llvm.mul %59, %64  : i64
    %66 = llvm.mlir.constant(512 : index) : i64
    %67 = llvm.mul %61, %66  : i64
    %68 = llvm.add %65, %67  : i64
    %69 = llvm.add %68, %57  : i64
    %70 = llvm.getelementptr %63[%69] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %71 = llvm.load %70 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %72 = llvm.add %71, %26  : vector<8xi32>
    %73 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.mlir.constant(26112 : index) : i64
    %75 = llvm.mul %59, %74  : i64
    %76 = llvm.mlir.constant(512 : index) : i64
    %77 = llvm.mul %61, %76  : i64
    %78 = llvm.add %75, %77  : i64
    %79 = llvm.add %78, %57  : i64
    %80 = llvm.getelementptr %73[%79] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %81 = llvm.load %80 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %82 = llvm.add %81, %26  : vector<8xi32>
    %83 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.mlir.constant(26112 : index) : i64
    %85 = llvm.mul %59, %84  : i64
    %86 = llvm.mlir.constant(512 : index) : i64
    %87 = llvm.mul %61, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.add %88, %57  : i64
    %90 = llvm.getelementptr %83[%89] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %91 = llvm.load %90 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %92 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.mlir.constant(512 : index) : i64
    %94 = llvm.mul %59, %93  : i64
    %95 = llvm.add %94, %57  : i64
    %96 = llvm.getelementptr %92[%95] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %97 = llvm.load %96 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %98 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.mlir.constant(512 : index) : i64
    %100 = llvm.mul %59, %99  : i64
    %101 = llvm.add %100, %57  : i64
    %102 = llvm.getelementptr %98[%101] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %103 = llvm.load %102 {alignment = 4 : i64} : !llvm.ptr -> vector<8xi32>
    %104 = llvm.icmp "eq" %97, %103 : vector<8xi32>
    %105 = llvm.zext %104 : vector<8xi1> to vector<8xi32>
    %106 = llvm.mul %105, %27  : vector<8xi32>
    %107 = llvm.sub %91, %106  : vector<8xi32>
    %108 = llvm.add %107, %28  : vector<8xi32>
    %109 = llvm.icmp "slt" %72, %82 : vector<8xi32>
    %110 = llvm.select %109, %82, %72 : vector<8xi1>, vector<8xi32>
    %111 = llvm.icmp "slt" %110, %108 : vector<8xi32>
    %112 = llvm.select %111, %108, %110 : vector<8xi1>, vector<8xi32>
    %113 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.mlir.constant(26112 : index) : i64
    %115 = llvm.mul %59, %114  : i64
    %116 = llvm.mlir.constant(512 : index) : i64
    %117 = llvm.mul %61, %116  : i64
    %118 = llvm.add %115, %117  : i64
    %119 = llvm.add %118, %57  : i64
    %120 = llvm.getelementptr %113[%119] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %112, %120 {alignment = 4 : i64} : vector<8xi32>, !llvm.ptr
    %121 = llvm.add %61, %31  : i64
    llvm.br ^bb11(%121 : i64)
  ^bb13:  // pred: ^bb11
    %122 = llvm.add %59, %31  : i64
    llvm.br ^bb9(%122 : i64)
  ^bb14:  // pred: ^bb9
    %123 = llvm.add %57, %29  : i64
    llvm.br ^bb7(%123 : i64)
  ^bb15:  // pred: ^bb7
    llvm.return
  }
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(50 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(512 : index) : i64
    %3 = llvm.mlir.constant(0 : index) : i64
    %4 = llvm.mlir.constant(-1 : i32) : i32
    %5 = llvm.mlir.constant(2 : i32) : i32
    %6 = llvm.mlir.constant(4 : i32) : i32
    %7 = llvm.mlir.constant(3 : i32) : i32
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(51 : index) : i64
    %10 = llvm.mlir.constant(51 : index) : i64
    %11 = llvm.mlir.constant(512 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(26112 : index) : i64
    %14 = llvm.mlir.constant(1331712 : index) : i64
    %15 = llvm.alloca %14 x i32 : (i64) -> !llvm.ptr
    %16 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %9, %20[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %10, %21[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.insertvalue %11, %22[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %13, %23[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.insertvalue %11, %24[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %12, %25[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.mlir.constant(50 : index) : i64
    %28 = llvm.mlir.constant(512 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(25600 : index) : i64
    %31 = llvm.alloca %30 x i32 : (i64) -> !llvm.ptr
    %32 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.insertvalue %27, %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %28, %37[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.insertvalue %28, %38[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %40 = llvm.insertvalue %29, %39[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(50 : index) : i64
    %42 = llvm.mlir.constant(512 : index) : i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.mlir.constant(25600 : index) : i64
    %45 = llvm.alloca %44 x i32 : (i64) -> !llvm.ptr
    %46 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %41, %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %42, %51[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %42, %52[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.insertvalue %43, %53[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%3 : i64)
  ^bb1(%55: i64):  // 2 preds: ^bb0, ^bb5
    %56 = llvm.icmp "slt" %55, %2 : i64
    llvm.cond_br %56, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %57 = llvm.trunc %55 : i64 to i32
    %58 = llvm.mul %57, %7  : i32
    llvm.br ^bb3(%3 : i64)
  ^bb3(%59: i64):  // 2 preds: ^bb2, ^bb4
    %60 = llvm.icmp "slt" %59, %0 : i64
    llvm.cond_br %60, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %61 = llvm.trunc %59 : i64 to i32
    %62 = llvm.mul %57, %61  : i32
    %63 = llvm.add %62, %58  : i32
    %64 = llvm.add %63, %61  : i32
    %65 = llvm.srem %64, %6  : i32
    %66 = llvm.mlir.constant(512 : index) : i64
    %67 = llvm.mul %59, %66  : i64
    %68 = llvm.add %67, %55  : i64
    %69 = llvm.getelementptr %45[%68] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %65, %69 : i32, !llvm.ptr
    %70 = llvm.add %59, %1  : i64
    llvm.br ^bb3(%70 : i64)
  ^bb5:  // pred: ^bb3
    %71 = llvm.add %55, %1  : i64
    llvm.br ^bb1(%71 : i64)
  ^bb6:  // pred: ^bb1
    llvm.br ^bb7(%3 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb11
    %73 = llvm.icmp "slt" %72, %2 : i64
    llvm.cond_br %73, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %74 = llvm.trunc %72 : i64 to i32
    %75 = llvm.add %74, %4  : i32
    llvm.br ^bb9(%3 : i64)
  ^bb9(%76: i64):  // 2 preds: ^bb8, ^bb10
    %77 = llvm.icmp "slt" %76, %0 : i64
    llvm.cond_br %77, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %78 = llvm.trunc %76 : i64 to i32
    %79 = llvm.mul %75, %78  : i32
    %80 = llvm.mul %79, %7  : i32
    %81 = llvm.add %80, %74  : i32
    %82 = llvm.mul %78, %5  : i32
    %83 = llvm.add %81, %82  : i32
    %84 = llvm.srem %83, %6  : i32
    %85 = llvm.mlir.constant(512 : index) : i64
    %86 = llvm.mul %76, %85  : i64
    %87 = llvm.add %86, %72  : i64
    %88 = llvm.getelementptr %31[%87] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %84, %88 : i32, !llvm.ptr
    %89 = llvm.add %76, %1  : i64
    llvm.br ^bb9(%89 : i64)
  ^bb11:  // pred: ^bb9
    %90 = llvm.add %72, %1  : i64
    llvm.br ^bb7(%90 : i64)
  ^bb12:  // pred: ^bb7
    llvm.call @Needleman_Wunsch(%45, %45, %49, %41, %42, %42, %43, %31, %31, %35, %27, %28, %28, %29, %15, %15, %19, %9, %10, %11, %13, %11, %12) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64) -> ()
    %91 = llvm.mlir.addressof @str0 : !llvm.ptr
    %92 = llvm.getelementptr %91[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %93 = llvm.call @printf(%92) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return %8 : i32
  }
}

