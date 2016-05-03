;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.3 #4543 (Dec 31 2006)
; This file generated Tue May 03 17:52:19 2016
;--------------------------------------------------------
	.module ___misc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _xatoi_PARM_2
	.globl _int_to_dec_int_PARM_2
	.globl _int_to_hex_int_PARM_3
	.globl _int_to_hex_int_PARM_2
	.globl _dp_display_array_PARM_3
	.globl _dp_display_array_PARM_2
	.globl _dp_display_value_PARM_2
	.globl _dp_display_text
	.globl _dp_display_value
	.globl _dp_display_array
	.globl _int_to_hex_int
	.globl _int_to_dec_int
	.globl _xatoi
	.globl _getParity
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
Ldp_display_array$sloc0$1$0==.
_dp_display_array_sloc0_1_0:
	.ds 2
Ldp_display_array$sloc1$1$0==.
_dp_display_array_sloc1_1_0:
	.ds 2
Lint_to_hex_int$sloc0$1$0==.
_int_to_hex_int_sloc0_1_0:
	.ds 2
Lint_to_hex_int$sloc1$1$0==.
_int_to_hex_int_sloc1_1_0:
	.ds 3
Lint_to_dec_int$sloc0$1$0==.
_int_to_dec_int_sloc0_1_0:
	.ds 3
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
Ldp_display_text$text$1$1==.
_dp_display_text_text_1_1:
	.ds 3
Ldp_display_text$length$1$1==.
_dp_display_text_length_1_1:
	.ds 2
Ldp_display_value$descriptive$1$1==.
_dp_display_value_PARM_2:
	.ds 2
Ldp_display_value$value$1$1==.
_dp_display_value_value_1_1:
	.ds 4
Ldp_display_value$value_text$1$1==.
_dp_display_value_value_text_1_1:
	.ds 256
Ldp_display_value$text_size$1$1==.
_dp_display_value_text_size_1_1:
	.ds 2
Ldp_display_array$bytes$1$1==.
_dp_display_array_PARM_2:
	.ds 2
Ldp_display_array$descriptive$1$1==.
_dp_display_array_PARM_3:
	.ds 2
Ldp_display_array$value$1$1==.
_dp_display_array_value_1_1:
	.ds 3
Ldp_display_array$idx$1$1==.
_dp_display_array_idx_1_1:
	.ds 2
Lint_to_hex_int$p_result$1$1==.
_int_to_hex_int_PARM_2:
	.ds 3
Lint_to_hex_int$result_size$1$1==.
_int_to_hex_int_PARM_3:
	.ds 2
Lint_to_hex_int$value$1$1==.
_int_to_hex_int_value_1_1:
	.ds 2
Lint_to_hex_int$nibble_idx$1$1==.
_int_to_hex_int_nibble_idx_1_1:
	.ds 2
Lint_to_hex_int$nb_nibbles$1$1==.
_int_to_hex_int_nb_nibbles_1_1:
	.ds 2
Lint_to_hex_int$conv_array$1$1==.
_int_to_hex_int_conv_array_1_1:
	.ds 8
Lint_to_hex_int$uvalue$1$1==.
_int_to_hex_int_uvalue_1_1:
	.ds 2
Lint_to_dec_int$p_result$1$1==.
_int_to_dec_int_PARM_2:
	.ds 3
Lint_to_dec_int$value$1$1==.
_int_to_dec_int_value_1_1:
	.ds 2
Lint_to_dec_int$conv_array$1$1==.
_int_to_dec_int_conv_array_1_1:
	.ds 8
Lint_to_dec_int$uvalue$1$1==.
_int_to_dec_int_uvalue_1_1:
	.ds 2
Lint_to_dec_int$digit_idx$1$1==.
_int_to_dec_int_digit_idx_1_1:
	.ds 2
Lint_to_dec_int$nb_digits$1$1==.
_int_to_dec_int_nb_digits_1_1:
	.ds 2
Lxatoi$res$1$1==.
_xatoi_PARM_2:
	.ds 3
Lxatoi$str$1$1==.
_xatoi_str_1_1:
	.ds 3
Lxatoi$val$1$1==.
_xatoi_val_1_1:
	.ds 4
Lxatoi$c$1$1==.
_xatoi_c_1_1:
	.ds 1
Lxatoi$r$1$1==.
_xatoi_r_1_1:
	.ds 1
Lxatoi$s$1$1==.
_xatoi_s_1_1:
	.ds 1
LgetParity$n$1$1==.
_getParity_n_1_1:
	.ds 2
LgetParity$parity$1$1==.
_getParity_parity_1_1:
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
;Allocation info for local variables in function 'dp_display_text'
;------------------------------------------------------------
;text                      Allocated with name '_dp_display_text_text_1_1'
;length                    Allocated with name '_dp_display_text_length_1_1'
;------------------------------------------------------------
	G$dp_display_text$0$0 ==.
	C$misc.c$8$0$0 ==.
;	../misc.c:8: void dp_display_text(uint8_t * text)
;	-----------------------------------------
;	 function dp_display_text
;	-----------------------------------------
_dp_display_text:
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
	mov	dptr,#_dp_display_text_text_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$misc.c$12$1$1 ==.
