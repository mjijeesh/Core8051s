                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:52:01 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___drivers_CoreWatchdog_core_watchdog
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _WD_init_PARM_4
                             13 	.globl _WD_init_PARM_3
                             14 	.globl _WD_init_PARM_2
                             15 	.globl _WD_init
                             16 	.globl _WD_enable
                             17 	.globl _WD_disable
                             18 	.globl _WD_reload
                             19 	.globl _WD_current_value
                             20 ;--------------------------------------------------------
                             21 ; special function registers
                             22 ;--------------------------------------------------------
                             23 	.area RSEG    (DATA)
                             24 ;--------------------------------------------------------
                             25 ; special function bits
                             26 ;--------------------------------------------------------
                             27 	.area RSEG    (DATA)
                             28 ;--------------------------------------------------------
                             29 ; overlayable register banks
                             30 ;--------------------------------------------------------
                             31 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      32 	.ds 8
                             33 ;--------------------------------------------------------
                             34 ; internal ram data
                             35 ;--------------------------------------------------------
                             36 	.area DSEG    (DATA)
                    0000     37 LWD_init$sloc0$1$0==.
   0020                      38 _WD_init_sloc0_1_0:
   0020                      39 	.ds 4
                             40 ;--------------------------------------------------------
                             41 ; overlayable items in internal ram 
                             42 ;--------------------------------------------------------
                             43 	.area OSEG    (OVR,DATA)
                             44 ;--------------------------------------------------------
                             45 ; indirectly addressable internal ram data
                             46 ;--------------------------------------------------------
                             47 	.area ISEG    (DATA)
                             48 ;--------------------------------------------------------
                             49 ; absolute internal ram data
                             50 ;--------------------------------------------------------
                             51 	.area IABS    (ABS,DATA)
                             52 	.area IABS    (ABS,DATA)
                             53 ;--------------------------------------------------------
                             54 ; bit data
                             55 ;--------------------------------------------------------
                             56 	.area BSEG    (BIT)
                             57 ;--------------------------------------------------------
                             58 ; paged external ram data
                             59 ;--------------------------------------------------------
                             60 	.area PSEG    (PAG,XDATA)
                             61 ;--------------------------------------------------------
                             62 ; external ram data
                             63 ;--------------------------------------------------------
                             64 	.area XSEG    (XDATA)
                    0000     65 F___drivers_CoreWatchdog_core_watchdog$NULL_instance$0$0==.
   00E3                      66 _NULL_instance:
   00E3                      67 	.ds 3
                    0003     68 LWD_init$base$1$1==.
   00E6                      69 _WD_init_PARM_2:
   00E6                      70 	.ds 2
                    0005     71 LWD_init$value$1$1==.
   00E8                      72 _WD_init_PARM_3:
   00E8                      73 	.ds 4
                    0009     74 LWD_init$scale$1$1==.
   00EC                      75 _WD_init_PARM_4:
   00EC                      76 	.ds 4
                    000D     77 LWD_init$instance$1$1==.
   00F0                      78 _WD_init_instance_1_1:
   00F0                      79 	.ds 3
                    0010     80 LWD_init$file_name$3$3==.
   00F3                      81 _WD_init_file_name_3_3:
   00F3                      82 	.ds 40
                    0038     83 LWD_init$file_name$3$5==.
   011B                      84 _WD_init_file_name_3_5:
   011B                      85 	.ds 40
                    0060     86 LWD_enable$instance$1$1==.
   0143                      87 _WD_enable_instance_1_1:
   0143                      88 	.ds 3
                    0063     89 LWD_enable$file_name$3$3==.
   0146                      90 _WD_enable_file_name_3_3:
   0146                      91 	.ds 40
                    008B     92 LWD_disable$instance$1$1==.
   016E                      93 _WD_disable_instance_1_1:
   016E                      94 	.ds 3
                    008E     95 LWD_disable$file_name$3$3==.
   0171                      96 _WD_disable_file_name_3_3:
   0171                      97 	.ds 40
                    00B6     98 LWD_reload$instance$1$1==.
   0199                      99 _WD_reload_instance_1_1:
   0199                     100 	.ds 3
                    00B9    101 LWD_reload$file_name$3$3==.
   019C                     102 _WD_reload_file_name_3_3:
   019C                     103 	.ds 40
                    00E1    104 LWD_current_value$instance$1$1==.
   01C4                     105 _WD_current_value_instance_1_1:
   01C4                     106 	.ds 3
                    00E4    107 LWD_current_value$file_name$3$3==.
   01C7                     108 _WD_current_value_file_name_3_3:
   01C7                     109 	.ds 40
                            110 ;--------------------------------------------------------
                            111 ; external initialized ram data
                            112 ;--------------------------------------------------------
                            113 	.area XISEG   (XDATA)
                            114 	.area HOME    (CODE)
                            115 	.area GSINIT0 (CODE)
                            116 	.area GSINIT1 (CODE)
                            117 	.area GSINIT2 (CODE)
                            118 	.area GSINIT3 (CODE)
                            119 	.area GSINIT4 (CODE)
                            120 	.area GSINIT5 (CODE)
                            121 	.area GSINIT  (CODE)
                            122 	.area GSFINAL (CODE)
                            123 	.area CSEG    (CODE)
                            124 ;--------------------------------------------------------
                            125 ; global & static initialisations
                            126 ;--------------------------------------------------------
                            127 	.area HOME    (CODE)
                            128 	.area GSINIT  (CODE)
                            129 	.area GSFINAL (CODE)
                            130 	.area GSINIT  (CODE)
                            131 ;--------------------------------------------------------
                            132 ; Home
                            133 ;--------------------------------------------------------
                            134 	.area HOME    (CODE)
                            135 	.area HOME    (CODE)
                            136 ;--------------------------------------------------------
                            137 ; code
                            138 ;--------------------------------------------------------
                            139 	.area CSEG    (CODE)
                            140 ;------------------------------------------------------------
                            141 ;Allocation info for local variables in function 'WD_init'
                            142 ;------------------------------------------------------------
                            143 ;sloc0                     Allocated with name '_WD_init_sloc0_1_0'
                            144 ;base                      Allocated with name '_WD_init_PARM_2'
                            145 ;value                     Allocated with name '_WD_init_PARM_3'
                            146 ;scale                     Allocated with name '_WD_init_PARM_4'
                            147 ;instance                  Allocated with name '_WD_init_instance_1_1'
                            148 ;file_name                 Allocated with name '_WD_init_file_name_3_3'
                            149 ;file_name                 Allocated with name '_WD_init_file_name_3_5'
                            150 ;------------------------------------------------------------
                    0000    151 	G$WD_init$0$0 ==.
                    0000    152 	C$core_watchdog.c$26$0$0 ==.
                            153 ;	../drivers/CoreWatchdog/core_watchdog.c:26: WD_init
                            154 ;	-----------------------------------------
                            155 ;	 function WD_init
                            156 ;	-----------------------------------------
   09A1                     157 _WD_init:
                    0002    158 	ar2 = 0x02
                    0003    159 	ar3 = 0x03
                    0004    160 	ar4 = 0x04
                    0005    161 	ar5 = 0x05
                    0006    162 	ar6 = 0x06
                    0007    163 	ar7 = 0x07
                    0000    164 	ar0 = 0x00
                    0001    165 	ar1 = 0x01
                            166 ;	genReceive
   09A1 AA F0               167 	mov	r2,b
   09A3 AB 83               168 	mov	r3,dph
   09A5 E5 82               169 	mov	a,dpl
   09A7 90 00 F0            170 	mov	dptr,#_WD_init_instance_1_1
   09AA F0                  171 	movx	@dptr,a
   09AB A3                  172 	inc	dptr
   09AC EB                  173 	mov	a,r3
   09AD F0                  174 	movx	@dptr,a
   09AE A3                  175 	inc	dptr
   09AF EA                  176 	mov	a,r2
   09B0 F0                  177 	movx	@dptr,a
                    0010    178 	C$core_watchdog.c$34$2$2 ==.
                            179 ;	../drivers/CoreWatchdog/core_watchdog.c:34: HAL_ASSERT( instance != NULL_instance )
                            180 ;	genAssign
   09B1 90 00 F0            181 	mov	dptr,#_WD_init_instance_1_1
   09B4 E0                  182 	movx	a,@dptr
   09B5 FA                  183 	mov	r2,a
   09B6 A3                  184 	inc	dptr
   09B7 E0                  185 	movx	a,@dptr
   09B8 FB                  186 	mov	r3,a
   09B9 A3                  187 	inc	dptr
   09BA E0                  188 	movx	a,@dptr
   09BB FC                  189 	mov	r4,a
                            190 ;	genAssign
   09BC 90 00 E3            191 	mov	dptr,#_NULL_instance
   09BF E0                  192 	movx	a,@dptr
   09C0 FD                  193 	mov	r5,a
   09C1 A3                  194 	inc	dptr
   09C2 E0                  195 	movx	a,@dptr
   09C3 FE                  196 	mov	r6,a
   09C4 A3                  197 	inc	dptr
   09C5 E0                  198 	movx	a,@dptr
   09C6 FF                  199 	mov	r7,a
                            200 ;	genCmpEq
                            201 ;	gencjneshort
   09C7 EA                  202 	mov	a,r2
   09C8 B5 05 0A            203 	cjne	a,ar5,00115$
   09CB EB                  204 	mov	a,r3
   09CC B5 06 06            205 	cjne	a,ar6,00115$
   09CF EC                  206 	mov	a,r4
   09D0 B5 07 02            207 	cjne	a,ar7,00115$
   09D3 80 03               208 	sjmp	00116$
   09D5                     209 00115$:
   09D5 02 0A E1            210 	ljmp	00104$
   09D8                     211 00116$:
                            212 ;	genPointerSet
                            213 ;     genFarPointerSet
   09D8 90 00 F3            214 	mov	dptr,#_WD_init_file_name_3_3
   09DB 74 2E               215 	mov	a,#0x2E
   09DD F0                  216 	movx	@dptr,a
                            217 ;	genPointerSet
                            218 ;     genFarPointerSet
   09DE 90 00 F4            219 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0001)
   09E1 74 2E               220 	mov	a,#0x2E
   09E3 F0                  221 	movx	@dptr,a
                            222 ;	genPointerSet
                            223 ;     genFarPointerSet
   09E4 90 00 F5            224 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0002)
   09E7 74 2F               225 	mov	a,#0x2F
   09E9 F0                  226 	movx	@dptr,a
                            227 ;	genPointerSet
                            228 ;     genFarPointerSet
   09EA 90 00 F6            229 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0003)
   09ED 74 64               230 	mov	a,#0x64
   09EF F0                  231 	movx	@dptr,a
                            232 ;	genPointerSet
                            233 ;     genFarPointerSet
   09F0 90 00 F7            234 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0004)
   09F3 74 72               235 	mov	a,#0x72
   09F5 F0                  236 	movx	@dptr,a
                            237 ;	genPointerSet
                            238 ;     genFarPointerSet
   09F6 90 00 F8            239 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0005)
   09F9 74 69               240 	mov	a,#0x69
   09FB F0                  241 	movx	@dptr,a
                            242 ;	genPointerSet
                            243 ;     genFarPointerSet
   09FC 90 00 F9            244 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0006)
   09FF 74 76               245 	mov	a,#0x76
   0A01 F0                  246 	movx	@dptr,a
                            247 ;	genPointerSet
                            248 ;     genFarPointerSet
   0A02 90 00 FA            249 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0007)
   0A05 74 65               250 	mov	a,#0x65
   0A07 F0                  251 	movx	@dptr,a
                            252 ;	genPointerSet
                            253 ;     genFarPointerSet
   0A08 90 00 FB            254 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0008)
   0A0B 74 72               255 	mov	a,#0x72
   0A0D F0                  256 	movx	@dptr,a
                            257 ;	genPointerSet
                            258 ;     genFarPointerSet
   0A0E 90 00 FC            259 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0009)
   0A11 74 73               260 	mov	a,#0x73
   0A13 F0                  261 	movx	@dptr,a
                            262 ;	genPointerSet
                            263 ;     genFarPointerSet
   0A14 90 00 FD            264 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000a)
   0A17 74 2F               265 	mov	a,#0x2F
   0A19 F0                  266 	movx	@dptr,a
                            267 ;	genPointerSet
                            268 ;     genFarPointerSet
   0A1A 90 00 FE            269 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000b)
   0A1D 74 43               270 	mov	a,#0x43
   0A1F F0                  271 	movx	@dptr,a
                            272 ;	genPointerSet
                            273 ;     genFarPointerSet
   0A20 90 00 FF            274 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000c)
   0A23 74 6F               275 	mov	a,#0x6F
   0A25 F0                  276 	movx	@dptr,a
                            277 ;	genPointerSet
                            278 ;     genFarPointerSet
   0A26 90 01 00            279 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000d)
   0A29 74 72               280 	mov	a,#0x72
   0A2B F0                  281 	movx	@dptr,a
                            282 ;	genPointerSet
                            283 ;     genFarPointerSet
   0A2C 90 01 01            284 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000e)
   0A2F 74 65               285 	mov	a,#0x65
   0A31 F0                  286 	movx	@dptr,a
                            287 ;	genPointerSet
                            288 ;     genFarPointerSet
   0A32 90 01 02            289 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000f)
   0A35 74 57               290 	mov	a,#0x57
   0A37 F0                  291 	movx	@dptr,a
                            292 ;	genPointerSet
                            293 ;     genFarPointerSet
   0A38 90 01 03            294 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0010)
   0A3B 74 61               295 	mov	a,#0x61
   0A3D F0                  296 	movx	@dptr,a
                            297 ;	genPointerSet
                            298 ;     genFarPointerSet
   0A3E 90 01 04            299 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0011)
   0A41 74 74               300 	mov	a,#0x74
   0A43 F0                  301 	movx	@dptr,a
                            302 ;	genPointerSet
                            303 ;     genFarPointerSet
   0A44 90 01 05            304 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0012)
   0A47 74 63               305 	mov	a,#0x63
   0A49 F0                  306 	movx	@dptr,a
                            307 ;	genPointerSet
                            308 ;     genFarPointerSet
   0A4A 90 01 06            309 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0013)
   0A4D 74 68               310 	mov	a,#0x68
   0A4F F0                  311 	movx	@dptr,a
                            312 ;	genPointerSet
                            313 ;     genFarPointerSet
   0A50 90 01 07            314 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0014)
   0A53 74 64               315 	mov	a,#0x64
   0A55 F0                  316 	movx	@dptr,a
                            317 ;	genPointerSet
                            318 ;     genFarPointerSet
   0A56 90 01 08            319 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0015)
   0A59 74 6F               320 	mov	a,#0x6F
   0A5B F0                  321 	movx	@dptr,a
                            322 ;	genPointerSet
                            323 ;     genFarPointerSet
   0A5C 90 01 09            324 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0016)
   0A5F 74 67               325 	mov	a,#0x67
   0A61 F0                  326 	movx	@dptr,a
                            327 ;	genPointerSet
                            328 ;     genFarPointerSet
   0A62 90 01 0A            329 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0017)
   0A65 74 2F               330 	mov	a,#0x2F
   0A67 F0                  331 	movx	@dptr,a
                            332 ;	genPointerSet
                            333 ;     genFarPointerSet
   0A68 90 01 0B            334 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0018)
   0A6B 74 63               335 	mov	a,#0x63
   0A6D F0                  336 	movx	@dptr,a
                            337 ;	genPointerSet
                            338 ;     genFarPointerSet
   0A6E 90 01 0C            339 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0019)
   0A71 74 6F               340 	mov	a,#0x6F
   0A73 F0                  341 	movx	@dptr,a
                            342 ;	genPointerSet
                            343 ;     genFarPointerSet
   0A74 90 01 0D            344 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001a)
   0A77 74 72               345 	mov	a,#0x72
   0A79 F0                  346 	movx	@dptr,a
                            347 ;	genPointerSet
                            348 ;     genFarPointerSet
   0A7A 90 01 0E            349 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001b)
   0A7D 74 65               350 	mov	a,#0x65
   0A7F F0                  351 	movx	@dptr,a
                            352 ;	genPointerSet
                            353 ;     genFarPointerSet
   0A80 90 01 0F            354 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001c)
   0A83 74 5F               355 	mov	a,#0x5F
   0A85 F0                  356 	movx	@dptr,a
                            357 ;	genPointerSet
                            358 ;     genFarPointerSet
   0A86 90 01 10            359 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001d)
   0A89 74 77               360 	mov	a,#0x77
   0A8B F0                  361 	movx	@dptr,a
                            362 ;	genPointerSet
                            363 ;     genFarPointerSet
   0A8C 90 01 11            364 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001e)
   0A8F 74 61               365 	mov	a,#0x61
   0A91 F0                  366 	movx	@dptr,a
                            367 ;	genPointerSet
                            368 ;     genFarPointerSet
   0A92 90 01 12            369 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001f)
   0A95 74 74               370 	mov	a,#0x74
   0A97 F0                  371 	movx	@dptr,a
                            372 ;	genPointerSet
                            373 ;     genFarPointerSet
   0A98 90 01 13            374 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0020)
   0A9B 74 63               375 	mov	a,#0x63
   0A9D F0                  376 	movx	@dptr,a
                            377 ;	genPointerSet
                            378 ;     genFarPointerSet
   0A9E 90 01 14            379 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0021)
   0AA1 74 68               380 	mov	a,#0x68
   0AA3 F0                  381 	movx	@dptr,a
                            382 ;	genPointerSet
                            383 ;     genFarPointerSet
   0AA4 90 01 15            384 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0022)
   0AA7 74 64               385 	mov	a,#0x64
   0AA9 F0                  386 	movx	@dptr,a
                            387 ;	genPointerSet
                            388 ;     genFarPointerSet
   0AAA 90 01 16            389 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0023)
   0AAD 74 6F               390 	mov	a,#0x6F
   0AAF F0                  391 	movx	@dptr,a
                            392 ;	genPointerSet
                            393 ;     genFarPointerSet
   0AB0 90 01 17            394 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0024)
   0AB3 74 67               395 	mov	a,#0x67
   0AB5 F0                  396 	movx	@dptr,a
                            397 ;	genPointerSet
                            398 ;     genFarPointerSet
   0AB6 90 01 18            399 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0025)
   0AB9 74 2E               400 	mov	a,#0x2E
   0ABB F0                  401 	movx	@dptr,a
                            402 ;	genPointerSet
                            403 ;     genFarPointerSet
   0ABC 90 01 19            404 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0026)
   0ABF 74 63               405 	mov	a,#0x63
   0AC1 F0                  406 	movx	@dptr,a
                            407 ;	genPointerSet
                            408 ;     genFarPointerSet
   0AC2 90 01 1A            409 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0027)
   0AC5 74 00               410 	mov	a,#0x00
   0AC7 F0                  411 	movx	@dptr,a
                            412 ;	genAssign
   0AC8 90 00 8C            413 	mov	dptr,#_HAL_assert_fail_PARM_2
   0ACB 74 22               414 	mov	a,#0x22
   0ACD F0                  415 	movx	@dptr,a
   0ACE E4                  416 	clr	a
   0ACF A3                  417 	inc	dptr
   0AD0 F0                  418 	movx	@dptr,a
   0AD1 A3                  419 	inc	dptr
   0AD2 F0                  420 	movx	@dptr,a
   0AD3 A3                  421 	inc	dptr
   0AD4 F0                  422 	movx	@dptr,a
                            423 ;	genCall
   0AD5 75 82 F3            424 	mov	dpl,#_WD_init_file_name_3_3
   0AD8 75 83 00            425 	mov	dph,#(_WD_init_file_name_3_3 >> 8)
   0ADB 75 F0 00            426 	mov	b,#0x00
   0ADE 12 05 F6            427 	lcall	_HAL_assert_fail
   0AE1                     428 00104$:
                    0140    429 	C$core_watchdog.c$35$2$4 ==.
                            430 ;	../drivers/CoreWatchdog/core_watchdog.c:35: HAL_ASSERT( scale <= WD_PRESCALER_DIV_1024 )
                            431 ;	genAssign
   0AE1 90 00 EC            432 	mov	dptr,#_WD_init_PARM_4
   0AE4 E0                  433 	movx	a,@dptr
   0AE5 F5 20               434 	mov	_WD_init_sloc0_1_0,a
   0AE7 A3                  435 	inc	dptr
   0AE8 E0                  436 	movx	a,@dptr
   0AE9 F5 21               437 	mov	(_WD_init_sloc0_1_0 + 1),a
   0AEB A3                  438 	inc	dptr
   0AEC E0                  439 	movx	a,@dptr
   0AED F5 22               440 	mov	(_WD_init_sloc0_1_0 + 2),a
   0AEF A3                  441 	inc	dptr
   0AF0 E0                  442 	movx	a,@dptr
   0AF1 F5 23               443 	mov	(_WD_init_sloc0_1_0 + 3),a
                            444 ;	genCmpGt
                            445 ;	genCmp
   0AF3 C3                  446 	clr	c
   0AF4 74 09               447 	mov	a,#0x09
   0AF6 95 20               448 	subb	a,_WD_init_sloc0_1_0
   0AF8 74 00               449 	mov	a,#0x00
   0AFA 95 21               450 	subb	a,(_WD_init_sloc0_1_0 + 1)
   0AFC 74 00               451 	mov	a,#0x00
   0AFE 95 22               452 	subb	a,(_WD_init_sloc0_1_0 + 2)
   0B00 74 00               453 	mov	a,#0x00
   0B02 95 23               454 	subb	a,(_WD_init_sloc0_1_0 + 3)
                            455 ;	genIfxJump
   0B04 40 03               456 	jc	00117$
   0B06 02 0C 12            457 	ljmp	00109$
   0B09                     458 00117$:
                            459 ;	genPointerSet
                            460 ;     genFarPointerSet
   0B09 90 01 1B            461 	mov	dptr,#_WD_init_file_name_3_5
   0B0C 74 2E               462 	mov	a,#0x2E
   0B0E F0                  463 	movx	@dptr,a
                            464 ;	genPointerSet
                            465 ;     genFarPointerSet
   0B0F 90 01 1C            466 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0001)
   0B12 74 2E               467 	mov	a,#0x2E
   0B14 F0                  468 	movx	@dptr,a
                            469 ;	genPointerSet
                            470 ;     genFarPointerSet
   0B15 90 01 1D            471 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0002)
   0B18 74 2F               472 	mov	a,#0x2F
   0B1A F0                  473 	movx	@dptr,a
                            474 ;	genPointerSet
                            475 ;     genFarPointerSet
   0B1B 90 01 1E            476 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0003)
   0B1E 74 64               477 	mov	a,#0x64
   0B20 F0                  478 	movx	@dptr,a
                            479 ;	genPointerSet
                            480 ;     genFarPointerSet
   0B21 90 01 1F            481 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0004)
   0B24 74 72               482 	mov	a,#0x72
   0B26 F0                  483 	movx	@dptr,a
                            484 ;	genPointerSet
                            485 ;     genFarPointerSet
   0B27 90 01 20            486 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0005)
   0B2A 74 69               487 	mov	a,#0x69
   0B2C F0                  488 	movx	@dptr,a
                            489 ;	genPointerSet
                            490 ;     genFarPointerSet
   0B2D 90 01 21            491 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0006)
   0B30 74 76               492 	mov	a,#0x76
   0B32 F0                  493 	movx	@dptr,a
                            494 ;	genPointerSet
                            495 ;     genFarPointerSet
   0B33 90 01 22            496 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0007)
   0B36 74 65               497 	mov	a,#0x65
   0B38 F0                  498 	movx	@dptr,a
                            499 ;	genPointerSet
                            500 ;     genFarPointerSet
   0B39 90 01 23            501 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0008)
   0B3C 74 72               502 	mov	a,#0x72
   0B3E F0                  503 	movx	@dptr,a
                            504 ;	genPointerSet
                            505 ;     genFarPointerSet
   0B3F 90 01 24            506 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0009)
   0B42 74 73               507 	mov	a,#0x73
   0B44 F0                  508 	movx	@dptr,a
                            509 ;	genPointerSet
                            510 ;     genFarPointerSet
   0B45 90 01 25            511 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000a)
   0B48 74 2F               512 	mov	a,#0x2F
   0B4A F0                  513 	movx	@dptr,a
                            514 ;	genPointerSet
                            515 ;     genFarPointerSet
   0B4B 90 01 26            516 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000b)
   0B4E 74 43               517 	mov	a,#0x43
   0B50 F0                  518 	movx	@dptr,a
                            519 ;	genPointerSet
                            520 ;     genFarPointerSet
   0B51 90 01 27            521 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000c)
   0B54 74 6F               522 	mov	a,#0x6F
   0B56 F0                  523 	movx	@dptr,a
                            524 ;	genPointerSet
                            525 ;     genFarPointerSet
   0B57 90 01 28            526 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000d)
   0B5A 74 72               527 	mov	a,#0x72
   0B5C F0                  528 	movx	@dptr,a
                            529 ;	genPointerSet
                            530 ;     genFarPointerSet
   0B5D 90 01 29            531 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000e)
   0B60 74 65               532 	mov	a,#0x65
   0B62 F0                  533 	movx	@dptr,a
                            534 ;	genPointerSet
                            535 ;     genFarPointerSet
   0B63 90 01 2A            536 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000f)
   0B66 74 57               537 	mov	a,#0x57
   0B68 F0                  538 	movx	@dptr,a
                            539 ;	genPointerSet
                            540 ;     genFarPointerSet
   0B69 90 01 2B            541 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0010)
   0B6C 74 61               542 	mov	a,#0x61
   0B6E F0                  543 	movx	@dptr,a
                            544 ;	genPointerSet
                            545 ;     genFarPointerSet
   0B6F 90 01 2C            546 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0011)
   0B72 74 74               547 	mov	a,#0x74
   0B74 F0                  548 	movx	@dptr,a
                            549 ;	genPointerSet
                            550 ;     genFarPointerSet
   0B75 90 01 2D            551 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0012)
   0B78 74 63               552 	mov	a,#0x63
   0B7A F0                  553 	movx	@dptr,a
                            554 ;	genPointerSet
                            555 ;     genFarPointerSet
   0B7B 90 01 2E            556 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0013)
   0B7E 74 68               557 	mov	a,#0x68
   0B80 F0                  558 	movx	@dptr,a
                            559 ;	genPointerSet
                            560 ;     genFarPointerSet
   0B81 90 01 2F            561 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0014)
   0B84 74 64               562 	mov	a,#0x64
   0B86 F0                  563 	movx	@dptr,a
                            564 ;	genPointerSet
                            565 ;     genFarPointerSet
   0B87 90 01 30            566 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0015)
   0B8A 74 6F               567 	mov	a,#0x6F
   0B8C F0                  568 	movx	@dptr,a
                            569 ;	genPointerSet
                            570 ;     genFarPointerSet
   0B8D 90 01 31            571 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0016)
   0B90 74 67               572 	mov	a,#0x67
   0B92 F0                  573 	movx	@dptr,a
                            574 ;	genPointerSet
                            575 ;     genFarPointerSet
   0B93 90 01 32            576 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0017)
   0B96 74 2F               577 	mov	a,#0x2F
   0B98 F0                  578 	movx	@dptr,a
                            579 ;	genPointerSet
                            580 ;     genFarPointerSet
   0B99 90 01 33            581 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0018)
   0B9C 74 63               582 	mov	a,#0x63
   0B9E F0                  583 	movx	@dptr,a
                            584 ;	genPointerSet
                            585 ;     genFarPointerSet
   0B9F 90 01 34            586 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0019)
   0BA2 74 6F               587 	mov	a,#0x6F
   0BA4 F0                  588 	movx	@dptr,a
                            589 ;	genPointerSet
                            590 ;     genFarPointerSet
   0BA5 90 01 35            591 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001a)
   0BA8 74 72               592 	mov	a,#0x72
   0BAA F0                  593 	movx	@dptr,a
                            594 ;	genPointerSet
                            595 ;     genFarPointerSet
   0BAB 90 01 36            596 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001b)
   0BAE 74 65               597 	mov	a,#0x65
   0BB0 F0                  598 	movx	@dptr,a
                            599 ;	genPointerSet
                            600 ;     genFarPointerSet
   0BB1 90 01 37            601 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001c)
   0BB4 74 5F               602 	mov	a,#0x5F
   0BB6 F0                  603 	movx	@dptr,a
                            604 ;	genPointerSet
                            605 ;     genFarPointerSet
   0BB7 90 01 38            606 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001d)
   0BBA 74 77               607 	mov	a,#0x77
   0BBC F0                  608 	movx	@dptr,a
                            609 ;	genPointerSet
                            610 ;     genFarPointerSet
   0BBD 90 01 39            611 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001e)
   0BC0 74 61               612 	mov	a,#0x61
   0BC2 F0                  613 	movx	@dptr,a
                            614 ;	genPointerSet
                            615 ;     genFarPointerSet
   0BC3 90 01 3A            616 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001f)
   0BC6 74 74               617 	mov	a,#0x74
   0BC8 F0                  618 	movx	@dptr,a
                            619 ;	genPointerSet
                            620 ;     genFarPointerSet
   0BC9 90 01 3B            621 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0020)
   0BCC 74 63               622 	mov	a,#0x63
   0BCE F0                  623 	movx	@dptr,a
                            624 ;	genPointerSet
                            625 ;     genFarPointerSet
   0BCF 90 01 3C            626 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0021)
   0BD2 74 68               627 	mov	a,#0x68
   0BD4 F0                  628 	movx	@dptr,a
                            629 ;	genPointerSet
                            630 ;     genFarPointerSet
   0BD5 90 01 3D            631 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0022)
   0BD8 74 64               632 	mov	a,#0x64
   0BDA F0                  633 	movx	@dptr,a
                            634 ;	genPointerSet
                            635 ;     genFarPointerSet
   0BDB 90 01 3E            636 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0023)
   0BDE 74 6F               637 	mov	a,#0x6F
   0BE0 F0                  638 	movx	@dptr,a
                            639 ;	genPointerSet
                            640 ;     genFarPointerSet
   0BE1 90 01 3F            641 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0024)
   0BE4 74 67               642 	mov	a,#0x67
   0BE6 F0                  643 	movx	@dptr,a
                            644 ;	genPointerSet
                            645 ;     genFarPointerSet
   0BE7 90 01 40            646 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0025)
   0BEA 74 2E               647 	mov	a,#0x2E
   0BEC F0                  648 	movx	@dptr,a
                            649 ;	genPointerSet
                            650 ;     genFarPointerSet
   0BED 90 01 41            651 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0026)
   0BF0 74 63               652 	mov	a,#0x63
   0BF2 F0                  653 	movx	@dptr,a
                            654 ;	genPointerSet
                            655 ;     genFarPointerSet
   0BF3 90 01 42            656 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0027)
   0BF6 74 00               657 	mov	a,#0x00
   0BF8 F0                  658 	movx	@dptr,a
                            659 ;	genAssign
   0BF9 90 00 8C            660 	mov	dptr,#_HAL_assert_fail_PARM_2
   0BFC 74 23               661 	mov	a,#0x23
   0BFE F0                  662 	movx	@dptr,a
   0BFF E4                  663 	clr	a
   0C00 A3                  664 	inc	dptr
   0C01 F0                  665 	movx	@dptr,a
   0C02 A3                  666 	inc	dptr
   0C03 F0                  667 	movx	@dptr,a
   0C04 A3                  668 	inc	dptr
   0C05 F0                  669 	movx	@dptr,a
                            670 ;	genCall
   0C06 75 82 1B            671 	mov	dpl,#_WD_init_file_name_3_5
   0C09 75 83 01            672 	mov	dph,#(_WD_init_file_name_3_5 >> 8)
   0C0C 75 F0 00            673 	mov	b,#0x00
   0C0F 12 05 F6            674 	lcall	_HAL_assert_fail
   0C12                     675 00109$:
                    0271    676 	C$core_watchdog.c$37$1$1 ==.
                            677 ;	../drivers/CoreWatchdog/core_watchdog.c:37: instance->base_address = base;
                            678 ;	genAssign
   0C12 90 00 F0            679 	mov	dptr,#_WD_init_instance_1_1
   0C15 E0                  680 	movx	a,@dptr
   0C16 FE                  681 	mov	r6,a
   0C17 A3                  682 	inc	dptr
   0C18 E0                  683 	movx	a,@dptr
   0C19 FF                  684 	mov	r7,a
   0C1A A3                  685 	inc	dptr
   0C1B E0                  686 	movx	a,@dptr
   0C1C F8                  687 	mov	r0,a
                            688 ;	genAssign
   0C1D 90 00 E6            689 	mov	dptr,#_WD_init_PARM_2
   0C20 E0                  690 	movx	a,@dptr
   0C21 F9                  691 	mov	r1,a
   0C22 A3                  692 	inc	dptr
   0C23 E0                  693 	movx	a,@dptr
   0C24 FA                  694 	mov	r2,a
                            695 ;	genPointerSet
                            696 ;	genGenPointerSet
   0C25 8E 82               697 	mov	dpl,r6
   0C27 8F 83               698 	mov	dph,r7
   0C29 88 F0               699 	mov	b,r0
   0C2B E9                  700 	mov	a,r1
   0C2C 12 61 2F            701 	lcall	__gptrput
   0C2F A3                  702 	inc	dptr
   0C30 EA                  703 	mov	a,r2
   0C31 12 61 2F            704 	lcall	__gptrput
                    0293    705 	C$core_watchdog.c$40$1$1 ==.
                            706 ;	../drivers/CoreWatchdog/core_watchdog.c:40: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 0 );
                            707 ;	genPlus
                            708 ;	genPlusIncr
   0C34 74 08               709 	mov	a,#0x08
   0C36 25 01               710 	add	a,ar1
   0C38 F9                  711 	mov	r1,a
   0C39 74 00               712 	mov	a,#0x00
   0C3B 35 02               713 	addc	a,ar2
   0C3D FA                  714 	mov	r2,a
                            715 ;	genAssign
   0C3E 90 00 AE            716 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   0C41 74 04               717 	mov	a,#0x04
   0C43 F0                  718 	movx	@dptr,a
                            719 ;	genAssign
   0C44 90 00 AF            720 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   0C47 74 10               721 	mov	a,#0x10
   0C49 F0                  722 	movx	@dptr,a
   0C4A E4                  723 	clr	a
   0C4B A3                  724 	inc	dptr
   0C4C F0                  725 	movx	@dptr,a
   0C4D A3                  726 	inc	dptr
   0C4E F0                  727 	movx	@dptr,a
   0C4F A3                  728 	inc	dptr
   0C50 F0                  729 	movx	@dptr,a
                            730 ;	genAssign
   0C51 90 00 B3            731 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   0C54 E4                  732 	clr	a
   0C55 F0                  733 	movx	@dptr,a
   0C56 A3                  734 	inc	dptr
   0C57 F0                  735 	movx	@dptr,a
   0C58 A3                  736 	inc	dptr
   0C59 F0                  737 	movx	@dptr,a
   0C5A A3                  738 	inc	dptr
   0C5B F0                  739 	movx	@dptr,a
                            740 ;	genCall
   0C5C 89 82               741 	mov	dpl,r1
   0C5E 8A 83               742 	mov	dph,r2
   0C60 C0 06               743 	push	ar6
   0C62 C0 07               744 	push	ar7
   0C64 C0 00               745 	push	ar0
   0C66 12 06 BA            746 	lcall	_HW_set_32bit_reg_field
   0C69 D0 00               747 	pop	ar0
   0C6B D0 07               748 	pop	ar7
   0C6D D0 06               749 	pop	ar6
                    02CE    750 	C$core_watchdog.c$43$1$1 ==.
                            751 ;	../drivers/CoreWatchdog/core_watchdog.c:43: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_PRESCALE, scale );
                            752 ;	genPointerGet
                            753 ;	genGenPointerGet
   0C6F 8E 82               754 	mov	dpl,r6
   0C71 8F 83               755 	mov	dph,r7
   0C73 88 F0               756 	mov	b,r0
   0C75 12 61 48            757 	lcall	__gptrget
   0C78 FA                  758 	mov	r2,a
   0C79 A3                  759 	inc	dptr
   0C7A 12 61 48            760 	lcall	__gptrget
   0C7D FB                  761 	mov	r3,a
                            762 ;	genPlus
                            763 ;	genPlusIncr
   0C7E 74 08               764 	mov	a,#0x08
   0C80 25 02               765 	add	a,ar2
   0C82 FA                  766 	mov	r2,a
   0C83 74 00               767 	mov	a,#0x00
   0C85 35 03               768 	addc	a,ar3
   0C87 FB                  769 	mov	r3,a
                            770 ;	genAssign
   0C88 90 00 AE            771 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   0C8B 74 00               772 	mov	a,#0x00
   0C8D F0                  773 	movx	@dptr,a
                            774 ;	genAssign
   0C8E 90 00 AF            775 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   0C91 74 0F               776 	mov	a,#0x0F
   0C93 F0                  777 	movx	@dptr,a
   0C94 E4                  778 	clr	a
   0C95 A3                  779 	inc	dptr
   0C96 F0                  780 	movx	@dptr,a
   0C97 A3                  781 	inc	dptr
   0C98 F0                  782 	movx	@dptr,a
   0C99 A3                  783 	inc	dptr
   0C9A F0                  784 	movx	@dptr,a
                            785 ;	genAssign
   0C9B 90 00 B3            786 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   0C9E E5 20               787 	mov	a,_WD_init_sloc0_1_0
   0CA0 F0                  788 	movx	@dptr,a
   0CA1 A3                  789 	inc	dptr
   0CA2 E5 21               790 	mov	a,(_WD_init_sloc0_1_0 + 1)
   0CA4 F0                  791 	movx	@dptr,a
   0CA5 A3                  792 	inc	dptr
   0CA6 E5 22               793 	mov	a,(_WD_init_sloc0_1_0 + 2)
   0CA8 F0                  794 	movx	@dptr,a
   0CA9 A3                  795 	inc	dptr
   0CAA E5 23               796 	mov	a,(_WD_init_sloc0_1_0 + 3)
   0CAC F0                  797 	movx	@dptr,a
                            798 ;	genCall
   0CAD 8A 82               799 	mov	dpl,r2
   0CAF 8B 83               800 	mov	dph,r3
   0CB1 C0 06               801 	push	ar6
   0CB3 C0 07               802 	push	ar7
   0CB5 C0 00               803 	push	ar0
   0CB7 12 06 BA            804 	lcall	_HW_set_32bit_reg_field
   0CBA D0 00               805 	pop	ar0
   0CBC D0 07               806 	pop	ar7
   0CBE D0 06               807 	pop	ar6
                    031F    808 	C$core_watchdog.c$44$1$1 ==.
                            809 ;	../drivers/CoreWatchdog/core_watchdog.c:44: HAL_set_32bit_reg( instance->base_address, WDOGLOAD, value );
                            810 ;	genPointerGet
                            811 ;	genGenPointerGet
   0CC0 8E 82               812 	mov	dpl,r6
   0CC2 8F 83               813 	mov	dph,r7
   0CC4 88 F0               814 	mov	b,r0
   0CC6 12 61 48            815 	lcall	__gptrget
   0CC9 FE                  816 	mov	r6,a
   0CCA A3                  817 	inc	dptr
   0CCB 12 61 48            818 	lcall	__gptrget
   0CCE FF                  819 	mov	r7,a
                            820 ;	genAssign
   0CCF 90 00 E8            821 	mov	dptr,#_WD_init_PARM_3
   0CD2 E0                  822 	movx	a,@dptr
   0CD3 FA                  823 	mov	r2,a
   0CD4 A3                  824 	inc	dptr
   0CD5 E0                  825 	movx	a,@dptr
   0CD6 FB                  826 	mov	r3,a
   0CD7 A3                  827 	inc	dptr
   0CD8 E0                  828 	movx	a,@dptr
   0CD9 FC                  829 	mov	r4,a
   0CDA A3                  830 	inc	dptr
   0CDB E0                  831 	movx	a,@dptr
   0CDC FD                  832 	mov	r5,a
                            833 ;	genAssign
   0CDD 90 00 AA            834 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   0CE0 EA                  835 	mov	a,r2
   0CE1 F0                  836 	movx	@dptr,a
   0CE2 A3                  837 	inc	dptr
   0CE3 EB                  838 	mov	a,r3
   0CE4 F0                  839 	movx	@dptr,a
   0CE5 A3                  840 	inc	dptr
   0CE6 EC                  841 	mov	a,r4
   0CE7 F0                  842 	movx	@dptr,a
   0CE8 A3                  843 	inc	dptr
   0CE9 ED                  844 	mov	a,r5
   0CEA F0                  845 	movx	@dptr,a
                            846 ;	genCall
   0CEB 8E 82               847 	mov	dpl,r6
   0CED 8F 83               848 	mov	dph,r7
   0CEF 12 06 62            849 	lcall	_HW_set_32bit_reg
   0CF2                     850 00111$:
                    0351    851 	C$core_watchdog.c$45$1$1 ==.
                    0351    852 	XG$WD_init$0$0 ==.
   0CF2 22                  853 	ret
                            854 ;------------------------------------------------------------
                            855 ;Allocation info for local variables in function 'WD_enable'
                            856 ;------------------------------------------------------------
                            857 ;instance                  Allocated with name '_WD_enable_instance_1_1'
                            858 ;file_name                 Allocated with name '_WD_enable_file_name_3_3'
                            859 ;------------------------------------------------------------
                    0352    860 	G$WD_enable$0$0 ==.
                    0352    861 	C$core_watchdog.c$52$1$1 ==.
                            862 ;	../drivers/CoreWatchdog/core_watchdog.c:52: WD_enable
                            863 ;	-----------------------------------------
                            864 ;	 function WD_enable
                            865 ;	-----------------------------------------
   0CF3                     866 _WD_enable:
                            867 ;	genReceive
   0CF3 AA F0               868 	mov	r2,b
   0CF5 AB 83               869 	mov	r3,dph
   0CF7 E5 82               870 	mov	a,dpl
   0CF9 90 01 43            871 	mov	dptr,#_WD_enable_instance_1_1
   0CFC F0                  872 	movx	@dptr,a
   0CFD A3                  873 	inc	dptr
   0CFE EB                  874 	mov	a,r3
   0CFF F0                  875 	movx	@dptr,a
   0D00 A3                  876 	inc	dptr
   0D01 EA                  877 	mov	a,r2
   0D02 F0                  878 	movx	@dptr,a
                    0362    879 	C$core_watchdog.c$57$2$2 ==.
                            880 ;	../drivers/CoreWatchdog/core_watchdog.c:57: HAL_ASSERT( instance != NULL_instance )
                            881 ;	genAssign
   0D03 90 01 43            882 	mov	dptr,#_WD_enable_instance_1_1
   0D06 E0                  883 	movx	a,@dptr
   0D07 FA                  884 	mov	r2,a
   0D08 A3                  885 	inc	dptr
   0D09 E0                  886 	movx	a,@dptr
   0D0A FB                  887 	mov	r3,a
   0D0B A3                  888 	inc	dptr
   0D0C E0                  889 	movx	a,@dptr
   0D0D FC                  890 	mov	r4,a
                            891 ;	genAssign
   0D0E 90 00 E3            892 	mov	dptr,#_NULL_instance
   0D11 E0                  893 	movx	a,@dptr
   0D12 FD                  894 	mov	r5,a
   0D13 A3                  895 	inc	dptr
   0D14 E0                  896 	movx	a,@dptr
   0D15 FE                  897 	mov	r6,a
   0D16 A3                  898 	inc	dptr
   0D17 E0                  899 	movx	a,@dptr
   0D18 FF                  900 	mov	r7,a
                            901 ;	genCmpEq
                            902 ;	gencjneshort
   0D19 EA                  903 	mov	a,r2
   0D1A B5 05 0A            904 	cjne	a,ar5,00109$
   0D1D EB                  905 	mov	a,r3
   0D1E B5 06 06            906 	cjne	a,ar6,00109$
   0D21 EC                  907 	mov	a,r4
   0D22 B5 07 02            908 	cjne	a,ar7,00109$
   0D25 80 03               909 	sjmp	00110$
   0D27                     910 00109$:
   0D27 02 0E 33            911 	ljmp	00104$
   0D2A                     912 00110$:
                            913 ;	genPointerSet
                            914 ;     genFarPointerSet
   0D2A 90 01 46            915 	mov	dptr,#_WD_enable_file_name_3_3
   0D2D 74 2E               916 	mov	a,#0x2E
   0D2F F0                  917 	movx	@dptr,a
                            918 ;	genPointerSet
                            919 ;     genFarPointerSet
   0D30 90 01 47            920 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0001)
   0D33 74 2E               921 	mov	a,#0x2E
   0D35 F0                  922 	movx	@dptr,a
                            923 ;	genPointerSet
                            924 ;     genFarPointerSet
   0D36 90 01 48            925 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0002)
   0D39 74 2F               926 	mov	a,#0x2F
   0D3B F0                  927 	movx	@dptr,a
                            928 ;	genPointerSet
                            929 ;     genFarPointerSet
   0D3C 90 01 49            930 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0003)
   0D3F 74 64               931 	mov	a,#0x64
   0D41 F0                  932 	movx	@dptr,a
                            933 ;	genPointerSet
                            934 ;     genFarPointerSet
   0D42 90 01 4A            935 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0004)
   0D45 74 72               936 	mov	a,#0x72
   0D47 F0                  937 	movx	@dptr,a
                            938 ;	genPointerSet
                            939 ;     genFarPointerSet
   0D48 90 01 4B            940 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0005)
   0D4B 74 69               941 	mov	a,#0x69
   0D4D F0                  942 	movx	@dptr,a
                            943 ;	genPointerSet
                            944 ;     genFarPointerSet
   0D4E 90 01 4C            945 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0006)
   0D51 74 76               946 	mov	a,#0x76
   0D53 F0                  947 	movx	@dptr,a
                            948 ;	genPointerSet
                            949 ;     genFarPointerSet
   0D54 90 01 4D            950 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0007)
   0D57 74 65               951 	mov	a,#0x65
   0D59 F0                  952 	movx	@dptr,a
                            953 ;	genPointerSet
                            954 ;     genFarPointerSet
   0D5A 90 01 4E            955 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0008)
   0D5D 74 72               956 	mov	a,#0x72
   0D5F F0                  957 	movx	@dptr,a
                            958 ;	genPointerSet
                            959 ;     genFarPointerSet
   0D60 90 01 4F            960 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0009)
   0D63 74 73               961 	mov	a,#0x73
   0D65 F0                  962 	movx	@dptr,a
                            963 ;	genPointerSet
                            964 ;     genFarPointerSet
   0D66 90 01 50            965 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000a)
   0D69 74 2F               966 	mov	a,#0x2F
   0D6B F0                  967 	movx	@dptr,a
                            968 ;	genPointerSet
                            969 ;     genFarPointerSet
   0D6C 90 01 51            970 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000b)
   0D6F 74 43               971 	mov	a,#0x43
   0D71 F0                  972 	movx	@dptr,a
                            973 ;	genPointerSet
                            974 ;     genFarPointerSet
   0D72 90 01 52            975 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000c)
   0D75 74 6F               976 	mov	a,#0x6F
   0D77 F0                  977 	movx	@dptr,a
                            978 ;	genPointerSet
                            979 ;     genFarPointerSet
   0D78 90 01 53            980 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000d)
   0D7B 74 72               981 	mov	a,#0x72
   0D7D F0                  982 	movx	@dptr,a
                            983 ;	genPointerSet
                            984 ;     genFarPointerSet
   0D7E 90 01 54            985 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000e)
   0D81 74 65               986 	mov	a,#0x65
   0D83 F0                  987 	movx	@dptr,a
                            988 ;	genPointerSet
                            989 ;     genFarPointerSet
   0D84 90 01 55            990 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000f)
   0D87 74 57               991 	mov	a,#0x57
   0D89 F0                  992 	movx	@dptr,a
                            993 ;	genPointerSet
                            994 ;     genFarPointerSet
   0D8A 90 01 56            995 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0010)
   0D8D 74 61               996 	mov	a,#0x61
   0D8F F0                  997 	movx	@dptr,a
                            998 ;	genPointerSet
                            999 ;     genFarPointerSet
   0D90 90 01 57           1000 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0011)
   0D93 74 74              1001 	mov	a,#0x74
   0D95 F0                 1002 	movx	@dptr,a
                           1003 ;	genPointerSet
                           1004 ;     genFarPointerSet
   0D96 90 01 58           1005 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0012)
   0D99 74 63              1006 	mov	a,#0x63
   0D9B F0                 1007 	movx	@dptr,a
                           1008 ;	genPointerSet
                           1009 ;     genFarPointerSet
   0D9C 90 01 59           1010 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0013)
   0D9F 74 68              1011 	mov	a,#0x68
   0DA1 F0                 1012 	movx	@dptr,a
                           1013 ;	genPointerSet
                           1014 ;     genFarPointerSet
   0DA2 90 01 5A           1015 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0014)
   0DA5 74 64              1016 	mov	a,#0x64
   0DA7 F0                 1017 	movx	@dptr,a
                           1018 ;	genPointerSet
                           1019 ;     genFarPointerSet
   0DA8 90 01 5B           1020 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0015)
   0DAB 74 6F              1021 	mov	a,#0x6F
   0DAD F0                 1022 	movx	@dptr,a
                           1023 ;	genPointerSet
                           1024 ;     genFarPointerSet
   0DAE 90 01 5C           1025 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0016)
   0DB1 74 67              1026 	mov	a,#0x67
   0DB3 F0                 1027 	movx	@dptr,a
                           1028 ;	genPointerSet
                           1029 ;     genFarPointerSet
   0DB4 90 01 5D           1030 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0017)
   0DB7 74 2F              1031 	mov	a,#0x2F
   0DB9 F0                 1032 	movx	@dptr,a
                           1033 ;	genPointerSet
                           1034 ;     genFarPointerSet
   0DBA 90 01 5E           1035 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0018)
   0DBD 74 63              1036 	mov	a,#0x63
   0DBF F0                 1037 	movx	@dptr,a
                           1038 ;	genPointerSet
                           1039 ;     genFarPointerSet
   0DC0 90 01 5F           1040 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0019)
   0DC3 74 6F              1041 	mov	a,#0x6F
   0DC5 F0                 1042 	movx	@dptr,a
                           1043 ;	genPointerSet
                           1044 ;     genFarPointerSet
   0DC6 90 01 60           1045 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001a)
   0DC9 74 72              1046 	mov	a,#0x72
   0DCB F0                 1047 	movx	@dptr,a
                           1048 ;	genPointerSet
                           1049 ;     genFarPointerSet
   0DCC 90 01 61           1050 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001b)
   0DCF 74 65              1051 	mov	a,#0x65
   0DD1 F0                 1052 	movx	@dptr,a
                           1053 ;	genPointerSet
                           1054 ;     genFarPointerSet
   0DD2 90 01 62           1055 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001c)
   0DD5 74 5F              1056 	mov	a,#0x5F
   0DD7 F0                 1057 	movx	@dptr,a
                           1058 ;	genPointerSet
                           1059 ;     genFarPointerSet
   0DD8 90 01 63           1060 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001d)
   0DDB 74 77              1061 	mov	a,#0x77
   0DDD F0                 1062 	movx	@dptr,a
                           1063 ;	genPointerSet
                           1064 ;     genFarPointerSet
   0DDE 90 01 64           1065 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001e)
   0DE1 74 61              1066 	mov	a,#0x61
   0DE3 F0                 1067 	movx	@dptr,a
                           1068 ;	genPointerSet
                           1069 ;     genFarPointerSet
   0DE4 90 01 65           1070 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001f)
   0DE7 74 74              1071 	mov	a,#0x74
   0DE9 F0                 1072 	movx	@dptr,a
                           1073 ;	genPointerSet
                           1074 ;     genFarPointerSet
   0DEA 90 01 66           1075 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0020)
   0DED 74 63              1076 	mov	a,#0x63
   0DEF F0                 1077 	movx	@dptr,a
                           1078 ;	genPointerSet
                           1079 ;     genFarPointerSet
   0DF0 90 01 67           1080 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0021)
   0DF3 74 68              1081 	mov	a,#0x68
   0DF5 F0                 1082 	movx	@dptr,a
                           1083 ;	genPointerSet
                           1084 ;     genFarPointerSet
   0DF6 90 01 68           1085 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0022)
   0DF9 74 64              1086 	mov	a,#0x64
   0DFB F0                 1087 	movx	@dptr,a
                           1088 ;	genPointerSet
                           1089 ;     genFarPointerSet
   0DFC 90 01 69           1090 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0023)
   0DFF 74 6F              1091 	mov	a,#0x6F
   0E01 F0                 1092 	movx	@dptr,a
                           1093 ;	genPointerSet
                           1094 ;     genFarPointerSet
   0E02 90 01 6A           1095 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0024)
   0E05 74 67              1096 	mov	a,#0x67
   0E07 F0                 1097 	movx	@dptr,a
                           1098 ;	genPointerSet
                           1099 ;     genFarPointerSet
   0E08 90 01 6B           1100 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0025)
   0E0B 74 2E              1101 	mov	a,#0x2E
   0E0D F0                 1102 	movx	@dptr,a
                           1103 ;	genPointerSet
                           1104 ;     genFarPointerSet
   0E0E 90 01 6C           1105 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0026)
   0E11 74 63              1106 	mov	a,#0x63
   0E13 F0                 1107 	movx	@dptr,a
                           1108 ;	genPointerSet
                           1109 ;     genFarPointerSet
   0E14 90 01 6D           1110 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0027)
   0E17 74 00              1111 	mov	a,#0x00
   0E19 F0                 1112 	movx	@dptr,a
                           1113 ;	genAssign
   0E1A 90 00 8C           1114 	mov	dptr,#_HAL_assert_fail_PARM_2
   0E1D 74 39              1115 	mov	a,#0x39
   0E1F F0                 1116 	movx	@dptr,a
   0E20 E4                 1117 	clr	a
   0E21 A3                 1118 	inc	dptr
   0E22 F0                 1119 	movx	@dptr,a
   0E23 A3                 1120 	inc	dptr
   0E24 F0                 1121 	movx	@dptr,a
   0E25 A3                 1122 	inc	dptr
   0E26 F0                 1123 	movx	@dptr,a
                           1124 ;	genCall
   0E27 75 82 46           1125 	mov	dpl,#_WD_enable_file_name_3_3
   0E2A 75 83 01           1126 	mov	dph,#(_WD_enable_file_name_3_3 >> 8)
   0E2D 75 F0 00           1127 	mov	b,#0x00
   0E30 12 05 F6           1128 	lcall	_HAL_assert_fail
   0E33                    1129 00104$:
                    0492   1130 	C$core_watchdog.c$59$1$1 ==.
                           1131 ;	../drivers/CoreWatchdog/core_watchdog.c:59: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 1 );
                           1132 ;	genAssign
   0E33 90 01 43           1133 	mov	dptr,#_WD_enable_instance_1_1
   0E36 E0                 1134 	movx	a,@dptr
   0E37 FA                 1135 	mov	r2,a
   0E38 A3                 1136 	inc	dptr
   0E39 E0                 1137 	movx	a,@dptr
   0E3A FB                 1138 	mov	r3,a
   0E3B A3                 1139 	inc	dptr
   0E3C E0                 1140 	movx	a,@dptr
   0E3D FC                 1141 	mov	r4,a
                           1142 ;	genPointerGet
                           1143 ;	genGenPointerGet
   0E3E 8A 82              1144 	mov	dpl,r2
   0E40 8B 83              1145 	mov	dph,r3
   0E42 8C F0              1146 	mov	b,r4
   0E44 12 61 48           1147 	lcall	__gptrget
   0E47 FA                 1148 	mov	r2,a
   0E48 A3                 1149 	inc	dptr
   0E49 12 61 48           1150 	lcall	__gptrget
   0E4C FB                 1151 	mov	r3,a
                           1152 ;	genPlus
                           1153 ;	genPlusIncr
   0E4D 74 08              1154 	mov	a,#0x08
   0E4F 25 02              1155 	add	a,ar2
   0E51 FA                 1156 	mov	r2,a
   0E52 74 00              1157 	mov	a,#0x00
   0E54 35 03              1158 	addc	a,ar3
   0E56 FB                 1159 	mov	r3,a
                           1160 ;	genAssign
   0E57 90 00 AE           1161 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   0E5A 74 04              1162 	mov	a,#0x04
   0E5C F0                 1163 	movx	@dptr,a
                           1164 ;	genAssign
   0E5D 90 00 AF           1165 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   0E60 74 10              1166 	mov	a,#0x10
   0E62 F0                 1167 	movx	@dptr,a
   0E63 E4                 1168 	clr	a
   0E64 A3                 1169 	inc	dptr
   0E65 F0                 1170 	movx	@dptr,a
   0E66 A3                 1171 	inc	dptr
   0E67 F0                 1172 	movx	@dptr,a
   0E68 A3                 1173 	inc	dptr
   0E69 F0                 1174 	movx	@dptr,a
                           1175 ;	genAssign
   0E6A 90 00 B3           1176 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   0E6D 74 01              1177 	mov	a,#0x01
   0E6F F0                 1178 	movx	@dptr,a
   0E70 E4                 1179 	clr	a
   0E71 A3                 1180 	inc	dptr
   0E72 F0                 1181 	movx	@dptr,a
   0E73 A3                 1182 	inc	dptr
   0E74 F0                 1183 	movx	@dptr,a
   0E75 A3                 1184 	inc	dptr
   0E76 F0                 1185 	movx	@dptr,a
                           1186 ;	genCall
   0E77 8A 82              1187 	mov	dpl,r2
   0E79 8B 83              1188 	mov	dph,r3
   0E7B 12 06 BA           1189 	lcall	_HW_set_32bit_reg_field
   0E7E                    1190 00106$:
                    04DD   1191 	C$core_watchdog.c$60$1$1 ==.
                    04DD   1192 	XG$WD_enable$0$0 ==.
   0E7E 22                 1193 	ret
                           1194 ;------------------------------------------------------------
                           1195 ;Allocation info for local variables in function 'WD_disable'
                           1196 ;------------------------------------------------------------
                           1197 ;instance                  Allocated with name '_WD_disable_instance_1_1'
                           1198 ;file_name                 Allocated with name '_WD_disable_file_name_3_3'
                           1199 ;------------------------------------------------------------
                    04DE   1200 	G$WD_disable$0$0 ==.
                    04DE   1201 	C$core_watchdog.c$68$1$1 ==.
                           1202 ;	../drivers/CoreWatchdog/core_watchdog.c:68: WD_disable
                           1203 ;	-----------------------------------------
                           1204 ;	 function WD_disable
                           1205 ;	-----------------------------------------
   0E7F                    1206 _WD_disable:
                           1207 ;	genReceive
   0E7F AA F0              1208 	mov	r2,b
   0E81 AB 83              1209 	mov	r3,dph
   0E83 E5 82              1210 	mov	a,dpl
   0E85 90 01 6E           1211 	mov	dptr,#_WD_disable_instance_1_1
   0E88 F0                 1212 	movx	@dptr,a
   0E89 A3                 1213 	inc	dptr
   0E8A EB                 1214 	mov	a,r3
   0E8B F0                 1215 	movx	@dptr,a
   0E8C A3                 1216 	inc	dptr
   0E8D EA                 1217 	mov	a,r2
   0E8E F0                 1218 	movx	@dptr,a
                    04EE   1219 	C$core_watchdog.c$73$2$2 ==.
                           1220 ;	../drivers/CoreWatchdog/core_watchdog.c:73: HAL_ASSERT( instance != NULL_instance )
                           1221 ;	genAssign
   0E8F 90 01 6E           1222 	mov	dptr,#_WD_disable_instance_1_1
   0E92 E0                 1223 	movx	a,@dptr
   0E93 FA                 1224 	mov	r2,a
   0E94 A3                 1225 	inc	dptr
   0E95 E0                 1226 	movx	a,@dptr
   0E96 FB                 1227 	mov	r3,a
   0E97 A3                 1228 	inc	dptr
   0E98 E0                 1229 	movx	a,@dptr
   0E99 FC                 1230 	mov	r4,a
                           1231 ;	genAssign
   0E9A 90 00 E3           1232 	mov	dptr,#_NULL_instance
   0E9D E0                 1233 	movx	a,@dptr
   0E9E FD                 1234 	mov	r5,a
   0E9F A3                 1235 	inc	dptr
   0EA0 E0                 1236 	movx	a,@dptr
   0EA1 FE                 1237 	mov	r6,a
   0EA2 A3                 1238 	inc	dptr
   0EA3 E0                 1239 	movx	a,@dptr
   0EA4 FF                 1240 	mov	r7,a
                           1241 ;	genCmpEq
                           1242 ;	gencjneshort
   0EA5 EA                 1243 	mov	a,r2
   0EA6 B5 05 0A           1244 	cjne	a,ar5,00109$
   0EA9 EB                 1245 	mov	a,r3
   0EAA B5 06 06           1246 	cjne	a,ar6,00109$
   0EAD EC                 1247 	mov	a,r4
   0EAE B5 07 02           1248 	cjne	a,ar7,00109$
   0EB1 80 03              1249 	sjmp	00110$
   0EB3                    1250 00109$:
   0EB3 02 0F BF           1251 	ljmp	00104$
   0EB6                    1252 00110$:
                           1253 ;	genPointerSet
                           1254 ;     genFarPointerSet
   0EB6 90 01 71           1255 	mov	dptr,#_WD_disable_file_name_3_3
   0EB9 74 2E              1256 	mov	a,#0x2E
   0EBB F0                 1257 	movx	@dptr,a
                           1258 ;	genPointerSet
                           1259 ;     genFarPointerSet
   0EBC 90 01 72           1260 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0001)
   0EBF 74 2E              1261 	mov	a,#0x2E
   0EC1 F0                 1262 	movx	@dptr,a
                           1263 ;	genPointerSet
                           1264 ;     genFarPointerSet
   0EC2 90 01 73           1265 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0002)
   0EC5 74 2F              1266 	mov	a,#0x2F
   0EC7 F0                 1267 	movx	@dptr,a
                           1268 ;	genPointerSet
                           1269 ;     genFarPointerSet
   0EC8 90 01 74           1270 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0003)
   0ECB 74 64              1271 	mov	a,#0x64
   0ECD F0                 1272 	movx	@dptr,a
                           1273 ;	genPointerSet
                           1274 ;     genFarPointerSet
   0ECE 90 01 75           1275 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0004)
   0ED1 74 72              1276 	mov	a,#0x72
   0ED3 F0                 1277 	movx	@dptr,a
                           1278 ;	genPointerSet
                           1279 ;     genFarPointerSet
   0ED4 90 01 76           1280 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0005)
   0ED7 74 69              1281 	mov	a,#0x69
   0ED9 F0                 1282 	movx	@dptr,a
                           1283 ;	genPointerSet
                           1284 ;     genFarPointerSet
   0EDA 90 01 77           1285 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0006)
   0EDD 74 76              1286 	mov	a,#0x76
   0EDF F0                 1287 	movx	@dptr,a
                           1288 ;	genPointerSet
                           1289 ;     genFarPointerSet
   0EE0 90 01 78           1290 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0007)
   0EE3 74 65              1291 	mov	a,#0x65
   0EE5 F0                 1292 	movx	@dptr,a
                           1293 ;	genPointerSet
                           1294 ;     genFarPointerSet
   0EE6 90 01 79           1295 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0008)
   0EE9 74 72              1296 	mov	a,#0x72
   0EEB F0                 1297 	movx	@dptr,a
                           1298 ;	genPointerSet
                           1299 ;     genFarPointerSet
   0EEC 90 01 7A           1300 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0009)
   0EEF 74 73              1301 	mov	a,#0x73
   0EF1 F0                 1302 	movx	@dptr,a
                           1303 ;	genPointerSet
                           1304 ;     genFarPointerSet
   0EF2 90 01 7B           1305 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000a)
   0EF5 74 2F              1306 	mov	a,#0x2F
   0EF7 F0                 1307 	movx	@dptr,a
                           1308 ;	genPointerSet
                           1309 ;     genFarPointerSet
   0EF8 90 01 7C           1310 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000b)
   0EFB 74 43              1311 	mov	a,#0x43
   0EFD F0                 1312 	movx	@dptr,a
                           1313 ;	genPointerSet
                           1314 ;     genFarPointerSet
   0EFE 90 01 7D           1315 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000c)
   0F01 74 6F              1316 	mov	a,#0x6F
   0F03 F0                 1317 	movx	@dptr,a
                           1318 ;	genPointerSet
                           1319 ;     genFarPointerSet
   0F04 90 01 7E           1320 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000d)
   0F07 74 72              1321 	mov	a,#0x72
   0F09 F0                 1322 	movx	@dptr,a
                           1323 ;	genPointerSet
                           1324 ;     genFarPointerSet
   0F0A 90 01 7F           1325 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000e)
   0F0D 74 65              1326 	mov	a,#0x65
   0F0F F0                 1327 	movx	@dptr,a
                           1328 ;	genPointerSet
                           1329 ;     genFarPointerSet
   0F10 90 01 80           1330 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000f)
   0F13 74 57              1331 	mov	a,#0x57
   0F15 F0                 1332 	movx	@dptr,a
                           1333 ;	genPointerSet
                           1334 ;     genFarPointerSet
   0F16 90 01 81           1335 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0010)
   0F19 74 61              1336 	mov	a,#0x61
   0F1B F0                 1337 	movx	@dptr,a
                           1338 ;	genPointerSet
                           1339 ;     genFarPointerSet
   0F1C 90 01 82           1340 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0011)
   0F1F 74 74              1341 	mov	a,#0x74
   0F21 F0                 1342 	movx	@dptr,a
                           1343 ;	genPointerSet
                           1344 ;     genFarPointerSet
   0F22 90 01 83           1345 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0012)
   0F25 74 63              1346 	mov	a,#0x63
   0F27 F0                 1347 	movx	@dptr,a
                           1348 ;	genPointerSet
                           1349 ;     genFarPointerSet
   0F28 90 01 84           1350 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0013)
   0F2B 74 68              1351 	mov	a,#0x68
   0F2D F0                 1352 	movx	@dptr,a
                           1353 ;	genPointerSet
                           1354 ;     genFarPointerSet
   0F2E 90 01 85           1355 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0014)
   0F31 74 64              1356 	mov	a,#0x64
   0F33 F0                 1357 	movx	@dptr,a
                           1358 ;	genPointerSet
                           1359 ;     genFarPointerSet
   0F34 90 01 86           1360 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0015)
   0F37 74 6F              1361 	mov	a,#0x6F
   0F39 F0                 1362 	movx	@dptr,a
                           1363 ;	genPointerSet
                           1364 ;     genFarPointerSet
   0F3A 90 01 87           1365 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0016)
   0F3D 74 67              1366 	mov	a,#0x67
   0F3F F0                 1367 	movx	@dptr,a
                           1368 ;	genPointerSet
                           1369 ;     genFarPointerSet
   0F40 90 01 88           1370 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0017)
   0F43 74 2F              1371 	mov	a,#0x2F
   0F45 F0                 1372 	movx	@dptr,a
                           1373 ;	genPointerSet
                           1374 ;     genFarPointerSet
   0F46 90 01 89           1375 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0018)
   0F49 74 63              1376 	mov	a,#0x63
   0F4B F0                 1377 	movx	@dptr,a
                           1378 ;	genPointerSet
                           1379 ;     genFarPointerSet
   0F4C 90 01 8A           1380 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0019)
   0F4F 74 6F              1381 	mov	a,#0x6F
   0F51 F0                 1382 	movx	@dptr,a
                           1383 ;	genPointerSet
                           1384 ;     genFarPointerSet
   0F52 90 01 8B           1385 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001a)
   0F55 74 72              1386 	mov	a,#0x72
   0F57 F0                 1387 	movx	@dptr,a
                           1388 ;	genPointerSet
                           1389 ;     genFarPointerSet
   0F58 90 01 8C           1390 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001b)
   0F5B 74 65              1391 	mov	a,#0x65
   0F5D F0                 1392 	movx	@dptr,a
                           1393 ;	genPointerSet
                           1394 ;     genFarPointerSet
   0F5E 90 01 8D           1395 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001c)
   0F61 74 5F              1396 	mov	a,#0x5F
   0F63 F0                 1397 	movx	@dptr,a
                           1398 ;	genPointerSet
                           1399 ;     genFarPointerSet
   0F64 90 01 8E           1400 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001d)
   0F67 74 77              1401 	mov	a,#0x77
   0F69 F0                 1402 	movx	@dptr,a
                           1403 ;	genPointerSet
                           1404 ;     genFarPointerSet
   0F6A 90 01 8F           1405 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001e)
   0F6D 74 61              1406 	mov	a,#0x61
   0F6F F0                 1407 	movx	@dptr,a
                           1408 ;	genPointerSet
                           1409 ;     genFarPointerSet
   0F70 90 01 90           1410 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001f)
   0F73 74 74              1411 	mov	a,#0x74
   0F75 F0                 1412 	movx	@dptr,a
                           1413 ;	genPointerSet
                           1414 ;     genFarPointerSet
   0F76 90 01 91           1415 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0020)
   0F79 74 63              1416 	mov	a,#0x63
   0F7B F0                 1417 	movx	@dptr,a
                           1418 ;	genPointerSet
                           1419 ;     genFarPointerSet
   0F7C 90 01 92           1420 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0021)
   0F7F 74 68              1421 	mov	a,#0x68
   0F81 F0                 1422 	movx	@dptr,a
                           1423 ;	genPointerSet
                           1424 ;     genFarPointerSet
   0F82 90 01 93           1425 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0022)
   0F85 74 64              1426 	mov	a,#0x64
   0F87 F0                 1427 	movx	@dptr,a
                           1428 ;	genPointerSet
                           1429 ;     genFarPointerSet
   0F88 90 01 94           1430 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0023)
   0F8B 74 6F              1431 	mov	a,#0x6F
   0F8D F0                 1432 	movx	@dptr,a
                           1433 ;	genPointerSet
                           1434 ;     genFarPointerSet
   0F8E 90 01 95           1435 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0024)
   0F91 74 67              1436 	mov	a,#0x67
   0F93 F0                 1437 	movx	@dptr,a
                           1438 ;	genPointerSet
                           1439 ;     genFarPointerSet
   0F94 90 01 96           1440 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0025)
   0F97 74 2E              1441 	mov	a,#0x2E
   0F99 F0                 1442 	movx	@dptr,a
                           1443 ;	genPointerSet
                           1444 ;     genFarPointerSet
   0F9A 90 01 97           1445 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0026)
   0F9D 74 63              1446 	mov	a,#0x63
   0F9F F0                 1447 	movx	@dptr,a
                           1448 ;	genPointerSet
                           1449 ;     genFarPointerSet
   0FA0 90 01 98           1450 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0027)
   0FA3 74 00              1451 	mov	a,#0x00
   0FA5 F0                 1452 	movx	@dptr,a
                           1453 ;	genAssign
   0FA6 90 00 8C           1454 	mov	dptr,#_HAL_assert_fail_PARM_2
   0FA9 74 49              1455 	mov	a,#0x49
   0FAB F0                 1456 	movx	@dptr,a
   0FAC E4                 1457 	clr	a
   0FAD A3                 1458 	inc	dptr
   0FAE F0                 1459 	movx	@dptr,a
   0FAF A3                 1460 	inc	dptr
   0FB0 F0                 1461 	movx	@dptr,a
   0FB1 A3                 1462 	inc	dptr
   0FB2 F0                 1463 	movx	@dptr,a
                           1464 ;	genCall
   0FB3 75 82 71           1465 	mov	dpl,#_WD_disable_file_name_3_3
   0FB6 75 83 01           1466 	mov	dph,#(_WD_disable_file_name_3_3 >> 8)
   0FB9 75 F0 00           1467 	mov	b,#0x00
   0FBC 12 05 F6           1468 	lcall	_HAL_assert_fail
   0FBF                    1469 00104$:
                    061E   1470 	C$core_watchdog.c$75$1$1 ==.
                           1471 ;	../drivers/CoreWatchdog/core_watchdog.c:75: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 0 );
                           1472 ;	genAssign
   0FBF 90 01 6E           1473 	mov	dptr,#_WD_disable_instance_1_1
   0FC2 E0                 1474 	movx	a,@dptr
   0FC3 FA                 1475 	mov	r2,a
   0FC4 A3                 1476 	inc	dptr
   0FC5 E0                 1477 	movx	a,@dptr
   0FC6 FB                 1478 	mov	r3,a
   0FC7 A3                 1479 	inc	dptr
   0FC8 E0                 1480 	movx	a,@dptr
   0FC9 FC                 1481 	mov	r4,a
                           1482 ;	genPointerGet
                           1483 ;	genGenPointerGet
   0FCA 8A 82              1484 	mov	dpl,r2
   0FCC 8B 83              1485 	mov	dph,r3
   0FCE 8C F0              1486 	mov	b,r4
   0FD0 12 61 48           1487 	lcall	__gptrget
   0FD3 FA                 1488 	mov	r2,a
   0FD4 A3                 1489 	inc	dptr
   0FD5 12 61 48           1490 	lcall	__gptrget
   0FD8 FB                 1491 	mov	r3,a
                           1492 ;	genPlus
                           1493 ;	genPlusIncr
   0FD9 74 08              1494 	mov	a,#0x08
   0FDB 25 02              1495 	add	a,ar2
   0FDD FA                 1496 	mov	r2,a
   0FDE 74 00              1497 	mov	a,#0x00
   0FE0 35 03              1498 	addc	a,ar3
   0FE2 FB                 1499 	mov	r3,a
                           1500 ;	genAssign
   0FE3 90 00 AE           1501 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   0FE6 74 04              1502 	mov	a,#0x04
   0FE8 F0                 1503 	movx	@dptr,a
                           1504 ;	genAssign
   0FE9 90 00 AF           1505 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   0FEC 74 10              1506 	mov	a,#0x10
   0FEE F0                 1507 	movx	@dptr,a
   0FEF E4                 1508 	clr	a
   0FF0 A3                 1509 	inc	dptr
   0FF1 F0                 1510 	movx	@dptr,a
   0FF2 A3                 1511 	inc	dptr
   0FF3 F0                 1512 	movx	@dptr,a
   0FF4 A3                 1513 	inc	dptr
   0FF5 F0                 1514 	movx	@dptr,a
                           1515 ;	genAssign
   0FF6 90 00 B3           1516 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   0FF9 E4                 1517 	clr	a
   0FFA F0                 1518 	movx	@dptr,a
   0FFB A3                 1519 	inc	dptr
   0FFC F0                 1520 	movx	@dptr,a
   0FFD A3                 1521 	inc	dptr
   0FFE F0                 1522 	movx	@dptr,a
   0FFF A3                 1523 	inc	dptr
   1000 F0                 1524 	movx	@dptr,a
                           1525 ;	genCall
   1001 8A 82              1526 	mov	dpl,r2
   1003 8B 83              1527 	mov	dph,r3
   1005 12 06 BA           1528 	lcall	_HW_set_32bit_reg_field
   1008                    1529 00106$:
                    0667   1530 	C$core_watchdog.c$76$1$1 ==.
                    0667   1531 	XG$WD_disable$0$0 ==.
   1008 22                 1532 	ret
                           1533 ;------------------------------------------------------------
                           1534 ;Allocation info for local variables in function 'WD_reload'
                           1535 ;------------------------------------------------------------
                           1536 ;instance                  Allocated with name '_WD_reload_instance_1_1'
                           1537 ;file_name                 Allocated with name '_WD_reload_file_name_3_3'
                           1538 ;------------------------------------------------------------
                    0668   1539 	G$WD_reload$0$0 ==.
                    0668   1540 	C$core_watchdog.c$84$1$1 ==.
                           1541 ;	../drivers/CoreWatchdog/core_watchdog.c:84: WD_reload
                           1542 ;	-----------------------------------------
                           1543 ;	 function WD_reload
                           1544 ;	-----------------------------------------
   1009                    1545 _WD_reload:
                           1546 ;	genReceive
   1009 AA F0              1547 	mov	r2,b
   100B AB 83              1548 	mov	r3,dph
   100D E5 82              1549 	mov	a,dpl
   100F 90 01 99           1550 	mov	dptr,#_WD_reload_instance_1_1
   1012 F0                 1551 	movx	@dptr,a
   1013 A3                 1552 	inc	dptr
   1014 EB                 1553 	mov	a,r3
   1015 F0                 1554 	movx	@dptr,a
   1016 A3                 1555 	inc	dptr
   1017 EA                 1556 	mov	a,r2
   1018 F0                 1557 	movx	@dptr,a
                    0678   1558 	C$core_watchdog.c$89$2$2 ==.
                           1559 ;	../drivers/CoreWatchdog/core_watchdog.c:89: HAL_ASSERT( instance != NULL_instance )
                           1560 ;	genAssign
   1019 90 01 99           1561 	mov	dptr,#_WD_reload_instance_1_1
   101C E0                 1562 	movx	a,@dptr
   101D FA                 1563 	mov	r2,a
   101E A3                 1564 	inc	dptr
   101F E0                 1565 	movx	a,@dptr
   1020 FB                 1566 	mov	r3,a
   1021 A3                 1567 	inc	dptr
   1022 E0                 1568 	movx	a,@dptr
   1023 FC                 1569 	mov	r4,a
                           1570 ;	genAssign
   1024 90 00 E3           1571 	mov	dptr,#_NULL_instance
   1027 E0                 1572 	movx	a,@dptr
   1028 FD                 1573 	mov	r5,a
   1029 A3                 1574 	inc	dptr
   102A E0                 1575 	movx	a,@dptr
   102B FE                 1576 	mov	r6,a
   102C A3                 1577 	inc	dptr
   102D E0                 1578 	movx	a,@dptr
   102E FF                 1579 	mov	r7,a
                           1580 ;	genCmpEq
                           1581 ;	gencjneshort
   102F EA                 1582 	mov	a,r2
   1030 B5 05 0A           1583 	cjne	a,ar5,00109$
   1033 EB                 1584 	mov	a,r3
   1034 B5 06 06           1585 	cjne	a,ar6,00109$
   1037 EC                 1586 	mov	a,r4
   1038 B5 07 02           1587 	cjne	a,ar7,00109$
   103B 80 03              1588 	sjmp	00110$
   103D                    1589 00109$:
   103D 02 11 49           1590 	ljmp	00104$
   1040                    1591 00110$:
                           1592 ;	genPointerSet
                           1593 ;     genFarPointerSet
   1040 90 01 9C           1594 	mov	dptr,#_WD_reload_file_name_3_3
   1043 74 2E              1595 	mov	a,#0x2E
   1045 F0                 1596 	movx	@dptr,a
                           1597 ;	genPointerSet
                           1598 ;     genFarPointerSet
   1046 90 01 9D           1599 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0001)
   1049 74 2E              1600 	mov	a,#0x2E
   104B F0                 1601 	movx	@dptr,a
                           1602 ;	genPointerSet
                           1603 ;     genFarPointerSet
   104C 90 01 9E           1604 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0002)
   104F 74 2F              1605 	mov	a,#0x2F
   1051 F0                 1606 	movx	@dptr,a
                           1607 ;	genPointerSet
                           1608 ;     genFarPointerSet
   1052 90 01 9F           1609 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0003)
   1055 74 64              1610 	mov	a,#0x64
   1057 F0                 1611 	movx	@dptr,a
                           1612 ;	genPointerSet
                           1613 ;     genFarPointerSet
   1058 90 01 A0           1614 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0004)
   105B 74 72              1615 	mov	a,#0x72
   105D F0                 1616 	movx	@dptr,a
                           1617 ;	genPointerSet
                           1618 ;     genFarPointerSet
   105E 90 01 A1           1619 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0005)
   1061 74 69              1620 	mov	a,#0x69
   1063 F0                 1621 	movx	@dptr,a
                           1622 ;	genPointerSet
                           1623 ;     genFarPointerSet
   1064 90 01 A2           1624 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0006)
   1067 74 76              1625 	mov	a,#0x76
   1069 F0                 1626 	movx	@dptr,a
                           1627 ;	genPointerSet
                           1628 ;     genFarPointerSet
   106A 90 01 A3           1629 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0007)
   106D 74 65              1630 	mov	a,#0x65
   106F F0                 1631 	movx	@dptr,a
                           1632 ;	genPointerSet
                           1633 ;     genFarPointerSet
   1070 90 01 A4           1634 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0008)
   1073 74 72              1635 	mov	a,#0x72
   1075 F0                 1636 	movx	@dptr,a
                           1637 ;	genPointerSet
                           1638 ;     genFarPointerSet
   1076 90 01 A5           1639 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0009)
   1079 74 73              1640 	mov	a,#0x73
   107B F0                 1641 	movx	@dptr,a
                           1642 ;	genPointerSet
                           1643 ;     genFarPointerSet
   107C 90 01 A6           1644 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000a)
   107F 74 2F              1645 	mov	a,#0x2F
   1081 F0                 1646 	movx	@dptr,a
                           1647 ;	genPointerSet
                           1648 ;     genFarPointerSet
   1082 90 01 A7           1649 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000b)
   1085 74 43              1650 	mov	a,#0x43
   1087 F0                 1651 	movx	@dptr,a
                           1652 ;	genPointerSet
                           1653 ;     genFarPointerSet
   1088 90 01 A8           1654 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000c)
   108B 74 6F              1655 	mov	a,#0x6F
   108D F0                 1656 	movx	@dptr,a
                           1657 ;	genPointerSet
                           1658 ;     genFarPointerSet
   108E 90 01 A9           1659 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000d)
   1091 74 72              1660 	mov	a,#0x72
   1093 F0                 1661 	movx	@dptr,a
                           1662 ;	genPointerSet
                           1663 ;     genFarPointerSet
   1094 90 01 AA           1664 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000e)
   1097 74 65              1665 	mov	a,#0x65
   1099 F0                 1666 	movx	@dptr,a
                           1667 ;	genPointerSet
                           1668 ;     genFarPointerSet
   109A 90 01 AB           1669 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000f)
   109D 74 57              1670 	mov	a,#0x57
   109F F0                 1671 	movx	@dptr,a
                           1672 ;	genPointerSet
                           1673 ;     genFarPointerSet
   10A0 90 01 AC           1674 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0010)
   10A3 74 61              1675 	mov	a,#0x61
   10A5 F0                 1676 	movx	@dptr,a
                           1677 ;	genPointerSet
                           1678 ;     genFarPointerSet
   10A6 90 01 AD           1679 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0011)
   10A9 74 74              1680 	mov	a,#0x74
   10AB F0                 1681 	movx	@dptr,a
                           1682 ;	genPointerSet
                           1683 ;     genFarPointerSet
   10AC 90 01 AE           1684 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0012)
   10AF 74 63              1685 	mov	a,#0x63
   10B1 F0                 1686 	movx	@dptr,a
                           1687 ;	genPointerSet
                           1688 ;     genFarPointerSet
   10B2 90 01 AF           1689 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0013)
   10B5 74 68              1690 	mov	a,#0x68
   10B7 F0                 1691 	movx	@dptr,a
                           1692 ;	genPointerSet
                           1693 ;     genFarPointerSet
   10B8 90 01 B0           1694 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0014)
   10BB 74 64              1695 	mov	a,#0x64
   10BD F0                 1696 	movx	@dptr,a
                           1697 ;	genPointerSet
                           1698 ;     genFarPointerSet
   10BE 90 01 B1           1699 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0015)
   10C1 74 6F              1700 	mov	a,#0x6F
   10C3 F0                 1701 	movx	@dptr,a
                           1702 ;	genPointerSet
                           1703 ;     genFarPointerSet
   10C4 90 01 B2           1704 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0016)
   10C7 74 67              1705 	mov	a,#0x67
   10C9 F0                 1706 	movx	@dptr,a
                           1707 ;	genPointerSet
                           1708 ;     genFarPointerSet
   10CA 90 01 B3           1709 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0017)
   10CD 74 2F              1710 	mov	a,#0x2F
   10CF F0                 1711 	movx	@dptr,a
                           1712 ;	genPointerSet
                           1713 ;     genFarPointerSet
   10D0 90 01 B4           1714 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0018)
   10D3 74 63              1715 	mov	a,#0x63
   10D5 F0                 1716 	movx	@dptr,a
                           1717 ;	genPointerSet
                           1718 ;     genFarPointerSet
   10D6 90 01 B5           1719 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0019)
   10D9 74 6F              1720 	mov	a,#0x6F
   10DB F0                 1721 	movx	@dptr,a
                           1722 ;	genPointerSet
                           1723 ;     genFarPointerSet
   10DC 90 01 B6           1724 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001a)
   10DF 74 72              1725 	mov	a,#0x72
   10E1 F0                 1726 	movx	@dptr,a
                           1727 ;	genPointerSet
                           1728 ;     genFarPointerSet
   10E2 90 01 B7           1729 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001b)
   10E5 74 65              1730 	mov	a,#0x65
   10E7 F0                 1731 	movx	@dptr,a
                           1732 ;	genPointerSet
                           1733 ;     genFarPointerSet
   10E8 90 01 B8           1734 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001c)
   10EB 74 5F              1735 	mov	a,#0x5F
   10ED F0                 1736 	movx	@dptr,a
                           1737 ;	genPointerSet
                           1738 ;     genFarPointerSet
   10EE 90 01 B9           1739 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001d)
   10F1 74 77              1740 	mov	a,#0x77
   10F3 F0                 1741 	movx	@dptr,a
                           1742 ;	genPointerSet
                           1743 ;     genFarPointerSet
   10F4 90 01 BA           1744 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001e)
   10F7 74 61              1745 	mov	a,#0x61
   10F9 F0                 1746 	movx	@dptr,a
                           1747 ;	genPointerSet
                           1748 ;     genFarPointerSet
   10FA 90 01 BB           1749 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001f)
   10FD 74 74              1750 	mov	a,#0x74
   10FF F0                 1751 	movx	@dptr,a
                           1752 ;	genPointerSet
                           1753 ;     genFarPointerSet
   1100 90 01 BC           1754 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0020)
   1103 74 63              1755 	mov	a,#0x63
   1105 F0                 1756 	movx	@dptr,a
                           1757 ;	genPointerSet
                           1758 ;     genFarPointerSet
   1106 90 01 BD           1759 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0021)
   1109 74 68              1760 	mov	a,#0x68
   110B F0                 1761 	movx	@dptr,a
                           1762 ;	genPointerSet
                           1763 ;     genFarPointerSet
   110C 90 01 BE           1764 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0022)
   110F 74 64              1765 	mov	a,#0x64
   1111 F0                 1766 	movx	@dptr,a
                           1767 ;	genPointerSet
                           1768 ;     genFarPointerSet
   1112 90 01 BF           1769 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0023)
   1115 74 6F              1770 	mov	a,#0x6F
   1117 F0                 1771 	movx	@dptr,a
                           1772 ;	genPointerSet
                           1773 ;     genFarPointerSet
   1118 90 01 C0           1774 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0024)
   111B 74 67              1775 	mov	a,#0x67
   111D F0                 1776 	movx	@dptr,a
                           1777 ;	genPointerSet
                           1778 ;     genFarPointerSet
   111E 90 01 C1           1779 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0025)
   1121 74 2E              1780 	mov	a,#0x2E
   1123 F0                 1781 	movx	@dptr,a
                           1782 ;	genPointerSet
                           1783 ;     genFarPointerSet
   1124 90 01 C2           1784 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0026)
   1127 74 63              1785 	mov	a,#0x63
   1129 F0                 1786 	movx	@dptr,a
                           1787 ;	genPointerSet
                           1788 ;     genFarPointerSet
   112A 90 01 C3           1789 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0027)
   112D 74 00              1790 	mov	a,#0x00
   112F F0                 1791 	movx	@dptr,a
                           1792 ;	genAssign
   1130 90 00 8C           1793 	mov	dptr,#_HAL_assert_fail_PARM_2
   1133 74 59              1794 	mov	a,#0x59
   1135 F0                 1795 	movx	@dptr,a
   1136 E4                 1796 	clr	a
   1137 A3                 1797 	inc	dptr
   1138 F0                 1798 	movx	@dptr,a
   1139 A3                 1799 	inc	dptr
   113A F0                 1800 	movx	@dptr,a
   113B A3                 1801 	inc	dptr
   113C F0                 1802 	movx	@dptr,a
                           1803 ;	genCall
   113D 75 82 9C           1804 	mov	dpl,#_WD_reload_file_name_3_3
   1140 75 83 01           1805 	mov	dph,#(_WD_reload_file_name_3_3 >> 8)
   1143 75 F0 00           1806 	mov	b,#0x00
   1146 12 05 F6           1807 	lcall	_HAL_assert_fail
   1149                    1808 00104$:
                    07A8   1809 	C$core_watchdog.c$91$1$1 ==.
                           1810 ;	../drivers/CoreWatchdog/core_watchdog.c:91: HAL_set_32bit_reg( instance->base_address, WDOGREFRESH, 1 );
                           1811 ;	genAssign
   1149 90 01 99           1812 	mov	dptr,#_WD_reload_instance_1_1
   114C E0                 1813 	movx	a,@dptr
   114D FA                 1814 	mov	r2,a
   114E A3                 1815 	inc	dptr
   114F E0                 1816 	movx	a,@dptr
   1150 FB                 1817 	mov	r3,a
   1151 A3                 1818 	inc	dptr
   1152 E0                 1819 	movx	a,@dptr
   1153 FC                 1820 	mov	r4,a
                           1821 ;	genPointerGet
                           1822 ;	genGenPointerGet
   1154 8A 82              1823 	mov	dpl,r2
   1156 8B 83              1824 	mov	dph,r3
   1158 8C F0              1825 	mov	b,r4
   115A 12 61 48           1826 	lcall	__gptrget
   115D FA                 1827 	mov	r2,a
   115E A3                 1828 	inc	dptr
   115F 12 61 48           1829 	lcall	__gptrget
   1162 FB                 1830 	mov	r3,a
                           1831 ;	genPlus
                           1832 ;	genPlusIncr
   1163 74 0C              1833 	mov	a,#0x0C
   1165 25 02              1834 	add	a,ar2
   1167 FA                 1835 	mov	r2,a
   1168 74 00              1836 	mov	a,#0x00
   116A 35 03              1837 	addc	a,ar3
   116C FB                 1838 	mov	r3,a
                           1839 ;	genAssign
   116D 90 00 AA           1840 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   1170 74 01              1841 	mov	a,#0x01
   1172 F0                 1842 	movx	@dptr,a
   1173 E4                 1843 	clr	a
   1174 A3                 1844 	inc	dptr
   1175 F0                 1845 	movx	@dptr,a
   1176 A3                 1846 	inc	dptr
   1177 F0                 1847 	movx	@dptr,a
   1178 A3                 1848 	inc	dptr
   1179 F0                 1849 	movx	@dptr,a
                           1850 ;	genCall
   117A 8A 82              1851 	mov	dpl,r2
   117C 8B 83              1852 	mov	dph,r3
   117E 12 06 62           1853 	lcall	_HW_set_32bit_reg
   1181                    1854 00106$:
                    07E0   1855 	C$core_watchdog.c$92$1$1 ==.
                    07E0   1856 	XG$WD_reload$0$0 ==.
   1181 22                 1857 	ret
                           1858 ;------------------------------------------------------------
                           1859 ;Allocation info for local variables in function 'WD_current_value'
                           1860 ;------------------------------------------------------------
                           1861 ;instance                  Allocated with name '_WD_current_value_instance_1_1'
                           1862 ;file_name                 Allocated with name '_WD_current_value_file_name_3_3'
                           1863 ;------------------------------------------------------------
                    07E1   1864 	G$WD_current_value$0$0 ==.
                    07E1   1865 	C$core_watchdog.c$100$1$1 ==.
                           1866 ;	../drivers/CoreWatchdog/core_watchdog.c:100: WD_current_value
                           1867 ;	-----------------------------------------
                           1868 ;	 function WD_current_value
                           1869 ;	-----------------------------------------
   1182                    1870 _WD_current_value:
                           1871 ;	genReceive
   1182 AA F0              1872 	mov	r2,b
   1184 AB 83              1873 	mov	r3,dph
   1186 E5 82              1874 	mov	a,dpl
   1188 90 01 C4           1875 	mov	dptr,#_WD_current_value_instance_1_1
   118B F0                 1876 	movx	@dptr,a
   118C A3                 1877 	inc	dptr
   118D EB                 1878 	mov	a,r3
   118E F0                 1879 	movx	@dptr,a
   118F A3                 1880 	inc	dptr
   1190 EA                 1881 	mov	a,r2
   1191 F0                 1882 	movx	@dptr,a
                    07F1   1883 	C$core_watchdog.c$105$2$2 ==.
                           1884 ;	../drivers/CoreWatchdog/core_watchdog.c:105: HAL_ASSERT( instance != NULL_instance )
                           1885 ;	genAssign
   1192 90 01 C4           1886 	mov	dptr,#_WD_current_value_instance_1_1
   1195 E0                 1887 	movx	a,@dptr
   1196 FA                 1888 	mov	r2,a
   1197 A3                 1889 	inc	dptr
   1198 E0                 1890 	movx	a,@dptr
   1199 FB                 1891 	mov	r3,a
   119A A3                 1892 	inc	dptr
   119B E0                 1893 	movx	a,@dptr
   119C FC                 1894 	mov	r4,a
                           1895 ;	genAssign
   119D 90 00 E3           1896 	mov	dptr,#_NULL_instance
   11A0 E0                 1897 	movx	a,@dptr
   11A1 FD                 1898 	mov	r5,a
   11A2 A3                 1899 	inc	dptr
   11A3 E0                 1900 	movx	a,@dptr
   11A4 FE                 1901 	mov	r6,a
   11A5 A3                 1902 	inc	dptr
   11A6 E0                 1903 	movx	a,@dptr
   11A7 FF                 1904 	mov	r7,a
                           1905 ;	genCmpEq
                           1906 ;	gencjneshort
   11A8 EA                 1907 	mov	a,r2
   11A9 B5 05 0A           1908 	cjne	a,ar5,00109$
   11AC EB                 1909 	mov	a,r3
   11AD B5 06 06           1910 	cjne	a,ar6,00109$
   11B0 EC                 1911 	mov	a,r4
   11B1 B5 07 02           1912 	cjne	a,ar7,00109$
   11B4 80 03              1913 	sjmp	00110$
   11B6                    1914 00109$:
   11B6 02 12 C2           1915 	ljmp	00104$
   11B9                    1916 00110$:
                           1917 ;	genPointerSet
                           1918 ;     genFarPointerSet
   11B9 90 01 C7           1919 	mov	dptr,#_WD_current_value_file_name_3_3
   11BC 74 2E              1920 	mov	a,#0x2E
   11BE F0                 1921 	movx	@dptr,a
                           1922 ;	genPointerSet
                           1923 ;     genFarPointerSet
   11BF 90 01 C8           1924 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0001)
   11C2 74 2E              1925 	mov	a,#0x2E
   11C4 F0                 1926 	movx	@dptr,a
                           1927 ;	genPointerSet
                           1928 ;     genFarPointerSet
   11C5 90 01 C9           1929 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0002)
   11C8 74 2F              1930 	mov	a,#0x2F
   11CA F0                 1931 	movx	@dptr,a
                           1932 ;	genPointerSet
                           1933 ;     genFarPointerSet
   11CB 90 01 CA           1934 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0003)
   11CE 74 64              1935 	mov	a,#0x64
   11D0 F0                 1936 	movx	@dptr,a
                           1937 ;	genPointerSet
                           1938 ;     genFarPointerSet
   11D1 90 01 CB           1939 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0004)
   11D4 74 72              1940 	mov	a,#0x72
   11D6 F0                 1941 	movx	@dptr,a
                           1942 ;	genPointerSet
                           1943 ;     genFarPointerSet
   11D7 90 01 CC           1944 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0005)
   11DA 74 69              1945 	mov	a,#0x69
   11DC F0                 1946 	movx	@dptr,a
                           1947 ;	genPointerSet
                           1948 ;     genFarPointerSet
   11DD 90 01 CD           1949 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0006)
   11E0 74 76              1950 	mov	a,#0x76
   11E2 F0                 1951 	movx	@dptr,a
                           1952 ;	genPointerSet
                           1953 ;     genFarPointerSet
   11E3 90 01 CE           1954 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0007)
   11E6 74 65              1955 	mov	a,#0x65
   11E8 F0                 1956 	movx	@dptr,a
                           1957 ;	genPointerSet
                           1958 ;     genFarPointerSet
   11E9 90 01 CF           1959 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0008)
   11EC 74 72              1960 	mov	a,#0x72
   11EE F0                 1961 	movx	@dptr,a
                           1962 ;	genPointerSet
                           1963 ;     genFarPointerSet
   11EF 90 01 D0           1964 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0009)
   11F2 74 73              1965 	mov	a,#0x73
   11F4 F0                 1966 	movx	@dptr,a
                           1967 ;	genPointerSet
                           1968 ;     genFarPointerSet
   11F5 90 01 D1           1969 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000a)
   11F8 74 2F              1970 	mov	a,#0x2F
   11FA F0                 1971 	movx	@dptr,a
                           1972 ;	genPointerSet
                           1973 ;     genFarPointerSet
   11FB 90 01 D2           1974 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000b)
   11FE 74 43              1975 	mov	a,#0x43
   1200 F0                 1976 	movx	@dptr,a
                           1977 ;	genPointerSet
                           1978 ;     genFarPointerSet
   1201 90 01 D3           1979 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000c)
   1204 74 6F              1980 	mov	a,#0x6F
   1206 F0                 1981 	movx	@dptr,a
                           1982 ;	genPointerSet
                           1983 ;     genFarPointerSet
   1207 90 01 D4           1984 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000d)
   120A 74 72              1985 	mov	a,#0x72
   120C F0                 1986 	movx	@dptr,a
                           1987 ;	genPointerSet
                           1988 ;     genFarPointerSet
   120D 90 01 D5           1989 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000e)
   1210 74 65              1990 	mov	a,#0x65
   1212 F0                 1991 	movx	@dptr,a
                           1992 ;	genPointerSet
                           1993 ;     genFarPointerSet
   1213 90 01 D6           1994 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000f)
   1216 74 57              1995 	mov	a,#0x57
   1218 F0                 1996 	movx	@dptr,a
                           1997 ;	genPointerSet
                           1998 ;     genFarPointerSet
   1219 90 01 D7           1999 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0010)
   121C 74 61              2000 	mov	a,#0x61
   121E F0                 2001 	movx	@dptr,a
                           2002 ;	genPointerSet
                           2003 ;     genFarPointerSet
   121F 90 01 D8           2004 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0011)
   1222 74 74              2005 	mov	a,#0x74
   1224 F0                 2006 	movx	@dptr,a
                           2007 ;	genPointerSet
                           2008 ;     genFarPointerSet
   1225 90 01 D9           2009 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0012)
   1228 74 63              2010 	mov	a,#0x63
   122A F0                 2011 	movx	@dptr,a
                           2012 ;	genPointerSet
                           2013 ;     genFarPointerSet
   122B 90 01 DA           2014 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0013)
   122E 74 68              2015 	mov	a,#0x68
   1230 F0                 2016 	movx	@dptr,a
                           2017 ;	genPointerSet
                           2018 ;     genFarPointerSet
   1231 90 01 DB           2019 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0014)
   1234 74 64              2020 	mov	a,#0x64
   1236 F0                 2021 	movx	@dptr,a
                           2022 ;	genPointerSet
                           2023 ;     genFarPointerSet
   1237 90 01 DC           2024 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0015)
   123A 74 6F              2025 	mov	a,#0x6F
   123C F0                 2026 	movx	@dptr,a
                           2027 ;	genPointerSet
                           2028 ;     genFarPointerSet
   123D 90 01 DD           2029 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0016)
   1240 74 67              2030 	mov	a,#0x67
   1242 F0                 2031 	movx	@dptr,a
                           2032 ;	genPointerSet
                           2033 ;     genFarPointerSet
   1243 90 01 DE           2034 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0017)
   1246 74 2F              2035 	mov	a,#0x2F
   1248 F0                 2036 	movx	@dptr,a
                           2037 ;	genPointerSet
                           2038 ;     genFarPointerSet
   1249 90 01 DF           2039 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0018)
   124C 74 63              2040 	mov	a,#0x63
   124E F0                 2041 	movx	@dptr,a
                           2042 ;	genPointerSet
                           2043 ;     genFarPointerSet
   124F 90 01 E0           2044 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0019)
   1252 74 6F              2045 	mov	a,#0x6F
   1254 F0                 2046 	movx	@dptr,a
                           2047 ;	genPointerSet
                           2048 ;     genFarPointerSet
   1255 90 01 E1           2049 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001a)
   1258 74 72              2050 	mov	a,#0x72
   125A F0                 2051 	movx	@dptr,a
                           2052 ;	genPointerSet
                           2053 ;     genFarPointerSet
   125B 90 01 E2           2054 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001b)
   125E 74 65              2055 	mov	a,#0x65
   1260 F0                 2056 	movx	@dptr,a
                           2057 ;	genPointerSet
                           2058 ;     genFarPointerSet
   1261 90 01 E3           2059 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001c)
   1264 74 5F              2060 	mov	a,#0x5F
   1266 F0                 2061 	movx	@dptr,a
                           2062 ;	genPointerSet
                           2063 ;     genFarPointerSet
   1267 90 01 E4           2064 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001d)
   126A 74 77              2065 	mov	a,#0x77
   126C F0                 2066 	movx	@dptr,a
                           2067 ;	genPointerSet
                           2068 ;     genFarPointerSet
   126D 90 01 E5           2069 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001e)
   1270 74 61              2070 	mov	a,#0x61
   1272 F0                 2071 	movx	@dptr,a
                           2072 ;	genPointerSet
                           2073 ;     genFarPointerSet
   1273 90 01 E6           2074 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001f)
   1276 74 74              2075 	mov	a,#0x74
   1278 F0                 2076 	movx	@dptr,a
                           2077 ;	genPointerSet
                           2078 ;     genFarPointerSet
   1279 90 01 E7           2079 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0020)
   127C 74 63              2080 	mov	a,#0x63
   127E F0                 2081 	movx	@dptr,a
                           2082 ;	genPointerSet
                           2083 ;     genFarPointerSet
   127F 90 01 E8           2084 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0021)
   1282 74 68              2085 	mov	a,#0x68
   1284 F0                 2086 	movx	@dptr,a
                           2087 ;	genPointerSet
                           2088 ;     genFarPointerSet
   1285 90 01 E9           2089 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0022)
   1288 74 64              2090 	mov	a,#0x64
   128A F0                 2091 	movx	@dptr,a
                           2092 ;	genPointerSet
                           2093 ;     genFarPointerSet
   128B 90 01 EA           2094 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0023)
   128E 74 6F              2095 	mov	a,#0x6F
   1290 F0                 2096 	movx	@dptr,a
                           2097 ;	genPointerSet
                           2098 ;     genFarPointerSet
   1291 90 01 EB           2099 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0024)
   1294 74 67              2100 	mov	a,#0x67
   1296 F0                 2101 	movx	@dptr,a
                           2102 ;	genPointerSet
                           2103 ;     genFarPointerSet
   1297 90 01 EC           2104 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0025)
   129A 74 2E              2105 	mov	a,#0x2E
   129C F0                 2106 	movx	@dptr,a
                           2107 ;	genPointerSet
                           2108 ;     genFarPointerSet
   129D 90 01 ED           2109 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0026)
   12A0 74 63              2110 	mov	a,#0x63
   12A2 F0                 2111 	movx	@dptr,a
                           2112 ;	genPointerSet
                           2113 ;     genFarPointerSet
   12A3 90 01 EE           2114 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0027)
   12A6 74 00              2115 	mov	a,#0x00
   12A8 F0                 2116 	movx	@dptr,a
                           2117 ;	genAssign
   12A9 90 00 8C           2118 	mov	dptr,#_HAL_assert_fail_PARM_2
   12AC 74 69              2119 	mov	a,#0x69
   12AE F0                 2120 	movx	@dptr,a
   12AF E4                 2121 	clr	a
   12B0 A3                 2122 	inc	dptr
   12B1 F0                 2123 	movx	@dptr,a
   12B2 A3                 2124 	inc	dptr
   12B3 F0                 2125 	movx	@dptr,a
   12B4 A3                 2126 	inc	dptr
   12B5 F0                 2127 	movx	@dptr,a
                           2128 ;	genCall
   12B6 75 82 C7           2129 	mov	dpl,#_WD_current_value_file_name_3_3
   12B9 75 83 01           2130 	mov	dph,#(_WD_current_value_file_name_3_3 >> 8)
   12BC 75 F0 00           2131 	mov	b,#0x00
   12BF 12 05 F6           2132 	lcall	_HAL_assert_fail
   12C2                    2133 00104$:
                    0921   2134 	C$core_watchdog.c$107$1$1 ==.
                           2135 ;	../drivers/CoreWatchdog/core_watchdog.c:107: return HAL_get_32bit_reg( instance->base_address, WDOGVALUE );
                           2136 ;	genAssign
   12C2 90 01 C4           2137 	mov	dptr,#_WD_current_value_instance_1_1
   12C5 E0                 2138 	movx	a,@dptr
   12C6 FA                 2139 	mov	r2,a
   12C7 A3                 2140 	inc	dptr
   12C8 E0                 2141 	movx	a,@dptr
   12C9 FB                 2142 	mov	r3,a
   12CA A3                 2143 	inc	dptr
   12CB E0                 2144 	movx	a,@dptr
   12CC FC                 2145 	mov	r4,a
                           2146 ;	genPointerGet
                           2147 ;	genGenPointerGet
   12CD 8A 82              2148 	mov	dpl,r2
   12CF 8B 83              2149 	mov	dph,r3
   12D1 8C F0              2150 	mov	b,r4
   12D3 12 61 48           2151 	lcall	__gptrget
   12D6 FA                 2152 	mov	r2,a
   12D7 A3                 2153 	inc	dptr
   12D8 12 61 48           2154 	lcall	__gptrget
   12DB FB                 2155 	mov	r3,a
                           2156 ;	genPlus
                           2157 ;	genPlusIncr
   12DC 74 04              2158 	mov	a,#0x04
   12DE 25 02              2159 	add	a,ar2
   12E0 FA                 2160 	mov	r2,a
   12E1 74 00              2161 	mov	a,#0x00
   12E3 35 03              2162 	addc	a,ar3
   12E5 FB                 2163 	mov	r3,a
                           2164 ;	genCall
   12E6 8A 82              2165 	mov	dpl,r2
   12E8 8B 83              2166 	mov	dph,r3
   12EA 12 06 56           2167 	lcall	_HW_get_32bit_reg
   12ED AA 82              2168 	mov	r2,dpl
   12EF AB 83              2169 	mov	r3,dph
   12F1 AC F0              2170 	mov	r4,b
   12F3 FD                 2171 	mov	r5,a
                           2172 ;	genRet
   12F4 8A 82              2173 	mov	dpl,r2
   12F6 8B 83              2174 	mov	dph,r3
   12F8 8C F0              2175 	mov	b,r4
   12FA ED                 2176 	mov	a,r5
   12FB                    2177 00106$:
                    095A   2178 	C$core_watchdog.c$108$1$1 ==.
                    095A   2179 	XG$WD_current_value$0$0 ==.
   12FB 22                 2180 	ret
                           2181 	.area CSEG    (CODE)
                           2182 	.area CONST   (CODE)
                           2183 	.area XINIT   (CODE)
                           2184 	.area CABS    (ABS,CODE)
