#
# Core8051s Simulation Selection Script
#
# Author: CM
# Date: December 13, 2006
#
# Copyright: Actel Corporation, 2006.
#

quietly set simSelectScriptVersion 0.1

# Check if the variable ROOTDIR_CORE8051S has been set and exit gracefully
# if not. If "Set As Root" has been applied to the Core8051s instance in Libero,
# then ROOTDIR_CORE8051S will be set in the automatically generated run.do script
# which calls this script.
# This information is correct for Libero Version 7.2.3.2 Release v7.2 SP2.

if { [ info exists ROOTDIR_CORE8051S ] } {
    # Exit script if ROOTDIR_CORE8051S variable exists, as it implies
    # that the verification test suite is being run.
	return
}

puts "=============================================="
puts "           Core8051s Simulation"
puts "=============================================="

# Figure out the root directory of the CoreConsole project
# by parsing run.do for the line with ROOTDIR_ in it
# Also figure out if this is a presynth simulation
quietly set simDir "./"
quietly set runDoScript [ file join $simDir "run.do" ]

if [ catch { open $runDoScript r } run_do ] {
  	puts "Error: Multi-Pass: Cannot read run.do file \"$runDoScript""
    puts "Proceeding with Full Functional Simulation"
    return
} else {
	# Find lines in run.do containing "vlib"

	quietly set foundVlib 0

	while { [ gets $run_do line ] >= 0 } {
		switch -regexp -- $line {
			"vlib" {
				quietly set vlibLine $line
  				quietly set foundVlib 1
			}
			default {
			}
		}
	}

	if { $foundVlib == 1 } {
		# Extract the name of the simulation library
		regexp {([.]*)(vlib)([^0-9a-zA-Z_\-]*)([0-9a-zA-Z_\-]*)} $vlibLine full_match var1 var2 var3 simLib
		#puts "Simulation library is: $simLib"
	} else {
		puts "Simulation library not found in run.do"
		puts "Proceeding with Full Functional Simulation"
        return
	}

}
close $run_do

# Language
if { [ file exists  8051s_vlog.txt ] } {
    quietly set LANG "vlog"
} else {
    quietly set LANG "vhdl"
}

# Family
if { [ file exists  8051s_apa.txt ] } {
    quietly set FAMILY "apa"
} elseif { [ file exists  8051s_proasic3.txt ] } {
    quietly set FAMILY "proasic3"
} elseif { [ file exists  8051s_proasic3e.txt ] } {
    quietly set FAMILY "proasic3e"
} else {
    quietly set FAMILY "fusion"
}

# License
if { [ file exists  8051s_licensed.txt ] } {
    quietly set CORE8051S_LICENSE "licensed"
} else {
    quietly set CORE8051S_LICENSE "unlicensed"
}


if { $simLib == "presynth" } {
    if { $CORE8051S_LICENSE == "unlicensed"} {
        puts "Core8051s APB Bus Functional Model (BFM) Simulation"
        puts "(only simulation option available for unlicensed Core8051s)"
        # Substitute the BFM model of the Core8051s instead of the
        # RTL version, in the presynth library
        if { [ file exists bfm_utils.vhd ] } {
            vcom -work presynth ./bfm_utils.vhd
            vcom -work presynth ./BFMapb.vhd
            vcom -work presynth ./Core8051s_bfm.vhd
        } else {
            vlog -work presynth ./BFMapb.v
            vlog -work presynth ./Core8051s_bfm.v
        }
        vsim -t 1ps +nowarnTSCALE $simLib.testbench
		add wave /testbench/*
		run -all
    } else {
        puts "The following (pre-synthesis) simulation options"
        puts "are available for your Core8051s-based system:"
        puts "1. Full-Functional Simulation of your system (default)"
        puts "2. APB Bus Functional Model (BFM-driven) Simulation of your system"
        puts ""
        puts "Please enter 1 or 2 and hit return key to select simulation type"
        gets stdin simSelect
        if { $simSelect == "2" } {
            puts ""
            puts "Core8051s APB Bus Functional Model (BFM) Simulation"
            puts ""
            # Substitute the BFM model of the Core8051s instead of the
            # RTL version, in the presynth library
            if { $LANG == "vlog" } {
                vlog -work presynth ./BFMapb.v
                vlog -work presynth ./Core8051s_bfm.v
            } else {
                vcom -work presynth ./bfm_utils.vhd
                vcom -work presynth ./BFMapb.vhd
                vcom -work presynth ./Core8051s_bfm.vhd
            }
            vsim -L $FAMILY -t 1ps +nowarnTSCALE $simLib.testbench
		    add wave /testbench/*
		    run -all
        } else {
            puts ""
            puts "Core8051s Full-Functional Simulation"
            puts ""
            vsim -L $FAMILY -t 1ps +nowarnTSCALE presynth.testbench
            return
        }
    }
} else {
    puts ""
    puts "Core8051s Full-Functional Simulation"
    puts "(Note: BFM-driven simulation not available post-synthesis)"
    puts ""
    return
}
