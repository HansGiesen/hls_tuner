# Makefile for BNN of Rosetta benchmarks
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#
# Targets:
#   all   - Builds hardware and software in SDSoC.
#   hls   - Performs only HLS (for debugging purposes).
#   clean - Removes all build products.

ifndef HLS_TUNER_ROOT
$(error Please set the HLS_TUNER_ROOT environment variable to the root of the repository.)
endif

DATA_MOVER_CLOCK ?= 0
KERNEL_CLOCK ?= 0
JOBS ?= 1
THREADS ?= 1

SDSOC_ROOT := $(realpath $(SDSOC_ROOT))

SRC_DIR := $(HLS_TUNER_ROOT)/TestApps/Rosetta/BNN/Sources

ACCEL_SRC_DIR := $(SRC_DIR)/accel
UTILS_SRC_DIR := $(SRC_DIR)/utils

EXE_FILE := BNN.elf
AES_LIB_FILE := minizip/libaes.a
ACCEL_OBJ_FILES := accel_test_bnn.o Accel.o AccelSchedule.o AccelTest.o AccelPrint.o Dense.o InputConv.o
UTILS_OBJ_FILES := Common.o Timer.o DataIO.o ParamIO.o

KERNEL = top
KERNEL_SRC = $(ACCEL_SRC_DIR)/Accel.cpp

SYS_CFG ?= standalone
PLATFORM ?= $(HLS_TUNER_ROOT)/Platforms/Vivado_2017.1/pynq
PROC ?= a9_0

CC := sdscc
CXX := sds++
VIVADO_HLS ?= vivado_hls

SDS_FLAGS ?= -sds-sys-config $(SYS_CFG) -sds-pf $(PLATFORM) -sds-proc $(PROC) \
             -sds-hw $(KERNEL) $(KERNEL_SRC) -clkid $(KERNEL_CLOCK) -sds-end \
             -maxjobs $(JOBS) -maxthreads $(THREADS)

CFLAGS ?= -O3 -DHLS_COMPILE -DRUN_STANDALONE -I $(UTILS_SRC_DIR) -Wall -Wno-unused-label $(HLS_TUNER_DEFINES)
LFLAGS ?= -dmclkid $(DATA_MOVER_CLOCK) -mno-boot-files # -mno-bitstream

RTL_FILE = HLS/solution1/syn/vhdl/$(KERNEL).vhd

SHELL := /bin/bash # Needed to run the source command.

.PHONY: all clean hls

all: $(EXE_FILE)

$(EXE_FILE): $(ACCEL_OBJ_FILES) $(UTILS_OBJ_FILES)
	source $(SDSOC_ROOT)/settings64.sh && \
	$(CXX) $(SDS_FLAGS) $(LFLAGS) -o $@ $^

$(ACCEL_OBJ_FILES): %.o: $(ACCEL_SRC_DIR)/%.cpp
	source $(SDSOC_ROOT)/settings64.sh && \
	$(CXX) $(SDS_FLAGS) $(CFLAGS) -c $< -o $@

$(UTILS_OBJ_FILES): %.o: $(UTILS_SRC_DIR)/%.cpp
	source $(SDSOC_ROOT)/settings64.sh && \
	$(CXX) $(SDS_FLAGS) $(CFLAGS) -c $< -o $@

hls: $(RTL_FILE)

$(RTL_FILE): $(KERNEL_SRC)
	rm -fr HLS
	$(VIVADO_HLS) $(SRC_DIR)/Synthesize.tcl

clean:
	rm -fr $(ACCEL_OBJ_FILES) $(UTILS_OBJ_FILES) $(EXE_FILE) _sds HLS

