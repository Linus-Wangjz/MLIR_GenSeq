; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str0 = internal constant [10 x i8] c"Success!\0A\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare i32 @printf(ptr, ...)

define void @Needleman_Wunsch(ptr %0, ptr %1, ptr %2) {
  br label %4

4:                                                ; preds = %17, %3
  %5 = phi i64 [ %18, %17 ], [ 0, %3 ]
  %6 = icmp slt i64 %5, 512
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %11, %7
  %9 = phi i64 [ %16, %11 ], [ 0, %7 ]
  %10 = icmp slt i64 %9, 51
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = trunc i64 %9 to i32
  %13 = sub i32 0, %12
  %14 = getelementptr [51 x [51 x i32]], ptr %2, i64 %5, i64 %9, i32 0
  store i32 %13, ptr %14, align 4
  %15 = getelementptr [51 x [51 x i32]], ptr %2, i64 %5, i32 0, i64 %9
  store i32 %13, ptr %15, align 4
  %16 = add i64 %9, 1
  br label %8

17:                                               ; preds = %8
  %18 = add i64 %5, 1
  br label %4

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %65, %19
  %21 = phi i64 [ %66, %65 ], [ 0, %19 ]
  %22 = icmp slt i64 %21, 512
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %63, %23
  %25 = phi i64 [ %64, %63 ], [ 1, %23 ]
  %26 = icmp slt i64 %25, 51
  br i1 %26, label %27, label %65

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %56, %27
  %29 = phi i64 [ %62, %56 ], [ 1, %27 ]
  %30 = icmp slt i64 %29, 51
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = add i64 %25, -1
  %33 = getelementptr [51 x [51 x i32]], ptr %2, i64 %21, i64 %32, i64 %29
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -5
  %36 = add i64 %29, -1
  %37 = getelementptr [51 x [51 x i32]], ptr %2, i64 %21, i64 %25, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -5
  %40 = add i64 %25, -1
  %41 = add i64 %29, -1
  %42 = getelementptr [51 x [51 x i32]], ptr %2, i64 %21, i64 %40, i64 %41
  %43 = load i32, ptr %42, align 4
  %44 = add i64 %25, -1
  %45 = getelementptr [50 x i32], ptr %0, i64 %21, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = add i64 %25, -1
  %48 = getelementptr [50 x i32], ptr %1, i64 %21, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %68, %31
  %52 = phi i32 [ %69, %68 ], [ 2, %31 ]
  %53 = add i32 %43, %52
  br label %54

54:                                               ; preds = %51
  %55 = phi i32 [ %53, %51 ]
  br label %56

56:                                               ; preds = %54
  %57 = icmp slt i32 %35, %39
  %58 = select i1 %57, i32 %39, i32 %35
  %59 = icmp slt i32 %58, %55
  %60 = select i1 %59, i32 %55, i32 %58
  %61 = getelementptr [51 x [51 x i32]], ptr %2, i64 %21, i64 %25, i64 %29
  store i32 %60, ptr %61, align 4
  %62 = add i64 %29, 1
  br label %28

63:                                               ; preds = %28
  %64 = add i64 %25, 1
  br label %24

65:                                               ; preds = %24
  %66 = add i64 %21, 1
  br label %20

67:                                               ; preds = %20
  ret void

68:                                               ; preds = %31
  %69 = phi i32 [ -5, %31 ]
  br label %51
}

define i32 @main() {
  %1 = alloca [51 x [51 x i32]], i64 512, align 4
  br label %2

2:                                                ; preds = %15, %0
  %3 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %4 = icmp slt i64 %3, 512
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %9, %5
  %7 = phi i64 [ %14, %9 ], [ 0, %5 ]
  %8 = icmp slt i64 %7, 51
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = trunc i64 %7 to i32
  %11 = sub i32 0, %10
  %12 = getelementptr [51 x [51 x i32]], ptr %1, i64 %3, i64 %7, i32 0
  store i32 %11, ptr %12, align 4
  %13 = getelementptr [51 x [51 x i32]], ptr %1, i64 %3, i32 0, i64 %7
  store i32 %11, ptr %13, align 4
  %14 = add i64 %7, 1
  br label %6

15:                                               ; preds = %6
  %16 = add i64 %3, 1
  br label %2

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %72, %17
  %19 = phi i64 [ %73, %72 ], [ 0, %17 ]
  %20 = icmp slt i64 %19, 512
  br i1 %20, label %21, label %74

21:                                               ; preds = %18
  %22 = trunc i64 %19 to i32
  %23 = mul i32 %22, 3
  %24 = add i32 %22, -1
  br label %25

25:                                               ; preds = %70, %21
  %26 = phi i64 [ %71, %70 ], [ 1, %21 ]
  %27 = icmp slt i64 %26, 51
  br i1 %27, label %28, label %72

28:                                               ; preds = %25
  %29 = add i64 %26, -1
  %30 = trunc i64 %29 to i32
  %31 = mul i32 %22, %30
  %32 = add i32 %31, %23
  %33 = add i32 %32, %30
  %34 = srem i32 %33, 4
  %35 = mul i32 %24, %30
  %36 = mul i32 %35, 3
  %37 = add i32 %36, %22
  %38 = mul i32 %30, 2
  %39 = add i32 %37, %38
  %40 = srem i32 %39, 4
  %41 = icmp eq i32 %34, %40
  br label %42

42:                                               ; preds = %63, %28
  %43 = phi i64 [ %69, %63 ], [ 1, %28 ]
  %44 = icmp slt i64 %43, 51
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = add i64 %26, -1
  %47 = getelementptr [51 x [51 x i32]], ptr %1, i64 %19, i64 %46, i64 %43
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -5
  %50 = add i64 %43, -1
  %51 = getelementptr [51 x [51 x i32]], ptr %1, i64 %19, i64 %26, i64 %50
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -5
  %54 = add i64 %26, -1
  %55 = add i64 %43, -1
  %56 = getelementptr [51 x [51 x i32]], ptr %1, i64 %19, i64 %54, i64 %55
  %57 = load i32, ptr %56, align 4
  br i1 %41, label %58, label %76

58:                                               ; preds = %76, %45
  %59 = phi i32 [ %77, %76 ], [ 2, %45 ]
  %60 = add i32 %57, %59
  br label %61

61:                                               ; preds = %58
  %62 = phi i32 [ %60, %58 ]
  br label %63

63:                                               ; preds = %61
  %64 = icmp slt i32 %49, %53
  %65 = select i1 %64, i32 %53, i32 %49
  %66 = icmp slt i32 %65, %62
  %67 = select i1 %66, i32 %62, i32 %65
  %68 = getelementptr [51 x [51 x i32]], ptr %1, i64 %19, i64 %26, i64 %43
  store i32 %67, ptr %68, align 4
  %69 = add i64 %43, 1
  br label %42

70:                                               ; preds = %42
  %71 = add i64 %26, 1
  br label %25

72:                                               ; preds = %25
  %73 = add i64 %19, 1
  br label %18

74:                                               ; preds = %18
  %75 = call i32 (ptr, ...) @printf(ptr @str0)
  ret i32 0

76:                                               ; preds = %45
  %77 = phi i32 [ -5, %45 ]
  br label %58
}

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}
