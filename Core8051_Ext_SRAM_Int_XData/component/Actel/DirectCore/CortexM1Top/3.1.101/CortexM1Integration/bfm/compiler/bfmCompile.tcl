#
# CortexM1 Native Bus Functional Model (BFM) Compiler Script
#
# Author: CM
# Date: August 4, 2006
#
# Copyright: Actel Corporation, 2006.
#

set compilerVersion 2.0

proc createBfmInstr {command size waitCount} {

    global transInstr

	# Determine if this is a sequential access
    # (For the moment, assume always non-sequential)
    # 2 = N-cycle
    # 3 = S-cycle

    switch $size {
        "b" { set sizeCode 0 }
        "h" { set sizeCode 1 }
        "w" { set sizeCode 2 }
    }

    switch $command {
        "read" {
            set writeCode 0
            set transCode 2
            set transMask 0
            set waitIRQ 0
            set waitFIQ 0
            set pollCode 0
        }
        "readcheck" {
            set writeCode 0
            set transCode 2
            set transMask 1
            set waitIRQ 0
            set waitFIQ 0
            set pollCode 0
        }
        "write" {
            set writeCode 1
            set transCode 2
            set transMask 0
            set waitIRQ 0
            set waitFIQ 0
            set pollCode 0
        }
        "wait" {
            set writeCode 0
            set transCode 0
            set transMask 0
            set waitIRQ 0
            set waitFIQ 0
            set pollCode 0
        }
        "waitirq" {
            set writeCode 0
            set transCode 0
            set transMask 0
            set waitIRQ 1
            set waitFIQ 0
            set pollCode 0
        }
        "waitfiq" {
            set writeCode 0
            set transCode 0
            set transMask 0
            set waitIRQ 0
            set waitFIQ 1
            set pollCode 0
        }
        "poll" {
            set writeCode 0
            set transCode 2
            set transMask 0
            set waitIRQ 0
            set waitFIQ 0
            set pollCode 1
        }
    }

    set instr [ expr (($waitCount * 512) + ($pollCode * 256) + ($waitFIQ * 128) + ($waitIRQ * 64) +($transMask * 32) + ($transCode * 8) + ($writeCode * 4) + $sizeCode) ]

    # Write CortexM1 BFM instruction to instr.vec file
	puts $transInstr [format "%08x" $instr]
}


set bfmCompileLogFile "bfmCompile.log"
set bfmScript "subsystem.bfm"
set bfmScript_i "subsystem_i.bfm"
set addrVectors "transAddr.vec"
set dataVectors "transData.vec"
set instrVectors "transInstr.vec"
set numTransVectors "numTrans.vec"
set numErrorsFile "numErrors.vec"

if [ catch { open $bfmCompileLogFile w } bfmCompile_log ] {
    puts "Error: CortexM1 BFM Compile: Cannot write BFM compiler log file \"$bfmCompileLogFile\""
}

if [ catch { open $addrVectors w } transAddr ] {
    puts "Error: CortexM1 BFM Compile: Cannot write transAddr.vec file \"$addrVectors\""
    puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot write transAddr.vec file \"$addrVectors\""
}

if [ catch { open $dataVectors w } transData ] {
    puts "Error: CortexM1 BFM Compile: Cannot write transData.vec file \"$dataVectors\""
    puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot write transData.vec file \"$dataVectors\""
}

if [ catch { open $instrVectors w } transInstr ] {
    puts "Error: CortexM1 BFM Compile: Cannot write transInstr.vec file \"$instrVectors\""
    puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot write transInstr.vec file \"$instrVectors\""
}

if [ catch { open $numTransVectors w } numTrans ] {
    puts "Error: CortexM1 BFM Compile: Cannot write numTrans.vec file \"$numTransVectors\""
    puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot write numTrans.vec file \"$numTransVectors\""
}

if [ catch { open $numErrorsFile w } numErrors_file ] {
    puts "Error: CortexM1 BFM Compile: Cannot write numErrors.vec file \"$numErrorsFile\""
    puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot write numErrors.vec file \"$numErrorsFile\""
}

