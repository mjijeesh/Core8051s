                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Tue May 03 17:52:19 2016
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
   002D                      51 _HW_set_32bit_reg_field_sloc0_1_0:
   002D                      52 	.ds 2
                    0002     53 LHW_set_32bit_reg_field$sloc1$1$0==.
   002F                      54 _HW_set_32bit_reg_field_sloc1_1_0:
   002F                      55 	.ds 4
                    0006     56 LHW_set_32bit_reg_field$sloc2$1$0==.
   0033                      57 _HW_set_32bit_reg_field_sloc2_1_0:
   0033                      58 	.ds 1
                    0007     59 LHW_set_16bit_reg_field$sloc0$1$0==.
   0034                      60 _HW_set_16bit_reg_field_sloc0_1_0:
   0034                      61 	.ds 1
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
   05A1                      88 _HW_set_32bit_reg_field_PARM_2:
   05A1                      89 	.ds 1
                    0001     90 LHW_set_32bit_reg_field$mask$1$1==.
   05A2                      91 _HW_set_32bit_reg_field_PARM_3:
   05A2                      92 	.ds 4
                    0005     93 LHW_set_32bit_reg_field$value$1$1==.
   05A6                      94 _HW_set_32bit_reg_field_PARM_4:
   05A6                      95 	.ds 4
                    0009     96 LHW_set_32bit_reg_field$reg_addr$1$1==.
   05AA                      97 _HW_set_32bit_reg_field_reg_addr_1_1:
   05AA                      98 	.ds 2
                    000B     99 LHW_set_32bit_reg_field$temp32$1$1==.
   05AC                     100 _HW_set_32bit_reg_field_temp32_1_1:
   05AC                     101 	.ds 4
                    000F    102 LHW_get_32bit_reg_field$shift$1$1==.
   05B0                     103 _HW_get_32bit_reg_field_PARM_2:
   05B0                     104 	.ds 1
                    0010    105 LHW_get_32bit_reg_field$mask$1$1==.
   05B1                     106 _HW_get_32bit_reg_field_PARM_3:
   05B1                     107 	.ds 4
                    0014    108 LHW_get_32bit_reg_field$reg_addr$1$1==.
   05B5                     109 _HW_get_32bit_reg_field_reg_addr_1_1:
   05B5                     110 	.ds 2
                    0016    111 LHW_get_32bit_reg_field$temp32$1$1==.
   05B7                     112 _HW_get_32bit_reg_field_temp32_1_1:
   05B7                     113 	.ds 4
                    001A    114 LHW_set_16bit_reg_field$shift$1$1==.
   05BB                     115 _HW_set_16bit_reg_field_PARM_2:
   05BB                     116 	.ds 1
                    001B    117 LHW_set_16bit_reg_field$mask$1$1==.
   05BC                     118 _HW_set_16bit_reg_field_PARM_3:
   05BC                     119 	.ds 2
                    001D    120 LHW_set_16bit_reg_field$in_value16$1$1==.
   05BE                     121 _HW_set_16bit_reg_field_PARM_4:
   05BE                     122 	.ds 2
                    001F    123 LHW_set_16bit_reg_field$reg_addr$1$1==.
   05C0                     124 _HW_set_16bit_reg_field_reg_addr_1_1:
   05C0                     125 	.ds 2
                    0021    126 LHW_set_16bit_reg_field$temp16$1$1==.
   05C2                     127 _HW_set_16bit_reg_field_temp16_1_1:
   05C2                     128 	.ds 2
                    0023    129 LHW_get_16bit_reg_field$shift$1$1==.
   05C4                     130 _HW_get_16bit_reg_field_PARM_2:
   05C4                     131 	.ds 1
                    0024    132 LHW_get_16bit_reg_field$mask$1$1==.
   05C5                     133 _HW_get_16bit_reg_field_PARM_3:
   05C5                     134 	.ds 2
                    0026    135 LHW_get_16bit_reg_field$reg_addr$1$1==.
   05C7                     136 _HW_get_16bit_reg_field_reg_addr_1_1:
   05C7                     137 	.ds 2
                    0028    138 LHW_get_16bit_reg_field$temp16$1$1==.
   05C9                     139 _HW_get_16bit_reg_field_temp16_1_1:
   05C9                     140 	.ds 2
                    002A    141 LHW_set_8bit_reg_field$shift$1$1==.
   05CB                     142 _HW_set_8bit_reg_field_PARM_2:
   05CB                     143 	.ds 1
                    002B    144 LHW_set_8bit_reg_field$mask$1$1==.
   05CC                     145 _HW_set_8bit_reg_field_PARM_3:
   05CC                     146 	.ds 1
                    002C    147 LHW_set_8bit_reg_field$value$1$1==.
   05CD                     148 _HW_set_8bit_reg_field_PARM_4:
   05CD                     149 	.ds 1
                    002D    150 LHW_set_8bit_reg_field$reg_addr$1$1==.
   05CE                     151 _HW_set_8bit_reg_field_reg_addr_1_1:
   05CE                     152 	.ds 2
                    002F    153 LHW_set_8bit_reg_field$temp8$1$1==.
   05D0                     154 _HW_set_8bit_reg_field_temp8_1_1:
   05D0                     155 	.ds 1
                    0030    156 LHW_get_8bit_reg_field$shift$1$1==.
   05D1                     157 _HW_get_8bit_reg_field_PARM_2:
   05D1                     158 	.ds 1
                    0031    159 LHW_get_8bit_reg_field$mask$1$1==.
   05D2                     160 _HW_get_8bit_reg_field_PARM_3:
   05D2                     161 	.ds 1
                    0032    162 LHW_get_8bit_reg_field$reg_addr$1$1==.
   05D3                     163 _HW_get_8bit_reg_field_reg_addr_1_1:
   05D3                     164 	.ds 2
                    0034    165 LHW_get_8bit_reg_field$temp8$1$1==.
   05D5                     166 _HW_get_8bit_reg_field_temp8_1_1:
   05D5                     167 	.ds 1
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
   1C03                     216 _HW_set_32bit_reg_field:
                    0002    217 	ar2 = 0x02
                    0003    218 	ar3 = 0x03
                    0004    219 	ar4 = 0x04
                    0005    220 	ar5 = 0x05
                    0006    221 	ar6 = 0x06
                    0007    222 	ar7 = 0x07
                    0000    223 	ar0 = 0x00
                    0001    224 	ar1 = 0x01
                            225 ;	genReceive
   1C03 AA 83               226 	mov	r2,dph
   1C05 E5 82               227 	mov	a,dpl
   1C07 90 05 AA            228 	mov	dptr,#_HW_set_32bit_reg_field_reg_addr_1_1
   1C0A F0                  229 	movx	@dptr,a
   1C0B A3                  230 	inc	dptr
   1C0C EA                  231 	mov	a,r2
   1C0D F0                  232 	movx	@dptr,a
                    000B    233 	C$hw_reg_access.c$25$1$1 ==.
                            234 ;	../hal/Core8051s/SDCC/hw_reg_access.c:25: temp32 = HW_get_32bit_reg( reg_addr );
                            235 ;	genAssign
   1C0E 90 05 AA            236 	mov	dptr,#_HW_set_32bit_reg_field_reg_addr_1_1
   1C11 E0                  237 	movx	a,@dptr
   1C12 F5 2D               238 	mov	_HW_set_32bit_reg_field_sloc0_1_0,a
   1C14 A3                  239 	inc	dptr
   1C15 E0                  240 	movx	a,@dptr
   1C16 F5 2E               241 	mov	(_HW_set_32bit_reg_field_sloc0_1_0 + 1),a
                            242 ;	genCall
   1C18 85 2D 82            243 	mov	dpl,_HW_set_32bit_reg_field_sloc0_1_0
   1C1B 85 2E 83            244 	mov	dph,(_HW_set_32bit_reg_field_sloc0_1_0 + 1)
   1C1E 12 1B 9F            245 	lcall	_HW_get_32bit_reg
   1C21 AC 82               246 	mov	r4,dpl
   1C23 AD 83               247 	mov	r5,dph
   1C25 AE F0               248 	mov	r6,b
   1C27 FF                  249 	mov	r7,a
                            250 ;	genAssign
   1C28 90 05 AC            251 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   1C2B EC                  252 	mov	a,r4
   1C2C F0                  253 	movx	@dptr,a
   1C2D A3                  254 	inc	dptr
   1C2E ED                  255 	mov	a,r5
   1C2F F0                  256 	movx	@dptr,a
   1C30 A3                  257 	inc	dptr
   1C31 EE                  258 	mov	a,r6
   1C32 F0                  259 	movx	@dptr,a
   1C33 A3                  260 	inc	dptr
   1C34 EF                  261 	mov	a,r7
   1C35 F0                  262 	movx	@dptr,a
                    0033    263 	C$hw_reg_access.c$26$1$1 ==.
                            264 ;	../hal/Core8051s/SDCC/hw_reg_access.c:26: temp32 = ((temp32 & ~mask) | (((value) << shift) & mask));
                            265 ;	genAssign
   1C36 90 05 A2            266 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   1C39 E0                  267 	movx	a,@dptr
   1C3A FC                  268 	mov	r4,a
   1C3B A3                  269 	inc	dptr
   1C3C E0                  270 	movx	a,@dptr
   1C3D FD                  271 	mov	r5,a
   1C3E A3                  272 	inc	dptr
   1C3F E0                  273 	movx	a,@dptr
   1C40 FE                  274 	mov	r6,a
   1C41 A3                  275 	inc	dptr
   1C42 E0                  276 	movx	a,@dptr
   1C43 FF                  277 	mov	r7,a
                            278 ;	genCpl
   1C44 EC                  279 	mov	a,r4
   1C45 F4                  280 	cpl	a
   1C46 F5 2F               281 	mov	_HW_set_32bit_reg_field_sloc1_1_0,a
   1C48 ED                  282 	mov	a,r5
   1C49 F4                  283 	cpl	a
   1C4A F5 30               284 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 1),a
   1C4C EE                  285 	mov	a,r6
   1C4D F4                  286 	cpl	a
   1C4E F5 31               287 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 2),a
   1C50 EF                  288 	mov	a,r7
   1C51 F4                  289 	cpl	a
   1C52 F5 32               290 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 3),a
                            291 ;	genAssign
   1C54 90 05 AC            292 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   1C57 E0                  293 	movx	a,@dptr
   1C58 FA                  294 	mov	r2,a
   1C59 A3                  295 	inc	dptr
   1C5A E0                  296 	movx	a,@dptr
   1C5B FB                  297 	mov	r3,a
   1C5C A3                  298 	inc	dptr
   1C5D E0                  299 	movx	a,@dptr
   1C5E F8                  300 	mov	r0,a
   1C5F A3                  301 	inc	dptr
   1C60 E0                  302 	movx	a,@dptr
   1C61 F9                  303 	mov	r1,a
                            304 ;	genAnd
   1C62 EA                  305 	mov	a,r2
   1C63 52 2F               306 	anl	_HW_set_32bit_reg_field_sloc1_1_0,a
   1C65 EB                  307 	mov	a,r3
   1C66 52 30               308 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 1),a
   1C68 E8                  309 	mov	a,r0
   1C69 52 31               310 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 2),a
   1C6B E9                  311 	mov	a,r1
   1C6C 52 32               312 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 3),a
                            313 ;	genAssign
   1C6E 90 05 A1            314 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   1C71 E0                  315 	movx	a,@dptr
   1C72 F5 33               316 	mov	_HW_set_32bit_reg_field_sloc2_1_0,a
                            317 ;	genAssign
   1C74 90 05 A6            318 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   1C77 E0                  319 	movx	a,@dptr
   1C78 FB                  320 	mov	r3,a
   1C79 A3                  321 	inc	dptr
   1C7A E0                  322 	movx	a,@dptr
   1C7B F8                  323 	mov	r0,a
   1C7C A3                  324 	inc	dptr
   1C7D E0                  325 	movx	a,@dptr
   1C7E F9                  326 	mov	r1,a
   1C7F A3                  327 	inc	dptr
   1C80 E0                  328 	movx	a,@dptr
   1C81 FA                  329 	mov	r2,a
                            330 ;	genLeftShift
   1C82 85 33 F0            331 	mov	b,_HW_set_32bit_reg_field_sloc2_1_0
   1C85 05 F0               332 	inc	b
   1C87 80 0D               333 	sjmp	00104$
   1C89                     334 00103$:
   1C89 EB                  335 	mov	a,r3
   1C8A 25 E0               336 	add	a,acc
   1C8C FB                  337 	mov	r3,a
   1C8D E8                  338 	mov	a,r0
   1C8E 33                  339 	rlc	a
   1C8F F8                  340 	mov	r0,a
   1C90 E9                  341 	mov	a,r1
   1C91 33                  342 	rlc	a
   1C92 F9                  343 	mov	r1,a
   1C93 EA                  344 	mov	a,r2
   1C94 33                  345 	rlc	a
   1C95 FA                  346 	mov	r2,a
   1C96                     347 00104$:
   1C96 D5 F0 F0            348 	djnz	b,00103$
                            349 ;	genAnd
   1C99 EB                  350 	mov	a,r3
   1C9A 52 04               351 	anl	ar4,a
   1C9C E8                  352 	mov	a,r0
   1C9D 52 05               353 	anl	ar5,a
   1C9F E9                  354 	mov	a,r1
   1CA0 52 06               355 	anl	ar6,a
   1CA2 EA                  356 	mov	a,r2
   1CA3 52 07               357 	anl	ar7,a
                            358 ;	genOr
   1CA5 90 05 AC            359 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   1CA8 EC                  360 	mov	a,r4
   1CA9 45 2F               361 	orl	a,_HW_set_32bit_reg_field_sloc1_1_0
   1CAB F0                  362 	movx	@dptr,a
   1CAC ED                  363 	mov	a,r5
   1CAD 45 30               364 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 1)
   1CAF A3                  365 	inc	dptr
   1CB0 F0                  366 	movx	@dptr,a
   1CB1 EE                  367 	mov	a,r6
   1CB2 45 31               368 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 2)
   1CB4 A3                  369 	inc	dptr
   1CB5 F0                  370 	movx	@dptr,a
   1CB6 EF                  371 	mov	a,r7
   1CB7 45 32               372 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 3)
   1CB9 A3                  373 	inc	dptr
   1CBA F0                  374 	movx	@dptr,a
                    00B8    375 	C$hw_reg_access.c$27$1$1 ==.
                            376 ;	../hal/Core8051s/SDCC/hw_reg_access.c:27: HW_set_32bit_reg(reg_addr, temp32);
                            377 ;	genAssign
   1CBB 90 05 AC            378 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   1CBE E0                  379 	movx	a,@dptr
   1CBF FA                  380 	mov	r2,a
   1CC0 A3                  381 	inc	dptr
   1CC1 E0                  382 	movx	a,@dptr
   1CC2 FB                  383 	mov	r3,a
   1CC3 A3                  384 	inc	dptr
   1CC4 E0                  385 	movx	a,@dptr
   1CC5 FC                  386 	mov	r4,a
   1CC6 A3                  387 	inc	dptr
   1CC7 E0                  388 	movx	a,@dptr
   1CC8 FD                  389 	mov	r5,a
                            390 ;	genAssign
   1CC9 90 05 9D            391 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   1CCC EA                  392 	mov	a,r2
   1CCD F0                  393 	movx	@dptr,a
   1CCE A3                  394 	inc	dptr
   1CCF EB                  395 	mov	a,r3
   1CD0 F0                  396 	movx	@dptr,a
   1CD1 A3                  397 	inc	dptr
   1CD2 EC                  398 	mov	a,r4
   1CD3 F0                  399 	movx	@dptr,a
   1CD4 A3                  400 	inc	dptr
   1CD5 ED                  401 	mov	a,r5
   1CD6 F0                  402 	movx	@dptr,a
                            403 ;	genCall
   1CD7 85 2D 82            404 	mov	dpl,_HW_set_32bit_reg_field_sloc0_1_0
   1CDA 85 2E 83            405 	mov	dph,(_HW_set_32bit_reg_field_sloc0_1_0 + 1)
   1CDD 12 1B AB            406 	lcall	_HW_set_32bit_reg
   1CE0                     407 00101$:
                    00DD    408 	C$hw_reg_access.c$28$1$1 ==.
                    00DD    409 	XG$HW_set_32bit_reg_field$0$0 ==.
   1CE0 22                  410 	ret
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
   1CE1                     425 _HW_get_32bit_reg_field:
                            426 ;	genReceive
   1CE1 AA 83               427 	mov	r2,dph
   1CE3 E5 82               428 	mov	a,dpl
   1CE5 90 05 B5            429 	mov	dptr,#_HW_get_32bit_reg_field_reg_addr_1_1
   1CE8 F0                  430 	movx	@dptr,a
   1CE9 A3                  431 	inc	dptr
   1CEA EA                  432 	mov	a,r2
   1CEB F0                  433 	movx	@dptr,a
                    00E9    434 	C$hw_reg_access.c$42$1$1 ==.
                            435 ;	../hal/Core8051s/SDCC/hw_reg_access.c:42: temp32 = (HW_get_32bit_reg(reg_addr) & mask) >> shift;
                            436 ;	genAssign
   1CEC 90 05 B5            437 	mov	dptr,#_HW_get_32bit_reg_field_reg_addr_1_1
   1CEF E0                  438 	movx	a,@dptr
   1CF0 FA                  439 	mov	r2,a
   1CF1 A3                  440 	inc	dptr
   1CF2 E0                  441 	movx	a,@dptr
   1CF3 FB                  442 	mov	r3,a
                            443 ;	genCall
   1CF4 8A 82               444 	mov	dpl,r2
   1CF6 8B 83               445 	mov	dph,r3
   1CF8 12 1B 9F            446 	lcall	_HW_get_32bit_reg
   1CFB AA 82               447 	mov	r2,dpl
   1CFD AB 83               448 	mov	r3,dph
   1CFF AC F0               449 	mov	r4,b
   1D01 FD                  450 	mov	r5,a
                            451 ;	genAssign
   1D02 90 05 B1            452 	mov	dptr,#_HW_get_32bit_reg_field_PARM_3
   1D05 E0                  453 	movx	a,@dptr
   1D06 FE                  454 	mov	r6,a
   1D07 A3                  455 	inc	dptr
   1D08 E0                  456 	movx	a,@dptr
   1D09 FF                  457 	mov	r7,a
   1D0A A3                  458 	inc	dptr
   1D0B E0                  459 	movx	a,@dptr
   1D0C F8                  460 	mov	r0,a
   1D0D A3                  461 	inc	dptr
   1D0E E0                  462 	movx	a,@dptr
   1D0F F9                  463 	mov	r1,a
                            464 ;	genAnd
   1D10 EE                  465 	mov	a,r6
   1D11 52 02               466 	anl	ar2,a
   1D13 EF                  467 	mov	a,r7
   1D14 52 03               468 	anl	ar3,a
   1D16 E8                  469 	mov	a,r0
   1D17 52 04               470 	anl	ar4,a
   1D19 E9                  471 	mov	a,r1
   1D1A 52 05               472 	anl	ar5,a
                            473 ;	genAssign
   1D1C 90 05 B0            474 	mov	dptr,#_HW_get_32bit_reg_field_PARM_2
   1D1F E0                  475 	movx	a,@dptr
   1D20 FE                  476 	mov	r6,a
                            477 ;	genRightShift
   1D21 8E F0               478 	mov	b,r6
   1D23 05 F0               479 	inc	b
   1D25 80 0D               480 	sjmp	00104$
   1D27                     481 00103$:
   1D27 C3                  482 	clr	c
   1D28 ED                  483 	mov	a,r5
   1D29 13                  484 	rrc	a
   1D2A FD                  485 	mov	r5,a
   1D2B EC                  486 	mov	a,r4
   1D2C 13                  487 	rrc	a
   1D2D FC                  488 	mov	r4,a
   1D2E EB                  489 	mov	a,r3
   1D2F 13                  490 	rrc	a
   1D30 FB                  491 	mov	r3,a
   1D31 EA                  492 	mov	a,r2
   1D32 13                  493 	rrc	a
   1D33 FA                  494 	mov	r2,a
   1D34                     495 00104$:
   1D34 D5 F0 F0            496 	djnz	b,00103$
                            497 ;	genAssign
   1D37 90 05 B7            498 	mov	dptr,#_HW_get_32bit_reg_field_temp32_1_1
   1D3A EA                  499 	mov	a,r2
   1D3B F0                  500 	movx	@dptr,a
   1D3C A3                  501 	inc	dptr
   1D3D EB                  502 	mov	a,r3
   1D3E F0                  503 	movx	@dptr,a
   1D3F A3                  504 	inc	dptr
   1D40 EC                  505 	mov	a,r4
   1D41 F0                  506 	movx	@dptr,a
   1D42 A3                  507 	inc	dptr
   1D43 ED                  508 	mov	a,r5
   1D44 F0                  509 	movx	@dptr,a
                    0142    510 	C$hw_reg_access.c$43$1$1 ==.
                            511 ;	../hal/Core8051s/SDCC/hw_reg_access.c:43: return temp32;
                            512 ;	genAssign
   1D45 90 05 B7            513 	mov	dptr,#_HW_get_32bit_reg_field_temp32_1_1
   1D48 E0                  514 	movx	a,@dptr
   1D49 FA                  515 	mov	r2,a
   1D4A A3                  516 	inc	dptr
   1D4B E0                  517 	movx	a,@dptr
   1D4C FB                  518 	mov	r3,a
   1D4D A3                  519 	inc	dptr
   1D4E E0                  520 	movx	a,@dptr
   1D4F FC                  521 	mov	r4,a
   1D50 A3                  522 	inc	dptr
   1D51 E0                  523 	movx	a,@dptr
   1D52 FD                  524 	mov	r5,a
                            525 ;	genRet
   1D53 8A 82               526 	mov	dpl,r2
   1D55 8B 83               527 	mov	dph,r3
   1D57 8C F0               528 	mov	b,r4
   1D59 ED                  529 	mov	a,r5
   1D5A                     530 00101$:
                    0157    531 	C$hw_reg_access.c$44$1$1 ==.
                    0157    532 	XG$HW_get_32bit_reg_field$0$0 ==.
   1D5A 22                  533 	ret
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
   1D5B                     550 _HW_set_16bit_reg_field:
                            551 ;	genReceive
   1D5B AA 83               552 	mov	r2,dph
   1D5D E5 82               553 	mov	a,dpl
   1D5F 90 05 C0            554 	mov	dptr,#_HW_set_16bit_reg_field_reg_addr_1_1
   1D62 F0                  555 	movx	@dptr,a
   1D63 A3                  556 	inc	dptr
   1D64 EA                  557 	mov	a,r2
   1D65 F0                  558 	movx	@dptr,a
                    0163    559 	C$hw_reg_access.c$58$1$1 ==.
                            560 ;	../hal/Core8051s/SDCC/hw_reg_access.c:58: temp16 = HW_get_16bit_reg( reg_addr );
                            561 ;	genAssign
   1D66 90 05 C0            562 	mov	dptr,#_HW_set_16bit_reg_field_reg_addr_1_1
   1D69 E0                  563 	movx	a,@dptr
   1D6A FA                  564 	mov	r2,a
   1D6B A3                  565 	inc	dptr
   1D6C E0                  566 	movx	a,@dptr
   1D6D FB                  567 	mov	r3,a
                            568 ;	genCall
   1D6E 8A 82               569 	mov	dpl,r2
   1D70 8B 83               570 	mov	dph,r3
   1D72 C0 02               571 	push	ar2
   1D74 C0 03               572 	push	ar3
   1D76 12 1B DB            573 	lcall	_HW_get_16bit_reg
   1D79 E5 82               574 	mov	a,dpl
   1D7B 85 83 F0            575 	mov	b,dph
   1D7E D0 03               576 	pop	ar3
   1D80 D0 02               577 	pop	ar2
                            578 ;	genAssign
   1D82 90 05 C2            579 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   1D85 F0                  580 	movx	@dptr,a
   1D86 A3                  581 	inc	dptr
   1D87 E5 F0               582 	mov	a,b
   1D89 F0                  583 	movx	@dptr,a
                    0187    584 	C$hw_reg_access.c$59$1$1 ==.
                            585 ;	../hal/Core8051s/SDCC/hw_reg_access.c:59: temp16 = ((temp16  & ~mask) | (((in_value16) << shift) & mask));
                            586 ;	genAssign
   1D8A 90 05 BC            587 	mov	dptr,#_HW_set_16bit_reg_field_PARM_3
   1D8D E0                  588 	movx	a,@dptr
   1D8E FC                  589 	mov	r4,a
   1D8F A3                  590 	inc	dptr
   1D90 E0                  591 	movx	a,@dptr
   1D91 FD                  592 	mov	r5,a
                            593 ;	genCpl
   1D92 EC                  594 	mov	a,r4
   1D93 F4                  595 	cpl	a
   1D94 FE                  596 	mov	r6,a
   1D95 ED                  597 	mov	a,r5
   1D96 F4                  598 	cpl	a
   1D97 FF                  599 	mov	r7,a
                            600 ;	genAssign
   1D98 90 05 C2            601 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   1D9B E0                  602 	movx	a,@dptr
   1D9C F8                  603 	mov	r0,a
   1D9D A3                  604 	inc	dptr
   1D9E E0                  605 	movx	a,@dptr
   1D9F F9                  606 	mov	r1,a
                            607 ;	genAnd
   1DA0 E8                  608 	mov	a,r0
   1DA1 52 06               609 	anl	ar6,a
   1DA3 E9                  610 	mov	a,r1
   1DA4 52 07               611 	anl	ar7,a
                            612 ;	genAssign
   1DA6 90 05 BB            613 	mov	dptr,#_HW_set_16bit_reg_field_PARM_2
   1DA9 E0                  614 	movx	a,@dptr
   1DAA F5 34               615 	mov	_HW_set_16bit_reg_field_sloc0_1_0,a
                            616 ;	genAssign
   1DAC 90 05 BE            617 	mov	dptr,#_HW_set_16bit_reg_field_PARM_4
   1DAF E0                  618 	movx	a,@dptr
   1DB0 F9                  619 	mov	r1,a
   1DB1 A3                  620 	inc	dptr
   1DB2 E0                  621 	movx	a,@dptr
   1DB3 F8                  622 	mov	r0,a
                            623 ;	genLeftShift
   1DB4 85 34 F0            624 	mov	b,_HW_set_16bit_reg_field_sloc0_1_0
   1DB7 05 F0               625 	inc	b
   1DB9 80 07               626 	sjmp	00104$
   1DBB                     627 00103$:
   1DBB E9                  628 	mov	a,r1
   1DBC 25 E0               629 	add	a,acc
   1DBE F9                  630 	mov	r1,a
   1DBF E8                  631 	mov	a,r0
   1DC0 33                  632 	rlc	a
   1DC1 F8                  633 	mov	r0,a
   1DC2                     634 00104$:
   1DC2 D5 F0 F6            635 	djnz	b,00103$
                            636 ;	genAnd
   1DC5 E9                  637 	mov	a,r1
   1DC6 52 04               638 	anl	ar4,a
   1DC8 E8                  639 	mov	a,r0
   1DC9 52 05               640 	anl	ar5,a
                            641 ;	genOr
   1DCB 90 05 C2            642 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   1DCE EC                  643 	mov	a,r4
   1DCF 4E                  644 	orl	a,r6
   1DD0 F0                  645 	movx	@dptr,a
   1DD1 ED                  646 	mov	a,r5
   1DD2 4F                  647 	orl	a,r7
   1DD3 A3                  648 	inc	dptr
   1DD4 F0                  649 	movx	@dptr,a
                    01D2    650 	C$hw_reg_access.c$60$1$1 ==.
                            651 ;	../hal/Core8051s/SDCC/hw_reg_access.c:60: HW_set_16bit_reg(reg_addr, temp16);
                            652 ;	genAssign
   1DD5 90 05 C2            653 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   1DD8 E0                  654 	movx	a,@dptr
   1DD9 FC                  655 	mov	r4,a
   1DDA A3                  656 	inc	dptr
   1DDB E0                  657 	movx	a,@dptr
   1DDC FD                  658 	mov	r5,a
                            659 ;	genAssign
   1DDD 90 05 9A            660 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   1DE0 EC                  661 	mov	a,r4
   1DE1 F0                  662 	movx	@dptr,a
   1DE2 A3                  663 	inc	dptr
   1DE3 ED                  664 	mov	a,r5
   1DE4 F0                  665 	movx	@dptr,a
                            666 ;	genCall
   1DE5 8A 82               667 	mov	dpl,r2
   1DE7 8B 83               668 	mov	dph,r3
   1DE9 12 1B C7            669 	lcall	_HW_set_16bit_reg
   1DEC                     670 00101$:
                    01E9    671 	C$hw_reg_access.c$61$1$1 ==.
                    01E9    672 	XG$HW_set_16bit_reg_field$0$0 ==.
   1DEC 22                  673 	ret
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
   1DED                     688 _HW_get_16bit_reg_field:
                            689 ;	genReceive
   1DED AA 83               690 	mov	r2,dph
   1DEF E5 82               691 	mov	a,dpl
   1DF1 90 05 C7            692 	mov	dptr,#_HW_get_16bit_reg_field_reg_addr_1_1
   1DF4 F0                  693 	movx	@dptr,a
   1DF5 A3                  694 	inc	dptr
   1DF6 EA                  695 	mov	a,r2
   1DF7 F0                  696 	movx	@dptr,a
                    01F5    697 	C$hw_reg_access.c$74$1$1 ==.
                            698 ;	../hal/Core8051s/SDCC/hw_reg_access.c:74: temp16 = (HW_get_16bit_reg(reg_addr) & mask) >> shift;
                            699 ;	genAssign
   1DF8 90 05 C7            700 	mov	dptr,#_HW_get_16bit_reg_field_reg_addr_1_1
   1DFB E0                  701 	movx	a,@dptr
   1DFC FA                  702 	mov	r2,a
   1DFD A3                  703 	inc	dptr
   1DFE E0                  704 	movx	a,@dptr
   1DFF FB                  705 	mov	r3,a
                            706 ;	genCall
   1E00 8A 82               707 	mov	dpl,r2
   1E02 8B 83               708 	mov	dph,r3
   1E04 12 1B DB            709 	lcall	_HW_get_16bit_reg
   1E07 AA 82               710 	mov	r2,dpl
   1E09 AB 83               711 	mov	r3,dph
                            712 ;	genAssign
   1E0B 90 05 C5            713 	mov	dptr,#_HW_get_16bit_reg_field_PARM_3
   1E0E E0                  714 	movx	a,@dptr
   1E0F FC                  715 	mov	r4,a
   1E10 A3                  716 	inc	dptr
   1E11 E0                  717 	movx	a,@dptr
   1E12 FD                  718 	mov	r5,a
                            719 ;	genAnd
   1E13 EC                  720 	mov	a,r4
   1E14 52 02               721 	anl	ar2,a
   1E16 ED                  722 	mov	a,r5
   1E17 52 03               723 	anl	ar3,a
                            724 ;	genAssign
   1E19 90 05 C4            725 	mov	dptr,#_HW_get_16bit_reg_field_PARM_2
   1E1C E0                  726 	movx	a,@dptr
   1E1D FC                  727 	mov	r4,a
                            728 ;	genRightShift
   1E1E 8C F0               729 	mov	b,r4
   1E20 05 F0               730 	inc	b
   1E22 80 07               731 	sjmp	00104$
   1E24                     732 00103$:
   1E24 C3                  733 	clr	c
   1E25 EB                  734 	mov	a,r3
   1E26 13                  735 	rrc	a
   1E27 FB                  736 	mov	r3,a
   1E28 EA                  737 	mov	a,r2
   1E29 13                  738 	rrc	a
   1E2A FA                  739 	mov	r2,a
   1E2B                     740 00104$:
   1E2B D5 F0 F6            741 	djnz	b,00103$
                            742 ;	genAssign
   1E2E 90 05 C9            743 	mov	dptr,#_HW_get_16bit_reg_field_temp16_1_1
   1E31 EA                  744 	mov	a,r2
   1E32 F0                  745 	movx	@dptr,a
   1E33 A3                  746 	inc	dptr
   1E34 EB                  747 	mov	a,r3
   1E35 F0                  748 	movx	@dptr,a
                    0233    749 	C$hw_reg_access.c$75$1$1 ==.
                            750 ;	../hal/Core8051s/SDCC/hw_reg_access.c:75: return temp16;
                            751 ;	genAssign
   1E36 90 05 C9            752 	mov	dptr,#_HW_get_16bit_reg_field_temp16_1_1
   1E39 E0                  753 	movx	a,@dptr
   1E3A FA                  754 	mov	r2,a
   1E3B A3                  755 	inc	dptr
   1E3C E0                  756 	movx	a,@dptr
   1E3D FB                  757 	mov	r3,a
                            758 ;	genRet
   1E3E 8A 82               759 	mov	dpl,r2
   1E40 8B 83               760 	mov	dph,r3
   1E42                     761 00101$:
                    023F    762 	C$hw_reg_access.c$76$1$1 ==.
                    023F    763 	XG$HW_get_16bit_reg_field$0$0 ==.
   1E42 22                  764 	ret
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
   1E43                     780 _HW_set_8bit_reg_field:
                            781 ;	genReceive
   1E43 AA 83               782 	mov	r2,dph
   1E45 E5 82               783 	mov	a,dpl
   1E47 90 05 CE            784 	mov	dptr,#_HW_set_8bit_reg_field_reg_addr_1_1
   1E4A F0                  785 	movx	@dptr,a
   1E4B A3                  786 	inc	dptr
   1E4C EA                  787 	mov	a,r2
   1E4D F0                  788 	movx	@dptr,a
                    024B    789 	C$hw_reg_access.c$90$1$1 ==.
                            790 ;	../hal/Core8051s/SDCC/hw_reg_access.c:90: temp8 = HW_get_8bit_reg( reg_addr );
                            791 ;	genAssign
   1E4E 90 05 CE            792 	mov	dptr,#_HW_set_8bit_reg_field_reg_addr_1_1
   1E51 E0                  793 	movx	a,@dptr
   1E52 FA                  794 	mov	r2,a
   1E53 A3                  795 	inc	dptr
   1E54 E0                  796 	movx	a,@dptr
   1E55 FB                  797 	mov	r3,a
                            798 ;	genCall
   1E56 8A 82               799 	mov	dpl,r2
   1E58 8B 83               800 	mov	dph,r3
   1E5A C0 02               801 	push	ar2
   1E5C C0 03               802 	push	ar3
   1E5E 12 1B F0            803 	lcall	_HW_get_8bit_reg
   1E61 E5 82               804 	mov	a,dpl
   1E63 D0 03               805 	pop	ar3
   1E65 D0 02               806 	pop	ar2
                            807 ;	genAssign
   1E67 90 05 D0            808 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   1E6A F0                  809 	movx	@dptr,a
                    0268    810 	C$hw_reg_access.c$91$1$1 ==.
                            811 ;	../hal/Core8051s/SDCC/hw_reg_access.c:91: temp8 = ((temp8  & ~mask) | (((value) << shift) & mask));
                            812 ;	genAssign
   1E6B 90 05 CC            813 	mov	dptr,#_HW_set_8bit_reg_field_PARM_3
   1E6E E0                  814 	movx	a,@dptr
   1E6F FC                  815 	mov	r4,a
                            816 ;	genCpl
   1E70 EC                  817 	mov	a,r4
   1E71 F4                  818 	cpl	a
   1E72 FD                  819 	mov	r5,a
                            820 ;	genAssign
   1E73 90 05 D0            821 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   1E76 E0                  822 	movx	a,@dptr
   1E77 FE                  823 	mov	r6,a
                            824 ;	genAnd
   1E78 EE                  825 	mov	a,r6
   1E79 52 05               826 	anl	ar5,a
                            827 ;	genAssign
   1E7B 90 05 CB            828 	mov	dptr,#_HW_set_8bit_reg_field_PARM_2
   1E7E E0                  829 	movx	a,@dptr
   1E7F FE                  830 	mov	r6,a
                            831 ;	genAssign
   1E80 90 05 CD            832 	mov	dptr,#_HW_set_8bit_reg_field_PARM_4
   1E83 E0                  833 	movx	a,@dptr
   1E84 FF                  834 	mov	r7,a
                            835 ;	genLeftShift
   1E85 8E F0               836 	mov	b,r6
   1E87 05 F0               837 	inc	b
   1E89 EF                  838 	mov	a,r7
   1E8A 80 02               839 	sjmp	00105$
   1E8C                     840 00103$:
   1E8C 25 E0               841 	add	a,acc
   1E8E                     842 00105$:
   1E8E D5 F0 FB            843 	djnz	b,00103$
                            844 ;	genAnd
   1E91 5C                  845 	anl	a,r4
                            846 ;	genOr
   1E92 90 05 D0            847 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   1E95 4D                  848 	orl	a,r5
   1E96 F0                  849 	movx	@dptr,a
                    0294    850 	C$hw_reg_access.c$92$1$1 ==.
                            851 ;	../hal/Core8051s/SDCC/hw_reg_access.c:92: HW_set_8bit_reg(reg_addr, temp8);
                            852 ;	genAssign
   1E97 90 05 D0            853 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   1E9A E0                  854 	movx	a,@dptr
   1E9B FC                  855 	mov	r4,a
                            856 ;	genAssign
   1E9C 90 05 9C            857 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   1E9F EC                  858 	mov	a,r4
   1EA0 F0                  859 	movx	@dptr,a
                            860 ;	genCall
   1EA1 8A 82               861 	mov	dpl,r2
   1EA3 8B 83               862 	mov	dph,r3
   1EA5 12 1B E2            863 	lcall	_HW_set_8bit_reg
   1EA8                     864 00101$:
                    02A5    865 	C$hw_reg_access.c$93$1$1 ==.
                    02A5    866 	XG$HW_set_8bit_reg_field$0$0 ==.
   1EA8 22                  867 	ret
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
   1EA9                     882 _HW_get_8bit_reg_field:
                            883 ;	genReceive
   1EA9 AA 83               884 	mov	r2,dph
   1EAB E5 82               885 	mov	a,dpl
   1EAD 90 05 D3            886 	mov	dptr,#_HW_get_8bit_reg_field_reg_addr_1_1
   1EB0 F0                  887 	movx	@dptr,a
   1EB1 A3                  888 	inc	dptr
   1EB2 EA                  889 	mov	a,r2
   1EB3 F0                  890 	movx	@dptr,a
                    02B1    891 	C$hw_reg_access.c$106$1$1 ==.
                            892 ;	../hal/Core8051s/SDCC/hw_reg_access.c:106: temp8 = (HW_get_8bit_reg(reg_addr) & mask) >> shift;
                            893 ;	genAssign
   1EB4 90 05 D3            894 	mov	dptr,#_HW_get_8bit_reg_field_reg_addr_1_1
   1EB7 E0                  895 	movx	a,@dptr
   1EB8 FA                  896 	mov	r2,a
   1EB9 A3                  897 	inc	dptr
   1EBA E0                  898 	movx	a,@dptr
   1EBB FB                  899 	mov	r3,a
                            900 ;	genCall
   1EBC 8A 82               901 	mov	dpl,r2
   1EBE 8B 83               902 	mov	dph,r3
   1EC0 12 1B F0            903 	lcall	_HW_get_8bit_reg
   1EC3 AA 82               904 	mov	r2,dpl
                            905 ;	genAssign
   1EC5 90 05 D2            906 	mov	dptr,#_HW_get_8bit_reg_field_PARM_3
   1EC8 E0                  907 	movx	a,@dptr
   1EC9 FB                  908 	mov	r3,a
                            909 ;	genAnd
   1ECA EB                  910 	mov	a,r3
   1ECB 52 02               911 	anl	ar2,a
                            912 ;	genAssign
   1ECD 90 05 D1            913 	mov	dptr,#_HW_get_8bit_reg_field_PARM_2
   1ED0 E0                  914 	movx	a,@dptr
   1ED1 FB                  915 	mov	r3,a
                            916 ;	genRightShift
   1ED2 8B F0               917 	mov	b,r3
   1ED4 05 F0               918 	inc	b
   1ED6 EA                  919 	mov	a,r2
   1ED7 80 02               920 	sjmp	00104$
   1ED9                     921 00103$:
   1ED9 C3                  922 	clr	c
   1EDA 13                  923 	rrc	a
   1EDB                     924 00104$:
   1EDB D5 F0 FB            925 	djnz	b,00103$
                            926 ;	genAssign
   1EDE 90 05 D5            927 	mov	dptr,#_HW_get_8bit_reg_field_temp8_1_1
   1EE1 F0                  928 	movx	@dptr,a
                    02DF    929 	C$hw_reg_access.c$107$1$1 ==.
                            930 ;	../hal/Core8051s/SDCC/hw_reg_access.c:107: return temp8;
                            931 ;	genAssign
   1EE2 90 05 D5            932 	mov	dptr,#_HW_get_8bit_reg_field_temp8_1_1
   1EE5 E0                  933 	movx	a,@dptr
   1EE6 FA                  934 	mov	r2,a
                            935 ;	genRet
   1EE7 8A 82               936 	mov	dpl,r2
   1EE9                     937 00101$:
                    02E6    938 	C$hw_reg_access.c$108$1$1 ==.
                    02E6    939 	XG$HW_get_8bit_reg_field$0$0 ==.
   1EE9 22                  940 	ret
                            941 	.area CSEG    (CODE)
                            942 	.area CONST   (CODE)
                            943 	.area XINIT   (CODE)
                            944 	.area CABS    (ABS,CODE)
