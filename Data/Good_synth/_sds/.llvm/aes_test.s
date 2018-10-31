; ModuleID = '/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes_test.c'
source_filename = "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes_test.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-none--eabi"

%struct.aes256_context = type { [32 x i8], [32 x i8], [32 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"txt: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"key: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"enc: \00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"tst: 8e a2 b7 ca 51 67 45 bf ea fc 49 90 4b 49 60 89\0A\00", align 1

; Function Attrs: nounwind
define i32 @main(i32, i8**) #0 !dbg !8 !xidane.fname !15 !xidane.function_declaration_type !16 !xidane.function_declaration_filename !17 !xidane.ExternC !18 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca %struct.aes256_context, align 1
  %7 = alloca [32 x i8], align 1
  %8 = alloca [16 x i8], align 1
  %9 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !20), !dbg !21
  store i8** %1, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !22, metadata !20), !dbg !23
  call void @llvm.dbg.declare(metadata %struct.aes256_context* %6, metadata !24, metadata !20), !dbg !40
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !41, metadata !20), !dbg !42
  call void @llvm.dbg.declare(metadata [16 x i8]* %8, metadata !43, metadata !20), !dbg !47
  call void @llvm.dbg.declare(metadata i8* %9, metadata !48, metadata !20), !dbg !49
  store i8 0, i8* %9, align 1, !dbg !50
  br label %10, !dbg !52

; <label>:10:                                     ; preds = %25, %2
  %11 = load i8, i8* %9, align 1, !dbg !53
  %12 = zext i8 %11 to i32, !dbg !53
  %13 = icmp ult i32 %12, 16, !dbg !56
  br i1 %13, label %14, label %28, !dbg !57

; <label>:14:                                     ; preds = %10
  %15 = load i8, i8* %9, align 1, !dbg !58
  %16 = zext i8 %15 to i32, !dbg !58
  %17 = mul nsw i32 %16, 16, !dbg !60
  %18 = load i8, i8* %9, align 1, !dbg !61
  %19 = zext i8 %18 to i32, !dbg !61
  %20 = add nsw i32 %17, %19, !dbg !62
  %21 = trunc i32 %20 to i8, !dbg !58
  %22 = load i8, i8* %9, align 1, !dbg !63
  %23 = zext i8 %22 to i32, !dbg !64
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 %23, !dbg !64
  store i8 %21, i8* %24, align 1, !dbg !65
  br label %25, !dbg !66

; <label>:25:                                     ; preds = %14
  %26 = load i8, i8* %9, align 1, !dbg !67
  %27 = add i8 %26, 1, !dbg !67
  store i8 %27, i8* %9, align 1, !dbg !67
  br label %10, !dbg !69, !llvm.loop !70

; <label>:28:                                     ; preds = %10
  store i8 0, i8* %9, align 1, !dbg !72
  br label %29, !dbg !74

; <label>:29:                                     ; preds = %38, %28
  %30 = load i8, i8* %9, align 1, !dbg !75
  %31 = zext i8 %30 to i32, !dbg !75
  %32 = icmp ult i32 %31, 32, !dbg !78
  br i1 %32, label %33, label %41, !dbg !79

; <label>:33:                                     ; preds = %29
  %34 = load i8, i8* %9, align 1, !dbg !80
  %35 = load i8, i8* %9, align 1, !dbg !82
  %36 = zext i8 %35 to i32, !dbg !83
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 %36, !dbg !83
  store i8 %34, i8* %37, align 1, !dbg !84
  br label %38, !dbg !85

; <label>:38:                                     ; preds = %33
  %39 = load i8, i8* %9, align 1, !dbg !86
  %40 = add i8 %39, 1, !dbg !86
  store i8 %40, i8* %9, align 1, !dbg !86
  br label %29, !dbg !88, !llvm.loop !89

; <label>:41:                                     ; preds = %29
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)), !dbg !91
  store i8 0, i8* %9, align 1, !dbg !93
  br label %43, !dbg !93

; <label>:43:                                     ; preds = %54, %41
  %44 = load i8, i8* %9, align 1, !dbg !95
  %45 = zext i8 %44 to i32, !dbg !95
  %46 = icmp ult i32 %45, 16, !dbg !95
  br i1 %46, label %47, label %57, !dbg !95

