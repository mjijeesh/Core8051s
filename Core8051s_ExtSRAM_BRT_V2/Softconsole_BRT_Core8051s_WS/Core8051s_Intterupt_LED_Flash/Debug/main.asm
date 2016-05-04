;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:52:00 2016
;--------------------------------------------------------
	.module ___main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _C8051_interrupt_type
	.globl _enable_8051_interrupts
	.globl _INT0_IRQHandler
	.globl _g_timer0
	.globl _g_wd
	.globl _g_uart0
	.globl _g_gpio
	.globl _timer0_isr
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
G$g_gpio$0$0==.
_g_gpio::
	.ds 3
G$g_uart0$0$0==.
_g_uart0::
	.ds 3
G$g_wd$0$0==.
_g_wd::
	.ds 2
G$g_timer0$0$0==.
_g_timer0::
	.ds 2
Ltimer0_isr$output_state$1$1==.
_timer0_isr_output_state_1_1:
	.ds 4
Ltimer0_isr$interrupt_msg$1$1==.
_timer0_isr_interrupt_msg_1_1:
	.ds 50
Ltimer0_isr$linefeed$1$1==.
_timer0_isr_linefeed_1_1:
	.ds 3
Lmain$greeting_msg$1$1==.
_main_greeting_msg_1_1:
	.ds 40
Lmain$linefeed$1$1==.
_main_linefeed_1_1:
	.ds 3
Lmain$scanning_msg$1$1==.
_main_scanning_msg_1_1:
	.ds 30
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
	ljmp	_INT0_IRQHandler
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
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;output_state              Allocated with name '_timer0_isr_output_state_1_1'
;interrupt_msg             Allocated with name '_timer0_isr_interrupt_msg_1_1'
;linefeed                  Allocated with name '_timer0_isr_linefeed_1_1'
;------------------------------------------------------------
	G$timer0_isr$0$0 ==.
	C$main.c$75$1$1 ==.
;	../main.c:75: static int32_t output_state = 0;
;	genAssign
	mov	dptr,#_timer0_isr_output_state_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
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
;Allocation info for local variables in function 'INT0_IRQHandler'
;------------------------------------------------------------
;------------------------------------------------------------
	G$INT0_IRQHandler$0$0 ==.
	C$main.c$67$0$0 ==.
;	../main.c:67: void INT0_IRQHandler( void ) __interrupt (0)
;	-----------------------------------------
;	 function INT0_IRQHandler
;	-----------------------------------------
_INT0_IRQHandler:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$main.c$70$1$1 ==.
;	../main.c:70: timer0_isr();
;	genCall
	lcall	_timer0_isr
00101$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	C$main.c$71$1$1 ==.
	XG$INT0_IRQHandler$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_isr'
;------------------------------------------------------------
;output_state              Allocated with name '_timer0_isr_output_state_1_1'
;interrupt_msg             Allocated with name '_timer0_isr_interrupt_msg_1_1'
;linefeed                  Allocated with name '_timer0_isr_linefeed_1_1'
;------------------------------------------------------------
	G$timer0_isr$0$0 ==.
	C$main.c$73$1$1 ==.
;	../main.c:73: void timer0_isr( void )
;	-----------------------------------------
;	 function timer0_isr
;	-----------------------------------------
_timer0_isr:
	C$main.c$76$1$1 ==.
;	../main.c:76: const uint8_t interrupt_msg[] = "\n\r** Timer interrupt received to 8051s INT 0 **\n\r";
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_timer0_isr_interrupt_msg_1_1
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0001)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0002)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0003)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0004)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0005)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0006)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0007)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0008)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0009)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000a)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000c)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000d)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000f)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0010)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0011)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0012)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0013)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0014)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0015)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0016)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0017)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0019)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001a)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001c)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001d)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001e)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001f)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0020)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0021)
	mov	a,#0x38
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0022)
	mov	a,#0x30
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0023)
	mov	a,#0x35
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0024)
	mov	a,#0x31
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0025)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0026)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0027)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0028)
	mov	a,#0x4E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0029)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002a)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002b)
	mov	a,#0x30
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002c)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002d)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002e)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002f)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0030)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0031)
	mov	a,#0x00
	movx	@dptr,a
	C$main.c$77$1$1 ==.
;	../main.c:77: const uint8_t linefeed[] = "\n\r";
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_timer0_isr_linefeed_1_1
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_linefeed_1_1 + 0x0001)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_timer0_isr_linefeed_1_1 + 0x0002)
	mov	a,#0x00
	movx	@dptr,a
	C$main.c$79$1$1 ==.
;	../main.c:79: UART_send( &g_uart0, interrupt_msg, sizeof(interrupt_msg) );
;	genCast
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_timer0_isr_interrupt_msg_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_timer0_isr_interrupt_msg_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,#0x32
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_uart0
	mov	dph,#(_g_uart0 >> 8)
	mov	b,#0x00
	lcall	_UART_send
	C$main.c$80$1$1 ==.
