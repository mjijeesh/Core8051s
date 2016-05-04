                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:51:55 2016
                              5 ;--------------------------------------------------------
                              6 	.module ___drivers_CoreGPIO_core_gpio
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _GPIO_clear_irq_PARM_2
                             13 	.globl _GPIO_disable_irq_PARM_2
                             14 	.globl _GPIO_enable_irq_PARM_2
                             15 	.globl _GPIO_drive_inout_PARM_3
                             16 	.globl _GPIO_drive_inout_PARM_2
                             17 	.globl _GPIO_set_output_PARM_3
                             18 	.globl _GPIO_set_output_PARM_2
                             19 	.globl _GPIO_set_outputs_PARM_2
                             20 	.globl _GPIO_config_PARM_3
                             21 	.globl _GPIO_config_PARM_2
                             22 	.globl _GPIO_init_PARM_3
                             23 	.globl _GPIO_init_PARM_2
                             24 	.globl _GPIO_init
                             25 	.globl _GPIO_config
                             26 	.globl _GPIO_set_outputs
                             27 	.globl _GPIO_get_inputs
                             28 	.globl _GPIO_get_outputs
                             29 	.globl _GPIO_set_output
                             30 	.globl _GPIO_drive_inout
                             31 	.globl _GPIO_enable_irq
                             32 	.globl _GPIO_disable_irq
                             33 	.globl _GPIO_clear_irq
                             34 ;--------------------------------------------------------
                             35 ; special function registers
                             36 ;--------------------------------------------------------
                             37 	.area RSEG    (DATA)
                             38 ;--------------------------------------------------------
                             39 ; special function bits
                             40 ;--------------------------------------------------------
                             41 	.area RSEG    (DATA)
                             42 ;--------------------------------------------------------
                             43 ; overlayable register banks
                             44 ;--------------------------------------------------------
                             45 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                      46 	.ds 8
                             47 ;--------------------------------------------------------
                             48 ; internal ram data
                             49 ;--------------------------------------------------------
                             50 	.area DSEG    (DATA)
                    0000     51 LGPIO_set_outputs$sloc1$1$0==.
   0049                      52 _GPIO_set_outputs_sloc1_1_0:
   0049                      53 	.ds 4
                    0004     54 LGPIO_set_outputs$sloc2$1$0==.
   004D                      55 _GPIO_set_outputs_sloc2_1_0:
   004D                      56 	.ds 4
                    0008     57 LGPIO_set_output$sloc0$1$0==.
   0051                      58 _GPIO_set_output_sloc0_1_0:
   0051                      59 	.ds 4
                    000C     60 LGPIO_set_output$sloc2$1$0==.
   0055                      61 _GPIO_set_output_sloc2_1_0:
   0055                      62 	.ds 4
                    0010     63 LGPIO_clear_irq$sloc0$1$0==.
   0059                      64 _GPIO_clear_irq_sloc0_1_0:
   0059                      65 	.ds 4
                             66 ;--------------------------------------------------------
                             67 ; overlayable items in internal ram 
                             68 ;--------------------------------------------------------
                             69 	.area OSEG    (OVR,DATA)
                             70 ;--------------------------------------------------------
                             71 ; indirectly addressable internal ram data
                             72 ;--------------------------------------------------------
                             73 	.area ISEG    (DATA)
                             74 ;--------------------------------------------------------
                             75 ; absolute internal ram data
                             76 ;--------------------------------------------------------
                             77 	.area IABS    (ABS,DATA)
                             78 	.area IABS    (ABS,DATA)
                             79 ;--------------------------------------------------------
                             80 ; bit data
                             81 ;--------------------------------------------------------
                             82 	.area BSEG    (BIT)
                             83 ;--------------------------------------------------------
                             84 ; paged external ram data
                             85 ;--------------------------------------------------------
                             86 	.area PSEG    (PAG,XDATA)
                             87 ;--------------------------------------------------------
                             88 ; external ram data
                             89 ;--------------------------------------------------------
                             90 	.area XSEG    (XDATA)
                    0000     91 LGPIO_init$base_addr$1$1==.
   05DA                      92 _GPIO_init_PARM_2:
   05DA                      93 	.ds 2
                    0002     94 LGPIO_init$bus_width$1$1==.
   05DC                      95 _GPIO_init_PARM_3:
   05DC                      96 	.ds 1
                    0003     97 LGPIO_init$this_gpio$1$1==.
   05DD                      98 _GPIO_init_this_gpio_1_1:
   05DD                      99 	.ds 3
                    0006    100 LGPIO_init$i$1$1==.
   05E0                     101 _GPIO_init_i_1_1:
   05E0                     102 	.ds 1
                    0007    103 LGPIO_init$cfg_reg_addr$1$1==.
   05E1                     104 _GPIO_init_cfg_reg_addr_1_1:
   05E1                     105 	.ds 2
                    0009    106 LGPIO_init$file_name$4$5==.
   05E3                     107 _GPIO_init_file_name_4_5:
   05E3                     108 	.ds 32
                    0029    109 LGPIO_config$port_id$1$1==.
   0603                     110 _GPIO_config_PARM_2:
   0603                     111 	.ds 1
                    002A    112 LGPIO_config$config$1$1==.
   0604                     113 _GPIO_config_PARM_3:
   0604                     114 	.ds 4
                    002E    115 LGPIO_config$this_gpio$1$1==.
   0608                     116 _GPIO_config_this_gpio_1_1:
   0608                     117 	.ds 3
                    0031    118 LGPIO_config$file_name$3$3==.
   060B                     119 _GPIO_config_file_name_3_3:
   060B                     120 	.ds 32
                    0051    121 LGPIO_config$file_name$4$6==.
   062B                     122 _GPIO_config_file_name_4_6:
   062B                     123 	.ds 32
                    0071    124 LGPIO_set_outputs$value$1$1==.
   064B                     125 _GPIO_set_outputs_PARM_2:
   064B                     126 	.ds 4
                    0075    127 LGPIO_set_outputs$this_gpio$1$1==.
   064F                     128 _GPIO_set_outputs_this_gpio_1_1:
   064F                     129 	.ds 3
                    0078    130 LGPIO_set_outputs$file_name$4$4==.
   0652                     131 _GPIO_set_outputs_file_name_4_4:
   0652                     132 	.ds 32
                    0098    133 LGPIO_set_outputs$file_name$3$6==.
   0672                     134 _GPIO_set_outputs_file_name_3_6:
   0672                     135 	.ds 32
                    00B8    136 LGPIO_get_inputs$this_gpio$1$1==.
   0692                     137 _GPIO_get_inputs_this_gpio_1_1:
   0692                     138 	.ds 3
                    00BB    139 LGPIO_get_inputs$gpio_in$1$1==.
   0695                     140 _GPIO_get_inputs_gpio_in_1_1:
   0695                     141 	.ds 4
                    00BF    142 LGPIO_get_inputs$file_name$4$4==.
   0699                     143 _GPIO_get_inputs_file_name_4_4:
   0699                     144 	.ds 32
                    00DF    145 LGPIO_get_outputs$this_gpio$1$1==.
   06B9                     146 _GPIO_get_outputs_this_gpio_1_1:
   06B9                     147 	.ds 3
                    00E2    148 LGPIO_get_outputs$gpio_out$1$1==.
   06BC                     149 _GPIO_get_outputs_gpio_out_1_1:
   06BC                     150 	.ds 4
                    00E6    151 LGPIO_get_outputs$file_name$4$4==.
   06C0                     152 _GPIO_get_outputs_file_name_4_4:
   06C0                     153 	.ds 32
                    0106    154 LGPIO_set_output$port_id$1$1==.
   06E0                     155 _GPIO_set_output_PARM_2:
   06E0                     156 	.ds 1
                    0107    157 LGPIO_set_output$value$1$1==.
   06E1                     158 _GPIO_set_output_PARM_3:
   06E1                     159 	.ds 1
                    0108    160 LGPIO_set_output$this_gpio$1$1==.
   06E2                     161 _GPIO_set_output_this_gpio_1_1:
   06E2                     162 	.ds 3
                    010B    163 LGPIO_set_output$file_name$3$3==.
   06E5                     164 _GPIO_set_output_file_name_3_3:
   06E5                     165 	.ds 32
                    012B    166 LGPIO_set_output$outputs_state$3$5==.
   0705                     167 _GPIO_set_output_outputs_state_3_5:
   0705                     168 	.ds 4
                    012F    169 LGPIO_set_output$file_name$5$9==.
   0709                     170 _GPIO_set_output_file_name_5_9:
   0709                     171 	.ds 32
                    014F    172 LGPIO_set_output$outputs_state$3$10==.
   0729                     173 _GPIO_set_output_outputs_state_3_10:
   0729                     174 	.ds 2
                    0151    175 LGPIO_set_output$file_name$5$14==.
   072B                     176 _GPIO_set_output_file_name_5_14:
   072B                     177 	.ds 32
                    0171    178 LGPIO_set_output$outputs_state$3$15==.
   074B                     179 _GPIO_set_output_outputs_state_3_15:
   074B                     180 	.ds 1
                    0172    181 LGPIO_set_output$file_name$5$19==.
   074C                     182 _GPIO_set_output_file_name_5_19:
   074C                     183 	.ds 32
                    0192    184 LGPIO_set_output$file_name$4$21==.
   076C                     185 _GPIO_set_output_file_name_4_21:
   076C                     186 	.ds 32
                    01B2    187 LGPIO_drive_inout$port_id$1$1==.
   078C                     188 _GPIO_drive_inout_PARM_2:
   078C                     189 	.ds 1
                    01B3    190 LGPIO_drive_inout$inout_state$1$1==.
   078D                     191 _GPIO_drive_inout_PARM_3:
   078D                     192 	.ds 1
                    01B4    193 LGPIO_drive_inout$this_gpio$1$1==.
   078E                     194 _GPIO_drive_inout_this_gpio_1_1:
   078E                     195 	.ds 3
                    01B7    196 LGPIO_drive_inout$file_name$3$3==.
   0791                     197 _GPIO_drive_inout_file_name_3_3:
   0791                     198 	.ds 32
                    01D7    199 LGPIO_drive_inout$file_name$4$6==.
   07B1                     200 _GPIO_drive_inout_file_name_4_6:
   07B1                     201 	.ds 32
                    01F7    202 LGPIO_enable_irq$port_id$1$1==.
   07D1                     203 _GPIO_enable_irq_PARM_2:
   07D1                     204 	.ds 1
                    01F8    205 LGPIO_enable_irq$this_gpio$1$1==.
   07D2                     206 _GPIO_enable_irq_this_gpio_1_1:
   07D2                     207 	.ds 3
                    01FB    208 LGPIO_enable_irq$file_name$3$3==.
   07D5                     209 _GPIO_enable_irq_file_name_3_3:
   07D5                     210 	.ds 32
                    021B    211 LGPIO_disable_irq$port_id$1$1==.
   07F5                     212 _GPIO_disable_irq_PARM_2:
   07F5                     213 	.ds 1
                    021C    214 LGPIO_disable_irq$this_gpio$1$1==.
   07F6                     215 _GPIO_disable_irq_this_gpio_1_1:
   07F6                     216 	.ds 3
                    021F    217 LGPIO_disable_irq$file_name$3$3==.
   07F9                     218 _GPIO_disable_irq_file_name_3_3:
   07F9                     219 	.ds 32
                    023F    220 LGPIO_clear_irq$port_id$1$1==.
   0819                     221 _GPIO_clear_irq_PARM_2:
   0819                     222 	.ds 1
                    0240    223 LGPIO_clear_irq$this_gpio$1$1==.
   081A                     224 _GPIO_clear_irq_this_gpio_1_1:
   081A                     225 	.ds 3
                    0243    226 LGPIO_clear_irq$file_name$4$4==.
   081D                     227 _GPIO_clear_irq_file_name_4_4:
   081D                     228 	.ds 32
                            229 ;--------------------------------------------------------
                            230 ; external initialized ram data
                            231 ;--------------------------------------------------------
                            232 	.area XISEG   (XDATA)
                            233 	.area HOME    (CODE)
                            234 	.area GSINIT0 (CODE)
                            235 	.area GSINIT1 (CODE)
                            236 	.area GSINIT2 (CODE)
                            237 	.area GSINIT3 (CODE)
                            238 	.area GSINIT4 (CODE)
                            239 	.area GSINIT5 (CODE)
                            240 	.area GSINIT  (CODE)
                            241 	.area GSFINAL (CODE)
                            242 	.area CSEG    (CODE)
                            243 ;--------------------------------------------------------
                            244 ; global & static initialisations
                            245 ;--------------------------------------------------------
                            246 	.area HOME    (CODE)
                            247 	.area GSINIT  (CODE)
                            248 	.area GSFINAL (CODE)
                            249 	.area GSINIT  (CODE)
                            250 ;--------------------------------------------------------
                            251 ; Home
                            252 ;--------------------------------------------------------
                            253 	.area HOME    (CODE)
                            254 	.area HOME    (CODE)
                            255 ;--------------------------------------------------------
                            256 ; code
                            257 ;--------------------------------------------------------
                            258 	.area CSEG    (CODE)
                            259 ;------------------------------------------------------------
                            260 ;Allocation info for local variables in function 'GPIO_init'
                            261 ;------------------------------------------------------------
                            262 ;base_addr                 Allocated with name '_GPIO_init_PARM_2'
                            263 ;bus_width                 Allocated with name '_GPIO_init_PARM_3'
                            264 ;this_gpio                 Allocated with name '_GPIO_init_this_gpio_1_1'
                            265 ;i                         Allocated with name '_GPIO_init_i_1_1'
                            266 ;cfg_reg_addr              Allocated with name '_GPIO_init_cfg_reg_addr_1_1'
                            267 ;file_name                 Allocated with name '_GPIO_init_file_name_4_5'
                            268 ;------------------------------------------------------------
                    0000    269 	G$GPIO_init$0$0 ==.
                    0000    270 	C$core_gpio.c$31$0$0 ==.
                            271 ;	../drivers/CoreGPIO/core_gpio.c:31: void GPIO_init
                            272 ;	-----------------------------------------
                            273 ;	 function GPIO_init
                            274 ;	-----------------------------------------
   3E06                     275 _GPIO_init:
                    0002    276 	ar2 = 0x02
                    0003    277 	ar3 = 0x03
                    0004    278 	ar4 = 0x04
                    0005    279 	ar5 = 0x05
                    0006    280 	ar6 = 0x06
                    0007    281 	ar7 = 0x07
                    0000    282 	ar0 = 0x00
                    0001    283 	ar1 = 0x01
                            284 ;	genReceive
   3E06 AA F0               285 	mov	r2,b
   3E08 AB 83               286 	mov	r3,dph
   3E0A E5 82               287 	mov	a,dpl
   3E0C 90 05 DD            288 	mov	dptr,#_GPIO_init_this_gpio_1_1
   3E0F F0                  289 	movx	@dptr,a
   3E10 A3                  290 	inc	dptr
   3E11 EB                  291 	mov	a,r3
   3E12 F0                  292 	movx	@dptr,a
   3E13 A3                  293 	inc	dptr
   3E14 EA                  294 	mov	a,r2
   3E15 F0                  295 	movx	@dptr,a
                    0010    296 	C$core_gpio.c$39$1$0 ==.
                            297 ;	../drivers/CoreGPIO/core_gpio.c:39: addr_t cfg_reg_addr = base_addr;
                            298 ;	genAssign
   3E16 90 05 DA            299 	mov	dptr,#_GPIO_init_PARM_2
   3E19 E0                  300 	movx	a,@dptr
   3E1A FA                  301 	mov	r2,a
   3E1B A3                  302 	inc	dptr
   3E1C E0                  303 	movx	a,@dptr
   3E1D FB                  304 	mov	r3,a
                    0018    305 	C$core_gpio.c$41$1$1 ==.
                            306 ;	../drivers/CoreGPIO/core_gpio.c:41: this_gpio->base_addr = base_addr;
                            307 ;	genAssign
   3E1E 90 05 DD            308 	mov	dptr,#_GPIO_init_this_gpio_1_1
   3E21 E0                  309 	movx	a,@dptr
   3E22 FC                  310 	mov	r4,a
   3E23 A3                  311 	inc	dptr
   3E24 E0                  312 	movx	a,@dptr
   3E25 FD                  313 	mov	r5,a
   3E26 A3                  314 	inc	dptr
   3E27 E0                  315 	movx	a,@dptr
   3E28 FE                  316 	mov	r6,a
                            317 ;	genPointerSet
                            318 ;	genGenPointerSet
   3E29 8C 82               319 	mov	dpl,r4
   3E2B 8D 83               320 	mov	dph,r5
   3E2D 8E F0               321 	mov	b,r6
   3E2F EA                  322 	mov	a,r2
   3E30 12 5C 54            323 	lcall	__gptrput
   3E33 A3                  324 	inc	dptr
   3E34 EB                  325 	mov	a,r3
   3E35 12 5C 54            326 	lcall	__gptrput
                    0032    327 	C$core_gpio.c$42$1$1 ==.
                            328 ;	../drivers/CoreGPIO/core_gpio.c:42: this_gpio->apb_bus_width = bus_width;
                            329 ;	genPlus
                            330 ;	genPlusIncr
   3E38 74 02               331 	mov	a,#0x02
   3E3A 25 04               332 	add	a,ar4
   3E3C FC                  333 	mov	r4,a
   3E3D 74 00               334 	mov	a,#0x00
   3E3F 35 05               335 	addc	a,ar5
   3E41 FD                  336 	mov	r5,a
                            337 ;	genAssign
   3E42 90 05 DC            338 	mov	dptr,#_GPIO_init_PARM_3
   3E45 E0                  339 	movx	a,@dptr
   3E46 FF                  340 	mov	r7,a
                            341 ;	genPointerSet
                            342 ;	genGenPointerSet
   3E47 8C 82               343 	mov	dpl,r4
   3E49 8D 83               344 	mov	dph,r5
   3E4B 8E F0               345 	mov	b,r6
   3E4D EF                  346 	mov	a,r7
   3E4E 12 5C 54            347 	lcall	__gptrput
                    004B    348 	C$core_gpio.c$45$1$1 ==.
                            349 ;	../drivers/CoreGPIO/core_gpio.c:45: for( i = 0, cfg_reg_addr = base_addr; i < NB_OF_GPIO; ++i )
                            350 ;	genAssign
   3E51 90 05 E0            351 	mov	dptr,#_GPIO_init_i_1_1
   3E54 74 00               352 	mov	a,#0x00
   3E56 F0                  353 	movx	@dptr,a
                            354 ;	genAssign
   3E57 90 05 E1            355 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
   3E5A EA                  356 	mov	a,r2
   3E5B F0                  357 	movx	@dptr,a
   3E5C A3                  358 	inc	dptr
   3E5D EB                  359 	mov	a,r3
   3E5E F0                  360 	movx	@dptr,a
   3E5F                     361 00111$:
                            362 ;	genAssign
   3E5F 90 05 E0            363 	mov	dptr,#_GPIO_init_i_1_1
   3E62 E0                  364 	movx	a,@dptr
   3E63 FA                  365 	mov	r2,a
                            366 ;	genCmpLt
                            367 ;	genCmp
   3E64 BA 20 00            368 	cjne	r2,#0x20,00122$
   3E67                     369 00122$:
                            370 ;	genIfxJump
   3E67 40 03               371 	jc	00123$
   3E69 02 3E A4            372 	ljmp	00114$
   3E6C                     373 00123$:
                    0066    374 	C$core_gpio.c$47$2$2 ==.
                            375 ;	../drivers/CoreGPIO/core_gpio.c:47: HW_set_8bit_reg( cfg_reg_addr, 0 );
                            376 ;	genAssign
   3E6C 90 05 E1            377 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
   3E6F E0                  378 	movx	a,@dptr
   3E70 FB                  379 	mov	r3,a
   3E71 A3                  380 	inc	dptr
   3E72 E0                  381 	movx	a,@dptr
   3E73 FC                  382 	mov	r4,a
                            383 ;	genAssign
   3E74 90 00 4B            384 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   3E77 74 00               385 	mov	a,#0x00
   3E79 F0                  386 	movx	@dptr,a
                            387 ;	genCall
   3E7A 8B 82               388 	mov	dpl,r3
   3E7C 8C 83               389 	mov	dph,r4
   3E7E C0 02               390 	push	ar2
   3E80 C0 03               391 	push	ar3
   3E82 C0 04               392 	push	ar4
   3E84 12 08 B9            393 	lcall	_HW_set_8bit_reg
   3E87 D0 04               394 	pop	ar4
   3E89 D0 03               395 	pop	ar3
   3E8B D0 02               396 	pop	ar2
                    0087    397 	C$core_gpio.c$48$2$2 ==.
                            398 ;	../drivers/CoreGPIO/core_gpio.c:48: cfg_reg_addr += 4;
                            399 ;	genPlus
   3E8D 90 05 E1            400 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
                            401 ;	genPlusIncr
   3E90 74 04               402 	mov	a,#0x04
   3E92 25 03               403 	add	a,ar3
   3E94 F0                  404 	movx	@dptr,a
   3E95 74 00               405 	mov	a,#0x00
   3E97 35 04               406 	addc	a,ar4
   3E99 A3                  407 	inc	dptr
   3E9A F0                  408 	movx	@dptr,a
                    0095    409 	C$core_gpio.c$45$1$1 ==.
                            410 ;	../drivers/CoreGPIO/core_gpio.c:45: for( i = 0, cfg_reg_addr = base_addr; i < NB_OF_GPIO; ++i )
                            411 ;	genPlus
   3E9B 90 05 E0            412 	mov	dptr,#_GPIO_init_i_1_1
                            413 ;	genPlusIncr
   3E9E EA                  414 	mov	a,r2
   3E9F 04                  415 	inc	a
   3EA0 F0                  416 	movx	@dptr,a
   3EA1 02 3E 5F            417 	ljmp	00111$
   3EA4                     418 00114$:
                    009E    419 	C$core_gpio.c$51$1$1 ==.
                            420 ;	../drivers/CoreGPIO/core_gpio.c:51: switch( this_gpio->apb_bus_width )
                            421 ;	genAssign
   3EA4 90 05 DD            422 	mov	dptr,#_GPIO_init_this_gpio_1_1
   3EA7 E0                  423 	movx	a,@dptr
   3EA8 FA                  424 	mov	r2,a
   3EA9 A3                  425 	inc	dptr
   3EAA E0                  426 	movx	a,@dptr
   3EAB FB                  427 	mov	r3,a
   3EAC A3                  428 	inc	dptr
   3EAD E0                  429 	movx	a,@dptr
   3EAE FC                  430 	mov	r4,a
                            431 ;	genPlus
                            432 ;	genPlusIncr
   3EAF 74 02               433 	mov	a,#0x02
   3EB1 25 02               434 	add	a,ar2
   3EB3 FD                  435 	mov	r5,a
   3EB4 74 00               436 	mov	a,#0x00
   3EB6 35 03               437 	addc	a,ar3
   3EB8 FE                  438 	mov	r6,a
   3EB9 8C 07               439 	mov	ar7,r4
                            440 ;	genPointerGet
                            441 ;	genGenPointerGet
   3EBB 8D 82               442 	mov	dpl,r5
   3EBD 8E 83               443 	mov	dph,r6
   3EBF 8F F0               444 	mov	b,r7
   3EC1 12 5C 8D            445 	lcall	__gptrget
   3EC4 FD                  446 	mov	r5,a
                            447 ;	genCmpEq
                            448 ;	gencjneshort
   3EC5 BD 00 03            449 	cjne	r5,#0x00,00124$
   3EC8 02 3F 71            450 	ljmp	00103$
   3ECB                     451 00124$:
                            452 ;	genCmpEq
                            453 ;	gencjneshort
   3ECB BD 01 03            454 	cjne	r5,#0x01,00125$
   3ECE 02 3F 0E            455 	ljmp	00102$
   3ED1                     456 00125$:
                            457 ;	genCmpEq
                            458 ;	gencjneshort
   3ED1 BD 02 02            459 	cjne	r5,#0x02,00126$
   3ED4 80 03               460 	sjmp	00127$
   3ED6                     461 00126$:
   3ED6 02 40 30            462 	ljmp	00107$
   3ED9                     463 00127$:
                    00D3    464 	C$core_gpio.c$54$2$3 ==.
                            465 ;	../drivers/CoreGPIO/core_gpio.c:54: HAL_set_32bit_reg( this_gpio->base_addr, IRQ, CLEAR_ALL_IRQ32 );
                            466 ;	genPointerGet
                            467 ;	genGenPointerGet
   3ED9 8A 82               468 	mov	dpl,r2
   3EDB 8B 83               469 	mov	dph,r3
   3EDD 8C F0               470 	mov	b,r4
   3EDF 12 5C 8D            471 	lcall	__gptrget
   3EE2 FD                  472 	mov	r5,a
   3EE3 A3                  473 	inc	dptr
   3EE4 12 5C 8D            474 	lcall	__gptrget
   3EE7 FE                  475 	mov	r6,a
                            476 ;	genPlus
                            477 ;	genPlusIncr
   3EE8 74 80               478 	mov	a,#0x80
   3EEA 25 05               479 	add	a,ar5
   3EEC FD                  480 	mov	r5,a
   3EED 74 00               481 	mov	a,#0x00
   3EEF 35 06               482 	addc	a,ar6
   3EF1 FE                  483 	mov	r6,a
                            484 ;	genAssign
   3EF2 90 00 4C            485 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   3EF5 74 FF               486 	mov	a,#0xFF
   3EF7 F0                  487 	movx	@dptr,a
   3EF8 A3                  488 	inc	dptr
   3EF9 74 FF               489 	mov	a,#0xFF
   3EFB F0                  490 	movx	@dptr,a
   3EFC A3                  491 	inc	dptr
   3EFD 74 FF               492 	mov	a,#0xFF
   3EFF F0                  493 	movx	@dptr,a
   3F00 A3                  494 	inc	dptr
   3F01 74 FF               495 	mov	a,#0xFF
   3F03 F0                  496 	movx	@dptr,a
                            497 ;	genCall
   3F04 8D 82               498 	mov	dpl,r5
   3F06 8E 83               499 	mov	dph,r6
   3F08 12 08 82            500 	lcall	_HW_set_32bit_reg
                    0105    501 	C$core_gpio.c$55$2$3 ==.
                            502 ;	../drivers/CoreGPIO/core_gpio.c:55: break;
   3F0B 02 41 09            503 	ljmp	00115$
                    0108    504 	C$core_gpio.c$57$2$3 ==.
                            505 ;	../drivers/CoreGPIO/core_gpio.c:57: case GPIO_APB_16_BITS_BUS:
   3F0E                     506 00102$:
                    0108    507 	C$core_gpio.c$58$2$3 ==.
                            508 ;	../drivers/CoreGPIO/core_gpio.c:58: HAL_set_16bit_reg( this_gpio->base_addr, IRQ0, (uint16_t)CLEAR_ALL_IRQ16 );
                            509 ;	genPointerGet
                            510 ;	genGenPointerGet
   3F0E 8A 82               511 	mov	dpl,r2
   3F10 8B 83               512 	mov	dph,r3
   3F12 8C F0               513 	mov	b,r4
   3F14 12 5C 8D            514 	lcall	__gptrget
   3F17 FD                  515 	mov	r5,a
   3F18 A3                  516 	inc	dptr
   3F19 12 5C 8D            517 	lcall	__gptrget
   3F1C FE                  518 	mov	r6,a
                            519 ;	genPlus
                            520 ;	genPlusIncr
   3F1D 74 80               521 	mov	a,#0x80
   3F1F 25 05               522 	add	a,ar5
   3F21 FD                  523 	mov	r5,a
   3F22 74 00               524 	mov	a,#0x00
   3F24 35 06               525 	addc	a,ar6
   3F26 FE                  526 	mov	r6,a
                            527 ;	genAssign
   3F27 90 00 49            528 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   3F2A 74 FF               529 	mov	a,#0xFF
   3F2C F0                  530 	movx	@dptr,a
   3F2D A3                  531 	inc	dptr
   3F2E 74 FF               532 	mov	a,#0xFF
   3F30 F0                  533 	movx	@dptr,a
                            534 ;	genCall
   3F31 8D 82               535 	mov	dpl,r5
   3F33 8E 83               536 	mov	dph,r6
   3F35 C0 02               537 	push	ar2
   3F37 C0 03               538 	push	ar3
   3F39 C0 04               539 	push	ar4
   3F3B 12 08 9E            540 	lcall	_HW_set_16bit_reg
   3F3E D0 04               541 	pop	ar4
   3F40 D0 03               542 	pop	ar3
   3F42 D0 02               543 	pop	ar2
                    013E    544 	C$core_gpio.c$59$2$3 ==.
                            545 ;	../drivers/CoreGPIO/core_gpio.c:59: HAL_set_16bit_reg( this_gpio->base_addr, IRQ1, (uint16_t)CLEAR_ALL_IRQ16 );
                            546 ;	genPointerGet
                            547 ;	genGenPointerGet
   3F44 8A 82               548 	mov	dpl,r2
   3F46 8B 83               549 	mov	dph,r3
   3F48 8C F0               550 	mov	b,r4
   3F4A 12 5C 8D            551 	lcall	__gptrget
   3F4D FD                  552 	mov	r5,a
   3F4E A3                  553 	inc	dptr
   3F4F 12 5C 8D            554 	lcall	__gptrget
   3F52 FE                  555 	mov	r6,a
                            556 ;	genPlus
                            557 ;	genPlusIncr
   3F53 74 84               558 	mov	a,#0x84
   3F55 25 05               559 	add	a,ar5
   3F57 FD                  560 	mov	r5,a
   3F58 74 00               561 	mov	a,#0x00
   3F5A 35 06               562 	addc	a,ar6
   3F5C FE                  563 	mov	r6,a
                            564 ;	genAssign
   3F5D 90 00 49            565 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   3F60 74 FF               566 	mov	a,#0xFF
   3F62 F0                  567 	movx	@dptr,a
   3F63 A3                  568 	inc	dptr
   3F64 74 FF               569 	mov	a,#0xFF
   3F66 F0                  570 	movx	@dptr,a
                            571 ;	genCall
   3F67 8D 82               572 	mov	dpl,r5
   3F69 8E 83               573 	mov	dph,r6
   3F6B 12 08 9E            574 	lcall	_HW_set_16bit_reg
                    0168    575 	C$core_gpio.c$60$2$3 ==.
                            576 ;	../drivers/CoreGPIO/core_gpio.c:60: break;
   3F6E 02 41 09            577 	ljmp	00115$
                    016B    578 	C$core_gpio.c$62$2$3 ==.
                            579 ;	../drivers/CoreGPIO/core_gpio.c:62: case GPIO_APB_8_BITS_BUS:
   3F71                     580 00103$:
                    016B    581 	C$core_gpio.c$63$2$3 ==.
                            582 ;	../drivers/CoreGPIO/core_gpio.c:63: HAL_set_8bit_reg( this_gpio->base_addr, IRQ0, (uint8_t)CLEAR_ALL_IRQ8 );
                            583 ;	genPointerGet
                            584 ;	genGenPointerGet
   3F71 8A 82               585 	mov	dpl,r2
   3F73 8B 83               586 	mov	dph,r3
   3F75 8C F0               587 	mov	b,r4
   3F77 12 5C 8D            588 	lcall	__gptrget
   3F7A FD                  589 	mov	r5,a
   3F7B A3                  590 	inc	dptr
   3F7C 12 5C 8D            591 	lcall	__gptrget
   3F7F FE                  592 	mov	r6,a
                            593 ;	genPlus
                            594 ;	genPlusIncr
   3F80 74 80               595 	mov	a,#0x80
   3F82 25 05               596 	add	a,ar5
   3F84 FD                  597 	mov	r5,a
   3F85 74 00               598 	mov	a,#0x00
   3F87 35 06               599 	addc	a,ar6
   3F89 FE                  600 	mov	r6,a
                            601 ;	genAssign
   3F8A 90 00 4B            602 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   3F8D 74 FF               603 	mov	a,#0xFF
   3F8F F0                  604 	movx	@dptr,a
                            605 ;	genCall
   3F90 8D 82               606 	mov	dpl,r5
   3F92 8E 83               607 	mov	dph,r6
   3F94 C0 02               608 	push	ar2
   3F96 C0 03               609 	push	ar3
   3F98 C0 04               610 	push	ar4
   3F9A 12 08 B9            611 	lcall	_HW_set_8bit_reg
   3F9D D0 04               612 	pop	ar4
   3F9F D0 03               613 	pop	ar3
   3FA1 D0 02               614 	pop	ar2
                    019D    615 	C$core_gpio.c$64$2$3 ==.
                            616 ;	../drivers/CoreGPIO/core_gpio.c:64: HAL_set_8bit_reg( this_gpio->base_addr, IRQ1, (uint8_t)CLEAR_ALL_IRQ8 );
                            617 ;	genPointerGet
                            618 ;	genGenPointerGet
   3FA3 8A 82               619 	mov	dpl,r2
   3FA5 8B 83               620 	mov	dph,r3
   3FA7 8C F0               621 	mov	b,r4
   3FA9 12 5C 8D            622 	lcall	__gptrget
   3FAC FD                  623 	mov	r5,a
   3FAD A3                  624 	inc	dptr
   3FAE 12 5C 8D            625 	lcall	__gptrget
   3FB1 FE                  626 	mov	r6,a
                            627 ;	genPlus
                            628 ;	genPlusIncr
   3FB2 74 84               629 	mov	a,#0x84
   3FB4 25 05               630 	add	a,ar5
   3FB6 FD                  631 	mov	r5,a
   3FB7 74 00               632 	mov	a,#0x00
   3FB9 35 06               633 	addc	a,ar6
   3FBB FE                  634 	mov	r6,a
                            635 ;	genAssign
   3FBC 90 00 4B            636 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   3FBF 74 FF               637 	mov	a,#0xFF
   3FC1 F0                  638 	movx	@dptr,a
                            639 ;	genCall
   3FC2 8D 82               640 	mov	dpl,r5
   3FC4 8E 83               641 	mov	dph,r6
   3FC6 C0 02               642 	push	ar2
   3FC8 C0 03               643 	push	ar3
   3FCA C0 04               644 	push	ar4
   3FCC 12 08 B9            645 	lcall	_HW_set_8bit_reg
   3FCF D0 04               646 	pop	ar4
   3FD1 D0 03               647 	pop	ar3
   3FD3 D0 02               648 	pop	ar2
                    01CF    649 	C$core_gpio.c$65$2$3 ==.
                            650 ;	../drivers/CoreGPIO/core_gpio.c:65: HAL_set_8bit_reg( this_gpio->base_addr, IRQ2, (uint8_t)CLEAR_ALL_IRQ8 );
                            651 ;	genPointerGet
                            652 ;	genGenPointerGet
   3FD5 8A 82               653 	mov	dpl,r2
   3FD7 8B 83               654 	mov	dph,r3
   3FD9 8C F0               655 	mov	b,r4
   3FDB 12 5C 8D            656 	lcall	__gptrget
   3FDE FD                  657 	mov	r5,a
   3FDF A3                  658 	inc	dptr
   3FE0 12 5C 8D            659 	lcall	__gptrget
   3FE3 FE                  660 	mov	r6,a
                            661 ;	genPlus
                            662 ;	genPlusIncr
   3FE4 74 88               663 	mov	a,#0x88
   3FE6 25 05               664 	add	a,ar5
   3FE8 FD                  665 	mov	r5,a
   3FE9 74 00               666 	mov	a,#0x00
   3FEB 35 06               667 	addc	a,ar6
   3FED FE                  668 	mov	r6,a
                            669 ;	genAssign
   3FEE 90 00 4B            670 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   3FF1 74 FF               671 	mov	a,#0xFF
   3FF3 F0                  672 	movx	@dptr,a
                            673 ;	genCall
   3FF4 8D 82               674 	mov	dpl,r5
   3FF6 8E 83               675 	mov	dph,r6
   3FF8 C0 02               676 	push	ar2
   3FFA C0 03               677 	push	ar3
   3FFC C0 04               678 	push	ar4
   3FFE 12 08 B9            679 	lcall	_HW_set_8bit_reg
   4001 D0 04               680 	pop	ar4
   4003 D0 03               681 	pop	ar3
   4005 D0 02               682 	pop	ar2
                    0201    683 	C$core_gpio.c$66$2$3 ==.
                            684 ;	../drivers/CoreGPIO/core_gpio.c:66: HAL_set_8bit_reg( this_gpio->base_addr, IRQ3, (uint8_t)CLEAR_ALL_IRQ8 );
                            685 ;	genPointerGet
                            686 ;	genGenPointerGet
   4007 8A 82               687 	mov	dpl,r2
   4009 8B 83               688 	mov	dph,r3
   400B 8C F0               689 	mov	b,r4
   400D 12 5C 8D            690 	lcall	__gptrget
   4010 FA                  691 	mov	r2,a
   4011 A3                  692 	inc	dptr
   4012 12 5C 8D            693 	lcall	__gptrget
   4015 FB                  694 	mov	r3,a
                            695 ;	genPlus
                            696 ;	genPlusIncr
   4016 74 8C               697 	mov	a,#0x8C
   4018 25 02               698 	add	a,ar2
   401A FA                  699 	mov	r2,a
   401B 74 00               700 	mov	a,#0x00
   401D 35 03               701 	addc	a,ar3
   401F FB                  702 	mov	r3,a
                            703 ;	genAssign
   4020 90 00 4B            704 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   4023 74 FF               705 	mov	a,#0xFF
   4025 F0                  706 	movx	@dptr,a
                            707 ;	genCall
   4026 8A 82               708 	mov	dpl,r2
   4028 8B 83               709 	mov	dph,r3
   402A 12 08 B9            710 	lcall	_HW_set_8bit_reg
                    0227    711 	C$core_gpio.c$67$2$3 ==.
                            712 ;	../drivers/CoreGPIO/core_gpio.c:67: break;
   402D 02 41 09            713 	ljmp	00115$
                    022A    714 	C$core_gpio.c$70$2$3 ==.
                            715 ;	../drivers/CoreGPIO/core_gpio.c:70: HAL_ASSERT(0);
   4030                     716 00107$:
                            717 ;	genPointerSet
                            718 ;     genFarPointerSet
   4030 90 05 E3            719 	mov	dptr,#_GPIO_init_file_name_4_5
   4033 74 2E               720 	mov	a,#0x2E
   4035 F0                  721 	movx	@dptr,a
                            722 ;	genPointerSet
                            723 ;     genFarPointerSet
   4036 90 05 E4            724 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0001)
   4039 74 2E               725 	mov	a,#0x2E
   403B F0                  726 	movx	@dptr,a
                            727 ;	genPointerSet
                            728 ;     genFarPointerSet
   403C 90 05 E5            729 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0002)
   403F 74 2F               730 	mov	a,#0x2F
   4041 F0                  731 	movx	@dptr,a
                            732 ;	genPointerSet
                            733 ;     genFarPointerSet
   4042 90 05 E6            734 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0003)
   4045 74 64               735 	mov	a,#0x64
   4047 F0                  736 	movx	@dptr,a
                            737 ;	genPointerSet
                            738 ;     genFarPointerSet
   4048 90 05 E7            739 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0004)
   404B 74 72               740 	mov	a,#0x72
   404D F0                  741 	movx	@dptr,a
                            742 ;	genPointerSet
                            743 ;     genFarPointerSet
   404E 90 05 E8            744 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0005)
   4051 74 69               745 	mov	a,#0x69
   4053 F0                  746 	movx	@dptr,a
                            747 ;	genPointerSet
                            748 ;     genFarPointerSet
   4054 90 05 E9            749 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0006)
   4057 74 76               750 	mov	a,#0x76
   4059 F0                  751 	movx	@dptr,a
                            752 ;	genPointerSet
                            753 ;     genFarPointerSet
   405A 90 05 EA            754 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0007)
   405D 74 65               755 	mov	a,#0x65
   405F F0                  756 	movx	@dptr,a
                            757 ;	genPointerSet
                            758 ;     genFarPointerSet
   4060 90 05 EB            759 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0008)
   4063 74 72               760 	mov	a,#0x72
   4065 F0                  761 	movx	@dptr,a
                            762 ;	genPointerSet
                            763 ;     genFarPointerSet
   4066 90 05 EC            764 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0009)
   4069 74 73               765 	mov	a,#0x73
   406B F0                  766 	movx	@dptr,a
                            767 ;	genPointerSet
                            768 ;     genFarPointerSet
   406C 90 05 ED            769 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000a)
   406F 74 2F               770 	mov	a,#0x2F
   4071 F0                  771 	movx	@dptr,a
                            772 ;	genPointerSet
                            773 ;     genFarPointerSet
   4072 90 05 EE            774 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000b)
   4075 74 43               775 	mov	a,#0x43
   4077 F0                  776 	movx	@dptr,a
                            777 ;	genPointerSet
                            778 ;     genFarPointerSet
   4078 90 05 EF            779 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000c)
   407B 74 6F               780 	mov	a,#0x6F
   407D F0                  781 	movx	@dptr,a
                            782 ;	genPointerSet
                            783 ;     genFarPointerSet
   407E 90 05 F0            784 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000d)
   4081 74 72               785 	mov	a,#0x72
   4083 F0                  786 	movx	@dptr,a
                            787 ;	genPointerSet
                            788 ;     genFarPointerSet
   4084 90 05 F1            789 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000e)
   4087 74 65               790 	mov	a,#0x65
   4089 F0                  791 	movx	@dptr,a
                            792 ;	genPointerSet
                            793 ;     genFarPointerSet
   408A 90 05 F2            794 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000f)
   408D 74 47               795 	mov	a,#0x47
   408F F0                  796 	movx	@dptr,a
                            797 ;	genPointerSet
                            798 ;     genFarPointerSet
   4090 90 05 F3            799 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0010)
   4093 74 50               800 	mov	a,#0x50
   4095 F0                  801 	movx	@dptr,a
                            802 ;	genPointerSet
                            803 ;     genFarPointerSet
   4096 90 05 F4            804 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0011)
   4099 74 49               805 	mov	a,#0x49
   409B F0                  806 	movx	@dptr,a
                            807 ;	genPointerSet
                            808 ;     genFarPointerSet
   409C 90 05 F5            809 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0012)
   409F 74 4F               810 	mov	a,#0x4F
   40A1 F0                  811 	movx	@dptr,a
                            812 ;	genPointerSet
                            813 ;     genFarPointerSet
   40A2 90 05 F6            814 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0013)
   40A5 74 2F               815 	mov	a,#0x2F
   40A7 F0                  816 	movx	@dptr,a
                            817 ;	genPointerSet
                            818 ;     genFarPointerSet
   40A8 90 05 F7            819 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0014)
   40AB 74 63               820 	mov	a,#0x63
   40AD F0                  821 	movx	@dptr,a
                            822 ;	genPointerSet
                            823 ;     genFarPointerSet
   40AE 90 05 F8            824 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0015)
   40B1 74 6F               825 	mov	a,#0x6F
   40B3 F0                  826 	movx	@dptr,a
                            827 ;	genPointerSet
                            828 ;     genFarPointerSet
   40B4 90 05 F9            829 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0016)
   40B7 74 72               830 	mov	a,#0x72
   40B9 F0                  831 	movx	@dptr,a
                            832 ;	genPointerSet
                            833 ;     genFarPointerSet
   40BA 90 05 FA            834 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0017)
   40BD 74 65               835 	mov	a,#0x65
   40BF F0                  836 	movx	@dptr,a
                            837 ;	genPointerSet
                            838 ;     genFarPointerSet
   40C0 90 05 FB            839 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0018)
   40C3 74 5F               840 	mov	a,#0x5F
   40C5 F0                  841 	movx	@dptr,a
                            842 ;	genPointerSet
                            843 ;     genFarPointerSet
   40C6 90 05 FC            844 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0019)
   40C9 74 67               845 	mov	a,#0x67
   40CB F0                  846 	movx	@dptr,a
                            847 ;	genPointerSet
                            848 ;     genFarPointerSet
   40CC 90 05 FD            849 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001a)
   40CF 74 70               850 	mov	a,#0x70
   40D1 F0                  851 	movx	@dptr,a
                            852 ;	genPointerSet
                            853 ;     genFarPointerSet
   40D2 90 05 FE            854 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001b)
   40D5 74 69               855 	mov	a,#0x69
   40D7 F0                  856 	movx	@dptr,a
                            857 ;	genPointerSet
                            858 ;     genFarPointerSet
   40D8 90 05 FF            859 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001c)
   40DB 74 6F               860 	mov	a,#0x6F
   40DD F0                  861 	movx	@dptr,a
                            862 ;	genPointerSet
                            863 ;     genFarPointerSet
   40DE 90 06 00            864 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001d)
   40E1 74 2E               865 	mov	a,#0x2E
   40E3 F0                  866 	movx	@dptr,a
                            867 ;	genPointerSet
                            868 ;     genFarPointerSet
   40E4 90 06 01            869 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001e)
   40E7 74 63               870 	mov	a,#0x63
   40E9 F0                  871 	movx	@dptr,a
                            872 ;	genPointerSet
                            873 ;     genFarPointerSet
   40EA 90 06 02            874 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001f)
   40ED 74 00               875 	mov	a,#0x00
   40EF F0                  876 	movx	@dptr,a
                            877 ;	genAssign
   40F0 90 00 2E            878 	mov	dptr,#_HAL_assert_fail_PARM_2
   40F3 74 46               879 	mov	a,#0x46
   40F5 F0                  880 	movx	@dptr,a
   40F6 E4                  881 	clr	a
   40F7 A3                  882 	inc	dptr
   40F8 F0                  883 	movx	@dptr,a
   40F9 A3                  884 	inc	dptr
   40FA F0                  885 	movx	@dptr,a
   40FB A3                  886 	inc	dptr
   40FC F0                  887 	movx	@dptr,a
                            888 ;	genCall
   40FD 75 82 E3            889 	mov	dpl,#_GPIO_init_file_name_4_5
   4100 75 83 05            890 	mov	dph,#(_GPIO_init_file_name_4_5 >> 8)
   4103 75 F0 00            891 	mov	b,#0x00
   4106 12 08 16            892 	lcall	_HAL_assert_fail
                    0303    893 	C$core_gpio.c$72$1$1 ==.
                            894 ;	../drivers/CoreGPIO/core_gpio.c:72: }
   4109                     895 00115$:
                    0303    896 	C$core_gpio.c$73$1$1 ==.
                    0303    897 	XG$GPIO_init$0$0 ==.
   4109 22                  898 	ret
                            899 ;------------------------------------------------------------
                            900 ;Allocation info for local variables in function 'GPIO_config'
                            901 ;------------------------------------------------------------
                            902 ;port_id                   Allocated with name '_GPIO_config_PARM_2'
                            903 ;config                    Allocated with name '_GPIO_config_PARM_3'
                            904 ;this_gpio                 Allocated with name '_GPIO_config_this_gpio_1_1'
                            905 ;file_name                 Allocated with name '_GPIO_config_file_name_3_3'
                            906 ;cfg_reg_addr              Allocated with name '_GPIO_config_cfg_reg_addr_2_4'
                            907 ;file_name                 Allocated with name '_GPIO_config_file_name_4_6'
                            908 ;------------------------------------------------------------
                    0304    909 	G$GPIO_config$0$0 ==.
                    0304    910 	C$core_gpio.c$79$1$1 ==.
                            911 ;	../drivers/CoreGPIO/core_gpio.c:79: void GPIO_config
                            912 ;	-----------------------------------------
                            913 ;	 function GPIO_config
                            914 ;	-----------------------------------------
   410A                     915 _GPIO_config:
                            916 ;	genReceive
   410A AA F0               917 	mov	r2,b
   410C AB 83               918 	mov	r3,dph
   410E E5 82               919 	mov	a,dpl
   4110 90 06 08            920 	mov	dptr,#_GPIO_config_this_gpio_1_1
   4113 F0                  921 	movx	@dptr,a
   4114 A3                  922 	inc	dptr
   4115 EB                  923 	mov	a,r3
   4116 F0                  924 	movx	@dptr,a
   4117 A3                  925 	inc	dptr
   4118 EA                  926 	mov	a,r2
   4119 F0                  927 	movx	@dptr,a
                    0314    928 	C$core_gpio.c$86$2$2 ==.
                            929 ;	../drivers/CoreGPIO/core_gpio.c:86: HAL_ASSERT( port_id < NB_OF_GPIO );
                            930 ;	genAssign
   411A 90 06 03            931 	mov	dptr,#_GPIO_config_PARM_2
   411D E0                  932 	movx	a,@dptr
   411E FA                  933 	mov	r2,a
                            934 ;	genCmpLt
                            935 ;	genCmp
   411F BA 20 00            936 	cjne	r2,#0x20,00118$
   4122                     937 00118$:
   4122 E4                  938 	clr	a
   4123 33                  939 	rlc	a
   4124 FB                  940 	mov	r3,a
                            941 ;	genIfx
   4125 EB                  942 	mov	a,r3
                            943 ;	genIfxJump
   4126 60 03               944 	jz	00119$
   4128 02 42 0C            945 	ljmp	00104$
   412B                     946 00119$:
                            947 ;	genPointerSet
                            948 ;     genFarPointerSet
   412B 90 06 0B            949 	mov	dptr,#_GPIO_config_file_name_3_3
   412E 74 2E               950 	mov	a,#0x2E
   4130 F0                  951 	movx	@dptr,a
                            952 ;	genPointerSet
                            953 ;     genFarPointerSet
   4131 90 06 0C            954 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0001)
   4134 74 2E               955 	mov	a,#0x2E
   4136 F0                  956 	movx	@dptr,a
                            957 ;	genPointerSet
                            958 ;     genFarPointerSet
   4137 90 06 0D            959 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0002)
   413A 74 2F               960 	mov	a,#0x2F
   413C F0                  961 	movx	@dptr,a
                            962 ;	genPointerSet
                            963 ;     genFarPointerSet
   413D 90 06 0E            964 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0003)
   4140 74 64               965 	mov	a,#0x64
   4142 F0                  966 	movx	@dptr,a
                            967 ;	genPointerSet
                            968 ;     genFarPointerSet
   4143 90 06 0F            969 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0004)
   4146 74 72               970 	mov	a,#0x72
   4148 F0                  971 	movx	@dptr,a
                            972 ;	genPointerSet
                            973 ;     genFarPointerSet
   4149 90 06 10            974 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0005)
   414C 74 69               975 	mov	a,#0x69
   414E F0                  976 	movx	@dptr,a
                            977 ;	genPointerSet
                            978 ;     genFarPointerSet
   414F 90 06 11            979 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0006)
   4152 74 76               980 	mov	a,#0x76
   4154 F0                  981 	movx	@dptr,a
                            982 ;	genPointerSet
                            983 ;     genFarPointerSet
   4155 90 06 12            984 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0007)
   4158 74 65               985 	mov	a,#0x65
   415A F0                  986 	movx	@dptr,a
                            987 ;	genPointerSet
                            988 ;     genFarPointerSet
   415B 90 06 13            989 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0008)
   415E 74 72               990 	mov	a,#0x72
   4160 F0                  991 	movx	@dptr,a
                            992 ;	genPointerSet
                            993 ;     genFarPointerSet
   4161 90 06 14            994 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0009)
   4164 74 73               995 	mov	a,#0x73
   4166 F0                  996 	movx	@dptr,a
                            997 ;	genPointerSet
                            998 ;     genFarPointerSet
   4167 90 06 15            999 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000a)
   416A 74 2F              1000 	mov	a,#0x2F
   416C F0                 1001 	movx	@dptr,a
                           1002 ;	genPointerSet
                           1003 ;     genFarPointerSet
   416D 90 06 16           1004 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000b)
   4170 74 43              1005 	mov	a,#0x43
   4172 F0                 1006 	movx	@dptr,a
                           1007 ;	genPointerSet
                           1008 ;     genFarPointerSet
   4173 90 06 17           1009 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000c)
   4176 74 6F              1010 	mov	a,#0x6F
   4178 F0                 1011 	movx	@dptr,a
                           1012 ;	genPointerSet
                           1013 ;     genFarPointerSet
   4179 90 06 18           1014 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000d)
   417C 74 72              1015 	mov	a,#0x72
   417E F0                 1016 	movx	@dptr,a
                           1017 ;	genPointerSet
                           1018 ;     genFarPointerSet
   417F 90 06 19           1019 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000e)
   4182 74 65              1020 	mov	a,#0x65
   4184 F0                 1021 	movx	@dptr,a
                           1022 ;	genPointerSet
                           1023 ;     genFarPointerSet
   4185 90 06 1A           1024 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000f)
   4188 74 47              1025 	mov	a,#0x47
   418A F0                 1026 	movx	@dptr,a
                           1027 ;	genPointerSet
                           1028 ;     genFarPointerSet
   418B 90 06 1B           1029 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0010)
   418E 74 50              1030 	mov	a,#0x50
   4190 F0                 1031 	movx	@dptr,a
                           1032 ;	genPointerSet
                           1033 ;     genFarPointerSet
   4191 90 06 1C           1034 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0011)
   4194 74 49              1035 	mov	a,#0x49
   4196 F0                 1036 	movx	@dptr,a
                           1037 ;	genPointerSet
                           1038 ;     genFarPointerSet
   4197 90 06 1D           1039 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0012)
   419A 74 4F              1040 	mov	a,#0x4F
   419C F0                 1041 	movx	@dptr,a
                           1042 ;	genPointerSet
                           1043 ;     genFarPointerSet
   419D 90 06 1E           1044 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0013)
   41A0 74 2F              1045 	mov	a,#0x2F
   41A2 F0                 1046 	movx	@dptr,a
                           1047 ;	genPointerSet
                           1048 ;     genFarPointerSet
   41A3 90 06 1F           1049 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0014)
   41A6 74 63              1050 	mov	a,#0x63
   41A8 F0                 1051 	movx	@dptr,a
                           1052 ;	genPointerSet
                           1053 ;     genFarPointerSet
   41A9 90 06 20           1054 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0015)
   41AC 74 6F              1055 	mov	a,#0x6F
   41AE F0                 1056 	movx	@dptr,a
                           1057 ;	genPointerSet
                           1058 ;     genFarPointerSet
   41AF 90 06 21           1059 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0016)
   41B2 74 72              1060 	mov	a,#0x72
   41B4 F0                 1061 	movx	@dptr,a
                           1062 ;	genPointerSet
                           1063 ;     genFarPointerSet
   41B5 90 06 22           1064 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0017)
   41B8 74 65              1065 	mov	a,#0x65
   41BA F0                 1066 	movx	@dptr,a
                           1067 ;	genPointerSet
                           1068 ;     genFarPointerSet
   41BB 90 06 23           1069 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0018)
   41BE 74 5F              1070 	mov	a,#0x5F
   41C0 F0                 1071 	movx	@dptr,a
                           1072 ;	genPointerSet
                           1073 ;     genFarPointerSet
   41C1 90 06 24           1074 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0019)
   41C4 74 67              1075 	mov	a,#0x67
   41C6 F0                 1076 	movx	@dptr,a
                           1077 ;	genPointerSet
                           1078 ;     genFarPointerSet
   41C7 90 06 25           1079 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001a)
   41CA 74 70              1080 	mov	a,#0x70
   41CC F0                 1081 	movx	@dptr,a
                           1082 ;	genPointerSet
                           1083 ;     genFarPointerSet
   41CD 90 06 26           1084 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001b)
   41D0 74 69              1085 	mov	a,#0x69
   41D2 F0                 1086 	movx	@dptr,a
                           1087 ;	genPointerSet
                           1088 ;     genFarPointerSet
   41D3 90 06 27           1089 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001c)
   41D6 74 6F              1090 	mov	a,#0x6F
   41D8 F0                 1091 	movx	@dptr,a
                           1092 ;	genPointerSet
                           1093 ;     genFarPointerSet
   41D9 90 06 28           1094 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001d)
   41DC 74 2E              1095 	mov	a,#0x2E
   41DE F0                 1096 	movx	@dptr,a
                           1097 ;	genPointerSet
                           1098 ;     genFarPointerSet
   41DF 90 06 29           1099 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001e)
   41E2 74 63              1100 	mov	a,#0x63
   41E4 F0                 1101 	movx	@dptr,a
                           1102 ;	genPointerSet
                           1103 ;     genFarPointerSet
   41E5 90 06 2A           1104 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001f)
   41E8 74 00              1105 	mov	a,#0x00
   41EA F0                 1106 	movx	@dptr,a
                           1107 ;	genAssign
   41EB 90 00 2E           1108 	mov	dptr,#_HAL_assert_fail_PARM_2
   41EE 74 56              1109 	mov	a,#0x56
   41F0 F0                 1110 	movx	@dptr,a
   41F1 E4                 1111 	clr	a
   41F2 A3                 1112 	inc	dptr
   41F3 F0                 1113 	movx	@dptr,a
   41F4 A3                 1114 	inc	dptr
   41F5 F0                 1115 	movx	@dptr,a
   41F6 A3                 1116 	inc	dptr
   41F7 F0                 1117 	movx	@dptr,a
                           1118 ;	genCall
   41F8 75 82 0B           1119 	mov	dpl,#_GPIO_config_file_name_3_3
   41FB 75 83 06           1120 	mov	dph,#(_GPIO_config_file_name_3_3 >> 8)
   41FE 75 F0 00           1121 	mov	b,#0x00
   4201 C0 02              1122 	push	ar2
   4203 C0 03              1123 	push	ar3
   4205 12 08 16           1124 	lcall	_HAL_assert_fail
   4208 D0 03              1125 	pop	ar3
   420A D0 02              1126 	pop	ar2
   420C                    1127 00104$:
                    0406   1128 	C$core_gpio.c$88$1$1 ==.
                           1129 ;	../drivers/CoreGPIO/core_gpio.c:88: if ( port_id < NB_OF_GPIO )
                           1130 ;	genIfx
   420C EB                 1131 	mov	a,r3
                           1132 ;	genIfxJump
   420D 70 03              1133 	jnz	00120$
   420F 02 43 97           1134 	ljmp	00113$
   4212                    1135 00120$:
                    040C   1136 	C$core_gpio.c$90$2$4 ==.
                           1137 ;	../drivers/CoreGPIO/core_gpio.c:90: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           1138 ;	genAssign
   4212 90 06 08           1139 	mov	dptr,#_GPIO_config_this_gpio_1_1
   4215 E0                 1140 	movx	a,@dptr
   4216 FB                 1141 	mov	r3,a
   4217 A3                 1142 	inc	dptr
   4218 E0                 1143 	movx	a,@dptr
   4219 FC                 1144 	mov	r4,a
   421A A3                 1145 	inc	dptr
   421B E0                 1146 	movx	a,@dptr
   421C FD                 1147 	mov	r5,a
                           1148 ;	genPointerGet
                           1149 ;	genGenPointerGet
   421D 8B 82              1150 	mov	dpl,r3
   421F 8C 83              1151 	mov	dph,r4
   4221 8D F0              1152 	mov	b,r5
   4223 12 5C 8D           1153 	lcall	__gptrget
   4226 FB                 1154 	mov	r3,a
   4227 A3                 1155 	inc	dptr
   4228 12 5C 8D           1156 	lcall	__gptrget
   422B FC                 1157 	mov	r4,a
                           1158 ;	genCast
   422C 7D 00              1159 	mov	r5,#0x00
   422E 7E 00              1160 	mov	r6,#0x00
                    042A   1161 	C$core_gpio.c$91$2$4 ==.
                           1162 ;	../drivers/CoreGPIO/core_gpio.c:91: cfg_reg_addr += (port_id * 4);
                           1163 ;	genMult
                           1164 ;	genMultOneByte
   4230 EA                 1165 	mov	a,r2
   4231 75 F0 04           1166 	mov	b,#0x04
   4234 A4                 1167 	mul	ab
   4235 FA                 1168 	mov	r2,a
   4236 AF F0              1169 	mov	r7,b
                           1170 ;	genCast
   4238 EF                 1171 	mov	a,r7
   4239 33                 1172 	rlc	a
   423A 95 E0              1173 	subb	a,acc
   423C F8                 1174 	mov	r0,a
   423D F9                 1175 	mov	r1,a
                           1176 ;	genPlus
   423E E5 02              1177 	mov	a,ar2
   4240 25 03              1178 	add	a,ar3
   4242 FB                 1179 	mov	r3,a
   4243 E5 07              1180 	mov	a,ar7
   4245 35 04              1181 	addc	a,ar4
   4247 FC                 1182 	mov	r4,a
   4248 E5 00              1183 	mov	a,ar0
   424A 35 05              1184 	addc	a,ar5
   424C FD                 1185 	mov	r5,a
   424D E5 01              1186 	mov	a,ar1
   424F 35 06              1187 	addc	a,ar6
   4251 FE                 1188 	mov	r6,a
                    044C   1189 	C$core_gpio.c$92$2$4 ==.
                           1190 ;	../drivers/CoreGPIO/core_gpio.c:92: HW_set_32bit_reg( cfg_reg_addr, config );
                           1191 ;	genCast
                           1192 ;	genAssign
   4252 90 06 04           1193 	mov	dptr,#_GPIO_config_PARM_3
   4255 E0                 1194 	movx	a,@dptr
   4256 FA                 1195 	mov	r2,a
   4257 A3                 1196 	inc	dptr
   4258 E0                 1197 	movx	a,@dptr
   4259 FD                 1198 	mov	r5,a
   425A A3                 1199 	inc	dptr
   425B E0                 1200 	movx	a,@dptr
   425C FE                 1201 	mov	r6,a
   425D A3                 1202 	inc	dptr
   425E E0                 1203 	movx	a,@dptr
   425F FF                 1204 	mov	r7,a
                           1205 ;	genAssign
   4260 90 00 4C           1206 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   4263 EA                 1207 	mov	a,r2
   4264 F0                 1208 	movx	@dptr,a
   4265 A3                 1209 	inc	dptr
   4266 ED                 1210 	mov	a,r5
   4267 F0                 1211 	movx	@dptr,a
   4268 A3                 1212 	inc	dptr
   4269 EE                 1213 	mov	a,r6
   426A F0                 1214 	movx	@dptr,a
   426B A3                 1215 	inc	dptr
   426C EF                 1216 	mov	a,r7
   426D F0                 1217 	movx	@dptr,a
                           1218 ;	genCall
   426E 8B 82              1219 	mov	dpl,r3
   4270 8C 83              1220 	mov	dph,r4
   4272 C0 02              1221 	push	ar2
   4274 C0 03              1222 	push	ar3
   4276 C0 04              1223 	push	ar4
   4278 C0 05              1224 	push	ar5
   427A C0 06              1225 	push	ar6
   427C C0 07              1226 	push	ar7
   427E 12 08 82           1227 	lcall	_HW_set_32bit_reg
   4281 D0 07              1228 	pop	ar7
   4283 D0 06              1229 	pop	ar6
   4285 D0 05              1230 	pop	ar5
   4287 D0 04              1231 	pop	ar4
   4289 D0 03              1232 	pop	ar3
   428B D0 02              1233 	pop	ar2
                    0487   1234 	C$core_gpio.c$101$3$5 ==.
                           1235 ;	../drivers/CoreGPIO/core_gpio.c:101: HAL_ASSERT( HW_get_32bit_reg( cfg_reg_addr ) == config );
                           1236 ;	genCall
   428D 8B 82              1237 	mov	dpl,r3
   428F 8C 83              1238 	mov	dph,r4
   4291 C0 02              1239 	push	ar2
   4293 C0 05              1240 	push	ar5
   4295 C0 06              1241 	push	ar6
   4297 C0 07              1242 	push	ar7
   4299 12 08 76           1243 	lcall	_HW_get_32bit_reg
   429C AB 82              1244 	mov	r3,dpl
   429E AC 83              1245 	mov	r4,dph
   42A0 A8 F0              1246 	mov	r0,b
   42A2 F9                 1247 	mov	r1,a
   42A3 D0 07              1248 	pop	ar7
   42A5 D0 06              1249 	pop	ar6
   42A7 D0 05              1250 	pop	ar5
   42A9 D0 02              1251 	pop	ar2
                           1252 ;	genCmpEq
                           1253 ;	gencjneshort
   42AB EB                 1254 	mov	a,r3
   42AC B5 02 0F           1255 	cjne	a,ar2,00121$
   42AF EC                 1256 	mov	a,r4
   42B0 B5 05 0B           1257 	cjne	a,ar5,00121$
   42B3 E8                 1258 	mov	a,r0
   42B4 B5 06 07           1259 	cjne	a,ar6,00121$
   42B7 E9                 1260 	mov	a,r1
   42B8 B5 07 03           1261 	cjne	a,ar7,00121$
   42BB 02 43 97           1262 	ljmp	00113$
   42BE                    1263 00121$:
                           1264 ;	genPointerSet
                           1265 ;     genFarPointerSet
   42BE 90 06 2B           1266 	mov	dptr,#_GPIO_config_file_name_4_6
   42C1 74 2E              1267 	mov	a,#0x2E
   42C3 F0                 1268 	movx	@dptr,a
                           1269 ;	genPointerSet
                           1270 ;     genFarPointerSet
   42C4 90 06 2C           1271 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0001)
   42C7 74 2E              1272 	mov	a,#0x2E
   42C9 F0                 1273 	movx	@dptr,a
                           1274 ;	genPointerSet
                           1275 ;     genFarPointerSet
   42CA 90 06 2D           1276 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0002)
   42CD 74 2F              1277 	mov	a,#0x2F
   42CF F0                 1278 	movx	@dptr,a
                           1279 ;	genPointerSet
                           1280 ;     genFarPointerSet
   42D0 90 06 2E           1281 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0003)
   42D3 74 64              1282 	mov	a,#0x64
   42D5 F0                 1283 	movx	@dptr,a
                           1284 ;	genPointerSet
                           1285 ;     genFarPointerSet
   42D6 90 06 2F           1286 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0004)
   42D9 74 72              1287 	mov	a,#0x72
   42DB F0                 1288 	movx	@dptr,a
                           1289 ;	genPointerSet
                           1290 ;     genFarPointerSet
   42DC 90 06 30           1291 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0005)
   42DF 74 69              1292 	mov	a,#0x69
   42E1 F0                 1293 	movx	@dptr,a
                           1294 ;	genPointerSet
                           1295 ;     genFarPointerSet
   42E2 90 06 31           1296 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0006)
   42E5 74 76              1297 	mov	a,#0x76
   42E7 F0                 1298 	movx	@dptr,a
                           1299 ;	genPointerSet
                           1300 ;     genFarPointerSet
   42E8 90 06 32           1301 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0007)
   42EB 74 65              1302 	mov	a,#0x65
   42ED F0                 1303 	movx	@dptr,a
                           1304 ;	genPointerSet
                           1305 ;     genFarPointerSet
   42EE 90 06 33           1306 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0008)
   42F1 74 72              1307 	mov	a,#0x72
   42F3 F0                 1308 	movx	@dptr,a
                           1309 ;	genPointerSet
                           1310 ;     genFarPointerSet
   42F4 90 06 34           1311 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0009)
   42F7 74 73              1312 	mov	a,#0x73
   42F9 F0                 1313 	movx	@dptr,a
                           1314 ;	genPointerSet
                           1315 ;     genFarPointerSet
   42FA 90 06 35           1316 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000a)
   42FD 74 2F              1317 	mov	a,#0x2F
   42FF F0                 1318 	movx	@dptr,a
                           1319 ;	genPointerSet
                           1320 ;     genFarPointerSet
   4300 90 06 36           1321 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000b)
   4303 74 43              1322 	mov	a,#0x43
   4305 F0                 1323 	movx	@dptr,a
                           1324 ;	genPointerSet
                           1325 ;     genFarPointerSet
   4306 90 06 37           1326 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000c)
   4309 74 6F              1327 	mov	a,#0x6F
   430B F0                 1328 	movx	@dptr,a
                           1329 ;	genPointerSet
                           1330 ;     genFarPointerSet
   430C 90 06 38           1331 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000d)
   430F 74 72              1332 	mov	a,#0x72
   4311 F0                 1333 	movx	@dptr,a
                           1334 ;	genPointerSet
                           1335 ;     genFarPointerSet
   4312 90 06 39           1336 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000e)
   4315 74 65              1337 	mov	a,#0x65
   4317 F0                 1338 	movx	@dptr,a
                           1339 ;	genPointerSet
                           1340 ;     genFarPointerSet
   4318 90 06 3A           1341 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000f)
   431B 74 47              1342 	mov	a,#0x47
   431D F0                 1343 	movx	@dptr,a
                           1344 ;	genPointerSet
                           1345 ;     genFarPointerSet
   431E 90 06 3B           1346 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0010)
   4321 74 50              1347 	mov	a,#0x50
   4323 F0                 1348 	movx	@dptr,a
                           1349 ;	genPointerSet
                           1350 ;     genFarPointerSet
   4324 90 06 3C           1351 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0011)
   4327 74 49              1352 	mov	a,#0x49
   4329 F0                 1353 	movx	@dptr,a
                           1354 ;	genPointerSet
                           1355 ;     genFarPointerSet
   432A 90 06 3D           1356 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0012)
   432D 74 4F              1357 	mov	a,#0x4F
   432F F0                 1358 	movx	@dptr,a
                           1359 ;	genPointerSet
                           1360 ;     genFarPointerSet
   4330 90 06 3E           1361 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0013)
   4333 74 2F              1362 	mov	a,#0x2F
   4335 F0                 1363 	movx	@dptr,a
                           1364 ;	genPointerSet
                           1365 ;     genFarPointerSet
   4336 90 06 3F           1366 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0014)
   4339 74 63              1367 	mov	a,#0x63
   433B F0                 1368 	movx	@dptr,a
                           1369 ;	genPointerSet
                           1370 ;     genFarPointerSet
   433C 90 06 40           1371 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0015)
   433F 74 6F              1372 	mov	a,#0x6F
   4341 F0                 1373 	movx	@dptr,a
                           1374 ;	genPointerSet
                           1375 ;     genFarPointerSet
   4342 90 06 41           1376 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0016)
   4345 74 72              1377 	mov	a,#0x72
   4347 F0                 1378 	movx	@dptr,a
                           1379 ;	genPointerSet
                           1380 ;     genFarPointerSet
   4348 90 06 42           1381 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0017)
   434B 74 65              1382 	mov	a,#0x65
   434D F0                 1383 	movx	@dptr,a
                           1384 ;	genPointerSet
                           1385 ;     genFarPointerSet
   434E 90 06 43           1386 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0018)
   4351 74 5F              1387 	mov	a,#0x5F
   4353 F0                 1388 	movx	@dptr,a
                           1389 ;	genPointerSet
                           1390 ;     genFarPointerSet
   4354 90 06 44           1391 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0019)
   4357 74 67              1392 	mov	a,#0x67
   4359 F0                 1393 	movx	@dptr,a
                           1394 ;	genPointerSet
                           1395 ;     genFarPointerSet
   435A 90 06 45           1396 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001a)
   435D 74 70              1397 	mov	a,#0x70
   435F F0                 1398 	movx	@dptr,a
                           1399 ;	genPointerSet
                           1400 ;     genFarPointerSet
   4360 90 06 46           1401 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001b)
   4363 74 69              1402 	mov	a,#0x69
   4365 F0                 1403 	movx	@dptr,a
                           1404 ;	genPointerSet
                           1405 ;     genFarPointerSet
   4366 90 06 47           1406 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001c)
   4369 74 6F              1407 	mov	a,#0x6F
   436B F0                 1408 	movx	@dptr,a
                           1409 ;	genPointerSet
                           1410 ;     genFarPointerSet
   436C 90 06 48           1411 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001d)
   436F 74 2E              1412 	mov	a,#0x2E
   4371 F0                 1413 	movx	@dptr,a
                           1414 ;	genPointerSet
                           1415 ;     genFarPointerSet
   4372 90 06 49           1416 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001e)
   4375 74 63              1417 	mov	a,#0x63
   4377 F0                 1418 	movx	@dptr,a
                           1419 ;	genPointerSet
                           1420 ;     genFarPointerSet
   4378 90 06 4A           1421 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001f)
   437B 74 00              1422 	mov	a,#0x00
   437D F0                 1423 	movx	@dptr,a
                           1424 ;	genAssign
   437E 90 00 2E           1425 	mov	dptr,#_HAL_assert_fail_PARM_2
   4381 74 65              1426 	mov	a,#0x65
   4383 F0                 1427 	movx	@dptr,a
   4384 E4                 1428 	clr	a
   4385 A3                 1429 	inc	dptr
   4386 F0                 1430 	movx	@dptr,a
   4387 A3                 1431 	inc	dptr
   4388 F0                 1432 	movx	@dptr,a
   4389 A3                 1433 	inc	dptr
   438A F0                 1434 	movx	@dptr,a
                           1435 ;	genCall
   438B 75 82 2B           1436 	mov	dpl,#_GPIO_config_file_name_4_6
   438E 75 83 06           1437 	mov	dph,#(_GPIO_config_file_name_4_6 >> 8)
   4391 75 F0 00           1438 	mov	b,#0x00
   4394 12 08 16           1439 	lcall	_HAL_assert_fail
   4397                    1440 00113$:
                    0591   1441 	C$core_gpio.c$103$2$1 ==.
                    0591   1442 	XG$GPIO_config$0$0 ==.
   4397 22                 1443 	ret
                           1444 ;------------------------------------------------------------
                           1445 ;Allocation info for local variables in function 'GPIO_set_outputs'
                           1446 ;------------------------------------------------------------
                           1447 ;sloc0                     Allocated with name '_GPIO_set_outputs_sloc0_1_0'
                           1448 ;sloc1                     Allocated with name '_GPIO_set_outputs_sloc1_1_0'
                           1449 ;sloc2                     Allocated with name '_GPIO_set_outputs_sloc2_1_0'
                           1450 ;value                     Allocated with name '_GPIO_set_outputs_PARM_2'
                           1451 ;this_gpio                 Allocated with name '_GPIO_set_outputs_this_gpio_1_1'
                           1452 ;file_name                 Allocated with name '_GPIO_set_outputs_file_name_4_4'
                           1453 ;file_name                 Allocated with name '_GPIO_set_outputs_file_name_3_6'
                           1454 ;------------------------------------------------------------
                    0592   1455 	G$GPIO_set_outputs$0$0 ==.
                    0592   1456 	C$core_gpio.c$109$2$1 ==.
                           1457 ;	../drivers/CoreGPIO/core_gpio.c:109: void GPIO_set_outputs
                           1458 ;	-----------------------------------------
                           1459 ;	 function GPIO_set_outputs
                           1460 ;	-----------------------------------------
   4398                    1461 _GPIO_set_outputs:
                           1462 ;	genReceive
   4398 AA F0              1463 	mov	r2,b
   439A AB 83              1464 	mov	r3,dph
   439C E5 82              1465 	mov	a,dpl
   439E 90 06 4F           1466 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   43A1 F0                 1467 	movx	@dptr,a
   43A2 A3                 1468 	inc	dptr
   43A3 EB                 1469 	mov	a,r3
   43A4 F0                 1470 	movx	@dptr,a
   43A5 A3                 1471 	inc	dptr
   43A6 EA                 1472 	mov	a,r2
   43A7 F0                 1473 	movx	@dptr,a
                    05A2   1474 	C$core_gpio.c$115$1$1 ==.
                           1475 ;	../drivers/CoreGPIO/core_gpio.c:115: switch( this_gpio->apb_bus_width )
                           1476 ;	genAssign
   43A8 90 06 4F           1477 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   43AB E0                 1478 	movx	a,@dptr
   43AC FA                 1479 	mov	r2,a
   43AD A3                 1480 	inc	dptr
   43AE E0                 1481 	movx	a,@dptr
   43AF FB                 1482 	mov	r3,a
   43B0 A3                 1483 	inc	dptr
   43B1 E0                 1484 	movx	a,@dptr
   43B2 FC                 1485 	mov	r4,a
                           1486 ;	genPlus
                           1487 ;	genPlusIncr
   43B3 74 02              1488 	mov	a,#0x02
   43B5 25 02              1489 	add	a,ar2
   43B7 FD                 1490 	mov	r5,a
   43B8 74 00              1491 	mov	a,#0x00
   43BA 35 03              1492 	addc	a,ar3
   43BC FE                 1493 	mov	r6,a
   43BD 8C 07              1494 	mov	ar7,r4
                           1495 ;	genPointerGet
                           1496 ;	genGenPointerGet
   43BF 8D 82              1497 	mov	dpl,r5
   43C1 8E 83              1498 	mov	dph,r6
   43C3 8F F0              1499 	mov	b,r7
   43C5 12 5C 8D           1500 	lcall	__gptrget
   43C8 FD                 1501 	mov	r5,a
                           1502 ;	genCmpEq
                           1503 ;	gencjneshort
   43C9 BD 00 03           1504 	cjne	r5,#0x00,00122$
   43CC 02 44 91           1505 	ljmp	00103$
   43CF                    1506 00122$:
                           1507 ;	genCmpEq
                           1508 ;	gencjneshort
   43CF BD 01 03           1509 	cjne	r5,#0x01,00123$
   43D2 02 44 1C           1510 	ljmp	00102$
   43D5                    1511 00123$:
                           1512 ;	genCmpEq
                           1513 ;	gencjneshort
   43D5 BD 02 02           1514 	cjne	r5,#0x02,00124$
   43D8 80 03              1515 	sjmp	00125$
   43DA                    1516 00124$:
   43DA 02 45 62           1517 	ljmp	00107$
   43DD                    1518 00125$:
                    05D7   1519 	C$core_gpio.c$118$2$2 ==.
                           1520 ;	../drivers/CoreGPIO/core_gpio.c:118: HAL_set_32bit_reg( this_gpio->base_addr, GPIO_OUT, value );
                           1521 ;	genPointerGet
                           1522 ;	genGenPointerGet
   43DD 8A 82              1523 	mov	dpl,r2
   43DF 8B 83              1524 	mov	dph,r3
   43E1 8C F0              1525 	mov	b,r4
   43E3 12 5C 8D           1526 	lcall	__gptrget
   43E6 FD                 1527 	mov	r5,a
   43E7 A3                 1528 	inc	dptr
   43E8 12 5C 8D           1529 	lcall	__gptrget
   43EB FE                 1530 	mov	r6,a
                           1531 ;	genPlus
                           1532 ;	genPlusIncr
   43EC 74 A0              1533 	mov	a,#0xA0
   43EE 25 05              1534 	add	a,ar5
   43F0 FA                 1535 	mov	r2,a
   43F1 74 00              1536 	mov	a,#0x00
   43F3 35 06              1537 	addc	a,ar6
   43F5 FB                 1538 	mov	r3,a
                           1539 ;	genAssign
   43F6 90 06 4B           1540 	mov	dptr,#_GPIO_set_outputs_PARM_2
   43F9 E0                 1541 	movx	a,@dptr
   43FA FF                 1542 	mov	r7,a
   43FB A3                 1543 	inc	dptr
   43FC E0                 1544 	movx	a,@dptr
   43FD F8                 1545 	mov	r0,a
   43FE A3                 1546 	inc	dptr
   43FF E0                 1547 	movx	a,@dptr
   4400 F9                 1548 	mov	r1,a
   4401 A3                 1549 	inc	dptr
   4402 E0                 1550 	movx	a,@dptr
   4403 FD                 1551 	mov	r5,a
                           1552 ;	genAssign
   4404 90 00 4C           1553 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   4407 EF                 1554 	mov	a,r7
   4408 F0                 1555 	movx	@dptr,a
   4409 A3                 1556 	inc	dptr
   440A E8                 1557 	mov	a,r0
   440B F0                 1558 	movx	@dptr,a
   440C A3                 1559 	inc	dptr
   440D E9                 1560 	mov	a,r1
   440E F0                 1561 	movx	@dptr,a
   440F A3                 1562 	inc	dptr
   4410 ED                 1563 	mov	a,r5
   4411 F0                 1564 	movx	@dptr,a
                           1565 ;	genCall
   4412 8A 82              1566 	mov	dpl,r2
   4414 8B 83              1567 	mov	dph,r3
   4416 12 08 82           1568 	lcall	_HW_set_32bit_reg
                    0613   1569 	C$core_gpio.c$119$2$2 ==.
                           1570 ;	../drivers/CoreGPIO/core_gpio.c:119: break;
   4419 02 46 3B           1571 	ljmp	00113$
                    0616   1572 	C$core_gpio.c$121$2$2 ==.
                           1573 ;	../drivers/CoreGPIO/core_gpio.c:121: case GPIO_APB_16_BITS_BUS:
   441C                    1574 00102$:
                    0616   1575 	C$core_gpio.c$122$2$2 ==.
                           1576 ;	../drivers/CoreGPIO/core_gpio.c:122: HAL_set_16bit_reg( this_gpio->base_addr, GPIO_OUT0, (uint16_t)value );
                           1577 ;	genPointerGet
                           1578 ;	genGenPointerGet
   441C 8A 82              1579 	mov	dpl,r2
   441E 8B 83              1580 	mov	dph,r3
   4420 8C F0              1581 	mov	b,r4
   4422 12 5C 8D           1582 	lcall	__gptrget
   4425 FD                 1583 	mov	r5,a
   4426 A3                 1584 	inc	dptr
   4427 12 5C 8D           1585 	lcall	__gptrget
   442A FE                 1586 	mov	r6,a
                           1587 ;	genPlus
                           1588 ;	genPlusIncr
   442B 74 A0              1589 	mov	a,#0xA0
   442D 25 05              1590 	add	a,ar5
   442F FD                 1591 	mov	r5,a
   4430 74 00              1592 	mov	a,#0x00
   4432 35 06              1593 	addc	a,ar6
   4434 FE                 1594 	mov	r6,a
                           1595 ;	genAssign
   4435 90 06 4B           1596 	mov	dptr,#_GPIO_set_outputs_PARM_2
   4438 E0                 1597 	movx	a,@dptr
   4439 F5 49              1598 	mov	_GPIO_set_outputs_sloc1_1_0,a
   443B A3                 1599 	inc	dptr
   443C E0                 1600 	movx	a,@dptr
   443D F5 4A              1601 	mov	(_GPIO_set_outputs_sloc1_1_0 + 1),a
   443F A3                 1602 	inc	dptr
   4440 E0                 1603 	movx	a,@dptr
   4441 F5 4B              1604 	mov	(_GPIO_set_outputs_sloc1_1_0 + 2),a
   4443 A3                 1605 	inc	dptr
   4444 E0                 1606 	movx	a,@dptr
   4445 F5 4C              1607 	mov	(_GPIO_set_outputs_sloc1_1_0 + 3),a
                           1608 ;	genCast
   4447 90 00 49           1609 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   444A E5 49              1610 	mov	a,_GPIO_set_outputs_sloc1_1_0
   444C F0                 1611 	movx	@dptr,a
   444D A3                 1612 	inc	dptr
   444E E5 4A              1613 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 1)
   4450 F0                 1614 	movx	@dptr,a
                           1615 ;	genCall
   4451 8D 82              1616 	mov	dpl,r5
   4453 8E 83              1617 	mov	dph,r6
   4455 C0 02              1618 	push	ar2
   4457 C0 03              1619 	push	ar3
   4459 C0 04              1620 	push	ar4
   445B 12 08 9E           1621 	lcall	_HW_set_16bit_reg
   445E D0 04              1622 	pop	ar4
   4460 D0 03              1623 	pop	ar3
   4462 D0 02              1624 	pop	ar2
                    065E   1625 	C$core_gpio.c$123$2$2 ==.
                           1626 ;	../drivers/CoreGPIO/core_gpio.c:123: HAL_set_16bit_reg( this_gpio->base_addr, GPIO_OUT1, (uint16_t)(value >> 16) );
                           1627 ;	genPointerGet
                           1628 ;	genGenPointerGet
   4464 8A 82              1629 	mov	dpl,r2
   4466 8B 83              1630 	mov	dph,r3
   4468 8C F0              1631 	mov	b,r4
   446A 12 5C 8D           1632 	lcall	__gptrget
   446D FE                 1633 	mov	r6,a
   446E A3                 1634 	inc	dptr
   446F 12 5C 8D           1635 	lcall	__gptrget
   4472 FD                 1636 	mov	r5,a
                           1637 ;	genPlus
                           1638 ;	genPlusIncr
   4473 74 A4              1639 	mov	a,#0xA4
   4475 25 06              1640 	add	a,ar6
   4477 FE                 1641 	mov	r6,a
   4478 74 00              1642 	mov	a,#0x00
   447A 35 05              1643 	addc	a,ar5
   447C FD                 1644 	mov	r5,a
                           1645 ;	genGetWord
   447D 90 00 49           1646 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   4480 E5 4B              1647 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 2)
   4482 F0                 1648 	movx	@dptr,a
   4483 A3                 1649 	inc	dptr
   4484 E5 4C              1650 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 3)
   4486 F0                 1651 	movx	@dptr,a
                           1652 ;	genCall
   4487 8E 82              1653 	mov	dpl,r6
   4489 8D 83              1654 	mov	dph,r5
   448B 12 08 9E           1655 	lcall	_HW_set_16bit_reg
                    0688   1656 	C$core_gpio.c$124$2$2 ==.
                           1657 ;	../drivers/CoreGPIO/core_gpio.c:124: break;
   448E 02 46 3B           1658 	ljmp	00113$
                    068B   1659 	C$core_gpio.c$126$2$2 ==.
                           1660 ;	../drivers/CoreGPIO/core_gpio.c:126: case GPIO_APB_8_BITS_BUS:
   4491                    1661 00103$:
                    068B   1662 	C$core_gpio.c$127$2$2 ==.
                           1663 ;	../drivers/CoreGPIO/core_gpio.c:127: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT0, (uint8_t)value );
                           1664 ;	genPointerGet
                           1665 ;	genGenPointerGet
   4491 8A 82              1666 	mov	dpl,r2
   4493 8B 83              1667 	mov	dph,r3
   4495 8C F0              1668 	mov	b,r4
   4497 12 5C 8D           1669 	lcall	__gptrget
   449A FD                 1670 	mov	r5,a
   449B A3                 1671 	inc	dptr
   449C 12 5C 8D           1672 	lcall	__gptrget
   449F FE                 1673 	mov	r6,a
                           1674 ;	genPlus
                           1675 ;	genPlusIncr
   44A0 74 A0              1676 	mov	a,#0xA0
   44A2 25 05              1677 	add	a,ar5
   44A4 FD                 1678 	mov	r5,a
   44A5 74 00              1679 	mov	a,#0x00
   44A7 35 06              1680 	addc	a,ar6
   44A9 FE                 1681 	mov	r6,a
                           1682 ;	genAssign
   44AA 90 06 4B           1683 	mov	dptr,#_GPIO_set_outputs_PARM_2
   44AD E0                 1684 	movx	a,@dptr
   44AE F5 4D              1685 	mov	_GPIO_set_outputs_sloc2_1_0,a
   44B0 A3                 1686 	inc	dptr
   44B1 E0                 1687 	movx	a,@dptr
   44B2 F5 4E              1688 	mov	(_GPIO_set_outputs_sloc2_1_0 + 1),a
   44B4 A3                 1689 	inc	dptr
   44B5 E0                 1690 	movx	a,@dptr
   44B6 F5 4F              1691 	mov	(_GPIO_set_outputs_sloc2_1_0 + 2),a
   44B8 A3                 1692 	inc	dptr
   44B9 E0                 1693 	movx	a,@dptr
   44BA F5 50              1694 	mov	(_GPIO_set_outputs_sloc2_1_0 + 3),a
                           1695 ;	genCast
   44BC 90 00 4B           1696 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   44BF E5 4D              1697 	mov	a,_GPIO_set_outputs_sloc2_1_0
   44C1 F0                 1698 	movx	@dptr,a
                           1699 ;	genCall
   44C2 8D 82              1700 	mov	dpl,r5
   44C4 8E 83              1701 	mov	dph,r6
   44C6 C0 02              1702 	push	ar2
   44C8 C0 03              1703 	push	ar3
   44CA C0 04              1704 	push	ar4
   44CC 12 08 B9           1705 	lcall	_HW_set_8bit_reg
   44CF D0 04              1706 	pop	ar4
   44D1 D0 03              1707 	pop	ar3
   44D3 D0 02              1708 	pop	ar2
                    06CF   1709 	C$core_gpio.c$128$2$2 ==.
                           1710 ;	../drivers/CoreGPIO/core_gpio.c:128: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT1, (uint8_t)(value >> 8) );
                           1711 ;	genPointerGet
                           1712 ;	genGenPointerGet
   44D5 8A 82              1713 	mov	dpl,r2
   44D7 8B 83              1714 	mov	dph,r3
   44D9 8C F0              1715 	mov	b,r4
   44DB 12 5C 8D           1716 	lcall	__gptrget
   44DE FE                 1717 	mov	r6,a
   44DF A3                 1718 	inc	dptr
   44E0 12 5C 8D           1719 	lcall	__gptrget
   44E3 FD                 1720 	mov	r5,a
                           1721 ;	genPlus
                           1722 ;	genPlusIncr
   44E4 74 A4              1723 	mov	a,#0xA4
   44E6 25 06              1724 	add	a,ar6
   44E8 FE                 1725 	mov	r6,a
   44E9 74 00              1726 	mov	a,#0x00
   44EB 35 05              1727 	addc	a,ar5
   44ED FD                 1728 	mov	r5,a
                           1729 ;	genGetByte
   44EE 90 00 4B           1730 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   44F1 E5 4E              1731 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 1)
   44F3 F0                 1732 	movx	@dptr,a
                           1733 ;	genCall
   44F4 8E 82              1734 	mov	dpl,r6
   44F6 8D 83              1735 	mov	dph,r5
   44F8 C0 02              1736 	push	ar2
   44FA C0 03              1737 	push	ar3
   44FC C0 04              1738 	push	ar4
   44FE 12 08 B9           1739 	lcall	_HW_set_8bit_reg
   4501 D0 04              1740 	pop	ar4
   4503 D0 03              1741 	pop	ar3
   4505 D0 02              1742 	pop	ar2
                    0701   1743 	C$core_gpio.c$129$2$2 ==.
                           1744 ;	../drivers/CoreGPIO/core_gpio.c:129: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT2, (uint8_t)(value >> 16) );
                           1745 ;	genPointerGet
                           1746 ;	genGenPointerGet
   4507 8A 82              1747 	mov	dpl,r2
   4509 8B 83              1748 	mov	dph,r3
   450B 8C F0              1749 	mov	b,r4
   450D 12 5C 8D           1750 	lcall	__gptrget
   4510 FD                 1751 	mov	r5,a
   4511 A3                 1752 	inc	dptr
   4512 12 5C 8D           1753 	lcall	__gptrget
   4515 FE                 1754 	mov	r6,a
                           1755 ;	genPlus
                           1756 ;	genPlusIncr
   4516 74 A8              1757 	mov	a,#0xA8
   4518 25 05              1758 	add	a,ar5
   451A FD                 1759 	mov	r5,a
   451B 74 00              1760 	mov	a,#0x00
   451D 35 06              1761 	addc	a,ar6
   451F FE                 1762 	mov	r6,a
                           1763 ;	genGetByte
   4520 90 00 4B           1764 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   4523 E5 4F              1765 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 2)
   4525 F0                 1766 	movx	@dptr,a
                           1767 ;	genCall
   4526 8D 82              1768 	mov	dpl,r5
   4528 8E 83              1769 	mov	dph,r6
   452A C0 02              1770 	push	ar2
   452C C0 03              1771 	push	ar3
   452E C0 04              1772 	push	ar4
   4530 12 08 B9           1773 	lcall	_HW_set_8bit_reg
   4533 D0 04              1774 	pop	ar4
   4535 D0 03              1775 	pop	ar3
   4537 D0 02              1776 	pop	ar2
                    0733   1777 	C$core_gpio.c$130$2$2 ==.
                           1778 ;	../drivers/CoreGPIO/core_gpio.c:130: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT3, (uint8_t)(value >> 24) );
                           1779 ;	genPointerGet
                           1780 ;	genGenPointerGet
   4539 8A 82              1781 	mov	dpl,r2
   453B 8B 83              1782 	mov	dph,r3
   453D 8C F0              1783 	mov	b,r4
   453F 12 5C 8D           1784 	lcall	__gptrget
   4542 FA                 1785 	mov	r2,a
   4543 A3                 1786 	inc	dptr
   4544 12 5C 8D           1787 	lcall	__gptrget
   4547 FB                 1788 	mov	r3,a
                           1789 ;	genPlus
                           1790 ;	genPlusIncr
   4548 74 AC              1791 	mov	a,#0xAC
   454A 25 02              1792 	add	a,ar2
   454C FA                 1793 	mov	r2,a
   454D 74 00              1794 	mov	a,#0x00
   454F 35 03              1795 	addc	a,ar3
   4551 FB                 1796 	mov	r3,a
                           1797 ;	genGetByte
   4552 90 00 4B           1798 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   4555 E5 50              1799 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 3)
   4557 F0                 1800 	movx	@dptr,a
                           1801 ;	genCall
   4558 8A 82              1802 	mov	dpl,r2
   455A 8B 83              1803 	mov	dph,r3
   455C 12 08 B9           1804 	lcall	_HW_set_8bit_reg
                    0759   1805 	C$core_gpio.c$131$2$2 ==.
                           1806 ;	../drivers/CoreGPIO/core_gpio.c:131: break;
   455F 02 46 3B           1807 	ljmp	00113$
                    075C   1808 	C$core_gpio.c$134$2$2 ==.
                           1809 ;	../drivers/CoreGPIO/core_gpio.c:134: HAL_ASSERT(0);
   4562                    1810 00107$:
                           1811 ;	genPointerSet
                           1812 ;     genFarPointerSet
   4562 90 06 52           1813 	mov	dptr,#_GPIO_set_outputs_file_name_4_4
   4565 74 2E              1814 	mov	a,#0x2E
   4567 F0                 1815 	movx	@dptr,a
                           1816 ;	genPointerSet
                           1817 ;     genFarPointerSet
   4568 90 06 53           1818 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0001)
   456B 74 2E              1819 	mov	a,#0x2E
   456D F0                 1820 	movx	@dptr,a
                           1821 ;	genPointerSet
                           1822 ;     genFarPointerSet
   456E 90 06 54           1823 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0002)
   4571 74 2F              1824 	mov	a,#0x2F
   4573 F0                 1825 	movx	@dptr,a
                           1826 ;	genPointerSet
                           1827 ;     genFarPointerSet
   4574 90 06 55           1828 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0003)
   4577 74 64              1829 	mov	a,#0x64
   4579 F0                 1830 	movx	@dptr,a
                           1831 ;	genPointerSet
                           1832 ;     genFarPointerSet
   457A 90 06 56           1833 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0004)
   457D 74 72              1834 	mov	a,#0x72
   457F F0                 1835 	movx	@dptr,a
                           1836 ;	genPointerSet
                           1837 ;     genFarPointerSet
   4580 90 06 57           1838 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0005)
   4583 74 69              1839 	mov	a,#0x69
   4585 F0                 1840 	movx	@dptr,a
                           1841 ;	genPointerSet
                           1842 ;     genFarPointerSet
   4586 90 06 58           1843 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0006)
   4589 74 76              1844 	mov	a,#0x76
   458B F0                 1845 	movx	@dptr,a
                           1846 ;	genPointerSet
                           1847 ;     genFarPointerSet
   458C 90 06 59           1848 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0007)
   458F 74 65              1849 	mov	a,#0x65
   4591 F0                 1850 	movx	@dptr,a
                           1851 ;	genPointerSet
                           1852 ;     genFarPointerSet
   4592 90 06 5A           1853 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0008)
   4595 74 72              1854 	mov	a,#0x72
   4597 F0                 1855 	movx	@dptr,a
                           1856 ;	genPointerSet
                           1857 ;     genFarPointerSet
   4598 90 06 5B           1858 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0009)
   459B 74 73              1859 	mov	a,#0x73
   459D F0                 1860 	movx	@dptr,a
                           1861 ;	genPointerSet
                           1862 ;     genFarPointerSet
   459E 90 06 5C           1863 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000a)
   45A1 74 2F              1864 	mov	a,#0x2F
   45A3 F0                 1865 	movx	@dptr,a
                           1866 ;	genPointerSet
                           1867 ;     genFarPointerSet
   45A4 90 06 5D           1868 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000b)
   45A7 74 43              1869 	mov	a,#0x43
   45A9 F0                 1870 	movx	@dptr,a
                           1871 ;	genPointerSet
                           1872 ;     genFarPointerSet
   45AA 90 06 5E           1873 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000c)
   45AD 74 6F              1874 	mov	a,#0x6F
   45AF F0                 1875 	movx	@dptr,a
                           1876 ;	genPointerSet
                           1877 ;     genFarPointerSet
   45B0 90 06 5F           1878 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000d)
   45B3 74 72              1879 	mov	a,#0x72
   45B5 F0                 1880 	movx	@dptr,a
                           1881 ;	genPointerSet
                           1882 ;     genFarPointerSet
   45B6 90 06 60           1883 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000e)
   45B9 74 65              1884 	mov	a,#0x65
   45BB F0                 1885 	movx	@dptr,a
                           1886 ;	genPointerSet
                           1887 ;     genFarPointerSet
   45BC 90 06 61           1888 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000f)
   45BF 74 47              1889 	mov	a,#0x47
   45C1 F0                 1890 	movx	@dptr,a
                           1891 ;	genPointerSet
                           1892 ;     genFarPointerSet
   45C2 90 06 62           1893 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0010)
   45C5 74 50              1894 	mov	a,#0x50
   45C7 F0                 1895 	movx	@dptr,a
                           1896 ;	genPointerSet
                           1897 ;     genFarPointerSet
   45C8 90 06 63           1898 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0011)
   45CB 74 49              1899 	mov	a,#0x49
   45CD F0                 1900 	movx	@dptr,a
                           1901 ;	genPointerSet
                           1902 ;     genFarPointerSet
   45CE 90 06 64           1903 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0012)
   45D1 74 4F              1904 	mov	a,#0x4F
   45D3 F0                 1905 	movx	@dptr,a
                           1906 ;	genPointerSet
                           1907 ;     genFarPointerSet
   45D4 90 06 65           1908 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0013)
   45D7 74 2F              1909 	mov	a,#0x2F
   45D9 F0                 1910 	movx	@dptr,a
                           1911 ;	genPointerSet
                           1912 ;     genFarPointerSet
   45DA 90 06 66           1913 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0014)
   45DD 74 63              1914 	mov	a,#0x63
   45DF F0                 1915 	movx	@dptr,a
                           1916 ;	genPointerSet
                           1917 ;     genFarPointerSet
   45E0 90 06 67           1918 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0015)
   45E3 74 6F              1919 	mov	a,#0x6F
   45E5 F0                 1920 	movx	@dptr,a
                           1921 ;	genPointerSet
                           1922 ;     genFarPointerSet
   45E6 90 06 68           1923 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0016)
   45E9 74 72              1924 	mov	a,#0x72
   45EB F0                 1925 	movx	@dptr,a
                           1926 ;	genPointerSet
                           1927 ;     genFarPointerSet
   45EC 90 06 69           1928 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0017)
   45EF 74 65              1929 	mov	a,#0x65
   45F1 F0                 1930 	movx	@dptr,a
                           1931 ;	genPointerSet
                           1932 ;     genFarPointerSet
   45F2 90 06 6A           1933 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0018)
   45F5 74 5F              1934 	mov	a,#0x5F
   45F7 F0                 1935 	movx	@dptr,a
                           1936 ;	genPointerSet
                           1937 ;     genFarPointerSet
   45F8 90 06 6B           1938 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0019)
   45FB 74 67              1939 	mov	a,#0x67
   45FD F0                 1940 	movx	@dptr,a
                           1941 ;	genPointerSet
                           1942 ;     genFarPointerSet
   45FE 90 06 6C           1943 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001a)
   4601 74 70              1944 	mov	a,#0x70
   4603 F0                 1945 	movx	@dptr,a
                           1946 ;	genPointerSet
                           1947 ;     genFarPointerSet
   4604 90 06 6D           1948 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001b)
   4607 74 69              1949 	mov	a,#0x69
   4609 F0                 1950 	movx	@dptr,a
                           1951 ;	genPointerSet
                           1952 ;     genFarPointerSet
   460A 90 06 6E           1953 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001c)
   460D 74 6F              1954 	mov	a,#0x6F
   460F F0                 1955 	movx	@dptr,a
                           1956 ;	genPointerSet
                           1957 ;     genFarPointerSet
   4610 90 06 6F           1958 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001d)
   4613 74 2E              1959 	mov	a,#0x2E
   4615 F0                 1960 	movx	@dptr,a
                           1961 ;	genPointerSet
                           1962 ;     genFarPointerSet
   4616 90 06 70           1963 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001e)
   4619 74 63              1964 	mov	a,#0x63
   461B F0                 1965 	movx	@dptr,a
                           1966 ;	genPointerSet
                           1967 ;     genFarPointerSet
   461C 90 06 71           1968 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001f)
   461F 74 00              1969 	mov	a,#0x00
   4621 F0                 1970 	movx	@dptr,a
                           1971 ;	genAssign
   4622 90 00 2E           1972 	mov	dptr,#_HAL_assert_fail_PARM_2
   4625 74 86              1973 	mov	a,#0x86
   4627 F0                 1974 	movx	@dptr,a
   4628 E4                 1975 	clr	a
   4629 A3                 1976 	inc	dptr
   462A F0                 1977 	movx	@dptr,a
   462B A3                 1978 	inc	dptr
   462C F0                 1979 	movx	@dptr,a
   462D A3                 1980 	inc	dptr
   462E F0                 1981 	movx	@dptr,a
                           1982 ;	genCall
   462F 75 82 52           1983 	mov	dpl,#_GPIO_set_outputs_file_name_4_4
   4632 75 83 06           1984 	mov	dph,#(_GPIO_set_outputs_file_name_4_4 >> 8)
   4635 75 F0 00           1985 	mov	b,#0x00
   4638 12 08 16           1986 	lcall	_HAL_assert_fail
                    0835   1987 	C$core_gpio.c$145$1$1 ==.
                           1988 ;	../drivers/CoreGPIO/core_gpio.c:145: HAL_ASSERT( GPIO_get_outputs( this_gpio ) == value );
   463B                    1989 00113$:
                           1990 ;	genAssign
   463B 90 06 4F           1991 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   463E E0                 1992 	movx	a,@dptr
   463F FA                 1993 	mov	r2,a
   4640 A3                 1994 	inc	dptr
   4641 E0                 1995 	movx	a,@dptr
   4642 FB                 1996 	mov	r3,a
   4643 A3                 1997 	inc	dptr
   4644 E0                 1998 	movx	a,@dptr
   4645 FC                 1999 	mov	r4,a
                           2000 ;	genCall
   4646 8A 82              2001 	mov	dpl,r2
   4648 8B 83              2002 	mov	dph,r3
   464A 8C F0              2003 	mov	b,r4
   464C 12 49 86           2004 	lcall	_GPIO_get_outputs
   464F AA 82              2005 	mov	r2,dpl
   4651 AB 83              2006 	mov	r3,dph
   4653 AC F0              2007 	mov	r4,b
   4655 FD                 2008 	mov	r5,a
                           2009 ;	genAssign
   4656 90 06 4B           2010 	mov	dptr,#_GPIO_set_outputs_PARM_2
   4659 E0                 2011 	movx	a,@dptr
   465A FE                 2012 	mov	r6,a
   465B A3                 2013 	inc	dptr
   465C E0                 2014 	movx	a,@dptr
   465D FF                 2015 	mov	r7,a
   465E A3                 2016 	inc	dptr
   465F E0                 2017 	movx	a,@dptr
   4660 F8                 2018 	mov	r0,a
   4661 A3                 2019 	inc	dptr
   4662 E0                 2020 	movx	a,@dptr
   4663 F9                 2021 	mov	r1,a
                           2022 ;	genCmpEq
                           2023 ;	gencjneshort
   4664 EA                 2024 	mov	a,r2
   4665 B5 06 0F           2025 	cjne	a,ar6,00126$
   4668 EB                 2026 	mov	a,r3
   4669 B5 07 0B           2027 	cjne	a,ar7,00126$
   466C EC                 2028 	mov	a,r4
   466D B5 00 07           2029 	cjne	a,ar0,00126$
   4670 ED                 2030 	mov	a,r5
   4671 B5 01 03           2031 	cjne	a,ar1,00126$
   4674 02 47 50           2032 	ljmp	00116$
   4677                    2033 00126$:
                           2034 ;	genPointerSet
                           2035 ;     genFarPointerSet
   4677 90 06 72           2036 	mov	dptr,#_GPIO_set_outputs_file_name_3_6
   467A 74 2E              2037 	mov	a,#0x2E
   467C F0                 2038 	movx	@dptr,a
                           2039 ;	genPointerSet
                           2040 ;     genFarPointerSet
   467D 90 06 73           2041 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0001)
   4680 74 2E              2042 	mov	a,#0x2E
   4682 F0                 2043 	movx	@dptr,a
                           2044 ;	genPointerSet
                           2045 ;     genFarPointerSet
   4683 90 06 74           2046 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0002)
   4686 74 2F              2047 	mov	a,#0x2F
   4688 F0                 2048 	movx	@dptr,a
                           2049 ;	genPointerSet
                           2050 ;     genFarPointerSet
   4689 90 06 75           2051 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0003)
   468C 74 64              2052 	mov	a,#0x64
   468E F0                 2053 	movx	@dptr,a
                           2054 ;	genPointerSet
                           2055 ;     genFarPointerSet
   468F 90 06 76           2056 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0004)
   4692 74 72              2057 	mov	a,#0x72
   4694 F0                 2058 	movx	@dptr,a
                           2059 ;	genPointerSet
                           2060 ;     genFarPointerSet
   4695 90 06 77           2061 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0005)
   4698 74 69              2062 	mov	a,#0x69
   469A F0                 2063 	movx	@dptr,a
                           2064 ;	genPointerSet
                           2065 ;     genFarPointerSet
   469B 90 06 78           2066 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0006)
   469E 74 76              2067 	mov	a,#0x76
   46A0 F0                 2068 	movx	@dptr,a
                           2069 ;	genPointerSet
                           2070 ;     genFarPointerSet
   46A1 90 06 79           2071 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0007)
   46A4 74 65              2072 	mov	a,#0x65
   46A6 F0                 2073 	movx	@dptr,a
                           2074 ;	genPointerSet
                           2075 ;     genFarPointerSet
   46A7 90 06 7A           2076 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0008)
   46AA 74 72              2077 	mov	a,#0x72
   46AC F0                 2078 	movx	@dptr,a
                           2079 ;	genPointerSet
                           2080 ;     genFarPointerSet
   46AD 90 06 7B           2081 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0009)
   46B0 74 73              2082 	mov	a,#0x73
   46B2 F0                 2083 	movx	@dptr,a
                           2084 ;	genPointerSet
                           2085 ;     genFarPointerSet
   46B3 90 06 7C           2086 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000a)
   46B6 74 2F              2087 	mov	a,#0x2F
   46B8 F0                 2088 	movx	@dptr,a
                           2089 ;	genPointerSet
                           2090 ;     genFarPointerSet
   46B9 90 06 7D           2091 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000b)
   46BC 74 43              2092 	mov	a,#0x43
   46BE F0                 2093 	movx	@dptr,a
                           2094 ;	genPointerSet
                           2095 ;     genFarPointerSet
   46BF 90 06 7E           2096 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000c)
   46C2 74 6F              2097 	mov	a,#0x6F
   46C4 F0                 2098 	movx	@dptr,a
                           2099 ;	genPointerSet
                           2100 ;     genFarPointerSet
   46C5 90 06 7F           2101 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000d)
   46C8 74 72              2102 	mov	a,#0x72
   46CA F0                 2103 	movx	@dptr,a
                           2104 ;	genPointerSet
                           2105 ;     genFarPointerSet
   46CB 90 06 80           2106 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000e)
   46CE 74 65              2107 	mov	a,#0x65
   46D0 F0                 2108 	movx	@dptr,a
                           2109 ;	genPointerSet
                           2110 ;     genFarPointerSet
   46D1 90 06 81           2111 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000f)
   46D4 74 47              2112 	mov	a,#0x47
   46D6 F0                 2113 	movx	@dptr,a
                           2114 ;	genPointerSet
                           2115 ;     genFarPointerSet
   46D7 90 06 82           2116 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0010)
   46DA 74 50              2117 	mov	a,#0x50
   46DC F0                 2118 	movx	@dptr,a
                           2119 ;	genPointerSet
                           2120 ;     genFarPointerSet
   46DD 90 06 83           2121 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0011)
   46E0 74 49              2122 	mov	a,#0x49
   46E2 F0                 2123 	movx	@dptr,a
                           2124 ;	genPointerSet
                           2125 ;     genFarPointerSet
   46E3 90 06 84           2126 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0012)
   46E6 74 4F              2127 	mov	a,#0x4F
   46E8 F0                 2128 	movx	@dptr,a
                           2129 ;	genPointerSet
                           2130 ;     genFarPointerSet
   46E9 90 06 85           2131 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0013)
   46EC 74 2F              2132 	mov	a,#0x2F
   46EE F0                 2133 	movx	@dptr,a
                           2134 ;	genPointerSet
                           2135 ;     genFarPointerSet
   46EF 90 06 86           2136 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0014)
   46F2 74 63              2137 	mov	a,#0x63
   46F4 F0                 2138 	movx	@dptr,a
                           2139 ;	genPointerSet
                           2140 ;     genFarPointerSet
   46F5 90 06 87           2141 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0015)
   46F8 74 6F              2142 	mov	a,#0x6F
   46FA F0                 2143 	movx	@dptr,a
                           2144 ;	genPointerSet
                           2145 ;     genFarPointerSet
   46FB 90 06 88           2146 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0016)
   46FE 74 72              2147 	mov	a,#0x72
   4700 F0                 2148 	movx	@dptr,a
                           2149 ;	genPointerSet
                           2150 ;     genFarPointerSet
   4701 90 06 89           2151 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0017)
   4704 74 65              2152 	mov	a,#0x65
   4706 F0                 2153 	movx	@dptr,a
                           2154 ;	genPointerSet
                           2155 ;     genFarPointerSet
   4707 90 06 8A           2156 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0018)
   470A 74 5F              2157 	mov	a,#0x5F
   470C F0                 2158 	movx	@dptr,a
                           2159 ;	genPointerSet
                           2160 ;     genFarPointerSet
   470D 90 06 8B           2161 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0019)
   4710 74 67              2162 	mov	a,#0x67
   4712 F0                 2163 	movx	@dptr,a
                           2164 ;	genPointerSet
                           2165 ;     genFarPointerSet
   4713 90 06 8C           2166 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001a)
   4716 74 70              2167 	mov	a,#0x70
   4718 F0                 2168 	movx	@dptr,a
                           2169 ;	genPointerSet
                           2170 ;     genFarPointerSet
   4719 90 06 8D           2171 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001b)
   471C 74 69              2172 	mov	a,#0x69
   471E F0                 2173 	movx	@dptr,a
                           2174 ;	genPointerSet
                           2175 ;     genFarPointerSet
   471F 90 06 8E           2176 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001c)
   4722 74 6F              2177 	mov	a,#0x6F
   4724 F0                 2178 	movx	@dptr,a
                           2179 ;	genPointerSet
                           2180 ;     genFarPointerSet
   4725 90 06 8F           2181 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001d)
   4728 74 2E              2182 	mov	a,#0x2E
   472A F0                 2183 	movx	@dptr,a
                           2184 ;	genPointerSet
                           2185 ;     genFarPointerSet
   472B 90 06 90           2186 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001e)
   472E 74 63              2187 	mov	a,#0x63
   4730 F0                 2188 	movx	@dptr,a
                           2189 ;	genPointerSet
                           2190 ;     genFarPointerSet
   4731 90 06 91           2191 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001f)
   4734 74 00              2192 	mov	a,#0x00
   4736 F0                 2193 	movx	@dptr,a
                           2194 ;	genAssign
   4737 90 00 2E           2195 	mov	dptr,#_HAL_assert_fail_PARM_2
   473A 74 91              2196 	mov	a,#0x91
   473C F0                 2197 	movx	@dptr,a
   473D E4                 2198 	clr	a
   473E A3                 2199 	inc	dptr
   473F F0                 2200 	movx	@dptr,a
   4740 A3                 2201 	inc	dptr
   4741 F0                 2202 	movx	@dptr,a
   4742 A3                 2203 	inc	dptr
   4743 F0                 2204 	movx	@dptr,a
                           2205 ;	genCall
   4744 75 82 72           2206 	mov	dpl,#_GPIO_set_outputs_file_name_3_6
   4747 75 83 06           2207 	mov	dph,#(_GPIO_set_outputs_file_name_3_6 >> 8)
   474A 75 F0 00           2208 	mov	b,#0x00
   474D 12 08 16           2209 	lcall	_HAL_assert_fail
   4750                    2210 00116$:
                    094A   2211 	C$core_gpio.c$146$1$1 ==.
                    094A   2212 	XG$GPIO_set_outputs$0$0 ==.
   4750 22                 2213 	ret
                           2214 ;------------------------------------------------------------
                           2215 ;Allocation info for local variables in function 'GPIO_get_inputs'
                           2216 ;------------------------------------------------------------
                           2217 ;this_gpio                 Allocated with name '_GPIO_get_inputs_this_gpio_1_1'
                           2218 ;gpio_in                   Allocated with name '_GPIO_get_inputs_gpio_in_1_1'
                           2219 ;file_name                 Allocated with name '_GPIO_get_inputs_file_name_4_4'
                           2220 ;------------------------------------------------------------
                    094B   2221 	G$GPIO_get_inputs$0$0 ==.
                    094B   2222 	C$core_gpio.c$152$1$1 ==.
                           2223 ;	../drivers/CoreGPIO/core_gpio.c:152: uint32_t GPIO_get_inputs
                           2224 ;	-----------------------------------------
                           2225 ;	 function GPIO_get_inputs
                           2226 ;	-----------------------------------------
   4751                    2227 _GPIO_get_inputs:
                           2228 ;	genReceive
   4751 AA F0              2229 	mov	r2,b
   4753 AB 83              2230 	mov	r3,dph
   4755 E5 82              2231 	mov	a,dpl
   4757 90 06 92           2232 	mov	dptr,#_GPIO_get_inputs_this_gpio_1_1
   475A F0                 2233 	movx	@dptr,a
   475B A3                 2234 	inc	dptr
   475C EB                 2235 	mov	a,r3
   475D F0                 2236 	movx	@dptr,a
   475E A3                 2237 	inc	dptr
   475F EA                 2238 	mov	a,r2
   4760 F0                 2239 	movx	@dptr,a
                    095B   2240 	C$core_gpio.c$157$1$1 ==.
                           2241 ;	../drivers/CoreGPIO/core_gpio.c:157: uint32_t gpio_in = 0;
                           2242 ;	genAssign
   4761 90 06 95           2243 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4764 E4                 2244 	clr	a
   4765 F0                 2245 	movx	@dptr,a
   4766 A3                 2246 	inc	dptr
   4767 F0                 2247 	movx	@dptr,a
   4768 A3                 2248 	inc	dptr
   4769 F0                 2249 	movx	@dptr,a
   476A A3                 2250 	inc	dptr
   476B F0                 2251 	movx	@dptr,a
                    0966   2252 	C$core_gpio.c$159$1$1 ==.
                           2253 ;	../drivers/CoreGPIO/core_gpio.c:159: switch( this_gpio->apb_bus_width )
                           2254 ;	genAssign
   476C 90 06 92           2255 	mov	dptr,#_GPIO_get_inputs_this_gpio_1_1
   476F E0                 2256 	movx	a,@dptr
   4770 FA                 2257 	mov	r2,a
   4771 A3                 2258 	inc	dptr
   4772 E0                 2259 	movx	a,@dptr
   4773 FB                 2260 	mov	r3,a
   4774 A3                 2261 	inc	dptr
   4775 E0                 2262 	movx	a,@dptr
   4776 FC                 2263 	mov	r4,a
                           2264 ;	genPlus
                           2265 ;	genPlusIncr
   4777 74 02              2266 	mov	a,#0x02
   4779 25 02              2267 	add	a,ar2
   477B FD                 2268 	mov	r5,a
   477C 74 00              2269 	mov	a,#0x00
   477E 35 03              2270 	addc	a,ar3
   4780 FE                 2271 	mov	r6,a
   4781 8C 07              2272 	mov	ar7,r4
                           2273 ;	genPointerGet
                           2274 ;	genGenPointerGet
   4783 8D 82              2275 	mov	dpl,r5
   4785 8E 83              2276 	mov	dph,r6
   4787 8F F0              2277 	mov	b,r7
   4789 12 5C 8D           2278 	lcall	__gptrget
   478C FD                 2279 	mov	r5,a
                           2280 ;	genCmpEq
                           2281 ;	gencjneshort
   478D BD 00 03           2282 	cjne	r5,#0x00,00116$
   4790 02 48 10           2283 	ljmp	00103$
   4793                    2284 00116$:
                           2285 ;	genCmpEq
                           2286 ;	gencjneshort
   4793 BD 01 03           2287 	cjne	r5,#0x01,00117$
   4796 02 47 D9           2288 	ljmp	00102$
   4799                    2289 00117$:
                           2290 ;	genCmpEq
                           2291 ;	gencjneshort
   4799 BD 02 02           2292 	cjne	r5,#0x02,00118$
   479C 80 03              2293 	sjmp	00119$
   479E                    2294 00118$:
   479E 02 48 97           2295 	ljmp	00107$
   47A1                    2296 00119$:
                    099B   2297 	C$core_gpio.c$162$2$2 ==.
                           2298 ;	../drivers/CoreGPIO/core_gpio.c:162: gpio_in = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_IN );
                           2299 ;	genPointerGet
                           2300 ;	genGenPointerGet
   47A1 8A 82              2301 	mov	dpl,r2
   47A3 8B 83              2302 	mov	dph,r3
   47A5 8C F0              2303 	mov	b,r4
   47A7 12 5C 8D           2304 	lcall	__gptrget
   47AA FD                 2305 	mov	r5,a
   47AB A3                 2306 	inc	dptr
   47AC 12 5C 8D           2307 	lcall	__gptrget
   47AF FE                 2308 	mov	r6,a
                           2309 ;	genPlus
                           2310 ;	genPlusIncr
   47B0 74 90              2311 	mov	a,#0x90
   47B2 25 05              2312 	add	a,ar5
   47B4 FD                 2313 	mov	r5,a
   47B5 74 00              2314 	mov	a,#0x00
   47B7 35 06              2315 	addc	a,ar6
   47B9 FE                 2316 	mov	r6,a
                           2317 ;	genCall
   47BA 8D 82              2318 	mov	dpl,r5
   47BC 8E 83              2319 	mov	dph,r6
   47BE 12 08 76           2320 	lcall	_HW_get_32bit_reg
   47C1 AD 82              2321 	mov	r5,dpl
   47C3 AE 83              2322 	mov	r6,dph
   47C5 AF F0              2323 	mov	r7,b
   47C7 F8                 2324 	mov	r0,a
                           2325 ;	genAssign
   47C8 90 06 95           2326 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   47CB ED                 2327 	mov	a,r5
   47CC F0                 2328 	movx	@dptr,a
   47CD A3                 2329 	inc	dptr
   47CE EE                 2330 	mov	a,r6
   47CF F0                 2331 	movx	@dptr,a
   47D0 A3                 2332 	inc	dptr
   47D1 EF                 2333 	mov	a,r7
   47D2 F0                 2334 	movx	@dptr,a
   47D3 A3                 2335 	inc	dptr
   47D4 E8                 2336 	mov	a,r0
   47D5 F0                 2337 	movx	@dptr,a
                    09D0   2338 	C$core_gpio.c$163$2$2 ==.
                           2339 ;	../drivers/CoreGPIO/core_gpio.c:163: break;
   47D6 02 49 70           2340 	ljmp	00110$
                    09D3   2341 	C$core_gpio.c$165$2$2 ==.
                           2342 ;	../drivers/CoreGPIO/core_gpio.c:165: case GPIO_APB_16_BITS_BUS:
   47D9                    2343 00102$:
                    09D3   2344 	C$core_gpio.c$166$2$2 ==.
                           2345 ;	../drivers/CoreGPIO/core_gpio.c:166: gpio_in |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_IN0 );
                           2346 ;	genPointerGet
                           2347 ;	genGenPointerGet
   47D9 8A 82              2348 	mov	dpl,r2
   47DB 8B 83              2349 	mov	dph,r3
   47DD 8C F0              2350 	mov	b,r4
   47DF 12 5C 8D           2351 	lcall	__gptrget
   47E2 FD                 2352 	mov	r5,a
   47E3 A3                 2353 	inc	dptr
   47E4 12 5C 8D           2354 	lcall	__gptrget
   47E7 FE                 2355 	mov	r6,a
                           2356 ;	genPlus
                           2357 ;	genPlusIncr
   47E8 74 90              2358 	mov	a,#0x90
   47EA 25 05              2359 	add	a,ar5
   47EC FD                 2360 	mov	r5,a
   47ED 74 00              2361 	mov	a,#0x00
   47EF 35 06              2362 	addc	a,ar6
   47F1 FE                 2363 	mov	r6,a
                           2364 ;	genCall
   47F2 8D 82              2365 	mov	dpl,r5
   47F4 8E 83              2366 	mov	dph,r6
   47F6 12 08 B2           2367 	lcall	_HW_get_16bit_reg
   47F9 AD 82              2368 	mov	r5,dpl
   47FB AE 83              2369 	mov	r6,dph
                           2370 ;	genCast
   47FD 90 06 95           2371 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4800 ED                 2372 	mov	a,r5
   4801 F0                 2373 	movx	@dptr,a
   4802 A3                 2374 	inc	dptr
   4803 EE                 2375 	mov	a,r6
   4804 F0                 2376 	movx	@dptr,a
   4805 A3                 2377 	inc	dptr
   4806 74 00              2378 	mov	a,#0x00
   4808 F0                 2379 	movx	@dptr,a
   4809 A3                 2380 	inc	dptr
   480A 74 00              2381 	mov	a,#0x00
   480C F0                 2382 	movx	@dptr,a
                    0A07   2383 	C$core_gpio.c$168$2$2 ==.
                           2384 ;	../drivers/CoreGPIO/core_gpio.c:168: break;
   480D 02 49 70           2385 	ljmp	00110$
                    0A0A   2386 	C$core_gpio.c$170$2$2 ==.
                           2387 ;	../drivers/CoreGPIO/core_gpio.c:170: case GPIO_APB_8_BITS_BUS:
   4810                    2388 00103$:
                    0A0A   2389 	C$core_gpio.c$171$2$2 ==.
                           2390 ;	../drivers/CoreGPIO/core_gpio.c:171: gpio_in |= HAL_get_8bit_reg( this_gpio->base_addr, GPIO_IN0 );
                           2391 ;	genPointerGet
                           2392 ;	genGenPointerGet
   4810 8A 82              2393 	mov	dpl,r2
   4812 8B 83              2394 	mov	dph,r3
   4814 8C F0              2395 	mov	b,r4
   4816 12 5C 8D           2396 	lcall	__gptrget
   4819 FD                 2397 	mov	r5,a
   481A A3                 2398 	inc	dptr
   481B 12 5C 8D           2399 	lcall	__gptrget
   481E FE                 2400 	mov	r6,a
                           2401 ;	genPlus
                           2402 ;	genPlusIncr
   481F 74 90              2403 	mov	a,#0x90
   4821 25 05              2404 	add	a,ar5
   4823 FD                 2405 	mov	r5,a
   4824 74 00              2406 	mov	a,#0x00
   4826 35 06              2407 	addc	a,ar6
   4828 FE                 2408 	mov	r6,a
                           2409 ;	genCall
   4829 8D 82              2410 	mov	dpl,r5
   482B 8E 83              2411 	mov	dph,r6
   482D C0 02              2412 	push	ar2
   482F C0 03              2413 	push	ar3
   4831 C0 04              2414 	push	ar4
   4833 12 08 C7           2415 	lcall	_HW_get_8bit_reg
   4836 AD 82              2416 	mov	r5,dpl
   4838 D0 04              2417 	pop	ar4
   483A D0 03              2418 	pop	ar3
   483C D0 02              2419 	pop	ar2
                           2420 ;	genCast
   483E 7E 00              2421 	mov	r6,#0x00
   4840 7F 00              2422 	mov	r7,#0x00
   4842 78 00              2423 	mov	r0,#0x00
                    0A3E   2424 	C$core_gpio.c$172$2$2 ==.
                           2425 ;	../drivers/CoreGPIO/core_gpio.c:172: gpio_in |= (HAL_get_8bit_reg( this_gpio->base_addr, GPIO_IN1 ) << 8);
                           2426 ;	genPointerGet
                           2427 ;	genGenPointerGet
   4844 8A 82              2428 	mov	dpl,r2
   4846 8B 83              2429 	mov	dph,r3
   4848 8C F0              2430 	mov	b,r4
   484A 12 5C 8D           2431 	lcall	__gptrget
   484D FA                 2432 	mov	r2,a
   484E A3                 2433 	inc	dptr
   484F 12 5C 8D           2434 	lcall	__gptrget
   4852 FB                 2435 	mov	r3,a
                           2436 ;	genPlus
                           2437 ;	genPlusIncr
   4853 74 94              2438 	mov	a,#0x94
   4855 25 02              2439 	add	a,ar2
   4857 FA                 2440 	mov	r2,a
   4858 74 00              2441 	mov	a,#0x00
   485A 35 03              2442 	addc	a,ar3
   485C FB                 2443 	mov	r3,a
                           2444 ;	genCall
   485D 8A 82              2445 	mov	dpl,r2
   485F 8B 83              2446 	mov	dph,r3
   4861 C0 05              2447 	push	ar5
   4863 C0 06              2448 	push	ar6
   4865 C0 07              2449 	push	ar7
   4867 C0 00              2450 	push	ar0
   4869 12 08 C7           2451 	lcall	_HW_get_8bit_reg
   486C AA 82              2452 	mov	r2,dpl
   486E D0 00              2453 	pop	ar0
   4870 D0 07              2454 	pop	ar7
   4872 D0 06              2455 	pop	ar6
   4874 D0 05              2456 	pop	ar5
                           2457 ;	genCast
   4876 7B 00              2458 	mov	r3,#0x00
                           2459 ;	genLeftShift
                           2460 ;	genLeftShiftLiteral
                           2461 ;	genlshTwo
   4878 8A 03              2462 	mov	ar3,r2
   487A 7A 00              2463 	mov	r2,#0x00
                           2464 ;	genCast
   487C EB                 2465 	mov	a,r3
   487D 33                 2466 	rlc	a
   487E 95 E0              2467 	subb	a,acc
   4880 FC                 2468 	mov	r4,a
   4881 F9                 2469 	mov	r1,a
                           2470 ;	genOr
   4882 90 06 95           2471 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4885 EA                 2472 	mov	a,r2
   4886 4D                 2473 	orl	a,r5
   4887 F0                 2474 	movx	@dptr,a
   4888 EB                 2475 	mov	a,r3
   4889 4E                 2476 	orl	a,r6
   488A A3                 2477 	inc	dptr
   488B F0                 2478 	movx	@dptr,a
   488C EC                 2479 	mov	a,r4
   488D 4F                 2480 	orl	a,r7
   488E A3                 2481 	inc	dptr
   488F F0                 2482 	movx	@dptr,a
   4890 E9                 2483 	mov	a,r1
   4891 48                 2484 	orl	a,r0
   4892 A3                 2485 	inc	dptr
   4893 F0                 2486 	movx	@dptr,a
                    0A8E   2487 	C$core_gpio.c$175$2$2 ==.
                           2488 ;	../drivers/CoreGPIO/core_gpio.c:175: break;
   4894 02 49 70           2489 	ljmp	00110$
                    0A91   2490 	C$core_gpio.c$178$2$2 ==.
                           2491 ;	../drivers/CoreGPIO/core_gpio.c:178: HAL_ASSERT(0);
   4897                    2492 00107$:
                           2493 ;	genPointerSet
                           2494 ;     genFarPointerSet
   4897 90 06 99           2495 	mov	dptr,#_GPIO_get_inputs_file_name_4_4
   489A 74 2E              2496 	mov	a,#0x2E
   489C F0                 2497 	movx	@dptr,a
                           2498 ;	genPointerSet
                           2499 ;     genFarPointerSet
   489D 90 06 9A           2500 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0001)
   48A0 74 2E              2501 	mov	a,#0x2E
   48A2 F0                 2502 	movx	@dptr,a
                           2503 ;	genPointerSet
                           2504 ;     genFarPointerSet
   48A3 90 06 9B           2505 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0002)
   48A6 74 2F              2506 	mov	a,#0x2F
   48A8 F0                 2507 	movx	@dptr,a
                           2508 ;	genPointerSet
                           2509 ;     genFarPointerSet
   48A9 90 06 9C           2510 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0003)
   48AC 74 64              2511 	mov	a,#0x64
   48AE F0                 2512 	movx	@dptr,a
                           2513 ;	genPointerSet
                           2514 ;     genFarPointerSet
   48AF 90 06 9D           2515 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0004)
   48B2 74 72              2516 	mov	a,#0x72
   48B4 F0                 2517 	movx	@dptr,a
                           2518 ;	genPointerSet
                           2519 ;     genFarPointerSet
   48B5 90 06 9E           2520 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0005)
   48B8 74 69              2521 	mov	a,#0x69
   48BA F0                 2522 	movx	@dptr,a
                           2523 ;	genPointerSet
                           2524 ;     genFarPointerSet
   48BB 90 06 9F           2525 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0006)
   48BE 74 76              2526 	mov	a,#0x76
   48C0 F0                 2527 	movx	@dptr,a
                           2528 ;	genPointerSet
                           2529 ;     genFarPointerSet
   48C1 90 06 A0           2530 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0007)
   48C4 74 65              2531 	mov	a,#0x65
   48C6 F0                 2532 	movx	@dptr,a
                           2533 ;	genPointerSet
                           2534 ;     genFarPointerSet
   48C7 90 06 A1           2535 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0008)
   48CA 74 72              2536 	mov	a,#0x72
   48CC F0                 2537 	movx	@dptr,a
                           2538 ;	genPointerSet
                           2539 ;     genFarPointerSet
   48CD 90 06 A2           2540 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0009)
   48D0 74 73              2541 	mov	a,#0x73
   48D2 F0                 2542 	movx	@dptr,a
                           2543 ;	genPointerSet
                           2544 ;     genFarPointerSet
   48D3 90 06 A3           2545 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000a)
   48D6 74 2F              2546 	mov	a,#0x2F
   48D8 F0                 2547 	movx	@dptr,a
                           2548 ;	genPointerSet
                           2549 ;     genFarPointerSet
   48D9 90 06 A4           2550 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000b)
   48DC 74 43              2551 	mov	a,#0x43
   48DE F0                 2552 	movx	@dptr,a
                           2553 ;	genPointerSet
                           2554 ;     genFarPointerSet
   48DF 90 06 A5           2555 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000c)
   48E2 74 6F              2556 	mov	a,#0x6F
   48E4 F0                 2557 	movx	@dptr,a
                           2558 ;	genPointerSet
                           2559 ;     genFarPointerSet
   48E5 90 06 A6           2560 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000d)
   48E8 74 72              2561 	mov	a,#0x72
   48EA F0                 2562 	movx	@dptr,a
                           2563 ;	genPointerSet
                           2564 ;     genFarPointerSet
   48EB 90 06 A7           2565 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000e)
   48EE 74 65              2566 	mov	a,#0x65
   48F0 F0                 2567 	movx	@dptr,a
                           2568 ;	genPointerSet
                           2569 ;     genFarPointerSet
   48F1 90 06 A8           2570 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000f)
   48F4 74 47              2571 	mov	a,#0x47
   48F6 F0                 2572 	movx	@dptr,a
                           2573 ;	genPointerSet
                           2574 ;     genFarPointerSet
   48F7 90 06 A9           2575 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0010)
   48FA 74 50              2576 	mov	a,#0x50
   48FC F0                 2577 	movx	@dptr,a
                           2578 ;	genPointerSet
                           2579 ;     genFarPointerSet
   48FD 90 06 AA           2580 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0011)
   4900 74 49              2581 	mov	a,#0x49
   4902 F0                 2582 	movx	@dptr,a
                           2583 ;	genPointerSet
                           2584 ;     genFarPointerSet
   4903 90 06 AB           2585 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0012)
   4906 74 4F              2586 	mov	a,#0x4F
   4908 F0                 2587 	movx	@dptr,a
                           2588 ;	genPointerSet
                           2589 ;     genFarPointerSet
   4909 90 06 AC           2590 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0013)
   490C 74 2F              2591 	mov	a,#0x2F
   490E F0                 2592 	movx	@dptr,a
                           2593 ;	genPointerSet
                           2594 ;     genFarPointerSet
   490F 90 06 AD           2595 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0014)
   4912 74 63              2596 	mov	a,#0x63
   4914 F0                 2597 	movx	@dptr,a
                           2598 ;	genPointerSet
                           2599 ;     genFarPointerSet
   4915 90 06 AE           2600 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0015)
   4918 74 6F              2601 	mov	a,#0x6F
   491A F0                 2602 	movx	@dptr,a
                           2603 ;	genPointerSet
                           2604 ;     genFarPointerSet
   491B 90 06 AF           2605 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0016)
   491E 74 72              2606 	mov	a,#0x72
   4920 F0                 2607 	movx	@dptr,a
                           2608 ;	genPointerSet
                           2609 ;     genFarPointerSet
   4921 90 06 B0           2610 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0017)
   4924 74 65              2611 	mov	a,#0x65
   4926 F0                 2612 	movx	@dptr,a
                           2613 ;	genPointerSet
                           2614 ;     genFarPointerSet
   4927 90 06 B1           2615 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0018)
   492A 74 5F              2616 	mov	a,#0x5F
   492C F0                 2617 	movx	@dptr,a
                           2618 ;	genPointerSet
                           2619 ;     genFarPointerSet
   492D 90 06 B2           2620 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0019)
   4930 74 67              2621 	mov	a,#0x67
   4932 F0                 2622 	movx	@dptr,a
                           2623 ;	genPointerSet
                           2624 ;     genFarPointerSet
   4933 90 06 B3           2625 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001a)
   4936 74 70              2626 	mov	a,#0x70
   4938 F0                 2627 	movx	@dptr,a
                           2628 ;	genPointerSet
                           2629 ;     genFarPointerSet
   4939 90 06 B4           2630 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001b)
   493C 74 69              2631 	mov	a,#0x69
   493E F0                 2632 	movx	@dptr,a
                           2633 ;	genPointerSet
                           2634 ;     genFarPointerSet
   493F 90 06 B5           2635 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001c)
   4942 74 6F              2636 	mov	a,#0x6F
   4944 F0                 2637 	movx	@dptr,a
                           2638 ;	genPointerSet
                           2639 ;     genFarPointerSet
   4945 90 06 B6           2640 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001d)
   4948 74 2E              2641 	mov	a,#0x2E
   494A F0                 2642 	movx	@dptr,a
                           2643 ;	genPointerSet
                           2644 ;     genFarPointerSet
   494B 90 06 B7           2645 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001e)
   494E 74 63              2646 	mov	a,#0x63
   4950 F0                 2647 	movx	@dptr,a
                           2648 ;	genPointerSet
                           2649 ;     genFarPointerSet
   4951 90 06 B8           2650 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001f)
   4954 74 00              2651 	mov	a,#0x00
   4956 F0                 2652 	movx	@dptr,a
                           2653 ;	genAssign
   4957 90 00 2E           2654 	mov	dptr,#_HAL_assert_fail_PARM_2
   495A 74 B2              2655 	mov	a,#0xB2
   495C F0                 2656 	movx	@dptr,a
   495D E4                 2657 	clr	a
   495E A3                 2658 	inc	dptr
   495F F0                 2659 	movx	@dptr,a
   4960 A3                 2660 	inc	dptr
   4961 F0                 2661 	movx	@dptr,a
   4962 A3                 2662 	inc	dptr
   4963 F0                 2663 	movx	@dptr,a
                           2664 ;	genCall
   4964 75 82 99           2665 	mov	dpl,#_GPIO_get_inputs_file_name_4_4
   4967 75 83 06           2666 	mov	dph,#(_GPIO_get_inputs_file_name_4_4 >> 8)
   496A 75 F0 00           2667 	mov	b,#0x00
   496D 12 08 16           2668 	lcall	_HAL_assert_fail
                    0B6A   2669 	C$core_gpio.c$180$1$1 ==.
                           2670 ;	../drivers/CoreGPIO/core_gpio.c:180: }
   4970                    2671 00110$:
                    0B6A   2672 	C$core_gpio.c$182$1$1 ==.
                           2673 ;	../drivers/CoreGPIO/core_gpio.c:182: return gpio_in;
                           2674 ;	genAssign
   4970 90 06 95           2675 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4973 E0                 2676 	movx	a,@dptr
   4974 FA                 2677 	mov	r2,a
   4975 A3                 2678 	inc	dptr
   4976 E0                 2679 	movx	a,@dptr
   4977 FB                 2680 	mov	r3,a
   4978 A3                 2681 	inc	dptr
   4979 E0                 2682 	movx	a,@dptr
   497A FC                 2683 	mov	r4,a
   497B A3                 2684 	inc	dptr
   497C E0                 2685 	movx	a,@dptr
   497D FD                 2686 	mov	r5,a
                           2687 ;	genRet
   497E 8A 82              2688 	mov	dpl,r2
   4980 8B 83              2689 	mov	dph,r3
   4982 8C F0              2690 	mov	b,r4
   4984 ED                 2691 	mov	a,r5
   4985                    2692 00111$:
                    0B7F   2693 	C$core_gpio.c$183$1$1 ==.
                    0B7F   2694 	XG$GPIO_get_inputs$0$0 ==.
   4985 22                 2695 	ret
                           2696 ;------------------------------------------------------------
                           2697 ;Allocation info for local variables in function 'GPIO_get_outputs'
                           2698 ;------------------------------------------------------------
                           2699 ;this_gpio                 Allocated with name '_GPIO_get_outputs_this_gpio_1_1'
                           2700 ;gpio_out                  Allocated with name '_GPIO_get_outputs_gpio_out_1_1'
                           2701 ;file_name                 Allocated with name '_GPIO_get_outputs_file_name_4_4'
                           2702 ;------------------------------------------------------------
                    0B80   2703 	G$GPIO_get_outputs$0$0 ==.
                    0B80   2704 	C$core_gpio.c$189$1$1 ==.
                           2705 ;	../drivers/CoreGPIO/core_gpio.c:189: uint32_t GPIO_get_outputs
                           2706 ;	-----------------------------------------
                           2707 ;	 function GPIO_get_outputs
                           2708 ;	-----------------------------------------
   4986                    2709 _GPIO_get_outputs:
                           2710 ;	genReceive
   4986 AA F0              2711 	mov	r2,b
   4988 AB 83              2712 	mov	r3,dph
   498A E5 82              2713 	mov	a,dpl
   498C 90 06 B9           2714 	mov	dptr,#_GPIO_get_outputs_this_gpio_1_1
   498F F0                 2715 	movx	@dptr,a
   4990 A3                 2716 	inc	dptr
   4991 EB                 2717 	mov	a,r3
   4992 F0                 2718 	movx	@dptr,a
   4993 A3                 2719 	inc	dptr
   4994 EA                 2720 	mov	a,r2
   4995 F0                 2721 	movx	@dptr,a
                    0B90   2722 	C$core_gpio.c$194$1$1 ==.
                           2723 ;	../drivers/CoreGPIO/core_gpio.c:194: uint32_t gpio_out = 0;
                           2724 ;	genAssign
   4996 90 06 BC           2725 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4999 E4                 2726 	clr	a
   499A F0                 2727 	movx	@dptr,a
   499B A3                 2728 	inc	dptr
   499C F0                 2729 	movx	@dptr,a
   499D A3                 2730 	inc	dptr
   499E F0                 2731 	movx	@dptr,a
   499F A3                 2732 	inc	dptr
   49A0 F0                 2733 	movx	@dptr,a
                    0B9B   2734 	C$core_gpio.c$196$1$1 ==.
                           2735 ;	../drivers/CoreGPIO/core_gpio.c:196: switch( this_gpio->apb_bus_width )
                           2736 ;	genAssign
   49A1 90 06 B9           2737 	mov	dptr,#_GPIO_get_outputs_this_gpio_1_1
   49A4 E0                 2738 	movx	a,@dptr
   49A5 FA                 2739 	mov	r2,a
   49A6 A3                 2740 	inc	dptr
   49A7 E0                 2741 	movx	a,@dptr
   49A8 FB                 2742 	mov	r3,a
   49A9 A3                 2743 	inc	dptr
   49AA E0                 2744 	movx	a,@dptr
   49AB FC                 2745 	mov	r4,a
                           2746 ;	genPlus
                           2747 ;	genPlusIncr
   49AC 74 02              2748 	mov	a,#0x02
   49AE 25 02              2749 	add	a,ar2
   49B0 FD                 2750 	mov	r5,a
   49B1 74 00              2751 	mov	a,#0x00
   49B3 35 03              2752 	addc	a,ar3
   49B5 FE                 2753 	mov	r6,a
   49B6 8C 07              2754 	mov	ar7,r4
                           2755 ;	genPointerGet
                           2756 ;	genGenPointerGet
   49B8 8D 82              2757 	mov	dpl,r5
   49BA 8E 83              2758 	mov	dph,r6
   49BC 8F F0              2759 	mov	b,r7
   49BE 12 5C 8D           2760 	lcall	__gptrget
   49C1 FD                 2761 	mov	r5,a
                           2762 ;	genCmpEq
                           2763 ;	gencjneshort
   49C2 BD 00 03           2764 	cjne	r5,#0x00,00116$
   49C5 02 4A 45           2765 	ljmp	00103$
   49C8                    2766 00116$:
                           2767 ;	genCmpEq
                           2768 ;	gencjneshort
   49C8 BD 01 03           2769 	cjne	r5,#0x01,00117$
   49CB 02 4A 0E           2770 	ljmp	00102$
   49CE                    2771 00117$:
                           2772 ;	genCmpEq
                           2773 ;	gencjneshort
   49CE BD 02 02           2774 	cjne	r5,#0x02,00118$
   49D1 80 03              2775 	sjmp	00119$
   49D3                    2776 00118$:
   49D3 02 4A CA           2777 	ljmp	00107$
   49D6                    2778 00119$:
                    0BD0   2779 	C$core_gpio.c$199$2$2 ==.
                           2780 ;	../drivers/CoreGPIO/core_gpio.c:199: gpio_out = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT );
                           2781 ;	genPointerGet
                           2782 ;	genGenPointerGet
   49D6 8A 82              2783 	mov	dpl,r2
   49D8 8B 83              2784 	mov	dph,r3
   49DA 8C F0              2785 	mov	b,r4
   49DC 12 5C 8D           2786 	lcall	__gptrget
   49DF FD                 2787 	mov	r5,a
   49E0 A3                 2788 	inc	dptr
   49E1 12 5C 8D           2789 	lcall	__gptrget
   49E4 FE                 2790 	mov	r6,a
                           2791 ;	genPlus
                           2792 ;	genPlusIncr
   49E5 74 A0              2793 	mov	a,#0xA0
   49E7 25 05              2794 	add	a,ar5
   49E9 FD                 2795 	mov	r5,a
   49EA 74 00              2796 	mov	a,#0x00
   49EC 35 06              2797 	addc	a,ar6
   49EE FE                 2798 	mov	r6,a
                           2799 ;	genCall
   49EF 8D 82              2800 	mov	dpl,r5
   49F1 8E 83              2801 	mov	dph,r6
   49F3 12 08 76           2802 	lcall	_HW_get_32bit_reg
   49F6 AD 82              2803 	mov	r5,dpl
   49F8 AE 83              2804 	mov	r6,dph
   49FA AF F0              2805 	mov	r7,b
   49FC F8                 2806 	mov	r0,a
                           2807 ;	genAssign
   49FD 90 06 BC           2808 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4A00 ED                 2809 	mov	a,r5
   4A01 F0                 2810 	movx	@dptr,a
   4A02 A3                 2811 	inc	dptr
   4A03 EE                 2812 	mov	a,r6
   4A04 F0                 2813 	movx	@dptr,a
   4A05 A3                 2814 	inc	dptr
   4A06 EF                 2815 	mov	a,r7
   4A07 F0                 2816 	movx	@dptr,a
   4A08 A3                 2817 	inc	dptr
   4A09 E8                 2818 	mov	a,r0
   4A0A F0                 2819 	movx	@dptr,a
                    0C05   2820 	C$core_gpio.c$200$2$2 ==.
                           2821 ;	../drivers/CoreGPIO/core_gpio.c:200: break;
   4A0B 02 4B A3           2822 	ljmp	00110$
                    0C08   2823 	C$core_gpio.c$202$2$2 ==.
                           2824 ;	../drivers/CoreGPIO/core_gpio.c:202: case GPIO_APB_16_BITS_BUS:
   4A0E                    2825 00102$:
                    0C08   2826 	C$core_gpio.c$203$2$2 ==.
                           2827 ;	../drivers/CoreGPIO/core_gpio.c:203: gpio_out |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT0 );
                           2828 ;	genPointerGet
                           2829 ;	genGenPointerGet
   4A0E 8A 82              2830 	mov	dpl,r2
   4A10 8B 83              2831 	mov	dph,r3
   4A12 8C F0              2832 	mov	b,r4
   4A14 12 5C 8D           2833 	lcall	__gptrget
   4A17 FD                 2834 	mov	r5,a
   4A18 A3                 2835 	inc	dptr
   4A19 12 5C 8D           2836 	lcall	__gptrget
   4A1C FE                 2837 	mov	r6,a
                           2838 ;	genPlus
                           2839 ;	genPlusIncr
   4A1D 74 A0              2840 	mov	a,#0xA0
   4A1F 25 05              2841 	add	a,ar5
   4A21 FD                 2842 	mov	r5,a
   4A22 74 00              2843 	mov	a,#0x00
   4A24 35 06              2844 	addc	a,ar6
   4A26 FE                 2845 	mov	r6,a
                           2846 ;	genCall
   4A27 8D 82              2847 	mov	dpl,r5
   4A29 8E 83              2848 	mov	dph,r6
   4A2B 12 08 B2           2849 	lcall	_HW_get_16bit_reg
   4A2E AD 82              2850 	mov	r5,dpl
   4A30 AE 83              2851 	mov	r6,dph
                           2852 ;	genCast
   4A32 90 06 BC           2853 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4A35 ED                 2854 	mov	a,r5
   4A36 F0                 2855 	movx	@dptr,a
   4A37 A3                 2856 	inc	dptr
   4A38 EE                 2857 	mov	a,r6
   4A39 F0                 2858 	movx	@dptr,a
   4A3A A3                 2859 	inc	dptr
   4A3B 74 00              2860 	mov	a,#0x00
   4A3D F0                 2861 	movx	@dptr,a
   4A3E A3                 2862 	inc	dptr
   4A3F 74 00              2863 	mov	a,#0x00
   4A41 F0                 2864 	movx	@dptr,a
                    0C3C   2865 	C$core_gpio.c$205$2$2 ==.
                           2866 ;	../drivers/CoreGPIO/core_gpio.c:205: break;
   4A42 02 4B A3           2867 	ljmp	00110$
                    0C3F   2868 	C$core_gpio.c$207$2$2 ==.
                           2869 ;	../drivers/CoreGPIO/core_gpio.c:207: case GPIO_APB_8_BITS_BUS:
   4A45                    2870 00103$:
                    0C3F   2871 	C$core_gpio.c$208$2$2 ==.
                           2872 ;	../drivers/CoreGPIO/core_gpio.c:208: gpio_out |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT0 );
                           2873 ;	genPointerGet
                           2874 ;	genGenPointerGet
   4A45 8A 82              2875 	mov	dpl,r2
   4A47 8B 83              2876 	mov	dph,r3
   4A49 8C F0              2877 	mov	b,r4
   4A4B 12 5C 8D           2878 	lcall	__gptrget
   4A4E FD                 2879 	mov	r5,a
   4A4F A3                 2880 	inc	dptr
   4A50 12 5C 8D           2881 	lcall	__gptrget
   4A53 FE                 2882 	mov	r6,a
                           2883 ;	genPlus
                           2884 ;	genPlusIncr
   4A54 74 A0              2885 	mov	a,#0xA0
   4A56 25 05              2886 	add	a,ar5
   4A58 FD                 2887 	mov	r5,a
   4A59 74 00              2888 	mov	a,#0x00
   4A5B 35 06              2889 	addc	a,ar6
   4A5D FE                 2890 	mov	r6,a
                           2891 ;	genCall
   4A5E 8D 82              2892 	mov	dpl,r5
   4A60 8E 83              2893 	mov	dph,r6
   4A62 C0 02              2894 	push	ar2
   4A64 C0 03              2895 	push	ar3
   4A66 C0 04              2896 	push	ar4
   4A68 12 08 B2           2897 	lcall	_HW_get_16bit_reg
   4A6B AD 82              2898 	mov	r5,dpl
   4A6D AE 83              2899 	mov	r6,dph
   4A6F D0 04              2900 	pop	ar4
   4A71 D0 03              2901 	pop	ar3
   4A73 D0 02              2902 	pop	ar2
                           2903 ;	genCast
   4A75 7F 00              2904 	mov	r7,#0x00
   4A77 78 00              2905 	mov	r0,#0x00
                    0C73   2906 	C$core_gpio.c$209$2$2 ==.
                           2907 ;	../drivers/CoreGPIO/core_gpio.c:209: gpio_out |= (HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT1 ) << 8);
                           2908 ;	genPointerGet
                           2909 ;	genGenPointerGet
   4A79 8A 82              2910 	mov	dpl,r2
   4A7B 8B 83              2911 	mov	dph,r3
   4A7D 8C F0              2912 	mov	b,r4
   4A7F 12 5C 8D           2913 	lcall	__gptrget
   4A82 FA                 2914 	mov	r2,a
   4A83 A3                 2915 	inc	dptr
   4A84 12 5C 8D           2916 	lcall	__gptrget
   4A87 FB                 2917 	mov	r3,a
                           2918 ;	genPlus
                           2919 ;	genPlusIncr
   4A88 74 A4              2920 	mov	a,#0xA4
   4A8A 25 02              2921 	add	a,ar2
   4A8C FA                 2922 	mov	r2,a
   4A8D 74 00              2923 	mov	a,#0x00
   4A8F 35 03              2924 	addc	a,ar3
   4A91 FB                 2925 	mov	r3,a
                           2926 ;	genCall
   4A92 8A 82              2927 	mov	dpl,r2
   4A94 8B 83              2928 	mov	dph,r3
   4A96 C0 05              2929 	push	ar5
   4A98 C0 06              2930 	push	ar6
   4A9A C0 07              2931 	push	ar7
   4A9C C0 00              2932 	push	ar0
   4A9E 12 08 B2           2933 	lcall	_HW_get_16bit_reg
   4AA1 AA 82              2934 	mov	r2,dpl
   4AA3 AB 83              2935 	mov	r3,dph
   4AA5 D0 00              2936 	pop	ar0
   4AA7 D0 07              2937 	pop	ar7
   4AA9 D0 06              2938 	pop	ar6
   4AAB D0 05              2939 	pop	ar5
                           2940 ;	genLeftShift
                           2941 ;	genLeftShiftLiteral
                           2942 ;	genlshTwo
   4AAD 8A 03              2943 	mov	ar3,r2
   4AAF 7A 00              2944 	mov	r2,#0x00
                           2945 ;	genCast
   4AB1 7C 00              2946 	mov	r4,#0x00
   4AB3 79 00              2947 	mov	r1,#0x00
                           2948 ;	genOr
   4AB5 90 06 BC           2949 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4AB8 EA                 2950 	mov	a,r2
   4AB9 4D                 2951 	orl	a,r5
   4ABA F0                 2952 	movx	@dptr,a
   4ABB EB                 2953 	mov	a,r3
   4ABC 4E                 2954 	orl	a,r6
   4ABD A3                 2955 	inc	dptr
   4ABE F0                 2956 	movx	@dptr,a
   4ABF EC                 2957 	mov	a,r4
   4AC0 4F                 2958 	orl	a,r7
   4AC1 A3                 2959 	inc	dptr
   4AC2 F0                 2960 	movx	@dptr,a
   4AC3 E9                 2961 	mov	a,r1
   4AC4 48                 2962 	orl	a,r0
   4AC5 A3                 2963 	inc	dptr
   4AC6 F0                 2964 	movx	@dptr,a
                    0CC1   2965 	C$core_gpio.c$212$2$2 ==.
                           2966 ;	../drivers/CoreGPIO/core_gpio.c:212: break;
   4AC7 02 4B A3           2967 	ljmp	00110$
                    0CC4   2968 	C$core_gpio.c$215$2$2 ==.
                           2969 ;	../drivers/CoreGPIO/core_gpio.c:215: HAL_ASSERT(0);
   4ACA                    2970 00107$:
                           2971 ;	genPointerSet
                           2972 ;     genFarPointerSet
   4ACA 90 06 C0           2973 	mov	dptr,#_GPIO_get_outputs_file_name_4_4
   4ACD 74 2E              2974 	mov	a,#0x2E
   4ACF F0                 2975 	movx	@dptr,a
                           2976 ;	genPointerSet
                           2977 ;     genFarPointerSet
   4AD0 90 06 C1           2978 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0001)
   4AD3 74 2E              2979 	mov	a,#0x2E
   4AD5 F0                 2980 	movx	@dptr,a
                           2981 ;	genPointerSet
                           2982 ;     genFarPointerSet
   4AD6 90 06 C2           2983 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0002)
   4AD9 74 2F              2984 	mov	a,#0x2F
   4ADB F0                 2985 	movx	@dptr,a
                           2986 ;	genPointerSet
                           2987 ;     genFarPointerSet
   4ADC 90 06 C3           2988 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0003)
   4ADF 74 64              2989 	mov	a,#0x64
   4AE1 F0                 2990 	movx	@dptr,a
                           2991 ;	genPointerSet
                           2992 ;     genFarPointerSet
   4AE2 90 06 C4           2993 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0004)
   4AE5 74 72              2994 	mov	a,#0x72
   4AE7 F0                 2995 	movx	@dptr,a
                           2996 ;	genPointerSet
                           2997 ;     genFarPointerSet
   4AE8 90 06 C5           2998 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0005)
   4AEB 74 69              2999 	mov	a,#0x69
   4AED F0                 3000 	movx	@dptr,a
                           3001 ;	genPointerSet
                           3002 ;     genFarPointerSet
   4AEE 90 06 C6           3003 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0006)
   4AF1 74 76              3004 	mov	a,#0x76
   4AF3 F0                 3005 	movx	@dptr,a
                           3006 ;	genPointerSet
                           3007 ;     genFarPointerSet
   4AF4 90 06 C7           3008 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0007)
   4AF7 74 65              3009 	mov	a,#0x65
   4AF9 F0                 3010 	movx	@dptr,a
                           3011 ;	genPointerSet
                           3012 ;     genFarPointerSet
   4AFA 90 06 C8           3013 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0008)
   4AFD 74 72              3014 	mov	a,#0x72
   4AFF F0                 3015 	movx	@dptr,a
                           3016 ;	genPointerSet
                           3017 ;     genFarPointerSet
   4B00 90 06 C9           3018 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0009)
   4B03 74 73              3019 	mov	a,#0x73
   4B05 F0                 3020 	movx	@dptr,a
                           3021 ;	genPointerSet
                           3022 ;     genFarPointerSet
   4B06 90 06 CA           3023 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000a)
   4B09 74 2F              3024 	mov	a,#0x2F
   4B0B F0                 3025 	movx	@dptr,a
                           3026 ;	genPointerSet
                           3027 ;     genFarPointerSet
   4B0C 90 06 CB           3028 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000b)
   4B0F 74 43              3029 	mov	a,#0x43
   4B11 F0                 3030 	movx	@dptr,a
                           3031 ;	genPointerSet
                           3032 ;     genFarPointerSet
   4B12 90 06 CC           3033 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000c)
   4B15 74 6F              3034 	mov	a,#0x6F
   4B17 F0                 3035 	movx	@dptr,a
                           3036 ;	genPointerSet
                           3037 ;     genFarPointerSet
   4B18 90 06 CD           3038 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000d)
   4B1B 74 72              3039 	mov	a,#0x72
   4B1D F0                 3040 	movx	@dptr,a
                           3041 ;	genPointerSet
                           3042 ;     genFarPointerSet
   4B1E 90 06 CE           3043 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000e)
   4B21 74 65              3044 	mov	a,#0x65
   4B23 F0                 3045 	movx	@dptr,a
                           3046 ;	genPointerSet
                           3047 ;     genFarPointerSet
   4B24 90 06 CF           3048 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000f)
   4B27 74 47              3049 	mov	a,#0x47
   4B29 F0                 3050 	movx	@dptr,a
                           3051 ;	genPointerSet
                           3052 ;     genFarPointerSet
   4B2A 90 06 D0           3053 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0010)
   4B2D 74 50              3054 	mov	a,#0x50
   4B2F F0                 3055 	movx	@dptr,a
                           3056 ;	genPointerSet
                           3057 ;     genFarPointerSet
   4B30 90 06 D1           3058 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0011)
   4B33 74 49              3059 	mov	a,#0x49
   4B35 F0                 3060 	movx	@dptr,a
                           3061 ;	genPointerSet
                           3062 ;     genFarPointerSet
   4B36 90 06 D2           3063 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0012)
   4B39 74 4F              3064 	mov	a,#0x4F
   4B3B F0                 3065 	movx	@dptr,a
                           3066 ;	genPointerSet
                           3067 ;     genFarPointerSet
   4B3C 90 06 D3           3068 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0013)
   4B3F 74 2F              3069 	mov	a,#0x2F
   4B41 F0                 3070 	movx	@dptr,a
                           3071 ;	genPointerSet
                           3072 ;     genFarPointerSet
   4B42 90 06 D4           3073 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0014)
   4B45 74 63              3074 	mov	a,#0x63
   4B47 F0                 3075 	movx	@dptr,a
                           3076 ;	genPointerSet
                           3077 ;     genFarPointerSet
   4B48 90 06 D5           3078 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0015)
   4B4B 74 6F              3079 	mov	a,#0x6F
   4B4D F0                 3080 	movx	@dptr,a
                           3081 ;	genPointerSet
                           3082 ;     genFarPointerSet
   4B4E 90 06 D6           3083 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0016)
   4B51 74 72              3084 	mov	a,#0x72
   4B53 F0                 3085 	movx	@dptr,a
                           3086 ;	genPointerSet
                           3087 ;     genFarPointerSet
   4B54 90 06 D7           3088 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0017)
   4B57 74 65              3089 	mov	a,#0x65
   4B59 F0                 3090 	movx	@dptr,a
                           3091 ;	genPointerSet
                           3092 ;     genFarPointerSet
   4B5A 90 06 D8           3093 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0018)
   4B5D 74 5F              3094 	mov	a,#0x5F
   4B5F F0                 3095 	movx	@dptr,a
                           3096 ;	genPointerSet
                           3097 ;     genFarPointerSet
   4B60 90 06 D9           3098 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0019)
   4B63 74 67              3099 	mov	a,#0x67
   4B65 F0                 3100 	movx	@dptr,a
                           3101 ;	genPointerSet
                           3102 ;     genFarPointerSet
   4B66 90 06 DA           3103 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001a)
   4B69 74 70              3104 	mov	a,#0x70
   4B6B F0                 3105 	movx	@dptr,a
                           3106 ;	genPointerSet
                           3107 ;     genFarPointerSet
   4B6C 90 06 DB           3108 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001b)
   4B6F 74 69              3109 	mov	a,#0x69
   4B71 F0                 3110 	movx	@dptr,a
                           3111 ;	genPointerSet
                           3112 ;     genFarPointerSet
   4B72 90 06 DC           3113 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001c)
   4B75 74 6F              3114 	mov	a,#0x6F
   4B77 F0                 3115 	movx	@dptr,a
                           3116 ;	genPointerSet
                           3117 ;     genFarPointerSet
   4B78 90 06 DD           3118 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001d)
   4B7B 74 2E              3119 	mov	a,#0x2E
   4B7D F0                 3120 	movx	@dptr,a
                           3121 ;	genPointerSet
                           3122 ;     genFarPointerSet
   4B7E 90 06 DE           3123 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001e)
   4B81 74 63              3124 	mov	a,#0x63
   4B83 F0                 3125 	movx	@dptr,a
                           3126 ;	genPointerSet
                           3127 ;     genFarPointerSet
   4B84 90 06 DF           3128 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001f)
   4B87 74 00              3129 	mov	a,#0x00
   4B89 F0                 3130 	movx	@dptr,a
                           3131 ;	genAssign
   4B8A 90 00 2E           3132 	mov	dptr,#_HAL_assert_fail_PARM_2
   4B8D 74 D7              3133 	mov	a,#0xD7
   4B8F F0                 3134 	movx	@dptr,a
   4B90 E4                 3135 	clr	a
   4B91 A3                 3136 	inc	dptr
   4B92 F0                 3137 	movx	@dptr,a
   4B93 A3                 3138 	inc	dptr
   4B94 F0                 3139 	movx	@dptr,a
   4B95 A3                 3140 	inc	dptr
   4B96 F0                 3141 	movx	@dptr,a
                           3142 ;	genCall
   4B97 75 82 C0           3143 	mov	dpl,#_GPIO_get_outputs_file_name_4_4
   4B9A 75 83 06           3144 	mov	dph,#(_GPIO_get_outputs_file_name_4_4 >> 8)
   4B9D 75 F0 00           3145 	mov	b,#0x00
   4BA0 12 08 16           3146 	lcall	_HAL_assert_fail
                    0D9D   3147 	C$core_gpio.c$217$1$1 ==.
                           3148 ;	../drivers/CoreGPIO/core_gpio.c:217: }
   4BA3                    3149 00110$:
                    0D9D   3150 	C$core_gpio.c$219$1$1 ==.
                           3151 ;	../drivers/CoreGPIO/core_gpio.c:219: return gpio_out;
                           3152 ;	genAssign
   4BA3 90 06 BC           3153 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4BA6 E0                 3154 	movx	a,@dptr
   4BA7 FA                 3155 	mov	r2,a
   4BA8 A3                 3156 	inc	dptr
   4BA9 E0                 3157 	movx	a,@dptr
   4BAA FB                 3158 	mov	r3,a
   4BAB A3                 3159 	inc	dptr
   4BAC E0                 3160 	movx	a,@dptr
   4BAD FC                 3161 	mov	r4,a
   4BAE A3                 3162 	inc	dptr
   4BAF E0                 3163 	movx	a,@dptr
   4BB0 FD                 3164 	mov	r5,a
                           3165 ;	genRet
   4BB1 8A 82              3166 	mov	dpl,r2
   4BB3 8B 83              3167 	mov	dph,r3
   4BB5 8C F0              3168 	mov	b,r4
   4BB7 ED                 3169 	mov	a,r5
   4BB8                    3170 00111$:
                    0DB2   3171 	C$core_gpio.c$220$1$1 ==.
                    0DB2   3172 	XG$GPIO_get_outputs$0$0 ==.
   4BB8 22                 3173 	ret
                           3174 ;------------------------------------------------------------
                           3175 ;Allocation info for local variables in function 'GPIO_set_output'
                           3176 ;------------------------------------------------------------
                           3177 ;sloc0                     Allocated with name '_GPIO_set_output_sloc0_1_0'
                           3178 ;sloc1                     Allocated with name '_GPIO_set_output_sloc1_1_0'
                           3179 ;sloc2                     Allocated with name '_GPIO_set_output_sloc2_1_0'
                           3180 ;port_id                   Allocated with name '_GPIO_set_output_PARM_2'
                           3181 ;value                     Allocated with name '_GPIO_set_output_PARM_3'
                           3182 ;this_gpio                 Allocated with name '_GPIO_set_output_this_gpio_1_1'
                           3183 ;file_name                 Allocated with name '_GPIO_set_output_file_name_3_3'
                           3184 ;outputs_state             Allocated with name '_GPIO_set_output_outputs_state_3_5'
                           3185 ;file_name                 Allocated with name '_GPIO_set_output_file_name_5_9'
                           3186 ;outputs_state             Allocated with name '_GPIO_set_output_outputs_state_3_10'
                           3187 ;gpio_out_reg_addr         Allocated with name '_GPIO_set_output_gpio_out_reg_addr_3_10'
                           3188 ;file_name                 Allocated with name '_GPIO_set_output_file_name_5_14'
                           3189 ;outputs_state             Allocated with name '_GPIO_set_output_outputs_state_3_15'
                           3190 ;gpio_out_reg_addr         Allocated with name '_GPIO_set_output_gpio_out_reg_addr_3_15'
                           3191 ;file_name                 Allocated with name '_GPIO_set_output_file_name_5_19'
                           3192 ;file_name                 Allocated with name '_GPIO_set_output_file_name_4_21'
                           3193 ;------------------------------------------------------------
                    0DB3   3194 	G$GPIO_set_output$0$0 ==.
                    0DB3   3195 	C$core_gpio.c$226$1$1 ==.
                           3196 ;	../drivers/CoreGPIO/core_gpio.c:226: void GPIO_set_output
                           3197 ;	-----------------------------------------
                           3198 ;	 function GPIO_set_output
                           3199 ;	-----------------------------------------
   4BB9                    3200 _GPIO_set_output:
                           3201 ;	genReceive
   4BB9 AA F0              3202 	mov	r2,b
   4BBB AB 83              3203 	mov	r3,dph
   4BBD E5 82              3204 	mov	a,dpl
   4BBF 90 06 E2           3205 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   4BC2 F0                 3206 	movx	@dptr,a
   4BC3 A3                 3207 	inc	dptr
   4BC4 EB                 3208 	mov	a,r3
   4BC5 F0                 3209 	movx	@dptr,a
   4BC6 A3                 3210 	inc	dptr
   4BC7 EA                 3211 	mov	a,r2
   4BC8 F0                 3212 	movx	@dptr,a
                    0DC3   3213 	C$core_gpio.c$233$2$2 ==.
                           3214 ;	../drivers/CoreGPIO/core_gpio.c:233: HAL_ASSERT( port_id < NB_OF_GPIO );
                           3215 ;	genAssign
   4BC9 90 06 E0           3216 	mov	dptr,#_GPIO_set_output_PARM_2
   4BCC E0                 3217 	movx	a,@dptr
   4BCD FA                 3218 	mov	r2,a
                           3219 ;	genCmpLt
                           3220 ;	genCmp
   4BCE BA 20 00           3221 	cjne	r2,#0x20,00152$
   4BD1                    3222 00152$:
                           3223 ;	genIfxJump
   4BD1 50 03              3224 	jnc	00153$
   4BD3 02 4C B3           3225 	ljmp	00104$
   4BD6                    3226 00153$:
                           3227 ;	genPointerSet
                           3228 ;     genFarPointerSet
   4BD6 90 06 E5           3229 	mov	dptr,#_GPIO_set_output_file_name_3_3
   4BD9 74 2E              3230 	mov	a,#0x2E
   4BDB F0                 3231 	movx	@dptr,a
                           3232 ;	genPointerSet
                           3233 ;     genFarPointerSet
   4BDC 90 06 E6           3234 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0001)
   4BDF 74 2E              3235 	mov	a,#0x2E
   4BE1 F0                 3236 	movx	@dptr,a
                           3237 ;	genPointerSet
                           3238 ;     genFarPointerSet
   4BE2 90 06 E7           3239 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0002)
   4BE5 74 2F              3240 	mov	a,#0x2F
   4BE7 F0                 3241 	movx	@dptr,a
                           3242 ;	genPointerSet
                           3243 ;     genFarPointerSet
   4BE8 90 06 E8           3244 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0003)
   4BEB 74 64              3245 	mov	a,#0x64
   4BED F0                 3246 	movx	@dptr,a
                           3247 ;	genPointerSet
                           3248 ;     genFarPointerSet
   4BEE 90 06 E9           3249 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0004)
   4BF1 74 72              3250 	mov	a,#0x72
   4BF3 F0                 3251 	movx	@dptr,a
                           3252 ;	genPointerSet
                           3253 ;     genFarPointerSet
   4BF4 90 06 EA           3254 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0005)
   4BF7 74 69              3255 	mov	a,#0x69
   4BF9 F0                 3256 	movx	@dptr,a
                           3257 ;	genPointerSet
                           3258 ;     genFarPointerSet
   4BFA 90 06 EB           3259 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0006)
   4BFD 74 76              3260 	mov	a,#0x76
   4BFF F0                 3261 	movx	@dptr,a
                           3262 ;	genPointerSet
                           3263 ;     genFarPointerSet
   4C00 90 06 EC           3264 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0007)
   4C03 74 65              3265 	mov	a,#0x65
   4C05 F0                 3266 	movx	@dptr,a
                           3267 ;	genPointerSet
                           3268 ;     genFarPointerSet
   4C06 90 06 ED           3269 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0008)
   4C09 74 72              3270 	mov	a,#0x72
   4C0B F0                 3271 	movx	@dptr,a
                           3272 ;	genPointerSet
                           3273 ;     genFarPointerSet
   4C0C 90 06 EE           3274 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0009)
   4C0F 74 73              3275 	mov	a,#0x73
   4C11 F0                 3276 	movx	@dptr,a
                           3277 ;	genPointerSet
                           3278 ;     genFarPointerSet
   4C12 90 06 EF           3279 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000a)
   4C15 74 2F              3280 	mov	a,#0x2F
   4C17 F0                 3281 	movx	@dptr,a
                           3282 ;	genPointerSet
                           3283 ;     genFarPointerSet
   4C18 90 06 F0           3284 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000b)
   4C1B 74 43              3285 	mov	a,#0x43
   4C1D F0                 3286 	movx	@dptr,a
                           3287 ;	genPointerSet
                           3288 ;     genFarPointerSet
   4C1E 90 06 F1           3289 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000c)
   4C21 74 6F              3290 	mov	a,#0x6F
   4C23 F0                 3291 	movx	@dptr,a
                           3292 ;	genPointerSet
                           3293 ;     genFarPointerSet
   4C24 90 06 F2           3294 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000d)
   4C27 74 72              3295 	mov	a,#0x72
   4C29 F0                 3296 	movx	@dptr,a
                           3297 ;	genPointerSet
                           3298 ;     genFarPointerSet
   4C2A 90 06 F3           3299 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000e)
   4C2D 74 65              3300 	mov	a,#0x65
   4C2F F0                 3301 	movx	@dptr,a
                           3302 ;	genPointerSet
                           3303 ;     genFarPointerSet
   4C30 90 06 F4           3304 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000f)
   4C33 74 47              3305 	mov	a,#0x47
   4C35 F0                 3306 	movx	@dptr,a
                           3307 ;	genPointerSet
                           3308 ;     genFarPointerSet
   4C36 90 06 F5           3309 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0010)
   4C39 74 50              3310 	mov	a,#0x50
   4C3B F0                 3311 	movx	@dptr,a
                           3312 ;	genPointerSet
                           3313 ;     genFarPointerSet
   4C3C 90 06 F6           3314 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0011)
   4C3F 74 49              3315 	mov	a,#0x49
   4C41 F0                 3316 	movx	@dptr,a
                           3317 ;	genPointerSet
                           3318 ;     genFarPointerSet
   4C42 90 06 F7           3319 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0012)
   4C45 74 4F              3320 	mov	a,#0x4F
   4C47 F0                 3321 	movx	@dptr,a
                           3322 ;	genPointerSet
                           3323 ;     genFarPointerSet
   4C48 90 06 F8           3324 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0013)
   4C4B 74 2F              3325 	mov	a,#0x2F
   4C4D F0                 3326 	movx	@dptr,a
                           3327 ;	genPointerSet
                           3328 ;     genFarPointerSet
   4C4E 90 06 F9           3329 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0014)
   4C51 74 63              3330 	mov	a,#0x63
   4C53 F0                 3331 	movx	@dptr,a
                           3332 ;	genPointerSet
                           3333 ;     genFarPointerSet
   4C54 90 06 FA           3334 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0015)
   4C57 74 6F              3335 	mov	a,#0x6F
   4C59 F0                 3336 	movx	@dptr,a
                           3337 ;	genPointerSet
                           3338 ;     genFarPointerSet
   4C5A 90 06 FB           3339 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0016)
   4C5D 74 72              3340 	mov	a,#0x72
   4C5F F0                 3341 	movx	@dptr,a
                           3342 ;	genPointerSet
                           3343 ;     genFarPointerSet
   4C60 90 06 FC           3344 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0017)
   4C63 74 65              3345 	mov	a,#0x65
   4C65 F0                 3346 	movx	@dptr,a
                           3347 ;	genPointerSet
                           3348 ;     genFarPointerSet
   4C66 90 06 FD           3349 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0018)
   4C69 74 5F              3350 	mov	a,#0x5F
   4C6B F0                 3351 	movx	@dptr,a
                           3352 ;	genPointerSet
                           3353 ;     genFarPointerSet
   4C6C 90 06 FE           3354 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0019)
   4C6F 74 67              3355 	mov	a,#0x67
   4C71 F0                 3356 	movx	@dptr,a
                           3357 ;	genPointerSet
                           3358 ;     genFarPointerSet
   4C72 90 06 FF           3359 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001a)
   4C75 74 70              3360 	mov	a,#0x70
   4C77 F0                 3361 	movx	@dptr,a
                           3362 ;	genPointerSet
                           3363 ;     genFarPointerSet
   4C78 90 07 00           3364 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001b)
   4C7B 74 69              3365 	mov	a,#0x69
   4C7D F0                 3366 	movx	@dptr,a
                           3367 ;	genPointerSet
                           3368 ;     genFarPointerSet
   4C7E 90 07 01           3369 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001c)
   4C81 74 6F              3370 	mov	a,#0x6F
   4C83 F0                 3371 	movx	@dptr,a
                           3372 ;	genPointerSet
                           3373 ;     genFarPointerSet
   4C84 90 07 02           3374 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001d)
   4C87 74 2E              3375 	mov	a,#0x2E
   4C89 F0                 3376 	movx	@dptr,a
                           3377 ;	genPointerSet
                           3378 ;     genFarPointerSet
   4C8A 90 07 03           3379 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001e)
   4C8D 74 63              3380 	mov	a,#0x63
   4C8F F0                 3381 	movx	@dptr,a
                           3382 ;	genPointerSet
                           3383 ;     genFarPointerSet
   4C90 90 07 04           3384 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001f)
   4C93 74 00              3385 	mov	a,#0x00
   4C95 F0                 3386 	movx	@dptr,a
                           3387 ;	genAssign
   4C96 90 00 2E           3388 	mov	dptr,#_HAL_assert_fail_PARM_2
   4C99 74 E9              3389 	mov	a,#0xE9
   4C9B F0                 3390 	movx	@dptr,a
   4C9C E4                 3391 	clr	a
   4C9D A3                 3392 	inc	dptr
   4C9E F0                 3393 	movx	@dptr,a
   4C9F A3                 3394 	inc	dptr
   4CA0 F0                 3395 	movx	@dptr,a
   4CA1 A3                 3396 	inc	dptr
   4CA2 F0                 3397 	movx	@dptr,a
                           3398 ;	genCall
   4CA3 75 82 E5           3399 	mov	dpl,#_GPIO_set_output_file_name_3_3
   4CA6 75 83 06           3400 	mov	dph,#(_GPIO_set_output_file_name_3_3 >> 8)
   4CA9 75 F0 00           3401 	mov	b,#0x00
   4CAC C0 02              3402 	push	ar2
   4CAE 12 08 16           3403 	lcall	_HAL_assert_fail
   4CB1 D0 02              3404 	pop	ar2
   4CB3                    3405 00104$:
                    0EAD   3406 	C$core_gpio.c$236$1$1 ==.
                           3407 ;	../drivers/CoreGPIO/core_gpio.c:236: switch( this_gpio->apb_bus_width )
                           3408 ;	genAssign
   4CB3 90 06 E2           3409 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   4CB6 E0                 3410 	movx	a,@dptr
   4CB7 FB                 3411 	mov	r3,a
   4CB8 A3                 3412 	inc	dptr
   4CB9 E0                 3413 	movx	a,@dptr
   4CBA FC                 3414 	mov	r4,a
   4CBB A3                 3415 	inc	dptr
   4CBC E0                 3416 	movx	a,@dptr
   4CBD FD                 3417 	mov	r5,a
                           3418 ;	genPlus
                           3419 ;	genPlusIncr
   4CBE 74 02              3420 	mov	a,#0x02
   4CC0 25 03              3421 	add	a,ar3
   4CC2 FE                 3422 	mov	r6,a
   4CC3 74 00              3423 	mov	a,#0x00
   4CC5 35 04              3424 	addc	a,ar4
   4CC7 FF                 3425 	mov	r7,a
   4CC8 8D 00              3426 	mov	ar0,r5
                           3427 ;	genPointerGet
                           3428 ;	genGenPointerGet
   4CCA 8E 82              3429 	mov	dpl,r6
   4CCC 8F 83              3430 	mov	dph,r7
   4CCE 88 F0              3431 	mov	b,r0
   4CD0 12 5C 8D           3432 	lcall	__gptrget
   4CD3 FE                 3433 	mov	r6,a
                           3434 ;	genCmpEq
                           3435 ;	gencjneshort
   4CD4 BE 00 03           3436 	cjne	r6,#0x00,00154$
   4CD7 02 50 EB           3437 	ljmp	00124$
   4CDA                    3438 00154$:
                           3439 ;	genCmpEq
                           3440 ;	gencjneshort
   4CDA BE 01 03           3441 	cjne	r6,#0x01,00155$
   4CDD 02 4F 0C           3442 	ljmp	00115$
   4CE0                    3443 00155$:
                           3444 ;	genCmpEq
                           3445 ;	gencjneshort
   4CE0 BE 02 02           3446 	cjne	r6,#0x02,00156$
   4CE3 80 03              3447 	sjmp	00157$
   4CE5                    3448 00156$:
   4CE5 02 52 83           3449 	ljmp	00136$
   4CE8                    3450 00157$:
                    0EE2   3451 	C$core_gpio.c$242$1$1 ==.
                           3452 ;	../drivers/CoreGPIO/core_gpio.c:242: outputs_state = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT );
                           3453 ;	genIpush
   4CE8 C0 02              3454 	push	ar2
                           3455 ;	genPointerGet
                           3456 ;	genGenPointerGet
   4CEA 8B 82              3457 	mov	dpl,r3
   4CEC 8C 83              3458 	mov	dph,r4
   4CEE 8D F0              3459 	mov	b,r5
   4CF0 12 5C 8D           3460 	lcall	__gptrget
   4CF3 FE                 3461 	mov	r6,a
   4CF4 A3                 3462 	inc	dptr
   4CF5 12 5C 8D           3463 	lcall	__gptrget
   4CF8 FF                 3464 	mov	r7,a
                           3465 ;	genPlus
                           3466 ;	genPlusIncr
   4CF9 74 A0              3467 	mov	a,#0xA0
   4CFB 25 06              3468 	add	a,ar6
   4CFD FE                 3469 	mov	r6,a
   4CFE 74 00              3470 	mov	a,#0x00
   4D00 35 07              3471 	addc	a,ar7
   4D02 FF                 3472 	mov	r7,a
                           3473 ;	genCall
   4D03 8E 82              3474 	mov	dpl,r6
   4D05 8F 83              3475 	mov	dph,r7
   4D07 C0 02              3476 	push	ar2
   4D09 12 08 76           3477 	lcall	_HW_get_32bit_reg
   4D0C 85 82 51           3478 	mov	_GPIO_set_output_sloc0_1_0,dpl
   4D0F 85 83 52           3479 	mov	(_GPIO_set_output_sloc0_1_0 + 1),dph
   4D12 85 F0 53           3480 	mov	(_GPIO_set_output_sloc0_1_0 + 2),b
   4D15 F5 54              3481 	mov	(_GPIO_set_output_sloc0_1_0 + 3),a
   4D17 D0 02              3482 	pop	ar2
                    0F13   3483 	C$core_gpio.c$243$3$5 ==.
                           3484 ;	../drivers/CoreGPIO/core_gpio.c:243: if ( 0 == value )
                           3485 ;	genAssign
   4D19 90 06 E1           3486 	mov	dptr,#_GPIO_set_output_PARM_3
   4D1C E0                 3487 	movx	a,@dptr
   4D1D FA                 3488 	mov	r2,a
                           3489 ;	genCmpEq
                           3490 ;	gencjne
                           3491 ;	gencjneshort
   4D1E BA 00 04           3492 	cjne	r2,#0x00,00158$
   4D21 74 01              3493 	mov	a,#0x01
   4D23 80 01              3494 	sjmp	00159$
   4D25                    3495 00158$:
   4D25 E4                 3496 	clr	a
   4D26                    3497 00159$:
                           3498 ;	genIpop
   4D26 D0 02              3499 	pop	ar2
                           3500 ;	genIfx
                           3501 ;	genIfxJump
   4D28 70 03              3502 	jnz	00160$
   4D2A 02 4D 66           3503 	ljmp	00108$
   4D2D                    3504 00160$:
                    0F27   3505 	C$core_gpio.c$245$4$6 ==.
                           3506 ;	../drivers/CoreGPIO/core_gpio.c:245: outputs_state &= ~(1 << port_id);
                           3507 ;	genLeftShift
   4D2D 8A F0              3508 	mov	b,r2
   4D2F 05 F0              3509 	inc	b
   4D31 7E 01              3510 	mov	r6,#0x01
   4D33 7F 00              3511 	mov	r7,#0x00
   4D35 80 07              3512 	sjmp	00162$
   4D37                    3513 00161$:
   4D37 EE                 3514 	mov	a,r6
   4D38 25 E0              3515 	add	a,acc
   4D3A FE                 3516 	mov	r6,a
   4D3B EF                 3517 	mov	a,r7
   4D3C 33                 3518 	rlc	a
   4D3D FF                 3519 	mov	r7,a
   4D3E                    3520 00162$:
   4D3E D5 F0 F6           3521 	djnz	b,00161$
                           3522 ;	genCpl
   4D41 EE                 3523 	mov	a,r6
   4D42 F4                 3524 	cpl	a
   4D43 FE                 3525 	mov	r6,a
   4D44 EF                 3526 	mov	a,r7
   4D45 F4                 3527 	cpl	a
   4D46 FF                 3528 	mov	r7,a
                           3529 ;	genCast
   4D47 EF                 3530 	mov	a,r7
   4D48 33                 3531 	rlc	a
   4D49 95 E0              3532 	subb	a,acc
   4D4B F8                 3533 	mov	r0,a
   4D4C F9                 3534 	mov	r1,a
                           3535 ;	genAnd
   4D4D 90 07 05           3536 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   4D50 EE                 3537 	mov	a,r6
   4D51 55 51              3538 	anl	a,_GPIO_set_output_sloc0_1_0
   4D53 F0                 3539 	movx	@dptr,a
   4D54 EF                 3540 	mov	a,r7
   4D55 55 52              3541 	anl	a,(_GPIO_set_output_sloc0_1_0 + 1)
   4D57 A3                 3542 	inc	dptr
   4D58 F0                 3543 	movx	@dptr,a
   4D59 E8                 3544 	mov	a,r0
   4D5A 55 53              3545 	anl	a,(_GPIO_set_output_sloc0_1_0 + 2)
   4D5C A3                 3546 	inc	dptr
   4D5D F0                 3547 	movx	@dptr,a
   4D5E E9                 3548 	mov	a,r1
   4D5F 55 54              3549 	anl	a,(_GPIO_set_output_sloc0_1_0 + 3)
   4D61 A3                 3550 	inc	dptr
   4D62 F0                 3551 	movx	@dptr,a
   4D63 02 4D 96           3552 	ljmp	00109$
   4D66                    3553 00108$:
                    0F60   3554 	C$core_gpio.c$249$4$7 ==.
                           3555 ;	../drivers/CoreGPIO/core_gpio.c:249: outputs_state |= 1 << port_id;
                           3556 ;	genLeftShift
   4D66 8A F0              3557 	mov	b,r2
   4D68 05 F0              3558 	inc	b
   4D6A 7E 01              3559 	mov	r6,#0x01
   4D6C 7F 00              3560 	mov	r7,#0x00
   4D6E 80 07              3561 	sjmp	00164$
   4D70                    3562 00163$:
   4D70 EE                 3563 	mov	a,r6
   4D71 25 E0              3564 	add	a,acc
   4D73 FE                 3565 	mov	r6,a
   4D74 EF                 3566 	mov	a,r7
   4D75 33                 3567 	rlc	a
   4D76 FF                 3568 	mov	r7,a
   4D77                    3569 00164$:
   4D77 D5 F0 F6           3570 	djnz	b,00163$
                           3571 ;	genCast
   4D7A EF                 3572 	mov	a,r7
   4D7B 33                 3573 	rlc	a
   4D7C 95 E0              3574 	subb	a,acc
   4D7E F8                 3575 	mov	r0,a
   4D7F F9                 3576 	mov	r1,a
                           3577 ;	genOr
   4D80 90 07 05           3578 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   4D83 EE                 3579 	mov	a,r6
   4D84 45 51              3580 	orl	a,_GPIO_set_output_sloc0_1_0
   4D86 F0                 3581 	movx	@dptr,a
   4D87 EF                 3582 	mov	a,r7
   4D88 45 52              3583 	orl	a,(_GPIO_set_output_sloc0_1_0 + 1)
   4D8A A3                 3584 	inc	dptr
   4D8B F0                 3585 	movx	@dptr,a
   4D8C E8                 3586 	mov	a,r0
   4D8D 45 53              3587 	orl	a,(_GPIO_set_output_sloc0_1_0 + 2)
   4D8F A3                 3588 	inc	dptr
   4D90 F0                 3589 	movx	@dptr,a
   4D91 E9                 3590 	mov	a,r1
   4D92 45 54              3591 	orl	a,(_GPIO_set_output_sloc0_1_0 + 3)
   4D94 A3                 3592 	inc	dptr
   4D95 F0                 3593 	movx	@dptr,a
   4D96                    3594 00109$:
                    0F90   3595 	C$core_gpio.c$251$3$5 ==.
                           3596 ;	../drivers/CoreGPIO/core_gpio.c:251: HAL_set_32bit_reg( this_gpio->base_addr, GPIO_OUT, outputs_state );
                           3597 ;	genAssign
   4D96 90 06 E2           3598 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   4D99 E0                 3599 	movx	a,@dptr
   4D9A FA                 3600 	mov	r2,a
   4D9B A3                 3601 	inc	dptr
   4D9C E0                 3602 	movx	a,@dptr
   4D9D FB                 3603 	mov	r3,a
   4D9E A3                 3604 	inc	dptr
   4D9F E0                 3605 	movx	a,@dptr
   4DA0 FC                 3606 	mov	r4,a
                           3607 ;	genPointerGet
                           3608 ;	genGenPointerGet
   4DA1 8A 82              3609 	mov	dpl,r2
   4DA3 8B 83              3610 	mov	dph,r3
   4DA5 8C F0              3611 	mov	b,r4
   4DA7 12 5C 8D           3612 	lcall	__gptrget
   4DAA F9                 3613 	mov	r1,a
   4DAB A3                 3614 	inc	dptr
   4DAC 12 5C 8D           3615 	lcall	__gptrget
   4DAF FE                 3616 	mov	r6,a
                           3617 ;	genPlus
                           3618 ;	genPlusIncr
   4DB0 74 A0              3619 	mov	a,#0xA0
   4DB2 25 01              3620 	add	a,ar1
   4DB4 FD                 3621 	mov	r5,a
   4DB5 74 00              3622 	mov	a,#0x00
   4DB7 35 06              3623 	addc	a,ar6
   4DB9 FE                 3624 	mov	r6,a
                           3625 ;	genAssign
   4DBA 90 07 05           3626 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   4DBD E0                 3627 	movx	a,@dptr
   4DBE F5 55              3628 	mov	_GPIO_set_output_sloc2_1_0,a
   4DC0 A3                 3629 	inc	dptr
   4DC1 E0                 3630 	movx	a,@dptr
   4DC2 F5 56              3631 	mov	(_GPIO_set_output_sloc2_1_0 + 1),a
   4DC4 A3                 3632 	inc	dptr
   4DC5 E0                 3633 	movx	a,@dptr
   4DC6 F5 57              3634 	mov	(_GPIO_set_output_sloc2_1_0 + 2),a
   4DC8 A3                 3635 	inc	dptr
   4DC9 E0                 3636 	movx	a,@dptr
   4DCA F5 58              3637 	mov	(_GPIO_set_output_sloc2_1_0 + 3),a
                           3638 ;	genAssign
   4DCC 90 00 4C           3639 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   4DCF E5 55              3640 	mov	a,_GPIO_set_output_sloc2_1_0
   4DD1 F0                 3641 	movx	@dptr,a
   4DD2 A3                 3642 	inc	dptr
   4DD3 E5 56              3643 	mov	a,(_GPIO_set_output_sloc2_1_0 + 1)
   4DD5 F0                 3644 	movx	@dptr,a
   4DD6 A3                 3645 	inc	dptr
   4DD7 E5 57              3646 	mov	a,(_GPIO_set_output_sloc2_1_0 + 2)
   4DD9 F0                 3647 	movx	@dptr,a
   4DDA A3                 3648 	inc	dptr
   4DDB E5 58              3649 	mov	a,(_GPIO_set_output_sloc2_1_0 + 3)
   4DDD F0                 3650 	movx	@dptr,a
                           3651 ;	genCall
   4DDE 8D 82              3652 	mov	dpl,r5
   4DE0 8E 83              3653 	mov	dph,r6
   4DE2 C0 02              3654 	push	ar2
   4DE4 C0 03              3655 	push	ar3
   4DE6 C0 04              3656 	push	ar4
   4DE8 12 08 82           3657 	lcall	_HW_set_32bit_reg
   4DEB D0 04              3658 	pop	ar4
   4DED D0 03              3659 	pop	ar3
   4DEF D0 02              3660 	pop	ar2
                    0FEB   3661 	C$core_gpio.c$260$4$8 ==.
                           3662 ;	../drivers/CoreGPIO/core_gpio.c:260: HAL_ASSERT( HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT ) == outputs_state );
                           3663 ;	genPointerGet
                           3664 ;	genGenPointerGet
   4DF1 8A 82              3665 	mov	dpl,r2
   4DF3 8B 83              3666 	mov	dph,r3
   4DF5 8C F0              3667 	mov	b,r4
   4DF7 12 5C 8D           3668 	lcall	__gptrget
   4DFA FE                 3669 	mov	r6,a
   4DFB A3                 3670 	inc	dptr
   4DFC 12 5C 8D           3671 	lcall	__gptrget
   4DFF FF                 3672 	mov	r7,a
                           3673 ;	genPlus
                           3674 ;	genPlusIncr
   4E00 74 A0              3675 	mov	a,#0xA0
   4E02 25 06              3676 	add	a,ar6
   4E04 FE                 3677 	mov	r6,a
   4E05 74 00              3678 	mov	a,#0x00
   4E07 35 07              3679 	addc	a,ar7
   4E09 FF                 3680 	mov	r7,a
                           3681 ;	genCall
   4E0A 8E 82              3682 	mov	dpl,r6
   4E0C 8F 83              3683 	mov	dph,r7
   4E0E 12 08 76           3684 	lcall	_HW_get_32bit_reg
   4E11 AE 82              3685 	mov	r6,dpl
   4E13 AF 83              3686 	mov	r7,dph
   4E15 A8 F0              3687 	mov	r0,b
   4E17 F9                 3688 	mov	r1,a
                           3689 ;	genCmpEq
                           3690 ;	gencjneshort
   4E18 EE                 3691 	mov	a,r6
   4E19 B5 55 0F           3692 	cjne	a,_GPIO_set_output_sloc2_1_0,00165$
   4E1C EF                 3693 	mov	a,r7
   4E1D B5 56 0B           3694 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 1),00165$
   4E20 E8                 3695 	mov	a,r0
   4E21 B5 57 07           3696 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 2),00165$
   4E24 E9                 3697 	mov	a,r1
   4E25 B5 58 03           3698 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 3),00165$
   4E28 02 53 61           3699 	ljmp	00140$
   4E2B                    3700 00165$:
                           3701 ;	genPointerSet
                           3702 ;     genFarPointerSet
   4E2B 90 07 09           3703 	mov	dptr,#_GPIO_set_output_file_name_5_9
   4E2E 74 2E              3704 	mov	a,#0x2E
   4E30 F0                 3705 	movx	@dptr,a
                           3706 ;	genPointerSet
                           3707 ;     genFarPointerSet
   4E31 90 07 0A           3708 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0001)
   4E34 74 2E              3709 	mov	a,#0x2E
   4E36 F0                 3710 	movx	@dptr,a
                           3711 ;	genPointerSet
                           3712 ;     genFarPointerSet
   4E37 90 07 0B           3713 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0002)
   4E3A 74 2F              3714 	mov	a,#0x2F
   4E3C F0                 3715 	movx	@dptr,a
                           3716 ;	genPointerSet
                           3717 ;     genFarPointerSet
   4E3D 90 07 0C           3718 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0003)
   4E40 74 64              3719 	mov	a,#0x64
   4E42 F0                 3720 	movx	@dptr,a
                           3721 ;	genPointerSet
                           3722 ;     genFarPointerSet
   4E43 90 07 0D           3723 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0004)
   4E46 74 72              3724 	mov	a,#0x72
   4E48 F0                 3725 	movx	@dptr,a
                           3726 ;	genPointerSet
                           3727 ;     genFarPointerSet
   4E49 90 07 0E           3728 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0005)
   4E4C 74 69              3729 	mov	a,#0x69
   4E4E F0                 3730 	movx	@dptr,a
                           3731 ;	genPointerSet
                           3732 ;     genFarPointerSet
   4E4F 90 07 0F           3733 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0006)
   4E52 74 76              3734 	mov	a,#0x76
   4E54 F0                 3735 	movx	@dptr,a
                           3736 ;	genPointerSet
                           3737 ;     genFarPointerSet
   4E55 90 07 10           3738 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0007)
   4E58 74 65              3739 	mov	a,#0x65
   4E5A F0                 3740 	movx	@dptr,a
                           3741 ;	genPointerSet
                           3742 ;     genFarPointerSet
   4E5B 90 07 11           3743 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0008)
   4E5E 74 72              3744 	mov	a,#0x72
   4E60 F0                 3745 	movx	@dptr,a
                           3746 ;	genPointerSet
                           3747 ;     genFarPointerSet
   4E61 90 07 12           3748 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0009)
   4E64 74 73              3749 	mov	a,#0x73
   4E66 F0                 3750 	movx	@dptr,a
                           3751 ;	genPointerSet
                           3752 ;     genFarPointerSet
   4E67 90 07 13           3753 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000a)
   4E6A 74 2F              3754 	mov	a,#0x2F
   4E6C F0                 3755 	movx	@dptr,a
                           3756 ;	genPointerSet
                           3757 ;     genFarPointerSet
   4E6D 90 07 14           3758 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000b)
   4E70 74 43              3759 	mov	a,#0x43
   4E72 F0                 3760 	movx	@dptr,a
                           3761 ;	genPointerSet
                           3762 ;     genFarPointerSet
   4E73 90 07 15           3763 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000c)
   4E76 74 6F              3764 	mov	a,#0x6F
   4E78 F0                 3765 	movx	@dptr,a
                           3766 ;	genPointerSet
                           3767 ;     genFarPointerSet
   4E79 90 07 16           3768 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000d)
   4E7C 74 72              3769 	mov	a,#0x72
   4E7E F0                 3770 	movx	@dptr,a
                           3771 ;	genPointerSet
                           3772 ;     genFarPointerSet
   4E7F 90 07 17           3773 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000e)
   4E82 74 65              3774 	mov	a,#0x65
   4E84 F0                 3775 	movx	@dptr,a
                           3776 ;	genPointerSet
                           3777 ;     genFarPointerSet
   4E85 90 07 18           3778 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000f)
   4E88 74 47              3779 	mov	a,#0x47
   4E8A F0                 3780 	movx	@dptr,a
                           3781 ;	genPointerSet
                           3782 ;     genFarPointerSet
   4E8B 90 07 19           3783 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0010)
   4E8E 74 50              3784 	mov	a,#0x50
   4E90 F0                 3785 	movx	@dptr,a
                           3786 ;	genPointerSet
                           3787 ;     genFarPointerSet
   4E91 90 07 1A           3788 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0011)
   4E94 74 49              3789 	mov	a,#0x49
   4E96 F0                 3790 	movx	@dptr,a
                           3791 ;	genPointerSet
                           3792 ;     genFarPointerSet
   4E97 90 07 1B           3793 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0012)
   4E9A 74 4F              3794 	mov	a,#0x4F
   4E9C F0                 3795 	movx	@dptr,a
                           3796 ;	genPointerSet
                           3797 ;     genFarPointerSet
   4E9D 90 07 1C           3798 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0013)
   4EA0 74 2F              3799 	mov	a,#0x2F
   4EA2 F0                 3800 	movx	@dptr,a
                           3801 ;	genPointerSet
                           3802 ;     genFarPointerSet
   4EA3 90 07 1D           3803 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0014)
   4EA6 74 63              3804 	mov	a,#0x63
   4EA8 F0                 3805 	movx	@dptr,a
                           3806 ;	genPointerSet
                           3807 ;     genFarPointerSet
   4EA9 90 07 1E           3808 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0015)
   4EAC 74 6F              3809 	mov	a,#0x6F
   4EAE F0                 3810 	movx	@dptr,a
                           3811 ;	genPointerSet
                           3812 ;     genFarPointerSet
   4EAF 90 07 1F           3813 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0016)
   4EB2 74 72              3814 	mov	a,#0x72
   4EB4 F0                 3815 	movx	@dptr,a
                           3816 ;	genPointerSet
                           3817 ;     genFarPointerSet
   4EB5 90 07 20           3818 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0017)
   4EB8 74 65              3819 	mov	a,#0x65
   4EBA F0                 3820 	movx	@dptr,a
                           3821 ;	genPointerSet
                           3822 ;     genFarPointerSet
   4EBB 90 07 21           3823 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0018)
   4EBE 74 5F              3824 	mov	a,#0x5F
   4EC0 F0                 3825 	movx	@dptr,a
                           3826 ;	genPointerSet
                           3827 ;     genFarPointerSet
   4EC1 90 07 22           3828 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0019)
   4EC4 74 67              3829 	mov	a,#0x67
   4EC6 F0                 3830 	movx	@dptr,a
                           3831 ;	genPointerSet
                           3832 ;     genFarPointerSet
   4EC7 90 07 23           3833 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001a)
   4ECA 74 70              3834 	mov	a,#0x70
   4ECC F0                 3835 	movx	@dptr,a
                           3836 ;	genPointerSet
                           3837 ;     genFarPointerSet
   4ECD 90 07 24           3838 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001b)
   4ED0 74 69              3839 	mov	a,#0x69
   4ED2 F0                 3840 	movx	@dptr,a
                           3841 ;	genPointerSet
                           3842 ;     genFarPointerSet
   4ED3 90 07 25           3843 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001c)
   4ED6 74 6F              3844 	mov	a,#0x6F
   4ED8 F0                 3845 	movx	@dptr,a
                           3846 ;	genPointerSet
                           3847 ;     genFarPointerSet
   4ED9 90 07 26           3848 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001d)
   4EDC 74 2E              3849 	mov	a,#0x2E
   4EDE F0                 3850 	movx	@dptr,a
                           3851 ;	genPointerSet
                           3852 ;     genFarPointerSet
   4EDF 90 07 27           3853 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001e)
   4EE2 74 63              3854 	mov	a,#0x63
   4EE4 F0                 3855 	movx	@dptr,a
                           3856 ;	genPointerSet
                           3857 ;     genFarPointerSet
   4EE5 90 07 28           3858 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001f)
   4EE8 74 00              3859 	mov	a,#0x00
   4EEA F0                 3860 	movx	@dptr,a
                           3861 ;	genAssign
   4EEB 90 00 2E           3862 	mov	dptr,#_HAL_assert_fail_PARM_2
   4EEE 74 04              3863 	mov	a,#0x04
   4EF0 F0                 3864 	movx	@dptr,a
   4EF1 A3                 3865 	inc	dptr
   4EF2 74 01              3866 	mov	a,#0x01
   4EF4 F0                 3867 	movx	@dptr,a
   4EF5 A3                 3868 	inc	dptr
   4EF6 74 00              3869 	mov	a,#0x00
   4EF8 F0                 3870 	movx	@dptr,a
   4EF9 A3                 3871 	inc	dptr
   4EFA 74 00              3872 	mov	a,#0x00
   4EFC F0                 3873 	movx	@dptr,a
                           3874 ;	genCall
   4EFD 75 82 09           3875 	mov	dpl,#_GPIO_set_output_file_name_5_9
   4F00 75 83 07           3876 	mov	dph,#(_GPIO_set_output_file_name_5_9 >> 8)
   4F03 75 F0 00           3877 	mov	b,#0x00
   4F06 12 08 16           3878 	lcall	_HAL_assert_fail
                    1103   3879 	C$core_gpio.c$262$2$4 ==.
                           3880 ;	../drivers/CoreGPIO/core_gpio.c:262: break;
   4F09 02 53 61           3881 	ljmp	00140$
                    1106   3882 	C$core_gpio.c$264$2$4 ==.
                           3883 ;	../drivers/CoreGPIO/core_gpio.c:264: case GPIO_APB_16_BITS_BUS:
   4F0C                    3884 00115$:
                    1106   3885 	C$core_gpio.c$267$3$10 ==.
                           3886 ;	../drivers/CoreGPIO/core_gpio.c:267: uint32_t gpio_out_reg_addr = this_gpio->base_addr + GPIO_OUT_REG_OFFSET + ((port_id >> 4) * 4);
                           3887 ;	genPointerGet
                           3888 ;	genGenPointerGet
   4F0C 8B 82              3889 	mov	dpl,r3
   4F0E 8C 83              3890 	mov	dph,r4
   4F10 8D F0              3891 	mov	b,r5
   4F12 12 5C 8D           3892 	lcall	__gptrget
   4F15 FE                 3893 	mov	r6,a
   4F16 A3                 3894 	inc	dptr
   4F17 12 5C 8D           3895 	lcall	__gptrget
   4F1A FF                 3896 	mov	r7,a
                           3897 ;	genPlus
                           3898 ;	genPlusIncr
   4F1B 74 A0              3899 	mov	a,#0xA0
   4F1D 25 06              3900 	add	a,ar6
   4F1F FE                 3901 	mov	r6,a
   4F20 74 00              3902 	mov	a,#0x00
   4F22 35 07              3903 	addc	a,ar7
   4F24 FF                 3904 	mov	r7,a
                           3905 ;	genRightShift
                           3906 ;	genRightShiftLiteral
                           3907 ;	genrshOne
   4F25 EA                 3908 	mov	a,r2
   4F26 C4                 3909 	swap	a
   4F27 54 0F              3910 	anl	a,#0x0f
   4F29 F8                 3911 	mov	r0,a
                           3912 ;	genMult
                           3913 ;	genMultOneByte
   4F2A E8                 3914 	mov	a,r0
   4F2B 75 F0 04           3915 	mov	b,#0x04
   4F2E A4                 3916 	mul	ab
                           3917 ;	genPlus
   4F2F 25 06              3918 	add	a,ar6
   4F31 FE                 3919 	mov	r6,a
   4F32 E5 07              3920 	mov	a,ar7
   4F34 35 F0              3921 	addc	a,b
   4F36 FF                 3922 	mov	r7,a
                           3923 ;	genCast
   4F37 78 00              3924 	mov	r0,#0x00
   4F39 79 00              3925 	mov	r1,#0x00
                    1135   3926 	C$core_gpio.c$269$3$10 ==.
                           3927 ;	../drivers/CoreGPIO/core_gpio.c:269: outputs_state = HW_get_16bit_reg( gpio_out_reg_addr );
                           3928 ;	genCast
                           3929 ;	genCall
   4F3B 8E 82              3930 	mov	dpl,r6
   4F3D 8F 83              3931 	mov	dph,r7
   4F3F C0 02              3932 	push	ar2
   4F41 C0 06              3933 	push	ar6
   4F43 C0 07              3934 	push	ar7
   4F45 12 08 B2           3935 	lcall	_HW_get_16bit_reg
   4F48 A8 82              3936 	mov	r0,dpl
   4F4A A9 83              3937 	mov	r1,dph
   4F4C D0 07              3938 	pop	ar7
   4F4E D0 06              3939 	pop	ar6
   4F50 D0 02              3940 	pop	ar2
                    114C   3941 	C$core_gpio.c$270$1$1 ==.
                           3942 ;	../drivers/CoreGPIO/core_gpio.c:270: if ( 0 == value )
                           3943 ;	genIpush
   4F52 C0 02              3944 	push	ar2
                           3945 ;	genAssign
   4F54 90 06 E1           3946 	mov	dptr,#_GPIO_set_output_PARM_3
   4F57 E0                 3947 	movx	a,@dptr
   4F58 FA                 3948 	mov	r2,a
                           3949 ;	genCmpEq
                           3950 ;	gencjne
                           3951 ;	gencjneshort
   4F59 BA 00 04           3952 	cjne	r2,#0x00,00166$
   4F5C 74 01              3953 	mov	a,#0x01
   4F5E 80 01              3954 	sjmp	00167$
   4F60                    3955 00166$:
   4F60 E4                 3956 	clr	a
   4F61                    3957 00167$:
                           3958 ;	genIpop
   4F61 D0 02              3959 	pop	ar2
                           3960 ;	genIfx
                           3961 ;	genIfxJump
   4F63 70 03              3962 	jnz	00168$
   4F65 02 4F 9B           3963 	ljmp	00117$
   4F68                    3964 00168$:
                    1162   3965 	C$core_gpio.c$272$1$1 ==.
                           3966 ;	../drivers/CoreGPIO/core_gpio.c:272: outputs_state &= ~(1 << (port_id & 0x0F));
                           3967 ;	genIpush
   4F68 C0 06              3968 	push	ar6
   4F6A C0 07              3969 	push	ar7
                           3970 ;	genAnd
   4F6C 74 0F              3971 	mov	a,#0x0F
   4F6E 5A                 3972 	anl	a,r2
   4F6F FE                 3973 	mov	r6,a
                           3974 ;	genLeftShift
   4F70 8E F0              3975 	mov	b,r6
   4F72 05 F0              3976 	inc	b
   4F74 7E 01              3977 	mov	r6,#0x01
   4F76 7F 00              3978 	mov	r7,#0x00
   4F78 80 07              3979 	sjmp	00170$
   4F7A                    3980 00169$:
   4F7A EE                 3981 	mov	a,r6
   4F7B 25 E0              3982 	add	a,acc
   4F7D FE                 3983 	mov	r6,a
   4F7E EF                 3984 	mov	a,r7
   4F7F 33                 3985 	rlc	a
   4F80 FF                 3986 	mov	r7,a
   4F81                    3987 00170$:
   4F81 D5 F0 F6           3988 	djnz	b,00169$
                           3989 ;	genCpl
   4F84 EE                 3990 	mov	a,r6
   4F85 F4                 3991 	cpl	a
   4F86 FE                 3992 	mov	r6,a
   4F87 EF                 3993 	mov	a,r7
   4F88 F4                 3994 	cpl	a
   4F89 FF                 3995 	mov	r7,a
                           3996 ;	genAnd
   4F8A 90 07 29           3997 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   4F8D EE                 3998 	mov	a,r6
   4F8E 58                 3999 	anl	a,r0
   4F8F F0                 4000 	movx	@dptr,a
   4F90 EF                 4001 	mov	a,r7
   4F91 59                 4002 	anl	a,r1
   4F92 A3                 4003 	inc	dptr
   4F93 F0                 4004 	movx	@dptr,a
                           4005 ;	genIpop
   4F94 D0 07              4006 	pop	ar7
   4F96 D0 06              4007 	pop	ar6
   4F98 02 4F C5           4008 	ljmp	00118$
   4F9B                    4009 00117$:
                    1195   4010 	C$core_gpio.c$276$1$1 ==.
                           4011 ;	../drivers/CoreGPIO/core_gpio.c:276: outputs_state |= 1 << (port_id & 0x0F);
                           4012 ;	genIpush
   4F9B C0 06              4013 	push	ar6
   4F9D C0 07              4014 	push	ar7
                           4015 ;	genAnd
   4F9F 74 0F              4016 	mov	a,#0x0F
   4FA1 5A                 4017 	anl	a,r2
   4FA2 FE                 4018 	mov	r6,a
                           4019 ;	genLeftShift
   4FA3 8E F0              4020 	mov	b,r6
   4FA5 05 F0              4021 	inc	b
   4FA7 7E 01              4022 	mov	r6,#0x01
   4FA9 7F 00              4023 	mov	r7,#0x00
   4FAB 80 07              4024 	sjmp	00172$
   4FAD                    4025 00171$:
   4FAD EE                 4026 	mov	a,r6
   4FAE 25 E0              4027 	add	a,acc
   4FB0 FE                 4028 	mov	r6,a
   4FB1 EF                 4029 	mov	a,r7
   4FB2 33                 4030 	rlc	a
   4FB3 FF                 4031 	mov	r7,a
   4FB4                    4032 00172$:
   4FB4 D5 F0 F6           4033 	djnz	b,00171$
                           4034 ;	genOr
   4FB7 90 07 29           4035 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   4FBA EE                 4036 	mov	a,r6
   4FBB 48                 4037 	orl	a,r0
   4FBC F0                 4038 	movx	@dptr,a
   4FBD EF                 4039 	mov	a,r7
   4FBE 49                 4040 	orl	a,r1
   4FBF A3                 4041 	inc	dptr
   4FC0 F0                 4042 	movx	@dptr,a
                    11BB   4043 	C$core_gpio.c$321$1$1 ==.
                           4044 ;	../drivers/CoreGPIO/core_gpio.c:321: }
                           4045 ;	genIpop
   4FC1 D0 07              4046 	pop	ar7
   4FC3 D0 06              4047 	pop	ar6
                    11BF   4048 	C$core_gpio.c$276$3$10 ==.
                           4049 ;	../drivers/CoreGPIO/core_gpio.c:276: outputs_state |= 1 << (port_id & 0x0F);
   4FC5                    4050 00118$:
                    11BF   4051 	C$core_gpio.c$278$3$10 ==.
                           4052 ;	../drivers/CoreGPIO/core_gpio.c:278: HW_set_16bit_reg( gpio_out_reg_addr, outputs_state );
                           4053 ;	genAssign
   4FC5 90 07 29           4054 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   4FC8 E0                 4055 	movx	a,@dptr
   4FC9 F8                 4056 	mov	r0,a
   4FCA A3                 4057 	inc	dptr
   4FCB E0                 4058 	movx	a,@dptr
   4FCC F9                 4059 	mov	r1,a
                           4060 ;	genAssign
   4FCD 90 00 49           4061 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   4FD0 E8                 4062 	mov	a,r0
   4FD1 F0                 4063 	movx	@dptr,a
   4FD2 A3                 4064 	inc	dptr
   4FD3 E9                 4065 	mov	a,r1
   4FD4 F0                 4066 	movx	@dptr,a
                           4067 ;	genCall
   4FD5 8E 82              4068 	mov	dpl,r6
   4FD7 8F 83              4069 	mov	dph,r7
   4FD9 C0 06              4070 	push	ar6
   4FDB C0 07              4071 	push	ar7
   4FDD C0 00              4072 	push	ar0
   4FDF C0 01              4073 	push	ar1
   4FE1 12 08 9E           4074 	lcall	_HW_set_16bit_reg
   4FE4 D0 01              4075 	pop	ar1
   4FE6 D0 00              4076 	pop	ar0
   4FE8 D0 07              4077 	pop	ar7
   4FEA D0 06              4078 	pop	ar6
                    11E6   4079 	C$core_gpio.c$287$4$13 ==.
                           4080 ;	../drivers/CoreGPIO/core_gpio.c:287: HAL_ASSERT( HW_get_16bit_reg( gpio_out_reg_addr ) == outputs_state );
                           4081 ;	genCall
   4FEC 8E 82              4082 	mov	dpl,r6
   4FEE 8F 83              4083 	mov	dph,r7
   4FF0 C0 00              4084 	push	ar0
   4FF2 C0 01              4085 	push	ar1
   4FF4 12 08 B2           4086 	lcall	_HW_get_16bit_reg
   4FF7 AE 82              4087 	mov	r6,dpl
   4FF9 AF 83              4088 	mov	r7,dph
   4FFB D0 01              4089 	pop	ar1
   4FFD D0 00              4090 	pop	ar0
                           4091 ;	genCmpEq
                           4092 ;	gencjneshort
   4FFF EE                 4093 	mov	a,r6
   5000 B5 00 07           4094 	cjne	a,ar0,00173$
   5003 EF                 4095 	mov	a,r7
   5004 B5 01 03           4096 	cjne	a,ar1,00173$
   5007 02 53 61           4097 	ljmp	00140$
   500A                    4098 00173$:
                           4099 ;	genPointerSet
                           4100 ;     genFarPointerSet
   500A 90 07 2B           4101 	mov	dptr,#_GPIO_set_output_file_name_5_14
   500D 74 2E              4102 	mov	a,#0x2E
   500F F0                 4103 	movx	@dptr,a
                           4104 ;	genPointerSet
                           4105 ;     genFarPointerSet
   5010 90 07 2C           4106 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0001)
   5013 74 2E              4107 	mov	a,#0x2E
   5015 F0                 4108 	movx	@dptr,a
                           4109 ;	genPointerSet
                           4110 ;     genFarPointerSet
   5016 90 07 2D           4111 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0002)
   5019 74 2F              4112 	mov	a,#0x2F
   501B F0                 4113 	movx	@dptr,a
                           4114 ;	genPointerSet
                           4115 ;     genFarPointerSet
   501C 90 07 2E           4116 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0003)
   501F 74 64              4117 	mov	a,#0x64
   5021 F0                 4118 	movx	@dptr,a
                           4119 ;	genPointerSet
                           4120 ;     genFarPointerSet
   5022 90 07 2F           4121 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0004)
   5025 74 72              4122 	mov	a,#0x72
   5027 F0                 4123 	movx	@dptr,a
                           4124 ;	genPointerSet
                           4125 ;     genFarPointerSet
   5028 90 07 30           4126 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0005)
   502B 74 69              4127 	mov	a,#0x69
   502D F0                 4128 	movx	@dptr,a
                           4129 ;	genPointerSet
                           4130 ;     genFarPointerSet
   502E 90 07 31           4131 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0006)
   5031 74 76              4132 	mov	a,#0x76
   5033 F0                 4133 	movx	@dptr,a
                           4134 ;	genPointerSet
                           4135 ;     genFarPointerSet
   5034 90 07 32           4136 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0007)
   5037 74 65              4137 	mov	a,#0x65
   5039 F0                 4138 	movx	@dptr,a
                           4139 ;	genPointerSet
                           4140 ;     genFarPointerSet
   503A 90 07 33           4141 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0008)
   503D 74 72              4142 	mov	a,#0x72
   503F F0                 4143 	movx	@dptr,a
                           4144 ;	genPointerSet
                           4145 ;     genFarPointerSet
   5040 90 07 34           4146 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0009)
   5043 74 73              4147 	mov	a,#0x73
   5045 F0                 4148 	movx	@dptr,a
                           4149 ;	genPointerSet
                           4150 ;     genFarPointerSet
   5046 90 07 35           4151 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000a)
   5049 74 2F              4152 	mov	a,#0x2F
   504B F0                 4153 	movx	@dptr,a
                           4154 ;	genPointerSet
                           4155 ;     genFarPointerSet
   504C 90 07 36           4156 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000b)
   504F 74 43              4157 	mov	a,#0x43
   5051 F0                 4158 	movx	@dptr,a
                           4159 ;	genPointerSet
                           4160 ;     genFarPointerSet
   5052 90 07 37           4161 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000c)
   5055 74 6F              4162 	mov	a,#0x6F
   5057 F0                 4163 	movx	@dptr,a
                           4164 ;	genPointerSet
                           4165 ;     genFarPointerSet
   5058 90 07 38           4166 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000d)
   505B 74 72              4167 	mov	a,#0x72
   505D F0                 4168 	movx	@dptr,a
                           4169 ;	genPointerSet
                           4170 ;     genFarPointerSet
   505E 90 07 39           4171 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000e)
   5061 74 65              4172 	mov	a,#0x65
   5063 F0                 4173 	movx	@dptr,a
                           4174 ;	genPointerSet
                           4175 ;     genFarPointerSet
   5064 90 07 3A           4176 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000f)
   5067 74 47              4177 	mov	a,#0x47
   5069 F0                 4178 	movx	@dptr,a
                           4179 ;	genPointerSet
                           4180 ;     genFarPointerSet
   506A 90 07 3B           4181 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0010)
   506D 74 50              4182 	mov	a,#0x50
   506F F0                 4183 	movx	@dptr,a
                           4184 ;	genPointerSet
                           4185 ;     genFarPointerSet
   5070 90 07 3C           4186 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0011)
   5073 74 49              4187 	mov	a,#0x49
   5075 F0                 4188 	movx	@dptr,a
                           4189 ;	genPointerSet
                           4190 ;     genFarPointerSet
   5076 90 07 3D           4191 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0012)
   5079 74 4F              4192 	mov	a,#0x4F
   507B F0                 4193 	movx	@dptr,a
                           4194 ;	genPointerSet
                           4195 ;     genFarPointerSet
   507C 90 07 3E           4196 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0013)
   507F 74 2F              4197 	mov	a,#0x2F
   5081 F0                 4198 	movx	@dptr,a
                           4199 ;	genPointerSet
                           4200 ;     genFarPointerSet
   5082 90 07 3F           4201 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0014)
   5085 74 63              4202 	mov	a,#0x63
   5087 F0                 4203 	movx	@dptr,a
                           4204 ;	genPointerSet
                           4205 ;     genFarPointerSet
   5088 90 07 40           4206 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0015)
   508B 74 6F              4207 	mov	a,#0x6F
   508D F0                 4208 	movx	@dptr,a
                           4209 ;	genPointerSet
                           4210 ;     genFarPointerSet
   508E 90 07 41           4211 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0016)
   5091 74 72              4212 	mov	a,#0x72
   5093 F0                 4213 	movx	@dptr,a
                           4214 ;	genPointerSet
                           4215 ;     genFarPointerSet
   5094 90 07 42           4216 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0017)
   5097 74 65              4217 	mov	a,#0x65
   5099 F0                 4218 	movx	@dptr,a
                           4219 ;	genPointerSet
                           4220 ;     genFarPointerSet
   509A 90 07 43           4221 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0018)
   509D 74 5F              4222 	mov	a,#0x5F
   509F F0                 4223 	movx	@dptr,a
                           4224 ;	genPointerSet
                           4225 ;     genFarPointerSet
   50A0 90 07 44           4226 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0019)
   50A3 74 67              4227 	mov	a,#0x67
   50A5 F0                 4228 	movx	@dptr,a
                           4229 ;	genPointerSet
                           4230 ;     genFarPointerSet
   50A6 90 07 45           4231 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001a)
   50A9 74 70              4232 	mov	a,#0x70
   50AB F0                 4233 	movx	@dptr,a
                           4234 ;	genPointerSet
                           4235 ;     genFarPointerSet
   50AC 90 07 46           4236 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001b)
   50AF 74 69              4237 	mov	a,#0x69
   50B1 F0                 4238 	movx	@dptr,a
                           4239 ;	genPointerSet
                           4240 ;     genFarPointerSet
   50B2 90 07 47           4241 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001c)
   50B5 74 6F              4242 	mov	a,#0x6F
   50B7 F0                 4243 	movx	@dptr,a
                           4244 ;	genPointerSet
                           4245 ;     genFarPointerSet
   50B8 90 07 48           4246 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001d)
   50BB 74 2E              4247 	mov	a,#0x2E
   50BD F0                 4248 	movx	@dptr,a
                           4249 ;	genPointerSet
                           4250 ;     genFarPointerSet
   50BE 90 07 49           4251 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001e)
   50C1 74 63              4252 	mov	a,#0x63
   50C3 F0                 4253 	movx	@dptr,a
                           4254 ;	genPointerSet
                           4255 ;     genFarPointerSet
   50C4 90 07 4A           4256 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001f)
   50C7 74 00              4257 	mov	a,#0x00
   50C9 F0                 4258 	movx	@dptr,a
                           4259 ;	genAssign
   50CA 90 00 2E           4260 	mov	dptr,#_HAL_assert_fail_PARM_2
   50CD 74 1F              4261 	mov	a,#0x1F
   50CF F0                 4262 	movx	@dptr,a
   50D0 A3                 4263 	inc	dptr
   50D1 74 01              4264 	mov	a,#0x01
   50D3 F0                 4265 	movx	@dptr,a
   50D4 A3                 4266 	inc	dptr
   50D5 74 00              4267 	mov	a,#0x00
   50D7 F0                 4268 	movx	@dptr,a
   50D8 A3                 4269 	inc	dptr
   50D9 74 00              4270 	mov	a,#0x00
   50DB F0                 4271 	movx	@dptr,a
                           4272 ;	genCall
   50DC 75 82 2B           4273 	mov	dpl,#_GPIO_set_output_file_name_5_14
   50DF 75 83 07           4274 	mov	dph,#(_GPIO_set_output_file_name_5_14 >> 8)
   50E2 75 F0 00           4275 	mov	b,#0x00
   50E5 12 08 16           4276 	lcall	_HAL_assert_fail
                    12E2   4277 	C$core_gpio.c$289$2$4 ==.
                           4278 ;	../drivers/CoreGPIO/core_gpio.c:289: break;
   50E8 02 53 61           4279 	ljmp	00140$
                    12E5   4280 	C$core_gpio.c$291$2$4 ==.
                           4281 ;	../drivers/CoreGPIO/core_gpio.c:291: case GPIO_APB_8_BITS_BUS:
   50EB                    4282 00124$:
                    12E5   4283 	C$core_gpio.c$294$3$15 ==.
                           4284 ;	../drivers/CoreGPIO/core_gpio.c:294: uint32_t gpio_out_reg_addr = this_gpio->base_addr + GPIO_OUT_REG_OFFSET + ((port_id >> 3) * 4);
                           4285 ;	genPointerGet
                           4286 ;	genGenPointerGet
   50EB 8B 82              4287 	mov	dpl,r3
   50ED 8C 83              4288 	mov	dph,r4
   50EF 8D F0              4289 	mov	b,r5
   50F1 12 5C 8D           4290 	lcall	__gptrget
   50F4 FB                 4291 	mov	r3,a
   50F5 A3                 4292 	inc	dptr
   50F6 12 5C 8D           4293 	lcall	__gptrget
   50F9 FC                 4294 	mov	r4,a
                           4295 ;	genPlus
                           4296 ;	genPlusIncr
   50FA 74 A0              4297 	mov	a,#0xA0
   50FC 25 03              4298 	add	a,ar3
   50FE FB                 4299 	mov	r3,a
   50FF 74 00              4300 	mov	a,#0x00
   5101 35 04              4301 	addc	a,ar4
   5103 FC                 4302 	mov	r4,a
                           4303 ;	genRightShift
                           4304 ;	genRightShiftLiteral
                           4305 ;	genrshOne
   5104 EA                 4306 	mov	a,r2
   5105 C4                 4307 	swap	a
   5106 23                 4308 	rl	a
   5107 54 1F              4309 	anl	a,#0x1f
   5109 FD                 4310 	mov	r5,a
                           4311 ;	genMult
                           4312 ;	genMultOneByte
   510A ED                 4313 	mov	a,r5
   510B 75 F0 04           4314 	mov	b,#0x04
   510E A4                 4315 	mul	ab
                           4316 ;	genPlus
   510F 25 03              4317 	add	a,ar3
   5111 FB                 4318 	mov	r3,a
   5112 E5 04              4319 	mov	a,ar4
   5114 35 F0              4320 	addc	a,b
   5116 FC                 4321 	mov	r4,a
                           4322 ;	genCast
   5117 7D 00              4323 	mov	r5,#0x00
   5119 7E 00              4324 	mov	r6,#0x00
                    1315   4325 	C$core_gpio.c$296$3$15 ==.
                           4326 ;	../drivers/CoreGPIO/core_gpio.c:296: outputs_state = HW_get_8bit_reg( gpio_out_reg_addr );
                           4327 ;	genCast
                           4328 ;	genCall
   511B 8B 82              4329 	mov	dpl,r3
   511D 8C 83              4330 	mov	dph,r4
   511F C0 02              4331 	push	ar2
   5121 C0 03              4332 	push	ar3
   5123 C0 04              4333 	push	ar4
   5125 12 08 C7           4334 	lcall	_HW_get_8bit_reg
   5128 AD 82              4335 	mov	r5,dpl
   512A D0 04              4336 	pop	ar4
   512C D0 03              4337 	pop	ar3
   512E D0 02              4338 	pop	ar2
                    132A   4339 	C$core_gpio.c$297$3$15 ==.
                           4340 ;	../drivers/CoreGPIO/core_gpio.c:297: if ( 0 == value )
                           4341 ;	genAssign
   5130 90 06 E1           4342 	mov	dptr,#_GPIO_set_output_PARM_3
   5133 E0                 4343 	movx	a,@dptr
   5134 FE                 4344 	mov	r6,a
                           4345 ;	genCmpEq
                           4346 ;	gencjneshort
   5135 BE 00 02           4347 	cjne	r6,#0x00,00174$
   5138 80 03              4348 	sjmp	00175$
   513A                    4349 00174$:
   513A 02 51 5A           4350 	ljmp	00126$
   513D                    4351 00175$:
                    1337   4352 	C$core_gpio.c$299$4$16 ==.
                           4353 ;	../drivers/CoreGPIO/core_gpio.c:299: outputs_state &= ~(1 << (port_id & 0x07));
                           4354 ;	genAnd
   513D 74 07              4355 	mov	a,#0x07
   513F 5A                 4356 	anl	a,r2
                           4357 ;	genLeftShift
   5140 F5 F0              4358 	mov	b,a
   5142 05 F0              4359 	inc	b
   5144 74 01              4360 	mov	a,#0x01
   5146 80 02              4361 	sjmp	00178$
   5148                    4362 00176$:
   5148 25 E0              4363 	add	a,acc
   514A                    4364 00178$:
   514A D5 F0 FB           4365 	djnz	b,00176$
   514D FE                 4366 	mov	r6,a
                           4367 ;	genCpl
   514E EE                 4368 	mov	a,r6
   514F F4                 4369 	cpl	a
   5150 FE                 4370 	mov	r6,a
                           4371 ;	genAnd
   5151 90 07 4B           4372 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   5154 EE                 4373 	mov	a,r6
   5155 5D                 4374 	anl	a,r5
   5156 F0                 4375 	movx	@dptr,a
   5157 02 51 71           4376 	ljmp	00127$
   515A                    4377 00126$:
                    1354   4378 	C$core_gpio.c$303$4$17 ==.
                           4379 ;	../drivers/CoreGPIO/core_gpio.c:303: outputs_state |= 1 << (port_id & 0x07);
                           4380 ;	genAnd
   515A 74 07              4381 	mov	a,#0x07
   515C 5A                 4382 	anl	a,r2
                           4383 ;	genLeftShift
   515D F5 F0              4384 	mov	b,a
   515F 05 F0              4385 	inc	b
   5161 74 01              4386 	mov	a,#0x01
   5163 80 02              4387 	sjmp	00181$
   5165                    4388 00179$:
   5165 25 E0              4389 	add	a,acc
   5167                    4390 00181$:
   5167 D5 F0 FB           4391 	djnz	b,00179$
   516A FA                 4392 	mov	r2,a
                           4393 ;	genOr
   516B 90 07 4B           4394 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   516E EA                 4395 	mov	a,r2
   516F 4D                 4396 	orl	a,r5
   5170 F0                 4397 	movx	@dptr,a
   5171                    4398 00127$:
                    136B   4399 	C$core_gpio.c$305$3$15 ==.
                           4400 ;	../drivers/CoreGPIO/core_gpio.c:305: HW_set_8bit_reg( gpio_out_reg_addr, outputs_state );
                           4401 ;	genAssign
   5171 90 07 4B           4402 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   5174 E0                 4403 	movx	a,@dptr
   5175 FA                 4404 	mov	r2,a
                           4405 ;	genAssign
   5176 90 00 4B           4406 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5179 EA                 4407 	mov	a,r2
   517A F0                 4408 	movx	@dptr,a
                           4409 ;	genCall
   517B 8B 82              4410 	mov	dpl,r3
   517D 8C 83              4411 	mov	dph,r4
   517F C0 02              4412 	push	ar2
   5181 C0 03              4413 	push	ar3
   5183 C0 04              4414 	push	ar4
   5185 12 08 B9           4415 	lcall	_HW_set_8bit_reg
   5188 D0 04              4416 	pop	ar4
   518A D0 03              4417 	pop	ar3
   518C D0 02              4418 	pop	ar2
                    1388   4419 	C$core_gpio.c$314$4$18 ==.
                           4420 ;	../drivers/CoreGPIO/core_gpio.c:314: HAL_ASSERT( HW_get_8bit_reg( gpio_out_reg_addr ) == outputs_state );
                           4421 ;	genCall
   518E 8B 82              4422 	mov	dpl,r3
   5190 8C 83              4423 	mov	dph,r4
   5192 C0 02              4424 	push	ar2
   5194 12 08 C7           4425 	lcall	_HW_get_8bit_reg
   5197 AB 82              4426 	mov	r3,dpl
   5199 D0 02              4427 	pop	ar2
                           4428 ;	genCmpEq
                           4429 ;	gencjneshort
   519B EB                 4430 	mov	a,r3
   519C B5 02 03           4431 	cjne	a,ar2,00182$
   519F 02 53 61           4432 	ljmp	00140$
   51A2                    4433 00182$:
                           4434 ;	genPointerSet
                           4435 ;     genFarPointerSet
   51A2 90 07 4C           4436 	mov	dptr,#_GPIO_set_output_file_name_5_19
   51A5 74 2E              4437 	mov	a,#0x2E
   51A7 F0                 4438 	movx	@dptr,a
                           4439 ;	genPointerSet
                           4440 ;     genFarPointerSet
   51A8 90 07 4D           4441 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0001)
   51AB 74 2E              4442 	mov	a,#0x2E
   51AD F0                 4443 	movx	@dptr,a
                           4444 ;	genPointerSet
                           4445 ;     genFarPointerSet
   51AE 90 07 4E           4446 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0002)
   51B1 74 2F              4447 	mov	a,#0x2F
   51B3 F0                 4448 	movx	@dptr,a
                           4449 ;	genPointerSet
                           4450 ;     genFarPointerSet
   51B4 90 07 4F           4451 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0003)
   51B7 74 64              4452 	mov	a,#0x64
   51B9 F0                 4453 	movx	@dptr,a
                           4454 ;	genPointerSet
                           4455 ;     genFarPointerSet
   51BA 90 07 50           4456 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0004)
   51BD 74 72              4457 	mov	a,#0x72
   51BF F0                 4458 	movx	@dptr,a
                           4459 ;	genPointerSet
                           4460 ;     genFarPointerSet
   51C0 90 07 51           4461 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0005)
   51C3 74 69              4462 	mov	a,#0x69
   51C5 F0                 4463 	movx	@dptr,a
                           4464 ;	genPointerSet
                           4465 ;     genFarPointerSet
   51C6 90 07 52           4466 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0006)
   51C9 74 76              4467 	mov	a,#0x76
   51CB F0                 4468 	movx	@dptr,a
                           4469 ;	genPointerSet
                           4470 ;     genFarPointerSet
   51CC 90 07 53           4471 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0007)
   51CF 74 65              4472 	mov	a,#0x65
   51D1 F0                 4473 	movx	@dptr,a
                           4474 ;	genPointerSet
                           4475 ;     genFarPointerSet
   51D2 90 07 54           4476 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0008)
   51D5 74 72              4477 	mov	a,#0x72
   51D7 F0                 4478 	movx	@dptr,a
                           4479 ;	genPointerSet
                           4480 ;     genFarPointerSet
   51D8 90 07 55           4481 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0009)
   51DB 74 73              4482 	mov	a,#0x73
   51DD F0                 4483 	movx	@dptr,a
                           4484 ;	genPointerSet
                           4485 ;     genFarPointerSet
   51DE 90 07 56           4486 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000a)
   51E1 74 2F              4487 	mov	a,#0x2F
   51E3 F0                 4488 	movx	@dptr,a
                           4489 ;	genPointerSet
                           4490 ;     genFarPointerSet
   51E4 90 07 57           4491 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000b)
   51E7 74 43              4492 	mov	a,#0x43
   51E9 F0                 4493 	movx	@dptr,a
                           4494 ;	genPointerSet
                           4495 ;     genFarPointerSet
   51EA 90 07 58           4496 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000c)
   51ED 74 6F              4497 	mov	a,#0x6F
   51EF F0                 4498 	movx	@dptr,a
                           4499 ;	genPointerSet
                           4500 ;     genFarPointerSet
   51F0 90 07 59           4501 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000d)
   51F3 74 72              4502 	mov	a,#0x72
   51F5 F0                 4503 	movx	@dptr,a
                           4504 ;	genPointerSet
                           4505 ;     genFarPointerSet
   51F6 90 07 5A           4506 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000e)
   51F9 74 65              4507 	mov	a,#0x65
   51FB F0                 4508 	movx	@dptr,a
                           4509 ;	genPointerSet
                           4510 ;     genFarPointerSet
   51FC 90 07 5B           4511 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000f)
   51FF 74 47              4512 	mov	a,#0x47
   5201 F0                 4513 	movx	@dptr,a
                           4514 ;	genPointerSet
                           4515 ;     genFarPointerSet
   5202 90 07 5C           4516 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0010)
   5205 74 50              4517 	mov	a,#0x50
   5207 F0                 4518 	movx	@dptr,a
                           4519 ;	genPointerSet
                           4520 ;     genFarPointerSet
   5208 90 07 5D           4521 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0011)
   520B 74 49              4522 	mov	a,#0x49
   520D F0                 4523 	movx	@dptr,a
                           4524 ;	genPointerSet
                           4525 ;     genFarPointerSet
   520E 90 07 5E           4526 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0012)
   5211 74 4F              4527 	mov	a,#0x4F
   5213 F0                 4528 	movx	@dptr,a
                           4529 ;	genPointerSet
                           4530 ;     genFarPointerSet
   5214 90 07 5F           4531 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0013)
   5217 74 2F              4532 	mov	a,#0x2F
   5219 F0                 4533 	movx	@dptr,a
                           4534 ;	genPointerSet
                           4535 ;     genFarPointerSet
   521A 90 07 60           4536 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0014)
   521D 74 63              4537 	mov	a,#0x63
   521F F0                 4538 	movx	@dptr,a
                           4539 ;	genPointerSet
                           4540 ;     genFarPointerSet
   5220 90 07 61           4541 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0015)
   5223 74 6F              4542 	mov	a,#0x6F
   5225 F0                 4543 	movx	@dptr,a
                           4544 ;	genPointerSet
                           4545 ;     genFarPointerSet
   5226 90 07 62           4546 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0016)
   5229 74 72              4547 	mov	a,#0x72
   522B F0                 4548 	movx	@dptr,a
                           4549 ;	genPointerSet
                           4550 ;     genFarPointerSet
   522C 90 07 63           4551 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0017)
   522F 74 65              4552 	mov	a,#0x65
   5231 F0                 4553 	movx	@dptr,a
                           4554 ;	genPointerSet
                           4555 ;     genFarPointerSet
   5232 90 07 64           4556 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0018)
   5235 74 5F              4557 	mov	a,#0x5F
   5237 F0                 4558 	movx	@dptr,a
                           4559 ;	genPointerSet
                           4560 ;     genFarPointerSet
   5238 90 07 65           4561 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0019)
   523B 74 67              4562 	mov	a,#0x67
   523D F0                 4563 	movx	@dptr,a
                           4564 ;	genPointerSet
                           4565 ;     genFarPointerSet
   523E 90 07 66           4566 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001a)
   5241 74 70              4567 	mov	a,#0x70
   5243 F0                 4568 	movx	@dptr,a
                           4569 ;	genPointerSet
                           4570 ;     genFarPointerSet
   5244 90 07 67           4571 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001b)
   5247 74 69              4572 	mov	a,#0x69
   5249 F0                 4573 	movx	@dptr,a
                           4574 ;	genPointerSet
                           4575 ;     genFarPointerSet
   524A 90 07 68           4576 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001c)
   524D 74 6F              4577 	mov	a,#0x6F
   524F F0                 4578 	movx	@dptr,a
                           4579 ;	genPointerSet
                           4580 ;     genFarPointerSet
   5250 90 07 69           4581 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001d)
   5253 74 2E              4582 	mov	a,#0x2E
   5255 F0                 4583 	movx	@dptr,a
                           4584 ;	genPointerSet
                           4585 ;     genFarPointerSet
   5256 90 07 6A           4586 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001e)
   5259 74 63              4587 	mov	a,#0x63
   525B F0                 4588 	movx	@dptr,a
                           4589 ;	genPointerSet
                           4590 ;     genFarPointerSet
   525C 90 07 6B           4591 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001f)
   525F 74 00              4592 	mov	a,#0x00
   5261 F0                 4593 	movx	@dptr,a
                           4594 ;	genAssign
   5262 90 00 2E           4595 	mov	dptr,#_HAL_assert_fail_PARM_2
   5265 74 3A              4596 	mov	a,#0x3A
   5267 F0                 4597 	movx	@dptr,a
   5268 A3                 4598 	inc	dptr
   5269 74 01              4599 	mov	a,#0x01
   526B F0                 4600 	movx	@dptr,a
   526C A3                 4601 	inc	dptr
   526D 74 00              4602 	mov	a,#0x00
   526F F0                 4603 	movx	@dptr,a
   5270 A3                 4604 	inc	dptr
   5271 74 00              4605 	mov	a,#0x00
   5273 F0                 4606 	movx	@dptr,a
                           4607 ;	genCall
   5274 75 82 4C           4608 	mov	dpl,#_GPIO_set_output_file_name_5_19
   5277 75 83 07           4609 	mov	dph,#(_GPIO_set_output_file_name_5_19 >> 8)
   527A 75 F0 00           4610 	mov	b,#0x00
   527D 12 08 16           4611 	lcall	_HAL_assert_fail
                    147A   4612 	C$core_gpio.c$316$2$4 ==.
                           4613 ;	../drivers/CoreGPIO/core_gpio.c:316: break;
   5280 02 53 61           4614 	ljmp	00140$
                    147D   4615 	C$core_gpio.c$319$2$4 ==.
                           4616 ;	../drivers/CoreGPIO/core_gpio.c:319: HAL_ASSERT(0);
   5283                    4617 00136$:
                           4618 ;	genPointerSet
                           4619 ;     genFarPointerSet
   5283 90 07 6C           4620 	mov	dptr,#_GPIO_set_output_file_name_4_21
   5286 74 2E              4621 	mov	a,#0x2E
   5288 F0                 4622 	movx	@dptr,a
                           4623 ;	genPointerSet
                           4624 ;     genFarPointerSet
   5289 90 07 6D           4625 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0001)
   528C 74 2E              4626 	mov	a,#0x2E
   528E F0                 4627 	movx	@dptr,a
                           4628 ;	genPointerSet
                           4629 ;     genFarPointerSet
   528F 90 07 6E           4630 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0002)
   5292 74 2F              4631 	mov	a,#0x2F
   5294 F0                 4632 	movx	@dptr,a
                           4633 ;	genPointerSet
                           4634 ;     genFarPointerSet
   5295 90 07 6F           4635 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0003)
   5298 74 64              4636 	mov	a,#0x64
   529A F0                 4637 	movx	@dptr,a
                           4638 ;	genPointerSet
                           4639 ;     genFarPointerSet
   529B 90 07 70           4640 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0004)
   529E 74 72              4641 	mov	a,#0x72
   52A0 F0                 4642 	movx	@dptr,a
                           4643 ;	genPointerSet
                           4644 ;     genFarPointerSet
   52A1 90 07 71           4645 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0005)
   52A4 74 69              4646 	mov	a,#0x69
   52A6 F0                 4647 	movx	@dptr,a
                           4648 ;	genPointerSet
                           4649 ;     genFarPointerSet
   52A7 90 07 72           4650 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0006)
   52AA 74 76              4651 	mov	a,#0x76
   52AC F0                 4652 	movx	@dptr,a
                           4653 ;	genPointerSet
                           4654 ;     genFarPointerSet
   52AD 90 07 73           4655 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0007)
   52B0 74 65              4656 	mov	a,#0x65
   52B2 F0                 4657 	movx	@dptr,a
                           4658 ;	genPointerSet
                           4659 ;     genFarPointerSet
   52B3 90 07 74           4660 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0008)
   52B6 74 72              4661 	mov	a,#0x72
   52B8 F0                 4662 	movx	@dptr,a
                           4663 ;	genPointerSet
                           4664 ;     genFarPointerSet
   52B9 90 07 75           4665 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0009)
   52BC 74 73              4666 	mov	a,#0x73
   52BE F0                 4667 	movx	@dptr,a
                           4668 ;	genPointerSet
                           4669 ;     genFarPointerSet
   52BF 90 07 76           4670 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000a)
   52C2 74 2F              4671 	mov	a,#0x2F
   52C4 F0                 4672 	movx	@dptr,a
                           4673 ;	genPointerSet
                           4674 ;     genFarPointerSet
   52C5 90 07 77           4675 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000b)
   52C8 74 43              4676 	mov	a,#0x43
   52CA F0                 4677 	movx	@dptr,a
                           4678 ;	genPointerSet
                           4679 ;     genFarPointerSet
   52CB 90 07 78           4680 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000c)
   52CE 74 6F              4681 	mov	a,#0x6F
   52D0 F0                 4682 	movx	@dptr,a
                           4683 ;	genPointerSet
                           4684 ;     genFarPointerSet
   52D1 90 07 79           4685 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000d)
   52D4 74 72              4686 	mov	a,#0x72
   52D6 F0                 4687 	movx	@dptr,a
                           4688 ;	genPointerSet
                           4689 ;     genFarPointerSet
   52D7 90 07 7A           4690 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000e)
   52DA 74 65              4691 	mov	a,#0x65
   52DC F0                 4692 	movx	@dptr,a
                           4693 ;	genPointerSet
                           4694 ;     genFarPointerSet
   52DD 90 07 7B           4695 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000f)
   52E0 74 47              4696 	mov	a,#0x47
   52E2 F0                 4697 	movx	@dptr,a
                           4698 ;	genPointerSet
                           4699 ;     genFarPointerSet
   52E3 90 07 7C           4700 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0010)
   52E6 74 50              4701 	mov	a,#0x50
   52E8 F0                 4702 	movx	@dptr,a
                           4703 ;	genPointerSet
                           4704 ;     genFarPointerSet
   52E9 90 07 7D           4705 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0011)
   52EC 74 49              4706 	mov	a,#0x49
   52EE F0                 4707 	movx	@dptr,a
                           4708 ;	genPointerSet
                           4709 ;     genFarPointerSet
   52EF 90 07 7E           4710 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0012)
   52F2 74 4F              4711 	mov	a,#0x4F
   52F4 F0                 4712 	movx	@dptr,a
                           4713 ;	genPointerSet
                           4714 ;     genFarPointerSet
   52F5 90 07 7F           4715 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0013)
   52F8 74 2F              4716 	mov	a,#0x2F
   52FA F0                 4717 	movx	@dptr,a
                           4718 ;	genPointerSet
                           4719 ;     genFarPointerSet
   52FB 90 07 80           4720 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0014)
   52FE 74 63              4721 	mov	a,#0x63
   5300 F0                 4722 	movx	@dptr,a
                           4723 ;	genPointerSet
                           4724 ;     genFarPointerSet
   5301 90 07 81           4725 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0015)
   5304 74 6F              4726 	mov	a,#0x6F
   5306 F0                 4727 	movx	@dptr,a
                           4728 ;	genPointerSet
                           4729 ;     genFarPointerSet
   5307 90 07 82           4730 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0016)
   530A 74 72              4731 	mov	a,#0x72
   530C F0                 4732 	movx	@dptr,a
                           4733 ;	genPointerSet
                           4734 ;     genFarPointerSet
   530D 90 07 83           4735 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0017)
   5310 74 65              4736 	mov	a,#0x65
   5312 F0                 4737 	movx	@dptr,a
                           4738 ;	genPointerSet
                           4739 ;     genFarPointerSet
   5313 90 07 84           4740 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0018)
   5316 74 5F              4741 	mov	a,#0x5F
   5318 F0                 4742 	movx	@dptr,a
                           4743 ;	genPointerSet
                           4744 ;     genFarPointerSet
   5319 90 07 85           4745 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0019)
   531C 74 67              4746 	mov	a,#0x67
   531E F0                 4747 	movx	@dptr,a
                           4748 ;	genPointerSet
                           4749 ;     genFarPointerSet
   531F 90 07 86           4750 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001a)
   5322 74 70              4751 	mov	a,#0x70
   5324 F0                 4752 	movx	@dptr,a
                           4753 ;	genPointerSet
                           4754 ;     genFarPointerSet
   5325 90 07 87           4755 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001b)
   5328 74 69              4756 	mov	a,#0x69
   532A F0                 4757 	movx	@dptr,a
                           4758 ;	genPointerSet
                           4759 ;     genFarPointerSet
   532B 90 07 88           4760 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001c)
   532E 74 6F              4761 	mov	a,#0x6F
   5330 F0                 4762 	movx	@dptr,a
                           4763 ;	genPointerSet
                           4764 ;     genFarPointerSet
   5331 90 07 89           4765 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001d)
   5334 74 2E              4766 	mov	a,#0x2E
   5336 F0                 4767 	movx	@dptr,a
                           4768 ;	genPointerSet
                           4769 ;     genFarPointerSet
   5337 90 07 8A           4770 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001e)
   533A 74 63              4771 	mov	a,#0x63
   533C F0                 4772 	movx	@dptr,a
                           4773 ;	genPointerSet
                           4774 ;     genFarPointerSet
   533D 90 07 8B           4775 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001f)
   5340 74 00              4776 	mov	a,#0x00
   5342 F0                 4777 	movx	@dptr,a
                           4778 ;	genAssign
   5343 90 00 2E           4779 	mov	dptr,#_HAL_assert_fail_PARM_2
   5346 74 3F              4780 	mov	a,#0x3F
   5348 F0                 4781 	movx	@dptr,a
   5349 A3                 4782 	inc	dptr
   534A 74 01              4783 	mov	a,#0x01
   534C F0                 4784 	movx	@dptr,a
   534D A3                 4785 	inc	dptr
   534E 74 00              4786 	mov	a,#0x00
   5350 F0                 4787 	movx	@dptr,a
   5351 A3                 4788 	inc	dptr
   5352 74 00              4789 	mov	a,#0x00
   5354 F0                 4790 	movx	@dptr,a
                           4791 ;	genCall
   5355 75 82 6C           4792 	mov	dpl,#_GPIO_set_output_file_name_4_21
   5358 75 83 07           4793 	mov	dph,#(_GPIO_set_output_file_name_4_21 >> 8)
   535B 75 F0 00           4794 	mov	b,#0x00
   535E 12 08 16           4795 	lcall	_HAL_assert_fail
                    155B   4796 	C$core_gpio.c$321$1$1 ==.
                           4797 ;	../drivers/CoreGPIO/core_gpio.c:321: }
   5361                    4798 00140$:
                    155B   4799 	C$core_gpio.c$322$1$1 ==.
                    155B   4800 	XG$GPIO_set_output$0$0 ==.
   5361 22                 4801 	ret
                           4802 ;------------------------------------------------------------
                           4803 ;Allocation info for local variables in function 'GPIO_drive_inout'
                           4804 ;------------------------------------------------------------
                           4805 ;port_id                   Allocated with name '_GPIO_drive_inout_PARM_2'
                           4806 ;inout_state               Allocated with name '_GPIO_drive_inout_PARM_3'
                           4807 ;this_gpio                 Allocated with name '_GPIO_drive_inout_this_gpio_1_1'
                           4808 ;config                    Allocated with name '_GPIO_drive_inout_config_1_1'
                           4809 ;cfg_reg_addr              Allocated with name '_GPIO_drive_inout_cfg_reg_addr_1_1'
                           4810 ;file_name                 Allocated with name '_GPIO_drive_inout_file_name_3_3'
                           4811 ;file_name                 Allocated with name '_GPIO_drive_inout_file_name_4_6'
                           4812 ;------------------------------------------------------------
                    155C   4813 	G$GPIO_drive_inout$0$0 ==.
                    155C   4814 	C$core_gpio.c$328$1$1 ==.
                           4815 ;	../drivers/CoreGPIO/core_gpio.c:328: void GPIO_drive_inout
                           4816 ;	-----------------------------------------
                           4817 ;	 function GPIO_drive_inout
                           4818 ;	-----------------------------------------
   5362                    4819 _GPIO_drive_inout:
                           4820 ;	genReceive
   5362 AA F0              4821 	mov	r2,b
   5364 AB 83              4822 	mov	r3,dph
   5366 E5 82              4823 	mov	a,dpl
   5368 90 07 8E           4824 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   536B F0                 4825 	movx	@dptr,a
   536C A3                 4826 	inc	dptr
   536D EB                 4827 	mov	a,r3
   536E F0                 4828 	movx	@dptr,a
   536F A3                 4829 	inc	dptr
   5370 EA                 4830 	mov	a,r2
   5371 F0                 4831 	movx	@dptr,a
                    156C   4832 	C$core_gpio.c$338$2$2 ==.
                           4833 ;	../drivers/CoreGPIO/core_gpio.c:338: HAL_ASSERT( port_id < NB_OF_GPIO );
                           4834 ;	genAssign
   5372 90 07 8C           4835 	mov	dptr,#_GPIO_drive_inout_PARM_2
   5375 E0                 4836 	movx	a,@dptr
   5376 FA                 4837 	mov	r2,a
                           4838 ;	genCmpLt
                           4839 ;	genCmp
   5377 BA 20 00           4840 	cjne	r2,#0x20,00122$
   537A                    4841 00122$:
                           4842 ;	genIfxJump
   537A 50 03              4843 	jnc	00123$
   537C 02 54 61           4844 	ljmp	00104$
   537F                    4845 00123$:
                           4846 ;	genPointerSet
                           4847 ;     genFarPointerSet
   537F 90 07 91           4848 	mov	dptr,#_GPIO_drive_inout_file_name_3_3
   5382 74 2E              4849 	mov	a,#0x2E
   5384 F0                 4850 	movx	@dptr,a
                           4851 ;	genPointerSet
                           4852 ;     genFarPointerSet
   5385 90 07 92           4853 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0001)
   5388 74 2E              4854 	mov	a,#0x2E
   538A F0                 4855 	movx	@dptr,a
                           4856 ;	genPointerSet
                           4857 ;     genFarPointerSet
   538B 90 07 93           4858 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0002)
   538E 74 2F              4859 	mov	a,#0x2F
   5390 F0                 4860 	movx	@dptr,a
                           4861 ;	genPointerSet
                           4862 ;     genFarPointerSet
   5391 90 07 94           4863 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0003)
   5394 74 64              4864 	mov	a,#0x64
   5396 F0                 4865 	movx	@dptr,a
                           4866 ;	genPointerSet
                           4867 ;     genFarPointerSet
   5397 90 07 95           4868 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0004)
   539A 74 72              4869 	mov	a,#0x72
   539C F0                 4870 	movx	@dptr,a
                           4871 ;	genPointerSet
                           4872 ;     genFarPointerSet
   539D 90 07 96           4873 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0005)
   53A0 74 69              4874 	mov	a,#0x69
   53A2 F0                 4875 	movx	@dptr,a
                           4876 ;	genPointerSet
                           4877 ;     genFarPointerSet
   53A3 90 07 97           4878 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0006)
   53A6 74 76              4879 	mov	a,#0x76
   53A8 F0                 4880 	movx	@dptr,a
                           4881 ;	genPointerSet
                           4882 ;     genFarPointerSet
   53A9 90 07 98           4883 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0007)
   53AC 74 65              4884 	mov	a,#0x65
   53AE F0                 4885 	movx	@dptr,a
                           4886 ;	genPointerSet
                           4887 ;     genFarPointerSet
   53AF 90 07 99           4888 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0008)
   53B2 74 72              4889 	mov	a,#0x72
   53B4 F0                 4890 	movx	@dptr,a
                           4891 ;	genPointerSet
                           4892 ;     genFarPointerSet
   53B5 90 07 9A           4893 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0009)
   53B8 74 73              4894 	mov	a,#0x73
   53BA F0                 4895 	movx	@dptr,a
                           4896 ;	genPointerSet
                           4897 ;     genFarPointerSet
   53BB 90 07 9B           4898 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000a)
   53BE 74 2F              4899 	mov	a,#0x2F
   53C0 F0                 4900 	movx	@dptr,a
                           4901 ;	genPointerSet
                           4902 ;     genFarPointerSet
   53C1 90 07 9C           4903 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000b)
   53C4 74 43              4904 	mov	a,#0x43
   53C6 F0                 4905 	movx	@dptr,a
                           4906 ;	genPointerSet
                           4907 ;     genFarPointerSet
   53C7 90 07 9D           4908 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000c)
   53CA 74 6F              4909 	mov	a,#0x6F
   53CC F0                 4910 	movx	@dptr,a
                           4911 ;	genPointerSet
                           4912 ;     genFarPointerSet
   53CD 90 07 9E           4913 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000d)
   53D0 74 72              4914 	mov	a,#0x72
   53D2 F0                 4915 	movx	@dptr,a
                           4916 ;	genPointerSet
                           4917 ;     genFarPointerSet
   53D3 90 07 9F           4918 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000e)
   53D6 74 65              4919 	mov	a,#0x65
   53D8 F0                 4920 	movx	@dptr,a
                           4921 ;	genPointerSet
                           4922 ;     genFarPointerSet
   53D9 90 07 A0           4923 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000f)
   53DC 74 47              4924 	mov	a,#0x47
   53DE F0                 4925 	movx	@dptr,a
                           4926 ;	genPointerSet
                           4927 ;     genFarPointerSet
   53DF 90 07 A1           4928 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0010)
   53E2 74 50              4929 	mov	a,#0x50
   53E4 F0                 4930 	movx	@dptr,a
                           4931 ;	genPointerSet
                           4932 ;     genFarPointerSet
   53E5 90 07 A2           4933 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0011)
   53E8 74 49              4934 	mov	a,#0x49
   53EA F0                 4935 	movx	@dptr,a
                           4936 ;	genPointerSet
                           4937 ;     genFarPointerSet
   53EB 90 07 A3           4938 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0012)
   53EE 74 4F              4939 	mov	a,#0x4F
   53F0 F0                 4940 	movx	@dptr,a
                           4941 ;	genPointerSet
                           4942 ;     genFarPointerSet
   53F1 90 07 A4           4943 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0013)
   53F4 74 2F              4944 	mov	a,#0x2F
   53F6 F0                 4945 	movx	@dptr,a
                           4946 ;	genPointerSet
                           4947 ;     genFarPointerSet
   53F7 90 07 A5           4948 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0014)
   53FA 74 63              4949 	mov	a,#0x63
   53FC F0                 4950 	movx	@dptr,a
                           4951 ;	genPointerSet
                           4952 ;     genFarPointerSet
   53FD 90 07 A6           4953 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0015)
   5400 74 6F              4954 	mov	a,#0x6F
   5402 F0                 4955 	movx	@dptr,a
                           4956 ;	genPointerSet
                           4957 ;     genFarPointerSet
   5403 90 07 A7           4958 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0016)
   5406 74 72              4959 	mov	a,#0x72
   5408 F0                 4960 	movx	@dptr,a
                           4961 ;	genPointerSet
                           4962 ;     genFarPointerSet
   5409 90 07 A8           4963 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0017)
   540C 74 65              4964 	mov	a,#0x65
   540E F0                 4965 	movx	@dptr,a
                           4966 ;	genPointerSet
                           4967 ;     genFarPointerSet
   540F 90 07 A9           4968 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0018)
   5412 74 5F              4969 	mov	a,#0x5F
   5414 F0                 4970 	movx	@dptr,a
                           4971 ;	genPointerSet
                           4972 ;     genFarPointerSet
   5415 90 07 AA           4973 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0019)
   5418 74 67              4974 	mov	a,#0x67
   541A F0                 4975 	movx	@dptr,a
                           4976 ;	genPointerSet
                           4977 ;     genFarPointerSet
   541B 90 07 AB           4978 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001a)
   541E 74 70              4979 	mov	a,#0x70
   5420 F0                 4980 	movx	@dptr,a
                           4981 ;	genPointerSet
                           4982 ;     genFarPointerSet
   5421 90 07 AC           4983 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001b)
   5424 74 69              4984 	mov	a,#0x69
   5426 F0                 4985 	movx	@dptr,a
                           4986 ;	genPointerSet
                           4987 ;     genFarPointerSet
   5427 90 07 AD           4988 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001c)
   542A 74 6F              4989 	mov	a,#0x6F
   542C F0                 4990 	movx	@dptr,a
                           4991 ;	genPointerSet
                           4992 ;     genFarPointerSet
   542D 90 07 AE           4993 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001d)
   5430 74 2E              4994 	mov	a,#0x2E
   5432 F0                 4995 	movx	@dptr,a
                           4996 ;	genPointerSet
                           4997 ;     genFarPointerSet
   5433 90 07 AF           4998 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001e)
   5436 74 63              4999 	mov	a,#0x63
   5438 F0                 5000 	movx	@dptr,a
                           5001 ;	genPointerSet
                           5002 ;     genFarPointerSet
   5439 90 07 B0           5003 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001f)
   543C 74 00              5004 	mov	a,#0x00
   543E F0                 5005 	movx	@dptr,a
                           5006 ;	genAssign
   543F 90 00 2E           5007 	mov	dptr,#_HAL_assert_fail_PARM_2
   5442 74 52              5008 	mov	a,#0x52
   5444 F0                 5009 	movx	@dptr,a
   5445 A3                 5010 	inc	dptr
   5446 74 01              5011 	mov	a,#0x01
   5448 F0                 5012 	movx	@dptr,a
   5449 A3                 5013 	inc	dptr
   544A 74 00              5014 	mov	a,#0x00
   544C F0                 5015 	movx	@dptr,a
   544D A3                 5016 	inc	dptr
   544E 74 00              5017 	mov	a,#0x00
   5450 F0                 5018 	movx	@dptr,a
                           5019 ;	genCall
   5451 75 82 91           5020 	mov	dpl,#_GPIO_drive_inout_file_name_3_3
   5454 75 83 07           5021 	mov	dph,#(_GPIO_drive_inout_file_name_3_3 >> 8)
   5457 75 F0 00           5022 	mov	b,#0x00
   545A C0 02              5023 	push	ar2
   545C 12 08 16           5024 	lcall	_HAL_assert_fail
   545F D0 02              5025 	pop	ar2
   5461                    5026 00104$:
                    165B   5027 	C$core_gpio.c$340$1$1 ==.
                           5028 ;	../drivers/CoreGPIO/core_gpio.c:340: switch( inout_state )
                           5029 ;	genAssign
   5461 90 07 8D           5030 	mov	dptr,#_GPIO_drive_inout_PARM_3
   5464 E0                 5031 	movx	a,@dptr
   5465 FB                 5032 	mov	r3,a
                           5033 ;	genCmpEq
                           5034 ;	gencjneshort
   5466 BB 00 03           5035 	cjne	r3,#0x00,00124$
   5469 02 54 F2           5036 	ljmp	00107$
   546C                    5037 00124$:
                           5038 ;	genCmpEq
                           5039 ;	gencjneshort
   546C BB 01 03           5040 	cjne	r3,#0x01,00125$
   546F 02 54 7B           5041 	ljmp	00106$
   5472                    5042 00125$:
                           5043 ;	genCmpEq
                           5044 ;	gencjneshort
   5472 BB 02 03           5045 	cjne	r3,#0x02,00126$
   5475 02 55 69           5046 	ljmp	00108$
   5478                    5047 00126$:
   5478 02 55 BD           5048 	ljmp	00112$
                    1675   5049 	C$core_gpio.c$342$2$4 ==.
                           5050 ;	../drivers/CoreGPIO/core_gpio.c:342: case GPIO_DRIVE_HIGH:
   547B                    5051 00106$:
                    1675   5052 	C$core_gpio.c$344$2$4 ==.
                           5053 ;	../drivers/CoreGPIO/core_gpio.c:344: GPIO_set_output( this_gpio, port_id, 1 );
                           5054 ;	genAssign
   547B 90 07 8E           5055 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   547E E0                 5056 	movx	a,@dptr
   547F FB                 5057 	mov	r3,a
   5480 A3                 5058 	inc	dptr
   5481 E0                 5059 	movx	a,@dptr
   5482 FC                 5060 	mov	r4,a
   5483 A3                 5061 	inc	dptr
   5484 E0                 5062 	movx	a,@dptr
   5485 FD                 5063 	mov	r5,a
                           5064 ;	genAssign
   5486 90 06 E0           5065 	mov	dptr,#_GPIO_set_output_PARM_2
   5489 EA                 5066 	mov	a,r2
   548A F0                 5067 	movx	@dptr,a
                           5068 ;	genAssign
   548B 90 06 E1           5069 	mov	dptr,#_GPIO_set_output_PARM_3
   548E 74 01              5070 	mov	a,#0x01
   5490 F0                 5071 	movx	@dptr,a
                           5072 ;	genCall
   5491 8B 82              5073 	mov	dpl,r3
   5493 8C 83              5074 	mov	dph,r4
   5495 8D F0              5075 	mov	b,r5
   5497 C0 02              5076 	push	ar2
   5499 12 4B B9           5077 	lcall	_GPIO_set_output
   549C D0 02              5078 	pop	ar2
                    1698   5079 	C$core_gpio.c$347$2$4 ==.
                           5080 ;	../drivers/CoreGPIO/core_gpio.c:347: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5081 ;	genAssign
   549E 90 07 8E           5082 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   54A1 E0                 5083 	movx	a,@dptr
   54A2 FB                 5084 	mov	r3,a
   54A3 A3                 5085 	inc	dptr
   54A4 E0                 5086 	movx	a,@dptr
   54A5 FC                 5087 	mov	r4,a
   54A6 A3                 5088 	inc	dptr
   54A7 E0                 5089 	movx	a,@dptr
   54A8 FD                 5090 	mov	r5,a
                           5091 ;	genPointerGet
                           5092 ;	genGenPointerGet
   54A9 8B 82              5093 	mov	dpl,r3
   54AB 8C 83              5094 	mov	dph,r4
   54AD 8D F0              5095 	mov	b,r5
   54AF 12 5C 8D           5096 	lcall	__gptrget
   54B2 FB                 5097 	mov	r3,a
   54B3 A3                 5098 	inc	dptr
   54B4 12 5C 8D           5099 	lcall	__gptrget
   54B7 FC                 5100 	mov	r4,a
                           5101 ;	genMult
                           5102 ;	genMultOneByte
   54B8 EA                 5103 	mov	a,r2
   54B9 75 F0 04           5104 	mov	b,#0x04
   54BC A4                 5105 	mul	ab
                           5106 ;	genPlus
   54BD 25 03              5107 	add	a,ar3
   54BF FB                 5108 	mov	r3,a
   54C0 E5 04              5109 	mov	a,ar4
   54C2 35 F0              5110 	addc	a,b
   54C4 FC                 5111 	mov	r4,a
                           5112 ;	genCast
   54C5 7D 00              5113 	mov	r5,#0x00
   54C7 7E 00              5114 	mov	r6,#0x00
                    16C3   5115 	C$core_gpio.c$348$2$4 ==.
                           5116 ;	../drivers/CoreGPIO/core_gpio.c:348: config = HW_get_8bit_reg( cfg_reg_addr );
                           5117 ;	genCast
                           5118 ;	genCall
   54C9 8B 82              5119 	mov	dpl,r3
   54CB 8C 83              5120 	mov	dph,r4
   54CD C0 03              5121 	push	ar3
   54CF C0 04              5122 	push	ar4
   54D1 12 08 C7           5123 	lcall	_HW_get_8bit_reg
   54D4 AD 82              5124 	mov	r5,dpl
   54D6 D0 04              5125 	pop	ar4
   54D8 D0 03              5126 	pop	ar3
                           5127 ;	genCast
   54DA 7E 00              5128 	mov	r6,#0x00
   54DC 7F 00              5129 	mov	r7,#0x00
   54DE 78 00              5130 	mov	r0,#0x00
                    16DA   5131 	C$core_gpio.c$349$2$4 ==.
                           5132 ;	../drivers/CoreGPIO/core_gpio.c:349: config |= OUTPUT_BUFFER_ENABLE_MASK;
                           5133 ;	genOr
   54E0 43 05 04           5134 	orl	ar5,#0x04
                    16DD   5135 	C$core_gpio.c$350$2$4 ==.
                           5136 ;	../drivers/CoreGPIO/core_gpio.c:350: HW_set_8bit_reg( cfg_reg_addr, config );
                           5137 ;	genCast
   54E3 90 00 4B           5138 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   54E6 ED                 5139 	mov	a,r5
   54E7 F0                 5140 	movx	@dptr,a
                           5141 ;	genCall
   54E8 8B 82              5142 	mov	dpl,r3
   54EA 8C 83              5143 	mov	dph,r4
   54EC 12 08 B9           5144 	lcall	_HW_set_8bit_reg
                    16E9   5145 	C$core_gpio.c$351$2$4 ==.
                           5146 ;	../drivers/CoreGPIO/core_gpio.c:351: break;
   54EF 02 56 9B           5147 	ljmp	00116$
                    16EC   5148 	C$core_gpio.c$353$2$4 ==.
                           5149 ;	../drivers/CoreGPIO/core_gpio.c:353: case GPIO_DRIVE_LOW:
   54F2                    5150 00107$:
                    16EC   5151 	C$core_gpio.c$355$2$4 ==.
                           5152 ;	../drivers/CoreGPIO/core_gpio.c:355: GPIO_set_output( this_gpio, port_id, 0 );
                           5153 ;	genAssign
   54F2 90 07 8E           5154 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   54F5 E0                 5155 	movx	a,@dptr
   54F6 FB                 5156 	mov	r3,a
   54F7 A3                 5157 	inc	dptr
   54F8 E0                 5158 	movx	a,@dptr
   54F9 FC                 5159 	mov	r4,a
   54FA A3                 5160 	inc	dptr
   54FB E0                 5161 	movx	a,@dptr
   54FC FD                 5162 	mov	r5,a
                           5163 ;	genAssign
   54FD 90 06 E0           5164 	mov	dptr,#_GPIO_set_output_PARM_2
   5500 EA                 5165 	mov	a,r2
   5501 F0                 5166 	movx	@dptr,a
                           5167 ;	genAssign
   5502 90 06 E1           5168 	mov	dptr,#_GPIO_set_output_PARM_3
   5505 74 00              5169 	mov	a,#0x00
   5507 F0                 5170 	movx	@dptr,a
                           5171 ;	genCall
   5508 8B 82              5172 	mov	dpl,r3
   550A 8C 83              5173 	mov	dph,r4
   550C 8D F0              5174 	mov	b,r5
   550E C0 02              5175 	push	ar2
   5510 12 4B B9           5176 	lcall	_GPIO_set_output
   5513 D0 02              5177 	pop	ar2
                    170F   5178 	C$core_gpio.c$358$2$4 ==.
                           5179 ;	../drivers/CoreGPIO/core_gpio.c:358: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5180 ;	genAssign
   5515 90 07 8E           5181 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   5518 E0                 5182 	movx	a,@dptr
   5519 FB                 5183 	mov	r3,a
   551A A3                 5184 	inc	dptr
   551B E0                 5185 	movx	a,@dptr
   551C FC                 5186 	mov	r4,a
   551D A3                 5187 	inc	dptr
   551E E0                 5188 	movx	a,@dptr
   551F FD                 5189 	mov	r5,a
                           5190 ;	genPointerGet
                           5191 ;	genGenPointerGet
   5520 8B 82              5192 	mov	dpl,r3
   5522 8C 83              5193 	mov	dph,r4
   5524 8D F0              5194 	mov	b,r5
   5526 12 5C 8D           5195 	lcall	__gptrget
   5529 FB                 5196 	mov	r3,a
   552A A3                 5197 	inc	dptr
   552B 12 5C 8D           5198 	lcall	__gptrget
   552E FC                 5199 	mov	r4,a
                           5200 ;	genMult
                           5201 ;	genMultOneByte
   552F EA                 5202 	mov	a,r2
   5530 75 F0 04           5203 	mov	b,#0x04
   5533 A4                 5204 	mul	ab
                           5205 ;	genPlus
   5534 25 03              5206 	add	a,ar3
   5536 FB                 5207 	mov	r3,a
   5537 E5 04              5208 	mov	a,ar4
   5539 35 F0              5209 	addc	a,b
   553B FC                 5210 	mov	r4,a
                           5211 ;	genCast
   553C 7D 00              5212 	mov	r5,#0x00
   553E 7E 00              5213 	mov	r6,#0x00
                    173A   5214 	C$core_gpio.c$359$2$4 ==.
                           5215 ;	../drivers/CoreGPIO/core_gpio.c:359: config = HW_get_8bit_reg( cfg_reg_addr );
                           5216 ;	genCast
                           5217 ;	genCall
   5540 8B 82              5218 	mov	dpl,r3
   5542 8C 83              5219 	mov	dph,r4
   5544 C0 03              5220 	push	ar3
   5546 C0 04              5221 	push	ar4
   5548 12 08 C7           5222 	lcall	_HW_get_8bit_reg
   554B AD 82              5223 	mov	r5,dpl
   554D D0 04              5224 	pop	ar4
   554F D0 03              5225 	pop	ar3
                           5226 ;	genCast
   5551 7E 00              5227 	mov	r6,#0x00
   5553 7F 00              5228 	mov	r7,#0x00
   5555 78 00              5229 	mov	r0,#0x00
                    1751   5230 	C$core_gpio.c$360$2$4 ==.
                           5231 ;	../drivers/CoreGPIO/core_gpio.c:360: config |= OUTPUT_BUFFER_ENABLE_MASK;
                           5232 ;	genOr
   5557 43 05 04           5233 	orl	ar5,#0x04
                    1754   5234 	C$core_gpio.c$361$2$4 ==.
                           5235 ;	../drivers/CoreGPIO/core_gpio.c:361: HW_set_8bit_reg( cfg_reg_addr, config );
                           5236 ;	genCast
   555A 90 00 4B           5237 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   555D ED                 5238 	mov	a,r5
   555E F0                 5239 	movx	@dptr,a
                           5240 ;	genCall
   555F 8B 82              5241 	mov	dpl,r3
   5561 8C 83              5242 	mov	dph,r4
   5563 12 08 B9           5243 	lcall	_HW_set_8bit_reg
                    1760   5244 	C$core_gpio.c$362$2$4 ==.
                           5245 ;	../drivers/CoreGPIO/core_gpio.c:362: break;
   5566 02 56 9B           5246 	ljmp	00116$
                    1763   5247 	C$core_gpio.c$364$2$4 ==.
                           5248 ;	../drivers/CoreGPIO/core_gpio.c:364: case GPIO_HIGH_Z:
   5569                    5249 00108$:
                    1763   5250 	C$core_gpio.c$366$2$4 ==.
                           5251 ;	../drivers/CoreGPIO/core_gpio.c:366: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5252 ;	genAssign
   5569 90 07 8E           5253 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   556C E0                 5254 	movx	a,@dptr
   556D FB                 5255 	mov	r3,a
   556E A3                 5256 	inc	dptr
   556F E0                 5257 	movx	a,@dptr
   5570 FC                 5258 	mov	r4,a
   5571 A3                 5259 	inc	dptr
   5572 E0                 5260 	movx	a,@dptr
   5573 FD                 5261 	mov	r5,a
                           5262 ;	genPointerGet
                           5263 ;	genGenPointerGet
   5574 8B 82              5264 	mov	dpl,r3
   5576 8C 83              5265 	mov	dph,r4
   5578 8D F0              5266 	mov	b,r5
   557A 12 5C 8D           5267 	lcall	__gptrget
   557D FB                 5268 	mov	r3,a
   557E A3                 5269 	inc	dptr
   557F 12 5C 8D           5270 	lcall	__gptrget
   5582 FC                 5271 	mov	r4,a
                           5272 ;	genMult
                           5273 ;	genMultOneByte
   5583 EA                 5274 	mov	a,r2
   5584 75 F0 04           5275 	mov	b,#0x04
   5587 A4                 5276 	mul	ab
                           5277 ;	genPlus
   5588 25 03              5278 	add	a,ar3
   558A FB                 5279 	mov	r3,a
   558B E5 04              5280 	mov	a,ar4
   558D 35 F0              5281 	addc	a,b
   558F FC                 5282 	mov	r4,a
                           5283 ;	genCast
   5590 7A 00              5284 	mov	r2,#0x00
   5592 7D 00              5285 	mov	r5,#0x00
                    178E   5286 	C$core_gpio.c$367$2$4 ==.
                           5287 ;	../drivers/CoreGPIO/core_gpio.c:367: config = HW_get_8bit_reg( cfg_reg_addr );
                           5288 ;	genCast
                           5289 ;	genCall
   5594 8B 82              5290 	mov	dpl,r3
   5596 8C 83              5291 	mov	dph,r4
   5598 C0 03              5292 	push	ar3
   559A C0 04              5293 	push	ar4
   559C 12 08 C7           5294 	lcall	_HW_get_8bit_reg
   559F AA 82              5295 	mov	r2,dpl
   55A1 D0 04              5296 	pop	ar4
   55A3 D0 03              5297 	pop	ar3
                           5298 ;	genCast
   55A5 7D 00              5299 	mov	r5,#0x00
   55A7 7E 00              5300 	mov	r6,#0x00
   55A9 7F 00              5301 	mov	r7,#0x00
                    17A5   5302 	C$core_gpio.c$368$2$4 ==.
                           5303 ;	../drivers/CoreGPIO/core_gpio.c:368: config &= ~OUTPUT_BUFFER_ENABLE_MASK;
                           5304 ;	genAnd
   55AB 53 02 FB           5305 	anl	ar2,#0xFB
                    17A8   5306 	C$core_gpio.c$369$2$4 ==.
                           5307 ;	../drivers/CoreGPIO/core_gpio.c:369: HW_set_8bit_reg( cfg_reg_addr, config );
                           5308 ;	genCast
   55AE 90 00 4B           5309 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   55B1 EA                 5310 	mov	a,r2
   55B2 F0                 5311 	movx	@dptr,a
                           5312 ;	genCall
   55B3 8B 82              5313 	mov	dpl,r3
   55B5 8C 83              5314 	mov	dph,r4
   55B7 12 08 B9           5315 	lcall	_HW_set_8bit_reg
                    17B4   5316 	C$core_gpio.c$370$2$4 ==.
                           5317 ;	../drivers/CoreGPIO/core_gpio.c:370: break;
   55BA 02 56 9B           5318 	ljmp	00116$
                    17B7   5319 	C$core_gpio.c$373$2$4 ==.
                           5320 ;	../drivers/CoreGPIO/core_gpio.c:373: HAL_ASSERT(0);
   55BD                    5321 00112$:
                           5322 ;	genPointerSet
                           5323 ;     genFarPointerSet
   55BD 90 07 B1           5324 	mov	dptr,#_GPIO_drive_inout_file_name_4_6
   55C0 74 2E              5325 	mov	a,#0x2E
   55C2 F0                 5326 	movx	@dptr,a
                           5327 ;	genPointerSet
                           5328 ;     genFarPointerSet
   55C3 90 07 B2           5329 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0001)
   55C6 74 2E              5330 	mov	a,#0x2E
   55C8 F0                 5331 	movx	@dptr,a
                           5332 ;	genPointerSet
                           5333 ;     genFarPointerSet
   55C9 90 07 B3           5334 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0002)
   55CC 74 2F              5335 	mov	a,#0x2F
   55CE F0                 5336 	movx	@dptr,a
                           5337 ;	genPointerSet
                           5338 ;     genFarPointerSet
   55CF 90 07 B4           5339 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0003)
   55D2 74 64              5340 	mov	a,#0x64
   55D4 F0                 5341 	movx	@dptr,a
                           5342 ;	genPointerSet
                           5343 ;     genFarPointerSet
   55D5 90 07 B5           5344 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0004)
   55D8 74 72              5345 	mov	a,#0x72
   55DA F0                 5346 	movx	@dptr,a
                           5347 ;	genPointerSet
                           5348 ;     genFarPointerSet
   55DB 90 07 B6           5349 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0005)
   55DE 74 69              5350 	mov	a,#0x69
   55E0 F0                 5351 	movx	@dptr,a
                           5352 ;	genPointerSet
                           5353 ;     genFarPointerSet
   55E1 90 07 B7           5354 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0006)
   55E4 74 76              5355 	mov	a,#0x76
   55E6 F0                 5356 	movx	@dptr,a
                           5357 ;	genPointerSet
                           5358 ;     genFarPointerSet
   55E7 90 07 B8           5359 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0007)
   55EA 74 65              5360 	mov	a,#0x65
   55EC F0                 5361 	movx	@dptr,a
                           5362 ;	genPointerSet
                           5363 ;     genFarPointerSet
   55ED 90 07 B9           5364 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0008)
   55F0 74 72              5365 	mov	a,#0x72
   55F2 F0                 5366 	movx	@dptr,a
                           5367 ;	genPointerSet
                           5368 ;     genFarPointerSet
   55F3 90 07 BA           5369 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0009)
   55F6 74 73              5370 	mov	a,#0x73
   55F8 F0                 5371 	movx	@dptr,a
                           5372 ;	genPointerSet
                           5373 ;     genFarPointerSet
   55F9 90 07 BB           5374 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000a)
   55FC 74 2F              5375 	mov	a,#0x2F
   55FE F0                 5376 	movx	@dptr,a
                           5377 ;	genPointerSet
                           5378 ;     genFarPointerSet
   55FF 90 07 BC           5379 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000b)
   5602 74 43              5380 	mov	a,#0x43
   5604 F0                 5381 	movx	@dptr,a
                           5382 ;	genPointerSet
                           5383 ;     genFarPointerSet
   5605 90 07 BD           5384 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000c)
   5608 74 6F              5385 	mov	a,#0x6F
   560A F0                 5386 	movx	@dptr,a
                           5387 ;	genPointerSet
                           5388 ;     genFarPointerSet
   560B 90 07 BE           5389 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000d)
   560E 74 72              5390 	mov	a,#0x72
   5610 F0                 5391 	movx	@dptr,a
                           5392 ;	genPointerSet
                           5393 ;     genFarPointerSet
   5611 90 07 BF           5394 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000e)
   5614 74 65              5395 	mov	a,#0x65
   5616 F0                 5396 	movx	@dptr,a
                           5397 ;	genPointerSet
                           5398 ;     genFarPointerSet
   5617 90 07 C0           5399 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000f)
   561A 74 47              5400 	mov	a,#0x47
   561C F0                 5401 	movx	@dptr,a
                           5402 ;	genPointerSet
                           5403 ;     genFarPointerSet
   561D 90 07 C1           5404 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0010)
   5620 74 50              5405 	mov	a,#0x50
   5622 F0                 5406 	movx	@dptr,a
                           5407 ;	genPointerSet
                           5408 ;     genFarPointerSet
   5623 90 07 C2           5409 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0011)
   5626 74 49              5410 	mov	a,#0x49
   5628 F0                 5411 	movx	@dptr,a
                           5412 ;	genPointerSet
                           5413 ;     genFarPointerSet
   5629 90 07 C3           5414 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0012)
   562C 74 4F              5415 	mov	a,#0x4F
   562E F0                 5416 	movx	@dptr,a
                           5417 ;	genPointerSet
                           5418 ;     genFarPointerSet
   562F 90 07 C4           5419 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0013)
   5632 74 2F              5420 	mov	a,#0x2F
   5634 F0                 5421 	movx	@dptr,a
                           5422 ;	genPointerSet
                           5423 ;     genFarPointerSet
   5635 90 07 C5           5424 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0014)
   5638 74 63              5425 	mov	a,#0x63
   563A F0                 5426 	movx	@dptr,a
                           5427 ;	genPointerSet
                           5428 ;     genFarPointerSet
   563B 90 07 C6           5429 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0015)
   563E 74 6F              5430 	mov	a,#0x6F
   5640 F0                 5431 	movx	@dptr,a
                           5432 ;	genPointerSet
                           5433 ;     genFarPointerSet
   5641 90 07 C7           5434 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0016)
   5644 74 72              5435 	mov	a,#0x72
   5646 F0                 5436 	movx	@dptr,a
                           5437 ;	genPointerSet
                           5438 ;     genFarPointerSet
   5647 90 07 C8           5439 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0017)
   564A 74 65              5440 	mov	a,#0x65
   564C F0                 5441 	movx	@dptr,a
                           5442 ;	genPointerSet
                           5443 ;     genFarPointerSet
   564D 90 07 C9           5444 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0018)
   5650 74 5F              5445 	mov	a,#0x5F
   5652 F0                 5446 	movx	@dptr,a
                           5447 ;	genPointerSet
                           5448 ;     genFarPointerSet
   5653 90 07 CA           5449 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0019)
   5656 74 67              5450 	mov	a,#0x67
   5658 F0                 5451 	movx	@dptr,a
                           5452 ;	genPointerSet
                           5453 ;     genFarPointerSet
   5659 90 07 CB           5454 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001a)
   565C 74 70              5455 	mov	a,#0x70
   565E F0                 5456 	movx	@dptr,a
                           5457 ;	genPointerSet
                           5458 ;     genFarPointerSet
   565F 90 07 CC           5459 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001b)
   5662 74 69              5460 	mov	a,#0x69
   5664 F0                 5461 	movx	@dptr,a
                           5462 ;	genPointerSet
                           5463 ;     genFarPointerSet
   5665 90 07 CD           5464 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001c)
   5668 74 6F              5465 	mov	a,#0x6F
   566A F0                 5466 	movx	@dptr,a
                           5467 ;	genPointerSet
                           5468 ;     genFarPointerSet
   566B 90 07 CE           5469 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001d)
   566E 74 2E              5470 	mov	a,#0x2E
   5670 F0                 5471 	movx	@dptr,a
                           5472 ;	genPointerSet
                           5473 ;     genFarPointerSet
   5671 90 07 CF           5474 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001e)
   5674 74 63              5475 	mov	a,#0x63
   5676 F0                 5476 	movx	@dptr,a
                           5477 ;	genPointerSet
                           5478 ;     genFarPointerSet
   5677 90 07 D0           5479 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001f)
   567A 74 00              5480 	mov	a,#0x00
   567C F0                 5481 	movx	@dptr,a
                           5482 ;	genAssign
   567D 90 00 2E           5483 	mov	dptr,#_HAL_assert_fail_PARM_2
   5680 74 75              5484 	mov	a,#0x75
   5682 F0                 5485 	movx	@dptr,a
   5683 A3                 5486 	inc	dptr
   5684 74 01              5487 	mov	a,#0x01
   5686 F0                 5488 	movx	@dptr,a
   5687 A3                 5489 	inc	dptr
   5688 74 00              5490 	mov	a,#0x00
   568A F0                 5491 	movx	@dptr,a
   568B A3                 5492 	inc	dptr
   568C 74 00              5493 	mov	a,#0x00
   568E F0                 5494 	movx	@dptr,a
                           5495 ;	genCall
   568F 75 82 B1           5496 	mov	dpl,#_GPIO_drive_inout_file_name_4_6
   5692 75 83 07           5497 	mov	dph,#(_GPIO_drive_inout_file_name_4_6 >> 8)
   5695 75 F0 00           5498 	mov	b,#0x00
   5698 12 08 16           5499 	lcall	_HAL_assert_fail
                    1895   5500 	C$core_gpio.c$375$1$1 ==.
                           5501 ;	../drivers/CoreGPIO/core_gpio.c:375: }
   569B                    5502 00116$:
                    1895   5503 	C$core_gpio.c$376$1$1 ==.
                    1895   5504 	XG$GPIO_drive_inout$0$0 ==.
   569B 22                 5505 	ret
                           5506 ;------------------------------------------------------------
                           5507 ;Allocation info for local variables in function 'GPIO_enable_irq'
                           5508 ;------------------------------------------------------------
                           5509 ;port_id                   Allocated with name '_GPIO_enable_irq_PARM_2'
                           5510 ;this_gpio                 Allocated with name '_GPIO_enable_irq_this_gpio_1_1'
                           5511 ;cfg_value                 Allocated with name '_GPIO_enable_irq_cfg_value_1_1'
                           5512 ;cfg_reg_addr              Allocated with name '_GPIO_enable_irq_cfg_reg_addr_1_1'
                           5513 ;file_name                 Allocated with name '_GPIO_enable_irq_file_name_3_3'
                           5514 ;------------------------------------------------------------
                    1896   5515 	G$GPIO_enable_irq$0$0 ==.
                    1896   5516 	C$core_gpio.c$382$1$1 ==.
                           5517 ;	../drivers/CoreGPIO/core_gpio.c:382: void GPIO_enable_irq
                           5518 ;	-----------------------------------------
                           5519 ;	 function GPIO_enable_irq
                           5520 ;	-----------------------------------------
   569C                    5521 _GPIO_enable_irq:
                           5522 ;	genReceive
   569C AA F0              5523 	mov	r2,b
   569E AB 83              5524 	mov	r3,dph
   56A0 E5 82              5525 	mov	a,dpl
   56A2 90 07 D2           5526 	mov	dptr,#_GPIO_enable_irq_this_gpio_1_1
   56A5 F0                 5527 	movx	@dptr,a
   56A6 A3                 5528 	inc	dptr
   56A7 EB                 5529 	mov	a,r3
   56A8 F0                 5530 	movx	@dptr,a
   56A9 A3                 5531 	inc	dptr
   56AA EA                 5532 	mov	a,r2
   56AB F0                 5533 	movx	@dptr,a
                    18A6   5534 	C$core_gpio.c$389$1$1 ==.
                           5535 ;	../drivers/CoreGPIO/core_gpio.c:389: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           5536 ;	genAssign
   56AC 90 07 D2           5537 	mov	dptr,#_GPIO_enable_irq_this_gpio_1_1
   56AF E0                 5538 	movx	a,@dptr
   56B0 FA                 5539 	mov	r2,a
   56B1 A3                 5540 	inc	dptr
   56B2 E0                 5541 	movx	a,@dptr
   56B3 FB                 5542 	mov	r3,a
   56B4 A3                 5543 	inc	dptr
   56B5 E0                 5544 	movx	a,@dptr
   56B6 FC                 5545 	mov	r4,a
                           5546 ;	genPointerGet
                           5547 ;	genGenPointerGet
   56B7 8A 82              5548 	mov	dpl,r2
   56B9 8B 83              5549 	mov	dph,r3
   56BB 8C F0              5550 	mov	b,r4
   56BD 12 5C 8D           5551 	lcall	__gptrget
   56C0 FA                 5552 	mov	r2,a
   56C1 A3                 5553 	inc	dptr
   56C2 12 5C 8D           5554 	lcall	__gptrget
   56C5 FB                 5555 	mov	r3,a
                           5556 ;	genCast
   56C6 7C 00              5557 	mov	r4,#0x00
   56C8 7D 00              5558 	mov	r5,#0x00
                    18C4   5559 	C$core_gpio.c$391$2$2 ==.
                           5560 ;	../drivers/CoreGPIO/core_gpio.c:391: HAL_ASSERT( port_id < NB_OF_GPIO );
                           5561 ;	genAssign
   56CA 90 07 D1           5562 	mov	dptr,#_GPIO_enable_irq_PARM_2
   56CD E0                 5563 	movx	a,@dptr
   56CE FE                 5564 	mov	r6,a
                           5565 ;	genCmpLt
                           5566 ;	genCmp
   56CF BE 20 00           5567 	cjne	r6,#0x20,00112$
   56D2                    5568 00112$:
   56D2 E4                 5569 	clr	a
   56D3 33                 5570 	rlc	a
   56D4 FF                 5571 	mov	r7,a
                           5572 ;	genIfx
   56D5 EF                 5573 	mov	a,r7
                           5574 ;	genIfxJump
   56D6 60 03              5575 	jz	00113$
   56D8 02 57 D1           5576 	ljmp	00104$
   56DB                    5577 00113$:
                           5578 ;	genPointerSet
                           5579 ;     genFarPointerSet
   56DB 90 07 D5           5580 	mov	dptr,#_GPIO_enable_irq_file_name_3_3
   56DE 74 2E              5581 	mov	a,#0x2E
   56E0 F0                 5582 	movx	@dptr,a
                           5583 ;	genPointerSet
                           5584 ;     genFarPointerSet
   56E1 90 07 D6           5585 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0001)
   56E4 74 2E              5586 	mov	a,#0x2E
   56E6 F0                 5587 	movx	@dptr,a
                           5588 ;	genPointerSet
                           5589 ;     genFarPointerSet
   56E7 90 07 D7           5590 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0002)
   56EA 74 2F              5591 	mov	a,#0x2F
   56EC F0                 5592 	movx	@dptr,a
                           5593 ;	genPointerSet
                           5594 ;     genFarPointerSet
   56ED 90 07 D8           5595 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0003)
   56F0 74 64              5596 	mov	a,#0x64
   56F2 F0                 5597 	movx	@dptr,a
                           5598 ;	genPointerSet
                           5599 ;     genFarPointerSet
   56F3 90 07 D9           5600 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0004)
   56F6 74 72              5601 	mov	a,#0x72
   56F8 F0                 5602 	movx	@dptr,a
                           5603 ;	genPointerSet
                           5604 ;     genFarPointerSet
   56F9 90 07 DA           5605 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0005)
   56FC 74 69              5606 	mov	a,#0x69
   56FE F0                 5607 	movx	@dptr,a
                           5608 ;	genPointerSet
                           5609 ;     genFarPointerSet
   56FF 90 07 DB           5610 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0006)
   5702 74 76              5611 	mov	a,#0x76
   5704 F0                 5612 	movx	@dptr,a
                           5613 ;	genPointerSet
                           5614 ;     genFarPointerSet
   5705 90 07 DC           5615 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0007)
   5708 74 65              5616 	mov	a,#0x65
   570A F0                 5617 	movx	@dptr,a
                           5618 ;	genPointerSet
                           5619 ;     genFarPointerSet
   570B 90 07 DD           5620 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0008)
   570E 74 72              5621 	mov	a,#0x72
   5710 F0                 5622 	movx	@dptr,a
                           5623 ;	genPointerSet
                           5624 ;     genFarPointerSet
   5711 90 07 DE           5625 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0009)
   5714 74 73              5626 	mov	a,#0x73
   5716 F0                 5627 	movx	@dptr,a
                           5628 ;	genPointerSet
                           5629 ;     genFarPointerSet
   5717 90 07 DF           5630 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000a)
   571A 74 2F              5631 	mov	a,#0x2F
   571C F0                 5632 	movx	@dptr,a
                           5633 ;	genPointerSet
                           5634 ;     genFarPointerSet
   571D 90 07 E0           5635 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000b)
   5720 74 43              5636 	mov	a,#0x43
   5722 F0                 5637 	movx	@dptr,a
                           5638 ;	genPointerSet
                           5639 ;     genFarPointerSet
   5723 90 07 E1           5640 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000c)
   5726 74 6F              5641 	mov	a,#0x6F
   5728 F0                 5642 	movx	@dptr,a
                           5643 ;	genPointerSet
                           5644 ;     genFarPointerSet
   5729 90 07 E2           5645 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000d)
   572C 74 72              5646 	mov	a,#0x72
   572E F0                 5647 	movx	@dptr,a
                           5648 ;	genPointerSet
                           5649 ;     genFarPointerSet
   572F 90 07 E3           5650 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000e)
   5732 74 65              5651 	mov	a,#0x65
   5734 F0                 5652 	movx	@dptr,a
                           5653 ;	genPointerSet
                           5654 ;     genFarPointerSet
   5735 90 07 E4           5655 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000f)
   5738 74 47              5656 	mov	a,#0x47
   573A F0                 5657 	movx	@dptr,a
                           5658 ;	genPointerSet
                           5659 ;     genFarPointerSet
   573B 90 07 E5           5660 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0010)
   573E 74 50              5661 	mov	a,#0x50
   5740 F0                 5662 	movx	@dptr,a
                           5663 ;	genPointerSet
                           5664 ;     genFarPointerSet
   5741 90 07 E6           5665 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0011)
   5744 74 49              5666 	mov	a,#0x49
   5746 F0                 5667 	movx	@dptr,a
                           5668 ;	genPointerSet
                           5669 ;     genFarPointerSet
   5747 90 07 E7           5670 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0012)
   574A 74 4F              5671 	mov	a,#0x4F
   574C F0                 5672 	movx	@dptr,a
                           5673 ;	genPointerSet
                           5674 ;     genFarPointerSet
   574D 90 07 E8           5675 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0013)
   5750 74 2F              5676 	mov	a,#0x2F
   5752 F0                 5677 	movx	@dptr,a
                           5678 ;	genPointerSet
                           5679 ;     genFarPointerSet
   5753 90 07 E9           5680 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0014)
   5756 74 63              5681 	mov	a,#0x63
   5758 F0                 5682 	movx	@dptr,a
                           5683 ;	genPointerSet
                           5684 ;     genFarPointerSet
   5759 90 07 EA           5685 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0015)
   575C 74 6F              5686 	mov	a,#0x6F
   575E F0                 5687 	movx	@dptr,a
                           5688 ;	genPointerSet
                           5689 ;     genFarPointerSet
   575F 90 07 EB           5690 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0016)
   5762 74 72              5691 	mov	a,#0x72
   5764 F0                 5692 	movx	@dptr,a
                           5693 ;	genPointerSet
                           5694 ;     genFarPointerSet
   5765 90 07 EC           5695 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0017)
   5768 74 65              5696 	mov	a,#0x65
   576A F0                 5697 	movx	@dptr,a
                           5698 ;	genPointerSet
                           5699 ;     genFarPointerSet
   576B 90 07 ED           5700 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0018)
   576E 74 5F              5701 	mov	a,#0x5F
   5770 F0                 5702 	movx	@dptr,a
                           5703 ;	genPointerSet
                           5704 ;     genFarPointerSet
   5771 90 07 EE           5705 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0019)
   5774 74 67              5706 	mov	a,#0x67
   5776 F0                 5707 	movx	@dptr,a
                           5708 ;	genPointerSet
                           5709 ;     genFarPointerSet
   5777 90 07 EF           5710 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001a)
   577A 74 70              5711 	mov	a,#0x70
   577C F0                 5712 	movx	@dptr,a
                           5713 ;	genPointerSet
                           5714 ;     genFarPointerSet
   577D 90 07 F0           5715 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001b)
   5780 74 69              5716 	mov	a,#0x69
   5782 F0                 5717 	movx	@dptr,a
                           5718 ;	genPointerSet
                           5719 ;     genFarPointerSet
   5783 90 07 F1           5720 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001c)
   5786 74 6F              5721 	mov	a,#0x6F
   5788 F0                 5722 	movx	@dptr,a
                           5723 ;	genPointerSet
                           5724 ;     genFarPointerSet
   5789 90 07 F2           5725 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001d)
   578C 74 2E              5726 	mov	a,#0x2E
   578E F0                 5727 	movx	@dptr,a
                           5728 ;	genPointerSet
                           5729 ;     genFarPointerSet
   578F 90 07 F3           5730 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001e)
   5792 74 63              5731 	mov	a,#0x63
   5794 F0                 5732 	movx	@dptr,a
                           5733 ;	genPointerSet
                           5734 ;     genFarPointerSet
   5795 90 07 F4           5735 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001f)
   5798 74 00              5736 	mov	a,#0x00
   579A F0                 5737 	movx	@dptr,a
                           5738 ;	genAssign
   579B 90 00 2E           5739 	mov	dptr,#_HAL_assert_fail_PARM_2
   579E 74 87              5740 	mov	a,#0x87
   57A0 F0                 5741 	movx	@dptr,a
   57A1 A3                 5742 	inc	dptr
   57A2 74 01              5743 	mov	a,#0x01
   57A4 F0                 5744 	movx	@dptr,a
   57A5 A3                 5745 	inc	dptr
   57A6 74 00              5746 	mov	a,#0x00
   57A8 F0                 5747 	movx	@dptr,a
   57A9 A3                 5748 	inc	dptr
   57AA 74 00              5749 	mov	a,#0x00
   57AC F0                 5750 	movx	@dptr,a
                           5751 ;	genCall
   57AD 75 82 D5           5752 	mov	dpl,#_GPIO_enable_irq_file_name_3_3
   57B0 75 83 07           5753 	mov	dph,#(_GPIO_enable_irq_file_name_3_3 >> 8)
   57B3 75 F0 00           5754 	mov	b,#0x00
   57B6 C0 02              5755 	push	ar2
   57B8 C0 03              5756 	push	ar3
   57BA C0 04              5757 	push	ar4
   57BC C0 05              5758 	push	ar5
   57BE C0 06              5759 	push	ar6
   57C0 C0 07              5760 	push	ar7
   57C2 12 08 16           5761 	lcall	_HAL_assert_fail
   57C5 D0 07              5762 	pop	ar7
   57C7 D0 06              5763 	pop	ar6
   57C9 D0 05              5764 	pop	ar5
   57CB D0 04              5765 	pop	ar4
   57CD D0 03              5766 	pop	ar3
   57CF D0 02              5767 	pop	ar2
   57D1                    5768 00104$:
                    19CB   5769 	C$core_gpio.c$393$1$1 ==.
                           5770 ;	../drivers/CoreGPIO/core_gpio.c:393: if ( port_id < NB_OF_GPIO )
                           5771 ;	genIfx
   57D1 EF                 5772 	mov	a,r7
                           5773 ;	genIfxJump
   57D2 70 03              5774 	jnz	00114$
   57D4 02 58 1F           5775 	ljmp	00108$
   57D7                    5776 00114$:
                    19D1   5777 	C$core_gpio.c$395$2$4 ==.
                           5778 ;	../drivers/CoreGPIO/core_gpio.c:395: cfg_reg_addr += (port_id * 4);
                           5779 ;	genMult
                           5780 ;	genMultOneByte
   57D7 EE                 5781 	mov	a,r6
   57D8 75 F0 04           5782 	mov	b,#0x04
   57DB A4                 5783 	mul	ab
   57DC FE                 5784 	mov	r6,a
   57DD AF F0              5785 	mov	r7,b
                           5786 ;	genCast
   57DF EF                 5787 	mov	a,r7
   57E0 33                 5788 	rlc	a
   57E1 95 E0              5789 	subb	a,acc
   57E3 F8                 5790 	mov	r0,a
   57E4 F9                 5791 	mov	r1,a
                           5792 ;	genPlus
   57E5 E5 06              5793 	mov	a,ar6
   57E7 25 02              5794 	add	a,ar2
   57E9 FA                 5795 	mov	r2,a
   57EA E5 07              5796 	mov	a,ar7
   57EC 35 03              5797 	addc	a,ar3
   57EE FB                 5798 	mov	r3,a
   57EF E5 00              5799 	mov	a,ar0
   57F1 35 04              5800 	addc	a,ar4
   57F3 FC                 5801 	mov	r4,a
   57F4 E5 01              5802 	mov	a,ar1
   57F6 35 05              5803 	addc	a,ar5
   57F8 FD                 5804 	mov	r5,a
                    19F3   5805 	C$core_gpio.c$396$2$4 ==.
                           5806 ;	../drivers/CoreGPIO/core_gpio.c:396: cfg_value = HW_get_8bit_reg( cfg_reg_addr );
                           5807 ;	genCast
                           5808 ;	genCall
   57F9 8A 82              5809 	mov	dpl,r2
   57FB 8B 83              5810 	mov	dph,r3
   57FD C0 02              5811 	push	ar2
   57FF C0 03              5812 	push	ar3
   5801 12 08 C7           5813 	lcall	_HW_get_8bit_reg
   5804 AC 82              5814 	mov	r4,dpl
   5806 D0 03              5815 	pop	ar3
   5808 D0 02              5816 	pop	ar2
                           5817 ;	genCast
   580A 7D 00              5818 	mov	r5,#0x00
   580C 7E 00              5819 	mov	r6,#0x00
   580E 7F 00              5820 	mov	r7,#0x00
                    1A0A   5821 	C$core_gpio.c$397$2$4 ==.
                           5822 ;	../drivers/CoreGPIO/core_gpio.c:397: cfg_value |= GPIO_INT_ENABLE_MASK;
                           5823 ;	genOr
   5810 43 04 08           5824 	orl	ar4,#0x08
                    1A0D   5825 	C$core_gpio.c$398$2$4 ==.
                           5826 ;	../drivers/CoreGPIO/core_gpio.c:398: HW_set_8bit_reg( cfg_reg_addr, cfg_value );
                           5827 ;	genCast
   5813 90 00 4B           5828 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5816 EC                 5829 	mov	a,r4
   5817 F0                 5830 	movx	@dptr,a
                           5831 ;	genCall
   5818 8A 82              5832 	mov	dpl,r2
   581A 8B 83              5833 	mov	dph,r3
   581C 12 08 B9           5834 	lcall	_HW_set_8bit_reg
   581F                    5835 00108$:
                    1A19   5836 	C$core_gpio.c$400$2$1 ==.
                    1A19   5837 	XG$GPIO_enable_irq$0$0 ==.
   581F 22                 5838 	ret
                           5839 ;------------------------------------------------------------
                           5840 ;Allocation info for local variables in function 'GPIO_disable_irq'
                           5841 ;------------------------------------------------------------
                           5842 ;port_id                   Allocated with name '_GPIO_disable_irq_PARM_2'
                           5843 ;this_gpio                 Allocated with name '_GPIO_disable_irq_this_gpio_1_1'
                           5844 ;cfg_value                 Allocated with name '_GPIO_disable_irq_cfg_value_1_1'
                           5845 ;cfg_reg_addr              Allocated with name '_GPIO_disable_irq_cfg_reg_addr_1_1'
                           5846 ;file_name                 Allocated with name '_GPIO_disable_irq_file_name_3_3'
                           5847 ;------------------------------------------------------------
                    1A1A   5848 	G$GPIO_disable_irq$0$0 ==.
                    1A1A   5849 	C$core_gpio.c$406$2$1 ==.
                           5850 ;	../drivers/CoreGPIO/core_gpio.c:406: void GPIO_disable_irq
                           5851 ;	-----------------------------------------
                           5852 ;	 function GPIO_disable_irq
                           5853 ;	-----------------------------------------
   5820                    5854 _GPIO_disable_irq:
                           5855 ;	genReceive
   5820 AA F0              5856 	mov	r2,b
   5822 AB 83              5857 	mov	r3,dph
   5824 E5 82              5858 	mov	a,dpl
   5826 90 07 F6           5859 	mov	dptr,#_GPIO_disable_irq_this_gpio_1_1
   5829 F0                 5860 	movx	@dptr,a
   582A A3                 5861 	inc	dptr
   582B EB                 5862 	mov	a,r3
   582C F0                 5863 	movx	@dptr,a
   582D A3                 5864 	inc	dptr
   582E EA                 5865 	mov	a,r2
   582F F0                 5866 	movx	@dptr,a
                    1A2A   5867 	C$core_gpio.c$413$1$1 ==.
                           5868 ;	../drivers/CoreGPIO/core_gpio.c:413: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           5869 ;	genAssign
   5830 90 07 F6           5870 	mov	dptr,#_GPIO_disable_irq_this_gpio_1_1
   5833 E0                 5871 	movx	a,@dptr
   5834 FA                 5872 	mov	r2,a
   5835 A3                 5873 	inc	dptr
   5836 E0                 5874 	movx	a,@dptr
   5837 FB                 5875 	mov	r3,a
   5838 A3                 5876 	inc	dptr
   5839 E0                 5877 	movx	a,@dptr
   583A FC                 5878 	mov	r4,a
                           5879 ;	genPointerGet
                           5880 ;	genGenPointerGet
   583B 8A 82              5881 	mov	dpl,r2
   583D 8B 83              5882 	mov	dph,r3
   583F 8C F0              5883 	mov	b,r4
   5841 12 5C 8D           5884 	lcall	__gptrget
   5844 FA                 5885 	mov	r2,a
   5845 A3                 5886 	inc	dptr
   5846 12 5C 8D           5887 	lcall	__gptrget
   5849 FB                 5888 	mov	r3,a
                           5889 ;	genCast
   584A 7C 00              5890 	mov	r4,#0x00
   584C 7D 00              5891 	mov	r5,#0x00
                    1A48   5892 	C$core_gpio.c$415$2$2 ==.
                           5893 ;	../drivers/CoreGPIO/core_gpio.c:415: HAL_ASSERT( port_id < NB_OF_GPIO );
                           5894 ;	genAssign
   584E 90 07 F5           5895 	mov	dptr,#_GPIO_disable_irq_PARM_2
   5851 E0                 5896 	movx	a,@dptr
   5852 FE                 5897 	mov	r6,a
                           5898 ;	genCmpLt
                           5899 ;	genCmp
   5853 BE 20 00           5900 	cjne	r6,#0x20,00112$
   5856                    5901 00112$:
   5856 E4                 5902 	clr	a
   5857 33                 5903 	rlc	a
   5858 FF                 5904 	mov	r7,a
                           5905 ;	genIfx
   5859 EF                 5906 	mov	a,r7
                           5907 ;	genIfxJump
   585A 60 03              5908 	jz	00113$
   585C 02 59 55           5909 	ljmp	00104$
   585F                    5910 00113$:
                           5911 ;	genPointerSet
                           5912 ;     genFarPointerSet
   585F 90 07 F9           5913 	mov	dptr,#_GPIO_disable_irq_file_name_3_3
   5862 74 2E              5914 	mov	a,#0x2E
   5864 F0                 5915 	movx	@dptr,a
                           5916 ;	genPointerSet
                           5917 ;     genFarPointerSet
   5865 90 07 FA           5918 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0001)
   5868 74 2E              5919 	mov	a,#0x2E
   586A F0                 5920 	movx	@dptr,a
                           5921 ;	genPointerSet
                           5922 ;     genFarPointerSet
   586B 90 07 FB           5923 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0002)
   586E 74 2F              5924 	mov	a,#0x2F
   5870 F0                 5925 	movx	@dptr,a
                           5926 ;	genPointerSet
                           5927 ;     genFarPointerSet
   5871 90 07 FC           5928 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0003)
   5874 74 64              5929 	mov	a,#0x64
   5876 F0                 5930 	movx	@dptr,a
                           5931 ;	genPointerSet
                           5932 ;     genFarPointerSet
   5877 90 07 FD           5933 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0004)
   587A 74 72              5934 	mov	a,#0x72
   587C F0                 5935 	movx	@dptr,a
                           5936 ;	genPointerSet
                           5937 ;     genFarPointerSet
   587D 90 07 FE           5938 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0005)
   5880 74 69              5939 	mov	a,#0x69
   5882 F0                 5940 	movx	@dptr,a
                           5941 ;	genPointerSet
                           5942 ;     genFarPointerSet
   5883 90 07 FF           5943 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0006)
   5886 74 76              5944 	mov	a,#0x76
   5888 F0                 5945 	movx	@dptr,a
                           5946 ;	genPointerSet
                           5947 ;     genFarPointerSet
   5889 90 08 00           5948 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0007)
   588C 74 65              5949 	mov	a,#0x65
   588E F0                 5950 	movx	@dptr,a
                           5951 ;	genPointerSet
                           5952 ;     genFarPointerSet
   588F 90 08 01           5953 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0008)
   5892 74 72              5954 	mov	a,#0x72
   5894 F0                 5955 	movx	@dptr,a
                           5956 ;	genPointerSet
                           5957 ;     genFarPointerSet
   5895 90 08 02           5958 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0009)
   5898 74 73              5959 	mov	a,#0x73
   589A F0                 5960 	movx	@dptr,a
                           5961 ;	genPointerSet
                           5962 ;     genFarPointerSet
   589B 90 08 03           5963 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000a)
   589E 74 2F              5964 	mov	a,#0x2F
   58A0 F0                 5965 	movx	@dptr,a
                           5966 ;	genPointerSet
                           5967 ;     genFarPointerSet
   58A1 90 08 04           5968 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000b)
   58A4 74 43              5969 	mov	a,#0x43
   58A6 F0                 5970 	movx	@dptr,a
                           5971 ;	genPointerSet
                           5972 ;     genFarPointerSet
   58A7 90 08 05           5973 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000c)
   58AA 74 6F              5974 	mov	a,#0x6F
   58AC F0                 5975 	movx	@dptr,a
                           5976 ;	genPointerSet
                           5977 ;     genFarPointerSet
   58AD 90 08 06           5978 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000d)
   58B0 74 72              5979 	mov	a,#0x72
   58B2 F0                 5980 	movx	@dptr,a
                           5981 ;	genPointerSet
                           5982 ;     genFarPointerSet
   58B3 90 08 07           5983 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000e)
   58B6 74 65              5984 	mov	a,#0x65
   58B8 F0                 5985 	movx	@dptr,a
                           5986 ;	genPointerSet
                           5987 ;     genFarPointerSet
   58B9 90 08 08           5988 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000f)
   58BC 74 47              5989 	mov	a,#0x47
   58BE F0                 5990 	movx	@dptr,a
                           5991 ;	genPointerSet
                           5992 ;     genFarPointerSet
   58BF 90 08 09           5993 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0010)
   58C2 74 50              5994 	mov	a,#0x50
   58C4 F0                 5995 	movx	@dptr,a
                           5996 ;	genPointerSet
                           5997 ;     genFarPointerSet
   58C5 90 08 0A           5998 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0011)
   58C8 74 49              5999 	mov	a,#0x49
   58CA F0                 6000 	movx	@dptr,a
                           6001 ;	genPointerSet
                           6002 ;     genFarPointerSet
   58CB 90 08 0B           6003 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0012)
   58CE 74 4F              6004 	mov	a,#0x4F
   58D0 F0                 6005 	movx	@dptr,a
                           6006 ;	genPointerSet
                           6007 ;     genFarPointerSet
   58D1 90 08 0C           6008 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0013)
   58D4 74 2F              6009 	mov	a,#0x2F
   58D6 F0                 6010 	movx	@dptr,a
                           6011 ;	genPointerSet
                           6012 ;     genFarPointerSet
   58D7 90 08 0D           6013 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0014)
   58DA 74 63              6014 	mov	a,#0x63
   58DC F0                 6015 	movx	@dptr,a
                           6016 ;	genPointerSet
                           6017 ;     genFarPointerSet
   58DD 90 08 0E           6018 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0015)
   58E0 74 6F              6019 	mov	a,#0x6F
   58E2 F0                 6020 	movx	@dptr,a
                           6021 ;	genPointerSet
                           6022 ;     genFarPointerSet
   58E3 90 08 0F           6023 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0016)
   58E6 74 72              6024 	mov	a,#0x72
   58E8 F0                 6025 	movx	@dptr,a
                           6026 ;	genPointerSet
                           6027 ;     genFarPointerSet
   58E9 90 08 10           6028 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0017)
   58EC 74 65              6029 	mov	a,#0x65
   58EE F0                 6030 	movx	@dptr,a
                           6031 ;	genPointerSet
                           6032 ;     genFarPointerSet
   58EF 90 08 11           6033 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0018)
   58F2 74 5F              6034 	mov	a,#0x5F
   58F4 F0                 6035 	movx	@dptr,a
                           6036 ;	genPointerSet
                           6037 ;     genFarPointerSet
   58F5 90 08 12           6038 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0019)
   58F8 74 67              6039 	mov	a,#0x67
   58FA F0                 6040 	movx	@dptr,a
                           6041 ;	genPointerSet
                           6042 ;     genFarPointerSet
   58FB 90 08 13           6043 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001a)
   58FE 74 70              6044 	mov	a,#0x70
   5900 F0                 6045 	movx	@dptr,a
                           6046 ;	genPointerSet
                           6047 ;     genFarPointerSet
   5901 90 08 14           6048 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001b)
   5904 74 69              6049 	mov	a,#0x69
   5906 F0                 6050 	movx	@dptr,a
                           6051 ;	genPointerSet
                           6052 ;     genFarPointerSet
   5907 90 08 15           6053 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001c)
   590A 74 6F              6054 	mov	a,#0x6F
   590C F0                 6055 	movx	@dptr,a
                           6056 ;	genPointerSet
                           6057 ;     genFarPointerSet
   590D 90 08 16           6058 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001d)
   5910 74 2E              6059 	mov	a,#0x2E
   5912 F0                 6060 	movx	@dptr,a
                           6061 ;	genPointerSet
                           6062 ;     genFarPointerSet
   5913 90 08 17           6063 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001e)
   5916 74 63              6064 	mov	a,#0x63
   5918 F0                 6065 	movx	@dptr,a
                           6066 ;	genPointerSet
                           6067 ;     genFarPointerSet
   5919 90 08 18           6068 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001f)
   591C 74 00              6069 	mov	a,#0x00
   591E F0                 6070 	movx	@dptr,a
                           6071 ;	genAssign
   591F 90 00 2E           6072 	mov	dptr,#_HAL_assert_fail_PARM_2
   5922 74 9F              6073 	mov	a,#0x9F
   5924 F0                 6074 	movx	@dptr,a
   5925 A3                 6075 	inc	dptr
   5926 74 01              6076 	mov	a,#0x01
   5928 F0                 6077 	movx	@dptr,a
   5929 A3                 6078 	inc	dptr
   592A 74 00              6079 	mov	a,#0x00
   592C F0                 6080 	movx	@dptr,a
   592D A3                 6081 	inc	dptr
   592E 74 00              6082 	mov	a,#0x00
   5930 F0                 6083 	movx	@dptr,a
                           6084 ;	genCall
   5931 75 82 F9           6085 	mov	dpl,#_GPIO_disable_irq_file_name_3_3
   5934 75 83 07           6086 	mov	dph,#(_GPIO_disable_irq_file_name_3_3 >> 8)
   5937 75 F0 00           6087 	mov	b,#0x00
   593A C0 02              6088 	push	ar2
   593C C0 03              6089 	push	ar3
   593E C0 04              6090 	push	ar4
   5940 C0 05              6091 	push	ar5
   5942 C0 06              6092 	push	ar6
   5944 C0 07              6093 	push	ar7
   5946 12 08 16           6094 	lcall	_HAL_assert_fail
   5949 D0 07              6095 	pop	ar7
   594B D0 06              6096 	pop	ar6
   594D D0 05              6097 	pop	ar5
   594F D0 04              6098 	pop	ar4
   5951 D0 03              6099 	pop	ar3
   5953 D0 02              6100 	pop	ar2
   5955                    6101 00104$:
                    1B4F   6102 	C$core_gpio.c$417$1$1 ==.
                           6103 ;	../drivers/CoreGPIO/core_gpio.c:417: if ( port_id < NB_OF_GPIO )
                           6104 ;	genIfx
   5955 EF                 6105 	mov	a,r7
                           6106 ;	genIfxJump
   5956 70 03              6107 	jnz	00114$
   5958 02 59 A3           6108 	ljmp	00108$
   595B                    6109 00114$:
                    1B55   6110 	C$core_gpio.c$419$2$4 ==.
                           6111 ;	../drivers/CoreGPIO/core_gpio.c:419: cfg_reg_addr += (port_id * 4);
                           6112 ;	genMult
                           6113 ;	genMultOneByte
   595B EE                 6114 	mov	a,r6
   595C 75 F0 04           6115 	mov	b,#0x04
   595F A4                 6116 	mul	ab
   5960 FE                 6117 	mov	r6,a
   5961 AF F0              6118 	mov	r7,b
                           6119 ;	genCast
   5963 EF                 6120 	mov	a,r7
   5964 33                 6121 	rlc	a
   5965 95 E0              6122 	subb	a,acc
   5967 F8                 6123 	mov	r0,a
   5968 F9                 6124 	mov	r1,a
                           6125 ;	genPlus
   5969 E5 06              6126 	mov	a,ar6
   596B 25 02              6127 	add	a,ar2
   596D FA                 6128 	mov	r2,a
   596E E5 07              6129 	mov	a,ar7
   5970 35 03              6130 	addc	a,ar3
   5972 FB                 6131 	mov	r3,a
   5973 E5 00              6132 	mov	a,ar0
   5975 35 04              6133 	addc	a,ar4
   5977 FC                 6134 	mov	r4,a
   5978 E5 01              6135 	mov	a,ar1
   597A 35 05              6136 	addc	a,ar5
   597C FD                 6137 	mov	r5,a
                    1B77   6138 	C$core_gpio.c$420$2$4 ==.
                           6139 ;	../drivers/CoreGPIO/core_gpio.c:420: cfg_value = HW_get_8bit_reg( cfg_reg_addr );
                           6140 ;	genCast
                           6141 ;	genCall
   597D 8A 82              6142 	mov	dpl,r2
   597F 8B 83              6143 	mov	dph,r3
   5981 C0 02              6144 	push	ar2
   5983 C0 03              6145 	push	ar3
   5985 12 08 C7           6146 	lcall	_HW_get_8bit_reg
   5988 AC 82              6147 	mov	r4,dpl
   598A D0 03              6148 	pop	ar3
   598C D0 02              6149 	pop	ar2
                           6150 ;	genCast
   598E 7D 00              6151 	mov	r5,#0x00
   5990 7E 00              6152 	mov	r6,#0x00
   5992 7F 00              6153 	mov	r7,#0x00
                    1B8E   6154 	C$core_gpio.c$421$2$4 ==.
                           6155 ;	../drivers/CoreGPIO/core_gpio.c:421: cfg_value &= ~GPIO_INT_ENABLE_MASK;
                           6156 ;	genAnd
   5994 53 04 F7           6157 	anl	ar4,#0xF7
                    1B91   6158 	C$core_gpio.c$422$2$4 ==.
                           6159 ;	../drivers/CoreGPIO/core_gpio.c:422: HW_set_8bit_reg( cfg_reg_addr, cfg_value );
                           6160 ;	genCast
   5997 90 00 4B           6161 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   599A EC                 6162 	mov	a,r4
   599B F0                 6163 	movx	@dptr,a
                           6164 ;	genCall
   599C 8A 82              6165 	mov	dpl,r2
   599E 8B 83              6166 	mov	dph,r3
   59A0 12 08 B9           6167 	lcall	_HW_set_8bit_reg
   59A3                    6168 00108$:
                    1B9D   6169 	C$core_gpio.c$424$2$1 ==.
                    1B9D   6170 	XG$GPIO_disable_irq$0$0 ==.
   59A3 22                 6171 	ret
                           6172 ;------------------------------------------------------------
                           6173 ;Allocation info for local variables in function 'GPIO_clear_irq'
                           6174 ;------------------------------------------------------------
                           6175 ;sloc0                     Allocated with name '_GPIO_clear_irq_sloc0_1_0'
                           6176 ;port_id                   Allocated with name '_GPIO_clear_irq_PARM_2'
                           6177 ;this_gpio                 Allocated with name '_GPIO_clear_irq_this_gpio_1_1'
                           6178 ;irq_clr_value             Allocated with name '_GPIO_clear_irq_irq_clr_value_1_1'
                           6179 ;file_name                 Allocated with name '_GPIO_clear_irq_file_name_4_4'
                           6180 ;------------------------------------------------------------
                    1B9E   6181 	G$GPIO_clear_irq$0$0 ==.
                    1B9E   6182 	C$core_gpio.c$430$2$1 ==.
                           6183 ;	../drivers/CoreGPIO/core_gpio.c:430: void GPIO_clear_irq
                           6184 ;	-----------------------------------------
                           6185 ;	 function GPIO_clear_irq
                           6186 ;	-----------------------------------------
   59A4                    6187 _GPIO_clear_irq:
                           6188 ;	genReceive
   59A4 AA F0              6189 	mov	r2,b
   59A6 AB 83              6190 	mov	r3,dph
   59A8 E5 82              6191 	mov	a,dpl
   59AA 90 08 1A           6192 	mov	dptr,#_GPIO_clear_irq_this_gpio_1_1
   59AD F0                 6193 	movx	@dptr,a
   59AE A3                 6194 	inc	dptr
   59AF EB                 6195 	mov	a,r3
   59B0 F0                 6196 	movx	@dptr,a
   59B1 A3                 6197 	inc	dptr
   59B2 EA                 6198 	mov	a,r2
   59B3 F0                 6199 	movx	@dptr,a
                    1BAE   6200 	C$core_gpio.c$436$1$1 ==.
                           6201 ;	../drivers/CoreGPIO/core_gpio.c:436: uint32_t irq_clr_value = ((uint32_t)1) << ((uint32_t)port_id);
                           6202 ;	genAssign
   59B4 90 08 19           6203 	mov	dptr,#_GPIO_clear_irq_PARM_2
   59B7 E0                 6204 	movx	a,@dptr
   59B8 FA                 6205 	mov	r2,a
                           6206 ;	genCast
   59B9 7B 00              6207 	mov	r3,#0x00
   59BB 7C 00              6208 	mov	r4,#0x00
   59BD 7D 00              6209 	mov	r5,#0x00
                           6210 ;	genLeftShift
   59BF 8A F0              6211 	mov	b,r2
   59C1 05 F0              6212 	inc	b
   59C3 75 59 01           6213 	mov	_GPIO_clear_irq_sloc0_1_0,#0x01
   59C6 75 5A 00           6214 	mov	(_GPIO_clear_irq_sloc0_1_0 + 1),#0x00
   59C9 75 5B 00           6215 	mov	(_GPIO_clear_irq_sloc0_1_0 + 2),#0x00
   59CC 75 5C 00           6216 	mov	(_GPIO_clear_irq_sloc0_1_0 + 3),#0x00
   59CF 80 15              6217 	sjmp	00117$
   59D1                    6218 00116$:
   59D1 E5 59              6219 	mov	a,_GPIO_clear_irq_sloc0_1_0
   59D3 25 E0              6220 	add	a,acc
   59D5 F5 59              6221 	mov	_GPIO_clear_irq_sloc0_1_0,a
   59D7 E5 5A              6222 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   59D9 33                 6223 	rlc	a
   59DA F5 5A              6224 	mov	(_GPIO_clear_irq_sloc0_1_0 + 1),a
   59DC E5 5B              6225 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   59DE 33                 6226 	rlc	a
   59DF F5 5B              6227 	mov	(_GPIO_clear_irq_sloc0_1_0 + 2),a
   59E1 E5 5C              6228 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   59E3 33                 6229 	rlc	a
   59E4 F5 5C              6230 	mov	(_GPIO_clear_irq_sloc0_1_0 + 3),a
   59E6                    6231 00117$:
   59E6 D5 F0 E8           6232 	djnz	b,00116$
                    1BE3   6233 	C$core_gpio.c$438$1$1 ==.
                           6234 ;	../drivers/CoreGPIO/core_gpio.c:438: switch( this_gpio->apb_bus_width )
                           6235 ;	genAssign
   59E9 90 08 1A           6236 	mov	dptr,#_GPIO_clear_irq_this_gpio_1_1
   59EC E0                 6237 	movx	a,@dptr
   59ED FE                 6238 	mov	r6,a
   59EE A3                 6239 	inc	dptr
   59EF E0                 6240 	movx	a,@dptr
   59F0 FF                 6241 	mov	r7,a
   59F1 A3                 6242 	inc	dptr
   59F2 E0                 6243 	movx	a,@dptr
   59F3 F8                 6244 	mov	r0,a
                           6245 ;	genPlus
                           6246 ;	genPlusIncr
   59F4 74 02              6247 	mov	a,#0x02
   59F6 25 06              6248 	add	a,ar6
   59F8 F9                 6249 	mov	r1,a
   59F9 74 00              6250 	mov	a,#0x00
   59FB 35 07              6251 	addc	a,ar7
   59FD FA                 6252 	mov	r2,a
   59FE 88 03              6253 	mov	ar3,r0
                           6254 ;	genPointerGet
                           6255 ;	genGenPointerGet
   5A00 89 82              6256 	mov	dpl,r1
   5A02 8A 83              6257 	mov	dph,r2
   5A04 8B F0              6258 	mov	b,r3
   5A06 12 5C 8D           6259 	lcall	__gptrget
   5A09 FA                 6260 	mov	r2,a
                           6261 ;	genCmpEq
                           6262 ;	gencjneshort
   5A0A BA 00 03           6263 	cjne	r2,#0x00,00118$
   5A0D 02 5A B6           6264 	ljmp	00103$
   5A10                    6265 00118$:
                           6266 ;	genCmpEq
                           6267 ;	gencjneshort
   5A10 BA 01 03           6268 	cjne	r2,#0x01,00119$
   5A13 02 5A 53           6269 	ljmp	00102$
   5A16                    6270 00119$:
                           6271 ;	genCmpEq
                           6272 ;	gencjneshort
   5A16 BA 02 02           6273 	cjne	r2,#0x02,00120$
   5A19 80 03              6274 	sjmp	00121$
   5A1B                    6275 00120$:
   5A1B 02 5B 75           6276 	ljmp	00107$
   5A1E                    6277 00121$:
                    1C18   6278 	C$core_gpio.c$441$2$2 ==.
                           6279 ;	../drivers/CoreGPIO/core_gpio.c:441: HAL_set_32bit_reg( this_gpio->base_addr, IRQ, irq_clr_value );
                           6280 ;	genPointerGet
                           6281 ;	genGenPointerGet
   5A1E 8E 82              6282 	mov	dpl,r6
   5A20 8F 83              6283 	mov	dph,r7
   5A22 88 F0              6284 	mov	b,r0
   5A24 12 5C 8D           6285 	lcall	__gptrget
   5A27 FA                 6286 	mov	r2,a
   5A28 A3                 6287 	inc	dptr
   5A29 12 5C 8D           6288 	lcall	__gptrget
   5A2C FB                 6289 	mov	r3,a
                           6290 ;	genPlus
                           6291 ;	genPlusIncr
   5A2D 74 80              6292 	mov	a,#0x80
   5A2F 25 02              6293 	add	a,ar2
   5A31 FA                 6294 	mov	r2,a
   5A32 74 00              6295 	mov	a,#0x00
   5A34 35 03              6296 	addc	a,ar3
   5A36 FB                 6297 	mov	r3,a
                           6298 ;	genAssign
   5A37 90 00 4C           6299 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   5A3A E5 59              6300 	mov	a,_GPIO_clear_irq_sloc0_1_0
   5A3C F0                 6301 	movx	@dptr,a
   5A3D A3                 6302 	inc	dptr
   5A3E E5 5A              6303 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   5A40 F0                 6304 	movx	@dptr,a
   5A41 A3                 6305 	inc	dptr
   5A42 E5 5B              6306 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   5A44 F0                 6307 	movx	@dptr,a
   5A45 A3                 6308 	inc	dptr
   5A46 E5 5C              6309 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   5A48 F0                 6310 	movx	@dptr,a
                           6311 ;	genCall
   5A49 8A 82              6312 	mov	dpl,r2
   5A4B 8B 83              6313 	mov	dph,r3
   5A4D 12 08 82           6314 	lcall	_HW_set_32bit_reg
                    1C4A   6315 	C$core_gpio.c$442$2$2 ==.
                           6316 ;	../drivers/CoreGPIO/core_gpio.c:442: break;
   5A50 02 5C 53           6317 	ljmp	00111$
                    1C4D   6318 	C$core_gpio.c$444$2$2 ==.
                           6319 ;	../drivers/CoreGPIO/core_gpio.c:444: case GPIO_APB_16_BITS_BUS:
   5A53                    6320 00102$:
                    1C4D   6321 	C$core_gpio.c$445$2$2 ==.
                           6322 ;	../drivers/CoreGPIO/core_gpio.c:445: HAL_set_16bit_reg( this_gpio->base_addr, IRQ0, irq_clr_value );
                           6323 ;	genPointerGet
                           6324 ;	genGenPointerGet
   5A53 8E 82              6325 	mov	dpl,r6
   5A55 8F 83              6326 	mov	dph,r7
   5A57 88 F0              6327 	mov	b,r0
   5A59 12 5C 8D           6328 	lcall	__gptrget
   5A5C FA                 6329 	mov	r2,a
   5A5D A3                 6330 	inc	dptr
   5A5E 12 5C 8D           6331 	lcall	__gptrget
   5A61 FB                 6332 	mov	r3,a
                           6333 ;	genPlus
                           6334 ;	genPlusIncr
   5A62 74 80              6335 	mov	a,#0x80
   5A64 25 02              6336 	add	a,ar2
   5A66 FA                 6337 	mov	r2,a
   5A67 74 00              6338 	mov	a,#0x00
   5A69 35 03              6339 	addc	a,ar3
   5A6B FB                 6340 	mov	r3,a
                           6341 ;	genCast
   5A6C 90 00 49           6342 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   5A6F E5 59              6343 	mov	a,_GPIO_clear_irq_sloc0_1_0
   5A71 F0                 6344 	movx	@dptr,a
   5A72 A3                 6345 	inc	dptr
   5A73 E5 5A              6346 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   5A75 F0                 6347 	movx	@dptr,a
                           6348 ;	genCall
   5A76 8A 82              6349 	mov	dpl,r2
   5A78 8B 83              6350 	mov	dph,r3
   5A7A C0 06              6351 	push	ar6
   5A7C C0 07              6352 	push	ar7
   5A7E C0 00              6353 	push	ar0
   5A80 12 08 9E           6354 	lcall	_HW_set_16bit_reg
   5A83 D0 00              6355 	pop	ar0
   5A85 D0 07              6356 	pop	ar7
   5A87 D0 06              6357 	pop	ar6
                    1C83   6358 	C$core_gpio.c$446$2$2 ==.
                           6359 ;	../drivers/CoreGPIO/core_gpio.c:446: HAL_set_16bit_reg( this_gpio->base_addr, IRQ1, irq_clr_value >> 16 );
                           6360 ;	genPointerGet
                           6361 ;	genGenPointerGet
   5A89 8E 82              6362 	mov	dpl,r6
   5A8B 8F 83              6363 	mov	dph,r7
   5A8D 88 F0              6364 	mov	b,r0
   5A8F 12 5C 8D           6365 	lcall	__gptrget
   5A92 FA                 6366 	mov	r2,a
   5A93 A3                 6367 	inc	dptr
   5A94 12 5C 8D           6368 	lcall	__gptrget
   5A97 FB                 6369 	mov	r3,a
                           6370 ;	genPlus
                           6371 ;	genPlusIncr
   5A98 74 84              6372 	mov	a,#0x84
   5A9A 25 02              6373 	add	a,ar2
   5A9C FA                 6374 	mov	r2,a
   5A9D 74 00              6375 	mov	a,#0x00
   5A9F 35 03              6376 	addc	a,ar3
   5AA1 FB                 6377 	mov	r3,a
                           6378 ;	genGetWord
   5AA2 90 00 49           6379 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   5AA5 E5 5B              6380 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   5AA7 F0                 6381 	movx	@dptr,a
   5AA8 A3                 6382 	inc	dptr
   5AA9 E5 5C              6383 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   5AAB F0                 6384 	movx	@dptr,a
                           6385 ;	genCall
   5AAC 8A 82              6386 	mov	dpl,r2
   5AAE 8B 83              6387 	mov	dph,r3
   5AB0 12 08 9E           6388 	lcall	_HW_set_16bit_reg
                    1CAD   6389 	C$core_gpio.c$447$2$2 ==.
                           6390 ;	../drivers/CoreGPIO/core_gpio.c:447: break;
   5AB3 02 5C 53           6391 	ljmp	00111$
                    1CB0   6392 	C$core_gpio.c$449$2$2 ==.
                           6393 ;	../drivers/CoreGPIO/core_gpio.c:449: case GPIO_APB_8_BITS_BUS:
   5AB6                    6394 00103$:
                    1CB0   6395 	C$core_gpio.c$450$2$2 ==.
                           6396 ;	../drivers/CoreGPIO/core_gpio.c:450: HAL_set_8bit_reg( this_gpio->base_addr, IRQ0, irq_clr_value );
                           6397 ;	genPointerGet
                           6398 ;	genGenPointerGet
   5AB6 8E 82              6399 	mov	dpl,r6
   5AB8 8F 83              6400 	mov	dph,r7
   5ABA 88 F0              6401 	mov	b,r0
   5ABC 12 5C 8D           6402 	lcall	__gptrget
   5ABF FA                 6403 	mov	r2,a
   5AC0 A3                 6404 	inc	dptr
   5AC1 12 5C 8D           6405 	lcall	__gptrget
   5AC4 FB                 6406 	mov	r3,a
                           6407 ;	genPlus
                           6408 ;	genPlusIncr
   5AC5 74 80              6409 	mov	a,#0x80
   5AC7 25 02              6410 	add	a,ar2
   5AC9 FA                 6411 	mov	r2,a
   5ACA 74 00              6412 	mov	a,#0x00
   5ACC 35 03              6413 	addc	a,ar3
   5ACE FB                 6414 	mov	r3,a
                           6415 ;	genCast
   5ACF 90 00 4B           6416 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5AD2 E5 59              6417 	mov	a,_GPIO_clear_irq_sloc0_1_0
   5AD4 F0                 6418 	movx	@dptr,a
                           6419 ;	genCall
   5AD5 8A 82              6420 	mov	dpl,r2
   5AD7 8B 83              6421 	mov	dph,r3
   5AD9 C0 06              6422 	push	ar6
   5ADB C0 07              6423 	push	ar7
   5ADD C0 00              6424 	push	ar0
   5ADF 12 08 B9           6425 	lcall	_HW_set_8bit_reg
   5AE2 D0 00              6426 	pop	ar0
   5AE4 D0 07              6427 	pop	ar7
   5AE6 D0 06              6428 	pop	ar6
                    1CE2   6429 	C$core_gpio.c$451$2$2 ==.
                           6430 ;	../drivers/CoreGPIO/core_gpio.c:451: HAL_set_8bit_reg( this_gpio->base_addr, IRQ1, irq_clr_value >> 8 );
                           6431 ;	genPointerGet
                           6432 ;	genGenPointerGet
   5AE8 8E 82              6433 	mov	dpl,r6
   5AEA 8F 83              6434 	mov	dph,r7
   5AEC 88 F0              6435 	mov	b,r0
   5AEE 12 5C 8D           6436 	lcall	__gptrget
   5AF1 FA                 6437 	mov	r2,a
   5AF2 A3                 6438 	inc	dptr
   5AF3 12 5C 8D           6439 	lcall	__gptrget
   5AF6 FB                 6440 	mov	r3,a
                           6441 ;	genPlus
                           6442 ;	genPlusIncr
   5AF7 74 84              6443 	mov	a,#0x84
   5AF9 25 02              6444 	add	a,ar2
   5AFB FA                 6445 	mov	r2,a
   5AFC 74 00              6446 	mov	a,#0x00
   5AFE 35 03              6447 	addc	a,ar3
   5B00 FB                 6448 	mov	r3,a
                           6449 ;	genGetByte
   5B01 90 00 4B           6450 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5B04 E5 5A              6451 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   5B06 F0                 6452 	movx	@dptr,a
                           6453 ;	genCall
   5B07 8A 82              6454 	mov	dpl,r2
   5B09 8B 83              6455 	mov	dph,r3
   5B0B C0 06              6456 	push	ar6
   5B0D C0 07              6457 	push	ar7
   5B0F C0 00              6458 	push	ar0
   5B11 12 08 B9           6459 	lcall	_HW_set_8bit_reg
   5B14 D0 00              6460 	pop	ar0
   5B16 D0 07              6461 	pop	ar7
   5B18 D0 06              6462 	pop	ar6
                    1D14   6463 	C$core_gpio.c$452$2$2 ==.
                           6464 ;	../drivers/CoreGPIO/core_gpio.c:452: HAL_set_8bit_reg( this_gpio->base_addr, IRQ2, irq_clr_value >> 16 );
                           6465 ;	genPointerGet
                           6466 ;	genGenPointerGet
   5B1A 8E 82              6467 	mov	dpl,r6
   5B1C 8F 83              6468 	mov	dph,r7
   5B1E 88 F0              6469 	mov	b,r0
   5B20 12 5C 8D           6470 	lcall	__gptrget
   5B23 FA                 6471 	mov	r2,a
   5B24 A3                 6472 	inc	dptr
   5B25 12 5C 8D           6473 	lcall	__gptrget
   5B28 FB                 6474 	mov	r3,a
                           6475 ;	genPlus
                           6476 ;	genPlusIncr
   5B29 74 88              6477 	mov	a,#0x88
   5B2B 25 02              6478 	add	a,ar2
   5B2D FA                 6479 	mov	r2,a
   5B2E 74 00              6480 	mov	a,#0x00
   5B30 35 03              6481 	addc	a,ar3
   5B32 FB                 6482 	mov	r3,a
                           6483 ;	genGetByte
   5B33 90 00 4B           6484 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5B36 E5 5B              6485 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   5B38 F0                 6486 	movx	@dptr,a
                           6487 ;	genCall
   5B39 8A 82              6488 	mov	dpl,r2
   5B3B 8B 83              6489 	mov	dph,r3
   5B3D C0 06              6490 	push	ar6
   5B3F C0 07              6491 	push	ar7
   5B41 C0 00              6492 	push	ar0
   5B43 12 08 B9           6493 	lcall	_HW_set_8bit_reg
   5B46 D0 00              6494 	pop	ar0
   5B48 D0 07              6495 	pop	ar7
   5B4A D0 06              6496 	pop	ar6
                    1D46   6497 	C$core_gpio.c$453$2$2 ==.
                           6498 ;	../drivers/CoreGPIO/core_gpio.c:453: HAL_set_8bit_reg( this_gpio->base_addr, IRQ3, irq_clr_value >> 24 );
                           6499 ;	genPointerGet
                           6500 ;	genGenPointerGet
   5B4C 8E 82              6501 	mov	dpl,r6
   5B4E 8F 83              6502 	mov	dph,r7
   5B50 88 F0              6503 	mov	b,r0
   5B52 12 5C 8D           6504 	lcall	__gptrget
   5B55 FE                 6505 	mov	r6,a
   5B56 A3                 6506 	inc	dptr
   5B57 12 5C 8D           6507 	lcall	__gptrget
   5B5A FF                 6508 	mov	r7,a
                           6509 ;	genPlus
                           6510 ;	genPlusIncr
   5B5B 74 8C              6511 	mov	a,#0x8C
   5B5D 25 06              6512 	add	a,ar6
   5B5F FE                 6513 	mov	r6,a
   5B60 74 00              6514 	mov	a,#0x00
   5B62 35 07              6515 	addc	a,ar7
   5B64 FF                 6516 	mov	r7,a
                           6517 ;	genGetByte
   5B65 90 00 4B           6518 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5B68 E5 5C              6519 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   5B6A F0                 6520 	movx	@dptr,a
                           6521 ;	genCall
   5B6B 8E 82              6522 	mov	dpl,r6
   5B6D 8F 83              6523 	mov	dph,r7
   5B6F 12 08 B9           6524 	lcall	_HW_set_8bit_reg
                    1D6C   6525 	C$core_gpio.c$454$2$2 ==.
                           6526 ;	../drivers/CoreGPIO/core_gpio.c:454: break;
   5B72 02 5C 53           6527 	ljmp	00111$
                    1D6F   6528 	C$core_gpio.c$457$2$2 ==.
                           6529 ;	../drivers/CoreGPIO/core_gpio.c:457: HAL_ASSERT(0);
   5B75                    6530 00107$:
                           6531 ;	genPointerSet
                           6532 ;     genFarPointerSet
   5B75 90 08 1D           6533 	mov	dptr,#_GPIO_clear_irq_file_name_4_4
   5B78 74 2E              6534 	mov	a,#0x2E
   5B7A F0                 6535 	movx	@dptr,a
                           6536 ;	genPointerSet
                           6537 ;     genFarPointerSet
   5B7B 90 08 1E           6538 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0001)
   5B7E 74 2E              6539 	mov	a,#0x2E
   5B80 F0                 6540 	movx	@dptr,a
                           6541 ;	genPointerSet
                           6542 ;     genFarPointerSet
   5B81 90 08 1F           6543 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0002)
   5B84 74 2F              6544 	mov	a,#0x2F
   5B86 F0                 6545 	movx	@dptr,a
                           6546 ;	genPointerSet
                           6547 ;     genFarPointerSet
   5B87 90 08 20           6548 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0003)
   5B8A 74 64              6549 	mov	a,#0x64
   5B8C F0                 6550 	movx	@dptr,a
                           6551 ;	genPointerSet
                           6552 ;     genFarPointerSet
   5B8D 90 08 21           6553 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0004)
   5B90 74 72              6554 	mov	a,#0x72
   5B92 F0                 6555 	movx	@dptr,a
                           6556 ;	genPointerSet
                           6557 ;     genFarPointerSet
   5B93 90 08 22           6558 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0005)
   5B96 74 69              6559 	mov	a,#0x69
   5B98 F0                 6560 	movx	@dptr,a
                           6561 ;	genPointerSet
                           6562 ;     genFarPointerSet
   5B99 90 08 23           6563 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0006)
   5B9C 74 76              6564 	mov	a,#0x76
   5B9E F0                 6565 	movx	@dptr,a
                           6566 ;	genPointerSet
                           6567 ;     genFarPointerSet
   5B9F 90 08 24           6568 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0007)
   5BA2 74 65              6569 	mov	a,#0x65
   5BA4 F0                 6570 	movx	@dptr,a
                           6571 ;	genPointerSet
                           6572 ;     genFarPointerSet
   5BA5 90 08 25           6573 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0008)
   5BA8 74 72              6574 	mov	a,#0x72
   5BAA F0                 6575 	movx	@dptr,a
                           6576 ;	genPointerSet
                           6577 ;     genFarPointerSet
   5BAB 90 08 26           6578 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0009)
   5BAE 74 73              6579 	mov	a,#0x73
   5BB0 F0                 6580 	movx	@dptr,a
                           6581 ;	genPointerSet
                           6582 ;     genFarPointerSet
   5BB1 90 08 27           6583 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000a)
   5BB4 74 2F              6584 	mov	a,#0x2F
   5BB6 F0                 6585 	movx	@dptr,a
                           6586 ;	genPointerSet
                           6587 ;     genFarPointerSet
   5BB7 90 08 28           6588 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000b)
   5BBA 74 43              6589 	mov	a,#0x43
   5BBC F0                 6590 	movx	@dptr,a
                           6591 ;	genPointerSet
                           6592 ;     genFarPointerSet
   5BBD 90 08 29           6593 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000c)
   5BC0 74 6F              6594 	mov	a,#0x6F
   5BC2 F0                 6595 	movx	@dptr,a
                           6596 ;	genPointerSet
                           6597 ;     genFarPointerSet
   5BC3 90 08 2A           6598 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000d)
   5BC6 74 72              6599 	mov	a,#0x72
   5BC8 F0                 6600 	movx	@dptr,a
                           6601 ;	genPointerSet
                           6602 ;     genFarPointerSet
   5BC9 90 08 2B           6603 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000e)
   5BCC 74 65              6604 	mov	a,#0x65
   5BCE F0                 6605 	movx	@dptr,a
                           6606 ;	genPointerSet
                           6607 ;     genFarPointerSet
   5BCF 90 08 2C           6608 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000f)
   5BD2 74 47              6609 	mov	a,#0x47
   5BD4 F0                 6610 	movx	@dptr,a
                           6611 ;	genPointerSet
                           6612 ;     genFarPointerSet
   5BD5 90 08 2D           6613 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0010)
   5BD8 74 50              6614 	mov	a,#0x50
   5BDA F0                 6615 	movx	@dptr,a
                           6616 ;	genPointerSet
                           6617 ;     genFarPointerSet
   5BDB 90 08 2E           6618 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0011)
   5BDE 74 49              6619 	mov	a,#0x49
   5BE0 F0                 6620 	movx	@dptr,a
                           6621 ;	genPointerSet
                           6622 ;     genFarPointerSet
   5BE1 90 08 2F           6623 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0012)
   5BE4 74 4F              6624 	mov	a,#0x4F
   5BE6 F0                 6625 	movx	@dptr,a
                           6626 ;	genPointerSet
                           6627 ;     genFarPointerSet
   5BE7 90 08 30           6628 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0013)
   5BEA 74 2F              6629 	mov	a,#0x2F
   5BEC F0                 6630 	movx	@dptr,a
                           6631 ;	genPointerSet
                           6632 ;     genFarPointerSet
   5BED 90 08 31           6633 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0014)
   5BF0 74 63              6634 	mov	a,#0x63
   5BF2 F0                 6635 	movx	@dptr,a
                           6636 ;	genPointerSet
                           6637 ;     genFarPointerSet
   5BF3 90 08 32           6638 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0015)
   5BF6 74 6F              6639 	mov	a,#0x6F
   5BF8 F0                 6640 	movx	@dptr,a
                           6641 ;	genPointerSet
                           6642 ;     genFarPointerSet
   5BF9 90 08 33           6643 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0016)
   5BFC 74 72              6644 	mov	a,#0x72
   5BFE F0                 6645 	movx	@dptr,a
                           6646 ;	genPointerSet
                           6647 ;     genFarPointerSet
   5BFF 90 08 34           6648 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0017)
   5C02 74 65              6649 	mov	a,#0x65
   5C04 F0                 6650 	movx	@dptr,a
                           6651 ;	genPointerSet
                           6652 ;     genFarPointerSet
   5C05 90 08 35           6653 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0018)
   5C08 74 5F              6654 	mov	a,#0x5F
   5C0A F0                 6655 	movx	@dptr,a
                           6656 ;	genPointerSet
                           6657 ;     genFarPointerSet
   5C0B 90 08 36           6658 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0019)
   5C0E 74 67              6659 	mov	a,#0x67
   5C10 F0                 6660 	movx	@dptr,a
                           6661 ;	genPointerSet
                           6662 ;     genFarPointerSet
   5C11 90 08 37           6663 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001a)
   5C14 74 70              6664 	mov	a,#0x70
   5C16 F0                 6665 	movx	@dptr,a
                           6666 ;	genPointerSet
                           6667 ;     genFarPointerSet
   5C17 90 08 38           6668 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001b)
   5C1A 74 69              6669 	mov	a,#0x69
   5C1C F0                 6670 	movx	@dptr,a
                           6671 ;	genPointerSet
                           6672 ;     genFarPointerSet
   5C1D 90 08 39           6673 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001c)
   5C20 74 6F              6674 	mov	a,#0x6F
   5C22 F0                 6675 	movx	@dptr,a
                           6676 ;	genPointerSet
                           6677 ;     genFarPointerSet
   5C23 90 08 3A           6678 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001d)
   5C26 74 2E              6679 	mov	a,#0x2E
   5C28 F0                 6680 	movx	@dptr,a
                           6681 ;	genPointerSet
                           6682 ;     genFarPointerSet
   5C29 90 08 3B           6683 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001e)
   5C2C 74 63              6684 	mov	a,#0x63
   5C2E F0                 6685 	movx	@dptr,a
                           6686 ;	genPointerSet
                           6687 ;     genFarPointerSet
   5C2F 90 08 3C           6688 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001f)
   5C32 74 00              6689 	mov	a,#0x00
   5C34 F0                 6690 	movx	@dptr,a
                           6691 ;	genAssign
   5C35 90 00 2E           6692 	mov	dptr,#_HAL_assert_fail_PARM_2
   5C38 74 C9              6693 	mov	a,#0xC9
   5C3A F0                 6694 	movx	@dptr,a
   5C3B A3                 6695 	inc	dptr
   5C3C 74 01              6696 	mov	a,#0x01
   5C3E F0                 6697 	movx	@dptr,a
   5C3F A3                 6698 	inc	dptr
   5C40 74 00              6699 	mov	a,#0x00
   5C42 F0                 6700 	movx	@dptr,a
   5C43 A3                 6701 	inc	dptr
   5C44 74 00              6702 	mov	a,#0x00
   5C46 F0                 6703 	movx	@dptr,a
                           6704 ;	genCall
   5C47 75 82 1D           6705 	mov	dpl,#_GPIO_clear_irq_file_name_4_4
   5C4A 75 83 08           6706 	mov	dph,#(_GPIO_clear_irq_file_name_4_4 >> 8)
   5C4D 75 F0 00           6707 	mov	b,#0x00
   5C50 12 08 16           6708 	lcall	_HAL_assert_fail
                    1E4D   6709 	C$core_gpio.c$459$1$1 ==.
                           6710 ;	../drivers/CoreGPIO/core_gpio.c:459: }
   5C53                    6711 00111$:
                    1E4D   6712 	C$core_gpio.c$460$1$1 ==.
                    1E4D   6713 	XG$GPIO_clear_irq$0$0 ==.
   5C53 22                 6714 	ret
                           6715 	.area CSEG    (CODE)
                           6716 	.area CONST   (CODE)
                           6717 	.area XINIT   (CODE)
                           6718 	.area CABS    (ABS,CODE)
