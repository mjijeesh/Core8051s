;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:51:57 2016
;--------------------------------------------------------
	.module ___drivers_CoreUARTapb_core_uart_apb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART_polled_tx_string_PARM_2
	.globl _UART_get_rx_PARM_3
	.globl _UART_get_rx_PARM_2
	.globl _UART_fill_tx_fifo_PARM_3
	.globl _UART_fill_tx_fifo_PARM_2
	.globl _UART_send_PARM_3
	.globl _UART_send_PARM_2
	.globl _UART_init_PARM_4
	.globl _UART_init_PARM_3
	.globl _UART_init_PARM_2
	.globl _UART_init
	.globl _UART_send
	.globl _UART_fill_tx_fifo
	.globl _UART_get_rx
	.globl _UART_polled_tx_string
	.globl _UART_get_rx_status
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
LUART_init$sloc0$1$0==.
_UART_init_sloc0_1_0:
	.ds 1
LUART_init$sloc1$1$0==.
_UART_init_sloc1_1_0:
	.ds 2
LUART_init$sloc2$1$0==.
_UART_init_sloc2_1_0:
	.ds 2
LUART_init$sloc3$1$0==.
_UART_init_sloc3_1_0:
	.ds 2
LUART_send$sloc0$1$0==.
_UART_send_sloc0_1_0:
	.ds 3
LUART_send$sloc1$1$0==.
_UART_send_sloc1_1_0:
	.ds 3
LUART_fill_tx_fifo$sloc0$1$0==.
_UART_fill_tx_fifo_sloc0_1_0:
	.ds 3
LUART_fill_tx_fifo$sloc1$1$0==.
_UART_fill_tx_fifo_sloc1_1_0:
	.ds 3
LUART_get_rx$sloc0$1$0==.
_UART_get_rx_sloc0_1_0:
	.ds 3
LUART_get_rx$sloc1$1$0==.
_UART_get_rx_sloc1_1_0:
	.ds 3
LUART_polled_tx_string$sloc0$1$0==.
_UART_polled_tx_string_sloc0_1_0:
	.ds 2
LUART_polled_tx_string$sloc1$1$0==.
_UART_polled_tx_string_sloc1_1_0:
	.ds 4
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
LUART_init$base_addr$1$1==.
_UART_init_PARM_2:
	.ds 2
LUART_init$baud_value$1$1==.
_UART_init_PARM_3:
	.ds 2
LUART_init$line_config$1$1==.
_UART_init_PARM_4:
	.ds 1
LUART_init$this_uart$1$1==.
_UART_init_this_uart_1_1:
	.ds 3
LUART_init$rx_full$1$1==.
_UART_init_rx_full_1_1:
	.ds 1
LUART_init$file_name$3$3==.
_UART_init_file_name_3_3:
	.ds 39
LUART_init$file_name$3$5==.
_UART_init_file_name_3_5:
	.ds 39
LUART_init$file_name$3$7==.
_UART_init_file_name_3_7:
	.ds 39
LUART_init$file_name$5$11==.
_UART_init_file_name_5_11:
	.ds 39
LUART_init$file_name$5$13==.
_UART_init_file_name_5_13:
	.ds 39
LUART_init$rx_byte$3$14==.
_UART_init_rx_byte_3_14:
	.ds 1
LUART_send$tx_buffer$1$1==.
_UART_send_PARM_2:
	.ds 3
LUART_send$tx_size$1$1==.
_UART_send_PARM_3:
	.ds 2
LUART_send$this_uart$1$1==.
_UART_send_this_uart_1_1:
	.ds 3
LUART_send$char_idx$1$1==.
_UART_send_char_idx_1_1:
	.ds 2
LUART_send$file_name$3$3==.
_UART_send_file_name_3_3:
	.ds 39
LUART_send$file_name$3$5==.
_UART_send_file_name_3_5:
	.ds 39
LUART_send$file_name$3$7==.
_UART_send_file_name_3_7:
	.ds 39
LUART_fill_tx_fifo$tx_buffer$1$1==.
_UART_fill_tx_fifo_PARM_2:
	.ds 3
LUART_fill_tx_fifo$tx_size$1$1==.
_UART_fill_tx_fifo_PARM_3:
	.ds 2
LUART_fill_tx_fifo$this_uart$1$1==.
_UART_fill_tx_fifo_this_uart_1_1:
	.ds 3
LUART_fill_tx_fifo$size_sent$1$1==.
_UART_fill_tx_fifo_size_sent_1_1:
	.ds 2
LUART_fill_tx_fifo$file_name$3$3==.
_UART_fill_tx_fifo_file_name_3_3:
	.ds 39
LUART_fill_tx_fifo$file_name$3$5==.
_UART_fill_tx_fifo_file_name_3_5:
	.ds 39
LUART_fill_tx_fifo$file_name$3$7==.
_UART_fill_tx_fifo_file_name_3_7:
	.ds 39
LUART_get_rx$rx_buffer$1$1==.
_UART_get_rx_PARM_2:
	.ds 3
LUART_get_rx$buff_size$1$1==.
_UART_get_rx_PARM_3:
	.ds 2
LUART_get_rx$this_uart$1$1==.
_UART_get_rx_this_uart_1_1:
	.ds 3
LUART_get_rx$rx_full$1$1==.
_UART_get_rx_rx_full_1_1:
	.ds 1
LUART_get_rx$rx_idx$1$1==.
_UART_get_rx_rx_idx_1_1:
	.ds 2
LUART_get_rx$file_name$3$3==.
_UART_get_rx_file_name_3_3:
	.ds 39
LUART_get_rx$file_name$3$5==.
_UART_get_rx_file_name_3_5:
	.ds 39
LUART_get_rx$file_name$3$7==.
_UART_get_rx_file_name_3_7:
	.ds 39
LUART_polled_tx_string$p_sz_string$1$1==.
_UART_polled_tx_string_PARM_2:
	.ds 3
LUART_polled_tx_string$this_uart$1$1==.
_UART_polled_tx_string_this_uart_1_1:
	.ds 3
LUART_polled_tx_string$char_idx$1$1==.
_UART_polled_tx_string_char_idx_1_1:
	.ds 4
