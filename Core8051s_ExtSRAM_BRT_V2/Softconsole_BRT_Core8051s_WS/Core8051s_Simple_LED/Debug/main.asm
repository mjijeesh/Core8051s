;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:51:53 2016
;--------------------------------------------------------
	.module ___main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _g_wd
	.globl _g_uart0
	.globl _g_gpio
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
G$g_gpio$0$0==.
_g_gpio::
	.ds 3
G$g_uart0$0$0==.
_g_uart0::
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
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$54$0$0 ==.
;	../main.c:54: int main( void )
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
	C$main.c$56$1$0 ==.
;	../main.c:56: const uint8_t uart_msg[] = "\n\r** Simple LED Sequence  **\n\r";
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
	C$main.c$57$1$0 ==.
;	../main.c:57: const uint8_t linefeed[] = "\n\r";
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
	C$main.c$62$1$1 ==.
;	../main.c:62: UART_init( &g_uart0, APB3_BASE_ADDRESS + COREUARTAPB_0, UART_9600_BAUD, DATA_8_BITS | NO_PARITY );
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
	C$main.c$64$1$1 ==.
;	../main.c:64: WD_init( &g_wd, APB3_BASE_ADDRESS + COREWATCHDOG_0, WatchDog_COUNT, WD_PRESCALER_DIV_16 );
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
	C$main.c$65$1$1 ==.
;	../main.c:65: WD_disable( &g_wd );
;	genCall
	mov	dpl,#_g_wd
	mov	dph,#(_g_wd >> 8)
	mov	b,#0x00
	lcall	_WD_disable
	C$main.c$67$1$1 ==.
;	../main.c:67: GPIO_init( &g_gpio,	APB3_BASE_ADDRESS + COREGPIO_0, GPIO_APB_32_BITS_BUS );
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
	C$main.c$71$1$1 ==.
;	../main.c:71: GPIO_config( &g_gpio, LED_D0, GPIO_OUTPUT_MODE );
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
	C$main.c$73$1$1 ==.
;	../main.c:73: GPIO_config( &g_gpio, LED_D1, GPIO_OUTPUT_MODE );
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
	C$main.c$75$1$1 ==.
