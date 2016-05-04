;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:52:01 2016
;--------------------------------------------------------
	.module ___drivers_CoreTimer_core_timer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TMR_reload_PARM_2
	.globl _TMR_init_PARM_5
	.globl _TMR_init_PARM_4
	.globl _TMR_init_PARM_3
	.globl _TMR_init_PARM_2
	.globl _TMR_init
	.globl _TMR_start
	.globl _TMR_stop
	.globl _TMR_enable_int
	.globl _TMR_clear_int
	.globl _TMR_current_value
	.globl _TMR_reload
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
LTMR_init$sloc0$1$0==.
_TMR_init_sloc0_1_0:
	.ds 4
LTMR_init$sloc1$1$0==.
_TMR_init_sloc1_1_0:
	.ds 2
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
F___drivers_CoreTimer_core_timer$NULL_timer_instance$0$0==.
_NULL_timer_instance:
	.ds 3
LTMR_init$address$1$1==.
_TMR_init_PARM_2:
	.ds 2
LTMR_init$mode$1$1==.
_TMR_init_PARM_3:
	.ds 1
LTMR_init$prescale$1$1==.
_TMR_init_PARM_4:
	.ds 4
LTMR_init$load_value$1$1==.
_TMR_init_PARM_5:
	.ds 4
LTMR_init$this_timer$1$1==.
_TMR_init_this_timer_1_1:
	.ds 3
LTMR_init$file_name$3$3==.
_TMR_init_file_name_3_3:
	.ds 34
LTMR_init$file_name$3$5==.
_TMR_init_file_name_3_5:
	.ds 34
LTMR_init$file_name$3$7==.
_TMR_init_file_name_3_7:
	.ds 34
LTMR_start$this_timer$1$1==.
_TMR_start_this_timer_1_1:
	.ds 3
LTMR_start$file_name$3$3==.
_TMR_start_file_name_3_3:
	.ds 34
LTMR_stop$this_timer$1$1==.
_TMR_stop_this_timer_1_1:
	.ds 3
LTMR_stop$file_name$3$3==.
_TMR_stop_file_name_3_3:
	.ds 34
LTMR_enable_int$this_timer$1$1==.
_TMR_enable_int_this_timer_1_1:
	.ds 3
LTMR_enable_int$file_name$3$3==.
_TMR_enable_int_file_name_3_3:
	.ds 34
LTMR_clear_int$this_timer$1$1==.
_TMR_clear_int_this_timer_1_1:
	.ds 3
LTMR_clear_int$file_name$3$3==.
_TMR_clear_int_file_name_3_3:
	.ds 34
LTMR_current_value$this_timer$1$1==.
_TMR_current_value_this_timer_1_1:
	.ds 3
LTMR_current_value$file_name$3$3==.
_TMR_current_value_file_name_3_3:
	.ds 34
LTMR_reload$load_value$1$1==.
_TMR_reload_PARM_2:
	.ds 4
LTMR_reload$this_timer$1$1==.
_TMR_reload_this_timer_1_1:
	.ds 3
LTMR_reload$file_name$3$3==.
_TMR_reload_file_name_3_3:
	.ds 34
LTMR_reload$file_name$3$5==.
_TMR_reload_file_name_3_5:
	.ds 34
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
;Allocation info for local variables in function 'TMR_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_TMR_init_sloc0_1_0'
;sloc1                     Allocated with name '_TMR_init_sloc1_1_0'
;address                   Allocated with name '_TMR_init_PARM_2'
;mode                      Allocated with name '_TMR_init_PARM_3'
;prescale                  Allocated with name '_TMR_init_PARM_4'
;load_value                Allocated with name '_TMR_init_PARM_5'
;this_timer                Allocated with name '_TMR_init_this_timer_1_1'
;file_name                 Allocated with name '_TMR_init_file_name_3_3'
;file_name                 Allocated with name '_TMR_init_file_name_3_5'
;file_name                 Allocated with name '_TMR_init_file_name_3_7'
;------------------------------------------------------------
	G$TMR_init$0$0 ==.
	C$core_timer.c$24$0$0 ==.
