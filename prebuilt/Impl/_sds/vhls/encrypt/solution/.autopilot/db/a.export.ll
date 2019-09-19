; ModuleID = '/scratch/local/tmp.soPlafqy6w/_sds/vhls/encrypt/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@unroll_factor_sub = constant i32 14, align 4
@unroll_factor_mix = constant i32 4, align 4
@unroll_factor_exp2 = constant i32 1, align 4
@unroll_factor_exp1 = constant i32 2, align 4
@unroll_factor_ecb3 = constant i32 7, align 4
@unroll_factor_ecb2 = constant i32 4, align 4
@unroll_factor_ecb1 = constant i32 32, align 4
@unroll_factor_cpkey = constant i32 4, align 4
@unroll_factor_addkey = constant i32 9, align 4
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1
@pipeline_ii_sub = constant i32 11, align 4
@pipeline_ii_mix = constant i32 1, align 4
@pipeline_ii_exp2 = constant i32 2, align 4
@pipeline_ii_exp1 = constant i32 1, align 4
@pipeline_ii_ecb3 = constant i32 12, align 4
@pipeline_ii_ecb2 = constant i32 6, align 4
@pipeline_ii_ecb1 = constant i32 16, align 4
@pipeline_ii_cpkey = constant i32 6, align 4
@pipeline_ii_addkey = constant i32 8, align 4
@encrypt_str = internal unnamed_addr constant [8 x i8] c"encrypt\00"
@p_str9 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str8 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str7 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1
@p_str4 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1
@p_str2 = private unnamed_addr constant [7 x i8] c"addkey\00", align 1
@p_str17 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1
@p_str16 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1
@p_str14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@p_str13 = private unnamed_addr constant [8 x i8] c"ctx_key\00", align 1
@p_str12 = private unnamed_addr constant [11 x i8] c"ctx_enckey\00", align 1
@p_str11 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@p_str10 = private unnamed_addr constant [11 x i8] c"ctx_deckey\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [4 x i8] c"sub\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @encrypt(i8* %ctx_key, i8* %ctx_enckey, i8* %ctx_deckey, i8* %buf_r, i32 %ctx_key_offset, i32 %ctx_enckey_offset, i32 %ctx_deckey_offset, [32 x i8]* %k, i32 %buf_offset) {
.preheader.preheader:
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
  %k_addr = getelementptr [32 x i8]* %k, i32 0, i32 0
  %k_load = load i8* %k_addr, align 1
  %ctx_deckey_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %ctx_deckey_addr, i32 32)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load, i1 true)
  %ctx_enckey_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %ctx_enckey_addr, i32 32)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load, i1 true)
  %k_addr_1 = getelementptr [32 x i8]* %k, i32 0, i32 1
  %k_load_1 = load i8* %k_addr_1, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_1, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_1, i1 true)
  %k_addr_2 = getelementptr [32 x i8]* %k, i32 0, i32 2
  %k_load_2 = load i8* %k_addr_2, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_2, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_2, i1 true)
  %k_addr_3 = getelementptr [32 x i8]* %k, i32 0, i32 3
  %k_load_3 = load i8* %k_addr_3, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_3, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_3, i1 true)
  %k_addr_4 = getelementptr [32 x i8]* %k, i32 0, i32 4
  %k_load_4 = load i8* %k_addr_4, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_4, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_4, i1 true)
  %k_addr_5 = getelementptr [32 x i8]* %k, i32 0, i32 5
  %k_load_5 = load i8* %k_addr_5, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_5, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_5, i1 true)
  %k_addr_6 = getelementptr [32 x i8]* %k, i32 0, i32 6
  %k_load_6 = load i8* %k_addr_6, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_6, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_6, i1 true)
  %k_addr_7 = getelementptr [32 x i8]* %k, i32 0, i32 7
  %k_load_7 = load i8* %k_addr_7, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_7, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_7, i1 true)
  %k_addr_8 = getelementptr [32 x i8]* %k, i32 0, i32 8
  %k_load_8 = load i8* %k_addr_8, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_8, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_8, i1 true)
  %k_addr_9 = getelementptr [32 x i8]* %k, i32 0, i32 9
  %k_load_9 = load i8* %k_addr_9, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_9, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_9, i1 true)
  %k_addr_10 = getelementptr [32 x i8]* %k, i32 0, i32 10
  %k_load_10 = load i8* %k_addr_10, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_10, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_10, i1 true)
  %k_addr_11 = getelementptr [32 x i8]* %k, i32 0, i32 11
  %k_load_11 = load i8* %k_addr_11, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_11, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_11, i1 true)
  %k_addr_12 = getelementptr [32 x i8]* %k, i32 0, i32 12
  %k_load_12 = load i8* %k_addr_12, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_12, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_12, i1 true)
  %k_addr_13 = getelementptr [32 x i8]* %k, i32 0, i32 13
  %k_load_13 = load i8* %k_addr_13, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_13, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_13, i1 true)
  %k_addr_14 = getelementptr [32 x i8]* %k, i32 0, i32 14
  %k_load_14 = load i8* %k_addr_14, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_14, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_14, i1 true)
  %k_addr_15 = getelementptr [32 x i8]* %k, i32 0, i32 15
  %k_load_15 = load i8* %k_addr_15, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_15, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_15, i1 true)
  %k_addr_16 = getelementptr [32 x i8]* %k, i32 0, i32 16
  %k_load_16 = load i8* %k_addr_16, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_16, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_16, i1 true)
  %k_addr_17 = getelementptr [32 x i8]* %k, i32 0, i32 17
  %k_load_17 = load i8* %k_addr_17, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_17, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_17, i1 true)
  %k_addr_18 = getelementptr [32 x i8]* %k, i32 0, i32 18
  %k_load_18 = load i8* %k_addr_18, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_18, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_18, i1 true)
  %k_addr_19 = getelementptr [32 x i8]* %k, i32 0, i32 19
  %k_load_19 = load i8* %k_addr_19, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_19, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_19, i1 true)
  %k_addr_20 = getelementptr [32 x i8]* %k, i32 0, i32 20
  %k_load_20 = load i8* %k_addr_20, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_20, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_20, i1 true)
  %k_addr_21 = getelementptr [32 x i8]* %k, i32 0, i32 21
  %k_load_21 = load i8* %k_addr_21, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_21, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_21, i1 true)
  %k_addr_22 = getelementptr [32 x i8]* %k, i32 0, i32 22
  %k_load_22 = load i8* %k_addr_22, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_22, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_22, i1 true)
  %k_addr_23 = getelementptr [32 x i8]* %k, i32 0, i32 23
  %k_load_23 = load i8* %k_addr_23, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_23, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_23, i1 true)
  %k_addr_24 = getelementptr [32 x i8]* %k, i32 0, i32 24
  %k_load_24 = load i8* %k_addr_24, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_24, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_24, i1 true)
  %k_addr_25 = getelementptr [32 x i8]* %k, i32 0, i32 25
  %k_load_25 = load i8* %k_addr_25, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_25, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_25, i1 true)
  %k_addr_26 = getelementptr [32 x i8]* %k, i32 0, i32 26
  %k_load_26 = load i8* %k_addr_26, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_26, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_26, i1 true)
  %k_addr_27 = getelementptr [32 x i8]* %k, i32 0, i32 27
  %k_load_27 = load i8* %k_addr_27, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_27, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_27, i1 true)
  %k_addr_28 = getelementptr [32 x i8]* %k, i32 0, i32 28
  %k_load_28 = load i8* %k_addr_28, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_28, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_28, i1 true)
  %k_addr_29 = getelementptr [32 x i8]* %k, i32 0, i32 29
  %k_load_29 = load i8* %k_addr_29, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_29, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_29, i1 true)
  %k_addr_30 = getelementptr [32 x i8]* %k, i32 0, i32 30
  %k_load_30 = load i8* %k_addr_30, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_30, i1 true)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_30, i1 true)
  %k_addr_31 = getelementptr [32 x i8]* %k, i32 0, i32 31
  %k_load_31 = load i8* %k_addr_31, align 1
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_deckey_addr, i8 %k_load_31, i1 true)
  %ctx_deckey_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %ctx_deckey_addr)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %ctx_enckey_addr, i8 %k_load_31, i1 true)
  %ctx_enckey_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %ctx_enckey_addr)
  br label %.preheader