;	../misc.c:12: length = 0;
;	genAssign
	mov	dptr,#_dp_display_text_length_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$misc.c$13$1$1 ==.
;	../misc.c:13: while (text[length++]!='\0');
;	genAssign
	mov	dptr,#_dp_display_text_text_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00101$:
;	genAssign
	mov	dptr,#_dp_display_text_length_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genPlus
	mov	dptr,#_dp_display_text_length_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar5
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar6
	inc	dptr
	movx	@dptr,a
;	genPlus
	mov	a,ar5
	add	a,ar2
	mov	r5,a
	mov	a,ar6
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
	cjne	r5,#0x00,00108$
	sjmp	00109$
00108$:
	ljmp	00101$
00109$:
	C$misc.c$15$1$1 ==.
;	../misc.c:15: UART_send(&g_stdio_uart, (uint8_t *)text,length);
;	genAssign
	mov	dptr,#_dp_display_text_length_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign
	mov	dptr,#_UART_send_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_stdio_uart
	mov	dph,#(_g_stdio_uart >> 8)
	mov	b,#0x00
	lcall	_UART_send
00104$:
	C$misc.c$16$1$1 ==.
	XG$dp_display_text$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dp_display_value'
;------------------------------------------------------------
;descriptive               Allocated with name '_dp_display_value_PARM_2'
;value                     Allocated with name '_dp_display_value_value_1_1'
;value_text                Allocated with name '_dp_display_value_value_text_1_1'
;text_size                 Allocated with name '_dp_display_value_text_size_1_1'
;------------------------------------------------------------
	G$dp_display_value$0$0 ==.
	C$misc.c$18$1$1 ==.
;	../misc.c:18: void dp_display_value(uint32_t value,DPUINT descriptive)
;	-----------------------------------------
;	 function dp_display_value
;	-----------------------------------------
_dp_display_value:
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	dptr,#_dp_display_value_value_1_1
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
	C$misc.c$23$1$1 ==.
;	../misc.c:23: if (descriptive == HEX)
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
	jz	00107$
	ljmp	00102$
00107$:
	C$misc.c$25$2$2 ==.
;	../misc.c:25: text_size = int_to_hex_int( value, value_text, 8);
;	genAssign
	mov	dptr,#_dp_display_value_value_1_1
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
;	genCast
;	genCast
	mov	dptr,#_int_to_hex_int_PARM_2
	mov	a,#_dp_display_value_value_text_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_dp_display_value_value_text_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genAssign
	mov	dptr,#_int_to_hex_int_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_int_to_hex_int
	mov	a,dpl
	mov	b,dph
;	genAssign
	mov	dptr,#_dp_display_value_text_size_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	ljmp	00103$
00102$:
	C$misc.c$29$2$3 ==.
;	../misc.c:29: text_size = int_to_dec_int( value, value_text);
;	genAssign
	mov	dptr,#_dp_display_value_value_1_1
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
;	genCast
;	genCast
	mov	dptr,#_int_to_dec_int_PARM_2
	mov	a,#_dp_display_value_value_text_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_dp_display_value_value_text_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	lcall	_int_to_dec_int
	mov	a,dpl
	mov	b,dph
;	genAssign
	mov	dptr,#_dp_display_value_text_size_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
00103$:
	C$misc.c$31$1$1 ==.
;	../misc.c:31: UART_send (&g_stdio_uart, value_text, text_size);
;	genAssign
	mov	dptr,#_dp_display_value_text_size_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_UART_send_PARM_2
	mov	a,#_dp_display_value_value_text_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_dp_display_value_value_text_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genAssign
	mov	dptr,#_UART_send_PARM_3
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	genCall
	mov	dpl,#_g_stdio_uart
	mov	dph,#(_g_stdio_uart >> 8)
	mov	b,#0x00
	lcall	_UART_send
00104$:
	C$misc.c$33$1$1 ==.
	XG$dp_display_value$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dp_display_array'
;------------------------------------------------------------
;sloc0                     Allocated with name '_dp_display_array_sloc0_1_0'
;sloc1                     Allocated with name '_dp_display_array_sloc1_1_0'
;bytes                     Allocated with name '_dp_display_array_PARM_2'
;descriptive               Allocated with name '_dp_display_array_PARM_3'
;value                     Allocated with name '_dp_display_array_value_1_1'
;idx                       Allocated with name '_dp_display_array_idx_1_1'
;------------------------------------------------------------
	G$dp_display_array$0$0 ==.
	C$misc.c$34$1$1 ==.
;	../misc.c:34: void dp_display_array(uint8_t *value,DPUINT bytes, DPUINT descriptive)
;	-----------------------------------------
;	 function dp_display_array
;	-----------------------------------------
_dp_display_array:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_dp_display_array_value_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$misc.c$37$1$1 ==.
;	../misc.c:37: for (idx=0;idx<bytes;idx++)
;	genAssign
	mov	dptr,#_dp_display_array_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_dp_display_array_value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_dp_display_array_PARM_3
	movx	a,@dptr
	mov	_dp_display_array_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dp_display_array_sloc1_1_0 + 1),a
;	genAssign
	mov	dptr,#_dp_display_array_PARM_2
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
00101$:
;	genIpush
;	genAssign
	mov	dptr,#_dp_display_array_idx_1_1
	movx	a,@dptr
	mov	_dp_display_array_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dp_display_array_sloc0_1_0 + 1),a
