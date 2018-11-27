; ModuleID = '/scratch/local/tmp.soPlafqy6w/_sds/vhls/encrypt/solution/.autopilot/db/a.g.1.bc'
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
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1 ; [#uses=9 type=[256 x i8]*]
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
@.str9 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str8 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str7 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str6 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [4 x i8] c"mix\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"addkey\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str17 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str16 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str15 = private unnamed_addr constant [5 x i8] c"ecb1\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str13 = private unnamed_addr constant [8 x i8] c"ctx_key\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"ctx_enckey\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str10 = private unnamed_addr constant [11 x i8] c"ctx_deckey\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"sub\00", align 1 ; [#uses=1 type=[4 x i8]*]

; [#uses=4]
define internal fastcc zeroext i8 @rj_xtime(i8 zeroext %x) nounwind {
  call void @llvm.dbg.value(metadata !{i8 %x}, i64 0, metadata !99), !dbg !100 ; [debug line = 172:26] [debug variable = x]
  %tmp = icmp slt i8 %x, 0, !dbg !101             ; [#uses=1 type=i1] [debug line = 174:5]
  br i1 %tmp, label %1, label %2, !dbg !101       ; [debug line = 174:5]

; <label>:1                                       ; preds = %0
  %tmp.1 = shl i8 %x, 1, !dbg !101                ; [#uses=1 type=i8] [debug line = 174:5]
  %tmp.2 = xor i8 %tmp.1, 27, !dbg !101           ; [#uses=1 type=i8] [debug line = 174:5]
  br label %3, !dbg !101                          ; [debug line = 174:5]

; <label>:2                                       ; preds = %0
  %tmp.3 = shl i8 %x, 1, !dbg !101                ; [#uses=1 type=i8] [debug line = 174:5]
  br label %3, !dbg !101                          ; [debug line = 174:5]

; <label>:3                                       ; preds = %2, %1
  %tmp.4 = phi i8 [ %tmp.2, %1 ], [ %tmp.3, %2 ], !dbg !101 ; [#uses=1 type=i8] [debug line = 174:5]
  ret i8 %tmp.4, !dbg !101                        ; [debug line = 174:5]
}

; [#uses=34]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @encrypt(i8* %ctx_key, i8* %ctx_enckey, i8* %ctx_deckey, i8* %k, i8* %buf) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @encrypt.str) nounwind
  %rcon = alloca i8, align 1                      ; [#uses=5 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %ctx_key}, i64 0, metadata !103), !dbg !104 ; [debug line = 301:22] [debug variable = ctx_key]
  call void @llvm.dbg.value(metadata !{i8* %ctx_enckey}, i64 0, metadata !105), !dbg !106 ; [debug line = 301:43] [debug variable = ctx_enckey]
  call void @llvm.dbg.value(metadata !{i8* %ctx_deckey}, i64 0, metadata !107), !dbg !108 ; [debug line = 302:22] [debug variable = ctx_deckey]
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !109), !dbg !110 ; [debug line = 302:46] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !111), !dbg !112 ; [debug line = 302:61] [debug variable = buf]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %ctx_enckey, i32 32), !dbg !113 ; [debug line = 303:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %buf, i32 16), !dbg !115 ; [debug line = 303:40]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %ctx_key, i32 32), !dbg !116 ; [debug line = 303:71]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %k, i32 32), !dbg !117 ; [debug line = 303:106]
  call void (...)* @_ssdm_SpecArrayDimSize(i8* %ctx_deckey, i32 32), !dbg !118 ; [debug line = 303:135]
  call void (...)* @_ssdm_op_SpecLatency(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !119 ; [debug line = 304:1]
  call void (...)* @_ssdm_op_SpecResource(i8* %k, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !119 ; [debug line = 304:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %k, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !119 ; [debug line = 304:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %ctx_deckey, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !119 ; [debug line = 304:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %ctx_enckey, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !119 ; [debug line = 304:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %ctx_key, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !119 ; [debug line = 304:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %buf, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !119 ; [debug line = 304:1]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !120), !dbg !121 ; [debug line = 305:13] [debug variable = rcon]
  store i8 1, i8* %rcon, align 1, !dbg !122       ; [debug line = 305:21]
  br label %1, !dbg !123                          ; [debug line = 308:17]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.3, %2 ]             ; [#uses=3 type=i8]
  %tmp = icmp eq i8 %i, 32, !dbg !123             ; [#uses=1 type=i1] [debug line = 308:17]
  br i1 %tmp, label %.preheader.preheader, label %2, !dbg !123 ; [debug line = 308:17]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !125                 ; [debug line = 316:17]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0)), !dbg !127 ; [debug line = 308:37]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0)) nounwind, !dbg !127 ; [#uses=1 type=i32] [debug line = 308:37]
  call void (...)* @_ssdm_Unroll(i32 1, i32 0, i32 32, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !129 ; [debug line = 312:1]
  %tmp.5 = zext i8 %i to i32, !dbg !130           ; [#uses=3 type=i32] [debug line = 314:2]
  %k.addr = getelementptr inbounds i8* %k, i32 %tmp.5, !dbg !130 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load = load i8* %k.addr, align 1, !dbg !130  ; [#uses=3 type=i8] [debug line = 314:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %ctx_deckey.addr = getelementptr inbounds i8* %ctx_deckey, i32 %tmp.5, !dbg !130 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load, i8* %ctx_deckey.addr, align 1, !dbg !130 ; [debug line = 314:2]
  %ctx_enckey.addr = getelementptr inbounds i8* %ctx_enckey, i32 %tmp.5, !dbg !130 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %k.load, i8* %ctx_enckey.addr, align 1, !dbg !130 ; [debug line = 314:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !131 ; [#uses=0 type=i32] [debug line = 315:5]
  %i.3 = add i8 %i, 1, !dbg !132                  ; [#uses=1 type=i8] [debug line = 308:32]
  call void @llvm.dbg.value(metadata !{i8 %i.3}, i64 0, metadata !133), !dbg !132 ; [debug line = 308:32] [debug variable = i]
  br label %1, !dbg !132                          ; [debug line = 308:32]

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i.1 = phi i8 [ %phitmp, %3 ], [ 7, %.preheader.preheader ], !dbg !125 ; [#uses=2 type=i8] [debug line = 316:17]
  call void @llvm.dbg.value(metadata !{i8 %i.1}, i64 0, metadata !133), !dbg !125 ; [debug line = 316:17] [debug variable = i]
  %tmp.7 = icmp eq i8 %i.1, 0, !dbg !125          ; [#uses=1 type=i1] [debug line = 316:17]
  br i1 %tmp.7, label %4, label %3, !dbg !125     ; [debug line = 316:17]

; <label>:3                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0)), !dbg !134 ; [debug line = 316:29]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !134 ; [#uses=1 type=i32] [debug line = 316:29]
  call void (...)* @_ssdm_op_SpecPipeline(i32 6, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !136 ; [debug line = 318:1]
  call fastcc void @aes_expandEncKey(i8* %ctx_deckey, i8* %rcon), !dbg !137 ; [debug line = 322:2]
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), i32 %rbegin1) nounwind, !dbg !138 ; [#uses=0 type=i32] [debug line = 323:5]
  %phitmp = add i8 %i.1, -1, !dbg !138            ; [#uses=1 type=i8] [debug line = 323:5]
  br label %.preheader, !dbg !138                 ; [debug line = 323:5]

; <label>:4                                       ; preds = %.preheader
  call fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* %ctx_enckey, i8* %ctx_key), !dbg !139 ; [debug line = 326:5]
  store i8 1, i8* %rcon, align 1, !dbg !140       ; [debug line = 327:16]
  %ctx_key.addr = getelementptr inbounds i8* %ctx_key, i32 16, !dbg !142 ; [#uses=1 type=i8*] [debug line = 337:21]
  br label %5, !dbg !140                          ; [debug line = 327:16]

; <label>:5                                       ; preds = %9, %4
  %i.2 = phi i8 [ 1, %4 ], [ %i.4, %9 ]           ; [#uses=3 type=i8]
  %exitcond = icmp eq i8 %i.2, 14, !dbg !140      ; [#uses=1 type=i1] [debug line = 327:16]
  br i1 %exitcond, label %10, label %6, !dbg !140 ; [debug line = 327:16]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0)), !dbg !144 ; [debug line = 328:6]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0)) nounwind, !dbg !144 ; [#uses=1 type=i32] [debug line = 328:6]
  call void (...)* @_ssdm_Unroll(i32 1, i32 0, i32 7, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !145 ; [debug line = 332:1]
  call fastcc void @aes_subBytes(i8* %buf), !dbg !146 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows(i8* %buf), !dbg !147 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns(i8* %buf), !dbg !148 ; [debug line = 336:9]
  %tmp.8 = and i8 %i.2, 1, !dbg !149              ; [#uses=1 type=i8] [debug line = 337:9]
  %tmp.9 = icmp eq i8 %tmp.8, 0, !dbg !149        ; [#uses=1 type=i1] [debug line = 337:9]
  br i1 %tmp.9, label %8, label %7, !dbg !149     ; [debug line = 337:9]

; <label>:7                                       ; preds = %6
  call fastcc void @aes_addRoundKey(i8* %buf, i8* %ctx_key.addr), !dbg !142 ; [debug line = 337:21]
  br label %9, !dbg !142                          ; [debug line = 337:21]

; <label>:8                                       ; preds = %6
  call fastcc void @aes_expandEncKey(i8* %ctx_key, i8* %rcon), !dbg !150 ; [debug line = 338:14]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* %ctx_key), !dbg !151 ; [debug line = 338:48]
  br label %9

; <label>:9                                       ; preds = %8, %7
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i32 %rbegin3) nounwind, !dbg !152 ; [#uses=0 type=i32] [debug line = 339:5]
  %i.4 = add i8 %i.2, 1, !dbg !153                ; [#uses=1 type=i8] [debug line = 327:41]
  call void @llvm.dbg.value(metadata !{i8 %i.4}, i64 0, metadata !133), !dbg !153 ; [debug line = 327:41] [debug variable = i]
  br label %5, !dbg !153                          ; [debug line = 327:41]

; <label>:10                                      ; preds = %5
  call fastcc void @aes_subBytes(i8* %buf), !dbg !154 ; [debug line = 340:5]
  call fastcc void @aes_shiftRows(i8* %buf), !dbg !155 ; [debug line = 341:5]
  call fastcc void @aes_expandEncKey(i8* %ctx_key, i8* %rcon), !dbg !156 ; [debug line = 342:5]
  call fastcc void @aes_addRoundKey(i8* %buf, i8* %ctx_key), !dbg !157 ; [debug line = 343:5]
  ret void, !dbg !158                             ; [debug line = 344:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes(i8* %buf) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !159), !dbg !160 ; [debug line = 178:28] [debug variable = buf]
  br label %1, !dbg !161                          ; [debug line = 182:11]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.5, %2 ]            ; [#uses=2 type=i8]
  %i.5 = add i8 %i, -1, !dbg !161                 ; [#uses=2 type=i8] [debug line = 182:11]
  call void @llvm.dbg.value(metadata !{i8 %i.5}, i64 0, metadata !163), !dbg !161 ; [debug line = 182:11] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !161              ; [#uses=1 type=i1] [debug line = 182:11]
  br i1 %tmp, label %3, label %2, !dbg !161       ; [debug line = 182:11]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)), !dbg !164 ; [debug line = 183:6]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !164 ; [#uses=1 type=i32] [debug line = 183:6]
  call void (...)* @_ssdm_Unroll(i32 1, i32 0, i32 14, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !166 ; [debug line = 187:1]
  %tmp.11 = zext i8 %i.5 to i32, !dbg !167        ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr = getelementptr inbounds i8* %buf, i32 %tmp.11, !dbg !167 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !167 ; [#uses=2 type=i8] [debug line = 189:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.12 = zext i8 %buf.load to i32, !dbg !167   ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.12, !dbg !167 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !167 ; [#uses=2 type=i8] [debug line = 189:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  store i8 %sbox.load, i8* %buf.addr, align 1, !dbg !167 ; [debug line = 189:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !168 ; [#uses=0 type=i32] [debug line = 190:5]
  br label %1, !dbg !168                          ; [debug line = 190:5]

; <label>:3                                       ; preds = %1
  ret void, !dbg !169                             ; [debug line = 191:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows(i8* %buf) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !170), !dbg !171 ; [debug line = 227:29] [debug variable = buf]
  %buf.addr = getelementptr inbounds i8* %buf, i32 1, !dbg !172 ; [#uses=2 type=i8*] [debug line = 231:5]
  %i = load i8* %buf.addr, align 1, !dbg !172     ; [#uses=2 type=i8] [debug line = 231:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !174), !dbg !172 ; [debug line = 231:5] [debug variable = i]
  %buf.addr.1 = getelementptr inbounds i8* %buf, i32 5, !dbg !175 ; [#uses=2 type=i8*] [debug line = 231:17]
  %buf.load = load i8* %buf.addr.1, align 1, !dbg !175 ; [#uses=2 type=i8] [debug line = 231:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !175 ; [debug line = 231:17]
  %buf.addr.2 = getelementptr inbounds i8* %buf, i32 9, !dbg !176 ; [#uses=2 type=i8*] [debug line = 231:34]
  %buf.load.1 = load i8* %buf.addr.2, align 1, !dbg !176 ; [#uses=2 type=i8] [debug line = 231:34]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.1) nounwind
  store i8 %buf.load.1, i8* %buf.addr.1, align 1, !dbg !176 ; [debug line = 231:34]
  %buf.addr.3 = getelementptr inbounds i8* %buf, i32 13, !dbg !177 ; [#uses=2 type=i8*] [debug line = 231:51]
  %buf.load.2 = load i8* %buf.addr.3, align 1, !dbg !177 ; [#uses=2 type=i8] [debug line = 231:51]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.2) nounwind
  store i8 %buf.load.2, i8* %buf.addr.2, align 1, !dbg !177 ; [debug line = 231:51]
  store i8 %i, i8* %buf.addr.3, align 1, !dbg !178 ; [debug line = 231:69]
  %buf.addr.4 = getelementptr inbounds i8* %buf, i32 10, !dbg !179 ; [#uses=2 type=i8*] [debug line = 232:5]
  %i.6 = load i8* %buf.addr.4, align 1, !dbg !179 ; [#uses=2 type=i8] [debug line = 232:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %i.6) nounwind
  call void @llvm.dbg.value(metadata !{i8 %i.6}, i64 0, metadata !174), !dbg !179 ; [debug line = 232:5] [debug variable = i]
  %buf.addr.5 = getelementptr inbounds i8* %buf, i32 2, !dbg !180 ; [#uses=2 type=i8*] [debug line = 232:18]
  %buf.load.4 = load i8* %buf.addr.5, align 1, !dbg !180 ; [#uses=2 type=i8] [debug line = 232:18]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.4) nounwind
  store i8 %buf.load.4, i8* %buf.addr.4, align 1, !dbg !180 ; [debug line = 232:18]
  store i8 %i.6, i8* %buf.addr.5, align 1, !dbg !181 ; [debug line = 232:36]
  %buf.addr.6 = getelementptr inbounds i8* %buf, i32 3, !dbg !182 ; [#uses=2 type=i8*] [debug line = 233:5]
  %j = load i8* %buf.addr.6, align 1, !dbg !182   ; [#uses=2 type=i8] [debug line = 233:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !183), !dbg !182 ; [debug line = 233:5] [debug variable = j]
  %buf.addr.7 = getelementptr inbounds i8* %buf, i32 15, !dbg !184 ; [#uses=2 type=i8*] [debug line = 233:17]
  %buf.load.6 = load i8* %buf.addr.7, align 1, !dbg !184 ; [#uses=2 type=i8] [debug line = 233:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.6) nounwind
  store i8 %buf.load.6, i8* %buf.addr.6, align 1, !dbg !184 ; [debug line = 233:17]
  %buf.addr.8 = getelementptr inbounds i8* %buf, i32 11, !dbg !185 ; [#uses=2 type=i8*] [debug line = 233:35]
  %buf.load.7 = load i8* %buf.addr.8, align 1, !dbg !185 ; [#uses=2 type=i8] [debug line = 233:35]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.7) nounwind
  store i8 %buf.load.7, i8* %buf.addr.7, align 1, !dbg !185 ; [debug line = 233:35]
  %buf.addr.9 = getelementptr inbounds i8* %buf, i32 7, !dbg !186 ; [#uses=2 type=i8*] [debug line = 233:54]
  %buf.load.8 = load i8* %buf.addr.9, align 1, !dbg !186 ; [#uses=2 type=i8] [debug line = 233:54]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.8) nounwind
  store i8 %buf.load.8, i8* %buf.addr.8, align 1, !dbg !186 ; [debug line = 233:54]
  store i8 %j, i8* %buf.addr.9, align 1, !dbg !187 ; [debug line = 233:72]
  %buf.addr.10 = getelementptr inbounds i8* %buf, i32 14, !dbg !188 ; [#uses=2 type=i8*] [debug line = 234:5]
  %j.1 = load i8* %buf.addr.10, align 1, !dbg !188 ; [#uses=2 type=i8] [debug line = 234:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %j.1) nounwind
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !183), !dbg !188 ; [debug line = 234:5] [debug variable = j]
  %buf.addr.11 = getelementptr inbounds i8* %buf, i32 6, !dbg !189 ; [#uses=2 type=i8*] [debug line = 234:18]
  %buf.load.10 = load i8* %buf.addr.11, align 1, !dbg !189 ; [#uses=2 type=i8] [debug line = 234:18]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.10) nounwind
  store i8 %buf.load.10, i8* %buf.addr.10, align 1, !dbg !189 ; [debug line = 234:18]
  store i8 %j.1, i8* %buf.addr.11, align 1, !dbg !190 ; [debug line = 234:36]
  ret void, !dbg !191                             ; [debug line = 236:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns(i8* %buf) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !192), !dbg !193 ; [debug line = 239:30] [debug variable = buf]
  br label %1, !dbg !194                          ; [debug line = 243:16]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 0, %0 ], [ %i.7, %2 ]             ; [#uses=3 type=i8]
  %tmp = icmp ult i8 %i, 16, !dbg !194            ; [#uses=1 type=i1] [debug line = 243:16]
  br i1 %tmp, label %2, label %3, !dbg !194       ; [debug line = 243:16]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0)), !dbg !197 ; [debug line = 244:6]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !197 ; [#uses=1 type=i32] [debug line = 244:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !199 ; [debug line = 246:1]
  %tmp.13 = zext i8 %i to i32, !dbg !200          ; [#uses=4 type=i32] [debug line = 250:2]
  %buf.addr = getelementptr inbounds i8* %buf, i32 %tmp.13, !dbg !200 ; [#uses=3 type=i8*] [debug line = 250:2]
  %a = load i8* %buf.addr, align 1, !dbg !200     ; [#uses=3 type=i8] [debug line = 250:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %a) nounwind
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !201), !dbg !200 ; [debug line = 250:2] [debug variable = a]
  %tmp.14 = or i32 %tmp.13, 1, !dbg !202          ; [#uses=1 type=i32] [debug line = 250:14]
  %buf.addr.12 = getelementptr inbounds i8* %buf, i32 %tmp.14, !dbg !202 ; [#uses=3 type=i8*] [debug line = 250:14]
  %b = load i8* %buf.addr.12, align 1, !dbg !202  ; [#uses=3 type=i8] [debug line = 250:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %b) nounwind
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !203), !dbg !202 ; [debug line = 250:14] [debug variable = b]
  %tmp.15 = or i32 %tmp.13, 2, !dbg !204          ; [#uses=1 type=i32] [debug line = 250:30]
  %buf.addr.13 = getelementptr inbounds i8* %buf, i32 %tmp.15, !dbg !204 ; [#uses=3 type=i8*] [debug line = 250:30]
  %c = load i8* %buf.addr.13, align 1, !dbg !204  ; [#uses=4 type=i8] [debug line = 250:30]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %c) nounwind
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !205), !dbg !204 ; [debug line = 250:30] [debug variable = c]
  %tmp.16 = or i32 %tmp.13, 3, !dbg !206          ; [#uses=1 type=i32] [debug line = 250:46]
  %buf.addr.14 = getelementptr inbounds i8* %buf, i32 %tmp.16, !dbg !206 ; [#uses=3 type=i8*] [debug line = 250:46]
  %d = load i8* %buf.addr.14, align 1, !dbg !206  ; [#uses=4 type=i8] [debug line = 250:46]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %d) nounwind
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !207), !dbg !206 ; [debug line = 250:46] [debug variable = d]
  %tmp.17 = xor i8 %b, %a, !dbg !208              ; [#uses=2 type=i8] [debug line = 251:9]
  %tmp.18 = xor i8 %c, %tmp.17, !dbg !208         ; [#uses=1 type=i8] [debug line = 251:9]
  %e = xor i8 %tmp.18, %d, !dbg !208              ; [#uses=4 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !209), !dbg !208 ; [debug line = 251:9] [debug variable = e]
  %tmp.20 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.17), !dbg !210 ; [#uses=1 type=i8] [debug line = 252:23]
  %buf.load = load i8* %buf.addr, align 1, !dbg !210 ; [#uses=2 type=i8] [debug line = 252:23]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.21 = xor i8 %tmp.20, %e, !dbg !210         ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp.22 = xor i8 %tmp.21, %buf.load, !dbg !210  ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %tmp.22, i8* %buf.addr, align 1, !dbg !210 ; [debug line = 252:23]
  %tmp.23 = xor i8 %c, %b, !dbg !211              ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.24 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.23), !dbg !211 ; [#uses=1 type=i8] [debug line = 252:54]
  %buf.load.11 = load i8* %buf.addr.12, align 1, !dbg !211 ; [#uses=2 type=i8] [debug line = 252:54]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.11) nounwind
  %tmp.25 = xor i8 %tmp.24, %e, !dbg !211         ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.26 = xor i8 %tmp.25, %buf.load.11, !dbg !211 ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %tmp.26, i8* %buf.addr.12, align 1, !dbg !211 ; [debug line = 252:54]
  %tmp.27 = xor i8 %d, %c, !dbg !212              ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.28 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.27), !dbg !212 ; [#uses=1 type=i8] [debug line = 253:25]
  %buf.load.12 = load i8* %buf.addr.13, align 1, !dbg !212 ; [#uses=2 type=i8] [debug line = 253:25]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.12) nounwind
  %tmp.29 = xor i8 %tmp.28, %e, !dbg !212         ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.30 = xor i8 %tmp.29, %buf.load.12, !dbg !212 ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %tmp.30, i8* %buf.addr.13, align 1, !dbg !212 ; [debug line = 253:25]
  %tmp.31 = xor i8 %d, %a, !dbg !213              ; [#uses=1 type=i8] [debug line = 253:56]
  %tmp.32 = call fastcc zeroext i8 @rj_xtime(i8 zeroext %tmp.31), !dbg !213 ; [#uses=1 type=i8] [debug line = 253:56]
  %buf.load.13 = load i8* %buf.addr.14, align 1, !dbg !213 ; [#uses=2 type=i8] [debug line = 253:56]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load.13) nounwind
  %tmp.33 = xor i8 %tmp.32, %e, !dbg !213         ; [#uses=1 type=i8] [debug line = 253:56]
  %tmp.34 = xor i8 %tmp.33, %buf.load.13, !dbg !213 ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %tmp.34, i8* %buf.addr.14, align 1, !dbg !213 ; [debug line = 253:56]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !214 ; [#uses=0 type=i32] [debug line = 254:5]
  %i.7 = add i8 %i, 4, !dbg !215                  ; [#uses=1 type=i8] [debug line = 243:31]
  call void @llvm.dbg.value(metadata !{i8 %i.7}, i64 0, metadata !216), !dbg !215 ; [debug line = 243:31] [debug variable = i]
  br label %1, !dbg !215                          ; [debug line = 243:31]

; <label>:3                                       ; preds = %1
  ret void, !dbg !217                             ; [debug line = 255:1]
}

; [#uses=3]
define internal fastcc void @aes_expandEncKey(i8* %k, i8* %rc) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %k}, i64 0, metadata !218), !dbg !219 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8* %rc}, i64 0, metadata !220), !dbg !221 ; [debug line = 258:44] [debug variable = rc]
  %k.addr = getelementptr inbounds i8* %k, i32 29, !dbg !222 ; [#uses=1 type=i8*] [debug line = 262:5]
  %k.load = load i8* %k.addr, align 1, !dbg !222  ; [#uses=2 type=i8] [debug line = 262:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load) nounwind
  %tmp = zext i8 %k.load to i32, !dbg !222        ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !222 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !222 ; [#uses=2 type=i8] [debug line = 262:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load) nounwind
  %rc.load = load i8* %rc, align 1, !dbg !222     ; [#uses=1 type=i8] [debug line = 262:5]
  %k.load.1 = load i8* %k, align 1, !dbg !222     ; [#uses=2 type=i8] [debug line = 262:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.1) nounwind
  %tmp.36 = xor i8 %rc.load, %sbox.load, !dbg !222 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp.37 = xor i8 %tmp.36, %k.load.1, !dbg !222  ; [#uses=1 type=i8] [debug line = 262:5]
  store i8 %tmp.37, i8* %k, align 1, !dbg !222    ; [debug line = 262:5]
  %k.addr.1 = getelementptr inbounds i8* %k, i32 30, !dbg !224 ; [#uses=1 type=i8*] [debug line = 263:5]
  %k.load.2 = load i8* %k.addr.1, align 1, !dbg !224 ; [#uses=2 type=i8] [debug line = 263:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.2) nounwind
  %tmp.38 = zext i8 %k.load.2 to i32, !dbg !224   ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.38, !dbg !224 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !224 ; [#uses=2 type=i8] [debug line = 263:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.1) nounwind
  %k.addr.2 = getelementptr inbounds i8* %k, i32 1, !dbg !224 ; [#uses=2 type=i8*] [debug line = 263:5]
  %k.load.3 = load i8* %k.addr.2, align 1, !dbg !224 ; [#uses=2 type=i8] [debug line = 263:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.3) nounwind
  %tmp.39 = xor i8 %k.load.3, %sbox.load.1, !dbg !224 ; [#uses=1 type=i8] [debug line = 263:5]
  store i8 %tmp.39, i8* %k.addr.2, align 1, !dbg !224 ; [debug line = 263:5]
  %k.addr.3 = getelementptr inbounds i8* %k, i32 31, !dbg !225 ; [#uses=1 type=i8*] [debug line = 264:5]
  %k.load.4 = load i8* %k.addr.3, align 1, !dbg !225 ; [#uses=2 type=i8] [debug line = 264:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.4) nounwind
  %tmp.40 = zext i8 %k.load.4 to i32, !dbg !225   ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.40, !dbg !225 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !225 ; [#uses=2 type=i8] [debug line = 264:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.2) nounwind
  %k.addr.4 = getelementptr inbounds i8* %k, i32 2, !dbg !225 ; [#uses=2 type=i8*] [debug line = 264:5]
  %k.load.5 = load i8* %k.addr.4, align 1, !dbg !225 ; [#uses=2 type=i8] [debug line = 264:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.5) nounwind
  %tmp.41 = xor i8 %k.load.5, %sbox.load.2, !dbg !225 ; [#uses=1 type=i8] [debug line = 264:5]
  store i8 %tmp.41, i8* %k.addr.4, align 1, !dbg !225 ; [debug line = 264:5]
  %k.addr.5 = getelementptr inbounds i8* %k, i32 28, !dbg !226 ; [#uses=1 type=i8*] [debug line = 265:5]
  %k.load.6 = load i8* %k.addr.5, align 1, !dbg !226 ; [#uses=2 type=i8] [debug line = 265:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.6) nounwind
  %tmp.42 = zext i8 %k.load.6 to i32, !dbg !226   ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.42, !dbg !226 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !226 ; [#uses=2 type=i8] [debug line = 265:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.3) nounwind
  %k.addr.6 = getelementptr inbounds i8* %k, i32 3, !dbg !226 ; [#uses=2 type=i8*] [debug line = 265:5]
  %k.load.7 = load i8* %k.addr.6, align 1, !dbg !226 ; [#uses=2 type=i8] [debug line = 265:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.7) nounwind
  %tmp.43 = xor i8 %k.load.7, %sbox.load.3, !dbg !226 ; [#uses=1 type=i8] [debug line = 265:5]
  store i8 %tmp.43, i8* %k.addr.6, align 1, !dbg !226 ; [debug line = 265:5]
  %rc.load.1 = load i8* %rc, align 1, !dbg !227   ; [#uses=2 type=i8] [debug line = 266:5]
  %tmp.44 = shl i8 %rc.load.1, 1, !dbg !227       ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.45 = ashr i8 %rc.load.1, 7, !dbg !227      ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.46 = and i8 %tmp.45, 27, !dbg !227         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.47 = xor i8 %tmp.46, %tmp.44, !dbg !227    ; [#uses=1 type=i8] [debug line = 266:5]
  store i8 %tmp.47, i8* %rc, align 1, !dbg !227   ; [debug line = 266:5]
  br label %1, !dbg !228                          ; [debug line = 268:16]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 4, %0 ], [ %i.8, %2 ]             ; [#uses=3 type=i8]
  %tmp.48 = icmp ult i8 %i, 16, !dbg !228         ; [#uses=1 type=i1] [debug line = 268:16]
  br i1 %tmp.48, label %2, label %3, !dbg !228    ; [debug line = 268:16]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)), !dbg !230 ; [debug line = 269:6]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !230 ; [#uses=1 type=i32] [debug line = 269:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !232 ; [debug line = 271:1]
  %tmp.49 = zext i8 %i to i32, !dbg !233          ; [#uses=8 type=i32] [debug line = 275:2]
  %tmp.50 = add nsw i32 %tmp.49, -4, !dbg !233    ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.7 = getelementptr inbounds i8* %k, i32 %tmp.50, !dbg !233 ; [#uses=1 type=i8*] [debug line = 275:2]
  %k.load.8 = load i8* %k.addr.7, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 275:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.8) nounwind
  %k.addr.8 = getelementptr inbounds i8* %k, i32 %tmp.49, !dbg !233 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.9 = load i8* %k.addr.8, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 275:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.9) nounwind
  %tmp.51 = xor i8 %k.load.9, %k.load.8, !dbg !233 ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %tmp.51, i8* %k.addr.8, align 1, !dbg !233 ; [debug line = 275:2]
  %tmp.52 = add nsw i32 %tmp.49, -3, !dbg !233    ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.9 = getelementptr inbounds i8* %k, i32 %tmp.52, !dbg !233 ; [#uses=1 type=i8*] [debug line = 275:2]
  %k.load.10 = load i8* %k.addr.9, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 275:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.10) nounwind
  %tmp.53 = or i32 %tmp.49, 1, !dbg !233          ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.10 = getelementptr inbounds i8* %k, i32 %tmp.53, !dbg !233 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.11 = load i8* %k.addr.10, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 275:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.11) nounwind
  %tmp.54 = xor i8 %k.load.11, %k.load.10, !dbg !233 ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %tmp.54, i8* %k.addr.10, align 1, !dbg !233 ; [debug line = 275:2]
  %tmp.55 = add nsw i32 %tmp.49, -2, !dbg !233    ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.11 = getelementptr inbounds i8* %k, i32 %tmp.55, !dbg !233 ; [#uses=1 type=i8*] [debug line = 275:2]
  %k.load.12 = load i8* %k.addr.11, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 275:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.12) nounwind
  %tmp.56 = or i32 %tmp.49, 2, !dbg !233          ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.12 = getelementptr inbounds i8* %k, i32 %tmp.56, !dbg !233 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.13 = load i8* %k.addr.12, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 275:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.13) nounwind
  %tmp.57 = xor i8 %k.load.13, %k.load.12, !dbg !233 ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %tmp.57, i8* %k.addr.12, align 1, !dbg !233 ; [debug line = 275:2]
  %tmp.58 = add nsw i32 %tmp.49, -1, !dbg !233    ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.13 = getelementptr inbounds i8* %k, i32 %tmp.58, !dbg !233 ; [#uses=1 type=i8*] [debug line = 275:2]
  %k.load.14 = load i8* %k.addr.13, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 275:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.14) nounwind
  %tmp.59 = or i32 %tmp.49, 3, !dbg !233          ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.14 = getelementptr inbounds i8* %k, i32 %tmp.59, !dbg !233 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.15 = load i8* %k.addr.14, align 1, !dbg !233 ; [#uses=2 type=i8] [debug line = 275:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.15) nounwind
  %tmp.60 = xor i8 %k.load.15, %k.load.14, !dbg !233 ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %tmp.60, i8* %k.addr.14, align 1, !dbg !233 ; [debug line = 275:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !234 ; [#uses=0 type=i32] [debug line = 277:5]
  %i.8 = add i8 %i, 4, !dbg !235                  ; [#uses=1 type=i8] [debug line = 268:31]
  call void @llvm.dbg.value(metadata !{i8 %i.8}, i64 0, metadata !236), !dbg !235 ; [debug line = 268:31] [debug variable = i]
  br label %1, !dbg !235                          ; [debug line = 268:31]

; <label>:3                                       ; preds = %1
  %k.addr.15 = getelementptr inbounds i8* %k, i32 12, !dbg !237 ; [#uses=1 type=i8*] [debug line = 278:5]
  %k.load.16 = load i8* %k.addr.15, align 1, !dbg !237 ; [#uses=2 type=i8] [debug line = 278:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.16) nounwind
  %tmp.62 = zext i8 %k.load.16 to i32, !dbg !237  ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.62, !dbg !237 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !237 ; [#uses=2 type=i8] [debug line = 278:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.4) nounwind
  %k.addr.16 = getelementptr inbounds i8* %k, i32 16, !dbg !237 ; [#uses=2 type=i8*] [debug line = 278:5]
  %k.load.17 = load i8* %k.addr.16, align 1, !dbg !237 ; [#uses=2 type=i8] [debug line = 278:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.17) nounwind
  %tmp.63 = xor i8 %k.load.17, %sbox.load.4, !dbg !237 ; [#uses=1 type=i8] [debug line = 278:5]
  store i8 %tmp.63, i8* %k.addr.16, align 1, !dbg !237 ; [debug line = 278:5]
  %k.addr.17 = getelementptr inbounds i8* %k, i32 13, !dbg !238 ; [#uses=1 type=i8*] [debug line = 279:5]
  %k.load.18 = load i8* %k.addr.17, align 1, !dbg !238 ; [#uses=2 type=i8] [debug line = 279:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.18) nounwind
  %tmp.64 = zext i8 %k.load.18 to i32, !dbg !238  ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.64, !dbg !238 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !238 ; [#uses=2 type=i8] [debug line = 279:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.5) nounwind
  %k.addr.18 = getelementptr inbounds i8* %k, i32 17, !dbg !238 ; [#uses=2 type=i8*] [debug line = 279:5]
  %k.load.19 = load i8* %k.addr.18, align 1, !dbg !238 ; [#uses=2 type=i8] [debug line = 279:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.19) nounwind
  %tmp.65 = xor i8 %k.load.19, %sbox.load.5, !dbg !238 ; [#uses=1 type=i8] [debug line = 279:5]
  store i8 %tmp.65, i8* %k.addr.18, align 1, !dbg !238 ; [debug line = 279:5]
  %k.addr.19 = getelementptr inbounds i8* %k, i32 14, !dbg !239 ; [#uses=1 type=i8*] [debug line = 280:5]
  %k.load.20 = load i8* %k.addr.19, align 1, !dbg !239 ; [#uses=2 type=i8] [debug line = 280:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.20) nounwind
  %tmp.66 = zext i8 %k.load.20 to i32, !dbg !239  ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.66, !dbg !239 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !239 ; [#uses=2 type=i8] [debug line = 280:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.6) nounwind
  %k.addr.20 = getelementptr inbounds i8* %k, i32 18, !dbg !239 ; [#uses=2 type=i8*] [debug line = 280:5]
  %k.load.21 = load i8* %k.addr.20, align 1, !dbg !239 ; [#uses=2 type=i8] [debug line = 280:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.21) nounwind
  %tmp.67 = xor i8 %k.load.21, %sbox.load.6, !dbg !239 ; [#uses=1 type=i8] [debug line = 280:5]
  store i8 %tmp.67, i8* %k.addr.20, align 1, !dbg !239 ; [debug line = 280:5]
  %k.addr.21 = getelementptr inbounds i8* %k, i32 15, !dbg !240 ; [#uses=1 type=i8*] [debug line = 281:5]
  %k.load.22 = load i8* %k.addr.21, align 1, !dbg !240 ; [#uses=2 type=i8] [debug line = 281:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.22) nounwind
  %tmp.68 = zext i8 %k.load.22 to i32, !dbg !240  ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.68, !dbg !240 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !240 ; [#uses=2 type=i8] [debug line = 281:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %sbox.load.7) nounwind
  %k.addr.22 = getelementptr inbounds i8* %k, i32 19, !dbg !240 ; [#uses=2 type=i8*] [debug line = 281:5]
  %k.load.23 = load i8* %k.addr.22, align 1, !dbg !240 ; [#uses=2 type=i8] [debug line = 281:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.23) nounwind
  %tmp.69 = xor i8 %k.load.23, %sbox.load.7, !dbg !240 ; [#uses=1 type=i8] [debug line = 281:5]
  store i8 %tmp.69, i8* %k.addr.22, align 1, !dbg !240 ; [debug line = 281:5]
  br label %4, !dbg !241                          ; [debug line = 283:16]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i8 [ 20, %3 ], [ %i.9, %5 ]          ; [#uses=3 type=i8]
  %tmp.70 = icmp ult i8 %i.1, 32, !dbg !241       ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %tmp.70, label %5, label %6, !dbg !241    ; [debug line = 283:16]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)), !dbg !243 ; [debug line = 284:6]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !243 ; [#uses=1 type=i32] [debug line = 284:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 2, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !245 ; [debug line = 286:1]
  %tmp.71 = zext i8 %i.1 to i32, !dbg !246        ; [#uses=8 type=i32] [debug line = 290:2]
  %tmp.72 = add nsw i32 %tmp.71, -4, !dbg !246    ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.23 = getelementptr inbounds i8* %k, i32 %tmp.72, !dbg !246 ; [#uses=1 type=i8*] [debug line = 290:2]
  %k.load.24 = load i8* %k.addr.23, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 290:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.24) nounwind
  %k.addr.24 = getelementptr inbounds i8* %k, i32 %tmp.71, !dbg !246 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.25 = load i8* %k.addr.24, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 290:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.25) nounwind
  %tmp.73 = xor i8 %k.load.25, %k.load.24, !dbg !246 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.73, i8* %k.addr.24, align 1, !dbg !246 ; [debug line = 290:2]
  %tmp.74 = add nsw i32 %tmp.71, -3, !dbg !246    ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.25 = getelementptr inbounds i8* %k, i32 %tmp.74, !dbg !246 ; [#uses=1 type=i8*] [debug line = 290:2]
  %k.load.26 = load i8* %k.addr.25, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 290:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.26) nounwind
  %tmp.75 = or i32 %tmp.71, 1, !dbg !246          ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.26 = getelementptr inbounds i8* %k, i32 %tmp.75, !dbg !246 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.27 = load i8* %k.addr.26, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 290:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.27) nounwind
  %tmp.76 = xor i8 %k.load.27, %k.load.26, !dbg !246 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.76, i8* %k.addr.26, align 1, !dbg !246 ; [debug line = 290:2]
  %tmp.77 = add nsw i32 %tmp.71, -2, !dbg !246    ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.27 = getelementptr inbounds i8* %k, i32 %tmp.77, !dbg !246 ; [#uses=1 type=i8*] [debug line = 290:2]
  %k.load.28 = load i8* %k.addr.27, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 290:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.28) nounwind
  %tmp.78 = or i32 %tmp.71, 2, !dbg !246          ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.28 = getelementptr inbounds i8* %k, i32 %tmp.78, !dbg !246 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.29 = load i8* %k.addr.28, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 290:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.29) nounwind
  %tmp.79 = xor i8 %k.load.29, %k.load.28, !dbg !246 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.79, i8* %k.addr.28, align 1, !dbg !246 ; [debug line = 290:2]
  %tmp.80 = add nsw i32 %tmp.71, -1, !dbg !246    ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.29 = getelementptr inbounds i8* %k, i32 %tmp.80, !dbg !246 ; [#uses=1 type=i8*] [debug line = 290:2]
  %k.load.30 = load i8* %k.addr.29, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 290:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.30) nounwind
  %tmp.81 = or i32 %tmp.71, 3, !dbg !246          ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.30 = getelementptr inbounds i8* %k, i32 %tmp.81, !dbg !246 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.31 = load i8* %k.addr.30, align 1, !dbg !246 ; [#uses=2 type=i8] [debug line = 290:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %k.load.31) nounwind
  %tmp.82 = xor i8 %k.load.31, %k.load.30, !dbg !246 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.82, i8* %k.addr.30, align 1, !dbg !246 ; [debug line = 290:2]
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i32 %rbegin1) nounwind, !dbg !247 ; [#uses=0 type=i32] [debug line = 292:5]
  %i.9 = add i8 %i.1, 4, !dbg !248                ; [#uses=1 type=i8] [debug line = 283:32]
  call void @llvm.dbg.value(metadata !{i8 %i.9}, i64 0, metadata !236), !dbg !248 ; [debug line = 283:32] [debug variable = i]
  br label %4, !dbg !248                          ; [debug line = 283:32]

; <label>:6                                       ; preds = %4
  ret void, !dbg !249                             ; [debug line = 294:1]
}

; [#uses=1]
define internal fastcc void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !250), !dbg !251 ; [debug line = 210:35] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !252), !dbg !253 ; [debug line = 210:49] [debug variable = key]
  call void @llvm.dbg.value(metadata !{i8* %cpk}, i64 0, metadata !254), !dbg !255 ; [debug line = 210:63] [debug variable = cpk]
  br label %1, !dbg !256                          ; [debug line = 214:13]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.10, %2 ]           ; [#uses=2 type=i8]
  %i.10 = add i8 %i, -1, !dbg !256                ; [#uses=2 type=i8] [debug line = 214:13]
  call void @llvm.dbg.value(metadata !{i8 %i.10}, i64 0, metadata !258), !dbg !256 ; [debug line = 214:13] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !256              ; [#uses=1 type=i1] [debug line = 214:13]
  br i1 %tmp, label %3, label %2, !dbg !256       ; [debug line = 214:13]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)), !dbg !259 ; [debug line = 215:6]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !259 ; [#uses=1 type=i32] [debug line = 215:6]
  call void (...)* @_ssdm_Unroll(i32 1, i32 0, i32 4, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !261 ; [debug line = 219:1]
  %tmp.84 = zext i8 %i.10 to i32, !dbg !262       ; [#uses=4 type=i32] [debug line = 221:2]
  %key.addr = getelementptr inbounds i8* %key, i32 %tmp.84, !dbg !262 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load = load i8* %key.addr, align 1, !dbg !262 ; [#uses=3 type=i8] [debug line = 221:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load) nounwind
  %cpk.addr = getelementptr inbounds i8* %cpk, i32 %tmp.84, !dbg !262 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load, i8* %cpk.addr, align 1, !dbg !262 ; [debug line = 221:2]
  %buf.addr = getelementptr inbounds i8* %buf, i32 %tmp.84, !dbg !262 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !262 ; [#uses=2 type=i8] [debug line = 221:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.85 = xor i8 %buf.load, %key.load, !dbg !262 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.85, i8* %buf.addr, align 1, !dbg !262 ; [debug line = 221:2]
  %tmp.86 = add nsw i32 %tmp.84, 16, !dbg !262    ; [#uses=2 type=i32] [debug line = 221:2]
  %key.addr.1 = getelementptr inbounds i8* %key, i32 %tmp.86, !dbg !262 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.1 = load i8* %key.addr.1, align 1, !dbg !262 ; [#uses=2 type=i8] [debug line = 221:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load.1) nounwind
  %cpk.addr.1 = getelementptr inbounds i8* %cpk, i32 %tmp.86, !dbg !262 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.1, i8* %cpk.addr.1, align 1, !dbg !262 ; [debug line = 221:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !263 ; [#uses=0 type=i32] [debug line = 222:5]
  br label %1, !dbg !263                          ; [debug line = 222:5]

; <label>:3                                       ; preds = %1
  ret void, !dbg !264                             ; [debug line = 223:1]
}

; [#uses=3]
define internal fastcc void @aes_addRoundKey(i8* %buf, i8* %key) nounwind {
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !265), !dbg !266 ; [debug line = 194:31] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !267), !dbg !268 ; [debug line = 194:45] [debug variable = key]
  br label %1, !dbg !269                          ; [debug line = 198:14]

; <label>:1                                       ; preds = %2, %0
  %i = phi i8 [ 16, %0 ], [ %i.11, %2 ]           ; [#uses=2 type=i8]
  %i.11 = add i8 %i, -1, !dbg !269                ; [#uses=2 type=i8] [debug line = 198:14]
  call void @llvm.dbg.value(metadata !{i8 %i.11}, i64 0, metadata !271), !dbg !269 ; [debug line = 198:14] [debug variable = i]
  %tmp = icmp eq i8 %i, 0, !dbg !269              ; [#uses=1 type=i1] [debug line = 198:14]
  br i1 %tmp, label %3, label %2, !dbg !269       ; [debug line = 198:14]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)), !dbg !272 ; [debug line = 199:6]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !272 ; [#uses=1 type=i32] [debug line = 199:6]
  call void (...)* @_ssdm_Unroll(i32 1, i32 0, i32 9, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)), !dbg !274 ; [debug line = 203:1]
  %tmp.87 = zext i8 %i.11 to i32, !dbg !275       ; [#uses=2 type=i32] [debug line = 205:2]
  %key.addr = getelementptr inbounds i8* %key, i32 %tmp.87, !dbg !275 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load = load i8* %key.addr, align 1, !dbg !275 ; [#uses=2 type=i8] [debug line = 205:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %key.load) nounwind
  %buf.addr = getelementptr inbounds i8* %buf, i32 %tmp.87, !dbg !275 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !275 ; [#uses=2 type=i8] [debug line = 205:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %buf.load) nounwind
  %tmp.88 = xor i8 %buf.load, %key.load, !dbg !275 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.88, i8* %buf.addr, align 1, !dbg !275 ; [debug line = 205:2]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !276 ; [#uses=0 type=i32] [debug line = 206:5]
  br label %1, !dbg !276                          ; [debug line = 206:5]

; <label>:3                                       ; preds = %1
  ret void, !dbg !277                             ; [debug line = 207:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=9]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=5]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=68]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=5]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!66, !73, !77, !83, !89, !90, !91, !93}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls/encrypt/solution/.autopilot/db/aes.pragma.2.c", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !29} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !17, metadata !20, metadata !23, metadata !24, metadata !25, metadata !26}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !6, i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @rj_xtime, null, null, metadata !11, i32 173} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !9}
!9 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !6, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !6, i32 178, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_subBytes, null, null, metadata !11, i32 179} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!15 = metadata !{null, metadata !16}
!16 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !6, i32 194, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_addRoundKey, null, null, metadata !11, i32 195} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{null, metadata !16, metadata !16}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !6, i32 210, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, null, null, metadata !11, i32 211} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!22 = metadata !{null, metadata !16, metadata !16, metadata !16}
!23 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !6, i32 227, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_shiftRows, null, null, metadata !11, i32 228} ; [ DW_TAG_subprogram ]
!24 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !6, i32 239, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @aes_mixColumns, null, null, metadata !11, i32 240} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786478, i32 0, metadata !6, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !6, i32 258, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @aes_expandEncKey, null, null, metadata !11, i32 259} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786478, i32 0, metadata !6, metadata !"encrypt", metadata !"encrypt", metadata !"", metadata !6, i32 301, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i8*, i8*, i8*)* @encrypt, null, null, metadata !11, i32 303} ; [ DW_TAG_subprogram ]
!27 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!28 = metadata !{null, metadata !16, metadata !16, metadata !16, metadata !16, metadata !16}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !56, metadata !59, metadata !62, metadata !63, metadata !64}
!31 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_sub", metadata !"pipeline_ii_sub", metadata !"", metadata !6, i32 66, metadata !32, i32 0, i32 1, i32* @pipeline_ii_sub} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_addkey", metadata !"pipeline_ii_addkey", metadata !"", metadata !6, i32 67, metadata !32, i32 0, i32 1, i32* @pipeline_ii_addkey} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_cpkey", metadata !"pipeline_ii_cpkey", metadata !"", metadata !6, i32 68, metadata !32, i32 0, i32 1, i32* @pipeline_ii_cpkey} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_mix", metadata !"pipeline_ii_mix", metadata !"", metadata !6, i32 69, metadata !32, i32 0, i32 1, i32* @pipeline_ii_mix} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp1", metadata !"pipeline_ii_exp1", metadata !"", metadata !6, i32 70, metadata !32, i32 0, i32 1, i32* @pipeline_ii_exp1} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp2", metadata !"pipeline_ii_exp2", metadata !"", metadata !6, i32 71, metadata !32, i32 0, i32 1, i32* @pipeline_ii_exp2} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb1", metadata !"pipeline_ii_ecb1", metadata !"", metadata !6, i32 72, metadata !32, i32 0, i32 1, i32* @pipeline_ii_ecb1} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb2", metadata !"pipeline_ii_ecb2", metadata !"", metadata !6, i32 73, metadata !32, i32 0, i32 1, i32* @pipeline_ii_ecb2} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb3", metadata !"pipeline_ii_ecb3", metadata !"", metadata !6, i32 74, metadata !32, i32 0, i32 1, i32* @pipeline_ii_ecb3} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_sub", metadata !"unroll_factor_sub", metadata !"", metadata !6, i32 76, metadata !32, i32 0, i32 1, i32* @unroll_factor_sub} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_addkey", metadata !"unroll_factor_addkey", metadata !"", metadata !6, i32 77, metadata !32, i32 0, i32 1, i32* @unroll_factor_addkey} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_cpkey", metadata !"unroll_factor_cpkey", metadata !"", metadata !6, i32 78, metadata !32, i32 0, i32 1, i32* @unroll_factor_cpkey} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_mix", metadata !"unroll_factor_mix", metadata !"", metadata !6, i32 79, metadata !32, i32 0, i32 1, i32* @unroll_factor_mix} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp1", metadata !"unroll_factor_exp1", metadata !"", metadata !6, i32 80, metadata !32, i32 0, i32 1, i32* @unroll_factor_exp1} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp2", metadata !"unroll_factor_exp2", metadata !"", metadata !6, i32 81, metadata !32, i32 0, i32 1, i32* @unroll_factor_exp2} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb1", metadata !"unroll_factor_ecb1", metadata !"", metadata !6, i32 82, metadata !32, i32 0, i32 1, i32* @unroll_factor_ecb1} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb2", metadata !"unroll_factor_ecb2", metadata !"", metadata !6, i32 83, metadata !32, i32 0, i32 1, i32* @unroll_factor_ecb2} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb3", metadata !"unroll_factor_ecb3", metadata !"", metadata !6, i32 84, metadata !32, i32 0, i32 1, i32* @unroll_factor_ecb3} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !6, i32 89, metadata !52, i32 0, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !53, metadata !54, i32 0, i32 0} ; [ DW_TAG_array_type ]
!53 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!56 = metadata !{i32 786484, i32 0, null, metadata !"INPUT_SIZE", metadata !"INPUT_SIZE", metadata !"", metadata !57, i32 45, metadata !58, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!57 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", null} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!59 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !60, i32 320, metadata !61, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!60 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !60, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!62 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !60, i32 321, metadata !61, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !60, i32 322, metadata !61, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !65, i32 26, metadata !58, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!65 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/scratch/local/tmp.soPlafqy6w/_sds/vhls", null} ; [ DW_TAG_file_type ]
!66 = metadata !{i8 (i8)* @rj_xtime, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!67 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!68 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t"}
!70 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!72 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!73 = metadata !{void (i8*)* @aes_subBytes, metadata !74, metadata !68, metadata !75, metadata !70, metadata !76, metadata !72}
!74 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*"}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"buf"}
!77 = metadata !{void (i8*, i8*)* @aes_addRoundKey, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !72}
!78 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!79 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*"}
!81 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!82 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key"}
!83 = metadata !{void (i8*, i8*, i8*)* @aes_addRoundKey_cpy, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !72}
!84 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!85 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!87 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"key", metadata !"cpk"}
!89 = metadata !{void (i8*)* @aes_shiftRows, metadata !74, metadata !68, metadata !75, metadata !70, metadata !76, metadata !72}
!90 = metadata !{void (i8*)* @aes_mixColumns, metadata !74, metadata !68, metadata !75, metadata !70, metadata !76, metadata !72}
!91 = metadata !{void (i8*, i8*)* @aes_expandEncKey, metadata !78, metadata !79, metadata !80, metadata !81, metadata !92, metadata !72}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"k", metadata !"rc"}
!93 = metadata !{void (i8*, i8*, i8*, i8*, i8*)* @encrypt, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !72}
!94 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1}
!95 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*", metadata !"uint8_t*"}
!97 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!98 = metadata !{metadata !"kernel_arg_name", metadata !"ctx_key", metadata !"ctx_enckey", metadata !"ctx_deckey", metadata !"k", metadata !"buf"}
!99 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 16777388, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!100 = metadata !{i32 172, i32 26, metadata !5, null}
!101 = metadata !{i32 174, i32 5, metadata !102, null}
!102 = metadata !{i32 786443, metadata !5, i32 173, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786689, metadata !26, metadata !"ctx_key", metadata !6, i32 16777517, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 301, i32 22, metadata !26, null}
!105 = metadata !{i32 786689, metadata !26, metadata !"ctx_enckey", metadata !6, i32 33554733, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 301, i32 43, metadata !26, null}
!107 = metadata !{i32 786689, metadata !26, metadata !"ctx_deckey", metadata !6, i32 50331950, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 302, i32 22, metadata !26, null}
!109 = metadata !{i32 786689, metadata !26, metadata !"k", metadata !6, i32 67109166, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 302, i32 46, metadata !26, null}
!111 = metadata !{i32 786689, metadata !26, metadata !"buf", metadata !6, i32 83886382, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 302, i32 61, metadata !26, null}
!113 = metadata !{i32 303, i32 2, metadata !114, null}
!114 = metadata !{i32 786443, metadata !26, i32 303, i32 1, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 303, i32 40, metadata !114, null}
!116 = metadata !{i32 303, i32 71, metadata !114, null}
!117 = metadata !{i32 303, i32 106, metadata !114, null}
!118 = metadata !{i32 303, i32 135, metadata !114, null}
!119 = metadata !{i32 304, i32 1, metadata !114, null}
!120 = metadata !{i32 786688, metadata !114, metadata !"rcon", metadata !6, i32 305, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 305, i32 13, metadata !114, null}
!122 = metadata !{i32 305, i32 21, metadata !114, null}
!123 = metadata !{i32 308, i32 17, metadata !124, null}
!124 = metadata !{i32 786443, metadata !114, i32 308, i32 12, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 316, i32 17, metadata !126, null}
!126 = metadata !{i32 786443, metadata !114, i32 316, i32 12, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 308, i32 37, metadata !128, null}
!128 = metadata !{i32 786443, metadata !124, i32 308, i32 36, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 312, i32 1, metadata !128, null}
!130 = metadata !{i32 314, i32 2, metadata !128, null}
!131 = metadata !{i32 315, i32 5, metadata !128, null}
!132 = metadata !{i32 308, i32 32, metadata !124, null}
!133 = metadata !{i32 786688, metadata !114, metadata !"i", metadata !6, i32 306, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 316, i32 29, metadata !135, null}
!135 = metadata !{i32 786443, metadata !126, i32 316, i32 28, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 318, i32 1, metadata !135, null}
!137 = metadata !{i32 322, i32 2, metadata !135, null}
!138 = metadata !{i32 323, i32 5, metadata !135, null}
!139 = metadata !{i32 326, i32 5, metadata !114, null}
!140 = metadata !{i32 327, i32 16, metadata !141, null}
!141 = metadata !{i32 786443, metadata !114, i32 327, i32 12, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 337, i32 21, metadata !143, null}
!143 = metadata !{i32 786443, metadata !141, i32 328, i32 5, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 328, i32 6, metadata !143, null}
!145 = metadata !{i32 332, i32 1, metadata !143, null}
!146 = metadata !{i32 334, i32 2, metadata !143, null}
!147 = metadata !{i32 335, i32 9, metadata !143, null}
!148 = metadata !{i32 336, i32 9, metadata !143, null}
!149 = metadata !{i32 337, i32 9, metadata !143, null}
!150 = metadata !{i32 338, i32 14, metadata !143, null}
!151 = metadata !{i32 338, i32 48, metadata !143, null}
!152 = metadata !{i32 339, i32 5, metadata !143, null}
!153 = metadata !{i32 327, i32 41, metadata !141, null}
!154 = metadata !{i32 340, i32 5, metadata !114, null}
!155 = metadata !{i32 341, i32 5, metadata !114, null}
!156 = metadata !{i32 342, i32 5, metadata !114, null}
!157 = metadata !{i32 343, i32 5, metadata !114, null}
!158 = metadata !{i32 344, i32 1, metadata !114, null}
!159 = metadata !{i32 786689, metadata !13, metadata !"buf", metadata !6, i32 16777394, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!160 = metadata !{i32 178, i32 28, metadata !13, null}
!161 = metadata !{i32 182, i32 11, metadata !162, null}
!162 = metadata !{i32 786443, metadata !13, i32 179, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786688, metadata !162, metadata !"i", metadata !6, i32 180, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 183, i32 6, metadata !165, null}
!165 = metadata !{i32 786443, metadata !162, i32 183, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 187, i32 1, metadata !165, null}
!167 = metadata !{i32 189, i32 2, metadata !165, null}
!168 = metadata !{i32 190, i32 5, metadata !165, null}
!169 = metadata !{i32 191, i32 1, metadata !162, null}
!170 = metadata !{i32 786689, metadata !23, metadata !"buf", metadata !6, i32 16777443, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 227, i32 29, metadata !23, null}
!172 = metadata !{i32 231, i32 5, metadata !173, null}
!173 = metadata !{i32 786443, metadata !23, i32 228, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 786688, metadata !173, metadata !"i", metadata !6, i32 229, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 231, i32 17, metadata !173, null}
!176 = metadata !{i32 231, i32 34, metadata !173, null}
!177 = metadata !{i32 231, i32 51, metadata !173, null}
!178 = metadata !{i32 231, i32 69, metadata !173, null}
!179 = metadata !{i32 232, i32 5, metadata !173, null}
!180 = metadata !{i32 232, i32 18, metadata !173, null}
!181 = metadata !{i32 232, i32 36, metadata !173, null}
!182 = metadata !{i32 233, i32 5, metadata !173, null}
!183 = metadata !{i32 786688, metadata !173, metadata !"j", metadata !6, i32 229, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 233, i32 17, metadata !173, null}
!185 = metadata !{i32 233, i32 35, metadata !173, null}
!186 = metadata !{i32 233, i32 54, metadata !173, null}
!187 = metadata !{i32 233, i32 72, metadata !173, null}
!188 = metadata !{i32 234, i32 5, metadata !173, null}
!189 = metadata !{i32 234, i32 18, metadata !173, null}
!190 = metadata !{i32 234, i32 36, metadata !173, null}
!191 = metadata !{i32 236, i32 1, metadata !173, null}
!192 = metadata !{i32 786689, metadata !24, metadata !"buf", metadata !6, i32 16777455, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!193 = metadata !{i32 239, i32 30, metadata !24, null}
!194 = metadata !{i32 243, i32 16, metadata !195, null}
!195 = metadata !{i32 786443, metadata !196, i32 243, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 786443, metadata !24, i32 240, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 244, i32 6, metadata !198, null}
!198 = metadata !{i32 786443, metadata !195, i32 244, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 246, i32 1, metadata !198, null}
!200 = metadata !{i32 250, i32 2, metadata !198, null}
!201 = metadata !{i32 786688, metadata !196, metadata !"a", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 250, i32 14, metadata !198, null}
!203 = metadata !{i32 786688, metadata !196, metadata !"b", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 250, i32 30, metadata !198, null}
!205 = metadata !{i32 786688, metadata !196, metadata !"c", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 250, i32 46, metadata !198, null}
!207 = metadata !{i32 786688, metadata !196, metadata !"d", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!208 = metadata !{i32 251, i32 9, metadata !198, null}
!209 = metadata !{i32 786688, metadata !196, metadata !"e", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!210 = metadata !{i32 252, i32 23, metadata !198, null}
!211 = metadata !{i32 252, i32 54, metadata !198, null}
!212 = metadata !{i32 253, i32 25, metadata !198, null}
!213 = metadata !{i32 253, i32 56, metadata !198, null}
!214 = metadata !{i32 254, i32 5, metadata !198, null}
!215 = metadata !{i32 243, i32 31, metadata !195, null}
!216 = metadata !{i32 786688, metadata !196, metadata !"i", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!217 = metadata !{i32 255, i32 1, metadata !196, null}
!218 = metadata !{i32 786689, metadata !25, metadata !"k", metadata !6, i32 16777474, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 258, i32 32, metadata !25, null}
!220 = metadata !{i32 786689, metadata !25, metadata !"rc", metadata !6, i32 33554690, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!221 = metadata !{i32 258, i32 44, metadata !25, null}
!222 = metadata !{i32 262, i32 5, metadata !223, null}
!223 = metadata !{i32 786443, metadata !25, i32 259, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 263, i32 5, metadata !223, null}
!225 = metadata !{i32 264, i32 5, metadata !223, null}
!226 = metadata !{i32 265, i32 5, metadata !223, null}
!227 = metadata !{i32 266, i32 5, metadata !223, null}
!228 = metadata !{i32 268, i32 16, metadata !229, null}
!229 = metadata !{i32 786443, metadata !223, i32 268, i32 12, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!230 = metadata !{i32 269, i32 6, metadata !231, null}
!231 = metadata !{i32 786443, metadata !229, i32 269, i32 5, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!232 = metadata !{i32 271, i32 1, metadata !231, null}
!233 = metadata !{i32 275, i32 2, metadata !231, null}
!234 = metadata !{i32 277, i32 5, metadata !231, null}
!235 = metadata !{i32 268, i32 31, metadata !229, null}
!236 = metadata !{i32 786688, metadata !223, metadata !"i", metadata !6, i32 260, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 278, i32 5, metadata !223, null}
!238 = metadata !{i32 279, i32 5, metadata !223, null}
!239 = metadata !{i32 280, i32 5, metadata !223, null}
!240 = metadata !{i32 281, i32 5, metadata !223, null}
!241 = metadata !{i32 283, i32 16, metadata !242, null}
!242 = metadata !{i32 786443, metadata !223, i32 283, i32 12, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!243 = metadata !{i32 284, i32 6, metadata !244, null}
!244 = metadata !{i32 786443, metadata !242, i32 284, i32 5, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!245 = metadata !{i32 286, i32 1, metadata !244, null}
!246 = metadata !{i32 290, i32 2, metadata !244, null}
!247 = metadata !{i32 292, i32 5, metadata !244, null}
!248 = metadata !{i32 283, i32 32, metadata !242, null}
!249 = metadata !{i32 294, i32 1, metadata !223, null}
!250 = metadata !{i32 786689, metadata !20, metadata !"buf", metadata !6, i32 16777426, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!251 = metadata !{i32 210, i32 35, metadata !20, null}
!252 = metadata !{i32 786689, metadata !20, metadata !"key", metadata !6, i32 33554642, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!253 = metadata !{i32 210, i32 49, metadata !20, null}
!254 = metadata !{i32 786689, metadata !20, metadata !"cpk", metadata !6, i32 50331858, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 210, i32 63, metadata !20, null}
!256 = metadata !{i32 214, i32 13, metadata !257, null}
!257 = metadata !{i32 786443, metadata !20, i32 211, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 786688, metadata !257, metadata !"i", metadata !6, i32 212, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 215, i32 6, metadata !260, null}
!260 = metadata !{i32 786443, metadata !257, i32 215, i32 5, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!261 = metadata !{i32 219, i32 1, metadata !260, null}
!262 = metadata !{i32 221, i32 2, metadata !260, null}
!263 = metadata !{i32 222, i32 5, metadata !260, null}
!264 = metadata !{i32 223, i32 1, metadata !257, null}
!265 = metadata !{i32 786689, metadata !17, metadata !"buf", metadata !6, i32 16777410, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!266 = metadata !{i32 194, i32 31, metadata !17, null}
!267 = metadata !{i32 786689, metadata !17, metadata !"key", metadata !6, i32 33554626, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 194, i32 45, metadata !17, null}
!269 = metadata !{i32 198, i32 14, metadata !270, null}
!270 = metadata !{i32 786443, metadata !17, i32 195, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 786688, metadata !270, metadata !"i", metadata !6, i32 196, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 199, i32 6, metadata !273, null}
!273 = metadata !{i32 786443, metadata !270, i32 199, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 203, i32 1, metadata !273, null}
!275 = metadata !{i32 205, i32 2, metadata !273, null}
!276 = metadata !{i32 206, i32 5, metadata !273, null}
!277 = metadata !{i32 207, i32 1, metadata !270, null}
