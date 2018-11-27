; ModuleID = '/scratch/local/tmp.soPlafqy6w/_sds/vhls/encrypt/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@unroll_factor_sub = constant i32 14, align 4     ; [#uses=0 type=i32*]
@unroll_factor_mix = constant i32 4, align 4      ; [#uses=0 type=i32*]
@unroll_factor_exp2 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_exp1 = constant i32 2, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb3 = constant i32 7, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb2 = constant i32 4, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb1 = constant i32 32, align 4    ; [#uses=0 type=i32*]
@unroll_factor_cpkey = constant i32 4, align 4    ; [#uses=0 type=i32*]
@unroll_factor_addkey = constant i32 9, align 4   ; [#uses=0 type=i32*]
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1 ; [#uses=22 type=[256 x i8]*]
@pipeline_ii_sub = constant i32 11, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_mix = constant i32 1, align 4        ; [#uses=0 type=i32*]
@pipeline_ii_exp2 = constant i32 2, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_exp1 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb3 = constant i32 12, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_ecb2 = constant i32 6, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb1 = constant i32 16, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_cpkey = constant i32 6, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_addkey = constant i32 8, align 4     ; [#uses=0 type=i32*]
@encrypt.str = internal unnamed_addr constant [8 x i8] c"encrypt\00" ; [#uses=1 type=[8 x i8]*]
@.str9 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=13 type=[6 x i8]*]
@.str8 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str7 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str4 = private unnamed_addr constant [4 x i8] c"mix\00", align 1 ; [#uses=3 type=[4 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"addkey\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str17 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str16 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1 ; [#uses=6 type=[4 x i8]*]
@.str13 = private unnamed_addr constant [8 x i8] c"ctx_key\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"ctx_enckey\00", align 1 ; [#uses=2 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=13 type=[7 x i8]*]
@.str10 = private unnamed_addr constant [11 x i8] c"ctx_deckey\00", align 1 ; [#uses=2 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=68 type=[1 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"sub\00", align 1 ; [#uses=1 type=[4 x i8]*]

; [#uses=32]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @encrypt([32 x i8]* %ctx_key, [32 x i8]* %ctx_enckey, [32 x i8]* %ctx_deckey, [32 x i8]* %k, [16 x i8]* %buf) nounwind {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %ctx_key) nounwind, !map !72
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %ctx_enckey) nounwind, !map !78
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %ctx_deckey) nounwind, !map !82
  call void (...)* @_ssdm_op_SpecBitsMap([32 x i8]* %k) nounwind, !map !86
  call void (...)* @_ssdm_op_SpecBitsMap([16 x i8]* %buf) nounwind, !map !90
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt.str) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i8]* %ctx_key}, i64 0, metadata !96), !dbg !106 ; [debug line = 301:22] [debug variable = ctx_key]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %ctx_enckey}, i64 0, metadata !107), !dbg !108 ; [debug line = 301:43] [debug variable = ctx_enckey]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %ctx_deckey}, i64 0, metadata !109), !dbg !110 ; [debug line = 302:22] [debug variable = ctx_deckey]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !111), !dbg !112 ; [debug line = 302:46] [debug variable = k]
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !113), !dbg !117 ; [debug line = 302:61] [debug variable = buf]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, [1 x i8]* @.str1) nounwind, !dbg !118 ; [debug line = 304:1]
  call void (...)* @_ssdm_op_SpecMemCore([32 x i8]* %k, [1 x i8]* @.str1, [7 x i8]* @.str7, [1 x i8]* @.str1, i32 -1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %k, [5 x i8]* @.str8, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %ctx_deckey, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [11 x i8]* @.str10, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %ctx_enckey, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [11 x i8]* @.str12, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %ctx_key, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str13, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  %k.addr = getelementptr [32 x i8]* %k, i32 0, i32 0, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load = load i8* %k.addr, align 1, !dbg !120  ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 0, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load, i8* %ctx_deckey.addr, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 0, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load, i8* %ctx_enckey.addr, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.1 = getelementptr [32 x i8]* %k, i32 0, i32 1, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.1 = load i8* %k.addr.1, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.1 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 1, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.1, i8* %ctx_deckey.addr.1, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.1 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 1, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.1, i8* %ctx_enckey.addr.1, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.2 = getelementptr [32 x i8]* %k, i32 0, i32 2, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.2 = load i8* %k.addr.2, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.2 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 2, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.2, i8* %ctx_deckey.addr.2, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.2 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 2, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.2, i8* %ctx_enckey.addr.2, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.3 = getelementptr [32 x i8]* %k, i32 0, i32 3, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.3 = load i8* %k.addr.3, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.3 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 3, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.3, i8* %ctx_deckey.addr.3, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.3 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 3, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.3, i8* %ctx_enckey.addr.3, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.4 = getelementptr [32 x i8]* %k, i32 0, i32 4, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.4 = load i8* %k.addr.4, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.4 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 4, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.4, i8* %ctx_deckey.addr.4, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.4 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 4, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.4, i8* %ctx_enckey.addr.4, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.5 = getelementptr [32 x i8]* %k, i32 0, i32 5, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.5 = load i8* %k.addr.5, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.5 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 5, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.5, i8* %ctx_deckey.addr.5, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.5 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 5, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.5, i8* %ctx_enckey.addr.5, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.6 = getelementptr [32 x i8]* %k, i32 0, i32 6, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.6 = load i8* %k.addr.6, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.6 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 6, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.6, i8* %ctx_deckey.addr.6, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.6 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 6, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.6, i8* %ctx_enckey.addr.6, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.7 = getelementptr [32 x i8]* %k, i32 0, i32 7, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.7 = load i8* %k.addr.7, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.7 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 7, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.7, i8* %ctx_deckey.addr.7, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.7 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 7, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.7, i8* %ctx_enckey.addr.7, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.8 = getelementptr [32 x i8]* %k, i32 0, i32 8, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.8 = load i8* %k.addr.8, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.8 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 8, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.8, i8* %ctx_deckey.addr.8, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.8 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 8, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.8, i8* %ctx_enckey.addr.8, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.9 = getelementptr [32 x i8]* %k, i32 0, i32 9, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.9 = load i8* %k.addr.9, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.9 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 9, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.9, i8* %ctx_deckey.addr.9, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.9 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 9, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.9, i8* %ctx_enckey.addr.9, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.10 = getelementptr [32 x i8]* %k, i32 0, i32 10, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.10 = load i8* %k.addr.10, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.10 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 10, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.10, i8* %ctx_deckey.addr.10, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.10 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 10, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.10, i8* %ctx_enckey.addr.10, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.11 = getelementptr [32 x i8]* %k, i32 0, i32 11, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.11 = load i8* %k.addr.11, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.11 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 11, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.11, i8* %ctx_deckey.addr.11, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.11 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 11, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.11, i8* %ctx_enckey.addr.11, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.12 = getelementptr [32 x i8]* %k, i32 0, i32 12, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.12 = load i8* %k.addr.12, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.12 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 12, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.12, i8* %ctx_deckey.addr.12, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.12 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 12, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.12, i8* %ctx_enckey.addr.12, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.13 = getelementptr [32 x i8]* %k, i32 0, i32 13, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.13 = load i8* %k.addr.13, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.13 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 13, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.13, i8* %ctx_deckey.addr.13, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.13 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 13, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.13, i8* %ctx_enckey.addr.13, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.14 = getelementptr [32 x i8]* %k, i32 0, i32 14, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.14 = load i8* %k.addr.14, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.14 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 14, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.14, i8* %ctx_deckey.addr.14, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.14 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 14, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.14, i8* %ctx_enckey.addr.14, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.15 = getelementptr [32 x i8]* %k, i32 0, i32 15, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.15 = load i8* %k.addr.15, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.15 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 15, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.15, i8* %ctx_deckey.addr.15, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.15 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 15, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.15, i8* %ctx_enckey.addr.15, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.16 = getelementptr [32 x i8]* %k, i32 0, i32 16, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.16 = load i8* %k.addr.16, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.16 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 16, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.16, i8* %ctx_deckey.addr.16, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.16 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 16, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.16, i8* %ctx_enckey.addr.16, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.17 = getelementptr [32 x i8]* %k, i32 0, i32 17, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.17 = load i8* %k.addr.17, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.17 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 17, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.17, i8* %ctx_deckey.addr.17, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.17 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 17, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.17, i8* %ctx_enckey.addr.17, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.18 = getelementptr [32 x i8]* %k, i32 0, i32 18, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.18 = load i8* %k.addr.18, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.18 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 18, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.18, i8* %ctx_deckey.addr.18, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.18 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 18, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.18, i8* %ctx_enckey.addr.18, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.19 = getelementptr [32 x i8]* %k, i32 0, i32 19, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.19 = load i8* %k.addr.19, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.19 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 19, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.19, i8* %ctx_deckey.addr.19, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.19 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 19, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.19, i8* %ctx_enckey.addr.19, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.20 = getelementptr [32 x i8]* %k, i32 0, i32 20, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.20 = load i8* %k.addr.20, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.20 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 20, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.20, i8* %ctx_deckey.addr.20, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.20 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 20, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.20, i8* %ctx_enckey.addr.20, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.21 = getelementptr [32 x i8]* %k, i32 0, i32 21, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.21 = load i8* %k.addr.21, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.21 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 21, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.21, i8* %ctx_deckey.addr.21, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.21 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 21, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.21, i8* %ctx_enckey.addr.21, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.22 = getelementptr [32 x i8]* %k, i32 0, i32 22, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.22 = load i8* %k.addr.22, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.22 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 22, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.22, i8* %ctx_deckey.addr.22, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.22 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 22, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.22, i8* %ctx_enckey.addr.22, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.23 = getelementptr [32 x i8]* %k, i32 0, i32 23, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.23 = load i8* %k.addr.23, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.23 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 23, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.23, i8* %ctx_deckey.addr.23, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.23 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 23, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.23, i8* %ctx_enckey.addr.23, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.24 = getelementptr [32 x i8]* %k, i32 0, i32 24, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.24 = load i8* %k.addr.24, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.24 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 24, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.24, i8* %ctx_deckey.addr.24, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.24 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 24, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.24, i8* %ctx_enckey.addr.24, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.25 = getelementptr [32 x i8]* %k, i32 0, i32 25, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.25 = load i8* %k.addr.25, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.25 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 25, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.25, i8* %ctx_deckey.addr.25, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.25 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 25, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.25, i8* %ctx_enckey.addr.25, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.26 = getelementptr [32 x i8]* %k, i32 0, i32 26, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.26 = load i8* %k.addr.26, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.26 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 26, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.26, i8* %ctx_deckey.addr.26, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.26 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 26, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.26, i8* %ctx_enckey.addr.26, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.27 = getelementptr [32 x i8]* %k, i32 0, i32 27, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.27 = load i8* %k.addr.27, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.27 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 27, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.27, i8* %ctx_deckey.addr.27, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.27 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 27, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.27, i8* %ctx_enckey.addr.27, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.28 = getelementptr [32 x i8]* %k, i32 0, i32 28, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.28 = load i8* %k.addr.28, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.28 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 28, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.28, i8* %ctx_deckey.addr.28, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.28 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 28, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.28, i8* %ctx_enckey.addr.28, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.29 = getelementptr [32 x i8]* %k, i32 0, i32 29, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.29 = load i8* %k.addr.29, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.29 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 29, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.29, i8* %ctx_deckey.addr.29, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.29 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 29, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.29, i8* %ctx_enckey.addr.29, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.30 = getelementptr [32 x i8]* %k, i32 0, i32 30, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.30 = load i8* %k.addr.30, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.30 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 30, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.30, i8* %ctx_deckey.addr.30, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.30 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 30, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.30, i8* %ctx_enckey.addr.30, align 1, !dbg !120 ; [debug line = 314:2]
  %k.addr.31 = getelementptr [32 x i8]* %k, i32 0, i32 31, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load.31 = load i8* %k.addr.31, align 1, !dbg !120 ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr.31 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 31, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.31, i8* %ctx_deckey.addr.31, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr.31 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 31, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load.31, i8* %ctx_enckey.addr.31, align 1, !dbg !120 ; [debug line = 314:2]
  br label %.preheader, !dbg !123                 ; [debug line = 316:17]

.preheader:                                       ; preds = %1, %.preheader.preheader
  %rcon = phi i8 [ %rcon.1, %1 ], [ 1, %.preheader.preheader ] ; [#uses=1 type=i8]
  %i = phi i3 [ %phitmp, %1 ], [ -1, %.preheader.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i}, i64 0, metadata !125), !dbg !123 ; [debug line = 316:17] [debug variable = i]
  %tmp.7 = icmp eq i3 %i, 0, !dbg !123            ; [#uses=1 type=i1] [debug line = 316:17]
  %0 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.7, label %3, label %1, !dbg !123     ; [debug line = 316:17]

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str16) nounwind, !dbg !126 ; [debug line = 316:29]
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([5 x i8]* @.str16) nounwind, !dbg !126 ; [#uses=1 type=i32] [debug line = 316:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 6, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !128 ; [debug line = 318:1]
  %rcon.1 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_deckey, i8 %rcon) nounwind, !dbg !129 ; [#uses=1 type=i8] [debug line = 322:2]
  call void @llvm.dbg.value(metadata !{i8 %rcon.1}, i64 0, metadata !130), !dbg !129 ; [debug line = 322:2] [debug variable = rcon]
  %2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([5 x i8]* @.str16, i32 %tmp) nounwind, !dbg !131 ; [#uses=0 type=i32] [debug line = 323:5]
  %phitmp = add i3 %i, -1, !dbg !131              ; [#uses=1 type=i3] [debug line = 323:5]
  br label %.preheader, !dbg !131                 ; [debug line = 323:5]

; <label>:3                                       ; preds = %.preheader
  call fastcc void @aes_addRoundKey_cpy([16 x i8]* %buf, [32 x i8]* %ctx_enckey, [32 x i8]* %ctx_key) nounwind, !dbg !132 ; [debug line = 326:5]
  br label %4, !dbg !133                          ; [debug line = 327:16]

; <label>:4                                       ; preds = %25, %3
  %rcon. = phi i8 [ 1, %3 ], [ %rcon.2.6, %25 ]   ; [#uses=2 type=i8]
  %i.2 = phi i8 [ 1, %3 ], [ %i.4.6, %25 ]        ; [#uses=6 type=i8]
  %i.2.cast = trunc i8 %i.2 to i1                 ; [#uses=5 type=i1]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str17) nounwind, !dbg !135 ; [debug line = 328:6]
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !137 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !138 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf) nounwind, !dbg !139 ; [debug line = 336:9]
  br i1 %i.2.cast, label %7, label %8, !dbg !140  ; [debug line = 337:9]

; <label>:6                                       ; preds = %8, %7
  %rcon.2 = phi i8 [ %call.ret, %8 ], [ %rcon., %7 ] ; [#uses=2 type=i8]
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !137 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !138 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf) nounwind, !dbg !139 ; [debug line = 336:9]
  br i1 %i.2.cast, label %11, label %10, !dbg !140 ; [debug line = 337:9]

; <label>:7                                       ; preds = %4
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 16) nounwind, !dbg !141 ; [debug line = 337:21]
  br label %6, !dbg !141                          ; [debug line = 337:21]

; <label>:8                                       ; preds = %4
  %call.ret = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.) nounwind, !dbg !142 ; [#uses=1 type=i8] [debug line = 338:14]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !143 ; [debug line = 338:48]
  br label %6

; <label>:9                                       ; preds = %11, %10
  %rcon.2.1 = phi i8 [ %call.ret11.1, %11 ], [ %rcon.2, %10 ] ; [#uses=2 type=i8]
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !137 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !138 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf) nounwind, !dbg !139 ; [debug line = 336:9]
  br i1 %i.2.cast, label %13, label %14, !dbg !140 ; [debug line = 337:9]

; <label>:10                                      ; preds = %6
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 16) nounwind, !dbg !141 ; [debug line = 337:21]
  br label %9, !dbg !141                          ; [debug line = 337:21]

; <label>:11                                      ; preds = %6
  %call.ret11.1 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.2) nounwind, !dbg !142 ; [#uses=1 type=i8] [debug line = 338:14]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !143 ; [debug line = 338:48]
  br label %9

; <label>:12                                      ; preds = %14, %13
  %rcon.2.2 = phi i8 [ %call.ret11.2, %14 ], [ %rcon.2.1, %13 ] ; [#uses=3 type=i8]
  %tmp.1 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.3 = icmp eq i8 %i.2, 11, !dbg !133    ; [#uses=1 type=i1] [debug line = 327:16]
  br i1 %exitcond.3, label %29, label %17, !dbg !133 ; [debug line = 327:16]

; <label>:13                                      ; preds = %9
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 16) nounwind, !dbg !141 ; [debug line = 337:21]
  br label %12, !dbg !141                         ; [debug line = 337:21]

; <label>:14                                      ; preds = %9
  %call.ret11.2 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.2.1) nounwind, !dbg !142 ; [#uses=1 type=i8] [debug line = 338:14]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !143 ; [debug line = 338:48]
  br label %12

; <label>:15                                      ; preds = %18, %16
  %rcon.2.3 = phi i8 [ %call.ret11.3, %18 ], [ %rcon.2.2, %16 ] ; [#uses=2 type=i8]
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !137 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !138 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf) nounwind, !dbg !139 ; [debug line = 336:9]
  br i1 %i.2.cast, label %20, label %21, !dbg !140 ; [debug line = 337:9]

; <label>:16                                      ; preds = %17
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 16) nounwind, !dbg !141 ; [debug line = 337:21]
  br label %15, !dbg !141                         ; [debug line = 337:21]

; <label>:17                                      ; preds = %12
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !137 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !138 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf) nounwind, !dbg !139 ; [debug line = 336:9]
  br i1 %tmp.1, label %18, label %16, !dbg !140   ; [debug line = 337:9]

; <label>:18                                      ; preds = %17
  %call.ret11.3 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.2.2) nounwind, !dbg !142 ; [#uses=1 type=i8] [debug line = 338:14]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !143 ; [debug line = 338:48]
  br label %15

; <label>:19                                      ; preds = %21, %20
  %rcon.2.4 = phi i8 [ %call.ret11.4, %21 ], [ %rcon.2.3, %20 ] ; [#uses=2 type=i8]
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !137 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !138 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf) nounwind, !dbg !139 ; [debug line = 336:9]
  br i1 %i.2.cast, label %24, label %23, !dbg !140 ; [debug line = 337:9]

; <label>:20                                      ; preds = %15
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 16) nounwind, !dbg !141 ; [debug line = 337:21]
  br label %19, !dbg !141                         ; [debug line = 337:21]

; <label>:21                                      ; preds = %15
  %call.ret11.4 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.2.3) nounwind, !dbg !142 ; [#uses=1 type=i8] [debug line = 338:14]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !143 ; [debug line = 338:48]
  br label %19

; <label>:22                                      ; preds = %24, %23
  %rcon.2.5 = phi i8 [ %call.ret11.5, %24 ], [ %rcon.2.4, %23 ] ; [#uses=3 type=i8]
  %tmp.2 = trunc i8 %i.2 to i1                    ; [#uses=1 type=i1]
  %exitcond.6 = icmp eq i8 %i.2, 8, !dbg !133     ; [#uses=1 type=i1] [debug line = 327:16]
  br i1 %exitcond.6, label %29, label %27, !dbg !133 ; [debug line = 327:16]

; <label>:23                                      ; preds = %19
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 16) nounwind, !dbg !141 ; [debug line = 337:21]
  br label %22, !dbg !141                         ; [debug line = 337:21]

; <label>:24                                      ; preds = %19
  %call.ret11.5 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.2.4) nounwind, !dbg !142 ; [#uses=1 type=i8] [debug line = 338:14]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !143 ; [debug line = 338:48]
  br label %22

; <label>:25                                      ; preds = %28, %26
  %rcon.2.6 = phi i8 [ %call.ret11.6, %28 ], [ %rcon.2.5, %26 ] ; [#uses=1 type=i8]
  %i.4.6 = add i8 %i.2, 7, !dbg !144              ; [#uses=1 type=i8] [debug line = 327:41]
  br label %4, !dbg !144                          ; [debug line = 327:41]

; <label>:26                                      ; preds = %27
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 16) nounwind, !dbg !141 ; [debug line = 337:21]
  br label %25, !dbg !141                         ; [debug line = 337:21]

; <label>:27                                      ; preds = %22
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !137 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !138 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf) nounwind, !dbg !139 ; [debug line = 336:9]
  br i1 %tmp.2, label %26, label %28, !dbg !140   ; [debug line = 337:9]

; <label>:28                                      ; preds = %27
  %call.ret11.6 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.2.5) nounwind, !dbg !142 ; [#uses=1 type=i8] [debug line = 338:14]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !143 ; [debug line = 338:48]
  br label %25

; <label>:29                                      ; preds = %22, %12
  %rcon.1.lcssa = phi i8 [ %rcon.2.2, %12 ], [ %rcon.2.5, %22 ] ; [#uses=1 type=i8]
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !145 ; [debug line = 340:5]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !146 ; [debug line = 341:5]
  %call.ret12 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.1.lcssa) nounwind, !dbg !147 ; [#uses=0 type=i8] [debug line = 342:5]
  call void @llvm.dbg.value(metadata !{i8 %call.ret12}, i64 0, metadata !130), !dbg !147 ; [debug line = 342:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !148 ; [debug line = 343:5]
  ret void, !dbg !149                             ; [debug line = 344:1]
}

; [#uses=8]
define internal fastcc void @aes_subBytes([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !150), !dbg !154 ; [debug line = 178:28] [debug variable = buf]
  br label %1, !dbg !155                          ; [debug line = 182:11]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.5.12, %3 ]        ; [#uses=14 type=i5]
  %i.5 = add i5 %i, -1, !dbg !155                 ; [#uses=1 type=i5] [debug line = 182:11]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str) nounwind, !dbg !157 ; [debug line = 183:6]
  %tmp. = zext i5 %i.5 to i32, !dbg !159          ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1 = zext i8 %buf.load to i32, !dbg !159    ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load, i8* %buf.addr, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.1 = add i5 %i, -2, !dbg !155               ; [#uses=2 type=i5] [debug line = 182:11]
  %tmp..1 = zext i5 %i.5.1 to i32, !dbg !159      ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.1 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..1, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.1 = load i8* %buf.addr.1, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.1 = zext i8 %buf.load.1 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.1, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.1, i8* %buf.addr.1, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.2 = add i5 %i, -3, !dbg !155               ; [#uses=1 type=i5] [debug line = 182:11]
  %i.5.2.cast = sext i5 %i.5.2 to i8, !dbg !155   ; [#uses=1 type=i8] [debug line = 182:11]
  %tmp.2 = icmp eq i5 %i.5.1, 0, !dbg !155        ; [#uses=1 type=i1] [debug line = 182:11]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1) ; [#uses=0 type=i32]
  br i1 %tmp.2, label %4, label %3, !dbg !155     ; [debug line = 182:11]

; <label>:3                                       ; preds = %1
  %tmp..2 = zext i8 %i.5.2.cast to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.2 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..2, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.2 = load i8* %buf.addr.2, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.2 = zext i8 %buf.load.2 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.2, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.2, i8* %buf.addr.2, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.3 = add i5 %i, -4, !dbg !155               ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..3 = zext i5 %i.5.3 to i32, !dbg !159      ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.3 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..3, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.3 = load i8* %buf.addr.3, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.3 = zext i8 %buf.load.3 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.3, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.3, i8* %buf.addr.3, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.4 = add i5 %i, -5, !dbg !155               ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..4 = zext i5 %i.5.4 to i32, !dbg !159      ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.4 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..4, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.4 = load i8* %buf.addr.4, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.4 = zext i8 %buf.load.4 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.4, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.4, i8* %buf.addr.4, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.5 = add i5 %i, -6, !dbg !155               ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..5 = zext i5 %i.5.5 to i32, !dbg !159      ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.5 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..5, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.5 = load i8* %buf.addr.5, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.5 = zext i8 %buf.load.5 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.5, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.5, i8* %buf.addr.5, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.6 = add i5 %i, -7, !dbg !155               ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..6 = zext i5 %i.5.6 to i32, !dbg !159      ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.6 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..6, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.6 = load i8* %buf.addr.6, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.6 = zext i8 %buf.load.6 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.6, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.6, i8* %buf.addr.6, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.7 = add i5 %i, -8, !dbg !155               ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..7 = zext i5 %i.5.7 to i32, !dbg !159      ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.7 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..7, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.7 = load i8* %buf.addr.7, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.7 = zext i8 %buf.load.7 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.7, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.7, i8* %buf.addr.7, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.8 = add i5 %i, -9, !dbg !155               ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..8 = zext i5 %i.5.8 to i32, !dbg !159      ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.8 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..8, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.8 = load i8* %buf.addr.8, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.8 = zext i8 %buf.load.8 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.8 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.8, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.8 = load i8* %sbox.addr.8, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.8, i8* %buf.addr.8, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.9 = add i5 %i, -10, !dbg !155              ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..9 = zext i5 %i.5.9 to i32, !dbg !159      ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.9 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..9, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.9 = load i8* %buf.addr.9, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.9 = zext i8 %buf.load.9 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.9 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.9, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.9 = load i8* %sbox.addr.9, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.9, i8* %buf.addr.9, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5. = add i5 %i, -11, !dbg !155               ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp.. = zext i5 %i.5. to i32, !dbg !159        ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.10 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.., !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.10 = load i8* %buf.addr.10, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1. = zext i8 %buf.load.10 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.10 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1., !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.10 = load i8* %sbox.addr.10, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.10, i8* %buf.addr.10, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.10 = add i5 %i, -12, !dbg !155             ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..10 = zext i5 %i.5.10 to i32, !dbg !159    ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.11 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..10, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.11 = load i8* %buf.addr.11, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.10 = zext i8 %buf.load.11 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.11 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.10, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.11 = load i8* %sbox.addr.11, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.11, i8* %buf.addr.11, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.11 = add i5 %i, -13, !dbg !155             ; [#uses=1 type=i5] [debug line = 182:11]
  %tmp..11 = zext i5 %i.5.11 to i32, !dbg !159    ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.12 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..11, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.12 = load i8* %buf.addr.12, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.11 = zext i8 %buf.load.12 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.12 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.11, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.12 = load i8* %sbox.addr.12, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.12, i8* %buf.addr.12, align 1, !dbg !159 ; [debug line = 189:2]
  %i.5.12 = add i5 %i, -14, !dbg !155             ; [#uses=2 type=i5] [debug line = 182:11]
  %tmp..12 = zext i5 %i.5.12 to i32, !dbg !159    ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr.13 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..12, !dbg !159 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load.13 = load i8* %buf.addr.13, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1.12 = zext i8 %buf.load.13 to i32, !dbg !159 ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr.13 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1.12, !dbg !159 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load.13 = load i8* %sbox.addr.13, align 1, !dbg !159 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load.13, i8* %buf.addr.13, align 1, !dbg !159 ; [debug line = 189:2]
  br label %1, !dbg !160                          ; [debug line = 190:5]

; <label>:4                                       ; preds = %1
  ret void, !dbg !161                             ; [debug line = 191:1]
}

; [#uses=8]
define internal fastcc void @aes_shiftRows([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !162), !dbg !164 ; [debug line = 227:29] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 1, !dbg !165 ; [#uses=2 type=i8*] [debug line = 231:5]
  %i = load i8* %buf.addr, align 1, !dbg !165     ; [#uses=1 type=i8] [debug line = 231:5]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !167), !dbg !165 ; [debug line = 231:5] [debug variable = i]
  %buf.addr.12 = getelementptr [16 x i8]* %buf, i32 0, i32 5, !dbg !168 ; [#uses=2 type=i8*] [debug line = 231:17]
  %buf.load = load i8* %buf.addr.12, align 1, !dbg !168 ; [#uses=1 type=i8] [debug line = 231:17]
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !168 ; [debug line = 231:17]
  %buf.addr.14 = getelementptr [16 x i8]* %buf, i32 0, i32 9, !dbg !169 ; [#uses=2 type=i8*] [debug line = 231:34]
  %buf.load.1 = load i8* %buf.addr.14, align 1, !dbg !169 ; [#uses=1 type=i8] [debug line = 231:34]
  store i8 %buf.load.1, i8* %buf.addr.12, align 1, !dbg !169 ; [debug line = 231:34]
  %buf.addr.15 = getelementptr [16 x i8]* %buf, i32 0, i32 13, !dbg !170 ; [#uses=2 type=i8*] [debug line = 231:51]
  %buf.load.2 = load i8* %buf.addr.15, align 1, !dbg !170 ; [#uses=1 type=i8] [debug line = 231:51]
  store i8 %buf.load.2, i8* %buf.addr.14, align 1, !dbg !170 ; [debug line = 231:51]
  store i8 %i, i8* %buf.addr.15, align 1, !dbg !171 ; [debug line = 231:69]
  %buf.addr.16 = getelementptr [16 x i8]* %buf, i32 0, i32 10, !dbg !172 ; [#uses=2 type=i8*] [debug line = 232:5]
  %i.1 = load i8* %buf.addr.16, align 1, !dbg !172 ; [#uses=1 type=i8] [debug line = 232:5]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !167), !dbg !172 ; [debug line = 232:5] [debug variable = i]
  %buf.addr.17 = getelementptr [16 x i8]* %buf, i32 0, i32 2, !dbg !173 ; [#uses=2 type=i8*] [debug line = 232:18]
  %buf.load.4 = load i8* %buf.addr.17, align 1, !dbg !173 ; [#uses=1 type=i8] [debug line = 232:18]
  store i8 %buf.load.4, i8* %buf.addr.16, align 1, !dbg !173 ; [debug line = 232:18]
  store i8 %i.1, i8* %buf.addr.17, align 1, !dbg !174 ; [debug line = 232:36]
  %buf.addr.18 = getelementptr [16 x i8]* %buf, i32 0, i32 3, !dbg !175 ; [#uses=2 type=i8*] [debug line = 233:5]
  %j = load i8* %buf.addr.18, align 1, !dbg !175  ; [#uses=1 type=i8] [debug line = 233:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !176), !dbg !175 ; [debug line = 233:5] [debug variable = j]
  %buf.addr.19 = getelementptr [16 x i8]* %buf, i32 0, i32 15, !dbg !177 ; [#uses=2 type=i8*] [debug line = 233:17]
  %buf.load.6 = load i8* %buf.addr.19, align 1, !dbg !177 ; [#uses=1 type=i8] [debug line = 233:17]
  store i8 %buf.load.6, i8* %buf.addr.18, align 1, !dbg !177 ; [debug line = 233:17]
  %buf.addr.20 = getelementptr [16 x i8]* %buf, i32 0, i32 11, !dbg !178 ; [#uses=2 type=i8*] [debug line = 233:35]
  %buf.load.7 = load i8* %buf.addr.20, align 1, !dbg !178 ; [#uses=1 type=i8] [debug line = 233:35]
  store i8 %buf.load.7, i8* %buf.addr.19, align 1, !dbg !178 ; [debug line = 233:35]
  %buf.addr.21 = getelementptr [16 x i8]* %buf, i32 0, i32 7, !dbg !179 ; [#uses=2 type=i8*] [debug line = 233:54]
  %buf.load.8 = load i8* %buf.addr.21, align 1, !dbg !179 ; [#uses=1 type=i8] [debug line = 233:54]
  store i8 %buf.load.8, i8* %buf.addr.20, align 1, !dbg !179 ; [debug line = 233:54]
  store i8 %j, i8* %buf.addr.21, align 1, !dbg !180 ; [debug line = 233:72]
  %buf.addr.22 = getelementptr [16 x i8]* %buf, i32 0, i32 14, !dbg !181 ; [#uses=2 type=i8*] [debug line = 234:5]
  %j.1 = load i8* %buf.addr.22, align 1, !dbg !181 ; [#uses=1 type=i8] [debug line = 234:5]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !176), !dbg !181 ; [debug line = 234:5] [debug variable = j]
  %buf.addr.23 = getelementptr [16 x i8]* %buf, i32 0, i32 6, !dbg !182 ; [#uses=2 type=i8*] [debug line = 234:18]
  %buf.load.10 = load i8* %buf.addr.23, align 1, !dbg !182 ; [#uses=1 type=i8] [debug line = 234:18]
  store i8 %buf.load.10, i8* %buf.addr.22, align 1, !dbg !182 ; [debug line = 234:18]
  store i8 %j.1, i8* %buf.addr.23, align 1, !dbg !183 ; [debug line = 234:36]
  ret void, !dbg !184                             ; [debug line = 236:1]
}

; [#uses=7]
define internal fastcc void @aes_mixColumns([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !185), !dbg !187 ; [debug line = 239:30] [debug variable = buf]
  br label %1, !dbg !188                          ; [debug line = 243:16]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %i.2, %3 ]             ; [#uses=4 type=i5]
  %tmp = icmp sgt i5 %i, -1, !dbg !188            ; [#uses=1 type=i1] [debug line = 243:16]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %5, !dbg !188       ; [debug line = 243:16]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str4) nounwind, !dbg !191 ; [debug line = 244:6]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str4), !dbg !191 ; [#uses=1 type=i32] [debug line = 244:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !193 ; [debug line = 246:1]
  %tmp. = zext i5 %i to i32, !dbg !194            ; [#uses=1 type=i32] [debug line = 250:2]
  %tmp..cast = trunc i5 %i to i4, !dbg !194       ; [#uses=3 type=i4] [debug line = 250:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !194 ; [#uses=2 type=i8*] [debug line = 250:2]
  %a = load i8* %buf.addr, align 1, !dbg !194     ; [#uses=3 type=i8] [debug line = 250:2]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !195), !dbg !194 ; [debug line = 250:2] [debug variable = a]
  %tmp.2 = or i4 %tmp..cast, 1, !dbg !196         ; [#uses=1 type=i4] [debug line = 250:14]
  %tmp.2.cast = zext i4 %tmp.2 to i32, !dbg !196  ; [#uses=1 type=i32] [debug line = 250:14]
  %buf.addr.24 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.2.cast, !dbg !196 ; [#uses=2 type=i8*] [debug line = 250:14]
  %b = load i8* %buf.addr.24, align 1, !dbg !196  ; [#uses=3 type=i8] [debug line = 250:14]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !197), !dbg !196 ; [debug line = 250:14] [debug variable = b]
  %tmp.3 = or i4 %tmp..cast, 2, !dbg !198         ; [#uses=1 type=i4] [debug line = 250:30]
  %tmp.3.cast = zext i4 %tmp.3 to i32, !dbg !198  ; [#uses=1 type=i32] [debug line = 250:30]
  %buf.addr.25 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.3.cast, !dbg !198 ; [#uses=2 type=i8*] [debug line = 250:30]
  %c = load i8* %buf.addr.25, align 1, !dbg !198  ; [#uses=4 type=i8] [debug line = 250:30]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !199), !dbg !198 ; [debug line = 250:30] [debug variable = c]
  %tmp.4 = or i4 %tmp..cast, 3, !dbg !200         ; [#uses=1 type=i4] [debug line = 250:46]
  %tmp.4.cast = zext i4 %tmp.4 to i32, !dbg !200  ; [#uses=1 type=i32] [debug line = 250:46]
  %buf.addr.26 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.4.cast, !dbg !200 ; [#uses=2 type=i8*] [debug line = 250:46]
  %d = load i8* %buf.addr.26, align 1, !dbg !200  ; [#uses=3 type=i8] [debug line = 250:46]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !201), !dbg !200 ; [debug line = 250:46] [debug variable = d]
  %x.assign = xor i8 %b, %a, !dbg !202            ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp.6 = xor i8 %c, %x.assign, !dbg !202        ; [#uses=2 type=i8] [debug line = 251:9]
  %e = xor i8 %d, %tmp.6, !dbg !202               ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !203), !dbg !202 ; [debug line = 251:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x.assign}, i64 0, metadata !204), !dbg !209 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp.i = icmp slt i8 %x.assign, 0, !dbg !210    ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp.1.i = shl i8 %x.assign, 1, !dbg !210       ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp.2.i = xor i8 %tmp.1.i, 27, !dbg !210       ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp.4.i = select i1 %tmp.i, i8 %tmp.2.i, i8 %tmp.1.i, !dbg !210 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp1 = xor i8 %tmp.4.i, %e, !dbg !208          ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp.9 = xor i8 %tmp1, %a, !dbg !208            ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %tmp.9, i8* %buf.addr, align 1, !dbg !208 ; [debug line = 252:23]
  %x.assign.1 = xor i8 %c, %b, !dbg !212          ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.1}, i64 0, metadata !213), !dbg !214 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp.i8 = icmp slt i8 %x.assign.1, 0, !dbg !215 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp.1.i9 = shl i8 %x.assign.1, 1, !dbg !215    ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp.2.i1 = xor i8 %tmp.1.i9, 27, !dbg !215     ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp.4.i1 = select i1 %tmp.i8, i8 %tmp.2.i1, i8 %tmp.1.i9, !dbg !215 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp2 = xor i8 %tmp.4.i1, %e, !dbg !212         ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.5 = xor i8 %tmp2, %b, !dbg !212            ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %tmp.5, i8* %buf.addr.24, align 1, !dbg !212 ; [debug line = 252:54]
  %x.assign.2 = xor i8 %d, %c, !dbg !216          ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.2}, i64 0, metadata !217), !dbg !218 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp.i1 = icmp slt i8 %x.assign.2, 0, !dbg !219 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp.1.i1 = shl i8 %x.assign.2, 1, !dbg !219    ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp.2.i2 = xor i8 %tmp.1.i1, 27, !dbg !219     ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp.4.i2 = select i1 %tmp.i1, i8 %tmp.2.i2, i8 %tmp.1.i1, !dbg !219 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp3 = xor i8 %tmp.4.i2, %e, !dbg !216         ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.7 = xor i8 %tmp3, %c, !dbg !216            ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %tmp.7, i8* %buf.addr.25, align 1, !dbg !216 ; [debug line = 253:25]
  %x.assign.3 = xor i8 %d, %a, !dbg !220          ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.3}, i64 0, metadata !221), !dbg !222 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp.i2 = icmp slt i8 %x.assign.3, 0, !dbg !223 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp.1.i2 = shl i8 %x.assign.3, 1, !dbg !223    ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp.2.i3 = xor i8 %tmp.1.i2, 27, !dbg !223     ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.4.i3 = select i1 %tmp.i2, i8 %tmp.2.i3, i8 %tmp.1.i2, !dbg !223 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.8 = xor i8 %tmp.4.i3, %tmp.6, !dbg !220    ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %tmp.8, i8* %buf.addr.26, align 1, !dbg !220 ; [debug line = 253:56]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str4, i32 %tmp.1), !dbg !224 ; [#uses=0 type=i32] [debug line = 254:5]
  %i.2 = add i5 %i, 4, !dbg !225                  ; [#uses=1 type=i5] [debug line = 243:31]
  call void @llvm.dbg.value(metadata !{i5 %i.2}, i64 0, metadata !226), !dbg !225 ; [debug line = 243:31] [debug variable = i]
  br label %1, !dbg !225                          ; [debug line = 243:31]

; <label>:5                                       ; preds = %1
  ret void, !dbg !227                             ; [debug line = 255:1]
}

; [#uses=9]
define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc.read) {
  %k.addr = getelementptr [32 x i8]* %k, i32 0, i32 0 ; [#uses=2 type=i8*]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %k, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [11 x i8]* @.str10, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !228), !dbg !232 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !233), !dbg !234 ; [debug line = 258:44] [debug variable = rc]
  %k.addr.32 = getelementptr [32 x i8]* %k, i32 0, i32 29, !dbg !235 ; [#uses=2 type=i8*] [debug line = 262:5]
  %k.load = load i8* %k.addr.32, align 1, !dbg !235 ; [#uses=2 type=i8] [debug line = 262:5]
  %tmp = zext i8 %k.load to i32, !dbg !235        ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !235 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !235 ; [#uses=1 type=i8] [debug line = 262:5]
  %k.load.1 = load i8* %k.addr, align 1, !dbg !235 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %k.load.1, %rc.read, !dbg !235   ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp. = xor i8 %tmp1, %sbox.load, !dbg !235     ; [#uses=2 type=i8] [debug line = 262:5]
  store i8 %tmp., i8* %k.addr, align 1, !dbg !235 ; [debug line = 262:5]
  %k.addr.33 = getelementptr [32 x i8]* %k, i32 0, i32 30, !dbg !237 ; [#uses=2 type=i8*] [debug line = 263:5]
  %k.load.2 = load i8* %k.addr.33, align 1, !dbg !237 ; [#uses=2 type=i8] [debug line = 263:5]
  %tmp.9 = zext i8 %k.load.2 to i32, !dbg !237    ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.9, !dbg !237 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !237 ; [#uses=1 type=i8] [debug line = 263:5]
  %k.addr.34 = getelementptr [32 x i8]* %k, i32 0, i32 1, !dbg !237 ; [#uses=2 type=i8*] [debug line = 263:5]
  %k.load.3 = load i8* %k.addr.34, align 1, !dbg !237 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.10 = xor i8 %k.load.3, %sbox.load.1, !dbg !237 ; [#uses=2 type=i8] [debug line = 263:5]
  store i8 %tmp.10, i8* %k.addr.34, align 1, !dbg !237 ; [debug line = 263:5]
  %k.addr.35 = getelementptr [32 x i8]* %k, i32 0, i32 31, !dbg !238 ; [#uses=2 type=i8*] [debug line = 264:5]
  %k.load.4 = load i8* %k.addr.35, align 1, !dbg !238 ; [#uses=2 type=i8] [debug line = 264:5]
  %tmp.11 = zext i8 %k.load.4 to i32, !dbg !238   ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.11, !dbg !238 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !238 ; [#uses=1 type=i8] [debug line = 264:5]
  %k.addr.36 = getelementptr [32 x i8]* %k, i32 0, i32 2, !dbg !238 ; [#uses=2 type=i8*] [debug line = 264:5]
  %k.load.5 = load i8* %k.addr.36, align 1, !dbg !238 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.12 = xor i8 %k.load.5, %sbox.load.2, !dbg !238 ; [#uses=2 type=i8] [debug line = 264:5]
  store i8 %tmp.12, i8* %k.addr.36, align 1, !dbg !238 ; [debug line = 264:5]
  %k.addr.37 = getelementptr [32 x i8]* %k, i32 0, i32 28, !dbg !239 ; [#uses=2 type=i8*] [debug line = 265:5]
  %k.load.6 = load i8* %k.addr.37, align 1, !dbg !239 ; [#uses=2 type=i8] [debug line = 265:5]
  %tmp.13 = zext i8 %k.load.6 to i32, !dbg !239   ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.13, !dbg !239 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !239 ; [#uses=1 type=i8] [debug line = 265:5]
  %k.addr.38 = getelementptr [32 x i8]* %k, i32 0, i32 3, !dbg !239 ; [#uses=2 type=i8*] [debug line = 265:5]
  %k.load.7 = load i8* %k.addr.38, align 1, !dbg !239 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.14 = xor i8 %k.load.7, %sbox.load.3, !dbg !239 ; [#uses=2 type=i8] [debug line = 265:5]
  store i8 %tmp.14, i8* %k.addr.38, align 1, !dbg !239 ; [debug line = 265:5]
  %tmp.15 = shl i8 %rc.read, 1, !dbg !240         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.2 = lshr i8 %rc.read, 7, !dbg !240         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.3 = trunc i8 %tmp.2 to i1, !dbg !240       ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp.24.cast = select i1 %tmp.3, i8 27, i8 0    ; [#uses=1 type=i8]
  %tmp.16 = xor i8 %tmp.24.cast, %tmp.15, !dbg !240 ; [#uses=1 type=i8] [debug line = 266:5]
  %k.addr.39 = getelementptr [32 x i8]* %k, i32 0, i32 4, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.32 = load i8* %k.addr.39, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.17 = xor i8 %k.load.32, %tmp., !dbg !241   ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.17, i8* %k.addr.39, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.40 = getelementptr [32 x i8]* %k, i32 0, i32 5, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.33 = load i8* %k.addr.40, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.18 = xor i8 %k.load.33, %tmp.10, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.18, i8* %k.addr.40, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.41 = getelementptr [32 x i8]* %k, i32 0, i32 6, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.34 = load i8* %k.addr.41, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.19 = xor i8 %k.load.34, %tmp.12, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.19, i8* %k.addr.41, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.42 = getelementptr [32 x i8]* %k, i32 0, i32 7, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.35 = load i8* %k.addr.42, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.20 = xor i8 %k.load.35, %tmp.14, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.20, i8* %k.addr.42, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.43 = getelementptr [32 x i8]* %k, i32 0, i32 8, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.36 = load i8* %k.addr.43, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36.1 = xor i8 %k.load.36, %tmp.17, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.36.1, i8* %k.addr.43, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.44 = getelementptr [32 x i8]* %k, i32 0, i32 9, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.37 = load i8* %k.addr.44, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39.1 = xor i8 %k.load.37, %tmp.18, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.39.1, i8* %k.addr.44, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.45 = getelementptr [32 x i8]* %k, i32 0, i32 10, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.38 = load i8* %k.addr.45, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42.1 = xor i8 %k.load.38, %tmp.19, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.42.1, i8* %k.addr.45, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.46 = getelementptr [32 x i8]* %k, i32 0, i32 11, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.39 = load i8* %k.addr.46, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45.1 = xor i8 %k.load.39, %tmp.20, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.45.1, i8* %k.addr.46, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.47 = getelementptr [32 x i8]* %k, i32 0, i32 12, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.40 = load i8* %k.addr.47, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.36.2 = xor i8 %k.load.40, %tmp.36.1, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.36.2, i8* %k.addr.47, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.48 = getelementptr [32 x i8]* %k, i32 0, i32 13, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.41 = load i8* %k.addr.48, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.39.2 = xor i8 %k.load.41, %tmp.39.1, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.39.2, i8* %k.addr.48, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.49 = getelementptr [32 x i8]* %k, i32 0, i32 14, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.42 = load i8* %k.addr.49, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.42.2 = xor i8 %k.load.42, %tmp.42.1, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.42.2, i8* %k.addr.49, align 1, !dbg !241 ; [debug line = 275:2]
  %k.addr.50 = getelementptr [32 x i8]* %k, i32 0, i32 15, !dbg !241 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.43 = load i8* %k.addr.50, align 1, !dbg !241 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.45.2 = xor i8 %k.load.43, %tmp.45.1, !dbg !241 ; [#uses=2 type=i8] [debug line = 275:2]
  store i8 %tmp.45.2, i8* %k.addr.50, align 1, !dbg !241 ; [debug line = 275:2]
  %tmp.21 = zext i8 %tmp.36.2 to i32, !dbg !244   ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.21, !dbg !244 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !244 ; [#uses=1 type=i8] [debug line = 278:5]
  %k.addr.51 = getelementptr [32 x i8]* %k, i32 0, i32 16, !dbg !244 ; [#uses=2 type=i8*] [debug line = 278:5]
  %k.load.17 = load i8* %k.addr.51, align 1, !dbg !244 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.22 = xor i8 %k.load.17, %sbox.load.4, !dbg !244 ; [#uses=2 type=i8] [debug line = 278:5]
  store i8 %tmp.22, i8* %k.addr.51, align 1, !dbg !244 ; [debug line = 278:5]
  %tmp.23 = zext i8 %tmp.39.2 to i32, !dbg !245   ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.23, !dbg !245 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !245 ; [#uses=1 type=i8] [debug line = 279:5]
  %k.addr.52 = getelementptr [32 x i8]* %k, i32 0, i32 17, !dbg !245 ; [#uses=2 type=i8*] [debug line = 279:5]
  %k.load.19 = load i8* %k.addr.52, align 1, !dbg !245 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.24 = xor i8 %k.load.19, %sbox.load.5, !dbg !245 ; [#uses=2 type=i8] [debug line = 279:5]
  store i8 %tmp.24, i8* %k.addr.52, align 1, !dbg !245 ; [debug line = 279:5]
  %tmp.25 = zext i8 %tmp.42.2 to i32, !dbg !246   ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.25, !dbg !246 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 280:5]
  %k.addr.53 = getelementptr [32 x i8]* %k, i32 0, i32 18, !dbg !246 ; [#uses=2 type=i8*] [debug line = 280:5]
  %k.load.21 = load i8* %k.addr.53, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.26 = xor i8 %k.load.21, %sbox.load.6, !dbg !246 ; [#uses=2 type=i8] [debug line = 280:5]
  store i8 %tmp.26, i8* %k.addr.53, align 1, !dbg !246 ; [debug line = 280:5]
  %tmp.27 = zext i8 %tmp.45.2 to i32, !dbg !247   ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.27, !dbg !247 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !247 ; [#uses=1 type=i8] [debug line = 281:5]
  %k.addr.54 = getelementptr [32 x i8]* %k, i32 0, i32 19, !dbg !247 ; [#uses=2 type=i8*] [debug line = 281:5]
  %k.load.23 = load i8* %k.addr.54, align 1, !dbg !247 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.28 = xor i8 %k.load.23, %sbox.load.7, !dbg !247 ; [#uses=2 type=i8] [debug line = 281:5]
  store i8 %tmp.28, i8* %k.addr.54, align 1, !dbg !247 ; [debug line = 281:5]
  %k.addr.55 = getelementptr [32 x i8]* %k, i32 0, i32 20, !dbg !248 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.44 = load i8* %k.addr.55, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.29 = xor i8 %k.load.44, %tmp.22, !dbg !248 ; [#uses=2 type=i8] [debug line = 290:2]
  store i8 %tmp.29, i8* %k.addr.55, align 1, !dbg !248 ; [debug line = 290:2]
  %k.addr.56 = getelementptr [32 x i8]* %k, i32 0, i32 21, !dbg !248 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.45 = load i8* %k.addr.56, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.30 = xor i8 %k.load.45, %tmp.24, !dbg !248 ; [#uses=2 type=i8] [debug line = 290:2]
  store i8 %tmp.30, i8* %k.addr.56, align 1, !dbg !248 ; [debug line = 290:2]
  %k.addr.57 = getelementptr [32 x i8]* %k, i32 0, i32 22, !dbg !248 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.46 = load i8* %k.addr.57, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.31 = xor i8 %k.load.46, %tmp.26, !dbg !248 ; [#uses=2 type=i8] [debug line = 290:2]
  store i8 %tmp.31, i8* %k.addr.57, align 1, !dbg !248 ; [debug line = 290:2]
  %k.addr.58 = getelementptr [32 x i8]* %k, i32 0, i32 23, !dbg !248 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.47 = load i8* %k.addr.58, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.32 = xor i8 %k.load.47, %tmp.28, !dbg !248 ; [#uses=2 type=i8] [debug line = 290:2]
  store i8 %tmp.32, i8* %k.addr.58, align 1, !dbg !248 ; [debug line = 290:2]
  %k.addr.59 = getelementptr [32 x i8]* %k, i32 0, i32 24, !dbg !248 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.48 = load i8* %k.addr.59, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.57.1 = xor i8 %k.load.48, %tmp.29, !dbg !248 ; [#uses=2 type=i8] [debug line = 290:2]
  store i8 %tmp.57.1, i8* %k.addr.59, align 1, !dbg !248 ; [debug line = 290:2]
  %k.addr.60 = getelementptr [32 x i8]* %k, i32 0, i32 25, !dbg !248 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.49 = load i8* %k.addr.60, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.60.1 = xor i8 %k.load.49, %tmp.30, !dbg !248 ; [#uses=2 type=i8] [debug line = 290:2]
  store i8 %tmp.60.1, i8* %k.addr.60, align 1, !dbg !248 ; [debug line = 290:2]
  %k.addr.61 = getelementptr [32 x i8]* %k, i32 0, i32 26, !dbg !248 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.50 = load i8* %k.addr.61, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.63.1 = xor i8 %k.load.50, %tmp.31, !dbg !248 ; [#uses=2 type=i8] [debug line = 290:2]
  store i8 %tmp.63.1, i8* %k.addr.61, align 1, !dbg !248 ; [debug line = 290:2]
  %k.addr.62 = getelementptr [32 x i8]* %k, i32 0, i32 27, !dbg !248 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.51 = load i8* %k.addr.62, align 1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.66.1 = xor i8 %k.load.51, %tmp.32, !dbg !248 ; [#uses=2 type=i8] [debug line = 290:2]
  store i8 %tmp.66.1, i8* %k.addr.62, align 1, !dbg !248 ; [debug line = 290:2]
  %tmp.57.2 = xor i8 %k.load.6, %tmp.57.1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.57.2, i8* %k.addr.37, align 1, !dbg !248 ; [debug line = 290:2]
  %tmp.60.2 = xor i8 %k.load, %tmp.60.1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.60.2, i8* %k.addr.32, align 1, !dbg !248 ; [debug line = 290:2]
  %tmp.63.2 = xor i8 %k.load.2, %tmp.63.1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.63.2, i8* %k.addr.33, align 1, !dbg !248 ; [debug line = 290:2]
  %tmp.66.2 = xor i8 %k.load.4, %tmp.66.1, !dbg !248 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.66.2, i8* %k.addr.35, align 1, !dbg !248 ; [debug line = 290:2]
  ret i8 %tmp.16, !dbg !251                       ; [debug line = 294:1]
}

; [#uses=1]
define internal fastcc void @aes_addRoundKey_cpy([16 x i8]* %buf, [32 x i8]* %key, [32 x i8]* %cpk) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %cpk, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str13, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %key, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [11 x i8]* @.str12, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !252), !dbg !256 ; [debug line = 210:35] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !257), !dbg !258 ; [debug line = 210:49] [debug variable = key]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %cpk}, i64 0, metadata !259), !dbg !260 ; [debug line = 210:63] [debug variable = cpk]
  br label %1, !dbg !261                          ; [debug line = 214:13]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.10.3, %3 ]        ; [#uses=6 type=i5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  %i. = add i5 %i, -1, !dbg !261                  ; [#uses=1 type=i5] [debug line = 214:13]
  %i..cast = sext i5 %i. to i8, !dbg !261         ; [#uses=1 type=i8] [debug line = 214:13]
  %tmp = icmp eq i5 %i, 0, !dbg !261              ; [#uses=1 type=i1] [debug line = 214:13]
  br i1 %tmp, label %4, label %3, !dbg !261       ; [debug line = 214:13]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str3) nounwind, !dbg !263 ; [debug line = 215:6]
  %tmp. = zext i8 %i..cast to i32, !dbg !265      ; [#uses=3 type=i32] [debug line = 221:2]
  %key.addr = getelementptr [32 x i8]* %key, i32 0, i32 %tmp., !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load = load i8* %key.addr, align 1, !dbg !265 ; [#uses=2 type=i8] [debug line = 221:2]
  %cpk.addr = getelementptr [32 x i8]* %cpk, i32 0, i32 %tmp., !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load, i8* %cpk.addr, align 1, !dbg !265 ; [debug line = 221:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !265 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.33 = xor i8 %buf.load, %key.load, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.33, i8* %buf.addr, align 1, !dbg !265 ; [debug line = 221:2]
  %sum5 = add i5 %i, 15                           ; [#uses=1 type=i5]
  %sum5.cast = zext i5 %sum5 to i32               ; [#uses=2 type=i32]
  %key.addr.1 = getelementptr [32 x i8]* %key, i32 0, i32 %sum5.cast, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.1 = load i8* %key.addr.1, align 1, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  %cpk.addr.1 = getelementptr [32 x i8]* %cpk, i32 0, i32 %sum5.cast, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.1, i8* %cpk.addr.1, align 1, !dbg !265 ; [debug line = 221:2]
  %i.10.1 = add i5 %i, -2, !dbg !261              ; [#uses=2 type=i5] [debug line = 214:13]
  %i.10.1.cast = sext i5 %i.10.1 to i8, !dbg !261 ; [#uses=1 type=i8] [debug line = 214:13]
  %tmp..1 = zext i8 %i.10.1.cast to i32, !dbg !265 ; [#uses=3 type=i32] [debug line = 221:2]
  %tmp..1.cast = sext i5 %i.10.1 to i7, !dbg !265 ; [#uses=1 type=i7] [debug line = 221:2]
  %key.addr.2 = getelementptr [32 x i8]* %key, i32 0, i32 %tmp..1, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.4 = load i8* %key.addr.2, align 1, !dbg !265 ; [#uses=2 type=i8] [debug line = 221:2]
  %cpk.addr.2 = getelementptr [32 x i8]* %cpk, i32 0, i32 %tmp..1, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.4, i8* %cpk.addr.2, align 1, !dbg !265 ; [debug line = 221:2]
  %buf.addr.27 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..1, !dbg !265 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.1 = load i8* %buf.addr.27, align 1, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.1 = xor i8 %buf.load.1, %key.load.4, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.1, i8* %buf.addr.27, align 1, !dbg !265 ; [debug line = 221:2]
  %sum5.1 = add i7 %tmp..1.cast, 16               ; [#uses=1 type=i7]
  %sum5.1.cast = zext i7 %sum5.1 to i32           ; [#uses=2 type=i32]
  %key.addr.3 = getelementptr [32 x i8]* %key, i32 0, i32 %sum5.1.cast, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.5 = load i8* %key.addr.3, align 1, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  %cpk.addr.3 = getelementptr [32 x i8]* %cpk, i32 0, i32 %sum5.1.cast, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.5, i8* %cpk.addr.3, align 1, !dbg !265 ; [debug line = 221:2]
  %i.10.2 = add i5 %i, -3, !dbg !261              ; [#uses=2 type=i5] [debug line = 214:13]
  %i.10.2.cast = sext i5 %i.10.2 to i8, !dbg !261 ; [#uses=1 type=i8] [debug line = 214:13]
  %tmp..2 = zext i8 %i.10.2.cast to i32, !dbg !265 ; [#uses=3 type=i32] [debug line = 221:2]
  %tmp..2.cast = sext i5 %i.10.2 to i7, !dbg !265 ; [#uses=1 type=i7] [debug line = 221:2]
  %key.addr.4 = getelementptr [32 x i8]* %key, i32 0, i32 %tmp..2, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.2 = load i8* %key.addr.4, align 1, !dbg !265 ; [#uses=2 type=i8] [debug line = 221:2]
  %cpk.addr.4 = getelementptr [32 x i8]* %cpk, i32 0, i32 %tmp..2, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.2, i8* %cpk.addr.4, align 1, !dbg !265 ; [debug line = 221:2]
  %buf.addr.28 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..2, !dbg !265 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.2 = load i8* %buf.addr.28, align 1, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.2 = xor i8 %buf.load.2, %key.load.2, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.2, i8* %buf.addr.28, align 1, !dbg !265 ; [debug line = 221:2]
  %sum5.2 = add i7 %tmp..2.cast, 16               ; [#uses=1 type=i7]
  %sum5.2.cast = zext i7 %sum5.2 to i32           ; [#uses=2 type=i32]
  %key.addr.5 = getelementptr [32 x i8]* %key, i32 0, i32 %sum5.2.cast, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.6 = load i8* %key.addr.5, align 1, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  %cpk.addr.5 = getelementptr [32 x i8]* %cpk, i32 0, i32 %sum5.2.cast, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.6, i8* %cpk.addr.5, align 1, !dbg !265 ; [debug line = 221:2]
  %i.10.3 = add i5 %i, -4, !dbg !261              ; [#uses=3 type=i5] [debug line = 214:13]
  %i.10.3.cast = sext i5 %i.10.3 to i8, !dbg !261 ; [#uses=1 type=i8] [debug line = 214:13]
  %tmp..3 = zext i8 %i.10.3.cast to i32, !dbg !265 ; [#uses=3 type=i32] [debug line = 221:2]
  %tmp..3.cast = sext i5 %i.10.3 to i7, !dbg !265 ; [#uses=1 type=i7] [debug line = 221:2]
  %key.addr.6 = getelementptr [32 x i8]* %key, i32 0, i32 %tmp..3, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.3 = load i8* %key.addr.6, align 1, !dbg !265 ; [#uses=2 type=i8] [debug line = 221:2]
  %cpk.addr.6 = getelementptr [32 x i8]* %cpk, i32 0, i32 %tmp..3, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.3, i8* %cpk.addr.6, align 1, !dbg !265 ; [debug line = 221:2]
  %buf.addr.29 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..3, !dbg !265 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load.3 = load i8* %buf.addr.29, align 1, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.67.3 = xor i8 %buf.load.3, %key.load.3, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.67.3, i8* %buf.addr.29, align 1, !dbg !265 ; [debug line = 221:2]
  %sum5.3 = add i7 %tmp..3.cast, 16               ; [#uses=1 type=i7]
  %sum5.3.cast = zext i7 %sum5.3 to i32           ; [#uses=2 type=i32]
  %key.addr.7 = getelementptr [32 x i8]* %key, i32 0, i32 %sum5.3.cast, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.7 = load i8* %key.addr.7, align 1, !dbg !265 ; [#uses=1 type=i8] [debug line = 221:2]
  %cpk.addr.7 = getelementptr [32 x i8]* %cpk, i32 0, i32 %sum5.3.cast, !dbg !265 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.7, i8* %cpk.addr.7, align 1, !dbg !265 ; [debug line = 221:2]
  br label %1, !dbg !266                          ; [debug line = 222:5]

; <label>:4                                       ; preds = %1
  ret void, !dbg !267                             ; [debug line = 223:1]
}

; [#uses=15]
define internal fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %key, i6 %key.offset) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %key, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str13, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1)
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !268), !dbg !270 ; [debug line = 194:31] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !271), !dbg !272 ; [debug line = 194:45] [debug variable = key]
  br label %1, !dbg !273                          ; [debug line = 198:14]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.11.8, %3 ]        ; [#uses=9 type=i5]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) ; [#uses=0 type=i32]
  %i. = add i5 %i, -1, !dbg !273                  ; [#uses=2 type=i5] [debug line = 198:14]
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str2) nounwind, !dbg !275 ; [debug line = 199:6]
  %tmp. = zext i5 %i. to i32, !dbg !277           ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast8 = trunc i6 %key.offset to i5  ; [#uses=1 type=i5]
  %sum = add i5 %key.offset.cast8, %i.            ; [#uses=1 type=i5]
  %sum.cast = zext i5 %sum to i32                 ; [#uses=1 type=i32]
  %key.addr = getelementptr [32 x i8]* %key, i32 0, i32 %sum.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load = load i8* %key.addr, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.34 = xor i8 %buf.load, %key.load, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.34, i8* %buf.addr, align 1, !dbg !277 ; [debug line = 205:2]
  %i.11.1 = add i5 %i, -2, !dbg !273              ; [#uses=2 type=i5] [debug line = 198:14]
  %tmp..1 = zext i5 %i.11.1 to i32, !dbg !277     ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast7 = trunc i6 %key.offset to i5  ; [#uses=1 type=i5]
  %sum.1 = add i5 %key.offset.cast7, %i.11.1      ; [#uses=1 type=i5]
  %sum.1.cast = zext i5 %sum.1 to i32             ; [#uses=1 type=i32]
  %key.addr.8 = getelementptr [32 x i8]* %key, i32 0, i32 %sum.1.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load.1 = load i8* %key.addr.8, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.30 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..1, !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.1 = load i8* %buf.addr.30, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.1 = xor i8 %buf.load.1, %key.load.1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.1, i8* %buf.addr.30, align 1, !dbg !277 ; [debug line = 205:2]
  %i.11.2 = add i5 %i, -3, !dbg !273              ; [#uses=2 type=i5] [debug line = 198:14]
  %tmp..2 = zext i5 %i.11.2 to i32, !dbg !277     ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast6 = trunc i6 %key.offset to i5  ; [#uses=1 type=i5]
  %sum.2 = add i5 %key.offset.cast6, %i.11.2      ; [#uses=1 type=i5]
  %sum.2.cast = zext i5 %sum.2 to i32             ; [#uses=1 type=i32]
  %key.addr.9 = getelementptr [32 x i8]* %key, i32 0, i32 %sum.2.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load.2 = load i8* %key.addr.9, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.31 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..2, !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.2 = load i8* %buf.addr.31, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.2 = xor i8 %buf.load.2, %key.load.2, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.2, i8* %buf.addr.31, align 1, !dbg !277 ; [debug line = 205:2]
  %i.11.3 = add i5 %i, -4, !dbg !273              ; [#uses=2 type=i5] [debug line = 198:14]
  %tmp..3 = zext i5 %i.11.3 to i32, !dbg !277     ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast5 = trunc i6 %key.offset to i5  ; [#uses=1 type=i5]
  %sum.3 = add i5 %key.offset.cast5, %i.11.3      ; [#uses=1 type=i5]
  %sum.3.cast = zext i5 %sum.3 to i32             ; [#uses=1 type=i32]
  %key.addr.10 = getelementptr [32 x i8]* %key, i32 0, i32 %sum.3.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load.3 = load i8* %key.addr.10, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.32 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..3, !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.3 = load i8* %buf.addr.32, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.3 = xor i8 %buf.load.3, %key.load.3, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.3, i8* %buf.addr.32, align 1, !dbg !277 ; [debug line = 205:2]
  %i.11.4 = add i5 %i, -5, !dbg !273              ; [#uses=2 type=i5] [debug line = 198:14]
  %tmp..4 = zext i5 %i.11.4 to i32, !dbg !277     ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast4 = trunc i6 %key.offset to i5  ; [#uses=1 type=i5]
  %sum.4 = add i5 %key.offset.cast4, %i.11.4      ; [#uses=1 type=i5]
  %sum.4.cast = zext i5 %sum.4 to i32             ; [#uses=1 type=i32]
  %key.addr.11 = getelementptr [32 x i8]* %key, i32 0, i32 %sum.4.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load.4 = load i8* %key.addr.11, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.33 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..4, !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.4 = load i8* %buf.addr.33, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.4 = xor i8 %buf.load.4, %key.load.4, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.4, i8* %buf.addr.33, align 1, !dbg !277 ; [debug line = 205:2]
  %i.11.5 = add i5 %i, -6, !dbg !273              ; [#uses=2 type=i5] [debug line = 198:14]
  %tmp..5 = zext i5 %i.11.5 to i32, !dbg !277     ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast3 = trunc i6 %key.offset to i5  ; [#uses=1 type=i5]
  %sum.5 = add i5 %key.offset.cast3, %i.11.5      ; [#uses=1 type=i5]
  %sum.5.cast = zext i5 %sum.5 to i32             ; [#uses=1 type=i32]
  %key.addr.12 = getelementptr [32 x i8]* %key, i32 0, i32 %sum.5.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load.5 = load i8* %key.addr.12, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.34 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..5, !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.5 = load i8* %buf.addr.34, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.5 = xor i8 %buf.load.5, %key.load.5, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.5, i8* %buf.addr.34, align 1, !dbg !277 ; [debug line = 205:2]
  %i.11.6 = add i5 %i, -7, !dbg !273              ; [#uses=3 type=i5] [debug line = 198:14]
  %tmp..6 = zext i5 %i.11.6 to i32, !dbg !277     ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast2 = trunc i6 %key.offset to i5  ; [#uses=1 type=i5]
  %sum.6 = add i5 %key.offset.cast2, %i.11.6      ; [#uses=1 type=i5]
  %sum.6.cast = zext i5 %sum.6 to i32             ; [#uses=1 type=i32]
  %key.addr.13 = getelementptr [32 x i8]* %key, i32 0, i32 %sum.6.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load.6 = load i8* %key.addr.13, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.35 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..6, !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.6 = load i8* %buf.addr.35, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.6 = xor i8 %buf.load.6, %key.load.6, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.6, i8* %buf.addr.35, align 1, !dbg !277 ; [debug line = 205:2]
  %i.11.7 = add i5 %i, -8, !dbg !273              ; [#uses=2 type=i5] [debug line = 198:14]
  %i.11.7.cast = sext i5 %i.11.7 to i8, !dbg !273 ; [#uses=1 type=i8] [debug line = 198:14]
  %tmp.7 = icmp eq i5 %i.11.6, 0, !dbg !273       ; [#uses=1 type=i1] [debug line = 198:14]
  br i1 %tmp.7, label %4, label %3, !dbg !273     ; [debug line = 198:14]

; <label>:3                                       ; preds = %1
  %tmp..7 = zext i8 %i.11.7.cast to i32, !dbg !277 ; [#uses=1 type=i32] [debug line = 205:2]
  %tmp..7.cast = sext i5 %i.11.7 to i7            ; [#uses=1 type=i7]
  %key.offset.cast1 = zext i6 %key.offset to i7   ; [#uses=1 type=i7]
  %sum.7 = add i7 %tmp..7.cast, %key.offset.cast1 ; [#uses=1 type=i7]
  %sum.7.cast = sext i7 %sum.7 to i32             ; [#uses=1 type=i32]
  %key.addr.14 = getelementptr [32 x i8]* %key, i32 0, i32 %sum.7.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load.7 = load i8* %key.addr.14, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.36 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..7, !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.7 = load i8* %buf.addr.36, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.7 = xor i8 %buf.load.7, %key.load.7, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.7, i8* %buf.addr.36, align 1, !dbg !277 ; [debug line = 205:2]
  %i.11.8 = add i5 %i, -9, !dbg !273              ; [#uses=3 type=i5] [debug line = 198:14]
  %tmp..8 = zext i5 %i.11.8 to i32, !dbg !277     ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast = trunc i6 %key.offset to i5   ; [#uses=1 type=i5]
  %sum.8 = add i5 %i.11.8, %key.offset.cast       ; [#uses=1 type=i5]
  %sum.8.cast = zext i5 %sum.8 to i32             ; [#uses=1 type=i32]
  %key.addr.15 = getelementptr [32 x i8]* %key, i32 0, i32 %sum.8.cast, !dbg !277 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load.8 = load i8* %key.addr.15, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr.37 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp..8, !dbg !277 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load.8 = load i8* %buf.addr.37, align 1, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.69.8 = xor i8 %buf.load.8, %key.load.8, !dbg !277 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.69.8, i8* %buf.addr.37, align 1, !dbg !277 ; [debug line = 205:2]
  br label %1, !dbg !278                          ; [debug line = 206:5]

; <label>:4                                       ; preds = %1
  ret void, !dbg !279                             ; [debug line = 207:1]
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

; [#uses=6]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=6]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=14]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare void @_ssdm_SpecKeepAssert(...)

!opencl.kernels = !{!0, !7, !11, !17, !7, !7, !23, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!31}

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
!31 = metadata !{i32 786449, i32 0, i32 1, metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls/encrypt/solution/.autopilot/db/aes.pragma.2.c", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !32} ; [ DW_TAG_compile_unit ]
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !34, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !60, metadata !61, metadata !62, metadata !65, metadata !68, metadata !69, metadata !70}
!34 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb2", metadata !"unroll_factor_ecb2", metadata !"", metadata !35, i32 83, metadata !36, i32 0, i32 1, i32* @unroll_factor_ecb2} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ]
!37 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_mix", metadata !"unroll_factor_mix", metadata !"", metadata !35, i32 79, metadata !36, i32 0, i32 1, i32* @unroll_factor_mix} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp1", metadata !"pipeline_ii_exp1", metadata !"", metadata !35, i32 70, metadata !36, i32 0, i32 1, i32* @pipeline_ii_exp1} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb1", metadata !"unroll_factor_ecb1", metadata !"", metadata !35, i32 82, metadata !36, i32 0, i32 1, i32* @unroll_factor_ecb1} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb3", metadata !"unroll_factor_ecb3", metadata !"", metadata !35, i32 84, metadata !36, i32 0, i32 1, i32* @unroll_factor_ecb3} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp1", metadata !"unroll_factor_exp1", metadata !"", metadata !35, i32 80, metadata !36, i32 0, i32 1, i32* @unroll_factor_exp1} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_sub", metadata !"unroll_factor_sub", metadata !"", metadata !35, i32 76, metadata !36, i32 0, i32 1, i32* @unroll_factor_sub} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp2", metadata !"unroll_factor_exp2", metadata !"", metadata !35, i32 81, metadata !36, i32 0, i32 1, i32* @unroll_factor_exp2} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_mix", metadata !"pipeline_ii_mix", metadata !"", metadata !35, i32 69, metadata !36, i32 0, i32 1, i32* @pipeline_ii_mix} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp2", metadata !"pipeline_ii_exp2", metadata !"", metadata !35, i32 71, metadata !36, i32 0, i32 1, i32* @pipeline_ii_exp2} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_cpkey", metadata !"pipeline_ii_cpkey", metadata !"", metadata !35, i32 68, metadata !36, i32 0, i32 1, i32* @pipeline_ii_cpkey} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_addkey", metadata !"pipeline_ii_addkey", metadata !"", metadata !35, i32 67, metadata !36, i32 0, i32 1, i32* @pipeline_ii_addkey} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_cpkey", metadata !"unroll_factor_cpkey", metadata !"", metadata !35, i32 78, metadata !36, i32 0, i32 1, i32* @unroll_factor_cpkey} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_addkey", metadata !"unroll_factor_addkey", metadata !"", metadata !35, i32 77, metadata !36, i32 0, i32 1, i32* @unroll_factor_addkey} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb1", metadata !"pipeline_ii_ecb1", metadata !"", metadata !35, i32 72, metadata !36, i32 0, i32 1, i32* @pipeline_ii_ecb1} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb3", metadata !"pipeline_ii_ecb3", metadata !"", metadata !35, i32 74, metadata !36, i32 0, i32 1, i32* @pipeline_ii_ecb3} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !35, i32 89, metadata !54, i32 0, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !55, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ]
!56 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !35, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ]
!57 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!60 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_sub", metadata !"pipeline_ii_sub", metadata !"", metadata !35, i32 66, metadata !36, i32 0, i32 1, i32* @pipeline_ii_sub} ; [ DW_TAG_variable ]
!61 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb2", metadata !"pipeline_ii_ecb2", metadata !"", metadata !35, i32 73, metadata !36, i32 0, i32 1, i32* @pipeline_ii_ecb2} ; [ DW_TAG_variable ]
!62 = metadata !{i32 786484, i32 0, null, metadata !"INPUT_SIZE", metadata !"INPUT_SIZE", metadata !"", metadata !63, i32 45, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", null} ; [ DW_TAG_file_type ]
!64 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!65 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !66, i32 320, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", null} ; [ DW_TAG_file_type ]
!67 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !66, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!68 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !66, i32 321, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!69 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !66, i32 322, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!70 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !71, i32 26, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!71 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", null} ; [ DW_TAG_file_type ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 7, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"ctx_key", metadata !76, metadata !"unsigned char", i32 0, i32 7}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 31, i32 1}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 7, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"ctx_enckey", metadata !76, metadata !"unsigned char", i32 0, i32 7}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 7, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"ctx_deckey", metadata !76, metadata !"unsigned char", i32 0, i32 7}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 7, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"k", metadata !76, metadata !"unsigned char", i32 0, i32 7}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 7, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"buf", metadata !94, metadata !"unsigned char", i32 0, i32 7}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 15, i32 1}
!96 = metadata !{i32 786689, metadata !97, metadata !"ctx_key", null, i32 301, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 786478, i32 0, metadata !35, metadata !"encrypt", metadata !"encrypt", metadata !"", metadata !35, i32 301, metadata !98, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 303} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{null, metadata !100, metadata !100, metadata !100, metadata !100, metadata !100}
!100 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ]
!101 = metadata !{metadata !102}
!102 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!103 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !56, metadata !104, i32 0, i32 0} ; [ DW_TAG_array_type ]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 786465, i64 0, i64 31}      ; [ DW_TAG_subrange_type ]
!106 = metadata !{i32 301, i32 22, metadata !97, null}
!107 = metadata !{i32 786689, metadata !97, metadata !"ctx_enckey", null, i32 301, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 301, i32 43, metadata !97, null}
!109 = metadata !{i32 786689, metadata !97, metadata !"ctx_deckey", null, i32 302, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 302, i32 22, metadata !97, null}
!111 = metadata !{i32 786689, metadata !97, metadata !"k", null, i32 302, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 302, i32 46, metadata !97, null}
!113 = metadata !{i32 786689, metadata !97, metadata !"buf", null, i32 302, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !56, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ]
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ]
!117 = metadata !{i32 302, i32 61, metadata !97, null}
!118 = metadata !{i32 304, i32 1, metadata !119, null}
!119 = metadata !{i32 786443, metadata !97, i32 303, i32 1, metadata !35, i32 16} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 314, i32 2, metadata !121, null}
!121 = metadata !{i32 786443, metadata !122, i32 308, i32 36, metadata !35, i32 18} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 786443, metadata !119, i32 308, i32 12, metadata !35, i32 17} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 316, i32 17, metadata !124, null}
!124 = metadata !{i32 786443, metadata !119, i32 316, i32 12, metadata !35, i32 19} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 786688, metadata !119, metadata !"i", metadata !35, i32 306, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!126 = metadata !{i32 316, i32 29, metadata !127, null}
!127 = metadata !{i32 786443, metadata !124, i32 316, i32 28, metadata !35, i32 20} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 318, i32 1, metadata !127, null}
!129 = metadata !{i32 322, i32 2, metadata !127, null}
!130 = metadata !{i32 786688, metadata !119, metadata !"rcon", metadata !35, i32 305, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 323, i32 5, metadata !127, null}
!132 = metadata !{i32 326, i32 5, metadata !119, null}
!133 = metadata !{i32 327, i32 16, metadata !134, null}
!134 = metadata !{i32 786443, metadata !119, i32 327, i32 12, metadata !35, i32 21} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 328, i32 6, metadata !136, null}
!136 = metadata !{i32 786443, metadata !134, i32 328, i32 5, metadata !35, i32 22} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 334, i32 2, metadata !136, null}
!138 = metadata !{i32 335, i32 9, metadata !136, null}
!139 = metadata !{i32 336, i32 9, metadata !136, null}
!140 = metadata !{i32 337, i32 9, metadata !136, null}
!141 = metadata !{i32 337, i32 21, metadata !136, null}
!142 = metadata !{i32 338, i32 14, metadata !136, null}
!143 = metadata !{i32 338, i32 48, metadata !136, null}
!144 = metadata !{i32 327, i32 41, metadata !134, null}
!145 = metadata !{i32 340, i32 5, metadata !119, null}
!146 = metadata !{i32 341, i32 5, metadata !119, null}
!147 = metadata !{i32 342, i32 5, metadata !119, null}
!148 = metadata !{i32 343, i32 5, metadata !119, null}
!149 = metadata !{i32 344, i32 1, metadata !119, null}
!150 = metadata !{i32 786689, metadata !151, metadata !"buf", null, i32 178, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !35, i32 178, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 179} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{null, metadata !100}
!154 = metadata !{i32 178, i32 28, metadata !151, null}
!155 = metadata !{i32 182, i32 11, metadata !156, null}
!156 = metadata !{i32 786443, metadata !151, i32 179, i32 1, metadata !35, i32 1} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 183, i32 6, metadata !158, null}
!158 = metadata !{i32 786443, metadata !156, i32 183, i32 5, metadata !35, i32 2} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 189, i32 2, metadata !158, null}
!160 = metadata !{i32 190, i32 5, metadata !158, null}
!161 = metadata !{i32 191, i32 1, metadata !156, null}
!162 = metadata !{i32 786689, metadata !163, metadata !"buf", null, i32 227, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !35, i32 227, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 228} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 227, i32 29, metadata !163, null}
!165 = metadata !{i32 231, i32 5, metadata !166, null}
!166 = metadata !{i32 786443, metadata !163, i32 228, i32 1, metadata !35, i32 7} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 786688, metadata !166, metadata !"i", metadata !35, i32 229, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 231, i32 17, metadata !166, null}
!169 = metadata !{i32 231, i32 34, metadata !166, null}
!170 = metadata !{i32 231, i32 51, metadata !166, null}
!171 = metadata !{i32 231, i32 69, metadata !166, null}
!172 = metadata !{i32 232, i32 5, metadata !166, null}
!173 = metadata !{i32 232, i32 18, metadata !166, null}
!174 = metadata !{i32 232, i32 36, metadata !166, null}
!175 = metadata !{i32 233, i32 5, metadata !166, null}
!176 = metadata !{i32 786688, metadata !166, metadata !"j", metadata !35, i32 229, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!177 = metadata !{i32 233, i32 17, metadata !166, null}
!178 = metadata !{i32 233, i32 35, metadata !166, null}
!179 = metadata !{i32 233, i32 54, metadata !166, null}
!180 = metadata !{i32 233, i32 72, metadata !166, null}
!181 = metadata !{i32 234, i32 5, metadata !166, null}
!182 = metadata !{i32 234, i32 18, metadata !166, null}
!183 = metadata !{i32 234, i32 36, metadata !166, null}
!184 = metadata !{i32 236, i32 1, metadata !166, null}
!185 = metadata !{i32 786689, metadata !186, metadata !"buf", null, i32 239, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !35, i32 239, metadata !152, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 240} ; [ DW_TAG_subprogram ]
!187 = metadata !{i32 239, i32 30, metadata !186, null}
!188 = metadata !{i32 243, i32 16, metadata !189, null}
!189 = metadata !{i32 786443, metadata !190, i32 243, i32 11, metadata !35, i32 9} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 786443, metadata !186, i32 240, i32 1, metadata !35, i32 8} ; [ DW_TAG_lexical_block ]
!191 = metadata !{i32 244, i32 6, metadata !192, null}
!192 = metadata !{i32 786443, metadata !189, i32 244, i32 5, metadata !35, i32 10} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 246, i32 1, metadata !192, null}
!194 = metadata !{i32 250, i32 2, metadata !192, null}
!195 = metadata !{i32 786688, metadata !190, metadata !"a", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 250, i32 14, metadata !192, null}
!197 = metadata !{i32 786688, metadata !190, metadata !"b", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 250, i32 30, metadata !192, null}
!199 = metadata !{i32 786688, metadata !190, metadata !"c", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 250, i32 46, metadata !192, null}
!201 = metadata !{i32 786688, metadata !190, metadata !"d", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 251, i32 9, metadata !192, null}
!203 = metadata !{i32 786688, metadata !190, metadata !"e", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 786689, metadata !205, metadata !"x", metadata !35, i32 16777388, metadata !56, i32 0, metadata !208} ; [ DW_TAG_arg_variable ]
!205 = metadata !{i32 786478, i32 0, metadata !35, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !35, i32 172, metadata !206, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 173} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !56, metadata !56}
!208 = metadata !{i32 252, i32 23, metadata !192, null}
!209 = metadata !{i32 172, i32 26, metadata !205, metadata !208}
!210 = metadata !{i32 174, i32 5, metadata !211, metadata !208}
!211 = metadata !{i32 786443, metadata !205, i32 173, i32 1, metadata !35, i32 0} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 252, i32 54, metadata !192, null}
!213 = metadata !{i32 786689, metadata !205, metadata !"x", metadata !35, i32 16777388, metadata !56, i32 0, metadata !212} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 172, i32 26, metadata !205, metadata !212}
!215 = metadata !{i32 174, i32 5, metadata !211, metadata !212}
!216 = metadata !{i32 253, i32 25, metadata !192, null}
!217 = metadata !{i32 786689, metadata !205, metadata !"x", metadata !35, i32 16777388, metadata !56, i32 0, metadata !216} ; [ DW_TAG_arg_variable ]
!218 = metadata !{i32 172, i32 26, metadata !205, metadata !216}
!219 = metadata !{i32 174, i32 5, metadata !211, metadata !216}
!220 = metadata !{i32 253, i32 56, metadata !192, null}
!221 = metadata !{i32 786689, metadata !205, metadata !"x", metadata !35, i32 16777388, metadata !56, i32 0, metadata !220} ; [ DW_TAG_arg_variable ]
!222 = metadata !{i32 172, i32 26, metadata !205, metadata !220}
!223 = metadata !{i32 174, i32 5, metadata !211, metadata !220}
!224 = metadata !{i32 254, i32 5, metadata !192, null}
!225 = metadata !{i32 243, i32 31, metadata !189, null}
!226 = metadata !{i32 786688, metadata !190, metadata !"i", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!227 = metadata !{i32 255, i32 1, metadata !190, null}
!228 = metadata !{i32 786689, metadata !229, metadata !"k", null, i32 258, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!229 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !35, i32 258, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 259} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{null, metadata !100, metadata !100}
!232 = metadata !{i32 258, i32 32, metadata !229, null}
!233 = metadata !{i32 790532, metadata !229, metadata !"rc", null, i32 258, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!234 = metadata !{i32 258, i32 44, metadata !229, null}
!235 = metadata !{i32 262, i32 5, metadata !236, null}
!236 = metadata !{i32 786443, metadata !229, i32 259, i32 1, metadata !35, i32 11} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 263, i32 5, metadata !236, null}
!238 = metadata !{i32 264, i32 5, metadata !236, null}
!239 = metadata !{i32 265, i32 5, metadata !236, null}
!240 = metadata !{i32 266, i32 5, metadata !236, null}
!241 = metadata !{i32 275, i32 2, metadata !242, null}
!242 = metadata !{i32 786443, metadata !243, i32 269, i32 5, metadata !35, i32 13} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 786443, metadata !236, i32 268, i32 12, metadata !35, i32 12} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 278, i32 5, metadata !236, null}
!245 = metadata !{i32 279, i32 5, metadata !236, null}
!246 = metadata !{i32 280, i32 5, metadata !236, null}
!247 = metadata !{i32 281, i32 5, metadata !236, null}
!248 = metadata !{i32 290, i32 2, metadata !249, null}
!249 = metadata !{i32 786443, metadata !250, i32 284, i32 5, metadata !35, i32 15} ; [ DW_TAG_lexical_block ]
!250 = metadata !{i32 786443, metadata !236, i32 283, i32 12, metadata !35, i32 14} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 294, i32 1, metadata !236, null}
!252 = metadata !{i32 786689, metadata !253, metadata !"buf", null, i32 210, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!253 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !35, i32 210, metadata !254, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 211} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!255 = metadata !{null, metadata !100, metadata !100, metadata !100}
!256 = metadata !{i32 210, i32 35, metadata !253, null}
!257 = metadata !{i32 786689, metadata !253, metadata !"key", null, i32 210, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!258 = metadata !{i32 210, i32 49, metadata !253, null}
!259 = metadata !{i32 786689, metadata !253, metadata !"cpk", null, i32 210, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!260 = metadata !{i32 210, i32 63, metadata !253, null}
!261 = metadata !{i32 214, i32 13, metadata !262, null}
!262 = metadata !{i32 786443, metadata !253, i32 211, i32 1, metadata !35, i32 5} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 215, i32 6, metadata !264, null}
!264 = metadata !{i32 786443, metadata !262, i32 215, i32 5, metadata !35, i32 6} ; [ DW_TAG_lexical_block ]
!265 = metadata !{i32 221, i32 2, metadata !264, null}
!266 = metadata !{i32 222, i32 5, metadata !264, null}
!267 = metadata !{i32 223, i32 1, metadata !262, null}
!268 = metadata !{i32 786689, metadata !269, metadata !"buf", null, i32 194, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!269 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !35, i32 194, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 195} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 194, i32 31, metadata !269, null}
!271 = metadata !{i32 786689, metadata !269, metadata !"key", null, i32 194, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!272 = metadata !{i32 194, i32 45, metadata !269, null}
!273 = metadata !{i32 198, i32 14, metadata !274, null}
!274 = metadata !{i32 786443, metadata !269, i32 195, i32 1, metadata !35, i32 3} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 199, i32 6, metadata !276, null}
!276 = metadata !{i32 786443, metadata !274, i32 199, i32 5, metadata !35, i32 4} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 205, i32 2, metadata !276, null}
!278 = metadata !{i32 206, i32 5, metadata !276, null}
!279 = metadata !{i32 207, i32 1, metadata !274, null}