;	genAssign
	mov	r1,_dp_display_array_sloc0_1_0
	mov	r5,(_dp_display_array_sloc0_1_0 + 1)
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r1
	subb	a,r7
	mov	a,r5
	subb	a,r0
	clr	a
	rlc	a
;	genIpop
;	genIfx
;	genIfxJump
	jnz	00109$
	ljmp	00105$
00109$:
	C$misc.c$39$2$2 ==.
;	../misc.c:39: dp_display_value(value[bytes-1-idx], descriptive);
;	genMinus
;	genMinusDec
	mov	a,r7
	add	a,#0xff
	mov	r1,a
	mov	a,r0
	addc	a,#0xff
	mov	r5,a
;	genMinus
	mov	a,r1
	clr	c
	subb	a,_dp_display_array_sloc0_1_0
	mov	r1,a
	mov	a,r5
	subb	a,(_dp_display_array_sloc0_1_0 + 1)
	mov	r5,a
;	genPlus
	mov	a,ar1
	add	a,ar2
	mov	r1,a
	mov	a,ar5
	addc	a,ar3
	mov	r5,a
	mov	ar6,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r1,a
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genCast
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r2,#0x00
;	genAssign
	mov	dptr,#_dp_display_value_PARM_2
	mov	a,_dp_display_array_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_dp_display_array_sloc1_1_0 + 1)
	movx	@dptr,a
;	genCall
	mov	dpl,r1
	mov	dph,r5
	mov	b,r6
	mov	a,r2
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	push	ar0
	lcall	_dp_display_value
	pop	ar0
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	C$misc.c$40$2$2 ==.
;	../misc.c:40: dp_display_text(" ");
;	genCall
	mov	dpl,#__str_0
	mov	dph,#(__str_0 >> 8)
	mov	b,#0x80
	push	ar2
	push	ar3
	push	ar4
	push	ar7
	push	ar0
	lcall	_dp_display_text
	pop	ar0
	pop	ar7
	pop	ar4
	pop	ar3
	pop	ar2
	C$misc.c$37$1$1 ==.
;	../misc.c:37: for (idx=0;idx<bytes;idx++)
;	genPlus
	mov	dptr,#_dp_display_array_idx_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,_dp_display_array_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_dp_display_array_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00101$
00105$:
	C$misc.c$43$1$1 ==.
	XG$dp_display_array$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int_to_hex_int'
;------------------------------------------------------------
;sloc0                     Allocated with name '_int_to_hex_int_sloc0_1_0'
;sloc1                     Allocated with name '_int_to_hex_int_sloc1_1_0'
;p_result                  Allocated with name '_int_to_hex_int_PARM_2'
;result_size               Allocated with name '_int_to_hex_int_PARM_3'
;value                     Allocated with name '_int_to_hex_int_value_1_1'
;nibble_idx                Allocated with name '_int_to_hex_int_nibble_idx_1_1'
;nb_nibbles                Allocated with name '_int_to_hex_int_nb_nibbles_1_1'
;conv_array                Allocated with name '_int_to_hex_int_conv_array_1_1'
;uvalue                    Allocated with name '_int_to_hex_int_uvalue_1_1'
;nibble                    Allocated with name '_int_to_hex_int_nibble_2_2'
;------------------------------------------------------------
	G$int_to_hex_int$0$0 ==.
	C$misc.c$48$1$1 ==.
;	../misc.c:48: DPUINT int_to_hex_int(DPUINT value, uint8_t * p_result, DPUINT result_size)
;	-----------------------------------------
;	 function int_to_hex_int
;	-----------------------------------------
_int_to_hex_int:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_int_to_hex_int_value_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$misc.c$53$1$1 ==.
;	../misc.c:53: nibble_idx = 0;
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$misc.c$54$1$1 ==.
;	../misc.c:54: uvalue = (unsigned int)value;
;	genAssign
	mov	dptr,#_int_to_hex_int_value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_int_to_hex_int_uvalue_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$misc.c$56$2$2 ==.
