; ModuleID = '/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes_test.c'
source_filename = "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-none--eabi"

%struct.aes256_context = type { [32 x i8], [32 x i8], [32 x i8] }

@expected = global [16 x i8] c"\8E\A2\B7\CAQgE\BF\EA\FCI\90KI`\89", align 1
@.str = private unnamed_addr constant [6 x i8] c"txt: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"key: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"enc: \00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"tst: 8e a2 b7 ca 51 67 45 bf ea fc 49 90 4b 49 60 89\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"The hardware test took %llu cycles.\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"TEST PASSED\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TEST FAILED\0A\00", align 1

; Function Attrs: nounwind
define i32 @main(i32, i8**) #0 !dbg !18 !xidane.fname !25 !xidane.function_declaration_type !26 !xidane.function_declaration_filename !27 !xidane.ExternC !28 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca %struct.aes256_context, align 1
  %7 = alloca [32 x i8], align 1
  %8 = alloca [16 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !29, metadata !30), !dbg !31
  store i8** %1, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !32, metadata !30), !dbg !33
  call void @llvm.dbg.declare(metadata %struct.aes256_context* %6, metadata !34, metadata !30), !dbg !45
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !46, metadata !30), !dbg !47
  call void @llvm.dbg.declare(metadata [16 x i8]* %8, metadata !48, metadata !30), !dbg !49
  call void @llvm.dbg.declare(metadata i8* %9, metadata !50, metadata !30), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %10, metadata !52, metadata !30), !dbg !53
  store i8 0, i8* %9, align 1, !dbg !54
  br label %14, !dbg !56

; <label>:14:                                     ; preds = %29, %2
  %15 = load i8, i8* %9, align 1, !dbg !57
  %16 = zext i8 %15 to i32, !dbg !57
  %17 = icmp ult i32 %16, 16, !dbg !60
  br i1 %17, label %18, label %32, !dbg !61

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* %9, align 1, !dbg !62
  %20 = zext i8 %19 to i32, !dbg !62
  %21 = mul nsw i32 %20, 16, !dbg !64
  %22 = load i8, i8* %9, align 1, !dbg !65
  %23 = zext i8 %22 to i32, !dbg !65
  %24 = add nsw i32 %21, %23, !dbg !66
  %25 = trunc i32 %24 to i8, !dbg !62
  %26 = load i8, i8* %9, align 1, !dbg !67
  %27 = zext i8 %26 to i32, !dbg !68
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 %27, !dbg !68
  store i8 %25, i8* %28, align 1, !dbg !69
  br label %29, !dbg !70

; <label>:29:                                     ; preds = %18
  %30 = load i8, i8* %9, align 1, !dbg !71
  %31 = add i8 %30, 1, !dbg !71
  store i8 %31, i8* %9, align 1, !dbg !71
  br label %14, !dbg !73, !llvm.loop !74

; <label>:32:                                     ; preds = %14
  store i8 0, i8* %9, align 1, !dbg !76
  br label %33, !dbg !78

; <label>:33:                                     ; preds = %42, %32
  %34 = load i8, i8* %9, align 1, !dbg !79
  %35 = zext i8 %34 to i32, !dbg !79
  %36 = icmp ult i32 %35, 32, !dbg !82
  br i1 %36, label %37, label %45, !dbg !83

; <label>:37:                                     ; preds = %33
  %38 = load i8, i8* %9, align 1, !dbg !84
  %39 = load i8, i8* %9, align 1, !dbg !86
  %40 = zext i8 %39 to i32, !dbg !87
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 %40, !dbg !87
  store i8 %38, i8* %41, align 1, !dbg !88
  br label %42, !dbg !89

; <label>:42:                                     ; preds = %37
  %43 = load i8, i8* %9, align 1, !dbg !90
  %44 = add i8 %43, 1, !dbg !90
  store i8 %44, i8* %9, align 1, !dbg !90
  br label %33, !dbg !92, !llvm.loop !93

; <label>:45:                                     ; preds = %33
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)), !dbg !95
  store i8 0, i8* %9, align 1, !dbg !97
  br label %47, !dbg !97

