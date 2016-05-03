;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Tue May 03 17:52:18 2016
;--------------------------------------------------------
	.module ___cli
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _last_rt_subaddress
	.globl _user_input
	.globl _display_brt_data_PARM_2
	.globl _temp
	.globl _last_msg_no
	.globl _last_sub_address
	.globl _rx_char_ptr
	.globl _rx_char
	.globl _key
	.globl _display_help
	.globl _display_prompt
	.globl _get_key_selection
	.globl _read_user_input
	.globl _display_brt_regs
	.globl _display_brt_data
	.globl _process_uart_data
	.globl _display_mem_data
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Ldisplay_brt_regs$sloc0$1$0==.
_display_brt_regs_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$key$0$0==.
_key::
	.ds 1
G$rx_char$0$0==.
_rx_char::
	.ds 10
G$rx_char_ptr$0$0==.
_rx_char_ptr::
	.ds 3
G$last_sub_address$0$0==.
_last_sub_address::
	.ds 1
G$last_msg_no$0$0==.
_last_msg_no::
	.ds 1
G$temp$0$0==.
_temp::
	.ds 1
Ldisplay_help$tx_data$1$1==.
_display_help_tx_data_1_1:
	.ds 960
Lget_key_selection$rx_data$1$1==.
_get_key_selection_rx_data_1_1:
	.ds 2
Lread_user_input$rx_char_ptr$1$1==.
_read_user_input_rx_char_ptr_1_1:
	.ds 3
Lread_user_input$recv_char$1$1==.
_read_user_input_recv_char_1_1:
	.ds 1
Lread_user_input$index$1$1==.
_read_user_input_index_1_1:
	.ds 1
Ldisplay_brt_regs$mem_addr$1$1==.
_display_brt_regs_mem_addr_1_1:
	.ds 4
Ldisplay_brt_regs$i$1$1==.
_display_brt_regs_i_1_1:
	.ds 1
Ldisplay_brt_data$subaddr$1$1==.
_display_brt_data_PARM_2:
	.ds 1
Ldisplay_brt_data$brt_baseaddr$1$1==.
_display_brt_data_brt_baseaddr_1_1:
	.ds 4
Ldisplay_brt_data$tx_sub_address$1$1==.
_display_brt_data_tx_sub_address_1_1:
	.ds 2
Ldisplay_brt_data$rx_sub_address$1$1==.
_display_brt_data_rx_sub_address_1_1:
	.ds 2
Ldisplay_brt_data$i$1$1==.
_display_brt_data_i_1_1:
	.ds 1
Ldisplay_brt_data$m$1$1==.
_display_brt_data_m_1_1:
	.ds 1
Lprocess_uart_data$key$1$1==.
_process_uart_data_key_1_1:
	.ds 1
Ldisplay_mem_data$mem_data$1$1==.
_display_mem_data_mem_data_1_1:
	.ds 2
Ldisplay_mem_data$tx_sub_address$1$1==.
_display_mem_data_tx_sub_address_1_1:
	.ds 2
Ldisplay_mem_data$rx_sub_address$1$1==.
_display_mem_data_rx_sub_address_1_1:
	.ds 2
Ldisplay_mem_data$i$1$1==.
_display_mem_data_i_1_1:
	.ds 1
Ldisplay_mem_data$m$1$1==.
_display_mem_data_m_1_1:
	.ds 1
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$user_input$0$0==.
_user_input::
	.ds 4
G$last_rt_subaddress$0$0==.
_last_rt_subaddress::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'display_help'
;------------------------------------------------------------
;tx_data                   Allocated with name '_display_help_tx_data_1_1'
;------------------------------------------------------------
	G$display_help$0$0 ==.
	C$cli.c$20$0$0 ==.
