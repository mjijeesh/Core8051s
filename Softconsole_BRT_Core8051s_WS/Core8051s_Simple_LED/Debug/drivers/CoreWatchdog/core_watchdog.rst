                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:51:54 2016
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
   0085                      66 _NULL_instance:
   0085                      67 	.ds 3
                    0003     68 LWD_init$base$1$1==.
   0088                      69 _WD_init_PARM_2:
   0088                      70 	.ds 2
                    0005     71 LWD_init$value$1$1==.
   008A                      72 _WD_init_PARM_3:
   008A                      73 	.ds 4
                    0009     74 LWD_init$scale$1$1==.
   008E                      75 _WD_init_PARM_4:
   008E                      76 	.ds 4
                    000D     77 LWD_init$instance$1$1==.
   0092                      78 _WD_init_instance_1_1:
   0092                      79 	.ds 3
                    0010     80 LWD_init$file_name$3$3==.
   0095                      81 _WD_init_file_name_3_3:
   0095                      82 	.ds 40
                    0038     83 LWD_init$file_name$3$5==.
   00BD                      84 _WD_init_file_name_3_5:
   00BD                      85 	.ds 40
                    0060     86 LWD_enable$instance$1$1==.
   00E5                      87 _WD_enable_instance_1_1:
   00E5                      88 	.ds 3
                    0063     89 LWD_enable$file_name$3$3==.
   00E8                      90 _WD_enable_file_name_3_3:
   00E8                      91 	.ds 40
                    008B     92 LWD_disable$instance$1$1==.
   0110                      93 _WD_disable_instance_1_1:
   0110                      94 	.ds 3
                    008E     95 LWD_disable$file_name$3$3==.
   0113                      96 _WD_disable_file_name_3_3:
   0113                      97 	.ds 40
                    00B6     98 LWD_reload$instance$1$1==.
   013B                      99 _WD_reload_instance_1_1:
   013B                     100 	.ds 3
                    00B9    101 LWD_reload$file_name$3$3==.
   013E                     102 _WD_reload_file_name_3_3:
   013E                     103 	.ds 40
                    00E1    104 LWD_current_value$instance$1$1==.
   0166                     105 _WD_current_value_instance_1_1:
   0166                     106 	.ds 3
                    00E4    107 LWD_current_value$file_name$3$3==.
   0169                     108 _WD_current_value_file_name_3_3:
   0169                     109 	.ds 40
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
   0BC1                     157 _WD_init:
                    0002    158 	ar2 = 0x02
                    0003    159 	ar3 = 0x03
                    0004    160 	ar4 = 0x04
                    0005    161 	ar5 = 0x05
                    0006    162 	ar6 = 0x06
                    0007    163 	ar7 = 0x07
                    0000    164 	ar0 = 0x00
                    0001    165 	ar1 = 0x01
                            166 ;	genReceive
   0BC1 AA F0               167 	mov	r2,b
   0BC3 AB 83               168 	mov	r3,dph
   0BC5 E5 82               169 	mov	a,dpl
   0BC7 90 00 92            170 	mov	dptr,#_WD_init_instance_1_1
   0BCA F0                  171 	movx	@dptr,a
   0BCB A3                  172 	inc	dptr
   0BCC EB                  173 	mov	a,r3
   0BCD F0                  174 	movx	@dptr,a
   0BCE A3                  175 	inc	dptr
   0BCF EA                  176 	mov	a,r2
   0BD0 F0                  177 	movx	@dptr,a
                    0010    178 	C$core_watchdog.c$34$2$2 ==.
                            179 ;	../drivers/CoreWatchdog/core_watchdog.c:34: HAL_ASSERT( instance != NULL_instance )
                            180 ;	genAssign
   0BD1 90 00 92            181 	mov	dptr,#_WD_init_instance_1_1
   0BD4 E0                  182 	movx	a,@dptr
   0BD5 FA                  183 	mov	r2,a
   0BD6 A3                  184 	inc	dptr
   0BD7 E0                  185 	movx	a,@dptr
   0BD8 FB                  186 	mov	r3,a
   0BD9 A3                  187 	inc	dptr
   0BDA E0                  188 	movx	a,@dptr
   0BDB FC                  189 	mov	r4,a
                            190 ;	genAssign
   0BDC 90 00 85            191 	mov	dptr,#_NULL_instance
   0BDF E0                  192 	movx	a,@dptr
   0BE0 FD                  193 	mov	r5,a
   0BE1 A3                  194 	inc	dptr
   0BE2 E0                  195 	movx	a,@dptr
   0BE3 FE                  196 	mov	r6,a
   0BE4 A3                  197 	inc	dptr
   0BE5 E0                  198 	movx	a,@dptr
   0BE6 FF                  199 	mov	r7,a
                            200 ;	genCmpEq
                            201 ;	gencjneshort
   0BE7 EA                  202 	mov	a,r2
   0BE8 B5 05 0A            203 	cjne	a,ar5,00115$
   0BEB EB                  204 	mov	a,r3
   0BEC B5 06 06            205 	cjne	a,ar6,00115$
   0BEF EC                  206 	mov	a,r4
   0BF0 B5 07 02            207 	cjne	a,ar7,00115$
   0BF3 80 03               208 	sjmp	00116$
   0BF5                     209 00115$:
   0BF5 02 0D 01            210 	ljmp	00104$
   0BF8                     211 00116$:
                            212 ;	genPointerSet
                            213 ;     genFarPointerSet
   0BF8 90 00 95            214 	mov	dptr,#_WD_init_file_name_3_3
   0BFB 74 2E               215 	mov	a,#0x2E
   0BFD F0                  216 	movx	@dptr,a
                            217 ;	genPointerSet
                            218 ;     genFarPointerSet
   0BFE 90 00 96            219 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0001)
   0C01 74 2E               220 	mov	a,#0x2E
   0C03 F0                  221 	movx	@dptr,a
                            222 ;	genPointerSet
                            223 ;     genFarPointerSet
   0C04 90 00 97            224 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0002)
   0C07 74 2F               225 	mov	a,#0x2F
   0C09 F0                  226 	movx	@dptr,a
                            227 ;	genPointerSet
                            228 ;     genFarPointerSet
   0C0A 90 00 98            229 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0003)
   0C0D 74 64               230 	mov	a,#0x64
   0C0F F0                  231 	movx	@dptr,a
                            232 ;	genPointerSet
                            233 ;     genFarPointerSet
   0C10 90 00 99            234 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0004)
   0C13 74 72               235 	mov	a,#0x72
   0C15 F0                  236 	movx	@dptr,a
                            237 ;	genPointerSet
                            238 ;     genFarPointerSet
   0C16 90 00 9A            239 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0005)
   0C19 74 69               240 	mov	a,#0x69
   0C1B F0                  241 	movx	@dptr,a
                            242 ;	genPointerSet
                            243 ;     genFarPointerSet
   0C1C 90 00 9B            244 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0006)
   0C1F 74 76               245 	mov	a,#0x76
   0C21 F0                  246 	movx	@dptr,a
                            247 ;	genPointerSet
                            248 ;     genFarPointerSet
   0C22 90 00 9C            249 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0007)
   0C25 74 65               250 	mov	a,#0x65
   0C27 F0                  251 	movx	@dptr,a
                            252 ;	genPointerSet
                            253 ;     genFarPointerSet
   0C28 90 00 9D            254 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0008)
   0C2B 74 72               255 	mov	a,#0x72
   0C2D F0                  256 	movx	@dptr,a
                            257 ;	genPointerSet
                            258 ;     genFarPointerSet
   0C2E 90 00 9E            259 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0009)
   0C31 74 73               260 	mov	a,#0x73
   0C33 F0                  261 	movx	@dptr,a
                            262 ;	genPointerSet
                            263 ;     genFarPointerSet
   0C34 90 00 9F            264 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000a)
   0C37 74 2F               265 	mov	a,#0x2F
   0C39 F0                  266 	movx	@dptr,a
                            267 ;	genPointerSet
                            268 ;     genFarPointerSet
   0C3A 90 00 A0            269 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000b)
   0C3D 74 43               270 	mov	a,#0x43
   0C3F F0                  271 	movx	@dptr,a
                            272 ;	genPointerSet
                            273 ;     genFarPointerSet
   0C40 90 00 A1            274 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000c)
   0C43 74 6F               275 	mov	a,#0x6F
   0C45 F0                  276 	movx	@dptr,a
                            277 ;	genPointerSet
                            278 ;     genFarPointerSet
   0C46 90 00 A2            279 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000d)
   0C49 74 72               280 	mov	a,#0x72
   0C4B F0                  281 	movx	@dptr,a
                            282 ;	genPointerSet
                            283 ;     genFarPointerSet
   0C4C 90 00 A3            284 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000e)
   0C4F 74 65               285 	mov	a,#0x65
   0C51 F0                  286 	movx	@dptr,a
                            287 ;	genPointerSet
                            288 ;     genFarPointerSet
   0C52 90 00 A4            289 	mov	dptr,#(_WD_init_file_name_3_3 + 0x000f)
   0C55 74 57               290 	mov	a,#0x57
   0C57 F0                  291 	movx	@dptr,a
                            292 ;	genPointerSet
                            293 ;     genFarPointerSet
   0C58 90 00 A5            294 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0010)
   0C5B 74 61               295 	mov	a,#0x61
   0C5D F0                  296 	movx	@dptr,a
                            297 ;	genPointerSet
                            298 ;     genFarPointerSet
   0C5E 90 00 A6            299 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0011)
   0C61 74 74               300 	mov	a,#0x74
   0C63 F0                  301 	movx	@dptr,a
                            302 ;	genPointerSet
                            303 ;     genFarPointerSet
   0C64 90 00 A7            304 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0012)
   0C67 74 63               305 	mov	a,#0x63
   0C69 F0                  306 	movx	@dptr,a
                            307 ;	genPointerSet
                            308 ;     genFarPointerSet
   0C6A 90 00 A8            309 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0013)
   0C6D 74 68               310 	mov	a,#0x68
   0C6F F0                  311 	movx	@dptr,a
                            312 ;	genPointerSet
                            313 ;     genFarPointerSet
   0C70 90 00 A9            314 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0014)
   0C73 74 64               315 	mov	a,#0x64
   0C75 F0                  316 	movx	@dptr,a
                            317 ;	genPointerSet
                            318 ;     genFarPointerSet
   0C76 90 00 AA            319 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0015)
   0C79 74 6F               320 	mov	a,#0x6F
   0C7B F0                  321 	movx	@dptr,a
                            322 ;	genPointerSet
                            323 ;     genFarPointerSet
   0C7C 90 00 AB            324 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0016)
   0C7F 74 67               325 	mov	a,#0x67
   0C81 F0                  326 	movx	@dptr,a
                            327 ;	genPointerSet
                            328 ;     genFarPointerSet
   0C82 90 00 AC            329 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0017)
   0C85 74 2F               330 	mov	a,#0x2F
   0C87 F0                  331 	movx	@dptr,a
                            332 ;	genPointerSet
                            333 ;     genFarPointerSet
   0C88 90 00 AD            334 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0018)
   0C8B 74 63               335 	mov	a,#0x63
   0C8D F0                  336 	movx	@dptr,a
                            337 ;	genPointerSet
                            338 ;     genFarPointerSet
   0C8E 90 00 AE            339 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0019)
   0C91 74 6F               340 	mov	a,#0x6F
   0C93 F0                  341 	movx	@dptr,a
                            342 ;	genPointerSet
                            343 ;     genFarPointerSet
   0C94 90 00 AF            344 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001a)
   0C97 74 72               345 	mov	a,#0x72
   0C99 F0                  346 	movx	@dptr,a
                            347 ;	genPointerSet
                            348 ;     genFarPointerSet
   0C9A 90 00 B0            349 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001b)
   0C9D 74 65               350 	mov	a,#0x65
   0C9F F0                  351 	movx	@dptr,a
                            352 ;	genPointerSet
                            353 ;     genFarPointerSet
   0CA0 90 00 B1            354 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001c)
   0CA3 74 5F               355 	mov	a,#0x5F
   0CA5 F0                  356 	movx	@dptr,a
                            357 ;	genPointerSet
                            358 ;     genFarPointerSet
   0CA6 90 00 B2            359 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001d)
   0CA9 74 77               360 	mov	a,#0x77
   0CAB F0                  361 	movx	@dptr,a
                            362 ;	genPointerSet
                            363 ;     genFarPointerSet
   0CAC 90 00 B3            364 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001e)
   0CAF 74 61               365 	mov	a,#0x61
   0CB1 F0                  366 	movx	@dptr,a
                            367 ;	genPointerSet
                            368 ;     genFarPointerSet
   0CB2 90 00 B4            369 	mov	dptr,#(_WD_init_file_name_3_3 + 0x001f)
   0CB5 74 74               370 	mov	a,#0x74
   0CB7 F0                  371 	movx	@dptr,a
                            372 ;	genPointerSet
                            373 ;     genFarPointerSet
   0CB8 90 00 B5            374 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0020)
   0CBB 74 63               375 	mov	a,#0x63
   0CBD F0                  376 	movx	@dptr,a
                            377 ;	genPointerSet
                            378 ;     genFarPointerSet
   0CBE 90 00 B6            379 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0021)
   0CC1 74 68               380 	mov	a,#0x68
   0CC3 F0                  381 	movx	@dptr,a
                            382 ;	genPointerSet
                            383 ;     genFarPointerSet
   0CC4 90 00 B7            384 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0022)
   0CC7 74 64               385 	mov	a,#0x64
   0CC9 F0                  386 	movx	@dptr,a
                            387 ;	genPointerSet
                            388 ;     genFarPointerSet
   0CCA 90 00 B8            389 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0023)
   0CCD 74 6F               390 	mov	a,#0x6F
   0CCF F0                  391 	movx	@dptr,a
                            392 ;	genPointerSet
                            393 ;     genFarPointerSet
   0CD0 90 00 B9            394 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0024)
   0CD3 74 67               395 	mov	a,#0x67
   0CD5 F0                  396 	movx	@dptr,a
                            397 ;	genPointerSet
                            398 ;     genFarPointerSet
   0CD6 90 00 BA            399 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0025)
   0CD9 74 2E               400 	mov	a,#0x2E
   0CDB F0                  401 	movx	@dptr,a
                            402 ;	genPointerSet
                            403 ;     genFarPointerSet
   0CDC 90 00 BB            404 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0026)
   0CDF 74 63               405 	mov	a,#0x63
   0CE1 F0                  406 	movx	@dptr,a
                            407 ;	genPointerSet
                            408 ;     genFarPointerSet
   0CE2 90 00 BC            409 	mov	dptr,#(_WD_init_file_name_3_3 + 0x0027)
   0CE5 74 00               410 	mov	a,#0x00
   0CE7 F0                  411 	movx	@dptr,a
                            412 ;	genAssign
   0CE8 90 00 2E            413 	mov	dptr,#_HAL_assert_fail_PARM_2
   0CEB 74 22               414 	mov	a,#0x22
   0CED F0                  415 	movx	@dptr,a
   0CEE E4                  416 	clr	a
   0CEF A3                  417 	inc	dptr
   0CF0 F0                  418 	movx	@dptr,a
   0CF1 A3                  419 	inc	dptr
   0CF2 F0                  420 	movx	@dptr,a
   0CF3 A3                  421 	inc	dptr
   0CF4 F0                  422 	movx	@dptr,a
                            423 ;	genCall
   0CF5 75 82 95            424 	mov	dpl,#_WD_init_file_name_3_3
   0CF8 75 83 00            425 	mov	dph,#(_WD_init_file_name_3_3 >> 8)
   0CFB 75 F0 00            426 	mov	b,#0x00
   0CFE 12 08 16            427 	lcall	_HAL_assert_fail
   0D01                     428 00104$:
                    0140    429 	C$core_watchdog.c$35$2$4 ==.
                            430 ;	../drivers/CoreWatchdog/core_watchdog.c:35: HAL_ASSERT( scale <= WD_PRESCALER_DIV_1024 )
                            431 ;	genAssign
   0D01 90 00 8E            432 	mov	dptr,#_WD_init_PARM_4
   0D04 E0                  433 	movx	a,@dptr
   0D05 F5 20               434 	mov	_WD_init_sloc0_1_0,a
   0D07 A3                  435 	inc	dptr
   0D08 E0                  436 	movx	a,@dptr
   0D09 F5 21               437 	mov	(_WD_init_sloc0_1_0 + 1),a
   0D0B A3                  438 	inc	dptr
   0D0C E0                  439 	movx	a,@dptr
   0D0D F5 22               440 	mov	(_WD_init_sloc0_1_0 + 2),a
   0D0F A3                  441 	inc	dptr
   0D10 E0                  442 	movx	a,@dptr
   0D11 F5 23               443 	mov	(_WD_init_sloc0_1_0 + 3),a
                            444 ;	genCmpGt
                            445 ;	genCmp
   0D13 C3                  446 	clr	c
   0D14 74 09               447 	mov	a,#0x09
   0D16 95 20               448 	subb	a,_WD_init_sloc0_1_0
   0D18 74 00               449 	mov	a,#0x00
   0D1A 95 21               450 	subb	a,(_WD_init_sloc0_1_0 + 1)
   0D1C 74 00               451 	mov	a,#0x00
   0D1E 95 22               452 	subb	a,(_WD_init_sloc0_1_0 + 2)
   0D20 74 00               453 	mov	a,#0x00
   0D22 95 23               454 	subb	a,(_WD_init_sloc0_1_0 + 3)
                            455 ;	genIfxJump
   0D24 40 03               456 	jc	00117$
   0D26 02 0E 32            457 	ljmp	00109$
   0D29                     458 00117$:
                            459 ;	genPointerSet
                            460 ;     genFarPointerSet
   0D29 90 00 BD            461 	mov	dptr,#_WD_init_file_name_3_5
   0D2C 74 2E               462 	mov	a,#0x2E
   0D2E F0                  463 	movx	@dptr,a
                            464 ;	genPointerSet
                            465 ;     genFarPointerSet
   0D2F 90 00 BE            466 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0001)
   0D32 74 2E               467 	mov	a,#0x2E
   0D34 F0                  468 	movx	@dptr,a
                            469 ;	genPointerSet
                            470 ;     genFarPointerSet
   0D35 90 00 BF            471 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0002)
   0D38 74 2F               472 	mov	a,#0x2F
   0D3A F0                  473 	movx	@dptr,a
                            474 ;	genPointerSet
                            475 ;     genFarPointerSet
   0D3B 90 00 C0            476 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0003)
   0D3E 74 64               477 	mov	a,#0x64
   0D40 F0                  478 	movx	@dptr,a
                            479 ;	genPointerSet
                            480 ;     genFarPointerSet
   0D41 90 00 C1            481 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0004)
   0D44 74 72               482 	mov	a,#0x72
   0D46 F0                  483 	movx	@dptr,a
                            484 ;	genPointerSet
                            485 ;     genFarPointerSet
   0D47 90 00 C2            486 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0005)
   0D4A 74 69               487 	mov	a,#0x69
   0D4C F0                  488 	movx	@dptr,a
                            489 ;	genPointerSet
                            490 ;     genFarPointerSet
   0D4D 90 00 C3            491 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0006)
   0D50 74 76               492 	mov	a,#0x76
   0D52 F0                  493 	movx	@dptr,a
                            494 ;	genPointerSet
                            495 ;     genFarPointerSet
   0D53 90 00 C4            496 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0007)
   0D56 74 65               497 	mov	a,#0x65
   0D58 F0                  498 	movx	@dptr,a
                            499 ;	genPointerSet
                            500 ;     genFarPointerSet
   0D59 90 00 C5            501 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0008)
   0D5C 74 72               502 	mov	a,#0x72
   0D5E F0                  503 	movx	@dptr,a
                            504 ;	genPointerSet
                            505 ;     genFarPointerSet
   0D5F 90 00 C6            506 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0009)
   0D62 74 73               507 	mov	a,#0x73
   0D64 F0                  508 	movx	@dptr,a
                            509 ;	genPointerSet
                            510 ;     genFarPointerSet
   0D65 90 00 C7            511 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000a)
   0D68 74 2F               512 	mov	a,#0x2F
   0D6A F0                  513 	movx	@dptr,a
                            514 ;	genPointerSet
                            515 ;     genFarPointerSet
   0D6B 90 00 C8            516 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000b)
   0D6E 74 43               517 	mov	a,#0x43
   0D70 F0                  518 	movx	@dptr,a
                            519 ;	genPointerSet
                            520 ;     genFarPointerSet
   0D71 90 00 C9            521 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000c)
   0D74 74 6F               522 	mov	a,#0x6F
   0D76 F0                  523 	movx	@dptr,a
                            524 ;	genPointerSet
                            525 ;     genFarPointerSet
   0D77 90 00 CA            526 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000d)
   0D7A 74 72               527 	mov	a,#0x72
   0D7C F0                  528 	movx	@dptr,a
                            529 ;	genPointerSet
                            530 ;     genFarPointerSet
   0D7D 90 00 CB            531 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000e)
   0D80 74 65               532 	mov	a,#0x65
   0D82 F0                  533 	movx	@dptr,a
                            534 ;	genPointerSet
                            535 ;     genFarPointerSet
   0D83 90 00 CC            536 	mov	dptr,#(_WD_init_file_name_3_5 + 0x000f)
   0D86 74 57               537 	mov	a,#0x57
   0D88 F0                  538 	movx	@dptr,a
                            539 ;	genPointerSet
                            540 ;     genFarPointerSet
   0D89 90 00 CD            541 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0010)
   0D8C 74 61               542 	mov	a,#0x61
   0D8E F0                  543 	movx	@dptr,a
                            544 ;	genPointerSet
                            545 ;     genFarPointerSet
   0D8F 90 00 CE            546 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0011)
   0D92 74 74               547 	mov	a,#0x74
   0D94 F0                  548 	movx	@dptr,a
                            549 ;	genPointerSet
                            550 ;     genFarPointerSet
   0D95 90 00 CF            551 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0012)
   0D98 74 63               552 	mov	a,#0x63
   0D9A F0                  553 	movx	@dptr,a
                            554 ;	genPointerSet
                            555 ;     genFarPointerSet
   0D9B 90 00 D0            556 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0013)
   0D9E 74 68               557 	mov	a,#0x68
   0DA0 F0                  558 	movx	@dptr,a
                            559 ;	genPointerSet
                            560 ;     genFarPointerSet
   0DA1 90 00 D1            561 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0014)
   0DA4 74 64               562 	mov	a,#0x64
   0DA6 F0                  563 	movx	@dptr,a
                            564 ;	genPointerSet
                            565 ;     genFarPointerSet
   0DA7 90 00 D2            566 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0015)
   0DAA 74 6F               567 	mov	a,#0x6F
   0DAC F0                  568 	movx	@dptr,a
                            569 ;	genPointerSet
                            570 ;     genFarPointerSet
   0DAD 90 00 D3            571 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0016)
   0DB0 74 67               572 	mov	a,#0x67
   0DB2 F0                  573 	movx	@dptr,a
                            574 ;	genPointerSet
                            575 ;     genFarPointerSet
   0DB3 90 00 D4            576 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0017)
   0DB6 74 2F               577 	mov	a,#0x2F
   0DB8 F0                  578 	movx	@dptr,a
                            579 ;	genPointerSet
                            580 ;     genFarPointerSet
   0DB9 90 00 D5            581 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0018)
   0DBC 74 63               582 	mov	a,#0x63
   0DBE F0                  583 	movx	@dptr,a
                            584 ;	genPointerSet
                            585 ;     genFarPointerSet
   0DBF 90 00 D6            586 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0019)
   0DC2 74 6F               587 	mov	a,#0x6F
   0DC4 F0                  588 	movx	@dptr,a
                            589 ;	genPointerSet
                            590 ;     genFarPointerSet
   0DC5 90 00 D7            591 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001a)
   0DC8 74 72               592 	mov	a,#0x72
   0DCA F0                  593 	movx	@dptr,a
                            594 ;	genPointerSet
                            595 ;     genFarPointerSet
   0DCB 90 00 D8            596 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001b)
   0DCE 74 65               597 	mov	a,#0x65
   0DD0 F0                  598 	movx	@dptr,a
                            599 ;	genPointerSet
                            600 ;     genFarPointerSet
   0DD1 90 00 D9            601 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001c)
   0DD4 74 5F               602 	mov	a,#0x5F
   0DD6 F0                  603 	movx	@dptr,a
                            604 ;	genPointerSet
                            605 ;     genFarPointerSet
   0DD7 90 00 DA            606 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001d)
   0DDA 74 77               607 	mov	a,#0x77
   0DDC F0                  608 	movx	@dptr,a
                            609 ;	genPointerSet
                            610 ;     genFarPointerSet
   0DDD 90 00 DB            611 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001e)
   0DE0 74 61               612 	mov	a,#0x61
   0DE2 F0                  613 	movx	@dptr,a
                            614 ;	genPointerSet
                            615 ;     genFarPointerSet
   0DE3 90 00 DC            616 	mov	dptr,#(_WD_init_file_name_3_5 + 0x001f)
   0DE6 74 74               617 	mov	a,#0x74
   0DE8 F0                  618 	movx	@dptr,a
                            619 ;	genPointerSet
                            620 ;     genFarPointerSet
   0DE9 90 00 DD            621 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0020)
   0DEC 74 63               622 	mov	a,#0x63
   0DEE F0                  623 	movx	@dptr,a
                            624 ;	genPointerSet
                            625 ;     genFarPointerSet
   0DEF 90 00 DE            626 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0021)
   0DF2 74 68               627 	mov	a,#0x68
   0DF4 F0                  628 	movx	@dptr,a
                            629 ;	genPointerSet
                            630 ;     genFarPointerSet
   0DF5 90 00 DF            631 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0022)
   0DF8 74 64               632 	mov	a,#0x64
   0DFA F0                  633 	movx	@dptr,a
                            634 ;	genPointerSet
                            635 ;     genFarPointerSet
   0DFB 90 00 E0            636 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0023)
   0DFE 74 6F               637 	mov	a,#0x6F
   0E00 F0                  638 	movx	@dptr,a
                            639 ;	genPointerSet
                            640 ;     genFarPointerSet
   0E01 90 00 E1            641 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0024)
   0E04 74 67               642 	mov	a,#0x67
   0E06 F0                  643 	movx	@dptr,a
                            644 ;	genPointerSet
                            645 ;     genFarPointerSet
   0E07 90 00 E2            646 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0025)
   0E0A 74 2E               647 	mov	a,#0x2E
   0E0C F0                  648 	movx	@dptr,a
                            649 ;	genPointerSet
                            650 ;     genFarPointerSet
   0E0D 90 00 E3            651 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0026)
   0E10 74 63               652 	mov	a,#0x63
   0E12 F0                  653 	movx	@dptr,a
                            654 ;	genPointerSet
                            655 ;     genFarPointerSet
   0E13 90 00 E4            656 	mov	dptr,#(_WD_init_file_name_3_5 + 0x0027)
   0E16 74 00               657 	mov	a,#0x00
   0E18 F0                  658 	movx	@dptr,a
                            659 ;	genAssign
   0E19 90 00 2E            660 	mov	dptr,#_HAL_assert_fail_PARM_2
   0E1C 74 23               661 	mov	a,#0x23
   0E1E F0                  662 	movx	@dptr,a
   0E1F E4                  663 	clr	a
   0E20 A3                  664 	inc	dptr
   0E21 F0                  665 	movx	@dptr,a
   0E22 A3                  666 	inc	dptr
   0E23 F0                  667 	movx	@dptr,a
   0E24 A3                  668 	inc	dptr
   0E25 F0                  669 	movx	@dptr,a
                            670 ;	genCall
   0E26 75 82 BD            671 	mov	dpl,#_WD_init_file_name_3_5
   0E29 75 83 00            672 	mov	dph,#(_WD_init_file_name_3_5 >> 8)
   0E2C 75 F0 00            673 	mov	b,#0x00
   0E2F 12 08 16            674 	lcall	_HAL_assert_fail
   0E32                     675 00109$:
                    0271    676 	C$core_watchdog.c$37$1$1 ==.
                            677 ;	../drivers/CoreWatchdog/core_watchdog.c:37: instance->base_address = base;
                            678 ;	genAssign
   0E32 90 00 92            679 	mov	dptr,#_WD_init_instance_1_1
   0E35 E0                  680 	movx	a,@dptr
   0E36 FE                  681 	mov	r6,a
   0E37 A3                  682 	inc	dptr
   0E38 E0                  683 	movx	a,@dptr
   0E39 FF                  684 	mov	r7,a
   0E3A A3                  685 	inc	dptr
   0E3B E0                  686 	movx	a,@dptr
   0E3C F8                  687 	mov	r0,a
                            688 ;	genAssign
   0E3D 90 00 88            689 	mov	dptr,#_WD_init_PARM_2
   0E40 E0                  690 	movx	a,@dptr
   0E41 F9                  691 	mov	r1,a
   0E42 A3                  692 	inc	dptr
   0E43 E0                  693 	movx	a,@dptr
   0E44 FA                  694 	mov	r2,a
                            695 ;	genPointerSet
                            696 ;	genGenPointerSet
   0E45 8E 82               697 	mov	dpl,r6
   0E47 8F 83               698 	mov	dph,r7
   0E49 88 F0               699 	mov	b,r0
   0E4B E9                  700 	mov	a,r1
   0E4C 12 5C 54            701 	lcall	__gptrput
   0E4F A3                  702 	inc	dptr
   0E50 EA                  703 	mov	a,r2
   0E51 12 5C 54            704 	lcall	__gptrput
                    0293    705 	C$core_watchdog.c$40$1$1 ==.
                            706 ;	../drivers/CoreWatchdog/core_watchdog.c:40: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 0 );
                            707 ;	genPlus
                            708 ;	genPlusIncr
   0E54 74 08               709 	mov	a,#0x08
   0E56 25 01               710 	add	a,ar1
   0E58 F9                  711 	mov	r1,a
   0E59 74 00               712 	mov	a,#0x00
   0E5B 35 02               713 	addc	a,ar2
   0E5D FA                  714 	mov	r2,a
                            715 ;	genAssign
   0E5E 90 00 50            716 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   0E61 74 04               717 	mov	a,#0x04
   0E63 F0                  718 	movx	@dptr,a
                            719 ;	genAssign
   0E64 90 00 51            720 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   0E67 74 10               721 	mov	a,#0x10
   0E69 F0                  722 	movx	@dptr,a
   0E6A E4                  723 	clr	a
   0E6B A3                  724 	inc	dptr
   0E6C F0                  725 	movx	@dptr,a
   0E6D A3                  726 	inc	dptr
   0E6E F0                  727 	movx	@dptr,a
   0E6F A3                  728 	inc	dptr
   0E70 F0                  729 	movx	@dptr,a
                            730 ;	genAssign
   0E71 90 00 55            731 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   0E74 E4                  732 	clr	a
   0E75 F0                  733 	movx	@dptr,a
   0E76 A3                  734 	inc	dptr
   0E77 F0                  735 	movx	@dptr,a
   0E78 A3                  736 	inc	dptr
   0E79 F0                  737 	movx	@dptr,a
   0E7A A3                  738 	inc	dptr
   0E7B F0                  739 	movx	@dptr,a
                            740 ;	genCall
   0E7C 89 82               741 	mov	dpl,r1
   0E7E 8A 83               742 	mov	dph,r2
   0E80 C0 06               743 	push	ar6
   0E82 C0 07               744 	push	ar7
   0E84 C0 00               745 	push	ar0
   0E86 12 08 DA            746 	lcall	_HW_set_32bit_reg_field
   0E89 D0 00               747 	pop	ar0
   0E8B D0 07               748 	pop	ar7
   0E8D D0 06               749 	pop	ar6
                    02CE    750 	C$core_watchdog.c$43$1$1 ==.
                            751 ;	../drivers/CoreWatchdog/core_watchdog.c:43: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_PRESCALE, scale );
                            752 ;	genPointerGet
                            753 ;	genGenPointerGet
   0E8F 8E 82               754 	mov	dpl,r6
   0E91 8F 83               755 	mov	dph,r7
   0E93 88 F0               756 	mov	b,r0
   0E95 12 5C 8D            757 	lcall	__gptrget
   0E98 FA                  758 	mov	r2,a
   0E99 A3                  759 	inc	dptr
   0E9A 12 5C 8D            760 	lcall	__gptrget
   0E9D FB                  761 	mov	r3,a
                            762 ;	genPlus
                            763 ;	genPlusIncr
   0E9E 74 08               764 	mov	a,#0x08
   0EA0 25 02               765 	add	a,ar2
   0EA2 FA                  766 	mov	r2,a
   0EA3 74 00               767 	mov	a,#0x00
   0EA5 35 03               768 	addc	a,ar3
   0EA7 FB                  769 	mov	r3,a
                            770 ;	genAssign
   0EA8 90 00 50            771 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   0EAB 74 00               772 	mov	a,#0x00
   0EAD F0                  773 	movx	@dptr,a
                            774 ;	genAssign
   0EAE 90 00 51            775 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   0EB1 74 0F               776 	mov	a,#0x0F
   0EB3 F0                  777 	movx	@dptr,a
   0EB4 E4                  778 	clr	a
   0EB5 A3                  779 	inc	dptr
   0EB6 F0                  780 	movx	@dptr,a
   0EB7 A3                  781 	inc	dptr
   0EB8 F0                  782 	movx	@dptr,a
   0EB9 A3                  783 	inc	dptr
   0EBA F0                  784 	movx	@dptr,a
                            785 ;	genAssign
   0EBB 90 00 55            786 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   0EBE E5 20               787 	mov	a,_WD_init_sloc0_1_0
   0EC0 F0                  788 	movx	@dptr,a
   0EC1 A3                  789 	inc	dptr
   0EC2 E5 21               790 	mov	a,(_WD_init_sloc0_1_0 + 1)
   0EC4 F0                  791 	movx	@dptr,a
   0EC5 A3                  792 	inc	dptr
   0EC6 E5 22               793 	mov	a,(_WD_init_sloc0_1_0 + 2)
   0EC8 F0                  794 	movx	@dptr,a
   0EC9 A3                  795 	inc	dptr
   0ECA E5 23               796 	mov	a,(_WD_init_sloc0_1_0 + 3)
   0ECC F0                  797 	movx	@dptr,a
                            798 ;	genCall
   0ECD 8A 82               799 	mov	dpl,r2
   0ECF 8B 83               800 	mov	dph,r3
   0ED1 C0 06               801 	push	ar6
   0ED3 C0 07               802 	push	ar7
   0ED5 C0 00               803 	push	ar0
   0ED7 12 08 DA            804 	lcall	_HW_set_32bit_reg_field
   0EDA D0 00               805 	pop	ar0
   0EDC D0 07               806 	pop	ar7
   0EDE D0 06               807 	pop	ar6
                    031F    808 	C$core_watchdog.c$44$1$1 ==.
                            809 ;	../drivers/CoreWatchdog/core_watchdog.c:44: HAL_set_32bit_reg( instance->base_address, WDOGLOAD, value );
                            810 ;	genPointerGet
                            811 ;	genGenPointerGet
   0EE0 8E 82               812 	mov	dpl,r6
   0EE2 8F 83               813 	mov	dph,r7
   0EE4 88 F0               814 	mov	b,r0
   0EE6 12 5C 8D            815 	lcall	__gptrget
   0EE9 FE                  816 	mov	r6,a
   0EEA A3                  817 	inc	dptr
   0EEB 12 5C 8D            818 	lcall	__gptrget
   0EEE FF                  819 	mov	r7,a
                            820 ;	genAssign
   0EEF 90 00 8A            821 	mov	dptr,#_WD_init_PARM_3
   0EF2 E0                  822 	movx	a,@dptr
   0EF3 FA                  823 	mov	r2,a
   0EF4 A3                  824 	inc	dptr
   0EF5 E0                  825 	movx	a,@dptr
   0EF6 FB                  826 	mov	r3,a
   0EF7 A3                  827 	inc	dptr
   0EF8 E0                  828 	movx	a,@dptr
   0EF9 FC                  829 	mov	r4,a
   0EFA A3                  830 	inc	dptr
   0EFB E0                  831 	movx	a,@dptr
   0EFC FD                  832 	mov	r5,a
                            833 ;	genAssign
   0EFD 90 00 4C            834 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   0F00 EA                  835 	mov	a,r2
   0F01 F0                  836 	movx	@dptr,a
   0F02 A3                  837 	inc	dptr
   0F03 EB                  838 	mov	a,r3
   0F04 F0                  839 	movx	@dptr,a
   0F05 A3                  840 	inc	dptr
   0F06 EC                  841 	mov	a,r4
   0F07 F0                  842 	movx	@dptr,a
   0F08 A3                  843 	inc	dptr
   0F09 ED                  844 	mov	a,r5
   0F0A F0                  845 	movx	@dptr,a
                            846 ;	genCall
   0F0B 8E 82               847 	mov	dpl,r6
   0F0D 8F 83               848 	mov	dph,r7
   0F0F 12 08 82            849 	lcall	_HW_set_32bit_reg
   0F12                     850 00111$:
                    0351    851 	C$core_watchdog.c$45$1$1 ==.
                    0351    852 	XG$WD_init$0$0 ==.
   0F12 22                  853 	ret
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
   0F13                     866 _WD_enable:
                            867 ;	genReceive
   0F13 AA F0               868 	mov	r2,b
   0F15 AB 83               869 	mov	r3,dph
   0F17 E5 82               870 	mov	a,dpl
   0F19 90 00 E5            871 	mov	dptr,#_WD_enable_instance_1_1
   0F1C F0                  872 	movx	@dptr,a
   0F1D A3                  873 	inc	dptr
   0F1E EB                  874 	mov	a,r3
   0F1F F0                  875 	movx	@dptr,a
   0F20 A3                  876 	inc	dptr
   0F21 EA                  877 	mov	a,r2
   0F22 F0                  878 	movx	@dptr,a
                    0362    879 	C$core_watchdog.c$57$2$2 ==.
                            880 ;	../drivers/CoreWatchdog/core_watchdog.c:57: HAL_ASSERT( instance != NULL_instance )
                            881 ;	genAssign
   0F23 90 00 E5            882 	mov	dptr,#_WD_enable_instance_1_1
   0F26 E0                  883 	movx	a,@dptr
   0F27 FA                  884 	mov	r2,a
   0F28 A3                  885 	inc	dptr
   0F29 E0                  886 	movx	a,@dptr
   0F2A FB                  887 	mov	r3,a
   0F2B A3                  888 	inc	dptr
   0F2C E0                  889 	movx	a,@dptr
   0F2D FC                  890 	mov	r4,a
                            891 ;	genAssign
   0F2E 90 00 85            892 	mov	dptr,#_NULL_instance
   0F31 E0                  893 	movx	a,@dptr
   0F32 FD                  894 	mov	r5,a
   0F33 A3                  895 	inc	dptr
   0F34 E0                  896 	movx	a,@dptr
   0F35 FE                  897 	mov	r6,a
   0F36 A3                  898 	inc	dptr
   0F37 E0                  899 	movx	a,@dptr
   0F38 FF                  900 	mov	r7,a
                            901 ;	genCmpEq
                            902 ;	gencjneshort
   0F39 EA                  903 	mov	a,r2
   0F3A B5 05 0A            904 	cjne	a,ar5,00109$
   0F3D EB                  905 	mov	a,r3
   0F3E B5 06 06            906 	cjne	a,ar6,00109$
   0F41 EC                  907 	mov	a,r4
   0F42 B5 07 02            908 	cjne	a,ar7,00109$
   0F45 80 03               909 	sjmp	00110$
   0F47                     910 00109$:
   0F47 02 10 53            911 	ljmp	00104$
   0F4A                     912 00110$:
                            913 ;	genPointerSet
                            914 ;     genFarPointerSet
   0F4A 90 00 E8            915 	mov	dptr,#_WD_enable_file_name_3_3
   0F4D 74 2E               916 	mov	a,#0x2E
   0F4F F0                  917 	movx	@dptr,a
                            918 ;	genPointerSet
                            919 ;     genFarPointerSet
   0F50 90 00 E9            920 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0001)
   0F53 74 2E               921 	mov	a,#0x2E
   0F55 F0                  922 	movx	@dptr,a
                            923 ;	genPointerSet
                            924 ;     genFarPointerSet
   0F56 90 00 EA            925 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0002)
   0F59 74 2F               926 	mov	a,#0x2F
   0F5B F0                  927 	movx	@dptr,a
                            928 ;	genPointerSet
                            929 ;     genFarPointerSet
   0F5C 90 00 EB            930 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0003)
   0F5F 74 64               931 	mov	a,#0x64
   0F61 F0                  932 	movx	@dptr,a
                            933 ;	genPointerSet
                            934 ;     genFarPointerSet
   0F62 90 00 EC            935 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0004)
   0F65 74 72               936 	mov	a,#0x72
   0F67 F0                  937 	movx	@dptr,a
                            938 ;	genPointerSet
                            939 ;     genFarPointerSet
   0F68 90 00 ED            940 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0005)
   0F6B 74 69               941 	mov	a,#0x69
   0F6D F0                  942 	movx	@dptr,a
                            943 ;	genPointerSet
                            944 ;     genFarPointerSet
   0F6E 90 00 EE            945 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0006)
   0F71 74 76               946 	mov	a,#0x76
   0F73 F0                  947 	movx	@dptr,a
                            948 ;	genPointerSet
                            949 ;     genFarPointerSet
   0F74 90 00 EF            950 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0007)
   0F77 74 65               951 	mov	a,#0x65
   0F79 F0                  952 	movx	@dptr,a
                            953 ;	genPointerSet
                            954 ;     genFarPointerSet
   0F7A 90 00 F0            955 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0008)
   0F7D 74 72               956 	mov	a,#0x72
   0F7F F0                  957 	movx	@dptr,a
                            958 ;	genPointerSet
                            959 ;     genFarPointerSet
   0F80 90 00 F1            960 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0009)
   0F83 74 73               961 	mov	a,#0x73
   0F85 F0                  962 	movx	@dptr,a
                            963 ;	genPointerSet
                            964 ;     genFarPointerSet
   0F86 90 00 F2            965 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000a)
   0F89 74 2F               966 	mov	a,#0x2F
   0F8B F0                  967 	movx	@dptr,a
                            968 ;	genPointerSet
                            969 ;     genFarPointerSet
   0F8C 90 00 F3            970 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000b)
   0F8F 74 43               971 	mov	a,#0x43
   0F91 F0                  972 	movx	@dptr,a
                            973 ;	genPointerSet
                            974 ;     genFarPointerSet
   0F92 90 00 F4            975 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000c)
   0F95 74 6F               976 	mov	a,#0x6F
   0F97 F0                  977 	movx	@dptr,a
                            978 ;	genPointerSet
                            979 ;     genFarPointerSet
   0F98 90 00 F5            980 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000d)
   0F9B 74 72               981 	mov	a,#0x72
   0F9D F0                  982 	movx	@dptr,a
                            983 ;	genPointerSet
                            984 ;     genFarPointerSet
   0F9E 90 00 F6            985 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000e)
   0FA1 74 65               986 	mov	a,#0x65
   0FA3 F0                  987 	movx	@dptr,a
                            988 ;	genPointerSet
                            989 ;     genFarPointerSet
   0FA4 90 00 F7            990 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x000f)
   0FA7 74 57               991 	mov	a,#0x57
   0FA9 F0                  992 	movx	@dptr,a
                            993 ;	genPointerSet
                            994 ;     genFarPointerSet
   0FAA 90 00 F8            995 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0010)
   0FAD 74 61               996 	mov	a,#0x61
   0FAF F0                  997 	movx	@dptr,a
                            998 ;	genPointerSet
                            999 ;     genFarPointerSet
   0FB0 90 00 F9           1000 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0011)
   0FB3 74 74              1001 	mov	a,#0x74
   0FB5 F0                 1002 	movx	@dptr,a
                           1003 ;	genPointerSet
                           1004 ;     genFarPointerSet
   0FB6 90 00 FA           1005 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0012)
   0FB9 74 63              1006 	mov	a,#0x63
   0FBB F0                 1007 	movx	@dptr,a
                           1008 ;	genPointerSet
                           1009 ;     genFarPointerSet
   0FBC 90 00 FB           1010 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0013)
   0FBF 74 68              1011 	mov	a,#0x68
   0FC1 F0                 1012 	movx	@dptr,a
                           1013 ;	genPointerSet
                           1014 ;     genFarPointerSet
   0FC2 90 00 FC           1015 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0014)
   0FC5 74 64              1016 	mov	a,#0x64
   0FC7 F0                 1017 	movx	@dptr,a
                           1018 ;	genPointerSet
                           1019 ;     genFarPointerSet
   0FC8 90 00 FD           1020 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0015)
   0FCB 74 6F              1021 	mov	a,#0x6F
   0FCD F0                 1022 	movx	@dptr,a
                           1023 ;	genPointerSet
                           1024 ;     genFarPointerSet
   0FCE 90 00 FE           1025 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0016)
   0FD1 74 67              1026 	mov	a,#0x67
   0FD3 F0                 1027 	movx	@dptr,a
                           1028 ;	genPointerSet
                           1029 ;     genFarPointerSet
   0FD4 90 00 FF           1030 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0017)
   0FD7 74 2F              1031 	mov	a,#0x2F
   0FD9 F0                 1032 	movx	@dptr,a
                           1033 ;	genPointerSet
                           1034 ;     genFarPointerSet
   0FDA 90 01 00           1035 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0018)
   0FDD 74 63              1036 	mov	a,#0x63
   0FDF F0                 1037 	movx	@dptr,a
                           1038 ;	genPointerSet
                           1039 ;     genFarPointerSet
   0FE0 90 01 01           1040 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0019)
   0FE3 74 6F              1041 	mov	a,#0x6F
   0FE5 F0                 1042 	movx	@dptr,a
                           1043 ;	genPointerSet
                           1044 ;     genFarPointerSet
   0FE6 90 01 02           1045 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001a)
   0FE9 74 72              1046 	mov	a,#0x72
   0FEB F0                 1047 	movx	@dptr,a
                           1048 ;	genPointerSet
                           1049 ;     genFarPointerSet
   0FEC 90 01 03           1050 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001b)
   0FEF 74 65              1051 	mov	a,#0x65
   0FF1 F0                 1052 	movx	@dptr,a
                           1053 ;	genPointerSet
                           1054 ;     genFarPointerSet
   0FF2 90 01 04           1055 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001c)
   0FF5 74 5F              1056 	mov	a,#0x5F
   0FF7 F0                 1057 	movx	@dptr,a
                           1058 ;	genPointerSet
                           1059 ;     genFarPointerSet
   0FF8 90 01 05           1060 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001d)
   0FFB 74 77              1061 	mov	a,#0x77
   0FFD F0                 1062 	movx	@dptr,a
                           1063 ;	genPointerSet
                           1064 ;     genFarPointerSet
   0FFE 90 01 06           1065 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001e)
   1001 74 61              1066 	mov	a,#0x61
   1003 F0                 1067 	movx	@dptr,a
                           1068 ;	genPointerSet
                           1069 ;     genFarPointerSet
   1004 90 01 07           1070 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x001f)
   1007 74 74              1071 	mov	a,#0x74
   1009 F0                 1072 	movx	@dptr,a
                           1073 ;	genPointerSet
                           1074 ;     genFarPointerSet
   100A 90 01 08           1075 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0020)
   100D 74 63              1076 	mov	a,#0x63
   100F F0                 1077 	movx	@dptr,a
                           1078 ;	genPointerSet
                           1079 ;     genFarPointerSet
   1010 90 01 09           1080 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0021)
   1013 74 68              1081 	mov	a,#0x68
   1015 F0                 1082 	movx	@dptr,a
                           1083 ;	genPointerSet
                           1084 ;     genFarPointerSet
   1016 90 01 0A           1085 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0022)
   1019 74 64              1086 	mov	a,#0x64
   101B F0                 1087 	movx	@dptr,a
                           1088 ;	genPointerSet
                           1089 ;     genFarPointerSet
   101C 90 01 0B           1090 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0023)
   101F 74 6F              1091 	mov	a,#0x6F
   1021 F0                 1092 	movx	@dptr,a
                           1093 ;	genPointerSet
                           1094 ;     genFarPointerSet
   1022 90 01 0C           1095 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0024)
   1025 74 67              1096 	mov	a,#0x67
   1027 F0                 1097 	movx	@dptr,a
                           1098 ;	genPointerSet
                           1099 ;     genFarPointerSet
   1028 90 01 0D           1100 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0025)
   102B 74 2E              1101 	mov	a,#0x2E
   102D F0                 1102 	movx	@dptr,a
                           1103 ;	genPointerSet
                           1104 ;     genFarPointerSet
   102E 90 01 0E           1105 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0026)
   1031 74 63              1106 	mov	a,#0x63
   1033 F0                 1107 	movx	@dptr,a
                           1108 ;	genPointerSet
                           1109 ;     genFarPointerSet
   1034 90 01 0F           1110 	mov	dptr,#(_WD_enable_file_name_3_3 + 0x0027)
   1037 74 00              1111 	mov	a,#0x00
   1039 F0                 1112 	movx	@dptr,a
                           1113 ;	genAssign
   103A 90 00 2E           1114 	mov	dptr,#_HAL_assert_fail_PARM_2
   103D 74 39              1115 	mov	a,#0x39
   103F F0                 1116 	movx	@dptr,a
   1040 E4                 1117 	clr	a
   1041 A3                 1118 	inc	dptr
   1042 F0                 1119 	movx	@dptr,a
   1043 A3                 1120 	inc	dptr
   1044 F0                 1121 	movx	@dptr,a
   1045 A3                 1122 	inc	dptr
   1046 F0                 1123 	movx	@dptr,a
                           1124 ;	genCall
   1047 75 82 E8           1125 	mov	dpl,#_WD_enable_file_name_3_3
   104A 75 83 00           1126 	mov	dph,#(_WD_enable_file_name_3_3 >> 8)
   104D 75 F0 00           1127 	mov	b,#0x00
   1050 12 08 16           1128 	lcall	_HAL_assert_fail
   1053                    1129 00104$:
                    0492   1130 	C$core_watchdog.c$59$1$1 ==.
                           1131 ;	../drivers/CoreWatchdog/core_watchdog.c:59: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 1 );
                           1132 ;	genAssign
   1053 90 00 E5           1133 	mov	dptr,#_WD_enable_instance_1_1
   1056 E0                 1134 	movx	a,@dptr
   1057 FA                 1135 	mov	r2,a
   1058 A3                 1136 	inc	dptr
   1059 E0                 1137 	movx	a,@dptr
   105A FB                 1138 	mov	r3,a
   105B A3                 1139 	inc	dptr
   105C E0                 1140 	movx	a,@dptr
   105D FC                 1141 	mov	r4,a
                           1142 ;	genPointerGet
                           1143 ;	genGenPointerGet
   105E 8A 82              1144 	mov	dpl,r2
   1060 8B 83              1145 	mov	dph,r3
   1062 8C F0              1146 	mov	b,r4
   1064 12 5C 8D           1147 	lcall	__gptrget
   1067 FA                 1148 	mov	r2,a
   1068 A3                 1149 	inc	dptr
   1069 12 5C 8D           1150 	lcall	__gptrget
   106C FB                 1151 	mov	r3,a
                           1152 ;	genPlus
                           1153 ;	genPlusIncr
   106D 74 08              1154 	mov	a,#0x08
   106F 25 02              1155 	add	a,ar2
   1071 FA                 1156 	mov	r2,a
   1072 74 00              1157 	mov	a,#0x00
   1074 35 03              1158 	addc	a,ar3
   1076 FB                 1159 	mov	r3,a
                           1160 ;	genAssign
   1077 90 00 50           1161 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   107A 74 04              1162 	mov	a,#0x04
   107C F0                 1163 	movx	@dptr,a
                           1164 ;	genAssign
   107D 90 00 51           1165 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   1080 74 10              1166 	mov	a,#0x10
   1082 F0                 1167 	movx	@dptr,a
   1083 E4                 1168 	clr	a
   1084 A3                 1169 	inc	dptr
   1085 F0                 1170 	movx	@dptr,a
   1086 A3                 1171 	inc	dptr
   1087 F0                 1172 	movx	@dptr,a
   1088 A3                 1173 	inc	dptr
   1089 F0                 1174 	movx	@dptr,a
                           1175 ;	genAssign
   108A 90 00 55           1176 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   108D 74 01              1177 	mov	a,#0x01
   108F F0                 1178 	movx	@dptr,a
   1090 E4                 1179 	clr	a
   1091 A3                 1180 	inc	dptr
   1092 F0                 1181 	movx	@dptr,a
   1093 A3                 1182 	inc	dptr
   1094 F0                 1183 	movx	@dptr,a
   1095 A3                 1184 	inc	dptr
   1096 F0                 1185 	movx	@dptr,a
                           1186 ;	genCall
   1097 8A 82              1187 	mov	dpl,r2
   1099 8B 83              1188 	mov	dph,r3
   109B 12 08 DA           1189 	lcall	_HW_set_32bit_reg_field
   109E                    1190 00106$:
                    04DD   1191 	C$core_watchdog.c$60$1$1 ==.
                    04DD   1192 	XG$WD_enable$0$0 ==.
   109E 22                 1193 	ret
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
   109F                    1206 _WD_disable:
                           1207 ;	genReceive
   109F AA F0              1208 	mov	r2,b
   10A1 AB 83              1209 	mov	r3,dph
   10A3 E5 82              1210 	mov	a,dpl
   10A5 90 01 10           1211 	mov	dptr,#_WD_disable_instance_1_1
   10A8 F0                 1212 	movx	@dptr,a
   10A9 A3                 1213 	inc	dptr
   10AA EB                 1214 	mov	a,r3
   10AB F0                 1215 	movx	@dptr,a
   10AC A3                 1216 	inc	dptr
   10AD EA                 1217 	mov	a,r2
   10AE F0                 1218 	movx	@dptr,a
                    04EE   1219 	C$core_watchdog.c$73$2$2 ==.
                           1220 ;	../drivers/CoreWatchdog/core_watchdog.c:73: HAL_ASSERT( instance != NULL_instance )
                           1221 ;	genAssign
   10AF 90 01 10           1222 	mov	dptr,#_WD_disable_instance_1_1
   10B2 E0                 1223 	movx	a,@dptr
   10B3 FA                 1224 	mov	r2,a
   10B4 A3                 1225 	inc	dptr
   10B5 E0                 1226 	movx	a,@dptr
   10B6 FB                 1227 	mov	r3,a
   10B7 A3                 1228 	inc	dptr
   10B8 E0                 1229 	movx	a,@dptr
   10B9 FC                 1230 	mov	r4,a
                           1231 ;	genAssign
   10BA 90 00 85           1232 	mov	dptr,#_NULL_instance
   10BD E0                 1233 	movx	a,@dptr
   10BE FD                 1234 	mov	r5,a
   10BF A3                 1235 	inc	dptr
   10C0 E0                 1236 	movx	a,@dptr
   10C1 FE                 1237 	mov	r6,a
   10C2 A3                 1238 	inc	dptr
   10C3 E0                 1239 	movx	a,@dptr
   10C4 FF                 1240 	mov	r7,a
                           1241 ;	genCmpEq
                           1242 ;	gencjneshort
   10C5 EA                 1243 	mov	a,r2
   10C6 B5 05 0A           1244 	cjne	a,ar5,00109$
   10C9 EB                 1245 	mov	a,r3
   10CA B5 06 06           1246 	cjne	a,ar6,00109$
   10CD EC                 1247 	mov	a,r4
   10CE B5 07 02           1248 	cjne	a,ar7,00109$
   10D1 80 03              1249 	sjmp	00110$
   10D3                    1250 00109$:
   10D3 02 11 DF           1251 	ljmp	00104$
   10D6                    1252 00110$:
                           1253 ;	genPointerSet
                           1254 ;     genFarPointerSet
   10D6 90 01 13           1255 	mov	dptr,#_WD_disable_file_name_3_3
   10D9 74 2E              1256 	mov	a,#0x2E
   10DB F0                 1257 	movx	@dptr,a
                           1258 ;	genPointerSet
                           1259 ;     genFarPointerSet
   10DC 90 01 14           1260 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0001)
   10DF 74 2E              1261 	mov	a,#0x2E
   10E1 F0                 1262 	movx	@dptr,a
                           1263 ;	genPointerSet
                           1264 ;     genFarPointerSet
   10E2 90 01 15           1265 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0002)
   10E5 74 2F              1266 	mov	a,#0x2F
   10E7 F0                 1267 	movx	@dptr,a
                           1268 ;	genPointerSet
                           1269 ;     genFarPointerSet
   10E8 90 01 16           1270 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0003)
   10EB 74 64              1271 	mov	a,#0x64
   10ED F0                 1272 	movx	@dptr,a
                           1273 ;	genPointerSet
                           1274 ;     genFarPointerSet
   10EE 90 01 17           1275 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0004)
   10F1 74 72              1276 	mov	a,#0x72
   10F3 F0                 1277 	movx	@dptr,a
                           1278 ;	genPointerSet
                           1279 ;     genFarPointerSet
   10F4 90 01 18           1280 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0005)
   10F7 74 69              1281 	mov	a,#0x69
   10F9 F0                 1282 	movx	@dptr,a
                           1283 ;	genPointerSet
                           1284 ;     genFarPointerSet
   10FA 90 01 19           1285 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0006)
   10FD 74 76              1286 	mov	a,#0x76
   10FF F0                 1287 	movx	@dptr,a
                           1288 ;	genPointerSet
                           1289 ;     genFarPointerSet
   1100 90 01 1A           1290 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0007)
   1103 74 65              1291 	mov	a,#0x65
   1105 F0                 1292 	movx	@dptr,a
                           1293 ;	genPointerSet
                           1294 ;     genFarPointerSet
   1106 90 01 1B           1295 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0008)
   1109 74 72              1296 	mov	a,#0x72
   110B F0                 1297 	movx	@dptr,a
                           1298 ;	genPointerSet
                           1299 ;     genFarPointerSet
   110C 90 01 1C           1300 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0009)
   110F 74 73              1301 	mov	a,#0x73
   1111 F0                 1302 	movx	@dptr,a
                           1303 ;	genPointerSet
                           1304 ;     genFarPointerSet
   1112 90 01 1D           1305 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000a)
   1115 74 2F              1306 	mov	a,#0x2F
   1117 F0                 1307 	movx	@dptr,a
                           1308 ;	genPointerSet
                           1309 ;     genFarPointerSet
   1118 90 01 1E           1310 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000b)
   111B 74 43              1311 	mov	a,#0x43
   111D F0                 1312 	movx	@dptr,a
                           1313 ;	genPointerSet
                           1314 ;     genFarPointerSet
   111E 90 01 1F           1315 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000c)
   1121 74 6F              1316 	mov	a,#0x6F
   1123 F0                 1317 	movx	@dptr,a
                           1318 ;	genPointerSet
                           1319 ;     genFarPointerSet
   1124 90 01 20           1320 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000d)
   1127 74 72              1321 	mov	a,#0x72
   1129 F0                 1322 	movx	@dptr,a
                           1323 ;	genPointerSet
                           1324 ;     genFarPointerSet
   112A 90 01 21           1325 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000e)
   112D 74 65              1326 	mov	a,#0x65
   112F F0                 1327 	movx	@dptr,a
                           1328 ;	genPointerSet
                           1329 ;     genFarPointerSet
   1130 90 01 22           1330 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x000f)
   1133 74 57              1331 	mov	a,#0x57
   1135 F0                 1332 	movx	@dptr,a
                           1333 ;	genPointerSet
                           1334 ;     genFarPointerSet
   1136 90 01 23           1335 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0010)
   1139 74 61              1336 	mov	a,#0x61
   113B F0                 1337 	movx	@dptr,a
                           1338 ;	genPointerSet
                           1339 ;     genFarPointerSet
   113C 90 01 24           1340 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0011)
   113F 74 74              1341 	mov	a,#0x74
   1141 F0                 1342 	movx	@dptr,a
                           1343 ;	genPointerSet
                           1344 ;     genFarPointerSet
   1142 90 01 25           1345 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0012)
   1145 74 63              1346 	mov	a,#0x63
   1147 F0                 1347 	movx	@dptr,a
                           1348 ;	genPointerSet
                           1349 ;     genFarPointerSet
   1148 90 01 26           1350 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0013)
   114B 74 68              1351 	mov	a,#0x68
   114D F0                 1352 	movx	@dptr,a
                           1353 ;	genPointerSet
                           1354 ;     genFarPointerSet
   114E 90 01 27           1355 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0014)
   1151 74 64              1356 	mov	a,#0x64
   1153 F0                 1357 	movx	@dptr,a
                           1358 ;	genPointerSet
                           1359 ;     genFarPointerSet
   1154 90 01 28           1360 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0015)
   1157 74 6F              1361 	mov	a,#0x6F
   1159 F0                 1362 	movx	@dptr,a
                           1363 ;	genPointerSet
                           1364 ;     genFarPointerSet
   115A 90 01 29           1365 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0016)
   115D 74 67              1366 	mov	a,#0x67
   115F F0                 1367 	movx	@dptr,a
                           1368 ;	genPointerSet
                           1369 ;     genFarPointerSet
   1160 90 01 2A           1370 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0017)
   1163 74 2F              1371 	mov	a,#0x2F
   1165 F0                 1372 	movx	@dptr,a
                           1373 ;	genPointerSet
                           1374 ;     genFarPointerSet
   1166 90 01 2B           1375 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0018)
   1169 74 63              1376 	mov	a,#0x63
   116B F0                 1377 	movx	@dptr,a
                           1378 ;	genPointerSet
                           1379 ;     genFarPointerSet
   116C 90 01 2C           1380 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0019)
   116F 74 6F              1381 	mov	a,#0x6F
   1171 F0                 1382 	movx	@dptr,a
                           1383 ;	genPointerSet
                           1384 ;     genFarPointerSet
   1172 90 01 2D           1385 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001a)
   1175 74 72              1386 	mov	a,#0x72
   1177 F0                 1387 	movx	@dptr,a
                           1388 ;	genPointerSet
                           1389 ;     genFarPointerSet
   1178 90 01 2E           1390 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001b)
   117B 74 65              1391 	mov	a,#0x65
   117D F0                 1392 	movx	@dptr,a
                           1393 ;	genPointerSet
                           1394 ;     genFarPointerSet
   117E 90 01 2F           1395 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001c)
   1181 74 5F              1396 	mov	a,#0x5F
   1183 F0                 1397 	movx	@dptr,a
                           1398 ;	genPointerSet
                           1399 ;     genFarPointerSet
   1184 90 01 30           1400 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001d)
   1187 74 77              1401 	mov	a,#0x77
   1189 F0                 1402 	movx	@dptr,a
                           1403 ;	genPointerSet
                           1404 ;     genFarPointerSet
   118A 90 01 31           1405 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001e)
   118D 74 61              1406 	mov	a,#0x61
   118F F0                 1407 	movx	@dptr,a
                           1408 ;	genPointerSet
                           1409 ;     genFarPointerSet
   1190 90 01 32           1410 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x001f)
   1193 74 74              1411 	mov	a,#0x74
   1195 F0                 1412 	movx	@dptr,a
                           1413 ;	genPointerSet
                           1414 ;     genFarPointerSet
   1196 90 01 33           1415 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0020)
   1199 74 63              1416 	mov	a,#0x63
   119B F0                 1417 	movx	@dptr,a
                           1418 ;	genPointerSet
                           1419 ;     genFarPointerSet
   119C 90 01 34           1420 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0021)
   119F 74 68              1421 	mov	a,#0x68
   11A1 F0                 1422 	movx	@dptr,a
                           1423 ;	genPointerSet
                           1424 ;     genFarPointerSet
   11A2 90 01 35           1425 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0022)
   11A5 74 64              1426 	mov	a,#0x64
   11A7 F0                 1427 	movx	@dptr,a
                           1428 ;	genPointerSet
                           1429 ;     genFarPointerSet
   11A8 90 01 36           1430 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0023)
   11AB 74 6F              1431 	mov	a,#0x6F
   11AD F0                 1432 	movx	@dptr,a
                           1433 ;	genPointerSet
                           1434 ;     genFarPointerSet
   11AE 90 01 37           1435 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0024)
   11B1 74 67              1436 	mov	a,#0x67
   11B3 F0                 1437 	movx	@dptr,a
                           1438 ;	genPointerSet
                           1439 ;     genFarPointerSet
   11B4 90 01 38           1440 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0025)
   11B7 74 2E              1441 	mov	a,#0x2E
   11B9 F0                 1442 	movx	@dptr,a
                           1443 ;	genPointerSet
                           1444 ;     genFarPointerSet
   11BA 90 01 39           1445 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0026)
   11BD 74 63              1446 	mov	a,#0x63
   11BF F0                 1447 	movx	@dptr,a
                           1448 ;	genPointerSet
                           1449 ;     genFarPointerSet
   11C0 90 01 3A           1450 	mov	dptr,#(_WD_disable_file_name_3_3 + 0x0027)
   11C3 74 00              1451 	mov	a,#0x00
   11C5 F0                 1452 	movx	@dptr,a
                           1453 ;	genAssign
   11C6 90 00 2E           1454 	mov	dptr,#_HAL_assert_fail_PARM_2
   11C9 74 49              1455 	mov	a,#0x49
   11CB F0                 1456 	movx	@dptr,a
   11CC E4                 1457 	clr	a
   11CD A3                 1458 	inc	dptr
   11CE F0                 1459 	movx	@dptr,a
   11CF A3                 1460 	inc	dptr
   11D0 F0                 1461 	movx	@dptr,a
   11D1 A3                 1462 	inc	dptr
   11D2 F0                 1463 	movx	@dptr,a
                           1464 ;	genCall
   11D3 75 82 13           1465 	mov	dpl,#_WD_disable_file_name_3_3
   11D6 75 83 01           1466 	mov	dph,#(_WD_disable_file_name_3_3 >> 8)
   11D9 75 F0 00           1467 	mov	b,#0x00
   11DC 12 08 16           1468 	lcall	_HAL_assert_fail
   11DF                    1469 00104$:
                    061E   1470 	C$core_watchdog.c$75$1$1 ==.
                           1471 ;	../drivers/CoreWatchdog/core_watchdog.c:75: HAL_set_32bit_reg_field( instance->base_address, WDOGCONTROL_WATCHDOG_ENABLE, 0 );
                           1472 ;	genAssign
   11DF 90 01 10           1473 	mov	dptr,#_WD_disable_instance_1_1
   11E2 E0                 1474 	movx	a,@dptr
   11E3 FA                 1475 	mov	r2,a
   11E4 A3                 1476 	inc	dptr
   11E5 E0                 1477 	movx	a,@dptr
   11E6 FB                 1478 	mov	r3,a
   11E7 A3                 1479 	inc	dptr
   11E8 E0                 1480 	movx	a,@dptr
   11E9 FC                 1481 	mov	r4,a
                           1482 ;	genPointerGet
                           1483 ;	genGenPointerGet
   11EA 8A 82              1484 	mov	dpl,r2
   11EC 8B 83              1485 	mov	dph,r3
   11EE 8C F0              1486 	mov	b,r4
   11F0 12 5C 8D           1487 	lcall	__gptrget
   11F3 FA                 1488 	mov	r2,a
   11F4 A3                 1489 	inc	dptr
   11F5 12 5C 8D           1490 	lcall	__gptrget
   11F8 FB                 1491 	mov	r3,a
                           1492 ;	genPlus
                           1493 ;	genPlusIncr
   11F9 74 08              1494 	mov	a,#0x08
   11FB 25 02              1495 	add	a,ar2
   11FD FA                 1496 	mov	r2,a
   11FE 74 00              1497 	mov	a,#0x00
   1200 35 03              1498 	addc	a,ar3
   1202 FB                 1499 	mov	r3,a
                           1500 ;	genAssign
   1203 90 00 50           1501 	mov	dptr,#_HW_set_32bit_reg_field_PARM_2
   1206 74 04              1502 	mov	a,#0x04
   1208 F0                 1503 	movx	@dptr,a
                           1504 ;	genAssign
   1209 90 00 51           1505 	mov	dptr,#_HW_set_32bit_reg_field_PARM_3
   120C 74 10              1506 	mov	a,#0x10
   120E F0                 1507 	movx	@dptr,a
   120F E4                 1508 	clr	a
   1210 A3                 1509 	inc	dptr
   1211 F0                 1510 	movx	@dptr,a
   1212 A3                 1511 	inc	dptr
   1213 F0                 1512 	movx	@dptr,a
   1214 A3                 1513 	inc	dptr
   1215 F0                 1514 	movx	@dptr,a
                           1515 ;	genAssign
   1216 90 00 55           1516 	mov	dptr,#_HW_set_32bit_reg_field_PARM_4
   1219 E4                 1517 	clr	a
   121A F0                 1518 	movx	@dptr,a
   121B A3                 1519 	inc	dptr
   121C F0                 1520 	movx	@dptr,a
   121D A3                 1521 	inc	dptr
   121E F0                 1522 	movx	@dptr,a
   121F A3                 1523 	inc	dptr
   1220 F0                 1524 	movx	@dptr,a
                           1525 ;	genCall
   1221 8A 82              1526 	mov	dpl,r2
   1223 8B 83              1527 	mov	dph,r3
   1225 12 08 DA           1528 	lcall	_HW_set_32bit_reg_field
   1228                    1529 00106$:
                    0667   1530 	C$core_watchdog.c$76$1$1 ==.
                    0667   1531 	XG$WD_disable$0$0 ==.
   1228 22                 1532 	ret
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
   1229                    1545 _WD_reload:
                           1546 ;	genReceive
   1229 AA F0              1547 	mov	r2,b
   122B AB 83              1548 	mov	r3,dph
   122D E5 82              1549 	mov	a,dpl
   122F 90 01 3B           1550 	mov	dptr,#_WD_reload_instance_1_1
   1232 F0                 1551 	movx	@dptr,a
   1233 A3                 1552 	inc	dptr
   1234 EB                 1553 	mov	a,r3
   1235 F0                 1554 	movx	@dptr,a
   1236 A3                 1555 	inc	dptr
   1237 EA                 1556 	mov	a,r2
   1238 F0                 1557 	movx	@dptr,a
                    0678   1558 	C$core_watchdog.c$89$2$2 ==.
                           1559 ;	../drivers/CoreWatchdog/core_watchdog.c:89: HAL_ASSERT( instance != NULL_instance )
                           1560 ;	genAssign
   1239 90 01 3B           1561 	mov	dptr,#_WD_reload_instance_1_1
   123C E0                 1562 	movx	a,@dptr
   123D FA                 1563 	mov	r2,a
   123E A3                 1564 	inc	dptr
   123F E0                 1565 	movx	a,@dptr
   1240 FB                 1566 	mov	r3,a
   1241 A3                 1567 	inc	dptr
   1242 E0                 1568 	movx	a,@dptr
   1243 FC                 1569 	mov	r4,a
                           1570 ;	genAssign
   1244 90 00 85           1571 	mov	dptr,#_NULL_instance
   1247 E0                 1572 	movx	a,@dptr
   1248 FD                 1573 	mov	r5,a
   1249 A3                 1574 	inc	dptr
   124A E0                 1575 	movx	a,@dptr
   124B FE                 1576 	mov	r6,a
   124C A3                 1577 	inc	dptr
   124D E0                 1578 	movx	a,@dptr
   124E FF                 1579 	mov	r7,a
                           1580 ;	genCmpEq
                           1581 ;	gencjneshort
   124F EA                 1582 	mov	a,r2
   1250 B5 05 0A           1583 	cjne	a,ar5,00109$
   1253 EB                 1584 	mov	a,r3
   1254 B5 06 06           1585 	cjne	a,ar6,00109$
   1257 EC                 1586 	mov	a,r4
   1258 B5 07 02           1587 	cjne	a,ar7,00109$
   125B 80 03              1588 	sjmp	00110$
   125D                    1589 00109$:
   125D 02 13 69           1590 	ljmp	00104$
   1260                    1591 00110$:
                           1592 ;	genPointerSet
                           1593 ;     genFarPointerSet
   1260 90 01 3E           1594 	mov	dptr,#_WD_reload_file_name_3_3
   1263 74 2E              1595 	mov	a,#0x2E
   1265 F0                 1596 	movx	@dptr,a
                           1597 ;	genPointerSet
                           1598 ;     genFarPointerSet
   1266 90 01 3F           1599 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0001)
   1269 74 2E              1600 	mov	a,#0x2E
   126B F0                 1601 	movx	@dptr,a
                           1602 ;	genPointerSet
                           1603 ;     genFarPointerSet
   126C 90 01 40           1604 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0002)
   126F 74 2F              1605 	mov	a,#0x2F
   1271 F0                 1606 	movx	@dptr,a
                           1607 ;	genPointerSet
                           1608 ;     genFarPointerSet
   1272 90 01 41           1609 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0003)
   1275 74 64              1610 	mov	a,#0x64
   1277 F0                 1611 	movx	@dptr,a
                           1612 ;	genPointerSet
                           1613 ;     genFarPointerSet
   1278 90 01 42           1614 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0004)
   127B 74 72              1615 	mov	a,#0x72
   127D F0                 1616 	movx	@dptr,a
                           1617 ;	genPointerSet
                           1618 ;     genFarPointerSet
   127E 90 01 43           1619 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0005)
   1281 74 69              1620 	mov	a,#0x69
   1283 F0                 1621 	movx	@dptr,a
                           1622 ;	genPointerSet
                           1623 ;     genFarPointerSet
   1284 90 01 44           1624 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0006)
   1287 74 76              1625 	mov	a,#0x76
   1289 F0                 1626 	movx	@dptr,a
                           1627 ;	genPointerSet
                           1628 ;     genFarPointerSet
   128A 90 01 45           1629 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0007)
   128D 74 65              1630 	mov	a,#0x65
   128F F0                 1631 	movx	@dptr,a
                           1632 ;	genPointerSet
                           1633 ;     genFarPointerSet
   1290 90 01 46           1634 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0008)
   1293 74 72              1635 	mov	a,#0x72
   1295 F0                 1636 	movx	@dptr,a
                           1637 ;	genPointerSet
                           1638 ;     genFarPointerSet
   1296 90 01 47           1639 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0009)
   1299 74 73              1640 	mov	a,#0x73
   129B F0                 1641 	movx	@dptr,a
                           1642 ;	genPointerSet
                           1643 ;     genFarPointerSet
   129C 90 01 48           1644 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000a)
   129F 74 2F              1645 	mov	a,#0x2F
   12A1 F0                 1646 	movx	@dptr,a
                           1647 ;	genPointerSet
                           1648 ;     genFarPointerSet
   12A2 90 01 49           1649 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000b)
   12A5 74 43              1650 	mov	a,#0x43
   12A7 F0                 1651 	movx	@dptr,a
                           1652 ;	genPointerSet
                           1653 ;     genFarPointerSet
   12A8 90 01 4A           1654 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000c)
   12AB 74 6F              1655 	mov	a,#0x6F
   12AD F0                 1656 	movx	@dptr,a
                           1657 ;	genPointerSet
                           1658 ;     genFarPointerSet
   12AE 90 01 4B           1659 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000d)
   12B1 74 72              1660 	mov	a,#0x72
   12B3 F0                 1661 	movx	@dptr,a
                           1662 ;	genPointerSet
                           1663 ;     genFarPointerSet
   12B4 90 01 4C           1664 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000e)
   12B7 74 65              1665 	mov	a,#0x65
   12B9 F0                 1666 	movx	@dptr,a
                           1667 ;	genPointerSet
                           1668 ;     genFarPointerSet
   12BA 90 01 4D           1669 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x000f)
   12BD 74 57              1670 	mov	a,#0x57
   12BF F0                 1671 	movx	@dptr,a
                           1672 ;	genPointerSet
                           1673 ;     genFarPointerSet
   12C0 90 01 4E           1674 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0010)
   12C3 74 61              1675 	mov	a,#0x61
   12C5 F0                 1676 	movx	@dptr,a
                           1677 ;	genPointerSet
                           1678 ;     genFarPointerSet
   12C6 90 01 4F           1679 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0011)
   12C9 74 74              1680 	mov	a,#0x74
   12CB F0                 1681 	movx	@dptr,a
                           1682 ;	genPointerSet
                           1683 ;     genFarPointerSet
   12CC 90 01 50           1684 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0012)
   12CF 74 63              1685 	mov	a,#0x63
   12D1 F0                 1686 	movx	@dptr,a
                           1687 ;	genPointerSet
                           1688 ;     genFarPointerSet
   12D2 90 01 51           1689 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0013)
   12D5 74 68              1690 	mov	a,#0x68
   12D7 F0                 1691 	movx	@dptr,a
                           1692 ;	genPointerSet
                           1693 ;     genFarPointerSet
   12D8 90 01 52           1694 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0014)
   12DB 74 64              1695 	mov	a,#0x64
   12DD F0                 1696 	movx	@dptr,a
                           1697 ;	genPointerSet
                           1698 ;     genFarPointerSet
   12DE 90 01 53           1699 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0015)
   12E1 74 6F              1700 	mov	a,#0x6F
   12E3 F0                 1701 	movx	@dptr,a
                           1702 ;	genPointerSet
                           1703 ;     genFarPointerSet
   12E4 90 01 54           1704 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0016)
   12E7 74 67              1705 	mov	a,#0x67
   12E9 F0                 1706 	movx	@dptr,a
                           1707 ;	genPointerSet
                           1708 ;     genFarPointerSet
   12EA 90 01 55           1709 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0017)
   12ED 74 2F              1710 	mov	a,#0x2F
   12EF F0                 1711 	movx	@dptr,a
                           1712 ;	genPointerSet
                           1713 ;     genFarPointerSet
   12F0 90 01 56           1714 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0018)
   12F3 74 63              1715 	mov	a,#0x63
   12F5 F0                 1716 	movx	@dptr,a
                           1717 ;	genPointerSet
                           1718 ;     genFarPointerSet
   12F6 90 01 57           1719 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0019)
   12F9 74 6F              1720 	mov	a,#0x6F
   12FB F0                 1721 	movx	@dptr,a
                           1722 ;	genPointerSet
                           1723 ;     genFarPointerSet
   12FC 90 01 58           1724 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001a)
   12FF 74 72              1725 	mov	a,#0x72
   1301 F0                 1726 	movx	@dptr,a
                           1727 ;	genPointerSet
                           1728 ;     genFarPointerSet
   1302 90 01 59           1729 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001b)
   1305 74 65              1730 	mov	a,#0x65
   1307 F0                 1731 	movx	@dptr,a
                           1732 ;	genPointerSet
                           1733 ;     genFarPointerSet
   1308 90 01 5A           1734 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001c)
   130B 74 5F              1735 	mov	a,#0x5F
   130D F0                 1736 	movx	@dptr,a
                           1737 ;	genPointerSet
                           1738 ;     genFarPointerSet
   130E 90 01 5B           1739 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001d)
   1311 74 77              1740 	mov	a,#0x77
   1313 F0                 1741 	movx	@dptr,a
                           1742 ;	genPointerSet
                           1743 ;     genFarPointerSet
   1314 90 01 5C           1744 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001e)
   1317 74 61              1745 	mov	a,#0x61
   1319 F0                 1746 	movx	@dptr,a
                           1747 ;	genPointerSet
                           1748 ;     genFarPointerSet
   131A 90 01 5D           1749 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x001f)
   131D 74 74              1750 	mov	a,#0x74
   131F F0                 1751 	movx	@dptr,a
                           1752 ;	genPointerSet
                           1753 ;     genFarPointerSet
   1320 90 01 5E           1754 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0020)
   1323 74 63              1755 	mov	a,#0x63
   1325 F0                 1756 	movx	@dptr,a
                           1757 ;	genPointerSet
                           1758 ;     genFarPointerSet
   1326 90 01 5F           1759 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0021)
   1329 74 68              1760 	mov	a,#0x68
   132B F0                 1761 	movx	@dptr,a
                           1762 ;	genPointerSet
                           1763 ;     genFarPointerSet
   132C 90 01 60           1764 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0022)
   132F 74 64              1765 	mov	a,#0x64
   1331 F0                 1766 	movx	@dptr,a
                           1767 ;	genPointerSet
                           1768 ;     genFarPointerSet
   1332 90 01 61           1769 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0023)
   1335 74 6F              1770 	mov	a,#0x6F
   1337 F0                 1771 	movx	@dptr,a
                           1772 ;	genPointerSet
                           1773 ;     genFarPointerSet
   1338 90 01 62           1774 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0024)
   133B 74 67              1775 	mov	a,#0x67
   133D F0                 1776 	movx	@dptr,a
                           1777 ;	genPointerSet
                           1778 ;     genFarPointerSet
   133E 90 01 63           1779 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0025)
   1341 74 2E              1780 	mov	a,#0x2E
   1343 F0                 1781 	movx	@dptr,a
                           1782 ;	genPointerSet
                           1783 ;     genFarPointerSet
   1344 90 01 64           1784 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0026)
   1347 74 63              1785 	mov	a,#0x63
   1349 F0                 1786 	movx	@dptr,a
                           1787 ;	genPointerSet
                           1788 ;     genFarPointerSet
   134A 90 01 65           1789 	mov	dptr,#(_WD_reload_file_name_3_3 + 0x0027)
   134D 74 00              1790 	mov	a,#0x00
   134F F0                 1791 	movx	@dptr,a
                           1792 ;	genAssign
   1350 90 00 2E           1793 	mov	dptr,#_HAL_assert_fail_PARM_2
   1353 74 59              1794 	mov	a,#0x59
   1355 F0                 1795 	movx	@dptr,a
   1356 E4                 1796 	clr	a
   1357 A3                 1797 	inc	dptr
   1358 F0                 1798 	movx	@dptr,a
   1359 A3                 1799 	inc	dptr
   135A F0                 1800 	movx	@dptr,a
   135B A3                 1801 	inc	dptr
   135C F0                 1802 	movx	@dptr,a
                           1803 ;	genCall
   135D 75 82 3E           1804 	mov	dpl,#_WD_reload_file_name_3_3
   1360 75 83 01           1805 	mov	dph,#(_WD_reload_file_name_3_3 >> 8)
   1363 75 F0 00           1806 	mov	b,#0x00
   1366 12 08 16           1807 	lcall	_HAL_assert_fail
   1369                    1808 00104$:
                    07A8   1809 	C$core_watchdog.c$91$1$1 ==.
                           1810 ;	../drivers/CoreWatchdog/core_watchdog.c:91: HAL_set_32bit_reg( instance->base_address, WDOGREFRESH, 1 );
                           1811 ;	genAssign
   1369 90 01 3B           1812 	mov	dptr,#_WD_reload_instance_1_1
   136C E0                 1813 	movx	a,@dptr
   136D FA                 1814 	mov	r2,a
   136E A3                 1815 	inc	dptr
   136F E0                 1816 	movx	a,@dptr
   1370 FB                 1817 	mov	r3,a
   1371 A3                 1818 	inc	dptr
   1372 E0                 1819 	movx	a,@dptr
   1373 FC                 1820 	mov	r4,a
                           1821 ;	genPointerGet
                           1822 ;	genGenPointerGet
   1374 8A 82              1823 	mov	dpl,r2
   1376 8B 83              1824 	mov	dph,r3
   1378 8C F0              1825 	mov	b,r4
   137A 12 5C 8D           1826 	lcall	__gptrget
   137D FA                 1827 	mov	r2,a
   137E A3                 1828 	inc	dptr
   137F 12 5C 8D           1829 	lcall	__gptrget
   1382 FB                 1830 	mov	r3,a
                           1831 ;	genPlus
                           1832 ;	genPlusIncr
   1383 74 0C              1833 	mov	a,#0x0C
   1385 25 02              1834 	add	a,ar2
   1387 FA                 1835 	mov	r2,a
   1388 74 00              1836 	mov	a,#0x00
   138A 35 03              1837 	addc	a,ar3
   138C FB                 1838 	mov	r3,a
                           1839 ;	genAssign
   138D 90 00 4C           1840 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   1390 74 01              1841 	mov	a,#0x01
   1392 F0                 1842 	movx	@dptr,a
   1393 E4                 1843 	clr	a
   1394 A3                 1844 	inc	dptr
   1395 F0                 1845 	movx	@dptr,a
   1396 A3                 1846 	inc	dptr
   1397 F0                 1847 	movx	@dptr,a
   1398 A3                 1848 	inc	dptr
   1399 F0                 1849 	movx	@dptr,a
                           1850 ;	genCall
   139A 8A 82              1851 	mov	dpl,r2
   139C 8B 83              1852 	mov	dph,r3
   139E 12 08 82           1853 	lcall	_HW_set_32bit_reg
   13A1                    1854 00106$:
                    07E0   1855 	C$core_watchdog.c$92$1$1 ==.
                    07E0   1856 	XG$WD_reload$0$0 ==.
   13A1 22                 1857 	ret
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
   13A2                    1870 _WD_current_value:
                           1871 ;	genReceive
   13A2 AA F0              1872 	mov	r2,b
   13A4 AB 83              1873 	mov	r3,dph
   13A6 E5 82              1874 	mov	a,dpl
   13A8 90 01 66           1875 	mov	dptr,#_WD_current_value_instance_1_1
   13AB F0                 1876 	movx	@dptr,a
   13AC A3                 1877 	inc	dptr
   13AD EB                 1878 	mov	a,r3
   13AE F0                 1879 	movx	@dptr,a
   13AF A3                 1880 	inc	dptr
   13B0 EA                 1881 	mov	a,r2
   13B1 F0                 1882 	movx	@dptr,a
                    07F1   1883 	C$core_watchdog.c$105$2$2 ==.
                           1884 ;	../drivers/CoreWatchdog/core_watchdog.c:105: HAL_ASSERT( instance != NULL_instance )
                           1885 ;	genAssign
   13B2 90 01 66           1886 	mov	dptr,#_WD_current_value_instance_1_1
   13B5 E0                 1887 	movx	a,@dptr
   13B6 FA                 1888 	mov	r2,a
   13B7 A3                 1889 	inc	dptr
   13B8 E0                 1890 	movx	a,@dptr
   13B9 FB                 1891 	mov	r3,a
   13BA A3                 1892 	inc	dptr
   13BB E0                 1893 	movx	a,@dptr
   13BC FC                 1894 	mov	r4,a
                           1895 ;	genAssign
   13BD 90 00 85           1896 	mov	dptr,#_NULL_instance
   13C0 E0                 1897 	movx	a,@dptr
   13C1 FD                 1898 	mov	r5,a
   13C2 A3                 1899 	inc	dptr
   13C3 E0                 1900 	movx	a,@dptr
   13C4 FE                 1901 	mov	r6,a
   13C5 A3                 1902 	inc	dptr
   13C6 E0                 1903 	movx	a,@dptr
   13C7 FF                 1904 	mov	r7,a
                           1905 ;	genCmpEq
                           1906 ;	gencjneshort
   13C8 EA                 1907 	mov	a,r2
   13C9 B5 05 0A           1908 	cjne	a,ar5,00109$
   13CC EB                 1909 	mov	a,r3
   13CD B5 06 06           1910 	cjne	a,ar6,00109$
   13D0 EC                 1911 	mov	a,r4
   13D1 B5 07 02           1912 	cjne	a,ar7,00109$
   13D4 80 03              1913 	sjmp	00110$
   13D6                    1914 00109$:
   13D6 02 14 E2           1915 	ljmp	00104$
   13D9                    1916 00110$:
                           1917 ;	genPointerSet
                           1918 ;     genFarPointerSet
   13D9 90 01 69           1919 	mov	dptr,#_WD_current_value_file_name_3_3
   13DC 74 2E              1920 	mov	a,#0x2E
   13DE F0                 1921 	movx	@dptr,a
                           1922 ;	genPointerSet
                           1923 ;     genFarPointerSet
   13DF 90 01 6A           1924 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0001)
   13E2 74 2E              1925 	mov	a,#0x2E
   13E4 F0                 1926 	movx	@dptr,a
                           1927 ;	genPointerSet
                           1928 ;     genFarPointerSet
   13E5 90 01 6B           1929 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0002)
   13E8 74 2F              1930 	mov	a,#0x2F
   13EA F0                 1931 	movx	@dptr,a
                           1932 ;	genPointerSet
                           1933 ;     genFarPointerSet
   13EB 90 01 6C           1934 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0003)
   13EE 74 64              1935 	mov	a,#0x64
   13F0 F0                 1936 	movx	@dptr,a
                           1937 ;	genPointerSet
                           1938 ;     genFarPointerSet
   13F1 90 01 6D           1939 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0004)
   13F4 74 72              1940 	mov	a,#0x72
   13F6 F0                 1941 	movx	@dptr,a
                           1942 ;	genPointerSet
                           1943 ;     genFarPointerSet
   13F7 90 01 6E           1944 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0005)
   13FA 74 69              1945 	mov	a,#0x69
   13FC F0                 1946 	movx	@dptr,a
                           1947 ;	genPointerSet
                           1948 ;     genFarPointerSet
   13FD 90 01 6F           1949 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0006)
   1400 74 76              1950 	mov	a,#0x76
   1402 F0                 1951 	movx	@dptr,a
                           1952 ;	genPointerSet
                           1953 ;     genFarPointerSet
   1403 90 01 70           1954 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0007)
   1406 74 65              1955 	mov	a,#0x65
   1408 F0                 1956 	movx	@dptr,a
                           1957 ;	genPointerSet
                           1958 ;     genFarPointerSet
   1409 90 01 71           1959 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0008)
   140C 74 72              1960 	mov	a,#0x72
   140E F0                 1961 	movx	@dptr,a
                           1962 ;	genPointerSet
                           1963 ;     genFarPointerSet
   140F 90 01 72           1964 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0009)
   1412 74 73              1965 	mov	a,#0x73
   1414 F0                 1966 	movx	@dptr,a
                           1967 ;	genPointerSet
                           1968 ;     genFarPointerSet
   1415 90 01 73           1969 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000a)
   1418 74 2F              1970 	mov	a,#0x2F
   141A F0                 1971 	movx	@dptr,a
                           1972 ;	genPointerSet
                           1973 ;     genFarPointerSet
   141B 90 01 74           1974 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000b)
   141E 74 43              1975 	mov	a,#0x43
   1420 F0                 1976 	movx	@dptr,a
                           1977 ;	genPointerSet
                           1978 ;     genFarPointerSet
   1421 90 01 75           1979 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000c)
   1424 74 6F              1980 	mov	a,#0x6F
   1426 F0                 1981 	movx	@dptr,a
                           1982 ;	genPointerSet
                           1983 ;     genFarPointerSet
   1427 90 01 76           1984 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000d)
   142A 74 72              1985 	mov	a,#0x72
   142C F0                 1986 	movx	@dptr,a
                           1987 ;	genPointerSet
                           1988 ;     genFarPointerSet
   142D 90 01 77           1989 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000e)
   1430 74 65              1990 	mov	a,#0x65
   1432 F0                 1991 	movx	@dptr,a
                           1992 ;	genPointerSet
                           1993 ;     genFarPointerSet
   1433 90 01 78           1994 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x000f)
   1436 74 57              1995 	mov	a,#0x57
   1438 F0                 1996 	movx	@dptr,a
                           1997 ;	genPointerSet
                           1998 ;     genFarPointerSet
   1439 90 01 79           1999 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0010)
   143C 74 61              2000 	mov	a,#0x61
   143E F0                 2001 	movx	@dptr,a
                           2002 ;	genPointerSet
                           2003 ;     genFarPointerSet
   143F 90 01 7A           2004 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0011)
   1442 74 74              2005 	mov	a,#0x74
   1444 F0                 2006 	movx	@dptr,a
                           2007 ;	genPointerSet
                           2008 ;     genFarPointerSet
   1445 90 01 7B           2009 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0012)
   1448 74 63              2010 	mov	a,#0x63
   144A F0                 2011 	movx	@dptr,a
                           2012 ;	genPointerSet
                           2013 ;     genFarPointerSet
   144B 90 01 7C           2014 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0013)
   144E 74 68              2015 	mov	a,#0x68
   1450 F0                 2016 	movx	@dptr,a
                           2017 ;	genPointerSet
                           2018 ;     genFarPointerSet
   1451 90 01 7D           2019 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0014)
   1454 74 64              2020 	mov	a,#0x64
   1456 F0                 2021 	movx	@dptr,a
                           2022 ;	genPointerSet
                           2023 ;     genFarPointerSet
   1457 90 01 7E           2024 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0015)
   145A 74 6F              2025 	mov	a,#0x6F
   145C F0                 2026 	movx	@dptr,a
                           2027 ;	genPointerSet
                           2028 ;     genFarPointerSet
   145D 90 01 7F           2029 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0016)
   1460 74 67              2030 	mov	a,#0x67
   1462 F0                 2031 	movx	@dptr,a
                           2032 ;	genPointerSet
                           2033 ;     genFarPointerSet
   1463 90 01 80           2034 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0017)
   1466 74 2F              2035 	mov	a,#0x2F
   1468 F0                 2036 	movx	@dptr,a
                           2037 ;	genPointerSet
                           2038 ;     genFarPointerSet
   1469 90 01 81           2039 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0018)
   146C 74 63              2040 	mov	a,#0x63
   146E F0                 2041 	movx	@dptr,a
                           2042 ;	genPointerSet
                           2043 ;     genFarPointerSet
   146F 90 01 82           2044 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0019)
   1472 74 6F              2045 	mov	a,#0x6F
   1474 F0                 2046 	movx	@dptr,a
                           2047 ;	genPointerSet
                           2048 ;     genFarPointerSet
   1475 90 01 83           2049 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001a)
   1478 74 72              2050 	mov	a,#0x72
   147A F0                 2051 	movx	@dptr,a
                           2052 ;	genPointerSet
                           2053 ;     genFarPointerSet
   147B 90 01 84           2054 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001b)
   147E 74 65              2055 	mov	a,#0x65
   1480 F0                 2056 	movx	@dptr,a
                           2057 ;	genPointerSet
                           2058 ;     genFarPointerSet
   1481 90 01 85           2059 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001c)
   1484 74 5F              2060 	mov	a,#0x5F
   1486 F0                 2061 	movx	@dptr,a
                           2062 ;	genPointerSet
                           2063 ;     genFarPointerSet
   1487 90 01 86           2064 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001d)
   148A 74 77              2065 	mov	a,#0x77
   148C F0                 2066 	movx	@dptr,a
                           2067 ;	genPointerSet
                           2068 ;     genFarPointerSet
   148D 90 01 87           2069 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001e)
   1490 74 61              2070 	mov	a,#0x61
   1492 F0                 2071 	movx	@dptr,a
                           2072 ;	genPointerSet
                           2073 ;     genFarPointerSet
   1493 90 01 88           2074 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x001f)
   1496 74 74              2075 	mov	a,#0x74
   1498 F0                 2076 	movx	@dptr,a
                           2077 ;	genPointerSet
                           2078 ;     genFarPointerSet
   1499 90 01 89           2079 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0020)
   149C 74 63              2080 	mov	a,#0x63
   149E F0                 2081 	movx	@dptr,a
                           2082 ;	genPointerSet
                           2083 ;     genFarPointerSet
   149F 90 01 8A           2084 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0021)
   14A2 74 68              2085 	mov	a,#0x68
   14A4 F0                 2086 	movx	@dptr,a
                           2087 ;	genPointerSet
                           2088 ;     genFarPointerSet
   14A5 90 01 8B           2089 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0022)
   14A8 74 64              2090 	mov	a,#0x64
   14AA F0                 2091 	movx	@dptr,a
                           2092 ;	genPointerSet
                           2093 ;     genFarPointerSet
   14AB 90 01 8C           2094 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0023)
   14AE 74 6F              2095 	mov	a,#0x6F
   14B0 F0                 2096 	movx	@dptr,a
                           2097 ;	genPointerSet
                           2098 ;     genFarPointerSet
   14B1 90 01 8D           2099 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0024)
   14B4 74 67              2100 	mov	a,#0x67
   14B6 F0                 2101 	movx	@dptr,a
                           2102 ;	genPointerSet
                           2103 ;     genFarPointerSet
   14B7 90 01 8E           2104 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0025)
   14BA 74 2E              2105 	mov	a,#0x2E
   14BC F0                 2106 	movx	@dptr,a
                           2107 ;	genPointerSet
                           2108 ;     genFarPointerSet
   14BD 90 01 8F           2109 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0026)
   14C0 74 63              2110 	mov	a,#0x63
   14C2 F0                 2111 	movx	@dptr,a
                           2112 ;	genPointerSet
                           2113 ;     genFarPointerSet
   14C3 90 01 90           2114 	mov	dptr,#(_WD_current_value_file_name_3_3 + 0x0027)
   14C6 74 00              2115 	mov	a,#0x00
   14C8 F0                 2116 	movx	@dptr,a
                           2117 ;	genAssign
   14C9 90 00 2E           2118 	mov	dptr,#_HAL_assert_fail_PARM_2
   14CC 74 69              2119 	mov	a,#0x69
   14CE F0                 2120 	movx	@dptr,a
   14CF E4                 2121 	clr	a
   14D0 A3                 2122 	inc	dptr
   14D1 F0                 2123 	movx	@dptr,a
   14D2 A3                 2124 	inc	dptr
   14D3 F0                 2125 	movx	@dptr,a
   14D4 A3                 2126 	inc	dptr
   14D5 F0                 2127 	movx	@dptr,a
                           2128 ;	genCall
   14D6 75 82 69           2129 	mov	dpl,#_WD_current_value_file_name_3_3
   14D9 75 83 01           2130 	mov	dph,#(_WD_current_value_file_name_3_3 >> 8)
   14DC 75 F0 00           2131 	mov	b,#0x00
   14DF 12 08 16           2132 	lcall	_HAL_assert_fail
   14E2                    2133 00104$:
                    0921   2134 	C$core_watchdog.c$107$1$1 ==.
                           2135 ;	../drivers/CoreWatchdog/core_watchdog.c:107: return HAL_get_32bit_reg( instance->base_address, WDOGVALUE );
                           2136 ;	genAssign
   14E2 90 01 66           2137 	mov	dptr,#_WD_current_value_instance_1_1
   14E5 E0                 2138 	movx	a,@dptr
   14E6 FA                 2139 	mov	r2,a
   14E7 A3                 2140 	inc	dptr
   14E8 E0                 2141 	movx	a,@dptr
   14E9 FB                 2142 	mov	r3,a
   14EA A3                 2143 	inc	dptr
   14EB E0                 2144 	movx	a,@dptr
   14EC FC                 2145 	mov	r4,a
                           2146 ;	genPointerGet
                           2147 ;	genGenPointerGet
   14ED 8A 82              2148 	mov	dpl,r2
   14EF 8B 83              2149 	mov	dph,r3
   14F1 8C F0              2150 	mov	b,r4
   14F3 12 5C 8D           2151 	lcall	__gptrget
   14F6 FA                 2152 	mov	r2,a
   14F7 A3                 2153 	inc	dptr
   14F8 12 5C 8D           2154 	lcall	__gptrget
   14FB FB                 2155 	mov	r3,a
                           2156 ;	genPlus
                           2157 ;	genPlusIncr
   14FC 74 04              2158 	mov	a,#0x04
   14FE 25 02              2159 	add	a,ar2
   1500 FA                 2160 	mov	r2,a
   1501 74 00              2161 	mov	a,#0x00
   1503 35 03              2162 	addc	a,ar3
   1505 FB                 2163 	mov	r3,a
                           2164 ;	genCall
   1506 8A 82              2165 	mov	dpl,r2
   1508 8B 83              2166 	mov	dph,r3
   150A 12 08 76           2167 	lcall	_HW_get_32bit_reg
   150D AA 82              2168 	mov	r2,dpl
   150F AB 83              2169 	mov	r3,dph
   1511 AC F0              2170 	mov	r4,b
   1513 FD                 2171 	mov	r5,a
                           2172 ;	genRet
   1514 8A 82              2173 	mov	dpl,r2
   1516 8B 83              2174 	mov	dph,r3
   1518 8C F0              2175 	mov	b,r4
   151A ED                 2176 	mov	a,r5
   151B                    2177 00106$:
                    095A   2178 	C$core_watchdog.c$108$1$1 ==.
                    095A   2179 	XG$WD_current_value$0$0 ==.
   151B 22                 2180 	ret
                           2181 	.area CSEG    (CODE)
                           2182 	.area CONST   (CODE)
                           2183 	.area XINIT   (CODE)
                           2184 	.area CABS    (ABS,CODE)
