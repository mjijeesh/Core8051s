                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:52:00 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___hal_Core8051s_SDCC_hw_reg_access
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _HW_get_8bit_reg_field_PARM_3
                             13 	.globl _HW_get_8bit_reg_field_PARM_2
                             14 	.globl _HW_set_8bit_reg_field_PARM_4
                             15 	.globl _HW_set_8bit_reg_field_PARM_3
                             16 	.globl _HW_set_8bit_reg_field_PARM_2
                             17 	.globl _HW_get_16bit_reg_field_PARM_3
                             18 	.globl _HW_get_16bit_reg_field_PARM_2
                             19 	.globl _HW_set_16bit_reg_field_PARM_4
                             20 	.globl _HW_set_16bit_reg_field_PARM_3
                             21 	.globl _HW_set_16bit_reg_field_PARM_2
                             22 	.globl _HW_get_32bit_reg_field_PARM_3
                             23 	.globl _HW_get_32bit_reg_field_PARM_2
                             24 	.globl _HW_set_32bit_reg_field_PARM_4
                             25 	.globl _HW_set_32bit_reg_field_PARM_3
                             26 	.globl _HW_set_32bit_reg_field_PARM_2
                             27 	.globl _HW_set_32bit_reg_field
                             28 	.globl _HW_get_32bit_reg_field
                             29 	.globl _HW_set_16bit_reg_field
                             30 	.globl _HW_get_16bit_reg_field
                             31 	.globl _HW_set_8bit_reg_field
                             32 	.globl _HW_get_8bit_reg_field
                             33 ;--------------------------------------------------------
                             34 ; special function registers
                             35 ;--------------------------------------------------------
                             36 	.area RSEG    (DATA)
                             37 ;--------------------------------------------------------
                             38 ; special function bits
                             39 ;--------------------------------------------------------
                             40 	.area RSEG    (DATA)
                             41 ;--------------------------------------------------------
                             42 ; overlayable register banks
                             43 ;--------------------------------------------------------
                             44 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      45 	.ds 8
                             46 ;--------------------------------------------------------
                             47 ; internal ram data
                             48 ;--------------------------------------------------------
                             49 	.area DSEG    (DATA)
                    0000     50 LHW_set_32bit_reg_field$sloc0$1$0==.
   0018                      51 _HW_set_32bit_reg_field_sloc0_1_0:
   0018                      52 	.ds 2
                    0002     53 LHW_set_32bit_reg_field$sloc1$1$0==.
   001A                      54 _HW_set_32bit_reg_field_sloc1_1_0:
   001A                      55 	.ds 4
                    0006     56 LHW_set_32bit_reg_field$sloc2$1$0==.
   001E                      57 _HW_set_32bit_reg_field_sloc2_1_0:
   001E                      58 	.ds 1
                    0007     59 LHW_set_16bit_reg_field$sloc0$1$0==.
   001F                      60 _HW_set_16bit_reg_field_sloc0_1_0:
   001F                      61 	.ds 1
                             62 ;--------------------------------------------------------
                             63 ; overlayable items in internal ram 
                             64 ;--------------------------------------------------------
                             65 	.area OSEG    (OVR,DATA)
                             66 ;--------------------------------------------------------
                             67 ; indirectly addressable internal ram data
                             68 ;--------------------------------------------------------
                             69 	.area ISEG    (DATA)
                             70 ;--------------------------------------------------------
                             71 ; absolute internal ram data
                             72 ;--------------------------------------------------------
                             73 	.area IABS    (ABS,DATA)
                             74 	.area IABS    (ABS,DATA)
                             75 ;--------------------------------------------------------
                             76 ; bit data
                             77 ;--------------------------------------------------------
                             78 	.area BSEG    (BIT)
                             79 ;--------------------------------------------------------
                             80 ; paged external ram data
                             81 ;--------------------------------------------------------
                             82 	.area PSEG    (PAG,XDATA)
                             83 ;--------------------------------------------------------
                             84 ; external ram data
                             85 ;--------------------------------------------------------
                             86 	.area XSEG    (XDATA)
                    0000     87 LHW_set_32bit_reg_field$shift$1$1==.
   00AE                      88 _HW_set_32bit_reg_field_PARM_2:
   00AE                      89 	.ds 1
                    0001     90 LHW_set_32bit_reg_field$mask$1$1==.
   00AF                      91 _HW_set_32bit_reg_field_PARM_3:
   00AF                      92 	.ds 4
                    0005     93 LHW_set_32bit_reg_field$value$1$1==.
   00B3                      94 _HW_set_32bit_reg_field_PARM_4:
   00B3                      95 	.ds 4
                    0009     96 LHW_set_32bit_reg_field$reg_addr$1$1==.
   00B7                      97 _HW_set_32bit_reg_field_reg_addr_1_1:
   00B7                      98 	.ds 2
                    000B     99 LHW_set_32bit_reg_field$temp32$1$1==.
   00B9                     100 _HW_set_32bit_reg_field_temp32_1_1:
   00B9                     101 	.ds 4
                    000F    102 LHW_get_32bit_reg_field$shift$1$1==.
   00BD                     103 _HW_get_32bit_reg_field_PARM_2:
   00BD                     104 	.ds 1
                    0010    105 LHW_get_32bit_reg_field$mask$1$1==.
   00BE                     106 _HW_get_32bit_reg_field_PARM_3:
   00BE                     107 	.ds 4
                    0014    108 LHW_get_32bit_reg_field$reg_addr$1$1==.
   00C2                     109 _HW_get_32bit_reg_field_reg_addr_1_1:
   00C2                     110 	.ds 2
                    0016    111 LHW_get_32bit_reg_field$temp32$1$1==.
   00C4                     112 _HW_get_32bit_reg_field_temp32_1_1:
   00C4                     113 	.ds 4
                    001A    114 LHW_set_16bit_reg_field$shift$1$1==.
   00C8                     115 _HW_set_16bit_reg_field_PARM_2:
   00C8                     116 	.ds 1
                    001B    117 LHW_set_16bit_reg_field$mask$1$1==.
   00C9                     118 _HW_set_16bit_reg_field_PARM_3:
   00C9                     119 	.ds 2
                    001D    120 LHW_set_16bit_reg_field$in_value16$1$1==.
   00CB                     121 _HW_set_16bit_reg_field_PARM_4:
   00CB                     122 	.ds 2
                    001F    123 LHW_set_16bit_reg_field$reg_addr$1$1==.
   00CD                     124 _HW_set_16bit_reg_field_reg_addr_1_1:
   00CD                     125 	.ds 2
                    0021    126 LHW_set_16bit_reg_field$temp16$1$1==.
   00CF                     127 _HW_set_16bit_reg_field_temp16_1_1:
   00CF                     128 	.ds 2
                    0023    129 LHW_get_16bit_reg_field$shift$1$1==.
   00D1                     130 _HW_get_16bit_reg_field_PARM_2:
   00D1                     131 	.ds 1
                    0024    132 LHW_get_16bit_reg_field$mask$1$1==.
   00D2                     133 _HW_get_16bit_reg_field_PARM_3:
   00D2                     134 	.ds 2
                    0026    135 LHW_get_16bit_reg_field$reg_addr$1$1==.
   00D4                     136 _HW_get_16bit_reg_field_reg_addr_1_1:
   00D4                     137 	.ds 2
                    0028    138 LHW_get_16bit_reg_field$temp16$1$1==.
   00D6                     139 _HW_get_16bit_reg_field_temp16_1_1:
   00D6                     140 	.ds 2
                    002A    141 LHW_set_8bit_reg_field$shift$1$1==.
   00D8                     142 _HW_set_8bit_reg_field_PARM_2:
   00D8                     143 	.ds 1
                    002B    144 LHW_set_8bit_reg_field$mask$1$1==.
   00D9                     145 _HW_set_8bit_reg_field_PARM_3:
   00D9                     146 	.ds 1
                    002C    147 LHW_set_8bit_reg_field$value$1$1==.
   00DA                     148 _HW_set_8bit_reg_field_PARM_4:
   00DA                     149 	.ds 1
                    002D    150 LHW_set_8bit_reg_field$reg_addr$1$1==.
   00DB                     151 _HW_set_8bit_reg_field_reg_addr_1_1:
   00DB                     152 	.ds 2
                    002F    153 LHW_set_8bit_reg_field$temp8$1$1==.
   00DD                     154 _HW_set_8bit_reg_field_temp8_1_1:
   00DD                     155 	.ds 1
                    0030    156 LHW_get_8bit_reg_field$shift$1$1==.
   00DE                     157 _HW_get_8bit_reg_field_PARM_2:
   00DE                     158 	.ds 1
                    0031    159 LHW_get_8bit_reg_field$mask$1$1==.
   00DF                     160 _HW_get_8bit_reg_field_PARM_3:
   00DF                     161 	.ds 1
                    0032    162 LHW_get_8bit_reg_field$reg_addr$1$1==.
   00E0                     163 _HW_get_8bit_reg_field_reg_addr_1_1:
   00E0                     164 	.ds 2
                    0034    165 LHW_get_8bit_reg_field$temp8$1$1==.
   00E2                     166 _HW_get_8bit_reg_field_temp8_1_1:
   00E2                     167 	.ds 1
                            168 ;--------------------------------------------------------
                            169 ; external initialized ram data
                            170 ;--------------------------------------------------------
                            171 	.area XISEG   (XDATA)
                            172 	.area HOME    (CODE)
                            173 	.area GSINIT0 (CODE)
                            174 	.area GSINIT1 (CODE)
                            175 	.area GSINIT2 (CODE)
                            176 	.area GSINIT3 (CODE)
                            177 	.area GSINIT4 (CODE)
                            178 	.area GSINIT5 (CODE)
                            179 	.area GSINIT  (CODE)
                            180 	.area GSFINAL (CODE)
                            181 	.area CSEG    (CODE)
                            182 ;--------------------------------------------------------
                            183 ; global & static initialisations
                            184 ;--------------------------------------------------------
                            185 	.area HOME    (CODE)
                            186 	.area GSINIT  (CODE)
                            187 	.area GSFINAL (CODE)
                            188 	.area GSINIT  (CODE)
                            189 ;--------------------------------------------------------
                            190 ; Home
                            191 ;--------------------------------------------------------
                            192 	.area HOME    (CODE)
                            193 	.area HOME    (CODE)
                            194 ;--------------------------------------------------------
                            195 ; code
                            196 ;--------------------------------------------------------
                            197 	.area CSEG    (CODE)
                            198 ;------------------------------------------------------------
                            199 ;Allocation info for local variables in function 'HW_set_32bit_reg_field'
                            200 ;------------------------------------------------------------
                            201 ;sloc0                     Allocated with name '_HW_set_32bit_reg_field_sloc0_1_0'
                            202 ;sloc1                     Allocated with name '_HW_set_32bit_reg_field_sloc1_1_0'
                            203 ;sloc2                     Allocated with name '_HW_set_32bit_reg_field_sloc2_1_0'
                            204 ;shift                     Allocated with name '_HW_set_32bit_reg_field_PARM_2'
                            205 ;mask                      Allocated with name '_HW_set_32bit_reg_field_PARM_3'
                            206 ;value                     Allocated with name '_HW_set_32bit_reg_field_PARM_4'
                            207 ;reg_addr                  Allocated with name '_HW_set_32bit_reg_field_reg_addr_1_1'
                            208 ;temp32                    Allocated with name '_HW_set_32bit_reg_field_temp32_1_1'
                            209 ;------------------------------------------------------------
                    0000    210 	G$HW_set_32bit_reg_field$0$0 ==.
                    0000    211 	C$hw_reg_access.c$16$0$0 ==.
                            212 ;	../hal/Core8051s/SDCC/hw_reg_access.c:16: HW_set_32bit_reg_field
                            213 ;	-----------------------------------------
                            214 ;	 function HW_set_32bit_reg_field
                            215 ;	-----------------------------------------
   06BA                     216 _HW_set_32bit_reg_field:
                    0002    217 	ar2 = 0x02
                    0003    218 	ar3 = 0x03
                    0004    219 	ar4 = 0x04
                    0005    220 	ar5 = 0x05
                    0006    221 	ar6 = 0x06
                    0007    222 	ar7 = 0x07
                    0000    223 	ar0 = 0x00
                    0001    224 	ar1 = 0x01
                            225 ;	genReceive
   06BA AA 83               226 	mov	r2,dph
   06BC E5 82               227 	mov	a,dpl
   06BE 90 00 B7            228 	mov	dptr,#_HW_set_32bit_reg_field_reg_addr_1_1
   06C1 F0                  229 	movx	@dptr,a
   06C2 A3                  230 	inc	dptr
   06C3 EA                  231 	mov	a,r2
   06C4 F0                  232 	movx	@dptr,a
                    000B    233 	C$hw_reg_access.c$25$1$1 ==.
                            234 ;	../hal/Core8051s/SDCC/hw_reg_access.c:25: temp32 = HW_get_32bit_reg( reg_addr );
                            235 ;	genAssign
   06C5 90 00 B7            236 	mov	dptr,#_HW_set_32bit_reg_field_reg_addr_1_1
   06C8 E0                  237 	movx	a,@dptr
   06C9 F5 18               238 	mov	_HW_set_32bit_reg_field_sloc0_1_0,a
   06CB A3                  239 	inc	dptr
   06CC E0                  240 	movx	a,@dptr
   06CD F5 19               241 	mov	(_HW_set_32bit_reg_field_sloc0_1_0 + 1),a
                            242 ;	genCall
   06CF 85 18 82            243 	mov	dpl,_HW_set_32bit_reg_field_sloc0_1_0
   06D2 85 19 83            244 	mov	dph,(_HW_set_32bit_reg_field_sloc0_1_0 + 1)
   06D5 12 06 56            245 	lcall	_HW_get_32bit_reg
   06D8 AC 82               246 	mov	r4,dpl
   06DA AD 83               247 	mov	r5,dph
   06DC AE F0               248 	mov	r6,b
   06DE FF                  249 	mov	r7,a
                            250 ;	genAssign
   06DF 90 00 B9            251 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   06E2 EC                  252 	mov	a,r4
   06E3 F0                  253 	movx	@dptr,a
   06E4 A3                  254 	inc	dptr
   06E5 ED                  255 	mov	a,r5
   06E6 F0                  256 	movx	@dptr,a
   06E7 A3                  257 	inc	dptr
   06E8 EE                  258 	mov	a,r6
   06E9 F0                  259 	movx	@dptr,a
   06EA A3                  260 	inc	dptr
   06EB EF                  261 	mov	a,r7
   06EC F0                  262 	movx	@dptr,a
                    0033    263 	C$hw_reg_access.c$26$1$1 ==.
                            264 ;	../hal/Core8051s/SDCC/hw_reg_access.c:26: temp32 = ((temp32 & ~mask) | (((value) << shift) & mask));
                            265 ;	genAssign
   06ED 90 00 AF            266 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   06F0 E0                  267 	movx	a,@dptr
   06F1 FC                  268 	mov	r4,a
   06F2 A3                  269 	inc	dptr
   06F3 E0                  270 	movx	a,@dptr
   06F4 FD                  271 	mov	r5,a
   06F5 A3                  272 	inc	dptr
   06F6 E0                  273 	movx	a,@dptr
   06F7 FE                  274 	mov	r6,a
   06F8 A3                  275 	inc	dptr
   06F9 E0                  276 	movx	a,@dptr
   06FA FF                  277 	mov	r7,a
                            278 ;	genCpl
   06FB EC                  279 	mov	a,r4
   06FC F4                  280 	cpl	a
   06FD F5 1A               281 	mov	_HW_set_32bit_reg_field_sloc1_1_0,a
   06FF ED                  282 	mov	a,r5
   0700 F4                  283 	cpl	a
   0701 F5 1B               284 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 1),a
   0703 EE                  285 	mov	a,r6
   0704 F4                  286 	cpl	a
   0705 F5 1C               287 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 2),a
   0707 EF                  288 	mov	a,r7
   0708 F4                  289 	cpl	a
   0709 F5 1D               290 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 3),a
                            291 ;	genAssign
   070B 90 00 B9            292 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   070E E0                  293 	movx	a,@dptr
   070F FA                  294 	mov	r2,a
   0710 A3                  295 	inc	dptr
   0711 E0                  296 	movx	a,@dptr
   0712 FB                  297 	mov	r3,a
   0713 A3                  298 	inc	dptr
   0714 E0                  299 	movx	a,@dptr
   0715 F8                  300 	mov	r0,a
   0716 A3                  301 	inc	dptr
   0717 E0                  302 	movx	a,@dptr
   0718 F9                  303 	mov	r1,a
                            304 ;	genAnd
   0719 EA                  305 	mov	a,r2
   071A 52 1A               306 	anl	_HW_set_32bit_reg_field_sloc1_1_0,a
   071C EB                  307 	mov	a,r3
   071D 52 1B               308 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 1),a
   071F E8                  309 	mov	a,r0
   0720 52 1C               310 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 2),a
   0722 E9                  311 	mov	a,r1
   0723 52 1D               312 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 3),a
                            313 ;	genAssign
   0725 90 00 AE            314 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   0728 E0                  315 	movx	a,@dptr
   0729 F5 1E               316 	mov	_HW_set_32bit_reg_field_sloc2_1_0,a
                            317 ;	genAssign
   072B 90 00 B3            318 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   072E E0                  319 	movx	a,@dptr
   072F FB                  320 	mov	r3,a
   0730 A3                  321 	inc	dptr
   0731 E0                  322 	movx	a,@dptr
   0732 F8                  323 	mov	r0,a
   0733 A3                  324 	inc	dptr
   0734 E0                  325 	movx	a,@dptr
   0735 F9                  326 	mov	r1,a
   0736 A3                  327 	inc	dptr
   0737 E0                  328 	movx	a,@dptr
   0738 FA                  329 	mov	r2,a
                            330 ;	genLeftShift
   0739 85 1E F0            331 	mov	b,_HW_set_32bit_reg_field_sloc2_1_0
   073C 05 F0               332 	inc	b
   073E 80 0D               333 	sjmp	00104$
   0740                     334 00103$:
   0740 EB                  335 	mov	a,r3
   0741 25 E0               336 	add	a,acc
   0743 FB                  337 	mov	r3,a
   0744 E8                  338 	mov	a,r0
   0745 33                  339 	rlc	a
   0746 F8                  340 	mov	r0,a
   0747 E9                  341 	mov	a,r1
   0748 33                  342 	rlc	a
   0749 F9                  343 	mov	r1,a
   074A EA                  344 	mov	a,r2
   074B 33                  345 	rlc	a
   074C FA                  346 	mov	r2,a
   074D                     347 00104$:
   074D D5 F0 F0            348 	djnz	b,00103$
                            349 ;	genAnd
   0750 EB                  350 	mov	a,r3
   0751 52 04               351 	anl	ar4,a
   0753 E8                  352 	mov	a,r0
   0754 52 05               353 	anl	ar5,a
   0756 E9                  354 	mov	a,r1
   0757 52 06               355 	anl	ar6,a
   0759 EA                  356 	mov	a,r2
   075A 52 07               357 	anl	ar7,a
                            358 ;	genOr
   075C 90 00 B9            359 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   075F EC                  360 	mov	a,r4
   0760 45 1A               361 	orl	a,_HW_set_32bit_reg_field_sloc1_1_0
   0762 F0                  362 	movx	@dptr,a
   0763 ED                  363 	mov	a,r5
   0764 45 1B               364 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 1)
   0766 A3                  365 	inc	dptr
   0767 F0                  366 	movx	@dptr,a
   0768 EE                  367 	mov	a,r6
   0769 45 1C               368 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 2)
   076B A3                  369 	inc	dptr
   076C F0                  370 	movx	@dptr,a
   076D EF                  371 	mov	a,r7
   076E 45 1D               372 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 3)
   0770 A3                  373 	inc	dptr
   0771 F0                  374 	movx	@dptr,a
                    00B8    375 	C$hw_reg_access.c$27$1$1 ==.
                            376 ;	../hal/Core8051s/SDCC/hw_reg_access.c:27: HW_set_32bit_reg(reg_addr, temp32);
                            377 ;	genAssign
   0772 90 00 B9            378 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   0775 E0                  379 	movx	a,@dptr
   0776 FA                  380 	mov	r2,a
   0777 A3                  381 	inc	dptr
   0778 E0                  382 	movx	a,@dptr
   0779 FB                  383 	mov	r3,a
   077A A3                  384 	inc	dptr
   077B E0                  385 	movx	a,@dptr
   077C FC                  386 	mov	r4,a
   077D A3                  387 	inc	dptr
   077E E0                  388 	movx	a,@dptr
   077F FD                  389 	mov	r5,a
                            390 ;	genAssign
   0780 90 00 AA            391 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   0783 EA                  392 	mov	a,r2
   0784 F0                  393 	movx	@dptr,a
   0785 A3                  394 	inc	dptr
   0786 EB                  395 	mov	a,r3
   0787 F0                  396 	movx	@dptr,a
   0788 A3                  397 	inc	dptr
   0789 EC                  398 	mov	a,r4
   078A F0                  399 	movx	@dptr,a
   078B A3                  400 	inc	dptr
   078C ED                  401 	mov	a,r5
   078D F0                  402 	movx	@dptr,a
                            403 ;	genCall
   078E 85 18 82            404 	mov	dpl,_HW_set_32bit_reg_field_sloc0_1_0
   0791 85 19 83            405 	mov	dph,(_HW_set_32bit_reg_field_sloc0_1_0 + 1)
   0794 12 06 62            406 	lcall	_HW_set_32bit_reg
   0797                     407 00101$:
                    00DD    408 	C$hw_reg_access.c$28$1$1 ==.
                    00DD    409 	XG$HW_set_32bit_reg_field$0$0 ==.
   0797 22                  410 	ret
                            411 ;------------------------------------------------------------
                            412 ;Allocation info for local variables in function 'HW_get_32bit_reg_field'
                            413 ;------------------------------------------------------------
                            414 ;shift                     Allocated with name '_HW_get_32bit_reg_field_PARM_2'
                            415 ;mask                      Allocated with name '_HW_get_32bit_reg_field_PARM_3'
                            416 ;reg_addr                  Allocated with name '_HW_get_32bit_reg_field_reg_addr_1_1'
                            417 ;temp32                    Allocated with name '_HW_get_32bit_reg_field_temp32_1_1'
                            418 ;------------------------------------------------------------
                    00DE    419 	G$HW_get_32bit_reg_field$0$0 ==.
                    00DE    420 	C$hw_reg_access.c$34$1$1 ==.
                            421 ;	../hal/Core8051s/SDCC/hw_reg_access.c:34: HW_get_32bit_reg_field
                            422 ;	-----------------------------------------
                            423 ;	 function HW_get_32bit_reg_field
                            424 ;	-----------------------------------------
   0798                     425 _HW_get_32bit_reg_field:
                            426 ;	genReceive
   0798 AA 83               427 	mov	r2,dph
   079A E5 82               428 	mov	a,dpl
   079C 90 00 C2            429 	mov	dptr,#_HW_get_32bit_reg_field_reg_addr_1_1
   079F F0                  430 	movx	@dptr,a
   07A0 A3                  431 	inc	dptr
   07A1 EA                  432 	mov	a,r2
   07A2 F0                  433 	movx	@dptr,a
                    00E9    434 	C$hw_reg_access.c$42$1$1 ==.
                            435 ;	../hal/Core8051s/SDCC/hw_reg_access.c:42: temp32 = (HW_get_32bit_reg(reg_addr) & mask) >> shift;
                            436 ;	genAssign
   07A3 90 00 C2            437 	mov	dptr,#_HW_get_32bit_reg_field_reg_addr_1_1
   07A6 E0                  438 	movx	a,@dptr
   07A7 FA                  439 	mov	r2,a
   07A8 A3                  440 	inc	dptr
   07A9 E0                  441 	movx	a,@dptr
   07AA FB                  442 	mov	r3,a
                            443 ;	genCall
   07AB 8A 82               444 	mov	dpl,r2
   07AD 8B 83               445 	mov	dph,r3
   07AF 12 06 56            446 	lcall	_HW_get_32bit_reg
   07B2 AA 82               447 	mov	r2,dpl
   07B4 AB 83               448 	mov	r3,dph
   07B6 AC F0               449 	mov	r4,b
   07B8 FD                  450 	mov	r5,a
                            451 ;	genAssign
   07B9 90 00 BE            452 	mov	dptr,#_HW_get_32bit_reg_field_PARM_3
   07BC E0                  453 	movx	a,@dptr
   07BD FE                  454 	mov	r6,a
   07BE A3                  455 	inc	dptr
   07BF E0                  456 	movx	a,@dptr
   07C0 FF                  457 	mov	r7,a
   07C1 A3                  458 	inc	dptr
   07C2 E0                  459 	movx	a,@dptr
   07C3 F8                  460 	mov	r0,a
   07C4 A3                  461 	inc	dptr
   07C5 E0                  462 	movx	a,@dptr
   07C6 F9                  463 	mov	r1,a
                            464 ;	genAnd
   07C7 EE                  465 	mov	a,r6
   07C8 52 02               466 	anl	ar2,a
   07CA EF                  467 	mov	a,r7
   07CB 52 03               468 	anl	ar3,a
   07CD E8                  469 	mov	a,r0
   07CE 52 04               470 	anl	ar4,a
   07D0 E9                  471 	mov	a,r1
   07D1 52 05               472 	anl	ar5,a
                            473 ;	genAssign
   07D3 90 00 BD            474 	mov	dptr,#_HW_get_32bit_reg_field_PARM_2
   07D6 E0                  475 	movx	a,@dptr
   07D7 FE                  476 	mov	r6,a
                            477 ;	genRightShift
   07D8 8E F0               478 	mov	b,r6
   07DA 05 F0               479 	inc	b
   07DC 80 0D               480 	sjmp	00104$
   07DE                     481 00103$:
   07DE C3                  482 	clr	c
   07DF ED                  483 	mov	a,r5
   07E0 13                  484 	rrc	a
   07E1 FD                  485 	mov	r5,a
   07E2 EC                  486 	mov	a,r4
   07E3 13                  487 	rrc	a
   07E4 FC                  488 	mov	r4,a
   07E5 EB                  489 	mov	a,r3
   07E6 13                  490 	rrc	a
   07E7 FB                  491 	mov	r3,a
   07E8 EA                  492 	mov	a,r2
   07E9 13                  493 	rrc	a
   07EA FA                  494 	mov	r2,a
   07EB                     495 00104$:
   07EB D5 F0 F0            496 	djnz	b,00103$
                            497 ;	genAssign
   07EE 90 00 C4            498 	mov	dptr,#_HW_get_32bit_reg_field_temp32_1_1
   07F1 EA                  499 	mov	a,r2
   07F2 F0                  500 	movx	@dptr,a
   07F3 A3                  501 	inc	dptr
   07F4 EB                  502 	mov	a,r3
   07F5 F0                  503 	movx	@dptr,a
   07F6 A3                  504 	inc	dptr
   07F7 EC                  505 	mov	a,r4
   07F8 F0                  506 	movx	@dptr,a
   07F9 A3                  507 	inc	dptr
   07FA ED                  508 	mov	a,r5
   07FB F0                  509 	movx	@dptr,a
                    0142    510 	C$hw_reg_access.c$43$1$1 ==.
                            511 ;	../hal/Core8051s/SDCC/hw_reg_access.c:43: return temp32;
                            512 ;	genAssign
   07FC 90 00 C4            513 	mov	dptr,#_HW_get_32bit_reg_field_temp32_1_1
   07FF E0                  514 	movx	a,@dptr
   0800 FA                  515 	mov	r2,a
   0801 A3                  516 	inc	dptr
   0802 E0                  517 	movx	a,@dptr
   0803 FB                  518 	mov	r3,a
   0804 A3                  519 	inc	dptr
   0805 E0                  520 	movx	a,@dptr
   0806 FC                  521 	mov	r4,a
   0807 A3                  522 	inc	dptr
   0808 E0                  523 	movx	a,@dptr
   0809 FD                  524 	mov	r5,a
                            525 ;	genRet
   080A 8A 82               526 	mov	dpl,r2
   080C 8B 83               527 	mov	dph,r3
   080E 8C F0               528 	mov	b,r4
   0810 ED                  529 	mov	a,r5
   0811                     530 00101$:
                    0157    531 	C$hw_reg_access.c$44$1$1 ==.
                    0157    532 	XG$HW_get_32bit_reg_field$0$0 ==.
   0811 22                  533 	ret
                            534 ;------------------------------------------------------------
                            535 ;Allocation info for local variables in function 'HW_set_16bit_reg_field'
                            536 ;------------------------------------------------------------
                            537 ;sloc0                     Allocated with name '_HW_set_16bit_reg_field_sloc0_1_0'
                            538 ;shift                     Allocated with name '_HW_set_16bit_reg_field_PARM_2'
                            539 ;mask                      Allocated with name '_HW_set_16bit_reg_field_PARM_3'
                            540 ;in_value16                Allocated with name '_HW_set_16bit_reg_field_PARM_4'
                            541 ;reg_addr                  Allocated with name '_HW_set_16bit_reg_field_reg_addr_1_1'
                            542 ;temp16                    Allocated with name '_HW_set_16bit_reg_field_temp16_1_1'
                            543 ;------------------------------------------------------------
                    0158    544 	G$HW_set_16bit_reg_field$0$0 ==.
                    0158    545 	C$hw_reg_access.c$49$1$1 ==.
                            546 ;	../hal/Core8051s/SDCC/hw_reg_access.c:49: void HW_set_16bit_reg_field
                            547 ;	-----------------------------------------
                            548 ;	 function HW_set_16bit_reg_field
                            549 ;	-----------------------------------------
   0812                     550 _HW_set_16bit_reg_field:
                            551 ;	genReceive
   0812 AA 83               552 	mov	r2,dph
   0814 E5 82               553 	mov	a,dpl
   0816 90 00 CD            554 	mov	dptr,#_HW_set_16bit_reg_field_reg_addr_1_1
   0819 F0                  555 	movx	@dptr,a
   081A A3                  556 	inc	dptr
   081B EA                  557 	mov	a,r2
   081C F0                  558 	movx	@dptr,a
                    0163    559 	C$hw_reg_access.c$58$1$1 ==.
                            560 ;	../hal/Core8051s/SDCC/hw_reg_access.c:58: temp16 = HW_get_16bit_reg( reg_addr );
                            561 ;	genAssign
   081D 90 00 CD            562 	mov	dptr,#_HW_set_16bit_reg_field_reg_addr_1_1
   0820 E0                  563 	movx	a,@dptr
   0821 FA                  564 	mov	r2,a
   0822 A3                  565 	inc	dptr
   0823 E0                  566 	movx	a,@dptr
   0824 FB                  567 	mov	r3,a
                            568 ;	genCall
   0825 8A 82               569 	mov	dpl,r2
   0827 8B 83               570 	mov	dph,r3
   0829 C0 02               571 	push	ar2
   082B C0 03               572 	push	ar3
   082D 12 06 92            573 	lcall	_HW_get_16bit_reg
   0830 E5 82               574 	mov	a,dpl
   0832 85 83 F0            575 	mov	b,dph
   0835 D0 03               576 	pop	ar3
   0837 D0 02               577 	pop	ar2
                            578 ;	genAssign
   0839 90 00 CF            579 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   083C F0                  580 	movx	@dptr,a
   083D A3                  581 	inc	dptr
   083E E5 F0               582 	mov	a,b
   0840 F0                  583 	movx	@dptr,a
                    0187    584 	C$hw_reg_access.c$59$1$1 ==.
                            585 ;	../hal/Core8051s/SDCC/hw_reg_access.c:59: temp16 = ((temp16  & ~mask) | (((in_value16) << shift) & mask));
                            586 ;	genAssign
   0841 90 00 C9            587 	mov	dptr,#_HW_set_16bit_reg_field_PARM_3
   0844 E0                  588 	movx	a,@dptr
   0845 FC                  589 	mov	r4,a
   0846 A3                  590 	inc	dptr
   0847 E0                  591 	movx	a,@dptr
   0848 FD                  592 	mov	r5,a
                            593 ;	genCpl
   0849 EC                  594 	mov	a,r4
   084A F4                  595 	cpl	a
   084B FE                  596 	mov	r6,a
   084C ED                  597 	mov	a,r5
   084D F4                  598 	cpl	a
   084E FF                  599 	mov	r7,a
                            600 ;	genAssign
   084F 90 00 CF            601 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   0852 E0                  602 	movx	a,@dptr
   0853 F8                  603 	mov	r0,a
   0854 A3                  604 	inc	dptr
   0855 E0                  605 	movx	a,@dptr
   0856 F9                  606 	mov	r1,a
                            607 ;	genAnd
   0857 E8                  608 	mov	a,r0
   0858 52 06               609 	anl	ar6,a
   085A E9                  610 	mov	a,r1
   085B 52 07               611 	anl	ar7,a
                            612 ;	genAssign
   085D 90 00 C8            613 	mov	dptr,#_HW_set_16bit_reg_field_PARM_2
   0860 E0                  614 	movx	a,@dptr
   0861 F5 1F               615 	mov	_HW_set_16bit_reg_field_sloc0_1_0,a
                            616 ;	genAssign
   0863 90 00 CB            617 	mov	dptr,#_HW_set_16bit_reg_field_PARM_4
   0866 E0                  618 	movx	a,@dptr
   0867 F9                  619 	mov	r1,a
   0868 A3                  620 	inc	dptr
   0869 E0                  621 	movx	a,@dptr
   086A F8                  622 	mov	r0,a
                            623 ;	genLeftShift
   086B 85 1F F0            624 	mov	b,_HW_set_16bit_reg_field_sloc0_1_0
   086E 05 F0               625 	inc	b
   0870 80 07               626 	sjmp	00104$
   0872                     627 00103$:
   0872 E9                  628 	mov	a,r1
   0873 25 E0               629 	add	a,acc
   0875 F9                  630 	mov	r1,a
   0876 E8                  631 	mov	a,r0
   0877 33                  632 	rlc	a
   0878 F8                  633 	mov	r0,a
   0879                     634 00104$:
   0879 D5 F0 F6            635 	djnz	b,00103$
                            636 ;	genAnd
   087C E9                  637 	mov	a,r1
   087D 52 04               638 	anl	ar4,a
   087F E8                  639 	mov	a,r0
   0880 52 05               640 	anl	ar5,a
                            641 ;	genOr
   0882 90 00 CF            642 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   0885 EC                  643 	mov	a,r4
   0886 4E                  644 	orl	a,r6
   0887 F0                  645 	movx	@dptr,a
   0888 ED                  646 	mov	a,r5
   0889 4F                  647 	orl	a,r7
   088A A3                  648 	inc	dptr
   088B F0                  649 	movx	@dptr,a
                    01D2    650 	C$hw_reg_access.c$60$1$1 ==.
                            651 ;	../hal/Core8051s/SDCC/hw_reg_access.c:60: HW_set_16bit_reg(reg_addr, temp16);
                            652 ;	genAssign
   088C 90 00 CF            653 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   088F E0                  654 	movx	a,@dptr
   0890 FC                  655 	mov	r4,a
   0891 A3                  656 	inc	dptr
   0892 E0                  657 	movx	a,@dptr
   0893 FD                  658 	mov	r5,a
                            659 ;	genAssign
   0894 90 00 A7            660 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   0897 EC                  661 	mov	a,r4
   0898 F0                  662 	movx	@dptr,a
   0899 A3                  663 	inc	dptr
   089A ED                  664 	mov	a,r5
   089B F0                  665 	movx	@dptr,a
                            666 ;	genCall
   089C 8A 82               667 	mov	dpl,r2
   089E 8B 83               668 	mov	dph,r3
   08A0 12 06 7E            669 	lcall	_HW_set_16bit_reg
   08A3                     670 00101$:
                    01E9    671 	C$hw_reg_access.c$61$1$1 ==.
                    01E9    672 	XG$HW_set_16bit_reg_field$0$0 ==.
   08A3 22                  673 	ret
                            674 ;------------------------------------------------------------
                            675 ;Allocation info for local variables in function 'HW_get_16bit_reg_field'
                            676 ;------------------------------------------------------------
                            677 ;shift                     Allocated with name '_HW_get_16bit_reg_field_PARM_2'
                            678 ;mask                      Allocated with name '_HW_get_16bit_reg_field_PARM_3'
                            679 ;reg_addr                  Allocated with name '_HW_get_16bit_reg_field_reg_addr_1_1'
                            680 ;temp16                    Allocated with name '_HW_get_16bit_reg_field_temp16_1_1'
                            681 ;------------------------------------------------------------
                    01EA    682 	G$HW_get_16bit_reg_field$0$0 ==.
                    01EA    683 	C$hw_reg_access.c$66$1$1 ==.
                            684 ;	../hal/Core8051s/SDCC/hw_reg_access.c:66: uint16_t HW_get_16bit_reg_field
                            685 ;	-----------------------------------------
                            686 ;	 function HW_get_16bit_reg_field
                            687 ;	-----------------------------------------
   08A4                     688 _HW_get_16bit_reg_field:
                            689 ;	genReceive
   08A4 AA 83               690 	mov	r2,dph
   08A6 E5 82               691 	mov	a,dpl
   08A8 90 00 D4            692 	mov	dptr,#_HW_get_16bit_reg_field_reg_addr_1_1
   08AB F0                  693 	movx	@dptr,a
   08AC A3                  694 	inc	dptr
   08AD EA                  695 	mov	a,r2
   08AE F0                  696 	movx	@dptr,a
                    01F5    697 	C$hw_reg_access.c$74$1$1 ==.
                            698 ;	../hal/Core8051s/SDCC/hw_reg_access.c:74: temp16 = (HW_get_16bit_reg(reg_addr) & mask) >> shift;
                            699 ;	genAssign
   08AF 90 00 D4            700 	mov	dptr,#_HW_get_16bit_reg_field_reg_addr_1_1
   08B2 E0                  701 	movx	a,@dptr
   08B3 FA                  702 	mov	r2,a
   08B4 A3                  703 	inc	dptr
   08B5 E0                  704 	movx	a,@dptr
   08B6 FB                  705 	mov	r3,a
                            706 ;	genCall
   08B7 8A 82               707 	mov	dpl,r2
   08B9 8B 83               708 	mov	dph,r3
   08BB 12 06 92            709 	lcall	_HW_get_16bit_reg
   08BE AA 82               710 	mov	r2,dpl
   08C0 AB 83               711 	mov	r3,dph
                            712 ;	genAssign
   08C2 90 00 D2            713 	mov	dptr,#_HW_get_16bit_reg_field_PARM_3
   08C5 E0                  714 	movx	a,@dptr
   08C6 FC                  715 	mov	r4,a
   08C7 A3                  716 	inc	dptr
   08C8 E0                  717 	movx	a,@dptr
   08C9 FD                  718 	mov	r5,a
                            719 ;	genAnd
   08CA EC                  720 	mov	a,r4
   08CB 52 02               721 	anl	ar2,a
   08CD ED                  722 	mov	a,r5
   08CE 52 03               723 	anl	ar3,a
                            724 ;	genAssign
   08D0 90 00 D1            725 	mov	dptr,#_HW_get_16bit_reg_field_PARM_2
   08D3 E0                  726 	movx	a,@dptr
   08D4 FC                  727 	mov	r4,a
                            728 ;	genRightShift
   08D5 8C F0               729 	mov	b,r4
   08D7 05 F0               730 	inc	b
   08D9 80 07               731 	sjmp	00104$
   08DB                     732 00103$:
   08DB C3                  733 	clr	c
   08DC EB                  734 	mov	a,r3
   08DD 13                  735 	rrc	a
   08DE FB                  736 	mov	r3,a
   08DF EA                  737 	mov	a,r2
   08E0 13                  738 	rrc	a
   08E1 FA                  739 	mov	r2,a
   08E2                     740 00104$:
   08E2 D5 F0 F6            741 	djnz	b,00103$
                            742 ;	genAssign
   08E5 90 00 D6            743 	mov	dptr,#_HW_get_16bit_reg_field_temp16_1_1
   08E8 EA                  744 	mov	a,r2
   08E9 F0                  745 	movx	@dptr,a
   08EA A3                  746 	inc	dptr
   08EB EB                  747 	mov	a,r3
   08EC F0                  748 	movx	@dptr,a
                    0233    749 	C$hw_reg_access.c$75$1$1 ==.
                            750 ;	../hal/Core8051s/SDCC/hw_reg_access.c:75: return temp16;
                            751 ;	genAssign
   08ED 90 00 D6            752 	mov	dptr,#_HW_get_16bit_reg_field_temp16_1_1
   08F0 E0                  753 	movx	a,@dptr
   08F1 FA                  754 	mov	r2,a
   08F2 A3                  755 	inc	dptr
   08F3 E0                  756 	movx	a,@dptr
   08F4 FB                  757 	mov	r3,a
                            758 ;	genRet
   08F5 8A 82               759 	mov	dpl,r2
   08F7 8B 83               760 	mov	dph,r3
   08F9                     761 00101$:
                    023F    762 	C$hw_reg_access.c$76$1$1 ==.
                    023F    763 	XG$HW_get_16bit_reg_field$0$0 ==.
   08F9 22                  764 	ret
                            765 ;------------------------------------------------------------
                            766 ;Allocation info for local variables in function 'HW_set_8bit_reg_field'
                            767 ;------------------------------------------------------------
                            768 ;shift                     Allocated with name '_HW_set_8bit_reg_field_PARM_2'
                            769 ;mask                      Allocated with name '_HW_set_8bit_reg_field_PARM_3'
                            770 ;value                     Allocated with name '_HW_set_8bit_reg_field_PARM_4'
                            771 ;reg_addr                  Allocated with name '_HW_set_8bit_reg_field_reg_addr_1_1'
                            772 ;temp8                     Allocated with name '_HW_set_8bit_reg_field_temp8_1_1'
                            773 ;------------------------------------------------------------
                    0240    774 	G$HW_set_8bit_reg_field$0$0 ==.
                    0240    775 	C$hw_reg_access.c$81$1$1 ==.
                            776 ;	../hal/Core8051s/SDCC/hw_reg_access.c:81: void HW_set_8bit_reg_field
                            777 ;	-----------------------------------------
                            778 ;	 function HW_set_8bit_reg_field
                            779 ;	-----------------------------------------
   08FA                     780 _HW_set_8bit_reg_field:
                            781 ;	genReceive
   08FA AA 83               782 	mov	r2,dph
   08FC E5 82               783 	mov	a,dpl
   08FE 90 00 DB            784 	mov	dptr,#_HW_set_8bit_reg_field_reg_addr_1_1
   0901 F0                  785 	movx	@dptr,a
   0902 A3                  786 	inc	dptr
   0903 EA                  787 	mov	a,r2
   0904 F0                  788 	movx	@dptr,a
                    024B    789 	C$hw_reg_access.c$90$1$1 ==.
                            790 ;	../hal/Core8051s/SDCC/hw_reg_access.c:90: temp8 = HW_get_8bit_reg( reg_addr );
                            791 ;	genAssign
   0905 90 00 DB            792 	mov	dptr,#_HW_set_8bit_reg_field_reg_addr_1_1
   0908 E0                  793 	movx	a,@dptr
   0909 FA                  794 	mov	r2,a
   090A A3                  795 	inc	dptr
   090B E0                  796 	movx	a,@dptr
   090C FB                  797 	mov	r3,a
                            798 ;	genCall
   090D 8A 82               799 	mov	dpl,r2
   090F 8B 83               800 	mov	dph,r3
   0911 C0 02               801 	push	ar2
   0913 C0 03               802 	push	ar3
   0915 12 06 A7            803 	lcall	_HW_get_8bit_reg
   0918 E5 82               804 	mov	a,dpl
   091A D0 03               805 	pop	ar3
   091C D0 02               806 	pop	ar2
                            807 ;	genAssign
   091E 90 00 DD            808 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   0921 F0                  809 	movx	@dptr,a
                    0268    810 	C$hw_reg_access.c$91$1$1 ==.
                            811 ;	../hal/Core8051s/SDCC/hw_reg_access.c:91: temp8 = ((temp8  & ~mask) | (((value) << shift) & mask));
                            812 ;	genAssign
   0922 90 00 D9            813 	mov	dptr,#_HW_set_8bit_reg_field_PARM_3
   0925 E0                  814 	movx	a,@dptr
   0926 FC                  815 	mov	r4,a
                            816 ;	genCpl
   0927 EC                  817 	mov	a,r4
   0928 F4                  818 	cpl	a
   0929 FD                  819 	mov	r5,a
                            820 ;	genAssign
   092A 90 00 DD            821 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   092D E0                  822 	movx	a,@dptr
   092E FE                  823 	mov	r6,a
                            824 ;	genAnd
   092F EE                  825 	mov	a,r6
   0930 52 05               826 	anl	ar5,a
                            827 ;	genAssign
   0932 90 00 D8            828 	mov	dptr,#_HW_set_8bit_reg_field_PARM_2
   0935 E0                  829 	movx	a,@dptr
   0936 FE                  830 	mov	r6,a
                            831 ;	genAssign
   0937 90 00 DA            832 	mov	dptr,#_HW_set_8bit_reg_field_PARM_4
   093A E0                  833 	movx	a,@dptr
   093B FF                  834 	mov	r7,a
                            835 ;	genLeftShift
   093C 8E F0               836 	mov	b,r6
   093E 05 F0               837 	inc	b
   0940 EF                  838 	mov	a,r7
   0941 80 02               839 	sjmp	00105$
   0943                     840 00103$:
   0943 25 E0               841 	add	a,acc
   0945                     842 00105$:
   0945 D5 F0 FB            843 	djnz	b,00103$
                            844 ;	genAnd
   0948 5C                  845 	anl	a,r4
                            846 ;	genOr
   0949 90 00 DD            847 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   094C 4D                  848 	orl	a,r5
   094D F0                  849 	movx	@dptr,a
                    0294    850 	C$hw_reg_access.c$92$1$1 ==.
                            851 ;	../hal/Core8051s/SDCC/hw_reg_access.c:92: HW_set_8bit_reg(reg_addr, temp8);
                            852 ;	genAssign
   094E 90 00 DD            853 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   0951 E0                  854 	movx	a,@dptr
   0952 FC                  855 	mov	r4,a
                            856 ;	genAssign
   0953 90 00 A9            857 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   0956 EC                  858 	mov	a,r4
   0957 F0                  859 	movx	@dptr,a
                            860 ;	genCall
   0958 8A 82               861 	mov	dpl,r2
   095A 8B 83               862 	mov	dph,r3
   095C 12 06 99            863 	lcall	_HW_set_8bit_reg
   095F                     864 00101$:
                    02A5    865 	C$hw_reg_access.c$93$1$1 ==.
                    02A5    866 	XG$HW_set_8bit_reg_field$0$0 ==.
   095F 22                  867 	ret
                            868 ;------------------------------------------------------------
                            869 ;Allocation info for local variables in function 'HW_get_8bit_reg_field'
                            870 ;------------------------------------------------------------
                            871 ;shift                     Allocated with name '_HW_get_8bit_reg_field_PARM_2'
                            872 ;mask                      Allocated with name '_HW_get_8bit_reg_field_PARM_3'
                            873 ;reg_addr                  Allocated with name '_HW_get_8bit_reg_field_reg_addr_1_1'
                            874 ;temp8                     Allocated with name '_HW_get_8bit_reg_field_temp8_1_1'
                            875 ;------------------------------------------------------------
                    02A6    876 	G$HW_get_8bit_reg_field$0$0 ==.
                    02A6    877 	C$hw_reg_access.c$98$1$1 ==.
                            878 ;	../hal/Core8051s/SDCC/hw_reg_access.c:98: uint8_t HW_get_8bit_reg_field
                            879 ;	-----------------------------------------
                            880 ;	 function HW_get_8bit_reg_field
                            881 ;	-----------------------------------------
   0960                     882 _HW_get_8bit_reg_field:
                            883 ;	genReceive
   0960 AA 83               884 	mov	r2,dph
   0962 E5 82               885 	mov	a,dpl
   0964 90 00 E0            886 	mov	dptr,#_HW_get_8bit_reg_field_reg_addr_1_1
   0967 F0                  887 	movx	@dptr,a
   0968 A3                  888 	inc	dptr
   0969 EA                  889 	mov	a,r2
   096A F0                  890 	movx	@dptr,a
                    02B1    891 	C$hw_reg_access.c$106$1$1 ==.
                            892 ;	../hal/Core8051s/SDCC/hw_reg_access.c:106: temp8 = (HW_get_8bit_reg(reg_addr) & mask) >> shift;
                            893 ;	genAssign
   096B 90 00 E0            894 	mov	dptr,#_HW_get_8bit_reg_field_reg_addr_1_1
   096E E0                  895 	movx	a,@dptr
   096F FA                  896 	mov	r2,a
   0970 A3                  897 	inc	dptr
   0971 E0                  898 	movx	a,@dptr
   0972 FB                  899 	mov	r3,a
                            900 ;	genCall
   0973 8A 82               901 	mov	dpl,r2
   0975 8B 83               902 	mov	dph,r3
   0977 12 06 A7            903 	lcall	_HW_get_8bit_reg
   097A AA 82               904 	mov	r2,dpl
                            905 ;	genAssign
   097C 90 00 DF            906 	mov	dptr,#_HW_get_8bit_reg_field_PARM_3
   097F E0                  907 	movx	a,@dptr
   0980 FB                  908 	mov	r3,a
                            909 ;	genAnd
   0981 EB                  910 	mov	a,r3
   0982 52 02               911 	anl	ar2,a
                            912 ;	genAssign
   0984 90 00 DE            913 	mov	dptr,#_HW_get_8bit_reg_field_PARM_2
   0987 E0                  914 	movx	a,@dptr
   0988 FB                  915 	mov	r3,a
                            916 ;	genRightShift
   0989 8B F0               917 	mov	b,r3
   098B 05 F0               918 	inc	b
   098D EA                  919 	mov	a,r2
   098E 80 02               920 	sjmp	00104$
   0990                     921 00103$:
   0990 C3                  922 	clr	c
   0991 13                  923 	rrc	a
   0992                     924 00104$:
   0992 D5 F0 FB            925 	djnz	b,00103$
                            926 ;	genAssign
   0995 90 00 E2            927 	mov	dptr,#_HW_get_8bit_reg_field_temp8_1_1
   0998 F0                  928 	movx	@dptr,a
                    02DF    929 	C$hw_reg_access.c$107$1$1 ==.
                            930 ;	../hal/Core8051s/SDCC/hw_reg_access.c:107: return temp8;
                            931 ;	genAssign
   0999 90 00 E2            932 	mov	dptr,#_HW_get_8bit_reg_field_temp8_1_1
   099C E0                  933 	movx	a,@dptr
   099D FA                  934 	mov	r2,a
                            935 ;	genRet
   099E 8A 82               936 	mov	dpl,r2
   09A0                     937 00101$:
                    02E6    938 	C$hw_reg_access.c$108$1$1 ==.
                    02E6    939 	XG$HW_get_8bit_reg_field$0$0 ==.
   09A0 22                  940 	ret
                            941 	.area CSEG    (CODE)
                            942 	.area CONST   (CODE)
                            943 	.area XINIT   (CODE)
                            944 	.area CABS    (ABS,CODE)
