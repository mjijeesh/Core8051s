;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:51:57 2016
;--------------------------------------------------------
	.module ___hal_Core8051s_SDCC_hw_reg_access
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HW_get_8bit_reg_field_PARM_3
	.globl _HW_get_8bit_reg_field_PARM_2
	.globl _HW_set_8bit_reg_field_PARM_4
	.globl _HW_set_8bit_reg_field_PARM_3
	.globl _HW_set_8bit_reg_field_PARM_2
	.globl _HW_get_16bit_reg_field_PARM_3
	.globl _HW_get_16bit_reg_field_PARM_2
	.globl _HW_set_16bit_reg_field_PARM_4
	.globl _HW_set_16bit_reg_field_PARM_3
	.globl _HW_set_16bit_reg_field_PARM_2
	.globl _HW_get_32bit_reg_field_PARM_3
	.globl _HW_get_32bit_reg_field_PARM_2
	.globl _HW_set_32bit_reg_field_PARM_4
	.globl _HW_set_32bit_reg_field_PARM_3
	.globl _HW_set_32bit_reg_field_PARM_2
	.globl _HW_set_32bit_reg_field
	.globl _HW_get_32bit_reg_field
	.globl _HW_set_16bit_reg_field
	.globl _HW_get_16bit_reg_field
	.globl _HW_set_8bit_reg_field
	.globl _HW_get_8bit_reg_field
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
LHW_set_32bit_reg_field$sloc0$1$0==.
_HW_set_32bit_reg_field_sloc0_1_0:
	.ds 2
LHW_set_32bit_reg_field$sloc1$1$0==.
_HW_set_32bit_reg_field_sloc1_1_0:
	.ds 4
LHW_set_32bit_reg_field$sloc2$1$0==.
_HW_set_32bit_reg_field_sloc2_1_0:
	.ds 1
LHW_set_16bit_reg_field$sloc0$1$0==.
_HW_set_16bit_reg_field_sloc0_1_0:
	.ds 1
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
LHW_set_32bit_reg_field$shift$1$1==.
_HW_set_32bit_reg_field_PARM_2:
	.ds 1
LHW_set_32bit_reg_field$mask$1$1==.
_HW_set_32bit_reg_field_PARM_3:
	.ds 4
LHW_set_32bit_reg_field$value$1$1==.
_HW_set_32bit_reg_field_PARM_4:
	.ds 4
LHW_set_32bit_reg_field$reg_addr$1$1==.
_HW_set_32bit_reg_field_reg_addr_1_1:
	.ds 2
LHW_set_32bit_reg_field$temp32$1$1==.
_HW_set_32bit_reg_field_temp32_1_1:
	.ds 4
LHW_get_32bit_reg_field$shift$1$1==.
_HW_get_32bit_reg_field_PARM_2:
	.ds 1
LHW_get_32bit_reg_field$mask$1$1==.
_HW_get_32bit_reg_field_PARM_3:
	.ds 4
LHW_get_32bit_reg_field$reg_addr$1$1==.
_HW_get_32bit_reg_field_reg_addr_1_1:
	.ds 2
LHW_get_32bit_reg_field$temp32$1$1==.
_HW_get_32bit_reg_field_temp32_1_1:
	.ds 4
LHW_set_16bit_reg_field$shift$1$1==.
_HW_set_16bit_reg_field_PARM_2:
	.ds 1
LHW_set_16bit_reg_field$mask$1$1==.
_HW_set_16bit_reg_field_PARM_3:
	.ds 2
LHW_set_16bit_reg_field$in_value16$1$1==.
_HW_set_16bit_reg_field_PARM_4:
	.ds 2
LHW_set_16bit_reg_field$reg_addr$1$1==.
_HW_set_16bit_reg_field_reg_addr_1_1:
	.ds 2
LHW_set_16bit_reg_field$temp16$1$1==.
_HW_set_16bit_reg_field_temp16_1_1:
	.ds 2
LHW_get_16bit_reg_field$shift$1$1==.
_HW_get_16bit_reg_field_PARM_2:
	.ds 1
