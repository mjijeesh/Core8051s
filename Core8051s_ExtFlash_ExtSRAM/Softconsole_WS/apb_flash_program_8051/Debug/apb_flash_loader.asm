;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Thu May 02 13:30:19 2013
;--------------------------------------------------------
	.module ___apb_flash_loader
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH
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
	.globl _xdata_buffer
	.globl _FlashProgramPage_PARM_3
	.globl _FlashProgramPage_PARM_2
	.globl _SRAM_BASE_ADDR
	.globl _UART0_BASE_ADDR
	.globl _FLASH_BASE_ADDR
	.globl _GPIO_BASE_ADDR
	.globl _uart_config
	.globl _uartWaitXmt
	.globl _uartWaitRxd
	.globl _uart_getchar
	.globl _uart_putchar
	.globl _printf
	.globl _FlashErasePage
	.globl _FlashProgramPage
	.globl _FlashBusyCheck
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
G$GPIO_BASE_ADDR$0$0==.
_GPIO_BASE_ADDR::
	.ds 2
G$FLASH_BASE_ADDR$0$0==.
_FLASH_BASE_ADDR::
	.ds 2
G$UART0_BASE_ADDR$0$0==.
_UART0_BASE_ADDR::
	.ds 2
G$SRAM_BASE_ADDR$0$0==.
_SRAM_BASE_ADDR::
	.ds 2
F___apb_flash_loader$checkSum$0$0==.
_checkSum:
	.ds 1
LFlashProgramPage$addr$1$1==.
_FlashProgramPage_PARM_2:
	.ds 2
LFlashProgramPage$size$1$1==.
_FlashProgramPage_PARM_3:
	.ds 1
LFlashProgramPage$buffer$1$1==.
_FlashProgramPage_buffer_1_1:
	.ds 3
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
G$xdata_buffer$0$0 == 0xf300
_xdata_buffer	=	0xf300
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
	G$FlashBusyCheck$0$0 ==.
	C$apb_flash_loader.c$28$1$1 ==.
;	../apb_flash_loader.c:28: volatile uint8_t xdata * GPIO_BASE_ADDR   = (uint8_t xdata *)GPIO_BASE;
;	genAssign
	mov	_GPIO_BASE_ADDR,#0x00
	mov	(_GPIO_BASE_ADDR + 1),#0xF1
	G$FlashBusyCheck$0$0 ==.
	C$apb_flash_loader.c$29$1$1 ==.
;	../apb_flash_loader.c:29: volatile uint8_t xdata * FLASH_BASE_ADDR  = (uint8_t xdata *)FLASH_BASE;
;	genAssign
	mov	_FLASH_BASE_ADDR,#0x00
	mov	(_FLASH_BASE_ADDR + 1),#0xF4
	G$FlashBusyCheck$0$0 ==.
	C$apb_flash_loader.c$30$1$1 ==.
;	../apb_flash_loader.c:30: volatile uint8_t xdata * UART0_BASE_ADDR  = (uint8_t xdata *)UART_BASE;
;	genAssign
	mov	_UART0_BASE_ADDR,#0x00
	mov	(_UART0_BASE_ADDR + 1),#0xF0
	G$FlashBusyCheck$0$0 ==.
	C$apb_flash_loader.c$31$1$1 ==.