.preheader:                                       ; preds = %0, %.preheader.preheader
  %rcon = phi i8 [ %rcon_1, %0 ], [ 1, %.preheader.preheader ]
  %i = phi i3 [ %phitmp, %0 ], [ -1, %.preheader.preheader ]
  %tmp_7 = icmp eq i3 %i, 0
  br i1 %tmp_7, label %1, label %0

; <label>:0                                       ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str16) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @p_str16) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 6, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %rcon_1 = call fastcc i8 @aes_expandEncKey(i8* %ctx_deckey, i32 %ctx_deckey_offset_re, i8 %rcon)
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @p_str16, i32 %tmp) nounwind
  %phitmp = add i3 %i, -1
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  call fastcc void @aes_addRoundKey_cpy(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_enckey, i32 %ctx_enckey_offset_re, i8* %ctx_key, i32 %ctx_key_offset_read)
  br label %2

; <label>:2                                       ; preds = %22, %1
  %rcon_s = phi i8 [ 1, %1 ], [ %rcon_2_6, %22 ]
  %i_2 = phi i8 [ 1, %1 ], [ %i_4_6, %22 ]
  %tmp_1 = trunc i8 %i_2 to i1
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @p_str17) nounwind
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp_1, label %4, label %5

; <label>:3                                       ; preds = %5, %4
  %rcon_2 = phi i8 [ %tmp_2, %5 ], [ %rcon_s, %4 ]
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp_1, label %8, label %7

; <label>:4                                       ; preds = %2
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 16)
  br label %3

; <label>:5                                       ; preds = %2
  %tmp_2 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_s)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  br label %3

; <label>:6                                       ; preds = %8, %7
  %rcon_2_1 = phi i8 [ %tmp_3, %8 ], [ %rcon_2, %7 ]
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp_1, label %10, label %11

; <label>:7                                       ; preds = %3
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 16)
  br label %6

; <label>:8                                       ; preds = %3
  %tmp_3 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_2)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  br label %6

; <label>:9                                       ; preds = %11, %10
  %rcon_2_2 = phi i8 [ %tmp_4, %11 ], [ %rcon_2_1, %10 ]
  %exitcond_3 = icmp eq i8 %i_2, 11
  br i1 %exitcond_3, label %26, label %14

; <label>:10                                      ; preds = %6
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 16)
  br label %9

; <label>:11                                      ; preds = %6
  %tmp_4 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_2_1)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  br label %9

; <label>:12                                      ; preds = %15, %13
  %rcon_2_3 = phi i8 [ %tmp_5, %15 ], [ %rcon_2_2, %13 ]
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp_1, label %17, label %18

; <label>:13                                      ; preds = %14
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 16)
  br label %12

; <label>:14                                      ; preds = %9
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp_1, label %15, label %13

; <label>:15                                      ; preds = %14
  %tmp_5 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_2_2)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  br label %12

; <label>:16                                      ; preds = %18, %17
  %rcon_2_4 = phi i8 [ %tmp_6, %18 ], [ %rcon_2_3, %17 ]
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp_1, label %21, label %20

; <label>:17                                      ; preds = %12
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 16)
  br label %16

; <label>:18                                      ; preds = %12
  %tmp_6 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_2_3)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  br label %16

; <label>:19                                      ; preds = %21, %20
  %rcon_2_5 = phi i8 [ %tmp_8, %21 ], [ %rcon_2_4, %20 ]
  %exitcond_6 = icmp eq i8 %i_2, 8
  br i1 %exitcond_6, label %26, label %24

; <label>:20                                      ; preds = %16
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 16)
  br label %19

; <label>:21                                      ; preds = %16
  %tmp_8 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_2_4)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  br label %19

; <label>:22                                      ; preds = %25, %23
  %rcon_2_6 = phi i8 [ %tmp_9, %25 ], [ %rcon_2_5, %23 ]
  %i_4_6 = add i8 %i_2, 7
  br label %2

; <label>:23                                      ; preds = %24
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 16)
  br label %22

; <label>:24                                      ; preds = %19
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset_read)
  br i1 %tmp_1, label %23, label %25

; <label>:25                                      ; preds = %24
  %tmp_9 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_2_5)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  br label %22

; <label>:26                                      ; preds = %19, %9
  %rcon_1_lcssa = phi i8 [ %rcon_2_2, %9 ], [ %rcon_2_5, %19 ]
  call fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset_read)
  call fastcc void @aes_shiftRows(i8* %buf_r, i32 %buf_offset_read)
  %empty_4 = call fastcc i8 @aes_expandEncKey(i8* %ctx_key, i32 %ctx_key_offset_read, i8 %rcon_1_lcssa)
  call fastcc void @aes_addRoundKey(i8* %buf_r, i32 %buf_offset_read, i8* %ctx_key, i32 %ctx_key_offset_read, i6 0)
  ret void
}

