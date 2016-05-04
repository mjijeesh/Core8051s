                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:51:53 2016
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
   0050                      88 _HW_set_32bit_reg_field_PARM_2:
   0050                      89 	.ds 1
                    0001     90 LHW_set_32bit_reg_field$mask$1$1==.
   0051                      91 _HW_set_32bit_reg_field_PARM_3:
   0051                      92 	.ds 4
                    0005     93 LHW_set_32bit_reg_field$value$1$1==.
   0055                      94 _HW_set_32bit_reg_field_PARM_4:
   0055                      95 	.ds 4
                    0009     96 LHW_set_32bit_reg_field$reg_addr$1$1==.
   0059                      97 _HW_set_32bit_reg_field_reg_addr_1_1:
   0059                      98 	.ds 2
                    000B     99 LHW_set_32bit_reg_field$temp32$1$1==.
   005B                     100 _HW_set_32bit_reg_field_temp32_1_1:
   005B                     101 	.ds 4
                    000F    102 LHW_get_32bit_reg_field$shift$1$1==.
   005F                     103 _HW_get_32bit_reg_field_PARM_2:
   005F                     104 	.ds 1
                    0010    105 LHW_get_32bit_reg_field$mask$1$1==.
   0060                     106 _HW_get_32bit_reg_field_PARM_3:
   0060                     107 	.ds 4
                    0014    108 LHW_get_32bit_reg_field$reg_addr$1$1==.
   0064                     109 _HW_get_32bit_reg_field_reg_addr_1_1:
   0064                     110 	.ds 2
                    0016    111 LHW_get_32bit_reg_field$temp32$1$1==.
   0066                     112 _HW_get_32bit_reg_field_temp32_1_1:
   0066                     113 	.ds 4
                    001A    114 LHW_set_16bit_reg_field$shift$1$1==.
   006A                     115 _HW_set_16bit_reg_field_PARM_2:
   006A                     116 	.ds 1
                    001B    117 LHW_set_16bit_reg_field$mask$1$1==.
   006B                     118 _HW_set_16bit_reg_field_PARM_3:
   006B                     119 	.ds 2
                    001D    120 LHW_set_16bit_reg_field$in_value16$1$1==.
   006D                     121 _HW_set_16bit_reg_field_PARM_4:
   006D                     122 	.ds 2
                    001F    123 LHW_set_16bit_reg_field$reg_addr$1$1==.
   006F                     124 _HW_set_16bit_reg_field_reg_addr_1_1:
   006F                     125 	.ds 2
                    0021    126 LHW_set_16bit_reg_field$temp16$1$1==.
   0071                     127 _HW_set_16bit_reg_field_temp16_1_1:
   0071                     128 	.ds 2
                    0023    129 LHW_get_16bit_reg_field$shift$1$1==.
   0073                     130 _HW_get_16bit_reg_field_PARM_2:
   0073                     131 	.ds 1
                    0024    132 LHW_get_16bit_reg_field$mask$1$1==.
   0074                     133 _HW_get_16bit_reg_field_PARM_3:
   0074                     134 	.ds 2
                    0026    135 LHW_get_16bit_reg_field$reg_addr$1$1==.
   0076                     136 _HW_get_16bit_reg_field_reg_addr_1_1:
   0076                     137 	.ds 2
                    0028    138 LHW_get_16bit_reg_field$temp16$1$1==.
   0078                     139 _HW_get_16bit_reg_field_temp16_1_1:
   0078                     140 	.ds 2
                    002A    141 LHW_set_8bit_reg_field$shift$1$1==.
   007A                     142 _HW_set_8bit_reg_field_PARM_2:
   007A                     143 	.ds 1
                    002B    144 LHW_set_8bit_reg_field$mask$1$1==.
   007B                     145 _HW_set_8bit_reg_field_PARM_3:
   007B                     146 	.ds 1
                    002C    147 LHW_set_8bit_reg_field$value$1$1==.
   007C                     148 _HW_set_8bit_reg_field_PARM_4:
   007C                     149 	.ds 1
                    002D    150 LHW_set_8bit_reg_field$reg_addr$1$1==.
   007D                     151 _HW_set_8bit_reg_field_reg_addr_1_1:
   007D                     152 	.ds 2
                    002F    153 LHW_set_8bit_reg_field$temp8$1$1==.
   007F                     154 _HW_set_8bit_reg_field_temp8_1_1:
   007F                     155 	.ds 1
                    0030    156 LHW_get_8bit_reg_field$shift$1$1==.
   0080                     157 _HW_get_8bit_reg_field_PARM_2:
   0080                     158 	.ds 1
                    0031    159 LHW_get_8bit_reg_field$mask$1$1==.
   0081                     160 _HW_get_8bit_reg_field_PARM_3:
   0081                     161 	.ds 1
                    0032    162 LHW_get_8bit_reg_field$reg_addr$1$1==.
   0082                     163 _HW_get_8bit_reg_field_reg_addr_1_1:
   0082                     164 	.ds 2
                    0034    165 LHW_get_8bit_reg_field$temp8$1$1==.
   0084                     166 _HW_get_8bit_reg_field_temp8_1_1:
   0084                     167 	.ds 1
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
   08DA                     216 _HW_set_32bit_reg_field:
                    0002    217 	ar2 = 0x02
                    0003    218 	ar3 = 0x03
                    0004    219 	ar4 = 0x04
                    0005    220 	ar5 = 0x05
                    0006    221 	ar6 = 0x06
                    0007    222 	ar7 = 0x07
                    0000    223 	ar0 = 0x00
                    0001    224 	ar1 = 0x01
                            225 ;	genReceive
   08DA AA 83               226 	mov	r2,dph
   08DC E5 82               227 	mov	a,dpl
   08DE 90 00 59            228 	mov	dptr,#_HW_set_32bit_reg_field_reg_addr_1_1
   08E1 F0                  229 	movx	@dptr,a
   08E2 A3                  230 	inc	dptr
   08E3 EA                  231 	mov	a,r2
   08E4 F0                  232 	movx	@dptr,a
                    000B    233 	C$hw_reg_access.c$25$1$1 ==.
                            234 ;	../hal/Core8051s/SDCC/hw_reg_access.c:25: temp32 = HW_get_32bit_reg( reg_addr );
                            235 ;	genAssign
   08E5 90 00 59            236 	mov	dptr,#_HW_set_32bit_reg_field_reg_addr_1_1
   08E8 E0                  237 	movx	a,@dptr
   08E9 F5 18               238 	mov	_HW_set_32bit_reg_field_sloc0_1_0,a
   08EB A3                  239 	inc	dptr
   08EC E0                  240 	movx	a,@dptr
   08ED F5 19               241 	mov	(_HW_set_32bit_reg_field_sloc0_1_0 + 1),a
                            242 ;	genCall
   08EF 85 18 82            243 	mov	dpl,_HW_set_32bit_reg_field_sloc0_1_0
   08F2 85 19 83            244 	mov	dph,(_HW_set_32bit_reg_field_sloc0_1_0 + 1)
   08F5 12 08 76            245 	lcall	_HW_get_32bit_reg
   08F8 AC 82               246 	mov	r4,dpl
   08FA AD 83               247 	mov	r5,dph
   08FC AE F0               248 	mov	r6,b
   08FE FF                  249 	mov	r7,a
                            250 ;	genAssign
   08FF 90 00 5B            251 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   0902 EC                  252 	mov	a,r4
   0903 F0                  253 	movx	@dptr,a
   0904 A3                  254 	inc	dptr
   0905 ED                  255 	mov	a,r5
   0906 F0                  256 	movx	@dptr,a
   0907 A3                  257 	inc	dptr
   0908 EE                  258 	mov	a,r6
   0909 F0                  259 	movx	@dptr,a
   090A A3                  260 	inc	dptr
   090B EF                  261 	mov	a,r7
   090C F0                  262 	movx	@dptr,a
                    0033    263 	C$hw_reg_access.c$26$1$1 ==.
                            264 ;	../hal/Core8051s/SDCC/hw_reg_access.c:26: temp32 = ((temp32 & ~mask) | (((value) << shift) & mask));
                            265 ;	genAssign
   090D 90 00 51            266 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   0910 E0                  267 	movx	a,@dptr
   0911 FC                  268 	mov	r4,a
   0912 A3                  269 	inc	dptr
   0913 E0                  270 	movx	a,@dptr
   0914 FD                  271 	mov	r5,a
   0915 A3                  272 	inc	dptr
   0916 E0                  273 	movx	a,@dptr
   0917 FE                  274 	mov	r6,a
   0918 A3                  275 	inc	dptr
   0919 E0                  276 	movx	a,@dptr
   091A FF                  277 	mov	r7,a
                            278 ;	genCpl
   091B EC                  279 	mov	a,r4
   091C F4                  280 	cpl	a
   091D F5 1A               281 	mov	_HW_set_32bit_reg_field_sloc1_1_0,a
   091F ED                  282 	mov	a,r5
   0920 F4                  283 	cpl	a
   0921 F5 1B               284 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 1),a
   0923 EE                  285 	mov	a,r6
   0924 F4                  286 	cpl	a
   0925 F5 1C               287 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 2),a
   0927 EF                  288 	mov	a,r7
   0928 F4                  289 	cpl	a
   0929 F5 1D               290 	mov	(_HW_set_32bit_reg_field_sloc1_1_0 + 3),a
                            291 ;	genAssign
   092B 90 00 5B            292 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   092E E0                  293 	movx	a,@dptr
   092F FA                  294 	mov	r2,a
   0930 A3                  295 	inc	dptr
   0931 E0                  296 	movx	a,@dptr
   0932 FB                  297 	mov	r3,a
   0933 A3                  298 	inc	dptr
   0934 E0                  299 	movx	a,@dptr
   0935 F8                  300 	mov	r0,a
   0936 A3                  301 	inc	dptr
   0937 E0                  302 	movx	a,@dptr
   0938 F9                  303 	mov	r1,a
                            304 ;	genAnd
   0939 EA                  305 	mov	a,r2
   093A 52 1A               306 	anl	_HW_set_32bit_reg_field_sloc1_1_0,a
   093C EB                  307 	mov	a,r3
   093D 52 1B               308 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 1),a
   093F E8                  309 	mov	a,r0
   0940 52 1C               310 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 2),a
   0942 E9                  311 	mov	a,r1
   0943 52 1D               312 	anl	(_HW_set_32bit_reg_field_sloc1_1_0 + 3),a
                            313 ;	genAssign
   0945 90 00 50            314 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   0948 E0                  315 	movx	a,@dptr
   0949 F5 1E               316 	mov	_HW_set_32bit_reg_field_sloc2_1_0,a
                            317 ;	genAssign
   094B 90 00 55            318 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   094E E0                  319 	movx	a,@dptr
   094F FB                  320 	mov	r3,a
   0950 A3                  321 	inc	dptr
   0951 E0                  322 	movx	a,@dptr
   0952 F8                  323 	mov	r0,a
   0953 A3                  324 	inc	dptr
   0954 E0                  325 	movx	a,@dptr
   0955 F9                  326 	mov	r1,a
   0956 A3                  327 	inc	dptr
   0957 E0                  328 	movx	a,@dptr
   0958 FA                  329 	mov	r2,a
                            330 ;	genLeftShift
   0959 85 1E F0            331 	mov	b,_HW_set_32bit_reg_field_sloc2_1_0
   095C 05 F0               332 	inc	b
   095E 80 0D               333 	sjmp	00104$
   0960                     334 00103$:
   0960 EB                  335 	mov	a,r3
   0961 25 E0               336 	add	a,acc
   0963 FB                  337 	mov	r3,a
   0964 E8                  338 	mov	a,r0
   0965 33                  339 	rlc	a
   0966 F8                  340 	mov	r0,a
   0967 E9                  341 	mov	a,r1
   0968 33                  342 	rlc	a
   0969 F9                  343 	mov	r1,a
   096A EA                  344 	mov	a,r2
   096B 33                  345 	rlc	a
   096C FA                  346 	mov	r2,a
   096D                     347 00104$:
   096D D5 F0 F0            348 	djnz	b,00103$
                            349 ;	genAnd
   0970 EB                  350 	mov	a,r3
   0971 52 04               351 	anl	ar4,a
   0973 E8                  352 	mov	a,r0
   0974 52 05               353 	anl	ar5,a
   0976 E9                  354 	mov	a,r1
   0977 52 06               355 	anl	ar6,a
   0979 EA                  356 	mov	a,r2
   097A 52 07               357 	anl	ar7,a
                            358 ;	genOr
   097C 90 00 5B            359 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   097F EC                  360 	mov	a,r4
   0980 45 1A               361 	orl	a,_HW_set_32bit_reg_field_sloc1_1_0
   0982 F0                  362 	movx	@dptr,a
   0983 ED                  363 	mov	a,r5
   0984 45 1B               364 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 1)
   0986 A3                  365 	inc	dptr
   0987 F0                  366 	movx	@dptr,a
   0988 EE                  367 	mov	a,r6
   0989 45 1C               368 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 2)
   098B A3                  369 	inc	dptr
   098C F0                  370 	movx	@dptr,a
   098D EF                  371 	mov	a,r7
   098E 45 1D               372 	orl	a,(_HW_set_32bit_reg_field_sloc1_1_0 + 3)
   0990 A3                  373 	inc	dptr
   0991 F0                  374 	movx	@dptr,a
                    00B8    375 	C$hw_reg_access.c$27$1$1 ==.
                            376 ;	../hal/Core8051s/SDCC/hw_reg_access.c:27: HW_set_32bit_reg(reg_addr, temp32);
                            377 ;	genAssign
   0992 90 00 5B            378 	mov	dptr,#_HW_set_32bit_reg_field_temp32_1_1
   0995 E0                  379 	movx	a,@dptr
   0996 FA                  380 	mov	r2,a
   0997 A3                  381 	inc	dptr
   0998 E0                  382 	movx	a,@dptr
   0999 FB                  383 	mov	r3,a
   099A A3                  384 	inc	dptr
   099B E0                  385 	movx	a,@dptr
   099C FC                  386 	mov	r4,a
   099D A3                  387 	inc	dptr
   099E E0                  388 	movx	a,@dptr
   099F FD                  389 	mov	r5,a
                            390 ;	genAssign
   09A0 90 00 4C            391 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   09A3 EA                  392 	mov	a,r2
   09A4 F0                  393 	movx	@dptr,a
   09A5 A3                  394 	inc	dptr
   09A6 EB                  395 	mov	a,r3
   09A7 F0                  396 	movx	@dptr,a
   09A8 A3                  397 	inc	dptr
   09A9 EC                  398 	mov	a,r4
   09AA F0                  399 	movx	@dptr,a
   09AB A3                  400 	inc	dptr
   09AC ED                  401 	mov	a,r5
   09AD F0                  402 	movx	@dptr,a
                            403 ;	genCall
   09AE 85 18 82            404 	mov	dpl,_HW_set_32bit_reg_field_sloc0_1_0
   09B1 85 19 83            405 	mov	dph,(_HW_set_32bit_reg_field_sloc0_1_0 + 1)
   09B4 12 08 82            406 	lcall	_HW_set_32bit_reg
   09B7                     407 00101$:
                    00DD    408 	C$hw_reg_access.c$28$1$1 ==.
                    00DD    409 	XG$HW_set_32bit_reg_field$0$0 ==.
   09B7 22                  410 	ret
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
   09B8                     425 _HW_get_32bit_reg_field:
                            426 ;	genReceive
   09B8 AA 83               427 	mov	r2,dph
   09BA E5 82               428 	mov	a,dpl
   09BC 90 00 64            429 	mov	dptr,#_HW_get_32bit_reg_field_reg_addr_1_1
   09BF F0                  430 	movx	@dptr,a
   09C0 A3                  431 	inc	dptr
   09C1 EA                  432 	mov	a,r2
   09C2 F0                  433 	movx	@dptr,a
                    00E9    434 	C$hw_reg_access.c$42$1$1 ==.
                            435 ;	../hal/Core8051s/SDCC/hw_reg_access.c:42: temp32 = (HW_get_32bit_reg(reg_addr) & mask) >> shift;
                            436 ;	genAssign
   09C3 90 00 64            437 	mov	dptr,#_HW_get_32bit_reg_field_reg_addr_1_1
   09C6 E0                  438 	movx	a,@dptr
   09C7 FA                  439 	mov	r2,a
   09C8 A3                  440 	inc	dptr
   09C9 E0                  441 	movx	a,@dptr
   09CA FB                  442 	mov	r3,a
                            443 ;	genCall
   09CB 8A 82               444 	mov	dpl,r2
   09CD 8B 83               445 	mov	dph,r3
   09CF 12 08 76            446 	lcall	_HW_get_32bit_reg
   09D2 AA 82               447 	mov	r2,dpl
   09D4 AB 83               448 	mov	r3,dph
   09D6 AC F0               449 	mov	r4,b
   09D8 FD                  450 	mov	r5,a
                            451 ;	genAssign
   09D9 90 00 60            452 	mov	dptr,#_HW_get_32bit_reg_field_PARM_3
   09DC E0                  453 	movx	a,@dptr
   09DD FE                  454 	mov	r6,a
   09DE A3                  455 	inc	dptr
   09DF E0                  456 	movx	a,@dptr
   09E0 FF                  457 	mov	r7,a
   09E1 A3                  458 	inc	dptr
   09E2 E0                  459 	movx	a,@dptr
   09E3 F8                  460 	mov	r0,a
   09E4 A3                  461 	inc	dptr
   09E5 E0                  462 	movx	a,@dptr
   09E6 F9                  463 	mov	r1,a
                            464 ;	genAnd
   09E7 EE                  465 	mov	a,r6
   09E8 52 02               466 	anl	ar2,a
   09EA EF                  467 	mov	a,r7
   09EB 52 03               468 	anl	ar3,a
   09ED E8                  469 	mov	a,r0
   09EE 52 04               470 	anl	ar4,a
   09F0 E9                  471 	mov	a,r1
   09F1 52 05               472 	anl	ar5,a
                            473 ;	genAssign
   09F3 90 00 5F            474 	mov	dptr,#_HW_get_32bit_reg_field_PARM_2
   09F6 E0                  475 	movx	a,@dptr
   09F7 FE                  476 	mov	r6,a
                            477 ;	genRightShift
   09F8 8E F0               478 	mov	b,r6
   09FA 05 F0               479 	inc	b
   09FC 80 0D               480 	sjmp	00104$
   09FE                     481 00103$:
   09FE C3                  482 	clr	c
   09FF ED                  483 	mov	a,r5
   0A00 13                  484 	rrc	a
   0A01 FD                  485 	mov	r5,a
   0A02 EC                  486 	mov	a,r4
   0A03 13                  487 	rrc	a
   0A04 FC                  488 	mov	r4,a
   0A05 EB                  489 	mov	a,r3
   0A06 13                  490 	rrc	a
   0A07 FB                  491 	mov	r3,a
   0A08 EA                  492 	mov	a,r2
   0A09 13                  493 	rrc	a
   0A0A FA                  494 	mov	r2,a
   0A0B                     495 00104$:
   0A0B D5 F0 F0            496 	djnz	b,00103$
                            497 ;	genAssign
   0A0E 90 00 66            498 	mov	dptr,#_HW_get_32bit_reg_field_temp32_1_1
   0A11 EA                  499 	mov	a,r2
   0A12 F0                  500 	movx	@dptr,a
   0A13 A3                  501 	inc	dptr
   0A14 EB                  502 	mov	a,r3
   0A15 F0                  503 	movx	@dptr,a
   0A16 A3                  504 	inc	dptr
   0A17 EC                  505 	mov	a,r4
   0A18 F0                  506 	movx	@dptr,a
   0A19 A3                  507 	inc	dptr
   0A1A ED                  508 	mov	a,r5
   0A1B F0                  509 	movx	@dptr,a
                    0142    510 	C$hw_reg_access.c$43$1$1 ==.
                            511 ;	../hal/Core8051s/SDCC/hw_reg_access.c:43: return temp32;
                            512 ;	genAssign
   0A1C 90 00 66            513 	mov	dptr,#_HW_get_32bit_reg_field_temp32_1_1
   0A1F E0                  514 	movx	a,@dptr
   0A20 FA                  515 	mov	r2,a
   0A21 A3                  516 	inc	dptr
   0A22 E0                  517 	movx	a,@dptr
   0A23 FB                  518 	mov	r3,a
   0A24 A3                  519 	inc	dptr
   0A25 E0                  520 	movx	a,@dptr
   0A26 FC                  521 	mov	r4,a
   0A27 A3                  522 	inc	dptr
   0A28 E0                  523 	movx	a,@dptr
   0A29 FD                  524 	mov	r5,a
                            525 ;	genRet
   0A2A 8A 82               526 	mov	dpl,r2
   0A2C 8B 83               527 	mov	dph,r3
   0A2E 8C F0               528 	mov	b,r4
   0A30 ED                  529 	mov	a,r5
   0A31                     530 00101$:
                    0157    531 	C$hw_reg_access.c$44$1$1 ==.
                    0157    532 	XG$HW_get_32bit_reg_field$0$0 ==.
   0A31 22                  533 	ret
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
   0A32                     550 _HW_set_16bit_reg_field:
                            551 ;	genReceive
   0A32 AA 83               552 	mov	r2,dph
   0A34 E5 82               553 	mov	a,dpl
   0A36 90 00 6F            554 	mov	dptr,#_HW_set_16bit_reg_field_reg_addr_1_1
   0A39 F0                  555 	movx	@dptr,a
   0A3A A3                  556 	inc	dptr
   0A3B EA                  557 	mov	a,r2
   0A3C F0                  558 	movx	@dptr,a
                    0163    559 	C$hw_reg_access.c$58$1$1 ==.
                            560 ;	../hal/Core8051s/SDCC/hw_reg_access.c:58: temp16 = HW_get_16bit_reg( reg_addr );
                            561 ;	genAssign
   0A3D 90 00 6F            562 	mov	dptr,#_HW_set_16bit_reg_field_reg_addr_1_1
   0A40 E0                  563 	movx	a,@dptr
   0A41 FA                  564 	mov	r2,a
   0A42 A3                  565 	inc	dptr
   0A43 E0                  566 	movx	a,@dptr
   0A44 FB                  567 	mov	r3,a
                            568 ;	genCall
   0A45 8A 82               569 	mov	dpl,r2
   0A47 8B 83               570 	mov	dph,r3
   0A49 C0 02               571 	push	ar2
   0A4B C0 03               572 	push	ar3
   0A4D 12 08 B2            573 	lcall	_HW_get_16bit_reg
   0A50 E5 82               574 	mov	a,dpl
   0A52 85 83 F0            575 	mov	b,dph
   0A55 D0 03               576 	pop	ar3
   0A57 D0 02               577 	pop	ar2
                            578 ;	genAssign
   0A59 90 00 71            579 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   0A5C F0                  580 	movx	@dptr,a
   0A5D A3                  581 	inc	dptr
   0A5E E5 F0               582 	mov	a,b
   0A60 F0                  583 	movx	@dptr,a
                    0187    584 	C$hw_reg_access.c$59$1$1 ==.
                            585 ;	../hal/Core8051s/SDCC/hw_reg_access.c:59: temp16 = ((temp16  & ~mask) | (((in_value16) << shift) & mask));
                            586 ;	genAssign
   0A61 90 00 6B            587 	mov	dptr,#_HW_set_16bit_reg_field_PARM_3
   0A64 E0                  588 	movx	a,@dptr
   0A65 FC                  589 	mov	r4,a
   0A66 A3                  590 	inc	dptr
   0A67 E0                  591 	movx	a,@dptr
   0A68 FD                  592 	mov	r5,a
                            593 ;	genCpl
   0A69 EC                  594 	mov	a,r4
   0A6A F4                  595 	cpl	a
   0A6B FE                  596 	mov	r6,a
   0A6C ED                  597 	mov	a,r5
   0A6D F4                  598 	cpl	a
   0A6E FF                  599 	mov	r7,a
                            600 ;	genAssign
   0A6F 90 00 71            601 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   0A72 E0                  602 	movx	a,@dptr
   0A73 F8                  603 	mov	r0,a
   0A74 A3                  604 	inc	dptr
   0A75 E0                  605 	movx	a,@dptr
   0A76 F9                  606 	mov	r1,a
                            607 ;	genAnd
   0A77 E8                  608 	mov	a,r0
   0A78 52 06               609 	anl	ar6,a
   0A7A E9                  610 	mov	a,r1
   0A7B 52 07               611 	anl	ar7,a
                            612 ;	genAssign
   0A7D 90 00 6A            613 	mov	dptr,#_HW_set_16bit_reg_field_PARM_2
   0A80 E0                  614 	movx	a,@dptr
   0A81 F5 1F               615 	mov	_HW_set_16bit_reg_field_sloc0_1_0,a
                            616 ;	genAssign
   0A83 90 00 6D            617 	mov	dptr,#_HW_set_16bit_reg_field_PARM_4
   0A86 E0                  618 	movx	a,@dptr
   0A87 F9                  619 	mov	r1,a
   0A88 A3                  620 	inc	dptr
   0A89 E0                  621 	movx	a,@dptr
   0A8A F8                  622 	mov	r0,a
                            623 ;	genLeftShift
   0A8B 85 1F F0            624 	mov	b,_HW_set_16bit_reg_field_sloc0_1_0
   0A8E 05 F0               625 	inc	b
   0A90 80 07               626 	sjmp	00104$
   0A92                     627 00103$:
   0A92 E9                  628 	mov	a,r1
   0A93 25 E0               629 	add	a,acc
   0A95 F9                  630 	mov	r1,a
   0A96 E8                  631 	mov	a,r0
   0A97 33                  632 	rlc	a
   0A98 F8                  633 	mov	r0,a
   0A99                     634 00104$:
   0A99 D5 F0 F6            635 	djnz	b,00103$
                            636 ;	genAnd
   0A9C E9                  637 	mov	a,r1
   0A9D 52 04               638 	anl	ar4,a
   0A9F E8                  639 	mov	a,r0
   0AA0 52 05               640 	anl	ar5,a
                            641 ;	genOr
   0AA2 90 00 71            642 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   0AA5 EC                  643 	mov	a,r4
   0AA6 4E                  644 	orl	a,r6
   0AA7 F0                  645 	movx	@dptr,a
   0AA8 ED                  646 	mov	a,r5
   0AA9 4F                  647 	orl	a,r7
   0AAA A3                  648 	inc	dptr
   0AAB F0                  649 	movx	@dptr,a
                    01D2    650 	C$hw_reg_access.c$60$1$1 ==.
                            651 ;	../hal/Core8051s/SDCC/hw_reg_access.c:60: HW_set_16bit_reg(reg_addr, temp16);
                            652 ;	genAssign
   0AAC 90 00 71            653 	mov	dptr,#_HW_set_16bit_reg_field_temp16_1_1
   0AAF E0                  654 	movx	a,@dptr
   0AB0 FC                  655 	mov	r4,a
   0AB1 A3                  656 	inc	dptr
   0AB2 E0                  657 	movx	a,@dptr
   0AB3 FD                  658 	mov	r5,a
                            659 ;	genAssign
   0AB4 90 00 49            660 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   0AB7 EC                  661 	mov	a,r4
   0AB8 F0                  662 	movx	@dptr,a
   0AB9 A3                  663 	inc	dptr
   0ABA ED                  664 	mov	a,r5
   0ABB F0                  665 	movx	@dptr,a
                            666 ;	genCall
   0ABC 8A 82               667 	mov	dpl,r2
   0ABE 8B 83               668 	mov	dph,r3
   0AC0 12 08 9E            669 	lcall	_HW_set_16bit_reg
   0AC3                     670 00101$:
                    01E9    671 	C$hw_reg_access.c$61$1$1 ==.
                    01E9    672 	XG$HW_set_16bit_reg_field$0$0 ==.
   0AC3 22                  673 	ret
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
   0AC4                     688 _HW_get_16bit_reg_field:
                            689 ;	genReceive
   0AC4 AA 83               690 	mov	r2,dph
   0AC6 E5 82               691 	mov	a,dpl
   0AC8 90 00 76            692 	mov	dptr,#_HW_get_16bit_reg_field_reg_addr_1_1
   0ACB F0                  693 	movx	@dptr,a
   0ACC A3                  694 	inc	dptr
   0ACD EA                  695 	mov	a,r2
   0ACE F0                  696 	movx	@dptr,a
                    01F5    697 	C$hw_reg_access.c$74$1$1 ==.
                            698 ;	../hal/Core8051s/SDCC/hw_reg_access.c:74: temp16 = (HW_get_16bit_reg(reg_addr) & mask) >> shift;
                            699 ;	genAssign
   0ACF 90 00 76            700 	mov	dptr,#_HW_get_16bit_reg_field_reg_addr_1_1
   0AD2 E0                  701 	movx	a,@dptr
   0AD3 FA                  702 	mov	r2,a
   0AD4 A3                  703 	inc	dptr
   0AD5 E0                  704 	movx	a,@dptr
   0AD6 FB                  705 	mov	r3,a
                            706 ;	genCall
   0AD7 8A 82               707 	mov	dpl,r2
   0AD9 8B 83               708 	mov	dph,r3
   0ADB 12 08 B2            709 	lcall	_HW_get_16bit_reg
   0ADE AA 82               710 	mov	r2,dpl
   0AE0 AB 83               711 	mov	r3,dph
                            712 ;	genAssign
   0AE2 90 00 74            713 	mov	dptr,#_HW_get_16bit_reg_field_PARM_3
   0AE5 E0                  714 	movx	a,@dptr
   0AE6 FC                  715 	mov	r4,a
   0AE7 A3                  716 	inc	dptr
   0AE8 E0                  717 	movx	a,@dptr
   0AE9 FD                  718 	mov	r5,a
                            719 ;	genAnd
   0AEA EC                  720 	mov	a,r4
   0AEB 52 02               721 	anl	ar2,a
   0AED ED                  722 	mov	a,r5
   0AEE 52 03               723 	anl	ar3,a
                            724 ;	genAssign
   0AF0 90 00 73            725 	mov	dptr,#_HW_get_16bit_reg_field_PARM_2
   0AF3 E0                  726 	movx	a,@dptr
   0AF4 FC                  727 	mov	r4,a
                            728 ;	genRightShift
   0AF5 8C F0               729 	mov	b,r4
   0AF7 05 F0               730 	inc	b
   0AF9 80 07               731 	sjmp	00104$
   0AFB                     732 00103$:
   0AFB C3                  733 	clr	c
   0AFC EB                  734 	mov	a,r3
   0AFD 13                  735 	rrc	a
   0AFE FB                  736 	mov	r3,a
   0AFF EA                  737 	mov	a,r2
   0B00 13                  738 	rrc	a
   0B01 FA                  739 	mov	r2,a
   0B02                     740 00104$:
   0B02 D5 F0 F6            741 	djnz	b,00103$
                            742 ;	genAssign
   0B05 90 00 78            743 	mov	dptr,#_HW_get_16bit_reg_field_temp16_1_1
   0B08 EA                  744 	mov	a,r2
   0B09 F0                  745 	movx	@dptr,a
   0B0A A3                  746 	inc	dptr
   0B0B EB                  747 	mov	a,r3
   0B0C F0                  748 	movx	@dptr,a
                    0233    749 	C$hw_reg_access.c$75$1$1 ==.
                            750 ;	../hal/Core8051s/SDCC/hw_reg_access.c:75: return temp16;
                            751 ;	genAssign
   0B0D 90 00 78            752 	mov	dptr,#_HW_get_16bit_reg_field_temp16_1_1
   0B10 E0                  753 	movx	a,@dptr
   0B11 FA                  754 	mov	r2,a
   0B12 A3                  755 	inc	dptr
   0B13 E0                  756 	movx	a,@dptr
   0B14 FB                  757 	mov	r3,a
                            758 ;	genRet
   0B15 8A 82               759 	mov	dpl,r2
   0B17 8B 83               760 	mov	dph,r3
   0B19                     761 00101$:
                    023F    762 	C$hw_reg_access.c$76$1$1 ==.
                    023F    763 	XG$HW_get_16bit_reg_field$0$0 ==.
   0B19 22                  764 	ret
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
   0B1A                     780 _HW_set_8bit_reg_field:
                            781 ;	genReceive
   0B1A AA 83               782 	mov	r2,dph
   0B1C E5 82               783 	mov	a,dpl
   0B1E 90 00 7D            784 	mov	dptr,#_HW_set_8bit_reg_field_reg_addr_1_1
   0B21 F0                  785 	movx	@dptr,a
   0B22 A3                  786 	inc	dptr
   0B23 EA                  787 	mov	a,r2
   0B24 F0                  788 	movx	@dptr,a
                    024B    789 	C$hw_reg_access.c$90$1$1 ==.
                            790 ;	../hal/Core8051s/SDCC/hw_reg_access.c:90: temp8 = HW_get_8bit_reg( reg_addr );
                            791 ;	genAssign
   0B25 90 00 7D            792 	mov	dptr,#_HW_set_8bit_reg_field_reg_addr_1_1
   0B28 E0                  793 	movx	a,@dptr
   0B29 FA                  794 	mov	r2,a
   0B2A A3                  795 	inc	dptr
   0B2B E0                  796 	movx	a,@dptr
   0B2C FB                  797 	mov	r3,a
                            798 ;	genCall
   0B2D 8A 82               799 	mov	dpl,r2
   0B2F 8B 83               800 	mov	dph,r3
   0B31 C0 02               801 	push	ar2
   0B33 C0 03               802 	push	ar3
   0B35 12 08 C7            803 	lcall	_HW_get_8bit_reg
   0B38 E5 82               804 	mov	a,dpl
   0B3A D0 03               805 	pop	ar3
   0B3C D0 02               806 	pop	ar2
                            807 ;	genAssign
   0B3E 90 00 7F            808 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   0B41 F0                  809 	movx	@dptr,a
                    0268    810 	C$hw_reg_access.c$91$1$1 ==.
                            811 ;	../hal/Core8051s/SDCC/hw_reg_access.c:91: temp8 = ((temp8  & ~mask) | (((value) << shift) & mask));
                            812 ;	genAssign
   0B42 90 00 7B            813 	mov	dptr,#_HW_set_8bit_reg_field_PARM_3
   0B45 E0                  814 	movx	a,@dptr
   0B46 FC                  815 	mov	r4,a
                            816 ;	genCpl
   0B47 EC                  817 	mov	a,r4
   0B48 F4                  818 	cpl	a
   0B49 FD                  819 	mov	r5,a
                            820 ;	genAssign
   0B4A 90 00 7F            821 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   0B4D E0                  822 	movx	a,@dptr
   0B4E FE                  823 	mov	r6,a
                            824 ;	genAnd
   0B4F EE                  825 	mov	a,r6
   0B50 52 05               826 	anl	ar5,a
                            827 ;	genAssign
   0B52 90 00 7A            828 	mov	dptr,#_HW_set_8bit_reg_field_PARM_2
   0B55 E0                  829 	movx	a,@dptr
   0B56 FE                  830 	mov	r6,a
                            831 ;	genAssign
   0B57 90 00 7C            832 	mov	dptr,#_HW_set_8bit_reg_field_PARM_4
   0B5A E0                  833 	movx	a,@dptr
   0B5B FF                  834 	mov	r7,a
                            835 ;	genLeftShift
   0B5C 8E F0               836 	mov	b,r6
   0B5E 05 F0               837 	inc	b
   0B60 EF                  838 	mov	a,r7
   0B61 80 02               839 	sjmp	00105$
   0B63                     840 00103$:
   0B63 25 E0               841 	add	a,acc
   0B65                     842 00105$:
   0B65 D5 F0 FB            843 	djnz	b,00103$
                            844 ;	genAnd
   0B68 5C                  845 	anl	a,r4
                            846 ;	genOr
   0B69 90 00 7F            847 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   0B6C 4D                  848 	orl	a,r5
   0B6D F0                  849 	movx	@dptr,a
                    0294    850 	C$hw_reg_access.c$92$1$1 ==.
                            851 ;	../hal/Core8051s/SDCC/hw_reg_access.c:92: HW_set_8bit_reg(reg_addr, temp8);
                            852 ;	genAssign
   0B6E 90 00 7F            853 	mov	dptr,#_HW_set_8bit_reg_field_temp8_1_1
   0B71 E0                  854 	movx	a,@dptr
   0B72 FC                  855 	mov	r4,a
                            856 ;	genAssign
   0B73 90 00 4B            857 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   0B76 EC                  858 	mov	a,r4
   0B77 F0                  859 	movx	@dptr,a
                            860 ;	genCall
   0B78 8A 82               861 	mov	dpl,r2
   0B7A 8B 83               862 	mov	dph,r3
   0B7C 12 08 B9            863 	lcall	_HW_set_8bit_reg
   0B7F                     864 00101$:
                    02A5    865 	C$hw_reg_access.c$93$1$1 ==.
                    02A5    866 	XG$HW_set_8bit_reg_field$0$0 ==.
   0B7F 22                  867 	ret
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
   0B80                     882 _HW_get_8bit_reg_field:
                            883 ;	genReceive
   0B80 AA 83               884 	mov	r2,dph
   0B82 E5 82               885 	mov	a,dpl
   0B84 90 00 82            886 	mov	dptr,#_HW_get_8bit_reg_field_reg_addr_1_1
   0B87 F0                  887 	movx	@dptr,a
   0B88 A3                  888 	inc	dptr
   0B89 EA                  889 	mov	a,r2
   0B8A F0                  890 	movx	@dptr,a
                    02B1    891 	C$hw_reg_access.c$106$1$1 ==.
                            892 ;	../hal/Core8051s/SDCC/hw_reg_access.c:106: temp8 = (HW_get_8bit_reg(reg_addr) & mask) >> shift;
                            893 ;	genAssign
   0B8B 90 00 82            894 	mov	dptr,#_HW_get_8bit_reg_field_reg_addr_1_1
   0B8E E0                  895 	movx	a,@dptr
   0B8F FA                  896 	mov	r2,a
   0B90 A3                  897 	inc	dptr
   0B91 E0                  898 	movx	a,@dptr
   0B92 FB                  899 	mov	r3,a
                            900 ;	genCall
   0B93 8A 82               901 	mov	dpl,r2
   0B95 8B 83               902 	mov	dph,r3
   0B97 12 08 C7            903 	lcall	_HW_get_8bit_reg
   0B9A AA 82               904 	mov	r2,dpl
                            905 ;	genAssign
   0B9C 90 00 81            906 	mov	dptr,#_HW_get_8bit_reg_field_PARM_3
   0B9F E0                  907 	movx	a,@dptr
   0BA0 FB                  908 	mov	r3,a
                            909 ;	genAnd
   0BA1 EB                  910 	mov	a,r3
   0BA2 52 02               911 	anl	ar2,a
                            912 ;	genAssign
   0BA4 90 00 80            913 	mov	dptr,#_HW_get_8bit_reg_field_PARM_2
   0BA7 E0                  914 	movx	a,@dptr
   0BA8 FB                  915 	mov	r3,a
                            916 ;	genRightShift
   0BA9 8B F0               917 	mov	b,r3
   0BAB 05 F0               918 	inc	b
   0BAD EA                  919 	mov	a,r2
   0BAE 80 02               920 	sjmp	00104$
   0BB0                     921 00103$:
   0BB0 C3                  922 	clr	c
   0BB1 13                  923 	rrc	a
   0BB2                     924 00104$:
   0BB2 D5 F0 FB            925 	djnz	b,00103$
                            926 ;	genAssign
   0BB5 90 00 84            927 	mov	dptr,#_HW_get_8bit_reg_field_temp8_1_1
   0BB8 F0                  928 	movx	@dptr,a
                    02DF    929 	C$hw_reg_access.c$107$1$1 ==.
                            930 ;	../hal/Core8051s/SDCC/hw_reg_access.c:107: return temp8;
                            931 ;	genAssign
   0BB9 90 00 84            932 	mov	dptr,#_HW_get_8bit_reg_field_temp8_1_1
   0BBC E0                  933 	movx	a,@dptr
   0BBD FA                  934 	mov	r2,a
                            935 ;	genRet
   0BBE 8A 82               936 	mov	dpl,r2
   0BC0                     937 00101$:
                    02E6    938 	C$hw_reg_access.c$108$1$1 ==.
                    02E6    939 	XG$HW_get_8bit_reg_field$0$0 ==.
   0BC0 22                  940 	ret
                            941 	.area CSEG    (CODE)
                            942 	.area CONST   (CODE)
                            943 	.area XINIT   (CODE)
                            944 	.area CABS    (ABS,CODE)
