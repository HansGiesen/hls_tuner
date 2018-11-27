
set TopModule "encrypt"
set ClockPeriod "10.000000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix "a0_"
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7z020:clg400:-1"
set SourceFiles {sc {} c /mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources/aes.c}
set SourceFlags {sc {} c {{-I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources -I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/common -Wall -O3 -DPIPELINE_II_SUB=11 -DUNROLL_FACTOR_EXP1=2 -DUNROLL_FACTOR_EXP2=1 -DUNROLL_FACTOR_ECB1=32 -DUNROLL_FACTOR_ECB3=7 -DUNROLL_FACTOR_ECB2=4 -DPIPELINE_II_ADDKEY=8 -DPIPELINE_II_ECB1=16 -DPIPELINE_II_ECB2=6 -DPIPELINE_II_ECB3=12 -DPIPELINE_II_EXP1=1 -DPIPELINE_II_EXP2=2 -DPIPELINE_EXP2 -DPIPELINE_EXP1 -DUNROLL_FACTOR_ADDKEY=9 -DUNROLL_FACTOR_SUB=14 -DUNROLL_FACTOR_MIX=4 -DPIPELINE_II_CPKEY=6 -DPIPELINE_II_MIX=1 -DPIPELINE_ECB2 -DUNROLL_FACTOR_CPKEY=4 -DPIPELINE_MIX -D__SDSCC__ -m32 -I/mnt/icgridio2/safe/SDSoC/SDx/2017.1/target/aarch32-none/include -I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/MachSuite/aes/Sources -D__SDSVHLS__ -D__SDSVHLS_SYNTHESIS__ -I/scratch/local/tmp.soPlafqy6w -w}}}
set DirectiveFile {/scratch/local/tmp.soPlafqy6w/_sds/vhls/encrypt/solution/solution.directive}
set TBFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set TBInstNames {bc "" c "" sc "" cas "" vhdl "" verilog ""}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution.aps"
set AvePath "../.."
set HPFPO "0"
