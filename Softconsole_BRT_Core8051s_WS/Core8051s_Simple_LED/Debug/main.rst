                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:51:53 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _g_wd
                             14 	.globl _g_uart0
                             15 	.globl _g_gpio
                             16 	.globl _wait
                             17 ;--------------------------------------------------------
                             18 ; special function registers
                             19 ;--------------------------------------------------------
                             20 	.area RSEG    (DATA)
                             21 ;--------------------------------------------------------
                             22 ; special function bits
                             23 ;--------------------------------------------------------
                             24 	.area RSEG    (DATA)
                             25 ;--------------------------------------------------------
                             26 ; overlayable register banks
                             27 ;--------------------------------------------------------
                             28 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      29 	.ds 8
                             30 ;--------------------------------------------------------
                             31 ; internal ram data
                             32 ;--------------------------------------------------------
                             33 	.area DSEG    (DATA)
                             34 ;--------------------------------------------------------
                             35 ; overlayable items in internal ram 
                             36 ;--------------------------------------------------------
                             37 	.area OSEG    (OVR,DATA)
                             38 ;--------------------------------------------------------
                             39 ; Stack segment in internal ram 
                             40 ;--------------------------------------------------------
                             41 	.area	SSEG	(DATA)
   005D                      42 __start__stack:
   005D                      43 	.ds	1
                             44 
                             45 ;--------------------------------------------------------
                             46 ; indirectly addressable internal ram data
                             47 ;--------------------------------------------------------
                             48 	.area ISEG    (DATA)
                             49 ;--------------------------------------------------------
                             50 ; absolute internal ram data
                             51 ;--------------------------------------------------------
                             52 	.area IABS    (ABS,DATA)
                             53 	.area IABS    (ABS,DATA)
                             54 ;--------------------------------------------------------
                             55 ; bit data
                             56 ;--------------------------------------------------------
                             57 	.area BSEG    (BIT)
                             58 ;--------------------------------------------------------
                             59 ; paged external ram data
                             60 ;--------------------------------------------------------
                             61 	.area PSEG    (PAG,XDATA)
                             62 ;--------------------------------------------------------
                             63 ; external ram data
                             64 ;--------------------------------------------------------
                             65 	.area XSEG    (XDATA)
                    0000     66 G$g_gpio$0$0==.
   0000                      67 _g_gpio::
   0000                      68 	.ds 3
                    0003     69 G$g_uart0$0$0==.
   0003                      70 _g_uart0::
   0003                      71 	.ds 3
                    0006     72 G$g_wd$0$0==.
   0006                      73 _g_wd::
   0006                      74 	.ds 2
                    0008     75 Lmain$uart_msg$1$1==.
   0008                      76 _main_uart_msg_1_1:
   0008                      77 	.ds 31
                    0027     78 Lmain$linefeed$1$1==.
   0027                      79 _main_linefeed_1_1:
   0027                      80 	.ds 3
                    002A     81 Lwait$time_in_ms$1$1==.
   002A                      82 _wait_time_in_ms_1_1:
   002A                      83 	.ds 2
                    002C     84 Lwait$i$1$1==.
   002C                      85 _wait_i_1_1:
   002C                      86 	.ds 2
                             87 ;--------------------------------------------------------
                             88 ; external initialized ram data
                             89 ;--------------------------------------------------------
                             90 	.area XISEG   (XDATA)
                             91 	.area HOME    (CODE)
                             92 	.area GSINIT0 (CODE)
                             93 	.area GSINIT1 (CODE)
                             94 	.area GSINIT2 (CODE)
                             95 	.area GSINIT3 (CODE)
                             96 	.area GSINIT4 (CODE)
                             97 	.area GSINIT5 (CODE)
                             98 	.area GSINIT  (CODE)
                             99 	.area GSFINAL (CODE)
                            100 	.area CSEG    (CODE)
                            101 ;--------------------------------------------------------
                            102 ; interrupt vector 
                            103 ;--------------------------------------------------------
                            104 	.area HOME    (CODE)
   0000                     105 __interrupt_vect:
   0000 02 00 08            106 	ljmp	__sdcc_gsinit_startup
                            107 ;--------------------------------------------------------
                            108 ; global & static initialisations
                            109 ;--------------------------------------------------------
                            110 	.area HOME    (CODE)
                            111 	.area GSINIT  (CODE)
                            112 	.area GSFINAL (CODE)
                            113 	.area GSINIT  (CODE)
                            114 	.globl __sdcc_gsinit_startup
                            115 	.globl __sdcc_program_startup
                            116 	.globl __start__stack
                            117 	.globl __mcs51_genXINIT
                            118 	.globl __mcs51_genXRAMCLEAR
                            119 	.globl __mcs51_genRAMCLEAR
                            120 	.area GSFINAL (CODE)
   005F 02 00 03            121 	ljmp	__sdcc_program_startup
                            122 ;--------------------------------------------------------
                            123 ; Home
                            124 ;--------------------------------------------------------
                            125 	.area HOME    (CODE)
                            126 	.area HOME    (CODE)
   0003                     127 __sdcc_program_startup:
   0003 12 00 62            128 	lcall	_main
                            129 ;	return from main will lock up
   0006 80 FE               130 	sjmp .
                            131 ;--------------------------------------------------------
                            132 ; code
                            133 ;--------------------------------------------------------
                            134 	.area CSEG    (CODE)
                            135 ;------------------------------------------------------------
                            136 ;Allocation info for local variables in function 'main'
                            137 ;------------------------------------------------------------
                            138 ;uart_msg                  Allocated with name '_main_uart_msg_1_1'
                            139 ;linefeed                  Allocated with name '_main_linefeed_1_1'
                            140 ;------------------------------------------------------------
                    0000    141 	G$main$0$0 ==.
                    0000    142 	C$main.c$54$0$0 ==.
                            143 ;	../main.c:54: int main( void )
                            144 ;	-----------------------------------------
                            145 ;	 function main
                            146 ;	-----------------------------------------
   0062                     147 _main:
                    0002    148 	ar2 = 0x02
                    0003    149 	ar3 = 0x03
                    0004    150 	ar4 = 0x04
                    0005    151 	ar5 = 0x05
                    0006    152 	ar6 = 0x06
                    0007    153 	ar7 = 0x07
                    0000    154 	ar0 = 0x00
                    0001    155 	ar1 = 0x01
                    0000    156 	C$main.c$56$1$0 ==.
                            157 ;	../main.c:56: const uint8_t uart_msg[] = "\n\r** Simple LED Sequence  **\n\r";
                            158 ;	genPointerSet
                            159 ;     genFarPointerSet
   0062 90 00 08            160 	mov	dptr,#_main_uart_msg_1_1
   0065 74 0A               161 	mov	a,#0x0A
   0067 F0                  162 	movx	@dptr,a
                            163 ;	genPointerSet
                            164 ;     genFarPointerSet
   0068 90 00 09            165 	mov	dptr,#(_main_uart_msg_1_1 + 0x0001)
   006B 74 0D               166 	mov	a,#0x0D
   006D F0                  167 	movx	@dptr,a
                            168 ;	genPointerSet
                            169 ;     genFarPointerSet
   006E 90 00 0A            170 	mov	dptr,#(_main_uart_msg_1_1 + 0x0002)
   0071 74 2A               171 	mov	a,#0x2A
   0073 F0                  172 	movx	@dptr,a
                            173 ;	genPointerSet
                            174 ;     genFarPointerSet
   0074 90 00 0B            175 	mov	dptr,#(_main_uart_msg_1_1 + 0x0003)
   0077 74 2A               176 	mov	a,#0x2A
   0079 F0                  177 	movx	@dptr,a
                            178 ;	genPointerSet
                            179 ;     genFarPointerSet
   007A 90 00 0C            180 	mov	dptr,#(_main_uart_msg_1_1 + 0x0004)
   007D 74 20               181 	mov	a,#0x20
   007F F0                  182 	movx	@dptr,a
                            183 ;	genPointerSet
                            184 ;     genFarPointerSet
   0080 90 00 0D            185 	mov	dptr,#(_main_uart_msg_1_1 + 0x0005)
   0083 74 53               186 	mov	a,#0x53
   0085 F0                  187 	movx	@dptr,a
                            188 ;	genPointerSet
                            189 ;     genFarPointerSet
   0086 90 00 0E            190 	mov	dptr,#(_main_uart_msg_1_1 + 0x0006)
   0089 74 69               191 	mov	a,#0x69
   008B F0                  192 	movx	@dptr,a
                            193 ;	genPointerSet
                            194 ;     genFarPointerSet
   008C 90 00 0F            195 	mov	dptr,#(_main_uart_msg_1_1 + 0x0007)
   008F 74 6D               196 	mov	a,#0x6D
   0091 F0                  197 	movx	@dptr,a
                            198 ;	genPointerSet
                            199 ;     genFarPointerSet
   0092 90 00 10            200 	mov	dptr,#(_main_uart_msg_1_1 + 0x0008)
   0095 74 70               201 	mov	a,#0x70
   0097 F0                  202 	movx	@dptr,a
                            203 ;	genPointerSet
                            204 ;     genFarPointerSet
   0098 90 00 11            205 	mov	dptr,#(_main_uart_msg_1_1 + 0x0009)
   009B 74 6C               206 	mov	a,#0x6C
   009D F0                  207 	movx	@dptr,a
                            208 ;	genPointerSet
                            209 ;     genFarPointerSet
   009E 90 00 12            210 	mov	dptr,#(_main_uart_msg_1_1 + 0x000a)
   00A1 74 65               211 	mov	a,#0x65
   00A3 F0                  212 	movx	@dptr,a
                            213 ;	genPointerSet
                            214 ;     genFarPointerSet
   00A4 90 00 13            215 	mov	dptr,#(_main_uart_msg_1_1 + 0x000b)
   00A7 74 20               216 	mov	a,#0x20
   00A9 F0                  217 	movx	@dptr,a
                            218 ;	genPointerSet
                            219 ;     genFarPointerSet
   00AA 90 00 14            220 	mov	dptr,#(_main_uart_msg_1_1 + 0x000c)
   00AD 74 4C               221 	mov	a,#0x4C
   00AF F0                  222 	movx	@dptr,a
                            223 ;	genPointerSet
                            224 ;     genFarPointerSet
   00B0 90 00 15            225 	mov	dptr,#(_main_uart_msg_1_1 + 0x000d)
   00B3 74 45               226 	mov	a,#0x45
   00B5 F0                  227 	movx	@dptr,a
                            228 ;	genPointerSet
                            229 ;     genFarPointerSet
   00B6 90 00 16            230 	mov	dptr,#(_main_uart_msg_1_1 + 0x000e)
   00B9 74 44               231 	mov	a,#0x44
   00BB F0                  232 	movx	@dptr,a
                            233 ;	genPointerSet
                            234 ;     genFarPointerSet
   00BC 90 00 17            235 	mov	dptr,#(_main_uart_msg_1_1 + 0x000f)
   00BF 74 20               236 	mov	a,#0x20
   00C1 F0                  237 	movx	@dptr,a
                            238 ;	genPointerSet
                            239 ;     genFarPointerSet
   00C2 90 00 18            240 	mov	dptr,#(_main_uart_msg_1_1 + 0x0010)
   00C5 74 53               241 	mov	a,#0x53
   00C7 F0                  242 	movx	@dptr,a
                            243 ;	genPointerSet
                            244 ;     genFarPointerSet
   00C8 90 00 19            245 	mov	dptr,#(_main_uart_msg_1_1 + 0x0011)
   00CB 74 65               246 	mov	a,#0x65
   00CD F0                  247 	movx	@dptr,a
                            248 ;	genPointerSet
                            249 ;     genFarPointerSet
   00CE 90 00 1A            250 	mov	dptr,#(_main_uart_msg_1_1 + 0x0012)
   00D1 74 71               251 	mov	a,#0x71
   00D3 F0                  252 	movx	@dptr,a
                            253 ;	genPointerSet
                            254 ;     genFarPointerSet
   00D4 90 00 1B            255 	mov	dptr,#(_main_uart_msg_1_1 + 0x0013)
   00D7 74 75               256 	mov	a,#0x75
   00D9 F0                  257 	movx	@dptr,a
                            258 ;	genPointerSet
                            259 ;     genFarPointerSet
   00DA 90 00 1C            260 	mov	dptr,#(_main_uart_msg_1_1 + 0x0014)
   00DD 74 65               261 	mov	a,#0x65
   00DF F0                  262 	movx	@dptr,a
                            263 ;	genPointerSet
                            264 ;     genFarPointerSet
   00E0 90 00 1D            265 	mov	dptr,#(_main_uart_msg_1_1 + 0x0015)
   00E3 74 6E               266 	mov	a,#0x6E
   00E5 F0                  267 	movx	@dptr,a
                            268 ;	genPointerSet
                            269 ;     genFarPointerSet
   00E6 90 00 1E            270 	mov	dptr,#(_main_uart_msg_1_1 + 0x0016)
   00E9 74 63               271 	mov	a,#0x63
   00EB F0                  272 	movx	@dptr,a
                            273 ;	genPointerSet
                            274 ;     genFarPointerSet
   00EC 90 00 1F            275 	mov	dptr,#(_main_uart_msg_1_1 + 0x0017)
   00EF 74 65               276 	mov	a,#0x65
   00F1 F0                  277 	movx	@dptr,a
                            278 ;	genPointerSet
                            279 ;     genFarPointerSet
   00F2 90 00 20            280 	mov	dptr,#(_main_uart_msg_1_1 + 0x0018)
   00F5 74 20               281 	mov	a,#0x20
   00F7 F0                  282 	movx	@dptr,a
                            283 ;	genPointerSet
                            284 ;     genFarPointerSet
   00F8 90 00 21            285 	mov	dptr,#(_main_uart_msg_1_1 + 0x0019)
   00FB 74 20               286 	mov	a,#0x20
   00FD F0                  287 	movx	@dptr,a
                            288 ;	genPointerSet
                            289 ;     genFarPointerSet
   00FE 90 00 22            290 	mov	dptr,#(_main_uart_msg_1_1 + 0x001a)
   0101 74 2A               291 	mov	a,#0x2A
   0103 F0                  292 	movx	@dptr,a
                            293 ;	genPointerSet
                            294 ;     genFarPointerSet
   0104 90 00 23            295 	mov	dptr,#(_main_uart_msg_1_1 + 0x001b)
   0107 74 2A               296 	mov	a,#0x2A
   0109 F0                  297 	movx	@dptr,a
                            298 ;	genPointerSet
                            299 ;     genFarPointerSet
   010A 90 00 24            300 	mov	dptr,#(_main_uart_msg_1_1 + 0x001c)
   010D 74 0A               301 	mov	a,#0x0A
   010F F0                  302 	movx	@dptr,a
                            303 ;	genPointerSet
                            304 ;     genFarPointerSet
   0110 90 00 25            305 	mov	dptr,#(_main_uart_msg_1_1 + 0x001d)
   0113 74 0D               306 	mov	a,#0x0D
   0115 F0                  307 	movx	@dptr,a
                            308 ;	genPointerSet
                            309 ;     genFarPointerSet
   0116 90 00 26            310 	mov	dptr,#(_main_uart_msg_1_1 + 0x001e)
   0119 74 00               311 	mov	a,#0x00
   011B F0                  312 	movx	@dptr,a
                    00BA    313 	C$main.c$57$1$0 ==.
                            314 ;	../main.c:57: const uint8_t linefeed[] = "\n\r";
                            315 ;	genPointerSet
                            316 ;     genFarPointerSet
   011C 90 00 27            317 	mov	dptr,#_main_linefeed_1_1
   011F 74 0A               318 	mov	a,#0x0A
   0121 F0                  319 	movx	@dptr,a
                            320 ;	genPointerSet
                            321 ;     genFarPointerSet
   0122 90 00 28            322 	mov	dptr,#(_main_linefeed_1_1 + 0x0001)
   0125 74 0D               323 	mov	a,#0x0D
   0127 F0                  324 	movx	@dptr,a
                            325 ;	genPointerSet
                            326 ;     genFarPointerSet
   0128 90 00 29            327 	mov	dptr,#(_main_linefeed_1_1 + 0x0002)
   012B 74 00               328 	mov	a,#0x00
   012D F0                  329 	movx	@dptr,a
                    00CC    330 	C$main.c$62$1$1 ==.
                            331 ;	../main.c:62: UART_init( &g_uart0, APB3_BASE_ADDRESS + COREUARTAPB_0, UART_9600_BAUD, DATA_8_BITS | NO_PARITY );
                            332 ;	genAssign
   012E 90 01 91            333 	mov	dptr,#_UART_init_PARM_2
   0131 74 00               334 	mov	a,#0x00
   0133 F0                  335 	movx	@dptr,a
   0134 A3                  336 	inc	dptr
   0135 74 F0               337 	mov	a,#0xF0
   0137 F0                  338 	movx	@dptr,a
                            339 ;	genAssign
   0138 90 01 93            340 	mov	dptr,#_UART_init_PARM_3
   013B 74 26               341 	mov	a,#0x26
   013D F0                  342 	movx	@dptr,a
   013E E4                  343 	clr	a
   013F A3                  344 	inc	dptr
   0140 F0                  345 	movx	@dptr,a
                            346 ;	genAssign
   0141 90 01 95            347 	mov	dptr,#_UART_init_PARM_4
   0144 74 01               348 	mov	a,#0x01
   0146 F0                  349 	movx	@dptr,a
                            350 ;	genCall
   0147 75 82 03            351 	mov	dpl,#_g_uart0
   014A 75 83 00            352 	mov	dph,#(_g_uart0 >> 8)
   014D 75 F0 00            353 	mov	b,#0x00
   0150 12 15 1C            354 	lcall	_UART_init
                    00F1    355 	C$main.c$64$1$1 ==.
                            356 ;	../main.c:64: WD_init( &g_wd, APB3_BASE_ADDRESS + COREWATCHDOG_0, WatchDog_COUNT, WD_PRESCALER_DIV_16 );
                            357 ;	genAssign
   0153 90 00 88            358 	mov	dptr,#_WD_init_PARM_2
   0156 74 00               359 	mov	a,#0x00
   0158 F0                  360 	movx	@dptr,a
   0159 A3                  361 	inc	dptr
   015A 74 F3               362 	mov	a,#0xF3
   015C F0                  363 	movx	@dptr,a
                            364 ;	genAssign
   015D 90 00 8A            365 	mov	dptr,#_WD_init_PARM_3
   0160 74 E8               366 	mov	a,#0xE8
   0162 F0                  367 	movx	@dptr,a
   0163 A3                  368 	inc	dptr
   0164 74 03               369 	mov	a,#0x03
   0166 F0                  370 	movx	@dptr,a
   0167 A3                  371 	inc	dptr
   0168 74 00               372 	mov	a,#0x00
   016A F0                  373 	movx	@dptr,a
   016B A3                  374 	inc	dptr
   016C 74 00               375 	mov	a,#0x00
   016E F0                  376 	movx	@dptr,a
                            377 ;	genAssign
   016F 90 00 8E            378 	mov	dptr,#_WD_init_PARM_4
   0172 74 03               379 	mov	a,#0x03
   0174 F0                  380 	movx	@dptr,a
   0175 E4                  381 	clr	a
   0176 A3                  382 	inc	dptr
   0177 F0                  383 	movx	@dptr,a
   0178 A3                  384 	inc	dptr
   0179 F0                  385 	movx	@dptr,a
   017A A3                  386 	inc	dptr
   017B F0                  387 	movx	@dptr,a
                            388 ;	genCall
   017C 75 82 06            389 	mov	dpl,#_g_wd
   017F 75 83 00            390 	mov	dph,#(_g_wd >> 8)
   0182 75 F0 00            391 	mov	b,#0x00
   0185 12 0B C1            392 	lcall	_WD_init
                    0126    393 	C$main.c$65$1$1 ==.
                            394 ;	../main.c:65: WD_disable( &g_wd );
                            395 ;	genCall
   0188 75 82 06            396 	mov	dpl,#_g_wd
   018B 75 83 00            397 	mov	dph,#(_g_wd >> 8)
   018E 75 F0 00            398 	mov	b,#0x00
   0191 12 10 9F            399 	lcall	_WD_disable
                    0132    400 	C$main.c$67$1$1 ==.
                            401 ;	../main.c:67: GPIO_init( &g_gpio,	APB3_BASE_ADDRESS + COREGPIO_0, GPIO_APB_32_BITS_BUS );
                            402 ;	genAssign
   0194 90 05 DA            403 	mov	dptr,#_GPIO_init_PARM_2
   0197 74 00               404 	mov	a,#0x00
   0199 F0                  405 	movx	@dptr,a
   019A A3                  406 	inc	dptr
   019B 74 F1               407 	mov	a,#0xF1
   019D F0                  408 	movx	@dptr,a
                            409 ;	genAssign
   019E 90 05 DC            410 	mov	dptr,#_GPIO_init_PARM_3
   01A1 74 02               411 	mov	a,#0x02
   01A3 F0                  412 	movx	@dptr,a
                            413 ;	genCall
   01A4 75 82 00            414 	mov	dpl,#_g_gpio
   01A7 75 83 00            415 	mov	dph,#(_g_gpio >> 8)
   01AA 75 F0 00            416 	mov	b,#0x00
   01AD 12 3E 06            417 	lcall	_GPIO_init
                    014E    418 	C$main.c$71$1$1 ==.
                            419 ;	../main.c:71: GPIO_config( &g_gpio, LED_D0, GPIO_OUTPUT_MODE );
                            420 ;	genAssign
   01B0 90 06 03            421 	mov	dptr,#_GPIO_config_PARM_2
   01B3 74 00               422 	mov	a,#0x00
   01B5 F0                  423 	movx	@dptr,a
                            424 ;	genAssign
   01B6 90 06 04            425 	mov	dptr,#_GPIO_config_PARM_3
   01B9 74 05               426 	mov	a,#0x05
   01BB F0                  427 	movx	@dptr,a
   01BC E4                  428 	clr	a
   01BD A3                  429 	inc	dptr
   01BE F0                  430 	movx	@dptr,a
   01BF A3                  431 	inc	dptr
   01C0 F0                  432 	movx	@dptr,a
   01C1 A3                  433 	inc	dptr
   01C2 F0                  434 	movx	@dptr,a
                            435 ;	genCall
   01C3 75 82 00            436 	mov	dpl,#_g_gpio
   01C6 75 83 00            437 	mov	dph,#(_g_gpio >> 8)
   01C9 75 F0 00            438 	mov	b,#0x00
   01CC 12 41 0A            439 	lcall	_GPIO_config
                    016D    440 	C$main.c$73$1$1 ==.
                            441 ;	../main.c:73: GPIO_config( &g_gpio, LED_D1, GPIO_OUTPUT_MODE );
                            442 ;	genAssign
   01CF 90 06 03            443 	mov	dptr,#_GPIO_config_PARM_2
   01D2 74 01               444 	mov	a,#0x01
   01D4 F0                  445 	movx	@dptr,a
                            446 ;	genAssign
   01D5 90 06 04            447 	mov	dptr,#_GPIO_config_PARM_3
   01D8 74 05               448 	mov	a,#0x05
   01DA F0                  449 	movx	@dptr,a
   01DB E4                  450 	clr	a
   01DC A3                  451 	inc	dptr
   01DD F0                  452 	movx	@dptr,a
   01DE A3                  453 	inc	dptr
   01DF F0                  454 	movx	@dptr,a
   01E0 A3                  455 	inc	dptr
   01E1 F0                  456 	movx	@dptr,a
                            457 ;	genCall
   01E2 75 82 00            458 	mov	dpl,#_g_gpio
   01E5 75 83 00            459 	mov	dph,#(_g_gpio >> 8)
   01E8 75 F0 00            460 	mov	b,#0x00
   01EB 12 41 0A            461 	lcall	_GPIO_config
                    018C    462 	C$main.c$75$1$1 ==.
                            463 ;	../main.c:75: GPIO_config( &g_gpio, LED_D2, GPIO_OUTPUT_MODE );
                            464 ;	genAssign
   01EE 90 06 03            465 	mov	dptr,#_GPIO_config_PARM_2
   01F1 74 02               466 	mov	a,#0x02
   01F3 F0                  467 	movx	@dptr,a
                            468 ;	genAssign
   01F4 90 06 04            469 	mov	dptr,#_GPIO_config_PARM_3
   01F7 74 05               470 	mov	a,#0x05
   01F9 F0                  471 	movx	@dptr,a
   01FA E4                  472 	clr	a
   01FB A3                  473 	inc	dptr
   01FC F0                  474 	movx	@dptr,a
   01FD A3                  475 	inc	dptr
   01FE F0                  476 	movx	@dptr,a
   01FF A3                  477 	inc	dptr
   0200 F0                  478 	movx	@dptr,a
                            479 ;	genCall
   0201 75 82 00            480 	mov	dpl,#_g_gpio
   0204 75 83 00            481 	mov	dph,#(_g_gpio >> 8)
   0207 75 F0 00            482 	mov	b,#0x00
   020A 12 41 0A            483 	lcall	_GPIO_config
                    01AB    484 	C$main.c$77$1$1 ==.
                            485 ;	../main.c:77: GPIO_config( &g_gpio, LED_D3, GPIO_OUTPUT_MODE );
                            486 ;	genAssign
   020D 90 06 03            487 	mov	dptr,#_GPIO_config_PARM_2
   0210 74 03               488 	mov	a,#0x03
   0212 F0                  489 	movx	@dptr,a
                            490 ;	genAssign
   0213 90 06 04            491 	mov	dptr,#_GPIO_config_PARM_3
   0216 74 05               492 	mov	a,#0x05
   0218 F0                  493 	movx	@dptr,a
   0219 E4                  494 	clr	a
   021A A3                  495 	inc	dptr
   021B F0                  496 	movx	@dptr,a
   021C A3                  497 	inc	dptr
   021D F0                  498 	movx	@dptr,a
   021E A3                  499 	inc	dptr
   021F F0                  500 	movx	@dptr,a
                            501 ;	genCall
   0220 75 82 00            502 	mov	dpl,#_g_gpio
   0223 75 83 00            503 	mov	dph,#(_g_gpio >> 8)
   0226 75 F0 00            504 	mov	b,#0x00
   0229 12 41 0A            505 	lcall	_GPIO_config
                    01CA    506 	C$main.c$79$1$1 ==.
                            507 ;	../main.c:79: GPIO_config( &g_gpio, LED_D4, GPIO_OUTPUT_MODE );
                            508 ;	genAssign
   022C 90 06 03            509 	mov	dptr,#_GPIO_config_PARM_2
   022F 74 04               510 	mov	a,#0x04
   0231 F0                  511 	movx	@dptr,a
                            512 ;	genAssign
   0232 90 06 04            513 	mov	dptr,#_GPIO_config_PARM_3
   0235 74 05               514 	mov	a,#0x05
   0237 F0                  515 	movx	@dptr,a
   0238 E4                  516 	clr	a
   0239 A3                  517 	inc	dptr
   023A F0                  518 	movx	@dptr,a
   023B A3                  519 	inc	dptr
   023C F0                  520 	movx	@dptr,a
   023D A3                  521 	inc	dptr
   023E F0                  522 	movx	@dptr,a
                            523 ;	genCall
   023F 75 82 00            524 	mov	dpl,#_g_gpio
   0242 75 83 00            525 	mov	dph,#(_g_gpio >> 8)
   0245 75 F0 00            526 	mov	b,#0x00
   0248 12 41 0A            527 	lcall	_GPIO_config
                    01E9    528 	C$main.c$81$1$1 ==.
                            529 ;	../main.c:81: GPIO_config( &g_gpio, LED_D5, GPIO_OUTPUT_MODE );
                            530 ;	genAssign
   024B 90 06 03            531 	mov	dptr,#_GPIO_config_PARM_2
   024E 74 05               532 	mov	a,#0x05
   0250 F0                  533 	movx	@dptr,a
                            534 ;	genAssign
   0251 90 06 04            535 	mov	dptr,#_GPIO_config_PARM_3
   0254 74 05               536 	mov	a,#0x05
   0256 F0                  537 	movx	@dptr,a
   0257 E4                  538 	clr	a
   0258 A3                  539 	inc	dptr
   0259 F0                  540 	movx	@dptr,a
   025A A3                  541 	inc	dptr
   025B F0                  542 	movx	@dptr,a
   025C A3                  543 	inc	dptr
   025D F0                  544 	movx	@dptr,a
                            545 ;	genCall
   025E 75 82 00            546 	mov	dpl,#_g_gpio
   0261 75 83 00            547 	mov	dph,#(_g_gpio >> 8)
   0264 75 F0 00            548 	mov	b,#0x00
   0267 12 41 0A            549 	lcall	_GPIO_config
                    0208    550 	C$main.c$83$1$1 ==.
                            551 ;	../main.c:83: GPIO_config( &g_gpio, LED_D6, GPIO_OUTPUT_MODE );
                            552 ;	genAssign
   026A 90 06 03            553 	mov	dptr,#_GPIO_config_PARM_2
   026D 74 06               554 	mov	a,#0x06
   026F F0                  555 	movx	@dptr,a
                            556 ;	genAssign
   0270 90 06 04            557 	mov	dptr,#_GPIO_config_PARM_3
   0273 74 05               558 	mov	a,#0x05
   0275 F0                  559 	movx	@dptr,a
   0276 E4                  560 	clr	a
   0277 A3                  561 	inc	dptr
   0278 F0                  562 	movx	@dptr,a
   0279 A3                  563 	inc	dptr
   027A F0                  564 	movx	@dptr,a
   027B A3                  565 	inc	dptr
   027C F0                  566 	movx	@dptr,a
                            567 ;	genCall
   027D 75 82 00            568 	mov	dpl,#_g_gpio
   0280 75 83 00            569 	mov	dph,#(_g_gpio >> 8)
   0283 75 F0 00            570 	mov	b,#0x00
   0286 12 41 0A            571 	lcall	_GPIO_config
                    0227    572 	C$main.c$85$1$1 ==.
                            573 ;	../main.c:85: GPIO_config( &g_gpio, LED_D7, GPIO_OUTPUT_MODE );
                            574 ;	genAssign
   0289 90 06 03            575 	mov	dptr,#_GPIO_config_PARM_2
   028C 74 07               576 	mov	a,#0x07
   028E F0                  577 	movx	@dptr,a
                            578 ;	genAssign
   028F 90 06 04            579 	mov	dptr,#_GPIO_config_PARM_3
   0292 74 05               580 	mov	a,#0x05
   0294 F0                  581 	movx	@dptr,a
   0295 E4                  582 	clr	a
   0296 A3                  583 	inc	dptr
   0297 F0                  584 	movx	@dptr,a
   0298 A3                  585 	inc	dptr
   0299 F0                  586 	movx	@dptr,a
   029A A3                  587 	inc	dptr
   029B F0                  588 	movx	@dptr,a
                            589 ;	genCall
   029C 75 82 00            590 	mov	dpl,#_g_gpio
   029F 75 83 00            591 	mov	dph,#(_g_gpio >> 8)
   02A2 75 F0 00            592 	mov	b,#0x00
   02A5 12 41 0A            593 	lcall	_GPIO_config
                    0246    594 	C$main.c$87$1$1 ==.
                            595 ;	../main.c:87: GPIO_config( &g_gpio, LED_D8, GPIO_OUTPUT_MODE );
                            596 ;	genAssign
   02A8 90 06 03            597 	mov	dptr,#_GPIO_config_PARM_2
   02AB 74 08               598 	mov	a,#0x08
   02AD F0                  599 	movx	@dptr,a
                            600 ;	genAssign
   02AE 90 06 04            601 	mov	dptr,#_GPIO_config_PARM_3
   02B1 74 05               602 	mov	a,#0x05
   02B3 F0                  603 	movx	@dptr,a
   02B4 E4                  604 	clr	a
   02B5 A3                  605 	inc	dptr
   02B6 F0                  606 	movx	@dptr,a
   02B7 A3                  607 	inc	dptr
   02B8 F0                  608 	movx	@dptr,a
   02B9 A3                  609 	inc	dptr
   02BA F0                  610 	movx	@dptr,a
                            611 ;	genCall
   02BB 75 82 00            612 	mov	dpl,#_g_gpio
   02BE 75 83 00            613 	mov	dph,#(_g_gpio >> 8)
   02C1 75 F0 00            614 	mov	b,#0x00
   02C4 12 41 0A            615 	lcall	_GPIO_config
                    0265    616 	C$main.c$90$1$1 ==.
                            617 ;	../main.c:90: GPIO_set_output( &g_gpio, LED_D0, 0);
                            618 ;	genAssign
   02C7 90 06 E0            619 	mov	dptr,#_GPIO_set_output_PARM_2
   02CA 74 00               620 	mov	a,#0x00
   02CC F0                  621 	movx	@dptr,a
                            622 ;	genAssign
   02CD 90 06 E1            623 	mov	dptr,#_GPIO_set_output_PARM_3
   02D0 74 00               624 	mov	a,#0x00
   02D2 F0                  625 	movx	@dptr,a
                            626 ;	genCall
   02D3 75 82 00            627 	mov	dpl,#_g_gpio
   02D6 75 83 00            628 	mov	dph,#(_g_gpio >> 8)
   02D9 75 F0 00            629 	mov	b,#0x00
   02DC 12 4B B9            630 	lcall	_GPIO_set_output
                    027D    631 	C$main.c$92$1$1 ==.
                            632 ;	../main.c:92: GPIO_set_output( &g_gpio, LED_D1, 0);
                            633 ;	genAssign
   02DF 90 06 E0            634 	mov	dptr,#_GPIO_set_output_PARM_2
   02E2 74 01               635 	mov	a,#0x01
   02E4 F0                  636 	movx	@dptr,a
                            637 ;	genAssign
   02E5 90 06 E1            638 	mov	dptr,#_GPIO_set_output_PARM_3
   02E8 74 00               639 	mov	a,#0x00
   02EA F0                  640 	movx	@dptr,a
                            641 ;	genCall
   02EB 75 82 00            642 	mov	dpl,#_g_gpio
   02EE 75 83 00            643 	mov	dph,#(_g_gpio >> 8)
   02F1 75 F0 00            644 	mov	b,#0x00
   02F4 12 4B B9            645 	lcall	_GPIO_set_output
                    0295    646 	C$main.c$94$1$1 ==.
                            647 ;	../main.c:94: GPIO_set_output( &g_gpio, LED_D2, 0);
                            648 ;	genAssign
   02F7 90 06 E0            649 	mov	dptr,#_GPIO_set_output_PARM_2
   02FA 74 02               650 	mov	a,#0x02
   02FC F0                  651 	movx	@dptr,a
                            652 ;	genAssign
   02FD 90 06 E1            653 	mov	dptr,#_GPIO_set_output_PARM_3
   0300 74 00               654 	mov	a,#0x00
   0302 F0                  655 	movx	@dptr,a
                            656 ;	genCall
   0303 75 82 00            657 	mov	dpl,#_g_gpio
   0306 75 83 00            658 	mov	dph,#(_g_gpio >> 8)
   0309 75 F0 00            659 	mov	b,#0x00
   030C 12 4B B9            660 	lcall	_GPIO_set_output
                    02AD    661 	C$main.c$96$1$1 ==.
                            662 ;	../main.c:96: GPIO_set_output( &g_gpio, LED_D3, 0);
                            663 ;	genAssign
   030F 90 06 E0            664 	mov	dptr,#_GPIO_set_output_PARM_2
   0312 74 03               665 	mov	a,#0x03
   0314 F0                  666 	movx	@dptr,a
                            667 ;	genAssign
   0315 90 06 E1            668 	mov	dptr,#_GPIO_set_output_PARM_3
   0318 74 00               669 	mov	a,#0x00
   031A F0                  670 	movx	@dptr,a
                            671 ;	genCall
   031B 75 82 00            672 	mov	dpl,#_g_gpio
   031E 75 83 00            673 	mov	dph,#(_g_gpio >> 8)
   0321 75 F0 00            674 	mov	b,#0x00
   0324 12 4B B9            675 	lcall	_GPIO_set_output
                    02C5    676 	C$main.c$98$1$1 ==.
                            677 ;	../main.c:98: GPIO_set_output( &g_gpio, LED_D4, 0);
                            678 ;	genAssign
   0327 90 06 E0            679 	mov	dptr,#_GPIO_set_output_PARM_2
   032A 74 04               680 	mov	a,#0x04
   032C F0                  681 	movx	@dptr,a
                            682 ;	genAssign
   032D 90 06 E1            683 	mov	dptr,#_GPIO_set_output_PARM_3
   0330 74 00               684 	mov	a,#0x00
   0332 F0                  685 	movx	@dptr,a
                            686 ;	genCall
   0333 75 82 00            687 	mov	dpl,#_g_gpio
   0336 75 83 00            688 	mov	dph,#(_g_gpio >> 8)
   0339 75 F0 00            689 	mov	b,#0x00
   033C 12 4B B9            690 	lcall	_GPIO_set_output
                    02DD    691 	C$main.c$100$1$1 ==.
                            692 ;	../main.c:100: GPIO_set_output( &g_gpio, LED_D5, 0);
                            693 ;	genAssign
   033F 90 06 E0            694 	mov	dptr,#_GPIO_set_output_PARM_2
   0342 74 05               695 	mov	a,#0x05
   0344 F0                  696 	movx	@dptr,a
                            697 ;	genAssign
   0345 90 06 E1            698 	mov	dptr,#_GPIO_set_output_PARM_3
   0348 74 00               699 	mov	a,#0x00
   034A F0                  700 	movx	@dptr,a
                            701 ;	genCall
   034B 75 82 00            702 	mov	dpl,#_g_gpio
   034E 75 83 00            703 	mov	dph,#(_g_gpio >> 8)
   0351 75 F0 00            704 	mov	b,#0x00
   0354 12 4B B9            705 	lcall	_GPIO_set_output
                    02F5    706 	C$main.c$102$1$1 ==.
                            707 ;	../main.c:102: GPIO_set_output( &g_gpio, LED_D6, 0);
                            708 ;	genAssign
   0357 90 06 E0            709 	mov	dptr,#_GPIO_set_output_PARM_2
   035A 74 06               710 	mov	a,#0x06
   035C F0                  711 	movx	@dptr,a
                            712 ;	genAssign
   035D 90 06 E1            713 	mov	dptr,#_GPIO_set_output_PARM_3
   0360 74 00               714 	mov	a,#0x00
   0362 F0                  715 	movx	@dptr,a
                            716 ;	genCall
   0363 75 82 00            717 	mov	dpl,#_g_gpio
   0366 75 83 00            718 	mov	dph,#(_g_gpio >> 8)
   0369 75 F0 00            719 	mov	b,#0x00
   036C 12 4B B9            720 	lcall	_GPIO_set_output
                    030D    721 	C$main.c$104$1$1 ==.
                            722 ;	../main.c:104: GPIO_set_output( &g_gpio, LED_D7, 0);
                            723 ;	genAssign
   036F 90 06 E0            724 	mov	dptr,#_GPIO_set_output_PARM_2
   0372 74 07               725 	mov	a,#0x07
   0374 F0                  726 	movx	@dptr,a
                            727 ;	genAssign
   0375 90 06 E1            728 	mov	dptr,#_GPIO_set_output_PARM_3
   0378 74 00               729 	mov	a,#0x00
   037A F0                  730 	movx	@dptr,a
                            731 ;	genCall
   037B 75 82 00            732 	mov	dpl,#_g_gpio
   037E 75 83 00            733 	mov	dph,#(_g_gpio >> 8)
   0381 75 F0 00            734 	mov	b,#0x00
   0384 12 4B B9            735 	lcall	_GPIO_set_output
                    0325    736 	C$main.c$106$1$1 ==.
                            737 ;	../main.c:106: GPIO_set_output( &g_gpio, LED_D8, 0);
                            738 ;	genAssign
   0387 90 06 E0            739 	mov	dptr,#_GPIO_set_output_PARM_2
   038A 74 08               740 	mov	a,#0x08
   038C F0                  741 	movx	@dptr,a
                            742 ;	genAssign
   038D 90 06 E1            743 	mov	dptr,#_GPIO_set_output_PARM_3
   0390 74 00               744 	mov	a,#0x00
   0392 F0                  745 	movx	@dptr,a
                            746 ;	genCall
   0393 75 82 00            747 	mov	dpl,#_g_gpio
   0396 75 83 00            748 	mov	dph,#(_g_gpio >> 8)
   0399 75 F0 00            749 	mov	b,#0x00
   039C 12 4B B9            750 	lcall	_GPIO_set_output
                    033D    751 	C$main.c$108$1$1 ==.
                            752 ;	../main.c:108: UART_send( &g_uart0, uart_msg, sizeof(uart_msg) );
                            753 ;	genCast
   039F 90 02 5E            754 	mov	dptr,#_UART_send_PARM_2
   03A2 74 08               755 	mov	a,#_main_uart_msg_1_1
   03A4 F0                  756 	movx	@dptr,a
   03A5 A3                  757 	inc	dptr
   03A6 74 00               758 	mov	a,#(_main_uart_msg_1_1 >> 8)
   03A8 F0                  759 	movx	@dptr,a
   03A9 A3                  760 	inc	dptr
   03AA 74 00               761 	mov	a,#0x0
   03AC F0                  762 	movx	@dptr,a
                            763 ;	genAssign
   03AD 90 02 61            764 	mov	dptr,#_UART_send_PARM_3
   03B0 74 1F               765 	mov	a,#0x1F
   03B2 F0                  766 	movx	@dptr,a
   03B3 E4                  767 	clr	a
   03B4 A3                  768 	inc	dptr
   03B5 F0                  769 	movx	@dptr,a
                            770 ;	genCall
   03B6 75 82 03            771 	mov	dpl,#_g_uart0
   03B9 75 83 00            772 	mov	dph,#(_g_uart0 >> 8)
   03BC 75 F0 00            773 	mov	b,#0x00
   03BF 12 1C B0            774 	lcall	_UART_send
                    0360    775 	C$main.c$109$1$1 ==.
                            776 ;	../main.c:109: UART_send( &g_uart0, linefeed, sizeof(linefeed) );
                            777 ;	genCast
   03C2 90 02 5E            778 	mov	dptr,#_UART_send_PARM_2
   03C5 74 27               779 	mov	a,#_main_linefeed_1_1
   03C7 F0                  780 	movx	@dptr,a
   03C8 A3                  781 	inc	dptr
   03C9 74 00               782 	mov	a,#(_main_linefeed_1_1 >> 8)
   03CB F0                  783 	movx	@dptr,a
   03CC A3                  784 	inc	dptr
   03CD 74 00               785 	mov	a,#0x0
   03CF F0                  786 	movx	@dptr,a
                            787 ;	genAssign
   03D0 90 02 61            788 	mov	dptr,#_UART_send_PARM_3
   03D3 74 03               789 	mov	a,#0x03
   03D5 F0                  790 	movx	@dptr,a
   03D6 E4                  791 	clr	a
   03D7 A3                  792 	inc	dptr
   03D8 F0                  793 	movx	@dptr,a
                            794 ;	genCall
   03D9 75 82 03            795 	mov	dpl,#_g_uart0
   03DC 75 83 00            796 	mov	dph,#(_g_uart0 >> 8)
   03DF 75 F0 00            797 	mov	b,#0x00
   03E2 12 1C B0            798 	lcall	_UART_send
                    0383    799 	C$main.c$111$1$1 ==.
                            800 ;	../main.c:111: while( 1 )
   03E5                     801 00102$:
                    0383    802 	C$main.c$115$2$2 ==.
                            803 ;	../main.c:115: GPIO_set_output( &g_gpio, LED_D0, 1);
                            804 ;	genAssign
   03E5 90 06 E0            805 	mov	dptr,#_GPIO_set_output_PARM_2
   03E8 74 00               806 	mov	a,#0x00
   03EA F0                  807 	movx	@dptr,a
                            808 ;	genAssign
   03EB 90 06 E1            809 	mov	dptr,#_GPIO_set_output_PARM_3
   03EE 74 01               810 	mov	a,#0x01
   03F0 F0                  811 	movx	@dptr,a
                            812 ;	genCall
   03F1 75 82 00            813 	mov	dpl,#_g_gpio
   03F4 75 83 00            814 	mov	dph,#(_g_gpio >> 8)
   03F7 75 F0 00            815 	mov	b,#0x00
   03FA 12 4B B9            816 	lcall	_GPIO_set_output
                    039B    817 	C$main.c$117$2$2 ==.
                            818 ;	../main.c:117: wait(LED_scanning_delay);
                            819 ;	genCall
   03FD 75 82 28            820 	mov	dpl,#0x28
   0400 75 83 00            821 	mov	dph,#0x00
   0403 12 07 BB            822 	lcall	_wait
                    03A4    823 	C$main.c$119$2$2 ==.
                            824 ;	../main.c:119: GPIO_set_output( &g_gpio, LED_D0, 0);
                            825 ;	genAssign
   0406 90 06 E0            826 	mov	dptr,#_GPIO_set_output_PARM_2
   0409 74 00               827 	mov	a,#0x00
   040B F0                  828 	movx	@dptr,a
                            829 ;	genAssign
   040C 90 06 E1            830 	mov	dptr,#_GPIO_set_output_PARM_3
   040F 74 00               831 	mov	a,#0x00
   0411 F0                  832 	movx	@dptr,a
                            833 ;	genCall
   0412 75 82 00            834 	mov	dpl,#_g_gpio
   0415 75 83 00            835 	mov	dph,#(_g_gpio >> 8)
   0418 75 F0 00            836 	mov	b,#0x00
   041B 12 4B B9            837 	lcall	_GPIO_set_output
                    03BC    838 	C$main.c$121$2$2 ==.
                            839 ;	../main.c:121: GPIO_set_output( &g_gpio, LED_D1, 1);
                            840 ;	genAssign
   041E 90 06 E0            841 	mov	dptr,#_GPIO_set_output_PARM_2
   0421 74 01               842 	mov	a,#0x01
   0423 F0                  843 	movx	@dptr,a
                            844 ;	genAssign
   0424 90 06 E1            845 	mov	dptr,#_GPIO_set_output_PARM_3
   0427 74 01               846 	mov	a,#0x01
   0429 F0                  847 	movx	@dptr,a
                            848 ;	genCall
   042A 75 82 00            849 	mov	dpl,#_g_gpio
   042D 75 83 00            850 	mov	dph,#(_g_gpio >> 8)
   0430 75 F0 00            851 	mov	b,#0x00
   0433 12 4B B9            852 	lcall	_GPIO_set_output
                    03D4    853 	C$main.c$123$2$2 ==.
                            854 ;	../main.c:123: wait(LED_scanning_delay);
                            855 ;	genCall
   0436 75 82 28            856 	mov	dpl,#0x28
   0439 75 83 00            857 	mov	dph,#0x00
   043C 12 07 BB            858 	lcall	_wait
                    03DD    859 	C$main.c$125$2$2 ==.
                            860 ;	../main.c:125: GPIO_set_output( &g_gpio, LED_D1, 0);
                            861 ;	genAssign
   043F 90 06 E0            862 	mov	dptr,#_GPIO_set_output_PARM_2
   0442 74 01               863 	mov	a,#0x01
   0444 F0                  864 	movx	@dptr,a
                            865 ;	genAssign
   0445 90 06 E1            866 	mov	dptr,#_GPIO_set_output_PARM_3
   0448 74 00               867 	mov	a,#0x00
   044A F0                  868 	movx	@dptr,a
                            869 ;	genCall
   044B 75 82 00            870 	mov	dpl,#_g_gpio
   044E 75 83 00            871 	mov	dph,#(_g_gpio >> 8)
   0451 75 F0 00            872 	mov	b,#0x00
   0454 12 4B B9            873 	lcall	_GPIO_set_output
                    03F5    874 	C$main.c$127$2$2 ==.
                            875 ;	../main.c:127: GPIO_set_output( &g_gpio, LED_D2, 1);
                            876 ;	genAssign
   0457 90 06 E0            877 	mov	dptr,#_GPIO_set_output_PARM_2
   045A 74 02               878 	mov	a,#0x02
   045C F0                  879 	movx	@dptr,a
                            880 ;	genAssign
   045D 90 06 E1            881 	mov	dptr,#_GPIO_set_output_PARM_3
   0460 74 01               882 	mov	a,#0x01
   0462 F0                  883 	movx	@dptr,a
                            884 ;	genCall
   0463 75 82 00            885 	mov	dpl,#_g_gpio
   0466 75 83 00            886 	mov	dph,#(_g_gpio >> 8)
   0469 75 F0 00            887 	mov	b,#0x00
   046C 12 4B B9            888 	lcall	_GPIO_set_output
                    040D    889 	C$main.c$129$2$2 ==.
                            890 ;	../main.c:129: wait(LED_scanning_delay);
                            891 ;	genCall
   046F 75 82 28            892 	mov	dpl,#0x28
   0472 75 83 00            893 	mov	dph,#0x00
   0475 12 07 BB            894 	lcall	_wait
                    0416    895 	C$main.c$131$2$2 ==.
                            896 ;	../main.c:131: GPIO_set_output( &g_gpio, LED_D2, 0);
                            897 ;	genAssign
   0478 90 06 E0            898 	mov	dptr,#_GPIO_set_output_PARM_2
   047B 74 02               899 	mov	a,#0x02
   047D F0                  900 	movx	@dptr,a
                            901 ;	genAssign
   047E 90 06 E1            902 	mov	dptr,#_GPIO_set_output_PARM_3
   0481 74 00               903 	mov	a,#0x00
   0483 F0                  904 	movx	@dptr,a
                            905 ;	genCall
   0484 75 82 00            906 	mov	dpl,#_g_gpio
   0487 75 83 00            907 	mov	dph,#(_g_gpio >> 8)
   048A 75 F0 00            908 	mov	b,#0x00
   048D 12 4B B9            909 	lcall	_GPIO_set_output
                    042E    910 	C$main.c$133$2$2 ==.
                            911 ;	../main.c:133: GPIO_set_output( &g_gpio, LED_D3, 1);
                            912 ;	genAssign
   0490 90 06 E0            913 	mov	dptr,#_GPIO_set_output_PARM_2
   0493 74 03               914 	mov	a,#0x03
   0495 F0                  915 	movx	@dptr,a
                            916 ;	genAssign
   0496 90 06 E1            917 	mov	dptr,#_GPIO_set_output_PARM_3
   0499 74 01               918 	mov	a,#0x01
   049B F0                  919 	movx	@dptr,a
                            920 ;	genCall
   049C 75 82 00            921 	mov	dpl,#_g_gpio
   049F 75 83 00            922 	mov	dph,#(_g_gpio >> 8)
   04A2 75 F0 00            923 	mov	b,#0x00
   04A5 12 4B B9            924 	lcall	_GPIO_set_output
                    0446    925 	C$main.c$135$2$2 ==.
                            926 ;	../main.c:135: wait(LED_scanning_delay);
                            927 ;	genCall
   04A8 75 82 28            928 	mov	dpl,#0x28
   04AB 75 83 00            929 	mov	dph,#0x00
   04AE 12 07 BB            930 	lcall	_wait
                    044F    931 	C$main.c$137$2$2 ==.
                            932 ;	../main.c:137: GPIO_set_output( &g_gpio, LED_D3, 0);
                            933 ;	genAssign
   04B1 90 06 E0            934 	mov	dptr,#_GPIO_set_output_PARM_2
   04B4 74 03               935 	mov	a,#0x03
   04B6 F0                  936 	movx	@dptr,a
                            937 ;	genAssign
   04B7 90 06 E1            938 	mov	dptr,#_GPIO_set_output_PARM_3
   04BA 74 00               939 	mov	a,#0x00
   04BC F0                  940 	movx	@dptr,a
                            941 ;	genCall
   04BD 75 82 00            942 	mov	dpl,#_g_gpio
   04C0 75 83 00            943 	mov	dph,#(_g_gpio >> 8)
   04C3 75 F0 00            944 	mov	b,#0x00
   04C6 12 4B B9            945 	lcall	_GPIO_set_output
                    0467    946 	C$main.c$139$2$2 ==.
                            947 ;	../main.c:139: GPIO_set_output( &g_gpio, LED_D4, 1);
                            948 ;	genAssign
   04C9 90 06 E0            949 	mov	dptr,#_GPIO_set_output_PARM_2
   04CC 74 04               950 	mov	a,#0x04
   04CE F0                  951 	movx	@dptr,a
                            952 ;	genAssign
   04CF 90 06 E1            953 	mov	dptr,#_GPIO_set_output_PARM_3
   04D2 74 01               954 	mov	a,#0x01
   04D4 F0                  955 	movx	@dptr,a
                            956 ;	genCall
   04D5 75 82 00            957 	mov	dpl,#_g_gpio
   04D8 75 83 00            958 	mov	dph,#(_g_gpio >> 8)
   04DB 75 F0 00            959 	mov	b,#0x00
   04DE 12 4B B9            960 	lcall	_GPIO_set_output
                    047F    961 	C$main.c$141$2$2 ==.
                            962 ;	../main.c:141: wait(LED_scanning_delay);
                            963 ;	genCall
   04E1 75 82 28            964 	mov	dpl,#0x28
   04E4 75 83 00            965 	mov	dph,#0x00
   04E7 12 07 BB            966 	lcall	_wait
                    0488    967 	C$main.c$143$2$2 ==.
                            968 ;	../main.c:143: GPIO_set_output( &g_gpio, LED_D4, 0);
                            969 ;	genAssign
   04EA 90 06 E0            970 	mov	dptr,#_GPIO_set_output_PARM_2
   04ED 74 04               971 	mov	a,#0x04
   04EF F0                  972 	movx	@dptr,a
                            973 ;	genAssign
   04F0 90 06 E1            974 	mov	dptr,#_GPIO_set_output_PARM_3
   04F3 74 00               975 	mov	a,#0x00
   04F5 F0                  976 	movx	@dptr,a
                            977 ;	genCall
   04F6 75 82 00            978 	mov	dpl,#_g_gpio
   04F9 75 83 00            979 	mov	dph,#(_g_gpio >> 8)
   04FC 75 F0 00            980 	mov	b,#0x00
   04FF 12 4B B9            981 	lcall	_GPIO_set_output
                    04A0    982 	C$main.c$145$2$2 ==.
                            983 ;	../main.c:145: GPIO_set_output( &g_gpio, LED_D5, 1);
                            984 ;	genAssign
   0502 90 06 E0            985 	mov	dptr,#_GPIO_set_output_PARM_2
   0505 74 05               986 	mov	a,#0x05
   0507 F0                  987 	movx	@dptr,a
                            988 ;	genAssign
   0508 90 06 E1            989 	mov	dptr,#_GPIO_set_output_PARM_3
   050B 74 01               990 	mov	a,#0x01
   050D F0                  991 	movx	@dptr,a
                            992 ;	genCall
   050E 75 82 00            993 	mov	dpl,#_g_gpio
   0511 75 83 00            994 	mov	dph,#(_g_gpio >> 8)
   0514 75 F0 00            995 	mov	b,#0x00
   0517 12 4B B9            996 	lcall	_GPIO_set_output
                    04B8    997 	C$main.c$147$2$2 ==.
                            998 ;	../main.c:147: wait(LED_scanning_delay);
                            999 ;	genCall
   051A 75 82 28           1000 	mov	dpl,#0x28
   051D 75 83 00           1001 	mov	dph,#0x00
   0520 12 07 BB           1002 	lcall	_wait
                    04C1   1003 	C$main.c$149$2$2 ==.
                           1004 ;	../main.c:149: GPIO_set_output( &g_gpio, LED_D5, 0);
                           1005 ;	genAssign
   0523 90 06 E0           1006 	mov	dptr,#_GPIO_set_output_PARM_2
   0526 74 05              1007 	mov	a,#0x05
   0528 F0                 1008 	movx	@dptr,a
                           1009 ;	genAssign
   0529 90 06 E1           1010 	mov	dptr,#_GPIO_set_output_PARM_3
   052C 74 00              1011 	mov	a,#0x00
   052E F0                 1012 	movx	@dptr,a
                           1013 ;	genCall
   052F 75 82 00           1014 	mov	dpl,#_g_gpio
   0532 75 83 00           1015 	mov	dph,#(_g_gpio >> 8)
   0535 75 F0 00           1016 	mov	b,#0x00
   0538 12 4B B9           1017 	lcall	_GPIO_set_output
                    04D9   1018 	C$main.c$151$2$2 ==.
                           1019 ;	../main.c:151: GPIO_set_output( &g_gpio, LED_D6, 1);
                           1020 ;	genAssign
   053B 90 06 E0           1021 	mov	dptr,#_GPIO_set_output_PARM_2
   053E 74 06              1022 	mov	a,#0x06
   0540 F0                 1023 	movx	@dptr,a
                           1024 ;	genAssign
   0541 90 06 E1           1025 	mov	dptr,#_GPIO_set_output_PARM_3
   0544 74 01              1026 	mov	a,#0x01
   0546 F0                 1027 	movx	@dptr,a
                           1028 ;	genCall
   0547 75 82 00           1029 	mov	dpl,#_g_gpio
   054A 75 83 00           1030 	mov	dph,#(_g_gpio >> 8)
   054D 75 F0 00           1031 	mov	b,#0x00
   0550 12 4B B9           1032 	lcall	_GPIO_set_output
                    04F1   1033 	C$main.c$153$2$2 ==.
                           1034 ;	../main.c:153: wait(LED_scanning_delay);
                           1035 ;	genCall
   0553 75 82 28           1036 	mov	dpl,#0x28
   0556 75 83 00           1037 	mov	dph,#0x00
   0559 12 07 BB           1038 	lcall	_wait
                    04FA   1039 	C$main.c$155$2$2 ==.
                           1040 ;	../main.c:155: GPIO_set_output( &g_gpio, LED_D6, 0);
                           1041 ;	genAssign
   055C 90 06 E0           1042 	mov	dptr,#_GPIO_set_output_PARM_2
   055F 74 06              1043 	mov	a,#0x06
   0561 F0                 1044 	movx	@dptr,a
                           1045 ;	genAssign
   0562 90 06 E1           1046 	mov	dptr,#_GPIO_set_output_PARM_3
   0565 74 00              1047 	mov	a,#0x00
   0567 F0                 1048 	movx	@dptr,a
                           1049 ;	genCall
   0568 75 82 00           1050 	mov	dpl,#_g_gpio
   056B 75 83 00           1051 	mov	dph,#(_g_gpio >> 8)
   056E 75 F0 00           1052 	mov	b,#0x00
   0571 12 4B B9           1053 	lcall	_GPIO_set_output
                    0512   1054 	C$main.c$157$2$2 ==.
                           1055 ;	../main.c:157: GPIO_set_output( &g_gpio, LED_D7, 1);
                           1056 ;	genAssign
   0574 90 06 E0           1057 	mov	dptr,#_GPIO_set_output_PARM_2
   0577 74 07              1058 	mov	a,#0x07
   0579 F0                 1059 	movx	@dptr,a
                           1060 ;	genAssign
   057A 90 06 E1           1061 	mov	dptr,#_GPIO_set_output_PARM_3
   057D 74 01              1062 	mov	a,#0x01
   057F F0                 1063 	movx	@dptr,a
                           1064 ;	genCall
   0580 75 82 00           1065 	mov	dpl,#_g_gpio
   0583 75 83 00           1066 	mov	dph,#(_g_gpio >> 8)
   0586 75 F0 00           1067 	mov	b,#0x00
   0589 12 4B B9           1068 	lcall	_GPIO_set_output
                    052A   1069 	C$main.c$159$2$2 ==.
                           1070 ;	../main.c:159: wait(LED_scanning_delay);
                           1071 ;	genCall
   058C 75 82 28           1072 	mov	dpl,#0x28
   058F 75 83 00           1073 	mov	dph,#0x00
   0592 12 07 BB           1074 	lcall	_wait
                    0533   1075 	C$main.c$161$2$2 ==.
                           1076 ;	../main.c:161: GPIO_set_output( &g_gpio, LED_D7, 0);
                           1077 ;	genAssign
   0595 90 06 E0           1078 	mov	dptr,#_GPIO_set_output_PARM_2
   0598 74 07              1079 	mov	a,#0x07
   059A F0                 1080 	movx	@dptr,a
                           1081 ;	genAssign
   059B 90 06 E1           1082 	mov	dptr,#_GPIO_set_output_PARM_3
   059E 74 00              1083 	mov	a,#0x00
   05A0 F0                 1084 	movx	@dptr,a
                           1085 ;	genCall
   05A1 75 82 00           1086 	mov	dpl,#_g_gpio
   05A4 75 83 00           1087 	mov	dph,#(_g_gpio >> 8)
   05A7 75 F0 00           1088 	mov	b,#0x00
   05AA 12 4B B9           1089 	lcall	_GPIO_set_output
                    054B   1090 	C$main.c$163$2$2 ==.
                           1091 ;	../main.c:163: GPIO_set_output( &g_gpio, LED_D8, 1);
                           1092 ;	genAssign
   05AD 90 06 E0           1093 	mov	dptr,#_GPIO_set_output_PARM_2
   05B0 74 08              1094 	mov	a,#0x08
   05B2 F0                 1095 	movx	@dptr,a
                           1096 ;	genAssign
   05B3 90 06 E1           1097 	mov	dptr,#_GPIO_set_output_PARM_3
   05B6 74 01              1098 	mov	a,#0x01
   05B8 F0                 1099 	movx	@dptr,a
                           1100 ;	genCall
   05B9 75 82 00           1101 	mov	dpl,#_g_gpio
   05BC 75 83 00           1102 	mov	dph,#(_g_gpio >> 8)
   05BF 75 F0 00           1103 	mov	b,#0x00
   05C2 12 4B B9           1104 	lcall	_GPIO_set_output
                    0563   1105 	C$main.c$165$2$2 ==.
                           1106 ;	../main.c:165: wait(LED_scanning_delay);
                           1107 ;	genCall
   05C5 75 82 28           1108 	mov	dpl,#0x28
   05C8 75 83 00           1109 	mov	dph,#0x00
   05CB 12 07 BB           1110 	lcall	_wait
                    056C   1111 	C$main.c$171$2$2 ==.
                           1112 ;	../main.c:171: GPIO_set_output( &g_gpio, LED_D8, 0);
                           1113 ;	genAssign
   05CE 90 06 E0           1114 	mov	dptr,#_GPIO_set_output_PARM_2
   05D1 74 08              1115 	mov	a,#0x08
   05D3 F0                 1116 	movx	@dptr,a
                           1117 ;	genAssign
   05D4 90 06 E1           1118 	mov	dptr,#_GPIO_set_output_PARM_3
   05D7 74 00              1119 	mov	a,#0x00
   05D9 F0                 1120 	movx	@dptr,a
                           1121 ;	genCall
   05DA 75 82 00           1122 	mov	dpl,#_g_gpio
   05DD 75 83 00           1123 	mov	dph,#(_g_gpio >> 8)
   05E0 75 F0 00           1124 	mov	b,#0x00
   05E3 12 4B B9           1125 	lcall	_GPIO_set_output
                    0584   1126 	C$main.c$173$2$2 ==.
                           1127 ;	../main.c:173: GPIO_set_output( &g_gpio, LED_D7, 1);
                           1128 ;	genAssign
   05E6 90 06 E0           1129 	mov	dptr,#_GPIO_set_output_PARM_2
   05E9 74 07              1130 	mov	a,#0x07
   05EB F0                 1131 	movx	@dptr,a
                           1132 ;	genAssign
   05EC 90 06 E1           1133 	mov	dptr,#_GPIO_set_output_PARM_3
   05EF 74 01              1134 	mov	a,#0x01
   05F1 F0                 1135 	movx	@dptr,a
                           1136 ;	genCall
   05F2 75 82 00           1137 	mov	dpl,#_g_gpio
   05F5 75 83 00           1138 	mov	dph,#(_g_gpio >> 8)
   05F8 75 F0 00           1139 	mov	b,#0x00
   05FB 12 4B B9           1140 	lcall	_GPIO_set_output
                    059C   1141 	C$main.c$175$2$2 ==.
                           1142 ;	../main.c:175: wait(LED_scanning_delay);
                           1143 ;	genCall
   05FE 75 82 28           1144 	mov	dpl,#0x28
   0601 75 83 00           1145 	mov	dph,#0x00
   0604 12 07 BB           1146 	lcall	_wait
                    05A5   1147 	C$main.c$177$2$2 ==.
                           1148 ;	../main.c:177: GPIO_set_output( &g_gpio, LED_D7, 0);
                           1149 ;	genAssign
   0607 90 06 E0           1150 	mov	dptr,#_GPIO_set_output_PARM_2
   060A 74 07              1151 	mov	a,#0x07
   060C F0                 1152 	movx	@dptr,a
                           1153 ;	genAssign
   060D 90 06 E1           1154 	mov	dptr,#_GPIO_set_output_PARM_3
   0610 74 00              1155 	mov	a,#0x00
   0612 F0                 1156 	movx	@dptr,a
                           1157 ;	genCall
   0613 75 82 00           1158 	mov	dpl,#_g_gpio
   0616 75 83 00           1159 	mov	dph,#(_g_gpio >> 8)
   0619 75 F0 00           1160 	mov	b,#0x00
   061C 12 4B B9           1161 	lcall	_GPIO_set_output
                    05BD   1162 	C$main.c$179$2$2 ==.
                           1163 ;	../main.c:179: GPIO_set_output( &g_gpio, LED_D6, 1);
                           1164 ;	genAssign
   061F 90 06 E0           1165 	mov	dptr,#_GPIO_set_output_PARM_2
   0622 74 06              1166 	mov	a,#0x06
   0624 F0                 1167 	movx	@dptr,a
                           1168 ;	genAssign
   0625 90 06 E1           1169 	mov	dptr,#_GPIO_set_output_PARM_3
   0628 74 01              1170 	mov	a,#0x01
   062A F0                 1171 	movx	@dptr,a
                           1172 ;	genCall
   062B 75 82 00           1173 	mov	dpl,#_g_gpio
   062E 75 83 00           1174 	mov	dph,#(_g_gpio >> 8)
   0631 75 F0 00           1175 	mov	b,#0x00
   0634 12 4B B9           1176 	lcall	_GPIO_set_output
                    05D5   1177 	C$main.c$181$2$2 ==.
                           1178 ;	../main.c:181: wait(LED_scanning_delay);
                           1179 ;	genCall
   0637 75 82 28           1180 	mov	dpl,#0x28
   063A 75 83 00           1181 	mov	dph,#0x00
   063D 12 07 BB           1182 	lcall	_wait
                    05DE   1183 	C$main.c$183$2$2 ==.
                           1184 ;	../main.c:183: GPIO_set_output( &g_gpio, LED_D6, 0);
                           1185 ;	genAssign
   0640 90 06 E0           1186 	mov	dptr,#_GPIO_set_output_PARM_2
   0643 74 06              1187 	mov	a,#0x06
   0645 F0                 1188 	movx	@dptr,a
                           1189 ;	genAssign
   0646 90 06 E1           1190 	mov	dptr,#_GPIO_set_output_PARM_3
   0649 74 00              1191 	mov	a,#0x00
   064B F0                 1192 	movx	@dptr,a
                           1193 ;	genCall
   064C 75 82 00           1194 	mov	dpl,#_g_gpio
   064F 75 83 00           1195 	mov	dph,#(_g_gpio >> 8)
   0652 75 F0 00           1196 	mov	b,#0x00
   0655 12 4B B9           1197 	lcall	_GPIO_set_output
                    05F6   1198 	C$main.c$185$2$2 ==.
                           1199 ;	../main.c:185: GPIO_set_output( &g_gpio, LED_D5, 1);
                           1200 ;	genAssign
   0658 90 06 E0           1201 	mov	dptr,#_GPIO_set_output_PARM_2
   065B 74 05              1202 	mov	a,#0x05
   065D F0                 1203 	movx	@dptr,a
                           1204 ;	genAssign
   065E 90 06 E1           1205 	mov	dptr,#_GPIO_set_output_PARM_3
   0661 74 01              1206 	mov	a,#0x01
   0663 F0                 1207 	movx	@dptr,a
                           1208 ;	genCall
   0664 75 82 00           1209 	mov	dpl,#_g_gpio
   0667 75 83 00           1210 	mov	dph,#(_g_gpio >> 8)
   066A 75 F0 00           1211 	mov	b,#0x00
   066D 12 4B B9           1212 	lcall	_GPIO_set_output
                    060E   1213 	C$main.c$187$2$2 ==.
                           1214 ;	../main.c:187: wait(LED_scanning_delay);
                           1215 ;	genCall
   0670 75 82 28           1216 	mov	dpl,#0x28
   0673 75 83 00           1217 	mov	dph,#0x00
   0676 12 07 BB           1218 	lcall	_wait
                    0617   1219 	C$main.c$189$2$2 ==.
                           1220 ;	../main.c:189: GPIO_set_output( &g_gpio, LED_D5, 0);
                           1221 ;	genAssign
   0679 90 06 E0           1222 	mov	dptr,#_GPIO_set_output_PARM_2
   067C 74 05              1223 	mov	a,#0x05
   067E F0                 1224 	movx	@dptr,a
                           1225 ;	genAssign
   067F 90 06 E1           1226 	mov	dptr,#_GPIO_set_output_PARM_3
   0682 74 00              1227 	mov	a,#0x00
   0684 F0                 1228 	movx	@dptr,a
                           1229 ;	genCall
   0685 75 82 00           1230 	mov	dpl,#_g_gpio
   0688 75 83 00           1231 	mov	dph,#(_g_gpio >> 8)
   068B 75 F0 00           1232 	mov	b,#0x00
   068E 12 4B B9           1233 	lcall	_GPIO_set_output
                    062F   1234 	C$main.c$191$2$2 ==.
                           1235 ;	../main.c:191: GPIO_set_output( &g_gpio, LED_D4, 1);
                           1236 ;	genAssign
   0691 90 06 E0           1237 	mov	dptr,#_GPIO_set_output_PARM_2
   0694 74 04              1238 	mov	a,#0x04
   0696 F0                 1239 	movx	@dptr,a
                           1240 ;	genAssign
   0697 90 06 E1           1241 	mov	dptr,#_GPIO_set_output_PARM_3
   069A 74 01              1242 	mov	a,#0x01
   069C F0                 1243 	movx	@dptr,a
                           1244 ;	genCall
   069D 75 82 00           1245 	mov	dpl,#_g_gpio
   06A0 75 83 00           1246 	mov	dph,#(_g_gpio >> 8)
   06A3 75 F0 00           1247 	mov	b,#0x00
   06A6 12 4B B9           1248 	lcall	_GPIO_set_output
                    0647   1249 	C$main.c$193$2$2 ==.
                           1250 ;	../main.c:193: wait(LED_scanning_delay);
                           1251 ;	genCall
   06A9 75 82 28           1252 	mov	dpl,#0x28
   06AC 75 83 00           1253 	mov	dph,#0x00
   06AF 12 07 BB           1254 	lcall	_wait
                    0650   1255 	C$main.c$195$2$2 ==.
                           1256 ;	../main.c:195: GPIO_set_output( &g_gpio, LED_D4, 0);
                           1257 ;	genAssign
   06B2 90 06 E0           1258 	mov	dptr,#_GPIO_set_output_PARM_2
   06B5 74 04              1259 	mov	a,#0x04
   06B7 F0                 1260 	movx	@dptr,a
                           1261 ;	genAssign
   06B8 90 06 E1           1262 	mov	dptr,#_GPIO_set_output_PARM_3
   06BB 74 00              1263 	mov	a,#0x00
   06BD F0                 1264 	movx	@dptr,a
                           1265 ;	genCall
   06BE 75 82 00           1266 	mov	dpl,#_g_gpio
   06C1 75 83 00           1267 	mov	dph,#(_g_gpio >> 8)
   06C4 75 F0 00           1268 	mov	b,#0x00
   06C7 12 4B B9           1269 	lcall	_GPIO_set_output
                    0668   1270 	C$main.c$197$2$2 ==.
                           1271 ;	../main.c:197: GPIO_set_output( &g_gpio, LED_D3, 1);
                           1272 ;	genAssign
   06CA 90 06 E0           1273 	mov	dptr,#_GPIO_set_output_PARM_2
   06CD 74 03              1274 	mov	a,#0x03
   06CF F0                 1275 	movx	@dptr,a
                           1276 ;	genAssign
   06D0 90 06 E1           1277 	mov	dptr,#_GPIO_set_output_PARM_3
   06D3 74 01              1278 	mov	a,#0x01
   06D5 F0                 1279 	movx	@dptr,a
                           1280 ;	genCall
   06D6 75 82 00           1281 	mov	dpl,#_g_gpio
   06D9 75 83 00           1282 	mov	dph,#(_g_gpio >> 8)
   06DC 75 F0 00           1283 	mov	b,#0x00
   06DF 12 4B B9           1284 	lcall	_GPIO_set_output
                    0680   1285 	C$main.c$199$2$2 ==.
                           1286 ;	../main.c:199: wait(LED_scanning_delay);
                           1287 ;	genCall
   06E2 75 82 28           1288 	mov	dpl,#0x28
   06E5 75 83 00           1289 	mov	dph,#0x00
   06E8 12 07 BB           1290 	lcall	_wait
                    0689   1291 	C$main.c$201$2$2 ==.
                           1292 ;	../main.c:201: GPIO_set_output( &g_gpio, LED_D3, 0);
                           1293 ;	genAssign
   06EB 90 06 E0           1294 	mov	dptr,#_GPIO_set_output_PARM_2
   06EE 74 03              1295 	mov	a,#0x03
   06F0 F0                 1296 	movx	@dptr,a
                           1297 ;	genAssign
   06F1 90 06 E1           1298 	mov	dptr,#_GPIO_set_output_PARM_3
   06F4 74 00              1299 	mov	a,#0x00
   06F6 F0                 1300 	movx	@dptr,a
                           1301 ;	genCall
   06F7 75 82 00           1302 	mov	dpl,#_g_gpio
   06FA 75 83 00           1303 	mov	dph,#(_g_gpio >> 8)
   06FD 75 F0 00           1304 	mov	b,#0x00
   0700 12 4B B9           1305 	lcall	_GPIO_set_output
                    06A1   1306 	C$main.c$203$2$2 ==.
                           1307 ;	../main.c:203: GPIO_set_output( &g_gpio, LED_D2, 1);
                           1308 ;	genAssign
   0703 90 06 E0           1309 	mov	dptr,#_GPIO_set_output_PARM_2
   0706 74 02              1310 	mov	a,#0x02
   0708 F0                 1311 	movx	@dptr,a
                           1312 ;	genAssign
   0709 90 06 E1           1313 	mov	dptr,#_GPIO_set_output_PARM_3
   070C 74 01              1314 	mov	a,#0x01
   070E F0                 1315 	movx	@dptr,a
                           1316 ;	genCall
   070F 75 82 00           1317 	mov	dpl,#_g_gpio
   0712 75 83 00           1318 	mov	dph,#(_g_gpio >> 8)
   0715 75 F0 00           1319 	mov	b,#0x00
   0718 12 4B B9           1320 	lcall	_GPIO_set_output
                    06B9   1321 	C$main.c$205$2$2 ==.
                           1322 ;	../main.c:205: wait(LED_scanning_delay);
                           1323 ;	genCall
   071B 75 82 28           1324 	mov	dpl,#0x28
   071E 75 83 00           1325 	mov	dph,#0x00
   0721 12 07 BB           1326 	lcall	_wait
                    06C2   1327 	C$main.c$207$2$2 ==.
                           1328 ;	../main.c:207: GPIO_set_output( &g_gpio, LED_D2, 0);
                           1329 ;	genAssign
   0724 90 06 E0           1330 	mov	dptr,#_GPIO_set_output_PARM_2
   0727 74 02              1331 	mov	a,#0x02
   0729 F0                 1332 	movx	@dptr,a
                           1333 ;	genAssign
   072A 90 06 E1           1334 	mov	dptr,#_GPIO_set_output_PARM_3
   072D 74 00              1335 	mov	a,#0x00
   072F F0                 1336 	movx	@dptr,a
                           1337 ;	genCall
   0730 75 82 00           1338 	mov	dpl,#_g_gpio
   0733 75 83 00           1339 	mov	dph,#(_g_gpio >> 8)
   0736 75 F0 00           1340 	mov	b,#0x00
   0739 12 4B B9           1341 	lcall	_GPIO_set_output
                    06DA   1342 	C$main.c$209$2$2 ==.
                           1343 ;	../main.c:209: GPIO_set_output( &g_gpio, LED_D1, 1);
                           1344 ;	genAssign
   073C 90 06 E0           1345 	mov	dptr,#_GPIO_set_output_PARM_2
   073F 74 01              1346 	mov	a,#0x01
   0741 F0                 1347 	movx	@dptr,a
                           1348 ;	genAssign
   0742 90 06 E1           1349 	mov	dptr,#_GPIO_set_output_PARM_3
   0745 74 01              1350 	mov	a,#0x01
   0747 F0                 1351 	movx	@dptr,a
                           1352 ;	genCall
   0748 75 82 00           1353 	mov	dpl,#_g_gpio
   074B 75 83 00           1354 	mov	dph,#(_g_gpio >> 8)
   074E 75 F0 00           1355 	mov	b,#0x00
   0751 12 4B B9           1356 	lcall	_GPIO_set_output
                    06F2   1357 	C$main.c$211$2$2 ==.
                           1358 ;	../main.c:211: wait(LED_scanning_delay);
                           1359 ;	genCall
   0754 75 82 28           1360 	mov	dpl,#0x28
   0757 75 83 00           1361 	mov	dph,#0x00
   075A 12 07 BB           1362 	lcall	_wait
                    06FB   1363 	C$main.c$213$2$2 ==.
                           1364 ;	../main.c:213: GPIO_set_output( &g_gpio, LED_D1, 0);
                           1365 ;	genAssign
   075D 90 06 E0           1366 	mov	dptr,#_GPIO_set_output_PARM_2
   0760 74 01              1367 	mov	a,#0x01
   0762 F0                 1368 	movx	@dptr,a
                           1369 ;	genAssign
   0763 90 06 E1           1370 	mov	dptr,#_GPIO_set_output_PARM_3
   0766 74 00              1371 	mov	a,#0x00
   0768 F0                 1372 	movx	@dptr,a
                           1373 ;	genCall
   0769 75 82 00           1374 	mov	dpl,#_g_gpio
   076C 75 83 00           1375 	mov	dph,#(_g_gpio >> 8)
   076F 75 F0 00           1376 	mov	b,#0x00
   0772 12 4B B9           1377 	lcall	_GPIO_set_output
                    0713   1378 	C$main.c$215$2$2 ==.
                           1379 ;	../main.c:215: GPIO_set_output( &g_gpio, LED_D0, 1);
                           1380 ;	genAssign
   0775 90 06 E0           1381 	mov	dptr,#_GPIO_set_output_PARM_2
   0778 74 00              1382 	mov	a,#0x00
   077A F0                 1383 	movx	@dptr,a
                           1384 ;	genAssign
   077B 90 06 E1           1385 	mov	dptr,#_GPIO_set_output_PARM_3
   077E 74 01              1386 	mov	a,#0x01
   0780 F0                 1387 	movx	@dptr,a
                           1388 ;	genCall
   0781 75 82 00           1389 	mov	dpl,#_g_gpio
   0784 75 83 00           1390 	mov	dph,#(_g_gpio >> 8)
   0787 75 F0 00           1391 	mov	b,#0x00
   078A 12 4B B9           1392 	lcall	_GPIO_set_output
                    072B   1393 	C$main.c$217$2$2 ==.
                           1394 ;	../main.c:217: wait(LED_scanning_delay);
                           1395 ;	genCall
   078D 75 82 28           1396 	mov	dpl,#0x28
   0790 75 83 00           1397 	mov	dph,#0x00
   0793 12 07 BB           1398 	lcall	_wait
                    0734   1399 	C$main.c$219$2$2 ==.
                           1400 ;	../main.c:219: GPIO_set_output( &g_gpio, LED_D0, 0);
                           1401 ;	genAssign
   0796 90 06 E0           1402 	mov	dptr,#_GPIO_set_output_PARM_2
   0799 74 00              1403 	mov	a,#0x00
   079B F0                 1404 	movx	@dptr,a
                           1405 ;	genAssign
   079C 90 06 E1           1406 	mov	dptr,#_GPIO_set_output_PARM_3
   079F 74 00              1407 	mov	a,#0x00
   07A1 F0                 1408 	movx	@dptr,a
                           1409 ;	genCall
   07A2 75 82 00           1410 	mov	dpl,#_g_gpio
   07A5 75 83 00           1411 	mov	dph,#(_g_gpio >> 8)
   07A8 75 F0 00           1412 	mov	b,#0x00
   07AB 12 4B B9           1413 	lcall	_GPIO_set_output
                    074C   1414 	C$main.c$221$2$2 ==.
                           1415 ;	../main.c:221: wait(LED_scanning_delay);
                           1416 ;	genCall
   07AE 75 82 28           1417 	mov	dpl,#0x28
   07B1 75 83 00           1418 	mov	dph,#0x00
   07B4 12 07 BB           1419 	lcall	_wait
   07B7 02 03 E5           1420 	ljmp	00102$
   07BA                    1421 00104$:
                    0758   1422 	C$main.c$225$1$1 ==.
                    0758   1423 	XG$main$0$0 ==.
   07BA 22                 1424 	ret
                           1425 ;------------------------------------------------------------
                           1426 ;Allocation info for local variables in function 'wait'
                           1427 ;------------------------------------------------------------
                           1428 ;time_in_ms                Allocated with name '_wait_time_in_ms_1_1'
                           1429 ;i                         Allocated with name '_wait_i_1_1'
                           1430 ;------------------------------------------------------------
                    0759   1431 	G$wait$0$0 ==.
                    0759   1432 	C$main.c$229$1$1 ==.
                           1433 ;	../main.c:229: void wait(int time_in_ms)
                           1434 ;	-----------------------------------------
                           1435 ;	 function wait
                           1436 ;	-----------------------------------------
   07BB                    1437 _wait:
                           1438 ;	genReceive
   07BB AA 83              1439 	mov	r2,dph
   07BD E5 82              1440 	mov	a,dpl
   07BF 90 00 2A           1441 	mov	dptr,#_wait_time_in_ms_1_1
   07C2 F0                 1442 	movx	@dptr,a
   07C3 A3                 1443 	inc	dptr
   07C4 EA                 1444 	mov	a,r2
   07C5 F0                 1445 	movx	@dptr,a
                    0764   1446 	C$main.c$234$1$1 ==.
                           1447 ;	../main.c:234: for (i=0; i < time_in_ms*10000; i++)
                           1448 ;	genAssign
   07C6 90 00 2C           1449 	mov	dptr,#_wait_i_1_1
   07C9 E4                 1450 	clr	a
   07CA F0                 1451 	movx	@dptr,a
   07CB A3                 1452 	inc	dptr
   07CC F0                 1453 	movx	@dptr,a
                           1454 ;	genAssign
   07CD 90 00 2A           1455 	mov	dptr,#_wait_time_in_ms_1_1
   07D0 E0                 1456 	movx	a,@dptr
   07D1 FA                 1457 	mov	r2,a
   07D2 A3                 1458 	inc	dptr
   07D3 E0                 1459 	movx	a,@dptr
   07D4 FB                 1460 	mov	r3,a
                           1461 ;	genAssign
   07D5 90 08 3E           1462 	mov	dptr,#__mulint_PARM_2
   07D8 EA                 1463 	mov	a,r2
   07D9 F0                 1464 	movx	@dptr,a
   07DA A3                 1465 	inc	dptr
   07DB EB                 1466 	mov	a,r3
   07DC F0                 1467 	movx	@dptr,a
                           1468 ;	genCall
   07DD 75 82 10           1469 	mov	dpl,#0x10
   07E0 75 83 27           1470 	mov	dph,#0x27
   07E3 12 5C 6D           1471 	lcall	__mulint
   07E6 AA 82              1472 	mov	r2,dpl
   07E8 AB 83              1473 	mov	r3,dph
   07EA                    1474 00101$:
                           1475 ;	genAssign
   07EA 90 00 2C           1476 	mov	dptr,#_wait_i_1_1
   07ED E0                 1477 	movx	a,@dptr
   07EE FC                 1478 	mov	r4,a
   07EF A3                 1479 	inc	dptr
   07F0 E0                 1480 	movx	a,@dptr
   07F1 FD                 1481 	mov	r5,a
                           1482 ;	genCmpLt
                           1483 ;	genCmp
   07F2 C3                 1484 	clr	c
   07F3 EC                 1485 	mov	a,r4
   07F4 9A                 1486 	subb	a,r2
   07F5 ED                 1487 	mov	a,r5
   07F6 64 80              1488 	xrl	a,#0x80
   07F8 8B F0              1489 	mov	b,r3
   07FA 63 F0 80           1490 	xrl	b,#0x80
   07FD 95 F0              1491 	subb	a,b
                           1492 ;	genIfxJump
   07FF 40 03              1493 	jc	00109$
   0801 02 08 15           1494 	ljmp	00105$
   0804                    1495 00109$:
                           1496 ;	genPlus
   0804 90 00 2C           1497 	mov	dptr,#_wait_i_1_1
                           1498 ;	genPlusIncr
   0807 74 01              1499 	mov	a,#0x01
   0809 25 04              1500 	add	a,ar4
   080B F0                 1501 	movx	@dptr,a
   080C 74 00              1502 	mov	a,#0x00
   080E 35 05              1503 	addc	a,ar5
   0810 A3                 1504 	inc	dptr
   0811 F0                 1505 	movx	@dptr,a
   0812 02 07 EA           1506 	ljmp	00101$
   0815                    1507 00105$:
                    07B3   1508 	C$main.c$239$1$1 ==.
                    07B3   1509 	XG$wait$0$0 ==.
   0815 22                 1510 	ret
                           1511 	.area CSEG    (CODE)
                           1512 	.area CONST   (CODE)
                           1513 	.area XINIT   (CODE)
                           1514 	.area CABS    (ABS,CODE)
