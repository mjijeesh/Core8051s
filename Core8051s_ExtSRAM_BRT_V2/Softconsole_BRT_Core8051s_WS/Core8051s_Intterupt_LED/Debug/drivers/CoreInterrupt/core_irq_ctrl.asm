;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:51:58 2016
;--------------------------------------------------------
	.module ___drivers_CoreInterrupt_core_irq_ctrl
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CIC_set_irq_handler_PARM_2
	.globl _CIC_init
	.globl _CIC_set_irq_handler
	.globl _CIC_get_irq_status
	.globl _CIC_enable_irq
	.globl _CIC_disable_irq
	.globl _CIC_irq_handler
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
F___drivers_CoreInterrupt_core_irq_ctrl$g_irq_handler_table$0$0==.
_g_irq_handler_table:
	.ds 64
LCIC_init$address$1$1==.
_CIC_init_address_1_1:
	.ds 2
LCIC_init$irq_idx$1$1==.
_CIC_init_irq_idx_1_1:
	.ds 1
LCIC_set_irq_handler$handler$1$1==.
_CIC_set_irq_handler_PARM_2:
	.ds 2
LCIC_set_irq_handler$irq_number$1$1==.
_CIC_set_irq_handler_irq_number_1_1:
	.ds 1
LCIC_set_irq_handler$file_name$3$3==.
_CIC_set_irq_handler_file_name_3_3:
	.ds 41
LCIC_enable_irq$irq_number$1$1==.
_CIC_enable_irq_irq_number_1_1:
	.ds 1
LCIC_enable_irq$file_name$3$3==.
_CIC_enable_irq_file_name_3_3:
	.ds 41
LCIC_disable_irq$irq_number$1$1==.
_CIC_disable_irq_irq_number_1_1:
	.ds 1
LCIC_disable_irq$file_name$3$3==.
_CIC_disable_irq_file_name_3_3:
	.ds 41
LCIC_irq_handler$irq_idx$1$1==.
_CIC_irq_handler_irq_idx_1_1:
	.ds 1
LCIC_irq_handler$file_name$6$6==.
_CIC_irq_handler_file_name_6_6:
	.ds 41
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
F___drivers_CoreInterrupt_core_irq_ctrl$g_cic_base_addr$0$0==.
_g_cic_base_addr:
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
;Allocation info for local variables in function 'CIC_init'
;------------------------------------------------------------
;address                   Allocated with name '_CIC_init_address_1_1'
;irq_idx                   Allocated with name '_CIC_init_irq_idx_1_1'
;------------------------------------------------------------
	G$CIC_init$0$0 ==.
	C$core_irq_ctrl.c$41$0$0 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:41: CIC_init
;	-----------------------------------------
;	 function CIC_init
;	-----------------------------------------
_CIC_init:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_CIC_init_address_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_irq_ctrl.c$47$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:47: g_cic_base_addr = address;
;	genAssign
	mov	dptr,#_CIC_init_address_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_g_cic_base_addr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$core_irq_ctrl.c$50$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:50: HAL_set_32bit_reg( g_cic_base_addr, FIQEnableClear, CLEAR_ALL_BITS );
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
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg
	C$core_irq_ctrl.c$53$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:53: HAL_set_32bit_reg( g_cic_base_addr, IRQEnableClear, CLEAR_ALL_BITS );
;	genAssign
	mov	dptr,#_g_cic_base_addr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x24
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg
	C$core_irq_ctrl.c$56$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:56: for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
;	genAssign
	mov	dptr,#_CIC_init_irq_idx_1_1
	mov	a,#0x00
	movx	@dptr,a
00101$:
;	genAssign
	mov	dptr,#_CIC_init_irq_idx_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x20,00109$
00109$:
;	genIfxJump
	jc	00110$
	ljmp	00105$
00110$:
	C$core_irq_ctrl.c$58$2$2 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:58: g_irq_handler_table[irq_idx] = NO_HANDLER;
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	mov	a,r2
	add	a,acc
	mov	r3,a
;	genPlus
	mov	a,ar3
	add	a,#_g_irq_handler_table
	mov	dpl,a
	mov	a,#0x00
	addc	a,#(_g_irq_handler_table >> 8)
	mov	dph,a
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	C$core_irq_ctrl.c$56$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:56: for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
;	genPlus
	mov	dptr,#_CIC_init_irq_idx_1_1
;	genPlusIncr
	mov	a,r2
	inc	a
	movx	@dptr,a
	ljmp	00101$