LHW_get_16bit_reg_field$mask$1$1==.
_HW_get_16bit_reg_field_PARM_3:
	.ds 2
LHW_get_16bit_reg_field$reg_addr$1$1==.
_HW_get_16bit_reg_field_reg_addr_1_1:
	.ds 2
LHW_get_16bit_reg_field$temp16$1$1==.
_HW_get_16bit_reg_field_temp16_1_1:
	.ds 2
LHW_set_8bit_reg_field$shift$1$1==.
_HW_set_8bit_reg_field_PARM_2:
	.ds 1
LHW_set_8bit_reg_field$mask$1$1==.
_HW_set_8bit_reg_field_PARM_3:
	.ds 1
LHW_set_8bit_reg_field$value$1$1==.
_HW_set_8bit_reg_field_PARM_4:
	.ds 1
LHW_set_8bit_reg_field$reg_addr$1$1==.
_HW_set_8bit_reg_field_reg_addr_1_1:
	.ds 2
LHW_set_8bit_reg_field$temp8$1$1==.
_HW_set_8bit_reg_field_temp8_1_1:
	.ds 1
LHW_get_8bit_reg_field$shift$1$1==.
_HW_get_8bit_reg_field_PARM_2:
	.ds 1
LHW_get_8bit_reg_field$mask$1$1==.
_HW_get_8bit_reg_field_PARM_3:
	.ds 1
LHW_get_8bit_reg_field$reg_addr$1$1==.
_HW_get_8bit_reg_field_reg_addr_1_1:
	.ds 2
LHW_get_8bit_reg_field$temp8$1$1==.
_HW_get_8bit_reg_field_temp8_1_1:
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
;Allocation info for local variables in function 'HW_set_32bit_reg_field'
;------------------------------------------------------------
;sloc0                     Allocated with name '_HW_set_32bit_reg_field_sloc0_1_0'
;sloc1                     Allocated with name '_HW_set_32bit_reg_field_sloc1_1_0'
;sloc2                     Allocated with name '_HW_set_32bit_reg_field_sloc2_1_0'
;shift                     Allocated with name '_HW_set_32bit_reg_field_PARM_2'
;mask                      Allocated with name '_HW_set_32bit_reg_field_PARM_3'
;value                     Allocated with name '_HW_set_32bit_reg_field_PARM_4'
;reg_addr                  Allocated with name '_HW_set_32bit_reg_field_reg_addr_1_1'
;temp32                    Allocated with name '_HW_set_32bit_reg_field_temp32_1_1'
;------------------------------------------------------------
	G$HW_set_32bit_reg_field$0$0 ==.
	C$hw_reg_access.c$16$0$0 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:16: HW_set_32bit_reg_field
;	-----------------------------------------
;	 function HW_set_32bit_reg_field
;	-----------------------------------------
_HW_set_32bit_reg_field:
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
	mov	dptr,#_HW_set_32bit_reg_field_reg_addr_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$hw_reg_access.c$25$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:25: temp32 = HW_get_32bit_reg( reg_addr );
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_reg_addr_1_1
	movx	a,@dptr
	mov	_HW_set_32bit_reg_field_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_HW_set_32bit_reg_field_sloc0_1_0 + 1),a
;	genCall
	mov	dpl,_HW_set_32bit_reg_field_sloc0_1_0
	mov	dph,(_HW_set_32bit_reg_field_sloc0_1_0 + 1)
	lcall	_HW_get_32bit_reg
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$hw_reg_access.c$26$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:26: temp32 = ((temp32 & ~mask) | (((value) << shift) & mask));
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCpl
	mov	a,r4
	cpl	a
	mov	_HW_set_32bit_reg_field_sloc1_1_0,a
	mov	a,r5
	cpl	a
	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 1),a
	mov	a,r6
	cpl	a
	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 2),a
	mov	a,r7
	cpl	a
	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 3),a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAnd
	mov	a,r2
	anl	_HW_set_32bit_reg_field_sloc1_1_0,a
	mov	a,r3
	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 1),a
	mov	a,r0
	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 2),a
	mov	a,r1
	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 3),a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
	movx	a,@dptr
	mov	_HW_set_32bit_reg_field_sloc2_1_0,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
