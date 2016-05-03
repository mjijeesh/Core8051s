;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Tue May 03 17:52:19 2016
;--------------------------------------------------------
	.module ___main_org
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _g_wd
	.globl _g_stdio_uart
	.globl _g_gpio
	.globl _rx_char_ptr
	.globl _rx_char
	.globl _key
	.globl _wait
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

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
G$g_gpio$0$0==.
_g_gpio::
	.ds 3
G$g_stdio_uart$0$0==.
_g_stdio_uart::
	.ds 3
G$g_wd$0$0==.
_g_wd::
	.ds 2
Lmain$uart_msg$1$1==.
_main_uart_msg_1_1:
	.ds 31
Lmain$linefeed$1$1==.
_main_linefeed_1_1:
	.ds 3
Lmain$sram_addr$1$1==.
_main_sram_addr_1_1:
	.ds 2
Lmain$rx_data$2$4==.
_main_rx_data_2_4:
	.ds 2
Lwait$time_in_ms$1$1==.
_wait_time_in_ms_1_1:
	.ds 2
Lwait$i$1$1==.
_wait_i_1_1:
	.ds 2
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;uart_msg                  Allocated with name '_main_uart_msg_1_1'
;linefeed                  Allocated with name '_main_linefeed_1_1'
;value                     Allocated with name '_main_value_1_1'
;testvar                   Allocated with name '_main_testvar_1_1'
;sram_addr                 Allocated with name '_main_sram_addr_1_1'
;rx_data                   Allocated with name '_main_rx_data_2_4'
;rx_size                   Allocated with name '_main_rx_size_2_4'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main_org.c$55$0$0 ==.
;	../main_org.c:55: int main( void )
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$main_org.c$57$1$0 ==.
;	../main_org.c:57: const uint8_t uart_msg[] = "\n\r** Simple LED Sequence  **\n\r";
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_main_uart_msg_1_1
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0001)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0002)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0003)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0004)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0005)
	mov	a,#0x53
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0006)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0007)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0008)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0009)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x000a)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x000b)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x000c)
	mov	a,#0x4C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x000d)
	mov	a,#0x45
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x000e)
	mov	a,#0x44
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x000f)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0010)
	mov	a,#0x53
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0011)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0012)
	mov	a,#0x71
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0013)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0014)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0015)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0016)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0018)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x0019)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x001a)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x001b)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x001c)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x001d)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_uart_msg_1_1 + 0x001e)
	mov	a,#0x00
	movx	@dptr,a
	C$main_org.c$58$1$0 ==.
;	../main_org.c:58: const uint8_t linefeed[] = "\n\r";
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_main_linefeed_1_1
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_linefeed_1_1 + 0x0001)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_linefeed_1_1 + 0x0002)
	mov	a,#0x00
	movx	@dptr,a
	C$main_org.c$65$1$1 ==.
;	../main_org.c:65: UART_init( &g_stdio_uart, APB3_BASE_ADDRESS + COREUARTAPB_0, UART_9600_BAUD, DATA_8_BITS | NO_PARITY );
;	genAssign
	mov	dptr,#_UART_init_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_init_PARM_3
	mov	a,#0x26
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_init_PARM_4
	mov	a,#0x01
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_stdio_uart
	mov	dph,#(_g_stdio_uart >> 8)
	mov	b,#0x00
	lcall	_UART_init
	C$main_org.c$67$1$1 ==.
;	../main_org.c:67: WD_init( &g_wd, APB3_BASE_ADDRESS + COREWATCHDOG_0, WatchDog_COUNT, WD_PRESCALER_DIV_16 );
;	genAssign
	mov	dptr,#_WD_init_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF3
	movx	@dptr,a
;	genAssign
	mov	dptr,#_WD_init_PARM_3
	mov	a,#0xE8
	movx	@dptr,a
	inc	dptr
	mov	a,#0x03
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_WD_init_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_wd
	mov	dph,#(_g_wd >> 8)
	mov	b,#0x00
	lcall	_WD_init
	C$main_org.c$68$1$1 ==.
;	../main_org.c:68: WD_disable( &g_wd );
;	genCall
	mov	dpl,#_g_wd
	mov	dph,#(_g_wd >> 8)
	mov	b,#0x00
	lcall	_WD_disable
	C$main_org.c$70$1$1 ==.
;	../main_org.c:70: GPIO_init( &g_gpio,	APB3_BASE_ADDRESS + COREGPIO_0, GPIO_APB_32_BITS_BUS );
;	genAssign
	mov	dptr,#_GPIO_init_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF1
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_init_PARM_3
	mov	a,#0x02
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_gpio
	mov	dph,#(_g_gpio >> 8)
	mov	b,#0x00
	lcall	_GPIO_init
	C$main_org.c$74$1$1 ==.