LUART_polled_tx_string$file_name$3$3==.
_UART_polled_tx_string_file_name_3_3:
	.ds 39
LUART_polled_tx_string$file_name$3$5==.
_UART_polled_tx_string_file_name_3_5:
	.ds 39
LUART_get_rx_status$this_uart$1$1==.
_UART_get_rx_status_this_uart_1_1:
	.ds 3
LUART_get_rx_status$status$1$1==.
_UART_get_rx_status_status_1_1:
	.ds 1
LUART_get_rx_status$file_name$3$3==.
_UART_get_rx_status_file_name_3_3:
	.ds 39
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'UART_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_UART_init_sloc0_1_0'
;sloc1                     Allocated with name '_UART_init_sloc1_1_0'
;sloc2                     Allocated with name '_UART_init_sloc2_1_0'
;sloc3                     Allocated with name '_UART_init_sloc3_1_0'
;base_addr                 Allocated with name '_UART_init_PARM_2'
;baud_value                Allocated with name '_UART_init_PARM_3'
;line_config               Allocated with name '_UART_init_PARM_4'
;this_uart                 Allocated with name '_UART_init_this_uart_1_1'
;rx_full                   Allocated with name '_UART_init_rx_full_1_1'
;file_name                 Allocated with name '_UART_init_file_name_3_3'
;file_name                 Allocated with name '_UART_init_file_name_3_5'
;file_name                 Allocated with name '_UART_init_file_name_3_7'
;config                    Allocated with name '_UART_init_config_3_9'
;temp                      Allocated with name '_UART_init_temp_3_9'
;baud_val                  Allocated with name '_UART_init_baud_val_3_9'
;file_name                 Allocated with name '_UART_init_file_name_5_11'
;file_name                 Allocated with name '_UART_init_file_name_5_13'
;rx_byte                   Allocated with name '_UART_init_rx_byte_3_14'
;------------------------------------------------------------
	G$UART_init$0$0 ==.
	C$core_uart_apb.c$38$0$0 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:38: UART_init
;	-----------------------------------------
;	 function UART_init
;	-----------------------------------------
_UART_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_UART_init_this_uart_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_uart_apb.c$48$2$2 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:48: HAL_ASSERT( this_uart != NULL_INSTANCE )
;	genAssign
	mov	dptr,#_UART_init_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00145$
	cjne	r3,#0x00,00145$
	cjne	r4,#0x00,00145$
	sjmp	00146$
00145$:
	ljmp	00104$
00146$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_init_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_3 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x30
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_init_file_name_3_3
	mov	dph,#(_UART_init_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_uart_apb.c$49$2$4 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:49: HAL_ASSERT( line_config <= MAX_LINE_CONFIG )
;	genAssign
	mov	dptr,#_UART_init_PARM_4
	movx	a,@dptr
	mov	_UART_init_sloc0_1_0,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x07
	subb	a,_UART_init_sloc0_1_0
	clr	a
	rlc	a
	mov	r3,a
;	genIfx
	mov	a,r3
;	genIfxJump
	jnz	00147$
	ljmp	00109$
00147$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_init_file_name_3_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_5 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x31
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_init_file_name_3_5
	mov	dph,#(_UART_init_file_name_3_5 >> 8)
	mov	b,#0x00
	push	ar3
	lcall	_HAL_assert_fail
	pop	ar3
00109$:
	C$core_uart_apb.c$50$2$6 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:50: HAL_ASSERT( baud_value <= MAX_BAUD_VALUE )
;	genAssign
	mov	dptr,#_UART_init_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xFF
	subb	a,r4
	mov	a,#0x1F
	subb	a,r5
	clr	a
	rlc	a
	mov	r6,a
;	genIfx
	mov	a,r6
;	genIfxJump
	jnz	00148$
	ljmp	00114$
00148$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_init_file_name_3_7
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_3_7 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x32
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_init_file_name_3_7
	mov	dph,#(_UART_init_file_name_3_7 >> 8)
	mov	b,#0x00
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_HAL_assert_fail
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
00114$:
	C$core_uart_apb.c$52$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:52: if( ( this_uart != NULL_INSTANCE ) &&
;	genAssign
	mov	dptr,#_UART_init_this_uart_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genCmpEq
;	gencjneshort
	cjne	r7,#0x00,00149$
	cjne	r0,#0x00,00149$
	cjne	r1,#0x00,00149$
	ljmp	00133$
00149$:
	C$core_uart_apb.c$53$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:53: ( line_config <= MAX_LINE_CONFIG ) &&
;	genIfx
	mov	a,r3
;	genIfxJump
	jz	00150$
	ljmp	00133$
00150$:
	C$core_uart_apb.c$54$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:54: ( baud_value <= MAX_BAUD_VALUE ) )
;	genIfx
	mov	a,r6
;	genIfxJump
	jz	00151$
	ljmp	00133$
