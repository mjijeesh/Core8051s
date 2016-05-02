onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {TOP LEVEL}
add wave -noupdate -divider APB
add wave -noupdate -divider Inputs
add wave -noupdate -format Logic /coreapbnvm_user_tb/PCLK
add wave -noupdate -format Logic /coreapbnvm_user_tb/PRESETN
add wave -noupdate -format Logic /coreapbnvm_user_tb/PENABLE
add wave -noupdate -format Logic /coreapbnvm_user_tb/PSEL
add wave -noupdate -format Logic /coreapbnvm_user_tb/PWRITE
add wave -noupdate -format Literal -radix hexadecimal /coreapbnvm_user_tb/PADDR
add wave -noupdate -format Literal -radix hexadecimal /coreapbnvm_user_tb/PWDATA
add wave -noupdate -divider Outputs
add wave -noupdate -format Literal -radix hexadecimal /coreapbnvm_user_tb/PRDATA
add wave -noupdate -format Logic /coreapbnvm_user_tb/PREADY
add wave -noupdate -format Logic /coreapbnvm_user_tb/PSLVERR
add wave -noupdate -divider InitConfig
add wave -noupdate -divider Inputs
add wave -noupdate -format Logic /coreapbnvm_user_tb/INIT_BASE0
add wave -noupdate -format Logic /coreapbnvm_user_tb/INIT_BASE1
add wave -noupdate -format Logic /coreapbnvm_user_tb/INIT_BASE2
add wave -noupdate -format Logic /coreapbnvm_user_tb/INIT_BASE3
add wave -noupdate -divider Outputs
add wave -noupdate -format Logic /coreapbnvm_user_tb/INIT_DONE
add wave -noupdate -format Literal -radix hexadecimal /coreapbnvm_user_tb/INIT_DATA
add wave -noupdate -format Literal -radix hexadecimal /coreapbnvm_user_tb/INIT_ADDR
add wave -noupdate -format Logic /coreapbnvm_user_tb/INIT_DATVAL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2563354760 ps} 0}
configure wave -namecolwidth 270
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
WaveRestoreZoom {2548755190 ps} {2678415700 ps}