; <label>:47:                                     ; preds = %58, %45
  %48 = load i8, i8* %9, align 1, !dbg !99
  %49 = zext i8 %48 to i32, !dbg !99
  %50 = icmp ult i32 %49, 16, !dbg !99
  br i1 %50, label %51, label %61, !dbg !99

; <label>:51:                                     ; preds = %47
  %52 = load i8, i8* %9, align 1, !dbg !102
  %53 = zext i8 %52 to i32, !dbg !102
  %54 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 %53, !dbg !102
  %55 = load i8, i8* %54, align 1, !dbg !102
  %56 = zext i8 %55 to i32, !dbg !102
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %56), !dbg !102
  br label %58, !dbg !102

; <label>:58:                                     ; preds = %51
  %59 = load i8, i8* %9, align 1, !dbg !104
  %60 = add i8 %59, 1, !dbg !104
  store i8 %60, i8* %9, align 1, !dbg !104
  br label %47, !dbg !104, !llvm.loop !106

; <label>:61:                                     ; preds = %47
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !107
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !109
  store i8 0, i8* %9, align 1, !dbg !111
  br label %64, !dbg !111

; <label>:64:                                     ; preds = %75, %61
  %65 = load i8, i8* %9, align 1, !dbg !113
  %66 = zext i8 %65 to i32, !dbg !113
  %67 = icmp ult i32 %66, 32, !dbg !113
  br i1 %67, label %68, label %78, !dbg !113

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %9, align 1, !dbg !116
  %70 = zext i8 %69 to i32, !dbg !116
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 %70, !dbg !116
  %72 = load i8, i8* %71, align 1, !dbg !116
  %73 = zext i8 %72 to i32, !dbg !116
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %73), !dbg !116
  br label %75, !dbg !116

; <label>:75:                                     ; preds = %68
  %76 = load i8, i8* %9, align 1, !dbg !118
  %77 = add i8 %76, 1, !dbg !118
  store i8 %77, i8* %9, align 1, !dbg !118
  br label %64, !dbg !118, !llvm.loop !120

; <label>:78:                                     ; preds = %64
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !121
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)), !dbg !123
  call void @llvm.dbg.declare(metadata i64* %11, metadata !124, metadata !30), !dbg !126
  %81 = call i64 @sds_clock_counter(), !dbg !127
  store i64 %81, i64* %11, align 8, !dbg !126
  %82 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %6, i32 0, i32 0, !dbg !128
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %82, i32 0, i32 0, !dbg !129
  %84 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %6, i32 0, i32 1, !dbg !130
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %84, i32 0, i32 0, !dbg !131
  %86 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %6, i32 0, i32 2, !dbg !132
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %86, i32 0, i32 0, !dbg !133
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0, !dbg !134
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 0, !dbg !135
  call void @encrypt(i8* %83, i8* %85, i8* %87, i8* %88, i8* %89), !dbg !136
  call void @llvm.dbg.declare(metadata i64* %12, metadata !137, metadata !30), !dbg !138
  %90 = call i64 @sds_clock_counter(), !dbg !139
  store i64 %90, i64* %12, align 8, !dbg !138
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)), !dbg !140
  store i8 0, i8* %9, align 1, !dbg !142
  br label %92, !dbg !142

; <label>:92:                                     ; preds = %103, %78
  %93 = load i8, i8* %9, align 1, !dbg !144
  %94 = zext i8 %93 to i32, !dbg !144
  %95 = icmp ult i32 %94, 16, !dbg !144
  br i1 %95, label %96, label %106, !dbg !144

; <label>:96:                                     ; preds = %92
  %97 = load i8, i8* %9, align 1, !dbg !147
  %98 = zext i8 %97 to i32, !dbg !147
  %99 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 %98, !dbg !147
  %100 = load i8, i8* %99, align 1, !dbg !147
  %101 = zext i8 %100 to i32, !dbg !147
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %101), !dbg !147
  br label %103, !dbg !147

; <label>:103:                                    ; preds = %96
  %104 = load i8, i8* %9, align 1, !dbg !149
  %105 = add i8 %104, 1, !dbg !149
  store i8 %105, i8* %9, align 1, !dbg !149
  br label %92, !dbg !149, !llvm.loop !151

