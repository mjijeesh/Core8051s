################################################################################
# Automatically-generated file. Do not edit!
################################################################################

C_SRCS := 
HEX_SRCS := 
REL_SRCS := 
MEMORYMAP := 
ELFEXECUTABLE := 
C_DEPS := 
SRECFILES := 
RELS := 
LISTINGS := 
EXECUTABLE := 

# Every subdirectory with source files must be described here
SUBDIRS := \
. \

################################################################################
# Microsemi SoftConsole IDE Variables
################################################################################

BUILDCMD = sdcc --debug --noinduction --nooverlay --no-peep --model-small 
SHELL := cmd.exe
EXECUTABLE := apb_flash_program_8051.hex

# Target-specific items to be cleaned up in the top directory.
clean::
	-$(RM) $(basename $(EXECUTABLE) .elf) 