;	../main_org.c:74: GPIO_config( &g_gpio, LED_D0, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_config_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_gpio
	mov	dph,#(_g_gpio >> 8)
	mov	b,#0x00
	lcall	_GPIO_config
	C$main_org.c$76$1$1 ==.
;	../main_org.c:76: GPIO_config( &g_gpio, LED_D1, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x01
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_config_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_gpio
	mov	dph,#(_g_gpio >> 8)
	mov	b,#0x00
	lcall	_GPIO_config
	C$main_org.c$79$1$1 ==.
;	../main_org.c:79: display_help();
;	genCall
	lcall	_display_help
	C$main_org.c$80$1$1 ==.
;	../main_org.c:80: display_prompt();
;	genCall
	lcall	_display_prompt
	C$main_org.c$87$1$1 ==.
;	../main_org.c:87: for ( sram_addr =0 ; sram_addr < 256 ; sram_addr++) {
;	genAssign
	mov	dptr,#_main_sram_addr_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00106$:
;	genAssign
	mov	dptr,#_main_sram_addr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r3
	subb	a,#0x01
;	genIfxJump
	jc	00122$
	ljmp	00109$
00122$:
	C$main_org.c$89$2$2 ==.
;	../main_org.c:89: HW_set_16bit_reg((APB3_BASE_ADDRESS + COREAPBSRAM_0)+ sram_addr, value );
;	genPlus
;	genPlusIncr
;     genPlus shortcut
	mov	ar4,r2
	mov	a,#0xF5
	add	a,ar3
	mov	r5,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,#0x34
	movx	@dptr,a
	inc	dptr
	mov	a,#0x12
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	lcall	_HW_set_16bit_reg
	pop	ar3
	pop	ar2
	C$main_org.c$87$1$1 ==.
;	../main_org.c:87: for ( sram_addr =0 ; sram_addr < 256 ; sram_addr++) {
;	genPlus
	mov	dptr,#_main_sram_addr_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
	ljmp	00106$
00109$:
	C$main_org.c$92$1$1 ==.
;	../main_org.c:92: for ( sram_addr =0 ; sram_addr < 256 ; sram_addr++) {
;	genAssign
	mov	dptr,#_main_sram_addr_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00110$:
;	genAssign
	mov	dptr,#_main_sram_addr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r3
	subb	a,#0x01
;	genIfxJump
	jc	00123$
	ljmp	00104$
00123$:
	C$main_org.c$94$2$3 ==.
;	../main_org.c:94: testvar = HW_get_16bit_reg((APB3_BASE_ADDRESS + COREAPBSRAM_0)+ sram_addr);
;	genPlus
;	genPlusIncr
;     genPlus shortcut
	mov	ar4,r2
	mov	a,#0xF5
	add	a,ar3
	mov	r5,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	lcall	_HW_get_16bit_reg
	pop	ar3
	pop	ar2
	C$main_org.c$92$1$1 ==.
;	../main_org.c:92: for ( sram_addr =0 ; sram_addr < 256 ; sram_addr++) {
;	genPlus
	mov	dptr,#_main_sram_addr_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
	ljmp	00110$
	C$main_org.c$100$1$1 ==.
;	../main_org.c:100: while( 1 )
00104$:
	C$main_org.c$109$2$4 ==.
;	../main_org.c:109: rx_size = UART_get_rx(&g_stdio_uart, &rx_data[1],1);
;	genCast
	mov	dptr,#_UART_get_rx_PARM_2
	mov	a,#(_main_rx_data_2_4 + 0x0001)
	movx	@dptr,a
	inc	dptr
	mov	a,#((_main_rx_data_2_4 + 0x0001) >> 8)
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
	C$main_org.c$111$2$4 ==.
;	../main_org.c:111: if ( rx_size == 1){
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x01,00124$
	sjmp	00125$
00124$:
	ljmp	00104$
00125$:
	C$main_org.c$113$3$5 ==.
;	../main_org.c:113: key = rx_data[1];
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_main_rx_data_2_4 + 0x0001)
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_key
	mov	a,r2
	movx	@dptr,a
	C$main_org.c$114$3$5 ==.
;	../main_org.c:114: process_uart_data(key);
;	genCall
	mov	dpl,r2
	lcall	_process_uart_data
	ljmp	00104$
00114$:
	C$main_org.c$122$1$1 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wait'
;------------------------------------------------------------
;time_in_ms                Allocated with name '_wait_time_in_ms_1_1'
;i                         Allocated with name '_wait_i_1_1'
;------------------------------------------------------------
	G$wait$0$0 ==.
	C$main_org.c$126$1$1 ==.
;	../main_org.c:126: void wait(int time_in_ms)
;	-----------------------------------------
;	 function wait
;	-----------------------------------------
_wait:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_wait_time_in_ms_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$main_org.c$131$1$1 ==.
;	../main_org.c:131: for (i=0; i < time_in_ms*10000; i++)
;	genAssign
	mov	dptr,#_wait_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_wait_time_in_ms_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	genCall
	mov	dpl,#0x10
	mov	dph,#0x27
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
00101$:
;	genAssign
	mov	dptr,#_wait_i_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jc	00109$
	ljmp	00105$
00109$:
;	genPlus
	mov	dptr,#_wait_i_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar4
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar5
	inc	dptr
	movx	@dptr,a
	ljmp	00101$
00105$:
	C$main_org.c$136$1$1 ==.
	XG$wait$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
