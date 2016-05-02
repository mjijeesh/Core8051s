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
	sdcc --debug --noinduction --nooverlay --no-peep -c -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" --model-large -o"$@" "$<" && \
	sdcc --noinduction --nooverlay --no-peep -c -MM -I"../" -I"../hal" -I"../hal/Core8051s/SDCC" -I"../drivers/CoreTimer" -I"../drivers/CoreWatchdog" -I"../drivers/CoreGPIO" -I"../drivers/CoreUARTapb" --model-large  "$<" >> $(@:%.rel=%.d)
	@echo 'Finished building: $<'
	@echo ' '



# Target-specific items to be cleaned up in this subdirectory.
clean::
	-$(RM) $(wildcard ./*.adb) $(wildcard ./*.asm) $(wildcard ./*.cdb) $(wildcard ./*.lnk) $(wildcard ./*.lst) $(wildcard ./*.mem) $(wildcard ./*.map) $(wildcard ./*.rst) $(wildcard ./*.sym) 
