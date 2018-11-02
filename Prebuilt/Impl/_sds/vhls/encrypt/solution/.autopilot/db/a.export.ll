; ModuleID = '/scratch/local/tmp.7aow7oM1KP/_sds/vhls/encrypt/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@unroll_factor_sub = constant i32 1, align 4
@unroll_factor_mix = constant i32 1, align 4
@unroll_factor_exp2 = constant i32 1, align 4
@unroll_factor_exp1 = constant i32 1, align 4
@unroll_factor_ecb3 = constant i32 1, align 4
@unroll_factor_ecb2 = constant i32 1, align 4
@unroll_factor_ecb1 = constant i32 1, align 4
@unroll_factor_cpkey = constant i32 1, align 4
@unroll_factor_addkey = constant i32 1, align 4
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1
@pipeline_ii_sub = constant i32 1, align 4
@pipeline_ii_mix = constant i32 1, align 4
@pipeline_ii_exp2 = constant i32 1, align 4
@pipeline_ii_exp1 = constant i32 1, align 4
@pipeline_ii_ecb3 = constant i32 1, align 4
@pipeline_ii_ecb2 = constant i32 1, align 4
@pipeline_ii_ecb1 = constant i32 1, align 4
@pipeline_ii_cpkey = constant i32 1, align 4
@pipeline_ii_addkey = constant i32 1, align 4
@encrypt_str = internal unnamed_addr constant [8 x i8] c"encrypt\00"
@p_str9 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str8 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str7 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1
@p_str4 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1
@p_str2 = private unnamed_addr constant [7 x i8] c"addkey\00", align 1
@p_str17 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1
@p_str16 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1
@p_str15 = private unnamed_addr constant [5 x i8] c"ecb1\00", align 1
@p_str14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@p_str13 = private unnamed_addr constant [8 x i8] c"ctx_key\00", align 1
@p_str12 = private unnamed_addr constant [11 x i8] c"ctx_enckey\00", align 1
@p_str11 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@p_str10 = private unnamed_addr constant [11 x i8] c"ctx_deckey\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [4 x i8] c"sub\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @encrypt(i8* %ctx_key, i8* %ctx_enckey, i8* %ctx_deckey, i8* %buf_r, i32 %ctx_key_offset, i32 %ctx_enckey_offset, i32 %ctx_deckey_offset, [32 x i8]* %k, i32 %buf_offset) {
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  %ctx_deckey_offset_re = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_deckey_offset)
  %ctx_enckey_offset_re = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_enckey_offset)
  %ctx_key_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %ctx_key_offset)
  %ctx_deckey_addr = getelementptr i8* %ctx_deckey, i32 %ctx_deckey_offset_re
  %ctx_enckey_addr = getelementptr i8* %ctx_enckey, i32 %ctx_enckey_offset_re
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %buf_r), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %ctx_deckey), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %ctx_enckey), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %ctx_key), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %k) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt_str) nounwind
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([32 x i8]* %k, [1 x i8]* @p_str1, [7 x i8]* @p_str7, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %k, [5 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %ctx_deckey, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [11 x i8]* @p_str10, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %ctx_enckey, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [11 x i8]* @p_str12, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %ctx_key, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str13, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str14, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %ctx_deckey_addr_wr_r = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %ctx_deckey_addr, i32 32)
  %ctx_enckey_addr_wr_r = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %ctx_enckey_addr, i32 32)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i6 [ 0, %0 ], [ %i_3, %2 ]
  %tmp = icmp eq i6 %i, -32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind
  %i_3 = add i6 %i, 1
  br i1 %tmp, label %.preheader.preheader, label %2

.preheader.preheader:                             ; preds = %1
  %ctx_enckey_addr_wr_r_1 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %ctx_enckey_addr)
  %ctx_deckey_addr_wr_r_1 = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %ctx_deckey_addr)
  br label %.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str15) nounwind
  %tmp_5 = zext i6 %i to i32
  %k_addr = getelementptr [32 x i8]* %k, i32 0, i32 %tmp_5
  %k_load = load i8* %k_addr, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load, i1 true)
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %3
  %rcon = phi i8 [ %rcon_2, %3 ], [ 1, %.preheader.preheader ]
  %i_1 = phi i3 [ %phitmp, %3 ], [ -1, %.preheader.preheader ]
  %tmp_7 = icmp eq i3 %i_1, 0
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  br i1 %tmp_7, label %4, label %3

