##############################################################################
# Copyright 2009 Actel Corporation.  All rights reserved.
# IP Engineering
#
# ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
# ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
# IN ADVANCE IN WRITING.
#
# File:             run_8051s_test.do
#
# Description:      Script to run Core8051s verification.
#
#
# Rev:
#
# Notes:
#
##############################################################################

puts "=============================================="
puts "           Core8051s Simulation"
puts "=============================================="

# Parse automatically generated run.do script to figure out if this
# is a presynth simulation
quietly set simDir "./"
quietly set runDoScript [ file join $simDir "run.do" ]

if [ catch { open $runDoScript r } run_do ] {
  	puts "Error: Cannot read run.do file \"$runDoScript""
    pause
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
        pause
	}

}
close $run_do

# Determine language, VHDL or Verilog
if { [file exists bfm_utils.vhd] } {
    quietly set LANG "vhdl"
} else {
    quietly set LANG "vlog"
}

# License
if { [ file exists  8051s_licensed.txt ] } {
    quietly set CORE8051S_LICENSE "licensed"
} else {
    quietly set CORE8051S_LICENSE "unlicensed"
}

# Variables related to Core8051s OCI tests
quietly set num_oci_tests 4
quietly set oci_params_list [list]
quietly set oci_params_list { \
    { 1 0 } \
    { 1 1 } \
    { 1 2 } \
    { 1 7 } \
}