define internal fastcc void @aes_subBytes(i8* %buf_r, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str14, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_5_12, %2 ]
  %i_5 = add i5 %i, -1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str) nounwind
  %tmp_s = zext i5 %i_5 to i32
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
  %i_5_1 = add i5 %i, -2
  %tmp_1_5 = zext i5 %i_5_1 to i32
  %sum1 = add i32 %tmp_1_5, %buf_offset_read
  %buf_addr_1 = getelementptr i8* %buf_r, i32 %sum1
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_1, i32 1)
  %buf_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_1)
  %tmp_1_1 = zext i8 %buf_addr_1_read to i32
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_1
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %buf_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_1, i8 %sbox_load_1, i1 true)
  %buf_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_1)
  %i_5_2 = add i5 %i, -3
  %i_5_2_cast = sext i5 %i_5_2 to i8
  %tmp_2 = icmp eq i5 %i_5_1, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %tmp_2, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_2_6 = zext i8 %i_5_2_cast to i32
  %sum2 = add i32 %tmp_2_6, %buf_offset_read
  %buf_addr_2 = getelementptr i8* %buf_r, i32 %sum2
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_2, i32 1)
  %buf_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_2)
  %tmp_1_2 = zext i8 %buf_addr_2_read to i32
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_2
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %buf_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_2, i8 %sbox_load_2, i1 true)
  %buf_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_2)
  %i_5_3 = add i5 %i, -4
  %tmp_3 = zext i5 %i_5_3 to i32
  %sum3 = add i32 %tmp_3, %buf_offset_read
  %buf_addr_3 = getelementptr i8* %buf_r, i32 %sum3
  %buf_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_3, i32 1)
  %buf_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_3)
  %tmp_1_3 = zext i8 %buf_addr_3_read to i32
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_3
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %buf_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_3, i8 %sbox_load_3, i1 true)
  %buf_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_3)
  %i_5_4 = add i5 %i, -5
  %tmp_4 = zext i5 %i_5_4 to i32
  %sum4 = add i32 %tmp_4, %buf_offset_read
  %buf_addr_4 = getelementptr i8* %buf_r, i32 %sum4
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_4, i32 1)
  %buf_addr_4_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_4)
  %tmp_1_4 = zext i8 %buf_addr_4_read to i32
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_4
  %sbox_load_4 = load i8* %sbox_addr_4, align 1
  %buf_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_4, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_4, i8 %sbox_load_4, i1 true)
  %buf_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_4)
  %i_5_5 = add i5 %i, -6
  %tmp_5 = zext i5 %i_5_5 to i32
  %sum5 = add i32 %tmp_5, %buf_offset_read
  %buf_addr_5 = getelementptr i8* %buf_r, i32 %sum5
  %buf_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_5, i32 1)
  %buf_addr_5_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_5)
  %tmp_1_5_7 = zext i8 %buf_addr_5_read to i32
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_5_7
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %buf_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_5, i8 %sbox_load_5, i1 true)
  %buf_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_5)
  %i_5_6 = add i5 %i, -7
  %tmp_6 = zext i5 %i_5_6 to i32
  %sum6 = add i32 %tmp_6, %buf_offset_read
  %buf_addr_6 = getelementptr i8* %buf_r, i32 %sum6
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_6, i32 1)
  %buf_addr_6_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_6)
  %tmp_1_6 = zext i8 %buf_addr_6_read to i32
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_6
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %buf_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_6, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_6, i8 %sbox_load_6, i1 true)
  %buf_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_6)
  %i_5_7 = add i5 %i, -8
  %tmp_7 = zext i5 %i_5_7 to i32
  %sum7 = add i32 %tmp_7, %buf_offset_read
  %buf_addr_7 = getelementptr i8* %buf_r, i32 %sum7
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_7, i32 1)
  %buf_addr_7_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_7)
  %tmp_1_7 = zext i8 %buf_addr_7_read to i32
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_7
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %buf_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_7, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_7, i8 %sbox_load_7, i1 true)
  %buf_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_7)
  %i_5_8 = add i5 %i, -9
  %tmp_8 = zext i5 %i_5_8 to i32
  %sum8 = add i32 %tmp_8, %buf_offset_read
  %buf_addr_8 = getelementptr i8* %buf_r, i32 %sum8
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_8, i32 1)
  %buf_addr_8_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_8)
  %tmp_1_8 = zext i8 %buf_addr_8_read to i32
  %sbox_addr_8 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_8
  %sbox_load_8 = load i8* %sbox_addr_8, align 1
  %buf_addr_8_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_8, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_8, i8 %sbox_load_8, i1 true)
  %buf_addr_8_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_8)
  %i_5_9 = add i5 %i, -10
  %tmp_9 = zext i5 %i_5_9 to i32
  %sum9 = add i32 %tmp_9, %buf_offset_read
  %buf_addr_9 = getelementptr i8* %buf_r, i32 %sum9
  %buf_load_9_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_9, i32 1)
  %buf_addr_9_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_9)
  %tmp_1_9 = zext i8 %buf_addr_9_read to i32
  %sbox_addr_9 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_9
  %sbox_load_9 = load i8* %sbox_addr_9, align 1
  %buf_addr_9_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_9, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_9, i8 %sbox_load_9, i1 true)
  %buf_addr_9_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_9)
  %i_5_s = add i5 %i, -11
  %tmp_s_8 = zext i5 %i_5_s to i32
  %sum10 = add i32 %tmp_s_8, %buf_offset_read
  %buf_addr_10 = getelementptr i8* %buf_r, i32 %sum10
  %buf_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_10, i32 1)
  %buf_addr_10_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_10)
  %tmp_1_s = zext i8 %buf_addr_10_read to i32
  %sbox_addr_10 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_s
  %sbox_load_10 = load i8* %sbox_addr_10, align 1
  %buf_addr_10_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_10, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_10, i8 %sbox_load_10, i1 true)
  %buf_addr_10_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_10)
  %i_5_10 = add i5 %i, -12
  %tmp_10 = zext i5 %i_5_10 to i32
  %sum11 = add i32 %tmp_10, %buf_offset_read
  %buf_addr_11 = getelementptr i8* %buf_r, i32 %sum11
  %buf_load_11_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_11, i32 1)
  %buf_addr_11_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_11)
  %tmp_1_10 = zext i8 %buf_addr_11_read to i32
  %sbox_addr_11 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_10
  %sbox_load_11 = load i8* %sbox_addr_11, align 1
  %buf_addr_11_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_11, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_11, i8 %sbox_load_11, i1 true)
  %buf_addr_11_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_11)
  %i_5_11 = add i5 %i, -13
  %tmp_11 = zext i5 %i_5_11 to i32
  %sum12 = add i32 %tmp_11, %buf_offset_read
  %buf_addr_12 = getelementptr i8* %buf_r, i32 %sum12
  %buf_load_12_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_12, i32 1)
  %buf_addr_12_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_12)
  %tmp_1_11 = zext i8 %buf_addr_12_read to i32
  %sbox_addr_12 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_11
  %sbox_load_12 = load i8* %sbox_addr_12, align 1
  %buf_addr_12_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_12, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_12, i8 %sbox_load_12, i1 true)
  %buf_addr_12_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_12)
  %i_5_12 = add i5 %i, -14
  %tmp_12 = zext i5 %i_5_12 to i32
  %sum13 = add i32 %tmp_12, %buf_offset_read
  %buf_addr_13 = getelementptr i8* %buf_r, i32 %sum13
  %buf_load_13_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_13, i32 1)
  %buf_addr_13_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_13)
  %tmp_1_12 = zext i8 %buf_addr_13_read to i32
  %sbox_addr_13 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_1_12
  %sbox_load_13 = load i8* %sbox_addr_13, align 1
  %buf_addr_13_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_13, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_13, i8 %sbox_load_13, i1 true)
  %buf_addr_13_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_13)
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
  %buf_addr_14 = getelementptr i8* %buf_r, i32 %sum1
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_14, i32 1)
  %buf_addr_14_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_14)
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %buf_addr_14_read, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %sum2 = add i32 %buf_offset_read, 9
  %buf_addr_15 = getelementptr i8* %buf_r, i32 %sum2
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_15, i32 1)
  %buf_addr_15_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_15)
  %buf_addr_14_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_14, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_14, i8 %buf_addr_15_read, i1 true)
  %buf_addr_14_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_14)
  %sum3 = add i32 %buf_offset_read, 13
  %buf_addr_16 = getelementptr i8* %buf_r, i32 %sum3
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_16, i32 1)
  %buf_addr_16_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_16)
  %buf_addr_15_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_15, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_15, i8 %buf_addr_16_read, i1 true)
  %buf_addr_15_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_15)
  %buf_addr_16_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_16, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_16, i8 %i, i1 true)
  %buf_addr_16_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_16)
  %sum4 = add i32 %buf_offset_read, 10
  %buf_addr_17 = getelementptr i8* %buf_r, i32 %sum4
  %i_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_17, i32 1)
  %i_1 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_17)
  %sum5 = add i32 %buf_offset_read, 2
  %buf_addr_18 = getelementptr i8* %buf_r, i32 %sum5
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_18, i32 1)
  %buf_addr_18_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_18)
  %buf_addr_17_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_17, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_17, i8 %buf_addr_18_read, i1 true)
  %buf_addr_17_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_17)
  %buf_addr_18_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_18, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_18, i8 %i_1, i1 true)
  %buf_addr_18_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_18)
  %sum6 = add i32 %buf_offset_read, 3
  %buf_addr_19 = getelementptr i8* %buf_r, i32 %sum6
  %j_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_19, i32 1)
  %j = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_19)
  %sum7 = add i32 %buf_offset_read, 15
  %buf_addr_20 = getelementptr i8* %buf_r, i32 %sum7
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_20, i32 1)
  %buf_addr_20_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_20)
  %buf_addr_19_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_19, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_19, i8 %buf_addr_20_read, i1 true)
  %buf_addr_19_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_19)
  %sum8 = add i32 %buf_offset_read, 11
  %buf_addr_21 = getelementptr i8* %buf_r, i32 %sum8
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_21, i32 1)
  %buf_addr_21_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_21)
  %buf_addr_20_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_20, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_20, i8 %buf_addr_21_read, i1 true)
  %buf_addr_20_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_20)
  %sum9 = add i32 %buf_offset_read, 7
  %buf_addr_22 = getelementptr i8* %buf_r, i32 %sum9
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_22, i32 1)
  %buf_addr_22_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_22)
  %buf_addr_21_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_21, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_21, i8 %buf_addr_22_read, i1 true)
  %buf_addr_21_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_21)
  %buf_addr_22_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_22, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_22, i8 %j, i1 true)
  %buf_addr_22_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_22)
  %sum10 = add i32 %buf_offset_read, 14
  %buf_addr_23 = getelementptr i8* %buf_r, i32 %sum10
  %j_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_23, i32 1)
  %j_1 = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_23)
  %sum11 = add i32 %buf_offset_read, 6
  %buf_addr_24 = getelementptr i8* %buf_r, i32 %sum11
  %buf_load_10_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_24, i32 1)
  %buf_addr_24_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_24)
  %buf_addr_23_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_23, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_23, i8 %buf_addr_24_read, i1 true)
  %buf_addr_23_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_23)
  %buf_addr_24_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_24, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_24, i8 %j_1, i1 true)
  %buf_addr_24_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_24)
  ret void
}