;	../cli.c:20: void display_help(void){
;	-----------------------------------------
;	 function display_help
;	-----------------------------------------
_display_help:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$cli.c$21$1$0 ==.
;	../cli.c:21: uint8_t tx_data[24][40] = {
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_display_help_tx_data_1_1
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0001)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0002)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0003)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0004)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0005)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0006)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0007)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0008)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0009)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x000a)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x000b)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x000c)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x000d)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x000f)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0011)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0012)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0013)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0014)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0015)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0016)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0017)
	mov	a,#0x09
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0018)
	mov	a,#0x09
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0019)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x001a)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x001b)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x001c)
	mov	a,#0x00
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0028)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0029)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x002a)
	mov	a,#0x4D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x002b)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x002c)
	mov	a,#0x4D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x002d)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x002e)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x002f)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0030)
	mov	a,#0x66
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0031)
	mov	a,#0x79
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0032)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0033)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0034)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0035)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0036)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0037)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0038)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0039)
	mov	a,#0x58
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x003a)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x003b)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x003c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x003d)
	mov	a,#0x66
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x003e)
	mov	a,#0x66
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x003f)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0040)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0041)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0042)
	mov	a,#0x09
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0043)
	mov	a,#0x09
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0044)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0045)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0046)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0047)
	mov	a,#0x00
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0050)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0051)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0052)
	mov	a,#0x44
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0053)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0054)
	mov	a,#0x44
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0055)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0056)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0057)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0058)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0059)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x005a)
	mov	a,#0x79
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x005b)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x005c)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x005d)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x005e)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x005f)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0060)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0061)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0062)
	mov	a,#0x58
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0063)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0064)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0065)
	mov	a,#0x58
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0066)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0067)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0068)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0069)
	mov	a,#0x66
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x006a)
	mov	a,#0x66
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x006b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x006c)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x006d)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x006e)
	mov	a,#0x44
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x006f)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0070)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0071)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0072)
	mov	a,#0x00
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0078)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0079)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x007a)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x007b)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x007c)
	mov	a,#0x44
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x007d)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x007e)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x007f)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0080)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0081)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0082)
	mov	a,#0x79
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0083)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0084)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0085)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0086)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0087)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0088)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0089)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x008a)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x008b)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x008c)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x008d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x008e)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x008f)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0090)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0091)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0092)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0093)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0094)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0095)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0096)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0097)
	mov	a,#0x00
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a0)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a1)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a2)
	mov	a,#0x58
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a3)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a4)
	mov	a,#0x53
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a5)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a6)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a7)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a8)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a9)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00aa)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ab)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ac)
	mov	a,#0x4D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ad)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ae)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00af)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b0)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b1)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b2)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b3)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b4)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b5)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b6)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b7)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b8)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b9)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ba)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00bb)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00bc)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00bd)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00be)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00bf)
	mov	a,#0x00
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00c8)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00c9)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ca)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00cb)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00cc)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00cd)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ce)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00cf)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d0)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d1)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d2)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d3)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d4)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d5)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d6)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d7)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d8)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d9)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00da)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00db)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00dc)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00dd)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00de)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00df)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e0)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e1)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e2)
	mov	a,#0x28
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e3)
	mov	a,#0x44
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e4)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e5)
	mov	a,#0x66
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e6)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e7)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e8)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e9)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ea)
	mov	a,#0x3A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00eb)
	mov	a,#0x30
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ec)
	mov	a,#0x78
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ed)
	mov	a,#0x34
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ee)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ef)
	mov	a,#0x00
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f0)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f1)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f2)
	mov	a,#0x4E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f3)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f4)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f5)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f6)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f7)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f8)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f9)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fa)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fb)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fc)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fd)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fe)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ff)
	mov	a,#0x42
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0100)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0101)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0102)
	mov	a,#0x44
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0103)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0104)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0105)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0106)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0107)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0108)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0109)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x010a)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x010b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x010c)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x010d)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x010e)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x010f)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0110)
	mov	a,#0x00
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0118)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0119)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x011a)
	mov	a,#0x48
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x011b)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x011c)
	mov	a,#0x44
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x011d)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x011e)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x011f)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0120)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0121)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0122)
	mov	a,#0x79
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0123)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0124)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0125)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0126)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0127)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0128)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0129)
	mov	a,#0x4D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x012a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x012b)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x012c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x012d)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x012e)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x012f)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0130)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0131)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0132)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0133)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0134)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0135)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0136)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_display_help_tx_data_1_1 + 0x0137)
	mov	a,#0x00
	movx	@dptr,a
	C$cli.c$33$1$1 ==.
;	../cli.c:33: UART_send(&g_stdio_uart, tx_data[0],sizeof(tx_data));
;	genCast
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_display_help_tx_data_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_display_help_tx_data_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,#0xC0
	movx	@dptr,a
	inc	dptr
	mov	a,#0x03
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_stdio_uart
	mov	dph,#(_g_stdio_uart >> 8)
	mov	b,#0x00
	lcall	_UART_send
00101$:
	C$cli.c$36$1$1 ==.
	XG$display_help$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_prompt'
;------------------------------------------------------------
;------------------------------------------------------------
	G$display_prompt$0$0 ==.
	C$cli.c$40$1$1 ==.
;	../cli.c:40: void display_prompt(void) {
;	-----------------------------------------
;	 function display_prompt
;	-----------------------------------------
_display_prompt:
	C$cli.c$42$1$1 ==.
;	../cli.c:42: dp_display_text("\r\nCore1553BRT>");
;	genCall
	mov	dpl,#__str_8
	mov	dph,#(__str_8 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
00101$:
	C$cli.c$45$1$1 ==.
	XG$display_prompt$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_key_selection'
;------------------------------------------------------------
;rx_data                   Allocated with name '_get_key_selection_rx_data_1_1'
;rx_size                   Allocated with name '_get_key_selection_rx_size_1_1'
;------------------------------------------------------------
	G$get_key_selection$0$0 ==.
	C$cli.c$49$1$1 ==.
;	../cli.c:49: uint8_t get_key_selection(void)
;	-----------------------------------------
;	 function get_key_selection
;	-----------------------------------------
_get_key_selection:
	C$cli.c$56$2$2 ==.
;	../cli.c:56: do {
00101$:
	C$cli.c$57$2$2 ==.
;	../cli.c:57: rx_size = UART_get_rx(&g_stdio_uart, &rx_data[1],1);
;	genCast
	mov	dptr,#_UART_get_rx_PARM_2
	mov	a,#(_get_key_selection_rx_data_1_1 + 0x0001)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_get_key_selection_rx_data_1_1 + 0x0001) >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_get_rx_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_stdio_uart
	mov	dph,#(_g_stdio_uart >> 8)
	mov	b,#0x00
	lcall	_UART_get_rx
	mov	r2,dpl
	mov	r3,dph
;	genCast
	C$cli.c$58$1$1 ==.
;	../cli.c:58: }while(rx_size == 0);
;	genIfx
	mov	a,r2
;	genIfxJump
	jnz	00108$
	ljmp	00101$
00108$:
	C$cli.c$60$1$1 ==.
;	../cli.c:60: key = rx_data[1];
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_get_key_selection_rx_data_1_1 + 0x0001)
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_key
	mov	a,r2
	movx	@dptr,a
	C$cli.c$62$1$1 ==.