; <label>:47:                                     ; preds = %43
  %48 = load i8, i8* %9, align 1, !dbg !98
  %49 = zext i8 %48 to i32, !dbg !98
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 %49, !dbg !98
  %51 = load i8, i8* %50, align 1, !dbg !98
  %52 = zext i8 %51 to i32, !dbg !98
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %52), !dbg !98
  br label %54, !dbg !98

; <label>:54:                                     ; preds = %47
  %55 = load i8, i8* %9, align 1, !dbg !100
  %56 = add i8 %55, 1, !dbg !100
  store i8 %56, i8* %9, align 1, !dbg !100
  br label %43, !dbg !100, !llvm.loop !102

; <label>:57:                                     ; preds = %43
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !103
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)), !dbg !105
  store i8 0, i8* %9, align 1, !dbg !107
  br label %60, !dbg !107

; <label>:60:                                     ; preds = %71, %57
  %61 = load i8, i8* %9, align 1, !dbg !109
  %62 = zext i8 %61 to i32, !dbg !109
  %63 = icmp ult i32 %62, 32, !dbg !109
  br i1 %63, label %64, label %74, !dbg !109

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %9, align 1, !dbg !112
  %66 = zext i8 %65 to i32, !dbg !112
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 %66, !dbg !112
  %68 = load i8, i8* %67, align 1, !dbg !112
  %69 = zext i8 %68 to i32, !dbg !112
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %69), !dbg !112
  br label %71, !dbg !112

; <label>:71:                                     ; preds = %64
  %72 = load i8, i8* %9, align 1, !dbg !114
  %73 = add i8 %72, 1, !dbg !114
  store i8 %73, i8* %9, align 1, !dbg !114
  br label %60, !dbg !114, !llvm.loop !116

; <label>:74:                                     ; preds = %60
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !117
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)), !dbg !119
  %77 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %6, i32 0, i32 0, !dbg !120
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %77, i32 0, i32 0, !dbg !121
  %79 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %6, i32 0, i32 1, !dbg !122
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %79, i32 0, i32 0, !dbg !123
  %81 = getelementptr inbounds %struct.aes256_context, %struct.aes256_context* %6, i32 0, i32 2, !dbg !124
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %81, i32 0, i32 0, !dbg !125
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 0, !dbg !126
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 0, !dbg !127
  call void @encrypt(i8* %78, i8* %80, i8* %82, i8* %83, i8* %84), !dbg !128
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)), !dbg !129
  store i8 0, i8* %9, align 1, !dbg !131
  br label %86, !dbg !131

; <label>:86:                                     ; preds = %97, %74
  %87 = load i8, i8* %9, align 1, !dbg !133
  %88 = zext i8 %87 to i32, !dbg !133
  %89 = icmp ult i32 %88, 16, !dbg !133
  br i1 %89, label %90, label %100, !dbg !133

; <label>:90:                                     ; preds = %86
  %91 = load i8, i8* %9, align 1, !dbg !136
  %92 = zext i8 %91 to i32, !dbg !136
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i32 0, i32 %92, !dbg !136
  %94 = load i8, i8* %93, align 1, !dbg !136
  %95 = zext i8 %94 to i32, !dbg !136
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %95), !dbg !136
  br label %97, !dbg !136

; <label>:97:                                     ; preds = %90
  %98 = load i8, i8* %9, align 1, !dbg !138
  %99 = add i8 %98, 1, !dbg !138
  store i8 %99, i8* %9, align 1, !dbg !138
  br label %86, !dbg !138, !llvm.loop !140

; <label>:100:                                    ; preds = %86
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !141
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0)), !dbg !143
  ret i32 0, !dbg !144
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !xidane.fname !145 !xidane.function_declaration_type !146 !xidane.function_declaration_filename !147 !xidane.ExternC !18 i32 @printf(i8*, ...) #2

