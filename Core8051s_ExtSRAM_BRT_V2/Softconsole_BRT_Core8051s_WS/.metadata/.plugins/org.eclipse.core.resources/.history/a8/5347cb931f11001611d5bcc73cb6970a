################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreGPIO/core_gpio.c 

C_DEPS += \
./drivers/CoreGPIO/core_gpio.d 

RELS += \
./drivers/CoreGPIO/core_gpio.rel 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreGPIO/%.rel: ../drivers/CoreGPIO/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc --debug --noinduction --nooverlay --no-peep -c -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" --model-large -o"$@" "$<" && \
	sdcc --noinduction --nooverlay --no-peep -c -MM -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '



# Target-specific items to be cleaned up in this subdirectory.
clean::
	-$(RM) $(wildcard ./drivers/CoreGPIO/*.adb) $(wildcard ./drivers/CoreGPIO/*.asm) $(wildcard ./drivers/CoreGPIO/*.cdb) $(wildcard ./drivers/CoreGPIO/*.lnk) $(wildcard ./drivers/CoreGPIO/*.lst) $(wildcard ./drivers/CoreGPIO/*.mem) $(wildcard ./drivers/CoreGPIO/*.map) $(wildcard ./drivers/CoreGPIO/*.rst) $(wildcard ./drivers/CoreGPIO/*.sym) 
