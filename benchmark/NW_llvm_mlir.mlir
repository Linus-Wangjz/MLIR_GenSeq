module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<!llvm.ptr<271>, dense<32> : vector<4xi32>>, #dlti.dl_entry<!llvm.ptr<270>, dense<32> : vector<4xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr, dense<64> : vector<4xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>, #dlti.dl_entry<!llvm.ptr<272>, dense<64> : vector<4xi32>>, #dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<"dlti.stack_alignment", 128 : i32>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
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
    %8 = builtin.unrealized_conversion_cast %7 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x50xi32>
    %9 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)>
    %10 = llvm.insertvalue %arg7, %9[0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %arg8, %10[1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[2] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.insertvalue %arg10, %12[3, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[4, 0] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.insertvalue %arg11, %14[3, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.insertvalue %arg13, %15[4, 1] : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = builtin.unrealized_conversion_cast %16 : !llvm.struct<(ptr, ptr, i64, array<2 x i64>, array<2 x i64>)> to memref<?x50xi32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %19 = llvm.insertvalue %arg14, %18[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %arg15, %19[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %arg16, %20[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.insertvalue %arg20, %22[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %arg18, %23[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = llvm.insertvalue %arg21, %24[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.insertvalue %arg19, %25[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.insertvalue %arg22, %26[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = builtin.unrealized_conversion_cast %27 : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> to memref<?x51x51xi32>
    %29 = llvm.mlir.constant(-5 : i32) : i32
    %30 = llvm.mlir.constant(2 : i32) : i32
    %31 = llvm.mlir.constant(0 : i32) : i32
    affine.for %arg23 = 0 to 512 {
      affine.for %arg24 = 0 to 51 {
        %32 = builtin.unrealized_conversion_cast %arg24 : index to i64
        %33 = llvm.trunc %32 : i64 to i32
        %34 = llvm.sub %31, %33  : i32
        affine.store %34, %28[%arg23, %arg24, 0] : memref<?x51x51xi32>
        affine.store %34, %28[%arg23, 0, %arg24] : memref<?x51x51xi32>
      }
    }
    affine.for %arg23 = 0 to 512 {
      affine.for %arg24 = 1 to 51 {
        affine.for %arg25 = 1 to 51 {
          %32 = affine.load %28[%arg23, %arg24 - 1, %arg25] : memref<?x51x51xi32>
          %33 = llvm.add %32, %29  : i32
          %34 = affine.load %28[%arg23, %arg24, %arg25 - 1] : memref<?x51x51xi32>
          %35 = llvm.add %34, %29  : i32
          %36 = affine.load %28[%arg23, %arg24 - 1, %arg25 - 1] : memref<?x51x51xi32>
          %37 = affine.load %8[%arg23, %arg24 - 1] : memref<?x50xi32>
          %38 = affine.load %17[%arg23, %arg24 - 1] : memref<?x50xi32>
          %39 = llvm.icmp "eq" %37, %38 : i32
          %40 = scf.if %39 -> (i32) {
            %45 = llvm.add %36, %30  : i32
            scf.yield %45 : i32
          } else {
            %45 = llvm.add %36, %29  : i32
            scf.yield %45 : i32
          }
          %41 = llvm.icmp "slt" %33, %35 : i32
          %42 = llvm.select %41, %35, %33 : i1, i32
          %43 = llvm.icmp "slt" %42, %40 : i32
          %44 = llvm.select %43, %40, %42 : i1, i32
          affine.store %44, %28[%arg23, %arg24, %arg25] : memref<?x51x51xi32>
        }
      }
    }
    llvm.return
  }
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(-5 : i32) : i32
    %1 = llvm.mlir.constant(-1 : index) : i64
    %2 = llvm.mlir.constant(-1 : i32) : i32
    %3 = llvm.mlir.constant(2 : i32) : i32
    %4 = llvm.mlir.constant(4 : i32) : i32
    %5 = llvm.mlir.constant(3 : i32) : i32
    %6 = llvm.mlir.constant(0 : i32) : i32
    %7 = llvm.mlir.constant(512 : index) : i64
    %8 = llvm.mlir.constant(51 : index) : i64
    %9 = llvm.mlir.constant(51 : index) : i64
    %10 = llvm.mlir.constant(1 : index) : i64
    %11 = llvm.mlir.constant(2601 : index) : i64
    %12 = llvm.mlir.constant(1331712 : index) : i64
    %13 = llvm.alloca %12 x i32 : (i64) -> !llvm.ptr
    %14 = llvm.mlir.undef : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)>
    %15 = llvm.insertvalue %13, %14[0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %13, %15[1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.insertvalue %17, %16[2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %7, %18[3, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %8, %19[3, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %9, %20[3, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.insertvalue %11, %21[4, 0] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.insertvalue %9, %22[4, 1] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.insertvalue %10, %23[4, 2] : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> 
    %25 = builtin.unrealized_conversion_cast %24 : !llvm.struct<(ptr, ptr, i64, array<3 x i64>, array<3 x i64>)> to memref<512x51x51xi32>
    affine.for %arg0 = 0 to 512 {
      affine.for %arg1 = 0 to 51 {
        %29 = builtin.unrealized_conversion_cast %arg1 : index to i64
        %30 = llvm.trunc %29 : i64 to i32
        %31 = llvm.sub %6, %30  : i32
        affine.store %31, %25[%arg0, %arg1, 0] : memref<512x51x51xi32>
        affine.store %31, %25[%arg0, 0, %arg1] : memref<512x51x51xi32>
      }
    }
    affine.for %arg0 = 0 to 512 {
      %29 = builtin.unrealized_conversion_cast %arg0 : index to i64
      %30 = llvm.trunc %29 : i64 to i32
      %31 = llvm.mul %30, %5  : i32
      %32 = llvm.add %30, %2  : i32
      affine.for %arg1 = 1 to 51 {
        %33 = builtin.unrealized_conversion_cast %arg1 : index to i64
        %34 = llvm.add %33, %1  : i64
        %35 = llvm.trunc %34 : i64 to i32
        %36 = llvm.mul %30, %35  : i32
        %37 = llvm.add %36, %31  : i32
        %38 = llvm.add %37, %35  : i32
        %39 = llvm.srem %38, %4  : i32
        %40 = llvm.mul %32, %35  : i32
        %41 = llvm.mul %40, %5  : i32
        %42 = llvm.add %41, %30  : i32
        %43 = llvm.mul %35, %3  : i32
        %44 = llvm.add %42, %43  : i32
        %45 = llvm.srem %44, %4  : i32
        %46 = llvm.icmp "eq" %39, %45 : i32
        affine.for %arg2 = 1 to 51 {
          %47 = affine.load %25[%arg0, %arg1 - 1, %arg2] : memref<512x51x51xi32>
          %48 = llvm.add %47, %0  : i32
          %49 = affine.load %25[%arg0, %arg1, %arg2 - 1] : memref<512x51x51xi32>
          %50 = llvm.add %49, %0  : i32
          %51 = affine.load %25[%arg0, %arg1 - 1, %arg2 - 1] : memref<512x51x51xi32>
          %52 = scf.if %46 -> (i32) {
            %57 = llvm.add %51, %3  : i32
            scf.yield %57 : i32
          } else {
            %57 = llvm.add %51, %0  : i32
            scf.yield %57 : i32
          }
          %53 = llvm.icmp "slt" %48, %50 : i32
          %54 = llvm.select %53, %50, %48 : i1, i32
          %55 = llvm.icmp "slt" %54, %52 : i32
          %56 = llvm.select %55, %52, %54 : i1, i32
          affine.store %56, %25[%arg0, %arg1, %arg2] : memref<512x51x51xi32>
        }
      }
    }
    %26 = llvm.mlir.addressof @str0 : !llvm.ptr
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr) -> !llvm.ptr, !llvm.array<10 x i8>
    %28 = llvm.call @printf(%27) vararg(!llvm.func<i32 (ptr, ...)>) : (!llvm.ptr) -> i32
    llvm.return %6 : i32
  }
}