;	../cli.c:62: UART_send (&g_stdio_uart, &key,sizeof (key));
;	genCast
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_key
	movx	@dptr,a
	inc	dptr
	mov	a,#(_key >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_stdio_uart
	mov	dph,#(_g_stdio_uart >> 8)
	mov	b,#0x00
	lcall	_UART_send
	C$cli.c$63$1$1 ==.
;	../cli.c:63: return rx_data[1];
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_get_key_selection_rx_data_1_1 + 0x0001)
	movx	a,@dptr
	mov	r2,a
;	genRet
	mov	dpl,r2
00104$:
	C$cli.c$65$1$1 ==.
	XG$get_key_selection$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_user_input'
;------------------------------------------------------------
;rx_char_ptr               Allocated with name '_read_user_input_rx_char_ptr_1_1'
;recv_char                 Allocated with name '_read_user_input_recv_char_1_1'
;size                      Allocated with name '_read_user_input_size_1_1'
;index                     Allocated with name '_read_user_input_index_1_1'
;------------------------------------------------------------
	G$read_user_input$0$0 ==.
	C$cli.c$72$1$1 ==.
;	../cli.c:72: void read_user_input (uint8_t *rx_char_ptr)
;	-----------------------------------------
;	 function read_user_input
;	-----------------------------------------
_read_user_input:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_read_user_input_rx_char_ptr_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$cli.c$74$1$1 ==.
;	../cli.c:74: uint8_t recv_char=0;
;	genAssign
	mov	dptr,#_read_user_input_recv_char_1_1
	mov	a,#0x00
	movx	@dptr,a
	C$cli.c$77$1$1 ==.
;	../cli.c:77: for(index = 0; index < 10; index++)
;	genAssign
	mov	dptr,#_read_user_input_index_1_1
	mov	a,#0x00
	movx	@dptr,a
00106$:
;	genAssign
	mov	dptr,#_read_user_input_index_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x0A,00117$
00117$:
;	genIfxJump
	jc	00118$
	ljmp	00109$
00118$:
	C$cli.c$79$2$2 ==.
;	../cli.c:79: rx_char[index] = '0';
;	genPlus
	mov	a,ar2
	add	a,#_rx_char
	mov	dpl,a
	mov	a,#0x00
	addc	a,#(_rx_char >> 8)
	mov	dph,a
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x30
	movx	@dptr,a
	C$cli.c$77$1$1 ==.
;	../cli.c:77: for(index = 0; index < 10; index++)
;	genPlus
	mov	dptr,#_read_user_input_index_1_1
;	genPlusIncr
	mov	a,r2
	inc	a
	movx	@dptr,a
	ljmp	00106$
00109$:
	C$cli.c$81$1$1 ==.
;	../cli.c:81: index = 0;
;	genAssign
	mov	dptr,#_read_user_input_index_1_1
	mov	a,#0x00
	movx	@dptr,a
	C$cli.c$82$3$4 ==.
;	../cli.c:82: while(recv_char != 13)  //'\n'
;	genAssign
	mov	dptr,#_read_user_input_rx_char_ptr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00103$:
;	genAssign
	mov	dptr,#_read_user_input_recv_char_1_1
	movx	a,@dptr
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x0D,00119$
	ljmp	00110$
00119$:
	C$cli.c$84$2$3 ==.
;	../cli.c:84: size = UART_get_rx(&g_stdio_uart, &recv_char,1);
;	genCast
	mov	dptr,#_UART_get_rx_PARM_2
	mov	a,#_read_user_input_recv_char_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_read_user_input_recv_char_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_get_rx_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_stdio_uart
	mov	dph,#(_g_stdio_uart >> 8)
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	lcall	_UART_get_rx
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	C$cli.c$85$2$3 ==.
;	../cli.c:85: if(size > 0)
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00120$
	ljmp	00103$
00120$:
	C$cli.c$88$3$4 ==.
;	../cli.c:88: rx_char_ptr[index] = recv_char;
;	genAssign
	mov	dptr,#_read_user_input_index_1_1
	movx	a,@dptr
	mov	r5,a
;	genPlus
	mov	a,ar5
	add	a,ar2
	mov	r6,a
	mov	a,#0x00
	addc	a,ar3
	mov	r7,a
	mov	ar0,r4
;	genAssign
	mov	dptr,#_read_user_input_recv_char_1_1
	movx	a,@dptr
	mov	r1,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	C$cli.c$89$3$4 ==.
;	../cli.c:89: UART_send (&g_stdio_uart, (uint8_t *)&recv_char,sizeof(recv_char));
;	genCast
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_read_user_input_recv_char_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_read_user_input_recv_char_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_stdio_uart
	mov	dph,#(_g_stdio_uart >> 8)
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_UART_send
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$90$3$4 ==.
;	../cli.c:90: index++;
;	genPlus
	mov	dptr,#_read_user_input_index_1_1
;	genPlusIncr
	mov	a,r5
	inc	a
	movx	@dptr,a
	C$cli.c$91$1$1 ==.
;	../cli.c:91: size = 0; // clear the rcvd flag
	ljmp	00103$
00110$:
	C$cli.c$95$1$1 ==.
	XG$read_user_input$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_brt_regs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_display_brt_regs_sloc0_1_0'
;mem_addr                  Allocated with name '_display_brt_regs_mem_addr_1_1'
;mem_data                  Allocated with name '_display_brt_regs_mem_data_1_1'
;i                         Allocated with name '_display_brt_regs_i_1_1'
;------------------------------------------------------------
	G$display_brt_regs$0$0 ==.
	C$cli.c$102$1$1 ==.
