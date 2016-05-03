                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Tue May 03 17:52:19 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___hal_Core8051s_SDCC_hal_assert
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _HAL_assert_fail_PARM_2
                             13 	.globl _HAL_assert_fail
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 	.area RSEG    (DATA)
                             18 ;--------------------------------------------------------
                             19 ; special function bits
                             20 ;--------------------------------------------------------
                             21 	.area RSEG    (DATA)
                             22 ;--------------------------------------------------------
                             23 ; overlayable register banks
                             24 ;--------------------------------------------------------
                             25 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      26 	.ds 8
                             27 ;--------------------------------------------------------
                             28 ; internal ram data
                             29 ;--------------------------------------------------------
                             30 	.area DSEG    (DATA)
                             31 ;--------------------------------------------------------
                             32 ; overlayable items in internal ram 
                             33 ;--------------------------------------------------------
                             34 	.area OSEG    (OVR,DATA)
                             35 ;--------------------------------------------------------
                             36 ; indirectly addressable internal ram data
                             37 ;--------------------------------------------------------
                             38 	.area ISEG    (DATA)
                             39 ;--------------------------------------------------------
                             40 ; absolute internal ram data
                             41 ;--------------------------------------------------------
                             42 	.area IABS    (ABS,DATA)
                             43 	.area IABS    (ABS,DATA)
                             44 ;--------------------------------------------------------
                             45 ; bit data
                             46 ;--------------------------------------------------------
                             47 	.area BSEG    (BIT)
                             48 ;--------------------------------------------------------
                             49 ; paged external ram data
                             50 ;--------------------------------------------------------
                             51 	.area PSEG    (PAG,XDATA)
                             52 ;--------------------------------------------------------
                             53 ; external ram data
                             54 ;--------------------------------------------------------
                             55 	.area XSEG    (XDATA)
                    0000     56 LHAL_assert_fail$line_no$1$1==.
   057F                      57 _HAL_assert_fail_PARM_2:
   057F                      58 	.ds 4
                    0004     59 LHAL_assert_fail$file_name$1$1==.
   0583                      60 _HAL_assert_fail_file_name_1_1:
   0583                      61 	.ds 3
                    0007     62 LHAL_assert_fail$assert_file$2$2==.
   0586                      63 _HAL_assert_fail_assert_file_2_2:
   0586                      64 	.ds 3
                    000A     65 LHAL_assert_fail$assert_line$2$2==.
   0589                      66 _HAL_assert_fail_assert_line_2_2:
   0589                      67 	.ds 4
                    000E     68 LHAL_assert_fail$dummy$2$2==.
   058D                      69 _HAL_assert_fail_dummy_2_2:
   058D                      70 	.ds 1
                             71 ;--------------------------------------------------------
                             72 ; external initialized ram data
                             73 ;--------------------------------------------------------
                             74 	.area XISEG   (XDATA)
                             75 	.area HOME    (CODE)
                             76 	.area GSINIT0 (CODE)
                             77 	.area GSINIT1 (CODE)
                             78 	.area GSINIT2 (CODE)
                             79 	.area GSINIT3 (CODE)
                             80 	.area GSINIT4 (CODE)
                             81 	.area GSINIT5 (CODE)
                             82 	.area GSINIT  (CODE)
                             83 	.area GSFINAL (CODE)
                             84 	.area CSEG    (CODE)
                             85 ;--------------------------------------------------------
                             86 ; global & static initialisations
                             87 ;--------------------------------------------------------
                             88 	.area HOME    (CODE)
                             89 	.area GSINIT  (CODE)
                             90 	.area GSFINAL (CODE)
                             91 	.area GSINIT  (CODE)
                             92 ;--------------------------------------------------------
                             93 ; Home
                             94 ;--------------------------------------------------------
                             95 	.area HOME    (CODE)
                             96 	.area HOME    (CODE)
                             97 ;--------------------------------------------------------
                             98 ; code
                             99 ;--------------------------------------------------------
                            100 	.area CSEG    (CODE)
                            101 ;------------------------------------------------------------
                            102 ;Allocation info for local variables in function 'HAL_assert_fail'
                            103 ;------------------------------------------------------------
                            104 ;line_no                   Allocated with name '_HAL_assert_fail_PARM_2'
                            105 ;file_name                 Allocated with name '_HAL_assert_fail_file_name_1_1'
                            106 ;assert_file               Allocated with name '_HAL_assert_fail_assert_file_2_2'
                            107 ;assert_line               Allocated with name '_HAL_assert_fail_assert_line_2_2'
                            108 ;dummy                     Allocated with name '_HAL_assert_fail_dummy_2_2'
                            109 ;------------------------------------------------------------
                    0000    110 	G$HAL_assert_fail$0$0 ==.
                    0000    111 	C$hal_assert.c$111$0$0 ==.
                            112 ;	../hal/Core8051s/SDCC/hal_assert.c:111: void HAL_assert_fail
                            113 ;	-----------------------------------------
                            114 ;	 function HAL_assert_fail
                            115 ;	-----------------------------------------
   1B3F                     116 _HAL_assert_fail:
                    0002    117 	ar2 = 0x02
                    0003    118 	ar3 = 0x03
                    0004    119 	ar4 = 0x04
                    0005    120 	ar5 = 0x05
                    0006    121 	ar6 = 0x06
                    0007    122 	ar7 = 0x07
                    0000    123 	ar0 = 0x00
                    0001    124 	ar1 = 0x01
                            125 ;	genReceive
   1B3F AA F0               126 	mov	r2,b
   1B41 AB 83               127 	mov	r3,dph
   1B43 E5 82               128 	mov	a,dpl
   1B45 90 05 83            129 	mov	dptr,#_HAL_assert_fail_file_name_1_1
   1B48 F0                  130 	movx	@dptr,a
   1B49 A3                  131 	inc	dptr
   1B4A EB                  132 	mov	a,r3
   1B4B F0                  133 	movx	@dptr,a
   1B4C A3                  134 	inc	dptr
   1B4D EA                  135 	mov	a,r2
   1B4E F0                  136 	movx	@dptr,a
                    0010    137 	C$hal_assert.c$117$1$1 ==.
                            138 ;	../hal/Core8051s/SDCC/hal_assert.c:117: while(1)
   1B4F                     139 00102$:
                    0010    140 	C$hal_assert.c$119$2$1 ==.
                            141 ;	../hal/Core8051s/SDCC/hal_assert.c:119: volatile const uint8_t * assert_file = file_name;
                            142 ;	genAssign
   1B4F 90 05 83            143 	mov	dptr,#_HAL_assert_fail_file_name_1_1
   1B52 E0                  144 	movx	a,@dptr
   1B53 FA                  145 	mov	r2,a
   1B54 A3                  146 	inc	dptr
   1B55 E0                  147 	movx	a,@dptr
   1B56 FB                  148 	mov	r3,a
   1B57 A3                  149 	inc	dptr
   1B58 E0                  150 	movx	a,@dptr
   1B59 FC                  151 	mov	r4,a
                            152 ;	genAssign
   1B5A 90 05 86            153 	mov	dptr,#_HAL_assert_fail_assert_file_2_2
   1B5D EA                  154 	mov	a,r2
   1B5E F0                  155 	movx	@dptr,a
   1B5F A3                  156 	inc	dptr
   1B60 EB                  157 	mov	a,r3
   1B61 F0                  158 	movx	@dptr,a
   1B62 A3                  159 	inc	dptr
   1B63 EC                  160 	mov	a,r4
   1B64 F0                  161 	movx	@dptr,a
                    0026    162 	C$hal_assert.c$120$2$1 ==.
                            163 ;	../hal/Core8051s/SDCC/hal_assert.c:120: volatile uint32_t assert_line = line_no;
                            164 ;	genAssign
   1B65 90 05 7F            165 	mov	dptr,#_HAL_assert_fail_PARM_2
   1B68 E0                  166 	movx	a,@dptr
   1B69 FA                  167 	mov	r2,a
   1B6A A3                  168 	inc	dptr
   1B6B E0                  169 	movx	a,@dptr
   1B6C FB                  170 	mov	r3,a
   1B6D A3                  171 	inc	dptr
   1B6E E0                  172 	movx	a,@dptr
   1B6F FC                  173 	mov	r4,a
   1B70 A3                  174 	inc	dptr
   1B71 E0                  175 	movx	a,@dptr
   1B72 FD                  176 	mov	r5,a
                            177 ;	genAssign
   1B73 90 05 89            178 	mov	dptr,#_HAL_assert_fail_assert_line_2_2
   1B76 EA                  179 	mov	a,r2
   1B77 F0                  180 	movx	@dptr,a
   1B78 A3                  181 	inc	dptr
   1B79 EB                  182 	mov	a,r3
   1B7A F0                  183 	movx	@dptr,a
   1B7B A3                  184 	inc	dptr
   1B7C EC                  185 	mov	a,r4
   1B7D F0                  186 	movx	@dptr,a
   1B7E A3                  187 	inc	dptr
   1B7F ED                  188 	mov	a,r5
   1B80 F0                  189 	movx	@dptr,a
                    0042    190 	C$hal_assert.c$121$2$2 ==.
                            191 ;	../hal/Core8051s/SDCC/hal_assert.c:121: volatile uint8_t dummy;        dummy = *assert_file;
                            192 ;	genAssign
   1B81 90 05 86            193 	mov	dptr,#_HAL_assert_fail_assert_file_2_2
   1B84 E0                  194 	movx	a,@dptr
   1B85 FA                  195 	mov	r2,a
   1B86 A3                  196 	inc	dptr
   1B87 E0                  197 	movx	a,@dptr
   1B88 FB                  198 	mov	r3,a
   1B89 A3                  199 	inc	dptr
   1B8A E0                  200 	movx	a,@dptr
   1B8B FC                  201 	mov	r4,a
                            202 ;	genPointerGet
                            203 ;	genGenPointerGet
   1B8C 8A 82               204 	mov	dpl,r2
   1B8E 8B 83               205 	mov	dph,r3
   1B90 8C F0               206 	mov	b,r4
   1B92 12 71 69            207 	lcall	__gptrget
   1B95 FA                  208 	mov	r2,a
                            209 ;	genAssign
   1B96 90 05 8D            210 	mov	dptr,#_HAL_assert_fail_dummy_2_2
   1B99 EA                  211 	mov	a,r2
   1B9A F0                  212 	movx	@dptr,a
   1B9B 02 1B 4F            213 	ljmp	00102$
   1B9E                     214 00104$:
                    005F    215 	C$hal_assert.c$123$1$1 ==.
                    005F    216 	XG$HAL_assert_fail$0$0 ==.
   1B9E 22                  217 	ret
                            218 	.area CSEG    (CODE)
                            219 	.area CONST   (CODE)
                            220 	.area XINIT   (CODE)
                            221 	.area CABS    (ABS,CODE)
