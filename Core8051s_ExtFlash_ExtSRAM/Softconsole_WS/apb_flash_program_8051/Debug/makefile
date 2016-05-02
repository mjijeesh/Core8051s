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
apb_flash_program_8051.elf \

MEMORYMAP += \
memory-map.xml \

SRECFILES += \
apb_flash_program_8051.srec \

LISTINGS += \
apb_flash_program_8051.lst \


# All Target
all: apb_flash_program_8051.hex secondary-outputs

# Tool invocations
apb_flash_program_8051.hex: $(RELS) $(USER_RELS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDCC Linker'
	sdcc --debug --noinduction --nooverlay --no-peep --model-small -o"apb_flash_program_8051.hex" $(RELS) $(USER_RELS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

apb_flash_program_8051.elf: $(EXECUTABLE)
	@echo 'Invoking: CodeSourcery OMF2ELF Converter'
	c8051-elf-omf2elf -c -i .
	@echo 'Finished building: $@'
	@echo ' '

memory-map.xml: $(EXECUTABLE)
	@echo 'Invoking: Memory map generator'
	actel-map -M ../intel-28f640-1x8-code-memory.txt -o "memory-map.xml" $(EXECUTABLE) $(BUILDCMD)
	@echo 'Finished building: $@'
	@echo ' '

apb_flash_program_8051.srec: $(EXECUTABLE)
	@echo 'Invoking: GNU S-Record Generator'
	c8051-elf-objcopy -I ihex -O srec $(EXECUTABLE) "apb_flash_program_8051.srec"
	@echo 'Finished building: $@'
	@echo ' '

apb_flash_program_8051.lst: $(ELFEXECUTABLE)
	@echo 'Invoking: GNU Listing Generator'
	c8051-elf-objdump -d $(ELFEXECUTABLE) > "apb_flash_program_8051.lst"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean::
	-$(RM) $(MEMORYMAP)$(ELFEXECUTABLE)$(C_DEPS)$(SRECFILES)$(RELS)$(LISTINGS)$(EXECUTABLE) apb_flash_program_8051.hex
	-@echo ' '

secondary-outputs: $(ELFEXECUTABLE) $(MEMORYMAP) $(SRECFILES) $(LISTINGS)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
