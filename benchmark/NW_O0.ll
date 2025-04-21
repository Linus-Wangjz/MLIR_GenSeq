; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str0 = internal constant [10 x i8] c"Success!\0A\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare i32 @printf(ptr, ...)

define void @Needleman_Wunsch(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22) {
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %0, 0
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, ptr %1, 1
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 %2, 2
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 %3, 3, 0
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 %5, 4, 0
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 %4, 3, 1
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, i64 %6, 4, 1
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %7, 0
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, ptr %8, 1
  %33 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %9, 2
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %33, i64 %10, 3, 0
  %35 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %12, 4, 0
  %36 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %35, i64 %11, 3, 1
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %36, i64 %13, 4, 1
  %38 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %14, 0
  %39 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %38, ptr %15, 1
  %40 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %39, i64 %16, 2
  %41 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %40, i64 %17, 3, 0
  %42 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %41, i64 %20, 4, 0
  %43 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %42, i64 %18, 3, 1
  %44 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %43, i64 %21, 4, 1
  %45 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %44, i64 %19, 3, 2
  %46 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %45, i64 %22, 4, 2
  br label %47

47:                                               ; preds = %69, %23
  %48 = phi i64 [ %70, %69 ], [ 0, %23 ]
  %49 = icmp slt i64 %48, 512
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %54, %50
  %52 = phi i64 [ %68, %54 ], [ 0, %50 ]
  %53 = icmp slt i64 %52, 51
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = trunc i64 %52 to i32
  %56 = sub i32 0, %55
  %57 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %58 = mul i64 %48, 2601
  %59 = mul i64 %52, 51
  %60 = add i64 %58, %59
  %61 = add i64 %60, 0
  %62 = getelementptr i32, ptr %57, i64 %61
  store i32 %56, ptr %62, align 4
  %63 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %64 = mul i64 %48, 2601
  %65 = add i64 %64, 0
  %66 = add i64 %65, %52
  %67 = getelementptr i32, ptr %63, i64 %66
  store i32 %56, ptr %67, align 4
  %68 = add i64 %52, 1
  br label %51

69:                                               ; preds = %51
  %70 = add i64 %48, 1
  br label %47

71:                                               ; preds = %47
  br label %72

72:                                               ; preds = %135, %71
  %73 = phi i64 [ %136, %135 ], [ 0, %71 ]
  %74 = phi i32 [ %79, %135 ], [ undef, %71 ]
  %75 = icmp slt i64 %73, 512
  br i1 %75, label %76, label %137

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %133, %76
  %78 = phi i64 [ %134, %133 ], [ 1, %76 ]
  %79 = phi i32 [ %84, %133 ], [ %74, %76 ]
  %80 = icmp slt i64 %78, 51
  br i1 %80, label %81, label %135

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %86, %81
  %83 = phi i64 [ %132, %86 ], [ 1, %81 ]
  %84 = phi i32 [ %125, %86 ], [ %79, %81 ]
  %85 = icmp slt i64 %83, 51
  br i1 %85, label %86, label %133

86:                                               ; preds = %82
  %87 = add i64 %83, -1
  %88 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %89 = mul i64 %73, 2601
  %90 = mul i64 %78, 51
  %91 = add i64 %89, %90
  %92 = add i64 %91, %87
  %93 = getelementptr i32, ptr %88, i64 %92
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -5
  %96 = add i64 %78, -1
  %97 = add i64 %83, -1
  %98 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %99 = mul i64 %73, 2601
  %100 = mul i64 %96, 51
  %101 = add i64 %99, %100
  %102 = add i64 %101, %97
  %103 = getelementptr i32, ptr %98, i64 %102
  %104 = load i32, ptr %103, align 4
  %105 = add i64 %78, -1
  %106 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, 1
  %107 = mul i64 %73, 50
  %108 = add i64 %107, %105
  %109 = getelementptr i32, ptr %106, i64 %108
  %110 = load i32, ptr %109, align 4
  %111 = add i64 %78, -1
  %112 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, 1
  %113 = mul i64 %73, 50
  %114 = add i64 %113, %111
  %115 = getelementptr i32, ptr %112, i64 %114
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %110, %116
  %118 = zext i1 %117 to i32
  %119 = mul i32 %118, 7
  %120 = sub i32 %104, %119
  %121 = add i32 %120, 2
  %122 = icmp slt i32 %84, %95
  %123 = select i1 %122, i32 %95, i32 %84
  %124 = icmp slt i32 %123, %121
  %125 = select i1 %124, i32 %121, i32 %123
  %126 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %127 = mul i64 %73, 2601
  %128 = mul i64 %78, 51
  %129 = add i64 %127, %128
  %130 = add i64 %129, %83
  %131 = getelementptr i32, ptr %126, i64 %130
  store i32 %125, ptr %131, align 4
  %132 = add i64 %83, 1
  br label %82

133:                                              ; preds = %82
  %134 = add i64 %78, 1
  br label %77

135:                                              ; preds = %77
  %136 = add i64 %73, 1
  br label %72

137:                                              ; preds = %72
  ret void
}

