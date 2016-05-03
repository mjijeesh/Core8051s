                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Tue May 03 17:52:20 2016
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
   0019                      38 _WD_init_sloc0_1_0:
   0019                      39 	.ds 4
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
   05D6                      66 _NULL_instance:
   05D6                      67 	.ds 3
                    0003     68 LWD_init$base$1$1==.
   05D9                      69 _WD_init_PARM_2:
   05D9                      70 	.ds 2
                    0005     71 LWD_init$value$1$1==.
   05DB                      72 _WD_init_PARM_3:
   05DB                      73 	.ds 4
                    0009     74 LWD_init$scale$1$1==.
   05DF                      75 _WD_init_PARM_4:
   05DF                      76 	.ds 4
                    000D     77 LWD_init$instance$1$1==.
   05E3                      78 _WD_init_instance_1_1:
   05E3                      79 	.ds 3
                    0010     80 LWD_init$file_name$3$3==.
   05E6                      81 _WD_init_file_name_3_3:
   05E6                      82 	.ds 40
                    0038     83 LWD_init$file_name$3$5==.
   060E                      84 _WD_init_file_name_3_5:
   060E                      85 	.ds 40
                    0060     86 LWD_enable$instance$1$1==.
   0636                      87 _WD_enable_instance_1_1:
   0636                      88 	.ds 3
                    0063     89 LWD_enable$file_name$3$3==.
   0639                      90 _WD_enable_file_name_3_3:
   0639                      91 	.ds 40
                    008B     92 LWD_disable$instance$1$1==.
   0661                      93 _WD_disable_instance_1_1:
   0661                      94 	.ds 3
                    008E     95 LWD_disable$file_name$3$3==.
   0664                      96 _WD_disable_file_name_3_3:
   0664                      97 	.ds 40
                    00B6     98 LWD_reload$instance$1$1==.
   068C                      99 _WD_reload_instance_1_1:
   068C                     100 	.ds 3
                    00B9    101 LWD_reload$file_name$3$3==.
   068F                     102 _WD_reload_file_name_3_3:
   068F                     103 	.ds 40
                    00E1    104 LWD_current_value$instance$1$1==.
   06B7                     105 _WD_current_value_instance_1_1:
   06B7                     106 	.ds 3
                    00E4    107 LWD_current_value$file_name$3$3==.
   06BA                     108 _WD_current_value_file_name_3_3:
   06BA                     109 	.ds 40
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
   1EEA                     157 _WD_init:
                    0002    158 	ar2 = 0x02
                    0003    159 	ar3 = 0x03
                    0004    160 	ar4 = 0x04
                    0005    161 	ar5 = 0x05
                    0006    162 	ar6 = 0x06
                    0007    163 	ar7 = 0x07
                    0000    164 	ar0 = 0x00
                    0001    165 	ar1 = 0x01
                            166 ;	genReceive
   1EEA AA F0               167 	mov	r2,b
   1EEC AB 83               168 	mov	r3,dph
   1EEE E5 82               169 	mov	a,dpl
   1EF0 90 05 E3            170 	mov	dptr,#_WD_init_instance_1_1
   1EF3 F0                  171 	movx	@dptr,a
   1EF4 A3                  172 	inc	dptr
   1EF5 EB                  173 	mov	a,r3
   1EF6 F0                  174 	movx	@dptr,a
   1EF7 A3                  175 	inc	dptr
   1EF8 EA                  176 	mov	a,r2
   1EF9 F0                  177 	movx	@dptr,a
                    0010    178 	C$core_watchdog.c$34$2$2 ==.
                            179 ;	../drivers/CoreWatchdog/core_watchdog.c:34: HAL_ASSERT( instance != NULL_instance )
                            180 ;	genAssign
   1EFA 90 05 E3            181 	mov	dptr,#_WD_init_instance_1_1
   1EFD E0                  182 	movx	a,@dptr
   1EFE FA                  183 	mov	r2,a
   1EFF A3                  184 	inc	dptr
   1F00 E0                  185 	movx	a,@dptr
   1F01 FB                  186 	mov	r3,a
   1F02 A3                  187 	inc	dptr
   1F03 E0                  188 	movx	a,@dptr
   1F04 FC                  189 	mov	r4,a
                            190 ;	genAssign
   1F05 90 05 D6            191 	mov	dptr,#_NULL_instance
   1F08 E0                  192 	movx	a,@dptr
   1F09 FD                  193 	mov	r5,a
   1F0A A3                  194 	inc	dptr
   1F0B E0                  195 	movx	a,@dptr
   1F0C FE                  196 	mov	r6,a
   1F0D A3                  197 	inc	dptr
   1F0E E0                  198 	movx	a,@dptr
   1F0F FF                  199 	mov	r7,a
                            200 ;	genCmpEq
                            201 ;	gencjneshort
   1F10 EA                  202 	mov	a,r2
   1F11 B5 05 0A            203 	cjne	a,ar5,00115$
   1F14 EB                  204 	mov	a,r3
   1F15 B5 06 06            205 	cjne	a,ar6,00115$
   1F18 EC                  206 	mov	a,r4
   1F19 B5 07 02            207 	cjne	a,ar7,00115$
   1F1C 80 03               208 	sjmp	00116$
   1F1E                     209 00115$:
   1F1E 02 20 2A            210 	ljmp	00104$
   1F21                     211 00116$:
                            212 ;	genPointerSet
                            213 ;     genFarPointerSet
   1F21 90 05 E6            214 	mov	dptr,#_WD_init_file_name_3_3
   1F24 74 2E               215 	mov	a,#0x2E
   1F26 F0                  216 	movx	@dptr,a
                            217 ;	genPointerSet
                            218 ;     genFarPointerSet
   1F27 90 05 E7            219 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0001)
   1F2A 74 2E               220 	mov	a,#0x2E
   1F2C F0                  221 	movx	@dptr,a
                            222 ;	genPointerSet
                            223 ;     genFarPointerSet
   1F2D 90 05 E8            224 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0002)
   1F30 74 2F               225 	mov	a,#0x2F
   1F32 F0                  226 	movx	@dptr,a
                            227 ;	genPointerSet
                            228 ;     genFarPointerSet
   1F33 90 05 E9            229 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0003)
   1F36 74 64               230 	mov	a,#0x64
   1F38 F0                  231 	movx	@dptr,a
                            232 ;	genPointerSet
                            233 ;     genFarPointerSet
   1F39 90 05 EA            234 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0004)
   1F3C 74 72               235 	mov	a,#0x72
   1F3E F0                  236 	movx	@dptr,a
                            237 ;	genPointerSet
                            238 ;     genFarPointerSet
   1F3F 90 05 EB            239 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0005)
   1F42 74 69               240 	mov	a,#0x69
   1F44 F0                  241 	movx	@dptr,a
                            242 ;	genPointerSet
                            243 ;     genFarPointerSet
   1F45 90 05 EC            244 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0006)
   1F48 74 76               245 	mov	a,#0x76
   1F4A F0                  246 	movx	@dptr,a
                            247 ;	genPointerSet
                            248 ;     genFarPointerSet
   1F4B 90 05 ED            249 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0007)
   1F4E 74 65               250 	mov	a,#0x65
   1F50 F0                  251 	movx	@dptr,a
                            252 ;	genPointerSet
                            253 ;     genFarPointerSet
   1F51 90 05 EE            254 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0008)
   1F54 74 72               255 	mov	a,#0x72
   1F56 F0                  256 	movx	@dptr,a
                            257 ;	genPointerSet
                            258 ;     genFarPointerSet
   1F57 90 05 EF            259 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0009)
   1F5A 74 73               260 	mov	a,#0x73
   1F5C F0                  261 	movx	@dptr,a
                            262 ;	genPointerSet
                            263 ;     genFarPointerSet
   1F5D 90 05 F0            264 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000a)
   1F60 74 2F               265 	mov	a,#0x2F
   1F62 F0                  266 	movx	@dptr,a
                            267 ;	genPointerSet
                            268 ;     genFarPointerSet
   1F63 90 05 F1            269 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000b)
   1F66 74 43               270 	mov	a,#0x43
   1F68 F0                  271 	movx	@dptr,a
                            272 ;	genPointerSet
                            273 ;     genFarPointerSet
   1F69 90 05 F2            274 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000c)
   1F6C 74 6F               275 	mov	a,#0x6F
   1F6E F0                  276 	movx	@dptr,a
                            277 ;	genPointerSet
                            278 ;     genFarPointerSet
   1F6F 90 05 F3            279 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000d)
   1F72 74 72               280 	mov	a,#0x72
   1F74 F0                  281 	movx	@dptr,a
                            282 ;	genPointerSet
                            283 ;     genFarPointerSet
   1F75 90 05 F4            284 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000e)
   1F78 74 65               285 	mov	a,#0x65
   1F7A F0                  286 	movx	@dptr,a
                            287 ;	genPointerSet
                            288 ;     genFarPointerSet
   1F7B 90 05 F5            289 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000f)
   1F7E 74 57               290 	mov	a,#0x57
   1F80 F0                  291 	movx	@dptr,a
                            292 ;	genPointerSet
                            293 ;     genFarPointerSet
   1F81 90 05 F6            294 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0010)
   1F84 74 61               295 	mov	a,#0x61
   1F86 F0                  296 	movx	@dptr,a
                            297 ;	genPointerSet
                            298 ;     genFarPointerSet
   1F87 90 05 F7            299 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0011)
   1F8A 74 74               300 	mov	a,#0x74
   1F8C F0                  301 	movx	@dptr,a
                            302 ;	genPointerSet
                            303 ;     genFarPointerSet
   1F8D 90 05 F8            304 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0012)
   1F90 74 63               305 	mov	a,#0x63
   1F92 F0                  306 	movx	@dptr,a
                            307 ;	genPointerSet
                            308 ;     genFarPointerSet
   1F93 90 05 F9            309 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0013)
   1F96 74 68               310 	mov	a,#0x68
   1F98 F0                  311 	movx	@dptr,a
                            312 ;	genPointerSet
                            313 ;     genFarPointerSet
   1F99 90 05 FA            314 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0014)
   1F9C 74 64               315 	mov	a,#0x64
   1F9E F0                  316 	movx	@dptr,a
                            317 ;	genPointerSet
                            318 ;     genFarPointerSet
   1F9F 90 05 FB            319 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0015)
   1FA2 74 6F               320 	mov	a,#0x6F
   1FA4 F0                  321 	movx	@dptr,a
                            322 ;	genPointerSet
                            323 ;     genFarPointerSet
   1FA5 90 05 FC            324 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0016)
   1FA8 74 67               325 	mov	a,#0x67
   1FAA F0                  326 	movx	@dptr,a
                            327 ;	genPointerSet
                            328 ;     genFarPointerSet
   1FAB 90 05 FD            329 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0017)
   1FAE 74 2F               330 	mov	a,#0x2F
   1FB0 F0                  331 	movx	@dptr,a
                            332 ;	genPointerSet
                            333 ;     genFarPointerSet
   1FB1 90 05 FE            334 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0018)
   1FB4 74 63               335 	mov	a,#0x63
   1FB6 F0                  336 	movx	@dptr,a
                            337 ;	genPointerSet
                            338 ;     genFarPointerSet
   1FB7 90 05 FF            339 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0019)
   1FBA 74 6F               340 	mov	a,#0x6F
   1FBC F0                  341 	movx	@dptr,a
                            342 ;	genPointerSet
                            343 ;     genFarPointerSet
   1FBD 90 06 00            344 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001a)
   1FC0 74 72               345 	mov	a,#0x72
   1FC2 F0                  346 	movx	@dptr,a
                            347 ;	genPointerSet
                            348 ;     genFarPointerSet
   1FC3 90 06 01            349 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001b)
   1FC6 74 65               350 	mov	a,#0x65
   1FC8 F0                  351 	movx	@dptr,a
                            352 ;	genPointerSet
                            353 ;     genFarPointerSet
   1FC9 90 06 02            354 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001c)
   1FCC 74 5F               355 	mov	a,#0x5F
   1FCE F0                  356 	movx	@dptr,a
                            357 ;	genPointerSet
                            358 ;     genFarPointerSet
   1FCF 90 06 03            359 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001d)
   1FD2 74 77               360 	mov	a,#0x77
   1FD4 F0                  361 	movx	@dptr,a
                            362 ;	genPointerSet
                            363 ;     genFarPointerSet
   1FD5 90 06 04            364 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001e)
   1FD8 74 61               365 	mov	a,#0x61
   1FDA F0                  366 	movx	@dptr,a
                            367 ;	genPointerSet
                            368 ;     genFarPointerSet
   1FDB 90 06 05            369 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001f)
   1FDE 74 74               370 	mov	a,#0x74
   1FE0 F0                  371 	movx	@dptr,a
                            372 ;	genPointerSet
                            373 ;     genFarPointerSet
   1FE1 90 06 06            374 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0020)
   1FE4 74 63               375 	mov	a,#0x63
   1FE6 F0                  376 	movx	@dptr,a
                            377 ;	genPointerSet
                            378 ;     genFarPointerSet
   1FE7 90 06 07            379 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0021)
   1FEA 74 68               380 	mov	a,#0x68
   1FEC F0                  381 	movx	@dptr,a
                            382 ;	genPointerSet
                            383 ;     genFarPointerSet
   1FED 90 06 08            384 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0022)
   1FF0 74 64               385 	mov	a,#0x64
   1FF2 F0                  386 	movx	@dptr,a
                            387 ;	genPointerSet
                            388 ;     genFarPointerSet
   1FF3 90 06 09            389 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0023)
   1FF6 74 6F               390 	mov	a,#0x6F
   1FF8 F0                  391 	movx	@dptr,a
                            392 ;	genPointerSet
                            393 ;     genFarPointerSet
   1FF9 90 06 0A            394 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0024)
   1FFC 74 67               395 	mov	a,#0x67
   1FFE F0                  396 	movx	@dptr,a
                            397 ;	genPointerSet
                            398 ;     genFarPointerSet
   1FFF 90 06 0B            399 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0025)
   2002 74 2E               400 	mov	a,#0x2E
   2004 F0                  401 	movx	@dptr,a
                            402 ;	genPointerSet
                            403 ;     genFarPointerSet
   2005 90 06 0C            404 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0026)
   2008 74 63               405 	mov	a,#0x63
   200A F0                  406 	movx	@dptr,a
                            407 ;	genPointerSet
                            408 ;     genFarPointerSet
   200B 90 06 0D            409 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0027)
   200E 74 00               410 	mov	a,#0x00
   2010 F0                  411 	movx	@dptr,a
                            412 ;	genAssign
   2011 90 05 7F            413 	mov	dptr,#_HAL_assert_fail_PARM_2
   2014 74 22               414 	mov	a,#0x22
   2016 F0                  415 	movx	@dptr,a
   2017 E4                  416 	clr	a
   2018 A3                  417 	inc	dptr
   2019 F0                  418 	movx	@dptr,a
   201A A3                  419 	inc	dptr
   201B F0                  420 	movx	@dptr,a
   201C A3                  421 	inc	dptr
   201D F0                  422 	movx	@dptr,a
                            423 ;	genCall
   201E 75 82 E6            424 	mov	dpl,#_WD_init_file_name_3_3
   2021 75 83 05            425 	mov	dph,#(_WD_init_file_name_3_3 >> 8)
   2024 75 F0 00            426 	mov	b,#0x00
   2027 12 1B 3F            427 	lcall	_HAL_assert_fail
   202A                     428 00104$:
                    0140    429 	C$core_watchdog.c$35$2$4 ==.
                            430 ;	../drivers/CoreWatchdog/core_watchdog.c:35: HAL_ASSERT( scale <= WD_PRESCALER_DIV_1024 )
                            431 ;	genAssign
   202A 90 05 DF            432 	mov	dptr,#_WD_init_PARM_4
   202D E0                  433 	movx	a,@dptr
   202E F5 19               434 	mov	_WD_init_sloc0_1_0,a
   2030 A3                  435 	inc	dptr
   2031 E0                  436 	movx	a,@dptr
   2032 F5 1A               437 	mov	(_WD_init_sloc0_1_0 + 1),a
   2034 A3                  438 	inc	dptr
   2035 E0                  439 	movx	a,@dptr
   2036 F5 1B               440 	mov	(_WD_init_sloc0_1_0 + 2),a
   2038 A3                  441 	inc	dptr
   2039 E0                  442 	movx	a,@dptr
   203A F5 1C               443 	mov	(_WD_init_sloc0_1_0 + 3),a
                            444 ;	genCmpGt
                            445 ;	genCmp
   203C C3                  446 	clr	c
   203D 74 09               447 	mov	a,#0x09
   203F 95 19               448 	subb	a,_WD_init_sloc0_1_0
   2041 74 00               449 	mov	a,#0x00
   2043 95 1A               450 	subb	a,(_WD_init_sloc0_1_0 + 1)
   2045 74 00               451 	mov	a,#0x00
   2047 95 1B               452 	subb	a,(_WD_init_sloc0_1_0 + 2)
   2049 74 00               453 	mov	a,#0x00
   204B 95 1C               454 	subb	a,(_WD_init_sloc0_1_0 + 3)
                            455 ;	genIfxJump
   204D 40 03               456 	jc	00117$
   204F 02 21 5B            457 	ljmp	00109$
   2052                     458 00117$:
                            459 ;	genPointerSet
                            460 ;     genFarPointerSet
   2052 90 06 0E            461 	mov	dptr,#_WD_init_file_name_3_5
   2055 74 2E               462 	mov	a,#0x2E
   2057 F0                  463 	movx	@dptr,a
                            464 ;	genPointerSet
                            465 ;     genFarPointerSet
   2058 90 06 0F            466 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0001)
   205B 74 2E               467 	mov	a,#0x2E
   205D F0                  468 	movx	@dptr,a
                            469 ;	genPointerSet
                            470 ;     genFarPointerSet
   205E 90 06 10            471 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0002)
   2061 74 2F               472 	mov	a,#0x2F
   2063 F0                  473 	movx	@dptr,a
                            474 ;	genPointerSet
                            475 ;     genFarPointerSet
   2064 90 06 11            476 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0003)
   2067 74 64               477 	mov	a,#0x64
   2069 F0                  478 	movx	@dptr,a
                            479 ;	genPointerSet
                            480 ;     genFarPointerSet
   206A 90 06 12            481 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0004)
   206D 74 72               482 	mov	a,#0x72
   206F F0                  483 	movx	@dptr,a
                            484 ;	genPointerSet
                            485 ;     genFarPointerSet
   2070 90 06 13            486 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0005)
   2073 74 69               487 	mov	a,#0x69
   2075 F0                  488 	movx	@dptr,a
                            489 ;	genPointerSet
                            490 ;     genFarPointerSet
   2076 90 06 14            491 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0006)
   2079 74 76               492 	mov	a,#0x76
   207B F0                  493 	movx	@dptr,a
                            494 ;	genPointerSet
                            495 ;     genFarPointerSet
   207C 90 06 15            496 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0007)
   207F 74 65               497 	mov	a,#0x65
   2081 F0                  498 	movx	@dptr,a
                            499 ;	genPointerSet
                            500 ;     genFarPointerSet
   2082 90 06 16            501 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0008)
   2085 74 72               502 	mov	a,#0x72
   2087 F0                  503 	movx	@dptr,a
                            504 ;	genPointerSet
                            505 ;     genFarPointerSet
   2088 90 06 17            506 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0009)
   208B 74 73               507 	mov	a,#0x73
   208D F0                  508 	movx	@dptr,a
                            509 ;	genPointerSet
                            510 ;     genFarPointerSet
   208E 90 06 18            511 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000a)
   2091 74 2F               512 	mov	a,#0x2F
   2093 F0                  513 	movx	@dptr,a
                            514 ;	genPointerSet
                            515 ;     genFarPointerSet
   2094 90 06 19            516 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000b)
   2097 74 43               517 	mov	a,#0x43
   2099 F0                  518 	movx	@dptr,a
                            519 ;	genPointerSet
                            520 ;     genFarPointerSet
   209A 90 06 1A            521 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000c)
   209D 74 6F               522 	mov	a,#0x6F
   209F F0                  523 	movx	@dptr,a
                            524 ;	genPointerSet
                            525 ;     genFarPointerSet
   20A0 90 06 1B            526 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000d)
   20A3 74 72               527 	mov	a,#0x72
   20A5 F0                  528 	movx	@dptr,a
                            529 ;	genPointerSet
                            530 ;     genFarPointerSet
   20A6 90 06 1C            531 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000e)
   20A9 74 65               532 	mov	a,#0x65
   20AB F0                  533 	movx	@dptr,a
                            534 ;	genPointerSet
                            535 ;     genFarPointerSet
   20AC 90 06 1D            536 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000f)
   20AF 74 57               537 	mov	a,#0x57
   20B1 F0                  538 	movx	@dptr,a
                            539 ;	genPointerSet
                            540 ;     genFarPointerSet
   20B2 90 06 1E            541 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0010)
   20B5 74 61               542 	mov	a,#0x61
   20B7 F0                  543 	movx	@dptr,a
                            544 ;	genPointerSet
                            545 ;     genFarPointerSet
   20B8 90 06 1F            546 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0011)
   20BB 74 74               547 	mov	a,#0x74
   20BD F0                  548 	movx	@dptr,a
                            549 ;	genPointerSet
                            550 ;     genFarPointerSet
   20BE 90 06 20            551 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0012)
   20C1 74 63               552 	mov	a,#0x63
   20C3 F0                  553 	movx	@dptr,a
                            554 ;	genPointerSet
                            555 ;     genFarPointerSet
   20C4 90 06 21            556 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0013)
   20C7 74 68               557 	mov	a,#0x68
   20C9 F0                  558 	movx	@dptr,a
                            559 ;	genPointerSet
                            560 ;     genFarPointerSet
   20CA 90 06 22            561 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0014)
   20CD 74 64               562 	mov	a,#0x64
   20CF F0                  563 	movx	@dptr,a
                            564 ;	genPointerSet
                            565 ;     genFarPointerSet
   20D0 90 06 23            566 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0015)
   20D3 74 6F               567 	mov	a,#0x6F
   20D5 F0                  568 	movx	@dptr,a
                            569 ;	genPointerSet
                            570 ;     genFarPointerSet
   20D6 90 06 24            571 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0016)
   20D9 74 67               572 	mov	a,#0x67
   20DB F0                  573 	movx	@dptr,a
                            574 ;	genPointerSet
                            575 ;     genFarPointerSet
   20DC 90 06 25            576 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0017)
   20DF 74 2F               577 	mov	a,#0x2F
   20E1 F0                  578 	movx	@dptr,a
                            579 ;	genPointerSet
                            580 ;     genFarPointerSet
   20E2 90 06 26            581 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0018)
   20E5 74 63               582 	mov	a,#0x63
   20E7 F0                  583 	movx	@dptr,a
                            584 ;	genPointerSet
                            585 ;     genFarPointerSet
   20E8 90 06 27            586 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0019)
   20EB 74 6F               587 	mov	a,#0x6F
   20ED F0                  588 	movx	@dptr,a
                            589 ;	genPointerSet
                            590 ;     genFarPointerSet
   20EE 90 06 28            591 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001a)
   20F1 74 72               592 	mov	a,#0x72
   20F3 F0                  593 	movx	@dptr,a
                            594 ;	genPointerSet
                            595 ;     genFarPointerSet
   20F4 90 06 29            596 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001b)
   20F7 74 65               597 	mov	a,#0x65
   20F9 F0                  598 	movx	@dptr,a
                            599 ;	genPointerSet
                            600 ;     genFarPointerSet
   20FA 90 06 2A            601 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001c)
   20FD 74 5F               602 	mov	a,#0x5F
   20FF F0                  603 	movx	@dptr,a
                            604 ;	genPointerSet
                            605 ;     genFarPointerSet
   2100 90 06 2B            606 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001d)
   2103 74 77               607 	mov	a,#0x77
   2105 F0                  608 	movx	@dptr,a
                            609 ;	genPointerSet
                            610 ;     genFarPointerSet
   2106 90 06 2C            611 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001e)
   2109 74 61               612 	mov	a,#0x61
   210B F0                  613 	movx	@dptr,a
                            614 ;	genPointerSet
                            615 ;     genFarPointerSet
   210C 90 06 2D            616 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001f)
   210F 74 74               617 	mov	a,#0x74
   2111 F0                  618 	movx	@dptr,a
                            619 ;	genPointerSet
                            620 ;     genFarPointerSet
   2112 90 06 2E            621 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0020)
   2115 74 63               622 	mov	a,#0x63
   2117 F0                  623 	movx	@dptr,a
                            624 ;	genPointerSet
                            625 ;     genFarPointerSet
   2118 90 06 2F            626 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0021)
   211B 74 68               627 	mov	a,#0x68
   211D F0                  628 	movx	@dptr,a
                            629 ;	genPointerSet
                            630 ;     genFarPointerSet
   211E 90 06 30            631 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0022)
   2121 74 64               632 	mov	a,#0x64
   2123 F0                  633 	movx	@dptr,a
                            634 ;	genPointerSet
                            635 ;     genFarPointerSet
   2124 90 06 31            636 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0023)
   2127 74 6F               637 	mov	a,#0x6F
   2129 F0                  638 	movx	@dptr,a
                            639 ;	genPointerSet
                            640 ;     genFarPointerSet
   212A 90 06 32            641 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0024)
   212D 74 67               642 	mov	a,#0x67
   212F F0                  643 	movx	@dptr,a
                            644 ;	genPointerSet
                            645 ;     genFarPointerSet
   2130 90 06 33            646 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0025)
   2133 74 2E               647 	mov	a,#0x2E
   2135 F0                  648 	movx	@dptr,a
                            649 ;	genPointerSet
                            650 ;     genFarPointerSet
   2136 90 06 34            651 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0026)
   2139 74 63               652 	mov	a,#0x63
   213B F0                  653 	movx	@dptr,a
                            654 ;	genPointerSet
                            655 ;     genFarPointerSet
   213C 90 06 35            656 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0027)
   213F 74 00               657 	mov	a,#0x00
   2141 F0                  658 	movx	@dptr,a
                            659 ;	genAssign
   2142 90 05 7F            660 	mov	dptr,#_HAL_assert_fail_PARM_2
   2145 74 23               661 	mov	a,#0x23
   2147 F0                  662 	movx	@dptr,a
   2148 E4                  663 	clr	a
   2149 A3                  664 	inc	dptr
   214A F0                  665 	movx	@dptr,a
   214B A3                  666 	inc	dptr
   214C F0                  667 	movx	@dptr,a
   214D A3                  668 	inc	dptr
   214E F0                  669 	movx	@dptr,a
                            670 ;	genCall
   214F 75 82 0E            671 	mov	dpl,#_WD_init_file_name_3_5
   2152 75 83 06            672 	mov	dph,#(_WD_init_file_name_3_5 >> 8)
   2155 75 F0 00            673 	mov	b,#0x00
   2158 12 1B 3F            674 	lcall	_HAL_assert_fail
   215B                     675 00109$:
                    0271    676 	C$core_watchdog.c$37$1$1 ==.
                            677 ;	../drivers/CoreWatchdog/core_watchdog.c:37: instance->base_address = base;
                            678 ;	genAssign
   215B 90 05 E3            679 	mov	dptr,#_WD_init_instance_1_1
   215E E0                  680 	movx	a,@dptr
   215F FE                  681 	mov	r6,a
   2160 A3                  682 	inc	dptr
   2161 E0                  683 	movx	a,@dptr
   2162 FF                  684 	mov	r7,a
   2163 A3                  685 	inc	dptr
   2164 E0                  686 	movx	a,@dptr
   2165 F8                  687 	mov	r0,a
                            688 ;	genAssign
   2166 90 05 D9            689 	mov	dptr,#_WD_init_PARM_2
   2169 E0                  690 	movx	a,@dptr
   216A F9                  691 	mov	r1,a
   216B A3                  692 	inc	dptr
   216C E0                  693 	movx	a,@dptr
   216D FA                  694 	mov	r2,a
                            695 ;	genPointerSet
                            696 ;	genGenPointerSet
   216E 8E 82               697 	mov	dpl,r6
   2170 8F 83               698 	mov	dph,r7
   2172 88 F0               699 	mov	b,r0
   2174 E9                  700 	mov	a,r1
   2175 12 70 17            701 	lcall	__gptrput
   2178 A3                  702 	inc	dptr
   2179 EA                  703 	mov	a,r2
   217A 12 70 17            704 	lcall	__gptrput
                    0293    705 	C$core_watchdog.c$40$1$1 ==.
                            706 ;	../drivers/CoreWatchdog/core_watchdog.c:40: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 0 );
                            707 ;	genPlus
                            708 ;	genPlusIncr
   217D 74 08               709 	mov	a,#0x08
   217F 25 01               710 	add	a,ar1
   2181 F9                  711 	mov	r1,a
   2182 74 00               712 	mov	a,#0x00
   2184 35 02               713 	addc	a,ar2
   2186 FA                  714 	mov	r2,a
                            715 ;	genAssign
   2187 90 05 A1            716 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   218A 74 04               717 	mov	a,#0x04
   218C F0                  718 	movx	@dptr,a
                            719 ;	genAssign
   218D 90 05 A2            720 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   2190 74 10               721 	mov	a,#0x10
   2192 F0                  722 	movx	@dptr,a
   2193 E4                  723 	clr	a
   2194 A3                  724 	inc	dptr
   2195 F0                  725 	movx	@dptr,a
   2196 A3                  726 	inc	dptr
   2197 F0                  727 	movx	@dptr,a
   2198 A3                  728 	inc	dptr
   2199 F0                  729 	movx	@dptr,a
                            730 ;	genAssign
   219A 90 05 A6            731 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   219D E4                  732 	clr	a
   219E F0                  733 	movx	@dptr,a
   219F A3                  734 	inc	dptr
   21A0 F0                  735 	movx	@dptr,a
   21A1 A3                  736 	inc	dptr
   21A2 F0                  737 	movx	@dptr,a
   21A3 A3                  738 	inc	dptr
   21A4 F0                  739 	movx	@dptr,a
                            740 ;	genCall
   21A5 89 82               741 	mov	dpl,r1
   21A7 8A 83               742 	mov	dph,r2
   21A9 C0 06               743 	push	ar6
   21AB C0 07               744 	push	ar7
   21AD C0 00               745 	push	ar0
   21AF 12 1C 03            746 	lcall	_HW_set_32bit_reg_field
   21B2 D0 00               747 	pop	ar0
   21B4 D0 07               748 	pop	ar7
   21B6 D0 06               749 	pop	ar6
                    02CE    750 	C$core_watchdog.c$43$1$1 ==.
                            751 ;	../drivers/CoreWatchdog/core_watchdog.c:43: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_PRESCALE, scale );
                            752 ;	genPointerGet
                            753 ;	genGenPointerGet
   21B8 8E 82               754 	mov	dpl,r6
   21BA 8F 83               755 	mov	dph,r7
   21BC 88 F0               756 	mov	b,r0
   21BE 12 71 69            757 	lcall	__gptrget
   21C1 FA                  758 	mov	r2,a
   21C2 A3                  759 	inc	dptr
   21C3 12 71 69            760 	lcall	__gptrget
   21C6 FB                  761 	mov	r3,a
                            762 ;	genPlus
                            763 ;	genPlusIncr
   21C7 74 08               764 	mov	a,#0x08
   21C9 25 02               765 	add	a,ar2
   21CB FA                  766 	mov	r2,a
   21CC 74 00               767 	mov	a,#0x00
   21CE 35 03               768 	addc	a,ar3
   21D0 FB                  769 	mov	r3,a
                            770 ;	genAssign
   21D1 90 05 A1            771 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   21D4 74 00               772 	mov	a,#0x00
   21D6 F0                  773 	movx	@dptr,a
                            774 ;	genAssign
   21D7 90 05 A2            775 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   21DA 74 0F               776 	mov	a,#0x0F
   21DC F0                  777 	movx	@dptr,a
   21DD E4                  778 	clr	a
   21DE A3                  779 	inc	dptr
   21DF F0                  780 	movx	@dptr,a
   21E0 A3                  781 	inc	dptr
   21E1 F0                  782 	movx	@dptr,a
   21E2 A3                  783 	inc	dptr
   21E3 F0                  784 	movx	@dptr,a
                            785 ;	genAssign
   21E4 90 05 A6            786 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   21E7 E5 19               787 	mov	a,_WD_init_sloc0_1_0
   21E9 F0                  788 	movx	@dptr,a
   21EA A3                  789 	inc	dptr
   21EB E5 1A               790 	mov	a,(_WD_init_sloc0_1_0 + 1)
   21ED F0                  791 	movx	@dptr,a
   21EE A3                  792 	inc	dptr
   21EF E5 1B               793 	mov	a,(_WD_init_sloc0_1_0 + 2)
   21F1 F0                  794 	movx	@dptr,a
   21F2 A3                  795 	inc	dptr
   21F3 E5 1C               796 	mov	a,(_WD_init_sloc0_1_0 + 3)
   21F5 F0                  797 	movx	@dptr,a
                            798 ;	genCall
   21F6 8A 82               799 	mov	dpl,r2
   21F8 8B 83               800 	mov	dph,r3
   21FA C0 06               801 	push	ar6
   21FC C0 07               802 	push	ar7
   21FE C0 00               803 	push	ar0
   2200 12 1C 03            804 	lcall	_HW_set_32bit_reg_field
   2203 D0 00               805 	pop	ar0
   2205 D0 07               806 	pop	ar7
   2207 D0 06               807 	pop	ar6
                    031F    808 	C$core_watchdog.c$44$1$1 ==.
                            809 ;	../drivers/CoreWatchdog/core_watchdog.c:44: HAL_set_32bit_reg( instance->base_address, WDOGLOAD, value );
                            810 ;	genPointerGet
                            811 ;	genGenPointerGet
   2209 8E 82               812 	mov	dpl,r6
   220B 8F 83               813 	mov	dph,r7
   220D 88 F0               814 	mov	b,r0
   220F 12 71 69            815 	lcall	__gptrget
   2212 FE                  816 	mov	r6,a
   2213 A3                  817 	inc	dptr
   2214 12 71 69            818 	lcall	__gptrget
   2217 FF                  819 	mov	r7,a
                            820 ;	genAssign
   2218 90 05 DB            821 	mov	dptr,#_WD_init_PARM_3
   221B E0                  822 	movx	a,@dptr
   221C FA                  823 	mov	r2,a
   221D A3                  824 	inc	dptr
   221E E0                  825 	movx	a,@dptr
   221F FB                  826 	mov	r3,a
   2220 A3                  827 	inc	dptr
   2221 E0                  828 	movx	a,@dptr
   2222 FC                  829 	mov	r4,a
   2223 A3                  830 	inc	dptr
   2224 E0                  831 	movx	a,@dptr
   2225 FD                  832 	mov	r5,a
                            833 ;	genAssign
   2226 90 05 9D            834 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   2229 EA                  835 	mov	a,r2
   222A F0                  836 	movx	@dptr,a
   222B A3                  837 	inc	dptr
   222C EB                  838 	mov	a,r3
   222D F0                  839 	movx	@dptr,a
   222E A3                  840 	inc	dptr
   222F EC                  841 	mov	a,r4
   2230 F0                  842 	movx	@dptr,a
   2231 A3                  843 	inc	dptr
   2232 ED                  844 	mov	a,r5
   2233 F0                  845 	movx	@dptr,a
                            846 ;	genCall
   2234 8E 82               847 	mov	dpl,r6
   2236 8F 83               848 	mov	dph,r7
   2238 12 1B AB            849 	lcall	_HW_set_32bit_reg
   223B                     850 00111$:
                    0351    851 	C$core_watchdog.c$45$1$1 ==.
                    0351    852 	XG$WD_init$0$0 ==.
   223B 22                  853 	ret
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
   223C                     866 _WD_enable:
                            867 ;	genReceive
   223C AA F0               868 	mov	r2,b
   223E AB 83               869 	mov	r3,dph
   2240 E5 82               870 	mov	a,dpl
   2242 90 06 36            871 	mov	dptr,#_WD_enable_instance_1_1
   2245 F0                  872 	movx	@dptr,a
   2246 A3                  873 	inc	dptr
   2247 EB                  874 	mov	a,r3
   2248 F0                  875 	movx	@dptr,a
   2249 A3                  876 	inc	dptr
   224A EA                  877 	mov	a,r2
   224B F0                  878 	movx	@dptr,a
                    0362    879 	C$core_watchdog.c$57$2$2 ==.
                            880 ;	../drivers/CoreWatchdog/core_watchdog.c:57: HAL_ASSERT( instance != NULL_instance )
                            881 ;	genAssign
   224C 90 06 36            882 	mov	dptr,#_WD_enable_instance_1_1
   224F E0                  883 	movx	a,@dptr
   2250 FA                  884 	mov	r2,a
   2251 A3                  885 	inc	dptr
   2252 E0                  886 	movx	a,@dptr
   2253 FB                  887 	mov	r3,a
   2254 A3                  888 	inc	dptr
   2255 E0                  889 	movx	a,@dptr
   2256 FC                  890 	mov	r4,a
                            891 ;	genAssign
   2257 90 05 D6            892 	mov	dptr,#_NULL_instance
   225A E0                  893 	movx	a,@dptr
   225B FD                  894 	mov	r5,a
   225C A3                  895 	inc	dptr
   225D E0                  896 	movx	a,@dptr
   225E FE                  897 	mov	r6,a
   225F A3                  898 	inc	dptr
   2260 E0                  899 	movx	a,@dptr
   2261 FF                  900 	mov	r7,a
                            901 ;	genCmpEq
                            902 ;	gencjneshort
   2262 EA                  903 	mov	a,r2
   2263 B5 05 0A            904 	cjne	a,ar5,00109$
   2266 EB                  905 	mov	a,r3
   2267 B5 06 06            906 	cjne	a,ar6,00109$
   226A EC                  907 	mov	a,r4
   226B B5 07 02            908 	cjne	a,ar7,00109$
   226E 80 03               909 	sjmp	00110$
   2270                     910 00109$:
   2270 02 23 7C            911 	ljmp	00104$
   2273                     912 00110$:
                            913 ;	genPointerSet
                            914 ;     genFarPointerSet
   2273 90 06 39            915 	mov	dptr,#_WD_enable_file_name_3_3
   2276 74 2E               916 	mov	a,#0x2E
   2278 F0                  917 	movx	@dptr,a
                            918 ;	genPointerSet
                            919 ;     genFarPointerSet
   2279 90 06 3A            920 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0001)
   227C 74 2E               921 	mov	a,#0x2E
   227E F0                  922 	movx	@dptr,a
                            923 ;	genPointerSet
                            924 ;     genFarPointerSet
   227F 90 06 3B            925 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0002)
   2282 74 2F               926 	mov	a,#0x2F
   2284 F0                  927 	movx	@dptr,a
                            928 ;	genPointerSet
                            929 ;     genFarPointerSet
   2285 90 06 3C            930 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0003)
   2288 74 64               931 	mov	a,#0x64
   228A F0                  932 	movx	@dptr,a
                            933 ;	genPointerSet
                            934 ;     genFarPointerSet
   228B 90 06 3D            935 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0004)
   228E 74 72               936 	mov	a,#0x72
   2290 F0                  937 	movx	@dptr,a
                            938 ;	genPointerSet
                            939 ;     genFarPointerSet
   2291 90 06 3E            940 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0005)
   2294 74 69               941 	mov	a,#0x69
   2296 F0                  942 	movx	@dptr,a
                            943 ;	genPointerSet
                            944 ;     genFarPointerSet
   2297 90 06 3F            945 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0006)
   229A 74 76               946 	mov	a,#0x76
   229C F0                  947 	movx	@dptr,a
                            948 ;	genPointerSet
                            949 ;     genFarPointerSet
   229D 90 06 40            950 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0007)
   22A0 74 65               951 	mov	a,#0x65
   22A2 F0                  952 	movx	@dptr,a
                            953 ;	genPointerSet
                            954 ;     genFarPointerSet
   22A3 90 06 41            955 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0008)
   22A6 74 72               956 	mov	a,#0x72
   22A8 F0                  957 	movx	@dptr,a
                            958 ;	genPointerSet
                            959 ;     genFarPointerSet
   22A9 90 06 42            960 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0009)
   22AC 74 73               961 	mov	a,#0x73
   22AE F0                  962 	movx	@dptr,a
                            963 ;	genPointerSet
                            964 ;     genFarPointerSet
   22AF 90 06 43            965 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000a)
   22B2 74 2F               966 	mov	a,#0x2F
   22B4 F0                  967 	movx	@dptr,a
                            968 ;	genPointerSet
                            969 ;     genFarPointerSet
   22B5 90 06 44            970 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000b)
   22B8 74 43               971 	mov	a,#0x43
   22BA F0                  972 	movx	@dptr,a
                            973 ;	genPointerSet
                            974 ;     genFarPointerSet
   22BB 90 06 45            975 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000c)
   22BE 74 6F               976 	mov	a,#0x6F
   22C0 F0                  977 	movx	@dptr,a
                            978 ;	genPointerSet
                            979 ;     genFarPointerSet
   22C1 90 06 46            980 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000d)
   22C4 74 72               981 	mov	a,#0x72
   22C6 F0                  982 	movx	@dptr,a
                            983 ;	genPointerSet
                            984 ;     genFarPointerSet
   22C7 90 06 47            985 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000e)
   22CA 74 65               986 	mov	a,#0x65
   22CC F0                  987 	movx	@dptr,a
                            988 ;	genPointerSet
                            989 ;     genFarPointerSet
   22CD 90 06 48            990 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000f)
   22D0 74 57               991 	mov	a,#0x57
   22D2 F0                  992 	movx	@dptr,a
                            993 ;	genPointerSet
                            994 ;     genFarPointerSet
   22D3 90 06 49            995 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0010)
   22D6 74 61               996 	mov	a,#0x61
   22D8 F0                  997 	movx	@dptr,a
                            998 ;	genPointerSet
                            999 ;     genFarPointerSet
   22D9 90 06 4A           1000 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0011)
   22DC 74 74              1001 	mov	a,#0x74
   22DE F0                 1002 	movx	@dptr,a
                           1003 ;	genPointerSet
                           1004 ;     genFarPointerSet
   22DF 90 06 4B           1005 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0012)
   22E2 74 63              1006 	mov	a,#0x63
   22E4 F0                 1007 	movx	@dptr,a
                           1008 ;	genPointerSet
                           1009 ;     genFarPointerSet
   22E5 90 06 4C           1010 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0013)
   22E8 74 68              1011 	mov	a,#0x68
   22EA F0                 1012 	movx	@dptr,a
                           1013 ;	genPointerSet
                           1014 ;     genFarPointerSet
   22EB 90 06 4D           1015 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0014)
   22EE 74 64              1016 	mov	a,#0x64
   22F0 F0                 1017 	movx	@dptr,a
                           1018 ;	genPointerSet
                           1019 ;     genFarPointerSet
   22F1 90 06 4E           1020 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0015)
   22F4 74 6F              1021 	mov	a,#0x6F
   22F6 F0                 1022 	movx	@dptr,a
                           1023 ;	genPointerSet
                           1024 ;     genFarPointerSet
   22F7 90 06 4F           1025 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0016)
   22FA 74 67              1026 	mov	a,#0x67
   22FC F0                 1027 	movx	@dptr,a
                           1028 ;	genPointerSet
                           1029 ;     genFarPointerSet
   22FD 90 06 50           1030 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0017)
   2300 74 2F              1031 	mov	a,#0x2F
   2302 F0                 1032 	movx	@dptr,a
                           1033 ;	genPointerSet
                           1034 ;     genFarPointerSet
   2303 90 06 51           1035 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0018)
   2306 74 63              1036 	mov	a,#0x63
   2308 F0                 1037 	movx	@dptr,a
                           1038 ;	genPointerSet
                           1039 ;     genFarPointerSet
   2309 90 06 52           1040 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0019)
   230C 74 6F              1041 	mov	a,#0x6F
   230E F0                 1042 	movx	@dptr,a
                           1043 ;	genPointerSet
                           1044 ;     genFarPointerSet
   230F 90 06 53           1045 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001a)
   2312 74 72              1046 	mov	a,#0x72
   2314 F0                 1047 	movx	@dptr,a
                           1048 ;	genPointerSet
                           1049 ;     genFarPointerSet
   2315 90 06 54           1050 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001b)
   2318 74 65              1051 	mov	a,#0x65
   231A F0                 1052 	movx	@dptr,a
                           1053 ;	genPointerSet
                           1054 ;     genFarPointerSet
   231B 90 06 55           1055 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001c)
   231E 74 5F              1056 	mov	a,#0x5F
   2320 F0                 1057 	movx	@dptr,a
                           1058 ;	genPointerSet
                           1059 ;     genFarPointerSet
   2321 90 06 56           1060 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001d)
   2324 74 77              1061 	mov	a,#0x77
   2326 F0                 1062 	movx	@dptr,a
                           1063 ;	genPointerSet
                           1064 ;     genFarPointerSet
   2327 90 06 57           1065 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001e)
   232A 74 61              1066 	mov	a,#0x61
   232C F0                 1067 	movx	@dptr,a
                           1068 ;	genPointerSet
                           1069 ;     genFarPointerSet
   232D 90 06 58           1070 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001f)
   2330 74 74              1071 	mov	a,#0x74
   2332 F0                 1072 	movx	@dptr,a
                           1073 ;	genPointerSet
                           1074 ;     genFarPointerSet
   2333 90 06 59           1075 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0020)
   2336 74 63              1076 	mov	a,#0x63
   2338 F0                 1077 	movx	@dptr,a
                           1078 ;	genPointerSet
                           1079 ;     genFarPointerSet
   2339 90 06 5A           1080 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0021)
   233C 74 68              1081 	mov	a,#0x68
   233E F0                 1082 	movx	@dptr,a
                           1083 ;	genPointerSet
                           1084 ;     genFarPointerSet
   233F 90 06 5B           1085 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0022)
   2342 74 64              1086 	mov	a,#0x64
   2344 F0                 1087 	movx	@dptr,a
                           1088 ;	genPointerSet
                           1089 ;     genFarPointerSet
   2345 90 06 5C           1090 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0023)
   2348 74 6F              1091 	mov	a,#0x6F
   234A F0                 1092 	movx	@dptr,a
                           1093 ;	genPointerSet
                           1094 ;     genFarPointerSet
   234B 90 06 5D           1095 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0024)
   234E 74 67              1096 	mov	a,#0x67
   2350 F0                 1097 	movx	@dptr,a
                           1098 ;	genPointerSet
                           1099 ;     genFarPointerSet
   2351 90 06 5E           1100 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0025)
   2354 74 2E              1101 	mov	a,#0x2E
   2356 F0                 1102 	movx	@dptr,a
                           1103 ;	genPointerSet
                           1104 ;     genFarPointerSet
   2357 90 06 5F           1105 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0026)
   235A 74 63              1106 	mov	a,#0x63
   235C F0                 1107 	movx	@dptr,a
                           1108 ;	genPointerSet
                           1109 ;     genFarPointerSet
   235D 90 06 60           1110 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0027)
   2360 74 00              1111 	mov	a,#0x00
   2362 F0                 1112 	movx	@dptr,a
                           1113 ;	genAssign
   2363 90 05 7F           1114 	mov	dptr,#_HAL_assert_fail_PARM_2
   2366 74 39              1115 	mov	a,#0x39
   2368 F0                 1116 	movx	@dptr,a
   2369 E4                 1117 	clr	a
   236A A3                 1118 	inc	dptr
   236B F0                 1119 	movx	@dptr,a
   236C A3                 1120 	inc	dptr
   236D F0                 1121 	movx	@dptr,a
   236E A3                 1122 	inc	dptr
   236F F0                 1123 	movx	@dptr,a
                           1124 ;	genCall
   2370 75 82 39           1125 	mov	dpl,#_WD_enable_file_name_3_3
   2373 75 83 06           1126 	mov	dph,#(_WD_enable_file_name_3_3 >> 8)
   2376 75 F0 00           1127 	mov	b,#0x00
   2379 12 1B 3F           1128 	lcall	_HAL_assert_fail
   237C                    1129 00104$:
                    0492   1130 	C$core_watchdog.c$59$1$1 ==.
                           1131 ;	../drivers/CoreWatchdog/core_watchdog.c:59: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 1 );
                           1132 ;	genAssign
   237C 90 06 36           1133 	mov	dptr,#_WD_enable_instance_1_1
   237F E0                 1134 	movx	a,@dptr
   2380 FA                 1135 	mov	r2,a
   2381 A3                 1136 	inc	dptr
   2382 E0                 1137 	movx	a,@dptr
   2383 FB                 1138 	mov	r3,a
   2384 A3                 1139 	inc	dptr
   2385 E0                 1140 	movx	a,@dptr
   2386 FC                 1141 	mov	r4,a
                           1142 ;	genPointerGet
                           1143 ;	genGenPointerGet
   2387 8A 82              1144 	mov	dpl,r2
   2389 8B 83              1145 	mov	dph,r3
   238B 8C F0              1146 	mov	b,r4
   238D 12 71 69           1147 	lcall	__gptrget
   2390 FA                 1148 	mov	r2,a
   2391 A3                 1149 	inc	dptr
   2392 12 71 69           1150 	lcall	__gptrget
   2395 FB                 1151 	mov	r3,a
                           1152 ;	genPlus
                           1153 ;	genPlusIncr
   2396 74 08              1154 	mov	a,#0x08
   2398 25 02              1155 	add	a,ar2
   239A FA                 1156 	mov	r2,a
   239B 74 00              1157 	mov	a,#0x00
   239D 35 03              1158 	addc	a,ar3
   239F FB                 1159 	mov	r3,a
                           1160 ;	genAssign
   23A0 90 05 A1           1161 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   23A3 74 04              1162 	mov	a,#0x04
   23A5 F0                 1163 	movx	@dptr,a
                           1164 ;	genAssign
   23A6 90 05 A2           1165 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   23A9 74 10              1166 	mov	a,#0x10
   23AB F0                 1167 	movx	@dptr,a
   23AC E4                 1168 	clr	a
   23AD A3                 1169 	inc	dptr
   23AE F0                 1170 	movx	@dptr,a
   23AF A3                 1171 	inc	dptr
   23B0 F0                 1172 	movx	@dptr,a
   23B1 A3                 1173 	inc	dptr
   23B2 F0                 1174 	movx	@dptr,a
                           1175 ;	genAssign
   23B3 90 05 A6           1176 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   23B6 74 01              1177 	mov	a,#0x01
   23B8 F0                 1178 	movx	@dptr,a
   23B9 E4                 1179 	clr	a
   23BA A3                 1180 	inc	dptr
   23BB F0                 1181 	movx	@dptr,a
   23BC A3                 1182 	inc	dptr
   23BD F0                 1183 	movx	@dptr,a
   23BE A3                 1184 	inc	dptr
   23BF F0                 1185 	movx	@dptr,a
                           1186 ;	genCall
   23C0 8A 82              1187 	mov	dpl,r2
   23C2 8B 83              1188 	mov	dph,r3
   23C4 12 1C 03           1189 	lcall	_HW_set_32bit_reg_field
   23C7                    1190 00106$:
                    04DD   1191 	C$core_watchdog.c$60$1$1 ==.
                    04DD   1192 	XG$WD_enable$0$0 ==.
   23C7 22                 1193 	ret
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
   23C8                    1206 _WD_disable:
                           1207 ;	genReceive
   23C8 AA F0              1208 	mov	r2,b
   23CA AB 83              1209 	mov	r3,dph
   23CC E5 82              1210 	mov	a,dpl
   23CE 90 06 61           1211 	mov	dptr,#_WD_disable_instance_1_1
   23D1 F0                 1212 	movx	@dptr,a
   23D2 A3                 1213 	inc	dptr
   23D3 EB                 1214 	mov	a,r3
   23D4 F0                 1215 	movx	@dptr,a
   23D5 A3                 1216 	inc	dptr
   23D6 EA                 1217 	mov	a,r2
   23D7 F0                 1218 	movx	@dptr,a
                    04EE   1219 	C$core_watchdog.c$73$2$2 ==.
                           1220 ;	../drivers/CoreWatchdog/core_watchdog.c:73: HAL_ASSERT( instance != NULL_instance )
                           1221 ;	genAssign
   23D8 90 06 61           1222 	mov	dptr,#_WD_disable_instance_1_1
   23DB E0                 1223 	movx	a,@dptr
   23DC FA                 1224 	mov	r2,a
   23DD A3                 1225 	inc	dptr
   23DE E0                 1226 	movx	a,@dptr
   23DF FB                 1227 	mov	r3,a
   23E0 A3                 1228 	inc	dptr
   23E1 E0                 1229 	movx	a,@dptr
   23E2 FC                 1230 	mov	r4,a
                           1231 ;	genAssign
   23E3 90 05 D6           1232 	mov	dptr,#_NULL_instance
   23E6 E0                 1233 	movx	a,@dptr
   23E7 FD                 1234 	mov	r5,a
   23E8 A3                 1235 	inc	dptr
   23E9 E0                 1236 	movx	a,@dptr
   23EA FE                 1237 	mov	r6,a
   23EB A3                 1238 	inc	dptr
   23EC E0                 1239 	movx	a,@dptr
   23ED FF                 1240 	mov	r7,a
                           1241 ;	genCmpEq
                           1242 ;	gencjneshort
   23EE EA                 1243 	mov	a,r2
   23EF B5 05 0A           1244 	cjne	a,ar5,00109$
   23F2 EB                 1245 	mov	a,r3
   23F3 B5 06 06           1246 	cjne	a,ar6,00109$
   23F6 EC                 1247 	mov	a,r4
   23F7 B5 07 02           1248 	cjne	a,ar7,00109$
   23FA 80 03              1249 	sjmp	00110$
   23FC                    1250 00109$:
   23FC 02 25 08           1251 	ljmp	00104$
   23FF                    1252 00110$:
                           1253 ;	genPointerSet
                           1254 ;     genFarPointerSet
   23FF 90 06 64           1255 	mov	dptr,#_WD_disable_file_name_3_3
   2402 74 2E              1256 	mov	a,#0x2E
   2404 F0                 1257 	movx	@dptr,a
                           1258 ;	genPointerSet
                           1259 ;     genFarPointerSet
   2405 90 06 65           1260 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0001)
   2408 74 2E              1261 	mov	a,#0x2E
   240A F0                 1262 	movx	@dptr,a
                           1263 ;	genPointerSet
                           1264 ;     genFarPointerSet
   240B 90 06 66           1265 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0002)
   240E 74 2F              1266 	mov	a,#0x2F
   2410 F0                 1267 	movx	@dptr,a
                           1268 ;	genPointerSet
                           1269 ;     genFarPointerSet
   2411 90 06 67           1270 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0003)
   2414 74 64              1271 	mov	a,#0x64
   2416 F0                 1272 	movx	@dptr,a
                           1273 ;	genPointerSet
                           1274 ;     genFarPointerSet
   2417 90 06 68           1275 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0004)
   241A 74 72              1276 	mov	a,#0x72
   241C F0                 1277 	movx	@dptr,a
                           1278 ;	genPointerSet
                           1279 ;     genFarPointerSet
   241D 90 06 69           1280 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0005)
   2420 74 69              1281 	mov	a,#0x69
   2422 F0                 1282 	movx	@dptr,a
                           1283 ;	genPointerSet
                           1284 ;     genFarPointerSet
   2423 90 06 6A           1285 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0006)
   2426 74 76              1286 	mov	a,#0x76
   2428 F0                 1287 	movx	@dptr,a
                           1288 ;	genPointerSet
                           1289 ;     genFarPointerSet
   2429 90 06 6B           1290 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0007)
   242C 74 65              1291 	mov	a,#0x65
   242E F0                 1292 	movx	@dptr,a
                           1293 ;	genPointerSet
                           1294 ;     genFarPointerSet
   242F 90 06 6C           1295 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0008)
   2432 74 72              1296 	mov	a,#0x72
   2434 F0                 1297 	movx	@dptr,a
                           1298 ;	genPointerSet
                           1299 ;     genFarPointerSet
   2435 90 06 6D           1300 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0009)
   2438 74 73              1301 	mov	a,#0x73
   243A F0                 1302 	movx	@dptr,a
                           1303 ;	genPointerSet
                           1304 ;     genFarPointerSet
   243B 90 06 6E           1305 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000a)
   243E 74 2F              1306 	mov	a,#0x2F
   2440 F0                 1307 	movx	@dptr,a
                           1308 ;	genPointerSet
                           1309 ;     genFarPointerSet
   2441 90 06 6F           1310 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000b)
   2444 74 43              1311 	mov	a,#0x43
   2446 F0                 1312 	movx	@dptr,a
                           1313 ;	genPointerSet
                           1314 ;     genFarPointerSet
   2447 90 06 70           1315 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000c)
   244A 74 6F              1316 	mov	a,#0x6F
   244C F0                 1317 	movx	@dptr,a
                           1318 ;	genPointerSet
                           1319 ;     genFarPointerSet
   244D 90 06 71           1320 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000d)
   2450 74 72              1321 	mov	a,#0x72
   2452 F0                 1322 	movx	@dptr,a
                           1323 ;	genPointerSet
                           1324 ;     genFarPointerSet
   2453 90 06 72           1325 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000e)
   2456 74 65              1326 	mov	a,#0x65
   2458 F0                 1327 	movx	@dptr,a
                           1328 ;	genPointerSet
                           1329 ;     genFarPointerSet
   2459 90 06 73           1330 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000f)
   245C 74 57              1331 	mov	a,#0x57
   245E F0                 1332 	movx	@dptr,a
                           1333 ;	genPointerSet
                           1334 ;     genFarPointerSet
   245F 90 06 74           1335 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0010)
   2462 74 61              1336 	mov	a,#0x61
   2464 F0                 1337 	movx	@dptr,a
                           1338 ;	genPointerSet
                           1339 ;     genFarPointerSet
   2465 90 06 75           1340 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0011)
   2468 74 74              1341 	mov	a,#0x74
   246A F0                 1342 	movx	@dptr,a
                           1343 ;	genPointerSet
                           1344 ;     genFarPointerSet
   246B 90 06 76           1345 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0012)
   246E 74 63              1346 	mov	a,#0x63
   2470 F0                 1347 	movx	@dptr,a
                           1348 ;	genPointerSet
                           1349 ;     genFarPointerSet
   2471 90 06 77           1350 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0013)
   2474 74 68              1351 	mov	a,#0x68
   2476 F0                 1352 	movx	@dptr,a
                           1353 ;	genPointerSet
                           1354 ;     genFarPointerSet
   2477 90 06 78           1355 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0014)
   247A 74 64              1356 	mov	a,#0x64
   247C F0                 1357 	movx	@dptr,a
                           1358 ;	genPointerSet
                           1359 ;     genFarPointerSet
   247D 90 06 79           1360 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0015)
   2480 74 6F              1361 	mov	a,#0x6F
   2482 F0                 1362 	movx	@dptr,a
                           1363 ;	genPointerSet
                           1364 ;     genFarPointerSet
   2483 90 06 7A           1365 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0016)
   2486 74 67              1366 	mov	a,#0x67
   2488 F0                 1367 	movx	@dptr,a
                           1368 ;	genPointerSet
                           1369 ;     genFarPointerSet
   2489 90 06 7B           1370 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0017)
   248C 74 2F              1371 	mov	a,#0x2F
   248E F0                 1372 	movx	@dptr,a
                           1373 ;	genPointerSet
                           1374 ;     genFarPointerSet
   248F 90 06 7C           1375 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0018)
   2492 74 63              1376 	mov	a,#0x63
   2494 F0                 1377 	movx	@dptr,a
                           1378 ;	genPointerSet
                           1379 ;     genFarPointerSet
   2495 90 06 7D           1380 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0019)
   2498 74 6F              1381 	mov	a,#0x6F
   249A F0                 1382 	movx	@dptr,a
                           1383 ;	genPointerSet
                           1384 ;     genFarPointerSet
   249B 90 06 7E           1385 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001a)
   249E 74 72              1386 	mov	a,#0x72
   24A0 F0                 1387 	movx	@dptr,a
                           1388 ;	genPointerSet
                           1389 ;     genFarPointerSet
   24A1 90 06 7F           1390 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001b)
   24A4 74 65              1391 	mov	a,#0x65
   24A6 F0                 1392 	movx	@dptr,a
                           1393 ;	genPointerSet
                           1394 ;     genFarPointerSet
   24A7 90 06 80           1395 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001c)
   24AA 74 5F              1396 	mov	a,#0x5F
   24AC F0                 1397 	movx	@dptr,a
                           1398 ;	genPointerSet
                           1399 ;     genFarPointerSet
   24AD 90 06 81           1400 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001d)
   24B0 74 77              1401 	mov	a,#0x77
   24B2 F0                 1402 	movx	@dptr,a
                           1403 ;	genPointerSet
                           1404 ;     genFarPointerSet
   24B3 90 06 82           1405 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001e)
   24B6 74 61              1406 	mov	a,#0x61
   24B8 F0                 1407 	movx	@dptr,a
                           1408 ;	genPointerSet
                           1409 ;     genFarPointerSet
   24B9 90 06 83           1410 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001f)
   24BC 74 74              1411 	mov	a,#0x74
   24BE F0                 1412 	movx	@dptr,a
                           1413 ;	genPointerSet
                           1414 ;     genFarPointerSet
   24BF 90 06 84           1415 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0020)
   24C2 74 63              1416 	mov	a,#0x63
   24C4 F0                 1417 	movx	@dptr,a
                           1418 ;	genPointerSet
                           1419 ;     genFarPointerSet
   24C5 90 06 85           1420 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0021)
   24C8 74 68              1421 	mov	a,#0x68
   24CA F0                 1422 	movx	@dptr,a
                           1423 ;	genPointerSet
                           1424 ;     genFarPointerSet
   24CB 90 06 86           1425 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0022)
   24CE 74 64              1426 	mov	a,#0x64
   24D0 F0                 1427 	movx	@dptr,a
                           1428 ;	genPointerSet
                           1429 ;     genFarPointerSet
   24D1 90 06 87           1430 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0023)
   24D4 74 6F              1431 	mov	a,#0x6F
   24D6 F0                 1432 	movx	@dptr,a
                           1433 ;	genPointerSet
                           1434 ;     genFarPointerSet
   24D7 90 06 88           1435 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0024)
   24DA 74 67              1436 	mov	a,#0x67
   24DC F0                 1437 	movx	@dptr,a
                           1438 ;	genPointerSet
                           1439 ;     genFarPointerSet
   24DD 90 06 89           1440 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0025)
   24E0 74 2E              1441 	mov	a,#0x2E
   24E2 F0                 1442 	movx	@dptr,a
                           1443 ;	genPointerSet
                           1444 ;     genFarPointerSet
   24E3 90 06 8A           1445 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0026)
   24E6 74 63              1446 	mov	a,#0x63
   24E8 F0                 1447 	movx	@dptr,a
                           1448 ;	genPointerSet
                           1449 ;     genFarPointerSet
   24E9 90 06 8B           1450 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0027)
   24EC 74 00              1451 	mov	a,#0x00
   24EE F0                 1452 	movx	@dptr,a
                           1453 ;	genAssign
   24EF 90 05 7F           1454 	mov	dptr,#_HAL_assert_fail_PARM_2
   24F2 74 49              1455 	mov	a,#0x49
   24F4 F0                 1456 	movx	@dptr,a
   24F5 E4                 1457 	clr	a
   24F6 A3                 1458 	inc	dptr
   24F7 F0                 1459 	movx	@dptr,a
   24F8 A3                 1460 	inc	dptr
   24F9 F0                 1461 	movx	@dptr,a
   24FA A3                 1462 	inc	dptr
   24FB F0                 1463 	movx	@dptr,a
                           1464 ;	genCall
   24FC 75 82 64           1465 	mov	dpl,#_WD_disable_file_name_3_3
   24FF 75 83 06           1466 	mov	dph,#(_WD_disable_file_name_3_3 >> 8)
   2502 75 F0 00           1467 	mov	b,#0x00
   2505 12 1B 3F           1468 	lcall	_HAL_assert_fail
   2508                    1469 00104$:
                    061E   1470 	C$core_watchdog.c$75$1$1 ==.
                           1471 ;	../drivers/CoreWatchdog/core_watchdog.c:75: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 0 );
                           1472 ;	genAssign
   2508 90 06 61           1473 	mov	dptr,#_WD_disable_instance_1_1
   250B E0                 1474 	movx	a,@dptr
   250C FA                 1475 	mov	r2,a
   250D A3                 1476 	inc	dptr
   250E E0                 1477 	movx	a,@dptr
   250F FB                 1478 	mov	r3,a
   2510 A3                 1479 	inc	dptr
   2511 E0                 1480 	movx	a,@dptr
   2512 FC                 1481 	mov	r4,a
                           1482 ;	genPointerGet
                           1483 ;	genGenPointerGet
   2513 8A 82              1484 	mov	dpl,r2
   2515 8B 83              1485 	mov	dph,r3
   2517 8C F0              1486 	mov	b,r4
   2519 12 71 69           1487 	lcall	__gptrget
   251C FA                 1488 	mov	r2,a
   251D A3                 1489 	inc	dptr
   251E 12 71 69           1490 	lcall	__gptrget
   2521 FB                 1491 	mov	r3,a
                           1492 ;	genPlus
                           1493 ;	genPlusIncr
   2522 74 08              1494 	mov	a,#0x08
   2524 25 02              1495 	add	a,ar2
   2526 FA                 1496 	mov	r2,a
   2527 74 00              1497 	mov	a,#0x00
   2529 35 03              1498 	addc	a,ar3
   252B FB                 1499 	mov	r3,a
                           1500 ;	genAssign
   252C 90 05 A1           1501 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   252F 74 04              1502 	mov	a,#0x04
   2531 F0                 1503 	movx	@dptr,a
                           1504 ;	genAssign
   2532 90 05 A2           1505 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   2535 74 10              1506 	mov	a,#0x10
   2537 F0                 1507 	movx	@dptr,a
   2538 E4                 1508 	clr	a
   2539 A3                 1509 	inc	dptr
   253A F0                 1510 	movx	@dptr,a
   253B A3                 1511 	inc	dptr
   253C F0                 1512 	movx	@dptr,a
   253D A3                 1513 	inc	dptr
   253E F0                 1514 	movx	@dptr,a
                           1515 ;	genAssign
   253F 90 05 A6           1516 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   2542 E4                 1517 	clr	a
   2543 F0                 1518 	movx	@dptr,a
   2544 A3                 1519 	inc	dptr
   2545 F0                 1520 	movx	@dptr,a
   2546 A3                 1521 	inc	dptr
   2547 F0                 1522 	movx	@dptr,a
   2548 A3                 1523 	inc	dptr
   2549 F0                 1524 	movx	@dptr,a
                           1525 ;	genCall
   254A 8A 82              1526 	mov	dpl,r2
   254C 8B 83              1527 	mov	dph,r3
   254E 12 1C 03           1528 	lcall	_HW_set_32bit_reg_field
   2551                    1529 00106$:
                    0667   1530 	C$core_watchdog.c$76$1$1 ==.
                    0667   1531 	XG$WD_disable$0$0 ==.
   2551 22                 1532 	ret
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
   2552                    1545 _WD_reload:
                           1546 ;	genReceive
   2552 AA F0              1547 	mov	r2,b
   2554 AB 83              1548 	mov	r3,dph
   2556 E5 82              1549 	mov	a,dpl
   2558 90 06 8C           1550 	mov	dptr,#_WD_reload_instance_1_1
   255B F0                 1551 	movx	@dptr,a
   255C A3                 1552 	inc	dptr
   255D EB                 1553 	mov	a,r3
   255E F0                 1554 	movx	@dptr,a
   255F A3                 1555 	inc	dptr
   2560 EA                 1556 	mov	a,r2
   2561 F0                 1557 	movx	@dptr,a
                    0678   1558 	C$core_watchdog.c$89$2$2 ==.
                           1559 ;	../drivers/CoreWatchdog/core_watchdog.c:89: HAL_ASSERT( instance != NULL_instance )
                           1560 ;	genAssign
   2562 90 06 8C           1561 	mov	dptr,#_WD_reload_instance_1_1
   2565 E0                 1562 	movx	a,@dptr
   2566 FA                 1563 	mov	r2,a
   2567 A3                 1564 	inc	dptr
   2568 E0                 1565 	movx	a,@dptr
   2569 FB                 1566 	mov	r3,a
   256A A3                 1567 	inc	dptr
   256B E0                 1568 	movx	a,@dptr
   256C FC                 1569 	mov	r4,a
                           1570 ;	genAssign
   256D 90 05 D6           1571 	mov	dptr,#_NULL_instance
   2570 E0                 1572 	movx	a,@dptr
   2571 FD                 1573 	mov	r5,a
   2572 A3                 1574 	inc	dptr
   2573 E0                 1575 	movx	a,@dptr
   2574 FE                 1576 	mov	r6,a
   2575 A3                 1577 	inc	dptr
   2576 E0                 1578 	movx	a,@dptr
   2577 FF                 1579 	mov	r7,a
                           1580 ;	genCmpEq
                           1581 ;	gencjneshort
   2578 EA                 1582 	mov	a,r2
   2579 B5 05 0A           1583 	cjne	a,ar5,00109$
   257C EB                 1584 	mov	a,r3
   257D B5 06 06           1585 	cjne	a,ar6,00109$
   2580 EC                 1586 	mov	a,r4
   2581 B5 07 02           1587 	cjne	a,ar7,00109$
   2584 80 03              1588 	sjmp	00110$
   2586                    1589 00109$:
   2586 02 26 92           1590 	ljmp	00104$
   2589                    1591 00110$:
                           1592 ;	genPointerSet
                           1593 ;     genFarPointerSet
   2589 90 06 8F           1594 	mov	dptr,#_WD_reload_file_name_3_3
   258C 74 2E              1595 	mov	a,#0x2E
   258E F0                 1596 	movx	@dptr,a
                           1597 ;	genPointerSet
                           1598 ;     genFarPointerSet
   258F 90 06 90           1599 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0001)
   2592 74 2E              1600 	mov	a,#0x2E
   2594 F0                 1601 	movx	@dptr,a
                           1602 ;	genPointerSet
                           1603 ;     genFarPointerSet
   2595 90 06 91           1604 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0002)
   2598 74 2F              1605 	mov	a,#0x2F
   259A F0                 1606 	movx	@dptr,a
                           1607 ;	genPointerSet
                           1608 ;     genFarPointerSet
   259B 90 06 92           1609 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0003)
   259E 74 64              1610 	mov	a,#0x64
   25A0 F0                 1611 	movx	@dptr,a
                           1612 ;	genPointerSet
                           1613 ;     genFarPointerSet
   25A1 90 06 93           1614 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0004)
   25A4 74 72              1615 	mov	a,#0x72
   25A6 F0                 1616 	movx	@dptr,a
                           1617 ;	genPointerSet
                           1618 ;     genFarPointerSet
   25A7 90 06 94           1619 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0005)
   25AA 74 69              1620 	mov	a,#0x69
   25AC F0                 1621 	movx	@dptr,a
                           1622 ;	genPointerSet
                           1623 ;     genFarPointerSet
   25AD 90 06 95           1624 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0006)
   25B0 74 76              1625 	mov	a,#0x76
   25B2 F0                 1626 	movx	@dptr,a
                           1627 ;	genPointerSet
                           1628 ;     genFarPointerSet
   25B3 90 06 96           1629 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0007)
   25B6 74 65              1630 	mov	a,#0x65
   25B8 F0                 1631 	movx	@dptr,a
                           1632 ;	genPointerSet
                           1633 ;     genFarPointerSet
   25B9 90 06 97           1634 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0008)
   25BC 74 72              1635 	mov	a,#0x72
   25BE F0                 1636 	movx	@dptr,a
                           1637 ;	genPointerSet
                           1638 ;     genFarPointerSet
   25BF 90 06 98           1639 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0009)
   25C2 74 73              1640 	mov	a,#0x73
   25C4 F0                 1641 	movx	@dptr,a
                           1642 ;	genPointerSet
                           1643 ;     genFarPointerSet
   25C5 90 06 99           1644 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000a)
   25C8 74 2F              1645 	mov	a,#0x2F
   25CA F0                 1646 	movx	@dptr,a
                           1647 ;	genPointerSet
                           1648 ;     genFarPointerSet
   25CB 90 06 9A           1649 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000b)
   25CE 74 43              1650 	mov	a,#0x43
   25D0 F0                 1651 	movx	@dptr,a
                           1652 ;	genPointerSet
                           1653 ;     genFarPointerSet
   25D1 90 06 9B           1654 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000c)
   25D4 74 6F              1655 	mov	a,#0x6F
   25D6 F0                 1656 	movx	@dptr,a
                           1657 ;	genPointerSet
                           1658 ;     genFarPointerSet
   25D7 90 06 9C           1659 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000d)
   25DA 74 72              1660 	mov	a,#0x72
   25DC F0                 1661 	movx	@dptr,a
                           1662 ;	genPointerSet
                           1663 ;     genFarPointerSet
   25DD 90 06 9D           1664 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000e)
   25E0 74 65              1665 	mov	a,#0x65
   25E2 F0                 1666 	movx	@dptr,a
                           1667 ;	genPointerSet
                           1668 ;     genFarPointerSet
   25E3 90 06 9E           1669 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000f)
   25E6 74 57              1670 	mov	a,#0x57
   25E8 F0                 1671 	movx	@dptr,a
                           1672 ;	genPointerSet
                           1673 ;     genFarPointerSet
   25E9 90 06 9F           1674 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0010)
   25EC 74 61              1675 	mov	a,#0x61
   25EE F0                 1676 	movx	@dptr,a
                           1677 ;	genPointerSet
                           1678 ;     genFarPointerSet
   25EF 90 06 A0           1679 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0011)
   25F2 74 74              1680 	mov	a,#0x74
   25F4 F0                 1681 	movx	@dptr,a
                           1682 ;	genPointerSet
                           1683 ;     genFarPointerSet
   25F5 90 06 A1           1684 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0012)
   25F8 74 63              1685 	mov	a,#0x63
   25FA F0                 1686 	movx	@dptr,a
                           1687 ;	genPointerSet
                           1688 ;     genFarPointerSet
   25FB 90 06 A2           1689 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0013)
   25FE 74 68              1690 	mov	a,#0x68
   2600 F0                 1691 	movx	@dptr,a
                           1692 ;	genPointerSet
                           1693 ;     genFarPointerSet
   2601 90 06 A3           1694 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0014)
   2604 74 64              1695 	mov	a,#0x64
   2606 F0                 1696 	movx	@dptr,a
                           1697 ;	genPointerSet
                           1698 ;     genFarPointerSet
   2607 90 06 A4           1699 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0015)
   260A 74 6F              1700 	mov	a,#0x6F
   260C F0                 1701 	movx	@dptr,a
                           1702 ;	genPointerSet
                           1703 ;     genFarPointerSet
   260D 90 06 A5           1704 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0016)
   2610 74 67              1705 	mov	a,#0x67
   2612 F0                 1706 	movx	@dptr,a
                           1707 ;	genPointerSet
                           1708 ;     genFarPointerSet
   2613 90 06 A6           1709 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0017)
   2616 74 2F              1710 	mov	a,#0x2F
   2618 F0                 1711 	movx	@dptr,a
                           1712 ;	genPointerSet
                           1713 ;     genFarPointerSet
   2619 90 06 A7           1714 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0018)
   261C 74 63              1715 	mov	a,#0x63
   261E F0                 1716 	movx	@dptr,a
                           1717 ;	genPointerSet
                           1718 ;     genFarPointerSet
   261F 90 06 A8           1719 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0019)
   2622 74 6F              1720 	mov	a,#0x6F
   2624 F0                 1721 	movx	@dptr,a
                           1722 ;	genPointerSet
                           1723 ;     genFarPointerSet
   2625 90 06 A9           1724 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001a)
   2628 74 72              1725 	mov	a,#0x72
   262A F0                 1726 	movx	@dptr,a
                           1727 ;	genPointerSet
                           1728 ;     genFarPointerSet
   262B 90 06 AA           1729 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001b)
   262E 74 65              1730 	mov	a,#0x65
   2630 F0                 1731 	movx	@dptr,a
                           1732 ;	genPointerSet
                           1733 ;     genFarPointerSet
   2631 90 06 AB           1734 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001c)
   2634 74 5F              1735 	mov	a,#0x5F
   2636 F0                 1736 	movx	@dptr,a
                           1737 ;	genPointerSet
                           1738 ;     genFarPointerSet
   2637 90 06 AC           1739 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001d)
   263A 74 77              1740 	mov	a,#0x77
   263C F0                 1741 	movx	@dptr,a
                           1742 ;	genPointerSet
                           1743 ;     genFarPointerSet
   263D 90 06 AD           1744 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001e)
   2640 74 61              1745 	mov	a,#0x61
   2642 F0                 1746 	movx	@dptr,a
                           1747 ;	genPointerSet
                           1748 ;     genFarPointerSet
   2643 90 06 AE           1749 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001f)
   2646 74 74              1750 	mov	a,#0x74
   2648 F0                 1751 	movx	@dptr,a
                           1752 ;	genPointerSet
                           1753 ;     genFarPointerSet
   2649 90 06 AF           1754 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0020)
   264C 74 63              1755 	mov	a,#0x63
   264E F0                 1756 	movx	@dptr,a
                           1757 ;	genPointerSet
                           1758 ;     genFarPointerSet
   264F 90 06 B0           1759 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0021)
   2652 74 68              1760 	mov	a,#0x68
   2654 F0                 1761 	movx	@dptr,a
                           1762 ;	genPointerSet
                           1763 ;     genFarPointerSet
   2655 90 06 B1           1764 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0022)
   2658 74 64              1765 	mov	a,#0x64
   265A F0                 1766 	movx	@dptr,a
                           1767 ;	genPointerSet
                           1768 ;     genFarPointerSet
   265B 90 06 B2           1769 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0023)
   265E 74 6F              1770 	mov	a,#0x6F
   2660 F0                 1771 	movx	@dptr,a
                           1772 ;	genPointerSet
                           1773 ;     genFarPointerSet
   2661 90 06 B3           1774 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0024)
   2664 74 67              1775 	mov	a,#0x67
   2666 F0                 1776 	movx	@dptr,a
                           1777 ;	genPointerSet
                           1778 ;     genFarPointerSet
   2667 90 06 B4           1779 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0025)
   266A 74 2E              1780 	mov	a,#0x2E
   266C F0                 1781 	movx	@dptr,a
                           1782 ;	genPointerSet
                           1783 ;     genFarPointerSet
   266D 90 06 B5           1784 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0026)
   2670 74 63              1785 	mov	a,#0x63
   2672 F0                 1786 	movx	@dptr,a
                           1787 ;	genPointerSet
                           1788 ;     genFarPointerSet
   2673 90 06 B6           1789 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0027)
   2676 74 00              1790 	mov	a,#0x00
   2678 F0                 1791 	movx	@dptr,a
                           1792 ;	genAssign
   2679 90 05 7F           1793 	mov	dptr,#_HAL_assert_fail_PARM_2
   267C 74 59              1794 	mov	a,#0x59
   267E F0                 1795 	movx	@dptr,a
   267F E4                 1796 	clr	a
   2680 A3                 1797 	inc	dptr
   2681 F0                 1798 	movx	@dptr,a
   2682 A3                 1799 	inc	dptr
   2683 F0                 1800 	movx	@dptr,a
   2684 A3                 1801 	inc	dptr
   2685 F0                 1802 	movx	@dptr,a
                           1803 ;	genCall
   2686 75 82 8F           1804 	mov	dpl,#_WD_reload_file_name_3_3
   2689 75 83 06           1805 	mov	dph,#(_WD_reload_file_name_3_3 >> 8)
   268C 75 F0 00           1806 	mov	b,#0x00
   268F 12 1B 3F           1807 	lcall	_HAL_assert_fail
   2692                    1808 00104$:
                    07A8   1809 	C$core_watchdog.c$91$1$1 ==.
                           1810 ;	../drivers/CoreWatchdog/core_watchdog.c:91: HAL_set_32bit_reg( instance->base_address, WDOGREFRESH, 1 );
                           1811 ;	genAssign
   2692 90 06 8C           1812 	mov	dptr,#_WD_reload_instance_1_1
   2695 E0                 1813 	movx	a,@dptr
   2696 FA                 1814 	mov	r2,a
   2697 A3                 1815 	inc	dptr
   2698 E0                 1816 	movx	a,@dptr
   2699 FB                 1817 	mov	r3,a
   269A A3                 1818 	inc	dptr
   269B E0                 1819 	movx	a,@dptr
   269C FC                 1820 	mov	r4,a
                           1821 ;	genPointerGet
                           1822 ;	genGenPointerGet
   269D 8A 82              1823 	mov	dpl,r2
   269F 8B 83              1824 	mov	dph,r3
   26A1 8C F0              1825 	mov	b,r4
   26A3 12 71 69           1826 	lcall	__gptrget
   26A6 FA                 1827 	mov	r2,a
   26A7 A3                 1828 	inc	dptr
   26A8 12 71 69           1829 	lcall	__gptrget
   26AB FB                 1830 	mov	r3,a
                           1831 ;	genPlus
                           1832 ;	genPlusIncr
   26AC 74 0C              1833 	mov	a,#0x0C
   26AE 25 02              1834 	add	a,ar2
   26B0 FA                 1835 	mov	r2,a
   26B1 74 00              1836 	mov	a,#0x00
   26B3 35 03              1837 	addc	a,ar3
   26B5 FB                 1838 	mov	r3,a
                           1839 ;	genAssign
   26B6 90 05 9D           1840 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   26B9 74 01              1841 	mov	a,#0x01
   26BB F0                 1842 	movx	@dptr,a
   26BC E4                 1843 	clr	a
   26BD A3                 1844 	inc	dptr
   26BE F0                 1845 	movx	@dptr,a
   26BF A3                 1846 	inc	dptr
   26C0 F0                 1847 	movx	@dptr,a
   26C1 A3                 1848 	inc	dptr
   26C2 F0                 1849 	movx	@dptr,a
                           1850 ;	genCall
   26C3 8A 82              1851 	mov	dpl,r2
   26C5 8B 83              1852 	mov	dph,r3
   26C7 12 1B AB           1853 	lcall	_HW_set_32bit_reg
   26CA                    1854 00106$:
                    07E0   1855 	C$core_watchdog.c$92$1$1 ==.
                    07E0   1856 	XG$WD_reload$0$0 ==.
   26CA 22                 1857 	ret
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
   26CB                    1870 _WD_current_value:
                           1871 ;	genReceive
   26CB AA F0              1872 	mov	r2,b
   26CD AB 83              1873 	mov	r3,dph
   26CF E5 82              1874 	mov	a,dpl
   26D1 90 06 B7           1875 	mov	dptr,#_WD_current_value_instance_1_1
   26D4 F0                 1876 	movx	@dptr,a
   26D5 A3                 1877 	inc	dptr
   26D6 EB                 1878 	mov	a,r3
   26D7 F0                 1879 	movx	@dptr,a
   26D8 A3                 1880 	inc	dptr
   26D9 EA                 1881 	mov	a,r2
   26DA F0                 1882 	movx	@dptr,a
                    07F1   1883 	C$core_watchdog.c$105$2$2 ==.
                           1884 ;	../drivers/CoreWatchdog/core_watchdog.c:105: HAL_ASSERT( instance != NULL_instance )
                           1885 ;	genAssign
   26DB 90 06 B7           1886 	mov	dptr,#_WD_current_value_instance_1_1
   26DE E0                 1887 	movx	a,@dptr
   26DF FA                 1888 	mov	r2,a
   26E0 A3                 1889 	inc	dptr
   26E1 E0                 1890 	movx	a,@dptr
   26E2 FB                 1891 	mov	r3,a
   26E3 A3                 1892 	inc	dptr
   26E4 E0                 1893 	movx	a,@dptr
   26E5 FC                 1894 	mov	r4,a
                           1895 ;	genAssign
   26E6 90 05 D6           1896 	mov	dptr,#_NULL_instance
   26E9 E0                 1897 	movx	a,@dptr
   26EA FD                 1898 	mov	r5,a
   26EB A3                 1899 	inc	dptr
   26EC E0                 1900 	movx	a,@dptr
   26ED FE                 1901 	mov	r6,a
   26EE A3                 1902 	inc	dptr
   26EF E0                 1903 	movx	a,@dptr
   26F0 FF                 1904 	mov	r7,a
                           1905 ;	genCmpEq
                           1906 ;	gencjneshort
   26F1 EA                 1907 	mov	a,r2
   26F2 B5 05 0A           1908 	cjne	a,ar5,00109$
   26F5 EB                 1909 	mov	a,r3
   26F6 B5 06 06           1910 	cjne	a,ar6,00109$
   26F9 EC                 1911 	mov	a,r4
   26FA B5 07 02           1912 	cjne	a,ar7,00109$
   26FD 80 03              1913 	sjmp	00110$
   26FF                    1914 00109$:
   26FF 02 28 0B           1915 	ljmp	00104$
   2702                    1916 00110$:
                           1917 ;	genPointerSet
                           1918 ;     genFarPointerSet
   2702 90 06 BA           1919 	mov	dptr,#_WD_current_value_file_name_3_3
   2705 74 2E              1920 	mov	a,#0x2E
   2707 F0                 1921 	movx	@dptr,a
                           1922 ;	genPointerSet
                           1923 ;     genFarPointerSet
   2708 90 06 BB           1924 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0001)
   270B 74 2E              1925 	mov	a,#0x2E
   270D F0                 1926 	movx	@dptr,a
                           1927 ;	genPointerSet
                           1928 ;     genFarPointerSet
   270E 90 06 BC           1929 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0002)
   2711 74 2F              1930 	mov	a,#0x2F
   2713 F0                 1931 	movx	@dptr,a
                           1932 ;	genPointerSet
                           1933 ;     genFarPointerSet
   2714 90 06 BD           1934 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0003)
   2717 74 64              1935 	mov	a,#0x64
   2719 F0                 1936 	movx	@dptr,a
                           1937 ;	genPointerSet
                           1938 ;     genFarPointerSet
   271A 90 06 BE           1939 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0004)
   271D 74 72              1940 	mov	a,#0x72
   271F F0                 1941 	movx	@dptr,a
                           1942 ;	genPointerSet
                           1943 ;     genFarPointerSet
   2720 90 06 BF           1944 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0005)
   2723 74 69              1945 	mov	a,#0x69
   2725 F0                 1946 	movx	@dptr,a
                           1947 ;	genPointerSet
                           1948 ;     genFarPointerSet
   2726 90 06 C0           1949 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0006)
   2729 74 76              1950 	mov	a,#0x76
   272B F0                 1951 	movx	@dptr,a
                           1952 ;	genPointerSet
                           1953 ;     genFarPointerSet
   272C 90 06 C1           1954 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0007)
   272F 74 65              1955 	mov	a,#0x65
   2731 F0                 1956 	movx	@dptr,a
                           1957 ;	genPointerSet
                           1958 ;     genFarPointerSet
   2732 90 06 C2           1959 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0008)
   2735 74 72              1960 	mov	a,#0x72
   2737 F0                 1961 	movx	@dptr,a
                           1962 ;	genPointerSet
                           1963 ;     genFarPointerSet
   2738 90 06 C3           1964 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0009)
   273B 74 73              1965 	mov	a,#0x73
   273D F0                 1966 	movx	@dptr,a
                           1967 ;	genPointerSet
                           1968 ;     genFarPointerSet
   273E 90 06 C4           1969 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000a)
   2741 74 2F              1970 	mov	a,#0x2F
   2743 F0                 1971 	movx	@dptr,a
                           1972 ;	genPointerSet
                           1973 ;     genFarPointerSet
   2744 90 06 C5           1974 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000b)
   2747 74 43              1975 	mov	a,#0x43
   2749 F0                 1976 	movx	@dptr,a
                           1977 ;	genPointerSet
                           1978 ;     genFarPointerSet
   274A 90 06 C6           1979 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000c)
   274D 74 6F              1980 	mov	a,#0x6F
   274F F0                 1981 	movx	@dptr,a
                           1982 ;	genPointerSet
                           1983 ;     genFarPointerSet
   2750 90 06 C7           1984 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000d)
   2753 74 72              1985 	mov	a,#0x72
   2755 F0                 1986 	movx	@dptr,a
                           1987 ;	genPointerSet
                           1988 ;     genFarPointerSet
   2756 90 06 C8           1989 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000e)
   2759 74 65              1990 	mov	a,#0x65
   275B F0                 1991 	movx	@dptr,a
                           1992 ;	genPointerSet
                           1993 ;     genFarPointerSet
   275C 90 06 C9           1994 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000f)
   275F 74 57              1995 	mov	a,#0x57
   2761 F0                 1996 	movx	@dptr,a
                           1997 ;	genPointerSet
                           1998 ;     genFarPointerSet
   2762 90 06 CA           1999 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0010)
   2765 74 61              2000 	mov	a,#0x61
   2767 F0                 2001 	movx	@dptr,a
                           2002 ;	genPointerSet
                           2003 ;     genFarPointerSet
   2768 90 06 CB           2004 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0011)
   276B 74 74              2005 	mov	a,#0x74
   276D F0                 2006 	movx	@dptr,a
                           2007 ;	genPointerSet
                           2008 ;     genFarPointerSet
   276E 90 06 CC           2009 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0012)
   2771 74 63              2010 	mov	a,#0x63
   2773 F0                 2011 	movx	@dptr,a
                           2012 ;	genPointerSet
                           2013 ;     genFarPointerSet
   2774 90 06 CD           2014 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0013)
   2777 74 68              2015 	mov	a,#0x68
   2779 F0                 2016 	movx	@dptr,a
                           2017 ;	genPointerSet
                           2018 ;     genFarPointerSet
   277A 90 06 CE           2019 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0014)
   277D 74 64              2020 	mov	a,#0x64
   277F F0                 2021 	movx	@dptr,a
                           2022 ;	genPointerSet
                           2023 ;     genFarPointerSet
   2780 90 06 CF           2024 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0015)
   2783 74 6F              2025 	mov	a,#0x6F
   2785 F0                 2026 	movx	@dptr,a
                           2027 ;	genPointerSet
                           2028 ;     genFarPointerSet
   2786 90 06 D0           2029 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0016)
   2789 74 67              2030 	mov	a,#0x67
   278B F0                 2031 	movx	@dptr,a
                           2032 ;	genPointerSet
                           2033 ;     genFarPointerSet
   278C 90 06 D1           2034 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0017)
   278F 74 2F              2035 	mov	a,#0x2F
   2791 F0                 2036 	movx	@dptr,a
                           2037 ;	genPointerSet
                           2038 ;     genFarPointerSet
   2792 90 06 D2           2039 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0018)
   2795 74 63              2040 	mov	a,#0x63
   2797 F0                 2041 	movx	@dptr,a
                           2042 ;	genPointerSet
                           2043 ;     genFarPointerSet
   2798 90 06 D3           2044 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0019)
   279B 74 6F              2045 	mov	a,#0x6F
   279D F0                 2046 	movx	@dptr,a
                           2047 ;	genPointerSet
                           2048 ;     genFarPointerSet
   279E 90 06 D4           2049 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001a)
   27A1 74 72              2050 	mov	a,#0x72
   27A3 F0                 2051 	movx	@dptr,a
                           2052 ;	genPointerSet
                           2053 ;     genFarPointerSet
   27A4 90 06 D5           2054 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001b)
   27A7 74 65              2055 	mov	a,#0x65
   27A9 F0                 2056 	movx	@dptr,a
                           2057 ;	genPointerSet
                           2058 ;     genFarPointerSet
   27AA 90 06 D6           2059 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001c)
   27AD 74 5F              2060 	mov	a,#0x5F
   27AF F0                 2061 	movx	@dptr,a
                           2062 ;	genPointerSet
                           2063 ;     genFarPointerSet
   27B0 90 06 D7           2064 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001d)
   27B3 74 77              2065 	mov	a,#0x77
   27B5 F0                 2066 	movx	@dptr,a
                           2067 ;	genPointerSet
                           2068 ;     genFarPointerSet
   27B6 90 06 D8           2069 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001e)
   27B9 74 61              2070 	mov	a,#0x61
   27BB F0                 2071 	movx	@dptr,a
                           2072 ;	genPointerSet
                           2073 ;     genFarPointerSet
   27BC 90 06 D9           2074 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001f)
   27BF 74 74              2075 	mov	a,#0x74
   27C1 F0                 2076 	movx	@dptr,a
                           2077 ;	genPointerSet
                           2078 ;     genFarPointerSet
   27C2 90 06 DA           2079 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0020)
   27C5 74 63              2080 	mov	a,#0x63
   27C7 F0                 2081 	movx	@dptr,a
                           2082 ;	genPointerSet
                           2083 ;     genFarPointerSet
   27C8 90 06 DB           2084 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0021)
   27CB 74 68              2085 	mov	a,#0x68
   27CD F0                 2086 	movx	@dptr,a
                           2087 ;	genPointerSet
                           2088 ;     genFarPointerSet
   27CE 90 06 DC           2089 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0022)
   27D1 74 64              2090 	mov	a,#0x64
   27D3 F0                 2091 	movx	@dptr,a
                           2092 ;	genPointerSet
                           2093 ;     genFarPointerSet
   27D4 90 06 DD           2094 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0023)
   27D7 74 6F              2095 	mov	a,#0x6F
   27D9 F0                 2096 	movx	@dptr,a
                           2097 ;	genPointerSet
                           2098 ;     genFarPointerSet
   27DA 90 06 DE           2099 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0024)
   27DD 74 67              2100 	mov	a,#0x67
   27DF F0                 2101 	movx	@dptr,a
                           2102 ;	genPointerSet
                           2103 ;     genFarPointerSet
   27E0 90 06 DF           2104 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0025)
   27E3 74 2E              2105 	mov	a,#0x2E
   27E5 F0                 2106 	movx	@dptr,a
                           2107 ;	genPointerSet
                           2108 ;     genFarPointerSet
   27E6 90 06 E0           2109 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0026)
   27E9 74 63              2110 	mov	a,#0x63
   27EB F0                 2111 	movx	@dptr,a
                           2112 ;	genPointerSet
                           2113 ;     genFarPointerSet
   27EC 90 06 E1           2114 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0027)
   27EF 74 00              2115 	mov	a,#0x00
   27F1 F0                 2116 	movx	@dptr,a
                           2117 ;	genAssign
   27F2 90 05 7F           2118 	mov	dptr,#_HAL_assert_fail_PARM_2
   27F5 74 69              2119 	mov	a,#0x69
   27F7 F0                 2120 	movx	@dptr,a
   27F8 E4                 2121 	clr	a
   27F9 A3                 2122 	inc	dptr
   27FA F0                 2123 	movx	@dptr,a
   27FB A3                 2124 	inc	dptr
   27FC F0                 2125 	movx	@dptr,a
   27FD A3                 2126 	inc	dptr
   27FE F0                 2127 	movx	@dptr,a
                           2128 ;	genCall
   27FF 75 82 BA           2129 	mov	dpl,#_WD_current_value_file_name_3_3
   2802 75 83 06           2130 	mov	dph,#(_WD_current_value_file_name_3_3 >> 8)
   2805 75 F0 00           2131 	mov	b,#0x00
   2808 12 1B 3F           2132 	lcall	_HAL_assert_fail
   280B                    2133 00104$:
                    0921   2134 	C$core_watchdog.c$107$1$1 ==.
                           2135 ;	../drivers/CoreWatchdog/core_watchdog.c:107: return HAL_get_32bit_reg( instance->base_address, WDOGVALUE );
                           2136 ;	genAssign
   280B 90 06 B7           2137 	mov	dptr,#_WD_current_value_instance_1_1
   280E E0                 2138 	movx	a,@dptr
   280F FA                 2139 	mov	r2,a
   2810 A3                 2140 	inc	dptr
   2811 E0                 2141 	movx	a,@dptr
   2812 FB                 2142 	mov	r3,a
   2813 A3                 2143 	inc	dptr
   2814 E0                 2144 	movx	a,@dptr
   2815 FC                 2145 	mov	r4,a
                           2146 ;	genPointerGet
                           2147 ;	genGenPointerGet
   2816 8A 82              2148 	mov	dpl,r2
   2818 8B 83              2149 	mov	dph,r3
   281A 8C F0              2150 	mov	b,r4
   281C 12 71 69           2151 	lcall	__gptrget
   281F FA                 2152 	mov	r2,a
   2820 A3                 2153 	inc	dptr
   2821 12 71 69           2154 	lcall	__gptrget
   2824 FB                 2155 	mov	r3,a
                           2156 ;	genPlus
                           2157 ;	genPlusIncr
   2825 74 04              2158 	mov	a,#0x04
   2827 25 02              2159 	add	a,ar2
   2829 FA                 2160 	mov	r2,a
   282A 74 00              2161 	mov	a,#0x00
   282C 35 03              2162 	addc	a,ar3
   282E FB                 2163 	mov	r3,a
                           2164 ;	genCall
   282F 8A 82              2165 	mov	dpl,r2
   2831 8B 83              2166 	mov	dph,r3
   2833 12 1B 9F           2167 	lcall	_HW_get_32bit_reg
   2836 AA 82              2168 	mov	r2,dpl
   2838 AB 83              2169 	mov	r3,dph
   283A AC F0              2170 	mov	r4,b
   283C FD                 2171 	mov	r5,a
                           2172 ;	genRet
   283D 8A 82              2173 	mov	dpl,r2
   283F 8B 83              2174 	mov	dph,r3
   2841 8C F0              2175 	mov	b,r4
   2843 ED                 2176 	mov	a,r5
   2844                    2177 00106$:
                    095A   2178 	C$core_watchdog.c$108$1$1 ==.
                    095A   2179 	XG$WD_current_value$0$0 ==.
   2844 22                 2180 	ret
                           2181 	.area CSEG    (CODE)
                           2182 	.area CONST   (CODE)
                           2183 	.area XINIT   (CODE)
                           2184 	.area CABS    (ABS,CODE)
