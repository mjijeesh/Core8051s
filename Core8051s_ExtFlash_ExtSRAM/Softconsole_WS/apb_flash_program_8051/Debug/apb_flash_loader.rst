                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Thu May 02 13:30:19 2013
                              5 ;--------------------------------------------------------
                              6 	.module ___apb_flash_loader
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _FLASH
                             13 	.globl _ascii
                             14 	.globl _main
                             15 	.globl _CY
                             16 	.globl _AC
                             17 	.globl _F0
                             18 	.globl _RS1
                             19 	.globl _RS0
                             20 	.globl _OV
                             21 	.globl _F1
                             22 	.globl _P
                             23 	.globl _PS
                             24 	.globl _PT1
                             25 	.globl _PX1
                             26 	.globl _PT0
                             27 	.globl _PX0
                             28 	.globl _RD
                             29 	.globl _WR
                             30 	.globl _T1
                             31 	.globl _T0
                             32 	.globl _INT1
                             33 	.globl _INT0
                             34 	.globl _TXD
                             35 	.globl _RXD
                             36 	.globl _P3_7
                             37 	.globl _P3_6
                             38 	.globl _P3_5
                             39 	.globl _P3_4
                             40 	.globl _P3_3
                             41 	.globl _P3_2
                             42 	.globl _P3_1
                             43 	.globl _P3_0
                             44 	.globl _EA
                             45 	.globl _ES
                             46 	.globl _ET1
                             47 	.globl _EX1
                             48 	.globl _ET0
                             49 	.globl _EX0
                             50 	.globl _P2_7
                             51 	.globl _P2_6
                             52 	.globl _P2_5
                             53 	.globl _P2_4
                             54 	.globl _P2_3
                             55 	.globl _P2_2
                             56 	.globl _P2_1
                             57 	.globl _P2_0
                             58 	.globl _SM0
                             59 	.globl _SM1
                             60 	.globl _SM2
                             61 	.globl _REN
                             62 	.globl _TB8
                             63 	.globl _RB8
                             64 	.globl _TI
                             65 	.globl _RI
                             66 	.globl _P1_7
                             67 	.globl _P1_6
                             68 	.globl _P1_5
                             69 	.globl _P1_4
                             70 	.globl _P1_3
                             71 	.globl _P1_2
                             72 	.globl _P1_1
                             73 	.globl _P1_0
                             74 	.globl _TF1
                             75 	.globl _TR1
                             76 	.globl _TF0
                             77 	.globl _TR0
                             78 	.globl _IE1
                             79 	.globl _IT1
                             80 	.globl _IE0
                             81 	.globl _IT0
                             82 	.globl _P0_7
                             83 	.globl _P0_6
                             84 	.globl _P0_5
                             85 	.globl _P0_4
                             86 	.globl _P0_3
                             87 	.globl _P0_2
                             88 	.globl _P0_1
                             89 	.globl _P0_0
                             90 	.globl _B
                             91 	.globl _ACC
                             92 	.globl _PSW
                             93 	.globl _IP
                             94 	.globl _P3
                             95 	.globl _IE
                             96 	.globl _P2
                             97 	.globl _SBUF
                             98 	.globl _SCON
                             99 	.globl _P1
                            100 	.globl _TH1
                            101 	.globl _TH0
                            102 	.globl _TL1
                            103 	.globl _TL0
                            104 	.globl _TMOD
                            105 	.globl _TCON
                            106 	.globl _PCON
                            107 	.globl _DPH
                            108 	.globl _DPL
                            109 	.globl _SP
                            110 	.globl _P0
                            111 	.globl _xdata_buffer
                            112 	.globl _FlashProgramPage_PARM_3
                            113 	.globl _FlashProgramPage_PARM_2
                            114 	.globl _SRAM_BASE_ADDR
                            115 	.globl _UART0_BASE_ADDR
                            116 	.globl _FLASH_BASE_ADDR
                            117 	.globl _GPIO_BASE_ADDR
                            118 	.globl _uart_config
                            119 	.globl _uartWaitXmt
                            120 	.globl _uartWaitRxd
                            121 	.globl _uart_getchar
                            122 	.globl _uart_putchar
                            123 	.globl _printf
                            124 	.globl _FlashErasePage
                            125 	.globl _FlashProgramPage
                            126 	.globl _FlashBusyCheck
                            127 ;--------------------------------------------------------
                            128 ; special function registers
                            129 ;--------------------------------------------------------
                            130 	.area RSEG    (DATA)
                    0080    131 G$P0$0$0 == 0x0080
                    0080    132 _P0	=	0x0080
                    0081    133 G$SP$0$0 == 0x0081
                    0081    134 _SP	=	0x0081
                    0082    135 G$DPL$0$0 == 0x0082
                    0082    136 _DPL	=	0x0082
                    0083    137 G$DPH$0$0 == 0x0083
                    0083    138 _DPH	=	0x0083
                    0087    139 G$PCON$0$0 == 0x0087
                    0087    140 _PCON	=	0x0087
                    0088    141 G$TCON$0$0 == 0x0088
                    0088    142 _TCON	=	0x0088
                    0089    143 G$TMOD$0$0 == 0x0089
                    0089    144 _TMOD	=	0x0089
                    008A    145 G$TL0$0$0 == 0x008a
                    008A    146 _TL0	=	0x008a
                    008B    147 G$TL1$0$0 == 0x008b
                    008B    148 _TL1	=	0x008b
                    008C    149 G$TH0$0$0 == 0x008c
                    008C    150 _TH0	=	0x008c
                    008D    151 G$TH1$0$0 == 0x008d
                    008D    152 _TH1	=	0x008d
                    0090    153 G$P1$0$0 == 0x0090
                    0090    154 _P1	=	0x0090
                    0098    155 G$SCON$0$0 == 0x0098
                    0098    156 _SCON	=	0x0098
                    0099    157 G$SBUF$0$0 == 0x0099
                    0099    158 _SBUF	=	0x0099
                    00A0    159 G$P2$0$0 == 0x00a0
                    00A0    160 _P2	=	0x00a0
                    00A8    161 G$IE$0$0 == 0x00a8
                    00A8    162 _IE	=	0x00a8
                    00B0    163 G$P3$0$0 == 0x00b0
                    00B0    164 _P3	=	0x00b0
                    00B8    165 G$IP$0$0 == 0x00b8
                    00B8    166 _IP	=	0x00b8
                    00D0    167 G$PSW$0$0 == 0x00d0
                    00D0    168 _PSW	=	0x00d0
                    00E0    169 G$ACC$0$0 == 0x00e0
                    00E0    170 _ACC	=	0x00e0
                    00F0    171 G$B$0$0 == 0x00f0
                    00F0    172 _B	=	0x00f0
                            173 ;--------------------------------------------------------
                            174 ; special function bits
                            175 ;--------------------------------------------------------
                            176 	.area RSEG    (DATA)
                    0080    177 G$P0_0$0$0 == 0x0080
                    0080    178 _P0_0	=	0x0080
                    0081    179 G$P0_1$0$0 == 0x0081
                    0081    180 _P0_1	=	0x0081
                    0082    181 G$P0_2$0$0 == 0x0082
                    0082    182 _P0_2	=	0x0082
                    0083    183 G$P0_3$0$0 == 0x0083
                    0083    184 _P0_3	=	0x0083
                    0084    185 G$P0_4$0$0 == 0x0084
                    0084    186 _P0_4	=	0x0084
                    0085    187 G$P0_5$0$0 == 0x0085
                    0085    188 _P0_5	=	0x0085
                    0086    189 G$P0_6$0$0 == 0x0086
                    0086    190 _P0_6	=	0x0086
                    0087    191 G$P0_7$0$0 == 0x0087
                    0087    192 _P0_7	=	0x0087
                    0088    193 G$IT0$0$0 == 0x0088
                    0088    194 _IT0	=	0x0088
                    0089    195 G$IE0$0$0 == 0x0089
                    0089    196 _IE0	=	0x0089
                    008A    197 G$IT1$0$0 == 0x008a
                    008A    198 _IT1	=	0x008a
                    008B    199 G$IE1$0$0 == 0x008b
                    008B    200 _IE1	=	0x008b
                    008C    201 G$TR0$0$0 == 0x008c
                    008C    202 _TR0	=	0x008c
                    008D    203 G$TF0$0$0 == 0x008d
                    008D    204 _TF0	=	0x008d
                    008E    205 G$TR1$0$0 == 0x008e
                    008E    206 _TR1	=	0x008e
                    008F    207 G$TF1$0$0 == 0x008f
                    008F    208 _TF1	=	0x008f
                    0090    209 G$P1_0$0$0 == 0x0090
                    0090    210 _P1_0	=	0x0090
                    0091    211 G$P1_1$0$0 == 0x0091
                    0091    212 _P1_1	=	0x0091
                    0092    213 G$P1_2$0$0 == 0x0092
                    0092    214 _P1_2	=	0x0092
                    0093    215 G$P1_3$0$0 == 0x0093
                    0093    216 _P1_3	=	0x0093
                    0094    217 G$P1_4$0$0 == 0x0094
                    0094    218 _P1_4	=	0x0094
                    0095    219 G$P1_5$0$0 == 0x0095
                    0095    220 _P1_5	=	0x0095
                    0096    221 G$P1_6$0$0 == 0x0096
                    0096    222 _P1_6	=	0x0096
                    0097    223 G$P1_7$0$0 == 0x0097
                    0097    224 _P1_7	=	0x0097
                    0098    225 G$RI$0$0 == 0x0098
                    0098    226 _RI	=	0x0098
                    0099    227 G$TI$0$0 == 0x0099
                    0099    228 _TI	=	0x0099
                    009A    229 G$RB8$0$0 == 0x009a
                    009A    230 _RB8	=	0x009a
                    009B    231 G$TB8$0$0 == 0x009b
                    009B    232 _TB8	=	0x009b
                    009C    233 G$REN$0$0 == 0x009c
                    009C    234 _REN	=	0x009c
                    009D    235 G$SM2$0$0 == 0x009d
                    009D    236 _SM2	=	0x009d
                    009E    237 G$SM1$0$0 == 0x009e
                    009E    238 _SM1	=	0x009e
                    009F    239 G$SM0$0$0 == 0x009f
                    009F    240 _SM0	=	0x009f
                    00A0    241 G$P2_0$0$0 == 0x00a0
                    00A0    242 _P2_0	=	0x00a0
                    00A1    243 G$P2_1$0$0 == 0x00a1
                    00A1    244 _P2_1	=	0x00a1
                    00A2    245 G$P2_2$0$0 == 0x00a2
                    00A2    246 _P2_2	=	0x00a2
                    00A3    247 G$P2_3$0$0 == 0x00a3
                    00A3    248 _P2_3	=	0x00a3
                    00A4    249 G$P2_4$0$0 == 0x00a4
                    00A4    250 _P2_4	=	0x00a4
                    00A5    251 G$P2_5$0$0 == 0x00a5
                    00A5    252 _P2_5	=	0x00a5
                    00A6    253 G$P2_6$0$0 == 0x00a6
                    00A6    254 _P2_6	=	0x00a6
                    00A7    255 G$P2_7$0$0 == 0x00a7
                    00A7    256 _P2_7	=	0x00a7
                    00A8    257 G$EX0$0$0 == 0x00a8
                    00A8    258 _EX0	=	0x00a8
                    00A9    259 G$ET0$0$0 == 0x00a9
                    00A9    260 _ET0	=	0x00a9
                    00AA    261 G$EX1$0$0 == 0x00aa
                    00AA    262 _EX1	=	0x00aa
                    00AB    263 G$ET1$0$0 == 0x00ab
                    00AB    264 _ET1	=	0x00ab
                    00AC    265 G$ES$0$0 == 0x00ac
                    00AC    266 _ES	=	0x00ac
                    00AF    267 G$EA$0$0 == 0x00af
                    00AF    268 _EA	=	0x00af
                    00B0    269 G$P3_0$0$0 == 0x00b0
                    00B0    270 _P3_0	=	0x00b0
                    00B1    271 G$P3_1$0$0 == 0x00b1
                    00B1    272 _P3_1	=	0x00b1
                    00B2    273 G$P3_2$0$0 == 0x00b2
                    00B2    274 _P3_2	=	0x00b2
                    00B3    275 G$P3_3$0$0 == 0x00b3
                    00B3    276 _P3_3	=	0x00b3
                    00B4    277 G$P3_4$0$0 == 0x00b4
                    00B4    278 _P3_4	=	0x00b4
                    00B5    279 G$P3_5$0$0 == 0x00b5
                    00B5    280 _P3_5	=	0x00b5
                    00B6    281 G$P3_6$0$0 == 0x00b6
                    00B6    282 _P3_6	=	0x00b6
                    00B7    283 G$P3_7$0$0 == 0x00b7
                    00B7    284 _P3_7	=	0x00b7
                    00B0    285 G$RXD$0$0 == 0x00b0
                    00B0    286 _RXD	=	0x00b0
                    00B1    287 G$TXD$0$0 == 0x00b1
                    00B1    288 _TXD	=	0x00b1
                    00B2    289 G$INT0$0$0 == 0x00b2
                    00B2    290 _INT0	=	0x00b2
                    00B3    291 G$INT1$0$0 == 0x00b3
                    00B3    292 _INT1	=	0x00b3
                    00B4    293 G$T0$0$0 == 0x00b4
                    00B4    294 _T0	=	0x00b4
                    00B5    295 G$T1$0$0 == 0x00b5
                    00B5    296 _T1	=	0x00b5
                    00B6    297 G$WR$0$0 == 0x00b6
                    00B6    298 _WR	=	0x00b6
                    00B7    299 G$RD$0$0 == 0x00b7
                    00B7    300 _RD	=	0x00b7
                    00B8    301 G$PX0$0$0 == 0x00b8
                    00B8    302 _PX0	=	0x00b8
                    00B9    303 G$PT0$0$0 == 0x00b9
                    00B9    304 _PT0	=	0x00b9
                    00BA    305 G$PX1$0$0 == 0x00ba
                    00BA    306 _PX1	=	0x00ba
                    00BB    307 G$PT1$0$0 == 0x00bb
                    00BB    308 _PT1	=	0x00bb
                    00BC    309 G$PS$0$0 == 0x00bc
                    00BC    310 _PS	=	0x00bc
                    00D0    311 G$P$0$0 == 0x00d0
                    00D0    312 _P	=	0x00d0
                    00D1    313 G$F1$0$0 == 0x00d1
                    00D1    314 _F1	=	0x00d1
                    00D2    315 G$OV$0$0 == 0x00d2
                    00D2    316 _OV	=	0x00d2
                    00D3    317 G$RS0$0$0 == 0x00d3
                    00D3    318 _RS0	=	0x00d3
                    00D4    319 G$RS1$0$0 == 0x00d4
                    00D4    320 _RS1	=	0x00d4
                    00D5    321 G$F0$0$0 == 0x00d5
                    00D5    322 _F0	=	0x00d5
                    00D6    323 G$AC$0$0 == 0x00d6
                    00D6    324 _AC	=	0x00d6
                    00D7    325 G$CY$0$0 == 0x00d7
                    00D7    326 _CY	=	0x00d7
                            327 ;--------------------------------------------------------
                            328 ; overlayable register banks
                            329 ;--------------------------------------------------------
                            330 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     331 	.ds 8
                            332 ;--------------------------------------------------------
                            333 ; internal ram data
                            334 ;--------------------------------------------------------
                            335 	.area DSEG    (DATA)
                    0000    336 G$GPIO_BASE_ADDR$0$0==.
   0018                     337 _GPIO_BASE_ADDR::
   0018                     338 	.ds 2
                    0002    339 G$FLASH_BASE_ADDR$0$0==.
   001A                     340 _FLASH_BASE_ADDR::
   001A                     341 	.ds 2
                    0004    342 G$UART0_BASE_ADDR$0$0==.
   001C                     343 _UART0_BASE_ADDR::
   001C                     344 	.ds 2
                    0006    345 G$SRAM_BASE_ADDR$0$0==.
   001E                     346 _SRAM_BASE_ADDR::
   001E                     347 	.ds 2
                    0008    348 F___apb_flash_loader$checkSum$0$0==.
   0020                     349 _checkSum:
   0020                     350 	.ds 1
                    0009    351 LFlashProgramPage$addr$1$1==.
   0021                     352 _FlashProgramPage_PARM_2:
   0021                     353 	.ds 2
                    000B    354 LFlashProgramPage$size$1$1==.
   0023                     355 _FlashProgramPage_PARM_3:
   0023                     356 	.ds 1
                    000C    357 LFlashProgramPage$buffer$1$1==.
   0024                     358 _FlashProgramPage_buffer_1_1:
   0024                     359 	.ds 3
                            360 ;--------------------------------------------------------
                            361 ; overlayable items in internal ram 
                            362 ;--------------------------------------------------------
                            363 	.area OSEG    (OVR,DATA)
                            364 ;--------------------------------------------------------
                            365 ; Stack segment in internal ram 
                            366 ;--------------------------------------------------------
                            367 	.area	SSEG	(DATA)
   0027                     368 __start__stack:
   0027                     369 	.ds	1
                            370 
                            371 ;--------------------------------------------------------
                            372 ; indirectly addressable internal ram data
                            373 ;--------------------------------------------------------
                            374 	.area ISEG    (DATA)
                            375 ;--------------------------------------------------------
                            376 ; absolute internal ram data
                            377 ;--------------------------------------------------------
                            378 	.area IABS    (ABS,DATA)
                            379 	.area IABS    (ABS,DATA)
                            380 ;--------------------------------------------------------
                            381 ; bit data
                            382 ;--------------------------------------------------------
                            383 	.area BSEG    (BIT)
                            384 ;--------------------------------------------------------
                            385 ; paged external ram data
                            386 ;--------------------------------------------------------
                            387 	.area PSEG    (PAG,XDATA)
                            388 ;--------------------------------------------------------
                            389 ; external ram data
                            390 ;--------------------------------------------------------
                            391 	.area XSEG    (XDATA)
                    F300    392 G$xdata_buffer$0$0 == 0xf300
                    F300    393 _xdata_buffer	=	0xf300
                            394 ;--------------------------------------------------------
                            395 ; external initialized ram data
                            396 ;--------------------------------------------------------
                            397 	.area XISEG   (XDATA)
                            398 	.area HOME    (CODE)
                            399 	.area GSINIT0 (CODE)
                            400 	.area GSINIT1 (CODE)
                            401 	.area GSINIT2 (CODE)
                            402 	.area GSINIT3 (CODE)
                            403 	.area GSINIT4 (CODE)
                            404 	.area GSINIT5 (CODE)
                            405 	.area GSINIT  (CODE)
                            406 	.area GSFINAL (CODE)
                            407 	.area CSEG    (CODE)
                            408 ;--------------------------------------------------------
                            409 ; interrupt vector 
                            410 ;--------------------------------------------------------
                            411 	.area HOME    (CODE)
   0000                     412 __interrupt_vect:
   0000 02 00 08            413 	ljmp	__sdcc_gsinit_startup
                            414 ;--------------------------------------------------------
                            415 ; global & static initialisations
                            416 ;--------------------------------------------------------
                            417 	.area HOME    (CODE)
                            418 	.area GSINIT  (CODE)
                            419 	.area GSFINAL (CODE)
                            420 	.area GSINIT  (CODE)
                            421 	.globl __sdcc_gsinit_startup
                            422 	.globl __sdcc_program_startup
                            423 	.globl __start__stack
                            424 	.globl __mcs51_genXINIT
                            425 	.globl __mcs51_genXRAMCLEAR
                            426 	.globl __mcs51_genRAMCLEAR
                    0000    427 	G$FlashBusyCheck$0$0 ==.
                    0000    428 	C$apb_flash_loader.c$28$1$1 ==.
                            429 ;	../apb_flash_loader.c:28: volatile uint8_t xdata * GPIO_BASE_ADDR   = (uint8_t xdata *)GPIO_BASE;
                            430 ;	genAssign
   005F 75 18 00            431 	mov	_GPIO_BASE_ADDR,#0x00
   0062 75 19 F1            432 	mov	(_GPIO_BASE_ADDR + 1),#0xF1
                    0006    433 	G$FlashBusyCheck$0$0 ==.
                    0006    434 	C$apb_flash_loader.c$29$1$1 ==.
                            435 ;	../apb_flash_loader.c:29: volatile uint8_t xdata * FLASH_BASE_ADDR  = (uint8_t xdata *)FLASH_BASE;
                            436 ;	genAssign
   0065 75 1A 00            437 	mov	_FLASH_BASE_ADDR,#0x00
   0068 75 1B F4            438 	mov	(_FLASH_BASE_ADDR + 1),#0xF4
                    000C    439 	G$FlashBusyCheck$0$0 ==.
                    000C    440 	C$apb_flash_loader.c$30$1$1 ==.
                            441 ;	../apb_flash_loader.c:30: volatile uint8_t xdata * UART0_BASE_ADDR  = (uint8_t xdata *)UART_BASE;
                            442 ;	genAssign
   006B 75 1C 00            443 	mov	_UART0_BASE_ADDR,#0x00
   006E 75 1D F0            444 	mov	(_UART0_BASE_ADDR + 1),#0xF0
                    0012    445 	G$FlashBusyCheck$0$0 ==.
                    0012    446 	C$apb_flash_loader.c$31$1$1 ==.
                            447 ;	../apb_flash_loader.c:31: volatile uint8_t xdata * SRAM_BASE_ADDR   = (uint8_t xdata *)SRAM_BASE;
                            448 ;	genAssign
   0071 75 1E 00            449 	mov	_SRAM_BASE_ADDR,#0x00
   0074 75 1F F3            450 	mov	(_SRAM_BASE_ADDR + 1),#0xF3
                            451 	.area GSFINAL (CODE)
   0077 02 00 03            452 	ljmp	__sdcc_program_startup
                            453 ;--------------------------------------------------------
                            454 ; Home
                            455 ;--------------------------------------------------------
                            456 	.area HOME    (CODE)
                            457 	.area HOME    (CODE)
   0003                     458 __sdcc_program_startup:
   0003 12 00 7A            459 	lcall	_main
                            460 ;	return from main will lock up
   0006 80 FE               461 	sjmp .
                            462 ;--------------------------------------------------------
                            463 ; code
                            464 ;--------------------------------------------------------
                            465 	.area CSEG    (CODE)
                            466 ;------------------------------------------------------------
                            467 ;Allocation info for local variables in function 'main'
                            468 ;------------------------------------------------------------
                            469 ;size                      Allocated to registers r5 
                            470 ;i                         Allocated to registers r6 
                            471 ;k                         Allocated to registers r4 
                            472 ;addr                      Allocated to registers r2 r3 
                            473 ;------------------------------------------------------------
                    0000    474 	G$main$0$0 ==.
                    0000    475 	C$apb_flash_loader.c$124$0$0 ==.
                            476 ;	../apb_flash_loader.c:124: void main ( void )  {
                            477 ;	-----------------------------------------
                            478 ;	 function main
                            479 ;	-----------------------------------------
   007A                     480 _main:
                    0002    481 	ar2 = 0x02
                    0003    482 	ar3 = 0x03
                    0004    483 	ar4 = 0x04
                    0005    484 	ar5 = 0x05
                    0006    485 	ar6 = 0x06
                    0007    486 	ar7 = 0x07
                    0000    487 	ar0 = 0x00
                    0001    488 	ar1 = 0x01
                    0000    489 	C$apb_flash_loader.c$133$1$1 ==.
                            490 ;	../apb_flash_loader.c:133: addr = 0x0000;
                            491 ;	genAssign
   007A 7A 00               492 	mov	r2,#0x00
   007C 7B 00               493 	mov	r3,#0x00
                    0004    494 	C$apb_flash_loader.c$137$1$1 ==.
                            495 ;	../apb_flash_loader.c:137: uart_config(BR_9600_6MHZ);
                            496 ;	genCall
   007E 75 82 26            497 	mov	dpl,#0x26
   0081 C0 02               498 	push	ar2
   0083 C0 03               499 	push	ar3
   0085 12 01 CC            500 	lcall	_uart_config
   0088 D0 03               501 	pop	ar3
   008A D0 02               502 	pop	ar2
                    0012    503 	C$apb_flash_loader.c$139$1$1 ==.
                            504 ;	../apb_flash_loader.c:139: printf("\r 8051s UART Test Program \n\r")	;
                            505 ;	genCall
   008C 75 82 E2            506 	mov	dpl,#__str_0
   008F 75 83 03            507 	mov	dph,#(__str_0 >> 8)
   0092 75 F0 80            508 	mov	b,#0x80
   0095 C0 02               509 	push	ar2
   0097 C0 03               510 	push	ar3
   0099 12 02 3E            511 	lcall	_printf
   009C D0 03               512 	pop	ar3
   009E D0 02               513 	pop	ar2
                    0026    514 	C$apb_flash_loader.c$143$1$1 ==.
                            515 ;	../apb_flash_loader.c:143: for ( k=0 ; k < 32; k++) {
                            516 ;	genAssign
   00A0 7C 20               517 	mov	r4,#0x20
   00A2                     518 00109$:
                    0028    519 	C$apb_flash_loader.c$144$2$2 ==.
                            520 ;	../apb_flash_loader.c:144: FlashErasePage(addr);
                            521 ;	genCall
   00A2 8A 82               522 	mov	dpl,r2
   00A4 8B 83               523 	mov	dph,r3
   00A6 C0 02               524 	push	ar2
   00A8 C0 03               525 	push	ar3
   00AA C0 04               526 	push	ar4
   00AC 12 02 7D            527 	lcall	_FlashErasePage
   00AF D0 04               528 	pop	ar4
   00B1 D0 03               529 	pop	ar3
   00B3 D0 02               530 	pop	ar2
                    003B    531 	C$apb_flash_loader.c$145$2$2 ==.
                            532 ;	../apb_flash_loader.c:145: addr = addr + 128;
                            533 ;	genPlus
                            534 ;	genPlusIncr
   00B5 74 80               535 	mov	a,#0x80
   00B7 25 02               536 	add	a,ar2
   00B9 FA                  537 	mov	r2,a
   00BA 74 00               538 	mov	a,#0x00
   00BC 35 03               539 	addc	a,ar3
   00BE FB                  540 	mov	r3,a
                            541 ;	genMinus
                            542 ;	genMinusDec
   00BF 1C                  543 	dec	r4
                    0046    544 	C$apb_flash_loader.c$143$2$2 ==.
                            545 ;	../apb_flash_loader.c:143: for ( k=0 ; k < 32; k++) {
                            546 ;	genIfx
   00C0 EC                  547 	mov	a,r4
                            548 ;	genIfxJump
   00C1 60 03               549 	jz	00126$
   00C3 02 00 A2            550 	ljmp	00109$
   00C6                     551 00126$:
                    004C    552 	C$apb_flash_loader.c$148$1$1 ==.
                            553 ;	../apb_flash_loader.c:148: addr = 0x0000;
                            554 ;	genAssign
   00C6 7A 00               555 	mov	r2,#0x00
   00C8 7B 00               556 	mov	r3,#0x00
                    0050    557 	C$apb_flash_loader.c$149$1$1 ==.
                            558 ;	../apb_flash_loader.c:149: size = 0;
                            559 ;	genAssign
   00CA 7D 00               560 	mov	r5,#0x00
                    0052    561 	C$apb_flash_loader.c$155$2$3 ==.
                            562 ;	../apb_flash_loader.c:155: for ( i =0; i< 10; i++) {
                            563 ;	genAssign
   00CC 7E 00               564 	mov	r6,#0x00
   00CE                     565 00110$:
                            566 ;	genCmpLt
                            567 ;	genCmp
   00CE BE 0A 00            568 	cjne	r6,#0x0A,00127$
   00D1                     569 00127$:
                            570 ;	genIfxJump
   00D1 40 03               571 	jc	00128$
   00D3 02 01 28            572 	ljmp	00113$
   00D6                     573 00128$:
                    005C    574 	C$apb_flash_loader.c$156$3$4 ==.
                            575 ;	../apb_flash_loader.c:156: k = uart_getchar();
                            576 ;	genCall
   00D6 C0 02               577 	push	ar2
   00D8 C0 03               578 	push	ar3
   00DA C0 05               579 	push	ar5
   00DC C0 06               580 	push	ar6
   00DE 12 02 1A            581 	lcall	_uart_getchar
   00E1 AC 82               582 	mov	r4,dpl
   00E3 D0 06               583 	pop	ar6
   00E5 D0 05               584 	pop	ar5
   00E7 D0 03               585 	pop	ar3
   00E9 D0 02               586 	pop	ar2
                    0071    587 	C$apb_flash_loader.c$157$3$4 ==.
                            588 ;	../apb_flash_loader.c:157: xdata_buffer[i] = k;
                            589 ;	genPlus
                            590 ;     genPlus aligned array
   00EB 8E 82               591 	mov	dpl,r6
   00ED 75 83 F3            592 	mov	dph,#(_xdata_buffer >> 8)
                            593 ;	genPointerSet
                            594 ;     genFarPointerSet
   00F0 EC                  595 	mov	a,r4
   00F1 F0                  596 	movx	@dptr,a
                    0078    597 	C$apb_flash_loader.c$158$3$4 ==.
                            598 ;	../apb_flash_loader.c:158: uart_putchar(k);
                            599 ;	genCall
   00F2 8C 82               600 	mov	dpl,r4
   00F4 C0 02               601 	push	ar2
   00F6 C0 03               602 	push	ar3
   00F8 C0 05               603 	push	ar5
   00FA C0 06               604 	push	ar6
   00FC 12 02 2C            605 	lcall	_uart_putchar
   00FF D0 06               606 	pop	ar6
   0101 D0 05               607 	pop	ar5
   0103 D0 03               608 	pop	ar3
   0105 D0 02               609 	pop	ar2
                    008D    610 	C$apb_flash_loader.c$159$3$4 ==.
                            611 ;	../apb_flash_loader.c:159: printf("\n\r");
                            612 ;	genCall
   0107 75 82 FF            613 	mov	dpl,#__str_1
   010A 75 83 03            614 	mov	dph,#(__str_1 >> 8)
   010D 75 F0 80            615 	mov	b,#0x80
   0110 C0 02               616 	push	ar2
   0112 C0 03               617 	push	ar3
   0114 C0 05               618 	push	ar5
   0116 C0 06               619 	push	ar6
   0118 12 02 3E            620 	lcall	_printf
   011B D0 06               621 	pop	ar6
   011D D0 05               622 	pop	ar5
   011F D0 03               623 	pop	ar3
   0121 D0 02               624 	pop	ar2
                    00A9    625 	C$apb_flash_loader.c$160$3$4 ==.
                            626 ;	../apb_flash_loader.c:160: size++;
                            627 ;	genPlus
                            628 ;	genPlusIncr
   0123 0D                  629 	inc	r5
                    00AA    630 	C$apb_flash_loader.c$155$2$3 ==.
                            631 ;	../apb_flash_loader.c:155: for ( i =0; i< 10; i++) {
                            632 ;	genPlus
                            633 ;	genPlusIncr
   0124 0E                  634 	inc	r6
   0125 02 00 CE            635 	ljmp	00110$
   0128                     636 00113$:
                    00AE    637 	C$apb_flash_loader.c$164$2$3 ==.
                            638 ;	../apb_flash_loader.c:164: printf("Captured 128 data in RAM ");
                            639 ;	genCall
   0128 75 82 02            640 	mov	dpl,#__str_2
   012B 75 83 04            641 	mov	dph,#(__str_2 >> 8)
   012E 75 F0 80            642 	mov	b,#0x80
   0131 C0 02               643 	push	ar2
   0133 C0 03               644 	push	ar3
   0135 C0 05               645 	push	ar5
   0137 12 02 3E            646 	lcall	_printf
   013A D0 05               647 	pop	ar5
   013C D0 03               648 	pop	ar3
   013E D0 02               649 	pop	ar2
                    00C6    650 	C$apb_flash_loader.c$165$2$3 ==.
                            651 ;	../apb_flash_loader.c:165: k = uart_getchar();
                            652 ;	genCall
   0140 C0 02               653 	push	ar2
   0142 C0 03               654 	push	ar3
   0144 C0 05               655 	push	ar5
   0146 12 02 1A            656 	lcall	_uart_getchar
   0149 D0 05               657 	pop	ar5
   014B D0 03               658 	pop	ar3
   014D D0 02               659 	pop	ar2
                    00D5    660 	C$apb_flash_loader.c$169$2$3 ==.
                            661 ;	../apb_flash_loader.c:169: for ( k=0 ; k < 10 ; k++) {
                            662 ;	genAssign
   014F 7C 0A               663 	mov	r4,#0x0A
   0151                     664 00116$:
                    00D7    665 	C$apb_flash_loader.c$170$3$5 ==.
                            666 ;	../apb_flash_loader.c:170: FlashProgramPage (xdata_buffer,addr,size);
                            667 ;	genAssign
   0151 8A 21               668 	mov	_FlashProgramPage_PARM_2,r2
   0153 8B 22               669 	mov	(_FlashProgramPage_PARM_2 + 1),r3
                            670 ;	genAssign
   0155 8D 23               671 	mov	_FlashProgramPage_PARM_3,r5
                            672 ;	genCall
   0157 75 82 00            673 	mov	dpl,#_xdata_buffer
   015A 75 83 F3            674 	mov	dph,#(_xdata_buffer >> 8)
   015D 75 F0 00            675 	mov	b,#0x00
   0160 C0 02               676 	push	ar2
   0162 C0 03               677 	push	ar3
   0164 C0 04               678 	push	ar4
   0166 C0 05               679 	push	ar5
   0168 12 02 D3            680 	lcall	_FlashProgramPage
   016B D0 05               681 	pop	ar5
   016D D0 04               682 	pop	ar4
   016F D0 03               683 	pop	ar3
   0171 D0 02               684 	pop	ar2
                    00F9    685 	C$apb_flash_loader.c$171$3$5 ==.
                            686 ;	../apb_flash_loader.c:171: printf(" Page Programmed ");
                            687 ;	genCall
   0173 75 82 1C            688 	mov	dpl,#__str_3
   0176 75 83 04            689 	mov	dph,#(__str_3 >> 8)
   0179 75 F0 80            690 	mov	b,#0x80
   017C C0 02               691 	push	ar2
   017E C0 03               692 	push	ar3
   0180 C0 04               693 	push	ar4
   0182 C0 05               694 	push	ar5
   0184 12 02 3E            695 	lcall	_printf
   0187 D0 05               696 	pop	ar5
   0189 D0 04               697 	pop	ar4
   018B D0 03               698 	pop	ar3
   018D D0 02               699 	pop	ar2
                    0115    700 	C$apb_flash_loader.c$172$3$5 ==.
                            701 ;	../apb_flash_loader.c:172: printf("\r \n");
                            702 ;	genCall
   018F 75 82 2E            703 	mov	dpl,#__str_4
   0192 75 83 04            704 	mov	dph,#(__str_4 >> 8)
   0195 75 F0 80            705 	mov	b,#0x80
   0198 C0 02               706 	push	ar2
   019A C0 03               707 	push	ar3
   019C C0 04               708 	push	ar4
   019E C0 05               709 	push	ar5
   01A0 12 02 3E            710 	lcall	_printf
   01A3 D0 05               711 	pop	ar5
   01A5 D0 04               712 	pop	ar4
   01A7 D0 03               713 	pop	ar3
   01A9 D0 02               714 	pop	ar2
                    0131    715 	C$apb_flash_loader.c$173$3$5 ==.
                            716 ;	../apb_flash_loader.c:173: addr = addr + 128;
                            717 ;	genPlus
                            718 ;	genPlusIncr
   01AB 74 80               719 	mov	a,#0x80
   01AD 25 02               720 	add	a,ar2
   01AF FA                  721 	mov	r2,a
   01B0 74 00               722 	mov	a,#0x00
   01B2 35 03               723 	addc	a,ar3
   01B4 FB                  724 	mov	r3,a
                            725 ;	genDjnz
   01B5 DC 02               726 	djnz	r4,00129$
   01B7 80 03               727 	sjmp	00130$
   01B9                     728 00129$:
   01B9 02 01 51            729 	ljmp	00116$
   01BC                     730 00130$:
                    0142    731 	C$apb_flash_loader.c$169$3$5 ==.
                            732 ;	../apb_flash_loader.c:169: for ( k=0 ; k < 10 ; k++) {
                    0142    733 	C$apb_flash_loader.c$176$2$3 ==.
                            734 ;	../apb_flash_loader.c:176: printf(" Completed ");
                            735 ;	genCall
   01BC 75 82 32            736 	mov	dpl,#__str_5
   01BF 75 83 04            737 	mov	dph,#(__str_5 >> 8)
   01C2 75 F0 80            738 	mov	b,#0x80
   01C5 12 02 3E            739 	lcall	_printf
                    014E    740 	C$apb_flash_loader.c$180$2$3 ==.
                            741 ;	../apb_flash_loader.c:180: while(1)
   01C8                     742 00102$:
   01C8 02 01 C8            743 	ljmp	00102$
   01CB                     744 00117$:
                    0151    745 	C$apb_flash_loader.c$186$1$1 ==.
                    0151    746 	XG$main$0$0 ==.
   01CB 22                  747 	ret
                            748 ;------------------------------------------------------------
                            749 ;Allocation info for local variables in function 'uart_config'
                            750 ;------------------------------------------------------------
                            751 ;baudRate                  Allocated to registers r2 
                            752 ;------------------------------------------------------------
                    0152    753 	G$uart_config$0$0 ==.
                    0152    754 	C$apb_flash_loader.c$188$1$1 ==.
                            755 ;	../apb_flash_loader.c:188: void uart_config( unsigned char baudRate)
                            756 ;	-----------------------------------------
                            757 ;	 function uart_config
                            758 ;	-----------------------------------------
   01CC                     759 _uart_config:
                            760 ;	genReceive
   01CC AA 82               761 	mov	r2,dpl
                    0154    762 	C$apb_flash_loader.c$190$1$1 ==.
                            763 ;	../apb_flash_loader.c:190: *(UART0_BASE_ADDR+UART_CONTROL1_OFFSET) =  baudRate;
                            764 ;	genPlus
                            765 ;	genPlusIncr
   01CE 85 1C 82            766 	mov	dpl,_UART0_BASE_ADDR
   01D1 85 1D 83            767 	mov	dph,(_UART0_BASE_ADDR + 1)
   01D4 A3                  768 	inc	dptr
   01D5 A3                  769 	inc	dptr
   01D6 A3                  770 	inc	dptr
   01D7 A3                  771 	inc	dptr
   01D8 A3                  772 	inc	dptr
   01D9 A3                  773 	inc	dptr
   01DA A3                  774 	inc	dptr
   01DB A3                  775 	inc	dptr
                            776 ;	genPointerSet
                            777 ;     genFarPointerSet
   01DC EA                  778 	mov	a,r2
   01DD F0                  779 	movx	@dptr,a
                    0164    780 	C$apb_flash_loader.c$191$1$1 ==.
                            781 ;	../apb_flash_loader.c:191: *(UART0_BASE_ADDR+UART_CONTROL2_OFFSET) = ( UART_CONTROL2_8BITS | UART_CONTROL2_NOPARITY);
                            782 ;	genPlus
                            783 ;	genPlusIncr
   01DE 74 0C               784 	mov	a,#0x0C
   01E0 25 1C               785 	add	a,_UART0_BASE_ADDR
   01E2 F5 82               786 	mov	dpl,a
   01E4 74 00               787 	mov	a,#0x00
   01E6 35 1D               788 	addc	a,(_UART0_BASE_ADDR + 1)
   01E8 F5 83               789 	mov	dph,a
                            790 ;	genPointerSet
                            791 ;     genFarPointerSet
   01EA 74 01               792 	mov	a,#0x01
   01EC F0                  793 	movx	@dptr,a
   01ED                     794 00101$:
                    0173    795 	C$apb_flash_loader.c$192$1$1 ==.
                    0173    796 	XG$uart_config$0$0 ==.
   01ED 22                  797 	ret
                            798 ;------------------------------------------------------------
                            799 ;Allocation info for local variables in function 'uartWaitXmt'
                            800 ;------------------------------------------------------------
                            801 ;status                    Allocated to registers r2 
                            802 ;------------------------------------------------------------
                    0174    803 	G$uartWaitXmt$0$0 ==.
                    0174    804 	C$apb_flash_loader.c$196$1$1 ==.
                            805 ;	../apb_flash_loader.c:196: void uartWaitXmt (void ){
                            806 ;	-----------------------------------------
                            807 ;	 function uartWaitXmt
                            808 ;	-----------------------------------------
   01EE                     809 _uartWaitXmt:
                    0174    810 	C$apb_flash_loader.c$199$1$1 ==.
                            811 ;	../apb_flash_loader.c:199: do
   01EE                     812 00101$:
                    0174    813 	C$apb_flash_loader.c$200$2$2 ==.
                            814 ;	../apb_flash_loader.c:200: {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
                            815 ;	genPlus
                            816 ;	genPlusIncr
   01EE 74 10               817 	mov	a,#0x10
   01F0 25 1C               818 	add	a,_UART0_BASE_ADDR
   01F2 F5 82               819 	mov	dpl,a
   01F4 74 00               820 	mov	a,#0x00
   01F6 35 1D               821 	addc	a,(_UART0_BASE_ADDR + 1)
   01F8 F5 83               822 	mov	dph,a
                            823 ;	genPointerGet
                            824 ;	genFarPointerGet
   01FA E0                  825 	movx	a,@dptr
   01FB FA                  826 	mov	r2,a
                    0182    827 	C$apb_flash_loader.c$201$1$1 ==.
                            828 ;	../apb_flash_loader.c:201: } while (!(status & UART_STATUS_TXREADY_MASK));
                            829 ;	genAnd
   01FC EA                  830 	mov	a,r2
                            831 ;	genIfxJump
   01FD 20 E0 03            832 	jb	acc.0,00107$
   0200 02 01 EE            833 	ljmp	00101$
   0203                     834 00107$:
   0203                     835 00104$:
                    0189    836 	C$apb_flash_loader.c$202$1$1 ==.
                    0189    837 	XG$uartWaitXmt$0$0 ==.
   0203 22                  838 	ret
                            839 ;------------------------------------------------------------
                            840 ;Allocation info for local variables in function 'uartWaitRxd'
                            841 ;------------------------------------------------------------
                            842 ;status                    Allocated to registers r2 
                            843 ;------------------------------------------------------------
                    018A    844 	G$uartWaitRxd$0$0 ==.
                    018A    845 	C$apb_flash_loader.c$205$1$1 ==.
                            846 ;	../apb_flash_loader.c:205: void uartWaitRxd (void ){
                            847 ;	-----------------------------------------
                            848 ;	 function uartWaitRxd
                            849 ;	-----------------------------------------
   0204                     850 _uartWaitRxd:
                    018A    851 	C$apb_flash_loader.c$208$1$1 ==.
                            852 ;	../apb_flash_loader.c:208: do
   0204                     853 00101$:
                    018A    854 	C$apb_flash_loader.c$209$2$2 ==.
                            855 ;	../apb_flash_loader.c:209: {   status = *(UART0_BASE_ADDR+UART_STATUS_OFFSET);
                            856 ;	genPlus
                            857 ;	genPlusIncr
   0204 74 10               858 	mov	a,#0x10
   0206 25 1C               859 	add	a,_UART0_BASE_ADDR
   0208 F5 82               860 	mov	dpl,a
   020A 74 00               861 	mov	a,#0x00
   020C 35 1D               862 	addc	a,(_UART0_BASE_ADDR + 1)
   020E F5 83               863 	mov	dph,a
                            864 ;	genPointerGet
                            865 ;	genFarPointerGet
   0210 E0                  866 	movx	a,@dptr
   0211 FA                  867 	mov	r2,a
                    0198    868 	C$apb_flash_loader.c$210$1$1 ==.
                            869 ;	../apb_flash_loader.c:210: } while (!(status & UART_STATUS_RXREADY_MASK));
                            870 ;	genAnd
   0212 EA                  871 	mov	a,r2
                            872 ;	genIfxJump
   0213 20 E1 03            873 	jb	acc.1,00107$
   0216 02 02 04            874 	ljmp	00101$
   0219                     875 00107$:
   0219                     876 00104$:
                    019F    877 	C$apb_flash_loader.c$211$1$1 ==.
                    019F    878 	XG$uartWaitRxd$0$0 ==.
   0219 22                  879 	ret
                            880 ;------------------------------------------------------------
                            881 ;Allocation info for local variables in function 'uart_getchar'
                            882 ;------------------------------------------------------------
                            883 ;uartRxData                Allocated to registers r2 
                            884 ;------------------------------------------------------------
                    01A0    885 	G$uart_getchar$0$0 ==.
                    01A0    886 	C$apb_flash_loader.c$218$1$1 ==.
                            887 ;	../apb_flash_loader.c:218: unsigned char uart_getchar(void)
                            888 ;	-----------------------------------------
                            889 ;	 function uart_getchar
                            890 ;	-----------------------------------------
   021A                     891 _uart_getchar:
                    01A0    892 	C$apb_flash_loader.c$222$1$1 ==.
                            893 ;	../apb_flash_loader.c:222: uartWaitRxd ();
                            894 ;	genCall
   021A 12 02 04            895 	lcall	_uartWaitRxd
                    01A3    896 	C$apb_flash_loader.c$223$1$1 ==.
                            897 ;	../apb_flash_loader.c:223: uartRxData = *(UART0_BASE_ADDR+UART_RXDATA_OFFSET);
                            898 ;	genPlus
                            899 ;	genPlusIncr
   021D 85 1C 82            900 	mov	dpl,_UART0_BASE_ADDR
   0220 85 1D 83            901 	mov	dph,(_UART0_BASE_ADDR + 1)
   0223 A3                  902 	inc	dptr
   0224 A3                  903 	inc	dptr
   0225 A3                  904 	inc	dptr
   0226 A3                  905 	inc	dptr
                            906 ;	genPointerGet
                            907 ;	genFarPointerGet
   0227 E0                  908 	movx	a,@dptr
   0228 FA                  909 	mov	r2,a
                    01AF    910 	C$apb_flash_loader.c$224$1$1 ==.
                            911 ;	../apb_flash_loader.c:224: return (uartRxData & 0xFF);
                            912 ;	genRet
   0229 8A 82               913 	mov	dpl,r2
   022B                     914 00101$:
                    01B1    915 	C$apb_flash_loader.c$225$1$1 ==.
                    01B1    916 	XG$uart_getchar$0$0 ==.
   022B 22                  917 	ret
                            918 ;------------------------------------------------------------
                            919 ;Allocation info for local variables in function 'uart_putchar'
                            920 ;------------------------------------------------------------
                            921 ;c                         Allocated to registers r2 
                            922 ;------------------------------------------------------------
                    01B2    923 	G$uart_putchar$0$0 ==.
                    01B2    924 	C$apb_flash_loader.c$229$1$1 ==.
                            925 ;	../apb_flash_loader.c:229: void uart_putchar(unsigned char c)
                            926 ;	-----------------------------------------
                            927 ;	 function uart_putchar
                            928 ;	-----------------------------------------
   022C                     929 _uart_putchar:
                            930 ;	genReceive
   022C AA 82               931 	mov	r2,dpl
                    01B4    932 	C$apb_flash_loader.c$231$1$1 ==.
                            933 ;	../apb_flash_loader.c:231: uartWaitXmt();
                            934 ;	genCall
   022E C0 02               935 	push	ar2
   0230 12 01 EE            936 	lcall	_uartWaitXmt
   0233 D0 02               937 	pop	ar2
                    01BB    938 	C$apb_flash_loader.c$232$1$1 ==.
                            939 ;	../apb_flash_loader.c:232: *(UART0_BASE_ADDR+UART_TXDATA_OFFSET) = c;
                            940 ;	genAssign
   0235 85 1C 82            941 	mov	dpl,_UART0_BASE_ADDR
   0238 85 1D 83            942 	mov	dph,(_UART0_BASE_ADDR + 1)
                            943 ;	genPointerSet
                            944 ;     genFarPointerSet
   023B EA                  945 	mov	a,r2
   023C F0                  946 	movx	@dptr,a
   023D                     947 00101$:
                    01C3    948 	C$apb_flash_loader.c$235$1$1 ==.
                    01C3    949 	XG$uart_putchar$0$0 ==.
   023D 22                  950 	ret
                            951 ;------------------------------------------------------------
                            952 ;Allocation info for local variables in function 'printf'
                            953 ;------------------------------------------------------------
                            954 ;str                       Allocated to registers r2 r3 r4 
                            955 ;c                         Allocated to registers r5 
                            956 ;------------------------------------------------------------
                    01C4    957 	G$printf$0$0 ==.
                    01C4    958 	C$apb_flash_loader.c$237$1$1 ==.
                            959 ;	../apb_flash_loader.c:237: void printf ( unsigned char * str ) {
                            960 ;	-----------------------------------------
                            961 ;	 function printf
                            962 ;	-----------------------------------------
   023E                     963 _printf:
                            964 ;	genReceive
   023E AA 82               965 	mov	r2,dpl
   0240 AB 83               966 	mov	r3,dph
   0242 AC F0               967 	mov	r4,b
                    01CA    968 	C$apb_flash_loader.c$240$1$1 ==.
                            969 ;	../apb_flash_loader.c:240: c = *str++;
                            970 ;	genPointerGet
                            971 ;	genGenPointerGet
   0244 8A 82               972 	mov	dpl,r2
   0246 8B 83               973 	mov	dph,r3
   0248 8C F0               974 	mov	b,r4
   024A 12 03 B1            975 	lcall	__gptrget
   024D FD                  976 	mov	r5,a
   024E A3                  977 	inc	dptr
   024F AA 82               978 	mov	r2,dpl
   0251 AB 83               979 	mov	r3,dph
                    01D9    980 	C$apb_flash_loader.c$242$1$1 ==.
                            981 ;	../apb_flash_loader.c:242: while (c != '\0') {
   0253                     982 00101$:
                            983 ;	genCmpEq
                            984 ;	gencjneshort
   0253 BD 00 03            985 	cjne	r5,#0x00,00108$
   0256 02 02 7C            986 	ljmp	00104$
   0259                     987 00108$:
                    01DF    988 	C$apb_flash_loader.c$243$2$2 ==.
                            989 ;	../apb_flash_loader.c:243: uart_putchar( c);
                            990 ;	genCall
   0259 8D 82               991 	mov	dpl,r5
   025B C0 02               992 	push	ar2
   025D C0 03               993 	push	ar3
   025F C0 04               994 	push	ar4
   0261 12 02 2C            995 	lcall	_uart_putchar
   0264 D0 04               996 	pop	ar4
   0266 D0 03               997 	pop	ar3
   0268 D0 02               998 	pop	ar2
                    01F0    999 	C$apb_flash_loader.c$244$2$2 ==.
                           1000 ;	../apb_flash_loader.c:244: c = *str++;
                           1001 ;	genPointerGet
                           1002 ;	genGenPointerGet
   026A 8A 82              1003 	mov	dpl,r2
   026C 8B 83              1004 	mov	dph,r3
   026E 8C F0              1005 	mov	b,r4
   0270 12 03 B1           1006 	lcall	__gptrget
   0273 FD                 1007 	mov	r5,a
   0274 A3                 1008 	inc	dptr
   0275 AA 82              1009 	mov	r2,dpl
   0277 AB 83              1010 	mov	r3,dph
   0279 02 02 53           1011 	ljmp	00101$
   027C                    1012 00104$:
                    0202   1013 	C$apb_flash_loader.c$246$1$1 ==.
                    0202   1014 	XG$printf$0$0 ==.
   027C 22                 1015 	ret
                           1016 ;------------------------------------------------------------
                           1017 ;Allocation info for local variables in function 'FlashErasePage'
                           1018 ;------------------------------------------------------------
                           1019 ;pageAddr                  Allocated to registers r2 r3 
                           1020 ;status                    Allocated to registers r4 
                           1021 ;------------------------------------------------------------
                    0203   1022 	G$FlashErasePage$0$0 ==.
                    0203   1023 	C$apb_flash_loader.c$251$1$1 ==.
                           1024 ;	../apb_flash_loader.c:251: void FlashErasePage(uint16_t  pageAddr )
                           1025 ;	-----------------------------------------
                           1026 ;	 function FlashErasePage
                           1027 ;	-----------------------------------------
   027D                    1028 _FlashErasePage:
                           1029 ;	genReceive
   027D AA 82              1030 	mov	r2,dpl
   027F AB 83              1031 	mov	r3,dph
                    0207   1032 	C$apb_flash_loader.c$256$1$1 ==.
                           1033 ;	../apb_flash_loader.c:256: do {
   0281                    1034 00101$:
                    0207   1035 	C$apb_flash_loader.c$257$2$2 ==.
                           1036 ;	../apb_flash_loader.c:257: status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);
                           1037 ;	genPlus
                           1038 ;	genPlusIncr
   0281 85 1A 82           1039 	mov	dpl,_FLASH_BASE_ADDR
   0284 85 1B 83           1040 	mov	dph,(_FLASH_BASE_ADDR + 1)
   0287 A3                 1041 	inc	dptr
   0288 A3                 1042 	inc	dptr
   0289 A3                 1043 	inc	dptr
   028A A3                 1044 	inc	dptr
                           1045 ;	genPointerGet
                           1046 ;	genFarPointerGet
   028B E0                 1047 	movx	a,@dptr
   028C FC                 1048 	mov	r4,a
                    0213   1049 	C$apb_flash_loader.c$259$1$1 ==.
                           1050 ;	../apb_flash_loader.c:259: } while (!(status & FLASH_STS_BUSY_MASK));
                           1051 ;	genAnd
   028D EC                 1052 	mov	a,r4
                           1053 ;	genIfxJump
   028E 20 E7 03           1054 	jb	acc.7,00112$
   0291 02 02 81           1055 	ljmp	00101$
   0294                    1056 00112$:
                    021A   1057 	C$apb_flash_loader.c$261$1$1 ==.
                           1058 ;	../apb_flash_loader.c:261: *(FLASH_BASE_ADDR+FLASH_ADDR1_OFFSET) = pageAddr;
                           1059 ;	genPlus
                           1060 ;	genPlusIncr
   0294 85 1A 82           1061 	mov	dpl,_FLASH_BASE_ADDR
   0297 85 1B 83           1062 	mov	dph,(_FLASH_BASE_ADDR + 1)
   029A A3                 1063 	inc	dptr
   029B A3                 1064 	inc	dptr
   029C A3                 1065 	inc	dptr
   029D A3                 1066 	inc	dptr
   029E A3                 1067 	inc	dptr
   029F A3                 1068 	inc	dptr
   02A0 A3                 1069 	inc	dptr
   02A1 A3                 1070 	inc	dptr
                           1071 ;	genCast
   02A2 8A 05              1072 	mov	ar5,r2
                           1073 ;	genPointerSet
                           1074 ;     genFarPointerSet
   02A4 ED                 1075 	mov	a,r5
   02A5 F0                 1076 	movx	@dptr,a
                    022C   1077 	C$apb_flash_loader.c$262$1$1 ==.
                           1078 ;	../apb_flash_loader.c:262: *(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET) = pageAddr >> 8;  // uper addr
                           1079 ;	genPlus
                           1080 ;	genPlusIncr
   02A6 74 0C              1081 	mov	a,#0x0C
   02A8 25 1A              1082 	add	a,_FLASH_BASE_ADDR
   02AA F5 82              1083 	mov	dpl,a
   02AC 74 00              1084 	mov	a,#0x00
   02AE 35 1B              1085 	addc	a,(_FLASH_BASE_ADDR + 1)
   02B0 F5 83              1086 	mov	dph,a
                           1087 ;	genGetByte
   02B2 8B 02              1088 	mov	ar2,r3
                           1089 ;	genPointerSet
                           1090 ;     genFarPointerSet
   02B4 EA                 1091 	mov	a,r2
   02B5 F0                 1092 	movx	@dptr,a
                    023C   1093 	C$apb_flash_loader.c$266$1$1 ==.
                           1094 ;	../apb_flash_loader.c:266: *(FLASH_BASE_ADDR+FLASH_CTRL_OFFSET)=  FLASH_CTRL_ERASE; // erase command
                           1095 ;	genAssign
   02B6 85 1A 82           1096 	mov	dpl,_FLASH_BASE_ADDR
   02B9 85 1B 83           1097 	mov	dph,(_FLASH_BASE_ADDR + 1)
                           1098 ;	genPointerSet
                           1099 ;     genFarPointerSet
   02BC 74 40              1100 	mov	a,#0x40
   02BE F0                 1101 	movx	@dptr,a
                    0245   1102 	C$apb_flash_loader.c$268$1$1 ==.
                           1103 ;	../apb_flash_loader.c:268: do {
   02BF                    1104 00104$:
                    0245   1105 	C$apb_flash_loader.c$269$2$3 ==.
                           1106 ;	../apb_flash_loader.c:269: status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);
                           1107 ;	genPlus
                           1108 ;	genPlusIncr
   02BF 85 1A 82           1109 	mov	dpl,_FLASH_BASE_ADDR
   02C2 85 1B 83           1110 	mov	dph,(_FLASH_BASE_ADDR + 1)
   02C5 A3                 1111 	inc	dptr
   02C6 A3                 1112 	inc	dptr
   02C7 A3                 1113 	inc	dptr
   02C8 A3                 1114 	inc	dptr
                           1115 ;	genPointerGet
                           1116 ;	genFarPointerGet
   02C9 E0                 1117 	movx	a,@dptr
   02CA FC                 1118 	mov	r4,a
                    0251   1119 	C$apb_flash_loader.c$271$1$1 ==.
                           1120 ;	../apb_flash_loader.c:271: } while (!(status & FLASH_STS_BUSY_MASK));
                           1121 ;	genAnd
   02CB EC                 1122 	mov	a,r4
                           1123 ;	genIfxJump
   02CC 20 E7 03           1124 	jb	acc.7,00113$
   02CF 02 02 BF           1125 	ljmp	00104$
   02D2                    1126 00113$:
   02D2                    1127 00107$:
                    0258   1128 	C$apb_flash_loader.c$274$1$1 ==.
                    0258   1129 	XG$FlashErasePage$0$0 ==.
   02D2 22                 1130 	ret
                           1131 ;------------------------------------------------------------
                           1132 ;Allocation info for local variables in function 'FlashProgramPage'
                           1133 ;------------------------------------------------------------
                           1134 ;addr                      Allocated with name '_FlashProgramPage_PARM_2'
                           1135 ;size                      Allocated with name '_FlashProgramPage_PARM_3'
                           1136 ;buffer                    Allocated with name '_FlashProgramPage_buffer_1_1'
                           1137 ;page_addr                 Allocated to registers r5 r6 
                           1138 ;i                         Allocated to registers r7 
                           1139 ;status                    Allocated to registers 
                           1140 ;------------------------------------------------------------
                    0259   1141 	G$FlashProgramPage$0$0 ==.
                    0259   1142 	C$apb_flash_loader.c$279$1$1 ==.
                           1143 ;	../apb_flash_loader.c:279: void FlashProgramPage ( unsigned char * buffer  , unsigned int addr , unsigned char size) {
                           1144 ;	-----------------------------------------
                           1145 ;	 function FlashProgramPage
                           1146 ;	-----------------------------------------
   02D3                    1147 _FlashProgramPage:
                           1148 ;	genReceive
   02D3 85 82 24           1149 	mov	_FlashProgramPage_buffer_1_1,dpl
   02D6 85 83 25           1150 	mov	(_FlashProgramPage_buffer_1_1 + 1),dph
   02D9 85 F0 26           1151 	mov	(_FlashProgramPage_buffer_1_1 + 2),b
                    0262   1152 	C$apb_flash_loader.c$283$1$1 ==.
                           1153 ;	../apb_flash_loader.c:283: page_addr = addr;
                           1154 ;	genAssign
   02DC AD 21              1155 	mov	r5,_FlashProgramPage_PARM_2
   02DE AE 22              1156 	mov	r6,(_FlashProgramPage_PARM_2 + 1)
                    0266   1157 	C$apb_flash_loader.c$285$1$1 ==.
                           1158 ;	../apb_flash_loader.c:285: FlashBusyCheck();  // check the last programming operation is complete or not;
                           1159 ;	genCall
   02E0 C0 05              1160 	push	ar5
   02E2 C0 06              1161 	push	ar6
   02E4 12 03 9D           1162 	lcall	_FlashBusyCheck
   02E7 D0 06              1163 	pop	ar6
   02E9 D0 05              1164 	pop	ar5
                    0271   1165 	C$apb_flash_loader.c$287$1$1 ==.
                           1166 ;	../apb_flash_loader.c:287: *(FLASH_BASE_ADDR + FLASH_ADDR1_OFFSET) = page_addr;
                           1167 ;	genPlus
                           1168 ;	genPlusIncr
   02EB 85 1A 82           1169 	mov	dpl,_FLASH_BASE_ADDR
   02EE 85 1B 83           1170 	mov	dph,(_FLASH_BASE_ADDR + 1)
   02F1 A3                 1171 	inc	dptr
   02F2 A3                 1172 	inc	dptr
   02F3 A3                 1173 	inc	dptr
   02F4 A3                 1174 	inc	dptr
   02F5 A3                 1175 	inc	dptr
   02F6 A3                 1176 	inc	dptr
   02F7 A3                 1177 	inc	dptr
   02F8 A3                 1178 	inc	dptr
                           1179 ;	genCast
   02F9 8D 07              1180 	mov	ar7,r5
                           1181 ;	genPointerSet
                           1182 ;     genFarPointerSet
   02FB EF                 1183 	mov	a,r7
   02FC F0                 1184 	movx	@dptr,a
                    0283   1185 	C$apb_flash_loader.c$288$1$1 ==.
                           1186 ;	../apb_flash_loader.c:288: *(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET)   = page_addr >> 8;  // uper addr
                           1187 ;	genPlus
                           1188 ;	genPlusIncr
   02FD 74 0C              1189 	mov	a,#0x0C
   02FF 25 1A              1190 	add	a,_FLASH_BASE_ADDR
   0301 F5 82              1191 	mov	dpl,a
   0303 74 00              1192 	mov	a,#0x00
   0305 35 1B              1193 	addc	a,(_FLASH_BASE_ADDR + 1)
   0307 F5 83              1194 	mov	dph,a
                           1195 ;	genGetByte
   0309 8E 07              1196 	mov	ar7,r6
                           1197 ;	genPointerSet
                           1198 ;     genFarPointerSet
   030B EF                 1199 	mov	a,r7
   030C F0                 1200 	movx	@dptr,a
                    0293   1201 	C$apb_flash_loader.c$290$1$1 ==.
                           1202 ;	../apb_flash_loader.c:290: status = *(FLASH_BASE_ADDR+FLASH_DATA_OFFSET) ; // read a byte from the page buffer to load it properly
                           1203 ;	genPlus
                           1204 ;	genPlusIncr
   030D 74 10              1205 	mov	a,#0x10
   030F 25 1A              1206 	add	a,_FLASH_BASE_ADDR
   0311 F5 82              1207 	mov	dpl,a
   0313 74 00              1208 	mov	a,#0x00
   0315 35 1B              1209 	addc	a,(_FLASH_BASE_ADDR + 1)
   0317 F5 83              1210 	mov	dph,a
                           1211 ;	genPointerGet
                           1212 ;	genFarPointerGet
   0319 E0                 1213 	movx	a,@dptr
                    02A0   1214 	C$apb_flash_loader.c$291$1$1 ==.
                           1215 ;	../apb_flash_loader.c:291: FlashBusyCheck();
                           1216 ;	genCall
   031A C0 05              1217 	push	ar5
   031C C0 06              1218 	push	ar6
   031E 12 03 9D           1219 	lcall	_FlashBusyCheck
   0321 D0 06              1220 	pop	ar6
   0323 D0 05              1221 	pop	ar5
                    02AB   1222 	C$apb_flash_loader.c$293$1$1 ==.
                           1223 ;	../apb_flash_loader.c:293: for ( i = 0; i < size ; i++) {
                           1224 ;	genAssign
   0325 7F 00              1225 	mov	r7,#0x00
   0327                    1226 00101$:
                           1227 ;	genCmpLt
                           1228 ;	genCmp
   0327 C3                 1229 	clr	c
   0328 EF                 1230 	mov	a,r7
   0329 95 23              1231 	subb	a,_FlashProgramPage_PARM_3
                           1232 ;	genIfxJump
   032B 40 03              1233 	jc	00109$
   032D 02 03 90           1234 	ljmp	00104$
   0330                    1235 00109$:
                    02B6   1236 	C$apb_flash_loader.c$294$2$2 ==.
                           1237 ;	../apb_flash_loader.c:294: *(FLASH_BASE_ADDR+FLASH_ADDR1_OFFSET)= page_addr;
                           1238 ;	genPlus
                           1239 ;	genPlusIncr
   0330 85 1A 82           1240 	mov	dpl,_FLASH_BASE_ADDR
   0333 85 1B 83           1241 	mov	dph,(_FLASH_BASE_ADDR + 1)
   0336 A3                 1242 	inc	dptr
   0337 A3                 1243 	inc	dptr
   0338 A3                 1244 	inc	dptr
   0339 A3                 1245 	inc	dptr
   033A A3                 1246 	inc	dptr
   033B A3                 1247 	inc	dptr
   033C A3                 1248 	inc	dptr
   033D A3                 1249 	inc	dptr
                           1250 ;	genCast
   033E 8D 00              1251 	mov	ar0,r5
                           1252 ;	genPointerSet
                           1253 ;     genFarPointerSet
   0340 E8                 1254 	mov	a,r0
   0341 F0                 1255 	movx	@dptr,a
                    02C8   1256 	C$apb_flash_loader.c$295$2$2 ==.
                           1257 ;	../apb_flash_loader.c:295: *(FLASH_BASE_ADDR+FLASH_ADDR2_OFFSET)= page_addr >> 8;
                           1258 ;	genPlus
                           1259 ;	genPlusIncr
   0342 74 0C              1260 	mov	a,#0x0C
   0344 25 1A              1261 	add	a,_FLASH_BASE_ADDR
   0346 F5 82              1262 	mov	dpl,a
   0348 74 00              1263 	mov	a,#0x00
   034A 35 1B              1264 	addc	a,(_FLASH_BASE_ADDR + 1)
   034C F5 83              1265 	mov	dph,a
                           1266 ;	genGetByte
   034E 8E 00              1267 	mov	ar0,r6
                           1268 ;	genPointerSet
                           1269 ;     genFarPointerSet
   0350 E8                 1270 	mov	a,r0
   0351 F0                 1271 	movx	@dptr,a
                    02D8   1272 	C$apb_flash_loader.c$296$2$2 ==.
                           1273 ;	../apb_flash_loader.c:296: *(FLASH_BASE_ADDR+FLASH_DATA_OFFSET)=  buffer[i];
                           1274 ;	genPlus
                           1275 ;	genPlusIncr
   0352 74 10              1276 	mov	a,#0x10
   0354 25 1A              1277 	add	a,_FLASH_BASE_ADDR
   0356 F8                 1278 	mov	r0,a
   0357 74 00              1279 	mov	a,#0x00
   0359 35 1B              1280 	addc	a,(_FLASH_BASE_ADDR + 1)
   035B F9                 1281 	mov	r1,a
                           1282 ;	genPlus
   035C E5 07              1283 	mov	a,ar7
   035E 25 24              1284 	add	a,_FlashProgramPage_buffer_1_1
   0360 FA                 1285 	mov	r2,a
   0361 74 00              1286 	mov	a,#0x00
   0363 35 25              1287 	addc	a,(_FlashProgramPage_buffer_1_1 + 1)
   0365 FB                 1288 	mov	r3,a
   0366 AC 26              1289 	mov	r4,(_FlashProgramPage_buffer_1_1 + 2)
                           1290 ;	genPointerGet
                           1291 ;	genGenPointerGet
   0368 8A 82              1292 	mov	dpl,r2
   036A 8B 83              1293 	mov	dph,r3
   036C 8C F0              1294 	mov	b,r4
   036E 12 03 B1           1295 	lcall	__gptrget
   0371 FA                 1296 	mov	r2,a
                           1297 ;	genPointerSet
                           1298 ;     genFarPointerSet
   0372 88 82              1299 	mov	dpl,r0
   0374 89 83              1300 	mov	dph,r1
   0376 EA                 1301 	mov	a,r2
   0377 F0                 1302 	movx	@dptr,a
                    02FE   1303 	C$apb_flash_loader.c$297$2$2 ==.
                           1304 ;	../apb_flash_loader.c:297: FlashBusyCheck();
                           1305 ;	genCall
   0378 C0 05              1306 	push	ar5
   037A C0 06              1307 	push	ar6
   037C C0 07              1308 	push	ar7
   037E 12 03 9D           1309 	lcall	_FlashBusyCheck
   0381 D0 07              1310 	pop	ar7
   0383 D0 06              1311 	pop	ar6
   0385 D0 05              1312 	pop	ar5
                    030D   1313 	C$apb_flash_loader.c$298$2$2 ==.
                           1314 ;	../apb_flash_loader.c:298: page_addr++;
                           1315 ;	genPlus
                           1316 ;	genPlusIncr
   0387 0D                 1317 	inc	r5
   0388 BD 00 01           1318 	cjne	r5,#0x00,00110$
   038B 0E                 1319 	inc	r6
   038C                    1320 00110$:
                    0312   1321 	C$apb_flash_loader.c$293$1$1 ==.
                           1322 ;	../apb_flash_loader.c:293: for ( i = 0; i < size ; i++) {
                           1323 ;	genPlus
                           1324 ;	genPlusIncr
   038C 0F                 1325 	inc	r7
   038D 02 03 27           1326 	ljmp	00101$
   0390                    1327 00104$:
                    0316   1328 	C$apb_flash_loader.c$301$1$1 ==.
                           1329 ;	../apb_flash_loader.c:301: *(FLASH_BASE_ADDR+FLASH_CTRL_OFFSET)=  FLASH_CTRL_PROGRAM;
                           1330 ;	genAssign
   0390 85 1A 82           1331 	mov	dpl,_FLASH_BASE_ADDR
   0393 85 1B 83           1332 	mov	dph,(_FLASH_BASE_ADDR + 1)
                           1333 ;	genPointerSet
                           1334 ;     genFarPointerSet
   0396 74 80              1335 	mov	a,#0x80
   0398 F0                 1336 	movx	@dptr,a
                    031F   1337 	C$apb_flash_loader.c$304$1$1 ==.
                           1338 ;	../apb_flash_loader.c:304: FlashBusyCheck();
                           1339 ;	genCall
   0399 12 03 9D           1340 	lcall	_FlashBusyCheck
   039C                    1341 00105$:
                    0322   1342 	C$apb_flash_loader.c$306$1$1 ==.
                    0322   1343 	XG$FlashProgramPage$0$0 ==.
   039C 22                 1344 	ret
                           1345 ;------------------------------------------------------------
                           1346 ;Allocation info for local variables in function 'FlashBusyCheck'
                           1347 ;------------------------------------------------------------
                           1348 ;status                    Allocated to registers r2 
                           1349 ;------------------------------------------------------------
                    0323   1350 	G$FlashBusyCheck$0$0 ==.
                    0323   1351 	C$apb_flash_loader.c$309$1$1 ==.
                           1352 ;	../apb_flash_loader.c:309: void FlashBusyCheck(void) {
                           1353 ;	-----------------------------------------
                           1354 ;	 function FlashBusyCheck
                           1355 ;	-----------------------------------------
   039D                    1356 _FlashBusyCheck:
                    0323   1357 	C$apb_flash_loader.c$312$1$1 ==.
                           1358 ;	../apb_flash_loader.c:312: do {
   039D                    1359 00101$:
                    0323   1360 	C$apb_flash_loader.c$313$2$2 ==.
                           1361 ;	../apb_flash_loader.c:313: status = *(FLASH_BASE_ADDR+FLASH_STS_OFFSET);
                           1362 ;	genPlus
                           1363 ;	genPlusIncr
   039D 85 1A 82           1364 	mov	dpl,_FLASH_BASE_ADDR
   03A0 85 1B 83           1365 	mov	dph,(_FLASH_BASE_ADDR + 1)
   03A3 A3                 1366 	inc	dptr
   03A4 A3                 1367 	inc	dptr
   03A5 A3                 1368 	inc	dptr
   03A6 A3                 1369 	inc	dptr
                           1370 ;	genPointerGet
                           1371 ;	genFarPointerGet
   03A7 E0                 1372 	movx	a,@dptr
   03A8 FA                 1373 	mov	r2,a
                    032F   1374 	C$apb_flash_loader.c$315$1$1 ==.
                           1375 ;	../apb_flash_loader.c:315: } while (!(status & FLASH_STS_BUSY_MASK));
                           1376 ;	genAnd
   03A9 EA                 1377 	mov	a,r2
                           1378 ;	genIfxJump
   03AA 20 E7 03           1379 	jb	acc.7,00107$
   03AD 02 03 9D           1380 	ljmp	00101$
   03B0                    1381 00107$:
   03B0                    1382 00104$:
                    0336   1383 	C$apb_flash_loader.c$317$1$1 ==.
                    0336   1384 	XG$FlashBusyCheck$0$0 ==.
   03B0 22                 1385 	ret
                           1386 	.area CSEG    (CODE)
                           1387 	.area CONST   (CODE)
                    0000   1388 G$ascii$0$0 == .
   03D1                    1389 _ascii:
   03D1 30 31 32 33 34 35  1390 	.ascii "0123456789ABCDEF"
        36 37 38 39 41 42
        43 44 45 46
   03E1 00                 1391 	.db 0x00
                    1000   1392 G$FLASH$0$0 == 0x1000
                    1000   1393 _FLASH	=	0x1000
                    0011   1394 F___apb_flash_loader$_str_0$0$0 == .
   03E2                    1395 __str_0:
   03E2 0D                 1396 	.db 0x0D
   03E3 20 38 30 35 31 73  1397 	.ascii " 8051s UART Test Program "
        20 55 41 52 54 20
        54 65 73 74 20 50
        72 6F 67 72 61 6D
        20
   03FC 0A                 1398 	.db 0x0A
   03FD 0D                 1399 	.db 0x0D
   03FE 00                 1400 	.db 0x00
                    002E   1401 F___apb_flash_loader$_str_1$0$0 == .
   03FF                    1402 __str_1:
   03FF 0A                 1403 	.db 0x0A
   0400 0D                 1404 	.db 0x0D
   0401 00                 1405 	.db 0x00
                    0031   1406 F___apb_flash_loader$_str_2$0$0 == .
   0402                    1407 __str_2:
   0402 43 61 70 74 75 72  1408 	.ascii "Captured 128 data in RAM "
        65 64 20 31 32 38
        20 64 61 74 61 20
        69 6E 20 52 41 4D
        20
   041B 00                 1409 	.db 0x00
                    004B   1410 F___apb_flash_loader$_str_3$0$0 == .
   041C                    1411 __str_3:
   041C 20 50 61 67 65 20  1412 	.ascii " Page Programmed "
        50 72 6F 67 72 61
        6D 6D 65 64 20
   042D 00                 1413 	.db 0x00
                    005D   1414 F___apb_flash_loader$_str_4$0$0 == .
   042E                    1415 __str_4:
   042E 0D                 1416 	.db 0x0D
   042F 20                 1417 	.ascii " "
   0430 0A                 1418 	.db 0x0A
   0431 00                 1419 	.db 0x00
                    0061   1420 F___apb_flash_loader$_str_5$0$0 == .
   0432                    1421 __str_5:
   0432 20 43 6F 6D 70 6C  1422 	.ascii " Completed "
        65 74 65 64 20
   043D 00                 1423 	.db 0x00
                           1424 	.area XINIT   (CODE)
                           1425 	.area CABS    (ABS,CODE)