00105$:
	C$core_irq_ctrl.c$60$1$1 ==.
	XG$CIC_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CIC_set_irq_handler'
;------------------------------------------------------------
;handler                   Allocated with name '_CIC_set_irq_handler_PARM_2'
;irq_number                Allocated with name '_CIC_set_irq_handler_irq_number_1_1'
;file_name                 Allocated with name '_CIC_set_irq_handler_file_name_3_3'
;------------------------------------------------------------
	G$CIC_set_irq_handler$0$0 ==.
	C$core_irq_ctrl.c$67$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:67: CIC_set_irq_handler
;	-----------------------------------------
;	 function CIC_set_irq_handler
;	-----------------------------------------
_CIC_set_irq_handler:
;	genReceive
	mov	a,dpl
	mov	dptr,#_CIC_set_irq_handler_irq_number_1_1
	movx	@dptr,a
	C$core_irq_ctrl.c$73$2$2 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:73: HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
;	genAssign
	mov	dptr,#_CIC_set_irq_handler_irq_number_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x20,00109$
00109$:
;	genIfxJump
	jnc	00110$
	ljmp	00104$
00110$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_CIC_set_irq_handler_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000f)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0010)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0014)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0015)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0016)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0017)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0018)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0019)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001a)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001b)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001c)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001d)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001e)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001f)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0020)
	mov	a,#0x71
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0021)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0022)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0023)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0024)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0025)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0026)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0027)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0028)
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
	mov	dpl,#_CIC_set_irq_handler_file_name_3_3
	mov	dph,#(_CIC_set_irq_handler_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_irq_ctrl.c$75$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:75: g_irq_handler_table[irq_number] = handler;
;	genAssign
	mov	dptr,#_CIC_set_irq_handler_irq_number_1_1
	movx	a,@dptr
	mov	r2,a
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	mov	a,r2
	add	a,acc
	mov	r2,a
;	genPlus
	mov	a,ar2
	add	a,#_g_irq_handler_table
	mov	r2,a
	mov	a,#0x00
	addc	a,#(_g_irq_handler_table >> 8)
	mov	r3,a
;	genAssign
	mov	dptr,#_CIC_set_irq_handler_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00106$:
	C$core_irq_ctrl.c$76$1$1 ==.
	XG$CIC_set_irq_handler$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CIC_get_irq_status'
;------------------------------------------------------------
;irq_status                Allocated with name '_CIC_get_irq_status_irq_status_1_1'
;------------------------------------------------------------
	G$CIC_get_irq_status$0$0 ==.
	C$core_irq_ctrl.c$83$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:83: CIC_get_irq_status
;	-----------------------------------------
;	 function CIC_get_irq_status
;	-----------------------------------------
_CIC_get_irq_status:
	C$core_irq_ctrl.c$90$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:90: irq_status = HAL_get_32bit_reg( g_cic_base_addr, IRQStatus );
;	genAssign
	mov	dptr,#_g_cic_base_addr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x2C
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
	C$core_irq_ctrl.c$92$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:92: return irq_status;
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00101$:
	C$core_irq_ctrl.c$93$1$1 ==.
	XG$CIC_get_irq_status$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CIC_enable_irq'
;------------------------------------------------------------
;irq_number                Allocated with name '_CIC_enable_irq_irq_number_1_1'
;enabled_irqs              Allocated with name '_CIC_enable_irq_enabled_irqs_1_1'
;file_name                 Allocated with name '_CIC_enable_irq_file_name_3_3'
;------------------------------------------------------------
	G$CIC_enable_irq$0$0 ==.
	C$core_irq_ctrl.c$100$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:100: CIC_enable_irq
;	-----------------------------------------
;	 function CIC_enable_irq
;	-----------------------------------------
_CIC_enable_irq:
;	genReceive
	mov	a,dpl
	mov	dptr,#_CIC_enable_irq_irq_number_1_1
	movx	@dptr,a
	C$core_irq_ctrl.c$107$2$2 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:107: HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
;	genAssign
	mov	dptr,#_CIC_enable_irq_irq_number_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x20,00109$
00109$:
;	genIfxJump
	jnc	00110$
	ljmp	00104$
