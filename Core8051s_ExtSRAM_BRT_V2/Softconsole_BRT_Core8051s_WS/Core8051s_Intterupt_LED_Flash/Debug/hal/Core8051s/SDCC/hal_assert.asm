;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:52:00 2016
;--------------------------------------------------------
	.module ___hal_Core8051s_SDCC_hal_assert
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HAL_assert_fail_PARM_2
	.globl _HAL_assert_fail
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
LHAL_assert_fail$line_no$1$1==.
_HAL_assert_fail_PARM_2:
	.ds 4
LHAL_assert_fail$file_name$1$1==.
_HAL_assert_fail_file_name_1_1:
	.ds 3
LHAL_assert_fail$assert_file$2$2==.
_HAL_assert_fail_assert_file_2_2:
	.ds 3
LHAL_assert_fail$assert_line$2$2==.
_HAL_assert_fail_assert_line_2_2:
	.ds 4
LHAL_assert_fail$dummy$2$2==.
_HAL_assert_fail_dummy_2_2:
	.ds 1
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
;Allocation info for local variables in function 'HAL_assert_fail'
;------------------------------------------------------------
;line_no                   Allocated with name '_HAL_assert_fail_PARM_2'
;file_name                 Allocated with name '_HAL_assert_fail_file_name_1_1'
;assert_file               Allocated with name '_HAL_assert_fail_assert_file_2_2'
;assert_line               Allocated with name '_HAL_assert_fail_assert_line_2_2'
;dummy                     Allocated with name '_HAL_assert_fail_dummy_2_2'
;------------------------------------------------------------
	G$HAL_assert_fail$0$0 ==.
	C$hal_assert.c$111$0$0 ==.
;	../hal/Core8051s/SDCC/hal_assert.c:111: void HAL_assert_fail
;	-----------------------------------------
;	 function HAL_assert_fail
;	-----------------------------------------
_HAL_assert_fail:
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
	mov	dptr,#_HAL_assert_fail_file_name_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$hal_assert.c$117$1$1 ==.
;	../hal/Core8051s/SDCC/hal_assert.c:117: while(1)
00102$:
	C$hal_assert.c$119$2$1 ==.
;	../hal/Core8051s/SDCC/hal_assert.c:119: volatile const uint8_t * assert_file = file_name;
;	genAssign
	mov	dptr,#_HAL_assert_fail_file_name_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_assert_file_2_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	C$hal_assert.c$120$2$1 ==.
;	../hal/Core8051s/SDCC/hal_assert.c:120: volatile uint32_t assert_line = line_no;
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
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
;	genAssign
	mov	dptr,#_HAL_assert_fail_assert_line_2_2
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
	C$hal_assert.c$121$2$2 ==.
;	../hal/Core8051s/SDCC/hal_assert.c:121: volatile uint8_t dummy;        dummy = *assert_file;
;	genAssign
	mov	dptr,#_HAL_assert_fail_assert_file_2_2
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
	mov	r2,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_dummy_2_2
	mov	a,r2
	movx	@dptr,a
	ljmp	00102$
00104$:
	C$hal_assert.c$123$1$1 ==.
	XG$HAL_assert_fail$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
