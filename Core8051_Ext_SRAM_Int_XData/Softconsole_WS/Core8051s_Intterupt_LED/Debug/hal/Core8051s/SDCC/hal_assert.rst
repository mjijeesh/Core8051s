                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:51:57 2016
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
   008C                      57 _HAL_assert_fail_PARM_2:
   008C                      58 	.ds 4
                    0004     59 LHAL_assert_fail$file_name$1$1==.
   0090                      60 _HAL_assert_fail_file_name_1_1:
   0090                      61 	.ds 3
                    0007     62 LHAL_assert_fail$assert_file$2$2==.
   0093                      63 _HAL_assert_fail_assert_file_2_2:
   0093                      64 	.ds 3
                    000A     65 LHAL_assert_fail$assert_line$2$2==.
   0096                      66 _HAL_assert_fail_assert_line_2_2:
   0096                      67 	.ds 4
                    000E     68 LHAL_assert_fail$dummy$2$2==.
   009A                      69 _HAL_assert_fail_dummy_2_2:
   009A                      70 	.ds 1
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
   05F6                     116 _HAL_assert_fail:
                    0002    117 	ar2 = 0x02
                    0003    118 	ar3 = 0x03
                    0004    119 	ar4 = 0x04
                    0005    120 	ar5 = 0x05
                    0006    121 	ar6 = 0x06
                    0007    122 	ar7 = 0x07
                    0000    123 	ar0 = 0x00
                    0001    124 	ar1 = 0x01
                            125 ;	genReceive
   05F6 AA F0               126 	mov	r2,b
   05F8 AB 83               127 	mov	r3,dph
   05FA E5 82               128 	mov	a,dpl
   05FC 90 00 90            129 	mov	dptr,#_HAL_assert_fail_file_name_1_1
   05FF F0                  130 	movx	@dptr,a
   0600 A3                  131 	inc	dptr
   0601 EB                  132 	mov	a,r3
   0602 F0                  133 	movx	@dptr,a
   0603 A3                  134 	inc	dptr
   0604 EA                  135 	mov	a,r2
   0605 F0                  136 	movx	@dptr,a
                    0010    137 	C$hal_assert.c$117$1$1 ==.
                            138 ;	../hal/Core8051s/SDCC/hal_assert.c:117: while(1)
   0606                     139 00102$:
                    0010    140 	C$hal_assert.c$119$2$1 ==.
                            141 ;	../hal/Core8051s/SDCC/hal_assert.c:119: volatile const uint8_t * assert_file = file_name;
                            142 ;	genAssign
   0606 90 00 90            143 	mov	dptr,#_HAL_assert_fail_file_name_1_1
   0609 E0                  144 	movx	a,@dptr
   060A FA                  145 	mov	r2,a
   060B A3                  146 	inc	dptr
   060C E0                  147 	movx	a,@dptr
   060D FB                  148 	mov	r3,a
   060E A3                  149 	inc	dptr
   060F E0                  150 	movx	a,@dptr
   0610 FC                  151 	mov	r4,a
                            152 ;	genAssign
   0611 90 00 93            153 	mov	dptr,#_HAL_assert_fail_assert_file_2_2
   0614 EA                  154 	mov	a,r2
   0615 F0                  155 	movx	@dptr,a
   0616 A3                  156 	inc	dptr
   0617 EB                  157 	mov	a,r3
   0618 F0                  158 	movx	@dptr,a
   0619 A3                  159 	inc	dptr
   061A EC                  160 	mov	a,r4
   061B F0                  161 	movx	@dptr,a
                    0026    162 	C$hal_assert.c$120$2$1 ==.
                            163 ;	../hal/Core8051s/SDCC/hal_assert.c:120: volatile uint32_t assert_line = line_no;
                            164 ;	genAssign
   061C 90 00 8C            165 	mov	dptr,#_HAL_assert_fail_PARM_2
   061F E0                  166 	movx	a,@dptr
   0620 FA                  167 	mov	r2,a
   0621 A3                  168 	inc	dptr
   0622 E0                  169 	movx	a,@dptr
   0623 FB                  170 	mov	r3,a
   0624 A3                  171 	inc	dptr
   0625 E0                  172 	movx	a,@dptr
   0626 FC                  173 	mov	r4,a
   0627 A3                  174 	inc	dptr
   0628 E0                  175 	movx	a,@dptr
   0629 FD                  176 	mov	r5,a
                            177 ;	genAssign
   062A 90 00 96            178 	mov	dptr,#_HAL_assert_fail_assert_line_2_2
   062D EA                  179 	mov	a,r2
   062E F0                  180 	movx	@dptr,a
   062F A3                  181 	inc	dptr
   0630 EB                  182 	mov	a,r3
   0631 F0                  183 	movx	@dptr,a
   0632 A3                  184 	inc	dptr
   0633 EC                  185 	mov	a,r4
   0634 F0                  186 	movx	@dptr,a
   0635 A3                  187 	inc	dptr
   0636 ED                  188 	mov	a,r5
   0637 F0                  189 	movx	@dptr,a
                    0042    190 	C$hal_assert.c$121$2$2 ==.
                            191 ;	../hal/Core8051s/SDCC/hal_assert.c:121: volatile uint8_t dummy;        dummy = *assert_file;
                            192 ;	genAssign
   0638 90 00 93            193 	mov	dptr,#_HAL_assert_fail_assert_file_2_2
   063B E0                  194 	movx	a,@dptr
   063C FA                  195 	mov	r2,a
   063D A3                  196 	inc	dptr
   063E E0                  197 	movx	a,@dptr
   063F FB                  198 	mov	r3,a
   0640 A3                  199 	inc	dptr
   0641 E0                  200 	movx	a,@dptr
   0642 FC                  201 	mov	r4,a
                            202 ;	genPointerGet
                            203 ;	genGenPointerGet
   0643 8A 82               204 	mov	dpl,r2
   0645 8B 83               205 	mov	dph,r3
   0647 8C F0               206 	mov	b,r4
   0649 12 61 48            207 	lcall	__gptrget
   064C FA                  208 	mov	r2,a
                            209 ;	genAssign
   064D 90 00 9A            210 	mov	dptr,#_HAL_assert_fail_dummy_2_2
   0650 EA                  211 	mov	a,r2
   0651 F0                  212 	movx	@dptr,a
   0652 02 06 06            213 	ljmp	00102$
   0655                     214 00104$:
                    005F    215 	C$hal_assert.c$123$1$1 ==.
                    005F    216 	XG$HAL_assert_fail$0$0 ==.
   0655 22                  217 	ret
                            218 	.area CSEG    (CODE)
                            219 	.area CONST   (CODE)
                            220 	.area XINIT   (CODE)
                            221 	.area CABS    (ABS,CODE)