;	genLeftShift
	mov	b,_HW_set_32bit_reg_field_sloc2_1_0
	inc	b
	sjmp	00104$
00103$:
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r0
	rlc	a
	mov	r0,a
	mov	a,r1
	rlc	a
	mov	r1,a
	mov	a,r2
	rlc	a
	mov	r2,a
00104$:
	djnz	b,00103$
;	genAnd
	mov	a,r3
	anl	ar4,a
	mov	a,r0
	anl	ar5,a
	mov	a,r1
	anl	ar6,a
	mov	a,r2
	anl	ar7,a
;	genOr
	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
	mov	a,r4
	orl	a,_HW_set_32bit_reg_field_sloc1_1_0
	movx	@dptr,a
	mov	a,r5
	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	C$hw_reg_access.c$27$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:27: HW_set_32bit_reg(reg_addr, temp32);
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
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
	mov	dpl,_HW_set_32bit_reg_field_sloc0_1_0
	mov	dph,(_HW_set_32bit_reg_field_sloc0_1_0 + 1)
	lcall	_HW_set_32bit_reg
00101$:
	C$hw_reg_access.c$28$1$1 ==.
	XG$HW_set_32bit_reg_field$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HW_get_32bit_reg_field'
;------------------------------------------------------------
;shift                     Allocated with name '_HW_get_32bit_reg_field_PARM_2'
;mask                      Allocated with name '_HW_get_32bit_reg_field_PARM_3'
;reg_addr                  Allocated with name '_HW_get_32bit_reg_field_reg_addr_1_1'
;temp32                    Allocated with name '_HW_get_32bit_reg_field_temp32_1_1'
;------------------------------------------------------------
	G$HW_get_32bit_reg_field$0$0 ==.
	C$hw_reg_access.c$34$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:34: HW_get_32bit_reg_field
;	-----------------------------------------
;	 function HW_get_32bit_reg_field
;	-----------------------------------------
_HW_get_32bit_reg_field:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_HW_get_32bit_reg_field_reg_addr_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$hw_reg_access.c$42$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:42: temp32 = (HW_get_32bit_reg(reg_addr) & mask) >> shift;
;	genAssign
	mov	dptr,#_HW_get_32bit_reg_field_reg_addr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_get_32bit_reg
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#_HW_get_32bit_reg_field_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAnd
	mov	a,r6
	anl	ar2,a
	mov	a,r7
	anl	ar3,a
	mov	a,r0
	anl	ar4,a
	mov	a,r1
	anl	ar5,a
;	genAssign
	mov	dptr,#_HW_get_32bit_reg_field_PARM_2
	movx	a,@dptr
	mov	r6,a
;	genRightShift
	mov	b,r6
	inc	b
	sjmp	00104$
00103$:
	clr	c
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00104$:
	djnz	b,00103$
;	genAssign
	mov	dptr,#_HW_get_32bit_reg_field_temp32_1_1
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
	C$hw_reg_access.c$43$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:43: return temp32;
;	genAssign
	mov	dptr,#_HW_get_32bit_reg_field_temp32_1_1
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
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00101$:
	C$hw_reg_access.c$44$1$1 ==.
	XG$HW_get_32bit_reg_field$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HW_set_16bit_reg_field'
;------------------------------------------------------------
;sloc0                     Allocated with name '_HW_set_16bit_reg_field_sloc0_1_0'
;shift                     Allocated with name '_HW_set_16bit_reg_field_PARM_2'
;mask                      Allocated with name '_HW_set_16bit_reg_field_PARM_3'
;in_value16                Allocated with name '_HW_set_16bit_reg_field_PARM_4'
;reg_addr                  Allocated with name '_HW_set_16bit_reg_field_reg_addr_1_1'
;temp16                    Allocated with name '_HW_set_16bit_reg_field_temp16_1_1'
;------------------------------------------------------------
	G$HW_set_16bit_reg_field$0$0 ==.
	C$hw_reg_access.c$49$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:49: void HW_set_16bit_reg_field
