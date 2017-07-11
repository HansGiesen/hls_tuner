RM := rm -rf _sds sd_card

SRC_DIR := ${HLS_TUNER_ROOT}/SDSoC/ZeroCopy/src

CPP_SRCS := ${SRC_DIR}/array_zero_copy.cpp 

OBJS := array_zero_copy.o 

CPP_DEPS := array_zero_copy.d 

%.o: ${SRC_DIR}/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: SDS++ Compiler'
	sds++ $(HLS_TUNER_PARAMETERS) -Wall -O0 -g -I"${SRC_DIR}" -c \
              -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" \
              -o "$@" "$<" -sds-hw array_zero_copy array_zero_copy.cpp \
              -clkid 1 -sds-end -sds-sys-config standalone -sds-proc a9_0 \
              -sds-pf "zed" -maxthreads $(THREADS)
	@echo 'Finished building: $<'
	@echo ' '

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

all: pre-build main-build

main-build: ZeroCopy.elf

ZeroCopy.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDS++ Linker'
	sds++ -o "ZeroCopy.elf" $(OBJS) $(USER_OBJS) $(LIBS) -dmclkid 1 \
              -sds-sys-config standalone -sds-proc a9_0 -sds-pf "zed" \
              -maxthreads $(THREADS)
	@echo 'Finished building target: $@'
	@echo ' '

clean:
	-$(RM) $(CC_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(OBJS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) ZeroCopy.elf
	-@echo ' '

pre-build:
	-sdsoc_make_clean Debug
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

