#!/bin/bash -e
VERSION=$(basename ${SDSOC_ROOT})
VIVADO_DIR=${SDSOC_ROOT}/../../Vivado/${VERSION}
EXAMPLE_DIR=$(realpath --relative-to=. ${VIVADO_DIR}/examples/design/linear_algebra/cholesky)
LIBRARY_DIR=$(realpath --relative-to=. ${VIVADO_DIR}/include/hls/linear_algebra)

(
  echo src/cholesky.cpp
  diff -u ${EXAMPLE_DIR}/cholesky.cpp src/cholesky.cpp || true
  echo src/cholesky.h
  diff -u ${EXAMPLE_DIR}/cholesky.h src/cholesky.h || true
  echo src/cholesky_tb.cpp
  diff -u ${EXAMPLE_DIR}/cholesky_tb.cpp src/cholesky_tb.cpp || true
  echo src/run_hls.tcl
  diff -u ${EXAMPLE_DIR}/run_hls.tcl src/run_hls.tcl || true
  echo src/test_cholesky.h
  diff -u ${LIBRARY_DIR}/hls_cholesky.h src/test_cholesky.h || true
) > cholesky.patch

