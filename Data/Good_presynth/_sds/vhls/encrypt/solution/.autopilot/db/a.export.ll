; ModuleID = '/scratch/local/tmp.wBr2TBiwTt/_sds/vhls/encrypt/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@unroll_factor_sub = constant i32 13, align 4
@unroll_factor_mix = constant i32 1, align 4
@unroll_factor_exp2 = constant i32 2, align 4
@unroll_factor_exp1 = constant i32 2, align 4
@unroll_factor_ecb3 = constant i32 12, align 4
@unroll_factor_ecb2 = constant i32 1, align 4
@unroll_factor_ecb1 = constant i32 28, align 4
@unroll_factor_cpkey = constant i32 15, align 4
@unroll_factor_addkey = constant i32 15, align 4
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1
@pipeline_ii_sub = constant i32 9, align 4
@pipeline_ii_mix = constant i32 2, align 4
@pipeline_ii_exp2 = constant i32 2, align 4
@pipeline_ii_exp1 = constant i32 1, align 4
@pipeline_ii_ecb3 = constant i32 4, align 4
@pipeline_ii_ecb2 = constant i32 5, align 4
@pipeline_ii_ecb1 = constant i32 31, align 4
@pipeline_ii_cpkey = constant i32 2, align 4
@pipeline_ii_addkey = constant i32 4, align 4
@encrypt_str = internal unnamed_addr constant [8 x i8] c"encrypt\00"
@p_str9 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@p_str8 = private unnamed_addr constant [4 x i8] c"ctx\00", align 1
@p_str7 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1
@p_str4 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1
@p_str2 = private unnamed_addr constant [7 x i8] c"addkey\00", align 1
@p_str15 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1
@p_str14 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1
@p_str12 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str11 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1
@p_str10 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [4 x i8] c"sub\00", align 1

declare i256 @llvm.part.set.i256.i8(i256, i8, i32, i32) nounwind readnone

declare i1024 @llvm.part.set.i1024.i256(i1024, i256, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i256 @llvm.part.select.i256(i256, i32, i32) nounwind readnone

declare i1024 @llvm.part.select.i1024(i1024, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @encrypt(i1024* %ctx, i8* %buf_r, i32 %ctx_offset, [32 x i8]* %k, i32 %buf_offset) {
.preheader.preheader:
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  %ctx_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_offset)
  %ctx_offset1 = call i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32 %ctx_offset_read, i32 7, i32 31)
  %tmp_2 = zext i25 %ctx_offset1 to i32
  %ctx_addr = getelementptr i1024* %ctx, i32 %tmp_2
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %buf_r), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i1024* %ctx), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %k), !map !485
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt_str) nounwind
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecMemCore([32 x i8]* %k, [1 x i8]* @p_str1, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %k, [5 x i8]* @p_str12, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %k_addr = getelementptr [32 x i8]* %k, i32 0, i32 0
  %k_load = load i8* %k_addr, align 1
  %k_addr_1 = getelementptr [32 x i8]* %k, i32 0, i32 1
  %k_load_1 = load i8* %k_addr_1, align 1
  %k_addr_2 = getelementptr [32 x i8]* %k, i32 0, i32 2
  %k_load_2 = load i8* %k_addr_2, align 1
  %k_addr_3 = getelementptr [32 x i8]* %k, i32 0, i32 3
  %k_load_3 = load i8* %k_addr_3, align 1
  %k_addr_4 = getelementptr [32 x i8]* %k, i32 0, i32 4
  %k_load_4 = load i8* %k_addr_4, align 1
  %k_addr_5 = getelementptr [32 x i8]* %k, i32 0, i32 5
  %k_load_5 = load i8* %k_addr_5, align 1
  %k_addr_6 = getelementptr [32 x i8]* %k, i32 0, i32 6
  %k_load_6 = load i8* %k_addr_6, align 1
  %k_addr_7 = getelementptr [32 x i8]* %k, i32 0, i32 7
  %k_load_7 = load i8* %k_addr_7, align 1
  %k_addr_8 = getelementptr [32 x i8]* %k, i32 0, i32 8
  %k_load_8 = load i8* %k_addr_8, align 1
  %k_addr_9 = getelementptr [32 x i8]* %k, i32 0, i32 9
  %k_load_9 = load i8* %k_addr_9, align 1
  %k_addr_10 = getelementptr [32 x i8]* %k, i32 0, i32 10
  %k_load_10 = load i8* %k_addr_10, align 1
  %k_addr_11 = getelementptr [32 x i8]* %k, i32 0, i32 11
  %k_load_11 = load i8* %k_addr_11, align 1
  %k_addr_12 = getelementptr [32 x i8]* %k, i32 0, i32 12
  %k_load_12 = load i8* %k_addr_12, align 1
  %k_addr_13 = getelementptr [32 x i8]* %k, i32 0, i32 13
  %k_load_13 = load i8* %k_addr_13, align 1
  %k_addr_14 = getelementptr [32 x i8]* %k, i32 0, i32 14
  %k_load_14 = load i8* %k_addr_14, align 1
  %k_addr_15 = getelementptr [32 x i8]* %k, i32 0, i32 15
  %k_load_15 = load i8* %k_addr_15, align 1
  %k_addr_16 = getelementptr [32 x i8]* %k, i32 0, i32 16
  %k_load_16 = load i8* %k_addr_16, align 1
  %k_addr_17 = getelementptr [32 x i8]* %k, i32 0, i32 17
  %k_load_17 = load i8* %k_addr_17, align 1
  %k_addr_18 = getelementptr [32 x i8]* %k, i32 0, i32 18
  %k_load_18 = load i8* %k_addr_18, align 1
  %k_addr_19 = getelementptr [32 x i8]* %k, i32 0, i32 19
  %k_load_19 = load i8* %k_addr_19, align 1
  %k_addr_20 = getelementptr [32 x i8]* %k, i32 0, i32 20
  %k_load_20 = load i8* %k_addr_20, align 1
  %k_addr_21 = getelementptr [32 x i8]* %k, i32 0, i32 21
  %k_load_21 = load i8* %k_addr_21, align 1
  %k_addr_22 = getelementptr [32 x i8]* %k, i32 0, i32 22
  %k_load_22 = load i8* %k_addr_22, align 1
  %k_addr_23 = getelementptr [32 x i8]* %k, i32 0, i32 23
  %k_load_23 = load i8* %k_addr_23, align 1
  %k_addr_24 = getelementptr [32 x i8]* %k, i32 0, i32 24
  %k_load_24 = load i8* %k_addr_24, align 1
  %k_addr_25 = getelementptr [32 x i8]* %k, i32 0, i32 25
  %k_load_25 = load i8* %k_addr_25, align 1
  %k_addr_26 = getelementptr [32 x i8]* %k, i32 0, i32 26
  %k_load_26 = load i8* %k_addr_26, align 1
  %k_addr_27 = getelementptr [32 x i8]* %k, i32 0, i32 27
  %k_load_27 = load i8* %k_addr_27, align 1
  %k_addr_28 = getelementptr [32 x i8]* %k, i32 0, i32 28
  %k_load_28 = load i8* %k_addr_28, align 1
  %k_addr_29 = getelementptr [32 x i8]* %k, i32 0, i32 29
  %k_load_29 = load i8* %k_addr_29, align 1
  %k_addr_30 = getelementptr [32 x i8]* %k, i32 0, i32 30
  %k_load_30 = load i8* %k_addr_30, align 1
  %k_addr_31 = getelementptr [32 x i8]* %k, i32 0, i32 31
  %k_load_31 = load i8* %k_addr_31, align 1
  %gep1112_part_set_s = call i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i256(i256 0, i8 %k_load_31, i8 %k_load_30, i8 %k_load_29, i8 %k_load_28, i8 %k_load_27, i8 %k_load_26, i8 %k_load_25, i8 %k_load_24, i8 %k_load_23, i8 %k_load_22, i8 %k_load_21, i8 %k_load_20, i8 %k_load_19, i8 %k_load_18, i8 %k_load_17, i8 %k_load_16, i8 %k_load_15, i8 %k_load_14, i8 %k_load_13, i8 %k_load_12, i8 %k_load_11, i8 %k_load_10, i8 %k_load_9, i8 %k_load_8, i8 %k_load_7, i8 %k_load_6, i8 %k_load_5, i8 %k_load_4, i8 %k_load_3, i8 %k_load_2, i8 %k_load_1, i8 %k_load, i8 %k_load_31, i8 %k_load_30, i8 %k_load_29, i8 %k_load_28, i8 %k_load_27, i8 %k_load_26, i8 %k_load_25, i8 %k_load_24, i8 %k_load_23, i8 %k_load_22, i8 %k_load_21, i8 %k_load_20, i8 %k_load_19, i8 %k_load_18, i8 %k_load_17, i8 %k_load_16, i8 %k_load_15, i8 %k_load_14, i8 %k_load_13, i8 %k_load_12, i8 %k_load_11, i8 %k_load_10, i8 %k_load_9, i8 %k_load_8, i8 %k_load_7, i8 %k_load_6, i8 %k_load_5, i8 %k_load_4, i8 %k_load_3, i8 %k_load_2, i8 %k_load_1, i8 %k_load, i256 0)
  %ctx_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %ctx_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %ctx_addr, i1024 %gep1112_part_set_s, i128 79228162514264337589248983040)
  %ctx_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %ctx_addr)
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader.preheader
  %rcon = phi i8 [ %rcon_1, %0 ], [ 1, %.preheader.preheader ]
  %i = phi i3 [ %phitmp, %0 ], [ -1, %.preheader.preheader ]
  %tmp_7 = icmp eq i3 %i, 0
  br i1 %tmp_7, label %1, label %0

; <label>:0                                       ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str14) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str14)
  call void (...)* @_ssdm_op_SpecPipeline(i32 5, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %rcon_1 = call fastcc i8 @aes_expandEncKey.1(i1024* %ctx, i25 %ctx_offset1, i8 %rcon)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str14, i32 %tmp_1)
  %phitmp = add i3 %i, -1
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  call fastcc void @aes_addRoundKey_cpy(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1)
  br label %2

; <label>:2                                       ; preds = %47, %1
  %rcon_s = phi i8 [ 1, %1 ], [ %rcon_2_10, %47 ]
  %i_2 = phi i8 [ 1, %1 ], [ %i_4_s, %47 ]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %exitcond = icmp eq i8 %i_2, 14
  br i1 %exitcond, label %51, label %5

; <label>:3                                       ; preds = %6, %4
  %rcon_2 = phi i8 [ %tmp_4, %6 ], [ %rcon_s, %4 ]
  %exitcond_1 = icmp eq i8 %i_2, 13
  br i1 %exitcond_1, label %51, label %9

; <label>:4                                       ; preds = %5
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %3

; <label>:5                                       ; preds = %2
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str15) nounwind
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  %tmp = trunc i8 %i_2 to i1
  br i1 %tmp, label %4, label %6

; <label>:6                                       ; preds = %5
  %tmp_4 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_s)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %3

; <label>:7                                       ; preds = %10, %8
  %rcon_2_1 = phi i8 [ %tmp_5, %10 ], [ %rcon_2, %8 ]
  %exitcond_2 = icmp eq i8 %i_2, 12
  br i1 %exitcond_2, label %51, label %13

; <label>:8                                       ; preds = %9
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %7

; <label>:9                                       ; preds = %3
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %10, label %8

; <label>:10                                      ; preds = %9
  %tmp_5 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %7

; <label>:11                                      ; preds = %14, %12
  %rcon_2_2 = phi i8 [ %tmp_6, %14 ], [ %rcon_2_1, %12 ]
  %exitcond_3 = icmp eq i8 %i_2, 11
  br i1 %exitcond_3, label %51, label %17

; <label>:12                                      ; preds = %13
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %11

; <label>:13                                      ; preds = %7
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %12, label %14

; <label>:14                                      ; preds = %13
  %tmp_6 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_1)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %11

; <label>:15                                      ; preds = %18, %16
  %rcon_2_3 = phi i8 [ %tmp_8, %18 ], [ %rcon_2_2, %16 ]
  %exitcond_4 = icmp eq i8 %i_2, 10
  br i1 %exitcond_4, label %51, label %21

; <label>:16                                      ; preds = %17
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %15

; <label>:17                                      ; preds = %11
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %18, label %16

; <label>:18                                      ; preds = %17
  %tmp_8 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_2)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %15

; <label>:19                                      ; preds = %22, %20
  %rcon_2_4 = phi i8 [ %tmp_9, %22 ], [ %rcon_2_3, %20 ]
  %exitcond_5 = icmp eq i8 %i_2, 9
  br i1 %exitcond_5, label %51, label %25

; <label>:20                                      ; preds = %21
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %19

; <label>:21                                      ; preds = %15
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %20, label %22

; <label>:22                                      ; preds = %21
  %tmp_9 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_3)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %19

; <label>:23                                      ; preds = %26, %24
  %rcon_2_5 = phi i8 [ %tmp_s, %26 ], [ %rcon_2_4, %24 ]
  %exitcond_6 = icmp eq i8 %i_2, 8
  br i1 %exitcond_6, label %51, label %29

; <label>:24                                      ; preds = %25
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %23

; <label>:25                                      ; preds = %19
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %26, label %24

; <label>:26                                      ; preds = %25
  %tmp_s = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_4)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %23

; <label>:27                                      ; preds = %30, %28
  %rcon_2_6 = phi i8 [ %tmp_3, %30 ], [ %rcon_2_5, %28 ]
  %exitcond_7 = icmp eq i8 %i_2, 7
  br i1 %exitcond_7, label %51, label %33

; <label>:28                                      ; preds = %29
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %27

; <label>:29                                      ; preds = %23
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %28, label %30

; <label>:30                                      ; preds = %29
  %tmp_3 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_5)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %27

; <label>:31                                      ; preds = %34, %32
  %rcon_2_7 = phi i8 [ %tmp_10, %34 ], [ %rcon_2_6, %32 ]
  %exitcond_8 = icmp eq i8 %i_2, 6
  br i1 %exitcond_8, label %51, label %37

; <label>:32                                      ; preds = %33
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %31

; <label>:33                                      ; preds = %27
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %34, label %32

; <label>:34                                      ; preds = %33
  %tmp_10 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_6)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %31

; <label>:35                                      ; preds = %38, %36
  %rcon_2_8 = phi i8 [ %tmp_11, %38 ], [ %rcon_2_7, %36 ]
  %exitcond_9 = icmp eq i8 %i_2, 5
  br i1 %exitcond_9, label %51, label %41

; <label>:36                                      ; preds = %37
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %35

; <label>:37                                      ; preds = %31
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %36, label %38

; <label>:38                                      ; preds = %37
  %tmp_11 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_7)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %35

; <label>:39                                      ; preds = %42, %40
  %rcon_2_9 = phi i8 [ %tmp_12, %42 ], [ %rcon_2_8, %40 ]
  %exitcond_s = icmp eq i8 %i_2, 4
  br i1 %exitcond_s, label %51, label %45

; <label>:40                                      ; preds = %41
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %39

; <label>:41                                      ; preds = %35
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %42, label %40

; <label>:42                                      ; preds = %41
  %tmp_12 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_8)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %39

; <label>:43                                      ; preds = %46, %44
  %rcon_2_s = phi i8 [ %tmp_13, %46 ], [ %rcon_2_9, %44 ]
  %exitcond_10 = icmp eq i8 %i_2, 3
  br i1 %exitcond_10, label %51, label %49

; <label>:44                                      ; preds = %45
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %43

; <label>:45                                      ; preds = %39
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %44, label %46

; <label>:46                                      ; preds = %45
  %tmp_13 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_9)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %43

; <label>:47                                      ; preds = %50, %48
  %rcon_2_10 = phi i8 [ %tmp_14, %50 ], [ %rcon_2_s, %48 ]
  %i_4_s = add i8 %i_2, 12
  br label %2

; <label>:48                                      ; preds = %49
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 16)
  br label %47

; <label>:49                                      ; preds = %43
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp, label %50, label %48

; <label>:50                                      ; preds = %49
  %tmp_14 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_2_s)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  br label %47

; <label>:51                                      ; preds = %43, %39, %35, %31, %27, %23, %19, %15, %11, %7, %3, %2
  %rcon_1_lcssa = phi i8 [ %rcon_s, %2 ], [ %rcon_2, %3 ], [ %rcon_2_1, %7 ], [ %rcon_2_2, %11 ], [ %rcon_2_3, %15 ], [ %rcon_2_4, %19 ], [ %rcon_2_5, %23 ], [ %rcon_2_6, %27 ], [ %rcon_2_7, %31 ], [ %rcon_2_8, %35 ], [ %rcon_2_9, %39 ], [ %rcon_2_s, %43 ]
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  %empty_16 = call fastcc i8 @aes_expandEncKey(i1024* %ctx, i25 %ctx_offset1, i8 %rcon_1_lcssa)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i1024* %ctx, i25 %ctx_offset1, i6 0)
  ret void
}

define internal fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_1, %2 ]
  %tmp = icmp eq i5 %i, 0
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %i_1 = add i5 %i, -1
  %i_1_cast = sext i5 %i_1 to i8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 9, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_s = zext i8 %i_1_cast to i32
  %sum = add i32 %tmp_s, %buf_offset_read
  %buf_addr = getelementptr i8* %buf_r, i32 %sum
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_1 = zext i8 %buf_addr_read to i32
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1
  %sbox_load = load i8* %sbox_addr, align 1
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %sbox_load, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str, i32 %tmp_2)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  %sum = add i32 %buf_offset_read, 1
  %buf_addr = getelementptr i8* %buf_r, i32 %sum
  %i_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %i = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %sum1 = add i32 %buf_offset_read, 5
  %buf_addr_1 = getelementptr i8* %buf_r, i32 %sum1
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_1, i32 1)
  %buf_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_1)
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %buf_addr_1_read, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %sum2 = add i32 %buf_offset_read, 9
  %buf_addr_2 = getelementptr i8* %buf_r, i32 %sum2
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_2, i32 1)
  %buf_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_2)
  %buf_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_1, i8 %buf_addr_2_read, i1 true)
  %buf_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_1)
  %sum3 = add i32 %buf_offset_read, 13
  %buf_addr_3 = getelementptr i8* %buf_r, i32 %sum3
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_3, i32 1)
  %buf_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_3)
  %buf_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_2, i8 %buf_addr_3_read, i1 true)
  %buf_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_2)
  %buf_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_3, i8 %i, i1 true)
  %buf_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_3)
  %sum4 = add i32 %buf_offset_read, 10
  %buf_addr_4 = getelementptr i8* %buf_r, i32 %sum4
  %i_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_4, i32 1)
  %i_2 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_4)
  %sum5 = add i32 %buf_offset_read, 2
  %buf_addr_5 = getelementptr i8* %buf_r, i32 %sum5
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_5, i32 1)
  %buf_addr_5_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_5)
  %buf_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_4, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_4, i8 %buf_addr_5_read, i1 true)
  %buf_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_4)
  %buf_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_5, i8 %i_2, i1 true)
  %buf_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_5)
  %sum6 = add i32 %buf_offset_read, 3
  %buf_addr_6 = getelementptr i8* %buf_r, i32 %sum6
  %j_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_6, i32 1)
  %j = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_6)
  %sum7 = add i32 %buf_offset_read, 15
  %buf_addr_7 = getelementptr i8* %buf_r, i32 %sum7
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_7, i32 1)
  %buf_addr_7_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_7)
  %buf_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_6, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_6, i8 %buf_addr_7_read, i1 true)
  %buf_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_6)
  %sum8 = add i32 %buf_offset_read, 11
  %buf_addr_8 = getelementptr i8* %buf_r, i32 %sum8
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_8, i32 1)
  %buf_addr_8_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_8)
  %buf_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_7, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_7, i8 %buf_addr_8_read, i1 true)
  %buf_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_7)
  %sum9 = add i32 %buf_offset_read, 7
  %buf_addr_9 = getelementptr i8* %buf_r, i32 %sum9
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_9, i32 1)
  %buf_addr_9_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_9)
  %buf_addr_8_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_8, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_8, i8 %buf_addr_9_read, i1 true)
  %buf_addr_8_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_8)
  %buf_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_9, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_9, i8 %j, i1 true)
  %buf_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_9)
  %sum10 = add i32 %buf_offset_read, 14
  %buf_addr_10 = getelementptr i8* %buf_r, i32 %sum10
  %j_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_10, i32 1)
  %j_1 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_10)
  %sum11 = add i32 %buf_offset_read, 6
  %buf_addr_11 = getelementptr i8* %buf_r, i32 %sum11
  %buf_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_11, i32 1)
  %buf_addr_11_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_11)
  %buf_addr_10_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_10, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_10, i8 %buf_addr_11_read, i1 true)
  %buf_addr_10_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_10)
  %buf_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_11, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_11, i8 %j_1, i1 true)
  %buf_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_11)
  ret void
}

