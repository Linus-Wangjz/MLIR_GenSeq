; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

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

47:                                               ; preds = %66, %23
  %48 = phi i64 [ %67, %66 ], [ 0, %23 ]
  %49 = icmp slt i64 %48, 512
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %54, %50
  %52 = phi i64 [ %65, %54 ], [ 0, %50 ]
  %53 = icmp slt i64 %52, 51
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = trunc i64 %52 to i32
  %56 = sub i32 0, %55
  %57 = mul i64 %52, 26112
  %58 = add i64 %57, 0
  %59 = add i64 %58, %48
  %60 = getelementptr i32, ptr %15, i64 %59
  store i32 %56, ptr %60, align 4
  %61 = mul i64 %52, 512
  %62 = add i64 0, %61
  %63 = add i64 %62, %48
  %64 = getelementptr i32, ptr %15, i64 %63
  store i32 %56, ptr %64, align 4
  %65 = add i64 %52, 1
  br label %51

66:                                               ; preds = %51
  %67 = add i64 %48, 1
  br label %47

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %132, %68
  %70 = phi i64 [ %133, %132 ], [ 0, %68 ]
  %71 = icmp slt i64 %70, 512
  br i1 %71, label %72, label %134

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %130, %72
  %74 = phi i64 [ %131, %130 ], [ 1, %72 ]
  %75 = icmp slt i64 %74, 51
  br i1 %75, label %76, label %132

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %80, %76
  %78 = phi i64 [ %129, %80 ], [ 1, %76 ]
  %79 = icmp slt i64 %78, 51
  br i1 %79, label %80, label %130

80:                                               ; preds = %77
  %81 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %82 = mul i64 %74, 26112
  %83 = mul i64 %78, 512
  %84 = add i64 %82, %83
  %85 = add i64 %84, %70
  %86 = getelementptr i32, ptr %81, i64 %85
  %87 = load <8 x i32>, ptr %86, align 4
  %88 = add <8 x i32> %87, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %89 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %90 = mul i64 %74, 26112
  %91 = mul i64 %78, 512
  %92 = add i64 %90, %91
  %93 = add i64 %92, %70
  %94 = getelementptr i32, ptr %89, i64 %93
  %95 = load <8 x i32>, ptr %94, align 4
  %96 = add <8 x i32> %95, <i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5, i32 -5>
  %97 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %98 = mul i64 %74, 26112
  %99 = mul i64 %78, 512
  %100 = add i64 %98, %99
  %101 = add i64 %100, %70
  %102 = getelementptr i32, ptr %97, i64 %101
  %103 = load <8 x i32>, ptr %102, align 4
  %104 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, 1
  %105 = mul i64 %74, 512
  %106 = add i64 %105, %70
  %107 = getelementptr i32, ptr %104, i64 %106
  %108 = load <8 x i32>, ptr %107, align 4
  %109 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, 1
  %110 = mul i64 %74, 512
  %111 = add i64 %110, %70
  %112 = getelementptr i32, ptr %109, i64 %111
  %113 = load <8 x i32>, ptr %112, align 4
  %114 = icmp eq <8 x i32> %108, %113
  %115 = zext <8 x i1> %114 to <8 x i32>
  %116 = mul <8 x i32> %115, <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %117 = sub <8 x i32> %103, %116
  %118 = add <8 x i32> %117, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %119 = icmp slt <8 x i32> %88, %96
  %120 = select <8 x i1> %119, <8 x i32> %96, <8 x i32> %88
  %121 = icmp slt <8 x i32> %120, %118
  %122 = select <8 x i1> %121, <8 x i32> %118, <8 x i32> %120
  %123 = extractvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %46, 1
  %124 = mul i64 %74, 26112
  %125 = mul i64 %78, 512
  %126 = add i64 %124, %125
  %127 = add i64 %126, %70
  %128 = getelementptr i32, ptr %123, i64 %127
  store <8 x i32> %122, ptr %128, align 4
  %129 = add i64 %78, 1
  br label %77

