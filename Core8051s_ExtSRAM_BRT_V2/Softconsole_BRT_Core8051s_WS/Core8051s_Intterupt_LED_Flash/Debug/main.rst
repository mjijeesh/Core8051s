                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:52:00 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _C8051_interrupt_type
                             14 	.globl _enable_8051_interrupts
                             15 	.globl _INT0_IRQHandler
                             16 	.globl _g_timer0
                             17 	.globl _g_wd
                             18 	.globl _g_uart0
                             19 	.globl _g_gpio
                             20 	.globl _timer0_isr
                             21 ;--------------------------------------------------------
                             22 ; special function registers
                             23 ;--------------------------------------------------------
                             24 	.area RSEG    (DATA)
                             25 ;--------------------------------------------------------
                             26 ; special function bits
                             27 ;--------------------------------------------------------
                             28 	.area RSEG    (DATA)
                             29 ;--------------------------------------------------------
                             30 ; overlayable register banks
                             31 ;--------------------------------------------------------
                             32 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      33 	.ds 8
                             34 ;--------------------------------------------------------
                             35 ; internal ram data
                             36 ;--------------------------------------------------------
                             37 	.area DSEG    (DATA)
                             38 ;--------------------------------------------------------
                             39 ; overlayable items in internal ram 
                             40 ;--------------------------------------------------------
                             41 	.area OSEG    (OVR,DATA)
                             42 ;--------------------------------------------------------
                             43 ; Stack segment in internal ram 
                             44 ;--------------------------------------------------------
                             45 	.area	SSEG	(DATA)
   005D                      46 __start__stack:
   005D                      47 	.ds	1
                             48 
                             49 ;--------------------------------------------------------
                             50 ; indirectly addressable internal ram data
                             51 ;--------------------------------------------------------
                             52 	.area ISEG    (DATA)
                             53 ;--------------------------------------------------------
                             54 ; absolute internal ram data
                             55 ;--------------------------------------------------------
                             56 	.area IABS    (ABS,DATA)
                             57 	.area IABS    (ABS,DATA)
                             58 ;--------------------------------------------------------
                             59 ; bit data
                             60 ;--------------------------------------------------------
                             61 	.area BSEG    (BIT)
                             62 ;--------------------------------------------------------
                             63 ; paged external ram data
                             64 ;--------------------------------------------------------
                             65 	.area PSEG    (PAG,XDATA)
                             66 ;--------------------------------------------------------
                             67 ; external ram data
                             68 ;--------------------------------------------------------
                             69 	.area XSEG    (XDATA)
                    0000     70 G$g_gpio$0$0==.
   0000                      71 _g_gpio::
   0000                      72 	.ds 3
                    0003     73 G$g_uart0$0$0==.
   0003                      74 _g_uart0::
   0003                      75 	.ds 3
                    0006     76 G$g_wd$0$0==.
   0006                      77 _g_wd::
   0006                      78 	.ds 2
                    0008     79 G$g_timer0$0$0==.
   0008                      80 _g_timer0::
   0008                      81 	.ds 2
                    000A     82 Ltimer0_isr$output_state$1$1==.
   000A                      83 _timer0_isr_output_state_1_1:
   000A                      84 	.ds 4
                    000E     85 Ltimer0_isr$interrupt_msg$1$1==.
   000E                      86 _timer0_isr_interrupt_msg_1_1:
   000E                      87 	.ds 50
                    0040     88 Ltimer0_isr$linefeed$1$1==.
   0040                      89 _timer0_isr_linefeed_1_1:
   0040                      90 	.ds 3
                    0043     91 Lmain$greeting_msg$1$1==.
   0043                      92 _main_greeting_msg_1_1:
   0043                      93 	.ds 40
                    006B     94 Lmain$linefeed$1$1==.
   006B                      95 _main_linefeed_1_1:
   006B                      96 	.ds 3
                    006E     97 Lmain$scanning_msg$1$1==.
   006E                      98 _main_scanning_msg_1_1:
   006E                      99 	.ds 30
                            100 ;--------------------------------------------------------
                            101 ; external initialized ram data
                            102 ;--------------------------------------------------------
                            103 	.area XISEG   (XDATA)
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
                            115 ; interrupt vector 
                            116 ;--------------------------------------------------------
                            117 	.area HOME    (CODE)
   0000                     118 __interrupt_vect:
   0000 02 00 0B            119 	ljmp	__sdcc_gsinit_startup
   0003 02 00 70            120 	ljmp	_INT0_IRQHandler
                            121 ;--------------------------------------------------------
                            122 ; global & static initialisations
                            123 ;--------------------------------------------------------
                            124 	.area HOME    (CODE)
                            125 	.area GSINIT  (CODE)
                            126 	.area GSFINAL (CODE)
                            127 	.area GSINIT  (CODE)
                            128 	.globl __sdcc_gsinit_startup
                            129 	.globl __sdcc_program_startup
                            130 	.globl __start__stack
                            131 	.globl __mcs51_genXINIT
                            132 	.globl __mcs51_genXRAMCLEAR
                            133 	.globl __mcs51_genRAMCLEAR
                            134 ;------------------------------------------------------------
                            135 ;Allocation info for local variables in function 'timer0_isr'
                            136 ;------------------------------------------------------------
                            137 ;output_state              Allocated with name '_timer0_isr_output_state_1_1'
                            138 ;interrupt_msg             Allocated with name '_timer0_isr_interrupt_msg_1_1'
                            139 ;linefeed                  Allocated with name '_timer0_isr_linefeed_1_1'
                            140 ;------------------------------------------------------------
                    0000    141 	G$timer0_isr$0$0 ==.
                    0000    142 	C$main.c$75$1$1 ==.
                            143 ;	../main.c:75: static int32_t output_state = 0;
                            144 ;	genAssign
   0062 90 00 0A            145 	mov	dptr,#_timer0_isr_output_state_1_1
   0065 E4                  146 	clr	a
   0066 F0                  147 	movx	@dptr,a
   0067 A3                  148 	inc	dptr
   0068 F0                  149 	movx	@dptr,a
   0069 A3                  150 	inc	dptr
   006A F0                  151 	movx	@dptr,a
   006B A3                  152 	inc	dptr
   006C F0                  153 	movx	@dptr,a
                            154 	.area GSFINAL (CODE)
   006D 02 00 06            155 	ljmp	__sdcc_program_startup
                            156 ;--------------------------------------------------------
                            157 ; Home
                            158 ;--------------------------------------------------------
                            159 	.area HOME    (CODE)
                            160 	.area HOME    (CODE)
   0006                     161 __sdcc_program_startup:
   0006 12 02 C8            162 	lcall	_main
                            163 ;	return from main will lock up
   0009 80 FE               164 	sjmp .
                            165 ;--------------------------------------------------------
                            166 ; code
                            167 ;--------------------------------------------------------
                            168 	.area CSEG    (CODE)
                            169 ;------------------------------------------------------------
                            170 ;Allocation info for local variables in function 'INT0_IRQHandler'
                            171 ;------------------------------------------------------------
                            172 ;------------------------------------------------------------
                    0000    173 	G$INT0_IRQHandler$0$0 ==.
                    0000    174 	C$main.c$67$0$0 ==.
                            175 ;	../main.c:67: void INT0_IRQHandler( void ) __interrupt (0)
                            176 ;	-----------------------------------------
                            177 ;	 function INT0_IRQHandler
                            178 ;	-----------------------------------------
   0070                     179 _INT0_IRQHandler:
                    0002    180 	ar2 = 0x02
                    0003    181 	ar3 = 0x03
                    0004    182 	ar4 = 0x04
                    0005    183 	ar5 = 0x05
                    0006    184 	ar6 = 0x06
                    0007    185 	ar7 = 0x07
                    0000    186 	ar0 = 0x00
                    0001    187 	ar1 = 0x01
   0070 C0 E0               188 	push	acc
   0072 C0 F0               189 	push	b
   0074 C0 82               190 	push	dpl
   0076 C0 83               191 	push	dph
   0078 C0 02               192 	push	(0+2)
   007A C0 03               193 	push	(0+3)
   007C C0 04               194 	push	(0+4)
   007E C0 05               195 	push	(0+5)
   0080 C0 06               196 	push	(0+6)
   0082 C0 07               197 	push	(0+7)
   0084 C0 00               198 	push	(0+0)
   0086 C0 01               199 	push	(0+1)
   0088 C0 D0               200 	push	psw
   008A 75 D0 00            201 	mov	psw,#0x00
                    001D    202 	C$main.c$70$1$1 ==.
                            203 ;	../main.c:70: timer0_isr();
                            204 ;	genCall
   008D 12 00 AB            205 	lcall	_timer0_isr
   0090                     206 00101$:
   0090 D0 D0               207 	pop	psw
   0092 D0 01               208 	pop	(0+1)
   0094 D0 00               209 	pop	(0+0)
   0096 D0 07               210 	pop	(0+7)
   0098 D0 06               211 	pop	(0+6)
   009A D0 05               212 	pop	(0+5)
   009C D0 04               213 	pop	(0+4)
   009E D0 03               214 	pop	(0+3)
   00A0 D0 02               215 	pop	(0+2)
   00A2 D0 83               216 	pop	dph
   00A4 D0 82               217 	pop	dpl
   00A6 D0 F0               218 	pop	b
   00A8 D0 E0               219 	pop	acc
                    003A    220 	C$main.c$71$1$1 ==.
                    003A    221 	XG$INT0_IRQHandler$0$0 ==.
   00AA 32                  222 	reti
                            223 ;------------------------------------------------------------
                            224 ;Allocation info for local variables in function 'timer0_isr'
                            225 ;------------------------------------------------------------
                            226 ;output_state              Allocated with name '_timer0_isr_output_state_1_1'
                            227 ;interrupt_msg             Allocated with name '_timer0_isr_interrupt_msg_1_1'
                            228 ;linefeed                  Allocated with name '_timer0_isr_linefeed_1_1'
                            229 ;------------------------------------------------------------
                    003B    230 	G$timer0_isr$0$0 ==.
                    003B    231 	C$main.c$73$1$1 ==.
                            232 ;	../main.c:73: void timer0_isr( void )
                            233 ;	-----------------------------------------
                            234 ;	 function timer0_isr
                            235 ;	-----------------------------------------
   00AB                     236 _timer0_isr:
                    003B    237 	C$main.c$76$1$1 ==.
                            238 ;	../main.c:76: const uint8_t interrupt_msg[] = "\n\r** Timer interrupt received to 8051s INT 0 **\n\r";
                            239 ;	genPointerSet
                            240 ;     genFarPointerSet
   00AB 90 00 0E            241 	mov	dptr,#_timer0_isr_interrupt_msg_1_1
   00AE 74 0A               242 	mov	a,#0x0A
   00B0 F0                  243 	movx	@dptr,a
                            244 ;	genPointerSet
                            245 ;     genFarPointerSet
   00B1 90 00 0F            246 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0001)
   00B4 74 0D               247 	mov	a,#0x0D
   00B6 F0                  248 	movx	@dptr,a
                            249 ;	genPointerSet
                            250 ;     genFarPointerSet
   00B7 90 00 10            251 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0002)
   00BA 74 2A               252 	mov	a,#0x2A
   00BC F0                  253 	movx	@dptr,a
                            254 ;	genPointerSet
                            255 ;     genFarPointerSet
   00BD 90 00 11            256 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0003)
   00C0 74 2A               257 	mov	a,#0x2A
   00C2 F0                  258 	movx	@dptr,a
                            259 ;	genPointerSet
                            260 ;     genFarPointerSet
   00C3 90 00 12            261 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0004)
   00C6 74 20               262 	mov	a,#0x20
   00C8 F0                  263 	movx	@dptr,a
                            264 ;	genPointerSet
                            265 ;     genFarPointerSet
   00C9 90 00 13            266 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0005)
   00CC 74 54               267 	mov	a,#0x54
   00CE F0                  268 	movx	@dptr,a
                            269 ;	genPointerSet
                            270 ;     genFarPointerSet
   00CF 90 00 14            271 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0006)
   00D2 74 69               272 	mov	a,#0x69
   00D4 F0                  273 	movx	@dptr,a
                            274 ;	genPointerSet
                            275 ;     genFarPointerSet
   00D5 90 00 15            276 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0007)
   00D8 74 6D               277 	mov	a,#0x6D
   00DA F0                  278 	movx	@dptr,a
                            279 ;	genPointerSet
                            280 ;     genFarPointerSet
   00DB 90 00 16            281 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0008)
   00DE 74 65               282 	mov	a,#0x65
   00E0 F0                  283 	movx	@dptr,a
                            284 ;	genPointerSet
                            285 ;     genFarPointerSet
   00E1 90 00 17            286 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0009)
   00E4 74 72               287 	mov	a,#0x72
   00E6 F0                  288 	movx	@dptr,a
                            289 ;	genPointerSet
                            290 ;     genFarPointerSet
   00E7 90 00 18            291 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000a)
   00EA 74 20               292 	mov	a,#0x20
   00EC F0                  293 	movx	@dptr,a
                            294 ;	genPointerSet
                            295 ;     genFarPointerSet
   00ED 90 00 19            296 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000b)
   00F0 74 69               297 	mov	a,#0x69
   00F2 F0                  298 	movx	@dptr,a
                            299 ;	genPointerSet
                            300 ;     genFarPointerSet
   00F3 90 00 1A            301 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000c)
   00F6 74 6E               302 	mov	a,#0x6E
   00F8 F0                  303 	movx	@dptr,a
                            304 ;	genPointerSet
                            305 ;     genFarPointerSet
   00F9 90 00 1B            306 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000d)
   00FC 74 74               307 	mov	a,#0x74
   00FE F0                  308 	movx	@dptr,a
                            309 ;	genPointerSet
                            310 ;     genFarPointerSet
   00FF 90 00 1C            311 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000e)
   0102 74 65               312 	mov	a,#0x65
   0104 F0                  313 	movx	@dptr,a
                            314 ;	genPointerSet
                            315 ;     genFarPointerSet
   0105 90 00 1D            316 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x000f)
   0108 74 72               317 	mov	a,#0x72
   010A F0                  318 	movx	@dptr,a
                            319 ;	genPointerSet
                            320 ;     genFarPointerSet
   010B 90 00 1E            321 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0010)
   010E 74 72               322 	mov	a,#0x72
   0110 F0                  323 	movx	@dptr,a
                            324 ;	genPointerSet
                            325 ;     genFarPointerSet
   0111 90 00 1F            326 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0011)
   0114 74 75               327 	mov	a,#0x75
   0116 F0                  328 	movx	@dptr,a
                            329 ;	genPointerSet
                            330 ;     genFarPointerSet
   0117 90 00 20            331 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0012)
   011A 74 70               332 	mov	a,#0x70
   011C F0                  333 	movx	@dptr,a
                            334 ;	genPointerSet
                            335 ;     genFarPointerSet
   011D 90 00 21            336 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0013)
   0120 74 74               337 	mov	a,#0x74
   0122 F0                  338 	movx	@dptr,a
                            339 ;	genPointerSet
                            340 ;     genFarPointerSet
   0123 90 00 22            341 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0014)
   0126 74 20               342 	mov	a,#0x20
   0128 F0                  343 	movx	@dptr,a
                            344 ;	genPointerSet
                            345 ;     genFarPointerSet
   0129 90 00 23            346 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0015)
   012C 74 72               347 	mov	a,#0x72
   012E F0                  348 	movx	@dptr,a
                            349 ;	genPointerSet
                            350 ;     genFarPointerSet
   012F 90 00 24            351 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0016)
   0132 74 65               352 	mov	a,#0x65
   0134 F0                  353 	movx	@dptr,a
                            354 ;	genPointerSet
                            355 ;     genFarPointerSet
   0135 90 00 25            356 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0017)
   0138 74 63               357 	mov	a,#0x63
   013A F0                  358 	movx	@dptr,a
                            359 ;	genPointerSet
                            360 ;     genFarPointerSet
   013B 90 00 26            361 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0018)
   013E 74 65               362 	mov	a,#0x65
   0140 F0                  363 	movx	@dptr,a
                            364 ;	genPointerSet
                            365 ;     genFarPointerSet
   0141 90 00 27            366 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0019)
   0144 74 69               367 	mov	a,#0x69
   0146 F0                  368 	movx	@dptr,a
                            369 ;	genPointerSet
                            370 ;     genFarPointerSet
   0147 90 00 28            371 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001a)
   014A 74 76               372 	mov	a,#0x76
   014C F0                  373 	movx	@dptr,a
                            374 ;	genPointerSet
                            375 ;     genFarPointerSet
   014D 90 00 29            376 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001b)
   0150 74 65               377 	mov	a,#0x65
   0152 F0                  378 	movx	@dptr,a
                            379 ;	genPointerSet
                            380 ;     genFarPointerSet
   0153 90 00 2A            381 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001c)
   0156 74 64               382 	mov	a,#0x64
   0158 F0                  383 	movx	@dptr,a
                            384 ;	genPointerSet
                            385 ;     genFarPointerSet
   0159 90 00 2B            386 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001d)
   015C 74 20               387 	mov	a,#0x20
   015E F0                  388 	movx	@dptr,a
                            389 ;	genPointerSet
                            390 ;     genFarPointerSet
   015F 90 00 2C            391 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001e)
   0162 74 74               392 	mov	a,#0x74
   0164 F0                  393 	movx	@dptr,a
                            394 ;	genPointerSet
                            395 ;     genFarPointerSet
   0165 90 00 2D            396 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x001f)
   0168 74 6F               397 	mov	a,#0x6F
   016A F0                  398 	movx	@dptr,a
                            399 ;	genPointerSet
                            400 ;     genFarPointerSet
   016B 90 00 2E            401 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0020)
   016E 74 20               402 	mov	a,#0x20
   0170 F0                  403 	movx	@dptr,a
                            404 ;	genPointerSet
                            405 ;     genFarPointerSet
   0171 90 00 2F            406 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0021)
   0174 74 38               407 	mov	a,#0x38
   0176 F0                  408 	movx	@dptr,a
                            409 ;	genPointerSet
                            410 ;     genFarPointerSet
   0177 90 00 30            411 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0022)
   017A 74 30               412 	mov	a,#0x30
   017C F0                  413 	movx	@dptr,a
                            414 ;	genPointerSet
                            415 ;     genFarPointerSet
   017D 90 00 31            416 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0023)
   0180 74 35               417 	mov	a,#0x35
   0182 F0                  418 	movx	@dptr,a
                            419 ;	genPointerSet
                            420 ;     genFarPointerSet
   0183 90 00 32            421 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0024)
   0186 74 31               422 	mov	a,#0x31
   0188 F0                  423 	movx	@dptr,a
                            424 ;	genPointerSet
                            425 ;     genFarPointerSet
   0189 90 00 33            426 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0025)
   018C 74 73               427 	mov	a,#0x73
   018E F0                  428 	movx	@dptr,a
                            429 ;	genPointerSet
                            430 ;     genFarPointerSet
   018F 90 00 34            431 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0026)
   0192 74 20               432 	mov	a,#0x20
   0194 F0                  433 	movx	@dptr,a
                            434 ;	genPointerSet
                            435 ;     genFarPointerSet
   0195 90 00 35            436 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0027)
   0198 74 49               437 	mov	a,#0x49
   019A F0                  438 	movx	@dptr,a
                            439 ;	genPointerSet
                            440 ;     genFarPointerSet
   019B 90 00 36            441 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0028)
   019E 74 4E               442 	mov	a,#0x4E
   01A0 F0                  443 	movx	@dptr,a
                            444 ;	genPointerSet
                            445 ;     genFarPointerSet
   01A1 90 00 37            446 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0029)
   01A4 74 54               447 	mov	a,#0x54
   01A6 F0                  448 	movx	@dptr,a
                            449 ;	genPointerSet
                            450 ;     genFarPointerSet
   01A7 90 00 38            451 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002a)
   01AA 74 20               452 	mov	a,#0x20
   01AC F0                  453 	movx	@dptr,a
                            454 ;	genPointerSet
                            455 ;     genFarPointerSet
   01AD 90 00 39            456 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002b)
   01B0 74 30               457 	mov	a,#0x30
   01B2 F0                  458 	movx	@dptr,a
                            459 ;	genPointerSet
                            460 ;     genFarPointerSet
   01B3 90 00 3A            461 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002c)
   01B6 74 20               462 	mov	a,#0x20
   01B8 F0                  463 	movx	@dptr,a
                            464 ;	genPointerSet
                            465 ;     genFarPointerSet
   01B9 90 00 3B            466 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002d)
   01BC 74 2A               467 	mov	a,#0x2A
   01BE F0                  468 	movx	@dptr,a
                            469 ;	genPointerSet
                            470 ;     genFarPointerSet
   01BF 90 00 3C            471 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002e)
   01C2 74 2A               472 	mov	a,#0x2A
   01C4 F0                  473 	movx	@dptr,a
                            474 ;	genPointerSet
                            475 ;     genFarPointerSet
   01C5 90 00 3D            476 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x002f)
   01C8 74 0A               477 	mov	a,#0x0A
   01CA F0                  478 	movx	@dptr,a
                            479 ;	genPointerSet
                            480 ;     genFarPointerSet
   01CB 90 00 3E            481 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0030)
   01CE 74 0D               482 	mov	a,#0x0D
   01D0 F0                  483 	movx	@dptr,a
                            484 ;	genPointerSet
                            485 ;     genFarPointerSet
   01D1 90 00 3F            486 	mov	dptr,#(_timer0_isr_interrupt_msg_1_1 + 0x0031)
   01D4 74 00               487 	mov	a,#0x00
   01D6 F0                  488 	movx	@dptr,a
                    0167    489 	C$main.c$77$1$1 ==.
                            490 ;	../main.c:77: const uint8_t linefeed[] = "\n\r";
                            491 ;	genPointerSet
                            492 ;     genFarPointerSet
   01D7 90 00 40            493 	mov	dptr,#_timer0_isr_linefeed_1_1
   01DA 74 0A               494 	mov	a,#0x0A
   01DC F0                  495 	movx	@dptr,a
                            496 ;	genPointerSet
                            497 ;     genFarPointerSet
   01DD 90 00 41            498 	mov	dptr,#(_timer0_isr_linefeed_1_1 + 0x0001)
   01E0 74 0D               499 	mov	a,#0x0D
   01E2 F0                  500 	movx	@dptr,a
                            501 ;	genPointerSet
                            502 ;     genFarPointerSet
   01E3 90 00 42            503 	mov	dptr,#(_timer0_isr_linefeed_1_1 + 0x0002)
   01E6 74 00               504 	mov	a,#0x00
   01E8 F0                  505 	movx	@dptr,a
                    0179    506 	C$main.c$79$1$1 ==.
                            507 ;	../main.c:79: UART_send( &g_uart0, interrupt_msg, sizeof(interrupt_msg) );
                            508 ;	genCast
   01E9 90 02 BC            509 	mov	dptr,#_UART_send_PARM_2
   01EC 74 0E               510 	mov	a,#_timer0_isr_interrupt_msg_1_1
   01EE F0                  511 	movx	@dptr,a
   01EF A3                  512 	inc	dptr
   01F0 74 00               513 	mov	a,#(_timer0_isr_interrupt_msg_1_1 >> 8)
   01F2 F0                  514 	movx	@dptr,a
   01F3 A3                  515 	inc	dptr
   01F4 74 00               516 	mov	a,#0x0
   01F6 F0                  517 	movx	@dptr,a
                            518 ;	genAssign
   01F7 90 02 BF            519 	mov	dptr,#_UART_send_PARM_3
   01FA 74 32               520 	mov	a,#0x32
   01FC F0                  521 	movx	@dptr,a
   01FD E4                  522 	clr	a
   01FE A3                  523 	inc	dptr
   01FF F0                  524 	movx	@dptr,a
                            525 ;	genCall
   0200 75 82 03            526 	mov	dpl,#_g_uart0
   0203 75 83 00            527 	mov	dph,#(_g_uart0 >> 8)
   0206 75 F0 00            528 	mov	b,#0x00
   0209 12 1A 90            529 	lcall	_UART_send
                    019C    530 	C$main.c$80$1$1 ==.
                            531 ;	../main.c:80: UART_send( &g_uart0, linefeed, sizeof(linefeed) );
                            532 ;	genCast
   020C 90 02 BC            533 	mov	dptr,#_UART_send_PARM_2
   020F 74 40               534 	mov	a,#_timer0_isr_linefeed_1_1
   0211 F0                  535 	movx	@dptr,a
   0212 A3                  536 	inc	dptr
   0213 74 00               537 	mov	a,#(_timer0_isr_linefeed_1_1 >> 8)
   0215 F0                  538 	movx	@dptr,a
   0216 A3                  539 	inc	dptr
   0217 74 00               540 	mov	a,#0x0
   0219 F0                  541 	movx	@dptr,a
                            542 ;	genAssign
   021A 90 02 BF            543 	mov	dptr,#_UART_send_PARM_3
   021D 74 03               544 	mov	a,#0x03
   021F F0                  545 	movx	@dptr,a
   0220 E4                  546 	clr	a
   0221 A3                  547 	inc	dptr
   0222 F0                  548 	movx	@dptr,a
                            549 ;	genCall
   0223 75 82 03            550 	mov	dpl,#_g_uart0
   0226 75 83 00            551 	mov	dph,#(_g_uart0 >> 8)
   0229 75 F0 00            552 	mov	b,#0x00
   022C 12 1A 90            553 	lcall	_UART_send
                    01BF    554 	C$main.c$82$1$1 ==.
                            555 ;	../main.c:82: GPIO_set_output( &g_gpio, LED_D1, 1);
                            556 ;	genAssign
   022F 90 08 2B            557 	mov	dptr,#_GPIO_set_output_PARM_2
   0232 74 01               558 	mov	a,#0x01
   0234 F0                  559 	movx	@dptr,a
                            560 ;	genAssign
   0235 90 08 2C            561 	mov	dptr,#_GPIO_set_output_PARM_3
   0238 74 01               562 	mov	a,#0x01
   023A F0                  563 	movx	@dptr,a
                            564 ;	genCall
   023B 75 82 00            565 	mov	dpl,#_g_gpio
   023E 75 83 00            566 	mov	dph,#(_g_gpio >> 8)
   0241 75 F0 00            567 	mov	b,#0x00
   0244 12 50 94            568 	lcall	_GPIO_set_output
                    01D7    569 	C$main.c$84$1$1 ==.
                            570 ;	../main.c:84: if ( output_state > 0 )
                            571 ;	genAssign
   0247 90 00 0A            572 	mov	dptr,#_timer0_isr_output_state_1_1
   024A E0                  573 	movx	a,@dptr
   024B FA                  574 	mov	r2,a
   024C A3                  575 	inc	dptr
   024D E0                  576 	movx	a,@dptr
   024E FB                  577 	mov	r3,a
   024F A3                  578 	inc	dptr
   0250 E0                  579 	movx	a,@dptr
   0251 FC                  580 	mov	r4,a
   0252 A3                  581 	inc	dptr
   0253 E0                  582 	movx	a,@dptr
   0254 FD                  583 	mov	r5,a
                            584 ;	genCmpGt
                            585 ;	genCmp
   0255 C3                  586 	clr	c
   0256 74 00               587 	mov	a,#0x00
   0258 9A                  588 	subb	a,r2
   0259 74 00               589 	mov	a,#0x00
   025B 9B                  590 	subb	a,r3
   025C 74 00               591 	mov	a,#0x00
   025E 9C                  592 	subb	a,r4
   025F 74 00               593 	mov	a,#0x00
   0261 64 80               594 	xrl	a,#0x80
   0263 8D F0               595 	mov	b,r5
   0265 63 F0 80            596 	xrl	b,#0x80
   0268 95 F0               597 	subb	a,b
                            598 ;	genIfxJump
   026A 40 03               599 	jc	00107$
   026C 02 02 7D            600 	ljmp	00102$
   026F                     601 00107$:
                    01FF    602 	C$main.c$86$2$2 ==.
                            603 ;	../main.c:86: output_state = 0;
                            604 ;	genAssign
   026F 90 00 0A            605 	mov	dptr,#_timer0_isr_output_state_1_1
   0272 E4                  606 	clr	a
   0273 F0                  607 	movx	@dptr,a
   0274 A3                  608 	inc	dptr
   0275 F0                  609 	movx	@dptr,a
   0276 A3                  610 	inc	dptr
   0277 F0                  611 	movx	@dptr,a
   0278 A3                  612 	inc	dptr
   0279 F0                  613 	movx	@dptr,a
   027A 02 02 8A            614 	ljmp	00103$
   027D                     615 00102$:
                    020D    616 	C$main.c$90$2$3 ==.
                            617 ;	../main.c:90: output_state = 1;
                            618 ;	genAssign
   027D 90 00 0A            619 	mov	dptr,#_timer0_isr_output_state_1_1
   0280 74 01               620 	mov	a,#0x01
   0282 F0                  621 	movx	@dptr,a
   0283 E4                  622 	clr	a
   0284 A3                  623 	inc	dptr
   0285 F0                  624 	movx	@dptr,a
   0286 A3                  625 	inc	dptr
   0287 F0                  626 	movx	@dptr,a
   0288 A3                  627 	inc	dptr
   0289 F0                  628 	movx	@dptr,a
   028A                     629 00103$:
                    021A    630 	C$main.c$92$1$1 ==.
                            631 ;	../main.c:92: GPIO_set_output( &g_gpio, LED_D0, output_state);
                            632 ;	genAssign
   028A 90 00 0A            633 	mov	dptr,#_timer0_isr_output_state_1_1
   028D E0                  634 	movx	a,@dptr
   028E FA                  635 	mov	r2,a
   028F A3                  636 	inc	dptr
   0290 E0                  637 	movx	a,@dptr
   0291 FB                  638 	mov	r3,a
   0292 A3                  639 	inc	dptr
   0293 E0                  640 	movx	a,@dptr
   0294 FC                  641 	mov	r4,a
   0295 A3                  642 	inc	dptr
   0296 E0                  643 	movx	a,@dptr
   0297 FD                  644 	mov	r5,a
                            645 ;	genCast
                            646 ;	genAssign
   0298 90 08 2B            647 	mov	dptr,#_GPIO_set_output_PARM_2
   029B 74 00               648 	mov	a,#0x00
   029D F0                  649 	movx	@dptr,a
                            650 ;	genAssign
   029E 90 08 2C            651 	mov	dptr,#_GPIO_set_output_PARM_3
   02A1 EA                  652 	mov	a,r2
   02A2 F0                  653 	movx	@dptr,a
                            654 ;	genCall
   02A3 75 82 00            655 	mov	dpl,#_g_gpio
   02A6 75 83 00            656 	mov	dph,#(_g_gpio >> 8)
   02A9 75 F0 00            657 	mov	b,#0x00
   02AC 12 50 94            658 	lcall	_GPIO_set_output
                    023F    659 	C$main.c$95$1$1 ==.
                            660 ;	../main.c:95: TMR_clear_int( &g_timer0 );
                            661 ;	genCall
   02AF 75 82 08            662 	mov	dpl,#_g_timer0
   02B2 75 83 00            663 	mov	dph,#(_g_timer0 >> 8)
   02B5 75 F0 00            664 	mov	b,#0x00
   02B8 12 36 DB            665 	lcall	_TMR_clear_int
   02BB                     666 00104$:
                    024B    667 	C$main.c$96$1$1 ==.
                    024B    668 	XG$timer0_isr$0$0 ==.
   02BB 22                  669 	ret
                            670 ;------------------------------------------------------------
                            671 ;Allocation info for local variables in function 'enable_8051_interrupts'
                            672 ;------------------------------------------------------------
                            673 ;------------------------------------------------------------
                    024C    674 	G$enable_8051_interrupts$0$0 ==.
                    024C    675 	C$main.c$98$1$1 ==.
                            676 ;	../main.c:98: void enable_8051_interrupts( void )
                            677 ;	-----------------------------------------
                            678 ;	 function enable_8051_interrupts
                            679 ;	-----------------------------------------
   02BC                     680 _enable_8051_interrupts:
                    024C    681 	C$main.c$104$1$1 ==.
                            682 ;	../main.c:104: __endasm;
                            683 	;	genInline
   02BC D2 A8               684 	  setb ex0 ; if using INT0
   02BE D2 AA               685 	  setb ex1 ; if using INT1
   02C0 D2 AF               686 	  setb ea
   02C2                     687 00101$:
                    0252    688 	C$main.c$105$1$1 ==.
                    0252    689 	XG$enable_8051_interrupts$0$0 ==.
   02C2 22                  690 	ret
                            691 ;------------------------------------------------------------
                            692 ;Allocation info for local variables in function 'C8051_interrupt_type'
                            693 ;------------------------------------------------------------
                            694 ;------------------------------------------------------------
                    0253    695 	G$C8051_interrupt_type$0$0 ==.
                    0253    696 	C$main.c$107$1$1 ==.
                            697 ;	../main.c:107: void C8051_interrupt_type( void )
                            698 ;	-----------------------------------------
                            699 ;	 function C8051_interrupt_type
                            700 ;	-----------------------------------------
   02C3                     701 _C8051_interrupt_type:
                    0253    702 	C$main.c$112$1$1 ==.
                            703 ;	../main.c:112: __endasm;
                            704 	;	genInline
   02C3 D2 88               705 	 setb it0 ; if set INT0 for edge operation
   02C5 D2 8A               706 	 setb it1 ; if set INT1 for edge operation
   02C7                     707 00101$:
                    0257    708 	C$main.c$113$1$1 ==.
                    0257    709 	XG$C8051_interrupt_type$0$0 ==.
   02C7 22                  710 	ret
                            711 ;------------------------------------------------------------
                            712 ;Allocation info for local variables in function 'main'
                            713 ;------------------------------------------------------------
                            714 ;greeting_msg              Allocated with name '_main_greeting_msg_1_1'
                            715 ;linefeed                  Allocated with name '_main_linefeed_1_1'
                            716 ;scanning_msg              Allocated with name '_main_scanning_msg_1_1'
                            717 ;------------------------------------------------------------
                    0258    718 	G$main$0$0 ==.
                    0258    719 	C$main.c$116$1$1 ==.
                            720 ;	../main.c:116: int main( void )
                            721 ;	-----------------------------------------
                            722 ;	 function main
                            723 ;	-----------------------------------------
   02C8                     724 _main:
                    0258    725 	C$main.c$118$1$1 ==.
                            726 ;	../main.c:118: const uint8_t greeting_msg[] = "\n\r* Start the 8051s Interrupts test *\n\r";
                            727 ;	genPointerSet
                            728 ;     genFarPointerSet
   02C8 90 00 43            729 	mov	dptr,#_main_greeting_msg_1_1
   02CB 74 0A               730 	mov	a,#0x0A
   02CD F0                  731 	movx	@dptr,a
                            732 ;	genPointerSet
                            733 ;     genFarPointerSet
   02CE 90 00 44            734 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0001)
   02D1 74 0D               735 	mov	a,#0x0D
   02D3 F0                  736 	movx	@dptr,a
                            737 ;	genPointerSet
                            738 ;     genFarPointerSet
   02D4 90 00 45            739 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0002)
   02D7 74 2A               740 	mov	a,#0x2A
   02D9 F0                  741 	movx	@dptr,a
                            742 ;	genPointerSet
                            743 ;     genFarPointerSet
   02DA 90 00 46            744 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0003)
   02DD 74 20               745 	mov	a,#0x20
   02DF F0                  746 	movx	@dptr,a
                            747 ;	genPointerSet
                            748 ;     genFarPointerSet
   02E0 90 00 47            749 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0004)
   02E3 74 53               750 	mov	a,#0x53
   02E5 F0                  751 	movx	@dptr,a
                            752 ;	genPointerSet
                            753 ;     genFarPointerSet
   02E6 90 00 48            754 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0005)
   02E9 74 74               755 	mov	a,#0x74
   02EB F0                  756 	movx	@dptr,a
                            757 ;	genPointerSet
                            758 ;     genFarPointerSet
   02EC 90 00 49            759 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0006)
   02EF 74 61               760 	mov	a,#0x61
   02F1 F0                  761 	movx	@dptr,a
                            762 ;	genPointerSet
                            763 ;     genFarPointerSet
   02F2 90 00 4A            764 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0007)
   02F5 74 72               765 	mov	a,#0x72
   02F7 F0                  766 	movx	@dptr,a
                            767 ;	genPointerSet
                            768 ;     genFarPointerSet
   02F8 90 00 4B            769 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0008)
   02FB 74 74               770 	mov	a,#0x74
   02FD F0                  771 	movx	@dptr,a
                            772 ;	genPointerSet
                            773 ;     genFarPointerSet
   02FE 90 00 4C            774 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0009)
   0301 74 20               775 	mov	a,#0x20
   0303 F0                  776 	movx	@dptr,a
                            777 ;	genPointerSet
                            778 ;     genFarPointerSet
   0304 90 00 4D            779 	mov	dptr,#(_main_greeting_msg_1_1 + 0x000a)
   0307 74 74               780 	mov	a,#0x74
   0309 F0                  781 	movx	@dptr,a
                            782 ;	genPointerSet
                            783 ;     genFarPointerSet
   030A 90 00 4E            784 	mov	dptr,#(_main_greeting_msg_1_1 + 0x000b)
   030D 74 68               785 	mov	a,#0x68
   030F F0                  786 	movx	@dptr,a
                            787 ;	genPointerSet
                            788 ;     genFarPointerSet
   0310 90 00 4F            789 	mov	dptr,#(_main_greeting_msg_1_1 + 0x000c)
   0313 74 65               790 	mov	a,#0x65
   0315 F0                  791 	movx	@dptr,a
                            792 ;	genPointerSet
                            793 ;     genFarPointerSet
   0316 90 00 50            794 	mov	dptr,#(_main_greeting_msg_1_1 + 0x000d)
   0319 74 20               795 	mov	a,#0x20
   031B F0                  796 	movx	@dptr,a
                            797 ;	genPointerSet
                            798 ;     genFarPointerSet
   031C 90 00 51            799 	mov	dptr,#(_main_greeting_msg_1_1 + 0x000e)
   031F 74 38               800 	mov	a,#0x38
   0321 F0                  801 	movx	@dptr,a
                            802 ;	genPointerSet
                            803 ;     genFarPointerSet
   0322 90 00 52            804 	mov	dptr,#(_main_greeting_msg_1_1 + 0x000f)
   0325 74 30               805 	mov	a,#0x30
   0327 F0                  806 	movx	@dptr,a
                            807 ;	genPointerSet
                            808 ;     genFarPointerSet
   0328 90 00 53            809 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0010)
   032B 74 35               810 	mov	a,#0x35
   032D F0                  811 	movx	@dptr,a
                            812 ;	genPointerSet
                            813 ;     genFarPointerSet
   032E 90 00 54            814 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0011)
   0331 74 31               815 	mov	a,#0x31
   0333 F0                  816 	movx	@dptr,a
                            817 ;	genPointerSet
                            818 ;     genFarPointerSet
   0334 90 00 55            819 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0012)
   0337 74 73               820 	mov	a,#0x73
   0339 F0                  821 	movx	@dptr,a
                            822 ;	genPointerSet
                            823 ;     genFarPointerSet
   033A 90 00 56            824 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0013)
   033D 74 20               825 	mov	a,#0x20
   033F F0                  826 	movx	@dptr,a
                            827 ;	genPointerSet
                            828 ;     genFarPointerSet
   0340 90 00 57            829 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0014)
   0343 74 49               830 	mov	a,#0x49
   0345 F0                  831 	movx	@dptr,a
                            832 ;	genPointerSet
                            833 ;     genFarPointerSet
   0346 90 00 58            834 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0015)
   0349 74 6E               835 	mov	a,#0x6E
   034B F0                  836 	movx	@dptr,a
                            837 ;	genPointerSet
                            838 ;     genFarPointerSet
   034C 90 00 59            839 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0016)
   034F 74 74               840 	mov	a,#0x74
   0351 F0                  841 	movx	@dptr,a
                            842 ;	genPointerSet
                            843 ;     genFarPointerSet
   0352 90 00 5A            844 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0017)
   0355 74 65               845 	mov	a,#0x65
   0357 F0                  846 	movx	@dptr,a
                            847 ;	genPointerSet
                            848 ;     genFarPointerSet
   0358 90 00 5B            849 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0018)
   035B 74 72               850 	mov	a,#0x72
   035D F0                  851 	movx	@dptr,a
                            852 ;	genPointerSet
                            853 ;     genFarPointerSet
   035E 90 00 5C            854 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0019)
   0361 74 72               855 	mov	a,#0x72
   0363 F0                  856 	movx	@dptr,a
                            857 ;	genPointerSet
                            858 ;     genFarPointerSet
   0364 90 00 5D            859 	mov	dptr,#(_main_greeting_msg_1_1 + 0x001a)
   0367 74 75               860 	mov	a,#0x75
   0369 F0                  861 	movx	@dptr,a
                            862 ;	genPointerSet
                            863 ;     genFarPointerSet
   036A 90 00 5E            864 	mov	dptr,#(_main_greeting_msg_1_1 + 0x001b)
   036D 74 70               865 	mov	a,#0x70
   036F F0                  866 	movx	@dptr,a
                            867 ;	genPointerSet
                            868 ;     genFarPointerSet
   0370 90 00 5F            869 	mov	dptr,#(_main_greeting_msg_1_1 + 0x001c)
   0373 74 74               870 	mov	a,#0x74
   0375 F0                  871 	movx	@dptr,a
                            872 ;	genPointerSet
                            873 ;     genFarPointerSet
   0376 90 00 60            874 	mov	dptr,#(_main_greeting_msg_1_1 + 0x001d)
   0379 74 73               875 	mov	a,#0x73
   037B F0                  876 	movx	@dptr,a
                            877 ;	genPointerSet
                            878 ;     genFarPointerSet
   037C 90 00 61            879 	mov	dptr,#(_main_greeting_msg_1_1 + 0x001e)
   037F 74 20               880 	mov	a,#0x20
   0381 F0                  881 	movx	@dptr,a
                            882 ;	genPointerSet
                            883 ;     genFarPointerSet
   0382 90 00 62            884 	mov	dptr,#(_main_greeting_msg_1_1 + 0x001f)
   0385 74 74               885 	mov	a,#0x74
   0387 F0                  886 	movx	@dptr,a
                            887 ;	genPointerSet
                            888 ;     genFarPointerSet
   0388 90 00 63            889 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0020)
   038B 74 65               890 	mov	a,#0x65
   038D F0                  891 	movx	@dptr,a
                            892 ;	genPointerSet
                            893 ;     genFarPointerSet
   038E 90 00 64            894 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0021)
   0391 74 73               895 	mov	a,#0x73
   0393 F0                  896 	movx	@dptr,a
                            897 ;	genPointerSet
                            898 ;     genFarPointerSet
   0394 90 00 65            899 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0022)
   0397 74 74               900 	mov	a,#0x74
   0399 F0                  901 	movx	@dptr,a
                            902 ;	genPointerSet
                            903 ;     genFarPointerSet
   039A 90 00 66            904 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0023)
   039D 74 20               905 	mov	a,#0x20
   039F F0                  906 	movx	@dptr,a
                            907 ;	genPointerSet
                            908 ;     genFarPointerSet
   03A0 90 00 67            909 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0024)
   03A3 74 2A               910 	mov	a,#0x2A
   03A5 F0                  911 	movx	@dptr,a
                            912 ;	genPointerSet
                            913 ;     genFarPointerSet
   03A6 90 00 68            914 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0025)
   03A9 74 0A               915 	mov	a,#0x0A
   03AB F0                  916 	movx	@dptr,a
                            917 ;	genPointerSet
                            918 ;     genFarPointerSet
   03AC 90 00 69            919 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0026)
   03AF 74 0D               920 	mov	a,#0x0D
   03B1 F0                  921 	movx	@dptr,a
                            922 ;	genPointerSet
                            923 ;     genFarPointerSet
   03B2 90 00 6A            924 	mov	dptr,#(_main_greeting_msg_1_1 + 0x0027)
   03B5 74 00               925 	mov	a,#0x00
   03B7 F0                  926 	movx	@dptr,a
                    0348    927 	C$main.c$119$1$1 ==.
                            928 ;	../main.c:119: const uint8_t linefeed[] = "\n\r";
                            929 ;	genPointerSet
                            930 ;     genFarPointerSet
   03B8 90 00 6B            931 	mov	dptr,#_main_linefeed_1_1
   03BB 74 0A               932 	mov	a,#0x0A
   03BD F0                  933 	movx	@dptr,a
                            934 ;	genPointerSet
                            935 ;     genFarPointerSet
   03BE 90 00 6C            936 	mov	dptr,#(_main_linefeed_1_1 + 0x0001)
   03C1 74 0D               937 	mov	a,#0x0D
   03C3 F0                  938 	movx	@dptr,a
                            939 ;	genPointerSet
                            940 ;     genFarPointerSet
   03C4 90 00 6D            941 	mov	dptr,#(_main_linefeed_1_1 + 0x0002)
   03C7 74 00               942 	mov	a,#0x00
   03C9 F0                  943 	movx	@dptr,a
                    035A    944 	C$main.c$120$1$1 ==.
                            945 ;	../main.c:120: const uint8_t scanning_msg[] = "\n\r    Scanning......       \n\r";
                            946 ;	genPointerSet
                            947 ;     genFarPointerSet
   03CA 90 00 6E            948 	mov	dptr,#_main_scanning_msg_1_1
   03CD 74 0A               949 	mov	a,#0x0A
   03CF F0                  950 	movx	@dptr,a
                            951 ;	genPointerSet
                            952 ;     genFarPointerSet
   03D0 90 00 6F            953 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0001)
   03D3 74 0D               954 	mov	a,#0x0D
   03D5 F0                  955 	movx	@dptr,a
                            956 ;	genPointerSet
                            957 ;     genFarPointerSet
   03D6 90 00 70            958 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0002)
   03D9 74 20               959 	mov	a,#0x20
   03DB F0                  960 	movx	@dptr,a
                            961 ;	genPointerSet
                            962 ;     genFarPointerSet
   03DC 90 00 71            963 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0003)
   03DF 74 20               964 	mov	a,#0x20
   03E1 F0                  965 	movx	@dptr,a
                            966 ;	genPointerSet
                            967 ;     genFarPointerSet
   03E2 90 00 72            968 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0004)
   03E5 74 20               969 	mov	a,#0x20
   03E7 F0                  970 	movx	@dptr,a
                            971 ;	genPointerSet
                            972 ;     genFarPointerSet
   03E8 90 00 73            973 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0005)
   03EB 74 20               974 	mov	a,#0x20
   03ED F0                  975 	movx	@dptr,a
                            976 ;	genPointerSet
                            977 ;     genFarPointerSet
   03EE 90 00 74            978 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0006)
   03F1 74 53               979 	mov	a,#0x53
   03F3 F0                  980 	movx	@dptr,a
                            981 ;	genPointerSet
                            982 ;     genFarPointerSet
   03F4 90 00 75            983 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0007)
   03F7 74 63               984 	mov	a,#0x63
   03F9 F0                  985 	movx	@dptr,a
                            986 ;	genPointerSet
                            987 ;     genFarPointerSet
   03FA 90 00 76            988 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0008)
   03FD 74 61               989 	mov	a,#0x61
   03FF F0                  990 	movx	@dptr,a
                            991 ;	genPointerSet
                            992 ;     genFarPointerSet
   0400 90 00 77            993 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0009)
   0403 74 6E               994 	mov	a,#0x6E
   0405 F0                  995 	movx	@dptr,a
                            996 ;	genPointerSet
                            997 ;     genFarPointerSet
   0406 90 00 78            998 	mov	dptr,#(_main_scanning_msg_1_1 + 0x000a)
   0409 74 6E               999 	mov	a,#0x6E
   040B F0                 1000 	movx	@dptr,a
                           1001 ;	genPointerSet
                           1002 ;     genFarPointerSet
   040C 90 00 79           1003 	mov	dptr,#(_main_scanning_msg_1_1 + 0x000b)
   040F 74 69              1004 	mov	a,#0x69
   0411 F0                 1005 	movx	@dptr,a
                           1006 ;	genPointerSet
                           1007 ;     genFarPointerSet
   0412 90 00 7A           1008 	mov	dptr,#(_main_scanning_msg_1_1 + 0x000c)
   0415 74 6E              1009 	mov	a,#0x6E
   0417 F0                 1010 	movx	@dptr,a
                           1011 ;	genPointerSet
                           1012 ;     genFarPointerSet
   0418 90 00 7B           1013 	mov	dptr,#(_main_scanning_msg_1_1 + 0x000d)
   041B 74 67              1014 	mov	a,#0x67
   041D F0                 1015 	movx	@dptr,a
                           1016 ;	genPointerSet
                           1017 ;     genFarPointerSet
   041E 90 00 7C           1018 	mov	dptr,#(_main_scanning_msg_1_1 + 0x000e)
   0421 74 2E              1019 	mov	a,#0x2E
   0423 F0                 1020 	movx	@dptr,a
                           1021 ;	genPointerSet
                           1022 ;     genFarPointerSet
   0424 90 00 7D           1023 	mov	dptr,#(_main_scanning_msg_1_1 + 0x000f)
   0427 74 2E              1024 	mov	a,#0x2E
   0429 F0                 1025 	movx	@dptr,a
                           1026 ;	genPointerSet
                           1027 ;     genFarPointerSet
   042A 90 00 7E           1028 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0010)
   042D 74 2E              1029 	mov	a,#0x2E
   042F F0                 1030 	movx	@dptr,a
                           1031 ;	genPointerSet
                           1032 ;     genFarPointerSet
   0430 90 00 7F           1033 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0011)
   0433 74 2E              1034 	mov	a,#0x2E
   0435 F0                 1035 	movx	@dptr,a
                           1036 ;	genPointerSet
                           1037 ;     genFarPointerSet
   0436 90 00 80           1038 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0012)
   0439 74 2E              1039 	mov	a,#0x2E
   043B F0                 1040 	movx	@dptr,a
                           1041 ;	genPointerSet
                           1042 ;     genFarPointerSet
   043C 90 00 81           1043 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0013)
   043F 74 2E              1044 	mov	a,#0x2E
   0441 F0                 1045 	movx	@dptr,a
                           1046 ;	genPointerSet
                           1047 ;     genFarPointerSet
   0442 90 00 82           1048 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0014)
   0445 74 20              1049 	mov	a,#0x20
   0447 F0                 1050 	movx	@dptr,a
                           1051 ;	genPointerSet
                           1052 ;     genFarPointerSet
   0448 90 00 83           1053 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0015)
   044B 74 20              1054 	mov	a,#0x20
   044D F0                 1055 	movx	@dptr,a
                           1056 ;	genPointerSet
                           1057 ;     genFarPointerSet
   044E 90 00 84           1058 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0016)
   0451 74 20              1059 	mov	a,#0x20
   0453 F0                 1060 	movx	@dptr,a
                           1061 ;	genPointerSet
                           1062 ;     genFarPointerSet
   0454 90 00 85           1063 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0017)
   0457 74 20              1064 	mov	a,#0x20
   0459 F0                 1065 	movx	@dptr,a
                           1066 ;	genPointerSet
                           1067 ;     genFarPointerSet
   045A 90 00 86           1068 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0018)
   045D 74 20              1069 	mov	a,#0x20
   045F F0                 1070 	movx	@dptr,a
                           1071 ;	genPointerSet
                           1072 ;     genFarPointerSet
   0460 90 00 87           1073 	mov	dptr,#(_main_scanning_msg_1_1 + 0x0019)
   0463 74 20              1074 	mov	a,#0x20
   0465 F0                 1075 	movx	@dptr,a
                           1076 ;	genPointerSet
                           1077 ;     genFarPointerSet
   0466 90 00 88           1078 	mov	dptr,#(_main_scanning_msg_1_1 + 0x001a)
   0469 74 20              1079 	mov	a,#0x20
   046B F0                 1080 	movx	@dptr,a
                           1081 ;	genPointerSet
                           1082 ;     genFarPointerSet
   046C 90 00 89           1083 	mov	dptr,#(_main_scanning_msg_1_1 + 0x001b)
   046F 74 0A              1084 	mov	a,#0x0A
   0471 F0                 1085 	movx	@dptr,a
                           1086 ;	genPointerSet
                           1087 ;     genFarPointerSet
   0472 90 00 8A           1088 	mov	dptr,#(_main_scanning_msg_1_1 + 0x001c)
   0475 74 0D              1089 	mov	a,#0x0D
   0477 F0                 1090 	movx	@dptr,a
                           1091 ;	genPointerSet
                           1092 ;     genFarPointerSet
   0478 90 00 8B           1093 	mov	dptr,#(_main_scanning_msg_1_1 + 0x001d)
   047B 74 00              1094 	mov	a,#0x00
   047D F0                 1095 	movx	@dptr,a
                    040E   1096 	C$main.c$121$1$1 ==.
                           1097 ;	../main.c:121: enable_8051_interrupts( );
                           1098 ;	genCall
   047E 12 02 BC           1099 	lcall	_enable_8051_interrupts
                    0411   1100 	C$main.c$126$1$1 ==.
                           1101 ;	../main.c:126: UART_init( &g_uart0, APB3_BASE_ADDRESS + COREUARTAPB_0,      UART_9600_BAUD, DATA_8_BITS | NO_PARITY );
                           1102 ;	genAssign
   0481 90 01 EF           1103 	mov	dptr,#_UART_init_PARM_2
   0484 74 00              1104 	mov	a,#0x00
   0486 F0                 1105 	movx	@dptr,a
   0487 A3                 1106 	inc	dptr
   0488 74 F0              1107 	mov	a,#0xF0
   048A F0                 1108 	movx	@dptr,a
                           1109 ;	genAssign
   048B 90 01 F1           1110 	mov	dptr,#_UART_init_PARM_3
   048E 74 26              1111 	mov	a,#0x26
   0490 F0                 1112 	movx	@dptr,a
   0491 E4                 1113 	clr	a
   0492 A3                 1114 	inc	dptr
   0493 F0                 1115 	movx	@dptr,a
                           1116 ;	genAssign
   0494 90 01 F3           1117 	mov	dptr,#_UART_init_PARM_4
   0497 74 01              1118 	mov	a,#0x01
   0499 F0                 1119 	movx	@dptr,a
                           1120 ;	genCall
   049A 75 82 03           1121 	mov	dpl,#_g_uart0
   049D 75 83 00           1122 	mov	dph,#(_g_uart0 >> 8)
   04A0 75 F0 00           1123 	mov	b,#0x00
   04A3 12 12 FC           1124 	lcall	_UART_init
                    0436   1125 	C$main.c$127$1$1 ==.
                           1126 ;	../main.c:127: WD_init( &g_wd, APB3_BASE_ADDRESS + COREWATCHDOG_0,     WatchDog_COUNT, WD_PRESCALER_DIV_16 );
                           1127 ;	genAssign
   04A6 90 00 E6           1128 	mov	dptr,#_WD_init_PARM_2
   04A9 74 00              1129 	mov	a,#0x00
   04AB F0                 1130 	movx	@dptr,a
   04AC A3                 1131 	inc	dptr
   04AD 74 F3              1132 	mov	a,#0xF3
   04AF F0                 1133 	movx	@dptr,a
                           1134 ;	genAssign
   04B0 90 00 E8           1135 	mov	dptr,#_WD_init_PARM_3
   04B3 74 E8              1136 	mov	a,#0xE8
   04B5 F0                 1137 	movx	@dptr,a
   04B6 A3                 1138 	inc	dptr
   04B7 74 03              1139 	mov	a,#0x03
   04B9 F0                 1140 	movx	@dptr,a
   04BA A3                 1141 	inc	dptr
   04BB 74 00              1142 	mov	a,#0x00
   04BD F0                 1143 	movx	@dptr,a
   04BE A3                 1144 	inc	dptr
   04BF 74 00              1145 	mov	a,#0x00
   04C1 F0                 1146 	movx	@dptr,a
                           1147 ;	genAssign
   04C2 90 00 EC           1148 	mov	dptr,#_WD_init_PARM_4
   04C5 74 03              1149 	mov	a,#0x03
   04C7 F0                 1150 	movx	@dptr,a
   04C8 E4                 1151 	clr	a
   04C9 A3                 1152 	inc	dptr
   04CA F0                 1153 	movx	@dptr,a
   04CB A3                 1154 	inc	dptr
   04CC F0                 1155 	movx	@dptr,a
   04CD A3                 1156 	inc	dptr
   04CE F0                 1157 	movx	@dptr,a
                           1158 ;	genCall
   04CF 75 82 06           1159 	mov	dpl,#_g_wd
   04D2 75 83 00           1160 	mov	dph,#(_g_wd >> 8)
   04D5 75 F0 00           1161 	mov	b,#0x00
   04D8 12 09 A1           1162 	lcall	_WD_init
                    046B   1163 	C$main.c$128$1$1 ==.
                           1164 ;	../main.c:128: WD_disable( &g_wd );
                           1165 ;	genCall
   04DB 75 82 06           1166 	mov	dpl,#_g_wd
   04DE 75 83 00           1167 	mov	dph,#(_g_wd >> 8)
   04E1 75 F0 00           1168 	mov	b,#0x00
   04E4 12 0E 7F           1169 	lcall	_WD_disable
                    0477   1170 	C$main.c$129$1$1 ==.
                           1171 ;	../main.c:129: GPIO_init( &g_gpio,APB3_BASE_ADDRESS + COREGPIO_0, GPIO_APB_32_BITS_BUS );
                           1172 ;	genAssign
   04E7 90 07 25           1173 	mov	dptr,#_GPIO_init_PARM_2
   04EA 74 00              1174 	mov	a,#0x00
   04EC F0                 1175 	movx	@dptr,a
   04ED A3                 1176 	inc	dptr
   04EE 74 F1              1177 	mov	a,#0xF1
   04F0 F0                 1178 	movx	@dptr,a
                           1179 ;	genAssign
   04F1 90 07 27           1180 	mov	dptr,#_GPIO_init_PARM_3
   04F4 74 02              1181 	mov	a,#0x02
   04F6 F0                 1182 	movx	@dptr,a
                           1183 ;	genCall
   04F7 75 82 00           1184 	mov	dpl,#_g_gpio
   04FA 75 83 00           1185 	mov	dph,#(_g_gpio >> 8)
   04FD 75 F0 00           1186 	mov	b,#0x00
   0500 12 42 E1           1187 	lcall	_GPIO_init
                    0493   1188 	C$main.c$135$1$1 ==.
                           1189 ;	../main.c:135: GPIO_config( &g_gpio, LED_D0, GPIO_OUTPUT_MODE );
                           1190 ;	genAssign
   0503 90 07 4E           1191 	mov	dptr,#_GPIO_config_PARM_2
   0506 74 00              1192 	mov	a,#0x00
   0508 F0                 1193 	movx	@dptr,a
                           1194 ;	genAssign
   0509 90 07 4F           1195 	mov	dptr,#_GPIO_config_PARM_3
   050C 74 05              1196 	mov	a,#0x05
   050E F0                 1197 	movx	@dptr,a
   050F E4                 1198 	clr	a
   0510 A3                 1199 	inc	dptr
   0511 F0                 1200 	movx	@dptr,a
   0512 A3                 1201 	inc	dptr
   0513 F0                 1202 	movx	@dptr,a
   0514 A3                 1203 	inc	dptr
   0515 F0                 1204 	movx	@dptr,a
                           1205 ;	genCall
   0516 75 82 00           1206 	mov	dpl,#_g_gpio
   0519 75 83 00           1207 	mov	dph,#(_g_gpio >> 8)
   051C 75 F0 00           1208 	mov	b,#0x00
   051F 12 45 E5           1209 	lcall	_GPIO_config
                    04B2   1210 	C$main.c$136$1$1 ==.
                           1211 ;	../main.c:136: GPIO_config( &g_gpio, LED_D5, GPIO_OUTPUT_MODE );
                           1212 ;	genAssign
   0522 90 07 4E           1213 	mov	dptr,#_GPIO_config_PARM_2
   0525 74 05              1214 	mov	a,#0x05
   0527 F0                 1215 	movx	@dptr,a
                           1216 ;	genAssign
   0528 90 07 4F           1217 	mov	dptr,#_GPIO_config_PARM_3
   052B 74 05              1218 	mov	a,#0x05
   052D F0                 1219 	movx	@dptr,a
   052E E4                 1220 	clr	a
   052F A3                 1221 	inc	dptr
   0530 F0                 1222 	movx	@dptr,a
   0531 A3                 1223 	inc	dptr
   0532 F0                 1224 	movx	@dptr,a
   0533 A3                 1225 	inc	dptr
   0534 F0                 1226 	movx	@dptr,a
                           1227 ;	genCall
   0535 75 82 00           1228 	mov	dpl,#_g_gpio
   0538 75 83 00           1229 	mov	dph,#(_g_gpio >> 8)
   053B 75 F0 00           1230 	mov	b,#0x00
   053E 12 45 E5           1231 	lcall	_GPIO_config
                    04D1   1232 	C$main.c$139$1$1 ==.
                           1233 ;	../main.c:139: TMR_init( &g_timer0, APB3_BASE_ADDRESS + CORETIMER_0,                 TMR_CONTINUOUS_MODE,PRESCALER_DIV_1024, TIMER_LOAD_VALUE );
                           1234 ;	genAssign
   0541 90 04 C0           1235 	mov	dptr,#_TMR_init_PARM_2
   0544 74 00              1236 	mov	a,#0x00
   0546 F0                 1237 	movx	@dptr,a
   0547 A3                 1238 	inc	dptr
   0548 74 F2              1239 	mov	a,#0xF2
   054A F0                 1240 	movx	@dptr,a
                           1241 ;	genAssign
   054B 90 04 C2           1242 	mov	dptr,#_TMR_init_PARM_3
   054E 74 00              1243 	mov	a,#0x00
   0550 F0                 1244 	movx	@dptr,a
                           1245 ;	genAssign
   0551 90 04 C3           1246 	mov	dptr,#_TMR_init_PARM_4
   0554 74 09              1247 	mov	a,#0x09
   0556 F0                 1248 	movx	@dptr,a
   0557 E4                 1249 	clr	a
   0558 A3                 1250 	inc	dptr
   0559 F0                 1251 	movx	@dptr,a
   055A A3                 1252 	inc	dptr
   055B F0                 1253 	movx	@dptr,a
   055C A3                 1254 	inc	dptr
   055D F0                 1255 	movx	@dptr,a
                           1256 ;	genAssign
   055E 90 04 C7           1257 	mov	dptr,#_TMR_init_PARM_5
   0561 74 8C              1258 	mov	a,#0x8C
   0563 F0                 1259 	movx	@dptr,a
   0564 A3                 1260 	inc	dptr
   0565 74 5B              1261 	mov	a,#0x5B
   0567 F0                 1262 	movx	@dptr,a
   0568 A3                 1263 	inc	dptr
   0569 74 00              1264 	mov	a,#0x00
   056B F0                 1265 	movx	@dptr,a
   056C A3                 1266 	inc	dptr
   056D 74 00              1267 	mov	a,#0x00
   056F F0                 1268 	movx	@dptr,a
                           1269 ;	genCall
   0570 75 82 08           1270 	mov	dpl,#_g_timer0
   0573 75 83 00           1271 	mov	dph,#(_g_timer0 >> 8)
   0576 75 F0 00           1272 	mov	b,#0x00
   0579 12 2D DF           1273 	lcall	_TMR_init
                    050C   1274 	C$main.c$148$1$1 ==.
                           1275 ;	../main.c:148: UART_send( &g_uart0, greeting_msg, sizeof(greeting_msg) );
                           1276 ;	genCast
   057C 90 02 BC           1277 	mov	dptr,#_UART_send_PARM_2
   057F 74 43              1278 	mov	a,#_main_greeting_msg_1_1
   0581 F0                 1279 	movx	@dptr,a
   0582 A3                 1280 	inc	dptr
   0583 74 00              1281 	mov	a,#(_main_greeting_msg_1_1 >> 8)
   0585 F0                 1282 	movx	@dptr,a
   0586 A3                 1283 	inc	dptr
   0587 74 00              1284 	mov	a,#0x0
   0589 F0                 1285 	movx	@dptr,a
                           1286 ;	genAssign
   058A 90 02 BF           1287 	mov	dptr,#_UART_send_PARM_3
   058D 74 28              1288 	mov	a,#0x28
   058F F0                 1289 	movx	@dptr,a
   0590 E4                 1290 	clr	a
   0591 A3                 1291 	inc	dptr
   0592 F0                 1292 	movx	@dptr,a
                           1293 ;	genCall
   0593 75 82 03           1294 	mov	dpl,#_g_uart0
   0596 75 83 00           1295 	mov	dph,#(_g_uart0 >> 8)
   0599 75 F0 00           1296 	mov	b,#0x00
   059C 12 1A 90           1297 	lcall	_UART_send
                    052F   1298 	C$main.c$149$1$1 ==.
                           1299 ;	../main.c:149: UART_send( &g_uart0, linefeed, sizeof(linefeed) );
                           1300 ;	genCast
   059F 90 02 BC           1301 	mov	dptr,#_UART_send_PARM_2
   05A2 74 6B              1302 	mov	a,#_main_linefeed_1_1
   05A4 F0                 1303 	movx	@dptr,a
   05A5 A3                 1304 	inc	dptr
   05A6 74 00              1305 	mov	a,#(_main_linefeed_1_1 >> 8)
   05A8 F0                 1306 	movx	@dptr,a
   05A9 A3                 1307 	inc	dptr
   05AA 74 00              1308 	mov	a,#0x0
   05AC F0                 1309 	movx	@dptr,a
                           1310 ;	genAssign
   05AD 90 02 BF           1311 	mov	dptr,#_UART_send_PARM_3
   05B0 74 03              1312 	mov	a,#0x03
   05B2 F0                 1313 	movx	@dptr,a
   05B3 E4                 1314 	clr	a
   05B4 A3                 1315 	inc	dptr
   05B5 F0                 1316 	movx	@dptr,a
                           1317 ;	genCall
   05B6 75 82 03           1318 	mov	dpl,#_g_uart0
   05B9 75 83 00           1319 	mov	dph,#(_g_uart0 >> 8)
   05BC 75 F0 00           1320 	mov	b,#0x00
   05BF 12 1A 90           1321 	lcall	_UART_send
                    0552   1322 	C$main.c$152$1$1 ==.
                           1323 ;	../main.c:152: TMR_enable_int( &g_timer0 );
                           1324 ;	genCall
   05C2 75 82 08           1325 	mov	dpl,#_g_timer0
   05C5 75 83 00           1326 	mov	dph,#(_g_timer0 >> 8)
   05C8 75 F0 00           1327 	mov	b,#0x00
   05CB 12 35 73           1328 	lcall	_TMR_enable_int
                    055E   1329 	C$main.c$154$1$1 ==.
                           1330 ;	../main.c:154: TMR_start( &g_timer0 );
                           1331 ;	genCall
   05CE 75 82 08           1332 	mov	dpl,#_g_timer0
   05D1 75 83 00           1333 	mov	dph,#(_g_timer0 >> 8)
   05D4 75 F0 00           1334 	mov	b,#0x00
   05D7 12 32 A5           1335 	lcall	_TMR_start
                    056A   1336 	C$main.c$157$1$1 ==.
                           1337 ;	../main.c:157: GPIO_set_output( &g_gpio, LED_D0, 0);
                           1338 ;	genAssign
   05DA 90 08 2B           1339 	mov	dptr,#_GPIO_set_output_PARM_2
   05DD 74 00              1340 	mov	a,#0x00
   05DF F0                 1341 	movx	@dptr,a
                           1342 ;	genAssign
   05E0 90 08 2C           1343 	mov	dptr,#_GPIO_set_output_PARM_3
   05E3 74 00              1344 	mov	a,#0x00
   05E5 F0                 1345 	movx	@dptr,a
                           1346 ;	genCall
   05E6 75 82 00           1347 	mov	dpl,#_g_gpio
   05E9 75 83 00           1348 	mov	dph,#(_g_gpio >> 8)
   05EC 75 F0 00           1349 	mov	b,#0x00
   05EF 12 50 94           1350 	lcall	_GPIO_set_output
                    0582   1351 	C$main.c$161$1$1 ==.
                           1352 ;	../main.c:161: while( 1 )
   05F2                    1353 00102$:
   05F2 02 05 F2           1354 	ljmp	00102$
   05F5                    1355 00104$:
                    0585   1356 	C$main.c$166$1$1 ==.
                    0585   1357 	XG$main$0$0 ==.
   05F5 22                 1358 	ret
                           1359 	.area CSEG    (CODE)
                           1360 	.area CONST   (CODE)
                           1361 	.area XINIT   (CODE)
                           1362 	.area CABS    (ABS,CODE)