00151$:
	C$core_uart_apb.c$59$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:59: HAL_set_8bit_reg( base_addr, CTRL1, (uint_fast8_t)(baud_value &
;	genAssign
	mov	dptr,#_UART_init_PARM_2
	movx	a,@dptr
	mov	_UART_init_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_init_sloc1_1_0 + 1),a
;	genPlus
;	genPlusIncr
	mov	a,#0x08
	add	a,_UART_init_sloc1_1_0
	mov	_UART_init_sloc2_1_0,a
	mov	a,#0x00
	addc	a,(_UART_init_sloc1_1_0 + 1)
	mov	(_UART_init_sloc2_1_0 + 1),a
;	genAnd
	mov	ar6,r4
	mov	r2,#0x00
;	genCast
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r6
	movx	@dptr,a
;	genCall
	mov	dpl,_UART_init_sloc2_1_0
	mov	dph,(_UART_init_sloc2_1_0 + 1)
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_set_8bit_reg
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	C$core_uart_apb.c$66$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:66: HAL_set_8bit_reg( base_addr, CTRL2, (uint_fast8_t)line_config | 
;	genPlus
;	genPlusIncr
	mov	a,#0x0C
	add	a,_UART_init_sloc1_1_0
	mov	_UART_init_sloc3_1_0,a
	mov	a,#0x00
	addc	a,(_UART_init_sloc1_1_0 + 1)
	mov	(_UART_init_sloc3_1_0 + 1),a
;	genAnd
	mov	r6,#0x00
	mov	ar2,r5
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	a,r2
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r2,a
;	genCast
;	genOr
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r6
	orl	a,_UART_init_sloc0_1_0
	movx	@dptr,a
;	genCall
	mov	dpl,_UART_init_sloc3_1_0
	mov	dph,(_UART_init_sloc3_1_0 + 1)
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_set_8bit_reg
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	C$core_uart_apb.c$70$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:70: this_uart->base_address = base_addr;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	mov	a,_UART_init_sloc1_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_UART_init_sloc1_1_0 + 1)
	lcall	__gptrput
	C$core_uart_apb.c$76$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:76: baud_val = HAL_get_8bit_reg( this_uart->base_address, CTRL1 );
;	genCall
	mov	dpl,_UART_init_sloc2_1_0
	mov	dph,(_UART_init_sloc2_1_0 + 1)
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_get_8bit_reg
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
;	genCast
	mov	r3,#0x00
	C$core_uart_apb.c$77$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:77: config =  HAL_get_8bit_reg( this_uart->base_address, CTRL2 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
;	genPlus
;	genPlusIncr
	mov	a,#0x0C
	add	a,ar7
	mov	r7,a
	mov	a,#0x00
	addc	a,ar0
	mov	r0,a
;	genCall
	mov	dpl,r7
	mov	dph,r0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_HW_get_8bit_reg
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_uart_apb.c$81$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:81: temp =  ( config  &  (uint8_t)(CTRL2_BAUDVALUE_MASK ) );
;	genAnd
	mov	a,#0xF8
	anl	a,r6
	mov	r7,a
	C$core_uart_apb.c$82$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:82: baud_val |= (uint16_t)( (uint16_t)(temp) << BAUDVALUE_SHIFT );
;	genCast
	mov	r0,#0x00
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	a,r0
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r7
	swap	a
	rl	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xe0
	xch	a,r7
	xrl	a,r7
	mov	r0,a
;	genOr
	mov	a,r7
	orl	ar2,a
	mov	a,r0
	orl	ar3,a
	C$core_uart_apb.c$83$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:83: config &= (uint8_t)(~CTRL2_BAUDVALUE_MASK);
;	genAnd
	anl	ar6,#0x07
	C$core_uart_apb.c$84$4$10 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:84: HAL_ASSERT( baud_val == baud_value );
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar4,00152$
	mov	a,r3
	cjne	a,ar5,00152$
	ljmp	00119$
00152$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_init_file_name_5_11
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_11 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x54
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_init_file_name_5_11
	mov	dph,#(_UART_init_file_name_5_11 >> 8)
	mov	b,#0x00
	push	ar6
	lcall	_HAL_assert_fail
	pop	ar6
00119$:
	C$core_uart_apb.c$85$4$12 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:85: HAL_ASSERT( config == line_config );
;	genCmpEq
;	gencjneshort
	mov	a,r6
	cjne	a,_UART_init_sloc0_1_0,00153$
	ljmp	00124$
00153$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_init_file_name_5_13
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_init_file_name_5_13 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x55
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_init_file_name_5_13
	mov	dph,#(_UART_init_file_name_5_13 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00124$:
	C$core_uart_apb.c$93$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:93: rx_full = HAL_get_8bit_reg( this_uart->base_address, STATUS ) &
;	genAssign
	mov	dptr,#_UART_init_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_get_8bit_reg
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r6,#0x00
;	genAnd
	anl	ar5,#0x02
	mov	r6,#0x00
;	genCast
	mov	dptr,#_UART_init_rx_full_1_1
	mov	a,r5
	movx	@dptr,a
	C$core_uart_apb.c$95$3$14 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:95: while ( rx_full )
;	genAssign
00126$:
;	genAssign
	mov	dptr,#_UART_init_rx_full_1_1
	movx	a,@dptr
	mov	r5,a
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00154$
	ljmp	00128$
00154$:
	C$core_uart_apb.c$98$3$14 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:98: rx_byte = HAL_get_8bit_reg( this_uart->base_address, RXDATA );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_get_8bit_reg
	mov	a,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_UART_init_rx_byte_3_14
	movx	@dptr,a
	C$core_uart_apb.c$99$3$14 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:99: rx_full = HAL_get_8bit_reg( this_uart->base_address, STATUS ) &
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_get_8bit_reg
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r6,#0x00
;	genAnd
	anl	ar5,#0x02
	mov	r6,#0x00
;	genCast
	mov	dptr,#_UART_init_rx_full_1_1
	mov	a,r5
	movx	@dptr,a
	ljmp	00126$
00128$:
	C$core_uart_apb.c$106$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:106: this_uart->status = (uint8_t)0;
;	genAssign
	mov	dptr,#_UART_init_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x00
	lcall	__gptrput
00133$:
	C$core_uart_apb.c$108$2$1 ==.
	XG$UART_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_send'
;------------------------------------------------------------
;sloc0                     Allocated with name '_UART_send_sloc0_1_0'
;sloc1                     Allocated with name '_UART_send_sloc1_1_0'
;tx_buffer                 Allocated with name '_UART_send_PARM_2'
;tx_size                   Allocated with name '_UART_send_PARM_3'
;this_uart                 Allocated with name '_UART_send_this_uart_1_1'
;char_idx                  Allocated with name '_UART_send_char_idx_1_1'
;tx_ready                  Allocated with name '_UART_send_tx_ready_1_1'
;file_name                 Allocated with name '_UART_send_file_name_3_3'
;file_name                 Allocated with name '_UART_send_file_name_3_5'
;file_name                 Allocated with name '_UART_send_file_name_3_7'
;------------------------------------------------------------
	G$UART_send$0$0 ==.
	C$core_uart_apb.c$115$2$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:115: UART_send
;	-----------------------------------------
;	 function UART_send
;	-----------------------------------------
_UART_send:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_UART_send_this_uart_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_uart_apb.c$125$2$2 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:125: HAL_ASSERT( this_uart != NULL_INSTANCE )
;	genAssign
	mov	dptr,#_UART_send_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00138$
	cjne	r3,#0x00,00138$
	cjne	r4,#0x00,00138$
	sjmp	00139$
00138$:
	ljmp	00104$
00139$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_send_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_3 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x7D
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_send_file_name_3_3
	mov	dph,#(_UART_send_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_uart_apb.c$126$2$4 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:126: HAL_ASSERT( tx_buffer != NULL_BUFFER )
;	genAssign
	mov	dptr,#_UART_send_PARM_2
	movx	a,@dptr
	mov	_UART_send_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_send_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_send_sloc1_1_0 + 2),a
;	genCmpEq
;	gencjne
;	gencjneshort
	mov	a,_UART_send_sloc1_1_0
	jnz	00140$
	mov	a,(_UART_send_sloc1_1_0 + 1)
	jnz	00140$
	mov	a,(_UART_send_sloc1_1_0 + 2)
	jnz	00140$
	mov	a,#0x01
	sjmp	00141$
00140$:
	clr	a
00141$:
	mov	r5,a
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00142$
	ljmp	00109$
00142$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_send_file_name_3_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_5 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x7E
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_send_file_name_3_5
	mov	dph,#(_UART_send_file_name_3_5 >> 8)
	mov	b,#0x00
	push	ar5
	lcall	_HAL_assert_fail
	pop	ar5
00109$:
	C$core_uart_apb.c$127$2$6 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:127: HAL_ASSERT( tx_size > 0 )
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
	jz	00143$
	ljmp	00114$
00143$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_send_file_name_3_7
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_send_file_name_3_7 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x7F
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_send_file_name_3_7
	mov	dph,#(_UART_send_file_name_3_7 >> 8)
	mov	b,#0x00
	push	ar5
	push	ar6
	push	ar7
	lcall	_HAL_assert_fail
	pop	ar7
	pop	ar6
	pop	ar5
00114$:
	C$core_uart_apb.c$129$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:129: if( (this_uart != NULL_INSTANCE) &&
;	genAssign
	mov	dptr,#_UART_send_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00144$
	cjne	r3,#0x00,00144$
	cjne	r4,#0x00,00144$
	ljmp	00127$
00144$:
	C$core_uart_apb.c$130$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:130: (tx_buffer != NULL_BUFFER)   &&
;	genIfx
	mov	a,r5
;	genIfxJump
	jz	00145$
	ljmp	00127$
00145$:
	C$core_uart_apb.c$131$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:131: (tx_size > (size_t)0) )
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
	jnz	00146$
	ljmp	00127$
00146$:
	C$core_uart_apb.c$133$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:133: for ( char_idx = (size_t)0; char_idx < tx_size; char_idx++ )
;	genAssign
	mov	dptr,#_UART_send_char_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	ar5,r2
	mov	ar0,r3
	mov	ar1,r4
00123$:
;	genIpush
;	genAssign
	mov	dptr,#_UART_send_char_idx_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
	clr	a
	rlc	a
;	genIpop
;	genIfx
;	genIfxJump
	jnz	00147$
	ljmp	00127$
00147$:
	C$core_uart_apb.c$136$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:136: do {
00116$:
	C$core_uart_apb.c$137$2$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:137: tx_ready = HAL_get_8bit_reg( this_uart->base_address, STATUS ) &
;	genIpush
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_get_8bit_reg
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genCast
	mov	r3,#0x00
;	genAnd
	anl	ar2,#0x01
	mov	r3,#0x00
;	genCast
	C$core_uart_apb.c$139$2$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:139: } while ( !tx_ready );
;	genIfx
	mov	a,r2
;	genIpop
;	genIfxJump
	jnz	00148$
	ljmp	00116$
00148$:
	C$core_uart_apb.c$141$2$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:141: HAL_set_8bit_reg( this_uart->base_address, TXDATA,
;	genIpush
	push	ar6
	push	ar7
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	_UART_send_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_UART_send_sloc0_1_0 + 1),a
;	genAssign
	mov	dptr,#_UART_send_char_idx_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
	mov	a,ar6
	add	a,_UART_send_sloc1_1_0
	mov	r2,a
	mov	a,ar7
	addc	a,(_UART_send_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_UART_send_sloc1_1_0 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r2
	movx	@dptr,a
;	genCall
	mov	dpl,_UART_send_sloc0_1_0
	mov	dph,(_UART_send_sloc0_1_0 + 1)
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_set_8bit_reg
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	C$core_uart_apb.c$133$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:133: for ( char_idx = (size_t)0; char_idx < tx_size; char_idx++ )
;	genPlus
	mov	dptr,#_UART_send_char_idx_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar6
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar7
	inc	dptr
	movx	@dptr,a
;	genIpop
	pop	ar7
	pop	ar6
	ljmp	00123$
00127$:
	C$core_uart_apb.c$145$2$1 ==.
	XG$UART_send$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_fill_tx_fifo'
;------------------------------------------------------------
;sloc0                     Allocated with name '_UART_fill_tx_fifo_sloc0_1_0'
;sloc1                     Allocated with name '_UART_fill_tx_fifo_sloc1_1_0'
;tx_buffer                 Allocated with name '_UART_fill_tx_fifo_PARM_2'
;tx_size                   Allocated with name '_UART_fill_tx_fifo_PARM_3'
;this_uart                 Allocated with name '_UART_fill_tx_fifo_this_uart_1_1'
;tx_ready                  Allocated with name '_UART_fill_tx_fifo_tx_ready_1_1'
;size_sent                 Allocated with name '_UART_fill_tx_fifo_size_sent_1_1'
;file_name                 Allocated with name '_UART_fill_tx_fifo_file_name_3_3'
;file_name                 Allocated with name '_UART_fill_tx_fifo_file_name_3_5'
;file_name                 Allocated with name '_UART_fill_tx_fifo_file_name_3_7'
;------------------------------------------------------------
	G$UART_fill_tx_fifo$0$0 ==.
	C$core_uart_apb.c$152$2$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:152: UART_fill_tx_fifo
;	-----------------------------------------
;	 function UART_fill_tx_fifo
;	-----------------------------------------
_UART_fill_tx_fifo:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_UART_fill_tx_fifo_this_uart_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_uart_apb.c$160$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:160: size_t size_sent = 0u;
;	genAssign
	mov	dptr,#_UART_fill_tx_fifo_size_sent_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$core_uart_apb.c$162$2$2 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:162: HAL_ASSERT( this_uart != NULL_INSTANCE )
;	genAssign
	mov	dptr,#_UART_fill_tx_fifo_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00136$
	cjne	r3,#0x00,00136$
	cjne	r4,#0x00,00136$
	sjmp	00137$
00136$:
	ljmp	00104$
00137$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_fill_tx_fifo_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_3 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xA2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_fill_tx_fifo_file_name_3_3
	mov	dph,#(_UART_fill_tx_fifo_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_uart_apb.c$163$2$4 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:163: HAL_ASSERT( tx_buffer != NULL_BUFFER )
;	genAssign
	mov	dptr,#_UART_fill_tx_fifo_PARM_2
	movx	a,@dptr
	mov	_UART_fill_tx_fifo_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_fill_tx_fifo_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_fill_tx_fifo_sloc1_1_0 + 2),a
;	genCmpEq
;	gencjne
;	gencjneshort
	mov	a,_UART_fill_tx_fifo_sloc1_1_0
	jnz	00138$
	mov	a,(_UART_fill_tx_fifo_sloc1_1_0 + 1)
	jnz	00138$
	mov	a,(_UART_fill_tx_fifo_sloc1_1_0 + 2)
	jnz	00138$
	mov	a,#0x01
	sjmp	00139$
00138$:
	clr	a
00139$:
	mov	r5,a
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00140$
	ljmp	00109$
00140$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_fill_tx_fifo_file_name_3_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_5 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xA3
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_fill_tx_fifo_file_name_3_5
	mov	dph,#(_UART_fill_tx_fifo_file_name_3_5 >> 8)
	mov	b,#0x00
	push	ar5
	lcall	_HAL_assert_fail
	pop	ar5
00109$:
	C$core_uart_apb.c$164$2$6 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:164: HAL_ASSERT( tx_size > 0 )
;	genAssign
	mov	dptr,#_UART_fill_tx_fifo_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
	jz	00141$
	ljmp	00114$
00141$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_fill_tx_fifo_file_name_3_7
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_fill_tx_fifo_file_name_3_7 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xA4
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_fill_tx_fifo_file_name_3_7
	mov	dph,#(_UART_fill_tx_fifo_file_name_3_7 >> 8)
	mov	b,#0x00
	push	ar5
	push	ar6
	push	ar7
	lcall	_HAL_assert_fail
	pop	ar7
	pop	ar6
	pop	ar5
00114$:
	C$core_uart_apb.c$168$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:168: if( (this_uart != NULL_INSTANCE) &&
;	genAssign
	mov	dptr,#_UART_fill_tx_fifo_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00142$
	cjne	r3,#0x00,00142$
	cjne	r4,#0x00,00142$
	ljmp	00123$
00142$:
	C$core_uart_apb.c$169$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:169: (tx_buffer != NULL_BUFFER)   &&
;	genIfx
	mov	a,r5
;	genIfxJump
	jz	00143$
	ljmp	00123$
00143$:
	C$core_uart_apb.c$170$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:170: (tx_size > 0u) )
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
	jnz	00144$
	ljmp	00123$
00144$:
	C$core_uart_apb.c$172$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:172: tx_ready = HAL_get_8bit_reg( this_uart->base_address, STATUS ) &
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar0
	mov	r0,a
;	genCall
	mov	dpl,r5
	mov	dph,r0
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	lcall	_HW_get_8bit_reg
	mov	r5,dpl
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r0,#0x00
;	genAnd
	anl	ar5,#0x01
	mov	r0,#0x00
;	genCast
	C$core_uart_apb.c$174$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:174: if ( tx_ready )
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00145$
	ljmp	00123$
00145$:
	C$core_uart_apb.c$176$4$10 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:176: do {
;	genAssign
	mov	ar5,r2
	mov	ar0,r3
	mov	ar1,r4
00117$:
	C$core_uart_apb.c$177$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:177: HAL_set_8bit_reg( this_uart->base_address, TXDATA,
;	genIpush
	push	ar6
	push	ar7
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	_UART_fill_tx_fifo_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_UART_fill_tx_fifo_sloc0_1_0 + 1),a
;	genAssign
	mov	dptr,#_UART_fill_tx_fifo_size_sent_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
	mov	a,ar6
	add	a,_UART_fill_tx_fifo_sloc1_1_0
	mov	r2,a
	mov	a,ar7
	addc	a,(_UART_fill_tx_fifo_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_UART_fill_tx_fifo_sloc1_1_0 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r2
	movx	@dptr,a
;	genCall
	mov	dpl,_UART_fill_tx_fifo_sloc0_1_0
	mov	dph,(_UART_fill_tx_fifo_sloc0_1_0 + 1)
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_set_8bit_reg
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	C$core_uart_apb.c$179$4$10 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:179: size_sent++;
;	genPlus
	mov	dptr,#_UART_fill_tx_fifo_size_sent_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar6
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar7
	inc	dptr
	movx	@dptr,a
	C$core_uart_apb.c$180$4$10 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:180: tx_ready = HAL_get_8bit_reg( this_uart->base_address, STATUS ) &
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_get_8bit_reg
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genCast
	mov	r3,#0x00
;	genAnd
	anl	ar2,#0x01
	mov	r3,#0x00
;	genCast
	C$core_uart_apb.c$182$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:182: } while ( (tx_ready) && ( size_sent < tx_size ) );
;	genIpop
	pop	ar7
	pop	ar6
;	genIfx
	mov	a,r2
;	genIfxJump
	jnz	00146$
	ljmp	00123$
00146$:
;	genAssign
	mov	dptr,#_UART_fill_tx_fifo_size_sent_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
;	genIfxJump
	jnc	00147$
	ljmp	00117$
00147$:
00123$:
	C$core_uart_apb.c$185$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:185: return size_sent;
;	genAssign
	mov	dptr,#_UART_fill_tx_fifo_size_sent_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00126$:
	C$core_uart_apb.c$186$1$1 ==.
	XG$UART_fill_tx_fifo$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_get_rx'
;------------------------------------------------------------
;sloc0                     Allocated with name '_UART_get_rx_sloc0_1_0'
;sloc1                     Allocated with name '_UART_get_rx_sloc1_1_0'
;rx_buffer                 Allocated with name '_UART_get_rx_PARM_2'
;buff_size                 Allocated with name '_UART_get_rx_PARM_3'
;this_uart                 Allocated with name '_UART_get_rx_this_uart_1_1'
;new_status                Allocated with name '_UART_get_rx_new_status_1_1'
;rx_full                   Allocated with name '_UART_get_rx_rx_full_1_1'
;rx_idx                    Allocated with name '_UART_get_rx_rx_idx_1_1'
;file_name                 Allocated with name '_UART_get_rx_file_name_3_3'
;file_name                 Allocated with name '_UART_get_rx_file_name_3_5'
;file_name                 Allocated with name '_UART_get_rx_file_name_3_7'
;------------------------------------------------------------
	G$UART_get_rx$0$0 ==.
	C$core_uart_apb.c$193$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:193: UART_get_rx
;	-----------------------------------------
;	 function UART_get_rx
;	-----------------------------------------
_UART_get_rx:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_UART_get_rx_this_uart_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_uart_apb.c$202$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:202: size_t rx_idx = 0u;
;	genAssign
	mov	dptr,#_UART_get_rx_rx_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$core_uart_apb.c$204$2$2 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:204: HAL_ASSERT( this_uart != NULL_INSTANCE )
;	genAssign
	mov	dptr,#_UART_get_rx_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00135$
	cjne	r3,#0x00,00135$
	cjne	r4,#0x00,00135$
	sjmp	00136$
00135$:
	ljmp	00104$
00136$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_get_rx_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_3 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xCC
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_get_rx_file_name_3_3
	mov	dph,#(_UART_get_rx_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_uart_apb.c$205$2$4 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:205: HAL_ASSERT( rx_buffer != NULL_BUFFER )
;	genAssign
	mov	dptr,#_UART_get_rx_PARM_2
	movx	a,@dptr
	mov	_UART_get_rx_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_get_rx_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_get_rx_sloc1_1_0 + 2),a
;	genCmpEq
;	gencjne
;	gencjneshort
	mov	a,_UART_get_rx_sloc1_1_0
	jnz	00137$
	mov	a,(_UART_get_rx_sloc1_1_0 + 1)
	jnz	00137$
	mov	a,(_UART_get_rx_sloc1_1_0 + 2)
	jnz	00137$
	mov	a,#0x01
	sjmp	00138$
00137$:
	clr	a
00138$:
	mov	r5,a
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00139$
	ljmp	00109$
00139$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_get_rx_file_name_3_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_5 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xCD
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_get_rx_file_name_3_5
	mov	dph,#(_UART_get_rx_file_name_3_5 >> 8)
	mov	b,#0x00
	push	ar5
	lcall	_HAL_assert_fail
	pop	ar5
00109$:
	C$core_uart_apb.c$206$2$6 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:206: HAL_ASSERT( buff_size > 0 )
;	genAssign
	mov	dptr,#_UART_get_rx_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
	jz	00140$
	ljmp	00114$
00140$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_get_rx_file_name_3_7
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_file_name_3_7 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xCE
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_get_rx_file_name_3_7
	mov	dph,#(_UART_get_rx_file_name_3_7 >> 8)
	mov	b,#0x00
	push	ar5
	push	ar6
	push	ar7
	lcall	_HAL_assert_fail
	pop	ar7
	pop	ar6
	pop	ar5
00114$:
	C$core_uart_apb.c$208$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:208: if( (this_uart != NULL_INSTANCE) &&
;	genAssign
	mov	dptr,#_UART_get_rx_this_uart_1_1
	movx	a,@dptr
	mov	_UART_get_rx_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_get_rx_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_get_rx_sloc0_1_0 + 2),a
;	genCmpEq
;	gencjneshort
	mov	a,_UART_get_rx_sloc0_1_0
	jnz	00141$
	mov	a,(_UART_get_rx_sloc0_1_0 + 1)
	jnz	00141$
	mov	a,(_UART_get_rx_sloc0_1_0 + 2)
	jnz	00141$
	ljmp	00121$
00141$:
	C$core_uart_apb.c$209$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:209: (rx_buffer != NULL_BUFFER)   &&
;	genIfx
	mov	a,r5
;	genIfxJump
	jz	00142$
	ljmp	00121$
00142$:
	C$core_uart_apb.c$210$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:210: (buff_size > 0u) )
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
	jnz	00143$
	ljmp	00121$
