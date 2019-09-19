#!/bin/bash -e
cd /mnt/icgridio2/safe/giesen/HLS_tuner/pragmatuner/TestApps/cholesky/output/0001
source ${SDSOC_ROOT}/settings64.sh
vivado_hls run_hls.tcl
