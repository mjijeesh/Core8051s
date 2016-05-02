                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 20 13:16:34 2013
                              5 ;--------------------------------------------------------
                              6 	.module ___main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ascii
                             13 	.globl _main
                             14 	.globl _CY
                             15 	.globl _AC
                             16 	.globl _F0
                             17 	.globl _RS1
                             18 	.globl _RS0
                             19 	.globl _OV
                             20 	.globl _F1
                             21 	.globl _P
                             22 	.globl _PS
                             23 	.globl _PT1
                             24 	.globl _PX1
                             25 	.globl _PT0
                             26 	.globl _PX0
                             27 	.globl _RD
                             28 	.globl _WR
                             29 	.globl _T1
                             30 	.globl _T0
                             31 	.globl _INT1
                             32 	.globl _INT0
                             33 	.globl _TXD
                             34 	.globl _RXD
                             35 	.globl _P3_7
                             36 	.globl _P3_6
                             37 	.globl _P3_5
                             38 	.globl _P3_4
                             39 	.globl _P3_3
                             40 	.globl _P3_2
                             41 	.globl _P3_1
                             42 	.globl _P3_0
                             43 	.globl _EA
                             44 	.globl _ES
                             45 	.globl _ET1
                             46 	.globl _EX1
                             47 	.globl _ET0
                             48 	.globl _EX0
                             49 	.globl _P2_7
                             50 	.globl _P2_6
                             51 	.globl _P2_5
                             52 	.globl _P2_4
                             53 	.globl _P2_3
                             54 	.globl _P2_2
                             55 	.globl _P2_1
                             56 	.globl _P2_0
                             57 	.globl _SM0
                             58 	.globl _SM1
                             59 	.globl _SM2
                             60 	.globl _REN
                             61 	.globl _TB8
                             62 	.globl _RB8
                             63 	.globl _TI
                             64 	.globl _RI
                             65 	.globl _P1_7
                             66 	.globl _P1_6
                             67 	.globl _P1_5
                             68 	.globl _P1_4
                             69 	.globl _P1_3
                             70 	.globl _P1_2
                             71 	.globl _P1_1
                             72 	.globl _P1_0
                             73 	.globl _TF1
                             74 	.globl _TR1
                             75 	.globl _TF0
                             76 	.globl _TR0
                             77 	.globl _IE1
                             78 	.globl _IT1
                             79 	.globl _IE0
                             80 	.globl _IT0
                             81 	.globl _P0_7
                             82 	.globl _P0_6
                             83 	.globl _P0_5
                             84 	.globl _P0_4
                             85 	.globl _P0_3
                             86 	.globl _P0_2
                             87 	.globl _P0_1
                             88 	.globl _P0_0
                             89 	.globl _B
                             90 	.globl _ACC
                             91 	.globl _PSW
                             92 	.globl _IP
                             93 	.globl _P3
                             94 	.globl _IE
                             95 	.globl _P2
                             96 	.globl _SBUF
                             97 	.globl _SCON
                             98 	.globl _P1
                             99 	.globl _TH1
                            100 	.globl _TH0
                            101 	.globl _TL1
                            102 	.globl _TL0
                            103 	.globl _TMOD
                            104 	.globl _TCON
                            105 	.globl _PCON
                            106 	.globl _DPH
                            107 	.globl _DPL
                            108 	.globl _SP
                            109 	.globl _P0
                            110 	.globl _UART0_BASE_ADDR
                            111 	.globl _GPIO_BASE_ADDR
                            112 	.globl _uart_config
                            113 	.globl _uartWaitXmt
                            114 	.globl _uartWaitRxd
                            115 	.globl _uart_getchar
                            116 	.globl _uart_putchar
                            117 	.globl _printf
                            118 ;--------------------------------------------------------
                            119 ; special function registers
                            120 ;--------------------------------------------------------
                            121 	.area RSEG    (DATA)
                    0080    122 G$P0$0$0 == 0x0080
                    0080    123 _P0	=	0x0080
                    0081    124 G$SP$0$0 == 0x0081
                    0081    125 _SP	=	0x0081
                    0082    126 G$DPL$0$0 == 0x0082
                    0082    127 _DPL	=	0x0082
                    0083    128 G$DPH$0$0 == 0x0083
                    0083    129 _DPH	=	0x0083
                    0087    130 G$PCON$0$0 == 0x0087
                    0087    131 _PCON	=	0x0087
                    0088    132 G$TCON$0$0 == 0x0088
                    0088    133 _TCON	=	0x0088
                    0089    134 G$TMOD$0$0 == 0x0089
                    0089    135 _TMOD	=	0x0089
                    008A    136 G$TL0$0$0 == 0x008a
                    008A    137 _TL0	=	0x008a
                    008B    138 G$TL1$0$0 == 0x008b
                    008B    139 _TL1	=	0x008b
                    008C    140 G$TH0$0$0 == 0x008c
                    008C    141 _TH0	=	0x008c
                    008D    142 G$TH1$0$0 == 0x008d
                    008D    143 _TH1	=	0x008d
                    0090    144 G$P1$0$0 == 0x0090
                    0090    145 _P1	=	0x0090
                    0098    146 G$SCON$0$0 == 0x0098
                    0098    147 _SCON	=	0x0098
                    0099    148 G$SBUF$0$0 == 0x0099
                    0099    149 _SBUF	=	0x0099
                    00A0    150 G$P2$0$0 == 0x00a0
                    00A0    151 _P2	=	0x00a0
                    00A8    152 G$IE$0$0 == 0x00a8
                    00A8    153 _IE	=	0x00a8
                    00B0    154 G$P3$0$0 == 0x00b0
                    00B0    155 _P3	=	0x00b0
                    00B8    156 G$IP$0$0 == 0x00b8
                    00B8    157 _IP	=	0x00b8
                    00D0    158 G$PSW$0$0 == 0x00d0
                    00D0    159 _PSW	=	0x00d0
                    00E0    160 G$ACC$0$0 == 0x00e0
                    00E0    161 _ACC	=	0x00e0
                    00F0    162 G$B$0$0 == 0x00f0
                    00F0    163 _B	=	0x00f0
                            164 ;--------------------------------------------------------
                            165 ; special function bits
                            166 ;--------------------------------------------------------
                            167 	.area RSEG    (DATA)
                    0080    168 G$P0_0$0$0 == 0x0080
                    0080    169 _P0_0	=	0x0080
                    0081    170 G$P0_1$0$0 == 0x0081
                    0081    171 _P0_1	=	0x0081
                    0082    172 G$P0_2$0$0 == 0x0082
                    0082    173 _P0_2	=	0x0082
                    0083    174 G$P0_3$0$0 == 0x0083
                    0083    175 _P0_3	=	0x0083
                    0084    176 G$P0_4$0$0 == 0x0084
                    0084    177 _P0_4	=	0x0084
                    0085    178 G$P0_5$0$0 == 0x0085
                    0085    179 _P0_5	=	0x0085
                    0086    180 G$P0_6$0$0 == 0x0086
                    0086    181 _P0_6	=	0x0086
                    0087    182 G$P0_7$0$0 == 0x0087
                    0087    183 _P0_7	=	0x0087
                    0088    184 G$IT0$0$0 == 0x0088
                    0088    185 _IT0	=	0x0088
                    0089    186 G$IE0$0$0 == 0x0089
                    0089    187 _IE0	=	0x0089
                    008A    188 G$IT1$0$0 == 0x008a
                    008A    189 _IT1	=	0x008a
                    008B    190 G$IE1$0$0 == 0x008b
                    008B    191 _IE1	=	0x008b
                    008C    192 G$TR0$0$0 == 0x008c
                    008C    193 _TR0	=	0x008c
                    008D    194 G$TF0$0$0 == 0x008d
                    008D    195 _TF0	=	0x008d
                    008E    196 G$TR1$0$0 == 0x008e
                    008E    197 _TR1	=	0x008e
                    008F    198 G$TF1$0$0 == 0x008f
                    008F    199 _TF1	=	0x008f
                    0090    200 G$P1_0$0$0 == 0x0090
                    0090    201 _P1_0	=	0x0090
                    0091    202 G$P1_1$0$0 == 0x0091
                    0091    203 _P1_1	=	0x0091
                    0092    204 G$P1_2$0$0 == 0x0092
                    0092    205 _P1_2	=	0x0092
                    0093    206 G$P1_3$0$0 == 0x0093
                    0093    207 _P1_3	=	0x0093
                    0094    208 G$P1_4$0$0 == 0x0094
                    0094    209 _P1_4	=	0x0094
                    0095    210 G$P1_5$0$0 == 0x0095
                    0095    211 _P1_5	=	0x0095
                    0096    212 G$P1_6$0$0 == 0x0096
                    0096    213 _P1_6	=	0x0096
                    0097    214 G$P1_7$0$0 == 0x0097
                    0097    215 _P1_7	=	0x0097
                    0098    216 G$RI$0$0 == 0x0098
                    0098    217 _RI	=	0x0098
                    0099    218 G$TI$0$0 == 0x0099
                    0099    219 _TI	=	0x0099
                    009A    220 G$RB8$0$0 == 0x009a
                    009A    221 _RB8	=	0x009a
                    009B    222 G$TB8$0$0 == 0x009b
                    009B    223 _TB8	=	0x009b
                    009C    224 G$REN$0$0 == 0x009c
                    009C    225 _REN	=	0x009c
                    009D    226 G$SM2$0$0 == 0x009d
                    009D    227 _SM2	=	0x009d
                    009E    228 G$SM1$0$0 == 0x009e
                    009E    229 _SM1	=	0x009e
                    009F    230 G$SM0$0$0 == 0x009f
                    009F    231 _SM0	=	0x009f
                    00A0    232 G$P2_0$0$0 == 0x00a0
                    00A0    233 _P2_0	=	0x00a0
                    00A1    234 G$P2_1$0$0 == 0x00a1
                    00A1    235 _P2_1	=	0x00a1
                    00A2    236 G$P2_2$0$0 == 0x00a2
                    00A2    237 _P2_2	=	0x00a2
                    00A3    238 G$P2_3$0$0 == 0x00a3
                    00A3    239 _P2_3	=	0x00a3
                    00A4    240 G$P2_4$0$0 == 0x00a4
                    00A4    241 _P2_4	=	0x00a4
                    00A5    242 G$P2_5$0$0 == 0x00a5
                    00A5    243 _P2_5	=	0x00a5
                    00A6    244 G$P2_6$0$0 == 0x00a6
                    00A6    245 _P2_6	=	0x00a6
                    00A7    246 G$P2_7$0$0 == 0x00a7
                    00A7    247 _P2_7	=	0x00a7
                    00A8    248 G$EX0$0$0 == 0x00a8
                    00A8    249 _EX0	=	0x00a8
                    00A9    250 G$ET0$0$0 == 0x00a9
                    00A9    251 _ET0	=	0x00a9
                    00AA    252 G$EX1$0$0 == 0x00aa
                    00AA    253 _EX1	=	0x00aa
                    00AB    254 G$ET1$0$0 == 0x00ab
                    00AB    255 _ET1	=	0x00ab
                    00AC    256 G$ES$0$0 == 0x00ac
                    00AC    257 _ES	=	0x00ac
                    00AF    258 G$EA$0$0 == 0x00af
                    00AF    259 _EA	=	0x00af
                    00B0    260 G$P3_0$0$0 == 0x00b0
                    00B0    261 _P3_0	=	0x00b0
                    00B1    262 G$P3_1$0$0 == 0x00b1
                    00B1    263 _P3_1	=	0x00b1
                    00B2    264 G$P3_2$0$0 == 0x00b2
                    00B2    265 _P3_2	=	0x00b2
                    00B3    266 G$P3_3$0$0 == 0x00b3
                    00B3    267 _P3_3	=	0x00b3
                    00B4    268 G$P3_4$0$0 == 0x00b4
                    00B4    269 _P3_4	=	0x00b4
                    00B5    270 G$P3_5$0$0 == 0x00b5
                    00B5    271 _P3_5	=	0x00b5
                    00B6    272 G$P3_6$0$0 == 0x00b6
                    00B6    273 _P3_6	=	0x00b6
                    00B7    274 G$P3_7$0$0 == 0x00b7
                    00B7    275 _P3_7	=	0x00b7
                    00B0    276 G$RXD$0$0 == 0x00b0
                    00B0    277 _RXD	=	0x00b0
                    00B1    278 G$TXD$0$0 == 0x00b1
                    00B1    279 _TXD	=	0x00b1
                    00B2    280 G$INT0$0$0 == 0x00b2
                    00B2    281 _INT0	=	0x00b2
                    00B3    282 G$INT1$0$0 == 0x00b3
                    00B3    283 _INT1	=	0x00b3
                    00B4    284 G$T0$0$0 == 0x00b4
                    00B4    285 _T0	=	0x00b4
                    00B5    286 G$T1$0$0 == 0x00b5
                    00B5    287 _T1	=	0x00b5
                    00B6    288 G$WR$0$0 == 0x00b6
                    00B6    289 _WR	=	0x00b6
                    00B7    290 G$RD$0$0 == 0x00b7
                    00B7    291 _RD	=	0x00b7
                    00B8    292 G$PX0$0$0 == 0x00b8
                    00B8    293 _PX0	=	0x00b8
                    00B9    294 G$PT0$0$0 == 0x00b9
                    00B9    295 _PT0	=	0x00b9
                    00BA    296 G$PX1$0$0 == 0x00ba
                    00BA    297 _PX1	=	0x00ba
                    00BB    298 G$PT1$0$0 == 0x00bb
                    00BB    299 _PT1	=	0x00bb
                    00BC    300 G$PS$0$0 == 0x00bc
                    00BC    301 _PS	=	0x00bc
                    00D0    302 G$P$0$0 == 0x00d0
                    00D0    303 _P	=	0x00d0
                    00D1    304 G$F1$0$0 == 0x00d1
                    00D1    305 _F1	=	0x00d1
                    00D2    306 G$OV$0$0 == 0x00d2
                    00D2    307 _OV	=	0x00d2
                    00D3    308 G$RS0$0$0 == 0x00d3
                    00D3    309 _RS0	=	0x00d3
                    00D4    310 G$RS1$0$0 == 0x00d4
                    00D4    311 _RS1	=	0x00d4
                    00D5    312 G$F0$0$0 == 0x00d5
                    00D5    313 _F0	=	0x00d5
                    00D6    314 G$AC$0$0 == 0x00d6
                    00D6    315 _AC	=	0x00d6
                    00D7    316 G$CY$0$0 == 0x00d7
                    00D7    317 _CY	=	0x00d7
                            318 ;--------------------------------------------------------
                            319 ; overlayable register banks
                            320 ;--------------------------------------------------------
                            321 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     322 	.ds 8
                            323 ;--------------------------------------------------------
                            324 ; internal ram data
                            325 ;--------------------------------------------------------
                            326 	.area DSEG    (DATA)
                            327 ;--------------------------------------------------------
                            328 ; overlayable items in internal ram 
                            329 ;--------------------------------------------------------
                            330 	.area OSEG    (OVR,DATA)
                            331 ;--------------------------------------------------------
                            332 ; Stack segment in internal ram 
                            333 ;--------------------------------------------------------
                            334 	.area	SSEG	(DATA)
   0008                     335 __start__stack:
   0008                     336 	.ds	1
                            337 
                            338 ;--------------------------------------------------------
                            339 ; indirectly addressable internal ram data
                            340 ;--------------------------------------------------------
                            341 	.area ISEG    (DATA)
                            342 ;--------------------------------------------------------
                            343 ; absolute internal ram data
                            344 ;--------------------------------------------------------
                            345 	.area IABS    (ABS,DATA)
                            346 	.area IABS    (ABS,DATA)
                            347 ;--------------------------------------------------------
                            348 ; bit data
                            349 ;--------------------------------------------------------
                            350 	.area BSEG    (BIT)
                            351 ;--------------------------------------------------------
                            352 ; paged external ram data
                            353 ;--------------------------------------------------------
                            354 	.area PSEG    (PAG,XDATA)
                            355 ;--------------------------------------------------------
                            356 ; external ram data
                            357 ;--------------------------------------------------------
                            358 	.area XSEG    (XDATA)
                    0000    359 Lmain$ram_buffer$1$1==.
   0000                     360 _main_ram_buffer_1_1:
   0000                     361 	.ds 128
                    0080    362 Lmain$i$1$1==.
   0080                     363 _main_i_1_1:
   0080                     364 	.ds 1
                    0081    365 Lmain$k$1$1==.
   0081                     366 _main_k_1_1:
   0081                     367 	.ds 1
                    0082    368 Luart_config$baudRate$1$1==.
   0082                     369 _uart_config_baudRate_1_1:
   0082                     370 	.ds 1
                    0083    371 Luart_putchar$c$1$1==.
   0083                     372 _uart_putchar_c_1_1:
   0083                     373 	.ds 1
                    0084    374 Lprintf$str$1$1==.
   0084                     375 _printf_str_1_1:
   0084                     376 	.ds 3
                    0087    377 Lprintf$c$1$1==.
   0087                     378 _printf_c_1_1:
   0087                     379 	.ds 1
                            380 ;--------------------------------------------------------
                            381 ; external initialized ram data
                            382 ;--------------------------------------------------------
                            383 	.area XISEG   (XDATA)
                    0000    384 G$GPIO_BASE_ADDR$0$0==.
   0088                     385 _GPIO_BASE_ADDR::
   0088                     386 	.ds 2
                    0002    387 G$UART0_BASE_ADDR$0$0==.
   008A                     388 _UART0_BASE_ADDR::
   008A                     389 	.ds 2
                            390 	.area HOME    (CODE)
                            391 	.area GSINIT0 (CODE)
                            392 	.area GSINIT1 (CODE)
                            393 	.area GSINIT2 (CODE)
                            394 	.area GSINIT3 (CODE)
                            395 	.area GSINIT4 (CODE)
                            396 	.area GSINIT5 (CODE)
                            397 	.area GSINIT  (CODE)
                            398 	.area GSFINAL (CODE)
                            399 	.area CSEG    (CODE)
                            400 ;--------------------------------------------------------
                            401 ; interrupt vector 
                            402 ;--------------------------------------------------------
                            403 	.area HOME    (CODE)
   0000                     404 __interrupt_vect:
   0000 02 00 08            405 	ljmp	__sdcc_gsinit_startup
                            406 ;--------------------------------------------------------
                            407 ; global & static initialisations
                            408 ;--------------------------------------------------------
                            409 	.area HOME    (CODE)
                            410 	.area GSINIT  (CODE)
                            411 	.area GSFINAL (CODE)
                            412 	.area GSINIT  (CODE)
                            413 	.globl __sdcc_gsinit_startup
                            414 	.globl __sdcc_program_startup
                            415 	.globl __start__stack
                            416 	.globl __mcs51_genXINIT
                            417 	.globl __mcs51_genXRAMCLEAR
                            418 	.globl __mcs51_genRAMCLEAR
                            419 	.area GSFINAL (CODE)
   005F 02 00 03            420 	ljmp	__sdcc_program_startup
                            421 ;--------------------------------------------------------
                            422 ; Home
                            423 ;--------------------------------------------------------
                            424 	.area HOME    (CODE)
                            425 	.area HOME    (CODE)
   0003                     426 __sdcc_program_startup:
   0003 12 00 62            427 	lcall	_main
                            428 ;	return from main will lock up
   0006 80 FE               429 	sjmp .
                            430 ;--------------------------------------------------------
                            431 ; code
                            432 ;--------------------------------------------------------
                            433 	.area CSEG    (CODE)
                            434 ;------------------------------------------------------------
                            435 ;Allocation info for local variables in function 'main'
                            436 ;------------------------------------------------------------
                            437 ;ram_buffer                Allocated with name '_main_ram_buffer_1_1'
                            438 ;i                         Allocated with name '_main_i_1_1'
                            439 ;k                         Allocated with name '_main_k_1_1'
                            440 ;addr                      Allocated with name '_main_addr_1_1'
                            441 ;------------------------------------------------------------
                    0000    442 	G$main$0$0 ==.
                    0000    443 	C$main.c$86$0$0 ==.
                            444 ;	../main.c:86: void main ( void )  {
                            445 ;	-----------------------------------------
                            446 ;	 function main
                            447 ;	-----------------------------------------
   0062                     448 _main:
                    0002    449 	ar2 = 0x02
                    0003    450 	ar3 = 0x03
                    0004    451 	ar4 = 0x04
                    0005    452 	ar5 = 0x05
                    0006    453 	ar6 = 0x06
                    0007    454 	ar7 = 0x07
                    0000    455 	ar0 = 0x00
                    0001    456 	ar1 = 0x01
                    0000    457 	C$main.c$100$1$1 ==.
                            458 ;	../main.c:100: uart_config(BR_9600_6MHZ);
                            459 ;	genCall
   0062 75 82 26            460 	mov	dpl,#0x26
   0065 12 01 4A            461 	lcall	_uart_config
                    0006    462 	C$main.c$102$1$1 ==.
                            463 ;	../main.c:102: printf("\r 8051s UART Test Program \n\r")	;
                            464 ;	genCall
   0068 75 82 A1            465 	mov	dpl,#__str_0
   006B 75 83 02            466 	mov	dph,#(__str_0 >> 8)
   006E 75 F0 80            467 	mov	b,#0x80
   0071 12 01 F6            468 	lcall	_printf
                    0012    469 	C$main.c$106$2$2 ==.
                            470 ;	../main.c:106: for ( i =0; i< 20; i++) {
                            471 ;	genAssign
   0074 90 00 80            472 	mov	dptr,#_main_i_1_1
   0077 74 00               473 	mov	a,#0x00
   0079 F0                  474 	movx	@dptr,a
   007A                     475 00107$:
                            476 ;	genAssign
   007A 90 00 80            477 	mov	dptr,#_main_i_1_1
   007D E0                  478 	movx	a,@dptr
   007E FA                  479 	mov	r2,a
                            480 ;	genCmpLt
                            481 ;	genCmp
   007F BA 14 00            482 	cjne	r2,#0x14,00122$
   0082                     483 00122$:
                            484 ;	genIfxJump
   0082 40 03               485 	jc	00123$
   0084 02 00 C0            486 	ljmp	00110$
   0087                     487 00123$:
                    0025    488 	C$main.c$107$3$3 ==.
                            489 ;	../main.c:107: k = uart_getchar();
                            490 ;	genCall
   0087 C0 02               491 	push	ar2
   0089 12 01 C1            492 	lcall	_uart_getchar
   008C AB 82               493 	mov	r3,dpl
   008E D0 02               494 	pop	ar2
                    002E    495 	C$main.c$108$3$3 ==.
                            496 ;	../main.c:108: ram_buffer[i] = k;
                            497 ;	genPlus
   0090 E5 02               498 	mov	a,ar2
   0092 24 00               499 	add	a,#_main_ram_buffer_1_1
   0094 F5 82               500 	mov	dpl,a
   0096 74 00               501 	mov	a,#0x00
   0098 34 00               502 	addc	a,#(_main_ram_buffer_1_1 >> 8)
   009A F5 83               503 	mov	dph,a
                            504 ;	genPointerSet
                            505 ;     genFarPointerSet
   009C EB                  506 	mov	a,r3
   009D F0                  507 	movx	@dptr,a
                    003C    508 	C$main.c$109$3$3 ==.
                            509 ;	../main.c:109: uart_putchar(k);
                            510 ;	genCall
   009E 8B 82               511 	mov	dpl,r3
   00A0 C0 02               512 	push	ar2
   00A2 12 01 D9            513 	lcall	_uart_putchar
   00A5 D0 02               514 	pop	ar2
                    0045    515 	C$main.c$110$3$3 ==.
                            516 ;	../main.c:110: printf("\n\r");
                            517 ;	genCall
   00A7 75 82 BE            518 	mov	dpl,#__str_1
   00AA 75 83 02            519 	mov	dph,#(__str_1 >> 8)
   00AD 75 F0 80            520 	mov	b,#0x80
   00B0 C0 02               521 	push	ar2
   00B2 12 01 F6            522 	lcall	_printf
   00B5 D0 02               523 	pop	ar2
                    0055    524 	C$main.c$106$2$2 ==.
                            525 ;	../main.c:106: for ( i =0; i< 20; i++) {
                            526 ;	genPlus
   00B7 90 00 80            527 	mov	dptr,#_main_i_1_1
                            528 ;	genPlusIncr
   00BA EA                  529 	mov	a,r2
   00BB 04                  530 	inc	a
   00BC F0                  531 	movx	@dptr,a
   00BD 02 00 7A            532 	ljmp	00107$
   00C0                     533 00110$:
                    005E    534 	C$main.c$115$2$2 ==.
                            535 ;	../main.c:115: printf("Captured 20 data in RAM ");
                            536 ;	genCall
   00C0 75 82 C1            537 	mov	dpl,#__str_2
   00C3 75 83 02            538 	mov	dph,#(__str_2 >> 8)
   00C6 75 F0 80            539 	mov	b,#0x80
   00C9 C0 02               540 	push	ar2
   00CB 12 01 F6            541 	lcall	_printf
   00CE D0 02               542 	pop	ar2
                    006E    543 	C$main.c$116$2$2 ==.
                            544 ;	../main.c:116: printf("\r\n");
                            545 ;	genCall
   00D0 75 82 DA            546 	mov	dpl,#__str_3
   00D3 75 83 02            547 	mov	dph,#(__str_3 >> 8)
   00D6 75 F0 80            548 	mov	b,#0x80
   00D9 C0 02               549 	push	ar2
   00DB 12 01 F6            550 	lcall	_printf
   00DE D0 02               551 	pop	ar2
                    007E    552 	C$main.c$117$2$2 ==.
                            553 ;	../main.c:117: k = uart_getchar();
                            554 ;	genCall
   00E0 C0 02               555 	push	ar2
   00E2 12 01 C1            556 	lcall	_uart_getchar
   00E5 D0 02               557 	pop	ar2
                    0085    558 	C$main.c$119$2$2 ==.
                            559 ;	../main.c:119: printf(" Buffer COntents : ");
                            560 ;	genCall
   00E7 75 82 DD            561 	mov	dpl,#__str_4
   00EA 75 83 02            562 	mov	dph,#(__str_4 >> 8)
   00ED 75 F0 80            563 	mov	b,#0x80
   00F0 C0 02               564 	push	ar2
   00F2 12 01 F6            565 	lcall	_printf
   00F5 D0 02               566 	pop	ar2
                    0095    567 	C$main.c$120$2$2 ==.
                            568 ;	../main.c:120: for ( k=0 ; k < i ; k++) {
                            569 ;	genAssign
   00F7 90 00 81            570 	mov	dptr,#_main_k_1_1
   00FA 74 00               571 	mov	a,#0x00
   00FC F0                  572 	movx	@dptr,a
                            573 ;	genAssign
   00FD                     574 00111$:
                            575 ;	genAssign
   00FD 90 00 81            576 	mov	dptr,#_main_k_1_1
   0100 E0                  577 	movx	a,@dptr
   0101 FB                  578 	mov	r3,a
                            579 ;	genCmpLt
                            580 ;	genCmp
   0102 C3                  581 	clr	c
   0103 EB                  582 	mov	a,r3
   0104 9A                  583 	subb	a,r2
                            584 ;	genIfxJump
   0105 40 03               585 	jc	00124$
   0107 02 01 2E            586 	ljmp	00114$
   010A                     587 00124$:
                    00A8    588 	C$main.c$121$3$4 ==.
                            589 ;	../main.c:121: uart_putchar(ram_buffer[k]);
                            590 ;	genPlus
   010A E5 03               591 	mov	a,ar3
   010C 24 00               592 	add	a,#_main_ram_buffer_1_1
   010E F5 82               593 	mov	dpl,a
   0110 74 00               594 	mov	a,#0x00
   0112 34 00               595 	addc	a,#(_main_ram_buffer_1_1 >> 8)
   0114 F5 83               596 	mov	dph,a
                            597 ;	genPointerGet
                            598 ;	genFarPointerGet
   0116 E0                  599 	movx	a,@dptr
   0117 FC                  600 	mov	r4,a
                            601 ;	genCall
   0118 8C 82               602 	mov	dpl,r4
   011A C0 02               603 	push	ar2
   011C C0 03               604 	push	ar3
   011E 12 01 D9            605 	lcall	_uart_putchar
   0121 D0 03               606 	pop	ar3
   0123 D0 02               607 	pop	ar2
                    00C3    608 	C$main.c$120$2$2 ==.
                            609 ;	../main.c:120: for ( k=0 ; k < i ; k++) {
                            610 ;	genPlus
   0125 90 00 81            611 	mov	dptr,#_main_k_1_1
                            612 ;	genPlusIncr
   0128 EB                  613 	mov	a,r3
   0129 04                  614 	inc	a
   012A F0                  615 	movx	@dptr,a
   012B 02 00 FD            616 	ljmp	00111$
   012E                     617 00114$:
                    00CC    618 	C$main.c$124$2$2 ==.
                            619 ;	../main.c:124: printf("\n\r");
                            620 ;	genCall
   012E 75 82 BE            621 	mov	dpl,#__str_1
   0131 75 83 02            622 	mov	dph,#(__str_1 >> 8)
   0134 75 F0 80            623 	mov	b,#0x80
   0137 12 01 F6            624 	lcall	_printf
                    00D8    625 	C$main.c$125$2$2 ==.
                            626 ;	../main.c:125: printf(" Completed ");
                            627 ;	genCall
   013A 75 82 F1            628 	mov	dpl,#__str_5
   013D 75 83 02            629 	mov	dph,#(__str_5 >> 8)
   0140 75 F0 80            630 	mov	b,#0x80
   0143 12 01 F6            631 	lcall	_printf
                    00E4    632 	C$main.c$129$2$2 ==.
                            633 ;	../main.c:129: while(1)
   0146                     634 00102$:
   0146 02 01 46            635 	ljmp	00102$
   0149                     636 00115$:
                    00E7    637 	C$main.c$135$1$1 ==.
                    00E7    638 	XG$main$0$0 ==.
   0149 22                  639 	ret
                            640 ;------------------------------------------------------------
                            641 ;Allocation info for local variables in function 'uart_config'
                            642 ;------------------------------------------------------------
                            643 ;baudRate                  Allocated with name '_uart_config_baudRate_1_1'
                            644 ;------------------------------------------------------------
                    00E8    645 	G$uart_config$0$0 ==.
                    00E8    646 	C$main.c$137$1$1 ==.
                            647 ;	../main.c:137: void uart_config( unsigned char baudRate)
                            648 ;	-----------------------------------------
                            649 ;	 function uart_config
                            650 ;	-----------------------------------------
   014A                     651 _uart_config:
                            652 ;	genReceive
   014A E5 82               653 	mov	a,dpl
   014C 90 00 82            654 	mov	dptr,#_uart_config_baudRate_1_1
   014F F0                  655 	movx	@dptr,a
                    00EE    656 	C$main.c$139$1$1 ==.
                            657 ;	../main.c:139: *(UART0_BASE_ADDR+UART_CONTROL1_OFFSET) =  baudRate;
                            658 ;	genAssign
   0150 90 00 8A            659 	mov	dptr,#_UART0_BASE_ADDR
   0153 E0                  660 	movx	a,@dptr
   0154 FA                  661 	mov	r2,a
   0155 A3                  662 	inc	dptr
   0156 E0                  663 	movx	a,@dptr
   0157 FB                  664 	mov	r3,a
                            665 ;	genPlus
                            666 ;	genPlusIncr
   0158 74 08               667 	mov	a,#0x08
   015A 25 02               668 	add	a,ar2
   015C FA                  669 	mov	r2,a
   015D 74 00               670 	mov	a,#0x00
   015F 35 03               671 	addc	a,ar3
   0161 FB                  672 	mov	r3,a
                            673 ;	genAssign
   0162 90 00 82            674 	mov	dptr,#_uart_config_baudRate_1_1
   0165 E0                  675 	movx	a,@dptr
   0166 FC                  676 	mov	r4,a
                            677 ;	genPointerSet
                            678 ;     genFarPointerSet
   0167 8A 82               679 	mov	dpl,r2
   0169 8B 83               680 	mov	dph,r3
   016B EC                  681 	mov	a,r4
   016C F0                  682 	movx	@dptr,a
                    010B    683 	C$main.c$140$1$1 ==.
                            684 ;	../main.c:140: *(UART0_BASE_ADDR+UART_CONTROL2_OFFSET) = ( UART_CONTROL2_8BITS | UART_CONTROL2_NOPARITY);
                            685 ;	genAssign
   016D 90 00 8A            686 	mov	dptr,#_UART0_BASE_ADDR
   0170 E0                  687 	movx	a,@dptr
   0171 FA                  688 	mov	r2,a
   0172 A3                  689 	inc	dptr
   0173 E0                  690 	movx	a,@dptr
   0174 FB                  691 	mov	r3,a
                            692 ;	genPlus
                            693 ;	genPlusIncr
   0175 74 0C               694 	mov	a,#0x0C
   0177 25 02               695 	add	a,ar2
   0179 F5 82               696 	mov	dpl,a
   017B 74 00               697 	mov	a,#0x00
   017D 35 03               698 	addc	a,ar3
   017F F5 83               699 	mov	dph,a
                            700 ;	genPointerSet
                            701 ;     genFarPointerSet
   0181 74 01               702 	mov	a,#0x01
   0183 F0                  703 	movx	@dptr,a
   0184                     704 00101$:
                    0122    705 	C$main.c$141$1$1 ==.
                    0122    706 	XG$uart_config$0$0 ==.
   0184 22                  707 	ret
                            708 ;------------------------------------------------------------
                            709 ;Allocation info for local variables in function 'uartWaitXmt'
                            710 ;------------------------------------------------------------
                            711 ;status                    Allocated with name '_uartWaitXmt_status_1_1'
                            712 ;------------------------------------------------------------
                    0123    713 	G$uartWaitXmt$0$0 ==.
                    0123    714 	C$main.c$145$1$1 ==.
                            715 ;	../main.c:145: void uartWaitXmt (void ){
                            716 ;	-----------------------------------------
                            717 ;	 function uartWaitXmt
                            718 ;	-----------------------------------------
   0185                     719 _uartWaitXmt:
                    0123    720 	C$main.c$148$1$1 ==.
                            721 ;	../main.c:148: do
   0185                     722 00101$:
                    0123    723 	C$main.c$149$2$2 ==.
                            724 ;	../main.c:149: {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
                            725 ;	genAssign
   0185 90 00 8A            726 	mov	dptr,#_UART0_BASE_ADDR
   0188 E0                  727 	movx	a,@dptr
   0189 FA                  728 	mov	r2,a
   018A A3                  729 	inc	dptr
   018B E0                  730 	movx	a,@dptr
   018C FB                  731 	mov	r3,a
                            732 ;	genPlus
                            733 ;	genPlusIncr
   018D 74 10               734 	mov	a,#0x10
   018F 25 02               735 	add	a,ar2
   0191 F5 82               736 	mov	dpl,a
   0193 74 00               737 	mov	a,#0x00
   0195 35 03               738 	addc	a,ar3
   0197 F5 83               739 	mov	dph,a
                            740 ;	genPointerGet
                            741 ;	genFarPointerGet
   0199 E0                  742 	movx	a,@dptr
   019A FA                  743 	mov	r2,a
                    0139    744 	C$main.c$150$1$1 ==.
                            745 ;	../main.c:150: } while (!(status & UART_STATUS_TXREADY_MASK));
                            746 ;	genAnd
   019B EA                  747 	mov	a,r2
                            748 ;	genIfxJump
   019C 20 E0 03            749 	jb	acc.0,00107$
   019F 02 01 85            750 	ljmp	00101$
   01A2                     751 00107$:
   01A2                     752 00104$:
                    0140    753 	C$main.c$151$1$1 ==.
                    0140    754 	XG$uartWaitXmt$0$0 ==.
   01A2 22                  755 	ret
                            756 ;------------------------------------------------------------
                            757 ;Allocation info for local variables in function 'uartWaitRxd'
                            758 ;------------------------------------------------------------
                            759 ;status                    Allocated with name '_uartWaitRxd_status_1_1'
                            760 ;------------------------------------------------------------
                    0141    761 	G$uartWaitRxd$0$0 ==.
                    0141    762 	C$main.c$154$1$1 ==.
                            763 ;	../main.c:154: void uartWaitRxd (void ){
                            764 ;	-----------------------------------------
                            765 ;	 function uartWaitRxd
                            766 ;	-----------------------------------------
   01A3                     767 _uartWaitRxd:
                    0141    768 	C$main.c$157$1$1 ==.
                            769 ;	../main.c:157: do
   01A3                     770 00101$:
                    0141    771 	C$main.c$158$2$2 ==.
                            772 ;	../main.c:158: {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
                            773 ;	genAssign
   01A3 90 00 8A            774 	mov	dptr,#_UART0_BASE_ADDR
   01A6 E0                  775 	movx	a,@dptr
   01A7 FA                  776 	mov	r2,a
   01A8 A3                  777 	inc	dptr
   01A9 E0                  778 	movx	a,@dptr
   01AA FB                  779 	mov	r3,a
                            780 ;	genPlus
                            781 ;	genPlusIncr
   01AB 74 10               782 	mov	a,#0x10
   01AD 25 02               783 	add	a,ar2
   01AF F5 82               784 	mov	dpl,a
   01B1 74 00               785 	mov	a,#0x00
   01B3 35 03               786 	addc	a,ar3
   01B5 F5 83               787 	mov	dph,a
                            788 ;	genPointerGet
                            789 ;	genFarPointerGet
   01B7 E0                  790 	movx	a,@dptr
   01B8 FA                  791 	mov	r2,a
                    0157    792 	C$main.c$159$1$1 ==.
                            793 ;	../main.c:159: } while (!(status & UART_STATUS_RXREADY_MASK));
                            794 ;	genAnd
   01B9 EA                  795 	mov	a,r2
                            796 ;	genIfxJump
   01BA 20 E1 03            797 	jb	acc.1,00107$
   01BD 02 01 A3            798 	ljmp	00101$
   01C0                     799 00107$:
   01C0                     800 00104$:
                    015E    801 	C$main.c$160$1$1 ==.
                    015E    802 	XG$uartWaitRxd$0$0 ==.
   01C0 22                  803 	ret
                            804 ;------------------------------------------------------------
                            805 ;Allocation info for local variables in function 'uart_getchar'
                            806 ;------------------------------------------------------------
                            807 ;uartRxData                Allocated with name '_uart_getchar_uartRxData_1_1'
                            808 ;------------------------------------------------------------
                    015F    809 	G$uart_getchar$0$0 ==.
                    015F    810 	C$main.c$167$1$1 ==.
                            811 ;	../main.c:167: unsigned char uart_getchar(void)
                            812 ;	-----------------------------------------
                            813 ;	 function uart_getchar
                            814 ;	-----------------------------------------
   01C1                     815 _uart_getchar:
                    015F    816 	C$main.c$171$1$1 ==.
                            817 ;	../main.c:171: uartWaitRxd ();
                            818 ;	genCall
   01C1 12 01 A3            819 	lcall	_uartWaitRxd
                    0162    820 	C$main.c$172$1$1 ==.
                            821 ;	../main.c:172: uartRxData = *(UART0_BASE_ADDR+UART_RXDATA_OFFSET);
                            822 ;	genAssign
   01C4 90 00 8A            823 	mov	dptr,#_UART0_BASE_ADDR
   01C7 E0                  824 	movx	a,@dptr
   01C8 FA                  825 	mov	r2,a
   01C9 A3                  826 	inc	dptr
   01CA E0                  827 	movx	a,@dptr
   01CB FB                  828 	mov	r3,a
                            829 ;	genPlus
                            830 ;	genPlusIncr
   01CC 8A 82               831 	mov	dpl,r2
   01CE 8B 83               832 	mov	dph,r3
   01D0 A3                  833 	inc	dptr
   01D1 A3                  834 	inc	dptr
   01D2 A3                  835 	inc	dptr
   01D3 A3                  836 	inc	dptr
                            837 ;	genPointerGet
                            838 ;	genFarPointerGet
   01D4 E0                  839 	movx	a,@dptr
   01D5 FA                  840 	mov	r2,a
                    0174    841 	C$main.c$173$1$1 ==.
                            842 ;	../main.c:173: return (uartRxData & 0xFF);
                            843 ;	genRet
   01D6 8A 82               844 	mov	dpl,r2
   01D8                     845 00101$:
                    0176    846 	C$main.c$174$1$1 ==.
                    0176    847 	XG$uart_getchar$0$0 ==.
   01D8 22                  848 	ret
                            849 ;------------------------------------------------------------
                            850 ;Allocation info for local variables in function 'uart_putchar'
                            851 ;------------------------------------------------------------
                            852 ;c                         Allocated with name '_uart_putchar_c_1_1'
                            853 ;------------------------------------------------------------
                    0177    854 	G$uart_putchar$0$0 ==.
                    0177    855 	C$main.c$178$1$1 ==.
                            856 ;	../main.c:178: void uart_putchar(unsigned char c)
                            857 ;	-----------------------------------------
                            858 ;	 function uart_putchar
                            859 ;	-----------------------------------------
   01D9                     860 _uart_putchar:
                            861 ;	genReceive
   01D9 E5 82               862 	mov	a,dpl
   01DB 90 00 83            863 	mov	dptr,#_uart_putchar_c_1_1
   01DE F0                  864 	movx	@dptr,a
                    017D    865 	C$main.c$180$1$1 ==.
                            866 ;	../main.c:180: uartWaitXmt();
                            867 ;	genCall
   01DF 12 01 85            868 	lcall	_uartWaitXmt
                    0180    869 	C$main.c$181$1$1 ==.
                            870 ;	../main.c:181: *(UART0_BASE_ADDR+UART_TXDATA_OFFSET) = c;
                            871 ;	genAssign
   01E2 90 00 8A            872 	mov	dptr,#_UART0_BASE_ADDR
   01E5 E0                  873 	movx	a,@dptr
   01E6 FA                  874 	mov	r2,a
   01E7 A3                  875 	inc	dptr
   01E8 E0                  876 	movx	a,@dptr
   01E9 FB                  877 	mov	r3,a
                            878 ;	genAssign
   01EA 90 00 83            879 	mov	dptr,#_uart_putchar_c_1_1
   01ED E0                  880 	movx	a,@dptr
   01EE FC                  881 	mov	r4,a
                            882 ;	genPointerSet
                            883 ;     genFarPointerSet
   01EF 8A 82               884 	mov	dpl,r2
   01F1 8B 83               885 	mov	dph,r3
   01F3 EC                  886 	mov	a,r4
   01F4 F0                  887 	movx	@dptr,a
   01F5                     888 00101$:
                    0193    889 	C$main.c$184$1$1 ==.
                    0193    890 	XG$uart_putchar$0$0 ==.
   01F5 22                  891 	ret
                            892 ;------------------------------------------------------------
                            893 ;Allocation info for local variables in function 'printf'
                            894 ;------------------------------------------------------------
                            895 ;str                       Allocated with name '_printf_str_1_1'
                            896 ;c                         Allocated with name '_printf_c_1_1'
                            897 ;------------------------------------------------------------
                    0194    898 	G$printf$0$0 ==.
                    0194    899 	C$main.c$186$1$1 ==.
                            900 ;	../main.c:186: void printf ( unsigned char * str ) {
                            901 ;	-----------------------------------------
                            902 ;	 function printf
                            903 ;	-----------------------------------------
   01F6                     904 _printf:
                            905 ;	genReceive
   01F6 AA F0               906 	mov	r2,b
   01F8 AB 83               907 	mov	r3,dph
   01FA E5 82               908 	mov	a,dpl
   01FC 90 00 84            909 	mov	dptr,#_printf_str_1_1
   01FF F0                  910 	movx	@dptr,a
   0200 A3                  911 	inc	dptr
   0201 EB                  912 	mov	a,r3
   0202 F0                  913 	movx	@dptr,a
   0203 A3                  914 	inc	dptr
   0204 EA                  915 	mov	a,r2
   0205 F0                  916 	movx	@dptr,a
                    01A4    917 	C$main.c$189$1$1 ==.
                            918 ;	../main.c:189: c = *str++;
                            919 ;	genAssign
   0206 90 00 84            920 	mov	dptr,#_printf_str_1_1
   0209 E0                  921 	movx	a,@dptr
   020A FA                  922 	mov	r2,a
   020B A3                  923 	inc	dptr
   020C E0                  924 	movx	a,@dptr
   020D FB                  925 	mov	r3,a
   020E A3                  926 	inc	dptr
   020F E0                  927 	movx	a,@dptr
   0210 FC                  928 	mov	r4,a
                            929 ;	genPointerGet
                            930 ;	genGenPointerGet
   0211 8A 82               931 	mov	dpl,r2
   0213 8B 83               932 	mov	dph,r3
   0215 8C F0               933 	mov	b,r4
   0217 12 02 70            934 	lcall	__gptrget
   021A FD                  935 	mov	r5,a
                            936 ;	genPlus
   021B 90 00 84            937 	mov	dptr,#_printf_str_1_1
                            938 ;	genPlusIncr
   021E 74 01               939 	mov	a,#0x01
   0220 25 02               940 	add	a,ar2
   0222 F0                  941 	movx	@dptr,a
   0223 74 00               942 	mov	a,#0x00
   0225 35 03               943 	addc	a,ar3
   0227 A3                  944 	inc	dptr
   0228 F0                  945 	movx	@dptr,a
   0229 A3                  946 	inc	dptr
   022A EC                  947 	mov	a,r4
   022B F0                  948 	movx	@dptr,a
                            949 ;	genAssign
   022C 90 00 87            950 	mov	dptr,#_printf_c_1_1
   022F ED                  951 	mov	a,r5
   0230 F0                  952 	movx	@dptr,a
                    01CF    953 	C$main.c$191$1$1 ==.
                            954 ;	../main.c:191: while (c != '\0') {
   0231                     955 00101$:
                            956 ;	genAssign
   0231 90 00 87            957 	mov	dptr,#_printf_c_1_1
   0234 E0                  958 	movx	a,@dptr
   0235 FA                  959 	mov	r2,a
                            960 ;	genCmpEq
                            961 ;	gencjneshort
   0236 BA 00 03            962 	cjne	r2,#0x00,00108$
   0239 02 02 6F            963 	ljmp	00104$
   023C                     964 00108$:
                    01DA    965 	C$main.c$192$2$2 ==.
                            966 ;	../main.c:192: uart_putchar( c);
                            967 ;	genCall
   023C 8A 82               968 	mov	dpl,r2
   023E 12 01 D9            969 	lcall	_uart_putchar
                    01DF    970 	C$main.c$193$2$2 ==.
                            971 ;	../main.c:193: c = *str++;
                            972 ;	genAssign
   0241 90 00 84            973 	mov	dptr,#_printf_str_1_1
   0244 E0                  974 	movx	a,@dptr
   0245 FA                  975 	mov	r2,a
   0246 A3                  976 	inc	dptr
   0247 E0                  977 	movx	a,@dptr
   0248 FB                  978 	mov	r3,a
   0249 A3                  979 	inc	dptr
   024A E0                  980 	movx	a,@dptr
   024B FC                  981 	mov	r4,a
                            982 ;	genPointerGet
                            983 ;	genGenPointerGet
   024C 8A 82               984 	mov	dpl,r2
   024E 8B 83               985 	mov	dph,r3
   0250 8C F0               986 	mov	b,r4
   0252 12 02 70            987 	lcall	__gptrget
   0255 FD                  988 	mov	r5,a
                            989 ;	genPlus
   0256 90 00 84            990 	mov	dptr,#_printf_str_1_1
                            991 ;	genPlusIncr
   0259 74 01               992 	mov	a,#0x01
   025B 25 02               993 	add	a,ar2
   025D F0                  994 	movx	@dptr,a
   025E 74 00               995 	mov	a,#0x00
   0260 35 03               996 	addc	a,ar3
   0262 A3                  997 	inc	dptr
   0263 F0                  998 	movx	@dptr,a
   0264 A3                  999 	inc	dptr
   0265 EC                 1000 	mov	a,r4
   0266 F0                 1001 	movx	@dptr,a
                           1002 ;	genAssign
   0267 90 00 87           1003 	mov	dptr,#_printf_c_1_1
   026A ED                 1004 	mov	a,r5
   026B F0                 1005 	movx	@dptr,a
   026C 02 02 31           1006 	ljmp	00101$
   026F                    1007 00104$:
                    020D   1008 	C$main.c$195$1$1 ==.
                    020D   1009 	XG$printf$0$0 ==.
   026F 22                 1010 	ret
                           1011 	.area CSEG    (CODE)
                           1012 	.area CONST   (CODE)
                    0000   1013 G$ascii$0$0 == .
   0290                    1014 _ascii:
   0290 30 31 32 33 34 35  1015 	.ascii "0123456789ABCDEF"
        36 37 38 39 41 42
        43 44 45 46
   02A0 00                 1016 	.db 0x00
                    0011   1017 F___main$_str_0$0$0 == .
   02A1                    1018 __str_0:
   02A1 0D                 1019 	.db 0x0D
   02A2 20 38 30 35 31 73  1020 	.ascii " 8051s UART Test Program "
        20 55 41 52 54 20
        54 65 73 74 20 50
        72 6F 67 72 61 6D
        20
   02BB 0A                 1021 	.db 0x0A
   02BC 0D                 1022 	.db 0x0D
   02BD 00                 1023 	.db 0x00
                    002E   1024 F___main$_str_1$0$0 == .
   02BE                    1025 __str_1:
   02BE 0A                 1026 	.db 0x0A
   02BF 0D                 1027 	.db 0x0D
   02C0 00                 1028 	.db 0x00
                    0031   1029 F___main$_str_2$0$0 == .
   02C1                    1030 __str_2:
   02C1 43 61 70 74 75 72  1031 	.ascii "Captured 20 data in RAM "
        65 64 20 32 30 20
        64 61 74 61 20 69
        6E 20 52 41 4D 20
   02D9 00                 1032 	.db 0x00
                    004A   1033 F___main$_str_3$0$0 == .
   02DA                    1034 __str_3:
   02DA 0D                 1035 	.db 0x0D
   02DB 0A                 1036 	.db 0x0A
   02DC 00                 1037 	.db 0x00
                    004D   1038 F___main$_str_4$0$0 == .
   02DD                    1039 __str_4:
   02DD 20 42 75 66 66 65  1040 	.ascii " Buffer COntents : "
        72 20 43 4F 6E 74
        65 6E 74 73 20 3A
        20
   02F0 00                 1041 	.db 0x00
                    0061   1042 F___main$_str_5$0$0 == .
   02F1                    1043 __str_5:
   02F1 20 43 6F 6D 70 6C  1044 	.ascii " Completed "
        65 74 65 64 20
   02FC 00                 1045 	.db 0x00
                           1046 	.area XINIT   (CODE)
                    0000   1047 F___main$__xinit_GPIO_BASE_ADDR$0$0 == .
   02FD                    1048 __xinit__GPIO_BASE_ADDR:
   02FD 00 F1              1049 	.byte #0x00,#0xF1
                    0002   1050 F___main$__xinit_UART0_BASE_ADDR$0$0 == .
   02FF                    1051 __xinit__UART0_BASE_ADDR:
   02FF 00 F0              1052 	.byte #0x00,#0xF0
                           1053 	.area CABS    (ABS,CODE)