00110$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_CIC_enable_irq_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000f)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0010)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0014)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0015)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0016)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0017)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0018)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0019)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001a)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001b)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001c)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001d)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001e)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001f)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0020)
	mov	a,#0x71
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0021)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0022)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0023)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0024)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0025)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0026)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0027)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0028)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x6B
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_CIC_enable_irq_file_name_3_3
	mov	dph,#(_CIC_enable_irq_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_irq_ctrl.c$109$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:109: enabled_irqs = HAL_get_32bit_reg( g_cic_base_addr, IRQEnable );
;	genAssign
	mov	dptr,#_g_cic_base_addr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x20
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
	C$core_irq_ctrl.c$110$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:110: enabled_irqs |= 1 << irq_number;
;	genAssign
	mov	dptr,#_CIC_enable_irq_irq_number_1_1
	movx	a,@dptr
	mov	r6,a
;	genLeftShift
	mov	b,r6
	inc	b
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00112$
00111$:
	mov	a,r6
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00112$:
	djnz	b,00111$
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genOr
	mov	a,r6
	orl	ar2,a
	mov	a,r7
	orl	ar3,a
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	C$core_irq_ctrl.c$111$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:111: HAL_set_32bit_reg( g_cic_base_addr, IRQEnable, enabled_irqs );
;	genAssign
	mov	dptr,#_g_cic_base_addr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x20
	add	a,ar6
	mov	r6,a
	mov	a,#0x00
	addc	a,ar7
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
00106$:
	C$core_irq_ctrl.c$112$1$1 ==.
	XG$CIC_enable_irq$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CIC_disable_irq'
;------------------------------------------------------------
;irq_number                Allocated with name '_CIC_disable_irq_irq_number_1_1'
;clear_bit                 Allocated with name '_CIC_disable_irq_clear_bit_1_1'
;file_name                 Allocated with name '_CIC_disable_irq_file_name_3_3'
;------------------------------------------------------------
	G$CIC_disable_irq$0$0 ==.
	C$core_irq_ctrl.c$119$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:119: CIC_disable_irq
;	-----------------------------------------
;	 function CIC_disable_irq
;	-----------------------------------------
_CIC_disable_irq:
;	genReceive
	mov	a,dpl
	mov	dptr,#_CIC_disable_irq_irq_number_1_1
	movx	@dptr,a
	C$core_irq_ctrl.c$126$2$2 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:126: HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
;	genAssign
	mov	dptr,#_CIC_disable_irq_irq_number_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x20,00109$
00109$:
;	genIfxJump
	jnc	00110$
	ljmp	00104$
00110$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_CIC_disable_irq_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000f)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0010)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0014)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0015)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0016)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0017)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0018)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0019)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001a)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001b)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001c)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001d)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001e)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001f)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0020)
	mov	a,#0x71
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0021)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0022)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0023)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0024)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0025)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0026)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0027)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0028)
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
	mov	dpl,#_CIC_disable_irq_file_name_3_3
	mov	dph,#(_CIC_disable_irq_file_name_3_3 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00104$:
	C$core_irq_ctrl.c$128$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:128: clear_bit = 1 << irq_number;
;	genAssign
	mov	dptr,#_CIC_disable_irq_irq_number_1_1
	movx	a,@dptr
	mov	r2,a
;	genLeftShift
	mov	b,r2
	inc	b
	mov	r2,#0x01
	mov	r3,#0x00
	sjmp	00112$
00111$:
	mov	a,r2
	add	a,acc
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
00112$:
	djnz	b,00111$
;	genCast
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
	C$core_irq_ctrl.c$129$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:129: HAL_set_32bit_reg( g_cic_base_addr, IRQEnableClear, clear_bit );
;	genAssign
	mov	dptr,#_g_cic_base_addr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x24
	add	a,ar6
	mov	r6,a
	mov	a,#0x00
	addc	a,ar7
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
00106$:
	C$core_irq_ctrl.c$130$1$1 ==.
	XG$CIC_disable_irq$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CIC_irq_handler'
;------------------------------------------------------------
;irq_idx                   Allocated with name '_CIC_irq_handler_irq_idx_1_1'
;irq_status                Allocated with name '_CIC_irq_handler_irq_status_1_1'
;irq_fired                 Allocated with name '_CIC_irq_handler_irq_fired_2_2'
;file_name                 Allocated with name '_CIC_irq_handler_file_name_6_6'
;------------------------------------------------------------
	G$CIC_irq_handler$0$0 ==.
	C$core_irq_ctrl.c$137$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:137: CIC_irq_handler
;	-----------------------------------------
;	 function CIC_irq_handler
;	-----------------------------------------
_CIC_irq_handler:
	C$core_irq_ctrl.c$145$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:145: irq_status = HAL_get_32bit_reg( g_cic_base_addr, IRQStatus );
