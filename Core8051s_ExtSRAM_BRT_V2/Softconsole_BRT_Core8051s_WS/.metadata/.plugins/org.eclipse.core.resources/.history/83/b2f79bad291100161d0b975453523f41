################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreWatchdog/core_watchdog.c 

C_DEPS += \
./drivers/CoreWatchdog/core_watchdog.d 

RELS += \
./drivers/CoreWatchdog/core_watchdog.rel 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreWatchdog/%.rel: ../drivers/CoreWatchdog/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc --debug --noinduction --nooverlay --no-peep -c -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" --model-large -o"$@" "$<" && \
	sdcc --noinduction --nooverlay --no-peep -c -MM -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '



# Target-specific items to be cleaned up in this subdirectory.
clean::
	-$(RM) $(wildcard ./drivers/CoreWatchdog/*.adb) $(wildcard ./drivers/CoreWatchdog/*.asm) $(wildcard ./drivers/CoreWatchdog/*.cdb) $(wildcard ./drivers/CoreWatchdog/*.lnk) $(wildcard ./drivers/CoreWatchdog/*.lst) $(wildcard ./drivers/CoreWatchdog/*.mem) $(wildcard ./drivers/CoreWatchdog/*.map) $(wildcard ./drivers/CoreWatchdog/*.rst) $(wildcard ./drivers/CoreWatchdog/*.sym) 
