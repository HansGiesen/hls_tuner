; ModuleID = '/scratch/local/tmp.mnejJh1Zni/_sds/vhls/encrypt/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@unroll_factor_sub = constant i32 4, align 4      ; [#uses=0 type=i32*]
@unroll_factor_mix = constant i32 1, align 4      ; [#uses=0 type=i32*]
@unroll_factor_exp2 = constant i32 2, align 4     ; [#uses=0 type=i32*]
@unroll_factor_exp1 = constant i32 2, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb3 = constant i32 8, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb2 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb1 = constant i32 22, align 4    ; [#uses=0 type=i32*]
@unroll_factor_cpkey = constant i32 9, align 4    ; [#uses=0 type=i32*]
@unroll_factor_addkey = constant i32 9, align 4   ; [#uses=0 type=i32*]
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1 ; [#uses=32 type=[256 x i8]*]
@pipeline_ii_sub = constant i32 13, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_mix = constant i32 2, align 4        ; [#uses=0 type=i32*]
@pipeline_ii_exp2 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_exp1 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb3 = constant i32 13, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_ecb2 = constant i32 2, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb1 = constant i32 13, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_cpkey = constant i32 14, align 4     ; [#uses=0 type=i32*]
@pipeline_ii_addkey = constant i32 1, align 4     ; [#uses=0 type=i32*]
@encrypt.str = internal unnamed_addr constant [8 x i8] c"encrypt\00" ; [#uses=1 type=[8 x i8]*]
@.str9 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=12 type=[7 x i8]*]
@.str8 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1 ; [#uses=6 type=[4 x i8]*]
@.str7 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=12 type=[6 x i8]*]
@.str6 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str15 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str14 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str12 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str11 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str10 = private unnamed_addr constant [4 x i8] c"buf\00", align 1 ; [#uses=6 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=64 type=[1 x i8]*]

; [#uses=10]
declare i1024 @llvm.part.set.i1024.i256(i1024, i256, i32, i32) nounwind readnone

; [#uses=40]
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
  %rcon = phi i8 [ %rcon.3, %1 ], [ 1, %.preheader.preheader ] ; [#uses=1 type=i8]
  %i = phi i3 [ %phitmp, %1 ], [ -1, %.preheader.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !584), !dbg !582 ; [debug line = 313:17] [debug variable = i]
  %tmp.7 = icmp eq i3 %i, 0, !dbg !582            ; [#uses=1 type=i1] [debug line = 313:17]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) ; [#uses=0 type=i32]
  br i1 %tmp.7, label %2, label %1, !dbg !582     ; [debug line = 313:17]

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str14) nounwind, !dbg !585 ; [debug line = 313:29]
  %rcon.3 = call fastcc i8 @aes_expandEncKey.1(i1024* %ctx, i8 %rcon) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rcon.3}, i64 0, metadata !587), !dbg !588 ; [debug line = 319:2] [debug variable = rcon]
  %phitmp = add i3 %i, -1, !dbg !589              ; [#uses=1 type=i3] [debug line = 320:5]
  br label %.preheader, !dbg !589                 ; [debug line = 320:5]

; <label>:2                                       ; preds = %.preheader
  call fastcc void @aes_addRoundKey_cpy([16 x i8]* %buf, i1024* %ctx)
  %3 = lshr i4 -3, 1                              ; [#uses=0 type=i4]
  br label %4, !dbg !590                          ; [debug line = 324:16]

; <label>:4                                       ; preds = %9, %2
  %rcon.1 = phi i8 [ 1, %2 ], [ %rcon.2, %9 ]     ; [#uses=3 type=i8]
  %i.2 = phi i4 [ 1, %2 ], [ %i.1, %9 ]           ; [#uses=3 type=i4]
  %i.2.cast1 = trunc i4 %i.2 to i1, !dbg !590     ; [#uses=1 type=i1] [debug line = 324:16]
  %exitcond = icmp eq i4 %i.2, -2, !dbg !590      ; [#uses=1 type=i1] [debug line = 324:16]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  br i1 %exitcond, label %11, label %6, !dbg !590 ; [debug line = 324:16]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str15) nounwind, !dbg !592 ; [debug line = 325:6]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str15), !dbg !592 ; [#uses=1 type=i32] [debug line = 325:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 13, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !594 ; [debug line = 327:1]
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !595 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !596 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf), !dbg !597 ; [debug line = 333:9]
  br i1 %i.2.cast1, label %7, label %8, !dbg !598 ; [debug line = 334:9]

; <label>:7                                       ; preds = %6
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 16)
  br label %9, !dbg !599                          ; [debug line = 334:21]

; <label>:8                                       ; preds = %6
  %rcon.4 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.1) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rcon.4}, i64 0, metadata !587), !dbg !600 ; [debug line = 335:14] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  br label %9

; <label>:9                                       ; preds = %8, %7
  %rcon.2 = phi i8 [ %rcon.4, %8 ], [ %rcon.1, %7 ] ; [#uses=1 type=i8]
  %10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str15, i32 %tmp.1), !dbg !601 ; [#uses=0 type=i32] [debug line = 336:5]
  %i.1 = add i4 %i.2, 1, !dbg !602                ; [#uses=1 type=i4] [debug line = 324:41]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !584), !dbg !602 ; [debug line = 324:41] [debug variable = i]
  br label %4, !dbg !602                          ; [debug line = 324:41]

; <label>:11                                      ; preds = %4
  %rcon.1.lcssa = phi i8 [ %rcon.1, %4 ]          ; [#uses=1 type=i8]
  call fastcc void @aes_subBytes([16 x i8]* %buf), !dbg !603 ; [debug line = 337:5]
  call fastcc void @aes_shiftRows([16 x i8]* %buf), !dbg !604 ; [debug line = 338:5]
  %call.ret4428 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i8 %rcon.1.lcssa) ; [#uses=0 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %call.ret4428}, i64 0, metadata !587), !dbg !605 ; [debug line = 339:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %ctx, i6 0)
  ret void, !dbg !606                             ; [debug line = 341:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !607), !dbg !611 ; [debug line = 178:28] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 15, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1 = zext i8 %buf.load to i32, !dbg !612    ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load, i8* %buf.addr, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.1 = getelementptr [16 x i8]* %buf, i32 0, i32 14, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.1 = load i8* %buf.addr.1, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.1 = zext i8 %buf.load.1 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.1, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.1, i8* %buf.addr.1, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.2 = getelementptr [16 x i8]* %buf, i32 0, i32 13, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.2 = load i8* %buf.addr.2, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.2 = zext i8 %buf.load.2 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.2, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.2, i8* %buf.addr.2, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.3 = getelementptr [16 x i8]* %buf, i32 0, i32 12, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.3 = load i8* %buf.addr.3, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.3 = zext i8 %buf.load.3 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.3, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.3, i8* %buf.addr.3, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.4 = getelementptr [16 x i8]* %buf, i32 0, i32 11, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.4 = load i8* %buf.addr.4, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.4 = zext i8 %buf.load.4 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.4, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.4, i8* %buf.addr.4, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.5 = getelementptr [16 x i8]* %buf, i32 0, i32 10, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.5 = load i8* %buf.addr.5, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.5 = zext i8 %buf.load.5 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.5, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.5, i8* %buf.addr.5, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.6 = getelementptr [16 x i8]* %buf, i32 0, i32 9, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.6 = load i8* %buf.addr.6, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.6 = zext i8 %buf.load.6 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.6, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.6, i8* %buf.addr.6, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.7 = getelementptr [16 x i8]* %buf, i32 0, i32 8, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.7 = load i8* %buf.addr.7, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.7 = zext i8 %buf.load.7 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.7, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.7, i8* %buf.addr.7, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.8 = getelementptr [16 x i8]* %buf, i32 0, i32 7, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.8 = load i8* %buf.addr.8, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.8 = zext i8 %buf.load.8 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.8 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.8, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.8 = load i8* %sbox.addr.8, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.8, i8* %buf.addr.8, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.9 = getelementptr [16 x i8]* %buf, i32 0, i32 6, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.9 = load i8* %buf.addr.9, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.9 = zext i8 %buf.load.9 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.9 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.9, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.9 = load i8* %sbox.addr.9, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.9, i8* %buf.addr.9, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.10 = getelementptr [16 x i8]* %buf, i32 0, i32 5, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.10 = load i8* %buf.addr.10, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1. = zext i8 %buf.load.10 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.10 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1., !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.10, i8* %buf.addr.10, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.11 = getelementptr [16 x i8]* %buf, i32 0, i32 4, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.11 = load i8* %buf.addr.11, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.10 = zext i8 %buf.load.11 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.11 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.10, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.11, i8* %buf.addr.11, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.12 = getelementptr [16 x i8]* %buf, i32 0, i32 3, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.12 = load i8* %buf.addr.12, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.11 = zext i8 %buf.load.12 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.12 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.11, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.12 = load i8* %sbox.addr.12, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.12, i8* %buf.addr.12, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.13 = getelementptr [16 x i8]* %buf, i32 0, i32 2, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.13 = load i8* %buf.addr.13, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.12 = zext i8 %buf.load.13 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.13 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.12, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.13, i8* %buf.addr.13, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.14 = getelementptr [16 x i8]* %buf, i32 0, i32 1, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.14 = load i8* %buf.addr.14, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.13 = zext i8 %buf.load.14 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.14 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.13, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.14 = load i8* %sbox.addr.14, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.14, i8* %buf.addr.14, align 1, !dbg !612 ; [debug line = 189:2]
  %buf.addr.15 = getelementptr [16 x i8]* %buf, i32 0, i32 0, !dbg !612 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.15 = load i8* %buf.addr.15, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.14 = zext i8 %buf.load.15 to i32, !dbg !612 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.15 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.14, !dbg !612 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.15 = load i8* %sbox.addr.15, align 1, !dbg !612 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.15, i8* %buf.addr.15, align 1, !dbg !612 ; [debug line = 189:2]
  ret void, !dbg !615                             ; [debug line = 191:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !616), !dbg !618 ; [debug line = 227:29] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 1, !dbg !619 ; [#uses=2 type=i8*] [debug line = 231:5]
  %i = load i8* %buf.addr, align 1, !dbg !619     ; [#uses=1 type=i8] [debug line = 231:5]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !621), !dbg !619 ; [debug line = 231:5] [debug variable = i]
  %buf.addr.12 = getelementptr [16 x i8]* %buf, i32 0, i32 5, !dbg !622 ; [#uses=2 type=i8*] [debug line = 231:17]
  %buf.load = load i8* %buf.addr.12, align 1, !dbg !622 ; [#uses=1 type=i8] [debug line = 231:17]
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !622 ; [debug line = 231:17]
  %buf.addr.16 = getelementptr [16 x i8]* %buf, i32 0, i32 9, !dbg !623 ; [#uses=2 type=i8*] [debug line = 231:34]
  %buf.load.1 = load i8* %buf.addr.16, align 1, !dbg !623 ; [#uses=1 type=i8] [debug line = 231:34]
  store i8 %buf.load.1, i8* %buf.addr.12, align 1, !dbg !623 ; [debug line = 231:34]
  %buf.addr.17 = getelementptr [16 x i8]* %buf, i32 0, i32 13, !dbg !624 ; [#uses=2 type=i8*] [debug line = 231:51]
  %buf.load.2 = load i8* %buf.addr.17, align 1, !dbg !624 ; [#uses=1 type=i8] [debug line = 231:51]
  store i8 %buf.load.2, i8* %buf.addr.16, align 1, !dbg !624 ; [debug line = 231:51]
  store i8 %i, i8* %buf.addr.17, align 1, !dbg !625 ; [debug line = 231:69]
  %buf.addr.18 = getelementptr [16 x i8]* %buf, i32 0, i32 10, !dbg !626 ; [#uses=2 type=i8*] [debug line = 232:5]
  %i.2 = load i8* %buf.addr.18, align 1, !dbg !626 ; [#uses=1 type=i8] [debug line = 232:5]
  call void @llvm.dbg.value(metadata !{i8 %i.2}, i64 0, metadata !621), !dbg !626 ; [debug line = 232:5] [debug variable = i]
  %buf.addr.19 = getelementptr [16 x i8]* %buf, i32 0, i32 2, !dbg !627 ; [#uses=2 type=i8*] [debug line = 232:18]
  %buf.load.4 = load i8* %buf.addr.19, align 1, !dbg !627 ; [#uses=1 type=i8] [debug line = 232:18]
  store i8 %buf.load.4, i8* %buf.addr.18, align 1, !dbg !627 ; [debug line = 232:18]
  store i8 %i.2, i8* %buf.addr.19, align 1, !dbg !628 ; [debug line = 232:36]
  %buf.addr.20 = getelementptr [16 x i8]* %buf, i32 0, i32 3, !dbg !629 ; [#uses=2 type=i8*] [debug line = 233:5]
  %j = load i8* %buf.addr.20, align 1, !dbg !629  ; [#uses=1 type=i8] [debug line = 233:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !630), !dbg !629 ; [debug line = 233:5] [debug variable = j]
  %buf.addr.21 = getelementptr [16 x i8]* %buf, i32 0, i32 15, !dbg !631 ; [#uses=2 type=i8*] [debug line = 233:17]
  %buf.load.6 = load i8* %buf.addr.21, align 1, !dbg !631 ; [#uses=1 type=i8] [debug line = 233:17]
  store i8 %buf.load.6, i8* %buf.addr.20, align 1, !dbg !631 ; [debug line = 233:17]
  %buf.addr.22 = getelementptr [16 x i8]* %buf, i32 0, i32 11, !dbg !632 ; [#uses=2 type=i8*] [debug line = 233:35]
  %buf.load.7 = load i8* %buf.addr.22, align 1, !dbg !632 ; [#uses=1 type=i8] [debug line = 233:35]
  store i8 %buf.load.7, i8* %buf.addr.21, align 1, !dbg !632 ; [debug line = 233:35]
  %buf.addr.23 = getelementptr [16 x i8]* %buf, i32 0, i32 7, !dbg !633 ; [#uses=2 type=i8*] [debug line = 233:54]
  %buf.load.8 = load i8* %buf.addr.23, align 1, !dbg !633 ; [#uses=1 type=i8] [debug line = 233:54]
  store i8 %buf.load.8, i8* %buf.addr.22, align 1, !dbg !633 ; [debug line = 233:54]
  store i8 %j, i8* %buf.addr.23, align 1, !dbg !634 ; [debug line = 233:72]
  %buf.addr.24 = getelementptr [16 x i8]* %buf, i32 0, i32 14, !dbg !635 ; [#uses=2 type=i8*] [debug line = 234:5]
  %j.1 = load i8* %buf.addr.24, align 1, !dbg !635 ; [#uses=1 type=i8] [debug line = 234:5]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !630), !dbg !635 ; [debug line = 234:5] [debug variable = j]
  %buf.addr.25 = getelementptr [16 x i8]* %buf, i32 0, i32 6, !dbg !636 ; [#uses=2 type=i8*] [debug line = 234:18]
  %buf.load.10 = load i8* %buf.addr.25, align 1, !dbg !636 ; [#uses=1 type=i8] [debug line = 234:18]
  store i8 %buf.load.10, i8* %buf.addr.24, align 1, !dbg !636 ; [debug line = 234:18]
  store i8 %j.1, i8* %buf.addr.25, align 1, !dbg !637 ; [debug line = 234:36]
  ret void, !dbg !638                             ; [debug line = 236:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !639), !dbg !641 ; [debug line = 239:30] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 0, !dbg !642 ; [#uses=2 type=i8*] [debug line = 250:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !642 ; [#uses=3 type=i8] [debug line = 250:2]
  %buf.addr.26 = getelementptr [16 x i8]* %buf, i32 0, i32 1, !dbg !646 ; [#uses=2 type=i8*] [debug line = 250:14]
  %buf.load.20 = load i8* %buf.addr.26, align 1, !dbg !646 ; [#uses=3 type=i8] [debug line = 250:14]
  %buf.addr.27 = getelementptr [16 x i8]* %buf, i32 0, i32 2, !dbg !647 ; [#uses=2 type=i8*] [debug line = 250:30]
  %buf.load.21 = load i8* %buf.addr.27, align 1, !dbg !647 ; [#uses=4 type=i8] [debug line = 250:30]
  %buf.addr.28 = getelementptr [16 x i8]* %buf, i32 0, i32 3, !dbg !648 ; [#uses=2 type=i8*] [debug line = 250:46]
  %buf.load.22 = load i8* %buf.addr.28, align 1, !dbg !648 ; [#uses=3 type=i8] [debug line = 250:46]
  %x.assign = xor i8 %buf.load.20, %buf.load, !dbg !649 ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp.6 = xor i8 %buf.load.21, %x.assign, !dbg !649 ; [#uses=2 type=i8] [debug line = 251:9]
  %e = xor i8 %buf.load.22, %tmp.6, !dbg !649     ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign}, i64 0, metadata !650), !dbg !655 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp.i = icmp slt i8 %x.assign, 0, !dbg !656    ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp.1.i = shl i8 %x.assign, 1, !dbg !656       ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp.2.i = xor i8 %tmp.1.i, 27, !dbg !656       ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp.4.i = select i1 %tmp.i, i8 %tmp.2.i, i8 %tmp.1.i, !dbg !656 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp = xor i8 %tmp.4.i, %e, !dbg !654           ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp.9 = xor i8 %tmp, %buf.load, !dbg !654      ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %tmp.9, i8* %buf.addr, align 1, !dbg !654 ; [debug line = 252:23]
  %x.assign.1 = xor i8 %buf.load.21, %buf.load.20, !dbg !658 ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.1}, i64 0, metadata !659), !dbg !660 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp.i1 = icmp slt i8 %x.assign.1, 0, !dbg !661 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp.1.i1 = shl i8 %x.assign.1, 1, !dbg !661    ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp.2.i1 = xor i8 %tmp.1.i1, 27, !dbg !661     ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp.4.i1 = select i1 %tmp.i1, i8 %tmp.2.i1, i8 %tmp.1.i1, !dbg !661 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp1 = xor i8 %tmp.4.i1, %e, !dbg !658         ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.1 = xor i8 %tmp1, %buf.load.20, !dbg !658  ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %tmp.1, i8* %buf.addr.26, align 1, !dbg !658 ; [debug line = 252:54]
  %x.assign.2 = xor i8 %buf.load.22, %buf.load.21, !dbg !662 ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.2}, i64 0, metadata !663), !dbg !664 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp.i2 = icmp slt i8 %x.assign.2, 0, !dbg !665 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp.1.i2 = shl i8 %x.assign.2, 1, !dbg !665    ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp.2.i2 = xor i8 %tmp.1.i2, 27, !dbg !665     ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp.4.i2 = select i1 %tmp.i2, i8 %tmp.2.i2, i8 %tmp.1.i2, !dbg !665 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp2 = xor i8 %tmp.4.i2, %e, !dbg !662         ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.4 = xor i8 %tmp2, %buf.load.21, !dbg !662  ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %tmp.4, i8* %buf.addr.27, align 1, !dbg !662 ; [debug line = 253:25]
  %x.assign.3 = xor i8 %buf.load.22, %buf.load, !dbg !666 ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.3}, i64 0, metadata !667), !dbg !668 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp.i3 = icmp slt i8 %x.assign.3, 0, !dbg !669 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp.1.i3 = shl i8 %x.assign.3, 1, !dbg !669    ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp.2.i3 = xor i8 %tmp.1.i3, 27, !dbg !669     ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.4.i3 = select i1 %tmp.i3, i8 %tmp.2.i3, i8 %tmp.1.i3, !dbg !669 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.7 = xor i8 %tmp.4.i3, %tmp.6, !dbg !666    ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %tmp.7, i8* %buf.addr.28, align 1, !dbg !666 ; [debug line = 253:56]
  %buf.addr.29 = getelementptr [16 x i8]* %buf, i32 0, i32 4, !dbg !642 ; [#uses=2 type=i8*] [debug line = 250:2]
  %buf.load.23 = load i8* %buf.addr.29, align 1, !dbg !642 ; [#uses=3 type=i8] [debug line = 250:2]
  %buf.addr.30 = getelementptr [16 x i8]* %buf, i32 0, i32 5, !dbg !646 ; [#uses=2 type=i8*] [debug line = 250:14]
  %buf.load.24 = load i8* %buf.addr.30, align 1, !dbg !646 ; [#uses=3 type=i8] [debug line = 250:14]
  %buf.addr.31 = getelementptr [16 x i8]* %buf, i32 0, i32 6, !dbg !647 ; [#uses=2 type=i8*] [debug line = 250:30]
  %buf.load.25 = load i8* %buf.addr.31, align 1, !dbg !647 ; [#uses=4 type=i8] [debug line = 250:30]
  %buf.addr.32 = getelementptr [16 x i8]* %buf, i32 0, i32 7, !dbg !648 ; [#uses=2 type=i8*] [debug line = 250:46]
  %buf.load.26 = load i8* %buf.addr.32, align 1, !dbg !648 ; [#uses=3 type=i8] [debug line = 250:46]
  %x.assign.4 = xor i8 %buf.load.24, %buf.load.23, !dbg !649 ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp.6.1 = xor i8 %buf.load.25, %x.assign.4, !dbg !649 ; [#uses=2 type=i8] [debug line = 251:9]
  %e.1 = xor i8 %buf.load.26, %tmp.6.1, !dbg !649 ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.4}, i64 0, metadata !650), !dbg !655 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp.i4 = icmp slt i8 %x.assign.4, 0, !dbg !656 ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp.1.i4 = shl i8 %x.assign.4, 1, !dbg !656    ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp.2.i4 = xor i8 %tmp.1.i4, 27, !dbg !656     ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp.4.i4 = select i1 %tmp.i4, i8 %tmp.2.i4, i8 %tmp.1.i4, !dbg !656 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp3 = xor i8 %tmp.4.i4, %e.1, !dbg !654       ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp.9.1 = xor i8 %tmp3, %buf.load.23, !dbg !654 ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %tmp.9.1, i8* %buf.addr.29, align 1, !dbg !654 ; [debug line = 252:23]
  %x.assign.5 = xor i8 %buf.load.25, %buf.load.24, !dbg !658 ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.5}, i64 0, metadata !659), !dbg !660 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp.i5 = icmp slt i8 %x.assign.5, 0, !dbg !661 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp.1.i5 = shl i8 %x.assign.5, 1, !dbg !661    ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp.2.i5 = xor i8 %tmp.1.i5, 27, !dbg !661     ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp.4.i5 = select i1 %tmp.i5, i8 %tmp.2.i5, i8 %tmp.1.i5, !dbg !661 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp4 = xor i8 %tmp.4.i5, %e.1, !dbg !658       ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.13.1 = xor i8 %tmp4, %buf.load.24, !dbg !658 ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %tmp.13.1, i8* %buf.addr.30, align 1, !dbg !658 ; [debug line = 252:54]
  %x.assign.6 = xor i8 %buf.load.26, %buf.load.25, !dbg !662 ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.6}, i64 0, metadata !663), !dbg !664 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp.i6 = icmp slt i8 %x.assign.6, 0, !dbg !665 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp.1.i6 = shl i8 %x.assign.6, 1, !dbg !665    ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp.2.i6 = xor i8 %tmp.1.i6, 27, !dbg !665     ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp.4.i6 = select i1 %tmp.i6, i8 %tmp.2.i6, i8 %tmp.1.i6, !dbg !665 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp5 = xor i8 %tmp.4.i6, %e.1, !dbg !662       ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.17.1 = xor i8 %tmp5, %buf.load.25, !dbg !662 ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %tmp.17.1, i8* %buf.addr.31, align 1, !dbg !662 ; [debug line = 253:25]
  %x.assign.7 = xor i8 %buf.load.26, %buf.load.23, !dbg !666 ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.7}, i64 0, metadata !667), !dbg !668 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp.i7 = icmp slt i8 %x.assign.7, 0, !dbg !669 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp.1.i7 = shl i8 %x.assign.7, 1, !dbg !669    ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp.2.i7 = xor i8 %tmp.1.i7, 27, !dbg !669     ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.4.i7 = select i1 %tmp.i7, i8 %tmp.2.i7, i8 %tmp.1.i7, !dbg !669 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.21.1 = xor i8 %tmp.4.i7, %tmp.6.1, !dbg !666 ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %tmp.21.1, i8* %buf.addr.32, align 1, !dbg !666 ; [debug line = 253:56]
  %buf.addr.33 = getelementptr [16 x i8]* %buf, i32 0, i32 8, !dbg !642 ; [#uses=2 type=i8*] [debug line = 250:2]
  %buf.load.27 = load i8* %buf.addr.33, align 1, !dbg !642 ; [#uses=3 type=i8] [debug line = 250:2]
  %buf.addr.34 = getelementptr [16 x i8]* %buf, i32 0, i32 9, !dbg !646 ; [#uses=2 type=i8*] [debug line = 250:14]
  %buf.load.28 = load i8* %buf.addr.34, align 1, !dbg !646 ; [#uses=3 type=i8] [debug line = 250:14]
  %buf.addr.35 = getelementptr [16 x i8]* %buf, i32 0, i32 10, !dbg !647 ; [#uses=2 type=i8*] [debug line = 250:30]
  %buf.load.29 = load i8* %buf.addr.35, align 1, !dbg !647 ; [#uses=4 type=i8] [debug line = 250:30]
  %buf.addr.36 = getelementptr [16 x i8]* %buf, i32 0, i32 11, !dbg !648 ; [#uses=2 type=i8*] [debug line = 250:46]
  %buf.load.30 = load i8* %buf.addr.36, align 1, !dbg !648 ; [#uses=3 type=i8] [debug line = 250:46]
  %x.assign.8 = xor i8 %buf.load.28, %buf.load.27, !dbg !649 ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp.6.2 = xor i8 %buf.load.29, %x.assign.8, !dbg !649 ; [#uses=2 type=i8] [debug line = 251:9]
  %e.2 = xor i8 %buf.load.30, %tmp.6.2, !dbg !649 ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.8}, i64 0, metadata !650), !dbg !655 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp.i8 = icmp slt i8 %x.assign.8, 0, !dbg !656 ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp.1.i8 = shl i8 %x.assign.8, 1, !dbg !656    ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp.2.i8 = xor i8 %tmp.1.i8, 27, !dbg !656     ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp.4.i8 = select i1 %tmp.i8, i8 %tmp.2.i8, i8 %tmp.1.i8, !dbg !656 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp6 = xor i8 %tmp.4.i8, %e.2, !dbg !654       ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp.9.2 = xor i8 %tmp6, %buf.load.27, !dbg !654 ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %tmp.9.2, i8* %buf.addr.33, align 1, !dbg !654 ; [debug line = 252:23]
  %x.assign.9 = xor i8 %buf.load.29, %buf.load.28, !dbg !658 ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.9}, i64 0, metadata !659), !dbg !660 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp.i9 = icmp slt i8 %x.assign.9, 0, !dbg !661 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp.1.i9 = shl i8 %x.assign.9, 1, !dbg !661    ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp.2.i9 = xor i8 %tmp.1.i9, 27, !dbg !661     ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp.4.i9 = select i1 %tmp.i9, i8 %tmp.2.i9, i8 %tmp.1.i9, !dbg !661 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp7 = xor i8 %tmp.4.i9, %e.2, !dbg !658       ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.13.2 = xor i8 %tmp7, %buf.load.28, !dbg !658 ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %tmp.13.2, i8* %buf.addr.34, align 1, !dbg !658 ; [debug line = 252:54]
  %x.assign.10 = xor i8 %buf.load.30, %buf.load.29, !dbg !662 ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.10}, i64 0, metadata !663), !dbg !664 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp.i10 = icmp slt i8 %x.assign.10, 0, !dbg !665 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp.1.i10 = shl i8 %x.assign.10, 1, !dbg !665  ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp.2.i10 = xor i8 %tmp.1.i10, 27, !dbg !665   ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp.4.i10 = select i1 %tmp.i10, i8 %tmp.2.i10, i8 %tmp.1.i10, !dbg !665 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp8 = xor i8 %tmp.4.i10, %e.2, !dbg !662      ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.17.2 = xor i8 %tmp8, %buf.load.29, !dbg !662 ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %tmp.17.2, i8* %buf.addr.35, align 1, !dbg !662 ; [debug line = 253:25]
  %x.assign.11 = xor i8 %buf.load.30, %buf.load.27, !dbg !666 ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.11}, i64 0, metadata !667), !dbg !668 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp.i11 = icmp slt i8 %x.assign.11, 0, !dbg !669 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp.1.i11 = shl i8 %x.assign.11, 1, !dbg !669  ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp.2.i11 = xor i8 %tmp.1.i11, 27, !dbg !669   ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.4.i11 = select i1 %tmp.i11, i8 %tmp.2.i11, i8 %tmp.1.i11, !dbg !669 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.21.2 = xor i8 %tmp.4.i11, %tmp.6.2, !dbg !666 ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %tmp.21.2, i8* %buf.addr.36, align 1, !dbg !666 ; [debug line = 253:56]
  %buf.addr.37 = getelementptr [16 x i8]* %buf, i32 0, i32 12, !dbg !642 ; [#uses=2 type=i8*] [debug line = 250:2]
  %buf.load.31 = load i8* %buf.addr.37, align 1, !dbg !642 ; [#uses=3 type=i8] [debug line = 250:2]
  %buf.addr.38 = getelementptr [16 x i8]* %buf, i32 0, i32 13, !dbg !646 ; [#uses=2 type=i8*] [debug line = 250:14]
  %buf.load.32 = load i8* %buf.addr.38, align 1, !dbg !646 ; [#uses=3 type=i8] [debug line = 250:14]
  %buf.addr.39 = getelementptr [16 x i8]* %buf, i32 0, i32 14, !dbg !647 ; [#uses=2 type=i8*] [debug line = 250:30]
  %buf.load.33 = load i8* %buf.addr.39, align 1, !dbg !647 ; [#uses=4 type=i8] [debug line = 250:30]
  %buf.addr.40 = getelementptr [16 x i8]* %buf, i32 0, i32 15, !dbg !648 ; [#uses=2 type=i8*] [debug line = 250:46]
  %buf.load.34 = load i8* %buf.addr.40, align 1, !dbg !648 ; [#uses=3 type=i8] [debug line = 250:46]
  %x.assign.12 = xor i8 %buf.load.32, %buf.load.31, !dbg !649 ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp.6.3 = xor i8 %buf.load.33, %x.assign.12, !dbg !649 ; [#uses=2 type=i8] [debug line = 251:9]
  %e.3 = xor i8 %buf.load.34, %tmp.6.3, !dbg !649 ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.12}, i64 0, metadata !650), !dbg !655 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp.i12 = icmp slt i8 %x.assign.12, 0, !dbg !656 ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp.1.i12 = shl i8 %x.assign.12, 1, !dbg !656  ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp.2.i12 = xor i8 %tmp.1.i12, 27, !dbg !656   ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp.4.i12 = select i1 %tmp.i12, i8 %tmp.2.i12, i8 %tmp.1.i12, !dbg !656 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp9 = xor i8 %tmp.4.i12, %e.3, !dbg !654      ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp.9.3 = xor i8 %tmp9, %buf.load.31, !dbg !654 ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %tmp.9.3, i8* %buf.addr.37, align 1, !dbg !654 ; [debug line = 252:23]
  %x.assign.13 = xor i8 %buf.load.33, %buf.load.32, !dbg !658 ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.13}, i64 0, metadata !659), !dbg !660 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp.i13 = icmp slt i8 %x.assign.13, 0, !dbg !661 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp.1.i13 = shl i8 %x.assign.13, 1, !dbg !661  ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp.2.i13 = xor i8 %tmp.1.i13, 27, !dbg !661   ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp.4.i13 = select i1 %tmp.i13, i8 %tmp.2.i13, i8 %tmp.1.i13, !dbg !661 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp10 = xor i8 %tmp.4.i13, %e.3, !dbg !658     ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.13.3 = xor i8 %tmp10, %buf.load.32, !dbg !658 ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %tmp.13.3, i8* %buf.addr.38, align 1, !dbg !658 ; [debug line = 252:54]
  %x.assign.14 = xor i8 %buf.load.34, %buf.load.33, !dbg !662 ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.14}, i64 0, metadata !663), !dbg !664 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp.i14 = icmp slt i8 %x.assign.14, 0, !dbg !665 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp.1.i14 = shl i8 %x.assign.14, 1, !dbg !665  ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp.2.i14 = xor i8 %tmp.1.i14, 27, !dbg !665   ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp.4.i14 = select i1 %tmp.i14, i8 %tmp.2.i14, i8 %tmp.1.i14, !dbg !665 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp11 = xor i8 %tmp.4.i14, %e.3, !dbg !662     ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.17.3 = xor i8 %tmp11, %buf.load.33, !dbg !662 ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %tmp.17.3, i8* %buf.addr.39, align 1, !dbg !662 ; [debug line = 253:25]
  %x.assign.15 = xor i8 %buf.load.34, %buf.load.31, !dbg !666 ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.15}, i64 0, metadata !667), !dbg !668 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp.i15 = icmp slt i8 %x.assign.15, 0, !dbg !669 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp.1.i15 = shl i8 %x.assign.15, 1, !dbg !669  ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp.2.i15 = xor i8 %tmp.1.i15, 27, !dbg !669   ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.4.i15 = select i1 %tmp.i15, i8 %tmp.2.i15, i8 %tmp.1.i15, !dbg !669 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.21.3 = xor i8 %tmp.4.i15, %tmp.6.3, !dbg !666 ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %tmp.21.3, i8* %buf.addr.40, align 1, !dbg !666 ; [debug line = 253:56]
  ret void, !dbg !670                             ; [debug line = 255:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandEncKey.1(i1024* %k, i8 %rc.read) {
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{i1024* %k}, i64 0, metadata !671), !dbg !676 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !677), !dbg !678 ; [debug line = 258:44] [debug variable = rc]
  %k.load = load i1024* %k, align 4, !dbg !679    ; [#uses=10 type=i1024] [debug line = 262:5]
  %.new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %k.load, i32 512, i32 767), !dbg !679 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp.2 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 744, i32 751), !dbg !679 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp = zext i8 %tmp.2 to i32, !dbg !679         ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !679 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !679 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.3 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 512, i32 519), !dbg !679 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %tmp.3, %rc.read, !dbg !679      ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.1 = xor i8 %tmp1, %sbox.load, !dbg !679    ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.4 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %.new, i8 %tmp.1, i32 0, i32 7), !dbg !679 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp.5 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 752, i32 759), !dbg !681 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.6 = zext i8 %tmp.5 to i32, !dbg !681       ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.6, !dbg !681 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !681 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.7 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 520, i32 527), !dbg !681 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.8 = xor i8 %sbox.load.1, %tmp.7, !dbg !681 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.9 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.4, i8 %tmp.8, i32 8, i32 15), !dbg !681 ; [#uses=1 type=i256] [debug line = 263:5]
  %tmp. = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 760, i32 767), !dbg !682 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.10 = zext i8 %tmp. to i32, !dbg !682       ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.10, !dbg !682 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !682 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.11 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 528, i32 535), !dbg !682 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.12 = xor i8 %sbox.load.2, %tmp.11, !dbg !682 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.13 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.9, i8 %tmp.12, i32 16, i32 23), !dbg !682 ; [#uses=1 type=i256] [debug line = 264:5]
  %tmp.14 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 736, i32 743), !dbg !683 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.15 = zext i8 %tmp.14 to i32, !dbg !683     ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.15, !dbg !683 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !683 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.16 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 536, i32 543), !dbg !683 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.17 = xor i8 %sbox.load.3, %tmp.16, !dbg !683 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.18 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.13, i8 %tmp.17, i32 24, i32 31), !dbg !683 ; [#uses=1 type=i256] [debug line = 265:5]
  %gep25188190.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %k.load, i256 %tmp.18, i32 512, i32 767), !dbg !683 ; [#uses=1 type=i1024] [debug line = 265:5]
  %tmp.19 = shl i8 %rc.read, 1, !dbg !684         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.20 = lshr i8 %rc.read, 7, !dbg !684        ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.21 = trunc i8 %tmp.20 to i1, !dbg !684     ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp.23.cast = select i1 %tmp.21, i8 27, i8 0   ; [#uses=1 type=i8]
  %tmp.22 = xor i8 %tmp.23.cast, %tmp.19, !dbg !684 ; [#uses=1 type=i8] [debug line = 266:5]
  br label %1, !dbg !685                          ; [debug line = 268:16]

; <label>:1                                       ; preds = %3, %0
  %.new1 = phi i1024 [ %gep25188190.part_set, %0 ], [ %gep17128130.part_set, %3 ] ; [#uses=3 type=i1024]
  %i = phi i5 [ 4, %0 ], [ %i.3, %3 ]             ; [#uses=4 type=i5]
  %tmp.23 = icmp sgt i5 %i, -1, !dbg !685         ; [#uses=1 type=i1] [debug line = 268:16]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.23, label %3, label %5, !dbg !685    ; [debug line = 268:16]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str5) nounwind, !dbg !687 ; [debug line = 269:6]
  %tmp.24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str5), !dbg !687 ; [#uses=1 type=i32] [debug line = 269:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !689 ; [debug line = 271:1]
  %tmp.25 = zext i5 %i to i7                      ; [#uses=1 type=i7]
  %tmp.27.cast = trunc i5 %i to i4, !dbg !690     ; [#uses=7 type=i4] [debug line = 275:2]
  %tmp.26 = add i4 %tmp.27.cast, -4, !dbg !690    ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.28.cast = zext i4 %tmp.26 to i7, !dbg !690 ; [#uses=1 type=i7] [debug line = 275:2]
  %.new2 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %.new1, i32 512, i32 767), !dbg !690 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp.27 = shl nuw i7 %tmp.28.cast, 3            ; [#uses=2 type=i7]
  %tmp.30.cast = zext i7 %tmp.27 to i10           ; [#uses=1 type=i10]
  %tmp.28 = or i7 %tmp.27, 7                      ; [#uses=1 type=i7]
  %tmp.31.cast = zext i7 %tmp.28 to i10           ; [#uses=1 type=i10]
  %tmp.29 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.30.cast, i10 %tmp.31.cast), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.30 = shl i7 %tmp.25, 3                     ; [#uses=2 type=i7]
  %tmp.34.cast = zext i7 %tmp.30 to i10           ; [#uses=2 type=i10]
  %tmp.31 = or i7 %tmp.30, 7                      ; [#uses=1 type=i7]
  %tmp.35.cast = zext i7 %tmp.31 to i10           ; [#uses=2 type=i10]
  %tmp.32 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.34.cast, i10 %tmp.35.cast), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.33 = xor i8 %tmp.32, %tmp.29, !dbg !690    ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.34 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %.new2, i8 %tmp.33, i10 %tmp.34.cast, i10 %tmp.35.cast), !dbg !690 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp.35 = add i4 %tmp.27.cast, -3, !dbg !690    ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.40.cast = zext i4 %tmp.35 to i7, !dbg !690 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.36 = shl nuw i7 %tmp.40.cast, 3            ; [#uses=2 type=i7]
  %tmp.43.cast = zext i7 %tmp.36 to i10           ; [#uses=1 type=i10]
  %tmp.37 = or i7 %tmp.36, 7                      ; [#uses=1 type=i7]
  %tmp.44.cast = zext i7 %tmp.37 to i10           ; [#uses=1 type=i10]
  %tmp.38 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.34, i10 %tmp.43.cast, i10 %tmp.44.cast), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.40 = or i4 %tmp.27.cast, 1, !dbg !690      ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.55.cast = zext i4 %tmp.40 to i7, !dbg !690 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.41 = shl nuw i7 %tmp.55.cast, 3            ; [#uses=2 type=i7]
  %tmp.57.cast = zext i7 %tmp.41 to i10           ; [#uses=2 type=i10]
  %tmp.43 = or i7 %tmp.41, 7                      ; [#uses=1 type=i7]
  %tmp.58.cast = zext i7 %tmp.43 to i10           ; [#uses=2 type=i10]
  %tmp.44 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.34, i10 %tmp.57.cast, i10 %tmp.58.cast), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39 = xor i8 %tmp.44, %tmp.38, !dbg !690    ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.54 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.34, i8 %tmp.39, i10 %tmp.57.cast, i10 %tmp.58.cast), !dbg !690 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp.55 = add i4 %tmp.27.cast, -2, !dbg !690    ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.61.cast = zext i4 %tmp.55 to i7, !dbg !690 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.56 = shl nuw i7 %tmp.61.cast, 3            ; [#uses=2 type=i7]
  %tmp.63.cast = zext i7 %tmp.56 to i10           ; [#uses=1 type=i10]
  %tmp.57 = or i7 %tmp.56, 7                      ; [#uses=1 type=i7]
  %tmp.64.cast = zext i7 %tmp.57 to i10           ; [#uses=1 type=i10]
  %tmp.58 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.54, i10 %tmp.63.cast, i10 %tmp.64.cast), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.59 = or i4 %tmp.27.cast, 2, !dbg !690      ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.66.cast = zext i4 %tmp.59 to i7, !dbg !690 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.60 = shl nuw i7 %tmp.66.cast, 3            ; [#uses=2 type=i7]
  %tmp.68.cast = zext i7 %tmp.60 to i10           ; [#uses=2 type=i10]
  %tmp.61 = or i7 %tmp.60, 7                      ; [#uses=1 type=i7]
  %tmp.69.cast = zext i7 %tmp.61 to i10           ; [#uses=2 type=i10]
  %tmp.62 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.54, i10 %tmp.68.cast, i10 %tmp.69.cast), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42 = xor i8 %tmp.62, %tmp.58, !dbg !690    ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.63 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.54, i8 %tmp.42, i10 %tmp.68.cast, i10 %tmp.69.cast), !dbg !690 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp.64 = add i4 %tmp.27.cast, -1, !dbg !690    ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.72.cast = zext i4 %tmp.64 to i7, !dbg !690 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.65 = shl nuw i7 %tmp.72.cast, 3            ; [#uses=2 type=i7]
  %tmp.74.cast = zext i7 %tmp.65 to i10           ; [#uses=1 type=i10]
  %tmp.66 = or i7 %tmp.65, 7                      ; [#uses=1 type=i7]
  %tmp.75.cast = zext i7 %tmp.66 to i10           ; [#uses=1 type=i10]
  %tmp.67 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.63, i10 %tmp.74.cast, i10 %tmp.75.cast), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.68 = or i4 %tmp.27.cast, 3, !dbg !690      ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.77.cast = zext i4 %tmp.68 to i7, !dbg !690 ; [#uses=1 type=i7] [debug line = 275:2]
  %tmp.69 = shl nuw i7 %tmp.77.cast, 3            ; [#uses=2 type=i7]
  %tmp.79.cast = zext i7 %tmp.69 to i10           ; [#uses=2 type=i10]
  %tmp.70 = or i7 %tmp.69, 7                      ; [#uses=1 type=i7]
  %tmp.80.cast = zext i7 %tmp.70 to i10           ; [#uses=2 type=i10]
  %tmp.71 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.63, i10 %tmp.79.cast, i10 %tmp.80.cast), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45 = xor i8 %tmp.71, %tmp.67, !dbg !690    ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.72 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.63, i8 %tmp.45, i10 %tmp.79.cast, i10 %tmp.80.cast), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %gep17128130.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %.new1, i256 %tmp.72, i32 512, i32 767), !dbg !690 ; [#uses=1 type=i1024] [debug line = 275:2]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str5, i32 %tmp.24), !dbg !691 ; [#uses=0 type=i32] [debug line = 277:5]
  %i.3 = add i5 %i, 4, !dbg !692                  ; [#uses=1 type=i5] [debug line = 268:31]
  call void @llvm.dbg.value(metadata !{i5 %i.3}, i64 0, metadata !693), !dbg !692 ; [debug line = 268:31] [debug variable = i]
  br label %1, !dbg !692                          ; [debug line = 268:31]

; <label>:5                                       ; preds = %1
  %.new1.lcssa = phi i1024 [ %.new1, %1 ]         ; [#uses=10 type=i1024]
  %.new3 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %.new1.lcssa, i32 512, i32 767), !dbg !694 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp.73 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 608, i32 615), !dbg !694 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.46 = zext i8 %tmp.73 to i32, !dbg !694     ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.46, !dbg !694 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !694 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.74 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 640, i32 647), !dbg !694 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.47 = xor i8 %sbox.load.4, %tmp.74, !dbg !694 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.75 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %.new3, i8 %tmp.47, i32 128, i32 135), !dbg !694 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp.76 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 616, i32 623), !dbg !695 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.48 = zext i8 %tmp.76 to i32, !dbg !695     ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.48, !dbg !695 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !695 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.77 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 648, i32 655), !dbg !695 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.49 = xor i8 %sbox.load.5, %tmp.77, !dbg !695 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.78 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.75, i8 %tmp.49, i32 136, i32 143), !dbg !695 ; [#uses=1 type=i256] [debug line = 279:5]
  %tmp.79 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 624, i32 631), !dbg !696 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.50 = zext i8 %tmp.79 to i32, !dbg !696     ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.50, !dbg !696 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !696 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.80 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 656, i32 663), !dbg !696 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.51 = xor i8 %sbox.load.6, %tmp.80, !dbg !696 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.81 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.78, i8 %tmp.51, i32 144, i32 151), !dbg !696 ; [#uses=1 type=i256] [debug line = 280:5]
  %tmp.82 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 632, i32 639), !dbg !697 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.52 = zext i8 %tmp.82 to i32, !dbg !697     ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.52, !dbg !697 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !697 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.83 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %.new1.lcssa, i32 664, i32 671), !dbg !697 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.53 = xor i8 %sbox.load.7, %tmp.83, !dbg !697 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.84 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.81, i8 %tmp.53, i32 152, i32 159), !dbg !697 ; [#uses=1 type=i256] [debug line = 281:5]
  %gep96870.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %.new1.lcssa, i256 %tmp.84, i32 512, i32 767), !dbg !697 ; [#uses=2 type=i1024] [debug line = 281:5]
  store i1024 %gep96870.part_set, i1024* %k, align 4, !dbg !697 ; [debug line = 281:5]
  br label %6, !dbg !698                          ; [debug line = 283:16]

; <label>:6                                       ; preds = %9, %5
  %gep = phi i1024 [ %gep96870.part_set, %5 ], [ %gep11011.part_set.1, %9 ] ; [#uses=3 type=i1024]
  %i.1 = phi i6 [ 20, %5 ], [ %i.9.1, %9 ]        ; [#uses=6 type=i6]
  %7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %tmp.85 = icmp sgt i6 %i.1, -1, !dbg !698       ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp.85, label %8, label %10, !dbg !698   ; [debug line = 283:16]

; <label>:8                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str6) nounwind, !dbg !700 ; [debug line = 284:6]
  %tmp.95.cast = trunc i6 %i.1 to i5, !dbg !702   ; [#uses=7 type=i5] [debug line = 290:2]
  %tmp.86 = add i5 %tmp.95.cast, -4, !dbg !702    ; [#uses=1 type=i5] [debug line = 290:2]
  %.new4 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 512, i32 767), !dbg !702 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.97.cast = zext i5 %tmp.86 to i8            ; [#uses=1 type=i8]
  %tmp.87 = shl nuw i8 %tmp.97.cast, 3            ; [#uses=2 type=i8]
  %tmp.98.cast = zext i8 %tmp.87 to i10           ; [#uses=1 type=i10]
  %tmp.88 = or i8 %tmp.87, 7                      ; [#uses=1 type=i8]
  %tmp.99.cast = zext i8 %tmp.88 to i10           ; [#uses=1 type=i10]
  %tmp.89 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new4, i10 %tmp.98.cast, i10 %tmp.99.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.101.cast = zext i6 %i.1 to i8              ; [#uses=1 type=i8]
  %tmp.90 = shl i8 %tmp.101.cast, 3               ; [#uses=2 type=i8]
  %tmp.102.cast = zext i8 %tmp.90 to i10          ; [#uses=3 type=i10]
  %tmp.91 = or i8 %tmp.90, 7                      ; [#uses=1 type=i8]
  %tmp.103.cast = zext i8 %tmp.91 to i10          ; [#uses=3 type=i10]
  %tmp.92 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new4, i10 %tmp.102.cast, i10 %tmp.103.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.93 = xor i8 %tmp.92, %tmp.89, !dbg !702    ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.94 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %.new4, i8 %tmp.93, i10 %tmp.102.cast, i10 %tmp.103.cast), !dbg !702 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.95 = add i5 %tmp.95.cast, -3, !dbg !702    ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.107.cast = zext i5 %tmp.95 to i8           ; [#uses=1 type=i8]
  %tmp.96 = shl nuw i8 %tmp.107.cast, 3           ; [#uses=2 type=i8]
  %tmp.108.cast = zext i8 %tmp.96 to i10          ; [#uses=1 type=i10]
  %tmp.97 = or i8 %tmp.96, 7                      ; [#uses=1 type=i8]
  %tmp.109.cast = zext i8 %tmp.97 to i10          ; [#uses=1 type=i10]
  %tmp.98 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.94, i10 %tmp.108.cast, i10 %tmp.109.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.99 = or i5 %tmp.95.cast, 1, !dbg !702      ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.112.cast = zext i5 %tmp.99 to i8           ; [#uses=1 type=i8]
  %tmp.100 = shl nuw i8 %tmp.112.cast, 3          ; [#uses=2 type=i8]
  %tmp.113.cast = zext i8 %tmp.100 to i10         ; [#uses=3 type=i10]
  %tmp.101 = or i8 %tmp.100, 7                    ; [#uses=1 type=i8]
  %tmp.114.cast = zext i8 %tmp.101 to i10         ; [#uses=3 type=i10]
  %tmp.102 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.94, i10 %tmp.113.cast, i10 %tmp.114.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.103 = xor i8 %tmp.102, %tmp.98, !dbg !702  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.104 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.94, i8 %tmp.103, i10 %tmp.113.cast, i10 %tmp.114.cast), !dbg !702 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.105 = add i5 %tmp.95.cast, -2, !dbg !702   ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.118.cast = zext i5 %tmp.105 to i8          ; [#uses=1 type=i8]
  %tmp.106 = shl nuw i8 %tmp.118.cast, 3          ; [#uses=2 type=i8]
  %tmp.119.cast = zext i8 %tmp.106 to i10         ; [#uses=1 type=i10]
  %tmp.107 = or i8 %tmp.106, 7                    ; [#uses=1 type=i8]
  %tmp.120.cast = zext i8 %tmp.107 to i10         ; [#uses=1 type=i10]
  %tmp.108 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.104, i10 %tmp.119.cast, i10 %tmp.120.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.109 = or i5 %tmp.95.cast, 2, !dbg !702     ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.123.cast = zext i5 %tmp.109 to i8          ; [#uses=1 type=i8]
  %tmp.110 = shl nuw i8 %tmp.123.cast, 3          ; [#uses=2 type=i8]
  %tmp.124.cast = zext i8 %tmp.110 to i10         ; [#uses=3 type=i10]
  %tmp.111 = or i8 %tmp.110, 7                    ; [#uses=1 type=i8]
  %tmp.125.cast = zext i8 %tmp.111 to i10         ; [#uses=3 type=i10]
  %tmp.112 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.104, i10 %tmp.124.cast, i10 %tmp.125.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.113 = xor i8 %tmp.112, %tmp.108, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.114 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.104, i8 %tmp.113, i10 %tmp.124.cast, i10 %tmp.125.cast), !dbg !702 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.115 = add i5 %tmp.95.cast, -1, !dbg !702   ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.129.cast = zext i5 %tmp.115 to i8          ; [#uses=1 type=i8]
  %tmp.116 = shl nuw i8 %tmp.129.cast, 3          ; [#uses=2 type=i8]
  %tmp.130.cast = zext i8 %tmp.116 to i10         ; [#uses=1 type=i10]
  %tmp.117 = or i8 %tmp.116, 7                    ; [#uses=1 type=i8]
  %tmp.131.cast = zext i8 %tmp.117 to i10         ; [#uses=1 type=i10]
  %tmp.118 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.114, i10 %tmp.130.cast, i10 %tmp.131.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.119 = or i5 %tmp.95.cast, 3, !dbg !702     ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.134.cast = zext i5 %tmp.119 to i8          ; [#uses=1 type=i8]
  %tmp.120 = shl nuw i8 %tmp.134.cast, 3          ; [#uses=2 type=i8]
  %tmp.135.cast = zext i8 %tmp.120 to i10         ; [#uses=3 type=i10]
  %tmp.121 = or i8 %tmp.120, 7                    ; [#uses=1 type=i8]
  %tmp.136.cast = zext i8 %tmp.121 to i10         ; [#uses=3 type=i10]
  %tmp.122 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.114, i10 %tmp.135.cast, i10 %tmp.136.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.123 = xor i8 %tmp.122, %tmp.118, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.124 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.114, i8 %tmp.123, i10 %tmp.135.cast, i10 %tmp.136.cast), !dbg !702 ; [#uses=4 type=i256] [debug line = 290:2]
  %gep11011.part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp.124, i32 512, i32 767), !dbg !702 ; [#uses=1 type=i1024] [debug line = 290:2]
  store i1024 %gep11011.part_set, i1024* %k, align 4, !dbg !702 ; [debug line = 290:2]
  %i.9 = add i6 %i.1, 4, !dbg !703                ; [#uses=1 type=i6] [debug line = 283:32]
  %tmp.54.1 = icmp sgt i6 %i.9, -1, !dbg !698     ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp.54.1, label %9, label %10, !dbg !698 ; [debug line = 283:16]

; <label>:9                                       ; preds = %8
  %tmp.125 = add i6 %i.1, 4                       ; [#uses=4 type=i6]
  %tmp.126 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.124, i10 %tmp.102.cast, i10 %tmp.103.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.141.cast = zext i6 %tmp.125 to i9          ; [#uses=1 type=i9]
  %tmp.127 = shl nuw i9 %tmp.141.cast, 3          ; [#uses=2 type=i9]
  %tmp.142.cast = zext i9 %tmp.127 to i10         ; [#uses=2 type=i10]
  %tmp.128 = or i9 %tmp.127, 7                    ; [#uses=1 type=i9]
  %tmp.143.cast = zext i9 %tmp.128 to i10         ; [#uses=2 type=i10]
  %tmp.129 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.124, i10 %tmp.142.cast, i10 %tmp.143.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.57.1 = xor i8 %tmp.129, %tmp.126, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.130 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.124, i8 %tmp.57.1, i10 %tmp.142.cast, i10 %tmp.143.cast), !dbg !702 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.131 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.130, i10 %tmp.113.cast, i10 %tmp.114.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.132 = or i6 %tmp.125, 1, !dbg !702         ; [#uses=1 type=i6] [debug line = 290:2]
  %tmp.148.cast = zext i6 %tmp.132 to i9          ; [#uses=1 type=i9]
  %tmp.133 = shl nuw i9 %tmp.148.cast, 3          ; [#uses=2 type=i9]
  %tmp.149.cast = zext i9 %tmp.133 to i10         ; [#uses=2 type=i10]
  %tmp.134 = or i9 %tmp.133, 7                    ; [#uses=1 type=i9]
  %tmp.150.cast = zext i9 %tmp.134 to i10         ; [#uses=2 type=i10]
  %tmp.135 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.130, i10 %tmp.149.cast, i10 %tmp.150.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.60.1 = xor i8 %tmp.135, %tmp.131, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.136 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.130, i8 %tmp.60.1, i10 %tmp.149.cast, i10 %tmp.150.cast), !dbg !702 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.137 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.136, i10 %tmp.124.cast, i10 %tmp.125.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.138 = or i6 %tmp.125, 2, !dbg !702         ; [#uses=1 type=i6] [debug line = 290:2]
  %tmp.155.cast = zext i6 %tmp.138 to i9          ; [#uses=1 type=i9]
  %tmp.139 = shl nuw i9 %tmp.155.cast, 3          ; [#uses=2 type=i9]
  %tmp.156.cast = zext i9 %tmp.139 to i10         ; [#uses=2 type=i10]
  %tmp.140 = or i9 %tmp.139, 7                    ; [#uses=1 type=i9]
  %tmp.157.cast = zext i9 %tmp.140 to i10         ; [#uses=2 type=i10]
  %tmp.141 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.136, i10 %tmp.156.cast, i10 %tmp.157.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.63.1 = xor i8 %tmp.141, %tmp.137, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.142 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.136, i8 %tmp.63.1, i10 %tmp.156.cast, i10 %tmp.157.cast), !dbg !702 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp.143 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.142, i10 %tmp.135.cast, i10 %tmp.136.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.144 = or i6 %tmp.125, 3, !dbg !702         ; [#uses=1 type=i6] [debug line = 290:2]
  %tmp.162.cast = zext i6 %tmp.144 to i9          ; [#uses=1 type=i9]
  %tmp.145 = shl nuw i9 %tmp.162.cast, 3          ; [#uses=2 type=i9]
  %tmp.163.cast = zext i9 %tmp.145 to i10         ; [#uses=2 type=i10]
  %tmp.146 = or i9 %tmp.145, 7                    ; [#uses=1 type=i9]
  %tmp.164.cast = zext i9 %tmp.146 to i10         ; [#uses=2 type=i10]
  %tmp.147 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %tmp.142, i10 %tmp.163.cast, i10 %tmp.164.cast), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.66.1 = xor i8 %tmp.147, %tmp.143, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.148 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.142, i8 %tmp.66.1, i10 %tmp.163.cast, i10 %tmp.164.cast), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %gep11011.part_set.1 = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp.148, i32 512, i32 767), !dbg !702 ; [#uses=2 type=i1024] [debug line = 290:2]
  store i1024 %gep11011.part_set.1, i1024* %k, align 4, !dbg !702 ; [debug line = 290:2]
  %i.9.1 = add i6 %i.1, 8, !dbg !703              ; [#uses=1 type=i6] [debug line = 283:32]
  br label %6, !dbg !703                          ; [debug line = 283:32]

; <label>:10                                      ; preds = %8, %6
  ret i8 %tmp.22, !dbg !704                       ; [debug line = 294:1]
}

; [#uses=2]
define internal fastcc i8 @aes_expandEncKey(i1024* %k, i8 %rc.read) {
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{i1024* %k}, i64 0, metadata !671), !dbg !676 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !677), !dbg !678 ; [debug line = 258:44] [debug variable = rc]
  %k.load = load i1024* %k, align 4, !dbg !679    ; [#uses=34 type=i1024] [debug line = 262:5]
  %.new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %k.load, i32 0, i32 255), !dbg !679 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp. = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 232, i32 239), !dbg !679 ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp = zext i8 %tmp. to i32, !dbg !679          ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !679 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !679 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.149 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 0, i32 7), !dbg !679 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %tmp.149, %rc.read, !dbg !679    ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.22 = xor i8 %tmp1, %sbox.load, !dbg !679   ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp.150 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %.new, i8 %tmp.22, i32 0, i32 7), !dbg !679 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp.151 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 240, i32 247), !dbg !681 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp.23 = zext i8 %tmp.151 to i32, !dbg !681    ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.23, !dbg !681 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !681 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.152 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 8, i32 15), !dbg !681 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.24 = xor i8 %sbox.load.1, %tmp.152, !dbg !681 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp.153 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.150, i8 %tmp.24, i32 8, i32 15), !dbg !681 ; [#uses=1 type=i256] [debug line = 263:5]
  %tmp.154 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 248, i32 255), !dbg !682 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp.25 = zext i8 %tmp.154 to i32, !dbg !682    ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.25, !dbg !682 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !682 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.155 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 16, i32 23), !dbg !682 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.26 = xor i8 %sbox.load.2, %tmp.155, !dbg !682 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp.156 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.153, i8 %tmp.26, i32 16, i32 23), !dbg !682 ; [#uses=1 type=i256] [debug line = 264:5]
  %tmp.157 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 224, i32 231), !dbg !683 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp.27 = zext i8 %tmp.157 to i32, !dbg !683    ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.27, !dbg !683 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !683 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.158 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 24, i32 31), !dbg !683 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.28 = xor i8 %sbox.load.3, %tmp.158, !dbg !683 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp.159 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.156, i8 %tmp.28, i32 24, i32 31), !dbg !683 ; [#uses=1 type=i256] [debug line = 265:5]
  %tmp.29 = shl i8 %rc.read, 1, !dbg !684         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.160 = lshr i8 %rc.read, 7, !dbg !684       ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.161 = trunc i8 %tmp.160 to i1, !dbg !684   ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp.31.cast = select i1 %tmp.161, i8 27, i8 0  ; [#uses=1 type=i8]
  %tmp.32 = xor i8 %tmp.31.cast, %tmp.29, !dbg !684 ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.162 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 32, i32 39), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36 = xor i8 %tmp.162, %tmp.22, !dbg !690   ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.163 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.159, i8 %tmp.36, i10 32, i10 39), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.164 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 40, i32 47), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39 = xor i8 %tmp.164, %tmp.24, !dbg !690   ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.165 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.163, i8 %tmp.39, i10 40, i10 47), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.166 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 48, i32 55), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42 = xor i8 %tmp.166, %tmp.26, !dbg !690   ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.167 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.165, i8 %tmp.42, i10 48, i10 55), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.168 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 56, i32 63), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45 = xor i8 %tmp.168, %tmp.28, !dbg !690   ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.169 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.167, i8 %tmp.45, i10 56, i10 63), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.170 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 64, i32 71), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36.1 = xor i8 %tmp.170, %tmp.36, !dbg !690 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.171 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.169, i8 %tmp.36.1, i10 64, i10 71), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.172 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 72, i32 79), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39.1 = xor i8 %tmp.172, %tmp.39, !dbg !690 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.173 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.171, i8 %tmp.39.1, i10 72, i10 79), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.174 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 80, i32 87), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42.1 = xor i8 %tmp.174, %tmp.42, !dbg !690 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.175 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.173, i8 %tmp.42.1, i10 80, i10 87), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.176 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 88, i32 95), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45.1 = xor i8 %tmp.176, %tmp.45, !dbg !690 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.177 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.175, i8 %tmp.45.1, i10 88, i10 95), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.178 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 96, i32 103), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36.2 = xor i8 %tmp.178, %tmp.36.1, !dbg !690 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.179 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.177, i8 %tmp.36.2, i10 96, i10 103), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.180 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 104, i32 111), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39.2 = xor i8 %tmp.180, %tmp.39.1, !dbg !690 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.181 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.179, i8 %tmp.39.2, i10 104, i10 111), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.182 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 112, i32 119), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42.2 = xor i8 %tmp.182, %tmp.42.1, !dbg !690 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.183 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.181, i8 %tmp.42.2, i10 112, i10 119), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.184 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 120, i32 127), !dbg !690 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45.2 = xor i8 %tmp.184, %tmp.45.1, !dbg !690 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp.185 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.183, i8 %tmp.45.2, i10 120, i10 127), !dbg !690 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp.46 = zext i8 %tmp.36.2 to i32, !dbg !694   ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.46, !dbg !694 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !694 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.186 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 128, i32 135), !dbg !694 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.47 = xor i8 %sbox.load.4, %tmp.186, !dbg !694 ; [#uses=2 type=i8] [debug line = 278:5]
  %tmp.187 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.185, i8 %tmp.47, i32 128, i32 135), !dbg !694 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp.48 = zext i8 %tmp.39.2 to i32, !dbg !695   ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.48, !dbg !695 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !695 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.188 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 136, i32 143), !dbg !695 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.49 = xor i8 %sbox.load.5, %tmp.188, !dbg !695 ; [#uses=2 type=i8] [debug line = 279:5]
  %tmp.189 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.187, i8 %tmp.49, i32 136, i32 143), !dbg !695 ; [#uses=1 type=i256] [debug line = 279:5]
  %tmp.50 = zext i8 %tmp.42.2 to i32, !dbg !696   ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.50, !dbg !696 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !696 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.190 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 144, i32 151), !dbg !696 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.51 = xor i8 %sbox.load.6, %tmp.190, !dbg !696 ; [#uses=2 type=i8] [debug line = 280:5]
  %tmp.191 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.189, i8 %tmp.51, i32 144, i32 151), !dbg !696 ; [#uses=1 type=i256] [debug line = 280:5]
  %tmp.52 = zext i8 %tmp.45.2 to i32, !dbg !697   ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.52, !dbg !697 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !697 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.192 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 152, i32 159), !dbg !697 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.53 = xor i8 %sbox.load.7, %tmp.192, !dbg !697 ; [#uses=2 type=i8] [debug line = 281:5]
  %tmp.193 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp.191, i8 %tmp.53, i32 152, i32 159), !dbg !697 ; [#uses=1 type=i256] [debug line = 281:5]
  %tmp.194 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 160, i32 167), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.57 = xor i8 %tmp.194, %tmp.47, !dbg !702   ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.195 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.193, i8 %tmp.57, i10 160, i10 167), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.196 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 168, i32 175), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.60 = xor i8 %tmp.196, %tmp.49, !dbg !702   ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.197 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.195, i8 %tmp.60, i10 168, i10 175), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.198 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 176, i32 183), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.63 = xor i8 %tmp.198, %tmp.51, !dbg !702   ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.199 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.197, i8 %tmp.63, i10 176, i10 183), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.200 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 184, i32 191), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.66 = xor i8 %tmp.200, %tmp.53, !dbg !702   ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.201 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.199, i8 %tmp.66, i10 184, i10 191), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.202 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 192, i32 199), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.57.1 = xor i8 %tmp.202, %tmp.57, !dbg !702 ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.203 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.201, i8 %tmp.57.1, i10 192, i10 199), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.204 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 200, i32 207), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.60.1 = xor i8 %tmp.204, %tmp.60, !dbg !702 ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.205 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.203, i8 %tmp.60.1, i10 200, i10 207), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.206 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 208, i32 215), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.63.1 = xor i8 %tmp.206, %tmp.63, !dbg !702 ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.207 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.205, i8 %tmp.63.1, i10 208, i10 215), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.208 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k.load, i32 216, i32 223), !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.66.1 = xor i8 %tmp.208, %tmp.66, !dbg !702 ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp.209 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.207, i8 %tmp.66.1, i10 216, i10 223), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.57.2 = xor i8 %tmp.157, %tmp.57.1, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.210 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.209, i8 %tmp.57.2, i10 224, i10 231), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.60.2 = xor i8 %tmp., %tmp.60.1, !dbg !702  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.211 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.210, i8 %tmp.60.2, i10 232, i10 239), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.63.2 = xor i8 %tmp.151, %tmp.63.1, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.212 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.211, i8 %tmp.63.2, i10 240, i10 247), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp.66.2 = xor i8 %tmp.154, %tmp.66.1, !dbg !702 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.213 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.212, i8 %tmp.66.2, i10 248, i10 255), !dbg !702 ; [#uses=1 type=i256] [debug line = 290:2]
  %gep11011.part_set.2 = call i1024 @llvm.part.set.i1024.i256(i1024 %k.load, i256 %tmp.213, i32 0, i32 255), !dbg !702 ; [#uses=1 type=i1024] [debug line = 290:2]
  store i1024 %gep11011.part_set.2, i1024* %k, align 4, !dbg !702 ; [debug line = 290:2]
  ret i8 %tmp.32, !dbg !704                       ; [debug line = 294:1]
}

; [#uses=1]
define internal fastcc void @aes_addRoundKey_cpy([16 x i8]* %buf, i1024* %ctx) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !705), !dbg !709 ; [debug line = 210:35] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i1024* %ctx}, i64 0, metadata !710), !dbg !713 ; [debug line = 210:49] [debug variable = ctx]
  br label %1, !dbg !714                          ; [debug line = 214:13]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.10.8, %3 ]        ; [#uses=27 type=i5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %i. = add i5 %i, -1, !dbg !714                  ; [#uses=1 type=i5] [debug line = 214:13]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str3) nounwind, !dbg !716 ; [debug line = 215:6]
  %tmp. = zext i5 %i. to i32, !dbg !718           ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp = trunc i5 %i to i4                        ; [#uses=1 type=i4]
  %ctx.load = load i1024* %ctx, align 4, !dbg !718 ; [#uses=6 type=i1024] [debug line = 221:2]
  %.new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx.load, i32 256, i32 511), !dbg !718 ; [#uses=18 type=i256] [debug line = 221:2]
  %tmp.214 = add i4 %tmp, -1                      ; [#uses=1 type=i4]
  %tmp.215 = zext i4 %tmp.214 to i7               ; [#uses=1 type=i7]
  %tmp.216 = shl nuw i7 %tmp.215, 3               ; [#uses=2 type=i7]
  %tmp.235.cast = zext i7 %tmp.216 to i10         ; [#uses=2 type=i10]
  %tmp.217 = or i7 %tmp.216, 7                    ; [#uses=1 type=i7]
  %tmp.236.cast = zext i7 %tmp.217 to i10         ; [#uses=2 type=i10]
  %tmp.218 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.235.cast, i10 %tmp.236.cast), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %.new5 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx.load, i32 0, i32 255), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp.219 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %.new5, i8 %tmp.218, i10 %tmp.235.cast, i10 %tmp.236.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67 = xor i8 %buf.load, %tmp.218, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67, i8* %buf.addr, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.220 = add i5 %i, 15, !dbg !718             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.240.cast = zext i5 %tmp.220 to i8          ; [#uses=1 type=i8]
  %tmp.221 = shl nuw i8 %tmp.240.cast, 3          ; [#uses=2 type=i8]
  %tmp.241.cast = zext i8 %tmp.221 to i10         ; [#uses=2 type=i10]
  %tmp.222 = or i8 %tmp.221, 7                    ; [#uses=1 type=i8]
  %tmp.242.cast = zext i8 %tmp.222 to i10         ; [#uses=2 type=i10]
  %tmp.223 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.241.cast, i10 %tmp.242.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.224 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.219, i8 %tmp.223, i10 %tmp.241.cast, i10 %tmp.242.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %i.10.1 = add i5 %i, -2, !dbg !714              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp..1 = zext i5 %i.10.1 to i32, !dbg !718     ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.12 = trunc i5 %i to i4                     ; [#uses=1 type=i4]
  %tmp.225 = add i4 %tmp.12, -2                   ; [#uses=1 type=i4]
  %tmp.226 = zext i4 %tmp.225 to i7               ; [#uses=1 type=i7]
  %tmp.227 = shl nuw i7 %tmp.226, 3               ; [#uses=2 type=i7]
  %tmp.247.cast = zext i7 %tmp.227 to i10         ; [#uses=2 type=i10]
  %tmp.228 = or i7 %tmp.227, 7                    ; [#uses=1 type=i7]
  %tmp.248.cast = zext i7 %tmp.228 to i10         ; [#uses=2 type=i10]
  %tmp.229 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.247.cast, i10 %tmp.248.cast), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp.230 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.224, i8 %tmp.229, i10 %tmp.247.cast, i10 %tmp.248.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr.41 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..1, !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.1 = load i8* %buf.addr.41, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.1 = xor i8 %buf.load.1, %tmp.229, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.1, i8* %buf.addr.41, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.231 = add i5 %i, 14, !dbg !718             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.252.cast = zext i5 %tmp.231 to i8          ; [#uses=1 type=i8]
  %tmp.232 = shl nuw i8 %tmp.252.cast, 3          ; [#uses=2 type=i8]
  %tmp.253.cast = zext i8 %tmp.232 to i10         ; [#uses=2 type=i10]
  %tmp.233 = or i8 %tmp.232, 7                    ; [#uses=1 type=i8]
  %tmp.254.cast = zext i8 %tmp.233 to i10         ; [#uses=2 type=i10]
  %tmp.234 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.253.cast, i10 %tmp.254.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.235 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.230, i8 %tmp.234, i10 %tmp.253.cast, i10 %tmp.254.cast), !dbg !718 ; [#uses=2 type=i256] [debug line = 221:2]
  %gep21112.part_set.1 = call i1024 @llvm.part.set.i1024.i256(i1024 %ctx.load, i256 %tmp.235, i32 0, i32 255), !dbg !718 ; [#uses=1 type=i1024] [debug line = 221:2]
  store i1024 %gep21112.part_set.1, i1024* %ctx, align 4, !dbg !718 ; [debug line = 221:2]
  %i.10.2 = add i5 %i, -3, !dbg !714              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp..2 = zext i5 %i.10.2 to i32, !dbg !718     ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.13 = trunc i5 %i to i4                     ; [#uses=1 type=i4]
  %tmp.236 = add i4 %tmp.13, -3                   ; [#uses=1 type=i4]
  %tmp.237 = zext i4 %tmp.236 to i7               ; [#uses=1 type=i7]
  %tmp.238 = shl nuw i7 %tmp.237, 3               ; [#uses=2 type=i7]
  %tmp.259.cast = zext i7 %tmp.238 to i10         ; [#uses=2 type=i10]
  %tmp.239 = or i7 %tmp.238, 7                    ; [#uses=1 type=i7]
  %tmp.260.cast = zext i7 %tmp.239 to i10         ; [#uses=2 type=i10]
  %tmp.240 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.259.cast, i10 %tmp.260.cast), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp.241 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.235, i8 %tmp.240, i10 %tmp.259.cast, i10 %tmp.260.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr.42 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..2, !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.2 = load i8* %buf.addr.42, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.2 = xor i8 %buf.load.2, %tmp.240, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.2, i8* %buf.addr.42, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.242 = add i5 %i, 13, !dbg !718             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.264.cast = zext i5 %tmp.242 to i8          ; [#uses=1 type=i8]
  %tmp.243 = shl nuw i8 %tmp.264.cast, 3          ; [#uses=2 type=i8]
  %tmp.265.cast = zext i8 %tmp.243 to i10         ; [#uses=2 type=i10]
  %tmp.244 = or i8 %tmp.243, 7                    ; [#uses=1 type=i8]
  %tmp.266.cast = zext i8 %tmp.244 to i10         ; [#uses=2 type=i10]
  %tmp.245 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.265.cast, i10 %tmp.266.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.246 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.241, i8 %tmp.245, i10 %tmp.265.cast, i10 %tmp.266.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %i.10.3 = add i5 %i, -4, !dbg !714              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp..3 = zext i5 %i.10.3 to i32, !dbg !718     ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.14 = trunc i5 %i to i4                     ; [#uses=1 type=i4]
  %tmp.247 = add i4 %tmp.14, -4                   ; [#uses=1 type=i4]
  %tmp.248 = zext i4 %tmp.247 to i7               ; [#uses=1 type=i7]
  %tmp.249 = shl nuw i7 %tmp.248, 3               ; [#uses=2 type=i7]
  %tmp.271.cast = zext i7 %tmp.249 to i10         ; [#uses=2 type=i10]
  %tmp.250 = or i7 %tmp.249, 7                    ; [#uses=1 type=i7]
  %tmp.272.cast = zext i7 %tmp.250 to i10         ; [#uses=2 type=i10]
  %tmp.251 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.271.cast, i10 %tmp.272.cast), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp.252 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.246, i8 %tmp.251, i10 %tmp.271.cast, i10 %tmp.272.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr.43 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..3, !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.3 = load i8* %buf.addr.43, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.3 = xor i8 %buf.load.3, %tmp.251, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.3, i8* %buf.addr.43, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.253 = add i5 %i, 12, !dbg !718             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.276.cast = zext i5 %tmp.253 to i8          ; [#uses=1 type=i8]
  %tmp.254 = shl nuw i8 %tmp.276.cast, 3          ; [#uses=2 type=i8]
  %tmp.277.cast = zext i8 %tmp.254 to i10         ; [#uses=2 type=i10]
  %tmp.255 = or i8 %tmp.254, 7                    ; [#uses=1 type=i8]
  %tmp.278.cast = zext i8 %tmp.255 to i10         ; [#uses=2 type=i10]
  %tmp.256 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.277.cast, i10 %tmp.278.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.257 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.252, i8 %tmp.256, i10 %tmp.277.cast, i10 %tmp.278.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %i.10.4 = add i5 %i, -5, !dbg !714              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp..4 = zext i5 %i.10.4 to i32, !dbg !718     ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.15 = trunc i5 %i to i4                     ; [#uses=1 type=i4]
  %tmp.258 = add i4 %tmp.15, -5                   ; [#uses=1 type=i4]
  %tmp.259 = zext i4 %tmp.258 to i7               ; [#uses=1 type=i7]
  %tmp.260 = shl nuw i7 %tmp.259, 3               ; [#uses=2 type=i7]
  %tmp.283.cast = zext i7 %tmp.260 to i10         ; [#uses=2 type=i10]
  %tmp.261 = or i7 %tmp.260, 7                    ; [#uses=1 type=i7]
  %tmp.284.cast = zext i7 %tmp.261 to i10         ; [#uses=2 type=i10]
  %tmp.262 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.283.cast, i10 %tmp.284.cast), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp.263 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.257, i8 %tmp.262, i10 %tmp.283.cast, i10 %tmp.284.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr.44 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..4, !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.4 = load i8* %buf.addr.44, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.4 = xor i8 %buf.load.4, %tmp.262, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.4, i8* %buf.addr.44, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.264 = add i5 %i, 11, !dbg !718             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.288.cast = zext i5 %tmp.264 to i8          ; [#uses=1 type=i8]
  %tmp.265 = shl nuw i8 %tmp.288.cast, 3          ; [#uses=2 type=i8]
  %tmp.289.cast = zext i8 %tmp.265 to i10         ; [#uses=2 type=i10]
  %tmp.266 = or i8 %tmp.265, 7                    ; [#uses=1 type=i8]
  %tmp.290.cast = zext i8 %tmp.266 to i10         ; [#uses=2 type=i10]
  %tmp.267 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.289.cast, i10 %tmp.290.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.268 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.263, i8 %tmp.267, i10 %tmp.289.cast, i10 %tmp.290.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %i.10.5 = add i5 %i, -6, !dbg !714              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp..5 = zext i5 %i.10.5 to i32, !dbg !718     ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.16 = trunc i5 %i to i4                     ; [#uses=1 type=i4]
  %tmp.269 = add i4 %tmp.16, -6                   ; [#uses=1 type=i4]
  %tmp.270 = zext i4 %tmp.269 to i7               ; [#uses=1 type=i7]
  %tmp.271 = shl nuw i7 %tmp.270, 3               ; [#uses=2 type=i7]
  %tmp.295.cast = zext i7 %tmp.271 to i10         ; [#uses=2 type=i10]
  %tmp.272 = or i7 %tmp.271, 7                    ; [#uses=1 type=i7]
  %tmp.296.cast = zext i7 %tmp.272 to i10         ; [#uses=2 type=i10]
  %tmp.273 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.295.cast, i10 %tmp.296.cast), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp.274 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.268, i8 %tmp.273, i10 %tmp.295.cast, i10 %tmp.296.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr.45 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..5, !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.5 = load i8* %buf.addr.45, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.5 = xor i8 %buf.load.5, %tmp.273, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.5, i8* %buf.addr.45, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.275 = add i5 %i, 10, !dbg !718             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.300.cast = zext i5 %tmp.275 to i8          ; [#uses=1 type=i8]
  %tmp.276 = shl nuw i8 %tmp.300.cast, 3          ; [#uses=2 type=i8]
  %tmp.301.cast = zext i8 %tmp.276 to i10         ; [#uses=2 type=i10]
  %tmp.277 = or i8 %tmp.276, 7                    ; [#uses=1 type=i8]
  %tmp.302.cast = zext i8 %tmp.277 to i10         ; [#uses=2 type=i10]
  %tmp.278 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.301.cast, i10 %tmp.302.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.279 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.274, i8 %tmp.278, i10 %tmp.301.cast, i10 %tmp.302.cast), !dbg !718 ; [#uses=2 type=i256] [debug line = 221:2]
  %gep21112.part_set.5 = call i1024 @llvm.part.set.i1024.i256(i1024 %ctx.load, i256 %tmp.279, i32 0, i32 255), !dbg !718 ; [#uses=1 type=i1024] [debug line = 221:2]
  store i1024 %gep21112.part_set.5, i1024* %ctx, align 4, !dbg !718 ; [debug line = 221:2]
  %i.10.6 = add i5 %i, -7, !dbg !714              ; [#uses=2 type=i5] [debug line = 214:13]
  %tmp..6 = zext i5 %i.10.6 to i32, !dbg !718     ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.17 = trunc i5 %i to i4                     ; [#uses=1 type=i4]
  %tmp.280 = add i4 %tmp.17, -7                   ; [#uses=1 type=i4]
  %tmp.281 = zext i4 %tmp.280 to i7               ; [#uses=1 type=i7]
  %tmp.282 = shl nuw i7 %tmp.281, 3               ; [#uses=2 type=i7]
  %tmp.307.cast = zext i7 %tmp.282 to i10         ; [#uses=2 type=i10]
  %tmp.283 = or i7 %tmp.282, 7                    ; [#uses=1 type=i7]
  %tmp.308.cast = zext i7 %tmp.283 to i10         ; [#uses=2 type=i10]
  %tmp.284 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.307.cast, i10 %tmp.308.cast), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp.285 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.279, i8 %tmp.284, i10 %tmp.307.cast, i10 %tmp.308.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr.46 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..6, !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.6 = load i8* %buf.addr.46, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.6 = xor i8 %buf.load.6, %tmp.284, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.6, i8* %buf.addr.46, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.286 = add i5 %i, 9, !dbg !718              ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.312.cast = zext i5 %tmp.286 to i8          ; [#uses=1 type=i8]
  %tmp.287 = shl nuw i8 %tmp.312.cast, 3          ; [#uses=2 type=i8]
  %tmp.313.cast = zext i8 %tmp.287 to i10         ; [#uses=2 type=i10]
  %tmp.288 = or i8 %tmp.287, 7                    ; [#uses=1 type=i8]
  %tmp.314.cast = zext i8 %tmp.288 to i10         ; [#uses=2 type=i10]
  %tmp.289 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.313.cast, i10 %tmp.314.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.290 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.285, i8 %tmp.289, i10 %tmp.313.cast, i10 %tmp.314.cast), !dbg !718 ; [#uses=2 type=i256] [debug line = 221:2]
  %gep21112.part_set.6 = call i1024 @llvm.part.set.i1024.i256(i1024 %ctx.load, i256 %tmp.290, i32 0, i32 255), !dbg !718 ; [#uses=1 type=i1024] [debug line = 221:2]
  store i1024 %gep21112.part_set.6, i1024* %ctx, align 4, !dbg !718 ; [debug line = 221:2]
  %i.10.7 = add i5 %i, -8, !dbg !714              ; [#uses=1 type=i5] [debug line = 214:13]
  %i.10.7.cast = sext i5 %i.10.7 to i8, !dbg !714 ; [#uses=1 type=i8] [debug line = 214:13]
  %tmp.7 = icmp eq i5 %i.10.6, 0, !dbg !714       ; [#uses=1 type=i1] [debug line = 214:13]
  br i1 %tmp.7, label %4, label %3, !dbg !714     ; [debug line = 214:13]

; <label>:3                                       ; preds = %1
  %tmp..7 = zext i8 %i.10.7.cast to i32, !dbg !718 ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.291 = add i5 %i, -8, !dbg !718             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.292 = zext i5 %tmp.291 to i10, !dbg !718   ; [#uses=1 type=i10] [debug line = 221:2]
  %tmp.293 = shl nuw nsw i10 %tmp.292, 3          ; [#uses=3 type=i10]
  %tmp.294 = or i10 %tmp.293, 7                   ; [#uses=2 type=i10]
  %tmp.295 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.293, i10 %tmp.294), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp.296 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.290, i8 %tmp.295, i10 %tmp.293, i10 %tmp.294), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr.47 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..7, !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.7 = load i8* %buf.addr.47, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.7 = xor i8 %buf.load.7, %tmp.295, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.7, i8* %buf.addr.47, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.297 = add i5 %i, 8, !dbg !718              ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.324.cast = zext i5 %tmp.297 to i8          ; [#uses=1 type=i8]
  %tmp.298 = shl nuw i8 %tmp.324.cast, 3          ; [#uses=2 type=i8]
  %tmp.325.cast = zext i8 %tmp.298 to i10         ; [#uses=2 type=i10]
  %tmp.299 = or i8 %tmp.298, 7                    ; [#uses=1 type=i8]
  %tmp.326.cast = zext i8 %tmp.299 to i10         ; [#uses=2 type=i10]
  %tmp.300 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.325.cast, i10 %tmp.326.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.301 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.296, i8 %tmp.300, i10 %tmp.325.cast, i10 %tmp.326.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %i.10.8 = add i5 %i, -9, !dbg !714              ; [#uses=2 type=i5] [debug line = 214:13]
  %tmp..8 = zext i5 %i.10.8 to i32, !dbg !718     ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp.302 = add i5 %i, -9, !dbg !718             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.303 = zext i5 %tmp.302 to i10, !dbg !718   ; [#uses=1 type=i10] [debug line = 221:2]
  %tmp.304 = shl nuw nsw i10 %tmp.303, 3          ; [#uses=3 type=i10]
  %tmp.305 = or i10 %tmp.304, 7                   ; [#uses=2 type=i10]
  %tmp.306 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.304, i10 %tmp.305), !dbg !718 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp.307 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.301, i8 %tmp.306, i10 %tmp.304, i10 %tmp.305), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %buf.addr.48 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..8, !dbg !718 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.8 = load i8* %buf.addr.48, align 1, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.8 = xor i8 %buf.load.8, %tmp.306, !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.8, i8* %buf.addr.48, align 1, !dbg !718 ; [debug line = 221:2]
  %tmp.308 = add i5 %i, 7, !dbg !718              ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp.336.cast = zext i5 %tmp.308 to i8          ; [#uses=1 type=i8]
  %tmp.309 = shl nuw i8 %tmp.336.cast, 3          ; [#uses=2 type=i8]
  %tmp.337.cast = zext i8 %tmp.309 to i10         ; [#uses=2 type=i10]
  %tmp.310 = or i8 %tmp.309, 7                    ; [#uses=1 type=i8]
  %tmp.338.cast = zext i8 %tmp.310 to i10         ; [#uses=2 type=i10]
  %tmp.311 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new, i10 %tmp.337.cast, i10 %tmp.338.cast), !dbg !718 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.312 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256 %tmp.307, i8 %tmp.311, i10 %tmp.337.cast, i10 %tmp.338.cast), !dbg !718 ; [#uses=1 type=i256] [debug line = 221:2]
  %gep21112.part_set.8 = call i1024 @llvm.part.set.i1024.i256(i1024 %ctx.load, i256 %tmp.312, i32 0, i32 255), !dbg !718 ; [#uses=1 type=i1024] [debug line = 221:2]
  store i1024 %gep21112.part_set.8, i1024* %ctx, align 4, !dbg !718 ; [debug line = 221:2]
  br label %1, !dbg !719                          ; [debug line = 222:5]

; <label>:4                                       ; preds = %1
  ret void, !dbg !720                             ; [debug line = 223:1]
}

; [#uses=3]
define internal fastcc void @aes_addRoundKey([16 x i8]* %buf, i1024* %key, i6 %key.offset) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str10, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1024* %key, [6 x i8]* @.str7, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str8, [7 x i8]* @.str9, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !721), !dbg !723 ; [debug line = 194:31] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i1024* %key}, i64 0, metadata !724), !dbg !726 ; [debug line = 194:45] [debug variable = key]
  %tmp.cast = trunc i6 %key.offset to i5, !dbg !727 ; [#uses=15 type=i5] [debug line = 205:2]
  %tmp. = add i5 %tmp.cast, 15, !dbg !727         ; [#uses=1 type=i5] [debug line = 205:2]
  %key.load = load i1024* %key, align 4, !dbg !727 ; [#uses=1 type=i1024] [debug line = 205:2]
  %.new2 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key.load, i32 0, i32 255), !dbg !727 ; [#uses=16 type=i256] [debug line = 205:2]
  %tmp.341.cast = zext i5 %tmp. to i8             ; [#uses=1 type=i8]
  %tmp.313 = shl nuw i8 %tmp.341.cast, 3          ; [#uses=2 type=i8]
  %tmp.342.cast = zext i8 %tmp.313 to i10         ; [#uses=1 type=i10]
  %tmp.314 = or i8 %tmp.313, 7                    ; [#uses=1 type=i8]
  %tmp.343.cast = zext i8 %tmp.314 to i10         ; [#uses=1 type=i10]
  %tmp.315 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.342.cast, i10 %tmp.343.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 15, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69 = xor i8 %buf.load, %tmp.315, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69, i8* %buf.addr, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.316 = add i5 %tmp.cast, 14, !dbg !727      ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.346.cast = zext i5 %tmp.316 to i8          ; [#uses=1 type=i8]
  %tmp.317 = shl nuw i8 %tmp.346.cast, 3          ; [#uses=2 type=i8]
  %tmp.347.cast = zext i8 %tmp.317 to i10         ; [#uses=1 type=i10]
  %tmp.318 = or i8 %tmp.317, 7                    ; [#uses=1 type=i8]
  %tmp.348.cast = zext i8 %tmp.318 to i10         ; [#uses=1 type=i10]
  %tmp.319 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.347.cast, i10 %tmp.348.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.49 = getelementptr [16 x i8]* %buf, i32 0, i32 14, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.1 = load i8* %buf.addr.49, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.1 = xor i8 %buf.load.1, %tmp.319, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.1, i8* %buf.addr.49, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.320 = add i5 %tmp.cast, 13, !dbg !727      ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.351.cast = zext i5 %tmp.320 to i8          ; [#uses=1 type=i8]
  %tmp.321 = shl nuw i8 %tmp.351.cast, 3          ; [#uses=2 type=i8]
  %tmp.352.cast = zext i8 %tmp.321 to i10         ; [#uses=1 type=i10]
  %tmp.322 = or i8 %tmp.321, 7                    ; [#uses=1 type=i8]
  %tmp.353.cast = zext i8 %tmp.322 to i10         ; [#uses=1 type=i10]
  %tmp.323 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.352.cast, i10 %tmp.353.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.50 = getelementptr [16 x i8]* %buf, i32 0, i32 13, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.2 = load i8* %buf.addr.50, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.2 = xor i8 %buf.load.2, %tmp.323, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.2, i8* %buf.addr.50, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.324 = add i5 %tmp.cast, 12, !dbg !727      ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.356.cast = zext i5 %tmp.324 to i8          ; [#uses=1 type=i8]
  %tmp.325 = shl nuw i8 %tmp.356.cast, 3          ; [#uses=2 type=i8]
  %tmp.357.cast = zext i8 %tmp.325 to i10         ; [#uses=1 type=i10]
  %tmp.326 = or i8 %tmp.325, 7                    ; [#uses=1 type=i8]
  %tmp.358.cast = zext i8 %tmp.326 to i10         ; [#uses=1 type=i10]
  %tmp.327 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.357.cast, i10 %tmp.358.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.51 = getelementptr [16 x i8]* %buf, i32 0, i32 12, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.3 = load i8* %buf.addr.51, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.3 = xor i8 %buf.load.3, %tmp.327, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.3, i8* %buf.addr.51, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.328 = add i5 %tmp.cast, 11, !dbg !727      ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.361.cast = zext i5 %tmp.328 to i8          ; [#uses=1 type=i8]
  %tmp.329 = shl nuw i8 %tmp.361.cast, 3          ; [#uses=2 type=i8]
  %tmp.362.cast = zext i8 %tmp.329 to i10         ; [#uses=1 type=i10]
  %tmp.330 = or i8 %tmp.329, 7                    ; [#uses=1 type=i8]
  %tmp.363.cast = zext i8 %tmp.330 to i10         ; [#uses=1 type=i10]
  %tmp.331 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.362.cast, i10 %tmp.363.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.52 = getelementptr [16 x i8]* %buf, i32 0, i32 11, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.4 = load i8* %buf.addr.52, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.4 = xor i8 %buf.load.4, %tmp.331, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.4, i8* %buf.addr.52, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.332 = add i5 %tmp.cast, 10, !dbg !727      ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.366.cast = zext i5 %tmp.332 to i8          ; [#uses=1 type=i8]
  %tmp.333 = shl nuw i8 %tmp.366.cast, 3          ; [#uses=2 type=i8]
  %tmp.367.cast = zext i8 %tmp.333 to i10         ; [#uses=1 type=i10]
  %tmp.334 = or i8 %tmp.333, 7                    ; [#uses=1 type=i8]
  %tmp.368.cast = zext i8 %tmp.334 to i10         ; [#uses=1 type=i10]
  %tmp.335 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.367.cast, i10 %tmp.368.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.53 = getelementptr [16 x i8]* %buf, i32 0, i32 10, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.5 = load i8* %buf.addr.53, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.5 = xor i8 %buf.load.5, %tmp.335, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.5, i8* %buf.addr.53, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.336 = add i5 %tmp.cast, 9, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.371.cast = zext i5 %tmp.336 to i8          ; [#uses=1 type=i8]
  %tmp.337 = shl nuw i8 %tmp.371.cast, 3          ; [#uses=2 type=i8]
  %tmp.372.cast = zext i8 %tmp.337 to i10         ; [#uses=1 type=i10]
  %tmp.338 = or i8 %tmp.337, 7                    ; [#uses=1 type=i8]
  %tmp.373.cast = zext i8 %tmp.338 to i10         ; [#uses=1 type=i10]
  %tmp.339 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.372.cast, i10 %tmp.373.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.54 = getelementptr [16 x i8]* %buf, i32 0, i32 9, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.6 = load i8* %buf.addr.54, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.6 = xor i8 %buf.load.6, %tmp.339, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.6, i8* %buf.addr.54, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.340 = add i5 %tmp.cast, 8, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.376.cast = zext i5 %tmp.340 to i8          ; [#uses=1 type=i8]
  %tmp.341 = shl nuw i8 %tmp.376.cast, 3          ; [#uses=2 type=i8]
  %tmp.377.cast = zext i8 %tmp.341 to i10         ; [#uses=1 type=i10]
  %tmp.342 = or i8 %tmp.341, 7                    ; [#uses=1 type=i8]
  %tmp.378.cast = zext i8 %tmp.342 to i10         ; [#uses=1 type=i10]
  %tmp.343 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.377.cast, i10 %tmp.378.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.55 = getelementptr [16 x i8]* %buf, i32 0, i32 8, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.7 = load i8* %buf.addr.55, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.7 = xor i8 %buf.load.7, %tmp.343, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.7, i8* %buf.addr.55, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.344 = add i5 %tmp.cast, 7, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.381.cast = zext i5 %tmp.344 to i8          ; [#uses=1 type=i8]
  %tmp.345 = shl nuw i8 %tmp.381.cast, 3          ; [#uses=2 type=i8]
  %tmp.382.cast = zext i8 %tmp.345 to i10         ; [#uses=1 type=i10]
  %tmp.346 = or i8 %tmp.345, 7                    ; [#uses=1 type=i8]
  %tmp.383.cast = zext i8 %tmp.346 to i10         ; [#uses=1 type=i10]
  %tmp.347 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.382.cast, i10 %tmp.383.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.56 = getelementptr [16 x i8]* %buf, i32 0, i32 7, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.8 = load i8* %buf.addr.56, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.8 = xor i8 %buf.load.8, %tmp.347, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.8, i8* %buf.addr.56, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.348 = add i5 %tmp.cast, 6, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.386.cast = zext i5 %tmp.348 to i8          ; [#uses=1 type=i8]
  %tmp.349 = shl nuw i8 %tmp.386.cast, 3          ; [#uses=2 type=i8]
  %tmp.387.cast = zext i8 %tmp.349 to i10         ; [#uses=1 type=i10]
  %tmp.350 = or i8 %tmp.349, 7                    ; [#uses=1 type=i8]
  %tmp.388.cast = zext i8 %tmp.350 to i10         ; [#uses=1 type=i10]
  %tmp.351 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.387.cast, i10 %tmp.388.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.57 = getelementptr [16 x i8]* %buf, i32 0, i32 6, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.9 = load i8* %buf.addr.57, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.9 = xor i8 %buf.load.9, %tmp.351, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.9, i8* %buf.addr.57, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.352 = add i5 %tmp.cast, 5, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.391.cast = zext i5 %tmp.352 to i8          ; [#uses=1 type=i8]
  %tmp.353 = shl nuw i8 %tmp.391.cast, 3          ; [#uses=2 type=i8]
  %tmp.392.cast = zext i8 %tmp.353 to i10         ; [#uses=1 type=i10]
  %tmp.354 = or i8 %tmp.353, 7                    ; [#uses=1 type=i8]
  %tmp.393.cast = zext i8 %tmp.354 to i10         ; [#uses=1 type=i10]
  %tmp.355 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.392.cast, i10 %tmp.393.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.58 = getelementptr [16 x i8]* %buf, i32 0, i32 5, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.10 = load i8* %buf.addr.58, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69. = xor i8 %buf.load.10, %tmp.355, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69., i8* %buf.addr.58, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.356 = add i5 %tmp.cast, 4, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.396.cast = zext i5 %tmp.356 to i8          ; [#uses=1 type=i8]
  %tmp.357 = shl nuw i8 %tmp.396.cast, 3          ; [#uses=2 type=i8]
  %tmp.397.cast = zext i8 %tmp.357 to i10         ; [#uses=1 type=i10]
  %tmp.358 = or i8 %tmp.357, 7                    ; [#uses=1 type=i8]
  %tmp.398.cast = zext i8 %tmp.358 to i10         ; [#uses=1 type=i10]
  %tmp.359 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.397.cast, i10 %tmp.398.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.59 = getelementptr [16 x i8]* %buf, i32 0, i32 4, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.11 = load i8* %buf.addr.59, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.10 = xor i8 %buf.load.11, %tmp.359, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.10, i8* %buf.addr.59, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.360 = add i5 %tmp.cast, 3, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.401.cast = zext i5 %tmp.360 to i8          ; [#uses=1 type=i8]
  %tmp.361 = shl nuw i8 %tmp.401.cast, 3          ; [#uses=2 type=i8]
  %tmp.402.cast = zext i8 %tmp.361 to i10         ; [#uses=1 type=i10]
  %tmp.362 = or i8 %tmp.361, 7                    ; [#uses=1 type=i8]
  %tmp.403.cast = zext i8 %tmp.362 to i10         ; [#uses=1 type=i10]
  %tmp.363 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.402.cast, i10 %tmp.403.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.60 = getelementptr [16 x i8]* %buf, i32 0, i32 3, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.12 = load i8* %buf.addr.60, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.11 = xor i8 %buf.load.12, %tmp.363, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.11, i8* %buf.addr.60, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.364 = add i5 %tmp.cast, 2, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.406.cast = zext i5 %tmp.364 to i8          ; [#uses=1 type=i8]
  %tmp.365 = shl nuw i8 %tmp.406.cast, 3          ; [#uses=2 type=i8]
  %tmp.407.cast = zext i8 %tmp.365 to i10         ; [#uses=1 type=i10]
  %tmp.366 = or i8 %tmp.365, 7                    ; [#uses=1 type=i8]
  %tmp.408.cast = zext i8 %tmp.366 to i10         ; [#uses=1 type=i10]
  %tmp.367 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.407.cast, i10 %tmp.408.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.61 = getelementptr [16 x i8]* %buf, i32 0, i32 2, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.13 = load i8* %buf.addr.61, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.12 = xor i8 %buf.load.13, %tmp.367, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.12, i8* %buf.addr.61, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.368 = add i5 %tmp.cast, 1, !dbg !727       ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp.411.cast = zext i5 %tmp.368 to i8          ; [#uses=1 type=i8]
  %tmp.369 = shl nuw i8 %tmp.411.cast, 3          ; [#uses=2 type=i8]
  %tmp.412.cast = zext i8 %tmp.369 to i10         ; [#uses=1 type=i10]
  %tmp.370 = or i8 %tmp.369, 7                    ; [#uses=1 type=i8]
  %tmp.413.cast = zext i8 %tmp.370 to i10         ; [#uses=1 type=i10]
  %tmp.371 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.412.cast, i10 %tmp.413.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.62 = getelementptr [16 x i8]* %buf, i32 0, i32 1, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.14 = load i8* %buf.addr.62, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.13 = xor i8 %buf.load.14, %tmp.371, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.13, i8* %buf.addr.62, align 1, !dbg !727 ; [debug line = 205:2]
  %tmp.415.cast = zext i6 %key.offset to i8       ; [#uses=1 type=i8]
  %tmp.372 = shl i8 %tmp.415.cast, 3              ; [#uses=2 type=i8]
  %tmp.416.cast = zext i8 %tmp.372 to i10         ; [#uses=1 type=i10]
  %tmp.373 = or i8 %tmp.372, 7                    ; [#uses=1 type=i8]
  %tmp.417.cast = zext i8 %tmp.373 to i10         ; [#uses=1 type=i10]
  %tmp.374 = call i8 @_ssdm_op_PartSelect.i8.i256.i10.i10(i256 %.new2, i10 %tmp.416.cast, i10 %tmp.417.cast), !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.63 = getelementptr [16 x i8]* %buf, i32 0, i32 0, !dbg !727 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.15 = load i8* %buf.addr.63, align 1, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.14 = xor i8 %buf.load.15, %tmp.374, !dbg !727 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.14, i8* %buf.addr.63, align 1, !dbg !727 ; [debug line = 205:2]
  ret void, !dbg !730                             ; [debug line = 207:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=5]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=13]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=16]
declare i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256, i8, i32, i32) nounwind readnone

; [#uses=54]
declare i256 @_ssdm_op_PartSet.i256.i256.i8.i10.i10(i256, i8, i10, i10) nounwind readnone

; [#uses=1]
declare i1024 @_ssdm_op_PartSet.i1024.i1024.i512.i32.i32(i1024, i512, i32, i32) nounwind readnone

; [#uses=58]
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
!28 = metadata !{i32 786449, i32 0, i32 1, metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls/encrypt/solution/.autopilot/db/aes.pragma.2.c", metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !29} ; [ DW_TAG_compile_unit ]
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !58, metadata !59, metadata !62, metadata !65, metadata !66, metadata !67}
!31 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb2", metadata !"pipeline_ii_ecb2", metadata !"", metadata !32, i32 73, metadata !33, i32 0, i32 1, i32* @pipeline_ii_ecb2} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c", metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!34 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_mix", metadata !"unroll_factor_mix", metadata !"", metadata !32, i32 79, metadata !33, i32 0, i32 1, i32* @unroll_factor_mix} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp2", metadata !"unroll_factor_exp2", metadata !"", metadata !32, i32 81, metadata !33, i32 0, i32 1, i32* @unroll_factor_exp2} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp1", metadata !"unroll_factor_exp1", metadata !"", metadata !32, i32 80, metadata !33, i32 0, i32 1, i32* @unroll_factor_exp1} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb3", metadata !"unroll_factor_ecb3", metadata !"", metadata !32, i32 84, metadata !33, i32 0, i32 1, i32* @unroll_factor_ecb3} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_sub", metadata !"unroll_factor_sub", metadata !"", metadata !32, i32 76, metadata !33, i32 0, i32 1, i32* @unroll_factor_sub} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp2", metadata !"pipeline_ii_exp2", metadata !"", metadata !32, i32 71, metadata !33, i32 0, i32 1, i32* @pipeline_ii_exp2} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb1", metadata !"unroll_factor_ecb1", metadata !"", metadata !32, i32 82, metadata !33, i32 0, i32 1, i32* @unroll_factor_ecb1} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb2", metadata !"unroll_factor_ecb2", metadata !"", metadata !32, i32 83, metadata !33, i32 0, i32 1, i32* @unroll_factor_ecb2} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_cpkey", metadata !"unroll_factor_cpkey", metadata !"", metadata !32, i32 78, metadata !33, i32 0, i32 1, i32* @unroll_factor_cpkey} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_sub", metadata !"pipeline_ii_sub", metadata !"", metadata !32, i32 66, metadata !33, i32 0, i32 1, i32* @pipeline_ii_sub} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_cpkey", metadata !"pipeline_ii_cpkey", metadata !"", metadata !32, i32 68, metadata !33, i32 0, i32 1, i32* @pipeline_ii_cpkey} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_mix", metadata !"pipeline_ii_mix", metadata !"", metadata !32, i32 69, metadata !33, i32 0, i32 1, i32* @pipeline_ii_mix} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb3", metadata !"pipeline_ii_ecb3", metadata !"", metadata !32, i32 74, metadata !33, i32 0, i32 1, i32* @pipeline_ii_ecb3} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_addkey", metadata !"pipeline_ii_addkey", metadata !"", metadata !32, i32 67, metadata !33, i32 0, i32 1, i32* @pipeline_ii_addkey} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb1", metadata !"pipeline_ii_ecb1", metadata !"", metadata !32, i32 72, metadata !33, i32 0, i32 1, i32* @pipeline_ii_ecb1} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_addkey", metadata !"unroll_factor_addkey", metadata !"", metadata !32, i32 77, metadata !33, i32 0, i32 1, i32* @unroll_factor_addkey} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !32, i32 89, metadata !52, i32 0, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !53, metadata !56, i32 0, i32 0} ; [ DW_TAG_array_type ]
!53 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ]
!54 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !32, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!55 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!58 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp1", metadata !"pipeline_ii_exp1", metadata !"", metadata !32, i32 70, metadata !33, i32 0, i32 1, i32* @pipeline_ii_exp1} ; [ DW_TAG_variable ]
!59 = metadata !{i32 786484, i32 0, null, metadata !"INPUT_SIZE", metadata !"INPUT_SIZE", metadata !"", metadata !60, i32 45, metadata !61, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!60 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h", metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!62 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !63, i32 320, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls", null} ; [ DW_TAG_file_type ]
!64 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !63, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!65 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !63, i32 321, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !63, i32 322, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!67 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !68, i32 26, metadata !61, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!68 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls", null} ; [ DW_TAG_file_type ]
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
!538 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h", metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls", null} ; [ DW_TAG_file_type ]
!539 = metadata !{metadata !540, metadata !544, metadata !545, metadata !546}
!540 = metadata !{i32 786445, metadata !537, metadata !"key", metadata !538, i32 8, i64 256, i64 8, i64 0, i32 0, metadata !541} ; [ DW_TAG_member ]
!541 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !54, metadata !542, i32 0, i32 0} ; [ DW_TAG_array_type ]
!542 = metadata !{metadata !543}
!543 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!544 = metadata !{i32 786445, metadata !537, metadata !"enckey", metadata !538, i32 9, i64 256, i64 8, i64 256, i32 0, metadata !541} ; [ DW_TAG_member ]
!545 = metadata !{i32 786445, metadata !537, metadata !"deckey", metadata !538, i32 10, i64 256, i64 8, i64 512, i32 0, metadata !541} ; [ DW_TAG_member ]
!546 = metadata !{i32 786445, metadata !537, metadata !"dummy", metadata !538, i32 11, i64 256, i64 8, i64 768, i32 0, metadata !541} ; [ DW_TAG_member ]
!547 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ]
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
!570 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !54, metadata !542, i32 0, i32 0} ; [ DW_TAG_array_type ]
!571 = metadata !{i32 299, i32 43, metadata !532, null}
!572 = metadata !{i32 786689, metadata !532, metadata !"buf", null, i32 299, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!573 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !54, metadata !574, i32 0, i32 0} ; [ DW_TAG_array_type ]
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
!584 = metadata !{i32 786688, metadata !578, metadata !"i", metadata !32, i32 303, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!585 = metadata !{i32 313, i32 29, metadata !586, null}
!586 = metadata !{i32 786443, metadata !583, i32 313, i32 28, metadata !32, i32 20} ; [ DW_TAG_lexical_block ]
!587 = metadata !{i32 786688, metadata !578, metadata !"rcon", metadata !32, i32 302, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!588 = metadata !{i32 319, i32 2, metadata !586, null}
!589 = metadata !{i32 320, i32 5, metadata !586, null}
!590 = metadata !{i32 324, i32 16, metadata !591, null}
!591 = metadata !{i32 786443, metadata !578, i32 324, i32 12, metadata !32, i32 21} ; [ DW_TAG_lexical_block ]
!592 = metadata !{i32 325, i32 6, metadata !593, null}
!593 = metadata !{i32 786443, metadata !591, i32 325, i32 5, metadata !32, i32 22} ; [ DW_TAG_lexical_block ]
!594 = metadata !{i32 327, i32 1, metadata !593, null}
!595 = metadata !{i32 331, i32 2, metadata !593, null}
!596 = metadata !{i32 332, i32 9, metadata !593, null}
!597 = metadata !{i32 333, i32 9, metadata !593, null}
!598 = metadata !{i32 334, i32 9, metadata !593, null}
!599 = metadata !{i32 334, i32 21, metadata !593, null}
!600 = metadata !{i32 335, i32 14, metadata !593, null}
!601 = metadata !{i32 336, i32 5, metadata !593, null}
!602 = metadata !{i32 324, i32 41, metadata !591, null}
!603 = metadata !{i32 337, i32 5, metadata !578, null}
!604 = metadata !{i32 338, i32 5, metadata !578, null}
!605 = metadata !{i32 339, i32 5, metadata !578, null}
!606 = metadata !{i32 341, i32 1, metadata !578, null}
!607 = metadata !{i32 786689, metadata !608, metadata !"buf", null, i32 178, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!608 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !32, i32 178, metadata !609, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 179} ; [ DW_TAG_subprogram ]
!609 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!610 = metadata !{null, metadata !547}
!611 = metadata !{i32 178, i32 28, metadata !608, null}
!612 = metadata !{i32 189, i32 2, metadata !613, null}
!613 = metadata !{i32 786443, metadata !614, i32 183, i32 5, metadata !32, i32 2} ; [ DW_TAG_lexical_block ]
!614 = metadata !{i32 786443, metadata !608, i32 179, i32 1, metadata !32, i32 1} ; [ DW_TAG_lexical_block ]
!615 = metadata !{i32 191, i32 1, metadata !614, null}
!616 = metadata !{i32 786689, metadata !617, metadata !"buf", null, i32 227, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!617 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !32, i32 227, metadata !609, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 228} ; [ DW_TAG_subprogram ]
!618 = metadata !{i32 227, i32 29, metadata !617, null}
!619 = metadata !{i32 231, i32 5, metadata !620, null}
!620 = metadata !{i32 786443, metadata !617, i32 228, i32 1, metadata !32, i32 7} ; [ DW_TAG_lexical_block ]
!621 = metadata !{i32 786688, metadata !620, metadata !"i", metadata !32, i32 229, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!622 = metadata !{i32 231, i32 17, metadata !620, null}
!623 = metadata !{i32 231, i32 34, metadata !620, null}
!624 = metadata !{i32 231, i32 51, metadata !620, null}
!625 = metadata !{i32 231, i32 69, metadata !620, null}
!626 = metadata !{i32 232, i32 5, metadata !620, null}
!627 = metadata !{i32 232, i32 18, metadata !620, null}
!628 = metadata !{i32 232, i32 36, metadata !620, null}
!629 = metadata !{i32 233, i32 5, metadata !620, null}
!630 = metadata !{i32 786688, metadata !620, metadata !"j", metadata !32, i32 229, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!631 = metadata !{i32 233, i32 17, metadata !620, null}
!632 = metadata !{i32 233, i32 35, metadata !620, null}
!633 = metadata !{i32 233, i32 54, metadata !620, null}
!634 = metadata !{i32 233, i32 72, metadata !620, null}
!635 = metadata !{i32 234, i32 5, metadata !620, null}
!636 = metadata !{i32 234, i32 18, metadata !620, null}
!637 = metadata !{i32 234, i32 36, metadata !620, null}
!638 = metadata !{i32 236, i32 1, metadata !620, null}
!639 = metadata !{i32 786689, metadata !640, metadata !"buf", null, i32 239, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!640 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !32, i32 239, metadata !609, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 240} ; [ DW_TAG_subprogram ]
!641 = metadata !{i32 239, i32 30, metadata !640, null}
!642 = metadata !{i32 250, i32 2, metadata !643, null}
!643 = metadata !{i32 786443, metadata !644, i32 244, i32 5, metadata !32, i32 10} ; [ DW_TAG_lexical_block ]
!644 = metadata !{i32 786443, metadata !645, i32 243, i32 11, metadata !32, i32 9} ; [ DW_TAG_lexical_block ]
!645 = metadata !{i32 786443, metadata !640, i32 240, i32 1, metadata !32, i32 8} ; [ DW_TAG_lexical_block ]
!646 = metadata !{i32 250, i32 14, metadata !643, null}
!647 = metadata !{i32 250, i32 30, metadata !643, null}
!648 = metadata !{i32 250, i32 46, metadata !643, null}
!649 = metadata !{i32 251, i32 9, metadata !643, null}
!650 = metadata !{i32 786689, metadata !651, metadata !"x", metadata !32, i32 16777388, metadata !54, i32 0, metadata !654} ; [ DW_TAG_arg_variable ]
!651 = metadata !{i32 786478, i32 0, metadata !32, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !32, i32 172, metadata !652, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 173} ; [ DW_TAG_subprogram ]
!652 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!653 = metadata !{metadata !54, metadata !54}
!654 = metadata !{i32 252, i32 23, metadata !643, null}
!655 = metadata !{i32 172, i32 26, metadata !651, metadata !654}
!656 = metadata !{i32 174, i32 5, metadata !657, metadata !654}
!657 = metadata !{i32 786443, metadata !651, i32 173, i32 1, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!658 = metadata !{i32 252, i32 54, metadata !643, null}
!659 = metadata !{i32 786689, metadata !651, metadata !"x", metadata !32, i32 16777388, metadata !54, i32 0, metadata !658} ; [ DW_TAG_arg_variable ]
!660 = metadata !{i32 172, i32 26, metadata !651, metadata !658}
!661 = metadata !{i32 174, i32 5, metadata !657, metadata !658}
!662 = metadata !{i32 253, i32 25, metadata !643, null}
!663 = metadata !{i32 786689, metadata !651, metadata !"x", metadata !32, i32 16777388, metadata !54, i32 0, metadata !662} ; [ DW_TAG_arg_variable ]
!664 = metadata !{i32 172, i32 26, metadata !651, metadata !662}
!665 = metadata !{i32 174, i32 5, metadata !657, metadata !662}
!666 = metadata !{i32 253, i32 56, metadata !643, null}
!667 = metadata !{i32 786689, metadata !651, metadata !"x", metadata !32, i32 16777388, metadata !54, i32 0, metadata !666} ; [ DW_TAG_arg_variable ]
!668 = metadata !{i32 172, i32 26, metadata !651, metadata !666}
!669 = metadata !{i32 174, i32 5, metadata !657, metadata !666}
!670 = metadata !{i32 255, i32 1, metadata !645, null}
!671 = metadata !{i32 790544, metadata !672, metadata !"k", null, i32 258, metadata !550, i32 0, i32 0, metadata !675} ; [ DW_TAG_arg_variable_aggr_vec ]
!672 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !32, i32 258, metadata !673, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 259} ; [ DW_TAG_subprogram ]
!673 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !674, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!674 = metadata !{null, metadata !547, metadata !547}
!675 = metadata !{i32 786689, metadata !672, metadata !"k", null, i32 258, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!676 = metadata !{i32 258, i32 32, metadata !672, null}
!677 = metadata !{i32 790532, metadata !672, metadata !"rc", null, i32 258, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!678 = metadata !{i32 258, i32 44, metadata !672, null}
!679 = metadata !{i32 262, i32 5, metadata !680, null}
!680 = metadata !{i32 786443, metadata !672, i32 259, i32 1, metadata !32, i32 11} ; [ DW_TAG_lexical_block ]
!681 = metadata !{i32 263, i32 5, metadata !680, null}
!682 = metadata !{i32 264, i32 5, metadata !680, null}
!683 = metadata !{i32 265, i32 5, metadata !680, null}
!684 = metadata !{i32 266, i32 5, metadata !680, null}
!685 = metadata !{i32 268, i32 16, metadata !686, null}
!686 = metadata !{i32 786443, metadata !680, i32 268, i32 12, metadata !32, i32 12} ; [ DW_TAG_lexical_block ]
!687 = metadata !{i32 269, i32 6, metadata !688, null}
!688 = metadata !{i32 786443, metadata !686, i32 269, i32 5, metadata !32, i32 13} ; [ DW_TAG_lexical_block ]
!689 = metadata !{i32 271, i32 1, metadata !688, null}
!690 = metadata !{i32 275, i32 2, metadata !688, null}
!691 = metadata !{i32 277, i32 5, metadata !688, null}
!692 = metadata !{i32 268, i32 31, metadata !686, null}
!693 = metadata !{i32 786688, metadata !680, metadata !"i", metadata !32, i32 260, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!694 = metadata !{i32 278, i32 5, metadata !680, null}
!695 = metadata !{i32 279, i32 5, metadata !680, null}
!696 = metadata !{i32 280, i32 5, metadata !680, null}
!697 = metadata !{i32 281, i32 5, metadata !680, null}
!698 = metadata !{i32 283, i32 16, metadata !699, null}
!699 = metadata !{i32 786443, metadata !680, i32 283, i32 12, metadata !32, i32 14} ; [ DW_TAG_lexical_block ]
!700 = metadata !{i32 284, i32 6, metadata !701, null}
!701 = metadata !{i32 786443, metadata !699, i32 284, i32 5, metadata !32, i32 15} ; [ DW_TAG_lexical_block ]
!702 = metadata !{i32 290, i32 2, metadata !701, null}
!703 = metadata !{i32 283, i32 32, metadata !699, null}
!704 = metadata !{i32 294, i32 1, metadata !680, null}
!705 = metadata !{i32 786689, metadata !706, metadata !"buf", null, i32 210, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!706 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !32, i32 210, metadata !707, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 211} ; [ DW_TAG_subprogram ]
!707 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !708, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!708 = metadata !{null, metadata !547, metadata !547, metadata !547}
!709 = metadata !{i32 210, i32 35, metadata !706, null}
!710 = metadata !{i32 790544, metadata !706, metadata !"ctx", null, i32 210, metadata !550, i32 0, i32 0, metadata !711, metadata !712} ; [ DW_TAG_arg_variable_aggr_vec ]
!711 = metadata !{i32 786689, metadata !706, metadata !"key", null, i32 210, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!712 = metadata !{i32 786689, metadata !706, metadata !"cpk", null, i32 210, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!713 = metadata !{i32 210, i32 49, metadata !706, null}
!714 = metadata !{i32 214, i32 13, metadata !715, null}
!715 = metadata !{i32 786443, metadata !706, i32 211, i32 1, metadata !32, i32 5} ; [ DW_TAG_lexical_block ]
!716 = metadata !{i32 215, i32 6, metadata !717, null}
!717 = metadata !{i32 786443, metadata !715, i32 215, i32 5, metadata !32, i32 6} ; [ DW_TAG_lexical_block ]
!718 = metadata !{i32 221, i32 2, metadata !717, null}
!719 = metadata !{i32 222, i32 5, metadata !717, null}
!720 = metadata !{i32 223, i32 1, metadata !715, null}
!721 = metadata !{i32 786689, metadata !722, metadata !"buf", null, i32 194, metadata !573, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!722 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !32, i32 194, metadata !673, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !548, i32 195} ; [ DW_TAG_subprogram ]
!723 = metadata !{i32 194, i32 31, metadata !722, null}
!724 = metadata !{i32 790544, metadata !722, metadata !"key", null, i32 194, metadata !550, i32 0, i32 0, metadata !725} ; [ DW_TAG_arg_variable_aggr_vec ]
!725 = metadata !{i32 786689, metadata !722, metadata !"key", null, i32 194, metadata !570, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!726 = metadata !{i32 194, i32 45, metadata !722, null}
!727 = metadata !{i32 205, i32 2, metadata !728, null}
!728 = metadata !{i32 786443, metadata !729, i32 199, i32 5, metadata !32, i32 4} ; [ DW_TAG_lexical_block ]
!729 = metadata !{i32 786443, metadata !722, i32 195, i32 1, metadata !32, i32 3} ; [ DW_TAG_lexical_block ]
!730 = metadata !{i32 207, i32 1, metadata !729, null}