define i32 @main() {
  %1 = alloca i32, i64 1331712, align 4
  %2 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %1, 0
  %3 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %2, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %3, i64 0, 2
  %5 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %4, i64 512, 3, 0
  %6 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %5, i64 51, 3, 1
  %7 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %6, i64 51, 3, 2
  %8 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %7, i64 2601, 4, 0
  %9 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %8, i64 51, 4, 1
  %10 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %9, i64 1, 4, 2
  %11 = alloca i32, i64 25600, align 4
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, ptr %11, 1
  %14 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, i64 0, 2
  %15 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, i64 512, 3, 0
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %15, i64 50, 3, 1
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, i64 50, 4, 0
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 1, 4, 1
  %19 = alloca i32, i64 25600, align 4
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %19, 0
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, ptr %19, 1
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 0, 2
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, i64 512, 3, 0
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 50, 3, 1
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 50, 4, 0
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 1, 4, 1
  br label %27

27:                                               ; preds = %47, %0
  %28 = phi i64 [ %48, %47 ], [ 0, %0 ]
  %29 = icmp slt i64 %28, 512
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = trunc i64 %28 to i32
  %32 = mul i32 %31, 3
  br label %33

33:                                               ; preds = %36, %30
  %34 = phi i64 [ %46, %36 ], [ 0, %30 ]
  %35 = icmp slt i64 %34, 50
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = trunc i64 %34 to i32
  %38 = mul i32 %31, %37
  %39 = add i32 %38, %32
  %40 = add i32 %39, %37
  %41 = srem i32 %40, 4
  %42 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 1
  %43 = mul i64 %28, 50
  %44 = add i64 %43, %34
  %45 = getelementptr i32, ptr %42, i64 %44
  store i32 %41, ptr %45, align 4
  %46 = add i64 %34, 1
  br label %33

47:                                               ; preds = %33
  %48 = add i64 %28, 1
  br label %27

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %72, %49
  %51 = phi i64 [ %73, %72 ], [ 0, %49 ]
  %52 = icmp slt i64 %51, 512
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = trunc i64 %51 to i32
  %55 = add i32 %54, -1
  br label %56

56:                                               ; preds = %59, %53
  %57 = phi i64 [ %71, %59 ], [ 0, %53 ]
  %58 = icmp slt i64 %57, 50
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = trunc i64 %57 to i32
  %61 = mul i32 %55, %60
  %62 = mul i32 %61, 3
  %63 = add i32 %62, %54
  %64 = mul i32 %60, 2
  %65 = add i32 %63, %64
  %66 = srem i32 %65, 4
  %67 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 1
  %68 = mul i64 %51, 50
  %69 = add i64 %68, %57
  %70 = getelementptr i32, ptr %67, i64 %69
  store i32 %66, ptr %70, align 4
  %71 = add i64 %57, 1
  br label %56

72:                                               ; preds = %56
  %73 = add i64 %51, 1
  br label %50

74:                                               ; preds = %50
  %75 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 0
  %76 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 1
  %77 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 2
  %78 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 3, 0
  %79 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 3, 1
  %80 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 4, 0
  %81 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, 4, 1
  %82 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 0
  %83 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 1
  %84 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 2
  %85 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 3, 0
  %86 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 3, 1
  %87 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 4, 0
  %88 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, 4, 1
  %89 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 0
  %90 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 1
  %91 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 2
  %92 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 0
  %93 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 1
  %94 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 3, 2
  %95 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 0
  %96 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 1
  %97 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %10, 4, 2
  call void @Needleman_Wunsch(ptr %75, ptr %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, ptr %82, ptr %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, ptr %89, ptr %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97)
  %98 = call i32 (ptr, ...) @printf(ptr @str0)
  ret i32 0
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