define internal fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_3, %2 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str4) nounwind
  %tmp_s = zext i5 %i to i32
  %tmp_8 = trunc i5 %i to i4
  %sum = add i32 %buf_offset_read, %tmp_s
  %buf_addr = getelementptr i8* %buf_r, i32 %sum
  %a_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %a = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_2 = or i4 %tmp_8, 1
  %tmp_2_cast = zext i4 %tmp_2 to i32
  %sum1 = add i32 %buf_offset_read, %tmp_2_cast
  %buf_addr_12 = getelementptr i8* %buf_r, i32 %sum1
  %b_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_12, i32 1)
  %b = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_12)
  %tmp_3 = or i4 %tmp_8, 2
  %tmp_3_cast = zext i4 %tmp_3 to i32
  %sum2 = add i32 %buf_offset_read, %tmp_3_cast
  %buf_addr_13 = getelementptr i8* %buf_r, i32 %sum2
  %c_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_13, i32 1)
  %c = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_13)
  %tmp_4 = or i4 %tmp_8, 3
  %tmp_4_cast = zext i4 %tmp_4 to i32
  %sum3 = add i32 %buf_offset_read, %tmp_4_cast
  %buf_addr_14 = getelementptr i8* %buf_r, i32 %sum3
  %d_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_14, i32 1)
  %d = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_14)
  %x_assign = xor i8 %b, %a
  %tmp_6 = xor i8 %c, %x_assign
  %e = xor i8 %d, %tmp_6
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7)
  %tmp_11 = shl i8 %x_assign, 1
  %tmp_2_i = xor i8 %tmp_11, 27
  %tmp_4_i = select i1 %tmp_10, i8 %tmp_2_i, i8 %tmp_11
  %tmp1 = xor i8 %tmp_4_i, %e
  %tmp_9 = xor i8 %tmp1, %a
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_9, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %x_assign_1 = xor i8 %c, %b
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7)
  %tmp_13 = shl i8 %x_assign_1, 1
  %tmp_2_i1 = xor i8 %tmp_13, 27
  %tmp_4_i1 = select i1 %tmp_12, i8 %tmp_2_i1, i8 %tmp_13
  %tmp2 = xor i8 %tmp_4_i1, %e
  %tmp_5 = xor i8 %tmp2, %b
  %buf_addr_12_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_12, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_12, i8 %tmp_5, i1 true)
  %buf_addr_12_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_12)
  %x_assign_2 = xor i8 %d, %c
  %tmp_14 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2, i32 7)
  %tmp_15 = shl i8 %x_assign_2, 1
  %tmp_2_i2 = xor i8 %tmp_15, 27
  %tmp_4_i2 = select i1 %tmp_14, i8 %tmp_2_i2, i8 %tmp_15
  %tmp3 = xor i8 %tmp_4_i2, %e
  %tmp_1 = xor i8 %tmp3, %c
  %buf_addr_13_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_13, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_13, i8 %tmp_1, i1 true)
  %buf_addr_13_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_13)
  %x_assign_3 = xor i8 %d, %a
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7)
  %tmp_17 = shl i8 %x_assign_3, 1
  %tmp_2_i3 = xor i8 %tmp_17, 27
  %tmp_4_i3 = select i1 %tmp_16, i8 %tmp_2_i3, i8 %tmp_17
  %tmp_7 = xor i8 %tmp_4_i3, %tmp_6
  %buf_addr_14_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_14, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_14, i8 %tmp_7, i1 true)
  %buf_addr_14_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_14)
  %i_3 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc i8 @aes_expandEncKey.1(i1024* %k, i25 %k_offset, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read)
  %k_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %k_offset)
  %k_offset_cast = zext i25 %k_offset_read to i32
  %k_addr = getelementptr i1024* %k, i32 %k_offset_cast
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %k_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %k_addr, i32 1)
  %k_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %k_addr)
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 744, i32 751)
  %tmp = zext i8 %tmp_3 to i32
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp
  %sbox_load = load i8* %sbox_addr, align 1
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 512, i32 519)
  %tmp1 = xor i8 %tmp_4, %rc_read_1
  %tmp_s = xor i8 %tmp1, %sbox_load
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 752, i32 759)
  %tmp_1 = zext i8 %tmp_6 to i32
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 520, i32 527)
  %tmp_2 = xor i8 %sbox_load_1, %tmp_7
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 760, i32 767)
  %tmp_15 = zext i8 %tmp_9 to i32
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_15
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %tmp_10 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 528, i32 535)
  %tmp_16 = xor i8 %sbox_load_2, %tmp_10
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 736, i32 743)
  %tmp_18 = zext i8 %tmp_12 to i32
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_18
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 536, i32 543)
  %tmp_20 = xor i8 %sbox_load_3, %tmp_13
  %tmp_21 = shl i8 %rc_read_1, 1
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7)
  %tmp_29_cast_cast = select i1 %tmp_22, i8 27, i8 0
  %tmp_23 = xor i8 %tmp_29_cast_cast, %tmp_21
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 544, i32 551)
  %tmp_24 = xor i8 %tmp_17, %tmp_s
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 552, i32 559)
  %tmp_25 = xor i8 %tmp_19, %tmp_2
  %tmp_26 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 560, i32 567)
  %tmp_27 = xor i8 %tmp_26, %tmp_16
  %tmp_28 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 568, i32 575)
  %tmp_29 = xor i8 %tmp_28, %tmp_20
  %tmp_30 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 576, i32 583)
  %tmp_36_1 = xor i8 %tmp_30, %tmp_24
  %tmp_31 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 584, i32 591)
  %tmp_39_1 = xor i8 %tmp_31, %tmp_25
  %tmp_32 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 592, i32 599)
  %tmp_42_1 = xor i8 %tmp_32, %tmp_27
  %tmp_33 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 600, i32 607)
  %tmp_45_1 = xor i8 %tmp_33, %tmp_29
  %tmp_34 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 608, i32 615)
  %tmp_36_2 = xor i8 %tmp_34, %tmp_36_1
  %tmp_35 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 616, i32 623)
  %tmp_39_2 = xor i8 %tmp_35, %tmp_39_1
  %tmp_36 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 624, i32 631)
  %tmp_42_2 = xor i8 %tmp_36, %tmp_42_1
  %tmp_37 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 632, i32 639)
  %tmp_45_2 = xor i8 %tmp_37, %tmp_45_1
  %tmp_38 = zext i8 %tmp_36_2 to i32
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_38
  %sbox_load_4 = load i8* %sbox_addr_4, align 1
  %tmp_39 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 640, i32 647)
  %tmp_40 = xor i8 %sbox_load_4, %tmp_39
  %tmp_41 = zext i8 %tmp_39_2 to i32
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_41
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %tmp_42 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 648, i32 655)
  %tmp_43 = xor i8 %sbox_load_5, %tmp_42
  %tmp_44 = zext i8 %tmp_42_2 to i32
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_44
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %tmp_45 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 656, i32 663)
  %tmp_46 = xor i8 %sbox_load_6, %tmp_45
  %tmp_47 = zext i8 %tmp_45_2 to i32
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_47
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %tmp_48 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 664, i32 671)
  %tmp_49 = xor i8 %sbox_load_7, %tmp_48
  %tmp_50 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 672, i32 679)
  %tmp_51 = xor i8 %tmp_50, %tmp_40
  %tmp_52 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 680, i32 687)
  %tmp_53 = xor i8 %tmp_52, %tmp_43
  %tmp_54 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 688, i32 695)
  %tmp_55 = xor i8 %tmp_54, %tmp_46
  %tmp_56 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 696, i32 703)
  %tmp_57 = xor i8 %tmp_56, %tmp_49
  %tmp_58 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 704, i32 711)
  %tmp_57_1 = xor i8 %tmp_58, %tmp_51
  %tmp_59 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 712, i32 719)
  %tmp_60_1 = xor i8 %tmp_59, %tmp_53
  %tmp_60 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 720, i32 727)
  %tmp_63_1 = xor i8 %tmp_60, %tmp_55
  %tmp_61 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 728, i32 735)
  %tmp_66_1 = xor i8 %tmp_61, %tmp_57
  %tmp_57_2 = xor i8 %tmp_12, %tmp_57_1
  %tmp_60_2 = xor i8 %tmp_3, %tmp_60_1
  %tmp_63_2 = xor i8 %tmp_6, %tmp_63_1
  %tmp_66_2 = xor i8 %tmp_9, %tmp_66_1
  %gep11011_part_set_2 = call i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i512(i256 0, i8 %tmp_66_2, i8 %tmp_63_2, i8 %tmp_60_2, i8 %tmp_57_2, i8 %tmp_66_1, i8 %tmp_63_1, i8 %tmp_60_1, i8 %tmp_57_1, i8 %tmp_57, i8 %tmp_55, i8 %tmp_53, i8 %tmp_51, i8 %tmp_49, i8 %tmp_46, i8 %tmp_43, i8 %tmp_40, i8 %tmp_45_2, i8 %tmp_42_2, i8 %tmp_39_2, i8 %tmp_36_2, i8 %tmp_45_1, i8 %tmp_42_1, i8 %tmp_39_1, i8 %tmp_36_1, i8 %tmp_29, i8 %tmp_27, i8 %tmp_25, i8 %tmp_24, i8 %tmp_20, i8 %tmp_16, i8 %tmp_2, i8 %tmp_s, i512 0)
  %k_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set_2, i128 79228162495817593519834398720)
  %k_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr)
  ret i8 %tmp_23
}

define internal fastcc i8 @aes_expandEncKey(i1024* %k, i25 %k_offset, i8 %rc_read) {
  %rc_read_2 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read)
  %k_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %k_offset)
  %k_offset_cast = zext i25 %k_offset_read to i32
  %k_addr = getelementptr i1024* %k, i32 %k_offset_cast
  call void (...)* @_ssdm_op_SpecInterface(i1024* %k, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %k_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %k_addr, i32 1)
  %k_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %k_addr)
  %tmp_29 = trunc i1024 %k_addr_read to i256
  %tmp_62 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 232, i32 239)
  %tmp = zext i8 %tmp_62 to i32
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp
  %sbox_load = load i8* %sbox_addr, align 1
  %tmp_30 = trunc i1024 %k_addr_read to i8
  %tmp1 = xor i8 %tmp_30, %rc_read_2
  %tmp_22 = xor i8 %tmp1, %sbox_load
  %tmp_s = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_29, i8 %tmp_22, i32 0, i32 7)
  %tmp_64 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 240, i32 247)
  %tmp_23 = zext i8 %tmp_64 to i32
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_23
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %tmp_65 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 8, i32 15)
  %tmp_24 = xor i8 %sbox_load_1, %tmp_65
  %tmp_67 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_s, i8 %tmp_24, i32 8, i32 15)
  %tmp_68 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 248, i32 255)
  %tmp_25 = zext i8 %tmp_68 to i32
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_25
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %tmp_69 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 16, i32 23)
  %tmp_26 = xor i8 %sbox_load_2, %tmp_69
  %tmp_70 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_67, i8 %tmp_26, i32 16, i32 23)
  %tmp_71 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 224, i32 231)
  %tmp_27 = zext i8 %tmp_71 to i32
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_27
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %tmp_72 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %k_addr_read, i32 24, i32 31)
  %tmp_28 = xor i8 %sbox_load_3, %tmp_72
  %tmp_73 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_70, i8 %tmp_28, i32 24, i32 31)
  %gep25188190_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %k_addr_read, i256 %tmp_73, i32 0, i32 255)
  %tmp_31 = shl i8 %rc_read_2, 1
  %tmp_33 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_2, i32 7)
  %tmp_31_cast_cast = select i1 %tmp_33, i8 27, i8 0
  %tmp_32 = xor i8 %tmp_31_cast_cast, %tmp_31
  br label %1

