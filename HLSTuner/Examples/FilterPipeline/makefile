RM := rm -rf _sds sd_card

SRC_DIR := ${HLS_TUNER_ROOT}/SDSoC/FilterPipeline/src

CPP_SRCS := ${SRC_DIR}/FilterPipeline.cpp ${SRC_DIR}/FilterPipeline_tb.cpp

OBJS := FilterPipeline.o FilterPipeline_tb.o

CPP_DEPS := FilterPipeline.d FilterPipeline_tb.d

%.o: ${SRC_DIR}/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Compiler'
	sds++ $(HLS_TUNER_DEFINES) -Wall -O3 -I"${SRC_DIR}" -c \
              -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" \
              -o "$@" "$<" -sds-hw Filter_hor_HW FilterPipeline.cpp  -clkid \
              $(HLS_TUNER_ACCELERATOR_1_CLOCK) -sds-end -sds-hw Filter_ver_HW \
              FilterPipeline.cpp  -clkid $(HLS_TUNER_ACCELERATOR_2_CLOCK) \
              -sds-end -sds-sys-config standalone -sds-proc a9_0 -sds-pf \
              "zed" -maxjobs $(JOBS) -maxthreads $(THREADS)
	@echo 'Finished building: $<'
	@echo ' '

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

all: pre-build main-build

main-build: FilterPipeline.elf

FilterPipeline.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDS++ Linker'
	sds++ -o "FilterPipeline.elf" $(OBJS) $(USER_OBJS) $(LIBS) -dmclkid \
              $(HLS_TUNER_DATA_MOVER_CLOCK) -mno-boot-files -sds-sys-config \
              standalone -sds-proc a9_0 -sds-pf "zed" -maxjobs $(JOBS) \
              -maxthreads $(THREADS)
	@echo 'Finished building target: $@'
	@echo ' '

clean:
	-$(RM) $(CC_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(OBJS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) FilterPipeline.elf
	-@echo ' '

pre-build:
	-sdsoc_make_clean Debug
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

