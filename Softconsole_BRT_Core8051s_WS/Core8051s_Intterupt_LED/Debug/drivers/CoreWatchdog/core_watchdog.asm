;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:51:57 2016
;--------------------------------------------------------
	.module ___drivers_CoreWatchdog_core_watchdog
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WD_init_PARM_4
	.globl _WD_init_PARM_3
	.globl _WD_init_PARM_2
	.globl _WD_init
	.globl _WD_enable
	.globl _WD_disable
	.globl _WD_reload
	.globl _WD_current_value
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
LWD_init$sloc0$1$0==.
_WD_init_sloc0_1_0:
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
F___drivers_CoreWatchdog_core_watchdog$NULL_instance$0$0==.
_NULL_instance:
	.ds 3
LWD_init$base$1$1==.
_WD_init_PARM_2:
	.ds 2
LWD_init$value$1$1==.
_WD_init_PARM_3:
	.ds 4
LWD_init$scale$1$1==.
_WD_init_PARM_4:
	.ds 4
LWD_init$instance$1$1==.
_WD_init_instance_1_1:
	.ds 3
LWD_init$file_name$3$3==.
_WD_init_file_name_3_3:
	.ds 40
LWD_init$file_name$3$5==.
_WD_init_file_name_3_5:
	.ds 40
LWD_enable$instance$1$1==.
_WD_enable_instance_1_1:
	.ds 3
LWD_enable$file_name$3$3==.
_WD_enable_file_name_3_3:
	.ds 40
LWD_disable$instance$1$1==.
_WD_disable_instance_1_1:
	.ds 3
LWD_disable$file_name$3$3==.
_WD_disable_file_name_3_3:
	.ds 40
LWD_reload$instance$1$1==.
_WD_reload_instance_1_1:
	.ds 3
LWD_reload$file_name$3$3==.
_WD_reload_file_name_3_3:
	.ds 40
LWD_current_value$instance$1$1==.
_WD_current_value_instance_1_1:
	.ds 3
LWD_current_value$file_name$3$3==.
_WD_current_value_file_name_3_3:
	.ds 40
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
;Allocation info for local variables in function 'WD_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_WD_init_sloc0_1_0'
;base                      Allocated with name '_WD_init_PARM_2'
;value                     Allocated with name '_WD_init_PARM_3'
;scale                     Allocated with name '_WD_init_PARM_4'
;instance                  Allocated with name '_WD_init_instance_1_1'
;file_name                 Allocated with name '_WD_init_file_name_3_3'
;file_name                 Allocated with name '_WD_init_file_name_3_5'
;------------------------------------------------------------
	G$WD_init$0$0 ==.
	C$core_watchdog.c$26$0$0 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:26: WD_init
;	-----------------------------------------
;	 function WD_init
;	-----------------------------------------
_WD_init:
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
	mov	dptr,#_WD_init_instance_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_watchdog.c$34$2$2 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:34: HAL_ASSERT( instance != NULL_instance )
;	genAssign
	mov	dptr,#_WD_init_instance_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_instance
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
	mov	dptr,#_WD_init_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x000f)
	mov	a,#0x57
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0010)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0012)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0013)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0014)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0016)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0017)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0018)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0019)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x001a)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x001b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x001c)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x001d)
	mov	a,#0x77
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x001e)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0021)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0022)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0023)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0024)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0025)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0026)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_3 + 0x0027)
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
	mov	dpl,#_WD_init_file_name_3_3
	mov	dph,#(_WD_init_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_watchdog.c$35$2$4 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:35: HAL_ASSERT( scale <= WD_PRESCALER_DIV_1024 )
;	genAssign
	mov	dptr,#_WD_init_PARM_4
	movx	a,@dptr
	mov	_WD_init_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_WD_init_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_WD_init_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_WD_init_sloc0_1_0 + 3),a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x09
	subb	a,_WD_init_sloc0_1_0
	mov	a,#0x00
	subb	a,(_WD_init_sloc0_1_0 + 1)
	mov	a,#0x00
	subb	a,(_WD_init_sloc0_1_0 + 2)
	mov	a,#0x00
	subb	a,(_WD_init_sloc0_1_0 + 3)
;	genIfxJump
	jc	00117$
	ljmp	00109$
00117$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_WD_init_file_name_3_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x000f)
	mov	a,#0x57
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0010)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0012)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0013)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0014)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0016)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0017)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0018)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0019)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x001a)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x001b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x001c)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x001d)
	mov	a,#0x77
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x001e)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0021)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0022)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0023)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0024)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0025)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0026)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_init_file_name_3_5 + 0x0027)
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
	mov	dpl,#_WD_init_file_name_3_5
	mov	dph,#(_WD_init_file_name_3_5 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00109$:
	C$core_watchdog.c$37$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:37: instance->base_address = base;
;	genAssign
	mov	dptr,#_WD_init_instance_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genAssign
	mov	dptr,#_WD_init_PARM_2
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
	C$core_watchdog.c$40$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:40: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 0 );
;	genPlus
;	genPlusIncr
	mov	a,#0x08
	add	a,ar1
	mov	r1,a
	mov	a,#0x00
	addc	a,ar2
	mov	r2,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	mov	a,#0x04
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x10
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
	mov	dpl,r1
	mov	dph,r2
	push	ar6
	push	ar7
	push	ar0
	lcall	_HW_set_32bit_reg_field
	pop	ar0
	pop	ar7
	pop	ar6
	C$core_watchdog.c$43$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:43: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_PRESCALE, scale );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
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
	mov	a,#0x0F
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
	mov	a,_WD_init_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_WD_init_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_WD_init_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_WD_init_sloc0_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	push	ar0
	lcall	_HW_set_32bit_reg_field
	pop	ar0
	pop	ar7
	pop	ar6
	C$core_watchdog.c$44$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:44: HAL_set_32bit_reg( instance->base_address, WDOGLOAD, value );
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
	mov	dptr,#_WD_init_PARM_3
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
	C$core_watchdog.c$45$1$1 ==.
	XG$WD_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WD_enable'