define internal fastcc void @aes_mixColumns(i8* %buf_r, i32 %buf_offset) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf_r, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [4 x i8]* @p_str14, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %buf_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_offset)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ 0, %0 ], [ %i_2, %2 ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i5.i32(i5 %i, i32 4)
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str4) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_s = zext i5 %i to i32
  %tmp_10 = trunc i5 %i to i4
  %sum = add i32 %buf_offset_read, %tmp_s
  %buf_addr = getelementptr i8* %buf_r, i32 %sum
  %a_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %a = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_2 = or i4 %tmp_10, 1
  %tmp_2_cast = zext i4 %tmp_2 to i32
  %sum1 = add i32 %buf_offset_read, %tmp_2_cast
  %buf_addr_25 = getelementptr i8* %buf_r, i32 %sum1
  %b_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_25, i32 1)
  %b = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_25)
  %tmp_3 = or i4 %tmp_10, 2
  %tmp_3_cast = zext i4 %tmp_3 to i32
  %sum2 = add i32 %buf_offset_read, %tmp_3_cast
  %buf_addr_26 = getelementptr i8* %buf_r, i32 %sum2
  %c_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_26, i32 1)
  %c = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_26)
  %tmp_4 = or i4 %tmp_10, 3
  %tmp_4_cast = zext i4 %tmp_4 to i32
  %sum3 = add i32 %buf_offset_read, %tmp_4_cast
  %buf_addr_27 = getelementptr i8* %buf_r, i32 %sum3
  %d_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_27, i32 1)
  %d = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_27)
  %x_assign = xor i8 %b, %a
  %tmp_6 = xor i8 %c, %x_assign
  %e = xor i8 %d, %tmp_6
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign, i32 7)
  %tmp_12 = shl i8 %x_assign, 1
  %tmp_2_i = xor i8 %tmp_12, 27
  %tmp_4_i = select i1 %tmp_11, i8 %tmp_2_i, i8 %tmp_12
  %tmp1 = xor i8 %tmp_4_i, %e
  %tmp_9 = xor i8 %tmp1, %a
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_9, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %x_assign_1 = xor i8 %c, %b
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_1, i32 7)
  %tmp_14 = shl i8 %x_assign_1, 1
  %tmp_2_i1 = xor i8 %tmp_14, 27
  %tmp_4_i1 = select i1 %tmp_13, i8 %tmp_2_i1, i8 %tmp_14
  %tmp2 = xor i8 %tmp_4_i1, %e
  %tmp_5 = xor i8 %tmp2, %b
  %buf_addr_25_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_25, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_25, i8 %tmp_5, i1 true)
  %buf_addr_25_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_25)
  %x_assign_2 = xor i8 %d, %c
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_2, i32 7)
  %tmp_16 = shl i8 %x_assign_2, 1
  %tmp_2_i2 = xor i8 %tmp_16, 27
  %tmp_4_i2 = select i1 %tmp_15, i8 %tmp_2_i2, i8 %tmp_16
  %tmp3 = xor i8 %tmp_4_i2, %e
  %tmp_7 = xor i8 %tmp3, %c
  %buf_addr_26_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_26, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_26, i8 %tmp_7, i1 true)
  %buf_addr_26_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_26)
  %x_assign_3 = xor i8 %d, %a
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %x_assign_3, i32 7)
  %tmp_18 = shl i8 %x_assign_3, 1
  %tmp_2_i3 = xor i8 %tmp_18, 27
  %tmp_4_i3 = select i1 %tmp_17, i8 %tmp_2_i3, i8 %tmp_18
  %tmp_8 = xor i8 %tmp_4_i3, %tmp_6
  %buf_addr_27_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_27, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_27, i8 %tmp_8, i1 true)
  %buf_addr_27_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_27)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str4, i32 %tmp_1)
  %i_2 = add i5 4, %i
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc i8 @aes_expandEncKey(i8* %k, i32 %k_offset, i8 %rc_read) {
  %rc_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %rc_read)
  %k_offset_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %k_offset)
  %k_addr = getelementptr i8* %k, i32 %k_offset_read
  call void (...)* @_ssdm_op_SpecInterface(i8* %k, [6 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [11 x i8]* @p_str10, [7 x i8]* @p_str11, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %sum1 = add i32 29, %k_offset_read
  %k_addr_32 = getelementptr i8* %k, i32 %sum1
  %k_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_32, i32 1)
  %k_addr_32_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_32)
  %tmp = zext i8 %k_addr_32_read to i32
  %sbox_addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp
  %sbox_load = load i8* %sbox_addr, align 1
  %k_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr, i32 1)
  %k_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr)
  %tmp1 = xor i8 %k_addr_read, %rc_read_1
  %tmp_s = xor i8 %tmp1, %sbox_load
  %k_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr, i8 %tmp_s, i1 true)
  %k_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr)
  %sum2 = add i32 30, %k_offset_read
  %k_addr_33 = getelementptr i8* %k, i32 %sum2
  %k_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_33, i32 1)
  %k_addr_33_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_33)
  %tmp_9 = zext i8 %k_addr_33_read to i32
  %sbox_addr_1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_9
  %sbox_load_1 = load i8* %sbox_addr_1, align 1
  %sum3 = add i32 1, %k_offset_read
  %k_addr_34 = getelementptr i8* %k, i32 %sum3
  %k_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_34, i32 1)
  %k_addr_34_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_34)
  %tmp_1 = xor i8 %k_addr_34_read, %sbox_load_1
  %k_addr_34_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_34, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_34, i8 %tmp_1, i1 true)
  %k_addr_34_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_34)
  %sum4 = add i32 31, %k_offset_read
  %k_addr_35 = getelementptr i8* %k, i32 %sum4
  %k_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_35, i32 1)
  %k_addr_35_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_35)
  %tmp_2 = zext i8 %k_addr_35_read to i32
  %sbox_addr_2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_2
  %sbox_load_2 = load i8* %sbox_addr_2, align 1
  %sum5 = add i32 2, %k_offset_read
  %k_addr_36 = getelementptr i8* %k, i32 %sum5
  %k_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_36, i32 1)
  %k_addr_36_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_36)
  %tmp_4 = xor i8 %k_addr_36_read, %sbox_load_2
  %k_addr_36_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_36, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_36, i8 %tmp_4, i1 true)
  %k_addr_36_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_36)
  %sum6 = add i32 28, %k_offset_read
  %k_addr_37 = getelementptr i8* %k, i32 %sum6
  %k_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_37, i32 1)
  %k_addr_37_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_37)
  %tmp_5 = zext i8 %k_addr_37_read to i32
  %sbox_addr_3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_5
  %sbox_load_3 = load i8* %sbox_addr_3, align 1
  %sum7 = add i32 3, %k_offset_read
  %k_addr_38 = getelementptr i8* %k, i32 %sum7
  %k_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_38, i32 1)
  %k_addr_38_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_38)
  %tmp_6 = xor i8 %k_addr_38_read, %sbox_load_3
  %k_addr_38_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_38, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_38, i8 %tmp_6, i1 true)
  %k_addr_38_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_38)
  %tmp_27 = shl i8 %rc_read_1, 1
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %rc_read_1, i32 7)
  %tmp_24_cast_cast = select i1 %tmp_28, i8 27, i8 0
  %tmp_8 = xor i8 %tmp_24_cast_cast, %tmp_27
  %sum8 = add i32 4, %k_offset_read
  %k_addr_39 = getelementptr i8* %k, i32 %sum8
  %k_load_32_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_39, i32 1)
  %k_addr_39_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_39)
  %tmp_3 = xor i8 %k_addr_39_read, %tmp_s
  %k_addr_39_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_39, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_39, i8 %tmp_3, i1 true)
  %k_addr_39_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_39)
  %sum9 = add i32 5, %k_offset_read
  %k_addr_40 = getelementptr i8* %k, i32 %sum9
  %k_load_33_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_40, i32 1)
  %k_addr_40_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_40)
  %tmp_7 = xor i8 %k_addr_40_read, %tmp_1
  %k_addr_40_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_40, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_40, i8 %tmp_7, i1 true)
  %k_addr_40_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_40)
  %sum10 = add i32 6, %k_offset_read
  %k_addr_41 = getelementptr i8* %k, i32 %sum10
  %k_load_34_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_41, i32 1)
  %k_addr_41_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_41)
  %tmp_10 = xor i8 %k_addr_41_read, %tmp_4
  %k_addr_41_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_41, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_41, i8 %tmp_10, i1 true)
  %k_addr_41_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_41)
  %sum11 = add i32 7, %k_offset_read
  %k_addr_42 = getelementptr i8* %k, i32 %sum11
  %k_load_35_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_42, i32 1)
  %k_addr_42_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_42)
  %tmp_11 = xor i8 %k_addr_42_read, %tmp_6
  %k_addr_42_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_42, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_42, i8 %tmp_11, i1 true)
  %k_addr_42_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_42)
  %sum12 = add i32 8, %k_offset_read
  %k_addr_43 = getelementptr i8* %k, i32 %sum12
  %k_load_36_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_43, i32 1)
  %k_addr_43_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_43)
  %tmp_36_1 = xor i8 %k_addr_43_read, %tmp_3
  %k_addr_43_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_43, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_43, i8 %tmp_36_1, i1 true)
  %k_addr_43_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_43)
  %sum13 = add i32 9, %k_offset_read
  %k_addr_44 = getelementptr i8* %k, i32 %sum13
  %k_load_37_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_44, i32 1)
  %k_addr_44_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_44)
  %tmp_39_1 = xor i8 %k_addr_44_read, %tmp_7
  %k_addr_44_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_44, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_44, i8 %tmp_39_1, i1 true)
  %k_addr_44_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_44)
  %sum = add i32 10, %k_offset_read
  %k_addr_45 = getelementptr i8* %k, i32 %sum
  %k_load_38_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_45, i32 1)
  %k_addr_45_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_45)
  %tmp_42_1 = xor i8 %k_addr_45_read, %tmp_10
  %k_addr_45_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_45, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_45, i8 %tmp_42_1, i1 true)
  %k_addr_45_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_45)
  %sum14 = add i32 11, %k_offset_read
  %k_addr_46 = getelementptr i8* %k, i32 %sum14
  %k_load_39_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_46, i32 1)
  %k_addr_46_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_46)
  %tmp_45_1 = xor i8 %k_addr_46_read, %tmp_11
  %k_addr_46_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_46, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_46, i8 %tmp_45_1, i1 true)
  %k_addr_46_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_46)
  %sum15 = add i32 12, %k_offset_read
  %k_addr_47 = getelementptr i8* %k, i32 %sum15
  %k_load_40_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_47, i32 1)
  %k_addr_47_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_47)
  %tmp_36_2 = xor i8 %k_addr_47_read, %tmp_36_1
  %k_addr_47_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_47, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_47, i8 %tmp_36_2, i1 true)
  %k_addr_47_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_47)
  %sum16 = add i32 13, %k_offset_read
  %k_addr_48 = getelementptr i8* %k, i32 %sum16
  %k_load_41_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_48, i32 1)
  %k_addr_48_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_48)
  %tmp_39_2 = xor i8 %k_addr_48_read, %tmp_39_1
  %k_addr_48_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_48, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_48, i8 %tmp_39_2, i1 true)
  %k_addr_48_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_48)
  %sum17 = add i32 14, %k_offset_read
  %k_addr_49 = getelementptr i8* %k, i32 %sum17
  %k_load_42_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_49, i32 1)
  %k_addr_49_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_49)
  %tmp_42_2 = xor i8 %k_addr_49_read, %tmp_42_1
  %k_addr_49_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_49, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_49, i8 %tmp_42_2, i1 true)
  %k_addr_49_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_49)
  %sum18 = add i32 15, %k_offset_read
  %k_addr_50 = getelementptr i8* %k, i32 %sum18
  %k_load_43_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_50, i32 1)
  %k_addr_50_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_50)
  %tmp_45_2 = xor i8 %k_addr_50_read, %tmp_45_1
  %k_addr_50_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_50, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_50, i8 %tmp_45_2, i1 true)
  %k_addr_50_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_50)
  %tmp_12 = zext i8 %tmp_36_2 to i32
  %sbox_addr_4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_12
  %sbox_load_4 = load i8* %sbox_addr_4, align 1
  %sum19 = add i32 16, %k_offset_read
  %k_addr_51 = getelementptr i8* %k, i32 %sum19
  %k_load_17_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_51, i32 1)
  %k_addr_51_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_51)
  %tmp_13 = xor i8 %k_addr_51_read, %sbox_load_4
  %k_addr_51_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_51, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_51, i8 %tmp_13, i1 true)
  %k_addr_51_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_51)
  %tmp_14 = zext i8 %tmp_39_2 to i32
  %sbox_addr_5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_14
  %sbox_load_5 = load i8* %sbox_addr_5, align 1
  %sum20 = add i32 17, %k_offset_read
  %k_addr_52 = getelementptr i8* %k, i32 %sum20
  %k_load_19_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_52, i32 1)
  %k_addr_52_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_52)
  %tmp_15 = xor i8 %k_addr_52_read, %sbox_load_5
  %k_addr_52_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_52, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_52, i8 %tmp_15, i1 true)
  %k_addr_52_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_52)
  %tmp_16 = zext i8 %tmp_42_2 to i32
  %sbox_addr_6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_16
  %sbox_load_6 = load i8* %sbox_addr_6, align 1
  %sum21 = add i32 18, %k_offset_read
  %k_addr_53 = getelementptr i8* %k, i32 %sum21
  %k_load_21_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_53, i32 1)
  %k_addr_53_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_53)
  %tmp_17 = xor i8 %k_addr_53_read, %sbox_load_6
  %k_addr_53_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_53, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_53, i8 %tmp_17, i1 true)
  %k_addr_53_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_53)
  %tmp_18 = zext i8 %tmp_45_2 to i32
  %sbox_addr_7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp_18
  %sbox_load_7 = load i8* %sbox_addr_7, align 1
  %sum22 = add i32 19, %k_offset_read
  %k_addr_54 = getelementptr i8* %k, i32 %sum22
  %k_load_23_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_54, i32 1)
  %k_addr_54_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_54)
  %tmp_19 = xor i8 %k_addr_54_read, %sbox_load_7
  %k_addr_54_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_54, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_54, i8 %tmp_19, i1 true)
  %k_addr_54_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_54)
  %sum23 = add i32 20, %k_offset_read
  %k_addr_55 = getelementptr i8* %k, i32 %sum23
  %k_load_44_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_55, i32 1)
  %k_addr_55_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_55)
  %tmp_20 = xor i8 %k_addr_55_read, %tmp_13
  %k_addr_55_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_55, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_55, i8 %tmp_20, i1 true)
  %k_addr_55_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_55)
  %sum24 = add i32 21, %k_offset_read
  %k_addr_56 = getelementptr i8* %k, i32 %sum24
  %k_load_45_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_56, i32 1)
  %k_addr_56_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_56)
  %tmp_21 = xor i8 %k_addr_56_read, %tmp_15
  %k_addr_56_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_56, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_56, i8 %tmp_21, i1 true)
  %k_addr_56_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_56)
  %sum25 = add i32 22, %k_offset_read
  %k_addr_57 = getelementptr i8* %k, i32 %sum25
  %k_load_46_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_57, i32 1)
  %k_addr_57_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_57)
  %tmp_22 = xor i8 %k_addr_57_read, %tmp_17
  %k_addr_57_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_57, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_57, i8 %tmp_22, i1 true)
  %k_addr_57_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_57)
  %sum26 = add i32 23, %k_offset_read
  %k_addr_58 = getelementptr i8* %k, i32 %sum26
  %k_load_47_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_58, i32 1)
  %k_addr_58_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_58)
  %tmp_23 = xor i8 %k_addr_58_read, %tmp_19
  %k_addr_58_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_58, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_58, i8 %tmp_23, i1 true)
  %k_addr_58_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_58)
  %sum27 = add i32 24, %k_offset_read
  %k_addr_59 = getelementptr i8* %k, i32 %sum27
  %k_load_48_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_59, i32 1)
  %k_addr_59_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_59)
  %tmp_57_1 = xor i8 %k_addr_59_read, %tmp_20
  %k_addr_59_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_59, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_59, i8 %tmp_57_1, i1 true)
  %k_addr_59_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_59)
  %sum28 = add i32 25, %k_offset_read
  %k_addr_60 = getelementptr i8* %k, i32 %sum28
  %k_load_49_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_60, i32 1)
  %k_addr_60_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_60)
  %tmp_60_1 = xor i8 %k_addr_60_read, %tmp_21
  %k_addr_60_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_60, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_60, i8 %tmp_60_1, i1 true)
  %k_addr_60_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_60)
  %sum29 = add i32 26, %k_offset_read
  %k_addr_61 = getelementptr i8* %k, i32 %sum29
  %k_load_50_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_61, i32 1)
  %k_addr_61_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_61)
  %tmp_63_1 = xor i8 %k_addr_61_read, %tmp_22
  %k_addr_61_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_61, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_61, i8 %tmp_63_1, i1 true)
  %k_addr_61_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_61)
  %sum30 = add i32 27, %k_offset_read
  %k_addr_62 = getelementptr i8* %k, i32 %sum30
  %k_load_51_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %k_addr_62, i32 1)
  %k_addr_62_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %k_addr_62)
  %tmp_66_1 = xor i8 %k_addr_62_read, %tmp_23
  %k_addr_62_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_62, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_62, i8 %tmp_66_1, i1 true)
  %k_addr_62_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_62)
  %tmp_57_2 = xor i8 %k_addr_37_read, %tmp_57_1
  %k_addr_37_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_37, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_37, i8 %tmp_57_2, i1 true)
  %k_addr_37_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_37)
  %tmp_60_2 = xor i8 %k_addr_32_read, %tmp_60_1
  %k_addr_32_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_32, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_32, i8 %tmp_60_2, i1 true)
  %k_addr_32_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_32)
  %tmp_63_2 = xor i8 %k_addr_33_read, %tmp_63_1
  %k_addr_33_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_33, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_33, i8 %tmp_63_2, i1 true)
  %k_addr_33_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_33)
  %tmp_66_2 = xor i8 %k_addr_35_read, %tmp_66_1
  %k_addr_35_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %k_addr_35, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %k_addr_35, i8 %tmp_66_2, i1 true)
  %k_addr_35_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %k_addr_35)
  ret i8 %tmp_8
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
  %i = phi i5 [ -16, %0 ], [ %i_10_3, %2 ]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_s = add i5 %i, -1
  %i_cast = sext i5 %i_s to i8
  %tmp = icmp eq i5 %i, 0
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @p_str3) nounwind
  %tmp_s = zext i8 %i_cast to i32
  %sum6 = add i32 %key_offset_read, %tmp_s
  %key_addr = getelementptr i8* %key, i32 %sum6
  %key_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr, i32 1)
  %key_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr)
  %sum15 = add i32 %cpk_offset_read, %tmp_s
  %cpk_addr = getelementptr i8* %cpk, i32 %sum15
  %cpk_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr, i8 %key_addr_read, i1 true)
  %cpk_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr)
  %sum = add i32 %buf_offset_read, %tmp_s
  %buf_addr = getelementptr i8* %buf_r, i32 %sum
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_24 = xor i8 %buf_addr_read, %key_addr_read
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_24, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %sum5 = add i5 %i, 15
  %sum5_cast = zext i5 %sum5 to i32
  %sum7 = add i32 %key_offset_read, %sum5_cast
  %key_addr_1 = getelementptr i8* %key, i32 %sum7
  %key_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_1, i32 1)
  %key_addr_1_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_1)
  %sum16 = add i32 %cpk_offset_read, %sum5_cast
  %cpk_addr_1 = getelementptr i8* %cpk, i32 %sum16
  %cpk_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr_1, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr_1, i8 %key_addr_1_read, i1 true)
  %cpk_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr_1)
  %i_10_1 = add i5 %i, -2
  %i_10_1_cast = sext i5 %i_10_1 to i8
  %tmp_1 = zext i8 %i_10_1_cast to i32
  %sum8 = add i32 %key_offset_read, %tmp_1
  %key_addr_2 = getelementptr i8* %key, i32 %sum8
  %key_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_2, i32 1)
  %key_addr_2_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_2)
  %sum17 = add i32 %cpk_offset_read, %tmp_1
  %cpk_addr_2 = getelementptr i8* %cpk, i32 %sum17
  %cpk_addr_2_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr_2, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr_2, i8 %key_addr_2_read, i1 true)
  %cpk_addr_2_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr_2)
  %sum1 = add i32 %buf_offset_read, %tmp_1
  %buf_addr_28 = getelementptr i8* %buf_r, i32 %sum1
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_28, i32 1)
  %buf_addr_28_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_28)
  %tmp_67_1 = xor i8 %buf_addr_28_read, %key_addr_2_read
  %buf_addr_28_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_28, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_28, i8 %tmp_67_1, i1 true)
  %buf_addr_28_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_28)
  %sum5_1 = add i5 %i, 14
  %sum5_1_cast = zext i5 %sum5_1 to i32
  %sum9 = add i32 %key_offset_read, %sum5_1_cast
  %key_addr_3 = getelementptr i8* %key, i32 %sum9
  %key_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_3, i32 1)
  %key_addr_3_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_3)
  %sum18 = add i32 %cpk_offset_read, %sum5_1_cast
  %cpk_addr_3 = getelementptr i8* %cpk, i32 %sum18
  %cpk_addr_3_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr_3, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr_3, i8 %key_addr_3_read, i1 true)
  %cpk_addr_3_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr_3)
  %i_10_2 = add i5 %i, -3
  %i_10_2_cast = sext i5 %i_10_2 to i8
  %tmp_2 = zext i8 %i_10_2_cast to i32
  %sum10 = add i32 %key_offset_read, %tmp_2
  %key_addr_4 = getelementptr i8* %key, i32 %sum10
  %key_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_4, i32 1)
  %key_addr_4_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_4)
  %sum19 = add i32 %cpk_offset_read, %tmp_2
  %cpk_addr_4 = getelementptr i8* %cpk, i32 %sum19
  %cpk_addr_4_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr_4, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr_4, i8 %key_addr_4_read, i1 true)
  %cpk_addr_4_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr_4)
  %sum2 = add i32 %buf_offset_read, %tmp_2
  %buf_addr_29 = getelementptr i8* %buf_r, i32 %sum2
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_29, i32 1)
  %buf_addr_29_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_29)
  %tmp_67_2 = xor i8 %buf_addr_29_read, %key_addr_4_read
  %buf_addr_29_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_29, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_29, i8 %tmp_67_2, i1 true)
  %buf_addr_29_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_29)
  %sum5_2 = add i5 %i, 13
  %sum5_2_cast = zext i5 %sum5_2 to i32
  %sum11 = add i32 %key_offset_read, %sum5_2_cast
  %key_addr_5 = getelementptr i8* %key, i32 %sum11
  %key_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_5, i32 1)
  %key_addr_5_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_5)
  %sum20 = add i32 %cpk_offset_read, %sum5_2_cast
  %cpk_addr_5 = getelementptr i8* %cpk, i32 %sum20
  %cpk_addr_5_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr_5, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr_5, i8 %key_addr_5_read, i1 true)
  %cpk_addr_5_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr_5)
  %i_10_3 = add i5 %i, -4
  %i_10_3_cast = sext i5 %i_10_3 to i8
  %tmp_3 = zext i8 %i_10_3_cast to i32
  %sum12 = add i32 %key_offset_read, %tmp_3
  %key_addr_6 = getelementptr i8* %key, i32 %sum12
  %key_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_6, i32 1)
  %key_addr_6_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_6)
  %sum21 = add i32 %cpk_offset_read, %tmp_3
  %cpk_addr_6 = getelementptr i8* %cpk, i32 %sum21
  %cpk_addr_6_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr_6, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr_6, i8 %key_addr_6_read, i1 true)
  %cpk_addr_6_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr_6)
  %sum3 = add i32 %buf_offset_read, %tmp_3
  %buf_addr_30 = getelementptr i8* %buf_r, i32 %sum3
  %buf_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_30, i32 1)
  %buf_addr_30_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_30)
  %tmp_67_3 = xor i8 %buf_addr_30_read, %key_addr_6_read
  %buf_addr_30_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_30, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_30, i8 %tmp_67_3, i1 true)
  %buf_addr_30_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_30)
  %sum5_3 = add i5 %i, 12
  %sum5_3_cast = zext i5 %sum5_3 to i32
  %sum13 = add i32 %key_offset_read, %sum5_3_cast
  %key_addr_7 = getelementptr i8* %key, i32 %sum13
  %key_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_7, i32 1)
  %key_addr_7_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_7)
  %sum22 = add i32 %cpk_offset_read, %sum5_3_cast
  %cpk_addr_7 = getelementptr i8* %cpk, i32 %sum22
  %cpk_addr_7_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %cpk_addr_7, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %cpk_addr_7, i8 %key_addr_7_read, i1 true)
  %cpk_addr_7_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %cpk_addr_7)
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
  %tmp = trunc i6 %key_offset_offset_re to i5
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i5 [ -16, %0 ], [ %i_11_8, %2 ]
  %i_s = add i5 %i, -1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str2) nounwind
  %tmp_s = zext i5 %i_s to i32
  %sum = add i5 %i_s, %tmp
  %sum_cast = zext i5 %sum to i32
  %sum11 = add i32 %sum_cast, %key_offset_read
  %key_addr = getelementptr i8* %key, i32 %sum11
  %key_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr, i32 1)
  %key_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr)
  %sum1 = add i32 %tmp_s, %buf_offset_read
  %buf_addr = getelementptr i8* %buf_r, i32 %sum1
  %buf_load_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr, i32 1)
  %buf_addr_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr)
  %tmp_25 = xor i8 %buf_addr_read, %key_addr_read
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr, i8 %tmp_25, i1 true)
  %buf_addr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr)
  %i_11_1 = add i5 %i, -2
  %tmp_1 = zext i5 %i_11_1 to i32
  %sum_1 = add i5 %i_11_1, %tmp
  %sum_1_cast = zext i5 %sum_1 to i32
  %sum12 = add i32 %sum_1_cast, %key_offset_read
  %key_addr_8 = getelementptr i8* %key, i32 %sum12
  %key_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_8, i32 1)
  %key_addr_8_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_8)
  %sum2 = add i32 %tmp_1, %buf_offset_read
  %buf_addr_31 = getelementptr i8* %buf_r, i32 %sum2
  %buf_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_31, i32 1)
  %buf_addr_31_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_31)
  %tmp_69_1 = xor i8 %buf_addr_31_read, %key_addr_8_read
  %buf_addr_31_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_31, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_31, i8 %tmp_69_1, i1 true)
  %buf_addr_31_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_31)
  %i_11_2 = add i5 %i, -3
  %tmp_2 = zext i5 %i_11_2 to i32
  %sum_2 = add i5 %i_11_2, %tmp
  %sum_2_cast = zext i5 %sum_2 to i32
  %sum13 = add i32 %sum_2_cast, %key_offset_read
  %key_addr_9 = getelementptr i8* %key, i32 %sum13
  %key_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_9, i32 1)
  %key_addr_9_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_9)
  %sum3 = add i32 %tmp_2, %buf_offset_read
  %buf_addr_32 = getelementptr i8* %buf_r, i32 %sum3
  %buf_load_2_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_32, i32 1)
  %buf_addr_32_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_32)
  %tmp_69_2 = xor i8 %buf_addr_32_read, %key_addr_9_read
  %buf_addr_32_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_32, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_32, i8 %tmp_69_2, i1 true)
  %buf_addr_32_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_32)
  %i_11_3 = add i5 %i, -4
  %tmp_3 = zext i5 %i_11_3 to i32
  %sum_3 = add i5 %i_11_3, %tmp
  %sum_3_cast = zext i5 %sum_3 to i32
  %sum14 = add i32 %sum_3_cast, %key_offset_read
  %key_addr_10 = getelementptr i8* %key, i32 %sum14
  %key_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_10, i32 1)
  %key_addr_10_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_10)
  %sum4 = add i32 %tmp_3, %buf_offset_read
  %buf_addr_33 = getelementptr i8* %buf_r, i32 %sum4
  %buf_load_3_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_33, i32 1)
  %buf_addr_33_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_33)
  %tmp_69_3 = xor i8 %buf_addr_33_read, %key_addr_10_read
  %buf_addr_33_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_33, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_33, i8 %tmp_69_3, i1 true)
  %buf_addr_33_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_33)
  %i_11_4 = add i5 %i, -5
  %tmp_4 = zext i5 %i_11_4 to i32
  %sum_4 = add i5 %i_11_4, %tmp
  %sum_4_cast = zext i5 %sum_4 to i32
  %sum15 = add i32 %sum_4_cast, %key_offset_read
  %key_addr_11 = getelementptr i8* %key, i32 %sum15
  %key_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_11, i32 1)
  %key_addr_11_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_11)
  %sum5 = add i32 %tmp_4, %buf_offset_read
  %buf_addr_34 = getelementptr i8* %buf_r, i32 %sum5
  %buf_load_4_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_34, i32 1)
  %buf_addr_34_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_34)
  %tmp_69_4 = xor i8 %buf_addr_34_read, %key_addr_11_read
  %buf_addr_34_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_34, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_34, i8 %tmp_69_4, i1 true)
  %buf_addr_34_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_34)
  %i_11_5 = add i5 %i, -6
  %tmp_5 = zext i5 %i_11_5 to i32
  %sum_5 = add i5 %i_11_5, %tmp
  %sum_5_cast = zext i5 %sum_5 to i32
  %sum16 = add i32 %sum_5_cast, %key_offset_read
  %key_addr_12 = getelementptr i8* %key, i32 %sum16
  %key_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_12, i32 1)
  %key_addr_12_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_12)
  %sum6 = add i32 %tmp_5, %buf_offset_read
  %buf_addr_35 = getelementptr i8* %buf_r, i32 %sum6
  %buf_load_5_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_35, i32 1)
  %buf_addr_35_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_35)
  %tmp_69_5 = xor i8 %buf_addr_35_read, %key_addr_12_read
  %buf_addr_35_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_35, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_35, i8 %tmp_69_5, i1 true)
  %buf_addr_35_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_35)
  %i_11_6 = add i5 %i, -7
  %tmp_6 = zext i5 %i_11_6 to i32
  %sum_6 = add i5 %i_11_6, %tmp
  %sum_6_cast = zext i5 %sum_6 to i32
  %sum17 = add i32 %sum_6_cast, %key_offset_read
  %key_addr_13 = getelementptr i8* %key, i32 %sum17
  %key_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_13, i32 1)
  %key_addr_13_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_13)
  %sum7 = add i32 %tmp_6, %buf_offset_read
  %buf_addr_36 = getelementptr i8* %buf_r, i32 %sum7
  %buf_load_6_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_36, i32 1)
  %buf_addr_36_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_36)
  %tmp_69_6 = xor i8 %buf_addr_36_read, %key_addr_13_read
  %buf_addr_36_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_36, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_36, i8 %tmp_69_6, i1 true)
  %buf_addr_36_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_36)
  %i_11_7 = add i5 %i, -8
  %i_11_7_cast = sext i5 %i_11_7 to i8
  %tmp_7 = icmp eq i5 %i_11_6, 0
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %tmp_7, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp_7_10 = zext i8 %i_11_7_cast to i32
  %tmp_7_cast_cast = sext i5 %i_11_7 to i6
  %sum_7 = add i6 %tmp_7_cast_cast, %key_offset_offset_re
  %sum_7_cast = sext i6 %sum_7 to i32
  %sum18 = add i32 %key_offset_read, %sum_7_cast
  %key_addr_14 = getelementptr i8* %key, i32 %sum18
  %key_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_14, i32 1)
  %key_addr_14_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_14)
  %sum8 = add i32 %buf_offset_read, %tmp_7_10
  %buf_addr_37 = getelementptr i8* %buf_r, i32 %sum8
  %buf_load_7_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_37, i32 1)
  %buf_addr_37_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_37)
  %tmp_69_7 = xor i8 %buf_addr_37_read, %key_addr_14_read
  %buf_addr_37_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_37, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_37, i8 %tmp_69_7, i1 true)
  %buf_addr_37_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_37)
  %i_11_8 = add i5 %i, -9
  %tmp_8 = zext i5 %i_11_8 to i32
  %sum_8 = add i5 %i_11_8, %tmp
  %sum_8_cast = zext i5 %sum_8 to i32
  %sum19 = add i32 %key_offset_read, %sum_8_cast
  %key_addr_15 = getelementptr i8* %key, i32 %sum19
  %key_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %key_addr_15, i32 1)
  %key_addr_15_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %key_addr_15)
  %sum9 = add i32 %buf_offset_read, %tmp_8
  %buf_addr_38 = getelementptr i8* %buf_r, i32 %sum9
  %buf_load_8_req = call i1 @_ssdm_op_ReadReq.m_axi.i8P(i8* %buf_addr_38, i32 1)
  %buf_addr_38_read = call i8 @_ssdm_op_Read.m_axi.i8P(i8* %buf_addr_38)
  %tmp_69_8 = xor i8 %buf_addr_38_read, %key_addr_15_read
  %buf_addr_38_req = call i1 @_ssdm_op_WriteReq.m_axi.i8P(i8* %buf_addr_38, i32 1)
  call void @_ssdm_op_Write.m_axi.i8P(i8* %buf_addr_38, i8 %tmp_69_8, i1 true)
  %buf_addr_38_resp = call i1 @_ssdm_op_WriteResp.m_axi.i8P(i8* %buf_addr_38)
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

declare i1 @_ssdm_op_PartSelect.i1.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_11 = shl i8 1, %empty
  %empty_12 = and i8 %0, %empty_11
  %empty_13 = icmp ne i8 %empty_12, 0
  ret i1 %empty_13
}

define weak i1 @_ssdm_op_BitSelect.i1.i5.i32(i5, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i5
  %empty_14 = shl i5 1, %empty
  %empty_15 = and i5 %0, %empty_14
  %empty_16 = icmp ne i5 %empty_15, 0
  ret i1 %empty_16
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
