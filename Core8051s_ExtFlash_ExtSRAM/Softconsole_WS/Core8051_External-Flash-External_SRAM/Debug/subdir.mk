################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c 

C_DEPS += \
./main.d 

RELS += \
./main.rel 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc --debug --noinduction --nooverlay --no-peep -c --model-large -o"$@" "$<" && \
	sdcc --noinduction --nooverlay --no-peep -c -MM --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '



# Target-specific items to be cleaned up in this subdirectory.
clean::
	-$(RM) $(wildcard ./*.adb) $(wildcard ./*.asm) $(wildcard ./*.cdb) $(wildcard ./*.lnk) $(wildcard ./*.lst) $(wildcard ./*.mem) $(wildcard ./*.map) $(wildcard ./*.rst) $(wildcard ./*.sym) 