;------------------------------------------------------------
;instance                  Allocated with name '_WD_enable_instance_1_1'
;file_name                 Allocated with name '_WD_enable_file_name_3_3'
;------------------------------------------------------------
	G$WD_enable$0$0 ==.
	C$core_watchdog.c$52$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:52: WD_enable
;	-----------------------------------------
;	 function WD_enable
;	-----------------------------------------
_WD_enable:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_WD_enable_instance_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_watchdog.c$57$2$2 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:57: HAL_ASSERT( instance != NULL_instance )
;	genAssign
	mov	dptr,#_WD_enable_instance_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_instance
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
	mov	dptr,#_WD_enable_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000f)
	mov	a,#0x57
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0010)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0012)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0013)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0014)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0016)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0017)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0018)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0019)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001a)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001c)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001d)
	mov	a,#0x77
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001e)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0021)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0022)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0023)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0024)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0025)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0026)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0027)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x39
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_WD_enable_file_name_3_3
	mov	dph,#(_WD_enable_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_watchdog.c$59$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:59: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 1 );
;	genAssign
	mov	dptr,#_WD_enable_instance_1_1
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
	mov	a,#0x04
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x10
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
	C$core_watchdog.c$60$1$1 ==.
	XG$WD_enable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WD_disable'
;------------------------------------------------------------
;instance                  Allocated with name '_WD_disable_instance_1_1'
;file_name                 Allocated with name '_WD_disable_file_name_3_3'
;------------------------------------------------------------
	G$WD_disable$0$0 ==.
	C$core_watchdog.c$68$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:68: WD_disable
;	-----------------------------------------
;	 function WD_disable
;	-----------------------------------------
_WD_disable:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_WD_disable_instance_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_watchdog.c$73$2$2 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:73: HAL_ASSERT( instance != NULL_instance )
;	genAssign
	mov	dptr,#_WD_disable_instance_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_instance
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
	mov	dptr,#_WD_disable_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000f)
	mov	a,#0x57
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0010)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0012)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0013)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0014)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0016)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0017)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0018)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0019)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001a)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001c)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001d)
	mov	a,#0x77
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001e)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0021)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0022)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0023)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0024)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0025)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0026)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0027)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x49
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_WD_disable_file_name_3_3
	mov	dph,#(_WD_disable_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_watchdog.c$75$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:75: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 0 );
;	genAssign
	mov	dptr,#_WD_disable_instance_1_1
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
	mov	a,#0x04
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	mov	a,#0x10
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
	C$core_watchdog.c$76$1$1 ==.
	XG$WD_disable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WD_reload'
;------------------------------------------------------------
;instance                  Allocated with name '_WD_reload_instance_1_1'
;file_name                 Allocated with name '_WD_reload_file_name_3_3'
;------------------------------------------------------------
	G$WD_reload$0$0 ==.
	C$core_watchdog.c$84$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:84: WD_reload
;	-----------------------------------------
;	 function WD_reload
;	-----------------------------------------
_WD_reload:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_WD_reload_instance_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_watchdog.c$89$2$2 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:89: HAL_ASSERT( instance != NULL_instance )
;	genAssign
	mov	dptr,#_WD_reload_instance_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_instance
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
	mov	dptr,#_WD_reload_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000f)
	mov	a,#0x57
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0010)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0012)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0013)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0014)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0016)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0017)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0018)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0019)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001a)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001c)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001d)
	mov	a,#0x77
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001e)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0021)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0022)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0023)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0024)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0025)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0026)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0027)
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
	mov	dpl,#_WD_reload_file_name_3_3
	mov	dph,#(_WD_reload_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_watchdog.c$91$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:91: HAL_set_32bit_reg( instance->base_address, WDOGREFRESH, 1 );
;	genAssign
	mov	dptr,#_WD_reload_instance_1_1
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
	mov	a,#0x0C
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
	C$core_watchdog.c$92$1$1 ==.
	XG$WD_reload$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WD_current_value'
;------------------------------------------------------------
;instance                  Allocated with name '_WD_current_value_instance_1_1'
;file_name                 Allocated with name '_WD_current_value_file_name_3_3'
;------------------------------------------------------------
	G$WD_current_value$0$0 ==.
	C$core_watchdog.c$100$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:100: WD_current_value
;	-----------------------------------------
;	 function WD_current_value
;	-----------------------------------------
_WD_current_value:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_WD_current_value_instance_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_watchdog.c$105$2$2 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:105: HAL_ASSERT( instance != NULL_instance )
;	genAssign
	mov	dptr,#_WD_current_value_instance_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_NULL_instance
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
	mov	dptr,#_WD_current_value_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000f)
	mov	a,#0x57
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0010)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0012)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0013)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0014)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0016)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0017)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0018)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0019)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001a)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001b)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001c)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001d)
	mov	a,#0x77
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001e)
	mov	a,#0x61
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0020)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0021)
	mov	a,#0x68
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0022)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0023)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0024)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0025)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0026)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0027)
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
	mov	dpl,#_WD_current_value_file_name_3_3
	mov	dph,#(_WD_current_value_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_watchdog.c$107$1$1 ==.
;	../drivers/CoreWatchdog/core_watchdog.c:107: return HAL_get_32bit_reg( instance->base_address, WDOGVALUE );
;	genAssign
	mov	dptr,#_WD_current_value_instance_1_1
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
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00106$:
	C$core_watchdog.c$108$1$1 ==.
	XG$WD_current_value$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
