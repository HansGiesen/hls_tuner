; ModuleID = '/scratch/local/tmp.7aow7oM1KP/_sds/vhls/encrypt/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@unroll_factor_sub = constant i32 1, align 4      ; [#uses=0 type=i32*]
@unroll_factor_mix = constant i32 1, align 4      ; [#uses=0 type=i32*]
@unroll_factor_exp2 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_exp1 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb3 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb2 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb1 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_cpkey = constant i32 1, align 4    ; [#uses=0 type=i32*]
@unroll_factor_addkey = constant i32 1, align 4   ; [#uses=0 type=i32*]
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1 ; [#uses=9 type=[256 x i8]*]
@pipeline_ii_sub = constant i32 1, align 4        ; [#uses=0 type=i32*]
@pipeline_ii_mix = constant i32 1, align 4        ; [#uses=0 type=i32*]
@pipeline_ii_exp2 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_exp1 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb3 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb2 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb1 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_cpkey = constant i32 1, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_addkey = constant i32 1, align 4     ; [#uses=0 type=i32*]
@encrypt.str = internal unnamed_addr constant [8 x i8] c"encrypt\00" ; [#uses=1 type=[8 x i8]*]
@.str9 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=13 type=[6 x i8]*]
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
@.str14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1 ; [#uses=6 type=[4 x i8]*]
@.str13 = private unnamed_addr constant [8 x i8] c"ctx_key\00", align 1 ; [#uses=3 type=[8 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"ctx_enckey\00", align 1 ; [#uses=2 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=13 type=[7 x i8]*]
@.str10 = private unnamed_addr constant [11 x i8] c"ctx_deckey\00", align 1 ; [#uses=2 type=[11 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=66 type=[1 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"sub\00", align 1 ; [#uses=1 type=[4 x i8]*]

; [#uses=40]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @encrypt([32 x i8]* %ctx_key, [32 x i8]* %ctx_enckey, [32 x i8]* %ctx_deckey, [32 x i8]* %k, [16 x i8]* %buf) nounwind {
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
  %tmp.1 = zext i6 0 to i32, !dbg !120            ; [#uses=1 type=i32] [debug line = 314:2]
  %tmp.2 = zext i6 0 to i32, !dbg !120            ; [#uses=1 type=i32] [debug line = 314:2]
  br label %1, !dbg !123                          ; [debug line = 308:17]

; <label>:1                                       ; preds = %3, %0
  %i = phi i6 [ 0, %0 ], [ %i.3, %3 ]             ; [#uses=3 type=i6]
  %tmp = icmp eq i6 %i, -32, !dbg !123            ; [#uses=1 type=i1] [debug line = 308:17]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 32, i64 32, i64 32) nounwind ; [#uses=0 type=i32]
  br i1 %tmp, label %.preheader.preheader, label %3, !dbg !123 ; [debug line = 308:17]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !124                 ; [debug line = 316:17]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str15) nounwind, !dbg !126 ; [debug line = 308:37]
  %tmp.5 = zext i6 %i to i32, !dbg !120           ; [#uses=3 type=i32] [debug line = 314:2]
  %k.addr = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.5, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %k.load = load i8* %k.addr, align 1, !dbg !120  ; [#uses=2 type=i8] [debug line = 314:2]
  %ctx_deckey.addr = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 %tmp.5, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %ctx_deckey.addr.1 = getelementptr [32 x i8]* %ctx_deckey, i32 0, i32 %tmp.1, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %tmp.3 = zext i6 -32 to i32                     ; [#uses=1 type=i32]
  %4 = call i32 (...)* @_ssdm_op_SpecBurst(i8* %ctx_deckey.addr.1, i32 0, i32 %tmp.3, i32 1) ; [#uses=0 type=i32]
  store i8 %k.load, i8* %ctx_deckey.addr, align 1, !dbg !120 ; [debug line = 314:2]
  %ctx_enckey.addr = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 %tmp.5, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %ctx_enckey.addr.1 = getelementptr [32 x i8]* %ctx_enckey, i32 0, i32 %tmp.2, !dbg !120 ; [#uses=1 type=i8*] [debug line = 314:2]
  %tmp.4 = zext i6 -32 to i32                     ; [#uses=1 type=i32]
  %5 = call i32 (...)* @_ssdm_op_SpecBurst(i8* %ctx_enckey.addr.1, i32 0, i32 %tmp.4, i32 1) ; [#uses=0 type=i32]
  store i8 %k.load, i8* %ctx_enckey.addr, align 1, !dbg !120 ; [debug line = 314:2]
  %i.3 = add i6 %i, 1, !dbg !127                  ; [#uses=1 type=i6] [debug line = 308:32]
  call void @llvm.dbg.value(metadata !{i6 %i.3}, i64 0, metadata !128), !dbg !127 ; [debug line = 308:32] [debug variable = i]
  br label %1, !dbg !127                          ; [debug line = 308:32]

.preheader:                                       ; preds = %7, %.preheader.preheader
  %rcon = phi i8 [ %rcon.3, %7 ], [ 1, %.preheader.preheader ] ; [#uses=1 type=i8]
  %i.1 = phi i3 [ %phitmp, %7 ], [ -1, %.preheader.preheader ] ; [#uses=2 type=i3]
  call void @llvm.dbg.value(metadata !{i3 %i.1}, i64 0, metadata !128), !dbg !124 ; [debug line = 316:17] [debug variable = i]
  %tmp.7 = icmp eq i3 %i.1, 0, !dbg !124          ; [#uses=1 type=i1] [debug line = 316:17]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind ; [#uses=0 type=i32]
  br i1 %tmp.7, label %8, label %7, !dbg !124     ; [debug line = 316:17]

; <label>:7                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str16) nounwind, !dbg !129 ; [debug line = 316:29]
  %rcon.3 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_deckey, i8 %rcon) nounwind, !dbg !131 ; [#uses=1 type=i8] [debug line = 322:2]
  call void @llvm.dbg.value(metadata !{i8 %rcon.3}, i64 0, metadata !132), !dbg !131 ; [debug line = 322:2] [debug variable = rcon]
  %phitmp = add i3 %i.1, -1, !dbg !133            ; [#uses=1 type=i3] [debug line = 323:5]
  br label %.preheader, !dbg !133                 ; [debug line = 323:5]

; <label>:8                                       ; preds = %.preheader
  call fastcc void @aes_addRoundKey_cpy([16 x i8]* %buf, [32 x i8]* %ctx_enckey, [32 x i8]* %ctx_key) nounwind, !dbg !134 ; [debug line = 326:5]
  %9 = lshr i4 -3, 1                              ; [#uses=0 type=i4]
  br label %10, !dbg !135                         ; [debug line = 327:16]

; <label>:10                                      ; preds = %15, %8
  %rcon.1 = phi i8 [ 1, %8 ], [ %rcon.2, %15 ]    ; [#uses=3 type=i8]
  %i.2 = phi i4 [ 1, %8 ], [ %i.4, %15 ]          ; [#uses=3 type=i4]
  %i.2.cast1 = trunc i4 %i.2 to i1, !dbg !135     ; [#uses=1 type=i1] [debug line = 327:16]
  %exitcond = icmp eq i4 %i.2, -2, !dbg !135      ; [#uses=1 type=i1] [debug line = 327:16]
  %11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 13, i64 13, i64 13) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond, label %16, label %12, !dbg !135 ; [debug line = 327:16]

; <label>:12                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str17) nounwind, !dbg !137 ; [debug line = 328:6]
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !139 ; [debug line = 334:2]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !140 ; [debug line = 335:9]
  call fastcc void @aes_mixColumns([16 x i8]* %buf) nounwind, !dbg !141 ; [debug line = 336:9]
  br i1 %i.2.cast1, label %13, label %14, !dbg !142 ; [debug line = 337:9]

; <label>:13                                      ; preds = %12
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 16) nounwind, !dbg !143 ; [debug line = 337:21]
  br label %15, !dbg !143                         ; [debug line = 337:21]

; <label>:14                                      ; preds = %12
  %rcon.4 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.1) nounwind, !dbg !144 ; [#uses=1 type=i8] [debug line = 338:14]
  call void @llvm.dbg.value(metadata !{i8 %rcon.4}, i64 0, metadata !132), !dbg !144 ; [debug line = 338:14] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !145 ; [debug line = 338:48]
  br label %15

; <label>:15                                      ; preds = %14, %13
  %rcon.2 = phi i8 [ %rcon.4, %14 ], [ %rcon.1, %13 ] ; [#uses=1 type=i8]
  %i.4 = add i4 %i.2, 1, !dbg !146                ; [#uses=1 type=i4] [debug line = 327:41]
  call void @llvm.dbg.value(metadata !{i4 %i.4}, i64 0, metadata !128), !dbg !146 ; [debug line = 327:41] [debug variable = i]
  br label %10, !dbg !146                         ; [debug line = 327:41]

; <label>:16                                      ; preds = %10
  %rcon.1.lcssa = phi i8 [ %rcon.1, %10 ]         ; [#uses=1 type=i8]
  call fastcc void @aes_subBytes([16 x i8]* %buf) nounwind, !dbg !147 ; [debug line = 340:5]
  call fastcc void @aes_shiftRows([16 x i8]* %buf) nounwind, !dbg !148 ; [debug line = 341:5]
  %call.ret12 = call fastcc i8 @aes_expandEncKey([32 x i8]* %ctx_key, i8 %rcon.1.lcssa) nounwind, !dbg !149 ; [#uses=0 type=i8] [debug line = 342:5]
  call void @llvm.dbg.value(metadata !{i8 %call.ret12}, i64 0, metadata !132), !dbg !149 ; [debug line = 342:5] [debug variable = rcon]
  call fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %ctx_key, i6 0) nounwind, !dbg !150 ; [debug line = 343:5]
  ret void, !dbg !151                             ; [debug line = 344:1]
}

; [#uses=2]
define internal fastcc void @aes_subBytes([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !152), !dbg !156 ; [debug line = 178:28] [debug variable = buf]
  br label %1, !dbg !157                          ; [debug line = 182:11]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.5, %3 ]           ; [#uses=2 type=i5]
  %i.5 = add i5 %i, -1, !dbg !157                 ; [#uses=2 type=i5] [debug line = 182:11]
  %i.5.cast = sext i5 %i.5 to i8, !dbg !157       ; [#uses=1 type=i8] [debug line = 182:11]
  call void @llvm.dbg.value(metadata !{i5 %i.5}, i64 0, metadata !159), !dbg !157 ; [debug line = 182:11] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !157              ; [#uses=1 type=i1] [debug line = 182:11]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %4, label %3, !dbg !157       ; [debug line = 182:11]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str) nounwind, !dbg !160 ; [debug line = 183:6]
  %tmp. = zext i8 %i.5.cast to i32, !dbg !162     ; [#uses=1 type=i32] [debug line = 189:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !162 ; [#uses=2 type=i8*] [debug line = 189:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !162 ; [#uses=1 type=i8] [debug line = 189:2]
  %tmp.1 = zext i8 %buf.load to i32, !dbg !162    ; [#uses=1 type=i32] [debug line = 189:2]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.1, !dbg !162 ; [#uses=1 type=i8*] [debug line = 189:2]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !162 ; [#uses=1 type=i8] [debug line = 189:2]
  store i8 %sbox.load, i8* %buf.addr, align 1, !dbg !162 ; [debug line = 189:2]
  br label %1, !dbg !163                          ; [debug line = 190:5]

; <label>:4                                       ; preds = %1
  ret void, !dbg !164                             ; [debug line = 191:1]
}

; [#uses=2]
define internal fastcc void @aes_shiftRows([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !165), !dbg !167 ; [debug line = 227:29] [debug variable = buf]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 1, !dbg !168 ; [#uses=2 type=i8*] [debug line = 231:5]
  %i = load i8* %buf.addr, align 1, !dbg !168     ; [#uses=1 type=i8] [debug line = 231:5]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !170), !dbg !168 ; [debug line = 231:5] [debug variable = i]
  %buf.addr.1 = getelementptr [16 x i8]* %buf, i32 0, i32 5, !dbg !171 ; [#uses=2 type=i8*] [debug line = 231:17]
  %buf.load = load i8* %buf.addr.1, align 1, !dbg !171 ; [#uses=1 type=i8] [debug line = 231:17]
  store i8 %buf.load, i8* %buf.addr, align 1, !dbg !171 ; [debug line = 231:17]
  %buf.addr.2 = getelementptr [16 x i8]* %buf, i32 0, i32 9, !dbg !172 ; [#uses=2 type=i8*] [debug line = 231:34]
  %buf.load.1 = load i8* %buf.addr.2, align 1, !dbg !172 ; [#uses=1 type=i8] [debug line = 231:34]
  store i8 %buf.load.1, i8* %buf.addr.1, align 1, !dbg !172 ; [debug line = 231:34]
  %buf.addr.3 = getelementptr [16 x i8]* %buf, i32 0, i32 13, !dbg !173 ; [#uses=2 type=i8*] [debug line = 231:51]
  %buf.load.2 = load i8* %buf.addr.3, align 1, !dbg !173 ; [#uses=1 type=i8] [debug line = 231:51]
  store i8 %buf.load.2, i8* %buf.addr.2, align 1, !dbg !173 ; [debug line = 231:51]
  store i8 %i, i8* %buf.addr.3, align 1, !dbg !174 ; [debug line = 231:69]
  %buf.addr.4 = getelementptr [16 x i8]* %buf, i32 0, i32 10, !dbg !175 ; [#uses=2 type=i8*] [debug line = 232:5]
  %i.6 = load i8* %buf.addr.4, align 1, !dbg !175 ; [#uses=1 type=i8] [debug line = 232:5]
  call void @llvm.dbg.value(metadata !{i8 %i.6}, i64 0, metadata !170), !dbg !175 ; [debug line = 232:5] [debug variable = i]
  %buf.addr.5 = getelementptr [16 x i8]* %buf, i32 0, i32 2, !dbg !176 ; [#uses=2 type=i8*] [debug line = 232:18]
  %buf.load.4 = load i8* %buf.addr.5, align 1, !dbg !176 ; [#uses=1 type=i8] [debug line = 232:18]
  store i8 %buf.load.4, i8* %buf.addr.4, align 1, !dbg !176 ; [debug line = 232:18]
  store i8 %i.6, i8* %buf.addr.5, align 1, !dbg !177 ; [debug line = 232:36]
  %buf.addr.6 = getelementptr [16 x i8]* %buf, i32 0, i32 3, !dbg !178 ; [#uses=2 type=i8*] [debug line = 233:5]
  %j = load i8* %buf.addr.6, align 1, !dbg !178   ; [#uses=1 type=i8] [debug line = 233:5]
  call void @llvm.dbg.value(metadata !{i8 %j}, i64 0, metadata !179), !dbg !178 ; [debug line = 233:5] [debug variable = j]
  %buf.addr.7 = getelementptr [16 x i8]* %buf, i32 0, i32 15, !dbg !180 ; [#uses=2 type=i8*] [debug line = 233:17]
  %buf.load.6 = load i8* %buf.addr.7, align 1, !dbg !180 ; [#uses=1 type=i8] [debug line = 233:17]
  store i8 %buf.load.6, i8* %buf.addr.6, align 1, !dbg !180 ; [debug line = 233:17]
  %buf.addr.8 = getelementptr [16 x i8]* %buf, i32 0, i32 11, !dbg !181 ; [#uses=2 type=i8*] [debug line = 233:35]
  %buf.load.7 = load i8* %buf.addr.8, align 1, !dbg !181 ; [#uses=1 type=i8] [debug line = 233:35]
  store i8 %buf.load.7, i8* %buf.addr.7, align 1, !dbg !181 ; [debug line = 233:35]
  %buf.addr.9 = getelementptr [16 x i8]* %buf, i32 0, i32 7, !dbg !182 ; [#uses=2 type=i8*] [debug line = 233:54]
  %buf.load.8 = load i8* %buf.addr.9, align 1, !dbg !182 ; [#uses=1 type=i8] [debug line = 233:54]
  store i8 %buf.load.8, i8* %buf.addr.8, align 1, !dbg !182 ; [debug line = 233:54]
  store i8 %j, i8* %buf.addr.9, align 1, !dbg !183 ; [debug line = 233:72]
  %buf.addr.10 = getelementptr [16 x i8]* %buf, i32 0, i32 14, !dbg !184 ; [#uses=2 type=i8*] [debug line = 234:5]
  %j.1 = load i8* %buf.addr.10, align 1, !dbg !184 ; [#uses=1 type=i8] [debug line = 234:5]
  call void @llvm.dbg.value(metadata !{i8 %j.1}, i64 0, metadata !179), !dbg !184 ; [debug line = 234:5] [debug variable = j]
  %buf.addr.11 = getelementptr [16 x i8]* %buf, i32 0, i32 6, !dbg !185 ; [#uses=2 type=i8*] [debug line = 234:18]
  %buf.load.10 = load i8* %buf.addr.11, align 1, !dbg !185 ; [#uses=1 type=i8] [debug line = 234:18]
  store i8 %buf.load.10, i8* %buf.addr.10, align 1, !dbg !185 ; [debug line = 234:18]
  store i8 %j.1, i8* %buf.addr.11, align 1, !dbg !186 ; [debug line = 234:36]
  ret void, !dbg !187                             ; [debug line = 236:1]
}

; [#uses=1]
define internal fastcc void @aes_mixColumns([16 x i8]* %buf) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !188), !dbg !190 ; [debug line = 239:30] [debug variable = buf]
  br label %1, !dbg !191                          ; [debug line = 243:16]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 0, %0 ], [ %i.7, %3 ]             ; [#uses=4 type=i5]
  %tmp = icmp sgt i5 %i, -1, !dbg !191            ; [#uses=1 type=i1] [debug line = 243:16]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) ; [#uses=0 type=i32]
  br i1 %tmp, label %3, label %4, !dbg !191       ; [debug line = 243:16]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str4) nounwind, !dbg !194 ; [debug line = 244:6]
  %tmp. = zext i5 %i to i32, !dbg !196            ; [#uses=1 type=i32] [debug line = 250:2]
  %tmp..cast = trunc i5 %i to i4, !dbg !196       ; [#uses=3 type=i4] [debug line = 250:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !196 ; [#uses=2 type=i8*] [debug line = 250:2]
  %a = load i8* %buf.addr, align 1, !dbg !196     ; [#uses=3 type=i8] [debug line = 250:2]
  call void @llvm.dbg.value(metadata !{i8 %a}, i64 0, metadata !197), !dbg !196 ; [debug line = 250:2] [debug variable = a]
  %tmp.2 = or i4 %tmp..cast, 1, !dbg !198         ; [#uses=1 type=i4] [debug line = 250:14]
  %tmp.2.cast = zext i4 %tmp.2 to i32, !dbg !198  ; [#uses=1 type=i32] [debug line = 250:14]
  %buf.addr.12 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.2.cast, !dbg !198 ; [#uses=2 type=i8*] [debug line = 250:14]
  %b = load i8* %buf.addr.12, align 1, !dbg !198  ; [#uses=3 type=i8] [debug line = 250:14]
  call void @llvm.dbg.value(metadata !{i8 %b}, i64 0, metadata !199), !dbg !198 ; [debug line = 250:14] [debug variable = b]
  %tmp.3 = or i4 %tmp..cast, 2, !dbg !200         ; [#uses=1 type=i4] [debug line = 250:30]
  %tmp.3.cast = zext i4 %tmp.3 to i32, !dbg !200  ; [#uses=1 type=i32] [debug line = 250:30]
  %buf.addr.13 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.3.cast, !dbg !200 ; [#uses=2 type=i8*] [debug line = 250:30]
  %c = load i8* %buf.addr.13, align 1, !dbg !200  ; [#uses=4 type=i8] [debug line = 250:30]
  call void @llvm.dbg.value(metadata !{i8 %c}, i64 0, metadata !201), !dbg !200 ; [debug line = 250:30] [debug variable = c]
  %tmp.4 = or i4 %tmp..cast, 3, !dbg !202         ; [#uses=1 type=i4] [debug line = 250:46]
  %tmp.4.cast = zext i4 %tmp.4 to i32, !dbg !202  ; [#uses=1 type=i32] [debug line = 250:46]
  %buf.addr.14 = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp.4.cast, !dbg !202 ; [#uses=2 type=i8*] [debug line = 250:46]
  %d = load i8* %buf.addr.14, align 1, !dbg !202  ; [#uses=3 type=i8] [debug line = 250:46]
  call void @llvm.dbg.value(metadata !{i8 %d}, i64 0, metadata !203), !dbg !202 ; [debug line = 250:46] [debug variable = d]
  %x.assign = xor i8 %b, %a, !dbg !204            ; [#uses=3 type=i8] [debug line = 251:9]
  %tmp.6 = xor i8 %c, %x.assign, !dbg !204        ; [#uses=2 type=i8] [debug line = 251:9]
  %e = xor i8 %d, %tmp.6, !dbg !204               ; [#uses=3 type=i8] [debug line = 251:9]
  call void @llvm.dbg.value(metadata !{i8 %e}, i64 0, metadata !205), !dbg !204 ; [debug line = 251:9] [debug variable = e]
  call void @llvm.dbg.value(metadata !{i8 %x.assign}, i64 0, metadata !206), !dbg !211 ; [debug line = 172:26@252:23] [debug variable = x]
  %tmp.i = icmp slt i8 %x.assign, 0, !dbg !212    ; [#uses=1 type=i1] [debug line = 174:5@252:23]
  %tmp.1.i = shl i8 %x.assign, 1, !dbg !212       ; [#uses=2 type=i8] [debug line = 174:5@252:23]
  %tmp.2.i = xor i8 %tmp.1.i, 27, !dbg !212       ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp.4.i = select i1 %tmp.i, i8 %tmp.2.i, i8 %tmp.1.i, !dbg !212 ; [#uses=1 type=i8] [debug line = 174:5@252:23]
  %tmp1 = xor i8 %tmp.4.i, %e, !dbg !210          ; [#uses=1 type=i8] [debug line = 252:23]
  %tmp.9 = xor i8 %tmp1, %a, !dbg !210            ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %tmp.9, i8* %buf.addr, align 1, !dbg !210 ; [debug line = 252:23]
  %x.assign.1 = xor i8 %c, %b, !dbg !214          ; [#uses=2 type=i8] [debug line = 252:54]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.1}, i64 0, metadata !215), !dbg !216 ; [debug line = 172:26@252:54] [debug variable = x]
  %tmp.i8 = icmp slt i8 %x.assign.1, 0, !dbg !217 ; [#uses=1 type=i1] [debug line = 174:5@252:54]
  %tmp.1.i9 = shl i8 %x.assign.1, 1, !dbg !217    ; [#uses=2 type=i8] [debug line = 174:5@252:54]
  %tmp.2.i1 = xor i8 %tmp.1.i9, 27, !dbg !217     ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp.4.i1 = select i1 %tmp.i8, i8 %tmp.2.i1, i8 %tmp.1.i9, !dbg !217 ; [#uses=1 type=i8] [debug line = 174:5@252:54]
  %tmp2 = xor i8 %tmp.4.i1, %e, !dbg !214         ; [#uses=1 type=i8] [debug line = 252:54]
  %tmp.5 = xor i8 %tmp2, %b, !dbg !214            ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %tmp.5, i8* %buf.addr.12, align 1, !dbg !214 ; [debug line = 252:54]
  %x.assign.2 = xor i8 %d, %c, !dbg !218          ; [#uses=2 type=i8] [debug line = 253:25]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.2}, i64 0, metadata !219), !dbg !220 ; [debug line = 172:26@253:25] [debug variable = x]
  %tmp.i1 = icmp slt i8 %x.assign.2, 0, !dbg !221 ; [#uses=1 type=i1] [debug line = 174:5@253:25]
  %tmp.1.i1 = shl i8 %x.assign.2, 1, !dbg !221    ; [#uses=2 type=i8] [debug line = 174:5@253:25]
  %tmp.2.i2 = xor i8 %tmp.1.i1, 27, !dbg !221     ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp.4.i2 = select i1 %tmp.i1, i8 %tmp.2.i2, i8 %tmp.1.i1, !dbg !221 ; [#uses=1 type=i8] [debug line = 174:5@253:25]
  %tmp3 = xor i8 %tmp.4.i2, %e, !dbg !218         ; [#uses=1 type=i8] [debug line = 253:25]
  %tmp.1 = xor i8 %tmp3, %c, !dbg !218            ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %tmp.1, i8* %buf.addr.13, align 1, !dbg !218 ; [debug line = 253:25]
  %x.assign.3 = xor i8 %d, %a, !dbg !222          ; [#uses=2 type=i8] [debug line = 253:56]
  call void @llvm.dbg.value(metadata !{i8 %x.assign.3}, i64 0, metadata !223), !dbg !224 ; [debug line = 172:26@253:56] [debug variable = x]
  %tmp.i2 = icmp slt i8 %x.assign.3, 0, !dbg !225 ; [#uses=1 type=i1] [debug line = 174:5@253:56]
  %tmp.1.i2 = shl i8 %x.assign.3, 1, !dbg !225    ; [#uses=2 type=i8] [debug line = 174:5@253:56]
  %tmp.2.i3 = xor i8 %tmp.1.i2, 27, !dbg !225     ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.4.i3 = select i1 %tmp.i2, i8 %tmp.2.i3, i8 %tmp.1.i2, !dbg !225 ; [#uses=1 type=i8] [debug line = 174:5@253:56]
  %tmp.7 = xor i8 %tmp.4.i3, %tmp.6, !dbg !222    ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %tmp.7, i8* %buf.addr.14, align 1, !dbg !222 ; [debug line = 253:56]
  %i.7 = add i5 %i, 4, !dbg !226                  ; [#uses=1 type=i5] [debug line = 243:31]
  call void @llvm.dbg.value(metadata !{i5 %i.7}, i64 0, metadata !227), !dbg !226 ; [debug line = 243:31] [debug variable = i]
  br label %1, !dbg !226                          ; [debug line = 243:31]

; <label>:4                                       ; preds = %1
  ret void, !dbg !228                             ; [debug line = 255:1]
}

; [#uses=3]
define internal fastcc i8 @aes_expandEncKey([32 x i8]* %k, i8 %rc.read) {
  %k.addr = getelementptr [32 x i8]* %k, i32 0, i32 0 ; [#uses=2 type=i8*]
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %k, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [11 x i8]* @.str10, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[32 x i8]* %k}, i64 0, metadata !229), !dbg !233 ; [debug line = 258:32] [debug variable = k]
  call void @llvm.dbg.value(metadata !{i8 %rc.read}, i64 0, metadata !234), !dbg !235 ; [debug line = 258:44] [debug variable = rc]
  %k.addr.1 = getelementptr [32 x i8]* %k, i32 0, i32 29, !dbg !236 ; [#uses=1 type=i8*] [debug line = 262:5]
  %k.load = load i8* %k.addr.1, align 1, !dbg !236 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp = zext i8 %k.load to i32, !dbg !236        ; [#uses=1 type=i32] [debug line = 262:5]
  %sbox.addr = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp, !dbg !236 ; [#uses=1 type=i8*] [debug line = 262:5]
  %sbox.load = load i8* %sbox.addr, align 1, !dbg !236 ; [#uses=1 type=i8] [debug line = 262:5]
  %k.load.1 = load i8* %k.addr, align 1, !dbg !236 ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp1 = xor i8 %k.load.1, %rc.read, !dbg !236   ; [#uses=1 type=i8] [debug line = 262:5]
  %tmp. = xor i8 %tmp1, %sbox.load, !dbg !236     ; [#uses=1 type=i8] [debug line = 262:5]
  store i8 %tmp., i8* %k.addr, align 1, !dbg !236 ; [debug line = 262:5]
  %k.addr.2 = getelementptr [32 x i8]* %k, i32 0, i32 30, !dbg !238 ; [#uses=1 type=i8*] [debug line = 263:5]
  %k.load.2 = load i8* %k.addr.2, align 1, !dbg !238 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.8 = zext i8 %k.load.2 to i32, !dbg !238    ; [#uses=1 type=i32] [debug line = 263:5]
  %sbox.addr.1 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.8, !dbg !238 ; [#uses=1 type=i8*] [debug line = 263:5]
  %sbox.load.1 = load i8* %sbox.addr.1, align 1, !dbg !238 ; [#uses=1 type=i8] [debug line = 263:5]
  %k.addr.3 = getelementptr [32 x i8]* %k, i32 0, i32 1, !dbg !238 ; [#uses=2 type=i8*] [debug line = 263:5]
  %k.load.3 = load i8* %k.addr.3, align 1, !dbg !238 ; [#uses=1 type=i8] [debug line = 263:5]
  %tmp.9 = xor i8 %k.load.3, %sbox.load.1, !dbg !238 ; [#uses=1 type=i8] [debug line = 263:5]
  store i8 %tmp.9, i8* %k.addr.3, align 1, !dbg !238 ; [debug line = 263:5]
  %k.addr.4 = getelementptr [32 x i8]* %k, i32 0, i32 31, !dbg !239 ; [#uses=1 type=i8*] [debug line = 264:5]
  %k.load.4 = load i8* %k.addr.4, align 1, !dbg !239 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.10 = zext i8 %k.load.4 to i32, !dbg !239   ; [#uses=1 type=i32] [debug line = 264:5]
  %sbox.addr.2 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.10, !dbg !239 ; [#uses=1 type=i8*] [debug line = 264:5]
  %sbox.load.2 = load i8* %sbox.addr.2, align 1, !dbg !239 ; [#uses=1 type=i8] [debug line = 264:5]
  %k.addr.5 = getelementptr [32 x i8]* %k, i32 0, i32 2, !dbg !239 ; [#uses=2 type=i8*] [debug line = 264:5]
  %k.load.5 = load i8* %k.addr.5, align 1, !dbg !239 ; [#uses=1 type=i8] [debug line = 264:5]
  %tmp.11 = xor i8 %k.load.5, %sbox.load.2, !dbg !239 ; [#uses=1 type=i8] [debug line = 264:5]
  store i8 %tmp.11, i8* %k.addr.5, align 1, !dbg !239 ; [debug line = 264:5]
  %k.addr.6 = getelementptr [32 x i8]* %k, i32 0, i32 28, !dbg !240 ; [#uses=1 type=i8*] [debug line = 265:5]
  %k.load.6 = load i8* %k.addr.6, align 1, !dbg !240 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.12 = zext i8 %k.load.6 to i32, !dbg !240   ; [#uses=1 type=i32] [debug line = 265:5]
  %sbox.addr.3 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.12, !dbg !240 ; [#uses=1 type=i8*] [debug line = 265:5]
  %sbox.load.3 = load i8* %sbox.addr.3, align 1, !dbg !240 ; [#uses=1 type=i8] [debug line = 265:5]
  %k.addr.7 = getelementptr [32 x i8]* %k, i32 0, i32 3, !dbg !240 ; [#uses=2 type=i8*] [debug line = 265:5]
  %k.load.7 = load i8* %k.addr.7, align 1, !dbg !240 ; [#uses=1 type=i8] [debug line = 265:5]
  %tmp.13 = xor i8 %k.load.7, %sbox.load.3, !dbg !240 ; [#uses=1 type=i8] [debug line = 265:5]
  store i8 %tmp.13, i8* %k.addr.7, align 1, !dbg !240 ; [debug line = 265:5]
  %tmp.14 = shl i8 %rc.read, 1, !dbg !241         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.1 = lshr i8 %rc.read, 7, !dbg !241         ; [#uses=1 type=i8] [debug line = 266:5]
  %tmp.2 = trunc i8 %tmp.1 to i1, !dbg !241       ; [#uses=1 type=i1] [debug line = 266:5]
  %tmp.22.cast = select i1 %tmp.2, i8 27, i8 0    ; [#uses=1 type=i8]
  %tmp.15 = xor i8 %tmp.22.cast, %tmp.14, !dbg !241 ; [#uses=1 type=i8] [debug line = 266:5]
  br label %1, !dbg !242                          ; [debug line = 268:16]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ 4, %0 ], [ %i.8, %3 ]             ; [#uses=4 type=i5]
  %tmp.16 = icmp sgt i5 %i, -1, !dbg !242         ; [#uses=1 type=i1] [debug line = 268:16]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.16, label %3, label %4, !dbg !242    ; [debug line = 268:16]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str5) nounwind, !dbg !244 ; [debug line = 269:6]
  %tmp.17 = zext i5 %i to i32, !dbg !246          ; [#uses=1 type=i32] [debug line = 275:2]
  %tmp.25.cast = trunc i5 %i to i4                ; [#uses=7 type=i4]
  %sum = add i4 %tmp.25.cast, -4                  ; [#uses=1 type=i4]
  %sum.cast = zext i4 %sum to i32                 ; [#uses=1 type=i32]
  %k.addr.8 = getelementptr [32 x i8]* %k, i32 0, i32 %sum.cast, !dbg !246 ; [#uses=1 type=i8*] [debug line = 275:2]
  %k.load.8 = load i8* %k.addr.8, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  %k.addr.9 = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.17, !dbg !246 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.9 = load i8* %k.addr.9, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.18 = xor i8 %k.load.9, %k.load.8, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %tmp.18, i8* %k.addr.9, align 1, !dbg !246 ; [debug line = 275:2]
  %sum1 = add i4 %tmp.25.cast, -3                 ; [#uses=1 type=i4]
  %sum1.cast = zext i4 %sum1 to i32               ; [#uses=1 type=i32]
  %k.addr.10 = getelementptr [32 x i8]* %k, i32 0, i32 %sum1.cast, !dbg !246 ; [#uses=1 type=i8*] [debug line = 275:2]
  %k.load.10 = load i8* %k.addr.10, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.19 = or i4 %tmp.25.cast, 1, !dbg !246      ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.27.cast = zext i4 %tmp.19 to i32, !dbg !246 ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.11 = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.27.cast, !dbg !246 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.11 = load i8* %k.addr.11, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.20 = xor i8 %k.load.11, %k.load.10, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %tmp.20, i8* %k.addr.11, align 1, !dbg !246 ; [debug line = 275:2]
  %sum2 = add i4 %tmp.25.cast, -2                 ; [#uses=1 type=i4]
  %sum2.cast = zext i4 %sum2 to i32               ; [#uses=1 type=i32]
  %k.addr.12 = getelementptr [32 x i8]* %k, i32 0, i32 %sum2.cast, !dbg !246 ; [#uses=1 type=i8*] [debug line = 275:2]
  %k.load.12 = load i8* %k.addr.12, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.21 = or i4 %tmp.25.cast, 2, !dbg !246      ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.29.cast = zext i4 %tmp.21 to i32, !dbg !246 ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.13 = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.29.cast, !dbg !246 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.13 = load i8* %k.addr.13, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.22 = xor i8 %k.load.13, %k.load.12, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %tmp.22, i8* %k.addr.13, align 1, !dbg !246 ; [debug line = 275:2]
  %sum3 = add i4 %tmp.25.cast, -1                 ; [#uses=1 type=i4]
  %sum3.cast = zext i4 %sum3 to i32               ; [#uses=1 type=i32]
  %k.addr.14 = getelementptr [32 x i8]* %k, i32 0, i32 %sum3.cast, !dbg !246 ; [#uses=1 type=i8*] [debug line = 275:2]
  %k.load.14 = load i8* %k.addr.14, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.23 = or i4 %tmp.25.cast, 3, !dbg !246      ; [#uses=1 type=i4] [debug line = 275:2]
  %tmp.31.cast = zext i4 %tmp.23 to i32, !dbg !246 ; [#uses=1 type=i32] [debug line = 275:2]
  %k.addr.15 = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.31.cast, !dbg !246 ; [#uses=2 type=i8*] [debug line = 275:2]
  %k.load.15 = load i8* %k.addr.15, align 1, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  %tmp.24 = xor i8 %k.load.15, %k.load.14, !dbg !246 ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %tmp.24, i8* %k.addr.15, align 1, !dbg !246 ; [debug line = 275:2]
  %i.8 = add i5 %i, 4, !dbg !247                  ; [#uses=1 type=i5] [debug line = 268:31]
  call void @llvm.dbg.value(metadata !{i5 %i.8}, i64 0, metadata !248), !dbg !247 ; [debug line = 268:31] [debug variable = i]
  br label %1, !dbg !247                          ; [debug line = 268:31]

; <label>:4                                       ; preds = %1
  %k.addr.16 = getelementptr [32 x i8]* %k, i32 0, i32 12, !dbg !249 ; [#uses=1 type=i8*] [debug line = 278:5]
  %k.load.16 = load i8* %k.addr.16, align 1, !dbg !249 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.25 = zext i8 %k.load.16 to i32, !dbg !249  ; [#uses=1 type=i32] [debug line = 278:5]
  %sbox.addr.4 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.25, !dbg !249 ; [#uses=1 type=i8*] [debug line = 278:5]
  %sbox.load.4 = load i8* %sbox.addr.4, align 1, !dbg !249 ; [#uses=1 type=i8] [debug line = 278:5]
  %k.addr.17 = getelementptr [32 x i8]* %k, i32 0, i32 16, !dbg !249 ; [#uses=2 type=i8*] [debug line = 278:5]
  %k.load.17 = load i8* %k.addr.17, align 1, !dbg !249 ; [#uses=1 type=i8] [debug line = 278:5]
  %tmp.26 = xor i8 %k.load.17, %sbox.load.4, !dbg !249 ; [#uses=1 type=i8] [debug line = 278:5]
  store i8 %tmp.26, i8* %k.addr.17, align 1, !dbg !249 ; [debug line = 278:5]
  %k.addr.18 = getelementptr [32 x i8]* %k, i32 0, i32 13, !dbg !250 ; [#uses=1 type=i8*] [debug line = 279:5]
  %k.load.18 = load i8* %k.addr.18, align 1, !dbg !250 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.27 = zext i8 %k.load.18 to i32, !dbg !250  ; [#uses=1 type=i32] [debug line = 279:5]
  %sbox.addr.5 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.27, !dbg !250 ; [#uses=1 type=i8*] [debug line = 279:5]
  %sbox.load.5 = load i8* %sbox.addr.5, align 1, !dbg !250 ; [#uses=1 type=i8] [debug line = 279:5]
  %k.addr.19 = getelementptr [32 x i8]* %k, i32 0, i32 17, !dbg !250 ; [#uses=2 type=i8*] [debug line = 279:5]
  %k.load.19 = load i8* %k.addr.19, align 1, !dbg !250 ; [#uses=1 type=i8] [debug line = 279:5]
  %tmp.28 = xor i8 %k.load.19, %sbox.load.5, !dbg !250 ; [#uses=1 type=i8] [debug line = 279:5]
  store i8 %tmp.28, i8* %k.addr.19, align 1, !dbg !250 ; [debug line = 279:5]
  %k.addr.20 = getelementptr [32 x i8]* %k, i32 0, i32 14, !dbg !251 ; [#uses=1 type=i8*] [debug line = 280:5]
  %k.load.20 = load i8* %k.addr.20, align 1, !dbg !251 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.29 = zext i8 %k.load.20 to i32, !dbg !251  ; [#uses=1 type=i32] [debug line = 280:5]
  %sbox.addr.6 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.29, !dbg !251 ; [#uses=1 type=i8*] [debug line = 280:5]
  %sbox.load.6 = load i8* %sbox.addr.6, align 1, !dbg !251 ; [#uses=1 type=i8] [debug line = 280:5]
  %k.addr.21 = getelementptr [32 x i8]* %k, i32 0, i32 18, !dbg !251 ; [#uses=2 type=i8*] [debug line = 280:5]
  %k.load.21 = load i8* %k.addr.21, align 1, !dbg !251 ; [#uses=1 type=i8] [debug line = 280:5]
  %tmp.30 = xor i8 %k.load.21, %sbox.load.6, !dbg !251 ; [#uses=1 type=i8] [debug line = 280:5]
  store i8 %tmp.30, i8* %k.addr.21, align 1, !dbg !251 ; [debug line = 280:5]
  %k.addr.22 = getelementptr [32 x i8]* %k, i32 0, i32 15, !dbg !252 ; [#uses=1 type=i8*] [debug line = 281:5]
  %k.load.22 = load i8* %k.addr.22, align 1, !dbg !252 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.31 = zext i8 %k.load.22 to i32, !dbg !252  ; [#uses=1 type=i32] [debug line = 281:5]
  %sbox.addr.7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %tmp.31, !dbg !252 ; [#uses=1 type=i8*] [debug line = 281:5]
  %sbox.load.7 = load i8* %sbox.addr.7, align 1, !dbg !252 ; [#uses=1 type=i8] [debug line = 281:5]
  %k.addr.23 = getelementptr [32 x i8]* %k, i32 0, i32 19, !dbg !252 ; [#uses=2 type=i8*] [debug line = 281:5]
  %k.load.23 = load i8* %k.addr.23, align 1, !dbg !252 ; [#uses=1 type=i8] [debug line = 281:5]
  %tmp.32 = xor i8 %k.load.23, %sbox.load.7, !dbg !252 ; [#uses=1 type=i8] [debug line = 281:5]
  store i8 %tmp.32, i8* %k.addr.23, align 1, !dbg !252 ; [debug line = 281:5]
  br label %5, !dbg !253                          ; [debug line = 283:16]

; <label>:5                                       ; preds = %7, %4
  %i.1 = phi i6 [ 20, %4 ], [ %i.9, %7 ]          ; [#uses=4 type=i6]
  %tmp.33 = icmp sgt i6 %i.1, -1, !dbg !253       ; [#uses=1 type=i1] [debug line = 283:16]
  %6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %tmp.33, label %7, label %8, !dbg !253    ; [debug line = 283:16]

; <label>:7                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([5 x i8]* @.str6) nounwind, !dbg !255 ; [debug line = 284:6]
  %tmp.34 = zext i6 %i.1 to i32, !dbg !257        ; [#uses=1 type=i32] [debug line = 290:2]
  %tmp.42.cast = trunc i6 %i.1 to i5              ; [#uses=7 type=i5]
  %sum4 = add i5 %tmp.42.cast, -4                 ; [#uses=1 type=i5]
  %sum4.cast = zext i5 %sum4 to i32               ; [#uses=1 type=i32]
  %k.addr.24 = getelementptr [32 x i8]* %k, i32 0, i32 %sum4.cast, !dbg !257 ; [#uses=1 type=i8*] [debug line = 290:2]
  %k.load.24 = load i8* %k.addr.24, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  %k.addr.25 = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.34, !dbg !257 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.25 = load i8* %k.addr.25, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.35 = xor i8 %k.load.25, %k.load.24, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.35, i8* %k.addr.25, align 1, !dbg !257 ; [debug line = 290:2]
  %sum5 = add i5 %tmp.42.cast, -3                 ; [#uses=1 type=i5]
  %sum5.cast = zext i5 %sum5 to i32               ; [#uses=1 type=i32]
  %k.addr.26 = getelementptr [32 x i8]* %k, i32 0, i32 %sum5.cast, !dbg !257 ; [#uses=1 type=i8*] [debug line = 290:2]
  %k.load.26 = load i8* %k.addr.26, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.36 = or i5 %tmp.42.cast, 1, !dbg !257      ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.44.cast = zext i5 %tmp.36 to i32, !dbg !257 ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.27 = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.44.cast, !dbg !257 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.27 = load i8* %k.addr.27, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.37 = xor i8 %k.load.27, %k.load.26, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.37, i8* %k.addr.27, align 1, !dbg !257 ; [debug line = 290:2]
  %sum6 = add i5 %tmp.42.cast, -2                 ; [#uses=1 type=i5]
  %sum6.cast = zext i5 %sum6 to i32               ; [#uses=1 type=i32]
  %k.addr.28 = getelementptr [32 x i8]* %k, i32 0, i32 %sum6.cast, !dbg !257 ; [#uses=1 type=i8*] [debug line = 290:2]
  %k.load.28 = load i8* %k.addr.28, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.38 = or i5 %tmp.42.cast, 2, !dbg !257      ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.46.cast = zext i5 %tmp.38 to i32, !dbg !257 ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.29 = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.46.cast, !dbg !257 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.29 = load i8* %k.addr.29, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.39 = xor i8 %k.load.29, %k.load.28, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.39, i8* %k.addr.29, align 1, !dbg !257 ; [debug line = 290:2]
  %sum7 = add i5 %tmp.42.cast, -1                 ; [#uses=1 type=i5]
  %sum7.cast = zext i5 %sum7 to i32               ; [#uses=1 type=i32]
  %k.addr.30 = getelementptr [32 x i8]* %k, i32 0, i32 %sum7.cast, !dbg !257 ; [#uses=1 type=i8*] [debug line = 290:2]
  %k.load.30 = load i8* %k.addr.30, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.40 = or i5 %tmp.42.cast, 3, !dbg !257      ; [#uses=1 type=i5] [debug line = 290:2]
  %tmp.48.cast = zext i5 %tmp.40 to i32, !dbg !257 ; [#uses=1 type=i32] [debug line = 290:2]
  %k.addr.31 = getelementptr [32 x i8]* %k, i32 0, i32 %tmp.48.cast, !dbg !257 ; [#uses=2 type=i8*] [debug line = 290:2]
  %k.load.31 = load i8* %k.addr.31, align 1, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  %tmp.41 = xor i8 %k.load.31, %k.load.30, !dbg !257 ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %tmp.41, i8* %k.addr.31, align 1, !dbg !257 ; [debug line = 290:2]
  %i.9 = add i6 %i.1, 4, !dbg !258                ; [#uses=1 type=i6] [debug line = 283:32]
  call void @llvm.dbg.value(metadata !{i6 %i.9}, i64 0, metadata !248), !dbg !258 ; [debug line = 283:32] [debug variable = i]
  br label %5, !dbg !258                          ; [debug line = 283:32]

; <label>:8                                       ; preds = %5
  ret i8 %tmp.15, !dbg !259                       ; [debug line = 294:1]
}

; [#uses=1]
define internal fastcc void @aes_addRoundKey_cpy([16 x i8]* %buf, [32 x i8]* %key, [32 x i8]* %cpk) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %cpk, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str13, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %key, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [11 x i8]* @.str12, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !260), !dbg !264 ; [debug line = 210:35] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !265), !dbg !266 ; [debug line = 210:49] [debug variable = key]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %cpk}, i64 0, metadata !267), !dbg !268 ; [debug line = 210:63] [debug variable = cpk]
  br label %1, !dbg !269                          ; [debug line = 214:13]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.10, %3 ]          ; [#uses=3 type=i5]
  %i.10 = add i5 %i, -1, !dbg !269                ; [#uses=2 type=i5] [debug line = 214:13]
  %i.10.cast = sext i5 %i.10 to i8, !dbg !269     ; [#uses=1 type=i8] [debug line = 214:13]
  call void @llvm.dbg.value(metadata !{i5 %i.10}, i64 0, metadata !271), !dbg !269 ; [debug line = 214:13] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !269              ; [#uses=1 type=i1] [debug line = 214:13]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %4, label %3, !dbg !269       ; [debug line = 214:13]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([6 x i8]* @.str3) nounwind, !dbg !272 ; [debug line = 215:6]
  %tmp. = zext i8 %i.10.cast to i32, !dbg !274    ; [#uses=3 type=i32] [debug line = 221:2]
  %key.addr = getelementptr [32 x i8]* %key, i32 0, i32 %tmp., !dbg !274 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load = load i8* %key.addr, align 1, !dbg !274 ; [#uses=2 type=i8] [debug line = 221:2]
  %cpk.addr = getelementptr [32 x i8]* %cpk, i32 0, i32 %tmp., !dbg !274 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load, i8* %cpk.addr, align 1, !dbg !274 ; [debug line = 221:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !274 ; [#uses=2 type=i8*] [debug line = 221:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !274 ; [#uses=1 type=i8] [debug line = 221:2]
  %tmp.42 = xor i8 %buf.load, %key.load, !dbg !274 ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %tmp.42, i8* %buf.addr, align 1, !dbg !274 ; [debug line = 221:2]
  %sum5 = add i5 %i, 15                           ; [#uses=1 type=i5]
  %sum5.cast = zext i5 %sum5 to i32               ; [#uses=2 type=i32]
  %key.addr.1 = getelementptr [32 x i8]* %key, i32 0, i32 %sum5.cast, !dbg !274 ; [#uses=1 type=i8*] [debug line = 221:2]
  %key.load.1 = load i8* %key.addr.1, align 1, !dbg !274 ; [#uses=1 type=i8] [debug line = 221:2]
  %cpk.addr.1 = getelementptr [32 x i8]* %cpk, i32 0, i32 %sum5.cast, !dbg !274 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %key.load.1, i8* %cpk.addr.1, align 1, !dbg !274 ; [debug line = 221:2]
  br label %1, !dbg !275                          ; [debug line = 222:5]

; <label>:4                                       ; preds = %1
  ret void, !dbg !276                             ; [debug line = 223:1]
}

; [#uses=3]
define internal fastcc void @aes_addRoundKey([16 x i8]* %buf, [32 x i8]* %key, i6 %key.offset) {
  call void (...)* @_ssdm_op_SpecInterface([16 x i8]* %buf, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [4 x i8]* @.str14, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([32 x i8]* %key, [6 x i8]* @.str9, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [8 x i8]* @.str13, [7 x i8]* @.str11, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1)
  call void @llvm.dbg.value(metadata !{[16 x i8]* %buf}, i64 0, metadata !277), !dbg !279 ; [debug line = 194:31] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{[32 x i8]* %key}, i64 0, metadata !280), !dbg !281 ; [debug line = 194:45] [debug variable = key]
  br label %1, !dbg !282                          ; [debug line = 198:14]

; <label>:1                                       ; preds = %3, %0
  %i = phi i5 [ -16, %0 ], [ %i.11, %3 ]          ; [#uses=2 type=i5]
  %i.11 = add i5 %i, -1, !dbg !282                ; [#uses=3 type=i5] [debug line = 198:14]
  %i.11.cast = sext i5 %i.11 to i8, !dbg !282     ; [#uses=1 type=i8] [debug line = 198:14]
  call void @llvm.dbg.value(metadata !{i5 %i.11}, i64 0, metadata !284), !dbg !282 ; [debug line = 198:14] [debug variable = i]
  %tmp = icmp eq i5 %i, 0, !dbg !282              ; [#uses=1 type=i1] [debug line = 198:14]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) ; [#uses=0 type=i32]
  br i1 %tmp, label %4, label %3, !dbg !282       ; [debug line = 198:14]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @.str2) nounwind, !dbg !285 ; [debug line = 199:6]
  %tmp. = zext i8 %i.11.cast to i32, !dbg !287    ; [#uses=1 type=i32] [debug line = 205:2]
  %key.offset.cast = trunc i6 %key.offset to i5   ; [#uses=1 type=i5]
  %sum = add i5 %key.offset.cast, %i.11           ; [#uses=1 type=i5]
  %sum.cast = zext i5 %sum to i32                 ; [#uses=1 type=i32]
  %key.addr = getelementptr [32 x i8]* %key, i32 0, i32 %sum.cast, !dbg !287 ; [#uses=1 type=i8*] [debug line = 205:2]
  %key.load = load i8* %key.addr, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 205:2]
  %buf.addr = getelementptr [16 x i8]* %buf, i32 0, i32 %tmp., !dbg !287 ; [#uses=2 type=i8*] [debug line = 205:2]
  %buf.load = load i8* %buf.addr, align 1, !dbg !287 ; [#uses=1 type=i8] [debug line = 205:2]
  %tmp.43 = xor i8 %buf.load, %key.load, !dbg !287 ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %tmp.43, i8* %buf.addr, align 1, !dbg !287 ; [debug line = 205:2]
  br label %1, !dbg !288                          ; [debug line = 206:5]

; <label>:4                                       ; preds = %1
  ret void, !dbg !289                             ; [debug line = 207:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=9]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=9]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=14]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecBurst(...)

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
!31 = metadata !{i32 786449, i32 0, i32 1, metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls/encrypt/solution/.autopilot/db/aes.pragma.2.c", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !32} ; [ DW_TAG_compile_unit ]
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !34, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !60, metadata !61, metadata !62, metadata !65, metadata !68, metadata !69, metadata !70}
!34 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_sub", metadata !"unroll_factor_sub", metadata !"", metadata !35, i32 76, metadata !36, i32 0, i32 1, i32* @unroll_factor_sub} ; [ DW_TAG_variable ]
!35 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ]
!37 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_cpkey", metadata !"pipeline_ii_cpkey", metadata !"", metadata !35, i32 68, metadata !36, i32 0, i32 1, i32* @pipeline_ii_cpkey} ; [ DW_TAG_variable ]
!39 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_mix", metadata !"pipeline_ii_mix", metadata !"", metadata !35, i32 69, metadata !36, i32 0, i32 1, i32* @pipeline_ii_mix} ; [ DW_TAG_variable ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp2", metadata !"unroll_factor_exp2", metadata !"", metadata !35, i32 81, metadata !36, i32 0, i32 1, i32* @unroll_factor_exp2} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_mix", metadata !"unroll_factor_mix", metadata !"", metadata !35, i32 79, metadata !36, i32 0, i32 1, i32* @unroll_factor_mix} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb2", metadata !"pipeline_ii_ecb2", metadata !"", metadata !35, i32 73, metadata !36, i32 0, i32 1, i32* @pipeline_ii_ecb2} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb1", metadata !"pipeline_ii_ecb1", metadata !"", metadata !35, i32 72, metadata !36, i32 0, i32 1, i32* @pipeline_ii_ecb1} ; [ DW_TAG_variable ]
!44 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb3", metadata !"unroll_factor_ecb3", metadata !"", metadata !35, i32 84, metadata !36, i32 0, i32 1, i32* @unroll_factor_ecb3} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp2", metadata !"pipeline_ii_exp2", metadata !"", metadata !35, i32 71, metadata !36, i32 0, i32 1, i32* @pipeline_ii_exp2} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_exp1", metadata !"pipeline_ii_exp1", metadata !"", metadata !35, i32 70, metadata !36, i32 0, i32 1, i32* @pipeline_ii_exp1} ; [ DW_TAG_variable ]
!47 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_ecb3", metadata !"pipeline_ii_ecb3", metadata !"", metadata !35, i32 74, metadata !36, i32 0, i32 1, i32* @pipeline_ii_ecb3} ; [ DW_TAG_variable ]
!48 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_exp1", metadata !"unroll_factor_exp1", metadata !"", metadata !35, i32 80, metadata !36, i32 0, i32 1, i32* @unroll_factor_exp1} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_addkey", metadata !"pipeline_ii_addkey", metadata !"", metadata !35, i32 67, metadata !36, i32 0, i32 1, i32* @pipeline_ii_addkey} ; [ DW_TAG_variable ]
!50 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_cpkey", metadata !"unroll_factor_cpkey", metadata !"", metadata !35, i32 78, metadata !36, i32 0, i32 1, i32* @unroll_factor_cpkey} ; [ DW_TAG_variable ]
!51 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb1", metadata !"unroll_factor_ecb1", metadata !"", metadata !35, i32 82, metadata !36, i32 0, i32 1, i32* @unroll_factor_ecb1} ; [ DW_TAG_variable ]
!52 = metadata !{i32 786484, i32 0, null, metadata !"pipeline_ii_sub", metadata !"pipeline_ii_sub", metadata !"", metadata !35, i32 66, metadata !36, i32 0, i32 1, i32* @pipeline_ii_sub} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786484, i32 0, null, metadata !"sbox", metadata !"sbox", metadata !"", metadata !35, i32 89, metadata !54, i32 0, i32 1, [256 x i8]* @sbox} ; [ DW_TAG_variable ]
!54 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !55, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ]
!55 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ]
!56 = metadata !{i32 786454, null, metadata !"uint8_t", metadata !35, i32 48, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ]
!57 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 255}      ; [ DW_TAG_subrange_type ]
!60 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_ecb2", metadata !"unroll_factor_ecb2", metadata !"", metadata !35, i32 83, metadata !36, i32 0, i32 1, i32* @unroll_factor_ecb2} ; [ DW_TAG_variable ]
!61 = metadata !{i32 786484, i32 0, null, metadata !"unroll_factor_addkey", metadata !"unroll_factor_addkey", metadata !"", metadata !35, i32 77, metadata !36, i32 0, i32 1, i32* @unroll_factor_addkey} ; [ DW_TAG_variable ]
!62 = metadata !{i32 786484, i32 0, null, metadata !"INPUT_SIZE", metadata !"INPUT_SIZE", metadata !"", metadata !63, i32 45, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", null} ; [ DW_TAG_file_type ]
!64 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!65 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !66, i32 320, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!66 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", null} ; [ DW_TAG_file_type ]
!67 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !66, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!68 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !66, i32 321, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!69 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !66, i32 322, metadata !67, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!70 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !71, i32 26, metadata !64, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!71 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", null} ; [ DW_TAG_file_type ]
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
!123 = metadata !{i32 308, i32 17, metadata !122, null}
!124 = metadata !{i32 316, i32 17, metadata !125, null}
!125 = metadata !{i32 786443, metadata !119, i32 316, i32 12, metadata !35, i32 19} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 308, i32 37, metadata !121, null}
!127 = metadata !{i32 308, i32 32, metadata !122, null}
!128 = metadata !{i32 786688, metadata !119, metadata !"i", metadata !35, i32 306, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 316, i32 29, metadata !130, null}
!130 = metadata !{i32 786443, metadata !125, i32 316, i32 28, metadata !35, i32 20} ; [ DW_TAG_lexical_block ]
!131 = metadata !{i32 322, i32 2, metadata !130, null}
!132 = metadata !{i32 786688, metadata !119, metadata !"rcon", metadata !35, i32 305, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 323, i32 5, metadata !130, null}
!134 = metadata !{i32 326, i32 5, metadata !119, null}
!135 = metadata !{i32 327, i32 16, metadata !136, null}
!136 = metadata !{i32 786443, metadata !119, i32 327, i32 12, metadata !35, i32 21} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 328, i32 6, metadata !138, null}
!138 = metadata !{i32 786443, metadata !136, i32 328, i32 5, metadata !35, i32 22} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 334, i32 2, metadata !138, null}
!140 = metadata !{i32 335, i32 9, metadata !138, null}
!141 = metadata !{i32 336, i32 9, metadata !138, null}
!142 = metadata !{i32 337, i32 9, metadata !138, null}
!143 = metadata !{i32 337, i32 21, metadata !138, null}
!144 = metadata !{i32 338, i32 14, metadata !138, null}
!145 = metadata !{i32 338, i32 48, metadata !138, null}
!146 = metadata !{i32 327, i32 41, metadata !136, null}
!147 = metadata !{i32 340, i32 5, metadata !119, null}
!148 = metadata !{i32 341, i32 5, metadata !119, null}
!149 = metadata !{i32 342, i32 5, metadata !119, null}
!150 = metadata !{i32 343, i32 5, metadata !119, null}
!151 = metadata !{i32 344, i32 1, metadata !119, null}
!152 = metadata !{i32 786689, metadata !153, metadata !"buf", null, i32 178, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!153 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_subBytes", metadata !"aes_subBytes", metadata !"", metadata !35, i32 178, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 179} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{null, metadata !100}
!156 = metadata !{i32 178, i32 28, metadata !153, null}
!157 = metadata !{i32 182, i32 11, metadata !158, null}
!158 = metadata !{i32 786443, metadata !153, i32 179, i32 1, metadata !35, i32 1} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 786688, metadata !158, metadata !"i", metadata !35, i32 180, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!160 = metadata !{i32 183, i32 6, metadata !161, null}
!161 = metadata !{i32 786443, metadata !158, i32 183, i32 5, metadata !35, i32 2} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 189, i32 2, metadata !161, null}
!163 = metadata !{i32 190, i32 5, metadata !161, null}
!164 = metadata !{i32 191, i32 1, metadata !158, null}
!165 = metadata !{i32 786689, metadata !166, metadata !"buf", null, i32 227, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_shiftRows", metadata !"aes_shiftRows", metadata !"", metadata !35, i32 227, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 228} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 227, i32 29, metadata !166, null}
!168 = metadata !{i32 231, i32 5, metadata !169, null}
!169 = metadata !{i32 786443, metadata !166, i32 228, i32 1, metadata !35, i32 7} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786688, metadata !169, metadata !"i", metadata !35, i32 229, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!171 = metadata !{i32 231, i32 17, metadata !169, null}
!172 = metadata !{i32 231, i32 34, metadata !169, null}
!173 = metadata !{i32 231, i32 51, metadata !169, null}
!174 = metadata !{i32 231, i32 69, metadata !169, null}
!175 = metadata !{i32 232, i32 5, metadata !169, null}
!176 = metadata !{i32 232, i32 18, metadata !169, null}
!177 = metadata !{i32 232, i32 36, metadata !169, null}
!178 = metadata !{i32 233, i32 5, metadata !169, null}
!179 = metadata !{i32 786688, metadata !169, metadata !"j", metadata !35, i32 229, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 233, i32 17, metadata !169, null}
!181 = metadata !{i32 233, i32 35, metadata !169, null}
!182 = metadata !{i32 233, i32 54, metadata !169, null}
!183 = metadata !{i32 233, i32 72, metadata !169, null}
!184 = metadata !{i32 234, i32 5, metadata !169, null}
!185 = metadata !{i32 234, i32 18, metadata !169, null}
!186 = metadata !{i32 234, i32 36, metadata !169, null}
!187 = metadata !{i32 236, i32 1, metadata !169, null}
!188 = metadata !{i32 786689, metadata !189, metadata !"buf", null, i32 239, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!189 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_mixColumns", metadata !"aes_mixColumns", metadata !"", metadata !35, i32 239, metadata !154, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 240} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 239, i32 30, metadata !189, null}
!191 = metadata !{i32 243, i32 16, metadata !192, null}
!192 = metadata !{i32 786443, metadata !193, i32 243, i32 11, metadata !35, i32 9} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 786443, metadata !189, i32 240, i32 1, metadata !35, i32 8} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 244, i32 6, metadata !195, null}
!195 = metadata !{i32 786443, metadata !192, i32 244, i32 5, metadata !35, i32 10} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 250, i32 2, metadata !195, null}
!197 = metadata !{i32 786688, metadata !193, metadata !"a", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!198 = metadata !{i32 250, i32 14, metadata !195, null}
!199 = metadata !{i32 786688, metadata !193, metadata !"b", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!200 = metadata !{i32 250, i32 30, metadata !195, null}
!201 = metadata !{i32 786688, metadata !193, metadata !"c", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 250, i32 46, metadata !195, null}
!203 = metadata !{i32 786688, metadata !193, metadata !"d", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!204 = metadata !{i32 251, i32 9, metadata !195, null}
!205 = metadata !{i32 786688, metadata !193, metadata !"e", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!206 = metadata !{i32 786689, metadata !207, metadata !"x", metadata !35, i32 16777388, metadata !56, i32 0, metadata !210} ; [ DW_TAG_arg_variable ]
!207 = metadata !{i32 786478, i32 0, metadata !35, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !35, i32 172, metadata !208, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 173} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{metadata !56, metadata !56}
!210 = metadata !{i32 252, i32 23, metadata !195, null}
!211 = metadata !{i32 172, i32 26, metadata !207, metadata !210}
!212 = metadata !{i32 174, i32 5, metadata !213, metadata !210}
!213 = metadata !{i32 786443, metadata !207, i32 173, i32 1, metadata !35, i32 0} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 252, i32 54, metadata !195, null}
!215 = metadata !{i32 786689, metadata !207, metadata !"x", metadata !35, i32 16777388, metadata !56, i32 0, metadata !214} ; [ DW_TAG_arg_variable ]
!216 = metadata !{i32 172, i32 26, metadata !207, metadata !214}
!217 = metadata !{i32 174, i32 5, metadata !213, metadata !214}
!218 = metadata !{i32 253, i32 25, metadata !195, null}
!219 = metadata !{i32 786689, metadata !207, metadata !"x", metadata !35, i32 16777388, metadata !56, i32 0, metadata !218} ; [ DW_TAG_arg_variable ]
!220 = metadata !{i32 172, i32 26, metadata !207, metadata !218}
!221 = metadata !{i32 174, i32 5, metadata !213, metadata !218}
!222 = metadata !{i32 253, i32 56, metadata !195, null}
!223 = metadata !{i32 786689, metadata !207, metadata !"x", metadata !35, i32 16777388, metadata !56, i32 0, metadata !222} ; [ DW_TAG_arg_variable ]
!224 = metadata !{i32 172, i32 26, metadata !207, metadata !222}
!225 = metadata !{i32 174, i32 5, metadata !213, metadata !222}
!226 = metadata !{i32 243, i32 31, metadata !192, null}
!227 = metadata !{i32 786688, metadata !193, metadata !"i", metadata !35, i32 241, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 255, i32 1, metadata !193, null}
!229 = metadata !{i32 786689, metadata !230, metadata !"k", null, i32 258, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!230 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_expandEncKey", metadata !"aes_expandEncKey", metadata !"", metadata !35, i32 258, metadata !231, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 259} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{null, metadata !100, metadata !100}
!233 = metadata !{i32 258, i32 32, metadata !230, null}
!234 = metadata !{i32 790532, metadata !230, metadata !"rc", null, i32 258, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable_ro ]
!235 = metadata !{i32 258, i32 44, metadata !230, null}
!236 = metadata !{i32 262, i32 5, metadata !237, null}
!237 = metadata !{i32 786443, metadata !230, i32 259, i32 1, metadata !35, i32 11} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 263, i32 5, metadata !237, null}
!239 = metadata !{i32 264, i32 5, metadata !237, null}
!240 = metadata !{i32 265, i32 5, metadata !237, null}
!241 = metadata !{i32 266, i32 5, metadata !237, null}
!242 = metadata !{i32 268, i32 16, metadata !243, null}
!243 = metadata !{i32 786443, metadata !237, i32 268, i32 12, metadata !35, i32 12} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 269, i32 6, metadata !245, null}
!245 = metadata !{i32 786443, metadata !243, i32 269, i32 5, metadata !35, i32 13} ; [ DW_TAG_lexical_block ]
!246 = metadata !{i32 275, i32 2, metadata !245, null}
!247 = metadata !{i32 268, i32 31, metadata !243, null}
!248 = metadata !{i32 786688, metadata !237, metadata !"i", metadata !35, i32 260, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!249 = metadata !{i32 278, i32 5, metadata !237, null}
!250 = metadata !{i32 279, i32 5, metadata !237, null}
!251 = metadata !{i32 280, i32 5, metadata !237, null}
!252 = metadata !{i32 281, i32 5, metadata !237, null}
!253 = metadata !{i32 283, i32 16, metadata !254, null}
!254 = metadata !{i32 786443, metadata !237, i32 283, i32 12, metadata !35, i32 14} ; [ DW_TAG_lexical_block ]
!255 = metadata !{i32 284, i32 6, metadata !256, null}
!256 = metadata !{i32 786443, metadata !254, i32 284, i32 5, metadata !35, i32 15} ; [ DW_TAG_lexical_block ]
!257 = metadata !{i32 290, i32 2, metadata !256, null}
!258 = metadata !{i32 283, i32 32, metadata !254, null}
!259 = metadata !{i32 294, i32 1, metadata !237, null}
!260 = metadata !{i32 786689, metadata !261, metadata !"buf", null, i32 210, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!261 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_addRoundKey_cpy", metadata !"aes_addRoundKey_cpy", metadata !"", metadata !35, i32 210, metadata !262, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 211} ; [ DW_TAG_subprogram ]
!262 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!263 = metadata !{null, metadata !100, metadata !100, metadata !100}
!264 = metadata !{i32 210, i32 35, metadata !261, null}
!265 = metadata !{i32 786689, metadata !261, metadata !"key", null, i32 210, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!266 = metadata !{i32 210, i32 49, metadata !261, null}
!267 = metadata !{i32 786689, metadata !261, metadata !"cpk", null, i32 210, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 210, i32 63, metadata !261, null}
!269 = metadata !{i32 214, i32 13, metadata !270, null}
!270 = metadata !{i32 786443, metadata !261, i32 211, i32 1, metadata !35, i32 5} ; [ DW_TAG_lexical_block ]
!271 = metadata !{i32 786688, metadata !270, metadata !"i", metadata !35, i32 212, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!272 = metadata !{i32 215, i32 6, metadata !273, null}
!273 = metadata !{i32 786443, metadata !270, i32 215, i32 5, metadata !35, i32 6} ; [ DW_TAG_lexical_block ]
!274 = metadata !{i32 221, i32 2, metadata !273, null}
!275 = metadata !{i32 222, i32 5, metadata !273, null}
!276 = metadata !{i32 223, i32 1, metadata !270, null}
!277 = metadata !{i32 786689, metadata !278, metadata !"buf", null, i32 194, metadata !114, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!278 = metadata !{i32 786478, i32 0, metadata !35, metadata !"aes_addRoundKey", metadata !"aes_addRoundKey", metadata !"", metadata !35, i32 194, metadata !231, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !101, i32 195} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 194, i32 31, metadata !278, null}
!280 = metadata !{i32 786689, metadata !278, metadata !"key", null, i32 194, metadata !103, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!281 = metadata !{i32 194, i32 45, metadata !278, null}
!282 = metadata !{i32 198, i32 14, metadata !283, null}
!283 = metadata !{i32 786443, metadata !278, i32 195, i32 1, metadata !35, i32 3} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 786688, metadata !283, metadata !"i", metadata !35, i32 196, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!285 = metadata !{i32 199, i32 6, metadata !286, null}
!286 = metadata !{i32 786443, metadata !283, i32 199, i32 5, metadata !35, i32 4} ; [ DW_TAG_lexical_block ]
!287 = metadata !{i32 205, i32 2, metadata !286, null}
!288 = metadata !{i32 206, i32 5, metadata !286, null}
!289 = metadata !{i32 207, i32 1, metadata !283, null}
