### script to compile Actel AMBA BFM source file into vector file for simulation
quietly set chmod_exe    "/bin/chmod"
quietly set linux_exe    "./bfmtovec.lin"
quietly set windows_exe  "./bfmtovec.exe"
quietly set bfm_src_in   "./coreahbnvm_usertb_ahb_master.bfm"
quietly set bfm_vec_out  "./coreahbnvm_usertb_ahb_master.vec"
quietly set log          "./bfmtovec_compile.log"

# check OS type and use appropriate executable
if {$tcl_platform(os) == "Linux"} {
	echo "--- Using Linux Actel DirectCore AMBA BFM compiler"
	quietly set bfmtovec_exe $linux_exe
	if {![file executable $bfmtovec_exe]} {
		quietly set cmds "exec $chmod_exe +x $bfmtovec_exe"
		eval $cmds
	}
} else {
	echo "--- Using Windows Actel DirectCore AMBA BFM compiler"
	quietly set bfmtovec_exe $windows_exe
}
# compile BFM source files into vector outputs
echo "--- Compiling Actel DirectCore AMBA BFM source files ..."
quietly set cmds "exec $bfmtovec_exe -in $bfm_src_in -out $bfm_vec_out > $log"
eval $cmds

# print contents of log file
quietly set f [open $log]
while {[gets $f line] >= 0} {puts $line}
close $f

echo "--- Done Compiling Actel DirectCore AMBA BFM source files."
