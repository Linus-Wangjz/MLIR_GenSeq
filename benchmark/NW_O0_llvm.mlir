module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>, #dlti.dl_entry<"dlti.endianness", "little">>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
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
    %26 = llvm.mlir.constant(-5 : i32) : i32
    %27 = llvm.mlir.constant(2 : i32) : i32
    %28 = llvm.mlir.constant(7 : i32) : i32
    %29 = llvm.mlir.constant(0 : i32) : i32
    %30 = llvm.mlir.undef : i32
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.mlir.constant(512 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%31 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb5
    %35 = llvm.icmp "slt" %34, %32 : i64
    llvm.cond_br %35, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.mlir.constant(51 : index) : i64
    %38 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%36 : i64)
  ^bb3(%39: i64):  // 2 preds: ^bb2, ^bb4
    %40 = llvm.icmp "slt" %39, %37 : i64
    llvm.cond_br %40, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %41 = llvm.trunc %39 : i64 to i32
    %42 = llvm.sub %29, %41  : i32
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %45 = llvm.mlir.constant(2601 : index) : i64
    %46 = llvm.mul %34, %45  : i64
    %47 = llvm.mlir.constant(51 : index) : i64
    %48 = llvm.mul %39, %47  : i64
    %49 = llvm.add %46, %48  : i64
    %50 = llvm.add %49, %43  : i64
    %51 = llvm.getelementptr %44[%50] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %42, %51 : i32, !llvm.ptr
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.mlir.constant(2601 : index) : i64
    %55 = llvm.mul %34, %54  : i64
    %56 = llvm.mlir.constant(51 : index) : i64
    %57 = llvm.mul %52, %56  : i64
    %58 = llvm.add %55, %57  : i64
    %59 = llvm.add %58, %39  : i64
    %60 = llvm.getelementptr %53[%59] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %42, %60 : i32, !llvm.ptr
    %61 = llvm.add %39, %38  : i64
    llvm.br ^bb3(%61 : i64)
  ^bb5:  // pred: ^bb3
    %62 = llvm.add %34, %33  : i64
    llvm.br ^bb1(%62 : i64)
  ^bb6:  // pred: ^bb1
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(512 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%63, %30 : i64, i32)
  ^bb7(%66: i64, %67: i32):  // 2 preds: ^bb6, ^bb14
    %68 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %68, ^bb8, ^bb15
  ^bb8:  // pred: ^bb7
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(51 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%69, %67 : i64, i32)
  ^bb9(%72: i64, %73: i32):  // 2 preds: ^bb8, ^bb13
    %74 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %74, ^bb10, ^bb14
  ^bb10:  // pred: ^bb9
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(51 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb11(%75, %73 : i64, i32)
  ^bb11(%78: i64, %79: i32):  // 2 preds: ^bb10, ^bb12
    %80 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %80, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %81 = llvm.mlir.constant(-1 : index) : i64
    %82 = llvm.add %78, %81  : i64
    %83 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.mlir.constant(2601 : index) : i64
    %85 = llvm.mul %66, %84  : i64
    %86 = llvm.mlir.constant(51 : index) : i64
    %87 = llvm.mul %72, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.add %88, %82  : i64
    %90 = llvm.getelementptr %83[%89] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %91 = llvm.load %90 : !llvm.ptr -> i32
    %92 = llvm.add %91, %26  : i32
    %93 = llvm.mlir.constant(-1 : index) : i64
    %94 = llvm.add %72, %93  : i64
    %95 = llvm.mlir.constant(-1 : index) : i64
    %96 = llvm.add %78, %95  : i64
    %97 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.mlir.constant(2601 : index) : i64
    %99 = llvm.mul %66, %98  : i64
    %100 = llvm.mlir.constant(51 : index) : i64
    %101 = llvm.mul %94, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.add %102, %96  : i64
    %104 = llvm.getelementptr %97[%103] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %105 = llvm.load %104 : !llvm.ptr -> i32
    %106 = llvm.mlir.constant(-1 : index) : i64
    %107 = llvm.add %72, %106  : i64
    %108 = llvm.extractvalue %7[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.mlir.constant(50 : index) : i64
    %110 = llvm.mul %66, %109  : i64
    %111 = llvm.add %110, %107  : i64
    %112 = llvm.getelementptr %108[%111] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %113 = llvm.load %112 : !llvm.ptr -> i32
    %114 = llvm.mlir.constant(-1 : index) : i64
    %115 = llvm.add %72, %114  : i64
    %116 = llvm.extractvalue %15[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %117 = llvm.mlir.constant(50 : index) : i64
    %118 = llvm.mul %66, %117  : i64
    %119 = llvm.add %118, %115  : i64
    %120 = llvm.getelementptr %116[%119] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    %121 = llvm.load %120 : !llvm.ptr -> i32
    %122 = llvm.icmp "eq" %113, %121 : i32
    %123 = llvm.zext %122 : i1 to i32
    %124 = llvm.mul %123, %28  : i32
    %125 = llvm.sub %105, %124  : i32
    %126 = llvm.add %125, %27  : i32
    %127 = llvm.icmp "slt" %79, %92 : i32
    %128 = llvm.select %127, %92, %79 : i1, i32
    %129 = llvm.icmp "slt" %128, %126 : i32
    %130 = llvm.select %129, %126, %128 : i1, i32
    %131 = llvm.extractvalue %25[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %132 = llvm.mlir.constant(2601 : index) : i64
    %133 = llvm.mul %66, %132  : i64
    %134 = llvm.mlir.constant(51 : index) : i64
    %135 = llvm.mul %72, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.add %136, %78  : i64
    %138 = llvm.getelementptr %131[%137] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %130, %138 : i32, !llvm.ptr
    %139 = llvm.add %78, %77  : i64
    llvm.br ^bb11(%139, %130 : i64, i32)
  ^bb13:  // pred: ^bb11
    %140 = llvm.add %72, %71  : i64
    llvm.br ^bb9(%140, %79 : i64, i32)
  ^bb14:  // pred: ^bb9
    %141 = llvm.add %66, %65  : i64
    llvm.br ^bb7(%141, %73 : i64, i32)
  ^bb15:  // pred: ^bb7
    llvm.return
  }
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(-1 : i32) : i32
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(4 : i32) : i32
    %3 = llvm.mlir.constant(3 : i32) : i32
    %4 = llvm.mlir.constant(0 : i32) : i32
    %5 = llvm.mlir.constant(512 : index) : i64
    %6 = llvm.mlir.constant(51 : index) : i64
    %7 = llvm.mlir.constant(51 : index) : i64
    %8 = llvm.mlir.constant(1 : index) : i64
    %9 = llvm.mlir.constant(2601 : index) : i64
    %10 = llvm.mlir.constant(1331712 : index) : i64
    %11 = llvm.alloca %10 x i32 : (i64) -> !llvm.ptr
    %12 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %13 = llvm.insertvalue %11, %12[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %11, %13[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.insertvalue %15, %14[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %5, %16[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %6, %17[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %7, %18[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %9, %19[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %7, %20[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %8, %21[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(512 : index) : i64
    %24 = llvm.mlir.constant(50 : index) : i64
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.mlir.constant(25600 : index) : i64
    %27 = llvm.alloca %26 x i32 : (i64) -> !llvm.ptr
    %28 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %33 = llvm.insertvalue %23, %32[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.insertvalue %24, %33[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %35 = llvm.insertvalue %24, %34[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.insertvalue %25, %35[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %37 = llvm.mlir.constant(512 : index) : i64
    %38 = llvm.mlir.constant(50 : index) : i64
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.mlir.constant(25600 : index) : i64
    %41 = llvm.alloca %40 x i32 : (i64) -> !llvm.ptr
    %42 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %37, %46[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %38, %47[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %38, %48[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.insertvalue %39, %49[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.mlir.constant(512 : index) : i64
    %53 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%51 : i64)
  ^bb1(%54: i64):  // 2 preds: ^bb0, ^bb5
    %55 = llvm.icmp "slt" %54, %52 : i64
    llvm.cond_br %55, ^bb2, ^bb6
  ^bb2:  // pred: ^bb1
    %56 = llvm.trunc %54 : i64 to i32
    %57 = llvm.mul %56, %3  : i32
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.mlir.constant(50 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%58 : i64)
  ^bb3(%61: i64):  // 2 preds: ^bb2, ^bb4
    %62 = llvm.icmp "slt" %61, %59 : i64
    llvm.cond_br %62, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %63 = llvm.trunc %61 : i64 to i32
    %64 = llvm.mul %56, %63  : i32
    %65 = llvm.add %64, %57  : i32
    %66 = llvm.add %65, %63  : i32
    %67 = llvm.srem %66, %2  : i32
    %68 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.mlir.constant(50 : index) : i64
    %70 = llvm.mul %54, %69  : i64
    %71 = llvm.add %70, %61  : i64
    %72 = llvm.getelementptr %68[%71] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %67, %72 : i32, !llvm.ptr
    %73 = llvm.add %61, %60  : i64
    llvm.br ^bb3(%73 : i64)
  ^bb5:  // pred: ^bb3
    %74 = llvm.add %54, %53  : i64
    llvm.br ^bb1(%74 : i64)
  ^bb6:  // pred: ^bb1
    %75 = llvm.mlir.constant(0 : index) : i64
    %76 = llvm.mlir.constant(512 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%75 : i64)
  ^bb7(%78: i64):  // 2 preds: ^bb6, ^bb11
    %79 = llvm.icmp "slt" %78, %76 : i64
    llvm.cond_br %79, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %80 = llvm.trunc %78 : i64 to i32
    %81 = llvm.add %80, %0  : i32
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.mlir.constant(50 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%82 : i64)
  ^bb9(%85: i64):  // 2 preds: ^bb8, ^bb10
    %86 = llvm.icmp "slt" %85, %83 : i64
    llvm.cond_br %86, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %87 = llvm.trunc %85 : i64 to i32
    %88 = llvm.mul %81, %87  : i32
    %89 = llvm.mul %88, %3  : i32
    %90 = llvm.add %89, %80  : i32
    %91 = llvm.mul %87, %1  : i32
    %92 = llvm.add %90, %91  : i32
    %93 = llvm.srem %92, %2  : i32
    %94 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.mlir.constant(50 : index) : i64
    %96 = llvm.mul %78, %95  : i64
    %97 = llvm.add %96, %85  : i64
    %98 = llvm.getelementptr %94[%97] : (!llvm.ptr, i64) -> !llvm.ptr, i32
    llvm.store %93, %98 : i32, !llvm.ptr
    %99 = llvm.add %85, %84  : i64
    llvm.br ^bb9(%99 : i64)
  ^bb11:  // pred: ^bb9
    %100 = llvm.add %78, %77  : i64
    llvm.br ^bb7(%100 : i64)
  ^bb12:  // pred: ^bb7
    %101 = llvm.extractvalue %50[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.extractvalue %50[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.extractvalue %50[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.extractvalue %50[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.extractvalue %50[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.extractvalue %50[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %107 = llvm.extractvalue %50[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %108 = llvm.extractvalue %36[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %109 = llvm.extractvalue %36[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %110 = llvm.extractvalue %36[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %111 = llvm.extractvalue %36[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %112 = llvm.extractvalue %36[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %113 = llvm.extractvalue %36[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %114 = llvm.extractvalue %36[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %115 = llvm.extractvalue %22[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %116 = llvm.extractvalue %22[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.extractvalue %22[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %118 = llvm.extractvalue %22[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %119 = llvm.extractvalue %22[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.extractvalue %22[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %121 = llvm.extractvalue %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.extractvalue %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.extractvalue %22[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.call @Needleman_Wunsch(%101, %102, %103, %104, %105, %106, %107, %108, %109, %110, %111, %112, %113, %114, %115, %116, %117, %118, %119, %120, %121, %122, %123) : (!llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, !llvm.ptr, !llvm.ptr, i64, i64, i64, i64, i64, i64, i64) -> ()
    %124 = llvm.mlir.addressof @str0 : !llvm.ptr
    %125 = llvm.getelementptr %124[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %126 = llvm.call @printf(%125) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return %4 : i32
  }
}