00143$:
	C$core_uart_apb.c$212$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:212: rx_idx = 0u;
;	genIpush
;	genAssign
	mov	dptr,#_UART_get_rx_rx_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$core_uart_apb.c$213$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:213: new_status = HAL_get_8bit_reg( this_uart->base_address, STATUS );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_UART_get_rx_sloc0_1_0
	mov	dph,(_UART_get_rx_sloc0_1_0 + 1)
	mov	b,(_UART_get_rx_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r0,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar0
	mov	r0,a
;	genCall
	mov	dpl,r5
	mov	dph,r0
	push	ar6
	push	ar7
	lcall	_HW_get_8bit_reg
	mov	r5,dpl
	pop	ar7
	pop	ar6
	C$core_uart_apb.c$214$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:214: this_uart->status |= new_status;
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,_UART_get_rx_sloc0_1_0
	mov	r0,a
	mov	a,#0x00
	addc	a,(_UART_get_rx_sloc0_1_0 + 1)
	mov	r1,a
	mov	r2,(_UART_get_rx_sloc0_1_0 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r3,a
;	genOr
	mov	a,r5
	orl	ar3,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__gptrput
	C$core_uart_apb.c$215$2$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:215: rx_full = new_status & STATUS_RXFULL_MASK;
;	genCast
	mov	r2,#0x00
;	genAnd
	anl	ar5,#0x02
	mov	r2,#0x00
;	genCast
	mov	dptr,#_UART_get_rx_rx_full_1_1
	mov	a,r5
	movx	@dptr,a
	C$core_uart_apb.c$226$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:226: return rx_idx;
;	genIpop
	C$core_uart_apb.c$216$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:216: while ( ( rx_full ) && ( rx_idx < buff_size ) )
;	genAssign
	mov	r5,_UART_get_rx_sloc0_1_0
	mov	r0,(_UART_get_rx_sloc0_1_0 + 1)
	mov	r1,(_UART_get_rx_sloc0_1_0 + 2)
00117$:
;	genAssign
	mov	dptr,#_UART_get_rx_rx_full_1_1
	movx	a,@dptr
	mov	r2,a
;	genIfx
	mov	a,r2
;	genIfxJump
	jnz	00144$
	ljmp	00121$
00144$:
;	genAssign
	mov	dptr,#_UART_get_rx_rx_idx_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r6
	mov	a,r3
	subb	a,r7
;	genIfxJump
	jc	00145$
	ljmp	00121$
00145$:
	C$core_uart_apb.c$218$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:218: rx_buffer[rx_idx] = HAL_get_8bit_reg( this_uart->base_address,
;	genIpush
	push	ar6
	push	ar7
;	genPlus
	mov	a,ar2
	add	a,_UART_get_rx_sloc1_1_0
	mov	_UART_get_rx_sloc0_1_0,a
	mov	a,ar3
	addc	a,(_UART_get_rx_sloc1_1_0 + 1)
	mov	(_UART_get_rx_sloc0_1_0 + 1),a
	mov	(_UART_get_rx_sloc0_1_0 + 2),(_UART_get_rx_sloc1_1_0 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,ar4
	mov	r4,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r4
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_get_8bit_reg
	mov	r4,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_UART_get_rx_sloc0_1_0
	mov	dph,(_UART_get_rx_sloc0_1_0 + 1)
	mov	b,(_UART_get_rx_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	C$core_uart_apb.c$220$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:220: rx_idx++;
;	genPlus
	mov	dptr,#_UART_get_rx_rx_idx_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
	C$core_uart_apb.c$221$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:221: new_status = HAL_get_8bit_reg( this_uart->base_address, STATUS );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_get_8bit_reg
	mov	r2,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	C$core_uart_apb.c$222$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:222: this_uart->status |= new_status;
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar5
	mov	r3,a
	mov	a,#0x00
	addc	a,ar0
	mov	r4,a
	mov	ar6,r1
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r7,a
;	genOr
	mov	a,r2
	orl	ar7,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	C$core_uart_apb.c$223$3$9 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:223: rx_full = new_status & STATUS_RXFULL_MASK;
;	genCast
	mov	r3,#0x00
;	genAnd
	anl	ar2,#0x02
	mov	r3,#0x00
;	genCast
	mov	dptr,#_UART_get_rx_rx_full_1_1
	mov	a,r2
	movx	@dptr,a
;	genIpop
	pop	ar7
	pop	ar6
	ljmp	00117$
00121$:
	C$core_uart_apb.c$226$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:226: return rx_idx;
;	genAssign
	mov	dptr,#_UART_get_rx_rx_idx_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00124$:
	C$core_uart_apb.c$227$1$1 ==.
	XG$UART_get_rx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_polled_tx_string'
;------------------------------------------------------------
;sloc0                     Allocated with name '_UART_polled_tx_string_sloc0_1_0'
;sloc1                     Allocated with name '_UART_polled_tx_string_sloc1_1_0'
;p_sz_string               Allocated with name '_UART_polled_tx_string_PARM_2'
;this_uart                 Allocated with name '_UART_polled_tx_string_this_uart_1_1'
;char_idx                  Allocated with name '_UART_polled_tx_string_char_idx_1_1'
;tx_ready                  Allocated with name '_UART_polled_tx_string_tx_ready_1_1'
;file_name                 Allocated with name '_UART_polled_tx_string_file_name_3_3'
;file_name                 Allocated with name '_UART_polled_tx_string_file_name_3_5'
;------------------------------------------------------------
	G$UART_polled_tx_string$0$0 ==.
	C$core_uart_apb.c$234$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:234: UART_polled_tx_string
;	-----------------------------------------
;	 function UART_polled_tx_string
;	-----------------------------------------
_UART_polled_tx_string:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_UART_polled_tx_string_this_uart_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_uart_apb.c$243$2$2 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:243: HAL_ASSERT( this_uart != NULL_INSTANCE )
;	genAssign
	mov	dptr,#_UART_polled_tx_string_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00129$
	cjne	r3,#0x00,00129$
	cjne	r4,#0x00,00129$
	sjmp	00130$
00129$:
	ljmp	00104$
00130$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_polled_tx_string_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_3 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xF3
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_polled_tx_string_file_name_3_3
	mov	dph,#(_UART_polled_tx_string_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_uart_apb.c$244$2$4 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:244: HAL_ASSERT( p_sz_string != NULL_BUFFER )
;	genAssign
	mov	dptr,#_UART_polled_tx_string_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjne
;	gencjneshort
	cjne	r2,#0x00,00131$
	cjne	r3,#0x00,00131$
	cjne	r4,#0x00,00131$
	mov	a,#0x01
	sjmp	00132$
00131$:
	clr	a
00132$:
	mov	r5,a
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00133$
	ljmp	00109$
00133$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_polled_tx_string_file_name_3_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_polled_tx_string_file_name_3_5 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xF4
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_polled_tx_string_file_name_3_5
	mov	dph,#(_UART_polled_tx_string_file_name_3_5 >> 8)
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_HAL_assert_fail
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00109$:
	C$core_uart_apb.c$246$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:246: if( ( this_uart != NULL_INSTANCE ) && ( p_sz_string != NULL_BUFFER ) )
;	genAssign
	mov	dptr,#_UART_polled_tx_string_this_uart_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genCmpEq
;	gencjneshort
	cjne	r6,#0x00,00134$
	cjne	r7,#0x00,00134$
	cjne	r0,#0x00,00134$
	ljmp	00120$
00134$:
;	genIfx
	mov	a,r5
;	genIfxJump
	jz	00135$
	ljmp	00120$
00135$:
	C$core_uart_apb.c$248$2$6 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:248: char_idx = 0U;
;	genAssign
	mov	dptr,#_UART_polled_tx_string_char_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$core_uart_apb.c$249$4$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:249: while( 0U != p_sz_string[char_idx] )
;	genAssign
	mov	ar5,r0
00114$:
;	genIpush
	push	ar6
	push	ar7
	push	ar5
;	genAssign
	mov	dptr,#_UART_polled_tx_string_char_idx_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genPlus
	mov	a,ar0
	add	a,ar2
	mov	r0,a
	mov	a,ar1
	addc	a,ar3
	mov	r1,a
	mov	ar5,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
;	genCast
	mov	r5,#0x00
;	genCmpEq
;	gencjne
;	gencjneshort
	cjne	r0,#0x00,00136$
	cjne	r5,#0x00,00136$
	mov	a,#0x01
	sjmp	00137$
00136$:
	clr	a
00137$:
;	genIpop
	pop	ar5
	pop	ar7
	pop	ar6
;	genIfx
;	genIfxJump
	jz	00138$
	ljmp	00120$
00138$:
	C$core_uart_apb.c$252$3$7 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:252: do {
00111$:
	C$core_uart_apb.c$253$4$8 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:253: tx_ready = HAL_get_8bit_reg( this_uart->base_address, STATUS ) &
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar0
	mov	r0,a
	mov	a,#0x00
	addc	a,ar1
	mov	r1,a
;	genCall
	mov	dpl,r0
	mov	dph,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_HW_get_8bit_reg
	mov	r0,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r1,#0x00
;	genAnd
	anl	ar0,#0x01
	mov	r1,#0x00
;	genCast
	C$core_uart_apb.c$255$3$7 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:255: } while ( !tx_ready );
;	genIfx
	mov	a,r0
;	genIfxJump
	jnz	00139$
	ljmp	00111$
00139$:
	C$core_uart_apb.c$257$3$7 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:257: HAL_set_8bit_reg( this_uart->base_address, TXDATA,
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	_UART_polled_tx_string_sloc0_1_0,a
	inc	dptr
	lcall	__gptrget
	mov	(_UART_polled_tx_string_sloc0_1_0 + 1),a
;	genIpush
	push	ar6
	push	ar7
	push	ar5
;	genAssign
	mov	dptr,#_UART_polled_tx_string_char_idx_1_1
	movx	a,@dptr
	mov	_UART_polled_tx_string_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_polled_tx_string_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_polled_tx_string_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_UART_polled_tx_string_sloc1_1_0 + 3),a
;	genPlus
	mov	a,_UART_polled_tx_string_sloc1_1_0
	add	a,ar2
	mov	r1,a
	mov	a,(_UART_polled_tx_string_sloc1_1_0 + 1)
	addc	a,ar3
	mov	r5,a
	mov	ar6,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,_UART_polled_tx_string_sloc0_1_0
	mov	dph,(_UART_polled_tx_string_sloc0_1_0 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_HW_set_8bit_reg
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_uart_apb.c$259$3$7 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:259: char_idx++;
;	genPlus
	mov	dptr,#_UART_polled_tx_string_char_idx_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,_UART_polled_tx_string_sloc1_1_0
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_UART_polled_tx_string_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_UART_polled_tx_string_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_UART_polled_tx_string_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
;	genIpop
	pop	ar5
	pop	ar7
	pop	ar6
	ljmp	00114$
00120$:
	C$core_uart_apb.c$262$2$1 ==.
	XG$UART_polled_tx_string$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_get_rx_status'
;------------------------------------------------------------
;this_uart                 Allocated with name '_UART_get_rx_status_this_uart_1_1'
;status                    Allocated with name '_UART_get_rx_status_status_1_1'
;file_name                 Allocated with name '_UART_get_rx_status_file_name_3_3'
;------------------------------------------------------------
	G$UART_get_rx_status$0$0 ==.
	C$core_uart_apb.c$269$2$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:269: UART_get_rx_status
;	-----------------------------------------
;	 function UART_get_rx_status
;	-----------------------------------------
_UART_get_rx_status:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_UART_get_rx_status_this_uart_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_uart_apb.c$274$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:274: uint8_t status = UART_APB_INVALID_PARAM;
;	genAssign
	mov	dptr,#_UART_get_rx_status_status_1_1
	mov	a,#0xFF
	movx	@dptr,a
	C$core_uart_apb.c$276$2$2 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:276: HAL_ASSERT( this_uart != NULL_INSTANCE )
;	genAssign
	mov	dptr,#_UART_get_rx_status_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00112$
	cjne	r3,#0x00,00112$
	cjne	r4,#0x00,00112$
	sjmp	00113$
00112$:
	ljmp	00104$
00113$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_UART_get_rx_status_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x000f)
	mov	a,#0x55
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0010)
	mov	a,#0x41
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0011)
	mov	a,#0x52
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0012)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0013)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0014)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0015)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0016)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0018)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x001b)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x001c)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x001d)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0020)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0021)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0023)
	mov	a,#0x62
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0024)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0025)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_UART_get_rx_status_file_name_3_3 + 0x0026)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x14
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_UART_get_rx_status_file_name_3_3
	mov	dph,#(_UART_get_rx_status_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_uart_apb.c$283$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:283: if( this_uart != NULL_INSTANCE )
;	genAssign
	mov	dptr,#_UART_get_rx_status_this_uart_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00114$
	cjne	r3,#0x00,00114$
	cjne	r4,#0x00,00114$
	ljmp	00107$
00114$:
	C$core_uart_apb.c$285$2$4 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:285: status = ( ( this_uart->status & STATUS_ERROR_MASK ) >> 
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genAnd
	anl	ar5,#0x1C
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	mov	a,r5
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r5,a
;	genAssign
	mov	dptr,#_UART_get_rx_status_status_1_1
	mov	a,r5
	movx	@dptr,a
	C$core_uart_apb.c$290$2$4 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:290: this_uart->status = (uint8_t)0;
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x00
	lcall	__gptrput
00107$:
	C$core_uart_apb.c$292$1$1 ==.
;	../drivers/CoreUARTapb/core_uart_apb.c:292: return status;
;	genAssign
	mov	dptr,#_UART_get_rx_status_status_1_1
	movx	a,@dptr
	mov	r2,a
;	genRet
	mov	dpl,r2
00108$:
	C$core_uart_apb.c$293$1$1 ==.
	XG$UART_get_rx_status$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