;	../main.c:80: UART_send( &g_uart0, linefeed, sizeof(linefeed) );
;	genCast
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_timer0_isr_linefeed_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_timer0_isr_linefeed_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_uart0
	mov	dph,#(_g_uart0 >> 8)
	mov	b,#0x00
	lcall	_UART_send
	C$main.c$82$1$1 ==.
;	../main.c:82: GPIO_set_output( &g_gpio, LED_D1, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x01
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_3
	mov	a,#0x01
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_gpio
	mov	dph,#(_g_gpio >> 8)
	mov	b,#0x00
	lcall	_GPIO_set_output
	C$main.c$84$1$1 ==.
;	../main.c:84: if ( output_state > 0 )
;	genAssign
	mov	dptr,#_timer0_isr_output_state_1_1
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
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x00
	subb	a,r2
	mov	a,#0x00
	subb	a,r3
	mov	a,#0x00
	subb	a,r4
	mov	a,#0x00
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jc	00107$
	ljmp	00102$
00107$:
	C$main.c$86$2$2 ==.
;	../main.c:86: output_state = 0;
;	genAssign
	mov	dptr,#_timer0_isr_output_state_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00103$
00102$:
	C$main.c$90$2$3 ==.
;	../main.c:90: output_state = 1;
;	genAssign
	mov	dptr,#_timer0_isr_output_state_1_1
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00103$:
	C$main.c$92$1$1 ==.
;	../main.c:92: GPIO_set_output( &g_gpio, LED_D0, output_state);
;	genAssign
	mov	dptr,#_timer0_isr_output_state_1_1
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
;	genCast
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_3
	mov	a,r2
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_gpio
	mov	dph,#(_g_gpio >> 8)
	mov	b,#0x00
	lcall	_GPIO_set_output
	C$main.c$95$1$1 ==.
;	../main.c:95: TMR_clear_int( &g_timer0 );
;	genCall
	mov	dpl,#_g_timer0
	mov	dph,#(_g_timer0 >> 8)
	mov	b,#0x00
	lcall	_TMR_clear_int
00104$:
	C$main.c$96$1$1 ==.
	XG$timer0_isr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enable_8051_interrupts'
;------------------------------------------------------------
;------------------------------------------------------------
	G$enable_8051_interrupts$0$0 ==.
	C$main.c$98$1$1 ==.
;	../main.c:98: void enable_8051_interrupts( void )
;	-----------------------------------------
;	 function enable_8051_interrupts
;	-----------------------------------------
_enable_8051_interrupts:
	C$main.c$104$1$1 ==.
;	../main.c:104: __endasm;
	;	genInline
	  setb ex0 ; if using INT0
	  setb ex1 ; if using INT1
	  setb ea
00101$:
	C$main.c$105$1$1 ==.
	XG$enable_8051_interrupts$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'C8051_interrupt_type'
;------------------------------------------------------------
;------------------------------------------------------------
	G$C8051_interrupt_type$0$0 ==.
	C$main.c$107$1$1 ==.
;	../main.c:107: void C8051_interrupt_type( void )
;	-----------------------------------------
;	 function C8051_interrupt_type
;	-----------------------------------------
_C8051_interrupt_type:
	C$main.c$112$1$1 ==.
;	../main.c:112: __endasm;
	;	genInline
	 setb it0 ; if set INT0 for edge operation
	 setb it1 ; if set INT1 for edge operation
00101$:
	C$main.c$113$1$1 ==.
	XG$C8051_interrupt_type$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;greeting_msg              Allocated with name '_main_greeting_msg_1_1'
;linefeed                  Allocated with name '_main_linefeed_1_1'
;scanning_msg              Allocated with name '_main_scanning_msg_1_1'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$116$1$1 ==.
;	../main.c:116: int main( void )
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$118$1$1 ==.
;	../main.c:118: const uint8_t greeting_msg[] = "\n\r* Start the 8051s Interrupts test *\n\r";
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_main_greeting_msg_1_1
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0001)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0002)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0003)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0004)
	mov	a,#0x53
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0005)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0006)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0007)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0008)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0009)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x000a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x000b)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x000c)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x000d)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x000e)
	mov	a,#0x38
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x000f)
	mov	a,#0x30
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0010)
	mov	a,#0x35
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0011)
	mov	a,#0x31
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0012)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0013)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0014)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0015)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0016)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0018)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0019)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x001a)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x001b)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x001c)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x001d)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x001e)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0020)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0021)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0022)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0023)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0024)
	mov	a,#0x2A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0025)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0026)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_greeting_msg_1_1 + 0x0027)
	mov	a,#0x00
	movx	@dptr,a
	C$main.c$119$1$1 ==.
