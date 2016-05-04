################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreInterrupt/core_irq_ctrl.c 

C_DEPS += \
./drivers/CoreInterrupt/core_irq_ctrl.d 

RELS += \
./drivers/CoreInterrupt/core_irq_ctrl.rel 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreInterrupt/%.rel: ../drivers/CoreInterrupt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc --debug --noinduction --nooverlay --no-peep -c -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" -I"../drivers/CoreInterrupt" --model-large -o"$@" "$<" && \
	sdcc --noinduction --nooverlay --no-peep -c -MM -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" -I"../drivers/CoreInterrupt" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '



# Target-specific items to be cleaned up in this subdirectory.
clean::
	-$(RM) $(wildcard ./drivers/CoreInterrupt/*.adb) $(wildcard ./drivers/CoreInterrupt/*.asm) $(wildcard ./drivers/CoreInterrupt/*.cdb) $(wildcard ./drivers/CoreInterrupt/*.lnk) $(wildcard ./drivers/CoreInterrupt/*.lst) $(wildcard ./drivers/CoreInterrupt/*.mem) $(wildcard ./drivers/CoreInterrupt/*.map) $(wildcard ./drivers/CoreInterrupt/*.rst) $(wildcard ./drivers/CoreInterrupt/*.sym) 