130:                                              ; preds = %77
  %131 = add i64 %74, 1
  br label %73

132:                                              ; preds = %73
  %133 = add i64 %70, 8
  br label %69

134:                                              ; preds = %69
  ret void
}

define i32 @main() {
  %1 = alloca i32, i64 1331712, align 4
  %2 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } undef, ptr %1, 0
  %3 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %2, ptr %1, 1
  %4 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %3, i64 0, 2
  %5 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %4, i64 51, 3, 0
  %6 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %5, i64 51, 3, 1
  %7 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %6, i64 512, 3, 2
  %8 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %7, i64 26112, 4, 0
  %9 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %8, i64 512, 4, 1
  %10 = insertvalue { ptr, ptr, i64, [3 x i64], [3 x i64] } %9, i64 1, 4, 2
  %11 = alloca i32, i64 25600, align 4
  %12 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %11, 0
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, ptr %11, 1
  %14 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, i64 0, 2
  %15 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, i64 50, 3, 0
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %15, i64 512, 3, 1
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, i64 512, 4, 0
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 1, 4, 1
  %19 = alloca i32, i64 25600, align 4
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %19, 0
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, ptr %19, 1
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, i64 0, 2
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, i64 50, 3, 0
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 512, 3, 1
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 512, 4, 0
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 1, 4, 1
  br label %27

27:                                               ; preds = %46, %0
  %28 = phi i64 [ %47, %46 ], [ 0, %0 ]
  %29 = icmp slt i64 %28, 512
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = trunc i64 %28 to i32
  %32 = mul i32 %31, 3
  br label %33

33:                                               ; preds = %36, %30
  %34 = phi i64 [ %45, %36 ], [ 0, %30 ]
  %35 = icmp slt i64 %34, 50
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = trunc i64 %34 to i32
  %38 = mul i32 %31, %37
  %39 = add i32 %38, %32
  %40 = add i32 %39, %37
  %41 = srem i32 %40, 4
  %42 = mul i64 %34, 512
  %43 = add i64 %42, %28
  %44 = getelementptr i32, ptr %19, i64 %43
  store i32 %41, ptr %44, align 4
  %45 = add i64 %34, 1
  br label %33

46:                                               ; preds = %33
  %47 = add i64 %28, 1
  br label %27

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %70, %48
  %50 = phi i64 [ %71, %70 ], [ 0, %48 ]
  %51 = icmp slt i64 %50, 512
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = trunc i64 %50 to i32
  %54 = add i32 %53, -1
  br label %55

55:                                               ; preds = %58, %52
  %56 = phi i64 [ %69, %58 ], [ 0, %52 ]
  %57 = icmp slt i64 %56, 50
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = trunc i64 %56 to i32
  %60 = mul i32 %54, %59
  %61 = mul i32 %60, 3
  %62 = add i32 %61, %53
  %63 = mul i32 %59, 2
  %64 = add i32 %62, %63
  %65 = srem i32 %64, 4
  %66 = mul i64 %56, 512
  %67 = add i64 %66, %50
  %68 = getelementptr i32, ptr %11, i64 %67
  store i32 %65, ptr %68, align 4
  %69 = add i64 %56, 1
  br label %55

70:                                               ; preds = %55
  %71 = add i64 %50, 1
  br label %49

72:                                               ; preds = %49
  call void @Needleman_Wunsch(ptr %19, ptr %19, i64 0, i64 50, i64 512, i64 512, i64 1, ptr %11, ptr %11, i64 0, i64 50, i64 512, i64 512, i64 1, ptr %1, ptr %1, i64 0, i64 51, i64 51, i64 512, i64 26112, i64 512, i64 1)
  %73 = call i32 (ptr, ...) @printf(ptr @str0)
  ret i32 0
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