;	../drivers/CoreTimer/core_timer.c:24: TMR_init
;	-----------------------------------------
;	 function TMR_init
;	-----------------------------------------
_TMR_init:
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
	mov	dptr,#_TMR_init_this_timer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_timer.c$33$2$2 ==.
;	../drivers/CoreTimer/core_timer.c:33: HAL_ASSERT( this_timer != NULL_timer_instance )
;	genAssign
	mov	dptr,#_TMR_init_this_timer_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_timer_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar5,00125$
	mov	a,r3
	cjne	a,ar6,00125$
	mov	a,r4
	cjne	a,ar7,00125$
	sjmp	00126$
00125$:
	ljmp	00104$
00126$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_init_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_3 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x21
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_init_file_name_3_3
	mov	dph,#(_TMR_init_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_timer.c$34$2$4 ==.
;	../drivers/CoreTimer/core_timer.c:34: HAL_ASSERT( prescale <= PRESCALER_DIV_1024 )
;	genAssign
	mov	dptr,#_TMR_init_PARM_4
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
	mov	a,#0x09
	subb	a,r2
	mov	a,#0x00
	subb	a,r3
	mov	a,#0x00
	subb	a,r4
	mov	a,#0x00
	subb	a,r5
;	genIfxJump
	jc	00127$
	ljmp	00109$
00127$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_init_file_name_3_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_5 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_init_file_name_3_5
	mov	dph,#(_TMR_init_file_name_3_5 >> 8)
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
	C$core_timer.c$35$2$6 ==.
;	../drivers/CoreTimer/core_timer.c:35: HAL_ASSERT( load_value != 0 )
;	genAssign
	mov	dptr,#_TMR_init_PARM_5
	movx	a,@dptr
	mov	_TMR_init_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_TMR_init_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_TMR_init_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_TMR_init_sloc0_1_0 + 3),a
;	genCmpEq
;	gencjneshort
	mov	a,_TMR_init_sloc0_1_0
	jnz	00128$
	mov	a,(_TMR_init_sloc0_1_0 + 1)
	jnz	00128$
	mov	a,(_TMR_init_sloc0_1_0 + 2)
	jnz	00128$
	mov	a,(_TMR_init_sloc0_1_0 + 3)
	jnz	00128$
	sjmp	00129$
00128$:
	ljmp	00114$
00129$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_init_file_name_3_7
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_init_file_name_3_7 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x23
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_init_file_name_3_7
	mov	dph,#(_TMR_init_file_name_3_7 >> 8)
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
00114$:
	C$core_timer.c$37$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:37: this_timer->base_address = address;
;	genAssign
	mov	dptr,#_TMR_init_this_timer_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genAssign
	mov	dptr,#_TMR_init_PARM_2
	movx	a,@dptr
	mov	_TMR_init_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_TMR_init_sloc1_1_0 + 1),a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,_TMR_init_sloc1_1_0
	lcall	__gptrput
	inc	dptr
	mov	a,(_TMR_init_sloc1_1_0 + 1)
	lcall	__gptrput
	C$core_timer.c$40$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:40: HAL_set_32bit_reg_field( address, InterruptEnable,0 );