; <label>:106:                                    ; preds = %92
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !152
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0)), !dbg !154
  store i32 1, i32* %10, align 4, !dbg !155
  store i8 0, i8* %9, align 1, !dbg !156
  br label %109, !dbg !158

; <label>:109:                                    ; preds = %131, %106
  %110 = load i8, i8* %9, align 1, !dbg !159
  %111 = zext i8 %110 to i32, !dbg !159
  %112 = icmp ult i32 %111, 16, !dbg !162
  br i1 %112, label %113, label %134, !dbg !163

; <label>:113:                                    ; preds = %109
  %114 = load i32, i32* %10, align 4, !dbg !164
  %115 = icmp ne i32 %114, 0, !dbg !164
  br i1 %115, label %116, label %128, !dbg !166

; <label>:116:                                    ; preds = %113
  %117 = load i8, i8* %9, align 1, !dbg !167
  %118 = zext i8 %117 to i32, !dbg !169
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 %118, !dbg !169
  %120 = load i8, i8* %119, align 1, !dbg !169
  %121 = zext i8 %120 to i32, !dbg !169
  %122 = load i8, i8* %9, align 1, !dbg !170
  %123 = zext i8 %122 to i32, !dbg !171
  %124 = getelementptr inbounds [16 x i8], [16 x i8]* @expected, i32 0, i32 %123, !dbg !171
  %125 = load i8, i8* %124, align 1, !dbg !171
  %126 = zext i8 %125 to i32, !dbg !171
  %127 = icmp eq i32 %121, %126, !dbg !172
  br label %128

; <label>:128:                                    ; preds = %116, %113
  %129 = phi i1 [ false, %113 ], [ %127, %116 ]
  %130 = zext i1 %129 to i32, !dbg !173
  store i32 %130, i32* %10, align 4, !dbg !175
  br label %131, !dbg !176

; <label>:131:                                    ; preds = %128
  %132 = load i8, i8* %9, align 1, !dbg !177
  %133 = add i8 %132, 1, !dbg !177
  store i8 %133, i8* %9, align 1, !dbg !177
  br label %109, !dbg !179, !llvm.loop !180

; <label>:134:                                    ; preds = %109
  call void @llvm.dbg.declare(metadata i64* %13, metadata !182, metadata !30), !dbg !183
  %135 = load i64, i64* %12, align 8, !dbg !184
  %136 = load i64, i64* %11, align 8, !dbg !185
  %137 = sub i64 %135, %136, !dbg !186
  store i64 %137, i64* %13, align 8, !dbg !183
  %138 = load i64, i64* %13, align 8, !dbg !187
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0), i64 %138), !dbg !188
  %140 = load i32, i32* %10, align 4, !dbg !189
  %141 = icmp ne i32 %140, 0, !dbg !189
  br i1 %141, label %142, label %144, !dbg !191

; <label>:142:                                    ; preds = %134
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !192
  store i32 0, i32* %3, align 4, !dbg !194
  br label %146, !dbg !194

; <label>:144:                                    ; preds = %134
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !195
  store i32 1, i32* %3, align 4, !dbg !197
  br label %146, !dbg !197

; <label>:146:                                    ; preds = %144, %142
  %147 = load i32, i32* %3, align 4, !dbg !198
  ret i32 %147, !dbg !198
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !xidane.fname !199 !xidane.function_declaration_type !200 !xidane.function_declaration_filename !201 !xidane.ExternC !28 i32 @printf(i8*, ...) #2

declare !xidane.fname !202 !xidane.function_declaration_type !203 !xidane.function_declaration_filename !204 !xidane.ExternC !28 i64 @sds_clock_counter() #2

