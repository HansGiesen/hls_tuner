export PATH=/scratch/safe/SDSoC/SDx/2017.1/Vivado/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/gcc/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/msys/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/tps/lnx64/jre/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/SDK/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/bin:/scratch/safe/SDSoC/SDx/2017.1/bin:/scratch/safe/SDSoC/SDx/2017.1/tps/lnx64/jre/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/arm/lin/bin:/scratch/safe/SDSoC/SDx/2017.1/Vivado/bin:/scratch/safe/SDSoC/SDx/2017.1/Vivado_HLS/bin:/scratch/safe/SDSoC/SDx/2017.1/lnx64/tools/gdb/gdb-7.9.1/bin:/scratch/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/bin:/scratch/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/gcc/bin:/scratch/safe/SDSoC/DocNav:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/microblaze/lin/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/microblaze/linux_toolchain/lin64_be/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/microblaze/linux_toolchain/lin64_le/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch32/lin/gcc-arm-none-eabi/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch64/lin/aarch64-linux/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/aarch64/lin/aarch64-none/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/gnu/armr5/lin/gcc-arm-none-eabi/bin:/scratch/safe/SDSoC/SDx/2017.1/SDK/tps/lnx64/cmake-3.3.2/bin:/home1/s/sgeadmin/ogs-2011p1/bin/linux-x64:/home1/g/giesen/bin:/usr/local/bin:/usr/bin:/bin:/usr/bin/X11:/usr/games:/opt/cross/bin:/usr/lib/mit/bin:/usr/local/Qt5.4.0/Tools/QtCreator/bin:/usr/lib/qt3/bin:.
export LD_LIBRARY_PATH=/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/graphviz/lib:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/bin:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lib/lnx64.o:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/tps/lnx64/jre/lib/amd64:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/tps/lnx64/jre/lib/amd64/server:/scratch/safe/SDSoC/SDx/2017.1/lib/lnx64.o:/scratch/safe/SDSoC/SDx/2017.1/tps/lnx64/jre/lib/amd64:/scratch/safe/SDSoC/SDx/2017.1/tps/lnx64/jre/lib/amd64/server:/scratch/safe/SDSoC/SDx/2017.1/runtime/lib/x86_64:/scratch/safe/SDSoC/SDx/2017.1/lib/lnx64.o:/scratch/safe/SDSoC/SDx/2017.1/bin/../lnx64/tools/dot/lib:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/bin/../lnx64/tools/dot/lib:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/fpo_v6_1:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/fpo_v7_0:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/fft_v9_0:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/opencv:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/fir_v7_0:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/dds_v6_0:/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/gdb_v7_2
export HDI_APPROOT=/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS
export XILINX_OPENCL_CLANG=/mnt/icgridio2/safe/SDSoC/SDx/2017.1/Vivado_HLS/lnx64/tools/clang
export RDI_PLATFORM=lnx64
bugpoint -mlimit=32000  --load libhls_support.so  --load libhls_bugpoint.so  -hls -strip  -function-uniquify -auto-function-inline -globaldce  -ptrArgReplace -mem2reg -instcombine -dce  -reset-lda  -loop-simplify -indvars -licm -loop-dep  -loop-bound -licm -loop-simplify -flattenloopnest  -array-flatten -gvn -instcombine -dce  -array-map -dce -func-legal  -gvn -adce -instcombine -cfgopt -simplifycfg -loop-simplify   -array-burst -promote-global-argument -dce  -axi4-lower -array-seg-normalize  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -gvn -gvn  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa -dse -adse -adce -licm  -inst-simplify -dce  -globaldce -instcombine -array-stream -eliminate-keepreads -instcombine  -dce   -deadargelim -doublePtrSimplify  -doublePtrElim -dce -doublePtrSimplify -promote-dbg-pointer  -dce -scalarrepl -mem2reg -disaggr -norm-name -mem2reg  -instcombine  -dse -adse -adce -ptrLegalization -dce -auto-rom-infer -array-flatten -dce -instcombine -check-doubleptr  -loop-rot -constprop -cfgopt -simplifycfg -loop-simplify -indvars -pointer-simplify -dce -loop-bound  -loop-simplify -loop-preproc  -constprop -global-constprop -gvn -mem2reg -instcombine -dce  -loop-bound  -loop-merge -dce  -bitwidthmin  -deadargelim -dce  -canonicalize-dataflow -dce  -scalar-propagation -deadargelim -globaldce -mem2reg  -licm -interface-preproc -interface-gen  -deadargelim -directive-preproc -inst-simplify -dce  -gvn -mem2reg -instcombine -dce -adse  -loop-bound  -instcombine -cfgopt -simplifycfg -loop-simplify  -clean-region -io-protocol  -find-region -mem2reg  -bitop-raise  -inst-simplify -inst-rectify -instcombine -adce -deadargelim  -loop-simplify -phi-opt -bitop-raise  -cfgopt -simplifycfg -strip-dead-prototypes  -interface-lower -bitop-lower -intrinsic-lower -auto-function-inline  -basicaa -aggrmodref-aa -globalsmodref-aa -aggr-aa  -inst-simplify -simplifycfg   -loop-simplify  -mergereturn -inst-simplify -inst-rectify  -dce -bitop-lower  -loop-rewind -pointer-simplify -dce -cfgopt  -read-loop-dep -dce -bitwidth -loop-dep -check-stream -norm-name -legalize  -validate-dataflow  /scratch/local/tmp.soPlafqy6w/_sds/vhls/encrypt/solution/.autopilot/db/a.o.2.bc
llvm-dis bugpoint-reduced-simplified.bc 