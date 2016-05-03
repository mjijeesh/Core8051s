                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Tue May 03 17:52:18 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___cli
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _last_rt_subaddress
                             13 	.globl _user_input
                             14 	.globl _display_brt_data_PARM_2
                             15 	.globl _temp
                             16 	.globl _last_msg_no
                             17 	.globl _last_sub_address
                             18 	.globl _rx_char_ptr
                             19 	.globl _rx_char
                             20 	.globl _key
                             21 	.globl _display_help
                             22 	.globl _display_prompt
                             23 	.globl _get_key_selection
                             24 	.globl _read_user_input
                             25 	.globl _display_brt_regs
                             26 	.globl _display_brt_data
                             27 	.globl _process_uart_data
                             28 	.globl _display_mem_data
                             29 ;--------------------------------------------------------
                             30 ; special function registers
                             31 ;--------------------------------------------------------
                             32 	.area RSEG    (DATA)
                             33 ;--------------------------------------------------------
                             34 ; special function bits
                             35 ;--------------------------------------------------------
                             36 	.area RSEG    (DATA)
                             37 ;--------------------------------------------------------
                             38 ; overlayable register banks
                             39 ;--------------------------------------------------------
                             40 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      41 	.ds 8
                             42 ;--------------------------------------------------------
                             43 ; internal ram data
                             44 ;--------------------------------------------------------
                             45 	.area DSEG    (DATA)
                    0000     46 Ldisplay_brt_regs$sloc0$1$0==.
   0018                      47 _display_brt_regs_sloc0_1_0:
   0018                      48 	.ds 1
                             49 ;--------------------------------------------------------
                             50 ; overlayable items in internal ram 
                             51 ;--------------------------------------------------------
                             52 	.area OSEG    (OVR,DATA)
                             53 ;--------------------------------------------------------
                             54 ; indirectly addressable internal ram data
                             55 ;--------------------------------------------------------
                             56 	.area ISEG    (DATA)
                             57 ;--------------------------------------------------------
                             58 ; absolute internal ram data
                             59 ;--------------------------------------------------------
                             60 	.area IABS    (ABS,DATA)
                             61 	.area IABS    (ABS,DATA)
                             62 ;--------------------------------------------------------
                             63 ; bit data
                             64 ;--------------------------------------------------------
                             65 	.area BSEG    (BIT)
                             66 ;--------------------------------------------------------
                             67 ; paged external ram data
                             68 ;--------------------------------------------------------
                             69 	.area PSEG    (PAG,XDATA)
                             70 ;--------------------------------------------------------
                             71 ; external ram data
                             72 ;--------------------------------------------------------
                             73 	.area XSEG    (XDATA)
                    0000     74 G$key$0$0==.
   0000                      75 _key::
   0000                      76 	.ds 1
                    0001     77 G$rx_char$0$0==.
   0001                      78 _rx_char::
   0001                      79 	.ds 10
                    000B     80 G$rx_char_ptr$0$0==.
   000B                      81 _rx_char_ptr::
   000B                      82 	.ds 3
                    000E     83 G$last_sub_address$0$0==.
   000E                      84 _last_sub_address::
   000E                      85 	.ds 1
                    000F     86 G$last_msg_no$0$0==.
   000F                      87 _last_msg_no::
   000F                      88 	.ds 1
                    0010     89 G$temp$0$0==.
   0010                      90 _temp::
   0010                      91 	.ds 1
                    0011     92 Ldisplay_help$tx_data$1$1==.
   0011                      93 _display_help_tx_data_1_1:
   0011                      94 	.ds 960
                    03D1     95 Lget_key_selection$rx_data$1$1==.
   03D1                      96 _get_key_selection_rx_data_1_1:
   03D1                      97 	.ds 2
                    03D3     98 Lread_user_input$rx_char_ptr$1$1==.
   03D3                      99 _read_user_input_rx_char_ptr_1_1:
   03D3                     100 	.ds 3
                    03D6    101 Lread_user_input$recv_char$1$1==.
   03D6                     102 _read_user_input_recv_char_1_1:
   03D6                     103 	.ds 1
                    03D7    104 Lread_user_input$index$1$1==.
   03D7                     105 _read_user_input_index_1_1:
   03D7                     106 	.ds 1
                    03D8    107 Ldisplay_brt_regs$mem_addr$1$1==.
   03D8                     108 _display_brt_regs_mem_addr_1_1:
   03D8                     109 	.ds 4
                    03DC    110 Ldisplay_brt_regs$i$1$1==.
   03DC                     111 _display_brt_regs_i_1_1:
   03DC                     112 	.ds 1
                    03DD    113 Ldisplay_brt_data$subaddr$1$1==.
   03DD                     114 _display_brt_data_PARM_2:
   03DD                     115 	.ds 1
                    03DE    116 Ldisplay_brt_data$brt_baseaddr$1$1==.
   03DE                     117 _display_brt_data_brt_baseaddr_1_1:
   03DE                     118 	.ds 4
                    03E2    119 Ldisplay_brt_data$tx_sub_address$1$1==.
   03E2                     120 _display_brt_data_tx_sub_address_1_1:
   03E2                     121 	.ds 2
                    03E4    122 Ldisplay_brt_data$rx_sub_address$1$1==.
   03E4                     123 _display_brt_data_rx_sub_address_1_1:
   03E4                     124 	.ds 2
                    03E6    125 Ldisplay_brt_data$i$1$1==.
   03E6                     126 _display_brt_data_i_1_1:
   03E6                     127 	.ds 1
                    03E7    128 Ldisplay_brt_data$m$1$1==.
   03E7                     129 _display_brt_data_m_1_1:
   03E7                     130 	.ds 1
                    03E8    131 Lprocess_uart_data$key$1$1==.
   03E8                     132 _process_uart_data_key_1_1:
   03E8                     133 	.ds 1
                    03E9    134 Ldisplay_mem_data$mem_data$1$1==.
   03E9                     135 _display_mem_data_mem_data_1_1:
   03E9                     136 	.ds 2
                    03EB    137 Ldisplay_mem_data$tx_sub_address$1$1==.
   03EB                     138 _display_mem_data_tx_sub_address_1_1:
   03EB                     139 	.ds 2
                    03ED    140 Ldisplay_mem_data$rx_sub_address$1$1==.
   03ED                     141 _display_mem_data_rx_sub_address_1_1:
   03ED                     142 	.ds 2
                    03EF    143 Ldisplay_mem_data$i$1$1==.
   03EF                     144 _display_mem_data_i_1_1:
   03EF                     145 	.ds 1
                    03F0    146 Ldisplay_mem_data$m$1$1==.
   03F0                     147 _display_mem_data_m_1_1:
   03F0                     148 	.ds 1
                            149 ;--------------------------------------------------------
                            150 ; external initialized ram data
                            151 ;--------------------------------------------------------
                            152 	.area XISEG   (XDATA)
                    0000    153 G$user_input$0$0==.
   0DA0                     154 _user_input::
   0DA0                     155 	.ds 4
                    0004    156 G$last_rt_subaddress$0$0==.
   0DA4                     157 _last_rt_subaddress::
   0DA4                     158 	.ds 1
                            159 	.area HOME    (CODE)
                            160 	.area GSINIT0 (CODE)
                            161 	.area GSINIT1 (CODE)
                            162 	.area GSINIT2 (CODE)
                            163 	.area GSINIT3 (CODE)
                            164 	.area GSINIT4 (CODE)
                            165 	.area GSINIT5 (CODE)
                            166 	.area GSINIT  (CODE)
                            167 	.area GSFINAL (CODE)
                            168 	.area CSEG    (CODE)
                            169 ;--------------------------------------------------------
                            170 ; global & static initialisations
                            171 ;--------------------------------------------------------
                            172 	.area HOME    (CODE)
                            173 	.area GSINIT  (CODE)
                            174 	.area GSFINAL (CODE)
                            175 	.area GSINIT  (CODE)
                            176 ;--------------------------------------------------------
                            177 ; Home
                            178 ;--------------------------------------------------------
                            179 	.area HOME    (CODE)
                            180 	.area HOME    (CODE)
                            181 ;--------------------------------------------------------
                            182 ; code
                            183 ;--------------------------------------------------------
                            184 	.area CSEG    (CODE)
                            185 ;------------------------------------------------------------
                            186 ;Allocation info for local variables in function 'display_help'
                            187 ;------------------------------------------------------------
                            188 ;tx_data                   Allocated with name '_display_help_tx_data_1_1'
                            189 ;------------------------------------------------------------
                    0000    190 	G$display_help$0$0 ==.
                    0000    191 	C$cli.c$20$0$0 ==.
                            192 ;	../cli.c:20: void display_help(void){
                            193 ;	-----------------------------------------
                            194 ;	 function display_help
                            195 ;	-----------------------------------------
   0062                     196 _display_help:
                    0002    197 	ar2 = 0x02
                    0003    198 	ar3 = 0x03
                    0004    199 	ar4 = 0x04
                    0005    200 	ar5 = 0x05
                    0006    201 	ar6 = 0x06
                    0007    202 	ar7 = 0x07
                    0000    203 	ar0 = 0x00
                    0001    204 	ar1 = 0x01
                    0000    205 	C$cli.c$21$1$0 ==.
                            206 ;	../cli.c:21: uint8_t tx_data[24][40] = {
                            207 ;	genPointerSet
                            208 ;     genFarPointerSet
   0062 90 00 11            209 	mov	dptr,#_display_help_tx_data_1_1
   0065 74 0D               210 	mov	a,#0x0D
   0067 F0                  211 	movx	@dptr,a
                            212 ;	genPointerSet
                            213 ;     genFarPointerSet
   0068 90 00 12            214 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0001)
   006B 74 0A               215 	mov	a,#0x0A
   006D F0                  216 	movx	@dptr,a
                            217 ;	genPointerSet
                            218 ;     genFarPointerSet
   006E 90 00 13            219 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0002)
   0071 74 52               220 	mov	a,#0x52
   0073 F0                  221 	movx	@dptr,a
                            222 ;	genPointerSet
                            223 ;     genFarPointerSet
   0074 90 00 14            224 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0003)
   0077 74 20               225 	mov	a,#0x20
   0079 F0                  226 	movx	@dptr,a
                            227 ;	genPointerSet
                            228 ;     genFarPointerSet
   007A 90 00 15            229 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0004)
   007D 74 52               230 	mov	a,#0x52
   007F F0                  231 	movx	@dptr,a
                            232 ;	genPointerSet
                            233 ;     genFarPointerSet
   0080 90 00 16            234 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0005)
   0083 74 65               235 	mov	a,#0x65
   0085 F0                  236 	movx	@dptr,a
                            237 ;	genPointerSet
                            238 ;     genFarPointerSet
   0086 90 00 17            239 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0006)
   0089 74 61               240 	mov	a,#0x61
   008B F0                  241 	movx	@dptr,a
                            242 ;	genPointerSet
                            243 ;     genFarPointerSet
   008C 90 00 18            244 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0007)
   008F 74 64               245 	mov	a,#0x64
   0091 F0                  246 	movx	@dptr,a
                            247 ;	genPointerSet
                            248 ;     genFarPointerSet
   0092 90 00 19            249 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0008)
   0095 74 20               250 	mov	a,#0x20
   0097 F0                  251 	movx	@dptr,a
                            252 ;	genPointerSet
                            253 ;     genFarPointerSet
   0098 90 00 1A            254 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0009)
   009B 74 42               255 	mov	a,#0x42
   009D F0                  256 	movx	@dptr,a
                            257 ;	genPointerSet
                            258 ;     genFarPointerSet
   009E 90 00 1B            259 	mov	dptr,#(_display_help_tx_data_1_1 + 0x000a)
   00A1 74 52               260 	mov	a,#0x52
   00A3 F0                  261 	movx	@dptr,a
                            262 ;	genPointerSet
                            263 ;     genFarPointerSet
   00A4 90 00 1C            264 	mov	dptr,#(_display_help_tx_data_1_1 + 0x000b)
   00A7 74 54               265 	mov	a,#0x54
   00A9 F0                  266 	movx	@dptr,a
                            267 ;	genPointerSet
                            268 ;     genFarPointerSet
   00AA 90 00 1D            269 	mov	dptr,#(_display_help_tx_data_1_1 + 0x000c)
   00AD 74 20               270 	mov	a,#0x20
   00AF F0                  271 	movx	@dptr,a
                            272 ;	genPointerSet
                            273 ;     genFarPointerSet
   00B0 90 00 1E            274 	mov	dptr,#(_display_help_tx_data_1_1 + 0x000d)
   00B3 74 52               275 	mov	a,#0x52
   00B5 F0                  276 	movx	@dptr,a
                            277 ;	genPointerSet
                            278 ;     genFarPointerSet
   00B6 90 00 1F            279 	mov	dptr,#(_display_help_tx_data_1_1 + 0x000e)
   00B9 74 65               280 	mov	a,#0x65
   00BB F0                  281 	movx	@dptr,a
                            282 ;	genPointerSet
                            283 ;     genFarPointerSet
   00BC 90 00 20            284 	mov	dptr,#(_display_help_tx_data_1_1 + 0x000f)
   00BF 74 67               285 	mov	a,#0x67
   00C1 F0                  286 	movx	@dptr,a
                            287 ;	genPointerSet
                            288 ;     genFarPointerSet
   00C2 90 00 21            289 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0010)
   00C5 74 69               290 	mov	a,#0x69
   00C7 F0                  291 	movx	@dptr,a
                            292 ;	genPointerSet
                            293 ;     genFarPointerSet
   00C8 90 00 22            294 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0011)
   00CB 74 73               295 	mov	a,#0x73
   00CD F0                  296 	movx	@dptr,a
                            297 ;	genPointerSet
                            298 ;     genFarPointerSet
   00CE 90 00 23            299 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0012)
   00D1 74 74               300 	mov	a,#0x74
   00D3 F0                  301 	movx	@dptr,a
                            302 ;	genPointerSet
                            303 ;     genFarPointerSet
   00D4 90 00 24            304 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0013)
   00D7 74 65               305 	mov	a,#0x65
   00D9 F0                  306 	movx	@dptr,a
                            307 ;	genPointerSet
                            308 ;     genFarPointerSet
   00DA 90 00 25            309 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0014)
   00DD 74 72               310 	mov	a,#0x72
   00DF F0                  311 	movx	@dptr,a
                            312 ;	genPointerSet
                            313 ;     genFarPointerSet
   00E0 90 00 26            314 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0015)
   00E3 74 20               315 	mov	a,#0x20
   00E5 F0                  316 	movx	@dptr,a
                            317 ;	genPointerSet
                            318 ;     genFarPointerSet
   00E6 90 00 27            319 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0016)
   00E9 74 20               320 	mov	a,#0x20
   00EB F0                  321 	movx	@dptr,a
                            322 ;	genPointerSet
                            323 ;     genFarPointerSet
   00EC 90 00 28            324 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0017)
   00EF 74 09               325 	mov	a,#0x09
   00F1 F0                  326 	movx	@dptr,a
                            327 ;	genPointerSet
                            328 ;     genFarPointerSet
   00F2 90 00 29            329 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0018)
   00F5 74 09               330 	mov	a,#0x09
   00F7 F0                  331 	movx	@dptr,a
                            332 ;	genPointerSet
                            333 ;     genFarPointerSet
   00F8 90 00 2A            334 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0019)
   00FB 74 20               335 	mov	a,#0x20
   00FD F0                  336 	movx	@dptr,a
                            337 ;	genPointerSet
                            338 ;     genFarPointerSet
   00FE 90 00 2B            339 	mov	dptr,#(_display_help_tx_data_1_1 + 0x001a)
   0101 74 20               340 	mov	a,#0x20
   0103 F0                  341 	movx	@dptr,a
                            342 ;	genPointerSet
                            343 ;     genFarPointerSet
   0104 90 00 2C            344 	mov	dptr,#(_display_help_tx_data_1_1 + 0x001b)
   0107 74 20               345 	mov	a,#0x20
   0109 F0                  346 	movx	@dptr,a
                            347 ;	genPointerSet
                            348 ;     genFarPointerSet
   010A 90 00 2D            349 	mov	dptr,#(_display_help_tx_data_1_1 + 0x001c)
   010D 74 00               350 	mov	a,#0x00
   010F F0                  351 	movx	@dptr,a
                            352 ;	genPointerSet
                            353 ;     genFarPointerSet
   0110 90 00 39            354 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0028)
   0113 74 0D               355 	mov	a,#0x0D
   0115 F0                  356 	movx	@dptr,a
                            357 ;	genPointerSet
                            358 ;     genFarPointerSet
   0116 90 00 3A            359 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0029)
   0119 74 0A               360 	mov	a,#0x0A
   011B F0                  361 	movx	@dptr,a
                            362 ;	genPointerSet
                            363 ;     genFarPointerSet
   011C 90 00 3B            364 	mov	dptr,#(_display_help_tx_data_1_1 + 0x002a)
   011F 74 4D               365 	mov	a,#0x4D
   0121 F0                  366 	movx	@dptr,a
                            367 ;	genPointerSet
                            368 ;     genFarPointerSet
   0122 90 00 3C            369 	mov	dptr,#(_display_help_tx_data_1_1 + 0x002b)
   0125 74 20               370 	mov	a,#0x20
   0127 F0                  371 	movx	@dptr,a
                            372 ;	genPointerSet
                            373 ;     genFarPointerSet
   0128 90 00 3D            374 	mov	dptr,#(_display_help_tx_data_1_1 + 0x002c)
   012B 74 4D               375 	mov	a,#0x4D
   012D F0                  376 	movx	@dptr,a
                            377 ;	genPointerSet
                            378 ;     genFarPointerSet
   012E 90 00 3E            379 	mov	dptr,#(_display_help_tx_data_1_1 + 0x002d)
   0131 74 6F               380 	mov	a,#0x6F
   0133 F0                  381 	movx	@dptr,a
                            382 ;	genPointerSet
                            383 ;     genFarPointerSet
   0134 90 00 3F            384 	mov	dptr,#(_display_help_tx_data_1_1 + 0x002e)
   0137 74 64               385 	mov	a,#0x64
   0139 F0                  386 	movx	@dptr,a
                            387 ;	genPointerSet
                            388 ;     genFarPointerSet
   013A 90 00 40            389 	mov	dptr,#(_display_help_tx_data_1_1 + 0x002f)
   013D 74 69               390 	mov	a,#0x69
   013F F0                  391 	movx	@dptr,a
                            392 ;	genPointerSet
                            393 ;     genFarPointerSet
   0140 90 00 41            394 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0030)
   0143 74 66               395 	mov	a,#0x66
   0145 F0                  396 	movx	@dptr,a
                            397 ;	genPointerSet
                            398 ;     genFarPointerSet
   0146 90 00 42            399 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0031)
   0149 74 79               400 	mov	a,#0x79
   014B F0                  401 	movx	@dptr,a
                            402 ;	genPointerSet
                            403 ;     genFarPointerSet
   014C 90 00 43            404 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0032)
   014F 74 20               405 	mov	a,#0x20
   0151 F0                  406 	movx	@dptr,a
                            407 ;	genPointerSet
                            408 ;     genFarPointerSet
   0152 90 00 44            409 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0033)
   0155 74 20               410 	mov	a,#0x20
   0157 F0                  411 	movx	@dptr,a
                            412 ;	genPointerSet
                            413 ;     genFarPointerSet
   0158 90 00 45            414 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0034)
   015B 74 42               415 	mov	a,#0x42
   015D F0                  416 	movx	@dptr,a
                            417 ;	genPointerSet
                            418 ;     genFarPointerSet
   015E 90 00 46            419 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0035)
   0161 74 52               420 	mov	a,#0x52
   0163 F0                  421 	movx	@dptr,a
                            422 ;	genPointerSet
                            423 ;     genFarPointerSet
   0164 90 00 47            424 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0036)
   0167 74 54               425 	mov	a,#0x54
   0169 F0                  426 	movx	@dptr,a
                            427 ;	genPointerSet
                            428 ;     genFarPointerSet
   016A 90 00 48            429 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0037)
   016D 74 20               430 	mov	a,#0x20
   016F F0                  431 	movx	@dptr,a
                            432 ;	genPointerSet
                            433 ;     genFarPointerSet
   0170 90 00 49            434 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0038)
   0173 74 54               435 	mov	a,#0x54
   0175 F0                  436 	movx	@dptr,a
                            437 ;	genPointerSet
                            438 ;     genFarPointerSet
   0176 90 00 4A            439 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0039)
   0179 74 58               440 	mov	a,#0x58
   017B F0                  441 	movx	@dptr,a
                            442 ;	genPointerSet
                            443 ;     genFarPointerSet
   017C 90 00 4B            444 	mov	dptr,#(_display_help_tx_data_1_1 + 0x003a)
   017F 74 20               445 	mov	a,#0x20
   0181 F0                  446 	movx	@dptr,a
                            447 ;	genPointerSet
                            448 ;     genFarPointerSet
   0182 90 00 4C            449 	mov	dptr,#(_display_help_tx_data_1_1 + 0x003b)
   0185 74 42               450 	mov	a,#0x42
   0187 F0                  451 	movx	@dptr,a
                            452 ;	genPointerSet
                            453 ;     genFarPointerSet
   0188 90 00 4D            454 	mov	dptr,#(_display_help_tx_data_1_1 + 0x003c)
   018B 74 75               455 	mov	a,#0x75
   018D F0                  456 	movx	@dptr,a
                            457 ;	genPointerSet
                            458 ;     genFarPointerSet
   018E 90 00 4E            459 	mov	dptr,#(_display_help_tx_data_1_1 + 0x003d)
   0191 74 66               460 	mov	a,#0x66
   0193 F0                  461 	movx	@dptr,a
                            462 ;	genPointerSet
                            463 ;     genFarPointerSet
   0194 90 00 4F            464 	mov	dptr,#(_display_help_tx_data_1_1 + 0x003e)
   0197 74 66               465 	mov	a,#0x66
   0199 F0                  466 	movx	@dptr,a
                            467 ;	genPointerSet
                            468 ;     genFarPointerSet
   019A 90 00 50            469 	mov	dptr,#(_display_help_tx_data_1_1 + 0x003f)
   019D 74 65               470 	mov	a,#0x65
   019F F0                  471 	movx	@dptr,a
                            472 ;	genPointerSet
                            473 ;     genFarPointerSet
   01A0 90 00 51            474 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0040)
   01A3 74 72               475 	mov	a,#0x72
   01A5 F0                  476 	movx	@dptr,a
                            477 ;	genPointerSet
                            478 ;     genFarPointerSet
   01A6 90 00 52            479 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0041)
   01A9 74 20               480 	mov	a,#0x20
   01AB F0                  481 	movx	@dptr,a
                            482 ;	genPointerSet
                            483 ;     genFarPointerSet
   01AC 90 00 53            484 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0042)
   01AF 74 09               485 	mov	a,#0x09
   01B1 F0                  486 	movx	@dptr,a
                            487 ;	genPointerSet
                            488 ;     genFarPointerSet
   01B2 90 00 54            489 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0043)
   01B5 74 09               490 	mov	a,#0x09
   01B7 F0                  491 	movx	@dptr,a
                            492 ;	genPointerSet
                            493 ;     genFarPointerSet
   01B8 90 00 55            494 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0044)
   01BB 74 20               495 	mov	a,#0x20
   01BD F0                  496 	movx	@dptr,a
                            497 ;	genPointerSet
                            498 ;     genFarPointerSet
   01BE 90 00 56            499 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0045)
   01C1 74 20               500 	mov	a,#0x20
   01C3 F0                  501 	movx	@dptr,a
                            502 ;	genPointerSet
                            503 ;     genFarPointerSet
   01C4 90 00 57            504 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0046)
   01C7 74 20               505 	mov	a,#0x20
   01C9 F0                  506 	movx	@dptr,a
                            507 ;	genPointerSet
                            508 ;     genFarPointerSet
   01CA 90 00 58            509 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0047)
   01CD 74 00               510 	mov	a,#0x00
   01CF F0                  511 	movx	@dptr,a
                            512 ;	genPointerSet
                            513 ;     genFarPointerSet
   01D0 90 00 61            514 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0050)
   01D3 74 0D               515 	mov	a,#0x0D
   01D5 F0                  516 	movx	@dptr,a
                            517 ;	genPointerSet
                            518 ;     genFarPointerSet
   01D6 90 00 62            519 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0051)
   01D9 74 0A               520 	mov	a,#0x0A
   01DB F0                  521 	movx	@dptr,a
                            522 ;	genPointerSet
                            523 ;     genFarPointerSet
   01DC 90 00 63            524 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0052)
   01DF 74 44               525 	mov	a,#0x44
   01E1 F0                  526 	movx	@dptr,a
                            527 ;	genPointerSet
                            528 ;     genFarPointerSet
   01E2 90 00 64            529 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0053)
   01E5 74 20               530 	mov	a,#0x20
   01E7 F0                  531 	movx	@dptr,a
                            532 ;	genPointerSet
                            533 ;     genFarPointerSet
   01E8 90 00 65            534 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0054)
   01EB 74 44               535 	mov	a,#0x44
   01ED F0                  536 	movx	@dptr,a
                            537 ;	genPointerSet
                            538 ;     genFarPointerSet
   01EE 90 00 66            539 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0055)
   01F1 74 69               540 	mov	a,#0x69
   01F3 F0                  541 	movx	@dptr,a
                            542 ;	genPointerSet
                            543 ;     genFarPointerSet
   01F4 90 00 67            544 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0056)
   01F7 74 73               545 	mov	a,#0x73
   01F9 F0                  546 	movx	@dptr,a
                            547 ;	genPointerSet
                            548 ;     genFarPointerSet
   01FA 90 00 68            549 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0057)
   01FD 74 70               550 	mov	a,#0x70
   01FF F0                  551 	movx	@dptr,a
                            552 ;	genPointerSet
                            553 ;     genFarPointerSet
   0200 90 00 69            554 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0058)
   0203 74 6C               555 	mov	a,#0x6C
   0205 F0                  556 	movx	@dptr,a
                            557 ;	genPointerSet
                            558 ;     genFarPointerSet
   0206 90 00 6A            559 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0059)
   0209 74 61               560 	mov	a,#0x61
   020B F0                  561 	movx	@dptr,a
                            562 ;	genPointerSet
                            563 ;     genFarPointerSet
   020C 90 00 6B            564 	mov	dptr,#(_display_help_tx_data_1_1 + 0x005a)
   020F 74 79               565 	mov	a,#0x79
   0211 F0                  566 	movx	@dptr,a
                            567 ;	genPointerSet
                            568 ;     genFarPointerSet
   0212 90 00 6C            569 	mov	dptr,#(_display_help_tx_data_1_1 + 0x005b)
   0215 74 20               570 	mov	a,#0x20
   0217 F0                  571 	movx	@dptr,a
                            572 ;	genPointerSet
                            573 ;     genFarPointerSet
   0218 90 00 6D            574 	mov	dptr,#(_display_help_tx_data_1_1 + 0x005c)
   021B 74 42               575 	mov	a,#0x42
   021D F0                  576 	movx	@dptr,a
                            577 ;	genPointerSet
                            578 ;     genFarPointerSet
   021E 90 00 6E            579 	mov	dptr,#(_display_help_tx_data_1_1 + 0x005d)
   0221 74 52               580 	mov	a,#0x52
   0223 F0                  581 	movx	@dptr,a
                            582 ;	genPointerSet
                            583 ;     genFarPointerSet
   0224 90 00 6F            584 	mov	dptr,#(_display_help_tx_data_1_1 + 0x005e)
   0227 74 54               585 	mov	a,#0x54
   0229 F0                  586 	movx	@dptr,a
                            587 ;	genPointerSet
                            588 ;     genFarPointerSet
   022A 90 00 70            589 	mov	dptr,#(_display_help_tx_data_1_1 + 0x005f)
   022D 74 20               590 	mov	a,#0x20
   022F F0                  591 	movx	@dptr,a
                            592 ;	genPointerSet
                            593 ;     genFarPointerSet
   0230 90 00 71            594 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0060)
   0233 74 20               595 	mov	a,#0x20
   0235 F0                  596 	movx	@dptr,a
                            597 ;	genPointerSet
                            598 ;     genFarPointerSet
   0236 90 00 72            599 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0061)
   0239 74 54               600 	mov	a,#0x54
   023B F0                  601 	movx	@dptr,a
                            602 ;	genPointerSet
                            603 ;     genFarPointerSet
   023C 90 00 73            604 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0062)
   023F 74 58               605 	mov	a,#0x58
   0241 F0                  606 	movx	@dptr,a
                            607 ;	genPointerSet
                            608 ;     genFarPointerSet
   0242 90 00 74            609 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0063)
   0245 74 2F               610 	mov	a,#0x2F
   0247 F0                  611 	movx	@dptr,a
                            612 ;	genPointerSet
                            613 ;     genFarPointerSet
   0248 90 00 75            614 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0064)
   024B 74 52               615 	mov	a,#0x52
   024D F0                  616 	movx	@dptr,a
                            617 ;	genPointerSet
                            618 ;     genFarPointerSet
   024E 90 00 76            619 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0065)
   0251 74 58               620 	mov	a,#0x58
   0253 F0                  621 	movx	@dptr,a
                            622 ;	genPointerSet
                            623 ;     genFarPointerSet
   0254 90 00 77            624 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0066)
   0257 74 20               625 	mov	a,#0x20
   0259 F0                  626 	movx	@dptr,a
                            627 ;	genPointerSet
                            628 ;     genFarPointerSet
   025A 90 00 78            629 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0067)
   025D 74 42               630 	mov	a,#0x42
   025F F0                  631 	movx	@dptr,a
                            632 ;	genPointerSet
                            633 ;     genFarPointerSet
   0260 90 00 79            634 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0068)
   0263 74 75               635 	mov	a,#0x75
   0265 F0                  636 	movx	@dptr,a
                            637 ;	genPointerSet
                            638 ;     genFarPointerSet
   0266 90 00 7A            639 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0069)
   0269 74 66               640 	mov	a,#0x66
   026B F0                  641 	movx	@dptr,a
                            642 ;	genPointerSet
                            643 ;     genFarPointerSet
   026C 90 00 7B            644 	mov	dptr,#(_display_help_tx_data_1_1 + 0x006a)
   026F 74 66               645 	mov	a,#0x66
   0271 F0                  646 	movx	@dptr,a
                            647 ;	genPointerSet
                            648 ;     genFarPointerSet
   0272 90 00 7C            649 	mov	dptr,#(_display_help_tx_data_1_1 + 0x006b)
   0275 74 65               650 	mov	a,#0x65
   0277 F0                  651 	movx	@dptr,a
                            652 ;	genPointerSet
                            653 ;     genFarPointerSet
   0278 90 00 7D            654 	mov	dptr,#(_display_help_tx_data_1_1 + 0x006c)
   027B 74 72               655 	mov	a,#0x72
   027D F0                  656 	movx	@dptr,a
                            657 ;	genPointerSet
                            658 ;     genFarPointerSet
   027E 90 00 7E            659 	mov	dptr,#(_display_help_tx_data_1_1 + 0x006d)
   0281 74 20               660 	mov	a,#0x20
   0283 F0                  661 	movx	@dptr,a
                            662 ;	genPointerSet
                            663 ;     genFarPointerSet
   0284 90 00 7F            664 	mov	dptr,#(_display_help_tx_data_1_1 + 0x006e)
   0287 74 44               665 	mov	a,#0x44
   0289 F0                  666 	movx	@dptr,a
                            667 ;	genPointerSet
                            668 ;     genFarPointerSet
   028A 90 00 80            669 	mov	dptr,#(_display_help_tx_data_1_1 + 0x006f)
   028D 74 61               670 	mov	a,#0x61
   028F F0                  671 	movx	@dptr,a
                            672 ;	genPointerSet
                            673 ;     genFarPointerSet
   0290 90 00 81            674 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0070)
   0293 74 74               675 	mov	a,#0x74
   0295 F0                  676 	movx	@dptr,a
                            677 ;	genPointerSet
                            678 ;     genFarPointerSet
   0296 90 00 82            679 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0071)
   0299 74 61               680 	mov	a,#0x61
   029B F0                  681 	movx	@dptr,a
                            682 ;	genPointerSet
                            683 ;     genFarPointerSet
   029C 90 00 83            684 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0072)
   029F 74 00               685 	mov	a,#0x00
   02A1 F0                  686 	movx	@dptr,a
                            687 ;	genPointerSet
                            688 ;     genFarPointerSet
   02A2 90 00 89            689 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0078)
   02A5 74 0D               690 	mov	a,#0x0D
   02A7 F0                  691 	movx	@dptr,a
                            692 ;	genPointerSet
                            693 ;     genFarPointerSet
   02A8 90 00 8A            694 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0079)
   02AB 74 0A               695 	mov	a,#0x0A
   02AD F0                  696 	movx	@dptr,a
                            697 ;	genPointerSet
                            698 ;     genFarPointerSet
   02AE 90 00 8B            699 	mov	dptr,#(_display_help_tx_data_1_1 + 0x007a)
   02B1 74 42               700 	mov	a,#0x42
   02B3 F0                  701 	movx	@dptr,a
                            702 ;	genPointerSet
                            703 ;     genFarPointerSet
   02B4 90 00 8C            704 	mov	dptr,#(_display_help_tx_data_1_1 + 0x007b)
   02B7 74 20               705 	mov	a,#0x20
   02B9 F0                  706 	movx	@dptr,a
                            707 ;	genPointerSet
                            708 ;     genFarPointerSet
   02BA 90 00 8D            709 	mov	dptr,#(_display_help_tx_data_1_1 + 0x007c)
   02BD 74 44               710 	mov	a,#0x44
   02BF F0                  711 	movx	@dptr,a
                            712 ;	genPointerSet
                            713 ;     genFarPointerSet
   02C0 90 00 8E            714 	mov	dptr,#(_display_help_tx_data_1_1 + 0x007d)
   02C3 74 69               715 	mov	a,#0x69
   02C5 F0                  716 	movx	@dptr,a
                            717 ;	genPointerSet
                            718 ;     genFarPointerSet
   02C6 90 00 8F            719 	mov	dptr,#(_display_help_tx_data_1_1 + 0x007e)
   02C9 74 73               720 	mov	a,#0x73
   02CB F0                  721 	movx	@dptr,a
                            722 ;	genPointerSet
                            723 ;     genFarPointerSet
   02CC 90 00 90            724 	mov	dptr,#(_display_help_tx_data_1_1 + 0x007f)
   02CF 74 70               725 	mov	a,#0x70
   02D1 F0                  726 	movx	@dptr,a
                            727 ;	genPointerSet
                            728 ;     genFarPointerSet
   02D2 90 00 91            729 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0080)
   02D5 74 6C               730 	mov	a,#0x6C
   02D7 F0                  731 	movx	@dptr,a
                            732 ;	genPointerSet
                            733 ;     genFarPointerSet
   02D8 90 00 92            734 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0081)
   02DB 74 61               735 	mov	a,#0x61
   02DD F0                  736 	movx	@dptr,a
                            737 ;	genPointerSet
                            738 ;     genFarPointerSet
   02DE 90 00 93            739 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0082)
   02E1 74 79               740 	mov	a,#0x79
   02E3 F0                  741 	movx	@dptr,a
                            742 ;	genPointerSet
                            743 ;     genFarPointerSet
   02E4 90 00 94            744 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0083)
   02E7 74 20               745 	mov	a,#0x20
   02E9 F0                  746 	movx	@dptr,a
                            747 ;	genPointerSet
                            748 ;     genFarPointerSet
   02EA 90 00 95            749 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0084)
   02ED 74 42               750 	mov	a,#0x42
   02EF F0                  751 	movx	@dptr,a
                            752 ;	genPointerSet
                            753 ;     genFarPointerSet
   02F0 90 00 96            754 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0085)
   02F3 74 43               755 	mov	a,#0x43
   02F5 F0                  756 	movx	@dptr,a
                            757 ;	genPointerSet
                            758 ;     genFarPointerSet
   02F6 90 00 97            759 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0086)
   02F9 74 20               760 	mov	a,#0x20
   02FB F0                  761 	movx	@dptr,a
                            762 ;	genPointerSet
                            763 ;     genFarPointerSet
   02FC 90 00 98            764 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0087)
   02FF 74 6D               765 	mov	a,#0x6D
   0301 F0                  766 	movx	@dptr,a
                            767 ;	genPointerSet
                            768 ;     genFarPointerSet
   0302 90 00 99            769 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0088)
   0305 74 65               770 	mov	a,#0x65
   0307 F0                  771 	movx	@dptr,a
                            772 ;	genPointerSet
                            773 ;     genFarPointerSet
   0308 90 00 9A            774 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0089)
   030B 74 73               775 	mov	a,#0x73
   030D F0                  776 	movx	@dptr,a
                            777 ;	genPointerSet
                            778 ;     genFarPointerSet
   030E 90 00 9B            779 	mov	dptr,#(_display_help_tx_data_1_1 + 0x008a)
   0311 74 73               780 	mov	a,#0x73
   0313 F0                  781 	movx	@dptr,a
                            782 ;	genPointerSet
                            783 ;     genFarPointerSet
   0314 90 00 9C            784 	mov	dptr,#(_display_help_tx_data_1_1 + 0x008b)
   0317 74 61               785 	mov	a,#0x61
   0319 F0                  786 	movx	@dptr,a
                            787 ;	genPointerSet
                            788 ;     genFarPointerSet
   031A 90 00 9D            789 	mov	dptr,#(_display_help_tx_data_1_1 + 0x008c)
   031D 74 67               790 	mov	a,#0x67
   031F F0                  791 	movx	@dptr,a
                            792 ;	genPointerSet
                            793 ;     genFarPointerSet
   0320 90 00 9E            794 	mov	dptr,#(_display_help_tx_data_1_1 + 0x008d)
   0323 74 65               795 	mov	a,#0x65
   0325 F0                  796 	movx	@dptr,a
                            797 ;	genPointerSet
                            798 ;     genFarPointerSet
   0326 90 00 9F            799 	mov	dptr,#(_display_help_tx_data_1_1 + 0x008e)
   0329 74 73               800 	mov	a,#0x73
   032B F0                  801 	movx	@dptr,a
                            802 ;	genPointerSet
                            803 ;     genFarPointerSet
   032C 90 00 A0            804 	mov	dptr,#(_display_help_tx_data_1_1 + 0x008f)
   032F 74 20               805 	mov	a,#0x20
   0331 F0                  806 	movx	@dptr,a
                            807 ;	genPointerSet
                            808 ;     genFarPointerSet
   0332 90 00 A1            809 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0090)
   0335 74 20               810 	mov	a,#0x20
   0337 F0                  811 	movx	@dptr,a
                            812 ;	genPointerSet
                            813 ;     genFarPointerSet
   0338 90 00 A2            814 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0091)
   033B 74 20               815 	mov	a,#0x20
   033D F0                  816 	movx	@dptr,a
                            817 ;	genPointerSet
                            818 ;     genFarPointerSet
   033E 90 00 A3            819 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0092)
   0341 74 20               820 	mov	a,#0x20
   0343 F0                  821 	movx	@dptr,a
                            822 ;	genPointerSet
                            823 ;     genFarPointerSet
   0344 90 00 A4            824 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0093)
   0347 74 20               825 	mov	a,#0x20
   0349 F0                  826 	movx	@dptr,a
                            827 ;	genPointerSet
                            828 ;     genFarPointerSet
   034A 90 00 A5            829 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0094)
   034D 74 20               830 	mov	a,#0x20
   034F F0                  831 	movx	@dptr,a
                            832 ;	genPointerSet
                            833 ;     genFarPointerSet
   0350 90 00 A6            834 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0095)
   0353 74 20               835 	mov	a,#0x20
   0355 F0                  836 	movx	@dptr,a
                            837 ;	genPointerSet
                            838 ;     genFarPointerSet
   0356 90 00 A7            839 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0096)
   0359 74 20               840 	mov	a,#0x20
   035B F0                  841 	movx	@dptr,a
                            842 ;	genPointerSet
                            843 ;     genFarPointerSet
   035C 90 00 A8            844 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0097)
   035F 74 00               845 	mov	a,#0x00
   0361 F0                  846 	movx	@dptr,a
                            847 ;	genPointerSet
                            848 ;     genFarPointerSet
   0362 90 00 B1            849 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a0)
   0365 74 0D               850 	mov	a,#0x0D
   0367 F0                  851 	movx	@dptr,a
                            852 ;	genPointerSet
                            853 ;     genFarPointerSet
   0368 90 00 B2            854 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a1)
   036B 74 0A               855 	mov	a,#0x0A
   036D F0                  856 	movx	@dptr,a
                            857 ;	genPointerSet
                            858 ;     genFarPointerSet
   036E 90 00 B3            859 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a2)
   0371 74 58               860 	mov	a,#0x58
   0373 F0                  861 	movx	@dptr,a
                            862 ;	genPointerSet
                            863 ;     genFarPointerSet
   0374 90 00 B4            864 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a3)
   0377 74 20               865 	mov	a,#0x20
   0379 F0                  866 	movx	@dptr,a
                            867 ;	genPointerSet
                            868 ;     genFarPointerSet
   037A 90 00 B5            869 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a4)
   037D 74 53               870 	mov	a,#0x53
   037F F0                  871 	movx	@dptr,a
                            872 ;	genPointerSet
                            873 ;     genFarPointerSet
   0380 90 00 B6            874 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a5)
   0383 74 74               875 	mov	a,#0x74
   0385 F0                  876 	movx	@dptr,a
                            877 ;	genPointerSet
                            878 ;     genFarPointerSet
   0386 90 00 B7            879 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a6)
   0389 74 61               880 	mov	a,#0x61
   038B F0                  881 	movx	@dptr,a
                            882 ;	genPointerSet
                            883 ;     genFarPointerSet
   038C 90 00 B8            884 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a7)
   038F 74 72               885 	mov	a,#0x72
   0391 F0                  886 	movx	@dptr,a
                            887 ;	genPointerSet
                            888 ;     genFarPointerSet
   0392 90 00 B9            889 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a8)
   0395 74 74               890 	mov	a,#0x74
   0397 F0                  891 	movx	@dptr,a
                            892 ;	genPointerSet
                            893 ;     genFarPointerSet
   0398 90 00 BA            894 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00a9)
   039B 74 20               895 	mov	a,#0x20
   039D F0                  896 	movx	@dptr,a
                            897 ;	genPointerSet
                            898 ;     genFarPointerSet
   039E 90 00 BB            899 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00aa)
   03A1 74 42               900 	mov	a,#0x42
   03A3 F0                  901 	movx	@dptr,a
                            902 ;	genPointerSet
                            903 ;     genFarPointerSet
   03A4 90 00 BC            904 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ab)
   03A7 74 52               905 	mov	a,#0x52
   03A9 F0                  906 	movx	@dptr,a
                            907 ;	genPointerSet
                            908 ;     genFarPointerSet
   03AA 90 00 BD            909 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ac)
   03AD 74 4D               910 	mov	a,#0x4D
   03AF F0                  911 	movx	@dptr,a
                            912 ;	genPointerSet
                            913 ;     genFarPointerSet
   03B0 90 00 BE            914 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ad)
   03B3 74 20               915 	mov	a,#0x20
   03B5 F0                  916 	movx	@dptr,a
                            917 ;	genPointerSet
                            918 ;     genFarPointerSet
   03B6 90 00 BF            919 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ae)
   03B9 74 42               920 	mov	a,#0x42
   03BB F0                  921 	movx	@dptr,a
                            922 ;	genPointerSet
                            923 ;     genFarPointerSet
   03BC 90 00 C0            924 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00af)
   03BF 74 43               925 	mov	a,#0x43
   03C1 F0                  926 	movx	@dptr,a
                            927 ;	genPointerSet
                            928 ;     genFarPointerSet
   03C2 90 00 C1            929 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b0)
   03C5 74 20               930 	mov	a,#0x20
   03C7 F0                  931 	movx	@dptr,a
                            932 ;	genPointerSet
                            933 ;     genFarPointerSet
   03C8 90 00 C2            934 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b1)
   03CB 74 20               935 	mov	a,#0x20
   03CD F0                  936 	movx	@dptr,a
                            937 ;	genPointerSet
                            938 ;     genFarPointerSet
   03CE 90 00 C3            939 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b2)
   03D1 74 20               940 	mov	a,#0x20
   03D3 F0                  941 	movx	@dptr,a
                            942 ;	genPointerSet
                            943 ;     genFarPointerSet
   03D4 90 00 C4            944 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b3)
   03D7 74 20               945 	mov	a,#0x20
   03D9 F0                  946 	movx	@dptr,a
                            947 ;	genPointerSet
                            948 ;     genFarPointerSet
   03DA 90 00 C5            949 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b4)
   03DD 74 20               950 	mov	a,#0x20
   03DF F0                  951 	movx	@dptr,a
                            952 ;	genPointerSet
                            953 ;     genFarPointerSet
   03E0 90 00 C6            954 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b5)
   03E3 74 20               955 	mov	a,#0x20
   03E5 F0                  956 	movx	@dptr,a
                            957 ;	genPointerSet
                            958 ;     genFarPointerSet
   03E6 90 00 C7            959 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b6)
   03E9 74 20               960 	mov	a,#0x20
   03EB F0                  961 	movx	@dptr,a
                            962 ;	genPointerSet
                            963 ;     genFarPointerSet
   03EC 90 00 C8            964 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b7)
   03EF 74 20               965 	mov	a,#0x20
   03F1 F0                  966 	movx	@dptr,a
                            967 ;	genPointerSet
                            968 ;     genFarPointerSet
   03F2 90 00 C9            969 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b8)
   03F5 74 20               970 	mov	a,#0x20
   03F7 F0                  971 	movx	@dptr,a
                            972 ;	genPointerSet
                            973 ;     genFarPointerSet
   03F8 90 00 CA            974 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00b9)
   03FB 74 20               975 	mov	a,#0x20
   03FD F0                  976 	movx	@dptr,a
                            977 ;	genPointerSet
                            978 ;     genFarPointerSet
   03FE 90 00 CB            979 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ba)
   0401 74 20               980 	mov	a,#0x20
   0403 F0                  981 	movx	@dptr,a
                            982 ;	genPointerSet
                            983 ;     genFarPointerSet
   0404 90 00 CC            984 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00bb)
   0407 74 20               985 	mov	a,#0x20
   0409 F0                  986 	movx	@dptr,a
                            987 ;	genPointerSet
                            988 ;     genFarPointerSet
   040A 90 00 CD            989 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00bc)
   040D 74 20               990 	mov	a,#0x20
   040F F0                  991 	movx	@dptr,a
                            992 ;	genPointerSet
                            993 ;     genFarPointerSet
   0410 90 00 CE            994 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00bd)
   0413 74 20               995 	mov	a,#0x20
   0415 F0                  996 	movx	@dptr,a
                            997 ;	genPointerSet
                            998 ;     genFarPointerSet
   0416 90 00 CF            999 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00be)
   0419 74 20              1000 	mov	a,#0x20
   041B F0                 1001 	movx	@dptr,a
                           1002 ;	genPointerSet
                           1003 ;     genFarPointerSet
   041C 90 00 D0           1004 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00bf)
   041F 74 00              1005 	mov	a,#0x00
   0421 F0                 1006 	movx	@dptr,a
                           1007 ;	genPointerSet
                           1008 ;     genFarPointerSet
   0422 90 00 D9           1009 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00c8)
   0425 74 0D              1010 	mov	a,#0x0D
   0427 F0                 1011 	movx	@dptr,a
                           1012 ;	genPointerSet
                           1013 ;     genFarPointerSet
   0428 90 00 DA           1014 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00c9)
   042B 74 0A              1015 	mov	a,#0x0A
   042D F0                 1016 	movx	@dptr,a
                           1017 ;	genPointerSet
                           1018 ;     genFarPointerSet
   042E 90 00 DB           1019 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ca)
   0431 74 43              1020 	mov	a,#0x43
   0433 F0                 1021 	movx	@dptr,a
                           1022 ;	genPointerSet
                           1023 ;     genFarPointerSet
   0434 90 00 DC           1024 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00cb)
   0437 74 20              1025 	mov	a,#0x20
   0439 F0                 1026 	movx	@dptr,a
                           1027 ;	genPointerSet
                           1028 ;     genFarPointerSet
   043A 90 00 DD           1029 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00cc)
   043D 74 43              1030 	mov	a,#0x43
   043F F0                 1031 	movx	@dptr,a
                           1032 ;	genPointerSet
                           1033 ;     genFarPointerSet
   0440 90 00 DE           1034 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00cd)
   0443 74 68              1035 	mov	a,#0x68
   0445 F0                 1036 	movx	@dptr,a
                           1037 ;	genPointerSet
                           1038 ;     genFarPointerSet
   0446 90 00 DF           1039 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ce)
   0449 74 61              1040 	mov	a,#0x61
   044B F0                 1041 	movx	@dptr,a
                           1042 ;	genPointerSet
                           1043 ;     genFarPointerSet
   044C 90 00 E0           1044 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00cf)
   044F 74 6E              1045 	mov	a,#0x6E
   0451 F0                 1046 	movx	@dptr,a
                           1047 ;	genPointerSet
                           1048 ;     genFarPointerSet
   0452 90 00 E1           1049 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d0)
   0455 74 67              1050 	mov	a,#0x67
   0457 F0                 1051 	movx	@dptr,a
                           1052 ;	genPointerSet
                           1053 ;     genFarPointerSet
   0458 90 00 E2           1054 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d1)
   045B 74 65              1055 	mov	a,#0x65
   045D F0                 1056 	movx	@dptr,a
                           1057 ;	genPointerSet
                           1058 ;     genFarPointerSet
   045E 90 00 E3           1059 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d2)
   0461 74 20              1060 	mov	a,#0x20
   0463 F0                 1061 	movx	@dptr,a
                           1062 ;	genPointerSet
                           1063 ;     genFarPointerSet
   0464 90 00 E4           1064 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d3)
   0467 74 74              1065 	mov	a,#0x74
   0469 F0                 1066 	movx	@dptr,a
                           1067 ;	genPointerSet
                           1068 ;     genFarPointerSet
   046A 90 00 E5           1069 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d4)
   046D 74 68              1070 	mov	a,#0x68
   046F F0                 1071 	movx	@dptr,a
                           1072 ;	genPointerSet
                           1073 ;     genFarPointerSet
   0470 90 00 E6           1074 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d5)
   0473 74 65              1075 	mov	a,#0x65
   0475 F0                 1076 	movx	@dptr,a
                           1077 ;	genPointerSet
                           1078 ;     genFarPointerSet
   0476 90 00 E7           1079 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d6)
   0479 74 20              1080 	mov	a,#0x20
   047B F0                 1081 	movx	@dptr,a
                           1082 ;	genPointerSet
                           1083 ;     genFarPointerSet
   047C 90 00 E8           1084 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d7)
   047F 74 42              1085 	mov	a,#0x42
   0481 F0                 1086 	movx	@dptr,a
                           1087 ;	genPointerSet
                           1088 ;     genFarPointerSet
   0482 90 00 E9           1089 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d8)
   0485 74 52              1090 	mov	a,#0x52
   0487 F0                 1091 	movx	@dptr,a
                           1092 ;	genPointerSet
                           1093 ;     genFarPointerSet
   0488 90 00 EA           1094 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00d9)
   048B 74 54              1095 	mov	a,#0x54
   048D F0                 1096 	movx	@dptr,a
                           1097 ;	genPointerSet
                           1098 ;     genFarPointerSet
   048E 90 00 EB           1099 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00da)
   0491 74 20              1100 	mov	a,#0x20
   0493 F0                 1101 	movx	@dptr,a
                           1102 ;	genPointerSet
                           1103 ;     genFarPointerSet
   0494 90 00 EC           1104 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00db)
   0497 74 41              1105 	mov	a,#0x41
   0499 F0                 1106 	movx	@dptr,a
                           1107 ;	genPointerSet
                           1108 ;     genFarPointerSet
   049A 90 00 ED           1109 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00dc)
   049D 74 64              1110 	mov	a,#0x64
   049F F0                 1111 	movx	@dptr,a
                           1112 ;	genPointerSet
                           1113 ;     genFarPointerSet
   04A0 90 00 EE           1114 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00dd)
   04A3 74 64              1115 	mov	a,#0x64
   04A5 F0                 1116 	movx	@dptr,a
                           1117 ;	genPointerSet
                           1118 ;     genFarPointerSet
   04A6 90 00 EF           1119 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00de)
   04A9 74 72              1120 	mov	a,#0x72
   04AB F0                 1121 	movx	@dptr,a
                           1122 ;	genPointerSet
                           1123 ;     genFarPointerSet
   04AC 90 00 F0           1124 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00df)
   04AF 74 65              1125 	mov	a,#0x65
   04B1 F0                 1126 	movx	@dptr,a
                           1127 ;	genPointerSet
                           1128 ;     genFarPointerSet
   04B2 90 00 F1           1129 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e0)
   04B5 74 73              1130 	mov	a,#0x73
   04B7 F0                 1131 	movx	@dptr,a
                           1132 ;	genPointerSet
                           1133 ;     genFarPointerSet
   04B8 90 00 F2           1134 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e1)
   04BB 74 73              1135 	mov	a,#0x73
   04BD F0                 1136 	movx	@dptr,a
                           1137 ;	genPointerSet
                           1138 ;     genFarPointerSet
   04BE 90 00 F3           1139 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e2)
   04C1 74 28              1140 	mov	a,#0x28
   04C3 F0                 1141 	movx	@dptr,a
                           1142 ;	genPointerSet
                           1143 ;     genFarPointerSet
   04C4 90 00 F4           1144 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e3)
   04C7 74 44              1145 	mov	a,#0x44
   04C9 F0                 1146 	movx	@dptr,a
                           1147 ;	genPointerSet
                           1148 ;     genFarPointerSet
   04CA 90 00 F5           1149 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e4)
   04CD 74 65              1150 	mov	a,#0x65
   04CF F0                 1151 	movx	@dptr,a
                           1152 ;	genPointerSet
                           1153 ;     genFarPointerSet
   04D0 90 00 F6           1154 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e5)
   04D3 74 66              1155 	mov	a,#0x66
   04D5 F0                 1156 	movx	@dptr,a
                           1157 ;	genPointerSet
                           1158 ;     genFarPointerSet
   04D6 90 00 F7           1159 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e6)
   04D9 74 61              1160 	mov	a,#0x61
   04DB F0                 1161 	movx	@dptr,a
                           1162 ;	genPointerSet
                           1163 ;     genFarPointerSet
   04DC 90 00 F8           1164 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e7)
   04DF 74 75              1165 	mov	a,#0x75
   04E1 F0                 1166 	movx	@dptr,a
                           1167 ;	genPointerSet
                           1168 ;     genFarPointerSet
   04E2 90 00 F9           1169 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e8)
   04E5 74 6C              1170 	mov	a,#0x6C
   04E7 F0                 1171 	movx	@dptr,a
                           1172 ;	genPointerSet
                           1173 ;     genFarPointerSet
   04E8 90 00 FA           1174 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00e9)
   04EB 74 74              1175 	mov	a,#0x74
   04ED F0                 1176 	movx	@dptr,a
                           1177 ;	genPointerSet
                           1178 ;     genFarPointerSet
   04EE 90 00 FB           1179 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ea)
   04F1 74 3A              1180 	mov	a,#0x3A
   04F3 F0                 1181 	movx	@dptr,a
                           1182 ;	genPointerSet
                           1183 ;     genFarPointerSet
   04F4 90 00 FC           1184 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00eb)
   04F7 74 30              1185 	mov	a,#0x30
   04F9 F0                 1186 	movx	@dptr,a
                           1187 ;	genPointerSet
                           1188 ;     genFarPointerSet
   04FA 90 00 FD           1189 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ec)
   04FD 74 78              1190 	mov	a,#0x78
   04FF F0                 1191 	movx	@dptr,a
                           1192 ;	genPointerSet
                           1193 ;     genFarPointerSet
   0500 90 00 FE           1194 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ed)
   0503 74 34              1195 	mov	a,#0x34
   0505 F0                 1196 	movx	@dptr,a
                           1197 ;	genPointerSet
                           1198 ;     genFarPointerSet
   0506 90 00 FF           1199 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ee)
   0509 74 20              1200 	mov	a,#0x20
   050B F0                 1201 	movx	@dptr,a
                           1202 ;	genPointerSet
                           1203 ;     genFarPointerSet
   050C 90 01 00           1204 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ef)
   050F 74 00              1205 	mov	a,#0x00
   0511 F0                 1206 	movx	@dptr,a
                           1207 ;	genPointerSet
                           1208 ;     genFarPointerSet
   0512 90 01 01           1209 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f0)
   0515 74 0D              1210 	mov	a,#0x0D
   0517 F0                 1211 	movx	@dptr,a
                           1212 ;	genPointerSet
                           1213 ;     genFarPointerSet
   0518 90 01 02           1214 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f1)
   051B 74 0A              1215 	mov	a,#0x0A
   051D F0                 1216 	movx	@dptr,a
                           1217 ;	genPointerSet
                           1218 ;     genFarPointerSet
   051E 90 01 03           1219 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f2)
   0521 74 4E              1220 	mov	a,#0x4E
   0523 F0                 1221 	movx	@dptr,a
                           1222 ;	genPointerSet
                           1223 ;     genFarPointerSet
   0524 90 01 04           1224 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f3)
   0527 74 20              1225 	mov	a,#0x20
   0529 F0                 1226 	movx	@dptr,a
                           1227 ;	genPointerSet
                           1228 ;     genFarPointerSet
   052A 90 01 05           1229 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f4)
   052D 74 63              1230 	mov	a,#0x63
   052F F0                 1231 	movx	@dptr,a
                           1232 ;	genPointerSet
                           1233 ;     genFarPointerSet
   0530 90 01 06           1234 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f5)
   0533 74 68              1235 	mov	a,#0x68
   0535 F0                 1236 	movx	@dptr,a
                           1237 ;	genPointerSet
                           1238 ;     genFarPointerSet
   0536 90 01 07           1239 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f6)
   0539 74 61              1240 	mov	a,#0x61
   053B F0                 1241 	movx	@dptr,a
                           1242 ;	genPointerSet
                           1243 ;     genFarPointerSet
   053C 90 01 08           1244 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f7)
   053F 74 6E              1245 	mov	a,#0x6E
   0541 F0                 1246 	movx	@dptr,a
                           1247 ;	genPointerSet
                           1248 ;     genFarPointerSet
   0542 90 01 09           1249 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f8)
   0545 74 67              1250 	mov	a,#0x67
   0547 F0                 1251 	movx	@dptr,a
                           1252 ;	genPointerSet
                           1253 ;     genFarPointerSet
   0548 90 01 0A           1254 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00f9)
   054B 74 65              1255 	mov	a,#0x65
   054D F0                 1256 	movx	@dptr,a
                           1257 ;	genPointerSet
                           1258 ;     genFarPointerSet
   054E 90 01 0B           1259 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fa)
   0551 74 20              1260 	mov	a,#0x20
   0553 F0                 1261 	movx	@dptr,a
                           1262 ;	genPointerSet
                           1263 ;     genFarPointerSet
   0554 90 01 0C           1264 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fb)
   0557 74 74              1265 	mov	a,#0x74
   0559 F0                 1266 	movx	@dptr,a
                           1267 ;	genPointerSet
                           1268 ;     genFarPointerSet
   055A 90 01 0D           1269 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fc)
   055D 74 68              1270 	mov	a,#0x68
   055F F0                 1271 	movx	@dptr,a
                           1272 ;	genPointerSet
                           1273 ;     genFarPointerSet
   0560 90 01 0E           1274 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fd)
   0563 74 65              1275 	mov	a,#0x65
   0565 F0                 1276 	movx	@dptr,a
                           1277 ;	genPointerSet
                           1278 ;     genFarPointerSet
   0566 90 01 0F           1279 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00fe)
   0569 74 20              1280 	mov	a,#0x20
   056B F0                 1281 	movx	@dptr,a
                           1282 ;	genPointerSet
                           1283 ;     genFarPointerSet
   056C 90 01 10           1284 	mov	dptr,#(_display_help_tx_data_1_1 + 0x00ff)
   056F 74 42              1285 	mov	a,#0x42
   0571 F0                 1286 	movx	@dptr,a
                           1287 ;	genPointerSet
                           1288 ;     genFarPointerSet
   0572 90 01 11           1289 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0100)
   0575 74 43              1290 	mov	a,#0x43
   0577 F0                 1291 	movx	@dptr,a
                           1292 ;	genPointerSet
                           1293 ;     genFarPointerSet
   0578 90 01 12           1294 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0101)
   057B 74 20              1295 	mov	a,#0x20
   057D F0                 1296 	movx	@dptr,a
                           1297 ;	genPointerSet
                           1298 ;     genFarPointerSet
   057E 90 01 13           1299 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0102)
   0581 74 44              1300 	mov	a,#0x44
   0583 F0                 1301 	movx	@dptr,a
                           1302 ;	genPointerSet
                           1303 ;     genFarPointerSet
   0584 90 01 14           1304 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0103)
   0587 74 61              1305 	mov	a,#0x61
   0589 F0                 1306 	movx	@dptr,a
                           1307 ;	genPointerSet
                           1308 ;     genFarPointerSet
   058A 90 01 15           1309 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0104)
   058D 74 74              1310 	mov	a,#0x74
   058F F0                 1311 	movx	@dptr,a
                           1312 ;	genPointerSet
                           1313 ;     genFarPointerSet
   0590 90 01 16           1314 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0105)
   0593 74 61              1315 	mov	a,#0x61
   0595 F0                 1316 	movx	@dptr,a
                           1317 ;	genPointerSet
                           1318 ;     genFarPointerSet
   0596 90 01 17           1319 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0106)
   0599 74 20              1320 	mov	a,#0x20
   059B F0                 1321 	movx	@dptr,a
                           1322 ;	genPointerSet
                           1323 ;     genFarPointerSet
   059C 90 01 18           1324 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0107)
   059F 74 76              1325 	mov	a,#0x76
   05A1 F0                 1326 	movx	@dptr,a
                           1327 ;	genPointerSet
                           1328 ;     genFarPointerSet
   05A2 90 01 19           1329 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0108)
   05A5 74 61              1330 	mov	a,#0x61
   05A7 F0                 1331 	movx	@dptr,a
                           1332 ;	genPointerSet
                           1333 ;     genFarPointerSet
   05A8 90 01 1A           1334 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0109)
   05AB 74 6C              1335 	mov	a,#0x6C
   05AD F0                 1336 	movx	@dptr,a
                           1337 ;	genPointerSet
                           1338 ;     genFarPointerSet
   05AE 90 01 1B           1339 	mov	dptr,#(_display_help_tx_data_1_1 + 0x010a)
   05B1 74 75              1340 	mov	a,#0x75
   05B3 F0                 1341 	movx	@dptr,a
                           1342 ;	genPointerSet
                           1343 ;     genFarPointerSet
   05B4 90 01 1C           1344 	mov	dptr,#(_display_help_tx_data_1_1 + 0x010b)
   05B7 74 65              1345 	mov	a,#0x65
   05B9 F0                 1346 	movx	@dptr,a
                           1347 ;	genPointerSet
                           1348 ;     genFarPointerSet
   05BA 90 01 1D           1349 	mov	dptr,#(_display_help_tx_data_1_1 + 0x010c)
   05BD 74 73              1350 	mov	a,#0x73
   05BF F0                 1351 	movx	@dptr,a
                           1352 ;	genPointerSet
                           1353 ;     genFarPointerSet
   05C0 90 01 1E           1354 	mov	dptr,#(_display_help_tx_data_1_1 + 0x010d)
   05C3 74 20              1355 	mov	a,#0x20
   05C5 F0                 1356 	movx	@dptr,a
                           1357 ;	genPointerSet
                           1358 ;     genFarPointerSet
   05C6 90 01 1F           1359 	mov	dptr,#(_display_help_tx_data_1_1 + 0x010e)
   05C9 74 20              1360 	mov	a,#0x20
   05CB F0                 1361 	movx	@dptr,a
                           1362 ;	genPointerSet
                           1363 ;     genFarPointerSet
   05CC 90 01 20           1364 	mov	dptr,#(_display_help_tx_data_1_1 + 0x010f)
   05CF 74 20              1365 	mov	a,#0x20
   05D1 F0                 1366 	movx	@dptr,a
                           1367 ;	genPointerSet
                           1368 ;     genFarPointerSet
   05D2 90 01 21           1369 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0110)
   05D5 74 00              1370 	mov	a,#0x00
   05D7 F0                 1371 	movx	@dptr,a
                           1372 ;	genPointerSet
                           1373 ;     genFarPointerSet
   05D8 90 01 29           1374 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0118)
   05DB 74 0D              1375 	mov	a,#0x0D
   05DD F0                 1376 	movx	@dptr,a
                           1377 ;	genPointerSet
                           1378 ;     genFarPointerSet
   05DE 90 01 2A           1379 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0119)
   05E1 74 0A              1380 	mov	a,#0x0A
   05E3 F0                 1381 	movx	@dptr,a
                           1382 ;	genPointerSet
                           1383 ;     genFarPointerSet
   05E4 90 01 2B           1384 	mov	dptr,#(_display_help_tx_data_1_1 + 0x011a)
   05E7 74 48              1385 	mov	a,#0x48
   05E9 F0                 1386 	movx	@dptr,a
                           1387 ;	genPointerSet
                           1388 ;     genFarPointerSet
   05EA 90 01 2C           1389 	mov	dptr,#(_display_help_tx_data_1_1 + 0x011b)
   05ED 74 20              1390 	mov	a,#0x20
   05EF F0                 1391 	movx	@dptr,a
                           1392 ;	genPointerSet
                           1393 ;     genFarPointerSet
   05F0 90 01 2D           1394 	mov	dptr,#(_display_help_tx_data_1_1 + 0x011c)
   05F3 74 44              1395 	mov	a,#0x44
   05F5 F0                 1396 	movx	@dptr,a
                           1397 ;	genPointerSet
                           1398 ;     genFarPointerSet
   05F6 90 01 2E           1399 	mov	dptr,#(_display_help_tx_data_1_1 + 0x011d)
   05F9 74 69              1400 	mov	a,#0x69
   05FB F0                 1401 	movx	@dptr,a
                           1402 ;	genPointerSet
                           1403 ;     genFarPointerSet
   05FC 90 01 2F           1404 	mov	dptr,#(_display_help_tx_data_1_1 + 0x011e)
   05FF 74 73              1405 	mov	a,#0x73
   0601 F0                 1406 	movx	@dptr,a
                           1407 ;	genPointerSet
                           1408 ;     genFarPointerSet
   0602 90 01 30           1409 	mov	dptr,#(_display_help_tx_data_1_1 + 0x011f)
   0605 74 70              1410 	mov	a,#0x70
   0607 F0                 1411 	movx	@dptr,a
                           1412 ;	genPointerSet
                           1413 ;     genFarPointerSet
   0608 90 01 31           1414 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0120)
   060B 74 6C              1415 	mov	a,#0x6C
   060D F0                 1416 	movx	@dptr,a
                           1417 ;	genPointerSet
                           1418 ;     genFarPointerSet
   060E 90 01 32           1419 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0121)
   0611 74 61              1420 	mov	a,#0x61
   0613 F0                 1421 	movx	@dptr,a
                           1422 ;	genPointerSet
                           1423 ;     genFarPointerSet
   0614 90 01 33           1424 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0122)
   0617 74 79              1425 	mov	a,#0x79
   0619 F0                 1426 	movx	@dptr,a
                           1427 ;	genPointerSet
                           1428 ;     genFarPointerSet
   061A 90 01 34           1429 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0123)
   061D 74 20              1430 	mov	a,#0x20
   061F F0                 1431 	movx	@dptr,a
                           1432 ;	genPointerSet
                           1433 ;     genFarPointerSet
   0620 90 01 35           1434 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0124)
   0623 74 54              1435 	mov	a,#0x54
   0625 F0                 1436 	movx	@dptr,a
                           1437 ;	genPointerSet
                           1438 ;     genFarPointerSet
   0626 90 01 36           1439 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0125)
   0629 74 68              1440 	mov	a,#0x68
   062B F0                 1441 	movx	@dptr,a
                           1442 ;	genPointerSet
                           1443 ;     genFarPointerSet
   062C 90 01 37           1444 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0126)
   062F 74 69              1445 	mov	a,#0x69
   0631 F0                 1446 	movx	@dptr,a
                           1447 ;	genPointerSet
                           1448 ;     genFarPointerSet
   0632 90 01 38           1449 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0127)
   0635 74 73              1450 	mov	a,#0x73
   0637 F0                 1451 	movx	@dptr,a
                           1452 ;	genPointerSet
                           1453 ;     genFarPointerSet
   0638 90 01 39           1454 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0128)
   063B 74 20              1455 	mov	a,#0x20
   063D F0                 1456 	movx	@dptr,a
                           1457 ;	genPointerSet
                           1458 ;     genFarPointerSet
   063E 90 01 3A           1459 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0129)
   0641 74 4D              1460 	mov	a,#0x4D
   0643 F0                 1461 	movx	@dptr,a
                           1462 ;	genPointerSet
                           1463 ;     genFarPointerSet
   0644 90 01 3B           1464 	mov	dptr,#(_display_help_tx_data_1_1 + 0x012a)
   0647 74 65              1465 	mov	a,#0x65
   0649 F0                 1466 	movx	@dptr,a
                           1467 ;	genPointerSet
                           1468 ;     genFarPointerSet
   064A 90 01 3C           1469 	mov	dptr,#(_display_help_tx_data_1_1 + 0x012b)
   064D 74 6E              1470 	mov	a,#0x6E
   064F F0                 1471 	movx	@dptr,a
                           1472 ;	genPointerSet
                           1473 ;     genFarPointerSet
   0650 90 01 3D           1474 	mov	dptr,#(_display_help_tx_data_1_1 + 0x012c)
   0653 74 75              1475 	mov	a,#0x75
   0655 F0                 1476 	movx	@dptr,a
                           1477 ;	genPointerSet
                           1478 ;     genFarPointerSet
   0656 90 01 3E           1479 	mov	dptr,#(_display_help_tx_data_1_1 + 0x012d)
   0659 74 20              1480 	mov	a,#0x20
   065B F0                 1481 	movx	@dptr,a
                           1482 ;	genPointerSet
                           1483 ;     genFarPointerSet
   065C 90 01 3F           1484 	mov	dptr,#(_display_help_tx_data_1_1 + 0x012e)
   065F 74 20              1485 	mov	a,#0x20
   0661 F0                 1486 	movx	@dptr,a
                           1487 ;	genPointerSet
                           1488 ;     genFarPointerSet
   0662 90 01 40           1489 	mov	dptr,#(_display_help_tx_data_1_1 + 0x012f)
   0665 74 20              1490 	mov	a,#0x20
   0667 F0                 1491 	movx	@dptr,a
                           1492 ;	genPointerSet
                           1493 ;     genFarPointerSet
   0668 90 01 41           1494 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0130)
   066B 74 20              1495 	mov	a,#0x20
   066D F0                 1496 	movx	@dptr,a
                           1497 ;	genPointerSet
                           1498 ;     genFarPointerSet
   066E 90 01 42           1499 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0131)
   0671 74 20              1500 	mov	a,#0x20
   0673 F0                 1501 	movx	@dptr,a
                           1502 ;	genPointerSet
                           1503 ;     genFarPointerSet
   0674 90 01 43           1504 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0132)
   0677 74 20              1505 	mov	a,#0x20
   0679 F0                 1506 	movx	@dptr,a
                           1507 ;	genPointerSet
                           1508 ;     genFarPointerSet
   067A 90 01 44           1509 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0133)
   067D 74 20              1510 	mov	a,#0x20
   067F F0                 1511 	movx	@dptr,a
                           1512 ;	genPointerSet
                           1513 ;     genFarPointerSet
   0680 90 01 45           1514 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0134)
   0683 74 20              1515 	mov	a,#0x20
   0685 F0                 1516 	movx	@dptr,a
                           1517 ;	genPointerSet
                           1518 ;     genFarPointerSet
   0686 90 01 46           1519 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0135)
   0689 74 0D              1520 	mov	a,#0x0D
   068B F0                 1521 	movx	@dptr,a
                           1522 ;	genPointerSet
                           1523 ;     genFarPointerSet
   068C 90 01 47           1524 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0136)
   068F 74 0A              1525 	mov	a,#0x0A
   0691 F0                 1526 	movx	@dptr,a
                           1527 ;	genPointerSet
                           1528 ;     genFarPointerSet
   0692 90 01 48           1529 	mov	dptr,#(_display_help_tx_data_1_1 + 0x0137)
   0695 74 00              1530 	mov	a,#0x00
   0697 F0                 1531 	movx	@dptr,a
                    0636   1532 	C$cli.c$33$1$1 ==.
                           1533 ;	../cli.c:33: UART_send(&g_stdio_uart, tx_data[0],sizeof(tx_data));
                           1534 ;	genCast
   0698 90 07 AF           1535 	mov	dptr,#_UART_send_PARM_2
   069B 74 11              1536 	mov	a,#_display_help_tx_data_1_1
   069D F0                 1537 	movx	@dptr,a
   069E A3                 1538 	inc	dptr
   069F 74 00              1539 	mov	a,#(_display_help_tx_data_1_1 >> 8)
   06A1 F0                 1540 	movx	@dptr,a
   06A2 A3                 1541 	inc	dptr
   06A3 74 00              1542 	mov	a,#0x0
   06A5 F0                 1543 	movx	@dptr,a
                           1544 ;	genAssign
   06A6 90 07 B2           1545 	mov	dptr,#_UART_send_PARM_3
   06A9 74 C0              1546 	mov	a,#0xC0
   06AB F0                 1547 	movx	@dptr,a
   06AC A3                 1548 	inc	dptr
   06AD 74 03              1549 	mov	a,#0x03
   06AF F0                 1550 	movx	@dptr,a
                           1551 ;	genCall
   06B0 75 82 02           1552 	mov	dpl,#_g_stdio_uart
   06B3 75 83 04           1553 	mov	dph,#(_g_stdio_uart >> 8)
   06B6 75 F0 00           1554 	mov	b,#0x00
   06B9 12 2F D9           1555 	lcall	_UART_send
   06BC                    1556 00101$:
                    065A   1557 	C$cli.c$36$1$1 ==.
                    065A   1558 	XG$display_help$0$0 ==.
   06BC 22                 1559 	ret
                           1560 ;------------------------------------------------------------
                           1561 ;Allocation info for local variables in function 'display_prompt'
                           1562 ;------------------------------------------------------------
                           1563 ;------------------------------------------------------------
                    065B   1564 	G$display_prompt$0$0 ==.
                    065B   1565 	C$cli.c$40$1$1 ==.
                           1566 ;	../cli.c:40: void display_prompt(void) {
                           1567 ;	-----------------------------------------
                           1568 ;	 function display_prompt
                           1569 ;	-----------------------------------------
   06BD                    1570 _display_prompt:
                    065B   1571 	C$cli.c$42$1$1 ==.
                           1572 ;	../cli.c:42: dp_display_text("\r\nCore1553BRT>");
                           1573 ;	genCall
   06BD 75 82 89           1574 	mov	dpl,#__str_8
   06C0 75 83 71           1575 	mov	dph,#(__str_8 >> 8)
   06C3 75 F0 80           1576 	mov	b,#0x80
   06C6 12 11 F7           1577 	lcall	_dp_display_text
   06C9                    1578 00101$:
                    0667   1579 	C$cli.c$45$1$1 ==.
                    0667   1580 	XG$display_prompt$0$0 ==.
   06C9 22                 1581 	ret
                           1582 ;------------------------------------------------------------
                           1583 ;Allocation info for local variables in function 'get_key_selection'
                           1584 ;------------------------------------------------------------
                           1585 ;rx_data                   Allocated with name '_get_key_selection_rx_data_1_1'
                           1586 ;rx_size                   Allocated with name '_get_key_selection_rx_size_1_1'
                           1587 ;------------------------------------------------------------
                    0668   1588 	G$get_key_selection$0$0 ==.
                    0668   1589 	C$cli.c$49$1$1 ==.
                           1590 ;	../cli.c:49: uint8_t get_key_selection(void)
                           1591 ;	-----------------------------------------
                           1592 ;	 function get_key_selection
                           1593 ;	-----------------------------------------
   06CA                    1594 _get_key_selection:
                    0668   1595 	C$cli.c$56$2$2 ==.
                           1596 ;	../cli.c:56: do {
   06CA                    1597 00101$:
                    0668   1598 	C$cli.c$57$2$2 ==.
                           1599 ;	../cli.c:57: rx_size = UART_get_rx(&g_stdio_uart, &rx_data[1],1);
                           1600 ;	genCast
   06CA 90 08 AD           1601 	mov	dptr,#_UART_get_rx_PARM_2
   06CD 74 D2              1602 	mov	a,#(_get_key_selection_rx_data_1_1 + 0x0001)
   06CF F0                 1603 	movx	@dptr,a
   06D0 A3                 1604 	inc	dptr
   06D1 74 03              1605 	mov	a,#((_get_key_selection_rx_data_1_1 + 0x0001) >> 8)
   06D3 F0                 1606 	movx	@dptr,a
   06D4 A3                 1607 	inc	dptr
   06D5 74 00              1608 	mov	a,#0x0
   06D7 F0                 1609 	movx	@dptr,a
                           1610 ;	genAssign
   06D8 90 08 B0           1611 	mov	dptr,#_UART_get_rx_PARM_3
   06DB 74 01              1612 	mov	a,#0x01
   06DD F0                 1613 	movx	@dptr,a
   06DE E4                 1614 	clr	a
   06DF A3                 1615 	inc	dptr
   06E0 F0                 1616 	movx	@dptr,a
                           1617 ;	genCall
   06E1 75 82 02           1618 	mov	dpl,#_g_stdio_uart
   06E4 75 83 04           1619 	mov	dph,#(_g_stdio_uart >> 8)
   06E7 75 F0 00           1620 	mov	b,#0x00
   06EA 12 38 F7           1621 	lcall	_UART_get_rx
   06ED AA 82              1622 	mov	r2,dpl
   06EF AB 83              1623 	mov	r3,dph
                           1624 ;	genCast
                    068F   1625 	C$cli.c$58$1$1 ==.
                           1626 ;	../cli.c:58: }while(rx_size == 0);
                           1627 ;	genIfx
   06F1 EA                 1628 	mov	a,r2
                           1629 ;	genIfxJump
   06F2 70 03              1630 	jnz	00108$
   06F4 02 06 CA           1631 	ljmp	00101$
   06F7                    1632 00108$:
                    0695   1633 	C$cli.c$60$1$1 ==.
                           1634 ;	../cli.c:60: key = rx_data[1];
                           1635 ;	genPointerGet
                           1636 ;	genFarPointerGet
   06F7 90 03 D2           1637 	mov	dptr,#(_get_key_selection_rx_data_1_1 + 0x0001)
   06FA E0                 1638 	movx	a,@dptr
   06FB FA                 1639 	mov	r2,a
                           1640 ;	genAssign
   06FC 90 00 00           1641 	mov	dptr,#_key
   06FF EA                 1642 	mov	a,r2
   0700 F0                 1643 	movx	@dptr,a
                    069F   1644 	C$cli.c$62$1$1 ==.
                           1645 ;	../cli.c:62: UART_send (&g_stdio_uart, &key,sizeof (key));
                           1646 ;	genCast
   0701 90 07 AF           1647 	mov	dptr,#_UART_send_PARM_2
   0704 74 00              1648 	mov	a,#_key
   0706 F0                 1649 	movx	@dptr,a
   0707 A3                 1650 	inc	dptr
   0708 74 00              1651 	mov	a,#(_key >> 8)
   070A F0                 1652 	movx	@dptr,a
   070B A3                 1653 	inc	dptr
   070C 74 00              1654 	mov	a,#0x0
   070E F0                 1655 	movx	@dptr,a
                           1656 ;	genAssign
   070F 90 07 B2           1657 	mov	dptr,#_UART_send_PARM_3
   0712 74 01              1658 	mov	a,#0x01
   0714 F0                 1659 	movx	@dptr,a
   0715 E4                 1660 	clr	a
   0716 A3                 1661 	inc	dptr
   0717 F0                 1662 	movx	@dptr,a
                           1663 ;	genCall
   0718 75 82 02           1664 	mov	dpl,#_g_stdio_uart
   071B 75 83 04           1665 	mov	dph,#(_g_stdio_uart >> 8)
   071E 75 F0 00           1666 	mov	b,#0x00
   0721 12 2F D9           1667 	lcall	_UART_send
                    06C2   1668 	C$cli.c$63$1$1 ==.
                           1669 ;	../cli.c:63: return rx_data[1];
                           1670 ;	genPointerGet
                           1671 ;	genFarPointerGet
   0724 90 03 D2           1672 	mov	dptr,#(_get_key_selection_rx_data_1_1 + 0x0001)
   0727 E0                 1673 	movx	a,@dptr
   0728 FA                 1674 	mov	r2,a
                           1675 ;	genRet
   0729 8A 82              1676 	mov	dpl,r2
   072B                    1677 00104$:
                    06C9   1678 	C$cli.c$65$1$1 ==.
                    06C9   1679 	XG$get_key_selection$0$0 ==.
   072B 22                 1680 	ret
                           1681 ;------------------------------------------------------------
                           1682 ;Allocation info for local variables in function 'read_user_input'
                           1683 ;------------------------------------------------------------
                           1684 ;rx_char_ptr               Allocated with name '_read_user_input_rx_char_ptr_1_1'
                           1685 ;recv_char                 Allocated with name '_read_user_input_recv_char_1_1'
                           1686 ;size                      Allocated with name '_read_user_input_size_1_1'
                           1687 ;index                     Allocated with name '_read_user_input_index_1_1'
                           1688 ;------------------------------------------------------------
                    06CA   1689 	G$read_user_input$0$0 ==.
                    06CA   1690 	C$cli.c$72$1$1 ==.
                           1691 ;	../cli.c:72: void read_user_input (uint8_t *rx_char_ptr)
                           1692 ;	-----------------------------------------
                           1693 ;	 function read_user_input
                           1694 ;	-----------------------------------------
   072C                    1695 _read_user_input:
                           1696 ;	genReceive
   072C AA F0              1697 	mov	r2,b
   072E AB 83              1698 	mov	r3,dph
   0730 E5 82              1699 	mov	a,dpl
   0732 90 03 D3           1700 	mov	dptr,#_read_user_input_rx_char_ptr_1_1
   0735 F0                 1701 	movx	@dptr,a
   0736 A3                 1702 	inc	dptr
   0737 EB                 1703 	mov	a,r3
   0738 F0                 1704 	movx	@dptr,a
   0739 A3                 1705 	inc	dptr
   073A EA                 1706 	mov	a,r2
   073B F0                 1707 	movx	@dptr,a
                    06DA   1708 	C$cli.c$74$1$1 ==.
                           1709 ;	../cli.c:74: uint8_t recv_char=0;
                           1710 ;	genAssign
   073C 90 03 D6           1711 	mov	dptr,#_read_user_input_recv_char_1_1
   073F 74 00              1712 	mov	a,#0x00
   0741 F0                 1713 	movx	@dptr,a
                    06E0   1714 	C$cli.c$77$1$1 ==.
                           1715 ;	../cli.c:77: for(index = 0; index < 10; index++)
                           1716 ;	genAssign
   0742 90 03 D7           1717 	mov	dptr,#_read_user_input_index_1_1
   0745 74 00              1718 	mov	a,#0x00
   0747 F0                 1719 	movx	@dptr,a
   0748                    1720 00106$:
                           1721 ;	genAssign
   0748 90 03 D7           1722 	mov	dptr,#_read_user_input_index_1_1
   074B E0                 1723 	movx	a,@dptr
   074C FA                 1724 	mov	r2,a
                           1725 ;	genCmpLt
                           1726 ;	genCmp
   074D BA 0A 00           1727 	cjne	r2,#0x0A,00117$
   0750                    1728 00117$:
                           1729 ;	genIfxJump
   0750 40 03              1730 	jc	00118$
   0752 02 07 6D           1731 	ljmp	00109$
   0755                    1732 00118$:
                    06F3   1733 	C$cli.c$79$2$2 ==.
                           1734 ;	../cli.c:79: rx_char[index] = '0';
                           1735 ;	genPlus
   0755 E5 02              1736 	mov	a,ar2
   0757 24 01              1737 	add	a,#_rx_char
   0759 F5 82              1738 	mov	dpl,a
   075B 74 00              1739 	mov	a,#0x00
   075D 34 00              1740 	addc	a,#(_rx_char >> 8)
   075F F5 83              1741 	mov	dph,a
                           1742 ;	genPointerSet
                           1743 ;     genFarPointerSet
   0761 74 30              1744 	mov	a,#0x30
   0763 F0                 1745 	movx	@dptr,a
                    0702   1746 	C$cli.c$77$1$1 ==.
                           1747 ;	../cli.c:77: for(index = 0; index < 10; index++)
                           1748 ;	genPlus
   0764 90 03 D7           1749 	mov	dptr,#_read_user_input_index_1_1
                           1750 ;	genPlusIncr
   0767 EA                 1751 	mov	a,r2
   0768 04                 1752 	inc	a
   0769 F0                 1753 	movx	@dptr,a
   076A 02 07 48           1754 	ljmp	00106$
   076D                    1755 00109$:
                    070B   1756 	C$cli.c$81$1$1 ==.
                           1757 ;	../cli.c:81: index = 0;
                           1758 ;	genAssign
   076D 90 03 D7           1759 	mov	dptr,#_read_user_input_index_1_1
   0770 74 00              1760 	mov	a,#0x00
   0772 F0                 1761 	movx	@dptr,a
                    0711   1762 	C$cli.c$82$3$4 ==.
                           1763 ;	../cli.c:82: while(recv_char != 13)  //'\n'
                           1764 ;	genAssign
   0773 90 03 D3           1765 	mov	dptr,#_read_user_input_rx_char_ptr_1_1
   0776 E0                 1766 	movx	a,@dptr
   0777 FA                 1767 	mov	r2,a
   0778 A3                 1768 	inc	dptr
   0779 E0                 1769 	movx	a,@dptr
   077A FB                 1770 	mov	r3,a
   077B A3                 1771 	inc	dptr
   077C E0                 1772 	movx	a,@dptr
   077D FC                 1773 	mov	r4,a
   077E                    1774 00103$:
                           1775 ;	genAssign
   077E 90 03 D6           1776 	mov	dptr,#_read_user_input_recv_char_1_1
   0781 E0                 1777 	movx	a,@dptr
   0782 FD                 1778 	mov	r5,a
                           1779 ;	genCmpEq
                           1780 ;	gencjneshort
   0783 BD 0D 03           1781 	cjne	r5,#0x0D,00119$
   0786 02 08 1E           1782 	ljmp	00110$
   0789                    1783 00119$:
                    0727   1784 	C$cli.c$84$2$3 ==.
                           1785 ;	../cli.c:84: size = UART_get_rx(&g_stdio_uart, &recv_char,1);
                           1786 ;	genCast
   0789 90 08 AD           1787 	mov	dptr,#_UART_get_rx_PARM_2
   078C 74 D6              1788 	mov	a,#_read_user_input_recv_char_1_1
   078E F0                 1789 	movx	@dptr,a
   078F A3                 1790 	inc	dptr
   0790 74 03              1791 	mov	a,#(_read_user_input_recv_char_1_1 >> 8)
   0792 F0                 1792 	movx	@dptr,a
   0793 A3                 1793 	inc	dptr
   0794 74 00              1794 	mov	a,#0x0
   0796 F0                 1795 	movx	@dptr,a
                           1796 ;	genAssign
   0797 90 08 B0           1797 	mov	dptr,#_UART_get_rx_PARM_3
   079A 74 01              1798 	mov	a,#0x01
   079C F0                 1799 	movx	@dptr,a
   079D E4                 1800 	clr	a
   079E A3                 1801 	inc	dptr
   079F F0                 1802 	movx	@dptr,a
                           1803 ;	genCall
   07A0 75 82 02           1804 	mov	dpl,#_g_stdio_uart
   07A3 75 83 04           1805 	mov	dph,#(_g_stdio_uart >> 8)
   07A6 75 F0 00           1806 	mov	b,#0x00
   07A9 C0 02              1807 	push	ar2
   07AB C0 03              1808 	push	ar3
   07AD C0 04              1809 	push	ar4
   07AF 12 38 F7           1810 	lcall	_UART_get_rx
   07B2 AD 82              1811 	mov	r5,dpl
   07B4 AE 83              1812 	mov	r6,dph
   07B6 D0 04              1813 	pop	ar4
   07B8 D0 03              1814 	pop	ar3
   07BA D0 02              1815 	pop	ar2
                           1816 ;	genCast
                    075A   1817 	C$cli.c$85$2$3 ==.
                           1818 ;	../cli.c:85: if(size > 0)
                           1819 ;	genIfx
   07BC ED                 1820 	mov	a,r5
                           1821 ;	genIfxJump
   07BD 70 03              1822 	jnz	00120$
   07BF 02 07 7E           1823 	ljmp	00103$
   07C2                    1824 00120$:
                    0760   1825 	C$cli.c$88$3$4 ==.
                           1826 ;	../cli.c:88: rx_char_ptr[index] = recv_char;
                           1827 ;	genAssign
   07C2 90 03 D7           1828 	mov	dptr,#_read_user_input_index_1_1
   07C5 E0                 1829 	movx	a,@dptr
   07C6 FD                 1830 	mov	r5,a
                           1831 ;	genPlus
   07C7 E5 05              1832 	mov	a,ar5
   07C9 25 02              1833 	add	a,ar2
   07CB FE                 1834 	mov	r6,a
   07CC 74 00              1835 	mov	a,#0x00
   07CE 35 03              1836 	addc	a,ar3
   07D0 FF                 1837 	mov	r7,a
   07D1 8C 00              1838 	mov	ar0,r4
                           1839 ;	genAssign
   07D3 90 03 D6           1840 	mov	dptr,#_read_user_input_recv_char_1_1
   07D6 E0                 1841 	movx	a,@dptr
   07D7 F9                 1842 	mov	r1,a
                           1843 ;	genPointerSet
                           1844 ;	genGenPointerSet
   07D8 8E 82              1845 	mov	dpl,r6
   07DA 8F 83              1846 	mov	dph,r7
   07DC 88 F0              1847 	mov	b,r0
   07DE E9                 1848 	mov	a,r1
   07DF 12 70 17           1849 	lcall	__gptrput
                    0780   1850 	C$cli.c$89$3$4 ==.
                           1851 ;	../cli.c:89: UART_send (&g_stdio_uart, (uint8_t *)&recv_char,sizeof(recv_char));
                           1852 ;	genCast
   07E2 90 07 AF           1853 	mov	dptr,#_UART_send_PARM_2
   07E5 74 D6              1854 	mov	a,#_read_user_input_recv_char_1_1
   07E7 F0                 1855 	movx	@dptr,a
   07E8 A3                 1856 	inc	dptr
   07E9 74 03              1857 	mov	a,#(_read_user_input_recv_char_1_1 >> 8)
   07EB F0                 1858 	movx	@dptr,a
   07EC A3                 1859 	inc	dptr
   07ED 74 00              1860 	mov	a,#0x0
   07EF F0                 1861 	movx	@dptr,a
                           1862 ;	genAssign
   07F0 90 07 B2           1863 	mov	dptr,#_UART_send_PARM_3
   07F3 74 01              1864 	mov	a,#0x01
   07F5 F0                 1865 	movx	@dptr,a
   07F6 E4                 1866 	clr	a
   07F7 A3                 1867 	inc	dptr
   07F8 F0                 1868 	movx	@dptr,a
                           1869 ;	genCall
   07F9 75 82 02           1870 	mov	dpl,#_g_stdio_uart
   07FC 75 83 04           1871 	mov	dph,#(_g_stdio_uart >> 8)
   07FF 75 F0 00           1872 	mov	b,#0x00
   0802 C0 02              1873 	push	ar2
   0804 C0 03              1874 	push	ar3
   0806 C0 04              1875 	push	ar4
   0808 C0 05              1876 	push	ar5
   080A 12 2F D9           1877 	lcall	_UART_send
   080D D0 05              1878 	pop	ar5
   080F D0 04              1879 	pop	ar4
   0811 D0 03              1880 	pop	ar3
   0813 D0 02              1881 	pop	ar2
                    07B3   1882 	C$cli.c$90$3$4 ==.
                           1883 ;	../cli.c:90: index++;
                           1884 ;	genPlus
   0815 90 03 D7           1885 	mov	dptr,#_read_user_input_index_1_1
                           1886 ;	genPlusIncr
   0818 ED                 1887 	mov	a,r5
   0819 04                 1888 	inc	a
   081A F0                 1889 	movx	@dptr,a
                    07B9   1890 	C$cli.c$91$1$1 ==.
                           1891 ;	../cli.c:91: size = 0; // clear the rcvd flag
   081B 02 07 7E           1892 	ljmp	00103$
   081E                    1893 00110$:
                    07BC   1894 	C$cli.c$95$1$1 ==.
                    07BC   1895 	XG$read_user_input$0$0 ==.
   081E 22                 1896 	ret
                           1897 ;------------------------------------------------------------
                           1898 ;Allocation info for local variables in function 'display_brt_regs'
                           1899 ;------------------------------------------------------------
                           1900 ;sloc0                     Allocated with name '_display_brt_regs_sloc0_1_0'
                           1901 ;mem_addr                  Allocated with name '_display_brt_regs_mem_addr_1_1'
                           1902 ;mem_data                  Allocated with name '_display_brt_regs_mem_data_1_1'
                           1903 ;i                         Allocated with name '_display_brt_regs_i_1_1'
                           1904 ;------------------------------------------------------------
                    07BD   1905 	G$display_brt_regs$0$0 ==.
                    07BD   1906 	C$cli.c$102$1$1 ==.
                           1907 ;	../cli.c:102: void display_brt_regs(void){
                           1908 ;	-----------------------------------------
                           1909 ;	 function display_brt_regs
                           1910 ;	-----------------------------------------
   081F                    1911 _display_brt_regs:
                    07BD   1912 	C$cli.c$107$1$1 ==.
                           1913 ;	../cli.c:107: mem_addr  = ( APB3_BASE_ADDRESS + CORE1553BRT_0) + BRT_REG_OFFSET ;  // base address of BRT instance, 32location from here onwards
                           1914 ;	genAssign
   081F 90 03 D8           1915 	mov	dptr,#_display_brt_regs_mem_addr_1_1
   0822 74 E0              1916 	mov	a,#0xE0
   0824 F0                 1917 	movx	@dptr,a
   0825 A3                 1918 	inc	dptr
   0826 74 FF              1919 	mov	a,#0xFF
   0828 F0                 1920 	movx	@dptr,a
   0829 A3                 1921 	inc	dptr
   082A 74 00              1922 	mov	a,#0x00
   082C F0                 1923 	movx	@dptr,a
   082D A3                 1924 	inc	dptr
   082E 74 00              1925 	mov	a,#0x00
   0830 F0                 1926 	movx	@dptr,a
                    07CF   1927 	C$cli.c$109$1$1 ==.
                           1928 ;	../cli.c:109: dp_display_text("\n\r BRT Register Contents\r\n ");
                           1929 ;	genCall
   0831 75 82 98           1930 	mov	dpl,#__str_9
   0834 75 83 71           1931 	mov	dph,#(__str_9 >> 8)
   0837 75 F0 80           1932 	mov	b,#0x80
   083A 12 11 F7           1933 	lcall	_dp_display_text
                    07DB   1934 	C$cli.c$110$1$1 ==.
                           1935 ;	../cli.c:110: for ( i=0; i<= 32 ;i++) {
                           1936 ;	genAssign
   083D 90 03 DC           1937 	mov	dptr,#_display_brt_regs_i_1_1
   0840 74 00              1938 	mov	a,#0x00
   0842 F0                 1939 	movx	@dptr,a
   0843                    1940 00101$:
                           1941 ;	genAssign
   0843 90 03 DC           1942 	mov	dptr,#_display_brt_regs_i_1_1
   0846 E0                 1943 	movx	a,@dptr
   0847 F5 18              1944 	mov	_display_brt_regs_sloc0_1_0,a
                           1945 ;	genCmpGt
                           1946 ;	genCmp
   0849 C3                 1947 	clr	c
   084A 74 20              1948 	mov	a,#0x20
   084C 95 18              1949 	subb	a,_display_brt_regs_sloc0_1_0
                           1950 ;	genIfxJump
   084E 50 03              1951 	jnc	00109$
   0850 02 09 2D           1952 	ljmp	00105$
   0853                    1953 00109$:
                    07F1   1954 	C$cli.c$111$2$2 ==.
                           1955 ;	../cli.c:111: dp_display_text("\r\n");
                           1956 ;	genCall
   0853 75 82 B4           1957 	mov	dpl,#__str_10
   0856 75 83 71           1958 	mov	dph,#(__str_10 >> 8)
   0859 75 F0 80           1959 	mov	b,#0x80
   085C 12 11 F7           1960 	lcall	_dp_display_text
                    07FD   1961 	C$cli.c$112$2$2 ==.
                           1962 ;	../cli.c:112: dp_display_value(i,DEC);
                           1963 ;	genCast
   085F AB 18              1964 	mov	r3,_display_brt_regs_sloc0_1_0
   0861 7C 00              1965 	mov	r4,#0x00
   0863 7D 00              1966 	mov	r5,#0x00
   0865 7E 00              1967 	mov	r6,#0x00
                           1968 ;	genAssign
   0867 90 04 36           1969 	mov	dptr,#_dp_display_value_PARM_2
   086A 74 01              1970 	mov	a,#0x01
   086C F0                 1971 	movx	@dptr,a
   086D E4                 1972 	clr	a
   086E A3                 1973 	inc	dptr
   086F F0                 1974 	movx	@dptr,a
                           1975 ;	genCall
   0870 8B 82              1976 	mov	dpl,r3
   0872 8C 83              1977 	mov	dph,r4
   0874 8D F0              1978 	mov	b,r5
   0876 EE                 1979 	mov	a,r6
   0877 12 12 75           1980 	lcall	_dp_display_value
                    0818   1981 	C$cli.c$113$2$2 ==.
                           1982 ;	../cli.c:113: dp_display_text("\t");
                           1983 ;	genCall
   087A 75 82 B7           1984 	mov	dpl,#__str_11
   087D 75 83 71           1985 	mov	dph,#(__str_11 >> 8)
   0880 75 F0 80           1986 	mov	b,#0x80
   0883 12 11 F7           1987 	lcall	_dp_display_text
                    0824   1988 	C$cli.c$114$2$2 ==.
                           1989 ;	../cli.c:114: dp_display_value(mem_addr,HEX);
                           1990 ;	genAssign
   0886 90 03 D8           1991 	mov	dptr,#_display_brt_regs_mem_addr_1_1
   0889 E0                 1992 	movx	a,@dptr
   088A FB                 1993 	mov	r3,a
   088B A3                 1994 	inc	dptr
   088C E0                 1995 	movx	a,@dptr
   088D FC                 1996 	mov	r4,a
   088E A3                 1997 	inc	dptr
   088F E0                 1998 	movx	a,@dptr
   0890 FD                 1999 	mov	r5,a
   0891 A3                 2000 	inc	dptr
   0892 E0                 2001 	movx	a,@dptr
   0893 FE                 2002 	mov	r6,a
                           2003 ;	genAssign
   0894 90 04 36           2004 	mov	dptr,#_dp_display_value_PARM_2
   0897 E4                 2005 	clr	a
   0898 F0                 2006 	movx	@dptr,a
   0899 A3                 2007 	inc	dptr
   089A F0                 2008 	movx	@dptr,a
                           2009 ;	genCall
   089B 8B 82              2010 	mov	dpl,r3
   089D 8C 83              2011 	mov	dph,r4
   089F 8D F0              2012 	mov	b,r5
   08A1 EE                 2013 	mov	a,r6
   08A2 C0 03              2014 	push	ar3
   08A4 C0 04              2015 	push	ar4
   08A6 C0 05              2016 	push	ar5
   08A8 C0 06              2017 	push	ar6
   08AA 12 12 75           2018 	lcall	_dp_display_value
   08AD D0 06              2019 	pop	ar6
   08AF D0 05              2020 	pop	ar5
   08B1 D0 04              2021 	pop	ar4
   08B3 D0 03              2022 	pop	ar3
                    0853   2023 	C$cli.c$115$2$2 ==.
                           2024 ;	../cli.c:115: dp_display_text("\t");
                           2025 ;	genCall
   08B5 75 82 B7           2026 	mov	dpl,#__str_11
   08B8 75 83 71           2027 	mov	dph,#(__str_11 >> 8)
   08BB 75 F0 80           2028 	mov	b,#0x80
   08BE C0 03              2029 	push	ar3
   08C0 C0 04              2030 	push	ar4
   08C2 C0 05              2031 	push	ar5
   08C4 C0 06              2032 	push	ar6
   08C6 12 11 F7           2033 	lcall	_dp_display_text
   08C9 D0 06              2034 	pop	ar6
   08CB D0 05              2035 	pop	ar5
   08CD D0 04              2036 	pop	ar4
   08CF D0 03              2037 	pop	ar3
                    086F   2038 	C$cli.c$116$2$2 ==.
                           2039 ;	../cli.c:116: mem_data = HW_get_16bit_reg(mem_addr);
                           2040 ;	genCast
   08D1 8B 07              2041 	mov	ar7,r3
   08D3 8C 00              2042 	mov	ar0,r4
                           2043 ;	genCall
   08D5 8F 82              2044 	mov	dpl,r7
   08D7 88 83              2045 	mov	dph,r0
   08D9 C0 03              2046 	push	ar3
   08DB C0 04              2047 	push	ar4
   08DD C0 05              2048 	push	ar5
   08DF C0 06              2049 	push	ar6
   08E1 12 1B DB           2050 	lcall	_HW_get_16bit_reg
   08E4 AF 82              2051 	mov	r7,dpl
   08E6 A8 83              2052 	mov	r0,dph
   08E8 D0 06              2053 	pop	ar6
   08EA D0 05              2054 	pop	ar5
   08EC D0 04              2055 	pop	ar4
   08EE D0 03              2056 	pop	ar3
                           2057 ;	genCast
   08F0 79 00              2058 	mov	r1,#0x00
   08F2 7A 00              2059 	mov	r2,#0x00
                    0892   2060 	C$cli.c$117$2$2 ==.
                           2061 ;	../cli.c:117: dp_display_value(mem_data,HEX);
                           2062 ;	genAssign
   08F4 90 04 36           2063 	mov	dptr,#_dp_display_value_PARM_2
   08F7 E4                 2064 	clr	a
   08F8 F0                 2065 	movx	@dptr,a
   08F9 A3                 2066 	inc	dptr
   08FA F0                 2067 	movx	@dptr,a
                           2068 ;	genCall
   08FB 8F 82              2069 	mov	dpl,r7
   08FD 88 83              2070 	mov	dph,r0
   08FF 89 F0              2071 	mov	b,r1
   0901 EA                 2072 	mov	a,r2
   0902 C0 03              2073 	push	ar3
   0904 C0 04              2074 	push	ar4
   0906 C0 05              2075 	push	ar5
   0908 C0 06              2076 	push	ar6
   090A 12 12 75           2077 	lcall	_dp_display_value
   090D D0 06              2078 	pop	ar6
   090F D0 05              2079 	pop	ar5
   0911 D0 04              2080 	pop	ar4
   0913 D0 03              2081 	pop	ar3
                    08B3   2082 	C$cli.c$118$2$2 ==.
                           2083 ;	../cli.c:118: mem_addr = mem_addr++;
                           2084 ;	genAssign
   0915 90 03 D8           2085 	mov	dptr,#_display_brt_regs_mem_addr_1_1
   0918 EB                 2086 	mov	a,r3
   0919 F0                 2087 	movx	@dptr,a
   091A A3                 2088 	inc	dptr
   091B EC                 2089 	mov	a,r4
   091C F0                 2090 	movx	@dptr,a
   091D A3                 2091 	inc	dptr
   091E ED                 2092 	mov	a,r5
   091F F0                 2093 	movx	@dptr,a
   0920 A3                 2094 	inc	dptr
   0921 EE                 2095 	mov	a,r6
   0922 F0                 2096 	movx	@dptr,a
                    08C1   2097 	C$cli.c$110$1$1 ==.
                           2098 ;	../cli.c:110: for ( i=0; i<= 32 ;i++) {
                           2099 ;	genPlus
   0923 90 03 DC           2100 	mov	dptr,#_display_brt_regs_i_1_1
                           2101 ;	genPlusIncr
   0926 E5 18              2102 	mov	a,_display_brt_regs_sloc0_1_0
   0928 04                 2103 	inc	a
   0929 F0                 2104 	movx	@dptr,a
   092A 02 08 43           2105 	ljmp	00101$
   092D                    2106 00105$:
                    08CB   2107 	C$cli.c$120$1$1 ==.
                    08CB   2108 	XG$display_brt_regs$0$0 ==.
   092D 22                 2109 	ret
                           2110 ;------------------------------------------------------------
                           2111 ;Allocation info for local variables in function 'display_brt_data'
                           2112 ;------------------------------------------------------------
                           2113 ;subaddr                   Allocated with name '_display_brt_data_PARM_2'
                           2114 ;brt_baseaddr              Allocated with name '_display_brt_data_brt_baseaddr_1_1'
                           2115 ;mem_addr                  Allocated with name '_display_brt_data_mem_addr_1_1'
                           2116 ;mem_data                  Allocated with name '_display_brt_data_mem_data_1_1'
                           2117 ;tx_sub_address            Allocated with name '_display_brt_data_tx_sub_address_1_1'
                           2118 ;rx_sub_address            Allocated with name '_display_brt_data_rx_sub_address_1_1'
                           2119 ;i                         Allocated with name '_display_brt_data_i_1_1'
                           2120 ;m                         Allocated with name '_display_brt_data_m_1_1'
                           2121 ;------------------------------------------------------------
                    08CC   2122 	G$display_brt_data$0$0 ==.
                    08CC   2123 	C$cli.c$129$1$1 ==.
                           2124 ;	../cli.c:129: void display_brt_data(uint32_t brt_baseaddr,uint8_t subaddr){
                           2125 ;	-----------------------------------------
                           2126 ;	 function display_brt_data
                           2127 ;	-----------------------------------------
   092E                    2128 _display_brt_data:
                           2129 ;	genReceive
   092E AA 82              2130 	mov	r2,dpl
   0930 AB 83              2131 	mov	r3,dph
   0932 AC F0              2132 	mov	r4,b
   0934 FD                 2133 	mov	r5,a
   0935 90 03 DE           2134 	mov	dptr,#_display_brt_data_brt_baseaddr_1_1
   0938 EA                 2135 	mov	a,r2
   0939 F0                 2136 	movx	@dptr,a
   093A A3                 2137 	inc	dptr
   093B EB                 2138 	mov	a,r3
   093C F0                 2139 	movx	@dptr,a
   093D A3                 2140 	inc	dptr
   093E EC                 2141 	mov	a,r4
   093F F0                 2142 	movx	@dptr,a
   0940 A3                 2143 	inc	dptr
   0941 ED                 2144 	mov	a,r5
   0942 F0                 2145 	movx	@dptr,a
                    08E1   2146 	C$cli.c$136$1$1 ==.
                           2147 ;	../cli.c:136: mem_addr  = (APB3_BASE_ADDRESS +  brt_baseaddr);  // 16 location from here onwards
                           2148 ;	genAssign
   0943 90 03 DE           2149 	mov	dptr,#_display_brt_data_brt_baseaddr_1_1
   0946 E0                 2150 	movx	a,@dptr
   0947 FA                 2151 	mov	r2,a
   0948 A3                 2152 	inc	dptr
   0949 E0                 2153 	movx	a,@dptr
   094A FB                 2154 	mov	r3,a
   094B A3                 2155 	inc	dptr
   094C E0                 2156 	movx	a,@dptr
   094D FC                 2157 	mov	r4,a
   094E A3                 2158 	inc	dptr
   094F E0                 2159 	movx	a,@dptr
   0950 FD                 2160 	mov	r5,a
                           2161 ;	genPlus
                           2162 ;	genPlusIncr
                           2163 ;     genPlus shortcut
   0951 74 F0              2164 	mov	a,#0xF0
   0953 25 03              2165 	add	a,ar3
   0955 FB                 2166 	mov	r3,a
   0956 74 00              2167 	mov	a,#0x00
   0958 35 04              2168 	addc	a,ar4
   095A FC                 2169 	mov	r4,a
   095B 74 00              2170 	mov	a,#0x00
   095D 35 05              2171 	addc	a,ar5
   095F FD                 2172 	mov	r5,a
                           2173 ;	genCast
                    08FE   2174 	C$cli.c$138$1$1 ==.
                           2175 ;	../cli.c:138: rx_sub_address = mem_addr + (BRT_RX_SA1 * subaddr);   //0x1080
                           2176 ;	genAssign
   0960 90 03 DD           2177 	mov	dptr,#_display_brt_data_PARM_2
   0963 E0                 2178 	movx	a,@dptr
   0964 FC                 2179 	mov	r4,a
                           2180 ;	genMult
                           2181 ;	genMultOneByte
   0965 EC                 2182 	mov	a,r4
   0966 75 F0 20           2183 	mov	b,#0x20
   0969 A4                 2184 	mul	ab
                           2185 ;	genPlus
   096A 25 02              2186 	add	a,ar2
   096C FA                 2187 	mov	r2,a
   096D E5 03              2188 	mov	a,ar3
   096F 35 F0              2189 	addc	a,b
   0971 FB                 2190 	mov	r3,a
                           2191 ;	genAssign
   0972 90 03 E4           2192 	mov	dptr,#_display_brt_data_rx_sub_address_1_1
   0975 EA                 2193 	mov	a,r2
   0976 F0                 2194 	movx	@dptr,a
   0977 A3                 2195 	inc	dptr
   0978 EB                 2196 	mov	a,r3
   0979 F0                 2197 	movx	@dptr,a
                    0918   2198 	C$cli.c$139$1$1 ==.
                           2199 ;	../cli.c:139: tx_sub_address = rx_sub_address + BRT_RX_TX_ADDR_OFSET;
                           2200 ;	genPlus
   097A 90 03 E2           2201 	mov	dptr,#_display_brt_data_tx_sub_address_1_1
                           2202 ;	genPlusIncr
                           2203 ;     genPlus shortcut
   097D EA                 2204 	mov	a,r2
   097E F0                 2205 	movx	@dptr,a
   097F 74 04              2206 	mov	a,#0x04
   0981 25 03              2207 	add	a,ar3
   0983 A3                 2208 	inc	dptr
   0984 F0                 2209 	movx	@dptr,a
                    0923   2210 	C$cli.c$141$1$1 ==.
                           2211 ;	../cli.c:141: dp_display_text("\n\r BRT SA");
                           2212 ;	genCall
   0985 75 82 B9           2213 	mov	dpl,#__str_12
   0988 75 83 71           2214 	mov	dph,#(__str_12 >> 8)
   098B 75 F0 80           2215 	mov	b,#0x80
   098E C0 04              2216 	push	ar4
   0990 12 11 F7           2217 	lcall	_dp_display_text
   0993 D0 04              2218 	pop	ar4
                    0933   2219 	C$cli.c$142$1$1 ==.
                           2220 ;	../cli.c:142: dp_display_value(subaddr,DEC);
                           2221 ;	genCast
   0995 7A 00              2222 	mov	r2,#0x00
   0997 7B 00              2223 	mov	r3,#0x00
   0999 7D 00              2224 	mov	r5,#0x00
                           2225 ;	genAssign
   099B 90 04 36           2226 	mov	dptr,#_dp_display_value_PARM_2
   099E 74 01              2227 	mov	a,#0x01
   09A0 F0                 2228 	movx	@dptr,a
   09A1 E4                 2229 	clr	a
   09A2 A3                 2230 	inc	dptr
   09A3 F0                 2231 	movx	@dptr,a
                           2232 ;	genCall
   09A4 8C 82              2233 	mov	dpl,r4
   09A6 8A 83              2234 	mov	dph,r2
   09A8 8B F0              2235 	mov	b,r3
   09AA ED                 2236 	mov	a,r5
   09AB C0 02              2237 	push	ar2
   09AD C0 03              2238 	push	ar3
   09AF C0 04              2239 	push	ar4
   09B1 C0 05              2240 	push	ar5
   09B3 12 12 75           2241 	lcall	_dp_display_value
   09B6 D0 05              2242 	pop	ar5
   09B8 D0 04              2243 	pop	ar4
   09BA D0 03              2244 	pop	ar3
   09BC D0 02              2245 	pop	ar2
                    095C   2246 	C$cli.c$143$1$1 ==.
                           2247 ;	../cli.c:143: dp_display_text("   RX Buffer\r\n");
                           2248 ;	genCall
   09BE 75 82 C3           2249 	mov	dpl,#__str_13
   09C1 75 83 71           2250 	mov	dph,#(__str_13 >> 8)
   09C4 75 F0 80           2251 	mov	b,#0x80
   09C7 C0 02              2252 	push	ar2
   09C9 C0 03              2253 	push	ar3
   09CB C0 04              2254 	push	ar4
   09CD C0 05              2255 	push	ar5
   09CF 12 11 F7           2256 	lcall	_dp_display_text
   09D2 D0 05              2257 	pop	ar5
   09D4 D0 04              2258 	pop	ar4
   09D6 D0 03              2259 	pop	ar3
   09D8 D0 02              2260 	pop	ar2
                    0978   2261 	C$cli.c$145$1$1 ==.
                           2262 ;	../cli.c:145: for ( i=1; i <= 4 ;i++) {
                           2263 ;	genAssign
   09DA 90 03 E6           2264 	mov	dptr,#_display_brt_data_i_1_1
   09DD 74 01              2265 	mov	a,#0x01
   09DF F0                 2266 	movx	@dptr,a
   09E0                    2267 00104$:
                           2268 ;	genAssign
   09E0 90 03 E6           2269 	mov	dptr,#_display_brt_data_i_1_1
   09E3 E0                 2270 	movx	a,@dptr
   09E4 FE                 2271 	mov	r6,a
                           2272 ;	genCmpGt
                           2273 ;	genCmp
   09E5 C3                 2274 	clr	c
   09E6 74 04              2275 	mov	a,#0x04
   09E8 9E                 2276 	subb	a,r6
                           2277 ;	genIfxJump
   09E9 50 03              2278 	jnc	00125$
   09EB 02 0B 60           2279 	ljmp	00107$
   09EE                    2280 00125$:
                    098C   2281 	C$cli.c$146$2$2 ==.
                           2282 ;	../cli.c:146: dp_display_text("\r\n");
                           2283 ;	genCall
   09EE 75 82 B4           2284 	mov	dpl,#__str_10
   09F1 75 83 71           2285 	mov	dph,#(__str_10 >> 8)
   09F4 75 F0 80           2286 	mov	b,#0x80
   09F7 C0 02              2287 	push	ar2
   09F9 C0 03              2288 	push	ar3
   09FB C0 04              2289 	push	ar4
   09FD C0 05              2290 	push	ar5
   09FF C0 06              2291 	push	ar6
   0A01 12 11 F7           2292 	lcall	_dp_display_text
   0A04 D0 06              2293 	pop	ar6
   0A06 D0 05              2294 	pop	ar5
   0A08 D0 04              2295 	pop	ar4
   0A0A D0 03              2296 	pop	ar3
   0A0C D0 02              2297 	pop	ar2
                    09AC   2298 	C$cli.c$147$2$2 ==.
                           2299 ;	../cli.c:147: dp_display_value(i,DEC);
                           2300 ;	genCast
   0A0E 7F 00              2301 	mov	r7,#0x00
   0A10 78 00              2302 	mov	r0,#0x00
   0A12 79 00              2303 	mov	r1,#0x00
                           2304 ;	genAssign
   0A14 90 04 36           2305 	mov	dptr,#_dp_display_value_PARM_2
   0A17 74 01              2306 	mov	a,#0x01
   0A19 F0                 2307 	movx	@dptr,a
   0A1A E4                 2308 	clr	a
   0A1B A3                 2309 	inc	dptr
   0A1C F0                 2310 	movx	@dptr,a
                           2311 ;	genCall
   0A1D 8E 82              2312 	mov	dpl,r6
   0A1F 8F 83              2313 	mov	dph,r7
   0A21 88 F0              2314 	mov	b,r0
   0A23 E9                 2315 	mov	a,r1
   0A24 C0 02              2316 	push	ar2
   0A26 C0 03              2317 	push	ar3
   0A28 C0 04              2318 	push	ar4
   0A2A C0 05              2319 	push	ar5
   0A2C 12 12 75           2320 	lcall	_dp_display_value
   0A2F D0 05              2321 	pop	ar5
   0A31 D0 04              2322 	pop	ar4
   0A33 D0 03              2323 	pop	ar3
   0A35 D0 02              2324 	pop	ar2
                    09D5   2325 	C$cli.c$148$2$2 ==.
                           2326 ;	../cli.c:148: dp_display_text("\t");
                           2327 ;	genCall
   0A37 75 82 B7           2328 	mov	dpl,#__str_11
   0A3A 75 83 71           2329 	mov	dph,#(__str_11 >> 8)
   0A3D 75 F0 80           2330 	mov	b,#0x80
   0A40 C0 02              2331 	push	ar2
   0A42 C0 03              2332 	push	ar3
   0A44 C0 04              2333 	push	ar4
   0A46 C0 05              2334 	push	ar5
   0A48 12 11 F7           2335 	lcall	_dp_display_text
   0A4B D0 05              2336 	pop	ar5
   0A4D D0 04              2337 	pop	ar4
   0A4F D0 03              2338 	pop	ar3
   0A51 D0 02              2339 	pop	ar2
                    09F1   2340 	C$cli.c$149$2$2 ==.
                           2341 ;	../cli.c:149: dp_display_value(rx_sub_address ,HEX);// ( 8* i) for calculating current address of the total 32 location
                           2342 ;	genAssign
   0A53 90 03 E4           2343 	mov	dptr,#_display_brt_data_rx_sub_address_1_1
   0A56 E0                 2344 	movx	a,@dptr
   0A57 FE                 2345 	mov	r6,a
   0A58 A3                 2346 	inc	dptr
   0A59 E0                 2347 	movx	a,@dptr
   0A5A FF                 2348 	mov	r7,a
                           2349 ;	genCast
   0A5B 78 00              2350 	mov	r0,#0x00
   0A5D 79 00              2351 	mov	r1,#0x00
                           2352 ;	genAssign
   0A5F 90 04 36           2353 	mov	dptr,#_dp_display_value_PARM_2
   0A62 E4                 2354 	clr	a
   0A63 F0                 2355 	movx	@dptr,a
   0A64 A3                 2356 	inc	dptr
   0A65 F0                 2357 	movx	@dptr,a
                           2358 ;	genCall
   0A66 8E 82              2359 	mov	dpl,r6
   0A68 8F 83              2360 	mov	dph,r7
   0A6A 88 F0              2361 	mov	b,r0
   0A6C E9                 2362 	mov	a,r1
   0A6D C0 02              2363 	push	ar2
   0A6F C0 03              2364 	push	ar3
   0A71 C0 04              2365 	push	ar4
   0A73 C0 05              2366 	push	ar5
   0A75 12 12 75           2367 	lcall	_dp_display_value
   0A78 D0 05              2368 	pop	ar5
   0A7A D0 04              2369 	pop	ar4
   0A7C D0 03              2370 	pop	ar3
   0A7E D0 02              2371 	pop	ar2
                    0A1E   2372 	C$cli.c$150$2$2 ==.
                           2373 ;	../cli.c:150: dp_display_text("\t");
                           2374 ;	genCall
   0A80 75 82 B7           2375 	mov	dpl,#__str_11
   0A83 75 83 71           2376 	mov	dph,#(__str_11 >> 8)
   0A86 75 F0 80           2377 	mov	b,#0x80
   0A89 C0 02              2378 	push	ar2
   0A8B C0 03              2379 	push	ar3
   0A8D C0 04              2380 	push	ar4
   0A8F C0 05              2381 	push	ar5
   0A91 12 11 F7           2382 	lcall	_dp_display_text
   0A94 D0 05              2383 	pop	ar5
   0A96 D0 04              2384 	pop	ar4
   0A98 D0 03              2385 	pop	ar3
   0A9A D0 02              2386 	pop	ar2
                    0A3A   2387 	C$cli.c$152$2$2 ==.
                           2388 ;	../cli.c:152: for (m=1; m <=8 ;m++){
                           2389 ;	genAssign
   0A9C 90 03 E7           2390 	mov	dptr,#_display_brt_data_m_1_1
   0A9F 74 08              2391 	mov	a,#0x08
   0AA1 F0                 2392 	movx	@dptr,a
   0AA2                    2393 00103$:
                    0A40   2394 	C$cli.c$154$1$1 ==.
                           2395 ;	../cli.c:154: mem_data= HW_get_16bit_reg(rx_sub_address);
                           2396 ;	genIpush
   0AA2 C0 04              2397 	push	ar4
   0AA4 C0 02              2398 	push	ar2
   0AA6 C0 03              2399 	push	ar3
   0AA8 C0 05              2400 	push	ar5
                           2401 ;	genAssign
   0AAA 90 03 E4           2402 	mov	dptr,#_display_brt_data_rx_sub_address_1_1
   0AAD E0                 2403 	movx	a,@dptr
   0AAE FE                 2404 	mov	r6,a
   0AAF A3                 2405 	inc	dptr
   0AB0 E0                 2406 	movx	a,@dptr
   0AB1 FF                 2407 	mov	r7,a
                           2408 ;	genCall
   0AB2 8E 82              2409 	mov	dpl,r6
   0AB4 8F 83              2410 	mov	dph,r7
   0AB6 C0 02              2411 	push	ar2
   0AB8 C0 03              2412 	push	ar3
   0ABA C0 04              2413 	push	ar4
   0ABC C0 05              2414 	push	ar5
   0ABE C0 06              2415 	push	ar6
   0AC0 C0 07              2416 	push	ar7
   0AC2 12 1B DB           2417 	lcall	_HW_get_16bit_reg
   0AC5 A8 82              2418 	mov	r0,dpl
   0AC7 A9 83              2419 	mov	r1,dph
   0AC9 D0 07              2420 	pop	ar7
   0ACB D0 06              2421 	pop	ar6
   0ACD D0 05              2422 	pop	ar5
   0ACF D0 04              2423 	pop	ar4
   0AD1 D0 03              2424 	pop	ar3
   0AD3 D0 02              2425 	pop	ar2
                    0A73   2426 	C$cli.c$155$3$3 ==.
                           2427 ;	../cli.c:155: dp_display_value(mem_data,HEX);
                           2428 ;	genCast
   0AD5 7A 00              2429 	mov	r2,#0x00
   0AD7 7B 00              2430 	mov	r3,#0x00
                           2431 ;	genAssign
   0AD9 90 04 36           2432 	mov	dptr,#_dp_display_value_PARM_2
   0ADC E4                 2433 	clr	a
   0ADD F0                 2434 	movx	@dptr,a
   0ADE A3                 2435 	inc	dptr
   0ADF F0                 2436 	movx	@dptr,a
                           2437 ;	genCall
   0AE0 88 82              2438 	mov	dpl,r0
   0AE2 89 83              2439 	mov	dph,r1
   0AE4 8A F0              2440 	mov	b,r2
   0AE6 EB                 2441 	mov	a,r3
   0AE7 C0 02              2442 	push	ar2
   0AE9 C0 03              2443 	push	ar3
   0AEB C0 04              2444 	push	ar4
   0AED C0 05              2445 	push	ar5
   0AEF C0 06              2446 	push	ar6
   0AF1 C0 07              2447 	push	ar7
   0AF3 12 12 75           2448 	lcall	_dp_display_value
   0AF6 D0 07              2449 	pop	ar7
   0AF8 D0 06              2450 	pop	ar6
   0AFA D0 05              2451 	pop	ar5
   0AFC D0 04              2452 	pop	ar4
   0AFE D0 03              2453 	pop	ar3
   0B00 D0 02              2454 	pop	ar2
                    0AA0   2455 	C$cli.c$156$3$3 ==.
                           2456 ;	../cli.c:156: dp_display_text("\t");
                           2457 ;	genCall
   0B02 75 82 B7           2458 	mov	dpl,#__str_11
   0B05 75 83 71           2459 	mov	dph,#(__str_11 >> 8)
   0B08 75 F0 80           2460 	mov	b,#0x80
   0B0B C0 02              2461 	push	ar2
   0B0D C0 03              2462 	push	ar3
   0B0F C0 04              2463 	push	ar4
   0B11 C0 05              2464 	push	ar5
   0B13 C0 06              2465 	push	ar6
   0B15 C0 07              2466 	push	ar7
   0B17 12 11 F7           2467 	lcall	_dp_display_text
   0B1A D0 07              2468 	pop	ar7
   0B1C D0 06              2469 	pop	ar6
   0B1E D0 05              2470 	pop	ar5
   0B20 D0 04              2471 	pop	ar4
   0B22 D0 03              2472 	pop	ar3
   0B24 D0 02              2473 	pop	ar2
                    0AC4   2474 	C$cli.c$157$3$3 ==.
                           2475 ;	../cli.c:157: rx_sub_address = rx_sub_address + 1;
                           2476 ;	genPlus
   0B26 90 03 E4           2477 	mov	dptr,#_display_brt_data_rx_sub_address_1_1
                           2478 ;	genPlusIncr
   0B29 74 01              2479 	mov	a,#0x01
   0B2B 25 06              2480 	add	a,ar6
   0B2D F0                 2481 	movx	@dptr,a
   0B2E 74 00              2482 	mov	a,#0x00
   0B30 35 07              2483 	addc	a,ar7
   0B32 A3                 2484 	inc	dptr
   0B33 F0                 2485 	movx	@dptr,a
                           2486 ;	genAssign
   0B34 90 03 E7           2487 	mov	dptr,#_display_brt_data_m_1_1
   0B37 E0                 2488 	movx	a,@dptr
   0B38 FA                 2489 	mov	r2,a
                           2490 ;	genMinus
                           2491 ;	genMinusDec
   0B39 EA                 2492 	mov	a,r2
   0B3A 14                 2493 	dec	a
                           2494 ;	genAssign
   0B3B 90 03 E7           2495 	mov	dptr,#_display_brt_data_m_1_1
   0B3E F0                 2496 	movx	@dptr,a
                    0ADD   2497 	C$cli.c$152$3$3 ==.
                           2498 ;	../cli.c:152: for (m=1; m <=8 ;m++){
                           2499 ;	genAssign
   0B3F 90 03 E7           2500 	mov	dptr,#_display_brt_data_m_1_1
   0B42 E0                 2501 	movx	a,@dptr
   0B43 FA                 2502 	mov	r2,a
                           2503 ;	genIfx
   0B44 EA                 2504 	mov	a,r2
                           2505 ;	genIpop
   0B45 D0 05              2506 	pop	ar5
   0B47 D0 03              2507 	pop	ar3
   0B49 D0 02              2508 	pop	ar2
   0B4B D0 04              2509 	pop	ar4
                           2510 ;	genIfxJump
   0B4D 60 03              2511 	jz	00126$
   0B4F 02 0A A2           2512 	ljmp	00103$
   0B52                    2513 00126$:
                    0AF0   2514 	C$cli.c$145$1$1 ==.
                           2515 ;	../cli.c:145: for ( i=1; i <= 4 ;i++) {
                           2516 ;	genAssign
   0B52 90 03 E6           2517 	mov	dptr,#_display_brt_data_i_1_1
   0B55 E0                 2518 	movx	a,@dptr
   0B56 FE                 2519 	mov	r6,a
                           2520 ;	genPlus
   0B57 90 03 E6           2521 	mov	dptr,#_display_brt_data_i_1_1
                           2522 ;	genPlusIncr
   0B5A EE                 2523 	mov	a,r6
   0B5B 04                 2524 	inc	a
   0B5C F0                 2525 	movx	@dptr,a
   0B5D 02 09 E0           2526 	ljmp	00104$
   0B60                    2527 00107$:
                    0AFE   2528 	C$cli.c$163$1$1 ==.
                           2529 ;	../cli.c:163: dp_display_text("\n\r BRT SA");
                           2530 ;	genCall
   0B60 75 82 B9           2531 	mov	dpl,#__str_12
   0B63 75 83 71           2532 	mov	dph,#(__str_12 >> 8)
   0B66 75 F0 80           2533 	mov	b,#0x80
   0B69 C0 02              2534 	push	ar2
   0B6B C0 03              2535 	push	ar3
   0B6D C0 04              2536 	push	ar4
   0B6F C0 05              2537 	push	ar5
   0B71 12 11 F7           2538 	lcall	_dp_display_text
   0B74 D0 05              2539 	pop	ar5
   0B76 D0 04              2540 	pop	ar4
   0B78 D0 03              2541 	pop	ar3
   0B7A D0 02              2542 	pop	ar2
                    0B1A   2543 	C$cli.c$164$1$1 ==.
                           2544 ;	../cli.c:164: dp_display_value(subaddr,DEC);
                           2545 ;	genAssign
   0B7C 90 04 36           2546 	mov	dptr,#_dp_display_value_PARM_2
   0B7F 74 01              2547 	mov	a,#0x01
   0B81 F0                 2548 	movx	@dptr,a
   0B82 E4                 2549 	clr	a
   0B83 A3                 2550 	inc	dptr
   0B84 F0                 2551 	movx	@dptr,a
                           2552 ;	genCall
   0B85 8C 82              2553 	mov	dpl,r4
   0B87 8A 83              2554 	mov	dph,r2
   0B89 8B F0              2555 	mov	b,r3
   0B8B ED                 2556 	mov	a,r5
   0B8C 12 12 75           2557 	lcall	_dp_display_value
                    0B2D   2558 	C$cli.c$165$1$1 ==.
                           2559 ;	../cli.c:165: dp_display_text("  TX Buffer\r\n");
                           2560 ;	genCall
   0B8F 75 82 D2           2561 	mov	dpl,#__str_14
   0B92 75 83 71           2562 	mov	dph,#(__str_14 >> 8)
   0B95 75 F0 80           2563 	mov	b,#0x80
   0B98 12 11 F7           2564 	lcall	_dp_display_text
                    0B39   2565 	C$cli.c$167$1$1 ==.
                           2566 ;	../cli.c:167: for ( i=1; i <= 4 ;i++) {
                           2567 ;	genAssign
   0B9B 90 03 E6           2568 	mov	dptr,#_display_brt_data_i_1_1
   0B9E 74 01              2569 	mov	a,#0x01
   0BA0 F0                 2570 	movx	@dptr,a
   0BA1                    2571 00111$:
                           2572 ;	genAssign
   0BA1 90 03 E6           2573 	mov	dptr,#_display_brt_data_i_1_1
   0BA4 E0                 2574 	movx	a,@dptr
   0BA5 FA                 2575 	mov	r2,a
                           2576 ;	genCmpGt
                           2577 ;	genCmp
   0BA6 C3                 2578 	clr	c
   0BA7 74 04              2579 	mov	a,#0x04
   0BA9 9A                 2580 	subb	a,r2
                           2581 ;	genIfxJump
   0BAA 50 03              2582 	jnc	00127$
   0BAC 02 0C 91           2583 	ljmp	00115$
   0BAF                    2584 00127$:
                    0B4D   2585 	C$cli.c$168$2$4 ==.
                           2586 ;	../cli.c:168: dp_display_text("\r\n");
                           2587 ;	genCall
   0BAF 75 82 B4           2588 	mov	dpl,#__str_10
   0BB2 75 83 71           2589 	mov	dph,#(__str_10 >> 8)
   0BB5 75 F0 80           2590 	mov	b,#0x80
   0BB8 C0 02              2591 	push	ar2
   0BBA 12 11 F7           2592 	lcall	_dp_display_text
   0BBD D0 02              2593 	pop	ar2
                    0B5D   2594 	C$cli.c$169$2$4 ==.
                           2595 ;	../cli.c:169: dp_display_value(i,DEC);
                           2596 ;	genCast
   0BBF 7B 00              2597 	mov	r3,#0x00
   0BC1 7C 00              2598 	mov	r4,#0x00
   0BC3 7D 00              2599 	mov	r5,#0x00
                           2600 ;	genAssign
   0BC5 90 04 36           2601 	mov	dptr,#_dp_display_value_PARM_2
   0BC8 74 01              2602 	mov	a,#0x01
   0BCA F0                 2603 	movx	@dptr,a
   0BCB E4                 2604 	clr	a
   0BCC A3                 2605 	inc	dptr
   0BCD F0                 2606 	movx	@dptr,a
                           2607 ;	genCall
   0BCE 8A 82              2608 	mov	dpl,r2
   0BD0 8B 83              2609 	mov	dph,r3
   0BD2 8C F0              2610 	mov	b,r4
   0BD4 ED                 2611 	mov	a,r5
   0BD5 12 12 75           2612 	lcall	_dp_display_value
                    0B76   2613 	C$cli.c$170$2$4 ==.
                           2614 ;	../cli.c:170: dp_display_text("\t");
                           2615 ;	genCall
   0BD8 75 82 B7           2616 	mov	dpl,#__str_11
   0BDB 75 83 71           2617 	mov	dph,#(__str_11 >> 8)
   0BDE 75 F0 80           2618 	mov	b,#0x80
   0BE1 12 11 F7           2619 	lcall	_dp_display_text
                    0B82   2620 	C$cli.c$171$2$4 ==.
                           2621 ;	../cli.c:171: dp_display_value(tx_sub_address,HEX);
                           2622 ;	genAssign
   0BE4 90 03 E2           2623 	mov	dptr,#_display_brt_data_tx_sub_address_1_1
   0BE7 E0                 2624 	movx	a,@dptr
   0BE8 FA                 2625 	mov	r2,a
   0BE9 A3                 2626 	inc	dptr
   0BEA E0                 2627 	movx	a,@dptr
   0BEB FB                 2628 	mov	r3,a
                           2629 ;	genCast
   0BEC 7C 00              2630 	mov	r4,#0x00
   0BEE 7D 00              2631 	mov	r5,#0x00
                           2632 ;	genAssign
   0BF0 90 04 36           2633 	mov	dptr,#_dp_display_value_PARM_2
   0BF3 E4                 2634 	clr	a
   0BF4 F0                 2635 	movx	@dptr,a
   0BF5 A3                 2636 	inc	dptr
   0BF6 F0                 2637 	movx	@dptr,a
                           2638 ;	genCall
   0BF7 8A 82              2639 	mov	dpl,r2
   0BF9 8B 83              2640 	mov	dph,r3
   0BFB 8C F0              2641 	mov	b,r4
   0BFD ED                 2642 	mov	a,r5
   0BFE 12 12 75           2643 	lcall	_dp_display_value
                    0B9F   2644 	C$cli.c$172$2$4 ==.
                           2645 ;	../cli.c:172: dp_display_text("\t");
                           2646 ;	genCall
   0C01 75 82 B7           2647 	mov	dpl,#__str_11
   0C04 75 83 71           2648 	mov	dph,#(__str_11 >> 8)
   0C07 75 F0 80           2649 	mov	b,#0x80
   0C0A 12 11 F7           2650 	lcall	_dp_display_text
                    0BAB   2651 	C$cli.c$174$2$4 ==.
                           2652 ;	../cli.c:174: for (m=1; m <=8 ;m++){
                           2653 ;	genAssign
   0C0D 90 03 E7           2654 	mov	dptr,#_display_brt_data_m_1_1
   0C10 74 08              2655 	mov	a,#0x08
   0C12 F0                 2656 	movx	@dptr,a
   0C13                    2657 00110$:
                    0BB1   2658 	C$cli.c$176$3$5 ==.
                           2659 ;	../cli.c:176: mem_data= HW_get_16bit_reg(tx_sub_address);
                           2660 ;	genAssign
   0C13 90 03 E2           2661 	mov	dptr,#_display_brt_data_tx_sub_address_1_1
   0C16 E0                 2662 	movx	a,@dptr
   0C17 FA                 2663 	mov	r2,a
   0C18 A3                 2664 	inc	dptr
   0C19 E0                 2665 	movx	a,@dptr
   0C1A FB                 2666 	mov	r3,a
                           2667 ;	genCall
   0C1B 8A 82              2668 	mov	dpl,r2
   0C1D 8B 83              2669 	mov	dph,r3
   0C1F C0 02              2670 	push	ar2
   0C21 C0 03              2671 	push	ar3
   0C23 12 1B DB           2672 	lcall	_HW_get_16bit_reg
   0C26 AC 82              2673 	mov	r4,dpl
   0C28 AD 83              2674 	mov	r5,dph
   0C2A D0 03              2675 	pop	ar3
   0C2C D0 02              2676 	pop	ar2
                    0BCC   2677 	C$cli.c$177$3$5 ==.
                           2678 ;	../cli.c:177: dp_display_value(mem_data,HEX);
                           2679 ;	genCast
   0C2E 7E 00              2680 	mov	r6,#0x00
   0C30 7F 00              2681 	mov	r7,#0x00
                           2682 ;	genAssign
   0C32 90 04 36           2683 	mov	dptr,#_dp_display_value_PARM_2
   0C35 E4                 2684 	clr	a
   0C36 F0                 2685 	movx	@dptr,a
   0C37 A3                 2686 	inc	dptr
   0C38 F0                 2687 	movx	@dptr,a
                           2688 ;	genCall
   0C39 8C 82              2689 	mov	dpl,r4
   0C3B 8D 83              2690 	mov	dph,r5
   0C3D 8E F0              2691 	mov	b,r6
   0C3F EF                 2692 	mov	a,r7
   0C40 C0 02              2693 	push	ar2
   0C42 C0 03              2694 	push	ar3
   0C44 12 12 75           2695 	lcall	_dp_display_value
   0C47 D0 03              2696 	pop	ar3
   0C49 D0 02              2697 	pop	ar2
                    0BE9   2698 	C$cli.c$178$3$5 ==.
                           2699 ;	../cli.c:178: dp_display_text("\t");
                           2700 ;	genCall
   0C4B 75 82 B7           2701 	mov	dpl,#__str_11
   0C4E 75 83 71           2702 	mov	dph,#(__str_11 >> 8)
   0C51 75 F0 80           2703 	mov	b,#0x80
   0C54 C0 02              2704 	push	ar2
   0C56 C0 03              2705 	push	ar3
   0C58 12 11 F7           2706 	lcall	_dp_display_text
   0C5B D0 03              2707 	pop	ar3
   0C5D D0 02              2708 	pop	ar2
                    0BFD   2709 	C$cli.c$179$3$5 ==.
                           2710 ;	../cli.c:179: tx_sub_address = tx_sub_address + 1;
                           2711 ;	genPlus
   0C5F 90 03 E2           2712 	mov	dptr,#_display_brt_data_tx_sub_address_1_1
                           2713 ;	genPlusIncr
   0C62 74 01              2714 	mov	a,#0x01
   0C64 25 02              2715 	add	a,ar2
   0C66 F0                 2716 	movx	@dptr,a
   0C67 74 00              2717 	mov	a,#0x00
   0C69 35 03              2718 	addc	a,ar3
   0C6B A3                 2719 	inc	dptr
   0C6C F0                 2720 	movx	@dptr,a
                           2721 ;	genAssign
   0C6D 90 03 E7           2722 	mov	dptr,#_display_brt_data_m_1_1
   0C70 E0                 2723 	movx	a,@dptr
   0C71 FA                 2724 	mov	r2,a
                           2725 ;	genMinus
                           2726 ;	genMinusDec
   0C72 EA                 2727 	mov	a,r2
   0C73 14                 2728 	dec	a
                           2729 ;	genAssign
   0C74 90 03 E7           2730 	mov	dptr,#_display_brt_data_m_1_1
   0C77 F0                 2731 	movx	@dptr,a
                    0C16   2732 	C$cli.c$174$3$5 ==.
                           2733 ;	../cli.c:174: for (m=1; m <=8 ;m++){
                           2734 ;	genAssign
   0C78 90 03 E7           2735 	mov	dptr,#_display_brt_data_m_1_1
   0C7B E0                 2736 	movx	a,@dptr
   0C7C FA                 2737 	mov	r2,a
                           2738 ;	genIfx
   0C7D EA                 2739 	mov	a,r2
                           2740 ;	genIfxJump
   0C7E 60 03              2741 	jz	00128$
   0C80 02 0C 13           2742 	ljmp	00110$
   0C83                    2743 00128$:
                    0C21   2744 	C$cli.c$167$1$1 ==.
                           2745 ;	../cli.c:167: for ( i=1; i <= 4 ;i++) {
                           2746 ;	genAssign
   0C83 90 03 E6           2747 	mov	dptr,#_display_brt_data_i_1_1
   0C86 E0                 2748 	movx	a,@dptr
   0C87 FA                 2749 	mov	r2,a
                           2750 ;	genPlus
   0C88 90 03 E6           2751 	mov	dptr,#_display_brt_data_i_1_1
                           2752 ;	genPlusIncr
   0C8B EA                 2753 	mov	a,r2
   0C8C 04                 2754 	inc	a
   0C8D F0                 2755 	movx	@dptr,a
   0C8E 02 0B A1           2756 	ljmp	00111$
   0C91                    2757 00115$:
                    0C2F   2758 	C$cli.c$184$1$1 ==.
                    0C2F   2759 	XG$display_brt_data$0$0 ==.
   0C91 22                 2760 	ret
                           2761 ;------------------------------------------------------------
                           2762 ;Allocation info for local variables in function 'process_uart_data'
                           2763 ;------------------------------------------------------------
                           2764 ;key                       Allocated with name '_process_uart_data_key_1_1'
                           2765 ;------------------------------------------------------------
                    0C30   2766 	G$process_uart_data$0$0 ==.
                    0C30   2767 	C$cli.c$192$1$1 ==.
                           2768 ;	../cli.c:192: void process_uart_data(uint8_t key)
                           2769 ;	-----------------------------------------
                           2770 ;	 function process_uart_data
                           2771 ;	-----------------------------------------
   0C92                    2772 _process_uart_data:
                           2773 ;	genReceive
   0C92 E5 82              2774 	mov	a,dpl
   0C94 90 03 E8           2775 	mov	dptr,#_process_uart_data_key_1_1
   0C97 F0                 2776 	movx	@dptr,a
                    0C36   2777 	C$cli.c$194$1$1 ==.
                           2778 ;	../cli.c:194: switch(key)
                           2779 ;	genAssign
   0C98 90 03 E8           2780 	mov	dptr,#_process_uart_data_key_1_1
   0C9B E0                 2781 	movx	a,@dptr
   0C9C FA                 2782 	mov	r2,a
                           2783 ;	genCmpEq
                           2784 ;	gencjneshort
   0C9D BA 44 03           2785 	cjne	r2,#0x44,00116$
   0CA0 02 0C CF           2786 	ljmp	00106$
   0CA3                    2787 00116$:
                           2788 ;	genCmpEq
                           2789 ;	gencjneshort
   0CA3 BA 48 03           2790 	cjne	r2,#0x48,00117$
   0CA6 02 0C C9           2791 	ljmp	00104$
   0CA9                    2792 00117$:
                           2793 ;	genCmpEq
                           2794 ;	gencjneshort
   0CA9 BA 52 03           2795 	cjne	r2,#0x52,00118$
   0CAC 02 0C C3           2796 	ljmp	00102$
   0CAF                    2797 00118$:
                           2798 ;	genCmpEq
                           2799 ;	gencjneshort
   0CAF BA 64 03           2800 	cjne	r2,#0x64,00119$
   0CB2 02 0C CF           2801 	ljmp	00106$
   0CB5                    2802 00119$:
                           2803 ;	genCmpEq
                           2804 ;	gencjneshort
   0CB5 BA 68 03           2805 	cjne	r2,#0x68,00120$
   0CB8 02 0C C9           2806 	ljmp	00104$
   0CBB                    2807 00120$:
                           2808 ;	genCmpEq
                           2809 ;	gencjneshort
   0CBB BA 72 02           2810 	cjne	r2,#0x72,00121$
   0CBE 80 03              2811 	sjmp	00122$
   0CC0                    2812 00121$:
   0CC0 02 0C E6           2813 	ljmp	00108$
   0CC3                    2814 00122$:
                    0C61   2815 	C$cli.c$197$2$2 ==.
                           2816 ;	../cli.c:197: case 'R' : case 'r':
   0CC3                    2817 00102$:
                    0C61   2818 	C$cli.c$200$3$3 ==.
                           2819 ;	../cli.c:200: display_brt_regs();
                           2820 ;	genCall
   0CC3 12 08 1F           2821 	lcall	_display_brt_regs
                    0C64   2822 	C$cli.c$204$3$3 ==.
                           2823 ;	../cli.c:204: break;
   0CC6 02 0C E6           2824 	ljmp	00108$
                    0C67   2825 	C$cli.c$209$2$2 ==.
                           2826 ;	../cli.c:209: case 'H': case 'h':
   0CC9                    2827 00104$:
                    0C67   2828 	C$cli.c$212$3$4 ==.
                           2829 ;	../cli.c:212: display_help();
                           2830 ;	genCall
   0CC9 12 00 62           2831 	lcall	_display_help
                    0C6A   2832 	C$cli.c$213$3$4 ==.
                           2833 ;	../cli.c:213: break;
   0CCC 02 0C E6           2834 	ljmp	00108$
                    0C6D   2835 	C$cli.c$216$2$2 ==.
                           2836 ;	../cli.c:216: case 'D': case 'd':
   0CCF                    2837 00106$:
                    0C6D   2838 	C$cli.c$242$3$5 ==.
                           2839 ;	../cli.c:242: display_brt_data(CORE1553BRT_0 ,1);
                           2840 ;	genAssign
   0CCF 90 03 DD           2841 	mov	dptr,#_display_brt_data_PARM_2
   0CD2 74 01              2842 	mov	a,#0x01
   0CD4 F0                 2843 	movx	@dptr,a
                           2844 ;	genCall
   0CD5 75 82 00           2845 	mov	dpl,#0x00
   0CD8 75 83 08           2846 	mov	dph,#0x08
   0CDB 75 F0 00           2847 	mov	b,#0x00
   0CDE 74 00              2848 	mov	a,#0x00
   0CE0 12 09 2E           2849 	lcall	_display_brt_data
                    0C81   2850 	C$cli.c$243$3$5 ==.
                           2851 ;	../cli.c:243: display_mem_data();
                           2852 ;	genCall
   0CE3 12 0C EA           2853 	lcall	_display_mem_data
                    0C84   2854 	C$cli.c$253$1$1 ==.
                           2855 ;	../cli.c:253: }
   0CE6                    2856 00108$:
                    0C84   2857 	C$cli.c$256$1$1 ==.
                           2858 ;	../cli.c:256: display_prompt();
                           2859 ;	genCall
   0CE6 12 06 BD           2860 	lcall	_display_prompt
   0CE9                    2861 00109$:
                    0C87   2862 	C$cli.c$258$1$1 ==.
                    0C87   2863 	XG$process_uart_data$0$0 ==.
   0CE9 22                 2864 	ret
                           2865 ;------------------------------------------------------------
                           2866 ;Allocation info for local variables in function 'display_mem_data'
                           2867 ;------------------------------------------------------------
                           2868 ;mem_addr                  Allocated with name '_display_mem_data_mem_addr_1_1'
                           2869 ;mem_data                  Allocated with name '_display_mem_data_mem_data_1_1'
                           2870 ;tx_sub_address            Allocated with name '_display_mem_data_tx_sub_address_1_1'
                           2871 ;rx_sub_address            Allocated with name '_display_mem_data_rx_sub_address_1_1'
                           2872 ;i                         Allocated with name '_display_mem_data_i_1_1'
                           2873 ;m                         Allocated with name '_display_mem_data_m_1_1'
                           2874 ;------------------------------------------------------------
                    0C88   2875 	G$display_mem_data$0$0 ==.
                    0C88   2876 	C$cli.c$263$1$1 ==.
                           2877 ;	../cli.c:263: void display_mem_data(void){
                           2878 ;	-----------------------------------------
                           2879 ;	 function display_mem_data
                           2880 ;	-----------------------------------------
   0CEA                    2881 _display_mem_data:
                    0C88   2882 	C$cli.c$273$1$1 ==.
                           2883 ;	../cli.c:273: rx_sub_address = mem_addr;   //0x1080
                           2884 ;	genAssign
   0CEA 90 03 ED           2885 	mov	dptr,#_display_mem_data_rx_sub_address_1_1
   0CED 74 00              2886 	mov	a,#0x00
   0CEF F0                 2887 	movx	@dptr,a
   0CF0 A3                 2888 	inc	dptr
   0CF1 74 F5              2889 	mov	a,#0xF5
   0CF3 F0                 2890 	movx	@dptr,a
                    0C92   2891 	C$cli.c$274$1$1 ==.
                           2892 ;	../cli.c:274: tx_sub_address = mem_addr;
                           2893 ;	genAssign
   0CF4 90 03 EB           2894 	mov	dptr,#_display_mem_data_tx_sub_address_1_1
   0CF7 74 00              2895 	mov	a,#0x00
   0CF9 F0                 2896 	movx	@dptr,a
   0CFA A3                 2897 	inc	dptr
   0CFB 74 F5              2898 	mov	a,#0xF5
   0CFD F0                 2899 	movx	@dptr,a
                    0C9C   2900 	C$cli.c$275$1$1 ==.
                           2901 ;	../cli.c:275: mem_data   = 0x0000;
                           2902 ;	genAssign
   0CFE 90 03 E9           2903 	mov	dptr,#_display_mem_data_mem_data_1_1
   0D01 E4                 2904 	clr	a
   0D02 F0                 2905 	movx	@dptr,a
   0D03 A3                 2906 	inc	dptr
   0D04 F0                 2907 	movx	@dptr,a
                    0CA3   2908 	C$cli.c$277$1$1 ==.
                           2909 ;	../cli.c:277: dp_display_text("\n\r MEMORY FiLLING WIETH FOLLOWING DATA ");
                           2910 ;	genCall
   0D05 75 82 E0           2911 	mov	dpl,#__str_15
   0D08 75 83 71           2912 	mov	dph,#(__str_15 >> 8)
   0D0B 75 F0 80           2913 	mov	b,#0x80
   0D0E 12 11 F7           2914 	lcall	_dp_display_text
                    0CAF   2915 	C$cli.c$281$1$1 ==.
                           2916 ;	../cli.c:281: for ( i=0; i <= 3 ;i++) {
                           2917 ;	genAssign
   0D11 90 03 EF           2918 	mov	dptr,#_display_mem_data_i_1_1
   0D14 74 00              2919 	mov	a,#0x00
   0D16 F0                 2920 	movx	@dptr,a
   0D17                    2921 00104$:
                           2922 ;	genAssign
   0D17 90 03 EF           2923 	mov	dptr,#_display_mem_data_i_1_1
   0D1A E0                 2924 	movx	a,@dptr
   0D1B FA                 2925 	mov	r2,a
                           2926 ;	genCmpGt
                           2927 ;	genCmp
   0D1C C3                 2928 	clr	c
   0D1D 74 03              2929 	mov	a,#0x03
   0D1F 9A                 2930 	subb	a,r2
                           2931 ;	genIfxJump
   0D20 50 03              2932 	jnc	00125$
   0D22 02 0E 3D           2933 	ljmp	00107$
   0D25                    2934 00125$:
                    0CC3   2935 	C$cli.c$282$2$2 ==.
                           2936 ;	../cli.c:282: dp_display_text("\r\n");
                           2937 ;	genCall
   0D25 75 82 B4           2938 	mov	dpl,#__str_10
   0D28 75 83 71           2939 	mov	dph,#(__str_10 >> 8)
   0D2B 75 F0 80           2940 	mov	b,#0x80
   0D2E C0 02              2941 	push	ar2
   0D30 12 11 F7           2942 	lcall	_dp_display_text
   0D33 D0 02              2943 	pop	ar2
                    0CD3   2944 	C$cli.c$283$2$2 ==.
                           2945 ;	../cli.c:283: dp_display_value(i,DEC);
                           2946 ;	genCast
   0D35 7B 00              2947 	mov	r3,#0x00
   0D37 7C 00              2948 	mov	r4,#0x00
   0D39 7D 00              2949 	mov	r5,#0x00
                           2950 ;	genAssign
   0D3B 90 04 36           2951 	mov	dptr,#_dp_display_value_PARM_2
   0D3E 74 01              2952 	mov	a,#0x01
   0D40 F0                 2953 	movx	@dptr,a
   0D41 E4                 2954 	clr	a
   0D42 A3                 2955 	inc	dptr
   0D43 F0                 2956 	movx	@dptr,a
                           2957 ;	genCall
   0D44 8A 82              2958 	mov	dpl,r2
   0D46 8B 83              2959 	mov	dph,r3
   0D48 8C F0              2960 	mov	b,r4
   0D4A ED                 2961 	mov	a,r5
   0D4B 12 12 75           2962 	lcall	_dp_display_value
                    0CEC   2963 	C$cli.c$284$2$2 ==.
                           2964 ;	../cli.c:284: dp_display_text("\t");
                           2965 ;	genCall
   0D4E 75 82 B7           2966 	mov	dpl,#__str_11
   0D51 75 83 71           2967 	mov	dph,#(__str_11 >> 8)
   0D54 75 F0 80           2968 	mov	b,#0x80
   0D57 12 11 F7           2969 	lcall	_dp_display_text
                    0CF8   2970 	C$cli.c$285$2$2 ==.
                           2971 ;	../cli.c:285: dp_display_value(rx_sub_address,HEX);// ( 8* i) for calculating current address of the total 32 location
                           2972 ;	genAssign
   0D5A 90 03 ED           2973 	mov	dptr,#_display_mem_data_rx_sub_address_1_1
   0D5D E0                 2974 	movx	a,@dptr
   0D5E FA                 2975 	mov	r2,a
   0D5F A3                 2976 	inc	dptr
   0D60 E0                 2977 	movx	a,@dptr
   0D61 FB                 2978 	mov	r3,a
                           2979 ;	genCast
   0D62 7C 00              2980 	mov	r4,#0x00
   0D64 7D 00              2981 	mov	r5,#0x00
                           2982 ;	genAssign
   0D66 90 04 36           2983 	mov	dptr,#_dp_display_value_PARM_2
   0D69 E4                 2984 	clr	a
   0D6A F0                 2985 	movx	@dptr,a
   0D6B A3                 2986 	inc	dptr
   0D6C F0                 2987 	movx	@dptr,a
                           2988 ;	genCall
   0D6D 8A 82              2989 	mov	dpl,r2
   0D6F 8B 83              2990 	mov	dph,r3
   0D71 8C F0              2991 	mov	b,r4
   0D73 ED                 2992 	mov	a,r5
   0D74 12 12 75           2993 	lcall	_dp_display_value
                    0D15   2994 	C$cli.c$286$2$2 ==.
                           2995 ;	../cli.c:286: dp_display_text("\t");
                           2996 ;	genCall
   0D77 75 82 B7           2997 	mov	dpl,#__str_11
   0D7A 75 83 71           2998 	mov	dph,#(__str_11 >> 8)
   0D7D 75 F0 80           2999 	mov	b,#0x80
   0D80 12 11 F7           3000 	lcall	_dp_display_text
                    0D21   3001 	C$cli.c$288$2$2 ==.
                           3002 ;	../cli.c:288: for (m=1; m <=8 ;m++){
                           3003 ;	genAssign
   0D83 90 03 F0           3004 	mov	dptr,#_display_mem_data_m_1_1
   0D86 74 08              3005 	mov	a,#0x08
   0D88 F0                 3006 	movx	@dptr,a
   0D89                    3007 00103$:
                    0D27   3008 	C$cli.c$290$3$3 ==.
                           3009 ;	../cli.c:290: HW_set_16bit_reg(rx_sub_address,mem_data);
                           3010 ;	genAssign
   0D89 90 03 ED           3011 	mov	dptr,#_display_mem_data_rx_sub_address_1_1
   0D8C E0                 3012 	movx	a,@dptr
   0D8D FA                 3013 	mov	r2,a
   0D8E A3                 3014 	inc	dptr
   0D8F E0                 3015 	movx	a,@dptr
   0D90 FB                 3016 	mov	r3,a
                           3017 ;	genAssign
   0D91 90 03 E9           3018 	mov	dptr,#_display_mem_data_mem_data_1_1
   0D94 E0                 3019 	movx	a,@dptr
   0D95 FC                 3020 	mov	r4,a
   0D96 A3                 3021 	inc	dptr
   0D97 E0                 3022 	movx	a,@dptr
   0D98 FD                 3023 	mov	r5,a
                           3024 ;	genAssign
   0D99 90 05 9A           3025 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   0D9C EC                 3026 	mov	a,r4
   0D9D F0                 3027 	movx	@dptr,a
   0D9E A3                 3028 	inc	dptr
   0D9F ED                 3029 	mov	a,r5
   0DA0 F0                 3030 	movx	@dptr,a
                           3031 ;	genCall
   0DA1 8A 82              3032 	mov	dpl,r2
   0DA3 8B 83              3033 	mov	dph,r3
   0DA5 C0 02              3034 	push	ar2
   0DA7 C0 03              3035 	push	ar3
   0DA9 C0 04              3036 	push	ar4
   0DAB C0 05              3037 	push	ar5
   0DAD 12 1B C7           3038 	lcall	_HW_set_16bit_reg
   0DB0 D0 05              3039 	pop	ar5
   0DB2 D0 04              3040 	pop	ar4
   0DB4 D0 03              3041 	pop	ar3
   0DB6 D0 02              3042 	pop	ar2
                    0D56   3043 	C$cli.c$291$3$3 ==.
                           3044 ;	../cli.c:291: dp_display_value(mem_data,HEX);
                           3045 ;	genCast
   0DB8 8C 06              3046 	mov	ar6,r4
   0DBA 8D 07              3047 	mov	ar7,r5
   0DBC 78 00              3048 	mov	r0,#0x00
   0DBE 79 00              3049 	mov	r1,#0x00
                           3050 ;	genAssign
   0DC0 90 04 36           3051 	mov	dptr,#_dp_display_value_PARM_2
   0DC3 E4                 3052 	clr	a
   0DC4 F0                 3053 	movx	@dptr,a
   0DC5 A3                 3054 	inc	dptr
   0DC6 F0                 3055 	movx	@dptr,a
                           3056 ;	genCall
   0DC7 8E 82              3057 	mov	dpl,r6
   0DC9 8F 83              3058 	mov	dph,r7
   0DCB 88 F0              3059 	mov	b,r0
   0DCD E9                 3060 	mov	a,r1
   0DCE C0 02              3061 	push	ar2
   0DD0 C0 03              3062 	push	ar3
   0DD2 C0 04              3063 	push	ar4
   0DD4 C0 05              3064 	push	ar5
   0DD6 12 12 75           3065 	lcall	_dp_display_value
   0DD9 D0 05              3066 	pop	ar5
   0DDB D0 04              3067 	pop	ar4
   0DDD D0 03              3068 	pop	ar3
   0DDF D0 02              3069 	pop	ar2
                    0D7F   3070 	C$cli.c$292$3$3 ==.
                           3071 ;	../cli.c:292: dp_display_text("\t");
                           3072 ;	genCall
   0DE1 75 82 B7           3073 	mov	dpl,#__str_11
   0DE4 75 83 71           3074 	mov	dph,#(__str_11 >> 8)
   0DE7 75 F0 80           3075 	mov	b,#0x80
   0DEA C0 02              3076 	push	ar2
   0DEC C0 03              3077 	push	ar3
   0DEE C0 04              3078 	push	ar4
   0DF0 C0 05              3079 	push	ar5
   0DF2 12 11 F7           3080 	lcall	_dp_display_text
   0DF5 D0 05              3081 	pop	ar5
   0DF7 D0 04              3082 	pop	ar4
   0DF9 D0 03              3083 	pop	ar3
   0DFB D0 02              3084 	pop	ar2
                    0D9B   3085 	C$cli.c$293$3$3 ==.
                           3086 ;	../cli.c:293: rx_sub_address = rx_sub_address + 1;
                           3087 ;	genPlus
   0DFD 90 03 ED           3088 	mov	dptr,#_display_mem_data_rx_sub_address_1_1
                           3089 ;	genPlusIncr
   0E00 74 01              3090 	mov	a,#0x01
   0E02 25 02              3091 	add	a,ar2
   0E04 F0                 3092 	movx	@dptr,a
   0E05 74 00              3093 	mov	a,#0x00
   0E07 35 03              3094 	addc	a,ar3
   0E09 A3                 3095 	inc	dptr
   0E0A F0                 3096 	movx	@dptr,a
                    0DA9   3097 	C$cli.c$294$3$3 ==.
                           3098 ;	../cli.c:294: mem_data = mem_data + 4;
                           3099 ;	genPlus
   0E0B 90 03 E9           3100 	mov	dptr,#_display_mem_data_mem_data_1_1
                           3101 ;	genPlusIncr
   0E0E 74 04              3102 	mov	a,#0x04
   0E10 25 04              3103 	add	a,ar4
   0E12 F0                 3104 	movx	@dptr,a
   0E13 74 00              3105 	mov	a,#0x00
   0E15 35 05              3106 	addc	a,ar5
   0E17 A3                 3107 	inc	dptr
   0E18 F0                 3108 	movx	@dptr,a
                           3109 ;	genAssign
   0E19 90 03 F0           3110 	mov	dptr,#_display_mem_data_m_1_1
   0E1C E0                 3111 	movx	a,@dptr
   0E1D FA                 3112 	mov	r2,a
                           3113 ;	genMinus
                           3114 ;	genMinusDec
   0E1E EA                 3115 	mov	a,r2
   0E1F 14                 3116 	dec	a
                           3117 ;	genAssign
   0E20 90 03 F0           3118 	mov	dptr,#_display_mem_data_m_1_1
   0E23 F0                 3119 	movx	@dptr,a
                    0DC2   3120 	C$cli.c$288$3$3 ==.
                           3121 ;	../cli.c:288: for (m=1; m <=8 ;m++){
                           3122 ;	genAssign
   0E24 90 03 F0           3123 	mov	dptr,#_display_mem_data_m_1_1
   0E27 E0                 3124 	movx	a,@dptr
   0E28 FA                 3125 	mov	r2,a
                           3126 ;	genIfx
   0E29 EA                 3127 	mov	a,r2
                           3128 ;	genIfxJump
   0E2A 60 03              3129 	jz	00126$
   0E2C 02 0D 89           3130 	ljmp	00103$
   0E2F                    3131 00126$:
                    0DCD   3132 	C$cli.c$281$1$1 ==.
                           3133 ;	../cli.c:281: for ( i=0; i <= 3 ;i++) {
                           3134 ;	genAssign
   0E2F 90 03 EF           3135 	mov	dptr,#_display_mem_data_i_1_1
   0E32 E0                 3136 	movx	a,@dptr
   0E33 FA                 3137 	mov	r2,a
                           3138 ;	genPlus
   0E34 90 03 EF           3139 	mov	dptr,#_display_mem_data_i_1_1
                           3140 ;	genPlusIncr
   0E37 EA                 3141 	mov	a,r2
   0E38 04                 3142 	inc	a
   0E39 F0                 3143 	movx	@dptr,a
   0E3A 02 0D 17           3144 	ljmp	00104$
   0E3D                    3145 00107$:
                    0DDB   3146 	C$cli.c$300$1$1 ==.
                           3147 ;	../cli.c:300: dp_display_text("\n\r Reading back the data from the same location");
                           3148 ;	genCall
   0E3D 75 82 08           3149 	mov	dpl,#__str_16
   0E40 75 83 72           3150 	mov	dph,#(__str_16 >> 8)
   0E43 75 F0 80           3151 	mov	b,#0x80
   0E46 12 11 F7           3152 	lcall	_dp_display_text
                    0DE7   3153 	C$cli.c$304$1$1 ==.
                           3154 ;	../cli.c:304: for ( i=0; i <= 3 ;i++) {
                           3155 ;	genAssign
   0E49 90 03 EF           3156 	mov	dptr,#_display_mem_data_i_1_1
   0E4C 74 00              3157 	mov	a,#0x00
   0E4E F0                 3158 	movx	@dptr,a
   0E4F                    3159 00111$:
                           3160 ;	genAssign
   0E4F 90 03 EF           3161 	mov	dptr,#_display_mem_data_i_1_1
   0E52 E0                 3162 	movx	a,@dptr
   0E53 FA                 3163 	mov	r2,a
                           3164 ;	genCmpGt
                           3165 ;	genCmp
   0E54 C3                 3166 	clr	c
   0E55 74 03              3167 	mov	a,#0x03
   0E57 9A                 3168 	subb	a,r2
                           3169 ;	genIfxJump
   0E58 50 03              3170 	jnc	00127$
   0E5A 02 0F 3F           3171 	ljmp	00115$
   0E5D                    3172 00127$:
                    0DFB   3173 	C$cli.c$305$2$4 ==.
                           3174 ;	../cli.c:305: dp_display_text("\r\n");
                           3175 ;	genCall
   0E5D 75 82 B4           3176 	mov	dpl,#__str_10
   0E60 75 83 71           3177 	mov	dph,#(__str_10 >> 8)
   0E63 75 F0 80           3178 	mov	b,#0x80
   0E66 C0 02              3179 	push	ar2
   0E68 12 11 F7           3180 	lcall	_dp_display_text
   0E6B D0 02              3181 	pop	ar2
                    0E0B   3182 	C$cli.c$306$2$4 ==.
                           3183 ;	../cli.c:306: dp_display_value(i,DEC);
                           3184 ;	genCast
   0E6D 7B 00              3185 	mov	r3,#0x00
   0E6F 7C 00              3186 	mov	r4,#0x00
   0E71 7D 00              3187 	mov	r5,#0x00
                           3188 ;	genAssign
   0E73 90 04 36           3189 	mov	dptr,#_dp_display_value_PARM_2
   0E76 74 01              3190 	mov	a,#0x01
   0E78 F0                 3191 	movx	@dptr,a
   0E79 E4                 3192 	clr	a
   0E7A A3                 3193 	inc	dptr
   0E7B F0                 3194 	movx	@dptr,a
                           3195 ;	genCall
   0E7C 8A 82              3196 	mov	dpl,r2
   0E7E 8B 83              3197 	mov	dph,r3
   0E80 8C F0              3198 	mov	b,r4
   0E82 ED                 3199 	mov	a,r5
   0E83 12 12 75           3200 	lcall	_dp_display_value
                    0E24   3201 	C$cli.c$307$2$4 ==.
                           3202 ;	../cli.c:307: dp_display_text("\t");
                           3203 ;	genCall
   0E86 75 82 B7           3204 	mov	dpl,#__str_11
   0E89 75 83 71           3205 	mov	dph,#(__str_11 >> 8)
   0E8C 75 F0 80           3206 	mov	b,#0x80
   0E8F 12 11 F7           3207 	lcall	_dp_display_text
                    0E30   3208 	C$cli.c$308$2$4 ==.
                           3209 ;	../cli.c:308: dp_display_value(tx_sub_address,HEX);
                           3210 ;	genAssign
   0E92 90 03 EB           3211 	mov	dptr,#_display_mem_data_tx_sub_address_1_1
   0E95 E0                 3212 	movx	a,@dptr
   0E96 FA                 3213 	mov	r2,a
   0E97 A3                 3214 	inc	dptr
   0E98 E0                 3215 	movx	a,@dptr
   0E99 FB                 3216 	mov	r3,a
                           3217 ;	genCast
   0E9A 7C 00              3218 	mov	r4,#0x00
   0E9C 7D 00              3219 	mov	r5,#0x00
                           3220 ;	genAssign
   0E9E 90 04 36           3221 	mov	dptr,#_dp_display_value_PARM_2
   0EA1 E4                 3222 	clr	a
   0EA2 F0                 3223 	movx	@dptr,a
   0EA3 A3                 3224 	inc	dptr
   0EA4 F0                 3225 	movx	@dptr,a
                           3226 ;	genCall
   0EA5 8A 82              3227 	mov	dpl,r2
   0EA7 8B 83              3228 	mov	dph,r3
   0EA9 8C F0              3229 	mov	b,r4
   0EAB ED                 3230 	mov	a,r5
   0EAC 12 12 75           3231 	lcall	_dp_display_value
                    0E4D   3232 	C$cli.c$309$2$4 ==.
                           3233 ;	../cli.c:309: dp_display_text("\t");
                           3234 ;	genCall
   0EAF 75 82 B7           3235 	mov	dpl,#__str_11
   0EB2 75 83 71           3236 	mov	dph,#(__str_11 >> 8)
   0EB5 75 F0 80           3237 	mov	b,#0x80
   0EB8 12 11 F7           3238 	lcall	_dp_display_text
                    0E59   3239 	C$cli.c$311$2$4 ==.
                           3240 ;	../cli.c:311: for (m=1; m <=8 ;m++){
                           3241 ;	genAssign
   0EBB 90 03 F0           3242 	mov	dptr,#_display_mem_data_m_1_1
   0EBE 74 08              3243 	mov	a,#0x08
   0EC0 F0                 3244 	movx	@dptr,a
   0EC1                    3245 00110$:
                    0E5F   3246 	C$cli.c$313$3$5 ==.
                           3247 ;	../cli.c:313: mem_data= HW_get_16bit_reg(tx_sub_address);
                           3248 ;	genAssign
   0EC1 90 03 EB           3249 	mov	dptr,#_display_mem_data_tx_sub_address_1_1
   0EC4 E0                 3250 	movx	a,@dptr
   0EC5 FA                 3251 	mov	r2,a
   0EC6 A3                 3252 	inc	dptr
   0EC7 E0                 3253 	movx	a,@dptr
   0EC8 FB                 3254 	mov	r3,a
                           3255 ;	genCall
   0EC9 8A 82              3256 	mov	dpl,r2
   0ECB 8B 83              3257 	mov	dph,r3
   0ECD C0 02              3258 	push	ar2
   0ECF C0 03              3259 	push	ar3
   0ED1 12 1B DB           3260 	lcall	_HW_get_16bit_reg
   0ED4 AC 82              3261 	mov	r4,dpl
   0ED6 AD 83              3262 	mov	r5,dph
   0ED8 D0 03              3263 	pop	ar3
   0EDA D0 02              3264 	pop	ar2
                    0E7A   3265 	C$cli.c$314$3$5 ==.
                           3266 ;	../cli.c:314: dp_display_value(mem_data,HEX);
                           3267 ;	genCast
   0EDC 7E 00              3268 	mov	r6,#0x00
   0EDE 7F 00              3269 	mov	r7,#0x00
                           3270 ;	genAssign
   0EE0 90 04 36           3271 	mov	dptr,#_dp_display_value_PARM_2
   0EE3 E4                 3272 	clr	a
   0EE4 F0                 3273 	movx	@dptr,a
   0EE5 A3                 3274 	inc	dptr
   0EE6 F0                 3275 	movx	@dptr,a
                           3276 ;	genCall
   0EE7 8C 82              3277 	mov	dpl,r4
   0EE9 8D 83              3278 	mov	dph,r5
   0EEB 8E F0              3279 	mov	b,r6
   0EED EF                 3280 	mov	a,r7
   0EEE C0 02              3281 	push	ar2
   0EF0 C0 03              3282 	push	ar3
   0EF2 12 12 75           3283 	lcall	_dp_display_value
   0EF5 D0 03              3284 	pop	ar3
   0EF7 D0 02              3285 	pop	ar2
                    0E97   3286 	C$cli.c$315$3$5 ==.
                           3287 ;	../cli.c:315: dp_display_text("\t");
                           3288 ;	genCall
   0EF9 75 82 B7           3289 	mov	dpl,#__str_11
   0EFC 75 83 71           3290 	mov	dph,#(__str_11 >> 8)
   0EFF 75 F0 80           3291 	mov	b,#0x80
   0F02 C0 02              3292 	push	ar2
   0F04 C0 03              3293 	push	ar3
   0F06 12 11 F7           3294 	lcall	_dp_display_text
   0F09 D0 03              3295 	pop	ar3
   0F0B D0 02              3296 	pop	ar2
                    0EAB   3297 	C$cli.c$316$3$5 ==.
                           3298 ;	../cli.c:316: tx_sub_address = tx_sub_address + 1;
                           3299 ;	genPlus
   0F0D 90 03 EB           3300 	mov	dptr,#_display_mem_data_tx_sub_address_1_1
                           3301 ;	genPlusIncr
   0F10 74 01              3302 	mov	a,#0x01
   0F12 25 02              3303 	add	a,ar2
   0F14 F0                 3304 	movx	@dptr,a
   0F15 74 00              3305 	mov	a,#0x00
   0F17 35 03              3306 	addc	a,ar3
   0F19 A3                 3307 	inc	dptr
   0F1A F0                 3308 	movx	@dptr,a
                           3309 ;	genAssign
   0F1B 90 03 F0           3310 	mov	dptr,#_display_mem_data_m_1_1
   0F1E E0                 3311 	movx	a,@dptr
   0F1F FA                 3312 	mov	r2,a
                           3313 ;	genMinus
                           3314 ;	genMinusDec
   0F20 EA                 3315 	mov	a,r2
   0F21 14                 3316 	dec	a
                           3317 ;	genAssign
   0F22 90 03 F0           3318 	mov	dptr,#_display_mem_data_m_1_1
   0F25 F0                 3319 	movx	@dptr,a
                    0EC4   3320 	C$cli.c$311$3$5 ==.
                           3321 ;	../cli.c:311: for (m=1; m <=8 ;m++){
                           3322 ;	genAssign
   0F26 90 03 F0           3323 	mov	dptr,#_display_mem_data_m_1_1
   0F29 E0                 3324 	movx	a,@dptr
   0F2A FA                 3325 	mov	r2,a
                           3326 ;	genIfx
   0F2B EA                 3327 	mov	a,r2
                           3328 ;	genIfxJump
   0F2C 60 03              3329 	jz	00128$
   0F2E 02 0E C1           3330 	ljmp	00110$
   0F31                    3331 00128$:
                    0ECF   3332 	C$cli.c$304$1$1 ==.
                           3333 ;	../cli.c:304: for ( i=0; i <= 3 ;i++) {
                           3334 ;	genAssign
   0F31 90 03 EF           3335 	mov	dptr,#_display_mem_data_i_1_1
   0F34 E0                 3336 	movx	a,@dptr
   0F35 FA                 3337 	mov	r2,a
                           3338 ;	genPlus
   0F36 90 03 EF           3339 	mov	dptr,#_display_mem_data_i_1_1
                           3340 ;	genPlusIncr
   0F39 EA                 3341 	mov	a,r2
   0F3A 04                 3342 	inc	a
   0F3B F0                 3343 	movx	@dptr,a
   0F3C 02 0E 4F           3344 	ljmp	00111$
   0F3F                    3345 00115$:
                    0EDD   3346 	C$cli.c$321$1$1 ==.
                    0EDD   3347 	XG$display_mem_data$0$0 ==.
   0F3F 22                 3348 	ret
                           3349 	.area CSEG    (CODE)
                           3350 	.area CONST   (CODE)
                    0000   3351 F___cli$_str_8$0$0 == .
   7189                    3352 __str_8:
   7189 0D                 3353 	.db 0x0D
   718A 0A                 3354 	.db 0x0A
   718B 43 6F 72 65 31 35  3355 	.ascii "Core1553BRT>"
        35 33 42 52 54 3E
   7197 00                 3356 	.db 0x00
                    000F   3357 F___cli$_str_9$0$0 == .
   7198                    3358 __str_9:
   7198 0A                 3359 	.db 0x0A
   7199 0D                 3360 	.db 0x0D
   719A 20 42 52 54 20 52  3361 	.ascii " BRT Register Contents"
        65 67 69 73 74 65
        72 20 43 6F 6E 74
        65 6E 74 73
   71B0 0D                 3362 	.db 0x0D
   71B1 0A                 3363 	.db 0x0A
   71B2 20                 3364 	.ascii " "
   71B3 00                 3365 	.db 0x00
                    002B   3366 F___cli$_str_10$0$0 == .
   71B4                    3367 __str_10:
   71B4 0D                 3368 	.db 0x0D
   71B5 0A                 3369 	.db 0x0A
   71B6 00                 3370 	.db 0x00
                    002E   3371 F___cli$_str_11$0$0 == .
   71B7                    3372 __str_11:
   71B7 09                 3373 	.db 0x09
   71B8 00                 3374 	.db 0x00
                    0030   3375 F___cli$_str_12$0$0 == .
   71B9                    3376 __str_12:
   71B9 0A                 3377 	.db 0x0A
   71BA 0D                 3378 	.db 0x0D
   71BB 20 42 52 54 20 53  3379 	.ascii " BRT SA"
        41
   71C2 00                 3380 	.db 0x00
                    003A   3381 F___cli$_str_13$0$0 == .
   71C3                    3382 __str_13:
   71C3 20 20 20 52 58 20  3383 	.ascii "   RX Buffer"
        42 75 66 66 65 72
   71CF 0D                 3384 	.db 0x0D
   71D0 0A                 3385 	.db 0x0A
   71D1 00                 3386 	.db 0x00
                    0049   3387 F___cli$_str_14$0$0 == .
   71D2                    3388 __str_14:
   71D2 20 20 54 58 20 42  3389 	.ascii "  TX Buffer"
        75 66 66 65 72
   71DD 0D                 3390 	.db 0x0D
   71DE 0A                 3391 	.db 0x0A
   71DF 00                 3392 	.db 0x00
                    0057   3393 F___cli$_str_15$0$0 == .
   71E0                    3394 __str_15:
   71E0 0A                 3395 	.db 0x0A
   71E1 0D                 3396 	.db 0x0D
   71E2 20 4D 45 4D 4F 52  3397 	.ascii " MEMORY FiLLING WIETH FOLLOWING DATA "
        59 20 46 69 4C 4C
        49 4E 47 20 57 49
        45 54 48 20 46 4F
        4C 4C 4F 57 49 4E
        47 20 44 41 54 41
        20
   7207 00                 3398 	.db 0x00
                    007F   3399 F___cli$_str_16$0$0 == .
   7208                    3400 __str_16:
   7208 0A                 3401 	.db 0x0A
   7209 0D                 3402 	.db 0x0D
   720A 20 52 65 61 64 69  3403 	.ascii " Reading back the data from the same location"
        6E 67 20 62 61 63
        6B 20 74 68 65 20
        64 61 74 61 20 66
        72 6F 6D 20 74 68
        65 20 73 61 6D 65
        20 6C 6F 63 61 74
        69 6F 6E
   7237 00                 3404 	.db 0x00
                           3405 	.area XINIT   (CODE)
                    0000   3406 F___cli$__xinit_user_input$0$0 == .
   723A                    3407 __xinit__user_input:
   723A 00 00 00 00        3408 	.byte #0x00,#0x00,#0x00,#0x00
                    0004   3409 F___cli$__xinit_last_rt_subaddress$0$0 == .
   723E                    3410 __xinit__last_rt_subaddress:
   723E 20                 3411 	.db #0x20
                           3412 	.area CABS    (ABS,CODE)
