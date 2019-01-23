; ModuleID = '/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/utils/Timer.cpp'
source_filename = "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/utils/Timer.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-none--eabi"

%class.Timer = type { i8 }

@_ZN5TimerC1EPKcb = alias %class.Timer* (%class.Timer*, i8*, i1), %class.Timer* (%class.Timer*, i8*, i1)* @_ZN5TimerC2EPKcb
@_ZN5TimerD1Ev = alias %class.Timer* (%class.Timer*), %class.Timer* (%class.Timer*)* @_ZN5TimerD2Ev

; Function Attrs: nounwind
define %class.Timer* @_ZN5TimerC2EPKcb(%class.Timer* returned, i8*, i1 zeroext) unnamed_addr #0 align 2 !dbg !8 !xidane.fname !29 !xidane.function_declaration_type !30 !xidane.function_declaration_filename !31 {
  %4 = alloca %class.Timer*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8, align 1
  store %class.Timer* %0, %class.Timer** %4, align 4
  call void @llvm.dbg.declare(metadata %class.Timer** %4, metadata !32, metadata !34), !dbg !35
  store i8* %1, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !36, metadata !34), !dbg !37
  %7 = zext i1 %2 to i8
  store i8 %7, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !38, metadata !34), !dbg !39
  %8 = load %class.Timer*, %class.Timer** %4, align 4
  ret %class.Timer* %8, !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
define %class.Timer* @_ZN5TimerD2Ev(%class.Timer* returned) unnamed_addr #0 align 2 !dbg !41 !xidane.fname !42 !xidane.function_declaration_type !43 !xidane.function_declaration_filename !31 {
  %2 = alloca %class.Timer*, align 4
  store %class.Timer* %0, %class.Timer** %2, align 4
  call void @llvm.dbg.declare(metadata %class.Timer** %2, metadata !44, metadata !34), !dbg !45
  %3 = load %class.Timer*, %class.Timer** %2, align 4
  ret %class.Timer* %3, !dbg !46
}

; Function Attrs: nounwind
define void @_ZN5Timer5startEv(%class.Timer*) #0 align 2 !dbg !47 !xidane.fname !48 !xidane.function_declaration_type !43 !xidane.function_declaration_filename !31 {
  %2 = alloca %class.Timer*, align 4
  store %class.Timer* %0, %class.Timer** %2, align 4
  call void @llvm.dbg.declare(metadata %class.Timer** %2, metadata !49, metadata !34), !dbg !50
  %3 = load %class.Timer*, %class.Timer** %2, align 4
  ret void, !dbg !51
}

; Function Attrs: nounwind
define void @_ZN5Timer4stopEv(%class.Timer*) #0 align 2 !dbg !52 !xidane.fname !53 !xidane.function_declaration_type !43 !xidane.function_declaration_filename !31 {
  %2 = alloca %class.Timer*, align 4
  store %class.Timer* %0, %class.Timer** %2, align 4
  call void @llvm.dbg.declare(metadata %class.Timer** %2, metadata !54, metadata !34), !dbg !55
  %3 = load %class.Timer*, %class.Timer** %2, align 4
  ret void, !dbg !56
}