;	../main.c:119: const uint8_t linefeed[] = "\n\r";
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
	C$main.c$120$1$1 ==.
;	../main.c:120: const uint8_t scanning_msg[] = "\n\r    Scanning......       \n\r";
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_main_scanning_msg_1_1
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0001)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0002)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0003)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0004)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0005)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0006)
	mov	a,#0x53
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0007)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0008)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0009)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x000a)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x000b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x000c)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x000d)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x000e)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x000f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0010)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0011)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0012)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0013)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0014)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0015)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0016)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0017)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0018)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x0019)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x001a)
	mov	a,#0x20
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x001b)
	mov	a,#0x0A
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x001c)
	mov	a,#0x0D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_scanning_msg_1_1 + 0x001d)
	mov	a,#0x00
	movx	@dptr,a
	C$main.c$121$1$1 ==.
;	../main.c:121: enable_8051_interrupts( );
;	genCall
	lcall	_enable_8051_interrupts
	C$main.c$126$1$1 ==.
;	../main.c:126: UART_init( &g_uart0, APB3_BASE_ADDRESS + COREUARTAPB_0,      UART_9600_BAUD, DATA_8_BITS | NO_PARITY );
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
	mov	dpl,#_g_uart0
	mov	dph,#(_g_uart0 >> 8)
	mov	b,#0x00
	lcall	_UART_init
	C$main.c$127$1$1 ==.
;	../main.c:127: WD_init( &g_wd, APB3_BASE_ADDRESS + COREWATCHDOG_0,     WatchDog_COUNT, WD_PRESCALER_DIV_16 );
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
	C$main.c$128$1$1 ==.
;	../main.c:128: WD_disable( &g_wd );
;	genCall
	mov	dpl,#_g_wd
	mov	dph,#(_g_wd >> 8)
	mov	b,#0x00
	lcall	_WD_disable
	C$main.c$129$1$1 ==.
;	../main.c:129: GPIO_init( &g_gpio,APB3_BASE_ADDRESS + COREGPIO_0, GPIO_APB_32_BITS_BUS );
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
	C$main.c$135$1$1 ==.
;	../main.c:135: GPIO_config( &g_gpio, LED_D0, GPIO_OUTPUT_MODE );
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
	C$main.c$136$1$1 ==.
;	../main.c:136: GPIO_config( &g_gpio, LED_D5, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x05
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
	C$main.c$139$1$1 ==.
;	../main.c:139: TMR_init( &g_timer0, APB3_BASE_ADDRESS + CORETIMER_0,                 TMR_CONTINUOUS_MODE,PRESCALER_DIV_1024, TIMER_LOAD_VALUE );
;	genAssign
	mov	dptr,#_TMR_init_PARM_2
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF2
	movx	@dptr,a
;	genAssign
	mov	dptr,#_TMR_init_PARM_3
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_TMR_init_PARM_4
	mov	a,#0x09
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_TMR_init_PARM_5
	mov	a,#0x8C
	movx	@dptr,a
	inc	dptr
	mov	a,#0x5B
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_timer0
	mov	dph,#(_g_timer0 >> 8)
	mov	b,#0x00
	lcall	_TMR_init
	C$main.c$148$1$1 ==.
;	../main.c:148: UART_send( &g_uart0, greeting_msg, sizeof(greeting_msg) );
;	genCast
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_main_greeting_msg_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_main_greeting_msg_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,#0x28
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_uart0
	mov	dph,#(_g_uart0 >> 8)
	mov	b,#0x00
	lcall	_UART_send
	C$main.c$149$1$1 ==.
;	../main.c:149: UART_send( &g_uart0, linefeed, sizeof(linefeed) );
;	genCast
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_main_linefeed_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_main_linefeed_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_uart0
	mov	dph,#(_g_uart0 >> 8)
	mov	b,#0x00
	lcall	_UART_send
	C$main.c$152$1$1 ==.
;	../main.c:152: TMR_enable_int( &g_timer0 );
;	genCall
	mov	dpl,#_g_timer0
	mov	dph,#(_g_timer0 >> 8)
	mov	b,#0x00
	lcall	_TMR_enable_int
	C$main.c$154$1$1 ==.
;	../main.c:154: TMR_start( &g_timer0 );
;	genCall
	mov	dpl,#_g_timer0
	mov	dph,#(_g_timer0 >> 8)
	mov	b,#0x00
	lcall	_TMR_start
	C$main.c$157$1$1 ==.
;	../main.c:157: GPIO_set_output( &g_gpio, LED_D0, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_3
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_gpio
	mov	dph,#(_g_gpio >> 8)
	mov	b,#0x00
	lcall	_GPIO_set_output
	C$main.c$161$1$1 ==.
;	../main.c:161: while( 1 )
00102$:
	ljmp	00102$
00104$:
	C$main.c$166$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
