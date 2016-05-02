;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Mon May 02 12:51:58 2016
;--------------------------------------------------------
	.module ___drivers_CoreGPIO_core_gpio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_clear_irq_PARM_2
	.globl _GPIO_disable_irq_PARM_2
	.globl _GPIO_enable_irq_PARM_2
	.globl _GPIO_drive_inout_PARM_3
	.globl _GPIO_drive_inout_PARM_2
	.globl _GPIO_set_output_PARM_3
	.globl _GPIO_set_output_PARM_2
	.globl _GPIO_set_outputs_PARM_2
	.globl _GPIO_config_PARM_3
	.globl _GPIO_config_PARM_2
	.globl _GPIO_init_PARM_3
	.globl _GPIO_init_PARM_2
	.globl _GPIO_init
	.globl _GPIO_config
	.globl _GPIO_set_outputs
	.globl _GPIO_get_inputs
	.globl _GPIO_get_outputs
	.globl _GPIO_set_output
	.globl _GPIO_drive_inout
	.globl _GPIO_enable_irq
	.globl _GPIO_disable_irq
	.globl _GPIO_clear_irq
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
LGPIO_set_outputs$sloc1$1$0==.
_GPIO_set_outputs_sloc1_1_0:
	.ds 4
LGPIO_set_outputs$sloc2$1$0==.
_GPIO_set_outputs_sloc2_1_0:
	.ds 4
LGPIO_set_output$sloc0$1$0==.
_GPIO_set_output_sloc0_1_0:
	.ds 4
LGPIO_set_output$sloc2$1$0==.
_GPIO_set_output_sloc2_1_0:
	.ds 4
LGPIO_clear_irq$sloc0$1$0==.
_GPIO_clear_irq_sloc0_1_0:
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
LGPIO_init$base_addr$1$1==.
_GPIO_init_PARM_2:
	.ds 2
LGPIO_init$bus_width$1$1==.
_GPIO_init_PARM_3:
	.ds 1
LGPIO_init$this_gpio$1$1==.
_GPIO_init_this_gpio_1_1:
	.ds 3
LGPIO_init$i$1$1==.
_GPIO_init_i_1_1:
	.ds 1
LGPIO_init$cfg_reg_addr$1$1==.
_GPIO_init_cfg_reg_addr_1_1:
	.ds 2
LGPIO_init$file_name$4$5==.
_GPIO_init_file_name_4_5:
	.ds 32
LGPIO_config$port_id$1$1==.
_GPIO_config_PARM_2:
	.ds 1
LGPIO_config$config$1$1==.
_GPIO_config_PARM_3:
	.ds 4
LGPIO_config$this_gpio$1$1==.
_GPIO_config_this_gpio_1_1:
	.ds 3
LGPIO_config$file_name$3$3==.
_GPIO_config_file_name_3_3:
	.ds 32
LGPIO_config$file_name$4$6==.
_GPIO_config_file_name_4_6:
	.ds 32
LGPIO_set_outputs$value$1$1==.
_GPIO_set_outputs_PARM_2:
	.ds 4
LGPIO_set_outputs$this_gpio$1$1==.
_GPIO_set_outputs_this_gpio_1_1:
	.ds 3
LGPIO_set_outputs$file_name$4$4==.
_GPIO_set_outputs_file_name_4_4:
	.ds 32
LGPIO_set_outputs$file_name$3$6==.
_GPIO_set_outputs_file_name_3_6:
	.ds 32
LGPIO_get_inputs$this_gpio$1$1==.
_GPIO_get_inputs_this_gpio_1_1:
	.ds 3
LGPIO_get_inputs$gpio_in$1$1==.
_GPIO_get_inputs_gpio_in_1_1:
	.ds 4
LGPIO_get_inputs$file_name$4$4==.
_GPIO_get_inputs_file_name_4_4:
	.ds 32
LGPIO_get_outputs$this_gpio$1$1==.
_GPIO_get_outputs_this_gpio_1_1:
	.ds 3
LGPIO_get_outputs$gpio_out$1$1==.
_GPIO_get_outputs_gpio_out_1_1:
	.ds 4
LGPIO_get_outputs$file_name$4$4==.
_GPIO_get_outputs_file_name_4_4:
	.ds 32
LGPIO_set_output$port_id$1$1==.
_GPIO_set_output_PARM_2:
	.ds 1
LGPIO_set_output$value$1$1==.
_GPIO_set_output_PARM_3:
	.ds 1
LGPIO_set_output$this_gpio$1$1==.
_GPIO_set_output_this_gpio_1_1:
	.ds 3
LGPIO_set_output$file_name$3$3==.
_GPIO_set_output_file_name_3_3:
	.ds 32
LGPIO_set_output$outputs_state$3$5==.
_GPIO_set_output_outputs_state_3_5:
	.ds 4
LGPIO_set_output$file_name$5$9==.
_GPIO_set_output_file_name_5_9:
	.ds 32
LGPIO_set_output$outputs_state$3$10==.
_GPIO_set_output_outputs_state_3_10:
	.ds 2
LGPIO_set_output$file_name$5$14==.
_GPIO_set_output_file_name_5_14:
	.ds 32
LGPIO_set_output$outputs_state$3$15==.
_GPIO_set_output_outputs_state_3_15:
	.ds 1
LGPIO_set_output$file_name$5$19==.
_GPIO_set_output_file_name_5_19:
	.ds 32
LGPIO_set_output$file_name$4$21==.
_GPIO_set_output_file_name_4_21:
	.ds 32
LGPIO_drive_inout$port_id$1$1==.
_GPIO_drive_inout_PARM_2:
	.ds 1
LGPIO_drive_inout$inout_state$1$1==.
_GPIO_drive_inout_PARM_3:
	.ds 1
LGPIO_drive_inout$this_gpio$1$1==.
_GPIO_drive_inout_this_gpio_1_1:
	.ds 3
LGPIO_drive_inout$file_name$3$3==.
_GPIO_drive_inout_file_name_3_3:
	.ds 32
LGPIO_drive_inout$file_name$4$6==.
_GPIO_drive_inout_file_name_4_6:
	.ds 32
LGPIO_enable_irq$port_id$1$1==.
_GPIO_enable_irq_PARM_2:
	.ds 1
LGPIO_enable_irq$this_gpio$1$1==.
_GPIO_enable_irq_this_gpio_1_1:
	.ds 3
LGPIO_enable_irq$file_name$3$3==.
_GPIO_enable_irq_file_name_3_3:
	.ds 32
LGPIO_disable_irq$port_id$1$1==.
_GPIO_disable_irq_PARM_2:
	.ds 1
LGPIO_disable_irq$this_gpio$1$1==.
_GPIO_disable_irq_this_gpio_1_1:
	.ds 3
LGPIO_disable_irq$file_name$3$3==.
_GPIO_disable_irq_file_name_3_3:
	.ds 32
LGPIO_clear_irq$port_id$1$1==.
_GPIO_clear_irq_PARM_2:
	.ds 1
LGPIO_clear_irq$this_gpio$1$1==.
_GPIO_clear_irq_this_gpio_1_1:
	.ds 3
LGPIO_clear_irq$file_name$4$4==.
_GPIO_clear_irq_file_name_4_4:
	.ds 32
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
;Allocation info for local variables in function 'GPIO_init'
;------------------------------------------------------------
;base_addr                 Allocated with name '_GPIO_init_PARM_2'
;bus_width                 Allocated with name '_GPIO_init_PARM_3'
;this_gpio                 Allocated with name '_GPIO_init_this_gpio_1_1'
;i                         Allocated with name '_GPIO_init_i_1_1'
;cfg_reg_addr              Allocated with name '_GPIO_init_cfg_reg_addr_1_1'
;file_name                 Allocated with name '_GPIO_init_file_name_4_5'
;------------------------------------------------------------
	G$GPIO_init$0$0 ==.
	C$core_gpio.c$31$0$0 ==.
