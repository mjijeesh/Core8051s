##############################################################################
# Copyright 2006 Actel Corporation.  All rights reserved.
# IP Engineering
#
# ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
# ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
# IN ADVANCE IN WRITING.
#
# File:             run_8051s_verif.do
#
# Description:      Script to run Core8051s verification.
#
#
# Rev:              1.2  Dec06
#
# Notes:
#
##############################################################################


# Check if the variable ROOTDIR_CORE8051S has been set and exit gracefully
# if not. If "Set As Root" has been applied to the Core8051s instance in Libero,
# then ROOTDIR_CORE8051S will be set in the automatically generated run.do script
# which calls this script.
# This information is correct for Libero Version 7.2.3.2 Release v7.2 SP2.

if { ![ info exists ROOTDIR_CORE8051S ] } {
    # Exit script if ROOTDIR_CORE8051S variable does not exist.
    # (This verification script is only relevant to the Core8051s core.)
} else {

##############################################################################
# Set variables

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

quietly set ACTEL_VLOG_LIBDIR "$env(MODEL_TECH)/../actel/Vlog"
quietly set ACTEL_VHDL_LIBDIR "$env(MODEL_TECH)/../actel/Vhdl"

quietly set ACTEL_VLOG_LIB "$ACTEL_VLOG_LIBDIR/$FAMILY"
quietly set ACTEL_VHDL_LIB "$ACTEL_VHDL_LIBDIR/$FAMILY"

if { $LANG == "vlog" } {
	quietly	set LANGDIR "verilog"
} else {
	quietly	set LANGDIR "vhdl"
}

quietly set RUNTIME_DIR "$ROOTDIR_CORE8051S/verification/sim/runtime"

quietly set CORENAME "core8051s"
quietly set TBWKDIR $CORENAME
quietly append TBWKDIR "_lib"

##############################################################################


if { $LANG == "vlog" } {
	quietly	set VSUFF "v"
} else {
	quietly	set VSUFF "vhd"
	vlib $TBWKDIR
}

# Map family library
if { $LANG == "vlog" } {
    vmap $FAMILY $ACTEL_VLOG_LIB
} else {
    vmap $FAMILY $ACTEL_VHDL_LIB
}


##############################################################################
# Simulate
##############################################################################

# initialize variables

quietly set do_all_tests 1
quietly set use_ujtag 1
quietly set do_waves 0
quietly set do_waves_str "NOT Capturing waveforms"
quietly set test_num_str ""
quietly set test_type_str ""
quietly set test_type_passed 0
quietly set test_num_passed 0
quietly set number_of_tests 0
quietly set test_num 0
quietly set all_test_err 0
quietly set dowavefile "wavetb.do"
quietly set tfpath "$RUNTIME_DIR/tests"

quietly set tt_list [list]
quietly set tt_list { \
{"opcode"     "test"  256 "Opcode test" } \
{"oci"        "test"    4 "OCI test" } \
}

quietly set tmplist [list]
quietly set oci_params_list [list]
quietly set oci_params_list { \
{ 1 0 } \
{ 1 1 } \
{ 1 2 } \
{ 1 7 } \
}

quietly set vhdltbench "presynth.testbench"
quietly set vlogtbench "presynth.testbench"
quietly set oci_vhdltbench "presynth.sysa51tb"
quietly set oci_vlogtbench "presynth.sysa51tb"

quietly set s1 "+nowarnTFMPC"
quietly set s2 "+nowarnTSCALE"
quietly set s3 "-noglitch"
quietly set maxargs 3
quietly set exit_script 0

# process arguments (if any ...)
quietly set nargs $argc
if {$nargs>0 && $nargs<=$maxargs} {
	for {set i 1} {$i <= $nargs} {incr i} {
		quietly set RecognizedArg 0
		#quietly set CurrentArg $1
		#shift
		###################################################################
		# workaround here to explicitly set to $1, $2, etc., since 'shift'
		# command doesn't appear to function properly in MTI OEM version 5.5e
		###################################################################
		switch $i {
			1 { quietly set CurrentArg $1 }
			2 { quietly set CurrentArg $2 }
			3 { quietly set CurrentArg $3 }
			4 { quietly set CurrentArg $4 }
		}
		# look in args for test type
		foreach tt_sublist $tt_list {
			quietly set tt1 [lindex $tt_sublist 0]
			quietly set tt1b [lindex $tt_sublist 1]
			quietly set tt2 [lindex $tt_sublist 2]
			quietly set tt3 [lindex $tt_sublist 3]
			if {$CurrentArg == $tt1} {
				quietly set test_type $tt1
				quietly set test_type2 $tt1b
				quietly set number_of_tests $tt2
				quietly set test_type_str $tt3
				quietly set do_all_tests 0
				quietly set test_type_passed 1
				quietly set RecognizedArg 1
			}
		}
		# look in args for test number
		for {set j 1} {$j <= 999} {incr j} {
			if {$CurrentArg == $j} {
				if {$j<10} {
					quietly set test_num_str "test00$j"
				} elseif {$j<100} {
					quietly set test_num_str "test0$j"
				} else {
					quietly set test_num_str "test$j"
				}
				quietly set test_num $j
				quietly set do_all_tests 0
				quietly set test_num_passed 1
				quietly set RecognizedArg 1
			}
		}
		# capture waves? (requires test type and test number args)
		if {$CurrentArg == "waves"} {
			quietly set do_waves 1
			quietly set do_waves_str "Capturing waveforms"
			quietly set RecognizedArg 1
		}
		# If an argument is unrecoginized exit with error message ...
		if {$RecognizedArg == 0} {
			echo "#############################################################"
			echo "ERROR! Unrecognized argument: $CurrentArg"
			echo "#############################################################"
			quietly set exit_script 1
		}
	}
	quietly set k [expr $test_num - 1]
	if {$test_type == "oci"} {
		quietly set tmplist [lindex $oci_params_list $k]
		quietly set trig_num    [lindex $tmplist 0]
		quietly set waitstates  [lindex $tmplist 1]
	}
}

if {$exit_script == 1} {
	exit
} else {

## check number of args, etc.
if {$do_waves == 1} {
	if {$do_all_tests == 1} {
		echo "### Note: Waveform capture not allowed when running all tests."
		echo "### Ignoring request to capture waveforms."
		quietly set do_waves 0
		quietly set do_waves_str "NOT Capturing waveforms"
	}
}


########################################################################
## procedure to run simulation
########################################################################
proc RunSim {} {
	global s01 s02 s03 s04 s05 TestStr timefile
	global s1 s2 s3 test_type test_num_str test_type_str tfpath tbench
	global LANG do_waves_str do_waves dowavefile test_top
	global test_num
	global FAMILY
	global use_ujtag trig_num waitstates
	global vhdltbench vlogtbench oci_vhdltbench oci_vlogtbench

if {$test_type == "oci"} {
	if {$LANG == "vhdl"} {
		quietly set tbench $oci_vhdltbench
	} else {
		quietly set tbench $oci_vlogtbench
	}

	quietly set TestStr ""
	quietly set timefile ""
	quietly set s01 "-GUSE_UJTAG=$use_ujtag"
	quietly set s02 "-GTRIG_NUM=$trig_num"
	quietly set s03 "-GWAITSTATES=$waitstates"
	quietly set s04 ""
	echo ""
	echo "---------------------------------------------------------------------"
	echo "Begin OCI Test"
	echo "---------------------------------------------------------------------"
	echo "Language:\t\t$LANG"
	echo "Test Number:\t\t$test_num"
	echo "Waveforms:\t\t$do_waves_str"
	echo "Generics are set to the following for current simulation:"
	echo "USE_UJTAG\t:$use_ujtag"
	echo "TRIG_NUM\t:$trig_num"
	echo "WAITSTATES\t:$waitstates"
	echo "---------------------------------------------------------------------"
	echo ""
} else {
	if {$LANG == "vhdl"} {
		quietly set tbench $vhdltbench
	} else {
		quietly set tbench $vlogtbench
	}
	quietly set TestStr "$test_type/$test_num_str"
	quietly set timefile "$tfpath/$TestStr/time.txt"
	quietly set s01 "-GTESTPATH=\"$tfpath\""
	quietly set s02 "-GTESTNAME=\"$TestStr\""
	quietly set s03 ""
	quietly set s04 ""
	echo ""
	echo "---------------------------------------------------------------------"
	echo "Begin Verification Test: $TestStr"
	echo "---------------------------------------------------------------------"
	echo "Language:\t\t$LANG"
	echo "Test Type:\t\t$test_type_str"
	echo "Test Number:\t\t$test_num"
	echo "Waveforms:\t\t$do_waves_str"
	echo "---------------------------------------------------------------------"
	echo ""
}
	if {$LANG == "vlog"} {
		vsim -t 100ps $s01 $s02 $s03 $s04 $s1 $s2 $s3 -L $FAMILY $tbench
	} else {
		vsim -t 100ps $s01 $s02 $s03 $s04 $s1 $s2 $s3 $tbench
	}

	if {$do_waves == 1} {
        if {$test_type == "oci"} {
        	quietly set test_top "sysa51tb"
        } else {
        	quietly set test_top "testbench"
        }

        onerror {resume}
        quietly WaveActivateNextPane {} 0
        add wave -noupdate -divider {top testbench sigs}
        add wave -noupdate -format Logic -radix hexadecimal /$test_top/*
        TreeUpdate [SetDefaultTree]
        configure wave -namecolwidth 300
        configure wave -valuecolwidth 150
        configure wave -justifyvalue left
        configure wave -signalnamewidth 0
        configure wave -snapdistance 10
        configure wave -datasetprefix 0
        configure wave -rowmargin 4
        configure wave -childrowmargin 2
        configure wave -gridoffset 0
        configure wave -gridperiod 1
        configure wave -griddelta 40
        configure wave -timeline 0
	}
	# get rid of annoying Warning messages about arithmetic operands at time 0
	quietly set StdArithNoWarnings 1

if {$test_type == "oci"} {
	run -all
	echo ""
	echo "---------------------------------------------------------------------"
	echo "Done with OCI Test: $test_num"
	echo "---------------------------------------------------------------------"
	echo ""
} else {
	# run for exact time
	do $timefile
	echo ""
	echo "---------------------------------------------------------------------"
	echo "Done with Verification Test: $TestStr"
	echo "---------------------------------------------------------------------"
	echo ""
}

}
########################################################################


# Determine if all tests are being run, or an individual test
if {$do_all_tests == 0} {
	# individual test
	if {$test_type_passed == 0} {
		quietly set all_test_err 1
	} elseif {$test_num > $number_of_tests} {
		echo "##############################################################"
		echo "ERROR! Test number given: $test_num, is greater than the number"
		echo "of tests: $number_of_tests for test type: $test_type"
		quietly set all_test_err 1
	}
	if {$test_num_passed == 0} { quietly set all_test_err 1 }
	if {$all_test_err == 1} {
		echo "##############################################################"
		echo "ERROR! If individual tests are to be run, test type, and"
		echo "test number need to be given, for example:"
		echo "do run_verif.do opcode 5 waves"
		echo ""
		echo "Exiting ..."
		echo "##############################################################"
		exit
	} else {
		RunSim
	}
} else {
	# all tests
	foreach tt_sublist $tt_list {
		quietly set test_type [lindex $tt_sublist 0]
		quietly set test_type2 [lindex $tt_sublist 1]
		quietly set number_of_tests [lindex $tt_sublist 2]
		quietly set test_type_str [lindex $tt_sublist 3]
		for {set i 1} {$i <= $number_of_tests} {incr i} {
			if {$i<10} {
				quietly set test_num_str "test00$i"
			} elseif {$i<100} {
				quietly set test_num_str "test0$i"
			} else {
				quietly set test_num_str "test$i"
			}
			quietly set test_num $i
			quietly set k [expr $i - 1]
			if {$test_type == "oci"} {
				quietly set tmplist [lindex $oci_params_list $k]
				quietly set trig_num    [lindex $tmplist 0]
				quietly set waitstates  [lindex $tmplist 1]
			}
			RunSim
		}
	}
}
# exit script on error
}
}