;	../apb_flash_loader.c:31: volatile uint8_t xdata * SRAM_BASE_ADDR   = (uint8_t xdata *)SRAM_BASE;
;	genAssign
	mov	_SRAM_BASE_ADDR,#0x00
	mov	(_SRAM_BASE_ADDR + 1),#0xF3
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
;size                      Allocated to registers r5 
;i                         Allocated to registers r6 
;k                         Allocated to registers r4 
;addr                      Allocated to registers r2 r3 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$apb_flash_loader.c$124$0$0 ==.
;	../apb_flash_loader.c:124: void main ( void )  {
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
	C$apb_flash_loader.c$133$1$1 ==.
;	../apb_flash_loader.c:133: addr = 0x0000;
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
	C$apb_flash_loader.c$137$1$1 ==.
;	../apb_flash_loader.c:137: uart_config(BR_9600_6MHZ);
;	genCall
	mov	dpl,#0x26
	push	ar2
	push	ar3
	lcall	_uart_config
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$139$1$1 ==.
;	../apb_flash_loader.c:139: printf("\r 8051s UART Test Program \n\r")	;
;	genCall
	mov	dpl,#__str_0
	mov	dph,#(__str_0 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	lcall	_printf
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$143$1$1 ==.
;	../apb_flash_loader.c:143: for ( k=0 ; k < 32; k++) {
;	genAssign
	mov	r4,#0x20
00109$:
	C$apb_flash_loader.c$144$2$2 ==.
;	../apb_flash_loader.c:144: FlashErasePage(addr);
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	lcall	_FlashErasePage
	pop	ar4
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$145$2$2 ==.
;	../apb_flash_loader.c:145: addr = addr + 128;
;	genPlus
;	genPlusIncr
	mov	a,#0x80
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genMinus
;	genMinusDec
	dec	r4
	C$apb_flash_loader.c$143$2$2 ==.
;	../apb_flash_loader.c:143: for ( k=0 ; k < 32; k++) {
;	genIfx
	mov	a,r4
;	genIfxJump
	jz	00126$
	ljmp	00109$
00126$:
	C$apb_flash_loader.c$148$1$1 ==.
;	../apb_flash_loader.c:148: addr = 0x0000;
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
	C$apb_flash_loader.c$149$1$1 ==.
;	../apb_flash_loader.c:149: size = 0;
;	genAssign
	mov	r5,#0x00
	C$apb_flash_loader.c$155$2$3 ==.
;	../apb_flash_loader.c:155: for ( i =0; i< 10; i++) {
;	genAssign
	mov	r6,#0x00
00110$:
;	genCmpLt
;	genCmp
	cjne	r6,#0x0A,00127$
00127$:
;	genIfxJump
	jc	00128$
	ljmp	00113$
00128$:
	C$apb_flash_loader.c$156$3$4 ==.
;	../apb_flash_loader.c:156: k = uart_getchar();
;	genCall
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_uart_getchar
	mov	r4,dpl
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$157$3$4 ==.
;	../apb_flash_loader.c:157: xdata_buffer[i] = k;
;	genPlus
;     genPlus aligned array
	mov	dpl,r6
	mov	dph,#(_xdata_buffer >> 8)
;	genPointerSet
;     genFarPointerSet
	mov	a,r4
	movx	@dptr,a
	C$apb_flash_loader.c$158$3$4 ==.
;	../apb_flash_loader.c:158: uart_putchar(k);
;	genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_uart_putchar
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$159$3$4 ==.
;	../apb_flash_loader.c:159: printf("\n\r");
;	genCall
	mov	dpl,#__str_1
	mov	dph,#(__str_1 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_printf
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$160$3$4 ==.
;	../apb_flash_loader.c:160: size++;
;	genPlus
;	genPlusIncr
	inc	r5
	C$apb_flash_loader.c$155$2$3 ==.
;	../apb_flash_loader.c:155: for ( i =0; i< 10; i++) {
;	genPlus
;	genPlusIncr
	inc	r6
	ljmp	00110$
00113$:
	C$apb_flash_loader.c$164$2$3 ==.
;	../apb_flash_loader.c:164: printf("Captured 128 data in RAM ");
;	genCall
	mov	dpl,#__str_2
	mov	dph,#(__str_2 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar5
	lcall	_printf
	pop	ar5
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$165$2$3 ==.
;	../apb_flash_loader.c:165: k = uart_getchar();
;	genCall
	push	ar2
	push	ar3
	push	ar5
	lcall	_uart_getchar
	pop	ar5
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$169$2$3 ==.
;	../apb_flash_loader.c:169: for ( k=0 ; k < 10 ; k++) {
;	genAssign
	mov	r4,#0x0A
00116$:
	C$apb_flash_loader.c$170$3$5 ==.
;	../apb_flash_loader.c:170: FlashProgramPage (xdata_buffer,addr,size);
;	genAssign
	mov	_FlashProgramPage_PARM_2,r2
	mov	(_FlashProgramPage_PARM_2 + 1),r3
;	genAssign
	mov	_FlashProgramPage_PARM_3,r5
;	genCall
	mov	dpl,#_xdata_buffer
	mov	dph,#(_xdata_buffer >> 8)
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_FlashProgramPage
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$171$3$5 ==.
;	../apb_flash_loader.c:171: printf(" Page Programmed ");
;	genCall
	mov	dpl,#__str_3
	mov	dph,#(__str_3 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_printf
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$172$3$5 ==.
;	../apb_flash_loader.c:172: printf("\r \n");
;	genCall
	mov	dpl,#__str_4
	mov	dph,#(__str_4 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_printf
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$173$3$5 ==.
;	../apb_flash_loader.c:173: addr = addr + 128;
;	genPlus
;	genPlusIncr
	mov	a,#0x80
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genDjnz
	djnz	r4,00129$
	sjmp	00130$
00129$:
	ljmp	00116$
00130$:
	C$apb_flash_loader.c$169$3$5 ==.
;	../apb_flash_loader.c:169: for ( k=0 ; k < 10 ; k++) {
	C$apb_flash_loader.c$176$2$3 ==.
;	../apb_flash_loader.c:176: printf(" Completed ");
;	genCall
	mov	dpl,#__str_5
	mov	dph,#(__str_5 >> 8)
	mov	b,#0x80
	lcall	_printf
	C$apb_flash_loader.c$180$2$3 ==.
;	../apb_flash_loader.c:180: while(1)
00102$:
	ljmp	00102$
00117$:
	C$apb_flash_loader.c$186$1$1 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_config'
;------------------------------------------------------------
;baudRate                  Allocated to registers r2 
;------------------------------------------------------------
	G$uart_config$0$0 ==.
	C$apb_flash_loader.c$188$1$1 ==.
;	../apb_flash_loader.c:188: void uart_config( unsigned char baudRate)
;	-----------------------------------------
;	 function uart_config
;	-----------------------------------------
_uart_config:
;	genReceive
	mov	r2,dpl
	C$apb_flash_loader.c$190$1$1 ==.
;	../apb_flash_loader.c:190: *(UART0_BASE_ADDR+UART_CONTROL1_OFFSET) =  baudRate;
;	genPlus
;	genPlusIncr
	mov	dpl,_UART0_BASE_ADDR
	mov	dph,(_UART0_BASE_ADDR + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genPointerSet
;     genFarPointerSet
	mov	a,r2
	movx	@dptr,a
	C$apb_flash_loader.c$191$1$1 ==.
;	../apb_flash_loader.c:191: *(UART0_BASE_ADDR+UART_CONTROL2_OFFSET) = ( UART_CONTROL2_8BITS | UART_CONTROL2_NOPARITY);
;	genPlus
;	genPlusIncr
	mov	a,#0x0C
	add	a,_UART0_BASE_ADDR
	mov	dpl,a
	mov	a,#0x00
	addc	a,(_UART0_BASE_ADDR + 1)
	mov	dph,a
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x01
	movx	@dptr,a
00101$:
	C$apb_flash_loader.c$192$1$1 ==.
	XG$uart_config$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartWaitXmt'
;------------------------------------------------------------
;status                    Allocated to registers r2 
;------------------------------------------------------------
	G$uartWaitXmt$0$0 ==.
	C$apb_flash_loader.c$196$1$1 ==.
;	../apb_flash_loader.c:196: void uartWaitXmt (void ){
;	-----------------------------------------
;	 function uartWaitXmt
;	-----------------------------------------
_uartWaitXmt:
	C$apb_flash_loader.c$199$1$1 ==.
;	../apb_flash_loader.c:199: do
00101$:
	C$apb_flash_loader.c$200$2$2 ==.
;	../apb_flash_loader.c:200: {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,_UART0_BASE_ADDR
	mov	dpl,a
	mov	a,#0x00
	addc	a,(_UART0_BASE_ADDR + 1)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
	C$apb_flash_loader.c$201$1$1 ==.
;	../apb_flash_loader.c:201: } while (!(status & UART_STATUS_TXREADY_MASK));
;	genAnd
	mov	a,r2
;	genIfxJump
	jb	acc.0,00107$
	ljmp	00101$
00107$:
00104$:
	C$apb_flash_loader.c$202$1$1 ==.
	XG$uartWaitXmt$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartWaitRxd'
;------------------------------------------------------------
;status                    Allocated to registers r2 
;------------------------------------------------------------
	G$uartWaitRxd$0$0 ==.
	C$apb_flash_loader.c$205$1$1 ==.
;	../apb_flash_loader.c:205: void uartWaitRxd (void ){
;	-----------------------------------------
;	 function uartWaitRxd
;	-----------------------------------------
_uartWaitRxd:
	C$apb_flash_loader.c$208$1$1 ==.
;	../apb_flash_loader.c:208: do
00101$:
	C$apb_flash_loader.c$209$2$2 ==.
;	../apb_flash_loader.c:209: {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,_UART0_BASE_ADDR
	mov	dpl,a
	mov	a,#0x00
	addc	a,(_UART0_BASE_ADDR + 1)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
	C$apb_flash_loader.c$210$1$1 ==.
;	../apb_flash_loader.c:210: } while (!(status & UART_STATUS_RXREADY_MASK));
;	genAnd
	mov	a,r2
;	genIfxJump
	jb	acc.1,00107$
	ljmp	00101$
00107$:
00104$:
	C$apb_flash_loader.c$211$1$1 ==.
	XG$uartWaitRxd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_getchar'
;------------------------------------------------------------
;uartRxData                Allocated to registers r2 
;------------------------------------------------------------
	G$uart_getchar$0$0 ==.
	C$apb_flash_loader.c$218$1$1 ==.
;	../apb_flash_loader.c:218: unsigned char uart_getchar(void)
;	-----------------------------------------
;	 function uart_getchar
;	-----------------------------------------
_uart_getchar:
	C$apb_flash_loader.c$222$1$1 ==.
;	../apb_flash_loader.c:222: uartWaitRxd ();
;	genCall
	lcall	_uartWaitRxd
	C$apb_flash_loader.c$223$1$1 ==.
;	../apb_flash_loader.c:223: uartRxData = *(UART0_BASE_ADDR+UART_RXDATA_OFFSET);
;	genPlus
;	genPlusIncr
	mov	dpl,_UART0_BASE_ADDR
	mov	dph,(_UART0_BASE_ADDR + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
	C$apb_flash_loader.c$224$1$1 ==.
;	../apb_flash_loader.c:224: return (uartRxData & 0xFF);
;	genRet
	mov	dpl,r2
00101$:
	C$apb_flash_loader.c$225$1$1 ==.
	XG$uart_getchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_putchar'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
	G$uart_putchar$0$0 ==.
	C$apb_flash_loader.c$229$1$1 ==.
;	../apb_flash_loader.c:229: void uart_putchar(unsigned char c)
;	-----------------------------------------
;	 function uart_putchar
;	-----------------------------------------
_uart_putchar:
;	genReceive
	mov	r2,dpl
	C$apb_flash_loader.c$231$1$1 ==.
;	../apb_flash_loader.c:231: uartWaitXmt();
;	genCall
	push	ar2
	lcall	_uartWaitXmt
	pop	ar2
	C$apb_flash_loader.c$232$1$1 ==.
;	../apb_flash_loader.c:232: *(UART0_BASE_ADDR+UART_TXDATA_OFFSET) = c;
;	genAssign
	mov	dpl,_UART0_BASE_ADDR
	mov	dph,(_UART0_BASE_ADDR + 1)
;	genPointerSet
;     genFarPointerSet
	mov	a,r2
	movx	@dptr,a
00101$:
	C$apb_flash_loader.c$235$1$1 ==.
	XG$uart_putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;str                       Allocated to registers r2 r3 r4 
;c                         Allocated to registers r5 
;------------------------------------------------------------
	G$printf$0$0 ==.
	C$apb_flash_loader.c$237$1$1 ==.
;	../apb_flash_loader.c:237: void printf ( unsigned char * str ) {
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
_printf:
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$apb_flash_loader.c$240$1$1 ==.
;	../apb_flash_loader.c:240: c = *str++;
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	C$apb_flash_loader.c$242$1$1 ==.
;	../apb_flash_loader.c:242: while (c != '\0') {
00101$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00108$
	ljmp	00104$
00108$:
	C$apb_flash_loader.c$243$2$2 ==.
;	../apb_flash_loader.c:243: uart_putchar( c);
;	genCall
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_uart_putchar
	pop	ar4
	pop	ar3
	pop	ar2
	C$apb_flash_loader.c$244$2$2 ==.
;	../apb_flash_loader.c:244: c = *str++;
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	ljmp	00101$
00104$:
	C$apb_flash_loader.c$246$1$1 ==.
	XG$printf$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FlashErasePage'
;------------------------------------------------------------
;pageAddr                  Allocated to registers r2 r3 
;status                    Allocated to registers r4 
;------------------------------------------------------------
	G$FlashErasePage$0$0 ==.
	C$apb_flash_loader.c$251$1$1 ==.
;	../apb_flash_loader.c:251: void FlashErasePage(uint16_t  pageAddr )
;	-----------------------------------------
;	 function FlashErasePage
;	-----------------------------------------
_FlashErasePage:
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	C$apb_flash_loader.c$256$1$1 ==.
;	../apb_flash_loader.c:256: do {
00101$:
	C$apb_flash_loader.c$257$2$2 ==.
;	../apb_flash_loader.c:257: status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);
;	genPlus
;	genPlusIncr
	mov	dpl,_FLASH_BASE_ADDR
	mov	dph,(_FLASH_BASE_ADDR + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r4,a
	C$apb_flash_loader.c$259$1$1 ==.
;	../apb_flash_loader.c:259: } while (!(status & FLASH_STS_BUSY_MASK));
;	genAnd
	mov	a,r4
;	genIfxJump
	jb	acc.7,00112$
	ljmp	00101$
00112$:
	C$apb_flash_loader.c$261$1$1 ==.
;	../apb_flash_loader.c:261: *(FLASH_BASE_ADDR+FLASH_ADDR1_OFFSET) = pageAddr;
;	genPlus
;	genPlusIncr
	mov	dpl,_FLASH_BASE_ADDR
	mov	dph,(_FLASH_BASE_ADDR + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genCast
	mov	ar5,r2
;	genPointerSet
;     genFarPointerSet
	mov	a,r5
	movx	@dptr,a
	C$apb_flash_loader.c$262$1$1 ==.
;	../apb_flash_loader.c:262: *(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET) = pageAddr >> 8;  // uper addr
;	genPlus
;	genPlusIncr
	mov	a,#0x0C
	add	a,_FLASH_BASE_ADDR
	mov	dpl,a
	mov	a,#0x00
	addc	a,(_FLASH_BASE_ADDR + 1)
	mov	dph,a
;	genGetByte
	mov	ar2,r3
;	genPointerSet
;     genFarPointerSet
	mov	a,r2
	movx	@dptr,a
	C$apb_flash_loader.c$266$1$1 ==.
;	../apb_flash_loader.c:266: *(FLASH_BASE_ADDR+FLASH_CTRL_OFFSET)=  FLASH_CTRL_ERASE; // erase command
;	genAssign
	mov	dpl,_FLASH_BASE_ADDR
	mov	dph,(_FLASH_BASE_ADDR + 1)
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x40
	movx	@dptr,a
	C$apb_flash_loader.c$268$1$1 ==.
;	../apb_flash_loader.c:268: do {
00104$:
	C$apb_flash_loader.c$269$2$3 ==.
;	../apb_flash_loader.c:269: status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);
;	genPlus
;	genPlusIncr
	mov	dpl,_FLASH_BASE_ADDR
	mov	dph,(_FLASH_BASE_ADDR + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r4,a
	C$apb_flash_loader.c$271$1$1 ==.
;	../apb_flash_loader.c:271: } while (!(status & FLASH_STS_BUSY_MASK));
;	genAnd
	mov	a,r4
;	genIfxJump
	jb	acc.7,00113$
	ljmp	00104$
00113$:
00107$:
	C$apb_flash_loader.c$274$1$1 ==.
	XG$FlashErasePage$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FlashProgramPage'
;------------------------------------------------------------
;addr                      Allocated with name '_FlashProgramPage_PARM_2'
;size                      Allocated with name '_FlashProgramPage_PARM_3'
;buffer                    Allocated with name '_FlashProgramPage_buffer_1_1'
;page_addr                 Allocated to registers r5 r6 
;i                         Allocated to registers r7 
;status                    Allocated to registers 
;------------------------------------------------------------
	G$FlashProgramPage$0$0 ==.
	C$apb_flash_loader.c$279$1$1 ==.
;	../apb_flash_loader.c:279: void FlashProgramPage ( unsigned char * buffer  , unsigned int addr , unsigned char size) {
;	-----------------------------------------
;	 function FlashProgramPage
;	-----------------------------------------
_FlashProgramPage:
;	genReceive
	mov	_FlashProgramPage_buffer_1_1,dpl
	mov	(_FlashProgramPage_buffer_1_1 + 1),dph
	mov	(_FlashProgramPage_buffer_1_1 + 2),b
	C$apb_flash_loader.c$283$1$1 ==.
;	../apb_flash_loader.c:283: page_addr = addr;
;	genAssign
	mov	r5,_FlashProgramPage_PARM_2
	mov	r6,(_FlashProgramPage_PARM_2 + 1)
	C$apb_flash_loader.c$285$1$1 ==.
;	../apb_flash_loader.c:285: FlashBusyCheck();  // check the last programming operation is complete or not;
;	genCall
	push	ar5
	push	ar6
	lcall	_FlashBusyCheck
	pop	ar6
	pop	ar5
	C$apb_flash_loader.c$287$1$1 ==.
;	../apb_flash_loader.c:287: *(FLASH_BASE_ADDR + FLASH_ADDR1_OFFSET) = page_addr;
;	genPlus
;	genPlusIncr
	mov	dpl,_FLASH_BASE_ADDR
	mov	dph,(_FLASH_BASE_ADDR + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genCast
	mov	ar7,r5
;	genPointerSet
;     genFarPointerSet
	mov	a,r7
	movx	@dptr,a
	C$apb_flash_loader.c$288$1$1 ==.
;	../apb_flash_loader.c:288: *(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET)   = page_addr >> 8;  // uper addr
;	genPlus
;	genPlusIncr
	mov	a,#0x0C
	add	a,_FLASH_BASE_ADDR
	mov	dpl,a
	mov	a,#0x00
	addc	a,(_FLASH_BASE_ADDR + 1)
	mov	dph,a
;	genGetByte
	mov	ar7,r6
;	genPointerSet
;     genFarPointerSet
	mov	a,r7
	movx	@dptr,a
	C$apb_flash_loader.c$290$1$1 ==.
;	../apb_flash_loader.c:290: status = *(FLASH_BASE_ADDR+FLASH_DATA_OFFSET) ; // read a byte from the page buffer to load it properly
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,_FLASH_BASE_ADDR
	mov	dpl,a
	mov	a,#0x00
	addc	a,(_FLASH_BASE_ADDR + 1)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	C$apb_flash_loader.c$291$1$1 ==.
;	../apb_flash_loader.c:291: FlashBusyCheck();
;	genCall
	push	ar5
	push	ar6
	lcall	_FlashBusyCheck
	pop	ar6
	pop	ar5
	C$apb_flash_loader.c$293$1$1 ==.
;	../apb_flash_loader.c:293: for ( i = 0; i < size ; i++) {
;	genAssign
	mov	r7,#0x00
00101$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	subb	a,_FlashProgramPage_PARM_3
;	genIfxJump
	jc	00109$
	ljmp	00104$
00109$:
	C$apb_flash_loader.c$294$2$2 ==.
;	../apb_flash_loader.c:294: *(FLASH_BASE_ADDR+FLASH_ADDR1_OFFSET)= page_addr;
;	genPlus
;	genPlusIncr
	mov	dpl,_FLASH_BASE_ADDR
	mov	dph,(_FLASH_BASE_ADDR + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genCast
	mov	ar0,r5
;	genPointerSet
;     genFarPointerSet
	mov	a,r0
	movx	@dptr,a
	C$apb_flash_loader.c$295$2$2 ==.
;	../apb_flash_loader.c:295: *(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET)= page_addr >> 8;
;	genPlus
;	genPlusIncr
	mov	a,#0x0C
	add	a,_FLASH_BASE_ADDR
	mov	dpl,a
	mov	a,#0x00
	addc	a,(_FLASH_BASE_ADDR + 1)
	mov	dph,a
;	genGetByte
	mov	ar0,r6
;	genPointerSet
;     genFarPointerSet
	mov	a,r0
	movx	@dptr,a
	C$apb_flash_loader.c$296$2$2 ==.
;	../apb_flash_loader.c:296: *(FLASH_BASE_ADDR+FLASH_DATA_OFFSET)=  buffer[i];
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,_FLASH_BASE_ADDR
	mov	r0,a
	mov	a,#0x00
	addc	a,(_FLASH_BASE_ADDR + 1)
	mov	r1,a
;	genPlus
	mov	a,ar7
	add	a,_FlashProgramPage_buffer_1_1
	mov	r2,a
	mov	a,#0x00
	addc	a,(_FlashProgramPage_buffer_1_1 + 1)
	mov	r3,a
	mov	r4,(_FlashProgramPage_buffer_1_1 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r0
	mov	dph,r1
	mov	a,r2
	movx	@dptr,a
	C$apb_flash_loader.c$297$2$2 ==.
;	../apb_flash_loader.c:297: FlashBusyCheck();
;	genCall
	push	ar5
	push	ar6
	push	ar7
	lcall	_FlashBusyCheck
	pop	ar7
	pop	ar6
	pop	ar5
	C$apb_flash_loader.c$298$2$2 ==.
;	../apb_flash_loader.c:298: page_addr++;
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
00110$:
	C$apb_flash_loader.c$293$1$1 ==.
;	../apb_flash_loader.c:293: for ( i = 0; i < size ; i++) {
;	genPlus
;	genPlusIncr
	inc	r7
	ljmp	00101$
00104$:
	C$apb_flash_loader.c$301$1$1 ==.
;	../apb_flash_loader.c:301: *(FLASH_BASE_ADDR+FLASH_CTRL_OFFSET)=  FLASH_CTRL_PROGRAM;
;	genAssign
	mov	dpl,_FLASH_BASE_ADDR
	mov	dph,(_FLASH_BASE_ADDR + 1)
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x80
	movx	@dptr,a
	C$apb_flash_loader.c$304$1$1 ==.
;	../apb_flash_loader.c:304: FlashBusyCheck();
;	genCall
	lcall	_FlashBusyCheck
00105$:
	C$apb_flash_loader.c$306$1$1 ==.
	XG$FlashProgramPage$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FlashBusyCheck'
;------------------------------------------------------------
;status                    Allocated to registers r2 
;------------------------------------------------------------
	G$FlashBusyCheck$0$0 ==.
	C$apb_flash_loader.c$309$1$1 ==.
;	../apb_flash_loader.c:309: void FlashBusyCheck(void) {
;	-----------------------------------------
;	 function FlashBusyCheck
;	-----------------------------------------
_FlashBusyCheck:
	C$apb_flash_loader.c$312$1$1 ==.
;	../apb_flash_loader.c:312: do {
00101$:
	C$apb_flash_loader.c$313$2$2 ==.
;	../apb_flash_loader.c:313: status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);
;	genPlus
;	genPlusIncr
	mov	dpl,_FLASH_BASE_ADDR
	mov	dph,(_FLASH_BASE_ADDR + 1)
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
	C$apb_flash_loader.c$315$1$1 ==.
;	../apb_flash_loader.c:315: } while (!(status & FLASH_STS_BUSY_MASK));
;	genAnd
	mov	a,r2
;	genIfxJump
	jb	acc.7,00107$
	ljmp	00101$
00107$:
00104$:
	C$apb_flash_loader.c$317$1$1 ==.
	XG$FlashBusyCheck$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$ascii$0$0 == .
_ascii:
	.ascii "0123456789ABCDEF"
	.db 0x00
G$FLASH$0$0 == 0x1000
_FLASH	=	0x1000
F___apb_flash_loader$_str_0$0$0 == .
__str_0:
	.db 0x0D
	.ascii " 8051s UART Test Program "
	.db 0x0A
	.db 0x0D
	.db 0x00
F___apb_flash_loader$_str_1$0$0 == .
__str_1:
	.db 0x0A
	.db 0x0D
	.db 0x00
F___apb_flash_loader$_str_2$0$0 == .
__str_2:
	.ascii "Captured 128 data in RAM "
	.db 0x00
F___apb_flash_loader$_str_3$0$0 == .
__str_3:
	.ascii " Page Programmed "
	.db 0x00
F___apb_flash_loader$_str_4$0$0 == .
__str_4:
	.db 0x0D
	.ascii " "
	.db 0x0A
	.db 0x00
F___apb_flash_loader$_str_5$0$0 == .
__str_5:
	.ascii " Completed "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
