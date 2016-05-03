                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Tue May 03 17:52:19 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___misc
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _xatoi_PARM_2
                             13 	.globl _int_to_dec_int_PARM_2
                             14 	.globl _int_to_hex_int_PARM_3
                             15 	.globl _int_to_hex_int_PARM_2
                             16 	.globl _dp_display_array_PARM_3
                             17 	.globl _dp_display_array_PARM_2
                             18 	.globl _dp_display_value_PARM_2
                             19 	.globl _dp_display_text
                             20 	.globl _dp_display_value
                             21 	.globl _dp_display_array
                             22 	.globl _int_to_hex_int
                             23 	.globl _int_to_dec_int
                             24 	.globl _xatoi
                             25 	.globl _getParity
                             26 ;--------------------------------------------------------
                             27 ; special function registers
                             28 ;--------------------------------------------------------
                             29 	.area RSEG    (DATA)
                             30 ;--------------------------------------------------------
                             31 ; special function bits
                             32 ;--------------------------------------------------------
                             33 	.area RSEG    (DATA)
                             34 ;--------------------------------------------------------
                             35 ; overlayable register banks
                             36 ;--------------------------------------------------------
                             37 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      38 	.ds 8
                             39 ;--------------------------------------------------------
                             40 ; internal ram data
                             41 ;--------------------------------------------------------
                             42 	.area DSEG    (DATA)
                    0000     43 Ldp_display_array$sloc0$1$0==.
   0021                      44 _dp_display_array_sloc0_1_0:
   0021                      45 	.ds 2
                    0002     46 Ldp_display_array$sloc1$1$0==.
   0023                      47 _dp_display_array_sloc1_1_0:
   0023                      48 	.ds 2
                    0004     49 Lint_to_hex_int$sloc0$1$0==.
   0025                      50 _int_to_hex_int_sloc0_1_0:
   0025                      51 	.ds 2
                    0006     52 Lint_to_hex_int$sloc1$1$0==.
   0027                      53 _int_to_hex_int_sloc1_1_0:
   0027                      54 	.ds 3
                    0009     55 Lint_to_dec_int$sloc0$1$0==.
   002A                      56 _int_to_dec_int_sloc0_1_0:
   002A                      57 	.ds 3
                             58 ;--------------------------------------------------------
                             59 ; overlayable items in internal ram 
                             60 ;--------------------------------------------------------
                             61 	.area OSEG    (OVR,DATA)
                             62 ;--------------------------------------------------------
                             63 ; indirectly addressable internal ram data
                             64 ;--------------------------------------------------------
                             65 	.area ISEG    (DATA)
                             66 ;--------------------------------------------------------
                             67 ; absolute internal ram data
                             68 ;--------------------------------------------------------
                             69 	.area IABS    (ABS,DATA)
                             70 	.area IABS    (ABS,DATA)
                             71 ;--------------------------------------------------------
                             72 ; bit data
                             73 ;--------------------------------------------------------
                             74 	.area BSEG    (BIT)
                             75 ;--------------------------------------------------------
                             76 ; paged external ram data
                             77 ;--------------------------------------------------------
                             78 	.area PSEG    (PAG,XDATA)
                             79 ;--------------------------------------------------------
                             80 ; external ram data
                             81 ;--------------------------------------------------------
                             82 	.area XSEG    (XDATA)
                    0000     83 Ldp_display_text$text$1$1==.
   0431                      84 _dp_display_text_text_1_1:
   0431                      85 	.ds 3
                    0003     86 Ldp_display_text$length$1$1==.
   0434                      87 _dp_display_text_length_1_1:
   0434                      88 	.ds 2
                    0005     89 Ldp_display_value$descriptive$1$1==.
   0436                      90 _dp_display_value_PARM_2:
   0436                      91 	.ds 2
                    0007     92 Ldp_display_value$value$1$1==.
   0438                      93 _dp_display_value_value_1_1:
   0438                      94 	.ds 4
                    000B     95 Ldp_display_value$value_text$1$1==.
   043C                      96 _dp_display_value_value_text_1_1:
   043C                      97 	.ds 256
                    010B     98 Ldp_display_value$text_size$1$1==.
   053C                      99 _dp_display_value_text_size_1_1:
   053C                     100 	.ds 2
                    010D    101 Ldp_display_array$bytes$1$1==.
   053E                     102 _dp_display_array_PARM_2:
   053E                     103 	.ds 2
                    010F    104 Ldp_display_array$descriptive$1$1==.
   0540                     105 _dp_display_array_PARM_3:
   0540                     106 	.ds 2
                    0111    107 Ldp_display_array$value$1$1==.
   0542                     108 _dp_display_array_value_1_1:
   0542                     109 	.ds 3
                    0114    110 Ldp_display_array$idx$1$1==.
   0545                     111 _dp_display_array_idx_1_1:
   0545                     112 	.ds 2
                    0116    113 Lint_to_hex_int$p_result$1$1==.
   0547                     114 _int_to_hex_int_PARM_2:
   0547                     115 	.ds 3
                    0119    116 Lint_to_hex_int$result_size$1$1==.
   054A                     117 _int_to_hex_int_PARM_3:
   054A                     118 	.ds 2
                    011B    119 Lint_to_hex_int$value$1$1==.
   054C                     120 _int_to_hex_int_value_1_1:
   054C                     121 	.ds 2
                    011D    122 Lint_to_hex_int$nibble_idx$1$1==.
   054E                     123 _int_to_hex_int_nibble_idx_1_1:
   054E                     124 	.ds 2
                    011F    125 Lint_to_hex_int$nb_nibbles$1$1==.
   0550                     126 _int_to_hex_int_nb_nibbles_1_1:
   0550                     127 	.ds 2
                    0121    128 Lint_to_hex_int$conv_array$1$1==.
   0552                     129 _int_to_hex_int_conv_array_1_1:
   0552                     130 	.ds 8
                    0129    131 Lint_to_hex_int$uvalue$1$1==.
   055A                     132 _int_to_hex_int_uvalue_1_1:
   055A                     133 	.ds 2
                    012B    134 Lint_to_dec_int$p_result$1$1==.
   055C                     135 _int_to_dec_int_PARM_2:
   055C                     136 	.ds 3
                    012E    137 Lint_to_dec_int$value$1$1==.
   055F                     138 _int_to_dec_int_value_1_1:
   055F                     139 	.ds 2
                    0130    140 Lint_to_dec_int$conv_array$1$1==.
   0561                     141 _int_to_dec_int_conv_array_1_1:
   0561                     142 	.ds 8
                    0138    143 Lint_to_dec_int$uvalue$1$1==.
   0569                     144 _int_to_dec_int_uvalue_1_1:
   0569                     145 	.ds 2
                    013A    146 Lint_to_dec_int$digit_idx$1$1==.
   056B                     147 _int_to_dec_int_digit_idx_1_1:
   056B                     148 	.ds 2
                    013C    149 Lint_to_dec_int$nb_digits$1$1==.
   056D                     150 _int_to_dec_int_nb_digits_1_1:
   056D                     151 	.ds 2
                    013E    152 Lxatoi$res$1$1==.
   056F                     153 _xatoi_PARM_2:
   056F                     154 	.ds 3
                    0141    155 Lxatoi$str$1$1==.
   0572                     156 _xatoi_str_1_1:
   0572                     157 	.ds 3
                    0144    158 Lxatoi$val$1$1==.
   0575                     159 _xatoi_val_1_1:
   0575                     160 	.ds 4
                    0148    161 Lxatoi$c$1$1==.
   0579                     162 _xatoi_c_1_1:
   0579                     163 	.ds 1
                    0149    164 Lxatoi$r$1$1==.
   057A                     165 _xatoi_r_1_1:
   057A                     166 	.ds 1
                    014A    167 Lxatoi$s$1$1==.
   057B                     168 _xatoi_s_1_1:
   057B                     169 	.ds 1
                    014B    170 LgetParity$n$1$1==.
   057C                     171 _getParity_n_1_1:
   057C                     172 	.ds 2
                    014D    173 LgetParity$parity$1$1==.
   057E                     174 _getParity_parity_1_1:
   057E                     175 	.ds 1
                            176 ;--------------------------------------------------------
                            177 ; external initialized ram data
                            178 ;--------------------------------------------------------
                            179 	.area XISEG   (XDATA)
                            180 	.area HOME    (CODE)
                            181 	.area GSINIT0 (CODE)
                            182 	.area GSINIT1 (CODE)
                            183 	.area GSINIT2 (CODE)
                            184 	.area GSINIT3 (CODE)
                            185 	.area GSINIT4 (CODE)
                            186 	.area GSINIT5 (CODE)
                            187 	.area GSINIT  (CODE)
                            188 	.area GSFINAL (CODE)
                            189 	.area CSEG    (CODE)
                            190 ;--------------------------------------------------------
                            191 ; global & static initialisations
                            192 ;--------------------------------------------------------
                            193 	.area HOME    (CODE)
                            194 	.area GSINIT  (CODE)
                            195 	.area GSFINAL (CODE)
                            196 	.area GSINIT  (CODE)
                            197 ;--------------------------------------------------------
                            198 ; Home
                            199 ;--------------------------------------------------------
                            200 	.area HOME    (CODE)
                            201 	.area HOME    (CODE)
                            202 ;--------------------------------------------------------
                            203 ; code
                            204 ;--------------------------------------------------------
                            205 	.area CSEG    (CODE)
                            206 ;------------------------------------------------------------
                            207 ;Allocation info for local variables in function 'dp_display_text'
                            208 ;------------------------------------------------------------
                            209 ;text                      Allocated with name '_dp_display_text_text_1_1'
                            210 ;length                    Allocated with name '_dp_display_text_length_1_1'
                            211 ;------------------------------------------------------------
                    0000    212 	G$dp_display_text$0$0 ==.
                    0000    213 	C$misc.c$8$0$0 ==.
                            214 ;	../misc.c:8: void dp_display_text(uint8_t * text)
                            215 ;	-----------------------------------------
                            216 ;	 function dp_display_text
                            217 ;	-----------------------------------------
   11F7                     218 _dp_display_text:
                    0002    219 	ar2 = 0x02
                    0003    220 	ar3 = 0x03
                    0004    221 	ar4 = 0x04
                    0005    222 	ar5 = 0x05
                    0006    223 	ar6 = 0x06
                    0007    224 	ar7 = 0x07
                    0000    225 	ar0 = 0x00
                    0001    226 	ar1 = 0x01
                            227 ;	genReceive
   11F7 AA F0               228 	mov	r2,b
   11F9 AB 83               229 	mov	r3,dph
   11FB E5 82               230 	mov	a,dpl
   11FD 90 04 31            231 	mov	dptr,#_dp_display_text_text_1_1
   1200 F0                  232 	movx	@dptr,a
   1201 A3                  233 	inc	dptr
   1202 EB                  234 	mov	a,r3
   1203 F0                  235 	movx	@dptr,a
   1204 A3                  236 	inc	dptr
   1205 EA                  237 	mov	a,r2
   1206 F0                  238 	movx	@dptr,a
                    0010    239 	C$misc.c$12$1$1 ==.
                            240 ;	../misc.c:12: length = 0;
                            241 ;	genAssign
   1207 90 04 34            242 	mov	dptr,#_dp_display_text_length_1_1
   120A E4                  243 	clr	a
   120B F0                  244 	movx	@dptr,a
   120C A3                  245 	inc	dptr
   120D F0                  246 	movx	@dptr,a
                    0017    247 	C$misc.c$13$1$1 ==.
                            248 ;	../misc.c:13: while (text[length++]!='\0');
                            249 ;	genAssign
   120E 90 04 31            250 	mov	dptr,#_dp_display_text_text_1_1
   1211 E0                  251 	movx	a,@dptr
   1212 FA                  252 	mov	r2,a
   1213 A3                  253 	inc	dptr
   1214 E0                  254 	movx	a,@dptr
   1215 FB                  255 	mov	r3,a
   1216 A3                  256 	inc	dptr
   1217 E0                  257 	movx	a,@dptr
   1218 FC                  258 	mov	r4,a
   1219                     259 00101$:
                            260 ;	genAssign
   1219 90 04 34            261 	mov	dptr,#_dp_display_text_length_1_1
   121C E0                  262 	movx	a,@dptr
   121D FD                  263 	mov	r5,a
   121E A3                  264 	inc	dptr
   121F E0                  265 	movx	a,@dptr
   1220 FE                  266 	mov	r6,a
                            267 ;	genPlus
   1221 90 04 34            268 	mov	dptr,#_dp_display_text_length_1_1
                            269 ;	genPlusIncr
   1224 74 01               270 	mov	a,#0x01
   1226 25 05               271 	add	a,ar5
   1228 F0                  272 	movx	@dptr,a
   1229 74 00               273 	mov	a,#0x00
   122B 35 06               274 	addc	a,ar6
   122D A3                  275 	inc	dptr
   122E F0                  276 	movx	@dptr,a
                            277 ;	genPlus
   122F E5 05               278 	mov	a,ar5
   1231 25 02               279 	add	a,ar2
   1233 FD                  280 	mov	r5,a
   1234 E5 06               281 	mov	a,ar6
   1236 35 03               282 	addc	a,ar3
   1238 FE                  283 	mov	r6,a
   1239 8C 07               284 	mov	ar7,r4
                            285 ;	genPointerGet
                            286 ;	genGenPointerGet
   123B 8D 82               287 	mov	dpl,r5
   123D 8E 83               288 	mov	dph,r6
   123F 8F F0               289 	mov	b,r7
   1241 12 71 69            290 	lcall	__gptrget
   1244 FD                  291 	mov	r5,a
                            292 ;	genCmpEq
                            293 ;	gencjneshort
   1245 BD 00 02            294 	cjne	r5,#0x00,00108$
   1248 80 03               295 	sjmp	00109$
   124A                     296 00108$:
   124A 02 12 19            297 	ljmp	00101$
   124D                     298 00109$:
                    0056    299 	C$misc.c$15$1$1 ==.
                            300 ;	../misc.c:15: UART_send(&g_stdio_uart, (uint8_t *)text,length);
                            301 ;	genAssign
   124D 90 04 34            302 	mov	dptr,#_dp_display_text_length_1_1
   1250 E0                  303 	movx	a,@dptr
   1251 FD                  304 	mov	r5,a
   1252 A3                  305 	inc	dptr
   1253 E0                  306 	movx	a,@dptr
   1254 FE                  307 	mov	r6,a
                            308 ;	genAssign
   1255 90 07 AF            309 	mov	dptr,#_UART_send_PARM_2
   1258 EA                  310 	mov	a,r2
   1259 F0                  311 	movx	@dptr,a
   125A A3                  312 	inc	dptr
   125B EB                  313 	mov	a,r3
   125C F0                  314 	movx	@dptr,a
   125D A3                  315 	inc	dptr
   125E EC                  316 	mov	a,r4
   125F F0                  317 	movx	@dptr,a
                            318 ;	genAssign
   1260 90 07 B2            319 	mov	dptr,#_UART_send_PARM_3
   1263 ED                  320 	mov	a,r5
   1264 F0                  321 	movx	@dptr,a
   1265 A3                  322 	inc	dptr
   1266 EE                  323 	mov	a,r6
   1267 F0                  324 	movx	@dptr,a
                            325 ;	genCall
   1268 75 82 02            326 	mov	dpl,#_g_stdio_uart
   126B 75 83 04            327 	mov	dph,#(_g_stdio_uart >> 8)
   126E 75 F0 00            328 	mov	b,#0x00
   1271 12 2F D9            329 	lcall	_UART_send
   1274                     330 00104$:
                    007D    331 	C$misc.c$16$1$1 ==.
                    007D    332 	XG$dp_display_text$0$0 ==.
   1274 22                  333 	ret
                            334 ;------------------------------------------------------------
                            335 ;Allocation info for local variables in function 'dp_display_value'
                            336 ;------------------------------------------------------------
                            337 ;descriptive               Allocated with name '_dp_display_value_PARM_2'
                            338 ;value                     Allocated with name '_dp_display_value_value_1_1'
                            339 ;value_text                Allocated with name '_dp_display_value_value_text_1_1'
                            340 ;text_size                 Allocated with name '_dp_display_value_text_size_1_1'
                            341 ;------------------------------------------------------------
                    007E    342 	G$dp_display_value$0$0 ==.
                    007E    343 	C$misc.c$18$1$1 ==.
                            344 ;	../misc.c:18: void dp_display_value(uint32_t value,DPUINT descriptive)
                            345 ;	-----------------------------------------
                            346 ;	 function dp_display_value
                            347 ;	-----------------------------------------
   1275                     348 _dp_display_value:
                            349 ;	genReceive
   1275 AA 82               350 	mov	r2,dpl
   1277 AB 83               351 	mov	r3,dph
   1279 AC F0               352 	mov	r4,b
   127B FD                  353 	mov	r5,a
   127C 90 04 38            354 	mov	dptr,#_dp_display_value_value_1_1
   127F EA                  355 	mov	a,r2
   1280 F0                  356 	movx	@dptr,a
   1281 A3                  357 	inc	dptr
   1282 EB                  358 	mov	a,r3
   1283 F0                  359 	movx	@dptr,a
   1284 A3                  360 	inc	dptr
   1285 EC                  361 	mov	a,r4
   1286 F0                  362 	movx	@dptr,a
   1287 A3                  363 	inc	dptr
   1288 ED                  364 	mov	a,r5
   1289 F0                  365 	movx	@dptr,a
                    0093    366 	C$misc.c$23$1$1 ==.
                            367 ;	../misc.c:23: if (descriptive == HEX)
                            368 ;	genAssign
   128A 90 04 36            369 	mov	dptr,#_dp_display_value_PARM_2
   128D E0                  370 	movx	a,@dptr
   128E FA                  371 	mov	r2,a
   128F A3                  372 	inc	dptr
   1290 E0                  373 	movx	a,@dptr
   1291 FB                  374 	mov	r3,a
                            375 ;	genIfx
   1292 EA                  376 	mov	a,r2
   1293 4B                  377 	orl	a,r3
                            378 ;	genIfxJump
   1294 60 03               379 	jz	00107$
   1296 02 12 D5            380 	ljmp	00102$
   1299                     381 00107$:
                    00A2    382 	C$misc.c$25$2$2 ==.
                            383 ;	../misc.c:25: text_size = int_to_hex_int( value, value_text, 8);
                            384 ;	genAssign
   1299 90 04 38            385 	mov	dptr,#_dp_display_value_value_1_1
   129C E0                  386 	movx	a,@dptr
   129D FA                  387 	mov	r2,a
   129E A3                  388 	inc	dptr
   129F E0                  389 	movx	a,@dptr
   12A0 FB                  390 	mov	r3,a
   12A1 A3                  391 	inc	dptr
   12A2 E0                  392 	movx	a,@dptr
   12A3 FC                  393 	mov	r4,a
   12A4 A3                  394 	inc	dptr
   12A5 E0                  395 	movx	a,@dptr
   12A6 FD                  396 	mov	r5,a
                            397 ;	genCast
                            398 ;	genCast
   12A7 90 05 47            399 	mov	dptr,#_int_to_hex_int_PARM_2
   12AA 74 3C               400 	mov	a,#_dp_display_value_value_text_1_1
   12AC F0                  401 	movx	@dptr,a
   12AD A3                  402 	inc	dptr
   12AE 74 04               403 	mov	a,#(_dp_display_value_value_text_1_1 >> 8)
   12B0 F0                  404 	movx	@dptr,a
   12B1 A3                  405 	inc	dptr
   12B2 74 00               406 	mov	a,#0x0
   12B4 F0                  407 	movx	@dptr,a
                            408 ;	genAssign
   12B5 90 05 4A            409 	mov	dptr,#_int_to_hex_int_PARM_3
   12B8 74 08               410 	mov	a,#0x08
   12BA F0                  411 	movx	@dptr,a
   12BB E4                  412 	clr	a
   12BC A3                  413 	inc	dptr
   12BD F0                  414 	movx	@dptr,a
                            415 ;	genCall
   12BE 8A 82               416 	mov	dpl,r2
   12C0 8B 83               417 	mov	dph,r3
   12C2 12 14 11            418 	lcall	_int_to_hex_int
   12C5 E5 82               419 	mov	a,dpl
   12C7 85 83 F0            420 	mov	b,dph
                            421 ;	genAssign
   12CA 90 05 3C            422 	mov	dptr,#_dp_display_value_text_size_1_1
   12CD F0                  423 	movx	@dptr,a
   12CE A3                  424 	inc	dptr
   12CF E5 F0               425 	mov	a,b
   12D1 F0                  426 	movx	@dptr,a
   12D2 02 13 05            427 	ljmp	00103$
   12D5                     428 00102$:
                    00DE    429 	C$misc.c$29$2$3 ==.
                            430 ;	../misc.c:29: text_size = int_to_dec_int( value, value_text);
                            431 ;	genAssign
   12D5 90 04 38            432 	mov	dptr,#_dp_display_value_value_1_1
   12D8 E0                  433 	movx	a,@dptr
   12D9 FA                  434 	mov	r2,a
   12DA A3                  435 	inc	dptr
   12DB E0                  436 	movx	a,@dptr
   12DC FB                  437 	mov	r3,a
   12DD A3                  438 	inc	dptr
   12DE E0                  439 	movx	a,@dptr
   12DF FC                  440 	mov	r4,a
   12E0 A3                  441 	inc	dptr
   12E1 E0                  442 	movx	a,@dptr
   12E2 FD                  443 	mov	r5,a
                            444 ;	genCast
                            445 ;	genCast
   12E3 90 05 5C            446 	mov	dptr,#_int_to_dec_int_PARM_2
   12E6 74 3C               447 	mov	a,#_dp_display_value_value_text_1_1
   12E8 F0                  448 	movx	@dptr,a
   12E9 A3                  449 	inc	dptr
   12EA 74 04               450 	mov	a,#(_dp_display_value_value_text_1_1 >> 8)
   12EC F0                  451 	movx	@dptr,a
   12ED A3                  452 	inc	dptr
   12EE 74 00               453 	mov	a,#0x0
   12F0 F0                  454 	movx	@dptr,a
                            455 ;	genCall
   12F1 8A 82               456 	mov	dpl,r2
   12F3 8B 83               457 	mov	dph,r3
   12F5 12 15 AA            458 	lcall	_int_to_dec_int
   12F8 E5 82               459 	mov	a,dpl
   12FA 85 83 F0            460 	mov	b,dph
                            461 ;	genAssign
   12FD 90 05 3C            462 	mov	dptr,#_dp_display_value_text_size_1_1
   1300 F0                  463 	movx	@dptr,a
   1301 A3                  464 	inc	dptr
   1302 E5 F0               465 	mov	a,b
   1304 F0                  466 	movx	@dptr,a
   1305                     467 00103$:
                    010E    468 	C$misc.c$31$1$1 ==.
                            469 ;	../misc.c:31: UART_send (&g_stdio_uart, value_text, text_size);
                            470 ;	genAssign
   1305 90 05 3C            471 	mov	dptr,#_dp_display_value_text_size_1_1
   1308 E0                  472 	movx	a,@dptr
   1309 FA                  473 	mov	r2,a
   130A A3                  474 	inc	dptr
   130B E0                  475 	movx	a,@dptr
   130C FB                  476 	mov	r3,a
                            477 ;	genAssign
   130D 90 07 AF            478 	mov	dptr,#_UART_send_PARM_2
   1310 74 3C               479 	mov	a,#_dp_display_value_value_text_1_1
   1312 F0                  480 	movx	@dptr,a
   1313 A3                  481 	inc	dptr
   1314 74 04               482 	mov	a,#(_dp_display_value_value_text_1_1 >> 8)
   1316 F0                  483 	movx	@dptr,a
   1317 A3                  484 	inc	dptr
   1318 74 00               485 	mov	a,#0x00
   131A F0                  486 	movx	@dptr,a
                            487 ;	genAssign
   131B 90 07 B2            488 	mov	dptr,#_UART_send_PARM_3
   131E EA                  489 	mov	a,r2
   131F F0                  490 	movx	@dptr,a
   1320 A3                  491 	inc	dptr
   1321 EB                  492 	mov	a,r3
   1322 F0                  493 	movx	@dptr,a
                            494 ;	genCall
   1323 75 82 02            495 	mov	dpl,#_g_stdio_uart
   1326 75 83 04            496 	mov	dph,#(_g_stdio_uart >> 8)
   1329 75 F0 00            497 	mov	b,#0x00
   132C 12 2F D9            498 	lcall	_UART_send
   132F                     499 00104$:
                    0138    500 	C$misc.c$33$1$1 ==.
                    0138    501 	XG$dp_display_value$0$0 ==.
   132F 22                  502 	ret
                            503 ;------------------------------------------------------------
                            504 ;Allocation info for local variables in function 'dp_display_array'
                            505 ;------------------------------------------------------------
                            506 ;sloc0                     Allocated with name '_dp_display_array_sloc0_1_0'
                            507 ;sloc1                     Allocated with name '_dp_display_array_sloc1_1_0'
                            508 ;bytes                     Allocated with name '_dp_display_array_PARM_2'
                            509 ;descriptive               Allocated with name '_dp_display_array_PARM_3'
                            510 ;value                     Allocated with name '_dp_display_array_value_1_1'
                            511 ;idx                       Allocated with name '_dp_display_array_idx_1_1'
                            512 ;------------------------------------------------------------
                    0139    513 	G$dp_display_array$0$0 ==.
                    0139    514 	C$misc.c$34$1$1 ==.
                            515 ;	../misc.c:34: void dp_display_array(uint8_t *value,DPUINT bytes, DPUINT descriptive)
                            516 ;	-----------------------------------------
                            517 ;	 function dp_display_array
                            518 ;	-----------------------------------------
   1330                     519 _dp_display_array:
                            520 ;	genReceive
   1330 AA F0               521 	mov	r2,b
   1332 AB 83               522 	mov	r3,dph
   1334 E5 82               523 	mov	a,dpl
   1336 90 05 42            524 	mov	dptr,#_dp_display_array_value_1_1
   1339 F0                  525 	movx	@dptr,a
   133A A3                  526 	inc	dptr
   133B EB                  527 	mov	a,r3
   133C F0                  528 	movx	@dptr,a
   133D A3                  529 	inc	dptr
   133E EA                  530 	mov	a,r2
   133F F0                  531 	movx	@dptr,a
                    0149    532 	C$misc.c$37$1$1 ==.
                            533 ;	../misc.c:37: for (idx=0;idx<bytes;idx++)
                            534 ;	genAssign
   1340 90 05 45            535 	mov	dptr,#_dp_display_array_idx_1_1
   1343 E4                  536 	clr	a
   1344 F0                  537 	movx	@dptr,a
   1345 A3                  538 	inc	dptr
   1346 F0                  539 	movx	@dptr,a
                            540 ;	genAssign
   1347 90 05 42            541 	mov	dptr,#_dp_display_array_value_1_1
   134A E0                  542 	movx	a,@dptr
   134B FA                  543 	mov	r2,a
   134C A3                  544 	inc	dptr
   134D E0                  545 	movx	a,@dptr
   134E FB                  546 	mov	r3,a
   134F A3                  547 	inc	dptr
   1350 E0                  548 	movx	a,@dptr
   1351 FC                  549 	mov	r4,a
                            550 ;	genAssign
   1352 90 05 40            551 	mov	dptr,#_dp_display_array_PARM_3
   1355 E0                  552 	movx	a,@dptr
   1356 F5 23               553 	mov	_dp_display_array_sloc1_1_0,a
   1358 A3                  554 	inc	dptr
   1359 E0                  555 	movx	a,@dptr
   135A F5 24               556 	mov	(_dp_display_array_sloc1_1_0 + 1),a
                            557 ;	genAssign
   135C 90 05 3E            558 	mov	dptr,#_dp_display_array_PARM_2
   135F E0                  559 	movx	a,@dptr
   1360 FF                  560 	mov	r7,a
   1361 A3                  561 	inc	dptr
   1362 E0                  562 	movx	a,@dptr
   1363 F8                  563 	mov	r0,a
   1364                     564 00101$:
                            565 ;	genIpush
                            566 ;	genAssign
   1364 90 05 45            567 	mov	dptr,#_dp_display_array_idx_1_1
   1367 E0                  568 	movx	a,@dptr
   1368 F5 21               569 	mov	_dp_display_array_sloc0_1_0,a
   136A A3                  570 	inc	dptr
   136B E0                  571 	movx	a,@dptr
   136C F5 22               572 	mov	(_dp_display_array_sloc0_1_0 + 1),a
                            573 ;	genAssign
   136E A9 21               574 	mov	r1,_dp_display_array_sloc0_1_0
   1370 AD 22               575 	mov	r5,(_dp_display_array_sloc0_1_0 + 1)
                            576 ;	genCmpLt
                            577 ;	genCmp
   1372 C3                  578 	clr	c
   1373 E9                  579 	mov	a,r1
   1374 9F                  580 	subb	a,r7
   1375 ED                  581 	mov	a,r5
   1376 98                  582 	subb	a,r0
   1377 E4                  583 	clr	a
   1378 33                  584 	rlc	a
                            585 ;	genIpop
                            586 ;	genIfx
                            587 ;	genIfxJump
   1379 70 03               588 	jnz	00109$
   137B 02 14 10            589 	ljmp	00105$
   137E                     590 00109$:
                    0187    591 	C$misc.c$39$2$2 ==.
                            592 ;	../misc.c:39: dp_display_value(value[bytes-1-idx], descriptive);
                            593 ;	genMinus
                            594 ;	genMinusDec
   137E EF                  595 	mov	a,r7
   137F 24 FF               596 	add	a,#0xff
   1381 F9                  597 	mov	r1,a
   1382 E8                  598 	mov	a,r0
   1383 34 FF               599 	addc	a,#0xff
   1385 FD                  600 	mov	r5,a
                            601 ;	genMinus
   1386 E9                  602 	mov	a,r1
   1387 C3                  603 	clr	c
   1388 95 21               604 	subb	a,_dp_display_array_sloc0_1_0
   138A F9                  605 	mov	r1,a
   138B ED                  606 	mov	a,r5
   138C 95 22               607 	subb	a,(_dp_display_array_sloc0_1_0 + 1)
   138E FD                  608 	mov	r5,a
                            609 ;	genPlus
   138F E5 01               610 	mov	a,ar1
   1391 25 02               611 	add	a,ar2
   1393 F9                  612 	mov	r1,a
   1394 E5 05               613 	mov	a,ar5
   1396 35 03               614 	addc	a,ar3
   1398 FD                  615 	mov	r5,a
   1399 8C 06               616 	mov	ar6,r4
                            617 ;	genPointerGet
                            618 ;	genGenPointerGet
   139B 89 82               619 	mov	dpl,r1
   139D 8D 83               620 	mov	dph,r5
   139F 8E F0               621 	mov	b,r6
   13A1 12 71 69            622 	lcall	__gptrget
   13A4 F9                  623 	mov	r1,a
                            624 ;	genIpush
   13A5 C0 02               625 	push	ar2
   13A7 C0 03               626 	push	ar3
   13A9 C0 04               627 	push	ar4
                            628 ;	genCast
   13AB 7D 00               629 	mov	r5,#0x00
   13AD 7E 00               630 	mov	r6,#0x00
   13AF 7A 00               631 	mov	r2,#0x00
                            632 ;	genAssign
   13B1 90 04 36            633 	mov	dptr,#_dp_display_value_PARM_2
   13B4 E5 23               634 	mov	a,_dp_display_array_sloc1_1_0
   13B6 F0                  635 	movx	@dptr,a
   13B7 A3                  636 	inc	dptr
   13B8 E5 24               637 	mov	a,(_dp_display_array_sloc1_1_0 + 1)
   13BA F0                  638 	movx	@dptr,a
                            639 ;	genCall
   13BB 89 82               640 	mov	dpl,r1
   13BD 8D 83               641 	mov	dph,r5
   13BF 8E F0               642 	mov	b,r6
   13C1 EA                  643 	mov	a,r2
   13C2 C0 02               644 	push	ar2
   13C4 C0 03               645 	push	ar3
   13C6 C0 04               646 	push	ar4
   13C8 C0 07               647 	push	ar7
   13CA C0 00               648 	push	ar0
   13CC 12 12 75            649 	lcall	_dp_display_value
   13CF D0 00               650 	pop	ar0
   13D1 D0 07               651 	pop	ar7
   13D3 D0 04               652 	pop	ar4
   13D5 D0 03               653 	pop	ar3
   13D7 D0 02               654 	pop	ar2
                    01E2    655 	C$misc.c$40$2$2 ==.
                            656 ;	../misc.c:40: dp_display_text(" ");
                            657 ;	genCall
   13D9 75 82 38            658 	mov	dpl,#__str_0
   13DC 75 83 72            659 	mov	dph,#(__str_0 >> 8)
   13DF 75 F0 80            660 	mov	b,#0x80
   13E2 C0 02               661 	push	ar2
   13E4 C0 03               662 	push	ar3
   13E6 C0 04               663 	push	ar4
   13E8 C0 07               664 	push	ar7
   13EA C0 00               665 	push	ar0
   13EC 12 11 F7            666 	lcall	_dp_display_text
   13EF D0 00               667 	pop	ar0
   13F1 D0 07               668 	pop	ar7
   13F3 D0 04               669 	pop	ar4
   13F5 D0 03               670 	pop	ar3
   13F7 D0 02               671 	pop	ar2
                    0202    672 	C$misc.c$37$1$1 ==.
                            673 ;	../misc.c:37: for (idx=0;idx<bytes;idx++)
                            674 ;	genPlus
   13F9 90 05 45            675 	mov	dptr,#_dp_display_array_idx_1_1
                            676 ;	genPlusIncr
   13FC 74 01               677 	mov	a,#0x01
   13FE 25 21               678 	add	a,_dp_display_array_sloc0_1_0
   1400 F0                  679 	movx	@dptr,a
   1401 74 00               680 	mov	a,#0x00
   1403 35 22               681 	addc	a,(_dp_display_array_sloc0_1_0 + 1)
   1405 A3                  682 	inc	dptr
   1406 F0                  683 	movx	@dptr,a
                            684 ;	genIpop
   1407 D0 04               685 	pop	ar4
   1409 D0 03               686 	pop	ar3
   140B D0 02               687 	pop	ar2
   140D 02 13 64            688 	ljmp	00101$
   1410                     689 00105$:
                    0219    690 	C$misc.c$43$1$1 ==.
                    0219    691 	XG$dp_display_array$0$0 ==.
   1410 22                  692 	ret
                            693 ;------------------------------------------------------------
                            694 ;Allocation info for local variables in function 'int_to_hex_int'
                            695 ;------------------------------------------------------------
                            696 ;sloc0                     Allocated with name '_int_to_hex_int_sloc0_1_0'
                            697 ;sloc1                     Allocated with name '_int_to_hex_int_sloc1_1_0'
                            698 ;p_result                  Allocated with name '_int_to_hex_int_PARM_2'
                            699 ;result_size               Allocated with name '_int_to_hex_int_PARM_3'
                            700 ;value                     Allocated with name '_int_to_hex_int_value_1_1'
                            701 ;nibble_idx                Allocated with name '_int_to_hex_int_nibble_idx_1_1'
                            702 ;nb_nibbles                Allocated with name '_int_to_hex_int_nb_nibbles_1_1'
                            703 ;conv_array                Allocated with name '_int_to_hex_int_conv_array_1_1'
                            704 ;uvalue                    Allocated with name '_int_to_hex_int_uvalue_1_1'
                            705 ;nibble                    Allocated with name '_int_to_hex_int_nibble_2_2'
                            706 ;------------------------------------------------------------
                    021A    707 	G$int_to_hex_int$0$0 ==.
                    021A    708 	C$misc.c$48$1$1 ==.
                            709 ;	../misc.c:48: DPUINT int_to_hex_int(DPUINT value, uint8_t * p_result, DPUINT result_size)
                            710 ;	-----------------------------------------
                            711 ;	 function int_to_hex_int
                            712 ;	-----------------------------------------
   1411                     713 _int_to_hex_int:
                            714 ;	genReceive
   1411 AA 83               715 	mov	r2,dph
   1413 E5 82               716 	mov	a,dpl
   1415 90 05 4C            717 	mov	dptr,#_int_to_hex_int_value_1_1
   1418 F0                  718 	movx	@dptr,a
   1419 A3                  719 	inc	dptr
   141A EA                  720 	mov	a,r2
   141B F0                  721 	movx	@dptr,a
                    0225    722 	C$misc.c$53$1$1 ==.
                            723 ;	../misc.c:53: nibble_idx = 0;
                            724 ;	genAssign
   141C 90 05 4E            725 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   141F E4                  726 	clr	a
   1420 F0                  727 	movx	@dptr,a
   1421 A3                  728 	inc	dptr
   1422 F0                  729 	movx	@dptr,a
                    022C    730 	C$misc.c$54$1$1 ==.
                            731 ;	../misc.c:54: uvalue = (unsigned int)value;
                            732 ;	genAssign
   1423 90 05 4C            733 	mov	dptr,#_int_to_hex_int_value_1_1
   1426 E0                  734 	movx	a,@dptr
   1427 FA                  735 	mov	r2,a
   1428 A3                  736 	inc	dptr
   1429 E0                  737 	movx	a,@dptr
   142A FB                  738 	mov	r3,a
                            739 ;	genAssign
   142B 90 05 5A            740 	mov	dptr,#_int_to_hex_int_uvalue_1_1
   142E EA                  741 	mov	a,r2
   142F F0                  742 	movx	@dptr,a
   1430 A3                  743 	inc	dptr
   1431 EB                  744 	mov	a,r3
   1432 F0                  745 	movx	@dptr,a
                    023C    746 	C$misc.c$56$2$2 ==.
                            747 ;	../misc.c:56: do {
   1433                     748 00105$:
                    023C    749 	C$misc.c$57$2$2 ==.
                            750 ;	../misc.c:57: int nibble = uvalue & 0x0F;
                            751 ;	genAssign
   1433 90 05 5A            752 	mov	dptr,#_int_to_hex_int_uvalue_1_1
   1436 E0                  753 	movx	a,@dptr
   1437 FA                  754 	mov	r2,a
   1438 A3                  755 	inc	dptr
   1439 E0                  756 	movx	a,@dptr
   143A FB                  757 	mov	r3,a
                            758 ;	genAnd
   143B 53 02 0F            759 	anl	ar2,#0x0F
   143E 7B 00               760 	mov	r3,#0x00
                    0249    761 	C$misc.c$59$2$2 ==.
                            762 ;	../misc.c:59: if ( nibble < 10 )
                            763 ;	genAssign
   1440 8A 04               764 	mov	ar4,r2
   1442 8B 05               765 	mov	ar5,r3
                            766 ;	genCmpLt
                            767 ;	genCmp
   1444 C3                  768 	clr	c
   1445 EC                  769 	mov	a,r4
   1446 94 0A               770 	subb	a,#0x0A
   1448 ED                  771 	mov	a,r5
   1449 64 80               772 	xrl	a,#0x80
   144B 94 80               773 	subb	a,#0x80
                            774 ;	genIfxJump
   144D 40 03               775 	jc	00121$
   144F 02 14 74            776 	ljmp	00102$
   1452                     777 00121$:
                    025B    778 	C$misc.c$60$2$2 ==.
                            779 ;	../misc.c:60: conv_array[nibble_idx] = nibble + '0';
                            780 ;	genAssign
   1452 90 05 4E            781 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   1455 E0                  782 	movx	a,@dptr
   1456 FC                  783 	mov	r4,a
   1457 A3                  784 	inc	dptr
   1458 E0                  785 	movx	a,@dptr
   1459 FD                  786 	mov	r5,a
                            787 ;	genPlus
   145A E5 04               788 	mov	a,ar4
   145C 24 52               789 	add	a,#_int_to_hex_int_conv_array_1_1
   145E F5 82               790 	mov	dpl,a
   1460 E5 05               791 	mov	a,ar5
   1462 34 05               792 	addc	a,#(_int_to_hex_int_conv_array_1_1 >> 8)
   1464 F5 83               793 	mov	dph,a
                            794 ;	genAssign
   1466 8A 04               795 	mov	ar4,r2
   1468 8B 05               796 	mov	ar5,r3
                            797 ;	genCast
                            798 ;	genPlus
                            799 ;	genPlusIncr
   146A 74 30               800 	mov	a,#0x30
   146C 25 04               801 	add	a,ar4
   146E FC                  802 	mov	r4,a
                            803 ;	genPointerSet
                            804 ;     genFarPointerSet
   146F EC                  805 	mov	a,r4
   1470 F0                  806 	movx	@dptr,a
   1471 02 14 8F            807 	ljmp	00103$
   1474                     808 00102$:
                    027D    809 	C$misc.c$62$2$2 ==.
                            810 ;	../misc.c:62: conv_array[nibble_idx] = nibble  - 10 + 'A';
                            811 ;	genAssign
   1474 90 05 4E            812 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   1477 E0                  813 	movx	a,@dptr
   1478 FC                  814 	mov	r4,a
   1479 A3                  815 	inc	dptr
   147A E0                  816 	movx	a,@dptr
   147B FD                  817 	mov	r5,a
                            818 ;	genPlus
   147C E5 04               819 	mov	a,ar4
   147E 24 52               820 	add	a,#_int_to_hex_int_conv_array_1_1
   1480 F5 82               821 	mov	dpl,a
   1482 E5 05               822 	mov	a,ar5
   1484 34 05               823 	addc	a,#(_int_to_hex_int_conv_array_1_1 >> 8)
   1486 F5 83               824 	mov	dph,a
                            825 ;	genAssign
                            826 ;	genCast
                            827 ;	genPlus
                            828 ;	genPlusIncr
   1488 74 37               829 	mov	a,#0x37
   148A 25 02               830 	add	a,ar2
   148C FA                  831 	mov	r2,a
                            832 ;	genPointerSet
                            833 ;     genFarPointerSet
   148D EA                  834 	mov	a,r2
   148E F0                  835 	movx	@dptr,a
   148F                     836 00103$:
                    0298    837 	C$misc.c$63$2$2 ==.
                            838 ;	../misc.c:63: uvalue = (uvalue >> 4);
                            839 ;	genAssign
   148F 90 05 5A            840 	mov	dptr,#_int_to_hex_int_uvalue_1_1
   1492 E0                  841 	movx	a,@dptr
   1493 FA                  842 	mov	r2,a
   1494 A3                  843 	inc	dptr
   1495 E0                  844 	movx	a,@dptr
   1496 FB                  845 	mov	r3,a
                            846 ;	genRightShift
                            847 ;	genRightShiftLiteral
                            848 ;	genrshTwo
   1497 EB                  849 	mov	a,r3
   1498 C4                  850 	swap	a
   1499 CA                  851 	xch	a,r2
   149A C4                  852 	swap	a
   149B 54 0F               853 	anl	a,#0x0f
   149D 6A                  854 	xrl	a,r2
   149E CA                  855 	xch	a,r2
   149F 54 0F               856 	anl	a,#0x0f
   14A1 CA                  857 	xch	a,r2
   14A2 6A                  858 	xrl	a,r2
   14A3 CA                  859 	xch	a,r2
   14A4 FB                  860 	mov	r3,a
                            861 ;	genAssign
   14A5 90 05 5A            862 	mov	dptr,#_int_to_hex_int_uvalue_1_1
   14A8 EA                  863 	mov	a,r2
   14A9 F0                  864 	movx	@dptr,a
   14AA A3                  865 	inc	dptr
   14AB EB                  866 	mov	a,r3
   14AC F0                  867 	movx	@dptr,a
                    02B6    868 	C$misc.c$64$2$2 ==.
                            869 ;	../misc.c:64: nibble_idx++;
                            870 ;	genAssign
   14AD 90 05 4E            871 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   14B0 E0                  872 	movx	a,@dptr
   14B1 FA                  873 	mov	r2,a
   14B2 A3                  874 	inc	dptr
   14B3 E0                  875 	movx	a,@dptr
   14B4 FB                  876 	mov	r3,a
                            877 ;	genPlus
   14B5 90 05 4E            878 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
                            879 ;	genPlusIncr
   14B8 74 01               880 	mov	a,#0x01
   14BA 25 02               881 	add	a,ar2
   14BC F0                  882 	movx	@dptr,a
   14BD 74 00               883 	mov	a,#0x00
   14BF 35 03               884 	addc	a,ar3
   14C1 A3                  885 	inc	dptr
   14C2 F0                  886 	movx	@dptr,a
                    02CC    887 	C$misc.c$65$1$1 ==.
                            888 ;	../misc.c:65: } while ( ( nibble_idx < NB_NIBBLES_IN_INT ) && ( uvalue > 0 ) );
                            889 ;	genAssign
   14C3 90 05 4E            890 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   14C6 E0                  891 	movx	a,@dptr
   14C7 FA                  892 	mov	r2,a
   14C8 A3                  893 	inc	dptr
   14C9 E0                  894 	movx	a,@dptr
   14CA FB                  895 	mov	r3,a
                            896 ;	genCmpLt
                            897 ;	genCmp
   14CB C3                  898 	clr	c
   14CC EA                  899 	mov	a,r2
   14CD 94 08               900 	subb	a,#0x08
   14CF EB                  901 	mov	a,r3
   14D0 64 80               902 	xrl	a,#0x80
   14D2 94 80               903 	subb	a,#0x80
                            904 ;	genIfxJump
   14D4 40 03               905 	jc	00122$
   14D6 02 14 E8            906 	ljmp	00107$
   14D9                     907 00122$:
                            908 ;	genAssign
   14D9 90 05 5A            909 	mov	dptr,#_int_to_hex_int_uvalue_1_1
   14DC E0                  910 	movx	a,@dptr
   14DD FA                  911 	mov	r2,a
   14DE A3                  912 	inc	dptr
   14DF E0                  913 	movx	a,@dptr
   14E0 FB                  914 	mov	r3,a
                            915 ;	genIfx
   14E1 EA                  916 	mov	a,r2
   14E2 4B                  917 	orl	a,r3
                            918 ;	genIfxJump
   14E3 60 03               919 	jz	00123$
   14E5 02 14 33            920 	ljmp	00105$
   14E8                     921 00123$:
   14E8                     922 00107$:
                    02F1    923 	C$misc.c$67$1$1 ==.
                            924 ;	../misc.c:67: nb_nibbles = nibble_idx;
                            925 ;	genAssign
   14E8 90 05 4E            926 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   14EB E0                  927 	movx	a,@dptr
   14EC FA                  928 	mov	r2,a
   14ED A3                  929 	inc	dptr
   14EE E0                  930 	movx	a,@dptr
   14EF FB                  931 	mov	r3,a
                            932 ;	genAssign
   14F0 90 05 50            933 	mov	dptr,#_int_to_hex_int_nb_nibbles_1_1
   14F3 EA                  934 	mov	a,r2
   14F4 F0                  935 	movx	@dptr,a
   14F5 A3                  936 	inc	dptr
   14F6 EB                  937 	mov	a,r3
   14F7 F0                  938 	movx	@dptr,a
                    0301    939 	C$misc.c$68$1$1 ==.
                            940 ;	../misc.c:68: for ( nibble_idx = 0; (nibble_idx < nb_nibbles) && (nibble_idx < result_size) ;nibble_idx++ )
                            941 ;	genAssign
   14F8 90 05 4E            942 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   14FB E4                  943 	clr	a
   14FC F0                  944 	movx	@dptr,a
   14FD A3                  945 	inc	dptr
   14FE F0                  946 	movx	@dptr,a
                            947 ;	genAssign
   14FF 90 05 4A            948 	mov	dptr,#_int_to_hex_int_PARM_3
   1502 E0                  949 	movx	a,@dptr
   1503 FA                  950 	mov	r2,a
   1504 A3                  951 	inc	dptr
   1505 E0                  952 	movx	a,@dptr
   1506 FB                  953 	mov	r3,a
                            954 ;	genAssign
   1507 90 05 47            955 	mov	dptr,#_int_to_hex_int_PARM_2
   150A E0                  956 	movx	a,@dptr
   150B FC                  957 	mov	r4,a
   150C A3                  958 	inc	dptr
   150D E0                  959 	movx	a,@dptr
   150E FD                  960 	mov	r5,a
   150F A3                  961 	inc	dptr
   1510 E0                  962 	movx	a,@dptr
   1511 FE                  963 	mov	r6,a
                            964 ;	genAssign
   1512 90 05 50            965 	mov	dptr,#_int_to_hex_int_nb_nibbles_1_1
   1515 E0                  966 	movx	a,@dptr
   1516 FF                  967 	mov	r7,a
   1517 A3                  968 	inc	dptr
   1518 E0                  969 	movx	a,@dptr
   1519 F8                  970 	mov	r0,a
   151A                     971 00109$:
                            972 ;	genAssign
   151A 90 05 4E            973 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   151D E0                  974 	movx	a,@dptr
   151E F5 25               975 	mov	_int_to_hex_int_sloc0_1_0,a
   1520 A3                  976 	inc	dptr
   1521 E0                  977 	movx	a,@dptr
   1522 F5 26               978 	mov	(_int_to_hex_int_sloc0_1_0 + 1),a
                            979 ;	genCmpLt
                            980 ;	genCmp
   1524 C3                  981 	clr	c
   1525 E5 25               982 	mov	a,_int_to_hex_int_sloc0_1_0
   1527 9F                  983 	subb	a,r7
   1528 E5 26               984 	mov	a,(_int_to_hex_int_sloc0_1_0 + 1)
   152A 64 80               985 	xrl	a,#0x80
   152C 88 F0               986 	mov	b,r0
   152E 63 F0 80            987 	xrl	b,#0x80
   1531 95 F0               988 	subb	a,b
                            989 ;	genIfxJump
   1533 40 03               990 	jc	00124$
   1535 02 15 9D            991 	ljmp	00112$
   1538                     992 00124$:
                            993 ;	genIpush
   1538 C0 04               994 	push	ar4
   153A C0 05               995 	push	ar5
   153C C0 06               996 	push	ar6
                            997 ;	genAssign
   153E A9 25               998 	mov	r1,_int_to_hex_int_sloc0_1_0
   1540 AC 26               999 	mov	r4,(_int_to_hex_int_sloc0_1_0 + 1)
                           1000 ;	genCmpLt
                           1001 ;	genCmp
   1542 C3                 1002 	clr	c
   1543 E9                 1003 	mov	a,r1
   1544 9A                 1004 	subb	a,r2
   1545 EC                 1005 	mov	a,r4
   1546 9B                 1006 	subb	a,r3
   1547 E4                 1007 	clr	a
   1548 33                 1008 	rlc	a
                           1009 ;	genIpop
   1549 D0 06              1010 	pop	ar6
   154B D0 05              1011 	pop	ar5
   154D D0 04              1012 	pop	ar4
                           1013 ;	genIfx
                           1014 ;	genIfxJump
   154F 70 03              1015 	jnz	00125$
   1551 02 15 9D           1016 	ljmp	00112$
   1554                    1017 00125$:
                    035D   1018 	C$misc.c$70$1$1 ==.
                           1019 ;	../misc.c:70: p_result[nibble_idx] = conv_array[nb_nibbles - nibble_idx - 1];
                           1020 ;	genIpush
   1554 C0 02              1021 	push	ar2
   1556 C0 03              1022 	push	ar3
                           1023 ;	genPlus
   1558 E5 25              1024 	mov	a,_int_to_hex_int_sloc0_1_0
   155A 25 04              1025 	add	a,ar4
   155C F5 27              1026 	mov	_int_to_hex_int_sloc1_1_0,a
   155E E5 26              1027 	mov	a,(_int_to_hex_int_sloc0_1_0 + 1)
   1560 35 05              1028 	addc	a,ar5
   1562 F5 28              1029 	mov	(_int_to_hex_int_sloc1_1_0 + 1),a
   1564 8E 29              1030 	mov	(_int_to_hex_int_sloc1_1_0 + 2),r6
                           1031 ;	genCast
   1566 8F 02              1032 	mov	ar2,r7
                           1033 ;	genCast
   1568 AB 25              1034 	mov	r3,_int_to_hex_int_sloc0_1_0
                           1035 ;	genMinus
   156A EA                 1036 	mov	a,r2
   156B C3                 1037 	clr	c
   156C 95 03              1038 	subb	a,ar3
                           1039 ;	genMinus
                           1040 ;	genMinusDec
   156E 14                 1041 	dec	a
                           1042 ;	genPlus
   156F 24 52              1043 	add	a,#_int_to_hex_int_conv_array_1_1
   1571 F5 82              1044 	mov	dpl,a
   1573 74 05              1045 	mov	a,#(_int_to_hex_int_conv_array_1_1 >> 8)
   1575 34 00              1046 	addc	a,#0x00
   1577 F5 83              1047 	mov	dph,a
                           1048 ;	genPointerGet
                           1049 ;	genFarPointerGet
   1579 E0                 1050 	movx	a,@dptr
   157A FA                 1051 	mov	r2,a
                           1052 ;	genPointerSet
                           1053 ;	genGenPointerSet
   157B 85 27 82           1054 	mov	dpl,_int_to_hex_int_sloc1_1_0
   157E 85 28 83           1055 	mov	dph,(_int_to_hex_int_sloc1_1_0 + 1)
   1581 85 29 F0           1056 	mov	b,(_int_to_hex_int_sloc1_1_0 + 2)
   1584 EA                 1057 	mov	a,r2
   1585 12 70 17           1058 	lcall	__gptrput
                    0391   1059 	C$misc.c$68$1$1 ==.
                           1060 ;	../misc.c:68: for ( nibble_idx = 0; (nibble_idx < nb_nibbles) && (nibble_idx < result_size) ;nibble_idx++ )
                           1061 ;	genPlus
   1588 90 05 4E           1062 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
                           1063 ;	genPlusIncr
   158B 74 01              1064 	mov	a,#0x01
   158D 25 25              1065 	add	a,_int_to_hex_int_sloc0_1_0
   158F F0                 1066 	movx	@dptr,a
   1590 74 00              1067 	mov	a,#0x00
   1592 35 26              1068 	addc	a,(_int_to_hex_int_sloc0_1_0 + 1)
   1594 A3                 1069 	inc	dptr
   1595 F0                 1070 	movx	@dptr,a
                           1071 ;	genIpop
   1596 D0 03              1072 	pop	ar3
   1598 D0 02              1073 	pop	ar2
   159A 02 15 1A           1074 	ljmp	00109$
   159D                    1075 00112$:
                    03A6   1076 	C$misc.c$72$1$1 ==.
                           1077 ;	../misc.c:72: return nibble_idx;
                           1078 ;	genAssign
   159D 90 05 4E           1079 	mov	dptr,#_int_to_hex_int_nibble_idx_1_1
   15A0 E0                 1080 	movx	a,@dptr
   15A1 FA                 1081 	mov	r2,a
   15A2 A3                 1082 	inc	dptr
   15A3 E0                 1083 	movx	a,@dptr
   15A4 FB                 1084 	mov	r3,a
                           1085 ;	genRet
   15A5 8A 82              1086 	mov	dpl,r2
   15A7 8B 83              1087 	mov	dph,r3
   15A9                    1088 00113$:
                    03B2   1089 	C$misc.c$73$1$1 ==.
                    03B2   1090 	XG$int_to_hex_int$0$0 ==.
   15A9 22                 1091 	ret
                           1092 ;------------------------------------------------------------
                           1093 ;Allocation info for local variables in function 'int_to_dec_int'
                           1094 ;------------------------------------------------------------
                           1095 ;sloc0                     Allocated with name '_int_to_dec_int_sloc0_1_0'
                           1096 ;p_result                  Allocated with name '_int_to_dec_int_PARM_2'
                           1097 ;value                     Allocated with name '_int_to_dec_int_value_1_1'
                           1098 ;conv_array                Allocated with name '_int_to_dec_int_conv_array_1_1'
                           1099 ;uvalue                    Allocated with name '_int_to_dec_int_uvalue_1_1'
                           1100 ;remainder                 Allocated with name '_int_to_dec_int_remainder_1_1'
                           1101 ;digit_idx                 Allocated with name '_int_to_dec_int_digit_idx_1_1'
                           1102 ;nb_digits                 Allocated with name '_int_to_dec_int_nb_digits_1_1'
                           1103 ;------------------------------------------------------------
                    03B3   1104 	G$int_to_dec_int$0$0 ==.
                    03B3   1105 	C$misc.c$75$1$1 ==.
                           1106 ;	../misc.c:75: DPUINT int_to_dec_int(DPUINT value, uint8_t * p_result)
                           1107 ;	-----------------------------------------
                           1108 ;	 function int_to_dec_int
                           1109 ;	-----------------------------------------
   15AA                    1110 _int_to_dec_int:
                           1111 ;	genReceive
   15AA AA 83              1112 	mov	r2,dph
   15AC E5 82              1113 	mov	a,dpl
   15AE 90 05 5F           1114 	mov	dptr,#_int_to_dec_int_value_1_1
   15B1 F0                 1115 	movx	@dptr,a
   15B2 A3                 1116 	inc	dptr
   15B3 EA                 1117 	mov	a,r2
   15B4 F0                 1118 	movx	@dptr,a
                    03BE   1119 	C$misc.c$83$1$1 ==.
                           1120 ;	../misc.c:83: uvalue = (unsigned int)value;
                           1121 ;	genAssign
   15B5 90 05 5F           1122 	mov	dptr,#_int_to_dec_int_value_1_1
   15B8 E0                 1123 	movx	a,@dptr
   15B9 FA                 1124 	mov	r2,a
   15BA A3                 1125 	inc	dptr
   15BB E0                 1126 	movx	a,@dptr
   15BC FB                 1127 	mov	r3,a
                           1128 ;	genAssign
   15BD 90 05 69           1129 	mov	dptr,#_int_to_dec_int_uvalue_1_1
   15C0 EA                 1130 	mov	a,r2
   15C1 F0                 1131 	movx	@dptr,a
   15C2 A3                 1132 	inc	dptr
   15C3 EB                 1133 	mov	a,r3
   15C4 F0                 1134 	movx	@dptr,a
                    03CE   1135 	C$misc.c$84$1$1 ==.
                           1136 ;	../misc.c:84: digit_idx=0;
                           1137 ;	genAssign
   15C5 90 05 6B           1138 	mov	dptr,#_int_to_dec_int_digit_idx_1_1
   15C8 E4                 1139 	clr	a
   15C9 F0                 1140 	movx	@dptr,a
   15CA A3                 1141 	inc	dptr
   15CB F0                 1142 	movx	@dptr,a
                    03D5   1143 	C$misc.c$85$1$1 ==.
                           1144 ;	../misc.c:85: if (uvalue)
                           1145 ;	genIfx
   15CC EA                 1146 	mov	a,r2
   15CD 4B                 1147 	orl	a,r3
                           1148 ;	genIfxJump
   15CE 70 03              1149 	jnz	00117$
   15D0 02 16 4F           1150 	ljmp	00105$
   15D3                    1151 00117$:
                    03DC   1152 	C$misc.c$87$3$3 ==.
                           1153 ;	../misc.c:87: while (uvalue)
   15D3                    1154 00101$:
                           1155 ;	genAssign
   15D3 90 05 69           1156 	mov	dptr,#_int_to_dec_int_uvalue_1_1
   15D6 E0                 1157 	movx	a,@dptr
   15D7 FA                 1158 	mov	r2,a
   15D8 A3                 1159 	inc	dptr
   15D9 E0                 1160 	movx	a,@dptr
   15DA FB                 1161 	mov	r3,a
                           1162 ;	genIfx
   15DB EA                 1163 	mov	a,r2
   15DC 4B                 1164 	orl	a,r3
                           1165 ;	genIfxJump
   15DD 70 03              1166 	jnz	00118$
   15DF 02 16 5E           1167 	ljmp	00106$
   15E2                    1168 00118$:
                    03EB   1169 	C$misc.c$89$1$1 ==.
                           1170 ;	../misc.c:89: remainder = uvalue % 10;
                           1171 ;	genAssign
   15E2 90 0D 9B           1172 	mov	dptr,#__moduint_PARM_2
   15E5 74 0A              1173 	mov	a,#0x0A
   15E7 F0                 1174 	movx	@dptr,a
   15E8 E4                 1175 	clr	a
   15E9 A3                 1176 	inc	dptr
   15EA F0                 1177 	movx	@dptr,a
                    03F4   1178 	C$misc.c$90$1$1 ==.
                           1179 ;	../misc.c:90: conv_array[digit_idx] = remainder + '0';
                           1180 ;	genCall
   15EB 8A 82              1181 	mov	dpl,r2
   15ED 8B 83              1182 	mov	dph,r3
   15EF C0 02              1183 	push	ar2
   15F1 C0 03              1184 	push	ar3
   15F3 12 70 BC           1185 	lcall	__moduint
   15F6 AC 82              1186 	mov	r4,dpl
   15F8 AD 83              1187 	mov	r5,dph
   15FA D0 03              1188 	pop	ar3
   15FC D0 02              1189 	pop	ar2
                           1190 ;	genAssign
   15FE 90 05 6B           1191 	mov	dptr,#_int_to_dec_int_digit_idx_1_1
   1601 E0                 1192 	movx	a,@dptr
   1602 FE                 1193 	mov	r6,a
   1603 A3                 1194 	inc	dptr
   1604 E0                 1195 	movx	a,@dptr
   1605 FF                 1196 	mov	r7,a
                           1197 ;	genPlus
   1606 E5 06              1198 	mov	a,ar6
   1608 24 61              1199 	add	a,#_int_to_dec_int_conv_array_1_1
   160A F5 82              1200 	mov	dpl,a
   160C E5 07              1201 	mov	a,ar7
   160E 34 05              1202 	addc	a,#(_int_to_dec_int_conv_array_1_1 >> 8)
   1610 F5 83              1203 	mov	dph,a
                           1204 ;	genCast
                           1205 ;	genPlus
                           1206 ;	genPlusIncr
   1612 74 30              1207 	mov	a,#0x30
   1614 25 04              1208 	add	a,ar4
   1616 FC                 1209 	mov	r4,a
                           1210 ;	genPointerSet
                           1211 ;     genFarPointerSet
   1617 EC                 1212 	mov	a,r4
   1618 F0                 1213 	movx	@dptr,a
                    0422   1214 	C$misc.c$91$1$1 ==.
                           1215 ;	../misc.c:91: uvalue /= 10;
                           1216 ;	genAssign
   1619 90 0D 8E           1217 	mov	dptr,#__divuint_PARM_2
   161C 74 0A              1218 	mov	a,#0x0A
   161E F0                 1219 	movx	@dptr,a
   161F E4                 1220 	clr	a
   1620 A3                 1221 	inc	dptr
   1621 F0                 1222 	movx	@dptr,a
                           1223 ;	genCall
   1622 8A 82              1224 	mov	dpl,r2
   1624 8B 83              1225 	mov	dph,r3
   1626 C0 06              1226 	push	ar6
   1628 C0 07              1227 	push	ar7
   162A 12 6F 7D           1228 	lcall	__divuint
   162D E5 82              1229 	mov	a,dpl
   162F 85 83 F0           1230 	mov	b,dph
   1632 D0 07              1231 	pop	ar7
   1634 D0 06              1232 	pop	ar6
                           1233 ;	genAssign
   1636 90 05 69           1234 	mov	dptr,#_int_to_dec_int_uvalue_1_1
   1639 F0                 1235 	movx	@dptr,a
   163A A3                 1236 	inc	dptr
   163B E5 F0              1237 	mov	a,b
   163D F0                 1238 	movx	@dptr,a
                    0447   1239 	C$misc.c$92$3$3 ==.
                           1240 ;	../misc.c:92: digit_idx++;
                           1241 ;	genPlus
   163E 90 05 6B           1242 	mov	dptr,#_int_to_dec_int_digit_idx_1_1
                           1243 ;	genPlusIncr
   1641 74 01              1244 	mov	a,#0x01
   1643 25 06              1245 	add	a,ar6
   1645 F0                 1246 	movx	@dptr,a
   1646 74 00              1247 	mov	a,#0x00
   1648 35 07              1248 	addc	a,ar7
   164A A3                 1249 	inc	dptr
   164B F0                 1250 	movx	@dptr,a
   164C 02 15 D3           1251 	ljmp	00101$
   164F                    1252 00105$:
                    0458   1253 	C$misc.c$97$2$4 ==.
                           1254 ;	../misc.c:97: conv_array[digit_idx] = '0';
                           1255 ;	genPointerSet
                           1256 ;     genFarPointerSet
   164F 90 05 61           1257 	mov	dptr,#_int_to_dec_int_conv_array_1_1
   1652 74 30              1258 	mov	a,#0x30
   1654 F0                 1259 	movx	@dptr,a
                    045E   1260 	C$misc.c$98$2$4 ==.
                           1261 ;	../misc.c:98: digit_idx++;
                           1262 ;	genAssign
   1655 90 05 6B           1263 	mov	dptr,#_int_to_dec_int_digit_idx_1_1
   1658 74 01              1264 	mov	a,#0x01
   165A F0                 1265 	movx	@dptr,a
   165B E4                 1266 	clr	a
   165C A3                 1267 	inc	dptr
   165D F0                 1268 	movx	@dptr,a
   165E                    1269 00106$:
                    0467   1270 	C$misc.c$102$1$1 ==.
                           1271 ;	../misc.c:102: nb_digits = digit_idx;
                           1272 ;	genAssign
   165E 90 05 6B           1273 	mov	dptr,#_int_to_dec_int_digit_idx_1_1
   1661 E0                 1274 	movx	a,@dptr
   1662 FA                 1275 	mov	r2,a
   1663 A3                 1276 	inc	dptr
   1664 E0                 1277 	movx	a,@dptr
   1665 FB                 1278 	mov	r3,a
                           1279 ;	genAssign
   1666 90 05 6D           1280 	mov	dptr,#_int_to_dec_int_nb_digits_1_1
   1669 EA                 1281 	mov	a,r2
   166A F0                 1282 	movx	@dptr,a
   166B A3                 1283 	inc	dptr
   166C EB                 1284 	mov	a,r3
   166D F0                 1285 	movx	@dptr,a
                    0477   1286 	C$misc.c$103$1$1 ==.
                           1287 ;	../misc.c:103: for ( digit_idx = 0; (digit_idx < nb_digits); digit_idx++ )
                           1288 ;	genAssign
   166E 90 05 6B           1289 	mov	dptr,#_int_to_dec_int_digit_idx_1_1
   1671 E4                 1290 	clr	a
   1672 F0                 1291 	movx	@dptr,a
   1673 A3                 1292 	inc	dptr
   1674 F0                 1293 	movx	@dptr,a
                           1294 ;	genAssign
   1675 90 05 5C           1295 	mov	dptr,#_int_to_dec_int_PARM_2
   1678 E0                 1296 	movx	a,@dptr
   1679 F5 2A              1297 	mov	_int_to_dec_int_sloc0_1_0,a
   167B A3                 1298 	inc	dptr
   167C E0                 1299 	movx	a,@dptr
   167D F5 2B              1300 	mov	(_int_to_dec_int_sloc0_1_0 + 1),a
   167F A3                 1301 	inc	dptr
   1680 E0                 1302 	movx	a,@dptr
   1681 F5 2C              1303 	mov	(_int_to_dec_int_sloc0_1_0 + 2),a
                           1304 ;	genAssign
   1683 90 05 6D           1305 	mov	dptr,#_int_to_dec_int_nb_digits_1_1
   1686 E0                 1306 	movx	a,@dptr
   1687 FD                 1307 	mov	r5,a
   1688 A3                 1308 	inc	dptr
   1689 E0                 1309 	movx	a,@dptr
   168A FE                 1310 	mov	r6,a
   168B                    1311 00107$:
                           1312 ;	genAssign
   168B 90 05 6B           1313 	mov	dptr,#_int_to_dec_int_digit_idx_1_1
   168E E0                 1314 	movx	a,@dptr
   168F FF                 1315 	mov	r7,a
   1690 A3                 1316 	inc	dptr
   1691 E0                 1317 	movx	a,@dptr
   1692 F8                 1318 	mov	r0,a
                           1319 ;	genCmpLt
                           1320 ;	genCmp
   1693 C3                 1321 	clr	c
   1694 EF                 1322 	mov	a,r7
   1695 9D                 1323 	subb	a,r5
   1696 E8                 1324 	mov	a,r0
   1697 9E                 1325 	subb	a,r6
                           1326 ;	genIfxJump
   1698 40 03              1327 	jc	00119$
   169A 02 16 E1           1328 	ljmp	00110$
   169D                    1329 00119$:
                    04A6   1330 	C$misc.c$105$2$5 ==.
                           1331 ;	../misc.c:105: p_result[digit_idx] = conv_array[nb_digits - digit_idx - 1];
                           1332 ;	genPlus
   169D E5 07              1333 	mov	a,ar7
   169F 25 2A              1334 	add	a,_int_to_dec_int_sloc0_1_0
   16A1 F9                 1335 	mov	r1,a
   16A2 E5 00              1336 	mov	a,ar0
   16A4 35 2B              1337 	addc	a,(_int_to_dec_int_sloc0_1_0 + 1)
   16A6 FA                 1338 	mov	r2,a
   16A7 AB 2C              1339 	mov	r3,(_int_to_dec_int_sloc0_1_0 + 2)
                           1340 ;	genCast
   16A9 8D 04              1341 	mov	ar4,r5
                           1342 ;	genIpush
   16AB C0 05              1343 	push	ar5
   16AD C0 06              1344 	push	ar6
                           1345 ;	genCast
   16AF 8F 05              1346 	mov	ar5,r7
                           1347 ;	genMinus
   16B1 EC                 1348 	mov	a,r4
   16B2 C3                 1349 	clr	c
   16B3 95 05              1350 	subb	a,ar5
                           1351 ;	genMinus
                           1352 ;	genMinusDec
   16B5 14                 1353 	dec	a
                           1354 ;	genPlus
   16B6 24 61              1355 	add	a,#_int_to_dec_int_conv_array_1_1
   16B8 F5 82              1356 	mov	dpl,a
   16BA 74 05              1357 	mov	a,#(_int_to_dec_int_conv_array_1_1 >> 8)
   16BC 34 00              1358 	addc	a,#0x00
   16BE F5 83              1359 	mov	dph,a
                           1360 ;	genPointerGet
                           1361 ;	genFarPointerGet
   16C0 E0                 1362 	movx	a,@dptr
   16C1 FC                 1363 	mov	r4,a
                           1364 ;	genPointerSet
                           1365 ;	genGenPointerSet
   16C2 89 82              1366 	mov	dpl,r1
   16C4 8A 83              1367 	mov	dph,r2
   16C6 8B F0              1368 	mov	b,r3
   16C8 EC                 1369 	mov	a,r4
   16C9 12 70 17           1370 	lcall	__gptrput
                    04D5   1371 	C$misc.c$103$1$1 ==.
                           1372 ;	../misc.c:103: for ( digit_idx = 0; (digit_idx < nb_digits); digit_idx++ )
                           1373 ;	genPlus
   16CC 90 05 6B           1374 	mov	dptr,#_int_to_dec_int_digit_idx_1_1
                           1375 ;	genPlusIncr
   16CF 74 01              1376 	mov	a,#0x01
   16D1 25 07              1377 	add	a,ar7
   16D3 F0                 1378 	movx	@dptr,a
   16D4 74 00              1379 	mov	a,#0x00
   16D6 35 00              1380 	addc	a,ar0
   16D8 A3                 1381 	inc	dptr
   16D9 F0                 1382 	movx	@dptr,a
                           1383 ;	genIpop
   16DA D0 06              1384 	pop	ar6
   16DC D0 05              1385 	pop	ar5
   16DE 02 16 8B           1386 	ljmp	00107$
   16E1                    1387 00110$:
                    04EA   1388 	C$misc.c$107$1$1 ==.
                           1389 ;	../misc.c:107: return digit_idx;
                           1390 ;	genRet
   16E1 8F 82              1391 	mov	dpl,r7
   16E3 88 83              1392 	mov	dph,r0
   16E5                    1393 00111$:
                    04EE   1394 	C$misc.c$108$1$1 ==.
                    04EE   1395 	XG$int_to_dec_int$0$0 ==.
   16E5 22                 1396 	ret
                           1397 ;------------------------------------------------------------
                           1398 ;Allocation info for local variables in function 'xatoi'
                           1399 ;------------------------------------------------------------
                           1400 ;sloc0                     Allocated with name '_xatoi_sloc0_1_0'
                           1401 ;res                       Allocated with name '_xatoi_PARM_2'
                           1402 ;str                       Allocated with name '_xatoi_str_1_1'
                           1403 ;val                       Allocated with name '_xatoi_val_1_1'
                           1404 ;c                         Allocated with name '_xatoi_c_1_1'
                           1405 ;r                         Allocated with name '_xatoi_r_1_1'
                           1406 ;s                         Allocated with name '_xatoi_s_1_1'
                           1407 ;------------------------------------------------------------
                    04EF   1408 	G$xatoi$0$0 ==.
                    04EF   1409 	C$misc.c$115$1$1 ==.
                           1410 ;	../misc.c:115: int xatoi (                                             /* 0:Failed, 1:Successful */
                           1411 ;	-----------------------------------------
                           1412 ;	 function xatoi
                           1413 ;	-----------------------------------------
   16E6                    1414 _xatoi:
                           1415 ;	genReceive
   16E6 AA F0              1416 	mov	r2,b
   16E8 AB 83              1417 	mov	r3,dph
   16EA E5 82              1418 	mov	a,dpl
   16EC 90 05 72           1419 	mov	dptr,#_xatoi_str_1_1
   16EF F0                 1420 	movx	@dptr,a
   16F0 A3                 1421 	inc	dptr
   16F1 EB                 1422 	mov	a,r3
   16F2 F0                 1423 	movx	@dptr,a
   16F3 A3                 1424 	inc	dptr
   16F4 EA                 1425 	mov	a,r2
   16F5 F0                 1426 	movx	@dptr,a
                    04FF   1427 	C$misc.c$121$1$1 ==.
                           1428 ;	../misc.c:121: unsigned char c, r, s = 0;
                           1429 ;	genAssign
   16F6 90 05 7B           1430 	mov	dptr,#_xatoi_s_1_1
   16F9 74 00              1431 	mov	a,#0x00
   16FB F0                 1432 	movx	@dptr,a
                    0505   1433 	C$misc.c$124$1$1 ==.
                           1434 ;	../misc.c:124: *res = 0;
                           1435 ;	genAssign
   16FC 90 05 6F           1436 	mov	dptr,#_xatoi_PARM_2
   16FF E0                 1437 	movx	a,@dptr
   1700 FA                 1438 	mov	r2,a
   1701 A3                 1439 	inc	dptr
   1702 E0                 1440 	movx	a,@dptr
   1703 FB                 1441 	mov	r3,a
   1704 A3                 1442 	inc	dptr
   1705 E0                 1443 	movx	a,@dptr
   1706 FC                 1444 	mov	r4,a
                           1445 ;	genPointerSet
                           1446 ;	genGenPointerSet
   1707 8A 82              1447 	mov	dpl,r2
   1709 8B 83              1448 	mov	dph,r3
   170B 8C F0              1449 	mov	b,r4
   170D 74 00              1450 	mov	a,#0x00
   170F 12 70 17           1451 	lcall	__gptrput
   1712 A3                 1452 	inc	dptr
   1713 74 00              1453 	mov	a,#0x00
   1715 12 70 17           1454 	lcall	__gptrput
                    0521   1455 	C$misc.c$126$1$1 ==.
                           1456 ;	../misc.c:126: while ((c = **str) == ' ') (*str)++;               /* Skip leading spaces */
   1718                    1457 00101$:
                           1458 ;	genIpush
   1718 C0 02              1459 	push	ar2
   171A C0 03              1460 	push	ar3
   171C C0 04              1461 	push	ar4
                           1462 ;	genAssign
   171E 90 05 72           1463 	mov	dptr,#_xatoi_str_1_1
   1721 E0                 1464 	movx	a,@dptr
   1722 FD                 1465 	mov	r5,a
   1723 A3                 1466 	inc	dptr
   1724 E0                 1467 	movx	a,@dptr
   1725 FE                 1468 	mov	r6,a
   1726 A3                 1469 	inc	dptr
   1727 E0                 1470 	movx	a,@dptr
   1728 FF                 1471 	mov	r7,a
                           1472 ;	genPointerGet
                           1473 ;	genGenPointerGet
   1729 8D 82              1474 	mov	dpl,r5
   172B 8E 83              1475 	mov	dph,r6
   172D 8F F0              1476 	mov	b,r7
   172F 12 71 69           1477 	lcall	__gptrget
   1732 F8                 1478 	mov	r0,a
   1733 A3                 1479 	inc	dptr
   1734 12 71 69           1480 	lcall	__gptrget
   1737 F9                 1481 	mov	r1,a
   1738 A3                 1482 	inc	dptr
   1739 12 71 69           1483 	lcall	__gptrget
   173C FA                 1484 	mov	r2,a
                           1485 ;	genPointerGet
                           1486 ;	genGenPointerGet
   173D 88 82              1487 	mov	dpl,r0
   173F 89 83              1488 	mov	dph,r1
   1741 8A F0              1489 	mov	b,r2
   1743 12 71 69           1490 	lcall	__gptrget
   1746 F8                 1491 	mov	r0,a
                           1492 ;	genAssign
   1747 90 05 79           1493 	mov	dptr,#_xatoi_c_1_1
   174A E8                 1494 	mov	a,r0
   174B F0                 1495 	movx	@dptr,a
                           1496 ;	genCmpEq
                           1497 ;	gencjne
                           1498 ;	gencjneshort
   174C B8 20 04           1499 	cjne	r0,#0x20,00155$
   174F 74 01              1500 	mov	a,#0x01
   1751 80 01              1501 	sjmp	00156$
   1753                    1502 00155$:
   1753 E4                 1503 	clr	a
   1754                    1504 00156$:
                           1505 ;	genIpop
   1754 D0 04              1506 	pop	ar4
   1756 D0 03              1507 	pop	ar3
   1758 D0 02              1508 	pop	ar2
                           1509 ;	genIfx
                           1510 ;	genIfxJump
   175A 70 03              1511 	jnz	00157$
   175C 02 17 9B           1512 	ljmp	00103$
   175F                    1513 00157$:
                           1514 ;	genIpush
   175F C0 02              1515 	push	ar2
   1761 C0 03              1516 	push	ar3
   1763 C0 04              1517 	push	ar4
                           1518 ;	genPointerGet
                           1519 ;	genGenPointerGet
   1765 8D 82              1520 	mov	dpl,r5
   1767 8E 83              1521 	mov	dph,r6
   1769 8F F0              1522 	mov	b,r7
   176B 12 71 69           1523 	lcall	__gptrget
   176E F8                 1524 	mov	r0,a
   176F A3                 1525 	inc	dptr
   1770 12 71 69           1526 	lcall	__gptrget
   1773 F9                 1527 	mov	r1,a
   1774 A3                 1528 	inc	dptr
   1775 12 71 69           1529 	lcall	__gptrget
   1778 FA                 1530 	mov	r2,a
                           1531 ;	genPlus
                           1532 ;	genPlusIncr
   1779 08                 1533 	inc	r0
   177A B8 00 01           1534 	cjne	r0,#0x00,00158$
   177D 09                 1535 	inc	r1
   177E                    1536 00158$:
                           1537 ;	genPointerSet
                           1538 ;	genGenPointerSet
   177E 8D 82              1539 	mov	dpl,r5
   1780 8E 83              1540 	mov	dph,r6
   1782 8F F0              1541 	mov	b,r7
   1784 E8                 1542 	mov	a,r0
   1785 12 70 17           1543 	lcall	__gptrput
   1788 A3                 1544 	inc	dptr
   1789 E9                 1545 	mov	a,r1
   178A 12 70 17           1546 	lcall	__gptrput
   178D A3                 1547 	inc	dptr
   178E EA                 1548 	mov	a,r2
   178F 12 70 17           1549 	lcall	__gptrput
                           1550 ;	genIpop
   1792 D0 04              1551 	pop	ar4
   1794 D0 03              1552 	pop	ar3
   1796 D0 02              1553 	pop	ar2
   1798 02 17 18           1554 	ljmp	00101$
   179B                    1555 00103$:
                    05A4   1556 	C$misc.c$128$1$1 ==.
                           1557 ;	../misc.c:128: if (c == '-') {                         /* negative? */
                           1558 ;	genCmpEq
                           1559 ;	gencjneshort
   179B B8 2D 02           1560 	cjne	r0,#0x2D,00159$
   179E 80 03              1561 	sjmp	00160$
   17A0                    1562 00159$:
   17A0 02 17 F1           1563 	ljmp	00105$
   17A3                    1564 00160$:
                    05AC   1565 	C$misc.c$129$1$1 ==.
                           1566 ;	../misc.c:129: s = 1;
                           1567 ;	genIpush
   17A3 C0 02              1568 	push	ar2
   17A5 C0 03              1569 	push	ar3
   17A7 C0 04              1570 	push	ar4
                           1571 ;	genAssign
   17A9 90 05 7B           1572 	mov	dptr,#_xatoi_s_1_1
   17AC 74 01              1573 	mov	a,#0x01
   17AE F0                 1574 	movx	@dptr,a
                    05B8   1575 	C$misc.c$130$2$2 ==.
                           1576 ;	../misc.c:130: c = *(++(*str));
                           1577 ;	genPointerGet
                           1578 ;	genGenPointerGet
   17AF 8D 82              1579 	mov	dpl,r5
   17B1 8E 83              1580 	mov	dph,r6
   17B3 8F F0              1581 	mov	b,r7
   17B5 12 71 69           1582 	lcall	__gptrget
   17B8 F8                 1583 	mov	r0,a
   17B9 A3                 1584 	inc	dptr
   17BA 12 71 69           1585 	lcall	__gptrget
   17BD F9                 1586 	mov	r1,a
   17BE A3                 1587 	inc	dptr
   17BF 12 71 69           1588 	lcall	__gptrget
   17C2 FA                 1589 	mov	r2,a
                           1590 ;	genPlus
                           1591 ;	genPlusIncr
   17C3 08                 1592 	inc	r0
   17C4 B8 00 01           1593 	cjne	r0,#0x00,00161$
   17C7 09                 1594 	inc	r1
   17C8                    1595 00161$:
                           1596 ;	genPointerSet
                           1597 ;	genGenPointerSet
   17C8 8D 82              1598 	mov	dpl,r5
   17CA 8E 83              1599 	mov	dph,r6
   17CC 8F F0              1600 	mov	b,r7
   17CE E8                 1601 	mov	a,r0
   17CF 12 70 17           1602 	lcall	__gptrput
   17D2 A3                 1603 	inc	dptr
   17D3 E9                 1604 	mov	a,r1
   17D4 12 70 17           1605 	lcall	__gptrput
   17D7 A3                 1606 	inc	dptr
   17D8 EA                 1607 	mov	a,r2
   17D9 12 70 17           1608 	lcall	__gptrput
                           1609 ;	genPointerGet
                           1610 ;	genGenPointerGet
   17DC 88 82              1611 	mov	dpl,r0
   17DE 89 83              1612 	mov	dph,r1
   17E0 8A F0              1613 	mov	b,r2
   17E2 12 71 69           1614 	lcall	__gptrget
   17E5 F8                 1615 	mov	r0,a
                           1616 ;	genAssign
   17E6 90 05 79           1617 	mov	dptr,#_xatoi_c_1_1
   17E9 E8                 1618 	mov	a,r0
   17EA F0                 1619 	movx	@dptr,a
                    05F4   1620 	C$misc.c$171$1$1 ==.
                           1621 ;	../misc.c:171: return 1;
                           1622 ;	genIpop
   17EB D0 04              1623 	pop	ar4
   17ED D0 03              1624 	pop	ar3
   17EF D0 02              1625 	pop	ar2
                    05FA   1626 	C$misc.c$130$1$1 ==.
                           1627 ;	../misc.c:130: c = *(++(*str));
   17F1                    1628 00105$:
                    05FA   1629 	C$misc.c$133$1$1 ==.
                           1630 ;	../misc.c:133: if (c == '0') {
                           1631 ;	genAssign
   17F1 90 05 79           1632 	mov	dptr,#_xatoi_c_1_1
   17F4 E0                 1633 	movx	a,@dptr
   17F5 FD                 1634 	mov	r5,a
                           1635 ;	genCmpEq
                           1636 ;	gencjneshort
   17F6 BD 30 02           1637 	cjne	r5,#0x30,00162$
   17F9 80 03              1638 	sjmp	00163$
   17FB                    1639 00162$:
   17FB 02 19 5F           1640 	ljmp	00121$
   17FE                    1641 00163$:
                    0607   1642 	C$misc.c$134$1$1 ==.
                           1643 ;	../misc.c:134: c = *(++(*str));
                           1644 ;	genIpush
   17FE C0 02              1645 	push	ar2
   1800 C0 03              1646 	push	ar3
   1802 C0 04              1647 	push	ar4
                           1648 ;	genAssign
   1804 90 05 72           1649 	mov	dptr,#_xatoi_str_1_1
   1807 E0                 1650 	movx	a,@dptr
   1808 FE                 1651 	mov	r6,a
   1809 A3                 1652 	inc	dptr
   180A E0                 1653 	movx	a,@dptr
   180B FF                 1654 	mov	r7,a
   180C A3                 1655 	inc	dptr
   180D E0                 1656 	movx	a,@dptr
   180E F8                 1657 	mov	r0,a
                           1658 ;	genPointerGet
                           1659 ;	genGenPointerGet
   180F 8E 82              1660 	mov	dpl,r6
   1811 8F 83              1661 	mov	dph,r7
   1813 88 F0              1662 	mov	b,r0
   1815 12 71 69           1663 	lcall	__gptrget
   1818 F9                 1664 	mov	r1,a
   1819 A3                 1665 	inc	dptr
   181A 12 71 69           1666 	lcall	__gptrget
   181D FA                 1667 	mov	r2,a
   181E A3                 1668 	inc	dptr
   181F 12 71 69           1669 	lcall	__gptrget
   1822 FB                 1670 	mov	r3,a
                           1671 ;	genPlus
                           1672 ;	genPlusIncr
   1823 09                 1673 	inc	r1
   1824 B9 00 01           1674 	cjne	r1,#0x00,00164$
   1827 0A                 1675 	inc	r2
   1828                    1676 00164$:
                           1677 ;	genPointerSet
                           1678 ;	genGenPointerSet
   1828 8E 82              1679 	mov	dpl,r6
   182A 8F 83              1680 	mov	dph,r7
   182C 88 F0              1681 	mov	b,r0
   182E E9                 1682 	mov	a,r1
   182F 12 70 17           1683 	lcall	__gptrput
   1832 A3                 1684 	inc	dptr
   1833 EA                 1685 	mov	a,r2
   1834 12 70 17           1686 	lcall	__gptrput
   1837 A3                 1687 	inc	dptr
   1838 EB                 1688 	mov	a,r3
   1839 12 70 17           1689 	lcall	__gptrput
                           1690 ;	genPointerGet
                           1691 ;	genGenPointerGet
   183C 89 82              1692 	mov	dpl,r1
   183E 8A 83              1693 	mov	dph,r2
   1840 8B F0              1694 	mov	b,r3
   1842 12 71 69           1695 	lcall	__gptrget
   1845 FD                 1696 	mov	r5,a
                           1697 ;	genAssign
   1846 90 05 79           1698 	mov	dptr,#_xatoi_c_1_1
   1849 ED                 1699 	mov	a,r5
   184A F0                 1700 	movx	@dptr,a
                    0654   1701 	C$misc.c$135$2$3 ==.
                           1702 ;	../misc.c:135: switch (c) {
                           1703 ;	genCmpEq
                           1704 ;	gencjne
                           1705 ;	gencjneshort
   184B BD 42 04           1706 	cjne	r5,#0x42,00165$
   184E 74 01              1707 	mov	a,#0x01
   1850 80 01              1708 	sjmp	00166$
   1852                    1709 00165$:
   1852 E4                 1710 	clr	a
   1853                    1711 00166$:
                           1712 ;	genIpop
   1853 D0 04              1713 	pop	ar4
   1855 D0 03              1714 	pop	ar3
   1857 D0 02              1715 	pop	ar2
                           1716 ;	genIfx
                           1717 ;	genIfxJump
   1859 60 03              1718 	jz	00167$
   185B 02 18 CE           1719 	ljmp	00109$
   185E                    1720 00167$:
                           1721 ;	genCmpEq
                           1722 ;	gencjneshort
   185E BD 58 03           1723 	cjne	r5,#0x58,00168$
   1861 02 18 72           1724 	ljmp	00107$
   1864                    1725 00168$:
                           1726 ;	genCmpEq
                           1727 ;	gencjneshort
   1864 BD 62 03           1728 	cjne	r5,#0x62,00169$
   1867 02 18 CE           1729 	ljmp	00109$
   186A                    1730 00169$:
                           1731 ;	genCmpEq
                           1732 ;	gencjneshort
   186A BD 78 02           1733 	cjne	r5,#0x78,00170$
   186D 80 03              1734 	sjmp	00171$
   186F                    1735 00170$:
   186F 02 19 2A           1736 	ljmp	00110$
   1872                    1737 00171$:
                    067B   1738 	C$misc.c$137$3$4 ==.
                           1739 ;	../misc.c:137: case 'X':
   1872                    1740 00107$:
                    067B   1741 	C$misc.c$139$1$1 ==.
                           1742 ;	../misc.c:139: r = 16; c = *(++(*str));
                           1743 ;	genIpush
   1872 C0 02              1744 	push	ar2
   1874 C0 03              1745 	push	ar3
   1876 C0 04              1746 	push	ar4
                           1747 ;	genAssign
   1878 90 05 7A           1748 	mov	dptr,#_xatoi_r_1_1
   187B 74 10              1749 	mov	a,#0x10
   187D F0                 1750 	movx	@dptr,a
                           1751 ;	genAssign
   187E 90 05 72           1752 	mov	dptr,#_xatoi_str_1_1
   1881 E0                 1753 	movx	a,@dptr
   1882 FE                 1754 	mov	r6,a
   1883 A3                 1755 	inc	dptr
   1884 E0                 1756 	movx	a,@dptr
   1885 FF                 1757 	mov	r7,a
   1886 A3                 1758 	inc	dptr
   1887 E0                 1759 	movx	a,@dptr
   1888 F8                 1760 	mov	r0,a
                           1761 ;	genPointerGet
                           1762 ;	genGenPointerGet
   1889 8E 82              1763 	mov	dpl,r6
   188B 8F 83              1764 	mov	dph,r7
   188D 88 F0              1765 	mov	b,r0
   188F 12 71 69           1766 	lcall	__gptrget
   1892 F9                 1767 	mov	r1,a
   1893 A3                 1768 	inc	dptr
   1894 12 71 69           1769 	lcall	__gptrget
   1897 FA                 1770 	mov	r2,a
   1898 A3                 1771 	inc	dptr
   1899 12 71 69           1772 	lcall	__gptrget
   189C FB                 1773 	mov	r3,a
                           1774 ;	genPlus
                           1775 ;	genPlusIncr
   189D 09                 1776 	inc	r1
   189E B9 00 01           1777 	cjne	r1,#0x00,00172$
   18A1 0A                 1778 	inc	r2
   18A2                    1779 00172$:
                           1780 ;	genPointerSet
                           1781 ;	genGenPointerSet
   18A2 8E 82              1782 	mov	dpl,r6
   18A4 8F 83              1783 	mov	dph,r7
   18A6 88 F0              1784 	mov	b,r0
   18A8 E9                 1785 	mov	a,r1
   18A9 12 70 17           1786 	lcall	__gptrput
   18AC A3                 1787 	inc	dptr
   18AD EA                 1788 	mov	a,r2
   18AE 12 70 17           1789 	lcall	__gptrput
   18B1 A3                 1790 	inc	dptr
   18B2 EB                 1791 	mov	a,r3
   18B3 12 70 17           1792 	lcall	__gptrput
                           1793 ;	genPointerGet
                           1794 ;	genGenPointerGet
   18B6 89 82              1795 	mov	dpl,r1
   18B8 8A 83              1796 	mov	dph,r2
   18BA 8B F0              1797 	mov	b,r3
   18BC 12 71 69           1798 	lcall	__gptrget
   18BF F9                 1799 	mov	r1,a
                           1800 ;	genAssign
   18C0 90 05 79           1801 	mov	dptr,#_xatoi_c_1_1
   18C3 E9                 1802 	mov	a,r1
   18C4 F0                 1803 	movx	@dptr,a
                    06CE   1804 	C$misc.c$140$1$1 ==.
                           1805 ;	../misc.c:140: break;
                           1806 ;	genIpop
   18C5 D0 04              1807 	pop	ar4
   18C7 D0 03              1808 	pop	ar3
   18C9 D0 02              1809 	pop	ar2
   18CB 02 19 7F           1810 	ljmp	00122$
                    06D7   1811 	C$misc.c$142$3$4 ==.
                           1812 ;	../misc.c:142: case 'B':
   18CE                    1813 00109$:
                    06D7   1814 	C$misc.c$144$1$1 ==.
                           1815 ;	../misc.c:144: r = 2; c = *(++(*str));
                           1816 ;	genIpush
   18CE C0 02              1817 	push	ar2
   18D0 C0 03              1818 	push	ar3
   18D2 C0 04              1819 	push	ar4
                           1820 ;	genAssign
   18D4 90 05 7A           1821 	mov	dptr,#_xatoi_r_1_1
   18D7 74 02              1822 	mov	a,#0x02
   18D9 F0                 1823 	movx	@dptr,a
                           1824 ;	genAssign
   18DA 90 05 72           1825 	mov	dptr,#_xatoi_str_1_1
   18DD E0                 1826 	movx	a,@dptr
   18DE FE                 1827 	mov	r6,a
   18DF A3                 1828 	inc	dptr
   18E0 E0                 1829 	movx	a,@dptr
   18E1 FF                 1830 	mov	r7,a
   18E2 A3                 1831 	inc	dptr
   18E3 E0                 1832 	movx	a,@dptr
   18E4 F8                 1833 	mov	r0,a
                           1834 ;	genPointerGet
                           1835 ;	genGenPointerGet
   18E5 8E 82              1836 	mov	dpl,r6
   18E7 8F 83              1837 	mov	dph,r7
   18E9 88 F0              1838 	mov	b,r0
   18EB 12 71 69           1839 	lcall	__gptrget
   18EE F9                 1840 	mov	r1,a
   18EF A3                 1841 	inc	dptr
   18F0 12 71 69           1842 	lcall	__gptrget
   18F3 FA                 1843 	mov	r2,a
   18F4 A3                 1844 	inc	dptr
   18F5 12 71 69           1845 	lcall	__gptrget
   18F8 FB                 1846 	mov	r3,a
                           1847 ;	genPlus
                           1848 ;	genPlusIncr
   18F9 09                 1849 	inc	r1
   18FA B9 00 01           1850 	cjne	r1,#0x00,00173$
   18FD 0A                 1851 	inc	r2
   18FE                    1852 00173$:
                           1853 ;	genPointerSet
                           1854 ;	genGenPointerSet
   18FE 8E 82              1855 	mov	dpl,r6
   1900 8F 83              1856 	mov	dph,r7
   1902 88 F0              1857 	mov	b,r0
   1904 E9                 1858 	mov	a,r1
   1905 12 70 17           1859 	lcall	__gptrput
   1908 A3                 1860 	inc	dptr
   1909 EA                 1861 	mov	a,r2
   190A 12 70 17           1862 	lcall	__gptrput
   190D A3                 1863 	inc	dptr
   190E EB                 1864 	mov	a,r3
   190F 12 70 17           1865 	lcall	__gptrput
                           1866 ;	genPointerGet
                           1867 ;	genGenPointerGet
   1912 89 82              1868 	mov	dpl,r1
   1914 8A 83              1869 	mov	dph,r2
   1916 8B F0              1870 	mov	b,r3
   1918 12 71 69           1871 	lcall	__gptrget
   191B F9                 1872 	mov	r1,a
                           1873 ;	genAssign
   191C 90 05 79           1874 	mov	dptr,#_xatoi_c_1_1
   191F E9                 1875 	mov	a,r1
   1920 F0                 1876 	movx	@dptr,a
                    072A   1877 	C$misc.c$145$1$1 ==.
                           1878 ;	../misc.c:145: break;
                           1879 ;	genIpop
   1921 D0 04              1880 	pop	ar4
   1923 D0 03              1881 	pop	ar3
   1925 D0 02              1882 	pop	ar2
   1927 02 19 7F           1883 	ljmp	00122$
                    0733   1884 	C$misc.c$146$3$4 ==.
                           1885 ;	../misc.c:146: default:
   192A                    1886 00110$:
                    0733   1887 	C$misc.c$147$3$4 ==.
                           1888 ;	../misc.c:147: if (c <= ' ') return 1;          /* single zero */
                           1889 ;	genCmpGt
                           1890 ;	genCmp
   192A C3                 1891 	clr	c
   192B 74 20              1892 	mov	a,#0x20
   192D 9D                 1893 	subb	a,r5
                           1894 ;	genIfxJump
   192E 50 03              1895 	jnc	00174$
   1930 02 19 3C           1896 	ljmp	00112$
   1933                    1897 00174$:
                           1898 ;	genRet
   1933 75 82 01           1899 	mov	dpl,#0x01
   1936 75 83 00           1900 	mov	dph,#0x00
   1939 02 1A F2           1901 	ljmp	00136$
   193C                    1902 00112$:
                    0745   1903 	C$misc.c$148$3$4 ==.
                           1904 ;	../misc.c:148: if (c < '0' || c > '9') return 0;          /* invalid char */
                           1905 ;	genCmpLt
                           1906 ;	genCmp
   193C BD 30 00           1907 	cjne	r5,#0x30,00175$
   193F                    1908 00175$:
                           1909 ;	genIfxJump
   193F 50 03              1910 	jnc	00176$
   1941 02 19 4D           1911 	ljmp	00113$
   1944                    1912 00176$:
                           1913 ;	genCmpGt
                           1914 ;	genCmp
   1944 C3                 1915 	clr	c
   1945 74 39              1916 	mov	a,#0x39
   1947 9D                 1917 	subb	a,r5
                           1918 ;	genIfxJump
   1948 40 03              1919 	jc	00177$
   194A 02 19 56           1920 	ljmp	00114$
   194D                    1921 00177$:
   194D                    1922 00113$:
                           1923 ;	genRet
   194D 75 82 00           1924 	mov	dpl,#0x00
   1950 75 83 00           1925 	mov	dph,#0x00
   1953 02 1A F2           1926 	ljmp	00136$
   1956                    1927 00114$:
                    075F   1928 	C$misc.c$149$3$4 ==.
                           1929 ;	../misc.c:149: r = 8;                      /* octal */
                           1930 ;	genAssign
   1956 90 05 7A           1931 	mov	dptr,#_xatoi_r_1_1
   1959 74 08              1932 	mov	a,#0x08
   195B F0                 1933 	movx	@dptr,a
                    0765   1934 	C$misc.c$150$1$1 ==.
                           1935 ;	../misc.c:150: }
   195C 02 19 7F           1936 	ljmp	00122$
   195F                    1937 00121$:
                    0768   1938 	C$misc.c$152$2$5 ==.
                           1939 ;	../misc.c:152: if (c < '0' || c > '9') return 0;          /* EOL or invalid char */
                           1940 ;	genCmpLt
                           1941 ;	genCmp
   195F BD 30 00           1942 	cjne	r5,#0x30,00178$
   1962                    1943 00178$:
                           1944 ;	genIfxJump
   1962 50 03              1945 	jnc	00179$
   1964 02 19 70           1946 	ljmp	00117$
   1967                    1947 00179$:
                           1948 ;	genCmpGt
                           1949 ;	genCmp
   1967 C3                 1950 	clr	c
   1968 74 39              1951 	mov	a,#0x39
   196A 9D                 1952 	subb	a,r5
                           1953 ;	genIfxJump
   196B 40 03              1954 	jc	00180$
   196D 02 19 79           1955 	ljmp	00118$
   1970                    1956 00180$:
   1970                    1957 00117$:
                           1958 ;	genRet
   1970 75 82 00           1959 	mov	dpl,#0x00
   1973 75 83 00           1960 	mov	dph,#0x00
   1976 02 1A F2           1961 	ljmp	00136$
   1979                    1962 00118$:
                    0782   1963 	C$misc.c$153$2$5 ==.
                           1964 ;	../misc.c:153: r = 10;                                    /* decimal */
                           1965 ;	genAssign
   1979 90 05 7A           1966 	mov	dptr,#_xatoi_r_1_1
   197C 74 0A              1967 	mov	a,#0x0A
   197E F0                 1968 	movx	@dptr,a
   197F                    1969 00122$:
                    0788   1970 	C$misc.c$156$1$1 ==.
                           1971 ;	../misc.c:156: val = 0;
                           1972 ;	genAssign
   197F 90 05 75           1973 	mov	dptr,#_xatoi_val_1_1
   1982 E4                 1974 	clr	a
   1983 F0                 1975 	movx	@dptr,a
   1984 A3                 1976 	inc	dptr
   1985 F0                 1977 	movx	@dptr,a
   1986 A3                 1978 	inc	dptr
   1987 F0                 1979 	movx	@dptr,a
   1988 A3                 1980 	inc	dptr
   1989 F0                 1981 	movx	@dptr,a
                    0793   1982 	C$misc.c$157$1$1 ==.
                           1983 ;	../misc.c:157: while (c > ' ') {
   198A                    1984 00131$:
                           1985 ;	genAssign
   198A 90 05 79           1986 	mov	dptr,#_xatoi_c_1_1
   198D E0                 1987 	movx	a,@dptr
   198E FD                 1988 	mov	r5,a
                           1989 ;	genCmpGt
                           1990 ;	genCmp
   198F C3                 1991 	clr	c
   1990 74 20              1992 	mov	a,#0x20
   1992 9D                 1993 	subb	a,r5
                           1994 ;	genIfxJump
   1993 40 03              1995 	jc	00181$
   1995 02 1A A3           1996 	ljmp	00133$
   1998                    1997 00181$:
                    07A1   1998 	C$misc.c$158$2$6 ==.
                           1999 ;	../misc.c:158: if (c >= 'a') c -= 0x20;
                           2000 ;	genCmpLt
                           2001 ;	genCmp
   1998 BD 61 00           2002 	cjne	r5,#0x61,00182$
   199B                    2003 00182$:
                           2004 ;	genIfxJump
   199B 50 03              2005 	jnc	00183$
   199D 02 19 A7           2006 	ljmp	00124$
   19A0                    2007 00183$:
                           2008 ;	genMinus
   19A0 ED                 2009 	mov	a,r5
   19A1 24 E0              2010 	add	a,#0xe0
                           2011 ;	genAssign
   19A3 90 05 79           2012 	mov	dptr,#_xatoi_c_1_1
   19A6 F0                 2013 	movx	@dptr,a
   19A7                    2014 00124$:
                    07B0   2015 	C$misc.c$159$2$6 ==.
                           2016 ;	../misc.c:159: c -= '0';
                           2017 ;	genAssign
   19A7 90 05 79           2018 	mov	dptr,#_xatoi_c_1_1
   19AA E0                 2019 	movx	a,@dptr
   19AB FD                 2020 	mov	r5,a
                           2021 ;	genMinus
   19AC ED                 2022 	mov	a,r5
   19AD 24 D0              2023 	add	a,#0xd0
                           2024 ;	genAssign
   19AF 90 05 79           2025 	mov	dptr,#_xatoi_c_1_1
   19B2 F0                 2026 	movx	@dptr,a
                    07BC   2027 	C$misc.c$160$2$6 ==.
                           2028 ;	../misc.c:160: if (c >= 17) {
                           2029 ;	genAssign
   19B3 90 05 79           2030 	mov	dptr,#_xatoi_c_1_1
   19B6 E0                 2031 	movx	a,@dptr
   19B7 FD                 2032 	mov	r5,a
                           2033 ;	genCmpLt
                           2034 ;	genCmp
   19B8 BD 11 00           2035 	cjne	r5,#0x11,00184$
   19BB                    2036 00184$:
                           2037 ;	genIfxJump
   19BB 50 03              2038 	jnc	00185$
   19BD 02 19 DE           2039 	ljmp	00128$
   19C0                    2040 00185$:
                    07C9   2041 	C$misc.c$161$3$7 ==.
                           2042 ;	../misc.c:161: c -= 7;
                           2043 ;	genMinus
   19C0 ED                 2044 	mov	a,r5
   19C1 24 F9              2045 	add	a,#0xf9
                           2046 ;	genAssign
   19C3 90 05 79           2047 	mov	dptr,#_xatoi_c_1_1
   19C6 F0                 2048 	movx	@dptr,a
                    07D0   2049 	C$misc.c$162$3$7 ==.
                           2050 ;	../misc.c:162: if (c <= 9) return 0;           /* invalid char */
                           2051 ;	genAssign
   19C7 90 05 79           2052 	mov	dptr,#_xatoi_c_1_1
   19CA E0                 2053 	movx	a,@dptr
   19CB FD                 2054 	mov	r5,a
                           2055 ;	genCmpGt
                           2056 ;	genCmp
   19CC C3                 2057 	clr	c
   19CD 74 09              2058 	mov	a,#0x09
   19CF 9D                 2059 	subb	a,r5
                           2060 ;	genIfxJump
   19D0 50 03              2061 	jnc	00186$
   19D2 02 19 DE           2062 	ljmp	00128$
   19D5                    2063 00186$:
                           2064 ;	genRet
   19D5 75 82 00           2065 	mov	dpl,#0x00
   19D8 75 83 00           2066 	mov	dph,#0x00
   19DB 02 1A F2           2067 	ljmp	00136$
   19DE                    2068 00128$:
                    07E7   2069 	C$misc.c$164$2$6 ==.
                           2070 ;	../misc.c:164: if (c >= r) return 0;                           /* invalid char for current radix */
                           2071 ;	genAssign
   19DE 90 05 79           2072 	mov	dptr,#_xatoi_c_1_1
   19E1 E0                 2073 	movx	a,@dptr
   19E2 FD                 2074 	mov	r5,a
                           2075 ;	genAssign
   19E3 90 05 7A           2076 	mov	dptr,#_xatoi_r_1_1
   19E6 E0                 2077 	movx	a,@dptr
   19E7 FE                 2078 	mov	r6,a
                           2079 ;	genCmpLt
                           2080 ;	genCmp
   19E8 C3                 2081 	clr	c
   19E9 ED                 2082 	mov	a,r5
   19EA 9E                 2083 	subb	a,r6
                           2084 ;	genIfxJump
   19EB 50 03              2085 	jnc	00187$
   19ED 02 19 F9           2086 	ljmp	00130$
   19F0                    2087 00187$:
                           2088 ;	genRet
   19F0 75 82 00           2089 	mov	dpl,#0x00
   19F3 75 83 00           2090 	mov	dph,#0x00
   19F6 02 1A F2           2091 	ljmp	00136$
   19F9                    2092 00130$:
                    0802   2093 	C$misc.c$165$1$1 ==.
                           2094 ;	../misc.c:165: val = val * r + c;
                           2095 ;	genIpush
   19F9 C0 02              2096 	push	ar2
   19FB C0 03              2097 	push	ar3
   19FD C0 04              2098 	push	ar4
                           2099 ;	genAssign
   19FF 90 05 75           2100 	mov	dptr,#_xatoi_val_1_1
   1A02 E0                 2101 	movx	a,@dptr
   1A03 FF                 2102 	mov	r7,a
   1A04 A3                 2103 	inc	dptr
   1A05 E0                 2104 	movx	a,@dptr
   1A06 F8                 2105 	mov	r0,a
   1A07 A3                 2106 	inc	dptr
   1A08 E0                 2107 	movx	a,@dptr
   1A09 F9                 2108 	mov	r1,a
   1A0A A3                 2109 	inc	dptr
   1A0B E0                 2110 	movx	a,@dptr
   1A0C FA                 2111 	mov	r2,a
                           2112 ;	genCast
   1A0D 90 0D 97           2113 	mov	dptr,#__mullong_PARM_2
   1A10 EE                 2114 	mov	a,r6
   1A11 F0                 2115 	movx	@dptr,a
   1A12 A3                 2116 	inc	dptr
   1A13 74 00              2117 	mov	a,#0x00
   1A15 F0                 2118 	movx	@dptr,a
   1A16 A3                 2119 	inc	dptr
   1A17 74 00              2120 	mov	a,#0x00
   1A19 F0                 2121 	movx	@dptr,a
   1A1A A3                 2122 	inc	dptr
   1A1B 74 00              2123 	mov	a,#0x00
   1A1D F0                 2124 	movx	@dptr,a
                           2125 ;	genCall
   1A1E 8F 82              2126 	mov	dpl,r7
   1A20 88 83              2127 	mov	dph,r0
   1A22 89 F0              2128 	mov	b,r1
   1A24 EA                 2129 	mov	a,r2
   1A25 C0 05              2130 	push	ar5
   1A27 12 70 50           2131 	lcall	__mullong
   1A2A AA 82              2132 	mov	r2,dpl
   1A2C AB 83              2133 	mov	r3,dph
   1A2E AC F0              2134 	mov	r4,b
   1A30 FE                 2135 	mov	r6,a
   1A31 D0 05              2136 	pop	ar5
                           2137 ;	genCast
   1A33 7F 00              2138 	mov	r7,#0x00
   1A35 78 00              2139 	mov	r0,#0x00
   1A37 79 00              2140 	mov	r1,#0x00
                           2141 ;	genPlus
   1A39 90 05 75           2142 	mov	dptr,#_xatoi_val_1_1
   1A3C E5 05              2143 	mov	a,ar5
   1A3E 25 02              2144 	add	a,ar2
   1A40 F0                 2145 	movx	@dptr,a
   1A41 E5 07              2146 	mov	a,ar7
   1A43 35 03              2147 	addc	a,ar3
   1A45 A3                 2148 	inc	dptr
   1A46 F0                 2149 	movx	@dptr,a
   1A47 E5 00              2150 	mov	a,ar0
   1A49 35 04              2151 	addc	a,ar4
   1A4B A3                 2152 	inc	dptr
   1A4C F0                 2153 	movx	@dptr,a
   1A4D E5 01              2154 	mov	a,ar1
   1A4F 35 06              2155 	addc	a,ar6
   1A51 A3                 2156 	inc	dptr
   1A52 F0                 2157 	movx	@dptr,a
                    085C   2158 	C$misc.c$166$2$6 ==.
                           2159 ;	../misc.c:166: c = *(++(*str));
                           2160 ;	genAssign
   1A53 90 05 72           2161 	mov	dptr,#_xatoi_str_1_1
   1A56 E0                 2162 	movx	a,@dptr
   1A57 FA                 2163 	mov	r2,a
   1A58 A3                 2164 	inc	dptr
   1A59 E0                 2165 	movx	a,@dptr
   1A5A FB                 2166 	mov	r3,a
   1A5B A3                 2167 	inc	dptr
   1A5C E0                 2168 	movx	a,@dptr
   1A5D FC                 2169 	mov	r4,a
                           2170 ;	genPointerGet
                           2171 ;	genGenPointerGet
   1A5E 8A 82              2172 	mov	dpl,r2
   1A60 8B 83              2173 	mov	dph,r3
   1A62 8C F0              2174 	mov	b,r4
   1A64 12 71 69           2175 	lcall	__gptrget
   1A67 FD                 2176 	mov	r5,a
   1A68 A3                 2177 	inc	dptr
   1A69 12 71 69           2178 	lcall	__gptrget
   1A6C FE                 2179 	mov	r6,a
   1A6D A3                 2180 	inc	dptr
   1A6E 12 71 69           2181 	lcall	__gptrget
   1A71 FF                 2182 	mov	r7,a
                           2183 ;	genPlus
                           2184 ;	genPlusIncr
   1A72 0D                 2185 	inc	r5
   1A73 BD 00 01           2186 	cjne	r5,#0x00,00188$
   1A76 0E                 2187 	inc	r6
   1A77                    2188 00188$:
                           2189 ;	genPointerSet
                           2190 ;	genGenPointerSet
   1A77 8A 82              2191 	mov	dpl,r2
   1A79 8B 83              2192 	mov	dph,r3
   1A7B 8C F0              2193 	mov	b,r4
   1A7D ED                 2194 	mov	a,r5
   1A7E 12 70 17           2195 	lcall	__gptrput
   1A81 A3                 2196 	inc	dptr
   1A82 EE                 2197 	mov	a,r6
   1A83 12 70 17           2198 	lcall	__gptrput
   1A86 A3                 2199 	inc	dptr
   1A87 EF                 2200 	mov	a,r7
   1A88 12 70 17           2201 	lcall	__gptrput
                           2202 ;	genPointerGet
                           2203 ;	genGenPointerGet
   1A8B 8D 82              2204 	mov	dpl,r5
   1A8D 8E 83              2205 	mov	dph,r6
   1A8F 8F F0              2206 	mov	b,r7
   1A91 12 71 69           2207 	lcall	__gptrget
   1A94 FD                 2208 	mov	r5,a
                           2209 ;	genAssign
   1A95 90 05 79           2210 	mov	dptr,#_xatoi_c_1_1
   1A98 ED                 2211 	mov	a,r5
   1A99 F0                 2212 	movx	@dptr,a
                           2213 ;	genIpop
   1A9A D0 04              2214 	pop	ar4
   1A9C D0 03              2215 	pop	ar3
   1A9E D0 02              2216 	pop	ar2
   1AA0 02 19 8A           2217 	ljmp	00131$
   1AA3                    2218 00133$:
                    08AC   2219 	C$misc.c$168$1$1 ==.
                           2220 ;	../misc.c:168: if (s) val = 0 - val;                                               /* apply sign if needed */
                           2221 ;	genAssign
   1AA3 90 05 7B           2222 	mov	dptr,#_xatoi_s_1_1
   1AA6 E0                 2223 	movx	a,@dptr
   1AA7 FD                 2224 	mov	r5,a
                           2225 ;	genIfx
   1AA8 ED                 2226 	mov	a,r5
                           2227 ;	genIfxJump
   1AA9 70 03              2228 	jnz	00189$
   1AAB 02 1A CF           2229 	ljmp	00135$
   1AAE                    2230 00189$:
                           2231 ;	genAssign
   1AAE 90 05 75           2232 	mov	dptr,#_xatoi_val_1_1
   1AB1 E0                 2233 	movx	a,@dptr
   1AB2 FD                 2234 	mov	r5,a
   1AB3 A3                 2235 	inc	dptr
   1AB4 E0                 2236 	movx	a,@dptr
   1AB5 FE                 2237 	mov	r6,a
   1AB6 A3                 2238 	inc	dptr
   1AB7 E0                 2239 	movx	a,@dptr
   1AB8 FF                 2240 	mov	r7,a
   1AB9 A3                 2241 	inc	dptr
   1ABA E0                 2242 	movx	a,@dptr
   1ABB F8                 2243 	mov	r0,a
                           2244 ;	genUminus
   1ABC 90 05 75           2245 	mov	dptr,#_xatoi_val_1_1
   1ABF C3                 2246 	clr	c
   1AC0 E4                 2247 	clr	a
   1AC1 9D                 2248 	subb	a,r5
   1AC2 F0                 2249 	movx	@dptr,a
   1AC3 E4                 2250 	clr	a
   1AC4 9E                 2251 	subb	a,r6
   1AC5 A3                 2252 	inc	dptr
   1AC6 F0                 2253 	movx	@dptr,a
   1AC7 E4                 2254 	clr	a
   1AC8 9F                 2255 	subb	a,r7
   1AC9 A3                 2256 	inc	dptr
   1ACA F0                 2257 	movx	@dptr,a
   1ACB E4                 2258 	clr	a
   1ACC 98                 2259 	subb	a,r0
   1ACD A3                 2260 	inc	dptr
   1ACE F0                 2261 	movx	@dptr,a
   1ACF                    2262 00135$:
                    08D8   2263 	C$misc.c$170$1$1 ==.
                           2264 ;	../misc.c:170: *res = val;
                           2265 ;	genAssign
   1ACF 90 05 75           2266 	mov	dptr,#_xatoi_val_1_1
   1AD2 E0                 2267 	movx	a,@dptr
   1AD3 FD                 2268 	mov	r5,a
   1AD4 A3                 2269 	inc	dptr
   1AD5 E0                 2270 	movx	a,@dptr
   1AD6 FE                 2271 	mov	r6,a
   1AD7 A3                 2272 	inc	dptr
   1AD8 E0                 2273 	movx	a,@dptr
   1AD9 FF                 2274 	mov	r7,a
   1ADA A3                 2275 	inc	dptr
   1ADB E0                 2276 	movx	a,@dptr
   1ADC F8                 2277 	mov	r0,a
                           2278 ;	genCast
                           2279 ;	genPointerSet
                           2280 ;	genGenPointerSet
   1ADD 8A 82              2281 	mov	dpl,r2
   1ADF 8B 83              2282 	mov	dph,r3
   1AE1 8C F0              2283 	mov	b,r4
   1AE3 ED                 2284 	mov	a,r5
   1AE4 12 70 17           2285 	lcall	__gptrput
   1AE7 A3                 2286 	inc	dptr
   1AE8 EE                 2287 	mov	a,r6
   1AE9 12 70 17           2288 	lcall	__gptrput
                    08F5   2289 	C$misc.c$171$1$1 ==.
                           2290 ;	../misc.c:171: return 1;
                           2291 ;	genRet
   1AEC 75 82 01           2292 	mov	dpl,#0x01
   1AEF 75 83 00           2293 	mov	dph,#0x00
   1AF2                    2294 00136$:
                    08FB   2295 	C$misc.c$172$1$1 ==.
                    08FB   2296 	XG$xatoi$0$0 ==.
   1AF2 22                 2297 	ret
                           2298 ;------------------------------------------------------------
                           2299 ;Allocation info for local variables in function 'getParity'
                           2300 ;------------------------------------------------------------
                           2301 ;n                         Allocated with name '_getParity_n_1_1'
                           2302 ;parity                    Allocated with name '_getParity_parity_1_1'
                           2303 ;------------------------------------------------------------
                    08FC   2304 	G$getParity$0$0 ==.
                    08FC   2305 	C$misc.c$175$1$1 ==.
                           2306 ;	../misc.c:175: uint8_t  getParity(unsigned int n)
                           2307 ;	-----------------------------------------
                           2308 ;	 function getParity
                           2309 ;	-----------------------------------------
   1AF3                    2310 _getParity:
                           2311 ;	genReceive
   1AF3 AA 83              2312 	mov	r2,dph
   1AF5 E5 82              2313 	mov	a,dpl
   1AF7 90 05 7C           2314 	mov	dptr,#_getParity_n_1_1
   1AFA F0                 2315 	movx	@dptr,a
   1AFB A3                 2316 	inc	dptr
   1AFC EA                 2317 	mov	a,r2
   1AFD F0                 2318 	movx	@dptr,a
                    0907   2319 	C$misc.c$177$1$1 ==.
                           2320 ;	../misc.c:177: uint8_t parity = 0;
                           2321 ;	genAssign
   1AFE 90 05 7E           2322 	mov	dptr,#_getParity_parity_1_1
   1B01 74 00              2323 	mov	a,#0x00
   1B03 F0                 2324 	movx	@dptr,a
                    090D   2325 	C$misc.c$178$1$1 ==.
                           2326 ;	../misc.c:178: while (n)
   1B04                    2327 00101$:
                           2328 ;	genAssign
   1B04 90 05 7C           2329 	mov	dptr,#_getParity_n_1_1
   1B07 E0                 2330 	movx	a,@dptr
   1B08 FA                 2331 	mov	r2,a
   1B09 A3                 2332 	inc	dptr
   1B0A E0                 2333 	movx	a,@dptr
   1B0B FB                 2334 	mov	r3,a
                           2335 ;	genIfx
   1B0C EA                 2336 	mov	a,r2
   1B0D 4B                 2337 	orl	a,r3
                           2338 ;	genIfxJump
   1B0E 70 03              2339 	jnz	00108$
   1B10 02 1B 37           2340 	ljmp	00103$
   1B13                    2341 00108$:
                    091C   2342 	C$misc.c$180$2$2 ==.
                           2343 ;	../misc.c:180: parity = !parity;
                           2344 ;	genAssign
   1B13 90 05 7E           2345 	mov	dptr,#_getParity_parity_1_1
   1B16 E0                 2346 	movx	a,@dptr
   1B17 FC                 2347 	mov	r4,a
                           2348 ;	genNot
   1B18 90 05 7E           2349 	mov	dptr,#_getParity_parity_1_1
   1B1B EC                 2350 	mov	a,r4
   1B1C B4 01 00           2351 	cjne	a,#0x01,00109$
   1B1F                    2352 00109$:
   1B1F E4                 2353 	clr	a
   1B20 33                 2354 	rlc	a
   1B21 F0                 2355 	movx	@dptr,a
                    092B   2356 	C$misc.c$181$2$2 ==.
                           2357 ;	../misc.c:181: n      = n & (n - 1);
                           2358 ;	genMinus
                           2359 ;	genMinusDec
   1B22 EA                 2360 	mov	a,r2
   1B23 24 FF              2361 	add	a,#0xff
   1B25 FC                 2362 	mov	r4,a
   1B26 EB                 2363 	mov	a,r3
   1B27 34 FF              2364 	addc	a,#0xff
   1B29 FD                 2365 	mov	r5,a
                           2366 ;	genAnd
   1B2A 90 05 7C           2367 	mov	dptr,#_getParity_n_1_1
   1B2D EC                 2368 	mov	a,r4
   1B2E 5A                 2369 	anl	a,r2
   1B2F F0                 2370 	movx	@dptr,a
   1B30 ED                 2371 	mov	a,r5
   1B31 5B                 2372 	anl	a,r3
   1B32 A3                 2373 	inc	dptr
   1B33 F0                 2374 	movx	@dptr,a
   1B34 02 1B 04           2375 	ljmp	00101$
   1B37                    2376 00103$:
                    0940   2377 	C$misc.c$183$1$1 ==.
                           2378 ;	../misc.c:183: return parity;
                           2379 ;	genAssign
   1B37 90 05 7E           2380 	mov	dptr,#_getParity_parity_1_1
   1B3A E0                 2381 	movx	a,@dptr
   1B3B FA                 2382 	mov	r2,a
                           2383 ;	genRet
   1B3C 8A 82              2384 	mov	dpl,r2
   1B3E                    2385 00104$:
                    0947   2386 	C$misc.c$184$1$1 ==.
                    0947   2387 	XG$getParity$0$0 ==.
   1B3E 22                 2388 	ret
                           2389 	.area CSEG    (CODE)
                           2390 	.area CONST   (CODE)
                    0000   2391 F___misc$_str_0$0$0 == .
   7238                    2392 __str_0:
   7238 20                 2393 	.ascii " "
   7239 00                 2394 	.db 0x00
                           2395 	.area XINIT   (CODE)
                           2396 	.area CABS    (ABS,CODE)
