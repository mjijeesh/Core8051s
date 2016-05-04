################################################################################
# Automatically-generated file. Do not edit!
################################################################################

C_SRCS := 
HEX_SRCS := 
S_UPPER_SRCS := 
S_SRCS := 
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
hal/Core8051s/SDCC \
drivers/CoreWatchdog \
drivers/CoreUARTapb \
drivers/CoreTimer \
drivers/CoreGPIO \

################################################################################
# Microsemi SoftConsole IDE Variables
################################################################################

BUILDCMD = sdcc --debug --noinduction --nooverlay --no-peep --model-large 
SHELL := cmd.exe
EXECUTABLE := Core8051s_Interrupt_LED.hex

# Target-specific items to be cleaned up in the top directory.
clean::
	-$(RM) $(basename $(EXECUTABLE) .elf) 