;	genPlus
;	genPlusIncr
	mov	a,#0x08
	add	a,_TMR_init_sloc1_1_0
	mov	r6,a
	mov	a,#0x00
	addc	a,(_TMR_init_sloc1_1_0 + 1)
	mov	r7,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	mov	a,#0x01
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_HW_set_32bit_reg_field
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_timer.c$43$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:43: HAL_set_32bit_reg_field( address, TimerEnable, 0 );
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_HW_set_32bit_reg_field
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_timer.c$46$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:46: HAL_set_32bit_reg( address, TimerIntClr, 1 );
;	genPlus
;	genPlusIncr
	mov	a,#0x10
	add	a,_TMR_init_sloc1_1_0
	mov	r6,a
	mov	a,#0x00
	addc	a,(_TMR_init_sloc1_1_0 + 1)
	mov	r7,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_HW_set_32bit_reg
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_timer.c$49$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:49: HAL_set_32bit_reg( address, TimerPrescale, prescale );
;	genPlus
;	genPlusIncr
	mov	a,#0x0C
	add	a,_TMR_init_sloc1_1_0
	mov	r6,a
	mov	a,#0x00
	addc	a,(_TMR_init_sloc1_1_0 + 1)
	mov	r7,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
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
;	genCall
	mov	dpl,r6
	mov	dph,r7
	lcall	_HW_set_32bit_reg
	C$core_timer.c$50$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:50: HAL_set_32bit_reg( address, TimerLoad, load_value );
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
	mov	a,_TMR_init_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_TMR_init_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_TMR_init_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_TMR_init_sloc0_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,_TMR_init_sloc1_1_0
	mov	dph,(_TMR_init_sloc1_1_0 + 1)
	lcall	_HW_set_32bit_reg
	C$core_timer.c$53$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:53: if ( mode == TMR_CONTINUOUS_MODE )
;	genAssign
	mov	dptr,#_TMR_init_PARM_3
	movx	a,@dptr
	mov	r2,a
;	genIfx
	mov	a,r2
;	genIfxJump
	jz	00130$
	ljmp	00117$
00130$:
	C$core_timer.c$55$2$8 ==.
;	../drivers/CoreTimer/core_timer.c:55: HAL_set_32bit_reg_field( address, TimerMode, 0 );
;	genPlus
;	genPlusIncr
	mov	a,#0x08
	add	a,_TMR_init_sloc1_1_0
	mov	r2,a
	mov	a,#0x00
	addc	a,(_TMR_init_sloc1_1_0 + 1)
	mov	r3,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	mov	a,#0x02
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg_field
	ljmp	00119$
00117$:
	C$core_timer.c$60$2$9 ==.
;	../drivers/CoreTimer/core_timer.c:60: HAL_set_32bit_reg_field( address, TimerMode, 1 );
;	genPlus
;	genPlusIncr
	mov	a,#0x08
	add	a,_TMR_init_sloc1_1_0
	mov	r2,a
	mov	a,#0x00
	addc	a,(_TMR_init_sloc1_1_0 + 1)
	mov	r3,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	mov	a,#0x02
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg_field
00119$:
	C$core_timer.c$62$1$1 ==.
	XG$TMR_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TMR_start'
;------------------------------------------------------------
;this_timer                Allocated with name '_TMR_start_this_timer_1_1'
;file_name                 Allocated with name '_TMR_start_file_name_3_3'
;------------------------------------------------------------
	G$TMR_start$0$0 ==.
	C$core_timer.c$69$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:69: TMR_start
;	-----------------------------------------
;	 function TMR_start
;	-----------------------------------------
_TMR_start:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_TMR_start_this_timer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_timer.c$74$2$2 ==.
;	../drivers/CoreTimer/core_timer.c:74: HAL_ASSERT( this_timer != NULL_timer_instance )
;	genAssign
	mov	dptr,#_TMR_start_this_timer_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_timer_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar5,00109$
	mov	a,r3
	cjne	a,ar6,00109$
	mov	a,r4
	cjne	a,ar7,00109$
	sjmp	00110$
00109$:
	ljmp	00104$
00110$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_start_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_start_file_name_3_3 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x4A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_start_file_name_3_3
	mov	dph,#(_TMR_start_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_timer.c$76$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:76: HAL_set_32bit_reg_field( this_timer->base_address, TimerEnable, 1 );
;	genAssign
	mov	dptr,#_TMR_start_this_timer_1_1
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
	inc	dptr
	lcall	__gptrget
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
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg_field
00106$:
	C$core_timer.c$77$1$1 ==.
	XG$TMR_start$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TMR_stop'
;------------------------------------------------------------
;this_timer                Allocated with name '_TMR_stop_this_timer_1_1'
;file_name                 Allocated with name '_TMR_stop_file_name_3_3'
;------------------------------------------------------------
	G$TMR_stop$0$0 ==.
	C$core_timer.c$84$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:84: TMR_stop
