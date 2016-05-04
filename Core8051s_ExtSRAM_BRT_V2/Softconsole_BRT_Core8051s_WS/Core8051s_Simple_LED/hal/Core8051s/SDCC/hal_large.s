;===============================================================================
; Core8051s/SDCC HAL implementation for large memory model.
;
; SVN $Revision: 638 $
; SVN $Date: 2009-02-11 15:02:08 +0000 (Wed, 11 Feb 2009) $
;
;===============================================================================
	.module ___hal_large
	.optsdcc -mmcs51 --model-large
	
	.globl _HW_get_32bit_reg
	.globl _HW_set_32bit_reg
    .globl _HW_set_16bit_reg
    .globl _HW_get_16bit_reg
    .globl _HW_set_8bit_reg
	.globl _HW_get_8bit_reg
	.globl _HAL_enable_interrupts
	.globl _HAL_disable_interrupts
	.globl _HAL_restore_interrupts
	
;===============================================================================
	XWB1 = 0x9A
	XWB2 = 0x9B
	XWB3 = 0x9C	
	XRB1 = 0x9D
	XRB2 = 0x9E
	XRB3 = 0x9F

	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _XRB3
	.globl _XRB2
	.globl _XRB1
	.globl _XWB3
	.globl _XWB2
	.globl _XWB1
	.globl _DPS
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _HW_set_32bit_reg_PARM_2
	.globl _HW_set_16bit_reg_PARM_2
	.globl _HW_set_8bit_reg_PARM_2
	
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;G$SP$0$0==.
_SP::
	.ds 1
;G$DPL$0$0==.
_DPL::
	.ds 1
;G$DPH$0$0==.
_DPH::
	.ds 1
;G$DPL1$0$0==.
_DPL1::
	.ds 1
;G$DPH1$0$0==.
_DPH1::
	.ds 1
;G$DPS$0$0==.
_DPS::
	.ds 1
;G$XWB1$0$0==.
_XWB1::
	.ds 1
;G$XWB2$0$0==.
_XWB2::
	.ds 1
;G$XWB3$0$0==.
_XWB3::
	.ds 1
;G$XRB1$0$0==.
_XRB1::
	.ds 1
;G$XRB2$0$0==.
_XRB2::
	.ds 1
;G$XRB3$0$0==.
_XRB3::
	.ds 1
;G$PSW$0$0==.
_PSW::
	.ds 1
;G$ACC$0$0==.
_ACC::
	.ds 1
;G$B$0$0==.
_B::
	.ds 1
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;G$CY$0$0==.
_CY::
	.ds 1
;G$AC$0$0==.
_AC::
	.ds 1
;G$F0$0$0==.
_F0::
	.ds 1
;G$RS1$0$0==.
_RS1::
	.ds 1
;G$RS0$0$0==.
_RS0::
	.ds 1
;G$OV$0$0==.
_OV::
	.ds 1
;G$P$0$0==.
_P::
	.ds 1
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

_HW_get_32bit_reg_reg_addr_1_1:
	.ds 2

_HW_get_32bit_reg_dummy_1_1:
	.ds 2

_HW_get_32bit_reg_ret_val_1_1:
	.ds 4

_HW_set_32bit_reg_ret_val_1_1:
	.ds 4

_HW_set_16bit_reg_PARM_2:
    .ds 2

_HW_set_8bit_reg_PARM_2:
    .ds 1

;===============================================================================
; external ram data
;===============================================================================
	.area XSEG    (XDATA)

_HW_set_32bit_reg_PARM_2:
	.ds 4

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

	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	
	; has code here
	
	.area HOME    (CODE)
	.area HOME    (CODE)

;===============================================================================
; code
;===============================================================================
	.area CSEG    (CODE)

;-------------------------------------------------------------------------------
; HW_get_32bit_reg
;
	G$HW_get_32bit_reg$0$0 ==.
