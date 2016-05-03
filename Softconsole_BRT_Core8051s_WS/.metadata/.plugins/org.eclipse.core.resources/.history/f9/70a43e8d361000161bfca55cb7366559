################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hal/Core8051s/SDCC/hal_assert.c \
../hal/Core8051s/SDCC/hw_reg_access.c 

S_SRCS += \
../hal/Core8051s/SDCC/hal_large.s 

C_DEPS += \
./hal/Core8051s/SDCC/hal_assert.d \
./hal/Core8051s/SDCC/hw_reg_access.d 

RELS += \
./hal/Core8051s/SDCC/hal_assert.rel \
./hal/Core8051s/SDCC/hal_large.rel \
./hal/Core8051s/SDCC/hw_reg_access.rel 


# Each subdirectory must supply rules for building sources it contributes
hal/Core8051s/SDCC/%.rel: ../hal/Core8051s/SDCC/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc --debug --noinduction --nooverlay --no-peep -c -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" -I"../drivers/CoreInterrupt" --model-large -o"$@" "$<" && \
	sdcc --noinduction --nooverlay --no-peep -c -MM -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" -I"../drivers/CoreInterrupt" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '

hal/Core8051s/SDCC/%.rel: ../hal/Core8051s/SDCC/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Assembler'
	c8051-elf-asx8051  "$<"
	@echo 'Finished building: $<'
	@echo ' '



# Target-specific items to be cleaned up in this subdirectory.
clean::
	-$(RM) $(wildcard ./hal/Core8051s/SDCC/*.adb) $(wildcard ./hal/Core8051s/SDCC/*.asm) $(wildcard ./hal/Core8051s/SDCC/*.cdb) $(wildcard ./hal/Core8051s/SDCC/*.lnk) $(wildcard ./hal/Core8051s/SDCC/*.lst) $(wildcard ./hal/Core8051s/SDCC/*.mem) $(wildcard ./hal/Core8051s/SDCC/*.map) $(wildcard ./hal/Core8051s/SDCC/*.rst) $(wildcard ./hal/Core8051s/SDCC/*.sym) 
