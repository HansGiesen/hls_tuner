# Makefile for BNN of Rosetta benchmarks
#
# Author: Hans Giesen (giesen@seas.upenn.edu)
#
# Targets:
#   all   - Builds hardware and software in SDSoC.
#   host  - Compiles for local host (for debugging purposes).
#   hls   - Performs only HLS (for debugging purposes).
#   clean - Removes all build products.

ifndef HLS_TUNER_ROOT
$(error Please set the HLS_TUNER_ROOT environment variable to the root of the repository.)
endif

ifdef NO_BITSTREAM
BITSTREAM_OPTION := -mno-bitstream
endif

DATA_MOVER_SHARING ?= 0
IMPL_STRATEGY ?= default
DATA_MOVER_CLOCK ?= 2
KERNEL_CLOCK ?= 2
CLOCK_UNCERTAINTY ?= 30
JOBS ?= 1
THREADS ?= 1

SDSOC_ROOT := $(realpath $(SDSOC_ROOT))

SRC_DIR := $(HLS_TUNER_ROOT)/TestApps/Rosetta/BNN/Sources

ACCEL_SRC_DIR := $(SRC_DIR)/accel
UTILS_SRC_DIR := $(SRC_DIR)/utils

EXE_FILE := BNN.elf
ACCEL_OBJ_FILES := Accel.o AccelSchedule.o AccelTest.o AccelPrint.o Dense.o InputConv.o
UTILS_OBJ_FILES := Common.o Timer.o DataIO.o ParamIO.o
BNN_OBJ_FILE := accel_test_bnn.o
TCL_FILE := Config.tcl

LOCAL_DIR = Local
LOCAL_BNN_EXE_FILE := $(LOCAL_DIR)/BNN
LOCAL_LAYER_EXE_FILE := $(LOCAL_DIR)/Test_layer
LOCAL_ACCEL_OBJ_FILES := $(addprefix $(LOCAL_DIR)/, $(ACCEL_OBJ_FILES))
LOCAL_UTILS_OBJ_FILES := $(addprefix $(LOCAL_DIR)/, $(UTILS_OBJ_FILES) ZipIO.o)
LOCAL_BNN_OBJ_FILE := $(LOCAL_DIR)/accel_test_bnn.o
LOCAL_LAYER_OBJ_FILE := $(LOCAL_DIR)/accel_test_layer.o
LOCAL_ZLIB_DIR := $(LOCAL_DIR)/zlib
LOCAL_MINIZIP_DIR := $(LOCAL_DIR)/minizip
LOCAL_ZLIB_LIBRARY := $(LOCAL_ZLIB_DIR)/libz.a
LOCAL_MINIZIP_LIBRARY := $(LOCAL_MINIZIP_DIR)/libminizip.a
LOCAL_AES_LIBRARY := $(LOCAL_MINIZIP_DIR)/libaes.a

ALL_OBJ_FILES := $(ACCEL_OBJ_FILES) $(UTILS_OBJ_FILES) $(BNN_OBJ_FILE) $(LOCAL_ACCEL_OBJ_FILES) \
                 $(LOCAL_UTILS_OBJ_FILES) $(LOCAL_BNN_OBJ_FILE) $(LOCAL_LAYER_OBJ_FILE)

DEP_FILES := $(ALL_OBJ_FILES:%.o=%.d)

KERNEL = top
KERNEL_SRC = $(ACCEL_SRC_DIR)/Accel.cpp

SYS_CFG ?= standalone
PLATFORM ?= $(HLS_TUNER_ROOT)/Platforms/Vivado_2017.1/pynq
PROC ?= a9_0

SDSCC := sds++
VIVADO_HLS ?= vivado_hls

CXX := g++

SDS_FLAGS ?= -sds-sys-config $(SYS_CFG) -sds-pf $(PLATFORM) -sds-proc $(PROC) \
             -sds-hw $(KERNEL) $(KERNEL_SRC) -hls-tcl $(TCL_FILE) -clkid $(KERNEL_CLOCK) -sds-end \
             -dm-sharing $(DATA_MOVER_SHARING) -dmclkid $(DATA_MOVER_CLOCK) \
             -impl-strategy $(IMPL_STRATEGY) -maxjobs $(JOBS) -maxthreads $(THREADS) -trace

CFLAGS ?= -std=gnu++11 -Wall -Wno-unused-label -Wno-unknown-pragmas

SDS_CFLAGS ?= $(CFLAGS) -O3 -DHLS_COMPILE -I $(UTILS_SRC_DIR) $(DEFINES)
SDS_LFLAGS ?= -mno-boot-files $(BITSTREAM_OPTION)