; <label>:3                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str16) nounwind
  %rcon_2 = call fastcc i8 @aes_expandEncKey(i8* %ctx_deckey, i32 %ctx_deckey_offset_re, i8 %rcon)
  %phitmp = add i3 %i_1, -1
  br label %.preheader

; <label>:4                                       ; preds = %.preheader
  %rcon_1 = alloca i8
  call fastcc void @aes_addRoundKey_cpy(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_enckey, i32 %ctx_enckey_offset_re, i8* %ctx_key, i32 %ctx_key_offset_read)
  store i8 1, i8* %rcon_1
  br label %5

; <label>:5                                       ; preds = %9, %4
  %i_2 = phi i4 [ 1, %4 ], [ %i_4, %9 ]
  %exitcond = icmp eq i4 %i_2, -2
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) nounwind
  br i1 %exitcond, label %10, label %6

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str17) nounwind
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  %tmp_1 = trunc i4 %i_2 to i1
  br i1 %tmp_1, label %7, label %8

; <label>:7                                       ; preds = %6
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 16)
  br label %9

; <label>:8                                       ; preds = %6
  %rcon_1_load_1 = load i8* %rcon_1
  %rcon_3 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_1_load_1)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  store i8 %rcon_3, i8* %rcon_1
  br label %9

; <label>:9                                       ; preds = %8, %7
  %i_4 = add i4 %i_2, 1
  br label %5

; <label>:10                                      ; preds = %5
  %rcon_1_load = load i8* %rcon_1
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  %empty_5 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_1_load)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  ret void
}