;	genAssign
	mov	dptr,#_g_cic_base_addr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	genPlusIncr
	mov	a,#0x2C
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
	C$core_irq_ctrl.c$147$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:147: for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
;	genAssign
	mov	dptr,#_CIC_irq_handler_irq_idx_1_1
	mov	a,#0x00
	movx	@dptr,a
00111$:
;	genAssign
	mov	dptr,#_CIC_irq_handler_irq_idx_1_1
	movx	a,@dptr
	mov	r6,a
;	genCmpLt
;	genCmp
	cjne	r6,#0x20,00121$
00121$:
;	genIfxJump
	jc	00122$
	ljmp	00115$
00122$:
	C$core_irq_ctrl.c$149$2$2 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:149: uint32_t irq_fired = irq_status & (1 << irq_idx);
;	genLeftShift
	mov	b,r6
	inc	b
	mov	r7,#0x01
	mov	r0,#0x00
	sjmp	00124$
00123$:
	mov	a,r7
	add	a,acc
	mov	r7,a
	mov	a,r0
	rlc	a
	mov	r0,a
00124$:
	djnz	b,00123$
;	genIpush
	push	ar6
;	genCast
	mov	a,r0
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	r6,a
;	genAnd
	mov	a,r2
	anl	ar7,a
	mov	a,r3
	anl	ar0,a
	mov	a,r4
	anl	ar1,a
	mov	a,r5
	anl	ar6,a
	C$core_irq_ctrl.c$150$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:150: if ( irq_fired )
;	genIfx
	mov	a,r7
	orl	a,r0
	orl	a,r1
	orl	a,r6
;	genIpop
	pop	ar6
;	genIfxJump
	jnz	00125$
	ljmp	00113$
00125$:
	C$core_irq_ctrl.c$152$3$3 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:152: if ( g_irq_handler_table[irq_idx] == NO_HANDLER )
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	mov	a,r6
	add	a,acc
	mov	r7,a
;	genPlus
	mov	a,ar7
	add	a,#_g_irq_handler_table
	mov	dpl,a
	mov	a,#0x00
	addc	a,#(_g_irq_handler_table >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genIfx
	mov	a,r7
	orl	a,r0
;	genIfxJump
	jz	00126$
	ljmp	00107$
00126$:
	C$core_irq_ctrl.c$154$6$5 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:154: HAL_ASSERT(0)
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_CIC_irq_handler_file_name_6_6
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000f)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0010)
	mov	a,#0x6E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0011)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0012)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0013)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0014)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0015)
	mov	a,#0x75
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0016)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0017)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0018)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0019)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001a)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001b)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001c)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001d)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001e)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001f)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0020)
	mov	a,#0x71
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0021)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0022)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0023)
	mov	a,#0x74
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0024)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0025)
	mov	a,#0x6C
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0026)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0027)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0028)
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
	mov	dpl,#_CIC_irq_handler_file_name_6_6
	mov	dph,#(_CIC_irq_handler_file_name_6_6 >> 8)
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_HAL_assert_fail
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_irq_ctrl.c$155$4$4 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:155: CIC_disable_irq( irq_idx );
;	genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_CIC_disable_irq
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00113$
00107$:
	C$core_irq_ctrl.c$160$4$7 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:160: (*g_irq_handler_table[irq_idx])();
;	genPcall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	mov	a,#00127$
	push	acc
	mov	a,#(00127$ >> 8)
	push	acc
	push	ar7
	push	ar0
	ret
00127$:
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00113$:
	C$core_irq_ctrl.c$147$1$1 ==.
;	../drivers/CoreInterrupt/core_irq_ctrl.c:147: for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
;	genAssign
	mov	dptr,#_CIC_irq_handler_irq_idx_1_1
	movx	a,@dptr
	mov	r6,a
;	genPlus
	mov	dptr,#_CIC_irq_handler_irq_idx_1_1
;	genPlusIncr
	mov	a,r6
	inc	a
	movx	@dptr,a
	ljmp	00111$
00115$:
	C$core_irq_ctrl.c$164$1$1 ==.
	XG$CIC_irq_handler$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
F___drivers_CoreInterrupt_core_irq_ctrl$__xinit_g_cic_base_addr$0$0 == .
__xinit__g_cic_base_addr:
	.byte #0x00,#0x00
	.area CABS    (ABS,CODE)