;	-----------------------------------------
;	 function TMR_stop
;	-----------------------------------------
_TMR_stop:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_TMR_stop_this_timer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_timer.c$89$2$2 ==.
;	../drivers/CoreTimer/core_timer.c:89: HAL_ASSERT( this_timer != NULL_timer_instance )
;	genAssign
	mov	dptr,#_TMR_stop_this_timer_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_timer_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar5,00109$
	mov	a,r3
	cjne	a,ar6,00109$
	mov	a,r4
	cjne	a,ar7,00109$
	sjmp	00110$
00109$:
	ljmp	00104$
00110$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_stop_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_stop_file_name_3_3 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x59
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_stop_file_name_3_3
	mov	dph,#(_TMR_stop_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_timer.c$91$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:91: HAL_set_32bit_reg_field( this_timer->base_address, TimerEnable, 0 );
;	genAssign
	mov	dptr,#_TMR_stop_this_timer_1_1
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
	inc	dptr
	lcall	__gptrget
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
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg_field
00106$:
	C$core_timer.c$92$1$1 ==.
	XG$TMR_stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TMR_enable_int'
;------------------------------------------------------------
;this_timer                Allocated with name '_TMR_enable_int_this_timer_1_1'
;file_name                 Allocated with name '_TMR_enable_int_file_name_3_3'
;------------------------------------------------------------
	G$TMR_enable_int$0$0 ==.
	C$core_timer.c$100$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:100: TMR_enable_int
;	-----------------------------------------
;	 function TMR_enable_int
;	-----------------------------------------
_TMR_enable_int:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_TMR_enable_int_this_timer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_timer.c$105$2$2 ==.
;	../drivers/CoreTimer/core_timer.c:105: HAL_ASSERT( this_timer != NULL_timer_instance )
;	genAssign
	mov	dptr,#_TMR_enable_int_this_timer_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_timer_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar5,00109$
	mov	a,r3
	cjne	a,ar6,00109$
	mov	a,r4
	cjne	a,ar7,00109$
	sjmp	00110$
00109$:
	ljmp	00104$
00110$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_enable_int_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_enable_int_file_name_3_3 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x69
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_enable_int_file_name_3_3
	mov	dph,#(_TMR_enable_int_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_timer.c$107$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:107: HAL_set_32bit_reg_field( this_timer->base_address, InterruptEnable, 1 );
;	genAssign
	mov	dptr,#_TMR_enable_int_this_timer_1_1
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
	inc	dptr
	lcall	__gptrget
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
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	mov	a,#0x01
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg_field
00106$:
	C$core_timer.c$108$1$1 ==.
	XG$TMR_enable_int$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TMR_clear_int'
;------------------------------------------------------------
;this_timer                Allocated with name '_TMR_clear_int_this_timer_1_1'
;file_name                 Allocated with name '_TMR_clear_int_file_name_3_3'
;------------------------------------------------------------
	G$TMR_clear_int$0$0 ==.
	C$core_timer.c$115$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:115: TMR_clear_int
;	-----------------------------------------
;	 function TMR_clear_int
;	-----------------------------------------
_TMR_clear_int:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_TMR_clear_int_this_timer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_timer.c$120$2$2 ==.
;	../drivers/CoreTimer/core_timer.c:120: HAL_ASSERT( this_timer != NULL_timer_instance )
;	genAssign
	mov	dptr,#_TMR_clear_int_this_timer_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_timer_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar5,00109$
	mov	a,r3
	cjne	a,ar6,00109$
	mov	a,r4
	cjne	a,ar7,00109$
	sjmp	00110$
00109$:
	ljmp	00104$
00110$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_clear_int_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_clear_int_file_name_3_3 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x78
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_clear_int_file_name_3_3
	mov	dph,#(_TMR_clear_int_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_timer.c$122$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:122: HAL_set_32bit_reg( this_timer->base_address, TimerIntClr, 0x01 );
;	genAssign
	mov	dptr,#_TMR_clear_int_this_timer_1_1
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
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg
00106$:
	C$core_timer.c$123$1$1 ==.
	XG$TMR_clear_int$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TMR_current_value'