declare !xidane.fname !148 !xidane.function_declaration_type !149 !xidane.function_declaration_filename !150 !xidane.ExternC !18 void @encrypt(i8*, i8*, i8*, i8*, i8*) #2

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+strict-align,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+strict-align,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes_test.c", directory: "/scratch/local/tmp.7aow7oM1KP")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!8 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32, align: 32)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32, align: 32)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!"main"}
!16 = !{!"int.int.0.char *[].1"}
!17 = !{!"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes_test.c"}
!18 = !{!"t"}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !8, file: !1, line: 28, type: !11)
!20 = !DIExpression()
!21 = !DILocation(line: 28, column: 15, scope: !8)
!22 = !DILocalVariable(name: "argv", arg: 2, scope: !8, file: !1, line: 28, type: !12)
!23 = !DILocation(line: 28, column: 27, scope: !8)
!24 = !DILocalVariable(name: "ctx", scope: !8, file: !1, line: 30, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes256_context", file: !26, line: 11, baseType: !27)
!26 = !DIFile(filename: "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h", directory: "/scratch/local/tmp.7aow7oM1KP")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 7, size: 768, align: 8, elements: !28)
!28 = !{!29, !38, !39}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !27, file: !26, line: 8, baseType: !30, size: 256, align: 8)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, align: 8, elements: !36)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 20, baseType: !33)
!32 = !DIFile(filename: "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch32/lin/gcc-arm-none-eabi/arm-none-eabi/libc/usr/include/sys/_stdint.h", directory: "/scratch/local/tmp.7aow7oM1KP")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 29, baseType: !35)
!34 = !DIFile(filename: "/mnt/icgridio2/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch32/lin/gcc-arm-none-eabi/arm-none-eabi/libc/usr/include/machine/_default_types.h", directory: "/scratch/local/tmp.7aow7oM1KP")
!35 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "enckey", scope: !27, file: !26, line: 9, baseType: !30, size: 256, align: 8, offset: 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "deckey", scope: !27, file: !26, line: 10, baseType: !30, size: 256, align: 8, offset: 512)
!40 = !DILocation(line: 30, column: 20, scope: !8)
!41 = !DILocalVariable(name: "key", scope: !8, file: !1, line: 31, type: !30)
!42 = !DILocation(line: 31, column: 13, scope: !8)
!43 = !DILocalVariable(name: "buf", scope: !8, file: !1, line: 32, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, align: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 16)
!47 = !DILocation(line: 32, column: 13, scope: !8)
!48 = !DILocalVariable(name: "i", scope: !8, file: !1, line: 32, type: !31)
!49 = !DILocation(line: 32, column: 22, scope: !8)
!50 = !DILocation(line: 35, column: 12, scope: !51)
!51 = distinct !DILexicalBlock(scope: !8, file: !1, line: 35, column: 5)
!52 = !DILocation(line: 35, column: 10, scope: !51)
!53 = !DILocation(line: 35, column: 17, scope: !54)
!54 = !DILexicalBlockFile(scope: !55, file: !1, discriminator: 1)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 35, column: 5)
!56 = !DILocation(line: 35, column: 19, scope: !54)
!57 = !DILocation(line: 35, column: 5, scope: !54)
!58 = !DILocation(line: 36, column: 18, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 35, column: 37)
!60 = !DILocation(line: 36, column: 20, scope: !59)
!61 = !DILocation(line: 36, column: 27, scope: !59)
!62 = !DILocation(line: 36, column: 25, scope: !59)
!63 = !DILocation(line: 36, column: 13, scope: !59)
!64 = !DILocation(line: 36, column: 9, scope: !59)
!65 = !DILocation(line: 36, column: 16, scope: !59)
!66 = !DILocation(line: 37, column: 5, scope: !59)
!67 = !DILocation(line: 35, column: 34, scope: !68)
!68 = !DILexicalBlockFile(scope: !55, file: !1, discriminator: 2)
!69 = !DILocation(line: 35, column: 5, scope: !68)
!70 = distinct !{!70, !71}
!71 = !DILocation(line: 35, column: 5, scope: !8)
!72 = !DILocation(line: 39, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !8, file: !1, line: 39, column: 5)
!74 = !DILocation(line: 39, column: 10, scope: !73)
!75 = !DILocation(line: 39, column: 17, scope: !76)
!76 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 1)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 39, column: 5)
!78 = !DILocation(line: 39, column: 19, scope: !76)
!79 = !DILocation(line: 39, column: 5, scope: !76)
!80 = !DILocation(line: 40, column: 18, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 39, column: 37)
!82 = !DILocation(line: 40, column: 13, scope: !81)
!83 = !DILocation(line: 40, column: 9, scope: !81)
!84 = !DILocation(line: 40, column: 16, scope: !81)
!85 = !DILocation(line: 41, column: 5, scope: !81)
!86 = !DILocation(line: 39, column: 34, scope: !87)
!87 = !DILexicalBlockFile(scope: !77, file: !1, discriminator: 2)
!88 = !DILocation(line: 39, column: 5, scope: !87)
!89 = distinct !{!89, !90}
!90 = !DILocation(line: 39, column: 5, scope: !8)
!91 = !DILocation(line: 43, column: 5, scope: !92)
!92 = distinct !DILexicalBlock(scope: !8, file: !1, line: 43, column: 5)
!93 = !DILocation(line: 43, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !1, line: 43, column: 5)
!95 = !DILocation(line: 43, column: 5, scope: !96)
!96 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 1)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 43, column: 5)
!98 = !DILocation(line: 43, column: 5, scope: !99)
!99 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 2)
!100 = !DILocation(line: 43, column: 5, scope: !101)
!101 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 3)
!102 = distinct !{!102, !91}
!103 = !DILocation(line: 43, column: 5, scope: !104)
!104 = !DILexicalBlockFile(scope: !92, file: !1, discriminator: 4)
!105 = !DILocation(line: 44, column: 5, scope: !106)
!106 = distinct !DILexicalBlock(scope: !8, file: !1, line: 44, column: 5)
!107 = !DILocation(line: 44, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !1, line: 44, column: 5)
!109 = !DILocation(line: 44, column: 5, scope: !110)
!110 = !DILexicalBlockFile(scope: !111, file: !1, discriminator: 1)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 44, column: 5)
!112 = !DILocation(line: 44, column: 5, scope: !113)
!113 = !DILexicalBlockFile(scope: !111, file: !1, discriminator: 2)
!114 = !DILocation(line: 44, column: 5, scope: !115)
!115 = !DILexicalBlockFile(scope: !111, file: !1, discriminator: 3)
!116 = distinct !{!116, !105}
!117 = !DILocation(line: 44, column: 5, scope: !118)
!118 = !DILexicalBlockFile(scope: !106, file: !1, discriminator: 4)
!119 = !DILocation(line: 46, column: 5, scope: !8)
!120 = !DILocation(line: 49, column: 17, scope: !8)
!121 = !DILocation(line: 49, column: 13, scope: !8)
!122 = !DILocation(line: 49, column: 26, scope: !8)
!123 = !DILocation(line: 49, column: 22, scope: !8)
!124 = !DILocation(line: 49, column: 38, scope: !8)
!125 = !DILocation(line: 49, column: 34, scope: !8)
!126 = !DILocation(line: 49, column: 46, scope: !8)
!127 = !DILocation(line: 49, column: 51, scope: !8)
!128 = !DILocation(line: 49, column: 5, scope: !8)
!129 = !DILocation(line: 51, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !8, file: !1, line: 51, column: 5)
!131 = !DILocation(line: 51, column: 5, scope: !132)
!132 = distinct !DILexicalBlock(scope: !130, file: !1, line: 51, column: 5)
!133 = !DILocation(line: 51, column: 5, scope: !134)
!134 = !DILexicalBlockFile(scope: !135, file: !1, discriminator: 1)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 51, column: 5)
!136 = !DILocation(line: 51, column: 5, scope: !137)
!137 = !DILexicalBlockFile(scope: !135, file: !1, discriminator: 2)
!138 = !DILocation(line: 51, column: 5, scope: !139)
!139 = !DILexicalBlockFile(scope: !135, file: !1, discriminator: 3)
!140 = distinct !{!140, !129}
!141 = !DILocation(line: 51, column: 5, scope: !142)
!142 = !DILexicalBlockFile(scope: !130, file: !1, discriminator: 4)
!143 = !DILocation(line: 52, column: 5, scope: !8)
!144 = !DILocation(line: 60, column: 5, scope: !8)
!145 = !{!"printf"}
!146 = !{!"int.const char *__restrict.1"}
!147 = !{!"/mnt/icgridio2/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch32/lin/gcc-arm-none-eabi/arm-none-eabi/libc/usr/include/stdio.h"}
!148 = !{!"encrypt"}
!149 = !{!"void.uint8_t [32].1.uint8_t [32].1.uint8_t [32].1.uint8_t [32].1.uint8_t [16].1"}
!150 = !{!"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h"}