puts "CortexM1 BFM Compiler v$compilerVersion"
puts $bfmCompile_log "CortexM1 BFM Compiler v$compilerVersion"

# BFM Script Pre-processing
# The pre-processor reads in subsystem.bfm and writes a pre-processed BFM script to subsystem_i.bfm

# Open the raw CortexM1 BFM script
if [ catch { open "$bfmScript" r } script ] {
	puts "Error: CortexM1 BFM Compile (Pre-process): Cannot read file \"$bfmScript\""
	puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot read file \"$bfmScript\""
	set errorVar 1
	return 0
}

# Open the output (pre-processed file, for writing)
if [ catch { open $bfmScript_i w } script_i ] {
    puts "Error: CortexM1 BFM Compile (Pre-process): Cannot write intermediate BFM script file \"$bfmScript_i\""
    puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot write intermediate BFM script file \"$bfmScript_i\""
}

set numErrors 0
set lineNumber 0

while { [ gets $script line ] >= 0 } {

    # To simplify parsing, convert input script line to lower case, except for argument
    # of "include" line, which must remain unchanged, for Unix file names.
    if { [ regexp -nocase {include} $line ] == 1 } {
        regsub -nocase include $line include x
        } else {
        set line [ string tolower $line ]
    }

    set lineNumber [ expr ($lineNumber + 1) ]

    # Extract memmap and include commands to figure out which files to include
	switch -regexp -- $line {
		{^[ \t]*(\#)} {
	        # Write comment line unchanged to intermediate BFM script file
	        puts $script_i $line
        }
		{^[ \t]*$} {
	        # Write blank line unchanged to intermediate BFM script file
	        puts $script_i $line
        }
		{^([ \t]*)([a-zA-Z]+)([ \t]*)} {
            # First extract the command
		    regexp {^([ \t]*)([a-zA-Z]+)([ \t]*)} $line full_line space command remainder

            # Based on the particular command, parse the appropriate number of arguments
            switch -exact $command {
                "memmap" {
                    set validCommand [regexp {^([ \t]*)([a-zA-Z]+)([ \t]+)([0-9a-zA-Z_]+)([ \t]+)(0[xX][0-9a-fA-F]+)([ \t]*);} $line full_line s1 command s2 resourceInstance s3 baseAddr]
                    if { [expr ($validCommand == 1)] } {
                        set base($resourceInstance) $baseAddr
                        # Write out the line unchanged into intermediate BFM script file
	                    puts $script_i $line
                    } else {
	                    puts "Error: CortexM1 BFM Compile (Pre-process): \"$bfmScript\" Line $lineNumber: Invalid command "
	                    puts $bfmCompile_log "Error: CortexM1 BFM Compile (Pre-process): \"$bfmScript\" Line $lineNumber: Invalid command "
	                    puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	                    puts "\t\t - all numbers must be in hex (preceded by 0x) "
                        set numErrors [ expr ($numErrors + 1) ]
                    }
                }
                "include" {
                    set validCommand [regexp {^([ \t]*)([a-zA-Z]+)([ \t]+)([0-9a-zA-Z_]+)([ \t]+)([0-9a-zA-Z_]+)([ \t]*);} $line full_line s1 command s2 resourceType s3 resourceInstance]
                    if { [expr ($validCommand == 1)] } {
                        if { [expr ([ lsearch -exact [ array names base ] [ string tolower $resourceInstance ] ]) != (-1)] } {

                            # Find and open appropriate scriptlet
                            set resourceScriptlet "${resourceType}_scriptlet.bfm"
                            if [ catch { open "$resourceScriptlet" r } scriptlet ] {
	                            puts "Error: CortexM1 BFM Compile (Pre-process): Cannot read scriptlet file \"$resourceScriptlet\""
	                            puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot read scriptlet file \"$resourceScriptlet\""
	                            set errorVar 1
	                            return 0
                            }

                            # Write out each line of scriptlet to intermediate BFM script file,
                            # replacing instance name placeholders with correct resource instance name
	                        puts $script_i " "
                            while { [ gets $scriptlet line ] >= 0 } {
                                set line [ string tolower $line ]
                                regsub -nocase VAR_resource $line $resourceInstance changedLine
	                            puts $script_i $changedLine
                            }
                            close $scriptlet
                        } else {
	                        puts "Error: CortexM1 BFM Compile (Pre-process): \"$bfmScript\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
	                        puts $bfmCompile_log "Error: CortexM1 BFM Compile (Pre-process): \"$bfmScript\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
                            set numErrors [ expr ($numErrors + 1) ]
                        }
                    } else {
	                    puts "Error: CortexM1 BFM Compile (Pre-process): \"$bfmScript\" Line $lineNumber: Invalid command "
	                    puts $bfmCompile_log "Error: CortexM1 BFM Compile (Pre-process): \"$bfmScript\" Line $lineNumber: Invalid command "
	                    puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	                    puts "\t\t - all numbers must be in hex (preceded by 0x) "
                        set numErrors [ expr ($numErrors + 1) ]
                    }
                }
                default {
                    # Write out the line unchanged into intermediate BFM script file
	                puts $script_i $line
                }
            }
        }
		default {
	        puts "Error: CortexM1 BFM Compile (Pre-process): \"$bfmScript\" Line $lineNumber: Invalid BFM script command"
	        puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript\" Line $lineNumber: Invalid BFM script command"
            set numErrors [ expr ($numErrors + 1) ]
		}
	}
}

close $script

flush $script_i
close $script_i

if { [expr ($numErrors > 0)]} {
	puts "CortexM1 BFM Compile (Pre-process): $numErrors error(s) encountered"
	puts "Please fix BFM script and re-run simulation"
	puts " - see bfmCompile.log for details of BFM script errors"
	puts $bfmCompile_log "CortexM1 BFM Compile (Pre-process): $numErrors error(s) encountered"
	puts $bfmCompile_log "Please fix BFM script and re-run simulation"
} else {

    # BFM Script Compilation
    # The compiler reads in subsystem_i.bfm and generates vector files for use by BFM simulation models

    # Open the pre-processed CortexM1 BFM script
    if [ catch { open "$bfmScript_i" r } script_i ] {
	    puts "Error: CortexM1 BFM Compile: Cannot read file \"$bfmScript_i\""
	    puts $bfmCompile_log "Error: CortexM1 BFM Compile: Cannot read file \"$bfmScript_i\""
	    set errorVar 1
	    return 0
    }

    # Initialize vector count to zero
    set vecCount 0

    set lineNumber 0

    while { [ gets $script_i line ] >= 0 } {

        set line [ string tolower $line ]

        set lineNumber [ expr ($lineNumber + 1) ]

	    switch -regexp -- $line {
		    {^[ \t]*(\#)} {
	            # Matched comment line
            }
		    {^[ \t]*$} {
	            # Matched blank line
            }
		    {^([ \t]*)([a-zA-Z]+)([ \t]*)} {
                # First extract the command
		        regexp {^([ \t]*)([a-zA-Z]+)([ \t]*)} $line full_line space command remainder

                # Based on the particular command, parse the appropriate number of arguments
                switch -exact $command {
                    "memmap" {
                        # Do nothing, as already matched memmap commands during pre-processing
                    }
                    "read" {
                        set validCommand [regexp {^([ \t]*)(read)([ \t]+)([bhwBHW])([ \t]+)([0-9a-zA-Z_]+)([ \t]+)(0[xX][0-9a-fA-F]+)([ \t]*);} $line full_line s1 command s2 size s3 resourceInstance s4 offset]
                        set vecCount [ expr ($vecCount + 1) ]
                        if { [expr ($validCommand == 1)] } {
                            if { [expr ([ lsearch -exact [ array names base ] $resourceInstance ]) != (-1)] } {
                                set locAddr [expr $base($resourceInstance) + $offset]
	                            puts $transAddr [format "%08x" $locAddr]
                                set waitCount 0
                                createBfmInstr $command $size $waitCount

                                # Set data to zero, as a placeholder in data vector file
	                            puts $transData 00000000

                            } else {
	                            puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
	                            puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
                                set numErrors [ expr ($numErrors + 1) ]
                            }
                        } else {
	                        puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	                        puts "\t\t - all numbers must be in hex (preceded by 0x) "
                            set numErrors [ expr ($numErrors + 1) ]
                        }
                    }
                    "write" {
                        set validCommand [regexp {^([ \t]*)(write)([ \t]+)([bhwBHW])([ \t]+)([0-9a-zA-Z_]+)([ \t]+)(0[xX][0-9a-fA-F]+)([ \t]+)(0[xX][0-9a-fA-F]+)([ \t]*);} $line full_line s1 command s2 size s3 resourceInstance s4 offset s5 writeData]
                        set vecCount [ expr ($vecCount + 1) ]
                        if { [expr ($validCommand == 1)] } {
                            if { [expr ([ lsearch -exact [ array names base ] $resourceInstance ]) != (-1)] } {
                                set locAddr [expr $base($resourceInstance) + $offset]
	                            puts $transAddr [format "%08x" $locAddr]
                                set waitCount 0
                                createBfmInstr $command $size $waitCount
	                            puts $transData [format "%08x" $writeData]
                            } else {
	                            puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
	                            puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
                                set numErrors [ expr ($numErrors + 1) ]
                            }
                        } else {
	                        puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	                        puts "\t\t - all numbers must be in hex (preceded by 0x) "
                            set numErrors [ expr ($numErrors + 1) ]
                        }
                    }
                    "readcheck" {
                        set validCommand [regexp {^([ \t]*)(readcheck)([ \t]+)([bhwBHW])([ \t]+)([0-9a-zA-Z_]+)([ \t]+)(0[xX][0-9a-fA-F]+)([ \t]+)(0[xX][0-9a-fA-F]+)([ \t]*);} $line full_line s1 command s2 size s3 resourceInstance s4 offset s5 expData]
                        set vecCount [ expr ($vecCount + 1) ]
                        if { [expr ($validCommand == 1)] } {
                            if { [expr ([ lsearch -exact [ array names base ] $resourceInstance ]) != (-1)] } {
                                set locAddr [expr $base($resourceInstance) + $offset]
	                            puts $transAddr [format "%08x" $locAddr]
                                set waitCount 0
                                createBfmInstr $command $size $waitCount
	                            puts $transData [format "%08x" $expData]
                            } else {
	                            puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
	                            puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
                                set numErrors [ expr ($numErrors + 1) ]
                            }
                        } else {
	                        puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	                        puts "\t\t - all numbers must be in hex (preceded by 0x) "
                            set numErrors [ expr ($numErrors + 1) ]
                        }
                    }
                    "wait" {
                        set validCommand [regexp {^([ \t]*)(wait)([ \t]+)([0-9]+)([ \t]*);} $line full_line s1 command s2 waitCount]
                        set vecCount [ expr ($vecCount + 1) ]
                        if { [expr ($validCommand == 1)] } {
                            # Set address to zero, as a placeholder in address vector file
	                        puts $transAddr 00000000

	                        # Set data to zero, as a placeholder in data vector file
	                        puts $transData 00000000

                            set size "w"

                            createBfmInstr $command $size $waitCount
                        } else {
	                        puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	                        puts "\t\t - all numbers must be in hex (preceded by 0x) "
                            set numErrors [ expr ($numErrors + 1) ]
                        }
                    }
                #
                # Interrupts not supported in first version of CortexM1 BFM
                #
                #    "waitirq" {
                #        set validCommand [regexp {^([ \t]*)(waitirq)([ \t]*);} $line full_line s1 command]
                #        set vecCount [ expr ($vecCount + 1) ]
                #        if { [expr ($validCommand == 1)] } {
                #            # Set address to zero, as a placeholder in address vector file
	            #            puts $transAddr 00000000
                #
	            #            # Set data to zero, as a placeholder in data vector file
	            #            puts $transData 00000000
                #
                #            set size "w"
                #            set waitCount 0
                #
                #            createBfmInstr $command $size $waitCount
                #        } else {
	            #            puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	            #            puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	            #            puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	            #            puts "\t\t - all numbers must be in hex (preceded by 0x) "
                #            set numErrors [ expr ($numErrors + 1) ]
                #        }
                #    }
                #    "waitfiq" {
                #        set validCommand [regexp {^([ \t]*)(waitfiq)([ \t]*);} $line full_line s1 command]
                #        set vecCount [ expr ($vecCount + 1) ]
                #        if { [expr ($validCommand == 1)] } {
                #            # Set address to zero, as a placeholder in address vector file
	            #            puts $transAddr 00000000
                #
	            #            # Set data to zero, as a placeholder in data vector file
	            #            puts $transData 00000000
                #
                #            set size "w"
                #            set waitCount 0
                #
                #            createBfmInstr $command $size $waitCount
                #        } else {
	            #            puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	            #            puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	            #            puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	            #            puts "\t\t - all numbers must be in hex (preceded by 0x) "
                #            set numErrors [ expr ($numErrors + 1) ]
                #        }
                #    }
                    "poll" {
                        set validCommand [regexp {^([ \t]*)(poll)([ \t]+)([bhwBHW])([ \t]+)([0-9a-zA-Z_]+)([ \t]+)(0[xX][0-9a-fA-F]+)([ \t]+)(0[xX][0-9a-fA-F]+)([ \t]*);} $line full_line s1 command s2 size s3 resourceInstance s4 offset s5 bitMask]
                        set vecCount [ expr ($vecCount + 1) ]
                        if { [expr ($validCommand == 1)] } {
                            if { [expr ([ lsearch -exact [ array names base ] $resourceInstance ]) != (-1)] } {
                                set locAddr [expr $base($resourceInstance) + $offset]
	                            puts $transAddr [format "%08x" $locAddr]
                                set waitCount 0
                                createBfmInstr $command $size $waitCount
	                            puts $transData [format "%08x" $bitMask]
                            } else {
	                            puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
	                            puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Unrecognized resource instance: \"$resourceInstance\""
                                set numErrors [ expr ($numErrors + 1) ]
                            }
                        } else {
	                        puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid command on bus cycle $vecCount "
	                        puts "\t\t - allowed widths are b (byte), h (halfword), w (word) "
	                        puts "\t\t - all numbers must be in hex (preceded by 0x) "
                            set numErrors [ expr ($numErrors + 1) ]
                        }
                    }
                    default {
	                    puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid BFM script command: \"$command\""
	                    puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid BFM script command: \"$command\""
                        set numErrors [ expr ($numErrors + 1) ]
                    }
                }
            }
		    default {
	            puts "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid BFM script command"
	            puts $bfmCompile_log "Error: CortexM1 BFM Compile: \"$bfmScript_i\" Line $lineNumber: Invalid BFM script command"
                set numErrors [ expr ($numErrors + 1) ]
		    }
	    }
    }

    # Write a vector into each file indicating lastCommand
	puts $transInstr 00000200
    # Use zero for data and address
	puts $transAddr 00000000
	puts $transData 00000000
    # Increment vector count accordingly
    set vecCount [ expr ($vecCount + 1) ]

    # Write the number of vectors into numTrans.vec
    if { [expr ($vecCount > 1024)]} {
	    puts "Error: CortexM1 BFM Compile: BFM script contains more than maximum 1024 bus transactions"
	    puts $bfmCompile_log "Error: CortexM1 BFM Compile: BFM script contains more than maximum 1024 bus transactions"
        set numErrors [ expr ($numErrors + 1) ]
    } else {
        puts $numTrans [format "%08x" $vecCount]
    }

    puts $numErrors_file [format "%08x" $numErrors]

    if { [expr ($numErrors > 0)]} {
	    puts "CortexM1 BFM Compile: $numErrors error(s) encountered"
	    puts "Please fix BFM script and re-run simulation"
	    puts " - see bfmCompile.log for details of BFM script errors"
	    puts $bfmCompile_log "CortexM1 BFM Compile: $numErrors error(s) encountered"
	    puts $bfmCompile_log "Please fix BFM script and re-run simulation"
    } else {
	    puts "BFM script compiled successfully"
	    puts $bfmCompile_log "BFM script compiled successfully"
    }
    close $script_i
}

close $transAddr
close $transData
close $transInstr
close $numTrans
close $numErrors_file
close $bfmCompile_log
