; ModuleID = '/scratch/local/tmp.wBr2TBiwTt/_sds/vhls/encrypt/solution/.autopilot/db/a.o.3.bc'
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
@encrypt_str = internal unnamed_addr constant [8 x i8] c"encrypt\00" ; [#uses=1 type=[8 x i8]*]
@p_str9 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=12 type=[7 x i8]*]
@p_str8 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1 ; [#uses=6 type=[4 x i8]*]
@p_str7 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=12 type=[6 x i8]*]
@p_str6 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str5 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str4 = private unnamed_addr constant [4 x i8] c"mix\00", align 1 ; [#uses=1 type=[4 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1 ; [#uses=3 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [7 x i8] c"addkey\00", align 1 ; [#uses=3 type=[7 x i8]*]
@p_str15 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str14 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str12 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str11 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@p_str10 = private unnamed_addr constant [4 x i8] c"buf\00", align 1 ; [#uses=6 type=[4 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=67 type=[1 x i8]*]
@p_str = private unnamed_addr constant [4 x i8] c"sub\00", align 1 ; [#uses=3 type=[4 x i8]*]

; [#uses=1]
declare i256 @llvm.part.set.i256.i8(i256, i8, i32, i32) nounwind readnone

; [#uses=5]
declare i1024 @llvm.part.set.i1024.i256(i1024, i256, i32, i32) nounwind readnone

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=34]
declare i256 @llvm.part.select.i256(i256, i32, i32) nounwind readnone

; [#uses=2]
declare i1024 @llvm.part.select.i1024(i1024, i32, i32) nounwind readnone

; [#uses=39]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @encrypt(i1024* %ctx, i8* %buf, i32 %ctx_offset, [32 x i8]* %k, i32 %buf_offset) {
.preheader.preheader:
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=64 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %buf_offset_read}, i64 0, metadata !30), !dbg !55 ; [debug line = 299:58] [debug variable = buf]
  %ctx_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_offset) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %ctx_offset_read}, i64 0, metadata !56), !dbg !76 ; [debug line = 299:30] [debug variable = ctx]
  %ctx_offset1 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %ctx_offset_read, i32 7, i32 31) ; [#uses=41 type=i25]
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
  %rcon = phi i8 [ %rcon_1, %0 ], [ 1, %.preheader.preheader ] ; [#uses=1 type=i8]
  %i = phi i3 [ %phitmp, %0 ], [ -1, %.preheader.preheader ] ; [#uses=2 type=i3]
  %tmp_7 = icmp eq i3 %i, 0, !dbg !546            ; [#uses=1 type=i1] [debug line = 313:17]
  br i1 %tmp_7, label %1, label %0, !dbg !546     ; [debug line = 313:17]

; <label>:0                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !548), !dbg !546 ; [debug line = 313:17] [debug variable = i]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str14) nounwind, !dbg !549 ; [debug line = 313:29]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str14), !dbg !549 ; [#uses=1 type=i32] [debug line = 313:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !551 ; [debug line = 315:1]
  %rcon_1 = call fastcc i8 @aes_expandEncKey.1(i1024* %ctx, i25 %ctx_offset1, i8 %rcon) ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rcon_1}, i64 0, metadata !552), !dbg !553 ; [debug line = 319:2] [debug variable = rcon]
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str14, i32 %tmp_1), !dbg !554 ; [#uses=0 type=i32] [debug line = 320:5]
  %phitmp = add i3 %i, -1, !dbg !554              ; [#uses=1 type=i3] [debug line = 320:5]
  br label %.preheader, !dbg !554                 ; [debug line = 320:5]

; <label>:1                                       ; preds = %.preheader
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1)
  br label %2, !dbg !555                          ; [debug line = 324:16]

; <label>:2                                       ; preds = %47, %1
  %rcon_s = phi i8 [ 1, %1 ], [ %rcon_2_10, %47 ] ; [#uses=3 type=i8]
  %i_2 = phi i8 [ 1, %1 ], [ %i_4_s, %47 ]        ; [#uses=14 type=i8]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %exitcond = icmp eq i8 %i_2, 14, !dbg !555      ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond, label %51, label %5, !dbg !555 ; [debug line = 324:16]

; <label>:3                                       ; preds = %6, %4
  %rcon_2 = phi i8 [ %tmp_4, %6 ], [ %rcon_s, %4 ] ; [#uses=3 type=i8]
  %exitcond_1 = icmp eq i8 %i_2, 13, !dbg !555    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_1, label %51, label %9, !dbg !555 ; [debug line = 324:16]

; <label>:4                                       ; preds = %5
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %3, !dbg !557                          ; [debug line = 334:21]

; <label>:5                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str15) nounwind, !dbg !559 ; [debug line = 325:6]
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  %tmp = trunc i8 %i_2 to i1                      ; [#uses=12 type=i1]
  br i1 %tmp, label %4, label %6, !dbg !563       ; [debug line = 334:9]

; <label>:6                                       ; preds = %5
  %tmp_4 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_s) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %3

; <label>:7                                       ; preds = %10, %8
  %rcon_2_1 = phi i8 [ %tmp_5, %10 ], [ %rcon_2, %8 ] ; [#uses=3 type=i8]
  %exitcond_2 = icmp eq i8 %i_2, 12, !dbg !555    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_2, label %51, label %13, !dbg !555 ; [debug line = 324:16]

; <label>:8                                       ; preds = %9
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %7, !dbg !557                          ; [debug line = 334:21]

; <label>:9                                       ; preds = %3
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %10, label %8, !dbg !563      ; [debug line = 334:9]

; <label>:10                                      ; preds = %9
  %tmp_5 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %7

; <label>:11                                      ; preds = %14, %12
  %rcon_2_2 = phi i8 [ %tmp_6, %14 ], [ %rcon_2_1, %12 ] ; [#uses=3 type=i8]
  %exitcond_3 = icmp eq i8 %i_2, 11, !dbg !555    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_3, label %51, label %17, !dbg !555 ; [debug line = 324:16]

; <label>:12                                      ; preds = %13
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %11, !dbg !557                         ; [debug line = 334:21]

; <label>:13                                      ; preds = %7
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %12, label %14, !dbg !563     ; [debug line = 334:9]

; <label>:14                                      ; preds = %13
  %tmp_6 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_1) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %11

; <label>:15                                      ; preds = %18, %16
  %rcon_2_3 = phi i8 [ %tmp_8, %18 ], [ %rcon_2_2, %16 ] ; [#uses=3 type=i8]
  %exitcond_4 = icmp eq i8 %i_2, 10, !dbg !555    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_4, label %51, label %21, !dbg !555 ; [debug line = 324:16]

; <label>:16                                      ; preds = %17
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %15, !dbg !557                         ; [debug line = 334:21]

; <label>:17                                      ; preds = %11
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %18, label %16, !dbg !563     ; [debug line = 334:9]

; <label>:18                                      ; preds = %17
  %tmp_8 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_2) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %15

; <label>:19                                      ; preds = %22, %20
  %rcon_2_4 = phi i8 [ %tmp_9, %22 ], [ %rcon_2_3, %20 ] ; [#uses=3 type=i8]
  %exitcond_5 = icmp eq i8 %i_2, 9, !dbg !555     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_5, label %51, label %25, !dbg !555 ; [debug line = 324:16]

; <label>:20                                      ; preds = %21
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %19, !dbg !557                         ; [debug line = 334:21]

; <label>:21                                      ; preds = %15
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %20, label %22, !dbg !563     ; [debug line = 334:9]

; <label>:22                                      ; preds = %21
  %tmp_9 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_3) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %19

; <label>:23                                      ; preds = %26, %24
  %rcon_2_5 = phi i8 [ %tmp_s, %26 ], [ %rcon_2_4, %24 ] ; [#uses=3 type=i8]
  %exitcond_6 = icmp eq i8 %i_2, 8, !dbg !555     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_6, label %51, label %29, !dbg !555 ; [debug line = 324:16]

; <label>:24                                      ; preds = %25
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %23, !dbg !557                         ; [debug line = 334:21]

; <label>:25                                      ; preds = %19
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %26, label %24, !dbg !563     ; [debug line = 334:9]

; <label>:26                                      ; preds = %25
  %tmp_s = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_4) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %23

; <label>:27                                      ; preds = %30, %28
  %rcon_2_6 = phi i8 [ %tmp_3, %30 ], [ %rcon_2_5, %28 ] ; [#uses=3 type=i8]
  %exitcond_7 = icmp eq i8 %i_2, 7, !dbg !555     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_7, label %51, label %33, !dbg !555 ; [debug line = 324:16]

; <label>:28                                      ; preds = %29
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %27, !dbg !557                         ; [debug line = 334:21]

; <label>:29                                      ; preds = %23
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %28, label %30, !dbg !563     ; [debug line = 334:9]

; <label>:30                                      ; preds = %29
  %tmp_3 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_5) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %27

; <label>:31                                      ; preds = %34, %32
  %rcon_2_7 = phi i8 [ %tmp_10, %34 ], [ %rcon_2_6, %32 ] ; [#uses=3 type=i8]
  %exitcond_8 = icmp eq i8 %i_2, 6, !dbg !555     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_8, label %51, label %37, !dbg !555 ; [debug line = 324:16]

; <label>:32                                      ; preds = %33
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %31, !dbg !557                         ; [debug line = 334:21]

; <label>:33                                      ; preds = %27
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %34, label %32, !dbg !563     ; [debug line = 334:9]

; <label>:34                                      ; preds = %33
  %tmp_10 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_6) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %31

; <label>:35                                      ; preds = %38, %36
  %rcon_2_8 = phi i8 [ %tmp_11, %38 ], [ %rcon_2_7, %36 ] ; [#uses=3 type=i8]
  %exitcond_9 = icmp eq i8 %i_2, 5, !dbg !555     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_9, label %51, label %41, !dbg !555 ; [debug line = 324:16]

; <label>:36                                      ; preds = %37
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %35, !dbg !557                         ; [debug line = 334:21]

; <label>:37                                      ; preds = %31
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %36, label %38, !dbg !563     ; [debug line = 334:9]

; <label>:38                                      ; preds = %37
  %tmp_11 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_7) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %35

; <label>:39                                      ; preds = %42, %40
  %rcon_2_9 = phi i8 [ %tmp_12, %42 ], [ %rcon_2_8, %40 ] ; [#uses=3 type=i8]
  %exitcond_s = icmp eq i8 %i_2, 4, !dbg !555     ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_s, label %51, label %45, !dbg !555 ; [debug line = 324:16]

; <label>:40                                      ; preds = %41
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %39, !dbg !557                         ; [debug line = 334:21]

; <label>:41                                      ; preds = %35
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %42, label %40, !dbg !563     ; [debug line = 334:9]

; <label>:42                                      ; preds = %41
  %tmp_12 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_8) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %39

; <label>:43                                      ; preds = %46, %44
  %rcon_2_s = phi i8 [ %tmp_13, %46 ], [ %rcon_2_9, %44 ] ; [#uses=3 type=i8]
  %exitcond_10 = icmp eq i8 %i_2, 3, !dbg !555    ; [#uses=1 type=i1] [debug line = 324:16]
  br i1 %exitcond_10, label %51, label %49, !dbg !555 ; [debug line = 324:16]

; <label>:44                                      ; preds = %45
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %43, !dbg !557                         ; [debug line = 334:21]

; <label>:45                                      ; preds = %39
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %44, label %46, !dbg !563     ; [debug line = 334:9]

; <label>:46                                      ; preds = %45
  %tmp_13 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_9) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %43

; <label>:47                                      ; preds = %50, %48
  %rcon_2_10 = phi i8 [ %tmp_14, %50 ], [ %rcon_2_s, %48 ] ; [#uses=1 type=i8]
  %i_4_s = add i8 %i_2, 12, !dbg !564             ; [#uses=1 type=i8] [debug line = 324:41]
  br label %2, !dbg !564                          ; [debug line = 324:41]

; <label>:48                                      ; preds = %49
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %47, !dbg !557                         ; [debug line = 334:21]

; <label>:49                                      ; preds = %43
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !560 ; [debug line = 331:2]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !561 ; [debug line = 332:9]
  call fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset_read), !dbg !562 ; [debug line = 333:9]
  br i1 %tmp, label %50, label %48, !dbg !563     ; [debug line = 334:9]

; <label>:50                                      ; preds = %49
  %tmp_14 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_s) ; [#uses=1 type=i8]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %47

; <label>:51                                      ; preds = %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %3, %2
  %rcon_1_lcssa = phi i8 [ %rcon_s, %2 ], [ %rcon_2, %3 ], [ %rcon_2_1, %7 ], [ %rcon_2_2, %11 ], [ %rcon_2_3, %15 ], [ %rcon_2_4, %19 ], [ %rcon_2_5, %23 ], [ %rcon_2_6, %27 ], [ %rcon_2_7, %31 ], [ %rcon_2_8, %35 ], [ %rcon_2_9, %39 ], [ %rcon_2_s, %43 ] ; [#uses=1 type=i8]
  call fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset_read), !dbg !565 ; [debug line = 337:5]
  call fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset_read), !dbg !566 ; [debug line = 338:5]
  %empty_16 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_1_lcssa) ; [#uses=0 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %empty_16}, i64 0, metadata !552), !dbg !567 ; [debug line = 339:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  ret void, !dbg !568                             ; [debug line = 341:1]
}

; [#uses=13]
define internal fastcc void @aes_subBytes(i8* %buf, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !569), !dbg !573 ; [debug line = 178:28] [debug variable = buf]
  br label %1, !dbg !574                          ; [debug line = 182:11]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_1, %2 ]           ; [#uses=2 type=i5]
  %tmp = icmp eq i5 %i, 0, !dbg !574              ; [#uses=1 type=i1] [debug line = 182:11]
  br i1 %tmp, label %3, label %2, !dbg !574       ; [debug line = 182:11]

; <label>:2                                       ; preds = %1
  %i_1 = add i5 %i, -1, !dbg !574                 ; [#uses=2 type=i5] [debug line = 182:11]
  %i_1_cast = sext i5 %i_1 to i8, !dbg !574       ; [#uses=1 type=i8] [debug line = 182:11]
  call void @llvm.dbg.value(metadata !{i5 %i_1}, i64 0, metadata !576), !dbg !574 ; [debug line = 182:11] [debug variable = i]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str) nounwind, !dbg !577 ; [debug line = 183:6]
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str), !dbg !577 ; [#uses=1 type=i32] [debug line = 183:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 9, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !579 ; [debug line = 185:1]
  %tmp_s = zext i8 %i_1_cast to i32, !dbg !580    ; [#uses=1 type=i32] [debug line = 189:2]
  %sum = add i32 %tmp_s, %buf_offset_read         ; [#uses=1 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %sum    ; [#uses=5 type=i8*]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !580 ; [#uses=0 type=i1] [debug line = 189:2]
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !580 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp_1 = zext i8 %buf_addr_read to i32, !dbg !580 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1, !dbg !580 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !580 ; [#uses=1 type=i8] [debug line = 189:2]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !580 ; [#uses=0 type=i1] [debug line = 189:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %sbox_load, i1 true), !dbg !580 ; [debug line = 189:2]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !580 ; [#uses=0 type=i1] [debug line = 189:2]
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str, i32 %tmp_2), !dbg !581 ; [#uses=0 type=i32] [debug line = 190:5]
  br label %1, !dbg !581                          ; [debug line = 190:5]

; <label>:3                                       ; preds = %1
  ret void, !dbg !582                             ; [debug line = 191:1]
}

; [#uses=13]
define internal fastcc void @aes_shiftRows(i8* %buf, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=12 type=i32]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !583), !dbg !585 ; [debug line = 227:29] [debug variable = buf]
  %sum = add i32 %buf_offset_read, 1              ; [#uses=1 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %sum    ; [#uses=5 type=i8*]
  %i_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !586 ; [#uses=0 type=i1] [debug line = 231:5]
  %i = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !586 ; [#uses=1 type=i8] [debug line = 231:5]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !588), !dbg !586 ; [debug line = 231:5] [debug variable = i]
  %sum1 = add i32 %buf_offset_read, 5             ; [#uses=1 type=i32]
  %buf_addr_1 = getelementptr i8* %buf, i32 %sum1 ; [#uses=5 type=i8*]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_1, i32 1), !dbg !589 ; [#uses=0 type=i1] [debug line = 231:17]
  %buf_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_1), !dbg !589 ; [#uses=1 type=i8] [debug line = 231:17]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !589 ; [#uses=0 type=i1] [debug line = 231:17]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %buf_addr_1_read, i1 true), !dbg !589 ; [debug line = 231:17]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !589 ; [#uses=0 type=i1] [debug line = 231:17]
  %sum2 = add i32 %buf_offset_read, 9             ; [#uses=1 type=i32]
  %buf_addr_2 = getelementptr i8* %buf, i32 %sum2 ; [#uses=5 type=i8*]
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_2, i32 1), !dbg !590 ; [#uses=0 type=i1] [debug line = 231:34]
  %buf_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_2), !dbg !590 ; [#uses=1 type=i8] [debug line = 231:34]
  %buf_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_1, i32 1), !dbg !590 ; [#uses=0 type=i1] [debug line = 231:34]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_1, i8 %buf_addr_2_read, i1 true), !dbg !590 ; [debug line = 231:34]
  %buf_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_1), !dbg !590 ; [#uses=0 type=i1] [debug line = 231:34]
  %sum3 = add i32 %buf_offset_read, 13            ; [#uses=1 type=i32]
  %buf_addr_3 = getelementptr i8* %buf, i32 %sum3 ; [#uses=5 type=i8*]
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_3, i32 1), !dbg !591 ; [#uses=0 type=i1] [debug line = 231:51]
  %buf_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_3), !dbg !591 ; [#uses=1 type=i8] [debug line = 231:51]
  %buf_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_2, i32 1), !dbg !591 ; [#uses=0 type=i1] [debug line = 231:51]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_2, i8 %buf_addr_3_read, i1 true), !dbg !591 ; [debug line = 231:51]
  %buf_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_2), !dbg !591 ; [#uses=0 type=i1] [debug line = 231:51]
  %buf_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_3, i32 1), !dbg !592 ; [#uses=0 type=i1] [debug line = 231:69]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_3, i8 %i, i1 true), !dbg !592 ; [debug line = 231:69]
  %buf_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_3), !dbg !592 ; [#uses=0 type=i1] [debug line = 231:69]
  %sum4 = add i32 %buf_offset_read, 10            ; [#uses=1 type=i32]
  %buf_addr_4 = getelementptr i8* %buf, i32 %sum4 ; [#uses=5 type=i8*]
  %i_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_4, i32 1), !dbg !593 ; [#uses=0 type=i1] [debug line = 232:5]
  %i_2 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_4), !dbg !593 ; [#uses=1 type=i8] [debug line = 232:5]
  call void @llvm.dbg.value(metadata !{i8 %i_2}, i64 0, metadata !588), !dbg !593 ; [debug line = 232:5] [debug variable = i]
  %sum5 = add i32 %buf_offset_read, 2             ; [#uses=1 type=i32]
  %buf_addr_5 = getelementptr i8* %buf, i32 %sum5 ; [#uses=5 type=i8*]
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_5, i32 1), !dbg !594 ; [#uses=0 type=i1] [debug line = 232:18]
  %buf_addr_5_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_5), !dbg !594 ; [#uses=1 type=i8] [debug line = 232:18]
  %buf_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_4, i32 1), !dbg !594 ; [#uses=0 type=i1] [debug line = 232:18]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_4, i8 %buf_addr_5_read, i1 true), !dbg !594 ; [debug line = 232:18]
  %buf_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_4), !dbg !594 ; [#uses=0 type=i1] [debug line = 232:18]
  %buf_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_5, i32 1), !dbg !595 ; [#uses=0 type=i1] [debug line = 232:36]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_5, i8 %i_2, i1 true), !dbg !595 ; [debug line = 232:36]
  %buf_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_5), !dbg !595 ; [#uses=0 type=i1] [debug line = 232:36]
  %sum6 = add i32 %buf_offset_read, 3             ; [#uses=1 type=i32]
  %buf_addr_6 = getelementptr i8* %buf, i32 %sum6 ; [#uses=5 type=i8*]
  %j_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_6, i32 1), !dbg !596 ; [#uses=0 type=i1] [debug line = 233:5]
  %j = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_6), !dbg !596 ; [#uses=1 type=i8] [debug line = 233:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !597), !dbg !596 ; [debug line = 233:5] [debug variable = j]
  %sum7 = add i32 %buf_offset_read, 15            ; [#uses=1 type=i32]
  %buf_addr_7 = getelementptr i8* %buf, i32 %sum7 ; [#uses=5 type=i8*]
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_7, i32 1), !dbg !598 ; [#uses=0 type=i1] [debug line = 233:17]
  %buf_addr_7_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_7), !dbg !598 ; [#uses=1 type=i8] [debug line = 233:17]
  %buf_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_6, i32 1), !dbg !598 ; [#uses=0 type=i1] [debug line = 233:17]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_6, i8 %buf_addr_7_read, i1 true), !dbg !598 ; [debug line = 233:17]
  %buf_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_6), !dbg !598 ; [#uses=0 type=i1] [debug line = 233:17]
  %sum8 = add i32 %buf_offset_read, 11            ; [#uses=1 type=i32]
  %buf_addr_8 = getelementptr i8* %buf, i32 %sum8 ; [#uses=5 type=i8*]
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_8, i32 1), !dbg !599 ; [#uses=0 type=i1] [debug line = 233:35]
  %buf_addr_8_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_8), !dbg !599 ; [#uses=1 type=i8] [debug line = 233:35]
  %buf_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_7, i32 1), !dbg !599 ; [#uses=0 type=i1] [debug line = 233:35]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_7, i8 %buf_addr_8_read, i1 true), !dbg !599 ; [debug line = 233:35]
  %buf_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_7), !dbg !599 ; [#uses=0 type=i1] [debug line = 233:35]
  %sum9 = add i32 %buf_offset_read, 7             ; [#uses=1 type=i32]
  %buf_addr_9 = getelementptr i8* %buf, i32 %sum9 ; [#uses=5 type=i8*]
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_9, i32 1), !dbg !600 ; [#uses=0 type=i1] [debug line = 233:54]
  %buf_addr_9_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_9), !dbg !600 ; [#uses=1 type=i8] [debug line = 233:54]
  %buf_addr_8_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_8, i32 1), !dbg !600 ; [#uses=0 type=i1] [debug line = 233:54]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_8, i8 %buf_addr_9_read, i1 true), !dbg !600 ; [debug line = 233:54]
  %buf_addr_8_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_8), !dbg !600 ; [#uses=0 type=i1] [debug line = 233:54]
  %buf_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_9, i32 1), !dbg !601 ; [#uses=0 type=i1] [debug line = 233:72]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_9, i8 %j, i1 true), !dbg !601 ; [debug line = 233:72]
  %buf_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_9), !dbg !601 ; [#uses=0 type=i1] [debug line = 233:72]
  %sum10 = add i32 %buf_offset_read, 14           ; [#uses=1 type=i32]
  %buf_addr_10 = getelementptr i8* %buf, i32 %sum10 ; [#uses=5 type=i8*]
  %j_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_10, i32 1), !dbg !602 ; [#uses=0 type=i1] [debug line = 234:5]
  %j_1 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_10), !dbg !602 ; [#uses=1 type=i8] [debug line = 234:5]
  call void @llvm.dbg.value(metadata !{i8 %j_1}, i64 0, metadata !597), !dbg !602 ; [debug line = 234:5] [debug variable = j]
  %sum11 = add i32 %buf_offset_read, 6            ; [#uses=1 type=i32]
  %buf_addr_11 = getelementptr i8* %buf, i32 %sum11 ; [#uses=5 type=i8*]
  %buf_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_11, i32 1), !dbg !603 ; [#uses=0 type=i1] [debug line = 234:18]
  %buf_addr_11_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_11), !dbg !603 ; [#uses=1 type=i8] [debug line = 234:18]
  %buf_addr_10_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_10, i32 1), !dbg !603 ; [#uses=0 type=i1] [debug line = 234:18]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_10, i8 %buf_addr_11_read, i1 true), !dbg !603 ; [debug line = 234:18]
  %buf_addr_10_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_10), !dbg !603 ; [#uses=0 type=i1] [debug line = 234:18]
  %buf_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_11, i32 1), !dbg !604 ; [#uses=0 type=i1] [debug line = 234:36]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_11, i8 %j_1, i1 true), !dbg !604 ; [debug line = 234:36]
  %buf_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_11), !dbg !604 ; [#uses=0 type=i1] [debug line = 234:36]
  ret void, !dbg !605                             ; [debug line = 236:1]
}

; [#uses=12]
define internal fastcc void @aes_mixColumns(i8* %buf, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !606), !dbg !608 ; [debug line = 239:30] [debug variable = buf]
  br label %1, !dbg !609                          ; [debug line = 243:16]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_3, %2 ]             ; [#uses=4 type=i5]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !609 ; [#uses=1 type=i1] [debug line = 243:16]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %2, !dbg !609       ; [debug line = 243:16]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str4) nounwind, !dbg !612 ; [debug line = 244:6]
  %tmp_s = zext i5 %i to i32, !dbg !614           ; [#uses=1 type=i32] [debug line = 250:2]
  %tmp_8 = trunc i5 %i to i4, !dbg !614           ; [#uses=3 type=i4] [debug line = 250:2]
  %sum = add i32 %buf_offset_read, %tmp_s         ; [#uses=1 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %sum    ; [#uses=5 type=i8*]
  %a_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !614 ; [#uses=0 type=i1] [debug line = 250:2]
  %a = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !614 ; [#uses=3 type=i8] [debug line = 250:2]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !615), !dbg !614 ; [debug line = 250:2] [debug variable = a]
  %tmp_2 = or i4 %tmp_8, 1, !dbg !616             ; [#uses=1 type=i4] [debug line = 250:14]
  %tmp_2_cast = zext i4 %tmp_2 to i32, !dbg !616  ; [#uses=1 type=i32] [debug line = 250:14]
  %sum1 = add i32 %buf_offset_read, %tmp_2_cast   ; [#uses=1 type=i32]
  %buf_addr_12 = getelementptr i8* %buf, i32 %sum1 ; [#uses=5 type=i8*]
  %b_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_12, i32 1), !dbg !616 ; [#uses=0 type=i1] [debug line = 250:14]
  %b = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_12), !dbg !616 ; [#uses=3 type=i8] [debug line = 250:14]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !617), !dbg !616 ; [debug line = 250:14] [debug variable = b]
  %tmp_3 = or i4 %tmp_8, 2, !dbg !618             ; [#uses=1 type=i4] [debug line = 250:30]
  %tmp_3_cast = zext i4 %tmp_3 to i32, !dbg !618  ; [#uses=1 type=i32] [debug line = 250:30]
  %sum2 = add i32 %buf_offset_read, %tmp_3_cast   ; [#uses=1 type=i32]
  %buf_addr_13 = getelementptr i8* %buf, i32 %sum2 ; [#uses=5 type=i8*]
  %c_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_13, i32 1), !dbg !618 ; [#uses=0 type=i1] [debug line = 250:30]
  %c = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_13), !dbg !618 ; [#uses=4 type=i8] [debug line = 250:30]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !619), !dbg !618 ; [debug line = 250:30] [debug variable = c]
  %tmp_4 = or i4 %tmp_8, 3, !dbg !620             ; [#uses=1 type=i4] [debug line = 250:46]
  %tmp_4_cast = zext i4 %tmp_4 to i32, !dbg !620  ; [#uses=1 type=i32] [debug line = 250:46]
  %sum3 = add i32 %buf_offset_read, %tmp_4_cast   ; [#uses=1 type=i32]
  %buf_addr_14 = getelementptr i8* %buf, i32 %sum3 ; [#uses=5 type=i8*]
  %d_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_14, i32 1), !dbg !620 ; [#uses=0 type=i1] [debug line = 250:46]
  %d = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_14), !dbg !620 ; [#uses=3 type=i8] [debug line = 250:46]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !621), !dbg !620 ; [debug line = 250:46] [debug variable = d]
  %x_assign = xor i8 %b, %a, !dbg !622            ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp_6 = xor i8 %c, %x_assign, !dbg !622        ; [#uses=2 type=i8] [debug line = 251:9]
  %e = xor i8 %d, %tmp_6, !dbg !622               ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !623), !dbg !622 ; [debug line = 251:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x_assign}, i64 0, metadata !624), !dbg !629 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7), !dbg !630 ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp_11 = shl i8 %x_assign, 1, !dbg !630        ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp_2_i = xor i8 %tmp_11, 27, !dbg !630        ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp_4_i = select i1 %tmp_10, i8 %tmp_2_i, i8 %tmp_11, !dbg !630 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp1 = xor i8 %tmp_4_i, %e, !dbg !628          ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp_9 = xor i8 %tmp1, %a, !dbg !628            ; [#uses=1 type=i8] [debug line = 252:23]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !628 ; [#uses=0 type=i1] [debug line = 252:23]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_9, i1 true), !dbg !628 ; [debug line = 252:23]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !628 ; [#uses=0 type=i1] [debug line = 252:23]
  %x_assign_1 = xor i8 %c, %b, !dbg !632          ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_1}, i64 0, metadata !633), !dbg !634 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7), !dbg !635 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp_13 = shl i8 %x_assign_1, 1, !dbg !635      ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp_2_i1 = xor i8 %tmp_13, 27, !dbg !635       ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp_4_i1 = select i1 %tmp_12, i8 %tmp_2_i1, i8 %tmp_13, !dbg !635 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp2 = xor i8 %tmp_4_i1, %e, !dbg !632         ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp_5 = xor i8 %tmp2, %b, !dbg !632            ; [#uses=1 type=i8] [debug line = 252:54]
  %buf_addr_12_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_12, i32 1), !dbg !632 ; [#uses=0 type=i1] [debug line = 252:54]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_12, i8 %tmp_5, i1 true), !dbg !632 ; [debug line = 252:54]
  %buf_addr_12_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_12), !dbg !632 ; [#uses=0 type=i1] [debug line = 252:54]
  %x_assign_2 = xor i8 %d, %c, !dbg !636          ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_2}, i64 0, metadata !637), !dbg !638 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2, i32 7), !dbg !639 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp_15 = shl i8 %x_assign_2, 1, !dbg !639      ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp_2_i2 = xor i8 %tmp_15, 27, !dbg !639       ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp_4_i2 = select i1 %tmp_14, i8 %tmp_2_i2, i8 %tmp_15, !dbg !639 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp3 = xor i8 %tmp_4_i2, %e, !dbg !636         ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp_1 = xor i8 %tmp3, %c, !dbg !636            ; [#uses=1 type=i8] [debug line = 253:25]
  %buf_addr_13_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_13, i32 1), !dbg !636 ; [#uses=0 type=i1] [debug line = 253:25]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_13, i8 %tmp_1, i1 true), !dbg !636 ; [debug line = 253:25]
  %buf_addr_13_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_13), !dbg !636 ; [#uses=0 type=i1] [debug line = 253:25]
  %x_assign_3 = xor i8 %d, %a, !dbg !640          ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x_assign_3}, i64 0, metadata !641), !dbg !642 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7), !dbg !643 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp_17 = shl i8 %x_assign_3, 1, !dbg !643      ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp_2_i3 = xor i8 %tmp_17, 27, !dbg !643       ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_4_i3 = select i1 %tmp_16, i8 %tmp_2_i3, i8 %tmp_17, !dbg !643 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp_7 = xor i8 %tmp_4_i3, %tmp_6, !dbg !640    ; [#uses=1 type=i8] [debug line = 253:56]
  %buf_addr_14_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_14, i32 1), !dbg !640 ; [#uses=0 type=i1] [debug line = 253:56]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_14, i8 %tmp_7, i1 true), !dbg !640 ; [debug line = 253:56]
  %buf_addr_14_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_14), !dbg !640 ; [#uses=0 type=i1] [debug line = 253:56]
  %i_3 = add i5 4, %i, !dbg !644                  ; [#uses=1 type=i5] [debug line = 243:31]
  call void @llvm.dbg.value(metadata !{i5 %i_3}, i64 0, metadata !645), !dbg !644 ; [debug line = 243:31] [debug variable = i]
  br label %1, !dbg !644                          ; [debug line = 243:31]

; <label>:3                                       ; preds = %1
  ret void, !dbg !646                             ; [debug line = 255:1]
}

; [#uses=1]
define internal fastcc i8 @aes_expandEncKey.1(i1024* %k, i25 %k_offset, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_1}, i64 0, metadata !647), !dbg !651 ; [debug line = 258:44] [debug variable = rc]
  %k_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %k_offset) ; [#uses=1 type=i25]
  %k_offset_cast = zext i25 %k_offset_read to i32 ; [#uses=1 type=i32]
  %k_addr = getelementptr i1024* %k, i32 %k_offset_cast ; [#uses=5 type=i1024*]
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i1024* %k}, i64 0, metadata !652), !dbg !654 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !647), !dbg !651 ; [debug line = 258:44] [debug variable = rc]
  %k_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !655 ; [#uses=0 type=i1] [debug line = 262:5]
  %k_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %k_addr), !dbg !655 ; [#uses=32 type=i1024] [debug line = 262:5]
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 744, i32 751), !dbg !655 ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp = zext i8 %tmp_3 to i32, !dbg !655         ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !655 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !655 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 512, i32 519), !dbg !655 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %tmp_4, %rc_read_1, !dbg !655    ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_s = xor i8 %tmp1, %sbox_load, !dbg !655    ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 752, i32 759), !dbg !657 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp_1 = zext i8 %tmp_6 to i32, !dbg !657       ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1, !dbg !657 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !657 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 520, i32 527), !dbg !657 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_2 = xor i8 %sbox_load_1, %tmp_7, !dbg !657 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 760, i32 767), !dbg !658 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp_15 = zext i8 %tmp_9 to i32, !dbg !658      ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_15, !dbg !658 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !658 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_10 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 528, i32 535), !dbg !658 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_16 = xor i8 %sbox_load_2, %tmp_10, !dbg !658 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 736, i32 743), !dbg !659 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp_18 = zext i8 %tmp_12 to i32, !dbg !659     ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_18, !dbg !659 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !659 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 536, i32 543), !dbg !659 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_20 = xor i8 %sbox_load_3, %tmp_13, !dbg !659 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp_21 = shl i8 %rc_read_1, 1, !dbg !660       ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7), !dbg !660 ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp_29_cast_cast = select i1 %tmp_22, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp_23 = xor i8 %tmp_29_cast_cast, %tmp_21, !dbg !660 ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 544, i32 551), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_24 = xor i8 %tmp_17, %tmp_s, !dbg !661     ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 552, i32 559), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_25 = xor i8 %tmp_19, %tmp_2, !dbg !661     ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_26 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 560, i32 567), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_27 = xor i8 %tmp_26, %tmp_16, !dbg !661    ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_28 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 568, i32 575), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_29 = xor i8 %tmp_28, %tmp_20, !dbg !661    ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_30 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 576, i32 583), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_36_1 = xor i8 %tmp_30, %tmp_24, !dbg !661  ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_31 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 584, i32 591), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_39_1 = xor i8 %tmp_31, %tmp_25, !dbg !661  ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_32 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 592, i32 599), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_42_1 = xor i8 %tmp_32, %tmp_27, !dbg !661  ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_33 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 600, i32 607), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_45_1 = xor i8 %tmp_33, %tmp_29, !dbg !661  ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_34 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 608, i32 615), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_36_2 = xor i8 %tmp_34, %tmp_36_1, !dbg !661 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 616, i32 623), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_39_2 = xor i8 %tmp_35, %tmp_39_1, !dbg !661 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_36 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 624, i32 631), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_42_2 = xor i8 %tmp_36, %tmp_42_1, !dbg !661 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_37 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 632, i32 639), !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_45_2 = xor i8 %tmp_37, %tmp_45_1, !dbg !661 ; [#uses=2 type=i8] [debug line = 275:2]
  %tmp_38 = zext i8 %tmp_36_2 to i32, !dbg !664   ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_38, !dbg !664 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox_load_4 = load i8* %sbox_addr_4, align 1, !dbg !664 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_39 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 640, i32 647), !dbg !664 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_40 = xor i8 %sbox_load_4, %tmp_39, !dbg !664 ; [#uses=2 type=i8] [debug line = 278:5]
  %tmp_41 = zext i8 %tmp_39_2 to i32, !dbg !665   ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_41, !dbg !665 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !665 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_42 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 648, i32 655), !dbg !665 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_43 = xor i8 %sbox_load_5, %tmp_42, !dbg !665 ; [#uses=2 type=i8] [debug line = 279:5]
  %tmp_44 = zext i8 %tmp_42_2 to i32, !dbg !666   ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_44, !dbg !666 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !666 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_45 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 656, i32 663), !dbg !666 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_46 = xor i8 %sbox_load_6, %tmp_45, !dbg !666 ; [#uses=2 type=i8] [debug line = 280:5]
  %tmp_47 = zext i8 %tmp_45_2 to i32, !dbg !667   ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_47, !dbg !667 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !667 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_48 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 664, i32 671), !dbg !667 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_49 = xor i8 %sbox_load_7, %tmp_48, !dbg !667 ; [#uses=2 type=i8] [debug line = 281:5]
  %tmp_50 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 672, i32 679), !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_51 = xor i8 %tmp_50, %tmp_40, !dbg !668    ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_52 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 680, i32 687), !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_53 = xor i8 %tmp_52, %tmp_43, !dbg !668    ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_54 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 688, i32 695), !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_55 = xor i8 %tmp_54, %tmp_46, !dbg !668    ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_56 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 696, i32 703), !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_57 = xor i8 %tmp_56, %tmp_49, !dbg !668    ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_58 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 704, i32 711), !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_57_1 = xor i8 %tmp_58, %tmp_51, !dbg !668  ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_59 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 712, i32 719), !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_60_1 = xor i8 %tmp_59, %tmp_53, !dbg !668  ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_60 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 720, i32 727), !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_63_1 = xor i8 %tmp_60, %tmp_55, !dbg !668  ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_61 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 728, i32 735), !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_66_1 = xor i8 %tmp_61, %tmp_57, !dbg !668  ; [#uses=2 type=i8] [debug line = 290:2]
  %tmp_57_2 = xor i8 %tmp_12, %tmp_57_1, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_60_2 = xor i8 %tmp_3, %tmp_60_1, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_63_2 = xor i8 %tmp_6, %tmp_63_1, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_66_2 = xor i8 %tmp_9, %tmp_66_1, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %gep11011_part_set_2 = call i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i512(i256 0, i8 %tmp_66_2, i8 %tmp_63_2, i8 %tmp_60_2, i8 %tmp_57_2, i8 %tmp_66_1, i8 %tmp_63_1, i8 %tmp_60_1, i8 %tmp_57_1, i8 %tmp_57, i8 %tmp_55, i8 %tmp_53, i8 %tmp_51, i8 %tmp_49, i8 %tmp_46, i8 %tmp_43, i8 %tmp_40, i8 %tmp_45_2, i8 %tmp_42_2, i8 %tmp_39_2, i8 %tmp_36_2, i8 %tmp_45_1, i8 %tmp_42_1, i8 %tmp_39_1, i8 %tmp_36_1, i8 %tmp_29, i8 %tmp_27, i8 %tmp_25, i8 %tmp_24, i8 %tmp_20, i8 %tmp_16, i8 %tmp_2, i8 %tmp_s, i512 0), !dbg !668 ; [#uses=1 type=i1024] [debug line = 290:2]
  %k_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !668 ; [#uses=0 type=i1] [debug line = 290:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set_2, i128 79228162495817593519834398720), !dbg !668 ; [debug line = 290:2]
  %k_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr), !dbg !668 ; [#uses=0 type=i1] [debug line = 290:2]
  ret i8 %tmp_23, !dbg !671                       ; [debug line = 294:1]
}

; [#uses=13]
define internal fastcc i8 @aes_expandEncKey(i1024* %k, i25 %k_offset, i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %rc_read_2}, i64 0, metadata !647), !dbg !651 ; [debug line = 258:44] [debug variable = rc]
  %k_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %k_offset) ; [#uses=1 type=i25]
  %k_offset_cast = zext i25 %k_offset_read to i32 ; [#uses=1 type=i32]
  %k_addr = getelementptr i1024* %k, i32 %k_offset_cast ; [#uses=11 type=i1024*]
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i1024* %k}, i64 0, metadata !652), !dbg !654 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc_read}, i64 0, metadata !647), !dbg !651 ; [debug line = 258:44] [debug variable = rc]
  %k_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !655 ; [#uses=0 type=i1] [debug line = 262:5]
  %k_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %k_addr), !dbg !655 ; [#uses=10 type=i1024] [debug line = 262:5]
  %tmp_29 = trunc i1024 %k_addr_read to i256, !dbg !655 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp_62 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 232, i32 239), !dbg !655 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp = zext i8 %tmp_62 to i32, !dbg !655        ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !655 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox_load = load i8* %sbox_addr, align 1, !dbg !655 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_30 = trunc i1024 %k_addr_read to i8, !dbg !655 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %tmp_30, %rc_read_2, !dbg !655   ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_22 = xor i8 %tmp1, %sbox_load, !dbg !655   ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp_s = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_29, i8 %tmp_22, i32 0, i32 7), !dbg !655 ; [#uses=1 type=i256] [debug line = 262:5]
  %tmp_64 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 240, i32 247), !dbg !657 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_23 = zext i8 %tmp_64 to i32, !dbg !657     ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_23, !dbg !657 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox_load_1 = load i8* %sbox_addr_1, align 1, !dbg !657 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_65 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 8, i32 15), !dbg !657 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_24 = xor i8 %sbox_load_1, %tmp_65, !dbg !657 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp_67 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_s, i8 %tmp_24, i32 8, i32 15), !dbg !657 ; [#uses=1 type=i256] [debug line = 263:5]
  %tmp_68 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 248, i32 255), !dbg !658 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_25 = zext i8 %tmp_68 to i32, !dbg !658     ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_25, !dbg !658 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox_load_2 = load i8* %sbox_addr_2, align 1, !dbg !658 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_69 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 16, i32 23), !dbg !658 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_26 = xor i8 %sbox_load_2, %tmp_69, !dbg !658 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp_70 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_67, i8 %tmp_26, i32 16, i32 23), !dbg !658 ; [#uses=1 type=i256] [debug line = 264:5]
  %tmp_71 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 224, i32 231), !dbg !659 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_27 = zext i8 %tmp_71 to i32, !dbg !659     ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_27, !dbg !659 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox_load_3 = load i8* %sbox_addr_3, align 1, !dbg !659 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_72 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 24, i32 31), !dbg !659 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_28 = xor i8 %sbox_load_3, %tmp_72, !dbg !659 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp_73 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_70, i8 %tmp_28, i32 24, i32 31), !dbg !659 ; [#uses=1 type=i256] [debug line = 265:5]
  %gep25188190_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %k_addr_read, i256 %tmp_73, i32 0, i32 255), !dbg !659 ; [#uses=1 type=i1024] [debug line = 265:5]
  %tmp_31 = shl i8 %rc_read_2, 1, !dbg !660       ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp_33 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_2, i32 7), !dbg !660 ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp_31_cast_cast = select i1 %tmp_33, i8 27, i8 0 ; [#uses=1 type=i8]
  %tmp_32 = xor i8 %tmp_31_cast_cast, %tmp_31, !dbg !660 ; [#uses=1 type=i8] [debug line = 266:5]
  br label %1, !dbg !672                          ; [debug line = 268:16]

; <label>:1                                       ; preds = %2, %0
  %p_new1 = phi i1024 [ %gep25188190_part_set, %0 ], [ %gep17128130_part_set, %2 ] ; [#uses=14 type=i1024]
  %i = phi i5 [ 4, %0 ], [ %i_4, %2 ]             ; [#uses=3 type=i5]
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4), !dbg !672 ; [#uses=1 type=i1] [debug line = 268:16]
  br i1 %tmp_34, label %3, label %2, !dbg !672    ; [debug line = 268:16]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str5) nounwind, !dbg !673 ; [debug line = 269:6]
  %tmp_86 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str5), !dbg !673 ; [#uses=1 type=i32] [debug line = 269:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !674 ; [debug line = 271:1]
  %tmp_37 = trunc i5 %i to i4, !dbg !661          ; [#uses=8 type=i4] [debug line = 275:2]
  %tmp_87 = add i4 -4, %tmp_37, !dbg !661         ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_38 = trunc i1024 %p_new1 to i256, !dbg !661 ; [#uses=3 type=i256] [debug line = 275:2]
  %tmp_88 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_87, i3 0) ; [#uses=3 type=i7]
  %tmp_89 = or i7 %tmp_88, 7                      ; [#uses=2 type=i7]
  %tmp_40 = icmp ugt i7 %tmp_88, %tmp_89          ; [#uses=3 type=i1]
  %tmp_41 = zext i7 %tmp_88 to i9, !dbg !661      ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_43 = zext i7 %tmp_89 to i9, !dbg !661      ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_44 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %p_new1, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_54 = sub i9 %tmp_41, %tmp_43, !dbg !661    ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_55 = xor i9 %tmp_41, 255, !dbg !661        ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_56 = sub i9 %tmp_43, %tmp_41, !dbg !661    ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_58 = select i1 %tmp_40, i9 %tmp_54, i9 %tmp_56, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_59 = select i1 %tmp_40, i256 %tmp_44, i256 %tmp_38 ; [#uses=1 type=i256]
  %tmp_61 = select i1 %tmp_40, i9 %tmp_55, i9 %tmp_41 ; [#uses=1 type=i9]
  %tmp_90 = sub i9 255, %tmp_58                   ; [#uses=1 type=i9]
  %tmp_91 = zext i9 %tmp_61 to i256, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_92 = zext i9 %tmp_90 to i256, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_93 = lshr i256 %tmp_59, %tmp_91, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_94 = lshr i256 -1, %tmp_92, !dbg !661      ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_95 = and i256 %tmp_93, %tmp_94             ; [#uses=1 type=i256]
  %tmp_96 = trunc i256 %tmp_95 to i8, !dbg !661   ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_97 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_37, i3 0) ; [#uses=5 type=i7]
  %tmp_98 = or i7 %tmp_97, 7                      ; [#uses=4 type=i7]
  %tmp_99 = icmp ugt i7 %tmp_97, %tmp_98          ; [#uses=3 type=i1]
  %tmp_100 = zext i7 %tmp_97 to i9, !dbg !661     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_101 = zext i7 %tmp_98 to i9, !dbg !661     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_102 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %p_new1, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_103 = sub i9 %tmp_100, %tmp_101, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_104 = xor i9 %tmp_100, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_105 = sub i9 %tmp_101, %tmp_100, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_106 = select i1 %tmp_99, i9 %tmp_103, i9 %tmp_105, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_107 = select i1 %tmp_99, i256 %tmp_102, i256 %tmp_38 ; [#uses=1 type=i256]
  %tmp_108 = select i1 %tmp_99, i9 %tmp_104, i9 %tmp_100 ; [#uses=1 type=i9]
  %tmp_109 = sub i9 255, %tmp_106                 ; [#uses=1 type=i9]
  %tmp_110 = zext i9 %tmp_108 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_111 = zext i9 %tmp_109 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_115 = lshr i256 %tmp_107, %tmp_110, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_119 = lshr i256 -1, %tmp_111, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_120 = and i256 %tmp_115, %tmp_119          ; [#uses=1 type=i256]
  %tmp_124 = trunc i256 %tmp_120 to i8, !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_36 = xor i8 %tmp_124, %tmp_96, !dbg !661   ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_128 = icmp ugt i7 %tmp_97, %tmp_98         ; [#uses=4 type=i1]
  %tmp_129 = zext i7 %tmp_97 to i9, !dbg !661     ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_133 = zext i7 %tmp_98 to i9, !dbg !661     ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_137 = zext i8 %tmp_36 to i256, !dbg !661   ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_138 = xor i9 %tmp_129, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_139 = select i1 %tmp_128, i9 %tmp_129, i9 %tmp_133 ; [#uses=1 type=i9]
  %tmp_140 = select i1 %tmp_128, i9 %tmp_133, i9 %tmp_129 ; [#uses=1 type=i9]
  %tmp_141 = select i1 %tmp_128, i9 %tmp_138, i9 %tmp_129 ; [#uses=1 type=i9]
  %tmp_142 = xor i9 %tmp_139, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_143 = zext i9 %tmp_141 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_144 = zext i9 %tmp_140 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_145 = zext i9 %tmp_142 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_146 = shl i256 %tmp_137, %tmp_143, !dbg !661 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_147 = call i256 @llvm.part.select.i256(i256 %tmp_146, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_148 = select i1 %tmp_128, i256 %tmp_147, i256 %tmp_146 ; [#uses=1 type=i256]
  %tmp_149 = shl i256 -1, %tmp_144, !dbg !661     ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_150 = lshr i256 -1, %tmp_145, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %p_demorgan = and i256 %tmp_149, %tmp_150, !dbg !661 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_154 = xor i256 %p_demorgan, -1, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_157 = and i256 %tmp_38, %tmp_154, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_158 = and i256 %tmp_148, %p_demorgan, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_162 = or i256 %tmp_157, %tmp_158, !dbg !661 ; [#uses=5 type=i256] [debug line = 275:2]
  %tmp_112 = add i4 -3, %tmp_37, !dbg !661        ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_113 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_112, i3 0) ; [#uses=3 type=i7]
  %tmp_114 = or i7 %tmp_113, 7                    ; [#uses=2 type=i7]
  %tmp_166 = icmp ugt i7 %tmp_113, %tmp_114       ; [#uses=3 type=i1]
  %tmp_167 = zext i7 %tmp_113 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_171 = zext i7 %tmp_114 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_175 = call i256 @llvm.part.select.i256(i256 %tmp_162, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_176 = sub i9 %tmp_167, %tmp_171, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_180 = xor i9 %tmp_167, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_184 = sub i9 %tmp_171, %tmp_167, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_185 = select i1 %tmp_166, i9 %tmp_176, i9 %tmp_184, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_186 = select i1 %tmp_166, i256 %tmp_175, i256 %tmp_162 ; [#uses=1 type=i256]
  %tmp_189 = select i1 %tmp_166, i9 %tmp_180, i9 %tmp_167 ; [#uses=1 type=i9]
  %tmp_190 = sub i9 255, %tmp_185                 ; [#uses=1 type=i9]
  %tmp_191 = zext i9 %tmp_189 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_193 = zext i9 %tmp_190 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_195 = lshr i256 %tmp_186, %tmp_191, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_196 = lshr i256 -1, %tmp_193, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_197 = and i256 %tmp_195, %tmp_196          ; [#uses=1 type=i256]
  %tmp_199 = trunc i256 %tmp_197 to i8, !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_116 = or i4 %tmp_37, 1, !dbg !661          ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_117 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_116, i3 0) ; [#uses=5 type=i7]
  %tmp_118 = or i7 %tmp_117, 7                    ; [#uses=4 type=i7]
  %tmp_201 = icmp ugt i7 %tmp_117, %tmp_118       ; [#uses=3 type=i1]
  %tmp_202 = zext i7 %tmp_117 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_203 = zext i7 %tmp_118 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_205 = call i256 @llvm.part.select.i256(i256 %tmp_162, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_207 = sub i9 %tmp_202, %tmp_203, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_208 = xor i9 %tmp_202, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_209 = sub i9 %tmp_203, %tmp_202, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_210 = select i1 %tmp_201, i9 %tmp_207, i9 %tmp_209, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_211 = select i1 %tmp_201, i256 %tmp_205, i256 %tmp_162 ; [#uses=1 type=i256]
  %tmp_212 = select i1 %tmp_201, i9 %tmp_208, i9 %tmp_202 ; [#uses=1 type=i9]
  %tmp_213 = sub i9 255, %tmp_210                 ; [#uses=1 type=i9]
  %tmp_214 = zext i9 %tmp_212 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_215 = zext i9 %tmp_213 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_216 = lshr i256 %tmp_211, %tmp_214, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_217 = lshr i256 -1, %tmp_215, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_218 = and i256 %tmp_216, %tmp_217          ; [#uses=1 type=i256]
  %tmp_219 = trunc i256 %tmp_218 to i8, !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_39 = xor i8 %tmp_219, %tmp_199, !dbg !661  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_220 = icmp ugt i7 %tmp_117, %tmp_118       ; [#uses=4 type=i1]
  %tmp_221 = zext i7 %tmp_117 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_222 = zext i7 %tmp_118 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_223 = zext i8 %tmp_39 to i256, !dbg !661   ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_224 = xor i9 %tmp_221, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_225 = select i1 %tmp_220, i9 %tmp_221, i9 %tmp_222 ; [#uses=1 type=i9]
  %tmp_226 = select i1 %tmp_220, i9 %tmp_222, i9 %tmp_221 ; [#uses=1 type=i9]
  %tmp_227 = select i1 %tmp_220, i9 %tmp_224, i9 %tmp_221 ; [#uses=1 type=i9]
  %tmp_228 = xor i9 %tmp_225, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_229 = zext i9 %tmp_227 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_230 = zext i9 %tmp_226 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_231 = zext i9 %tmp_228 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_232 = shl i256 %tmp_223, %tmp_229, !dbg !661 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_233 = call i256 @llvm.part.select.i256(i256 %tmp_232, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_234 = select i1 %tmp_220, i256 %tmp_233, i256 %tmp_232 ; [#uses=1 type=i256]
  %tmp_235 = shl i256 -1, %tmp_230, !dbg !661     ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_236 = lshr i256 -1, %tmp_231, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %p_demorgan1 = and i256 %tmp_235, %tmp_236, !dbg !661 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_237 = xor i256 %p_demorgan1, -1, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_238 = and i256 %tmp_162, %tmp_237, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_239 = and i256 %tmp_234, %p_demorgan1, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_240 = or i256 %tmp_238, %tmp_239, !dbg !661 ; [#uses=5 type=i256] [debug line = 275:2]
  %tmp_121 = add i4 -2, %tmp_37, !dbg !661        ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_122 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_121, i3 0) ; [#uses=3 type=i7]
  %tmp_123 = or i7 %tmp_122, 7                    ; [#uses=2 type=i7]
  %tmp_241 = icmp ugt i7 %tmp_122, %tmp_123       ; [#uses=3 type=i1]
  %tmp_242 = zext i7 %tmp_122 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_243 = zext i7 %tmp_123 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_244 = call i256 @llvm.part.select.i256(i256 %tmp_240, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_245 = sub i9 %tmp_242, %tmp_243, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_246 = xor i9 %tmp_242, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_247 = sub i9 %tmp_243, %tmp_242, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_248 = select i1 %tmp_241, i9 %tmp_245, i9 %tmp_247, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_249 = select i1 %tmp_241, i256 %tmp_244, i256 %tmp_240 ; [#uses=1 type=i256]
  %tmp_250 = select i1 %tmp_241, i9 %tmp_246, i9 %tmp_242 ; [#uses=1 type=i9]
  %tmp_251 = sub i9 255, %tmp_248                 ; [#uses=1 type=i9]
  %tmp_252 = zext i9 %tmp_250 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_253 = zext i9 %tmp_251 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_254 = lshr i256 %tmp_249, %tmp_252, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_255 = lshr i256 -1, %tmp_253, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_256 = and i256 %tmp_254, %tmp_255          ; [#uses=1 type=i256]
  %tmp_257 = trunc i256 %tmp_256 to i8, !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_125 = or i4 %tmp_37, 2, !dbg !661          ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_126 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_125, i3 0) ; [#uses=5 type=i7]
  %tmp_127 = or i7 %tmp_126, 7                    ; [#uses=4 type=i7]
  %tmp_258 = icmp ugt i7 %tmp_126, %tmp_127       ; [#uses=3 type=i1]
  %tmp_259 = zext i7 %tmp_126 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_260 = zext i7 %tmp_127 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_261 = call i256 @llvm.part.select.i256(i256 %tmp_240, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_262 = sub i9 %tmp_259, %tmp_260, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_263 = xor i9 %tmp_259, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_264 = sub i9 %tmp_260, %tmp_259, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_265 = select i1 %tmp_258, i9 %tmp_262, i9 %tmp_264, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_266 = select i1 %tmp_258, i256 %tmp_261, i256 %tmp_240 ; [#uses=1 type=i256]
  %tmp_267 = select i1 %tmp_258, i9 %tmp_263, i9 %tmp_259 ; [#uses=1 type=i9]
  %tmp_268 = sub i9 255, %tmp_265                 ; [#uses=1 type=i9]
  %tmp_269 = zext i9 %tmp_267 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_270 = zext i9 %tmp_268 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_271 = lshr i256 %tmp_266, %tmp_269, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_272 = lshr i256 -1, %tmp_270, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_273 = and i256 %tmp_271, %tmp_272          ; [#uses=1 type=i256]
  %tmp_274 = trunc i256 %tmp_273 to i8, !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_42 = xor i8 %tmp_274, %tmp_257, !dbg !661  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_275 = icmp ugt i7 %tmp_126, %tmp_127       ; [#uses=4 type=i1]
  %tmp_276 = zext i7 %tmp_126 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_277 = zext i7 %tmp_127 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_278 = zext i8 %tmp_42 to i256, !dbg !661   ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_279 = xor i9 %tmp_276, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_280 = select i1 %tmp_275, i9 %tmp_276, i9 %tmp_277 ; [#uses=1 type=i9]
  %tmp_281 = select i1 %tmp_275, i9 %tmp_277, i9 %tmp_276 ; [#uses=1 type=i9]
  %tmp_282 = select i1 %tmp_275, i9 %tmp_279, i9 %tmp_276 ; [#uses=1 type=i9]
  %tmp_283 = xor i9 %tmp_280, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_284 = zext i9 %tmp_282 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_285 = zext i9 %tmp_281 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_286 = zext i9 %tmp_283 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_287 = shl i256 %tmp_278, %tmp_284, !dbg !661 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_288 = call i256 @llvm.part.select.i256(i256 %tmp_287, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_289 = select i1 %tmp_275, i256 %tmp_288, i256 %tmp_287 ; [#uses=1 type=i256]
  %tmp_290 = shl i256 -1, %tmp_285, !dbg !661     ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_291 = lshr i256 -1, %tmp_286, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %p_demorgan2 = and i256 %tmp_290, %tmp_291, !dbg !661 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_292 = xor i256 %p_demorgan2, -1, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_293 = and i256 %tmp_240, %tmp_292, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_294 = and i256 %tmp_289, %p_demorgan2, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_295 = or i256 %tmp_293, %tmp_294, !dbg !661 ; [#uses=5 type=i256] [debug line = 275:2]
  %tmp_130 = add i4 -1, %tmp_37, !dbg !661        ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_131 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_130, i3 0) ; [#uses=3 type=i7]
  %tmp_132 = or i7 %tmp_131, 7                    ; [#uses=2 type=i7]
  %tmp_296 = icmp ugt i7 %tmp_131, %tmp_132       ; [#uses=3 type=i1]
  %tmp_297 = zext i7 %tmp_131 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_298 = zext i7 %tmp_132 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_299 = call i256 @llvm.part.select.i256(i256 %tmp_295, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_300 = sub i9 %tmp_297, %tmp_298, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_301 = xor i9 %tmp_297, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_302 = sub i9 %tmp_298, %tmp_297, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_303 = select i1 %tmp_296, i9 %tmp_300, i9 %tmp_302, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_304 = select i1 %tmp_296, i256 %tmp_299, i256 %tmp_295 ; [#uses=1 type=i256]
  %tmp_305 = select i1 %tmp_296, i9 %tmp_301, i9 %tmp_297 ; [#uses=1 type=i9]
  %tmp_306 = sub i9 255, %tmp_303                 ; [#uses=1 type=i9]
  %tmp_307 = zext i9 %tmp_305 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_308 = zext i9 %tmp_306 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_309 = lshr i256 %tmp_304, %tmp_307, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_310 = lshr i256 -1, %tmp_308, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_311 = and i256 %tmp_309, %tmp_310          ; [#uses=1 type=i256]
  %tmp_312 = trunc i256 %tmp_311 to i8, !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_134 = or i4 %tmp_37, 3, !dbg !661          ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp_135 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_134, i3 0) ; [#uses=5 type=i7]
  %tmp_136 = or i7 %tmp_135, 7                    ; [#uses=4 type=i7]
  %tmp_313 = icmp ugt i7 %tmp_135, %tmp_136       ; [#uses=3 type=i1]
  %tmp_314 = zext i7 %tmp_135 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_315 = zext i7 %tmp_136 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_316 = call i256 @llvm.part.select.i256(i256 %tmp_295, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_317 = sub i9 %tmp_314, %tmp_315, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_318 = xor i9 %tmp_314, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_319 = sub i9 %tmp_315, %tmp_314, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_320 = select i1 %tmp_313, i9 %tmp_317, i9 %tmp_319, !dbg !661 ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_321 = select i1 %tmp_313, i256 %tmp_316, i256 %tmp_295 ; [#uses=1 type=i256]
  %tmp_322 = select i1 %tmp_313, i9 %tmp_318, i9 %tmp_314 ; [#uses=1 type=i9]
  %tmp_323 = sub i9 255, %tmp_320                 ; [#uses=1 type=i9]
  %tmp_324 = zext i9 %tmp_322 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_325 = zext i9 %tmp_323 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_326 = lshr i256 %tmp_321, %tmp_324, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_327 = lshr i256 -1, %tmp_325, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_328 = and i256 %tmp_326, %tmp_327          ; [#uses=1 type=i256]
  %tmp_329 = trunc i256 %tmp_328 to i8, !dbg !661 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_45 = xor i8 %tmp_329, %tmp_312, !dbg !661  ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp_330 = icmp ugt i7 %tmp_135, %tmp_136       ; [#uses=4 type=i1]
  %tmp_331 = zext i7 %tmp_135 to i9, !dbg !661    ; [#uses=4 type=i9] [debug line = 275:2]
  %tmp_332 = zext i7 %tmp_136 to i9, !dbg !661    ; [#uses=2 type=i9] [debug line = 275:2]
  %tmp_333 = zext i8 %tmp_45 to i256, !dbg !661   ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_334 = xor i9 %tmp_331, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_335 = select i1 %tmp_330, i9 %tmp_331, i9 %tmp_332 ; [#uses=1 type=i9]
  %tmp_336 = select i1 %tmp_330, i9 %tmp_332, i9 %tmp_331 ; [#uses=1 type=i9]
  %tmp_337 = select i1 %tmp_330, i9 %tmp_334, i9 %tmp_331 ; [#uses=1 type=i9]
  %tmp_338 = xor i9 %tmp_335, 255, !dbg !661      ; [#uses=1 type=i9] [debug line = 275:2]
  %tmp_339 = zext i9 %tmp_337 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_340 = zext i9 %tmp_336 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_341 = zext i9 %tmp_338 to i256, !dbg !661  ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_342 = shl i256 %tmp_333, %tmp_339, !dbg !661 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_343 = call i256 @llvm.part.select.i256(i256 %tmp_342, i32 255, i32 0), !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_344 = select i1 %tmp_330, i256 %tmp_343, i256 %tmp_342 ; [#uses=1 type=i256]
  %tmp_345 = shl i256 -1, %tmp_340, !dbg !661     ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_346 = lshr i256 -1, %tmp_341, !dbg !661    ; [#uses=1 type=i256] [debug line = 275:2]
  %p_demorgan3 = and i256 %tmp_345, %tmp_346, !dbg !661 ; [#uses=2 type=i256] [debug line = 275:2]
  %tmp_347 = xor i256 %p_demorgan3, -1, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_348 = and i256 %tmp_295, %tmp_347, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_349 = and i256 %tmp_344, %p_demorgan3, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %tmp_350 = or i256 %tmp_348, %tmp_349, !dbg !661 ; [#uses=1 type=i256] [debug line = 275:2]
  %gep17128130_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %p_new1, i256 %tmp_350, i32 0, i32 255), !dbg !661 ; [#uses=1 type=i1024] [debug line = 275:2]
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str5, i32 %tmp_86), !dbg !675 ; [#uses=0 type=i32] [debug line = 277:5]
  %i_4 = add i5 4, %i, !dbg !676                  ; [#uses=1 type=i5] [debug line = 268:31]
  call void @llvm.dbg.value(metadata !{i5 %i_4}, i64 0, metadata !677), !dbg !676 ; [debug line = 268:31] [debug variable = i]
  br label %1, !dbg !676                          ; [debug line = 268:31]

; <label>:3                                       ; preds = %1
  %tmp_35 = trunc i1024 %p_new1 to i256, !dbg !664 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp_74 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 96, i32 103), !dbg !664 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_46 = zext i8 %tmp_74 to i32, !dbg !664     ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_46, !dbg !664 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox_load_4 = load i8* %sbox_addr_4, align 1, !dbg !664 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_75 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 128, i32 135), !dbg !664 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_47 = xor i8 %sbox_load_4, %tmp_75, !dbg !664 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp_76 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_35, i8 %tmp_47, i32 128, i32 135), !dbg !664 ; [#uses=1 type=i256] [debug line = 278:5]
  %tmp_77 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 104, i32 111), !dbg !665 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_48 = zext i8 %tmp_77 to i32, !dbg !665     ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_48, !dbg !665 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox_load_5 = load i8* %sbox_addr_5, align 1, !dbg !665 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_78 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 136, i32 143), !dbg !665 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_49 = xor i8 %sbox_load_5, %tmp_78, !dbg !665 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp_79 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_76, i8 %tmp_49, i32 136, i32 143), !dbg !665 ; [#uses=1 type=i256] [debug line = 279:5]
  %tmp_80 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 112, i32 119), !dbg !666 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_50 = zext i8 %tmp_80 to i32, !dbg !666     ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_50, !dbg !666 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox_load_6 = load i8* %sbox_addr_6, align 1, !dbg !666 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_81 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 144, i32 151), !dbg !666 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_51 = xor i8 %sbox_load_6, %tmp_81, !dbg !666 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp_82 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_79, i8 %tmp_51, i32 144, i32 151), !dbg !666 ; [#uses=1 type=i256] [debug line = 280:5]
  %tmp_83 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 120, i32 127), !dbg !667 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_52 = zext i8 %tmp_83 to i32, !dbg !667     ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_52, !dbg !667 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox_load_7 = load i8* %sbox_addr_7, align 1, !dbg !667 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_84 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 152, i32 159), !dbg !667 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_53 = xor i8 %sbox_load_7, %tmp_84, !dbg !667 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp_85 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_82, i8 %tmp_53, i32 152, i32 159), !dbg !667 ; [#uses=1 type=i256] [debug line = 281:5]
  %gep96870_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %p_new1, i256 %tmp_85, i32 0, i32 255), !dbg !667 ; [#uses=2 type=i1024] [debug line = 281:5]
  %k_addr_req5 = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !667 ; [#uses=0 type=i1] [debug line = 281:5]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep96870_part_set, i128 -1), !dbg !667 ; [debug line = 281:5]
  %k_addr_resp6 = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr), !dbg !667 ; [#uses=0 type=i1] [debug line = 281:5]
  br label %4, !dbg !678                          ; [debug line = 283:16]

; <label>:4                                       ; preds = %6, %3
  %gep = phi i1024 [ %gep96870_part_set, %3 ], [ %gep11011_part_set_1, %6 ] ; [#uses=5 type=i1024]
  %i_1 = phi i6 [ 20, %3 ], [ %i_9_1, %6 ]        ; [#uses=4 type=i6]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %tmp_351 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5), !dbg !678 ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp_351, label %7, label %5, !dbg !678   ; [debug line = 283:16]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind, !dbg !679 ; [debug line = 284:6]
  %tmp_352 = trunc i6 %i_1 to i5, !dbg !668       ; [#uses=8 type=i5] [debug line = 290:2]
  %tmp_151 = add i5 -4, %tmp_352, !dbg !668       ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_353 = trunc i1024 %gep to i256, !dbg !668  ; [#uses=3 type=i256] [debug line = 290:2]
  %tmp_152 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_151, i3 0) ; [#uses=3 type=i8]
  %tmp_153 = or i8 %tmp_152, 7                    ; [#uses=2 type=i8]
  %tmp_354 = icmp ugt i8 %tmp_152, %tmp_153       ; [#uses=3 type=i1]
  %tmp_355 = zext i8 %tmp_152 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_356 = zext i8 %tmp_153 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_357 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_358 = sub i9 %tmp_355, %tmp_356, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_359 = xor i9 %tmp_355, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_360 = sub i9 %tmp_356, %tmp_355, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_361 = select i1 %tmp_354, i9 %tmp_358, i9 %tmp_360, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_362 = select i1 %tmp_354, i256 %tmp_357, i256 %tmp_353 ; [#uses=1 type=i256]
  %tmp_363 = select i1 %tmp_354, i9 %tmp_359, i9 %tmp_355 ; [#uses=1 type=i9]
  %tmp_364 = sub i9 255, %tmp_361                 ; [#uses=1 type=i9]
  %tmp_365 = zext i9 %tmp_363 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_366 = zext i9 %tmp_364 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_367 = lshr i256 %tmp_362, %tmp_365, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_368 = lshr i256 -1, %tmp_366, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_369 = and i256 %tmp_367, %tmp_368          ; [#uses=1 type=i256]
  %tmp_370 = trunc i256 %tmp_369 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_155 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_352, i3 0) ; [#uses=7 type=i8]
  %tmp_156 = or i8 %tmp_155, 7                    ; [#uses=6 type=i8]
  %tmp_371 = icmp ugt i8 %tmp_155, %tmp_156       ; [#uses=3 type=i1]
  %tmp_372 = zext i8 %tmp_155 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_373 = zext i8 %tmp_156 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_374 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_375 = sub i9 %tmp_372, %tmp_373, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_376 = xor i9 %tmp_372, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_377 = sub i9 %tmp_373, %tmp_372, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_378 = select i1 %tmp_371, i9 %tmp_375, i9 %tmp_377, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_379 = select i1 %tmp_371, i256 %tmp_374, i256 %tmp_353 ; [#uses=1 type=i256]
  %tmp_380 = select i1 %tmp_371, i9 %tmp_376, i9 %tmp_372 ; [#uses=1 type=i9]
  %tmp_381 = sub i9 255, %tmp_378                 ; [#uses=1 type=i9]
  %tmp_382 = zext i9 %tmp_380 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_383 = zext i9 %tmp_381 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_384 = lshr i256 %tmp_379, %tmp_382, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_385 = lshr i256 -1, %tmp_383, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_386 = and i256 %tmp_384, %tmp_385          ; [#uses=1 type=i256]
  %tmp_387 = trunc i256 %tmp_386 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_57 = xor i8 %tmp_387, %tmp_370, !dbg !668  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_388 = icmp ugt i8 %tmp_155, %tmp_156       ; [#uses=4 type=i1]
  %tmp_389 = zext i8 %tmp_155 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_390 = zext i8 %tmp_156 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_391 = zext i8 %tmp_57 to i256, !dbg !668   ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_392 = xor i9 %tmp_389, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_393 = select i1 %tmp_388, i9 %tmp_389, i9 %tmp_390 ; [#uses=1 type=i9]
  %tmp_394 = select i1 %tmp_388, i9 %tmp_390, i9 %tmp_389 ; [#uses=1 type=i9]
  %tmp_395 = select i1 %tmp_388, i9 %tmp_392, i9 %tmp_389 ; [#uses=1 type=i9]
  %tmp_396 = xor i9 %tmp_393, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_397 = zext i9 %tmp_395 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_398 = zext i9 %tmp_394 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_399 = zext i9 %tmp_396 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_400 = shl i256 %tmp_391, %tmp_397, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_401 = call i256 @llvm.part.select.i256(i256 %tmp_400, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_402 = select i1 %tmp_388, i256 %tmp_401, i256 %tmp_400 ; [#uses=1 type=i256]
  %tmp_403 = shl i256 -1, %tmp_398, !dbg !668     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_404 = lshr i256 -1, %tmp_399, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan4 = and i256 %tmp_403, %tmp_404, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_405 = xor i256 %p_demorgan4, -1, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_406 = and i256 %tmp_353, %tmp_405, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_407 = and i256 %tmp_402, %p_demorgan4, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_408 = or i256 %tmp_406, %tmp_407, !dbg !668 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_159 = add i5 -3, %tmp_352, !dbg !668       ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_160 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_159, i3 0) ; [#uses=3 type=i8]
  %tmp_161 = or i8 %tmp_160, 7                    ; [#uses=2 type=i8]
  %tmp_409 = icmp ugt i8 %tmp_160, %tmp_161       ; [#uses=3 type=i1]
  %tmp_410 = zext i8 %tmp_160 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_411 = zext i8 %tmp_161 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_412 = call i256 @llvm.part.select.i256(i256 %tmp_408, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_413 = sub i9 %tmp_410, %tmp_411, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_414 = xor i9 %tmp_410, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_415 = sub i9 %tmp_411, %tmp_410, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_416 = select i1 %tmp_409, i9 %tmp_413, i9 %tmp_415, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_417 = select i1 %tmp_409, i256 %tmp_412, i256 %tmp_408 ; [#uses=1 type=i256]
  %tmp_418 = select i1 %tmp_409, i9 %tmp_414, i9 %tmp_410 ; [#uses=1 type=i9]
  %tmp_419 = sub i9 255, %tmp_416                 ; [#uses=1 type=i9]
  %tmp_420 = zext i9 %tmp_418 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_421 = zext i9 %tmp_419 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_422 = lshr i256 %tmp_417, %tmp_420, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_423 = lshr i256 -1, %tmp_421, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_424 = and i256 %tmp_422, %tmp_423          ; [#uses=1 type=i256]
  %tmp_425 = trunc i256 %tmp_424 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_163 = or i5 %tmp_352, 1, !dbg !668         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_164 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_163, i3 0) ; [#uses=7 type=i8]
  %tmp_165 = or i8 %tmp_164, 7                    ; [#uses=6 type=i8]
  %tmp_426 = icmp ugt i8 %tmp_164, %tmp_165       ; [#uses=3 type=i1]
  %tmp_427 = zext i8 %tmp_164 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_428 = zext i8 %tmp_165 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_429 = call i256 @llvm.part.select.i256(i256 %tmp_408, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_430 = sub i9 %tmp_427, %tmp_428, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_431 = xor i9 %tmp_427, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_432 = sub i9 %tmp_428, %tmp_427, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_433 = select i1 %tmp_426, i9 %tmp_430, i9 %tmp_432, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_434 = select i1 %tmp_426, i256 %tmp_429, i256 %tmp_408 ; [#uses=1 type=i256]
  %tmp_435 = select i1 %tmp_426, i9 %tmp_431, i9 %tmp_427 ; [#uses=1 type=i9]
  %tmp_436 = sub i9 255, %tmp_433                 ; [#uses=1 type=i9]
  %tmp_437 = zext i9 %tmp_435 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_438 = zext i9 %tmp_436 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_439 = lshr i256 %tmp_434, %tmp_437, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_440 = lshr i256 -1, %tmp_438, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_441 = and i256 %tmp_439, %tmp_440          ; [#uses=1 type=i256]
  %tmp_442 = trunc i256 %tmp_441 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_60 = xor i8 %tmp_442, %tmp_425, !dbg !668  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_443 = icmp ugt i8 %tmp_164, %tmp_165       ; [#uses=4 type=i1]
  %tmp_444 = zext i8 %tmp_164 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_445 = zext i8 %tmp_165 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_446 = zext i8 %tmp_60 to i256, !dbg !668   ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_447 = xor i9 %tmp_444, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_448 = select i1 %tmp_443, i9 %tmp_444, i9 %tmp_445 ; [#uses=1 type=i9]
  %tmp_449 = select i1 %tmp_443, i9 %tmp_445, i9 %tmp_444 ; [#uses=1 type=i9]
  %tmp_450 = select i1 %tmp_443, i9 %tmp_447, i9 %tmp_444 ; [#uses=1 type=i9]
  %tmp_451 = xor i9 %tmp_448, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_452 = zext i9 %tmp_450 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_453 = zext i9 %tmp_449 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_454 = zext i9 %tmp_451 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_455 = shl i256 %tmp_446, %tmp_452, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_456 = call i256 @llvm.part.select.i256(i256 %tmp_455, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_457 = select i1 %tmp_443, i256 %tmp_456, i256 %tmp_455 ; [#uses=1 type=i256]
  %tmp_458 = shl i256 -1, %tmp_453, !dbg !668     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_459 = lshr i256 -1, %tmp_454, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan5 = and i256 %tmp_458, %tmp_459, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_460 = xor i256 %p_demorgan5, -1, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_461 = and i256 %tmp_408, %tmp_460, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_462 = and i256 %tmp_457, %p_demorgan5, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_463 = or i256 %tmp_461, %tmp_462, !dbg !668 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_168 = add i5 -2, %tmp_352, !dbg !668       ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_169 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_168, i3 0) ; [#uses=3 type=i8]
  %tmp_170 = or i8 %tmp_169, 7                    ; [#uses=2 type=i8]
  %tmp_464 = icmp ugt i8 %tmp_169, %tmp_170       ; [#uses=3 type=i1]
  %tmp_465 = zext i8 %tmp_169 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_466 = zext i8 %tmp_170 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_467 = call i256 @llvm.part.select.i256(i256 %tmp_463, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_468 = sub i9 %tmp_465, %tmp_466, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_469 = xor i9 %tmp_465, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_470 = sub i9 %tmp_466, %tmp_465, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_471 = select i1 %tmp_464, i9 %tmp_468, i9 %tmp_470, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_472 = select i1 %tmp_464, i256 %tmp_467, i256 %tmp_463 ; [#uses=1 type=i256]
  %tmp_473 = select i1 %tmp_464, i9 %tmp_469, i9 %tmp_465 ; [#uses=1 type=i9]
  %tmp_474 = sub i9 255, %tmp_471                 ; [#uses=1 type=i9]
  %tmp_475 = zext i9 %tmp_473 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_476 = zext i9 %tmp_474 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_477 = lshr i256 %tmp_472, %tmp_475, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_478 = lshr i256 -1, %tmp_476, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_479 = and i256 %tmp_477, %tmp_478          ; [#uses=1 type=i256]
  %tmp_480 = trunc i256 %tmp_479 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_172 = or i5 %tmp_352, 2, !dbg !668         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_173 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_172, i3 0) ; [#uses=7 type=i8]
  %tmp_174 = or i8 %tmp_173, 7                    ; [#uses=6 type=i8]
  %tmp_481 = icmp ugt i8 %tmp_173, %tmp_174       ; [#uses=3 type=i1]
  %tmp_482 = zext i8 %tmp_173 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_483 = zext i8 %tmp_174 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_484 = call i256 @llvm.part.select.i256(i256 %tmp_463, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_485 = sub i9 %tmp_482, %tmp_483, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_486 = xor i9 %tmp_482, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_487 = sub i9 %tmp_483, %tmp_482, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_488 = select i1 %tmp_481, i9 %tmp_485, i9 %tmp_487, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_489 = select i1 %tmp_481, i256 %tmp_484, i256 %tmp_463 ; [#uses=1 type=i256]
  %tmp_490 = select i1 %tmp_481, i9 %tmp_486, i9 %tmp_482 ; [#uses=1 type=i9]
  %tmp_491 = sub i9 255, %tmp_488                 ; [#uses=1 type=i9]
  %tmp_492 = zext i9 %tmp_490 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_493 = zext i9 %tmp_491 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_494 = lshr i256 %tmp_489, %tmp_492, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_495 = lshr i256 -1, %tmp_493, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_496 = and i256 %tmp_494, %tmp_495          ; [#uses=1 type=i256]
  %tmp_497 = trunc i256 %tmp_496 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_63 = xor i8 %tmp_497, %tmp_480, !dbg !668  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_498 = icmp ugt i8 %tmp_173, %tmp_174       ; [#uses=4 type=i1]
  %tmp_499 = zext i8 %tmp_173 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_500 = zext i8 %tmp_174 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_501 = zext i8 %tmp_63 to i256, !dbg !668   ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_502 = xor i9 %tmp_499, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_503 = select i1 %tmp_498, i9 %tmp_499, i9 %tmp_500 ; [#uses=1 type=i9]
  %tmp_504 = select i1 %tmp_498, i9 %tmp_500, i9 %tmp_499 ; [#uses=1 type=i9]
  %tmp_505 = select i1 %tmp_498, i9 %tmp_502, i9 %tmp_499 ; [#uses=1 type=i9]
  %tmp_506 = xor i9 %tmp_503, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_507 = zext i9 %tmp_505 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_508 = zext i9 %tmp_504 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_509 = zext i9 %tmp_506 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_510 = shl i256 %tmp_501, %tmp_507, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_511 = call i256 @llvm.part.select.i256(i256 %tmp_510, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_512 = select i1 %tmp_498, i256 %tmp_511, i256 %tmp_510 ; [#uses=1 type=i256]
  %tmp_513 = shl i256 -1, %tmp_508, !dbg !668     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_514 = lshr i256 -1, %tmp_509, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan6 = and i256 %tmp_513, %tmp_514, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_515 = xor i256 %p_demorgan6, -1, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_516 = and i256 %tmp_463, %tmp_515, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_517 = and i256 %tmp_512, %p_demorgan6, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_518 = or i256 %tmp_516, %tmp_517, !dbg !668 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_177 = add i5 -1, %tmp_352, !dbg !668       ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_178 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_177, i3 0) ; [#uses=3 type=i8]
  %tmp_179 = or i8 %tmp_178, 7                    ; [#uses=2 type=i8]
  %tmp_519 = icmp ugt i8 %tmp_178, %tmp_179       ; [#uses=3 type=i1]
  %tmp_520 = zext i8 %tmp_178 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_521 = zext i8 %tmp_179 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_522 = call i256 @llvm.part.select.i256(i256 %tmp_518, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_523 = sub i9 %tmp_520, %tmp_521, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_524 = xor i9 %tmp_520, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_525 = sub i9 %tmp_521, %tmp_520, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_526 = select i1 %tmp_519, i9 %tmp_523, i9 %tmp_525, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_527 = select i1 %tmp_519, i256 %tmp_522, i256 %tmp_518 ; [#uses=1 type=i256]
  %tmp_528 = select i1 %tmp_519, i9 %tmp_524, i9 %tmp_520 ; [#uses=1 type=i9]
  %tmp_529 = sub i9 255, %tmp_526                 ; [#uses=1 type=i9]
  %tmp_530 = zext i9 %tmp_528 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_531 = zext i9 %tmp_529 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_532 = lshr i256 %tmp_527, %tmp_530, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_533 = lshr i256 -1, %tmp_531, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_534 = and i256 %tmp_532, %tmp_533          ; [#uses=1 type=i256]
  %tmp_535 = trunc i256 %tmp_534 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_181 = or i5 %tmp_352, 3, !dbg !668         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_182 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_181, i3 0) ; [#uses=7 type=i8]
  %tmp_183 = or i8 %tmp_182, 7                    ; [#uses=6 type=i8]
  %tmp_536 = icmp ugt i8 %tmp_182, %tmp_183       ; [#uses=3 type=i1]
  %tmp_537 = zext i8 %tmp_182 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_538 = zext i8 %tmp_183 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_539 = call i256 @llvm.part.select.i256(i256 %tmp_518, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_540 = sub i9 %tmp_537, %tmp_538, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_541 = xor i9 %tmp_537, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_542 = sub i9 %tmp_538, %tmp_537, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_543 = select i1 %tmp_536, i9 %tmp_540, i9 %tmp_542, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_544 = select i1 %tmp_536, i256 %tmp_539, i256 %tmp_518 ; [#uses=1 type=i256]
  %tmp_545 = select i1 %tmp_536, i9 %tmp_541, i9 %tmp_537 ; [#uses=1 type=i9]
  %tmp_546 = sub i9 255, %tmp_543                 ; [#uses=1 type=i9]
  %tmp_547 = zext i9 %tmp_545 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_548 = zext i9 %tmp_546 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_549 = lshr i256 %tmp_544, %tmp_547, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_550 = lshr i256 -1, %tmp_548, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_551 = and i256 %tmp_549, %tmp_550          ; [#uses=1 type=i256]
  %tmp_552 = trunc i256 %tmp_551 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_66 = xor i8 %tmp_552, %tmp_535, !dbg !668  ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_553 = icmp ugt i8 %tmp_182, %tmp_183       ; [#uses=4 type=i1]
  %tmp_554 = zext i8 %tmp_182 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_555 = zext i8 %tmp_183 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_556 = zext i8 %tmp_66 to i256, !dbg !668   ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_557 = xor i9 %tmp_554, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_558 = select i1 %tmp_553, i9 %tmp_554, i9 %tmp_555 ; [#uses=1 type=i9]
  %tmp_559 = select i1 %tmp_553, i9 %tmp_555, i9 %tmp_554 ; [#uses=1 type=i9]
  %tmp_560 = select i1 %tmp_553, i9 %tmp_557, i9 %tmp_554 ; [#uses=1 type=i9]
  %tmp_561 = xor i9 %tmp_558, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_562 = zext i9 %tmp_560 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_563 = zext i9 %tmp_559 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_564 = zext i9 %tmp_561 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_565 = shl i256 %tmp_556, %tmp_562, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_566 = call i256 @llvm.part.select.i256(i256 %tmp_565, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_567 = select i1 %tmp_553, i256 %tmp_566, i256 %tmp_565 ; [#uses=1 type=i256]
  %tmp_568 = shl i256 -1, %tmp_563, !dbg !668     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_569 = lshr i256 -1, %tmp_564, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan7 = and i256 %tmp_568, %tmp_569, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_570 = xor i256 %p_demorgan7, -1, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_571 = and i256 %tmp_518, %tmp_570, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_572 = and i256 %tmp_567, %p_demorgan7, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_573 = or i256 %tmp_571, %tmp_572, !dbg !668 ; [#uses=6 type=i256] [debug line = 290:2]
  %gep11011_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp_573, i32 0, i32 255), !dbg !668 ; [#uses=1 type=i1024] [debug line = 290:2]
  %k_addr_req3 = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !668 ; [#uses=0 type=i1] [debug line = 290:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set, i128 -1), !dbg !668 ; [debug line = 290:2]
  %k_addr_resp4 = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr), !dbg !668 ; [#uses=0 type=i1] [debug line = 290:2]
  %i_9 = add i6 4, %i_1, !dbg !680                ; [#uses=3 type=i6] [debug line = 283:32]
  %tmp_574 = trunc i6 %i_9 to i5, !dbg !678       ; [#uses=3 type=i5] [debug line = 283:16]
  %tmp_575 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_9, i32 5), !dbg !678 ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp_575, label %7, label %6, !dbg !678   ; [debug line = 283:16]

; <label>:6                                       ; preds = %5
  %tmp_576 = icmp ugt i8 %tmp_155, %tmp_156       ; [#uses=3 type=i1]
  %tmp_577 = zext i8 %tmp_155 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_578 = zext i8 %tmp_156 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_579 = call i256 @llvm.part.select.i256(i256 %tmp_573, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_580 = sub i9 %tmp_577, %tmp_578, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_581 = xor i9 %tmp_577, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_582 = sub i9 %tmp_578, %tmp_577, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_583 = select i1 %tmp_576, i9 %tmp_580, i9 %tmp_582, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_584 = select i1 %tmp_576, i256 %tmp_579, i256 %tmp_573 ; [#uses=1 type=i256]
  %tmp_585 = select i1 %tmp_576, i9 %tmp_581, i9 %tmp_577 ; [#uses=1 type=i9]
  %tmp_586 = sub i9 255, %tmp_583                 ; [#uses=1 type=i9]
  %tmp_587 = zext i9 %tmp_585 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_588 = zext i9 %tmp_586 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_589 = lshr i256 %tmp_584, %tmp_587, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_590 = lshr i256 -1, %tmp_588, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_591 = and i256 %tmp_589, %tmp_590          ; [#uses=1 type=i256]
  %tmp_592 = trunc i256 %tmp_591 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_187 = call i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6 %i_9, i3 0) ; [#uses=11 type=i9]
  %tmp_188 = or i9 %tmp_187, 7                    ; [#uses=6 type=i9]
  %tmp_593 = icmp ugt i9 %tmp_187, %tmp_188       ; [#uses=3 type=i1]
  %tmp_594 = call i256 @llvm.part.select.i256(i256 %tmp_573, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_595 = sub i9 %tmp_187, %tmp_188, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_596 = sub i9 255, %tmp_187, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_597 = sub i9 %tmp_188, %tmp_187, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_598 = select i1 %tmp_593, i9 %tmp_595, i9 %tmp_597, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_599 = select i1 %tmp_593, i256 %tmp_594, i256 %tmp_573 ; [#uses=1 type=i256]
  %tmp_600 = select i1 %tmp_593, i9 %tmp_596, i9 %tmp_187 ; [#uses=1 type=i9]
  %tmp_601 = sub i9 255, %tmp_598                 ; [#uses=1 type=i9]
  %tmp_602 = zext i9 %tmp_600 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_603 = zext i9 %tmp_601 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_604 = lshr i256 %tmp_599, %tmp_602, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_605 = lshr i256 -1, %tmp_603, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_606 = and i256 %tmp_604, %tmp_605          ; [#uses=1 type=i256]
  %tmp_607 = trunc i256 %tmp_606 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_57_1 = xor i8 %tmp_607, %tmp_592, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_608 = icmp ugt i9 %tmp_187, %tmp_188       ; [#uses=4 type=i1]
  %tmp_609 = zext i8 %tmp_57_1 to i256, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_610 = sub i9 255, %tmp_187, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_611 = select i1 %tmp_608, i9 %tmp_187, i9 %tmp_188 ; [#uses=1 type=i9]
  %tmp_612 = select i1 %tmp_608, i9 %tmp_188, i9 %tmp_187 ; [#uses=1 type=i9]
  %tmp_613 = select i1 %tmp_608, i9 %tmp_610, i9 %tmp_187 ; [#uses=1 type=i9]
  %tmp_614 = sub i9 255, %tmp_611, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_615 = zext i9 %tmp_613 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_616 = zext i9 %tmp_612 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_617 = zext i9 %tmp_614 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_618 = shl i256 %tmp_609, %tmp_615, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_619 = call i256 @llvm.part.select.i256(i256 %tmp_618, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_620 = select i1 %tmp_608, i256 %tmp_619, i256 %tmp_618 ; [#uses=1 type=i256]
  %tmp_621 = shl i256 -1, %tmp_616, !dbg !668     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_622 = lshr i256 -1, %tmp_617, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan8 = and i256 %tmp_621, %tmp_622, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_623 = xor i256 %p_demorgan8, -1, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_624 = and i256 %tmp_573, %tmp_623, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_625 = and i256 %tmp_620, %p_demorgan8, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_626 = or i256 %tmp_624, %tmp_625, !dbg !668 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_627 = icmp ugt i8 %tmp_164, %tmp_165       ; [#uses=3 type=i1]
  %tmp_628 = zext i8 %tmp_164 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_629 = zext i8 %tmp_165 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_630 = call i256 @llvm.part.select.i256(i256 %tmp_626, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_631 = sub i9 %tmp_628, %tmp_629, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_632 = xor i9 %tmp_628, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_633 = sub i9 %tmp_629, %tmp_628, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_634 = select i1 %tmp_627, i9 %tmp_631, i9 %tmp_633, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_635 = select i1 %tmp_627, i256 %tmp_630, i256 %tmp_626 ; [#uses=1 type=i256]
  %tmp_636 = select i1 %tmp_627, i9 %tmp_632, i9 %tmp_628 ; [#uses=1 type=i9]
  %tmp_637 = sub i9 255, %tmp_634                 ; [#uses=1 type=i9]
  %tmp_638 = zext i9 %tmp_636 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_639 = zext i9 %tmp_637 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_640 = lshr i256 %tmp_635, %tmp_638, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_641 = lshr i256 -1, %tmp_639, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_642 = and i256 %tmp_640, %tmp_641          ; [#uses=1 type=i256]
  %tmp_643 = trunc i256 %tmp_642 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_192 = or i5 %tmp_574, 1, !dbg !668         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_644 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_192, i3 0) ; [#uses=4 type=i8]
  %tmp_216_cast = zext i8 %tmp_644 to i10         ; [#uses=2 type=i10]
  %tmp_645 = or i8 %tmp_644, 7                    ; [#uses=1 type=i8]
  %tmp_194 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_645) ; [#uses=5 type=i9]
  %tmp_217_cast = zext i9 %tmp_194 to i10         ; [#uses=2 type=i10]
  %tmp_646 = icmp ugt i10 %tmp_216_cast, %tmp_217_cast ; [#uses=3 type=i1]
  %tmp_647 = zext i8 %tmp_644 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_648 = call i256 @llvm.part.select.i256(i256 %tmp_626, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_649 = sub i9 %tmp_647, %tmp_194, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_650 = xor i9 %tmp_647, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_651 = sub i9 %tmp_194, %tmp_647, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_652 = select i1 %tmp_646, i9 %tmp_649, i9 %tmp_651, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_653 = select i1 %tmp_646, i256 %tmp_648, i256 %tmp_626 ; [#uses=1 type=i256]
  %tmp_654 = select i1 %tmp_646, i9 %tmp_650, i9 %tmp_647 ; [#uses=1 type=i9]
  %tmp_655 = sub i9 255, %tmp_652                 ; [#uses=1 type=i9]
  %tmp_656 = zext i9 %tmp_654 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_657 = zext i9 %tmp_655 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_658 = lshr i256 %tmp_653, %tmp_656, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_659 = lshr i256 -1, %tmp_657, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_660 = and i256 %tmp_658, %tmp_659          ; [#uses=1 type=i256]
  %tmp_661 = trunc i256 %tmp_660 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_60_1 = xor i8 %tmp_661, %tmp_643, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_662 = icmp ugt i10 %tmp_216_cast, %tmp_217_cast ; [#uses=4 type=i1]
  %tmp_663 = zext i8 %tmp_644 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_664 = zext i8 %tmp_60_1 to i256, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_665 = xor i9 %tmp_663, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_666 = select i1 %tmp_662, i9 %tmp_663, i9 %tmp_194 ; [#uses=1 type=i9]
  %tmp_667 = select i1 %tmp_662, i9 %tmp_194, i9 %tmp_663 ; [#uses=1 type=i9]
  %tmp_668 = select i1 %tmp_662, i9 %tmp_665, i9 %tmp_663 ; [#uses=1 type=i9]
  %tmp_669 = sub i9 255, %tmp_666, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_670 = zext i9 %tmp_668 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_671 = zext i9 %tmp_667 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_672 = zext i9 %tmp_669 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_673 = shl i256 %tmp_664, %tmp_670, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_674 = call i256 @llvm.part.select.i256(i256 %tmp_673, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_675 = select i1 %tmp_662, i256 %tmp_674, i256 %tmp_673 ; [#uses=1 type=i256]
  %tmp_676 = shl i256 -1, %tmp_671, !dbg !668     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_677 = lshr i256 -1, %tmp_672, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan9 = and i256 %tmp_676, %tmp_677, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_678 = xor i256 %p_demorgan9, -1, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_679 = and i256 %tmp_626, %tmp_678, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_680 = and i256 %tmp_675, %p_demorgan9, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_681 = or i256 %tmp_679, %tmp_680, !dbg !668 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_682 = icmp ugt i8 %tmp_173, %tmp_174       ; [#uses=3 type=i1]
  %tmp_683 = zext i8 %tmp_173 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_684 = zext i8 %tmp_174 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_685 = call i256 @llvm.part.select.i256(i256 %tmp_681, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_686 = sub i9 %tmp_683, %tmp_684, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_687 = xor i9 %tmp_683, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_688 = sub i9 %tmp_684, %tmp_683, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_689 = select i1 %tmp_682, i9 %tmp_686, i9 %tmp_688, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_690 = select i1 %tmp_682, i256 %tmp_685, i256 %tmp_681 ; [#uses=1 type=i256]
  %tmp_691 = select i1 %tmp_682, i9 %tmp_687, i9 %tmp_683 ; [#uses=1 type=i9]
  %tmp_692 = sub i9 255, %tmp_689                 ; [#uses=1 type=i9]
  %tmp_693 = zext i9 %tmp_691 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_694 = zext i9 %tmp_692 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_695 = lshr i256 %tmp_690, %tmp_693, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_696 = lshr i256 -1, %tmp_694, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_697 = and i256 %tmp_695, %tmp_696          ; [#uses=1 type=i256]
  %tmp_698 = trunc i256 %tmp_697 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_198 = or i5 %tmp_574, 2, !dbg !668         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_699 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_198, i3 0) ; [#uses=4 type=i8]
  %tmp_223_cast = zext i8 %tmp_699 to i10         ; [#uses=2 type=i10]
  %tmp_700 = or i8 %tmp_699, 7                    ; [#uses=1 type=i8]
  %tmp_200 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_700) ; [#uses=5 type=i9]
  %tmp_224_cast = zext i9 %tmp_200 to i10         ; [#uses=2 type=i10]
  %tmp_701 = icmp ugt i10 %tmp_223_cast, %tmp_224_cast ; [#uses=3 type=i1]
  %tmp_702 = zext i8 %tmp_699 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_703 = call i256 @llvm.part.select.i256(i256 %tmp_681, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_704 = sub i9 %tmp_702, %tmp_200, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_705 = xor i9 %tmp_702, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_706 = sub i9 %tmp_200, %tmp_702, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_707 = select i1 %tmp_701, i9 %tmp_704, i9 %tmp_706, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_708 = select i1 %tmp_701, i256 %tmp_703, i256 %tmp_681 ; [#uses=1 type=i256]
  %tmp_709 = select i1 %tmp_701, i9 %tmp_705, i9 %tmp_702 ; [#uses=1 type=i9]
  %tmp_710 = sub i9 255, %tmp_707                 ; [#uses=1 type=i9]
  %tmp_711 = zext i9 %tmp_709 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_712 = zext i9 %tmp_710 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_713 = lshr i256 %tmp_708, %tmp_711, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_714 = lshr i256 -1, %tmp_712, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_715 = and i256 %tmp_713, %tmp_714          ; [#uses=1 type=i256]
  %tmp_716 = trunc i256 %tmp_715 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_63_1 = xor i8 %tmp_716, %tmp_698, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_717 = icmp ugt i10 %tmp_223_cast, %tmp_224_cast ; [#uses=4 type=i1]
  %tmp_718 = zext i8 %tmp_699 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_719 = zext i8 %tmp_63_1 to i256, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_720 = xor i9 %tmp_718, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_721 = select i1 %tmp_717, i9 %tmp_718, i9 %tmp_200 ; [#uses=1 type=i9]
  %tmp_722 = select i1 %tmp_717, i9 %tmp_200, i9 %tmp_718 ; [#uses=1 type=i9]
  %tmp_723 = select i1 %tmp_717, i9 %tmp_720, i9 %tmp_718 ; [#uses=1 type=i9]
  %tmp_724 = sub i9 255, %tmp_721, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_725 = zext i9 %tmp_723 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_726 = zext i9 %tmp_722 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_727 = zext i9 %tmp_724 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_728 = shl i256 %tmp_719, %tmp_725, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_729 = call i256 @llvm.part.select.i256(i256 %tmp_728, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_730 = select i1 %tmp_717, i256 %tmp_729, i256 %tmp_728 ; [#uses=1 type=i256]
  %tmp_731 = shl i256 -1, %tmp_726, !dbg !668     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_732 = lshr i256 -1, %tmp_727, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan10 = and i256 %tmp_731, %tmp_732, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_733 = xor i256 %p_demorgan10, -1, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_734 = and i256 %tmp_681, %tmp_733, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_735 = and i256 %tmp_730, %p_demorgan10, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_736 = or i256 %tmp_734, %tmp_735, !dbg !668 ; [#uses=5 type=i256] [debug line = 290:2]
  %tmp_737 = icmp ugt i8 %tmp_182, %tmp_183       ; [#uses=3 type=i1]
  %tmp_738 = zext i8 %tmp_182 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_739 = zext i8 %tmp_183 to i9, !dbg !668    ; [#uses=2 type=i9] [debug line = 290:2]
  %tmp_740 = call i256 @llvm.part.select.i256(i256 %tmp_736, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_741 = sub i9 %tmp_738, %tmp_739, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_742 = xor i9 %tmp_738, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_743 = sub i9 %tmp_739, %tmp_738, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_744 = select i1 %tmp_737, i9 %tmp_741, i9 %tmp_743, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_745 = select i1 %tmp_737, i256 %tmp_740, i256 %tmp_736 ; [#uses=1 type=i256]
  %tmp_746 = select i1 %tmp_737, i9 %tmp_742, i9 %tmp_738 ; [#uses=1 type=i9]
  %tmp_747 = sub i9 255, %tmp_744                 ; [#uses=1 type=i9]
  %tmp_748 = zext i9 %tmp_746 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_749 = zext i9 %tmp_747 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_750 = lshr i256 %tmp_745, %tmp_748, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_751 = lshr i256 -1, %tmp_749, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_752 = and i256 %tmp_750, %tmp_751          ; [#uses=1 type=i256]
  %tmp_753 = trunc i256 %tmp_752 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_204 = or i5 %tmp_574, 3, !dbg !668         ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp_754 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_204, i3 0) ; [#uses=4 type=i8]
  %tmp_230_cast = zext i8 %tmp_754 to i10         ; [#uses=2 type=i10]
  %tmp_755 = or i8 %tmp_754, 7                    ; [#uses=1 type=i8]
  %tmp_206 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_755) ; [#uses=5 type=i9]
  %tmp_231_cast = zext i9 %tmp_206 to i10         ; [#uses=2 type=i10]
  %tmp_756 = icmp ugt i10 %tmp_230_cast, %tmp_231_cast ; [#uses=3 type=i1]
  %tmp_757 = zext i8 %tmp_754 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_758 = call i256 @llvm.part.select.i256(i256 %tmp_736, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_759 = sub i9 %tmp_757, %tmp_206, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_760 = xor i9 %tmp_757, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_761 = sub i9 %tmp_206, %tmp_757, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_762 = select i1 %tmp_756, i9 %tmp_759, i9 %tmp_761, !dbg !668 ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_763 = select i1 %tmp_756, i256 %tmp_758, i256 %tmp_736 ; [#uses=1 type=i256]
  %tmp_764 = select i1 %tmp_756, i9 %tmp_760, i9 %tmp_757 ; [#uses=1 type=i9]
  %tmp_765 = sub i9 255, %tmp_762                 ; [#uses=1 type=i9]
  %tmp_766 = zext i9 %tmp_764 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_767 = zext i9 %tmp_765 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_768 = lshr i256 %tmp_763, %tmp_766, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_769 = lshr i256 -1, %tmp_767, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_770 = and i256 %tmp_768, %tmp_769          ; [#uses=1 type=i256]
  %tmp_771 = trunc i256 %tmp_770 to i8, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_66_1 = xor i8 %tmp_771, %tmp_753, !dbg !668 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp_772 = icmp ugt i10 %tmp_230_cast, %tmp_231_cast ; [#uses=4 type=i1]
  %tmp_773 = zext i8 %tmp_754 to i9, !dbg !668    ; [#uses=4 type=i9] [debug line = 290:2]
  %tmp_774 = zext i8 %tmp_66_1 to i256, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_775 = xor i9 %tmp_773, 255, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_776 = select i1 %tmp_772, i9 %tmp_773, i9 %tmp_206 ; [#uses=1 type=i9]
  %tmp_777 = select i1 %tmp_772, i9 %tmp_206, i9 %tmp_773 ; [#uses=1 type=i9]
  %tmp_778 = select i1 %tmp_772, i9 %tmp_775, i9 %tmp_773 ; [#uses=1 type=i9]
  %tmp_779 = sub i9 255, %tmp_776, !dbg !668      ; [#uses=1 type=i9] [debug line = 290:2]
  %tmp_780 = zext i9 %tmp_778 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_781 = zext i9 %tmp_777 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_782 = zext i9 %tmp_779 to i256, !dbg !668  ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_783 = shl i256 %tmp_774, %tmp_780, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_784 = call i256 @llvm.part.select.i256(i256 %tmp_783, i32 255, i32 0), !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_785 = select i1 %tmp_772, i256 %tmp_784, i256 %tmp_783 ; [#uses=1 type=i256]
  %tmp_786 = shl i256 -1, %tmp_781, !dbg !668     ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_787 = lshr i256 -1, %tmp_782, !dbg !668    ; [#uses=1 type=i256] [debug line = 290:2]
  %p_demorgan11 = and i256 %tmp_786, %tmp_787, !dbg !668 ; [#uses=2 type=i256] [debug line = 290:2]
  %tmp_788 = xor i256 %p_demorgan11, -1, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_789 = and i256 %tmp_736, %tmp_788, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_790 = and i256 %tmp_785, %p_demorgan11, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %tmp_791 = or i256 %tmp_789, %tmp_790, !dbg !668 ; [#uses=1 type=i256] [debug line = 290:2]
  %gep11011_part_set_1 = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp_791, i32 0, i32 255), !dbg !668 ; [#uses=2 type=i1024] [debug line = 290:2]
  %k_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1), !dbg !668 ; [#uses=0 type=i1] [debug line = 290:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set_1, i128 -1), !dbg !668 ; [debug line = 290:2]
  %k_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr), !dbg !668 ; [#uses=0 type=i1] [debug line = 290:2]
  %i_9_1 = add i6 8, %i_1, !dbg !680              ; [#uses=1 type=i6] [debug line = 283:32]
  br label %4, !dbg !680                          ; [debug line = 283:32]

; <label>:7                                       ; preds = %5, %4
  ret i8 %tmp_32, !dbg !671                       ; [debug line = 294:1]
}

; [#uses=1]
define internal fastcc void @aes_addRoundKey_cpy(i8* %buf, i32 %buf_offset, i1024* %ctx, i25 %ctx_offset) {
  %ctx_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %ctx_offset) ; [#uses=1 type=i25]
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=1 type=i32]
  %ctx_offset_cast = zext i25 %ctx_offset_read to i32 ; [#uses=1 type=i32]
  %ctx_addr = getelementptr i1024* %ctx, i32 %ctx_offset_cast ; [#uses=5 type=i1024*]
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !681), !dbg !685 ; [debug line = 210:35] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i1024* %ctx}, i64 0, metadata !686), !dbg !689 ; [debug line = 210:49] [debug variable = ctx]
  br label %1, !dbg !690                          ; [debug line = 214:13]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_5, %2 ]           ; [#uses=4 type=i5]
  %tmp = icmp eq i5 %i, 0, !dbg !690              ; [#uses=1 type=i1] [debug line = 214:13]
  br i1 %tmp, label %3, label %2, !dbg !690       ; [debug line = 214:13]

; <label>:2                                       ; preds = %1
  %i_5 = add i5 -1, %i, !dbg !690                 ; [#uses=2 type=i5] [debug line = 214:13]
  %i_5_cast = sext i5 %i_5 to i8, !dbg !690       ; [#uses=1 type=i8] [debug line = 214:13]
  call void @llvm.dbg.value(metadata !{i5 %i_5}, i64 0, metadata !692), !dbg !690 ; [debug line = 214:13] [debug variable = i]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str3) nounwind, !dbg !693 ; [debug line = 215:6]
  %tmp_207 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str3), !dbg !693 ; [#uses=1 type=i32] [debug line = 215:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !695 ; [debug line = 217:1]
  %tmp_s = zext i8 %i_5_cast to i32, !dbg !696    ; [#uses=1 type=i32] [debug line = 221:2]
  %tmp_792 = trunc i5 %i to i4                    ; [#uses=1 type=i4]
  %ctx_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %ctx_addr, i32 1), !dbg !696 ; [#uses=0 type=i1] [debug line = 221:2]
  %ctx_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %ctx_addr), !dbg !696 ; [#uses=4 type=i1024] [debug line = 221:2]
  %p_new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 256, i32 511), !dbg !696 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_208 = add i4 -1, %tmp_792                  ; [#uses=1 type=i4]
  %tmp_209 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_208, i3 0) ; [#uses=5 type=i7]
  %tmp_210 = or i7 %tmp_209, 7                    ; [#uses=4 type=i7]
  %tmp_793 = icmp ugt i7 %tmp_209, %tmp_210       ; [#uses=3 type=i1]
  %tmp_794 = zext i7 %tmp_209 to i9, !dbg !696    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_795 = zext i7 %tmp_210 to i9, !dbg !696    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_796 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_797 = sub i9 %tmp_794, %tmp_795, !dbg !696 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_798 = xor i9 %tmp_794, 255, !dbg !696      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_799 = sub i9 %tmp_795, %tmp_794, !dbg !696 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_800 = select i1 %tmp_793, i9 %tmp_797, i9 %tmp_799, !dbg !696 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_801 = select i1 %tmp_793, i256 %tmp_796, i256 %p_new ; [#uses=1 type=i256]
  %tmp_802 = select i1 %tmp_793, i9 %tmp_798, i9 %tmp_794 ; [#uses=1 type=i9]
  %tmp_803 = sub i9 255, %tmp_800                 ; [#uses=1 type=i9]
  %tmp_804 = zext i9 %tmp_802 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_805 = zext i9 %tmp_803 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_806 = lshr i256 %tmp_801, %tmp_804, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_807 = lshr i256 -1, %tmp_805, !dbg !696    ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_808 = and i256 %tmp_806, %tmp_807          ; [#uses=1 type=i256]
  %tmp_809 = trunc i256 %tmp_808 to i8, !dbg !696 ; [#uses=2 type=i8] [debug line = 221:2]
  %tmp_810 = trunc i1024 %ctx_addr_read to i256, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_811 = icmp ugt i7 %tmp_209, %tmp_210       ; [#uses=4 type=i1]
  %tmp_812 = zext i7 %tmp_209 to i9, !dbg !696    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_813 = zext i7 %tmp_210 to i9, !dbg !696    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_814 = zext i8 %tmp_809 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_815 = xor i9 %tmp_812, 255, !dbg !696      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_816 = select i1 %tmp_811, i9 %tmp_812, i9 %tmp_813 ; [#uses=1 type=i9]
  %tmp_817 = select i1 %tmp_811, i9 %tmp_813, i9 %tmp_812 ; [#uses=1 type=i9]
  %tmp_818 = select i1 %tmp_811, i9 %tmp_815, i9 %tmp_812 ; [#uses=1 type=i9]
  %tmp_819 = xor i9 %tmp_816, 255, !dbg !696      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_820 = zext i9 %tmp_818 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_821 = zext i9 %tmp_817 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_822 = zext i9 %tmp_819 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_823 = shl i256 %tmp_814, %tmp_820, !dbg !696 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_824 = call i256 @llvm.part.select.i256(i256 %tmp_823, i32 255, i32 0), !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_825 = select i1 %tmp_811, i256 %tmp_824, i256 %tmp_823 ; [#uses=1 type=i256]
  %tmp_826 = shl i256 -1, %tmp_821, !dbg !696     ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_827 = lshr i256 -1, %tmp_822, !dbg !696    ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan = and i256 %tmp_826, %tmp_827, !dbg !696 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_828 = xor i256 %p_demorgan, -1, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_829 = and i256 %tmp_810, %tmp_828, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_830 = and i256 %tmp_825, %p_demorgan, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_831 = or i256 %tmp_829, %tmp_830, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %sum = add i32 %buf_offset_read, %tmp_s         ; [#uses=1 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %sum    ; [#uses=5 type=i8*]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !696 ; [#uses=0 type=i1] [debug line = 221:2]
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !696 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_54 = xor i8 %buf_addr_read, %tmp_809, !dbg !696 ; [#uses=1 type=i8] [debug line = 221:2]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !696 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_54, i1 true), !dbg !696 ; [debug line = 221:2]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !696 ; [#uses=0 type=i1] [debug line = 221:2]
  %tmp_211 = add i5 15, %i, !dbg !696             ; [#uses=1 type=i5] [debug line = 221:2]
  %tmp_212 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_211, i3 0) ; [#uses=5 type=i8]
  %tmp_213 = or i8 %tmp_212, 7                    ; [#uses=4 type=i8]
  %tmp_832 = icmp ugt i8 %tmp_212, %tmp_213       ; [#uses=3 type=i1]
  %tmp_833 = zext i8 %tmp_212 to i9, !dbg !696    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_834 = zext i8 %tmp_213 to i9, !dbg !696    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_835 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256), !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_836 = sub i9 %tmp_833, %tmp_834, !dbg !696 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_837 = xor i9 %tmp_833, 255, !dbg !696      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_838 = sub i9 %tmp_834, %tmp_833, !dbg !696 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_839 = select i1 %tmp_832, i9 %tmp_836, i9 %tmp_838, !dbg !696 ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_840 = select i1 %tmp_832, i256 %tmp_835, i256 %p_new ; [#uses=1 type=i256]
  %tmp_841 = select i1 %tmp_832, i9 %tmp_837, i9 %tmp_833 ; [#uses=1 type=i9]
  %tmp_842 = sub i9 255, %tmp_839                 ; [#uses=1 type=i9]
  %tmp_843 = zext i9 %tmp_841 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_844 = zext i9 %tmp_842 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_845 = lshr i256 %tmp_840, %tmp_843, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_846 = lshr i256 -1, %tmp_844, !dbg !696    ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_847 = and i256 %tmp_845, %tmp_846          ; [#uses=1 type=i256]
  %tmp_848 = trunc i256 %tmp_847 to i8, !dbg !696 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp_849 = icmp ugt i8 %tmp_212, %tmp_213       ; [#uses=4 type=i1]
  %tmp_850 = zext i8 %tmp_212 to i9, !dbg !696    ; [#uses=4 type=i9] [debug line = 221:2]
  %tmp_851 = zext i8 %tmp_213 to i9, !dbg !696    ; [#uses=2 type=i9] [debug line = 221:2]
  %tmp_852 = zext i8 %tmp_848 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_853 = xor i9 %tmp_850, 255, !dbg !696      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_854 = select i1 %tmp_849, i9 %tmp_850, i9 %tmp_851 ; [#uses=1 type=i9]
  %tmp_855 = select i1 %tmp_849, i9 %tmp_851, i9 %tmp_850 ; [#uses=1 type=i9]
  %tmp_856 = select i1 %tmp_849, i9 %tmp_853, i9 %tmp_850 ; [#uses=1 type=i9]
  %tmp_857 = xor i9 %tmp_854, 255, !dbg !696      ; [#uses=1 type=i9] [debug line = 221:2]
  %tmp_858 = zext i9 %tmp_856 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_859 = zext i9 %tmp_855 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_860 = zext i9 %tmp_857 to i256, !dbg !696  ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_861 = shl i256 %tmp_852, %tmp_858, !dbg !696 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_862 = call i256 @llvm.part.select.i256(i256 %tmp_861, i32 255, i32 0), !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_863 = select i1 %tmp_849, i256 %tmp_862, i256 %tmp_861 ; [#uses=1 type=i256]
  %tmp_864 = shl i256 -1, %tmp_859, !dbg !696     ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_865 = lshr i256 -1, %tmp_860, !dbg !696    ; [#uses=1 type=i256] [debug line = 221:2]
  %p_demorgan3 = and i256 %tmp_864, %tmp_865, !dbg !696 ; [#uses=2 type=i256] [debug line = 221:2]
  %tmp_866 = xor i256 %p_demorgan3, -1, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_867 = and i256 %tmp_831, %tmp_866, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_868 = and i256 %tmp_863, %p_demorgan3, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %tmp_869 = or i256 %tmp_867, %tmp_868, !dbg !696 ; [#uses=1 type=i256] [debug line = 221:2]
  %gep21112_part_set = zext i256 %tmp_869 to i1024, !dbg !696 ; [#uses=1 type=i1024] [debug line = 221:2]
  %ctx_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %ctx_addr, i32 1), !dbg !696 ; [#uses=0 type=i1] [debug line = 221:2]
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %ctx_addr, i1024 %gep21112_part_set, i128 4294967295), !dbg !696 ; [debug line = 221:2]
  %ctx_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %ctx_addr), !dbg !696 ; [#uses=0 type=i1] [debug line = 221:2]
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str3, i32 %tmp_207), !dbg !697 ; [#uses=0 type=i32] [debug line = 222:5]
  br label %1, !dbg !697                          ; [debug line = 222:5]

; <label>:3                                       ; preds = %1
  ret void, !dbg !698                             ; [debug line = 223:1]
}

; [#uses=25]
define internal fastcc void @aes_addRoundKey(i8* %buf, i32 %buf_offset, i1024* %key, i25 %key_offset, i6 %key_offset_offset) {
  %key_offset_offset_re = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset_offset) ; [#uses=1 type=i6]
  %key_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %key_offset) ; [#uses=1 type=i25]
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset) ; [#uses=1 type=i32]
  %key_offset_cast = zext i25 %key_offset_read to i32 ; [#uses=1 type=i32]
  %key_addr = getelementptr i1024* %key, i32 %key_offset_cast ; [#uses=2 type=i1024*]
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %key, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !699), !dbg !701 ; [debug line = 194:31] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i1024* %key}, i64 0, metadata !702), !dbg !704 ; [debug line = 194:45] [debug variable = key]
  %tmp_870 = trunc i6 %key_offset_offset_re to i5, !dbg !705 ; [#uses=1 type=i5] [debug line = 198:14]
  %tmp1 = add i5 -1, %tmp_870, !dbg !707          ; [#uses=1 type=i5] [debug line = 205:2]
  br label %1, !dbg !705                          ; [debug line = 198:14]

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_6, %2 ]           ; [#uses=3 type=i5]
  %tmp = icmp eq i5 %i, 0, !dbg !705              ; [#uses=1 type=i1] [debug line = 198:14]
  br i1 %tmp, label %3, label %2, !dbg !705       ; [debug line = 198:14]

; <label>:2                                       ; preds = %1
  %i_6 = add i5 -1, %i, !dbg !705                 ; [#uses=2 type=i5] [debug line = 198:14]
  %i_6_cast = sext i5 %i_6 to i8, !dbg !705       ; [#uses=1 type=i8] [debug line = 198:14]
  call void @llvm.dbg.value(metadata !{i5 %i_6}, i64 0, metadata !709), !dbg !705 ; [debug line = 198:14] [debug variable = i]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str2) nounwind, !dbg !710 ; [debug line = 199:6]
  %tmp_214 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str2), !dbg !710 ; [#uses=1 type=i32] [debug line = 199:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !711 ; [debug line = 201:1]
  %tmp_s = zext i8 %i_6_cast to i32, !dbg !707    ; [#uses=1 type=i32] [debug line = 205:2]
  %tmp_215 = add i5 %tmp1, %i, !dbg !707          ; [#uses=1 type=i5] [debug line = 205:2]
  %key_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %key_addr, i32 1), !dbg !707 ; [#uses=0 type=i1] [debug line = 205:2]
  %key_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %key_addr), !dbg !707 ; [#uses=2 type=i1024] [debug line = 205:2]
  %tmp_871 = trunc i1024 %key_addr_read to i256, !dbg !707 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_216 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_215, i3 0) ; [#uses=3 type=i8]
  %tmp_217 = or i8 %tmp_216, 7                    ; [#uses=2 type=i8]
  %tmp_872 = icmp ugt i8 %tmp_216, %tmp_217       ; [#uses=3 type=i1]
  %tmp_873 = zext i8 %tmp_216 to i9, !dbg !707    ; [#uses=4 type=i9] [debug line = 205:2]
  %tmp_874 = zext i8 %tmp_217 to i9, !dbg !707    ; [#uses=2 type=i9] [debug line = 205:2]
  %tmp_875 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0), !dbg !707 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_876 = sub i9 %tmp_873, %tmp_874, !dbg !707 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_877 = xor i9 %tmp_873, 255, !dbg !707      ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_878 = sub i9 %tmp_874, %tmp_873, !dbg !707 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_879 = select i1 %tmp_872, i9 %tmp_876, i9 %tmp_878, !dbg !707 ; [#uses=1 type=i9] [debug line = 205:2]
  %tmp_880 = select i1 %tmp_872, i256 %tmp_875, i256 %tmp_871 ; [#uses=1 type=i256]
  %tmp_881 = select i1 %tmp_872, i9 %tmp_877, i9 %tmp_873 ; [#uses=1 type=i9]
  %tmp_882 = sub i9 255, %tmp_879                 ; [#uses=1 type=i9]
  %tmp_883 = zext i9 %tmp_881 to i256, !dbg !707  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_884 = zext i9 %tmp_882 to i256, !dbg !707  ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_885 = lshr i256 %tmp_880, %tmp_883, !dbg !707 ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_886 = lshr i256 -1, %tmp_884, !dbg !707    ; [#uses=1 type=i256] [debug line = 205:2]
  %tmp_887 = and i256 %tmp_885, %tmp_886          ; [#uses=1 type=i256]
  %tmp_888 = trunc i256 %tmp_887 to i8, !dbg !707 ; [#uses=1 type=i8] [debug line = 205:2]
  %sum = add i32 %buf_offset_read, %tmp_s         ; [#uses=1 type=i32]
  %buf_addr = getelementptr i8* %buf, i32 %sum    ; [#uses=5 type=i8*]
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !707 ; [#uses=0 type=i1] [debug line = 205:2]
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr), !dbg !707 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp_55 = xor i8 %buf_addr_read, %tmp_888, !dbg !707 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1), !dbg !707 ; [#uses=0 type=i1] [debug line = 205:2]
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_55, i1 true), !dbg !707 ; [debug line = 205:2]
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr), !dbg !707 ; [#uses=0 type=i1] [debug line = 205:2]
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str2, i32 %tmp_214), !dbg !712 ; [#uses=0 type=i32] [debug line = 206:5]
  br label %1, !dbg !712                          ; [debug line = 206:5]

; <label>:3                                       ; preds = %1
  ret void, !dbg !713                             ; [debug line = 207:1]
}

; [#uses=19]
define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

; [#uses=6]
define weak i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024*) {
entry:
  ret i1 true
}

; [#uses=19]
define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=6]
define weak i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024*, i32) {
entry:
  ret i1 true
}

; [#uses=19]
define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_Write.m_axi.i1024P(i1024*, i1024, i128) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=8]
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

; [#uses=19]
define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

; [#uses=4]
define weak i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024*, i32) {
entry:
  ret i1 true
}

; [#uses=19]
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
  %empty_22 = trunc i1024 %empty to i8            ; [#uses=1 type=i8]
  ret i8 %empty_22
}

; [#uses=0]
declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=0]
declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

; [#uses=0]
declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

; [#uses=8]
define weak i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024, i32, i32) nounwind readnone {
entry:
  %empty = call i1024 @llvm.part.select.i1024(i1024 %0, i32 %1, i32 %2) ; [#uses=1 type=i1024]
  %empty_23 = trunc i1024 %empty to i256          ; [#uses=1 type=i256]
  ret i256 %empty_23
}

; [#uses=1]
define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_24 = trunc i32 %empty to i25             ; [#uses=1 type=i25]
  ret i25 %empty_24
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

; [#uses=6]
define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8                     ; [#uses=1 type=i8]
  %empty_25 = shl i8 1, %empty                    ; [#uses=1 type=i8]
  %empty_26 = and i8 %0, %empty_25                ; [#uses=1 type=i8]
  %empty_27 = icmp ne i8 %empty_26, 0             ; [#uses=1 type=i1]
  ret i1 %empty_27
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6                     ; [#uses=1 type=i6]
  %empty_28 = shl i6 1, %empty                    ; [#uses=1 type=i6]
  %empty_29 = and i6 %0, %empty_28                ; [#uses=1 type=i6]
  %empty_30 = icmp ne i6 %empty_29, 0             ; [#uses=1 type=i1]
  ret i1 %empty_30
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5                     ; [#uses=1 type=i5]
  %empty_31 = shl i5 1, %empty                    ; [#uses=1 type=i5]
  %empty_32 = and i5 %0, %empty_31                ; [#uses=1 type=i5]
  %empty_33 = icmp ne i5 %empty_32, 0             ; [#uses=1 type=i1]
  ret i1 %empty_33
}

; [#uses=1]
define weak i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6, i3) nounwind readnone {
entry:
  %empty = zext i6 %0 to i9                       ; [#uses=1 type=i9]
  %empty_34 = zext i3 %1 to i9                    ; [#uses=1 type=i9]
  %empty_35 = shl i9 %empty, 3                    ; [#uses=1 type=i9]
  %empty_36 = or i9 %empty_35, %empty_34          ; [#uses=1 type=i9]
  ret i9 %empty_36
}

; [#uses=3]
define weak i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1, i8) nounwind readnone {
entry:
  %empty = zext i1 %0 to i9                       ; [#uses=1 type=i9]
  %empty_37 = zext i8 %1 to i9                    ; [#uses=1 type=i9]
  %empty_38 = shl i9 %empty, 8                    ; [#uses=1 type=i9]
  %empty_39 = or i9 %empty_38, %empty_37          ; [#uses=1 type=i9]
  ret i9 %empty_39
}

; [#uses=0]
declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

; [#uses=13]
define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8                       ; [#uses=1 type=i8]
  %empty_40 = zext i3 %1 to i8                    ; [#uses=1 type=i8]
  %empty_41 = shl i8 %empty, 3                    ; [#uses=1 type=i8]
  %empty_42 = or i8 %empty_41, %empty_40          ; [#uses=1 type=i8]
  ret i8 %empty_42
}

; [#uses=9]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_43 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_44 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_45 = or i7 %empty_44, %empty_43          ; [#uses=1 type=i7]
  ret i7 %empty_45
}

; [#uses=1]
define weak i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i256(i256, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i256) nounwind readnone {
entry:
  %empty = zext i8 %64 to i264                    ; [#uses=1 type=i264]
  %empty_46 = zext i256 %65 to i264               ; [#uses=1 type=i264]
  %empty_47 = shl i264 %empty, 256                ; [#uses=1 type=i264]
  %empty_48 = or i264 %empty_47, %empty_46        ; [#uses=1 type=i264]
  %empty_49 = zext i8 %63 to i272                 ; [#uses=1 type=i272]
  %empty_50 = zext i264 %empty_48 to i272         ; [#uses=1 type=i272]
  %empty_51 = shl i272 %empty_49, 264             ; [#uses=1 type=i272]
  %empty_52 = or i272 %empty_51, %empty_50        ; [#uses=1 type=i272]
  %empty_53 = zext i8 %62 to i280                 ; [#uses=1 type=i280]
  %empty_54 = zext i272 %empty_52 to i280         ; [#uses=1 type=i280]
  %empty_55 = shl i280 %empty_53, 272             ; [#uses=1 type=i280]
  %empty_56 = or i280 %empty_55, %empty_54        ; [#uses=1 type=i280]
  %empty_57 = zext i8 %61 to i288                 ; [#uses=1 type=i288]
  %empty_58 = zext i280 %empty_56 to i288         ; [#uses=1 type=i288]
  %empty_59 = shl i288 %empty_57, 280             ; [#uses=1 type=i288]
  %empty_60 = or i288 %empty_59, %empty_58        ; [#uses=1 type=i288]
  %empty_61 = zext i8 %60 to i296                 ; [#uses=1 type=i296]
  %empty_62 = zext i288 %empty_60 to i296         ; [#uses=1 type=i296]
  %empty_63 = shl i296 %empty_61, 288             ; [#uses=1 type=i296]
  %empty_64 = or i296 %empty_63, %empty_62        ; [#uses=1 type=i296]
  %empty_65 = zext i8 %59 to i304                 ; [#uses=1 type=i304]
  %empty_66 = zext i296 %empty_64 to i304         ; [#uses=1 type=i304]
  %empty_67 = shl i304 %empty_65, 296             ; [#uses=1 type=i304]
  %empty_68 = or i304 %empty_67, %empty_66        ; [#uses=1 type=i304]
  %empty_69 = zext i8 %58 to i312                 ; [#uses=1 type=i312]
  %empty_70 = zext i304 %empty_68 to i312         ; [#uses=1 type=i312]
  %empty_71 = shl i312 %empty_69, 304             ; [#uses=1 type=i312]
  %empty_72 = or i312 %empty_71, %empty_70        ; [#uses=1 type=i312]
  %empty_73 = zext i8 %57 to i320                 ; [#uses=1 type=i320]
  %empty_74 = zext i312 %empty_72 to i320         ; [#uses=1 type=i320]
  %empty_75 = shl i320 %empty_73, 312             ; [#uses=1 type=i320]
  %empty_76 = or i320 %empty_75, %empty_74        ; [#uses=1 type=i320]
  %empty_77 = zext i8 %56 to i328                 ; [#uses=1 type=i328]
  %empty_78 = zext i320 %empty_76 to i328         ; [#uses=1 type=i328]
  %empty_79 = shl i328 %empty_77, 320             ; [#uses=1 type=i328]
  %empty_80 = or i328 %empty_79, %empty_78        ; [#uses=1 type=i328]
  %empty_81 = zext i8 %55 to i336                 ; [#uses=1 type=i336]
  %empty_82 = zext i328 %empty_80 to i336         ; [#uses=1 type=i336]
  %empty_83 = shl i336 %empty_81, 328             ; [#uses=1 type=i336]
  %empty_84 = or i336 %empty_83, %empty_82        ; [#uses=1 type=i336]
  %empty_85 = zext i8 %54 to i344                 ; [#uses=1 type=i344]
  %empty_86 = zext i336 %empty_84 to i344         ; [#uses=1 type=i344]
  %empty_87 = shl i344 %empty_85, 336             ; [#uses=1 type=i344]
  %empty_88 = or i344 %empty_87, %empty_86        ; [#uses=1 type=i344]
  %empty_89 = zext i8 %53 to i352                 ; [#uses=1 type=i352]
  %empty_90 = zext i344 %empty_88 to i352         ; [#uses=1 type=i352]
  %empty_91 = shl i352 %empty_89, 344             ; [#uses=1 type=i352]
  %empty_92 = or i352 %empty_91, %empty_90        ; [#uses=1 type=i352]
  %empty_93 = zext i8 %52 to i360                 ; [#uses=1 type=i360]
  %empty_94 = zext i352 %empty_92 to i360         ; [#uses=1 type=i360]
  %empty_95 = shl i360 %empty_93, 352             ; [#uses=1 type=i360]
  %empty_96 = or i360 %empty_95, %empty_94        ; [#uses=1 type=i360]
  %empty_97 = zext i8 %51 to i368                 ; [#uses=1 type=i368]
  %empty_98 = zext i360 %empty_96 to i368         ; [#uses=1 type=i368]
  %empty_99 = shl i368 %empty_97, 360             ; [#uses=1 type=i368]
  %empty_100 = or i368 %empty_99, %empty_98       ; [#uses=1 type=i368]
  %empty_101 = zext i8 %50 to i376                ; [#uses=1 type=i376]
  %empty_102 = zext i368 %empty_100 to i376       ; [#uses=1 type=i376]
  %empty_103 = shl i376 %empty_101, 368           ; [#uses=1 type=i376]
  %empty_104 = or i376 %empty_103, %empty_102     ; [#uses=1 type=i376]
  %empty_105 = zext i8 %49 to i384                ; [#uses=1 type=i384]
  %empty_106 = zext i376 %empty_104 to i384       ; [#uses=1 type=i384]
  %empty_107 = shl i384 %empty_105, 376           ; [#uses=1 type=i384]
  %empty_108 = or i384 %empty_107, %empty_106     ; [#uses=1 type=i384]
  %empty_109 = zext i8 %48 to i392                ; [#uses=1 type=i392]
  %empty_110 = zext i384 %empty_108 to i392       ; [#uses=1 type=i392]
  %empty_111 = shl i392 %empty_109, 384           ; [#uses=1 type=i392]
  %empty_112 = or i392 %empty_111, %empty_110     ; [#uses=1 type=i392]
  %empty_113 = zext i8 %47 to i400                ; [#uses=1 type=i400]
  %empty_114 = zext i392 %empty_112 to i400       ; [#uses=1 type=i400]
  %empty_115 = shl i400 %empty_113, 392           ; [#uses=1 type=i400]
  %empty_116 = or i400 %empty_115, %empty_114     ; [#uses=1 type=i400]
  %empty_117 = zext i8 %46 to i408                ; [#uses=1 type=i408]
  %empty_118 = zext i400 %empty_116 to i408       ; [#uses=1 type=i408]
  %empty_119 = shl i408 %empty_117, 400           ; [#uses=1 type=i408]
  %empty_120 = or i408 %empty_119, %empty_118     ; [#uses=1 type=i408]
  %empty_121 = zext i8 %45 to i416                ; [#uses=1 type=i416]
  %empty_122 = zext i408 %empty_120 to i416       ; [#uses=1 type=i416]
  %empty_123 = shl i416 %empty_121, 408           ; [#uses=1 type=i416]
  %empty_124 = or i416 %empty_123, %empty_122     ; [#uses=1 type=i416]
  %empty_125 = zext i8 %44 to i424                ; [#uses=1 type=i424]
  %empty_126 = zext i416 %empty_124 to i424       ; [#uses=1 type=i424]
  %empty_127 = shl i424 %empty_125, 416           ; [#uses=1 type=i424]
  %empty_128 = or i424 %empty_127, %empty_126     ; [#uses=1 type=i424]
  %empty_129 = zext i8 %43 to i432                ; [#uses=1 type=i432]
  %empty_130 = zext i424 %empty_128 to i432       ; [#uses=1 type=i432]
  %empty_131 = shl i432 %empty_129, 424           ; [#uses=1 type=i432]
  %empty_132 = or i432 %empty_131, %empty_130     ; [#uses=1 type=i432]
  %empty_133 = zext i8 %42 to i440                ; [#uses=1 type=i440]
  %empty_134 = zext i432 %empty_132 to i440       ; [#uses=1 type=i440]
  %empty_135 = shl i440 %empty_133, 432           ; [#uses=1 type=i440]
  %empty_136 = or i440 %empty_135, %empty_134     ; [#uses=1 type=i440]
  %empty_137 = zext i8 %41 to i448                ; [#uses=1 type=i448]
  %empty_138 = zext i440 %empty_136 to i448       ; [#uses=1 type=i448]
  %empty_139 = shl i448 %empty_137, 440           ; [#uses=1 type=i448]
  %empty_140 = or i448 %empty_139, %empty_138     ; [#uses=1 type=i448]
  %empty_141 = zext i8 %40 to i456                ; [#uses=1 type=i456]
  %empty_142 = zext i448 %empty_140 to i456       ; [#uses=1 type=i456]
  %empty_143 = shl i456 %empty_141, 448           ; [#uses=1 type=i456]
  %empty_144 = or i456 %empty_143, %empty_142     ; [#uses=1 type=i456]
  %empty_145 = zext i8 %39 to i464                ; [#uses=1 type=i464]
  %empty_146 = zext i456 %empty_144 to i464       ; [#uses=1 type=i464]
  %empty_147 = shl i464 %empty_145, 456           ; [#uses=1 type=i464]
  %empty_148 = or i464 %empty_147, %empty_146     ; [#uses=1 type=i464]
  %empty_149 = zext i8 %38 to i472                ; [#uses=1 type=i472]
  %empty_150 = zext i464 %empty_148 to i472       ; [#uses=1 type=i472]
  %empty_151 = shl i472 %empty_149, 464           ; [#uses=1 type=i472]
  %empty_152 = or i472 %empty_151, %empty_150     ; [#uses=1 type=i472]
  %empty_153 = zext i8 %37 to i480                ; [#uses=1 type=i480]
  %empty_154 = zext i472 %empty_152 to i480       ; [#uses=1 type=i480]
  %empty_155 = shl i480 %empty_153, 472           ; [#uses=1 type=i480]
  %empty_156 = or i480 %empty_155, %empty_154     ; [#uses=1 type=i480]
  %empty_157 = zext i8 %36 to i488                ; [#uses=1 type=i488]
  %empty_158 = zext i480 %empty_156 to i488       ; [#uses=1 type=i488]
  %empty_159 = shl i488 %empty_157, 480           ; [#uses=1 type=i488]
  %empty_160 = or i488 %empty_159, %empty_158     ; [#uses=1 type=i488]
  %empty_161 = zext i8 %35 to i496                ; [#uses=1 type=i496]
  %empty_162 = zext i488 %empty_160 to i496       ; [#uses=1 type=i496]
  %empty_163 = shl i496 %empty_161, 488           ; [#uses=1 type=i496]
  %empty_164 = or i496 %empty_163, %empty_162     ; [#uses=1 type=i496]
  %empty_165 = zext i8 %34 to i504                ; [#uses=1 type=i504]
  %empty_166 = zext i496 %empty_164 to i504       ; [#uses=1 type=i504]
  %empty_167 = shl i504 %empty_165, 496           ; [#uses=1 type=i504]
  %empty_168 = or i504 %empty_167, %empty_166     ; [#uses=1 type=i504]
  %empty_169 = zext i8 %33 to i512                ; [#uses=1 type=i512]
  %empty_170 = zext i504 %empty_168 to i512       ; [#uses=1 type=i512]
  %empty_171 = shl i512 %empty_169, 504           ; [#uses=1 type=i512]
  %empty_172 = or i512 %empty_171, %empty_170     ; [#uses=1 type=i512]
  %empty_173 = zext i8 %32 to i520                ; [#uses=1 type=i520]
  %empty_174 = zext i512 %empty_172 to i520       ; [#uses=1 type=i520]
  %empty_175 = shl i520 %empty_173, 512           ; [#uses=1 type=i520]
  %empty_176 = or i520 %empty_175, %empty_174     ; [#uses=1 type=i520]
  %empty_177 = zext i8 %31 to i528                ; [#uses=1 type=i528]
  %empty_178 = zext i520 %empty_176 to i528       ; [#uses=1 type=i528]
  %empty_179 = shl i528 %empty_177, 520           ; [#uses=1 type=i528]
  %empty_180 = or i528 %empty_179, %empty_178     ; [#uses=1 type=i528]
  %empty_181 = zext i8 %30 to i536                ; [#uses=1 type=i536]
  %empty_182 = zext i528 %empty_180 to i536       ; [#uses=1 type=i536]
  %empty_183 = shl i536 %empty_181, 528           ; [#uses=1 type=i536]
  %empty_184 = or i536 %empty_183, %empty_182     ; [#uses=1 type=i536]
  %empty_185 = zext i8 %29 to i544                ; [#uses=1 type=i544]
  %empty_186 = zext i536 %empty_184 to i544       ; [#uses=1 type=i544]
  %empty_187 = shl i544 %empty_185, 536           ; [#uses=1 type=i544]
  %empty_188 = or i544 %empty_187, %empty_186     ; [#uses=1 type=i544]
  %empty_189 = zext i8 %28 to i552                ; [#uses=1 type=i552]
  %empty_190 = zext i544 %empty_188 to i552       ; [#uses=1 type=i552]
  %empty_191 = shl i552 %empty_189, 544           ; [#uses=1 type=i552]
  %empty_192 = or i552 %empty_191, %empty_190     ; [#uses=1 type=i552]
  %empty_193 = zext i8 %27 to i560                ; [#uses=1 type=i560]
  %empty_194 = zext i552 %empty_192 to i560       ; [#uses=1 type=i560]
  %empty_195 = shl i560 %empty_193, 552           ; [#uses=1 type=i560]
  %empty_196 = or i560 %empty_195, %empty_194     ; [#uses=1 type=i560]
  %empty_197 = zext i8 %26 to i568                ; [#uses=1 type=i568]
  %empty_198 = zext i560 %empty_196 to i568       ; [#uses=1 type=i568]
  %empty_199 = shl i568 %empty_197, 560           ; [#uses=1 type=i568]
  %empty_200 = or i568 %empty_199, %empty_198     ; [#uses=1 type=i568]
  %empty_201 = zext i8 %25 to i576                ; [#uses=1 type=i576]
  %empty_202 = zext i568 %empty_200 to i576       ; [#uses=1 type=i576]
  %empty_203 = shl i576 %empty_201, 568           ; [#uses=1 type=i576]
  %empty_204 = or i576 %empty_203, %empty_202     ; [#uses=1 type=i576]
  %empty_205 = zext i8 %24 to i584                ; [#uses=1 type=i584]
  %empty_206 = zext i576 %empty_204 to i584       ; [#uses=1 type=i584]
  %empty_207 = shl i584 %empty_205, 576           ; [#uses=1 type=i584]
  %empty_208 = or i584 %empty_207, %empty_206     ; [#uses=1 type=i584]
  %empty_209 = zext i8 %23 to i592                ; [#uses=1 type=i592]
  %empty_210 = zext i584 %empty_208 to i592       ; [#uses=1 type=i592]
  %empty_211 = shl i592 %empty_209, 584           ; [#uses=1 type=i592]
  %empty_212 = or i592 %empty_211, %empty_210     ; [#uses=1 type=i592]
  %empty_213 = zext i8 %22 to i600                ; [#uses=1 type=i600]
  %empty_214 = zext i592 %empty_212 to i600       ; [#uses=1 type=i600]
  %empty_215 = shl i600 %empty_213, 592           ; [#uses=1 type=i600]
  %empty_216 = or i600 %empty_215, %empty_214     ; [#uses=1 type=i600]
  %empty_217 = zext i8 %21 to i608                ; [#uses=1 type=i608]
  %empty_218 = zext i600 %empty_216 to i608       ; [#uses=1 type=i608]
  %empty_219 = shl i608 %empty_217, 600           ; [#uses=1 type=i608]
  %empty_220 = or i608 %empty_219, %empty_218     ; [#uses=1 type=i608]
  %empty_221 = zext i8 %20 to i616                ; [#uses=1 type=i616]
  %empty_222 = zext i608 %empty_220 to i616       ; [#uses=1 type=i616]
  %empty_223 = shl i616 %empty_221, 608           ; [#uses=1 type=i616]
  %empty_224 = or i616 %empty_223, %empty_222     ; [#uses=1 type=i616]
  %empty_225 = zext i8 %19 to i624                ; [#uses=1 type=i624]
  %empty_226 = zext i616 %empty_224 to i624       ; [#uses=1 type=i624]
  %empty_227 = shl i624 %empty_225, 616           ; [#uses=1 type=i624]
  %empty_228 = or i624 %empty_227, %empty_226     ; [#uses=1 type=i624]
  %empty_229 = zext i8 %18 to i632                ; [#uses=1 type=i632]
  %empty_230 = zext i624 %empty_228 to i632       ; [#uses=1 type=i632]
  %empty_231 = shl i632 %empty_229, 624           ; [#uses=1 type=i632]
  %empty_232 = or i632 %empty_231, %empty_230     ; [#uses=1 type=i632]
  %empty_233 = zext i8 %17 to i640                ; [#uses=1 type=i640]
  %empty_234 = zext i632 %empty_232 to i640       ; [#uses=1 type=i640]
  %empty_235 = shl i640 %empty_233, 632           ; [#uses=1 type=i640]
  %empty_236 = or i640 %empty_235, %empty_234     ; [#uses=1 type=i640]
  %empty_237 = zext i8 %16 to i648                ; [#uses=1 type=i648]
  %empty_238 = zext i640 %empty_236 to i648       ; [#uses=1 type=i648]
  %empty_239 = shl i648 %empty_237, 640           ; [#uses=1 type=i648]
  %empty_240 = or i648 %empty_239, %empty_238     ; [#uses=1 type=i648]
  %empty_241 = zext i8 %15 to i656                ; [#uses=1 type=i656]
  %empty_242 = zext i648 %empty_240 to i656       ; [#uses=1 type=i656]
  %empty_243 = shl i656 %empty_241, 648           ; [#uses=1 type=i656]
  %empty_244 = or i656 %empty_243, %empty_242     ; [#uses=1 type=i656]
  %empty_245 = zext i8 %14 to i664                ; [#uses=1 type=i664]
  %empty_246 = zext i656 %empty_244 to i664       ; [#uses=1 type=i664]
  %empty_247 = shl i664 %empty_245, 656           ; [#uses=1 type=i664]
  %empty_248 = or i664 %empty_247, %empty_246     ; [#uses=1 type=i664]
  %empty_249 = zext i8 %13 to i672                ; [#uses=1 type=i672]
  %empty_250 = zext i664 %empty_248 to i672       ; [#uses=1 type=i672]
  %empty_251 = shl i672 %empty_249, 664           ; [#uses=1 type=i672]
  %empty_252 = or i672 %empty_251, %empty_250     ; [#uses=1 type=i672]
  %empty_253 = zext i8 %12 to i680                ; [#uses=1 type=i680]
  %empty_254 = zext i672 %empty_252 to i680       ; [#uses=1 type=i680]
  %empty_255 = shl i680 %empty_253, 672           ; [#uses=1 type=i680]
  %empty_256 = or i680 %empty_255, %empty_254     ; [#uses=1 type=i680]
  %empty_257 = zext i8 %11 to i688                ; [#uses=1 type=i688]
  %empty_258 = zext i680 %empty_256 to i688       ; [#uses=1 type=i688]
  %empty_259 = shl i688 %empty_257, 680           ; [#uses=1 type=i688]
  %empty_260 = or i688 %empty_259, %empty_258     ; [#uses=1 type=i688]
  %empty_261 = zext i8 %10 to i696                ; [#uses=1 type=i696]
  %empty_262 = zext i688 %empty_260 to i696       ; [#uses=1 type=i696]
  %empty_263 = shl i696 %empty_261, 688           ; [#uses=1 type=i696]
  %empty_264 = or i696 %empty_263, %empty_262     ; [#uses=1 type=i696]
  %empty_265 = zext i8 %9 to i704                 ; [#uses=1 type=i704]
  %empty_266 = zext i696 %empty_264 to i704       ; [#uses=1 type=i704]
  %empty_267 = shl i704 %empty_265, 696           ; [#uses=1 type=i704]
  %empty_268 = or i704 %empty_267, %empty_266     ; [#uses=1 type=i704]
  %empty_269 = zext i8 %8 to i712                 ; [#uses=1 type=i712]
  %empty_270 = zext i704 %empty_268 to i712       ; [#uses=1 type=i712]
  %empty_271 = shl i712 %empty_269, 704           ; [#uses=1 type=i712]
  %empty_272 = or i712 %empty_271, %empty_270     ; [#uses=1 type=i712]
  %empty_273 = zext i8 %7 to i720                 ; [#uses=1 type=i720]
  %empty_274 = zext i712 %empty_272 to i720       ; [#uses=1 type=i720]
  %empty_275 = shl i720 %empty_273, 712           ; [#uses=1 type=i720]
  %empty_276 = or i720 %empty_275, %empty_274     ; [#uses=1 type=i720]
  %empty_277 = zext i8 %6 to i728                 ; [#uses=1 type=i728]
  %empty_278 = zext i720 %empty_276 to i728       ; [#uses=1 type=i728]
  %empty_279 = shl i728 %empty_277, 720           ; [#uses=1 type=i728]
  %empty_280 = or i728 %empty_279, %empty_278     ; [#uses=1 type=i728]
  %empty_281 = zext i8 %5 to i736                 ; [#uses=1 type=i736]
  %empty_282 = zext i728 %empty_280 to i736       ; [#uses=1 type=i736]
  %empty_283 = shl i736 %empty_281, 728           ; [#uses=1 type=i736]
  %empty_284 = or i736 %empty_283, %empty_282     ; [#uses=1 type=i736]
  %empty_285 = zext i8 %4 to i744                 ; [#uses=1 type=i744]
  %empty_286 = zext i736 %empty_284 to i744       ; [#uses=1 type=i744]
  %empty_287 = shl i744 %empty_285, 736           ; [#uses=1 type=i744]
  %empty_288 = or i744 %empty_287, %empty_286     ; [#uses=1 type=i744]
  %empty_289 = zext i8 %3 to i752                 ; [#uses=1 type=i752]
  %empty_290 = zext i744 %empty_288 to i752       ; [#uses=1 type=i752]
  %empty_291 = shl i752 %empty_289, 744           ; [#uses=1 type=i752]
  %empty_292 = or i752 %empty_291, %empty_290     ; [#uses=1 type=i752]
  %empty_293 = zext i8 %2 to i760                 ; [#uses=1 type=i760]
  %empty_294 = zext i752 %empty_292 to i760       ; [#uses=1 type=i760]
  %empty_295 = shl i760 %empty_293, 752           ; [#uses=1 type=i760]
  %empty_296 = or i760 %empty_295, %empty_294     ; [#uses=1 type=i760]
  %empty_297 = zext i8 %1 to i768                 ; [#uses=1 type=i768]
  %empty_298 = zext i760 %empty_296 to i768       ; [#uses=1 type=i768]
  %empty_299 = shl i768 %empty_297, 760           ; [#uses=1 type=i768]
  %empty_300 = or i768 %empty_299, %empty_298     ; [#uses=1 type=i768]
  %empty_301 = zext i256 %0 to i1024              ; [#uses=1 type=i1024]
  %empty_302 = zext i768 %empty_300 to i1024      ; [#uses=1 type=i1024]
  %empty_303 = shl i1024 %empty_301, 768          ; [#uses=1 type=i1024]
  %empty_304 = or i1024 %empty_303, %empty_302    ; [#uses=1 type=i1024]
  ret i1024 %empty_304
}

; [#uses=1]
define weak i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i512(i256, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i512) nounwind readnone {
entry:
  %empty = zext i8 %32 to i520                    ; [#uses=1 type=i520]
  %empty_305 = zext i512 %33 to i520              ; [#uses=1 type=i520]
  %empty_306 = shl i520 %empty, 512               ; [#uses=1 type=i520]
  %empty_307 = or i520 %empty_306, %empty_305     ; [#uses=1 type=i520]
  %empty_308 = zext i8 %31 to i528                ; [#uses=1 type=i528]
  %empty_309 = zext i520 %empty_307 to i528       ; [#uses=1 type=i528]
  %empty_310 = shl i528 %empty_308, 520           ; [#uses=1 type=i528]
  %empty_311 = or i528 %empty_310, %empty_309     ; [#uses=1 type=i528]
  %empty_312 = zext i8 %30 to i536                ; [#uses=1 type=i536]
  %empty_313 = zext i528 %empty_311 to i536       ; [#uses=1 type=i536]
  %empty_314 = shl i536 %empty_312, 528           ; [#uses=1 type=i536]
  %empty_315 = or i536 %empty_314, %empty_313     ; [#uses=1 type=i536]
  %empty_316 = zext i8 %29 to i544                ; [#uses=1 type=i544]
  %empty_317 = zext i536 %empty_315 to i544       ; [#uses=1 type=i544]
  %empty_318 = shl i544 %empty_316, 536           ; [#uses=1 type=i544]
  %empty_319 = or i544 %empty_318, %empty_317     ; [#uses=1 type=i544]
  %empty_320 = zext i8 %28 to i552                ; [#uses=1 type=i552]
  %empty_321 = zext i544 %empty_319 to i552       ; [#uses=1 type=i552]
  %empty_322 = shl i552 %empty_320, 544           ; [#uses=1 type=i552]
  %empty_323 = or i552 %empty_322, %empty_321     ; [#uses=1 type=i552]
  %empty_324 = zext i8 %27 to i560                ; [#uses=1 type=i560]
  %empty_325 = zext i552 %empty_323 to i560       ; [#uses=1 type=i560]
  %empty_326 = shl i560 %empty_324, 552           ; [#uses=1 type=i560]
  %empty_327 = or i560 %empty_326, %empty_325     ; [#uses=1 type=i560]
  %empty_328 = zext i8 %26 to i568                ; [#uses=1 type=i568]
  %empty_329 = zext i560 %empty_327 to i568       ; [#uses=1 type=i568]
  %empty_330 = shl i568 %empty_328, 560           ; [#uses=1 type=i568]
  %empty_331 = or i568 %empty_330, %empty_329     ; [#uses=1 type=i568]
  %empty_332 = zext i8 %25 to i576                ; [#uses=1 type=i576]
  %empty_333 = zext i568 %empty_331 to i576       ; [#uses=1 type=i576]
  %empty_334 = shl i576 %empty_332, 568           ; [#uses=1 type=i576]
  %empty_335 = or i576 %empty_334, %empty_333     ; [#uses=1 type=i576]
  %empty_336 = zext i8 %24 to i584                ; [#uses=1 type=i584]
  %empty_337 = zext i576 %empty_335 to i584       ; [#uses=1 type=i584]
  %empty_338 = shl i584 %empty_336, 576           ; [#uses=1 type=i584]
  %empty_339 = or i584 %empty_338, %empty_337     ; [#uses=1 type=i584]
  %empty_340 = zext i8 %23 to i592                ; [#uses=1 type=i592]
  %empty_341 = zext i584 %empty_339 to i592       ; [#uses=1 type=i592]
  %empty_342 = shl i592 %empty_340, 584           ; [#uses=1 type=i592]
  %empty_343 = or i592 %empty_342, %empty_341     ; [#uses=1 type=i592]
  %empty_344 = zext i8 %22 to i600                ; [#uses=1 type=i600]
  %empty_345 = zext i592 %empty_343 to i600       ; [#uses=1 type=i600]
  %empty_346 = shl i600 %empty_344, 592           ; [#uses=1 type=i600]
  %empty_347 = or i600 %empty_346, %empty_345     ; [#uses=1 type=i600]
  %empty_348 = zext i8 %21 to i608                ; [#uses=1 type=i608]
  %empty_349 = zext i600 %empty_347 to i608       ; [#uses=1 type=i608]
  %empty_350 = shl i608 %empty_348, 600           ; [#uses=1 type=i608]
  %empty_351 = or i608 %empty_350, %empty_349     ; [#uses=1 type=i608]
  %empty_352 = zext i8 %20 to i616                ; [#uses=1 type=i616]
  %empty_353 = zext i608 %empty_351 to i616       ; [#uses=1 type=i616]
  %empty_354 = shl i616 %empty_352, 608           ; [#uses=1 type=i616]
  %empty_355 = or i616 %empty_354, %empty_353     ; [#uses=1 type=i616]
  %empty_356 = zext i8 %19 to i624                ; [#uses=1 type=i624]
  %empty_357 = zext i616 %empty_355 to i624       ; [#uses=1 type=i624]
  %empty_358 = shl i624 %empty_356, 616           ; [#uses=1 type=i624]
  %empty_359 = or i624 %empty_358, %empty_357     ; [#uses=1 type=i624]
  %empty_360 = zext i8 %18 to i632                ; [#uses=1 type=i632]
  %empty_361 = zext i624 %empty_359 to i632       ; [#uses=1 type=i632]
  %empty_362 = shl i632 %empty_360, 624           ; [#uses=1 type=i632]
  %empty_363 = or i632 %empty_362, %empty_361     ; [#uses=1 type=i632]
  %empty_364 = zext i8 %17 to i640                ; [#uses=1 type=i640]
  %empty_365 = zext i632 %empty_363 to i640       ; [#uses=1 type=i640]
  %empty_366 = shl i640 %empty_364, 632           ; [#uses=1 type=i640]
  %empty_367 = or i640 %empty_366, %empty_365     ; [#uses=1 type=i640]
  %empty_368 = zext i8 %16 to i648                ; [#uses=1 type=i648]
  %empty_369 = zext i640 %empty_367 to i648       ; [#uses=1 type=i648]
  %empty_370 = shl i648 %empty_368, 640           ; [#uses=1 type=i648]
  %empty_371 = or i648 %empty_370, %empty_369     ; [#uses=1 type=i648]
  %empty_372 = zext i8 %15 to i656                ; [#uses=1 type=i656]
  %empty_373 = zext i648 %empty_371 to i656       ; [#uses=1 type=i656]
  %empty_374 = shl i656 %empty_372, 648           ; [#uses=1 type=i656]
  %empty_375 = or i656 %empty_374, %empty_373     ; [#uses=1 type=i656]
  %empty_376 = zext i8 %14 to i664                ; [#uses=1 type=i664]
  %empty_377 = zext i656 %empty_375 to i664       ; [#uses=1 type=i664]
  %empty_378 = shl i664 %empty_376, 656           ; [#uses=1 type=i664]
  %empty_379 = or i664 %empty_378, %empty_377     ; [#uses=1 type=i664]
  %empty_380 = zext i8 %13 to i672                ; [#uses=1 type=i672]
  %empty_381 = zext i664 %empty_379 to i672       ; [#uses=1 type=i672]
  %empty_382 = shl i672 %empty_380, 664           ; [#uses=1 type=i672]
  %empty_383 = or i672 %empty_382, %empty_381     ; [#uses=1 type=i672]
  %empty_384 = zext i8 %12 to i680                ; [#uses=1 type=i680]
  %empty_385 = zext i672 %empty_383 to i680       ; [#uses=1 type=i680]
  %empty_386 = shl i680 %empty_384, 672           ; [#uses=1 type=i680]
  %empty_387 = or i680 %empty_386, %empty_385     ; [#uses=1 type=i680]
  %empty_388 = zext i8 %11 to i688                ; [#uses=1 type=i688]
  %empty_389 = zext i680 %empty_387 to i688       ; [#uses=1 type=i688]
  %empty_390 = shl i688 %empty_388, 680           ; [#uses=1 type=i688]
  %empty_391 = or i688 %empty_390, %empty_389     ; [#uses=1 type=i688]
  %empty_392 = zext i8 %10 to i696                ; [#uses=1 type=i696]
  %empty_393 = zext i688 %empty_391 to i696       ; [#uses=1 type=i696]
  %empty_394 = shl i696 %empty_392, 688           ; [#uses=1 type=i696]
  %empty_395 = or i696 %empty_394, %empty_393     ; [#uses=1 type=i696]
  %empty_396 = zext i8 %9 to i704                 ; [#uses=1 type=i704]
  %empty_397 = zext i696 %empty_395 to i704       ; [#uses=1 type=i704]
  %empty_398 = shl i704 %empty_396, 696           ; [#uses=1 type=i704]
  %empty_399 = or i704 %empty_398, %empty_397     ; [#uses=1 type=i704]
  %empty_400 = zext i8 %8 to i712                 ; [#uses=1 type=i712]
  %empty_401 = zext i704 %empty_399 to i712       ; [#uses=1 type=i712]
  %empty_402 = shl i712 %empty_400, 704           ; [#uses=1 type=i712]
  %empty_403 = or i712 %empty_402, %empty_401     ; [#uses=1 type=i712]
  %empty_404 = zext i8 %7 to i720                 ; [#uses=1 type=i720]
  %empty_405 = zext i712 %empty_403 to i720       ; [#uses=1 type=i720]
  %empty_406 = shl i720 %empty_404, 712           ; [#uses=1 type=i720]
  %empty_407 = or i720 %empty_406, %empty_405     ; [#uses=1 type=i720]
  %empty_408 = zext i8 %6 to i728                 ; [#uses=1 type=i728]
  %empty_409 = zext i720 %empty_407 to i728       ; [#uses=1 type=i728]
  %empty_410 = shl i728 %empty_408, 720           ; [#uses=1 type=i728]
  %empty_411 = or i728 %empty_410, %empty_409     ; [#uses=1 type=i728]
  %empty_412 = zext i8 %5 to i736                 ; [#uses=1 type=i736]
  %empty_413 = zext i728 %empty_411 to i736       ; [#uses=1 type=i736]
  %empty_414 = shl i736 %empty_412, 728           ; [#uses=1 type=i736]
  %empty_415 = or i736 %empty_414, %empty_413     ; [#uses=1 type=i736]
  %empty_416 = zext i8 %4 to i744                 ; [#uses=1 type=i744]
  %empty_417 = zext i736 %empty_415 to i744       ; [#uses=1 type=i744]
  %empty_418 = shl i744 %empty_416, 736           ; [#uses=1 type=i744]
  %empty_419 = or i744 %empty_418, %empty_417     ; [#uses=1 type=i744]
  %empty_420 = zext i8 %3 to i752                 ; [#uses=1 type=i752]
  %empty_421 = zext i744 %empty_419 to i752       ; [#uses=1 type=i752]
  %empty_422 = shl i752 %empty_420, 744           ; [#uses=1 type=i752]
  %empty_423 = or i752 %empty_422, %empty_421     ; [#uses=1 type=i752]
  %empty_424 = zext i8 %2 to i760                 ; [#uses=1 type=i760]
  %empty_425 = zext i752 %empty_423 to i760       ; [#uses=1 type=i760]
  %empty_426 = shl i760 %empty_424, 752           ; [#uses=1 type=i760]
  %empty_427 = or i760 %empty_426, %empty_425     ; [#uses=1 type=i760]
  %empty_428 = zext i8 %1 to i768                 ; [#uses=1 type=i768]
  %empty_429 = zext i760 %empty_427 to i768       ; [#uses=1 type=i768]
  %empty_430 = shl i768 %empty_428, 760           ; [#uses=1 type=i768]
  %empty_431 = or i768 %empty_430, %empty_429     ; [#uses=1 type=i768]
  %empty_432 = zext i256 %0 to i1024              ; [#uses=1 type=i1024]
  %empty_433 = zext i768 %empty_431 to i1024      ; [#uses=1 type=i1024]
  %empty_434 = shl i1024 %empty_432, 768          ; [#uses=1 type=i1024]
  %empty_435 = or i1024 %empty_434, %empty_433    ; [#uses=1 type=i1024]
  ret i1024 %empty_435
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
!32 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c", metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls", null} ; [ DW_TAG_file_type ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{null, metadata !35, metadata !49, metadata !49}
!35 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ]
!36 = metadata !{i32 786454, null, metadata !"aes256_context", metadata !32, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ]
!37 = metadata !{i32 786451, null, metadata !"", metadata !38, i32 7, i64 1024, i64 8, i32 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_structure_type ]
!38 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.h", metadata !"/scratch/local/tmp.wBr2TBiwTt/_sds/vhls", null} ; [ DW_TAG_file_type ]
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
!551 = metadata !{i32 315, i32 1, metadata !550, null}
!552 = metadata !{i32 786688, metadata !542, metadata !"rcon", metadata !32, i32 302, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!553 = metadata !{i32 319, i32 2, metadata !550, null}
!554 = metadata !{i32 320, i32 5, metadata !550, null}
!555 = metadata !{i32 324, i32 16, metadata !556, null}
!556 = metadata !{i32 786443, metadata !542, i32 324, i32 12, metadata !32, i32 21} ; [ DW_TAG_lexical_block ]
!557 = metadata !{i32 334, i32 21, metadata !558, null}
!558 = metadata !{i32 786443, metadata !556, i32 325, i32 5, metadata !32, i32 22} ; [ DW_TAG_lexical_block ]
!559 = metadata !{i32 325, i32 6, metadata !558, null}
!560 = metadata !{i32 331, i32 2, metadata !558, null}
!561 = metadata !{i32 332, i32 9, metadata !558, null}
!562 = metadata !{i32 333, i32 9, metadata !558, null}
!563 = metadata !{i32 334, i32 9, metadata !558, null}
!564 = metadata !{i32 324, i32 41, metadata !556, null}
!565 = metadata !{i32 337, i32 5, metadata !542, null}
!566 = metadata !{i32 338, i32 5, metadata !542, null}
!567 = metadata !{i32 339, i32 5, metadata !542, null}
!568 = metadata !{i32 341, i32 1, metadata !542, null}
!569 = metadata !{i32 786689, metadata !570, metadata !"buf", null, i32 178, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!570 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !32, i32 178, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 179} ; [ DW_TAG_subprogram ]
!571 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !572, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!572 = metadata !{null, metadata !49}
!573 = metadata !{i32 178, i32 28, metadata !570, null}
!574 = metadata !{i32 182, i32 11, metadata !575, null}
!575 = metadata !{i32 786443, metadata !570, i32 179, i32 1, metadata !32, i32 1} ; [ DW_TAG_lexical_block ]
!576 = metadata !{i32 786688, metadata !575, metadata !"i", metadata !32, i32 180, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!577 = metadata !{i32 183, i32 6, metadata !578, null}
!578 = metadata !{i32 786443, metadata !575, i32 183, i32 5, metadata !32, i32 2} ; [ DW_TAG_lexical_block ]
!579 = metadata !{i32 185, i32 1, metadata !578, null}
!580 = metadata !{i32 189, i32 2, metadata !578, null}
!581 = metadata !{i32 190, i32 5, metadata !578, null}
!582 = metadata !{i32 191, i32 1, metadata !575, null}
!583 = metadata !{i32 786689, metadata !584, metadata !"buf", null, i32 227, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!584 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !32, i32 227, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 228} ; [ DW_TAG_subprogram ]
!585 = metadata !{i32 227, i32 29, metadata !584, null}
!586 = metadata !{i32 231, i32 5, metadata !587, null}
!587 = metadata !{i32 786443, metadata !584, i32 228, i32 1, metadata !32, i32 7} ; [ DW_TAG_lexical_block ]
!588 = metadata !{i32 786688, metadata !587, metadata !"i", metadata !32, i32 229, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!589 = metadata !{i32 231, i32 17, metadata !587, null}
!590 = metadata !{i32 231, i32 34, metadata !587, null}
!591 = metadata !{i32 231, i32 51, metadata !587, null}
!592 = metadata !{i32 231, i32 69, metadata !587, null}
!593 = metadata !{i32 232, i32 5, metadata !587, null}
!594 = metadata !{i32 232, i32 18, metadata !587, null}
!595 = metadata !{i32 232, i32 36, metadata !587, null}
!596 = metadata !{i32 233, i32 5, metadata !587, null}
!597 = metadata !{i32 786688, metadata !587, metadata !"j", metadata !32, i32 229, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!598 = metadata !{i32 233, i32 17, metadata !587, null}
!599 = metadata !{i32 233, i32 35, metadata !587, null}
!600 = metadata !{i32 233, i32 54, metadata !587, null}
!601 = metadata !{i32 233, i32 72, metadata !587, null}
!602 = metadata !{i32 234, i32 5, metadata !587, null}
!603 = metadata !{i32 234, i32 18, metadata !587, null}
!604 = metadata !{i32 234, i32 36, metadata !587, null}
!605 = metadata !{i32 236, i32 1, metadata !587, null}
!606 = metadata !{i32 786689, metadata !607, metadata !"buf", null, i32 239, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!607 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !32, i32 239, metadata !571, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 240} ; [ DW_TAG_subprogram ]
!608 = metadata !{i32 239, i32 30, metadata !607, null}
!609 = metadata !{i32 243, i32 16, metadata !610, null}
!610 = metadata !{i32 786443, metadata !611, i32 243, i32 11, metadata !32, i32 9} ; [ DW_TAG_lexical_block ]
!611 = metadata !{i32 786443, metadata !607, i32 240, i32 1, metadata !32, i32 8} ; [ DW_TAG_lexical_block ]
!612 = metadata !{i32 244, i32 6, metadata !613, null}
!613 = metadata !{i32 786443, metadata !610, i32 244, i32 5, metadata !32, i32 10} ; [ DW_TAG_lexical_block ]
!614 = metadata !{i32 250, i32 2, metadata !613, null}
!615 = metadata !{i32 786688, metadata !611, metadata !"a", metadata !32, i32 241, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!616 = metadata !{i32 250, i32 14, metadata !613, null}
!617 = metadata !{i32 786688, metadata !611, metadata !"b", metadata !32, i32 241, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!618 = metadata !{i32 250, i32 30, metadata !613, null}
!619 = metadata !{i32 786688, metadata !611, metadata !"c", metadata !32, i32 241, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!620 = metadata !{i32 250, i32 46, metadata !613, null}
!621 = metadata !{i32 786688, metadata !611, metadata !"d", metadata !32, i32 241, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!622 = metadata !{i32 251, i32 9, metadata !613, null}
!623 = metadata !{i32 786688, metadata !611, metadata !"e", metadata !32, i32 241, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!624 = metadata !{i32 786689, metadata !625, metadata !"x", metadata !32, i32 16777388, metadata !42, i32 0, metadata !628} ; [ DW_TAG_arg_variable ]
!625 = metadata !{i32 786478, i32 0, metadata !32, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !32, i32 172, metadata !626, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 173} ; [ DW_TAG_subprogram ]
!626 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !627, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!627 = metadata !{metadata !42, metadata !42}
!628 = metadata !{i32 252, i32 23, metadata !613, null}
!629 = metadata !{i32 172, i32 26, metadata !625, metadata !628}
!630 = metadata !{i32 174, i32 5, metadata !631, metadata !628}
!631 = metadata !{i32 786443, metadata !625, i32 173, i32 1, metadata !32, i32 0} ; [ DW_TAG_lexical_block ]
!632 = metadata !{i32 252, i32 54, metadata !613, null}
!633 = metadata !{i32 786689, metadata !625, metadata !"x", metadata !32, i32 16777388, metadata !42, i32 0, metadata !632} ; [ DW_TAG_arg_variable ]
!634 = metadata !{i32 172, i32 26, metadata !625, metadata !632}
!635 = metadata !{i32 174, i32 5, metadata !631, metadata !632}
!636 = metadata !{i32 253, i32 25, metadata !613, null}
!637 = metadata !{i32 786689, metadata !625, metadata !"x", metadata !32, i32 16777388, metadata !42, i32 0, metadata !636} ; [ DW_TAG_arg_variable ]
!638 = metadata !{i32 172, i32 26, metadata !625, metadata !636}
!639 = metadata !{i32 174, i32 5, metadata !631, metadata !636}
!640 = metadata !{i32 253, i32 56, metadata !613, null}
!641 = metadata !{i32 786689, metadata !625, metadata !"x", metadata !32, i32 16777388, metadata !42, i32 0, metadata !640} ; [ DW_TAG_arg_variable ]
!642 = metadata !{i32 172, i32 26, metadata !625, metadata !640}
!643 = metadata !{i32 174, i32 5, metadata !631, metadata !640}
!644 = metadata !{i32 243, i32 31, metadata !610, null}
!645 = metadata !{i32 786688, metadata !611, metadata !"i", metadata !32, i32 241, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!646 = metadata !{i32 255, i32 1, metadata !611, null}
!647 = metadata !{i32 790532, metadata !648, metadata !"rc", null, i32 258, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!648 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !32, i32 258, metadata !649, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 259} ; [ DW_TAG_subprogram ]
!649 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !650, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!650 = metadata !{null, metadata !49, metadata !49}
!651 = metadata !{i32 258, i32 44, metadata !648, null}
!652 = metadata !{i32 790544, metadata !648, metadata !"k", null, i32 258, metadata !58, i32 0, i32 0, metadata !653} ; [ DW_TAG_arg_variable_aggr_vec ]
!653 = metadata !{i32 786689, metadata !648, metadata !"k", null, i32 258, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!654 = metadata !{i32 258, i32 32, metadata !648, null}
!655 = metadata !{i32 262, i32 5, metadata !656, null}
!656 = metadata !{i32 786443, metadata !648, i32 259, i32 1, metadata !32, i32 11} ; [ DW_TAG_lexical_block ]
!657 = metadata !{i32 263, i32 5, metadata !656, null}
!658 = metadata !{i32 264, i32 5, metadata !656, null}
!659 = metadata !{i32 265, i32 5, metadata !656, null}
!660 = metadata !{i32 266, i32 5, metadata !656, null}
!661 = metadata !{i32 275, i32 2, metadata !662, null}
!662 = metadata !{i32 786443, metadata !663, i32 269, i32 5, metadata !32, i32 13} ; [ DW_TAG_lexical_block ]
!663 = metadata !{i32 786443, metadata !656, i32 268, i32 12, metadata !32, i32 12} ; [ DW_TAG_lexical_block ]
!664 = metadata !{i32 278, i32 5, metadata !656, null}
!665 = metadata !{i32 279, i32 5, metadata !656, null}
!666 = metadata !{i32 280, i32 5, metadata !656, null}
!667 = metadata !{i32 281, i32 5, metadata !656, null}
!668 = metadata !{i32 290, i32 2, metadata !669, null}
!669 = metadata !{i32 786443, metadata !670, i32 284, i32 5, metadata !32, i32 15} ; [ DW_TAG_lexical_block ]
!670 = metadata !{i32 786443, metadata !656, i32 283, i32 12, metadata !32, i32 14} ; [ DW_TAG_lexical_block ]
!671 = metadata !{i32 294, i32 1, metadata !656, null}
!672 = metadata !{i32 268, i32 16, metadata !663, null}
!673 = metadata !{i32 269, i32 6, metadata !662, null}
!674 = metadata !{i32 271, i32 1, metadata !662, null}
!675 = metadata !{i32 277, i32 5, metadata !662, null}
!676 = metadata !{i32 268, i32 31, metadata !663, null}
!677 = metadata !{i32 786688, metadata !656, metadata !"i", metadata !32, i32 260, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!678 = metadata !{i32 283, i32 16, metadata !670, null}
!679 = metadata !{i32 284, i32 6, metadata !669, null}
!680 = metadata !{i32 283, i32 32, metadata !670, null}
!681 = metadata !{i32 786689, metadata !682, metadata !"buf", null, i32 210, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!682 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !32, i32 210, metadata !683, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 211} ; [ DW_TAG_subprogram ]
!683 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !684, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!684 = metadata !{null, metadata !49, metadata !49, metadata !49}
!685 = metadata !{i32 210, i32 35, metadata !682, null}
!686 = metadata !{i32 790544, metadata !682, metadata !"ctx", null, i32 210, metadata !58, i32 0, i32 0, metadata !687, metadata !688} ; [ DW_TAG_arg_variable_aggr_vec ]
!687 = metadata !{i32 786689, metadata !682, metadata !"key", null, i32 210, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!688 = metadata !{i32 786689, metadata !682, metadata !"cpk", null, i32 210, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!689 = metadata !{i32 210, i32 49, metadata !682, null}
!690 = metadata !{i32 214, i32 13, metadata !691, null}
!691 = metadata !{i32 786443, metadata !682, i32 211, i32 1, metadata !32, i32 5} ; [ DW_TAG_lexical_block ]
!692 = metadata !{i32 786688, metadata !691, metadata !"i", metadata !32, i32 212, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!693 = metadata !{i32 215, i32 6, metadata !694, null}
!694 = metadata !{i32 786443, metadata !691, i32 215, i32 5, metadata !32, i32 6} ; [ DW_TAG_lexical_block ]
!695 = metadata !{i32 217, i32 1, metadata !694, null}
!696 = metadata !{i32 221, i32 2, metadata !694, null}
!697 = metadata !{i32 222, i32 5, metadata !694, null}
!698 = metadata !{i32 223, i32 1, metadata !691, null}
!699 = metadata !{i32 786689, metadata !700, metadata !"buf", null, i32 194, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!700 = metadata !{i32 786478, i32 0, metadata !32, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !32, i32 194, metadata !649, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !50, i32 195} ; [ DW_TAG_subprogram ]
!701 = metadata !{i32 194, i32 31, metadata !700, null}
!702 = metadata !{i32 790544, metadata !700, metadata !"key", null, i32 194, metadata !58, i32 0, i32 0, metadata !703} ; [ DW_TAG_arg_variable_aggr_vec ]
!703 = metadata !{i32 786689, metadata !700, metadata !"key", null, i32 194, metadata !539, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!704 = metadata !{i32 194, i32 45, metadata !700, null}
!705 = metadata !{i32 198, i32 14, metadata !706, null}
!706 = metadata !{i32 786443, metadata !700, i32 195, i32 1, metadata !32, i32 3} ; [ DW_TAG_lexical_block ]
!707 = metadata !{i32 205, i32 2, metadata !708, null}
!708 = metadata !{i32 786443, metadata !706, i32 199, i32 5, metadata !32, i32 4} ; [ DW_TAG_lexical_block ]
!709 = metadata !{i32 786688, metadata !706, metadata !"i", metadata !32, i32 196, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!710 = metadata !{i32 199, i32 6, metadata !708, null}
!711 = metadata !{i32 201, i32 1, metadata !708, null}
!712 = metadata !{i32 206, i32 5, metadata !708, null}
!713 = metadata !{i32 207, i32 1, metadata !706, null}
