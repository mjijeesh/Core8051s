################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFEXECUTABLE += \
Core8051_External-Flash-External_SRAM.elf \

MEMORYMAP += \
memory-map.xml \

SRECFILES += \
Core8051_External-Flash-External_SRAM.srec \

LISTINGS += \
Core8051_External-Flash-External_SRAM.lst \


# All Target
all: Core8051_External-Flash-External_SRAM.hex secondary-outputs

# Tool invocations
Core8051_External-Flash-External_SRAM.hex: $(RELS) $(USER_RELS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDCC Linker'
	sdcc --debug --noinduction --nooverlay --no-peep --model-large -o"Core8051_External-Flash-External_SRAM.hex" $(RELS) $(USER_RELS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Core8051_External-Flash-External_SRAM.elf: $(EXECUTABLE)
	@echo 'Invoking: CodeSourcery OMF2ELF Converter'
	c8051-elf-omf2elf -c -i .
	@echo 'Finished building: $@'
	@echo ' '

memory-map.xml: $(EXECUTABLE)
	@echo 'Invoking: Memory map generator'
	actel-map -M ../intel-28f640-1x8-code-memory.txt -o "memory-map.xml" $(EXECUTABLE) $(BUILDCMD)
	@echo 'Finished building: $@'
	@echo ' '

Core8051_External-Flash-External_SRAM.srec: $(EXECUTABLE)
	@echo 'Invoking: GNU S-Record Generator'
	c8051-elf-objcopy -I ihex -O srec $(EXECUTABLE) "Core8051_External-Flash-External_SRAM.srec"
	@echo 'Finished building: $@'
	@echo ' '

Core8051_External-Flash-External_SRAM.lst: $(ELFEXECUTABLE)
	@echo 'Invoking: GNU Listing Generator'
	c8051-elf-objdump -d $(ELFEXECUTABLE) > "Core8051_External-Flash-External_SRAM.lst"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean::
	-$(RM) $(MEMORYMAP)$(ELFEXECUTABLE)$(C_DEPS)$(SRECFILES)$(RELS)$(LISTINGS)$(EXECUTABLE) Core8051_External-Flash-External_SRAM.hex
	-@echo ' '

secondary-outputs: $(ELFEXECUTABLE) $(MEMORYMAP) $(SRECFILES) $(LISTINGS)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
