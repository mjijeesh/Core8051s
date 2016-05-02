;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 20 13:16:34 2013
;--------------------------------------------------------
	.module ___main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ascii
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _UART0_BASE_ADDR
	.globl _GPIO_BASE_ADDR
	.globl _uart_config
	.globl _uartWaitXmt
	.globl _uartWaitRxd
	.globl _uart_getchar
	.globl _uart_putchar
	.globl _printf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
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
Lmain$ram_buffer$1$1==.
_main_ram_buffer_1_1:
	.ds 128
Lmain$i$1$1==.
_main_i_1_1:
	.ds 1
Lmain$k$1$1==.
_main_k_1_1:
	.ds 1
Luart_config$baudRate$1$1==.
_uart_config_baudRate_1_1:
	.ds 1
Luart_putchar$c$1$1==.
_uart_putchar_c_1_1:
	.ds 1
Lprintf$str$1$1==.
_printf_str_1_1:
	.ds 3
Lprintf$c$1$1==.
_printf_c_1_1:
	.ds 1
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$GPIO_BASE_ADDR$0$0==.
_GPIO_BASE_ADDR::
	.ds 2
G$UART0_BASE_ADDR$0$0==.
_UART0_BASE_ADDR::
	.ds 2
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
;ram_buffer                Allocated with name '_main_ram_buffer_1_1'
;i                         Allocated with name '_main_i_1_1'
;k                         Allocated with name '_main_k_1_1'
;addr                      Allocated with name '_main_addr_1_1'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$main.c$86$0$0 ==.
;	../main.c:86: void main ( void )  {
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
	C$main.c$100$1$1 ==.
;	../main.c:100: uart_config(BR_9600_6MHZ);
;	genCall
	mov	dpl,#0x26
	lcall	_uart_config
	C$main.c$102$1$1 ==.
;	../main.c:102: printf("\r 8051s UART Test Program \n\r")	;
;	genCall
	mov	dpl,#__str_0
	mov	dph,#(__str_0 >> 8)
	mov	b,#0x80
	lcall	_printf
	C$main.c$106$2$2 ==.
;	../main.c:106: for ( i =0; i< 20; i++) {
;	genAssign
	mov	dptr,#_main_i_1_1
	mov	a,#0x00
	movx	@dptr,a
00107$:
;	genAssign
	mov	dptr,#_main_i_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x14,00122$
00122$:
;	genIfxJump
	jc	00123$
	ljmp	00110$
00123$:
	C$main.c$107$3$3 ==.
;	../main.c:107: k = uart_getchar();
;	genCall
	push	ar2
	lcall	_uart_getchar
	mov	r3,dpl
	pop	ar2
	C$main.c$108$3$3 ==.
;	../main.c:108: ram_buffer[i] = k;
;	genPlus
	mov	a,ar2
	add	a,#_main_ram_buffer_1_1
	mov	dpl,a
	mov	a,#0x00
	addc	a,#(_main_ram_buffer_1_1 >> 8)
	mov	dph,a
;	genPointerSet
;     genFarPointerSet
	mov	a,r3
	movx	@dptr,a
	C$main.c$109$3$3 ==.
;	../main.c:109: uart_putchar(k);
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_uart_putchar
	pop	ar2
	C$main.c$110$3$3 ==.
;	../main.c:110: printf("\n\r");
;	genCall
	mov	dpl,#__str_1
	mov	dph,#(__str_1 >> 8)
	mov	b,#0x80
	push	ar2
	lcall	_printf
	pop	ar2
	C$main.c$106$2$2 ==.
;	../main.c:106: for ( i =0; i< 20; i++) {
;	genPlus
	mov	dptr,#_main_i_1_1
;	genPlusIncr
	mov	a,r2
	inc	a
	movx	@dptr,a
	ljmp	00107$
00110$:
	C$main.c$115$2$2 ==.
;	../main.c:115: printf("Captured 20 data in RAM ");
;	genCall
	mov	dpl,#__str_2
	mov	dph,#(__str_2 >> 8)
	mov	b,#0x80
	push	ar2
	lcall	_printf
	pop	ar2
	C$main.c$116$2$2 ==.
;	../main.c:116: printf("\r\n");
;	genCall
	mov	dpl,#__str_3
	mov	dph,#(__str_3 >> 8)
	mov	b,#0x80
	push	ar2
	lcall	_printf
	pop	ar2
	C$main.c$117$2$2 ==.
;	../main.c:117: k = uart_getchar();
;	genCall
	push	ar2
	lcall	_uart_getchar
	pop	ar2
	C$main.c$119$2$2 ==.
;	../main.c:119: printf(" Buffer COntents : ");
;	genCall
	mov	dpl,#__str_4
	mov	dph,#(__str_4 >> 8)
	mov	b,#0x80
	push	ar2
	lcall	_printf
	pop	ar2
	C$main.c$120$2$2 ==.
;	../main.c:120: for ( k=0 ; k < i ; k++) {
;	genAssign
	mov	dptr,#_main_k_1_1
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
00111$:
;	genAssign
	mov	dptr,#_main_k_1_1
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r3
	subb	a,r2
;	genIfxJump
	jc	00124$
	ljmp	00114$
00124$:
	C$main.c$121$3$4 ==.
;	../main.c:121: uart_putchar(ram_buffer[k]);
;	genPlus
	mov	a,ar3
	add	a,#_main_ram_buffer_1_1
	mov	dpl,a
	mov	a,#0x00
	addc	a,#(_main_ram_buffer_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r4,a
;	genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_uart_putchar
	pop	ar3
	pop	ar2
	C$main.c$120$2$2 ==.
;	../main.c:120: for ( k=0 ; k < i ; k++) {
;	genPlus
	mov	dptr,#_main_k_1_1
;	genPlusIncr
	mov	a,r3
	inc	a
	movx	@dptr,a
	ljmp	00111$
00114$:
	C$main.c$124$2$2 ==.
;	../main.c:124: printf("\n\r");
;	genCall
	mov	dpl,#__str_1
	mov	dph,#(__str_1 >> 8)
	mov	b,#0x80
	lcall	_printf
	C$main.c$125$2$2 ==.
;	../main.c:125: printf(" Completed ");
;	genCall
	mov	dpl,#__str_5
	mov	dph,#(__str_5 >> 8)
	mov	b,#0x80
	lcall	_printf
	C$main.c$129$2$2 ==.
;	../main.c:129: while(1)
00102$:
	ljmp	00102$
00115$:
	C$main.c$135$1$1 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_config'
;------------------------------------------------------------
;baudRate                  Allocated with name '_uart_config_baudRate_1_1'
;------------------------------------------------------------
	G$uart_config$0$0 ==.
	C$main.c$137$1$1 ==.
;	../main.c:137: void uart_config( unsigned char baudRate)
;	-----------------------------------------
;	 function uart_config
;	-----------------------------------------
_uart_config:
;	genReceive
	mov	a,dpl
	mov	dptr,#_uart_config_baudRate_1_1
	movx	@dptr,a
	C$main.c$139$1$1 ==.
;	../main.c:139: *(UART0_BASE_ADDR+UART_CONTROL1_OFFSET) =  baudRate;
;	genAssign
	mov	dptr,#_UART0_BASE_ADDR
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x08
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genAssign
	mov	dptr,#_uart_config_baudRate_1_1
	movx	a,@dptr
	mov	r4,a
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	C$main.c$140$1$1 ==.
;	../main.c:140: *(UART0_BASE_ADDR+UART_CONTROL2_OFFSET) = ( UART_CONTROL2_8BITS | UART_CONTROL2_NOPARITY);
;	genAssign
	mov	dptr,#_UART0_BASE_ADDR
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x0C
	add	a,ar2
	mov	dpl,a
	mov	a,#0x00
	addc	a,ar3
	mov	dph,a
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x01
	movx	@dptr,a
00101$:
	C$main.c$141$1$1 ==.
	XG$uart_config$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartWaitXmt'
;------------------------------------------------------------
;status                    Allocated with name '_uartWaitXmt_status_1_1'
;------------------------------------------------------------
	G$uartWaitXmt$0$0 ==.
	C$main.c$145$1$1 ==.
;	../main.c:145: void uartWaitXmt (void ){
;	-----------------------------------------
;	 function uartWaitXmt
;	-----------------------------------------
_uartWaitXmt:
	C$main.c$148$1$1 ==.
;	../main.c:148: do
00101$:
	C$main.c$149$2$2 ==.
;	../main.c:149: {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
;	genAssign
	mov	dptr,#_UART0_BASE_ADDR
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar2
	mov	dpl,a
	mov	a,#0x00
	addc	a,ar3
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
	C$main.c$150$1$1 ==.
;	../main.c:150: } while (!(status & UART_STATUS_TXREADY_MASK));
;	genAnd
	mov	a,r2
;	genIfxJump
	jb	acc.0,00107$
	ljmp	00101$
00107$:
00104$:
	C$main.c$151$1$1 ==.
	XG$uartWaitXmt$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartWaitRxd'
;------------------------------------------------------------
;status                    Allocated with name '_uartWaitRxd_status_1_1'
;------------------------------------------------------------
	G$uartWaitRxd$0$0 ==.
	C$main.c$154$1$1 ==.
;	../main.c:154: void uartWaitRxd (void ){
;	-----------------------------------------
;	 function uartWaitRxd
;	-----------------------------------------
_uartWaitRxd:
	C$main.c$157$1$1 ==.
;	../main.c:157: do
00101$:
	C$main.c$158$2$2 ==.
;	../main.c:158: {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
;	genAssign
	mov	dptr,#_UART0_BASE_ADDR
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,ar2
	mov	dpl,a
	mov	a,#0x00
	addc	a,ar3
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
	C$main.c$159$1$1 ==.
;	../main.c:159: } while (!(status & UART_STATUS_RXREADY_MASK));
;	genAnd
	mov	a,r2
;	genIfxJump
	jb	acc.1,00107$
	ljmp	00101$
00107$:
00104$:
	C$main.c$160$1$1 ==.
	XG$uartWaitRxd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_getchar'
;------------------------------------------------------------
;uartRxData                Allocated with name '_uart_getchar_uartRxData_1_1'
;------------------------------------------------------------
	G$uart_getchar$0$0 ==.
	C$main.c$167$1$1 ==.
;	../main.c:167: unsigned char uart_getchar(void)
;	-----------------------------------------
;	 function uart_getchar
;	-----------------------------------------
_uart_getchar:
	C$main.c$171$1$1 ==.
;	../main.c:171: uartWaitRxd ();
;	genCall
	lcall	_uartWaitRxd
	C$main.c$172$1$1 ==.
;	../main.c:172: uartRxData = *(UART0_BASE_ADDR+UART_RXDATA_OFFSET);
;	genAssign
	mov	dptr,#_UART0_BASE_ADDR
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
	C$main.c$173$1$1 ==.
;	../main.c:173: return (uartRxData & 0xFF);
;	genRet
	mov	dpl,r2
00101$:
	C$main.c$174$1$1 ==.
	XG$uart_getchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_putchar'
;------------------------------------------------------------
;c                         Allocated with name '_uart_putchar_c_1_1'
;------------------------------------------------------------
	G$uart_putchar$0$0 ==.
	C$main.c$178$1$1 ==.
;	../main.c:178: void uart_putchar(unsigned char c)
;	-----------------------------------------
;	 function uart_putchar
;	-----------------------------------------
_uart_putchar:
;	genReceive
	mov	a,dpl
	mov	dptr,#_uart_putchar_c_1_1
	movx	@dptr,a
	C$main.c$180$1$1 ==.
;	../main.c:180: uartWaitXmt();
;	genCall
	lcall	_uartWaitXmt
	C$main.c$181$1$1 ==.
;	../main.c:181: *(UART0_BASE_ADDR+UART_TXDATA_OFFSET) = c;
;	genAssign
	mov	dptr,#_UART0_BASE_ADDR
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_uart_putchar_c_1_1
	movx	a,@dptr
	mov	r4,a
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
00101$:
	C$main.c$184$1$1 ==.
	XG$uart_putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;str                       Allocated with name '_printf_str_1_1'
;c                         Allocated with name '_printf_c_1_1'
;------------------------------------------------------------
	G$printf$0$0 ==.
	C$main.c$186$1$1 ==.
;	../main.c:186: void printf ( unsigned char * str ) {
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
_printf:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_printf_str_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$main.c$189$1$1 ==.
;	../main.c:189: c = *str++;
;	genAssign
	mov	dptr,#_printf_str_1_1
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
;	genPlus
	mov	dptr,#_printf_str_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genAssign
	mov	dptr,#_printf_c_1_1
	mov	a,r5
	movx	@dptr,a
	C$main.c$191$1$1 ==.
;	../main.c:191: while (c != '\0') {
00101$:
;	genAssign
	mov	dptr,#_printf_c_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00108$
	ljmp	00104$
00108$:
	C$main.c$192$2$2 ==.
;	../main.c:192: uart_putchar( c);
;	genCall
	mov	dpl,r2
	lcall	_uart_putchar
	C$main.c$193$2$2 ==.
;	../main.c:193: c = *str++;
;	genAssign
	mov	dptr,#_printf_str_1_1
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
;	genPlus
	mov	dptr,#_printf_str_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genAssign
	mov	dptr,#_printf_c_1_1
	mov	a,r5
	movx	@dptr,a
	ljmp	00101$
00104$:
	C$main.c$195$1$1 ==.
	XG$printf$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$ascii$0$0 == .
_ascii:
	.ascii "0123456789ABCDEF"
	.db 0x00
F___main$_str_0$0$0 == .
__str_0:
	.db 0x0D
	.ascii " 8051s UART Test Program "
	.db 0x0A
	.db 0x0D
	.db 0x00
F___main$_str_1$0$0 == .
__str_1:
	.db 0x0A
	.db 0x0D
	.db 0x00
F___main$_str_2$0$0 == .
__str_2:
	.ascii "Captured 20 data in RAM "
	.db 0x00
F___main$_str_3$0$0 == .
__str_3:
	.db 0x0D
	.db 0x0A
	.db 0x00
F___main$_str_4$0$0 == .
__str_4:
	.ascii " Buffer COntents : "
	.db 0x00
F___main$_str_5$0$0 == .
__str_5:
	.ascii " Completed "
	.db 0x00
	.area XINIT   (CODE)
F___main$__xinit_GPIO_BASE_ADDR$0$0 == .
__xinit__GPIO_BASE_ADDR:
	.byte #0x00,#0xF1
F___main$__xinit_UART0_BASE_ADDR$0$0 == .
__xinit__UART0_BASE_ADDR:
	.byte #0x00,#0xF0
	.area CABS    (ABS,CODE)
