################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include hal/Core8051s/SDCC/subdir.mk
-include drivers/CoreWatchdog/subdir.mk
-include drivers/CoreUARTapb/subdir.mk
-include drivers/CoreTimer/subdir.mk
-include drivers/CoreGPIO/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFEXECUTABLE += \
Core8051s_Uart_CLI.elf \

MEMORYMAP += \
memory-map.xml \

SRECFILES += \
Core8051s_Uart_CLI.srec \

LISTINGS += \
Core8051s_Uart_CLI.lst \


# All Target
all: Core8051s_Uart_CLI.hex secondary-outputs

# Tool invocations
Core8051s_Uart_CLI.hex: $(RELS) $(USER_RELS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDCC Linker'
	sdcc --debug --noinduction --nooverlay --no-peep --model-large -o"Core8051s_Uart_CLI.hex" $(RELS) $(USER_RELS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Core8051s_Uart_CLI.elf: $(EXECUTABLE)
	@echo 'Invoking: CodeSourcery OMF2ELF Converter'
	c8051-elf-omf2elf -c -i .
	@echo 'Finished building: $@'
	@echo ' '

memory-map.xml: $(EXECUTABLE)
	@echo 'Invoking: Memory map generator'
	actel-map -o "memory-map.xml" $(EXECUTABLE) $(BUILDCMD)
	@echo 'Finished building: $@'
	@echo ' '

Core8051s_Uart_CLI.srec: $(EXECUTABLE)
	@echo 'Invoking: GNU S-Record Generator'
	c8051-elf-objcopy -I ihex -O srec $(EXECUTABLE) "Core8051s_Uart_CLI.srec"
	@echo 'Finished building: $@'
	@echo ' '

Core8051s_Uart_CLI.lst: $(ELFEXECUTABLE)
	@echo 'Invoking: GNU Listing Generator'
	c8051-elf-objdump -d $(ELFEXECUTABLE) > "Core8051s_Uart_CLI.lst"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean::
	-$(RM) $(MEMORYMAP)$(ELFEXECUTABLE)$(C_DEPS)$(SRECFILES)$(RELS)$(LISTINGS)$(EXECUTABLE) Core8051s_Uart_CLI.hex
	-@echo ' '

secondary-outputs: $(ELFEXECUTABLE) $(MEMORYMAP) $(SRECFILES) $(LISTINGS)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
