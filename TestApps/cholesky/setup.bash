#!/bin/bash -e

# Script for setting up Cholesky test

# Created on Sep 17, 2019
# Author: Hans Giesen (giesen@seas.upenn.edu)


# The Cholesky example provided as part of SDSoC 2019.1 is copyrighted, so we do not include it in the repository.  To
# circumvent this, we retrieve it from a Xilinx installation and apply a few patches.

VERSION=$(basename ${SDSOC_ROOT})
VIVADO_DIR=${SDSOC_ROOT}/../../Vivado/${VERSION}
EXAMPLE_DIR=${VIVADO_DIR}/examples/design/linear_algebra/cholesky
LIBRARY_DIR=${VIVADO_DIR}/include/hls/linear_algebra

cd src
cp ${EXAMPLE_DIR}/cholesky.cpp .
cp ${EXAMPLE_DIR}/cholesky.h .
cp ${EXAMPLE_DIR}/cholesky_tb.cpp .
cp ${EXAMPLE_DIR}/run_hls.tcl .
cp ${LIBRARY_DIR}/hls_cholesky.h ./test_cholesky.h
chmod a-x *.cpp *.h *.tcl
cd ..

patch -p0 < cholesky.patch

data/get_input.py > src/input.h
