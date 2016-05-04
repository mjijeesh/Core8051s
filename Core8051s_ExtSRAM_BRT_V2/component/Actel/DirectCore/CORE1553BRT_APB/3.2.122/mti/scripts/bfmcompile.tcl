
quietly set chmod_exe    "/bin/chmod"


if { $tcl_platform(os)  == "Linux" }            {
  # invoke linux executable
  if {![file executable ./bfmtovec.lin]} {
    quietly set cmds "exec $chmod_exe +x ./bfmtovec.lin"
    eval $cmds
  }
  exec ./bfmtovec.lin -in ./core1553brt.bfm -out ./core1553brt.vec
 } else {
  # invoke windows executable
  exec ./bfmtovec.exe -in ./core1553brt.bfm -out ./core1553brt.vec
 }


