                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:51:58 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___drivers_CoreInterrupt_core_irq_ctrl
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _CIC_set_irq_handler_PARM_2
                             13 	.globl _CIC_init
                             14 	.globl _CIC_set_irq_handler
                             15 	.globl _CIC_get_irq_status
                             16 	.globl _CIC_enable_irq
                             17 	.globl _CIC_disable_irq
                             18 	.globl _CIC_irq_handler
                             19 ;--------------------------------------------------------
                             20 ; special function registers
                             21 ;--------------------------------------------------------
                             22 	.area RSEG    (DATA)
                             23 ;--------------------------------------------------------
                             24 ; special function bits
                             25 ;--------------------------------------------------------
                             26 	.area RSEG    (DATA)
                             27 ;--------------------------------------------------------
                             28 ; overlayable register banks
                             29 ;--------------------------------------------------------
                             30 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      31 	.ds 8
                             32 ;--------------------------------------------------------
                             33 ; internal ram data
                             34 ;--------------------------------------------------------
                             35 	.area DSEG    (DATA)
                             36 ;--------------------------------------------------------
                             37 ; overlayable items in internal ram 
                             38 ;--------------------------------------------------------
                             39 	.area OSEG    (OVR,DATA)
                             40 ;--------------------------------------------------------
                             41 ; indirectly addressable internal ram data
                             42 ;--------------------------------------------------------
                             43 	.area ISEG    (DATA)
                             44 ;--------------------------------------------------------
                             45 ; absolute internal ram data
                             46 ;--------------------------------------------------------
                             47 	.area IABS    (ABS,DATA)
                             48 	.area IABS    (ABS,DATA)
                             49 ;--------------------------------------------------------
                             50 ; bit data
                             51 ;--------------------------------------------------------
                             52 	.area BSEG    (BIT)
                             53 ;--------------------------------------------------------
                             54 ; paged external ram data
                             55 ;--------------------------------------------------------
                             56 	.area PSEG    (PAG,XDATA)
                             57 ;--------------------------------------------------------
                             58 ; external ram data
                             59 ;--------------------------------------------------------
                             60 	.area XSEG    (XDATA)
                    0000     61 F___drivers_CoreInterrupt_core_irq_ctrl$g_irq_handler_table$0$0==.
   0638                      62 _g_irq_handler_table:
   0638                      63 	.ds 64
                    0040     64 LCIC_init$address$1$1==.
   0678                      65 _CIC_init_address_1_1:
   0678                      66 	.ds 2
                    0042     67 LCIC_init$irq_idx$1$1==.
   067A                      68 _CIC_init_irq_idx_1_1:
   067A                      69 	.ds 1
                    0043     70 LCIC_set_irq_handler$handler$1$1==.
   067B                      71 _CIC_set_irq_handler_PARM_2:
   067B                      72 	.ds 2
                    0045     73 LCIC_set_irq_handler$irq_number$1$1==.
   067D                      74 _CIC_set_irq_handler_irq_number_1_1:
   067D                      75 	.ds 1
                    0046     76 LCIC_set_irq_handler$file_name$3$3==.
   067E                      77 _CIC_set_irq_handler_file_name_3_3:
   067E                      78 	.ds 41
                    006F     79 LCIC_enable_irq$irq_number$1$1==.
   06A7                      80 _CIC_enable_irq_irq_number_1_1:
   06A7                      81 	.ds 1
                    0070     82 LCIC_enable_irq$file_name$3$3==.
   06A8                      83 _CIC_enable_irq_file_name_3_3:
   06A8                      84 	.ds 41
                    0099     85 LCIC_disable_irq$irq_number$1$1==.
   06D1                      86 _CIC_disable_irq_irq_number_1_1:
   06D1                      87 	.ds 1
                    009A     88 LCIC_disable_irq$file_name$3$3==.
   06D2                      89 _CIC_disable_irq_file_name_3_3:
   06D2                      90 	.ds 41
                    00C3     91 LCIC_irq_handler$irq_idx$1$1==.
   06FB                      92 _CIC_irq_handler_irq_idx_1_1:
   06FB                      93 	.ds 1
                    00C4     94 LCIC_irq_handler$file_name$6$6==.
   06FC                      95 _CIC_irq_handler_file_name_6_6:
   06FC                      96 	.ds 41
                             97 ;--------------------------------------------------------
                             98 ; external initialized ram data
                             99 ;--------------------------------------------------------
                            100 	.area XISEG   (XDATA)
                    0000    101 F___drivers_CoreInterrupt_core_irq_ctrl$g_cic_base_addr$0$0==.
   0989                     102 _g_cic_base_addr:
   0989                     103 	.ds 2
                            104 	.area HOME    (CODE)
                            105 	.area GSINIT0 (CODE)
                            106 	.area GSINIT1 (CODE)
                            107 	.area GSINIT2 (CODE)
                            108 	.area GSINIT3 (CODE)
                            109 	.area GSINIT4 (CODE)
                            110 	.area GSINIT5 (CODE)
                            111 	.area GSINIT  (CODE)
                            112 	.area GSFINAL (CODE)
                            113 	.area CSEG    (CODE)
                            114 ;--------------------------------------------------------
                            115 ; global & static initialisations
                            116 ;--------------------------------------------------------
                            117 	.area HOME    (CODE)
                            118 	.area GSINIT  (CODE)
                            119 	.area GSFINAL (CODE)
                            120 	.area GSINIT  (CODE)
                            121 ;--------------------------------------------------------
                            122 ; Home
                            123 ;--------------------------------------------------------
                            124 	.area HOME    (CODE)
                            125 	.area HOME    (CODE)
                            126 ;--------------------------------------------------------
                            127 ; code
                            128 ;--------------------------------------------------------
                            129 	.area CSEG    (CODE)
                            130 ;------------------------------------------------------------
                            131 ;Allocation info for local variables in function 'CIC_init'
                            132 ;------------------------------------------------------------
                            133 ;address                   Allocated with name '_CIC_init_address_1_1'
                            134 ;irq_idx                   Allocated with name '_CIC_init_irq_idx_1_1'
                            135 ;------------------------------------------------------------
                    0000    136 	G$CIC_init$0$0 ==.
                    0000    137 	C$core_irq_ctrl.c$41$0$0 ==.
                            138 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:41: CIC_init
                            139 ;	-----------------------------------------
                            140 ;	 function CIC_init
                            141 ;	-----------------------------------------
   3BE6                     142 _CIC_init:
                    0002    143 	ar2 = 0x02
                    0003    144 	ar3 = 0x03
                    0004    145 	ar4 = 0x04
                    0005    146 	ar5 = 0x05
                    0006    147 	ar6 = 0x06
                    0007    148 	ar7 = 0x07
                    0000    149 	ar0 = 0x00
                    0001    150 	ar1 = 0x01
                            151 ;	genReceive
   3BE6 AA 83               152 	mov	r2,dph
   3BE8 E5 82               153 	mov	a,dpl
   3BEA 90 06 78            154 	mov	dptr,#_CIC_init_address_1_1
   3BED F0                  155 	movx	@dptr,a
   3BEE A3                  156 	inc	dptr
   3BEF EA                  157 	mov	a,r2
   3BF0 F0                  158 	movx	@dptr,a
                    000B    159 	C$core_irq_ctrl.c$47$1$1 ==.
                            160 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:47: g_cic_base_addr = address;
                            161 ;	genAssign
   3BF1 90 06 78            162 	mov	dptr,#_CIC_init_address_1_1
   3BF4 E0                  163 	movx	a,@dptr
   3BF5 FA                  164 	mov	r2,a
   3BF6 A3                  165 	inc	dptr
   3BF7 E0                  166 	movx	a,@dptr
   3BF8 FB                  167 	mov	r3,a
                            168 ;	genAssign
   3BF9 90 09 89            169 	mov	dptr,#_g_cic_base_addr
   3BFC EA                  170 	mov	a,r2
   3BFD F0                  171 	movx	@dptr,a
   3BFE A3                  172 	inc	dptr
   3BFF EB                  173 	mov	a,r3
   3C00 F0                  174 	movx	@dptr,a
                    001B    175 	C$core_irq_ctrl.c$50$1$1 ==.
                            176 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:50: HAL_set_32bit_reg( g_cic_base_addr, FIQEnableClear, CLEAR_ALL_BITS );
                            177 ;	genPlus
                            178 ;	genPlusIncr
   3C01 74 0C               179 	mov	a,#0x0C
   3C03 25 02               180 	add	a,ar2
   3C05 FA                  181 	mov	r2,a
   3C06 74 00               182 	mov	a,#0x00
   3C08 35 03               183 	addc	a,ar3
   3C0A FB                  184 	mov	r3,a
                            185 ;	genAssign
   3C0B 90 00 AA            186 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   3C0E 74 FF               187 	mov	a,#0xFF
   3C10 F0                  188 	movx	@dptr,a
   3C11 A3                  189 	inc	dptr
   3C12 74 FF               190 	mov	a,#0xFF
   3C14 F0                  191 	movx	@dptr,a
   3C15 A3                  192 	inc	dptr
   3C16 74 FF               193 	mov	a,#0xFF
   3C18 F0                  194 	movx	@dptr,a
   3C19 A3                  195 	inc	dptr
   3C1A 74 FF               196 	mov	a,#0xFF
   3C1C F0                  197 	movx	@dptr,a
                            198 ;	genCall
   3C1D 8A 82               199 	mov	dpl,r2
   3C1F 8B 83               200 	mov	dph,r3
   3C21 12 06 62            201 	lcall	_HW_set_32bit_reg
                    003E    202 	C$core_irq_ctrl.c$53$1$1 ==.
                            203 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:53: HAL_set_32bit_reg( g_cic_base_addr, IRQEnableClear, CLEAR_ALL_BITS );
                            204 ;	genAssign
   3C24 90 09 89            205 	mov	dptr,#_g_cic_base_addr
   3C27 E0                  206 	movx	a,@dptr
   3C28 FA                  207 	mov	r2,a
   3C29 A3                  208 	inc	dptr
   3C2A E0                  209 	movx	a,@dptr
   3C2B FB                  210 	mov	r3,a
                            211 ;	genPlus
                            212 ;	genPlusIncr
   3C2C 74 24               213 	mov	a,#0x24
   3C2E 25 02               214 	add	a,ar2
   3C30 FA                  215 	mov	r2,a
   3C31 74 00               216 	mov	a,#0x00
   3C33 35 03               217 	addc	a,ar3
   3C35 FB                  218 	mov	r3,a
                            219 ;	genAssign
   3C36 90 00 AA            220 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   3C39 74 FF               221 	mov	a,#0xFF
   3C3B F0                  222 	movx	@dptr,a
   3C3C A3                  223 	inc	dptr
   3C3D 74 FF               224 	mov	a,#0xFF
   3C3F F0                  225 	movx	@dptr,a
   3C40 A3                  226 	inc	dptr
   3C41 74 FF               227 	mov	a,#0xFF
   3C43 F0                  228 	movx	@dptr,a
   3C44 A3                  229 	inc	dptr
   3C45 74 FF               230 	mov	a,#0xFF
   3C47 F0                  231 	movx	@dptr,a
                            232 ;	genCall
   3C48 8A 82               233 	mov	dpl,r2
   3C4A 8B 83               234 	mov	dph,r3
   3C4C 12 06 62            235 	lcall	_HW_set_32bit_reg
                    0069    236 	C$core_irq_ctrl.c$56$1$1 ==.
                            237 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:56: for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
                            238 ;	genAssign
   3C4F 90 06 7A            239 	mov	dptr,#_CIC_init_irq_idx_1_1
   3C52 74 00               240 	mov	a,#0x00
   3C54 F0                  241 	movx	@dptr,a
   3C55                     242 00101$:
                            243 ;	genAssign
   3C55 90 06 7A            244 	mov	dptr,#_CIC_init_irq_idx_1_1
   3C58 E0                  245 	movx	a,@dptr
   3C59 FA                  246 	mov	r2,a
                            247 ;	genCmpLt
                            248 ;	genCmp
   3C5A BA 20 00            249 	cjne	r2,#0x20,00109$
   3C5D                     250 00109$:
                            251 ;	genIfxJump
   3C5D 40 03               252 	jc	00110$
   3C5F 02 3C 82            253 	ljmp	00105$
   3C62                     254 00110$:
                    007C    255 	C$core_irq_ctrl.c$58$2$2 ==.
                            256 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:58: g_irq_handler_table[irq_idx] = NO_HANDLER;
                            257 ;	genLeftShift
                            258 ;	genLeftShiftLiteral
                            259 ;	genlshOne
   3C62 EA                  260 	mov	a,r2
   3C63 25 E0               261 	add	a,acc
   3C65 FB                  262 	mov	r3,a
                            263 ;	genPlus
   3C66 E5 03               264 	mov	a,ar3
   3C68 24 38               265 	add	a,#_g_irq_handler_table
   3C6A F5 82               266 	mov	dpl,a
   3C6C 74 00               267 	mov	a,#0x00
   3C6E 34 06               268 	addc	a,#(_g_irq_handler_table >> 8)
   3C70 F5 83               269 	mov	dph,a
                            270 ;	genPointerSet
                            271 ;     genFarPointerSet
   3C72 74 00               272 	mov	a,#0x00
   3C74 F0                  273 	movx	@dptr,a
   3C75 A3                  274 	inc	dptr
   3C76 74 00               275 	mov	a,#0x00
   3C78 F0                  276 	movx	@dptr,a
                    0093    277 	C$core_irq_ctrl.c$56$1$1 ==.
                            278 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:56: for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
                            279 ;	genPlus
   3C79 90 06 7A            280 	mov	dptr,#_CIC_init_irq_idx_1_1
                            281 ;	genPlusIncr
   3C7C EA                  282 	mov	a,r2
   3C7D 04                  283 	inc	a
   3C7E F0                  284 	movx	@dptr,a
   3C7F 02 3C 55            285 	ljmp	00101$
   3C82                     286 00105$:
                    009C    287 	C$core_irq_ctrl.c$60$1$1 ==.
                    009C    288 	XG$CIC_init$0$0 ==.
   3C82 22                  289 	ret
                            290 ;------------------------------------------------------------
                            291 ;Allocation info for local variables in function 'CIC_set_irq_handler'
                            292 ;------------------------------------------------------------
                            293 ;handler                   Allocated with name '_CIC_set_irq_handler_PARM_2'
                            294 ;irq_number                Allocated with name '_CIC_set_irq_handler_irq_number_1_1'
                            295 ;file_name                 Allocated with name '_CIC_set_irq_handler_file_name_3_3'
                            296 ;------------------------------------------------------------
                    009D    297 	G$CIC_set_irq_handler$0$0 ==.
                    009D    298 	C$core_irq_ctrl.c$67$1$1 ==.
                            299 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:67: CIC_set_irq_handler
                            300 ;	-----------------------------------------
                            301 ;	 function CIC_set_irq_handler
                            302 ;	-----------------------------------------
   3C83                     303 _CIC_set_irq_handler:
                            304 ;	genReceive
   3C83 E5 82               305 	mov	a,dpl
   3C85 90 06 7D            306 	mov	dptr,#_CIC_set_irq_handler_irq_number_1_1
   3C88 F0                  307 	movx	@dptr,a
                    00A3    308 	C$core_irq_ctrl.c$73$2$2 ==.
                            309 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:73: HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
                            310 ;	genAssign
   3C89 90 06 7D            311 	mov	dptr,#_CIC_set_irq_handler_irq_number_1_1
   3C8C E0                  312 	movx	a,@dptr
   3C8D FA                  313 	mov	r2,a
                            314 ;	genCmpLt
                            315 ;	genCmp
   3C8E BA 20 00            316 	cjne	r2,#0x20,00109$
   3C91                     317 00109$:
                            318 ;	genIfxJump
   3C91 50 03               319 	jnc	00110$
   3C93 02 3D A5            320 	ljmp	00104$
   3C96                     321 00110$:
                            322 ;	genPointerSet
                            323 ;     genFarPointerSet
   3C96 90 06 7E            324 	mov	dptr,#_CIC_set_irq_handler_file_name_3_3
   3C99 74 2E               325 	mov	a,#0x2E
   3C9B F0                  326 	movx	@dptr,a
                            327 ;	genPointerSet
                            328 ;     genFarPointerSet
   3C9C 90 06 7F            329 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0001)
   3C9F 74 2E               330 	mov	a,#0x2E
   3CA1 F0                  331 	movx	@dptr,a
                            332 ;	genPointerSet
                            333 ;     genFarPointerSet
   3CA2 90 06 80            334 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0002)
   3CA5 74 2F               335 	mov	a,#0x2F
   3CA7 F0                  336 	movx	@dptr,a
                            337 ;	genPointerSet
                            338 ;     genFarPointerSet
   3CA8 90 06 81            339 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0003)
   3CAB 74 64               340 	mov	a,#0x64
   3CAD F0                  341 	movx	@dptr,a
                            342 ;	genPointerSet
                            343 ;     genFarPointerSet
   3CAE 90 06 82            344 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0004)
   3CB1 74 72               345 	mov	a,#0x72
   3CB3 F0                  346 	movx	@dptr,a
                            347 ;	genPointerSet
                            348 ;     genFarPointerSet
   3CB4 90 06 83            349 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0005)
   3CB7 74 69               350 	mov	a,#0x69
   3CB9 F0                  351 	movx	@dptr,a
                            352 ;	genPointerSet
                            353 ;     genFarPointerSet
   3CBA 90 06 84            354 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0006)
   3CBD 74 76               355 	mov	a,#0x76
   3CBF F0                  356 	movx	@dptr,a
                            357 ;	genPointerSet
                            358 ;     genFarPointerSet
   3CC0 90 06 85            359 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0007)
   3CC3 74 65               360 	mov	a,#0x65
   3CC5 F0                  361 	movx	@dptr,a
                            362 ;	genPointerSet
                            363 ;     genFarPointerSet
   3CC6 90 06 86            364 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0008)
   3CC9 74 72               365 	mov	a,#0x72
   3CCB F0                  366 	movx	@dptr,a
                            367 ;	genPointerSet
                            368 ;     genFarPointerSet
   3CCC 90 06 87            369 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0009)
   3CCF 74 73               370 	mov	a,#0x73
   3CD1 F0                  371 	movx	@dptr,a
                            372 ;	genPointerSet
                            373 ;     genFarPointerSet
   3CD2 90 06 88            374 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000a)
   3CD5 74 2F               375 	mov	a,#0x2F
   3CD7 F0                  376 	movx	@dptr,a
                            377 ;	genPointerSet
                            378 ;     genFarPointerSet
   3CD8 90 06 89            379 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000b)
   3CDB 74 43               380 	mov	a,#0x43
   3CDD F0                  381 	movx	@dptr,a
                            382 ;	genPointerSet
                            383 ;     genFarPointerSet
   3CDE 90 06 8A            384 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000c)
   3CE1 74 6F               385 	mov	a,#0x6F
   3CE3 F0                  386 	movx	@dptr,a
                            387 ;	genPointerSet
                            388 ;     genFarPointerSet
   3CE4 90 06 8B            389 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000d)
   3CE7 74 72               390 	mov	a,#0x72
   3CE9 F0                  391 	movx	@dptr,a
                            392 ;	genPointerSet
                            393 ;     genFarPointerSet
   3CEA 90 06 8C            394 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000e)
   3CED 74 65               395 	mov	a,#0x65
   3CEF F0                  396 	movx	@dptr,a
                            397 ;	genPointerSet
                            398 ;     genFarPointerSet
   3CF0 90 06 8D            399 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x000f)
   3CF3 74 49               400 	mov	a,#0x49
   3CF5 F0                  401 	movx	@dptr,a
                            402 ;	genPointerSet
                            403 ;     genFarPointerSet
   3CF6 90 06 8E            404 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0010)
   3CF9 74 6E               405 	mov	a,#0x6E
   3CFB F0                  406 	movx	@dptr,a
                            407 ;	genPointerSet
                            408 ;     genFarPointerSet
   3CFC 90 06 8F            409 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0011)
   3CFF 74 74               410 	mov	a,#0x74
   3D01 F0                  411 	movx	@dptr,a
                            412 ;	genPointerSet
                            413 ;     genFarPointerSet
   3D02 90 06 90            414 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0012)
   3D05 74 65               415 	mov	a,#0x65
   3D07 F0                  416 	movx	@dptr,a
                            417 ;	genPointerSet
                            418 ;     genFarPointerSet
   3D08 90 06 91            419 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0013)
   3D0B 74 72               420 	mov	a,#0x72
   3D0D F0                  421 	movx	@dptr,a
                            422 ;	genPointerSet
                            423 ;     genFarPointerSet
   3D0E 90 06 92            424 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0014)
   3D11 74 72               425 	mov	a,#0x72
   3D13 F0                  426 	movx	@dptr,a
                            427 ;	genPointerSet
                            428 ;     genFarPointerSet
   3D14 90 06 93            429 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0015)
   3D17 74 75               430 	mov	a,#0x75
   3D19 F0                  431 	movx	@dptr,a
                            432 ;	genPointerSet
                            433 ;     genFarPointerSet
   3D1A 90 06 94            434 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0016)
   3D1D 74 70               435 	mov	a,#0x70
   3D1F F0                  436 	movx	@dptr,a
                            437 ;	genPointerSet
                            438 ;     genFarPointerSet
   3D20 90 06 95            439 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0017)
   3D23 74 74               440 	mov	a,#0x74
   3D25 F0                  441 	movx	@dptr,a
                            442 ;	genPointerSet
                            443 ;     genFarPointerSet
   3D26 90 06 96            444 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0018)
   3D29 74 2F               445 	mov	a,#0x2F
   3D2B F0                  446 	movx	@dptr,a
                            447 ;	genPointerSet
                            448 ;     genFarPointerSet
   3D2C 90 06 97            449 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0019)
   3D2F 74 63               450 	mov	a,#0x63
   3D31 F0                  451 	movx	@dptr,a
                            452 ;	genPointerSet
                            453 ;     genFarPointerSet
   3D32 90 06 98            454 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001a)
   3D35 74 6F               455 	mov	a,#0x6F
   3D37 F0                  456 	movx	@dptr,a
                            457 ;	genPointerSet
                            458 ;     genFarPointerSet
   3D38 90 06 99            459 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001b)
   3D3B 74 72               460 	mov	a,#0x72
   3D3D F0                  461 	movx	@dptr,a
                            462 ;	genPointerSet
                            463 ;     genFarPointerSet
   3D3E 90 06 9A            464 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001c)
   3D41 74 65               465 	mov	a,#0x65
   3D43 F0                  466 	movx	@dptr,a
                            467 ;	genPointerSet
                            468 ;     genFarPointerSet
   3D44 90 06 9B            469 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001d)
   3D47 74 5F               470 	mov	a,#0x5F
   3D49 F0                  471 	movx	@dptr,a
                            472 ;	genPointerSet
                            473 ;     genFarPointerSet
   3D4A 90 06 9C            474 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001e)
   3D4D 74 69               475 	mov	a,#0x69
   3D4F F0                  476 	movx	@dptr,a
                            477 ;	genPointerSet
                            478 ;     genFarPointerSet
   3D50 90 06 9D            479 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x001f)
   3D53 74 72               480 	mov	a,#0x72
   3D55 F0                  481 	movx	@dptr,a
                            482 ;	genPointerSet
                            483 ;     genFarPointerSet
   3D56 90 06 9E            484 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0020)
   3D59 74 71               485 	mov	a,#0x71
   3D5B F0                  486 	movx	@dptr,a
                            487 ;	genPointerSet
                            488 ;     genFarPointerSet
   3D5C 90 06 9F            489 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0021)
   3D5F 74 5F               490 	mov	a,#0x5F
   3D61 F0                  491 	movx	@dptr,a
                            492 ;	genPointerSet
                            493 ;     genFarPointerSet
   3D62 90 06 A0            494 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0022)
   3D65 74 63               495 	mov	a,#0x63
   3D67 F0                  496 	movx	@dptr,a
                            497 ;	genPointerSet
                            498 ;     genFarPointerSet
   3D68 90 06 A1            499 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0023)
   3D6B 74 74               500 	mov	a,#0x74
   3D6D F0                  501 	movx	@dptr,a
                            502 ;	genPointerSet
                            503 ;     genFarPointerSet
   3D6E 90 06 A2            504 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0024)
   3D71 74 72               505 	mov	a,#0x72
   3D73 F0                  506 	movx	@dptr,a
                            507 ;	genPointerSet
                            508 ;     genFarPointerSet
   3D74 90 06 A3            509 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0025)
   3D77 74 6C               510 	mov	a,#0x6C
   3D79 F0                  511 	movx	@dptr,a
                            512 ;	genPointerSet
                            513 ;     genFarPointerSet
   3D7A 90 06 A4            514 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0026)
   3D7D 74 2E               515 	mov	a,#0x2E
   3D7F F0                  516 	movx	@dptr,a
                            517 ;	genPointerSet
                            518 ;     genFarPointerSet
   3D80 90 06 A5            519 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0027)
   3D83 74 63               520 	mov	a,#0x63
   3D85 F0                  521 	movx	@dptr,a
                            522 ;	genPointerSet
                            523 ;     genFarPointerSet
   3D86 90 06 A6            524 	mov	dptr,#(_CIC_set_irq_handler_file_name_3_3 + 0x0028)
   3D89 74 00               525 	mov	a,#0x00
   3D8B F0                  526 	movx	@dptr,a
                            527 ;	genAssign
   3D8C 90 00 8C            528 	mov	dptr,#_HAL_assert_fail_PARM_2
   3D8F 74 49               529 	mov	a,#0x49
   3D91 F0                  530 	movx	@dptr,a
   3D92 E4                  531 	clr	a
   3D93 A3                  532 	inc	dptr
   3D94 F0                  533 	movx	@dptr,a
   3D95 A3                  534 	inc	dptr
   3D96 F0                  535 	movx	@dptr,a
   3D97 A3                  536 	inc	dptr
   3D98 F0                  537 	movx	@dptr,a
                            538 ;	genCall
   3D99 75 82 7E            539 	mov	dpl,#_CIC_set_irq_handler_file_name_3_3
   3D9C 75 83 06            540 	mov	dph,#(_CIC_set_irq_handler_file_name_3_3 >> 8)
   3D9F 75 F0 00            541 	mov	b,#0x00
   3DA2 12 05 F6            542 	lcall	_HAL_assert_fail
   3DA5                     543 00104$:
                    01BF    544 	C$core_irq_ctrl.c$75$1$1 ==.
                            545 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:75: g_irq_handler_table[irq_number] = handler;
                            546 ;	genAssign
   3DA5 90 06 7D            547 	mov	dptr,#_CIC_set_irq_handler_irq_number_1_1
   3DA8 E0                  548 	movx	a,@dptr
   3DA9 FA                  549 	mov	r2,a
                            550 ;	genLeftShift
                            551 ;	genLeftShiftLiteral
                            552 ;	genlshOne
   3DAA EA                  553 	mov	a,r2
   3DAB 25 E0               554 	add	a,acc
   3DAD FA                  555 	mov	r2,a
                            556 ;	genPlus
   3DAE E5 02               557 	mov	a,ar2
   3DB0 24 38               558 	add	a,#_g_irq_handler_table
   3DB2 FA                  559 	mov	r2,a
   3DB3 74 00               560 	mov	a,#0x00
   3DB5 34 06               561 	addc	a,#(_g_irq_handler_table >> 8)
   3DB7 FB                  562 	mov	r3,a
                            563 ;	genAssign
   3DB8 90 06 7B            564 	mov	dptr,#_CIC_set_irq_handler_PARM_2
   3DBB E0                  565 	movx	a,@dptr
   3DBC FC                  566 	mov	r4,a
   3DBD A3                  567 	inc	dptr
   3DBE E0                  568 	movx	a,@dptr
   3DBF FD                  569 	mov	r5,a
                            570 ;	genPointerSet
                            571 ;     genFarPointerSet
   3DC0 8A 82               572 	mov	dpl,r2
   3DC2 8B 83               573 	mov	dph,r3
   3DC4 EC                  574 	mov	a,r4
   3DC5 F0                  575 	movx	@dptr,a
   3DC6 A3                  576 	inc	dptr
   3DC7 ED                  577 	mov	a,r5
   3DC8 F0                  578 	movx	@dptr,a
   3DC9                     579 00106$:
                    01E3    580 	C$core_irq_ctrl.c$76$1$1 ==.
                    01E3    581 	XG$CIC_set_irq_handler$0$0 ==.
   3DC9 22                  582 	ret
                            583 ;------------------------------------------------------------
                            584 ;Allocation info for local variables in function 'CIC_get_irq_status'
                            585 ;------------------------------------------------------------
                            586 ;irq_status                Allocated with name '_CIC_get_irq_status_irq_status_1_1'
                            587 ;------------------------------------------------------------
                    01E4    588 	G$CIC_get_irq_status$0$0 ==.
                    01E4    589 	C$core_irq_ctrl.c$83$1$1 ==.
                            590 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:83: CIC_get_irq_status
                            591 ;	-----------------------------------------
                            592 ;	 function CIC_get_irq_status
                            593 ;	-----------------------------------------
   3DCA                     594 _CIC_get_irq_status:
                    01E4    595 	C$core_irq_ctrl.c$90$1$1 ==.
                            596 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:90: irq_status = HAL_get_32bit_reg( g_cic_base_addr, IRQStatus );
                            597 ;	genAssign
   3DCA 90 09 89            598 	mov	dptr,#_g_cic_base_addr
   3DCD E0                  599 	movx	a,@dptr
   3DCE FA                  600 	mov	r2,a
   3DCF A3                  601 	inc	dptr
   3DD0 E0                  602 	movx	a,@dptr
   3DD1 FB                  603 	mov	r3,a
                            604 ;	genPlus
                            605 ;	genPlusIncr
   3DD2 74 2C               606 	mov	a,#0x2C
   3DD4 25 02               607 	add	a,ar2
   3DD6 FA                  608 	mov	r2,a
   3DD7 74 00               609 	mov	a,#0x00
   3DD9 35 03               610 	addc	a,ar3
   3DDB FB                  611 	mov	r3,a
                            612 ;	genCall
   3DDC 8A 82               613 	mov	dpl,r2
   3DDE 8B 83               614 	mov	dph,r3
   3DE0 12 06 56            615 	lcall	_HW_get_32bit_reg
   3DE3 AA 82               616 	mov	r2,dpl
   3DE5 AB 83               617 	mov	r3,dph
   3DE7 AC F0               618 	mov	r4,b
   3DE9 FD                  619 	mov	r5,a
                    0204    620 	C$core_irq_ctrl.c$92$1$1 ==.
                            621 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:92: return irq_status;
                            622 ;	genRet
   3DEA 8A 82               623 	mov	dpl,r2
   3DEC 8B 83               624 	mov	dph,r3
   3DEE 8C F0               625 	mov	b,r4
   3DF0 ED                  626 	mov	a,r5
   3DF1                     627 00101$:
                    020B    628 	C$core_irq_ctrl.c$93$1$1 ==.
                    020B    629 	XG$CIC_get_irq_status$0$0 ==.
   3DF1 22                  630 	ret
                            631 ;------------------------------------------------------------
                            632 ;Allocation info for local variables in function 'CIC_enable_irq'
                            633 ;------------------------------------------------------------
                            634 ;irq_number                Allocated with name '_CIC_enable_irq_irq_number_1_1'
                            635 ;enabled_irqs              Allocated with name '_CIC_enable_irq_enabled_irqs_1_1'
                            636 ;file_name                 Allocated with name '_CIC_enable_irq_file_name_3_3'
                            637 ;------------------------------------------------------------
                    020C    638 	G$CIC_enable_irq$0$0 ==.
                    020C    639 	C$core_irq_ctrl.c$100$1$1 ==.
                            640 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:100: CIC_enable_irq
                            641 ;	-----------------------------------------
                            642 ;	 function CIC_enable_irq
                            643 ;	-----------------------------------------
   3DF2                     644 _CIC_enable_irq:
                            645 ;	genReceive
   3DF2 E5 82               646 	mov	a,dpl
   3DF4 90 06 A7            647 	mov	dptr,#_CIC_enable_irq_irq_number_1_1
   3DF7 F0                  648 	movx	@dptr,a
                    0212    649 	C$core_irq_ctrl.c$107$2$2 ==.
                            650 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:107: HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
                            651 ;	genAssign
   3DF8 90 06 A7            652 	mov	dptr,#_CIC_enable_irq_irq_number_1_1
   3DFB E0                  653 	movx	a,@dptr
   3DFC FA                  654 	mov	r2,a
                            655 ;	genCmpLt
                            656 ;	genCmp
   3DFD BA 20 00            657 	cjne	r2,#0x20,00109$
   3E00                     658 00109$:
                            659 ;	genIfxJump
   3E00 50 03               660 	jnc	00110$
   3E02 02 3F 14            661 	ljmp	00104$
   3E05                     662 00110$:
                            663 ;	genPointerSet
                            664 ;     genFarPointerSet
   3E05 90 06 A8            665 	mov	dptr,#_CIC_enable_irq_file_name_3_3
   3E08 74 2E               666 	mov	a,#0x2E
   3E0A F0                  667 	movx	@dptr,a
                            668 ;	genPointerSet
                            669 ;     genFarPointerSet
   3E0B 90 06 A9            670 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0001)
   3E0E 74 2E               671 	mov	a,#0x2E
   3E10 F0                  672 	movx	@dptr,a
                            673 ;	genPointerSet
                            674 ;     genFarPointerSet
   3E11 90 06 AA            675 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0002)
   3E14 74 2F               676 	mov	a,#0x2F
   3E16 F0                  677 	movx	@dptr,a
                            678 ;	genPointerSet
                            679 ;     genFarPointerSet
   3E17 90 06 AB            680 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0003)
   3E1A 74 64               681 	mov	a,#0x64
   3E1C F0                  682 	movx	@dptr,a
                            683 ;	genPointerSet
                            684 ;     genFarPointerSet
   3E1D 90 06 AC            685 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0004)
   3E20 74 72               686 	mov	a,#0x72
   3E22 F0                  687 	movx	@dptr,a
                            688 ;	genPointerSet
                            689 ;     genFarPointerSet
   3E23 90 06 AD            690 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0005)
   3E26 74 69               691 	mov	a,#0x69
   3E28 F0                  692 	movx	@dptr,a
                            693 ;	genPointerSet
                            694 ;     genFarPointerSet
   3E29 90 06 AE            695 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0006)
   3E2C 74 76               696 	mov	a,#0x76
   3E2E F0                  697 	movx	@dptr,a
                            698 ;	genPointerSet
                            699 ;     genFarPointerSet
   3E2F 90 06 AF            700 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0007)
   3E32 74 65               701 	mov	a,#0x65
   3E34 F0                  702 	movx	@dptr,a
                            703 ;	genPointerSet
                            704 ;     genFarPointerSet
   3E35 90 06 B0            705 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0008)
   3E38 74 72               706 	mov	a,#0x72
   3E3A F0                  707 	movx	@dptr,a
                            708 ;	genPointerSet
                            709 ;     genFarPointerSet
   3E3B 90 06 B1            710 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0009)
   3E3E 74 73               711 	mov	a,#0x73
   3E40 F0                  712 	movx	@dptr,a
                            713 ;	genPointerSet
                            714 ;     genFarPointerSet
   3E41 90 06 B2            715 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000a)
   3E44 74 2F               716 	mov	a,#0x2F
   3E46 F0                  717 	movx	@dptr,a
                            718 ;	genPointerSet
                            719 ;     genFarPointerSet
   3E47 90 06 B3            720 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000b)
   3E4A 74 43               721 	mov	a,#0x43
   3E4C F0                  722 	movx	@dptr,a
                            723 ;	genPointerSet
                            724 ;     genFarPointerSet
   3E4D 90 06 B4            725 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000c)
   3E50 74 6F               726 	mov	a,#0x6F
   3E52 F0                  727 	movx	@dptr,a
                            728 ;	genPointerSet
                            729 ;     genFarPointerSet
   3E53 90 06 B5            730 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000d)
   3E56 74 72               731 	mov	a,#0x72
   3E58 F0                  732 	movx	@dptr,a
                            733 ;	genPointerSet
                            734 ;     genFarPointerSet
   3E59 90 06 B6            735 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000e)
   3E5C 74 65               736 	mov	a,#0x65
   3E5E F0                  737 	movx	@dptr,a
                            738 ;	genPointerSet
                            739 ;     genFarPointerSet
   3E5F 90 06 B7            740 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x000f)
   3E62 74 49               741 	mov	a,#0x49
   3E64 F0                  742 	movx	@dptr,a
                            743 ;	genPointerSet
                            744 ;     genFarPointerSet
   3E65 90 06 B8            745 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0010)
   3E68 74 6E               746 	mov	a,#0x6E
   3E6A F0                  747 	movx	@dptr,a
                            748 ;	genPointerSet
                            749 ;     genFarPointerSet
   3E6B 90 06 B9            750 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0011)
   3E6E 74 74               751 	mov	a,#0x74
   3E70 F0                  752 	movx	@dptr,a
                            753 ;	genPointerSet
                            754 ;     genFarPointerSet
   3E71 90 06 BA            755 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0012)
   3E74 74 65               756 	mov	a,#0x65
   3E76 F0                  757 	movx	@dptr,a
                            758 ;	genPointerSet
                            759 ;     genFarPointerSet
   3E77 90 06 BB            760 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0013)
   3E7A 74 72               761 	mov	a,#0x72
   3E7C F0                  762 	movx	@dptr,a
                            763 ;	genPointerSet
                            764 ;     genFarPointerSet
   3E7D 90 06 BC            765 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0014)
   3E80 74 72               766 	mov	a,#0x72
   3E82 F0                  767 	movx	@dptr,a
                            768 ;	genPointerSet
                            769 ;     genFarPointerSet
   3E83 90 06 BD            770 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0015)
   3E86 74 75               771 	mov	a,#0x75
   3E88 F0                  772 	movx	@dptr,a
                            773 ;	genPointerSet
                            774 ;     genFarPointerSet
   3E89 90 06 BE            775 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0016)
   3E8C 74 70               776 	mov	a,#0x70
   3E8E F0                  777 	movx	@dptr,a
                            778 ;	genPointerSet
                            779 ;     genFarPointerSet
   3E8F 90 06 BF            780 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0017)
   3E92 74 74               781 	mov	a,#0x74
   3E94 F0                  782 	movx	@dptr,a
                            783 ;	genPointerSet
                            784 ;     genFarPointerSet
   3E95 90 06 C0            785 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0018)
   3E98 74 2F               786 	mov	a,#0x2F
   3E9A F0                  787 	movx	@dptr,a
                            788 ;	genPointerSet
                            789 ;     genFarPointerSet
   3E9B 90 06 C1            790 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0019)
   3E9E 74 63               791 	mov	a,#0x63
   3EA0 F0                  792 	movx	@dptr,a
                            793 ;	genPointerSet
                            794 ;     genFarPointerSet
   3EA1 90 06 C2            795 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001a)
   3EA4 74 6F               796 	mov	a,#0x6F
   3EA6 F0                  797 	movx	@dptr,a
                            798 ;	genPointerSet
                            799 ;     genFarPointerSet
   3EA7 90 06 C3            800 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001b)
   3EAA 74 72               801 	mov	a,#0x72
   3EAC F0                  802 	movx	@dptr,a
                            803 ;	genPointerSet
                            804 ;     genFarPointerSet
   3EAD 90 06 C4            805 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001c)
   3EB0 74 65               806 	mov	a,#0x65
   3EB2 F0                  807 	movx	@dptr,a
                            808 ;	genPointerSet
                            809 ;     genFarPointerSet
   3EB3 90 06 C5            810 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001d)
   3EB6 74 5F               811 	mov	a,#0x5F
   3EB8 F0                  812 	movx	@dptr,a
                            813 ;	genPointerSet
                            814 ;     genFarPointerSet
   3EB9 90 06 C6            815 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001e)
   3EBC 74 69               816 	mov	a,#0x69
   3EBE F0                  817 	movx	@dptr,a
                            818 ;	genPointerSet
                            819 ;     genFarPointerSet
   3EBF 90 06 C7            820 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x001f)
   3EC2 74 72               821 	mov	a,#0x72
   3EC4 F0                  822 	movx	@dptr,a
                            823 ;	genPointerSet
                            824 ;     genFarPointerSet
   3EC5 90 06 C8            825 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0020)
   3EC8 74 71               826 	mov	a,#0x71
   3ECA F0                  827 	movx	@dptr,a
                            828 ;	genPointerSet
                            829 ;     genFarPointerSet
   3ECB 90 06 C9            830 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0021)
   3ECE 74 5F               831 	mov	a,#0x5F
   3ED0 F0                  832 	movx	@dptr,a
                            833 ;	genPointerSet
                            834 ;     genFarPointerSet
   3ED1 90 06 CA            835 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0022)
   3ED4 74 63               836 	mov	a,#0x63
   3ED6 F0                  837 	movx	@dptr,a
                            838 ;	genPointerSet
                            839 ;     genFarPointerSet
   3ED7 90 06 CB            840 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0023)
   3EDA 74 74               841 	mov	a,#0x74
   3EDC F0                  842 	movx	@dptr,a
                            843 ;	genPointerSet
                            844 ;     genFarPointerSet
   3EDD 90 06 CC            845 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0024)
   3EE0 74 72               846 	mov	a,#0x72
   3EE2 F0                  847 	movx	@dptr,a
                            848 ;	genPointerSet
                            849 ;     genFarPointerSet
   3EE3 90 06 CD            850 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0025)
   3EE6 74 6C               851 	mov	a,#0x6C
   3EE8 F0                  852 	movx	@dptr,a
                            853 ;	genPointerSet
                            854 ;     genFarPointerSet
   3EE9 90 06 CE            855 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0026)
   3EEC 74 2E               856 	mov	a,#0x2E
   3EEE F0                  857 	movx	@dptr,a
                            858 ;	genPointerSet
                            859 ;     genFarPointerSet
   3EEF 90 06 CF            860 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0027)
   3EF2 74 63               861 	mov	a,#0x63
   3EF4 F0                  862 	movx	@dptr,a
                            863 ;	genPointerSet
                            864 ;     genFarPointerSet
   3EF5 90 06 D0            865 	mov	dptr,#(_CIC_enable_irq_file_name_3_3 + 0x0028)
   3EF8 74 00               866 	mov	a,#0x00
   3EFA F0                  867 	movx	@dptr,a
                            868 ;	genAssign
   3EFB 90 00 8C            869 	mov	dptr,#_HAL_assert_fail_PARM_2
   3EFE 74 6B               870 	mov	a,#0x6B
   3F00 F0                  871 	movx	@dptr,a
   3F01 E4                  872 	clr	a
   3F02 A3                  873 	inc	dptr
   3F03 F0                  874 	movx	@dptr,a
   3F04 A3                  875 	inc	dptr
   3F05 F0                  876 	movx	@dptr,a
   3F06 A3                  877 	inc	dptr
   3F07 F0                  878 	movx	@dptr,a
                            879 ;	genCall
   3F08 75 82 A8            880 	mov	dpl,#_CIC_enable_irq_file_name_3_3
   3F0B 75 83 06            881 	mov	dph,#(_CIC_enable_irq_file_name_3_3 >> 8)
   3F0E 75 F0 00            882 	mov	b,#0x00
   3F11 12 05 F6            883 	lcall	_HAL_assert_fail
   3F14                     884 00104$:
                    032E    885 	C$core_irq_ctrl.c$109$1$1 ==.
                            886 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:109: enabled_irqs = HAL_get_32bit_reg( g_cic_base_addr, IRQEnable );
                            887 ;	genAssign
   3F14 90 09 89            888 	mov	dptr,#_g_cic_base_addr
   3F17 E0                  889 	movx	a,@dptr
   3F18 FA                  890 	mov	r2,a
   3F19 A3                  891 	inc	dptr
   3F1A E0                  892 	movx	a,@dptr
   3F1B FB                  893 	mov	r3,a
                            894 ;	genPlus
                            895 ;	genPlusIncr
   3F1C 74 20               896 	mov	a,#0x20
   3F1E 25 02               897 	add	a,ar2
   3F20 FA                  898 	mov	r2,a
   3F21 74 00               899 	mov	a,#0x00
   3F23 35 03               900 	addc	a,ar3
   3F25 FB                  901 	mov	r3,a
                            902 ;	genCall
   3F26 8A 82               903 	mov	dpl,r2
   3F28 8B 83               904 	mov	dph,r3
   3F2A 12 06 56            905 	lcall	_HW_get_32bit_reg
   3F2D AA 82               906 	mov	r2,dpl
   3F2F AB 83               907 	mov	r3,dph
   3F31 AC F0               908 	mov	r4,b
   3F33 FD                  909 	mov	r5,a
                    034E    910 	C$core_irq_ctrl.c$110$1$1 ==.
                            911 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:110: enabled_irqs |= 1 << irq_number;
                            912 ;	genAssign
   3F34 90 06 A7            913 	mov	dptr,#_CIC_enable_irq_irq_number_1_1
   3F37 E0                  914 	movx	a,@dptr
   3F38 FE                  915 	mov	r6,a
                            916 ;	genLeftShift
   3F39 8E F0               917 	mov	b,r6
   3F3B 05 F0               918 	inc	b
   3F3D 7E 01               919 	mov	r6,#0x01
   3F3F 7F 00               920 	mov	r7,#0x00
   3F41 80 07               921 	sjmp	00112$
   3F43                     922 00111$:
   3F43 EE                  923 	mov	a,r6
   3F44 25 E0               924 	add	a,acc
   3F46 FE                  925 	mov	r6,a
   3F47 EF                  926 	mov	a,r7
   3F48 33                  927 	rlc	a
   3F49 FF                  928 	mov	r7,a
   3F4A                     929 00112$:
   3F4A D5 F0 F6            930 	djnz	b,00111$
                            931 ;	genCast
   3F4D EF                  932 	mov	a,r7
   3F4E 33                  933 	rlc	a
   3F4F 95 E0               934 	subb	a,acc
   3F51 F8                  935 	mov	r0,a
   3F52 F9                  936 	mov	r1,a
                            937 ;	genOr
   3F53 EE                  938 	mov	a,r6
   3F54 42 02               939 	orl	ar2,a
   3F56 EF                  940 	mov	a,r7
   3F57 42 03               941 	orl	ar3,a
   3F59 E8                  942 	mov	a,r0
   3F5A 42 04               943 	orl	ar4,a
   3F5C E9                  944 	mov	a,r1
   3F5D 42 05               945 	orl	ar5,a
                    0379    946 	C$core_irq_ctrl.c$111$1$1 ==.
                            947 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:111: HAL_set_32bit_reg( g_cic_base_addr, IRQEnable, enabled_irqs );
                            948 ;	genAssign
   3F5F 90 09 89            949 	mov	dptr,#_g_cic_base_addr
   3F62 E0                  950 	movx	a,@dptr
   3F63 FE                  951 	mov	r6,a
   3F64 A3                  952 	inc	dptr
   3F65 E0                  953 	movx	a,@dptr
   3F66 FF                  954 	mov	r7,a
                            955 ;	genPlus
                            956 ;	genPlusIncr
   3F67 74 20               957 	mov	a,#0x20
   3F69 25 06               958 	add	a,ar6
   3F6B FE                  959 	mov	r6,a
   3F6C 74 00               960 	mov	a,#0x00
   3F6E 35 07               961 	addc	a,ar7
   3F70 FF                  962 	mov	r7,a
                            963 ;	genAssign
   3F71 90 00 AA            964 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   3F74 EA                  965 	mov	a,r2
   3F75 F0                  966 	movx	@dptr,a
   3F76 A3                  967 	inc	dptr
   3F77 EB                  968 	mov	a,r3
   3F78 F0                  969 	movx	@dptr,a
   3F79 A3                  970 	inc	dptr
   3F7A EC                  971 	mov	a,r4
   3F7B F0                  972 	movx	@dptr,a
   3F7C A3                  973 	inc	dptr
   3F7D ED                  974 	mov	a,r5
   3F7E F0                  975 	movx	@dptr,a
                            976 ;	genCall
   3F7F 8E 82               977 	mov	dpl,r6
   3F81 8F 83               978 	mov	dph,r7
   3F83 12 06 62            979 	lcall	_HW_set_32bit_reg
   3F86                     980 00106$:
                    03A0    981 	C$core_irq_ctrl.c$112$1$1 ==.
                    03A0    982 	XG$CIC_enable_irq$0$0 ==.
   3F86 22                  983 	ret
                            984 ;------------------------------------------------------------
                            985 ;Allocation info for local variables in function 'CIC_disable_irq'
                            986 ;------------------------------------------------------------
                            987 ;irq_number                Allocated with name '_CIC_disable_irq_irq_number_1_1'
                            988 ;clear_bit                 Allocated with name '_CIC_disable_irq_clear_bit_1_1'
                            989 ;file_name                 Allocated with name '_CIC_disable_irq_file_name_3_3'
                            990 ;------------------------------------------------------------
                    03A1    991 	G$CIC_disable_irq$0$0 ==.
                    03A1    992 	C$core_irq_ctrl.c$119$1$1 ==.
                            993 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:119: CIC_disable_irq
                            994 ;	-----------------------------------------
                            995 ;	 function CIC_disable_irq
                            996 ;	-----------------------------------------
   3F87                     997 _CIC_disable_irq:
                            998 ;	genReceive
   3F87 E5 82               999 	mov	a,dpl
   3F89 90 06 D1           1000 	mov	dptr,#_CIC_disable_irq_irq_number_1_1
   3F8C F0                 1001 	movx	@dptr,a
                    03A7   1002 	C$core_irq_ctrl.c$126$2$2 ==.
                           1003 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:126: HAL_ASSERT( irq_number < CIC_NB_IRQ_SOURCES )
                           1004 ;	genAssign
   3F8D 90 06 D1           1005 	mov	dptr,#_CIC_disable_irq_irq_number_1_1
   3F90 E0                 1006 	movx	a,@dptr
   3F91 FA                 1007 	mov	r2,a
                           1008 ;	genCmpLt
                           1009 ;	genCmp
   3F92 BA 20 00           1010 	cjne	r2,#0x20,00109$
   3F95                    1011 00109$:
                           1012 ;	genIfxJump
   3F95 50 03              1013 	jnc	00110$
   3F97 02 40 A9           1014 	ljmp	00104$
   3F9A                    1015 00110$:
                           1016 ;	genPointerSet
                           1017 ;     genFarPointerSet
   3F9A 90 06 D2           1018 	mov	dptr,#_CIC_disable_irq_file_name_3_3
   3F9D 74 2E              1019 	mov	a,#0x2E
   3F9F F0                 1020 	movx	@dptr,a
                           1021 ;	genPointerSet
                           1022 ;     genFarPointerSet
   3FA0 90 06 D3           1023 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0001)
   3FA3 74 2E              1024 	mov	a,#0x2E
   3FA5 F0                 1025 	movx	@dptr,a
                           1026 ;	genPointerSet
                           1027 ;     genFarPointerSet
   3FA6 90 06 D4           1028 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0002)
   3FA9 74 2F              1029 	mov	a,#0x2F
   3FAB F0                 1030 	movx	@dptr,a
                           1031 ;	genPointerSet
                           1032 ;     genFarPointerSet
   3FAC 90 06 D5           1033 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0003)
   3FAF 74 64              1034 	mov	a,#0x64
   3FB1 F0                 1035 	movx	@dptr,a
                           1036 ;	genPointerSet
                           1037 ;     genFarPointerSet
   3FB2 90 06 D6           1038 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0004)
   3FB5 74 72              1039 	mov	a,#0x72
   3FB7 F0                 1040 	movx	@dptr,a
                           1041 ;	genPointerSet
                           1042 ;     genFarPointerSet
   3FB8 90 06 D7           1043 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0005)
   3FBB 74 69              1044 	mov	a,#0x69
   3FBD F0                 1045 	movx	@dptr,a
                           1046 ;	genPointerSet
                           1047 ;     genFarPointerSet
   3FBE 90 06 D8           1048 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0006)
   3FC1 74 76              1049 	mov	a,#0x76
   3FC3 F0                 1050 	movx	@dptr,a
                           1051 ;	genPointerSet
                           1052 ;     genFarPointerSet
   3FC4 90 06 D9           1053 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0007)
   3FC7 74 65              1054 	mov	a,#0x65
   3FC9 F0                 1055 	movx	@dptr,a
                           1056 ;	genPointerSet
                           1057 ;     genFarPointerSet
   3FCA 90 06 DA           1058 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0008)
   3FCD 74 72              1059 	mov	a,#0x72
   3FCF F0                 1060 	movx	@dptr,a
                           1061 ;	genPointerSet
                           1062 ;     genFarPointerSet
   3FD0 90 06 DB           1063 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0009)
   3FD3 74 73              1064 	mov	a,#0x73
   3FD5 F0                 1065 	movx	@dptr,a
                           1066 ;	genPointerSet
                           1067 ;     genFarPointerSet
   3FD6 90 06 DC           1068 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000a)
   3FD9 74 2F              1069 	mov	a,#0x2F
   3FDB F0                 1070 	movx	@dptr,a
                           1071 ;	genPointerSet
                           1072 ;     genFarPointerSet
   3FDC 90 06 DD           1073 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000b)
   3FDF 74 43              1074 	mov	a,#0x43
   3FE1 F0                 1075 	movx	@dptr,a
                           1076 ;	genPointerSet
                           1077 ;     genFarPointerSet
   3FE2 90 06 DE           1078 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000c)
   3FE5 74 6F              1079 	mov	a,#0x6F
   3FE7 F0                 1080 	movx	@dptr,a
                           1081 ;	genPointerSet
                           1082 ;     genFarPointerSet
   3FE8 90 06 DF           1083 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000d)
   3FEB 74 72              1084 	mov	a,#0x72
   3FED F0                 1085 	movx	@dptr,a
                           1086 ;	genPointerSet
                           1087 ;     genFarPointerSet
   3FEE 90 06 E0           1088 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000e)
   3FF1 74 65              1089 	mov	a,#0x65
   3FF3 F0                 1090 	movx	@dptr,a
                           1091 ;	genPointerSet
                           1092 ;     genFarPointerSet
   3FF4 90 06 E1           1093 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x000f)
   3FF7 74 49              1094 	mov	a,#0x49
   3FF9 F0                 1095 	movx	@dptr,a
                           1096 ;	genPointerSet
                           1097 ;     genFarPointerSet
   3FFA 90 06 E2           1098 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0010)
   3FFD 74 6E              1099 	mov	a,#0x6E
   3FFF F0                 1100 	movx	@dptr,a
                           1101 ;	genPointerSet
                           1102 ;     genFarPointerSet
   4000 90 06 E3           1103 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0011)
   4003 74 74              1104 	mov	a,#0x74
   4005 F0                 1105 	movx	@dptr,a
                           1106 ;	genPointerSet
                           1107 ;     genFarPointerSet
   4006 90 06 E4           1108 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0012)
   4009 74 65              1109 	mov	a,#0x65
   400B F0                 1110 	movx	@dptr,a
                           1111 ;	genPointerSet
                           1112 ;     genFarPointerSet
   400C 90 06 E5           1113 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0013)
   400F 74 72              1114 	mov	a,#0x72
   4011 F0                 1115 	movx	@dptr,a
                           1116 ;	genPointerSet
                           1117 ;     genFarPointerSet
   4012 90 06 E6           1118 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0014)
   4015 74 72              1119 	mov	a,#0x72
   4017 F0                 1120 	movx	@dptr,a
                           1121 ;	genPointerSet
                           1122 ;     genFarPointerSet
   4018 90 06 E7           1123 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0015)
   401B 74 75              1124 	mov	a,#0x75
   401D F0                 1125 	movx	@dptr,a
                           1126 ;	genPointerSet
                           1127 ;     genFarPointerSet
   401E 90 06 E8           1128 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0016)
   4021 74 70              1129 	mov	a,#0x70
   4023 F0                 1130 	movx	@dptr,a
                           1131 ;	genPointerSet
                           1132 ;     genFarPointerSet
   4024 90 06 E9           1133 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0017)
   4027 74 74              1134 	mov	a,#0x74
   4029 F0                 1135 	movx	@dptr,a
                           1136 ;	genPointerSet
                           1137 ;     genFarPointerSet
   402A 90 06 EA           1138 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0018)
   402D 74 2F              1139 	mov	a,#0x2F
   402F F0                 1140 	movx	@dptr,a
                           1141 ;	genPointerSet
                           1142 ;     genFarPointerSet
   4030 90 06 EB           1143 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0019)
   4033 74 63              1144 	mov	a,#0x63
   4035 F0                 1145 	movx	@dptr,a
                           1146 ;	genPointerSet
                           1147 ;     genFarPointerSet
   4036 90 06 EC           1148 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001a)
   4039 74 6F              1149 	mov	a,#0x6F
   403B F0                 1150 	movx	@dptr,a
                           1151 ;	genPointerSet
                           1152 ;     genFarPointerSet
   403C 90 06 ED           1153 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001b)
   403F 74 72              1154 	mov	a,#0x72
   4041 F0                 1155 	movx	@dptr,a
                           1156 ;	genPointerSet
                           1157 ;     genFarPointerSet
   4042 90 06 EE           1158 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001c)
   4045 74 65              1159 	mov	a,#0x65
   4047 F0                 1160 	movx	@dptr,a
                           1161 ;	genPointerSet
                           1162 ;     genFarPointerSet
   4048 90 06 EF           1163 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001d)
   404B 74 5F              1164 	mov	a,#0x5F
   404D F0                 1165 	movx	@dptr,a
                           1166 ;	genPointerSet
                           1167 ;     genFarPointerSet
   404E 90 06 F0           1168 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001e)
   4051 74 69              1169 	mov	a,#0x69
   4053 F0                 1170 	movx	@dptr,a
                           1171 ;	genPointerSet
                           1172 ;     genFarPointerSet
   4054 90 06 F1           1173 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x001f)
   4057 74 72              1174 	mov	a,#0x72
   4059 F0                 1175 	movx	@dptr,a
                           1176 ;	genPointerSet
                           1177 ;     genFarPointerSet
   405A 90 06 F2           1178 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0020)
   405D 74 71              1179 	mov	a,#0x71
   405F F0                 1180 	movx	@dptr,a
                           1181 ;	genPointerSet
                           1182 ;     genFarPointerSet
   4060 90 06 F3           1183 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0021)
   4063 74 5F              1184 	mov	a,#0x5F
   4065 F0                 1185 	movx	@dptr,a
                           1186 ;	genPointerSet
                           1187 ;     genFarPointerSet
   4066 90 06 F4           1188 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0022)
   4069 74 63              1189 	mov	a,#0x63
   406B F0                 1190 	movx	@dptr,a
                           1191 ;	genPointerSet
                           1192 ;     genFarPointerSet
   406C 90 06 F5           1193 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0023)
   406F 74 74              1194 	mov	a,#0x74
   4071 F0                 1195 	movx	@dptr,a
                           1196 ;	genPointerSet
                           1197 ;     genFarPointerSet
   4072 90 06 F6           1198 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0024)
   4075 74 72              1199 	mov	a,#0x72
   4077 F0                 1200 	movx	@dptr,a
                           1201 ;	genPointerSet
                           1202 ;     genFarPointerSet
   4078 90 06 F7           1203 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0025)
   407B 74 6C              1204 	mov	a,#0x6C
   407D F0                 1205 	movx	@dptr,a
                           1206 ;	genPointerSet
                           1207 ;     genFarPointerSet
   407E 90 06 F8           1208 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0026)
   4081 74 2E              1209 	mov	a,#0x2E
   4083 F0                 1210 	movx	@dptr,a
                           1211 ;	genPointerSet
                           1212 ;     genFarPointerSet
   4084 90 06 F9           1213 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0027)
   4087 74 63              1214 	mov	a,#0x63
   4089 F0                 1215 	movx	@dptr,a
                           1216 ;	genPointerSet
                           1217 ;     genFarPointerSet
   408A 90 06 FA           1218 	mov	dptr,#(_CIC_disable_irq_file_name_3_3 + 0x0028)
   408D 74 00              1219 	mov	a,#0x00
   408F F0                 1220 	movx	@dptr,a
                           1221 ;	genAssign
   4090 90 00 8C           1222 	mov	dptr,#_HAL_assert_fail_PARM_2
   4093 74 7E              1223 	mov	a,#0x7E
   4095 F0                 1224 	movx	@dptr,a
   4096 E4                 1225 	clr	a
   4097 A3                 1226 	inc	dptr
   4098 F0                 1227 	movx	@dptr,a
   4099 A3                 1228 	inc	dptr
   409A F0                 1229 	movx	@dptr,a
   409B A3                 1230 	inc	dptr
   409C F0                 1231 	movx	@dptr,a
                           1232 ;	genCall
   409D 75 82 D2           1233 	mov	dpl,#_CIC_disable_irq_file_name_3_3
   40A0 75 83 06           1234 	mov	dph,#(_CIC_disable_irq_file_name_3_3 >> 8)
   40A3 75 F0 00           1235 	mov	b,#0x00
   40A6 12 05 F6           1236 	lcall	_HAL_assert_fail
   40A9                    1237 00104$:
                    04C3   1238 	C$core_irq_ctrl.c$128$1$1 ==.
                           1239 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:128: clear_bit = 1 << irq_number;
                           1240 ;	genAssign
   40A9 90 06 D1           1241 	mov	dptr,#_CIC_disable_irq_irq_number_1_1
   40AC E0                 1242 	movx	a,@dptr
   40AD FA                 1243 	mov	r2,a
                           1244 ;	genLeftShift
   40AE 8A F0              1245 	mov	b,r2
   40B0 05 F0              1246 	inc	b
   40B2 7A 01              1247 	mov	r2,#0x01
   40B4 7B 00              1248 	mov	r3,#0x00
   40B6 80 07              1249 	sjmp	00112$
   40B8                    1250 00111$:
   40B8 EA                 1251 	mov	a,r2
   40B9 25 E0              1252 	add	a,acc
   40BB FA                 1253 	mov	r2,a
   40BC EB                 1254 	mov	a,r3
   40BD 33                 1255 	rlc	a
   40BE FB                 1256 	mov	r3,a
   40BF                    1257 00112$:
   40BF D5 F0 F6           1258 	djnz	b,00111$
                           1259 ;	genCast
   40C2 EB                 1260 	mov	a,r3
   40C3 33                 1261 	rlc	a
   40C4 95 E0              1262 	subb	a,acc
   40C6 FC                 1263 	mov	r4,a
   40C7 FD                 1264 	mov	r5,a
                    04E2   1265 	C$core_irq_ctrl.c$129$1$1 ==.
                           1266 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:129: HAL_set_32bit_reg( g_cic_base_addr, IRQEnableClear, clear_bit );
                           1267 ;	genAssign
   40C8 90 09 89           1268 	mov	dptr,#_g_cic_base_addr
   40CB E0                 1269 	movx	a,@dptr
   40CC FE                 1270 	mov	r6,a
   40CD A3                 1271 	inc	dptr
   40CE E0                 1272 	movx	a,@dptr
   40CF FF                 1273 	mov	r7,a
                           1274 ;	genPlus
                           1275 ;	genPlusIncr
   40D0 74 24              1276 	mov	a,#0x24
   40D2 25 06              1277 	add	a,ar6
   40D4 FE                 1278 	mov	r6,a
   40D5 74 00              1279 	mov	a,#0x00
   40D7 35 07              1280 	addc	a,ar7
   40D9 FF                 1281 	mov	r7,a
                           1282 ;	genAssign
   40DA 90 00 AA           1283 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   40DD EA                 1284 	mov	a,r2
   40DE F0                 1285 	movx	@dptr,a
   40DF A3                 1286 	inc	dptr
   40E0 EB                 1287 	mov	a,r3
   40E1 F0                 1288 	movx	@dptr,a
   40E2 A3                 1289 	inc	dptr
   40E3 EC                 1290 	mov	a,r4
   40E4 F0                 1291 	movx	@dptr,a
   40E5 A3                 1292 	inc	dptr
   40E6 ED                 1293 	mov	a,r5
   40E7 F0                 1294 	movx	@dptr,a
                           1295 ;	genCall
   40E8 8E 82              1296 	mov	dpl,r6
   40EA 8F 83              1297 	mov	dph,r7
   40EC 12 06 62           1298 	lcall	_HW_set_32bit_reg
   40EF                    1299 00106$:
                    0509   1300 	C$core_irq_ctrl.c$130$1$1 ==.
                    0509   1301 	XG$CIC_disable_irq$0$0 ==.
   40EF 22                 1302 	ret
                           1303 ;------------------------------------------------------------
                           1304 ;Allocation info for local variables in function 'CIC_irq_handler'
                           1305 ;------------------------------------------------------------
                           1306 ;irq_idx                   Allocated with name '_CIC_irq_handler_irq_idx_1_1'
                           1307 ;irq_status                Allocated with name '_CIC_irq_handler_irq_status_1_1'
                           1308 ;irq_fired                 Allocated with name '_CIC_irq_handler_irq_fired_2_2'
                           1309 ;file_name                 Allocated with name '_CIC_irq_handler_file_name_6_6'
                           1310 ;------------------------------------------------------------
                    050A   1311 	G$CIC_irq_handler$0$0 ==.
                    050A   1312 	C$core_irq_ctrl.c$137$1$1 ==.
                           1313 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:137: CIC_irq_handler
                           1314 ;	-----------------------------------------
                           1315 ;	 function CIC_irq_handler
                           1316 ;	-----------------------------------------
   40F0                    1317 _CIC_irq_handler:
                    050A   1318 	C$core_irq_ctrl.c$145$1$1 ==.
                           1319 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:145: irq_status = HAL_get_32bit_reg( g_cic_base_addr, IRQStatus );
                           1320 ;	genAssign
   40F0 90 09 89           1321 	mov	dptr,#_g_cic_base_addr
   40F3 E0                 1322 	movx	a,@dptr
   40F4 FA                 1323 	mov	r2,a
   40F5 A3                 1324 	inc	dptr
   40F6 E0                 1325 	movx	a,@dptr
   40F7 FB                 1326 	mov	r3,a
                           1327 ;	genPlus
                           1328 ;	genPlusIncr
   40F8 74 2C              1329 	mov	a,#0x2C
   40FA 25 02              1330 	add	a,ar2
   40FC FA                 1331 	mov	r2,a
   40FD 74 00              1332 	mov	a,#0x00
   40FF 35 03              1333 	addc	a,ar3
   4101 FB                 1334 	mov	r3,a
                           1335 ;	genCall
   4102 8A 82              1336 	mov	dpl,r2
   4104 8B 83              1337 	mov	dph,r3
   4106 12 06 56           1338 	lcall	_HW_get_32bit_reg
   4109 AA 82              1339 	mov	r2,dpl
   410B AB 83              1340 	mov	r3,dph
   410D AC F0              1341 	mov	r4,b
   410F FD                 1342 	mov	r5,a
                    052A   1343 	C$core_irq_ctrl.c$147$1$1 ==.
                           1344 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:147: for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
                           1345 ;	genAssign
   4110 90 06 FB           1346 	mov	dptr,#_CIC_irq_handler_irq_idx_1_1
   4113 74 00              1347 	mov	a,#0x00
   4115 F0                 1348 	movx	@dptr,a
   4116                    1349 00111$:
                           1350 ;	genAssign
   4116 90 06 FB           1351 	mov	dptr,#_CIC_irq_handler_irq_idx_1_1
   4119 E0                 1352 	movx	a,@dptr
   411A FE                 1353 	mov	r6,a
                           1354 ;	genCmpLt
                           1355 ;	genCmp
   411B BE 20 00           1356 	cjne	r6,#0x20,00121$
   411E                    1357 00121$:
                           1358 ;	genIfxJump
   411E 40 03              1359 	jc	00122$
   4120 02 42 E0           1360 	ljmp	00115$
   4123                    1361 00122$:
                    053D   1362 	C$core_irq_ctrl.c$149$2$2 ==.
                           1363 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:149: uint32_t irq_fired = irq_status & (1 << irq_idx);
                           1364 ;	genLeftShift
   4123 8E F0              1365 	mov	b,r6
   4125 05 F0              1366 	inc	b
   4127 7F 01              1367 	mov	r7,#0x01
   4129 78 00              1368 	mov	r0,#0x00
   412B 80 07              1369 	sjmp	00124$
   412D                    1370 00123$:
   412D EF                 1371 	mov	a,r7
   412E 25 E0              1372 	add	a,acc
   4130 FF                 1373 	mov	r7,a
   4131 E8                 1374 	mov	a,r0
   4132 33                 1375 	rlc	a
   4133 F8                 1376 	mov	r0,a
   4134                    1377 00124$:
   4134 D5 F0 F6           1378 	djnz	b,00123$
                           1379 ;	genIpush
   4137 C0 06              1380 	push	ar6
                           1381 ;	genCast
   4139 E8                 1382 	mov	a,r0
   413A 33                 1383 	rlc	a
   413B 95 E0              1384 	subb	a,acc
   413D F9                 1385 	mov	r1,a
   413E FE                 1386 	mov	r6,a
                           1387 ;	genAnd
   413F EA                 1388 	mov	a,r2
   4140 52 07              1389 	anl	ar7,a
   4142 EB                 1390 	mov	a,r3
   4143 52 00              1391 	anl	ar0,a
   4145 EC                 1392 	mov	a,r4
   4146 52 01              1393 	anl	ar1,a
   4148 ED                 1394 	mov	a,r5
   4149 52 06              1395 	anl	ar6,a
                    0565   1396 	C$core_irq_ctrl.c$150$1$1 ==.
                           1397 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:150: if ( irq_fired )
                           1398 ;	genIfx
   414B EF                 1399 	mov	a,r7
   414C 48                 1400 	orl	a,r0
   414D 49                 1401 	orl	a,r1
   414E 4E                 1402 	orl	a,r6
                           1403 ;	genIpop
   414F D0 06              1404 	pop	ar6
                           1405 ;	genIfxJump
   4151 70 03              1406 	jnz	00125$
   4153 02 42 D2           1407 	ljmp	00113$
   4156                    1408 00125$:
                    0570   1409 	C$core_irq_ctrl.c$152$3$3 ==.
                           1410 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:152: if ( g_irq_handler_table[irq_idx] == NO_HANDLER )
                           1411 ;	genLeftShift
                           1412 ;	genLeftShiftLiteral
                           1413 ;	genlshOne
   4156 EE                 1414 	mov	a,r6
   4157 25 E0              1415 	add	a,acc
   4159 FF                 1416 	mov	r7,a
                           1417 ;	genPlus
   415A E5 07              1418 	mov	a,ar7
   415C 24 38              1419 	add	a,#_g_irq_handler_table
   415E F5 82              1420 	mov	dpl,a
   4160 74 00              1421 	mov	a,#0x00
   4162 34 06              1422 	addc	a,#(_g_irq_handler_table >> 8)
   4164 F5 83              1423 	mov	dph,a
                           1424 ;	genPointerGet
                           1425 ;	genFarPointerGet
   4166 E0                 1426 	movx	a,@dptr
   4167 FF                 1427 	mov	r7,a
   4168 A3                 1428 	inc	dptr
   4169 E0                 1429 	movx	a,@dptr
   416A F8                 1430 	mov	r0,a
                           1431 ;	genIfx
   416B EF                 1432 	mov	a,r7
   416C 48                 1433 	orl	a,r0
                           1434 ;	genIfxJump
   416D 60 03              1435 	jz	00126$
   416F 02 42 AD           1436 	ljmp	00107$
   4172                    1437 00126$:
                    058C   1438 	C$core_irq_ctrl.c$154$6$5 ==.
                           1439 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:154: HAL_ASSERT(0)
                           1440 ;	genPointerSet
                           1441 ;     genFarPointerSet
   4172 90 06 FC           1442 	mov	dptr,#_CIC_irq_handler_file_name_6_6
   4175 74 2E              1443 	mov	a,#0x2E
   4177 F0                 1444 	movx	@dptr,a
                           1445 ;	genPointerSet
                           1446 ;     genFarPointerSet
   4178 90 06 FD           1447 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0001)
   417B 74 2E              1448 	mov	a,#0x2E
   417D F0                 1449 	movx	@dptr,a
                           1450 ;	genPointerSet
                           1451 ;     genFarPointerSet
   417E 90 06 FE           1452 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0002)
   4181 74 2F              1453 	mov	a,#0x2F
   4183 F0                 1454 	movx	@dptr,a
                           1455 ;	genPointerSet
                           1456 ;     genFarPointerSet
   4184 90 06 FF           1457 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0003)
   4187 74 64              1458 	mov	a,#0x64
   4189 F0                 1459 	movx	@dptr,a
                           1460 ;	genPointerSet
                           1461 ;     genFarPointerSet
   418A 90 07 00           1462 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0004)
   418D 74 72              1463 	mov	a,#0x72
   418F F0                 1464 	movx	@dptr,a
                           1465 ;	genPointerSet
                           1466 ;     genFarPointerSet
   4190 90 07 01           1467 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0005)
   4193 74 69              1468 	mov	a,#0x69
   4195 F0                 1469 	movx	@dptr,a
                           1470 ;	genPointerSet
                           1471 ;     genFarPointerSet
   4196 90 07 02           1472 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0006)
   4199 74 76              1473 	mov	a,#0x76
   419B F0                 1474 	movx	@dptr,a
                           1475 ;	genPointerSet
                           1476 ;     genFarPointerSet
   419C 90 07 03           1477 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0007)
   419F 74 65              1478 	mov	a,#0x65
   41A1 F0                 1479 	movx	@dptr,a
                           1480 ;	genPointerSet
                           1481 ;     genFarPointerSet
   41A2 90 07 04           1482 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0008)
   41A5 74 72              1483 	mov	a,#0x72
   41A7 F0                 1484 	movx	@dptr,a
                           1485 ;	genPointerSet
                           1486 ;     genFarPointerSet
   41A8 90 07 05           1487 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0009)
   41AB 74 73              1488 	mov	a,#0x73
   41AD F0                 1489 	movx	@dptr,a
                           1490 ;	genPointerSet
                           1491 ;     genFarPointerSet
   41AE 90 07 06           1492 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000a)
   41B1 74 2F              1493 	mov	a,#0x2F
   41B3 F0                 1494 	movx	@dptr,a
                           1495 ;	genPointerSet
                           1496 ;     genFarPointerSet
   41B4 90 07 07           1497 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000b)
   41B7 74 43              1498 	mov	a,#0x43
   41B9 F0                 1499 	movx	@dptr,a
                           1500 ;	genPointerSet
                           1501 ;     genFarPointerSet
   41BA 90 07 08           1502 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000c)
   41BD 74 6F              1503 	mov	a,#0x6F
   41BF F0                 1504 	movx	@dptr,a
                           1505 ;	genPointerSet
                           1506 ;     genFarPointerSet
   41C0 90 07 09           1507 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000d)
   41C3 74 72              1508 	mov	a,#0x72
   41C5 F0                 1509 	movx	@dptr,a
                           1510 ;	genPointerSet
                           1511 ;     genFarPointerSet
   41C6 90 07 0A           1512 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000e)
   41C9 74 65              1513 	mov	a,#0x65
   41CB F0                 1514 	movx	@dptr,a
                           1515 ;	genPointerSet
                           1516 ;     genFarPointerSet
   41CC 90 07 0B           1517 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x000f)
   41CF 74 49              1518 	mov	a,#0x49
   41D1 F0                 1519 	movx	@dptr,a
                           1520 ;	genPointerSet
                           1521 ;     genFarPointerSet
   41D2 90 07 0C           1522 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0010)
   41D5 74 6E              1523 	mov	a,#0x6E
   41D7 F0                 1524 	movx	@dptr,a
                           1525 ;	genPointerSet
                           1526 ;     genFarPointerSet
   41D8 90 07 0D           1527 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0011)
   41DB 74 74              1528 	mov	a,#0x74
   41DD F0                 1529 	movx	@dptr,a
                           1530 ;	genPointerSet
                           1531 ;     genFarPointerSet
   41DE 90 07 0E           1532 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0012)
   41E1 74 65              1533 	mov	a,#0x65
   41E3 F0                 1534 	movx	@dptr,a
                           1535 ;	genPointerSet
                           1536 ;     genFarPointerSet
   41E4 90 07 0F           1537 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0013)
   41E7 74 72              1538 	mov	a,#0x72
   41E9 F0                 1539 	movx	@dptr,a
                           1540 ;	genPointerSet
                           1541 ;     genFarPointerSet
   41EA 90 07 10           1542 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0014)
   41ED 74 72              1543 	mov	a,#0x72
   41EF F0                 1544 	movx	@dptr,a
                           1545 ;	genPointerSet
                           1546 ;     genFarPointerSet
   41F0 90 07 11           1547 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0015)
   41F3 74 75              1548 	mov	a,#0x75
   41F5 F0                 1549 	movx	@dptr,a
                           1550 ;	genPointerSet
                           1551 ;     genFarPointerSet
   41F6 90 07 12           1552 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0016)
   41F9 74 70              1553 	mov	a,#0x70
   41FB F0                 1554 	movx	@dptr,a
                           1555 ;	genPointerSet
                           1556 ;     genFarPointerSet
   41FC 90 07 13           1557 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0017)
   41FF 74 74              1558 	mov	a,#0x74
   4201 F0                 1559 	movx	@dptr,a
                           1560 ;	genPointerSet
                           1561 ;     genFarPointerSet
   4202 90 07 14           1562 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0018)
   4205 74 2F              1563 	mov	a,#0x2F
   4207 F0                 1564 	movx	@dptr,a
                           1565 ;	genPointerSet
                           1566 ;     genFarPointerSet
   4208 90 07 15           1567 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0019)
   420B 74 63              1568 	mov	a,#0x63
   420D F0                 1569 	movx	@dptr,a
                           1570 ;	genPointerSet
                           1571 ;     genFarPointerSet
   420E 90 07 16           1572 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001a)
   4211 74 6F              1573 	mov	a,#0x6F
   4213 F0                 1574 	movx	@dptr,a
                           1575 ;	genPointerSet
                           1576 ;     genFarPointerSet
   4214 90 07 17           1577 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001b)
   4217 74 72              1578 	mov	a,#0x72
   4219 F0                 1579 	movx	@dptr,a
                           1580 ;	genPointerSet
                           1581 ;     genFarPointerSet
   421A 90 07 18           1582 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001c)
   421D 74 65              1583 	mov	a,#0x65
   421F F0                 1584 	movx	@dptr,a
                           1585 ;	genPointerSet
                           1586 ;     genFarPointerSet
   4220 90 07 19           1587 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001d)
   4223 74 5F              1588 	mov	a,#0x5F
   4225 F0                 1589 	movx	@dptr,a
                           1590 ;	genPointerSet
                           1591 ;     genFarPointerSet
   4226 90 07 1A           1592 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001e)
   4229 74 69              1593 	mov	a,#0x69
   422B F0                 1594 	movx	@dptr,a
                           1595 ;	genPointerSet
                           1596 ;     genFarPointerSet
   422C 90 07 1B           1597 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x001f)
   422F 74 72              1598 	mov	a,#0x72
   4231 F0                 1599 	movx	@dptr,a
                           1600 ;	genPointerSet
                           1601 ;     genFarPointerSet
   4232 90 07 1C           1602 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0020)
   4235 74 71              1603 	mov	a,#0x71
   4237 F0                 1604 	movx	@dptr,a
                           1605 ;	genPointerSet
                           1606 ;     genFarPointerSet
   4238 90 07 1D           1607 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0021)
   423B 74 5F              1608 	mov	a,#0x5F
   423D F0                 1609 	movx	@dptr,a
                           1610 ;	genPointerSet
                           1611 ;     genFarPointerSet
   423E 90 07 1E           1612 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0022)
   4241 74 63              1613 	mov	a,#0x63
   4243 F0                 1614 	movx	@dptr,a
                           1615 ;	genPointerSet
                           1616 ;     genFarPointerSet
   4244 90 07 1F           1617 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0023)
   4247 74 74              1618 	mov	a,#0x74
   4249 F0                 1619 	movx	@dptr,a
                           1620 ;	genPointerSet
                           1621 ;     genFarPointerSet
   424A 90 07 20           1622 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0024)
   424D 74 72              1623 	mov	a,#0x72
   424F F0                 1624 	movx	@dptr,a
                           1625 ;	genPointerSet
                           1626 ;     genFarPointerSet
   4250 90 07 21           1627 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0025)
   4253 74 6C              1628 	mov	a,#0x6C
   4255 F0                 1629 	movx	@dptr,a
                           1630 ;	genPointerSet
                           1631 ;     genFarPointerSet
   4256 90 07 22           1632 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0026)
   4259 74 2E              1633 	mov	a,#0x2E
   425B F0                 1634 	movx	@dptr,a
                           1635 ;	genPointerSet
                           1636 ;     genFarPointerSet
   425C 90 07 23           1637 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0027)
   425F 74 63              1638 	mov	a,#0x63
   4261 F0                 1639 	movx	@dptr,a
                           1640 ;	genPointerSet
                           1641 ;     genFarPointerSet
   4262 90 07 24           1642 	mov	dptr,#(_CIC_irq_handler_file_name_6_6 + 0x0028)
   4265 74 00              1643 	mov	a,#0x00
   4267 F0                 1644 	movx	@dptr,a
                           1645 ;	genAssign
   4268 90 00 8C           1646 	mov	dptr,#_HAL_assert_fail_PARM_2
   426B 74 9A              1647 	mov	a,#0x9A
   426D F0                 1648 	movx	@dptr,a
   426E E4                 1649 	clr	a
   426F A3                 1650 	inc	dptr
   4270 F0                 1651 	movx	@dptr,a
   4271 A3                 1652 	inc	dptr
   4272 F0                 1653 	movx	@dptr,a
   4273 A3                 1654 	inc	dptr
   4274 F0                 1655 	movx	@dptr,a
                           1656 ;	genCall
   4275 75 82 FC           1657 	mov	dpl,#_CIC_irq_handler_file_name_6_6
   4278 75 83 06           1658 	mov	dph,#(_CIC_irq_handler_file_name_6_6 >> 8)
   427B 75 F0 00           1659 	mov	b,#0x00
   427E C0 02              1660 	push	ar2
   4280 C0 03              1661 	push	ar3
   4282 C0 04              1662 	push	ar4
   4284 C0 05              1663 	push	ar5
   4286 C0 06              1664 	push	ar6
   4288 12 05 F6           1665 	lcall	_HAL_assert_fail
   428B D0 06              1666 	pop	ar6
   428D D0 05              1667 	pop	ar5
   428F D0 04              1668 	pop	ar4
   4291 D0 03              1669 	pop	ar3
   4293 D0 02              1670 	pop	ar2
                    06AF   1671 	C$core_irq_ctrl.c$155$4$4 ==.
                           1672 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:155: CIC_disable_irq( irq_idx );
                           1673 ;	genCall
   4295 8E 82              1674 	mov	dpl,r6
   4297 C0 02              1675 	push	ar2
   4299 C0 03              1676 	push	ar3
   429B C0 04              1677 	push	ar4
   429D C0 05              1678 	push	ar5
   429F 12 3F 87           1679 	lcall	_CIC_disable_irq
   42A2 D0 05              1680 	pop	ar5
   42A4 D0 04              1681 	pop	ar4
   42A6 D0 03              1682 	pop	ar3
   42A8 D0 02              1683 	pop	ar2
   42AA 02 42 D2           1684 	ljmp	00113$
   42AD                    1685 00107$:
                    06C7   1686 	C$core_irq_ctrl.c$160$4$7 ==.
                           1687 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:160: (*g_irq_handler_table[irq_idx])();
                           1688 ;	genPcall
   42AD C0 02              1689 	push	ar2
   42AF C0 03              1690 	push	ar3
   42B1 C0 04              1691 	push	ar4
   42B3 C0 05              1692 	push	ar5
   42B5 C0 07              1693 	push	ar7
   42B7 C0 00              1694 	push	ar0
   42B9 74 C6              1695 	mov	a,#00127$
   42BB C0 E0              1696 	push	acc
   42BD 74 42              1697 	mov	a,#(00127$ >> 8)
   42BF C0 E0              1698 	push	acc
   42C1 C0 07              1699 	push	ar7
   42C3 C0 00              1700 	push	ar0
   42C5 22                 1701 	ret
   42C6                    1702 00127$:
   42C6 D0 00              1703 	pop	ar0
   42C8 D0 07              1704 	pop	ar7
   42CA D0 05              1705 	pop	ar5
   42CC D0 04              1706 	pop	ar4
   42CE D0 03              1707 	pop	ar3
   42D0 D0 02              1708 	pop	ar2
   42D2                    1709 00113$:
                    06EC   1710 	C$core_irq_ctrl.c$147$1$1 ==.
                           1711 ;	../drivers/CoreInterrupt/core_irq_ctrl.c:147: for ( irq_idx = 0; irq_idx < CIC_NB_IRQ_SOURCES; irq_idx++ )
                           1712 ;	genAssign
   42D2 90 06 FB           1713 	mov	dptr,#_CIC_irq_handler_irq_idx_1_1
   42D5 E0                 1714 	movx	a,@dptr
   42D6 FE                 1715 	mov	r6,a
                           1716 ;	genPlus
   42D7 90 06 FB           1717 	mov	dptr,#_CIC_irq_handler_irq_idx_1_1
                           1718 ;	genPlusIncr
   42DA EE                 1719 	mov	a,r6
   42DB 04                 1720 	inc	a
   42DC F0                 1721 	movx	@dptr,a
   42DD 02 41 16           1722 	ljmp	00111$
   42E0                    1723 00115$:
                    06FA   1724 	C$core_irq_ctrl.c$164$1$1 ==.
                    06FA   1725 	XG$CIC_irq_handler$0$0 ==.
   42E0 22                 1726 	ret
                           1727 	.area CSEG    (CODE)
                           1728 	.area CONST   (CODE)
                           1729 	.area XINIT   (CODE)
                    0000   1730 F___drivers_CoreInterrupt_core_irq_ctrl$__xinit_g_cic_base_addr$0$0 == .
   6168                    1731 __xinit__g_cic_base_addr:
   6168 00 00              1732 	.byte #0x00,#0x00
                           1733 	.area CABS    (ABS,CODE)
