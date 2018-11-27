#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/scratch/safe/SDSoC/SDx/2017.1/SDK/bin:/scratch/safe/SDSoC/SDx/2017.1/Vivado/ids_lite/ISE/bin/lin64:/scratch/safe/SDSoC/SDx/2017.1/Vivado/bin
else
  PATH=/scratch/safe/SDSoC/SDx/2017.1/SDK/bin:/scratch/safe/SDSoC/SDx/2017.1/Vivado/ids_lite/ISE/bin/lin64:/scratch/safe/SDSoC/SDx/2017.1/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/scratch/safe/SDSoC/SDx/2017.1/Vivado/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/scratch/safe/SDSoC/SDx/2017.1/Vivado/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/scratch/local/tmp.tEdaivbEa4/_sds/p0/ipi/pynq.runs/pynq_encrypt_1_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log pynq_encrypt_1_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source pynq_encrypt_1_0.tcl