; Function Attrs: nounwind
define float @_ZN5Timer8get_timeEv(%class.Timer*) #0 align 2 !dbg !57 !xidane.fname !58 !xidane.function_declaration_type !59 !xidane.function_declaration_filename !31 {
  %2 = alloca %class.Timer*, align 4
  store %class.Timer* %0, %class.Timer** %2, align 4
  call void @llvm.dbg.declare(metadata %class.Timer** %2, metadata !60, metadata !34), !dbg !61
  %3 = load %class.Timer*, %class.Timer** %2, align 4
  ret float 0.000000e+00, !dbg !62
}

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-a9" "target-features"="+dsp,+strict-align,+vfp3,-crypto,-d16,-fp-armv8,-fp-only-sp,-fp16,-neon,-vfp4" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.9.0 (tags/RELEASE_390/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/utils/Timer.cpp", directory: "/scratch/local/tmp.yK7okjyWNi")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{!"clang version 3.9.0 (tags/RELEASE_390/final)"}
!8 = distinct !DISubprogram(name: "Timer", linkageName: "_ZN5TimerC2EPKcb", scope: !9, file: !1, line: 60, type: !13, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !12, variables: !2)
!9 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Timer", file: !10, line: 22, size: 8, align: 8, elements: !11, identifier: "_ZTS5Timer")
!10 = !DIFile(filename: "/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/utils/Timer.h", directory: "/scratch/local/tmp.yK7okjyWNi")
!11 = !{!12, !20, !23, !24, !25}
!12 = !DISubprogram(name: "Timer", scope: !9, file: !10, line: 35, type: !13, isLocal: false, isDefinition: false, scopeLine: 35, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !16, !19}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, align: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIBasicType(name: "bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!20 = !DISubprogram(name: "~Timer", scope: !9, file: !10, line: 37, type: !21, isLocal: false, isDefinition: false, scopeLine: 37, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !15}
!23 = !DISubprogram(name: "start", linkageName: "_ZN5Timer5startEv", scope: !9, file: !10, line: 40, type: !21, isLocal: false, isDefinition: false, scopeLine: 40, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!24 = !DISubprogram(name: "stop", linkageName: "_ZN5Timer4stopEv", scope: !9, file: !10, line: 41, type: !21, isLocal: false, isDefinition: false, scopeLine: 41, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!25 = !DISubprogram(name: "get_time", linkageName: "_ZN5Timer8get_timeEv", scope: !9, file: !10, line: 44, type: !26, isLocal: false, isDefinition: false, scopeLine: 44, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !15}
!28 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!29 = !{!"Timer"}
!30 = !{!"void.const char *.1._Bool.0"}
!31 = !{!"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/utils/Timer.h"}
!32 = !DILocalVariable(name: "this", arg: 1, scope: !8, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, align: 32)
!34 = !DIExpression()
!35 = !DILocation(line: 0, scope: !8)
!36 = !DILocalVariable(name: "Name", arg: 2, scope: !8, file: !1, line: 60, type: !16)
!37 = !DILocation(line: 60, column: 26, scope: !8)
!38 = !DILocalVariable(name: "On", arg: 3, scope: !8, file: !1, line: 60, type: !19)
!39 = !DILocation(line: 60, column: 37, scope: !8)
!40 = !DILocation(line: 61, column: 1, scope: !8)
!41 = distinct !DISubprogram(name: "~Timer", linkageName: "_ZN5TimerD2Ev", scope: !9, file: !1, line: 63, type: !21, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !20, variables: !2)
!42 = !{!"~Timer"}
!43 = !{!"void."}
!44 = !DILocalVariable(name: "this", arg: 1, scope: !41, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!45 = !DILocation(line: 0, scope: !41)
!46 = !DILocation(line: 64, column: 1, scope: !41)
!47 = distinct !DISubprogram(name: "start", linkageName: "_ZN5Timer5startEv", scope: !9, file: !1, line: 66, type: !21, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !23, variables: !2)
!48 = !{!"start"}
!49 = !DILocalVariable(name: "this", arg: 1, scope: !47, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!50 = !DILocation(line: 0, scope: !47)
!51 = !DILocation(line: 67, column: 1, scope: !47)
!52 = distinct !DISubprogram(name: "stop", linkageName: "_ZN5Timer4stopEv", scope: !9, file: !1, line: 69, type: !21, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !24, variables: !2)
!53 = !{!"stop"}
!54 = !DILocalVariable(name: "this", arg: 1, scope: !52, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!55 = !DILocation(line: 0, scope: !52)
!56 = !DILocation(line: 70, column: 1, scope: !52)
!57 = distinct !DISubprogram(name: "get_time", linkageName: "_ZN5Timer8get_timeEv", scope: !9, file: !1, line: 72, type: !26, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, declaration: !25, variables: !2)
!58 = !{!"get_time"}
!59 = !{!"float."}
!60 = !DILocalVariable(name: "this", arg: 1, scope: !57, type: !33, flags: DIFlagArtificial | DIFlagObjectPointer)
!61 = !DILocation(line: 0, scope: !57)
!62 = !DILocation(line: 73, column: 3, scope: !57)
