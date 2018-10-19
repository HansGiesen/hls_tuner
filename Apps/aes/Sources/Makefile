# Makefile for aes benchmark of MachSuite
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
ACCELERATOR_CLOCK ?= 0
JOBS ?= 1
THREADS ?= 1

SDSOC_ROOT := $(realpath $(SDSOC_ROOT))

SRC_DIR := $(HLS_TUNER_ROOT)/Apps/aes/Sources
COMMON_DIR := $(HLS_TUNER_ROOT)/Apps/common

SRC_FILES := aes_test.c aes.c
OBJ_FILES := $(SRC_FILES:.c=.o)
SRC_FILES := $(addprefix $(SRC_DIR)/, $(SRC_FILES))
EXE_FILE := aes.elf

KERNEL = encrypt
KERNEL_SRC = $(SRC_DIR)/aes.c

SYS_CFG ?= standalone
PLATFORM ?= $(HLS_TUNER_ROOT)/Platforms/Vivado_2017.1/pynq
PROC ?= a9_0
SDSCC ?= source $(SDSOC_ROOT)/settings64.sh; sds++
SDS_FLAGS ?= -sds-sys-config $(SYS_CFG) -sds-pf $(PLATFORM) -sds-proc $(PROC) \
             -sds-hw $(KERNEL) $(KERNEL_SRC) -clkid $(ACCELERATOR_CLOCK) -sds-end \
             -maxjobs $(JOBS) -maxthreads $(THREADS)
COMPILER_FLAGS ?= -Wall -O3 -I$(SRC_DIR) -I$(COMMON_DIR) $(HLS_TUNER_DEFINES)
LINKER_FLAGS ?= -dmclkid $(DATA_MOVER_CLOCK) -mno-boot-files

VIVADO_HLS ?= source $(SDSOC_ROOT)/settings64.sh; vivado_hls
RTL_FILE = HLS/solution1/syn/vhdl/$(KERNEL).vhd

SHELL := /bin/bash # Needed to run the source command.

.PHONY: all prepare hls

all: $(EXE_FILE)

$(EXE_FILE): $(OBJ_FILES)
	$(SDSCC) $(SDS_FLAGS) $(LINKER_FLAGS) -o $@ $^

%.o: $(SRC_DIR)/%.c
	$(SDSCC) $(SDS_FLAGS) $(COMPILER_FLAGS) -c -o $@ $<

hls: $(RTL_FILE)

$(RTL_FILE): $(KERNEL_SRC)
	rm -fr HLS
	$(VIVADO_HLS) $(SRC_DIR)/Synthesize.tcl

clean:
	rm -fr $(OBJ_FILES) $(EXE_FILE) _sds HLS

