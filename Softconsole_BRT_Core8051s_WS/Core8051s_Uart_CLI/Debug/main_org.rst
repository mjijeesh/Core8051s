                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Tue May 03 17:52:19 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___main_org
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _g_wd
                             14 	.globl _g_stdio_uart
                             15 	.globl _g_gpio
                             16 	.globl _rx_char_ptr
                             17 	.globl _rx_char
                             18 	.globl _key
                             19 	.globl _wait
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
                             37 ;--------------------------------------------------------
                             38 ; overlayable items in internal ram 
                             39 ;--------------------------------------------------------
                             40 	.area OSEG    (OVR,DATA)
                             41 ;--------------------------------------------------------
                             42 ; Stack segment in internal ram 
                             43 ;--------------------------------------------------------
                             44 	.area	SSEG	(DATA)
   006E                      45 __start__stack:
   006E                      46 	.ds	1
                             47 
                             48 ;--------------------------------------------------------
                             49 ; indirectly addressable internal ram data
                             50 ;--------------------------------------------------------
                             51 	.area ISEG    (DATA)
                             52 ;--------------------------------------------------------
                             53 ; absolute internal ram data
                             54 ;--------------------------------------------------------
                             55 	.area IABS    (ABS,DATA)
                             56 	.area IABS    (ABS,DATA)
                             57 ;--------------------------------------------------------
                             58 ; bit data
                             59 ;--------------------------------------------------------
                             60 	.area BSEG    (BIT)
                             61 ;--------------------------------------------------------
                             62 ; paged external ram data
                             63 ;--------------------------------------------------------
                             64 	.area PSEG    (PAG,XDATA)
                             65 ;--------------------------------------------------------
                             66 ; external ram data
                             67 ;--------------------------------------------------------
                             68 	.area XSEG    (XDATA)
                    0000     69 G$key$0$0==.
   03F1                      70 _key::
   03F1                      71 	.ds 1
                    0001     72 G$rx_char$0$0==.
   03F2                      73 _rx_char::
   03F2                      74 	.ds 10
                    000B     75 G$rx_char_ptr$0$0==.
   03FC                      76 _rx_char_ptr::
   03FC                      77 	.ds 3
                    000E     78 G$g_gpio$0$0==.
   03FF                      79 _g_gpio::
   03FF                      80 	.ds 3
                    0011     81 G$g_stdio_uart$0$0==.
   0402                      82 _g_stdio_uart::
   0402                      83 	.ds 3
                    0014     84 G$g_wd$0$0==.
   0405                      85 _g_wd::
   0405                      86 	.ds 2
                    0016     87 Lmain$uart_msg$1$1==.
   0407                      88 _main_uart_msg_1_1:
   0407                      89 	.ds 31
                    0035     90 Lmain$linefeed$1$1==.
   0426                      91 _main_linefeed_1_1:
   0426                      92 	.ds 3
                    0038     93 Lmain$sram_addr$1$1==.
   0429                      94 _main_sram_addr_1_1:
   0429                      95 	.ds 2
                    003A     96 Lmain$rx_data$2$4==.
   042B                      97 _main_rx_data_2_4:
   042B                      98 	.ds 2
                    003C     99 Lwait$time_in_ms$1$1==.
   042D                     100 _wait_time_in_ms_1_1:
   042D                     101 	.ds 2
                    003E    102 Lwait$i$1$1==.
   042F                     103 _wait_i_1_1:
   042F                     104 	.ds 2
                            105 ;--------------------------------------------------------
                            106 ; external initialized ram data
                            107 ;--------------------------------------------------------
                            108 	.area XISEG   (XDATA)
                            109 	.area HOME    (CODE)
                            110 	.area GSINIT0 (CODE)
                            111 	.area GSINIT1 (CODE)
                            112 	.area GSINIT2 (CODE)
                            113 	.area GSINIT3 (CODE)
                            114 	.area GSINIT4 (CODE)
                            115 	.area GSINIT5 (CODE)
                            116 	.area GSINIT  (CODE)
                            117 	.area GSFINAL (CODE)
                            118 	.area CSEG    (CODE)
                            119 ;--------------------------------------------------------
                            120 ; interrupt vector 
                            121 ;--------------------------------------------------------
                            122 	.area HOME    (CODE)
   0000                     123 __interrupt_vect:
   0000 02 00 08            124 	ljmp	__sdcc_gsinit_startup
                            125 ;--------------------------------------------------------
                            126 ; global & static initialisations
                            127 ;--------------------------------------------------------
                            128 	.area HOME    (CODE)
                            129 	.area GSINIT  (CODE)
                            130 	.area GSFINAL (CODE)
                            131 	.area GSINIT  (CODE)
                            132 	.globl __sdcc_gsinit_startup
                            133 	.globl __sdcc_program_startup
                            134 	.globl __start__stack
                            135 	.globl __mcs51_genXINIT
                            136 	.globl __mcs51_genXRAMCLEAR
                            137 	.globl __mcs51_genRAMCLEAR
                            138 	.area GSFINAL (CODE)
   005F 02 00 03            139 	ljmp	__sdcc_program_startup
                            140 ;--------------------------------------------------------
                            141 ; Home
                            142 ;--------------------------------------------------------
                            143 	.area HOME    (CODE)
                            144 	.area HOME    (CODE)
   0003                     145 __sdcc_program_startup:
   0003 12 0F 40            146 	lcall	_main
                            147 ;	return from main will lock up
   0006 80 FE               148 	sjmp .
                            149 ;--------------------------------------------------------
                            150 ; code
                            151 ;--------------------------------------------------------
                            152 	.area CSEG    (CODE)
                            153 ;------------------------------------------------------------
                            154 ;Allocation info for local variables in function 'main'
                            155 ;------------------------------------------------------------
                            156 ;uart_msg                  Allocated with name '_main_uart_msg_1_1'
                            157 ;linefeed                  Allocated with name '_main_linefeed_1_1'
                            158 ;value                     Allocated with name '_main_value_1_1'
                            159 ;testvar                   Allocated with name '_main_testvar_1_1'
                            160 ;sram_addr                 Allocated with name '_main_sram_addr_1_1'
                            161 ;rx_data                   Allocated with name '_main_rx_data_2_4'
                            162 ;rx_size                   Allocated with name '_main_rx_size_2_4'
                            163 ;------------------------------------------------------------
                    0000    164 	G$main$0$0 ==.
                    0000    165 	C$main_org.c$55$0$0 ==.
                            166 ;	../main_org.c:55: int main( void )
                            167 ;	-----------------------------------------
                            168 ;	 function main
                            169 ;	-----------------------------------------
   0F40                     170 _main:
                    0002    171 	ar2 = 0x02
                    0003    172 	ar3 = 0x03
                    0004    173 	ar4 = 0x04
                    0005    174 	ar5 = 0x05
                    0006    175 	ar6 = 0x06
                    0007    176 	ar7 = 0x07
                    0000    177 	ar0 = 0x00
                    0001    178 	ar1 = 0x01
                    0000    179 	C$main_org.c$57$1$0 ==.
                            180 ;	../main_org.c:57: const uint8_t uart_msg[] = "\n\r** Simple LED Sequence  **\n\r";
                            181 ;	genPointerSet
                            182 ;     genFarPointerSet
   0F40 90 04 07            183 	mov	dptr,#_main_uart_msg_1_1
   0F43 74 0A               184 	mov	a,#0x0A
   0F45 F0                  185 	movx	@dptr,a
                            186 ;	genPointerSet
                            187 ;     genFarPointerSet
   0F46 90 04 08            188 	mov	dptr,#(_main_uart_msg_1_1 + 0x0001)
   0F49 74 0D               189 	mov	a,#0x0D
   0F4B F0                  190 	movx	@dptr,a
                            191 ;	genPointerSet
                            192 ;     genFarPointerSet
   0F4C 90 04 09            193 	mov	dptr,#(_main_uart_msg_1_1 + 0x0002)
   0F4F 74 2A               194 	mov	a,#0x2A
   0F51 F0                  195 	movx	@dptr,a
                            196 ;	genPointerSet
                            197 ;     genFarPointerSet
   0F52 90 04 0A            198 	mov	dptr,#(_main_uart_msg_1_1 + 0x0003)
   0F55 74 2A               199 	mov	a,#0x2A
   0F57 F0                  200 	movx	@dptr,a
                            201 ;	genPointerSet
                            202 ;     genFarPointerSet
   0F58 90 04 0B            203 	mov	dptr,#(_main_uart_msg_1_1 + 0x0004)
   0F5B 74 20               204 	mov	a,#0x20
   0F5D F0                  205 	movx	@dptr,a
                            206 ;	genPointerSet
                            207 ;     genFarPointerSet
   0F5E 90 04 0C            208 	mov	dptr,#(_main_uart_msg_1_1 + 0x0005)
   0F61 74 53               209 	mov	a,#0x53
   0F63 F0                  210 	movx	@dptr,a
                            211 ;	genPointerSet
                            212 ;     genFarPointerSet
   0F64 90 04 0D            213 	mov	dptr,#(_main_uart_msg_1_1 + 0x0006)
   0F67 74 69               214 	mov	a,#0x69
   0F69 F0                  215 	movx	@dptr,a
                            216 ;	genPointerSet
                            217 ;     genFarPointerSet
   0F6A 90 04 0E            218 	mov	dptr,#(_main_uart_msg_1_1 + 0x0007)
   0F6D 74 6D               219 	mov	a,#0x6D
   0F6F F0                  220 	movx	@dptr,a
                            221 ;	genPointerSet
                            222 ;     genFarPointerSet
   0F70 90 04 0F            223 	mov	dptr,#(_main_uart_msg_1_1 + 0x0008)
   0F73 74 70               224 	mov	a,#0x70
   0F75 F0                  225 	movx	@dptr,a
                            226 ;	genPointerSet
                            227 ;     genFarPointerSet
   0F76 90 04 10            228 	mov	dptr,#(_main_uart_msg_1_1 + 0x0009)
   0F79 74 6C               229 	mov	a,#0x6C
   0F7B F0                  230 	movx	@dptr,a
                            231 ;	genPointerSet
                            232 ;     genFarPointerSet
   0F7C 90 04 11            233 	mov	dptr,#(_main_uart_msg_1_1 + 0x000a)
   0F7F 74 65               234 	mov	a,#0x65
   0F81 F0                  235 	movx	@dptr,a
                            236 ;	genPointerSet
                            237 ;     genFarPointerSet
   0F82 90 04 12            238 	mov	dptr,#(_main_uart_msg_1_1 + 0x000b)
   0F85 74 20               239 	mov	a,#0x20
   0F87 F0                  240 	movx	@dptr,a
                            241 ;	genPointerSet
                            242 ;     genFarPointerSet
   0F88 90 04 13            243 	mov	dptr,#(_main_uart_msg_1_1 + 0x000c)
   0F8B 74 4C               244 	mov	a,#0x4C
   0F8D F0                  245 	movx	@dptr,a
                            246 ;	genPointerSet
                            247 ;     genFarPointerSet
   0F8E 90 04 14            248 	mov	dptr,#(_main_uart_msg_1_1 + 0x000d)
   0F91 74 45               249 	mov	a,#0x45
   0F93 F0                  250 	movx	@dptr,a
                            251 ;	genPointerSet
                            252 ;     genFarPointerSet
   0F94 90 04 15            253 	mov	dptr,#(_main_uart_msg_1_1 + 0x000e)
   0F97 74 44               254 	mov	a,#0x44
   0F99 F0                  255 	movx	@dptr,a
                            256 ;	genPointerSet
                            257 ;     genFarPointerSet
   0F9A 90 04 16            258 	mov	dptr,#(_main_uart_msg_1_1 + 0x000f)
   0F9D 74 20               259 	mov	a,#0x20
   0F9F F0                  260 	movx	@dptr,a
                            261 ;	genPointerSet
                            262 ;     genFarPointerSet
   0FA0 90 04 17            263 	mov	dptr,#(_main_uart_msg_1_1 + 0x0010)
   0FA3 74 53               264 	mov	a,#0x53
   0FA5 F0                  265 	movx	@dptr,a
                            266 ;	genPointerSet
                            267 ;     genFarPointerSet
   0FA6 90 04 18            268 	mov	dptr,#(_main_uart_msg_1_1 + 0x0011)
   0FA9 74 65               269 	mov	a,#0x65
   0FAB F0                  270 	movx	@dptr,a
                            271 ;	genPointerSet
                            272 ;     genFarPointerSet
   0FAC 90 04 19            273 	mov	dptr,#(_main_uart_msg_1_1 + 0x0012)
   0FAF 74 71               274 	mov	a,#0x71
   0FB1 F0                  275 	movx	@dptr,a
                            276 ;	genPointerSet
                            277 ;     genFarPointerSet
   0FB2 90 04 1A            278 	mov	dptr,#(_main_uart_msg_1_1 + 0x0013)
   0FB5 74 75               279 	mov	a,#0x75
   0FB7 F0                  280 	movx	@dptr,a
                            281 ;	genPointerSet
                            282 ;     genFarPointerSet
   0FB8 90 04 1B            283 	mov	dptr,#(_main_uart_msg_1_1 + 0x0014)
   0FBB 74 65               284 	mov	a,#0x65
   0FBD F0                  285 	movx	@dptr,a
                            286 ;	genPointerSet
                            287 ;     genFarPointerSet
   0FBE 90 04 1C            288 	mov	dptr,#(_main_uart_msg_1_1 + 0x0015)
   0FC1 74 6E               289 	mov	a,#0x6E
   0FC3 F0                  290 	movx	@dptr,a
                            291 ;	genPointerSet
                            292 ;     genFarPointerSet
   0FC4 90 04 1D            293 	mov	dptr,#(_main_uart_msg_1_1 + 0x0016)
   0FC7 74 63               294 	mov	a,#0x63
   0FC9 F0                  295 	movx	@dptr,a
                            296 ;	genPointerSet
                            297 ;     genFarPointerSet
   0FCA 90 04 1E            298 	mov	dptr,#(_main_uart_msg_1_1 + 0x0017)
   0FCD 74 65               299 	mov	a,#0x65
   0FCF F0                  300 	movx	@dptr,a
                            301 ;	genPointerSet
                            302 ;     genFarPointerSet
   0FD0 90 04 1F            303 	mov	dptr,#(_main_uart_msg_1_1 + 0x0018)
   0FD3 74 20               304 	mov	a,#0x20
   0FD5 F0                  305 	movx	@dptr,a
                            306 ;	genPointerSet
                            307 ;     genFarPointerSet
   0FD6 90 04 20            308 	mov	dptr,#(_main_uart_msg_1_1 + 0x0019)
   0FD9 74 20               309 	mov	a,#0x20
   0FDB F0                  310 	movx	@dptr,a
                            311 ;	genPointerSet
                            312 ;     genFarPointerSet
   0FDC 90 04 21            313 	mov	dptr,#(_main_uart_msg_1_1 + 0x001a)
   0FDF 74 2A               314 	mov	a,#0x2A
   0FE1 F0                  315 	movx	@dptr,a
                            316 ;	genPointerSet
                            317 ;     genFarPointerSet
   0FE2 90 04 22            318 	mov	dptr,#(_main_uart_msg_1_1 + 0x001b)
   0FE5 74 2A               319 	mov	a,#0x2A
   0FE7 F0                  320 	movx	@dptr,a
                            321 ;	genPointerSet
                            322 ;     genFarPointerSet
   0FE8 90 04 23            323 	mov	dptr,#(_main_uart_msg_1_1 + 0x001c)
   0FEB 74 0A               324 	mov	a,#0x0A
   0FED F0                  325 	movx	@dptr,a
                            326 ;	genPointerSet
                            327 ;     genFarPointerSet
   0FEE 90 04 24            328 	mov	dptr,#(_main_uart_msg_1_1 + 0x001d)
   0FF1 74 0D               329 	mov	a,#0x0D
   0FF3 F0                  330 	movx	@dptr,a
                            331 ;	genPointerSet
                            332 ;     genFarPointerSet
   0FF4 90 04 25            333 	mov	dptr,#(_main_uart_msg_1_1 + 0x001e)
   0FF7 74 00               334 	mov	a,#0x00
   0FF9 F0                  335 	movx	@dptr,a
                    00BA    336 	C$main_org.c$58$1$0 ==.
                            337 ;	../main_org.c:58: const uint8_t linefeed[] = "\n\r";
                            338 ;	genPointerSet
                            339 ;     genFarPointerSet
   0FFA 90 04 26            340 	mov	dptr,#_main_linefeed_1_1
   0FFD 74 0A               341 	mov	a,#0x0A
   0FFF F0                  342 	movx	@dptr,a
                            343 ;	genPointerSet
                            344 ;     genFarPointerSet
   1000 90 04 27            345 	mov	dptr,#(_main_linefeed_1_1 + 0x0001)
   1003 74 0D               346 	mov	a,#0x0D
   1005 F0                  347 	movx	@dptr,a
                            348 ;	genPointerSet
                            349 ;     genFarPointerSet
   1006 90 04 28            350 	mov	dptr,#(_main_linefeed_1_1 + 0x0002)
   1009 74 00               351 	mov	a,#0x00
   100B F0                  352 	movx	@dptr,a
                    00CC    353 	C$main_org.c$65$1$1 ==.
                            354 ;	../main_org.c:65: UART_init( &g_stdio_uart, APB3_BASE_ADDRESS + COREUARTAPB_0, UART_9600_BAUD, DATA_8_BITS | NO_PARITY );
                            355 ;	genAssign
   100C 90 06 E2            356 	mov	dptr,#_UART_init_PARM_2
   100F 74 00               357 	mov	a,#0x00
   1011 F0                  358 	movx	@dptr,a
   1012 A3                  359 	inc	dptr
   1013 74 F0               360 	mov	a,#0xF0
   1015 F0                  361 	movx	@dptr,a
                            362 ;	genAssign
   1016 90 06 E4            363 	mov	dptr,#_UART_init_PARM_3
   1019 74 26               364 	mov	a,#0x26
   101B F0                  365 	movx	@dptr,a
   101C E4                  366 	clr	a
   101D A3                  367 	inc	dptr
   101E F0                  368 	movx	@dptr,a
                            369 ;	genAssign
   101F 90 06 E6            370 	mov	dptr,#_UART_init_PARM_4
   1022 74 01               371 	mov	a,#0x01
   1024 F0                  372 	movx	@dptr,a
                            373 ;	genCall
   1025 75 82 02            374 	mov	dpl,#_g_stdio_uart
   1028 75 83 04            375 	mov	dph,#(_g_stdio_uart >> 8)
   102B 75 F0 00            376 	mov	b,#0x00
   102E 12 28 45            377 	lcall	_UART_init
                    00F1    378 	C$main_org.c$67$1$1 ==.
                            379 ;	../main_org.c:67: WD_init( &g_wd, APB3_BASE_ADDRESS + COREWATCHDOG_0, WatchDog_COUNT, WD_PRESCALER_DIV_16 );
                            380 ;	genAssign
   1031 90 05 D9            381 	mov	dptr,#_WD_init_PARM_2
   1034 74 00               382 	mov	a,#0x00
   1036 F0                  383 	movx	@dptr,a
   1037 A3                  384 	inc	dptr
   1038 74 F3               385 	mov	a,#0xF3
   103A F0                  386 	movx	@dptr,a
                            387 ;	genAssign
   103B 90 05 DB            388 	mov	dptr,#_WD_init_PARM_3
   103E 74 E8               389 	mov	a,#0xE8
   1040 F0                  390 	movx	@dptr,a
   1041 A3                  391 	inc	dptr
   1042 74 03               392 	mov	a,#0x03
   1044 F0                  393 	movx	@dptr,a
   1045 A3                  394 	inc	dptr
   1046 74 00               395 	mov	a,#0x00
   1048 F0                  396 	movx	@dptr,a
   1049 A3                  397 	inc	dptr
   104A 74 00               398 	mov	a,#0x00
   104C F0                  399 	movx	@dptr,a
                            400 ;	genAssign
   104D 90 05 DF            401 	mov	dptr,#_WD_init_PARM_4
   1050 74 03               402 	mov	a,#0x03
   1052 F0                  403 	movx	@dptr,a
   1053 E4                  404 	clr	a
   1054 A3                  405 	inc	dptr
   1055 F0                  406 	movx	@dptr,a
   1056 A3                  407 	inc	dptr
   1057 F0                  408 	movx	@dptr,a
   1058 A3                  409 	inc	dptr
   1059 F0                  410 	movx	@dptr,a
                            411 ;	genCall
   105A 75 82 05            412 	mov	dpl,#_g_wd
   105D 75 83 04            413 	mov	dph,#(_g_wd >> 8)
   1060 75 F0 00            414 	mov	b,#0x00
   1063 12 1E EA            415 	lcall	_WD_init
                    0126    416 	C$main_org.c$68$1$1 ==.
                            417 ;	../main_org.c:68: WD_disable( &g_wd );
                            418 ;	genCall
   1066 75 82 05            419 	mov	dpl,#_g_wd
   1069 75 83 04            420 	mov	dph,#(_g_wd >> 8)
   106C 75 F0 00            421 	mov	b,#0x00
   106F 12 23 C8            422 	lcall	_WD_disable
                    0132    423 	C$main_org.c$70$1$1 ==.
                            424 ;	../main_org.c:70: GPIO_init( &g_gpio,	APB3_BASE_ADDRESS + COREGPIO_0, GPIO_APB_32_BITS_BUS );
                            425 ;	genAssign
   1072 90 0B 2B            426 	mov	dptr,#_GPIO_init_PARM_2
   1075 74 00               427 	mov	a,#0x00
   1077 F0                  428 	movx	@dptr,a
   1078 A3                  429 	inc	dptr
   1079 74 F1               430 	mov	a,#0xF1
   107B F0                  431 	movx	@dptr,a
                            432 ;	genAssign
   107C 90 0B 2D            433 	mov	dptr,#_GPIO_init_PARM_3
   107F 74 02               434 	mov	a,#0x02
   1081 F0                  435 	movx	@dptr,a
                            436 ;	genCall
   1082 75 82 FF            437 	mov	dpl,#_g_gpio
   1085 75 83 03            438 	mov	dph,#(_g_gpio >> 8)
   1088 75 F0 00            439 	mov	b,#0x00
   108B 12 51 2F            440 	lcall	_GPIO_init
                    014E    441 	C$main_org.c$74$1$1 ==.
                            442 ;	../main_org.c:74: GPIO_config( &g_gpio, LED_D0, GPIO_OUTPUT_MODE );
                            443 ;	genAssign
   108E 90 0B 54            444 	mov	dptr,#_GPIO_config_PARM_2
   1091 74 00               445 	mov	a,#0x00
   1093 F0                  446 	movx	@dptr,a
                            447 ;	genAssign
   1094 90 0B 55            448 	mov	dptr,#_GPIO_config_PARM_3
   1097 74 05               449 	mov	a,#0x05
   1099 F0                  450 	movx	@dptr,a
   109A E4                  451 	clr	a
   109B A3                  452 	inc	dptr
   109C F0                  453 	movx	@dptr,a
   109D A3                  454 	inc	dptr
   109E F0                  455 	movx	@dptr,a
   109F A3                  456 	inc	dptr
   10A0 F0                  457 	movx	@dptr,a
                            458 ;	genCall
   10A1 75 82 FF            459 	mov	dpl,#_g_gpio
   10A4 75 83 03            460 	mov	dph,#(_g_gpio >> 8)
   10A7 75 F0 00            461 	mov	b,#0x00
   10AA 12 54 33            462 	lcall	_GPIO_config
                    016D    463 	C$main_org.c$76$1$1 ==.
                            464 ;	../main_org.c:76: GPIO_config( &g_gpio, LED_D1, GPIO_OUTPUT_MODE );
                            465 ;	genAssign
   10AD 90 0B 54            466 	mov	dptr,#_GPIO_config_PARM_2
   10B0 74 01               467 	mov	a,#0x01
   10B2 F0                  468 	movx	@dptr,a
                            469 ;	genAssign
   10B3 90 0B 55            470 	mov	dptr,#_GPIO_config_PARM_3
   10B6 74 05               471 	mov	a,#0x05
   10B8 F0                  472 	movx	@dptr,a
   10B9 E4                  473 	clr	a
   10BA A3                  474 	inc	dptr
   10BB F0                  475 	movx	@dptr,a
   10BC A3                  476 	inc	dptr
   10BD F0                  477 	movx	@dptr,a
   10BE A3                  478 	inc	dptr
   10BF F0                  479 	movx	@dptr,a
                            480 ;	genCall
   10C0 75 82 FF            481 	mov	dpl,#_g_gpio
   10C3 75 83 03            482 	mov	dph,#(_g_gpio >> 8)
   10C6 75 F0 00            483 	mov	b,#0x00
   10C9 12 54 33            484 	lcall	_GPIO_config
                    018C    485 	C$main_org.c$79$1$1 ==.
                            486 ;	../main_org.c:79: display_help();
                            487 ;	genCall
   10CC 12 00 62            488 	lcall	_display_help
                    018F    489 	C$main_org.c$80$1$1 ==.
                            490 ;	../main_org.c:80: display_prompt();
                            491 ;	genCall
   10CF 12 06 BD            492 	lcall	_display_prompt
                    0192    493 	C$main_org.c$87$1$1 ==.
                            494 ;	../main_org.c:87: for ( sram_addr =0 ; sram_addr < 256 ; sram_addr++) {
                            495 ;	genAssign
   10D2 90 04 29            496 	mov	dptr,#_main_sram_addr_1_1
   10D5 E4                  497 	clr	a
   10D6 F0                  498 	movx	@dptr,a
   10D7 A3                  499 	inc	dptr
   10D8 F0                  500 	movx	@dptr,a
   10D9                     501 00106$:
                            502 ;	genAssign
   10D9 90 04 29            503 	mov	dptr,#_main_sram_addr_1_1
   10DC E0                  504 	movx	a,@dptr
   10DD FA                  505 	mov	r2,a
   10DE A3                  506 	inc	dptr
   10DF E0                  507 	movx	a,@dptr
   10E0 FB                  508 	mov	r3,a
                            509 ;	genCmpLt
                            510 ;	genCmp
   10E1 C3                  511 	clr	c
   10E2 EB                  512 	mov	a,r3
   10E3 94 01               513 	subb	a,#0x01
                            514 ;	genIfxJump
   10E5 40 03               515 	jc	00122$
   10E7 02 11 1B            516 	ljmp	00109$
   10EA                     517 00122$:
                    01AA    518 	C$main_org.c$89$2$2 ==.
                            519 ;	../main_org.c:89: HW_set_16bit_reg((APB3_BASE_ADDRESS + COREAPBSRAM_0)+ sram_addr, value );
                            520 ;	genPlus
                            521 ;	genPlusIncr
                            522 ;     genPlus shortcut
   10EA 8A 04               523 	mov	ar4,r2
   10EC 74 F5               524 	mov	a,#0xF5
   10EE 25 03               525 	add	a,ar3
   10F0 FD                  526 	mov	r5,a
                            527 ;	genAssign
   10F1 90 05 9A            528 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   10F4 74 34               529 	mov	a,#0x34
   10F6 F0                  530 	movx	@dptr,a
   10F7 A3                  531 	inc	dptr
   10F8 74 12               532 	mov	a,#0x12
   10FA F0                  533 	movx	@dptr,a
                            534 ;	genCall
   10FB 8C 82               535 	mov	dpl,r4
   10FD 8D 83               536 	mov	dph,r5
   10FF C0 02               537 	push	ar2
   1101 C0 03               538 	push	ar3
   1103 12 1B C7            539 	lcall	_HW_set_16bit_reg
   1106 D0 03               540 	pop	ar3
   1108 D0 02               541 	pop	ar2
                    01CA    542 	C$main_org.c$87$1$1 ==.
                            543 ;	../main_org.c:87: for ( sram_addr =0 ; sram_addr < 256 ; sram_addr++) {
                            544 ;	genPlus
   110A 90 04 29            545 	mov	dptr,#_main_sram_addr_1_1
                            546 ;	genPlusIncr
   110D 74 01               547 	mov	a,#0x01
   110F 25 02               548 	add	a,ar2
   1111 F0                  549 	movx	@dptr,a
   1112 74 00               550 	mov	a,#0x00
   1114 35 03               551 	addc	a,ar3
   1116 A3                  552 	inc	dptr
   1117 F0                  553 	movx	@dptr,a
   1118 02 10 D9            554 	ljmp	00106$
   111B                     555 00109$:
                    01DB    556 	C$main_org.c$92$1$1 ==.
                            557 ;	../main_org.c:92: for ( sram_addr =0 ; sram_addr < 256 ; sram_addr++) {
                            558 ;	genAssign
   111B 90 04 29            559 	mov	dptr,#_main_sram_addr_1_1
   111E E4                  560 	clr	a
   111F F0                  561 	movx	@dptr,a
   1120 A3                  562 	inc	dptr
   1121 F0                  563 	movx	@dptr,a
   1122                     564 00110$:
                            565 ;	genAssign
   1122 90 04 29            566 	mov	dptr,#_main_sram_addr_1_1
   1125 E0                  567 	movx	a,@dptr
   1126 FA                  568 	mov	r2,a
   1127 A3                  569 	inc	dptr
   1128 E0                  570 	movx	a,@dptr
   1129 FB                  571 	mov	r3,a
                            572 ;	genCmpLt
                            573 ;	genCmp
   112A C3                  574 	clr	c
   112B EB                  575 	mov	a,r3
   112C 94 01               576 	subb	a,#0x01
                            577 ;	genIfxJump
   112E 40 03               578 	jc	00123$
   1130 02 11 5A            579 	ljmp	00104$
   1133                     580 00123$:
                    01F3    581 	C$main_org.c$94$2$3 ==.
                            582 ;	../main_org.c:94: testvar = HW_get_16bit_reg((APB3_BASE_ADDRESS + COREAPBSRAM_0)+ sram_addr);
                            583 ;	genPlus
                            584 ;	genPlusIncr
                            585 ;     genPlus shortcut
   1133 8A 04               586 	mov	ar4,r2
   1135 74 F5               587 	mov	a,#0xF5
   1137 25 03               588 	add	a,ar3
   1139 FD                  589 	mov	r5,a
                            590 ;	genCall
   113A 8C 82               591 	mov	dpl,r4
   113C 8D 83               592 	mov	dph,r5
   113E C0 02               593 	push	ar2
   1140 C0 03               594 	push	ar3
   1142 12 1B DB            595 	lcall	_HW_get_16bit_reg
   1145 D0 03               596 	pop	ar3
   1147 D0 02               597 	pop	ar2
                    0209    598 	C$main_org.c$92$1$1 ==.
                            599 ;	../main_org.c:92: for ( sram_addr =0 ; sram_addr < 256 ; sram_addr++) {
                            600 ;	genPlus
   1149 90 04 29            601 	mov	dptr,#_main_sram_addr_1_1
                            602 ;	genPlusIncr
   114C 74 01               603 	mov	a,#0x01
   114E 25 02               604 	add	a,ar2
   1150 F0                  605 	movx	@dptr,a
   1151 74 00               606 	mov	a,#0x00
   1153 35 03               607 	addc	a,ar3
   1155 A3                  608 	inc	dptr
   1156 F0                  609 	movx	@dptr,a
   1157 02 11 22            610 	ljmp	00110$
                    021A    611 	C$main_org.c$100$1$1 ==.
                            612 ;	../main_org.c:100: while( 1 )
   115A                     613 00104$:
                    021A    614 	C$main_org.c$109$2$4 ==.
                            615 ;	../main_org.c:109: rx_size = UART_get_rx(&g_stdio_uart, &rx_data[1],1);
                            616 ;	genCast
   115A 90 08 AD            617 	mov	dptr,#_UART_get_rx_PARM_2
   115D 74 2C               618 	mov	a,#(_main_rx_data_2_4 + 0x0001)
   115F F0                  619 	movx	@dptr,a
   1160 A3                  620 	inc	dptr
   1161 74 04               621 	mov	a,#((_main_rx_data_2_4 + 0x0001) >> 8)
   1163 F0                  622 	movx	@dptr,a
   1164 A3                  623 	inc	dptr
   1165 74 00               624 	mov	a,#0x0
   1167 F0                  625 	movx	@dptr,a
                            626 ;	genAssign
   1168 90 08 B0            627 	mov	dptr,#_UART_get_rx_PARM_3
   116B 74 01               628 	mov	a,#0x01
   116D F0                  629 	movx	@dptr,a
   116E E4                  630 	clr	a
   116F A3                  631 	inc	dptr
   1170 F0                  632 	movx	@dptr,a
                            633 ;	genCall
   1171 75 82 02            634 	mov	dpl,#_g_stdio_uart
   1174 75 83 04            635 	mov	dph,#(_g_stdio_uart >> 8)
   1177 75 F0 00            636 	mov	b,#0x00
   117A 12 38 F7            637 	lcall	_UART_get_rx
   117D AA 82               638 	mov	r2,dpl
   117F AB 83               639 	mov	r3,dph
                            640 ;	genCast
                    0241    641 	C$main_org.c$111$2$4 ==.
                            642 ;	../main_org.c:111: if ( rx_size == 1){
                            643 ;	genCmpEq
                            644 ;	gencjneshort
   1181 BA 01 02            645 	cjne	r2,#0x01,00124$
   1184 80 03               646 	sjmp	00125$
   1186                     647 00124$:
   1186 02 11 5A            648 	ljmp	00104$
   1189                     649 00125$:
                    0249    650 	C$main_org.c$113$3$5 ==.
                            651 ;	../main_org.c:113: key = rx_data[1];
                            652 ;	genPointerGet
                            653 ;	genFarPointerGet
   1189 90 04 2C            654 	mov	dptr,#(_main_rx_data_2_4 + 0x0001)
   118C E0                  655 	movx	a,@dptr
   118D FA                  656 	mov	r2,a
                            657 ;	genAssign
   118E 90 03 F1            658 	mov	dptr,#_key
   1191 EA                  659 	mov	a,r2
   1192 F0                  660 	movx	@dptr,a
                    0253    661 	C$main_org.c$114$3$5 ==.
                            662 ;	../main_org.c:114: process_uart_data(key);
                            663 ;	genCall
   1193 8A 82               664 	mov	dpl,r2
   1195 12 0C 92            665 	lcall	_process_uart_data
   1198 02 11 5A            666 	ljmp	00104$
   119B                     667 00114$:
                    025B    668 	C$main_org.c$122$1$1 ==.
                    025B    669 	XG$main$0$0 ==.
   119B 22                  670 	ret
                            671 ;------------------------------------------------------------
                            672 ;Allocation info for local variables in function 'wait'
                            673 ;------------------------------------------------------------
                            674 ;time_in_ms                Allocated with name '_wait_time_in_ms_1_1'
                            675 ;i                         Allocated with name '_wait_i_1_1'
                            676 ;------------------------------------------------------------
                    025C    677 	G$wait$0$0 ==.
                    025C    678 	C$main_org.c$126$1$1 ==.
                            679 ;	../main_org.c:126: void wait(int time_in_ms)
                            680 ;	-----------------------------------------
                            681 ;	 function wait
                            682 ;	-----------------------------------------
   119C                     683 _wait:
                            684 ;	genReceive
   119C AA 83               685 	mov	r2,dph
   119E E5 82               686 	mov	a,dpl
   11A0 90 04 2D            687 	mov	dptr,#_wait_time_in_ms_1_1
   11A3 F0                  688 	movx	@dptr,a
   11A4 A3                  689 	inc	dptr
   11A5 EA                  690 	mov	a,r2
   11A6 F0                  691 	movx	@dptr,a
                    0267    692 	C$main_org.c$131$1$1 ==.
                            693 ;	../main_org.c:131: for (i=0; i < time_in_ms*10000; i++)
                            694 ;	genAssign
   11A7 90 04 2F            695 	mov	dptr,#_wait_i_1_1
   11AA E4                  696 	clr	a
   11AB F0                  697 	movx	@dptr,a
   11AC A3                  698 	inc	dptr
   11AD F0                  699 	movx	@dptr,a
                            700 ;	genAssign
   11AE 90 04 2D            701 	mov	dptr,#_wait_time_in_ms_1_1
   11B1 E0                  702 	movx	a,@dptr
   11B2 FA                  703 	mov	r2,a
   11B3 A3                  704 	inc	dptr
   11B4 E0                  705 	movx	a,@dptr
   11B5 FB                  706 	mov	r3,a
                            707 ;	genAssign
   11B6 90 0D 95            708 	mov	dptr,#__mulint_PARM_2
   11B9 EA                  709 	mov	a,r2
   11BA F0                  710 	movx	@dptr,a
   11BB A3                  711 	inc	dptr
   11BC EB                  712 	mov	a,r3
   11BD F0                  713 	movx	@dptr,a
                            714 ;	genCall
   11BE 75 82 10            715 	mov	dpl,#0x10
   11C1 75 83 27            716 	mov	dph,#0x27
   11C4 12 70 30            717 	lcall	__mulint
   11C7 AA 82               718 	mov	r2,dpl
   11C9 AB 83               719 	mov	r3,dph
   11CB                     720 00101$:
                            721 ;	genAssign
   11CB 90 04 2F            722 	mov	dptr,#_wait_i_1_1
   11CE E0                  723 	movx	a,@dptr
   11CF FC                  724 	mov	r4,a
   11D0 A3                  725 	inc	dptr
   11D1 E0                  726 	movx	a,@dptr
   11D2 FD                  727 	mov	r5,a
                            728 ;	genCmpLt
                            729 ;	genCmp
   11D3 C3                  730 	clr	c
   11D4 EC                  731 	mov	a,r4
   11D5 9A                  732 	subb	a,r2
   11D6 ED                  733 	mov	a,r5
   11D7 64 80               734 	xrl	a,#0x80
   11D9 8B F0               735 	mov	b,r3
   11DB 63 F0 80            736 	xrl	b,#0x80
   11DE 95 F0               737 	subb	a,b
                            738 ;	genIfxJump
   11E0 40 03               739 	jc	00109$
   11E2 02 11 F6            740 	ljmp	00105$
   11E5                     741 00109$:
                            742 ;	genPlus
   11E5 90 04 2F            743 	mov	dptr,#_wait_i_1_1
                            744 ;	genPlusIncr
   11E8 74 01               745 	mov	a,#0x01
   11EA 25 04               746 	add	a,ar4
   11EC F0                  747 	movx	@dptr,a
   11ED 74 00               748 	mov	a,#0x00
   11EF 35 05               749 	addc	a,ar5
   11F1 A3                  750 	inc	dptr
   11F2 F0                  751 	movx	@dptr,a
   11F3 02 11 CB            752 	ljmp	00101$
   11F6                     753 00105$:
                    02B6    754 	C$main_org.c$136$1$1 ==.
                    02B6    755 	XG$wait$0$0 ==.
   11F6 22                  756 	ret
                            757 	.area CSEG    (CODE)
                            758 	.area CONST   (CODE)
                            759 	.area XINIT   (CODE)
                            760 	.area CABS    (ABS,CODE)