define internal fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str14, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_5, %2 ]
  %i_5 = add i5 %i, -1
  %i_5_cast = sext i5 %i_5 to i8
  %tmp = icmp eq i5 %i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str) nounwind
  %tmp_s = zext i8 %i_5_cast to i32
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
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str14, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
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
  %i_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_4, i32 1)
  %i_6 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_4)
  %sum5 = add i32 %buf_offset_read, 2
  %buf_addr_5 = getelementptr i8* %buf_r, i32 %sum5
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_5, i32 1)
  %buf_addr_5_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_5)
  %buf_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_4, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_4, i8 %buf_addr_5_read, i1 true)
  %buf_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_4)
  %buf_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_5, i8 %i_6, i1 true)
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
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str14, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_7, %2 ]
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
  %i_7 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc i8 @aes_expandEncKey(i8* %k, i32 %k_offset, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read)
  %k_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %k_offset)
  %k_addr = getelementptr i8* %k, i32 %k_offset_read
  call void (...)* @_ssdm_op_SpecInterface(i8* %k, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [11 x i8]* @p_str10, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %sum9 = add i32 29, %k_offset_read
  %k_addr_1 = getelementptr i8* %k, i32 %sum9
  %k_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_1, i32 1)
  %k_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_1)
  %tmp = zext i8 %k_addr_1_read to i32
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp
  %sbox_load = load i8* %sbox_addr, align 1
  %k_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr, i32 1)
  %k_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr)
  %tmp1 = xor i8 %k_addr_read, %rc_read_1
  %tmp_s = xor i8 %tmp1, %sbox_load
  %k_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr, i8 %tmp_s, i1 true)
  %k_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr)
  %sum10 = add i32 30, %k_offset_read
  %k_addr_2 = getelementptr i8* %k, i32 %sum10
  %k_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_2, i32 1)
  %k_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_2)
  %tmp_8 = zext i8 %k_addr_2_read to i32
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_8
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %sum11 = add i32 1, %k_offset_read
  %k_addr_3 = getelementptr i8* %k, i32 %sum11
  %k_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_3, i32 1)
  %k_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_3)
  %tmp_9 = xor i8 %k_addr_3_read, %sbox_load_1
  %k_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_3, i8 %tmp_9, i1 true)
  %k_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_3)
  %sum12 = add i32 31, %k_offset_read
  %k_addr_4 = getelementptr i8* %k, i32 %sum12
  %k_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_4, i32 1)
  %k_addr_4_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_4)
  %tmp_1 = zext i8 %k_addr_4_read to i32
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %sum13 = add i32 2, %k_offset_read
  %k_addr_5 = getelementptr i8* %k, i32 %sum13
  %k_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_5, i32 1)
  %k_addr_5_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_5)
  %tmp_3 = xor i8 %k_addr_5_read, %sbox_load_2
  %k_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_5, i8 %tmp_3, i1 true)
  %k_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_5)
  %sum14 = add i32 28, %k_offset_read
  %k_addr_6 = getelementptr i8* %k, i32 %sum14
  %k_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_6, i32 1)
  %k_addr_6_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_6)
  %tmp_4 = zext i8 %k_addr_6_read to i32
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_4
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %sum15 = add i32 3, %k_offset_read
  %k_addr_7 = getelementptr i8* %k, i32 %sum15
  %k_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_7, i32 1)
  %k_addr_7_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_7)
  %tmp_5 = xor i8 %k_addr_7_read, %sbox_load_3
  %k_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_7, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_7, i8 %tmp_5, i1 true)
  %k_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_7)
  %tmp_28 = shl i8 %rc_read_1, 1
  %tmp_37 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7)
  %tmp_22_cast_cast = select i1 %tmp_37, i8 27, i8 0
  %tmp_7 = xor i8 %tmp_22_cast_cast, %tmp_28
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 4, %0 ], [ %i_8, %2 ]
  %tmp_38 = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_38, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str5) nounwind
  %tmp_11 = zext i5 %i to i32
  %tmp_39 = trunc i5 %i to i4
  %sum = add i4 -4, %tmp_39
  %sum_cast = zext i4 %sum to i32
  %sum16 = add i32 %k_offset_read, %sum_cast
  %k_addr_8 = getelementptr i8* %k, i32 %sum16
  %k_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_8, i32 1)
  %k_addr_8_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_8)
  %sum17 = add i32 %k_offset_read, %tmp_11
  %k_addr_9 = getelementptr i8* %k, i32 %sum17
  %k_load_9_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_9, i32 1)
  %k_addr_9_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_9)
  %tmp_12 = xor i8 %k_addr_9_read, %k_addr_8_read
  %k_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_9, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_9, i8 %tmp_12, i1 true)
  %k_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_9)
  %sum1 = add i4 -3, %tmp_39
  %sum1_cast = zext i4 %sum1 to i32
  %sum18 = add i32 %k_offset_read, %sum1_cast
  %k_addr_10 = getelementptr i8* %k, i32 %sum18
  %k_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_10, i32 1)
  %k_addr_10_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_10)
  %tmp_14 = or i4 %tmp_39, 1
  %tmp_27_cast = zext i4 %tmp_14 to i32
  %sum19 = add i32 %k_offset_read, %tmp_27_cast
  %k_addr_11 = getelementptr i8* %k, i32 %sum19
  %k_load_11_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_11, i32 1)
  %k_addr_11_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_11)
  %tmp_15 = xor i8 %k_addr_11_read, %k_addr_10_read
  %k_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_11, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_11, i8 %tmp_15, i1 true)
  %k_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_11)
  %sum2 = add i4 -2, %tmp_39
  %sum2_cast = zext i4 %sum2 to i32
  %sum20 = add i32 %k_offset_read, %sum2_cast
  %k_addr_12 = getelementptr i8* %k, i32 %sum20
  %k_load_12_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_12, i32 1)
  %k_addr_12_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_12)
  %tmp_16 = or i4 %tmp_39, 2
  %tmp_29_cast = zext i4 %tmp_16 to i32
  %sum21 = add i32 %k_offset_read, %tmp_29_cast
  %k_addr_13 = getelementptr i8* %k, i32 %sum21
  %k_load_13_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_13, i32 1)
  %k_addr_13_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_13)
  %tmp_17 = xor i8 %k_addr_13_read, %k_addr_12_read
  %k_addr_13_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_13, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_13, i8 %tmp_17, i1 true)
  %k_addr_13_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_13)
  %sum3 = add i4 -1, %tmp_39
  %sum3_cast = zext i4 %sum3 to i32
  %sum22 = add i32 %k_offset_read, %sum3_cast
  %k_addr_14 = getelementptr i8* %k, i32 %sum22
  %k_load_14_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_14, i32 1)
  %k_addr_14_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_14)
  %tmp_18 = or i4 %tmp_39, 3
  %tmp_31_cast = zext i4 %tmp_18 to i32
  %sum23 = add i32 %k_offset_read, %tmp_31_cast
  %k_addr_15 = getelementptr i8* %k, i32 %sum23
  %k_load_15_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_15, i32 1)
  %k_addr_15_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_15)
  %tmp_19 = xor i8 %k_addr_15_read, %k_addr_14_read
  %k_addr_15_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_15, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_15, i8 %tmp_19, i1 true)
  %k_addr_15_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_15)
  %i_8 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  %sum24 = add i32 %k_offset_read, 12
  %k_addr_16 = getelementptr i8* %k, i32 %sum24
  %k_load_16_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_16, i32 1)
  %k_addr_16_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_16)
  %tmp_2 = zext i8 %k_addr_16_read to i32
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_2
  %sbox_load_4 = load i8* %sbox_addr_4, align 1
  %sum25 = add i32 %k_offset_read, 16
  %k_addr_17 = getelementptr i8* %k, i32 %sum25
  %k_load_17_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_17, i32 1)
  %k_addr_17_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_17)
  %tmp_6 = xor i8 %k_addr_17_read, %sbox_load_4
  %k_addr_17_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_17, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_17, i8 %tmp_6, i1 true)
  %k_addr_17_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_17)
  %sum26 = add i32 %k_offset_read, 13
  %k_addr_18 = getelementptr i8* %k, i32 %sum26
  %k_load_18_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_18, i32 1)
  %k_addr_18_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_18)
  %tmp_10 = zext i8 %k_addr_18_read to i32
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_10
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %sum27 = add i32 %k_offset_read, 17
  %k_addr_19 = getelementptr i8* %k, i32 %sum27
  %k_load_19_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_19, i32 1)
  %k_addr_19_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_19)
  %tmp_13 = xor i8 %k_addr_19_read, %sbox_load_5
  %k_addr_19_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_19, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_19, i8 %tmp_13, i1 true)
  %k_addr_19_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_19)
  %sum28 = add i32 %k_offset_read, 14
  %k_addr_20 = getelementptr i8* %k, i32 %sum28
  %k_load_20_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_20, i32 1)
  %k_addr_20_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_20)
  %tmp_20 = zext i8 %k_addr_20_read to i32
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_20
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %sum29 = add i32 %k_offset_read, 18
  %k_addr_21 = getelementptr i8* %k, i32 %sum29
  %k_load_21_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_21, i32 1)
  %k_addr_21_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_21)
  %tmp_21 = xor i8 %k_addr_21_read, %sbox_load_6
  %k_addr_21_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_21, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_21, i8 %tmp_21, i1 true)
  %k_addr_21_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_21)
  %sum30 = add i32 %k_offset_read, 15
  %k_addr_22 = getelementptr i8* %k, i32 %sum30
  %k_load_22_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_22, i32 1)
  %k_addr_22_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_22)
  %tmp_22 = zext i8 %k_addr_22_read to i32
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_22
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %sum31 = add i32 %k_offset_read, 19
  %k_addr_23 = getelementptr i8* %k, i32 %sum31
  %k_load_23_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_23, i32 1)
  %k_addr_23_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_23)
  %tmp_23 = xor i8 %k_addr_23_read, %sbox_load_7
  %k_addr_23_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_23, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_23, i8 %tmp_23, i1 true)
  %k_addr_23_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_23)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i6 [ 20, %3 ], [ %i_9, %5 ]
  %tmp_40 = call i1 @_ssdm_op_BitSelect.i1.i6.i32(i6 %i_1, i32 5)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %tmp_40, label %6, label %5

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str6) nounwind
  %tmp_24 = zext i6 %i_1 to i32
  %tmp_41 = trunc i6 %i_1 to i5
  %sum4 = add i5 -4, %tmp_41
  %sum4_cast = zext i5 %sum4 to i32
  %sum32 = add i32 %k_offset_read, %sum4_cast
  %k_addr_24 = getelementptr i8* %k, i32 %sum32
  %k_load_24_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_24, i32 1)
  %k_addr_24_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_24)
  %sum33 = add i32 %k_offset_read, %tmp_24
  %k_addr_25 = getelementptr i8* %k, i32 %sum33
  %k_load_25_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_25, i32 1)
  %k_addr_25_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_25)
  %tmp_25 = xor i8 %k_addr_25_read, %k_addr_24_read
  %k_addr_25_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_25, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_25, i8 %tmp_25, i1 true)
  %k_addr_25_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_25)
  %sum5 = add i5 -3, %tmp_41
  %sum5_cast = zext i5 %sum5 to i32
  %sum34 = add i32 %k_offset_read, %sum5_cast
  %k_addr_26 = getelementptr i8* %k, i32 %sum34
  %k_load_26_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_26, i32 1)
  %k_addr_26_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_26)
  %tmp_26 = or i5 %tmp_41, 1
  %tmp_44_cast = zext i5 %tmp_26 to i32
  %sum35 = add i32 %k_offset_read, %tmp_44_cast
  %k_addr_27 = getelementptr i8* %k, i32 %sum35
  %k_load_27_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_27, i32 1)
  %k_addr_27_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_27)
  %tmp_27 = xor i8 %k_addr_27_read, %k_addr_26_read
  %k_addr_27_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_27, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_27, i8 %tmp_27, i1 true)
  %k_addr_27_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_27)
  %sum6 = add i5 -2, %tmp_41
  %sum6_cast = zext i5 %sum6 to i32
  %sum36 = add i32 %k_offset_read, %sum6_cast
  %k_addr_28 = getelementptr i8* %k, i32 %sum36
  %k_load_28_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_28, i32 1)
  %k_addr_28_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_28)
  %tmp_29 = or i5 %tmp_41, 2
  %tmp_46_cast = zext i5 %tmp_29 to i32
  %sum37 = add i32 %k_offset_read, %tmp_46_cast
  %k_addr_29 = getelementptr i8* %k, i32 %sum37
  %k_load_29_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_29, i32 1)
  %k_addr_29_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_29)
  %tmp_30 = xor i8 %k_addr_29_read, %k_addr_28_read
  %k_addr_29_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_29, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_29, i8 %tmp_30, i1 true)
  %k_addr_29_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_29)
  %sum7 = add i5 -1, %tmp_41
  %sum7_cast = zext i5 %sum7 to i32
  %sum38 = add i32 %k_offset_read, %sum7_cast
  %k_addr_30 = getelementptr i8* %k, i32 %sum38
  %k_load_30_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_30, i32 1)
  %k_addr_30_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_30)
  %tmp_31 = or i5 %tmp_41, 3
  %tmp_48_cast = zext i5 %tmp_31 to i32
  %sum39 = add i32 %k_offset_read, %tmp_48_cast
  %k_addr_31 = getelementptr i8* %k, i32 %sum39
  %k_load_31_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_31, i32 1)
  %k_addr_31_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_31)
  %tmp_32 = xor i8 %k_addr_31_read, %k_addr_30_read
  %k_addr_31_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_31, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_31, i8 %tmp_32, i1 true)
  %k_addr_31_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_31)
  %i_9 = add i6 4, %i_1
  br label %4