declare !xidane.fname !205 !xidane.function_declaration_type !206 !xidane.function_declaration_filename !207 !xidane.ExternC !28 void @encrypt(i8*, i8*, i8*, i8*, i8*) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+strict-align,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+strict-align,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes_test.c", directory: "/scratch/local/tmp.soPlafqy6w")
!2 = !{}
!3 = !{!4}
!4 = distinct !DIGlobalVariable(name: "expected", scope: !0, file: !1, line: 32, type: !5, isLocal: false, isDefinition: true, variable: [16 x i8]* @expected)
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, align: 8, elements: !11)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 20, baseType: !8)
!7 = !DIFile(filename: "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch32/lin/gcc-arm-none-eabi/arm-none-eabi/libc/usr/include/sys/_stdint.h", directory: "/scratch/local/tmp.soPlafqy6w")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !9, line: 29, baseType: !10)
!9 = !DIFile(filename: "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch32/lin/gcc-arm-none-eabi/arm-none-eabi/libc/usr/include/machine/_default_types.h", directory: "/scratch/local/tmp.soPlafqy6w")
!10 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12}
!12 = !DISubrange(count: 16)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!18 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !19, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, !22}
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32, align: 32)
!24 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!"main"}
!26 = !{!"int.int.0.char *[].1"}
!27 = !{!"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes_test.c"}
!28 = !{!"t"}
!29 = !DILocalVariable(name: "argc", arg: 1, scope: !18, file: !1, line: 35, type: !21)
!30 = !DIExpression()
!31 = !DILocation(line: 35, column: 15, scope: !18)
!32 = !DILocalVariable(name: "argv", arg: 2, scope: !18, file: !1, line: 35, type: !22)
!33 = !DILocation(line: 35, column: 27, scope: !18)
!34 = !DILocalVariable(name: "ctx", scope: !18, file: !1, line: 37, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256_context", file: !36, line: 11, baseType: !37)
!36 = !DIFile(filename: "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h", directory: "/scratch/local/tmp.soPlafqy6w")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 7, size: 768, align: 8, elements: !38)
!38 = !{!39, !43, !44}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !37, file: !36, line: 8, baseType: !40, size: 256, align: 8)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, align: 8, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "enckey", scope: !37, file: !36, line: 9, baseType: !40, size: 256, align: 8, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "deckey", scope: !37, file: !36, line: 10, baseType: !40, size: 256, align: 8, offset: 512)
!45 = !DILocation(line: 37, column: 20, scope: !18)
!46 = !DILocalVariable(name: "key", scope: !18, file: !1, line: 38, type: !40)
!47 = !DILocation(line: 38, column: 13, scope: !18)
!48 = !DILocalVariable(name: "buf", scope: !18, file: !1, line: 39, type: !5)
!49 = !DILocation(line: 39, column: 13, scope: !18)
!50 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 39, type: !6)
!51 = !DILocation(line: 39, column: 22, scope: !18)
!52 = !DILocalVariable(name: "equal", scope: !18, file: !1, line: 40, type: !21)
!53 = !DILocation(line: 40, column: 9, scope: !18)
!54 = !DILocation(line: 43, column: 12, scope: !55)
!55 = distinct !DILexicalBlock(scope: !18, file: !1, line: 43, column: 5)
!56 = !DILocation(line: 43, column: 10, scope: !55)
!57 = !DILocation(line: 43, column: 17, scope: !58)
!58 = !DILexicalBlockFile(scope: !59, file: !1, discriminator: 1)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 43, column: 5)
!60 = !DILocation(line: 43, column: 19, scope: !58)
!61 = !DILocation(line: 43, column: 5, scope: !58)
!62 = !DILocation(line: 44, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 43, column: 37)
!64 = !DILocation(line: 44, column: 20, scope: !63)
!65 = !DILocation(line: 44, column: 27, scope: !63)
!66 = !DILocation(line: 44, column: 25, scope: !63)
!67 = !DILocation(line: 44, column: 13, scope: !63)
!68 = !DILocation(line: 44, column: 9, scope: !63)
!69 = !DILocation(line: 44, column: 16, scope: !63)
!70 = !DILocation(line: 45, column: 5, scope: !63)
!71 = !DILocation(line: 43, column: 34, scope: !72)
!72 = !DILexicalBlockFile(scope: !59, file: !1, discriminator: 2)
!73 = !DILocation(line: 43, column: 5, scope: !72)
!74 = distinct !{!74, !75}
!75 = !DILocation(line: 43, column: 5, scope: !18)
!76 = !DILocation(line: 47, column: 12, scope: !77)
!77 = distinct !DILexicalBlock(scope: !18, file: !1, line: 47, column: 5)
!78 = !DILocation(line: 47, column: 10, scope: !77)
!79 = !DILocation(line: 47, column: 17, scope: !80)
!80 = !DILexicalBlockFile(scope: !81, file: !1, discriminator: 1)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 47, column: 5)
!82 = !DILocation(line: 47, column: 19, scope: !80)
!83 = !DILocation(line: 47, column: 5, scope: !80)
!84 = !DILocation(line: 48, column: 18, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 47, column: 37)
!86 = !DILocation(line: 48, column: 13, scope: !85)
!87 = !DILocation(line: 48, column: 9, scope: !85)
!88 = !DILocation(line: 48, column: 16, scope: !85)
!89 = !DILocation(line: 49, column: 5, scope: !85)
!90 = !DILocation(line: 47, column: 34, scope: !91)
!91 = !DILexicalBlockFile(scope: !81, file: !1, discriminator: 2)
!92 = !DILocation(line: 47, column: 5, scope: !91)
!93 = distinct !{!93, !94}
!94 = !DILocation(line: 47, column: 5, scope: !18)
!95 = !DILocation(line: 51, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !18, file: !1, line: 51, column: 5)
!97 = !DILocation(line: 51, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !96, file: !1, line: 51, column: 5)
!99 = !DILocation(line: 51, column: 5, scope: !100)
!100 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 1)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 51, column: 5)
!102 = !DILocation(line: 51, column: 5, scope: !103)
!103 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 2)
!104 = !DILocation(line: 51, column: 5, scope: !105)
!105 = !DILexicalBlockFile(scope: !101, file: !1, discriminator: 3)
!106 = distinct !{!106, !95}
!107 = !DILocation(line: 51, column: 5, scope: !108)
!108 = !DILexicalBlockFile(scope: !96, file: !1, discriminator: 4)
!109 = !DILocation(line: 52, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !18, file: !1, line: 52, column: 5)
!111 = !DILocation(line: 52, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !110, file: !1, line: 52, column: 5)
!113 = !DILocation(line: 52, column: 5, scope: !114)
!114 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 1)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 52, column: 5)
!116 = !DILocation(line: 52, column: 5, scope: !117)
!117 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 2)
!118 = !DILocation(line: 52, column: 5, scope: !119)
!119 = !DILexicalBlockFile(scope: !115, file: !1, discriminator: 3)
!120 = distinct !{!120, !109}
!121 = !DILocation(line: 52, column: 5, scope: !122)
!122 = !DILexicalBlockFile(scope: !110, file: !1, discriminator: 4)
!123 = !DILocation(line: 54, column: 5, scope: !18)
!124 = !DILocalVariable(name: "Start_time_HW", scope: !18, file: !1, line: 59, type: !125)
!125 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!126 = !DILocation(line: 59, column: 22, scope: !18)
!127 = !DILocation(line: 59, column: 38, scope: !18)
!128 = !DILocation(line: 61, column: 17, scope: !18)
!129 = !DILocation(line: 61, column: 13, scope: !18)
!130 = !DILocation(line: 61, column: 26, scope: !18)
!131 = !DILocation(line: 61, column: 22, scope: !18)
!132 = !DILocation(line: 61, column: 38, scope: !18)
!133 = !DILocation(line: 61, column: 34, scope: !18)
!134 = !DILocation(line: 61, column: 46, scope: !18)
!135 = !DILocation(line: 61, column: 51, scope: !18)
!136 = !DILocation(line: 61, column: 5, scope: !18)
!137 = !DILocalVariable(name: "End_time_HW", scope: !18, file: !1, line: 63, type: !125)
!138 = !DILocation(line: 63, column: 22, scope: !18)
!139 = !DILocation(line: 63, column: 36, scope: !18)
!140 = !DILocation(line: 66, column: 5, scope: !141)
!141 = distinct !DILexicalBlock(scope: !18, file: !1, line: 66, column: 5)
!142 = !DILocation(line: 66, column: 5, scope: !143)
!143 = distinct !DILexicalBlock(scope: !141, file: !1, line: 66, column: 5)
!144 = !DILocation(line: 66, column: 5, scope: !145)
!145 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 1)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 66, column: 5)
!147 = !DILocation(line: 66, column: 5, scope: !148)
!148 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 2)
!149 = !DILocation(line: 66, column: 5, scope: !150)
!150 = !DILexicalBlockFile(scope: !146, file: !1, discriminator: 3)
!151 = distinct !{!151, !140}
!152 = !DILocation(line: 66, column: 5, scope: !153)
!153 = !DILexicalBlockFile(scope: !141, file: !1, discriminator: 4)
!154 = !DILocation(line: 67, column: 5, scope: !18)
!155 = !DILocation(line: 75, column: 11, scope: !18)
!156 = !DILocation(line: 76, column: 12, scope: !157)
!157 = distinct !DILexicalBlock(scope: !18, file: !1, line: 76, column: 5)
!158 = !DILocation(line: 76, column: 10, scope: !157)
!159 = !DILocation(line: 76, column: 17, scope: !160)
!160 = !DILexicalBlockFile(scope: !161, file: !1, discriminator: 1)
!161 = distinct !DILexicalBlock(scope: !157, file: !1, line: 76, column: 5)
!162 = !DILocation(line: 76, column: 19, scope: !160)
!163 = !DILocation(line: 76, column: 5, scope: !160)
!164 = !DILocation(line: 77, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 76, column: 38)
!166 = !DILocation(line: 77, column: 23, scope: !165)
!167 = !DILocation(line: 77, column: 31, scope: !168)
!168 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 1)
!169 = !DILocation(line: 77, column: 27, scope: !168)
!170 = !DILocation(line: 77, column: 46, scope: !168)
!171 = !DILocation(line: 77, column: 37, scope: !168)
!172 = !DILocation(line: 77, column: 34, scope: !168)
!173 = !DILocation(line: 77, column: 23, scope: !174)
!174 = !DILexicalBlockFile(scope: !165, file: !1, discriminator: 2)
!175 = !DILocation(line: 77, column: 15, scope: !174)
!176 = !DILocation(line: 78, column: 5, scope: !165)
!177 = !DILocation(line: 76, column: 35, scope: !178)
!178 = !DILexicalBlockFile(scope: !161, file: !1, discriminator: 2)
!179 = !DILocation(line: 76, column: 5, scope: !178)
!180 = distinct !{!180, !181}
!181 = !DILocation(line: 76, column: 5, scope: !18)
!182 = !DILocalVariable(name: "Duration_HW", scope: !18, file: !1, line: 81, type: !125)
!183 = !DILocation(line: 81, column: 22, scope: !18)
!184 = !DILocation(line: 81, column: 36, scope: !18)
!185 = !DILocation(line: 81, column: 50, scope: !18)
!186 = !DILocation(line: 81, column: 48, scope: !18)
!187 = !DILocation(line: 82, column: 51, scope: !18)
!188 = !DILocation(line: 82, column: 3, scope: !18)
!189 = !DILocation(line: 85, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !18, file: !1, line: 85, column: 9)
!191 = !DILocation(line: 85, column: 9, scope: !18)
!192 = !DILocation(line: 86, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 85, column: 15)
!194 = !DILocation(line: 87, column: 9, scope: !193)
!195 = !DILocation(line: 90, column: 9, scope: !196)
!196 = distinct !DILexicalBlock(scope: !190, file: !1, line: 89, column: 9)
!197 = !DILocation(line: 91, column: 9, scope: !196)
!198 = !DILocation(line: 93, column: 1, scope: !18)
!199 = !{!"printf"}
!200 = !{!"int.const char *__restrict.1"}
!201 = !{!"/mnt/icgridio2/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch32/lin/gcc-arm-none-eabi/arm-none-eabi/libc/usr/include/stdio.h"}
!202 = !{!"sds_clock_counter"}
!203 = !{!"unsigned long long."}
!204 = !{!"/mnt/icgridio2/safe/SDSoC/SDx/2017.1/target/aarch32-none/include/sds_lib.h"}
!205 = !{!"encrypt"}
!206 = !{!"void.uint8_t [32].1.uint8_t [32].1.uint8_t [32].1.uint8_t [32].1.uint8_t [16].1"}
!207 = !{!"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h"}