;	-----------------------------------------
;	 function HW_set_16bit_reg_field
;	-----------------------------------------
_HW_set_16bit_reg_field:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_HW_set_16bit_reg_field_reg_addr_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$hw_reg_access.c$58$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:58: temp16 = HW_get_16bit_reg( reg_addr );
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_field_reg_addr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_HW_get_16bit_reg
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	C$hw_reg_access.c$59$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:59: temp16 = ((temp16  & ~mask) | (((in_value16) << shift) & mask));
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_field_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCpl
	mov	a,r4
	cpl	a
	mov	r6,a
	mov	a,r5
	cpl	a
	mov	r7,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAnd
	mov	a,r0
	anl	ar6,a
	mov	a,r1
	anl	ar7,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_field_PARM_2
	movx	a,@dptr
	mov	_HW_set_16bit_reg_field_sloc0_1_0,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_field_PARM_4
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genLeftShift
	mov	b,_HW_set_16bit_reg_field_sloc0_1_0
	inc	b
	sjmp	00104$
00103$:
	mov	a,r1
	add	a,acc
	mov	r1,a
	mov	a,r0
	rlc	a
	mov	r0,a
00104$:
	djnz	b,00103$
;	genAnd
	mov	a,r1
	anl	ar4,a
	mov	a,r0
	anl	ar5,a
;	genOr
	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
	mov	a,r4
	orl	a,r6
	movx	@dptr,a
	mov	a,r5
	orl	a,r7
	inc	dptr
	movx	@dptr,a
	C$hw_reg_access.c$60$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:60: HW_set_16bit_reg(reg_addr, temp16);
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_16bit_reg
00101$:
	C$hw_reg_access.c$61$1$1 ==.
	XG$HW_set_16bit_reg_field$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HW_get_16bit_reg_field'
;------------------------------------------------------------
;shift                     Allocated with name '_HW_get_16bit_reg_field_PARM_2'
;mask                      Allocated with name '_HW_get_16bit_reg_field_PARM_3'
;reg_addr                  Allocated with name '_HW_get_16bit_reg_field_reg_addr_1_1'
;temp16                    Allocated with name '_HW_get_16bit_reg_field_temp16_1_1'
;------------------------------------------------------------
	G$HW_get_16bit_reg_field$0$0 ==.
	C$hw_reg_access.c$66$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:66: uint16_t HW_get_16bit_reg_field
;	-----------------------------------------
;	 function HW_get_16bit_reg_field
;	-----------------------------------------
_HW_get_16bit_reg_field:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_HW_get_16bit_reg_field_reg_addr_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$hw_reg_access.c$74$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:74: temp16 = (HW_get_16bit_reg(reg_addr) & mask) >> shift;
;	genAssign
	mov	dptr,#_HW_get_16bit_reg_field_reg_addr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_get_16bit_reg
	mov	r2,dpl
	mov	r3,dph
;	genAssign
	mov	dptr,#_HW_get_16bit_reg_field_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAnd
	mov	a,r4
	anl	ar2,a
	mov	a,r5
	anl	ar3,a
;	genAssign
	mov	dptr,#_HW_get_16bit_reg_field_PARM_2
	movx	a,@dptr
	mov	r4,a
;	genRightShift
	mov	b,r4
	inc	b
	sjmp	00104$
00103$:
	clr	c
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00104$:
	djnz	b,00103$
;	genAssign
	mov	dptr,#_HW_get_16bit_reg_field_temp16_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$hw_reg_access.c$75$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:75: return temp16;
;	genAssign
	mov	dptr,#_HW_get_16bit_reg_field_temp16_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00101$:
	C$hw_reg_access.c$76$1$1 ==.
	XG$HW_get_16bit_reg_field$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HW_set_8bit_reg_field'