;	../drivers/CoreGPIO/core_gpio.c:31: void GPIO_init
;	-----------------------------------------
;	 function GPIO_init
;	-----------------------------------------
_GPIO_init:
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
	mov	dptr,#_GPIO_init_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$39$1$0 ==.
;	../drivers/CoreGPIO/core_gpio.c:39: addr_t cfg_reg_addr = base_addr;
;	genAssign
	mov	dptr,#_GPIO_init_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	C$core_gpio.c$41$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:41: this_gpio->base_addr = base_addr;
;	genAssign
	mov	dptr,#_GPIO_init_this_gpio_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	a,r3
	lcall	__gptrput
	C$core_gpio.c$42$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:42: this_gpio->apb_bus_width = bus_width;
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar4
	mov	r4,a
	mov	a,#0x00
	addc	a,ar5
	mov	r5,a
;	genAssign
	mov	dptr,#_GPIO_init_PARM_3
	movx	a,@dptr
	mov	r7,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__gptrput
	C$core_gpio.c$45$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:45: for( i = 0, cfg_reg_addr = base_addr; i < NB_OF_GPIO; ++i )
;	genAssign
	mov	dptr,#_GPIO_init_i_1_1
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
00111$:
;	genAssign
	mov	dptr,#_GPIO_init_i_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x20,00122$
00122$:
;	genIfxJump
	jc	00123$
	ljmp	00114$
00123$:
	C$core_gpio.c$47$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:47: HW_set_8bit_reg( cfg_reg_addr, 0 );
;	genAssign
	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_8bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$48$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:48: cfg_reg_addr += 4;
;	genPlus
	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
;	genPlusIncr
	mov	a,#0x04
	add	a,ar3
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar4
	inc	dptr
	movx	@dptr,a
	C$core_gpio.c$45$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:45: for( i = 0, cfg_reg_addr = base_addr; i < NB_OF_GPIO; ++i )
;	genPlus
	mov	dptr,#_GPIO_init_i_1_1
;	genPlusIncr
	mov	a,r2
	inc	a
	movx	@dptr,a
	ljmp	00111$
00114$:
	C$core_gpio.c$51$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:51: switch( this_gpio->apb_bus_width )
;	genAssign
	mov	dptr,#_GPIO_init_this_gpio_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar2
	mov	r5,a
	mov	a,#0x00
	addc	a,ar3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00124$
	ljmp	00103$
00124$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x01,00125$
	ljmp	00102$
00125$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x02,00126$
	sjmp	00127$
00126$:
	ljmp	00107$
00127$:
	C$core_gpio.c$54$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:54: HAL_set_32bit_reg( this_gpio->base_addr, IRQ, CLEAR_ALL_IRQ32 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x80
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
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
	mov	dpl,r5
	mov	dph,r6
	lcall	_HW_set_32bit_reg
	C$core_gpio.c$55$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:55: break;
	ljmp	00115$
	C$core_gpio.c$57$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:57: case GPIO_APB_16_BITS_BUS:
00102$:
	C$core_gpio.c$58$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:58: HAL_set_16bit_reg( this_gpio->base_addr, IRQ0, (uint16_t)CLEAR_ALL_IRQ16 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x80
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_16bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$59$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:59: HAL_set_16bit_reg( this_gpio->base_addr, IRQ1, (uint16_t)CLEAR_ALL_IRQ16 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x84
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	lcall	_HW_set_16bit_reg
	C$core_gpio.c$60$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:60: break;
	ljmp	00115$
	C$core_gpio.c$62$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:62: case GPIO_APB_8_BITS_BUS:
00103$:
	C$core_gpio.c$63$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:63: HAL_set_8bit_reg( this_gpio->base_addr, IRQ0, (uint8_t)CLEAR_ALL_IRQ8 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x80
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_8bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$64$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:64: HAL_set_8bit_reg( this_gpio->base_addr, IRQ1, (uint8_t)CLEAR_ALL_IRQ8 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x84
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_8bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$65$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:65: HAL_set_8bit_reg( this_gpio->base_addr, IRQ2, (uint8_t)CLEAR_ALL_IRQ8 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x88
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_8bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$66$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:66: HAL_set_8bit_reg( this_gpio->base_addr, IRQ3, (uint8_t)CLEAR_ALL_IRQ8 );
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
	mov	a,#0x8C
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_8bit_reg
	C$core_gpio.c$67$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:67: break;
	ljmp	00115$
	C$core_gpio.c$70$2$3 ==.
;	../drivers/CoreGPIO/core_gpio.c:70: HAL_ASSERT(0);
00107$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_init_file_name_4_5
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x46
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_init_file_name_4_5
	mov	dph,#(_GPIO_init_file_name_4_5 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$72$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:72: }
00115$:
	C$core_gpio.c$73$1$1 ==.
	XG$GPIO_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_config'
;------------------------------------------------------------
;port_id                   Allocated with name '_GPIO_config_PARM_2'
;config                    Allocated with name '_GPIO_config_PARM_3'
;this_gpio                 Allocated with name '_GPIO_config_this_gpio_1_1'
;file_name                 Allocated with name '_GPIO_config_file_name_3_3'
;cfg_reg_addr              Allocated with name '_GPIO_config_cfg_reg_addr_2_4'
;file_name                 Allocated with name '_GPIO_config_file_name_4_6'
;------------------------------------------------------------
	G$GPIO_config$0$0 ==.
	C$core_gpio.c$79$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:79: void GPIO_config
;	-----------------------------------------
;	 function GPIO_config
;	-----------------------------------------
_GPIO_config:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_config_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$86$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:86: HAL_ASSERT( port_id < NB_OF_GPIO );
;	genAssign
	mov	dptr,#_GPIO_config_PARM_2
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x20,00118$
00118$:
	clr	a
	rlc	a
	mov	r3,a
;	genIfx
	mov	a,r3
;	genIfxJump
	jz	00119$
	ljmp	00104$
00119$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_config_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x56
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_config_file_name_3_3
	mov	dph,#(_GPIO_config_file_name_3_3 >> 8)
	mov	b,#0x00
	push	ar2
	push	ar3
	lcall	_HAL_assert_fail
	pop	ar3
	pop	ar2
00104$:
	C$core_gpio.c$88$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:88: if ( port_id < NB_OF_GPIO )
;	genIfx
	mov	a,r3
;	genIfxJump
	jnz	00120$
	ljmp	00113$
00120$:
	C$core_gpio.c$90$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:90: uint32_t cfg_reg_addr = this_gpio->base_addr;
;	genAssign
	mov	dptr,#_GPIO_config_this_gpio_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	C$core_gpio.c$91$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:91: cfg_reg_addr += (port_id * 4);
;	genMult
;	genMultOneByte
	mov	a,r2
	mov	b,#0x04
	mul	ab
	mov	r2,a
	mov	r7,b
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genPlus
	mov	a,ar2
	add	a,ar3
	mov	r3,a
	mov	a,ar7
	addc	a,ar4
	mov	r4,a
	mov	a,ar0
	addc	a,ar5
	mov	r5,a
	mov	a,ar1
	addc	a,ar6
	mov	r6,a
	C$core_gpio.c$92$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:92: HW_set_32bit_reg( cfg_reg_addr, config );
;	genCast
;	genAssign
	mov	dptr,#_GPIO_config_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
	mov	a,r2
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
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_HW_set_32bit_reg
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$101$3$5 ==.
;	../drivers/CoreGPIO/core_gpio.c:101: HAL_ASSERT( HW_get_32bit_reg( cfg_reg_addr ) == config );
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	push	ar5
	push	ar6
	push	ar7
	lcall	_HW_get_32bit_reg
	mov	r3,dpl
	mov	r4,dph
	mov	r0,b
	mov	r1,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar2
;	genCmpEq
;	gencjneshort
	mov	a,r3
	cjne	a,ar2,00121$
	mov	a,r4
	cjne	a,ar5,00121$
	mov	a,r0
	cjne	a,ar6,00121$
	mov	a,r1
	cjne	a,ar7,00121$
	ljmp	00113$
00121$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_config_file_name_4_6
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x65
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_config_file_name_4_6
	mov	dph,#(_GPIO_config_file_name_4_6 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00113$:
	C$core_gpio.c$103$2$1 ==.
	XG$GPIO_config$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_set_outputs'
;------------------------------------------------------------
;sloc0                     Allocated with name '_GPIO_set_outputs_sloc0_1_0'
;sloc1                     Allocated with name '_GPIO_set_outputs_sloc1_1_0'
;sloc2                     Allocated with name '_GPIO_set_outputs_sloc2_1_0'
;value                     Allocated with name '_GPIO_set_outputs_PARM_2'
;this_gpio                 Allocated with name '_GPIO_set_outputs_this_gpio_1_1'
;file_name                 Allocated with name '_GPIO_set_outputs_file_name_4_4'
;file_name                 Allocated with name '_GPIO_set_outputs_file_name_3_6'
;------------------------------------------------------------
	G$GPIO_set_outputs$0$0 ==.
	C$core_gpio.c$109$2$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:109: void GPIO_set_outputs
;	-----------------------------------------
;	 function GPIO_set_outputs
;	-----------------------------------------
_GPIO_set_outputs:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$115$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:115: switch( this_gpio->apb_bus_width )
;	genAssign
	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar2
	mov	r5,a
	mov	a,#0x00
	addc	a,ar3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00122$
	ljmp	00103$
00122$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x01,00123$
	ljmp	00102$
00123$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x02,00124$
	sjmp	00125$
00124$:
	ljmp	00107$
00125$:
	C$core_gpio.c$118$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:118: HAL_set_32bit_reg( this_gpio->base_addr, GPIO_OUT, value );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar5
	mov	r2,a
	mov	a,#0x00
	addc	a,ar6
	mov	r3,a
;	genAssign
	mov	dptr,#_GPIO_set_outputs_PARM_2
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg
	C$core_gpio.c$119$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:119: break;
	ljmp	00113$
	C$core_gpio.c$121$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:121: case GPIO_APB_16_BITS_BUS:
00102$:
	C$core_gpio.c$122$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:122: HAL_set_16bit_reg( this_gpio->base_addr, GPIO_OUT0, (uint16_t)value );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genAssign
	mov	dptr,#_GPIO_set_outputs_PARM_2
	movx	a,@dptr
	mov	_GPIO_set_outputs_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_outputs_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_outputs_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_outputs_sloc1_1_0 + 3),a
;	genCast
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,_GPIO_set_outputs_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 1)
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_16bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$123$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:123: HAL_set_16bit_reg( this_gpio->base_addr, GPIO_OUT1, (uint16_t)(value >> 16) );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA4
	add	a,ar6
	mov	r6,a
	mov	a,#0x00
	addc	a,ar5
	mov	r5,a
;	genGetWord
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r5
	lcall	_HW_set_16bit_reg
	C$core_gpio.c$124$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:124: break;
	ljmp	00113$
	C$core_gpio.c$126$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:126: case GPIO_APB_8_BITS_BUS:
00103$:
	C$core_gpio.c$127$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:127: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT0, (uint8_t)value );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genAssign
	mov	dptr,#_GPIO_set_outputs_PARM_2
	movx	a,@dptr
	mov	_GPIO_set_outputs_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_outputs_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_outputs_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_outputs_sloc2_1_0 + 3),a
;	genCast
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,_GPIO_set_outputs_sloc2_1_0
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_8bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$128$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:128: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT1, (uint8_t)(value >> 8) );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r5,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA4
	add	a,ar6
	mov	r6,a
	mov	a,#0x00
	addc	a,ar5
	mov	r5,a
;	genGetByte
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 1)
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_8bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$129$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:129: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT2, (uint8_t)(value >> 16) );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA8
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genGetByte
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 2)
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_8bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$130$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:130: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT3, (uint8_t)(value >> 24) );
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
	mov	a,#0xAC
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genGetByte
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_8bit_reg
	C$core_gpio.c$131$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:131: break;
	ljmp	00113$
	C$core_gpio.c$134$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:134: HAL_ASSERT(0);