LOCAL_CFLAGS ?= $(CFLAGS) -O3 -g -I $(UTILS_SRC_DIR) -I $(SDSOC_ROOT)/Vivado_HLS/include
LOCAL_LFLAGS ?=

RTL_FILE = HLS/solution1/syn/vhdl/$(KERNEL).vhd

SHELL := /bin/bash # Needed to run the source command.

.PHONY: all clean hls local

all: $(EXE_FILE)

$(TCL_FILE):
	@echo "set_clock_uncertainty $(CLOCK_UNCERTAINTY)%" > $@

$(EXE_FILE): $(BNN_OBJ_FILE) $(ACCEL_OBJ_FILES) $(UTILS_OBJ_FILES)
	source $(SDSOC_ROOT)/settings64.sh && \
	$(SDSCC) $(SDS_FLAGS) $(SDS_LFLAGS) -o $@ $^

$(ACCEL_OBJ_FILES) $(BNN_OBJ_FILE): %.o: $(ACCEL_SRC_DIR)/%.cpp $(TCL_FILE)
	source $(SDSOC_ROOT)/settings64.sh && \
	$(SDSCC) $(SDS_FLAGS) $(SDS_CFLAGS) -DRUN_STANDALONE -c $< -o $@ -MMD -MP

$(UTILS_OBJ_FILES): %.o: $(UTILS_SRC_DIR)/%.cpp
	source $(SDSOC_ROOT)/settings64.sh && \
	$(SDSCC) $(SDS_FLAGS) $(SDS_CFLAGS) -DRUN_STANDALONE -c $< -o $@ -MMD -MP

local: $(LOCAL_BNN_EXE_FILE) $(LOCAL_LAYER_EXE_FILE)

$(LOCAL_BNN_EXE_FILE): $(LOCAL_BNN_OBJ_FILE) $(LOCAL_ACCEL_OBJ_FILES) $(LOCAL_UTILS_OBJ_FILES) \
                   $(LOCAL_MINIZIP_LIBRARY) $(LOCAL_ZLIB_LIBRARY) $(LOCAL_AES_LIBRARY)
	$(CXX) $(LOCAL_LFLAGS) -o $@ $^

$(LOCAL_LAYER_EXE_FILE): $(LOCAL_LAYER_OBJ_FILE) $(LOCAL_ACCEL_OBJ_FILES) $(LOCAL_UTILS_OBJ_FILES) \
                   $(LOCAL_MINIZIP_LIBRARY) $(LOCAL_ZLIB_LIBRARY) $(LOCAL_AES_LIBRARY)
	$(CXX) $(LOCAL_LFLAGS) -o $@ $^

$(LOCAL_ACCEL_OBJ_FILES): $(LOCAL_DIR)/%.o: $(ACCEL_SRC_DIR)/%.cpp
	mkdir -p $(LOCAL_DIR)
	$(CXX) $(LOCAL_CFLAGS) -c $< -o $@ -MMD -MP

$(LOCAL_BNN_OBJ_FILE) $(LOCAL_LAYER_OBJ_FILE): $(LOCAL_DIR)/%.o: $(ACCEL_SRC_DIR)/%.cpp
	mkdir -p $(LOCAL_DIR)
	$(CXX) $(LOCAL_CFLAGS) -c $< -o $@ -MMD -MP

$(LOCAL_UTILS_OBJ_FILES): $(LOCAL_DIR)/%.o: $(UTILS_SRC_DIR)/%.cpp
	mkdir -p $(LOCAL_DIR)
	$(CXX) $(LOCAL_CFLAGS) -c $< -o $@ -MMD -MP

$(LOCAL_ZLIB_LIBRARY):
	mkdir -p $(LOCAL_ZLIB_DIR)
	cd $(LOCAL_ZLIB_DIR) && $(SRC_DIR)/zlib-1.2.11/configure && make

$(LOCAL_MINIZIP_LIBRARY): $(LOCAL_ZLIB_LIBRARY)
	rm -fr $(LOCAL_MINIZIP_DIR)
	cp -r $(SRC_DIR)/minizip $(LOCAL_MINIZIP_DIR)
	cd $(LOCAL_MINIZIP_DIR) && make

$(LOCAL_AES_LIBRARY): $(LOCAL_MINIZIP_LIBRARY)

hls: $(RTL_FILE)

$(RTL_FILE): $(KERNEL_SRC)
	rm -fr HLS
	$(VIVADO_HLS) $(SRC_DIR)/Synthesize.tcl

clean:
	rm -fr $(ACCEL_OBJ_FILES) $(UTILS_OBJ_FILES) $(EXE_FILE) $(LOCAL_DIR) $(TCL_FILE) _sds HLS

-include $(DEP_FILES)