;------------------------------------------------------------
;this_timer                Allocated with name '_TMR_current_value_this_timer_1_1'
;value                     Allocated with name '_TMR_current_value_value_1_1'
;file_name                 Allocated with name '_TMR_current_value_file_name_3_3'
;------------------------------------------------------------
	G$TMR_current_value$0$0 ==.
	C$core_timer.c$130$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:130: TMR_current_value
;	-----------------------------------------
;	 function TMR_current_value
;	-----------------------------------------
_TMR_current_value:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_TMR_current_value_this_timer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_timer.c$136$2$2 ==.
;	../drivers/CoreTimer/core_timer.c:136: HAL_ASSERT( this_timer != NULL_timer_instance )
;	genAssign
	mov	dptr,#_TMR_current_value_this_timer_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_timer_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar5,00109$
	mov	a,r3
	cjne	a,ar6,00109$
	mov	a,r4
	cjne	a,ar7,00109$
	sjmp	00110$
00109$:
	ljmp	00104$
00110$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_current_value_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_current_value_file_name_3_3 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x88
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_current_value_file_name_3_3
	mov	dph,#(_TMR_current_value_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_timer.c$138$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:138: value = HAL_get_32bit_reg( this_timer->base_address, TimerValue );
;	genAssign
	mov	dptr,#_TMR_current_value_this_timer_1_1
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
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_get_32bit_reg
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	C$core_timer.c$140$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:140: return value;
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00106$:
	C$core_timer.c$141$1$1 ==.
	XG$TMR_current_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TMR_reload'
;------------------------------------------------------------
;load_value                Allocated with name '_TMR_reload_PARM_2'
;this_timer                Allocated with name '_TMR_reload_this_timer_1_1'
;file_name                 Allocated with name '_TMR_reload_file_name_3_3'
;file_name                 Allocated with name '_TMR_reload_file_name_3_5'
;------------------------------------------------------------
	G$TMR_reload$0$0 ==.
	C$core_timer.c$147$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:147: void TMR_reload
;	-----------------------------------------
;	 function TMR_reload
;	-----------------------------------------
_TMR_reload:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_TMR_reload_this_timer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_timer.c$153$2$2 ==.
;	../drivers/CoreTimer/core_timer.c:153: HAL_ASSERT( this_timer != NULL_timer_instance )
;	genAssign
	mov	dptr,#_TMR_reload_this_timer_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_timer_instance
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar5,00115$
	mov	a,r3
	cjne	a,ar6,00115$
	mov	a,r4
	cjne	a,ar7,00115$
	sjmp	00116$
00115$:
	ljmp	00104$
00116$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_reload_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_3 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x99
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_reload_file_name_3_3
	mov	dph,#(_TMR_reload_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_timer.c$154$2$4 ==.
;	../drivers/CoreTimer/core_timer.c:154: HAL_ASSERT( load_value != 0 )
;	genAssign
	mov	dptr,#_TMR_reload_PARM_2
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
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00117$
	cjne	r3,#0x00,00117$
	cjne	r4,#0x00,00117$
	cjne	r5,#0x00,00117$
	sjmp	00118$
00117$:
	ljmp	00109$
00118$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_TMR_reload_file_name_3_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x000f)
	mov	a,#0x54
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0010)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0011)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0014)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0016)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0018)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0019)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x001a)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x001c)
	mov	a,#0x6D
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x001d)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x001e)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x001f)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_TMR_reload_file_name_3_5 + 0x0021)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x9A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_TMR_reload_file_name_3_5
	mov	dph,#(_TMR_reload_file_name_3_5 >> 8)
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
	C$core_timer.c$156$1$1 ==.
;	../drivers/CoreTimer/core_timer.c:156: HAL_set_32bit_reg(this_timer->base_address, TimerLoad, load_value );
;	genAssign
	mov	dptr,#_TMR_reload_this_timer_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
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
;	genCall
	mov	dpl,r6
	mov	dph,r7
	lcall	_HW_set_32bit_reg
00111$:
	C$core_timer.c$157$1$1 ==.
	XG$TMR_reload$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
