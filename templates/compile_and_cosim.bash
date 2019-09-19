#!/bin/bash -e
cd {output_dir}
source ${{SDSOC_ROOT}}/settings64.sh
vivado_hls run_hls.tcl
