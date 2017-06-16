#!/bin/bash -e

if [ $# -ne 3 ]
then
  echo "Usage: $0 <Directory with makefiles of SDSoC project> <Serial device> <Maximum runtime in seconds>"
  exit 1
fi

source ${SDSOC_ROOT}/settings64.sh

cd "$1"

ELF_FILE=$(grep "^main-build:" makefile | awk '{ print $2 }')
BIT_FILE="$1/${ELF_FILE}.bit"

cat > ${HLS_TUNER_ROOT}/HLSTuner/Examples/MatMul/Run.tcl << END
connect
source $1/_sds/p0/ipi/zed.sdk/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248518531"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248518531" && level==0} -index 1
fpga -file ${BIT_FILE}
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248518531"} -index 0
loadhw $1/_sds/p0/ipi/zed.sdk/zed.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248518531"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248518531"} -index 0
dow ${ELF_FILE}
bpadd -addr &exit
con -block -timeout $3
END