_HW_get_32bit_reg:
	MOVX 	A,@DPTR
	MOV  	DPL,A
	MOV  	DPH,XRB1
	MOV  	B,XRB2
	MOV  	A,XRB3
00101$:
	XG$HW_get_32bit_reg$0$0 ==.

	RET  	

;-------------------------------------------------------------------------------
; HW_set_32bit_reg
;
	G$HW_set_32bit_reg$0$0 ==.
_HW_set_32bit_reg:
	PUSH    DPH
	PUSH    DPL	   
	MOV     DPTR,#_HW_set_32bit_reg_PARM_2 + 1
	MOVX	A,@DPTR
	MOV     XWB1,A
	INC		DPTR
	MOVX	A,@DPTR
	MOV     XWB2,A
	INC		DPTR
	MOVX	A,@DPTR
	MOV     XWB3,A
	MOV     DPTR,#_HW_set_32bit_reg_PARM_2
	MOVX	A,@DPTR
	POP     DPL
	POP     DPH
	MOVX 	@DPTR,A
00101$:
	XG$HW_set_32bit_reg$0$0 ==.

	RET  	

;-------------------------------------------------------------------------------
; HW_set_16bit_reg
;
    G$HW_set_16bit_reg$0$0 ==.
_HW_set_16bit_reg:
    PUSH    DPH
    PUSH    DPL    
    MOV     DPTR,#_HW_set_16bit_reg_PARM_2 + 1
    MOVX    A,@DPTR
    MOV     XWB1,A
    MOV     DPTR,#_HW_set_16bit_reg_PARM_2
    MOVX    A,@DPTR
    POP     DPL
    POP     DPH
    MOVX    @DPTR,A
00101$:
    XG$HW_set_16bit_reg$0$0 ==.

    RET

;-------------------------------------------------------------------------------
; HW_get_16bit_reg
;
    G$HW_get_16bit_reg$0$0 ==.
_HW_get_16bit_reg:
    MOVX    A,@DPTR
    MOV     DPL,A
    MOV     DPH,XRB1

00101$:
    XG$HW_get_16bit_reg$0$0 ==.

    RET
    
;-------------------------------------------------------------------------------
; HW_set_8bit_reg
;
    G$HW_set_8bit_reg$0$0 ==.
_HW_set_8bit_reg:
    PUSH    DPH
    PUSH    DPL    
    MOV     DPTR,#_HW_set_8bit_reg_PARM_2
    MOVX    A, @DPTR
    POP     DPL
    POP     DPH
    MOVX    @DPTR,A

00101$:
    XG$HW_set_8bit_reg$0$0 ==.

    RET

;-------------------------------------------------------------------------------
; HW_get_8bit_reg
;
    G$HW_get_8bit_reg$0$0 ==.
_HW_get_8bit_reg:
    MOVX    A,@DPTR
    MOV     DPL,A
00101$:
    XG$HW_get_8bit_reg$0$0 ==.
    RET

;-------------------------------------------------------------------------------
; HAL_enable_interrupts
;
    G$HAL_enable_interrupts$0$0 ==.
_HAL_enable_interrupts:
    MOV     EA,#0x80

00101$:
    XG$HAL_enable_interrupts$0$0 ==.
    RET

;-------------------------------------------------------------------------------
; HAL_disable_interrupts
;
    G$HAL_disable_interrupts$0$0 ==.
_HAL_disable_interrupts:
    MOV     DPL,EA
    MOV     EA,#0x00
00101$:
    XG$HAL_disable_interrupts$0$0 ==.
    RET

;-------------------------------------------------------------------------------
; HAL_restore_interrupts
;
    G$HAL_restore_interrupts$0$0 ==.
_HAL_restore_interrupts:
    MOV     EA,DPL
00101$:
    XG$HAL_restore_interrupts$0$0 ==.
    RET

;-------------------------------------------------------------------------------
    
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
	