; <label>:1                                       ; preds = %2, %0
  %p_new1 = phi i1024 [ %gep25188190_part_set, %0 ], [ %gep17128130_part_set, %2 ]
  %i = phi i5 [ 4, %0 ], [ %i_4, %2 ]
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  br i1 %tmp_34, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str5) nounwind
  %tmp_86 = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_37 = trunc i5 %i to i4
  %tmp_87 = add i4 -4, %tmp_37
  %tmp_38 = trunc i1024 %p_new1 to i256
  %tmp_88 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_87, i3 0)
  %tmp_89 = or i7 %tmp_88, 7
  %tmp_40 = icmp ugt i7 %tmp_88, %tmp_89
  %tmp_41 = zext i7 %tmp_88 to i9
  %tmp_43 = zext i7 %tmp_89 to i9
  %tmp_44 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %p_new1, i32 255, i32 0)
  %tmp_54 = sub i9 %tmp_41, %tmp_43
  %tmp_55 = xor i9 %tmp_41, 255
  %tmp_56 = sub i9 %tmp_43, %tmp_41
  %tmp_58 = select i1 %tmp_40, i9 %tmp_54, i9 %tmp_56
  %tmp_59 = select i1 %tmp_40, i256 %tmp_44, i256 %tmp_38
  %tmp_61 = select i1 %tmp_40, i9 %tmp_55, i9 %tmp_41
  %tmp_90 = sub i9 255, %tmp_58
  %tmp_91 = zext i9 %tmp_61 to i256
  %tmp_92 = zext i9 %tmp_90 to i256
  %tmp_93 = lshr i256 %tmp_59, %tmp_91
  %tmp_94 = lshr i256 -1, %tmp_92
  %tmp_95 = and i256 %tmp_93, %tmp_94
  %tmp_96 = trunc i256 %tmp_95 to i8
  %tmp_97 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_37, i3 0)
  %tmp_98 = or i7 %tmp_97, 7
  %tmp_99 = icmp ugt i7 %tmp_97, %tmp_98
  %tmp_100 = zext i7 %tmp_97 to i9
  %tmp_101 = zext i7 %tmp_98 to i9
  %tmp_102 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %p_new1, i32 255, i32 0)
  %tmp_103 = sub i9 %tmp_100, %tmp_101
  %tmp_104 = xor i9 %tmp_100, 255
  %tmp_105 = sub i9 %tmp_101, %tmp_100
  %tmp_106 = select i1 %tmp_99, i9 %tmp_103, i9 %tmp_105
  %tmp_107 = select i1 %tmp_99, i256 %tmp_102, i256 %tmp_38
  %tmp_108 = select i1 %tmp_99, i9 %tmp_104, i9 %tmp_100
  %tmp_109 = sub i9 255, %tmp_106
  %tmp_110 = zext i9 %tmp_108 to i256
  %tmp_111 = zext i9 %tmp_109 to i256
  %tmp_115 = lshr i256 %tmp_107, %tmp_110
  %tmp_119 = lshr i256 -1, %tmp_111
  %tmp_120 = and i256 %tmp_115, %tmp_119
  %tmp_124 = trunc i256 %tmp_120 to i8
  %tmp_36 = xor i8 %tmp_124, %tmp_96
  %tmp_128 = icmp ugt i7 %tmp_97, %tmp_98
  %tmp_129 = zext i7 %tmp_97 to i9
  %tmp_133 = zext i7 %tmp_98 to i9
  %tmp_137 = zext i8 %tmp_36 to i256
  %tmp_138 = xor i9 %tmp_129, 255
  %tmp_139 = select i1 %tmp_128, i9 %tmp_129, i9 %tmp_133
  %tmp_140 = select i1 %tmp_128, i9 %tmp_133, i9 %tmp_129
  %tmp_141 = select i1 %tmp_128, i9 %tmp_138, i9 %tmp_129
  %tmp_142 = xor i9 %tmp_139, 255
  %tmp_143 = zext i9 %tmp_141 to i256
  %tmp_144 = zext i9 %tmp_140 to i256
  %tmp_145 = zext i9 %tmp_142 to i256
  %tmp_146 = shl i256 %tmp_137, %tmp_143
  %tmp_147 = call i256 @llvm.part.select.i256(i256 %tmp_146, i32 255, i32 0)
  %tmp_148 = select i1 %tmp_128, i256 %tmp_147, i256 %tmp_146
  %tmp_149 = shl i256 -1, %tmp_144
  %tmp_150 = lshr i256 -1, %tmp_145
  %p_demorgan = and i256 %tmp_149, %tmp_150
  %tmp_154 = xor i256 %p_demorgan, -1
  %tmp_157 = and i256 %tmp_38, %tmp_154
  %tmp_158 = and i256 %tmp_148, %p_demorgan
  %tmp_162 = or i256 %tmp_157, %tmp_158
  %tmp_112 = add i4 -3, %tmp_37
  %tmp_113 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_112, i3 0)
  %tmp_114 = or i7 %tmp_113, 7
  %tmp_166 = icmp ugt i7 %tmp_113, %tmp_114
  %tmp_167 = zext i7 %tmp_113 to i9
  %tmp_171 = zext i7 %tmp_114 to i9
  %tmp_175 = call i256 @llvm.part.select.i256(i256 %tmp_162, i32 255, i32 0)
  %tmp_176 = sub i9 %tmp_167, %tmp_171
  %tmp_180 = xor i9 %tmp_167, 255
  %tmp_184 = sub i9 %tmp_171, %tmp_167
  %tmp_185 = select i1 %tmp_166, i9 %tmp_176, i9 %tmp_184
  %tmp_186 = select i1 %tmp_166, i256 %tmp_175, i256 %tmp_162
  %tmp_189 = select i1 %tmp_166, i9 %tmp_180, i9 %tmp_167
  %tmp_190 = sub i9 255, %tmp_185
  %tmp_191 = zext i9 %tmp_189 to i256
  %tmp_193 = zext i9 %tmp_190 to i256
  %tmp_195 = lshr i256 %tmp_186, %tmp_191
  %tmp_196 = lshr i256 -1, %tmp_193
  %tmp_197 = and i256 %tmp_195, %tmp_196
  %tmp_199 = trunc i256 %tmp_197 to i8
  %tmp_116 = or i4 %tmp_37, 1
  %tmp_117 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_116, i3 0)
  %tmp_118 = or i7 %tmp_117, 7
  %tmp_201 = icmp ugt i7 %tmp_117, %tmp_118
  %tmp_202 = zext i7 %tmp_117 to i9
  %tmp_203 = zext i7 %tmp_118 to i9
  %tmp_205 = call i256 @llvm.part.select.i256(i256 %tmp_162, i32 255, i32 0)
  %tmp_207 = sub i9 %tmp_202, %tmp_203
  %tmp_208 = xor i9 %tmp_202, 255
  %tmp_209 = sub i9 %tmp_203, %tmp_202
  %tmp_210 = select i1 %tmp_201, i9 %tmp_207, i9 %tmp_209
  %tmp_211 = select i1 %tmp_201, i256 %tmp_205, i256 %tmp_162
  %tmp_212 = select i1 %tmp_201, i9 %tmp_208, i9 %tmp_202
  %tmp_213 = sub i9 255, %tmp_210
  %tmp_214 = zext i9 %tmp_212 to i256
  %tmp_215 = zext i9 %tmp_213 to i256
  %tmp_216 = lshr i256 %tmp_211, %tmp_214
  %tmp_217 = lshr i256 -1, %tmp_215
  %tmp_218 = and i256 %tmp_216, %tmp_217
  %tmp_219 = trunc i256 %tmp_218 to i8
  %tmp_39 = xor i8 %tmp_219, %tmp_199
  %tmp_220 = icmp ugt i7 %tmp_117, %tmp_118
  %tmp_221 = zext i7 %tmp_117 to i9
  %tmp_222 = zext i7 %tmp_118 to i9
  %tmp_223 = zext i8 %tmp_39 to i256
  %tmp_224 = xor i9 %tmp_221, 255
  %tmp_225 = select i1 %tmp_220, i9 %tmp_221, i9 %tmp_222
  %tmp_226 = select i1 %tmp_220, i9 %tmp_222, i9 %tmp_221
  %tmp_227 = select i1 %tmp_220, i9 %tmp_224, i9 %tmp_221
  %tmp_228 = xor i9 %tmp_225, 255
  %tmp_229 = zext i9 %tmp_227 to i256
  %tmp_230 = zext i9 %tmp_226 to i256
  %tmp_231 = zext i9 %tmp_228 to i256
  %tmp_232 = shl i256 %tmp_223, %tmp_229
  %tmp_233 = call i256 @llvm.part.select.i256(i256 %tmp_232, i32 255, i32 0)
  %tmp_234 = select i1 %tmp_220, i256 %tmp_233, i256 %tmp_232
  %tmp_235 = shl i256 -1, %tmp_230
  %tmp_236 = lshr i256 -1, %tmp_231
  %p_demorgan1 = and i256 %tmp_235, %tmp_236
  %tmp_237 = xor i256 %p_demorgan1, -1
  %tmp_238 = and i256 %tmp_162, %tmp_237
  %tmp_239 = and i256 %tmp_234, %p_demorgan1
  %tmp_240 = or i256 %tmp_238, %tmp_239
  %tmp_121 = add i4 -2, %tmp_37
  %tmp_122 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_121, i3 0)
  %tmp_123 = or i7 %tmp_122, 7
  %tmp_241 = icmp ugt i7 %tmp_122, %tmp_123
  %tmp_242 = zext i7 %tmp_122 to i9
  %tmp_243 = zext i7 %tmp_123 to i9
  %tmp_244 = call i256 @llvm.part.select.i256(i256 %tmp_240, i32 255, i32 0)
  %tmp_245 = sub i9 %tmp_242, %tmp_243
  %tmp_246 = xor i9 %tmp_242, 255
  %tmp_247 = sub i9 %tmp_243, %tmp_242
  %tmp_248 = select i1 %tmp_241, i9 %tmp_245, i9 %tmp_247
  %tmp_249 = select i1 %tmp_241, i256 %tmp_244, i256 %tmp_240
  %tmp_250 = select i1 %tmp_241, i9 %tmp_246, i9 %tmp_242
  %tmp_251 = sub i9 255, %tmp_248
  %tmp_252 = zext i9 %tmp_250 to i256
  %tmp_253 = zext i9 %tmp_251 to i256
  %tmp_254 = lshr i256 %tmp_249, %tmp_252
  %tmp_255 = lshr i256 -1, %tmp_253
  %tmp_256 = and i256 %tmp_254, %tmp_255
  %tmp_257 = trunc i256 %tmp_256 to i8
  %tmp_125 = or i4 %tmp_37, 2
  %tmp_126 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_125, i3 0)
  %tmp_127 = or i7 %tmp_126, 7
  %tmp_258 = icmp ugt i7 %tmp_126, %tmp_127
  %tmp_259 = zext i7 %tmp_126 to i9
  %tmp_260 = zext i7 %tmp_127 to i9
  %tmp_261 = call i256 @llvm.part.select.i256(i256 %tmp_240, i32 255, i32 0)
  %tmp_262 = sub i9 %tmp_259, %tmp_260
  %tmp_263 = xor i9 %tmp_259, 255
  %tmp_264 = sub i9 %tmp_260, %tmp_259
  %tmp_265 = select i1 %tmp_258, i9 %tmp_262, i9 %tmp_264
  %tmp_266 = select i1 %tmp_258, i256 %tmp_261, i256 %tmp_240
  %tmp_267 = select i1 %tmp_258, i9 %tmp_263, i9 %tmp_259
  %tmp_268 = sub i9 255, %tmp_265
  %tmp_269 = zext i9 %tmp_267 to i256
  %tmp_270 = zext i9 %tmp_268 to i256
  %tmp_271 = lshr i256 %tmp_266, %tmp_269
  %tmp_272 = lshr i256 -1, %tmp_270
  %tmp_273 = and i256 %tmp_271, %tmp_272
  %tmp_274 = trunc i256 %tmp_273 to i8
  %tmp_42 = xor i8 %tmp_274, %tmp_257
  %tmp_275 = icmp ugt i7 %tmp_126, %tmp_127
  %tmp_276 = zext i7 %tmp_126 to i9
  %tmp_277 = zext i7 %tmp_127 to i9
  %tmp_278 = zext i8 %tmp_42 to i256
  %tmp_279 = xor i9 %tmp_276, 255
  %tmp_280 = select i1 %tmp_275, i9 %tmp_276, i9 %tmp_277
  %tmp_281 = select i1 %tmp_275, i9 %tmp_277, i9 %tmp_276
  %tmp_282 = select i1 %tmp_275, i9 %tmp_279, i9 %tmp_276
  %tmp_283 = xor i9 %tmp_280, 255
  %tmp_284 = zext i9 %tmp_282 to i256
  %tmp_285 = zext i9 %tmp_281 to i256
  %tmp_286 = zext i9 %tmp_283 to i256
  %tmp_287 = shl i256 %tmp_278, %tmp_284
  %tmp_288 = call i256 @llvm.part.select.i256(i256 %tmp_287, i32 255, i32 0)
  %tmp_289 = select i1 %tmp_275, i256 %tmp_288, i256 %tmp_287
  %tmp_290 = shl i256 -1, %tmp_285
  %tmp_291 = lshr i256 -1, %tmp_286
  %p_demorgan2 = and i256 %tmp_290, %tmp_291
  %tmp_292 = xor i256 %p_demorgan2, -1
  %tmp_293 = and i256 %tmp_240, %tmp_292
  %tmp_294 = and i256 %tmp_289, %p_demorgan2
  %tmp_295 = or i256 %tmp_293, %tmp_294
  %tmp_130 = add i4 -1, %tmp_37
  %tmp_131 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_130, i3 0)
  %tmp_132 = or i7 %tmp_131, 7
  %tmp_296 = icmp ugt i7 %tmp_131, %tmp_132
  %tmp_297 = zext i7 %tmp_131 to i9
  %tmp_298 = zext i7 %tmp_132 to i9
  %tmp_299 = call i256 @llvm.part.select.i256(i256 %tmp_295, i32 255, i32 0)
  %tmp_300 = sub i9 %tmp_297, %tmp_298
  %tmp_301 = xor i9 %tmp_297, 255
  %tmp_302 = sub i9 %tmp_298, %tmp_297
  %tmp_303 = select i1 %tmp_296, i9 %tmp_300, i9 %tmp_302
  %tmp_304 = select i1 %tmp_296, i256 %tmp_299, i256 %tmp_295
  %tmp_305 = select i1 %tmp_296, i9 %tmp_301, i9 %tmp_297
  %tmp_306 = sub i9 255, %tmp_303
  %tmp_307 = zext i9 %tmp_305 to i256
  %tmp_308 = zext i9 %tmp_306 to i256
  %tmp_309 = lshr i256 %tmp_304, %tmp_307
  %tmp_310 = lshr i256 -1, %tmp_308
  %tmp_311 = and i256 %tmp_309, %tmp_310
  %tmp_312 = trunc i256 %tmp_311 to i8
  %tmp_134 = or i4 %tmp_37, 3
  %tmp_135 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_134, i3 0)
  %tmp_136 = or i7 %tmp_135, 7
  %tmp_313 = icmp ugt i7 %tmp_135, %tmp_136
  %tmp_314 = zext i7 %tmp_135 to i9
  %tmp_315 = zext i7 %tmp_136 to i9
  %tmp_316 = call i256 @llvm.part.select.i256(i256 %tmp_295, i32 255, i32 0)
  %tmp_317 = sub i9 %tmp_314, %tmp_315
  %tmp_318 = xor i9 %tmp_314, 255
  %tmp_319 = sub i9 %tmp_315, %tmp_314
  %tmp_320 = select i1 %tmp_313, i9 %tmp_317, i9 %tmp_319
  %tmp_321 = select i1 %tmp_313, i256 %tmp_316, i256 %tmp_295
  %tmp_322 = select i1 %tmp_313, i9 %tmp_318, i9 %tmp_314
  %tmp_323 = sub i9 255, %tmp_320
  %tmp_324 = zext i9 %tmp_322 to i256
  %tmp_325 = zext i9 %tmp_323 to i256
  %tmp_326 = lshr i256 %tmp_321, %tmp_324
  %tmp_327 = lshr i256 -1, %tmp_325
  %tmp_328 = and i256 %tmp_326, %tmp_327
  %tmp_329 = trunc i256 %tmp_328 to i8
  %tmp_45 = xor i8 %tmp_329, %tmp_312
  %tmp_330 = icmp ugt i7 %tmp_135, %tmp_136
  %tmp_331 = zext i7 %tmp_135 to i9
  %tmp_332 = zext i7 %tmp_136 to i9
  %tmp_333 = zext i8 %tmp_45 to i256
  %tmp_334 = xor i9 %tmp_331, 255
  %tmp_335 = select i1 %tmp_330, i9 %tmp_331, i9 %tmp_332
  %tmp_336 = select i1 %tmp_330, i9 %tmp_332, i9 %tmp_331
  %tmp_337 = select i1 %tmp_330, i9 %tmp_334, i9 %tmp_331
  %tmp_338 = xor i9 %tmp_335, 255
  %tmp_339 = zext i9 %tmp_337 to i256
  %tmp_340 = zext i9 %tmp_336 to i256
  %tmp_341 = zext i9 %tmp_338 to i256
  %tmp_342 = shl i256 %tmp_333, %tmp_339
  %tmp_343 = call i256 @llvm.part.select.i256(i256 %tmp_342, i32 255, i32 0)
  %tmp_344 = select i1 %tmp_330, i256 %tmp_343, i256 %tmp_342
  %tmp_345 = shl i256 -1, %tmp_340
  %tmp_346 = lshr i256 -1, %tmp_341
  %p_demorgan3 = and i256 %tmp_345, %tmp_346
  %tmp_347 = xor i256 %p_demorgan3, -1
  %tmp_348 = and i256 %tmp_295, %tmp_347
  %tmp_349 = and i256 %tmp_344, %p_demorgan3
  %tmp_350 = or i256 %tmp_348, %tmp_349
  %gep17128130_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %p_new1, i256 %tmp_350, i32 0, i32 255)
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str5, i32 %tmp_86)
  %i_4 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  %tmp_35 = trunc i1024 %p_new1 to i256
  %tmp_74 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 96, i32 103)
  %tmp_46 = zext i8 %tmp_74 to i32
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_46
  %sbox_load_4 = load i8* %sbox_addr_4, align 1
  %tmp_75 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 128, i32 135)
  %tmp_47 = xor i8 %sbox_load_4, %tmp_75
  %tmp_76 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_35, i8 %tmp_47, i32 128, i32 135)
  %tmp_77 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 104, i32 111)
  %tmp_48 = zext i8 %tmp_77 to i32
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_48
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %tmp_78 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 136, i32 143)
  %tmp_49 = xor i8 %sbox_load_5, %tmp_78
  %tmp_79 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_76, i8 %tmp_49, i32 136, i32 143)
  %tmp_80 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 112, i32 119)
  %tmp_50 = zext i8 %tmp_80 to i32
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_50
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %tmp_81 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 144, i32 151)
  %tmp_51 = xor i8 %sbox_load_6, %tmp_81
  %tmp_82 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_79, i8 %tmp_51, i32 144, i32 151)
  %tmp_83 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 120, i32 127)
  %tmp_52 = zext i8 %tmp_83 to i32
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_52
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %tmp_84 = call i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024 %p_new1, i32 152, i32 159)
  %tmp_53 = xor i8 %sbox_load_7, %tmp_84
  %tmp_85 = call i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256 %tmp_82, i8 %tmp_53, i32 152, i32 159)
  %gep96870_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %p_new1, i256 %tmp_85, i32 0, i32 255)
  %k_addr_req5 = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep96870_part_set, i128 -1)
  %k_addr_resp6 = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr)
  br label %4