;	../misc.c:56: do {
00105$:
	C$misc.c$57$2$2 ==.
;	../misc.c:57: int nibble = uvalue & 0x0F;
;	genAssign
	mov	dptr,#_int_to_hex_int_uvalue_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAnd
	anl	ar2,#0x0F
	mov	r3,#0x00
	C$misc.c$59$2$2 ==.
;	../misc.c:59: if ( nibble < 10 )
;	genAssign
	mov	ar4,r2
	mov	ar5,r3
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,#0x0A
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
;	genIfxJump
	jc	00121$
	ljmp	00102$
00121$:
	C$misc.c$60$2$2 ==.
;	../misc.c:60: conv_array[nibble_idx] = nibble + '0';
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
	mov	a,ar4
	add	a,#_int_to_hex_int_conv_array_1_1
	mov	dpl,a
	mov	a,ar5
	addc	a,#(_int_to_hex_int_conv_array_1_1 >> 8)
	mov	dph,a
;	genAssign
	mov	ar4,r2
	mov	ar5,r3
;	genCast
;	genPlus
;	genPlusIncr
	mov	a,#0x30
	add	a,ar4
	mov	r4,a
;	genPointerSet
;     genFarPointerSet
	mov	a,r4
	movx	@dptr,a
	ljmp	00103$
00102$:
	C$misc.c$62$2$2 ==.
;	../misc.c:62: conv_array[nibble_idx] = nibble  - 10 + 'A';
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
	mov	a,ar4
	add	a,#_int_to_hex_int_conv_array_1_1
	mov	dpl,a
	mov	a,ar5
	addc	a,#(_int_to_hex_int_conv_array_1_1 >> 8)
	mov	dph,a
;	genAssign
;	genCast
;	genPlus
;	genPlusIncr
	mov	a,#0x37
	add	a,ar2
	mov	r2,a
;	genPointerSet
;     genFarPointerSet
	mov	a,r2
	movx	@dptr,a
00103$:
	C$misc.c$63$2$2 ==.
;	../misc.c:63: uvalue = (uvalue >> 4);
;	genAssign
	mov	dptr,#_int_to_hex_int_uvalue_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	a,r3
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
;	genAssign
	mov	dptr,#_int_to_hex_int_uvalue_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$misc.c$64$2$2 ==.
;	../misc.c:64: nibble_idx++;
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar2
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
	C$misc.c$65$1$1 ==.
;	../misc.c:65: } while ( ( nibble_idx < NB_NIBBLES_IN_INT ) && ( uvalue > 0 ) );
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,#0x08
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
;	genIfxJump
	jc	00122$
	ljmp	00107$
00122$:
;	genAssign
	mov	dptr,#_int_to_hex_int_uvalue_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
	jz	00123$
	ljmp	00105$
00123$:
00107$:
	C$misc.c$67$1$1 ==.
;	../misc.c:67: nb_nibbles = nibble_idx;
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_int_to_hex_int_nb_nibbles_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$misc.c$68$1$1 ==.
;	../misc.c:68: for ( nibble_idx = 0; (nibble_idx < nb_nibbles) && (nibble_idx < result_size) ;nibble_idx++ )
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_int_to_hex_int_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_int_to_hex_int_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	genAssign
	mov	dptr,#_int_to_hex_int_nb_nibbles_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