# BFM based simulation is only supported pre-synthesis
if { $simLib == "presynth" } {
    if { $CORE8051S_LICENSE == "unlicensed"} {
        puts "Core8051s APB Bus Functional Model (BFM) simulation"
        puts "(only simulation option available for unlicensed Core8051s)"
        if { [file exists ./presynth/testbench] } {
            if { [file exists "subsystem.bfm"] } {
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
                vsim -t 10ps -L $ACTELLIBNAME +nowarnTSCALE $simLib.testbench
                quietly set StdArithNoWarnings 1
                quietly set NumericStdNoWarnings 1
                run -all
            } else {
                puts ""
                puts "BFM based simulation cannot be run because the automatically generated BFM command file, subsystem.bfm,"
                puts "is not present in the simulation folder. This file may be absent because no components have been"
                puts "connected to the APB3 interface of Core8051s. The BFM tests connectivity on the APB3 interface by issuing"
                puts "write and read transfers on the APB3 bus. Some components must be connected to the APB3 interface in order"
                puts "for BFM based simulation to be meaningful."
                puts ""
                puts "Ensure that a connection has been made to the APB3 interface of Core8051s and re-generate your design."
                puts "Then try again to run BFM based simulation."
                puts ""
            }
        } else {
            puts ""
            puts "The subsystem which instantiates Core8051s needs to be compiled before a BFM based simulation can be run."
            puts "Follow these steps to successfully launch a BFM based simulation:"
            puts "1. Exit ModelSim."
            puts "2. In Libero, set the design root to be the component which instantiates Core8051s."
            puts "3. Click the ModelSim button again. The elements making up the Core8051s subsystem will be compiled."
            puts "4. When compilation has finished, exit ModelSim again."
            puts "5. Now set the design root back to Core8051s and click the ModelSim button."
            puts "6. When prompted for the type of simulation desired, enter \"bfm\". The BFM simulation should now run."
            puts ""
        }
    } else {
        puts "The following (pre-synthesis) simulation options are available for"
        puts "your Core8051s-based system:"
        puts "   bfm - APB Bus Functional Model (BFM-driven) simulation of your system"
        puts "   oci - Run Core8051s On Chip Instrumentation (OCI) tests"
        puts "   opcode - Run Core8051s opcode test suite, consisting of 256 opcode tests"
        puts "   <num> - Enter a number in the range 1 to 256 to run a specific opcode test"
        puts ""
        puts "Enter \"bfm\", \"oci\", \"opcode\" or a number between 1 and 256 and hit return key to select simulation type"
        gets stdin simSelect
        if { $simSelect == "bfm" } {
            if { [file exists ./presynth/testbench] } {
                if { [file exists "subsystem.bfm"] } {
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
                    vsim -t 10ps -L $ACTELLIBNAME +nowarnTSCALE $simLib.testbench
                    quietly set StdArithNoWarnings 1
                    quietly set NumericStdNoWarnings 1
                    run -all
                } else {
                    puts ""
                    puts "BFM based simulation cannot be run because the automatically generated BFM command file, subsystem.bfm,"
                    puts "is not present in the simulation folder. This file may be absent because no components have been"
                    puts "connected to the APB3 interface of Core8051s. The BFM tests connectivity on the APB3 interface by issuing"
                    puts "write and read transfers on the APB3 bus. Some components must be connected to the APB3 interface in order"
                    puts "for BFM based simulation to be meaningful."
                    puts ""
                    puts "Ensure that a connection has been made to the APB3 interface of Core8051s and re-generate your design."
                    puts "Then try again to run BFM based simulation."
                    puts ""
                }
            } else {
                puts ""
                puts "The subsystem which instantiates Core8051s needs to be compiled before a BFM based simulation can be run."
                puts "Follow these steps to successfully launch a BFM based simulation:"
                puts "1. Exit ModelSim."
                puts "2. In Libero, set the design root to be the component which instantiates Core8051s."
                puts "3. Click the ModelSim button again. The elements making up the Core8051s subsystem will be compiled."
                puts "4. When compilation has finished, exit ModelSim again."
                puts "5. Now set the design root back to Core8051s and click the ModelSim button."
                puts "6. When prompted for the type of simulation desired, enter \"bfm\". The BFM simulation should now run."
                puts ""
            }
        } else {
            if { $simSelect == "oci" } {
                for {set i 0} {$i < $num_oci_tests} {incr i} {
                    onbreak resume
                    quietly set tmplist [lindex $oci_params_list $i]
                    quietly set trig_num   [lindex $tmplist 0]
                    quietly set waitstates [lindex $tmplist 1]
                    quietly set sim_arg1 "-GTRIG_NUM=${trig_num}"
                    quietly set sim_arg2 "-GWAITSTATES=${waitstates}"
                    puts "----------------------------------------------"
                    puts "Running Core8051s oci test ${i}"
                    puts "----------------------------------------------"
				    vsim -t 10ps $sim_arg1 $sim_arg2 -L $ACTELLIBNAME -L $simLib +nowarnTSCALE CORE8051S_LIB.tb_oci_sys
                    quietly set StdArithNoWarnings 1
                    quietly set NumericStdNoWarnings 1
                    run -all
                }
            } else {
                if { $simSelect == "opcode" } {
                     puts ""
                     puts "Running Core8051s opcode test suite"
                     puts ""
					 for {set i 1} {$i <= 256} {incr i} {
				 	     if {$i<10} {
				 			 quietly set sim_arg1 "-GTESTNAME=\"test00${i}\""
				 			 quietly set timefile opcode_test00${i}_time.txt
				 	     } elseif {$i<100} {
				 			 quietly set sim_arg1 "-GTESTNAME=\"test0${i}\""
				 			 quietly set timefile opcode_test0${i}_time.txt
				 	     } else {
				 			 quietly set sim_arg1 "-GTESTNAME=\"test${i}\""
				 			 quietly set timefile opcode_test${i}_time.txt
				 	     }
                         puts "----------------------------------------------"
                         puts "Running Core8051s opcode test ${i}"
                         puts "----------------------------------------------"
						 vsim -t 10ps $sim_arg1 -L $ACTELLIBNAME -L $simLib +nowarnTSCALE CORE8051S_LIB.tb_verif
                         quietly set StdArithNoWarnings 1
                         quietly set NumericStdNoWarnings 1
	                     do $timefile
					 }
                } else {
                    if { [string is integer $simSelect] && $simSelect >= 1 && $simSelect <= 256 } {
                         puts ""
                         puts "Running Core8051s verification"
                         puts ""
                         quietly set i $simSelect
				 	  	 if {$i<10} {
				 		 	 quietly set sim_arg1 "-GTESTNAME=\"test00${i}\""
				 		 	 quietly set timefile opcode_test00${i}_time.txt
				 	  	 } elseif {$i<100} {
				 		 	 quietly set sim_arg1 "-GTESTNAME=\"test0${i}\""
				 		 	 quietly set timefile opcode_test0${i}_time.txt
				 	  	 } else {
				 		 	 quietly set sim_arg1 "-GTESTNAME=\"test${i}\""
				 		 	 quietly set timefile opcode_test${i}_time.txt
				 	  	 }
                         puts "----------------------------------------------"
                         puts "Running Core8051s opcode test ${i}"
                         puts "----------------------------------------------"
				 	  	 vsim -t 10ps $sim_arg1 -L $ACTELLIBNAME -L $simLib +nowarnTSCALE CORE8051S_LIB.tb_verif
                         quietly set StdArithNoWarnings 1
                         quietly set NumericStdNoWarnings 1
	                     do $timefile
                     } else {
                         puts ""
                         puts ""
                         puts "Unrecognized simulation type. Enter \"do run.do\" and hit the return key to try again."
                         puts ""
                         puts ""
                     }
                }
            }
        }
    }
} else {
    puts "The following (post-synthesis) simulation options are available for"
    puts "your Core8051s-based system:"
    puts "   oci - Run Core8051s On Chip Instrumentation (OCI) tests"
    puts "   opcode - Run Core8051s opcode test suite, consisting of 256 opcode tests"
    puts "   <num> - Enter a number in the range 1 to 256 to run a specific opcode test"
    puts ""
    puts "(Note: BFM-driven simulation not available post-synthesis)"
    puts ""
    puts "Enter \"oci\", \"opcode\" or a number between 1 and 256 and hit return key to select simulation type"
    gets stdin simSelect
    if { $simSelect == "oci" } {
        for {set i 0} {$i < $num_oci_tests} {incr i} {
            onbreak resume
            quietly set tmplist [lindex $oci_params_list $i]
            quietly set trig_num   [lindex $tmplist 0]
            quietly set waitstates [lindex $tmplist 1]
            quietly set sim_arg1 "-GTRIG_NUM=${trig_num}"
            quietly set sim_arg2 "-GWAITSTATES=${waitstates}"
            puts "----------------------------------------------"
            puts "Running Core8051s oci test ${i}"
            puts "----------------------------------------------"
		    vsim -t 10ps $sim_arg1 $sim_arg2 -L $ACTELLIBNAME -L $simLib +nowarnTSCALE CORE8051S_LIB.tb_oci_sys
            quietly set StdArithNoWarnings 1
            quietly set NumericStdNoWarnings 1
            run -all
        }
    } else {
        if { $simSelect == "opcode" } {
            puts ""
            puts "Running Core8051s verification test suite"
            puts ""
			for {set i 1} {$i <= 256} {incr i} {
		 	    if {$i<10} {
		 			quietly set sim_arg1 "-GTESTNAME=\"test00${i}\""
		 			quietly set timefile opcode_test00${i}_time.txt
		 	    } elseif {$i<100} {
		 			quietly set sim_arg1 "-GTESTNAME=\"test0${i}\""
		 			quietly set timefile opcode_test0${i}_time.txt
		 	    } else {
		 			quietly set sim_arg1 "-GTESTNAME=\"test${i}\""
		 			quietly set timefile opcode_test${i}_time.txt
		 	    }
                puts "----------------------------------------------"
                puts "Running Core8051s opcode test ${i}"
                puts "----------------------------------------------"
				vsim -t 10ps $sim_arg1 -L $ACTELLIBNAME -L $simLib +nowarnTSCALE CORE8051S_LIB.tb_verif
                quietly set StdArithNoWarnings 1
                quietly set NumericStdNoWarnings 1
		        do $timefile
			}
        } else {
            if { [string is integer $simSelect] && $simSelect >= 1 && $simSelect <= 256 } {
                puts ""
                puts "Running Core8051s verification"
                puts ""
                quietly set i $simSelect
		 	  	if {$i<10} {
		 			 quietly set sim_arg1 "-GTESTNAME=\"test00${i}\""
		 			 quietly set timefile opcode_test00${i}_time.txt
		 	  	} elseif {$i<100} {
		 			 quietly set sim_arg1 "-GTESTNAME=\"test0${i}\""
		 			 quietly set timefile opcode_test0${i}_time.txt
		 	  	} else {
		 			 quietly set sim_arg1 "-GTESTNAME=\"test${i}\""
		 			 quietly set timefile opcode_test${i}_time.txt
		 	  	}
                puts "----------------------------------------------"
                puts "Running Core8051s opcode test ${i}"
                puts "----------------------------------------------"
		 	  	vsim -t 10ps $sim_arg1 -L $ACTELLIBNAME -L $simLib +nowarnTSCALE CORE8051S_LIB.tb_verif
                quietly set StdArithNoWarnings 1
                quietly set NumericStdNoWarnings 1
		        do $timefile
            } else {
                puts ""
                puts ""
                puts "Unrecognized simulation type. Enter \"do run.do\" and hit the return key to try again."
                puts ""
                puts ""
            }
        }
    }
}
pause
