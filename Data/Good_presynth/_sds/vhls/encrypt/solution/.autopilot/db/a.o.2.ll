; ModuleID = '/scratch/local/tmp.wBr2TBiwTt/_sds/vhls/encrypt/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@unroll_factor_sub = constant i32 13, align 4     ; [#uses=0 type=i32*]
@unroll_factor_mix = constant i32 1, align 4      ; [#uses=0 type=i32*]
@unroll_factor_exp2 = constant i32 2, align 4     ; [#uses=0 type=i32*]
@unroll_factor_exp1 = constant i32 2, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb3 = constant i32 12, align 4    ; [#uses=0 type=i32*]
@unroll_factor_ecb2 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb1 = constant i32 28, align 4    ; [#uses=0 type=i32*]
@unroll_factor_cpkey = constant i32 15, align 4   ; [#uses=0 type=i32*]
@unroll_factor_addkey = constant i32 15, align 4  ; [#uses=0 type=i32*]
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1 ; [#uses=17 type=[256 x i8]*]
@pipeline_ii_sub = constant i32 9, align 4        ; [#uses=0 type=i32*]
@pipeline_ii_mix = constant i32 2, align 4        ; [#uses=0 type=i32*]
@pipeline_ii_exp2 = constant i32 2, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_exp1 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb3 = constant i32 4, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb2 = constant i32 5, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb1 = constant i32 31, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_cpkey = constant i32 2, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_addkey = constant i32 4, align 4     ; [#uses=0 type=i32*]
@encrypt.str = internal unnamed_addr constant [8 x i8] c"encrypt\00" ; [#uses=1 type=[8 x i8]*]
@.str9 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=12 type=[7 x i8]*]
@.str8 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1 ; [#uses=6 type=[4 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=12 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [4 x i8] c"mix\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1 ; [#uses=3 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"addkey\00", align 1 ; [#uses=3 type=[7 x i8]*]
@.str15 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str14 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str12 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str11 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str10 = private unnamed_addr constant [4 x i8] c"buf\00", align 1 ; [#uses=6 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=67 type=[1 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"sub\00", align 1 ; [#uses=3 type=[4 x i8]*]

; [#uses=7]
declare i1024 @llvm.part.set.i1024.i256(i1024, i256, i32, i32) nounwind readnone

; [#uses=35]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @encrypt(i1024* %ctx, [32 x i8]* %k, [16 x i8]* %buf) {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i1024* %ctx), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %k), !map !518
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %buf), !map !524
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt.str) nounwind
  call void @llvm.dbg.value(metadata !{i1024* %ctx}, i64 0, metadata !530), !dbg !568 ; [debug line = 299:30] [debug variable = ctx]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !569), !dbg !571 ; [debug line = 299:43] [debug variable = k]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !572), !dbg !576 ; [debug line = 299:58] [debug variable = buf]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str1) nounwind, !dbg !577 ; [debug line = 301:1]
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([32 x i8]* %k, [1 x i8]* @.str1, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1)
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %k, [5 x i8]* @.str12, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  %k.addr = getelementptr [32 x i8]* %k, i32 0, i32 0, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load = load i8* %k.addr, align 1, !dbg !579  ; [#uses=2 type=i8] [debug line = 311:2]
  %ctx.load = load i1024* %ctx, align 4, !dbg !579 ; [#uses=1 type=i1024] [debug line = 311:2]
  %k.addr.1 = getelementptr [32 x i8]* %k, i32 0, i32 1, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.1 = load i8* %k.addr.1, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.2 = getelementptr [32 x i8]* %k, i32 0, i32 2, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.2 = load i8* %k.addr.2, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.3 = getelementptr [32 x i8]* %k, i32 0, i32 3, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.3 = load i8* %k.addr.3, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.4 = getelementptr [32 x i8]* %k, i32 0, i32 4, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.4 = load i8* %k.addr.4, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.5 = getelementptr [32 x i8]* %k, i32 0, i32 5, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.5 = load i8* %k.addr.5, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.6 = getelementptr [32 x i8]* %k, i32 0, i32 6, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.6 = load i8* %k.addr.6, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.7 = getelementptr [32 x i8]* %k, i32 0, i32 7, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.7 = load i8* %k.addr.7, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.8 = getelementptr [32 x i8]* %k, i32 0, i32 8, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.8 = load i8* %k.addr.8, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.9 = getelementptr [32 x i8]* %k, i32 0, i32 9, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.9 = load i8* %k.addr.9, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.10 = getelementptr [32 x i8]* %k, i32 0, i32 10, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.10 = load i8* %k.addr.10, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.11 = getelementptr [32 x i8]* %k, i32 0, i32 11, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.11 = load i8* %k.addr.11, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.12 = getelementptr [32 x i8]* %k, i32 0, i32 12, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.12 = load i8* %k.addr.12, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.13 = getelementptr [32 x i8]* %k, i32 0, i32 13, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.13 = load i8* %k.addr.13, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.14 = getelementptr [32 x i8]* %k, i32 0, i32 14, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.14 = load i8* %k.addr.14, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.15 = getelementptr [32 x i8]* %k, i32 0, i32 15, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.15 = load i8* %k.addr.15, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.16 = getelementptr [32 x i8]* %k, i32 0, i32 16, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.16 = load i8* %k.addr.16, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.17 = getelementptr [32 x i8]* %k, i32 0, i32 17, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.17 = load i8* %k.addr.17, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.18 = getelementptr [32 x i8]* %k, i32 0, i32 18, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.18 = load i8* %k.addr.18, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.19 = getelementptr [32 x i8]* %k, i32 0, i32 19, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.19 = load i8* %k.addr.19, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.20 = getelementptr [32 x i8]* %k, i32 0, i32 20, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.20 = load i8* %k.addr.20, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.21 = getelementptr [32 x i8]* %k, i32 0, i32 21, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.21 = load i8* %k.addr.21, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.22 = getelementptr [32 x i8]* %k, i32 0, i32 22, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.22 = load i8* %k.addr.22, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.23 = getelementptr [32 x i8]* %k, i32 0, i32 23, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.23 = load i8* %k.addr.23, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.24 = getelementptr [32 x i8]* %k, i32 0, i32 24, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.24 = load i8* %k.addr.24, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.25 = getelementptr [32 x i8]* %k, i32 0, i32 25, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.25 = load i8* %k.addr.25, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.26 = getelementptr [32 x i8]* %k, i32 0, i32 26, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.26 = load i8* %k.addr.26, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.27 = getelementptr [32 x i8]* %k, i32 0, i32 27, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.27 = load i8* %k.addr.27, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.28 = getelementptr [32 x i8]* %k, i32 0, i32 28, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.28 = load i8* %k.addr.28, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.29 = getelementptr [32 x i8]* %k, i32 0, i32 29, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.29 = load i8* %k.addr.29, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.30 = getelementptr [32 x i8]* %k, i32 0, i32 30, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.30 = load i8* %k.addr.30, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %k.addr.31 = getelementptr [32 x i8]* %k, i32 0, i32 31, !dbg !579 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k.load.31 = load i8* %k.addr.31, align 1, !dbg !579 ; [#uses=2 type=i8] [debug line = 311:2]
  %tmp = call i512 @_ssdm_op_BitConcatenate.i512.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8 %k.load.31, i8 %k.load.30, i8 %k.load.29, i8 %k.load.28, i8 %k.load.27, i8 %k.load.26, i8 %k.load.25, i8 %k.load.24, i8 %k.load.23, i8 %k.load.22, i8 %k.load.21, i8 %k.load.20, i8 %k.load.19, i8 %k.load.18, i8 %k.load.17, i8 %k.load.16, i8 %k.load.15, i8 %k.load.14, i8 %k.load.13, i8 %k.load.12, i8 %k.load.11, i8 %k.load.10, i8 %k.load.9, i8 %k.load.8, i8 %k.load.7, i8 %k.load.6, i8 %k.load.5, i8 %k.load.4, i8 %k.load.3, i8 %k.load.2, i8 %k.load.1, i8 %k.load, i8 %k.load.31, i8 %k.load.30, i8 %k.load.29, i8 %k.load.28, i8 %k.load.27, i8 %k.load.26, i8 %k.load.25, i8 %k.load.24, i8 %k.load.23, i8 %k.load.22, i8 %k.load.21, i8 %k.load.20, i8 %k.load.19, i8 %k.load.18, i8 %k.load.17, i8 %k.load.16, i8 %k.load.15, i8 %k.load.14, i8 %k.load.13, i8 %k.load.12, i8 %k.load.11, i8 %k.load.10, i8 %k.load.9, i8 %k.load.8, i8 %k.load.7, i8 %k.load.6, i8 %k.load.5, i8 %k.load.4, i8 %k.load.3, i8 %k.load.2, i8 %k.load.1, i8 %k.load), !dbg !579 ; [#uses=1 type=i512] [debug line = 311:2]
  %gep1112.part_set. = call i1024 @_ssdm_op_PartSet.i1024.i1024.i512.i32.i32(i1024 %ctx.load, i512 %tmp, i32 256, i32 767), !dbg !579 ; [#uses=1 type=i1024] [debug line = 311:2]
  store i1024 %gep1112.part_set., i1024* %ctx, align 4, !dbg !579 ; [debug line = 311:2]
  br label %.preheader, !dbg !582                 ; [debug line = 313:17]

.preheader:                                       ; preds = %1, %.preheader.preheader
  %rcon = phi i8 [ %rcon.1, %1 ], [ 1, %.preheader.preheader ] ; [#uses=1 type=i8]
  %i = phi i3 [ %phitmp, %1 ], [ -1, %.preheader.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !584), !dbg !582 ; [debug line = 313:17] [debug variable = i]
  %tmp.7 = icmp eq i3 %i, 0, !dbg !582            ; [#uses=1 type=i1] [debug line = 313:17]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) ; [#uses=0 type=i32]
  br i1 %tmp.7, label %3, label %1, !dbg !582     ; [debug line = 313:17]

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str14) nounwind, !dbg !585 ; [debug line = 313:29]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str14), !dbg !585 ; [#uses=1 type=i32] [debug line = 313:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !587 ; [debug line = 315:1]
  %rcon.1 = call fastcc i8 @aes_expandEncKey.1(i1024* %ctx, i8 %rcon) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rcon.1}, i64 0, metadata !588), !dbg !589 ; [debug line = 319:2] [debug variable = rcon]
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str14, i32 %tmp.1), !dbg !590 ; [#uses=0 type=i32] [debug line = 320:5]
  %phitmp = add i3 %i, -1, !dbg !590              ; [#uses=1 type=i3] [debug line = 320:5]
  br label %.preheader, !dbg !590                 ; [debug line = 320:5]

; <label>:3                                       ; preds = %.preheader
  call fastcc void @aes_addRoundKey_cpy([16 x i8]* %buf, i1024* %ctx)
  br label %4, !dbg !591                          ; [debug line = 324:16]

; <label>:4                                       ; preds = %50, %3
  %rcon. = phi i8 [ 1, %3 ], [ %rcon.2.10, %50 ]  ; [#uses=3 type=i8]
  %i.2 = phi i8 [ 1, %3 ], [ %i.4., %50 ]         ; [#uses=25 type=i8]
  %i.2.cast = trunc i8 %i.2 to i1                 ; [#uses=1 type=i1]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %exitcond = icmp eq i8 %i.2, 14, !dbg !591      ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond, label %54, label %8, !dbg !591 ; [debug line = 324:16]

; <label>:6                                       ; preds = %9, %7
  %rcon.2 = phi i8 [ %call.ret, %9 ], [ %rcon., %7 ] ; [#uses=3 type=i8]
  %tmp.2 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.1 = icmp eq i8 %i.2, 13, !dbg !591    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.1, label %54, label %12, !dbg !591 ; [debug line = 324:16]

; <label>:7                                       ; preds = %8
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %6, !dbg !593                          ; [debug line = 334:21]

; <label>:8                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str15) nounwind, !dbg !595 ; [debug line = 325:6]
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %i.2.cast, label %7, label %9, !dbg !599  ; [debug line = 334:9]

; <label>:9                                       ; preds = %8
  %call.ret = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %6

; <label>:10                                      ; preds = %13, %11
  %rcon.2.1 = phi i8 [ %call.ret3329.1, %13 ], [ %rcon.2, %11 ] ; [#uses=3 type=i8]
  %tmp.3 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.2 = icmp eq i8 %i.2, 12, !dbg !591    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.2, label %54, label %16, !dbg !591 ; [debug line = 324:16]

; <label>:11                                      ; preds = %12
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %10, !dbg !593                         ; [debug line = 334:21]

; <label>:12                                      ; preds = %6
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.2, label %13, label %11, !dbg !599   ; [debug line = 334:9]

; <label>:13                                      ; preds = %12
  %call.ret3329.1 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %10

; <label>:14                                      ; preds = %17, %15
  %rcon.2.2 = phi i8 [ %call.ret3329.2, %17 ], [ %rcon.2.1, %15 ] ; [#uses=3 type=i8]
  %tmp.4 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.3 = icmp eq i8 %i.2, 11, !dbg !591    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.3, label %54, label %20, !dbg !591 ; [debug line = 324:16]

; <label>:15                                      ; preds = %16
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %14, !dbg !593                         ; [debug line = 334:21]

; <label>:16                                      ; preds = %10
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.3, label %15, label %17, !dbg !599   ; [debug line = 334:9]

; <label>:17                                      ; preds = %16
  %call.ret3329.2 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.1) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %14

; <label>:18                                      ; preds = %21, %19
  %rcon.2.3 = phi i8 [ %call.ret3329.3, %21 ], [ %rcon.2.2, %19 ] ; [#uses=3 type=i8]
  %tmp.5 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.4 = icmp eq i8 %i.2, 10, !dbg !591    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.4, label %54, label %24, !dbg !591 ; [debug line = 324:16]

; <label>:19                                      ; preds = %20
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %18, !dbg !593                         ; [debug line = 334:21]

; <label>:20                                      ; preds = %14
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.4, label %21, label %19, !dbg !599   ; [debug line = 334:9]

; <label>:21                                      ; preds = %20
  %call.ret3329.3 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.2) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %18

; <label>:22                                      ; preds = %25, %23
  %rcon.2.4 = phi i8 [ %call.ret3329.4, %25 ], [ %rcon.2.3, %23 ] ; [#uses=3 type=i8]
  %tmp.6 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.5 = icmp eq i8 %i.2, 9, !dbg !591     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.5, label %54, label %28, !dbg !591 ; [debug line = 324:16]

; <label>:23                                      ; preds = %24
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %22, !dbg !593                         ; [debug line = 334:21]

; <label>:24                                      ; preds = %18
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.5, label %23, label %25, !dbg !599   ; [debug line = 334:9]

; <label>:25                                      ; preds = %24
  %call.ret3329.4 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.3) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %22

; <label>:26                                      ; preds = %29, %27
  %rcon.2.5 = phi i8 [ %call.ret3329.5, %29 ], [ %rcon.2.4, %27 ] ; [#uses=3 type=i8]
  %tmp.8 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.6 = icmp eq i8 %i.2, 8, !dbg !591     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.6, label %54, label %32, !dbg !591 ; [debug line = 324:16]

; <label>:27                                      ; preds = %28
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %26, !dbg !593                         ; [debug line = 334:21]

; <label>:28                                      ; preds = %22
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.6, label %29, label %27, !dbg !599   ; [debug line = 334:9]

; <label>:29                                      ; preds = %28
  %call.ret3329.5 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.4) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %26

; <label>:30                                      ; preds = %33, %31
  %rcon.2.6 = phi i8 [ %call.ret3329.6, %33 ], [ %rcon.2.5, %31 ] ; [#uses=3 type=i8]
  %tmp.9 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.7 = icmp eq i8 %i.2, 7, !dbg !591     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.7, label %54, label %36, !dbg !591 ; [debug line = 324:16]

; <label>:31                                      ; preds = %32
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %30, !dbg !593                         ; [debug line = 334:21]

; <label>:32                                      ; preds = %26
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.8, label %31, label %33, !dbg !599   ; [debug line = 334:9]

; <label>:33                                      ; preds = %32
  %call.ret3329.6 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.5) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %30

; <label>:34                                      ; preds = %37, %35
  %rcon.2.7 = phi i8 [ %call.ret3329.7, %37 ], [ %rcon.2.6, %35 ] ; [#uses=3 type=i8]
  %tmp.10 = trunc i8 %i.2 to i1                   ; [#uses=1 type=i1]
  %exitcond.8 = icmp eq i8 %i.2, 6, !dbg !591     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.8, label %54, label %40, !dbg !591 ; [debug line = 324:16]

; <label>:35                                      ; preds = %36
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %34, !dbg !593                         ; [debug line = 334:21]

; <label>:36                                      ; preds = %30
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.9, label %37, label %35, !dbg !599   ; [debug line = 334:9]

; <label>:37                                      ; preds = %36
  %call.ret3329.7 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.6) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %34

; <label>:38                                      ; preds = %41, %39
  %rcon.2.8 = phi i8 [ %call.ret3329.8, %41 ], [ %rcon.2.7, %39 ] ; [#uses=3 type=i8]
  %tmp.11 = trunc i8 %i.2 to i1                   ; [#uses=1 type=i1]
  %exitcond.9 = icmp eq i8 %i.2, 5, !dbg !591     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.9, label %54, label %44, !dbg !591 ; [debug line = 324:16]

; <label>:39                                      ; preds = %40
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %38, !dbg !593                         ; [debug line = 334:21]

; <label>:40                                      ; preds = %34
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.10, label %39, label %41, !dbg !599  ; [debug line = 334:9]

; <label>:41                                      ; preds = %40
  %call.ret3329.8 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.7) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %38

; <label>:42                                      ; preds = %45, %43
  %rcon.2.9 = phi i8 [ %call.ret3329.9, %45 ], [ %rcon.2.8, %43 ] ; [#uses=3 type=i8]
  %tmp.12 = trunc i8 %i.2 to i1                   ; [#uses=1 type=i1]
  %exitcond. = icmp eq i8 %i.2, 4, !dbg !591      ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond., label %54, label %48, !dbg !591 ; [debug line = 324:16]

; <label>:43                                      ; preds = %44
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %42, !dbg !593                         ; [debug line = 334:21]

; <label>:44                                      ; preds = %38
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.11, label %45, label %43, !dbg !599  ; [debug line = 334:9]

; <label>:45                                      ; preds = %44
  %call.ret3329.9 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.8) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %42

; <label>:46                                      ; preds = %49, %47
  %rcon.2. = phi i8 [ %call.ret3329., %49 ], [ %rcon.2.9, %47 ] ; [#uses=3 type=i8]
  %tmp.13 = trunc i8 %i.2 to i1                   ; [#uses=1 type=i1]
  %exitcond.10 = icmp eq i8 %i.2, 3, !dbg !591    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond.10, label %54, label %52, !dbg !591 ; [debug line = 324:16]

; <label>:47                                      ; preds = %48
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %46, !dbg !593                         ; [debug line = 334:21]

; <label>:48                                      ; preds = %42
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.12, label %47, label %49, !dbg !599  ; [debug line = 334:9]

; <label>:49                                      ; preds = %48
  %call.ret3329. = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.9) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %46

; <label>:50                                      ; preds = %53, %51
  %rcon.2.10 = phi i8 [ %call.ret3329.10, %53 ], [ %rcon.2., %51 ] ; [#uses=1 type=i8]
  %i.4. = add i8 %i.2, 12, !dbg !600              ; [#uses=1 type=i8] [debug line = 324:41]
  br label %4, !dbg !600                          ; [debug line = 324:41]

; <label>:51                                      ; preds = %52
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %50, !dbg !593                         ; [debug line = 334:21]

; <label>:52                                      ; preds = %46
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !596 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !597 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !598 ; [debug line = 333:9]
  br i1 %tmp.13, label %53, label %51, !dbg !599  ; [debug line = 334:9]

; <label>:53                                      ; preds = %52
  %call.ret3329.10 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.2.) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %50

; <label>:54                                      ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6, %4
  %rcon.1.lcssa = phi i8 [ %rcon., %4 ], [ %rcon.2, %6 ], [ %rcon.2.1, %10 ], [ %rcon.2.2, %14 ], [ %rcon.2.3, %18 ], [ %rcon.2.4, %22 ], [ %rcon.2.5, %26 ], [ %rcon.2.6, %30 ], [ %rcon.2.7, %34 ], [ %rcon.2.8, %38 ], [ %rcon.2.9, %42 ], [ %rcon.2., %46 ] ; [#uses=1 type=i8]
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !601 ; [debug line = 337:5]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !602 ; [debug line = 338:5]
  %call.ret4428 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.1.lcssa) ; [#uses=0 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %call.ret4428}, i64 0, metadata !588), !dbg !603 ; [debug line = 339:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  ret void, !dbg !604                             ; [debug line = 341:1]
}

; [#uses=13]
define internal fastcc void @aes_subBytes([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !605), !dbg !609 ; [debug line = 178:28] [debug variable = buf]
  br label %1, !dbg !610                          ; [debug line = 182:11]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.1, %3 ]           ; [#uses=2 type=i5]
  %i.1 = add i5 %i, -1, !dbg !610                 ; [#uses=2 type=i5] [debug line = 182:11]
  %i.1.cast = sext i5 %i.1 to i8, !dbg !610       ; [#uses=1 type=i8] [debug line = 182:11]
  call void @llvm.dbg.value(metadata !{i5 %i.1}, i64 0, metadata !612), !dbg !610 ; [debug line = 182:11] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !610              ; [#uses=1 type=i1] [debug line = 182:11]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %5, label %3, !dbg !610       ; [debug line = 182:11]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str) nounwind, !dbg !613 ; [debug line = 183:6]
  %tmp.2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str), !dbg !613 ; [#uses=1 type=i32] [debug line = 183:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 9, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !615 ; [debug line = 185:1]
  %tmp. = zext i8 %i.1.cast to i32, !dbg !616     ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !616 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !616 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1 = zext i8 %buf.load to i32, !dbg !616    ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1, !dbg !616 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !616 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load, i8* %buf.addr, align 1, !dbg !616 ; [debug line = 189:2]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str, i32 %tmp.2), !dbg !617 ; [#uses=0 type=i32] [debug line = 190:5]
  br label %1, !dbg !617                          ; [debug line = 190:5]

; <label>:5                                       ; preds = %1
  ret void, !dbg !618                             ; [debug line = 191:1]
}

; [#uses=13]
define internal fastcc void @aes_shiftRows([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !619), !dbg !621 ; [debug line = 227:29] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 1, !dbg !622 ; [#uses=2 type=i8*] [debug line = 231:5]
  %i = load i8* %buf.addr, align 1, !dbg !622     ; [#uses=1 type=i8] [debug line = 231:5]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !624), !dbg !622 ; [debug line = 231:5] [debug variable = i]
  %buf.addr.1 = getelementptr [16 x i8]* %buf, i32 0, i32 5, !dbg !625 ; [#uses=2 type=i8*] [debug line = 231:17]
  %buf.load = load i8* %buf.addr.1, align 1, !dbg !625 ; [#uses=1 type=i8] [debug line = 231:17]
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !625 ; [debug line = 231:17]
  %buf.addr.2 = getelementptr [16 x i8]* %buf, i32 0, i32 9, !dbg !626 ; [#uses=2 type=i8*] [debug line = 231:34]
  %buf.load.1 = load i8* %buf.addr.2, align 1, !dbg !626 ; [#uses=1 type=i8] [debug line = 231:34]
  store i8 %buf.load.1, i8* %buf.addr.1, align 1, !dbg !626 ; [debug line = 231:34]
  %buf.addr.3 = getelementptr [16 x i8]* %buf, i32 0, i32 13, !dbg !627 ; [#uses=2 type=i8*] [debug line = 231:51]
  %buf.load.2 = load i8* %buf.addr.3, align 1, !dbg !627 ; [#uses=1 type=i8] [debug line = 231:51]
  store i8 %buf.load.2, i8* %buf.addr.2, align 1, !dbg !627 ; [debug line = 231:51]
  store i8 %i, i8* %buf.addr.3, align 1, !dbg !628 ; [debug line = 231:69]
  %buf.addr.4 = getelementptr [16 x i8]* %buf, i32 0, i32 10, !dbg !629 ; [#uses=2 type=i8*] [debug line = 232:5]
  %i.2 = load i8* %buf.addr.4, align 1, !dbg !629 ; [#uses=1 type=i8] [debug line = 232:5]
  call void @llvm.dbg.value(metadata !{i8 %i.2}, i64 0, metadata !624), !dbg !629 ; [debug line = 232:5] [debug variable = i]
  %buf.addr.5 = getelementptr [16 x i8]* %buf, i32 0, i32 2, !dbg !630 ; [#uses=2 type=i8*] [debug line = 232:18]
  %buf.load.4 = load i8* %buf.addr.5, align 1, !dbg !630 ; [#uses=1 type=i8] [debug line = 232:18]
  store i8 %buf.load.4, i8* %buf.addr.4, align 1, !dbg !630 ; [debug line = 232:18]
  store i8 %i.2, i8* %buf.addr.5, align 1, !dbg !631 ; [debug line = 232:36]
  %buf.addr.6 = getelementptr [16 x i8]* %buf, i32 0, i32 3, !dbg !632 ; [#uses=2 type=i8*] [debug line = 233:5]
  %j = load i8* %buf.addr.6, align 1, !dbg !632   ; [#uses=1 type=i8] [debug line = 233:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !633), !dbg !632 ; [debug line = 233:5] [debug variable = j]
  %buf.addr.7 = getelementptr [16 x i8]* %buf, i32 0, i32 15, !dbg !634 ; [#uses=2 type=i8*] [debug line = 233:17]
  %buf.load.6 = load i8* %buf.addr.7, align 1, !dbg !634 ; [#uses=1 type=i8] [debug line = 233:17]
  store i8 %buf.load.6, i8* %buf.addr.6, align 1, !dbg !634 ; [debug line = 233:17]
  %buf.addr.8 = getelementptr [16 x i8]* %buf, i32 0, i32 11, !dbg !635 ; [#uses=2 type=i8*] [debug line = 233:35]
  %buf.load.7 = load i8* %buf.addr.8, align 1, !dbg !635 ; [#uses=1 type=i8] [debug line = 233:35]
  store i8 %buf.load.7, i8* %buf.addr.7, align 1, !dbg !635 ; [debug line = 233:35]
  %buf.addr.9 = getelementptr [16 x i8]* %buf, i32 0, i32 7, !dbg !636 ; [#uses=2 type=i8*] [debug line = 233:54]
  %buf.load.8 = load i8* %buf.addr.9, align 1, !dbg !636 ; [#uses=1 type=i8] [debug line = 233:54]
  store i8 %buf.load.8, i8* %buf.addr.8, align 1, !dbg !636 ; [debug line = 233:54]
  store i8 %j, i8* %buf.addr.9, align 1, !dbg !637 ; [debug line = 233:72]
  %buf.addr.10 = getelementptr [16 x i8]* %buf, i32 0, i32 14, !dbg !638 ; [#uses=2 type=i8*] [debug line = 234:5]
  %j.1 = load i8* %buf.addr.10, align 1, !dbg !638 ; [#uses=1 type=i8] [debug line = 234:5]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !633), !dbg !638 ; [debug line = 234:5] [debug variable = j]
  %buf.addr.11 = getelementptr [16 x i8]* %buf, i32 0, i32 6, !dbg !639 ; [#uses=2 type=i8*] [debug line = 234:18]
  %buf.load.10 = load i8* %buf.addr.11, align 1, !dbg !639 ; [#uses=1 type=i8] [debug line = 234:18]
  store i8 %buf.load.10, i8* %buf.addr.10, align 1, !dbg !639 ; [debug line = 234:18]
  store i8 %j.1, i8* %buf.addr.11, align 1, !dbg !640 ; [debug line = 234:36]
  ret void, !dbg !641                             ; [debug line = 236:1]
}

; [#uses=12]
define internal fastcc void @aes_mixColumns([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !642), !dbg !644 ; [debug line = 239:30] [debug variable = buf]
  br label %1, !dbg !645                          ; [debug line = 243:16]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %i.3, %3 ]             ; [#uses=4 type=i5]
  %tmp = icmp sgt i5 %i, -1, !dbg !645            ; [#uses=1 type=i1] [debug line = 243:16]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !645       ; [debug line = 243:16]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str4) nounwind, !dbg !648 ; [debug line = 244:6]
  %tmp. = zext i5 %i to i32, !dbg !650            ; [#uses=1 type=i32] [debug line = 250:2]
  %tmp..cast = trunc i5 %i to i4, !dbg !650       ; [#uses=3 type=i4] [debug line = 250:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !650 ; [#uses=2 type=i8*] [debug line = 250:2]
  %a = load i8* %buf.addr, align 1, !dbg !650     ; [#uses=3 type=i8] [debug line = 250:2]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !651), !dbg !650 ; [debug line = 250:2] [debug variable = a]
  %tmp.2 = or i4 %tmp..cast, 1, !dbg !652         ; [#uses=1 type=i4] [debug line = 250:14]
  %tmp.2.cast = zext i4 %tmp.2 to i32, !dbg !652  ; [#uses=1 type=i32] [debug line = 250:14]
  %buf.addr.12 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.2.cast, !dbg !652 ; [#uses=2 type=i8*] [debug line = 250:14]
  %b = load i8* %buf.addr.12, align 1, !dbg !652  ; [#uses=3 type=i8] [debug line = 250:14]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !653), !dbg !652 ; [debug line = 250:14] [debug variable = b]
  %tmp.3 = or i4 %tmp..cast, 2, !dbg !654         ; [#uses=1 type=i4] [debug line = 250:30]
  %tmp.3.cast = zext i4 %tmp.3 to i32, !dbg !654  ; [#uses=1 type=i32] [debug line = 250:30]
  %buf.addr.13 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.3.cast, !dbg !654 ; [#uses=2 type=i8*] [debug line = 250:30]
  %c = load i8* %buf.addr.13, align 1, !dbg !654  ; [#uses=4 type=i8] [debug line = 250:30]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !655), !dbg !654 ; [debug line = 250:30] [debug variable = c]
  %tmp.4 = or i4 %tmp..cast, 3, !dbg !656         ; [#uses=1 type=i4] [debug line = 250:46]
  %tmp.4.cast = zext i4 %tmp.4 to i32, !dbg !656  ; [#uses=1 type=i32] [debug line = 250:46]
  %buf.addr.14 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.4.cast, !dbg !656 ; [#uses=2 type=i8*] [debug line = 250:46]
  %d = load i8* %buf.addr.14, align 1, !dbg !656  ; [#uses=3 type=i8] [debug line = 250:46]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !657), !dbg !656 ; [debug line = 250:46] [debug variable = d]
  %x.assign = xor i8 %b, %a, !dbg !658            ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp.6 = xor i8 %c, %x.assign, !dbg !658        ; [#uses=2 type=i8] [debug line = 251:9]
  %e = xor i8 %d, %tmp.6, !dbg !658               ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !659), !dbg !658 ; [debug line = 251:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x.assign}, i64 0, metadata !660), !dbg !665 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp.i = icmp slt i8 %x.assign, 0, !dbg !666    ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp.1.i = shl i8 %x.assign, 1, !dbg !666       ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp.2.i = xor i8 %tmp.1.i, 27, !dbg !666       ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp.4.i = select i1 %tmp.i, i8 %tmp.2.i, i8 %tmp.1.i, !dbg !666 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp1 = xor i8 %tmp.4.i, %e, !dbg !664          ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp.9 = xor i8 %tmp1, %a, !dbg !664            ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %tmp.9, i8* %buf.addr, align 1, !dbg !664 ; [debug line = 252:23]
  %x.assign.1 = xor i8 %c, %b, !dbg !668          ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.1}, i64 0, metadata !669), !dbg !670 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp.i8 = icmp slt i8 %x.assign.1, 0, !dbg !671 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp.1.i9 = shl i8 %x.assign.1, 1, !dbg !671    ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp.2.i1 = xor i8 %tmp.1.i9, 27, !dbg !671     ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp.4.i1 = select i1 %tmp.i8, i8 %tmp.2.i1, i8 %tmp.1.i9, !dbg !671 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp2 = xor i8 %tmp.4.i1, %e, !dbg !668         ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.5 = xor i8 %tmp2, %b, !dbg !668            ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %tmp.5, i8* %buf.addr.12, align 1, !dbg !668 ; [debug line = 252:54]
  %x.assign.2 = xor i8 %d, %c, !dbg !672          ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.2}, i64 0, metadata !673), !dbg !674 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp.i1 = icmp slt i8 %x.assign.2, 0, !dbg !675 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp.1.i1 = shl i8 %x.assign.2, 1, !dbg !675    ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp.2.i2 = xor i8 %tmp.1.i1, 27, !dbg !675     ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp.4.i2 = select i1 %tmp.i1, i8 %tmp.2.i2, i8 %tmp.1.i1, !dbg !675 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp3 = xor i8 %tmp.4.i2, %e, !dbg !672         ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.1 = xor i8 %tmp3, %c, !dbg !672            ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %tmp.1, i8* %buf.addr.13, align 1, !dbg !672 ; [debug line = 253:25]
  %x.assign.3 = xor i8 %d, %a, !dbg !676          ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.3}, i64 0, metadata !677), !dbg !678 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp.i2 = icmp slt i8 %x.assign.3, 0, !dbg !679 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp.1.i2 = shl i8 %x.assign.3, 1, !dbg !679    ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp.2.i3 = xor i8 %tmp.1.i2, 27, !dbg !679     ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.4.i3 = select i1 %tmp.i2, i8 %tmp.2.i3, i8 %tmp.1.i2, !dbg !679 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.7 = xor i8 %tmp.4.i3, %tmp.6, !dbg !676    ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %tmp.7, i8* %buf.addr.14, align 1, !dbg !676 ; [debug line = 253:56]
  %i.3 = add i5 %i, 4, !dbg !680                  ; [#uses=1 type=i5] [debug line = 243:31]
  call void @llvm.dbg.value(metadata !{i5 %i.3}, i64 0, metadata !681), !dbg !680 ; [debug line = 243:31] [debug variable = i]
  br label %1, !dbg !680                          ; [debug line = 243:31]

; <label>:4                                       ; preds = %1
  ret void, !dbg !682                             ; [debug line = 255:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandEncKey.1(i1024* %k, i8 %rc.read) {
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{i1024* %k}, i64 0, metadata !683), !dbg !688 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !689), !dbg !690 ; [debug line = 258:44] [debug variable = rc]
  %k.load = load i1024* %k, align 4, !dbg !691    ; [#uses=34 type=i1024] [debug line = 262:5]
  %.new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %k.load, i32 512, i32 767), !dbg !691 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp.3 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 744, i32 751), !dbg !691 ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp = zext i8 %tmp.3 to i32, !dbg !691         ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !691 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !691 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.4 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 512, i32 519), !dbg !691 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %tmp.4, %rc.read, !dbg !691      ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp. = xor i8 %tmp1, %sbox.load, !dbg !691     ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp.5 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %.new, i8 %tmp., i32 0, i32 7), !dbg !691 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp.6 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 752, i32 759), !dbg !693 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp.21 = zext i8 %tmp.6 to i32, !dbg !693      ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.21, !dbg !693 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !693 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.7 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 520, i32 527), !dbg !693 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.22 = xor i8 %sbox.load.1, %tmp.7, !dbg !693 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp.8 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.5, i8 %tmp.22, i32 8, i32 15), !dbg !693 ; [#uses=1 type=i256] [debug line = 263:5]
  %tmp.9 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 760, i32 767), !dbg !694 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp.23 = zext i8 %tmp.9 to i32, !dbg !694      ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.23, !dbg !694 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !694 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.10 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 528, i32 535), !dbg !694 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.24 = xor i8 %sbox.load.2, %tmp.10, !dbg !694 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp.11 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.8, i8 %tmp.24, i32 16, i32 23), !dbg !694 ; [#uses=1 type=i256] [debug line = 264:5]
  %tmp.12 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 736, i32 743), !dbg !695 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp.25 = zext i8 %tmp.12 to i32, !dbg !695     ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.25, !dbg !695 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !695 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.13 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 536, i32 543), !dbg !695 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.26 = xor i8 %sbox.load.3, %tmp.13, !dbg !695 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp.14 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.11, i8 %tmp.26, i32 24, i32 31), !dbg !695 ; [#uses=1 type=i256] [debug line = 265:5]
  %tmp.27 = shl i8 %rc.read, 1, !dbg !696         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.15 = lshr i8 %rc.read, 7, !dbg !696        ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.16 = trunc i8 %tmp.15 to i1, !dbg !696     ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp.29.cast = select i1 %tmp.16, i8 27, i8 0   ; [#uses=1 type=i8]
  %tmp.28 = xor i8 %tmp.29.cast, %tmp.27, !dbg !696 ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.17 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 544, i32 551), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.29 = xor i8 %tmp.17, %tmp., !dbg !697      ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.18 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.14, i8 %tmp.29, i10 32, i10 39), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.19 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 552, i32 559), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.30 = xor i8 %tmp.19, %tmp.22, !dbg !697    ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.20 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.18, i8 %tmp.30, i10 40, i10 47), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.31 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 560, i32 567), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36 = xor i8 %tmp.31, %tmp.24, !dbg !697    ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.32 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.20, i8 %tmp.36, i10 48, i10 55), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.33 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 568, i32 575), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39 = xor i8 %tmp.33, %tmp.26, !dbg !697    ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.34 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.32, i8 %tmp.39, i10 56, i10 63), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.35 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 576, i32 583), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36.1 = xor i8 %tmp.35, %tmp.29, !dbg !697  ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.37 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.34, i8 %tmp.36.1, i10 64, i10 71), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.38 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 584, i32 591), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39.1 = xor i8 %tmp.38, %tmp.30, !dbg !697  ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.40 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.37, i8 %tmp.39.1, i10 72, i10 79), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.41 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 592, i32 599), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42.1 = xor i8 %tmp.41, %tmp.36, !dbg !697  ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.42 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.40, i8 %tmp.42.1, i10 80, i10 87), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.43 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 600, i32 607), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45.1 = xor i8 %tmp.43, %tmp.39, !dbg !697  ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.44 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.42, i8 %tmp.45.1, i10 88, i10 95), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.45 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 608, i32 615), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36.2 = xor i8 %tmp.45, %tmp.36.1, !dbg !697 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.54 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.44, i8 %tmp.36.2, i10 96, i10 103), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.55 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 616, i32 623), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39.2 = xor i8 %tmp.55, %tmp.39.1, !dbg !697 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.56 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.54, i8 %tmp.39.2, i10 104, i10 111), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.57 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 624, i32 631), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42.2 = xor i8 %tmp.57, %tmp.42.1, !dbg !697 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.58 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.56, i8 %tmp.42.2, i10 112, i10 119), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.59 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 632, i32 639), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45.2 = xor i8 %tmp.59, %tmp.45.1, !dbg !697 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.60 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.58, i8 %tmp.45.2, i10 120, i10 127), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.46 = zext i8 %tmp.36.2 to i32, !dbg !700   ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.46, !dbg !700 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !700 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.61 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 640, i32 647), !dbg !700 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.47 = xor i8 %sbox.load.4, %tmp.61, !dbg !700 ; [#uses=2 type=i8] [debug line = 278:5]
  %tmp.62 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.60, i8 %tmp.47, i32 128, i32 135), !dbg !700 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp.48 = zext i8 %tmp.39.2 to i32, !dbg !701   ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.48, !dbg !701 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !701 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.63 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 648, i32 655), !dbg !701 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.49 = xor i8 %sbox.load.5, %tmp.63, !dbg !701 ; [#uses=2 type=i8] [debug line = 279:5]
  %tmp.64 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.62, i8 %tmp.49, i32 136, i32 143), !dbg !701 ; [#uses=1 type=i256] [debug line = 279:5]
  %tmp.50 = zext i8 %tmp.42.2 to i32, !dbg !702   ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.50, !dbg !702 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !702 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.65 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 656, i32 663), !dbg !702 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.51 = xor i8 %sbox.load.6, %tmp.65, !dbg !702 ; [#uses=2 type=i8] [debug line = 280:5]
  %tmp.66 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.64, i8 %tmp.51, i32 144, i32 151), !dbg !702 ; [#uses=1 type=i256] [debug line = 280:5]
  %tmp.52 = zext i8 %tmp.45.2 to i32, !dbg !703   ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.52, !dbg !703 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !703 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.67 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 664, i32 671), !dbg !703 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.53 = xor i8 %sbox.load.7, %tmp.67, !dbg !703 ; [#uses=2 type=i8] [debug line = 281:5]
  %tmp.68 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.66, i8 %tmp.53, i32 152, i32 159), !dbg !703 ; [#uses=1 type=i256] [debug line = 281:5]
  %tmp.69 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 672, i32 679), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.70 = xor i8 %tmp.69, %tmp.47, !dbg !704    ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.71 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.68, i8 %tmp.70, i10 160, i10 167), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.72 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 680, i32 687), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.73 = xor i8 %tmp.72, %tmp.49, !dbg !704    ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.74 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.71, i8 %tmp.73, i10 168, i10 175), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.75 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 688, i32 695), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.91 = xor i8 %tmp.75, %tmp.51, !dbg !704    ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.76 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.74, i8 %tmp.91, i10 176, i10 183), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.77 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 696, i32 703), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.92 = xor i8 %tmp.77, %tmp.53, !dbg !704    ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.78 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.76, i8 %tmp.92, i10 184, i10 191), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.79 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 704, i32 711), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.57.1 = xor i8 %tmp.79, %tmp.70, !dbg !704  ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.80 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.78, i8 %tmp.57.1, i10 192, i10 199), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.81 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 712, i32 719), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.60.1 = xor i8 %tmp.81, %tmp.73, !dbg !704  ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.82 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.80, i8 %tmp.60.1, i10 200, i10 207), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.83 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 720, i32 727), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.63.1 = xor i8 %tmp.83, %tmp.91, !dbg !704  ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.84 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.82, i8 %tmp.63.1, i10 208, i10 215), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.85 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 728, i32 735), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.66.1 = xor i8 %tmp.85, %tmp.92, !dbg !704  ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.86 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.84, i8 %tmp.66.1, i10 216, i10 223), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.57.2 = xor i8 %tmp.12, %tmp.57.1, !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.87 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.86, i8 %tmp.57.2, i10 224, i10 231), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.60.2 = xor i8 %tmp.3, %tmp.60.1, !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.88 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.87, i8 %tmp.60.2, i10 232, i10 239), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.63.2 = xor i8 %tmp.6, %tmp.63.1, !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.89 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.88, i8 %tmp.63.2, i10 240, i10 247), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.66.2 = xor i8 %tmp.9, %tmp.66.1, !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.90 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.89, i8 %tmp.66.2, i10 248, i10 255), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %gep11011.part_set.2 = call i1024 @llvm.part.set.i1024.i256(i1024 %k.load, i256 %tmp.90, i32 512, i32 767), !dbg !704 ; [#uses=1 type=i1024] [debug line = 290:2]
  store i1024 %gep11011.part_set.2, i1024* %k, align 4, !dbg !704 ; [debug line = 290:2]
  ret i8 %tmp.28, !dbg !707                       ; [debug line = 294:1]
}

; [#uses=13]
define internal fastcc i8 @aes_expandEncKey(i1024* %k, i8 %rc.read) {
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{i1024* %k}, i64 0, metadata !683), !dbg !688 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !689), !dbg !690 ; [debug line = 258:44] [debug variable = rc]
  %k.load = load i1024* %k, align 4, !dbg !691    ; [#uses=10 type=i1024] [debug line = 262:5]
  %.new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %k.load, i32 0, i32 255), !dbg !691 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp.91 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 232, i32 239), !dbg !691 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp = zext i8 %tmp.91 to i32, !dbg !691        ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !691 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !691 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.92 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 0, i32 7), !dbg !691 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %tmp.92, %rc.read, !dbg !691     ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.22 = xor i8 %tmp1, %sbox.load, !dbg !691   ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp. = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %.new, i8 %tmp.22, i32 0, i32 7), !dbg !691 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp.93 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 240, i32 247), !dbg !693 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.23 = zext i8 %tmp.93 to i32, !dbg !693     ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.23, !dbg !693 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !693 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.94 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 8, i32 15), !dbg !693 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.24 = xor i8 %sbox.load.1, %tmp.94, !dbg !693 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.95 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp., i8 %tmp.24, i32 8, i32 15), !dbg !693 ; [#uses=1 type=i256] [debug line = 263:5]
  %tmp.96 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 248, i32 255), !dbg !694 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.25 = zext i8 %tmp.96 to i32, !dbg !694     ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.25, !dbg !694 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !694 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.97 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 16, i32 23), !dbg !694 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.26 = xor i8 %sbox.load.2, %tmp.97, !dbg !694 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.98 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.95, i8 %tmp.26, i32 16, i32 23), !dbg !694 ; [#uses=1 type=i256] [debug line = 264:5]
  %tmp.99 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 224, i32 231), !dbg !695 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.27 = zext i8 %tmp.99 to i32, !dbg !695     ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.27, !dbg !695 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !695 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.100 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 24, i32 31), !dbg !695 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.28 = xor i8 %sbox.load.3, %tmp.100, !dbg !695 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.101 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.98, i8 %tmp.28, i32 24, i32 31), !dbg !695 ; [#uses=1 type=i256] [debug line = 265:5]
  %gep25188190.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %k.load, i256 %tmp.101, i32 0, i32 255), !dbg !695 ; [#uses=1 type=i1024] [debug line = 265:5]
  %tmp.29 = shl i8 %rc.read, 1, !dbg !696         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.102 = lshr i8 %rc.read, 7, !dbg !696       ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.103 = trunc i8 %tmp.102 to i1, !dbg !696   ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp.31.cast = select i1 %tmp.103, i8 27, i8 0  ; [#uses=1 type=i8]
  %tmp.32 = xor i8 %tmp.31.cast, %tmp.29, !dbg !696 ; [#uses=1 type=i8] [debug line = 266:5]
  br label %1, !dbg !708                          ; [debug line = 268:16]

; <label>:1                                       ; preds = %3, %0
  %.new1 = phi i1024 [ %gep25188190.part_set, %0 ], [ %gep17128130.part_set, %3 ] ; [#uses=3 type=i1024]
  %i = phi i5 [ 4, %0 ], [ %i.4, %3 ]             ; [#uses=4 type=i5]
  %tmp.33 = icmp sgt i5 %i, -1, !dbg !708         ; [#uses=1 type=i1] [debug line = 268:16]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.33, label %3, label %5, !dbg !708    ; [debug line = 268:16]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str5) nounwind, !dbg !709 ; [debug line = 269:6]
  %tmp.104 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str5), !dbg !709 ; [#uses=1 type=i32] [debug line = 269:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !710 ; [debug line = 271:1]
  %tmp.105 = zext i5 %i to i7                     ; [#uses=1 type=i7]
  %tmp.106.cast = trunc i5 %i to i4, !dbg !697    ; [#uses=7 type=i4] [debug line = 275:2]
  %tmp.106 = add i4 %tmp.106.cast, -4, !dbg !697  ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.107.cast = zext i4 %tmp.106 to i7, !dbg !697 ; [#uses=1 type=i7] [debug line = 275:2]
  %.new2 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %.new1, i32 0, i32 255), !dbg !697 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp.107 = shl nuw i7 %tmp.107.cast, 3          ; [#uses=2 type=i7]
  %tmp.109.cast = zext i7 %tmp.107 to i10         ; [#uses=1 type=i10]
  %tmp.108 = or i7 %tmp.107, 7                    ; [#uses=1 type=i7]
  %tmp.110.cast = zext i7 %tmp.108 to i10         ; [#uses=1 type=i10]
  %tmp.109 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.109.cast, i10 %tmp.110.cast), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.110 = shl i7 %tmp.105, 3                   ; [#uses=2 type=i7]
  %tmp.113.cast = zext i7 %tmp.110 to i10         ; [#uses=2 type=i10]
  %tmp.111 = or i7 %tmp.110, 7                    ; [#uses=1 type=i7]
  %tmp.114.cast = zext i7 %tmp.111 to i10         ; [#uses=2 type=i10]
  %tmp.112 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.113.cast, i10 %tmp.114.cast), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36 = xor i8 %tmp.112, %tmp.109, !dbg !697  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.113 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %.new2, i8 %tmp.36, i10 %tmp.113.cast, i10 %tmp.114.cast), !dbg !697 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp.114 = add i4 %tmp.106.cast, -3, !dbg !697  ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.117.cast = zext i4 %tmp.114 to i7, !dbg !697 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.115 = shl nuw i7 %tmp.117.cast, 3          ; [#uses=2 type=i7]
  %tmp.119.cast = zext i7 %tmp.115 to i10         ; [#uses=1 type=i10]
  %tmp.116 = or i7 %tmp.115, 7                    ; [#uses=1 type=i7]
  %tmp.120.cast = zext i7 %tmp.116 to i10         ; [#uses=1 type=i10]
  %tmp.117 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.113, i10 %tmp.119.cast, i10 %tmp.120.cast), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.118 = or i4 %tmp.106.cast, 1, !dbg !697    ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.122.cast = zext i4 %tmp.118 to i7, !dbg !697 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.119 = shl nuw i7 %tmp.122.cast, 3          ; [#uses=2 type=i7]
  %tmp.124.cast = zext i7 %tmp.119 to i10         ; [#uses=2 type=i10]
  %tmp.120 = or i7 %tmp.119, 7                    ; [#uses=1 type=i7]
  %tmp.125.cast = zext i7 %tmp.120 to i10         ; [#uses=2 type=i10]
  %tmp.121 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.113, i10 %tmp.124.cast, i10 %tmp.125.cast), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39 = xor i8 %tmp.121, %tmp.117, !dbg !697  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.122 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.113, i8 %tmp.39, i10 %tmp.124.cast, i10 %tmp.125.cast), !dbg !697 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp.123 = add i4 %tmp.106.cast, -2, !dbg !697  ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.128.cast = zext i4 %tmp.123 to i7, !dbg !697 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.124 = shl nuw i7 %tmp.128.cast, 3          ; [#uses=2 type=i7]
  %tmp.130.cast = zext i7 %tmp.124 to i10         ; [#uses=1 type=i10]
  %tmp.125 = or i7 %tmp.124, 7                    ; [#uses=1 type=i7]
  %tmp.131.cast = zext i7 %tmp.125 to i10         ; [#uses=1 type=i10]
  %tmp.126 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.122, i10 %tmp.130.cast, i10 %tmp.131.cast), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.127 = or i4 %tmp.106.cast, 2, !dbg !697    ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.133.cast = zext i4 %tmp.127 to i7, !dbg !697 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.128 = shl nuw i7 %tmp.133.cast, 3          ; [#uses=2 type=i7]
  %tmp.135.cast = zext i7 %tmp.128 to i10         ; [#uses=2 type=i10]
  %tmp.129 = or i7 %tmp.128, 7                    ; [#uses=1 type=i7]
  %tmp.136.cast = zext i7 %tmp.129 to i10         ; [#uses=2 type=i10]
  %tmp.130 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.122, i10 %tmp.135.cast, i10 %tmp.136.cast), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42 = xor i8 %tmp.130, %tmp.126, !dbg !697  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.131 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.122, i8 %tmp.42, i10 %tmp.135.cast, i10 %tmp.136.cast), !dbg !697 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp.132 = add i4 %tmp.106.cast, -1, !dbg !697  ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.139.cast = zext i4 %tmp.132 to i7, !dbg !697 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.133 = shl nuw i7 %tmp.139.cast, 3          ; [#uses=2 type=i7]
  %tmp.141.cast = zext i7 %tmp.133 to i10         ; [#uses=1 type=i10]
  %tmp.134 = or i7 %tmp.133, 7                    ; [#uses=1 type=i7]
  %tmp.142.cast = zext i7 %tmp.134 to i10         ; [#uses=1 type=i10]
  %tmp.135 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.131, i10 %tmp.141.cast, i10 %tmp.142.cast), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.136 = or i4 %tmp.106.cast, 3, !dbg !697    ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.144.cast = zext i4 %tmp.136 to i7, !dbg !697 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.137 = shl nuw i7 %tmp.144.cast, 3          ; [#uses=2 type=i7]
  %tmp.146.cast = zext i7 %tmp.137 to i10         ; [#uses=2 type=i10]
  %tmp.138 = or i7 %tmp.137, 7                    ; [#uses=1 type=i7]
  %tmp.147.cast = zext i7 %tmp.138 to i10         ; [#uses=2 type=i10]
  %tmp.139 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.131, i10 %tmp.146.cast, i10 %tmp.147.cast), !dbg !697 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45 = xor i8 %tmp.139, %tmp.135, !dbg !697  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.140 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.131, i8 %tmp.45, i10 %tmp.146.cast, i10 %tmp.147.cast), !dbg !697 ; [#uses=1 type=i256] [debug line = 275:2]
  %gep17128130.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %.new1, i256 %tmp.140, i32 0, i32 255), !dbg !697 ; [#uses=1 type=i1024] [debug line = 275:2]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str5, i32 %tmp.104), !dbg !711 ; [#uses=0 type=i32] [debug line = 277:5]
  %i.4 = add i5 %i, 4, !dbg !712                  ; [#uses=1 type=i5] [debug line = 268:31]
  call void @llvm.dbg.value(metadata !{i5 %i.4}, i64 0, metadata !713), !dbg !712 ; [debug line = 268:31] [debug variable = i]
  br label %1, !dbg !712                          ; [debug line = 268:31]

; <label>:5                                       ; preds = %1
  %.new1.lcssa = phi i1024 [ %.new1, %1 ]         ; [#uses=10 type=i1024]
  %.new3 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %.new1.lcssa, i32 0, i32 255), !dbg !700 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp.141 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 96, i32 103), !dbg !700 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.46 = zext i8 %tmp.141 to i32, !dbg !700    ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.46, !dbg !700 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !700 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.142 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 128, i32 135), !dbg !700 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.47 = xor i8 %sbox.load.4, %tmp.142, !dbg !700 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.143 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %.new3, i8 %tmp.47, i32 128, i32 135), !dbg !700 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp.144 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 104, i32 111), !dbg !701 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.48 = zext i8 %tmp.144 to i32, !dbg !701    ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.48, !dbg !701 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !701 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.145 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 136, i32 143), !dbg !701 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.49 = xor i8 %sbox.load.5, %tmp.145, !dbg !701 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.146 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.143, i8 %tmp.49, i32 136, i32 143), !dbg !701 ; [#uses=1 type=i256] [debug line = 279:5]
  %tmp.147 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 112, i32 119), !dbg !702 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.50 = zext i8 %tmp.147 to i32, !dbg !702    ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.50, !dbg !702 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !702 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.148 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 144, i32 151), !dbg !702 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.51 = xor i8 %sbox.load.6, %tmp.148, !dbg !702 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.149 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.146, i8 %tmp.51, i32 144, i32 151), !dbg !702 ; [#uses=1 type=i256] [debug line = 280:5]
  %tmp.150 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 120, i32 127), !dbg !703 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.52 = zext i8 %tmp.150 to i32, !dbg !703    ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.52, !dbg !703 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !703 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.151 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 152, i32 159), !dbg !703 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.53 = xor i8 %sbox.load.7, %tmp.151, !dbg !703 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.152 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.149, i8 %tmp.53, i32 152, i32 159), !dbg !703 ; [#uses=1 type=i256] [debug line = 281:5]
  %gep96870.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %.new1.lcssa, i256 %tmp.152, i32 0, i32 255), !dbg !703 ; [#uses=2 type=i1024] [debug line = 281:5]
  store i1024 %gep96870.part_set, i1024* %k, align 4, !dbg !703 ; [debug line = 281:5]
  br label %6, !dbg !714                          ; [debug line = 283:16]

; <label>:6                                       ; preds = %9, %5
  %gep = phi i1024 [ %gep96870.part_set, %5 ], [ %gep11011.part_set.1, %9 ] ; [#uses=3 type=i1024]
  %i.1 = phi i6 [ 20, %5 ], [ %i.9.1, %9 ]        ; [#uses=6 type=i6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %tmp.54 = icmp sgt i6 %i.1, -1, !dbg !714       ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp.54, label %8, label %10, !dbg !714   ; [debug line = 283:16]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str6) nounwind, !dbg !715 ; [debug line = 284:6]
  %tmp.162.cast = trunc i6 %i.1 to i5, !dbg !704  ; [#uses=7 type=i5] [debug line = 290:2]
  %tmp.153 = add i5 %tmp.162.cast, -4, !dbg !704  ; [#uses=1 type=i5] [debug line = 290:2]
  %.new4 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 0, i32 255), !dbg !704 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.164.cast = zext i5 %tmp.153 to i8          ; [#uses=1 type=i8]
  %tmp.154 = shl nuw i8 %tmp.164.cast, 3          ; [#uses=2 type=i8]
  %tmp.165.cast = zext i8 %tmp.154 to i10         ; [#uses=1 type=i10]
  %tmp.155 = or i8 %tmp.154, 7                    ; [#uses=1 type=i8]
  %tmp.166.cast = zext i8 %tmp.155 to i10         ; [#uses=1 type=i10]
  %tmp.156 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new4, i10 %tmp.165.cast, i10 %tmp.166.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.168.cast = zext i6 %i.1 to i8              ; [#uses=1 type=i8]
  %tmp.157 = shl i8 %tmp.168.cast, 3              ; [#uses=2 type=i8]
  %tmp.169.cast = zext i8 %tmp.157 to i10         ; [#uses=3 type=i10]
  %tmp.158 = or i8 %tmp.157, 7                    ; [#uses=1 type=i8]
  %tmp.170.cast = zext i8 %tmp.158 to i10         ; [#uses=3 type=i10]
  %tmp.159 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new4, i10 %tmp.169.cast, i10 %tmp.170.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.57 = xor i8 %tmp.159, %tmp.156, !dbg !704  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.160 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %.new4, i8 %tmp.57, i10 %tmp.169.cast, i10 %tmp.170.cast), !dbg !704 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.161 = add i5 %tmp.162.cast, -3, !dbg !704  ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.174.cast = zext i5 %tmp.161 to i8          ; [#uses=1 type=i8]
  %tmp.162 = shl nuw i8 %tmp.174.cast, 3          ; [#uses=2 type=i8]
  %tmp.175.cast = zext i8 %tmp.162 to i10         ; [#uses=1 type=i10]
  %tmp.163 = or i8 %tmp.162, 7                    ; [#uses=1 type=i8]
  %tmp.176.cast = zext i8 %tmp.163 to i10         ; [#uses=1 type=i10]
  %tmp.164 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.160, i10 %tmp.175.cast, i10 %tmp.176.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.165 = or i5 %tmp.162.cast, 1, !dbg !704    ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.179.cast = zext i5 %tmp.165 to i8          ; [#uses=1 type=i8]
  %tmp.166 = shl nuw i8 %tmp.179.cast, 3          ; [#uses=2 type=i8]
  %tmp.180.cast = zext i8 %tmp.166 to i10         ; [#uses=3 type=i10]
  %tmp.167 = or i8 %tmp.166, 7                    ; [#uses=1 type=i8]
  %tmp.181.cast = zext i8 %tmp.167 to i10         ; [#uses=3 type=i10]
  %tmp.168 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.160, i10 %tmp.180.cast, i10 %tmp.181.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.60 = xor i8 %tmp.168, %tmp.164, !dbg !704  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.169 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.160, i8 %tmp.60, i10 %tmp.180.cast, i10 %tmp.181.cast), !dbg !704 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.170 = add i5 %tmp.162.cast, -2, !dbg !704  ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.185.cast = zext i5 %tmp.170 to i8          ; [#uses=1 type=i8]
  %tmp.171 = shl nuw i8 %tmp.185.cast, 3          ; [#uses=2 type=i8]
  %tmp.186.cast = zext i8 %tmp.171 to i10         ; [#uses=1 type=i10]
  %tmp.172 = or i8 %tmp.171, 7                    ; [#uses=1 type=i8]
  %tmp.187.cast = zext i8 %tmp.172 to i10         ; [#uses=1 type=i10]
  %tmp.173 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.169, i10 %tmp.186.cast, i10 %tmp.187.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.174 = or i5 %tmp.162.cast, 2, !dbg !704    ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.190.cast = zext i5 %tmp.174 to i8          ; [#uses=1 type=i8]
  %tmp.175 = shl nuw i8 %tmp.190.cast, 3          ; [#uses=2 type=i8]
  %tmp.191.cast = zext i8 %tmp.175 to i10         ; [#uses=3 type=i10]
  %tmp.176 = or i8 %tmp.175, 7                    ; [#uses=1 type=i8]
  %tmp.192.cast = zext i8 %tmp.176 to i10         ; [#uses=3 type=i10]
  %tmp.177 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.169, i10 %tmp.191.cast, i10 %tmp.192.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.63 = xor i8 %tmp.177, %tmp.173, !dbg !704  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.178 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.169, i8 %tmp.63, i10 %tmp.191.cast, i10 %tmp.192.cast), !dbg !704 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.179 = add i5 %tmp.162.cast, -1, !dbg !704  ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.196.cast = zext i5 %tmp.179 to i8          ; [#uses=1 type=i8]
  %tmp.180 = shl nuw i8 %tmp.196.cast, 3          ; [#uses=2 type=i8]
  %tmp.197.cast = zext i8 %tmp.180 to i10         ; [#uses=1 type=i10]
  %tmp.181 = or i8 %tmp.180, 7                    ; [#uses=1 type=i8]
  %tmp.198.cast = zext i8 %tmp.181 to i10         ; [#uses=1 type=i10]
  %tmp.182 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.178, i10 %tmp.197.cast, i10 %tmp.198.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.183 = or i5 %tmp.162.cast, 3, !dbg !704    ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.201.cast = zext i5 %tmp.183 to i8          ; [#uses=1 type=i8]
  %tmp.184 = shl nuw i8 %tmp.201.cast, 3          ; [#uses=2 type=i8]
  %tmp.202.cast = zext i8 %tmp.184 to i10         ; [#uses=3 type=i10]
  %tmp.185 = or i8 %tmp.184, 7                    ; [#uses=1 type=i8]
  %tmp.203.cast = zext i8 %tmp.185 to i10         ; [#uses=3 type=i10]
  %tmp.186 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.178, i10 %tmp.202.cast, i10 %tmp.203.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.66 = xor i8 %tmp.186, %tmp.182, !dbg !704  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.187 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.178, i8 %tmp.66, i10 %tmp.202.cast, i10 %tmp.203.cast), !dbg !704 ; [#uses=4 type=i256] [debug line = 290:2]
  %gep11011.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp.187, i32 0, i32 255), !dbg !704 ; [#uses=1 type=i1024] [debug line = 290:2]
  store i1024 %gep11011.part_set, i1024* %k, align 4, !dbg !704 ; [debug line = 290:2]
  %i.9 = add i6 %i.1, 4, !dbg !716                ; [#uses=1 type=i6] [debug line = 283:32]
  %tmp.54.1 = icmp sgt i6 %i.9, -1, !dbg !714     ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp.54.1, label %9, label %10, !dbg !714 ; [debug line = 283:16]

; <label>:9                                       ; preds = %8
  %tmp.188 = add i6 %i.1, 4                       ; [#uses=4 type=i6]
  %tmp.189 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.187, i10 %tmp.169.cast, i10 %tmp.170.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.208.cast = zext i6 %tmp.188 to i9          ; [#uses=1 type=i9]
  %tmp.190 = shl nuw i9 %tmp.208.cast, 3          ; [#uses=2 type=i9]
  %tmp.209.cast = zext i9 %tmp.190 to i10         ; [#uses=2 type=i10]
  %tmp.191 = or i9 %tmp.190, 7                    ; [#uses=1 type=i9]
  %tmp.210.cast = zext i9 %tmp.191 to i10         ; [#uses=2 type=i10]
  %tmp.192 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.187, i10 %tmp.209.cast, i10 %tmp.210.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.57.1 = xor i8 %tmp.192, %tmp.189, !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.193 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.187, i8 %tmp.57.1, i10 %tmp.209.cast, i10 %tmp.210.cast), !dbg !704 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.194 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.193, i10 %tmp.180.cast, i10 %tmp.181.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.195 = or i6 %tmp.188, 1, !dbg !704         ; [#uses=1 type=i6] [debug line = 290:2]
  %tmp.215.cast = zext i6 %tmp.195 to i9          ; [#uses=1 type=i9]
  %tmp.196 = shl nuw i9 %tmp.215.cast, 3          ; [#uses=2 type=i9]
  %tmp.216.cast = zext i9 %tmp.196 to i10         ; [#uses=2 type=i10]
  %tmp.197 = or i9 %tmp.196, 7                    ; [#uses=1 type=i9]
  %tmp.217.cast = zext i9 %tmp.197 to i10         ; [#uses=2 type=i10]
  %tmp.198 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.193, i10 %tmp.216.cast, i10 %tmp.217.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.60.1 = xor i8 %tmp.198, %tmp.194, !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.199 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.193, i8 %tmp.60.1, i10 %tmp.216.cast, i10 %tmp.217.cast), !dbg !704 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.200 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.199, i10 %tmp.191.cast, i10 %tmp.192.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.201 = or i6 %tmp.188, 2, !dbg !704         ; [#uses=1 type=i6] [debug line = 290:2]
  %tmp.222.cast = zext i6 %tmp.201 to i9          ; [#uses=1 type=i9]
  %tmp.202 = shl nuw i9 %tmp.222.cast, 3          ; [#uses=2 type=i9]
  %tmp.223.cast = zext i9 %tmp.202 to i10         ; [#uses=2 type=i10]
  %tmp.203 = or i9 %tmp.202, 7                    ; [#uses=1 type=i9]
  %tmp.224.cast = zext i9 %tmp.203 to i10         ; [#uses=2 type=i10]
  %tmp.204 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.199, i10 %tmp.223.cast, i10 %tmp.224.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.63.1 = xor i8 %tmp.204, %tmp.200, !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.205 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.199, i8 %tmp.63.1, i10 %tmp.223.cast, i10 %tmp.224.cast), !dbg !704 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.206 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.205, i10 %tmp.202.cast, i10 %tmp.203.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.207 = or i6 %tmp.188, 3, !dbg !704         ; [#uses=1 type=i6] [debug line = 290:2]
  %tmp.229.cast = zext i6 %tmp.207 to i9          ; [#uses=1 type=i9]
  %tmp.208 = shl nuw i9 %tmp.229.cast, 3          ; [#uses=2 type=i9]
  %tmp.230.cast = zext i9 %tmp.208 to i10         ; [#uses=2 type=i10]
  %tmp.209 = or i9 %tmp.208, 7                    ; [#uses=1 type=i9]
  %tmp.231.cast = zext i9 %tmp.209 to i10         ; [#uses=2 type=i10]
  %tmp.210 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.205, i10 %tmp.230.cast, i10 %tmp.231.cast), !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.66.1 = xor i8 %tmp.210, %tmp.206, !dbg !704 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.211 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.205, i8 %tmp.66.1, i10 %tmp.230.cast, i10 %tmp.231.cast), !dbg !704 ; [#uses=1 type=i256] [debug line = 290:2]
  %gep11011.part_set.1 = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp.211, i32 0, i32 255), !dbg !704 ; [#uses=2 type=i1024] [debug line = 290:2]
  store i1024 %gep11011.part_set.1, i1024* %k, align 4, !dbg !704 ; [debug line = 290:2]
  %i.9.1 = add i6 %i.1, 8, !dbg !716              ; [#uses=1 type=i6] [debug line = 283:32]
  br label %6, !dbg !716                          ; [debug line = 283:32]

; <label>:10                                      ; preds = %8, %6
  ret i8 %tmp.32, !dbg !707                       ; [debug line = 294:1]
}

; [#uses=1]
define internal fastcc void @aes_addRoundKey_cpy([16 x i8]* %buf, i1024* %ctx) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !717), !dbg !721 ; [debug line = 210:35] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i1024* %ctx}, i64 0, metadata !722), !dbg !725 ; [debug line = 210:49] [debug variable = ctx]
  br label %1, !dbg !726                          ; [debug line = 214:13]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.5, %3 ]           ; [#uses=4 type=i5]
  %i.5 = add i5 %i, -1, !dbg !726                 ; [#uses=2 type=i5] [debug line = 214:13]
  %i.5.cast = sext i5 %i.5 to i8, !dbg !726       ; [#uses=1 type=i8] [debug line = 214:13]
  call void @llvm.dbg.value(metadata !{i5 %i.5}, i64 0, metadata !728), !dbg !726 ; [debug line = 214:13] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !726              ; [#uses=1 type=i1] [debug line = 214:13]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %5, label %3, !dbg !726       ; [debug line = 214:13]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str3) nounwind, !dbg !729 ; [debug line = 215:6]
  %tmp.212 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @.str3), !dbg !729 ; [#uses=1 type=i32] [debug line = 215:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !731 ; [debug line = 217:1]
  %tmp. = zext i8 %i.5.cast to i32, !dbg !732     ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.14 = trunc i5 %i to i4                     ; [#uses=1 type=i4]
  %ctx.load = load i1024* %ctx, align 4, !dbg !732 ; [#uses=3 type=i1024] [debug line = 221:2]
  %.new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx.load, i32 256, i32 511), !dbg !732 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp.213 = add i4 %tmp.14, -1                   ; [#uses=1 type=i4]
  %tmp.214 = zext i4 %tmp.213 to i7               ; [#uses=1 type=i7]
  %tmp.215 = shl nuw i7 %tmp.214, 3               ; [#uses=2 type=i7]
  %tmp.238.cast = zext i7 %tmp.215 to i10         ; [#uses=2 type=i10]
  %tmp.216 = or i7 %tmp.215, 7                    ; [#uses=1 type=i7]
  %tmp.239.cast = zext i7 %tmp.216 to i10         ; [#uses=2 type=i10]
  %tmp.217 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.238.cast, i10 %tmp.239.cast), !dbg !732 ; [#uses=2 type=i8] [debug line = 221:2]
  %.new4 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx.load, i32 0, i32 255), !dbg !732 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp.218 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %.new4, i8 %tmp.217, i10 %tmp.238.cast, i10 %tmp.239.cast), !dbg !732 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !732 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !732 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.54 = xor i8 %buf.load, %tmp.217, !dbg !732 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.54, i8* %buf.addr, align 1, !dbg !732 ; [debug line = 221:2]
  %tmp.219 = add i5 %i, 15, !dbg !732             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.243.cast = zext i5 %tmp.219 to i8          ; [#uses=1 type=i8]
  %tmp.220 = shl nuw i8 %tmp.243.cast, 3          ; [#uses=2 type=i8]
  %tmp.244.cast = zext i8 %tmp.220 to i10         ; [#uses=2 type=i10]
  %tmp.221 = or i8 %tmp.220, 7                    ; [#uses=1 type=i8]
  %tmp.245.cast = zext i8 %tmp.221 to i10         ; [#uses=2 type=i10]
  %tmp.222 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.244.cast, i10 %tmp.245.cast), !dbg !732 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.223 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.218, i8 %tmp.222, i10 %tmp.244.cast, i10 %tmp.245.cast), !dbg !732 ; [#uses=1 type=i256] [debug line = 221:2]
  %gep21112.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %ctx.load, i256 %tmp.223, i32 0, i32 255), !dbg !732 ; [#uses=1 type=i1024] [debug line = 221:2]
  store i1024 %gep21112.part_set, i1024* %ctx, align 4, !dbg !732 ; [debug line = 221:2]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @.str3, i32 %tmp.212), !dbg !733 ; [#uses=0 type=i32] [debug line = 222:5]
  br label %1, !dbg !733                          ; [debug line = 222:5]

; <label>:5                                       ; preds = %1
  ret void, !dbg !734                             ; [debug line = 223:1]
}

; [#uses=25]
define internal fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %key, i6 %key.offset) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1024* %key, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !735), !dbg !737 ; [debug line = 194:31] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i1024* %key}, i64 0, metadata !738), !dbg !740 ; [debug line = 194:45] [debug variable = key]
  %tmp.251.cast = trunc i6 %key.offset to i5, !dbg !741 ; [#uses=1 type=i5] [debug line = 198:14]
  br label %1, !dbg !741                          ; [debug line = 198:14]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.6, %3 ]           ; [#uses=3 type=i5]
  %i.6 = add i5 %i, -1, !dbg !741                 ; [#uses=2 type=i5] [debug line = 198:14]
  %i.6.cast = sext i5 %i.6 to i8, !dbg !741       ; [#uses=1 type=i8] [debug line = 198:14]
  call void @llvm.dbg.value(metadata !{i5 %i.6}, i64 0, metadata !743), !dbg !741 ; [debug line = 198:14] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !741              ; [#uses=1 type=i1] [debug line = 198:14]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %5, label %3, !dbg !741       ; [debug line = 198:14]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str2) nounwind, !dbg !744 ; [debug line = 199:6]
  %tmp.224 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @.str2), !dbg !744 ; [#uses=1 type=i32] [debug line = 199:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !746 ; [debug line = 201:1]
  %tmp. = zext i8 %i.6.cast to i32, !dbg !747     ; [#uses=1 type=i32] [debug line = 205:2]
  %tmp1 = add i5 %tmp.251.cast, -1, !dbg !747     ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.225 = add i5 %i, %tmp1, !dbg !747          ; [#uses=1 type=i5] [debug line = 205:2]
  %key.load = load i1024* %key, align 4, !dbg !747 ; [#uses=1 type=i1024] [debug line = 205:2]
  %.new2 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key.load, i32 0, i32 255), !dbg !747 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp.253.cast = zext i5 %tmp.225 to i8          ; [#uses=1 type=i8]
  %tmp.226 = shl nuw i8 %tmp.253.cast, 3          ; [#uses=2 type=i8]
  %tmp.254.cast = zext i8 %tmp.226 to i10         ; [#uses=1 type=i10]
  %tmp.227 = or i8 %tmp.226, 7                    ; [#uses=1 type=i8]
  %tmp.255.cast = zext i8 %tmp.227 to i10         ; [#uses=1 type=i10]
  %tmp.228 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.254.cast, i10 %tmp.255.cast), !dbg !747 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !747 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !747 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.55 = xor i8 %buf.load, %tmp.228, !dbg !747 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.55, i8* %buf.addr, align 1, !dbg !747 ; [debug line = 205:2]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @.str2, i32 %tmp.224), !dbg !748 ; [#uses=0 type=i32] [debug line = 206:5]
  br label %1, !dbg !748                          ; [debug line = 206:5]

; <label>:5                                       ; preds = %1
  ret void, !dbg !749                             ; [debug line = 207:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=8]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=8]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=13]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=16]
declare i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256, i8, i32, i32) nounwind readnone

; [#uses=38]
declare i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256, i8, i10, i10) nounwind readnone

; [#uses=1]
declare i1024 @_ssdm_op_PartSet.i1024.i1024.i512.i32.i32(i1024, i512, i32, i32) nounwind readnone

; [#uses=27]
declare i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256, i10, i10) nounwind readnone

; [#uses=48]
declare i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024, i32, i32) nounwind readnone

; [#uses=8]
declare i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024, i32, i32) nounwind readnone

; [#uses=1]
declare i512 @_ssdm_op_BitConcatenate.i512.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !11, !17, !7, !7, !23, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!28}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !2, metadata !9, metadata !4, metadata !10, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*"}
!10 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!11 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !6}
!12 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!13 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*"}
!15 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!19 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!21 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!23 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !24, metadata !6}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!25 = metadata !{null, metadata !18, metadata !19, metadata !26, metadata !21, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"aes256_context*", metadata !"uint8_t*", metadata !"uint8_t*"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"ctx", metadata !"k", metadata !"buf"}
!28 = metadata !{i32 786449, i32 0, i32 1, metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls/encrypt/solution/.autopilot/db/aes.pragma.2.c", metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !29} ; [ DW_TAG_compile_unit ]
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !62, metadata !65, metadata !66, metadata !67}
!31 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb2", metadata !"unroll_factor_ecb2", metadata !"", metadata !32, i32 83, metadata !33, i32 0, i32 1, i32* @unroll_factor_ecb2} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c", metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!34 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb3", metadata !"pipeline_ii_ecb3", metadata !"", metadata !32, i32 74, metadata !33, i32 0, i32 1, i32* @pipeline_ii_ecb3} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_sub", metadata !"unroll_factor_sub", metadata !"", metadata !32, i32 76, metadata !33, i32 0, i32 1, i32* @unroll_factor_sub} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb1", metadata !"unroll_factor_ecb1", metadata !"", metadata !32, i32 82, metadata !33, i32 0, i32 1, i32* @unroll_factor_ecb1} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp1", metadata !"pipeline_ii_exp1", metadata !"", metadata !32, i32 70, metadata !33, i32 0, i32 1, i32* @pipeline_ii_exp1} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb2", metadata !"pipeline_ii_ecb2", metadata !"", metadata !32, i32 73, metadata !33, i32 0, i32 1, i32* @pipeline_ii_ecb2} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_mix", metadata !"unroll_factor_mix", metadata !"", metadata !32, i32 79, metadata !33, i32 0, i32 1, i32* @unroll_factor_mix} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp2", metadata !"unroll_factor_exp2", metadata !"", metadata !32, i32 81, metadata !33, i32 0, i32 1, i32* @unroll_factor_exp2} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp2", metadata !"pipeline_ii_exp2", metadata !"", metadata !32, i32 71, metadata !33, i32 0, i32 1, i32* @pipeline_ii_exp2} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_cpkey", metadata !"pipeline_ii_cpkey", metadata !"", metadata !32, i32 68, metadata !33, i32 0, i32 1, i32* @pipeline_ii_cpkey} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_addkey", metadata !"pipeline_ii_addkey", metadata !"", metadata !32, i32 67, metadata !33, i32 0, i32 1, i32* @pipeline_ii_addkey} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !32, i32 89, metadata !46, i32 0, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !47, metadata !50, i32 0, i32 0} ; [ DW_TAG_array_type ]
!47 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_const_type ]
!48 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !32, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!49 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!52 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb1", metadata !"pipeline_ii_ecb1", metadata !"", metadata !32, i32 72, metadata !33, i32 0, i32 1, i32* @pipeline_ii_ecb1} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_mix", metadata !"pipeline_ii_mix", metadata !"", metadata !32, i32 69, metadata !33, i32 0, i32 1, i32* @pipeline_ii_mix} ; [ DW_TAG_variable ]
!54 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb3", metadata !"unroll_factor_ecb3", metadata !"", metadata !32, i32 84, metadata !33, i32 0, i32 1, i32* @unroll_factor_ecb3} ; [ DW_TAG_variable ]
!55 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_sub", metadata !"pipeline_ii_sub", metadata !"", metadata !32, i32 66, metadata !33, i32 0, i32 1, i32* @pipeline_ii_sub} ; [ DW_TAG_variable ]
!56 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp1", metadata !"unroll_factor_exp1", metadata !"", metadata !32, i32 80, metadata !33, i32 0, i32 1, i32* @unroll_factor_exp1} ; [ DW_TAG_variable ]
!57 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_cpkey", metadata !"unroll_factor_cpkey", metadata !"", metadata !32, i32 78, metadata !33, i32 0, i32 1, i32* @unroll_factor_cpkey} ; [ DW_TAG_variable ]
!58 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_addkey", metadata !"unroll_factor_addkey", metadata !"", metadata !32, i32 77, metadata !33, i32 0, i32 1, i32* @unroll_factor_addkey} ; [ DW_TAG_variable ]
!59 = metadata !{i32 786484, i32 0, null, metadata !"INPUT_SIZE", metadata !"INPUT_SIZE", metadata !"", metadata !60, i32 45, metadata !61, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!60 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h", metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !63, i32 320, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls", null} ; [ DW_TAG_file_type ]
!64 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !63, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!65 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !63, i32 321, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !63, i32 322, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!67 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !68, i32 26, metadata !61, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!68 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls", null} ; [ DW_TAG_file_type ]
!69 = metadata !{metadata !70, metadata !75, metadata !80, metadata !85, metadata !90, metadata !95, metadata !100, metadata !105, metadata !110, metadata !115, metadata !120, metadata !125, metadata !130, metadata !135, metadata !140, metadata !145, metadata !150, metadata !155, metadata !160, metadata !165, metadata !170, metadata !175, metadata !180, metadata !185, metadata !190, metadata !195, metadata !200, metadata !205, metadata !210, metadata !215, metadata !220, metadata !225, metadata !230, metadata !233, metadata !236, metadata !239, metadata !242, metadata !245, metadata !248, metadata !251, metadata !254, metadata !257, metadata !260, metadata !263, metadata !266, metadata !269, metadata !272, metadata !275, metadata !278, metadata !281, metadata !284, metadata !287, metadata !290, metadata !293, metadata !296, metadata !299, metadata !302, metadata !305, metadata !308, metadata !311, metadata !314, metadata !317, metadata !320, metadata !323, metadata !326, metadata !329, metadata !332, metadata !335, metadata !338, metadata !341, metadata !344, metadata !347, metadata !350, metadata !353, metadata !356, metadata !359, metadata !362, metadata !365, metadata !368, metadata !371, metadata !374, metadata !377, metadata !380, metadata !383, metadata !386, metadata !389, metadata !392, metadata !395, metadata !398, metadata !401, metadata !404, metadata !407, metadata !410, metadata !413, metadata !416, metadata !419, metadata !422, metadata !425, metadata !428, metadata !431, metadata !434, metadata !437, metadata !440, metadata !443, metadata !446, metadata !449, metadata !452, metadata !455, metadata !458, metadata !461, metadata !464, metadata !467, metadata !470, metadata !473, metadata !476, metadata !479, metadata !482, metadata !485, metadata !488, metadata !491, metadata !494, metadata !497, metadata !500, metadata !503, metadata !506, metadata !509, metadata !512, metadata !515}
!70 = metadata !{i32 0, i32 7, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"ctx.key", metadata !73, metadata !"unsigned char", i32 0, i32 7}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, i32 2}
!75 = metadata !{i32 8, i32 15, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"ctx.key", metadata !78, metadata !"unsigned char", i32 0, i32 7}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 1, i32 1, i32 2}
!80 = metadata !{i32 16, i32 23, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"ctx.key", metadata !83, metadata !"unsigned char", i32 0, i32 7}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 2, i32 2, i32 2}
!85 = metadata !{i32 24, i32 31, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"ctx.key", metadata !88, metadata !"unsigned char", i32 0, i32 7}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 3, i32 3, i32 2}
!90 = metadata !{i32 32, i32 39, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"ctx.key", metadata !93, metadata !"unsigned char", i32 0, i32 7}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 4, i32 4, i32 2}
!95 = metadata !{i32 40, i32 47, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"ctx.key", metadata !98, metadata !"unsigned char", i32 0, i32 7}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 5, i32 5, i32 2}
!100 = metadata !{i32 48, i32 55, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"ctx.key", metadata !103, metadata !"unsigned char", i32 0, i32 7}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 6, i32 6, i32 2}
!105 = metadata !{i32 56, i32 63, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"ctx.key", metadata !108, metadata !"unsigned char", i32 0, i32 7}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 7, i32 7, i32 2}
!110 = metadata !{i32 64, i32 71, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"ctx.key", metadata !113, metadata !"unsigned char", i32 0, i32 7}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 8, i32 8, i32 2}
!115 = metadata !{i32 72, i32 79, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"ctx.key", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 9, i32 9, i32 2}
!120 = metadata !{i32 80, i32 87, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"ctx.key", metadata !123, metadata !"unsigned char", i32 0, i32 7}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 10, i32 10, i32 2}
!125 = metadata !{i32 88, i32 95, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"ctx.key", metadata !128, metadata !"unsigned char", i32 0, i32 7}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 11, i32 11, i32 2}
!130 = metadata !{i32 96, i32 103, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"ctx.key", metadata !133, metadata !"unsigned char", i32 0, i32 7}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 12, i32 12, i32 2}
!135 = metadata !{i32 104, i32 111, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"ctx.key", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 13, i32 13, i32 2}
!140 = metadata !{i32 112, i32 119, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"ctx.key", metadata !143, metadata !"unsigned char", i32 0, i32 7}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 14, i32 14, i32 2}
!145 = metadata !{i32 120, i32 127, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"ctx.key", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 15, i32 15, i32 2}
!150 = metadata !{i32 128, i32 135, metadata !151}
!151 = metadata !{metadata !152}
!152 = metadata !{metadata !"ctx.key", metadata !153, metadata !"unsigned char", i32 0, i32 7}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 16, i32 16, i32 2}
!155 = metadata !{i32 136, i32 143, metadata !156}
!156 = metadata !{metadata !157}
!157 = metadata !{metadata !"ctx.key", metadata !158, metadata !"unsigned char", i32 0, i32 7}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 17, i32 17, i32 2}
!160 = metadata !{i32 144, i32 151, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"ctx.key", metadata !163, metadata !"unsigned char", i32 0, i32 7}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 18, i32 18, i32 2}
!165 = metadata !{i32 152, i32 159, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"ctx.key", metadata !168, metadata !"unsigned char", i32 0, i32 7}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 19, i32 19, i32 2}
!170 = metadata !{i32 160, i32 167, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"ctx.key", metadata !173, metadata !"unsigned char", i32 0, i32 7}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 20, i32 20, i32 2}
!175 = metadata !{i32 168, i32 175, metadata !176}
!176 = metadata !{metadata !177}
!177 = metadata !{metadata !"ctx.key", metadata !178, metadata !"unsigned char", i32 0, i32 7}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 21, i32 21, i32 2}
!180 = metadata !{i32 176, i32 183, metadata !181}
!181 = metadata !{metadata !182}
!182 = metadata !{metadata !"ctx.key", metadata !183, metadata !"unsigned char", i32 0, i32 7}
!183 = metadata !{metadata !184}
!184 = metadata !{i32 22, i32 22, i32 2}
!185 = metadata !{i32 184, i32 191, metadata !186}
!186 = metadata !{metadata !187}
!187 = metadata !{metadata !"ctx.key", metadata !188, metadata !"unsigned char", i32 0, i32 7}
!188 = metadata !{metadata !189}
!189 = metadata !{i32 23, i32 23, i32 2}
!190 = metadata !{i32 192, i32 199, metadata !191}
!191 = metadata !{metadata !192}
!192 = metadata !{metadata !"ctx.key", metadata !193, metadata !"unsigned char", i32 0, i32 7}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 24, i32 24, i32 2}
!195 = metadata !{i32 200, i32 207, metadata !196}
!196 = metadata !{metadata !197}
!197 = metadata !{metadata !"ctx.key", metadata !198, metadata !"unsigned char", i32 0, i32 7}
!198 = metadata !{metadata !199}
!199 = metadata !{i32 25, i32 25, i32 2}
!200 = metadata !{i32 208, i32 215, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"ctx.key", metadata !203, metadata !"unsigned char", i32 0, i32 7}
!203 = metadata !{metadata !204}
!204 = metadata !{i32 26, i32 26, i32 2}
!205 = metadata !{i32 216, i32 223, metadata !206}
!206 = metadata !{metadata !207}
!207 = metadata !{metadata !"ctx.key", metadata !208, metadata !"unsigned char", i32 0, i32 7}
!208 = metadata !{metadata !209}
!209 = metadata !{i32 27, i32 27, i32 2}
!210 = metadata !{i32 224, i32 231, metadata !211}
!211 = metadata !{metadata !212}
!212 = metadata !{metadata !"ctx.key", metadata !213, metadata !"unsigned char", i32 0, i32 7}
!213 = metadata !{metadata !214}
!214 = metadata !{i32 28, i32 28, i32 2}
!215 = metadata !{i32 232, i32 239, metadata !216}
!216 = metadata !{metadata !217}
!217 = metadata !{metadata !"ctx.key", metadata !218, metadata !"unsigned char", i32 0, i32 7}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 29, i32 29, i32 2}
!220 = metadata !{i32 240, i32 247, metadata !221}
!221 = metadata !{metadata !222}
!222 = metadata !{metadata !"ctx.key", metadata !223, metadata !"unsigned char", i32 0, i32 7}
!223 = metadata !{metadata !224}
!224 = metadata !{i32 30, i32 30, i32 2}
!225 = metadata !{i32 248, i32 255, metadata !226}
!226 = metadata !{metadata !227}
!227 = metadata !{metadata !"ctx.key", metadata !228, metadata !"unsigned char", i32 0, i32 7}
!228 = metadata !{metadata !229}
!229 = metadata !{i32 31, i32 31, i32 2}
!230 = metadata !{i32 256, i32 263, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"ctx.enckey", metadata !73, metadata !"unsigned char", i32 0, i32 7}
!233 = metadata !{i32 264, i32 271, metadata !234}
!234 = metadata !{metadata !235}
!235 = metadata !{metadata !"ctx.enckey", metadata !78, metadata !"unsigned char", i32 0, i32 7}
!236 = metadata !{i32 272, i32 279, metadata !237}
!237 = metadata !{metadata !238}
!238 = metadata !{metadata !"ctx.enckey", metadata !83, metadata !"unsigned char", i32 0, i32 7}
!239 = metadata !{i32 280, i32 287, metadata !240}
!240 = metadata !{metadata !241}
!241 = metadata !{metadata !"ctx.enckey", metadata !88, metadata !"unsigned char", i32 0, i32 7}
!242 = metadata !{i32 288, i32 295, metadata !243}
!243 = metadata !{metadata !244}
!244 = metadata !{metadata !"ctx.enckey", metadata !93, metadata !"unsigned char", i32 0, i32 7}
!245 = metadata !{i32 296, i32 303, metadata !246}
!246 = metadata !{metadata !247}
!247 = metadata !{metadata !"ctx.enckey", metadata !98, metadata !"unsigned char", i32 0, i32 7}
!248 = metadata !{i32 304, i32 311, metadata !249}
!249 = metadata !{metadata !250}
!250 = metadata !{metadata !"ctx.enckey", metadata !103, metadata !"unsigned char", i32 0, i32 7}
!251 = metadata !{i32 312, i32 319, metadata !252}
!252 = metadata !{metadata !253}
!253 = metadata !{metadata !"ctx.enckey", metadata !108, metadata !"unsigned char", i32 0, i32 7}
!254 = metadata !{i32 320, i32 327, metadata !255}
!255 = metadata !{metadata !256}
!256 = metadata !{metadata !"ctx.enckey", metadata !113, metadata !"unsigned char", i32 0, i32 7}
!257 = metadata !{i32 328, i32 335, metadata !258}
!258 = metadata !{metadata !259}
!259 = metadata !{metadata !"ctx.enckey", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!260 = metadata !{i32 336, i32 343, metadata !261}
!261 = metadata !{metadata !262}
!262 = metadata !{metadata !"ctx.enckey", metadata !123, metadata !"unsigned char", i32 0, i32 7}
!263 = metadata !{i32 344, i32 351, metadata !264}
!264 = metadata !{metadata !265}
!265 = metadata !{metadata !"ctx.enckey", metadata !128, metadata !"unsigned char", i32 0, i32 7}
!266 = metadata !{i32 352, i32 359, metadata !267}
!267 = metadata !{metadata !268}
!268 = metadata !{metadata !"ctx.enckey", metadata !133, metadata !"unsigned char", i32 0, i32 7}
!269 = metadata !{i32 360, i32 367, metadata !270}
!270 = metadata !{metadata !271}
!271 = metadata !{metadata !"ctx.enckey", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!272 = metadata !{i32 368, i32 375, metadata !273}
!273 = metadata !{metadata !274}
!274 = metadata !{metadata !"ctx.enckey", metadata !143, metadata !"unsigned char", i32 0, i32 7}
!275 = metadata !{i32 376, i32 383, metadata !276}
!276 = metadata !{metadata !277}
!277 = metadata !{metadata !"ctx.enckey", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!278 = metadata !{i32 384, i32 391, metadata !279}
!279 = metadata !{metadata !280}
!280 = metadata !{metadata !"ctx.enckey", metadata !153, metadata !"unsigned char", i32 0, i32 7}
!281 = metadata !{i32 392, i32 399, metadata !282}
!282 = metadata !{metadata !283}
!283 = metadata !{metadata !"ctx.enckey", metadata !158, metadata !"unsigned char", i32 0, i32 7}
!284 = metadata !{i32 400, i32 407, metadata !285}
!285 = metadata !{metadata !286}
!286 = metadata !{metadata !"ctx.enckey", metadata !163, metadata !"unsigned char", i32 0, i32 7}
!287 = metadata !{i32 408, i32 415, metadata !288}
!288 = metadata !{metadata !289}
!289 = metadata !{metadata !"ctx.enckey", metadata !168, metadata !"unsigned char", i32 0, i32 7}
!290 = metadata !{i32 416, i32 423, metadata !291}
!291 = metadata !{metadata !292}
!292 = metadata !{metadata !"ctx.enckey", metadata !173, metadata !"unsigned char", i32 0, i32 7}
!293 = metadata !{i32 424, i32 431, metadata !294}
!294 = metadata !{metadata !295}
!295 = metadata !{metadata !"ctx.enckey", metadata !178, metadata !"unsigned char", i32 0, i32 7}
!296 = metadata !{i32 432, i32 439, metadata !297}
!297 = metadata !{metadata !298}
!298 = metadata !{metadata !"ctx.enckey", metadata !183, metadata !"unsigned char", i32 0, i32 7}
!299 = metadata !{i32 440, i32 447, metadata !300}
!300 = metadata !{metadata !301}
!301 = metadata !{metadata !"ctx.enckey", metadata !188, metadata !"unsigned char", i32 0, i32 7}
!302 = metadata !{i32 448, i32 455, metadata !303}
!303 = metadata !{metadata !304}
!304 = metadata !{metadata !"ctx.enckey", metadata !193, metadata !"unsigned char", i32 0, i32 7}
!305 = metadata !{i32 456, i32 463, metadata !306}
!306 = metadata !{metadata !307}
!307 = metadata !{metadata !"ctx.enckey", metadata !198, metadata !"unsigned char", i32 0, i32 7}
!308 = metadata !{i32 464, i32 471, metadata !309}
!309 = metadata !{metadata !310}
!310 = metadata !{metadata !"ctx.enckey", metadata !203, metadata !"unsigned char", i32 0, i32 7}
!311 = metadata !{i32 472, i32 479, metadata !312}
!312 = metadata !{metadata !313}
!313 = metadata !{metadata !"ctx.enckey", metadata !208, metadata !"unsigned char", i32 0, i32 7}
!314 = metadata !{i32 480, i32 487, metadata !315}
!315 = metadata !{metadata !316}
!316 = metadata !{metadata !"ctx.enckey", metadata !213, metadata !"unsigned char", i32 0, i32 7}
!317 = metadata !{i32 488, i32 495, metadata !318}
!318 = metadata !{metadata !319}
!319 = metadata !{metadata !"ctx.enckey", metadata !218, metadata !"unsigned char", i32 0, i32 7}
!320 = metadata !{i32 496, i32 503, metadata !321}
!321 = metadata !{metadata !322}
!322 = metadata !{metadata !"ctx.enckey", metadata !223, metadata !"unsigned char", i32 0, i32 7}
!323 = metadata !{i32 504, i32 511, metadata !324}
!324 = metadata !{metadata !325}
!325 = metadata !{metadata !"ctx.enckey", metadata !228, metadata !"unsigned char", i32 0, i32 7}
!326 = metadata !{i32 512, i32 519, metadata !327}
!327 = metadata !{metadata !328}
!328 = metadata !{metadata !"ctx.deckey", metadata !73, metadata !"unsigned char", i32 0, i32 7}
!329 = metadata !{i32 520, i32 527, metadata !330}
!330 = metadata !{metadata !331}
!331 = metadata !{metadata !"ctx.deckey", metadata !78, metadata !"unsigned char", i32 0, i32 7}
!332 = metadata !{i32 528, i32 535, metadata !333}
!333 = metadata !{metadata !334}
!334 = metadata !{metadata !"ctx.deckey", metadata !83, metadata !"unsigned char", i32 0, i32 7}
!335 = metadata !{i32 536, i32 543, metadata !336}
!336 = metadata !{metadata !337}
!337 = metadata !{metadata !"ctx.deckey", metadata !88, metadata !"unsigned char", i32 0, i32 7}
!338 = metadata !{i32 544, i32 551, metadata !339}
!339 = metadata !{metadata !340}
!340 = metadata !{metadata !"ctx.deckey", metadata !93, metadata !"unsigned char", i32 0, i32 7}
!341 = metadata !{i32 552, i32 559, metadata !342}
!342 = metadata !{metadata !343}
!343 = metadata !{metadata !"ctx.deckey", metadata !98, metadata !"unsigned char", i32 0, i32 7}
!344 = metadata !{i32 560, i32 567, metadata !345}
!345 = metadata !{metadata !346}
!346 = metadata !{metadata !"ctx.deckey", metadata !103, metadata !"unsigned char", i32 0, i32 7}
!347 = metadata !{i32 568, i32 575, metadata !348}
!348 = metadata !{metadata !349}
!349 = metadata !{metadata !"ctx.deckey", metadata !108, metadata !"unsigned char", i32 0, i32 7}
!350 = metadata !{i32 576, i32 583, metadata !351}
!351 = metadata !{metadata !352}
!352 = metadata !{metadata !"ctx.deckey", metadata !113, metadata !"unsigned char", i32 0, i32 7}
!353 = metadata !{i32 584, i32 591, metadata !354}
!354 = metadata !{metadata !355}
!355 = metadata !{metadata !"ctx.deckey", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!356 = metadata !{i32 592, i32 599, metadata !357}
!357 = metadata !{metadata !358}
!358 = metadata !{metadata !"ctx.deckey", metadata !123, metadata !"unsigned char", i32 0, i32 7}
!359 = metadata !{i32 600, i32 607, metadata !360}
!360 = metadata !{metadata !361}
!361 = metadata !{metadata !"ctx.deckey", metadata !128, metadata !"unsigned char", i32 0, i32 7}
!362 = metadata !{i32 608, i32 615, metadata !363}
!363 = metadata !{metadata !364}
!364 = metadata !{metadata !"ctx.deckey", metadata !133, metadata !"unsigned char", i32 0, i32 7}
!365 = metadata !{i32 616, i32 623, metadata !366}
!366 = metadata !{metadata !367}
!367 = metadata !{metadata !"ctx.deckey", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!368 = metadata !{i32 624, i32 631, metadata !369}
!369 = metadata !{metadata !370}
!370 = metadata !{metadata !"ctx.deckey", metadata !143, metadata !"unsigned char", i32 0, i32 7}
!371 = metadata !{i32 632, i32 639, metadata !372}
!372 = metadata !{metadata !373}
!373 = metadata !{metadata !"ctx.deckey", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!374 = metadata !{i32 640, i32 647, metadata !375}
!375 = metadata !{metadata !376}
!376 = metadata !{metadata !"ctx.deckey", metadata !153, metadata !"unsigned char", i32 0, i32 7}
!377 = metadata !{i32 648, i32 655, metadata !378}
!378 = metadata !{metadata !379}
!379 = metadata !{metadata !"ctx.deckey", metadata !158, metadata !"unsigned char", i32 0, i32 7}
!380 = metadata !{i32 656, i32 663, metadata !381}
!381 = metadata !{metadata !382}
!382 = metadata !{metadata !"ctx.deckey", metadata !163, metadata !"unsigned char", i32 0, i32 7}
!383 = metadata !{i32 664, i32 671, metadata !384}
!384 = metadata !{metadata !385}
!385 = metadata !{metadata !"ctx.deckey", metadata !168, metadata !"unsigned char", i32 0, i32 7}
!386 = metadata !{i32 672, i32 679, metadata !387}
!387 = metadata !{metadata !388}
!388 = metadata !{metadata !"ctx.deckey", metadata !173, metadata !"unsigned char", i32 0, i32 7}
!389 = metadata !{i32 680, i32 687, metadata !390}
!390 = metadata !{metadata !391}
!391 = metadata !{metadata !"ctx.deckey", metadata !178, metadata !"unsigned char", i32 0, i32 7}
!392 = metadata !{i32 688, i32 695, metadata !393}
!393 = metadata !{metadata !394}
!394 = metadata !{metadata !"ctx.deckey", metadata !183, metadata !"unsigned char", i32 0, i32 7}
!395 = metadata !{i32 696, i32 703, metadata !396}
!396 = metadata !{metadata !397}
!397 = metadata !{metadata !"ctx.deckey", metadata !188, metadata !"unsigned char", i32 0, i32 7}
!398 = metadata !{i32 704, i32 711, metadata !399}
!399 = metadata !{metadata !400}
!400 = metadata !{metadata !"ctx.deckey", metadata !193, metadata !"unsigned char", i32 0, i32 7}
!401 = metadata !{i32 712, i32 719, metadata !402}
!402 = metadata !{metadata !403}
!403 = metadata !{metadata !"ctx.deckey", metadata !198, metadata !"unsigned char", i32 0, i32 7}
!404 = metadata !{i32 720, i32 727, metadata !405}
!405 = metadata !{metadata !406}
!406 = metadata !{metadata !"ctx.deckey", metadata !203, metadata !"unsigned char", i32 0, i32 7}
!407 = metadata !{i32 728, i32 735, metadata !408}
!408 = metadata !{metadata !409}
!409 = metadata !{metadata !"ctx.deckey", metadata !208, metadata !"unsigned char", i32 0, i32 7}
!410 = metadata !{i32 736, i32 743, metadata !411}
!411 = metadata !{metadata !412}
!412 = metadata !{metadata !"ctx.deckey", metadata !213, metadata !"unsigned char", i32 0, i32 7}
!413 = metadata !{i32 744, i32 751, metadata !414}
!414 = metadata !{metadata !415}
!415 = metadata !{metadata !"ctx.deckey", metadata !218, metadata !"unsigned char", i32 0, i32 7}
!416 = metadata !{i32 752, i32 759, metadata !417}
!417 = metadata !{metadata !418}
!418 = metadata !{metadata !"ctx.deckey", metadata !223, metadata !"unsigned char", i32 0, i32 7}
!419 = metadata !{i32 760, i32 767, metadata !420}
!420 = metadata !{metadata !421}
!421 = metadata !{metadata !"ctx.deckey", metadata !228, metadata !"unsigned char", i32 0, i32 7}
!422 = metadata !{i32 768, i32 775, metadata !423}
!423 = metadata !{metadata !424}
!424 = metadata !{metadata !"ctx.dummy", metadata !73, metadata !"unsigned char", i32 0, i32 7}
!425 = metadata !{i32 776, i32 783, metadata !426}
!426 = metadata !{metadata !427}
!427 = metadata !{metadata !"ctx.dummy", metadata !78, metadata !"unsigned char", i32 0, i32 7}
!428 = metadata !{i32 784, i32 791, metadata !429}
!429 = metadata !{metadata !430}
!430 = metadata !{metadata !"ctx.dummy", metadata !83, metadata !"unsigned char", i32 0, i32 7}
!431 = metadata !{i32 792, i32 799, metadata !432}
!432 = metadata !{metadata !433}
!433 = metadata !{metadata !"ctx.dummy", metadata !88, metadata !"unsigned char", i32 0, i32 7}
!434 = metadata !{i32 800, i32 807, metadata !435}
!435 = metadata !{metadata !436}
!436 = metadata !{metadata !"ctx.dummy", metadata !93, metadata !"unsigned char", i32 0, i32 7}
!437 = metadata !{i32 808, i32 815, metadata !438}
!438 = metadata !{metadata !439}
!439 = metadata !{metadata !"ctx.dummy", metadata !98, metadata !"unsigned char", i32 0, i32 7}
!440 = metadata !{i32 816, i32 823, metadata !441}
!441 = metadata !{metadata !442}
!442 = metadata !{metadata !"ctx.dummy", metadata !103, metadata !"unsigned char", i32 0, i32 7}
!443 = metadata !{i32 824, i32 831, metadata !444}
!444 = metadata !{metadata !445}
!445 = metadata !{metadata !"ctx.dummy", metadata !108, metadata !"unsigned char", i32 0, i32 7}
!446 = metadata !{i32 832, i32 839, metadata !447}
!447 = metadata !{metadata !448}
!448 = metadata !{metadata !"ctx.dummy", metadata !113, metadata !"unsigned char", i32 0, i32 7}
!449 = metadata !{i32 840, i32 847, metadata !450}
!450 = metadata !{metadata !451}
!451 = metadata !{metadata !"ctx.dummy", metadata !118, metadata !"unsigned char", i32 0, i32 7}
!452 = metadata !{i32 848, i32 855, metadata !453}
!453 = metadata !{metadata !454}
!454 = metadata !{metadata !"ctx.dummy", metadata !123, metadata !"unsigned char", i32 0, i32 7}
!455 = metadata !{i32 856, i32 863, metadata !456}
!456 = metadata !{metadata !457}
!457 = metadata !{metadata !"ctx.dummy", metadata !128, metadata !"unsigned char", i32 0, i32 7}
!458 = metadata !{i32 864, i32 871, metadata !459}
!459 = metadata !{metadata !460}
!460 = metadata !{metadata !"ctx.dummy", metadata !133, metadata !"unsigned char", i32 0, i32 7}
!461 = metadata !{i32 872, i32 879, metadata !462}
!462 = metadata !{metadata !463}
!463 = metadata !{metadata !"ctx.dummy", metadata !138, metadata !"unsigned char", i32 0, i32 7}
!464 = metadata !{i32 880, i32 887, metadata !465}
!465 = metadata !{metadata !466}
!466 = metadata !{metadata !"ctx.dummy", metadata !143, metadata !"unsigned char", i32 0, i32 7}
!467 = metadata !{i32 888, i32 895, metadata !468}
!468 = metadata !{metadata !469}
!469 = metadata !{metadata !"ctx.dummy", metadata !148, metadata !"unsigned char", i32 0, i32 7}
!470 = metadata !{i32 896, i32 903, metadata !471}
!471 = metadata !{metadata !472}
!472 = metadata !{metadata !"ctx.dummy", metadata !153, metadata !"unsigned char", i32 0, i32 7}
!473 = metadata !{i32 904, i32 911, metadata !474}
!474 = metadata !{metadata !475}
!475 = metadata !{metadata !"ctx.dummy", metadata !158, metadata !"unsigned char", i32 0, i32 7}
!476 = metadata !{i32 912, i32 919, metadata !477}
!477 = metadata !{metadata !478}
!478 = metadata !{metadata !"ctx.dummy", metadata !163, metadata !"unsigned char", i32 0, i32 7}
!479 = metadata !{i32 920, i32 927, metadata !480}
!480 = metadata !{metadata !481}
!481 = metadata !{metadata !"ctx.dummy", metadata !168, metadata !"unsigned char", i32 0, i32 7}
!482 = metadata !{i32 928, i32 935, metadata !483}
!483 = metadata !{metadata !484}
!484 = metadata !{metadata !"ctx.dummy", metadata !173, metadata !"unsigned char", i32 0, i32 7}
!485 = metadata !{i32 936, i32 943, metadata !486}
!486 = metadata !{metadata !487}
!487 = metadata !{metadata !"ctx.dummy", metadata !178, metadata !"unsigned char", i32 0, i32 7}
!488 = metadata !{i32 944, i32 951, metadata !489}
!489 = metadata !{metadata !490}
!490 = metadata !{metadata !"ctx.dummy", metadata !183, metadata !"unsigned char", i32 0, i32 7}
!491 = metadata !{i32 952, i32 959, metadata !492}
!492 = metadata !{metadata !493}
!493 = metadata !{metadata !"ctx.dummy", metadata !188, metadata !"unsigned char", i32 0, i32 7}
!494 = metadata !{i32 960, i32 967, metadata !495}
!495 = metadata !{metadata !496}
!496 = metadata !{metadata !"ctx.dummy", metadata !193, metadata !"unsigned char", i32 0, i32 7}
!497 = metadata !{i32 968, i32 975, metadata !498}
!498 = metadata !{metadata !499}
!499 = metadata !{metadata !"ctx.dummy", metadata !198, metadata !"unsigned char", i32 0, i32 7}
!500 = metadata !{i32 976, i32 983, metadata !501}
!501 = metadata !{metadata !502}
!502 = metadata !{metadata !"ctx.dummy", metadata !203, metadata !"unsigned char", i32 0, i32 7}
!503 = metadata !{i32 984, i32 991, metadata !504}
!504 = metadata !{metadata !505}
!505 = metadata !{metadata !"ctx.dummy", metadata !208, metadata !"unsigned char", i32 0, i32 7}
!506 = metadata !{i32 992, i32 999, metadata !507}
!507 = metadata !{metadata !508}
!508 = metadata !{metadata !"ctx.dummy", metadata !213, metadata !"unsigned char", i32 0, i32 7}
!509 = metadata !{i32 1000, i32 1007, metadata !510}
!510 = metadata !{metadata !511}
!511 = metadata !{metadata !"ctx.dummy", metadata !218, metadata !"unsigned char", i32 0, i32 7}
!512 = metadata !{i32 1008, i32 1015, metadata !513}
!513 = metadata !{metadata !514}
!514 = metadata !{metadata !"ctx.dummy", metadata !223, metadata !"unsigned char", i32 0, i32 7}
!515 = metadata !{i32 1016, i32 1023, metadata !516}
!516 = metadata !{metadata !517}
!517 = metadata !{metadata !"ctx.dummy", metadata !228, metadata !"unsigned char", i32 0, i32 7}
!518 = metadata !{metadata !519}
!519 = metadata !{i32 0, i32 7, metadata !520}
!520 = metadata !{metadata !521}
!521 = metadata !{metadata !"k", metadata !522, metadata !"unsigned char", i32 0, i32 7}
!522 = metadata !{metadata !523}
!523 = metadata !{i32 0, i32 31, i32 1}
!524 = metadata !{metadata !525}
!525 = metadata !{i32 0, i32 7, metadata !526}
!526 = metadata !{metadata !527}
!527 = metadata !{metadata !"buf", metadata !528, metadata !"unsigned char", i32 0, i32 7}
!528 = metadata !{metadata !529}
!529 = metadata !{i32 0, i32 15, i32 1}
!530 = metadata !{i32 790544, metadata !531, metadata !"ctx", null, i32 299, metadata !550, i32 0, i32 0, metadata !552, metadata !556, metadata !560, metadata !564} ; [ DW_TAG_arg_variable_aggr_vec ]
!531 = metadata !{i32 786689, metadata !532, metadata !"ctx", metadata !32, i32 16777515, metadata !535, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!532 = metadata !{i32 786478, i32 0, metadata !32, metadata !"encrypt", metadata !"encrypt", metadata !"", metadata !32, i32 299, metadata !533, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 300} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !534, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!534 = metadata !{null, metadata !535, metadata !547, metadata !547}
!535 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !536} ; [ DW_TAG_pointer_type ]
!536 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !32, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !537} ; [ DW_TAG_typedef ]
!537 = metadata !{i32 786451, null, metadata !"", metadata !538, i32 7, i64 1024, i64 8, i32 0, i32 0, null, metadata !539, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!538 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h", metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls", null} ; [ DW_TAG_file_type ]
!539 = metadata !{metadata !540, metadata !544, metadata !545, metadata !546}
!540 = metadata !{i32 786445, metadata !537, metadata !"key", metadata !538, i32 8, i64 256, i64 8, i64 0, i32 0, metadata !541} ; [ DW_TAG_member ]
!541 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !48, metadata !542, i32 0, i32 0} ; [ DW_TAG_array_type ]
!542 = metadata !{metadata !543}
!543 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!544 = metadata !{i32 786445, metadata !537, metadata !"enckey", metadata !538, i32 9, i64 256, i64 8, i64 256, i32 0, metadata !541} ; [ DW_TAG_member ]
!545 = metadata !{i32 786445, metadata !537, metadata !"deckey", metadata !538, i32 10, i64 256, i64 8, i64 512, i32 0, metadata !541} ; [ DW_TAG_member ]
!546 = metadata !{i32 786445, metadata !537, metadata !"dummy", metadata !538, i32 11, i64 256, i64 8, i64 768, i32 0, metadata !541} ; [ DW_TAG_member ]
!547 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ]
!548 = metadata !{metadata !549}
!549 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!550 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_pointer_type ]
!551 = metadata !{i32 786468, null, metadata !"int1024", null, i32 0, i64 1024, i64 1024, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!552 = metadata !{i32 790531, metadata !531, metadata !"ctx.key", null, i32 299, metadata !553, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!553 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !554} ; [ DW_TAG_pointer_type ]
!554 = metadata !{i32 786452, null, metadata !"", metadata !538, i32 7, i64 256, i64 8, i32 0, i32 0, null, metadata !555, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!555 = metadata !{metadata !540}
!556 = metadata !{i32 790531, metadata !531, metadata !"ctx.enckey", null, i32 299, metadata !557, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!557 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !558} ; [ DW_TAG_pointer_type ]
!558 = metadata !{i32 786452, null, metadata !"", metadata !538, i32 7, i64 256, i64 8, i32 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!559 = metadata !{metadata !544}
!560 = metadata !{i32 790531, metadata !531, metadata !"ctx.deckey", null, i32 299, metadata !561, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!561 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !562} ; [ DW_TAG_pointer_type ]
!562 = metadata !{i32 786452, null, metadata !"", metadata !538, i32 7, i64 256, i64 8, i32 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!563 = metadata !{metadata !545}
!564 = metadata !{i32 790531, metadata !531, metadata !"ctx.dummy", null, i32 299, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!565 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !566} ; [ DW_TAG_pointer_type ]
!566 = metadata !{i32 786452, null, metadata !"", metadata !538, i32 7, i64 256, i64 8, i32 0, i32 0, null, metadata !567, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!567 = metadata !{metadata !546}
!568 = metadata !{i32 299, i32 30, metadata !532, null}
!569 = metadata !{i32 786689, metadata !532, metadata !"k", null, i32 299, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!570 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !48, metadata !542, i32 0, i32 0} ; [ DW_TAG_array_type ]
!571 = metadata !{i32 299, i32 43, metadata !532, null}
!572 = metadata !{i32 786689, metadata !532, metadata !"buf", null, i32 299, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!573 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !48, metadata !574, i32 0, i32 0} ; [ DW_TAG_array_type ]
!574 = metadata !{metadata !575}
!575 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!576 = metadata !{i32 299, i32 58, metadata !532, null}
!577 = metadata !{i32 301, i32 1, metadata !578, null}
!578 = metadata !{i32 786443, metadata !532, i32 300, i32 1, metadata !32, i32 16} ; [ DW_TAG_lexical_block ]
!579 = metadata !{i32 311, i32 2, metadata !580, null}
!580 = metadata !{i32 786443, metadata !581, i32 305, i32 50, metadata !32, i32 18} ; [ DW_TAG_lexical_block ]
!581 = metadata !{i32 786443, metadata !578, i32 305, i32 12, metadata !32, i32 17} ; [ DW_TAG_lexical_block ]
!582 = metadata !{i32 313, i32 17, metadata !583, null}
!583 = metadata !{i32 786443, metadata !578, i32 313, i32 12, metadata !32, i32 19} ; [ DW_TAG_lexical_block ]
!584 = metadata !{i32 786688, metadata !578, metadata !"i", metadata !32, i32 303, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!585 = metadata !{i32 313, i32 29, metadata !586, null}
!586 = metadata !{i32 786443, metadata !583, i32 313, i32 28, metadata !32, i32 20} ; [ DW_TAG_lexical_block ]
!587 = metadata !{i32 315, i32 1, metadata !586, null}
!588 = metadata !{i32 786688, metadata !578, metadata !"rcon", metadata !32, i32 302, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!589 = metadata !{i32 319, i32 2, metadata !586, null}
!590 = metadata !{i32 320, i32 5, metadata !586, null}
!591 = metadata !{i32 324, i32 16, metadata !592, null}
!592 = metadata !{i32 786443, metadata !578, i32 324, i32 12, metadata !32, i32 21} ; [ DW_TAG_lexical_block ]
!593 = metadata !{i32 334, i32 21, metadata !594, null}
!594 = metadata !{i32 786443, metadata !592, i32 325, i32 5, metadata !32, i32 22} ; [ DW_TAG_lexical_block ]
!595 = metadata !{i32 325, i32 6, metadata !594, null}
!596 = metadata !{i32 331, i32 2, metadata !594, null}
!597 = metadata !{i32 332, i32 9, metadata !594, null}
!598 = metadata !{i32 333, i32 9, metadata !594, null}
!599 = metadata !{i32 334, i32 9, metadata !594, null}
!600 = metadata !{i32 324, i32 41, metadata !592, null}
!601 = metadata !{i32 337, i32 5, metadata !578, null}
!602 = metadata !{i32 338, i32 5, metadata !578, null}
!603 = metadata !{i32 339, i32 5, metadata !578, null}
!604 = metadata !{i32 341, i32 1, metadata !578, null}
!605 = metadata !{i32 786689, metadata !606, metadata !"buf", null, i32 178, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!606 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !32, i32 178, metadata !607, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 179} ; [ DW_TAG_subprogram ]
!607 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !608, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!608 = metadata !{null, metadata !547}
!609 = metadata !{i32 178, i32 28, metadata !606, null}
!610 = metadata !{i32 182, i32 11, metadata !611, null}
!611 = metadata !{i32 786443, metadata !606, i32 179, i32 1, metadata !32, i32 1} ; [ DW_TAG_lexical_block ]
!612 = metadata !{i32 786688, metadata !611, metadata !"i", metadata !32, i32 180, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!613 = metadata !{i32 183, i32 6, metadata !614, null}
!614 = metadata !{i32 786443, metadata !611, i32 183, i32 5, metadata !32, i32 2} ; [ DW_TAG_lexical_block ]
!615 = metadata !{i32 185, i32 1, metadata !614, null}
!616 = metadata !{i32 189, i32 2, metadata !614, null}
!617 = metadata !{i32 190, i32 5, metadata !614, null}
!618 = metadata !{i32 191, i32 1, metadata !611, null}
!619 = metadata !{i32 786689, metadata !620, metadata !"buf", null, i32 227, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!620 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !32, i32 227, metadata !607, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 228} ; [ DW_TAG_subprogram ]
!621 = metadata !{i32 227, i32 29, metadata !620, null}
!622 = metadata !{i32 231, i32 5, metadata !623, null}
!623 = metadata !{i32 786443, metadata !620, i32 228, i32 1, metadata !32, i32 7} ; [ DW_TAG_lexical_block ]
!624 = metadata !{i32 786688, metadata !623, metadata !"i", metadata !32, i32 229, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!625 = metadata !{i32 231, i32 17, metadata !623, null}
!626 = metadata !{i32 231, i32 34, metadata !623, null}
!627 = metadata !{i32 231, i32 51, metadata !623, null}
!628 = metadata !{i32 231, i32 69, metadata !623, null}
!629 = metadata !{i32 232, i32 5, metadata !623, null}
!630 = metadata !{i32 232, i32 18, metadata !623, null}
!631 = metadata !{i32 232, i32 36, metadata !623, null}
!632 = metadata !{i32 233, i32 5, metadata !623, null}
!633 = metadata !{i32 786688, metadata !623, metadata !"j", metadata !32, i32 229, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!634 = metadata !{i32 233, i32 17, metadata !623, null}
!635 = metadata !{i32 233, i32 35, metadata !623, null}
!636 = metadata !{i32 233, i32 54, metadata !623, null}
!637 = metadata !{i32 233, i32 72, metadata !623, null}
!638 = metadata !{i32 234, i32 5, metadata !623, null}
!639 = metadata !{i32 234, i32 18, metadata !623, null}
!640 = metadata !{i32 234, i32 36, metadata !623, null}
!641 = metadata !{i32 236, i32 1, metadata !623, null}
!642 = metadata !{i32 786689, metadata !643, metadata !"buf", null, i32 239, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!643 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !32, i32 239, metadata !607, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 240} ; [ DW_TAG_subprogram ]
!644 = metadata !{i32 239, i32 30, metadata !643, null}
!645 = metadata !{i32 243, i32 16, metadata !646, null}
!646 = metadata !{i32 786443, metadata !647, i32 243, i32 11, metadata !32, i32 9} ; [ DW_TAG_lexical_block ]
!647 = metadata !{i32 786443, metadata !643, i32 240, i32 1, metadata !32, i32 8} ; [ DW_TAG_lexical_block ]
!648 = metadata !{i32 244, i32 6, metadata !649, null}
!649 = metadata !{i32 786443, metadata !646, i32 244, i32 5, metadata !32, i32 10} ; [ DW_TAG_lexical_block ]
!650 = metadata !{i32 250, i32 2, metadata !649, null}
!651 = metadata !{i32 786688, metadata !647, metadata !"a", metadata !32, i32 241, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!652 = metadata !{i32 250, i32 14, metadata !649, null}
!653 = metadata !{i32 786688, metadata !647, metadata !"b", metadata !32, i32 241, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!654 = metadata !{i32 250, i32 30, metadata !649, null}
!655 = metadata !{i32 786688, metadata !647, metadata !"c", metadata !32, i32 241, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!656 = metadata !{i32 250, i32 46, metadata !649, null}
!657 = metadata !{i32 786688, metadata !647, metadata !"d", metadata !32, i32 241, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!658 = metadata !{i32 251, i32 9, metadata !649, null}
!659 = metadata !{i32 786688, metadata !647, metadata !"e", metadata !32, i32 241, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!660 = metadata !{i32 786689, metadata !661, metadata !"x", metadata !32, i32 16777388, metadata !48, i32 0, metadata !664} ; [ DW_TAG_arg_variable ]
!661 = metadata !{i32 786478, i32 0, metadata !32, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !32, i32 172, metadata !662, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 173} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!663 = metadata !{metadata !48, metadata !48}
!664 = metadata !{i32 252, i32 23, metadata !649, null}
!665 = metadata !{i32 172, i32 26, metadata !661, metadata !664}
!666 = metadata !{i32 174, i32 5, metadata !667, metadata !664}
!667 = metadata !{i32 786443, metadata !661, i32 173, i32 1, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!668 = metadata !{i32 252, i32 54, metadata !649, null}
!669 = metadata !{i32 786689, metadata !661, metadata !"x", metadata !32, i32 16777388, metadata !48, i32 0, metadata !668} ; [ DW_TAG_arg_variable ]
!670 = metadata !{i32 172, i32 26, metadata !661, metadata !668}
!671 = metadata !{i32 174, i32 5, metadata !667, metadata !668}
!672 = metadata !{i32 253, i32 25, metadata !649, null}
!673 = metadata !{i32 786689, metadata !661, metadata !"x", metadata !32, i32 16777388, metadata !48, i32 0, metadata !672} ; [ DW_TAG_arg_variable ]
!674 = metadata !{i32 172, i32 26, metadata !661, metadata !672}
!675 = metadata !{i32 174, i32 5, metadata !667, metadata !672}
!676 = metadata !{i32 253, i32 56, metadata !649, null}
!677 = metadata !{i32 786689, metadata !661, metadata !"x", metadata !32, i32 16777388, metadata !48, i32 0, metadata !676} ; [ DW_TAG_arg_variable ]
!678 = metadata !{i32 172, i32 26, metadata !661, metadata !676}
!679 = metadata !{i32 174, i32 5, metadata !667, metadata !676}
!680 = metadata !{i32 243, i32 31, metadata !646, null}
!681 = metadata !{i32 786688, metadata !647, metadata !"i", metadata !32, i32 241, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!682 = metadata !{i32 255, i32 1, metadata !647, null}
!683 = metadata !{i32 790544, metadata !684, metadata !"k", null, i32 258, metadata !550, i32 0, i32 0, metadata !687} ; [ DW_TAG_arg_variable_aggr_vec ]
!684 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !32, i32 258, metadata !685, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 259} ; [ DW_TAG_subprogram ]
!685 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !686, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!686 = metadata !{null, metadata !547, metadata !547}
!687 = metadata !{i32 786689, metadata !684, metadata !"k", null, i32 258, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!688 = metadata !{i32 258, i32 32, metadata !684, null}
!689 = metadata !{i32 790532, metadata !684, metadata !"rc", null, i32 258, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!690 = metadata !{i32 258, i32 44, metadata !684, null}
!691 = metadata !{i32 262, i32 5, metadata !692, null}
!692 = metadata !{i32 786443, metadata !684, i32 259, i32 1, metadata !32, i32 11} ; [ DW_TAG_lexical_block ]
!693 = metadata !{i32 263, i32 5, metadata !692, null}
!694 = metadata !{i32 264, i32 5, metadata !692, null}
!695 = metadata !{i32 265, i32 5, metadata !692, null}
!696 = metadata !{i32 266, i32 5, metadata !692, null}
!697 = metadata !{i32 275, i32 2, metadata !698, null}
!698 = metadata !{i32 786443, metadata !699, i32 269, i32 5, metadata !32, i32 13} ; [ DW_TAG_lexical_block ]
!699 = metadata !{i32 786443, metadata !692, i32 268, i32 12, metadata !32, i32 12} ; [ DW_TAG_lexical_block ]
!700 = metadata !{i32 278, i32 5, metadata !692, null}
!701 = metadata !{i32 279, i32 5, metadata !692, null}
!702 = metadata !{i32 280, i32 5, metadata !692, null}
!703 = metadata !{i32 281, i32 5, metadata !692, null}
!704 = metadata !{i32 290, i32 2, metadata !705, null}
!705 = metadata !{i32 786443, metadata !706, i32 284, i32 5, metadata !32, i32 15} ; [ DW_TAG_lexical_block ]
!706 = metadata !{i32 786443, metadata !692, i32 283, i32 12, metadata !32, i32 14} ; [ DW_TAG_lexical_block ]
!707 = metadata !{i32 294, i32 1, metadata !692, null}
!708 = metadata !{i32 268, i32 16, metadata !699, null}
!709 = metadata !{i32 269, i32 6, metadata !698, null}
!710 = metadata !{i32 271, i32 1, metadata !698, null}
!711 = metadata !{i32 277, i32 5, metadata !698, null}
!712 = metadata !{i32 268, i32 31, metadata !699, null}
!713 = metadata !{i32 786688, metadata !692, metadata !"i", metadata !32, i32 260, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!714 = metadata !{i32 283, i32 16, metadata !706, null}
!715 = metadata !{i32 284, i32 6, metadata !705, null}
!716 = metadata !{i32 283, i32 32, metadata !706, null}
!717 = metadata !{i32 786689, metadata !718, metadata !"buf", null, i32 210, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!718 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !32, i32 210, metadata !719, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 211} ; [ DW_TAG_subprogram ]
!719 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!720 = metadata !{null, metadata !547, metadata !547, metadata !547}
!721 = metadata !{i32 210, i32 35, metadata !718, null}
!722 = metadata !{i32 790544, metadata !718, metadata !"ctx", null, i32 210, metadata !550, i32 0, i32 0, metadata !723, metadata !724} ; [ DW_TAG_arg_variable_aggr_vec ]
!723 = metadata !{i32 786689, metadata !718, metadata !"key", null, i32 210, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!724 = metadata !{i32 786689, metadata !718, metadata !"cpk", null, i32 210, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!725 = metadata !{i32 210, i32 49, metadata !718, null}
!726 = metadata !{i32 214, i32 13, metadata !727, null}
!727 = metadata !{i32 786443, metadata !718, i32 211, i32 1, metadata !32, i32 5} ; [ DW_TAG_lexical_block ]
!728 = metadata !{i32 786688, metadata !727, metadata !"i", metadata !32, i32 212, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!729 = metadata !{i32 215, i32 6, metadata !730, null}
!730 = metadata !{i32 786443, metadata !727, i32 215, i32 5, metadata !32, i32 6} ; [ DW_TAG_lexical_block ]
!731 = metadata !{i32 217, i32 1, metadata !730, null}
!732 = metadata !{i32 221, i32 2, metadata !730, null}
!733 = metadata !{i32 222, i32 5, metadata !730, null}
!734 = metadata !{i32 223, i32 1, metadata !727, null}
!735 = metadata !{i32 786689, metadata !736, metadata !"buf", null, i32 194, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!736 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !32, i32 194, metadata !685, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 195} ; [ DW_TAG_subprogram ]
!737 = metadata !{i32 194, i32 31, metadata !736, null}
!738 = metadata !{i32 790544, metadata !736, metadata !"key", null, i32 194, metadata !550, i32 0, i32 0, metadata !739} ; [ DW_TAG_arg_variable_aggr_vec ]
!739 = metadata !{i32 786689, metadata !736, metadata !"key", null, i32 194, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!740 = metadata !{i32 194, i32 45, metadata !736, null}
!741 = metadata !{i32 198, i32 14, metadata !742, null}
!742 = metadata !{i32 786443, metadata !736, i32 195, i32 1, metadata !32, i32 3} ; [ DW_TAG_lexical_block ]
!743 = metadata !{i32 786688, metadata !742, metadata !"i", metadata !32, i32 196, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!744 = metadata !{i32 199, i32 6, metadata !745, null}
!745 = metadata !{i32 786443, metadata !742, i32 199, i32 5, metadata !32, i32 4} ; [ DW_TAG_lexical_block ]
!746 = metadata !{i32 201, i32 1, metadata !745, null}
!747 = metadata !{i32 205, i32 2, metadata !745, null}
!748 = metadata !{i32 206, i32 5, metadata !745, null}
!749 = metadata !{i32 207, i32 1, metadata !742, null}
