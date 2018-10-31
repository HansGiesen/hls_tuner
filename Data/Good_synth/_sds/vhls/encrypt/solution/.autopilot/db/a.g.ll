; ModuleID = '/scratch/local/tmp.7aow7oM1KP/_sds/vhls/encrypt/solution/.autopilot/db/a.g.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@pipeline_ii_sub = constant i32 1, align 4        ; [#uses=0 type=i32*]
@pipeline_ii_addkey = constant i32 1, align 4     ; [#uses=0 type=i32*]
@pipeline_ii_cpkey = constant i32 1, align 4      ; [#uses=0 type=i32*]
@pipeline_ii_mix = constant i32 1, align 4        ; [#uses=0 type=i32*]
@pipeline_ii_exp1 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_exp2 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb1 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb2 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@pipeline_ii_ecb3 = constant i32 1, align 4       ; [#uses=0 type=i32*]
@unroll_factor_sub = constant i32 1, align 4      ; [#uses=0 type=i32*]
@unroll_factor_addkey = constant i32 1, align 4   ; [#uses=0 type=i32*]
@unroll_factor_cpkey = constant i32 1, align 4    ; [#uses=0 type=i32*]
@unroll_factor_mix = constant i32 1, align 4      ; [#uses=0 type=i32*]
@unroll_factor_exp1 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_exp2 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb1 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb2 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@unroll_factor_ecb3 = constant i32 1, align 4     ; [#uses=0 type=i32*]
@sbox = constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\5C\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 1 ; [#uses=9 type=[256 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"sub\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [7 x i8] c"addkey\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"cpkey\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [4 x i8] c"mix\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"exp1\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str6 = private unnamed_addr constant [5 x i8] c"exp2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str7 = private unnamed_addr constant [7 x i8] c"RAM_1P\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str8 = private unnamed_addr constant [5 x i8] c"bram\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str9 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str10 = private unnamed_addr constant [11 x i8] c"ctx_deckey\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str11 = private unnamed_addr constant [7 x i8] c"direct\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str12 = private unnamed_addr constant [11 x i8] c"ctx_enckey\00", align 1 ; [#uses=1 type=[11 x i8]*]
@.str13 = private unnamed_addr constant [8 x i8] c"ctx_key\00", align 1 ; [#uses=1 type=[8 x i8]*]
@.str14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str15 = private unnamed_addr constant [5 x i8] c"ecb1\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str16 = private unnamed_addr constant [5 x i8] c"ecb2\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str17 = private unnamed_addr constant [5 x i8] c"ecb3\00", align 1 ; [#uses=1 type=[5 x i8]*]
@INPUT_SIZE = external global i32                 ; [#uses=0 type=i32*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=4]
define zeroext i8 @rj_xtime(i8 zeroext %x) nounwind {
  %1 = alloca i8, align 1                         ; [#uses=4 type=i8*]
  store i8 %x, i8* %1, align 1
  call void @llvm.dbg.declare(metadata !{i8* %1}, metadata !99), !dbg !100 ; [debug line = 172:26] [debug variable = x]
  %2 = load i8* %1, align 1, !dbg !101            ; [#uses=1 type=i8] [debug line = 174:5]
  %3 = zext i8 %2 to i32, !dbg !101               ; [#uses=1 type=i32] [debug line = 174:5]
  %4 = and i32 %3, 128, !dbg !101                 ; [#uses=1 type=i32] [debug line = 174:5]
  %5 = icmp ne i32 %4, 0, !dbg !101               ; [#uses=1 type=i1] [debug line = 174:5]
  br i1 %5, label %6, label %11, !dbg !101        ; [debug line = 174:5]

; <label>:6                                       ; preds = %0
  %7 = load i8* %1, align 1, !dbg !101            ; [#uses=1 type=i8] [debug line = 174:5]
  %8 = zext i8 %7 to i32, !dbg !101               ; [#uses=1 type=i32] [debug line = 174:5]
  %9 = shl i32 %8, 1, !dbg !101                   ; [#uses=1 type=i32] [debug line = 174:5]
  %10 = xor i32 %9, 27, !dbg !101                 ; [#uses=1 type=i32] [debug line = 174:5]
  br label %15, !dbg !101                         ; [debug line = 174:5]

; <label>:11                                      ; preds = %0
  %12 = load i8* %1, align 1, !dbg !101           ; [#uses=1 type=i8] [debug line = 174:5]
  %13 = zext i8 %12 to i32, !dbg !101             ; [#uses=1 type=i32] [debug line = 174:5]
  %14 = shl i32 %13, 1, !dbg !101                 ; [#uses=1 type=i32] [debug line = 174:5]
  br label %15, !dbg !101                         ; [debug line = 174:5]

; <label>:15                                      ; preds = %11, %6
  %16 = phi i32 [ %10, %6 ], [ %14, %11 ], !dbg !101 ; [#uses=1 type=i32] [debug line = 174:5]
  %17 = trunc i32 %16 to i8, !dbg !101            ; [#uses=1 type=i8] [debug line = 174:5]
  ret i8 %17, !dbg !101                           ; [debug line = 174:5]
}

; [#uses=30]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
define void @aes_subBytes(i8* %buf) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !103), !dbg !104 ; [debug line = 178:28] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !105), !dbg !107 ; [debug line = 180:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !108         ; [debug line = 180:28]
  br label %2, !dbg !108                          ; [debug line = 180:28]

; <label>:2                                       ; preds = %0
  br label %3, !dbg !109                          ; [debug line = 182:11]

; <label>:3                                       ; preds = %7, %2
  %4 = load i8* %i, align 1, !dbg !109            ; [#uses=2 type=i8] [debug line = 182:11]
  %5 = add i8 %4, -1, !dbg !109                   ; [#uses=1 type=i8] [debug line = 182:11]
  store i8 %5, i8* %i, align 1, !dbg !109         ; [debug line = 182:11]
  %6 = icmp ne i8 %4, 0, !dbg !109                ; [#uses=1 type=i1] [debug line = 182:11]
  br i1 %6, label %7, label %20, !dbg !109        ; [debug line = 182:11]

; <label>:7                                       ; preds = %3
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !110 ; [debug line = 183:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !110 ; [debug line = 183:6]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !112 ; [debug line = 187:1]
  %8 = load i8* %i, align 1, !dbg !113            ; [#uses=1 type=i8] [debug line = 189:2]
  %9 = zext i8 %8 to i32, !dbg !113               ; [#uses=1 type=i32] [debug line = 189:2]
  %10 = load i8** %1, align 4, !dbg !113          ; [#uses=1 type=i8*] [debug line = 189:2]
  %11 = getelementptr inbounds i8* %10, i32 %9, !dbg !113 ; [#uses=1 type=i8*] [debug line = 189:2]
  %12 = load i8* %11, align 1, !dbg !113          ; [#uses=1 type=i8] [debug line = 189:2]
  %13 = zext i8 %12 to i32, !dbg !113             ; [#uses=1 type=i32] [debug line = 189:2]
  %14 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %13, !dbg !113 ; [#uses=1 type=i8*] [debug line = 189:2]
  %15 = load i8* %14, align 1, !dbg !113          ; [#uses=1 type=i8] [debug line = 189:2]
  %16 = load i8* %i, align 1, !dbg !113           ; [#uses=1 type=i8] [debug line = 189:2]
  %17 = zext i8 %16 to i32, !dbg !113             ; [#uses=1 type=i32] [debug line = 189:2]
  %18 = load i8** %1, align 4, !dbg !113          ; [#uses=1 type=i8*] [debug line = 189:2]
  %19 = getelementptr inbounds i8* %18, i32 %17, !dbg !113 ; [#uses=1 type=i8*] [debug line = 189:2]
  store i8 %15, i8* %19, align 1, !dbg !113       ; [debug line = 189:2]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !114 ; [debug line = 190:5]
  br label %3, !dbg !114                          ; [debug line = 190:5]

; <label>:20                                      ; preds = %3
  ret void, !dbg !115                             ; [debug line = 191:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=3]
define void @aes_addRoundKey(i8* %buf, i8* %key) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 4                        ; [#uses=2 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !116), !dbg !117 ; [debug line = 194:31] [debug variable = buf]
  store i8* %key, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !118), !dbg !119 ; [debug line = 194:45] [debug variable = key]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !120), !dbg !122 ; [debug line = 196:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !123         ; [debug line = 196:28]
  br label %3, !dbg !123                          ; [debug line = 196:28]

; <label>:3                                       ; preds = %0
  br label %4, !dbg !124                          ; [debug line = 198:14]

; <label>:4                                       ; preds = %8, %3
  %5 = load i8* %i, align 1, !dbg !124            ; [#uses=2 type=i8] [debug line = 198:14]
  %6 = add i8 %5, -1, !dbg !124                   ; [#uses=1 type=i8] [debug line = 198:14]
  store i8 %6, i8* %i, align 1, !dbg !124         ; [debug line = 198:14]
  %7 = icmp ne i8 %5, 0, !dbg !124                ; [#uses=1 type=i1] [debug line = 198:14]
  br i1 %7, label %8, label %23, !dbg !124        ; [debug line = 198:14]

; <label>:8                                       ; preds = %4
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !125 ; [debug line = 199:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !125 ; [debug line = 199:6]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !127 ; [debug line = 203:1]
  %9 = load i8* %i, align 1, !dbg !128            ; [#uses=1 type=i8] [debug line = 205:2]
  %10 = zext i8 %9 to i32, !dbg !128              ; [#uses=1 type=i32] [debug line = 205:2]
  %11 = load i8** %2, align 4, !dbg !128          ; [#uses=1 type=i8*] [debug line = 205:2]
  %12 = getelementptr inbounds i8* %11, i32 %10, !dbg !128 ; [#uses=1 type=i8*] [debug line = 205:2]
  %13 = load i8* %12, align 1, !dbg !128          ; [#uses=1 type=i8] [debug line = 205:2]
  %14 = zext i8 %13 to i32, !dbg !128             ; [#uses=1 type=i32] [debug line = 205:2]
  %15 = load i8* %i, align 1, !dbg !128           ; [#uses=1 type=i8] [debug line = 205:2]
  %16 = zext i8 %15 to i32, !dbg !128             ; [#uses=1 type=i32] [debug line = 205:2]
  %17 = load i8** %1, align 4, !dbg !128          ; [#uses=1 type=i8*] [debug line = 205:2]
  %18 = getelementptr inbounds i8* %17, i32 %16, !dbg !128 ; [#uses=2 type=i8*] [debug line = 205:2]
  %19 = load i8* %18, align 1, !dbg !128          ; [#uses=1 type=i8] [debug line = 205:2]
  %20 = zext i8 %19 to i32, !dbg !128             ; [#uses=1 type=i32] [debug line = 205:2]
  %21 = xor i32 %20, %14, !dbg !128               ; [#uses=1 type=i32] [debug line = 205:2]
  %22 = trunc i32 %21 to i8, !dbg !128            ; [#uses=1 type=i8] [debug line = 205:2]
  store i8 %22, i8* %18, align 1, !dbg !128       ; [debug line = 205:2]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 206:5]
  br label %4, !dbg !129                          ; [debug line = 206:5]

; <label>:23                                      ; preds = %4
  ret void, !dbg !130                             ; [debug line = 207:1]
}

; [#uses=1]
define void @aes_addRoundKey_cpy(i8* %buf, i8* %key, i8* %cpk) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=2 type=i8**]
  %2 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %3 = alloca i8*, align 4                        ; [#uses=3 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=8 type=i8*]
  store i8* %buf, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !131), !dbg !132 ; [debug line = 210:35] [debug variable = buf]
  store i8* %key, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !133), !dbg !134 ; [debug line = 210:49] [debug variable = key]
  store i8* %cpk, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !135), !dbg !136 ; [debug line = 210:63] [debug variable = cpk]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !137), !dbg !139 ; [debug line = 212:22] [debug variable = i]
  store i8 16, i8* %i, align 1, !dbg !140         ; [debug line = 212:28]
  br label %4, !dbg !140                          ; [debug line = 212:28]

; <label>:4                                       ; preds = %0
  br label %5, !dbg !141                          ; [debug line = 214:13]

; <label>:5                                       ; preds = %9, %4
  %6 = load i8* %i, align 1, !dbg !141            ; [#uses=2 type=i8] [debug line = 214:13]
  %7 = add i8 %6, -1, !dbg !141                   ; [#uses=1 type=i8] [debug line = 214:13]
  store i8 %7, i8* %i, align 1, !dbg !141         ; [debug line = 214:13]
  %8 = icmp ne i8 %6, 0, !dbg !141                ; [#uses=1 type=i1] [debug line = 214:13]
  br i1 %8, label %9, label %39, !dbg !141        ; [debug line = 214:13]

; <label>:9                                       ; preds = %5
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 215:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 215:6]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !144 ; [debug line = 219:1]
  %10 = load i8* %i, align 1, !dbg !145           ; [#uses=1 type=i8] [debug line = 221:2]
  %11 = zext i8 %10 to i32, !dbg !145             ; [#uses=1 type=i32] [debug line = 221:2]
  %12 = load i8** %2, align 4, !dbg !145          ; [#uses=1 type=i8*] [debug line = 221:2]
  %13 = getelementptr inbounds i8* %12, i32 %11, !dbg !145 ; [#uses=1 type=i8*] [debug line = 221:2]
  %14 = load i8* %13, align 1, !dbg !145          ; [#uses=2 type=i8] [debug line = 221:2]
  %15 = load i8* %i, align 1, !dbg !145           ; [#uses=1 type=i8] [debug line = 221:2]
  %16 = zext i8 %15 to i32, !dbg !145             ; [#uses=1 type=i32] [debug line = 221:2]
  %17 = load i8** %3, align 4, !dbg !145          ; [#uses=1 type=i8*] [debug line = 221:2]
  %18 = getelementptr inbounds i8* %17, i32 %16, !dbg !145 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %14, i8* %18, align 1, !dbg !145       ; [debug line = 221:2]
  %19 = zext i8 %14 to i32, !dbg !145             ; [#uses=1 type=i32] [debug line = 221:2]
  %20 = load i8* %i, align 1, !dbg !145           ; [#uses=1 type=i8] [debug line = 221:2]
  %21 = zext i8 %20 to i32, !dbg !145             ; [#uses=1 type=i32] [debug line = 221:2]
  %22 = load i8** %1, align 4, !dbg !145          ; [#uses=1 type=i8*] [debug line = 221:2]
  %23 = getelementptr inbounds i8* %22, i32 %21, !dbg !145 ; [#uses=2 type=i8*] [debug line = 221:2]
  %24 = load i8* %23, align 1, !dbg !145          ; [#uses=1 type=i8] [debug line = 221:2]
  %25 = zext i8 %24 to i32, !dbg !145             ; [#uses=1 type=i32] [debug line = 221:2]
  %26 = xor i32 %25, %19, !dbg !145               ; [#uses=1 type=i32] [debug line = 221:2]
  %27 = trunc i32 %26 to i8, !dbg !145            ; [#uses=1 type=i8] [debug line = 221:2]
  store i8 %27, i8* %23, align 1, !dbg !145       ; [debug line = 221:2]
  %28 = load i8* %i, align 1, !dbg !145           ; [#uses=1 type=i8] [debug line = 221:2]
  %29 = zext i8 %28 to i32, !dbg !145             ; [#uses=1 type=i32] [debug line = 221:2]
  %30 = add nsw i32 16, %29, !dbg !145            ; [#uses=1 type=i32] [debug line = 221:2]
  %31 = load i8** %2, align 4, !dbg !145          ; [#uses=1 type=i8*] [debug line = 221:2]
  %32 = getelementptr inbounds i8* %31, i32 %30, !dbg !145 ; [#uses=1 type=i8*] [debug line = 221:2]
  %33 = load i8* %32, align 1, !dbg !145          ; [#uses=1 type=i8] [debug line = 221:2]
  %34 = load i8* %i, align 1, !dbg !145           ; [#uses=1 type=i8] [debug line = 221:2]
  %35 = zext i8 %34 to i32, !dbg !145             ; [#uses=1 type=i32] [debug line = 221:2]
  %36 = add nsw i32 16, %35, !dbg !145            ; [#uses=1 type=i32] [debug line = 221:2]
  %37 = load i8** %3, align 4, !dbg !145          ; [#uses=1 type=i8*] [debug line = 221:2]
  %38 = getelementptr inbounds i8* %37, i32 %36, !dbg !145 ; [#uses=1 type=i8*] [debug line = 221:2]
  store i8 %33, i8* %38, align 1, !dbg !145       ; [debug line = 221:2]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !146 ; [debug line = 222:5]
  br label %5, !dbg !146                          ; [debug line = 222:5]

; <label>:39                                      ; preds = %5
  ret void, !dbg !147                             ; [debug line = 223:1]
}

; [#uses=2]
define void @aes_shiftRows(i8* %buf) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=25 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %j = alloca i8, align 1                         ; [#uses=4 type=i8*]
  store i8* %buf, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !148), !dbg !149 ; [debug line = 227:29] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !150), !dbg !152 ; [debug line = 229:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %j}, metadata !153), !dbg !154 ; [debug line = 229:25] [debug variable = j]
  %2 = load i8** %1, align 4, !dbg !155           ; [#uses=1 type=i8*] [debug line = 231:5]
  %3 = getelementptr inbounds i8* %2, i32 1, !dbg !155 ; [#uses=1 type=i8*] [debug line = 231:5]
  %4 = load i8* %3, align 1, !dbg !155            ; [#uses=1 type=i8] [debug line = 231:5]
  store i8 %4, i8* %i, align 1, !dbg !155         ; [debug line = 231:5]
  %5 = load i8** %1, align 4, !dbg !156           ; [#uses=1 type=i8*] [debug line = 231:17]
  %6 = getelementptr inbounds i8* %5, i32 5, !dbg !156 ; [#uses=1 type=i8*] [debug line = 231:17]
  %7 = load i8* %6, align 1, !dbg !156            ; [#uses=1 type=i8] [debug line = 231:17]
  %8 = load i8** %1, align 4, !dbg !156           ; [#uses=1 type=i8*] [debug line = 231:17]
  %9 = getelementptr inbounds i8* %8, i32 1, !dbg !156 ; [#uses=1 type=i8*] [debug line = 231:17]
  store i8 %7, i8* %9, align 1, !dbg !156         ; [debug line = 231:17]
  %10 = load i8** %1, align 4, !dbg !157          ; [#uses=1 type=i8*] [debug line = 231:34]
  %11 = getelementptr inbounds i8* %10, i32 9, !dbg !157 ; [#uses=1 type=i8*] [debug line = 231:34]
  %12 = load i8* %11, align 1, !dbg !157          ; [#uses=1 type=i8] [debug line = 231:34]
  %13 = load i8** %1, align 4, !dbg !157          ; [#uses=1 type=i8*] [debug line = 231:34]
  %14 = getelementptr inbounds i8* %13, i32 5, !dbg !157 ; [#uses=1 type=i8*] [debug line = 231:34]
  store i8 %12, i8* %14, align 1, !dbg !157       ; [debug line = 231:34]
  %15 = load i8** %1, align 4, !dbg !158          ; [#uses=1 type=i8*] [debug line = 231:51]
  %16 = getelementptr inbounds i8* %15, i32 13, !dbg !158 ; [#uses=1 type=i8*] [debug line = 231:51]
  %17 = load i8* %16, align 1, !dbg !158          ; [#uses=1 type=i8] [debug line = 231:51]
  %18 = load i8** %1, align 4, !dbg !158          ; [#uses=1 type=i8*] [debug line = 231:51]
  %19 = getelementptr inbounds i8* %18, i32 9, !dbg !158 ; [#uses=1 type=i8*] [debug line = 231:51]
  store i8 %17, i8* %19, align 1, !dbg !158       ; [debug line = 231:51]
  %20 = load i8* %i, align 1, !dbg !159           ; [#uses=1 type=i8] [debug line = 231:69]
  %21 = load i8** %1, align 4, !dbg !159          ; [#uses=1 type=i8*] [debug line = 231:69]
  %22 = getelementptr inbounds i8* %21, i32 13, !dbg !159 ; [#uses=1 type=i8*] [debug line = 231:69]
  store i8 %20, i8* %22, align 1, !dbg !159       ; [debug line = 231:69]
  %23 = load i8** %1, align 4, !dbg !160          ; [#uses=1 type=i8*] [debug line = 232:5]
  %24 = getelementptr inbounds i8* %23, i32 10, !dbg !160 ; [#uses=1 type=i8*] [debug line = 232:5]
  %25 = load i8* %24, align 1, !dbg !160          ; [#uses=1 type=i8] [debug line = 232:5]
  store i8 %25, i8* %i, align 1, !dbg !160        ; [debug line = 232:5]
  %26 = load i8** %1, align 4, !dbg !161          ; [#uses=1 type=i8*] [debug line = 232:18]
  %27 = getelementptr inbounds i8* %26, i32 2, !dbg !161 ; [#uses=1 type=i8*] [debug line = 232:18]
  %28 = load i8* %27, align 1, !dbg !161          ; [#uses=1 type=i8] [debug line = 232:18]
  %29 = load i8** %1, align 4, !dbg !161          ; [#uses=1 type=i8*] [debug line = 232:18]
  %30 = getelementptr inbounds i8* %29, i32 10, !dbg !161 ; [#uses=1 type=i8*] [debug line = 232:18]
  store i8 %28, i8* %30, align 1, !dbg !161       ; [debug line = 232:18]
  %31 = load i8* %i, align 1, !dbg !162           ; [#uses=1 type=i8] [debug line = 232:36]
  %32 = load i8** %1, align 4, !dbg !162          ; [#uses=1 type=i8*] [debug line = 232:36]
  %33 = getelementptr inbounds i8* %32, i32 2, !dbg !162 ; [#uses=1 type=i8*] [debug line = 232:36]
  store i8 %31, i8* %33, align 1, !dbg !162       ; [debug line = 232:36]
  %34 = load i8** %1, align 4, !dbg !163          ; [#uses=1 type=i8*] [debug line = 233:5]
  %35 = getelementptr inbounds i8* %34, i32 3, !dbg !163 ; [#uses=1 type=i8*] [debug line = 233:5]
  %36 = load i8* %35, align 1, !dbg !163          ; [#uses=1 type=i8] [debug line = 233:5]
  store i8 %36, i8* %j, align 1, !dbg !163        ; [debug line = 233:5]
  %37 = load i8** %1, align 4, !dbg !164          ; [#uses=1 type=i8*] [debug line = 233:17]
  %38 = getelementptr inbounds i8* %37, i32 15, !dbg !164 ; [#uses=1 type=i8*] [debug line = 233:17]
  %39 = load i8* %38, align 1, !dbg !164          ; [#uses=1 type=i8] [debug line = 233:17]
  %40 = load i8** %1, align 4, !dbg !164          ; [#uses=1 type=i8*] [debug line = 233:17]
  %41 = getelementptr inbounds i8* %40, i32 3, !dbg !164 ; [#uses=1 type=i8*] [debug line = 233:17]
  store i8 %39, i8* %41, align 1, !dbg !164       ; [debug line = 233:17]
  %42 = load i8** %1, align 4, !dbg !165          ; [#uses=1 type=i8*] [debug line = 233:35]
  %43 = getelementptr inbounds i8* %42, i32 11, !dbg !165 ; [#uses=1 type=i8*] [debug line = 233:35]
  %44 = load i8* %43, align 1, !dbg !165          ; [#uses=1 type=i8] [debug line = 233:35]
  %45 = load i8** %1, align 4, !dbg !165          ; [#uses=1 type=i8*] [debug line = 233:35]
  %46 = getelementptr inbounds i8* %45, i32 15, !dbg !165 ; [#uses=1 type=i8*] [debug line = 233:35]
  store i8 %44, i8* %46, align 1, !dbg !165       ; [debug line = 233:35]
  %47 = load i8** %1, align 4, !dbg !166          ; [#uses=1 type=i8*] [debug line = 233:54]
  %48 = getelementptr inbounds i8* %47, i32 7, !dbg !166 ; [#uses=1 type=i8*] [debug line = 233:54]
  %49 = load i8* %48, align 1, !dbg !166          ; [#uses=1 type=i8] [debug line = 233:54]
  %50 = load i8** %1, align 4, !dbg !166          ; [#uses=1 type=i8*] [debug line = 233:54]
  %51 = getelementptr inbounds i8* %50, i32 11, !dbg !166 ; [#uses=1 type=i8*] [debug line = 233:54]
  store i8 %49, i8* %51, align 1, !dbg !166       ; [debug line = 233:54]
  %52 = load i8* %j, align 1, !dbg !167           ; [#uses=1 type=i8] [debug line = 233:72]
  %53 = load i8** %1, align 4, !dbg !167          ; [#uses=1 type=i8*] [debug line = 233:72]
  %54 = getelementptr inbounds i8* %53, i32 7, !dbg !167 ; [#uses=1 type=i8*] [debug line = 233:72]
  store i8 %52, i8* %54, align 1, !dbg !167       ; [debug line = 233:72]
  %55 = load i8** %1, align 4, !dbg !168          ; [#uses=1 type=i8*] [debug line = 234:5]
  %56 = getelementptr inbounds i8* %55, i32 14, !dbg !168 ; [#uses=1 type=i8*] [debug line = 234:5]
  %57 = load i8* %56, align 1, !dbg !168          ; [#uses=1 type=i8] [debug line = 234:5]
  store i8 %57, i8* %j, align 1, !dbg !168        ; [debug line = 234:5]
  %58 = load i8** %1, align 4, !dbg !169          ; [#uses=1 type=i8*] [debug line = 234:18]
  %59 = getelementptr inbounds i8* %58, i32 6, !dbg !169 ; [#uses=1 type=i8*] [debug line = 234:18]
  %60 = load i8* %59, align 1, !dbg !169          ; [#uses=1 type=i8] [debug line = 234:18]
  %61 = load i8** %1, align 4, !dbg !169          ; [#uses=1 type=i8*] [debug line = 234:18]
  %62 = getelementptr inbounds i8* %61, i32 14, !dbg !169 ; [#uses=1 type=i8*] [debug line = 234:18]
  store i8 %60, i8* %62, align 1, !dbg !169       ; [debug line = 234:18]
  %63 = load i8* %j, align 1, !dbg !170           ; [#uses=1 type=i8] [debug line = 234:36]
  %64 = load i8** %1, align 4, !dbg !170          ; [#uses=1 type=i8*] [debug line = 234:36]
  %65 = getelementptr inbounds i8* %64, i32 6, !dbg !170 ; [#uses=1 type=i8*] [debug line = 234:36]
  store i8 %63, i8* %65, align 1, !dbg !170       ; [debug line = 234:36]
  ret void, !dbg !171                             ; [debug line = 236:1]
}

; [#uses=1]
define void @aes_mixColumns(i8* %buf) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=9 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=12 type=i8*]
  %a = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %b = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %c = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %d = alloca i8, align 1                         ; [#uses=4 type=i8*]
  %e = alloca i8, align 1                         ; [#uses=5 type=i8*]
  store i8* %buf, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !172), !dbg !173 ; [debug line = 239:30] [debug variable = buf]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !174), !dbg !176 ; [debug line = 241:22] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i8* %a}, metadata !177), !dbg !178 ; [debug line = 241:25] [debug variable = a]
  call void @llvm.dbg.declare(metadata !{i8* %b}, metadata !179), !dbg !180 ; [debug line = 241:28] [debug variable = b]
  call void @llvm.dbg.declare(metadata !{i8* %c}, metadata !181), !dbg !182 ; [debug line = 241:31] [debug variable = c]
  call void @llvm.dbg.declare(metadata !{i8* %d}, metadata !183), !dbg !184 ; [debug line = 241:34] [debug variable = d]
  call void @llvm.dbg.declare(metadata !{i8* %e}, metadata !185), !dbg !186 ; [debug line = 241:37] [debug variable = e]
  br label %2, !dbg !187                          ; [debug line = 241:38]

; <label>:2                                       ; preds = %0
  store i8 0, i8* %i, align 1, !dbg !188          ; [debug line = 243:16]
  br label %3, !dbg !188                          ; [debug line = 243:16]

; <label>:3                                       ; preds = %122, %2
  %4 = load i8* %i, align 1, !dbg !188            ; [#uses=1 type=i8] [debug line = 243:16]
  %5 = zext i8 %4 to i32, !dbg !188               ; [#uses=1 type=i32] [debug line = 243:16]
  %6 = icmp slt i32 %5, 16, !dbg !188             ; [#uses=1 type=i1] [debug line = 243:16]
  br i1 %6, label %7, label %127, !dbg !188       ; [debug line = 243:16]

; <label>:7                                       ; preds = %3
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !190 ; [debug line = 244:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !190 ; [debug line = 244:6]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !192 ; [debug line = 248:1]
  %8 = load i8* %i, align 1, !dbg !193            ; [#uses=1 type=i8] [debug line = 250:2]
  %9 = zext i8 %8 to i32, !dbg !193               ; [#uses=1 type=i32] [debug line = 250:2]
  %10 = load i8** %1, align 4, !dbg !193          ; [#uses=1 type=i8*] [debug line = 250:2]
  %11 = getelementptr inbounds i8* %10, i32 %9, !dbg !193 ; [#uses=1 type=i8*] [debug line = 250:2]
  %12 = load i8* %11, align 1, !dbg !193          ; [#uses=1 type=i8] [debug line = 250:2]
  store i8 %12, i8* %a, align 1, !dbg !193        ; [debug line = 250:2]
  %13 = load i8* %i, align 1, !dbg !194           ; [#uses=1 type=i8] [debug line = 250:14]
  %14 = zext i8 %13 to i32, !dbg !194             ; [#uses=1 type=i32] [debug line = 250:14]
  %15 = add nsw i32 %14, 1, !dbg !194             ; [#uses=1 type=i32] [debug line = 250:14]
  %16 = load i8** %1, align 4, !dbg !194          ; [#uses=1 type=i8*] [debug line = 250:14]
  %17 = getelementptr inbounds i8* %16, i32 %15, !dbg !194 ; [#uses=1 type=i8*] [debug line = 250:14]
  %18 = load i8* %17, align 1, !dbg !194          ; [#uses=1 type=i8] [debug line = 250:14]
  store i8 %18, i8* %b, align 1, !dbg !194        ; [debug line = 250:14]
  %19 = load i8* %i, align 1, !dbg !195           ; [#uses=1 type=i8] [debug line = 250:30]
  %20 = zext i8 %19 to i32, !dbg !195             ; [#uses=1 type=i32] [debug line = 250:30]
  %21 = add nsw i32 %20, 2, !dbg !195             ; [#uses=1 type=i32] [debug line = 250:30]
  %22 = load i8** %1, align 4, !dbg !195          ; [#uses=1 type=i8*] [debug line = 250:30]
  %23 = getelementptr inbounds i8* %22, i32 %21, !dbg !195 ; [#uses=1 type=i8*] [debug line = 250:30]
  %24 = load i8* %23, align 1, !dbg !195          ; [#uses=1 type=i8] [debug line = 250:30]
  store i8 %24, i8* %c, align 1, !dbg !195        ; [debug line = 250:30]
  %25 = load i8* %i, align 1, !dbg !196           ; [#uses=1 type=i8] [debug line = 250:46]
  %26 = zext i8 %25 to i32, !dbg !196             ; [#uses=1 type=i32] [debug line = 250:46]
  %27 = add nsw i32 %26, 3, !dbg !196             ; [#uses=1 type=i32] [debug line = 250:46]
  %28 = load i8** %1, align 4, !dbg !196          ; [#uses=1 type=i8*] [debug line = 250:46]
  %29 = getelementptr inbounds i8* %28, i32 %27, !dbg !196 ; [#uses=1 type=i8*] [debug line = 250:46]
  %30 = load i8* %29, align 1, !dbg !196          ; [#uses=1 type=i8] [debug line = 250:46]
  store i8 %30, i8* %d, align 1, !dbg !196        ; [debug line = 250:46]
  %31 = load i8* %a, align 1, !dbg !197           ; [#uses=1 type=i8] [debug line = 251:9]
  %32 = zext i8 %31 to i32, !dbg !197             ; [#uses=1 type=i32] [debug line = 251:9]
  %33 = load i8* %b, align 1, !dbg !197           ; [#uses=1 type=i8] [debug line = 251:9]
  %34 = zext i8 %33 to i32, !dbg !197             ; [#uses=1 type=i32] [debug line = 251:9]
  %35 = xor i32 %32, %34, !dbg !197               ; [#uses=1 type=i32] [debug line = 251:9]
  %36 = load i8* %c, align 1, !dbg !197           ; [#uses=1 type=i8] [debug line = 251:9]
  %37 = zext i8 %36 to i32, !dbg !197             ; [#uses=1 type=i32] [debug line = 251:9]
  %38 = xor i32 %35, %37, !dbg !197               ; [#uses=1 type=i32] [debug line = 251:9]
  %39 = load i8* %d, align 1, !dbg !197           ; [#uses=1 type=i8] [debug line = 251:9]
  %40 = zext i8 %39 to i32, !dbg !197             ; [#uses=1 type=i32] [debug line = 251:9]
  %41 = xor i32 %38, %40, !dbg !197               ; [#uses=1 type=i32] [debug line = 251:9]
  %42 = trunc i32 %41 to i8, !dbg !197            ; [#uses=1 type=i8] [debug line = 251:9]
  store i8 %42, i8* %e, align 1, !dbg !197        ; [debug line = 251:9]
  %43 = load i8* %e, align 1, !dbg !198           ; [#uses=1 type=i8] [debug line = 252:9]
  %44 = zext i8 %43 to i32, !dbg !198             ; [#uses=1 type=i32] [debug line = 252:9]
  %45 = load i8* %a, align 1, !dbg !199           ; [#uses=1 type=i8] [debug line = 252:23]
  %46 = zext i8 %45 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 252:23]
  %47 = load i8* %b, align 1, !dbg !199           ; [#uses=1 type=i8] [debug line = 252:23]
  %48 = zext i8 %47 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 252:23]
  %49 = xor i32 %46, %48, !dbg !199               ; [#uses=1 type=i32] [debug line = 252:23]
  %50 = trunc i32 %49 to i8, !dbg !199            ; [#uses=1 type=i8] [debug line = 252:23]
  %51 = call zeroext i8 @rj_xtime(i8 zeroext %50), !dbg !199 ; [#uses=1 type=i8] [debug line = 252:23]
  %52 = zext i8 %51 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 252:23]
  %53 = xor i32 %44, %52, !dbg !199               ; [#uses=1 type=i32] [debug line = 252:23]
  %54 = load i8* %i, align 1, !dbg !199           ; [#uses=1 type=i8] [debug line = 252:23]
  %55 = zext i8 %54 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 252:23]
  %56 = load i8** %1, align 4, !dbg !199          ; [#uses=1 type=i8*] [debug line = 252:23]
  %57 = getelementptr inbounds i8* %56, i32 %55, !dbg !199 ; [#uses=2 type=i8*] [debug line = 252:23]
  %58 = load i8* %57, align 1, !dbg !199          ; [#uses=1 type=i8] [debug line = 252:23]
  %59 = zext i8 %58 to i32, !dbg !199             ; [#uses=1 type=i32] [debug line = 252:23]
  %60 = xor i32 %59, %53, !dbg !199               ; [#uses=1 type=i32] [debug line = 252:23]
  %61 = trunc i32 %60 to i8, !dbg !199            ; [#uses=1 type=i8] [debug line = 252:23]
  store i8 %61, i8* %57, align 1, !dbg !199       ; [debug line = 252:23]
  %62 = load i8* %e, align 1, !dbg !200           ; [#uses=1 type=i8] [debug line = 252:38]
  %63 = zext i8 %62 to i32, !dbg !200             ; [#uses=1 type=i32] [debug line = 252:38]
  %64 = load i8* %b, align 1, !dbg !201           ; [#uses=1 type=i8] [debug line = 252:54]
  %65 = zext i8 %64 to i32, !dbg !201             ; [#uses=1 type=i32] [debug line = 252:54]
  %66 = load i8* %c, align 1, !dbg !201           ; [#uses=1 type=i8] [debug line = 252:54]
  %67 = zext i8 %66 to i32, !dbg !201             ; [#uses=1 type=i32] [debug line = 252:54]
  %68 = xor i32 %65, %67, !dbg !201               ; [#uses=1 type=i32] [debug line = 252:54]
  %69 = trunc i32 %68 to i8, !dbg !201            ; [#uses=1 type=i8] [debug line = 252:54]
  %70 = call zeroext i8 @rj_xtime(i8 zeroext %69), !dbg !201 ; [#uses=1 type=i8] [debug line = 252:54]
  %71 = zext i8 %70 to i32, !dbg !201             ; [#uses=1 type=i32] [debug line = 252:54]
  %72 = xor i32 %63, %71, !dbg !201               ; [#uses=1 type=i32] [debug line = 252:54]
  %73 = load i8* %i, align 1, !dbg !201           ; [#uses=1 type=i8] [debug line = 252:54]
  %74 = zext i8 %73 to i32, !dbg !201             ; [#uses=1 type=i32] [debug line = 252:54]
  %75 = add nsw i32 %74, 1, !dbg !201             ; [#uses=1 type=i32] [debug line = 252:54]
  %76 = load i8** %1, align 4, !dbg !201          ; [#uses=1 type=i8*] [debug line = 252:54]
  %77 = getelementptr inbounds i8* %76, i32 %75, !dbg !201 ; [#uses=2 type=i8*] [debug line = 252:54]
  %78 = load i8* %77, align 1, !dbg !201          ; [#uses=1 type=i8] [debug line = 252:54]
  %79 = zext i8 %78 to i32, !dbg !201             ; [#uses=1 type=i32] [debug line = 252:54]
  %80 = xor i32 %79, %72, !dbg !201               ; [#uses=1 type=i32] [debug line = 252:54]
  %81 = trunc i32 %80 to i8, !dbg !201            ; [#uses=1 type=i8] [debug line = 252:54]
  store i8 %81, i8* %77, align 1, !dbg !201       ; [debug line = 252:54]
  %82 = load i8* %e, align 1, !dbg !202           ; [#uses=1 type=i8] [debug line = 253:9]
  %83 = zext i8 %82 to i32, !dbg !202             ; [#uses=1 type=i32] [debug line = 253:9]
  %84 = load i8* %c, align 1, !dbg !203           ; [#uses=1 type=i8] [debug line = 253:25]
  %85 = zext i8 %84 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 253:25]
  %86 = load i8* %d, align 1, !dbg !203           ; [#uses=1 type=i8] [debug line = 253:25]
  %87 = zext i8 %86 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 253:25]
  %88 = xor i32 %85, %87, !dbg !203               ; [#uses=1 type=i32] [debug line = 253:25]
  %89 = trunc i32 %88 to i8, !dbg !203            ; [#uses=1 type=i8] [debug line = 253:25]
  %90 = call zeroext i8 @rj_xtime(i8 zeroext %89), !dbg !203 ; [#uses=1 type=i8] [debug line = 253:25]
  %91 = zext i8 %90 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 253:25]
  %92 = xor i32 %83, %91, !dbg !203               ; [#uses=1 type=i32] [debug line = 253:25]
  %93 = load i8* %i, align 1, !dbg !203           ; [#uses=1 type=i8] [debug line = 253:25]
  %94 = zext i8 %93 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 253:25]
  %95 = add nsw i32 %94, 2, !dbg !203             ; [#uses=1 type=i32] [debug line = 253:25]
  %96 = load i8** %1, align 4, !dbg !203          ; [#uses=1 type=i8*] [debug line = 253:25]
  %97 = getelementptr inbounds i8* %96, i32 %95, !dbg !203 ; [#uses=2 type=i8*] [debug line = 253:25]
  %98 = load i8* %97, align 1, !dbg !203          ; [#uses=1 type=i8] [debug line = 253:25]
  %99 = zext i8 %98 to i32, !dbg !203             ; [#uses=1 type=i32] [debug line = 253:25]
  %100 = xor i32 %99, %92, !dbg !203              ; [#uses=1 type=i32] [debug line = 253:25]
  %101 = trunc i32 %100 to i8, !dbg !203          ; [#uses=1 type=i8] [debug line = 253:25]
  store i8 %101, i8* %97, align 1, !dbg !203      ; [debug line = 253:25]
  %102 = load i8* %e, align 1, !dbg !204          ; [#uses=1 type=i8] [debug line = 253:40]
  %103 = zext i8 %102 to i32, !dbg !204           ; [#uses=1 type=i32] [debug line = 253:40]
  %104 = load i8* %d, align 1, !dbg !205          ; [#uses=1 type=i8] [debug line = 253:56]
  %105 = zext i8 %104 to i32, !dbg !205           ; [#uses=1 type=i32] [debug line = 253:56]
  %106 = load i8* %a, align 1, !dbg !205          ; [#uses=1 type=i8] [debug line = 253:56]
  %107 = zext i8 %106 to i32, !dbg !205           ; [#uses=1 type=i32] [debug line = 253:56]
  %108 = xor i32 %105, %107, !dbg !205            ; [#uses=1 type=i32] [debug line = 253:56]
  %109 = trunc i32 %108 to i8, !dbg !205          ; [#uses=1 type=i8] [debug line = 253:56]
  %110 = call zeroext i8 @rj_xtime(i8 zeroext %109), !dbg !205 ; [#uses=1 type=i8] [debug line = 253:56]
  %111 = zext i8 %110 to i32, !dbg !205           ; [#uses=1 type=i32] [debug line = 253:56]
  %112 = xor i32 %103, %111, !dbg !205            ; [#uses=1 type=i32] [debug line = 253:56]
  %113 = load i8* %i, align 1, !dbg !205          ; [#uses=1 type=i8] [debug line = 253:56]
  %114 = zext i8 %113 to i32, !dbg !205           ; [#uses=1 type=i32] [debug line = 253:56]
  %115 = add nsw i32 %114, 3, !dbg !205           ; [#uses=1 type=i32] [debug line = 253:56]
  %116 = load i8** %1, align 4, !dbg !205         ; [#uses=1 type=i8*] [debug line = 253:56]
  %117 = getelementptr inbounds i8* %116, i32 %115, !dbg !205 ; [#uses=2 type=i8*] [debug line = 253:56]
  %118 = load i8* %117, align 1, !dbg !205        ; [#uses=1 type=i8] [debug line = 253:56]
  %119 = zext i8 %118 to i32, !dbg !205           ; [#uses=1 type=i32] [debug line = 253:56]
  %120 = xor i32 %119, %112, !dbg !205            ; [#uses=1 type=i32] [debug line = 253:56]
  %121 = trunc i32 %120 to i8, !dbg !205          ; [#uses=1 type=i8] [debug line = 253:56]
  store i8 %121, i8* %117, align 1, !dbg !205     ; [debug line = 253:56]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !206 ; [debug line = 254:5]
  br label %122, !dbg !206                        ; [debug line = 254:5]

; <label>:122                                     ; preds = %7
  %123 = load i8* %i, align 1, !dbg !207          ; [#uses=1 type=i8] [debug line = 243:31]
  %124 = zext i8 %123 to i32, !dbg !207           ; [#uses=1 type=i32] [debug line = 243:31]
  %125 = add nsw i32 %124, 4, !dbg !207           ; [#uses=1 type=i32] [debug line = 243:31]
  %126 = trunc i32 %125 to i8, !dbg !207          ; [#uses=1 type=i8] [debug line = 243:31]
  store i8 %126, i8* %i, align 1, !dbg !207       ; [debug line = 243:31]
  br label %3, !dbg !207                          ; [debug line = 243:31]

; <label>:127                                     ; preds = %3
  ret void, !dbg !208                             ; [debug line = 255:1]
}

; [#uses=3]
define void @aes_expandEncKey(i8* %k, i8* %rc) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=33 type=i8**]
  %2 = alloca i8*, align 4                        ; [#uses=5 type=i8**]
  %i = alloca i8, align 1                         ; [#uses=24 type=i8*]
  store i8* %k, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !209), !dbg !210 ; [debug line = 258:32] [debug variable = k]
  store i8* %rc, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !211), !dbg !212 ; [debug line = 258:44] [debug variable = rc]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !213), !dbg !215 ; [debug line = 260:22] [debug variable = i]
  %3 = load i8** %1, align 4, !dbg !216           ; [#uses=1 type=i8*] [debug line = 262:5]
  %4 = getelementptr inbounds i8* %3, i32 29, !dbg !216 ; [#uses=1 type=i8*] [debug line = 262:5]
  %5 = load i8* %4, align 1, !dbg !216            ; [#uses=1 type=i8] [debug line = 262:5]
  %6 = zext i8 %5 to i32, !dbg !216               ; [#uses=1 type=i32] [debug line = 262:5]
  %7 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %6, !dbg !216 ; [#uses=1 type=i8*] [debug line = 262:5]
  %8 = load i8* %7, align 1, !dbg !216            ; [#uses=1 type=i8] [debug line = 262:5]
  %9 = zext i8 %8 to i32, !dbg !216               ; [#uses=1 type=i32] [debug line = 262:5]
  %10 = load i8** %2, align 4, !dbg !216          ; [#uses=1 type=i8*] [debug line = 262:5]
  %11 = load i8* %10, align 1, !dbg !216          ; [#uses=1 type=i8] [debug line = 262:5]
  %12 = zext i8 %11 to i32, !dbg !216             ; [#uses=1 type=i32] [debug line = 262:5]
  %13 = xor i32 %9, %12, !dbg !216                ; [#uses=1 type=i32] [debug line = 262:5]
  %14 = load i8** %1, align 4, !dbg !216          ; [#uses=1 type=i8*] [debug line = 262:5]
  %15 = getelementptr inbounds i8* %14, i32 0, !dbg !216 ; [#uses=2 type=i8*] [debug line = 262:5]
  %16 = load i8* %15, align 1, !dbg !216          ; [#uses=1 type=i8] [debug line = 262:5]
  %17 = zext i8 %16 to i32, !dbg !216             ; [#uses=1 type=i32] [debug line = 262:5]
  %18 = xor i32 %17, %13, !dbg !216               ; [#uses=1 type=i32] [debug line = 262:5]
  %19 = trunc i32 %18 to i8, !dbg !216            ; [#uses=1 type=i8] [debug line = 262:5]
  store i8 %19, i8* %15, align 1, !dbg !216       ; [debug line = 262:5]
  %20 = load i8** %1, align 4, !dbg !217          ; [#uses=1 type=i8*] [debug line = 263:5]
  %21 = getelementptr inbounds i8* %20, i32 30, !dbg !217 ; [#uses=1 type=i8*] [debug line = 263:5]
  %22 = load i8* %21, align 1, !dbg !217          ; [#uses=1 type=i8] [debug line = 263:5]
  %23 = zext i8 %22 to i32, !dbg !217             ; [#uses=1 type=i32] [debug line = 263:5]
  %24 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %23, !dbg !217 ; [#uses=1 type=i8*] [debug line = 263:5]
  %25 = load i8* %24, align 1, !dbg !217          ; [#uses=1 type=i8] [debug line = 263:5]
  %26 = zext i8 %25 to i32, !dbg !217             ; [#uses=1 type=i32] [debug line = 263:5]
  %27 = load i8** %1, align 4, !dbg !217          ; [#uses=1 type=i8*] [debug line = 263:5]
  %28 = getelementptr inbounds i8* %27, i32 1, !dbg !217 ; [#uses=2 type=i8*] [debug line = 263:5]
  %29 = load i8* %28, align 1, !dbg !217          ; [#uses=1 type=i8] [debug line = 263:5]
  %30 = zext i8 %29 to i32, !dbg !217             ; [#uses=1 type=i32] [debug line = 263:5]
  %31 = xor i32 %30, %26, !dbg !217               ; [#uses=1 type=i32] [debug line = 263:5]
  %32 = trunc i32 %31 to i8, !dbg !217            ; [#uses=1 type=i8] [debug line = 263:5]
  store i8 %32, i8* %28, align 1, !dbg !217       ; [debug line = 263:5]
  %33 = load i8** %1, align 4, !dbg !218          ; [#uses=1 type=i8*] [debug line = 264:5]
  %34 = getelementptr inbounds i8* %33, i32 31, !dbg !218 ; [#uses=1 type=i8*] [debug line = 264:5]
  %35 = load i8* %34, align 1, !dbg !218          ; [#uses=1 type=i8] [debug line = 264:5]
  %36 = zext i8 %35 to i32, !dbg !218             ; [#uses=1 type=i32] [debug line = 264:5]
  %37 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %36, !dbg !218 ; [#uses=1 type=i8*] [debug line = 264:5]
  %38 = load i8* %37, align 1, !dbg !218          ; [#uses=1 type=i8] [debug line = 264:5]
  %39 = zext i8 %38 to i32, !dbg !218             ; [#uses=1 type=i32] [debug line = 264:5]
  %40 = load i8** %1, align 4, !dbg !218          ; [#uses=1 type=i8*] [debug line = 264:5]
  %41 = getelementptr inbounds i8* %40, i32 2, !dbg !218 ; [#uses=2 type=i8*] [debug line = 264:5]
  %42 = load i8* %41, align 1, !dbg !218          ; [#uses=1 type=i8] [debug line = 264:5]
  %43 = zext i8 %42 to i32, !dbg !218             ; [#uses=1 type=i32] [debug line = 264:5]
  %44 = xor i32 %43, %39, !dbg !218               ; [#uses=1 type=i32] [debug line = 264:5]
  %45 = trunc i32 %44 to i8, !dbg !218            ; [#uses=1 type=i8] [debug line = 264:5]
  store i8 %45, i8* %41, align 1, !dbg !218       ; [debug line = 264:5]
  %46 = load i8** %1, align 4, !dbg !219          ; [#uses=1 type=i8*] [debug line = 265:5]
  %47 = getelementptr inbounds i8* %46, i32 28, !dbg !219 ; [#uses=1 type=i8*] [debug line = 265:5]
  %48 = load i8* %47, align 1, !dbg !219          ; [#uses=1 type=i8] [debug line = 265:5]
  %49 = zext i8 %48 to i32, !dbg !219             ; [#uses=1 type=i32] [debug line = 265:5]
  %50 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %49, !dbg !219 ; [#uses=1 type=i8*] [debug line = 265:5]
  %51 = load i8* %50, align 1, !dbg !219          ; [#uses=1 type=i8] [debug line = 265:5]
  %52 = zext i8 %51 to i32, !dbg !219             ; [#uses=1 type=i32] [debug line = 265:5]
  %53 = load i8** %1, align 4, !dbg !219          ; [#uses=1 type=i8*] [debug line = 265:5]
  %54 = getelementptr inbounds i8* %53, i32 3, !dbg !219 ; [#uses=2 type=i8*] [debug line = 265:5]
  %55 = load i8* %54, align 1, !dbg !219          ; [#uses=1 type=i8] [debug line = 265:5]
  %56 = zext i8 %55 to i32, !dbg !219             ; [#uses=1 type=i32] [debug line = 265:5]
  %57 = xor i32 %56, %52, !dbg !219               ; [#uses=1 type=i32] [debug line = 265:5]
  %58 = trunc i32 %57 to i8, !dbg !219            ; [#uses=1 type=i8] [debug line = 265:5]
  store i8 %58, i8* %54, align 1, !dbg !219       ; [debug line = 265:5]
  %59 = load i8** %2, align 4, !dbg !220          ; [#uses=1 type=i8*] [debug line = 266:5]
  %60 = load i8* %59, align 1, !dbg !220          ; [#uses=1 type=i8] [debug line = 266:5]
  %61 = zext i8 %60 to i32, !dbg !220             ; [#uses=1 type=i32] [debug line = 266:5]
  %62 = shl i32 %61, 1, !dbg !220                 ; [#uses=1 type=i32] [debug line = 266:5]
  %63 = load i8** %2, align 4, !dbg !220          ; [#uses=1 type=i8*] [debug line = 266:5]
  %64 = load i8* %63, align 1, !dbg !220          ; [#uses=1 type=i8] [debug line = 266:5]
  %65 = zext i8 %64 to i32, !dbg !220             ; [#uses=1 type=i32] [debug line = 266:5]
  %66 = ashr i32 %65, 7, !dbg !220                ; [#uses=1 type=i32] [debug line = 266:5]
  %67 = and i32 %66, 1, !dbg !220                 ; [#uses=1 type=i32] [debug line = 266:5]
  %68 = mul nsw i32 %67, 27, !dbg !220            ; [#uses=1 type=i32] [debug line = 266:5]
  %69 = xor i32 %62, %68, !dbg !220               ; [#uses=1 type=i32] [debug line = 266:5]
  %70 = trunc i32 %69 to i8, !dbg !220            ; [#uses=1 type=i8] [debug line = 266:5]
  %71 = load i8** %2, align 4, !dbg !220          ; [#uses=1 type=i8*] [debug line = 266:5]
  store i8 %70, i8* %71, align 1, !dbg !220       ; [debug line = 266:5]
  br label %72, !dbg !220                         ; [debug line = 266:5]

; <label>:72                                      ; preds = %0
  store i8 4, i8* %i, align 1, !dbg !221          ; [debug line = 268:16]
  br label %73, !dbg !221                         ; [debug line = 268:16]

; <label>:73                                      ; preds = %141, %72
  %74 = load i8* %i, align 1, !dbg !221           ; [#uses=1 type=i8] [debug line = 268:16]
  %75 = zext i8 %74 to i32, !dbg !221             ; [#uses=1 type=i32] [debug line = 268:16]
  %76 = icmp slt i32 %75, 16, !dbg !221           ; [#uses=1 type=i1] [debug line = 268:16]
  br i1 %76, label %77, label %146, !dbg !221     ; [debug line = 268:16]

; <label>:77                                      ; preds = %73
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !223 ; [debug line = 269:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !223 ; [debug line = 269:6]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !225 ; [debug line = 273:1]
  %78 = load i8* %i, align 1, !dbg !226           ; [#uses=1 type=i8] [debug line = 275:2]
  %79 = zext i8 %78 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %80 = sub nsw i32 %79, 4, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %81 = load i8** %1, align 4, !dbg !226          ; [#uses=1 type=i8*] [debug line = 275:2]
  %82 = getelementptr inbounds i8* %81, i32 %80, !dbg !226 ; [#uses=1 type=i8*] [debug line = 275:2]
  %83 = load i8* %82, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  %84 = zext i8 %83 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %85 = load i8* %i, align 1, !dbg !226           ; [#uses=1 type=i8] [debug line = 275:2]
  %86 = zext i8 %85 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %87 = load i8** %1, align 4, !dbg !226          ; [#uses=1 type=i8*] [debug line = 275:2]
  %88 = getelementptr inbounds i8* %87, i32 %86, !dbg !226 ; [#uses=2 type=i8*] [debug line = 275:2]
  %89 = load i8* %88, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  %90 = zext i8 %89 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %91 = xor i32 %90, %84, !dbg !226               ; [#uses=1 type=i32] [debug line = 275:2]
  %92 = trunc i32 %91 to i8, !dbg !226            ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %92, i8* %88, align 1, !dbg !226       ; [debug line = 275:2]
  %93 = load i8* %i, align 1, !dbg !226           ; [#uses=1 type=i8] [debug line = 275:2]
  %94 = zext i8 %93 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %95 = sub nsw i32 %94, 3, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %96 = load i8** %1, align 4, !dbg !226          ; [#uses=1 type=i8*] [debug line = 275:2]
  %97 = getelementptr inbounds i8* %96, i32 %95, !dbg !226 ; [#uses=1 type=i8*] [debug line = 275:2]
  %98 = load i8* %97, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  %99 = zext i8 %98 to i32, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %100 = load i8* %i, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  %101 = zext i8 %100 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %102 = add nsw i32 %101, 1, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %103 = load i8** %1, align 4, !dbg !226         ; [#uses=1 type=i8*] [debug line = 275:2]
  %104 = getelementptr inbounds i8* %103, i32 %102, !dbg !226 ; [#uses=2 type=i8*] [debug line = 275:2]
  %105 = load i8* %104, align 1, !dbg !226        ; [#uses=1 type=i8] [debug line = 275:2]
  %106 = zext i8 %105 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %107 = xor i32 %106, %99, !dbg !226             ; [#uses=1 type=i32] [debug line = 275:2]
  %108 = trunc i32 %107 to i8, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %108, i8* %104, align 1, !dbg !226     ; [debug line = 275:2]
  %109 = load i8* %i, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  %110 = zext i8 %109 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %111 = sub nsw i32 %110, 2, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %112 = load i8** %1, align 4, !dbg !226         ; [#uses=1 type=i8*] [debug line = 275:2]
  %113 = getelementptr inbounds i8* %112, i32 %111, !dbg !226 ; [#uses=1 type=i8*] [debug line = 275:2]
  %114 = load i8* %113, align 1, !dbg !226        ; [#uses=1 type=i8] [debug line = 275:2]
  %115 = zext i8 %114 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %116 = load i8* %i, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  %117 = zext i8 %116 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %118 = add nsw i32 %117, 2, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %119 = load i8** %1, align 4, !dbg !226         ; [#uses=1 type=i8*] [debug line = 275:2]
  %120 = getelementptr inbounds i8* %119, i32 %118, !dbg !226 ; [#uses=2 type=i8*] [debug line = 275:2]
  %121 = load i8* %120, align 1, !dbg !226        ; [#uses=1 type=i8] [debug line = 275:2]
  %122 = zext i8 %121 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %123 = xor i32 %122, %115, !dbg !226            ; [#uses=1 type=i32] [debug line = 275:2]
  %124 = trunc i32 %123 to i8, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %124, i8* %120, align 1, !dbg !226     ; [debug line = 275:2]
  %125 = load i8* %i, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  %126 = zext i8 %125 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %127 = sub nsw i32 %126, 1, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %128 = load i8** %1, align 4, !dbg !226         ; [#uses=1 type=i8*] [debug line = 275:2]
  %129 = getelementptr inbounds i8* %128, i32 %127, !dbg !226 ; [#uses=1 type=i8*] [debug line = 275:2]
  %130 = load i8* %129, align 1, !dbg !226        ; [#uses=1 type=i8] [debug line = 275:2]
  %131 = zext i8 %130 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %132 = load i8* %i, align 1, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  %133 = zext i8 %132 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %134 = add nsw i32 %133, 3, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %135 = load i8** %1, align 4, !dbg !226         ; [#uses=1 type=i8*] [debug line = 275:2]
  %136 = getelementptr inbounds i8* %135, i32 %134, !dbg !226 ; [#uses=2 type=i8*] [debug line = 275:2]
  %137 = load i8* %136, align 1, !dbg !226        ; [#uses=1 type=i8] [debug line = 275:2]
  %138 = zext i8 %137 to i32, !dbg !226           ; [#uses=1 type=i32] [debug line = 275:2]
  %139 = xor i32 %138, %131, !dbg !226            ; [#uses=1 type=i32] [debug line = 275:2]
  %140 = trunc i32 %139 to i8, !dbg !226          ; [#uses=1 type=i8] [debug line = 275:2]
  store i8 %140, i8* %136, align 1, !dbg !226     ; [debug line = 275:2]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !227 ; [debug line = 277:5]
  br label %141, !dbg !227                        ; [debug line = 277:5]

; <label>:141                                     ; preds = %77
  %142 = load i8* %i, align 1, !dbg !228          ; [#uses=1 type=i8] [debug line = 268:31]
  %143 = zext i8 %142 to i32, !dbg !228           ; [#uses=1 type=i32] [debug line = 268:31]
  %144 = add nsw i32 %143, 4, !dbg !228           ; [#uses=1 type=i32] [debug line = 268:31]
  %145 = trunc i32 %144 to i8, !dbg !228          ; [#uses=1 type=i8] [debug line = 268:31]
  store i8 %145, i8* %i, align 1, !dbg !228       ; [debug line = 268:31]
  br label %73, !dbg !228                         ; [debug line = 268:31]

; <label>:146                                     ; preds = %73
  %147 = load i8** %1, align 4, !dbg !229         ; [#uses=1 type=i8*] [debug line = 278:5]
  %148 = getelementptr inbounds i8* %147, i32 12, !dbg !229 ; [#uses=1 type=i8*] [debug line = 278:5]
  %149 = load i8* %148, align 1, !dbg !229        ; [#uses=1 type=i8] [debug line = 278:5]
  %150 = zext i8 %149 to i32, !dbg !229           ; [#uses=1 type=i32] [debug line = 278:5]
  %151 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %150, !dbg !229 ; [#uses=1 type=i8*] [debug line = 278:5]
  %152 = load i8* %151, align 1, !dbg !229        ; [#uses=1 type=i8] [debug line = 278:5]
  %153 = zext i8 %152 to i32, !dbg !229           ; [#uses=1 type=i32] [debug line = 278:5]
  %154 = load i8** %1, align 4, !dbg !229         ; [#uses=1 type=i8*] [debug line = 278:5]
  %155 = getelementptr inbounds i8* %154, i32 16, !dbg !229 ; [#uses=2 type=i8*] [debug line = 278:5]
  %156 = load i8* %155, align 1, !dbg !229        ; [#uses=1 type=i8] [debug line = 278:5]
  %157 = zext i8 %156 to i32, !dbg !229           ; [#uses=1 type=i32] [debug line = 278:5]
  %158 = xor i32 %157, %153, !dbg !229            ; [#uses=1 type=i32] [debug line = 278:5]
  %159 = trunc i32 %158 to i8, !dbg !229          ; [#uses=1 type=i8] [debug line = 278:5]
  store i8 %159, i8* %155, align 1, !dbg !229     ; [debug line = 278:5]
  %160 = load i8** %1, align 4, !dbg !230         ; [#uses=1 type=i8*] [debug line = 279:5]
  %161 = getelementptr inbounds i8* %160, i32 13, !dbg !230 ; [#uses=1 type=i8*] [debug line = 279:5]
  %162 = load i8* %161, align 1, !dbg !230        ; [#uses=1 type=i8] [debug line = 279:5]
  %163 = zext i8 %162 to i32, !dbg !230           ; [#uses=1 type=i32] [debug line = 279:5]
  %164 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %163, !dbg !230 ; [#uses=1 type=i8*] [debug line = 279:5]
  %165 = load i8* %164, align 1, !dbg !230        ; [#uses=1 type=i8] [debug line = 279:5]
  %166 = zext i8 %165 to i32, !dbg !230           ; [#uses=1 type=i32] [debug line = 279:5]
  %167 = load i8** %1, align 4, !dbg !230         ; [#uses=1 type=i8*] [debug line = 279:5]
  %168 = getelementptr inbounds i8* %167, i32 17, !dbg !230 ; [#uses=2 type=i8*] [debug line = 279:5]
  %169 = load i8* %168, align 1, !dbg !230        ; [#uses=1 type=i8] [debug line = 279:5]
  %170 = zext i8 %169 to i32, !dbg !230           ; [#uses=1 type=i32] [debug line = 279:5]
  %171 = xor i32 %170, %166, !dbg !230            ; [#uses=1 type=i32] [debug line = 279:5]
  %172 = trunc i32 %171 to i8, !dbg !230          ; [#uses=1 type=i8] [debug line = 279:5]
  store i8 %172, i8* %168, align 1, !dbg !230     ; [debug line = 279:5]
  %173 = load i8** %1, align 4, !dbg !231         ; [#uses=1 type=i8*] [debug line = 280:5]
  %174 = getelementptr inbounds i8* %173, i32 14, !dbg !231 ; [#uses=1 type=i8*] [debug line = 280:5]
  %175 = load i8* %174, align 1, !dbg !231        ; [#uses=1 type=i8] [debug line = 280:5]
  %176 = zext i8 %175 to i32, !dbg !231           ; [#uses=1 type=i32] [debug line = 280:5]
  %177 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %176, !dbg !231 ; [#uses=1 type=i8*] [debug line = 280:5]
  %178 = load i8* %177, align 1, !dbg !231        ; [#uses=1 type=i8] [debug line = 280:5]
  %179 = zext i8 %178 to i32, !dbg !231           ; [#uses=1 type=i32] [debug line = 280:5]
  %180 = load i8** %1, align 4, !dbg !231         ; [#uses=1 type=i8*] [debug line = 280:5]
  %181 = getelementptr inbounds i8* %180, i32 18, !dbg !231 ; [#uses=2 type=i8*] [debug line = 280:5]
  %182 = load i8* %181, align 1, !dbg !231        ; [#uses=1 type=i8] [debug line = 280:5]
  %183 = zext i8 %182 to i32, !dbg !231           ; [#uses=1 type=i32] [debug line = 280:5]
  %184 = xor i32 %183, %179, !dbg !231            ; [#uses=1 type=i32] [debug line = 280:5]
  %185 = trunc i32 %184 to i8, !dbg !231          ; [#uses=1 type=i8] [debug line = 280:5]
  store i8 %185, i8* %181, align 1, !dbg !231     ; [debug line = 280:5]
  %186 = load i8** %1, align 4, !dbg !232         ; [#uses=1 type=i8*] [debug line = 281:5]
  %187 = getelementptr inbounds i8* %186, i32 15, !dbg !232 ; [#uses=1 type=i8*] [debug line = 281:5]
  %188 = load i8* %187, align 1, !dbg !232        ; [#uses=1 type=i8] [debug line = 281:5]
  %189 = zext i8 %188 to i32, !dbg !232           ; [#uses=1 type=i32] [debug line = 281:5]
  %190 = getelementptr inbounds [256 x i8]* @sbox, i32 0, i32 %189, !dbg !232 ; [#uses=1 type=i8*] [debug line = 281:5]
  %191 = load i8* %190, align 1, !dbg !232        ; [#uses=1 type=i8] [debug line = 281:5]
  %192 = zext i8 %191 to i32, !dbg !232           ; [#uses=1 type=i32] [debug line = 281:5]
  %193 = load i8** %1, align 4, !dbg !232         ; [#uses=1 type=i8*] [debug line = 281:5]
  %194 = getelementptr inbounds i8* %193, i32 19, !dbg !232 ; [#uses=2 type=i8*] [debug line = 281:5]
  %195 = load i8* %194, align 1, !dbg !232        ; [#uses=1 type=i8] [debug line = 281:5]
  %196 = zext i8 %195 to i32, !dbg !232           ; [#uses=1 type=i32] [debug line = 281:5]
  %197 = xor i32 %196, %192, !dbg !232            ; [#uses=1 type=i32] [debug line = 281:5]
  %198 = trunc i32 %197 to i8, !dbg !232          ; [#uses=1 type=i8] [debug line = 281:5]
  store i8 %198, i8* %194, align 1, !dbg !232     ; [debug line = 281:5]
  br label %199, !dbg !232                        ; [debug line = 281:5]

; <label>:199                                     ; preds = %146
  store i8 20, i8* %i, align 1, !dbg !233         ; [debug line = 283:16]
  br label %200, !dbg !233                        ; [debug line = 283:16]

; <label>:200                                     ; preds = %268, %199
  %201 = load i8* %i, align 1, !dbg !233          ; [#uses=1 type=i8] [debug line = 283:16]
  %202 = zext i8 %201 to i32, !dbg !233           ; [#uses=1 type=i32] [debug line = 283:16]
  %203 = icmp slt i32 %202, 32, !dbg !233         ; [#uses=1 type=i1] [debug line = 283:16]
  br i1 %203, label %204, label %273, !dbg !233   ; [debug line = 283:16]

; <label>:204                                     ; preds = %200
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !235 ; [debug line = 284:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !235 ; [debug line = 284:6]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !237 ; [debug line = 288:1]
  %205 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  %206 = zext i8 %205 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %207 = sub nsw i32 %206, 4, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %208 = load i8** %1, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 290:2]
  %209 = getelementptr inbounds i8* %208, i32 %207, !dbg !238 ; [#uses=1 type=i8*] [debug line = 290:2]
  %210 = load i8* %209, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 290:2]
  %211 = zext i8 %210 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %212 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  %213 = zext i8 %212 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %214 = load i8** %1, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 290:2]
  %215 = getelementptr inbounds i8* %214, i32 %213, !dbg !238 ; [#uses=2 type=i8*] [debug line = 290:2]
  %216 = load i8* %215, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 290:2]
  %217 = zext i8 %216 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %218 = xor i32 %217, %211, !dbg !238            ; [#uses=1 type=i32] [debug line = 290:2]
  %219 = trunc i32 %218 to i8, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %219, i8* %215, align 1, !dbg !238     ; [debug line = 290:2]
  %220 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  %221 = zext i8 %220 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %222 = sub nsw i32 %221, 3, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %223 = load i8** %1, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 290:2]
  %224 = getelementptr inbounds i8* %223, i32 %222, !dbg !238 ; [#uses=1 type=i8*] [debug line = 290:2]
  %225 = load i8* %224, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 290:2]
  %226 = zext i8 %225 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %227 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  %228 = zext i8 %227 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %229 = add nsw i32 %228, 1, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %230 = load i8** %1, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 290:2]
  %231 = getelementptr inbounds i8* %230, i32 %229, !dbg !238 ; [#uses=2 type=i8*] [debug line = 290:2]
  %232 = load i8* %231, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 290:2]
  %233 = zext i8 %232 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %234 = xor i32 %233, %226, !dbg !238            ; [#uses=1 type=i32] [debug line = 290:2]
  %235 = trunc i32 %234 to i8, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %235, i8* %231, align 1, !dbg !238     ; [debug line = 290:2]
  %236 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  %237 = zext i8 %236 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %238 = sub nsw i32 %237, 2, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %239 = load i8** %1, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 290:2]
  %240 = getelementptr inbounds i8* %239, i32 %238, !dbg !238 ; [#uses=1 type=i8*] [debug line = 290:2]
  %241 = load i8* %240, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 290:2]
  %242 = zext i8 %241 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %243 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  %244 = zext i8 %243 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %245 = add nsw i32 %244, 2, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %246 = load i8** %1, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 290:2]
  %247 = getelementptr inbounds i8* %246, i32 %245, !dbg !238 ; [#uses=2 type=i8*] [debug line = 290:2]
  %248 = load i8* %247, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 290:2]
  %249 = zext i8 %248 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %250 = xor i32 %249, %242, !dbg !238            ; [#uses=1 type=i32] [debug line = 290:2]
  %251 = trunc i32 %250 to i8, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %251, i8* %247, align 1, !dbg !238     ; [debug line = 290:2]
  %252 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  %253 = zext i8 %252 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %254 = sub nsw i32 %253, 1, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %255 = load i8** %1, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 290:2]
  %256 = getelementptr inbounds i8* %255, i32 %254, !dbg !238 ; [#uses=1 type=i8*] [debug line = 290:2]
  %257 = load i8* %256, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 290:2]
  %258 = zext i8 %257 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %259 = load i8* %i, align 1, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  %260 = zext i8 %259 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %261 = add nsw i32 %260, 3, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %262 = load i8** %1, align 4, !dbg !238         ; [#uses=1 type=i8*] [debug line = 290:2]
  %263 = getelementptr inbounds i8* %262, i32 %261, !dbg !238 ; [#uses=2 type=i8*] [debug line = 290:2]
  %264 = load i8* %263, align 1, !dbg !238        ; [#uses=1 type=i8] [debug line = 290:2]
  %265 = zext i8 %264 to i32, !dbg !238           ; [#uses=1 type=i32] [debug line = 290:2]
  %266 = xor i32 %265, %258, !dbg !238            ; [#uses=1 type=i32] [debug line = 290:2]
  %267 = trunc i32 %266 to i8, !dbg !238          ; [#uses=1 type=i8] [debug line = 290:2]
  store i8 %267, i8* %263, align 1, !dbg !238     ; [debug line = 290:2]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !239 ; [debug line = 292:5]
  br label %268, !dbg !239                        ; [debug line = 292:5]

; <label>:268                                     ; preds = %204
  %269 = load i8* %i, align 1, !dbg !240          ; [#uses=1 type=i8] [debug line = 283:32]
  %270 = zext i8 %269 to i32, !dbg !240           ; [#uses=1 type=i32] [debug line = 283:32]
  %271 = add nsw i32 %270, 4, !dbg !240           ; [#uses=1 type=i32] [debug line = 283:32]
  %272 = trunc i32 %271 to i8, !dbg !240          ; [#uses=1 type=i8] [debug line = 283:32]
  store i8 %272, i8* %i, align 1, !dbg !240       ; [debug line = 283:32]
  br label %200, !dbg !240                        ; [debug line = 283:32]

; <label>:273                                     ; preds = %200
  ret void, !dbg !241                             ; [debug line = 294:1]
}

; [#uses=0]
define void @encrypt(i8* %ctx_key, i8* %ctx_enckey, i8* %ctx_deckey, i8* %k, i8* %buf) nounwind {
  %1 = alloca i8*, align 4                        ; [#uses=9 type=i8**]
  %2 = alloca i8*, align 4                        ; [#uses=5 type=i8**]
  %3 = alloca i8*, align 4                        ; [#uses=5 type=i8**]
  %4 = alloca i8*, align 4                        ; [#uses=5 type=i8**]
  %5 = alloca i8*, align 4                        ; [#uses=12 type=i8**]
  %rcon = alloca i8, align 1                      ; [#uses=5 type=i8*]
  %i = alloca i8, align 1                         ; [#uses=15 type=i8*]
  store i8* %ctx_key, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !242), !dbg !243 ; [debug line = 301:22] [debug variable = ctx_key]
  store i8* %ctx_enckey, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !244), !dbg !245 ; [debug line = 301:43] [debug variable = ctx_enckey]
  store i8* %ctx_deckey, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !246), !dbg !247 ; [debug line = 302:22] [debug variable = ctx_deckey]
  store i8* %k, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !248), !dbg !249 ; [debug line = 302:46] [debug variable = k]
  store i8* %buf, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !250), !dbg !251 ; [debug line = 302:61] [debug variable = buf]
  %6 = load i8** %2, align 4, !dbg !252           ; [#uses=1 type=i8*] [debug line = 303:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %6, i32 32) nounwind, !dbg !252 ; [debug line = 303:2]
  %7 = load i8** %5, align 4, !dbg !254           ; [#uses=1 type=i8*] [debug line = 303:40]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %7, i32 16) nounwind, !dbg !254 ; [debug line = 303:40]
  %8 = load i8** %1, align 4, !dbg !255           ; [#uses=1 type=i8*] [debug line = 303:71]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %8, i32 32) nounwind, !dbg !255 ; [debug line = 303:71]
  %9 = load i8** %4, align 4, !dbg !256           ; [#uses=1 type=i8*] [debug line = 303:106]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %9, i32 32) nounwind, !dbg !256 ; [debug line = 303:106]
  %10 = load i8** %3, align 4, !dbg !257          ; [#uses=1 type=i8*] [debug line = 303:135]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i8*, i32)*)(i8* %10, i32 32) nounwind, !dbg !257 ; [debug line = 303:135]
  call void bitcast (void (...)* @_ssdm_op_SpecLatency to void (i32, i32, i8*)*)(i32 1, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !258 ; [debug line = 304:1]
  %11 = load i8** %4, align 4, !dbg !258          ; [#uses=1 type=i8*] [debug line = 304:1]
  call void bitcast (void (...)* @_ssdm_op_SpecResource to void (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*)*)(i8* %11, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !258 ; [debug line = 304:1]
  %12 = load i8** %4, align 4, !dbg !258          ; [#uses=1 type=i8*] [debug line = 304:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i8*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i8* %12, i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !258 ; [debug line = 304:1]
  %13 = load i8** %3, align 4, !dbg !258          ; [#uses=1 type=i8*] [debug line = 304:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i8*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i8* %13, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !258 ; [debug line = 304:1]
  %14 = load i8** %2, align 4, !dbg !258          ; [#uses=1 type=i8*] [debug line = 304:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i8*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i8* %14, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !258 ; [debug line = 304:1]
  %15 = load i8** %1, align 4, !dbg !258          ; [#uses=1 type=i8*] [debug line = 304:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i8*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i8* %15, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !258 ; [debug line = 304:1]
  %16 = load i8** %5, align 4, !dbg !258          ; [#uses=1 type=i8*] [debug line = 304:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i8*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i8* %16, i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !258 ; [debug line = 304:1]
  call void @llvm.dbg.declare(metadata !{i8* %rcon}, metadata !259), !dbg !260 ; [debug line = 305:13] [debug variable = rcon]
  store i8 1, i8* %rcon, align 1, !dbg !261       ; [debug line = 305:21]
  call void @llvm.dbg.declare(metadata !{i8* %i}, metadata !262), !dbg !263 ; [debug line = 306:13] [debug variable = i]
  br label %17, !dbg !264                         ; [debug line = 306:14]

; <label>:17                                      ; preds = %0
  store i8 0, i8* %i, align 1, !dbg !265          ; [debug line = 308:17]
  br label %18, !dbg !265                         ; [debug line = 308:17]

; <label>:18                                      ; preds = %36, %17
  %19 = load i8* %i, align 1, !dbg !265           ; [#uses=1 type=i8] [debug line = 308:17]
  %20 = zext i8 %19 to i32, !dbg !265             ; [#uses=1 type=i32] [debug line = 308:17]
  %21 = icmp slt i32 %20, 32, !dbg !265           ; [#uses=1 type=i1] [debug line = 308:17]
  br i1 %21, label %22, label %39, !dbg !265      ; [debug line = 308:17]

; <label>:22                                      ; preds = %18
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0)) nounwind, !dbg !267 ; [debug line = 308:37]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0)) nounwind, !dbg !267 ; [debug line = 308:37]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !269 ; [debug line = 312:1]
  %23 = load i8* %i, align 1, !dbg !270           ; [#uses=1 type=i8] [debug line = 314:2]
  %24 = zext i8 %23 to i32, !dbg !270             ; [#uses=1 type=i32] [debug line = 314:2]
  %25 = load i8** %4, align 4, !dbg !270          ; [#uses=1 type=i8*] [debug line = 314:2]
  %26 = getelementptr inbounds i8* %25, i32 %24, !dbg !270 ; [#uses=1 type=i8*] [debug line = 314:2]
  %27 = load i8* %26, align 1, !dbg !270          ; [#uses=2 type=i8] [debug line = 314:2]
  %28 = load i8* %i, align 1, !dbg !270           ; [#uses=1 type=i8] [debug line = 314:2]
  %29 = zext i8 %28 to i32, !dbg !270             ; [#uses=1 type=i32] [debug line = 314:2]
  %30 = load i8** %3, align 4, !dbg !270          ; [#uses=1 type=i8*] [debug line = 314:2]
  %31 = getelementptr inbounds i8* %30, i32 %29, !dbg !270 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %27, i8* %31, align 1, !dbg !270       ; [debug line = 314:2]
  %32 = load i8* %i, align 1, !dbg !270           ; [#uses=1 type=i8] [debug line = 314:2]
  %33 = zext i8 %32 to i32, !dbg !270             ; [#uses=1 type=i32] [debug line = 314:2]
  %34 = load i8** %2, align 4, !dbg !270          ; [#uses=1 type=i8*] [debug line = 314:2]
  %35 = getelementptr inbounds i8* %34, i32 %33, !dbg !270 ; [#uses=1 type=i8*] [debug line = 314:2]
  store i8 %27, i8* %35, align 1, !dbg !270       ; [debug line = 314:2]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0)) nounwind, !dbg !271 ; [debug line = 315:5]
  br label %36, !dbg !271                         ; [debug line = 315:5]

; <label>:36                                      ; preds = %22
  %37 = load i8* %i, align 1, !dbg !272           ; [#uses=1 type=i8] [debug line = 308:32]
  %38 = add i8 %37, 1, !dbg !272                  ; [#uses=1 type=i8] [debug line = 308:32]
  store i8 %38, i8* %i, align 1, !dbg !272        ; [debug line = 308:32]
  br label %18, !dbg !272                         ; [debug line = 308:32]

; <label>:39                                      ; preds = %18
  br label %40, !dbg !273                         ; [debug line = 315:5]

; <label>:40                                      ; preds = %39
  store i8 8, i8* %i, align 1, !dbg !274          ; [debug line = 316:17]
  br label %41, !dbg !274                         ; [debug line = 316:17]

; <label>:41                                      ; preds = %45, %40
  %42 = load i8* %i, align 1, !dbg !274           ; [#uses=1 type=i8] [debug line = 316:17]
  %43 = add i8 %42, -1, !dbg !274                 ; [#uses=2 type=i8] [debug line = 316:17]
  store i8 %43, i8* %i, align 1, !dbg !274        ; [debug line = 316:17]
  %44 = icmp ne i8 %43, 0, !dbg !274              ; [#uses=1 type=i1] [debug line = 316:17]
  br i1 %44, label %45, label %47, !dbg !274      ; [debug line = 316:17]

; <label>:45                                      ; preds = %41
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !276 ; [debug line = 316:29]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !276 ; [debug line = 316:29]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !278 ; [debug line = 320:1]
  %46 = load i8** %3, align 4, !dbg !279          ; [#uses=1 type=i8*] [debug line = 322:2]
  call void @aes_expandEncKey(i8* %46, i8* %rcon), !dbg !279 ; [debug line = 322:2]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0)) nounwind, !dbg !280 ; [debug line = 323:5]
  br label %41, !dbg !280                         ; [debug line = 323:5]

; <label>:47                                      ; preds = %41
  %48 = load i8** %5, align 4, !dbg !281          ; [#uses=1 type=i8*] [debug line = 326:5]
  %49 = load i8** %2, align 4, !dbg !281          ; [#uses=1 type=i8*] [debug line = 326:5]
  %50 = load i8** %1, align 4, !dbg !281          ; [#uses=1 type=i8*] [debug line = 326:5]
  call void @aes_addRoundKey_cpy(i8* %48, i8* %49, i8* %50), !dbg !281 ; [debug line = 326:5]
  br label %51, !dbg !281                         ; [debug line = 326:5]

; <label>:51                                      ; preds = %47
  store i8 1, i8* %i, align 1, !dbg !282          ; [debug line = 327:16]
  store i8 1, i8* %rcon, align 1, !dbg !282       ; [debug line = 327:16]
  br label %52, !dbg !282                         ; [debug line = 327:16]

; <label>:52                                      ; preds = %73, %51
  %53 = load i8* %i, align 1, !dbg !282           ; [#uses=1 type=i8] [debug line = 327:16]
  %54 = zext i8 %53 to i32, !dbg !282             ; [#uses=1 type=i32] [debug line = 327:16]
  %55 = icmp slt i32 %54, 14, !dbg !282           ; [#uses=1 type=i1] [debug line = 327:16]
  br i1 %55, label %56, label %76, !dbg !282      ; [debug line = 327:16]

; <label>:56                                      ; preds = %52
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0)) nounwind, !dbg !284 ; [debug line = 328:6]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0)) nounwind, !dbg !284 ; [debug line = 328:6]
  call void bitcast (void (...)* @_ssdm_Unroll to void (i32, i32, i32, i8*)*)(i32 1, i32 0, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !286 ; [debug line = 332:1]
  %57 = load i8** %5, align 4, !dbg !287          ; [#uses=1 type=i8*] [debug line = 334:2]
  call void @aes_subBytes(i8* %57), !dbg !287     ; [debug line = 334:2]
  %58 = load i8** %5, align 4, !dbg !288          ; [#uses=1 type=i8*] [debug line = 335:9]
  call void @aes_shiftRows(i8* %58), !dbg !288    ; [debug line = 335:9]
  %59 = load i8** %5, align 4, !dbg !289          ; [#uses=1 type=i8*] [debug line = 336:9]
  call void @aes_mixColumns(i8* %59), !dbg !289   ; [debug line = 336:9]
  %60 = load i8* %i, align 1, !dbg !290           ; [#uses=1 type=i8] [debug line = 337:9]
  %61 = zext i8 %60 to i32, !dbg !290             ; [#uses=1 type=i32] [debug line = 337:9]
  %62 = and i32 %61, 1, !dbg !290                 ; [#uses=1 type=i32] [debug line = 337:9]
  %63 = icmp ne i32 %62, 0, !dbg !290             ; [#uses=1 type=i1] [debug line = 337:9]
  br i1 %63, label %64, label %68, !dbg !290      ; [debug line = 337:9]

; <label>:64                                      ; preds = %56
  %65 = load i8** %5, align 4, !dbg !291          ; [#uses=1 type=i8*] [debug line = 337:21]
  %66 = load i8** %1, align 4, !dbg !291          ; [#uses=1 type=i8*] [debug line = 337:21]
  %67 = getelementptr inbounds i8* %66, i32 16, !dbg !291 ; [#uses=1 type=i8*] [debug line = 337:21]
  call void @aes_addRoundKey(i8* %65, i8* %67), !dbg !291 ; [debug line = 337:21]
  br label %72, !dbg !291                         ; [debug line = 337:21]

; <label>:68                                      ; preds = %56
  %69 = load i8** %1, align 4, !dbg !292          ; [#uses=1 type=i8*] [debug line = 338:14]
  call void @aes_expandEncKey(i8* %69, i8* %rcon), !dbg !292 ; [debug line = 338:14]
  %70 = load i8** %5, align 4, !dbg !293          ; [#uses=1 type=i8*] [debug line = 338:48]
  %71 = load i8** %1, align 4, !dbg !293          ; [#uses=1 type=i8*] [debug line = 338:48]
  call void @aes_addRoundKey(i8* %70, i8* %71), !dbg !293 ; [debug line = 338:48]
  br label %72

; <label>:72                                      ; preds = %68, %64
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0)) nounwind, !dbg !294 ; [debug line = 339:5]
  br label %73, !dbg !294                         ; [debug line = 339:5]

; <label>:73                                      ; preds = %72
  %74 = load i8* %i, align 1, !dbg !295           ; [#uses=1 type=i8] [debug line = 327:41]
  %75 = add i8 %74, 1, !dbg !295                  ; [#uses=1 type=i8] [debug line = 327:41]
  store i8 %75, i8* %i, align 1, !dbg !295        ; [debug line = 327:41]
  br label %52, !dbg !295                         ; [debug line = 327:41]

; <label>:76                                      ; preds = %52
  %77 = load i8** %5, align 4, !dbg !296          ; [#uses=1 type=i8*] [debug line = 340:5]
  call void @aes_subBytes(i8* %77), !dbg !296     ; [debug line = 340:5]
  %78 = load i8** %5, align 4, !dbg !297          ; [#uses=1 type=i8*] [debug line = 341:5]
  call void @aes_shiftRows(i8* %78), !dbg !297    ; [debug line = 341:5]
  %79 = load i8** %1, align 4, !dbg !298          ; [#uses=1 type=i8*] [debug line = 342:5]
  call void @aes_expandEncKey(i8* %79, i8* %rcon), !dbg !298 ; [debug line = 342:5]
  %80 = load i8** %5, align 4, !dbg !299          ; [#uses=1 type=i8*] [debug line = 343:5]
  %81 = load i8** %1, align 4, !dbg !299          ; [#uses=1 type=i8*] [debug line = 343:5]
  call void @aes_addRoundKey(i8* %80, i8* %81), !dbg !299 ; [debug line = 343:5]
  ret void, !dbg !300                             ; [debug line = 344:1]
}

; [#uses=1]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecInterface(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!66, !73, !77, !83, !89, !90, !91, !93}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls/encrypt/solution/.autopilot/db/aes.pragma.2.c", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !29} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !13, metadata !17, metadata !20, metadata !23, metadata !24, metadata !25, metadata !26}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"rj_xtime", metadata !"rj_xtime", metadata !"", metadata !6, i32 172, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (i8)* @rj_xtime, null, null, metadata !11, i32 173} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", null} ; [ DW_TAG_file_type ]
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
!56 = metadata !{i32 786484, i32 0, null, metadata !"INPUT_SIZE", metadata !"INPUT_SIZE", metadata !"", metadata !57, i32 45, metadata !58, i32 0, i32 1, i32* @INPUT_SIZE} ; [ DW_TAG_variable ]
!57 = metadata !{i32 786473, metadata !"/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common/support.h", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", null} ; [ DW_TAG_file_type ]
!58 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!59 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !60, i32 320, metadata !61, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!60 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", null} ; [ DW_TAG_file_type ]
!61 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !60, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!62 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !60, i32 321, metadata !61, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!63 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !60, i32 322, metadata !61, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!64 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !65, i32 26, metadata !58, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!65 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/scratch/local/tmp.7aow7oM1KP/_sds/vhls", null} ; [ DW_TAG_file_type ]
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
!103 = metadata !{i32 786689, metadata !13, metadata !"buf", metadata !6, i32 16777394, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 178, i32 28, metadata !13, null}
!105 = metadata !{i32 786688, metadata !106, metadata !"i", metadata !6, i32 180, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 786443, metadata !13, i32 179, i32 1, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 180, i32 22, metadata !106, null}
!108 = metadata !{i32 180, i32 28, metadata !106, null}
!109 = metadata !{i32 182, i32 11, metadata !106, null}
!110 = metadata !{i32 183, i32 6, metadata !111, null}
!111 = metadata !{i32 786443, metadata !106, i32 183, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 187, i32 1, metadata !111, null}
!113 = metadata !{i32 189, i32 2, metadata !111, null}
!114 = metadata !{i32 190, i32 5, metadata !111, null}
!115 = metadata !{i32 191, i32 1, metadata !106, null}
!116 = metadata !{i32 786689, metadata !17, metadata !"buf", metadata !6, i32 16777410, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 194, i32 31, metadata !17, null}
!118 = metadata !{i32 786689, metadata !17, metadata !"key", metadata !6, i32 33554626, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 194, i32 45, metadata !17, null}
!120 = metadata !{i32 786688, metadata !121, metadata !"i", metadata !6, i32 196, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!121 = metadata !{i32 786443, metadata !17, i32 195, i32 1, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 196, i32 22, metadata !121, null}
!123 = metadata !{i32 196, i32 28, metadata !121, null}
!124 = metadata !{i32 198, i32 14, metadata !121, null}
!125 = metadata !{i32 199, i32 6, metadata !126, null}
!126 = metadata !{i32 786443, metadata !121, i32 199, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 203, i32 1, metadata !126, null}
!128 = metadata !{i32 205, i32 2, metadata !126, null}
!129 = metadata !{i32 206, i32 5, metadata !126, null}
!130 = metadata !{i32 207, i32 1, metadata !121, null}
!131 = metadata !{i32 786689, metadata !20, metadata !"buf", metadata !6, i32 16777426, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 210, i32 35, metadata !20, null}
!133 = metadata !{i32 786689, metadata !20, metadata !"key", metadata !6, i32 33554642, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 210, i32 49, metadata !20, null}
!135 = metadata !{i32 786689, metadata !20, metadata !"cpk", metadata !6, i32 50331858, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 210, i32 63, metadata !20, null}
!137 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !6, i32 212, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!138 = metadata !{i32 786443, metadata !20, i32 211, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 212, i32 22, metadata !138, null}
!140 = metadata !{i32 212, i32 28, metadata !138, null}
!141 = metadata !{i32 214, i32 13, metadata !138, null}
!142 = metadata !{i32 215, i32 6, metadata !143, null}
!143 = metadata !{i32 786443, metadata !138, i32 215, i32 5, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 219, i32 1, metadata !143, null}
!145 = metadata !{i32 221, i32 2, metadata !143, null}
!146 = metadata !{i32 222, i32 5, metadata !143, null}
!147 = metadata !{i32 223, i32 1, metadata !138, null}
!148 = metadata !{i32 786689, metadata !23, metadata !"buf", metadata !6, i32 16777443, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 227, i32 29, metadata !23, null}
!150 = metadata !{i32 786688, metadata !151, metadata !"i", metadata !6, i32 229, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 786443, metadata !23, i32 228, i32 1, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 229, i32 22, metadata !151, null}
!153 = metadata !{i32 786688, metadata !151, metadata !"j", metadata !6, i32 229, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!154 = metadata !{i32 229, i32 25, metadata !151, null}
!155 = metadata !{i32 231, i32 5, metadata !151, null}
!156 = metadata !{i32 231, i32 17, metadata !151, null}
!157 = metadata !{i32 231, i32 34, metadata !151, null}
!158 = metadata !{i32 231, i32 51, metadata !151, null}
!159 = metadata !{i32 231, i32 69, metadata !151, null}
!160 = metadata !{i32 232, i32 5, metadata !151, null}
!161 = metadata !{i32 232, i32 18, metadata !151, null}
!162 = metadata !{i32 232, i32 36, metadata !151, null}
!163 = metadata !{i32 233, i32 5, metadata !151, null}
!164 = metadata !{i32 233, i32 17, metadata !151, null}
!165 = metadata !{i32 233, i32 35, metadata !151, null}
!166 = metadata !{i32 233, i32 54, metadata !151, null}
!167 = metadata !{i32 233, i32 72, metadata !151, null}
!168 = metadata !{i32 234, i32 5, metadata !151, null}
!169 = metadata !{i32 234, i32 18, metadata !151, null}
!170 = metadata !{i32 234, i32 36, metadata !151, null}
!171 = metadata !{i32 236, i32 1, metadata !151, null}
!172 = metadata !{i32 786689, metadata !24, metadata !"buf", metadata !6, i32 16777455, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!173 = metadata !{i32 239, i32 30, metadata !24, null}
!174 = metadata !{i32 786688, metadata !175, metadata !"i", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!175 = metadata !{i32 786443, metadata !24, i32 240, i32 1, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 241, i32 22, metadata !175, null}
!177 = metadata !{i32 786688, metadata !175, metadata !"a", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 241, i32 25, metadata !175, null}
!179 = metadata !{i32 786688, metadata !175, metadata !"b", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!180 = metadata !{i32 241, i32 28, metadata !175, null}
!181 = metadata !{i32 786688, metadata !175, metadata !"c", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 241, i32 31, metadata !175, null}
!183 = metadata !{i32 786688, metadata !175, metadata !"d", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!184 = metadata !{i32 241, i32 34, metadata !175, null}
!185 = metadata !{i32 786688, metadata !175, metadata !"e", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 241, i32 37, metadata !175, null}
!187 = metadata !{i32 241, i32 38, metadata !175, null}
!188 = metadata !{i32 243, i32 16, metadata !189, null}
!189 = metadata !{i32 786443, metadata !175, i32 243, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 244, i32 6, metadata !191, null}
!191 = metadata !{i32 786443, metadata !189, i32 244, i32 5, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 248, i32 1, metadata !191, null}
!193 = metadata !{i32 250, i32 2, metadata !191, null}
!194 = metadata !{i32 250, i32 14, metadata !191, null}
!195 = metadata !{i32 250, i32 30, metadata !191, null}
!196 = metadata !{i32 250, i32 46, metadata !191, null}
!197 = metadata !{i32 251, i32 9, metadata !191, null}
!198 = metadata !{i32 252, i32 9, metadata !191, null}
!199 = metadata !{i32 252, i32 23, metadata !191, null}
!200 = metadata !{i32 252, i32 38, metadata !191, null}
!201 = metadata !{i32 252, i32 54, metadata !191, null}
!202 = metadata !{i32 253, i32 9, metadata !191, null}
!203 = metadata !{i32 253, i32 25, metadata !191, null}
!204 = metadata !{i32 253, i32 40, metadata !191, null}
!205 = metadata !{i32 253, i32 56, metadata !191, null}
!206 = metadata !{i32 254, i32 5, metadata !191, null}
!207 = metadata !{i32 243, i32 31, metadata !189, null}
!208 = metadata !{i32 255, i32 1, metadata !175, null}
!209 = metadata !{i32 786689, metadata !25, metadata !"k", metadata !6, i32 16777474, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 258, i32 32, metadata !25, null}
!211 = metadata !{i32 786689, metadata !25, metadata !"rc", metadata !6, i32 33554690, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 258, i32 44, metadata !25, null}
!213 = metadata !{i32 786688, metadata !214, metadata !"i", metadata !6, i32 260, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 786443, metadata !25, i32 259, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!215 = metadata !{i32 260, i32 22, metadata !214, null}
!216 = metadata !{i32 262, i32 5, metadata !214, null}
!217 = metadata !{i32 263, i32 5, metadata !214, null}
!218 = metadata !{i32 264, i32 5, metadata !214, null}
!219 = metadata !{i32 265, i32 5, metadata !214, null}
!220 = metadata !{i32 266, i32 5, metadata !214, null}
!221 = metadata !{i32 268, i32 16, metadata !222, null}
!222 = metadata !{i32 786443, metadata !214, i32 268, i32 12, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 269, i32 6, metadata !224, null}
!224 = metadata !{i32 786443, metadata !222, i32 269, i32 5, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 273, i32 1, metadata !224, null}
!226 = metadata !{i32 275, i32 2, metadata !224, null}
!227 = metadata !{i32 277, i32 5, metadata !224, null}
!228 = metadata !{i32 268, i32 31, metadata !222, null}
!229 = metadata !{i32 278, i32 5, metadata !214, null}
!230 = metadata !{i32 279, i32 5, metadata !214, null}
!231 = metadata !{i32 280, i32 5, metadata !214, null}
!232 = metadata !{i32 281, i32 5, metadata !214, null}
!233 = metadata !{i32 283, i32 16, metadata !234, null}
!234 = metadata !{i32 786443, metadata !214, i32 283, i32 12, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 284, i32 6, metadata !236, null}
!236 = metadata !{i32 786443, metadata !234, i32 284, i32 5, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 288, i32 1, metadata !236, null}
!238 = metadata !{i32 290, i32 2, metadata !236, null}
!239 = metadata !{i32 292, i32 5, metadata !236, null}
!240 = metadata !{i32 283, i32 32, metadata !234, null}
!241 = metadata !{i32 294, i32 1, metadata !214, null}
!242 = metadata !{i32 786689, metadata !26, metadata !"ctx_key", metadata !6, i32 16777517, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!243 = metadata !{i32 301, i32 22, metadata !26, null}
!244 = metadata !{i32 786689, metadata !26, metadata !"ctx_enckey", metadata !6, i32 33554733, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!245 = metadata !{i32 301, i32 43, metadata !26, null}
!246 = metadata !{i32 786689, metadata !26, metadata !"ctx_deckey", metadata !6, i32 50331950, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!247 = metadata !{i32 302, i32 22, metadata !26, null}
!248 = metadata !{i32 786689, metadata !26, metadata !"k", metadata !6, i32 67109166, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!249 = metadata !{i32 302, i32 46, metadata !26, null}
!250 = metadata !{i32 786689, metadata !26, metadata !"buf", metadata !6, i32 83886382, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!251 = metadata !{i32 302, i32 61, metadata !26, null}
!252 = metadata !{i32 303, i32 2, metadata !253, null}
!253 = metadata !{i32 786443, metadata !26, i32 303, i32 1, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 303, i32 40, metadata !253, null}
!255 = metadata !{i32 303, i32 71, metadata !253, null}
!256 = metadata !{i32 303, i32 106, metadata !253, null}
!257 = metadata !{i32 303, i32 135, metadata !253, null}
!258 = metadata !{i32 304, i32 1, metadata !253, null}
!259 = metadata !{i32 786688, metadata !253, metadata !"rcon", metadata !6, i32 305, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!260 = metadata !{i32 305, i32 13, metadata !253, null}
!261 = metadata !{i32 305, i32 21, metadata !253, null}
!262 = metadata !{i32 786688, metadata !253, metadata !"i", metadata !6, i32 306, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!263 = metadata !{i32 306, i32 13, metadata !253, null}
!264 = metadata !{i32 306, i32 14, metadata !253, null}
!265 = metadata !{i32 308, i32 17, metadata !266, null}
!266 = metadata !{i32 786443, metadata !253, i32 308, i32 12, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 308, i32 37, metadata !268, null}
!268 = metadata !{i32 786443, metadata !266, i32 308, i32 36, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!269 = metadata !{i32 312, i32 1, metadata !268, null}
!270 = metadata !{i32 314, i32 2, metadata !268, null}
!271 = metadata !{i32 315, i32 5, metadata !268, null}
!272 = metadata !{i32 308, i32 32, metadata !266, null}
!273 = metadata !{i32 315, i32 5, metadata !266, null}
!274 = metadata !{i32 316, i32 17, metadata !275, null}
!275 = metadata !{i32 786443, metadata !253, i32 316, i32 12, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 316, i32 29, metadata !277, null}
!277 = metadata !{i32 786443, metadata !275, i32 316, i32 28, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!278 = metadata !{i32 320, i32 1, metadata !277, null}
!279 = metadata !{i32 322, i32 2, metadata !277, null}
!280 = metadata !{i32 323, i32 5, metadata !277, null}
!281 = metadata !{i32 326, i32 5, metadata !253, null}
!282 = metadata !{i32 327, i32 16, metadata !283, null}
!283 = metadata !{i32 786443, metadata !253, i32 327, i32 12, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 328, i32 6, metadata !285, null}
!285 = metadata !{i32 786443, metadata !283, i32 328, i32 5, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!286 = metadata !{i32 332, i32 1, metadata !285, null}
!287 = metadata !{i32 334, i32 2, metadata !285, null}
!288 = metadata !{i32 335, i32 9, metadata !285, null}
!289 = metadata !{i32 336, i32 9, metadata !285, null}
!290 = metadata !{i32 337, i32 9, metadata !285, null}
!291 = metadata !{i32 337, i32 21, metadata !285, null}
!292 = metadata !{i32 338, i32 14, metadata !285, null}
!293 = metadata !{i32 338, i32 48, metadata !285, null}
!294 = metadata !{i32 339, i32 5, metadata !285, null}
!295 = metadata !{i32 327, i32 41, metadata !283, null}
!296 = metadata !{i32 340, i32 5, metadata !253, null}
!297 = metadata !{i32 341, i32 5, metadata !253, null}
!298 = metadata !{i32 342, i32 5, metadata !253, null}
!299 = metadata !{i32 343, i32 5, metadata !253, null}
!300 = metadata !{i32 344, i32 1, metadata !253, null}