; <label>:4                                       ; preds = %6, %3
  %gep = phi i1024 [ %gep96870_part_set, %3 ], [ %gep11011_part_set_1, %6 ]
  %i_1 = phi i6 [ 20, %3 ], [ %i_9_1, %6 ]
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %tmp_351 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5)
  br i1 %tmp_351, label %7, label %5

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind
  %tmp_352 = trunc i6 %i_1 to i5
  %tmp_151 = add i5 -4, %tmp_352
  %tmp_353 = trunc i1024 %gep to i256
  %tmp_152 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_151, i3 0)
  %tmp_153 = or i8 %tmp_152, 7
  %tmp_354 = icmp ugt i8 %tmp_152, %tmp_153
  %tmp_355 = zext i8 %tmp_152 to i9
  %tmp_356 = zext i8 %tmp_153 to i9
  %tmp_357 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 255, i32 0)
  %tmp_358 = sub i9 %tmp_355, %tmp_356
  %tmp_359 = xor i9 %tmp_355, 255
  %tmp_360 = sub i9 %tmp_356, %tmp_355
  %tmp_361 = select i1 %tmp_354, i9 %tmp_358, i9 %tmp_360
  %tmp_362 = select i1 %tmp_354, i256 %tmp_357, i256 %tmp_353
  %tmp_363 = select i1 %tmp_354, i9 %tmp_359, i9 %tmp_355
  %tmp_364 = sub i9 255, %tmp_361
  %tmp_365 = zext i9 %tmp_363 to i256
  %tmp_366 = zext i9 %tmp_364 to i256
  %tmp_367 = lshr i256 %tmp_362, %tmp_365
  %tmp_368 = lshr i256 -1, %tmp_366
  %tmp_369 = and i256 %tmp_367, %tmp_368
  %tmp_370 = trunc i256 %tmp_369 to i8
  %tmp_155 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_352, i3 0)
  %tmp_156 = or i8 %tmp_155, 7
  %tmp_371 = icmp ugt i8 %tmp_155, %tmp_156
  %tmp_372 = zext i8 %tmp_155 to i9
  %tmp_373 = zext i8 %tmp_156 to i9
  %tmp_374 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %gep, i32 255, i32 0)
  %tmp_375 = sub i9 %tmp_372, %tmp_373
  %tmp_376 = xor i9 %tmp_372, 255
  %tmp_377 = sub i9 %tmp_373, %tmp_372
  %tmp_378 = select i1 %tmp_371, i9 %tmp_375, i9 %tmp_377
  %tmp_379 = select i1 %tmp_371, i256 %tmp_374, i256 %tmp_353
  %tmp_380 = select i1 %tmp_371, i9 %tmp_376, i9 %tmp_372
  %tmp_381 = sub i9 255, %tmp_378
  %tmp_382 = zext i9 %tmp_380 to i256
  %tmp_383 = zext i9 %tmp_381 to i256
  %tmp_384 = lshr i256 %tmp_379, %tmp_382
  %tmp_385 = lshr i256 -1, %tmp_383
  %tmp_386 = and i256 %tmp_384, %tmp_385
  %tmp_387 = trunc i256 %tmp_386 to i8
  %tmp_57 = xor i8 %tmp_387, %tmp_370
  %tmp_388 = icmp ugt i8 %tmp_155, %tmp_156
  %tmp_389 = zext i8 %tmp_155 to i9
  %tmp_390 = zext i8 %tmp_156 to i9
  %tmp_391 = zext i8 %tmp_57 to i256
  %tmp_392 = xor i9 %tmp_389, 255
  %tmp_393 = select i1 %tmp_388, i9 %tmp_389, i9 %tmp_390
  %tmp_394 = select i1 %tmp_388, i9 %tmp_390, i9 %tmp_389
  %tmp_395 = select i1 %tmp_388, i9 %tmp_392, i9 %tmp_389
  %tmp_396 = xor i9 %tmp_393, 255
  %tmp_397 = zext i9 %tmp_395 to i256
  %tmp_398 = zext i9 %tmp_394 to i256
  %tmp_399 = zext i9 %tmp_396 to i256
  %tmp_400 = shl i256 %tmp_391, %tmp_397
  %tmp_401 = call i256 @llvm.part.select.i256(i256 %tmp_400, i32 255, i32 0)
  %tmp_402 = select i1 %tmp_388, i256 %tmp_401, i256 %tmp_400
  %tmp_403 = shl i256 -1, %tmp_398
  %tmp_404 = lshr i256 -1, %tmp_399
  %p_demorgan4 = and i256 %tmp_403, %tmp_404
  %tmp_405 = xor i256 %p_demorgan4, -1
  %tmp_406 = and i256 %tmp_353, %tmp_405
  %tmp_407 = and i256 %tmp_402, %p_demorgan4
  %tmp_408 = or i256 %tmp_406, %tmp_407
  %tmp_159 = add i5 -3, %tmp_352
  %tmp_160 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_159, i3 0)
  %tmp_161 = or i8 %tmp_160, 7
  %tmp_409 = icmp ugt i8 %tmp_160, %tmp_161
  %tmp_410 = zext i8 %tmp_160 to i9
  %tmp_411 = zext i8 %tmp_161 to i9
  %tmp_412 = call i256 @llvm.part.select.i256(i256 %tmp_408, i32 255, i32 0)
  %tmp_413 = sub i9 %tmp_410, %tmp_411
  %tmp_414 = xor i9 %tmp_410, 255
  %tmp_415 = sub i9 %tmp_411, %tmp_410
  %tmp_416 = select i1 %tmp_409, i9 %tmp_413, i9 %tmp_415
  %tmp_417 = select i1 %tmp_409, i256 %tmp_412, i256 %tmp_408
  %tmp_418 = select i1 %tmp_409, i9 %tmp_414, i9 %tmp_410
  %tmp_419 = sub i9 255, %tmp_416
  %tmp_420 = zext i9 %tmp_418 to i256
  %tmp_421 = zext i9 %tmp_419 to i256
  %tmp_422 = lshr i256 %tmp_417, %tmp_420
  %tmp_423 = lshr i256 -1, %tmp_421
  %tmp_424 = and i256 %tmp_422, %tmp_423
  %tmp_425 = trunc i256 %tmp_424 to i8
  %tmp_163 = or i5 %tmp_352, 1
  %tmp_164 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_163, i3 0)
  %tmp_165 = or i8 %tmp_164, 7
  %tmp_426 = icmp ugt i8 %tmp_164, %tmp_165
  %tmp_427 = zext i8 %tmp_164 to i9
  %tmp_428 = zext i8 %tmp_165 to i9
  %tmp_429 = call i256 @llvm.part.select.i256(i256 %tmp_408, i32 255, i32 0)
  %tmp_430 = sub i9 %tmp_427, %tmp_428
  %tmp_431 = xor i9 %tmp_427, 255
  %tmp_432 = sub i9 %tmp_428, %tmp_427
  %tmp_433 = select i1 %tmp_426, i9 %tmp_430, i9 %tmp_432
  %tmp_434 = select i1 %tmp_426, i256 %tmp_429, i256 %tmp_408
  %tmp_435 = select i1 %tmp_426, i9 %tmp_431, i9 %tmp_427
  %tmp_436 = sub i9 255, %tmp_433
  %tmp_437 = zext i9 %tmp_435 to i256
  %tmp_438 = zext i9 %tmp_436 to i256
  %tmp_439 = lshr i256 %tmp_434, %tmp_437
  %tmp_440 = lshr i256 -1, %tmp_438
  %tmp_441 = and i256 %tmp_439, %tmp_440
  %tmp_442 = trunc i256 %tmp_441 to i8
  %tmp_60 = xor i8 %tmp_442, %tmp_425
  %tmp_443 = icmp ugt i8 %tmp_164, %tmp_165
  %tmp_444 = zext i8 %tmp_164 to i9
  %tmp_445 = zext i8 %tmp_165 to i9
  %tmp_446 = zext i8 %tmp_60 to i256
  %tmp_447 = xor i9 %tmp_444, 255
  %tmp_448 = select i1 %tmp_443, i9 %tmp_444, i9 %tmp_445
  %tmp_449 = select i1 %tmp_443, i9 %tmp_445, i9 %tmp_444
  %tmp_450 = select i1 %tmp_443, i9 %tmp_447, i9 %tmp_444
  %tmp_451 = xor i9 %tmp_448, 255
  %tmp_452 = zext i9 %tmp_450 to i256
  %tmp_453 = zext i9 %tmp_449 to i256
  %tmp_454 = zext i9 %tmp_451 to i256
  %tmp_455 = shl i256 %tmp_446, %tmp_452
  %tmp_456 = call i256 @llvm.part.select.i256(i256 %tmp_455, i32 255, i32 0)
  %tmp_457 = select i1 %tmp_443, i256 %tmp_456, i256 %tmp_455
  %tmp_458 = shl i256 -1, %tmp_453
  %tmp_459 = lshr i256 -1, %tmp_454
  %p_demorgan5 = and i256 %tmp_458, %tmp_459
  %tmp_460 = xor i256 %p_demorgan5, -1
  %tmp_461 = and i256 %tmp_408, %tmp_460
  %tmp_462 = and i256 %tmp_457, %p_demorgan5
  %tmp_463 = or i256 %tmp_461, %tmp_462
  %tmp_168 = add i5 -2, %tmp_352
  %tmp_169 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_168, i3 0)
  %tmp_170 = or i8 %tmp_169, 7
  %tmp_464 = icmp ugt i8 %tmp_169, %tmp_170
  %tmp_465 = zext i8 %tmp_169 to i9
  %tmp_466 = zext i8 %tmp_170 to i9
  %tmp_467 = call i256 @llvm.part.select.i256(i256 %tmp_463, i32 255, i32 0)
  %tmp_468 = sub i9 %tmp_465, %tmp_466
  %tmp_469 = xor i9 %tmp_465, 255
  %tmp_470 = sub i9 %tmp_466, %tmp_465
  %tmp_471 = select i1 %tmp_464, i9 %tmp_468, i9 %tmp_470
  %tmp_472 = select i1 %tmp_464, i256 %tmp_467, i256 %tmp_463
  %tmp_473 = select i1 %tmp_464, i9 %tmp_469, i9 %tmp_465
  %tmp_474 = sub i9 255, %tmp_471
  %tmp_475 = zext i9 %tmp_473 to i256
  %tmp_476 = zext i9 %tmp_474 to i256
  %tmp_477 = lshr i256 %tmp_472, %tmp_475
  %tmp_478 = lshr i256 -1, %tmp_476
  %tmp_479 = and i256 %tmp_477, %tmp_478
  %tmp_480 = trunc i256 %tmp_479 to i8
  %tmp_172 = or i5 %tmp_352, 2
  %tmp_173 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_172, i3 0)
  %tmp_174 = or i8 %tmp_173, 7
  %tmp_481 = icmp ugt i8 %tmp_173, %tmp_174
  %tmp_482 = zext i8 %tmp_173 to i9
  %tmp_483 = zext i8 %tmp_174 to i9
  %tmp_484 = call i256 @llvm.part.select.i256(i256 %tmp_463, i32 255, i32 0)
  %tmp_485 = sub i9 %tmp_482, %tmp_483
  %tmp_486 = xor i9 %tmp_482, 255
  %tmp_487 = sub i9 %tmp_483, %tmp_482
  %tmp_488 = select i1 %tmp_481, i9 %tmp_485, i9 %tmp_487
  %tmp_489 = select i1 %tmp_481, i256 %tmp_484, i256 %tmp_463
  %tmp_490 = select i1 %tmp_481, i9 %tmp_486, i9 %tmp_482
  %tmp_491 = sub i9 255, %tmp_488
  %tmp_492 = zext i9 %tmp_490 to i256
  %tmp_493 = zext i9 %tmp_491 to i256
  %tmp_494 = lshr i256 %tmp_489, %tmp_492
  %tmp_495 = lshr i256 -1, %tmp_493
  %tmp_496 = and i256 %tmp_494, %tmp_495
  %tmp_497 = trunc i256 %tmp_496 to i8
  %tmp_63 = xor i8 %tmp_497, %tmp_480
  %tmp_498 = icmp ugt i8 %tmp_173, %tmp_174
  %tmp_499 = zext i8 %tmp_173 to i9
  %tmp_500 = zext i8 %tmp_174 to i9
  %tmp_501 = zext i8 %tmp_63 to i256
  %tmp_502 = xor i9 %tmp_499, 255
  %tmp_503 = select i1 %tmp_498, i9 %tmp_499, i9 %tmp_500
  %tmp_504 = select i1 %tmp_498, i9 %tmp_500, i9 %tmp_499
  %tmp_505 = select i1 %tmp_498, i9 %tmp_502, i9 %tmp_499
  %tmp_506 = xor i9 %tmp_503, 255
  %tmp_507 = zext i9 %tmp_505 to i256
  %tmp_508 = zext i9 %tmp_504 to i256
  %tmp_509 = zext i9 %tmp_506 to i256
  %tmp_510 = shl i256 %tmp_501, %tmp_507
  %tmp_511 = call i256 @llvm.part.select.i256(i256 %tmp_510, i32 255, i32 0)
  %tmp_512 = select i1 %tmp_498, i256 %tmp_511, i256 %tmp_510
  %tmp_513 = shl i256 -1, %tmp_508
  %tmp_514 = lshr i256 -1, %tmp_509
  %p_demorgan6 = and i256 %tmp_513, %tmp_514
  %tmp_515 = xor i256 %p_demorgan6, -1
  %tmp_516 = and i256 %tmp_463, %tmp_515
  %tmp_517 = and i256 %tmp_512, %p_demorgan6
  %tmp_518 = or i256 %tmp_516, %tmp_517
  %tmp_177 = add i5 -1, %tmp_352
  %tmp_178 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_177, i3 0)
  %tmp_179 = or i8 %tmp_178, 7
  %tmp_519 = icmp ugt i8 %tmp_178, %tmp_179
  %tmp_520 = zext i8 %tmp_178 to i9
  %tmp_521 = zext i8 %tmp_179 to i9
  %tmp_522 = call i256 @llvm.part.select.i256(i256 %tmp_518, i32 255, i32 0)
  %tmp_523 = sub i9 %tmp_520, %tmp_521
  %tmp_524 = xor i9 %tmp_520, 255
  %tmp_525 = sub i9 %tmp_521, %tmp_520
  %tmp_526 = select i1 %tmp_519, i9 %tmp_523, i9 %tmp_525
  %tmp_527 = select i1 %tmp_519, i256 %tmp_522, i256 %tmp_518
  %tmp_528 = select i1 %tmp_519, i9 %tmp_524, i9 %tmp_520
  %tmp_529 = sub i9 255, %tmp_526
  %tmp_530 = zext i9 %tmp_528 to i256
  %tmp_531 = zext i9 %tmp_529 to i256
  %tmp_532 = lshr i256 %tmp_527, %tmp_530
  %tmp_533 = lshr i256 -1, %tmp_531
  %tmp_534 = and i256 %tmp_532, %tmp_533
  %tmp_535 = trunc i256 %tmp_534 to i8
  %tmp_181 = or i5 %tmp_352, 3
  %tmp_182 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_181, i3 0)
  %tmp_183 = or i8 %tmp_182, 7
  %tmp_536 = icmp ugt i8 %tmp_182, %tmp_183
  %tmp_537 = zext i8 %tmp_182 to i9
  %tmp_538 = zext i8 %tmp_183 to i9
  %tmp_539 = call i256 @llvm.part.select.i256(i256 %tmp_518, i32 255, i32 0)
  %tmp_540 = sub i9 %tmp_537, %tmp_538
  %tmp_541 = xor i9 %tmp_537, 255
  %tmp_542 = sub i9 %tmp_538, %tmp_537
  %tmp_543 = select i1 %tmp_536, i9 %tmp_540, i9 %tmp_542
  %tmp_544 = select i1 %tmp_536, i256 %tmp_539, i256 %tmp_518
  %tmp_545 = select i1 %tmp_536, i9 %tmp_541, i9 %tmp_537
  %tmp_546 = sub i9 255, %tmp_543
  %tmp_547 = zext i9 %tmp_545 to i256
  %tmp_548 = zext i9 %tmp_546 to i256
  %tmp_549 = lshr i256 %tmp_544, %tmp_547
  %tmp_550 = lshr i256 -1, %tmp_548
  %tmp_551 = and i256 %tmp_549, %tmp_550
  %tmp_552 = trunc i256 %tmp_551 to i8
  %tmp_66 = xor i8 %tmp_552, %tmp_535
  %tmp_553 = icmp ugt i8 %tmp_182, %tmp_183
  %tmp_554 = zext i8 %tmp_182 to i9
  %tmp_555 = zext i8 %tmp_183 to i9
  %tmp_556 = zext i8 %tmp_66 to i256
  %tmp_557 = xor i9 %tmp_554, 255
  %tmp_558 = select i1 %tmp_553, i9 %tmp_554, i9 %tmp_555
  %tmp_559 = select i1 %tmp_553, i9 %tmp_555, i9 %tmp_554
  %tmp_560 = select i1 %tmp_553, i9 %tmp_557, i9 %tmp_554
  %tmp_561 = xor i9 %tmp_558, 255
  %tmp_562 = zext i9 %tmp_560 to i256
  %tmp_563 = zext i9 %tmp_559 to i256
  %tmp_564 = zext i9 %tmp_561 to i256
  %tmp_565 = shl i256 %tmp_556, %tmp_562
  %tmp_566 = call i256 @llvm.part.select.i256(i256 %tmp_565, i32 255, i32 0)
  %tmp_567 = select i1 %tmp_553, i256 %tmp_566, i256 %tmp_565
  %tmp_568 = shl i256 -1, %tmp_563
  %tmp_569 = lshr i256 -1, %tmp_564
  %p_demorgan7 = and i256 %tmp_568, %tmp_569
  %tmp_570 = xor i256 %p_demorgan7, -1
  %tmp_571 = and i256 %tmp_518, %tmp_570
  %tmp_572 = and i256 %tmp_567, %p_demorgan7
  %tmp_573 = or i256 %tmp_571, %tmp_572
  %gep11011_part_set = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp_573, i32 0, i32 255)
  %k_addr_req3 = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set, i128 -1)
  %k_addr_resp4 = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr)
  %i_9 = add i6 4, %i_1
  %tmp_574 = trunc i6 %i_9 to i5
  %tmp_575 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_9, i32 5)
  br i1 %tmp_575, label %7, label %6

