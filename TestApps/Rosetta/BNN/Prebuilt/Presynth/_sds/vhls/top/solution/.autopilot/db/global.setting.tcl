
set TopModule "top"
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
set HasDSPModule 1
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
set SourceFiles {sc {} c /mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/accel/Accel.cpp}
set SourceFlags {sc {} c {{-I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/utils -O3 -DHLS_COMPILE -DRUN_STANDALONE -Wall -Wno-unused-label -D__SDSCC__ -m32 -I/mnt/icgridio2/safe/SDSoC/SDx/2017.1/target/aarch32-none/include -I/mnt/icgridio2/safe/giesen/HLS_tuner/1/TestApps/Rosetta/BNN/Sources/accel -D__SDSVHLS__ -D__SDSVHLS_SYNTHESIS__ -I/var/tmp/tmp.yK7okjyWNi -w}}}
set DirectiveFile {/var/tmp/tmp.yK7okjyWNi/_sds/vhls/top/solution/solution.directive}
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