00107$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_set_outputs_file_name_4_4
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x86
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_set_outputs_file_name_4_4
	mov	dph,#(_GPIO_set_outputs_file_name_4_4 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$145$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:145: HAL_ASSERT( GPIO_get_outputs( this_gpio ) == value );
00113$:
;	genAssign
	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_GPIO_get_outputs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#_GPIO_set_outputs_PARM_2
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
;	genCmpEq
;	gencjneshort
	mov	a,r2
	cjne	a,ar6,00126$
	mov	a,r3
	cjne	a,ar7,00126$
	mov	a,r4
	cjne	a,ar0,00126$
	mov	a,r5
	cjne	a,ar1,00126$
	ljmp	00116$
00126$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_set_outputs_file_name_3_6
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x91
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_set_outputs_file_name_3_6
	mov	dph,#(_GPIO_set_outputs_file_name_3_6 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
00116$:
	C$core_gpio.c$146$1$1 ==.
	XG$GPIO_set_outputs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_get_inputs'
;------------------------------------------------------------
;this_gpio                 Allocated with name '_GPIO_get_inputs_this_gpio_1_1'
;gpio_in                   Allocated with name '_GPIO_get_inputs_gpio_in_1_1'
;file_name                 Allocated with name '_GPIO_get_inputs_file_name_4_4'
;------------------------------------------------------------
	G$GPIO_get_inputs$0$0 ==.
	C$core_gpio.c$152$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:152: uint32_t GPIO_get_inputs
;	-----------------------------------------
;	 function GPIO_get_inputs
;	-----------------------------------------
_GPIO_get_inputs:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_get_inputs_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$157$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:157: uint32_t gpio_in = 0;
;	genAssign
	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$core_gpio.c$159$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:159: switch( this_gpio->apb_bus_width )
;	genAssign
	mov	dptr,#_GPIO_get_inputs_this_gpio_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar2
	mov	r5,a
	mov	a,#0x00
	addc	a,ar3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00116$
	ljmp	00103$
00116$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x01,00117$
	ljmp	00102$
00117$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x02,00118$
	sjmp	00119$
00118$:
	ljmp	00107$
00119$:
	C$core_gpio.c$162$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:162: gpio_in = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_IN );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x90
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	lcall	_HW_get_32bit_reg
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
;	genAssign
	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	C$core_gpio.c$163$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:163: break;
	ljmp	00110$
	C$core_gpio.c$165$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:165: case GPIO_APB_16_BITS_BUS:
00102$:
	C$core_gpio.c$166$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:166: gpio_in |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_IN0 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x90
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	lcall	_HW_get_16bit_reg
	mov	r5,dpl
	mov	r6,dph
;	genCast
	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	C$core_gpio.c$168$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:168: break;
	ljmp	00110$
	C$core_gpio.c$170$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:170: case GPIO_APB_8_BITS_BUS:
