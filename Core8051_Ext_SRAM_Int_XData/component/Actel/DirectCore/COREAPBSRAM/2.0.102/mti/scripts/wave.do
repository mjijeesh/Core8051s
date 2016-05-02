onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Testbench signals}
add wave -noupdate -divider Inputs
add wave -noupdate -format Logic /coreapbsram_user_tb/PCLK
add wave -noupdate -format Logic /coreapbsram_user_tb/PSEL
add wave -noupdate -format Logic /coreapbsram_user_tb/PENABLE
add wave -noupdate -format Logic /coreapbsram_user_tb/PWRITE
add wave -noupdate -format Literal -radix hexadecimal /coreapbsram_user_tb/PADDR
add wave -noupdate -format Literal -radix hexadecimal /coreapbsram_user_tb/PWDATA
add wave -noupdate -divider Outputs
add wave -noupdate -format Literal -radix hexadecimal /coreapbsram_user_tb/PRDATA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {253229160 ps} 0}
configure wave -namecolwidth 321
configure wave -valuecolwidth 100
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {7653851390 ps}