; <label>:6                                       ; preds = %5
  %tmp_576 = icmp ugt i8 %tmp_155, %tmp_156
  %tmp_577 = zext i8 %tmp_155 to i9
  %tmp_578 = zext i8 %tmp_156 to i9
  %tmp_579 = call i256 @llvm.part.select.i256(i256 %tmp_573, i32 255, i32 0)
  %tmp_580 = sub i9 %tmp_577, %tmp_578
  %tmp_581 = xor i9 %tmp_577, 255
  %tmp_582 = sub i9 %tmp_578, %tmp_577
  %tmp_583 = select i1 %tmp_576, i9 %tmp_580, i9 %tmp_582
  %tmp_584 = select i1 %tmp_576, i256 %tmp_579, i256 %tmp_573
  %tmp_585 = select i1 %tmp_576, i9 %tmp_581, i9 %tmp_577
  %tmp_586 = sub i9 255, %tmp_583
  %tmp_587 = zext i9 %tmp_585 to i256
  %tmp_588 = zext i9 %tmp_586 to i256
  %tmp_589 = lshr i256 %tmp_584, %tmp_587
  %tmp_590 = lshr i256 -1, %tmp_588
  %tmp_591 = and i256 %tmp_589, %tmp_590
  %tmp_592 = trunc i256 %tmp_591 to i8
  %tmp_187 = call i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6 %i_9, i3 0)
  %tmp_188 = or i9 %tmp_187, 7
  %tmp_593 = icmp ugt i9 %tmp_187, %tmp_188
  %tmp_594 = call i256 @llvm.part.select.i256(i256 %tmp_573, i32 255, i32 0)
  %tmp_595 = sub i9 %tmp_187, %tmp_188
  %tmp_596 = sub i9 255, %tmp_187
  %tmp_597 = sub i9 %tmp_188, %tmp_187
  %tmp_598 = select i1 %tmp_593, i9 %tmp_595, i9 %tmp_597
  %tmp_599 = select i1 %tmp_593, i256 %tmp_594, i256 %tmp_573
  %tmp_600 = select i1 %tmp_593, i9 %tmp_596, i9 %tmp_187
  %tmp_601 = sub i9 255, %tmp_598
  %tmp_602 = zext i9 %tmp_600 to i256
  %tmp_603 = zext i9 %tmp_601 to i256
  %tmp_604 = lshr i256 %tmp_599, %tmp_602
  %tmp_605 = lshr i256 -1, %tmp_603
  %tmp_606 = and i256 %tmp_604, %tmp_605
  %tmp_607 = trunc i256 %tmp_606 to i8
  %tmp_57_1 = xor i8 %tmp_607, %tmp_592
  %tmp_608 = icmp ugt i9 %tmp_187, %tmp_188
  %tmp_609 = zext i8 %tmp_57_1 to i256
  %tmp_610 = sub i9 255, %tmp_187
  %tmp_611 = select i1 %tmp_608, i9 %tmp_187, i9 %tmp_188
  %tmp_612 = select i1 %tmp_608, i9 %tmp_188, i9 %tmp_187
  %tmp_613 = select i1 %tmp_608, i9 %tmp_610, i9 %tmp_187
  %tmp_614 = sub i9 255, %tmp_611
  %tmp_615 = zext i9 %tmp_613 to i256
  %tmp_616 = zext i9 %tmp_612 to i256
  %tmp_617 = zext i9 %tmp_614 to i256
  %tmp_618 = shl i256 %tmp_609, %tmp_615
  %tmp_619 = call i256 @llvm.part.select.i256(i256 %tmp_618, i32 255, i32 0)
  %tmp_620 = select i1 %tmp_608, i256 %tmp_619, i256 %tmp_618
  %tmp_621 = shl i256 -1, %tmp_616
  %tmp_622 = lshr i256 -1, %tmp_617
  %p_demorgan8 = and i256 %tmp_621, %tmp_622
  %tmp_623 = xor i256 %p_demorgan8, -1
  %tmp_624 = and i256 %tmp_573, %tmp_623
  %tmp_625 = and i256 %tmp_620, %p_demorgan8
  %tmp_626 = or i256 %tmp_624, %tmp_625
  %tmp_627 = icmp ugt i8 %tmp_164, %tmp_165
  %tmp_628 = zext i8 %tmp_164 to i9
  %tmp_629 = zext i8 %tmp_165 to i9
  %tmp_630 = call i256 @llvm.part.select.i256(i256 %tmp_626, i32 255, i32 0)
  %tmp_631 = sub i9 %tmp_628, %tmp_629
  %tmp_632 = xor i9 %tmp_628, 255
  %tmp_633 = sub i9 %tmp_629, %tmp_628
  %tmp_634 = select i1 %tmp_627, i9 %tmp_631, i9 %tmp_633
  %tmp_635 = select i1 %tmp_627, i256 %tmp_630, i256 %tmp_626
  %tmp_636 = select i1 %tmp_627, i9 %tmp_632, i9 %tmp_628
  %tmp_637 = sub i9 255, %tmp_634
  %tmp_638 = zext i9 %tmp_636 to i256
  %tmp_639 = zext i9 %tmp_637 to i256
  %tmp_640 = lshr i256 %tmp_635, %tmp_638
  %tmp_641 = lshr i256 -1, %tmp_639
  %tmp_642 = and i256 %tmp_640, %tmp_641
  %tmp_643 = trunc i256 %tmp_642 to i8
  %tmp_192 = or i5 %tmp_574, 1
  %tmp_644 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_192, i3 0)
  %tmp_216_cast = zext i8 %tmp_644 to i10
  %tmp_645 = or i8 %tmp_644, 7
  %tmp_194 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_645)
  %tmp_217_cast = zext i9 %tmp_194 to i10
  %tmp_646 = icmp ugt i10 %tmp_216_cast, %tmp_217_cast
  %tmp_647 = zext i8 %tmp_644 to i9
  %tmp_648 = call i256 @llvm.part.select.i256(i256 %tmp_626, i32 255, i32 0)
  %tmp_649 = sub i9 %tmp_647, %tmp_194
  %tmp_650 = xor i9 %tmp_647, 255
  %tmp_651 = sub i9 %tmp_194, %tmp_647
  %tmp_652 = select i1 %tmp_646, i9 %tmp_649, i9 %tmp_651
  %tmp_653 = select i1 %tmp_646, i256 %tmp_648, i256 %tmp_626
  %tmp_654 = select i1 %tmp_646, i9 %tmp_650, i9 %tmp_647
  %tmp_655 = sub i9 255, %tmp_652
  %tmp_656 = zext i9 %tmp_654 to i256
  %tmp_657 = zext i9 %tmp_655 to i256
  %tmp_658 = lshr i256 %tmp_653, %tmp_656
  %tmp_659 = lshr i256 -1, %tmp_657
  %tmp_660 = and i256 %tmp_658, %tmp_659
  %tmp_661 = trunc i256 %tmp_660 to i8
  %tmp_60_1 = xor i8 %tmp_661, %tmp_643
  %tmp_662 = icmp ugt i10 %tmp_216_cast, %tmp_217_cast
  %tmp_663 = zext i8 %tmp_644 to i9
  %tmp_664 = zext i8 %tmp_60_1 to i256
  %tmp_665 = xor i9 %tmp_663, 255
  %tmp_666 = select i1 %tmp_662, i9 %tmp_663, i9 %tmp_194
  %tmp_667 = select i1 %tmp_662, i9 %tmp_194, i9 %tmp_663
  %tmp_668 = select i1 %tmp_662, i9 %tmp_665, i9 %tmp_663
  %tmp_669 = sub i9 255, %tmp_666
  %tmp_670 = zext i9 %tmp_668 to i256
  %tmp_671 = zext i9 %tmp_667 to i256
  %tmp_672 = zext i9 %tmp_669 to i256
  %tmp_673 = shl i256 %tmp_664, %tmp_670
  %tmp_674 = call i256 @llvm.part.select.i256(i256 %tmp_673, i32 255, i32 0)
  %tmp_675 = select i1 %tmp_662, i256 %tmp_674, i256 %tmp_673
  %tmp_676 = shl i256 -1, %tmp_671
  %tmp_677 = lshr i256 -1, %tmp_672
  %p_demorgan9 = and i256 %tmp_676, %tmp_677
  %tmp_678 = xor i256 %p_demorgan9, -1
  %tmp_679 = and i256 %tmp_626, %tmp_678
  %tmp_680 = and i256 %tmp_675, %p_demorgan9
  %tmp_681 = or i256 %tmp_679, %tmp_680
  %tmp_682 = icmp ugt i8 %tmp_173, %tmp_174
  %tmp_683 = zext i8 %tmp_173 to i9
  %tmp_684 = zext i8 %tmp_174 to i9
  %tmp_685 = call i256 @llvm.part.select.i256(i256 %tmp_681, i32 255, i32 0)
  %tmp_686 = sub i9 %tmp_683, %tmp_684
  %tmp_687 = xor i9 %tmp_683, 255
  %tmp_688 = sub i9 %tmp_684, %tmp_683
  %tmp_689 = select i1 %tmp_682, i9 %tmp_686, i9 %tmp_688
  %tmp_690 = select i1 %tmp_682, i256 %tmp_685, i256 %tmp_681
  %tmp_691 = select i1 %tmp_682, i9 %tmp_687, i9 %tmp_683
  %tmp_692 = sub i9 255, %tmp_689
  %tmp_693 = zext i9 %tmp_691 to i256
  %tmp_694 = zext i9 %tmp_692 to i256
  %tmp_695 = lshr i256 %tmp_690, %tmp_693
  %tmp_696 = lshr i256 -1, %tmp_694
  %tmp_697 = and i256 %tmp_695, %tmp_696
  %tmp_698 = trunc i256 %tmp_697 to i8
  %tmp_198 = or i5 %tmp_574, 2
  %tmp_699 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_198, i3 0)
  %tmp_223_cast = zext i8 %tmp_699 to i10
  %tmp_700 = or i8 %tmp_699, 7
  %tmp_200 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_700)
  %tmp_224_cast = zext i9 %tmp_200 to i10
  %tmp_701 = icmp ugt i10 %tmp_223_cast, %tmp_224_cast
  %tmp_702 = zext i8 %tmp_699 to i9
  %tmp_703 = call i256 @llvm.part.select.i256(i256 %tmp_681, i32 255, i32 0)
  %tmp_704 = sub i9 %tmp_702, %tmp_200
  %tmp_705 = xor i9 %tmp_702, 255
  %tmp_706 = sub i9 %tmp_200, %tmp_702
  %tmp_707 = select i1 %tmp_701, i9 %tmp_704, i9 %tmp_706
  %tmp_708 = select i1 %tmp_701, i256 %tmp_703, i256 %tmp_681
  %tmp_709 = select i1 %tmp_701, i9 %tmp_705, i9 %tmp_702
  %tmp_710 = sub i9 255, %tmp_707
  %tmp_711 = zext i9 %tmp_709 to i256
  %tmp_712 = zext i9 %tmp_710 to i256
  %tmp_713 = lshr i256 %tmp_708, %tmp_711
  %tmp_714 = lshr i256 -1, %tmp_712
  %tmp_715 = and i256 %tmp_713, %tmp_714
  %tmp_716 = trunc i256 %tmp_715 to i8
  %tmp_63_1 = xor i8 %tmp_716, %tmp_698
  %tmp_717 = icmp ugt i10 %tmp_223_cast, %tmp_224_cast
  %tmp_718 = zext i8 %tmp_699 to i9
  %tmp_719 = zext i8 %tmp_63_1 to i256
  %tmp_720 = xor i9 %tmp_718, 255
  %tmp_721 = select i1 %tmp_717, i9 %tmp_718, i9 %tmp_200
  %tmp_722 = select i1 %tmp_717, i9 %tmp_200, i9 %tmp_718
  %tmp_723 = select i1 %tmp_717, i9 %tmp_720, i9 %tmp_718
  %tmp_724 = sub i9 255, %tmp_721
  %tmp_725 = zext i9 %tmp_723 to i256
  %tmp_726 = zext i9 %tmp_722 to i256
  %tmp_727 = zext i9 %tmp_724 to i256
  %tmp_728 = shl i256 %tmp_719, %tmp_725
  %tmp_729 = call i256 @llvm.part.select.i256(i256 %tmp_728, i32 255, i32 0)
  %tmp_730 = select i1 %tmp_717, i256 %tmp_729, i256 %tmp_728
  %tmp_731 = shl i256 -1, %tmp_726
  %tmp_732 = lshr i256 -1, %tmp_727
  %p_demorgan10 = and i256 %tmp_731, %tmp_732
  %tmp_733 = xor i256 %p_demorgan10, -1
  %tmp_734 = and i256 %tmp_681, %tmp_733
  %tmp_735 = and i256 %tmp_730, %p_demorgan10
  %tmp_736 = or i256 %tmp_734, %tmp_735
  %tmp_737 = icmp ugt i8 %tmp_182, %tmp_183
  %tmp_738 = zext i8 %tmp_182 to i9
  %tmp_739 = zext i8 %tmp_183 to i9
  %tmp_740 = call i256 @llvm.part.select.i256(i256 %tmp_736, i32 255, i32 0)
  %tmp_741 = sub i9 %tmp_738, %tmp_739
  %tmp_742 = xor i9 %tmp_738, 255
  %tmp_743 = sub i9 %tmp_739, %tmp_738
  %tmp_744 = select i1 %tmp_737, i9 %tmp_741, i9 %tmp_743
  %tmp_745 = select i1 %tmp_737, i256 %tmp_740, i256 %tmp_736
  %tmp_746 = select i1 %tmp_737, i9 %tmp_742, i9 %tmp_738
  %tmp_747 = sub i9 255, %tmp_744
  %tmp_748 = zext i9 %tmp_746 to i256
  %tmp_749 = zext i9 %tmp_747 to i256
  %tmp_750 = lshr i256 %tmp_745, %tmp_748
  %tmp_751 = lshr i256 -1, %tmp_749
  %tmp_752 = and i256 %tmp_750, %tmp_751
  %tmp_753 = trunc i256 %tmp_752 to i8
  %tmp_204 = or i5 %tmp_574, 3
  %tmp_754 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_204, i3 0)
  %tmp_230_cast = zext i8 %tmp_754 to i10
  %tmp_755 = or i8 %tmp_754, 7
  %tmp_206 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 false, i8 %tmp_755)
  %tmp_231_cast = zext i9 %tmp_206 to i10
  %tmp_756 = icmp ugt i10 %tmp_230_cast, %tmp_231_cast
  %tmp_757 = zext i8 %tmp_754 to i9
  %tmp_758 = call i256 @llvm.part.select.i256(i256 %tmp_736, i32 255, i32 0)
  %tmp_759 = sub i9 %tmp_757, %tmp_206
  %tmp_760 = xor i9 %tmp_757, 255
  %tmp_761 = sub i9 %tmp_206, %tmp_757
  %tmp_762 = select i1 %tmp_756, i9 %tmp_759, i9 %tmp_761
  %tmp_763 = select i1 %tmp_756, i256 %tmp_758, i256 %tmp_736
  %tmp_764 = select i1 %tmp_756, i9 %tmp_760, i9 %tmp_757
  %tmp_765 = sub i9 255, %tmp_762
  %tmp_766 = zext i9 %tmp_764 to i256
  %tmp_767 = zext i9 %tmp_765 to i256
  %tmp_768 = lshr i256 %tmp_763, %tmp_766
  %tmp_769 = lshr i256 -1, %tmp_767
  %tmp_770 = and i256 %tmp_768, %tmp_769
  %tmp_771 = trunc i256 %tmp_770 to i8
  %tmp_66_1 = xor i8 %tmp_771, %tmp_753
  %tmp_772 = icmp ugt i10 %tmp_230_cast, %tmp_231_cast
  %tmp_773 = zext i8 %tmp_754 to i9
  %tmp_774 = zext i8 %tmp_66_1 to i256
  %tmp_775 = xor i9 %tmp_773, 255
  %tmp_776 = select i1 %tmp_772, i9 %tmp_773, i9 %tmp_206
  %tmp_777 = select i1 %tmp_772, i9 %tmp_206, i9 %tmp_773
  %tmp_778 = select i1 %tmp_772, i9 %tmp_775, i9 %tmp_773
  %tmp_779 = sub i9 255, %tmp_776
  %tmp_780 = zext i9 %tmp_778 to i256
  %tmp_781 = zext i9 %tmp_777 to i256
  %tmp_782 = zext i9 %tmp_779 to i256
  %tmp_783 = shl i256 %tmp_774, %tmp_780
  %tmp_784 = call i256 @llvm.part.select.i256(i256 %tmp_783, i32 255, i32 0)
  %tmp_785 = select i1 %tmp_772, i256 %tmp_784, i256 %tmp_783
  %tmp_786 = shl i256 -1, %tmp_781
  %tmp_787 = lshr i256 -1, %tmp_782
  %p_demorgan11 = and i256 %tmp_786, %tmp_787
  %tmp_788 = xor i256 %p_demorgan11, -1
  %tmp_789 = and i256 %tmp_736, %tmp_788
  %tmp_790 = and i256 %tmp_785, %p_demorgan11
  %tmp_791 = or i256 %tmp_789, %tmp_790
  %gep11011_part_set_1 = call i1024 @llvm.part.set.i1024.i256(i1024 %gep, i256 %tmp_791, i32 0, i32 255)
  %k_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %k_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %k_addr, i1024 %gep11011_part_set_1, i128 -1)
  %k_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %k_addr)
  %i_9_1 = add i6 8, %i_1
  br label %4

; <label>:7                                       ; preds = %5, %4
  ret i8 %tmp_32
}

