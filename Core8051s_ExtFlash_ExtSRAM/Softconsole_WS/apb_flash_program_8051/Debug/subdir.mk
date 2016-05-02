################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../apb_flash_loader.c 

C_DEPS += \
./apb_flash_loader.d 

RELS += \
./apb_flash_loader.rel 


# Each subdirectory must supply rules for building sources it contributes
%.rel: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc --debug --noinduction --nooverlay --no-peep -c --model-small -o"$@" "$<" && \
	sdcc --noinduction --nooverlay --no-peep -c -MM --model-small  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '



# Target-specific items to be cleaned up in this subdirectory.
clean::
	-$(RM) $(wildcard ./*.adb) $(wildcard ./*.asm) $(wildcard ./*.cdb) $(wildcard ./*.lnk) $(wildcard ./*.lst) $(wildcard ./*.mem) $(wildcard ./*.map) $(wildcard ./*.rst) $(wildcard ./*.sym) 