; <label>:6                                       ; preds = %4
  ret i8 %tmp_7
}

define internal fastcc void @aes_addRoundKey_cpy(i8* %buf_r, i32 %buf_offset, i8* %key, i32 %key_offset, i8* %cpk, i32 %cpk_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str14, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %cpk, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str13, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %key, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [11 x i8]* @p_str12, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %cpk_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %cpk_offset)
  %key_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %key_offset)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_10, %2 ]
  %i_10 = add i5 %i, -1
  %i_10_cast = sext i5 %i_10 to i8
  %tmp = icmp eq i5 %i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str3) nounwind
  %tmp_s = zext i8 %i_10_cast to i32
  %sum2 = add i32 %tmp_s, %key_offset_read
  %key_addr = getelementptr i8* %key, i32 %sum2
  %key_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr, i32 1)
  %key_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr)
  %sum6 = add i32 %tmp_s, %cpk_offset_read
  %cpk_addr = getelementptr i8* %cpk, i32 %sum6
  %cpk_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr, i8 %key_addr_read, i1 true)
  %cpk_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr)
  %sum = add i32 %tmp_s, %buf_offset_read
  %buf_addr = getelementptr i8* %buf_r, i32 %sum
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_33 = xor i8 %buf_addr_read, %key_addr_read
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_33, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %sum5 = add i5 %i, 15
  %sum5_cast = zext i5 %sum5 to i32
  %sum3 = add i32 %sum5_cast, %key_offset_read
  %key_addr_1 = getelementptr i8* %key, i32 %sum3
  %key_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_1, i32 1)
  %key_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_1)
  %sum7 = add i32 %sum5_cast, %cpk_offset_read
  %cpk_addr_1 = getelementptr i8* %cpk, i32 %sum7
  %cpk_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr_1, i8 %key_addr_1_read, i1 true)
  %cpk_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr_1)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset, i8* %key, i32 %key_offset, i6 %key_offset_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str14, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecInterface(i8* %key, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [8 x i8]* @p_str13, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %key_offset_offset_re = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %key_offset_offset)
  %key_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %key_offset)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  %tmp_42 = trunc i6 %key_offset_offset_re to i5
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_11, %2 ]
  %i_11 = add i5 %i, -1
  %i_11_cast = sext i5 %i_11 to i8
  %tmp = icmp eq i5 %i, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str2) nounwind
  %tmp_s = zext i8 %i_11_cast to i32
  %sum = add i5 %i_11, %tmp_42
  %sum_cast = zext i5 %sum to i32
  %sum3 = add i32 %sum_cast, %key_offset_read
  %key_addr = getelementptr i8* %key, i32 %sum3
  %key_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr, i32 1)
  %key_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr)
  %sum1 = add i32 %tmp_s, %buf_offset_read
  %buf_addr = getelementptr i8* %buf_r, i32 %sum1
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_34 = xor i8 %buf_addr_read, %key_addr_read
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_34, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i8P(i8*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i8P(i8*, i8, i1) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
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

define weak i8 @_ssdm_op_Read.m_axi.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
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

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i5 @_ssdm_op_PartSelect.i5.i6.i32.i32(i6, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i5.i32.i32(i5, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_7 = shl i8 1, %empty
  %empty_8 = and i8 %0, %empty_7
  %empty_9 = icmp ne i8 %empty_8, 0
  ret i1 %empty_9
}

define weak i1 @_ssdm_op_BitSelect.i1.i6.i32(i6, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i6
  %empty_10 = shl i6 1, %empty
  %empty_11 = and i6 %0, %empty_10
  %empty_12 = icmp ne i6 %empty_11, 0
  ret i1 %empty_12
}

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_13 = shl i5 1, %empty
  %empty_14 = and i5 %0, %empty_13
  %empty_15 = icmp ne i5 %empty_14, 0
  ret i1 %empty_15
}

declare i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone

!opencl.kernels = !{!0, !7, !11, !17, !7, !7, !23, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!axi4.master.portmap = !{!31, !32, !33, !34}
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
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_key", metadata !"ctx_enckey", metadata !"ctx_deckey", metadata !"k", metadata !"buf"}
!31 = metadata !{metadata !"ctx_key", metadata !"ctx_key_offset", metadata !"READWRITE"}
!32 = metadata !{metadata !"ctx_enckey", metadata !"ctx_enckey_offset", metadata !"READWRITE"}
!33 = metadata !{metadata !"ctx_deckey", metadata !"ctx_deckey_offset", metadata !"READWRITE"}
!34 = metadata !{metadata !"buf", metadata !"buf_offset", metadata !"READWRITE"}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 7, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"buf", metadata !39, metadata !"unsigned char", i32 0, i32 7}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 15, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 7, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"ctx_deckey", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, i32 1}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 7, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"ctx_enckey", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 7, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"ctx_key", metadata !45, metadata !"unsigned char", i32 0, i32 7}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"k", metadata !45, metadata !"unsigned char", i32 0, i32 7}
