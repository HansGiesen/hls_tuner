; ModuleID = '/scratch/local/tmp.mnejJh1Zni/_sds/vhls/encrypt/solution/.autopilot/db/a.o.3.bc'
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
@encrypt_str = internal unnamed_addr constant [8 x i8] c"encrypt\00" ; [#uses=1 type=[8 x i8]*]
@p_str9 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=12 type=[7 x i8]*]
@p_str8 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1 ; [#uses=6 type=[4 x i8]*]
@p_str7 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=12 type=[6 x i8]*]
@p_str6 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str5 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str15 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str14 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str12 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str11 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str10 = private unnamed_addr constant [4 x i8] c"buf\00", align 1 ; [#uses=6 type=[4 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=64 type=[1 x i8]*]

; [#uses=1]
declare i256 @llvm.part.set.i256.i8(i256, i8, i32, i32) nounwind readnone

; [#uses=5]
declare i1024 @llvm.part.set.i1024.i256(i1024, i256, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=50]
declare i256 @llvm.part.select.i256(i256, i32, i32) nounwind readnone

; [#uses=2]
declare i1024 @llvm.part.select.i1024(i1024, i32, i32) nounwind readnone

; [#uses=44]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @encrypt(i1024* %ctx, i8* %buf, i32 %ctx_offset, [32 x i8]* %k, i32 %buf_offset) {
.preheader.preheader:
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=9 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %buf_offset_read}, i64 0, metadata !30), !dbg !55 ; [debug line = 299:58] [debug variable = buf]
  %ctx_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_offset) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ctx_offset_read}, i64 0, metadata !56), !dbg !76 ; [debug line = 299:30] [debug variable = ctx]
  %ctx_offset1 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %ctx_offset_read, i32 7, i32 31) ; [#uses=8 type=i25]
  %tmp_2 = zext i25 %ctx_offset1 to i32           ; [#uses=1 type=i32]
  %ctx_addr = getelementptr i1024* %ctx, i32 %tmp_2 ; [#uses=3 type=i1024*]
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %buf), !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i1024* %ctx), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %k), !map !532
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt_str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %ctx_offset}, i64 0, metadata !56), !dbg !76 ; [debug line = 299:30] [debug variable = ctx]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !538), !dbg !540 ; [debug line = 299:43] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i32 %buf_offset}, i64 0, metadata !30), !dbg !55 ; [debug line = 299:58] [debug variable = buf]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str1) nounwind, !dbg !541 ; [debug line = 301:1]
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([32 x i8]* %k, [1 x i8]* @p_str1, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %k, [5 x i8]* @p_str12, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %k_addr = getelementptr [32 x i8]* %k, i32 0, i32 0, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load = load i8* %k_addr, align 1, !dbg !543  ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_1 = getelementptr [32 x i8]* %k, i32 0, i32 1, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_1 = load i8* %k_addr_1, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_2 = getelementptr [32 x i8]* %k, i32 0, i32 2, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_2 = load i8* %k_addr_2, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_3 = getelementptr [32 x i8]* %k, i32 0, i32 3, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_3 = load i8* %k_addr_3, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_4 = getelementptr [32 x i8]* %k, i32 0, i32 4, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_4 = load i8* %k_addr_4, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_5 = getelementptr [32 x i8]* %k, i32 0, i32 5, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_5 = load i8* %k_addr_5, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_6 = getelementptr [32 x i8]* %k, i32 0, i32 6, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_6 = load i8* %k_addr_6, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_7 = getelementptr [32 x i8]* %k, i32 0, i32 7, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_7 = load i8* %k_addr_7, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_8 = getelementptr [32 x i8]* %k, i32 0, i32 8, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_8 = load i8* %k_addr_8, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_9 = getelementptr [32 x i8]* %k, i32 0, i32 9, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_9 = load i8* %k_addr_9, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_10 = getelementptr [32 x i8]* %k, i32 0, i32 10, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_10 = load i8* %k_addr_10, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_11 = getelementptr [32 x i8]* %k, i32 0, i32 11, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_11 = load i8* %k_addr_11, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_12 = getelementptr [32 x i8]* %k, i32 0, i32 12, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_12 = load i8* %k_addr_12, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_13 = getelementptr [32 x i8]* %k, i32 0, i32 13, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_13 = load i8* %k_addr_13, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_14 = getelementptr [32 x i8]* %k, i32 0, i32 14, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_14 = load i8* %k_addr_14, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_15 = getelementptr [32 x i8]* %k, i32 0, i32 15, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_15 = load i8* %k_addr_15, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_16 = getelementptr [32 x i8]* %k, i32 0, i32 16, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_16 = load i8* %k_addr_16, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_17 = getelementptr [32 x i8]* %k, i32 0, i32 17, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_17 = load i8* %k_addr_17, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_18 = getelementptr [32 x i8]* %k, i32 0, i32 18, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_18 = load i8* %k_addr_18, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_19 = getelementptr [32 x i8]* %k, i32 0, i32 19, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_19 = load i8* %k_addr_19, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_20 = getelementptr [32 x i8]* %k, i32 0, i32 20, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_20 = load i8* %k_addr_20, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_21 = getelementptr [32 x i8]* %k, i32 0, i32 21, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_21 = load i8* %k_addr_21, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_22 = getelementptr [32 x i8]* %k, i32 0, i32 22, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_22 = load i8* %k_addr_22, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_23 = getelementptr [32 x i8]* %k, i32 0, i32 23, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_23 = load i8* %k_addr_23, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_24 = getelementptr [32 x i8]* %k, i32 0, i32 24, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_24 = load i8* %k_addr_24, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_25 = getelementptr [32 x i8]* %k, i32 0, i32 25, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_25 = load i8* %k_addr_25, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_26 = getelementptr [32 x i8]* %k, i32 0, i32 26, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_26 = load i8* %k_addr_26, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_27 = getelementptr [32 x i8]* %k, i32 0, i32 27, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_27 = load i8* %k_addr_27, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_28 = getelementptr [32 x i8]* %k, i32 0, i32 28, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_28 = load i8* %k_addr_28, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_29 = getelementptr [32 x i8]* %k, i32 0, i32 29, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_29 = load i8* %k_addr_29, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_30 = getelementptr [32 x i8]* %k, i32 0, i32 30, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_30 = load i8* %k_addr_30, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %k_addr_31 = getelementptr [32 x i8]* %k, i32 0, i32 31, !dbg !543 ; [#uses=1 type=i8*] [debug line = 311:2]
  %k_load_31 = load i8* %k_addr_31, align 1, !dbg !543 ; [#uses=2 type=i8] [debug line = 311:2]
  %gep1112_part_set_s = call i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i256(i256 0, i8 %k_load_31, i8 %k_load_30, i8 %k_load_29, i8 %k_load_28, i8 %k_load_27, i8 %k_load_26, i8 %k_load_25, i8 %k_load_24, i8 %k_load_23, i8 %k_load_22, i8 %k_load_21, i8 %k_load_20, i8 %k_load_19, i8 %k_load_18, i8 %k_load_17, i8 %k_load_16, i8 %k_load_15, i8 %k_load_14, i8 %k_load_13, i8 %k_load_12, i8 %k_load_11, i8 %k_load_10, i8 %k_load_9, i8 %k_load_8, i8 %k_load_7, i8 %k_load_6, i8 %k_load_5, i8 %k_load_4, i8 %k_load_3, i8 %k_load_2, i8 %k_load_1, i8 %k_load, i8 %k_load_31, i8 %k_load_30, i8 %k_load_29, i8 %k_load_28, i8 %k_load_27, i8 %k_load_26, i8 %k_load_25, i8 %k_load_24, i8 %k_load_23, i8 %k_load_22, i8 %k_load_21, i8 %k_load_20, i8 %k_load_19, i8 %k_load_18, i8 %k_load_17, i8 %k_load_16, i8 %k_load_15, i8 %k_load_14, i8 %k_load_13, i8 %k_load_12, i8 %k_load_11, i8 %k_load_10, i8 %k_load_9, i8 %k_load_8, i8 %k_load_7, i8 %k_load_6, i8 %k_load_5, i8 %k_load_4, i8 %k_load_3, i8 %k_load_2, i8 %k_load_1, i8 %k_load, i256 0), !dbg !543 ; [#uses=1 type=i1024] [debug line = 311:2]
  %ctx_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %ctx_addr, i32 1), !dbg !543 ; [#uses=0 type=i1] [debug line = 311:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %ctx_addr, i1024 %gep1112_part_set_s, i128 79228162514264337589248983040), !dbg !543 ; [debug line = 311:2]
  %ctx_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %ctx_addr), !dbg !543 ; [#uses=0 type=i1] [debug line = 311:2]
  br label %.preheader, !dbg !546                 ; [debug line = 313:17]

.preheader:                                       ; preds = %0, %.preheader.preheader
  %rcon = phi i8 [ %rcon_2, %0 ], [ 1, %.preheader.preheader ] ; [#uses=1 type=i8]
  %i = phi i3 [ %phitmp, %0 ], [ -1, %.preheader.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !548), !dbg !546 ; [debug line = 313:17] [debug variable = i]
  %tmp_7 = icmp eq i3 %i, 0, !dbg !546            ; [#uses=1 type=i1] [debug line = 313:17]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) ; [#uses=0 type=i32]
  br i1 %tmp_7, label %1, label %0, !dbg !546     ; [debug line = 313:17]

; <label>:0                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str14) nounwind, !dbg !549 ; [debug line = 313:29]
  %rcon_2 = call fastcc i8 @aes_expandEncKey.1(i1024* %ctx, i25 %ctx_offset1, i8 %rcon) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rcon_2}, i64 0, metadata !551), !dbg !552 ; [debug line = 319:2] [debug variable = rcon]
  %phitmp = add i3 %i, -1, !dbg !553              ; [#uses=1 type=i3] [debug line = 320:5]
  br label %.preheader, !dbg !553                 ; [debug line = 320:5]

; <label>:1                                       ; preds = %.preheader
  %rcon_1 = alloca i8                             ; [#uses=4 type=i8*]
  call void @llvm.dbg.declare(metadata !{i8* %rcon_1}, metadata !551) ; [debug variable = rcon]
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1)
  store i8 1, i8* %rcon_1
  br label %2, !dbg !554                          ; [debug line = 324:16]

; <label>:2                                       ; preds = %6, %1
  %i_2 = phi i4 [ 1, %1 ], [ %i_1, %6 ]           ; [#uses=3 type=i4]
  %exitcond = icmp eq i4 %i_2, -2, !dbg !554      ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond, label %7, label %3, !dbg !554  ; [debug line = 324:16]

; <label>:3                                       ; preds = %2
  %tmp = trunc i4 %i_2 to i1, !dbg !554           ; [#uses=1 type=i1] [debug line = 324:16]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str15) nounwind, !dbg !556 ; [debug line = 325:6]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str15), !dbg !556 ; [#uses=1 type=i32] [debug line = 325:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 13, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !558 ; [debug line = 327:1]
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !559 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 333:9]
  br i1 %tmp, label %4, label %5, !dbg !562       ; [debug line = 334:9]

; <label>:4                                       ; preds = %3
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %6, !dbg !563                          ; [debug line = 334:21]

; <label>:5                                       ; preds = %3
  %rcon_1_load_1 = load i8* %rcon_1               ; [#uses=1 type=i8]
  %rcon_3 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_1_load_1) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rcon_3}, i64 0, metadata !551), !dbg !564 ; [debug line = 335:14] [debug variable = rcon]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  store i8 %rcon_3, i8* %rcon_1, !dbg !564        ; [debug line = 335:14]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str15, i32 %tmp_1), !dbg !565 ; [#uses=0 type=i32] [debug line = 336:5]
  %i_1 = add i4 %i_2, 1, !dbg !566                ; [#uses=1 type=i4] [debug line = 324:41]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !548), !dbg !566 ; [debug line = 324:41] [debug variable = i]
  br label %2, !dbg !566                          ; [debug line = 324:41]

; <label>:7                                       ; preds = %2
  %rcon_1_load = load i8* %rcon_1                 ; [#uses=1 type=i8]
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !567 ; [debug line = 337:5]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !568 ; [debug line = 338:5]
  %empty_17 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_1_load) ; [#uses=0 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %empty_17}, i64 0, metadata !551), !dbg !569 ; [debug line = 339:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  ret void, !dbg !570                             ; [debug line = 341:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset) {
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=16 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %buf_offset_read ; [#uses=5 type=i8*]
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !571), !dbg !575 ; [debug line = 178:28] [debug variable = buf]
  %sum = add i32 %buf_offset_read, 15             ; [#uses=1 type=i32]
  %buf_addr_1 = getelementptr i8* %buf, i32 %sum  ; [#uses=5 type=i8*]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_1, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_1), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1 = zext i8 %buf_addr_1_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_1, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_1, i8 %sbox_load, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum1 = add i32 %buf_offset_read, 14            ; [#uses=1 type=i32]
  %buf_addr_2 = getelementptr i8* %buf, i32 %sum1 ; [#uses=5 type=i8*]
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_2, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_2), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_1 = zext i8 %buf_addr_2_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_1, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_2, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_2, i8 %sbox_load_1, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_2), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum2 = add i32 %buf_offset_read, 13            ; [#uses=1 type=i32]
  %buf_addr_3 = getelementptr i8* %buf, i32 %sum2 ; [#uses=5 type=i8*]
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_3, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_3), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_2 = zext i8 %buf_addr_3_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_2, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_3, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_3, i8 %sbox_load_2, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_3), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum3 = add i32 %buf_offset_read, 12            ; [#uses=1 type=i32]
  %buf_addr_4 = getelementptr i8* %buf, i32 %sum3 ; [#uses=5 type=i8*]
  %buf_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_4, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_4_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_4), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_3 = zext i8 %buf_addr_4_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_3, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_4, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_4, i8 %sbox_load_3, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_4), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum4 = add i32 %buf_offset_read, 11            ; [#uses=1 type=i32]
  %buf_addr_5 = getelementptr i8* %buf, i32 %sum4 ; [#uses=5 type=i8*]
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_5, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_5_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_5), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_4 = zext i8 %buf_addr_5_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_4, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_4 = load i8* %sbox_addr_4, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_5, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_5, i8 %sbox_load_4, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_5), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum5 = add i32 %buf_offset_read, 10            ; [#uses=1 type=i32]
  %buf_addr_6 = getelementptr i8* %buf, i32 %sum5 ; [#uses=5 type=i8*]
  %buf_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_6, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_6_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_6), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_5 = zext i8 %buf_addr_6_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_5, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_6, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_6, i8 %sbox_load_5, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_6), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum6 = add i32 %buf_offset_read, 9             ; [#uses=1 type=i32]
  %buf_addr_7 = getelementptr i8* %buf, i32 %sum6 ; [#uses=5 type=i8*]
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_7, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_7_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_7), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_6 = zext i8 %buf_addr_7_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_6, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_7, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_7, i8 %sbox_load_6, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_7), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum7 = add i32 %buf_offset_read, 8             ; [#uses=1 type=i32]
  %buf_addr_8 = getelementptr i8* %buf, i32 %sum7 ; [#uses=5 type=i8*]
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_8, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_8_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_8), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_7 = zext i8 %buf_addr_8_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_7, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_8_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_8, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_8, i8 %sbox_load_7, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_8_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_8), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum8 = add i32 %buf_offset_read, 7             ; [#uses=1 type=i32]
  %buf_addr_9 = getelementptr i8* %buf, i32 %sum8 ; [#uses=5 type=i8*]
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_9, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_9_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_9), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_8 = zext i8 %buf_addr_9_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_8 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_8, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_8 = load i8* %sbox_addr_8, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_9, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_9, i8 %sbox_load_8, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_9), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum9 = add i32 %buf_offset_read, 6             ; [#uses=1 type=i32]
  %buf_addr_10 = getelementptr i8* %buf, i32 %sum9 ; [#uses=5 type=i8*]
  %buf_load_9_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_10, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_10_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_10), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_9 = zext i8 %buf_addr_10_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_9 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_9, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_9 = load i8* %sbox_addr_9, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_10_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_10, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_10, i8 %sbox_load_9, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_10_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_10), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum10 = add i32 %buf_offset_read, 5            ; [#uses=1 type=i32]
  %buf_addr_11 = getelementptr i8* %buf, i32 %sum10 ; [#uses=5 type=i8*]
  %buf_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_11, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_11_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_11), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_s = zext i8 %buf_addr_11_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_10 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_s, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_10 = load i8* %sbox_addr_10, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_11, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_11, i8 %sbox_load_10, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_11), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum11 = add i32 %buf_offset_read, 4            ; [#uses=1 type=i32]
  %buf_addr_12 = getelementptr i8* %buf, i32 %sum11 ; [#uses=5 type=i8*]
  %buf_load_11_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_12, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_12_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_12), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_10 = zext i8 %buf_addr_12_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_11 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_10, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_11 = load i8* %sbox_addr_11, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_12_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_12, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_12, i8 %sbox_load_11, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_12_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_12), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum12 = add i32 %buf_offset_read, 3            ; [#uses=1 type=i32]
  %buf_addr_13 = getelementptr i8* %buf, i32 %sum12 ; [#uses=5 type=i8*]
  %buf_load_12_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_13, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_13_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_13), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_11 = zext i8 %buf_addr_13_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_12 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_11, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_12 = load i8* %sbox_addr_12, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_13_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_13, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_13, i8 %sbox_load_12, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_13_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_13), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum13 = add i32 %buf_offset_read, 2            ; [#uses=1 type=i32]
  %buf_addr_14 = getelementptr i8* %buf, i32 %sum13 ; [#uses=5 type=i8*]
  %buf_load_13_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_14, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_14_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_14), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_12 = zext i8 %buf_addr_14_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_13 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_12, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_13 = load i8* %sbox_addr_13, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_14_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_14, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_14, i8 %sbox_load_13, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_14_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_14), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %sum14 = add i32 %buf_offset_read, 1            ; [#uses=1 type=i32]
  %buf_addr_15 = getelementptr i8* %buf, i32 %sum14 ; [#uses=5 type=i8*]
  %buf_load_14_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_15, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_15_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_15), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_13 = zext i8 %buf_addr_15_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_14 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_13, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_14 = load i8* %sbox_addr_14, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_15_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_15, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_15, i8 %sbox_load_14, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_15_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_15), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_load_15_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1_14 = zext i8 %buf_addr_read to i32, !dbg !576 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr_15 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_14, !dbg !576 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load_15 = load i8* %sbox_addr_15, align 1, !dbg !576 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %sbox_load_15, i1 true), !dbg !576 ; [debug line = 189:2]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !576 ; [#uses=0 type=i1] [debug line = 189:2]
  ret void, !dbg !579                             ; [debug line = 191:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=12 type=i32]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !580), !dbg !582 ; [debug line = 227:29] [debug variable = buf]
  %sum = add i32 %buf_offset_read, 1              ; [#uses=1 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %sum    ; [#uses=5 type=i8*]
  %i_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !583 ; [#uses=0 type=i1] [debug line = 231:5]
  %i = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !583 ; [#uses=1 type=i8] [debug line = 231:5]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !585), !dbg !583 ; [debug line = 231:5] [debug variable = i]
  %sum1 = add i32 %buf_offset_read, 5             ; [#uses=1 type=i32]
  %buf_addr_16 = getelementptr i8* %buf, i32 %sum1 ; [#uses=5 type=i8*]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_16, i32 1), !dbg !586 ; [#uses=0 type=i1] [debug line = 231:17]
  %buf_addr_16_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_16), !dbg !586 ; [#uses=1 type=i8] [debug line = 231:17]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !586 ; [#uses=0 type=i1] [debug line = 231:17]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %buf_addr_16_read, i1 true), !dbg !586 ; [debug line = 231:17]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !586 ; [#uses=0 type=i1] [debug line = 231:17]
  %sum2 = add i32 %buf_offset_read, 9             ; [#uses=1 type=i32]
  %buf_addr_17 = getelementptr i8* %buf, i32 %sum2 ; [#uses=5 type=i8*]
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_17, i32 1), !dbg !587 ; [#uses=0 type=i1] [debug line = 231:34]
  %buf_addr_17_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_17), !dbg !587 ; [#uses=1 type=i8] [debug line = 231:34]
  %buf_addr_16_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_16, i32 1), !dbg !587 ; [#uses=0 type=i1] [debug line = 231:34]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_16, i8 %buf_addr_17_read, i1 true), !dbg !587 ; [debug line = 231:34]
  %buf_addr_16_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_16), !dbg !587 ; [#uses=0 type=i1] [debug line = 231:34]
  %sum3 = add i32 %buf_offset_read, 13            ; [#uses=1 type=i32]
  %buf_addr_18 = getelementptr i8* %buf, i32 %sum3 ; [#uses=5 type=i8*]
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_18, i32 1), !dbg !588 ; [#uses=0 type=i1] [debug line = 231:51]
  %buf_addr_18_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_18), !dbg !588 ; [#uses=1 type=i8] [debug line = 231:51]
  %buf_addr_17_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_17, i32 1), !dbg !588 ; [#uses=0 type=i1] [debug line = 231:51]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_17, i8 %buf_addr_18_read, i1 true), !dbg !588 ; [debug line = 231:51]
  %buf_addr_17_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_17), !dbg !588 ; [#uses=0 type=i1] [debug line = 231:51]
  %buf_addr_18_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_18, i32 1), !dbg !589 ; [#uses=0 type=i1] [debug line = 231:69]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_18, i8 %i, i1 true), !dbg !589 ; [debug line = 231:69]
  %buf_addr_18_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_18), !dbg !589 ; [#uses=0 type=i1] [debug line = 231:69]
  %sum4 = add i32 %buf_offset_read, 10            ; [#uses=1 type=i32]
  %buf_addr_19 = getelementptr i8* %buf, i32 %sum4 ; [#uses=5 type=i8*]
  %i_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_19, i32 1), !dbg !590 ; [#uses=0 type=i1] [debug line = 232:5]
  %i_2 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_19), !dbg !590 ; [#uses=1 type=i8] [debug line = 232:5]
  call void @llvm.dbg.value(metadata !{i8 %i_2}, i64 0, metadata !585), !dbg !590 ; [debug line = 232:5] [debug variable = i]
  %sum5 = add i32 %buf_offset_read, 2             ; [#uses=1 type=i32]
  %buf_addr_20 = getelementptr i8* %buf, i32 %sum5 ; [#uses=5 type=i8*]
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_20, i32 1), !dbg !591 ; [#uses=0 type=i1] [debug line = 232:18]
  %buf_addr_20_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_20), !dbg !591 ; [#uses=1 type=i8] [debug line = 232:18]
  %buf_addr_19_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_19, i32 1), !dbg !591 ; [#uses=0 type=i1] [debug line = 232:18]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_19, i8 %buf_addr_20_read, i1 true), !dbg !591 ; [debug line = 232:18]
  %buf_addr_19_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_19), !dbg !591 ; [#uses=0 type=i1] [debug line = 232:18]
  %buf_addr_20_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_20, i32 1), !dbg !592 ; [#uses=0 type=i1] [debug line = 232:36]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_20, i8 %i_2, i1 true), !dbg !592 ; [debug line = 232:36]
  %buf_addr_20_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_20), !dbg !592 ; [#uses=0 type=i1] [debug line = 232:36]
  %sum6 = add i32 %buf_offset_read, 3             ; [#uses=1 type=i32]
  %buf_addr_21 = getelementptr i8* %buf, i32 %sum6 ; [#uses=5 type=i8*]
  %j_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_21, i32 1), !dbg !593 ; [#uses=0 type=i1] [debug line = 233:5]
  %j = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_21), !dbg !593 ; [#uses=1 type=i8] [debug line = 233:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !594), !dbg !593 ; [debug line = 233:5] [debug variable = j]
  %sum7 = add i32 %buf_offset_read, 15            ; [#uses=1 type=i32]
  %buf_addr_22 = getelementptr i8* %buf, i32 %sum7 ; [#uses=5 type=i8*]
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_22, i32 1), !dbg !595 ; [#uses=0 type=i1] [debug line = 233:17]
  %buf_addr_22_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_22), !dbg !595 ; [#uses=1 type=i8] [debug line = 233:17]
  %buf_addr_21_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_21, i32 1), !dbg !595 ; [#uses=0 type=i1] [debug line = 233:17]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_21, i8 %buf_addr_22_read, i1 true), !dbg !595 ; [debug line = 233:17]
  %buf_addr_21_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_21), !dbg !595 ; [#uses=0 type=i1] [debug line = 233:17]
  %sum8 = add i32 %buf_offset_read, 11            ; [#uses=1 type=i32]
  %buf_addr_23 = getelementptr i8* %buf, i32 %sum8 ; [#uses=5 type=i8*]
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_23, i32 1), !dbg !596 ; [#uses=0 type=i1] [debug line = 233:35]
  %buf_addr_23_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_23), !dbg !596 ; [#uses=1 type=i8] [debug line = 233:35]
  %buf_addr_22_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_22, i32 1), !dbg !596 ; [#uses=0 type=i1] [debug line = 233:35]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_22, i8 %buf_addr_23_read, i1 true), !dbg !596 ; [debug line = 233:35]
  %buf_addr_22_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_22), !dbg !596 ; [#uses=0 type=i1] [debug line = 233:35]
  %sum9 = add i32 %buf_offset_read, 7             ; [#uses=1 type=i32]
  %buf_addr_24 = getelementptr i8* %buf, i32 %sum9 ; [#uses=5 type=i8*]
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_24, i32 1), !dbg !597 ; [#uses=0 type=i1] [debug line = 233:54]
  %buf_addr_24_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_24), !dbg !597 ; [#uses=1 type=i8] [debug line = 233:54]
  %buf_addr_23_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_23, i32 1), !dbg !597 ; [#uses=0 type=i1] [debug line = 233:54]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_23, i8 %buf_addr_24_read, i1 true), !dbg !597 ; [debug line = 233:54]
  %buf_addr_23_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_23), !dbg !597 ; [#uses=0 type=i1] [debug line = 233:54]
  %buf_addr_24_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_24, i32 1), !dbg !598 ; [#uses=0 type=i1] [debug line = 233:72]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_24, i8 %j, i1 true), !dbg !598 ; [debug line = 233:72]
  %buf_addr_24_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_24), !dbg !598 ; [#uses=0 type=i1] [debug line = 233:72]
  %sum10 = add i32 %buf_offset_read, 14           ; [#uses=1 type=i32]
  %buf_addr_25 = getelementptr i8* %buf, i32 %sum10 ; [#uses=5 type=i8*]
  %j_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_25, i32 1), !dbg !599 ; [#uses=0 type=i1] [debug line = 234:5]
  %j_1 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_25), !dbg !599 ; [#uses=1 type=i8] [debug line = 234:5]
  call void @llvm.dbg.value(metadata !{i8 %j_1}, i64 0, metadata !594), !dbg !599 ; [debug line = 234:5] [debug variable = j]
  %sum11 = add i32 %buf_offset_read, 6            ; [#uses=1 type=i32]
  %buf_addr_26 = getelementptr i8* %buf, i32 %sum11 ; [#uses=5 type=i8*]
  %buf_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_26, i32 1), !dbg !600 ; [#uses=0 type=i1] [debug line = 234:18]
  %buf_addr_26_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_26), !dbg !600 ; [#uses=1 type=i8] [debug line = 234:18]
  %buf_addr_25_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_25, i32 1), !dbg !600 ; [#uses=0 type=i1] [debug line = 234:18]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_25, i8 %buf_addr_26_read, i1 true), !dbg !600 ; [debug line = 234:18]
  %buf_addr_25_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_25), !dbg !600 ; [#uses=0 type=i1] [debug line = 234:18]
  %buf_addr_26_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_26, i32 1), !dbg !601 ; [#uses=0 type=i1] [debug line = 234:36]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_26, i8 %j_1, i1 true), !dbg !601 ; [debug line = 234:36]
  %buf_addr_26_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_26), !dbg !601 ; [#uses=0 type=i1] [debug line = 234:36]
  ret void, !dbg !602                             ; [debug line = 236:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset) {
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=16 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %buf_offset_read ; [#uses=5 type=i8*]
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !603), !dbg !605 ; [debug line = 239:30] [debug variable = buf]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !606 ; [#uses=0 type=i1] [debug line = 250:2]
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !606 ; [#uses=3 type=i8] [debug line = 250:2]
  %sum1 = add i32 1, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_27 = getelementptr i8* %buf, i32 %sum1 ; [#uses=5 type=i8*]
  %buf_load_20_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_27, i32 1), !dbg !610 ; [#uses=0 type=i1] [debug line = 250:14]
  %buf_addr_27_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_27), !dbg !610 ; [#uses=3 type=i8] [debug line = 250:14]
  %sum2 = add i32 2, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_28 = getelementptr i8* %buf, i32 %sum2 ; [#uses=5 type=i8*]
  %buf_load_21_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_28, i32 1), !dbg !611 ; [#uses=0 type=i1] [debug line = 250:30]
  %buf_addr_28_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_28), !dbg !611 ; [#uses=4 type=i8] [debug line = 250:30]
  %sum3 = add i32 3, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_29 = getelementptr i8* %buf, i32 %sum3 ; [#uses=5 type=i8*]
  %buf_load_22_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_29, i32 1), !dbg !612 ; [#uses=0 type=i1] [debug line = 250:46]
  %buf_addr_29_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_29), !dbg !612 ; [#uses=3 type=i8] [debug line = 250:46]
  %x_assign = xor i8 %buf_addr_27_read, %buf_addr_read, !dbg !613 ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp_6 = xor i8 %buf_addr_28_read, %x_assign, !dbg !613 ; [#uses=2 type=i8] [debug line = 251:9]
  %e = xor i8 %buf_addr_29_read, %tmp_6, !dbg !613 ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign}, i64 0, metadata !614), !dbg !619 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp_2 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7), !dbg !620 ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp_3 = shl i8 %x_assign, 1, !dbg !620         ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp_2_i = xor i8 %tmp_3, 27, !dbg !620         ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp_4_i = select i1 %tmp_2, i8 %tmp_2_i, i8 %tmp_3, !dbg !620 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp = xor i8 %tmp_4_i, %e, !dbg !618           ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp_9 = xor i8 %tmp, %buf_addr_read, !dbg !618 ; [#uses=1 type=i8] [debug line = 252:23]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !618 ; [#uses=0 type=i1] [debug line = 252:23]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_9, i1 true), !dbg !618 ; [debug line = 252:23]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !618 ; [#uses=0 type=i1] [debug line = 252:23]
  %x_assign_1 = xor i8 %buf_addr_28_read, %buf_addr_27_read, !dbg !622 ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !623), !dbg !624 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7), !dbg !625 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp_8 = shl i8 %x_assign_1, 1, !dbg !625       ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp_2_i1 = xor i8 %tmp_8, 27, !dbg !625        ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp_4_i1 = select i1 %tmp_5, i8 %tmp_2_i1, i8 %tmp_8, !dbg !625 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp1 = xor i8 %tmp_4_i1, %e, !dbg !622         ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp_1 = xor i8 %tmp1, %buf_addr_27_read, !dbg !622 ; [#uses=1 type=i8] [debug line = 252:54]
  %buf_addr_27_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_27, i32 1), !dbg !622 ; [#uses=0 type=i1] [debug line = 252:54]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_27, i8 %tmp_1, i1 true), !dbg !622 ; [debug line = 252:54]
  %buf_addr_27_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_27), !dbg !622 ; [#uses=0 type=i1] [debug line = 252:54]
  %x_assign_2 = xor i8 %buf_addr_29_read, %buf_addr_28_read, !dbg !626 ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_2}, i64 0, metadata !627), !dbg !628 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2, i32 7), !dbg !629 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp_11 = shl i8 %x_assign_2, 1, !dbg !629      ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp_2_i2 = xor i8 %tmp_11, 27, !dbg !629       ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp_4_i2 = select i1 %tmp_10, i8 %tmp_2_i2, i8 %tmp_11, !dbg !629 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp2 = xor i8 %tmp_4_i2, %e, !dbg !626         ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp_4 = xor i8 %tmp2, %buf_addr_28_read, !dbg !626 ; [#uses=1 type=i8] [debug line = 253:25]
  %buf_addr_28_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_28, i32 1), !dbg !626 ; [#uses=0 type=i1] [debug line = 253:25]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_28, i8 %tmp_4, i1 true), !dbg !626 ; [debug line = 253:25]
  %buf_addr_28_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_28), !dbg !626 ; [#uses=0 type=i1] [debug line = 253:25]
  %x_assign_3 = xor i8 %buf_addr_29_read, %buf_addr_read, !dbg !630 ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_3}, i64 0, metadata !631), !dbg !632 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7), !dbg !633 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp_13 = shl i8 %x_assign_3, 1, !dbg !633      ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp_2_i3 = xor i8 %tmp_13, 27, !dbg !633       ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_4_i3 = select i1 %tmp_12, i8 %tmp_2_i3, i8 %tmp_13, !dbg !633 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_7 = xor i8 %tmp_4_i3, %tmp_6, !dbg !630    ; [#uses=1 type=i8] [debug line = 253:56]
  %buf_addr_29_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_29, i32 1), !dbg !630 ; [#uses=0 type=i1] [debug line = 253:56]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_29, i8 %tmp_7, i1 true), !dbg !630 ; [debug line = 253:56]
  %buf_addr_29_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_29), !dbg !630 ; [#uses=0 type=i1] [debug line = 253:56]
  %sum4 = add i32 4, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_30 = getelementptr i8* %buf, i32 %sum4 ; [#uses=5 type=i8*]
  %buf_load_23_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_30, i32 1), !dbg !606 ; [#uses=0 type=i1] [debug line = 250:2]
  %buf_addr_30_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_30), !dbg !606 ; [#uses=3 type=i8] [debug line = 250:2]
  %sum5 = add i32 5, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_31 = getelementptr i8* %buf, i32 %sum5 ; [#uses=5 type=i8*]
  %buf_load_24_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_31, i32 1), !dbg !610 ; [#uses=0 type=i1] [debug line = 250:14]
  %buf_addr_31_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_31), !dbg !610 ; [#uses=3 type=i8] [debug line = 250:14]
  %sum6 = add i32 6, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_32 = getelementptr i8* %buf, i32 %sum6 ; [#uses=5 type=i8*]
  %buf_load_25_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_32, i32 1), !dbg !611 ; [#uses=0 type=i1] [debug line = 250:30]
  %buf_addr_32_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_32), !dbg !611 ; [#uses=4 type=i8] [debug line = 250:30]
  %sum7 = add i32 7, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_33 = getelementptr i8* %buf, i32 %sum7 ; [#uses=5 type=i8*]
  %buf_load_26_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_33, i32 1), !dbg !612 ; [#uses=0 type=i1] [debug line = 250:46]
  %buf_addr_33_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_33), !dbg !612 ; [#uses=3 type=i8] [debug line = 250:46]
  %x_assign_4 = xor i8 %buf_addr_31_read, %buf_addr_30_read, !dbg !613 ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp_6_1 = xor i8 %buf_addr_32_read, %x_assign_4, !dbg !613 ; [#uses=2 type=i8] [debug line = 251:9]
  %e_1 = xor i8 %buf_addr_33_read, %tmp_6_1, !dbg !613 ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_4}, i64 0, metadata !614), !dbg !619 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_4, i32 7), !dbg !620 ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp_15 = shl i8 %x_assign_4, 1, !dbg !620      ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp_2_i4 = xor i8 %tmp_15, 27, !dbg !620       ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp_4_i4 = select i1 %tmp_14, i8 %tmp_2_i4, i8 %tmp_15, !dbg !620 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp3 = xor i8 %tmp_4_i4, %e_1, !dbg !618       ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp_9_1 = xor i8 %tmp3, %buf_addr_30_read, !dbg !618 ; [#uses=1 type=i8] [debug line = 252:23]
  %buf_addr_30_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_30, i32 1), !dbg !618 ; [#uses=0 type=i1] [debug line = 252:23]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_30, i8 %tmp_9_1, i1 true), !dbg !618 ; [debug line = 252:23]
  %buf_addr_30_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_30), !dbg !618 ; [#uses=0 type=i1] [debug line = 252:23]
  %x_assign_5 = xor i8 %buf_addr_32_read, %buf_addr_31_read, !dbg !622 ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_5}, i64 0, metadata !623), !dbg !624 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_5, i32 7), !dbg !625 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp_17 = shl i8 %x_assign_5, 1, !dbg !625      ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp_2_i5 = xor i8 %tmp_17, 27, !dbg !625       ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp_4_i5 = select i1 %tmp_16, i8 %tmp_2_i5, i8 %tmp_17, !dbg !625 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp4 = xor i8 %tmp_4_i5, %e_1, !dbg !622       ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp_13_1 = xor i8 %tmp4, %buf_addr_31_read, !dbg !622 ; [#uses=1 type=i8] [debug line = 252:54]
  %buf_addr_31_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_31, i32 1), !dbg !622 ; [#uses=0 type=i1] [debug line = 252:54]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_31, i8 %tmp_13_1, i1 true), !dbg !622 ; [debug line = 252:54]
  %buf_addr_31_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_31), !dbg !622 ; [#uses=0 type=i1] [debug line = 252:54]
  %x_assign_6 = xor i8 %buf_addr_33_read, %buf_addr_32_read, !dbg !626 ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_6}, i64 0, metadata !627), !dbg !628 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_6, i32 7), !dbg !629 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp_19 = shl i8 %x_assign_6, 1, !dbg !629      ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp_2_i6 = xor i8 %tmp_19, 27, !dbg !629       ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp_4_i6 = select i1 %tmp_18, i8 %tmp_2_i6, i8 %tmp_19, !dbg !629 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp5 = xor i8 %tmp_4_i6, %e_1, !dbg !626       ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp_17_1 = xor i8 %tmp5, %buf_addr_32_read, !dbg !626 ; [#uses=1 type=i8] [debug line = 253:25]
  %buf_addr_32_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_32, i32 1), !dbg !626 ; [#uses=0 type=i1] [debug line = 253:25]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_32, i8 %tmp_17_1, i1 true), !dbg !626 ; [debug line = 253:25]
  %buf_addr_32_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_32), !dbg !626 ; [#uses=0 type=i1] [debug line = 253:25]
  %x_assign_7 = xor i8 %buf_addr_33_read, %buf_addr_30_read, !dbg !630 ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_7}, i64 0, metadata !631), !dbg !632 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_7, i32 7), !dbg !633 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp_21 = shl i8 %x_assign_7, 1, !dbg !633      ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp_2_i7 = xor i8 %tmp_21, 27, !dbg !633       ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_4_i7 = select i1 %tmp_20, i8 %tmp_2_i7, i8 %tmp_21, !dbg !633 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_21_1 = xor i8 %tmp_4_i7, %tmp_6_1, !dbg !630 ; [#uses=1 type=i8] [debug line = 253:56]
  %buf_addr_33_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_33, i32 1), !dbg !630 ; [#uses=0 type=i1] [debug line = 253:56]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_33, i8 %tmp_21_1, i1 true), !dbg !630 ; [debug line = 253:56]
  %buf_addr_33_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_33), !dbg !630 ; [#uses=0 type=i1] [debug line = 253:56]
  %sum8 = add i32 8, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_34 = getelementptr i8* %buf, i32 %sum8 ; [#uses=5 type=i8*]
  %buf_load_27_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_34, i32 1), !dbg !606 ; [#uses=0 type=i1] [debug line = 250:2]
  %buf_addr_34_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_34), !dbg !606 ; [#uses=3 type=i8] [debug line = 250:2]
  %sum9 = add i32 9, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_35 = getelementptr i8* %buf, i32 %sum9 ; [#uses=5 type=i8*]
  %buf_load_28_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_35, i32 1), !dbg !610 ; [#uses=0 type=i1] [debug line = 250:14]
  %buf_addr_35_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_35), !dbg !610 ; [#uses=3 type=i8] [debug line = 250:14]
  %sum10 = add i32 10, %buf_offset_read           ; [#uses=1 type=i32]
  %buf_addr_36 = getelementptr i8* %buf, i32 %sum10 ; [#uses=5 type=i8*]
  %buf_load_29_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_36, i32 1), !dbg !611 ; [#uses=0 type=i1] [debug line = 250:30]
  %buf_addr_36_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_36), !dbg !611 ; [#uses=4 type=i8] [debug line = 250:30]
  %sum11 = add i32 11, %buf_offset_read           ; [#uses=1 type=i32]
  %buf_addr_37 = getelementptr i8* %buf, i32 %sum11 ; [#uses=5 type=i8*]
  %buf_load_30_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_37, i32 1), !dbg !612 ; [#uses=0 type=i1] [debug line = 250:46]
  %buf_addr_37_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_37), !dbg !612 ; [#uses=3 type=i8] [debug line = 250:46]
  %x_assign_8 = xor i8 %buf_addr_35_read, %buf_addr_34_read, !dbg !613 ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp_6_2 = xor i8 %buf_addr_36_read, %x_assign_8, !dbg !613 ; [#uses=2 type=i8] [debug line = 251:9]
  %e_2 = xor i8 %buf_addr_37_read, %tmp_6_2, !dbg !613 ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_8}, i64 0, metadata !614), !dbg !619 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_8, i32 7), !dbg !620 ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp_23 = shl i8 %x_assign_8, 1, !dbg !620      ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp_2_i8 = xor i8 %tmp_23, 27, !dbg !620       ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp_4_i8 = select i1 %tmp_22, i8 %tmp_2_i8, i8 %tmp_23, !dbg !620 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp6 = xor i8 %tmp_4_i8, %e_2, !dbg !618       ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp_9_2 = xor i8 %tmp6, %buf_addr_34_read, !dbg !618 ; [#uses=1 type=i8] [debug line = 252:23]
  %buf_addr_34_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_34, i32 1), !dbg !618 ; [#uses=0 type=i1] [debug line = 252:23]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_34, i8 %tmp_9_2, i1 true), !dbg !618 ; [debug line = 252:23]
  %buf_addr_34_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_34), !dbg !618 ; [#uses=0 type=i1] [debug line = 252:23]
  %x_assign_9 = xor i8 %buf_addr_36_read, %buf_addr_35_read, !dbg !622 ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_9}, i64 0, metadata !623), !dbg !624 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_9, i32 7), !dbg !625 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp_25 = shl i8 %x_assign_9, 1, !dbg !625      ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp_2_i9 = xor i8 %tmp_25, 27, !dbg !625       ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp_4_i9 = select i1 %tmp_24, i8 %tmp_2_i9, i8 %tmp_25, !dbg !625 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp7 = xor i8 %tmp_4_i9, %e_2, !dbg !622       ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp_13_2 = xor i8 %tmp7, %buf_addr_35_read, !dbg !622 ; [#uses=1 type=i8] [debug line = 252:54]
  %buf_addr_35_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_35, i32 1), !dbg !622 ; [#uses=0 type=i1] [debug line = 252:54]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_35, i8 %tmp_13_2, i1 true), !dbg !622 ; [debug line = 252:54]
  %buf_addr_35_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_35), !dbg !622 ; [#uses=0 type=i1] [debug line = 252:54]
  %x_assign_s = xor i8 %buf_addr_37_read, %buf_addr_36_read, !dbg !626 ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_s}, i64 0, metadata !627), !dbg !628 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp_26 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_s, i32 7), !dbg !629 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp_27 = shl i8 %x_assign_s, 1, !dbg !629      ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp_2_i10 = xor i8 %tmp_27, 27, !dbg !629      ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp_4_i10 = select i1 %tmp_26, i8 %tmp_2_i10, i8 %tmp_27, !dbg !629 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp8 = xor i8 %tmp_4_i10, %e_2, !dbg !626      ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp_17_2 = xor i8 %tmp8, %buf_addr_36_read, !dbg !626 ; [#uses=1 type=i8] [debug line = 253:25]
  %buf_addr_36_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_36, i32 1), !dbg !626 ; [#uses=0 type=i1] [debug line = 253:25]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_36, i8 %tmp_17_2, i1 true), !dbg !626 ; [debug line = 253:25]
  %buf_addr_36_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_36), !dbg !626 ; [#uses=0 type=i1] [debug line = 253:25]
  %x_assign_10 = xor i8 %buf_addr_37_read, %buf_addr_34_read, !dbg !630 ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_10}, i64 0, metadata !631), !dbg !632 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_10, i32 7), !dbg !633 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp_29 = shl i8 %x_assign_10, 1, !dbg !633     ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp_2_i11 = xor i8 %tmp_29, 27, !dbg !633      ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_4_i11 = select i1 %tmp_28, i8 %tmp_2_i11, i8 %tmp_29, !dbg !633 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_21_2 = xor i8 %tmp_4_i11, %tmp_6_2, !dbg !630 ; [#uses=1 type=i8] [debug line = 253:56]
  %buf_addr_37_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_37, i32 1), !dbg !630 ; [#uses=0 type=i1] [debug line = 253:56]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_37, i8 %tmp_21_2, i1 true), !dbg !630 ; [debug line = 253:56]
  %buf_addr_37_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_37), !dbg !630 ; [#uses=0 type=i1] [debug line = 253:56]
  %sum12 = add i32 12, %buf_offset_read           ; [#uses=1 type=i32]
  %buf_addr_38 = getelementptr i8* %buf, i32 %sum12 ; [#uses=5 type=i8*]
  %buf_load_31_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_38, i32 1), !dbg !606 ; [#uses=0 type=i1] [debug line = 250:2]
  %buf_addr_38_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_38), !dbg !606 ; [#uses=3 type=i8] [debug line = 250:2]
  %sum13 = add i32 13, %buf_offset_read           ; [#uses=1 type=i32]
  %buf_addr_39 = getelementptr i8* %buf, i32 %sum13 ; [#uses=5 type=i8*]
  %buf_load_32_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_39, i32 1), !dbg !610 ; [#uses=0 type=i1] [debug line = 250:14]
  %buf_addr_39_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_39), !dbg !610 ; [#uses=3 type=i8] [debug line = 250:14]
  %sum14 = add i32 14, %buf_offset_read           ; [#uses=1 type=i32]
  %buf_addr_40 = getelementptr i8* %buf, i32 %sum14 ; [#uses=5 type=i8*]
  %buf_load_33_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_40, i32 1), !dbg !611 ; [#uses=0 type=i1] [debug line = 250:30]
  %buf_addr_40_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_40), !dbg !611 ; [#uses=4 type=i8] [debug line = 250:30]
  %sum = add i32 15, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_41 = getelementptr i8* %buf, i32 %sum ; [#uses=5 type=i8*]
  %buf_load_34_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_41, i32 1), !dbg !612 ; [#uses=0 type=i1] [debug line = 250:46]
  %buf_addr_41_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_41), !dbg !612 ; [#uses=3 type=i8] [debug line = 250:46]
  %x_assign_11 = xor i8 %buf_addr_39_read, %buf_addr_38_read, !dbg !613 ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp_6_3 = xor i8 %buf_addr_40_read, %x_assign_11, !dbg !613 ; [#uses=2 type=i8] [debug line = 251:9]
  %e_3 = xor i8 %buf_addr_41_read, %tmp_6_3, !dbg !613 ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_11}, i64 0, metadata !614), !dbg !619 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_11, i32 7), !dbg !620 ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp_31 = shl i8 %x_assign_11, 1, !dbg !620     ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp_2_i12 = xor i8 %tmp_31, 27, !dbg !620      ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp_4_i12 = select i1 %tmp_30, i8 %tmp_2_i12, i8 %tmp_31, !dbg !620 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp9 = xor i8 %tmp_4_i12, %e_3, !dbg !618      ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp_9_3 = xor i8 %tmp9, %buf_addr_38_read, !dbg !618 ; [#uses=1 type=i8] [debug line = 252:23]
  %buf_addr_38_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_38, i32 1), !dbg !618 ; [#uses=0 type=i1] [debug line = 252:23]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_38, i8 %tmp_9_3, i1 true), !dbg !618 ; [debug line = 252:23]
  %buf_addr_38_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_38), !dbg !618 ; [#uses=0 type=i1] [debug line = 252:23]
  %x_assign_12 = xor i8 %buf_addr_40_read, %buf_addr_39_read, !dbg !622 ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_12}, i64 0, metadata !623), !dbg !624 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_12, i32 7), !dbg !625 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp_33 = shl i8 %x_assign_12, 1, !dbg !625     ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp_2_i13 = xor i8 %tmp_33, 27, !dbg !625      ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp_4_i13 = select i1 %tmp_32, i8 %tmp_2_i13, i8 %tmp_33, !dbg !625 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp10 = xor i8 %tmp_4_i13, %e_3, !dbg !622     ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp_13_3 = xor i8 %tmp10, %buf_addr_39_read, !dbg !622 ; [#uses=1 type=i8] [debug line = 252:54]
  %buf_addr_39_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_39, i32 1), !dbg !622 ; [#uses=0 type=i1] [debug line = 252:54]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_39, i8 %tmp_13_3, i1 true), !dbg !622 ; [debug line = 252:54]
  %buf_addr_39_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_39), !dbg !622 ; [#uses=0 type=i1] [debug line = 252:54]
  %x_assign_13 = xor i8 %buf_addr_41_read, %buf_addr_40_read, !dbg !626 ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_13}, i64 0, metadata !627), !dbg !628 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_13, i32 7), !dbg !629 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp_35 = shl i8 %x_assign_13, 1, !dbg !629     ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp_2_i14 = xor i8 %tmp_35, 27, !dbg !629      ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp_4_i14 = select i1 %tmp_34, i8 %tmp_2_i14, i8 %tmp_35, !dbg !629 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp11 = xor i8 %tmp_4_i14, %e_3, !dbg !626     ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp_17_3 = xor i8 %tmp11, %buf_addr_40_read, !dbg !626 ; [#uses=1 type=i8] [debug line = 253:25]
  %buf_addr_40_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_40, i32 1), !dbg !626 ; [#uses=0 type=i1] [debug line = 253:25]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_40, i8 %tmp_17_3, i1 true), !dbg !626 ; [debug line = 253:25]
  %buf_addr_40_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_40), !dbg !626 ; [#uses=0 type=i1] [debug line = 253:25]
  %x_assign_14 = xor i8 %buf_addr_41_read, %buf_addr_38_read, !dbg !630 ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_14}, i64 0, metadata !631), !dbg !632 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_14, i32 7), !dbg !633 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp_37 = shl i8 %x_assign_14, 1, !dbg !633     ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp_2_i15 = xor i8 %tmp_37, 27, !dbg !633      ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_4_i15 = select i1 %tmp_36, i8 %tmp_2_i15, i8 %tmp_37, !dbg !633 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_21_3 = xor i8 %tmp_4_i15, %tmp_6_3, !dbg !630 ; [#uses=1 type=i8] [debug line = 253:56]
  %buf_addr_41_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_41, i32 1), !dbg !630 ; [#uses=0 type=i1] [debug line = 253:56]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_41, i8 %tmp_21_3, i1 true), !dbg !630 ; [debug line = 253:56]
  %buf_addr_41_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_41), !dbg !630 ; [#uses=0 type=i1] [debug line = 253:56]
  ret void, !dbg !634                             ; [debug line = 255:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandEncKey.1(i1024* %k, i25 %k_offset, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_1}, i64 0, metadata !635), !dbg !639 ; [debug line = 258:44] [debug variable = rc]
  %k_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %k_offset) ; [#uses=1 type=i25]
  %k_offset_cast = zext i25 %k_offset_read to i32 ; [#uses=1 type=i32]
  %k_addr = getelementptr i1024* %k, i32 %k_offset_cast ; [#uses=11 type=i1024*]
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i1024* %k}, i64 0, metadata !640), !dbg !642 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !635), !dbg !639 ; [debug line = 258:44] [debug variable = rc]
  %k_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !643 ; [#uses=0 type=i1] [debug line = 262:5]
  %k_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %k_addr), !dbg !643 ; [#uses=10 type=i1024] [debug line = 262:5]
  %p_new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %k_addr_read, i32 512, i32 767), !dbg !643 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 744, i32 751), !dbg !643 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp = zext i8 %tmp_2 to i32, !dbg !643         ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !643 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !643 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 512, i32 519), !dbg !643 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %tmp_3, %rc_read_1, !dbg !643    ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_1 = xor i8 %tmp1, %sbox_load, !dbg !643    ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_4 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %p_new, i8 %tmp_1, i32 0, i32 7), !dbg !643 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 752, i32 759), !dbg !645 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_6 = zext i8 %tmp_5 to i32, !dbg !645       ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_6, !dbg !645 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !645 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 520, i32 527), !dbg !645 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_8 = xor i8 %sbox_load_1, %tmp_7, !dbg !645 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_9 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_4, i8 %tmp_8, i32 8, i32 15), !dbg !645 ; [#uses=1 type=i256] [debug line = 263:5]
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 760, i32 767), !dbg !646 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_10 = zext i8 %tmp_s to i32, !dbg !646      ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_10, !dbg !646 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !646 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 528, i32 535), !dbg !646 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_12 = xor i8 %sbox_load_2, %tmp_11, !dbg !646 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_13 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_9, i8 %tmp_12, i32 16, i32 23), !dbg !646 ; [#uses=1 type=i256] [debug line = 264:5]
  %tmp_14 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 736, i32 743), !dbg !647 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_15 = zext i8 %tmp_14 to i32, !dbg !647     ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_15, !dbg !647 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !647 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_16 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 536, i32 543), !dbg !647 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_17 = xor i8 %sbox_load_3, %tmp_16, !dbg !647 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_18 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_13, i8 %tmp_17, i32 24, i32 31), !dbg !647 ; [#uses=1 type=i256] [debug line = 265:5]
  %gep25188190_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %k_addr_read, i256 %tmp_18, i32 512, i32 767), !dbg !647 ; [#uses=1 type=i1024] [debug line = 265:5]
  %tmp_38 = shl i8 %rc_read_1, 1, !dbg !648       ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp_44 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7), !dbg !648 ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp_23_cast_cast = select i1 %tmp_44, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp_19 = xor i8 %tmp_23_cast_cast, %tmp_38, !dbg !648 ; [#uses=1 type=i8] [debug line = 266:5]
  br label %1, !dbg !649                          ; [debug line = 268:16]

; <label>:1                                       ; preds = %2, %0
  %p_new1 = phi i1024 [ %gep25188190_part_set, %0 ], [ %gep17128130_part_set, %2 ] ; [#uses=14 type=i1024]
  %i = phi i5 [ 4, %0 ], [ %i_3, %2 ]             ; [#uses=3 type=i5]
  %tmp_54 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !649 ; [#uses=1 type=i1] [debug line = 268:16]
  br i1 %tmp_54, label %3, label %2, !dbg !649    ; [debug line = 268:16]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str5) nounwind, !dbg !651 ; [debug line = 269:6]
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str5), !dbg !651 ; [#uses=1 type=i32] [debug line = 269:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !653 ; [debug line = 271:1]
  %tmp_71 = trunc i5 %i to i4, !dbg !654          ; [#uses=8 type=i4] [debug line = 275:2]
  %tmp_24 = add i4 -4, %tmp_71, !dbg !654         ; [#uses=1 type=i4] [debug line = 275:2]
  %p_new2 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %p_new1, i32 512, i32 767), !dbg !654 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp_26 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_24, i3 0) ; [#uses=3 type=i7]
  %tmp_27 = or i7 %tmp_26, 7                      ; [#uses=2 type=i7]
  %tmp_72 = icmp ugt i7 %tmp_26, %tmp_27          ; [#uses=3 type=i1]
  %tmp_73 = zext i7 %tmp_26 to i9, !dbg !654      ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_74 = zext i7 %tmp_27 to i9, !dbg !654      ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_75 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %p_new1, i32 767, i32 512), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_76 = sub i9 %tmp_73, %tmp_74, !dbg !654    ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_77 = xor i9 %tmp_73, 255, !dbg !654        ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_78 = sub i9 %tmp_74, %tmp_73, !dbg !654    ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_79 = select i1 %tmp_72, i9 %tmp_76, i9 %tmp_78, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_80 = select i1 %tmp_72, i256 %tmp_75, i256 %p_new2 ; [#uses=1 type=i256]
  %tmp_81 = select i1 %tmp_72, i9 %tmp_77, i9 %tmp_73 ; [#uses=1 type=i9]
  %tmp_82 = sub i9 255, %tmp_79                   ; [#uses=1 type=i9]
  %tmp_83 = zext i9 %tmp_81 to i256, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_84 = zext i9 %tmp_82 to i256, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_85 = lshr i256 %tmp_80, %tmp_83, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_89 = lshr i256 -1, %tmp_84, !dbg !654      ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_92 = and i256 %tmp_85, %tmp_89             ; [#uses=1 type=i256]
  %tmp_94 = trunc i256 %tmp_92 to i8, !dbg !654   ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_30 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_71, i3 0) ; [#uses=5 type=i7]
  %tmp_31 = or i7 %tmp_30, 7                      ; [#uses=4 type=i7]
  %tmp_98 = icmp ugt i7 %tmp_30, %tmp_31          ; [#uses=3 type=i1]
  %tmp_102 = zext i7 %tmp_30 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_104 = zext i7 %tmp_31 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_108 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %p_new1, i32 767, i32 512), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_112 = sub i9 %tmp_102, %tmp_104, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_114 = xor i9 %tmp_102, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_118 = sub i9 %tmp_104, %tmp_102, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_122 = select i1 %tmp_98, i9 %tmp_112, i9 %tmp_118, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_124 = select i1 %tmp_98, i256 %tmp_108, i256 %p_new2 ; [#uses=1 type=i256]
  %tmp_125 = select i1 %tmp_98, i9 %tmp_114, i9 %tmp_102 ; [#uses=1 type=i9]
  %tmp_126 = sub i9 255, %tmp_122                 ; [#uses=1 type=i9]
  %tmp_129 = zext i9 %tmp_125 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_130 = zext i9 %tmp_126 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_131 = lshr i256 %tmp_124, %tmp_129, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_133 = lshr i256 -1, %tmp_130, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_135 = and i256 %tmp_131, %tmp_133          ; [#uses=1 type=i256]
  %tmp_136 = trunc i256 %tmp_135 to i8, !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_33 = xor i8 %tmp_136, %tmp_94, !dbg !654   ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_137 = icmp ugt i7 %tmp_30, %tmp_31         ; [#uses=4 type=i1]
  %tmp_139 = zext i7 %tmp_30 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_141 = zext i7 %tmp_31 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_142 = zext i8 %tmp_33 to i256, !dbg !654   ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_143 = xor i9 %tmp_139, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_145 = select i1 %tmp_137, i9 %tmp_139, i9 %tmp_141 ; [#uses=1 type=i9]
  %tmp_147 = select i1 %tmp_137, i9 %tmp_141, i9 %tmp_139 ; [#uses=1 type=i9]
  %tmp_148 = select i1 %tmp_137, i9 %tmp_143, i9 %tmp_139 ; [#uses=1 type=i9]
  %tmp_149 = xor i9 %tmp_145, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_150 = zext i9 %tmp_148 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_151 = zext i9 %tmp_147 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_152 = zext i9 %tmp_149 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_153 = shl i256 %tmp_142, %tmp_150, !dbg !654 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_154 = call i256 @llvm.part.select.i256(i256 %tmp_153, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_155 = select i1 %tmp_137, i256 %tmp_154, i256 %tmp_153 ; [#uses=1 type=i256]
  %tmp_156 = shl i256 -1, %tmp_151, !dbg !654     ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_157 = lshr i256 -1, %tmp_152, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %p_demorgan = and i256 %tmp_156, %tmp_157, !dbg !654 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_158 = xor i256 %p_demorgan, -1, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_159 = and i256 %p_new2, %tmp_158, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_160 = and i256 %tmp_155, %p_demorgan, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_161 = or i256 %tmp_159, %tmp_160, !dbg !654 ; [#uses=5 type=i256] [debug line = 275:2]
  %tmp_35 = add i4 -3, %tmp_71, !dbg !654         ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_36 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_35, i3 0) ; [#uses=3 type=i7]
  %tmp_37 = or i7 %tmp_36, 7                      ; [#uses=2 type=i7]
  %tmp_162 = icmp ugt i7 %tmp_36, %tmp_37         ; [#uses=3 type=i1]
  %tmp_163 = zext i7 %tmp_36 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_164 = zext i7 %tmp_37 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_165 = call i256 @llvm.part.select.i256(i256 %tmp_161, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_166 = sub i9 %tmp_163, %tmp_164, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_167 = xor i9 %tmp_163, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_168 = sub i9 %tmp_164, %tmp_163, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_169 = select i1 %tmp_162, i9 %tmp_166, i9 %tmp_168, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_170 = select i1 %tmp_162, i256 %tmp_165, i256 %tmp_161 ; [#uses=1 type=i256]
  %tmp_171 = select i1 %tmp_162, i9 %tmp_167, i9 %tmp_163 ; [#uses=1 type=i9]
  %tmp_172 = sub i9 255, %tmp_169                 ; [#uses=1 type=i9]
  %tmp_173 = zext i9 %tmp_171 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_174 = zext i9 %tmp_172 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_175 = lshr i256 %tmp_170, %tmp_173, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_176 = lshr i256 -1, %tmp_174, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_177 = and i256 %tmp_175, %tmp_176          ; [#uses=1 type=i256]
  %tmp_178 = trunc i256 %tmp_177 to i8, !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_40 = or i4 %tmp_71, 1, !dbg !654           ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_41 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_40, i3 0) ; [#uses=5 type=i7]
  %tmp_43 = or i7 %tmp_41, 7                      ; [#uses=4 type=i7]
  %tmp_179 = icmp ugt i7 %tmp_41, %tmp_43         ; [#uses=3 type=i1]
  %tmp_180 = zext i7 %tmp_41 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_181 = zext i7 %tmp_43 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_182 = call i256 @llvm.part.select.i256(i256 %tmp_161, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_183 = sub i9 %tmp_180, %tmp_181, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_184 = xor i9 %tmp_180, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_185 = sub i9 %tmp_181, %tmp_180, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_186 = select i1 %tmp_179, i9 %tmp_183, i9 %tmp_185, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_187 = select i1 %tmp_179, i256 %tmp_182, i256 %tmp_161 ; [#uses=1 type=i256]
  %tmp_188 = select i1 %tmp_179, i9 %tmp_184, i9 %tmp_180 ; [#uses=1 type=i9]
  %tmp_189 = sub i9 255, %tmp_186                 ; [#uses=1 type=i9]
  %tmp_190 = zext i9 %tmp_188 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_191 = zext i9 %tmp_189 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_192 = lshr i256 %tmp_187, %tmp_190, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_193 = lshr i256 -1, %tmp_191, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_194 = and i256 %tmp_192, %tmp_193          ; [#uses=1 type=i256]
  %tmp_195 = trunc i256 %tmp_194 to i8, !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_39 = xor i8 %tmp_195, %tmp_178, !dbg !654  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_196 = icmp ugt i7 %tmp_41, %tmp_43         ; [#uses=4 type=i1]
  %tmp_197 = zext i7 %tmp_41 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_198 = zext i7 %tmp_43 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_199 = zext i8 %tmp_39 to i256, !dbg !654   ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_200 = xor i9 %tmp_197, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_201 = select i1 %tmp_196, i9 %tmp_197, i9 %tmp_198 ; [#uses=1 type=i9]
  %tmp_202 = select i1 %tmp_196, i9 %tmp_198, i9 %tmp_197 ; [#uses=1 type=i9]
  %tmp_203 = select i1 %tmp_196, i9 %tmp_200, i9 %tmp_197 ; [#uses=1 type=i9]
  %tmp_204 = xor i9 %tmp_201, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_205 = zext i9 %tmp_203 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_206 = zext i9 %tmp_202 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_207 = zext i9 %tmp_204 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_208 = shl i256 %tmp_199, %tmp_205, !dbg !654 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_209 = call i256 @llvm.part.select.i256(i256 %tmp_208, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_210 = select i1 %tmp_196, i256 %tmp_209, i256 %tmp_208 ; [#uses=1 type=i256]
  %tmp_211 = shl i256 -1, %tmp_206, !dbg !654     ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_212 = lshr i256 -1, %tmp_207, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %p_demorgan1 = and i256 %tmp_211, %tmp_212, !dbg !654 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_213 = xor i256 %p_demorgan1, -1, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_214 = and i256 %tmp_161, %tmp_213, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_215 = and i256 %tmp_210, %p_demorgan1, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_216 = or i256 %tmp_214, %tmp_215, !dbg !654 ; [#uses=5 type=i256] [debug line = 275:2]
  %tmp_55 = add i4 -2, %tmp_71, !dbg !654         ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_56 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_55, i3 0) ; [#uses=3 type=i7]
  %tmp_57 = or i7 %tmp_56, 7                      ; [#uses=2 type=i7]
  %tmp_217 = icmp ugt i7 %tmp_56, %tmp_57         ; [#uses=3 type=i1]
  %tmp_218 = zext i7 %tmp_56 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_219 = zext i7 %tmp_57 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_220 = call i256 @llvm.part.select.i256(i256 %tmp_216, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_221 = sub i9 %tmp_218, %tmp_219, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_222 = xor i9 %tmp_218, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_223 = sub i9 %tmp_219, %tmp_218, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_224 = select i1 %tmp_217, i9 %tmp_221, i9 %tmp_223, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_225 = select i1 %tmp_217, i256 %tmp_220, i256 %tmp_216 ; [#uses=1 type=i256]
  %tmp_226 = select i1 %tmp_217, i9 %tmp_222, i9 %tmp_218 ; [#uses=1 type=i9]
  %tmp_227 = sub i9 255, %tmp_224                 ; [#uses=1 type=i9]
  %tmp_228 = zext i9 %tmp_226 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_229 = zext i9 %tmp_227 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_230 = lshr i256 %tmp_225, %tmp_228, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_231 = lshr i256 -1, %tmp_229, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_232 = and i256 %tmp_230, %tmp_231          ; [#uses=1 type=i256]
  %tmp_233 = trunc i256 %tmp_232 to i8, !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_59 = or i4 %tmp_71, 2, !dbg !654           ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_60 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_59, i3 0) ; [#uses=5 type=i7]
  %tmp_61 = or i7 %tmp_60, 7                      ; [#uses=4 type=i7]
  %tmp_234 = icmp ugt i7 %tmp_60, %tmp_61         ; [#uses=3 type=i1]
  %tmp_235 = zext i7 %tmp_60 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_236 = zext i7 %tmp_61 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_237 = call i256 @llvm.part.select.i256(i256 %tmp_216, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_238 = sub i9 %tmp_235, %tmp_236, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_239 = xor i9 %tmp_235, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_240 = sub i9 %tmp_236, %tmp_235, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_241 = select i1 %tmp_234, i9 %tmp_238, i9 %tmp_240, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_242 = select i1 %tmp_234, i256 %tmp_237, i256 %tmp_216 ; [#uses=1 type=i256]
  %tmp_243 = select i1 %tmp_234, i9 %tmp_239, i9 %tmp_235 ; [#uses=1 type=i9]
  %tmp_244 = sub i9 255, %tmp_241                 ; [#uses=1 type=i9]
  %tmp_245 = zext i9 %tmp_243 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_246 = zext i9 %tmp_244 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_247 = lshr i256 %tmp_242, %tmp_245, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_248 = lshr i256 -1, %tmp_246, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_249 = and i256 %tmp_247, %tmp_248          ; [#uses=1 type=i256]
  %tmp_250 = trunc i256 %tmp_249 to i8, !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_42 = xor i8 %tmp_250, %tmp_233, !dbg !654  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_251 = icmp ugt i7 %tmp_60, %tmp_61         ; [#uses=4 type=i1]
  %tmp_252 = zext i7 %tmp_60 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_253 = zext i7 %tmp_61 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_254 = zext i8 %tmp_42 to i256, !dbg !654   ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_255 = xor i9 %tmp_252, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_256 = select i1 %tmp_251, i9 %tmp_252, i9 %tmp_253 ; [#uses=1 type=i9]
  %tmp_257 = select i1 %tmp_251, i9 %tmp_253, i9 %tmp_252 ; [#uses=1 type=i9]
  %tmp_258 = select i1 %tmp_251, i9 %tmp_255, i9 %tmp_252 ; [#uses=1 type=i9]
  %tmp_259 = xor i9 %tmp_256, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_260 = zext i9 %tmp_258 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_261 = zext i9 %tmp_257 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_262 = zext i9 %tmp_259 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_263 = shl i256 %tmp_254, %tmp_260, !dbg !654 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_264 = call i256 @llvm.part.select.i256(i256 %tmp_263, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_265 = select i1 %tmp_251, i256 %tmp_264, i256 %tmp_263 ; [#uses=1 type=i256]
  %tmp_266 = shl i256 -1, %tmp_261, !dbg !654     ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_267 = lshr i256 -1, %tmp_262, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %p_demorgan2 = and i256 %tmp_266, %tmp_267, !dbg !654 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_268 = xor i256 %p_demorgan2, -1, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_269 = and i256 %tmp_216, %tmp_268, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_270 = and i256 %tmp_265, %p_demorgan2, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_271 = or i256 %tmp_269, %tmp_270, !dbg !654 ; [#uses=5 type=i256] [debug line = 275:2]
  %tmp_64 = add i4 -1, %tmp_71, !dbg !654         ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_65 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_64, i3 0) ; [#uses=3 type=i7]
  %tmp_66 = or i7 %tmp_65, 7                      ; [#uses=2 type=i7]
  %tmp_272 = icmp ugt i7 %tmp_65, %tmp_66         ; [#uses=3 type=i1]
  %tmp_273 = zext i7 %tmp_65 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_274 = zext i7 %tmp_66 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_275 = call i256 @llvm.part.select.i256(i256 %tmp_271, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_276 = sub i9 %tmp_273, %tmp_274, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_277 = xor i9 %tmp_273, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_278 = sub i9 %tmp_274, %tmp_273, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_279 = select i1 %tmp_272, i9 %tmp_276, i9 %tmp_278, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_280 = select i1 %tmp_272, i256 %tmp_275, i256 %tmp_271 ; [#uses=1 type=i256]
  %tmp_281 = select i1 %tmp_272, i9 %tmp_277, i9 %tmp_273 ; [#uses=1 type=i9]
  %tmp_282 = sub i9 255, %tmp_279                 ; [#uses=1 type=i9]
  %tmp_283 = zext i9 %tmp_281 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_284 = zext i9 %tmp_282 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_285 = lshr i256 %tmp_280, %tmp_283, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_286 = lshr i256 -1, %tmp_284, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_287 = and i256 %tmp_285, %tmp_286          ; [#uses=1 type=i256]
  %tmp_288 = trunc i256 %tmp_287 to i8, !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_68 = or i4 %tmp_71, 3, !dbg !654           ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_69 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_68, i3 0) ; [#uses=5 type=i7]
  %tmp_70 = or i7 %tmp_69, 7                      ; [#uses=4 type=i7]
  %tmp_289 = icmp ugt i7 %tmp_69, %tmp_70         ; [#uses=3 type=i1]
  %tmp_290 = zext i7 %tmp_69 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_291 = zext i7 %tmp_70 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_292 = call i256 @llvm.part.select.i256(i256 %tmp_271, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_293 = sub i9 %tmp_290, %tmp_291, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_294 = xor i9 %tmp_290, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_295 = sub i9 %tmp_291, %tmp_290, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_296 = select i1 %tmp_289, i9 %tmp_293, i9 %tmp_295, !dbg !654 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_297 = select i1 %tmp_289, i256 %tmp_292, i256 %tmp_271 ; [#uses=1 type=i256]
  %tmp_298 = select i1 %tmp_289, i9 %tmp_294, i9 %tmp_290 ; [#uses=1 type=i9]
  %tmp_299 = sub i9 255, %tmp_296                 ; [#uses=1 type=i9]
  %tmp_300 = zext i9 %tmp_298 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_301 = zext i9 %tmp_299 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_302 = lshr i256 %tmp_297, %tmp_300, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_303 = lshr i256 -1, %tmp_301, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_304 = and i256 %tmp_302, %tmp_303          ; [#uses=1 type=i256]
  %tmp_305 = trunc i256 %tmp_304 to i8, !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_45 = xor i8 %tmp_305, %tmp_288, !dbg !654  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_306 = icmp ugt i7 %tmp_69, %tmp_70         ; [#uses=4 type=i1]
  %tmp_307 = zext i7 %tmp_69 to i9, !dbg !654     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_308 = zext i7 %tmp_70 to i9, !dbg !654     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_309 = zext i8 %tmp_45 to i256, !dbg !654   ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_310 = xor i9 %tmp_307, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_311 = select i1 %tmp_306, i9 %tmp_307, i9 %tmp_308 ; [#uses=1 type=i9]
  %tmp_312 = select i1 %tmp_306, i9 %tmp_308, i9 %tmp_307 ; [#uses=1 type=i9]
  %tmp_313 = select i1 %tmp_306, i9 %tmp_310, i9 %tmp_307 ; [#uses=1 type=i9]
  %tmp_314 = xor i9 %tmp_311, 255, !dbg !654      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_315 = zext i9 %tmp_313 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_316 = zext i9 %tmp_312 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_317 = zext i9 %tmp_314 to i256, !dbg !654  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_318 = shl i256 %tmp_309, %tmp_315, !dbg !654 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_319 = call i256 @llvm.part.select.i256(i256 %tmp_318, i32 255, i32 0), !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_320 = select i1 %tmp_306, i256 %tmp_319, i256 %tmp_318 ; [#uses=1 type=i256]
  %tmp_321 = shl i256 -1, %tmp_316, !dbg !654     ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_322 = lshr i256 -1, %tmp_317, !dbg !654    ; [#uses=1 type=i256] [debug line = 275:2]
  %p_demorgan3 = and i256 %tmp_321, %tmp_322, !dbg !654 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_323 = xor i256 %p_demorgan3, -1, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_324 = and i256 %tmp_271, %tmp_323, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_325 = and i256 %tmp_320, %p_demorgan3, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_326 = or i256 %tmp_324, %tmp_325, !dbg !654 ; [#uses=1 type=i256] [debug line = 275:2]
  %gep17128130_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %p_new1, i256 %tmp_326, i32 512, i32 767), !dbg !654 ; [#uses=1 type=i1024] [debug line = 275:2]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str5, i32 %tmp_23), !dbg !655 ; [#uses=0 type=i32] [debug line = 277:5]
  %i_3 = add i5 4, %i, !dbg !656                  ; [#uses=1 type=i5] [debug line = 268:31]
  call void @llvm.dbg.value(metadata !{i5 %i_3}, i64 0, metadata !657), !dbg !656 ; [debug line = 268:31] [debug variable = i]
  br label %1, !dbg !656                          ; [debug line = 268:31]

; <label>:3                                       ; preds = %1
  %p_new3 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %p_new1, i32 512, i32 767), !dbg !658 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp_20 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 608, i32 615), !dbg !658 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_21 = zext i8 %tmp_20 to i32, !dbg !658     ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_21, !dbg !658 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox_load_4 = load i8* %sbox_addr_4, align 1, !dbg !658 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 640, i32 647), !dbg !658 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_25 = xor i8 %sbox_load_4, %tmp_22, !dbg !658 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_28 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %p_new3, i8 %tmp_25, i32 128, i32 135), !dbg !658 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp_29 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 616, i32 623), !dbg !659 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_32 = zext i8 %tmp_29 to i32, !dbg !659     ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_32, !dbg !659 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !659 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_34 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 648, i32 655), !dbg !659 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_46 = xor i8 %sbox_load_5, %tmp_34, !dbg !659 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_47 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_28, i8 %tmp_46, i32 136, i32 143), !dbg !659 ; [#uses=1 type=i256] [debug line = 279:5]
  %tmp_48 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 624, i32 631), !dbg !660 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_49 = zext i8 %tmp_48 to i32, !dbg !660     ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_49, !dbg !660 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !660 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_50 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 656, i32 663), !dbg !660 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_51 = xor i8 %sbox_load_6, %tmp_50, !dbg !660 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_58 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_47, i8 %tmp_51, i32 144, i32 151), !dbg !660 ; [#uses=1 type=i256] [debug line = 280:5]
  %tmp_62 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 632, i32 639), !dbg !661 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_52 = zext i8 %tmp_62 to i32, !dbg !661     ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_52, !dbg !661 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !661 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_63 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 664, i32 671), !dbg !661 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_53 = xor i8 %sbox_load_7, %tmp_63, !dbg !661 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_67 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_58, i8 %tmp_53, i32 152, i32 159), !dbg !661 ; [#uses=1 type=i256] [debug line = 281:5]
  %gep96870_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %p_new1, i256 %tmp_67, i32 512, i32 767), !dbg !661 ; [#uses=2 type=i1024] [debug line = 281:5]
  %k_addr_req5 = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !661 ; [#uses=0 type=i1] [debug line = 281:5]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep96870_part_set, i128 -1), !dbg !661 ; [debug line = 281:5]
  %k_addr_resp6 = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr), !dbg !661 ; [#uses=0 type=i1] [debug line = 281:5]
  br label %4, !dbg !662                          ; [debug line = 283:16]

; <label>:4                                       ; preds = %6, %3
  %gep = phi i1024 [ %gep96870_part_set, %3 ], [ %gep11011_part_set_1, %6 ] ; [#uses=5 type=i1024]
  %i_1 = phi i6 [ 20, %3 ], [ %i_9_1, %6 ]        ; [#uses=4 type=i6]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %tmp_327 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5), !dbg !662 ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp_327, label %7, label %5, !dbg !662   ; [debug line = 283:16]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind, !dbg !664 ; [debug line = 284:6]
  %tmp_328 = trunc i6 %i_1 to i5, !dbg !666       ; [#uses=8 type=i5] [debug line = 290:2]
  %tmp_86 = add i5 -4, %tmp_328, !dbg !666        ; [#uses=1 type=i5] [debug line = 290:2]
  %p_new4 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 512, i32 767), !dbg !666 ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp_87 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_86, i3 0) ; [#uses=3 type=i8]
  %tmp_88 = or i8 %tmp_87, 7                      ; [#uses=2 type=i8]
  %tmp_329 = icmp ugt i8 %tmp_87, %tmp_88         ; [#uses=3 type=i1]
  %tmp_330 = zext i8 %tmp_87 to i9, !dbg !666     ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_331 = zext i8 %tmp_88 to i9, !dbg !666     ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_332 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 767, i32 512), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_333 = sub i9 %tmp_330, %tmp_331, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_334 = xor i9 %tmp_330, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_335 = sub i9 %tmp_331, %tmp_330, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_336 = select i1 %tmp_329, i9 %tmp_333, i9 %tmp_335, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_337 = select i1 %tmp_329, i256 %tmp_332, i256 %p_new4 ; [#uses=1 type=i256]
  %tmp_338 = select i1 %tmp_329, i9 %tmp_334, i9 %tmp_330 ; [#uses=1 type=i9]
  %tmp_339 = sub i9 255, %tmp_336                 ; [#uses=1 type=i9]
  %tmp_340 = zext i9 %tmp_338 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_341 = zext i9 %tmp_339 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_342 = lshr i256 %tmp_337, %tmp_340, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_343 = lshr i256 -1, %tmp_341, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_344 = and i256 %tmp_342, %tmp_343          ; [#uses=1 type=i256]
  %tmp_345 = trunc i256 %tmp_344 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_90 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_328, i3 0) ; [#uses=7 type=i8]
  %tmp_91 = or i8 %tmp_90, 7                      ; [#uses=6 type=i8]
  %tmp_346 = icmp ugt i8 %tmp_90, %tmp_91         ; [#uses=3 type=i1]
  %tmp_347 = zext i8 %tmp_90 to i9, !dbg !666     ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_348 = zext i8 %tmp_91 to i9, !dbg !666     ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_349 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 767, i32 512), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_350 = sub i9 %tmp_347, %tmp_348, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_351 = xor i9 %tmp_347, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_352 = sub i9 %tmp_348, %tmp_347, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_353 = select i1 %tmp_346, i9 %tmp_350, i9 %tmp_352, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_354 = select i1 %tmp_346, i256 %tmp_349, i256 %p_new4 ; [#uses=1 type=i256]
  %tmp_355 = select i1 %tmp_346, i9 %tmp_351, i9 %tmp_347 ; [#uses=1 type=i9]
  %tmp_356 = sub i9 255, %tmp_353                 ; [#uses=1 type=i9]
  %tmp_357 = zext i9 %tmp_355 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_358 = zext i9 %tmp_356 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_359 = lshr i256 %tmp_354, %tmp_357, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_360 = lshr i256 -1, %tmp_358, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_361 = and i256 %tmp_359, %tmp_360          ; [#uses=1 type=i256]
  %tmp_362 = trunc i256 %tmp_361 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_93 = xor i8 %tmp_362, %tmp_345, !dbg !666  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_363 = icmp ugt i8 %tmp_90, %tmp_91         ; [#uses=4 type=i1]
  %tmp_364 = zext i8 %tmp_90 to i9, !dbg !666     ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_365 = zext i8 %tmp_91 to i9, !dbg !666     ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_366 = zext i8 %tmp_93 to i256, !dbg !666   ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_367 = xor i9 %tmp_364, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_368 = select i1 %tmp_363, i9 %tmp_364, i9 %tmp_365 ; [#uses=1 type=i9]
  %tmp_369 = select i1 %tmp_363, i9 %tmp_365, i9 %tmp_364 ; [#uses=1 type=i9]
  %tmp_370 = select i1 %tmp_363, i9 %tmp_367, i9 %tmp_364 ; [#uses=1 type=i9]
  %tmp_371 = xor i9 %tmp_368, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_372 = zext i9 %tmp_370 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_373 = zext i9 %tmp_369 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_374 = zext i9 %tmp_371 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_375 = shl i256 %tmp_366, %tmp_372, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_376 = call i256 @llvm.part.select.i256(i256 %tmp_375, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_377 = select i1 %tmp_363, i256 %tmp_376, i256 %tmp_375 ; [#uses=1 type=i256]
  %tmp_378 = shl i256 -1, %tmp_373, !dbg !666     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_379 = lshr i256 -1, %tmp_374, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan4 = and i256 %tmp_378, %tmp_379, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_380 = xor i256 %p_demorgan4, -1, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_381 = and i256 %p_new4, %tmp_380, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_382 = and i256 %tmp_377, %p_demorgan4, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_383 = or i256 %tmp_381, %tmp_382, !dbg !666 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_95 = add i5 -3, %tmp_328, !dbg !666        ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_96 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_95, i3 0) ; [#uses=3 type=i8]
  %tmp_97 = or i8 %tmp_96, 7                      ; [#uses=2 type=i8]
  %tmp_384 = icmp ugt i8 %tmp_96, %tmp_97         ; [#uses=3 type=i1]
  %tmp_385 = zext i8 %tmp_96 to i9, !dbg !666     ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_386 = zext i8 %tmp_97 to i9, !dbg !666     ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_387 = call i256 @llvm.part.select.i256(i256 %tmp_383, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_388 = sub i9 %tmp_385, %tmp_386, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_389 = xor i9 %tmp_385, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_390 = sub i9 %tmp_386, %tmp_385, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_391 = select i1 %tmp_384, i9 %tmp_388, i9 %tmp_390, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_392 = select i1 %tmp_384, i256 %tmp_387, i256 %tmp_383 ; [#uses=1 type=i256]
  %tmp_393 = select i1 %tmp_384, i9 %tmp_389, i9 %tmp_385 ; [#uses=1 type=i9]
  %tmp_394 = sub i9 255, %tmp_391                 ; [#uses=1 type=i9]
  %tmp_395 = zext i9 %tmp_393 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_396 = zext i9 %tmp_394 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_397 = lshr i256 %tmp_392, %tmp_395, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_398 = lshr i256 -1, %tmp_396, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_399 = and i256 %tmp_397, %tmp_398          ; [#uses=1 type=i256]
  %tmp_400 = trunc i256 %tmp_399 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_99 = or i5 %tmp_328, 1, !dbg !666          ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_100 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_99, i3 0) ; [#uses=7 type=i8]
  %tmp_101 = or i8 %tmp_100, 7                    ; [#uses=6 type=i8]
  %tmp_401 = icmp ugt i8 %tmp_100, %tmp_101       ; [#uses=3 type=i1]
  %tmp_402 = zext i8 %tmp_100 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_403 = zext i8 %tmp_101 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_404 = call i256 @llvm.part.select.i256(i256 %tmp_383, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_405 = sub i9 %tmp_402, %tmp_403, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_406 = xor i9 %tmp_402, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_407 = sub i9 %tmp_403, %tmp_402, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_408 = select i1 %tmp_401, i9 %tmp_405, i9 %tmp_407, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_409 = select i1 %tmp_401, i256 %tmp_404, i256 %tmp_383 ; [#uses=1 type=i256]
  %tmp_410 = select i1 %tmp_401, i9 %tmp_406, i9 %tmp_402 ; [#uses=1 type=i9]
  %tmp_411 = sub i9 255, %tmp_408                 ; [#uses=1 type=i9]
  %tmp_412 = zext i9 %tmp_410 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_413 = zext i9 %tmp_411 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_414 = lshr i256 %tmp_409, %tmp_412, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_415 = lshr i256 -1, %tmp_413, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_416 = and i256 %tmp_414, %tmp_415          ; [#uses=1 type=i256]
  %tmp_417 = trunc i256 %tmp_416 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_103 = xor i8 %tmp_417, %tmp_400, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_418 = icmp ugt i8 %tmp_100, %tmp_101       ; [#uses=4 type=i1]
  %tmp_419 = zext i8 %tmp_100 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_420 = zext i8 %tmp_101 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_421 = zext i8 %tmp_103 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_422 = xor i9 %tmp_419, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_423 = select i1 %tmp_418, i9 %tmp_419, i9 %tmp_420 ; [#uses=1 type=i9]
  %tmp_424 = select i1 %tmp_418, i9 %tmp_420, i9 %tmp_419 ; [#uses=1 type=i9]
  %tmp_425 = select i1 %tmp_418, i9 %tmp_422, i9 %tmp_419 ; [#uses=1 type=i9]
  %tmp_426 = xor i9 %tmp_423, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_427 = zext i9 %tmp_425 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_428 = zext i9 %tmp_424 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_429 = zext i9 %tmp_426 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_430 = shl i256 %tmp_421, %tmp_427, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_431 = call i256 @llvm.part.select.i256(i256 %tmp_430, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_432 = select i1 %tmp_418, i256 %tmp_431, i256 %tmp_430 ; [#uses=1 type=i256]
  %tmp_433 = shl i256 -1, %tmp_428, !dbg !666     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_434 = lshr i256 -1, %tmp_429, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan5 = and i256 %tmp_433, %tmp_434, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_435 = xor i256 %p_demorgan5, -1, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_436 = and i256 %tmp_383, %tmp_435, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_437 = and i256 %tmp_432, %p_demorgan5, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_438 = or i256 %tmp_436, %tmp_437, !dbg !666 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_105 = add i5 -2, %tmp_328, !dbg !666       ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_106 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_105, i3 0) ; [#uses=3 type=i8]
  %tmp_107 = or i8 %tmp_106, 7                    ; [#uses=2 type=i8]
  %tmp_439 = icmp ugt i8 %tmp_106, %tmp_107       ; [#uses=3 type=i1]
  %tmp_440 = zext i8 %tmp_106 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_441 = zext i8 %tmp_107 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_442 = call i256 @llvm.part.select.i256(i256 %tmp_438, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_443 = sub i9 %tmp_440, %tmp_441, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_444 = xor i9 %tmp_440, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_445 = sub i9 %tmp_441, %tmp_440, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_446 = select i1 %tmp_439, i9 %tmp_443, i9 %tmp_445, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_447 = select i1 %tmp_439, i256 %tmp_442, i256 %tmp_438 ; [#uses=1 type=i256]
  %tmp_448 = select i1 %tmp_439, i9 %tmp_444, i9 %tmp_440 ; [#uses=1 type=i9]
  %tmp_449 = sub i9 255, %tmp_446                 ; [#uses=1 type=i9]
  %tmp_450 = zext i9 %tmp_448 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_451 = zext i9 %tmp_449 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_452 = lshr i256 %tmp_447, %tmp_450, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_453 = lshr i256 -1, %tmp_451, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_454 = and i256 %tmp_452, %tmp_453          ; [#uses=1 type=i256]
  %tmp_455 = trunc i256 %tmp_454 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_109 = or i5 %tmp_328, 2, !dbg !666         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_110 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_109, i3 0) ; [#uses=7 type=i8]
  %tmp_111 = or i8 %tmp_110, 7                    ; [#uses=6 type=i8]
  %tmp_456 = icmp ugt i8 %tmp_110, %tmp_111       ; [#uses=3 type=i1]
  %tmp_457 = zext i8 %tmp_110 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_458 = zext i8 %tmp_111 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_459 = call i256 @llvm.part.select.i256(i256 %tmp_438, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_460 = sub i9 %tmp_457, %tmp_458, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_461 = xor i9 %tmp_457, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_462 = sub i9 %tmp_458, %tmp_457, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_463 = select i1 %tmp_456, i9 %tmp_460, i9 %tmp_462, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_464 = select i1 %tmp_456, i256 %tmp_459, i256 %tmp_438 ; [#uses=1 type=i256]
  %tmp_465 = select i1 %tmp_456, i9 %tmp_461, i9 %tmp_457 ; [#uses=1 type=i9]
  %tmp_466 = sub i9 255, %tmp_463                 ; [#uses=1 type=i9]
  %tmp_467 = zext i9 %tmp_465 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_468 = zext i9 %tmp_466 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_469 = lshr i256 %tmp_464, %tmp_467, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_470 = lshr i256 -1, %tmp_468, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_471 = and i256 %tmp_469, %tmp_470          ; [#uses=1 type=i256]
  %tmp_472 = trunc i256 %tmp_471 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_113 = xor i8 %tmp_472, %tmp_455, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_473 = icmp ugt i8 %tmp_110, %tmp_111       ; [#uses=4 type=i1]
  %tmp_474 = zext i8 %tmp_110 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_475 = zext i8 %tmp_111 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_476 = zext i8 %tmp_113 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_477 = xor i9 %tmp_474, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_478 = select i1 %tmp_473, i9 %tmp_474, i9 %tmp_475 ; [#uses=1 type=i9]
  %tmp_479 = select i1 %tmp_473, i9 %tmp_475, i9 %tmp_474 ; [#uses=1 type=i9]
  %tmp_480 = select i1 %tmp_473, i9 %tmp_477, i9 %tmp_474 ; [#uses=1 type=i9]
  %tmp_481 = xor i9 %tmp_478, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_482 = zext i9 %tmp_480 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_483 = zext i9 %tmp_479 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_484 = zext i9 %tmp_481 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_485 = shl i256 %tmp_476, %tmp_482, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_486 = call i256 @llvm.part.select.i256(i256 %tmp_485, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_487 = select i1 %tmp_473, i256 %tmp_486, i256 %tmp_485 ; [#uses=1 type=i256]
  %tmp_488 = shl i256 -1, %tmp_483, !dbg !666     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_489 = lshr i256 -1, %tmp_484, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan6 = and i256 %tmp_488, %tmp_489, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_490 = xor i256 %p_demorgan6, -1, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_491 = and i256 %tmp_438, %tmp_490, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_492 = and i256 %tmp_487, %p_demorgan6, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_493 = or i256 %tmp_491, %tmp_492, !dbg !666 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_115 = add i5 -1, %tmp_328, !dbg !666       ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_116 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_115, i3 0) ; [#uses=3 type=i8]
  %tmp_117 = or i8 %tmp_116, 7                    ; [#uses=2 type=i8]
  %tmp_494 = icmp ugt i8 %tmp_116, %tmp_117       ; [#uses=3 type=i1]
  %tmp_495 = zext i8 %tmp_116 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_496 = zext i8 %tmp_117 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_497 = call i256 @llvm.part.select.i256(i256 %tmp_493, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_498 = sub i9 %tmp_495, %tmp_496, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_499 = xor i9 %tmp_495, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_500 = sub i9 %tmp_496, %tmp_495, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_501 = select i1 %tmp_494, i9 %tmp_498, i9 %tmp_500, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_502 = select i1 %tmp_494, i256 %tmp_497, i256 %tmp_493 ; [#uses=1 type=i256]
  %tmp_503 = select i1 %tmp_494, i9 %tmp_499, i9 %tmp_495 ; [#uses=1 type=i9]
  %tmp_504 = sub i9 255, %tmp_501                 ; [#uses=1 type=i9]
  %tmp_505 = zext i9 %tmp_503 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_506 = zext i9 %tmp_504 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_507 = lshr i256 %tmp_502, %tmp_505, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_508 = lshr i256 -1, %tmp_506, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_509 = and i256 %tmp_507, %tmp_508          ; [#uses=1 type=i256]
  %tmp_510 = trunc i256 %tmp_509 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_119 = or i5 %tmp_328, 3, !dbg !666         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_120 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_119, i3 0) ; [#uses=7 type=i8]
  %tmp_121 = or i8 %tmp_120, 7                    ; [#uses=6 type=i8]
  %tmp_511 = icmp ugt i8 %tmp_120, %tmp_121       ; [#uses=3 type=i1]
  %tmp_512 = zext i8 %tmp_120 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_513 = zext i8 %tmp_121 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_514 = call i256 @llvm.part.select.i256(i256 %tmp_493, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_515 = sub i9 %tmp_512, %tmp_513, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_516 = xor i9 %tmp_512, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_517 = sub i9 %tmp_513, %tmp_512, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_518 = select i1 %tmp_511, i9 %tmp_515, i9 %tmp_517, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_519 = select i1 %tmp_511, i256 %tmp_514, i256 %tmp_493 ; [#uses=1 type=i256]
  %tmp_520 = select i1 %tmp_511, i9 %tmp_516, i9 %tmp_512 ; [#uses=1 type=i9]
  %tmp_521 = sub i9 255, %tmp_518                 ; [#uses=1 type=i9]
  %tmp_522 = zext i9 %tmp_520 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_523 = zext i9 %tmp_521 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_524 = lshr i256 %tmp_519, %tmp_522, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_525 = lshr i256 -1, %tmp_523, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_526 = and i256 %tmp_524, %tmp_525          ; [#uses=1 type=i256]
  %tmp_527 = trunc i256 %tmp_526 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_123 = xor i8 %tmp_527, %tmp_510, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_528 = icmp ugt i8 %tmp_120, %tmp_121       ; [#uses=4 type=i1]
  %tmp_529 = zext i8 %tmp_120 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_530 = zext i8 %tmp_121 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_531 = zext i8 %tmp_123 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_532 = xor i9 %tmp_529, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_533 = select i1 %tmp_528, i9 %tmp_529, i9 %tmp_530 ; [#uses=1 type=i9]
  %tmp_534 = select i1 %tmp_528, i9 %tmp_530, i9 %tmp_529 ; [#uses=1 type=i9]
  %tmp_535 = select i1 %tmp_528, i9 %tmp_532, i9 %tmp_529 ; [#uses=1 type=i9]
  %tmp_536 = xor i9 %tmp_533, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_537 = zext i9 %tmp_535 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_538 = zext i9 %tmp_534 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_539 = zext i9 %tmp_536 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_540 = shl i256 %tmp_531, %tmp_537, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_541 = call i256 @llvm.part.select.i256(i256 %tmp_540, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_542 = select i1 %tmp_528, i256 %tmp_541, i256 %tmp_540 ; [#uses=1 type=i256]
  %tmp_543 = shl i256 -1, %tmp_538, !dbg !666     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_544 = lshr i256 -1, %tmp_539, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan7 = and i256 %tmp_543, %tmp_544, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_545 = xor i256 %p_demorgan7, -1, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_546 = and i256 %tmp_493, %tmp_545, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_547 = and i256 %tmp_542, %p_demorgan7, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_548 = or i256 %tmp_546, %tmp_547, !dbg !666 ; [#uses=6 type=i256] [debug line = 290:2]
  %gep11011_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp_548, i32 512, i32 767), !dbg !666 ; [#uses=1 type=i1024] [debug line = 290:2]
  %k_addr_req3 = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !666 ; [#uses=0 type=i1] [debug line = 290:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set, i128 -1), !dbg !666 ; [debug line = 290:2]
  %k_addr_resp4 = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr), !dbg !666 ; [#uses=0 type=i1] [debug line = 290:2]
  %i_9 = add i6 4, %i_1, !dbg !667                ; [#uses=3 type=i6] [debug line = 283:32]
  %tmp_549 = trunc i6 %i_9 to i5, !dbg !662       ; [#uses=3 type=i5] [debug line = 283:16]
  %tmp_550 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_9, i32 5), !dbg !662 ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp_550, label %7, label %6, !dbg !662   ; [debug line = 283:16]

; <label>:6                                       ; preds = %5
  %tmp_551 = icmp ugt i8 %tmp_90, %tmp_91         ; [#uses=3 type=i1]
  %tmp_552 = zext i8 %tmp_90 to i9, !dbg !666     ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_553 = zext i8 %tmp_91 to i9, !dbg !666     ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_554 = call i256 @llvm.part.select.i256(i256 %tmp_548, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_555 = sub i9 %tmp_552, %tmp_553, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_556 = xor i9 %tmp_552, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_557 = sub i9 %tmp_553, %tmp_552, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_558 = select i1 %tmp_551, i9 %tmp_555, i9 %tmp_557, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_559 = select i1 %tmp_551, i256 %tmp_554, i256 %tmp_548 ; [#uses=1 type=i256]
  %tmp_560 = select i1 %tmp_551, i9 %tmp_556, i9 %tmp_552 ; [#uses=1 type=i9]
  %tmp_561 = sub i9 255, %tmp_558                 ; [#uses=1 type=i9]
  %tmp_562 = zext i9 %tmp_560 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_563 = zext i9 %tmp_561 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_564 = lshr i256 %tmp_559, %tmp_562, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_565 = lshr i256 -1, %tmp_563, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_566 = and i256 %tmp_564, %tmp_565          ; [#uses=1 type=i256]
  %tmp_567 = trunc i256 %tmp_566 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_127 = call i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6 %i_9, i3 0) ; [#uses=11 type=i9]
  %tmp_128 = or i9 %tmp_127, 7                    ; [#uses=6 type=i9]
  %tmp_568 = icmp ugt i9 %tmp_127, %tmp_128       ; [#uses=3 type=i1]
  %tmp_569 = call i256 @llvm.part.select.i256(i256 %tmp_548, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_570 = sub i9 %tmp_127, %tmp_128, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_571 = sub i9 255, %tmp_127, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_572 = sub i9 %tmp_128, %tmp_127, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_573 = select i1 %tmp_568, i9 %tmp_570, i9 %tmp_572, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_574 = select i1 %tmp_568, i256 %tmp_569, i256 %tmp_548 ; [#uses=1 type=i256]
  %tmp_575 = select i1 %tmp_568, i9 %tmp_571, i9 %tmp_127 ; [#uses=1 type=i9]
  %tmp_576 = sub i9 255, %tmp_573                 ; [#uses=1 type=i9]
  %tmp_577 = zext i9 %tmp_575 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_578 = zext i9 %tmp_576 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_579 = lshr i256 %tmp_574, %tmp_577, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_580 = lshr i256 -1, %tmp_578, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_581 = and i256 %tmp_579, %tmp_580          ; [#uses=1 type=i256]
  %tmp_582 = trunc i256 %tmp_581 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_57_1 = xor i8 %tmp_582, %tmp_567, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_583 = icmp ugt i9 %tmp_127, %tmp_128       ; [#uses=4 type=i1]
  %tmp_584 = zext i8 %tmp_57_1 to i256, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_585 = sub i9 255, %tmp_127, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_586 = select i1 %tmp_583, i9 %tmp_127, i9 %tmp_128 ; [#uses=1 type=i9]
  %tmp_587 = select i1 %tmp_583, i9 %tmp_128, i9 %tmp_127 ; [#uses=1 type=i9]
  %tmp_588 = select i1 %tmp_583, i9 %tmp_585, i9 %tmp_127 ; [#uses=1 type=i9]
  %tmp_589 = sub i9 255, %tmp_586, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_590 = zext i9 %tmp_588 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_591 = zext i9 %tmp_587 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_592 = zext i9 %tmp_589 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_593 = shl i256 %tmp_584, %tmp_590, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_594 = call i256 @llvm.part.select.i256(i256 %tmp_593, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_595 = select i1 %tmp_583, i256 %tmp_594, i256 %tmp_593 ; [#uses=1 type=i256]
  %tmp_596 = shl i256 -1, %tmp_591, !dbg !666     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_597 = lshr i256 -1, %tmp_592, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan8 = and i256 %tmp_596, %tmp_597, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_598 = xor i256 %p_demorgan8, -1, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_599 = and i256 %tmp_548, %tmp_598, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_600 = and i256 %tmp_595, %p_demorgan8, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_601 = or i256 %tmp_599, %tmp_600, !dbg !666 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_602 = icmp ugt i8 %tmp_100, %tmp_101       ; [#uses=3 type=i1]
  %tmp_603 = zext i8 %tmp_100 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_604 = zext i8 %tmp_101 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_605 = call i256 @llvm.part.select.i256(i256 %tmp_601, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_606 = sub i9 %tmp_603, %tmp_604, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_607 = xor i9 %tmp_603, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_608 = sub i9 %tmp_604, %tmp_603, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_609 = select i1 %tmp_602, i9 %tmp_606, i9 %tmp_608, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_610 = select i1 %tmp_602, i256 %tmp_605, i256 %tmp_601 ; [#uses=1 type=i256]
  %tmp_611 = select i1 %tmp_602, i9 %tmp_607, i9 %tmp_603 ; [#uses=1 type=i9]
  %tmp_612 = sub i9 255, %tmp_609                 ; [#uses=1 type=i9]
  %tmp_613 = zext i9 %tmp_611 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_614 = zext i9 %tmp_612 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_615 = lshr i256 %tmp_610, %tmp_613, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_616 = lshr i256 -1, %tmp_614, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_617 = and i256 %tmp_615, %tmp_616          ; [#uses=1 type=i256]
  %tmp_618 = trunc i256 %tmp_617 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_132 = or i5 %tmp_549, 1, !dbg !666         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_619 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_132, i3 0) ; [#uses=4 type=i8]
  %tmp_149_cast = zext i8 %tmp_619 to i10         ; [#uses=2 type=i10]
  %tmp_620 = or i8 %tmp_619, 7                    ; [#uses=1 type=i8]
  %tmp_134 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_620) ; [#uses=5 type=i9]
  %tmp_150_cast = zext i9 %tmp_134 to i10         ; [#uses=2 type=i10]
  %tmp_621 = icmp ugt i10 %tmp_149_cast, %tmp_150_cast ; [#uses=3 type=i1]
  %tmp_622 = zext i8 %tmp_619 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_623 = call i256 @llvm.part.select.i256(i256 %tmp_601, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_624 = sub i9 %tmp_622, %tmp_134, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_625 = xor i9 %tmp_622, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_626 = sub i9 %tmp_134, %tmp_622, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_627 = select i1 %tmp_621, i9 %tmp_624, i9 %tmp_626, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_628 = select i1 %tmp_621, i256 %tmp_623, i256 %tmp_601 ; [#uses=1 type=i256]
  %tmp_629 = select i1 %tmp_621, i9 %tmp_625, i9 %tmp_622 ; [#uses=1 type=i9]
  %tmp_630 = sub i9 255, %tmp_627                 ; [#uses=1 type=i9]
  %tmp_631 = zext i9 %tmp_629 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_632 = zext i9 %tmp_630 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_633 = lshr i256 %tmp_628, %tmp_631, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_634 = lshr i256 -1, %tmp_632, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_635 = and i256 %tmp_633, %tmp_634          ; [#uses=1 type=i256]
  %tmp_636 = trunc i256 %tmp_635 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_60_1 = xor i8 %tmp_636, %tmp_618, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_637 = icmp ugt i10 %tmp_149_cast, %tmp_150_cast ; [#uses=4 type=i1]
  %tmp_638 = zext i8 %tmp_619 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_639 = zext i8 %tmp_60_1 to i256, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_640 = xor i9 %tmp_638, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_641 = select i1 %tmp_637, i9 %tmp_638, i9 %tmp_134 ; [#uses=1 type=i9]
  %tmp_642 = select i1 %tmp_637, i9 %tmp_134, i9 %tmp_638 ; [#uses=1 type=i9]
  %tmp_643 = select i1 %tmp_637, i9 %tmp_640, i9 %tmp_638 ; [#uses=1 type=i9]
  %tmp_644 = sub i9 255, %tmp_641, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_645 = zext i9 %tmp_643 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_646 = zext i9 %tmp_642 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_647 = zext i9 %tmp_644 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_648 = shl i256 %tmp_639, %tmp_645, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_649 = call i256 @llvm.part.select.i256(i256 %tmp_648, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_650 = select i1 %tmp_637, i256 %tmp_649, i256 %tmp_648 ; [#uses=1 type=i256]
  %tmp_651 = shl i256 -1, %tmp_646, !dbg !666     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_652 = lshr i256 -1, %tmp_647, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan9 = and i256 %tmp_651, %tmp_652, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_653 = xor i256 %p_demorgan9, -1, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_654 = and i256 %tmp_601, %tmp_653, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_655 = and i256 %tmp_650, %p_demorgan9, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_656 = or i256 %tmp_654, %tmp_655, !dbg !666 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_657 = icmp ugt i8 %tmp_110, %tmp_111       ; [#uses=3 type=i1]
  %tmp_658 = zext i8 %tmp_110 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_659 = zext i8 %tmp_111 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_660 = call i256 @llvm.part.select.i256(i256 %tmp_656, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_661 = sub i9 %tmp_658, %tmp_659, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_662 = xor i9 %tmp_658, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_663 = sub i9 %tmp_659, %tmp_658, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_664 = select i1 %tmp_657, i9 %tmp_661, i9 %tmp_663, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_665 = select i1 %tmp_657, i256 %tmp_660, i256 %tmp_656 ; [#uses=1 type=i256]
  %tmp_666 = select i1 %tmp_657, i9 %tmp_662, i9 %tmp_658 ; [#uses=1 type=i9]
  %tmp_667 = sub i9 255, %tmp_664                 ; [#uses=1 type=i9]
  %tmp_668 = zext i9 %tmp_666 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_669 = zext i9 %tmp_667 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_670 = lshr i256 %tmp_665, %tmp_668, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_671 = lshr i256 -1, %tmp_669, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_672 = and i256 %tmp_670, %tmp_671          ; [#uses=1 type=i256]
  %tmp_673 = trunc i256 %tmp_672 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_138 = or i5 %tmp_549, 2, !dbg !666         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_674 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_138, i3 0) ; [#uses=4 type=i8]
  %tmp_156_cast = zext i8 %tmp_674 to i10         ; [#uses=2 type=i10]
  %tmp_675 = or i8 %tmp_674, 7                    ; [#uses=1 type=i8]
  %tmp_140 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_675) ; [#uses=5 type=i9]
  %tmp_157_cast = zext i9 %tmp_140 to i10         ; [#uses=2 type=i10]
  %tmp_676 = icmp ugt i10 %tmp_156_cast, %tmp_157_cast ; [#uses=3 type=i1]
  %tmp_677 = zext i8 %tmp_674 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_678 = call i256 @llvm.part.select.i256(i256 %tmp_656, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_679 = sub i9 %tmp_677, %tmp_140, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_680 = xor i9 %tmp_677, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_681 = sub i9 %tmp_140, %tmp_677, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_682 = select i1 %tmp_676, i9 %tmp_679, i9 %tmp_681, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_683 = select i1 %tmp_676, i256 %tmp_678, i256 %tmp_656 ; [#uses=1 type=i256]
  %tmp_684 = select i1 %tmp_676, i9 %tmp_680, i9 %tmp_677 ; [#uses=1 type=i9]
  %tmp_685 = sub i9 255, %tmp_682                 ; [#uses=1 type=i9]
  %tmp_686 = zext i9 %tmp_684 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_687 = zext i9 %tmp_685 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_688 = lshr i256 %tmp_683, %tmp_686, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_689 = lshr i256 -1, %tmp_687, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_690 = and i256 %tmp_688, %tmp_689          ; [#uses=1 type=i256]
  %tmp_691 = trunc i256 %tmp_690 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_63_1 = xor i8 %tmp_691, %tmp_673, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_692 = icmp ugt i10 %tmp_156_cast, %tmp_157_cast ; [#uses=4 type=i1]
  %tmp_693 = zext i8 %tmp_674 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_694 = zext i8 %tmp_63_1 to i256, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_695 = xor i9 %tmp_693, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_696 = select i1 %tmp_692, i9 %tmp_693, i9 %tmp_140 ; [#uses=1 type=i9]
  %tmp_697 = select i1 %tmp_692, i9 %tmp_140, i9 %tmp_693 ; [#uses=1 type=i9]
  %tmp_698 = select i1 %tmp_692, i9 %tmp_695, i9 %tmp_693 ; [#uses=1 type=i9]
  %tmp_699 = sub i9 255, %tmp_696, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_700 = zext i9 %tmp_698 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_701 = zext i9 %tmp_697 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_702 = zext i9 %tmp_699 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_703 = shl i256 %tmp_694, %tmp_700, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_704 = call i256 @llvm.part.select.i256(i256 %tmp_703, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_705 = select i1 %tmp_692, i256 %tmp_704, i256 %tmp_703 ; [#uses=1 type=i256]
  %tmp_706 = shl i256 -1, %tmp_701, !dbg !666     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_707 = lshr i256 -1, %tmp_702, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan10 = and i256 %tmp_706, %tmp_707, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_708 = xor i256 %p_demorgan10, -1, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_709 = and i256 %tmp_656, %tmp_708, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_710 = and i256 %tmp_705, %p_demorgan10, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_711 = or i256 %tmp_709, %tmp_710, !dbg !666 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_712 = icmp ugt i8 %tmp_120, %tmp_121       ; [#uses=3 type=i1]
  %tmp_713 = zext i8 %tmp_120 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_714 = zext i8 %tmp_121 to i9, !dbg !666    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_715 = call i256 @llvm.part.select.i256(i256 %tmp_711, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_716 = sub i9 %tmp_713, %tmp_714, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_717 = xor i9 %tmp_713, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_718 = sub i9 %tmp_714, %tmp_713, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_719 = select i1 %tmp_712, i9 %tmp_716, i9 %tmp_718, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_720 = select i1 %tmp_712, i256 %tmp_715, i256 %tmp_711 ; [#uses=1 type=i256]
  %tmp_721 = select i1 %tmp_712, i9 %tmp_717, i9 %tmp_713 ; [#uses=1 type=i9]
  %tmp_722 = sub i9 255, %tmp_719                 ; [#uses=1 type=i9]
  %tmp_723 = zext i9 %tmp_721 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_724 = zext i9 %tmp_722 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_725 = lshr i256 %tmp_720, %tmp_723, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_726 = lshr i256 -1, %tmp_724, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_727 = and i256 %tmp_725, %tmp_726          ; [#uses=1 type=i256]
  %tmp_728 = trunc i256 %tmp_727 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_144 = or i5 %tmp_549, 3, !dbg !666         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_729 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_144, i3 0) ; [#uses=4 type=i8]
  %tmp_163_cast = zext i8 %tmp_729 to i10         ; [#uses=2 type=i10]
  %tmp_730 = or i8 %tmp_729, 7                    ; [#uses=1 type=i8]
  %tmp_146 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_730) ; [#uses=5 type=i9]
  %tmp_164_cast = zext i9 %tmp_146 to i10         ; [#uses=2 type=i10]
  %tmp_731 = icmp ugt i10 %tmp_163_cast, %tmp_164_cast ; [#uses=3 type=i1]
  %tmp_732 = zext i8 %tmp_729 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_733 = call i256 @llvm.part.select.i256(i256 %tmp_711, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_734 = sub i9 %tmp_732, %tmp_146, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_735 = xor i9 %tmp_732, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_736 = sub i9 %tmp_146, %tmp_732, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_737 = select i1 %tmp_731, i9 %tmp_734, i9 %tmp_736, !dbg !666 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_738 = select i1 %tmp_731, i256 %tmp_733, i256 %tmp_711 ; [#uses=1 type=i256]
  %tmp_739 = select i1 %tmp_731, i9 %tmp_735, i9 %tmp_732 ; [#uses=1 type=i9]
  %tmp_740 = sub i9 255, %tmp_737                 ; [#uses=1 type=i9]
  %tmp_741 = zext i9 %tmp_739 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_742 = zext i9 %tmp_740 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_743 = lshr i256 %tmp_738, %tmp_741, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_744 = lshr i256 -1, %tmp_742, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_745 = and i256 %tmp_743, %tmp_744          ; [#uses=1 type=i256]
  %tmp_746 = trunc i256 %tmp_745 to i8, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_66_1 = xor i8 %tmp_746, %tmp_728, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_747 = icmp ugt i10 %tmp_163_cast, %tmp_164_cast ; [#uses=4 type=i1]
  %tmp_748 = zext i8 %tmp_729 to i9, !dbg !666    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_749 = zext i8 %tmp_66_1 to i256, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_750 = xor i9 %tmp_748, 255, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_751 = select i1 %tmp_747, i9 %tmp_748, i9 %tmp_146 ; [#uses=1 type=i9]
  %tmp_752 = select i1 %tmp_747, i9 %tmp_146, i9 %tmp_748 ; [#uses=1 type=i9]
  %tmp_753 = select i1 %tmp_747, i9 %tmp_750, i9 %tmp_748 ; [#uses=1 type=i9]
  %tmp_754 = sub i9 255, %tmp_751, !dbg !666      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_755 = zext i9 %tmp_753 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_756 = zext i9 %tmp_752 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_757 = zext i9 %tmp_754 to i256, !dbg !666  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_758 = shl i256 %tmp_749, %tmp_755, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_759 = call i256 @llvm.part.select.i256(i256 %tmp_758, i32 255, i32 0), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_760 = select i1 %tmp_747, i256 %tmp_759, i256 %tmp_758 ; [#uses=1 type=i256]
  %tmp_761 = shl i256 -1, %tmp_756, !dbg !666     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_762 = lshr i256 -1, %tmp_757, !dbg !666    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan11 = and i256 %tmp_761, %tmp_762, !dbg !666 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_763 = xor i256 %p_demorgan11, -1, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_764 = and i256 %tmp_711, %tmp_763, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_765 = and i256 %tmp_760, %p_demorgan11, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_766 = or i256 %tmp_764, %tmp_765, !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %gep11011_part_set_1 = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp_766, i32 512, i32 767), !dbg !666 ; [#uses=2 type=i1024] [debug line = 290:2]
  %k_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !666 ; [#uses=0 type=i1] [debug line = 290:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set_1, i128 -1), !dbg !666 ; [debug line = 290:2]
  %k_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr), !dbg !666 ; [#uses=0 type=i1] [debug line = 290:2]
  %i_9_1 = add i6 8, %i_1, !dbg !667              ; [#uses=1 type=i6] [debug line = 283:32]
  br label %4, !dbg !667                          ; [debug line = 283:32]

; <label>:7                                       ; preds = %5, %4
  ret i8 %tmp_19, !dbg !668                       ; [debug line = 294:1]
}

; [#uses=2]
define internal fastcc i8 @aes_expandEncKey(i1024* %k, i25 %k_offset, i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_2}, i64 0, metadata !635), !dbg !639 ; [debug line = 258:44] [debug variable = rc]
  %k_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %k_offset) ; [#uses=1 type=i25]
  %k_offset_cast = zext i25 %k_offset_read to i32 ; [#uses=1 type=i32]
  %k_addr = getelementptr i1024* %k, i32 %k_offset_cast ; [#uses=5 type=i1024*]
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i1024* %k}, i64 0, metadata !640), !dbg !642 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !635), !dbg !639 ; [debug line = 258:44] [debug variable = rc]
  %k_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !643 ; [#uses=0 type=i1] [debug line = 262:5]
  %k_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %k_addr), !dbg !643 ; [#uses=32 type=i1024] [debug line = 262:5]
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 232, i32 239), !dbg !643 ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp = zext i8 %tmp_s to i32, !dbg !643         ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !643 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !643 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_767 = trunc i1024 %k_addr_read to i8, !dbg !643 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %tmp_767, %rc_read_2, !dbg !643  ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_22 = xor i8 %tmp1, %sbox_load, !dbg !643   ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp_147 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 240, i32 247), !dbg !645 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp_23 = zext i8 %tmp_147 to i32, !dbg !645    ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_23, !dbg !645 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !645 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_148 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 8, i32 15), !dbg !645 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_24 = xor i8 %sbox_load_1, %tmp_148, !dbg !645 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp_149 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 248, i32 255), !dbg !646 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp_25 = zext i8 %tmp_149 to i32, !dbg !646    ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_25, !dbg !646 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !646 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_150 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 16, i32 23), !dbg !646 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_26 = xor i8 %sbox_load_2, %tmp_150, !dbg !646 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp_151 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 224, i32 231), !dbg !647 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp_27 = zext i8 %tmp_151 to i32, !dbg !647    ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_27, !dbg !647 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !647 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_152 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 24, i32 31), !dbg !647 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_28 = xor i8 %sbox_load_3, %tmp_152, !dbg !647 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp_768 = shl i8 %rc_read_2, 1, !dbg !648      ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp_769 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_2, i32 7), !dbg !648 ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp_31_cast_cast = select i1 %tmp_769, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp_32 = xor i8 %tmp_31_cast_cast, %tmp_768, !dbg !648 ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp_153 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 32, i32 39), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_36 = xor i8 %tmp_153, %tmp_22, !dbg !654   ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_154 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 40, i32 47), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_39 = xor i8 %tmp_154, %tmp_24, !dbg !654   ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_155 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 48, i32 55), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_42 = xor i8 %tmp_155, %tmp_26, !dbg !654   ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_156 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 56, i32 63), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_45 = xor i8 %tmp_156, %tmp_28, !dbg !654   ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_157 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 64, i32 71), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_36_1 = xor i8 %tmp_157, %tmp_36, !dbg !654 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_158 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 72, i32 79), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_39_1 = xor i8 %tmp_158, %tmp_39, !dbg !654 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_159 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 80, i32 87), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_42_1 = xor i8 %tmp_159, %tmp_42, !dbg !654 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_160 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 88, i32 95), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_45_1 = xor i8 %tmp_160, %tmp_45, !dbg !654 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_161 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 96, i32 103), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_36_2 = xor i8 %tmp_161, %tmp_36_1, !dbg !654 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_162 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 104, i32 111), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_39_2 = xor i8 %tmp_162, %tmp_39_1, !dbg !654 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_163 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 112, i32 119), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_42_2 = xor i8 %tmp_163, %tmp_42_1, !dbg !654 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_164 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 120, i32 127), !dbg !654 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_45_2 = xor i8 %tmp_164, %tmp_45_1, !dbg !654 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_46 = zext i8 %tmp_36_2 to i32, !dbg !658   ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_46, !dbg !658 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox_load_4 = load i8* %sbox_addr_4, align 1, !dbg !658 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_165 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 128, i32 135), !dbg !658 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_47 = xor i8 %sbox_load_4, %tmp_165, !dbg !658 ; [#uses=2 type=i8] [debug line = 278:5]
  %tmp_48 = zext i8 %tmp_39_2 to i32, !dbg !659   ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_48, !dbg !659 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !659 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_166 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 136, i32 143), !dbg !659 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_49 = xor i8 %sbox_load_5, %tmp_166, !dbg !659 ; [#uses=2 type=i8] [debug line = 279:5]
  %tmp_50 = zext i8 %tmp_42_2 to i32, !dbg !660   ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_50, !dbg !660 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !660 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_167 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 144, i32 151), !dbg !660 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_51 = xor i8 %sbox_load_6, %tmp_167, !dbg !660 ; [#uses=2 type=i8] [debug line = 280:5]
  %tmp_52 = zext i8 %tmp_45_2 to i32, !dbg !661   ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_52, !dbg !661 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !661 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_168 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 152, i32 159), !dbg !661 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_53 = xor i8 %sbox_load_7, %tmp_168, !dbg !661 ; [#uses=2 type=i8] [debug line = 281:5]
  %tmp_169 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 160, i32 167), !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_57 = xor i8 %tmp_169, %tmp_47, !dbg !666   ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_170 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 168, i32 175), !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_60 = xor i8 %tmp_170, %tmp_49, !dbg !666   ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_171 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 176, i32 183), !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_63 = xor i8 %tmp_171, %tmp_51, !dbg !666   ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_172 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 184, i32 191), !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_66 = xor i8 %tmp_172, %tmp_53, !dbg !666   ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_173 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 192, i32 199), !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_57_1 = xor i8 %tmp_173, %tmp_57, !dbg !666 ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_174 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 200, i32 207), !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_60_1 = xor i8 %tmp_174, %tmp_60, !dbg !666 ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_175 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 208, i32 215), !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_63_1 = xor i8 %tmp_175, %tmp_63, !dbg !666 ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_176 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 216, i32 223), !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_66_1 = xor i8 %tmp_176, %tmp_66, !dbg !666 ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_57_2 = xor i8 %tmp_151, %tmp_57_1, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_60_2 = xor i8 %tmp_s, %tmp_60_1, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_63_2 = xor i8 %tmp_147, %tmp_63_1, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_66_2 = xor i8 %tmp_149, %tmp_66_1, !dbg !666 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_177 = call i256 @_ssdm_op_BitConcatenate.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp_66_2, i8 %tmp_63_2, i8 %tmp_60_2, i8 %tmp_57_2, i8 %tmp_66_1, i8 %tmp_63_1, i8 %tmp_60_1, i8 %tmp_57_1, i8 %tmp_66, i8 %tmp_63, i8 %tmp_60, i8 %tmp_57, i8 %tmp_53, i8 %tmp_51, i8 %tmp_49, i8 %tmp_47, i8 %tmp_45_2, i8 %tmp_42_2, i8 %tmp_39_2, i8 %tmp_36_2, i8 %tmp_45_1, i8 %tmp_42_1, i8 %tmp_39_1, i8 %tmp_36_1, i8 %tmp_45, i8 %tmp_42, i8 %tmp_39, i8 %tmp_36, i8 %tmp_28, i8 %tmp_26, i8 %tmp_24, i8 %tmp_22), !dbg !666 ; [#uses=1 type=i256] [debug line = 290:2]
  %gep11011_part_set_2 = zext i256 %tmp_177 to i1024, !dbg !666 ; [#uses=1 type=i1024] [debug line = 290:2]
  %k_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !666 ; [#uses=0 type=i1] [debug line = 290:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set_2, i128 4294967295), !dbg !666 ; [debug line = 290:2]
  %k_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr), !dbg !666 ; [#uses=0 type=i1] [debug line = 290:2]
  ret i8 %tmp_32, !dbg !668                       ; [debug line = 294:1]
}

; [#uses=1]
define internal fastcc void @aes_addRoundKey_cpy(i8* %buf, i32 %buf_offset, i1024* %ctx, i25 %ctx_offset) {
  %ctx_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %ctx_offset) ; [#uses=1 type=i25]
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=9 type=i32]
  %ctx_offset_cast = zext i25 %ctx_offset_read to i32 ; [#uses=1 type=i32]
  %ctx_addr = getelementptr i1024* %ctx, i32 %ctx_offset_cast ; [#uses=8 type=i1024*]
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !669), !dbg !673 ; [debug line = 210:35] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i1024* %ctx}, i64 0, metadata !674), !dbg !677 ; [debug line = 210:49] [debug variable = ctx]
  br label %1, !dbg !678                          ; [debug line = 214:13]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_10_8, %2 ]        ; [#uses=19 type=i5]
  %i_s = add i5 -1, %i, !dbg !678                 ; [#uses=1 type=i5] [debug line = 214:13]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str3) nounwind, !dbg !680 ; [debug line = 215:6]
  %tmp_s = zext i5 %i_s to i32, !dbg !682         ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp = trunc i5 %i to i4                        ; [#uses=7 type=i4]
  %ctx_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %ctx_addr, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %ctx_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %ctx_addr), !dbg !682 ; [#uses=20 type=i1024] [debug line = 221:2]
  %p_new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 256, i32 511), !dbg !682 ; [#uses=18 type=i256] [debug line = 221:2]
  %tmp_178 = add i4 -1, %tmp                      ; [#uses=1 type=i4]
  %tmp_179 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_178, i3 0) ; [#uses=5 type=i7]
  %tmp_180 = or i7 %tmp_179, 7                    ; [#uses=4 type=i7]
  %tmp_770 = icmp ugt i7 %tmp_179, %tmp_180       ; [#uses=3 type=i1]
  %tmp_771 = zext i7 %tmp_179 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_772 = zext i7 %tmp_180 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_773 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_774 = sub i9 %tmp_771, %tmp_772, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_775 = xor i9 %tmp_771, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_776 = sub i9 %tmp_772, %tmp_771, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_777 = select i1 %tmp_770, i9 %tmp_774, i9 %tmp_776, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_778 = select i1 %tmp_770, i256 %tmp_773, i256 %p_new ; [#uses=1 type=i256]
  %tmp_779 = select i1 %tmp_770, i9 %tmp_775, i9 %tmp_771 ; [#uses=1 type=i9]
  %tmp_780 = sub i9 255, %tmp_777                 ; [#uses=1 type=i9]
  %tmp_781 = zext i9 %tmp_779 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_782 = zext i9 %tmp_780 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_783 = lshr i256 %tmp_778, %tmp_781, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_784 = lshr i256 -1, %tmp_782, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_785 = and i256 %tmp_783, %tmp_784          ; [#uses=1 type=i256]
  %tmp_786 = trunc i256 %tmp_785 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_787 = trunc i1024 %ctx_addr_read to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_788 = icmp ugt i7 %tmp_179, %tmp_180       ; [#uses=4 type=i1]
  %tmp_789 = zext i7 %tmp_179 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_790 = zext i7 %tmp_180 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_791 = zext i8 %tmp_786 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_792 = xor i9 %tmp_789, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_793 = select i1 %tmp_788, i9 %tmp_789, i9 %tmp_790 ; [#uses=1 type=i9]
  %tmp_794 = select i1 %tmp_788, i9 %tmp_790, i9 %tmp_789 ; [#uses=1 type=i9]
  %tmp_795 = select i1 %tmp_788, i9 %tmp_792, i9 %tmp_789 ; [#uses=1 type=i9]
  %tmp_796 = xor i9 %tmp_793, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_797 = zext i9 %tmp_795 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_798 = zext i9 %tmp_794 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_799 = zext i9 %tmp_796 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_800 = shl i256 %tmp_791, %tmp_797, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_801 = call i256 @llvm.part.select.i256(i256 %tmp_800, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_802 = select i1 %tmp_788, i256 %tmp_801, i256 %tmp_800 ; [#uses=1 type=i256]
  %tmp_803 = shl i256 -1, %tmp_798, !dbg !682     ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_804 = lshr i256 -1, %tmp_799, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan = and i256 %tmp_803, %tmp_804, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_805 = xor i256 %p_demorgan, -1, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_806 = and i256 %tmp_787, %tmp_805, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_807 = and i256 %tmp_802, %p_demorgan, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_808 = or i256 %tmp_806, %tmp_807, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum = add i32 %buf_offset_read, %tmp_s         ; [#uses=1 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %sum    ; [#uses=5 type=i8*]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67 = xor i8 %buf_addr_read, %tmp_786, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_67, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_181 = add i5 15, %i, !dbg !682             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_182 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_181, i3 0) ; [#uses=5 type=i8]
  %tmp_183 = or i8 %tmp_182, 7                    ; [#uses=4 type=i8]
  %tmp_809 = icmp ugt i8 %tmp_182, %tmp_183       ; [#uses=3 type=i1]
  %tmp_810 = zext i8 %tmp_182 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_811 = zext i8 %tmp_183 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_812 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_813 = sub i9 %tmp_810, %tmp_811, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_814 = xor i9 %tmp_810, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_815 = sub i9 %tmp_811, %tmp_810, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_816 = select i1 %tmp_809, i9 %tmp_813, i9 %tmp_815, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_817 = select i1 %tmp_809, i256 %tmp_812, i256 %p_new ; [#uses=1 type=i256]
  %tmp_818 = select i1 %tmp_809, i9 %tmp_814, i9 %tmp_810 ; [#uses=1 type=i9]
  %tmp_819 = sub i9 255, %tmp_816                 ; [#uses=1 type=i9]
  %tmp_820 = zext i9 %tmp_818 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_821 = zext i9 %tmp_819 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_822 = lshr i256 %tmp_817, %tmp_820, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_823 = lshr i256 -1, %tmp_821, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_824 = and i256 %tmp_822, %tmp_823          ; [#uses=1 type=i256]
  %tmp_825 = trunc i256 %tmp_824 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_826 = icmp ugt i8 %tmp_182, %tmp_183       ; [#uses=4 type=i1]
  %tmp_827 = zext i8 %tmp_182 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_828 = zext i8 %tmp_183 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_829 = zext i8 %tmp_825 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_830 = xor i9 %tmp_827, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_831 = select i1 %tmp_826, i9 %tmp_827, i9 %tmp_828 ; [#uses=1 type=i9]
  %tmp_832 = select i1 %tmp_826, i9 %tmp_828, i9 %tmp_827 ; [#uses=1 type=i9]
  %tmp_833 = select i1 %tmp_826, i9 %tmp_830, i9 %tmp_827 ; [#uses=1 type=i9]
  %tmp_834 = xor i9 %tmp_831, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_835 = zext i9 %tmp_833 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_836 = zext i9 %tmp_832 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_837 = zext i9 %tmp_834 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_838 = shl i256 %tmp_829, %tmp_835, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_839 = call i256 @llvm.part.select.i256(i256 %tmp_838, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_840 = select i1 %tmp_826, i256 %tmp_839, i256 %tmp_838 ; [#uses=1 type=i256]
  %tmp_841 = shl i256 -1, %tmp_836, !dbg !682     ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_842 = lshr i256 -1, %tmp_837, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan5 = and i256 %tmp_841, %tmp_842, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_843 = xor i256 %p_demorgan5, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_844 = and i256 %tmp_808, %tmp_843, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_845 = and i256 %tmp_840, %p_demorgan5, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_846 = or i256 %tmp_844, %tmp_845, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %i_10_1 = add i5 -2, %i, !dbg !678              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp_1 = zext i5 %i_10_1 to i32, !dbg !682      ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_184 = add i4 -2, %tmp                      ; [#uses=1 type=i4]
  %tmp_185 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_184, i3 0) ; [#uses=5 type=i7]
  %tmp_186 = or i7 %tmp_185, 7                    ; [#uses=4 type=i7]
  %tmp_847 = icmp ugt i7 %tmp_185, %tmp_186       ; [#uses=3 type=i1]
  %tmp_848 = zext i7 %tmp_185 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_849 = zext i7 %tmp_186 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_850 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_851 = sub i9 %tmp_848, %tmp_849, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_852 = xor i9 %tmp_848, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_853 = sub i9 %tmp_849, %tmp_848, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_854 = select i1 %tmp_847, i9 %tmp_851, i9 %tmp_853, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_855 = select i1 %tmp_847, i256 %tmp_850, i256 %p_new ; [#uses=1 type=i256]
  %tmp_856 = select i1 %tmp_847, i9 %tmp_852, i9 %tmp_848 ; [#uses=1 type=i9]
  %tmp_857 = sub i9 255, %tmp_854                 ; [#uses=1 type=i9]
  %tmp_858 = zext i9 %tmp_856 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_859 = zext i9 %tmp_857 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_860 = lshr i256 %tmp_855, %tmp_858, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_861 = lshr i256 -1, %tmp_859, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_862 = and i256 %tmp_860, %tmp_861          ; [#uses=1 type=i256]
  %tmp_863 = trunc i256 %tmp_862 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_864 = icmp ugt i7 %tmp_185, %tmp_186       ; [#uses=4 type=i1]
  %tmp_865 = zext i7 %tmp_185 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_866 = zext i7 %tmp_186 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_867 = zext i8 %tmp_863 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_868 = xor i9 %tmp_865, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_869 = select i1 %tmp_864, i9 %tmp_865, i9 %tmp_866 ; [#uses=1 type=i9]
  %tmp_870 = select i1 %tmp_864, i9 %tmp_866, i9 %tmp_865 ; [#uses=1 type=i9]
  %tmp_871 = select i1 %tmp_864, i9 %tmp_868, i9 %tmp_865 ; [#uses=1 type=i9]
  %tmp_872 = xor i9 %tmp_869, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_873 = zext i9 %tmp_871 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_874 = zext i9 %tmp_870 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_875 = zext i9 %tmp_872 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_876 = shl i256 %tmp_867, %tmp_873, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_877 = call i256 @llvm.part.select.i256(i256 %tmp_876, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_878 = select i1 %tmp_864, i256 %tmp_877, i256 %tmp_876 ; [#uses=1 type=i256]
  %tmp_879 = shl i256 -1, %tmp_874, !dbg !682     ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_880 = lshr i256 -1, %tmp_875, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan6 = and i256 %tmp_879, %tmp_880, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_881 = xor i256 %p_demorgan6, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_882 = and i256 %tmp_846, %tmp_881, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_883 = and i256 %tmp_878, %p_demorgan6, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_884 = or i256 %tmp_882, %tmp_883, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum1 = add i32 %buf_offset_read, %tmp_1        ; [#uses=1 type=i32]
  %buf_addr_42 = getelementptr i8* %buf, i32 %sum1 ; [#uses=5 type=i8*]
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_42, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_42_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_42), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67_1 = xor i8 %buf_addr_42_read, %tmp_863, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_42_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_42, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_42, i8 %tmp_67_1, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_42_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_42), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_187 = add i5 14, %i, !dbg !682             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_188 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_187, i3 0) ; [#uses=5 type=i8]
  %tmp_189 = or i8 %tmp_188, 7                    ; [#uses=4 type=i8]
  %tmp_885 = icmp ugt i8 %tmp_188, %tmp_189       ; [#uses=3 type=i1]
  %tmp_886 = zext i8 %tmp_188 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_887 = zext i8 %tmp_189 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_888 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_889 = sub i9 %tmp_886, %tmp_887, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_890 = xor i9 %tmp_886, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_891 = sub i9 %tmp_887, %tmp_886, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_892 = select i1 %tmp_885, i9 %tmp_889, i9 %tmp_891, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_893 = select i1 %tmp_885, i256 %tmp_888, i256 %p_new ; [#uses=1 type=i256]
  %tmp_894 = select i1 %tmp_885, i9 %tmp_890, i9 %tmp_886 ; [#uses=1 type=i9]
  %tmp_895 = sub i9 255, %tmp_892                 ; [#uses=1 type=i9]
  %tmp_896 = zext i9 %tmp_894 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_897 = zext i9 %tmp_895 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_898 = lshr i256 %tmp_893, %tmp_896, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_899 = lshr i256 -1, %tmp_897, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_900 = and i256 %tmp_898, %tmp_899          ; [#uses=1 type=i256]
  %tmp_901 = trunc i256 %tmp_900 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_902 = icmp ugt i8 %tmp_188, %tmp_189       ; [#uses=4 type=i1]
  %tmp_903 = zext i8 %tmp_188 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_904 = zext i8 %tmp_189 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_905 = zext i8 %tmp_901 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_906 = xor i9 %tmp_903, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_907 = select i1 %tmp_902, i9 %tmp_903, i9 %tmp_904 ; [#uses=1 type=i9]
  %tmp_908 = select i1 %tmp_902, i9 %tmp_904, i9 %tmp_903 ; [#uses=1 type=i9]
  %tmp_909 = select i1 %tmp_902, i9 %tmp_906, i9 %tmp_903 ; [#uses=1 type=i9]
  %tmp_910 = xor i9 %tmp_907, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_911 = zext i9 %tmp_909 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_912 = zext i9 %tmp_908 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_913 = zext i9 %tmp_910 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_914 = shl i256 %tmp_905, %tmp_911, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_915 = call i256 @llvm.part.select.i256(i256 %tmp_914, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_916 = select i1 %tmp_902, i256 %tmp_915, i256 %tmp_914 ; [#uses=1 type=i256]
  %tmp_917 = shl i256 -1, %tmp_912, !dbg !682     ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_918 = lshr i256 -1, %tmp_913, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan7 = and i256 %tmp_917, %tmp_918, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_919 = xor i256 %p_demorgan7, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_920 = and i256 %tmp_884, %tmp_919, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_921 = and i256 %tmp_916, %p_demorgan7, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_922 = or i256 %tmp_920, %tmp_921, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %i_10_2 = add i5 -3, %i, !dbg !678              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp_2 = zext i5 %i_10_2 to i32, !dbg !682      ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_190 = add i4 -3, %tmp                      ; [#uses=1 type=i4]
  %tmp_191 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_190, i3 0) ; [#uses=5 type=i7]
  %tmp_192 = or i7 %tmp_191, 7                    ; [#uses=4 type=i7]
  %tmp_923 = icmp ugt i7 %tmp_191, %tmp_192       ; [#uses=3 type=i1]
  %tmp_924 = zext i7 %tmp_191 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_925 = zext i7 %tmp_192 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_926 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_927 = sub i9 %tmp_924, %tmp_925, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_928 = xor i9 %tmp_924, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_929 = sub i9 %tmp_925, %tmp_924, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_930 = select i1 %tmp_923, i9 %tmp_927, i9 %tmp_929, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_931 = select i1 %tmp_923, i256 %tmp_926, i256 %p_new ; [#uses=1 type=i256]
  %tmp_932 = select i1 %tmp_923, i9 %tmp_928, i9 %tmp_924 ; [#uses=1 type=i9]
  %tmp_933 = sub i9 255, %tmp_930                 ; [#uses=1 type=i9]
  %tmp_934 = zext i9 %tmp_932 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_935 = zext i9 %tmp_933 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_936 = lshr i256 %tmp_931, %tmp_934, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_937 = lshr i256 -1, %tmp_935, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_938 = and i256 %tmp_936, %tmp_937          ; [#uses=1 type=i256]
  %tmp_939 = trunc i256 %tmp_938 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_940 = icmp ugt i7 %tmp_191, %tmp_192       ; [#uses=4 type=i1]
  %tmp_941 = zext i7 %tmp_191 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_942 = zext i7 %tmp_192 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_943 = zext i8 %tmp_939 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_944 = xor i9 %tmp_941, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_945 = select i1 %tmp_940, i9 %tmp_941, i9 %tmp_942 ; [#uses=1 type=i9]
  %tmp_946 = select i1 %tmp_940, i9 %tmp_942, i9 %tmp_941 ; [#uses=1 type=i9]
  %tmp_947 = select i1 %tmp_940, i9 %tmp_944, i9 %tmp_941 ; [#uses=1 type=i9]
  %tmp_948 = xor i9 %tmp_945, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_949 = zext i9 %tmp_947 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_950 = zext i9 %tmp_946 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_951 = zext i9 %tmp_948 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_952 = shl i256 %tmp_943, %tmp_949, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_953 = call i256 @llvm.part.select.i256(i256 %tmp_952, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_954 = select i1 %tmp_940, i256 %tmp_953, i256 %tmp_952 ; [#uses=1 type=i256]
  %tmp_955 = shl i256 -1, %tmp_950, !dbg !682     ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_956 = lshr i256 -1, %tmp_951, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan8 = and i256 %tmp_955, %tmp_956, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_957 = xor i256 %p_demorgan8, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_958 = and i256 %tmp_922, %tmp_957, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_959 = and i256 %tmp_954, %p_demorgan8, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_960 = or i256 %tmp_958, %tmp_959, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum2 = add i32 %buf_offset_read, %tmp_2        ; [#uses=1 type=i32]
  %buf_addr_43 = getelementptr i8* %buf, i32 %sum2 ; [#uses=5 type=i8*]
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_43, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_43_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_43), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67_2 = xor i8 %buf_addr_43_read, %tmp_939, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_43_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_43, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_43, i8 %tmp_67_2, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_43_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_43), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_193 = add i5 13, %i, !dbg !682             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_194 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_193, i3 0) ; [#uses=5 type=i8]
  %tmp_195 = or i8 %tmp_194, 7                    ; [#uses=4 type=i8]
  %tmp_961 = icmp ugt i8 %tmp_194, %tmp_195       ; [#uses=3 type=i1]
  %tmp_962 = zext i8 %tmp_194 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_963 = zext i8 %tmp_195 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_964 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_965 = sub i9 %tmp_962, %tmp_963, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_966 = xor i9 %tmp_962, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_967 = sub i9 %tmp_963, %tmp_962, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_968 = select i1 %tmp_961, i9 %tmp_965, i9 %tmp_967, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_969 = select i1 %tmp_961, i256 %tmp_964, i256 %p_new ; [#uses=1 type=i256]
  %tmp_970 = select i1 %tmp_961, i9 %tmp_966, i9 %tmp_962 ; [#uses=1 type=i9]
  %tmp_971 = sub i9 255, %tmp_968                 ; [#uses=1 type=i9]
  %tmp_972 = zext i9 %tmp_970 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_973 = zext i9 %tmp_971 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_974 = lshr i256 %tmp_969, %tmp_972, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_975 = lshr i256 -1, %tmp_973, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_976 = and i256 %tmp_974, %tmp_975          ; [#uses=1 type=i256]
  %tmp_977 = trunc i256 %tmp_976 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_978 = icmp ugt i8 %tmp_194, %tmp_195       ; [#uses=4 type=i1]
  %tmp_979 = zext i8 %tmp_194 to i9, !dbg !682    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_980 = zext i8 %tmp_195 to i9, !dbg !682    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_981 = zext i8 %tmp_977 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_982 = xor i9 %tmp_979, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_983 = select i1 %tmp_978, i9 %tmp_979, i9 %tmp_980 ; [#uses=1 type=i9]
  %tmp_984 = select i1 %tmp_978, i9 %tmp_980, i9 %tmp_979 ; [#uses=1 type=i9]
  %tmp_985 = select i1 %tmp_978, i9 %tmp_982, i9 %tmp_979 ; [#uses=1 type=i9]
  %tmp_986 = xor i9 %tmp_983, 255, !dbg !682      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_987 = zext i9 %tmp_985 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_988 = zext i9 %tmp_984 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_989 = zext i9 %tmp_986 to i256, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_990 = shl i256 %tmp_981, %tmp_987, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_991 = call i256 @llvm.part.select.i256(i256 %tmp_990, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_992 = select i1 %tmp_978, i256 %tmp_991, i256 %tmp_990 ; [#uses=1 type=i256]
  %tmp_993 = shl i256 -1, %tmp_988, !dbg !682     ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_994 = lshr i256 -1, %tmp_989, !dbg !682    ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan9 = and i256 %tmp_993, %tmp_994, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_995 = xor i256 %p_demorgan9, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_996 = and i256 %tmp_960, %tmp_995, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_997 = and i256 %tmp_992, %p_demorgan9, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_998 = or i256 %tmp_996, %tmp_997, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %i_10_3 = add i5 -4, %i, !dbg !678              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp_3 = zext i5 %i_10_3 to i32, !dbg !682      ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_196 = add i4 -4, %tmp                      ; [#uses=1 type=i4]
  %tmp_197 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_196, i3 0) ; [#uses=5 type=i7]
  %tmp_198 = or i7 %tmp_197, 7                    ; [#uses=4 type=i7]
  %tmp_999 = icmp ugt i7 %tmp_197, %tmp_198       ; [#uses=3 type=i1]
  %tmp_1000 = zext i7 %tmp_197 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1001 = zext i7 %tmp_198 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1002 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1003 = sub i9 %tmp_1000, %tmp_1001, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1004 = xor i9 %tmp_1000, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1005 = sub i9 %tmp_1001, %tmp_1000, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1006 = select i1 %tmp_999, i9 %tmp_1003, i9 %tmp_1005, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1007 = select i1 %tmp_999, i256 %tmp_1002, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1008 = select i1 %tmp_999, i9 %tmp_1004, i9 %tmp_1000 ; [#uses=1 type=i9]
  %tmp_1009 = sub i9 255, %tmp_1006               ; [#uses=1 type=i9]
  %tmp_1010 = zext i9 %tmp_1008 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1011 = zext i9 %tmp_1009 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1012 = lshr i256 %tmp_1007, %tmp_1010, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1013 = lshr i256 -1, %tmp_1011, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1014 = and i256 %tmp_1012, %tmp_1013       ; [#uses=1 type=i256]
  %tmp_1015 = trunc i256 %tmp_1014 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_1016 = icmp ugt i7 %tmp_197, %tmp_198      ; [#uses=4 type=i1]
  %tmp_1017 = zext i7 %tmp_197 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1018 = zext i7 %tmp_198 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1019 = zext i8 %tmp_1015 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1020 = xor i9 %tmp_1017, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1021 = select i1 %tmp_1016, i9 %tmp_1017, i9 %tmp_1018 ; [#uses=1 type=i9]
  %tmp_1022 = select i1 %tmp_1016, i9 %tmp_1018, i9 %tmp_1017 ; [#uses=1 type=i9]
  %tmp_1023 = select i1 %tmp_1016, i9 %tmp_1020, i9 %tmp_1017 ; [#uses=1 type=i9]
  %tmp_1024 = xor i9 %tmp_1021, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1025 = zext i9 %tmp_1023 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1026 = zext i9 %tmp_1022 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1027 = zext i9 %tmp_1024 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1028 = shl i256 %tmp_1019, %tmp_1025, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1029 = call i256 @llvm.part.select.i256(i256 %tmp_1028, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1030 = select i1 %tmp_1016, i256 %tmp_1029, i256 %tmp_1028 ; [#uses=1 type=i256]
  %tmp_1031 = shl i256 -1, %tmp_1026, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1032 = lshr i256 -1, %tmp_1027, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan10 = and i256 %tmp_1031, %tmp_1032, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1033 = xor i256 %p_demorgan10, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1034 = and i256 %tmp_998, %tmp_1033, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1035 = and i256 %tmp_1030, %p_demorgan10, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1036 = or i256 %tmp_1034, %tmp_1035, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum3 = add i32 %buf_offset_read, %tmp_3        ; [#uses=1 type=i32]
  %buf_addr_44 = getelementptr i8* %buf, i32 %sum3 ; [#uses=5 type=i8*]
  %buf_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_44, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_44_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_44), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67_3 = xor i8 %buf_addr_44_read, %tmp_1015, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_44_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_44, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_44, i8 %tmp_67_3, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_44_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_44), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_199 = add i5 12, %i, !dbg !682             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_200 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_199, i3 0) ; [#uses=5 type=i8]
  %tmp_201 = or i8 %tmp_200, 7                    ; [#uses=4 type=i8]
  %tmp_1037 = icmp ugt i8 %tmp_200, %tmp_201      ; [#uses=3 type=i1]
  %tmp_1038 = zext i8 %tmp_200 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1039 = zext i8 %tmp_201 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1040 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1041 = sub i9 %tmp_1038, %tmp_1039, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1042 = xor i9 %tmp_1038, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1043 = sub i9 %tmp_1039, %tmp_1038, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1044 = select i1 %tmp_1037, i9 %tmp_1041, i9 %tmp_1043, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1045 = select i1 %tmp_1037, i256 %tmp_1040, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1046 = select i1 %tmp_1037, i9 %tmp_1042, i9 %tmp_1038 ; [#uses=1 type=i9]
  %tmp_1047 = sub i9 255, %tmp_1044               ; [#uses=1 type=i9]
  %tmp_1048 = zext i9 %tmp_1046 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1049 = zext i9 %tmp_1047 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1050 = lshr i256 %tmp_1045, %tmp_1048, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1051 = lshr i256 -1, %tmp_1049, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1052 = and i256 %tmp_1050, %tmp_1051       ; [#uses=1 type=i256]
  %tmp_1053 = trunc i256 %tmp_1052 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_1054 = icmp ugt i8 %tmp_200, %tmp_201      ; [#uses=4 type=i1]
  %tmp_1055 = zext i8 %tmp_200 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1056 = zext i8 %tmp_201 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1057 = zext i8 %tmp_1053 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1058 = xor i9 %tmp_1055, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1059 = select i1 %tmp_1054, i9 %tmp_1055, i9 %tmp_1056 ; [#uses=1 type=i9]
  %tmp_1060 = select i1 %tmp_1054, i9 %tmp_1056, i9 %tmp_1055 ; [#uses=1 type=i9]
  %tmp_1061 = select i1 %tmp_1054, i9 %tmp_1058, i9 %tmp_1055 ; [#uses=1 type=i9]
  %tmp_1062 = xor i9 %tmp_1059, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1063 = zext i9 %tmp_1061 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1064 = zext i9 %tmp_1060 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1065 = zext i9 %tmp_1062 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1066 = shl i256 %tmp_1057, %tmp_1063, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1067 = call i256 @llvm.part.select.i256(i256 %tmp_1066, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1068 = select i1 %tmp_1054, i256 %tmp_1067, i256 %tmp_1066 ; [#uses=1 type=i256]
  %tmp_1069 = shl i256 -1, %tmp_1064, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1070 = lshr i256 -1, %tmp_1065, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan11 = and i256 %tmp_1069, %tmp_1070, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1071 = xor i256 %p_demorgan11, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1072 = and i256 %tmp_1036, %tmp_1071, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1073 = and i256 %tmp_1068, %p_demorgan11, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1074 = or i256 %tmp_1072, %tmp_1073, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %i_10_4 = add i5 -5, %i, !dbg !678              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp_4 = zext i5 %i_10_4 to i32, !dbg !682      ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_202 = add i4 -5, %tmp                      ; [#uses=1 type=i4]
  %tmp_203 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_202, i3 0) ; [#uses=5 type=i7]
  %tmp_204 = or i7 %tmp_203, 7                    ; [#uses=4 type=i7]
  %tmp_1075 = icmp ugt i7 %tmp_203, %tmp_204      ; [#uses=3 type=i1]
  %tmp_1076 = zext i7 %tmp_203 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1077 = zext i7 %tmp_204 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1078 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1079 = sub i9 %tmp_1076, %tmp_1077, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1080 = xor i9 %tmp_1076, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1081 = sub i9 %tmp_1077, %tmp_1076, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1082 = select i1 %tmp_1075, i9 %tmp_1079, i9 %tmp_1081, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1083 = select i1 %tmp_1075, i256 %tmp_1078, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1084 = select i1 %tmp_1075, i9 %tmp_1080, i9 %tmp_1076 ; [#uses=1 type=i9]
  %tmp_1085 = sub i9 255, %tmp_1082               ; [#uses=1 type=i9]
  %tmp_1086 = zext i9 %tmp_1084 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1087 = zext i9 %tmp_1085 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1088 = lshr i256 %tmp_1083, %tmp_1086, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1089 = lshr i256 -1, %tmp_1087, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1090 = and i256 %tmp_1088, %tmp_1089       ; [#uses=1 type=i256]
  %tmp_1091 = trunc i256 %tmp_1090 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_1092 = icmp ugt i7 %tmp_203, %tmp_204      ; [#uses=4 type=i1]
  %tmp_1093 = zext i7 %tmp_203 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1094 = zext i7 %tmp_204 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1095 = zext i8 %tmp_1091 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1096 = xor i9 %tmp_1093, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1097 = select i1 %tmp_1092, i9 %tmp_1093, i9 %tmp_1094 ; [#uses=1 type=i9]
  %tmp_1098 = select i1 %tmp_1092, i9 %tmp_1094, i9 %tmp_1093 ; [#uses=1 type=i9]
  %tmp_1099 = select i1 %tmp_1092, i9 %tmp_1096, i9 %tmp_1093 ; [#uses=1 type=i9]
  %tmp_1100 = xor i9 %tmp_1097, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1101 = zext i9 %tmp_1099 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1102 = zext i9 %tmp_1098 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1103 = zext i9 %tmp_1100 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1104 = shl i256 %tmp_1095, %tmp_1101, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1105 = call i256 @llvm.part.select.i256(i256 %tmp_1104, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1106 = select i1 %tmp_1092, i256 %tmp_1105, i256 %tmp_1104 ; [#uses=1 type=i256]
  %tmp_1107 = shl i256 -1, %tmp_1102, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1108 = lshr i256 -1, %tmp_1103, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan12 = and i256 %tmp_1107, %tmp_1108, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1109 = xor i256 %p_demorgan12, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1110 = and i256 %tmp_1074, %tmp_1109, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1111 = and i256 %tmp_1106, %p_demorgan12, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1112 = or i256 %tmp_1110, %tmp_1111, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum4 = add i32 %buf_offset_read, %tmp_4        ; [#uses=1 type=i32]
  %buf_addr_45 = getelementptr i8* %buf, i32 %sum4 ; [#uses=5 type=i8*]
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_45, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_45_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_45), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67_4 = xor i8 %buf_addr_45_read, %tmp_1091, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_45_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_45, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_45, i8 %tmp_67_4, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_45_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_45), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_205 = add i5 11, %i, !dbg !682             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_206 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_205, i3 0) ; [#uses=5 type=i8]
  %tmp_207 = or i8 %tmp_206, 7                    ; [#uses=4 type=i8]
  %tmp_1113 = icmp ugt i8 %tmp_206, %tmp_207      ; [#uses=3 type=i1]
  %tmp_1114 = zext i8 %tmp_206 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1115 = zext i8 %tmp_207 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1116 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1117 = sub i9 %tmp_1114, %tmp_1115, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1118 = xor i9 %tmp_1114, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1119 = sub i9 %tmp_1115, %tmp_1114, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1120 = select i1 %tmp_1113, i9 %tmp_1117, i9 %tmp_1119, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1121 = select i1 %tmp_1113, i256 %tmp_1116, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1122 = select i1 %tmp_1113, i9 %tmp_1118, i9 %tmp_1114 ; [#uses=1 type=i9]
  %tmp_1123 = sub i9 255, %tmp_1120               ; [#uses=1 type=i9]
  %tmp_1124 = zext i9 %tmp_1122 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1125 = zext i9 %tmp_1123 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1126 = lshr i256 %tmp_1121, %tmp_1124, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1127 = lshr i256 -1, %tmp_1125, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1128 = and i256 %tmp_1126, %tmp_1127       ; [#uses=1 type=i256]
  %tmp_1129 = trunc i256 %tmp_1128 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_1130 = icmp ugt i8 %tmp_206, %tmp_207      ; [#uses=4 type=i1]
  %tmp_1131 = zext i8 %tmp_206 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1132 = zext i8 %tmp_207 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1133 = zext i8 %tmp_1129 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1134 = xor i9 %tmp_1131, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1135 = select i1 %tmp_1130, i9 %tmp_1131, i9 %tmp_1132 ; [#uses=1 type=i9]
  %tmp_1136 = select i1 %tmp_1130, i9 %tmp_1132, i9 %tmp_1131 ; [#uses=1 type=i9]
  %tmp_1137 = select i1 %tmp_1130, i9 %tmp_1134, i9 %tmp_1131 ; [#uses=1 type=i9]
  %tmp_1138 = xor i9 %tmp_1135, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1139 = zext i9 %tmp_1137 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1140 = zext i9 %tmp_1136 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1141 = zext i9 %tmp_1138 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1142 = shl i256 %tmp_1133, %tmp_1139, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1143 = call i256 @llvm.part.select.i256(i256 %tmp_1142, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1144 = select i1 %tmp_1130, i256 %tmp_1143, i256 %tmp_1142 ; [#uses=1 type=i256]
  %tmp_1145 = shl i256 -1, %tmp_1140, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1146 = lshr i256 -1, %tmp_1141, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan13 = and i256 %tmp_1145, %tmp_1146, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1147 = xor i256 %p_demorgan13, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1148 = and i256 %tmp_1112, %tmp_1147, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1149 = and i256 %tmp_1144, %p_demorgan13, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1150 = or i256 %tmp_1148, %tmp_1149, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %i_10_5 = add i5 -6, %i, !dbg !678              ; [#uses=1 type=i5] [debug line = 214:13]
  %tmp_5 = zext i5 %i_10_5 to i32, !dbg !682      ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_208 = add i4 -6, %tmp                      ; [#uses=1 type=i4]
  %tmp_209 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_208, i3 0) ; [#uses=5 type=i7]
  %tmp_210 = or i7 %tmp_209, 7                    ; [#uses=4 type=i7]
  %tmp_1151 = icmp ugt i7 %tmp_209, %tmp_210      ; [#uses=3 type=i1]
  %tmp_1152 = zext i7 %tmp_209 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1153 = zext i7 %tmp_210 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1154 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1155 = sub i9 %tmp_1152, %tmp_1153, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1156 = xor i9 %tmp_1152, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1157 = sub i9 %tmp_1153, %tmp_1152, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1158 = select i1 %tmp_1151, i9 %tmp_1155, i9 %tmp_1157, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1159 = select i1 %tmp_1151, i256 %tmp_1154, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1160 = select i1 %tmp_1151, i9 %tmp_1156, i9 %tmp_1152 ; [#uses=1 type=i9]
  %tmp_1161 = sub i9 255, %tmp_1158               ; [#uses=1 type=i9]
  %tmp_1162 = zext i9 %tmp_1160 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1163 = zext i9 %tmp_1161 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1164 = lshr i256 %tmp_1159, %tmp_1162, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1165 = lshr i256 -1, %tmp_1163, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1166 = and i256 %tmp_1164, %tmp_1165       ; [#uses=1 type=i256]
  %tmp_1167 = trunc i256 %tmp_1166 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_1168 = icmp ugt i7 %tmp_209, %tmp_210      ; [#uses=4 type=i1]
  %tmp_1169 = zext i7 %tmp_209 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1170 = zext i7 %tmp_210 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1171 = zext i8 %tmp_1167 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1172 = xor i9 %tmp_1169, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1173 = select i1 %tmp_1168, i9 %tmp_1169, i9 %tmp_1170 ; [#uses=1 type=i9]
  %tmp_1174 = select i1 %tmp_1168, i9 %tmp_1170, i9 %tmp_1169 ; [#uses=1 type=i9]
  %tmp_1175 = select i1 %tmp_1168, i9 %tmp_1172, i9 %tmp_1169 ; [#uses=1 type=i9]
  %tmp_1176 = xor i9 %tmp_1173, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1177 = zext i9 %tmp_1175 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1178 = zext i9 %tmp_1174 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1179 = zext i9 %tmp_1176 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1180 = shl i256 %tmp_1171, %tmp_1177, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1181 = call i256 @llvm.part.select.i256(i256 %tmp_1180, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1182 = select i1 %tmp_1168, i256 %tmp_1181, i256 %tmp_1180 ; [#uses=1 type=i256]
  %tmp_1183 = shl i256 -1, %tmp_1178, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1184 = lshr i256 -1, %tmp_1179, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan14 = and i256 %tmp_1183, %tmp_1184, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1185 = xor i256 %p_demorgan14, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1186 = and i256 %tmp_1150, %tmp_1185, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1187 = and i256 %tmp_1182, %p_demorgan14, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1188 = or i256 %tmp_1186, %tmp_1187, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum5 = add i32 %buf_offset_read, %tmp_5        ; [#uses=1 type=i32]
  %buf_addr_46 = getelementptr i8* %buf, i32 %sum5 ; [#uses=5 type=i8*]
  %buf_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_46, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_46_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_46), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67_5 = xor i8 %buf_addr_46_read, %tmp_1167, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_46_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_46, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_46, i8 %tmp_67_5, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_46_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_46), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_211 = add i5 10, %i, !dbg !682             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_212 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_211, i3 0) ; [#uses=5 type=i8]
  %tmp_213 = or i8 %tmp_212, 7                    ; [#uses=4 type=i8]
  %tmp_1189 = icmp ugt i8 %tmp_212, %tmp_213      ; [#uses=3 type=i1]
  %tmp_1190 = zext i8 %tmp_212 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1191 = zext i8 %tmp_213 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1192 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1193 = sub i9 %tmp_1190, %tmp_1191, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1194 = xor i9 %tmp_1190, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1195 = sub i9 %tmp_1191, %tmp_1190, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1196 = select i1 %tmp_1189, i9 %tmp_1193, i9 %tmp_1195, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1197 = select i1 %tmp_1189, i256 %tmp_1192, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1198 = select i1 %tmp_1189, i9 %tmp_1194, i9 %tmp_1190 ; [#uses=1 type=i9]
  %tmp_1199 = sub i9 255, %tmp_1196               ; [#uses=1 type=i9]
  %tmp_1200 = zext i9 %tmp_1198 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1201 = zext i9 %tmp_1199 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1202 = lshr i256 %tmp_1197, %tmp_1200, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1203 = lshr i256 -1, %tmp_1201, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1204 = and i256 %tmp_1202, %tmp_1203       ; [#uses=1 type=i256]
  %tmp_1205 = trunc i256 %tmp_1204 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_1206 = icmp ugt i8 %tmp_212, %tmp_213      ; [#uses=4 type=i1]
  %tmp_1207 = zext i8 %tmp_212 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1208 = zext i8 %tmp_213 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1209 = zext i8 %tmp_1205 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1210 = xor i9 %tmp_1207, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1211 = select i1 %tmp_1206, i9 %tmp_1207, i9 %tmp_1208 ; [#uses=1 type=i9]
  %tmp_1212 = select i1 %tmp_1206, i9 %tmp_1208, i9 %tmp_1207 ; [#uses=1 type=i9]
  %tmp_1213 = select i1 %tmp_1206, i9 %tmp_1210, i9 %tmp_1207 ; [#uses=1 type=i9]
  %tmp_1214 = xor i9 %tmp_1211, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1215 = zext i9 %tmp_1213 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1216 = zext i9 %tmp_1212 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1217 = zext i9 %tmp_1214 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1218 = shl i256 %tmp_1209, %tmp_1215, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1219 = call i256 @llvm.part.select.i256(i256 %tmp_1218, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1220 = select i1 %tmp_1206, i256 %tmp_1219, i256 %tmp_1218 ; [#uses=1 type=i256]
  %tmp_1221 = shl i256 -1, %tmp_1216, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1222 = lshr i256 -1, %tmp_1217, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan15 = and i256 %tmp_1221, %tmp_1222, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1223 = xor i256 %p_demorgan15, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1224 = and i256 %tmp_1188, %tmp_1223, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1225 = and i256 %tmp_1220, %p_demorgan15, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1226 = or i256 %tmp_1224, %tmp_1225, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %i_10_6 = add i5 -7, %i, !dbg !678              ; [#uses=2 type=i5] [debug line = 214:13]
  %tmp_6 = zext i5 %i_10_6 to i32, !dbg !682      ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_214 = add i4 -7, %tmp                      ; [#uses=1 type=i4]
  %tmp_215 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_214, i3 0) ; [#uses=5 type=i7]
  %tmp_216 = or i7 %tmp_215, 7                    ; [#uses=4 type=i7]
  %tmp_1227 = icmp ugt i7 %tmp_215, %tmp_216      ; [#uses=3 type=i1]
  %tmp_1228 = zext i7 %tmp_215 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1229 = zext i7 %tmp_216 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1230 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1231 = sub i9 %tmp_1228, %tmp_1229, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1232 = xor i9 %tmp_1228, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1233 = sub i9 %tmp_1229, %tmp_1228, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1234 = select i1 %tmp_1227, i9 %tmp_1231, i9 %tmp_1233, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1235 = select i1 %tmp_1227, i256 %tmp_1230, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1236 = select i1 %tmp_1227, i9 %tmp_1232, i9 %tmp_1228 ; [#uses=1 type=i9]
  %tmp_1237 = sub i9 255, %tmp_1234               ; [#uses=1 type=i9]
  %tmp_1238 = zext i9 %tmp_1236 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1239 = zext i9 %tmp_1237 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1240 = lshr i256 %tmp_1235, %tmp_1238, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1241 = lshr i256 -1, %tmp_1239, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1242 = and i256 %tmp_1240, %tmp_1241       ; [#uses=1 type=i256]
  %tmp_1243 = trunc i256 %tmp_1242 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_1244 = icmp ugt i7 %tmp_215, %tmp_216      ; [#uses=4 type=i1]
  %tmp_1245 = zext i7 %tmp_215 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1246 = zext i7 %tmp_216 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1247 = zext i8 %tmp_1243 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1248 = xor i9 %tmp_1245, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1249 = select i1 %tmp_1244, i9 %tmp_1245, i9 %tmp_1246 ; [#uses=1 type=i9]
  %tmp_1250 = select i1 %tmp_1244, i9 %tmp_1246, i9 %tmp_1245 ; [#uses=1 type=i9]
  %tmp_1251 = select i1 %tmp_1244, i9 %tmp_1248, i9 %tmp_1245 ; [#uses=1 type=i9]
  %tmp_1252 = xor i9 %tmp_1249, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1253 = zext i9 %tmp_1251 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1254 = zext i9 %tmp_1250 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1255 = zext i9 %tmp_1252 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1256 = shl i256 %tmp_1247, %tmp_1253, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1257 = call i256 @llvm.part.select.i256(i256 %tmp_1256, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1258 = select i1 %tmp_1244, i256 %tmp_1257, i256 %tmp_1256 ; [#uses=1 type=i256]
  %tmp_1259 = shl i256 -1, %tmp_1254, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1260 = lshr i256 -1, %tmp_1255, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan16 = and i256 %tmp_1259, %tmp_1260, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1261 = xor i256 %p_demorgan16, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1262 = and i256 %tmp_1226, %tmp_1261, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1263 = and i256 %tmp_1258, %p_demorgan16, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1264 = or i256 %tmp_1262, %tmp_1263, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum6 = add i32 %buf_offset_read, %tmp_6        ; [#uses=1 type=i32]
  %buf_addr_47 = getelementptr i8* %buf, i32 %sum6 ; [#uses=5 type=i8*]
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_47, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_47_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_47), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67_6 = xor i8 %buf_addr_47_read, %tmp_1243, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_47_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_47, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_47, i8 %tmp_67_6, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_47_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_47), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_217 = add i5 9, %i, !dbg !682              ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_218 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_217, i3 0) ; [#uses=5 type=i8]
  %tmp_219 = or i8 %tmp_218, 7                    ; [#uses=4 type=i8]
  %tmp_1265 = icmp ugt i8 %tmp_218, %tmp_219      ; [#uses=3 type=i1]
  %tmp_1266 = zext i8 %tmp_218 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1267 = zext i8 %tmp_219 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1268 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1269 = sub i9 %tmp_1266, %tmp_1267, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1270 = xor i9 %tmp_1266, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1271 = sub i9 %tmp_1267, %tmp_1266, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1272 = select i1 %tmp_1265, i9 %tmp_1269, i9 %tmp_1271, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1273 = select i1 %tmp_1265, i256 %tmp_1268, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1274 = select i1 %tmp_1265, i9 %tmp_1270, i9 %tmp_1266 ; [#uses=1 type=i9]
  %tmp_1275 = sub i9 255, %tmp_1272               ; [#uses=1 type=i9]
  %tmp_1276 = zext i9 %tmp_1274 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1277 = zext i9 %tmp_1275 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1278 = lshr i256 %tmp_1273, %tmp_1276, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1279 = lshr i256 -1, %tmp_1277, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1280 = and i256 %tmp_1278, %tmp_1279       ; [#uses=1 type=i256]
  %tmp_1281 = trunc i256 %tmp_1280 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_1282 = icmp ugt i8 %tmp_218, %tmp_219      ; [#uses=4 type=i1]
  %tmp_1283 = zext i8 %tmp_218 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1284 = zext i8 %tmp_219 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1285 = zext i8 %tmp_1281 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1286 = xor i9 %tmp_1283, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1287 = select i1 %tmp_1282, i9 %tmp_1283, i9 %tmp_1284 ; [#uses=1 type=i9]
  %tmp_1288 = select i1 %tmp_1282, i9 %tmp_1284, i9 %tmp_1283 ; [#uses=1 type=i9]
  %tmp_1289 = select i1 %tmp_1282, i9 %tmp_1286, i9 %tmp_1283 ; [#uses=1 type=i9]
  %tmp_1290 = xor i9 %tmp_1287, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1291 = zext i9 %tmp_1289 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1292 = zext i9 %tmp_1288 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1293 = zext i9 %tmp_1290 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1294 = shl i256 %tmp_1285, %tmp_1291, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1295 = call i256 @llvm.part.select.i256(i256 %tmp_1294, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1296 = select i1 %tmp_1282, i256 %tmp_1295, i256 %tmp_1294 ; [#uses=1 type=i256]
  %tmp_1297 = shl i256 -1, %tmp_1292, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1298 = lshr i256 -1, %tmp_1293, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan17 = and i256 %tmp_1297, %tmp_1298, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1299 = xor i256 %p_demorgan17, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1300 = and i256 %tmp_1264, %tmp_1299, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1301 = and i256 %tmp_1296, %p_demorgan17, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1302 = or i256 %tmp_1300, %tmp_1301, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %gep21112_part_set_6 = zext i256 %tmp_1302 to i1024, !dbg !682 ; [#uses=1 type=i1024] [debug line = 221:2]
  %ctx_addr_req3 = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %ctx_addr, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %ctx_addr, i1024 %gep21112_part_set_6, i128 4294967295), !dbg !682 ; [debug line = 221:2]
  %ctx_addr_resp4 = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %ctx_addr), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %i_10_7 = add i5 -8, %i, !dbg !678              ; [#uses=2 type=i5] [debug line = 214:13]
  %i_10_7_cast = sext i5 %i_10_7 to i8, !dbg !678 ; [#uses=1 type=i8] [debug line = 214:13]
  %tmp_7 = icmp eq i5 %i_10_6, 0, !dbg !678       ; [#uses=1 type=i1] [debug line = 214:13]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1) ; [#uses=0 type=i32]
  br i1 %tmp_7, label %3, label %2, !dbg !678     ; [debug line = 214:13]

; <label>:2                                       ; preds = %1
  %tmp_7_20 = zext i8 %i_10_7_cast to i32, !dbg !682 ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_127 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %i_10_7, i3 0) ; [#uses=4 type=i8]
  %tmp_220 = zext i8 %tmp_127 to i10              ; [#uses=2 type=i10]
  %tmp_128 = or i8 %tmp_127, 7                    ; [#uses=3 type=i8]
  %tmp_221 = call i10 @_ssdm_op_BitConcatenate.i10.i2.i8(i2 0, i8 %tmp_128) ; [#uses=2 type=i10]
  %tmp_1303 = icmp ugt i10 %tmp_220, %tmp_221     ; [#uses=3 type=i1]
  %tmp_1304 = zext i8 %tmp_127 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1305 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_128), !dbg !682 ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1306 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1307 = sub i9 %tmp_1304, %tmp_1305, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1308 = xor i9 %tmp_1304, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1309 = sub i9 %tmp_1305, %tmp_1304, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1310 = select i1 %tmp_1303, i9 %tmp_1307, i9 %tmp_1309, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1311 = select i1 %tmp_1303, i256 %tmp_1306, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1312 = select i1 %tmp_1303, i9 %tmp_1308, i9 %tmp_1304 ; [#uses=1 type=i9]
  %tmp_1313 = sub i9 255, %tmp_1310               ; [#uses=1 type=i9]
  %tmp_1314 = zext i9 %tmp_1312 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1315 = zext i9 %tmp_1313 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1316 = lshr i256 %tmp_1311, %tmp_1314, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1317 = lshr i256 -1, %tmp_1315, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1318 = and i256 %tmp_1316, %tmp_1317       ; [#uses=1 type=i256]
  %tmp_1319 = trunc i256 %tmp_1318 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_1320 = icmp ugt i10 %tmp_220, %tmp_221     ; [#uses=4 type=i1]
  %tmp_1321 = zext i8 %tmp_127 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1322 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_128), !dbg !682 ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1323 = zext i8 %tmp_1319 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1324 = xor i9 %tmp_1321, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1325 = select i1 %tmp_1320, i9 %tmp_1321, i9 %tmp_1322 ; [#uses=1 type=i9]
  %tmp_1326 = select i1 %tmp_1320, i9 %tmp_1322, i9 %tmp_1321 ; [#uses=1 type=i9]
  %tmp_1327 = select i1 %tmp_1320, i9 %tmp_1324, i9 %tmp_1321 ; [#uses=1 type=i9]
  %tmp_1328 = sub i9 255, %tmp_1325, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1329 = zext i9 %tmp_1327 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1330 = zext i9 %tmp_1326 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1331 = zext i9 %tmp_1328 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1332 = shl i256 %tmp_1323, %tmp_1329, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1333 = call i256 @llvm.part.select.i256(i256 %tmp_1332, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1334 = select i1 %tmp_1320, i256 %tmp_1333, i256 %tmp_1332 ; [#uses=1 type=i256]
  %tmp_1335 = shl i256 -1, %tmp_1330, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1336 = lshr i256 -1, %tmp_1331, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan18 = and i256 %tmp_1335, %tmp_1336, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1337 = xor i256 %p_demorgan18, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1338 = and i256 %tmp_1302, %tmp_1337, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1339 = and i256 %tmp_1334, %p_demorgan18, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1340 = or i256 %tmp_1338, %tmp_1339, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum7 = add i32 %buf_offset_read, %tmp_7_20     ; [#uses=1 type=i32]
  %buf_addr_48 = getelementptr i8* %buf, i32 %sum7 ; [#uses=5 type=i8*]
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_48, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_48_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_48), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67_7 = xor i8 %buf_addr_48_read, %tmp_1319, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_48_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_48, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_48, i8 %tmp_67_7, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_48_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_48), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_222 = add i5 8, %i, !dbg !682              ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_223 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_222, i3 0) ; [#uses=5 type=i8]
  %tmp_224 = or i8 %tmp_223, 7                    ; [#uses=4 type=i8]
  %tmp_1341 = icmp ugt i8 %tmp_223, %tmp_224      ; [#uses=3 type=i1]
  %tmp_1342 = zext i8 %tmp_223 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1343 = zext i8 %tmp_224 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1344 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1345 = sub i9 %tmp_1342, %tmp_1343, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1346 = xor i9 %tmp_1342, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1347 = sub i9 %tmp_1343, %tmp_1342, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1348 = select i1 %tmp_1341, i9 %tmp_1345, i9 %tmp_1347, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1349 = select i1 %tmp_1341, i256 %tmp_1344, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1350 = select i1 %tmp_1341, i9 %tmp_1346, i9 %tmp_1342 ; [#uses=1 type=i9]
  %tmp_1351 = sub i9 255, %tmp_1348               ; [#uses=1 type=i9]
  %tmp_1352 = zext i9 %tmp_1350 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1353 = zext i9 %tmp_1351 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1354 = lshr i256 %tmp_1349, %tmp_1352, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1355 = lshr i256 -1, %tmp_1353, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1356 = and i256 %tmp_1354, %tmp_1355       ; [#uses=1 type=i256]
  %tmp_1357 = trunc i256 %tmp_1356 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_1358 = icmp ugt i8 %tmp_223, %tmp_224      ; [#uses=4 type=i1]
  %tmp_1359 = zext i8 %tmp_223 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1360 = zext i8 %tmp_224 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1361 = zext i8 %tmp_1357 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1362 = xor i9 %tmp_1359, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1363 = select i1 %tmp_1358, i9 %tmp_1359, i9 %tmp_1360 ; [#uses=1 type=i9]
  %tmp_1364 = select i1 %tmp_1358, i9 %tmp_1360, i9 %tmp_1359 ; [#uses=1 type=i9]
  %tmp_1365 = select i1 %tmp_1358, i9 %tmp_1362, i9 %tmp_1359 ; [#uses=1 type=i9]
  %tmp_1366 = xor i9 %tmp_1363, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1367 = zext i9 %tmp_1365 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1368 = zext i9 %tmp_1364 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1369 = zext i9 %tmp_1366 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1370 = shl i256 %tmp_1361, %tmp_1367, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1371 = call i256 @llvm.part.select.i256(i256 %tmp_1370, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1372 = select i1 %tmp_1358, i256 %tmp_1371, i256 %tmp_1370 ; [#uses=1 type=i256]
  %tmp_1373 = shl i256 -1, %tmp_1368, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1374 = lshr i256 -1, %tmp_1369, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan19 = and i256 %tmp_1373, %tmp_1374, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1375 = xor i256 %p_demorgan19, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1376 = and i256 %tmp_1340, %tmp_1375, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1377 = and i256 %tmp_1372, %p_demorgan19, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1378 = or i256 %tmp_1376, %tmp_1377, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %i_10_8 = add i5 -9, %i, !dbg !678              ; [#uses=3 type=i5] [debug line = 214:13]
  %tmp_8 = zext i5 %i_10_8 to i32, !dbg !682      ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_129 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %i_10_8, i3 0) ; [#uses=4 type=i8]
  %tmp_225 = zext i8 %tmp_129 to i10              ; [#uses=2 type=i10]
  %tmp_130 = or i8 %tmp_129, 7                    ; [#uses=3 type=i8]
  %tmp_226 = call i10 @_ssdm_op_BitConcatenate.i10.i2.i8(i2 0, i8 %tmp_130) ; [#uses=2 type=i10]
  %tmp_1379 = icmp ugt i10 %tmp_225, %tmp_226     ; [#uses=3 type=i1]
  %tmp_1380 = zext i8 %tmp_129 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1381 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_130), !dbg !682 ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1382 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1383 = sub i9 %tmp_1380, %tmp_1381, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1384 = xor i9 %tmp_1380, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1385 = sub i9 %tmp_1381, %tmp_1380, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1386 = select i1 %tmp_1379, i9 %tmp_1383, i9 %tmp_1385, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1387 = select i1 %tmp_1379, i256 %tmp_1382, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1388 = select i1 %tmp_1379, i9 %tmp_1384, i9 %tmp_1380 ; [#uses=1 type=i9]
  %tmp_1389 = sub i9 255, %tmp_1386               ; [#uses=1 type=i9]
  %tmp_1390 = zext i9 %tmp_1388 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1391 = zext i9 %tmp_1389 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1392 = lshr i256 %tmp_1387, %tmp_1390, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1393 = lshr i256 -1, %tmp_1391, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1394 = and i256 %tmp_1392, %tmp_1393       ; [#uses=1 type=i256]
  %tmp_1395 = trunc i256 %tmp_1394 to i8, !dbg !682 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_1396 = icmp ugt i10 %tmp_225, %tmp_226     ; [#uses=4 type=i1]
  %tmp_1397 = zext i8 %tmp_129 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1398 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_130), !dbg !682 ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1399 = zext i8 %tmp_1395 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1400 = xor i9 %tmp_1397, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1401 = select i1 %tmp_1396, i9 %tmp_1397, i9 %tmp_1398 ; [#uses=1 type=i9]
  %tmp_1402 = select i1 %tmp_1396, i9 %tmp_1398, i9 %tmp_1397 ; [#uses=1 type=i9]
  %tmp_1403 = select i1 %tmp_1396, i9 %tmp_1400, i9 %tmp_1397 ; [#uses=1 type=i9]
  %tmp_1404 = sub i9 255, %tmp_1401, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1405 = zext i9 %tmp_1403 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1406 = zext i9 %tmp_1402 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1407 = zext i9 %tmp_1404 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1408 = shl i256 %tmp_1399, %tmp_1405, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1409 = call i256 @llvm.part.select.i256(i256 %tmp_1408, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1410 = select i1 %tmp_1396, i256 %tmp_1409, i256 %tmp_1408 ; [#uses=1 type=i256]
  %tmp_1411 = shl i256 -1, %tmp_1406, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1412 = lshr i256 -1, %tmp_1407, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan20 = and i256 %tmp_1411, %tmp_1412, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1413 = xor i256 %p_demorgan20, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1414 = and i256 %tmp_1378, %tmp_1413, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1415 = and i256 %tmp_1410, %p_demorgan20, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1416 = or i256 %tmp_1414, %tmp_1415, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum8 = add i32 %buf_offset_read, %tmp_8        ; [#uses=1 type=i32]
  %buf_addr_49 = getelementptr i8* %buf, i32 %sum8 ; [#uses=5 type=i8*]
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_49, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_49_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_49), !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_67_8 = xor i8 %buf_addr_49_read, %tmp_1395, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_49_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_49, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_49, i8 %tmp_67_8, i1 true), !dbg !682 ; [debug line = 221:2]
  %buf_addr_49_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_49), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_227 = add i5 7, %i, !dbg !682              ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_228 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_227, i3 0) ; [#uses=5 type=i8]
  %tmp_229 = or i8 %tmp_228, 7                    ; [#uses=4 type=i8]
  %tmp_1417 = icmp ugt i8 %tmp_228, %tmp_229      ; [#uses=3 type=i1]
  %tmp_1418 = zext i8 %tmp_228 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1419 = zext i8 %tmp_229 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1420 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1421 = sub i9 %tmp_1418, %tmp_1419, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1422 = xor i9 %tmp_1418, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1423 = sub i9 %tmp_1419, %tmp_1418, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1424 = select i1 %tmp_1417, i9 %tmp_1421, i9 %tmp_1423, !dbg !682 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1425 = select i1 %tmp_1417, i256 %tmp_1420, i256 %p_new ; [#uses=1 type=i256]
  %tmp_1426 = select i1 %tmp_1417, i9 %tmp_1422, i9 %tmp_1418 ; [#uses=1 type=i9]
  %tmp_1427 = sub i9 255, %tmp_1424               ; [#uses=1 type=i9]
  %tmp_1428 = zext i9 %tmp_1426 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1429 = zext i9 %tmp_1427 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1430 = lshr i256 %tmp_1425, %tmp_1428, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1431 = lshr i256 -1, %tmp_1429, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1432 = and i256 %tmp_1430, %tmp_1431       ; [#uses=1 type=i256]
  %tmp_1433 = trunc i256 %tmp_1432 to i8, !dbg !682 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_1434 = icmp ugt i8 %tmp_228, %tmp_229      ; [#uses=4 type=i1]
  %tmp_1435 = zext i8 %tmp_228 to i9, !dbg !682   ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_1436 = zext i8 %tmp_229 to i9, !dbg !682   ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_1437 = zext i8 %tmp_1433 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1438 = xor i9 %tmp_1435, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1439 = select i1 %tmp_1434, i9 %tmp_1435, i9 %tmp_1436 ; [#uses=1 type=i9]
  %tmp_1440 = select i1 %tmp_1434, i9 %tmp_1436, i9 %tmp_1435 ; [#uses=1 type=i9]
  %tmp_1441 = select i1 %tmp_1434, i9 %tmp_1438, i9 %tmp_1435 ; [#uses=1 type=i9]
  %tmp_1442 = xor i9 %tmp_1439, 255, !dbg !682    ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_1443 = zext i9 %tmp_1441 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1444 = zext i9 %tmp_1440 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1445 = zext i9 %tmp_1442 to i256, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1446 = shl i256 %tmp_1437, %tmp_1443, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1447 = call i256 @llvm.part.select.i256(i256 %tmp_1446, i32 255, i32 0), !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1448 = select i1 %tmp_1434, i256 %tmp_1447, i256 %tmp_1446 ; [#uses=1 type=i256]
  %tmp_1449 = shl i256 -1, %tmp_1444, !dbg !682   ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1450 = lshr i256 -1, %tmp_1445, !dbg !682  ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan21 = and i256 %tmp_1449, %tmp_1450, !dbg !682 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_1451 = xor i256 %p_demorgan21, -1, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1452 = and i256 %tmp_1416, %tmp_1451, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1453 = and i256 %tmp_1448, %p_demorgan21, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_1454 = or i256 %tmp_1452, %tmp_1453, !dbg !682 ; [#uses=1 type=i256] [debug line = 221:2]
  %gep21112_part_set_8 = zext i256 %tmp_1454 to i1024, !dbg !682 ; [#uses=1 type=i1024] [debug line = 221:2]
  %ctx_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %ctx_addr, i32 1), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %ctx_addr, i1024 %gep21112_part_set_8, i128 4294967295), !dbg !682 ; [debug line = 221:2]
  %ctx_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %ctx_addr), !dbg !682 ; [#uses=0 type=i1] [debug line = 221:2]
  br label %1, !dbg !683                          ; [debug line = 222:5]

; <label>:3                                       ; preds = %1
  ret void, !dbg !684                             ; [debug line = 223:1]
}

; [#uses=3]
define internal fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset, i1024* %key, i25 %key_offset, i6 %key_offset_offset) {
  %key_offset_offset_re = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset_offset) ; [#uses=1 type=i6]
  %key_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %key_offset) ; [#uses=1 type=i25]
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=16 type=i32]
  %key_offset_cast = zext i25 %key_offset_read to i32 ; [#uses=1 type=i32]
  %key_addr = getelementptr i1024* %key, i32 %key_offset_cast ; [#uses=2 type=i1024*]
  %buf_addr = getelementptr i8* %buf, i32 %buf_offset_read ; [#uses=5 type=i8*]
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %key, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !685), !dbg !687 ; [debug line = 194:31] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i1024* %key}, i64 0, metadata !688), !dbg !690 ; [debug line = 194:45] [debug variable = key]
  %tmp = trunc i6 %key_offset_offset_re to i5, !dbg !691 ; [#uses=16 type=i5] [debug line = 205:2]
  %tmp_s = add i5 15, %tmp, !dbg !691             ; [#uses=1 type=i5] [debug line = 205:2]
  %key_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %key_addr, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %key_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %key_addr), !dbg !691 ; [#uses=17 type=i1024] [debug line = 205:2]
  %tmp_1455 = trunc i1024 %key_addr_read to i256, !dbg !691 ; [#uses=16 type=i256] [debug line = 205:2]
  %tmp_230 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_s, i3 0) ; [#uses=3 type=i8]
  %tmp_231 = or i8 %tmp_230, 7                    ; [#uses=2 type=i8]
  %tmp_1456 = icmp ugt i8 %tmp_230, %tmp_231      ; [#uses=3 type=i1]
  %tmp_1457 = zext i8 %tmp_230 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1458 = zext i8 %tmp_231 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1459 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1460 = sub i9 %tmp_1457, %tmp_1458, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1461 = xor i9 %tmp_1457, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1462 = sub i9 %tmp_1458, %tmp_1457, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1463 = select i1 %tmp_1456, i9 %tmp_1460, i9 %tmp_1462, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1464 = select i1 %tmp_1456, i256 %tmp_1459, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1465 = select i1 %tmp_1456, i9 %tmp_1461, i9 %tmp_1457 ; [#uses=1 type=i9]
  %tmp_1466 = sub i9 255, %tmp_1463               ; [#uses=1 type=i9]
  %tmp_1467 = zext i9 %tmp_1465 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1468 = zext i9 %tmp_1466 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1469 = lshr i256 %tmp_1464, %tmp_1467, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1470 = lshr i256 -1, %tmp_1468, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1471 = and i256 %tmp_1469, %tmp_1470       ; [#uses=1 type=i256]
  %tmp_1472 = trunc i256 %tmp_1471 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum = add i32 15, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_50 = getelementptr i8* %buf, i32 %sum ; [#uses=5 type=i8*]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_50, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_50_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_50), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69 = xor i8 %buf_addr_50_read, %tmp_1472, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_50_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_50, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_50, i8 %tmp_69, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_50_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_50), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_232 = add i5 14, %tmp, !dbg !691           ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_233 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_232, i3 0) ; [#uses=3 type=i8]
  %tmp_234 = or i8 %tmp_233, 7                    ; [#uses=2 type=i8]
  %tmp_1473 = icmp ugt i8 %tmp_233, %tmp_234      ; [#uses=3 type=i1]
  %tmp_1474 = zext i8 %tmp_233 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1475 = zext i8 %tmp_234 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1476 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1477 = sub i9 %tmp_1474, %tmp_1475, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1478 = xor i9 %tmp_1474, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1479 = sub i9 %tmp_1475, %tmp_1474, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1480 = select i1 %tmp_1473, i9 %tmp_1477, i9 %tmp_1479, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1481 = select i1 %tmp_1473, i256 %tmp_1476, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1482 = select i1 %tmp_1473, i9 %tmp_1478, i9 %tmp_1474 ; [#uses=1 type=i9]
  %tmp_1483 = sub i9 255, %tmp_1480               ; [#uses=1 type=i9]
  %tmp_1484 = zext i9 %tmp_1482 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1485 = zext i9 %tmp_1483 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1486 = lshr i256 %tmp_1481, %tmp_1484, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1487 = lshr i256 -1, %tmp_1485, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1488 = and i256 %tmp_1486, %tmp_1487       ; [#uses=1 type=i256]
  %tmp_1489 = trunc i256 %tmp_1488 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum1 = add i32 14, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_51 = getelementptr i8* %buf, i32 %sum1 ; [#uses=5 type=i8*]
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_51, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_51_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_51), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_1 = xor i8 %buf_addr_51_read, %tmp_1489, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_51_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_51, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_51, i8 %tmp_69_1, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_51_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_51), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_235 = add i5 13, %tmp, !dbg !691           ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_236 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_235, i3 0) ; [#uses=3 type=i8]
  %tmp_237 = or i8 %tmp_236, 7                    ; [#uses=2 type=i8]
  %tmp_1490 = icmp ugt i8 %tmp_236, %tmp_237      ; [#uses=3 type=i1]
  %tmp_1491 = zext i8 %tmp_236 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1492 = zext i8 %tmp_237 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1493 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1494 = sub i9 %tmp_1491, %tmp_1492, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1495 = xor i9 %tmp_1491, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1496 = sub i9 %tmp_1492, %tmp_1491, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1497 = select i1 %tmp_1490, i9 %tmp_1494, i9 %tmp_1496, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1498 = select i1 %tmp_1490, i256 %tmp_1493, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1499 = select i1 %tmp_1490, i9 %tmp_1495, i9 %tmp_1491 ; [#uses=1 type=i9]
  %tmp_1500 = sub i9 255, %tmp_1497               ; [#uses=1 type=i9]
  %tmp_1501 = zext i9 %tmp_1499 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1502 = zext i9 %tmp_1500 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1503 = lshr i256 %tmp_1498, %tmp_1501, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1504 = lshr i256 -1, %tmp_1502, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1505 = and i256 %tmp_1503, %tmp_1504       ; [#uses=1 type=i256]
  %tmp_1506 = trunc i256 %tmp_1505 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum2 = add i32 13, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_52 = getelementptr i8* %buf, i32 %sum2 ; [#uses=5 type=i8*]
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_52, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_52_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_52), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_2 = xor i8 %buf_addr_52_read, %tmp_1506, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_52_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_52, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_52, i8 %tmp_69_2, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_52_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_52), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_238 = add i5 12, %tmp, !dbg !691           ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_239 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_238, i3 0) ; [#uses=3 type=i8]
  %tmp_240 = or i8 %tmp_239, 7                    ; [#uses=2 type=i8]
  %tmp_1507 = icmp ugt i8 %tmp_239, %tmp_240      ; [#uses=3 type=i1]
  %tmp_1508 = zext i8 %tmp_239 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1509 = zext i8 %tmp_240 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1510 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1511 = sub i9 %tmp_1508, %tmp_1509, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1512 = xor i9 %tmp_1508, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1513 = sub i9 %tmp_1509, %tmp_1508, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1514 = select i1 %tmp_1507, i9 %tmp_1511, i9 %tmp_1513, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1515 = select i1 %tmp_1507, i256 %tmp_1510, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1516 = select i1 %tmp_1507, i9 %tmp_1512, i9 %tmp_1508 ; [#uses=1 type=i9]
  %tmp_1517 = sub i9 255, %tmp_1514               ; [#uses=1 type=i9]
  %tmp_1518 = zext i9 %tmp_1516 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1519 = zext i9 %tmp_1517 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1520 = lshr i256 %tmp_1515, %tmp_1518, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1521 = lshr i256 -1, %tmp_1519, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1522 = and i256 %tmp_1520, %tmp_1521       ; [#uses=1 type=i256]
  %tmp_1523 = trunc i256 %tmp_1522 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum3 = add i32 12, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_53 = getelementptr i8* %buf, i32 %sum3 ; [#uses=5 type=i8*]
  %buf_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_53, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_53_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_53), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_3 = xor i8 %buf_addr_53_read, %tmp_1523, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_53_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_53, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_53, i8 %tmp_69_3, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_53_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_53), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_241 = add i5 11, %tmp, !dbg !691           ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_242 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_241, i3 0) ; [#uses=3 type=i8]
  %tmp_243 = or i8 %tmp_242, 7                    ; [#uses=2 type=i8]
  %tmp_1524 = icmp ugt i8 %tmp_242, %tmp_243      ; [#uses=3 type=i1]
  %tmp_1525 = zext i8 %tmp_242 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1526 = zext i8 %tmp_243 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1527 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1528 = sub i9 %tmp_1525, %tmp_1526, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1529 = xor i9 %tmp_1525, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1530 = sub i9 %tmp_1526, %tmp_1525, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1531 = select i1 %tmp_1524, i9 %tmp_1528, i9 %tmp_1530, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1532 = select i1 %tmp_1524, i256 %tmp_1527, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1533 = select i1 %tmp_1524, i9 %tmp_1529, i9 %tmp_1525 ; [#uses=1 type=i9]
  %tmp_1534 = sub i9 255, %tmp_1531               ; [#uses=1 type=i9]
  %tmp_1535 = zext i9 %tmp_1533 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1536 = zext i9 %tmp_1534 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1537 = lshr i256 %tmp_1532, %tmp_1535, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1538 = lshr i256 -1, %tmp_1536, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1539 = and i256 %tmp_1537, %tmp_1538       ; [#uses=1 type=i256]
  %tmp_1540 = trunc i256 %tmp_1539 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum4 = add i32 11, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_54 = getelementptr i8* %buf, i32 %sum4 ; [#uses=5 type=i8*]
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_54, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_54_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_54), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_4 = xor i8 %buf_addr_54_read, %tmp_1540, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_54_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_54, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_54, i8 %tmp_69_4, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_54_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_54), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_244 = add i5 10, %tmp, !dbg !691           ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_245 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_244, i3 0) ; [#uses=3 type=i8]
  %tmp_246 = or i8 %tmp_245, 7                    ; [#uses=2 type=i8]
  %tmp_1541 = icmp ugt i8 %tmp_245, %tmp_246      ; [#uses=3 type=i1]
  %tmp_1542 = zext i8 %tmp_245 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1543 = zext i8 %tmp_246 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1544 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1545 = sub i9 %tmp_1542, %tmp_1543, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1546 = xor i9 %tmp_1542, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1547 = sub i9 %tmp_1543, %tmp_1542, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1548 = select i1 %tmp_1541, i9 %tmp_1545, i9 %tmp_1547, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1549 = select i1 %tmp_1541, i256 %tmp_1544, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1550 = select i1 %tmp_1541, i9 %tmp_1546, i9 %tmp_1542 ; [#uses=1 type=i9]
  %tmp_1551 = sub i9 255, %tmp_1548               ; [#uses=1 type=i9]
  %tmp_1552 = zext i9 %tmp_1550 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1553 = zext i9 %tmp_1551 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1554 = lshr i256 %tmp_1549, %tmp_1552, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1555 = lshr i256 -1, %tmp_1553, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1556 = and i256 %tmp_1554, %tmp_1555       ; [#uses=1 type=i256]
  %tmp_1557 = trunc i256 %tmp_1556 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum5 = add i32 10, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_55 = getelementptr i8* %buf, i32 %sum5 ; [#uses=5 type=i8*]
  %buf_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_55, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_55_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_55), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_5 = xor i8 %buf_addr_55_read, %tmp_1557, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_55_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_55, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_55, i8 %tmp_69_5, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_55_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_55), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_247 = add i5 9, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_248 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_247, i3 0) ; [#uses=3 type=i8]
  %tmp_249 = or i8 %tmp_248, 7                    ; [#uses=2 type=i8]
  %tmp_1558 = icmp ugt i8 %tmp_248, %tmp_249      ; [#uses=3 type=i1]
  %tmp_1559 = zext i8 %tmp_248 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1560 = zext i8 %tmp_249 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1561 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1562 = sub i9 %tmp_1559, %tmp_1560, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1563 = xor i9 %tmp_1559, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1564 = sub i9 %tmp_1560, %tmp_1559, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1565 = select i1 %tmp_1558, i9 %tmp_1562, i9 %tmp_1564, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1566 = select i1 %tmp_1558, i256 %tmp_1561, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1567 = select i1 %tmp_1558, i9 %tmp_1563, i9 %tmp_1559 ; [#uses=1 type=i9]
  %tmp_1568 = sub i9 255, %tmp_1565               ; [#uses=1 type=i9]
  %tmp_1569 = zext i9 %tmp_1567 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1570 = zext i9 %tmp_1568 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1571 = lshr i256 %tmp_1566, %tmp_1569, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1572 = lshr i256 -1, %tmp_1570, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1573 = and i256 %tmp_1571, %tmp_1572       ; [#uses=1 type=i256]
  %tmp_1574 = trunc i256 %tmp_1573 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum6 = add i32 9, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_56 = getelementptr i8* %buf, i32 %sum6 ; [#uses=5 type=i8*]
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_56, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_56_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_56), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_6 = xor i8 %buf_addr_56_read, %tmp_1574, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_56_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_56, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_56, i8 %tmp_69_6, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_56_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_56), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_250 = add i5 8, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_251 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_250, i3 0) ; [#uses=3 type=i8]
  %tmp_252 = or i8 %tmp_251, 7                    ; [#uses=2 type=i8]
  %tmp_1575 = icmp ugt i8 %tmp_251, %tmp_252      ; [#uses=3 type=i1]
  %tmp_1576 = zext i8 %tmp_251 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1577 = zext i8 %tmp_252 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1578 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1579 = sub i9 %tmp_1576, %tmp_1577, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1580 = xor i9 %tmp_1576, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1581 = sub i9 %tmp_1577, %tmp_1576, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1582 = select i1 %tmp_1575, i9 %tmp_1579, i9 %tmp_1581, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1583 = select i1 %tmp_1575, i256 %tmp_1578, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1584 = select i1 %tmp_1575, i9 %tmp_1580, i9 %tmp_1576 ; [#uses=1 type=i9]
  %tmp_1585 = sub i9 255, %tmp_1582               ; [#uses=1 type=i9]
  %tmp_1586 = zext i9 %tmp_1584 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1587 = zext i9 %tmp_1585 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1588 = lshr i256 %tmp_1583, %tmp_1586, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1589 = lshr i256 -1, %tmp_1587, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1590 = and i256 %tmp_1588, %tmp_1589       ; [#uses=1 type=i256]
  %tmp_1591 = trunc i256 %tmp_1590 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum7 = add i32 8, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_57 = getelementptr i8* %buf, i32 %sum7 ; [#uses=5 type=i8*]
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_57, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_57_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_57), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_7 = xor i8 %buf_addr_57_read, %tmp_1591, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_57_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_57, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_57, i8 %tmp_69_7, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_57_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_57), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_253 = add i5 7, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_254 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_253, i3 0) ; [#uses=3 type=i8]
  %tmp_255 = or i8 %tmp_254, 7                    ; [#uses=2 type=i8]
  %tmp_1592 = icmp ugt i8 %tmp_254, %tmp_255      ; [#uses=3 type=i1]
  %tmp_1593 = zext i8 %tmp_254 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1594 = zext i8 %tmp_255 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1595 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1596 = sub i9 %tmp_1593, %tmp_1594, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1597 = xor i9 %tmp_1593, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1598 = sub i9 %tmp_1594, %tmp_1593, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1599 = select i1 %tmp_1592, i9 %tmp_1596, i9 %tmp_1598, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1600 = select i1 %tmp_1592, i256 %tmp_1595, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1601 = select i1 %tmp_1592, i9 %tmp_1597, i9 %tmp_1593 ; [#uses=1 type=i9]
  %tmp_1602 = sub i9 255, %tmp_1599               ; [#uses=1 type=i9]
  %tmp_1603 = zext i9 %tmp_1601 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1604 = zext i9 %tmp_1602 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1605 = lshr i256 %tmp_1600, %tmp_1603, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1606 = lshr i256 -1, %tmp_1604, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1607 = and i256 %tmp_1605, %tmp_1606       ; [#uses=1 type=i256]
  %tmp_1608 = trunc i256 %tmp_1607 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum8 = add i32 7, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_58 = getelementptr i8* %buf, i32 %sum8 ; [#uses=5 type=i8*]
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_58, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_58_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_58), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_8 = xor i8 %buf_addr_58_read, %tmp_1608, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_58_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_58, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_58, i8 %tmp_69_8, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_58_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_58), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_256 = add i5 6, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_257 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_256, i3 0) ; [#uses=3 type=i8]
  %tmp_258 = or i8 %tmp_257, 7                    ; [#uses=2 type=i8]
  %tmp_1609 = icmp ugt i8 %tmp_257, %tmp_258      ; [#uses=3 type=i1]
  %tmp_1610 = zext i8 %tmp_257 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1611 = zext i8 %tmp_258 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1612 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1613 = sub i9 %tmp_1610, %tmp_1611, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1614 = xor i9 %tmp_1610, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1615 = sub i9 %tmp_1611, %tmp_1610, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1616 = select i1 %tmp_1609, i9 %tmp_1613, i9 %tmp_1615, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1617 = select i1 %tmp_1609, i256 %tmp_1612, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1618 = select i1 %tmp_1609, i9 %tmp_1614, i9 %tmp_1610 ; [#uses=1 type=i9]
  %tmp_1619 = sub i9 255, %tmp_1616               ; [#uses=1 type=i9]
  %tmp_1620 = zext i9 %tmp_1618 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1621 = zext i9 %tmp_1619 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1622 = lshr i256 %tmp_1617, %tmp_1620, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1623 = lshr i256 -1, %tmp_1621, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1624 = and i256 %tmp_1622, %tmp_1623       ; [#uses=1 type=i256]
  %tmp_1625 = trunc i256 %tmp_1624 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum9 = add i32 6, %buf_offset_read             ; [#uses=1 type=i32]
  %buf_addr_59 = getelementptr i8* %buf, i32 %sum9 ; [#uses=5 type=i8*]
  %buf_load_9_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_59, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_59_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_59), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_9 = xor i8 %buf_addr_59_read, %tmp_1625, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_59_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_59, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_59, i8 %tmp_69_9, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_59_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_59), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_259 = add i5 5, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_260 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_259, i3 0) ; [#uses=3 type=i8]
  %tmp_261 = or i8 %tmp_260, 7                    ; [#uses=2 type=i8]
  %tmp_1626 = icmp ugt i8 %tmp_260, %tmp_261      ; [#uses=3 type=i1]
  %tmp_1627 = zext i8 %tmp_260 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1628 = zext i8 %tmp_261 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1629 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1630 = sub i9 %tmp_1627, %tmp_1628, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1631 = xor i9 %tmp_1627, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1632 = sub i9 %tmp_1628, %tmp_1627, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1633 = select i1 %tmp_1626, i9 %tmp_1630, i9 %tmp_1632, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1634 = select i1 %tmp_1626, i256 %tmp_1629, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1635 = select i1 %tmp_1626, i9 %tmp_1631, i9 %tmp_1627 ; [#uses=1 type=i9]
  %tmp_1636 = sub i9 255, %tmp_1633               ; [#uses=1 type=i9]
  %tmp_1637 = zext i9 %tmp_1635 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1638 = zext i9 %tmp_1636 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1639 = lshr i256 %tmp_1634, %tmp_1637, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1640 = lshr i256 -1, %tmp_1638, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1641 = and i256 %tmp_1639, %tmp_1640       ; [#uses=1 type=i256]
  %tmp_1642 = trunc i256 %tmp_1641 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum10 = add i32 5, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_60 = getelementptr i8* %buf, i32 %sum10 ; [#uses=5 type=i8*]
  %buf_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_60, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_60_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_60), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_s = xor i8 %buf_addr_60_read, %tmp_1642, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_60_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_60, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_60, i8 %tmp_69_s, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_60_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_60), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_262 = add i5 4, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_263 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_262, i3 0) ; [#uses=3 type=i8]
  %tmp_264 = or i8 %tmp_263, 7                    ; [#uses=2 type=i8]
  %tmp_1643 = icmp ugt i8 %tmp_263, %tmp_264      ; [#uses=3 type=i1]
  %tmp_1644 = zext i8 %tmp_263 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1645 = zext i8 %tmp_264 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1646 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1647 = sub i9 %tmp_1644, %tmp_1645, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1648 = xor i9 %tmp_1644, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1649 = sub i9 %tmp_1645, %tmp_1644, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1650 = select i1 %tmp_1643, i9 %tmp_1647, i9 %tmp_1649, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1651 = select i1 %tmp_1643, i256 %tmp_1646, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1652 = select i1 %tmp_1643, i9 %tmp_1648, i9 %tmp_1644 ; [#uses=1 type=i9]
  %tmp_1653 = sub i9 255, %tmp_1650               ; [#uses=1 type=i9]
  %tmp_1654 = zext i9 %tmp_1652 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1655 = zext i9 %tmp_1653 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1656 = lshr i256 %tmp_1651, %tmp_1654, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1657 = lshr i256 -1, %tmp_1655, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1658 = and i256 %tmp_1656, %tmp_1657       ; [#uses=1 type=i256]
  %tmp_1659 = trunc i256 %tmp_1658 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum11 = add i32 4, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_61 = getelementptr i8* %buf, i32 %sum11 ; [#uses=5 type=i8*]
  %buf_load_11_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_61, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_61_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_61), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_10 = xor i8 %buf_addr_61_read, %tmp_1659, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_61_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_61, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_61, i8 %tmp_69_10, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_61_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_61), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_265 = add i5 3, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_266 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_265, i3 0) ; [#uses=3 type=i8]
  %tmp_267 = or i8 %tmp_266, 7                    ; [#uses=2 type=i8]
  %tmp_1660 = icmp ugt i8 %tmp_266, %tmp_267      ; [#uses=3 type=i1]
  %tmp_1661 = zext i8 %tmp_266 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1662 = zext i8 %tmp_267 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1663 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1664 = sub i9 %tmp_1661, %tmp_1662, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1665 = xor i9 %tmp_1661, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1666 = sub i9 %tmp_1662, %tmp_1661, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1667 = select i1 %tmp_1660, i9 %tmp_1664, i9 %tmp_1666, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1668 = select i1 %tmp_1660, i256 %tmp_1663, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1669 = select i1 %tmp_1660, i9 %tmp_1665, i9 %tmp_1661 ; [#uses=1 type=i9]
  %tmp_1670 = sub i9 255, %tmp_1667               ; [#uses=1 type=i9]
  %tmp_1671 = zext i9 %tmp_1669 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1672 = zext i9 %tmp_1670 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1673 = lshr i256 %tmp_1668, %tmp_1671, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1674 = lshr i256 -1, %tmp_1672, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1675 = and i256 %tmp_1673, %tmp_1674       ; [#uses=1 type=i256]
  %tmp_1676 = trunc i256 %tmp_1675 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum12 = add i32 3, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_62 = getelementptr i8* %buf, i32 %sum12 ; [#uses=5 type=i8*]
  %buf_load_12_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_62, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_62_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_62), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_11 = xor i8 %buf_addr_62_read, %tmp_1676, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_62_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_62, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_62, i8 %tmp_69_11, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_62_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_62), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_268 = add i5 2, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_269 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_268, i3 0) ; [#uses=3 type=i8]
  %tmp_270 = or i8 %tmp_269, 7                    ; [#uses=2 type=i8]
  %tmp_1677 = icmp ugt i8 %tmp_269, %tmp_270      ; [#uses=3 type=i1]
  %tmp_1678 = zext i8 %tmp_269 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1679 = zext i8 %tmp_270 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1680 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1681 = sub i9 %tmp_1678, %tmp_1679, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1682 = xor i9 %tmp_1678, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1683 = sub i9 %tmp_1679, %tmp_1678, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1684 = select i1 %tmp_1677, i9 %tmp_1681, i9 %tmp_1683, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1685 = select i1 %tmp_1677, i256 %tmp_1680, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1686 = select i1 %tmp_1677, i9 %tmp_1682, i9 %tmp_1678 ; [#uses=1 type=i9]
  %tmp_1687 = sub i9 255, %tmp_1684               ; [#uses=1 type=i9]
  %tmp_1688 = zext i9 %tmp_1686 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1689 = zext i9 %tmp_1687 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1690 = lshr i256 %tmp_1685, %tmp_1688, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1691 = lshr i256 -1, %tmp_1689, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1692 = and i256 %tmp_1690, %tmp_1691       ; [#uses=1 type=i256]
  %tmp_1693 = trunc i256 %tmp_1692 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum13 = add i32 2, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_63 = getelementptr i8* %buf, i32 %sum13 ; [#uses=5 type=i8*]
  %buf_load_13_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_63, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_63_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_63), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_12 = xor i8 %buf_addr_63_read, %tmp_1693, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_63_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_63, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_63, i8 %tmp_69_12, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_63_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_63), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_271 = add i5 1, %tmp, !dbg !691            ; [#uses=1 type=i5] [debug line = 205:2]
  %tmp_272 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_271, i3 0) ; [#uses=3 type=i8]
  %tmp_273 = or i8 %tmp_272, 7                    ; [#uses=2 type=i8]
  %tmp_1694 = icmp ugt i8 %tmp_272, %tmp_273      ; [#uses=3 type=i1]
  %tmp_1695 = zext i8 %tmp_272 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1696 = zext i8 %tmp_273 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1697 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1698 = sub i9 %tmp_1695, %tmp_1696, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1699 = xor i9 %tmp_1695, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1700 = sub i9 %tmp_1696, %tmp_1695, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1701 = select i1 %tmp_1694, i9 %tmp_1698, i9 %tmp_1700, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1702 = select i1 %tmp_1694, i256 %tmp_1697, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1703 = select i1 %tmp_1694, i9 %tmp_1699, i9 %tmp_1695 ; [#uses=1 type=i9]
  %tmp_1704 = sub i9 255, %tmp_1701               ; [#uses=1 type=i9]
  %tmp_1705 = zext i9 %tmp_1703 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1706 = zext i9 %tmp_1704 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1707 = lshr i256 %tmp_1702, %tmp_1705, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1708 = lshr i256 -1, %tmp_1706, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1709 = and i256 %tmp_1707, %tmp_1708       ; [#uses=1 type=i256]
  %tmp_1710 = trunc i256 %tmp_1709 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum14 = add i32 1, %buf_offset_read            ; [#uses=1 type=i32]
  %buf_addr_64 = getelementptr i8* %buf, i32 %sum14 ; [#uses=5 type=i8*]
  %buf_load_14_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_64, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_64_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_64), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_13 = xor i8 %buf_addr_64_read, %tmp_1710, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_64_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_64, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_64, i8 %tmp_69_13, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_64_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_64), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %tmp_274 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp, i3 0) ; [#uses=3 type=i8]
  %tmp_275 = or i8 %tmp_274, 7                    ; [#uses=2 type=i8]
  %tmp_1711 = icmp ugt i8 %tmp_274, %tmp_275      ; [#uses=3 type=i1]
  %tmp_1712 = zext i8 %tmp_274 to i9, !dbg !691   ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_1713 = zext i8 %tmp_275 to i9, !dbg !691   ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_1714 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1715 = sub i9 %tmp_1712, %tmp_1713, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1716 = xor i9 %tmp_1712, 255, !dbg !691    ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1717 = sub i9 %tmp_1713, %tmp_1712, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1718 = select i1 %tmp_1711, i9 %tmp_1715, i9 %tmp_1717, !dbg !691 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_1719 = select i1 %tmp_1711, i256 %tmp_1714, i256 %tmp_1455 ; [#uses=1 type=i256]
  %tmp_1720 = select i1 %tmp_1711, i9 %tmp_1716, i9 %tmp_1712 ; [#uses=1 type=i9]
  %tmp_1721 = sub i9 255, %tmp_1718               ; [#uses=1 type=i9]
  %tmp_1722 = zext i9 %tmp_1720 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1723 = zext i9 %tmp_1721 to i256, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1724 = lshr i256 %tmp_1719, %tmp_1722, !dbg !691 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1725 = lshr i256 -1, %tmp_1723, !dbg !691  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_1726 = and i256 %tmp_1724, %tmp_1725       ; [#uses=1 type=i256]
  %tmp_1727 = trunc i256 %tmp_1726 to i8, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_load_15_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_69_14 = xor i8 %buf_addr_read, %tmp_1727, !dbg !691 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_69_14, i1 true), !dbg !691 ; [debug line = 205:2]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !691 ; [#uses=0 type=i1] [debug line = 205:2]
  ret void, !dbg !694                             ; [debug line = 207:1]
}

; [#uses=69]
define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

; [#uses=7]
define weak i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024*) {
entry:
  ret i1 true
}

; [#uses=69]
define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=7]
define weak i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024*, i32) {
entry:
  ret i1 true
}

; [#uses=69]
define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

; [#uses=7]
define weak void @_ssdm_op_Write.m_axi.i1024P(i1024*, i1024, i128) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=13]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=69]
define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=4]
define weak i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024*, i32) {
entry:
  ret i1 true
}

; [#uses=69]
define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=4]
define weak i1024 @_ssdm_op_Read.m_axi.i1024P(i1024*) {
entry:
  %empty = load i1024* %0                         ; [#uses=1 type=i1024]
  ret i1024 %empty
}

; [#uses=2]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=1]
define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

; [#uses=7]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=4]
define weak i25 @_ssdm_op_Read.ap_auto.i25(i25) {
entry:
  ret i25 %0
}

; [#uses=8]
define weak i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.set.i256.i8(i256 %0, i8 %1, i32 %2, i32 %3) ; [#uses=1 type=i256]
  ret i256 %empty
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256, i32, i32) nounwind readnone

; [#uses=47]
define weak i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024, i32, i32) nounwind readnone {
entry:
  %empty = call i1024 @llvm.part.select.i1024(i1024 %0, i32 %1, i32 %2) ; [#uses=1 type=i1024]
  %empty_21 = trunc i1024 %empty to i8            ; [#uses=1 type=i8]
  ret i8 %empty_21
}

; [#uses=0]
declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

; [#uses=43]
define weak i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024, i32, i32) nounwind readnone {
entry:
  %empty = call i1024 @llvm.part.select.i1024(i1024 %0, i32 %1, i32 %2) ; [#uses=1 type=i1024]
  %empty_22 = trunc i1024 %empty to i256          ; [#uses=1 type=i256]
  ret i256 %empty_22
}

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_23 = trunc i32 %empty to i25             ; [#uses=1 type=i25]
  ret i25 %empty_23
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=18]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_24 = shl i8 1, %empty                    ; [#uses=1 type=i8]
  %empty_25 = and i8 %0, %empty_24                ; [#uses=1 type=i8]
  %empty_26 = icmp ne i8 %empty_25, 0             ; [#uses=1 type=i1]
  ret i1 %empty_26
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6                     ; [#uses=1 type=i6]
  %empty_27 = shl i6 1, %empty                    ; [#uses=1 type=i6]
  %empty_28 = and i6 %0, %empty_27                ; [#uses=1 type=i6]
  %empty_29 = icmp ne i6 %empty_28, 0             ; [#uses=1 type=i1]
  ret i1 %empty_29
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5                     ; [#uses=1 type=i5]
  %empty_30 = shl i5 1, %empty                    ; [#uses=1 type=i5]
  %empty_31 = and i5 %0, %empty_30                ; [#uses=1 type=i5]
  %empty_32 = icmp ne i5 %empty_31, 0             ; [#uses=1 type=i1]
  ret i1 %empty_32
}

; [#uses=1]
define weak i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6, i3) nounwind readnone {
entry:
  %empty = zext i6 %0 to i9                       ; [#uses=1 type=i9]
  %empty_33 = zext i3 %1 to i9                    ; [#uses=1 type=i9]
  %empty_34 = shl i9 %empty, 3                    ; [#uses=1 type=i9]
  %empty_35 = or i9 %empty_34, %empty_33          ; [#uses=1 type=i9]
  ret i9 %empty_35
}

; [#uses=7]
define weak i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1, i8) nounwind readnone {
entry:
  %empty = zext i1 %0 to i9                       ; [#uses=1 type=i9]
  %empty_36 = zext i8 %1 to i9                    ; [#uses=1 type=i9]
  %empty_37 = shl i9 %empty, 8                    ; [#uses=1 type=i9]
  %empty_38 = or i9 %empty_37, %empty_36          ; [#uses=1 type=i9]
  ret i9 %empty_38
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

; [#uses=38]
define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8                       ; [#uses=1 type=i8]
  %empty_39 = zext i3 %1 to i8                    ; [#uses=1 type=i8]
  %empty_40 = shl i8 %empty, 3                    ; [#uses=1 type=i8]
  %empty_41 = or i8 %empty_40, %empty_39          ; [#uses=1 type=i8]
  ret i8 %empty_41
}

; [#uses=15]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_42 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_43 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_44 = or i7 %empty_43, %empty_42          ; [#uses=1 type=i7]
  ret i7 %empty_44
}

; [#uses=1]
define weak i256 @_ssdm_op_BitConcatenate.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %30 to i16                     ; [#uses=1 type=i16]
  %empty_45 = zext i8 %31 to i16                  ; [#uses=1 type=i16]
  %empty_46 = shl i16 %empty, 8                   ; [#uses=1 type=i16]
  %empty_47 = or i16 %empty_46, %empty_45         ; [#uses=1 type=i16]
  %empty_48 = zext i8 %29 to i24                  ; [#uses=1 type=i24]
  %empty_49 = zext i16 %empty_47 to i24           ; [#uses=1 type=i24]
  %empty_50 = shl i24 %empty_48, 16               ; [#uses=1 type=i24]
  %empty_51 = or i24 %empty_50, %empty_49         ; [#uses=1 type=i24]
  %empty_52 = zext i8 %28 to i32                  ; [#uses=1 type=i32]
  %empty_53 = zext i24 %empty_51 to i32           ; [#uses=1 type=i32]
  %empty_54 = shl i32 %empty_52, 24               ; [#uses=1 type=i32]
  %empty_55 = or i32 %empty_54, %empty_53         ; [#uses=1 type=i32]
  %empty_56 = zext i8 %27 to i40                  ; [#uses=1 type=i40]
  %empty_57 = zext i32 %empty_55 to i40           ; [#uses=1 type=i40]
  %empty_58 = shl i40 %empty_56, 32               ; [#uses=1 type=i40]
  %empty_59 = or i40 %empty_58, %empty_57         ; [#uses=1 type=i40]
  %empty_60 = zext i8 %26 to i48                  ; [#uses=1 type=i48]
  %empty_61 = zext i40 %empty_59 to i48           ; [#uses=1 type=i48]
  %empty_62 = shl i48 %empty_60, 40               ; [#uses=1 type=i48]
  %empty_63 = or i48 %empty_62, %empty_61         ; [#uses=1 type=i48]
  %empty_64 = zext i8 %25 to i56                  ; [#uses=1 type=i56]
  %empty_65 = zext i48 %empty_63 to i56           ; [#uses=1 type=i56]
  %empty_66 = shl i56 %empty_64, 48               ; [#uses=1 type=i56]
  %empty_67 = or i56 %empty_66, %empty_65         ; [#uses=1 type=i56]
  %empty_68 = zext i8 %24 to i64                  ; [#uses=1 type=i64]
  %empty_69 = zext i56 %empty_67 to i64           ; [#uses=1 type=i64]
  %empty_70 = shl i64 %empty_68, 56               ; [#uses=1 type=i64]
  %empty_71 = or i64 %empty_70, %empty_69         ; [#uses=1 type=i64]
  %empty_72 = zext i8 %23 to i72                  ; [#uses=1 type=i72]
  %empty_73 = zext i64 %empty_71 to i72           ; [#uses=1 type=i72]
  %empty_74 = shl i72 %empty_72, 64               ; [#uses=1 type=i72]
  %empty_75 = or i72 %empty_74, %empty_73         ; [#uses=1 type=i72]
  %empty_76 = zext i8 %22 to i80                  ; [#uses=1 type=i80]
  %empty_77 = zext i72 %empty_75 to i80           ; [#uses=1 type=i80]
  %empty_78 = shl i80 %empty_76, 72               ; [#uses=1 type=i80]
  %empty_79 = or i80 %empty_78, %empty_77         ; [#uses=1 type=i80]
  %empty_80 = zext i8 %21 to i88                  ; [#uses=1 type=i88]
  %empty_81 = zext i80 %empty_79 to i88           ; [#uses=1 type=i88]
  %empty_82 = shl i88 %empty_80, 80               ; [#uses=1 type=i88]
  %empty_83 = or i88 %empty_82, %empty_81         ; [#uses=1 type=i88]
  %empty_84 = zext i8 %20 to i96                  ; [#uses=1 type=i96]
  %empty_85 = zext i88 %empty_83 to i96           ; [#uses=1 type=i96]
  %empty_86 = shl i96 %empty_84, 88               ; [#uses=1 type=i96]
  %empty_87 = or i96 %empty_86, %empty_85         ; [#uses=1 type=i96]
  %empty_88 = zext i8 %19 to i104                 ; [#uses=1 type=i104]
  %empty_89 = zext i96 %empty_87 to i104          ; [#uses=1 type=i104]
  %empty_90 = shl i104 %empty_88, 96              ; [#uses=1 type=i104]
  %empty_91 = or i104 %empty_90, %empty_89        ; [#uses=1 type=i104]
  %empty_92 = zext i8 %18 to i112                 ; [#uses=1 type=i112]
  %empty_93 = zext i104 %empty_91 to i112         ; [#uses=1 type=i112]
  %empty_94 = shl i112 %empty_92, 104             ; [#uses=1 type=i112]
  %empty_95 = or i112 %empty_94, %empty_93        ; [#uses=1 type=i112]
  %empty_96 = zext i8 %17 to i120                 ; [#uses=1 type=i120]
  %empty_97 = zext i112 %empty_95 to i120         ; [#uses=1 type=i120]
  %empty_98 = shl i120 %empty_96, 112             ; [#uses=1 type=i120]
  %empty_99 = or i120 %empty_98, %empty_97        ; [#uses=1 type=i120]
  %empty_100 = zext i8 %16 to i128                ; [#uses=1 type=i128]
  %empty_101 = zext i120 %empty_99 to i128        ; [#uses=1 type=i128]
  %empty_102 = shl i128 %empty_100, 120           ; [#uses=1 type=i128]
  %empty_103 = or i128 %empty_102, %empty_101     ; [#uses=1 type=i128]
  %empty_104 = zext i8 %15 to i136                ; [#uses=1 type=i136]
  %empty_105 = zext i128 %empty_103 to i136       ; [#uses=1 type=i136]
  %empty_106 = shl i136 %empty_104, 128           ; [#uses=1 type=i136]
  %empty_107 = or i136 %empty_106, %empty_105     ; [#uses=1 type=i136]
  %empty_108 = zext i8 %14 to i144                ; [#uses=1 type=i144]
  %empty_109 = zext i136 %empty_107 to i144       ; [#uses=1 type=i144]
  %empty_110 = shl i144 %empty_108, 136           ; [#uses=1 type=i144]
  %empty_111 = or i144 %empty_110, %empty_109     ; [#uses=1 type=i144]
  %empty_112 = zext i8 %13 to i152                ; [#uses=1 type=i152]
  %empty_113 = zext i144 %empty_111 to i152       ; [#uses=1 type=i152]
  %empty_114 = shl i152 %empty_112, 144           ; [#uses=1 type=i152]
  %empty_115 = or i152 %empty_114, %empty_113     ; [#uses=1 type=i152]
  %empty_116 = zext i8 %12 to i160                ; [#uses=1 type=i160]
  %empty_117 = zext i152 %empty_115 to i160       ; [#uses=1 type=i160]
  %empty_118 = shl i160 %empty_116, 152           ; [#uses=1 type=i160]
  %empty_119 = or i160 %empty_118, %empty_117     ; [#uses=1 type=i160]
  %empty_120 = zext i8 %11 to i168                ; [#uses=1 type=i168]
  %empty_121 = zext i160 %empty_119 to i168       ; [#uses=1 type=i168]
  %empty_122 = shl i168 %empty_120, 160           ; [#uses=1 type=i168]
  %empty_123 = or i168 %empty_122, %empty_121     ; [#uses=1 type=i168]
  %empty_124 = zext i8 %10 to i176                ; [#uses=1 type=i176]
  %empty_125 = zext i168 %empty_123 to i176       ; [#uses=1 type=i176]
  %empty_126 = shl i176 %empty_124, 168           ; [#uses=1 type=i176]
  %empty_127 = or i176 %empty_126, %empty_125     ; [#uses=1 type=i176]
  %empty_128 = zext i8 %9 to i184                 ; [#uses=1 type=i184]
  %empty_129 = zext i176 %empty_127 to i184       ; [#uses=1 type=i184]
  %empty_130 = shl i184 %empty_128, 176           ; [#uses=1 type=i184]
  %empty_131 = or i184 %empty_130, %empty_129     ; [#uses=1 type=i184]
  %empty_132 = zext i8 %8 to i192                 ; [#uses=1 type=i192]
  %empty_133 = zext i184 %empty_131 to i192       ; [#uses=1 type=i192]
  %empty_134 = shl i192 %empty_132, 184           ; [#uses=1 type=i192]
  %empty_135 = or i192 %empty_134, %empty_133     ; [#uses=1 type=i192]
  %empty_136 = zext i8 %7 to i200                 ; [#uses=1 type=i200]
  %empty_137 = zext i192 %empty_135 to i200       ; [#uses=1 type=i200]
  %empty_138 = shl i200 %empty_136, 192           ; [#uses=1 type=i200]
  %empty_139 = or i200 %empty_138, %empty_137     ; [#uses=1 type=i200]
  %empty_140 = zext i8 %6 to i208                 ; [#uses=1 type=i208]
  %empty_141 = zext i200 %empty_139 to i208       ; [#uses=1 type=i208]
  %empty_142 = shl i208 %empty_140, 200           ; [#uses=1 type=i208]
  %empty_143 = or i208 %empty_142, %empty_141     ; [#uses=1 type=i208]
  %empty_144 = zext i8 %5 to i216                 ; [#uses=1 type=i216]
  %empty_145 = zext i208 %empty_143 to i216       ; [#uses=1 type=i216]
  %empty_146 = shl i216 %empty_144, 208           ; [#uses=1 type=i216]
  %empty_147 = or i216 %empty_146, %empty_145     ; [#uses=1 type=i216]
  %empty_148 = zext i8 %4 to i224                 ; [#uses=1 type=i224]
  %empty_149 = zext i216 %empty_147 to i224       ; [#uses=1 type=i224]
  %empty_150 = shl i224 %empty_148, 216           ; [#uses=1 type=i224]
  %empty_151 = or i224 %empty_150, %empty_149     ; [#uses=1 type=i224]
  %empty_152 = zext i8 %3 to i232                 ; [#uses=1 type=i232]
  %empty_153 = zext i224 %empty_151 to i232       ; [#uses=1 type=i232]
  %empty_154 = shl i232 %empty_152, 224           ; [#uses=1 type=i232]
  %empty_155 = or i232 %empty_154, %empty_153     ; [#uses=1 type=i232]
  %empty_156 = zext i8 %2 to i240                 ; [#uses=1 type=i240]
  %empty_157 = zext i232 %empty_155 to i240       ; [#uses=1 type=i240]
  %empty_158 = shl i240 %empty_156, 232           ; [#uses=1 type=i240]
  %empty_159 = or i240 %empty_158, %empty_157     ; [#uses=1 type=i240]
  %empty_160 = zext i8 %1 to i248                 ; [#uses=1 type=i248]
  %empty_161 = zext i240 %empty_159 to i248       ; [#uses=1 type=i248]
  %empty_162 = shl i248 %empty_160, 240           ; [#uses=1 type=i248]
  %empty_163 = or i248 %empty_162, %empty_161     ; [#uses=1 type=i248]
  %empty_164 = zext i8 %0 to i256                 ; [#uses=1 type=i256]
  %empty_165 = zext i248 %empty_163 to i256       ; [#uses=1 type=i256]
  %empty_166 = shl i256 %empty_164, 248           ; [#uses=1 type=i256]
  %empty_167 = or i256 %empty_166, %empty_165     ; [#uses=1 type=i256]
  ret i256 %empty_167
}

; [#uses=1]
define weak i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i256(i256, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i256) nounwind readnone {
entry:
  %empty = zext i8 %64 to i264                    ; [#uses=1 type=i264]
  %empty_168 = zext i256 %65 to i264              ; [#uses=1 type=i264]
  %empty_169 = shl i264 %empty, 256               ; [#uses=1 type=i264]
  %empty_170 = or i264 %empty_169, %empty_168     ; [#uses=1 type=i264]
  %empty_171 = zext i8 %63 to i272                ; [#uses=1 type=i272]
  %empty_172 = zext i264 %empty_170 to i272       ; [#uses=1 type=i272]
  %empty_173 = shl i272 %empty_171, 264           ; [#uses=1 type=i272]
  %empty_174 = or i272 %empty_173, %empty_172     ; [#uses=1 type=i272]
  %empty_175 = zext i8 %62 to i280                ; [#uses=1 type=i280]
  %empty_176 = zext i272 %empty_174 to i280       ; [#uses=1 type=i280]
  %empty_177 = shl i280 %empty_175, 272           ; [#uses=1 type=i280]
  %empty_178 = or i280 %empty_177, %empty_176     ; [#uses=1 type=i280]
  %empty_179 = zext i8 %61 to i288                ; [#uses=1 type=i288]
  %empty_180 = zext i280 %empty_178 to i288       ; [#uses=1 type=i288]
  %empty_181 = shl i288 %empty_179, 280           ; [#uses=1 type=i288]
  %empty_182 = or i288 %empty_181, %empty_180     ; [#uses=1 type=i288]
  %empty_183 = zext i8 %60 to i296                ; [#uses=1 type=i296]
  %empty_184 = zext i288 %empty_182 to i296       ; [#uses=1 type=i296]
  %empty_185 = shl i296 %empty_183, 288           ; [#uses=1 type=i296]
  %empty_186 = or i296 %empty_185, %empty_184     ; [#uses=1 type=i296]
  %empty_187 = zext i8 %59 to i304                ; [#uses=1 type=i304]
  %empty_188 = zext i296 %empty_186 to i304       ; [#uses=1 type=i304]
  %empty_189 = shl i304 %empty_187, 296           ; [#uses=1 type=i304]
  %empty_190 = or i304 %empty_189, %empty_188     ; [#uses=1 type=i304]
  %empty_191 = zext i8 %58 to i312                ; [#uses=1 type=i312]
  %empty_192 = zext i304 %empty_190 to i312       ; [#uses=1 type=i312]
  %empty_193 = shl i312 %empty_191, 304           ; [#uses=1 type=i312]
  %empty_194 = or i312 %empty_193, %empty_192     ; [#uses=1 type=i312]
  %empty_195 = zext i8 %57 to i320                ; [#uses=1 type=i320]
  %empty_196 = zext i312 %empty_194 to i320       ; [#uses=1 type=i320]
  %empty_197 = shl i320 %empty_195, 312           ; [#uses=1 type=i320]
  %empty_198 = or i320 %empty_197, %empty_196     ; [#uses=1 type=i320]
  %empty_199 = zext i8 %56 to i328                ; [#uses=1 type=i328]
  %empty_200 = zext i320 %empty_198 to i328       ; [#uses=1 type=i328]
  %empty_201 = shl i328 %empty_199, 320           ; [#uses=1 type=i328]
  %empty_202 = or i328 %empty_201, %empty_200     ; [#uses=1 type=i328]
  %empty_203 = zext i8 %55 to i336                ; [#uses=1 type=i336]
  %empty_204 = zext i328 %empty_202 to i336       ; [#uses=1 type=i336]
  %empty_205 = shl i336 %empty_203, 328           ; [#uses=1 type=i336]
  %empty_206 = or i336 %empty_205, %empty_204     ; [#uses=1 type=i336]
  %empty_207 = zext i8 %54 to i344                ; [#uses=1 type=i344]
  %empty_208 = zext i336 %empty_206 to i344       ; [#uses=1 type=i344]
  %empty_209 = shl i344 %empty_207, 336           ; [#uses=1 type=i344]
  %empty_210 = or i344 %empty_209, %empty_208     ; [#uses=1 type=i344]
  %empty_211 = zext i8 %53 to i352                ; [#uses=1 type=i352]
  %empty_212 = zext i344 %empty_210 to i352       ; [#uses=1 type=i352]
  %empty_213 = shl i352 %empty_211, 344           ; [#uses=1 type=i352]
  %empty_214 = or i352 %empty_213, %empty_212     ; [#uses=1 type=i352]
  %empty_215 = zext i8 %52 to i360                ; [#uses=1 type=i360]
  %empty_216 = zext i352 %empty_214 to i360       ; [#uses=1 type=i360]
  %empty_217 = shl i360 %empty_215, 352           ; [#uses=1 type=i360]
  %empty_218 = or i360 %empty_217, %empty_216     ; [#uses=1 type=i360]
  %empty_219 = zext i8 %51 to i368                ; [#uses=1 type=i368]
  %empty_220 = zext i360 %empty_218 to i368       ; [#uses=1 type=i368]
  %empty_221 = shl i368 %empty_219, 360           ; [#uses=1 type=i368]
  %empty_222 = or i368 %empty_221, %empty_220     ; [#uses=1 type=i368]
  %empty_223 = zext i8 %50 to i376                ; [#uses=1 type=i376]
  %empty_224 = zext i368 %empty_222 to i376       ; [#uses=1 type=i376]
  %empty_225 = shl i376 %empty_223, 368           ; [#uses=1 type=i376]
  %empty_226 = or i376 %empty_225, %empty_224     ; [#uses=1 type=i376]
  %empty_227 = zext i8 %49 to i384                ; [#uses=1 type=i384]
  %empty_228 = zext i376 %empty_226 to i384       ; [#uses=1 type=i384]
  %empty_229 = shl i384 %empty_227, 376           ; [#uses=1 type=i384]
  %empty_230 = or i384 %empty_229, %empty_228     ; [#uses=1 type=i384]
  %empty_231 = zext i8 %48 to i392                ; [#uses=1 type=i392]
  %empty_232 = zext i384 %empty_230 to i392       ; [#uses=1 type=i392]
  %empty_233 = shl i392 %empty_231, 384           ; [#uses=1 type=i392]
  %empty_234 = or i392 %empty_233, %empty_232     ; [#uses=1 type=i392]
  %empty_235 = zext i8 %47 to i400                ; [#uses=1 type=i400]
  %empty_236 = zext i392 %empty_234 to i400       ; [#uses=1 type=i400]
  %empty_237 = shl i400 %empty_235, 392           ; [#uses=1 type=i400]
  %empty_238 = or i400 %empty_237, %empty_236     ; [#uses=1 type=i400]
  %empty_239 = zext i8 %46 to i408                ; [#uses=1 type=i408]
  %empty_240 = zext i400 %empty_238 to i408       ; [#uses=1 type=i408]
  %empty_241 = shl i408 %empty_239, 400           ; [#uses=1 type=i408]
  %empty_242 = or i408 %empty_241, %empty_240     ; [#uses=1 type=i408]
  %empty_243 = zext i8 %45 to i416                ; [#uses=1 type=i416]
  %empty_244 = zext i408 %empty_242 to i416       ; [#uses=1 type=i416]
  %empty_245 = shl i416 %empty_243, 408           ; [#uses=1 type=i416]
  %empty_246 = or i416 %empty_245, %empty_244     ; [#uses=1 type=i416]
  %empty_247 = zext i8 %44 to i424                ; [#uses=1 type=i424]
  %empty_248 = zext i416 %empty_246 to i424       ; [#uses=1 type=i424]
  %empty_249 = shl i424 %empty_247, 416           ; [#uses=1 type=i424]
  %empty_250 = or i424 %empty_249, %empty_248     ; [#uses=1 type=i424]
  %empty_251 = zext i8 %43 to i432                ; [#uses=1 type=i432]
  %empty_252 = zext i424 %empty_250 to i432       ; [#uses=1 type=i432]
  %empty_253 = shl i432 %empty_251, 424           ; [#uses=1 type=i432]
  %empty_254 = or i432 %empty_253, %empty_252     ; [#uses=1 type=i432]
  %empty_255 = zext i8 %42 to i440                ; [#uses=1 type=i440]
  %empty_256 = zext i432 %empty_254 to i440       ; [#uses=1 type=i440]
  %empty_257 = shl i440 %empty_255, 432           ; [#uses=1 type=i440]
  %empty_258 = or i440 %empty_257, %empty_256     ; [#uses=1 type=i440]
  %empty_259 = zext i8 %41 to i448                ; [#uses=1 type=i448]
  %empty_260 = zext i440 %empty_258 to i448       ; [#uses=1 type=i448]
  %empty_261 = shl i448 %empty_259, 440           ; [#uses=1 type=i448]
  %empty_262 = or i448 %empty_261, %empty_260     ; [#uses=1 type=i448]
  %empty_263 = zext i8 %40 to i456                ; [#uses=1 type=i456]
  %empty_264 = zext i448 %empty_262 to i456       ; [#uses=1 type=i456]
  %empty_265 = shl i456 %empty_263, 448           ; [#uses=1 type=i456]
  %empty_266 = or i456 %empty_265, %empty_264     ; [#uses=1 type=i456]
  %empty_267 = zext i8 %39 to i464                ; [#uses=1 type=i464]
  %empty_268 = zext i456 %empty_266 to i464       ; [#uses=1 type=i464]
  %empty_269 = shl i464 %empty_267, 456           ; [#uses=1 type=i464]
  %empty_270 = or i464 %empty_269, %empty_268     ; [#uses=1 type=i464]
  %empty_271 = zext i8 %38 to i472                ; [#uses=1 type=i472]
  %empty_272 = zext i464 %empty_270 to i472       ; [#uses=1 type=i472]
  %empty_273 = shl i472 %empty_271, 464           ; [#uses=1 type=i472]
  %empty_274 = or i472 %empty_273, %empty_272     ; [#uses=1 type=i472]
  %empty_275 = zext i8 %37 to i480                ; [#uses=1 type=i480]
  %empty_276 = zext i472 %empty_274 to i480       ; [#uses=1 type=i480]
  %empty_277 = shl i480 %empty_275, 472           ; [#uses=1 type=i480]
  %empty_278 = or i480 %empty_277, %empty_276     ; [#uses=1 type=i480]
  %empty_279 = zext i8 %36 to i488                ; [#uses=1 type=i488]
  %empty_280 = zext i480 %empty_278 to i488       ; [#uses=1 type=i488]
  %empty_281 = shl i488 %empty_279, 480           ; [#uses=1 type=i488]
  %empty_282 = or i488 %empty_281, %empty_280     ; [#uses=1 type=i488]
  %empty_283 = zext i8 %35 to i496                ; [#uses=1 type=i496]
  %empty_284 = zext i488 %empty_282 to i496       ; [#uses=1 type=i496]
  %empty_285 = shl i496 %empty_283, 488           ; [#uses=1 type=i496]
  %empty_286 = or i496 %empty_285, %empty_284     ; [#uses=1 type=i496]
  %empty_287 = zext i8 %34 to i504                ; [#uses=1 type=i504]
  %empty_288 = zext i496 %empty_286 to i504       ; [#uses=1 type=i504]
  %empty_289 = shl i504 %empty_287, 496           ; [#uses=1 type=i504]
  %empty_290 = or i504 %empty_289, %empty_288     ; [#uses=1 type=i504]
  %empty_291 = zext i8 %33 to i512                ; [#uses=1 type=i512]
  %empty_292 = zext i504 %empty_290 to i512       ; [#uses=1 type=i512]
  %empty_293 = shl i512 %empty_291, 504           ; [#uses=1 type=i512]
  %empty_294 = or i512 %empty_293, %empty_292     ; [#uses=1 type=i512]
  %empty_295 = zext i8 %32 to i520                ; [#uses=1 type=i520]
  %empty_296 = zext i512 %empty_294 to i520       ; [#uses=1 type=i520]
  %empty_297 = shl i520 %empty_295, 512           ; [#uses=1 type=i520]
  %empty_298 = or i520 %empty_297, %empty_296     ; [#uses=1 type=i520]
  %empty_299 = zext i8 %31 to i528                ; [#uses=1 type=i528]
  %empty_300 = zext i520 %empty_298 to i528       ; [#uses=1 type=i528]
  %empty_301 = shl i528 %empty_299, 520           ; [#uses=1 type=i528]
  %empty_302 = or i528 %empty_301, %empty_300     ; [#uses=1 type=i528]
  %empty_303 = zext i8 %30 to i536                ; [#uses=1 type=i536]
  %empty_304 = zext i528 %empty_302 to i536       ; [#uses=1 type=i536]
  %empty_305 = shl i536 %empty_303, 528           ; [#uses=1 type=i536]
  %empty_306 = or i536 %empty_305, %empty_304     ; [#uses=1 type=i536]
  %empty_307 = zext i8 %29 to i544                ; [#uses=1 type=i544]
  %empty_308 = zext i536 %empty_306 to i544       ; [#uses=1 type=i544]
  %empty_309 = shl i544 %empty_307, 536           ; [#uses=1 type=i544]
  %empty_310 = or i544 %empty_309, %empty_308     ; [#uses=1 type=i544]
  %empty_311 = zext i8 %28 to i552                ; [#uses=1 type=i552]
  %empty_312 = zext i544 %empty_310 to i552       ; [#uses=1 type=i552]
  %empty_313 = shl i552 %empty_311, 544           ; [#uses=1 type=i552]
  %empty_314 = or i552 %empty_313, %empty_312     ; [#uses=1 type=i552]
  %empty_315 = zext i8 %27 to i560                ; [#uses=1 type=i560]
  %empty_316 = zext i552 %empty_314 to i560       ; [#uses=1 type=i560]
  %empty_317 = shl i560 %empty_315, 552           ; [#uses=1 type=i560]
  %empty_318 = or i560 %empty_317, %empty_316     ; [#uses=1 type=i560]
  %empty_319 = zext i8 %26 to i568                ; [#uses=1 type=i568]
  %empty_320 = zext i560 %empty_318 to i568       ; [#uses=1 type=i568]
  %empty_321 = shl i568 %empty_319, 560           ; [#uses=1 type=i568]
  %empty_322 = or i568 %empty_321, %empty_320     ; [#uses=1 type=i568]
  %empty_323 = zext i8 %25 to i576                ; [#uses=1 type=i576]
  %empty_324 = zext i568 %empty_322 to i576       ; [#uses=1 type=i576]
  %empty_325 = shl i576 %empty_323, 568           ; [#uses=1 type=i576]
  %empty_326 = or i576 %empty_325, %empty_324     ; [#uses=1 type=i576]
  %empty_327 = zext i8 %24 to i584                ; [#uses=1 type=i584]
  %empty_328 = zext i576 %empty_326 to i584       ; [#uses=1 type=i584]
  %empty_329 = shl i584 %empty_327, 576           ; [#uses=1 type=i584]
  %empty_330 = or i584 %empty_329, %empty_328     ; [#uses=1 type=i584]
  %empty_331 = zext i8 %23 to i592                ; [#uses=1 type=i592]
  %empty_332 = zext i584 %empty_330 to i592       ; [#uses=1 type=i592]
  %empty_333 = shl i592 %empty_331, 584           ; [#uses=1 type=i592]
  %empty_334 = or i592 %empty_333, %empty_332     ; [#uses=1 type=i592]
  %empty_335 = zext i8 %22 to i600                ; [#uses=1 type=i600]
  %empty_336 = zext i592 %empty_334 to i600       ; [#uses=1 type=i600]
  %empty_337 = shl i600 %empty_335, 592           ; [#uses=1 type=i600]
  %empty_338 = or i600 %empty_337, %empty_336     ; [#uses=1 type=i600]
  %empty_339 = zext i8 %21 to i608                ; [#uses=1 type=i608]
  %empty_340 = zext i600 %empty_338 to i608       ; [#uses=1 type=i608]
  %empty_341 = shl i608 %empty_339, 600           ; [#uses=1 type=i608]
  %empty_342 = or i608 %empty_341, %empty_340     ; [#uses=1 type=i608]
  %empty_343 = zext i8 %20 to i616                ; [#uses=1 type=i616]
  %empty_344 = zext i608 %empty_342 to i616       ; [#uses=1 type=i616]
  %empty_345 = shl i616 %empty_343, 608           ; [#uses=1 type=i616]
  %empty_346 = or i616 %empty_345, %empty_344     ; [#uses=1 type=i616]
  %empty_347 = zext i8 %19 to i624                ; [#uses=1 type=i624]
  %empty_348 = zext i616 %empty_346 to i624       ; [#uses=1 type=i624]
  %empty_349 = shl i624 %empty_347, 616           ; [#uses=1 type=i624]
  %empty_350 = or i624 %empty_349, %empty_348     ; [#uses=1 type=i624]
  %empty_351 = zext i8 %18 to i632                ; [#uses=1 type=i632]
  %empty_352 = zext i624 %empty_350 to i632       ; [#uses=1 type=i632]
  %empty_353 = shl i632 %empty_351, 624           ; [#uses=1 type=i632]
  %empty_354 = or i632 %empty_353, %empty_352     ; [#uses=1 type=i632]
  %empty_355 = zext i8 %17 to i640                ; [#uses=1 type=i640]
  %empty_356 = zext i632 %empty_354 to i640       ; [#uses=1 type=i640]
  %empty_357 = shl i640 %empty_355, 632           ; [#uses=1 type=i640]
  %empty_358 = or i640 %empty_357, %empty_356     ; [#uses=1 type=i640]
  %empty_359 = zext i8 %16 to i648                ; [#uses=1 type=i648]
  %empty_360 = zext i640 %empty_358 to i648       ; [#uses=1 type=i648]
  %empty_361 = shl i648 %empty_359, 640           ; [#uses=1 type=i648]
  %empty_362 = or i648 %empty_361, %empty_360     ; [#uses=1 type=i648]
  %empty_363 = zext i8 %15 to i656                ; [#uses=1 type=i656]
  %empty_364 = zext i648 %empty_362 to i656       ; [#uses=1 type=i656]
  %empty_365 = shl i656 %empty_363, 648           ; [#uses=1 type=i656]
  %empty_366 = or i656 %empty_365, %empty_364     ; [#uses=1 type=i656]
  %empty_367 = zext i8 %14 to i664                ; [#uses=1 type=i664]
  %empty_368 = zext i656 %empty_366 to i664       ; [#uses=1 type=i664]
  %empty_369 = shl i664 %empty_367, 656           ; [#uses=1 type=i664]
  %empty_370 = or i664 %empty_369, %empty_368     ; [#uses=1 type=i664]
  %empty_371 = zext i8 %13 to i672                ; [#uses=1 type=i672]
  %empty_372 = zext i664 %empty_370 to i672       ; [#uses=1 type=i672]
  %empty_373 = shl i672 %empty_371, 664           ; [#uses=1 type=i672]
  %empty_374 = or i672 %empty_373, %empty_372     ; [#uses=1 type=i672]
  %empty_375 = zext i8 %12 to i680                ; [#uses=1 type=i680]
  %empty_376 = zext i672 %empty_374 to i680       ; [#uses=1 type=i680]
  %empty_377 = shl i680 %empty_375, 672           ; [#uses=1 type=i680]
  %empty_378 = or i680 %empty_377, %empty_376     ; [#uses=1 type=i680]
  %empty_379 = zext i8 %11 to i688                ; [#uses=1 type=i688]
  %empty_380 = zext i680 %empty_378 to i688       ; [#uses=1 type=i688]
  %empty_381 = shl i688 %empty_379, 680           ; [#uses=1 type=i688]
  %empty_382 = or i688 %empty_381, %empty_380     ; [#uses=1 type=i688]
  %empty_383 = zext i8 %10 to i696                ; [#uses=1 type=i696]
  %empty_384 = zext i688 %empty_382 to i696       ; [#uses=1 type=i696]
  %empty_385 = shl i696 %empty_383, 688           ; [#uses=1 type=i696]
  %empty_386 = or i696 %empty_385, %empty_384     ; [#uses=1 type=i696]
  %empty_387 = zext i8 %9 to i704                 ; [#uses=1 type=i704]
  %empty_388 = zext i696 %empty_386 to i704       ; [#uses=1 type=i704]
  %empty_389 = shl i704 %empty_387, 696           ; [#uses=1 type=i704]
  %empty_390 = or i704 %empty_389, %empty_388     ; [#uses=1 type=i704]
  %empty_391 = zext i8 %8 to i712                 ; [#uses=1 type=i712]
  %empty_392 = zext i704 %empty_390 to i712       ; [#uses=1 type=i712]
  %empty_393 = shl i712 %empty_391, 704           ; [#uses=1 type=i712]
  %empty_394 = or i712 %empty_393, %empty_392     ; [#uses=1 type=i712]
  %empty_395 = zext i8 %7 to i720                 ; [#uses=1 type=i720]
  %empty_396 = zext i712 %empty_394 to i720       ; [#uses=1 type=i720]
  %empty_397 = shl i720 %empty_395, 712           ; [#uses=1 type=i720]
  %empty_398 = or i720 %empty_397, %empty_396     ; [#uses=1 type=i720]
  %empty_399 = zext i8 %6 to i728                 ; [#uses=1 type=i728]
  %empty_400 = zext i720 %empty_398 to i728       ; [#uses=1 type=i728]
  %empty_401 = shl i728 %empty_399, 720           ; [#uses=1 type=i728]
  %empty_402 = or i728 %empty_401, %empty_400     ; [#uses=1 type=i728]
  %empty_403 = zext i8 %5 to i736                 ; [#uses=1 type=i736]
  %empty_404 = zext i728 %empty_402 to i736       ; [#uses=1 type=i736]
  %empty_405 = shl i736 %empty_403, 728           ; [#uses=1 type=i736]
  %empty_406 = or i736 %empty_405, %empty_404     ; [#uses=1 type=i736]
  %empty_407 = zext i8 %4 to i744                 ; [#uses=1 type=i744]
  %empty_408 = zext i736 %empty_406 to i744       ; [#uses=1 type=i744]
  %empty_409 = shl i744 %empty_407, 736           ; [#uses=1 type=i744]
  %empty_410 = or i744 %empty_409, %empty_408     ; [#uses=1 type=i744]
  %empty_411 = zext i8 %3 to i752                 ; [#uses=1 type=i752]
  %empty_412 = zext i744 %empty_410 to i752       ; [#uses=1 type=i752]
  %empty_413 = shl i752 %empty_411, 744           ; [#uses=1 type=i752]
  %empty_414 = or i752 %empty_413, %empty_412     ; [#uses=1 type=i752]
  %empty_415 = zext i8 %2 to i760                 ; [#uses=1 type=i760]
  %empty_416 = zext i752 %empty_414 to i760       ; [#uses=1 type=i760]
  %empty_417 = shl i760 %empty_415, 752           ; [#uses=1 type=i760]
  %empty_418 = or i760 %empty_417, %empty_416     ; [#uses=1 type=i760]
  %empty_419 = zext i8 %1 to i768                 ; [#uses=1 type=i768]
  %empty_420 = zext i760 %empty_418 to i768       ; [#uses=1 type=i768]
  %empty_421 = shl i768 %empty_419, 760           ; [#uses=1 type=i768]
  %empty_422 = or i768 %empty_421, %empty_420     ; [#uses=1 type=i768]
  %empty_423 = zext i256 %0 to i1024              ; [#uses=1 type=i1024]
  %empty_424 = zext i768 %empty_422 to i1024      ; [#uses=1 type=i1024]
  %empty_425 = shl i1024 %empty_423, 768          ; [#uses=1 type=i1024]
  %empty_426 = or i1024 %empty_425, %empty_424    ; [#uses=1 type=i1024]
  ret i1024 %empty_426
}

; [#uses=2]
define weak i10 @_ssdm_op_BitConcatenate.i10.i2.i8(i2, i8) nounwind readnone {
entry:
  %empty = zext i2 %0 to i10                      ; [#uses=1 type=i10]
  %empty_427 = zext i8 %1 to i10                  ; [#uses=1 type=i10]
  %empty_428 = shl i10 %empty, 8                  ; [#uses=1 type=i10]
  %empty_429 = or i10 %empty_428, %empty_427      ; [#uses=1 type=i10]
  ret i10 %empty_429
}

!opencl.kernels = !{!0, !7, !11, !17, !7, !7, !23, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!28, !29}
!axi4.slave.bundlemap = !{}

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
!28 = metadata !{metadata !"ctx", metadata !"ctx_offset", metadata !"READWRITE"}
!29 = metadata !{metadata !"buf", metadata !"buf_offset", metadata !"READWRITE"}
!30 = metadata !{i32 786689, metadata !31, metadata !"buf", null, i32 299, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 786478, i32 0, metadata !32, metadata !"encrypt", metadata !"encrypt", metadata !"", metadata !32, i32 299, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 300} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c", metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !35, metadata !49, metadata !49}
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !32, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ]
!37 = metadata !{i32 786451, null, metadata !"", metadata !38, i32 7, i64 1024, i64 8, i32 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!38 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h", metadata !"/scratch/local/tmp.mnejJh1Zni/_sds/vhls", null} ; [ DW_TAG_file_type ]
!39 = metadata !{metadata !40, metadata !46, metadata !47, metadata !48}
!40 = metadata !{i32 786445, metadata !37, metadata !"key", metadata !38, i32 8, i64 256, i64 8, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !42, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !32, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ]
!43 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786465, i64 0, i64 31}       ; [ DW_TAG_subrange_type ]
!46 = metadata !{i32 786445, metadata !37, metadata !"enckey", metadata !38, i32 9, i64 256, i64 8, i64 256, i32 0, metadata !41} ; [ DW_TAG_member ]
!47 = metadata !{i32 786445, metadata !37, metadata !"deckey", metadata !38, i32 10, i64 256, i64 8, i64 512, i32 0, metadata !41} ; [ DW_TAG_member ]
!48 = metadata !{i32 786445, metadata !37, metadata !"dummy", metadata !38, i32 11, i64 256, i64 8, i64 768, i32 0, metadata !41} ; [ DW_TAG_member ]
!49 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !42, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ]
!55 = metadata !{i32 299, i32 58, metadata !31, null}
!56 = metadata !{i32 790544, metadata !57, metadata !"ctx", null, i32 299, metadata !58, i32 0, i32 0, metadata !60, metadata !64, metadata !68, metadata !72} ; [ DW_TAG_arg_variable_aggr_vec ]
!57 = metadata !{i32 786689, metadata !31, metadata !"ctx", metadata !32, i32 16777515, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ]
!59 = metadata !{i32 786468, null, metadata !"int1024", null, i32 0, i64 1024, i64 1024, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!60 = metadata !{i32 790531, metadata !57, metadata !"ctx.key", null, i32 299, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!61 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!62 = metadata !{i32 786452, null, metadata !"", metadata !38, i32 7, i64 256, i64 8, i32 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!63 = metadata !{metadata !40}
!64 = metadata !{i32 790531, metadata !57, metadata !"ctx.enckey", null, i32 299, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!65 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ]
!66 = metadata !{i32 786452, null, metadata !"", metadata !38, i32 7, i64 256, i64 8, i32 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!67 = metadata !{metadata !46}
!68 = metadata !{i32 790531, metadata !57, metadata !"ctx.deckey", null, i32 299, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!69 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ]
!70 = metadata !{i32 786452, null, metadata !"", metadata !38, i32 7, i64 256, i64 8, i32 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!71 = metadata !{metadata !47}
!72 = metadata !{i32 790531, metadata !57, metadata !"ctx.dummy", null, i32 299, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!73 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ]
!74 = metadata !{i32 786452, null, metadata !"", metadata !38, i32 7, i64 256, i64 8, i32 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_structure_field_type ]
!75 = metadata !{metadata !48}
!76 = metadata !{i32 299, i32 30, metadata !31, null}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 7, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"buf", metadata !81, metadata !"unsigned char", i32 0, i32 7}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 15, i32 1}
!83 = metadata !{metadata !84, metadata !89, metadata !94, metadata !99, metadata !104, metadata !109, metadata !114, metadata !119, metadata !124, metadata !129, metadata !134, metadata !139, metadata !144, metadata !149, metadata !154, metadata !159, metadata !164, metadata !169, metadata !174, metadata !179, metadata !184, metadata !189, metadata !194, metadata !199, metadata !204, metadata !209, metadata !214, metadata !219, metadata !224, metadata !229, metadata !234, metadata !239, metadata !244, metadata !247, metadata !250, metadata !253, metadata !256, metadata !259, metadata !262, metadata !265, metadata !268, metadata !271, metadata !274, metadata !277, metadata !280, metadata !283, metadata !286, metadata !289, metadata !292, metadata !295, metadata !298, metadata !301, metadata !304, metadata !307, metadata !310, metadata !313, metadata !316, metadata !319, metadata !322, metadata !325, metadata !328, metadata !331, metadata !334, metadata !337, metadata !340, metadata !343, metadata !346, metadata !349, metadata !352, metadata !355, metadata !358, metadata !361, metadata !364, metadata !367, metadata !370, metadata !373, metadata !376, metadata !379, metadata !382, metadata !385, metadata !388, metadata !391, metadata !394, metadata !397, metadata !400, metadata !403, metadata !406, metadata !409, metadata !412, metadata !415, metadata !418, metadata !421, metadata !424, metadata !427, metadata !430, metadata !433, metadata !436, metadata !439, metadata !442, metadata !445, metadata !448, metadata !451, metadata !454, metadata !457, metadata !460, metadata !463, metadata !466, metadata !469, metadata !472, metadata !475, metadata !478, metadata !481, metadata !484, metadata !487, metadata !490, metadata !493, metadata !496, metadata !499, metadata !502, metadata !505, metadata !508, metadata !511, metadata !514, metadata !517, metadata !520, metadata !523, metadata !526, metadata !529}
!84 = metadata !{i32 0, i32 7, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"ctx.key", metadata !87, metadata !"unsigned char", i32 0, i32 7}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 0, i32 2}
!89 = metadata !{i32 8, i32 15, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"ctx.key", metadata !92, metadata !"unsigned char", i32 0, i32 7}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 1, i32 1, i32 2}
!94 = metadata !{i32 16, i32 23, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"ctx.key", metadata !97, metadata !"unsigned char", i32 0, i32 7}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 2, i32 2, i32 2}
!99 = metadata !{i32 24, i32 31, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"ctx.key", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 3, i32 3, i32 2}
!104 = metadata !{i32 32, i32 39, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"ctx.key", metadata !107, metadata !"unsigned char", i32 0, i32 7}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 4, i32 4, i32 2}
!109 = metadata !{i32 40, i32 47, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"ctx.key", metadata !112, metadata !"unsigned char", i32 0, i32 7}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 5, i32 5, i32 2}
!114 = metadata !{i32 48, i32 55, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"ctx.key", metadata !117, metadata !"unsigned char", i32 0, i32 7}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 6, i32 6, i32 2}
!119 = metadata !{i32 56, i32 63, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"ctx.key", metadata !122, metadata !"unsigned char", i32 0, i32 7}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 7, i32 7, i32 2}
!124 = metadata !{i32 64, i32 71, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"ctx.key", metadata !127, metadata !"unsigned char", i32 0, i32 7}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 8, i32 8, i32 2}
!129 = metadata !{i32 72, i32 79, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"ctx.key", metadata !132, metadata !"unsigned char", i32 0, i32 7}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 9, i32 9, i32 2}
!134 = metadata !{i32 80, i32 87, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"ctx.key", metadata !137, metadata !"unsigned char", i32 0, i32 7}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 10, i32 10, i32 2}
!139 = metadata !{i32 88, i32 95, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"ctx.key", metadata !142, metadata !"unsigned char", i32 0, i32 7}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 11, i32 11, i32 2}
!144 = metadata !{i32 96, i32 103, metadata !145}
!145 = metadata !{metadata !146}
!146 = metadata !{metadata !"ctx.key", metadata !147, metadata !"unsigned char", i32 0, i32 7}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 12, i32 12, i32 2}
!149 = metadata !{i32 104, i32 111, metadata !150}
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !"ctx.key", metadata !152, metadata !"unsigned char", i32 0, i32 7}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 13, i32 13, i32 2}
!154 = metadata !{i32 112, i32 119, metadata !155}
!155 = metadata !{metadata !156}
!156 = metadata !{metadata !"ctx.key", metadata !157, metadata !"unsigned char", i32 0, i32 7}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 14, i32 14, i32 2}
!159 = metadata !{i32 120, i32 127, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"ctx.key", metadata !162, metadata !"unsigned char", i32 0, i32 7}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 15, i32 15, i32 2}
!164 = metadata !{i32 128, i32 135, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"ctx.key", metadata !167, metadata !"unsigned char", i32 0, i32 7}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 16, i32 16, i32 2}
!169 = metadata !{i32 136, i32 143, metadata !170}
!170 = metadata !{metadata !171}
!171 = metadata !{metadata !"ctx.key", metadata !172, metadata !"unsigned char", i32 0, i32 7}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 17, i32 17, i32 2}
!174 = metadata !{i32 144, i32 151, metadata !175}
!175 = metadata !{metadata !176}
!176 = metadata !{metadata !"ctx.key", metadata !177, metadata !"unsigned char", i32 0, i32 7}
!177 = metadata !{metadata !178}
!178 = metadata !{i32 18, i32 18, i32 2}
!179 = metadata !{i32 152, i32 159, metadata !180}
!180 = metadata !{metadata !181}
!181 = metadata !{metadata !"ctx.key", metadata !182, metadata !"unsigned char", i32 0, i32 7}
!182 = metadata !{metadata !183}
!183 = metadata !{i32 19, i32 19, i32 2}
!184 = metadata !{i32 160, i32 167, metadata !185}
!185 = metadata !{metadata !186}
!186 = metadata !{metadata !"ctx.key", metadata !187, metadata !"unsigned char", i32 0, i32 7}
!187 = metadata !{metadata !188}
!188 = metadata !{i32 20, i32 20, i32 2}
!189 = metadata !{i32 168, i32 175, metadata !190}
!190 = metadata !{metadata !191}
!191 = metadata !{metadata !"ctx.key", metadata !192, metadata !"unsigned char", i32 0, i32 7}
!192 = metadata !{metadata !193}
!193 = metadata !{i32 21, i32 21, i32 2}
!194 = metadata !{i32 176, i32 183, metadata !195}
!195 = metadata !{metadata !196}
!196 = metadata !{metadata !"ctx.key", metadata !197, metadata !"unsigned char", i32 0, i32 7}
!197 = metadata !{metadata !198}
!198 = metadata !{i32 22, i32 22, i32 2}
!199 = metadata !{i32 184, i32 191, metadata !200}
!200 = metadata !{metadata !201}
!201 = metadata !{metadata !"ctx.key", metadata !202, metadata !"unsigned char", i32 0, i32 7}
!202 = metadata !{metadata !203}
!203 = metadata !{i32 23, i32 23, i32 2}
!204 = metadata !{i32 192, i32 199, metadata !205}
!205 = metadata !{metadata !206}
!206 = metadata !{metadata !"ctx.key", metadata !207, metadata !"unsigned char", i32 0, i32 7}
!207 = metadata !{metadata !208}
!208 = metadata !{i32 24, i32 24, i32 2}
!209 = metadata !{i32 200, i32 207, metadata !210}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !"ctx.key", metadata !212, metadata !"unsigned char", i32 0, i32 7}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 25, i32 25, i32 2}
!214 = metadata !{i32 208, i32 215, metadata !215}
!215 = metadata !{metadata !216}
!216 = metadata !{metadata !"ctx.key", metadata !217, metadata !"unsigned char", i32 0, i32 7}
!217 = metadata !{metadata !218}
!218 = metadata !{i32 26, i32 26, i32 2}
!219 = metadata !{i32 216, i32 223, metadata !220}
!220 = metadata !{metadata !221}
!221 = metadata !{metadata !"ctx.key", metadata !222, metadata !"unsigned char", i32 0, i32 7}
!222 = metadata !{metadata !223}
!223 = metadata !{i32 27, i32 27, i32 2}
!224 = metadata !{i32 224, i32 231, metadata !225}
!225 = metadata !{metadata !226}
!226 = metadata !{metadata !"ctx.key", metadata !227, metadata !"unsigned char", i32 0, i32 7}
!227 = metadata !{metadata !228}
!228 = metadata !{i32 28, i32 28, i32 2}
!229 = metadata !{i32 232, i32 239, metadata !230}
!230 = metadata !{metadata !231}
!231 = metadata !{metadata !"ctx.key", metadata !232, metadata !"unsigned char", i32 0, i32 7}
!232 = metadata !{metadata !233}
!233 = metadata !{i32 29, i32 29, i32 2}
!234 = metadata !{i32 240, i32 247, metadata !235}
!235 = metadata !{metadata !236}
!236 = metadata !{metadata !"ctx.key", metadata !237, metadata !"unsigned char", i32 0, i32 7}
!237 = metadata !{metadata !238}
!238 = metadata !{i32 30, i32 30, i32 2}
!239 = metadata !{i32 248, i32 255, metadata !240}
!240 = metadata !{metadata !241}
!241 = metadata !{metadata !"ctx.key", metadata !242, metadata !"unsigned char", i32 0, i32 7}
!242 = metadata !{metadata !243}
!243 = metadata !{i32 31, i32 31, i32 2}
!244 = metadata !{i32 256, i32 263, metadata !245}
!245 = metadata !{metadata !246}
!246 = metadata !{metadata !"ctx.enckey", metadata !87, metadata !"unsigned char", i32 0, i32 7}
!247 = metadata !{i32 264, i32 271, metadata !248}
!248 = metadata !{metadata !249}
!249 = metadata !{metadata !"ctx.enckey", metadata !92, metadata !"unsigned char", i32 0, i32 7}
!250 = metadata !{i32 272, i32 279, metadata !251}
!251 = metadata !{metadata !252}
!252 = metadata !{metadata !"ctx.enckey", metadata !97, metadata !"unsigned char", i32 0, i32 7}
!253 = metadata !{i32 280, i32 287, metadata !254}
!254 = metadata !{metadata !255}
!255 = metadata !{metadata !"ctx.enckey", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!256 = metadata !{i32 288, i32 295, metadata !257}
!257 = metadata !{metadata !258}
!258 = metadata !{metadata !"ctx.enckey", metadata !107, metadata !"unsigned char", i32 0, i32 7}
!259 = metadata !{i32 296, i32 303, metadata !260}
!260 = metadata !{metadata !261}
!261 = metadata !{metadata !"ctx.enckey", metadata !112, metadata !"unsigned char", i32 0, i32 7}
!262 = metadata !{i32 304, i32 311, metadata !263}
!263 = metadata !{metadata !264}
!264 = metadata !{metadata !"ctx.enckey", metadata !117, metadata !"unsigned char", i32 0, i32 7}
!265 = metadata !{i32 312, i32 319, metadata !266}
!266 = metadata !{metadata !267}
!267 = metadata !{metadata !"ctx.enckey", metadata !122, metadata !"unsigned char", i32 0, i32 7}
!268 = metadata !{i32 320, i32 327, metadata !269}
!269 = metadata !{metadata !270}
!270 = metadata !{metadata !"ctx.enckey", metadata !127, metadata !"unsigned char", i32 0, i32 7}
!271 = metadata !{i32 328, i32 335, metadata !272}
!272 = metadata !{metadata !273}
!273 = metadata !{metadata !"ctx.enckey", metadata !132, metadata !"unsigned char", i32 0, i32 7}
!274 = metadata !{i32 336, i32 343, metadata !275}
!275 = metadata !{metadata !276}
!276 = metadata !{metadata !"ctx.enckey", metadata !137, metadata !"unsigned char", i32 0, i32 7}
!277 = metadata !{i32 344, i32 351, metadata !278}
!278 = metadata !{metadata !279}
!279 = metadata !{metadata !"ctx.enckey", metadata !142, metadata !"unsigned char", i32 0, i32 7}
!280 = metadata !{i32 352, i32 359, metadata !281}
!281 = metadata !{metadata !282}
!282 = metadata !{metadata !"ctx.enckey", metadata !147, metadata !"unsigned char", i32 0, i32 7}
!283 = metadata !{i32 360, i32 367, metadata !284}
!284 = metadata !{metadata !285}
!285 = metadata !{metadata !"ctx.enckey", metadata !152, metadata !"unsigned char", i32 0, i32 7}
!286 = metadata !{i32 368, i32 375, metadata !287}
!287 = metadata !{metadata !288}
!288 = metadata !{metadata !"ctx.enckey", metadata !157, metadata !"unsigned char", i32 0, i32 7}
!289 = metadata !{i32 376, i32 383, metadata !290}
!290 = metadata !{metadata !291}
!291 = metadata !{metadata !"ctx.enckey", metadata !162, metadata !"unsigned char", i32 0, i32 7}
!292 = metadata !{i32 384, i32 391, metadata !293}
!293 = metadata !{metadata !294}
!294 = metadata !{metadata !"ctx.enckey", metadata !167, metadata !"unsigned char", i32 0, i32 7}
!295 = metadata !{i32 392, i32 399, metadata !296}
!296 = metadata !{metadata !297}
!297 = metadata !{metadata !"ctx.enckey", metadata !172, metadata !"unsigned char", i32 0, i32 7}
!298 = metadata !{i32 400, i32 407, metadata !299}
!299 = metadata !{metadata !300}
!300 = metadata !{metadata !"ctx.enckey", metadata !177, metadata !"unsigned char", i32 0, i32 7}
!301 = metadata !{i32 408, i32 415, metadata !302}
!302 = metadata !{metadata !303}
!303 = metadata !{metadata !"ctx.enckey", metadata !182, metadata !"unsigned char", i32 0, i32 7}
!304 = metadata !{i32 416, i32 423, metadata !305}
!305 = metadata !{metadata !306}
!306 = metadata !{metadata !"ctx.enckey", metadata !187, metadata !"unsigned char", i32 0, i32 7}
!307 = metadata !{i32 424, i32 431, metadata !308}
!308 = metadata !{metadata !309}
!309 = metadata !{metadata !"ctx.enckey", metadata !192, metadata !"unsigned char", i32 0, i32 7}
!310 = metadata !{i32 432, i32 439, metadata !311}
!311 = metadata !{metadata !312}
!312 = metadata !{metadata !"ctx.enckey", metadata !197, metadata !"unsigned char", i32 0, i32 7}
!313 = metadata !{i32 440, i32 447, metadata !314}
!314 = metadata !{metadata !315}
!315 = metadata !{metadata !"ctx.enckey", metadata !202, metadata !"unsigned char", i32 0, i32 7}
!316 = metadata !{i32 448, i32 455, metadata !317}
!317 = metadata !{metadata !318}
!318 = metadata !{metadata !"ctx.enckey", metadata !207, metadata !"unsigned char", i32 0, i32 7}
!319 = metadata !{i32 456, i32 463, metadata !320}
!320 = metadata !{metadata !321}
!321 = metadata !{metadata !"ctx.enckey", metadata !212, metadata !"unsigned char", i32 0, i32 7}
!322 = metadata !{i32 464, i32 471, metadata !323}
!323 = metadata !{metadata !324}
!324 = metadata !{metadata !"ctx.enckey", metadata !217, metadata !"unsigned char", i32 0, i32 7}
!325 = metadata !{i32 472, i32 479, metadata !326}
!326 = metadata !{metadata !327}
!327 = metadata !{metadata !"ctx.enckey", metadata !222, metadata !"unsigned char", i32 0, i32 7}
!328 = metadata !{i32 480, i32 487, metadata !329}
!329 = metadata !{metadata !330}
!330 = metadata !{metadata !"ctx.enckey", metadata !227, metadata !"unsigned char", i32 0, i32 7}
!331 = metadata !{i32 488, i32 495, metadata !332}
!332 = metadata !{metadata !333}
!333 = metadata !{metadata !"ctx.enckey", metadata !232, metadata !"unsigned char", i32 0, i32 7}
!334 = metadata !{i32 496, i32 503, metadata !335}
!335 = metadata !{metadata !336}
!336 = metadata !{metadata !"ctx.enckey", metadata !237, metadata !"unsigned char", i32 0, i32 7}
!337 = metadata !{i32 504, i32 511, metadata !338}
!338 = metadata !{metadata !339}
!339 = metadata !{metadata !"ctx.enckey", metadata !242, metadata !"unsigned char", i32 0, i32 7}
!340 = metadata !{i32 512, i32 519, metadata !341}
!341 = metadata !{metadata !342}
!342 = metadata !{metadata !"ctx.deckey", metadata !87, metadata !"unsigned char", i32 0, i32 7}
!343 = metadata !{i32 520, i32 527, metadata !344}
!344 = metadata !{metadata !345}
!345 = metadata !{metadata !"ctx.deckey", metadata !92, metadata !"unsigned char", i32 0, i32 7}
!346 = metadata !{i32 528, i32 535, metadata !347}
!347 = metadata !{metadata !348}
!348 = metadata !{metadata !"ctx.deckey", metadata !97, metadata !"unsigned char", i32 0, i32 7}
!349 = metadata !{i32 536, i32 543, metadata !350}
!350 = metadata !{metadata !351}
!351 = metadata !{metadata !"ctx.deckey", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!352 = metadata !{i32 544, i32 551, metadata !353}
!353 = metadata !{metadata !354}
!354 = metadata !{metadata !"ctx.deckey", metadata !107, metadata !"unsigned char", i32 0, i32 7}
!355 = metadata !{i32 552, i32 559, metadata !356}
!356 = metadata !{metadata !357}
!357 = metadata !{metadata !"ctx.deckey", metadata !112, metadata !"unsigned char", i32 0, i32 7}
!358 = metadata !{i32 560, i32 567, metadata !359}
!359 = metadata !{metadata !360}
!360 = metadata !{metadata !"ctx.deckey", metadata !117, metadata !"unsigned char", i32 0, i32 7}
!361 = metadata !{i32 568, i32 575, metadata !362}
!362 = metadata !{metadata !363}
!363 = metadata !{metadata !"ctx.deckey", metadata !122, metadata !"unsigned char", i32 0, i32 7}
!364 = metadata !{i32 576, i32 583, metadata !365}
!365 = metadata !{metadata !366}
!366 = metadata !{metadata !"ctx.deckey", metadata !127, metadata !"unsigned char", i32 0, i32 7}
!367 = metadata !{i32 584, i32 591, metadata !368}
!368 = metadata !{metadata !369}
!369 = metadata !{metadata !"ctx.deckey", metadata !132, metadata !"unsigned char", i32 0, i32 7}
!370 = metadata !{i32 592, i32 599, metadata !371}
!371 = metadata !{metadata !372}
!372 = metadata !{metadata !"ctx.deckey", metadata !137, metadata !"unsigned char", i32 0, i32 7}
!373 = metadata !{i32 600, i32 607, metadata !374}
!374 = metadata !{metadata !375}
!375 = metadata !{metadata !"ctx.deckey", metadata !142, metadata !"unsigned char", i32 0, i32 7}
!376 = metadata !{i32 608, i32 615, metadata !377}
!377 = metadata !{metadata !378}
!378 = metadata !{metadata !"ctx.deckey", metadata !147, metadata !"unsigned char", i32 0, i32 7}
!379 = metadata !{i32 616, i32 623, metadata !380}
!380 = metadata !{metadata !381}
!381 = metadata !{metadata !"ctx.deckey", metadata !152, metadata !"unsigned char", i32 0, i32 7}
!382 = metadata !{i32 624, i32 631, metadata !383}
!383 = metadata !{metadata !384}
!384 = metadata !{metadata !"ctx.deckey", metadata !157, metadata !"unsigned char", i32 0, i32 7}
!385 = metadata !{i32 632, i32 639, metadata !386}
!386 = metadata !{metadata !387}
!387 = metadata !{metadata !"ctx.deckey", metadata !162, metadata !"unsigned char", i32 0, i32 7}
!388 = metadata !{i32 640, i32 647, metadata !389}
!389 = metadata !{metadata !390}
!390 = metadata !{metadata !"ctx.deckey", metadata !167, metadata !"unsigned char", i32 0, i32 7}
!391 = metadata !{i32 648, i32 655, metadata !392}
!392 = metadata !{metadata !393}
!393 = metadata !{metadata !"ctx.deckey", metadata !172, metadata !"unsigned char", i32 0, i32 7}
!394 = metadata !{i32 656, i32 663, metadata !395}
!395 = metadata !{metadata !396}
!396 = metadata !{metadata !"ctx.deckey", metadata !177, metadata !"unsigned char", i32 0, i32 7}
!397 = metadata !{i32 664, i32 671, metadata !398}
!398 = metadata !{metadata !399}
!399 = metadata !{metadata !"ctx.deckey", metadata !182, metadata !"unsigned char", i32 0, i32 7}
!400 = metadata !{i32 672, i32 679, metadata !401}
!401 = metadata !{metadata !402}
!402 = metadata !{metadata !"ctx.deckey", metadata !187, metadata !"unsigned char", i32 0, i32 7}
!403 = metadata !{i32 680, i32 687, metadata !404}
!404 = metadata !{metadata !405}
!405 = metadata !{metadata !"ctx.deckey", metadata !192, metadata !"unsigned char", i32 0, i32 7}
!406 = metadata !{i32 688, i32 695, metadata !407}
!407 = metadata !{metadata !408}
!408 = metadata !{metadata !"ctx.deckey", metadata !197, metadata !"unsigned char", i32 0, i32 7}
!409 = metadata !{i32 696, i32 703, metadata !410}
!410 = metadata !{metadata !411}
!411 = metadata !{metadata !"ctx.deckey", metadata !202, metadata !"unsigned char", i32 0, i32 7}
!412 = metadata !{i32 704, i32 711, metadata !413}
!413 = metadata !{metadata !414}
!414 = metadata !{metadata !"ctx.deckey", metadata !207, metadata !"unsigned char", i32 0, i32 7}
!415 = metadata !{i32 712, i32 719, metadata !416}
!416 = metadata !{metadata !417}
!417 = metadata !{metadata !"ctx.deckey", metadata !212, metadata !"unsigned char", i32 0, i32 7}
!418 = metadata !{i32 720, i32 727, metadata !419}
!419 = metadata !{metadata !420}
!420 = metadata !{metadata !"ctx.deckey", metadata !217, metadata !"unsigned char", i32 0, i32 7}
!421 = metadata !{i32 728, i32 735, metadata !422}
!422 = metadata !{metadata !423}
!423 = metadata !{metadata !"ctx.deckey", metadata !222, metadata !"unsigned char", i32 0, i32 7}
!424 = metadata !{i32 736, i32 743, metadata !425}
!425 = metadata !{metadata !426}
!426 = metadata !{metadata !"ctx.deckey", metadata !227, metadata !"unsigned char", i32 0, i32 7}
!427 = metadata !{i32 744, i32 751, metadata !428}
!428 = metadata !{metadata !429}
!429 = metadata !{metadata !"ctx.deckey", metadata !232, metadata !"unsigned char", i32 0, i32 7}
!430 = metadata !{i32 752, i32 759, metadata !431}
!431 = metadata !{metadata !432}
!432 = metadata !{metadata !"ctx.deckey", metadata !237, metadata !"unsigned char", i32 0, i32 7}
!433 = metadata !{i32 760, i32 767, metadata !434}
!434 = metadata !{metadata !435}
!435 = metadata !{metadata !"ctx.deckey", metadata !242, metadata !"unsigned char", i32 0, i32 7}
!436 = metadata !{i32 768, i32 775, metadata !437}
!437 = metadata !{metadata !438}
!438 = metadata !{metadata !"ctx.dummy", metadata !87, metadata !"unsigned char", i32 0, i32 7}
!439 = metadata !{i32 776, i32 783, metadata !440}
!440 = metadata !{metadata !441}
!441 = metadata !{metadata !"ctx.dummy", metadata !92, metadata !"unsigned char", i32 0, i32 7}
!442 = metadata !{i32 784, i32 791, metadata !443}
!443 = metadata !{metadata !444}
!444 = metadata !{metadata !"ctx.dummy", metadata !97, metadata !"unsigned char", i32 0, i32 7}
!445 = metadata !{i32 792, i32 799, metadata !446}
!446 = metadata !{metadata !447}
!447 = metadata !{metadata !"ctx.dummy", metadata !102, metadata !"unsigned char", i32 0, i32 7}
!448 = metadata !{i32 800, i32 807, metadata !449}
!449 = metadata !{metadata !450}
!450 = metadata !{metadata !"ctx.dummy", metadata !107, metadata !"unsigned char", i32 0, i32 7}
!451 = metadata !{i32 808, i32 815, metadata !452}
!452 = metadata !{metadata !453}
!453 = metadata !{metadata !"ctx.dummy", metadata !112, metadata !"unsigned char", i32 0, i32 7}
!454 = metadata !{i32 816, i32 823, metadata !455}
!455 = metadata !{metadata !456}
!456 = metadata !{metadata !"ctx.dummy", metadata !117, metadata !"unsigned char", i32 0, i32 7}
!457 = metadata !{i32 824, i32 831, metadata !458}
!458 = metadata !{metadata !459}
!459 = metadata !{metadata !"ctx.dummy", metadata !122, metadata !"unsigned char", i32 0, i32 7}
!460 = metadata !{i32 832, i32 839, metadata !461}
!461 = metadata !{metadata !462}
!462 = metadata !{metadata !"ctx.dummy", metadata !127, metadata !"unsigned char", i32 0, i32 7}
!463 = metadata !{i32 840, i32 847, metadata !464}
!464 = metadata !{metadata !465}
!465 = metadata !{metadata !"ctx.dummy", metadata !132, metadata !"unsigned char", i32 0, i32 7}
!466 = metadata !{i32 848, i32 855, metadata !467}
!467 = metadata !{metadata !468}
!468 = metadata !{metadata !"ctx.dummy", metadata !137, metadata !"unsigned char", i32 0, i32 7}
!469 = metadata !{i32 856, i32 863, metadata !470}
!470 = metadata !{metadata !471}
!471 = metadata !{metadata !"ctx.dummy", metadata !142, metadata !"unsigned char", i32 0, i32 7}
!472 = metadata !{i32 864, i32 871, metadata !473}
!473 = metadata !{metadata !474}
!474 = metadata !{metadata !"ctx.dummy", metadata !147, metadata !"unsigned char", i32 0, i32 7}
!475 = metadata !{i32 872, i32 879, metadata !476}
!476 = metadata !{metadata !477}
!477 = metadata !{metadata !"ctx.dummy", metadata !152, metadata !"unsigned char", i32 0, i32 7}
!478 = metadata !{i32 880, i32 887, metadata !479}
!479 = metadata !{metadata !480}
!480 = metadata !{metadata !"ctx.dummy", metadata !157, metadata !"unsigned char", i32 0, i32 7}
!481 = metadata !{i32 888, i32 895, metadata !482}
!482 = metadata !{metadata !483}
!483 = metadata !{metadata !"ctx.dummy", metadata !162, metadata !"unsigned char", i32 0, i32 7}
!484 = metadata !{i32 896, i32 903, metadata !485}
!485 = metadata !{metadata !486}
!486 = metadata !{metadata !"ctx.dummy", metadata !167, metadata !"unsigned char", i32 0, i32 7}
!487 = metadata !{i32 904, i32 911, metadata !488}
!488 = metadata !{metadata !489}
!489 = metadata !{metadata !"ctx.dummy", metadata !172, metadata !"unsigned char", i32 0, i32 7}
!490 = metadata !{i32 912, i32 919, metadata !491}
!491 = metadata !{metadata !492}
!492 = metadata !{metadata !"ctx.dummy", metadata !177, metadata !"unsigned char", i32 0, i32 7}
!493 = metadata !{i32 920, i32 927, metadata !494}
!494 = metadata !{metadata !495}
!495 = metadata !{metadata !"ctx.dummy", metadata !182, metadata !"unsigned char", i32 0, i32 7}
!496 = metadata !{i32 928, i32 935, metadata !497}
!497 = metadata !{metadata !498}
!498 = metadata !{metadata !"ctx.dummy", metadata !187, metadata !"unsigned char", i32 0, i32 7}
!499 = metadata !{i32 936, i32 943, metadata !500}
!500 = metadata !{metadata !501}
!501 = metadata !{metadata !"ctx.dummy", metadata !192, metadata !"unsigned char", i32 0, i32 7}
!502 = metadata !{i32 944, i32 951, metadata !503}
!503 = metadata !{metadata !504}
!504 = metadata !{metadata !"ctx.dummy", metadata !197, metadata !"unsigned char", i32 0, i32 7}
!505 = metadata !{i32 952, i32 959, metadata !506}
!506 = metadata !{metadata !507}
!507 = metadata !{metadata !"ctx.dummy", metadata !202, metadata !"unsigned char", i32 0, i32 7}
!508 = metadata !{i32 960, i32 967, metadata !509}
!509 = metadata !{metadata !510}
!510 = metadata !{metadata !"ctx.dummy", metadata !207, metadata !"unsigned char", i32 0, i32 7}
!511 = metadata !{i32 968, i32 975, metadata !512}
!512 = metadata !{metadata !513}
!513 = metadata !{metadata !"ctx.dummy", metadata !212, metadata !"unsigned char", i32 0, i32 7}
!514 = metadata !{i32 976, i32 983, metadata !515}
!515 = metadata !{metadata !516}
!516 = metadata !{metadata !"ctx.dummy", metadata !217, metadata !"unsigned char", i32 0, i32 7}
!517 = metadata !{i32 984, i32 991, metadata !518}
!518 = metadata !{metadata !519}
!519 = metadata !{metadata !"ctx.dummy", metadata !222, metadata !"unsigned char", i32 0, i32 7}
!520 = metadata !{i32 992, i32 999, metadata !521}
!521 = metadata !{metadata !522}
!522 = metadata !{metadata !"ctx.dummy", metadata !227, metadata !"unsigned char", i32 0, i32 7}
!523 = metadata !{i32 1000, i32 1007, metadata !524}
!524 = metadata !{metadata !525}
!525 = metadata !{metadata !"ctx.dummy", metadata !232, metadata !"unsigned char", i32 0, i32 7}
!526 = metadata !{i32 1008, i32 1015, metadata !527}
!527 = metadata !{metadata !528}
!528 = metadata !{metadata !"ctx.dummy", metadata !237, metadata !"unsigned char", i32 0, i32 7}
!529 = metadata !{i32 1016, i32 1023, metadata !530}
!530 = metadata !{metadata !531}
!531 = metadata !{metadata !"ctx.dummy", metadata !242, metadata !"unsigned char", i32 0, i32 7}
!532 = metadata !{metadata !533}
!533 = metadata !{i32 0, i32 7, metadata !534}
!534 = metadata !{metadata !535}
!535 = metadata !{metadata !"k", metadata !536, metadata !"unsigned char", i32 0, i32 7}
!536 = metadata !{metadata !537}
!537 = metadata !{i32 0, i32 31, i32 1}
!538 = metadata !{i32 786689, metadata !31, metadata !"k", null, i32 299, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!539 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !42, metadata !44, i32 0, i32 0} ; [ DW_TAG_array_type ]
!540 = metadata !{i32 299, i32 43, metadata !31, null}
!541 = metadata !{i32 301, i32 1, metadata !542, null}
!542 = metadata !{i32 786443, metadata !31, i32 300, i32 1, metadata !32, i32 16} ; [ DW_TAG_lexical_block ]
!543 = metadata !{i32 311, i32 2, metadata !544, null}
!544 = metadata !{i32 786443, metadata !545, i32 305, i32 50, metadata !32, i32 18} ; [ DW_TAG_lexical_block ]
!545 = metadata !{i32 786443, metadata !542, i32 305, i32 12, metadata !32, i32 17} ; [ DW_TAG_lexical_block ]
!546 = metadata !{i32 313, i32 17, metadata !547, null}
!547 = metadata !{i32 786443, metadata !542, i32 313, i32 12, metadata !32, i32 19} ; [ DW_TAG_lexical_block ]
!548 = metadata !{i32 786688, metadata !542, metadata !"i", metadata !32, i32 303, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!549 = metadata !{i32 313, i32 29, metadata !550, null}
!550 = metadata !{i32 786443, metadata !547, i32 313, i32 28, metadata !32, i32 20} ; [ DW_TAG_lexical_block ]
!551 = metadata !{i32 786688, metadata !542, metadata !"rcon", metadata !32, i32 302, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!552 = metadata !{i32 319, i32 2, metadata !550, null}
!553 = metadata !{i32 320, i32 5, metadata !550, null}
!554 = metadata !{i32 324, i32 16, metadata !555, null}
!555 = metadata !{i32 786443, metadata !542, i32 324, i32 12, metadata !32, i32 21} ; [ DW_TAG_lexical_block ]
!556 = metadata !{i32 325, i32 6, metadata !557, null}
!557 = metadata !{i32 786443, metadata !555, i32 325, i32 5, metadata !32, i32 22} ; [ DW_TAG_lexical_block ]
!558 = metadata !{i32 327, i32 1, metadata !557, null}
!559 = metadata !{i32 331, i32 2, metadata !557, null}
!560 = metadata !{i32 332, i32 9, metadata !557, null}
!561 = metadata !{i32 333, i32 9, metadata !557, null}
!562 = metadata !{i32 334, i32 9, metadata !557, null}
!563 = metadata !{i32 334, i32 21, metadata !557, null}
!564 = metadata !{i32 335, i32 14, metadata !557, null}
!565 = metadata !{i32 336, i32 5, metadata !557, null}
!566 = metadata !{i32 324, i32 41, metadata !555, null}
!567 = metadata !{i32 337, i32 5, metadata !542, null}
!568 = metadata !{i32 338, i32 5, metadata !542, null}
!569 = metadata !{i32 339, i32 5, metadata !542, null}
!570 = metadata !{i32 341, i32 1, metadata !542, null}
!571 = metadata !{i32 786689, metadata !572, metadata !"buf", null, i32 178, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!572 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !32, i32 178, metadata !573, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 179} ; [ DW_TAG_subprogram ]
!573 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !574, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!574 = metadata !{null, metadata !49}
!575 = metadata !{i32 178, i32 28, metadata !572, null}
!576 = metadata !{i32 189, i32 2, metadata !577, null}
!577 = metadata !{i32 786443, metadata !578, i32 183, i32 5, metadata !32, i32 2} ; [ DW_TAG_lexical_block ]
!578 = metadata !{i32 786443, metadata !572, i32 179, i32 1, metadata !32, i32 1} ; [ DW_TAG_lexical_block ]
!579 = metadata !{i32 191, i32 1, metadata !578, null}
!580 = metadata !{i32 786689, metadata !581, metadata !"buf", null, i32 227, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!581 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !32, i32 227, metadata !573, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 228} ; [ DW_TAG_subprogram ]
!582 = metadata !{i32 227, i32 29, metadata !581, null}
!583 = metadata !{i32 231, i32 5, metadata !584, null}
!584 = metadata !{i32 786443, metadata !581, i32 228, i32 1, metadata !32, i32 7} ; [ DW_TAG_lexical_block ]
!585 = metadata !{i32 786688, metadata !584, metadata !"i", metadata !32, i32 229, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!586 = metadata !{i32 231, i32 17, metadata !584, null}
!587 = metadata !{i32 231, i32 34, metadata !584, null}
!588 = metadata !{i32 231, i32 51, metadata !584, null}
!589 = metadata !{i32 231, i32 69, metadata !584, null}
!590 = metadata !{i32 232, i32 5, metadata !584, null}
!591 = metadata !{i32 232, i32 18, metadata !584, null}
!592 = metadata !{i32 232, i32 36, metadata !584, null}
!593 = metadata !{i32 233, i32 5, metadata !584, null}
!594 = metadata !{i32 786688, metadata !584, metadata !"j", metadata !32, i32 229, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!595 = metadata !{i32 233, i32 17, metadata !584, null}
!596 = metadata !{i32 233, i32 35, metadata !584, null}
!597 = metadata !{i32 233, i32 54, metadata !584, null}
!598 = metadata !{i32 233, i32 72, metadata !584, null}
!599 = metadata !{i32 234, i32 5, metadata !584, null}
!600 = metadata !{i32 234, i32 18, metadata !584, null}
!601 = metadata !{i32 234, i32 36, metadata !584, null}
!602 = metadata !{i32 236, i32 1, metadata !584, null}
!603 = metadata !{i32 786689, metadata !604, metadata !"buf", null, i32 239, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!604 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !32, i32 239, metadata !573, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 240} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 239, i32 30, metadata !604, null}
!606 = metadata !{i32 250, i32 2, metadata !607, null}
!607 = metadata !{i32 786443, metadata !608, i32 244, i32 5, metadata !32, i32 10} ; [ DW_TAG_lexical_block ]
!608 = metadata !{i32 786443, metadata !609, i32 243, i32 11, metadata !32, i32 9} ; [ DW_TAG_lexical_block ]
!609 = metadata !{i32 786443, metadata !604, i32 240, i32 1, metadata !32, i32 8} ; [ DW_TAG_lexical_block ]
!610 = metadata !{i32 250, i32 14, metadata !607, null}
!611 = metadata !{i32 250, i32 30, metadata !607, null}
!612 = metadata !{i32 250, i32 46, metadata !607, null}
!613 = metadata !{i32 251, i32 9, metadata !607, null}
!614 = metadata !{i32 786689, metadata !615, metadata !"x", metadata !32, i32 16777388, metadata !42, i32 0, metadata !618} ; [ DW_TAG_arg_variable ]
!615 = metadata !{i32 786478, i32 0, metadata !32, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !32, i32 172, metadata !616, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 173} ; [ DW_TAG_subprogram ]
!616 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !617, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!617 = metadata !{metadata !42, metadata !42}
!618 = metadata !{i32 252, i32 23, metadata !607, null}
!619 = metadata !{i32 172, i32 26, metadata !615, metadata !618}
!620 = metadata !{i32 174, i32 5, metadata !621, metadata !618}
!621 = metadata !{i32 786443, metadata !615, i32 173, i32 1, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!622 = metadata !{i32 252, i32 54, metadata !607, null}
!623 = metadata !{i32 786689, metadata !615, metadata !"x", metadata !32, i32 16777388, metadata !42, i32 0, metadata !622} ; [ DW_TAG_arg_variable ]
!624 = metadata !{i32 172, i32 26, metadata !615, metadata !622}
!625 = metadata !{i32 174, i32 5, metadata !621, metadata !622}
!626 = metadata !{i32 253, i32 25, metadata !607, null}
!627 = metadata !{i32 786689, metadata !615, metadata !"x", metadata !32, i32 16777388, metadata !42, i32 0, metadata !626} ; [ DW_TAG_arg_variable ]
!628 = metadata !{i32 172, i32 26, metadata !615, metadata !626}
!629 = metadata !{i32 174, i32 5, metadata !621, metadata !626}
!630 = metadata !{i32 253, i32 56, metadata !607, null}
!631 = metadata !{i32 786689, metadata !615, metadata !"x", metadata !32, i32 16777388, metadata !42, i32 0, metadata !630} ; [ DW_TAG_arg_variable ]
!632 = metadata !{i32 172, i32 26, metadata !615, metadata !630}
!633 = metadata !{i32 174, i32 5, metadata !621, metadata !630}
!634 = metadata !{i32 255, i32 1, metadata !609, null}
!635 = metadata !{i32 790532, metadata !636, metadata !"rc", null, i32 258, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!636 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !32, i32 258, metadata !637, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 259} ; [ DW_TAG_subprogram ]
!637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!638 = metadata !{null, metadata !49, metadata !49}
!639 = metadata !{i32 258, i32 44, metadata !636, null}
!640 = metadata !{i32 790544, metadata !636, metadata !"k", null, i32 258, metadata !58, i32 0, i32 0, metadata !641} ; [ DW_TAG_arg_variable_aggr_vec ]
!641 = metadata !{i32 786689, metadata !636, metadata !"k", null, i32 258, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!642 = metadata !{i32 258, i32 32, metadata !636, null}
!643 = metadata !{i32 262, i32 5, metadata !644, null}
!644 = metadata !{i32 786443, metadata !636, i32 259, i32 1, metadata !32, i32 11} ; [ DW_TAG_lexical_block ]
!645 = metadata !{i32 263, i32 5, metadata !644, null}
!646 = metadata !{i32 264, i32 5, metadata !644, null}
!647 = metadata !{i32 265, i32 5, metadata !644, null}
!648 = metadata !{i32 266, i32 5, metadata !644, null}
!649 = metadata !{i32 268, i32 16, metadata !650, null}
!650 = metadata !{i32 786443, metadata !644, i32 268, i32 12, metadata !32, i32 12} ; [ DW_TAG_lexical_block ]
!651 = metadata !{i32 269, i32 6, metadata !652, null}
!652 = metadata !{i32 786443, metadata !650, i32 269, i32 5, metadata !32, i32 13} ; [ DW_TAG_lexical_block ]
!653 = metadata !{i32 271, i32 1, metadata !652, null}
!654 = metadata !{i32 275, i32 2, metadata !652, null}
!655 = metadata !{i32 277, i32 5, metadata !652, null}
!656 = metadata !{i32 268, i32 31, metadata !650, null}
!657 = metadata !{i32 786688, metadata !644, metadata !"i", metadata !32, i32 260, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!658 = metadata !{i32 278, i32 5, metadata !644, null}
!659 = metadata !{i32 279, i32 5, metadata !644, null}
!660 = metadata !{i32 280, i32 5, metadata !644, null}
!661 = metadata !{i32 281, i32 5, metadata !644, null}
!662 = metadata !{i32 283, i32 16, metadata !663, null}
!663 = metadata !{i32 786443, metadata !644, i32 283, i32 12, metadata !32, i32 14} ; [ DW_TAG_lexical_block ]
!664 = metadata !{i32 284, i32 6, metadata !665, null}
!665 = metadata !{i32 786443, metadata !663, i32 284, i32 5, metadata !32, i32 15} ; [ DW_TAG_lexical_block ]
!666 = metadata !{i32 290, i32 2, metadata !665, null}
!667 = metadata !{i32 283, i32 32, metadata !663, null}
!668 = metadata !{i32 294, i32 1, metadata !644, null}
!669 = metadata !{i32 786689, metadata !670, metadata !"buf", null, i32 210, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!670 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !32, i32 210, metadata !671, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 211} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!672 = metadata !{null, metadata !49, metadata !49, metadata !49}
!673 = metadata !{i32 210, i32 35, metadata !670, null}
!674 = metadata !{i32 790544, metadata !670, metadata !"ctx", null, i32 210, metadata !58, i32 0, i32 0, metadata !675, metadata !676} ; [ DW_TAG_arg_variable_aggr_vec ]
!675 = metadata !{i32 786689, metadata !670, metadata !"key", null, i32 210, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!676 = metadata !{i32 786689, metadata !670, metadata !"cpk", null, i32 210, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!677 = metadata !{i32 210, i32 49, metadata !670, null}
!678 = metadata !{i32 214, i32 13, metadata !679, null}
!679 = metadata !{i32 786443, metadata !670, i32 211, i32 1, metadata !32, i32 5} ; [ DW_TAG_lexical_block ]
!680 = metadata !{i32 215, i32 6, metadata !681, null}
!681 = metadata !{i32 786443, metadata !679, i32 215, i32 5, metadata !32, i32 6} ; [ DW_TAG_lexical_block ]
!682 = metadata !{i32 221, i32 2, metadata !681, null}
!683 = metadata !{i32 222, i32 5, metadata !681, null}
!684 = metadata !{i32 223, i32 1, metadata !679, null}
!685 = metadata !{i32 786689, metadata !686, metadata !"buf", null, i32 194, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!686 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !32, i32 194, metadata !637, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 195} ; [ DW_TAG_subprogram ]
!687 = metadata !{i32 194, i32 31, metadata !686, null}
!688 = metadata !{i32 790544, metadata !686, metadata !"key", null, i32 194, metadata !58, i32 0, i32 0, metadata !689} ; [ DW_TAG_arg_variable_aggr_vec ]
!689 = metadata !{i32 786689, metadata !686, metadata !"key", null, i32 194, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!690 = metadata !{i32 194, i32 45, metadata !686, null}
!691 = metadata !{i32 205, i32 2, metadata !692, null}
!692 = metadata !{i32 786443, metadata !693, i32 199, i32 5, metadata !32, i32 4} ; [ DW_TAG_lexical_block ]
!693 = metadata !{i32 786443, metadata !686, i32 195, i32 1, metadata !32, i32 3} ; [ DW_TAG_lexical_block ]
!694 = metadata !{i32 207, i32 1, metadata !693, null}