;	../main.c:75: GPIO_config( &g_gpio, LED_D2, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x02
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
	C$main.c$77$1$1 ==.
;	../main.c:77: GPIO_config( &g_gpio, LED_D3, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x03
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
	C$main.c$79$1$1 ==.
;	../main.c:79: GPIO_config( &g_gpio, LED_D4, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x04
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
	C$main.c$81$1$1 ==.
;	../main.c:81: GPIO_config( &g_gpio, LED_D5, GPIO_OUTPUT_MODE );
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
	C$main.c$83$1$1 ==.
;	../main.c:83: GPIO_config( &g_gpio, LED_D6, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x06
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
	C$main.c$85$1$1 ==.
;	../main.c:85: GPIO_config( &g_gpio, LED_D7, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x07
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
	C$main.c$87$1$1 ==.
;	../main.c:87: GPIO_config( &g_gpio, LED_D8, GPIO_OUTPUT_MODE );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	mov	a,#0x08
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
	C$main.c$90$1$1 ==.
;	../main.c:90: GPIO_set_output( &g_gpio, LED_D0, 0);
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
	C$main.c$92$1$1 ==.
;	../main.c:92: GPIO_set_output( &g_gpio, LED_D1, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x01
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
	C$main.c$94$1$1 ==.
;	../main.c:94: GPIO_set_output( &g_gpio, LED_D2, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x02
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
	C$main.c$96$1$1 ==.
;	../main.c:96: GPIO_set_output( &g_gpio, LED_D3, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x03
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
	C$main.c$98$1$1 ==.
;	../main.c:98: GPIO_set_output( &g_gpio, LED_D4, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x04
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
	C$main.c$100$1$1 ==.
;	../main.c:100: GPIO_set_output( &g_gpio, LED_D5, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x05
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
	C$main.c$102$1$1 ==.
;	../main.c:102: GPIO_set_output( &g_gpio, LED_D6, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x06
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
	C$main.c$104$1$1 ==.
;	../main.c:104: GPIO_set_output( &g_gpio, LED_D7, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x07
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
	C$main.c$106$1$1 ==.
;	../main.c:106: GPIO_set_output( &g_gpio, LED_D8, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x08
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
	C$main.c$108$1$1 ==.
;	../main.c:108: UART_send( &g_uart0, uart_msg, sizeof(uart_msg) );
;	genCast
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_main_uart_msg_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_main_uart_msg_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,#0x1F
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_uart0
	mov	dph,#(_g_uart0 >> 8)
	mov	b,#0x00
	lcall	_UART_send
	C$main.c$109$1$1 ==.
;	../main.c:109: UART_send( &g_uart0, linefeed, sizeof(linefeed) );
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
	C$main.c$111$1$1 ==.
;	../main.c:111: while( 1 )
00102$:
	C$main.c$115$2$2 ==.
;	../main.c:115: GPIO_set_output( &g_gpio, LED_D0, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x00
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
	C$main.c$117$2$2 ==.
;	../main.c:117: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$119$2$2 ==.
;	../main.c:119: GPIO_set_output( &g_gpio, LED_D0, 0);
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
	C$main.c$121$2$2 ==.
;	../main.c:121: GPIO_set_output( &g_gpio, LED_D1, 1);
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
	C$main.c$123$2$2 ==.
;	../main.c:123: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$125$2$2 ==.
;	../main.c:125: GPIO_set_output( &g_gpio, LED_D1, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x01
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
	C$main.c$127$2$2 ==.
;	../main.c:127: GPIO_set_output( &g_gpio, LED_D2, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x02
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
	C$main.c$129$2$2 ==.
;	../main.c:129: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$131$2$2 ==.
;	../main.c:131: GPIO_set_output( &g_gpio, LED_D2, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x02
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
	C$main.c$133$2$2 ==.
;	../main.c:133: GPIO_set_output( &g_gpio, LED_D3, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x03
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
	C$main.c$135$2$2 ==.
;	../main.c:135: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$137$2$2 ==.
;	../main.c:137: GPIO_set_output( &g_gpio, LED_D3, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x03
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
	C$main.c$139$2$2 ==.
;	../main.c:139: GPIO_set_output( &g_gpio, LED_D4, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x04
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
	C$main.c$141$2$2 ==.
;	../main.c:141: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$143$2$2 ==.
;	../main.c:143: GPIO_set_output( &g_gpio, LED_D4, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x04
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
	C$main.c$145$2$2 ==.
;	../main.c:145: GPIO_set_output( &g_gpio, LED_D5, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x05
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
	C$main.c$147$2$2 ==.
;	../main.c:147: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$149$2$2 ==.
;	../main.c:149: GPIO_set_output( &g_gpio, LED_D5, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x05
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
	C$main.c$151$2$2 ==.
;	../main.c:151: GPIO_set_output( &g_gpio, LED_D6, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x06
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
	C$main.c$153$2$2 ==.
;	../main.c:153: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$155$2$2 ==.
;	../main.c:155: GPIO_set_output( &g_gpio, LED_D6, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x06
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
	C$main.c$157$2$2 ==.
;	../main.c:157: GPIO_set_output( &g_gpio, LED_D7, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x07
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
	C$main.c$159$2$2 ==.
;	../main.c:159: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$161$2$2 ==.
;	../main.c:161: GPIO_set_output( &g_gpio, LED_D7, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x07
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
	C$main.c$163$2$2 ==.
;	../main.c:163: GPIO_set_output( &g_gpio, LED_D8, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x08
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
	C$main.c$165$2$2 ==.
;	../main.c:165: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$171$2$2 ==.
;	../main.c:171: GPIO_set_output( &g_gpio, LED_D8, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x08
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
	C$main.c$173$2$2 ==.
;	../main.c:173: GPIO_set_output( &g_gpio, LED_D7, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x07
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
	C$main.c$175$2$2 ==.
;	../main.c:175: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$177$2$2 ==.
;	../main.c:177: GPIO_set_output( &g_gpio, LED_D7, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x07
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
	C$main.c$179$2$2 ==.
;	../main.c:179: GPIO_set_output( &g_gpio, LED_D6, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x06
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
	C$main.c$181$2$2 ==.
;	../main.c:181: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$183$2$2 ==.
;	../main.c:183: GPIO_set_output( &g_gpio, LED_D6, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x06
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
	C$main.c$185$2$2 ==.
;	../main.c:185: GPIO_set_output( &g_gpio, LED_D5, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x05
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
	C$main.c$187$2$2 ==.
;	../main.c:187: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$189$2$2 ==.
;	../main.c:189: GPIO_set_output( &g_gpio, LED_D5, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x05
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
	C$main.c$191$2$2 ==.
;	../main.c:191: GPIO_set_output( &g_gpio, LED_D4, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x04
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
	C$main.c$193$2$2 ==.
;	../main.c:193: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$195$2$2 ==.
;	../main.c:195: GPIO_set_output( &g_gpio, LED_D4, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x04
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
	C$main.c$197$2$2 ==.
;	../main.c:197: GPIO_set_output( &g_gpio, LED_D3, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x03
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
	C$main.c$199$2$2 ==.
;	../main.c:199: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$201$2$2 ==.
;	../main.c:201: GPIO_set_output( &g_gpio, LED_D3, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x03
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
	C$main.c$203$2$2 ==.
;	../main.c:203: GPIO_set_output( &g_gpio, LED_D2, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x02
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
	C$main.c$205$2$2 ==.
;	../main.c:205: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$207$2$2 ==.
;	../main.c:207: GPIO_set_output( &g_gpio, LED_D2, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x02
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
	C$main.c$209$2$2 ==.
;	../main.c:209: GPIO_set_output( &g_gpio, LED_D1, 1);
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
	C$main.c$211$2$2 ==.
;	../main.c:211: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$213$2$2 ==.
;	../main.c:213: GPIO_set_output( &g_gpio, LED_D1, 0);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x01
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
	C$main.c$215$2$2 ==.
;	../main.c:215: GPIO_set_output( &g_gpio, LED_D0, 1);
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,#0x00
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
	C$main.c$217$2$2 ==.
;	../main.c:217: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	C$main.c$219$2$2 ==.
;	../main.c:219: GPIO_set_output( &g_gpio, LED_D0, 0);
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
	C$main.c$221$2$2 ==.
;	../main.c:221: wait(LED_scanning_delay);
;	genCall
	mov	dpl,#0x28
	mov	dph,#0x00
	lcall	_wait
	ljmp	00102$
00104$:
	C$main.c$225$1$1 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wait'
;------------------------------------------------------------
;time_in_ms                Allocated with name '_wait_time_in_ms_1_1'
;i                         Allocated with name '_wait_i_1_1'
;------------------------------------------------------------
	G$wait$0$0 ==.
	C$main.c$229$1$1 ==.
;	../main.c:229: void wait(int time_in_ms)
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
	C$main.c$234$1$1 ==.
;	../main.c:234: for (i=0; i < time_in_ms*10000; i++)
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
	C$main.c$239$1$1 ==.
	XG$wait$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
