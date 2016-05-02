quietly set ACTELLIBNAME fusion
quietly set PROJECT_DIR "C:/Actelprj/AFS_ADV_KIT_8051"
source "${PROJECT_DIR}/simulation/bfmCompile.tcl";

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   vlib presynth
}
vmap presynth presynth
vmap fusion "D:/Actel/Libero_v9.0/Designer/lib/modelsim/precompiled/vhdl/fusion"
if {[file exists COREAPBSRAM_LIB/_info]} {
   echo "INFO: Simulation library COREAPBSRAM_LIB already exists"
} else {
   vlib COREAPBSRAM_LIB
}
vmap COREAPBSRAM_LIB "COREAPBSRAM_LIB"
vmap COREUARTAPB_LIB "../component/Actel/DirectCore/CoreUARTapb/3.1.105/mti/lib_vhdl_rtl/COREUARTAPB_LIB"
vcom -work COREUARTAPB_LIB -refresh
vlog -work COREUARTAPB_LIB -refresh

vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/2.1.101/rtl/vhdl/u/MuxPtoB3.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/2.1.101/rtl/vhdl/u/CoreAPB3.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/core8051s_utility.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/alu.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/clkctrl.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/cpu.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/isr.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/memctrl.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/pmu.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/rstctrl.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/ramsfrctrl.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/oci.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/instrdec.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/main8051.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/core8051s_globs_fusion.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/RAM256X8_fusion.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/jtagdef.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/jtagfusion.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/jtag.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/debug.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/trace.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/trigger.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/ocia51.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/RAM256X20_fusion.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CORE8051S/2.2.100/rtl/vhdl/u/core8051s_fusion.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreGPIO/1.2.103/rtl/vhdl/u/CoreGPIO.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/smartgen/nvm64k/nvm64k.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/hdl/flash_control.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/CoreTimer/1.1.101/rtl/vhdl/u/CoreTimer.vhd"
vcom -93 -explicit -work COREAPBSRAM_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREAPBSRAM/2.0.102/rtl/vhdl/core_obfuscated/sram_512to8192x8_fusion.vhd"
vcom -93 -explicit -work COREAPBSRAM_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREAPBSRAM/2.0.102/rtl/vhdl/core_obfuscated/coreapbsram.vhd"
vcom -93 -explicit -work COREUARTAPB_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreUARTapb/3.1.105/rtl/vhdl/amba/Clock_gen.vhd"
vcom -93 -explicit -work COREUARTAPB_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreUARTapb/3.1.105/rtl/vhdl/amba/Tx_async.vhd"
vcom -93 -explicit -work COREUARTAPB_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreUARTapb/3.1.105/rtl/vhdl/amba/Rx_async.vhd"
vcom -93 -explicit -work COREUARTAPB_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreUARTapb/3.1.105/rtl/vhdl/amba/fifo_256x8_fusion.vhd"
vcom -93 -explicit -work COREUARTAPB_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreUARTapb/3.1.105/rtl/vhdl/amba/CoreUART.vhd"
vcom -93 -explicit -work COREUARTAPB_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreUARTapb/3.1.105/rtl/vhdl/amba/CoreUARTapb.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/work/sys/sys.vhd"
vcom -93 -explicit -work COREAPBSRAM_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREAPBSRAM/2.0.102/rtl/vhdl/core_obfuscated/components.vhd"
vcom -93 -explicit -work COREAPBSRAM_LIB "${PROJECT_DIR}/component/Actel/DirectCore/COREAPBSRAM/2.0.102/rtl/vhdl/core_obfuscated/corecomps.vhd"
vcom -93 -explicit -work COREUARTAPB_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreUARTapb/3.1.105/coreparameters.vhd"
vcom -93 -explicit -work COREUARTAPB_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreUARTapb/3.1.105/rtl/vhdl/amba/components.vhd"
vcom -93 -explicit -work presynth "${PROJECT_DIR}/component/work/sys/testbench.vhd"

vsim -L fusion -L presynth -L COREAPBSRAM_LIB -L COREUARTAPB_LIB  -t 1ps presynth.testbench
add wave /testbench/*
run 1000ns
