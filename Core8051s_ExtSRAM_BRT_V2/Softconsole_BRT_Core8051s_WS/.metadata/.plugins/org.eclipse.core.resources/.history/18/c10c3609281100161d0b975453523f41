################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/CoreUARTapb/core_uart_apb.c 

C_DEPS += \
./drivers/CoreUARTapb/core_uart_apb.d 

RELS += \
./drivers/CoreUARTapb/core_uart_apb.rel 


# Each subdirectory must supply rules for building sources it contributes
drivers/CoreUARTapb/%.rel: ../drivers/CoreUARTapb/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: SDCC Compiler'
	sdcc --debug --noinduction --nooverlay --no-peep -c -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" --model-large -o"$@" "$<" && \
	sdcc --noinduction --nooverlay --no-peep -c -MM -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '



# Target-specific items to be cleaned up in this subdirectory.
clean::
	-$(RM) $(wildcard ./drivers/CoreUARTapb/*.adb) $(wildcard ./drivers/CoreUARTapb/*.asm) $(wildcard ./drivers/CoreUARTapb/*.cdb) $(wildcard ./drivers/CoreUARTapb/*.lnk) $(wildcard ./drivers/CoreUARTapb/*.lst) $(wildcard ./drivers/CoreUARTapb/*.mem) $(wildcard ./drivers/CoreUARTapb/*.map) $(wildcard ./drivers/CoreUARTapb/*.rst) $(wildcard ./drivers/CoreUARTapb/*.sym) 