00109$:
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	movx	a,@dptr
	mov	_int_to_hex_int_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_int_to_hex_int_sloc0_1_0 + 1),a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,_int_to_hex_int_sloc0_1_0
	subb	a,r7
	mov	a,(_int_to_hex_int_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r0
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jc	00124$
	ljmp	00112$
00124$:
;	genIpush
	push	ar4
	push	ar5
	push	ar6
;	genAssign
	mov	r1,_int_to_hex_int_sloc0_1_0
	mov	r4,(_int_to_hex_int_sloc0_1_0 + 1)
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r1
	subb	a,r2
	mov	a,r4
	subb	a,r3
	clr	a
	rlc	a
;	genIpop
	pop	ar6
	pop	ar5
	pop	ar4
;	genIfx
;	genIfxJump
	jnz	00125$
	ljmp	00112$
00125$:
	C$misc.c$70$1$1 ==.
;	../misc.c:70: p_result[nibble_idx] = conv_array[nb_nibbles - nibble_idx - 1];
;	genIpush
	push	ar2
	push	ar3
;	genPlus
	mov	a,_int_to_hex_int_sloc0_1_0
	add	a,ar4
	mov	_int_to_hex_int_sloc1_1_0,a
	mov	a,(_int_to_hex_int_sloc0_1_0 + 1)
	addc	a,ar5
	mov	(_int_to_hex_int_sloc1_1_0 + 1),a
	mov	(_int_to_hex_int_sloc1_1_0 + 2),r6
;	genCast
	mov	ar2,r7
;	genCast
	mov	r3,_int_to_hex_int_sloc0_1_0
;	genMinus
	mov	a,r2
	clr	c
	subb	a,ar3
;	genMinus
;	genMinusDec
	dec	a
;	genPlus
	add	a,#_int_to_hex_int_conv_array_1_1
	mov	dpl,a
	mov	a,#(_int_to_hex_int_conv_array_1_1 >> 8)
	addc	a,#0x00
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_int_to_hex_int_sloc1_1_0
	mov	dph,(_int_to_hex_int_sloc1_1_0 + 1)
	mov	b,(_int_to_hex_int_sloc1_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	C$misc.c$68$1$1 ==.
;	../misc.c:68: for ( nibble_idx = 0; (nibble_idx < nb_nibbles) && (nibble_idx < result_size) ;nibble_idx++ )
;	genPlus
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,_int_to_hex_int_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x00
	addc	a,(_int_to_hex_int_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	genIpop
	pop	ar3
	pop	ar2
	ljmp	00109$
00112$:
	C$misc.c$72$1$1 ==.
;	../misc.c:72: return nibble_idx;
;	genAssign
	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00113$:
	C$misc.c$73$1$1 ==.
	XG$int_to_hex_int$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int_to_dec_int'
;------------------------------------------------------------
;sloc0                     Allocated with name '_int_to_dec_int_sloc0_1_0'
;p_result                  Allocated with name '_int_to_dec_int_PARM_2'
;value                     Allocated with name '_int_to_dec_int_value_1_1'
;conv_array                Allocated with name '_int_to_dec_int_conv_array_1_1'
;uvalue                    Allocated with name '_int_to_dec_int_uvalue_1_1'
;remainder                 Allocated with name '_int_to_dec_int_remainder_1_1'
;digit_idx                 Allocated with name '_int_to_dec_int_digit_idx_1_1'
;nb_digits                 Allocated with name '_int_to_dec_int_nb_digits_1_1'
;------------------------------------------------------------
	G$int_to_dec_int$0$0 ==.
	C$misc.c$75$1$1 ==.
;	../misc.c:75: DPUINT int_to_dec_int(DPUINT value, uint8_t * p_result)
;	-----------------------------------------
;	 function int_to_dec_int
;	-----------------------------------------
_int_to_dec_int:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_int_to_dec_int_value_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$misc.c$83$1$1 ==.
;	../misc.c:83: uvalue = (unsigned int)value;
;	genAssign
	mov	dptr,#_int_to_dec_int_value_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_int_to_dec_int_uvalue_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$misc.c$84$1$1 ==.
;	../misc.c:84: digit_idx=0;
;	genAssign
	mov	dptr,#_int_to_dec_int_digit_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$misc.c$85$1$1 ==.
;	../misc.c:85: if (uvalue)
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
	jnz	00117$
	ljmp	00105$
00117$:
	C$misc.c$87$3$3 ==.
;	../misc.c:87: while (uvalue)
00101$:
;	genAssign
	mov	dptr,#_int_to_dec_int_uvalue_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
	jnz	00118$
	ljmp	00106$
00118$:
	C$misc.c$89$1$1 ==.
;	../misc.c:89: remainder = uvalue % 10;
;	genAssign
	mov	dptr,#__moduint_PARM_2
	mov	a,#0x0A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$misc.c$90$1$1 ==.
;	../misc.c:90: conv_array[digit_idx] = remainder + '0';
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	__moduint
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_int_to_dec_int_digit_idx_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPlus
	mov	a,ar6
	add	a,#_int_to_dec_int_conv_array_1_1
	mov	dpl,a
	mov	a,ar7
	addc	a,#(_int_to_dec_int_conv_array_1_1 >> 8)
	mov	dph,a
;	genCast
;	genPlus
;	genPlusIncr
	mov	a,#0x30
	add	a,ar4
	mov	r4,a
;	genPointerSet
;     genFarPointerSet
	mov	a,r4
	movx	@dptr,a
	C$misc.c$91$1$1 ==.
;	../misc.c:91: uvalue /= 10;
;	genAssign
	mov	dptr,#__divuint_PARM_2
	mov	a,#0x0A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	push	ar7
	lcall	__divuint
	mov	a,dpl
	mov	b,dph
	pop	ar7
	pop	ar6
;	genAssign
	mov	dptr,#_int_to_dec_int_uvalue_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	C$misc.c$92$3$3 ==.
;	../misc.c:92: digit_idx++;
;	genPlus
	mov	dptr,#_int_to_dec_int_digit_idx_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar6
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar7
	inc	dptr
	movx	@dptr,a
	ljmp	00101$
00105$:
	C$misc.c$97$2$4 ==.
;	../misc.c:97: conv_array[digit_idx] = '0';
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_int_to_dec_int_conv_array_1_1
	mov	a,#0x30
	movx	@dptr,a
	C$misc.c$98$2$4 ==.
;	../misc.c:98: digit_idx++;
;	genAssign
	mov	dptr,#_int_to_dec_int_digit_idx_1_1
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00106$:
	C$misc.c$102$1$1 ==.
;	../misc.c:102: nb_digits = digit_idx;
;	genAssign
	mov	dptr,#_int_to_dec_int_digit_idx_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genAssign
	mov	dptr,#_int_to_dec_int_nb_digits_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	C$misc.c$103$1$1 ==.
;	../misc.c:103: for ( digit_idx = 0; (digit_idx < nb_digits); digit_idx++ )
;	genAssign
	mov	dptr,#_int_to_dec_int_digit_idx_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_int_to_dec_int_PARM_2
	movx	a,@dptr
	mov	_int_to_dec_int_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_int_to_dec_int_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_int_to_dec_int_sloc0_1_0 + 2),a
;	genAssign
	mov	dptr,#_int_to_dec_int_nb_digits_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00107$:
;	genAssign
	mov	dptr,#_int_to_dec_int_digit_idx_1_1
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r7
	subb	a,r5
	mov	a,r0
	subb	a,r6
;	genIfxJump
	jc	00119$
	ljmp	00110$
00119$:
	C$misc.c$105$2$5 ==.
;	../misc.c:105: p_result[digit_idx] = conv_array[nb_digits - digit_idx - 1];
;	genPlus
	mov	a,ar7
	add	a,_int_to_dec_int_sloc0_1_0
	mov	r1,a
	mov	a,ar0
	addc	a,(_int_to_dec_int_sloc0_1_0 + 1)
	mov	r2,a
	mov	r3,(_int_to_dec_int_sloc0_1_0 + 2)
;	genCast
	mov	ar4,r5
;	genIpush
	push	ar5
	push	ar6
;	genCast
	mov	ar5,r7
;	genMinus
	mov	a,r4
	clr	c
	subb	a,ar5
;	genMinus
;	genMinusDec
	dec	a
;	genPlus
	add	a,#_int_to_dec_int_conv_array_1_1
	mov	dpl,a
	mov	a,#(_int_to_dec_int_conv_array_1_1 >> 8)
	addc	a,#0x00
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r4,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
	lcall	__gptrput
	C$misc.c$103$1$1 ==.
;	../misc.c:103: for ( digit_idx = 0; (digit_idx < nb_digits); digit_idx++ )
;	genPlus
	mov	dptr,#_int_to_dec_int_digit_idx_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,ar7
	movx	@dptr,a
	mov	a,#0x00
	addc	a,ar0
	inc	dptr
	movx	@dptr,a
;	genIpop
	pop	ar6
	pop	ar5
	ljmp	00107$
00110$:
	C$misc.c$107$1$1 ==.
;	../misc.c:107: return digit_idx;
;	genRet
	mov	dpl,r7
	mov	dph,r0
00111$:
	C$misc.c$108$1$1 ==.
	XG$int_to_dec_int$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'xatoi'
;------------------------------------------------------------
;sloc0                     Allocated with name '_xatoi_sloc0_1_0'
;res                       Allocated with name '_xatoi_PARM_2'
;str                       Allocated with name '_xatoi_str_1_1'
;val                       Allocated with name '_xatoi_val_1_1'
;c                         Allocated with name '_xatoi_c_1_1'
;r                         Allocated with name '_xatoi_r_1_1'
;s                         Allocated with name '_xatoi_s_1_1'
;------------------------------------------------------------
	G$xatoi$0$0 ==.
	C$misc.c$115$1$1 ==.
;	../misc.c:115: int xatoi (                                             /* 0:Failed, 1:Successful */
;	-----------------------------------------
;	 function xatoi
;	-----------------------------------------
_xatoi:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_xatoi_str_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$misc.c$121$1$1 ==.
;	../misc.c:121: unsigned char c, r, s = 0;
;	genAssign
	mov	dptr,#_xatoi_s_1_1
	mov	a,#0x00
	movx	@dptr,a
	C$misc.c$124$1$1 ==.
;	../misc.c:124: *res = 0;
;	genAssign
	mov	dptr,#_xatoi_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x00
	lcall	__gptrput
	inc	dptr
	mov	a,#0x00
	lcall	__gptrput
	C$misc.c$126$1$1 ==.
;	../misc.c:126: while ((c = **str) == ' ') (*str)++;               /* Skip leading spaces */
00101$:
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genAssign
	mov	dptr,#_xatoi_str_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	mov	a,r0
	movx	@dptr,a
;	genCmpEq
;	gencjne
;	gencjneshort
	cjne	r0,#0x20,00155$
	mov	a,#0x01
	sjmp	00156$
00155$:
	clr	a
00156$:
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
	jnz	00157$
	ljmp	00103$
00157$:
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	genPlus
;	genPlusIncr
	inc	r0
	cjne	r0,#0x00,00158$
	inc	r1
00158$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00101$
00103$:
	C$misc.c$128$1$1 ==.
;	../misc.c:128: if (c == '-') {                         /* negative? */
;	genCmpEq
;	gencjneshort
	cjne	r0,#0x2D,00159$
	sjmp	00160$
00159$:
	ljmp	00105$
00160$:
	C$misc.c$129$1$1 ==.
;	../misc.c:129: s = 1;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genAssign
	mov	dptr,#_xatoi_s_1_1
	mov	a,#0x01
	movx	@dptr,a
	C$misc.c$130$2$2 ==.
;	../misc.c:130: c = *(++(*str));
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
;	genPlus
;	genPlusIncr
	inc	r0
	cjne	r0,#0x00,00161$
	inc	r1
00161$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__gptrput
	inc	dptr
	mov	a,r1
	lcall	__gptrput
	inc	dptr
	mov	a,r2
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r0,a
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	mov	a,r0
	movx	@dptr,a
	C$misc.c$171$1$1 ==.
;	../misc.c:171: return 1;
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
	C$misc.c$130$1$1 ==.
;	../misc.c:130: c = *(++(*str));
00105$:
	C$misc.c$133$1$1 ==.
;	../misc.c:133: if (c == '0') {
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	a,@dptr
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x30,00162$
	sjmp	00163$
00162$:
	ljmp	00121$
00163$:
	C$misc.c$134$1$1 ==.
;	../misc.c:134: c = *(++(*str));
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genAssign
	mov	dptr,#_xatoi_str_1_1
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
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
;	genPlusIncr
	inc	r1
	cjne	r1,#0x00,00164$
	inc	r2
00164$:
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
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	mov	a,r5
	movx	@dptr,a
	C$misc.c$135$2$3 ==.
;	../misc.c:135: switch (c) {
;	genCmpEq
;	gencjne
;	gencjneshort
	cjne	r5,#0x42,00165$
	mov	a,#0x01
	sjmp	00166$
00165$:
	clr	a
00166$:
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
	jz	00167$
	ljmp	00109$
00167$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x58,00168$
	ljmp	00107$
00168$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x62,00169$
	ljmp	00109$
00169$:
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x78,00170$
	sjmp	00171$
00170$:
	ljmp	00110$
00171$:
	C$misc.c$137$3$4 ==.
;	../misc.c:137: case 'X':
00107$:
	C$misc.c$139$1$1 ==.
;	../misc.c:139: r = 16; c = *(++(*str));
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genAssign
	mov	dptr,#_xatoi_r_1_1
	mov	a,#0x10
	movx	@dptr,a
;	genAssign
	mov	dptr,#_xatoi_str_1_1
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
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
;	genPlusIncr
	inc	r1
	cjne	r1,#0x00,00172$
	inc	r2
00172$:
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
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	mov	a,r1
	movx	@dptr,a
	C$misc.c$140$1$1 ==.
;	../misc.c:140: break;
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00122$
	C$misc.c$142$3$4 ==.
;	../misc.c:142: case 'B':
00109$:
	C$misc.c$144$1$1 ==.
;	../misc.c:144: r = 2; c = *(++(*str));
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genAssign
	mov	dptr,#_xatoi_r_1_1
	mov	a,#0x02
	movx	@dptr,a
;	genAssign
	mov	dptr,#_xatoi_str_1_1
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
	mov	r1,a
	inc	dptr
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	lcall	__gptrget
	mov	r3,a
;	genPlus
;	genPlusIncr
	inc	r1
	cjne	r1,#0x00,00173$
	inc	r2
00173$:
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
	inc	dptr
	mov	a,r3
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	mov	a,r1
	movx	@dptr,a
	C$misc.c$145$1$1 ==.
;	../misc.c:145: break;
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00122$
	C$misc.c$146$3$4 ==.
;	../misc.c:146: default:
00110$:
	C$misc.c$147$3$4 ==.
;	../misc.c:147: if (c <= ' ') return 1;          /* single zero */
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x20
	subb	a,r5
;	genIfxJump
	jnc	00174$
	ljmp	00112$
00174$:
;	genRet
	mov	dpl,#0x01
	mov	dph,#0x00
	ljmp	00136$
00112$:
	C$misc.c$148$3$4 ==.
;	../misc.c:148: if (c < '0' || c > '9') return 0;          /* invalid char */
;	genCmpLt
;	genCmp
	cjne	r5,#0x30,00175$
00175$:
;	genIfxJump
	jnc	00176$
	ljmp	00113$
00176$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x39
	subb	a,r5
;	genIfxJump
	jc	00177$
	ljmp	00114$
00177$:
00113$:
;	genRet
	mov	dpl,#0x00
	mov	dph,#0x00
	ljmp	00136$
00114$:
	C$misc.c$149$3$4 ==.
;	../misc.c:149: r = 8;                      /* octal */
;	genAssign
	mov	dptr,#_xatoi_r_1_1
	mov	a,#0x08
	movx	@dptr,a
	C$misc.c$150$1$1 ==.
;	../misc.c:150: }
	ljmp	00122$
00121$:
	C$misc.c$152$2$5 ==.
;	../misc.c:152: if (c < '0' || c > '9') return 0;          /* EOL or invalid char */
;	genCmpLt
;	genCmp
	cjne	r5,#0x30,00178$
00178$:
;	genIfxJump
	jnc	00179$
	ljmp	00117$
00179$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x39
	subb	a,r5
;	genIfxJump
	jc	00180$
	ljmp	00118$
00180$:
00117$:
;	genRet
	mov	dpl,#0x00
	mov	dph,#0x00
	ljmp	00136$
00118$:
	C$misc.c$153$2$5 ==.
;	../misc.c:153: r = 10;                                    /* decimal */
;	genAssign
	mov	dptr,#_xatoi_r_1_1
	mov	a,#0x0A
	movx	@dptr,a
00122$:
	C$misc.c$156$1$1 ==.
;	../misc.c:156: val = 0;
;	genAssign
	mov	dptr,#_xatoi_val_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$misc.c$157$1$1 ==.
;	../misc.c:157: while (c > ' ') {
00131$:
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	a,@dptr
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x20
	subb	a,r5
;	genIfxJump
	jc	00181$
	ljmp	00133$
00181$:
	C$misc.c$158$2$6 ==.
;	../misc.c:158: if (c >= 'a') c -= 0x20;
;	genCmpLt
;	genCmp
	cjne	r5,#0x61,00182$
00182$:
;	genIfxJump
	jnc	00183$
	ljmp	00124$
00183$:
;	genMinus
	mov	a,r5
	add	a,#0xe0
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	@dptr,a
00124$:
	C$misc.c$159$2$6 ==.
;	../misc.c:159: c -= '0';
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	a,@dptr
	mov	r5,a
;	genMinus
	mov	a,r5
	add	a,#0xd0
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	@dptr,a
	C$misc.c$160$2$6 ==.
;	../misc.c:160: if (c >= 17) {
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	a,@dptr
	mov	r5,a
;	genCmpLt
;	genCmp
	cjne	r5,#0x11,00184$
00184$:
;	genIfxJump
	jnc	00185$
	ljmp	00128$
00185$:
	C$misc.c$161$3$7 ==.
;	../misc.c:161: c -= 7;
;	genMinus
	mov	a,r5
	add	a,#0xf9
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	@dptr,a
	C$misc.c$162$3$7 ==.
;	../misc.c:162: if (c <= 9) return 0;           /* invalid char */
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	a,@dptr
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x09
	subb	a,r5
;	genIfxJump
	jnc	00186$
	ljmp	00128$
00186$:
;	genRet
	mov	dpl,#0x00
	mov	dph,#0x00
	ljmp	00136$
00128$:
	C$misc.c$164$2$6 ==.
;	../misc.c:164: if (c >= r) return 0;                           /* invalid char for current radix */
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_xatoi_r_1_1
	movx	a,@dptr
	mov	r6,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r5
	subb	a,r6
;	genIfxJump
	jnc	00187$
	ljmp	00130$
00187$:
;	genRet
	mov	dpl,#0x00
	mov	dph,#0x00
	ljmp	00136$
00130$:
	C$misc.c$165$1$1 ==.
;	../misc.c:165: val = val * r + c;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genAssign
	mov	dptr,#_xatoi_val_1_1
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
	mov	r2,a
;	genCast
	mov	dptr,#__mullong_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
	inc	dptr
	mov	a,#0x00
	movx	@dptr,a
;	genCall
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	mov	a,r2
	push	ar5
	lcall	__mullong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r6,a
	pop	ar5
;	genCast
	mov	r7,#0x00
	mov	r0,#0x00
	mov	r1,#0x00
;	genPlus
	mov	dptr,#_xatoi_val_1_1
	mov	a,ar5
	add	a,ar2
	movx	@dptr,a
	mov	a,ar7
	addc	a,ar3
	inc	dptr
	movx	@dptr,a
	mov	a,ar0
	addc	a,ar4
	inc	dptr
	movx	@dptr,a
	mov	a,ar1
	addc	a,ar6
	inc	dptr
	movx	@dptr,a
	C$misc.c$166$2$6 ==.
;	../misc.c:166: c = *(++(*str));
;	genAssign
	mov	dptr,#_xatoi_str_1_1
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
	inc	dptr
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	lcall	__gptrget
	mov	r7,a
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00188$
	inc	r6
00188$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
;	genAssign
	mov	dptr,#_xatoi_c_1_1
	mov	a,r5
	movx	@dptr,a
;	genIpop
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00131$
00133$:
	C$misc.c$168$1$1 ==.
;	../misc.c:168: if (s) val = 0 - val;                                               /* apply sign if needed */
;	genAssign
	mov	dptr,#_xatoi_s_1_1
	movx	a,@dptr
	mov	r5,a
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00189$
	ljmp	00135$
00189$:
;	genAssign
	mov	dptr,#_xatoi_val_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genUminus
	mov	dptr,#_xatoi_val_1_1
	clr	c
	clr	a
	subb	a,r5
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r0
	inc	dptr
	movx	@dptr,a
00135$:
	C$misc.c$170$1$1 ==.
;	../misc.c:170: *res = val;
;	genAssign
	mov	dptr,#_xatoi_val_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
;	genCast
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	C$misc.c$171$1$1 ==.
;	../misc.c:171: return 1;
;	genRet
	mov	dpl,#0x01
	mov	dph,#0x00
00136$:
	C$misc.c$172$1$1 ==.
	XG$xatoi$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getParity'
;------------------------------------------------------------
;n                         Allocated with name '_getParity_n_1_1'
;parity                    Allocated with name '_getParity_parity_1_1'
;------------------------------------------------------------
	G$getParity$0$0 ==.
	C$misc.c$175$1$1 ==.
;	../misc.c:175: uint8_t  getParity(unsigned int n)
;	-----------------------------------------
;	 function getParity
;	-----------------------------------------
_getParity:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_getParity_n_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	C$misc.c$177$1$1 ==.
;	../misc.c:177: uint8_t parity = 0;
;	genAssign
	mov	dptr,#_getParity_parity_1_1
	mov	a,#0x00
	movx	@dptr,a
	C$misc.c$178$1$1 ==.
;	../misc.c:178: while (n)
00101$:
;	genAssign
	mov	dptr,#_getParity_n_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
	jnz	00108$
	ljmp	00103$
00108$:
	C$misc.c$180$2$2 ==.
;	../misc.c:180: parity = !parity;
;	genAssign
	mov	dptr,#_getParity_parity_1_1
	movx	a,@dptr
	mov	r4,a
;	genNot
	mov	dptr,#_getParity_parity_1_1
	mov	a,r4
	cjne	a,#0x01,00109$
00109$:
	clr	a
	rlc	a
	movx	@dptr,a
	C$misc.c$181$2$2 ==.
;	../misc.c:181: n      = n & (n - 1);
;	genMinus
;	genMinusDec
	mov	a,r2
	add	a,#0xff
	mov	r4,a
	mov	a,r3
	addc	a,#0xff
	mov	r5,a
;	genAnd
	mov	dptr,#_getParity_n_1_1
	mov	a,r4
	anl	a,r2
	movx	@dptr,a
	mov	a,r5
	anl	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00101$
00103$:
	C$misc.c$183$1$1 ==.
;	../misc.c:183: return parity;
;	genAssign
	mov	dptr,#_getParity_parity_1_1
	movx	a,@dptr
	mov	r2,a
;	genRet
	mov	dpl,r2
00104$:
	C$misc.c$184$1$1 ==.
	XG$getParity$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
F___misc$_str_0$0$0 == .
__str_0:
	.ascii " "
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