;	../cli.c:102: void display_brt_regs(void){
;	-----------------------------------------
;	 function display_brt_regs
;	-----------------------------------------
_display_brt_regs:
	C$cli.c$107$1$1 ==.
;	../cli.c:107: mem_addr  = ( APB3_BASE_ADDRESS + CORE1553BRT_0) + BRT_REG_OFFSET ;  // base address of BRT instance, 32location from here onwards
;	genAssign
	mov	dptr,#_display_brt_regs_mem_addr_1_1
	mov	a,#0xE0
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	C$cli.c$109$1$1 ==.
;	../cli.c:109: dp_display_text("\n\r BRT Register Contents\r\n ");
;	genCall
	mov	dpl,#__str_9
	mov	dph,#(__str_9 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$110$1$1 ==.
;	../cli.c:110: for ( i=0; i<= 32 ;i++) {
;	genAssign
	mov	dptr,#_display_brt_regs_i_1_1
	mov	a,#0x00
	movx	@dptr,a
00101$:
;	genAssign
	mov	dptr,#_display_brt_regs_i_1_1
	movx	a,@dptr
	mov	_display_brt_regs_sloc0_1_0,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x20
	subb	a,_display_brt_regs_sloc0_1_0
;	genIfxJump
	jnc	00109$
	ljmp	00105$
00109$:
	C$cli.c$111$2$2 ==.
;	../cli.c:111: dp_display_text("\r\n");
;	genCall
	mov	dpl,#__str_10
	mov	dph,#(__str_10 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$112$2$2 ==.
;	../cli.c:112: dp_display_value(i,DEC);
;	genCast
	mov	r3,_display_brt_regs_sloc0_1_0
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	_dp_display_value
	C$cli.c$113$2$2 ==.
;	../cli.c:113: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$114$2$2 ==.
;	../cli.c:114: dp_display_value(mem_addr,HEX);
;	genAssign
	mov	dptr,#_display_brt_regs_mem_addr_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_dp_display_value
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	C$cli.c$115$2$2 ==.
;	../cli.c:115: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_dp_display_text
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	C$cli.c$116$2$2 ==.
;	../cli.c:116: mem_data = HW_get_16bit_reg(mem_addr);
;	genCast
	mov	ar7,r3
	mov	ar0,r4
;	genCall
	mov	dpl,r7
	mov	dph,r0
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_HW_get_16bit_reg
	mov	r7,dpl
	mov	r0,dph
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
;	genCast
	mov	r1,#0x00
	mov	r2,#0x00
	C$cli.c$117$2$2 ==.
;	../cli.c:117: dp_display_value(mem_data,HEX);
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	mov	a,r2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_dp_display_value
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	C$cli.c$118$2$2 ==.
;	../cli.c:118: mem_addr = mem_addr++;
;	genAssign
	mov	dptr,#_display_brt_regs_mem_addr_1_1
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	C$cli.c$110$1$1 ==.
;	../cli.c:110: for ( i=0; i<= 32 ;i++) {
;	genPlus
	mov	dptr,#_display_brt_regs_i_1_1
;	genPlusIncr
	mov	a,_display_brt_regs_sloc0_1_0
	inc	a
	movx	@dptr,a
	ljmp	00101$
00105$:
	C$cli.c$120$1$1 ==.
	XG$display_brt_regs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_brt_data'
;------------------------------------------------------------
;subaddr                   Allocated with name '_display_brt_data_PARM_2'
;brt_baseaddr              Allocated with name '_display_brt_data_brt_baseaddr_1_1'
;mem_addr                  Allocated with name '_display_brt_data_mem_addr_1_1'
;mem_data                  Allocated with name '_display_brt_data_mem_data_1_1'
;tx_sub_address            Allocated with name '_display_brt_data_tx_sub_address_1_1'
;rx_sub_address            Allocated with name '_display_brt_data_rx_sub_address_1_1'
;i                         Allocated with name '_display_brt_data_i_1_1'
;m                         Allocated with name '_display_brt_data_m_1_1'
;------------------------------------------------------------
	G$display_brt_data$0$0 ==.
	C$cli.c$129$1$1 ==.
;	../cli.c:129: void display_brt_data(uint32_t brt_baseaddr,uint8_t subaddr){
;	-----------------------------------------
;	 function display_brt_data
;	-----------------------------------------
_display_brt_data:
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_display_brt_data_brt_baseaddr_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	C$cli.c$136$1$1 ==.
;	../cli.c:136: mem_addr  = (APB3_BASE_ADDRESS +  brt_baseaddr);  // 16 location from here onwards
;	genAssign
	mov	dptr,#_display_brt_data_brt_baseaddr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
;	genPlusIncr
;     genPlus shortcut
	mov	a,#0xF0
	add	a,ar3
	mov	r3,a
	mov	a,#0x00
	addc	a,ar4
	mov	r4,a
	mov	a,#0x00
	addc	a,ar5
	mov	r5,a
;	genCast
	C$cli.c$138$1$1 ==.
;	../cli.c:138: rx_sub_address = mem_addr + (BRT_RX_SA1 * subaddr);   //0x1080
;	genAssign
	mov	dptr,#_display_brt_data_PARM_2
	movx	a,@dptr
	mov	r4,a
;	genMult
;	genMultOneByte
	mov	a,r4
	mov	b,#0x20
	mul	ab
;	genPlus
	add	a,ar2
	mov	r2,a
	mov	a,ar3
	addc	a,b
	mov	r3,a
;	genAssign
	mov	dptr,#_display_brt_data_rx_sub_address_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$cli.c$139$1$1 ==.
;	../cli.c:139: tx_sub_address = rx_sub_address + BRT_RX_TX_ADDR_OFSET;
;	genPlus
	mov	dptr,#_display_brt_data_tx_sub_address_1_1
;	genPlusIncr
;     genPlus shortcut
	mov	a,r2
	movx	@dptr,a
	mov	a,#0x04
	add	a,ar3
	inc	dptr
	movx	@dptr,a
	C$cli.c$141$1$1 ==.
;	../cli.c:141: dp_display_text("\n\r BRT SA");
;	genCall
	mov	dpl,#__str_12
	mov	dph,#(__str_12 >> 8)
	mov	b,#0x80
	push	ar4
	lcall	_dp_display_text
	pop	ar4
	C$cli.c$142$1$1 ==.
;	../cli.c:142: dp_display_value(subaddr,DEC);
;	genCast
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r5,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_value
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$143$1$1 ==.
;	../cli.c:143: dp_display_text("   RX Buffer\r\n");
;	genCall
	mov	dpl,#__str_13
	mov	dph,#(__str_13 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_text
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$145$1$1 ==.
;	../cli.c:145: for ( i=1; i <= 4 ;i++) {
;	genAssign
	mov	dptr,#_display_brt_data_i_1_1
	mov	a,#0x01
	movx	@dptr,a
00104$:
;	genAssign
	mov	dptr,#_display_brt_data_i_1_1
	movx	a,@dptr
	mov	r6,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x04
	subb	a,r6
;	genIfxJump
	jnc	00125$
	ljmp	00107$
00125$:
	C$cli.c$146$2$2 ==.
;	../cli.c:146: dp_display_text("\r\n");
;	genCall
	mov	dpl,#__str_10
	mov	dph,#(__str_10 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_dp_display_text
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$147$2$2 ==.
;	../cli.c:147: dp_display_value(i,DEC);
;	genCast
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_value
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$148$2$2 ==.
;	../cli.c:148: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_text
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$149$2$2 ==.
;	../cli.c:149: dp_display_value(rx_sub_address ,HEX);// ( 8* i) for calculating current address of the total 32 location
;	genAssign
	mov	dptr,#_display_brt_data_rx_sub_address_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCast
	mov	r0,#0x00
	mov	r1,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_value
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$150$2$2 ==.
;	../cli.c:150: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_text
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$152$2$2 ==.
;	../cli.c:152: for (m=1; m <=8 ;m++){
;	genAssign
	mov	dptr,#_display_brt_data_m_1_1
	mov	a,#0x08
	movx	@dptr,a
00103$:
	C$cli.c$154$1$1 ==.
;	../cli.c:154: mem_data= HW_get_16bit_reg(rx_sub_address);
;	genIpush
	push	ar4
	push	ar2
	push	ar3
	push	ar5
;	genAssign
	mov	dptr,#_display_brt_data_rx_sub_address_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_HW_get_16bit_reg
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$155$3$3 ==.
;	../cli.c:155: dp_display_value(mem_data,HEX);
;	genCast
	mov	r2,#0x00
	mov	r3,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_dp_display_value
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$156$3$3 ==.
;	../cli.c:156: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_dp_display_text
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$157$3$3 ==.
;	../cli.c:157: rx_sub_address = rx_sub_address + 1;
;	genPlus
	mov	dptr,#_display_brt_data_rx_sub_address_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar6
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar7
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_display_brt_data_m_1_1
	movx	a,@dptr
	mov	r2,a
;	genMinus
;	genMinusDec
	mov	a,r2
	dec	a
;	genAssign
	mov	dptr,#_display_brt_data_m_1_1
	movx	@dptr,a
	C$cli.c$152$3$3 ==.
;	../cli.c:152: for (m=1; m <=8 ;m++){
;	genAssign
	mov	dptr,#_display_brt_data_m_1_1
	movx	a,@dptr
	mov	r2,a
;	genIfx
	mov	a,r2
;	genIpop
	pop	ar5
	pop	ar3
	pop	ar2
	pop	ar4
;	genIfxJump
	jz	00126$
	ljmp	00103$
00126$:
	C$cli.c$145$1$1 ==.
;	../cli.c:145: for ( i=1; i <= 4 ;i++) {
;	genAssign
	mov	dptr,#_display_brt_data_i_1_1
	movx	a,@dptr
	mov	r6,a
;	genPlus
	mov	dptr,#_display_brt_data_i_1_1
;	genPlusIncr
	mov	a,r6
	inc	a
	movx	@dptr,a
	ljmp	00104$
00107$:
	C$cli.c$163$1$1 ==.
;	../cli.c:163: dp_display_text("\n\r BRT SA");
;	genCall
	mov	dpl,#__str_12
	mov	dph,#(__str_12 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_text
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$164$1$1 ==.
;	../cli.c:164: dp_display_value(subaddr,DEC);
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r2
	mov	b,r3
	mov	a,r5
	lcall	_dp_display_value
	C$cli.c$165$1$1 ==.
;	../cli.c:165: dp_display_text("  TX Buffer\r\n");
;	genCall
	mov	dpl,#__str_14
	mov	dph,#(__str_14 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$167$1$1 ==.
;	../cli.c:167: for ( i=1; i <= 4 ;i++) {
;	genAssign
	mov	dptr,#_display_brt_data_i_1_1
	mov	a,#0x01
	movx	@dptr,a
00111$:
;	genAssign
	mov	dptr,#_display_brt_data_i_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x04
	subb	a,r2
;	genIfxJump
	jnc	00127$
	ljmp	00115$
00127$:
	C$cli.c$168$2$4 ==.
;	../cli.c:168: dp_display_text("\r\n");
;	genCall
	mov	dpl,#__str_10
	mov	dph,#(__str_10 >> 8)
	mov	b,#0x80
	push	ar2
	lcall	_dp_display_text
	pop	ar2
	C$cli.c$169$2$4 ==.
;	../cli.c:169: dp_display_value(i,DEC);
;	genCast
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_dp_display_value
	C$cli.c$170$2$4 ==.
;	../cli.c:170: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$171$2$4 ==.
;	../cli.c:171: dp_display_value(tx_sub_address,HEX);
;	genAssign
	mov	dptr,#_display_brt_data_tx_sub_address_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_dp_display_value
	C$cli.c$172$2$4 ==.
;	../cli.c:172: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$174$2$4 ==.
;	../cli.c:174: for (m=1; m <=8 ;m++){
;	genAssign
	mov	dptr,#_display_brt_data_m_1_1
	mov	a,#0x08
	movx	@dptr,a
00110$:
	C$cli.c$176$3$5 ==.
;	../cli.c:176: mem_data= HW_get_16bit_reg(tx_sub_address);
;	genAssign
	mov	dptr,#_display_brt_data_tx_sub_address_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_HW_get_16bit_reg
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
	C$cli.c$177$3$5 ==.
;	../cli.c:177: dp_display_value(mem_data,HEX);
;	genCast
	mov	r6,#0x00
	mov	r7,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	lcall	_dp_display_value
	pop	ar3
	pop	ar2
	C$cli.c$178$3$5 ==.
;	../cli.c:178: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_dp_display_text
	pop	ar3
	pop	ar2
	C$cli.c$179$3$5 ==.
;	../cli.c:179: tx_sub_address = tx_sub_address + 1;
;	genPlus
	mov	dptr,#_display_brt_data_tx_sub_address_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_display_brt_data_m_1_1
	movx	a,@dptr
	mov	r2,a
;	genMinus
;	genMinusDec
	mov	a,r2
	dec	a
;	genAssign
	mov	dptr,#_display_brt_data_m_1_1
	movx	@dptr,a
	C$cli.c$174$3$5 ==.
;	../cli.c:174: for (m=1; m <=8 ;m++){
;	genAssign
	mov	dptr,#_display_brt_data_m_1_1
	movx	a,@dptr
	mov	r2,a
;	genIfx
	mov	a,r2
;	genIfxJump
	jz	00128$
	ljmp	00110$
00128$:
	C$cli.c$167$1$1 ==.
;	../cli.c:167: for ( i=1; i <= 4 ;i++) {
;	genAssign
	mov	dptr,#_display_brt_data_i_1_1
	movx	a,@dptr
	mov	r2,a
;	genPlus
	mov	dptr,#_display_brt_data_i_1_1
;	genPlusIncr
	mov	a,r2
	inc	a
	movx	@dptr,a
	ljmp	00111$
00115$:
	C$cli.c$184$1$1 ==.
	XG$display_brt_data$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'process_uart_data'
;------------------------------------------------------------
;key                       Allocated with name '_process_uart_data_key_1_1'
;------------------------------------------------------------
	G$process_uart_data$0$0 ==.
	C$cli.c$192$1$1 ==.
;	../cli.c:192: void process_uart_data(uint8_t key)
;	-----------------------------------------
;	 function process_uart_data
;	-----------------------------------------
_process_uart_data:
;	genReceive
	mov	a,dpl
	mov	dptr,#_process_uart_data_key_1_1
	movx	@dptr,a
	C$cli.c$194$1$1 ==.
;	../cli.c:194: switch(key)
;	genAssign
	mov	dptr,#_process_uart_data_key_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x44,00116$
	ljmp	00106$
00116$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x48,00117$
	ljmp	00104$
00117$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x52,00118$
	ljmp	00102$
00118$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x64,00119$
	ljmp	00106$
00119$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x68,00120$
	ljmp	00104$
00120$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x72,00121$
	sjmp	00122$
00121$:
	ljmp	00108$
00122$:
	C$cli.c$197$2$2 ==.
;	../cli.c:197: case 'R' : case 'r':
00102$:
	C$cli.c$200$3$3 ==.
;	../cli.c:200: display_brt_regs();
;	genCall
	lcall	_display_brt_regs
	C$cli.c$204$3$3 ==.
;	../cli.c:204: break;
	ljmp	00108$
	C$cli.c$209$2$2 ==.
;	../cli.c:209: case 'H': case 'h':
00104$:
	C$cli.c$212$3$4 ==.
;	../cli.c:212: display_help();
;	genCall
	lcall	_display_help
	C$cli.c$213$3$4 ==.
;	../cli.c:213: break;
	ljmp	00108$
	C$cli.c$216$2$2 ==.
;	../cli.c:216: case 'D': case 'd':
00106$:
	C$cli.c$242$3$5 ==.
;	../cli.c:242: display_brt_data(CORE1553BRT_0 ,1);
;	genAssign
	mov	dptr,#_display_brt_data_PARM_2
	mov	a,#0x01
	movx	@dptr,a
;	genCall
	mov	dpl,#0x00
	mov	dph,#0x08
	mov	b,#0x00
	mov	a,#0x00
	lcall	_display_brt_data
	C$cli.c$243$3$5 ==.
;	../cli.c:243: display_mem_data();
;	genCall
	lcall	_display_mem_data
	C$cli.c$253$1$1 ==.
;	../cli.c:253: }
00108$:
	C$cli.c$256$1$1 ==.
;	../cli.c:256: display_prompt();
;	genCall
	lcall	_display_prompt
00109$:
	C$cli.c$258$1$1 ==.
	XG$process_uart_data$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_mem_data'
;------------------------------------------------------------
;mem_addr                  Allocated with name '_display_mem_data_mem_addr_1_1'
;mem_data                  Allocated with name '_display_mem_data_mem_data_1_1'
;tx_sub_address            Allocated with name '_display_mem_data_tx_sub_address_1_1'
;rx_sub_address            Allocated with name '_display_mem_data_rx_sub_address_1_1'
;i                         Allocated with name '_display_mem_data_i_1_1'
;m                         Allocated with name '_display_mem_data_m_1_1'
;------------------------------------------------------------
	G$display_mem_data$0$0 ==.
	C$cli.c$263$1$1 ==.
;	../cli.c:263: void display_mem_data(void){
;	-----------------------------------------
;	 function display_mem_data
;	-----------------------------------------
_display_mem_data:
	C$cli.c$273$1$1 ==.
;	../cli.c:273: rx_sub_address = mem_addr;   //0x1080
;	genAssign
	mov	dptr,#_display_mem_data_rx_sub_address_1_1
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF5
	movx	@dptr,a
	C$cli.c$274$1$1 ==.
;	../cli.c:274: tx_sub_address = mem_addr;
;	genAssign
	mov	dptr,#_display_mem_data_tx_sub_address_1_1
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF5
	movx	@dptr,a
	C$cli.c$275$1$1 ==.
;	../cli.c:275: mem_data   = 0x0000;
;	genAssign
	mov	dptr,#_display_mem_data_mem_data_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$cli.c$277$1$1 ==.
;	../cli.c:277: dp_display_text("\n\r MEMORY FiLLING WIETH FOLLOWING DATA ");
;	genCall
	mov	dpl,#__str_15
	mov	dph,#(__str_15 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$281$1$1 ==.
;	../cli.c:281: for ( i=0; i <= 3 ;i++) {
;	genAssign
	mov	dptr,#_display_mem_data_i_1_1
	mov	a,#0x00
	movx	@dptr,a
00104$:
;	genAssign
	mov	dptr,#_display_mem_data_i_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x03
	subb	a,r2
;	genIfxJump
	jnc	00125$
	ljmp	00107$
00125$:
	C$cli.c$282$2$2 ==.
;	../cli.c:282: dp_display_text("\r\n");
;	genCall
	mov	dpl,#__str_10
	mov	dph,#(__str_10 >> 8)
	mov	b,#0x80
	push	ar2
	lcall	_dp_display_text
	pop	ar2
	C$cli.c$283$2$2 ==.
;	../cli.c:283: dp_display_value(i,DEC);
;	genCast
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_dp_display_value
	C$cli.c$284$2$2 ==.
;	../cli.c:284: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$285$2$2 ==.
;	../cli.c:285: dp_display_value(rx_sub_address,HEX);// ( 8* i) for calculating current address of the total 32 location
;	genAssign
	mov	dptr,#_display_mem_data_rx_sub_address_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_dp_display_value
	C$cli.c$286$2$2 ==.
;	../cli.c:286: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$288$2$2 ==.
;	../cli.c:288: for (m=1; m <=8 ;m++){
;	genAssign
	mov	dptr,#_display_mem_data_m_1_1
	mov	a,#0x08
	movx	@dptr,a
00103$:
	C$cli.c$290$3$3 ==.
;	../cli.c:290: HW_set_16bit_reg(rx_sub_address,mem_data);
;	genAssign
	mov	dptr,#_display_mem_data_rx_sub_address_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_display_mem_data_mem_data_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_HW_set_16bit_reg
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$291$3$3 ==.
;	../cli.c:291: dp_display_value(mem_data,HEX);
;	genCast
	mov	ar6,r4
	mov	ar7,r5
	mov	r0,#0x00
	mov	r1,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_value
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$292$3$3 ==.
;	../cli.c:292: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_dp_display_text
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$cli.c$293$3$3 ==.
;	../cli.c:293: rx_sub_address = rx_sub_address + 1;
;	genPlus
	mov	dptr,#_display_mem_data_rx_sub_address_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
	C$cli.c$294$3$3 ==.
;	../cli.c:294: mem_data = mem_data + 4;
;	genPlus
	mov	dptr,#_display_mem_data_mem_data_1_1
;	genPlusIncr
	mov	a,#0x04
	add	a,ar4
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar5
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_display_mem_data_m_1_1
	movx	a,@dptr
	mov	r2,a
;	genMinus
;	genMinusDec
	mov	a,r2
	dec	a
;	genAssign
	mov	dptr,#_display_mem_data_m_1_1
	movx	@dptr,a
	C$cli.c$288$3$3 ==.
;	../cli.c:288: for (m=1; m <=8 ;m++){
;	genAssign
	mov	dptr,#_display_mem_data_m_1_1
	movx	a,@dptr
	mov	r2,a
;	genIfx
	mov	a,r2
;	genIfxJump
	jz	00126$
	ljmp	00103$
00126$:
	C$cli.c$281$1$1 ==.
;	../cli.c:281: for ( i=0; i <= 3 ;i++) {
;	genAssign
	mov	dptr,#_display_mem_data_i_1_1
	movx	a,@dptr
	mov	r2,a
;	genPlus
	mov	dptr,#_display_mem_data_i_1_1
;	genPlusIncr
	mov	a,r2
	inc	a
	movx	@dptr,a
	ljmp	00104$
00107$:
	C$cli.c$300$1$1 ==.
;	../cli.c:300: dp_display_text("\n\r Reading back the data from the same location");
;	genCall
	mov	dpl,#__str_16
	mov	dph,#(__str_16 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$304$1$1 ==.
;	../cli.c:304: for ( i=0; i <= 3 ;i++) {
;	genAssign
	mov	dptr,#_display_mem_data_i_1_1
	mov	a,#0x00
	movx	@dptr,a
00111$:
;	genAssign
	mov	dptr,#_display_mem_data_i_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x03
	subb	a,r2
;	genIfxJump
	jnc	00127$
	ljmp	00115$
00127$:
	C$cli.c$305$2$4 ==.
;	../cli.c:305: dp_display_text("\r\n");
;	genCall
	mov	dpl,#__str_10
	mov	dph,#(__str_10 >> 8)
	mov	b,#0x80
	push	ar2
	lcall	_dp_display_text
	pop	ar2
	C$cli.c$306$2$4 ==.
;	../cli.c:306: dp_display_value(i,DEC);
;	genCast
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_dp_display_value
	C$cli.c$307$2$4 ==.
;	../cli.c:307: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$308$2$4 ==.
;	../cli.c:308: dp_display_value(tx_sub_address,HEX);
;	genAssign
	mov	dptr,#_display_mem_data_tx_sub_address_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_dp_display_value
	C$cli.c$309$2$4 ==.
;	../cli.c:309: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	lcall	_dp_display_text
	C$cli.c$311$2$4 ==.
;	../cli.c:311: for (m=1; m <=8 ;m++){
;	genAssign
	mov	dptr,#_display_mem_data_m_1_1
	mov	a,#0x08
	movx	@dptr,a
00110$:
	C$cli.c$313$3$5 ==.
;	../cli.c:313: mem_data= HW_get_16bit_reg(tx_sub_address);
;	genAssign
	mov	dptr,#_display_mem_data_tx_sub_address_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_HW_get_16bit_reg
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
	C$cli.c$314$3$5 ==.
;	../cli.c:314: dp_display_value(mem_data,HEX);
;	genCast
	mov	r6,#0x00
	mov	r7,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	lcall	_dp_display_value
	pop	ar3
	pop	ar2
	C$cli.c$315$3$5 ==.
;	../cli.c:315: dp_display_text("\t");
;	genCall
	mov	dpl,#__str_11
	mov	dph,#(__str_11 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_dp_display_text
	pop	ar3
	pop	ar2
	C$cli.c$316$3$5 ==.
;	../cli.c:316: tx_sub_address = tx_sub_address + 1;
;	genPlus
	mov	dptr,#_display_mem_data_tx_sub_address_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_display_mem_data_m_1_1
	movx	a,@dptr
	mov	r2,a
;	genMinus
;	genMinusDec
	mov	a,r2
	dec	a
;	genAssign
	mov	dptr,#_display_mem_data_m_1_1
	movx	@dptr,a
	C$cli.c$311$3$5 ==.
;	../cli.c:311: for (m=1; m <=8 ;m++){
;	genAssign
	mov	dptr,#_display_mem_data_m_1_1
	movx	a,@dptr
	mov	r2,a
;	genIfx
	mov	a,r2
;	genIfxJump
	jz	00128$
	ljmp	00110$
00128$:
	C$cli.c$304$1$1 ==.
;	../cli.c:304: for ( i=0; i <= 3 ;i++) {
;	genAssign
	mov	dptr,#_display_mem_data_i_1_1
	movx	a,@dptr
	mov	r2,a
;	genPlus
	mov	dptr,#_display_mem_data_i_1_1
;	genPlusIncr
	mov	a,r2
	inc	a
	movx	@dptr,a
	ljmp	00111$
00115$:
	C$cli.c$321$1$1 ==.
	XG$display_mem_data$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
F___cli$_str_8$0$0 == .
__str_8:
	.db 0x0D
	.db 0x0A
	.ascii "Core1553BRT>"
	.db 0x00
F___cli$_str_9$0$0 == .
__str_9:
	.db 0x0A
	.db 0x0D
	.ascii " BRT Register Contents"
	.db 0x0D
	.db 0x0A
	.ascii " "
	.db 0x00
F___cli$_str_10$0$0 == .
__str_10:
	.db 0x0D
	.db 0x0A
	.db 0x00
F___cli$_str_11$0$0 == .
__str_11:
	.db 0x09
	.db 0x00
F___cli$_str_12$0$0 == .
__str_12:
	.db 0x0A
	.db 0x0D
	.ascii " BRT SA"
	.db 0x00
F___cli$_str_13$0$0 == .
__str_13:
	.ascii "   RX Buffer"
	.db 0x0D
	.db 0x0A
	.db 0x00
F___cli$_str_14$0$0 == .
__str_14:
	.ascii "  TX Buffer"
	.db 0x0D
	.db 0x0A
	.db 0x00
F___cli$_str_15$0$0 == .
__str_15:
	.db 0x0A
	.db 0x0D
	.ascii " MEMORY FiLLING WIETH FOLLOWING DATA "
	.db 0x00
F___cli$_str_16$0$0 == .
__str_16:
	.db 0x0A
	.db 0x0D
	.ascii " Reading back the data from the same location"
	.db 0x00
	.area XINIT   (CODE)
F___cli$__xinit_user_input$0$0 == .
__xinit__user_input:
	.byte #0x00,#0x00,#0x00,#0x00
F___cli$__xinit_last_rt_subaddress$0$0 == .
__xinit__last_rt_subaddress:
	.db #0x20
	.area CABS    (ABS,CODE)