define internal fastcc void @aes_addRoundKey_cpy(i8* %buf_r, i32 %buf_offset, i1024* %ctx, i25 %ctx_offset) {
  %ctx_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %ctx_offset)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  %ctx_offset_cast = zext i25 %ctx_offset_read to i32
  %ctx_addr = getelementptr i1024* %ctx, i32 %ctx_offset_cast
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %ctx, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_5, %2 ]
  %tmp = icmp eq i5 %i, 0
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %i_5 = add i5 -1, %i
  %i_5_cast = sext i5 %i_5 to i8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str3) nounwind
  %tmp_207 = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_s = zext i8 %i_5_cast to i32
  %tmp_792 = trunc i5 %i to i4
  %ctx_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %ctx_addr, i32 1)
  %ctx_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %ctx_addr)
  %p_new = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 256, i32 511)
  %tmp_208 = add i4 -1, %tmp_792
  %tmp_209 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_208, i3 0)
  %tmp_210 = or i7 %tmp_209, 7
  %tmp_793 = icmp ugt i7 %tmp_209, %tmp_210
  %tmp_794 = zext i7 %tmp_209 to i9
  %tmp_795 = zext i7 %tmp_210 to i9
  %tmp_796 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256)
  %tmp_797 = sub i9 %tmp_794, %tmp_795
  %tmp_798 = xor i9 %tmp_794, 255
  %tmp_799 = sub i9 %tmp_795, %tmp_794
  %tmp_800 = select i1 %tmp_793, i9 %tmp_797, i9 %tmp_799
  %tmp_801 = select i1 %tmp_793, i256 %tmp_796, i256 %p_new
  %tmp_802 = select i1 %tmp_793, i9 %tmp_798, i9 %tmp_794
  %tmp_803 = sub i9 255, %tmp_800
  %tmp_804 = zext i9 %tmp_802 to i256
  %tmp_805 = zext i9 %tmp_803 to i256
  %tmp_806 = lshr i256 %tmp_801, %tmp_804
  %tmp_807 = lshr i256 -1, %tmp_805
  %tmp_808 = and i256 %tmp_806, %tmp_807
  %tmp_809 = trunc i256 %tmp_808 to i8
  %tmp_810 = trunc i1024 %ctx_addr_read to i256
  %tmp_811 = icmp ugt i7 %tmp_209, %tmp_210
  %tmp_812 = zext i7 %tmp_209 to i9
  %tmp_813 = zext i7 %tmp_210 to i9
  %tmp_814 = zext i8 %tmp_809 to i256
  %tmp_815 = xor i9 %tmp_812, 255
  %tmp_816 = select i1 %tmp_811, i9 %tmp_812, i9 %tmp_813
  %tmp_817 = select i1 %tmp_811, i9 %tmp_813, i9 %tmp_812
  %tmp_818 = select i1 %tmp_811, i9 %tmp_815, i9 %tmp_812
  %tmp_819 = xor i9 %tmp_816, 255
  %tmp_820 = zext i9 %tmp_818 to i256
  %tmp_821 = zext i9 %tmp_817 to i256
  %tmp_822 = zext i9 %tmp_819 to i256
  %tmp_823 = shl i256 %tmp_814, %tmp_820
  %tmp_824 = call i256 @llvm.part.select.i256(i256 %tmp_823, i32 255, i32 0)
  %tmp_825 = select i1 %tmp_811, i256 %tmp_824, i256 %tmp_823
  %tmp_826 = shl i256 -1, %tmp_821
  %tmp_827 = lshr i256 -1, %tmp_822
  %p_demorgan = and i256 %tmp_826, %tmp_827
  %tmp_828 = xor i256 %p_demorgan, -1
  %tmp_829 = and i256 %tmp_810, %tmp_828
  %tmp_830 = and i256 %tmp_825, %p_demorgan
  %tmp_831 = or i256 %tmp_829, %tmp_830
  %sum = add i32 %buf_offset_read, %tmp_s
  %buf_addr = getelementptr i8* %buf_r, i32 %sum
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_54 = xor i8 %buf_addr_read, %tmp_809
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_54, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %tmp_211 = add i5 15, %i
  %tmp_212 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_211, i3 0)
  %tmp_213 = or i8 %tmp_212, 7
  %tmp_832 = icmp ugt i8 %tmp_212, %tmp_213
  %tmp_833 = zext i8 %tmp_212 to i9
  %tmp_834 = zext i8 %tmp_213 to i9
  %tmp_835 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %ctx_addr_read, i32 511, i32 256)
  %tmp_836 = sub i9 %tmp_833, %tmp_834
  %tmp_837 = xor i9 %tmp_833, 255
  %tmp_838 = sub i9 %tmp_834, %tmp_833
  %tmp_839 = select i1 %tmp_832, i9 %tmp_836, i9 %tmp_838
  %tmp_840 = select i1 %tmp_832, i256 %tmp_835, i256 %p_new
  %tmp_841 = select i1 %tmp_832, i9 %tmp_837, i9 %tmp_833
  %tmp_842 = sub i9 255, %tmp_839
  %tmp_843 = zext i9 %tmp_841 to i256
  %tmp_844 = zext i9 %tmp_842 to i256
  %tmp_845 = lshr i256 %tmp_840, %tmp_843
  %tmp_846 = lshr i256 -1, %tmp_844
  %tmp_847 = and i256 %tmp_845, %tmp_846
  %tmp_848 = trunc i256 %tmp_847 to i8
  %tmp_849 = icmp ugt i8 %tmp_212, %tmp_213
  %tmp_850 = zext i8 %tmp_212 to i9
  %tmp_851 = zext i8 %tmp_213 to i9
  %tmp_852 = zext i8 %tmp_848 to i256
  %tmp_853 = xor i9 %tmp_850, 255
  %tmp_854 = select i1 %tmp_849, i9 %tmp_850, i9 %tmp_851
  %tmp_855 = select i1 %tmp_849, i9 %tmp_851, i9 %tmp_850
  %tmp_856 = select i1 %tmp_849, i9 %tmp_853, i9 %tmp_850
  %tmp_857 = xor i9 %tmp_854, 255
  %tmp_858 = zext i9 %tmp_856 to i256
  %tmp_859 = zext i9 %tmp_855 to i256
  %tmp_860 = zext i9 %tmp_857 to i256
  %tmp_861 = shl i256 %tmp_852, %tmp_858
  %tmp_862 = call i256 @llvm.part.select.i256(i256 %tmp_861, i32 255, i32 0)
  %tmp_863 = select i1 %tmp_849, i256 %tmp_862, i256 %tmp_861
  %tmp_864 = shl i256 -1, %tmp_859
  %tmp_865 = lshr i256 -1, %tmp_860
  %p_demorgan3 = and i256 %tmp_864, %tmp_865
  %tmp_866 = xor i256 %p_demorgan3, -1
  %tmp_867 = and i256 %tmp_831, %tmp_866
  %tmp_868 = and i256 %tmp_863, %p_demorgan3
  %tmp_869 = or i256 %tmp_867, %tmp_868
  %gep21112_part_set = zext i256 %tmp_869 to i1024
  %ctx_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024* %ctx_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i1024P(i1024* %ctx_addr, i1024 %gep21112_part_set, i128 4294967295)
  %ctx_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024* %ctx_addr)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str3, i32 %tmp_207)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset, i1024* %key, i25 %key_offset, i6 %key_offset_offset) {
  %key_offset_offset_re = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset_offset)
  %key_offset_read = call i25 @_ssdm_op_Read.ap_auto.i25(i25 %key_offset)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  %key_offset_cast = zext i25 %key_offset_read to i32
  %key_addr = getelementptr i1024* %key, i32 %key_offset_cast
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str10, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i1024* %key, [6 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str8, [7 x i8]* @p_str9, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %tmp_870 = trunc i6 %key_offset_offset_re to i5
  %tmp1 = add i5 -1, %tmp_870
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_6, %2 ]
  %tmp = icmp eq i5 %i, 0
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %i_6 = add i5 -1, %i
  %i_6_cast = sext i5 %i_6 to i8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str2) nounwind
  %tmp_214 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecPipeline(i32 4, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_s = zext i8 %i_6_cast to i32
  %tmp_215 = add i5 %tmp1, %i
  %key_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024* %key_addr, i32 1)
  %key_addr_read = call i1024 @_ssdm_op_Read.m_axi.i1024P(i1024* %key_addr)
  %tmp_871 = trunc i1024 %key_addr_read to i256
  %tmp_216 = call i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5 %tmp_215, i3 0)
  %tmp_217 = or i8 %tmp_216, 7
  %tmp_872 = icmp ugt i8 %tmp_216, %tmp_217
  %tmp_873 = zext i8 %tmp_216 to i9
  %tmp_874 = zext i8 %tmp_217 to i9
  %tmp_875 = call i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024 %key_addr_read, i32 255, i32 0)
  %tmp_876 = sub i9 %tmp_873, %tmp_874
  %tmp_877 = xor i9 %tmp_873, 255
  %tmp_878 = sub i9 %tmp_874, %tmp_873
  %tmp_879 = select i1 %tmp_872, i9 %tmp_876, i9 %tmp_878
  %tmp_880 = select i1 %tmp_872, i256 %tmp_875, i256 %tmp_871
  %tmp_881 = select i1 %tmp_872, i9 %tmp_877, i9 %tmp_873
  %tmp_882 = sub i9 255, %tmp_879
  %tmp_883 = zext i9 %tmp_881 to i256
  %tmp_884 = zext i9 %tmp_882 to i256
  %tmp_885 = lshr i256 %tmp_880, %tmp_883
  %tmp_886 = lshr i256 -1, %tmp_884
  %tmp_887 = and i256 %tmp_885, %tmp_886
  %tmp_888 = trunc i256 %tmp_887 to i8
  %sum = add i32 %buf_offset_read, %tmp_s
  %buf_addr = getelementptr i8* %buf_r, i32 %sum
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_55 = xor i8 %buf_addr_read, %tmp_888
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_55, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str2, i32 %tmp_214)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i1024P(i1024*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i1024P(i1024*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

define weak void @_ssdm_op_Write.m_axi.i1024P(i1024*, i1024, i128) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_ReadReq.m_axi.i1024P(i1024*, i32) {
entry:
  ret i1 true
}

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i1024 @_ssdm_op_Read.m_axi.i1024P(i1024*) {
entry:
  %empty = load i1024* %0
  ret i1024 %empty
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i25 @_ssdm_op_Read.ap_auto.i25(i25) {
entry:
  ret i25 %0
}

define weak i256 @_ssdm_op_PartSet.i256.i256.i8.i32.i32(i256, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i256 @llvm.part.set.i256.i8(i256 %0, i8 %1, i32 %2, i32 %3)
  ret i256 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i256.i32.i32(i256, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i1024.i32.i32(i1024, i32, i32) nounwind readnone {
entry:
  %empty = call i1024 @llvm.part.select.i1024(i1024 %0, i32 %1, i32 %2)
  %empty_22 = trunc i1024 %empty to i8
  ret i8 %empty_22
}

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

define weak i256 @_ssdm_op_PartSelect.i256.i1024.i32.i32(i1024, i32, i32) nounwind readnone {
entry:
  %empty = call i1024 @llvm.part.select.i1024(i1024 %0, i32 %1, i32 %2)
  %empty_23 = trunc i1024 %empty to i256
  ret i256 %empty_23
}

define weak i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_24 = trunc i32 %empty to i25
  ret i25 %empty_24
}

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_25 = shl i8 1, %empty
  %empty_26 = and i8 %0, %empty_25
  %empty_27 = icmp ne i8 %empty_26, 0
  ret i1 %empty_27
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_28 = shl i6 1, %empty
  %empty_29 = and i6 %0, %empty_28
  %empty_30 = icmp ne i6 %empty_29, 0
  ret i1 %empty_30
}

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_31 = shl i5 1, %empty
  %empty_32 = and i5 %0, %empty_31
  %empty_33 = icmp ne i5 %empty_32, 0
  ret i1 %empty_33
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i6.i3(i6, i3) nounwind readnone {
entry:
  %empty = zext i6 %0 to i9
  %empty_34 = zext i3 %1 to i9
  %empty_35 = shl i9 %empty, 3
  %empty_36 = or i9 %empty_35, %empty_34
  ret i9 %empty_36
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1, i8) nounwind readnone {
entry:
  %empty = zext i1 %0 to i9
  %empty_37 = zext i8 %1 to i9
  %empty_38 = shl i9 %empty, 8
  %empty_39 = or i9 %empty_38, %empty_37
  ret i9 %empty_39
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i5.i3(i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %0 to i8
  %empty_40 = zext i3 %1 to i8
  %empty_41 = shl i8 %empty, 3
  %empty_42 = or i8 %empty_41, %empty_40
  ret i8 %empty_42
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_43 = zext i3 %1 to i7
  %empty_44 = shl i7 %empty, 3
  %empty_45 = or i7 %empty_44, %empty_43
  ret i7 %empty_45
}

define weak i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i256(i256, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i256) nounwind readnone {
entry:
  %empty = zext i8 %64 to i264
  %empty_46 = zext i256 %65 to i264
  %empty_47 = shl i264 %empty, 256
  %empty_48 = or i264 %empty_47, %empty_46
  %empty_49 = zext i8 %63 to i272
  %empty_50 = zext i264 %empty_48 to i272
  %empty_51 = shl i272 %empty_49, 264
  %empty_52 = or i272 %empty_51, %empty_50
  %empty_53 = zext i8 %62 to i280
  %empty_54 = zext i272 %empty_52 to i280
  %empty_55 = shl i280 %empty_53, 272
  %empty_56 = or i280 %empty_55, %empty_54
  %empty_57 = zext i8 %61 to i288
  %empty_58 = zext i280 %empty_56 to i288
  %empty_59 = shl i288 %empty_57, 280
  %empty_60 = or i288 %empty_59, %empty_58
  %empty_61 = zext i8 %60 to i296
  %empty_62 = zext i288 %empty_60 to i296
  %empty_63 = shl i296 %empty_61, 288
  %empty_64 = or i296 %empty_63, %empty_62
  %empty_65 = zext i8 %59 to i304
  %empty_66 = zext i296 %empty_64 to i304
  %empty_67 = shl i304 %empty_65, 296
  %empty_68 = or i304 %empty_67, %empty_66
  %empty_69 = zext i8 %58 to i312
  %empty_70 = zext i304 %empty_68 to i312
  %empty_71 = shl i312 %empty_69, 304
  %empty_72 = or i312 %empty_71, %empty_70
  %empty_73 = zext i8 %57 to i320
  %empty_74 = zext i312 %empty_72 to i320
  %empty_75 = shl i320 %empty_73, 312
  %empty_76 = or i320 %empty_75, %empty_74
  %empty_77 = zext i8 %56 to i328
  %empty_78 = zext i320 %empty_76 to i328
  %empty_79 = shl i328 %empty_77, 320
  %empty_80 = or i328 %empty_79, %empty_78
  %empty_81 = zext i8 %55 to i336
  %empty_82 = zext i328 %empty_80 to i336
  %empty_83 = shl i336 %empty_81, 328
  %empty_84 = or i336 %empty_83, %empty_82
  %empty_85 = zext i8 %54 to i344
  %empty_86 = zext i336 %empty_84 to i344
  %empty_87 = shl i344 %empty_85, 336
  %empty_88 = or i344 %empty_87, %empty_86
  %empty_89 = zext i8 %53 to i352
  %empty_90 = zext i344 %empty_88 to i352
  %empty_91 = shl i352 %empty_89, 344
  %empty_92 = or i352 %empty_91, %empty_90
  %empty_93 = zext i8 %52 to i360
  %empty_94 = zext i352 %empty_92 to i360
  %empty_95 = shl i360 %empty_93, 352
  %empty_96 = or i360 %empty_95, %empty_94
  %empty_97 = zext i8 %51 to i368
  %empty_98 = zext i360 %empty_96 to i368
  %empty_99 = shl i368 %empty_97, 360
  %empty_100 = or i368 %empty_99, %empty_98
  %empty_101 = zext i8 %50 to i376
  %empty_102 = zext i368 %empty_100 to i376
  %empty_103 = shl i376 %empty_101, 368
  %empty_104 = or i376 %empty_103, %empty_102
  %empty_105 = zext i8 %49 to i384
  %empty_106 = zext i376 %empty_104 to i384
  %empty_107 = shl i384 %empty_105, 376
  %empty_108 = or i384 %empty_107, %empty_106
  %empty_109 = zext i8 %48 to i392
  %empty_110 = zext i384 %empty_108 to i392
  %empty_111 = shl i392 %empty_109, 384
  %empty_112 = or i392 %empty_111, %empty_110
  %empty_113 = zext i8 %47 to i400
  %empty_114 = zext i392 %empty_112 to i400
  %empty_115 = shl i400 %empty_113, 392
  %empty_116 = or i400 %empty_115, %empty_114
  %empty_117 = zext i8 %46 to i408
  %empty_118 = zext i400 %empty_116 to i408
  %empty_119 = shl i408 %empty_117, 400
  %empty_120 = or i408 %empty_119, %empty_118
  %empty_121 = zext i8 %45 to i416
  %empty_122 = zext i408 %empty_120 to i416
  %empty_123 = shl i416 %empty_121, 408
  %empty_124 = or i416 %empty_123, %empty_122
  %empty_125 = zext i8 %44 to i424
  %empty_126 = zext i416 %empty_124 to i424
  %empty_127 = shl i424 %empty_125, 416
  %empty_128 = or i424 %empty_127, %empty_126
  %empty_129 = zext i8 %43 to i432
  %empty_130 = zext i424 %empty_128 to i432
  %empty_131 = shl i432 %empty_129, 424
  %empty_132 = or i432 %empty_131, %empty_130
  %empty_133 = zext i8 %42 to i440
  %empty_134 = zext i432 %empty_132 to i440
  %empty_135 = shl i440 %empty_133, 432
  %empty_136 = or i440 %empty_135, %empty_134
  %empty_137 = zext i8 %41 to i448
  %empty_138 = zext i440 %empty_136 to i448
  %empty_139 = shl i448 %empty_137, 440
  %empty_140 = or i448 %empty_139, %empty_138
  %empty_141 = zext i8 %40 to i456
  %empty_142 = zext i448 %empty_140 to i456
  %empty_143 = shl i456 %empty_141, 448
  %empty_144 = or i456 %empty_143, %empty_142
  %empty_145 = zext i8 %39 to i464
  %empty_146 = zext i456 %empty_144 to i464
  %empty_147 = shl i464 %empty_145, 456
  %empty_148 = or i464 %empty_147, %empty_146
  %empty_149 = zext i8 %38 to i472
  %empty_150 = zext i464 %empty_148 to i472
  %empty_151 = shl i472 %empty_149, 464
  %empty_152 = or i472 %empty_151, %empty_150
  %empty_153 = zext i8 %37 to i480
  %empty_154 = zext i472 %empty_152 to i480
  %empty_155 = shl i480 %empty_153, 472
  %empty_156 = or i480 %empty_155, %empty_154
  %empty_157 = zext i8 %36 to i488
  %empty_158 = zext i480 %empty_156 to i488
  %empty_159 = shl i488 %empty_157, 480
  %empty_160 = or i488 %empty_159, %empty_158
  %empty_161 = zext i8 %35 to i496
  %empty_162 = zext i488 %empty_160 to i496
  %empty_163 = shl i496 %empty_161, 488
  %empty_164 = or i496 %empty_163, %empty_162
  %empty_165 = zext i8 %34 to i504
  %empty_166 = zext i496 %empty_164 to i504
  %empty_167 = shl i504 %empty_165, 496
  %empty_168 = or i504 %empty_167, %empty_166
  %empty_169 = zext i8 %33 to i512
  %empty_170 = zext i504 %empty_168 to i512
  %empty_171 = shl i512 %empty_169, 504
  %empty_172 = or i512 %empty_171, %empty_170
  %empty_173 = zext i8 %32 to i520
  %empty_174 = zext i512 %empty_172 to i520
  %empty_175 = shl i520 %empty_173, 512
  %empty_176 = or i520 %empty_175, %empty_174
  %empty_177 = zext i8 %31 to i528
  %empty_178 = zext i520 %empty_176 to i528
  %empty_179 = shl i528 %empty_177, 520
  %empty_180 = or i528 %empty_179, %empty_178
  %empty_181 = zext i8 %30 to i536
  %empty_182 = zext i528 %empty_180 to i536
  %empty_183 = shl i536 %empty_181, 528
  %empty_184 = or i536 %empty_183, %empty_182
  %empty_185 = zext i8 %29 to i544
  %empty_186 = zext i536 %empty_184 to i544
  %empty_187 = shl i544 %empty_185, 536
  %empty_188 = or i544 %empty_187, %empty_186
  %empty_189 = zext i8 %28 to i552
  %empty_190 = zext i544 %empty_188 to i552
  %empty_191 = shl i552 %empty_189, 544
  %empty_192 = or i552 %empty_191, %empty_190
  %empty_193 = zext i8 %27 to i560
  %empty_194 = zext i552 %empty_192 to i560
  %empty_195 = shl i560 %empty_193, 552
  %empty_196 = or i560 %empty_195, %empty_194
  %empty_197 = zext i8 %26 to i568
  %empty_198 = zext i560 %empty_196 to i568
  %empty_199 = shl i568 %empty_197, 560
  %empty_200 = or i568 %empty_199, %empty_198
  %empty_201 = zext i8 %25 to i576
  %empty_202 = zext i568 %empty_200 to i576
  %empty_203 = shl i576 %empty_201, 568
  %empty_204 = or i576 %empty_203, %empty_202
  %empty_205 = zext i8 %24 to i584
  %empty_206 = zext i576 %empty_204 to i584
  %empty_207 = shl i584 %empty_205, 576
  %empty_208 = or i584 %empty_207, %empty_206
  %empty_209 = zext i8 %23 to i592
  %empty_210 = zext i584 %empty_208 to i592
  %empty_211 = shl i592 %empty_209, 584
  %empty_212 = or i592 %empty_211, %empty_210
  %empty_213 = zext i8 %22 to i600
  %empty_214 = zext i592 %empty_212 to i600
  %empty_215 = shl i600 %empty_213, 592
  %empty_216 = or i600 %empty_215, %empty_214
  %empty_217 = zext i8 %21 to i608
  %empty_218 = zext i600 %empty_216 to i608
  %empty_219 = shl i608 %empty_217, 600
  %empty_220 = or i608 %empty_219, %empty_218
  %empty_221 = zext i8 %20 to i616
  %empty_222 = zext i608 %empty_220 to i616
  %empty_223 = shl i616 %empty_221, 608
  %empty_224 = or i616 %empty_223, %empty_222
  %empty_225 = zext i8 %19 to i624
  %empty_226 = zext i616 %empty_224 to i624
  %empty_227 = shl i624 %empty_225, 616
  %empty_228 = or i624 %empty_227, %empty_226
  %empty_229 = zext i8 %18 to i632
  %empty_230 = zext i624 %empty_228 to i632
  %empty_231 = shl i632 %empty_229, 624
  %empty_232 = or i632 %empty_231, %empty_230
  %empty_233 = zext i8 %17 to i640
  %empty_234 = zext i632 %empty_232 to i640
  %empty_235 = shl i640 %empty_233, 632
  %empty_236 = or i640 %empty_235, %empty_234
  %empty_237 = zext i8 %16 to i648
  %empty_238 = zext i640 %empty_236 to i648
  %empty_239 = shl i648 %empty_237, 640
  %empty_240 = or i648 %empty_239, %empty_238
  %empty_241 = zext i8 %15 to i656
  %empty_242 = zext i648 %empty_240 to i656
  %empty_243 = shl i656 %empty_241, 648
  %empty_244 = or i656 %empty_243, %empty_242
  %empty_245 = zext i8 %14 to i664
  %empty_246 = zext i656 %empty_244 to i664
  %empty_247 = shl i664 %empty_245, 656
  %empty_248 = or i664 %empty_247, %empty_246
  %empty_249 = zext i8 %13 to i672
  %empty_250 = zext i664 %empty_248 to i672
  %empty_251 = shl i672 %empty_249, 664
  %empty_252 = or i672 %empty_251, %empty_250
  %empty_253 = zext i8 %12 to i680
  %empty_254 = zext i672 %empty_252 to i680
  %empty_255 = shl i680 %empty_253, 672
  %empty_256 = or i680 %empty_255, %empty_254
  %empty_257 = zext i8 %11 to i688
  %empty_258 = zext i680 %empty_256 to i688
  %empty_259 = shl i688 %empty_257, 680
  %empty_260 = or i688 %empty_259, %empty_258
  %empty_261 = zext i8 %10 to i696
  %empty_262 = zext i688 %empty_260 to i696
  %empty_263 = shl i696 %empty_261, 688
  %empty_264 = or i696 %empty_263, %empty_262
  %empty_265 = zext i8 %9 to i704
  %empty_266 = zext i696 %empty_264 to i704
  %empty_267 = shl i704 %empty_265, 696
  %empty_268 = or i704 %empty_267, %empty_266
  %empty_269 = zext i8 %8 to i712
  %empty_270 = zext i704 %empty_268 to i712
  %empty_271 = shl i712 %empty_269, 704
  %empty_272 = or i712 %empty_271, %empty_270
  %empty_273 = zext i8 %7 to i720
  %empty_274 = zext i712 %empty_272 to i720
  %empty_275 = shl i720 %empty_273, 712
  %empty_276 = or i720 %empty_275, %empty_274
  %empty_277 = zext i8 %6 to i728
  %empty_278 = zext i720 %empty_276 to i728
  %empty_279 = shl i728 %empty_277, 720
  %empty_280 = or i728 %empty_279, %empty_278
  %empty_281 = zext i8 %5 to i736
  %empty_282 = zext i728 %empty_280 to i736
  %empty_283 = shl i736 %empty_281, 728
  %empty_284 = or i736 %empty_283, %empty_282
  %empty_285 = zext i8 %4 to i744
  %empty_286 = zext i736 %empty_284 to i744
  %empty_287 = shl i744 %empty_285, 736
  %empty_288 = or i744 %empty_287, %empty_286
  %empty_289 = zext i8 %3 to i752
  %empty_290 = zext i744 %empty_288 to i752
  %empty_291 = shl i752 %empty_289, 744
  %empty_292 = or i752 %empty_291, %empty_290
  %empty_293 = zext i8 %2 to i760
  %empty_294 = zext i752 %empty_292 to i760
  %empty_295 = shl i760 %empty_293, 752
  %empty_296 = or i760 %empty_295, %empty_294
  %empty_297 = zext i8 %1 to i768
  %empty_298 = zext i760 %empty_296 to i768
  %empty_299 = shl i768 %empty_297, 760
  %empty_300 = or i768 %empty_299, %empty_298
  %empty_301 = zext i256 %0 to i1024
  %empty_302 = zext i768 %empty_300 to i1024
  %empty_303 = shl i1024 %empty_301, 768
  %empty_304 = or i1024 %empty_303, %empty_302
  ret i1024 %empty_304
}

define weak i1024 @_ssdm_op_BitConcatenate.i1024.i256.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i8.i512(i256, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i512) nounwind readnone {
entry:
  %empty = zext i8 %32 to i520
  %empty_305 = zext i512 %33 to i520
  %empty_306 = shl i520 %empty, 512
  %empty_307 = or i520 %empty_306, %empty_305
  %empty_308 = zext i8 %31 to i528
  %empty_309 = zext i520 %empty_307 to i528
  %empty_310 = shl i528 %empty_308, 520
  %empty_311 = or i528 %empty_310, %empty_309
  %empty_312 = zext i8 %30 to i536
  %empty_313 = zext i528 %empty_311 to i536
  %empty_314 = shl i536 %empty_312, 528
  %empty_315 = or i536 %empty_314, %empty_313
  %empty_316 = zext i8 %29 to i544
  %empty_317 = zext i536 %empty_315 to i544
  %empty_318 = shl i544 %empty_316, 536
  %empty_319 = or i544 %empty_318, %empty_317
  %empty_320 = zext i8 %28 to i552
  %empty_321 = zext i544 %empty_319 to i552
  %empty_322 = shl i552 %empty_320, 544
  %empty_323 = or i552 %empty_322, %empty_321
  %empty_324 = zext i8 %27 to i560
  %empty_325 = zext i552 %empty_323 to i560
  %empty_326 = shl i560 %empty_324, 552
  %empty_327 = or i560 %empty_326, %empty_325
  %empty_328 = zext i8 %26 to i568
  %empty_329 = zext i560 %empty_327 to i568
  %empty_330 = shl i568 %empty_328, 560
  %empty_331 = or i568 %empty_330, %empty_329
  %empty_332 = zext i8 %25 to i576
  %empty_333 = zext i568 %empty_331 to i576
  %empty_334 = shl i576 %empty_332, 568
  %empty_335 = or i576 %empty_334, %empty_333
  %empty_336 = zext i8 %24 to i584
  %empty_337 = zext i576 %empty_335 to i584
  %empty_338 = shl i584 %empty_336, 576
  %empty_339 = or i584 %empty_338, %empty_337
  %empty_340 = zext i8 %23 to i592
  %empty_341 = zext i584 %empty_339 to i592
  %empty_342 = shl i592 %empty_340, 584
  %empty_343 = or i592 %empty_342, %empty_341
  %empty_344 = zext i8 %22 to i600
  %empty_345 = zext i592 %empty_343 to i600
  %empty_346 = shl i600 %empty_344, 592
  %empty_347 = or i600 %empty_346, %empty_345
  %empty_348 = zext i8 %21 to i608
  %empty_349 = zext i600 %empty_347 to i608
  %empty_350 = shl i608 %empty_348, 600
  %empty_351 = or i608 %empty_350, %empty_349
  %empty_352 = zext i8 %20 to i616
  %empty_353 = zext i608 %empty_351 to i616
  %empty_354 = shl i616 %empty_352, 608
  %empty_355 = or i616 %empty_354, %empty_353
  %empty_356 = zext i8 %19 to i624
  %empty_357 = zext i616 %empty_355 to i624
  %empty_358 = shl i624 %empty_356, 616
  %empty_359 = or i624 %empty_358, %empty_357
  %empty_360 = zext i8 %18 to i632
  %empty_361 = zext i624 %empty_359 to i632
  %empty_362 = shl i632 %empty_360, 624
  %empty_363 = or i632 %empty_362, %empty_361
  %empty_364 = zext i8 %17 to i640
  %empty_365 = zext i632 %empty_363 to i640
  %empty_366 = shl i640 %empty_364, 632
  %empty_367 = or i640 %empty_366, %empty_365
  %empty_368 = zext i8 %16 to i648
  %empty_369 = zext i640 %empty_367 to i648
  %empty_370 = shl i648 %empty_368, 640
  %empty_371 = or i648 %empty_370, %empty_369
  %empty_372 = zext i8 %15 to i656
  %empty_373 = zext i648 %empty_371 to i656
  %empty_374 = shl i656 %empty_372, 648
  %empty_375 = or i656 %empty_374, %empty_373
  %empty_376 = zext i8 %14 to i664
  %empty_377 = zext i656 %empty_375 to i664
  %empty_378 = shl i664 %empty_376, 656
  %empty_379 = or i664 %empty_378, %empty_377
  %empty_380 = zext i8 %13 to i672
  %empty_381 = zext i664 %empty_379 to i672
  %empty_382 = shl i672 %empty_380, 664
  %empty_383 = or i672 %empty_382, %empty_381
  %empty_384 = zext i8 %12 to i680
  %empty_385 = zext i672 %empty_383 to i680
  %empty_386 = shl i680 %empty_384, 672
  %empty_387 = or i680 %empty_386, %empty_385
  %empty_388 = zext i8 %11 to i688
  %empty_389 = zext i680 %empty_387 to i688
  %empty_390 = shl i688 %empty_388, 680
  %empty_391 = or i688 %empty_390, %empty_389
  %empty_392 = zext i8 %10 to i696
  %empty_393 = zext i688 %empty_391 to i696
  %empty_394 = shl i696 %empty_392, 688
  %empty_395 = or i696 %empty_394, %empty_393
  %empty_396 = zext i8 %9 to i704
  %empty_397 = zext i696 %empty_395 to i704
  %empty_398 = shl i704 %empty_396, 696
  %empty_399 = or i704 %empty_398, %empty_397
  %empty_400 = zext i8 %8 to i712
  %empty_401 = zext i704 %empty_399 to i712
  %empty_402 = shl i712 %empty_400, 704
  %empty_403 = or i712 %empty_402, %empty_401
  %empty_404 = zext i8 %7 to i720
  %empty_405 = zext i712 %empty_403 to i720
  %empty_406 = shl i720 %empty_404, 712
  %empty_407 = or i720 %empty_406, %empty_405
  %empty_408 = zext i8 %6 to i728
  %empty_409 = zext i720 %empty_407 to i728
  %empty_410 = shl i728 %empty_408, 720
  %empty_411 = or i728 %empty_410, %empty_409
  %empty_412 = zext i8 %5 to i736
  %empty_413 = zext i728 %empty_411 to i736
  %empty_414 = shl i736 %empty_412, 728
  %empty_415 = or i736 %empty_414, %empty_413
  %empty_416 = zext i8 %4 to i744
  %empty_417 = zext i736 %empty_415 to i744
  %empty_418 = shl i744 %empty_416, 736
  %empty_419 = or i744 %empty_418, %empty_417
  %empty_420 = zext i8 %3 to i752
  %empty_421 = zext i744 %empty_419 to i752
  %empty_422 = shl i752 %empty_420, 744
  %empty_423 = or i752 %empty_422, %empty_421
  %empty_424 = zext i8 %2 to i760
  %empty_425 = zext i752 %empty_423 to i760
  %empty_426 = shl i760 %empty_424, 752
  %empty_427 = or i760 %empty_426, %empty_425
  %empty_428 = zext i8 %1 to i768
  %empty_429 = zext i760 %empty_427 to i768
  %empty_430 = shl i768 %empty_428, 760
  %empty_431 = or i768 %empty_430, %empty_429
  %empty_432 = zext i256 %0 to i1024
  %empty_433 = zext i768 %empty_431 to i1024
  %empty_434 = shl i1024 %empty_432, 768
  %empty_435 = or i1024 %empty_434, %empty_433
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
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 7, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"buf", metadata !34, metadata !"unsigned char", i32 0, i32 7}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 15, i32 1}
!36 = metadata !{metadata !37, metadata !42, metadata !47, metadata !52, metadata !57, metadata !62, metadata !67, metadata !72, metadata !77, metadata !82, metadata !87, metadata !92, metadata !97, metadata !102, metadata !107, metadata !112, metadata !117, metadata !122, metadata !127, metadata !132, metadata !137, metadata !142, metadata !147, metadata !152, metadata !157, metadata !162, metadata !167, metadata !172, metadata !177, metadata !182, metadata !187, metadata !192, metadata !197, metadata !200, metadata !203, metadata !206, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !224, metadata !227, metadata !230, metadata !233, metadata !236, metadata !239, metadata !242, metadata !245, metadata !248, metadata !251, metadata !254, metadata !257, metadata !260, metadata !263, metadata !266, metadata !269, metadata !272, metadata !275, metadata !278, metadata !281, metadata !284, metadata !287, metadata !290, metadata !293, metadata !296, metadata !299, metadata !302, metadata !305, metadata !308, metadata !311, metadata !314, metadata !317, metadata !320, metadata !323, metadata !326, metadata !329, metadata !332, metadata !335, metadata !338, metadata !341, metadata !344, metadata !347, metadata !350, metadata !353, metadata !356, metadata !359, metadata !362, metadata !365, metadata !368, metadata !371, metadata !374, metadata !377, metadata !380, metadata !383, metadata !386, metadata !389, metadata !392, metadata !395, metadata !398, metadata !401, metadata !404, metadata !407, metadata !410, metadata !413, metadata !416, metadata !419, metadata !422, metadata !425, metadata !428, metadata !431, metadata !434, metadata !437, metadata !440, metadata !443, metadata !446, metadata !449, metadata !452, metadata !455, metadata !458, metadata !461, metadata !464, metadata !467, metadata !470, metadata !473, metadata !476, metadata !479, metadata !482}
!37 = metadata !{i32 0, i32 7, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"ctx.key", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, i32 2}
!42 = metadata !{i32 8, i32 15, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"ctx.key", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 1, i32 1, i32 2}
!47 = metadata !{i32 16, i32 23, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"ctx.key", metadata !50, metadata !"unsigned char", i32 0, i32 7}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 2, i32 2, i32 2}
!52 = metadata !{i32 24, i32 31, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"ctx.key", metadata !55, metadata !"unsigned char", i32 0, i32 7}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 3, i32 3, i32 2}
!57 = metadata !{i32 32, i32 39, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"ctx.key", metadata !60, metadata !"unsigned char", i32 0, i32 7}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 4, i32 4, i32 2}
!62 = metadata !{i32 40, i32 47, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"ctx.key", metadata !65, metadata !"unsigned char", i32 0, i32 7}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 5, i32 5, i32 2}
!67 = metadata !{i32 48, i32 55, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"ctx.key", metadata !70, metadata !"unsigned char", i32 0, i32 7}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 6, i32 6, i32 2}
!72 = metadata !{i32 56, i32 63, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"ctx.key", metadata !75, metadata !"unsigned char", i32 0, i32 7}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 7, i32 7, i32 2}
!77 = metadata !{i32 64, i32 71, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"ctx.key", metadata !80, metadata !"unsigned char", i32 0, i32 7}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 8, i32 8, i32 2}
!82 = metadata !{i32 72, i32 79, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"ctx.key", metadata !85, metadata !"unsigned char", i32 0, i32 7}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 9, i32 9, i32 2}
!87 = metadata !{i32 80, i32 87, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"ctx.key", metadata !90, metadata !"unsigned char", i32 0, i32 7}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 10, i32 10, i32 2}
!92 = metadata !{i32 88, i32 95, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"ctx.key", metadata !95, metadata !"unsigned char", i32 0, i32 7}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 11, i32 11, i32 2}
!97 = metadata !{i32 96, i32 103, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"ctx.key", metadata !100, metadata !"unsigned char", i32 0, i32 7}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 12, i32 12, i32 2}
!102 = metadata !{i32 104, i32 111, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"ctx.key", metadata !105, metadata !"unsigned char", i32 0, i32 7}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 13, i32 13, i32 2}
!107 = metadata !{i32 112, i32 119, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"ctx.key", metadata !110, metadata !"unsigned char", i32 0, i32 7}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 14, i32 14, i32 2}
!112 = metadata !{i32 120, i32 127, metadata !113}
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !"ctx.key", metadata !115, metadata !"unsigned char", i32 0, i32 7}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 15, i32 15, i32 2}
!117 = metadata !{i32 128, i32 135, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"ctx.key", metadata !120, metadata !"unsigned char", i32 0, i32 7}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 16, i32 16, i32 2}
!122 = metadata !{i32 136, i32 143, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"ctx.key", metadata !125, metadata !"unsigned char", i32 0, i32 7}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 17, i32 17, i32 2}
!127 = metadata !{i32 144, i32 151, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"ctx.key", metadata !130, metadata !"unsigned char", i32 0, i32 7}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 18, i32 18, i32 2}
!132 = metadata !{i32 152, i32 159, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"ctx.key", metadata !135, metadata !"unsigned char", i32 0, i32 7}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 19, i32 19, i32 2}
!137 = metadata !{i32 160, i32 167, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"ctx.key", metadata !140, metadata !"unsigned char", i32 0, i32 7}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 20, i32 20, i32 2}
!142 = metadata !{i32 168, i32 175, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"ctx.key", metadata !145, metadata !"unsigned char", i32 0, i32 7}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 21, i32 21, i32 2}
!147 = metadata !{i32 176, i32 183, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"ctx.key", metadata !150, metadata !"unsigned char", i32 0, i32 7}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 22, i32 22, i32 2}
!152 = metadata !{i32 184, i32 191, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"ctx.key", metadata !155, metadata !"unsigned char", i32 0, i32 7}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 23, i32 23, i32 2}
!157 = metadata !{i32 192, i32 199, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"ctx.key", metadata !160, metadata !"unsigned char", i32 0, i32 7}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 24, i32 24, i32 2}
!162 = metadata !{i32 200, i32 207, metadata !163}
!163 = metadata !{metadata !164}
!164 = metadata !{metadata !"ctx.key", metadata !165, metadata !"unsigned char", i32 0, i32 7}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 25, i32 25, i32 2}
!167 = metadata !{i32 208, i32 215, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"ctx.key", metadata !170, metadata !"unsigned char", i32 0, i32 7}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 26, i32 26, i32 2}
!172 = metadata !{i32 216, i32 223, metadata !173}
!173 = metadata !{metadata !174}
!174 = metadata !{metadata !"ctx.key", metadata !175, metadata !"unsigned char", i32 0, i32 7}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 27, i32 27, i32 2}
!177 = metadata !{i32 224, i32 231, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"ctx.key", metadata !180, metadata !"unsigned char", i32 0, i32 7}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 28, i32 28, i32 2}
!182 = metadata !{i32 232, i32 239, metadata !183}
!183 = metadata !{metadata !184}
!184 = metadata !{metadata !"ctx.key", metadata !185, metadata !"unsigned char", i32 0, i32 7}
!185 = metadata !{metadata !186}
!186 = metadata !{i32 29, i32 29, i32 2}
!187 = metadata !{i32 240, i32 247, metadata !188}
!188 = metadata !{metadata !189}
!189 = metadata !{metadata !"ctx.key", metadata !190, metadata !"unsigned char", i32 0, i32 7}
!190 = metadata !{metadata !191}
!191 = metadata !{i32 30, i32 30, i32 2}
!192 = metadata !{i32 248, i32 255, metadata !193}
!193 = metadata !{metadata !194}
!194 = metadata !{metadata !"ctx.key", metadata !195, metadata !"unsigned char", i32 0, i32 7}
!195 = metadata !{metadata !196}
!196 = metadata !{i32 31, i32 31, i32 2}
!197 = metadata !{i32 256, i32 263, metadata !198}
!198 = metadata !{metadata !199}
!199 = metadata !{metadata !"ctx.enckey", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!200 = metadata !{i32 264, i32 271, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"ctx.enckey", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!203 = metadata !{i32 272, i32 279, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"ctx.enckey", metadata !50, metadata !"unsigned char", i32 0, i32 7}
!206 = metadata !{i32 280, i32 287, metadata !207}
!207 = metadata !{metadata !208}
!208 = metadata !{metadata !"ctx.enckey", metadata !55, metadata !"unsigned char", i32 0, i32 7}
!209 = metadata !{i32 288, i32 295, metadata !210}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !"ctx.enckey", metadata !60, metadata !"unsigned char", i32 0, i32 7}
!212 = metadata !{i32 296, i32 303, metadata !213}
!213 = metadata !{metadata !214}
!214 = metadata !{metadata !"ctx.enckey", metadata !65, metadata !"unsigned char", i32 0, i32 7}
!215 = metadata !{i32 304, i32 311, metadata !216}
!216 = metadata !{metadata !217}
!217 = metadata !{metadata !"ctx.enckey", metadata !70, metadata !"unsigned char", i32 0, i32 7}
!218 = metadata !{i32 312, i32 319, metadata !219}
!219 = metadata !{metadata !220}
!220 = metadata !{metadata !"ctx.enckey", metadata !75, metadata !"unsigned char", i32 0, i32 7}
!221 = metadata !{i32 320, i32 327, metadata !222}
!222 = metadata !{metadata !223}
!223 = metadata !{metadata !"ctx.enckey", metadata !80, metadata !"unsigned char", i32 0, i32 7}
!224 = metadata !{i32 328, i32 335, metadata !225}
!225 = metadata !{metadata !226}
!226 = metadata !{metadata !"ctx.enckey", metadata !85, metadata !"unsigned char", i32 0, i32 7}
!227 = metadata !{i32 336, i32 343, metadata !228}
!228 = metadata !{metadata !229}
!229 = metadata !{metadata !"ctx.enckey", metadata !90, metadata !"unsigned char", i32 0, i32 7}
!230 = metadata !{i32 344, i32 351, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"ctx.enckey", metadata !95, metadata !"unsigned char", i32 0, i32 7}
!233 = metadata !{i32 352, i32 359, metadata !234}
!234 = metadata !{metadata !235}
!235 = metadata !{metadata !"ctx.enckey", metadata !100, metadata !"unsigned char", i32 0, i32 7}
!236 = metadata !{i32 360, i32 367, metadata !237}
!237 = metadata !{metadata !238}
!238 = metadata !{metadata !"ctx.enckey", metadata !105, metadata !"unsigned char", i32 0, i32 7}
!239 = metadata !{i32 368, i32 375, metadata !240}
!240 = metadata !{metadata !241}
!241 = metadata !{metadata !"ctx.enckey", metadata !110, metadata !"unsigned char", i32 0, i32 7}
!242 = metadata !{i32 376, i32 383, metadata !243}
!243 = metadata !{metadata !244}
!244 = metadata !{metadata !"ctx.enckey", metadata !115, metadata !"unsigned char", i32 0, i32 7}
!245 = metadata !{i32 384, i32 391, metadata !246}
!246 = metadata !{metadata !247}
!247 = metadata !{metadata !"ctx.enckey", metadata !120, metadata !"unsigned char", i32 0, i32 7}
!248 = metadata !{i32 392, i32 399, metadata !249}
!249 = metadata !{metadata !250}
!250 = metadata !{metadata !"ctx.enckey", metadata !125, metadata !"unsigned char", i32 0, i32 7}
!251 = metadata !{i32 400, i32 407, metadata !252}
!252 = metadata !{metadata !253}
!253 = metadata !{metadata !"ctx.enckey", metadata !130, metadata !"unsigned char", i32 0, i32 7}
!254 = metadata !{i32 408, i32 415, metadata !255}
!255 = metadata !{metadata !256}
!256 = metadata !{metadata !"ctx.enckey", metadata !135, metadata !"unsigned char", i32 0, i32 7}
!257 = metadata !{i32 416, i32 423, metadata !258}
!258 = metadata !{metadata !259}
!259 = metadata !{metadata !"ctx.enckey", metadata !140, metadata !"unsigned char", i32 0, i32 7}
!260 = metadata !{i32 424, i32 431, metadata !261}
!261 = metadata !{metadata !262}
!262 = metadata !{metadata !"ctx.enckey", metadata !145, metadata !"unsigned char", i32 0, i32 7}
!263 = metadata !{i32 432, i32 439, metadata !264}
!264 = metadata !{metadata !265}
!265 = metadata !{metadata !"ctx.enckey", metadata !150, metadata !"unsigned char", i32 0, i32 7}
!266 = metadata !{i32 440, i32 447, metadata !267}
!267 = metadata !{metadata !268}
!268 = metadata !{metadata !"ctx.enckey", metadata !155, metadata !"unsigned char", i32 0, i32 7}
!269 = metadata !{i32 448, i32 455, metadata !270}
!270 = metadata !{metadata !271}
!271 = metadata !{metadata !"ctx.enckey", metadata !160, metadata !"unsigned char", i32 0, i32 7}
!272 = metadata !{i32 456, i32 463, metadata !273}
!273 = metadata !{metadata !274}
!274 = metadata !{metadata !"ctx.enckey", metadata !165, metadata !"unsigned char", i32 0, i32 7}
!275 = metadata !{i32 464, i32 471, metadata !276}
!276 = metadata !{metadata !277}
!277 = metadata !{metadata !"ctx.enckey", metadata !170, metadata !"unsigned char", i32 0, i32 7}
!278 = metadata !{i32 472, i32 479, metadata !279}
!279 = metadata !{metadata !280}
!280 = metadata !{metadata !"ctx.enckey", metadata !175, metadata !"unsigned char", i32 0, i32 7}
!281 = metadata !{i32 480, i32 487, metadata !282}
!282 = metadata !{metadata !283}
!283 = metadata !{metadata !"ctx.enckey", metadata !180, metadata !"unsigned char", i32 0, i32 7}
!284 = metadata !{i32 488, i32 495, metadata !285}
!285 = metadata !{metadata !286}
!286 = metadata !{metadata !"ctx.enckey", metadata !185, metadata !"unsigned char", i32 0, i32 7}
!287 = metadata !{i32 496, i32 503, metadata !288}
!288 = metadata !{metadata !289}
!289 = metadata !{metadata !"ctx.enckey", metadata !190, metadata !"unsigned char", i32 0, i32 7}
!290 = metadata !{i32 504, i32 511, metadata !291}
!291 = metadata !{metadata !292}
!292 = metadata !{metadata !"ctx.enckey", metadata !195, metadata !"unsigned char", i32 0, i32 7}
!293 = metadata !{i32 512, i32 519, metadata !294}
!294 = metadata !{metadata !295}
!295 = metadata !{metadata !"ctx.deckey", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!296 = metadata !{i32 520, i32 527, metadata !297}
!297 = metadata !{metadata !298}
!298 = metadata !{metadata !"ctx.deckey", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!299 = metadata !{i32 528, i32 535, metadata !300}
!300 = metadata !{metadata !301}
!301 = metadata !{metadata !"ctx.deckey", metadata !50, metadata !"unsigned char", i32 0, i32 7}
!302 = metadata !{i32 536, i32 543, metadata !303}
!303 = metadata !{metadata !304}
!304 = metadata !{metadata !"ctx.deckey", metadata !55, metadata !"unsigned char", i32 0, i32 7}
!305 = metadata !{i32 544, i32 551, metadata !306}
!306 = metadata !{metadata !307}
!307 = metadata !{metadata !"ctx.deckey", metadata !60, metadata !"unsigned char", i32 0, i32 7}
!308 = metadata !{i32 552, i32 559, metadata !309}
!309 = metadata !{metadata !310}
!310 = metadata !{metadata !"ctx.deckey", metadata !65, metadata !"unsigned char", i32 0, i32 7}
!311 = metadata !{i32 560, i32 567, metadata !312}
!312 = metadata !{metadata !313}
!313 = metadata !{metadata !"ctx.deckey", metadata !70, metadata !"unsigned char", i32 0, i32 7}
!314 = metadata !{i32 568, i32 575, metadata !315}
!315 = metadata !{metadata !316}
!316 = metadata !{metadata !"ctx.deckey", metadata !75, metadata !"unsigned char", i32 0, i32 7}
!317 = metadata !{i32 576, i32 583, metadata !318}
!318 = metadata !{metadata !319}
!319 = metadata !{metadata !"ctx.deckey", metadata !80, metadata !"unsigned char", i32 0, i32 7}
!320 = metadata !{i32 584, i32 591, metadata !321}
!321 = metadata !{metadata !322}
!322 = metadata !{metadata !"ctx.deckey", metadata !85, metadata !"unsigned char", i32 0, i32 7}
!323 = metadata !{i32 592, i32 599, metadata !324}
!324 = metadata !{metadata !325}
!325 = metadata !{metadata !"ctx.deckey", metadata !90, metadata !"unsigned char", i32 0, i32 7}
!326 = metadata !{i32 600, i32 607, metadata !327}
!327 = metadata !{metadata !328}
!328 = metadata !{metadata !"ctx.deckey", metadata !95, metadata !"unsigned char", i32 0, i32 7}
!329 = metadata !{i32 608, i32 615, metadata !330}
!330 = metadata !{metadata !331}
!331 = metadata !{metadata !"ctx.deckey", metadata !100, metadata !"unsigned char", i32 0, i32 7}
!332 = metadata !{i32 616, i32 623, metadata !333}
!333 = metadata !{metadata !334}
!334 = metadata !{metadata !"ctx.deckey", metadata !105, metadata !"unsigned char", i32 0, i32 7}
!335 = metadata !{i32 624, i32 631, metadata !336}
!336 = metadata !{metadata !337}
!337 = metadata !{metadata !"ctx.deckey", metadata !110, metadata !"unsigned char", i32 0, i32 7}
!338 = metadata !{i32 632, i32 639, metadata !339}
!339 = metadata !{metadata !340}
!340 = metadata !{metadata !"ctx.deckey", metadata !115, metadata !"unsigned char", i32 0, i32 7}
!341 = metadata !{i32 640, i32 647, metadata !342}
!342 = metadata !{metadata !343}
!343 = metadata !{metadata !"ctx.deckey", metadata !120, metadata !"unsigned char", i32 0, i32 7}
!344 = metadata !{i32 648, i32 655, metadata !345}
!345 = metadata !{metadata !346}
!346 = metadata !{metadata !"ctx.deckey", metadata !125, metadata !"unsigned char", i32 0, i32 7}
!347 = metadata !{i32 656, i32 663, metadata !348}
!348 = metadata !{metadata !349}
!349 = metadata !{metadata !"ctx.deckey", metadata !130, metadata !"unsigned char", i32 0, i32 7}
!350 = metadata !{i32 664, i32 671, metadata !351}
!351 = metadata !{metadata !352}
!352 = metadata !{metadata !"ctx.deckey", metadata !135, metadata !"unsigned char", i32 0, i32 7}
!353 = metadata !{i32 672, i32 679, metadata !354}
!354 = metadata !{metadata !355}
!355 = metadata !{metadata !"ctx.deckey", metadata !140, metadata !"unsigned char", i32 0, i32 7}
!356 = metadata !{i32 680, i32 687, metadata !357}
!357 = metadata !{metadata !358}
!358 = metadata !{metadata !"ctx.deckey", metadata !145, metadata !"unsigned char", i32 0, i32 7}
!359 = metadata !{i32 688, i32 695, metadata !360}
!360 = metadata !{metadata !361}
!361 = metadata !{metadata !"ctx.deckey", metadata !150, metadata !"unsigned char", i32 0, i32 7}
!362 = metadata !{i32 696, i32 703, metadata !363}
!363 = metadata !{metadata !364}
!364 = metadata !{metadata !"ctx.deckey", metadata !155, metadata !"unsigned char", i32 0, i32 7}
!365 = metadata !{i32 704, i32 711, metadata !366}
!366 = metadata !{metadata !367}
!367 = metadata !{metadata !"ctx.deckey", metadata !160, metadata !"unsigned char", i32 0, i32 7}
!368 = metadata !{i32 712, i32 719, metadata !369}
!369 = metadata !{metadata !370}
!370 = metadata !{metadata !"ctx.deckey", metadata !165, metadata !"unsigned char", i32 0, i32 7}
!371 = metadata !{i32 720, i32 727, metadata !372}
!372 = metadata !{metadata !373}
!373 = metadata !{metadata !"ctx.deckey", metadata !170, metadata !"unsigned char", i32 0, i32 7}
!374 = metadata !{i32 728, i32 735, metadata !375}
!375 = metadata !{metadata !376}
!376 = metadata !{metadata !"ctx.deckey", metadata !175, metadata !"unsigned char", i32 0, i32 7}
!377 = metadata !{i32 736, i32 743, metadata !378}
!378 = metadata !{metadata !379}
!379 = metadata !{metadata !"ctx.deckey", metadata !180, metadata !"unsigned char", i32 0, i32 7}
!380 = metadata !{i32 744, i32 751, metadata !381}
!381 = metadata !{metadata !382}
!382 = metadata !{metadata !"ctx.deckey", metadata !185, metadata !"unsigned char", i32 0, i32 7}
!383 = metadata !{i32 752, i32 759, metadata !384}
!384 = metadata !{metadata !385}
!385 = metadata !{metadata !"ctx.deckey", metadata !190, metadata !"unsigned char", i32 0, i32 7}
!386 = metadata !{i32 760, i32 767, metadata !387}
!387 = metadata !{metadata !388}
!388 = metadata !{metadata !"ctx.deckey", metadata !195, metadata !"unsigned char", i32 0, i32 7}
!389 = metadata !{i32 768, i32 775, metadata !390}
!390 = metadata !{metadata !391}
!391 = metadata !{metadata !"ctx.dummy", metadata !40, metadata !"unsigned char", i32 0, i32 7}
!392 = metadata !{i32 776, i32 783, metadata !393}
!393 = metadata !{metadata !394}
!394 = metadata !{metadata !"ctx.dummy", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!395 = metadata !{i32 784, i32 791, metadata !396}
!396 = metadata !{metadata !397}
!397 = metadata !{metadata !"ctx.dummy", metadata !50, metadata !"unsigned char", i32 0, i32 7}
!398 = metadata !{i32 792, i32 799, metadata !399}
!399 = metadata !{metadata !400}
!400 = metadata !{metadata !"ctx.dummy", metadata !55, metadata !"unsigned char", i32 0, i32 7}
!401 = metadata !{i32 800, i32 807, metadata !402}
!402 = metadata !{metadata !403}
!403 = metadata !{metadata !"ctx.dummy", metadata !60, metadata !"unsigned char", i32 0, i32 7}
!404 = metadata !{i32 808, i32 815, metadata !405}
!405 = metadata !{metadata !406}
!406 = metadata !{metadata !"ctx.dummy", metadata !65, metadata !"unsigned char", i32 0, i32 7}
!407 = metadata !{i32 816, i32 823, metadata !408}
!408 = metadata !{metadata !409}
!409 = metadata !{metadata !"ctx.dummy", metadata !70, metadata !"unsigned char", i32 0, i32 7}
!410 = metadata !{i32 824, i32 831, metadata !411}
!411 = metadata !{metadata !412}
!412 = metadata !{metadata !"ctx.dummy", metadata !75, metadata !"unsigned char", i32 0, i32 7}
!413 = metadata !{i32 832, i32 839, metadata !414}
!414 = metadata !{metadata !415}
!415 = metadata !{metadata !"ctx.dummy", metadata !80, metadata !"unsigned char", i32 0, i32 7}
!416 = metadata !{i32 840, i32 847, metadata !417}
!417 = metadata !{metadata !418}
!418 = metadata !{metadata !"ctx.dummy", metadata !85, metadata !"unsigned char", i32 0, i32 7}
!419 = metadata !{i32 848, i32 855, metadata !420}
!420 = metadata !{metadata !421}
!421 = metadata !{metadata !"ctx.dummy", metadata !90, metadata !"unsigned char", i32 0, i32 7}
!422 = metadata !{i32 856, i32 863, metadata !423}
!423 = metadata !{metadata !424}
!424 = metadata !{metadata !"ctx.dummy", metadata !95, metadata !"unsigned char", i32 0, i32 7}
!425 = metadata !{i32 864, i32 871, metadata !426}
!426 = metadata !{metadata !427}
!427 = metadata !{metadata !"ctx.dummy", metadata !100, metadata !"unsigned char", i32 0, i32 7}
!428 = metadata !{i32 872, i32 879, metadata !429}
!429 = metadata !{metadata !430}
!430 = metadata !{metadata !"ctx.dummy", metadata !105, metadata !"unsigned char", i32 0, i32 7}
!431 = metadata !{i32 880, i32 887, metadata !432}
!432 = metadata !{metadata !433}
!433 = metadata !{metadata !"ctx.dummy", metadata !110, metadata !"unsigned char", i32 0, i32 7}
!434 = metadata !{i32 888, i32 895, metadata !435}
!435 = metadata !{metadata !436}
!436 = metadata !{metadata !"ctx.dummy", metadata !115, metadata !"unsigned char", i32 0, i32 7}
!437 = metadata !{i32 896, i32 903, metadata !438}
!438 = metadata !{metadata !439}
!439 = metadata !{metadata !"ctx.dummy", metadata !120, metadata !"unsigned char", i32 0, i32 7}
!440 = metadata !{i32 904, i32 911, metadata !441}
!441 = metadata !{metadata !442}
!442 = metadata !{metadata !"ctx.dummy", metadata !125, metadata !"unsigned char", i32 0, i32 7}
!443 = metadata !{i32 912, i32 919, metadata !444}
!444 = metadata !{metadata !445}
!445 = metadata !{metadata !"ctx.dummy", metadata !130, metadata !"unsigned char", i32 0, i32 7}
!446 = metadata !{i32 920, i32 927, metadata !447}
!447 = metadata !{metadata !448}
!448 = metadata !{metadata !"ctx.dummy", metadata !135, metadata !"unsigned char", i32 0, i32 7}
!449 = metadata !{i32 928, i32 935, metadata !450}
!450 = metadata !{metadata !451}
!451 = metadata !{metadata !"ctx.dummy", metadata !140, metadata !"unsigned char", i32 0, i32 7}
!452 = metadata !{i32 936, i32 943, metadata !453}
!453 = metadata !{metadata !454}
!454 = metadata !{metadata !"ctx.dummy", metadata !145, metadata !"unsigned char", i32 0, i32 7}
!455 = metadata !{i32 944, i32 951, metadata !456}
!456 = metadata !{metadata !457}
!457 = metadata !{metadata !"ctx.dummy", metadata !150, metadata !"unsigned char", i32 0, i32 7}
!458 = metadata !{i32 952, i32 959, metadata !459}
!459 = metadata !{metadata !460}
!460 = metadata !{metadata !"ctx.dummy", metadata !155, metadata !"unsigned char", i32 0, i32 7}
!461 = metadata !{i32 960, i32 967, metadata !462}
!462 = metadata !{metadata !463}
!463 = metadata !{metadata !"ctx.dummy", metadata !160, metadata !"unsigned char", i32 0, i32 7}
!464 = metadata !{i32 968, i32 975, metadata !465}
!465 = metadata !{metadata !466}
!466 = metadata !{metadata !"ctx.dummy", metadata !165, metadata !"unsigned char", i32 0, i32 7}
!467 = metadata !{i32 976, i32 983, metadata !468}
!468 = metadata !{metadata !469}
!469 = metadata !{metadata !"ctx.dummy", metadata !170, metadata !"unsigned char", i32 0, i32 7}
!470 = metadata !{i32 984, i32 991, metadata !471}
!471 = metadata !{metadata !472}
!472 = metadata !{metadata !"ctx.dummy", metadata !175, metadata !"unsigned char", i32 0, i32 7}
!473 = metadata !{i32 992, i32 999, metadata !474}
!474 = metadata !{metadata !475}
!475 = metadata !{metadata !"ctx.dummy", metadata !180, metadata !"unsigned char", i32 0, i32 7}
!476 = metadata !{i32 1000, i32 1007, metadata !477}
!477 = metadata !{metadata !478}
!478 = metadata !{metadata !"ctx.dummy", metadata !185, metadata !"unsigned char", i32 0, i32 7}
!479 = metadata !{i32 1008, i32 1015, metadata !480}
!480 = metadata !{metadata !481}
!481 = metadata !{metadata !"ctx.dummy", metadata !190, metadata !"unsigned char", i32 0, i32 7}
!482 = metadata !{i32 1016, i32 1023, metadata !483}
!483 = metadata !{metadata !484}
!484 = metadata !{metadata !"ctx.dummy", metadata !195, metadata !"unsigned char", i32 0, i32 7}
!485 = metadata !{metadata !486}
!486 = metadata !{i32 0, i32 7, metadata !487}
!487 = metadata !{metadata !488}
!488 = metadata !{metadata !"k", metadata !489, metadata !"unsigned char", i32 0, i32 7}
!489 = metadata !{metadata !490}
!490 = metadata !{i32 0, i32 31, i32 1}