00103$:
	C$core_gpio.c$171$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:171: gpio_in |= HAL_get_8bit_reg( this_gpio->base_addr, GPIO_IN0 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0x90
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_get_8bit_reg
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	C$core_gpio.c$172$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:172: gpio_in |= (HAL_get_8bit_reg( this_gpio->base_addr, GPIO_IN1 ) << 8);
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
	mov	a,#0x94
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_HW_get_8bit_reg
	mov	r2,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genCast
	mov	r3,#0x00
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	ar3,r2
	mov	r2,#0x00
;	genCast
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r1,a
;	genOr
	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
	mov	a,r2
	orl	a,r5
	movx	@dptr,a
	mov	a,r3
	orl	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r1
	orl	a,r0
	inc	dptr
	movx	@dptr,a
	C$core_gpio.c$175$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:175: break;
	ljmp	00110$
	C$core_gpio.c$178$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:178: HAL_ASSERT(0);
00107$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_get_inputs_file_name_4_4
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xB2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_get_inputs_file_name_4_4
	mov	dph,#(_GPIO_get_inputs_file_name_4_4 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$180$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:180: }
00110$:
	C$core_gpio.c$182$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:182: return gpio_in;
;	genAssign
	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
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
00111$:
	C$core_gpio.c$183$1$1 ==.
	XG$GPIO_get_inputs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_get_outputs'
;------------------------------------------------------------
;this_gpio                 Allocated with name '_GPIO_get_outputs_this_gpio_1_1'
;gpio_out                  Allocated with name '_GPIO_get_outputs_gpio_out_1_1'
;file_name                 Allocated with name '_GPIO_get_outputs_file_name_4_4'
;------------------------------------------------------------
	G$GPIO_get_outputs$0$0 ==.
	C$core_gpio.c$189$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:189: uint32_t GPIO_get_outputs
;	-----------------------------------------
;	 function GPIO_get_outputs
;	-----------------------------------------
_GPIO_get_outputs:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_get_outputs_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$194$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:194: uint32_t gpio_out = 0;
;	genAssign
	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$core_gpio.c$196$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:196: switch( this_gpio->apb_bus_width )
;	genAssign
	mov	dptr,#_GPIO_get_outputs_this_gpio_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar2
	mov	r5,a
	mov	a,#0x00
	addc	a,ar3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00116$
	ljmp	00103$
00116$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x01,00117$
	ljmp	00102$
00117$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x02,00118$
	sjmp	00119$
00118$:
	ljmp	00107$
00119$:
	C$core_gpio.c$199$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:199: gpio_out = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	lcall	_HW_get_32bit_reg
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
;	genAssign
	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	C$core_gpio.c$200$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:200: break;
	ljmp	00110$
	C$core_gpio.c$202$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:202: case GPIO_APB_16_BITS_BUS:
00102$:
	C$core_gpio.c$203$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:203: gpio_out |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT0 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	lcall	_HW_get_16bit_reg
	mov	r5,dpl
	mov	r6,dph
;	genCast
	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	C$core_gpio.c$205$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:205: break;
	ljmp	00110$
	C$core_gpio.c$207$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:207: case GPIO_APB_8_BITS_BUS:
00103$:
	C$core_gpio.c$208$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:208: gpio_out |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT0 );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar5
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_get_16bit_reg
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r7,#0x00
	mov	r0,#0x00
	C$core_gpio.c$209$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:209: gpio_out |= (HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT1 ) << 8);
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
	mov	a,#0xA4
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_HW_get_16bit_reg
	mov	r2,dpl
	mov	r3,dph
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	ar3,r2
	mov	r2,#0x00
;	genCast
	mov	r4,#0x00
	mov	r1,#0x00
;	genOr
	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
	mov	a,r2
	orl	a,r5
	movx	@dptr,a
	mov	a,r3
	orl	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	orl	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r1
	orl	a,r0
	inc	dptr
	movx	@dptr,a
	C$core_gpio.c$212$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:212: break;
	ljmp	00110$
	C$core_gpio.c$215$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:215: HAL_ASSERT(0);
00107$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_get_outputs_file_name_4_4
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xD7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_get_outputs_file_name_4_4
	mov	dph,#(_GPIO_get_outputs_file_name_4_4 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$217$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:217: }
00110$:
	C$core_gpio.c$219$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:219: return gpio_out;
;	genAssign
	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
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
00111$:
	C$core_gpio.c$220$1$1 ==.
	XG$GPIO_get_outputs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_set_output'
;------------------------------------------------------------
;sloc0                     Allocated with name '_GPIO_set_output_sloc0_1_0'
;sloc1                     Allocated with name '_GPIO_set_output_sloc1_1_0'
;sloc2                     Allocated with name '_GPIO_set_output_sloc2_1_0'
;port_id                   Allocated with name '_GPIO_set_output_PARM_2'
;value                     Allocated with name '_GPIO_set_output_PARM_3'
;this_gpio                 Allocated with name '_GPIO_set_output_this_gpio_1_1'
;file_name                 Allocated with name '_GPIO_set_output_file_name_3_3'
;outputs_state             Allocated with name '_GPIO_set_output_outputs_state_3_5'
;file_name                 Allocated with name '_GPIO_set_output_file_name_5_9'
;outputs_state             Allocated with name '_GPIO_set_output_outputs_state_3_10'
;gpio_out_reg_addr         Allocated with name '_GPIO_set_output_gpio_out_reg_addr_3_10'
;file_name                 Allocated with name '_GPIO_set_output_file_name_5_14'
;outputs_state             Allocated with name '_GPIO_set_output_outputs_state_3_15'
;gpio_out_reg_addr         Allocated with name '_GPIO_set_output_gpio_out_reg_addr_3_15'
;file_name                 Allocated with name '_GPIO_set_output_file_name_5_19'
;file_name                 Allocated with name '_GPIO_set_output_file_name_4_21'
;------------------------------------------------------------
	G$GPIO_set_output$0$0 ==.
	C$core_gpio.c$226$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:226: void GPIO_set_output
;	-----------------------------------------
;	 function GPIO_set_output
;	-----------------------------------------
_GPIO_set_output:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_set_output_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$233$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:233: HAL_ASSERT( port_id < NB_OF_GPIO );
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x20,00152$
00152$:
;	genIfxJump
	jnc	00153$
	ljmp	00104$
00153$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_set_output_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xE9
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_set_output_file_name_3_3
	mov	dph,#(_GPIO_set_output_file_name_3_3 >> 8)
	mov	b,#0x00
	push	ar2
	lcall	_HAL_assert_fail
	pop	ar2
00104$:
	C$core_gpio.c$236$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:236: switch( this_gpio->apb_bus_width )
;	genAssign
	mov	dptr,#_GPIO_set_output_this_gpio_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar3
	mov	r6,a
	mov	a,#0x00
	addc	a,ar4
	mov	r7,a
	mov	ar0,r5
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
;	genCmpEq
;	gencjneshort
	cjne	r6,#0x00,00154$
	ljmp	00124$
00154$:
;	genCmpEq
;	gencjneshort
	cjne	r6,#0x01,00155$
	ljmp	00115$
00155$:
;	genCmpEq
;	gencjneshort
	cjne	r6,#0x02,00156$
	sjmp	00157$
00156$:
	ljmp	00136$
00157$:
	C$core_gpio.c$242$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:242: outputs_state = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT );
;	genIpush
	push	ar2
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar6
	mov	r6,a
	mov	a,#0x00
	addc	a,ar7
	mov	r7,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	lcall	_HW_get_32bit_reg
	mov	_GPIO_set_output_sloc0_1_0,dpl
	mov	(_GPIO_set_output_sloc0_1_0 + 1),dph
	mov	(_GPIO_set_output_sloc0_1_0 + 2),b
	mov	(_GPIO_set_output_sloc0_1_0 + 3),a
	pop	ar2
	C$core_gpio.c$243$3$5 ==.
;	../drivers/CoreGPIO/core_gpio.c:243: if ( 0 == value )
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_3
	movx	a,@dptr
	mov	r2,a
;	genCmpEq
;	gencjne
;	gencjneshort
	cjne	r2,#0x00,00158$
	mov	a,#0x01
	sjmp	00159$
00158$:
	clr	a
00159$:
;	genIpop
	pop	ar2
;	genIfx
;	genIfxJump
	jnz	00160$
	ljmp	00108$
00160$:
	C$core_gpio.c$245$4$6 ==.
;	../drivers/CoreGPIO/core_gpio.c:245: outputs_state &= ~(1 << port_id);
;	genLeftShift
	mov	b,r2
	inc	b
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00162$
00161$:
	mov	a,r6
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00162$:
	djnz	b,00161$
