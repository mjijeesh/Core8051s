onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Bus
add wave -noupdate -format Logic /tb_amba/busapos
add wave -noupdate -format Logic /tb_amba/busaneg
add wave -noupdate -format Logic /tb_amba/busbpos
add wave -noupdate -format Logic /tb_amba/busbneg
add wave -noupdate -divider APB
add wave -noupdate -format Logic /tb_amba/presetn
add wave -noupdate -format Logic /tb_amba/pclk
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/paddr
add wave -noupdate -format Logic /tb_amba/penable
add wave -noupdate -format Logic /tb_amba/pwrite
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/pwdata
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/prdata
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/psel
add wave -noupdate -divider {RT 0}
add wave -noupdate -format Logic /tb_amba/urt__0/urt/clk
add wave -noupdate -format Logic /tb_amba/urt__0/urt/rstinn
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__0/urt/cmdval
add wave -noupdate -format Logic /tb_amba/urt__0/urt/cmdok
add wave -noupdate -format Logic /tb_amba/urt__0/urt/memgntn
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__0/urt/memaddr
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__0/urt/memdout
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__0/urt/memdin
add wave -noupdate -format Logic /tb_amba/urt__0/urt/memcsn
add wave -noupdate -format Logic /tb_amba/urt__0/urt/memwrn
add wave -noupdate -format Logic /tb_amba/urt__0/urt/memrdn
add wave -noupdate -format Logic /tb_amba/urt__0/urt/memwaitn
add wave -noupdate -divider {RT 1}
add wave -noupdate -format Logic /tb_amba/urt__0/urt/clk
add wave -noupdate -format Logic /tb_amba/urt__1/urt/rstinn
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__1/urt/cmdval
add wave -noupdate -format Logic /tb_amba/urt__1/urt/cmdok
add wave -noupdate -format Logic /tb_amba/urt__1/urt/memgntn
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__1/urt/memaddr
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__1/urt/memdout
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__1/urt/memdin
add wave -noupdate -format Logic /tb_amba/urt__1/urt/memcsn
add wave -noupdate -format Logic /tb_amba/urt__1/urt/memwrn
add wave -noupdate -format Logic /tb_amba/urt__1/urt/memrdn
add wave -noupdate -format Logic /tb_amba/urt__1/urt/memwaitn
add wave -noupdate -divider {RT 2}
add wave -noupdate -format Logic /tb_amba/urt__2/urt/clk
add wave -noupdate -format Logic /tb_amba/urt__2/urt/rstinn
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__2/urt/cmdval
add wave -noupdate -format Logic /tb_amba/urt__2/urt/cmdok
add wave -noupdate -format Logic /tb_amba/urt__2/urt/memgntn
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__2/urt/memaddr
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__2/urt/memdout
add wave -noupdate -format Literal -radix hexadecimal /tb_amba/urt__2/urt/memdin
add wave -noupdate -format Logic /tb_amba/urt__2/urt/memcsn
add wave -noupdate -format Logic /tb_amba/urt__2/urt/memwrn
add wave -noupdate -format Logic /tb_amba/urt__2/urt/memrdn
add wave -noupdate -format Logic /tb_amba/urt__2/urt/memwaitn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {61091861 ps} 0}
configure wave -namecolwidth 223
configure wave -valuecolwidth 64
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
update
WaveRestoreZoom {1061995313 ps} {3937026563 ps}