;------------------------------------------------------------
;shift                     Allocated with name '_HW_set_8bit_reg_field_PARM_2'
;mask                      Allocated with name '_HW_set_8bit_reg_field_PARM_3'
;value                     Allocated with name '_HW_set_8bit_reg_field_PARM_4'
;reg_addr                  Allocated with name '_HW_set_8bit_reg_field_reg_addr_1_1'
;temp8                     Allocated with name '_HW_set_8bit_reg_field_temp8_1_1'
;------------------------------------------------------------
	G$HW_set_8bit_reg_field$0$0 ==.
	C$hw_reg_access.c$81$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:81: void HW_set_8bit_reg_field
;	-----------------------------------------
;	 function HW_set_8bit_reg_field
;	-----------------------------------------
_HW_set_8bit_reg_field:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_HW_set_8bit_reg_field_reg_addr_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$hw_reg_access.c$90$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:90: temp8 = HW_get_8bit_reg( reg_addr );
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_field_reg_addr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_HW_get_8bit_reg
	mov	a,dpl
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
	movx	@dptr,a
	C$hw_reg_access.c$91$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:91: temp8 = ((temp8  & ~mask) | (((value) << shift) & mask));
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_field_PARM_3
	movx	a,@dptr
	mov	r4,a
;	genCpl
	mov	a,r4
	cpl	a
	mov	r5,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
	movx	a,@dptr
	mov	r6,a
;	genAnd
	mov	a,r6
	anl	ar5,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_field_PARM_2
	movx	a,@dptr
	mov	r6,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_field_PARM_4
	movx	a,@dptr
	mov	r7,a
;	genLeftShift
	mov	b,r6
	inc	b
	mov	a,r7
	sjmp	00105$
00103$:
	add	a,acc
00105$:
	djnz	b,00103$
;	genAnd
	anl	a,r4
;	genOr
	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
	orl	a,r5
	movx	@dptr,a
	C$hw_reg_access.c$92$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:92: HW_set_8bit_reg(reg_addr, temp8);
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r4
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_8bit_reg
00101$:
	C$hw_reg_access.c$93$1$1 ==.
	XG$HW_set_8bit_reg_field$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HW_get_8bit_reg_field'
;------------------------------------------------------------
;shift                     Allocated with name '_HW_get_8bit_reg_field_PARM_2'
;mask                      Allocated with name '_HW_get_8bit_reg_field_PARM_3'
;reg_addr                  Allocated with name '_HW_get_8bit_reg_field_reg_addr_1_1'
;temp8                     Allocated with name '_HW_get_8bit_reg_field_temp8_1_1'
;------------------------------------------------------------
	G$HW_get_8bit_reg_field$0$0 ==.
	C$hw_reg_access.c$98$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:98: uint8_t HW_get_8bit_reg_field
;	-----------------------------------------
;	 function HW_get_8bit_reg_field
;	-----------------------------------------
_HW_get_8bit_reg_field:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_HW_get_8bit_reg_field_reg_addr_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$hw_reg_access.c$106$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:106: temp8 = (HW_get_8bit_reg(reg_addr) & mask) >> shift;
;	genAssign
	mov	dptr,#_HW_get_8bit_reg_field_reg_addr_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_get_8bit_reg
	mov	r2,dpl
;	genAssign
	mov	dptr,#_HW_get_8bit_reg_field_PARM_3
	movx	a,@dptr
	mov	r3,a
;	genAnd
	mov	a,r3
	anl	ar2,a
;	genAssign
	mov	dptr,#_HW_get_8bit_reg_field_PARM_2
	movx	a,@dptr
	mov	r3,a
;	genRightShift
	mov	b,r3
	inc	b
	mov	a,r2
	sjmp	00104$
00103$:
	clr	c
	rrc	a
00104$:
	djnz	b,00103$
;	genAssign
	mov	dptr,#_HW_get_8bit_reg_field_temp8_1_1
	movx	@dptr,a
	C$hw_reg_access.c$107$1$1 ==.
;	../hal/Core8051s/SDCC/hw_reg_access.c:107: return temp8;
;	genAssign
	mov	dptr,#_HW_get_8bit_reg_field_temp8_1_1
	movx	a,@dptr
	mov	r2,a
;	genRet
	mov	dpl,r2
00101$:
	C$hw_reg_access.c$108$1$1 ==.
	XG$HW_get_8bit_reg_field$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