;	genCpl
	mov	a,r6
	cpl	a
	mov	r6,a
	mov	a,r7
	cpl	a
	mov	r7,a
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genAnd
	mov	dptr,#_GPIO_set_output_outputs_state_3_5
	mov	a,r6
	anl	a,_GPIO_set_output_sloc0_1_0
	movx	@dptr,a
	mov	a,r7
	anl	a,(_GPIO_set_output_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	anl	a,(_GPIO_set_output_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r1
	anl	a,(_GPIO_set_output_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
	ljmp	00109$
00108$:
	C$core_gpio.c$249$4$7 ==.
;	../drivers/CoreGPIO/core_gpio.c:249: outputs_state |= 1 << port_id;
;	genLeftShift
	mov	b,r2
	inc	b
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00164$
00163$:
	mov	a,r6
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00164$:
	djnz	b,00163$
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genOr
	mov	dptr,#_GPIO_set_output_outputs_state_3_5
	mov	a,r6
	orl	a,_GPIO_set_output_sloc0_1_0
	movx	@dptr,a
	mov	a,r7
	orl	a,(_GPIO_set_output_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	orl	a,(_GPIO_set_output_sloc0_1_0 + 2)
	inc	dptr
	movx	@dptr,a
	mov	a,r1
	orl	a,(_GPIO_set_output_sloc0_1_0 + 3)
	inc	dptr
	movx	@dptr,a
00109$:
	C$core_gpio.c$251$3$5 ==.
;	../drivers/CoreGPIO/core_gpio.c:251: HAL_set_32bit_reg( this_gpio->base_addr, GPIO_OUT, outputs_state );
;	genAssign
	mov	dptr,#_GPIO_set_output_this_gpio_1_1
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
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar1
	mov	r5,a
	mov	a,#0x00
	addc	a,ar6
	mov	r6,a
;	genAssign
	mov	dptr,#_GPIO_set_output_outputs_state_3_5
	movx	a,@dptr
	mov	_GPIO_set_output_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_output_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_output_sloc2_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_GPIO_set_output_sloc2_1_0 + 3),a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
	mov	a,_GPIO_set_output_sloc2_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_set_output_sloc2_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_set_output_sloc2_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_set_output_sloc2_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_32bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$260$4$8 ==.
;	../drivers/CoreGPIO/core_gpio.c:260: HAL_ASSERT( HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT ) == outputs_state );
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar6
	mov	r6,a
	mov	a,#0x00
	addc	a,ar7
	mov	r7,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	lcall	_HW_get_32bit_reg
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genCmpEq
;	gencjneshort
	mov	a,r6
	cjne	a,_GPIO_set_output_sloc2_1_0,00165$
	mov	a,r7
	cjne	a,(_GPIO_set_output_sloc2_1_0 + 1),00165$
	mov	a,r0
	cjne	a,(_GPIO_set_output_sloc2_1_0 + 2),00165$
	mov	a,r1
	cjne	a,(_GPIO_set_output_sloc2_1_0 + 3),00165$
	ljmp	00140$
00165$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_set_output_file_name_5_9
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_set_output_file_name_5_9
	mov	dph,#(_GPIO_set_output_file_name_5_9 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$262$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:262: break;
	ljmp	00140$
	C$core_gpio.c$264$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:264: case GPIO_APB_16_BITS_BUS:
00115$:
	C$core_gpio.c$267$3$10 ==.
;	../drivers/CoreGPIO/core_gpio.c:267: uint32_t gpio_out_reg_addr = this_gpio->base_addr + GPIO_OUT_REG_OFFSET + ((port_id >> 4) * 4);
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar6
	mov	r6,a
	mov	a,#0x00
	addc	a,ar7
	mov	r7,a
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov	r0,a
;	genMult
;	genMultOneByte
	mov	a,r0
	mov	b,#0x04
	mul	ab
;	genPlus
	add	a,ar6
	mov	r6,a
	mov	a,ar7
	addc	a,b
	mov	r7,a
;	genCast
	mov	r0,#0x00
	mov	r1,#0x00
	C$core_gpio.c$269$3$10 ==.
;	../drivers/CoreGPIO/core_gpio.c:269: outputs_state = HW_get_16bit_reg( gpio_out_reg_addr );
;	genCast
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar6
	push	ar7
	lcall	_HW_get_16bit_reg
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar2
	C$core_gpio.c$270$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:270: if ( 0 == value )
;	genIpush
	push	ar2
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_3
	movx	a,@dptr
	mov	r2,a
;	genCmpEq
;	gencjne
;	gencjneshort
	cjne	r2,#0x00,00166$
	mov	a,#0x01
	sjmp	00167$
00166$:
	clr	a
00167$:
;	genIpop
	pop	ar2
;	genIfx
;	genIfxJump
	jnz	00168$
	ljmp	00117$
00168$:
	C$core_gpio.c$272$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:272: outputs_state &= ~(1 << (port_id & 0x0F));
;	genIpush
	push	ar6
	push	ar7
;	genAnd
	mov	a,#0x0F
	anl	a,r2
	mov	r6,a
;	genLeftShift
	mov	b,r6
	inc	b
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00170$
00169$:
	mov	a,r6
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00170$:
	djnz	b,00169$
;	genCpl
	mov	a,r6
	cpl	a
	mov	r6,a
	mov	a,r7
	cpl	a
	mov	r7,a
;	genAnd
	mov	dptr,#_GPIO_set_output_outputs_state_3_10
	mov	a,r6
	anl	a,r0
	movx	@dptr,a
	mov	a,r7
	anl	a,r1
	inc	dptr
	movx	@dptr,a
;	genIpop
	pop	ar7
	pop	ar6
	ljmp	00118$
00117$:
	C$core_gpio.c$276$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:276: outputs_state |= 1 << (port_id & 0x0F);
;	genIpush
	push	ar6
	push	ar7
;	genAnd
	mov	a,#0x0F
	anl	a,r2
	mov	r6,a
;	genLeftShift
	mov	b,r6
	inc	b
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00172$
00171$:
	mov	a,r6
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
00172$:
	djnz	b,00171$
;	genOr
	mov	dptr,#_GPIO_set_output_outputs_state_3_10
	mov	a,r6
	orl	a,r0
	movx	@dptr,a
	mov	a,r7
	orl	a,r1
	inc	dptr
	movx	@dptr,a
	C$core_gpio.c$321$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:321: }
;	genIpop
	pop	ar7
	pop	ar6
	C$core_gpio.c$276$3$10 ==.
;	../drivers/CoreGPIO/core_gpio.c:276: outputs_state |= 1 << (port_id & 0x0F);
00118$:
	C$core_gpio.c$278$3$10 ==.
;	../drivers/CoreGPIO/core_gpio.c:278: HW_set_16bit_reg( gpio_out_reg_addr, outputs_state );
;	genAssign
	mov	dptr,#_GPIO_set_output_outputs_state_3_10
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAssign
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_HW_set_16bit_reg
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	C$core_gpio.c$287$4$13 ==.
;	../drivers/CoreGPIO/core_gpio.c:287: HAL_ASSERT( HW_get_16bit_reg( gpio_out_reg_addr ) == outputs_state );
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar0
	push	ar1
	lcall	_HW_get_16bit_reg
	mov	r6,dpl
	mov	r7,dph
	pop	ar1
	pop	ar0
;	genCmpEq
;	gencjneshort
	mov	a,r6
	cjne	a,ar0,00173$
	mov	a,r7
	cjne	a,ar1,00173$
	ljmp	00140$
00173$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_set_output_file_name_5_14
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x1F
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_set_output_file_name_5_14
	mov	dph,#(_GPIO_set_output_file_name_5_14 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$289$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:289: break;
	ljmp	00140$
	C$core_gpio.c$291$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:291: case GPIO_APB_8_BITS_BUS:
00124$:
	C$core_gpio.c$294$3$15 ==.
;	../drivers/CoreGPIO/core_gpio.c:294: uint32_t gpio_out_reg_addr = this_gpio->base_addr + GPIO_OUT_REG_OFFSET + ((port_id >> 3) * 4);
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genPlus
;	genPlusIncr
	mov	a,#0xA0
	add	a,ar3
	mov	r3,a
	mov	a,#0x00
	addc	a,ar4
	mov	r4,a
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	mov	a,r2
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r5,a
;	genMult
;	genMultOneByte
	mov	a,r5
	mov	b,#0x04
	mul	ab
;	genPlus
	add	a,ar3
	mov	r3,a
	mov	a,ar4
	addc	a,b
	mov	r4,a
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	C$core_gpio.c$296$3$15 ==.
;	../drivers/CoreGPIO/core_gpio.c:296: outputs_state = HW_get_8bit_reg( gpio_out_reg_addr );
;	genCast
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_get_8bit_reg
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$297$3$15 ==.
;	../drivers/CoreGPIO/core_gpio.c:297: if ( 0 == value )
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_3
	movx	a,@dptr
	mov	r6,a
;	genCmpEq
;	gencjneshort
	cjne	r6,#0x00,00174$
	sjmp	00175$
00174$:
	ljmp	00126$
00175$:
	C$core_gpio.c$299$4$16 ==.
;	../drivers/CoreGPIO/core_gpio.c:299: outputs_state &= ~(1 << (port_id & 0x07));
;	genAnd
	mov	a,#0x07
	anl	a,r2
;	genLeftShift
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00178$
00176$:
	add	a,acc
00178$:
	djnz	b,00176$
	mov	r6,a
;	genCpl
	mov	a,r6
	cpl	a
	mov	r6,a
;	genAnd
	mov	dptr,#_GPIO_set_output_outputs_state_3_15
	mov	a,r6
	anl	a,r5
	movx	@dptr,a
	ljmp	00127$
00126$:
	C$core_gpio.c$303$4$17 ==.
;	../drivers/CoreGPIO/core_gpio.c:303: outputs_state |= 1 << (port_id & 0x07);
;	genAnd
	mov	a,#0x07
	anl	a,r2
;	genLeftShift
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00181$
00179$:
	add	a,acc
00181$:
	djnz	b,00179$
	mov	r2,a
;	genOr
	mov	dptr,#_GPIO_set_output_outputs_state_3_15
	mov	a,r2
	orl	a,r5
	movx	@dptr,a
00127$:
	C$core_gpio.c$305$3$15 ==.
;	../drivers/CoreGPIO/core_gpio.c:305: HW_set_8bit_reg( gpio_out_reg_addr, outputs_state );
;	genAssign
	mov	dptr,#_GPIO_set_output_outputs_state_3_15
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r2
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_HW_set_8bit_reg
	pop	ar4
	pop	ar3
	pop	ar2
	C$core_gpio.c$314$4$18 ==.
;	../drivers/CoreGPIO/core_gpio.c:314: HAL_ASSERT( HW_get_8bit_reg( gpio_out_reg_addr ) == outputs_state );
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	lcall	_HW_get_8bit_reg
	mov	r3,dpl
	pop	ar2
;	genCmpEq
;	gencjneshort
	mov	a,r3
	cjne	a,ar2,00182$
	ljmp	00140$
00182$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_set_output_file_name_5_19
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x3A
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_set_output_file_name_5_19
	mov	dph,#(_GPIO_set_output_file_name_5_19 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$316$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:316: break;
	ljmp	00140$
	C$core_gpio.c$319$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:319: HAL_ASSERT(0);
00136$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_set_output_file_name_4_21
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x3F
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_set_output_file_name_4_21
	mov	dph,#(_GPIO_set_output_file_name_4_21 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$321$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:321: }
00140$:
	C$core_gpio.c$322$1$1 ==.
	XG$GPIO_set_output$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_drive_inout'
;------------------------------------------------------------
;port_id                   Allocated with name '_GPIO_drive_inout_PARM_2'
;inout_state               Allocated with name '_GPIO_drive_inout_PARM_3'
;this_gpio                 Allocated with name '_GPIO_drive_inout_this_gpio_1_1'
;config                    Allocated with name '_GPIO_drive_inout_config_1_1'
;cfg_reg_addr              Allocated with name '_GPIO_drive_inout_cfg_reg_addr_1_1'
;file_name                 Allocated with name '_GPIO_drive_inout_file_name_3_3'
;file_name                 Allocated with name '_GPIO_drive_inout_file_name_4_6'
;------------------------------------------------------------
	G$GPIO_drive_inout$0$0 ==.
	C$core_gpio.c$328$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:328: void GPIO_drive_inout
;	-----------------------------------------
;	 function GPIO_drive_inout
;	-----------------------------------------
_GPIO_drive_inout:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$338$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:338: HAL_ASSERT( port_id < NB_OF_GPIO );
;	genAssign
	mov	dptr,#_GPIO_drive_inout_PARM_2
	movx	a,@dptr
	mov	r2,a
;	genCmpLt
;	genCmp
	cjne	r2,#0x20,00122$
00122$:
;	genIfxJump
	jnc	00123$
	ljmp	00104$
00123$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_drive_inout_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x52
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_drive_inout_file_name_3_3
	mov	dph,#(_GPIO_drive_inout_file_name_3_3 >> 8)
	mov	b,#0x00
	push	ar2
	lcall	_HAL_assert_fail
	pop	ar2
00104$:
	C$core_gpio.c$340$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:340: switch( inout_state )
;	genAssign
	mov	dptr,#_GPIO_drive_inout_PARM_3
	movx	a,@dptr
	mov	r3,a
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x00,00124$
	ljmp	00107$
00124$:
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x01,00125$
	ljmp	00106$
00125$:
;	genCmpEq
;	gencjneshort
	cjne	r3,#0x02,00126$
	ljmp	00108$
00126$:
	ljmp	00112$
	C$core_gpio.c$342$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:342: case GPIO_DRIVE_HIGH:
00106$:
	C$core_gpio.c$344$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:344: GPIO_set_output( this_gpio, port_id, 1 );
;	genAssign
	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,r2
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_3
	mov	a,#0x01
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_GPIO_set_output
	pop	ar2
	C$core_gpio.c$347$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:347: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
;	genAssign
	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genMult
;	genMultOneByte
	mov	a,r2
	mov	b,#0x04
	mul	ab
;	genPlus
	add	a,ar3
	mov	r3,a
	mov	a,ar4
	addc	a,b
	mov	r4,a
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	C$core_gpio.c$348$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:348: config = HW_get_8bit_reg( cfg_reg_addr );
;	genCast
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar3
	push	ar4
	lcall	_HW_get_8bit_reg
	mov	r5,dpl
	pop	ar4
	pop	ar3
;	genCast
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	C$core_gpio.c$349$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:349: config |= OUTPUT_BUFFER_ENABLE_MASK;
;	genOr
	orl	ar5,#0x04
	C$core_gpio.c$350$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:350: HW_set_8bit_reg( cfg_reg_addr, config );
;	genCast
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r5
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	lcall	_HW_set_8bit_reg
	C$core_gpio.c$351$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:351: break;
	ljmp	00116$
	C$core_gpio.c$353$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:353: case GPIO_DRIVE_LOW:
00107$:
	C$core_gpio.c$355$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:355: GPIO_set_output( this_gpio, port_id, 0 );
;	genAssign
	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_2
	mov	a,r2
	movx	@dptr,a
;	genAssign
	mov	dptr,#_GPIO_set_output_PARM_3
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar2
	lcall	_GPIO_set_output
	pop	ar2
	C$core_gpio.c$358$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:358: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
;	genAssign
	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genMult
;	genMultOneByte
	mov	a,r2
	mov	b,#0x04
	mul	ab
;	genPlus
	add	a,ar3
	mov	r3,a
	mov	a,ar4
	addc	a,b
	mov	r4,a
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	C$core_gpio.c$359$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:359: config = HW_get_8bit_reg( cfg_reg_addr );
;	genCast
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar3
	push	ar4
	lcall	_HW_get_8bit_reg
	mov	r5,dpl
	pop	ar4
	pop	ar3
;	genCast
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	C$core_gpio.c$360$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:360: config |= OUTPUT_BUFFER_ENABLE_MASK;
;	genOr
	orl	ar5,#0x04
	C$core_gpio.c$361$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:361: HW_set_8bit_reg( cfg_reg_addr, config );
;	genCast
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r5
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	lcall	_HW_set_8bit_reg
	C$core_gpio.c$362$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:362: break;
	ljmp	00116$
	C$core_gpio.c$364$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:364: case GPIO_HIGH_Z:
00108$:
	C$core_gpio.c$366$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:366: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
;	genAssign
	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	lcall	__gptrget
	mov	r4,a
;	genMult
;	genMultOneByte
	mov	a,r2
	mov	b,#0x04
	mul	ab
;	genPlus
	add	a,ar3
	mov	r3,a
	mov	a,ar4
	addc	a,b
	mov	r4,a
;	genCast
	mov	r2,#0x00
	mov	r5,#0x00
	C$core_gpio.c$367$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:367: config = HW_get_8bit_reg( cfg_reg_addr );
;	genCast
;	genCall
	mov	dpl,r3
	mov	dph,r4
	push	ar3
	push	ar4
	lcall	_HW_get_8bit_reg
	mov	r2,dpl
	pop	ar4
	pop	ar3
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	C$core_gpio.c$368$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:368: config &= ~OUTPUT_BUFFER_ENABLE_MASK;
;	genAnd
	anl	ar2,#0xFB
	C$core_gpio.c$369$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:369: HW_set_8bit_reg( cfg_reg_addr, config );
;	genCast
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r2
	movx	@dptr,a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	lcall	_HW_set_8bit_reg
	C$core_gpio.c$370$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:370: break;
	ljmp	00116$
	C$core_gpio.c$373$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:373: HAL_ASSERT(0);
00112$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_drive_inout_file_name_4_6
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x75
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_drive_inout_file_name_4_6
	mov	dph,#(_GPIO_drive_inout_file_name_4_6 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$375$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:375: }
00116$:
	C$core_gpio.c$376$1$1 ==.
	XG$GPIO_drive_inout$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_enable_irq'
;------------------------------------------------------------
;port_id                   Allocated with name '_GPIO_enable_irq_PARM_2'
;this_gpio                 Allocated with name '_GPIO_enable_irq_this_gpio_1_1'
;cfg_value                 Allocated with name '_GPIO_enable_irq_cfg_value_1_1'
;cfg_reg_addr              Allocated with name '_GPIO_enable_irq_cfg_reg_addr_1_1'
;file_name                 Allocated with name '_GPIO_enable_irq_file_name_3_3'
;------------------------------------------------------------
	G$GPIO_enable_irq$0$0 ==.
	C$core_gpio.c$382$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:382: void GPIO_enable_irq
;	-----------------------------------------
;	 function GPIO_enable_irq
;	-----------------------------------------
_GPIO_enable_irq:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_enable_irq_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$389$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:389: uint32_t cfg_reg_addr = this_gpio->base_addr;
;	genAssign
	mov	dptr,#_GPIO_enable_irq_this_gpio_1_1
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
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
	C$core_gpio.c$391$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:391: HAL_ASSERT( port_id < NB_OF_GPIO );
;	genAssign
	mov	dptr,#_GPIO_enable_irq_PARM_2
	movx	a,@dptr
	mov	r6,a
;	genCmpLt
;	genCmp
	cjne	r6,#0x20,00112$
00112$:
	clr	a
	rlc	a
	mov	r7,a
;	genIfx
	mov	a,r7
;	genIfxJump
	jz	00113$
	ljmp	00104$
00113$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_enable_irq_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x87
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_enable_irq_file_name_3_3
	mov	dph,#(_GPIO_enable_irq_file_name_3_3 >> 8)
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_HAL_assert_fail
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00104$:
	C$core_gpio.c$393$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:393: if ( port_id < NB_OF_GPIO )
;	genIfx
	mov	a,r7
;	genIfxJump
	jnz	00114$
	ljmp	00108$
00114$:
	C$core_gpio.c$395$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:395: cfg_reg_addr += (port_id * 4);
;	genMult
;	genMultOneByte
	mov	a,r6
	mov	b,#0x04
	mul	ab
	mov	r6,a
	mov	r7,b
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genPlus
	mov	a,ar6
	add	a,ar2
	mov	r2,a
	mov	a,ar7
	addc	a,ar3
	mov	r3,a
	mov	a,ar0
	addc	a,ar4
	mov	r4,a
	mov	a,ar1
	addc	a,ar5
	mov	r5,a
	C$core_gpio.c$396$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:396: cfg_value = HW_get_8bit_reg( cfg_reg_addr );
;	genCast
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_HW_get_8bit_reg
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	C$core_gpio.c$397$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:397: cfg_value |= GPIO_INT_ENABLE_MASK;
;	genOr
	orl	ar4,#0x08
	C$core_gpio.c$398$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:398: HW_set_8bit_reg( cfg_reg_addr, cfg_value );
;	genCast
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r4
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_8bit_reg
00108$:
	C$core_gpio.c$400$2$1 ==.
	XG$GPIO_enable_irq$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_disable_irq'
;------------------------------------------------------------
;port_id                   Allocated with name '_GPIO_disable_irq_PARM_2'
;this_gpio                 Allocated with name '_GPIO_disable_irq_this_gpio_1_1'
;cfg_value                 Allocated with name '_GPIO_disable_irq_cfg_value_1_1'
;cfg_reg_addr              Allocated with name '_GPIO_disable_irq_cfg_reg_addr_1_1'
;file_name                 Allocated with name '_GPIO_disable_irq_file_name_3_3'
;------------------------------------------------------------
	G$GPIO_disable_irq$0$0 ==.
	C$core_gpio.c$406$2$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:406: void GPIO_disable_irq
;	-----------------------------------------
;	 function GPIO_disable_irq
;	-----------------------------------------
_GPIO_disable_irq:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_disable_irq_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$413$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:413: uint32_t cfg_reg_addr = this_gpio->base_addr;
;	genAssign
	mov	dptr,#_GPIO_disable_irq_this_gpio_1_1
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
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
	C$core_gpio.c$415$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:415: HAL_ASSERT( port_id < NB_OF_GPIO );
;	genAssign
	mov	dptr,#_GPIO_disable_irq_PARM_2
	movx	a,@dptr
	mov	r6,a
;	genCmpLt
;	genCmp
	cjne	r6,#0x20,00112$
00112$:
	clr	a
	rlc	a
	mov	r7,a
;	genIfx
	mov	a,r7
;	genIfxJump
	jz	00113$
	ljmp	00104$
00113$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_disable_irq_file_name_3_3
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0x9F
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_disable_irq_file_name_3_3
	mov	dph,#(_GPIO_disable_irq_file_name_3_3 >> 8)
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_HAL_assert_fail
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00104$:
	C$core_gpio.c$417$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:417: if ( port_id < NB_OF_GPIO )
;	genIfx
	mov	a,r7
;	genIfxJump
	jnz	00114$
	ljmp	00108$
00114$:
	C$core_gpio.c$419$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:419: cfg_reg_addr += (port_id * 4);
;	genMult
;	genMultOneByte
	mov	a,r6
	mov	b,#0x04
	mul	ab
	mov	r6,a
	mov	r7,b
;	genCast
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
;	genPlus
	mov	a,ar6
	add	a,ar2
	mov	r2,a
	mov	a,ar7
	addc	a,ar3
	mov	r3,a
	mov	a,ar0
	addc	a,ar4
	mov	r4,a
	mov	a,ar1
	addc	a,ar5
	mov	r5,a
	C$core_gpio.c$420$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:420: cfg_value = HW_get_8bit_reg( cfg_reg_addr );
;	genCast
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	_HW_get_8bit_reg
	mov	r4,dpl
	pop	ar3
	pop	ar2
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	C$core_gpio.c$421$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:421: cfg_value &= ~GPIO_INT_ENABLE_MASK;
;	genAnd
	anl	ar4,#0xF7
	C$core_gpio.c$422$2$4 ==.
;	../drivers/CoreGPIO/core_gpio.c:422: HW_set_8bit_reg( cfg_reg_addr, cfg_value );
;	genCast
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,r4
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_8bit_reg
00108$:
	C$core_gpio.c$424$2$1 ==.
	XG$GPIO_disable_irq$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_clear_irq'
;------------------------------------------------------------
;sloc0                     Allocated with name '_GPIO_clear_irq_sloc0_1_0'
;port_id                   Allocated with name '_GPIO_clear_irq_PARM_2'
;this_gpio                 Allocated with name '_GPIO_clear_irq_this_gpio_1_1'
;irq_clr_value             Allocated with name '_GPIO_clear_irq_irq_clr_value_1_1'
;file_name                 Allocated with name '_GPIO_clear_irq_file_name_4_4'
;------------------------------------------------------------
	G$GPIO_clear_irq$0$0 ==.
	C$core_gpio.c$430$2$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:430: void GPIO_clear_irq
;	-----------------------------------------
;	 function GPIO_clear_irq
;	-----------------------------------------
_GPIO_clear_irq:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_GPIO_clear_irq_this_gpio_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$core_gpio.c$436$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:436: uint32_t irq_clr_value = ((uint32_t)1) << ((uint32_t)port_id);
;	genAssign
	mov	dptr,#_GPIO_clear_irq_PARM_2
	movx	a,@dptr
	mov	r2,a
;	genCast
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
;	genLeftShift
	mov	b,r2
	inc	b
	mov	_GPIO_clear_irq_sloc0_1_0,#0x01
	mov	(_GPIO_clear_irq_sloc0_1_0 + 1),#0x00
	mov	(_GPIO_clear_irq_sloc0_1_0 + 2),#0x00
	mov	(_GPIO_clear_irq_sloc0_1_0 + 3),#0x00
	sjmp	00117$
00116$:
	mov	a,_GPIO_clear_irq_sloc0_1_0
	add	a,acc
	mov	_GPIO_clear_irq_sloc0_1_0,a
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
	rlc	a
	mov	(_GPIO_clear_irq_sloc0_1_0 + 1),a
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
	rlc	a
	mov	(_GPIO_clear_irq_sloc0_1_0 + 2),a
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
	rlc	a
	mov	(_GPIO_clear_irq_sloc0_1_0 + 3),a
00117$:
	djnz	b,00116$
	C$core_gpio.c$438$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:438: switch( this_gpio->apb_bus_width )
;	genAssign
	mov	dptr,#_GPIO_clear_irq_this_gpio_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,ar6
	mov	r1,a
	mov	a,#0x00
	addc	a,ar7
	mov	r2,a
	mov	ar3,r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r2,a
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x00,00118$
	ljmp	00103$
00118$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x01,00119$
	ljmp	00102$
00119$:
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x02,00120$
	sjmp	00121$
00120$:
	ljmp	00107$
00121$:
	C$core_gpio.c$441$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:441: HAL_set_32bit_reg( this_gpio->base_addr, IRQ, irq_clr_value );
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
	mov	a,#0x80
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genAssign
	mov	dptr,#_HW_set_32bit_reg_PARM_2
	mov	a,_GPIO_clear_irq_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_32bit_reg
	C$core_gpio.c$442$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:442: break;
	ljmp	00111$
	C$core_gpio.c$444$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:444: case GPIO_APB_16_BITS_BUS:
00102$:
	C$core_gpio.c$445$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:445: HAL_set_16bit_reg( this_gpio->base_addr, IRQ0, irq_clr_value );
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
	mov	a,#0x80
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genCast
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,_GPIO_clear_irq_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	push	ar0
	lcall	_HW_set_16bit_reg
	pop	ar0
	pop	ar7
	pop	ar6
	C$core_gpio.c$446$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:446: HAL_set_16bit_reg( this_gpio->base_addr, IRQ1, irq_clr_value >> 16 );
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
	mov	a,#0x84
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genGetWord
	mov	dptr,#_HW_set_16bit_reg_PARM_2
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_HW_set_16bit_reg
	C$core_gpio.c$447$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:447: break;
	ljmp	00111$
	C$core_gpio.c$449$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:449: case GPIO_APB_8_BITS_BUS:
00103$:
	C$core_gpio.c$450$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:450: HAL_set_8bit_reg( this_gpio->base_addr, IRQ0, irq_clr_value );
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
	mov	a,#0x80
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genCast
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,_GPIO_clear_irq_sloc0_1_0
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	push	ar0
	lcall	_HW_set_8bit_reg
	pop	ar0
	pop	ar7
	pop	ar6
	C$core_gpio.c$451$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:451: HAL_set_8bit_reg( this_gpio->base_addr, IRQ1, irq_clr_value >> 8 );
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
	mov	a,#0x84
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genGetByte
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	push	ar0
	lcall	_HW_set_8bit_reg
	pop	ar0
	pop	ar7
	pop	ar6
	C$core_gpio.c$452$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:452: HAL_set_8bit_reg( this_gpio->base_addr, IRQ2, irq_clr_value >> 16 );
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
	mov	a,#0x88
	add	a,ar2
	mov	r2,a
	mov	a,#0x00
	addc	a,ar3
	mov	r3,a
;	genGetByte
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	push	ar0
	lcall	_HW_set_8bit_reg
	pop	ar0
	pop	ar7
	pop	ar6
	C$core_gpio.c$453$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:453: HAL_set_8bit_reg( this_gpio->base_addr, IRQ3, irq_clr_value >> 24 );
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
;	genPlus
;	genPlusIncr
	mov	a,#0x8C
	add	a,ar6
	mov	r6,a
	mov	a,#0x00
	addc	a,ar7
	mov	r7,a
;	genGetByte
	mov	dptr,#_HW_set_8bit_reg_PARM_2
	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	lcall	_HW_set_8bit_reg
	C$core_gpio.c$454$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:454: break;
	ljmp	00111$
	C$core_gpio.c$457$2$2 ==.
;	../drivers/CoreGPIO/core_gpio.c:457: HAL_ASSERT(0);
00107$:
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_GPIO_clear_irq_file_name_4_4
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0001)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0002)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0004)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0005)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0006)
	mov	a,#0x76
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0008)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0009)
	mov	a,#0x73
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000a)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000b)
	mov	a,#0x43
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000d)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000e)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000f)
	mov	a,#0x47
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0010)
	mov	a,#0x50
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0011)
	mov	a,#0x49
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0012)
	mov	a,#0x4F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0013)
	mov	a,#0x2F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0014)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0015)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0016)
	mov	a,#0x72
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0018)
	mov	a,#0x5F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0019)
	mov	a,#0x67
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001a)
	mov	a,#0x70
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001c)
	mov	a,#0x6F
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001d)
	mov	a,#0x2E
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001e)
	mov	a,#0x63
	movx	@dptr,a
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001f)
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_HAL_assert_fail_PARM_2
	mov	a,#0xC9
	movx	@dptr,a
	inc	dptr
	mov	a,#0x01
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,#_GPIO_clear_irq_file_name_4_4
	mov	dph,#(_GPIO_clear_irq_file_name_4_4 >> 8)
	mov	b,#0x00
	lcall	_HAL_assert_fail
	C$core_gpio.c$459$1$1 ==.
;	../drivers/CoreGPIO/core_gpio.c:459: }
00111$:
	C$core_gpio.c$460$1$1 ==.
	XG$GPIO_clear_irq$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
