                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Mon May 02 12:51:58 2016
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
   0725                      92 _GPIO_init_PARM_2:
   0725                      93 	.ds 2
                    0002     94 LGPIO_init$bus_width$1$1==.
   0727                      95 _GPIO_init_PARM_3:
   0727                      96 	.ds 1
                    0003     97 LGPIO_init$this_gpio$1$1==.
   0728                      98 _GPIO_init_this_gpio_1_1:
   0728                      99 	.ds 3
                    0006    100 LGPIO_init$i$1$1==.
   072B                     101 _GPIO_init_i_1_1:
   072B                     102 	.ds 1
                    0007    103 LGPIO_init$cfg_reg_addr$1$1==.
   072C                     104 _GPIO_init_cfg_reg_addr_1_1:
   072C                     105 	.ds 2
                    0009    106 LGPIO_init$file_name$4$5==.
   072E                     107 _GPIO_init_file_name_4_5:
   072E                     108 	.ds 32
                    0029    109 LGPIO_config$port_id$1$1==.
   074E                     110 _GPIO_config_PARM_2:
   074E                     111 	.ds 1
                    002A    112 LGPIO_config$config$1$1==.
   074F                     113 _GPIO_config_PARM_3:
   074F                     114 	.ds 4
                    002E    115 LGPIO_config$this_gpio$1$1==.
   0753                     116 _GPIO_config_this_gpio_1_1:
   0753                     117 	.ds 3
                    0031    118 LGPIO_config$file_name$3$3==.
   0756                     119 _GPIO_config_file_name_3_3:
   0756                     120 	.ds 32
                    0051    121 LGPIO_config$file_name$4$6==.
   0776                     122 _GPIO_config_file_name_4_6:
   0776                     123 	.ds 32
                    0071    124 LGPIO_set_outputs$value$1$1==.
   0796                     125 _GPIO_set_outputs_PARM_2:
   0796                     126 	.ds 4
                    0075    127 LGPIO_set_outputs$this_gpio$1$1==.
   079A                     128 _GPIO_set_outputs_this_gpio_1_1:
   079A                     129 	.ds 3
                    0078    130 LGPIO_set_outputs$file_name$4$4==.
   079D                     131 _GPIO_set_outputs_file_name_4_4:
   079D                     132 	.ds 32
                    0098    133 LGPIO_set_outputs$file_name$3$6==.
   07BD                     134 _GPIO_set_outputs_file_name_3_6:
   07BD                     135 	.ds 32
                    00B8    136 LGPIO_get_inputs$this_gpio$1$1==.
   07DD                     137 _GPIO_get_inputs_this_gpio_1_1:
   07DD                     138 	.ds 3
                    00BB    139 LGPIO_get_inputs$gpio_in$1$1==.
   07E0                     140 _GPIO_get_inputs_gpio_in_1_1:
   07E0                     141 	.ds 4
                    00BF    142 LGPIO_get_inputs$file_name$4$4==.
   07E4                     143 _GPIO_get_inputs_file_name_4_4:
   07E4                     144 	.ds 32
                    00DF    145 LGPIO_get_outputs$this_gpio$1$1==.
   0804                     146 _GPIO_get_outputs_this_gpio_1_1:
   0804                     147 	.ds 3
                    00E2    148 LGPIO_get_outputs$gpio_out$1$1==.
   0807                     149 _GPIO_get_outputs_gpio_out_1_1:
   0807                     150 	.ds 4
                    00E6    151 LGPIO_get_outputs$file_name$4$4==.
   080B                     152 _GPIO_get_outputs_file_name_4_4:
   080B                     153 	.ds 32
                    0106    154 LGPIO_set_output$port_id$1$1==.
   082B                     155 _GPIO_set_output_PARM_2:
   082B                     156 	.ds 1
                    0107    157 LGPIO_set_output$value$1$1==.
   082C                     158 _GPIO_set_output_PARM_3:
   082C                     159 	.ds 1
                    0108    160 LGPIO_set_output$this_gpio$1$1==.
   082D                     161 _GPIO_set_output_this_gpio_1_1:
   082D                     162 	.ds 3
                    010B    163 LGPIO_set_output$file_name$3$3==.
   0830                     164 _GPIO_set_output_file_name_3_3:
   0830                     165 	.ds 32
                    012B    166 LGPIO_set_output$outputs_state$3$5==.
   0850                     167 _GPIO_set_output_outputs_state_3_5:
   0850                     168 	.ds 4
                    012F    169 LGPIO_set_output$file_name$5$9==.
   0854                     170 _GPIO_set_output_file_name_5_9:
   0854                     171 	.ds 32
                    014F    172 LGPIO_set_output$outputs_state$3$10==.
   0874                     173 _GPIO_set_output_outputs_state_3_10:
   0874                     174 	.ds 2
                    0151    175 LGPIO_set_output$file_name$5$14==.
   0876                     176 _GPIO_set_output_file_name_5_14:
   0876                     177 	.ds 32
                    0171    178 LGPIO_set_output$outputs_state$3$15==.
   0896                     179 _GPIO_set_output_outputs_state_3_15:
   0896                     180 	.ds 1
                    0172    181 LGPIO_set_output$file_name$5$19==.
   0897                     182 _GPIO_set_output_file_name_5_19:
   0897                     183 	.ds 32
                    0192    184 LGPIO_set_output$file_name$4$21==.
   08B7                     185 _GPIO_set_output_file_name_4_21:
   08B7                     186 	.ds 32
                    01B2    187 LGPIO_drive_inout$port_id$1$1==.
   08D7                     188 _GPIO_drive_inout_PARM_2:
   08D7                     189 	.ds 1
                    01B3    190 LGPIO_drive_inout$inout_state$1$1==.
   08D8                     191 _GPIO_drive_inout_PARM_3:
   08D8                     192 	.ds 1
                    01B4    193 LGPIO_drive_inout$this_gpio$1$1==.
   08D9                     194 _GPIO_drive_inout_this_gpio_1_1:
   08D9                     195 	.ds 3
                    01B7    196 LGPIO_drive_inout$file_name$3$3==.
   08DC                     197 _GPIO_drive_inout_file_name_3_3:
   08DC                     198 	.ds 32
                    01D7    199 LGPIO_drive_inout$file_name$4$6==.
   08FC                     200 _GPIO_drive_inout_file_name_4_6:
   08FC                     201 	.ds 32
                    01F7    202 LGPIO_enable_irq$port_id$1$1==.
   091C                     203 _GPIO_enable_irq_PARM_2:
   091C                     204 	.ds 1
                    01F8    205 LGPIO_enable_irq$this_gpio$1$1==.
   091D                     206 _GPIO_enable_irq_this_gpio_1_1:
   091D                     207 	.ds 3
                    01FB    208 LGPIO_enable_irq$file_name$3$3==.
   0920                     209 _GPIO_enable_irq_file_name_3_3:
   0920                     210 	.ds 32
                    021B    211 LGPIO_disable_irq$port_id$1$1==.
   0940                     212 _GPIO_disable_irq_PARM_2:
   0940                     213 	.ds 1
                    021C    214 LGPIO_disable_irq$this_gpio$1$1==.
   0941                     215 _GPIO_disable_irq_this_gpio_1_1:
   0941                     216 	.ds 3
                    021F    217 LGPIO_disable_irq$file_name$3$3==.
   0944                     218 _GPIO_disable_irq_file_name_3_3:
   0944                     219 	.ds 32
                    023F    220 LGPIO_clear_irq$port_id$1$1==.
   0964                     221 _GPIO_clear_irq_PARM_2:
   0964                     222 	.ds 1
                    0240    223 LGPIO_clear_irq$this_gpio$1$1==.
   0965                     224 _GPIO_clear_irq_this_gpio_1_1:
   0965                     225 	.ds 3
                    0243    226 LGPIO_clear_irq$file_name$4$4==.
   0968                     227 _GPIO_clear_irq_file_name_4_4:
   0968                     228 	.ds 32
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
   42E1                     275 _GPIO_init:
                    0002    276 	ar2 = 0x02
                    0003    277 	ar3 = 0x03
                    0004    278 	ar4 = 0x04
                    0005    279 	ar5 = 0x05
                    0006    280 	ar6 = 0x06
                    0007    281 	ar7 = 0x07
                    0000    282 	ar0 = 0x00
                    0001    283 	ar1 = 0x01
                            284 ;	genReceive
   42E1 AA F0               285 	mov	r2,b
   42E3 AB 83               286 	mov	r3,dph
   42E5 E5 82               287 	mov	a,dpl
   42E7 90 07 28            288 	mov	dptr,#_GPIO_init_this_gpio_1_1
   42EA F0                  289 	movx	@dptr,a
   42EB A3                  290 	inc	dptr
   42EC EB                  291 	mov	a,r3
   42ED F0                  292 	movx	@dptr,a
   42EE A3                  293 	inc	dptr
   42EF EA                  294 	mov	a,r2
   42F0 F0                  295 	movx	@dptr,a
                    0010    296 	C$core_gpio.c$39$1$0 ==.
                            297 ;	../drivers/CoreGPIO/core_gpio.c:39: addr_t cfg_reg_addr = base_addr;
                            298 ;	genAssign
   42F1 90 07 25            299 	mov	dptr,#_GPIO_init_PARM_2
   42F4 E0                  300 	movx	a,@dptr
   42F5 FA                  301 	mov	r2,a
   42F6 A3                  302 	inc	dptr
   42F7 E0                  303 	movx	a,@dptr
   42F8 FB                  304 	mov	r3,a
                    0018    305 	C$core_gpio.c$41$1$1 ==.
                            306 ;	../drivers/CoreGPIO/core_gpio.c:41: this_gpio->base_addr = base_addr;
                            307 ;	genAssign
   42F9 90 07 28            308 	mov	dptr,#_GPIO_init_this_gpio_1_1
   42FC E0                  309 	movx	a,@dptr
   42FD FC                  310 	mov	r4,a
   42FE A3                  311 	inc	dptr
   42FF E0                  312 	movx	a,@dptr
   4300 FD                  313 	mov	r5,a
   4301 A3                  314 	inc	dptr
   4302 E0                  315 	movx	a,@dptr
   4303 FE                  316 	mov	r6,a
                            317 ;	genPointerSet
                            318 ;	genGenPointerSet
   4304 8C 82               319 	mov	dpl,r4
   4306 8D 83               320 	mov	dph,r5
   4308 8E F0               321 	mov	b,r6
   430A EA                  322 	mov	a,r2
   430B 12 61 2F            323 	lcall	__gptrput
   430E A3                  324 	inc	dptr
   430F EB                  325 	mov	a,r3
   4310 12 61 2F            326 	lcall	__gptrput
                    0032    327 	C$core_gpio.c$42$1$1 ==.
                            328 ;	../drivers/CoreGPIO/core_gpio.c:42: this_gpio->apb_bus_width = bus_width;
                            329 ;	genPlus
                            330 ;	genPlusIncr
   4313 74 02               331 	mov	a,#0x02
   4315 25 04               332 	add	a,ar4
   4317 FC                  333 	mov	r4,a
   4318 74 00               334 	mov	a,#0x00
   431A 35 05               335 	addc	a,ar5
   431C FD                  336 	mov	r5,a
                            337 ;	genAssign
   431D 90 07 27            338 	mov	dptr,#_GPIO_init_PARM_3
   4320 E0                  339 	movx	a,@dptr
   4321 FF                  340 	mov	r7,a
                            341 ;	genPointerSet
                            342 ;	genGenPointerSet
   4322 8C 82               343 	mov	dpl,r4
   4324 8D 83               344 	mov	dph,r5
   4326 8E F0               345 	mov	b,r6
   4328 EF                  346 	mov	a,r7
   4329 12 61 2F            347 	lcall	__gptrput
                    004B    348 	C$core_gpio.c$45$1$1 ==.
                            349 ;	../drivers/CoreGPIO/core_gpio.c:45: for( i = 0, cfg_reg_addr = base_addr; i < NB_OF_GPIO; ++i )
                            350 ;	genAssign
   432C 90 07 2B            351 	mov	dptr,#_GPIO_init_i_1_1
   432F 74 00               352 	mov	a,#0x00
   4331 F0                  353 	movx	@dptr,a
                            354 ;	genAssign
   4332 90 07 2C            355 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
   4335 EA                  356 	mov	a,r2
   4336 F0                  357 	movx	@dptr,a
   4337 A3                  358 	inc	dptr
   4338 EB                  359 	mov	a,r3
   4339 F0                  360 	movx	@dptr,a
   433A                     361 00111$:
                            362 ;	genAssign
   433A 90 07 2B            363 	mov	dptr,#_GPIO_init_i_1_1
   433D E0                  364 	movx	a,@dptr
   433E FA                  365 	mov	r2,a
                            366 ;	genCmpLt
                            367 ;	genCmp
   433F BA 20 00            368 	cjne	r2,#0x20,00122$
   4342                     369 00122$:
                            370 ;	genIfxJump
   4342 40 03               371 	jc	00123$
   4344 02 43 7F            372 	ljmp	00114$
   4347                     373 00123$:
                    0066    374 	C$core_gpio.c$47$2$2 ==.
                            375 ;	../drivers/CoreGPIO/core_gpio.c:47: HW_set_8bit_reg( cfg_reg_addr, 0 );
                            376 ;	genAssign
   4347 90 07 2C            377 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
   434A E0                  378 	movx	a,@dptr
   434B FB                  379 	mov	r3,a
   434C A3                  380 	inc	dptr
   434D E0                  381 	movx	a,@dptr
   434E FC                  382 	mov	r4,a
                            383 ;	genAssign
   434F 90 00 A9            384 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   4352 74 00               385 	mov	a,#0x00
   4354 F0                  386 	movx	@dptr,a
                            387 ;	genCall
   4355 8B 82               388 	mov	dpl,r3
   4357 8C 83               389 	mov	dph,r4
   4359 C0 02               390 	push	ar2
   435B C0 03               391 	push	ar3
   435D C0 04               392 	push	ar4
   435F 12 06 99            393 	lcall	_HW_set_8bit_reg
   4362 D0 04               394 	pop	ar4
   4364 D0 03               395 	pop	ar3
   4366 D0 02               396 	pop	ar2
                    0087    397 	C$core_gpio.c$48$2$2 ==.
                            398 ;	../drivers/CoreGPIO/core_gpio.c:48: cfg_reg_addr += 4;
                            399 ;	genPlus
   4368 90 07 2C            400 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
                            401 ;	genPlusIncr
   436B 74 04               402 	mov	a,#0x04
   436D 25 03               403 	add	a,ar3
   436F F0                  404 	movx	@dptr,a
   4370 74 00               405 	mov	a,#0x00
   4372 35 04               406 	addc	a,ar4
   4374 A3                  407 	inc	dptr
   4375 F0                  408 	movx	@dptr,a
                    0095    409 	C$core_gpio.c$45$1$1 ==.
                            410 ;	../drivers/CoreGPIO/core_gpio.c:45: for( i = 0, cfg_reg_addr = base_addr; i < NB_OF_GPIO; ++i )
                            411 ;	genPlus
   4376 90 07 2B            412 	mov	dptr,#_GPIO_init_i_1_1
                            413 ;	genPlusIncr
   4379 EA                  414 	mov	a,r2
   437A 04                  415 	inc	a
   437B F0                  416 	movx	@dptr,a
   437C 02 43 3A            417 	ljmp	00111$
   437F                     418 00114$:
                    009E    419 	C$core_gpio.c$51$1$1 ==.
                            420 ;	../drivers/CoreGPIO/core_gpio.c:51: switch( this_gpio->apb_bus_width )
                            421 ;	genAssign
   437F 90 07 28            422 	mov	dptr,#_GPIO_init_this_gpio_1_1
   4382 E0                  423 	movx	a,@dptr
   4383 FA                  424 	mov	r2,a
   4384 A3                  425 	inc	dptr
   4385 E0                  426 	movx	a,@dptr
   4386 FB                  427 	mov	r3,a
   4387 A3                  428 	inc	dptr
   4388 E0                  429 	movx	a,@dptr
   4389 FC                  430 	mov	r4,a
                            431 ;	genPlus
                            432 ;	genPlusIncr
   438A 74 02               433 	mov	a,#0x02
   438C 25 02               434 	add	a,ar2
   438E FD                  435 	mov	r5,a
   438F 74 00               436 	mov	a,#0x00
   4391 35 03               437 	addc	a,ar3
   4393 FE                  438 	mov	r6,a
   4394 8C 07               439 	mov	ar7,r4
                            440 ;	genPointerGet
                            441 ;	genGenPointerGet
   4396 8D 82               442 	mov	dpl,r5
   4398 8E 83               443 	mov	dph,r6
   439A 8F F0               444 	mov	b,r7
   439C 12 61 48            445 	lcall	__gptrget
   439F FD                  446 	mov	r5,a
                            447 ;	genCmpEq
                            448 ;	gencjneshort
   43A0 BD 00 03            449 	cjne	r5,#0x00,00124$
   43A3 02 44 4C            450 	ljmp	00103$
   43A6                     451 00124$:
                            452 ;	genCmpEq
                            453 ;	gencjneshort
   43A6 BD 01 03            454 	cjne	r5,#0x01,00125$
   43A9 02 43 E9            455 	ljmp	00102$
   43AC                     456 00125$:
                            457 ;	genCmpEq
                            458 ;	gencjneshort
   43AC BD 02 02            459 	cjne	r5,#0x02,00126$
   43AF 80 03               460 	sjmp	00127$
   43B1                     461 00126$:
   43B1 02 45 0B            462 	ljmp	00107$
   43B4                     463 00127$:
                    00D3    464 	C$core_gpio.c$54$2$3 ==.
                            465 ;	../drivers/CoreGPIO/core_gpio.c:54: HAL_set_32bit_reg( this_gpio->base_addr, IRQ, CLEAR_ALL_IRQ32 );
                            466 ;	genPointerGet
                            467 ;	genGenPointerGet
   43B4 8A 82               468 	mov	dpl,r2
   43B6 8B 83               469 	mov	dph,r3
   43B8 8C F0               470 	mov	b,r4
   43BA 12 61 48            471 	lcall	__gptrget
   43BD FD                  472 	mov	r5,a
   43BE A3                  473 	inc	dptr
   43BF 12 61 48            474 	lcall	__gptrget
   43C2 FE                  475 	mov	r6,a
                            476 ;	genPlus
                            477 ;	genPlusIncr
   43C3 74 80               478 	mov	a,#0x80
   43C5 25 05               479 	add	a,ar5
   43C7 FD                  480 	mov	r5,a
   43C8 74 00               481 	mov	a,#0x00
   43CA 35 06               482 	addc	a,ar6
   43CC FE                  483 	mov	r6,a
                            484 ;	genAssign
   43CD 90 00 AA            485 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   43D0 74 FF               486 	mov	a,#0xFF
   43D2 F0                  487 	movx	@dptr,a
   43D3 A3                  488 	inc	dptr
   43D4 74 FF               489 	mov	a,#0xFF
   43D6 F0                  490 	movx	@dptr,a
   43D7 A3                  491 	inc	dptr
   43D8 74 FF               492 	mov	a,#0xFF
   43DA F0                  493 	movx	@dptr,a
   43DB A3                  494 	inc	dptr
   43DC 74 FF               495 	mov	a,#0xFF
   43DE F0                  496 	movx	@dptr,a
                            497 ;	genCall
   43DF 8D 82               498 	mov	dpl,r5
   43E1 8E 83               499 	mov	dph,r6
   43E3 12 06 62            500 	lcall	_HW_set_32bit_reg
                    0105    501 	C$core_gpio.c$55$2$3 ==.
                            502 ;	../drivers/CoreGPIO/core_gpio.c:55: break;
   43E6 02 45 E4            503 	ljmp	00115$
                    0108    504 	C$core_gpio.c$57$2$3 ==.
                            505 ;	../drivers/CoreGPIO/core_gpio.c:57: case GPIO_APB_16_BITS_BUS:
   43E9                     506 00102$:
                    0108    507 	C$core_gpio.c$58$2$3 ==.
                            508 ;	../drivers/CoreGPIO/core_gpio.c:58: HAL_set_16bit_reg( this_gpio->base_addr, IRQ0, (uint16_t)CLEAR_ALL_IRQ16 );
                            509 ;	genPointerGet
                            510 ;	genGenPointerGet
   43E9 8A 82               511 	mov	dpl,r2
   43EB 8B 83               512 	mov	dph,r3
   43ED 8C F0               513 	mov	b,r4
   43EF 12 61 48            514 	lcall	__gptrget
   43F2 FD                  515 	mov	r5,a
   43F3 A3                  516 	inc	dptr
   43F4 12 61 48            517 	lcall	__gptrget
   43F7 FE                  518 	mov	r6,a
                            519 ;	genPlus
                            520 ;	genPlusIncr
   43F8 74 80               521 	mov	a,#0x80
   43FA 25 05               522 	add	a,ar5
   43FC FD                  523 	mov	r5,a
   43FD 74 00               524 	mov	a,#0x00
   43FF 35 06               525 	addc	a,ar6
   4401 FE                  526 	mov	r6,a
                            527 ;	genAssign
   4402 90 00 A7            528 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   4405 74 FF               529 	mov	a,#0xFF
   4407 F0                  530 	movx	@dptr,a
   4408 A3                  531 	inc	dptr
   4409 74 FF               532 	mov	a,#0xFF
   440B F0                  533 	movx	@dptr,a
                            534 ;	genCall
   440C 8D 82               535 	mov	dpl,r5
   440E 8E 83               536 	mov	dph,r6
   4410 C0 02               537 	push	ar2
   4412 C0 03               538 	push	ar3
   4414 C0 04               539 	push	ar4
   4416 12 06 7E            540 	lcall	_HW_set_16bit_reg
   4419 D0 04               541 	pop	ar4
   441B D0 03               542 	pop	ar3
   441D D0 02               543 	pop	ar2
                    013E    544 	C$core_gpio.c$59$2$3 ==.
                            545 ;	../drivers/CoreGPIO/core_gpio.c:59: HAL_set_16bit_reg( this_gpio->base_addr, IRQ1, (uint16_t)CLEAR_ALL_IRQ16 );
                            546 ;	genPointerGet
                            547 ;	genGenPointerGet
   441F 8A 82               548 	mov	dpl,r2
   4421 8B 83               549 	mov	dph,r3
   4423 8C F0               550 	mov	b,r4
   4425 12 61 48            551 	lcall	__gptrget
   4428 FD                  552 	mov	r5,a
   4429 A3                  553 	inc	dptr
   442A 12 61 48            554 	lcall	__gptrget
   442D FE                  555 	mov	r6,a
                            556 ;	genPlus
                            557 ;	genPlusIncr
   442E 74 84               558 	mov	a,#0x84
   4430 25 05               559 	add	a,ar5
   4432 FD                  560 	mov	r5,a
   4433 74 00               561 	mov	a,#0x00
   4435 35 06               562 	addc	a,ar6
   4437 FE                  563 	mov	r6,a
                            564 ;	genAssign
   4438 90 00 A7            565 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   443B 74 FF               566 	mov	a,#0xFF
   443D F0                  567 	movx	@dptr,a
   443E A3                  568 	inc	dptr
   443F 74 FF               569 	mov	a,#0xFF
   4441 F0                  570 	movx	@dptr,a
                            571 ;	genCall
   4442 8D 82               572 	mov	dpl,r5
   4444 8E 83               573 	mov	dph,r6
   4446 12 06 7E            574 	lcall	_HW_set_16bit_reg
                    0168    575 	C$core_gpio.c$60$2$3 ==.
                            576 ;	../drivers/CoreGPIO/core_gpio.c:60: break;
   4449 02 45 E4            577 	ljmp	00115$
                    016B    578 	C$core_gpio.c$62$2$3 ==.
                            579 ;	../drivers/CoreGPIO/core_gpio.c:62: case GPIO_APB_8_BITS_BUS:
   444C                     580 00103$:
                    016B    581 	C$core_gpio.c$63$2$3 ==.
                            582 ;	../drivers/CoreGPIO/core_gpio.c:63: HAL_set_8bit_reg( this_gpio->base_addr, IRQ0, (uint8_t)CLEAR_ALL_IRQ8 );
                            583 ;	genPointerGet
                            584 ;	genGenPointerGet
   444C 8A 82               585 	mov	dpl,r2
   444E 8B 83               586 	mov	dph,r3
   4450 8C F0               587 	mov	b,r4
   4452 12 61 48            588 	lcall	__gptrget
   4455 FD                  589 	mov	r5,a
   4456 A3                  590 	inc	dptr
   4457 12 61 48            591 	lcall	__gptrget
   445A FE                  592 	mov	r6,a
                            593 ;	genPlus
                            594 ;	genPlusIncr
   445B 74 80               595 	mov	a,#0x80
   445D 25 05               596 	add	a,ar5
   445F FD                  597 	mov	r5,a
   4460 74 00               598 	mov	a,#0x00
   4462 35 06               599 	addc	a,ar6
   4464 FE                  600 	mov	r6,a
                            601 ;	genAssign
   4465 90 00 A9            602 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   4468 74 FF               603 	mov	a,#0xFF
   446A F0                  604 	movx	@dptr,a
                            605 ;	genCall
   446B 8D 82               606 	mov	dpl,r5
   446D 8E 83               607 	mov	dph,r6
   446F C0 02               608 	push	ar2
   4471 C0 03               609 	push	ar3
   4473 C0 04               610 	push	ar4
   4475 12 06 99            611 	lcall	_HW_set_8bit_reg
   4478 D0 04               612 	pop	ar4
   447A D0 03               613 	pop	ar3
   447C D0 02               614 	pop	ar2
                    019D    615 	C$core_gpio.c$64$2$3 ==.
                            616 ;	../drivers/CoreGPIO/core_gpio.c:64: HAL_set_8bit_reg( this_gpio->base_addr, IRQ1, (uint8_t)CLEAR_ALL_IRQ8 );
                            617 ;	genPointerGet
                            618 ;	genGenPointerGet
   447E 8A 82               619 	mov	dpl,r2
   4480 8B 83               620 	mov	dph,r3
   4482 8C F0               621 	mov	b,r4
   4484 12 61 48            622 	lcall	__gptrget
   4487 FD                  623 	mov	r5,a
   4488 A3                  624 	inc	dptr
   4489 12 61 48            625 	lcall	__gptrget
   448C FE                  626 	mov	r6,a
                            627 ;	genPlus
                            628 ;	genPlusIncr
   448D 74 84               629 	mov	a,#0x84
   448F 25 05               630 	add	a,ar5
   4491 FD                  631 	mov	r5,a
   4492 74 00               632 	mov	a,#0x00
   4494 35 06               633 	addc	a,ar6
   4496 FE                  634 	mov	r6,a
                            635 ;	genAssign
   4497 90 00 A9            636 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   449A 74 FF               637 	mov	a,#0xFF
   449C F0                  638 	movx	@dptr,a
                            639 ;	genCall
   449D 8D 82               640 	mov	dpl,r5
   449F 8E 83               641 	mov	dph,r6
   44A1 C0 02               642 	push	ar2
   44A3 C0 03               643 	push	ar3
   44A5 C0 04               644 	push	ar4
   44A7 12 06 99            645 	lcall	_HW_set_8bit_reg
   44AA D0 04               646 	pop	ar4
   44AC D0 03               647 	pop	ar3
   44AE D0 02               648 	pop	ar2
                    01CF    649 	C$core_gpio.c$65$2$3 ==.
                            650 ;	../drivers/CoreGPIO/core_gpio.c:65: HAL_set_8bit_reg( this_gpio->base_addr, IRQ2, (uint8_t)CLEAR_ALL_IRQ8 );
                            651 ;	genPointerGet
                            652 ;	genGenPointerGet
   44B0 8A 82               653 	mov	dpl,r2
   44B2 8B 83               654 	mov	dph,r3
   44B4 8C F0               655 	mov	b,r4
   44B6 12 61 48            656 	lcall	__gptrget
   44B9 FD                  657 	mov	r5,a
   44BA A3                  658 	inc	dptr
   44BB 12 61 48            659 	lcall	__gptrget
   44BE FE                  660 	mov	r6,a
                            661 ;	genPlus
                            662 ;	genPlusIncr
   44BF 74 88               663 	mov	a,#0x88
   44C1 25 05               664 	add	a,ar5
   44C3 FD                  665 	mov	r5,a
   44C4 74 00               666 	mov	a,#0x00
   44C6 35 06               667 	addc	a,ar6
   44C8 FE                  668 	mov	r6,a
                            669 ;	genAssign
   44C9 90 00 A9            670 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   44CC 74 FF               671 	mov	a,#0xFF
   44CE F0                  672 	movx	@dptr,a
                            673 ;	genCall
   44CF 8D 82               674 	mov	dpl,r5
   44D1 8E 83               675 	mov	dph,r6
   44D3 C0 02               676 	push	ar2
   44D5 C0 03               677 	push	ar3
   44D7 C0 04               678 	push	ar4
   44D9 12 06 99            679 	lcall	_HW_set_8bit_reg
   44DC D0 04               680 	pop	ar4
   44DE D0 03               681 	pop	ar3
   44E0 D0 02               682 	pop	ar2
                    0201    683 	C$core_gpio.c$66$2$3 ==.
                            684 ;	../drivers/CoreGPIO/core_gpio.c:66: HAL_set_8bit_reg( this_gpio->base_addr, IRQ3, (uint8_t)CLEAR_ALL_IRQ8 );
                            685 ;	genPointerGet
                            686 ;	genGenPointerGet
   44E2 8A 82               687 	mov	dpl,r2
   44E4 8B 83               688 	mov	dph,r3
   44E6 8C F0               689 	mov	b,r4
   44E8 12 61 48            690 	lcall	__gptrget
   44EB FA                  691 	mov	r2,a
   44EC A3                  692 	inc	dptr
   44ED 12 61 48            693 	lcall	__gptrget
   44F0 FB                  694 	mov	r3,a
                            695 ;	genPlus
                            696 ;	genPlusIncr
   44F1 74 8C               697 	mov	a,#0x8C
   44F3 25 02               698 	add	a,ar2
   44F5 FA                  699 	mov	r2,a
   44F6 74 00               700 	mov	a,#0x00
   44F8 35 03               701 	addc	a,ar3
   44FA FB                  702 	mov	r3,a
                            703 ;	genAssign
   44FB 90 00 A9            704 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   44FE 74 FF               705 	mov	a,#0xFF
   4500 F0                  706 	movx	@dptr,a
                            707 ;	genCall
   4501 8A 82               708 	mov	dpl,r2
   4503 8B 83               709 	mov	dph,r3
   4505 12 06 99            710 	lcall	_HW_set_8bit_reg
                    0227    711 	C$core_gpio.c$67$2$3 ==.
                            712 ;	../drivers/CoreGPIO/core_gpio.c:67: break;
   4508 02 45 E4            713 	ljmp	00115$
                    022A    714 	C$core_gpio.c$70$2$3 ==.
                            715 ;	../drivers/CoreGPIO/core_gpio.c:70: HAL_ASSERT(0);
   450B                     716 00107$:
                            717 ;	genPointerSet
                            718 ;     genFarPointerSet
   450B 90 07 2E            719 	mov	dptr,#_GPIO_init_file_name_4_5
   450E 74 2E               720 	mov	a,#0x2E
   4510 F0                  721 	movx	@dptr,a
                            722 ;	genPointerSet
                            723 ;     genFarPointerSet
   4511 90 07 2F            724 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0001)
   4514 74 2E               725 	mov	a,#0x2E
   4516 F0                  726 	movx	@dptr,a
                            727 ;	genPointerSet
                            728 ;     genFarPointerSet
   4517 90 07 30            729 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0002)
   451A 74 2F               730 	mov	a,#0x2F
   451C F0                  731 	movx	@dptr,a
                            732 ;	genPointerSet
                            733 ;     genFarPointerSet
   451D 90 07 31            734 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0003)
   4520 74 64               735 	mov	a,#0x64
   4522 F0                  736 	movx	@dptr,a
                            737 ;	genPointerSet
                            738 ;     genFarPointerSet
   4523 90 07 32            739 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0004)
   4526 74 72               740 	mov	a,#0x72
   4528 F0                  741 	movx	@dptr,a
                            742 ;	genPointerSet
                            743 ;     genFarPointerSet
   4529 90 07 33            744 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0005)
   452C 74 69               745 	mov	a,#0x69
   452E F0                  746 	movx	@dptr,a
                            747 ;	genPointerSet
                            748 ;     genFarPointerSet
   452F 90 07 34            749 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0006)
   4532 74 76               750 	mov	a,#0x76
   4534 F0                  751 	movx	@dptr,a
                            752 ;	genPointerSet
                            753 ;     genFarPointerSet
   4535 90 07 35            754 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0007)
   4538 74 65               755 	mov	a,#0x65
   453A F0                  756 	movx	@dptr,a
                            757 ;	genPointerSet
                            758 ;     genFarPointerSet
   453B 90 07 36            759 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0008)
   453E 74 72               760 	mov	a,#0x72
   4540 F0                  761 	movx	@dptr,a
                            762 ;	genPointerSet
                            763 ;     genFarPointerSet
   4541 90 07 37            764 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0009)
   4544 74 73               765 	mov	a,#0x73
   4546 F0                  766 	movx	@dptr,a
                            767 ;	genPointerSet
                            768 ;     genFarPointerSet
   4547 90 07 38            769 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000a)
   454A 74 2F               770 	mov	a,#0x2F
   454C F0                  771 	movx	@dptr,a
                            772 ;	genPointerSet
                            773 ;     genFarPointerSet
   454D 90 07 39            774 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000b)
   4550 74 43               775 	mov	a,#0x43
   4552 F0                  776 	movx	@dptr,a
                            777 ;	genPointerSet
                            778 ;     genFarPointerSet
   4553 90 07 3A            779 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000c)
   4556 74 6F               780 	mov	a,#0x6F
   4558 F0                  781 	movx	@dptr,a
                            782 ;	genPointerSet
                            783 ;     genFarPointerSet
   4559 90 07 3B            784 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000d)
   455C 74 72               785 	mov	a,#0x72
   455E F0                  786 	movx	@dptr,a
                            787 ;	genPointerSet
                            788 ;     genFarPointerSet
   455F 90 07 3C            789 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000e)
   4562 74 65               790 	mov	a,#0x65
   4564 F0                  791 	movx	@dptr,a
                            792 ;	genPointerSet
                            793 ;     genFarPointerSet
   4565 90 07 3D            794 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000f)
   4568 74 47               795 	mov	a,#0x47
   456A F0                  796 	movx	@dptr,a
                            797 ;	genPointerSet
                            798 ;     genFarPointerSet
   456B 90 07 3E            799 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0010)
   456E 74 50               800 	mov	a,#0x50
   4570 F0                  801 	movx	@dptr,a
                            802 ;	genPointerSet
                            803 ;     genFarPointerSet
   4571 90 07 3F            804 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0011)
   4574 74 49               805 	mov	a,#0x49
   4576 F0                  806 	movx	@dptr,a
                            807 ;	genPointerSet
                            808 ;     genFarPointerSet
   4577 90 07 40            809 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0012)
   457A 74 4F               810 	mov	a,#0x4F
   457C F0                  811 	movx	@dptr,a
                            812 ;	genPointerSet
                            813 ;     genFarPointerSet
   457D 90 07 41            814 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0013)
   4580 74 2F               815 	mov	a,#0x2F
   4582 F0                  816 	movx	@dptr,a
                            817 ;	genPointerSet
                            818 ;     genFarPointerSet
   4583 90 07 42            819 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0014)
   4586 74 63               820 	mov	a,#0x63
   4588 F0                  821 	movx	@dptr,a
                            822 ;	genPointerSet
                            823 ;     genFarPointerSet
   4589 90 07 43            824 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0015)
   458C 74 6F               825 	mov	a,#0x6F
   458E F0                  826 	movx	@dptr,a
                            827 ;	genPointerSet
                            828 ;     genFarPointerSet
   458F 90 07 44            829 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0016)
   4592 74 72               830 	mov	a,#0x72
   4594 F0                  831 	movx	@dptr,a
                            832 ;	genPointerSet
                            833 ;     genFarPointerSet
   4595 90 07 45            834 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0017)
   4598 74 65               835 	mov	a,#0x65
   459A F0                  836 	movx	@dptr,a
                            837 ;	genPointerSet
                            838 ;     genFarPointerSet
   459B 90 07 46            839 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0018)
   459E 74 5F               840 	mov	a,#0x5F
   45A0 F0                  841 	movx	@dptr,a
                            842 ;	genPointerSet
                            843 ;     genFarPointerSet
   45A1 90 07 47            844 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0019)
   45A4 74 67               845 	mov	a,#0x67
   45A6 F0                  846 	movx	@dptr,a
                            847 ;	genPointerSet
                            848 ;     genFarPointerSet
   45A7 90 07 48            849 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001a)
   45AA 74 70               850 	mov	a,#0x70
   45AC F0                  851 	movx	@dptr,a
                            852 ;	genPointerSet
                            853 ;     genFarPointerSet
   45AD 90 07 49            854 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001b)
   45B0 74 69               855 	mov	a,#0x69
   45B2 F0                  856 	movx	@dptr,a
                            857 ;	genPointerSet
                            858 ;     genFarPointerSet
   45B3 90 07 4A            859 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001c)
   45B6 74 6F               860 	mov	a,#0x6F
   45B8 F0                  861 	movx	@dptr,a
                            862 ;	genPointerSet
                            863 ;     genFarPointerSet
   45B9 90 07 4B            864 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001d)
   45BC 74 2E               865 	mov	a,#0x2E
   45BE F0                  866 	movx	@dptr,a
                            867 ;	genPointerSet
                            868 ;     genFarPointerSet
   45BF 90 07 4C            869 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001e)
   45C2 74 63               870 	mov	a,#0x63
   45C4 F0                  871 	movx	@dptr,a
                            872 ;	genPointerSet
                            873 ;     genFarPointerSet
   45C5 90 07 4D            874 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001f)
   45C8 74 00               875 	mov	a,#0x00
   45CA F0                  876 	movx	@dptr,a
                            877 ;	genAssign
   45CB 90 00 8C            878 	mov	dptr,#_HAL_assert_fail_PARM_2
   45CE 74 46               879 	mov	a,#0x46
   45D0 F0                  880 	movx	@dptr,a
   45D1 E4                  881 	clr	a
   45D2 A3                  882 	inc	dptr
   45D3 F0                  883 	movx	@dptr,a
   45D4 A3                  884 	inc	dptr
   45D5 F0                  885 	movx	@dptr,a
   45D6 A3                  886 	inc	dptr
   45D7 F0                  887 	movx	@dptr,a
                            888 ;	genCall
   45D8 75 82 2E            889 	mov	dpl,#_GPIO_init_file_name_4_5
   45DB 75 83 07            890 	mov	dph,#(_GPIO_init_file_name_4_5 >> 8)
   45DE 75 F0 00            891 	mov	b,#0x00
   45E1 12 05 F6            892 	lcall	_HAL_assert_fail
                    0303    893 	C$core_gpio.c$72$1$1 ==.
                            894 ;	../drivers/CoreGPIO/core_gpio.c:72: }
   45E4                     895 00115$:
                    0303    896 	C$core_gpio.c$73$1$1 ==.
                    0303    897 	XG$GPIO_init$0$0 ==.
   45E4 22                  898 	ret
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
   45E5                     915 _GPIO_config:
                            916 ;	genReceive
   45E5 AA F0               917 	mov	r2,b
   45E7 AB 83               918 	mov	r3,dph
   45E9 E5 82               919 	mov	a,dpl
   45EB 90 07 53            920 	mov	dptr,#_GPIO_config_this_gpio_1_1
   45EE F0                  921 	movx	@dptr,a
   45EF A3                  922 	inc	dptr
   45F0 EB                  923 	mov	a,r3
   45F1 F0                  924 	movx	@dptr,a
   45F2 A3                  925 	inc	dptr
   45F3 EA                  926 	mov	a,r2
   45F4 F0                  927 	movx	@dptr,a
                    0314    928 	C$core_gpio.c$86$2$2 ==.
                            929 ;	../drivers/CoreGPIO/core_gpio.c:86: HAL_ASSERT( port_id < NB_OF_GPIO );
                            930 ;	genAssign
   45F5 90 07 4E            931 	mov	dptr,#_GPIO_config_PARM_2
   45F8 E0                  932 	movx	a,@dptr
   45F9 FA                  933 	mov	r2,a
                            934 ;	genCmpLt
                            935 ;	genCmp
   45FA BA 20 00            936 	cjne	r2,#0x20,00118$
   45FD                     937 00118$:
   45FD E4                  938 	clr	a
   45FE 33                  939 	rlc	a
   45FF FB                  940 	mov	r3,a
                            941 ;	genIfx
   4600 EB                  942 	mov	a,r3
                            943 ;	genIfxJump
   4601 60 03               944 	jz	00119$
   4603 02 46 E7            945 	ljmp	00104$
   4606                     946 00119$:
                            947 ;	genPointerSet
                            948 ;     genFarPointerSet
   4606 90 07 56            949 	mov	dptr,#_GPIO_config_file_name_3_3
   4609 74 2E               950 	mov	a,#0x2E
   460B F0                  951 	movx	@dptr,a
                            952 ;	genPointerSet
                            953 ;     genFarPointerSet
   460C 90 07 57            954 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0001)
   460F 74 2E               955 	mov	a,#0x2E
   4611 F0                  956 	movx	@dptr,a
                            957 ;	genPointerSet
                            958 ;     genFarPointerSet
   4612 90 07 58            959 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0002)
   4615 74 2F               960 	mov	a,#0x2F
   4617 F0                  961 	movx	@dptr,a
                            962 ;	genPointerSet
                            963 ;     genFarPointerSet
   4618 90 07 59            964 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0003)
   461B 74 64               965 	mov	a,#0x64
   461D F0                  966 	movx	@dptr,a
                            967 ;	genPointerSet
                            968 ;     genFarPointerSet
   461E 90 07 5A            969 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0004)
   4621 74 72               970 	mov	a,#0x72
   4623 F0                  971 	movx	@dptr,a
                            972 ;	genPointerSet
                            973 ;     genFarPointerSet
   4624 90 07 5B            974 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0005)
   4627 74 69               975 	mov	a,#0x69
   4629 F0                  976 	movx	@dptr,a
                            977 ;	genPointerSet
                            978 ;     genFarPointerSet
   462A 90 07 5C            979 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0006)
   462D 74 76               980 	mov	a,#0x76
   462F F0                  981 	movx	@dptr,a
                            982 ;	genPointerSet
                            983 ;     genFarPointerSet
   4630 90 07 5D            984 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0007)
   4633 74 65               985 	mov	a,#0x65
   4635 F0                  986 	movx	@dptr,a
                            987 ;	genPointerSet
                            988 ;     genFarPointerSet
   4636 90 07 5E            989 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0008)
   4639 74 72               990 	mov	a,#0x72
   463B F0                  991 	movx	@dptr,a
                            992 ;	genPointerSet
                            993 ;     genFarPointerSet
   463C 90 07 5F            994 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0009)
   463F 74 73               995 	mov	a,#0x73
   4641 F0                  996 	movx	@dptr,a
                            997 ;	genPointerSet
                            998 ;     genFarPointerSet
   4642 90 07 60            999 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000a)
   4645 74 2F              1000 	mov	a,#0x2F
   4647 F0                 1001 	movx	@dptr,a
                           1002 ;	genPointerSet
                           1003 ;     genFarPointerSet
   4648 90 07 61           1004 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000b)
   464B 74 43              1005 	mov	a,#0x43
   464D F0                 1006 	movx	@dptr,a
                           1007 ;	genPointerSet
                           1008 ;     genFarPointerSet
   464E 90 07 62           1009 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000c)
   4651 74 6F              1010 	mov	a,#0x6F
   4653 F0                 1011 	movx	@dptr,a
                           1012 ;	genPointerSet
                           1013 ;     genFarPointerSet
   4654 90 07 63           1014 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000d)
   4657 74 72              1015 	mov	a,#0x72
   4659 F0                 1016 	movx	@dptr,a
                           1017 ;	genPointerSet
                           1018 ;     genFarPointerSet
   465A 90 07 64           1019 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000e)
   465D 74 65              1020 	mov	a,#0x65
   465F F0                 1021 	movx	@dptr,a
                           1022 ;	genPointerSet
                           1023 ;     genFarPointerSet
   4660 90 07 65           1024 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000f)
   4663 74 47              1025 	mov	a,#0x47
   4665 F0                 1026 	movx	@dptr,a
                           1027 ;	genPointerSet
                           1028 ;     genFarPointerSet
   4666 90 07 66           1029 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0010)
   4669 74 50              1030 	mov	a,#0x50
   466B F0                 1031 	movx	@dptr,a
                           1032 ;	genPointerSet
                           1033 ;     genFarPointerSet
   466C 90 07 67           1034 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0011)
   466F 74 49              1035 	mov	a,#0x49
   4671 F0                 1036 	movx	@dptr,a
                           1037 ;	genPointerSet
                           1038 ;     genFarPointerSet
   4672 90 07 68           1039 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0012)
   4675 74 4F              1040 	mov	a,#0x4F
   4677 F0                 1041 	movx	@dptr,a
                           1042 ;	genPointerSet
                           1043 ;     genFarPointerSet
   4678 90 07 69           1044 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0013)
   467B 74 2F              1045 	mov	a,#0x2F
   467D F0                 1046 	movx	@dptr,a
                           1047 ;	genPointerSet
                           1048 ;     genFarPointerSet
   467E 90 07 6A           1049 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0014)
   4681 74 63              1050 	mov	a,#0x63
   4683 F0                 1051 	movx	@dptr,a
                           1052 ;	genPointerSet
                           1053 ;     genFarPointerSet
   4684 90 07 6B           1054 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0015)
   4687 74 6F              1055 	mov	a,#0x6F
   4689 F0                 1056 	movx	@dptr,a
                           1057 ;	genPointerSet
                           1058 ;     genFarPointerSet
   468A 90 07 6C           1059 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0016)
   468D 74 72              1060 	mov	a,#0x72
   468F F0                 1061 	movx	@dptr,a
                           1062 ;	genPointerSet
                           1063 ;     genFarPointerSet
   4690 90 07 6D           1064 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0017)
   4693 74 65              1065 	mov	a,#0x65
   4695 F0                 1066 	movx	@dptr,a
                           1067 ;	genPointerSet
                           1068 ;     genFarPointerSet
   4696 90 07 6E           1069 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0018)
   4699 74 5F              1070 	mov	a,#0x5F
   469B F0                 1071 	movx	@dptr,a
                           1072 ;	genPointerSet
                           1073 ;     genFarPointerSet
   469C 90 07 6F           1074 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0019)
   469F 74 67              1075 	mov	a,#0x67
   46A1 F0                 1076 	movx	@dptr,a
                           1077 ;	genPointerSet
                           1078 ;     genFarPointerSet
   46A2 90 07 70           1079 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001a)
   46A5 74 70              1080 	mov	a,#0x70
   46A7 F0                 1081 	movx	@dptr,a
                           1082 ;	genPointerSet
                           1083 ;     genFarPointerSet
   46A8 90 07 71           1084 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001b)
   46AB 74 69              1085 	mov	a,#0x69
   46AD F0                 1086 	movx	@dptr,a
                           1087 ;	genPointerSet
                           1088 ;     genFarPointerSet
   46AE 90 07 72           1089 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001c)
   46B1 74 6F              1090 	mov	a,#0x6F
   46B3 F0                 1091 	movx	@dptr,a
                           1092 ;	genPointerSet
                           1093 ;     genFarPointerSet
   46B4 90 07 73           1094 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001d)
   46B7 74 2E              1095 	mov	a,#0x2E
   46B9 F0                 1096 	movx	@dptr,a
                           1097 ;	genPointerSet
                           1098 ;     genFarPointerSet
   46BA 90 07 74           1099 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001e)
   46BD 74 63              1100 	mov	a,#0x63
   46BF F0                 1101 	movx	@dptr,a
                           1102 ;	genPointerSet
                           1103 ;     genFarPointerSet
   46C0 90 07 75           1104 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001f)
   46C3 74 00              1105 	mov	a,#0x00
   46C5 F0                 1106 	movx	@dptr,a
                           1107 ;	genAssign
   46C6 90 00 8C           1108 	mov	dptr,#_HAL_assert_fail_PARM_2
   46C9 74 56              1109 	mov	a,#0x56
   46CB F0                 1110 	movx	@dptr,a
   46CC E4                 1111 	clr	a
   46CD A3                 1112 	inc	dptr
   46CE F0                 1113 	movx	@dptr,a
   46CF A3                 1114 	inc	dptr
   46D0 F0                 1115 	movx	@dptr,a
   46D1 A3                 1116 	inc	dptr
   46D2 F0                 1117 	movx	@dptr,a
                           1118 ;	genCall
   46D3 75 82 56           1119 	mov	dpl,#_GPIO_config_file_name_3_3
   46D6 75 83 07           1120 	mov	dph,#(_GPIO_config_file_name_3_3 >> 8)
   46D9 75 F0 00           1121 	mov	b,#0x00
   46DC C0 02              1122 	push	ar2
   46DE C0 03              1123 	push	ar3
   46E0 12 05 F6           1124 	lcall	_HAL_assert_fail
   46E3 D0 03              1125 	pop	ar3
   46E5 D0 02              1126 	pop	ar2
   46E7                    1127 00104$:
                    0406   1128 	C$core_gpio.c$88$1$1 ==.
                           1129 ;	../drivers/CoreGPIO/core_gpio.c:88: if ( port_id < NB_OF_GPIO )
                           1130 ;	genIfx
   46E7 EB                 1131 	mov	a,r3
                           1132 ;	genIfxJump
   46E8 70 03              1133 	jnz	00120$
   46EA 02 48 72           1134 	ljmp	00113$
   46ED                    1135 00120$:
                    040C   1136 	C$core_gpio.c$90$2$4 ==.
                           1137 ;	../drivers/CoreGPIO/core_gpio.c:90: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           1138 ;	genAssign
   46ED 90 07 53           1139 	mov	dptr,#_GPIO_config_this_gpio_1_1
   46F0 E0                 1140 	movx	a,@dptr
   46F1 FB                 1141 	mov	r3,a
   46F2 A3                 1142 	inc	dptr
   46F3 E0                 1143 	movx	a,@dptr
   46F4 FC                 1144 	mov	r4,a
   46F5 A3                 1145 	inc	dptr
   46F6 E0                 1146 	movx	a,@dptr
   46F7 FD                 1147 	mov	r5,a
                           1148 ;	genPointerGet
                           1149 ;	genGenPointerGet
   46F8 8B 82              1150 	mov	dpl,r3
   46FA 8C 83              1151 	mov	dph,r4
   46FC 8D F0              1152 	mov	b,r5
   46FE 12 61 48           1153 	lcall	__gptrget
   4701 FB                 1154 	mov	r3,a
   4702 A3                 1155 	inc	dptr
   4703 12 61 48           1156 	lcall	__gptrget
   4706 FC                 1157 	mov	r4,a
                           1158 ;	genCast
   4707 7D 00              1159 	mov	r5,#0x00
   4709 7E 00              1160 	mov	r6,#0x00
                    042A   1161 	C$core_gpio.c$91$2$4 ==.
                           1162 ;	../drivers/CoreGPIO/core_gpio.c:91: cfg_reg_addr += (port_id * 4);
                           1163 ;	genMult
                           1164 ;	genMultOneByte
   470B EA                 1165 	mov	a,r2
   470C 75 F0 04           1166 	mov	b,#0x04
   470F A4                 1167 	mul	ab
   4710 FA                 1168 	mov	r2,a
   4711 AF F0              1169 	mov	r7,b
                           1170 ;	genCast
   4713 EF                 1171 	mov	a,r7
   4714 33                 1172 	rlc	a
   4715 95 E0              1173 	subb	a,acc
   4717 F8                 1174 	mov	r0,a
   4718 F9                 1175 	mov	r1,a
                           1176 ;	genPlus
   4719 E5 02              1177 	mov	a,ar2
   471B 25 03              1178 	add	a,ar3
   471D FB                 1179 	mov	r3,a
   471E E5 07              1180 	mov	a,ar7
   4720 35 04              1181 	addc	a,ar4
   4722 FC                 1182 	mov	r4,a
   4723 E5 00              1183 	mov	a,ar0
   4725 35 05              1184 	addc	a,ar5
   4727 FD                 1185 	mov	r5,a
   4728 E5 01              1186 	mov	a,ar1
   472A 35 06              1187 	addc	a,ar6
   472C FE                 1188 	mov	r6,a
                    044C   1189 	C$core_gpio.c$92$2$4 ==.
                           1190 ;	../drivers/CoreGPIO/core_gpio.c:92: HW_set_32bit_reg( cfg_reg_addr, config );
                           1191 ;	genCast
                           1192 ;	genAssign
   472D 90 07 4F           1193 	mov	dptr,#_GPIO_config_PARM_3
   4730 E0                 1194 	movx	a,@dptr
   4731 FA                 1195 	mov	r2,a
   4732 A3                 1196 	inc	dptr
   4733 E0                 1197 	movx	a,@dptr
   4734 FD                 1198 	mov	r5,a
   4735 A3                 1199 	inc	dptr
   4736 E0                 1200 	movx	a,@dptr
   4737 FE                 1201 	mov	r6,a
   4738 A3                 1202 	inc	dptr
   4739 E0                 1203 	movx	a,@dptr
   473A FF                 1204 	mov	r7,a
                           1205 ;	genAssign
   473B 90 00 AA           1206 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   473E EA                 1207 	mov	a,r2
   473F F0                 1208 	movx	@dptr,a
   4740 A3                 1209 	inc	dptr
   4741 ED                 1210 	mov	a,r5
   4742 F0                 1211 	movx	@dptr,a
   4743 A3                 1212 	inc	dptr
   4744 EE                 1213 	mov	a,r6
   4745 F0                 1214 	movx	@dptr,a
   4746 A3                 1215 	inc	dptr
   4747 EF                 1216 	mov	a,r7
   4748 F0                 1217 	movx	@dptr,a
                           1218 ;	genCall
   4749 8B 82              1219 	mov	dpl,r3
   474B 8C 83              1220 	mov	dph,r4
   474D C0 02              1221 	push	ar2
   474F C0 03              1222 	push	ar3
   4751 C0 04              1223 	push	ar4
   4753 C0 05              1224 	push	ar5
   4755 C0 06              1225 	push	ar6
   4757 C0 07              1226 	push	ar7
   4759 12 06 62           1227 	lcall	_HW_set_32bit_reg
   475C D0 07              1228 	pop	ar7
   475E D0 06              1229 	pop	ar6
   4760 D0 05              1230 	pop	ar5
   4762 D0 04              1231 	pop	ar4
   4764 D0 03              1232 	pop	ar3
   4766 D0 02              1233 	pop	ar2
                    0487   1234 	C$core_gpio.c$101$3$5 ==.
                           1235 ;	../drivers/CoreGPIO/core_gpio.c:101: HAL_ASSERT( HW_get_32bit_reg( cfg_reg_addr ) == config );
                           1236 ;	genCall
   4768 8B 82              1237 	mov	dpl,r3
   476A 8C 83              1238 	mov	dph,r4
   476C C0 02              1239 	push	ar2
   476E C0 05              1240 	push	ar5
   4770 C0 06              1241 	push	ar6
   4772 C0 07              1242 	push	ar7
   4774 12 06 56           1243 	lcall	_HW_get_32bit_reg
   4777 AB 82              1244 	mov	r3,dpl
   4779 AC 83              1245 	mov	r4,dph
   477B A8 F0              1246 	mov	r0,b
   477D F9                 1247 	mov	r1,a
   477E D0 07              1248 	pop	ar7
   4780 D0 06              1249 	pop	ar6
   4782 D0 05              1250 	pop	ar5
   4784 D0 02              1251 	pop	ar2
                           1252 ;	genCmpEq
                           1253 ;	gencjneshort
   4786 EB                 1254 	mov	a,r3
   4787 B5 02 0F           1255 	cjne	a,ar2,00121$
   478A EC                 1256 	mov	a,r4
   478B B5 05 0B           1257 	cjne	a,ar5,00121$
   478E E8                 1258 	mov	a,r0
   478F B5 06 07           1259 	cjne	a,ar6,00121$
   4792 E9                 1260 	mov	a,r1
   4793 B5 07 03           1261 	cjne	a,ar7,00121$
   4796 02 48 72           1262 	ljmp	00113$
   4799                    1263 00121$:
                           1264 ;	genPointerSet
                           1265 ;     genFarPointerSet
   4799 90 07 76           1266 	mov	dptr,#_GPIO_config_file_name_4_6
   479C 74 2E              1267 	mov	a,#0x2E
   479E F0                 1268 	movx	@dptr,a
                           1269 ;	genPointerSet
                           1270 ;     genFarPointerSet
   479F 90 07 77           1271 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0001)
   47A2 74 2E              1272 	mov	a,#0x2E
   47A4 F0                 1273 	movx	@dptr,a
                           1274 ;	genPointerSet
                           1275 ;     genFarPointerSet
   47A5 90 07 78           1276 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0002)
   47A8 74 2F              1277 	mov	a,#0x2F
   47AA F0                 1278 	movx	@dptr,a
                           1279 ;	genPointerSet
                           1280 ;     genFarPointerSet
   47AB 90 07 79           1281 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0003)
   47AE 74 64              1282 	mov	a,#0x64
   47B0 F0                 1283 	movx	@dptr,a
                           1284 ;	genPointerSet
                           1285 ;     genFarPointerSet
   47B1 90 07 7A           1286 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0004)
   47B4 74 72              1287 	mov	a,#0x72
   47B6 F0                 1288 	movx	@dptr,a
                           1289 ;	genPointerSet
                           1290 ;     genFarPointerSet
   47B7 90 07 7B           1291 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0005)
   47BA 74 69              1292 	mov	a,#0x69
   47BC F0                 1293 	movx	@dptr,a
                           1294 ;	genPointerSet
                           1295 ;     genFarPointerSet
   47BD 90 07 7C           1296 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0006)
   47C0 74 76              1297 	mov	a,#0x76
   47C2 F0                 1298 	movx	@dptr,a
                           1299 ;	genPointerSet
                           1300 ;     genFarPointerSet
   47C3 90 07 7D           1301 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0007)
   47C6 74 65              1302 	mov	a,#0x65
   47C8 F0                 1303 	movx	@dptr,a
                           1304 ;	genPointerSet
                           1305 ;     genFarPointerSet
   47C9 90 07 7E           1306 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0008)
   47CC 74 72              1307 	mov	a,#0x72
   47CE F0                 1308 	movx	@dptr,a
                           1309 ;	genPointerSet
                           1310 ;     genFarPointerSet
   47CF 90 07 7F           1311 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0009)
   47D2 74 73              1312 	mov	a,#0x73
   47D4 F0                 1313 	movx	@dptr,a
                           1314 ;	genPointerSet
                           1315 ;     genFarPointerSet
   47D5 90 07 80           1316 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000a)
   47D8 74 2F              1317 	mov	a,#0x2F
   47DA F0                 1318 	movx	@dptr,a
                           1319 ;	genPointerSet
                           1320 ;     genFarPointerSet
   47DB 90 07 81           1321 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000b)
   47DE 74 43              1322 	mov	a,#0x43
   47E0 F0                 1323 	movx	@dptr,a
                           1324 ;	genPointerSet
                           1325 ;     genFarPointerSet
   47E1 90 07 82           1326 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000c)
   47E4 74 6F              1327 	mov	a,#0x6F
   47E6 F0                 1328 	movx	@dptr,a
                           1329 ;	genPointerSet
                           1330 ;     genFarPointerSet
   47E7 90 07 83           1331 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000d)
   47EA 74 72              1332 	mov	a,#0x72
   47EC F0                 1333 	movx	@dptr,a
                           1334 ;	genPointerSet
                           1335 ;     genFarPointerSet
   47ED 90 07 84           1336 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000e)
   47F0 74 65              1337 	mov	a,#0x65
   47F2 F0                 1338 	movx	@dptr,a
                           1339 ;	genPointerSet
                           1340 ;     genFarPointerSet
   47F3 90 07 85           1341 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000f)
   47F6 74 47              1342 	mov	a,#0x47
   47F8 F0                 1343 	movx	@dptr,a
                           1344 ;	genPointerSet
                           1345 ;     genFarPointerSet
   47F9 90 07 86           1346 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0010)
   47FC 74 50              1347 	mov	a,#0x50
   47FE F0                 1348 	movx	@dptr,a
                           1349 ;	genPointerSet
                           1350 ;     genFarPointerSet
   47FF 90 07 87           1351 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0011)
   4802 74 49              1352 	mov	a,#0x49
   4804 F0                 1353 	movx	@dptr,a
                           1354 ;	genPointerSet
                           1355 ;     genFarPointerSet
   4805 90 07 88           1356 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0012)
   4808 74 4F              1357 	mov	a,#0x4F
   480A F0                 1358 	movx	@dptr,a
                           1359 ;	genPointerSet
                           1360 ;     genFarPointerSet
   480B 90 07 89           1361 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0013)
   480E 74 2F              1362 	mov	a,#0x2F
   4810 F0                 1363 	movx	@dptr,a
                           1364 ;	genPointerSet
                           1365 ;     genFarPointerSet
   4811 90 07 8A           1366 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0014)
   4814 74 63              1367 	mov	a,#0x63
   4816 F0                 1368 	movx	@dptr,a
                           1369 ;	genPointerSet
                           1370 ;     genFarPointerSet
   4817 90 07 8B           1371 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0015)
   481A 74 6F              1372 	mov	a,#0x6F
   481C F0                 1373 	movx	@dptr,a
                           1374 ;	genPointerSet
                           1375 ;     genFarPointerSet
   481D 90 07 8C           1376 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0016)
   4820 74 72              1377 	mov	a,#0x72
   4822 F0                 1378 	movx	@dptr,a
                           1379 ;	genPointerSet
                           1380 ;     genFarPointerSet
   4823 90 07 8D           1381 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0017)
   4826 74 65              1382 	mov	a,#0x65
   4828 F0                 1383 	movx	@dptr,a
                           1384 ;	genPointerSet
                           1385 ;     genFarPointerSet
   4829 90 07 8E           1386 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0018)
   482C 74 5F              1387 	mov	a,#0x5F
   482E F0                 1388 	movx	@dptr,a
                           1389 ;	genPointerSet
                           1390 ;     genFarPointerSet
   482F 90 07 8F           1391 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0019)
   4832 74 67              1392 	mov	a,#0x67
   4834 F0                 1393 	movx	@dptr,a
                           1394 ;	genPointerSet
                           1395 ;     genFarPointerSet
   4835 90 07 90           1396 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001a)
   4838 74 70              1397 	mov	a,#0x70
   483A F0                 1398 	movx	@dptr,a
                           1399 ;	genPointerSet
                           1400 ;     genFarPointerSet
   483B 90 07 91           1401 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001b)
   483E 74 69              1402 	mov	a,#0x69
   4840 F0                 1403 	movx	@dptr,a
                           1404 ;	genPointerSet
                           1405 ;     genFarPointerSet
   4841 90 07 92           1406 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001c)
   4844 74 6F              1407 	mov	a,#0x6F
   4846 F0                 1408 	movx	@dptr,a
                           1409 ;	genPointerSet
                           1410 ;     genFarPointerSet
   4847 90 07 93           1411 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001d)
   484A 74 2E              1412 	mov	a,#0x2E
   484C F0                 1413 	movx	@dptr,a
                           1414 ;	genPointerSet
                           1415 ;     genFarPointerSet
   484D 90 07 94           1416 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001e)
   4850 74 63              1417 	mov	a,#0x63
   4852 F0                 1418 	movx	@dptr,a
                           1419 ;	genPointerSet
                           1420 ;     genFarPointerSet
   4853 90 07 95           1421 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001f)
   4856 74 00              1422 	mov	a,#0x00
   4858 F0                 1423 	movx	@dptr,a
                           1424 ;	genAssign
   4859 90 00 8C           1425 	mov	dptr,#_HAL_assert_fail_PARM_2
   485C 74 65              1426 	mov	a,#0x65
   485E F0                 1427 	movx	@dptr,a
   485F E4                 1428 	clr	a
   4860 A3                 1429 	inc	dptr
   4861 F0                 1430 	movx	@dptr,a
   4862 A3                 1431 	inc	dptr
   4863 F0                 1432 	movx	@dptr,a
   4864 A3                 1433 	inc	dptr
   4865 F0                 1434 	movx	@dptr,a
                           1435 ;	genCall
   4866 75 82 76           1436 	mov	dpl,#_GPIO_config_file_name_4_6
   4869 75 83 07           1437 	mov	dph,#(_GPIO_config_file_name_4_6 >> 8)
   486C 75 F0 00           1438 	mov	b,#0x00
   486F 12 05 F6           1439 	lcall	_HAL_assert_fail
   4872                    1440 00113$:
                    0591   1441 	C$core_gpio.c$103$2$1 ==.
                    0591   1442 	XG$GPIO_config$0$0 ==.
   4872 22                 1443 	ret
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
   4873                    1461 _GPIO_set_outputs:
                           1462 ;	genReceive
   4873 AA F0              1463 	mov	r2,b
   4875 AB 83              1464 	mov	r3,dph
   4877 E5 82              1465 	mov	a,dpl
   4879 90 07 9A           1466 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   487C F0                 1467 	movx	@dptr,a
   487D A3                 1468 	inc	dptr
   487E EB                 1469 	mov	a,r3
   487F F0                 1470 	movx	@dptr,a
   4880 A3                 1471 	inc	dptr
   4881 EA                 1472 	mov	a,r2
   4882 F0                 1473 	movx	@dptr,a
                    05A2   1474 	C$core_gpio.c$115$1$1 ==.
                           1475 ;	../drivers/CoreGPIO/core_gpio.c:115: switch( this_gpio->apb_bus_width )
                           1476 ;	genAssign
   4883 90 07 9A           1477 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   4886 E0                 1478 	movx	a,@dptr
   4887 FA                 1479 	mov	r2,a
   4888 A3                 1480 	inc	dptr
   4889 E0                 1481 	movx	a,@dptr
   488A FB                 1482 	mov	r3,a
   488B A3                 1483 	inc	dptr
   488C E0                 1484 	movx	a,@dptr
   488D FC                 1485 	mov	r4,a
                           1486 ;	genPlus
                           1487 ;	genPlusIncr
   488E 74 02              1488 	mov	a,#0x02
   4890 25 02              1489 	add	a,ar2
   4892 FD                 1490 	mov	r5,a
   4893 74 00              1491 	mov	a,#0x00
   4895 35 03              1492 	addc	a,ar3
   4897 FE                 1493 	mov	r6,a
   4898 8C 07              1494 	mov	ar7,r4
                           1495 ;	genPointerGet
                           1496 ;	genGenPointerGet
   489A 8D 82              1497 	mov	dpl,r5
   489C 8E 83              1498 	mov	dph,r6
   489E 8F F0              1499 	mov	b,r7
   48A0 12 61 48           1500 	lcall	__gptrget
   48A3 FD                 1501 	mov	r5,a
                           1502 ;	genCmpEq
                           1503 ;	gencjneshort
   48A4 BD 00 03           1504 	cjne	r5,#0x00,00122$
   48A7 02 49 6C           1505 	ljmp	00103$
   48AA                    1506 00122$:
                           1507 ;	genCmpEq
                           1508 ;	gencjneshort
   48AA BD 01 03           1509 	cjne	r5,#0x01,00123$
   48AD 02 48 F7           1510 	ljmp	00102$
   48B0                    1511 00123$:
                           1512 ;	genCmpEq
                           1513 ;	gencjneshort
   48B0 BD 02 02           1514 	cjne	r5,#0x02,00124$
   48B3 80 03              1515 	sjmp	00125$
   48B5                    1516 00124$:
   48B5 02 4A 3D           1517 	ljmp	00107$
   48B8                    1518 00125$:
                    05D7   1519 	C$core_gpio.c$118$2$2 ==.
                           1520 ;	../drivers/CoreGPIO/core_gpio.c:118: HAL_set_32bit_reg( this_gpio->base_addr, GPIO_OUT, value );
                           1521 ;	genPointerGet
                           1522 ;	genGenPointerGet
   48B8 8A 82              1523 	mov	dpl,r2
   48BA 8B 83              1524 	mov	dph,r3
   48BC 8C F0              1525 	mov	b,r4
   48BE 12 61 48           1526 	lcall	__gptrget
   48C1 FD                 1527 	mov	r5,a
   48C2 A3                 1528 	inc	dptr
   48C3 12 61 48           1529 	lcall	__gptrget
   48C6 FE                 1530 	mov	r6,a
                           1531 ;	genPlus
                           1532 ;	genPlusIncr
   48C7 74 A0              1533 	mov	a,#0xA0
   48C9 25 05              1534 	add	a,ar5
   48CB FA                 1535 	mov	r2,a
   48CC 74 00              1536 	mov	a,#0x00
   48CE 35 06              1537 	addc	a,ar6
   48D0 FB                 1538 	mov	r3,a
                           1539 ;	genAssign
   48D1 90 07 96           1540 	mov	dptr,#_GPIO_set_outputs_PARM_2
   48D4 E0                 1541 	movx	a,@dptr
   48D5 FF                 1542 	mov	r7,a
   48D6 A3                 1543 	inc	dptr
   48D7 E0                 1544 	movx	a,@dptr
   48D8 F8                 1545 	mov	r0,a
   48D9 A3                 1546 	inc	dptr
   48DA E0                 1547 	movx	a,@dptr
   48DB F9                 1548 	mov	r1,a
   48DC A3                 1549 	inc	dptr
   48DD E0                 1550 	movx	a,@dptr
   48DE FD                 1551 	mov	r5,a
                           1552 ;	genAssign
   48DF 90 00 AA           1553 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   48E2 EF                 1554 	mov	a,r7
   48E3 F0                 1555 	movx	@dptr,a
   48E4 A3                 1556 	inc	dptr
   48E5 E8                 1557 	mov	a,r0
   48E6 F0                 1558 	movx	@dptr,a
   48E7 A3                 1559 	inc	dptr
   48E8 E9                 1560 	mov	a,r1
   48E9 F0                 1561 	movx	@dptr,a
   48EA A3                 1562 	inc	dptr
   48EB ED                 1563 	mov	a,r5
   48EC F0                 1564 	movx	@dptr,a
                           1565 ;	genCall
   48ED 8A 82              1566 	mov	dpl,r2
   48EF 8B 83              1567 	mov	dph,r3
   48F1 12 06 62           1568 	lcall	_HW_set_32bit_reg
                    0613   1569 	C$core_gpio.c$119$2$2 ==.
                           1570 ;	../drivers/CoreGPIO/core_gpio.c:119: break;
   48F4 02 4B 16           1571 	ljmp	00113$
                    0616   1572 	C$core_gpio.c$121$2$2 ==.
                           1573 ;	../drivers/CoreGPIO/core_gpio.c:121: case GPIO_APB_16_BITS_BUS:
   48F7                    1574 00102$:
                    0616   1575 	C$core_gpio.c$122$2$2 ==.
                           1576 ;	../drivers/CoreGPIO/core_gpio.c:122: HAL_set_16bit_reg( this_gpio->base_addr, GPIO_OUT0, (uint16_t)value );
                           1577 ;	genPointerGet
                           1578 ;	genGenPointerGet
   48F7 8A 82              1579 	mov	dpl,r2
   48F9 8B 83              1580 	mov	dph,r3
   48FB 8C F0              1581 	mov	b,r4
   48FD 12 61 48           1582 	lcall	__gptrget
   4900 FD                 1583 	mov	r5,a
   4901 A3                 1584 	inc	dptr
   4902 12 61 48           1585 	lcall	__gptrget
   4905 FE                 1586 	mov	r6,a
                           1587 ;	genPlus
                           1588 ;	genPlusIncr
   4906 74 A0              1589 	mov	a,#0xA0
   4908 25 05              1590 	add	a,ar5
   490A FD                 1591 	mov	r5,a
   490B 74 00              1592 	mov	a,#0x00
   490D 35 06              1593 	addc	a,ar6
   490F FE                 1594 	mov	r6,a
                           1595 ;	genAssign
   4910 90 07 96           1596 	mov	dptr,#_GPIO_set_outputs_PARM_2
   4913 E0                 1597 	movx	a,@dptr
   4914 F5 49              1598 	mov	_GPIO_set_outputs_sloc1_1_0,a
   4916 A3                 1599 	inc	dptr
   4917 E0                 1600 	movx	a,@dptr
   4918 F5 4A              1601 	mov	(_GPIO_set_outputs_sloc1_1_0 + 1),a
   491A A3                 1602 	inc	dptr
   491B E0                 1603 	movx	a,@dptr
   491C F5 4B              1604 	mov	(_GPIO_set_outputs_sloc1_1_0 + 2),a
   491E A3                 1605 	inc	dptr
   491F E0                 1606 	movx	a,@dptr
   4920 F5 4C              1607 	mov	(_GPIO_set_outputs_sloc1_1_0 + 3),a
                           1608 ;	genCast
   4922 90 00 A7           1609 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   4925 E5 49              1610 	mov	a,_GPIO_set_outputs_sloc1_1_0
   4927 F0                 1611 	movx	@dptr,a
   4928 A3                 1612 	inc	dptr
   4929 E5 4A              1613 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 1)
   492B F0                 1614 	movx	@dptr,a
                           1615 ;	genCall
   492C 8D 82              1616 	mov	dpl,r5
   492E 8E 83              1617 	mov	dph,r6
   4930 C0 02              1618 	push	ar2
   4932 C0 03              1619 	push	ar3
   4934 C0 04              1620 	push	ar4
   4936 12 06 7E           1621 	lcall	_HW_set_16bit_reg
   4939 D0 04              1622 	pop	ar4
   493B D0 03              1623 	pop	ar3
   493D D0 02              1624 	pop	ar2
                    065E   1625 	C$core_gpio.c$123$2$2 ==.
                           1626 ;	../drivers/CoreGPIO/core_gpio.c:123: HAL_set_16bit_reg( this_gpio->base_addr, GPIO_OUT1, (uint16_t)(value >> 16) );
                           1627 ;	genPointerGet
                           1628 ;	genGenPointerGet
   493F 8A 82              1629 	mov	dpl,r2
   4941 8B 83              1630 	mov	dph,r3
   4943 8C F0              1631 	mov	b,r4
   4945 12 61 48           1632 	lcall	__gptrget
   4948 FE                 1633 	mov	r6,a
   4949 A3                 1634 	inc	dptr
   494A 12 61 48           1635 	lcall	__gptrget
   494D FD                 1636 	mov	r5,a
                           1637 ;	genPlus
                           1638 ;	genPlusIncr
   494E 74 A4              1639 	mov	a,#0xA4
   4950 25 06              1640 	add	a,ar6
   4952 FE                 1641 	mov	r6,a
   4953 74 00              1642 	mov	a,#0x00
   4955 35 05              1643 	addc	a,ar5
   4957 FD                 1644 	mov	r5,a
                           1645 ;	genGetWord
   4958 90 00 A7           1646 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   495B E5 4B              1647 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 2)
   495D F0                 1648 	movx	@dptr,a
   495E A3                 1649 	inc	dptr
   495F E5 4C              1650 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 3)
   4961 F0                 1651 	movx	@dptr,a
                           1652 ;	genCall
   4962 8E 82              1653 	mov	dpl,r6
   4964 8D 83              1654 	mov	dph,r5
   4966 12 06 7E           1655 	lcall	_HW_set_16bit_reg
                    0688   1656 	C$core_gpio.c$124$2$2 ==.
                           1657 ;	../drivers/CoreGPIO/core_gpio.c:124: break;
   4969 02 4B 16           1658 	ljmp	00113$
                    068B   1659 	C$core_gpio.c$126$2$2 ==.
                           1660 ;	../drivers/CoreGPIO/core_gpio.c:126: case GPIO_APB_8_BITS_BUS:
   496C                    1661 00103$:
                    068B   1662 	C$core_gpio.c$127$2$2 ==.
                           1663 ;	../drivers/CoreGPIO/core_gpio.c:127: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT0, (uint8_t)value );
                           1664 ;	genPointerGet
                           1665 ;	genGenPointerGet
   496C 8A 82              1666 	mov	dpl,r2
   496E 8B 83              1667 	mov	dph,r3
   4970 8C F0              1668 	mov	b,r4
   4972 12 61 48           1669 	lcall	__gptrget
   4975 FD                 1670 	mov	r5,a
   4976 A3                 1671 	inc	dptr
   4977 12 61 48           1672 	lcall	__gptrget
   497A FE                 1673 	mov	r6,a
                           1674 ;	genPlus
                           1675 ;	genPlusIncr
   497B 74 A0              1676 	mov	a,#0xA0
   497D 25 05              1677 	add	a,ar5
   497F FD                 1678 	mov	r5,a
   4980 74 00              1679 	mov	a,#0x00
   4982 35 06              1680 	addc	a,ar6
   4984 FE                 1681 	mov	r6,a
                           1682 ;	genAssign
   4985 90 07 96           1683 	mov	dptr,#_GPIO_set_outputs_PARM_2
   4988 E0                 1684 	movx	a,@dptr
   4989 F5 4D              1685 	mov	_GPIO_set_outputs_sloc2_1_0,a
   498B A3                 1686 	inc	dptr
   498C E0                 1687 	movx	a,@dptr
   498D F5 4E              1688 	mov	(_GPIO_set_outputs_sloc2_1_0 + 1),a
   498F A3                 1689 	inc	dptr
   4990 E0                 1690 	movx	a,@dptr
   4991 F5 4F              1691 	mov	(_GPIO_set_outputs_sloc2_1_0 + 2),a
   4993 A3                 1692 	inc	dptr
   4994 E0                 1693 	movx	a,@dptr
   4995 F5 50              1694 	mov	(_GPIO_set_outputs_sloc2_1_0 + 3),a
                           1695 ;	genCast
   4997 90 00 A9           1696 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   499A E5 4D              1697 	mov	a,_GPIO_set_outputs_sloc2_1_0
   499C F0                 1698 	movx	@dptr,a
                           1699 ;	genCall
   499D 8D 82              1700 	mov	dpl,r5
   499F 8E 83              1701 	mov	dph,r6
   49A1 C0 02              1702 	push	ar2
   49A3 C0 03              1703 	push	ar3
   49A5 C0 04              1704 	push	ar4
   49A7 12 06 99           1705 	lcall	_HW_set_8bit_reg
   49AA D0 04              1706 	pop	ar4
   49AC D0 03              1707 	pop	ar3
   49AE D0 02              1708 	pop	ar2
                    06CF   1709 	C$core_gpio.c$128$2$2 ==.
                           1710 ;	../drivers/CoreGPIO/core_gpio.c:128: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT1, (uint8_t)(value >> 8) );
                           1711 ;	genPointerGet
                           1712 ;	genGenPointerGet
   49B0 8A 82              1713 	mov	dpl,r2
   49B2 8B 83              1714 	mov	dph,r3
   49B4 8C F0              1715 	mov	b,r4
   49B6 12 61 48           1716 	lcall	__gptrget
   49B9 FE                 1717 	mov	r6,a
   49BA A3                 1718 	inc	dptr
   49BB 12 61 48           1719 	lcall	__gptrget
   49BE FD                 1720 	mov	r5,a
                           1721 ;	genPlus
                           1722 ;	genPlusIncr
   49BF 74 A4              1723 	mov	a,#0xA4
   49C1 25 06              1724 	add	a,ar6
   49C3 FE                 1725 	mov	r6,a
   49C4 74 00              1726 	mov	a,#0x00
   49C6 35 05              1727 	addc	a,ar5
   49C8 FD                 1728 	mov	r5,a
                           1729 ;	genGetByte
   49C9 90 00 A9           1730 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   49CC E5 4E              1731 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 1)
   49CE F0                 1732 	movx	@dptr,a
                           1733 ;	genCall
   49CF 8E 82              1734 	mov	dpl,r6
   49D1 8D 83              1735 	mov	dph,r5
   49D3 C0 02              1736 	push	ar2
   49D5 C0 03              1737 	push	ar3
   49D7 C0 04              1738 	push	ar4
   49D9 12 06 99           1739 	lcall	_HW_set_8bit_reg
   49DC D0 04              1740 	pop	ar4
   49DE D0 03              1741 	pop	ar3
   49E0 D0 02              1742 	pop	ar2
                    0701   1743 	C$core_gpio.c$129$2$2 ==.
                           1744 ;	../drivers/CoreGPIO/core_gpio.c:129: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT2, (uint8_t)(value >> 16) );
                           1745 ;	genPointerGet
                           1746 ;	genGenPointerGet
   49E2 8A 82              1747 	mov	dpl,r2
   49E4 8B 83              1748 	mov	dph,r3
   49E6 8C F0              1749 	mov	b,r4
   49E8 12 61 48           1750 	lcall	__gptrget
   49EB FD                 1751 	mov	r5,a
   49EC A3                 1752 	inc	dptr
   49ED 12 61 48           1753 	lcall	__gptrget
   49F0 FE                 1754 	mov	r6,a
                           1755 ;	genPlus
                           1756 ;	genPlusIncr
   49F1 74 A8              1757 	mov	a,#0xA8
   49F3 25 05              1758 	add	a,ar5
   49F5 FD                 1759 	mov	r5,a
   49F6 74 00              1760 	mov	a,#0x00
   49F8 35 06              1761 	addc	a,ar6
   49FA FE                 1762 	mov	r6,a
                           1763 ;	genGetByte
   49FB 90 00 A9           1764 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   49FE E5 4F              1765 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 2)
   4A00 F0                 1766 	movx	@dptr,a
                           1767 ;	genCall
   4A01 8D 82              1768 	mov	dpl,r5
   4A03 8E 83              1769 	mov	dph,r6
   4A05 C0 02              1770 	push	ar2
   4A07 C0 03              1771 	push	ar3
   4A09 C0 04              1772 	push	ar4
   4A0B 12 06 99           1773 	lcall	_HW_set_8bit_reg
   4A0E D0 04              1774 	pop	ar4
   4A10 D0 03              1775 	pop	ar3
   4A12 D0 02              1776 	pop	ar2
                    0733   1777 	C$core_gpio.c$130$2$2 ==.
                           1778 ;	../drivers/CoreGPIO/core_gpio.c:130: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT3, (uint8_t)(value >> 24) );
                           1779 ;	genPointerGet
                           1780 ;	genGenPointerGet
   4A14 8A 82              1781 	mov	dpl,r2
   4A16 8B 83              1782 	mov	dph,r3
   4A18 8C F0              1783 	mov	b,r4
   4A1A 12 61 48           1784 	lcall	__gptrget
   4A1D FA                 1785 	mov	r2,a
   4A1E A3                 1786 	inc	dptr
   4A1F 12 61 48           1787 	lcall	__gptrget
   4A22 FB                 1788 	mov	r3,a
                           1789 ;	genPlus
                           1790 ;	genPlusIncr
   4A23 74 AC              1791 	mov	a,#0xAC
   4A25 25 02              1792 	add	a,ar2
   4A27 FA                 1793 	mov	r2,a
   4A28 74 00              1794 	mov	a,#0x00
   4A2A 35 03              1795 	addc	a,ar3
   4A2C FB                 1796 	mov	r3,a
                           1797 ;	genGetByte
   4A2D 90 00 A9           1798 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   4A30 E5 50              1799 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 3)
   4A32 F0                 1800 	movx	@dptr,a
                           1801 ;	genCall
   4A33 8A 82              1802 	mov	dpl,r2
   4A35 8B 83              1803 	mov	dph,r3
   4A37 12 06 99           1804 	lcall	_HW_set_8bit_reg
                    0759   1805 	C$core_gpio.c$131$2$2 ==.
                           1806 ;	../drivers/CoreGPIO/core_gpio.c:131: break;
   4A3A 02 4B 16           1807 	ljmp	00113$
                    075C   1808 	C$core_gpio.c$134$2$2 ==.
                           1809 ;	../drivers/CoreGPIO/core_gpio.c:134: HAL_ASSERT(0);
   4A3D                    1810 00107$:
                           1811 ;	genPointerSet
                           1812 ;     genFarPointerSet
   4A3D 90 07 9D           1813 	mov	dptr,#_GPIO_set_outputs_file_name_4_4
   4A40 74 2E              1814 	mov	a,#0x2E
   4A42 F0                 1815 	movx	@dptr,a
                           1816 ;	genPointerSet
                           1817 ;     genFarPointerSet
   4A43 90 07 9E           1818 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0001)
   4A46 74 2E              1819 	mov	a,#0x2E
   4A48 F0                 1820 	movx	@dptr,a
                           1821 ;	genPointerSet
                           1822 ;     genFarPointerSet
   4A49 90 07 9F           1823 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0002)
   4A4C 74 2F              1824 	mov	a,#0x2F
   4A4E F0                 1825 	movx	@dptr,a
                           1826 ;	genPointerSet
                           1827 ;     genFarPointerSet
   4A4F 90 07 A0           1828 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0003)
   4A52 74 64              1829 	mov	a,#0x64
   4A54 F0                 1830 	movx	@dptr,a
                           1831 ;	genPointerSet
                           1832 ;     genFarPointerSet
   4A55 90 07 A1           1833 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0004)
   4A58 74 72              1834 	mov	a,#0x72
   4A5A F0                 1835 	movx	@dptr,a
                           1836 ;	genPointerSet
                           1837 ;     genFarPointerSet
   4A5B 90 07 A2           1838 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0005)
   4A5E 74 69              1839 	mov	a,#0x69
   4A60 F0                 1840 	movx	@dptr,a
                           1841 ;	genPointerSet
                           1842 ;     genFarPointerSet
   4A61 90 07 A3           1843 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0006)
   4A64 74 76              1844 	mov	a,#0x76
   4A66 F0                 1845 	movx	@dptr,a
                           1846 ;	genPointerSet
                           1847 ;     genFarPointerSet
   4A67 90 07 A4           1848 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0007)
   4A6A 74 65              1849 	mov	a,#0x65
   4A6C F0                 1850 	movx	@dptr,a
                           1851 ;	genPointerSet
                           1852 ;     genFarPointerSet
   4A6D 90 07 A5           1853 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0008)
   4A70 74 72              1854 	mov	a,#0x72
   4A72 F0                 1855 	movx	@dptr,a
                           1856 ;	genPointerSet
                           1857 ;     genFarPointerSet
   4A73 90 07 A6           1858 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0009)
   4A76 74 73              1859 	mov	a,#0x73
   4A78 F0                 1860 	movx	@dptr,a
                           1861 ;	genPointerSet
                           1862 ;     genFarPointerSet
   4A79 90 07 A7           1863 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000a)
   4A7C 74 2F              1864 	mov	a,#0x2F
   4A7E F0                 1865 	movx	@dptr,a
                           1866 ;	genPointerSet
                           1867 ;     genFarPointerSet
   4A7F 90 07 A8           1868 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000b)
   4A82 74 43              1869 	mov	a,#0x43
   4A84 F0                 1870 	movx	@dptr,a
                           1871 ;	genPointerSet
                           1872 ;     genFarPointerSet
   4A85 90 07 A9           1873 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000c)
   4A88 74 6F              1874 	mov	a,#0x6F
   4A8A F0                 1875 	movx	@dptr,a
                           1876 ;	genPointerSet
                           1877 ;     genFarPointerSet
   4A8B 90 07 AA           1878 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000d)
   4A8E 74 72              1879 	mov	a,#0x72
   4A90 F0                 1880 	movx	@dptr,a
                           1881 ;	genPointerSet
                           1882 ;     genFarPointerSet
   4A91 90 07 AB           1883 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000e)
   4A94 74 65              1884 	mov	a,#0x65
   4A96 F0                 1885 	movx	@dptr,a
                           1886 ;	genPointerSet
                           1887 ;     genFarPointerSet
   4A97 90 07 AC           1888 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000f)
   4A9A 74 47              1889 	mov	a,#0x47
   4A9C F0                 1890 	movx	@dptr,a
                           1891 ;	genPointerSet
                           1892 ;     genFarPointerSet
   4A9D 90 07 AD           1893 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0010)
   4AA0 74 50              1894 	mov	a,#0x50
   4AA2 F0                 1895 	movx	@dptr,a
                           1896 ;	genPointerSet
                           1897 ;     genFarPointerSet
   4AA3 90 07 AE           1898 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0011)
   4AA6 74 49              1899 	mov	a,#0x49
   4AA8 F0                 1900 	movx	@dptr,a
                           1901 ;	genPointerSet
                           1902 ;     genFarPointerSet
   4AA9 90 07 AF           1903 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0012)
   4AAC 74 4F              1904 	mov	a,#0x4F
   4AAE F0                 1905 	movx	@dptr,a
                           1906 ;	genPointerSet
                           1907 ;     genFarPointerSet
   4AAF 90 07 B0           1908 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0013)
   4AB2 74 2F              1909 	mov	a,#0x2F
   4AB4 F0                 1910 	movx	@dptr,a
                           1911 ;	genPointerSet
                           1912 ;     genFarPointerSet
   4AB5 90 07 B1           1913 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0014)
   4AB8 74 63              1914 	mov	a,#0x63
   4ABA F0                 1915 	movx	@dptr,a
                           1916 ;	genPointerSet
                           1917 ;     genFarPointerSet
   4ABB 90 07 B2           1918 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0015)
   4ABE 74 6F              1919 	mov	a,#0x6F
   4AC0 F0                 1920 	movx	@dptr,a
                           1921 ;	genPointerSet
                           1922 ;     genFarPointerSet
   4AC1 90 07 B3           1923 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0016)
   4AC4 74 72              1924 	mov	a,#0x72
   4AC6 F0                 1925 	movx	@dptr,a
                           1926 ;	genPointerSet
                           1927 ;     genFarPointerSet
   4AC7 90 07 B4           1928 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0017)
   4ACA 74 65              1929 	mov	a,#0x65
   4ACC F0                 1930 	movx	@dptr,a
                           1931 ;	genPointerSet
                           1932 ;     genFarPointerSet
   4ACD 90 07 B5           1933 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0018)
   4AD0 74 5F              1934 	mov	a,#0x5F
   4AD2 F0                 1935 	movx	@dptr,a
                           1936 ;	genPointerSet
                           1937 ;     genFarPointerSet
   4AD3 90 07 B6           1938 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0019)
   4AD6 74 67              1939 	mov	a,#0x67
   4AD8 F0                 1940 	movx	@dptr,a
                           1941 ;	genPointerSet
                           1942 ;     genFarPointerSet
   4AD9 90 07 B7           1943 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001a)
   4ADC 74 70              1944 	mov	a,#0x70
   4ADE F0                 1945 	movx	@dptr,a
                           1946 ;	genPointerSet
                           1947 ;     genFarPointerSet
   4ADF 90 07 B8           1948 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001b)
   4AE2 74 69              1949 	mov	a,#0x69
   4AE4 F0                 1950 	movx	@dptr,a
                           1951 ;	genPointerSet
                           1952 ;     genFarPointerSet
   4AE5 90 07 B9           1953 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001c)
   4AE8 74 6F              1954 	mov	a,#0x6F
   4AEA F0                 1955 	movx	@dptr,a
                           1956 ;	genPointerSet
                           1957 ;     genFarPointerSet
   4AEB 90 07 BA           1958 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001d)
   4AEE 74 2E              1959 	mov	a,#0x2E
   4AF0 F0                 1960 	movx	@dptr,a
                           1961 ;	genPointerSet
                           1962 ;     genFarPointerSet
   4AF1 90 07 BB           1963 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001e)
   4AF4 74 63              1964 	mov	a,#0x63
   4AF6 F0                 1965 	movx	@dptr,a
                           1966 ;	genPointerSet
                           1967 ;     genFarPointerSet
   4AF7 90 07 BC           1968 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001f)
   4AFA 74 00              1969 	mov	a,#0x00
   4AFC F0                 1970 	movx	@dptr,a
                           1971 ;	genAssign
   4AFD 90 00 8C           1972 	mov	dptr,#_HAL_assert_fail_PARM_2
   4B00 74 86              1973 	mov	a,#0x86
   4B02 F0                 1974 	movx	@dptr,a
   4B03 E4                 1975 	clr	a
   4B04 A3                 1976 	inc	dptr
   4B05 F0                 1977 	movx	@dptr,a
   4B06 A3                 1978 	inc	dptr
   4B07 F0                 1979 	movx	@dptr,a
   4B08 A3                 1980 	inc	dptr
   4B09 F0                 1981 	movx	@dptr,a
                           1982 ;	genCall
   4B0A 75 82 9D           1983 	mov	dpl,#_GPIO_set_outputs_file_name_4_4
   4B0D 75 83 07           1984 	mov	dph,#(_GPIO_set_outputs_file_name_4_4 >> 8)
   4B10 75 F0 00           1985 	mov	b,#0x00
   4B13 12 05 F6           1986 	lcall	_HAL_assert_fail
                    0835   1987 	C$core_gpio.c$145$1$1 ==.
                           1988 ;	../drivers/CoreGPIO/core_gpio.c:145: HAL_ASSERT( GPIO_get_outputs( this_gpio ) == value );
   4B16                    1989 00113$:
                           1990 ;	genAssign
   4B16 90 07 9A           1991 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   4B19 E0                 1992 	movx	a,@dptr
   4B1A FA                 1993 	mov	r2,a
   4B1B A3                 1994 	inc	dptr
   4B1C E0                 1995 	movx	a,@dptr
   4B1D FB                 1996 	mov	r3,a
   4B1E A3                 1997 	inc	dptr
   4B1F E0                 1998 	movx	a,@dptr
   4B20 FC                 1999 	mov	r4,a
                           2000 ;	genCall
   4B21 8A 82              2001 	mov	dpl,r2
   4B23 8B 83              2002 	mov	dph,r3
   4B25 8C F0              2003 	mov	b,r4
   4B27 12 4E 61           2004 	lcall	_GPIO_get_outputs
   4B2A AA 82              2005 	mov	r2,dpl
   4B2C AB 83              2006 	mov	r3,dph
   4B2E AC F0              2007 	mov	r4,b
   4B30 FD                 2008 	mov	r5,a
                           2009 ;	genAssign
   4B31 90 07 96           2010 	mov	dptr,#_GPIO_set_outputs_PARM_2
   4B34 E0                 2011 	movx	a,@dptr
   4B35 FE                 2012 	mov	r6,a
   4B36 A3                 2013 	inc	dptr
   4B37 E0                 2014 	movx	a,@dptr
   4B38 FF                 2015 	mov	r7,a
   4B39 A3                 2016 	inc	dptr
   4B3A E0                 2017 	movx	a,@dptr
   4B3B F8                 2018 	mov	r0,a
   4B3C A3                 2019 	inc	dptr
   4B3D E0                 2020 	movx	a,@dptr
   4B3E F9                 2021 	mov	r1,a
                           2022 ;	genCmpEq
                           2023 ;	gencjneshort
   4B3F EA                 2024 	mov	a,r2
   4B40 B5 06 0F           2025 	cjne	a,ar6,00126$
   4B43 EB                 2026 	mov	a,r3
   4B44 B5 07 0B           2027 	cjne	a,ar7,00126$
   4B47 EC                 2028 	mov	a,r4
   4B48 B5 00 07           2029 	cjne	a,ar0,00126$
   4B4B ED                 2030 	mov	a,r5
   4B4C B5 01 03           2031 	cjne	a,ar1,00126$
   4B4F 02 4C 2B           2032 	ljmp	00116$
   4B52                    2033 00126$:
                           2034 ;	genPointerSet
                           2035 ;     genFarPointerSet
   4B52 90 07 BD           2036 	mov	dptr,#_GPIO_set_outputs_file_name_3_6
   4B55 74 2E              2037 	mov	a,#0x2E
   4B57 F0                 2038 	movx	@dptr,a
                           2039 ;	genPointerSet
                           2040 ;     genFarPointerSet
   4B58 90 07 BE           2041 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0001)
   4B5B 74 2E              2042 	mov	a,#0x2E
   4B5D F0                 2043 	movx	@dptr,a
                           2044 ;	genPointerSet
                           2045 ;     genFarPointerSet
   4B5E 90 07 BF           2046 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0002)
   4B61 74 2F              2047 	mov	a,#0x2F
   4B63 F0                 2048 	movx	@dptr,a
                           2049 ;	genPointerSet
                           2050 ;     genFarPointerSet
   4B64 90 07 C0           2051 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0003)
   4B67 74 64              2052 	mov	a,#0x64
   4B69 F0                 2053 	movx	@dptr,a
                           2054 ;	genPointerSet
                           2055 ;     genFarPointerSet
   4B6A 90 07 C1           2056 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0004)
   4B6D 74 72              2057 	mov	a,#0x72
   4B6F F0                 2058 	movx	@dptr,a
                           2059 ;	genPointerSet
                           2060 ;     genFarPointerSet
   4B70 90 07 C2           2061 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0005)
   4B73 74 69              2062 	mov	a,#0x69
   4B75 F0                 2063 	movx	@dptr,a
                           2064 ;	genPointerSet
                           2065 ;     genFarPointerSet
   4B76 90 07 C3           2066 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0006)
   4B79 74 76              2067 	mov	a,#0x76
   4B7B F0                 2068 	movx	@dptr,a
                           2069 ;	genPointerSet
                           2070 ;     genFarPointerSet
   4B7C 90 07 C4           2071 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0007)
   4B7F 74 65              2072 	mov	a,#0x65
   4B81 F0                 2073 	movx	@dptr,a
                           2074 ;	genPointerSet
                           2075 ;     genFarPointerSet
   4B82 90 07 C5           2076 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0008)
   4B85 74 72              2077 	mov	a,#0x72
   4B87 F0                 2078 	movx	@dptr,a
                           2079 ;	genPointerSet
                           2080 ;     genFarPointerSet
   4B88 90 07 C6           2081 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0009)
   4B8B 74 73              2082 	mov	a,#0x73
   4B8D F0                 2083 	movx	@dptr,a
                           2084 ;	genPointerSet
                           2085 ;     genFarPointerSet
   4B8E 90 07 C7           2086 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000a)
   4B91 74 2F              2087 	mov	a,#0x2F
   4B93 F0                 2088 	movx	@dptr,a
                           2089 ;	genPointerSet
                           2090 ;     genFarPointerSet
   4B94 90 07 C8           2091 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000b)
   4B97 74 43              2092 	mov	a,#0x43
   4B99 F0                 2093 	movx	@dptr,a
                           2094 ;	genPointerSet
                           2095 ;     genFarPointerSet
   4B9A 90 07 C9           2096 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000c)
   4B9D 74 6F              2097 	mov	a,#0x6F
   4B9F F0                 2098 	movx	@dptr,a
                           2099 ;	genPointerSet
                           2100 ;     genFarPointerSet
   4BA0 90 07 CA           2101 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000d)
   4BA3 74 72              2102 	mov	a,#0x72
   4BA5 F0                 2103 	movx	@dptr,a
                           2104 ;	genPointerSet
                           2105 ;     genFarPointerSet
   4BA6 90 07 CB           2106 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000e)
   4BA9 74 65              2107 	mov	a,#0x65
   4BAB F0                 2108 	movx	@dptr,a
                           2109 ;	genPointerSet
                           2110 ;     genFarPointerSet
   4BAC 90 07 CC           2111 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000f)
   4BAF 74 47              2112 	mov	a,#0x47
   4BB1 F0                 2113 	movx	@dptr,a
                           2114 ;	genPointerSet
                           2115 ;     genFarPointerSet
   4BB2 90 07 CD           2116 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0010)
   4BB5 74 50              2117 	mov	a,#0x50
   4BB7 F0                 2118 	movx	@dptr,a
                           2119 ;	genPointerSet
                           2120 ;     genFarPointerSet
   4BB8 90 07 CE           2121 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0011)
   4BBB 74 49              2122 	mov	a,#0x49
   4BBD F0                 2123 	movx	@dptr,a
                           2124 ;	genPointerSet
                           2125 ;     genFarPointerSet
   4BBE 90 07 CF           2126 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0012)
   4BC1 74 4F              2127 	mov	a,#0x4F
   4BC3 F0                 2128 	movx	@dptr,a
                           2129 ;	genPointerSet
                           2130 ;     genFarPointerSet
   4BC4 90 07 D0           2131 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0013)
   4BC7 74 2F              2132 	mov	a,#0x2F
   4BC9 F0                 2133 	movx	@dptr,a
                           2134 ;	genPointerSet
                           2135 ;     genFarPointerSet
   4BCA 90 07 D1           2136 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0014)
   4BCD 74 63              2137 	mov	a,#0x63
   4BCF F0                 2138 	movx	@dptr,a
                           2139 ;	genPointerSet
                           2140 ;     genFarPointerSet
   4BD0 90 07 D2           2141 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0015)
   4BD3 74 6F              2142 	mov	a,#0x6F
   4BD5 F0                 2143 	movx	@dptr,a
                           2144 ;	genPointerSet
                           2145 ;     genFarPointerSet
   4BD6 90 07 D3           2146 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0016)
   4BD9 74 72              2147 	mov	a,#0x72
   4BDB F0                 2148 	movx	@dptr,a
                           2149 ;	genPointerSet
                           2150 ;     genFarPointerSet
   4BDC 90 07 D4           2151 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0017)
   4BDF 74 65              2152 	mov	a,#0x65
   4BE1 F0                 2153 	movx	@dptr,a
                           2154 ;	genPointerSet
                           2155 ;     genFarPointerSet
   4BE2 90 07 D5           2156 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0018)
   4BE5 74 5F              2157 	mov	a,#0x5F
   4BE7 F0                 2158 	movx	@dptr,a
                           2159 ;	genPointerSet
                           2160 ;     genFarPointerSet
   4BE8 90 07 D6           2161 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0019)
   4BEB 74 67              2162 	mov	a,#0x67
   4BED F0                 2163 	movx	@dptr,a
                           2164 ;	genPointerSet
                           2165 ;     genFarPointerSet
   4BEE 90 07 D7           2166 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001a)
   4BF1 74 70              2167 	mov	a,#0x70
   4BF3 F0                 2168 	movx	@dptr,a
                           2169 ;	genPointerSet
                           2170 ;     genFarPointerSet
   4BF4 90 07 D8           2171 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001b)
   4BF7 74 69              2172 	mov	a,#0x69
   4BF9 F0                 2173 	movx	@dptr,a
                           2174 ;	genPointerSet
                           2175 ;     genFarPointerSet
   4BFA 90 07 D9           2176 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001c)
   4BFD 74 6F              2177 	mov	a,#0x6F
   4BFF F0                 2178 	movx	@dptr,a
                           2179 ;	genPointerSet
                           2180 ;     genFarPointerSet
   4C00 90 07 DA           2181 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001d)
   4C03 74 2E              2182 	mov	a,#0x2E
   4C05 F0                 2183 	movx	@dptr,a
                           2184 ;	genPointerSet
                           2185 ;     genFarPointerSet
   4C06 90 07 DB           2186 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001e)
   4C09 74 63              2187 	mov	a,#0x63
   4C0B F0                 2188 	movx	@dptr,a
                           2189 ;	genPointerSet
                           2190 ;     genFarPointerSet
   4C0C 90 07 DC           2191 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001f)
   4C0F 74 00              2192 	mov	a,#0x00
   4C11 F0                 2193 	movx	@dptr,a
                           2194 ;	genAssign
   4C12 90 00 8C           2195 	mov	dptr,#_HAL_assert_fail_PARM_2
   4C15 74 91              2196 	mov	a,#0x91
   4C17 F0                 2197 	movx	@dptr,a
   4C18 E4                 2198 	clr	a
   4C19 A3                 2199 	inc	dptr
   4C1A F0                 2200 	movx	@dptr,a
   4C1B A3                 2201 	inc	dptr
   4C1C F0                 2202 	movx	@dptr,a
   4C1D A3                 2203 	inc	dptr
   4C1E F0                 2204 	movx	@dptr,a
                           2205 ;	genCall
   4C1F 75 82 BD           2206 	mov	dpl,#_GPIO_set_outputs_file_name_3_6
   4C22 75 83 07           2207 	mov	dph,#(_GPIO_set_outputs_file_name_3_6 >> 8)
   4C25 75 F0 00           2208 	mov	b,#0x00
   4C28 12 05 F6           2209 	lcall	_HAL_assert_fail
   4C2B                    2210 00116$:
                    094A   2211 	C$core_gpio.c$146$1$1 ==.
                    094A   2212 	XG$GPIO_set_outputs$0$0 ==.
   4C2B 22                 2213 	ret
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
   4C2C                    2227 _GPIO_get_inputs:
                           2228 ;	genReceive
   4C2C AA F0              2229 	mov	r2,b
   4C2E AB 83              2230 	mov	r3,dph
   4C30 E5 82              2231 	mov	a,dpl
   4C32 90 07 DD           2232 	mov	dptr,#_GPIO_get_inputs_this_gpio_1_1
   4C35 F0                 2233 	movx	@dptr,a
   4C36 A3                 2234 	inc	dptr
   4C37 EB                 2235 	mov	a,r3
   4C38 F0                 2236 	movx	@dptr,a
   4C39 A3                 2237 	inc	dptr
   4C3A EA                 2238 	mov	a,r2
   4C3B F0                 2239 	movx	@dptr,a
                    095B   2240 	C$core_gpio.c$157$1$1 ==.
                           2241 ;	../drivers/CoreGPIO/core_gpio.c:157: uint32_t gpio_in = 0;
                           2242 ;	genAssign
   4C3C 90 07 E0           2243 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4C3F E4                 2244 	clr	a
   4C40 F0                 2245 	movx	@dptr,a
   4C41 A3                 2246 	inc	dptr
   4C42 F0                 2247 	movx	@dptr,a
   4C43 A3                 2248 	inc	dptr
   4C44 F0                 2249 	movx	@dptr,a
   4C45 A3                 2250 	inc	dptr
   4C46 F0                 2251 	movx	@dptr,a
                    0966   2252 	C$core_gpio.c$159$1$1 ==.
                           2253 ;	../drivers/CoreGPIO/core_gpio.c:159: switch( this_gpio->apb_bus_width )
                           2254 ;	genAssign
   4C47 90 07 DD           2255 	mov	dptr,#_GPIO_get_inputs_this_gpio_1_1
   4C4A E0                 2256 	movx	a,@dptr
   4C4B FA                 2257 	mov	r2,a
   4C4C A3                 2258 	inc	dptr
   4C4D E0                 2259 	movx	a,@dptr
   4C4E FB                 2260 	mov	r3,a
   4C4F A3                 2261 	inc	dptr
   4C50 E0                 2262 	movx	a,@dptr
   4C51 FC                 2263 	mov	r4,a
                           2264 ;	genPlus
                           2265 ;	genPlusIncr
   4C52 74 02              2266 	mov	a,#0x02
   4C54 25 02              2267 	add	a,ar2
   4C56 FD                 2268 	mov	r5,a
   4C57 74 00              2269 	mov	a,#0x00
   4C59 35 03              2270 	addc	a,ar3
   4C5B FE                 2271 	mov	r6,a
   4C5C 8C 07              2272 	mov	ar7,r4
                           2273 ;	genPointerGet
                           2274 ;	genGenPointerGet
   4C5E 8D 82              2275 	mov	dpl,r5
   4C60 8E 83              2276 	mov	dph,r6
   4C62 8F F0              2277 	mov	b,r7
   4C64 12 61 48           2278 	lcall	__gptrget
   4C67 FD                 2279 	mov	r5,a
                           2280 ;	genCmpEq
                           2281 ;	gencjneshort
   4C68 BD 00 03           2282 	cjne	r5,#0x00,00116$
   4C6B 02 4C EB           2283 	ljmp	00103$
   4C6E                    2284 00116$:
                           2285 ;	genCmpEq
                           2286 ;	gencjneshort
   4C6E BD 01 03           2287 	cjne	r5,#0x01,00117$
   4C71 02 4C B4           2288 	ljmp	00102$
   4C74                    2289 00117$:
                           2290 ;	genCmpEq
                           2291 ;	gencjneshort
   4C74 BD 02 02           2292 	cjne	r5,#0x02,00118$
   4C77 80 03              2293 	sjmp	00119$
   4C79                    2294 00118$:
   4C79 02 4D 72           2295 	ljmp	00107$
   4C7C                    2296 00119$:
                    099B   2297 	C$core_gpio.c$162$2$2 ==.
                           2298 ;	../drivers/CoreGPIO/core_gpio.c:162: gpio_in = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_IN );
                           2299 ;	genPointerGet
                           2300 ;	genGenPointerGet
   4C7C 8A 82              2301 	mov	dpl,r2
   4C7E 8B 83              2302 	mov	dph,r3
   4C80 8C F0              2303 	mov	b,r4
   4C82 12 61 48           2304 	lcall	__gptrget
   4C85 FD                 2305 	mov	r5,a
   4C86 A3                 2306 	inc	dptr
   4C87 12 61 48           2307 	lcall	__gptrget
   4C8A FE                 2308 	mov	r6,a
                           2309 ;	genPlus
                           2310 ;	genPlusIncr
   4C8B 74 90              2311 	mov	a,#0x90
   4C8D 25 05              2312 	add	a,ar5
   4C8F FD                 2313 	mov	r5,a
   4C90 74 00              2314 	mov	a,#0x00
   4C92 35 06              2315 	addc	a,ar6
   4C94 FE                 2316 	mov	r6,a
                           2317 ;	genCall
   4C95 8D 82              2318 	mov	dpl,r5
   4C97 8E 83              2319 	mov	dph,r6
   4C99 12 06 56           2320 	lcall	_HW_get_32bit_reg
   4C9C AD 82              2321 	mov	r5,dpl
   4C9E AE 83              2322 	mov	r6,dph
   4CA0 AF F0              2323 	mov	r7,b
   4CA2 F8                 2324 	mov	r0,a
                           2325 ;	genAssign
   4CA3 90 07 E0           2326 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4CA6 ED                 2327 	mov	a,r5
   4CA7 F0                 2328 	movx	@dptr,a
   4CA8 A3                 2329 	inc	dptr
   4CA9 EE                 2330 	mov	a,r6
   4CAA F0                 2331 	movx	@dptr,a
   4CAB A3                 2332 	inc	dptr
   4CAC EF                 2333 	mov	a,r7
   4CAD F0                 2334 	movx	@dptr,a
   4CAE A3                 2335 	inc	dptr
   4CAF E8                 2336 	mov	a,r0
   4CB0 F0                 2337 	movx	@dptr,a
                    09D0   2338 	C$core_gpio.c$163$2$2 ==.
                           2339 ;	../drivers/CoreGPIO/core_gpio.c:163: break;
   4CB1 02 4E 4B           2340 	ljmp	00110$
                    09D3   2341 	C$core_gpio.c$165$2$2 ==.
                           2342 ;	../drivers/CoreGPIO/core_gpio.c:165: case GPIO_APB_16_BITS_BUS:
   4CB4                    2343 00102$:
                    09D3   2344 	C$core_gpio.c$166$2$2 ==.
                           2345 ;	../drivers/CoreGPIO/core_gpio.c:166: gpio_in |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_IN0 );
                           2346 ;	genPointerGet
                           2347 ;	genGenPointerGet
   4CB4 8A 82              2348 	mov	dpl,r2
   4CB6 8B 83              2349 	mov	dph,r3
   4CB8 8C F0              2350 	mov	b,r4
   4CBA 12 61 48           2351 	lcall	__gptrget
   4CBD FD                 2352 	mov	r5,a
   4CBE A3                 2353 	inc	dptr
   4CBF 12 61 48           2354 	lcall	__gptrget
   4CC2 FE                 2355 	mov	r6,a
                           2356 ;	genPlus
                           2357 ;	genPlusIncr
   4CC3 74 90              2358 	mov	a,#0x90
   4CC5 25 05              2359 	add	a,ar5
   4CC7 FD                 2360 	mov	r5,a
   4CC8 74 00              2361 	mov	a,#0x00
   4CCA 35 06              2362 	addc	a,ar6
   4CCC FE                 2363 	mov	r6,a
                           2364 ;	genCall
   4CCD 8D 82              2365 	mov	dpl,r5
   4CCF 8E 83              2366 	mov	dph,r6
   4CD1 12 06 92           2367 	lcall	_HW_get_16bit_reg
   4CD4 AD 82              2368 	mov	r5,dpl
   4CD6 AE 83              2369 	mov	r6,dph
                           2370 ;	genCast
   4CD8 90 07 E0           2371 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4CDB ED                 2372 	mov	a,r5
   4CDC F0                 2373 	movx	@dptr,a
   4CDD A3                 2374 	inc	dptr
   4CDE EE                 2375 	mov	a,r6
   4CDF F0                 2376 	movx	@dptr,a
   4CE0 A3                 2377 	inc	dptr
   4CE1 74 00              2378 	mov	a,#0x00
   4CE3 F0                 2379 	movx	@dptr,a
   4CE4 A3                 2380 	inc	dptr
   4CE5 74 00              2381 	mov	a,#0x00
   4CE7 F0                 2382 	movx	@dptr,a
                    0A07   2383 	C$core_gpio.c$168$2$2 ==.
                           2384 ;	../drivers/CoreGPIO/core_gpio.c:168: break;
   4CE8 02 4E 4B           2385 	ljmp	00110$
                    0A0A   2386 	C$core_gpio.c$170$2$2 ==.
                           2387 ;	../drivers/CoreGPIO/core_gpio.c:170: case GPIO_APB_8_BITS_BUS:
   4CEB                    2388 00103$:
                    0A0A   2389 	C$core_gpio.c$171$2$2 ==.
                           2390 ;	../drivers/CoreGPIO/core_gpio.c:171: gpio_in |= HAL_get_8bit_reg( this_gpio->base_addr, GPIO_IN0 );
                           2391 ;	genPointerGet
                           2392 ;	genGenPointerGet
   4CEB 8A 82              2393 	mov	dpl,r2
   4CED 8B 83              2394 	mov	dph,r3
   4CEF 8C F0              2395 	mov	b,r4
   4CF1 12 61 48           2396 	lcall	__gptrget
   4CF4 FD                 2397 	mov	r5,a
   4CF5 A3                 2398 	inc	dptr
   4CF6 12 61 48           2399 	lcall	__gptrget
   4CF9 FE                 2400 	mov	r6,a
                           2401 ;	genPlus
                           2402 ;	genPlusIncr
   4CFA 74 90              2403 	mov	a,#0x90
   4CFC 25 05              2404 	add	a,ar5
   4CFE FD                 2405 	mov	r5,a
   4CFF 74 00              2406 	mov	a,#0x00
   4D01 35 06              2407 	addc	a,ar6
   4D03 FE                 2408 	mov	r6,a
                           2409 ;	genCall
   4D04 8D 82              2410 	mov	dpl,r5
   4D06 8E 83              2411 	mov	dph,r6
   4D08 C0 02              2412 	push	ar2
   4D0A C0 03              2413 	push	ar3
   4D0C C0 04              2414 	push	ar4
   4D0E 12 06 A7           2415 	lcall	_HW_get_8bit_reg
   4D11 AD 82              2416 	mov	r5,dpl
   4D13 D0 04              2417 	pop	ar4
   4D15 D0 03              2418 	pop	ar3
   4D17 D0 02              2419 	pop	ar2
                           2420 ;	genCast
   4D19 7E 00              2421 	mov	r6,#0x00
   4D1B 7F 00              2422 	mov	r7,#0x00
   4D1D 78 00              2423 	mov	r0,#0x00
                    0A3E   2424 	C$core_gpio.c$172$2$2 ==.
                           2425 ;	../drivers/CoreGPIO/core_gpio.c:172: gpio_in |= (HAL_get_8bit_reg( this_gpio->base_addr, GPIO_IN1 ) << 8);
                           2426 ;	genPointerGet
                           2427 ;	genGenPointerGet
   4D1F 8A 82              2428 	mov	dpl,r2
   4D21 8B 83              2429 	mov	dph,r3
   4D23 8C F0              2430 	mov	b,r4
   4D25 12 61 48           2431 	lcall	__gptrget
   4D28 FA                 2432 	mov	r2,a
   4D29 A3                 2433 	inc	dptr
   4D2A 12 61 48           2434 	lcall	__gptrget
   4D2D FB                 2435 	mov	r3,a
                           2436 ;	genPlus
                           2437 ;	genPlusIncr
   4D2E 74 94              2438 	mov	a,#0x94
   4D30 25 02              2439 	add	a,ar2
   4D32 FA                 2440 	mov	r2,a
   4D33 74 00              2441 	mov	a,#0x00
   4D35 35 03              2442 	addc	a,ar3
   4D37 FB                 2443 	mov	r3,a
                           2444 ;	genCall
   4D38 8A 82              2445 	mov	dpl,r2
   4D3A 8B 83              2446 	mov	dph,r3
   4D3C C0 05              2447 	push	ar5
   4D3E C0 06              2448 	push	ar6
   4D40 C0 07              2449 	push	ar7
   4D42 C0 00              2450 	push	ar0
   4D44 12 06 A7           2451 	lcall	_HW_get_8bit_reg
   4D47 AA 82              2452 	mov	r2,dpl
   4D49 D0 00              2453 	pop	ar0
   4D4B D0 07              2454 	pop	ar7
   4D4D D0 06              2455 	pop	ar6
   4D4F D0 05              2456 	pop	ar5
                           2457 ;	genCast
   4D51 7B 00              2458 	mov	r3,#0x00
                           2459 ;	genLeftShift
                           2460 ;	genLeftShiftLiteral
                           2461 ;	genlshTwo
   4D53 8A 03              2462 	mov	ar3,r2
   4D55 7A 00              2463 	mov	r2,#0x00
                           2464 ;	genCast
   4D57 EB                 2465 	mov	a,r3
   4D58 33                 2466 	rlc	a
   4D59 95 E0              2467 	subb	a,acc
   4D5B FC                 2468 	mov	r4,a
   4D5C F9                 2469 	mov	r1,a
                           2470 ;	genOr
   4D5D 90 07 E0           2471 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4D60 EA                 2472 	mov	a,r2
   4D61 4D                 2473 	orl	a,r5
   4D62 F0                 2474 	movx	@dptr,a
   4D63 EB                 2475 	mov	a,r3
   4D64 4E                 2476 	orl	a,r6
   4D65 A3                 2477 	inc	dptr
   4D66 F0                 2478 	movx	@dptr,a
   4D67 EC                 2479 	mov	a,r4
   4D68 4F                 2480 	orl	a,r7
   4D69 A3                 2481 	inc	dptr
   4D6A F0                 2482 	movx	@dptr,a
   4D6B E9                 2483 	mov	a,r1
   4D6C 48                 2484 	orl	a,r0
   4D6D A3                 2485 	inc	dptr
   4D6E F0                 2486 	movx	@dptr,a
                    0A8E   2487 	C$core_gpio.c$175$2$2 ==.
                           2488 ;	../drivers/CoreGPIO/core_gpio.c:175: break;
   4D6F 02 4E 4B           2489 	ljmp	00110$
                    0A91   2490 	C$core_gpio.c$178$2$2 ==.
                           2491 ;	../drivers/CoreGPIO/core_gpio.c:178: HAL_ASSERT(0);
   4D72                    2492 00107$:
                           2493 ;	genPointerSet
                           2494 ;     genFarPointerSet
   4D72 90 07 E4           2495 	mov	dptr,#_GPIO_get_inputs_file_name_4_4
   4D75 74 2E              2496 	mov	a,#0x2E
   4D77 F0                 2497 	movx	@dptr,a
                           2498 ;	genPointerSet
                           2499 ;     genFarPointerSet
   4D78 90 07 E5           2500 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0001)
   4D7B 74 2E              2501 	mov	a,#0x2E
   4D7D F0                 2502 	movx	@dptr,a
                           2503 ;	genPointerSet
                           2504 ;     genFarPointerSet
   4D7E 90 07 E6           2505 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0002)
   4D81 74 2F              2506 	mov	a,#0x2F
   4D83 F0                 2507 	movx	@dptr,a
                           2508 ;	genPointerSet
                           2509 ;     genFarPointerSet
   4D84 90 07 E7           2510 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0003)
   4D87 74 64              2511 	mov	a,#0x64
   4D89 F0                 2512 	movx	@dptr,a
                           2513 ;	genPointerSet
                           2514 ;     genFarPointerSet
   4D8A 90 07 E8           2515 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0004)
   4D8D 74 72              2516 	mov	a,#0x72
   4D8F F0                 2517 	movx	@dptr,a
                           2518 ;	genPointerSet
                           2519 ;     genFarPointerSet
   4D90 90 07 E9           2520 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0005)
   4D93 74 69              2521 	mov	a,#0x69
   4D95 F0                 2522 	movx	@dptr,a
                           2523 ;	genPointerSet
                           2524 ;     genFarPointerSet
   4D96 90 07 EA           2525 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0006)
   4D99 74 76              2526 	mov	a,#0x76
   4D9B F0                 2527 	movx	@dptr,a
                           2528 ;	genPointerSet
                           2529 ;     genFarPointerSet
   4D9C 90 07 EB           2530 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0007)
   4D9F 74 65              2531 	mov	a,#0x65
   4DA1 F0                 2532 	movx	@dptr,a
                           2533 ;	genPointerSet
                           2534 ;     genFarPointerSet
   4DA2 90 07 EC           2535 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0008)
   4DA5 74 72              2536 	mov	a,#0x72
   4DA7 F0                 2537 	movx	@dptr,a
                           2538 ;	genPointerSet
                           2539 ;     genFarPointerSet
   4DA8 90 07 ED           2540 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0009)
   4DAB 74 73              2541 	mov	a,#0x73
   4DAD F0                 2542 	movx	@dptr,a
                           2543 ;	genPointerSet
                           2544 ;     genFarPointerSet
   4DAE 90 07 EE           2545 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000a)
   4DB1 74 2F              2546 	mov	a,#0x2F
   4DB3 F0                 2547 	movx	@dptr,a
                           2548 ;	genPointerSet
                           2549 ;     genFarPointerSet
   4DB4 90 07 EF           2550 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000b)
   4DB7 74 43              2551 	mov	a,#0x43
   4DB9 F0                 2552 	movx	@dptr,a
                           2553 ;	genPointerSet
                           2554 ;     genFarPointerSet
   4DBA 90 07 F0           2555 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000c)
   4DBD 74 6F              2556 	mov	a,#0x6F
   4DBF F0                 2557 	movx	@dptr,a
                           2558 ;	genPointerSet
                           2559 ;     genFarPointerSet
   4DC0 90 07 F1           2560 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000d)
   4DC3 74 72              2561 	mov	a,#0x72
   4DC5 F0                 2562 	movx	@dptr,a
                           2563 ;	genPointerSet
                           2564 ;     genFarPointerSet
   4DC6 90 07 F2           2565 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000e)
   4DC9 74 65              2566 	mov	a,#0x65
   4DCB F0                 2567 	movx	@dptr,a
                           2568 ;	genPointerSet
                           2569 ;     genFarPointerSet
   4DCC 90 07 F3           2570 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000f)
   4DCF 74 47              2571 	mov	a,#0x47
   4DD1 F0                 2572 	movx	@dptr,a
                           2573 ;	genPointerSet
                           2574 ;     genFarPointerSet
   4DD2 90 07 F4           2575 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0010)
   4DD5 74 50              2576 	mov	a,#0x50
   4DD7 F0                 2577 	movx	@dptr,a
                           2578 ;	genPointerSet
                           2579 ;     genFarPointerSet
   4DD8 90 07 F5           2580 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0011)
   4DDB 74 49              2581 	mov	a,#0x49
   4DDD F0                 2582 	movx	@dptr,a
                           2583 ;	genPointerSet
                           2584 ;     genFarPointerSet
   4DDE 90 07 F6           2585 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0012)
   4DE1 74 4F              2586 	mov	a,#0x4F
   4DE3 F0                 2587 	movx	@dptr,a
                           2588 ;	genPointerSet
                           2589 ;     genFarPointerSet
   4DE4 90 07 F7           2590 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0013)
   4DE7 74 2F              2591 	mov	a,#0x2F
   4DE9 F0                 2592 	movx	@dptr,a
                           2593 ;	genPointerSet
                           2594 ;     genFarPointerSet
   4DEA 90 07 F8           2595 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0014)
   4DED 74 63              2596 	mov	a,#0x63
   4DEF F0                 2597 	movx	@dptr,a
                           2598 ;	genPointerSet
                           2599 ;     genFarPointerSet
   4DF0 90 07 F9           2600 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0015)
   4DF3 74 6F              2601 	mov	a,#0x6F
   4DF5 F0                 2602 	movx	@dptr,a
                           2603 ;	genPointerSet
                           2604 ;     genFarPointerSet
   4DF6 90 07 FA           2605 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0016)
   4DF9 74 72              2606 	mov	a,#0x72
   4DFB F0                 2607 	movx	@dptr,a
                           2608 ;	genPointerSet
                           2609 ;     genFarPointerSet
   4DFC 90 07 FB           2610 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0017)
   4DFF 74 65              2611 	mov	a,#0x65
   4E01 F0                 2612 	movx	@dptr,a
                           2613 ;	genPointerSet
                           2614 ;     genFarPointerSet
   4E02 90 07 FC           2615 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0018)
   4E05 74 5F              2616 	mov	a,#0x5F
   4E07 F0                 2617 	movx	@dptr,a
                           2618 ;	genPointerSet
                           2619 ;     genFarPointerSet
   4E08 90 07 FD           2620 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0019)
   4E0B 74 67              2621 	mov	a,#0x67
   4E0D F0                 2622 	movx	@dptr,a
                           2623 ;	genPointerSet
                           2624 ;     genFarPointerSet
   4E0E 90 07 FE           2625 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001a)
   4E11 74 70              2626 	mov	a,#0x70
   4E13 F0                 2627 	movx	@dptr,a
                           2628 ;	genPointerSet
                           2629 ;     genFarPointerSet
   4E14 90 07 FF           2630 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001b)
   4E17 74 69              2631 	mov	a,#0x69
   4E19 F0                 2632 	movx	@dptr,a
                           2633 ;	genPointerSet
                           2634 ;     genFarPointerSet
   4E1A 90 08 00           2635 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001c)
   4E1D 74 6F              2636 	mov	a,#0x6F
   4E1F F0                 2637 	movx	@dptr,a
                           2638 ;	genPointerSet
                           2639 ;     genFarPointerSet
   4E20 90 08 01           2640 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001d)
   4E23 74 2E              2641 	mov	a,#0x2E
   4E25 F0                 2642 	movx	@dptr,a
                           2643 ;	genPointerSet
                           2644 ;     genFarPointerSet
   4E26 90 08 02           2645 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001e)
   4E29 74 63              2646 	mov	a,#0x63
   4E2B F0                 2647 	movx	@dptr,a
                           2648 ;	genPointerSet
                           2649 ;     genFarPointerSet
   4E2C 90 08 03           2650 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001f)
   4E2F 74 00              2651 	mov	a,#0x00
   4E31 F0                 2652 	movx	@dptr,a
                           2653 ;	genAssign
   4E32 90 00 8C           2654 	mov	dptr,#_HAL_assert_fail_PARM_2
   4E35 74 B2              2655 	mov	a,#0xB2
   4E37 F0                 2656 	movx	@dptr,a
   4E38 E4                 2657 	clr	a
   4E39 A3                 2658 	inc	dptr
   4E3A F0                 2659 	movx	@dptr,a
   4E3B A3                 2660 	inc	dptr
   4E3C F0                 2661 	movx	@dptr,a
   4E3D A3                 2662 	inc	dptr
   4E3E F0                 2663 	movx	@dptr,a
                           2664 ;	genCall
   4E3F 75 82 E4           2665 	mov	dpl,#_GPIO_get_inputs_file_name_4_4
   4E42 75 83 07           2666 	mov	dph,#(_GPIO_get_inputs_file_name_4_4 >> 8)
   4E45 75 F0 00           2667 	mov	b,#0x00
   4E48 12 05 F6           2668 	lcall	_HAL_assert_fail
                    0B6A   2669 	C$core_gpio.c$180$1$1 ==.
                           2670 ;	../drivers/CoreGPIO/core_gpio.c:180: }
   4E4B                    2671 00110$:
                    0B6A   2672 	C$core_gpio.c$182$1$1 ==.
                           2673 ;	../drivers/CoreGPIO/core_gpio.c:182: return gpio_in;
                           2674 ;	genAssign
   4E4B 90 07 E0           2675 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   4E4E E0                 2676 	movx	a,@dptr
   4E4F FA                 2677 	mov	r2,a
   4E50 A3                 2678 	inc	dptr
   4E51 E0                 2679 	movx	a,@dptr
   4E52 FB                 2680 	mov	r3,a
   4E53 A3                 2681 	inc	dptr
   4E54 E0                 2682 	movx	a,@dptr
   4E55 FC                 2683 	mov	r4,a
   4E56 A3                 2684 	inc	dptr
   4E57 E0                 2685 	movx	a,@dptr
   4E58 FD                 2686 	mov	r5,a
                           2687 ;	genRet
   4E59 8A 82              2688 	mov	dpl,r2
   4E5B 8B 83              2689 	mov	dph,r3
   4E5D 8C F0              2690 	mov	b,r4
   4E5F ED                 2691 	mov	a,r5
   4E60                    2692 00111$:
                    0B7F   2693 	C$core_gpio.c$183$1$1 ==.
                    0B7F   2694 	XG$GPIO_get_inputs$0$0 ==.
   4E60 22                 2695 	ret
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
   4E61                    2709 _GPIO_get_outputs:
                           2710 ;	genReceive
   4E61 AA F0              2711 	mov	r2,b
   4E63 AB 83              2712 	mov	r3,dph
   4E65 E5 82              2713 	mov	a,dpl
   4E67 90 08 04           2714 	mov	dptr,#_GPIO_get_outputs_this_gpio_1_1
   4E6A F0                 2715 	movx	@dptr,a
   4E6B A3                 2716 	inc	dptr
   4E6C EB                 2717 	mov	a,r3
   4E6D F0                 2718 	movx	@dptr,a
   4E6E A3                 2719 	inc	dptr
   4E6F EA                 2720 	mov	a,r2
   4E70 F0                 2721 	movx	@dptr,a
                    0B90   2722 	C$core_gpio.c$194$1$1 ==.
                           2723 ;	../drivers/CoreGPIO/core_gpio.c:194: uint32_t gpio_out = 0;
                           2724 ;	genAssign
   4E71 90 08 07           2725 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4E74 E4                 2726 	clr	a
   4E75 F0                 2727 	movx	@dptr,a
   4E76 A3                 2728 	inc	dptr
   4E77 F0                 2729 	movx	@dptr,a
   4E78 A3                 2730 	inc	dptr
   4E79 F0                 2731 	movx	@dptr,a
   4E7A A3                 2732 	inc	dptr
   4E7B F0                 2733 	movx	@dptr,a
                    0B9B   2734 	C$core_gpio.c$196$1$1 ==.
                           2735 ;	../drivers/CoreGPIO/core_gpio.c:196: switch( this_gpio->apb_bus_width )
                           2736 ;	genAssign
   4E7C 90 08 04           2737 	mov	dptr,#_GPIO_get_outputs_this_gpio_1_1
   4E7F E0                 2738 	movx	a,@dptr
   4E80 FA                 2739 	mov	r2,a
   4E81 A3                 2740 	inc	dptr
   4E82 E0                 2741 	movx	a,@dptr
   4E83 FB                 2742 	mov	r3,a
   4E84 A3                 2743 	inc	dptr
   4E85 E0                 2744 	movx	a,@dptr
   4E86 FC                 2745 	mov	r4,a
                           2746 ;	genPlus
                           2747 ;	genPlusIncr
   4E87 74 02              2748 	mov	a,#0x02
   4E89 25 02              2749 	add	a,ar2
   4E8B FD                 2750 	mov	r5,a
   4E8C 74 00              2751 	mov	a,#0x00
   4E8E 35 03              2752 	addc	a,ar3
   4E90 FE                 2753 	mov	r6,a
   4E91 8C 07              2754 	mov	ar7,r4
                           2755 ;	genPointerGet
                           2756 ;	genGenPointerGet
   4E93 8D 82              2757 	mov	dpl,r5
   4E95 8E 83              2758 	mov	dph,r6
   4E97 8F F0              2759 	mov	b,r7
   4E99 12 61 48           2760 	lcall	__gptrget
   4E9C FD                 2761 	mov	r5,a
                           2762 ;	genCmpEq
                           2763 ;	gencjneshort
   4E9D BD 00 03           2764 	cjne	r5,#0x00,00116$
   4EA0 02 4F 20           2765 	ljmp	00103$
   4EA3                    2766 00116$:
                           2767 ;	genCmpEq
                           2768 ;	gencjneshort
   4EA3 BD 01 03           2769 	cjne	r5,#0x01,00117$
   4EA6 02 4E E9           2770 	ljmp	00102$
   4EA9                    2771 00117$:
                           2772 ;	genCmpEq
                           2773 ;	gencjneshort
   4EA9 BD 02 02           2774 	cjne	r5,#0x02,00118$
   4EAC 80 03              2775 	sjmp	00119$
   4EAE                    2776 00118$:
   4EAE 02 4F A5           2777 	ljmp	00107$
   4EB1                    2778 00119$:
                    0BD0   2779 	C$core_gpio.c$199$2$2 ==.
                           2780 ;	../drivers/CoreGPIO/core_gpio.c:199: gpio_out = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT );
                           2781 ;	genPointerGet
                           2782 ;	genGenPointerGet
   4EB1 8A 82              2783 	mov	dpl,r2
   4EB3 8B 83              2784 	mov	dph,r3
   4EB5 8C F0              2785 	mov	b,r4
   4EB7 12 61 48           2786 	lcall	__gptrget
   4EBA FD                 2787 	mov	r5,a
   4EBB A3                 2788 	inc	dptr
   4EBC 12 61 48           2789 	lcall	__gptrget
   4EBF FE                 2790 	mov	r6,a
                           2791 ;	genPlus
                           2792 ;	genPlusIncr
   4EC0 74 A0              2793 	mov	a,#0xA0
   4EC2 25 05              2794 	add	a,ar5
   4EC4 FD                 2795 	mov	r5,a
   4EC5 74 00              2796 	mov	a,#0x00
   4EC7 35 06              2797 	addc	a,ar6
   4EC9 FE                 2798 	mov	r6,a
                           2799 ;	genCall
   4ECA 8D 82              2800 	mov	dpl,r5
   4ECC 8E 83              2801 	mov	dph,r6
   4ECE 12 06 56           2802 	lcall	_HW_get_32bit_reg
   4ED1 AD 82              2803 	mov	r5,dpl
   4ED3 AE 83              2804 	mov	r6,dph
   4ED5 AF F0              2805 	mov	r7,b
   4ED7 F8                 2806 	mov	r0,a
                           2807 ;	genAssign
   4ED8 90 08 07           2808 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4EDB ED                 2809 	mov	a,r5
   4EDC F0                 2810 	movx	@dptr,a
   4EDD A3                 2811 	inc	dptr
   4EDE EE                 2812 	mov	a,r6
   4EDF F0                 2813 	movx	@dptr,a
   4EE0 A3                 2814 	inc	dptr
   4EE1 EF                 2815 	mov	a,r7
   4EE2 F0                 2816 	movx	@dptr,a
   4EE3 A3                 2817 	inc	dptr
   4EE4 E8                 2818 	mov	a,r0
   4EE5 F0                 2819 	movx	@dptr,a
                    0C05   2820 	C$core_gpio.c$200$2$2 ==.
                           2821 ;	../drivers/CoreGPIO/core_gpio.c:200: break;
   4EE6 02 50 7E           2822 	ljmp	00110$
                    0C08   2823 	C$core_gpio.c$202$2$2 ==.
                           2824 ;	../drivers/CoreGPIO/core_gpio.c:202: case GPIO_APB_16_BITS_BUS:
   4EE9                    2825 00102$:
                    0C08   2826 	C$core_gpio.c$203$2$2 ==.
                           2827 ;	../drivers/CoreGPIO/core_gpio.c:203: gpio_out |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT0 );
                           2828 ;	genPointerGet
                           2829 ;	genGenPointerGet
   4EE9 8A 82              2830 	mov	dpl,r2
   4EEB 8B 83              2831 	mov	dph,r3
   4EED 8C F0              2832 	mov	b,r4
   4EEF 12 61 48           2833 	lcall	__gptrget
   4EF2 FD                 2834 	mov	r5,a
   4EF3 A3                 2835 	inc	dptr
   4EF4 12 61 48           2836 	lcall	__gptrget
   4EF7 FE                 2837 	mov	r6,a
                           2838 ;	genPlus
                           2839 ;	genPlusIncr
   4EF8 74 A0              2840 	mov	a,#0xA0
   4EFA 25 05              2841 	add	a,ar5
   4EFC FD                 2842 	mov	r5,a
   4EFD 74 00              2843 	mov	a,#0x00
   4EFF 35 06              2844 	addc	a,ar6
   4F01 FE                 2845 	mov	r6,a
                           2846 ;	genCall
   4F02 8D 82              2847 	mov	dpl,r5
   4F04 8E 83              2848 	mov	dph,r6
   4F06 12 06 92           2849 	lcall	_HW_get_16bit_reg
   4F09 AD 82              2850 	mov	r5,dpl
   4F0B AE 83              2851 	mov	r6,dph
                           2852 ;	genCast
   4F0D 90 08 07           2853 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4F10 ED                 2854 	mov	a,r5
   4F11 F0                 2855 	movx	@dptr,a
   4F12 A3                 2856 	inc	dptr
   4F13 EE                 2857 	mov	a,r6
   4F14 F0                 2858 	movx	@dptr,a
   4F15 A3                 2859 	inc	dptr
   4F16 74 00              2860 	mov	a,#0x00
   4F18 F0                 2861 	movx	@dptr,a
   4F19 A3                 2862 	inc	dptr
   4F1A 74 00              2863 	mov	a,#0x00
   4F1C F0                 2864 	movx	@dptr,a
                    0C3C   2865 	C$core_gpio.c$205$2$2 ==.
                           2866 ;	../drivers/CoreGPIO/core_gpio.c:205: break;
   4F1D 02 50 7E           2867 	ljmp	00110$
                    0C3F   2868 	C$core_gpio.c$207$2$2 ==.
                           2869 ;	../drivers/CoreGPIO/core_gpio.c:207: case GPIO_APB_8_BITS_BUS:
   4F20                    2870 00103$:
                    0C3F   2871 	C$core_gpio.c$208$2$2 ==.
                           2872 ;	../drivers/CoreGPIO/core_gpio.c:208: gpio_out |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT0 );
                           2873 ;	genPointerGet
                           2874 ;	genGenPointerGet
   4F20 8A 82              2875 	mov	dpl,r2
   4F22 8B 83              2876 	mov	dph,r3
   4F24 8C F0              2877 	mov	b,r4
   4F26 12 61 48           2878 	lcall	__gptrget
   4F29 FD                 2879 	mov	r5,a
   4F2A A3                 2880 	inc	dptr
   4F2B 12 61 48           2881 	lcall	__gptrget
   4F2E FE                 2882 	mov	r6,a
                           2883 ;	genPlus
                           2884 ;	genPlusIncr
   4F2F 74 A0              2885 	mov	a,#0xA0
   4F31 25 05              2886 	add	a,ar5
   4F33 FD                 2887 	mov	r5,a
   4F34 74 00              2888 	mov	a,#0x00
   4F36 35 06              2889 	addc	a,ar6
   4F38 FE                 2890 	mov	r6,a
                           2891 ;	genCall
   4F39 8D 82              2892 	mov	dpl,r5
   4F3B 8E 83              2893 	mov	dph,r6
   4F3D C0 02              2894 	push	ar2
   4F3F C0 03              2895 	push	ar3
   4F41 C0 04              2896 	push	ar4
   4F43 12 06 92           2897 	lcall	_HW_get_16bit_reg
   4F46 AD 82              2898 	mov	r5,dpl
   4F48 AE 83              2899 	mov	r6,dph
   4F4A D0 04              2900 	pop	ar4
   4F4C D0 03              2901 	pop	ar3
   4F4E D0 02              2902 	pop	ar2
                           2903 ;	genCast
   4F50 7F 00              2904 	mov	r7,#0x00
   4F52 78 00              2905 	mov	r0,#0x00
                    0C73   2906 	C$core_gpio.c$209$2$2 ==.
                           2907 ;	../drivers/CoreGPIO/core_gpio.c:209: gpio_out |= (HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT1 ) << 8);
                           2908 ;	genPointerGet
                           2909 ;	genGenPointerGet
   4F54 8A 82              2910 	mov	dpl,r2
   4F56 8B 83              2911 	mov	dph,r3
   4F58 8C F0              2912 	mov	b,r4
   4F5A 12 61 48           2913 	lcall	__gptrget
   4F5D FA                 2914 	mov	r2,a
   4F5E A3                 2915 	inc	dptr
   4F5F 12 61 48           2916 	lcall	__gptrget
   4F62 FB                 2917 	mov	r3,a
                           2918 ;	genPlus
                           2919 ;	genPlusIncr
   4F63 74 A4              2920 	mov	a,#0xA4
   4F65 25 02              2921 	add	a,ar2
   4F67 FA                 2922 	mov	r2,a
   4F68 74 00              2923 	mov	a,#0x00
   4F6A 35 03              2924 	addc	a,ar3
   4F6C FB                 2925 	mov	r3,a
                           2926 ;	genCall
   4F6D 8A 82              2927 	mov	dpl,r2
   4F6F 8B 83              2928 	mov	dph,r3
   4F71 C0 05              2929 	push	ar5
   4F73 C0 06              2930 	push	ar6
   4F75 C0 07              2931 	push	ar7
   4F77 C0 00              2932 	push	ar0
   4F79 12 06 92           2933 	lcall	_HW_get_16bit_reg
   4F7C AA 82              2934 	mov	r2,dpl
   4F7E AB 83              2935 	mov	r3,dph
   4F80 D0 00              2936 	pop	ar0
   4F82 D0 07              2937 	pop	ar7
   4F84 D0 06              2938 	pop	ar6
   4F86 D0 05              2939 	pop	ar5
                           2940 ;	genLeftShift
                           2941 ;	genLeftShiftLiteral
                           2942 ;	genlshTwo
   4F88 8A 03              2943 	mov	ar3,r2
   4F8A 7A 00              2944 	mov	r2,#0x00
                           2945 ;	genCast
   4F8C 7C 00              2946 	mov	r4,#0x00
   4F8E 79 00              2947 	mov	r1,#0x00
                           2948 ;	genOr
   4F90 90 08 07           2949 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   4F93 EA                 2950 	mov	a,r2
   4F94 4D                 2951 	orl	a,r5
   4F95 F0                 2952 	movx	@dptr,a
   4F96 EB                 2953 	mov	a,r3
   4F97 4E                 2954 	orl	a,r6
   4F98 A3                 2955 	inc	dptr
   4F99 F0                 2956 	movx	@dptr,a
   4F9A EC                 2957 	mov	a,r4
   4F9B 4F                 2958 	orl	a,r7
   4F9C A3                 2959 	inc	dptr
   4F9D F0                 2960 	movx	@dptr,a
   4F9E E9                 2961 	mov	a,r1
   4F9F 48                 2962 	orl	a,r0
   4FA0 A3                 2963 	inc	dptr
   4FA1 F0                 2964 	movx	@dptr,a
                    0CC1   2965 	C$core_gpio.c$212$2$2 ==.
                           2966 ;	../drivers/CoreGPIO/core_gpio.c:212: break;
   4FA2 02 50 7E           2967 	ljmp	00110$
                    0CC4   2968 	C$core_gpio.c$215$2$2 ==.
                           2969 ;	../drivers/CoreGPIO/core_gpio.c:215: HAL_ASSERT(0);
   4FA5                    2970 00107$:
                           2971 ;	genPointerSet
                           2972 ;     genFarPointerSet
   4FA5 90 08 0B           2973 	mov	dptr,#_GPIO_get_outputs_file_name_4_4
   4FA8 74 2E              2974 	mov	a,#0x2E
   4FAA F0                 2975 	movx	@dptr,a
                           2976 ;	genPointerSet
                           2977 ;     genFarPointerSet
   4FAB 90 08 0C           2978 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0001)
   4FAE 74 2E              2979 	mov	a,#0x2E
   4FB0 F0                 2980 	movx	@dptr,a
                           2981 ;	genPointerSet
                           2982 ;     genFarPointerSet
   4FB1 90 08 0D           2983 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0002)
   4FB4 74 2F              2984 	mov	a,#0x2F
   4FB6 F0                 2985 	movx	@dptr,a
                           2986 ;	genPointerSet
                           2987 ;     genFarPointerSet
   4FB7 90 08 0E           2988 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0003)
   4FBA 74 64              2989 	mov	a,#0x64
   4FBC F0                 2990 	movx	@dptr,a
                           2991 ;	genPointerSet
                           2992 ;     genFarPointerSet
   4FBD 90 08 0F           2993 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0004)
   4FC0 74 72              2994 	mov	a,#0x72
   4FC2 F0                 2995 	movx	@dptr,a
                           2996 ;	genPointerSet
                           2997 ;     genFarPointerSet
   4FC3 90 08 10           2998 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0005)
   4FC6 74 69              2999 	mov	a,#0x69
   4FC8 F0                 3000 	movx	@dptr,a
                           3001 ;	genPointerSet
                           3002 ;     genFarPointerSet
   4FC9 90 08 11           3003 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0006)
   4FCC 74 76              3004 	mov	a,#0x76
   4FCE F0                 3005 	movx	@dptr,a
                           3006 ;	genPointerSet
                           3007 ;     genFarPointerSet
   4FCF 90 08 12           3008 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0007)
   4FD2 74 65              3009 	mov	a,#0x65
   4FD4 F0                 3010 	movx	@dptr,a
                           3011 ;	genPointerSet
                           3012 ;     genFarPointerSet
   4FD5 90 08 13           3013 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0008)
   4FD8 74 72              3014 	mov	a,#0x72
   4FDA F0                 3015 	movx	@dptr,a
                           3016 ;	genPointerSet
                           3017 ;     genFarPointerSet
   4FDB 90 08 14           3018 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0009)
   4FDE 74 73              3019 	mov	a,#0x73
   4FE0 F0                 3020 	movx	@dptr,a
                           3021 ;	genPointerSet
                           3022 ;     genFarPointerSet
   4FE1 90 08 15           3023 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000a)
   4FE4 74 2F              3024 	mov	a,#0x2F
   4FE6 F0                 3025 	movx	@dptr,a
                           3026 ;	genPointerSet
                           3027 ;     genFarPointerSet
   4FE7 90 08 16           3028 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000b)
   4FEA 74 43              3029 	mov	a,#0x43
   4FEC F0                 3030 	movx	@dptr,a
                           3031 ;	genPointerSet
                           3032 ;     genFarPointerSet
   4FED 90 08 17           3033 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000c)
   4FF0 74 6F              3034 	mov	a,#0x6F
   4FF2 F0                 3035 	movx	@dptr,a
                           3036 ;	genPointerSet
                           3037 ;     genFarPointerSet
   4FF3 90 08 18           3038 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000d)
   4FF6 74 72              3039 	mov	a,#0x72
   4FF8 F0                 3040 	movx	@dptr,a
                           3041 ;	genPointerSet
                           3042 ;     genFarPointerSet
   4FF9 90 08 19           3043 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000e)
   4FFC 74 65              3044 	mov	a,#0x65
   4FFE F0                 3045 	movx	@dptr,a
                           3046 ;	genPointerSet
                           3047 ;     genFarPointerSet
   4FFF 90 08 1A           3048 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000f)
   5002 74 47              3049 	mov	a,#0x47
   5004 F0                 3050 	movx	@dptr,a
                           3051 ;	genPointerSet
                           3052 ;     genFarPointerSet
   5005 90 08 1B           3053 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0010)
   5008 74 50              3054 	mov	a,#0x50
   500A F0                 3055 	movx	@dptr,a
                           3056 ;	genPointerSet
                           3057 ;     genFarPointerSet
   500B 90 08 1C           3058 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0011)
   500E 74 49              3059 	mov	a,#0x49
   5010 F0                 3060 	movx	@dptr,a
                           3061 ;	genPointerSet
                           3062 ;     genFarPointerSet
   5011 90 08 1D           3063 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0012)
   5014 74 4F              3064 	mov	a,#0x4F
   5016 F0                 3065 	movx	@dptr,a
                           3066 ;	genPointerSet
                           3067 ;     genFarPointerSet
   5017 90 08 1E           3068 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0013)
   501A 74 2F              3069 	mov	a,#0x2F
   501C F0                 3070 	movx	@dptr,a
                           3071 ;	genPointerSet
                           3072 ;     genFarPointerSet
   501D 90 08 1F           3073 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0014)
   5020 74 63              3074 	mov	a,#0x63
   5022 F0                 3075 	movx	@dptr,a
                           3076 ;	genPointerSet
                           3077 ;     genFarPointerSet
   5023 90 08 20           3078 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0015)
   5026 74 6F              3079 	mov	a,#0x6F
   5028 F0                 3080 	movx	@dptr,a
                           3081 ;	genPointerSet
                           3082 ;     genFarPointerSet
   5029 90 08 21           3083 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0016)
   502C 74 72              3084 	mov	a,#0x72
   502E F0                 3085 	movx	@dptr,a
                           3086 ;	genPointerSet
                           3087 ;     genFarPointerSet
   502F 90 08 22           3088 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0017)
   5032 74 65              3089 	mov	a,#0x65
   5034 F0                 3090 	movx	@dptr,a
                           3091 ;	genPointerSet
                           3092 ;     genFarPointerSet
   5035 90 08 23           3093 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0018)
   5038 74 5F              3094 	mov	a,#0x5F
   503A F0                 3095 	movx	@dptr,a
                           3096 ;	genPointerSet
                           3097 ;     genFarPointerSet
   503B 90 08 24           3098 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0019)
   503E 74 67              3099 	mov	a,#0x67
   5040 F0                 3100 	movx	@dptr,a
                           3101 ;	genPointerSet
                           3102 ;     genFarPointerSet
   5041 90 08 25           3103 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001a)
   5044 74 70              3104 	mov	a,#0x70
   5046 F0                 3105 	movx	@dptr,a
                           3106 ;	genPointerSet
                           3107 ;     genFarPointerSet
   5047 90 08 26           3108 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001b)
   504A 74 69              3109 	mov	a,#0x69
   504C F0                 3110 	movx	@dptr,a
                           3111 ;	genPointerSet
                           3112 ;     genFarPointerSet
   504D 90 08 27           3113 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001c)
   5050 74 6F              3114 	mov	a,#0x6F
   5052 F0                 3115 	movx	@dptr,a
                           3116 ;	genPointerSet
                           3117 ;     genFarPointerSet
   5053 90 08 28           3118 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001d)
   5056 74 2E              3119 	mov	a,#0x2E
   5058 F0                 3120 	movx	@dptr,a
                           3121 ;	genPointerSet
                           3122 ;     genFarPointerSet
   5059 90 08 29           3123 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001e)
   505C 74 63              3124 	mov	a,#0x63
   505E F0                 3125 	movx	@dptr,a
                           3126 ;	genPointerSet
                           3127 ;     genFarPointerSet
   505F 90 08 2A           3128 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001f)
   5062 74 00              3129 	mov	a,#0x00
   5064 F0                 3130 	movx	@dptr,a
                           3131 ;	genAssign
   5065 90 00 8C           3132 	mov	dptr,#_HAL_assert_fail_PARM_2
   5068 74 D7              3133 	mov	a,#0xD7
   506A F0                 3134 	movx	@dptr,a
   506B E4                 3135 	clr	a
   506C A3                 3136 	inc	dptr
   506D F0                 3137 	movx	@dptr,a
   506E A3                 3138 	inc	dptr
   506F F0                 3139 	movx	@dptr,a
   5070 A3                 3140 	inc	dptr
   5071 F0                 3141 	movx	@dptr,a
                           3142 ;	genCall
   5072 75 82 0B           3143 	mov	dpl,#_GPIO_get_outputs_file_name_4_4
   5075 75 83 08           3144 	mov	dph,#(_GPIO_get_outputs_file_name_4_4 >> 8)
   5078 75 F0 00           3145 	mov	b,#0x00
   507B 12 05 F6           3146 	lcall	_HAL_assert_fail
                    0D9D   3147 	C$core_gpio.c$217$1$1 ==.
                           3148 ;	../drivers/CoreGPIO/core_gpio.c:217: }
   507E                    3149 00110$:
                    0D9D   3150 	C$core_gpio.c$219$1$1 ==.
                           3151 ;	../drivers/CoreGPIO/core_gpio.c:219: return gpio_out;
                           3152 ;	genAssign
   507E 90 08 07           3153 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   5081 E0                 3154 	movx	a,@dptr
   5082 FA                 3155 	mov	r2,a
   5083 A3                 3156 	inc	dptr
   5084 E0                 3157 	movx	a,@dptr
   5085 FB                 3158 	mov	r3,a
   5086 A3                 3159 	inc	dptr
   5087 E0                 3160 	movx	a,@dptr
   5088 FC                 3161 	mov	r4,a
   5089 A3                 3162 	inc	dptr
   508A E0                 3163 	movx	a,@dptr
   508B FD                 3164 	mov	r5,a
                           3165 ;	genRet
   508C 8A 82              3166 	mov	dpl,r2
   508E 8B 83              3167 	mov	dph,r3
   5090 8C F0              3168 	mov	b,r4
   5092 ED                 3169 	mov	a,r5
   5093                    3170 00111$:
                    0DB2   3171 	C$core_gpio.c$220$1$1 ==.
                    0DB2   3172 	XG$GPIO_get_outputs$0$0 ==.
   5093 22                 3173 	ret
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
   5094                    3200 _GPIO_set_output:
                           3201 ;	genReceive
   5094 AA F0              3202 	mov	r2,b
   5096 AB 83              3203 	mov	r3,dph
   5098 E5 82              3204 	mov	a,dpl
   509A 90 08 2D           3205 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   509D F0                 3206 	movx	@dptr,a
   509E A3                 3207 	inc	dptr
   509F EB                 3208 	mov	a,r3
   50A0 F0                 3209 	movx	@dptr,a
   50A1 A3                 3210 	inc	dptr
   50A2 EA                 3211 	mov	a,r2
   50A3 F0                 3212 	movx	@dptr,a
                    0DC3   3213 	C$core_gpio.c$233$2$2 ==.
                           3214 ;	../drivers/CoreGPIO/core_gpio.c:233: HAL_ASSERT( port_id < NB_OF_GPIO );
                           3215 ;	genAssign
   50A4 90 08 2B           3216 	mov	dptr,#_GPIO_set_output_PARM_2
   50A7 E0                 3217 	movx	a,@dptr
   50A8 FA                 3218 	mov	r2,a
                           3219 ;	genCmpLt
                           3220 ;	genCmp
   50A9 BA 20 00           3221 	cjne	r2,#0x20,00152$
   50AC                    3222 00152$:
                           3223 ;	genIfxJump
   50AC 50 03              3224 	jnc	00153$
   50AE 02 51 8E           3225 	ljmp	00104$
   50B1                    3226 00153$:
                           3227 ;	genPointerSet
                           3228 ;     genFarPointerSet
   50B1 90 08 30           3229 	mov	dptr,#_GPIO_set_output_file_name_3_3
   50B4 74 2E              3230 	mov	a,#0x2E
   50B6 F0                 3231 	movx	@dptr,a
                           3232 ;	genPointerSet
                           3233 ;     genFarPointerSet
   50B7 90 08 31           3234 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0001)
   50BA 74 2E              3235 	mov	a,#0x2E
   50BC F0                 3236 	movx	@dptr,a
                           3237 ;	genPointerSet
                           3238 ;     genFarPointerSet
   50BD 90 08 32           3239 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0002)
   50C0 74 2F              3240 	mov	a,#0x2F
   50C2 F0                 3241 	movx	@dptr,a
                           3242 ;	genPointerSet
                           3243 ;     genFarPointerSet
   50C3 90 08 33           3244 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0003)
   50C6 74 64              3245 	mov	a,#0x64
   50C8 F0                 3246 	movx	@dptr,a
                           3247 ;	genPointerSet
                           3248 ;     genFarPointerSet
   50C9 90 08 34           3249 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0004)
   50CC 74 72              3250 	mov	a,#0x72
   50CE F0                 3251 	movx	@dptr,a
                           3252 ;	genPointerSet
                           3253 ;     genFarPointerSet
   50CF 90 08 35           3254 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0005)
   50D2 74 69              3255 	mov	a,#0x69
   50D4 F0                 3256 	movx	@dptr,a
                           3257 ;	genPointerSet
                           3258 ;     genFarPointerSet
   50D5 90 08 36           3259 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0006)
   50D8 74 76              3260 	mov	a,#0x76
   50DA F0                 3261 	movx	@dptr,a
                           3262 ;	genPointerSet
                           3263 ;     genFarPointerSet
   50DB 90 08 37           3264 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0007)
   50DE 74 65              3265 	mov	a,#0x65
   50E0 F0                 3266 	movx	@dptr,a
                           3267 ;	genPointerSet
                           3268 ;     genFarPointerSet
   50E1 90 08 38           3269 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0008)
   50E4 74 72              3270 	mov	a,#0x72
   50E6 F0                 3271 	movx	@dptr,a
                           3272 ;	genPointerSet
                           3273 ;     genFarPointerSet
   50E7 90 08 39           3274 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0009)
   50EA 74 73              3275 	mov	a,#0x73
   50EC F0                 3276 	movx	@dptr,a
                           3277 ;	genPointerSet
                           3278 ;     genFarPointerSet
   50ED 90 08 3A           3279 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000a)
   50F0 74 2F              3280 	mov	a,#0x2F
   50F2 F0                 3281 	movx	@dptr,a
                           3282 ;	genPointerSet
                           3283 ;     genFarPointerSet
   50F3 90 08 3B           3284 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000b)
   50F6 74 43              3285 	mov	a,#0x43
   50F8 F0                 3286 	movx	@dptr,a
                           3287 ;	genPointerSet
                           3288 ;     genFarPointerSet
   50F9 90 08 3C           3289 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000c)
   50FC 74 6F              3290 	mov	a,#0x6F
   50FE F0                 3291 	movx	@dptr,a
                           3292 ;	genPointerSet
                           3293 ;     genFarPointerSet
   50FF 90 08 3D           3294 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000d)
   5102 74 72              3295 	mov	a,#0x72
   5104 F0                 3296 	movx	@dptr,a
                           3297 ;	genPointerSet
                           3298 ;     genFarPointerSet
   5105 90 08 3E           3299 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000e)
   5108 74 65              3300 	mov	a,#0x65
   510A F0                 3301 	movx	@dptr,a
                           3302 ;	genPointerSet
                           3303 ;     genFarPointerSet
   510B 90 08 3F           3304 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000f)
   510E 74 47              3305 	mov	a,#0x47
   5110 F0                 3306 	movx	@dptr,a
                           3307 ;	genPointerSet
                           3308 ;     genFarPointerSet
   5111 90 08 40           3309 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0010)
   5114 74 50              3310 	mov	a,#0x50
   5116 F0                 3311 	movx	@dptr,a
                           3312 ;	genPointerSet
                           3313 ;     genFarPointerSet
   5117 90 08 41           3314 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0011)
   511A 74 49              3315 	mov	a,#0x49
   511C F0                 3316 	movx	@dptr,a
                           3317 ;	genPointerSet
                           3318 ;     genFarPointerSet
   511D 90 08 42           3319 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0012)
   5120 74 4F              3320 	mov	a,#0x4F
   5122 F0                 3321 	movx	@dptr,a
                           3322 ;	genPointerSet
                           3323 ;     genFarPointerSet
   5123 90 08 43           3324 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0013)
   5126 74 2F              3325 	mov	a,#0x2F
   5128 F0                 3326 	movx	@dptr,a
                           3327 ;	genPointerSet
                           3328 ;     genFarPointerSet
   5129 90 08 44           3329 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0014)
   512C 74 63              3330 	mov	a,#0x63
   512E F0                 3331 	movx	@dptr,a
                           3332 ;	genPointerSet
                           3333 ;     genFarPointerSet
   512F 90 08 45           3334 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0015)
   5132 74 6F              3335 	mov	a,#0x6F
   5134 F0                 3336 	movx	@dptr,a
                           3337 ;	genPointerSet
                           3338 ;     genFarPointerSet
   5135 90 08 46           3339 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0016)
   5138 74 72              3340 	mov	a,#0x72
   513A F0                 3341 	movx	@dptr,a
                           3342 ;	genPointerSet
                           3343 ;     genFarPointerSet
   513B 90 08 47           3344 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0017)
   513E 74 65              3345 	mov	a,#0x65
   5140 F0                 3346 	movx	@dptr,a
                           3347 ;	genPointerSet
                           3348 ;     genFarPointerSet
   5141 90 08 48           3349 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0018)
   5144 74 5F              3350 	mov	a,#0x5F
   5146 F0                 3351 	movx	@dptr,a
                           3352 ;	genPointerSet
                           3353 ;     genFarPointerSet
   5147 90 08 49           3354 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0019)
   514A 74 67              3355 	mov	a,#0x67
   514C F0                 3356 	movx	@dptr,a
                           3357 ;	genPointerSet
                           3358 ;     genFarPointerSet
   514D 90 08 4A           3359 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001a)
   5150 74 70              3360 	mov	a,#0x70
   5152 F0                 3361 	movx	@dptr,a
                           3362 ;	genPointerSet
                           3363 ;     genFarPointerSet
   5153 90 08 4B           3364 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001b)
   5156 74 69              3365 	mov	a,#0x69
   5158 F0                 3366 	movx	@dptr,a
                           3367 ;	genPointerSet
                           3368 ;     genFarPointerSet
   5159 90 08 4C           3369 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001c)
   515C 74 6F              3370 	mov	a,#0x6F
   515E F0                 3371 	movx	@dptr,a
                           3372 ;	genPointerSet
                           3373 ;     genFarPointerSet
   515F 90 08 4D           3374 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001d)
   5162 74 2E              3375 	mov	a,#0x2E
   5164 F0                 3376 	movx	@dptr,a
                           3377 ;	genPointerSet
                           3378 ;     genFarPointerSet
   5165 90 08 4E           3379 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001e)
   5168 74 63              3380 	mov	a,#0x63
   516A F0                 3381 	movx	@dptr,a
                           3382 ;	genPointerSet
                           3383 ;     genFarPointerSet
   516B 90 08 4F           3384 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001f)
   516E 74 00              3385 	mov	a,#0x00
   5170 F0                 3386 	movx	@dptr,a
                           3387 ;	genAssign
   5171 90 00 8C           3388 	mov	dptr,#_HAL_assert_fail_PARM_2
   5174 74 E9              3389 	mov	a,#0xE9
   5176 F0                 3390 	movx	@dptr,a
   5177 E4                 3391 	clr	a
   5178 A3                 3392 	inc	dptr
   5179 F0                 3393 	movx	@dptr,a
   517A A3                 3394 	inc	dptr
   517B F0                 3395 	movx	@dptr,a
   517C A3                 3396 	inc	dptr
   517D F0                 3397 	movx	@dptr,a
                           3398 ;	genCall
   517E 75 82 30           3399 	mov	dpl,#_GPIO_set_output_file_name_3_3
   5181 75 83 08           3400 	mov	dph,#(_GPIO_set_output_file_name_3_3 >> 8)
   5184 75 F0 00           3401 	mov	b,#0x00
   5187 C0 02              3402 	push	ar2
   5189 12 05 F6           3403 	lcall	_HAL_assert_fail
   518C D0 02              3404 	pop	ar2
   518E                    3405 00104$:
                    0EAD   3406 	C$core_gpio.c$236$1$1 ==.
                           3407 ;	../drivers/CoreGPIO/core_gpio.c:236: switch( this_gpio->apb_bus_width )
                           3408 ;	genAssign
   518E 90 08 2D           3409 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   5191 E0                 3410 	movx	a,@dptr
   5192 FB                 3411 	mov	r3,a
   5193 A3                 3412 	inc	dptr
   5194 E0                 3413 	movx	a,@dptr
   5195 FC                 3414 	mov	r4,a
   5196 A3                 3415 	inc	dptr
   5197 E0                 3416 	movx	a,@dptr
   5198 FD                 3417 	mov	r5,a
                           3418 ;	genPlus
                           3419 ;	genPlusIncr
   5199 74 02              3420 	mov	a,#0x02
   519B 25 03              3421 	add	a,ar3
   519D FE                 3422 	mov	r6,a
   519E 74 00              3423 	mov	a,#0x00
   51A0 35 04              3424 	addc	a,ar4
   51A2 FF                 3425 	mov	r7,a
   51A3 8D 00              3426 	mov	ar0,r5
                           3427 ;	genPointerGet
                           3428 ;	genGenPointerGet
   51A5 8E 82              3429 	mov	dpl,r6
   51A7 8F 83              3430 	mov	dph,r7
   51A9 88 F0              3431 	mov	b,r0
   51AB 12 61 48           3432 	lcall	__gptrget
   51AE FE                 3433 	mov	r6,a
                           3434 ;	genCmpEq
                           3435 ;	gencjneshort
   51AF BE 00 03           3436 	cjne	r6,#0x00,00154$
   51B2 02 55 C6           3437 	ljmp	00124$
   51B5                    3438 00154$:
                           3439 ;	genCmpEq
                           3440 ;	gencjneshort
   51B5 BE 01 03           3441 	cjne	r6,#0x01,00155$
   51B8 02 53 E7           3442 	ljmp	00115$
   51BB                    3443 00155$:
                           3444 ;	genCmpEq
                           3445 ;	gencjneshort
   51BB BE 02 02           3446 	cjne	r6,#0x02,00156$
   51BE 80 03              3447 	sjmp	00157$
   51C0                    3448 00156$:
   51C0 02 57 5E           3449 	ljmp	00136$
   51C3                    3450 00157$:
                    0EE2   3451 	C$core_gpio.c$242$1$1 ==.
                           3452 ;	../drivers/CoreGPIO/core_gpio.c:242: outputs_state = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT );
                           3453 ;	genIpush
   51C3 C0 02              3454 	push	ar2
                           3455 ;	genPointerGet
                           3456 ;	genGenPointerGet
   51C5 8B 82              3457 	mov	dpl,r3
   51C7 8C 83              3458 	mov	dph,r4
   51C9 8D F0              3459 	mov	b,r5
   51CB 12 61 48           3460 	lcall	__gptrget
   51CE FE                 3461 	mov	r6,a
   51CF A3                 3462 	inc	dptr
   51D0 12 61 48           3463 	lcall	__gptrget
   51D3 FF                 3464 	mov	r7,a
                           3465 ;	genPlus
                           3466 ;	genPlusIncr
   51D4 74 A0              3467 	mov	a,#0xA0
   51D6 25 06              3468 	add	a,ar6
   51D8 FE                 3469 	mov	r6,a
   51D9 74 00              3470 	mov	a,#0x00
   51DB 35 07              3471 	addc	a,ar7
   51DD FF                 3472 	mov	r7,a
                           3473 ;	genCall
   51DE 8E 82              3474 	mov	dpl,r6
   51E0 8F 83              3475 	mov	dph,r7
   51E2 C0 02              3476 	push	ar2
   51E4 12 06 56           3477 	lcall	_HW_get_32bit_reg
   51E7 85 82 51           3478 	mov	_GPIO_set_output_sloc0_1_0,dpl
   51EA 85 83 52           3479 	mov	(_GPIO_set_output_sloc0_1_0 + 1),dph
   51ED 85 F0 53           3480 	mov	(_GPIO_set_output_sloc0_1_0 + 2),b
   51F0 F5 54              3481 	mov	(_GPIO_set_output_sloc0_1_0 + 3),a
   51F2 D0 02              3482 	pop	ar2
                    0F13   3483 	C$core_gpio.c$243$3$5 ==.
                           3484 ;	../drivers/CoreGPIO/core_gpio.c:243: if ( 0 == value )
                           3485 ;	genAssign
   51F4 90 08 2C           3486 	mov	dptr,#_GPIO_set_output_PARM_3
   51F7 E0                 3487 	movx	a,@dptr
   51F8 FA                 3488 	mov	r2,a
                           3489 ;	genCmpEq
                           3490 ;	gencjne
                           3491 ;	gencjneshort
   51F9 BA 00 04           3492 	cjne	r2,#0x00,00158$
   51FC 74 01              3493 	mov	a,#0x01
   51FE 80 01              3494 	sjmp	00159$
   5200                    3495 00158$:
   5200 E4                 3496 	clr	a
   5201                    3497 00159$:
                           3498 ;	genIpop
   5201 D0 02              3499 	pop	ar2
                           3500 ;	genIfx
                           3501 ;	genIfxJump
   5203 70 03              3502 	jnz	00160$
   5205 02 52 41           3503 	ljmp	00108$
   5208                    3504 00160$:
                    0F27   3505 	C$core_gpio.c$245$4$6 ==.
                           3506 ;	../drivers/CoreGPIO/core_gpio.c:245: outputs_state &= ~(1 << port_id);
                           3507 ;	genLeftShift
   5208 8A F0              3508 	mov	b,r2
   520A 05 F0              3509 	inc	b
   520C 7E 01              3510 	mov	r6,#0x01
   520E 7F 00              3511 	mov	r7,#0x00
   5210 80 07              3512 	sjmp	00162$
   5212                    3513 00161$:
   5212 EE                 3514 	mov	a,r6
   5213 25 E0              3515 	add	a,acc
   5215 FE                 3516 	mov	r6,a
   5216 EF                 3517 	mov	a,r7
   5217 33                 3518 	rlc	a
   5218 FF                 3519 	mov	r7,a
   5219                    3520 00162$:
   5219 D5 F0 F6           3521 	djnz	b,00161$
                           3522 ;	genCpl
   521C EE                 3523 	mov	a,r6
   521D F4                 3524 	cpl	a
   521E FE                 3525 	mov	r6,a
   521F EF                 3526 	mov	a,r7
   5220 F4                 3527 	cpl	a
   5221 FF                 3528 	mov	r7,a
                           3529 ;	genCast
   5222 EF                 3530 	mov	a,r7
   5223 33                 3531 	rlc	a
   5224 95 E0              3532 	subb	a,acc
   5226 F8                 3533 	mov	r0,a
   5227 F9                 3534 	mov	r1,a
                           3535 ;	genAnd
   5228 90 08 50           3536 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   522B EE                 3537 	mov	a,r6
   522C 55 51              3538 	anl	a,_GPIO_set_output_sloc0_1_0
   522E F0                 3539 	movx	@dptr,a
   522F EF                 3540 	mov	a,r7
   5230 55 52              3541 	anl	a,(_GPIO_set_output_sloc0_1_0 + 1)
   5232 A3                 3542 	inc	dptr
   5233 F0                 3543 	movx	@dptr,a
   5234 E8                 3544 	mov	a,r0
   5235 55 53              3545 	anl	a,(_GPIO_set_output_sloc0_1_0 + 2)
   5237 A3                 3546 	inc	dptr
   5238 F0                 3547 	movx	@dptr,a
   5239 E9                 3548 	mov	a,r1
   523A 55 54              3549 	anl	a,(_GPIO_set_output_sloc0_1_0 + 3)
   523C A3                 3550 	inc	dptr
   523D F0                 3551 	movx	@dptr,a
   523E 02 52 71           3552 	ljmp	00109$
   5241                    3553 00108$:
                    0F60   3554 	C$core_gpio.c$249$4$7 ==.
                           3555 ;	../drivers/CoreGPIO/core_gpio.c:249: outputs_state |= 1 << port_id;
                           3556 ;	genLeftShift
   5241 8A F0              3557 	mov	b,r2
   5243 05 F0              3558 	inc	b
   5245 7E 01              3559 	mov	r6,#0x01
   5247 7F 00              3560 	mov	r7,#0x00
   5249 80 07              3561 	sjmp	00164$
   524B                    3562 00163$:
   524B EE                 3563 	mov	a,r6
   524C 25 E0              3564 	add	a,acc
   524E FE                 3565 	mov	r6,a
   524F EF                 3566 	mov	a,r7
   5250 33                 3567 	rlc	a
   5251 FF                 3568 	mov	r7,a
   5252                    3569 00164$:
   5252 D5 F0 F6           3570 	djnz	b,00163$
                           3571 ;	genCast
   5255 EF                 3572 	mov	a,r7
   5256 33                 3573 	rlc	a
   5257 95 E0              3574 	subb	a,acc
   5259 F8                 3575 	mov	r0,a
   525A F9                 3576 	mov	r1,a
                           3577 ;	genOr
   525B 90 08 50           3578 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   525E EE                 3579 	mov	a,r6
   525F 45 51              3580 	orl	a,_GPIO_set_output_sloc0_1_0
   5261 F0                 3581 	movx	@dptr,a
   5262 EF                 3582 	mov	a,r7
   5263 45 52              3583 	orl	a,(_GPIO_set_output_sloc0_1_0 + 1)
   5265 A3                 3584 	inc	dptr
   5266 F0                 3585 	movx	@dptr,a
   5267 E8                 3586 	mov	a,r0
   5268 45 53              3587 	orl	a,(_GPIO_set_output_sloc0_1_0 + 2)
   526A A3                 3588 	inc	dptr
   526B F0                 3589 	movx	@dptr,a
   526C E9                 3590 	mov	a,r1
   526D 45 54              3591 	orl	a,(_GPIO_set_output_sloc0_1_0 + 3)
   526F A3                 3592 	inc	dptr
   5270 F0                 3593 	movx	@dptr,a
   5271                    3594 00109$:
                    0F90   3595 	C$core_gpio.c$251$3$5 ==.
                           3596 ;	../drivers/CoreGPIO/core_gpio.c:251: HAL_set_32bit_reg( this_gpio->base_addr, GPIO_OUT, outputs_state );
                           3597 ;	genAssign
   5271 90 08 2D           3598 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   5274 E0                 3599 	movx	a,@dptr
   5275 FA                 3600 	mov	r2,a
   5276 A3                 3601 	inc	dptr
   5277 E0                 3602 	movx	a,@dptr
   5278 FB                 3603 	mov	r3,a
   5279 A3                 3604 	inc	dptr
   527A E0                 3605 	movx	a,@dptr
   527B FC                 3606 	mov	r4,a
                           3607 ;	genPointerGet
                           3608 ;	genGenPointerGet
   527C 8A 82              3609 	mov	dpl,r2
   527E 8B 83              3610 	mov	dph,r3
   5280 8C F0              3611 	mov	b,r4
   5282 12 61 48           3612 	lcall	__gptrget
   5285 F9                 3613 	mov	r1,a
   5286 A3                 3614 	inc	dptr
   5287 12 61 48           3615 	lcall	__gptrget
   528A FE                 3616 	mov	r6,a
                           3617 ;	genPlus
                           3618 ;	genPlusIncr
   528B 74 A0              3619 	mov	a,#0xA0
   528D 25 01              3620 	add	a,ar1
   528F FD                 3621 	mov	r5,a
   5290 74 00              3622 	mov	a,#0x00
   5292 35 06              3623 	addc	a,ar6
   5294 FE                 3624 	mov	r6,a
                           3625 ;	genAssign
   5295 90 08 50           3626 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   5298 E0                 3627 	movx	a,@dptr
   5299 F5 55              3628 	mov	_GPIO_set_output_sloc2_1_0,a
   529B A3                 3629 	inc	dptr
   529C E0                 3630 	movx	a,@dptr
   529D F5 56              3631 	mov	(_GPIO_set_output_sloc2_1_0 + 1),a
   529F A3                 3632 	inc	dptr
   52A0 E0                 3633 	movx	a,@dptr
   52A1 F5 57              3634 	mov	(_GPIO_set_output_sloc2_1_0 + 2),a
   52A3 A3                 3635 	inc	dptr
   52A4 E0                 3636 	movx	a,@dptr
   52A5 F5 58              3637 	mov	(_GPIO_set_output_sloc2_1_0 + 3),a
                           3638 ;	genAssign
   52A7 90 00 AA           3639 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   52AA E5 55              3640 	mov	a,_GPIO_set_output_sloc2_1_0
   52AC F0                 3641 	movx	@dptr,a
   52AD A3                 3642 	inc	dptr
   52AE E5 56              3643 	mov	a,(_GPIO_set_output_sloc2_1_0 + 1)
   52B0 F0                 3644 	movx	@dptr,a
   52B1 A3                 3645 	inc	dptr
   52B2 E5 57              3646 	mov	a,(_GPIO_set_output_sloc2_1_0 + 2)
   52B4 F0                 3647 	movx	@dptr,a
   52B5 A3                 3648 	inc	dptr
   52B6 E5 58              3649 	mov	a,(_GPIO_set_output_sloc2_1_0 + 3)
   52B8 F0                 3650 	movx	@dptr,a
                           3651 ;	genCall
   52B9 8D 82              3652 	mov	dpl,r5
   52BB 8E 83              3653 	mov	dph,r6
   52BD C0 02              3654 	push	ar2
   52BF C0 03              3655 	push	ar3
   52C1 C0 04              3656 	push	ar4
   52C3 12 06 62           3657 	lcall	_HW_set_32bit_reg
   52C6 D0 04              3658 	pop	ar4
   52C8 D0 03              3659 	pop	ar3
   52CA D0 02              3660 	pop	ar2
                    0FEB   3661 	C$core_gpio.c$260$4$8 ==.
                           3662 ;	../drivers/CoreGPIO/core_gpio.c:260: HAL_ASSERT( HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT ) == outputs_state );
                           3663 ;	genPointerGet
                           3664 ;	genGenPointerGet
   52CC 8A 82              3665 	mov	dpl,r2
   52CE 8B 83              3666 	mov	dph,r3
   52D0 8C F0              3667 	mov	b,r4
   52D2 12 61 48           3668 	lcall	__gptrget
   52D5 FE                 3669 	mov	r6,a
   52D6 A3                 3670 	inc	dptr
   52D7 12 61 48           3671 	lcall	__gptrget
   52DA FF                 3672 	mov	r7,a
                           3673 ;	genPlus
                           3674 ;	genPlusIncr
   52DB 74 A0              3675 	mov	a,#0xA0
   52DD 25 06              3676 	add	a,ar6
   52DF FE                 3677 	mov	r6,a
   52E0 74 00              3678 	mov	a,#0x00
   52E2 35 07              3679 	addc	a,ar7
   52E4 FF                 3680 	mov	r7,a
                           3681 ;	genCall
   52E5 8E 82              3682 	mov	dpl,r6
   52E7 8F 83              3683 	mov	dph,r7
   52E9 12 06 56           3684 	lcall	_HW_get_32bit_reg
   52EC AE 82              3685 	mov	r6,dpl
   52EE AF 83              3686 	mov	r7,dph
   52F0 A8 F0              3687 	mov	r0,b
   52F2 F9                 3688 	mov	r1,a
                           3689 ;	genCmpEq
                           3690 ;	gencjneshort
   52F3 EE                 3691 	mov	a,r6
   52F4 B5 55 0F           3692 	cjne	a,_GPIO_set_output_sloc2_1_0,00165$
   52F7 EF                 3693 	mov	a,r7
   52F8 B5 56 0B           3694 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 1),00165$
   52FB E8                 3695 	mov	a,r0
   52FC B5 57 07           3696 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 2),00165$
   52FF E9                 3697 	mov	a,r1
   5300 B5 58 03           3698 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 3),00165$
   5303 02 58 3C           3699 	ljmp	00140$
   5306                    3700 00165$:
                           3701 ;	genPointerSet
                           3702 ;     genFarPointerSet
   5306 90 08 54           3703 	mov	dptr,#_GPIO_set_output_file_name_5_9
   5309 74 2E              3704 	mov	a,#0x2E
   530B F0                 3705 	movx	@dptr,a
                           3706 ;	genPointerSet
                           3707 ;     genFarPointerSet
   530C 90 08 55           3708 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0001)
   530F 74 2E              3709 	mov	a,#0x2E
   5311 F0                 3710 	movx	@dptr,a
                           3711 ;	genPointerSet
                           3712 ;     genFarPointerSet
   5312 90 08 56           3713 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0002)
   5315 74 2F              3714 	mov	a,#0x2F
   5317 F0                 3715 	movx	@dptr,a
                           3716 ;	genPointerSet
                           3717 ;     genFarPointerSet
   5318 90 08 57           3718 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0003)
   531B 74 64              3719 	mov	a,#0x64
   531D F0                 3720 	movx	@dptr,a
                           3721 ;	genPointerSet
                           3722 ;     genFarPointerSet
   531E 90 08 58           3723 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0004)
   5321 74 72              3724 	mov	a,#0x72
   5323 F0                 3725 	movx	@dptr,a
                           3726 ;	genPointerSet
                           3727 ;     genFarPointerSet
   5324 90 08 59           3728 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0005)
   5327 74 69              3729 	mov	a,#0x69
   5329 F0                 3730 	movx	@dptr,a
                           3731 ;	genPointerSet
                           3732 ;     genFarPointerSet
   532A 90 08 5A           3733 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0006)
   532D 74 76              3734 	mov	a,#0x76
   532F F0                 3735 	movx	@dptr,a
                           3736 ;	genPointerSet
                           3737 ;     genFarPointerSet
   5330 90 08 5B           3738 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0007)
   5333 74 65              3739 	mov	a,#0x65
   5335 F0                 3740 	movx	@dptr,a
                           3741 ;	genPointerSet
                           3742 ;     genFarPointerSet
   5336 90 08 5C           3743 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0008)
   5339 74 72              3744 	mov	a,#0x72
   533B F0                 3745 	movx	@dptr,a
                           3746 ;	genPointerSet
                           3747 ;     genFarPointerSet
   533C 90 08 5D           3748 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0009)
   533F 74 73              3749 	mov	a,#0x73
   5341 F0                 3750 	movx	@dptr,a
                           3751 ;	genPointerSet
                           3752 ;     genFarPointerSet
   5342 90 08 5E           3753 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000a)
   5345 74 2F              3754 	mov	a,#0x2F
   5347 F0                 3755 	movx	@dptr,a
                           3756 ;	genPointerSet
                           3757 ;     genFarPointerSet
   5348 90 08 5F           3758 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000b)
   534B 74 43              3759 	mov	a,#0x43
   534D F0                 3760 	movx	@dptr,a
                           3761 ;	genPointerSet
                           3762 ;     genFarPointerSet
   534E 90 08 60           3763 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000c)
   5351 74 6F              3764 	mov	a,#0x6F
   5353 F0                 3765 	movx	@dptr,a
                           3766 ;	genPointerSet
                           3767 ;     genFarPointerSet
   5354 90 08 61           3768 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000d)
   5357 74 72              3769 	mov	a,#0x72
   5359 F0                 3770 	movx	@dptr,a
                           3771 ;	genPointerSet
                           3772 ;     genFarPointerSet
   535A 90 08 62           3773 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000e)
   535D 74 65              3774 	mov	a,#0x65
   535F F0                 3775 	movx	@dptr,a
                           3776 ;	genPointerSet
                           3777 ;     genFarPointerSet
   5360 90 08 63           3778 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000f)
   5363 74 47              3779 	mov	a,#0x47
   5365 F0                 3780 	movx	@dptr,a
                           3781 ;	genPointerSet
                           3782 ;     genFarPointerSet
   5366 90 08 64           3783 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0010)
   5369 74 50              3784 	mov	a,#0x50
   536B F0                 3785 	movx	@dptr,a
                           3786 ;	genPointerSet
                           3787 ;     genFarPointerSet
   536C 90 08 65           3788 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0011)
   536F 74 49              3789 	mov	a,#0x49
   5371 F0                 3790 	movx	@dptr,a
                           3791 ;	genPointerSet
                           3792 ;     genFarPointerSet
   5372 90 08 66           3793 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0012)
   5375 74 4F              3794 	mov	a,#0x4F
   5377 F0                 3795 	movx	@dptr,a
                           3796 ;	genPointerSet
                           3797 ;     genFarPointerSet
   5378 90 08 67           3798 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0013)
   537B 74 2F              3799 	mov	a,#0x2F
   537D F0                 3800 	movx	@dptr,a
                           3801 ;	genPointerSet
                           3802 ;     genFarPointerSet
   537E 90 08 68           3803 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0014)
   5381 74 63              3804 	mov	a,#0x63
   5383 F0                 3805 	movx	@dptr,a
                           3806 ;	genPointerSet
                           3807 ;     genFarPointerSet
   5384 90 08 69           3808 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0015)
   5387 74 6F              3809 	mov	a,#0x6F
   5389 F0                 3810 	movx	@dptr,a
                           3811 ;	genPointerSet
                           3812 ;     genFarPointerSet
   538A 90 08 6A           3813 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0016)
   538D 74 72              3814 	mov	a,#0x72
   538F F0                 3815 	movx	@dptr,a
                           3816 ;	genPointerSet
                           3817 ;     genFarPointerSet
   5390 90 08 6B           3818 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0017)
   5393 74 65              3819 	mov	a,#0x65
   5395 F0                 3820 	movx	@dptr,a
                           3821 ;	genPointerSet
                           3822 ;     genFarPointerSet
   5396 90 08 6C           3823 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0018)
   5399 74 5F              3824 	mov	a,#0x5F
   539B F0                 3825 	movx	@dptr,a
                           3826 ;	genPointerSet
                           3827 ;     genFarPointerSet
   539C 90 08 6D           3828 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0019)
   539F 74 67              3829 	mov	a,#0x67
   53A1 F0                 3830 	movx	@dptr,a
                           3831 ;	genPointerSet
                           3832 ;     genFarPointerSet
   53A2 90 08 6E           3833 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001a)
   53A5 74 70              3834 	mov	a,#0x70
   53A7 F0                 3835 	movx	@dptr,a
                           3836 ;	genPointerSet
                           3837 ;     genFarPointerSet
   53A8 90 08 6F           3838 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001b)
   53AB 74 69              3839 	mov	a,#0x69
   53AD F0                 3840 	movx	@dptr,a
                           3841 ;	genPointerSet
                           3842 ;     genFarPointerSet
   53AE 90 08 70           3843 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001c)
   53B1 74 6F              3844 	mov	a,#0x6F
   53B3 F0                 3845 	movx	@dptr,a
                           3846 ;	genPointerSet
                           3847 ;     genFarPointerSet
   53B4 90 08 71           3848 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001d)
   53B7 74 2E              3849 	mov	a,#0x2E
   53B9 F0                 3850 	movx	@dptr,a
                           3851 ;	genPointerSet
                           3852 ;     genFarPointerSet
   53BA 90 08 72           3853 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001e)
   53BD 74 63              3854 	mov	a,#0x63
   53BF F0                 3855 	movx	@dptr,a
                           3856 ;	genPointerSet
                           3857 ;     genFarPointerSet
   53C0 90 08 73           3858 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001f)
   53C3 74 00              3859 	mov	a,#0x00
   53C5 F0                 3860 	movx	@dptr,a
                           3861 ;	genAssign
   53C6 90 00 8C           3862 	mov	dptr,#_HAL_assert_fail_PARM_2
   53C9 74 04              3863 	mov	a,#0x04
   53CB F0                 3864 	movx	@dptr,a
   53CC A3                 3865 	inc	dptr
   53CD 74 01              3866 	mov	a,#0x01
   53CF F0                 3867 	movx	@dptr,a
   53D0 A3                 3868 	inc	dptr
   53D1 74 00              3869 	mov	a,#0x00
   53D3 F0                 3870 	movx	@dptr,a
   53D4 A3                 3871 	inc	dptr
   53D5 74 00              3872 	mov	a,#0x00
   53D7 F0                 3873 	movx	@dptr,a
                           3874 ;	genCall
   53D8 75 82 54           3875 	mov	dpl,#_GPIO_set_output_file_name_5_9
   53DB 75 83 08           3876 	mov	dph,#(_GPIO_set_output_file_name_5_9 >> 8)
   53DE 75 F0 00           3877 	mov	b,#0x00
   53E1 12 05 F6           3878 	lcall	_HAL_assert_fail
                    1103   3879 	C$core_gpio.c$262$2$4 ==.
                           3880 ;	../drivers/CoreGPIO/core_gpio.c:262: break;
   53E4 02 58 3C           3881 	ljmp	00140$
                    1106   3882 	C$core_gpio.c$264$2$4 ==.
                           3883 ;	../drivers/CoreGPIO/core_gpio.c:264: case GPIO_APB_16_BITS_BUS:
   53E7                    3884 00115$:
                    1106   3885 	C$core_gpio.c$267$3$10 ==.
                           3886 ;	../drivers/CoreGPIO/core_gpio.c:267: uint32_t gpio_out_reg_addr = this_gpio->base_addr + GPIO_OUT_REG_OFFSET + ((port_id >> 4) * 4);
                           3887 ;	genPointerGet
                           3888 ;	genGenPointerGet
   53E7 8B 82              3889 	mov	dpl,r3
   53E9 8C 83              3890 	mov	dph,r4
   53EB 8D F0              3891 	mov	b,r5
   53ED 12 61 48           3892 	lcall	__gptrget
   53F0 FE                 3893 	mov	r6,a
   53F1 A3                 3894 	inc	dptr
   53F2 12 61 48           3895 	lcall	__gptrget
   53F5 FF                 3896 	mov	r7,a
                           3897 ;	genPlus
                           3898 ;	genPlusIncr
   53F6 74 A0              3899 	mov	a,#0xA0
   53F8 25 06              3900 	add	a,ar6
   53FA FE                 3901 	mov	r6,a
   53FB 74 00              3902 	mov	a,#0x00
   53FD 35 07              3903 	addc	a,ar7
   53FF FF                 3904 	mov	r7,a
                           3905 ;	genRightShift
                           3906 ;	genRightShiftLiteral
                           3907 ;	genrshOne
   5400 EA                 3908 	mov	a,r2
   5401 C4                 3909 	swap	a
   5402 54 0F              3910 	anl	a,#0x0f
   5404 F8                 3911 	mov	r0,a
                           3912 ;	genMult
                           3913 ;	genMultOneByte
   5405 E8                 3914 	mov	a,r0
   5406 75 F0 04           3915 	mov	b,#0x04
   5409 A4                 3916 	mul	ab
                           3917 ;	genPlus
   540A 25 06              3918 	add	a,ar6
   540C FE                 3919 	mov	r6,a
   540D E5 07              3920 	mov	a,ar7
   540F 35 F0              3921 	addc	a,b
   5411 FF                 3922 	mov	r7,a
                           3923 ;	genCast
   5412 78 00              3924 	mov	r0,#0x00
   5414 79 00              3925 	mov	r1,#0x00
                    1135   3926 	C$core_gpio.c$269$3$10 ==.
                           3927 ;	../drivers/CoreGPIO/core_gpio.c:269: outputs_state = HW_get_16bit_reg( gpio_out_reg_addr );
                           3928 ;	genCast
                           3929 ;	genCall
   5416 8E 82              3930 	mov	dpl,r6
   5418 8F 83              3931 	mov	dph,r7
   541A C0 02              3932 	push	ar2
   541C C0 06              3933 	push	ar6
   541E C0 07              3934 	push	ar7
   5420 12 06 92           3935 	lcall	_HW_get_16bit_reg
   5423 A8 82              3936 	mov	r0,dpl
   5425 A9 83              3937 	mov	r1,dph
   5427 D0 07              3938 	pop	ar7
   5429 D0 06              3939 	pop	ar6
   542B D0 02              3940 	pop	ar2
                    114C   3941 	C$core_gpio.c$270$1$1 ==.
                           3942 ;	../drivers/CoreGPIO/core_gpio.c:270: if ( 0 == value )
                           3943 ;	genIpush
   542D C0 02              3944 	push	ar2
                           3945 ;	genAssign
   542F 90 08 2C           3946 	mov	dptr,#_GPIO_set_output_PARM_3
   5432 E0                 3947 	movx	a,@dptr
   5433 FA                 3948 	mov	r2,a
                           3949 ;	genCmpEq
                           3950 ;	gencjne
                           3951 ;	gencjneshort
   5434 BA 00 04           3952 	cjne	r2,#0x00,00166$
   5437 74 01              3953 	mov	a,#0x01
   5439 80 01              3954 	sjmp	00167$
   543B                    3955 00166$:
   543B E4                 3956 	clr	a
   543C                    3957 00167$:
                           3958 ;	genIpop
   543C D0 02              3959 	pop	ar2
                           3960 ;	genIfx
                           3961 ;	genIfxJump
   543E 70 03              3962 	jnz	00168$
   5440 02 54 76           3963 	ljmp	00117$
   5443                    3964 00168$:
                    1162   3965 	C$core_gpio.c$272$1$1 ==.
                           3966 ;	../drivers/CoreGPIO/core_gpio.c:272: outputs_state &= ~(1 << (port_id & 0x0F));
                           3967 ;	genIpush
   5443 C0 06              3968 	push	ar6
   5445 C0 07              3969 	push	ar7
                           3970 ;	genAnd
   5447 74 0F              3971 	mov	a,#0x0F
   5449 5A                 3972 	anl	a,r2
   544A FE                 3973 	mov	r6,a
                           3974 ;	genLeftShift
   544B 8E F0              3975 	mov	b,r6
   544D 05 F0              3976 	inc	b
   544F 7E 01              3977 	mov	r6,#0x01
   5451 7F 00              3978 	mov	r7,#0x00
   5453 80 07              3979 	sjmp	00170$
   5455                    3980 00169$:
   5455 EE                 3981 	mov	a,r6
   5456 25 E0              3982 	add	a,acc
   5458 FE                 3983 	mov	r6,a
   5459 EF                 3984 	mov	a,r7
   545A 33                 3985 	rlc	a
   545B FF                 3986 	mov	r7,a
   545C                    3987 00170$:
   545C D5 F0 F6           3988 	djnz	b,00169$
                           3989 ;	genCpl
   545F EE                 3990 	mov	a,r6
   5460 F4                 3991 	cpl	a
   5461 FE                 3992 	mov	r6,a
   5462 EF                 3993 	mov	a,r7
   5463 F4                 3994 	cpl	a
   5464 FF                 3995 	mov	r7,a
                           3996 ;	genAnd
   5465 90 08 74           3997 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   5468 EE                 3998 	mov	a,r6
   5469 58                 3999 	anl	a,r0
   546A F0                 4000 	movx	@dptr,a
   546B EF                 4001 	mov	a,r7
   546C 59                 4002 	anl	a,r1
   546D A3                 4003 	inc	dptr
   546E F0                 4004 	movx	@dptr,a
                           4005 ;	genIpop
   546F D0 07              4006 	pop	ar7
   5471 D0 06              4007 	pop	ar6
   5473 02 54 A0           4008 	ljmp	00118$
   5476                    4009 00117$:
                    1195   4010 	C$core_gpio.c$276$1$1 ==.
                           4011 ;	../drivers/CoreGPIO/core_gpio.c:276: outputs_state |= 1 << (port_id & 0x0F);
                           4012 ;	genIpush
   5476 C0 06              4013 	push	ar6
   5478 C0 07              4014 	push	ar7
                           4015 ;	genAnd
   547A 74 0F              4016 	mov	a,#0x0F
   547C 5A                 4017 	anl	a,r2
   547D FE                 4018 	mov	r6,a
                           4019 ;	genLeftShift
   547E 8E F0              4020 	mov	b,r6
   5480 05 F0              4021 	inc	b
   5482 7E 01              4022 	mov	r6,#0x01
   5484 7F 00              4023 	mov	r7,#0x00
   5486 80 07              4024 	sjmp	00172$
   5488                    4025 00171$:
   5488 EE                 4026 	mov	a,r6
   5489 25 E0              4027 	add	a,acc
   548B FE                 4028 	mov	r6,a
   548C EF                 4029 	mov	a,r7
   548D 33                 4030 	rlc	a
   548E FF                 4031 	mov	r7,a
   548F                    4032 00172$:
   548F D5 F0 F6           4033 	djnz	b,00171$
                           4034 ;	genOr
   5492 90 08 74           4035 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   5495 EE                 4036 	mov	a,r6
   5496 48                 4037 	orl	a,r0
   5497 F0                 4038 	movx	@dptr,a
   5498 EF                 4039 	mov	a,r7
   5499 49                 4040 	orl	a,r1
   549A A3                 4041 	inc	dptr
   549B F0                 4042 	movx	@dptr,a
                    11BB   4043 	C$core_gpio.c$321$1$1 ==.
                           4044 ;	../drivers/CoreGPIO/core_gpio.c:321: }
                           4045 ;	genIpop
   549C D0 07              4046 	pop	ar7
   549E D0 06              4047 	pop	ar6
                    11BF   4048 	C$core_gpio.c$276$3$10 ==.
                           4049 ;	../drivers/CoreGPIO/core_gpio.c:276: outputs_state |= 1 << (port_id & 0x0F);
   54A0                    4050 00118$:
                    11BF   4051 	C$core_gpio.c$278$3$10 ==.
                           4052 ;	../drivers/CoreGPIO/core_gpio.c:278: HW_set_16bit_reg( gpio_out_reg_addr, outputs_state );
                           4053 ;	genAssign
   54A0 90 08 74           4054 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   54A3 E0                 4055 	movx	a,@dptr
   54A4 F8                 4056 	mov	r0,a
   54A5 A3                 4057 	inc	dptr
   54A6 E0                 4058 	movx	a,@dptr
   54A7 F9                 4059 	mov	r1,a
                           4060 ;	genAssign
   54A8 90 00 A7           4061 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   54AB E8                 4062 	mov	a,r0
   54AC F0                 4063 	movx	@dptr,a
   54AD A3                 4064 	inc	dptr
   54AE E9                 4065 	mov	a,r1
   54AF F0                 4066 	movx	@dptr,a
                           4067 ;	genCall
   54B0 8E 82              4068 	mov	dpl,r6
   54B2 8F 83              4069 	mov	dph,r7
   54B4 C0 06              4070 	push	ar6
   54B6 C0 07              4071 	push	ar7
   54B8 C0 00              4072 	push	ar0
   54BA C0 01              4073 	push	ar1
   54BC 12 06 7E           4074 	lcall	_HW_set_16bit_reg
   54BF D0 01              4075 	pop	ar1
   54C1 D0 00              4076 	pop	ar0
   54C3 D0 07              4077 	pop	ar7
   54C5 D0 06              4078 	pop	ar6
                    11E6   4079 	C$core_gpio.c$287$4$13 ==.
                           4080 ;	../drivers/CoreGPIO/core_gpio.c:287: HAL_ASSERT( HW_get_16bit_reg( gpio_out_reg_addr ) == outputs_state );
                           4081 ;	genCall
   54C7 8E 82              4082 	mov	dpl,r6
   54C9 8F 83              4083 	mov	dph,r7
   54CB C0 00              4084 	push	ar0
   54CD C0 01              4085 	push	ar1
   54CF 12 06 92           4086 	lcall	_HW_get_16bit_reg
   54D2 AE 82              4087 	mov	r6,dpl
   54D4 AF 83              4088 	mov	r7,dph
   54D6 D0 01              4089 	pop	ar1
   54D8 D0 00              4090 	pop	ar0
                           4091 ;	genCmpEq
                           4092 ;	gencjneshort
   54DA EE                 4093 	mov	a,r6
   54DB B5 00 07           4094 	cjne	a,ar0,00173$
   54DE EF                 4095 	mov	a,r7
   54DF B5 01 03           4096 	cjne	a,ar1,00173$
   54E2 02 58 3C           4097 	ljmp	00140$
   54E5                    4098 00173$:
                           4099 ;	genPointerSet
                           4100 ;     genFarPointerSet
   54E5 90 08 76           4101 	mov	dptr,#_GPIO_set_output_file_name_5_14
   54E8 74 2E              4102 	mov	a,#0x2E
   54EA F0                 4103 	movx	@dptr,a
                           4104 ;	genPointerSet
                           4105 ;     genFarPointerSet
   54EB 90 08 77           4106 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0001)
   54EE 74 2E              4107 	mov	a,#0x2E
   54F0 F0                 4108 	movx	@dptr,a
                           4109 ;	genPointerSet
                           4110 ;     genFarPointerSet
   54F1 90 08 78           4111 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0002)
   54F4 74 2F              4112 	mov	a,#0x2F
   54F6 F0                 4113 	movx	@dptr,a
                           4114 ;	genPointerSet
                           4115 ;     genFarPointerSet
   54F7 90 08 79           4116 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0003)
   54FA 74 64              4117 	mov	a,#0x64
   54FC F0                 4118 	movx	@dptr,a
                           4119 ;	genPointerSet
                           4120 ;     genFarPointerSet
   54FD 90 08 7A           4121 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0004)
   5500 74 72              4122 	mov	a,#0x72
   5502 F0                 4123 	movx	@dptr,a
                           4124 ;	genPointerSet
                           4125 ;     genFarPointerSet
   5503 90 08 7B           4126 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0005)
   5506 74 69              4127 	mov	a,#0x69
   5508 F0                 4128 	movx	@dptr,a
                           4129 ;	genPointerSet
                           4130 ;     genFarPointerSet
   5509 90 08 7C           4131 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0006)
   550C 74 76              4132 	mov	a,#0x76
   550E F0                 4133 	movx	@dptr,a
                           4134 ;	genPointerSet
                           4135 ;     genFarPointerSet
   550F 90 08 7D           4136 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0007)
   5512 74 65              4137 	mov	a,#0x65
   5514 F0                 4138 	movx	@dptr,a
                           4139 ;	genPointerSet
                           4140 ;     genFarPointerSet
   5515 90 08 7E           4141 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0008)
   5518 74 72              4142 	mov	a,#0x72
   551A F0                 4143 	movx	@dptr,a
                           4144 ;	genPointerSet
                           4145 ;     genFarPointerSet
   551B 90 08 7F           4146 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0009)
   551E 74 73              4147 	mov	a,#0x73
   5520 F0                 4148 	movx	@dptr,a
                           4149 ;	genPointerSet
                           4150 ;     genFarPointerSet
   5521 90 08 80           4151 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000a)
   5524 74 2F              4152 	mov	a,#0x2F
   5526 F0                 4153 	movx	@dptr,a
                           4154 ;	genPointerSet
                           4155 ;     genFarPointerSet
   5527 90 08 81           4156 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000b)
   552A 74 43              4157 	mov	a,#0x43
   552C F0                 4158 	movx	@dptr,a
                           4159 ;	genPointerSet
                           4160 ;     genFarPointerSet
   552D 90 08 82           4161 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000c)
   5530 74 6F              4162 	mov	a,#0x6F
   5532 F0                 4163 	movx	@dptr,a
                           4164 ;	genPointerSet
                           4165 ;     genFarPointerSet
   5533 90 08 83           4166 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000d)
   5536 74 72              4167 	mov	a,#0x72
   5538 F0                 4168 	movx	@dptr,a
                           4169 ;	genPointerSet
                           4170 ;     genFarPointerSet
   5539 90 08 84           4171 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000e)
   553C 74 65              4172 	mov	a,#0x65
   553E F0                 4173 	movx	@dptr,a
                           4174 ;	genPointerSet
                           4175 ;     genFarPointerSet
   553F 90 08 85           4176 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000f)
   5542 74 47              4177 	mov	a,#0x47
   5544 F0                 4178 	movx	@dptr,a
                           4179 ;	genPointerSet
                           4180 ;     genFarPointerSet
   5545 90 08 86           4181 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0010)
   5548 74 50              4182 	mov	a,#0x50
   554A F0                 4183 	movx	@dptr,a
                           4184 ;	genPointerSet
                           4185 ;     genFarPointerSet
   554B 90 08 87           4186 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0011)
   554E 74 49              4187 	mov	a,#0x49
   5550 F0                 4188 	movx	@dptr,a
                           4189 ;	genPointerSet
                           4190 ;     genFarPointerSet
   5551 90 08 88           4191 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0012)
   5554 74 4F              4192 	mov	a,#0x4F
   5556 F0                 4193 	movx	@dptr,a
                           4194 ;	genPointerSet
                           4195 ;     genFarPointerSet
   5557 90 08 89           4196 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0013)
   555A 74 2F              4197 	mov	a,#0x2F
   555C F0                 4198 	movx	@dptr,a
                           4199 ;	genPointerSet
                           4200 ;     genFarPointerSet
   555D 90 08 8A           4201 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0014)
   5560 74 63              4202 	mov	a,#0x63
   5562 F0                 4203 	movx	@dptr,a
                           4204 ;	genPointerSet
                           4205 ;     genFarPointerSet
   5563 90 08 8B           4206 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0015)
   5566 74 6F              4207 	mov	a,#0x6F
   5568 F0                 4208 	movx	@dptr,a
                           4209 ;	genPointerSet
                           4210 ;     genFarPointerSet
   5569 90 08 8C           4211 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0016)
   556C 74 72              4212 	mov	a,#0x72
   556E F0                 4213 	movx	@dptr,a
                           4214 ;	genPointerSet
                           4215 ;     genFarPointerSet
   556F 90 08 8D           4216 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0017)
   5572 74 65              4217 	mov	a,#0x65
   5574 F0                 4218 	movx	@dptr,a
                           4219 ;	genPointerSet
                           4220 ;     genFarPointerSet
   5575 90 08 8E           4221 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0018)
   5578 74 5F              4222 	mov	a,#0x5F
   557A F0                 4223 	movx	@dptr,a
                           4224 ;	genPointerSet
                           4225 ;     genFarPointerSet
   557B 90 08 8F           4226 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0019)
   557E 74 67              4227 	mov	a,#0x67
   5580 F0                 4228 	movx	@dptr,a
                           4229 ;	genPointerSet
                           4230 ;     genFarPointerSet
   5581 90 08 90           4231 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001a)
   5584 74 70              4232 	mov	a,#0x70
   5586 F0                 4233 	movx	@dptr,a
                           4234 ;	genPointerSet
                           4235 ;     genFarPointerSet
   5587 90 08 91           4236 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001b)
   558A 74 69              4237 	mov	a,#0x69
   558C F0                 4238 	movx	@dptr,a
                           4239 ;	genPointerSet
                           4240 ;     genFarPointerSet
   558D 90 08 92           4241 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001c)
   5590 74 6F              4242 	mov	a,#0x6F
   5592 F0                 4243 	movx	@dptr,a
                           4244 ;	genPointerSet
                           4245 ;     genFarPointerSet
   5593 90 08 93           4246 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001d)
   5596 74 2E              4247 	mov	a,#0x2E
   5598 F0                 4248 	movx	@dptr,a
                           4249 ;	genPointerSet
                           4250 ;     genFarPointerSet
   5599 90 08 94           4251 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001e)
   559C 74 63              4252 	mov	a,#0x63
   559E F0                 4253 	movx	@dptr,a
                           4254 ;	genPointerSet
                           4255 ;     genFarPointerSet
   559F 90 08 95           4256 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001f)
   55A2 74 00              4257 	mov	a,#0x00
   55A4 F0                 4258 	movx	@dptr,a
                           4259 ;	genAssign
   55A5 90 00 8C           4260 	mov	dptr,#_HAL_assert_fail_PARM_2
   55A8 74 1F              4261 	mov	a,#0x1F
   55AA F0                 4262 	movx	@dptr,a
   55AB A3                 4263 	inc	dptr
   55AC 74 01              4264 	mov	a,#0x01
   55AE F0                 4265 	movx	@dptr,a
   55AF A3                 4266 	inc	dptr
   55B0 74 00              4267 	mov	a,#0x00
   55B2 F0                 4268 	movx	@dptr,a
   55B3 A3                 4269 	inc	dptr
   55B4 74 00              4270 	mov	a,#0x00
   55B6 F0                 4271 	movx	@dptr,a
                           4272 ;	genCall
   55B7 75 82 76           4273 	mov	dpl,#_GPIO_set_output_file_name_5_14
   55BA 75 83 08           4274 	mov	dph,#(_GPIO_set_output_file_name_5_14 >> 8)
   55BD 75 F0 00           4275 	mov	b,#0x00
   55C0 12 05 F6           4276 	lcall	_HAL_assert_fail
                    12E2   4277 	C$core_gpio.c$289$2$4 ==.
                           4278 ;	../drivers/CoreGPIO/core_gpio.c:289: break;
   55C3 02 58 3C           4279 	ljmp	00140$
                    12E5   4280 	C$core_gpio.c$291$2$4 ==.
                           4281 ;	../drivers/CoreGPIO/core_gpio.c:291: case GPIO_APB_8_BITS_BUS:
   55C6                    4282 00124$:
                    12E5   4283 	C$core_gpio.c$294$3$15 ==.
                           4284 ;	../drivers/CoreGPIO/core_gpio.c:294: uint32_t gpio_out_reg_addr = this_gpio->base_addr + GPIO_OUT_REG_OFFSET + ((port_id >> 3) * 4);
                           4285 ;	genPointerGet
                           4286 ;	genGenPointerGet
   55C6 8B 82              4287 	mov	dpl,r3
   55C8 8C 83              4288 	mov	dph,r4
   55CA 8D F0              4289 	mov	b,r5
   55CC 12 61 48           4290 	lcall	__gptrget
   55CF FB                 4291 	mov	r3,a
   55D0 A3                 4292 	inc	dptr
   55D1 12 61 48           4293 	lcall	__gptrget
   55D4 FC                 4294 	mov	r4,a
                           4295 ;	genPlus
                           4296 ;	genPlusIncr
   55D5 74 A0              4297 	mov	a,#0xA0
   55D7 25 03              4298 	add	a,ar3
   55D9 FB                 4299 	mov	r3,a
   55DA 74 00              4300 	mov	a,#0x00
   55DC 35 04              4301 	addc	a,ar4
   55DE FC                 4302 	mov	r4,a
                           4303 ;	genRightShift
                           4304 ;	genRightShiftLiteral
                           4305 ;	genrshOne
   55DF EA                 4306 	mov	a,r2
   55E0 C4                 4307 	swap	a
   55E1 23                 4308 	rl	a
   55E2 54 1F              4309 	anl	a,#0x1f
   55E4 FD                 4310 	mov	r5,a
                           4311 ;	genMult
                           4312 ;	genMultOneByte
   55E5 ED                 4313 	mov	a,r5
   55E6 75 F0 04           4314 	mov	b,#0x04
   55E9 A4                 4315 	mul	ab
                           4316 ;	genPlus
   55EA 25 03              4317 	add	a,ar3
   55EC FB                 4318 	mov	r3,a
   55ED E5 04              4319 	mov	a,ar4
   55EF 35 F0              4320 	addc	a,b
   55F1 FC                 4321 	mov	r4,a
                           4322 ;	genCast
   55F2 7D 00              4323 	mov	r5,#0x00
   55F4 7E 00              4324 	mov	r6,#0x00
                    1315   4325 	C$core_gpio.c$296$3$15 ==.
                           4326 ;	../drivers/CoreGPIO/core_gpio.c:296: outputs_state = HW_get_8bit_reg( gpio_out_reg_addr );
                           4327 ;	genCast
                           4328 ;	genCall
   55F6 8B 82              4329 	mov	dpl,r3
   55F8 8C 83              4330 	mov	dph,r4
   55FA C0 02              4331 	push	ar2
   55FC C0 03              4332 	push	ar3
   55FE C0 04              4333 	push	ar4
   5600 12 06 A7           4334 	lcall	_HW_get_8bit_reg
   5603 AD 82              4335 	mov	r5,dpl
   5605 D0 04              4336 	pop	ar4
   5607 D0 03              4337 	pop	ar3
   5609 D0 02              4338 	pop	ar2
                    132A   4339 	C$core_gpio.c$297$3$15 ==.
                           4340 ;	../drivers/CoreGPIO/core_gpio.c:297: if ( 0 == value )
                           4341 ;	genAssign
   560B 90 08 2C           4342 	mov	dptr,#_GPIO_set_output_PARM_3
   560E E0                 4343 	movx	a,@dptr
   560F FE                 4344 	mov	r6,a
                           4345 ;	genCmpEq
                           4346 ;	gencjneshort
   5610 BE 00 02           4347 	cjne	r6,#0x00,00174$
   5613 80 03              4348 	sjmp	00175$
   5615                    4349 00174$:
   5615 02 56 35           4350 	ljmp	00126$
   5618                    4351 00175$:
                    1337   4352 	C$core_gpio.c$299$4$16 ==.
                           4353 ;	../drivers/CoreGPIO/core_gpio.c:299: outputs_state &= ~(1 << (port_id & 0x07));
                           4354 ;	genAnd
   5618 74 07              4355 	mov	a,#0x07
   561A 5A                 4356 	anl	a,r2
                           4357 ;	genLeftShift
   561B F5 F0              4358 	mov	b,a
   561D 05 F0              4359 	inc	b
   561F 74 01              4360 	mov	a,#0x01
   5621 80 02              4361 	sjmp	00178$
   5623                    4362 00176$:
   5623 25 E0              4363 	add	a,acc
   5625                    4364 00178$:
   5625 D5 F0 FB           4365 	djnz	b,00176$
   5628 FE                 4366 	mov	r6,a
                           4367 ;	genCpl
   5629 EE                 4368 	mov	a,r6
   562A F4                 4369 	cpl	a
   562B FE                 4370 	mov	r6,a
                           4371 ;	genAnd
   562C 90 08 96           4372 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   562F EE                 4373 	mov	a,r6
   5630 5D                 4374 	anl	a,r5
   5631 F0                 4375 	movx	@dptr,a
   5632 02 56 4C           4376 	ljmp	00127$
   5635                    4377 00126$:
                    1354   4378 	C$core_gpio.c$303$4$17 ==.
                           4379 ;	../drivers/CoreGPIO/core_gpio.c:303: outputs_state |= 1 << (port_id & 0x07);
                           4380 ;	genAnd
   5635 74 07              4381 	mov	a,#0x07
   5637 5A                 4382 	anl	a,r2
                           4383 ;	genLeftShift
   5638 F5 F0              4384 	mov	b,a
   563A 05 F0              4385 	inc	b
   563C 74 01              4386 	mov	a,#0x01
   563E 80 02              4387 	sjmp	00181$
   5640                    4388 00179$:
   5640 25 E0              4389 	add	a,acc
   5642                    4390 00181$:
   5642 D5 F0 FB           4391 	djnz	b,00179$
   5645 FA                 4392 	mov	r2,a
                           4393 ;	genOr
   5646 90 08 96           4394 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   5649 EA                 4395 	mov	a,r2
   564A 4D                 4396 	orl	a,r5
   564B F0                 4397 	movx	@dptr,a
   564C                    4398 00127$:
                    136B   4399 	C$core_gpio.c$305$3$15 ==.
                           4400 ;	../drivers/CoreGPIO/core_gpio.c:305: HW_set_8bit_reg( gpio_out_reg_addr, outputs_state );
                           4401 ;	genAssign
   564C 90 08 96           4402 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   564F E0                 4403 	movx	a,@dptr
   5650 FA                 4404 	mov	r2,a
                           4405 ;	genAssign
   5651 90 00 A9           4406 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5654 EA                 4407 	mov	a,r2
   5655 F0                 4408 	movx	@dptr,a
                           4409 ;	genCall
   5656 8B 82              4410 	mov	dpl,r3
   5658 8C 83              4411 	mov	dph,r4
   565A C0 02              4412 	push	ar2
   565C C0 03              4413 	push	ar3
   565E C0 04              4414 	push	ar4
   5660 12 06 99           4415 	lcall	_HW_set_8bit_reg
   5663 D0 04              4416 	pop	ar4
   5665 D0 03              4417 	pop	ar3
   5667 D0 02              4418 	pop	ar2
                    1388   4419 	C$core_gpio.c$314$4$18 ==.
                           4420 ;	../drivers/CoreGPIO/core_gpio.c:314: HAL_ASSERT( HW_get_8bit_reg( gpio_out_reg_addr ) == outputs_state );
                           4421 ;	genCall
   5669 8B 82              4422 	mov	dpl,r3
   566B 8C 83              4423 	mov	dph,r4
   566D C0 02              4424 	push	ar2
   566F 12 06 A7           4425 	lcall	_HW_get_8bit_reg
   5672 AB 82              4426 	mov	r3,dpl
   5674 D0 02              4427 	pop	ar2
                           4428 ;	genCmpEq
                           4429 ;	gencjneshort
   5676 EB                 4430 	mov	a,r3
   5677 B5 02 03           4431 	cjne	a,ar2,00182$
   567A 02 58 3C           4432 	ljmp	00140$
   567D                    4433 00182$:
                           4434 ;	genPointerSet
                           4435 ;     genFarPointerSet
   567D 90 08 97           4436 	mov	dptr,#_GPIO_set_output_file_name_5_19
   5680 74 2E              4437 	mov	a,#0x2E
   5682 F0                 4438 	movx	@dptr,a
                           4439 ;	genPointerSet
                           4440 ;     genFarPointerSet
   5683 90 08 98           4441 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0001)
   5686 74 2E              4442 	mov	a,#0x2E
   5688 F0                 4443 	movx	@dptr,a
                           4444 ;	genPointerSet
                           4445 ;     genFarPointerSet
   5689 90 08 99           4446 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0002)
   568C 74 2F              4447 	mov	a,#0x2F
   568E F0                 4448 	movx	@dptr,a
                           4449 ;	genPointerSet
                           4450 ;     genFarPointerSet
   568F 90 08 9A           4451 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0003)
   5692 74 64              4452 	mov	a,#0x64
   5694 F0                 4453 	movx	@dptr,a
                           4454 ;	genPointerSet
                           4455 ;     genFarPointerSet
   5695 90 08 9B           4456 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0004)
   5698 74 72              4457 	mov	a,#0x72
   569A F0                 4458 	movx	@dptr,a
                           4459 ;	genPointerSet
                           4460 ;     genFarPointerSet
   569B 90 08 9C           4461 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0005)
   569E 74 69              4462 	mov	a,#0x69
   56A0 F0                 4463 	movx	@dptr,a
                           4464 ;	genPointerSet
                           4465 ;     genFarPointerSet
   56A1 90 08 9D           4466 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0006)
   56A4 74 76              4467 	mov	a,#0x76
   56A6 F0                 4468 	movx	@dptr,a
                           4469 ;	genPointerSet
                           4470 ;     genFarPointerSet
   56A7 90 08 9E           4471 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0007)
   56AA 74 65              4472 	mov	a,#0x65
   56AC F0                 4473 	movx	@dptr,a
                           4474 ;	genPointerSet
                           4475 ;     genFarPointerSet
   56AD 90 08 9F           4476 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0008)
   56B0 74 72              4477 	mov	a,#0x72
   56B2 F0                 4478 	movx	@dptr,a
                           4479 ;	genPointerSet
                           4480 ;     genFarPointerSet
   56B3 90 08 A0           4481 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0009)
   56B6 74 73              4482 	mov	a,#0x73
   56B8 F0                 4483 	movx	@dptr,a
                           4484 ;	genPointerSet
                           4485 ;     genFarPointerSet
   56B9 90 08 A1           4486 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000a)
   56BC 74 2F              4487 	mov	a,#0x2F
   56BE F0                 4488 	movx	@dptr,a
                           4489 ;	genPointerSet
                           4490 ;     genFarPointerSet
   56BF 90 08 A2           4491 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000b)
   56C2 74 43              4492 	mov	a,#0x43
   56C4 F0                 4493 	movx	@dptr,a
                           4494 ;	genPointerSet
                           4495 ;     genFarPointerSet
   56C5 90 08 A3           4496 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000c)
   56C8 74 6F              4497 	mov	a,#0x6F
   56CA F0                 4498 	movx	@dptr,a
                           4499 ;	genPointerSet
                           4500 ;     genFarPointerSet
   56CB 90 08 A4           4501 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000d)
   56CE 74 72              4502 	mov	a,#0x72
   56D0 F0                 4503 	movx	@dptr,a
                           4504 ;	genPointerSet
                           4505 ;     genFarPointerSet
   56D1 90 08 A5           4506 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000e)
   56D4 74 65              4507 	mov	a,#0x65
   56D6 F0                 4508 	movx	@dptr,a
                           4509 ;	genPointerSet
                           4510 ;     genFarPointerSet
   56D7 90 08 A6           4511 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000f)
   56DA 74 47              4512 	mov	a,#0x47
   56DC F0                 4513 	movx	@dptr,a
                           4514 ;	genPointerSet
                           4515 ;     genFarPointerSet
   56DD 90 08 A7           4516 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0010)
   56E0 74 50              4517 	mov	a,#0x50
   56E2 F0                 4518 	movx	@dptr,a
                           4519 ;	genPointerSet
                           4520 ;     genFarPointerSet
   56E3 90 08 A8           4521 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0011)
   56E6 74 49              4522 	mov	a,#0x49
   56E8 F0                 4523 	movx	@dptr,a
                           4524 ;	genPointerSet
                           4525 ;     genFarPointerSet
   56E9 90 08 A9           4526 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0012)
   56EC 74 4F              4527 	mov	a,#0x4F
   56EE F0                 4528 	movx	@dptr,a
                           4529 ;	genPointerSet
                           4530 ;     genFarPointerSet
   56EF 90 08 AA           4531 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0013)
   56F2 74 2F              4532 	mov	a,#0x2F
   56F4 F0                 4533 	movx	@dptr,a
                           4534 ;	genPointerSet
                           4535 ;     genFarPointerSet
   56F5 90 08 AB           4536 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0014)
   56F8 74 63              4537 	mov	a,#0x63
   56FA F0                 4538 	movx	@dptr,a
                           4539 ;	genPointerSet
                           4540 ;     genFarPointerSet
   56FB 90 08 AC           4541 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0015)
   56FE 74 6F              4542 	mov	a,#0x6F
   5700 F0                 4543 	movx	@dptr,a
                           4544 ;	genPointerSet
                           4545 ;     genFarPointerSet
   5701 90 08 AD           4546 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0016)
   5704 74 72              4547 	mov	a,#0x72
   5706 F0                 4548 	movx	@dptr,a
                           4549 ;	genPointerSet
                           4550 ;     genFarPointerSet
   5707 90 08 AE           4551 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0017)
   570A 74 65              4552 	mov	a,#0x65
   570C F0                 4553 	movx	@dptr,a
                           4554 ;	genPointerSet
                           4555 ;     genFarPointerSet
   570D 90 08 AF           4556 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0018)
   5710 74 5F              4557 	mov	a,#0x5F
   5712 F0                 4558 	movx	@dptr,a
                           4559 ;	genPointerSet
                           4560 ;     genFarPointerSet
   5713 90 08 B0           4561 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0019)
   5716 74 67              4562 	mov	a,#0x67
   5718 F0                 4563 	movx	@dptr,a
                           4564 ;	genPointerSet
                           4565 ;     genFarPointerSet
   5719 90 08 B1           4566 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001a)
   571C 74 70              4567 	mov	a,#0x70
   571E F0                 4568 	movx	@dptr,a
                           4569 ;	genPointerSet
                           4570 ;     genFarPointerSet
   571F 90 08 B2           4571 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001b)
   5722 74 69              4572 	mov	a,#0x69
   5724 F0                 4573 	movx	@dptr,a
                           4574 ;	genPointerSet
                           4575 ;     genFarPointerSet
   5725 90 08 B3           4576 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001c)
   5728 74 6F              4577 	mov	a,#0x6F
   572A F0                 4578 	movx	@dptr,a
                           4579 ;	genPointerSet
                           4580 ;     genFarPointerSet
   572B 90 08 B4           4581 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001d)
   572E 74 2E              4582 	mov	a,#0x2E
   5730 F0                 4583 	movx	@dptr,a
                           4584 ;	genPointerSet
                           4585 ;     genFarPointerSet
   5731 90 08 B5           4586 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001e)
   5734 74 63              4587 	mov	a,#0x63
   5736 F0                 4588 	movx	@dptr,a
                           4589 ;	genPointerSet
                           4590 ;     genFarPointerSet
   5737 90 08 B6           4591 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001f)
   573A 74 00              4592 	mov	a,#0x00
   573C F0                 4593 	movx	@dptr,a
                           4594 ;	genAssign
   573D 90 00 8C           4595 	mov	dptr,#_HAL_assert_fail_PARM_2
   5740 74 3A              4596 	mov	a,#0x3A
   5742 F0                 4597 	movx	@dptr,a
   5743 A3                 4598 	inc	dptr
   5744 74 01              4599 	mov	a,#0x01
   5746 F0                 4600 	movx	@dptr,a
   5747 A3                 4601 	inc	dptr
   5748 74 00              4602 	mov	a,#0x00
   574A F0                 4603 	movx	@dptr,a
   574B A3                 4604 	inc	dptr
   574C 74 00              4605 	mov	a,#0x00
   574E F0                 4606 	movx	@dptr,a
                           4607 ;	genCall
   574F 75 82 97           4608 	mov	dpl,#_GPIO_set_output_file_name_5_19
   5752 75 83 08           4609 	mov	dph,#(_GPIO_set_output_file_name_5_19 >> 8)
   5755 75 F0 00           4610 	mov	b,#0x00
   5758 12 05 F6           4611 	lcall	_HAL_assert_fail
                    147A   4612 	C$core_gpio.c$316$2$4 ==.
                           4613 ;	../drivers/CoreGPIO/core_gpio.c:316: break;
   575B 02 58 3C           4614 	ljmp	00140$
                    147D   4615 	C$core_gpio.c$319$2$4 ==.
                           4616 ;	../drivers/CoreGPIO/core_gpio.c:319: HAL_ASSERT(0);
   575E                    4617 00136$:
                           4618 ;	genPointerSet
                           4619 ;     genFarPointerSet
   575E 90 08 B7           4620 	mov	dptr,#_GPIO_set_output_file_name_4_21
   5761 74 2E              4621 	mov	a,#0x2E
   5763 F0                 4622 	movx	@dptr,a
                           4623 ;	genPointerSet
                           4624 ;     genFarPointerSet
   5764 90 08 B8           4625 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0001)
   5767 74 2E              4626 	mov	a,#0x2E
   5769 F0                 4627 	movx	@dptr,a
                           4628 ;	genPointerSet
                           4629 ;     genFarPointerSet
   576A 90 08 B9           4630 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0002)
   576D 74 2F              4631 	mov	a,#0x2F
   576F F0                 4632 	movx	@dptr,a
                           4633 ;	genPointerSet
                           4634 ;     genFarPointerSet
   5770 90 08 BA           4635 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0003)
   5773 74 64              4636 	mov	a,#0x64
   5775 F0                 4637 	movx	@dptr,a
                           4638 ;	genPointerSet
                           4639 ;     genFarPointerSet
   5776 90 08 BB           4640 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0004)
   5779 74 72              4641 	mov	a,#0x72
   577B F0                 4642 	movx	@dptr,a
                           4643 ;	genPointerSet
                           4644 ;     genFarPointerSet
   577C 90 08 BC           4645 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0005)
   577F 74 69              4646 	mov	a,#0x69
   5781 F0                 4647 	movx	@dptr,a
                           4648 ;	genPointerSet
                           4649 ;     genFarPointerSet
   5782 90 08 BD           4650 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0006)
   5785 74 76              4651 	mov	a,#0x76
   5787 F0                 4652 	movx	@dptr,a
                           4653 ;	genPointerSet
                           4654 ;     genFarPointerSet
   5788 90 08 BE           4655 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0007)
   578B 74 65              4656 	mov	a,#0x65
   578D F0                 4657 	movx	@dptr,a
                           4658 ;	genPointerSet
                           4659 ;     genFarPointerSet
   578E 90 08 BF           4660 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0008)
   5791 74 72              4661 	mov	a,#0x72
   5793 F0                 4662 	movx	@dptr,a
                           4663 ;	genPointerSet
                           4664 ;     genFarPointerSet
   5794 90 08 C0           4665 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0009)
   5797 74 73              4666 	mov	a,#0x73
   5799 F0                 4667 	movx	@dptr,a
                           4668 ;	genPointerSet
                           4669 ;     genFarPointerSet
   579A 90 08 C1           4670 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000a)
   579D 74 2F              4671 	mov	a,#0x2F
   579F F0                 4672 	movx	@dptr,a
                           4673 ;	genPointerSet
                           4674 ;     genFarPointerSet
   57A0 90 08 C2           4675 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000b)
   57A3 74 43              4676 	mov	a,#0x43
   57A5 F0                 4677 	movx	@dptr,a
                           4678 ;	genPointerSet
                           4679 ;     genFarPointerSet
   57A6 90 08 C3           4680 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000c)
   57A9 74 6F              4681 	mov	a,#0x6F
   57AB F0                 4682 	movx	@dptr,a
                           4683 ;	genPointerSet
                           4684 ;     genFarPointerSet
   57AC 90 08 C4           4685 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000d)
   57AF 74 72              4686 	mov	a,#0x72
   57B1 F0                 4687 	movx	@dptr,a
                           4688 ;	genPointerSet
                           4689 ;     genFarPointerSet
   57B2 90 08 C5           4690 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000e)
   57B5 74 65              4691 	mov	a,#0x65
   57B7 F0                 4692 	movx	@dptr,a
                           4693 ;	genPointerSet
                           4694 ;     genFarPointerSet
   57B8 90 08 C6           4695 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000f)
   57BB 74 47              4696 	mov	a,#0x47
   57BD F0                 4697 	movx	@dptr,a
                           4698 ;	genPointerSet
                           4699 ;     genFarPointerSet
   57BE 90 08 C7           4700 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0010)
   57C1 74 50              4701 	mov	a,#0x50
   57C3 F0                 4702 	movx	@dptr,a
                           4703 ;	genPointerSet
                           4704 ;     genFarPointerSet
   57C4 90 08 C8           4705 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0011)
   57C7 74 49              4706 	mov	a,#0x49
   57C9 F0                 4707 	movx	@dptr,a
                           4708 ;	genPointerSet
                           4709 ;     genFarPointerSet
   57CA 90 08 C9           4710 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0012)
   57CD 74 4F              4711 	mov	a,#0x4F
   57CF F0                 4712 	movx	@dptr,a
                           4713 ;	genPointerSet
                           4714 ;     genFarPointerSet
   57D0 90 08 CA           4715 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0013)
   57D3 74 2F              4716 	mov	a,#0x2F
   57D5 F0                 4717 	movx	@dptr,a
                           4718 ;	genPointerSet
                           4719 ;     genFarPointerSet
   57D6 90 08 CB           4720 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0014)
   57D9 74 63              4721 	mov	a,#0x63
   57DB F0                 4722 	movx	@dptr,a
                           4723 ;	genPointerSet
                           4724 ;     genFarPointerSet
   57DC 90 08 CC           4725 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0015)
   57DF 74 6F              4726 	mov	a,#0x6F
   57E1 F0                 4727 	movx	@dptr,a
                           4728 ;	genPointerSet
                           4729 ;     genFarPointerSet
   57E2 90 08 CD           4730 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0016)
   57E5 74 72              4731 	mov	a,#0x72
   57E7 F0                 4732 	movx	@dptr,a
                           4733 ;	genPointerSet
                           4734 ;     genFarPointerSet
   57E8 90 08 CE           4735 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0017)
   57EB 74 65              4736 	mov	a,#0x65
   57ED F0                 4737 	movx	@dptr,a
                           4738 ;	genPointerSet
                           4739 ;     genFarPointerSet
   57EE 90 08 CF           4740 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0018)
   57F1 74 5F              4741 	mov	a,#0x5F
   57F3 F0                 4742 	movx	@dptr,a
                           4743 ;	genPointerSet
                           4744 ;     genFarPointerSet
   57F4 90 08 D0           4745 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0019)
   57F7 74 67              4746 	mov	a,#0x67
   57F9 F0                 4747 	movx	@dptr,a
                           4748 ;	genPointerSet
                           4749 ;     genFarPointerSet
   57FA 90 08 D1           4750 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001a)
   57FD 74 70              4751 	mov	a,#0x70
   57FF F0                 4752 	movx	@dptr,a
                           4753 ;	genPointerSet
                           4754 ;     genFarPointerSet
   5800 90 08 D2           4755 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001b)
   5803 74 69              4756 	mov	a,#0x69
   5805 F0                 4757 	movx	@dptr,a
                           4758 ;	genPointerSet
                           4759 ;     genFarPointerSet
   5806 90 08 D3           4760 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001c)
   5809 74 6F              4761 	mov	a,#0x6F
   580B F0                 4762 	movx	@dptr,a
                           4763 ;	genPointerSet
                           4764 ;     genFarPointerSet
   580C 90 08 D4           4765 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001d)
   580F 74 2E              4766 	mov	a,#0x2E
   5811 F0                 4767 	movx	@dptr,a
                           4768 ;	genPointerSet
                           4769 ;     genFarPointerSet
   5812 90 08 D5           4770 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001e)
   5815 74 63              4771 	mov	a,#0x63
   5817 F0                 4772 	movx	@dptr,a
                           4773 ;	genPointerSet
                           4774 ;     genFarPointerSet
   5818 90 08 D6           4775 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001f)
   581B 74 00              4776 	mov	a,#0x00
   581D F0                 4777 	movx	@dptr,a
                           4778 ;	genAssign
   581E 90 00 8C           4779 	mov	dptr,#_HAL_assert_fail_PARM_2
   5821 74 3F              4780 	mov	a,#0x3F
   5823 F0                 4781 	movx	@dptr,a
   5824 A3                 4782 	inc	dptr
   5825 74 01              4783 	mov	a,#0x01
   5827 F0                 4784 	movx	@dptr,a
   5828 A3                 4785 	inc	dptr
   5829 74 00              4786 	mov	a,#0x00
   582B F0                 4787 	movx	@dptr,a
   582C A3                 4788 	inc	dptr
   582D 74 00              4789 	mov	a,#0x00
   582F F0                 4790 	movx	@dptr,a
                           4791 ;	genCall
   5830 75 82 B7           4792 	mov	dpl,#_GPIO_set_output_file_name_4_21
   5833 75 83 08           4793 	mov	dph,#(_GPIO_set_output_file_name_4_21 >> 8)
   5836 75 F0 00           4794 	mov	b,#0x00
   5839 12 05 F6           4795 	lcall	_HAL_assert_fail
                    155B   4796 	C$core_gpio.c$321$1$1 ==.
                           4797 ;	../drivers/CoreGPIO/core_gpio.c:321: }
   583C                    4798 00140$:
                    155B   4799 	C$core_gpio.c$322$1$1 ==.
                    155B   4800 	XG$GPIO_set_output$0$0 ==.
   583C 22                 4801 	ret
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
   583D                    4819 _GPIO_drive_inout:
                           4820 ;	genReceive
   583D AA F0              4821 	mov	r2,b
   583F AB 83              4822 	mov	r3,dph
   5841 E5 82              4823 	mov	a,dpl
   5843 90 08 D9           4824 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   5846 F0                 4825 	movx	@dptr,a
   5847 A3                 4826 	inc	dptr
   5848 EB                 4827 	mov	a,r3
   5849 F0                 4828 	movx	@dptr,a
   584A A3                 4829 	inc	dptr
   584B EA                 4830 	mov	a,r2
   584C F0                 4831 	movx	@dptr,a
                    156C   4832 	C$core_gpio.c$338$2$2 ==.
                           4833 ;	../drivers/CoreGPIO/core_gpio.c:338: HAL_ASSERT( port_id < NB_OF_GPIO );
                           4834 ;	genAssign
   584D 90 08 D7           4835 	mov	dptr,#_GPIO_drive_inout_PARM_2
   5850 E0                 4836 	movx	a,@dptr
   5851 FA                 4837 	mov	r2,a
                           4838 ;	genCmpLt
                           4839 ;	genCmp
   5852 BA 20 00           4840 	cjne	r2,#0x20,00122$
   5855                    4841 00122$:
                           4842 ;	genIfxJump
   5855 50 03              4843 	jnc	00123$
   5857 02 59 3C           4844 	ljmp	00104$
   585A                    4845 00123$:
                           4846 ;	genPointerSet
                           4847 ;     genFarPointerSet
   585A 90 08 DC           4848 	mov	dptr,#_GPIO_drive_inout_file_name_3_3
   585D 74 2E              4849 	mov	a,#0x2E
   585F F0                 4850 	movx	@dptr,a
                           4851 ;	genPointerSet
                           4852 ;     genFarPointerSet
   5860 90 08 DD           4853 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0001)
   5863 74 2E              4854 	mov	a,#0x2E
   5865 F0                 4855 	movx	@dptr,a
                           4856 ;	genPointerSet
                           4857 ;     genFarPointerSet
   5866 90 08 DE           4858 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0002)
   5869 74 2F              4859 	mov	a,#0x2F
   586B F0                 4860 	movx	@dptr,a
                           4861 ;	genPointerSet
                           4862 ;     genFarPointerSet
   586C 90 08 DF           4863 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0003)
   586F 74 64              4864 	mov	a,#0x64
   5871 F0                 4865 	movx	@dptr,a
                           4866 ;	genPointerSet
                           4867 ;     genFarPointerSet
   5872 90 08 E0           4868 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0004)
   5875 74 72              4869 	mov	a,#0x72
   5877 F0                 4870 	movx	@dptr,a
                           4871 ;	genPointerSet
                           4872 ;     genFarPointerSet
   5878 90 08 E1           4873 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0005)
   587B 74 69              4874 	mov	a,#0x69
   587D F0                 4875 	movx	@dptr,a
                           4876 ;	genPointerSet
                           4877 ;     genFarPointerSet
   587E 90 08 E2           4878 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0006)
   5881 74 76              4879 	mov	a,#0x76
   5883 F0                 4880 	movx	@dptr,a
                           4881 ;	genPointerSet
                           4882 ;     genFarPointerSet
   5884 90 08 E3           4883 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0007)
   5887 74 65              4884 	mov	a,#0x65
   5889 F0                 4885 	movx	@dptr,a
                           4886 ;	genPointerSet
                           4887 ;     genFarPointerSet
   588A 90 08 E4           4888 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0008)
   588D 74 72              4889 	mov	a,#0x72
   588F F0                 4890 	movx	@dptr,a
                           4891 ;	genPointerSet
                           4892 ;     genFarPointerSet
   5890 90 08 E5           4893 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0009)
   5893 74 73              4894 	mov	a,#0x73
   5895 F0                 4895 	movx	@dptr,a
                           4896 ;	genPointerSet
                           4897 ;     genFarPointerSet
   5896 90 08 E6           4898 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000a)
   5899 74 2F              4899 	mov	a,#0x2F
   589B F0                 4900 	movx	@dptr,a
                           4901 ;	genPointerSet
                           4902 ;     genFarPointerSet
   589C 90 08 E7           4903 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000b)
   589F 74 43              4904 	mov	a,#0x43
   58A1 F0                 4905 	movx	@dptr,a
                           4906 ;	genPointerSet
                           4907 ;     genFarPointerSet
   58A2 90 08 E8           4908 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000c)
   58A5 74 6F              4909 	mov	a,#0x6F
   58A7 F0                 4910 	movx	@dptr,a
                           4911 ;	genPointerSet
                           4912 ;     genFarPointerSet
   58A8 90 08 E9           4913 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000d)
   58AB 74 72              4914 	mov	a,#0x72
   58AD F0                 4915 	movx	@dptr,a
                           4916 ;	genPointerSet
                           4917 ;     genFarPointerSet
   58AE 90 08 EA           4918 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000e)
   58B1 74 65              4919 	mov	a,#0x65
   58B3 F0                 4920 	movx	@dptr,a
                           4921 ;	genPointerSet
                           4922 ;     genFarPointerSet
   58B4 90 08 EB           4923 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000f)
   58B7 74 47              4924 	mov	a,#0x47
   58B9 F0                 4925 	movx	@dptr,a
                           4926 ;	genPointerSet
                           4927 ;     genFarPointerSet
   58BA 90 08 EC           4928 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0010)
   58BD 74 50              4929 	mov	a,#0x50
   58BF F0                 4930 	movx	@dptr,a
                           4931 ;	genPointerSet
                           4932 ;     genFarPointerSet
   58C0 90 08 ED           4933 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0011)
   58C3 74 49              4934 	mov	a,#0x49
   58C5 F0                 4935 	movx	@dptr,a
                           4936 ;	genPointerSet
                           4937 ;     genFarPointerSet
   58C6 90 08 EE           4938 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0012)
   58C9 74 4F              4939 	mov	a,#0x4F
   58CB F0                 4940 	movx	@dptr,a
                           4941 ;	genPointerSet
                           4942 ;     genFarPointerSet
   58CC 90 08 EF           4943 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0013)
   58CF 74 2F              4944 	mov	a,#0x2F
   58D1 F0                 4945 	movx	@dptr,a
                           4946 ;	genPointerSet
                           4947 ;     genFarPointerSet
   58D2 90 08 F0           4948 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0014)
   58D5 74 63              4949 	mov	a,#0x63
   58D7 F0                 4950 	movx	@dptr,a
                           4951 ;	genPointerSet
                           4952 ;     genFarPointerSet
   58D8 90 08 F1           4953 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0015)
   58DB 74 6F              4954 	mov	a,#0x6F
   58DD F0                 4955 	movx	@dptr,a
                           4956 ;	genPointerSet
                           4957 ;     genFarPointerSet
   58DE 90 08 F2           4958 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0016)
   58E1 74 72              4959 	mov	a,#0x72
   58E3 F0                 4960 	movx	@dptr,a
                           4961 ;	genPointerSet
                           4962 ;     genFarPointerSet
   58E4 90 08 F3           4963 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0017)
   58E7 74 65              4964 	mov	a,#0x65
   58E9 F0                 4965 	movx	@dptr,a
                           4966 ;	genPointerSet
                           4967 ;     genFarPointerSet
   58EA 90 08 F4           4968 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0018)
   58ED 74 5F              4969 	mov	a,#0x5F
   58EF F0                 4970 	movx	@dptr,a
                           4971 ;	genPointerSet
                           4972 ;     genFarPointerSet
   58F0 90 08 F5           4973 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0019)
   58F3 74 67              4974 	mov	a,#0x67
   58F5 F0                 4975 	movx	@dptr,a
                           4976 ;	genPointerSet
                           4977 ;     genFarPointerSet
   58F6 90 08 F6           4978 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001a)
   58F9 74 70              4979 	mov	a,#0x70
   58FB F0                 4980 	movx	@dptr,a
                           4981 ;	genPointerSet
                           4982 ;     genFarPointerSet
   58FC 90 08 F7           4983 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001b)
   58FF 74 69              4984 	mov	a,#0x69
   5901 F0                 4985 	movx	@dptr,a
                           4986 ;	genPointerSet
                           4987 ;     genFarPointerSet
   5902 90 08 F8           4988 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001c)
   5905 74 6F              4989 	mov	a,#0x6F
   5907 F0                 4990 	movx	@dptr,a
                           4991 ;	genPointerSet
                           4992 ;     genFarPointerSet
   5908 90 08 F9           4993 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001d)
   590B 74 2E              4994 	mov	a,#0x2E
   590D F0                 4995 	movx	@dptr,a
                           4996 ;	genPointerSet
                           4997 ;     genFarPointerSet
   590E 90 08 FA           4998 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001e)
   5911 74 63              4999 	mov	a,#0x63
   5913 F0                 5000 	movx	@dptr,a
                           5001 ;	genPointerSet
                           5002 ;     genFarPointerSet
   5914 90 08 FB           5003 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001f)
   5917 74 00              5004 	mov	a,#0x00
   5919 F0                 5005 	movx	@dptr,a
                           5006 ;	genAssign
   591A 90 00 8C           5007 	mov	dptr,#_HAL_assert_fail_PARM_2
   591D 74 52              5008 	mov	a,#0x52
   591F F0                 5009 	movx	@dptr,a
   5920 A3                 5010 	inc	dptr
   5921 74 01              5011 	mov	a,#0x01
   5923 F0                 5012 	movx	@dptr,a
   5924 A3                 5013 	inc	dptr
   5925 74 00              5014 	mov	a,#0x00
   5927 F0                 5015 	movx	@dptr,a
   5928 A3                 5016 	inc	dptr
   5929 74 00              5017 	mov	a,#0x00
   592B F0                 5018 	movx	@dptr,a
                           5019 ;	genCall
   592C 75 82 DC           5020 	mov	dpl,#_GPIO_drive_inout_file_name_3_3
   592F 75 83 08           5021 	mov	dph,#(_GPIO_drive_inout_file_name_3_3 >> 8)
   5932 75 F0 00           5022 	mov	b,#0x00
   5935 C0 02              5023 	push	ar2
   5937 12 05 F6           5024 	lcall	_HAL_assert_fail
   593A D0 02              5025 	pop	ar2
   593C                    5026 00104$:
                    165B   5027 	C$core_gpio.c$340$1$1 ==.
                           5028 ;	../drivers/CoreGPIO/core_gpio.c:340: switch( inout_state )
                           5029 ;	genAssign
   593C 90 08 D8           5030 	mov	dptr,#_GPIO_drive_inout_PARM_3
   593F E0                 5031 	movx	a,@dptr
   5940 FB                 5032 	mov	r3,a
                           5033 ;	genCmpEq
                           5034 ;	gencjneshort
   5941 BB 00 03           5035 	cjne	r3,#0x00,00124$
   5944 02 59 CD           5036 	ljmp	00107$
   5947                    5037 00124$:
                           5038 ;	genCmpEq
                           5039 ;	gencjneshort
   5947 BB 01 03           5040 	cjne	r3,#0x01,00125$
   594A 02 59 56           5041 	ljmp	00106$
   594D                    5042 00125$:
                           5043 ;	genCmpEq
                           5044 ;	gencjneshort
   594D BB 02 03           5045 	cjne	r3,#0x02,00126$
   5950 02 5A 44           5046 	ljmp	00108$
   5953                    5047 00126$:
   5953 02 5A 98           5048 	ljmp	00112$
                    1675   5049 	C$core_gpio.c$342$2$4 ==.
                           5050 ;	../drivers/CoreGPIO/core_gpio.c:342: case GPIO_DRIVE_HIGH:
   5956                    5051 00106$:
                    1675   5052 	C$core_gpio.c$344$2$4 ==.
                           5053 ;	../drivers/CoreGPIO/core_gpio.c:344: GPIO_set_output( this_gpio, port_id, 1 );
                           5054 ;	genAssign
   5956 90 08 D9           5055 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   5959 E0                 5056 	movx	a,@dptr
   595A FB                 5057 	mov	r3,a
   595B A3                 5058 	inc	dptr
   595C E0                 5059 	movx	a,@dptr
   595D FC                 5060 	mov	r4,a
   595E A3                 5061 	inc	dptr
   595F E0                 5062 	movx	a,@dptr
   5960 FD                 5063 	mov	r5,a
                           5064 ;	genAssign
   5961 90 08 2B           5065 	mov	dptr,#_GPIO_set_output_PARM_2
   5964 EA                 5066 	mov	a,r2
   5965 F0                 5067 	movx	@dptr,a
                           5068 ;	genAssign
   5966 90 08 2C           5069 	mov	dptr,#_GPIO_set_output_PARM_3
   5969 74 01              5070 	mov	a,#0x01
   596B F0                 5071 	movx	@dptr,a
                           5072 ;	genCall
   596C 8B 82              5073 	mov	dpl,r3
   596E 8C 83              5074 	mov	dph,r4
   5970 8D F0              5075 	mov	b,r5
   5972 C0 02              5076 	push	ar2
   5974 12 50 94           5077 	lcall	_GPIO_set_output
   5977 D0 02              5078 	pop	ar2
                    1698   5079 	C$core_gpio.c$347$2$4 ==.
                           5080 ;	../drivers/CoreGPIO/core_gpio.c:347: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5081 ;	genAssign
   5979 90 08 D9           5082 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   597C E0                 5083 	movx	a,@dptr
   597D FB                 5084 	mov	r3,a
   597E A3                 5085 	inc	dptr
   597F E0                 5086 	movx	a,@dptr
   5980 FC                 5087 	mov	r4,a
   5981 A3                 5088 	inc	dptr
   5982 E0                 5089 	movx	a,@dptr
   5983 FD                 5090 	mov	r5,a
                           5091 ;	genPointerGet
                           5092 ;	genGenPointerGet
   5984 8B 82              5093 	mov	dpl,r3
   5986 8C 83              5094 	mov	dph,r4
   5988 8D F0              5095 	mov	b,r5
   598A 12 61 48           5096 	lcall	__gptrget
   598D FB                 5097 	mov	r3,a
   598E A3                 5098 	inc	dptr
   598F 12 61 48           5099 	lcall	__gptrget
   5992 FC                 5100 	mov	r4,a
                           5101 ;	genMult
                           5102 ;	genMultOneByte
   5993 EA                 5103 	mov	a,r2
   5994 75 F0 04           5104 	mov	b,#0x04
   5997 A4                 5105 	mul	ab
                           5106 ;	genPlus
   5998 25 03              5107 	add	a,ar3
   599A FB                 5108 	mov	r3,a
   599B E5 04              5109 	mov	a,ar4
   599D 35 F0              5110 	addc	a,b
   599F FC                 5111 	mov	r4,a
                           5112 ;	genCast
   59A0 7D 00              5113 	mov	r5,#0x00
   59A2 7E 00              5114 	mov	r6,#0x00
                    16C3   5115 	C$core_gpio.c$348$2$4 ==.
                           5116 ;	../drivers/CoreGPIO/core_gpio.c:348: config = HW_get_8bit_reg( cfg_reg_addr );
                           5117 ;	genCast
                           5118 ;	genCall
   59A4 8B 82              5119 	mov	dpl,r3
   59A6 8C 83              5120 	mov	dph,r4
   59A8 C0 03              5121 	push	ar3
   59AA C0 04              5122 	push	ar4
   59AC 12 06 A7           5123 	lcall	_HW_get_8bit_reg
   59AF AD 82              5124 	mov	r5,dpl
   59B1 D0 04              5125 	pop	ar4
   59B3 D0 03              5126 	pop	ar3
                           5127 ;	genCast
   59B5 7E 00              5128 	mov	r6,#0x00
   59B7 7F 00              5129 	mov	r7,#0x00
   59B9 78 00              5130 	mov	r0,#0x00
                    16DA   5131 	C$core_gpio.c$349$2$4 ==.
                           5132 ;	../drivers/CoreGPIO/core_gpio.c:349: config |= OUTPUT_BUFFER_ENABLE_MASK;
                           5133 ;	genOr
   59BB 43 05 04           5134 	orl	ar5,#0x04
                    16DD   5135 	C$core_gpio.c$350$2$4 ==.
                           5136 ;	../drivers/CoreGPIO/core_gpio.c:350: HW_set_8bit_reg( cfg_reg_addr, config );
                           5137 ;	genCast
   59BE 90 00 A9           5138 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   59C1 ED                 5139 	mov	a,r5
   59C2 F0                 5140 	movx	@dptr,a
                           5141 ;	genCall
   59C3 8B 82              5142 	mov	dpl,r3
   59C5 8C 83              5143 	mov	dph,r4
   59C7 12 06 99           5144 	lcall	_HW_set_8bit_reg
                    16E9   5145 	C$core_gpio.c$351$2$4 ==.
                           5146 ;	../drivers/CoreGPIO/core_gpio.c:351: break;
   59CA 02 5B 76           5147 	ljmp	00116$
                    16EC   5148 	C$core_gpio.c$353$2$4 ==.
                           5149 ;	../drivers/CoreGPIO/core_gpio.c:353: case GPIO_DRIVE_LOW:
   59CD                    5150 00107$:
                    16EC   5151 	C$core_gpio.c$355$2$4 ==.
                           5152 ;	../drivers/CoreGPIO/core_gpio.c:355: GPIO_set_output( this_gpio, port_id, 0 );
                           5153 ;	genAssign
   59CD 90 08 D9           5154 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   59D0 E0                 5155 	movx	a,@dptr
   59D1 FB                 5156 	mov	r3,a
   59D2 A3                 5157 	inc	dptr
   59D3 E0                 5158 	movx	a,@dptr
   59D4 FC                 5159 	mov	r4,a
   59D5 A3                 5160 	inc	dptr
   59D6 E0                 5161 	movx	a,@dptr
   59D7 FD                 5162 	mov	r5,a
                           5163 ;	genAssign
   59D8 90 08 2B           5164 	mov	dptr,#_GPIO_set_output_PARM_2
   59DB EA                 5165 	mov	a,r2
   59DC F0                 5166 	movx	@dptr,a
                           5167 ;	genAssign
   59DD 90 08 2C           5168 	mov	dptr,#_GPIO_set_output_PARM_3
   59E0 74 00              5169 	mov	a,#0x00
   59E2 F0                 5170 	movx	@dptr,a
                           5171 ;	genCall
   59E3 8B 82              5172 	mov	dpl,r3
   59E5 8C 83              5173 	mov	dph,r4
   59E7 8D F0              5174 	mov	b,r5
   59E9 C0 02              5175 	push	ar2
   59EB 12 50 94           5176 	lcall	_GPIO_set_output
   59EE D0 02              5177 	pop	ar2
                    170F   5178 	C$core_gpio.c$358$2$4 ==.
                           5179 ;	../drivers/CoreGPIO/core_gpio.c:358: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5180 ;	genAssign
   59F0 90 08 D9           5181 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   59F3 E0                 5182 	movx	a,@dptr
   59F4 FB                 5183 	mov	r3,a
   59F5 A3                 5184 	inc	dptr
   59F6 E0                 5185 	movx	a,@dptr
   59F7 FC                 5186 	mov	r4,a
   59F8 A3                 5187 	inc	dptr
   59F9 E0                 5188 	movx	a,@dptr
   59FA FD                 5189 	mov	r5,a
                           5190 ;	genPointerGet
                           5191 ;	genGenPointerGet
   59FB 8B 82              5192 	mov	dpl,r3
   59FD 8C 83              5193 	mov	dph,r4
   59FF 8D F0              5194 	mov	b,r5
   5A01 12 61 48           5195 	lcall	__gptrget
   5A04 FB                 5196 	mov	r3,a
   5A05 A3                 5197 	inc	dptr
   5A06 12 61 48           5198 	lcall	__gptrget
   5A09 FC                 5199 	mov	r4,a
                           5200 ;	genMult
                           5201 ;	genMultOneByte
   5A0A EA                 5202 	mov	a,r2
   5A0B 75 F0 04           5203 	mov	b,#0x04
   5A0E A4                 5204 	mul	ab
                           5205 ;	genPlus
   5A0F 25 03              5206 	add	a,ar3
   5A11 FB                 5207 	mov	r3,a
   5A12 E5 04              5208 	mov	a,ar4
   5A14 35 F0              5209 	addc	a,b
   5A16 FC                 5210 	mov	r4,a
                           5211 ;	genCast
   5A17 7D 00              5212 	mov	r5,#0x00
   5A19 7E 00              5213 	mov	r6,#0x00
                    173A   5214 	C$core_gpio.c$359$2$4 ==.
                           5215 ;	../drivers/CoreGPIO/core_gpio.c:359: config = HW_get_8bit_reg( cfg_reg_addr );
                           5216 ;	genCast
                           5217 ;	genCall
   5A1B 8B 82              5218 	mov	dpl,r3
   5A1D 8C 83              5219 	mov	dph,r4
   5A1F C0 03              5220 	push	ar3
   5A21 C0 04              5221 	push	ar4
   5A23 12 06 A7           5222 	lcall	_HW_get_8bit_reg
   5A26 AD 82              5223 	mov	r5,dpl
   5A28 D0 04              5224 	pop	ar4
   5A2A D0 03              5225 	pop	ar3
                           5226 ;	genCast
   5A2C 7E 00              5227 	mov	r6,#0x00
   5A2E 7F 00              5228 	mov	r7,#0x00
   5A30 78 00              5229 	mov	r0,#0x00
                    1751   5230 	C$core_gpio.c$360$2$4 ==.
                           5231 ;	../drivers/CoreGPIO/core_gpio.c:360: config |= OUTPUT_BUFFER_ENABLE_MASK;
                           5232 ;	genOr
   5A32 43 05 04           5233 	orl	ar5,#0x04
                    1754   5234 	C$core_gpio.c$361$2$4 ==.
                           5235 ;	../drivers/CoreGPIO/core_gpio.c:361: HW_set_8bit_reg( cfg_reg_addr, config );
                           5236 ;	genCast
   5A35 90 00 A9           5237 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5A38 ED                 5238 	mov	a,r5
   5A39 F0                 5239 	movx	@dptr,a
                           5240 ;	genCall
   5A3A 8B 82              5241 	mov	dpl,r3
   5A3C 8C 83              5242 	mov	dph,r4
   5A3E 12 06 99           5243 	lcall	_HW_set_8bit_reg
                    1760   5244 	C$core_gpio.c$362$2$4 ==.
                           5245 ;	../drivers/CoreGPIO/core_gpio.c:362: break;
   5A41 02 5B 76           5246 	ljmp	00116$
                    1763   5247 	C$core_gpio.c$364$2$4 ==.
                           5248 ;	../drivers/CoreGPIO/core_gpio.c:364: case GPIO_HIGH_Z:
   5A44                    5249 00108$:
                    1763   5250 	C$core_gpio.c$366$2$4 ==.
                           5251 ;	../drivers/CoreGPIO/core_gpio.c:366: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5252 ;	genAssign
   5A44 90 08 D9           5253 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   5A47 E0                 5254 	movx	a,@dptr
   5A48 FB                 5255 	mov	r3,a
   5A49 A3                 5256 	inc	dptr
   5A4A E0                 5257 	movx	a,@dptr
   5A4B FC                 5258 	mov	r4,a
   5A4C A3                 5259 	inc	dptr
   5A4D E0                 5260 	movx	a,@dptr
   5A4E FD                 5261 	mov	r5,a
                           5262 ;	genPointerGet
                           5263 ;	genGenPointerGet
   5A4F 8B 82              5264 	mov	dpl,r3
   5A51 8C 83              5265 	mov	dph,r4
   5A53 8D F0              5266 	mov	b,r5
   5A55 12 61 48           5267 	lcall	__gptrget
   5A58 FB                 5268 	mov	r3,a
   5A59 A3                 5269 	inc	dptr
   5A5A 12 61 48           5270 	lcall	__gptrget
   5A5D FC                 5271 	mov	r4,a
                           5272 ;	genMult
                           5273 ;	genMultOneByte
   5A5E EA                 5274 	mov	a,r2
   5A5F 75 F0 04           5275 	mov	b,#0x04
   5A62 A4                 5276 	mul	ab
                           5277 ;	genPlus
   5A63 25 03              5278 	add	a,ar3
   5A65 FB                 5279 	mov	r3,a
   5A66 E5 04              5280 	mov	a,ar4
   5A68 35 F0              5281 	addc	a,b
   5A6A FC                 5282 	mov	r4,a
                           5283 ;	genCast
   5A6B 7A 00              5284 	mov	r2,#0x00
   5A6D 7D 00              5285 	mov	r5,#0x00
                    178E   5286 	C$core_gpio.c$367$2$4 ==.
                           5287 ;	../drivers/CoreGPIO/core_gpio.c:367: config = HW_get_8bit_reg( cfg_reg_addr );
                           5288 ;	genCast
                           5289 ;	genCall
   5A6F 8B 82              5290 	mov	dpl,r3
   5A71 8C 83              5291 	mov	dph,r4
   5A73 C0 03              5292 	push	ar3
   5A75 C0 04              5293 	push	ar4
   5A77 12 06 A7           5294 	lcall	_HW_get_8bit_reg
   5A7A AA 82              5295 	mov	r2,dpl
   5A7C D0 04              5296 	pop	ar4
   5A7E D0 03              5297 	pop	ar3
                           5298 ;	genCast
   5A80 7D 00              5299 	mov	r5,#0x00
   5A82 7E 00              5300 	mov	r6,#0x00
   5A84 7F 00              5301 	mov	r7,#0x00
                    17A5   5302 	C$core_gpio.c$368$2$4 ==.
                           5303 ;	../drivers/CoreGPIO/core_gpio.c:368: config &= ~OUTPUT_BUFFER_ENABLE_MASK;
                           5304 ;	genAnd
   5A86 53 02 FB           5305 	anl	ar2,#0xFB
                    17A8   5306 	C$core_gpio.c$369$2$4 ==.
                           5307 ;	../drivers/CoreGPIO/core_gpio.c:369: HW_set_8bit_reg( cfg_reg_addr, config );
                           5308 ;	genCast
   5A89 90 00 A9           5309 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5A8C EA                 5310 	mov	a,r2
   5A8D F0                 5311 	movx	@dptr,a
                           5312 ;	genCall
   5A8E 8B 82              5313 	mov	dpl,r3
   5A90 8C 83              5314 	mov	dph,r4
   5A92 12 06 99           5315 	lcall	_HW_set_8bit_reg
                    17B4   5316 	C$core_gpio.c$370$2$4 ==.
                           5317 ;	../drivers/CoreGPIO/core_gpio.c:370: break;
   5A95 02 5B 76           5318 	ljmp	00116$
                    17B7   5319 	C$core_gpio.c$373$2$4 ==.
                           5320 ;	../drivers/CoreGPIO/core_gpio.c:373: HAL_ASSERT(0);
   5A98                    5321 00112$:
                           5322 ;	genPointerSet
                           5323 ;     genFarPointerSet
   5A98 90 08 FC           5324 	mov	dptr,#_GPIO_drive_inout_file_name_4_6
   5A9B 74 2E              5325 	mov	a,#0x2E
   5A9D F0                 5326 	movx	@dptr,a
                           5327 ;	genPointerSet
                           5328 ;     genFarPointerSet
   5A9E 90 08 FD           5329 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0001)
   5AA1 74 2E              5330 	mov	a,#0x2E
   5AA3 F0                 5331 	movx	@dptr,a
                           5332 ;	genPointerSet
                           5333 ;     genFarPointerSet
   5AA4 90 08 FE           5334 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0002)
   5AA7 74 2F              5335 	mov	a,#0x2F
   5AA9 F0                 5336 	movx	@dptr,a
                           5337 ;	genPointerSet
                           5338 ;     genFarPointerSet
   5AAA 90 08 FF           5339 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0003)
   5AAD 74 64              5340 	mov	a,#0x64
   5AAF F0                 5341 	movx	@dptr,a
                           5342 ;	genPointerSet
                           5343 ;     genFarPointerSet
   5AB0 90 09 00           5344 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0004)
   5AB3 74 72              5345 	mov	a,#0x72
   5AB5 F0                 5346 	movx	@dptr,a
                           5347 ;	genPointerSet
                           5348 ;     genFarPointerSet
   5AB6 90 09 01           5349 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0005)
   5AB9 74 69              5350 	mov	a,#0x69
   5ABB F0                 5351 	movx	@dptr,a
                           5352 ;	genPointerSet
                           5353 ;     genFarPointerSet
   5ABC 90 09 02           5354 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0006)
   5ABF 74 76              5355 	mov	a,#0x76
   5AC1 F0                 5356 	movx	@dptr,a
                           5357 ;	genPointerSet
                           5358 ;     genFarPointerSet
   5AC2 90 09 03           5359 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0007)
   5AC5 74 65              5360 	mov	a,#0x65
   5AC7 F0                 5361 	movx	@dptr,a
                           5362 ;	genPointerSet
                           5363 ;     genFarPointerSet
   5AC8 90 09 04           5364 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0008)
   5ACB 74 72              5365 	mov	a,#0x72
   5ACD F0                 5366 	movx	@dptr,a
                           5367 ;	genPointerSet
                           5368 ;     genFarPointerSet
   5ACE 90 09 05           5369 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0009)
   5AD1 74 73              5370 	mov	a,#0x73
   5AD3 F0                 5371 	movx	@dptr,a
                           5372 ;	genPointerSet
                           5373 ;     genFarPointerSet
   5AD4 90 09 06           5374 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000a)
   5AD7 74 2F              5375 	mov	a,#0x2F
   5AD9 F0                 5376 	movx	@dptr,a
                           5377 ;	genPointerSet
                           5378 ;     genFarPointerSet
   5ADA 90 09 07           5379 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000b)
   5ADD 74 43              5380 	mov	a,#0x43
   5ADF F0                 5381 	movx	@dptr,a
                           5382 ;	genPointerSet
                           5383 ;     genFarPointerSet
   5AE0 90 09 08           5384 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000c)
   5AE3 74 6F              5385 	mov	a,#0x6F
   5AE5 F0                 5386 	movx	@dptr,a
                           5387 ;	genPointerSet
                           5388 ;     genFarPointerSet
   5AE6 90 09 09           5389 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000d)
   5AE9 74 72              5390 	mov	a,#0x72
   5AEB F0                 5391 	movx	@dptr,a
                           5392 ;	genPointerSet
                           5393 ;     genFarPointerSet
   5AEC 90 09 0A           5394 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000e)
   5AEF 74 65              5395 	mov	a,#0x65
   5AF1 F0                 5396 	movx	@dptr,a
                           5397 ;	genPointerSet
                           5398 ;     genFarPointerSet
   5AF2 90 09 0B           5399 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000f)
   5AF5 74 47              5400 	mov	a,#0x47
   5AF7 F0                 5401 	movx	@dptr,a
                           5402 ;	genPointerSet
                           5403 ;     genFarPointerSet
   5AF8 90 09 0C           5404 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0010)
   5AFB 74 50              5405 	mov	a,#0x50
   5AFD F0                 5406 	movx	@dptr,a
                           5407 ;	genPointerSet
                           5408 ;     genFarPointerSet
   5AFE 90 09 0D           5409 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0011)
   5B01 74 49              5410 	mov	a,#0x49
   5B03 F0                 5411 	movx	@dptr,a
                           5412 ;	genPointerSet
                           5413 ;     genFarPointerSet
   5B04 90 09 0E           5414 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0012)
   5B07 74 4F              5415 	mov	a,#0x4F
   5B09 F0                 5416 	movx	@dptr,a
                           5417 ;	genPointerSet
                           5418 ;     genFarPointerSet
   5B0A 90 09 0F           5419 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0013)
   5B0D 74 2F              5420 	mov	a,#0x2F
   5B0F F0                 5421 	movx	@dptr,a
                           5422 ;	genPointerSet
                           5423 ;     genFarPointerSet
   5B10 90 09 10           5424 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0014)
   5B13 74 63              5425 	mov	a,#0x63
   5B15 F0                 5426 	movx	@dptr,a
                           5427 ;	genPointerSet
                           5428 ;     genFarPointerSet
   5B16 90 09 11           5429 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0015)
   5B19 74 6F              5430 	mov	a,#0x6F
   5B1B F0                 5431 	movx	@dptr,a
                           5432 ;	genPointerSet
                           5433 ;     genFarPointerSet
   5B1C 90 09 12           5434 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0016)
   5B1F 74 72              5435 	mov	a,#0x72
   5B21 F0                 5436 	movx	@dptr,a
                           5437 ;	genPointerSet
                           5438 ;     genFarPointerSet
   5B22 90 09 13           5439 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0017)
   5B25 74 65              5440 	mov	a,#0x65
   5B27 F0                 5441 	movx	@dptr,a
                           5442 ;	genPointerSet
                           5443 ;     genFarPointerSet
   5B28 90 09 14           5444 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0018)
   5B2B 74 5F              5445 	mov	a,#0x5F
   5B2D F0                 5446 	movx	@dptr,a
                           5447 ;	genPointerSet
                           5448 ;     genFarPointerSet
   5B2E 90 09 15           5449 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0019)
   5B31 74 67              5450 	mov	a,#0x67
   5B33 F0                 5451 	movx	@dptr,a
                           5452 ;	genPointerSet
                           5453 ;     genFarPointerSet
   5B34 90 09 16           5454 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001a)
   5B37 74 70              5455 	mov	a,#0x70
   5B39 F0                 5456 	movx	@dptr,a
                           5457 ;	genPointerSet
                           5458 ;     genFarPointerSet
   5B3A 90 09 17           5459 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001b)
   5B3D 74 69              5460 	mov	a,#0x69
   5B3F F0                 5461 	movx	@dptr,a
                           5462 ;	genPointerSet
                           5463 ;     genFarPointerSet
   5B40 90 09 18           5464 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001c)
   5B43 74 6F              5465 	mov	a,#0x6F
   5B45 F0                 5466 	movx	@dptr,a
                           5467 ;	genPointerSet
                           5468 ;     genFarPointerSet
   5B46 90 09 19           5469 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001d)
   5B49 74 2E              5470 	mov	a,#0x2E
   5B4B F0                 5471 	movx	@dptr,a
                           5472 ;	genPointerSet
                           5473 ;     genFarPointerSet
   5B4C 90 09 1A           5474 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001e)
   5B4F 74 63              5475 	mov	a,#0x63
   5B51 F0                 5476 	movx	@dptr,a
                           5477 ;	genPointerSet
                           5478 ;     genFarPointerSet
   5B52 90 09 1B           5479 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001f)
   5B55 74 00              5480 	mov	a,#0x00
   5B57 F0                 5481 	movx	@dptr,a
                           5482 ;	genAssign
   5B58 90 00 8C           5483 	mov	dptr,#_HAL_assert_fail_PARM_2
   5B5B 74 75              5484 	mov	a,#0x75
   5B5D F0                 5485 	movx	@dptr,a
   5B5E A3                 5486 	inc	dptr
   5B5F 74 01              5487 	mov	a,#0x01
   5B61 F0                 5488 	movx	@dptr,a
   5B62 A3                 5489 	inc	dptr
   5B63 74 00              5490 	mov	a,#0x00
   5B65 F0                 5491 	movx	@dptr,a
   5B66 A3                 5492 	inc	dptr
   5B67 74 00              5493 	mov	a,#0x00
   5B69 F0                 5494 	movx	@dptr,a
                           5495 ;	genCall
   5B6A 75 82 FC           5496 	mov	dpl,#_GPIO_drive_inout_file_name_4_6
   5B6D 75 83 08           5497 	mov	dph,#(_GPIO_drive_inout_file_name_4_6 >> 8)
   5B70 75 F0 00           5498 	mov	b,#0x00
   5B73 12 05 F6           5499 	lcall	_HAL_assert_fail
                    1895   5500 	C$core_gpio.c$375$1$1 ==.
                           5501 ;	../drivers/CoreGPIO/core_gpio.c:375: }
   5B76                    5502 00116$:
                    1895   5503 	C$core_gpio.c$376$1$1 ==.
                    1895   5504 	XG$GPIO_drive_inout$0$0 ==.
   5B76 22                 5505 	ret
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
   5B77                    5521 _GPIO_enable_irq:
                           5522 ;	genReceive
   5B77 AA F0              5523 	mov	r2,b
   5B79 AB 83              5524 	mov	r3,dph
   5B7B E5 82              5525 	mov	a,dpl
   5B7D 90 09 1D           5526 	mov	dptr,#_GPIO_enable_irq_this_gpio_1_1
   5B80 F0                 5527 	movx	@dptr,a
   5B81 A3                 5528 	inc	dptr
   5B82 EB                 5529 	mov	a,r3
   5B83 F0                 5530 	movx	@dptr,a
   5B84 A3                 5531 	inc	dptr
   5B85 EA                 5532 	mov	a,r2
   5B86 F0                 5533 	movx	@dptr,a
                    18A6   5534 	C$core_gpio.c$389$1$1 ==.
                           5535 ;	../drivers/CoreGPIO/core_gpio.c:389: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           5536 ;	genAssign
   5B87 90 09 1D           5537 	mov	dptr,#_GPIO_enable_irq_this_gpio_1_1
   5B8A E0                 5538 	movx	a,@dptr
   5B8B FA                 5539 	mov	r2,a
   5B8C A3                 5540 	inc	dptr
   5B8D E0                 5541 	movx	a,@dptr
   5B8E FB                 5542 	mov	r3,a
   5B8F A3                 5543 	inc	dptr
   5B90 E0                 5544 	movx	a,@dptr
   5B91 FC                 5545 	mov	r4,a
                           5546 ;	genPointerGet
                           5547 ;	genGenPointerGet
   5B92 8A 82              5548 	mov	dpl,r2
   5B94 8B 83              5549 	mov	dph,r3
   5B96 8C F0              5550 	mov	b,r4
   5B98 12 61 48           5551 	lcall	__gptrget
   5B9B FA                 5552 	mov	r2,a
   5B9C A3                 5553 	inc	dptr
   5B9D 12 61 48           5554 	lcall	__gptrget
   5BA0 FB                 5555 	mov	r3,a
                           5556 ;	genCast
   5BA1 7C 00              5557 	mov	r4,#0x00
   5BA3 7D 00              5558 	mov	r5,#0x00
                    18C4   5559 	C$core_gpio.c$391$2$2 ==.
                           5560 ;	../drivers/CoreGPIO/core_gpio.c:391: HAL_ASSERT( port_id < NB_OF_GPIO );
                           5561 ;	genAssign
   5BA5 90 09 1C           5562 	mov	dptr,#_GPIO_enable_irq_PARM_2
   5BA8 E0                 5563 	movx	a,@dptr
   5BA9 FE                 5564 	mov	r6,a
                           5565 ;	genCmpLt
                           5566 ;	genCmp
   5BAA BE 20 00           5567 	cjne	r6,#0x20,00112$
   5BAD                    5568 00112$:
   5BAD E4                 5569 	clr	a
   5BAE 33                 5570 	rlc	a
   5BAF FF                 5571 	mov	r7,a
                           5572 ;	genIfx
   5BB0 EF                 5573 	mov	a,r7
                           5574 ;	genIfxJump
   5BB1 60 03              5575 	jz	00113$
   5BB3 02 5C AC           5576 	ljmp	00104$
   5BB6                    5577 00113$:
                           5578 ;	genPointerSet
                           5579 ;     genFarPointerSet
   5BB6 90 09 20           5580 	mov	dptr,#_GPIO_enable_irq_file_name_3_3
   5BB9 74 2E              5581 	mov	a,#0x2E
   5BBB F0                 5582 	movx	@dptr,a
                           5583 ;	genPointerSet
                           5584 ;     genFarPointerSet
   5BBC 90 09 21           5585 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0001)
   5BBF 74 2E              5586 	mov	a,#0x2E
   5BC1 F0                 5587 	movx	@dptr,a
                           5588 ;	genPointerSet
                           5589 ;     genFarPointerSet
   5BC2 90 09 22           5590 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0002)
   5BC5 74 2F              5591 	mov	a,#0x2F
   5BC7 F0                 5592 	movx	@dptr,a
                           5593 ;	genPointerSet
                           5594 ;     genFarPointerSet
   5BC8 90 09 23           5595 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0003)
   5BCB 74 64              5596 	mov	a,#0x64
   5BCD F0                 5597 	movx	@dptr,a
                           5598 ;	genPointerSet
                           5599 ;     genFarPointerSet
   5BCE 90 09 24           5600 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0004)
   5BD1 74 72              5601 	mov	a,#0x72
   5BD3 F0                 5602 	movx	@dptr,a
                           5603 ;	genPointerSet
                           5604 ;     genFarPointerSet
   5BD4 90 09 25           5605 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0005)
   5BD7 74 69              5606 	mov	a,#0x69
   5BD9 F0                 5607 	movx	@dptr,a
                           5608 ;	genPointerSet
                           5609 ;     genFarPointerSet
   5BDA 90 09 26           5610 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0006)
   5BDD 74 76              5611 	mov	a,#0x76
   5BDF F0                 5612 	movx	@dptr,a
                           5613 ;	genPointerSet
                           5614 ;     genFarPointerSet
   5BE0 90 09 27           5615 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0007)
   5BE3 74 65              5616 	mov	a,#0x65
   5BE5 F0                 5617 	movx	@dptr,a
                           5618 ;	genPointerSet
                           5619 ;     genFarPointerSet
   5BE6 90 09 28           5620 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0008)
   5BE9 74 72              5621 	mov	a,#0x72
   5BEB F0                 5622 	movx	@dptr,a
                           5623 ;	genPointerSet
                           5624 ;     genFarPointerSet
   5BEC 90 09 29           5625 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0009)
   5BEF 74 73              5626 	mov	a,#0x73
   5BF1 F0                 5627 	movx	@dptr,a
                           5628 ;	genPointerSet
                           5629 ;     genFarPointerSet
   5BF2 90 09 2A           5630 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000a)
   5BF5 74 2F              5631 	mov	a,#0x2F
   5BF7 F0                 5632 	movx	@dptr,a
                           5633 ;	genPointerSet
                           5634 ;     genFarPointerSet
   5BF8 90 09 2B           5635 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000b)
   5BFB 74 43              5636 	mov	a,#0x43
   5BFD F0                 5637 	movx	@dptr,a
                           5638 ;	genPointerSet
                           5639 ;     genFarPointerSet
   5BFE 90 09 2C           5640 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000c)
   5C01 74 6F              5641 	mov	a,#0x6F
   5C03 F0                 5642 	movx	@dptr,a
                           5643 ;	genPointerSet
                           5644 ;     genFarPointerSet
   5C04 90 09 2D           5645 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000d)
   5C07 74 72              5646 	mov	a,#0x72
   5C09 F0                 5647 	movx	@dptr,a
                           5648 ;	genPointerSet
                           5649 ;     genFarPointerSet
   5C0A 90 09 2E           5650 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000e)
   5C0D 74 65              5651 	mov	a,#0x65
   5C0F F0                 5652 	movx	@dptr,a
                           5653 ;	genPointerSet
                           5654 ;     genFarPointerSet
   5C10 90 09 2F           5655 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000f)
   5C13 74 47              5656 	mov	a,#0x47
   5C15 F0                 5657 	movx	@dptr,a
                           5658 ;	genPointerSet
                           5659 ;     genFarPointerSet
   5C16 90 09 30           5660 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0010)
   5C19 74 50              5661 	mov	a,#0x50
   5C1B F0                 5662 	movx	@dptr,a
                           5663 ;	genPointerSet
                           5664 ;     genFarPointerSet
   5C1C 90 09 31           5665 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0011)
   5C1F 74 49              5666 	mov	a,#0x49
   5C21 F0                 5667 	movx	@dptr,a
                           5668 ;	genPointerSet
                           5669 ;     genFarPointerSet
   5C22 90 09 32           5670 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0012)
   5C25 74 4F              5671 	mov	a,#0x4F
   5C27 F0                 5672 	movx	@dptr,a
                           5673 ;	genPointerSet
                           5674 ;     genFarPointerSet
   5C28 90 09 33           5675 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0013)
   5C2B 74 2F              5676 	mov	a,#0x2F
   5C2D F0                 5677 	movx	@dptr,a
                           5678 ;	genPointerSet
                           5679 ;     genFarPointerSet
   5C2E 90 09 34           5680 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0014)
   5C31 74 63              5681 	mov	a,#0x63
   5C33 F0                 5682 	movx	@dptr,a
                           5683 ;	genPointerSet
                           5684 ;     genFarPointerSet
   5C34 90 09 35           5685 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0015)
   5C37 74 6F              5686 	mov	a,#0x6F
   5C39 F0                 5687 	movx	@dptr,a
                           5688 ;	genPointerSet
                           5689 ;     genFarPointerSet
   5C3A 90 09 36           5690 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0016)
   5C3D 74 72              5691 	mov	a,#0x72
   5C3F F0                 5692 	movx	@dptr,a
                           5693 ;	genPointerSet
                           5694 ;     genFarPointerSet
   5C40 90 09 37           5695 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0017)
   5C43 74 65              5696 	mov	a,#0x65
   5C45 F0                 5697 	movx	@dptr,a
                           5698 ;	genPointerSet
                           5699 ;     genFarPointerSet
   5C46 90 09 38           5700 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0018)
   5C49 74 5F              5701 	mov	a,#0x5F
   5C4B F0                 5702 	movx	@dptr,a
                           5703 ;	genPointerSet
                           5704 ;     genFarPointerSet
   5C4C 90 09 39           5705 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0019)
   5C4F 74 67              5706 	mov	a,#0x67
   5C51 F0                 5707 	movx	@dptr,a
                           5708 ;	genPointerSet
                           5709 ;     genFarPointerSet
   5C52 90 09 3A           5710 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001a)
   5C55 74 70              5711 	mov	a,#0x70
   5C57 F0                 5712 	movx	@dptr,a
                           5713 ;	genPointerSet
                           5714 ;     genFarPointerSet
   5C58 90 09 3B           5715 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001b)
   5C5B 74 69              5716 	mov	a,#0x69
   5C5D F0                 5717 	movx	@dptr,a
                           5718 ;	genPointerSet
                           5719 ;     genFarPointerSet
   5C5E 90 09 3C           5720 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001c)
   5C61 74 6F              5721 	mov	a,#0x6F
   5C63 F0                 5722 	movx	@dptr,a
                           5723 ;	genPointerSet
                           5724 ;     genFarPointerSet
   5C64 90 09 3D           5725 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001d)
   5C67 74 2E              5726 	mov	a,#0x2E
   5C69 F0                 5727 	movx	@dptr,a
                           5728 ;	genPointerSet
                           5729 ;     genFarPointerSet
   5C6A 90 09 3E           5730 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001e)
   5C6D 74 63              5731 	mov	a,#0x63
   5C6F F0                 5732 	movx	@dptr,a
                           5733 ;	genPointerSet
                           5734 ;     genFarPointerSet
   5C70 90 09 3F           5735 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001f)
   5C73 74 00              5736 	mov	a,#0x00
   5C75 F0                 5737 	movx	@dptr,a
                           5738 ;	genAssign
   5C76 90 00 8C           5739 	mov	dptr,#_HAL_assert_fail_PARM_2
   5C79 74 87              5740 	mov	a,#0x87
   5C7B F0                 5741 	movx	@dptr,a
   5C7C A3                 5742 	inc	dptr
   5C7D 74 01              5743 	mov	a,#0x01
   5C7F F0                 5744 	movx	@dptr,a
   5C80 A3                 5745 	inc	dptr
   5C81 74 00              5746 	mov	a,#0x00
   5C83 F0                 5747 	movx	@dptr,a
   5C84 A3                 5748 	inc	dptr
   5C85 74 00              5749 	mov	a,#0x00
   5C87 F0                 5750 	movx	@dptr,a
                           5751 ;	genCall
   5C88 75 82 20           5752 	mov	dpl,#_GPIO_enable_irq_file_name_3_3
   5C8B 75 83 09           5753 	mov	dph,#(_GPIO_enable_irq_file_name_3_3 >> 8)
   5C8E 75 F0 00           5754 	mov	b,#0x00
   5C91 C0 02              5755 	push	ar2
   5C93 C0 03              5756 	push	ar3
   5C95 C0 04              5757 	push	ar4
   5C97 C0 05              5758 	push	ar5
   5C99 C0 06              5759 	push	ar6
   5C9B C0 07              5760 	push	ar7
   5C9D 12 05 F6           5761 	lcall	_HAL_assert_fail
   5CA0 D0 07              5762 	pop	ar7
   5CA2 D0 06              5763 	pop	ar6
   5CA4 D0 05              5764 	pop	ar5
   5CA6 D0 04              5765 	pop	ar4
   5CA8 D0 03              5766 	pop	ar3
   5CAA D0 02              5767 	pop	ar2
   5CAC                    5768 00104$:
                    19CB   5769 	C$core_gpio.c$393$1$1 ==.
                           5770 ;	../drivers/CoreGPIO/core_gpio.c:393: if ( port_id < NB_OF_GPIO )
                           5771 ;	genIfx
   5CAC EF                 5772 	mov	a,r7
                           5773 ;	genIfxJump
   5CAD 70 03              5774 	jnz	00114$
   5CAF 02 5C FA           5775 	ljmp	00108$
   5CB2                    5776 00114$:
                    19D1   5777 	C$core_gpio.c$395$2$4 ==.
                           5778 ;	../drivers/CoreGPIO/core_gpio.c:395: cfg_reg_addr += (port_id * 4);
                           5779 ;	genMult
                           5780 ;	genMultOneByte
   5CB2 EE                 5781 	mov	a,r6
   5CB3 75 F0 04           5782 	mov	b,#0x04
   5CB6 A4                 5783 	mul	ab
   5CB7 FE                 5784 	mov	r6,a
   5CB8 AF F0              5785 	mov	r7,b
                           5786 ;	genCast
   5CBA EF                 5787 	mov	a,r7
   5CBB 33                 5788 	rlc	a
   5CBC 95 E0              5789 	subb	a,acc
   5CBE F8                 5790 	mov	r0,a
   5CBF F9                 5791 	mov	r1,a
                           5792 ;	genPlus
   5CC0 E5 06              5793 	mov	a,ar6
   5CC2 25 02              5794 	add	a,ar2
   5CC4 FA                 5795 	mov	r2,a
   5CC5 E5 07              5796 	mov	a,ar7
   5CC7 35 03              5797 	addc	a,ar3
   5CC9 FB                 5798 	mov	r3,a
   5CCA E5 00              5799 	mov	a,ar0
   5CCC 35 04              5800 	addc	a,ar4
   5CCE FC                 5801 	mov	r4,a
   5CCF E5 01              5802 	mov	a,ar1
   5CD1 35 05              5803 	addc	a,ar5
   5CD3 FD                 5804 	mov	r5,a
                    19F3   5805 	C$core_gpio.c$396$2$4 ==.
                           5806 ;	../drivers/CoreGPIO/core_gpio.c:396: cfg_value = HW_get_8bit_reg( cfg_reg_addr );
                           5807 ;	genCast
                           5808 ;	genCall
   5CD4 8A 82              5809 	mov	dpl,r2
   5CD6 8B 83              5810 	mov	dph,r3
   5CD8 C0 02              5811 	push	ar2
   5CDA C0 03              5812 	push	ar3
   5CDC 12 06 A7           5813 	lcall	_HW_get_8bit_reg
   5CDF AC 82              5814 	mov	r4,dpl
   5CE1 D0 03              5815 	pop	ar3
   5CE3 D0 02              5816 	pop	ar2
                           5817 ;	genCast
   5CE5 7D 00              5818 	mov	r5,#0x00
   5CE7 7E 00              5819 	mov	r6,#0x00
   5CE9 7F 00              5820 	mov	r7,#0x00
                    1A0A   5821 	C$core_gpio.c$397$2$4 ==.
                           5822 ;	../drivers/CoreGPIO/core_gpio.c:397: cfg_value |= GPIO_INT_ENABLE_MASK;
                           5823 ;	genOr
   5CEB 43 04 08           5824 	orl	ar4,#0x08
                    1A0D   5825 	C$core_gpio.c$398$2$4 ==.
                           5826 ;	../drivers/CoreGPIO/core_gpio.c:398: HW_set_8bit_reg( cfg_reg_addr, cfg_value );
                           5827 ;	genCast
   5CEE 90 00 A9           5828 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5CF1 EC                 5829 	mov	a,r4
   5CF2 F0                 5830 	movx	@dptr,a
                           5831 ;	genCall
   5CF3 8A 82              5832 	mov	dpl,r2
   5CF5 8B 83              5833 	mov	dph,r3
   5CF7 12 06 99           5834 	lcall	_HW_set_8bit_reg
   5CFA                    5835 00108$:
                    1A19   5836 	C$core_gpio.c$400$2$1 ==.
                    1A19   5837 	XG$GPIO_enable_irq$0$0 ==.
   5CFA 22                 5838 	ret
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
   5CFB                    5854 _GPIO_disable_irq:
                           5855 ;	genReceive
   5CFB AA F0              5856 	mov	r2,b
   5CFD AB 83              5857 	mov	r3,dph
   5CFF E5 82              5858 	mov	a,dpl
   5D01 90 09 41           5859 	mov	dptr,#_GPIO_disable_irq_this_gpio_1_1
   5D04 F0                 5860 	movx	@dptr,a
   5D05 A3                 5861 	inc	dptr
   5D06 EB                 5862 	mov	a,r3
   5D07 F0                 5863 	movx	@dptr,a
   5D08 A3                 5864 	inc	dptr
   5D09 EA                 5865 	mov	a,r2
   5D0A F0                 5866 	movx	@dptr,a
                    1A2A   5867 	C$core_gpio.c$413$1$1 ==.
                           5868 ;	../drivers/CoreGPIO/core_gpio.c:413: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           5869 ;	genAssign
   5D0B 90 09 41           5870 	mov	dptr,#_GPIO_disable_irq_this_gpio_1_1
   5D0E E0                 5871 	movx	a,@dptr
   5D0F FA                 5872 	mov	r2,a
   5D10 A3                 5873 	inc	dptr
   5D11 E0                 5874 	movx	a,@dptr
   5D12 FB                 5875 	mov	r3,a
   5D13 A3                 5876 	inc	dptr
   5D14 E0                 5877 	movx	a,@dptr
   5D15 FC                 5878 	mov	r4,a
                           5879 ;	genPointerGet
                           5880 ;	genGenPointerGet
   5D16 8A 82              5881 	mov	dpl,r2
   5D18 8B 83              5882 	mov	dph,r3
   5D1A 8C F0              5883 	mov	b,r4
   5D1C 12 61 48           5884 	lcall	__gptrget
   5D1F FA                 5885 	mov	r2,a
   5D20 A3                 5886 	inc	dptr
   5D21 12 61 48           5887 	lcall	__gptrget
   5D24 FB                 5888 	mov	r3,a
                           5889 ;	genCast
   5D25 7C 00              5890 	mov	r4,#0x00
   5D27 7D 00              5891 	mov	r5,#0x00
                    1A48   5892 	C$core_gpio.c$415$2$2 ==.
                           5893 ;	../drivers/CoreGPIO/core_gpio.c:415: HAL_ASSERT( port_id < NB_OF_GPIO );
                           5894 ;	genAssign
   5D29 90 09 40           5895 	mov	dptr,#_GPIO_disable_irq_PARM_2
   5D2C E0                 5896 	movx	a,@dptr
   5D2D FE                 5897 	mov	r6,a
                           5898 ;	genCmpLt
                           5899 ;	genCmp
   5D2E BE 20 00           5900 	cjne	r6,#0x20,00112$
   5D31                    5901 00112$:
   5D31 E4                 5902 	clr	a
   5D32 33                 5903 	rlc	a
   5D33 FF                 5904 	mov	r7,a
                           5905 ;	genIfx
   5D34 EF                 5906 	mov	a,r7
                           5907 ;	genIfxJump
   5D35 60 03              5908 	jz	00113$
   5D37 02 5E 30           5909 	ljmp	00104$
   5D3A                    5910 00113$:
                           5911 ;	genPointerSet
                           5912 ;     genFarPointerSet
   5D3A 90 09 44           5913 	mov	dptr,#_GPIO_disable_irq_file_name_3_3
   5D3D 74 2E              5914 	mov	a,#0x2E
   5D3F F0                 5915 	movx	@dptr,a
                           5916 ;	genPointerSet
                           5917 ;     genFarPointerSet
   5D40 90 09 45           5918 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0001)
   5D43 74 2E              5919 	mov	a,#0x2E
   5D45 F0                 5920 	movx	@dptr,a
                           5921 ;	genPointerSet
                           5922 ;     genFarPointerSet
   5D46 90 09 46           5923 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0002)
   5D49 74 2F              5924 	mov	a,#0x2F
   5D4B F0                 5925 	movx	@dptr,a
                           5926 ;	genPointerSet
                           5927 ;     genFarPointerSet
   5D4C 90 09 47           5928 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0003)
   5D4F 74 64              5929 	mov	a,#0x64
   5D51 F0                 5930 	movx	@dptr,a
                           5931 ;	genPointerSet
                           5932 ;     genFarPointerSet
   5D52 90 09 48           5933 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0004)
   5D55 74 72              5934 	mov	a,#0x72
   5D57 F0                 5935 	movx	@dptr,a
                           5936 ;	genPointerSet
                           5937 ;     genFarPointerSet
   5D58 90 09 49           5938 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0005)
   5D5B 74 69              5939 	mov	a,#0x69
   5D5D F0                 5940 	movx	@dptr,a
                           5941 ;	genPointerSet
                           5942 ;     genFarPointerSet
   5D5E 90 09 4A           5943 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0006)
   5D61 74 76              5944 	mov	a,#0x76
   5D63 F0                 5945 	movx	@dptr,a
                           5946 ;	genPointerSet
                           5947 ;     genFarPointerSet
   5D64 90 09 4B           5948 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0007)
   5D67 74 65              5949 	mov	a,#0x65
   5D69 F0                 5950 	movx	@dptr,a
                           5951 ;	genPointerSet
                           5952 ;     genFarPointerSet
   5D6A 90 09 4C           5953 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0008)
   5D6D 74 72              5954 	mov	a,#0x72
   5D6F F0                 5955 	movx	@dptr,a
                           5956 ;	genPointerSet
                           5957 ;     genFarPointerSet
   5D70 90 09 4D           5958 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0009)
   5D73 74 73              5959 	mov	a,#0x73
   5D75 F0                 5960 	movx	@dptr,a
                           5961 ;	genPointerSet
                           5962 ;     genFarPointerSet
   5D76 90 09 4E           5963 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000a)
   5D79 74 2F              5964 	mov	a,#0x2F
   5D7B F0                 5965 	movx	@dptr,a
                           5966 ;	genPointerSet
                           5967 ;     genFarPointerSet
   5D7C 90 09 4F           5968 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000b)
   5D7F 74 43              5969 	mov	a,#0x43
   5D81 F0                 5970 	movx	@dptr,a
                           5971 ;	genPointerSet
                           5972 ;     genFarPointerSet
   5D82 90 09 50           5973 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000c)
   5D85 74 6F              5974 	mov	a,#0x6F
   5D87 F0                 5975 	movx	@dptr,a
                           5976 ;	genPointerSet
                           5977 ;     genFarPointerSet
   5D88 90 09 51           5978 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000d)
   5D8B 74 72              5979 	mov	a,#0x72
   5D8D F0                 5980 	movx	@dptr,a
                           5981 ;	genPointerSet
                           5982 ;     genFarPointerSet
   5D8E 90 09 52           5983 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000e)
   5D91 74 65              5984 	mov	a,#0x65
   5D93 F0                 5985 	movx	@dptr,a
                           5986 ;	genPointerSet
                           5987 ;     genFarPointerSet
   5D94 90 09 53           5988 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000f)
   5D97 74 47              5989 	mov	a,#0x47
   5D99 F0                 5990 	movx	@dptr,a
                           5991 ;	genPointerSet
                           5992 ;     genFarPointerSet
   5D9A 90 09 54           5993 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0010)
   5D9D 74 50              5994 	mov	a,#0x50
   5D9F F0                 5995 	movx	@dptr,a
                           5996 ;	genPointerSet
                           5997 ;     genFarPointerSet
   5DA0 90 09 55           5998 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0011)
   5DA3 74 49              5999 	mov	a,#0x49
   5DA5 F0                 6000 	movx	@dptr,a
                           6001 ;	genPointerSet
                           6002 ;     genFarPointerSet
   5DA6 90 09 56           6003 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0012)
   5DA9 74 4F              6004 	mov	a,#0x4F
   5DAB F0                 6005 	movx	@dptr,a
                           6006 ;	genPointerSet
                           6007 ;     genFarPointerSet
   5DAC 90 09 57           6008 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0013)
   5DAF 74 2F              6009 	mov	a,#0x2F
   5DB1 F0                 6010 	movx	@dptr,a
                           6011 ;	genPointerSet
                           6012 ;     genFarPointerSet
   5DB2 90 09 58           6013 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0014)
   5DB5 74 63              6014 	mov	a,#0x63
   5DB7 F0                 6015 	movx	@dptr,a
                           6016 ;	genPointerSet
                           6017 ;     genFarPointerSet
   5DB8 90 09 59           6018 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0015)
   5DBB 74 6F              6019 	mov	a,#0x6F
   5DBD F0                 6020 	movx	@dptr,a
                           6021 ;	genPointerSet
                           6022 ;     genFarPointerSet
   5DBE 90 09 5A           6023 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0016)
   5DC1 74 72              6024 	mov	a,#0x72
   5DC3 F0                 6025 	movx	@dptr,a
                           6026 ;	genPointerSet
                           6027 ;     genFarPointerSet
   5DC4 90 09 5B           6028 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0017)
   5DC7 74 65              6029 	mov	a,#0x65
   5DC9 F0                 6030 	movx	@dptr,a
                           6031 ;	genPointerSet
                           6032 ;     genFarPointerSet
   5DCA 90 09 5C           6033 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0018)
   5DCD 74 5F              6034 	mov	a,#0x5F
   5DCF F0                 6035 	movx	@dptr,a
                           6036 ;	genPointerSet
                           6037 ;     genFarPointerSet
   5DD0 90 09 5D           6038 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0019)
   5DD3 74 67              6039 	mov	a,#0x67
   5DD5 F0                 6040 	movx	@dptr,a
                           6041 ;	genPointerSet
                           6042 ;     genFarPointerSet
   5DD6 90 09 5E           6043 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001a)
   5DD9 74 70              6044 	mov	a,#0x70
   5DDB F0                 6045 	movx	@dptr,a
                           6046 ;	genPointerSet
                           6047 ;     genFarPointerSet
   5DDC 90 09 5F           6048 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001b)
   5DDF 74 69              6049 	mov	a,#0x69
   5DE1 F0                 6050 	movx	@dptr,a
                           6051 ;	genPointerSet
                           6052 ;     genFarPointerSet
   5DE2 90 09 60           6053 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001c)
   5DE5 74 6F              6054 	mov	a,#0x6F
   5DE7 F0                 6055 	movx	@dptr,a
                           6056 ;	genPointerSet
                           6057 ;     genFarPointerSet
   5DE8 90 09 61           6058 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001d)
   5DEB 74 2E              6059 	mov	a,#0x2E
   5DED F0                 6060 	movx	@dptr,a
                           6061 ;	genPointerSet
                           6062 ;     genFarPointerSet
   5DEE 90 09 62           6063 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001e)
   5DF1 74 63              6064 	mov	a,#0x63
   5DF3 F0                 6065 	movx	@dptr,a
                           6066 ;	genPointerSet
                           6067 ;     genFarPointerSet
   5DF4 90 09 63           6068 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001f)
   5DF7 74 00              6069 	mov	a,#0x00
   5DF9 F0                 6070 	movx	@dptr,a
                           6071 ;	genAssign
   5DFA 90 00 8C           6072 	mov	dptr,#_HAL_assert_fail_PARM_2
   5DFD 74 9F              6073 	mov	a,#0x9F
   5DFF F0                 6074 	movx	@dptr,a
   5E00 A3                 6075 	inc	dptr
   5E01 74 01              6076 	mov	a,#0x01
   5E03 F0                 6077 	movx	@dptr,a
   5E04 A3                 6078 	inc	dptr
   5E05 74 00              6079 	mov	a,#0x00
   5E07 F0                 6080 	movx	@dptr,a
   5E08 A3                 6081 	inc	dptr
   5E09 74 00              6082 	mov	a,#0x00
   5E0B F0                 6083 	movx	@dptr,a
                           6084 ;	genCall
   5E0C 75 82 44           6085 	mov	dpl,#_GPIO_disable_irq_file_name_3_3
   5E0F 75 83 09           6086 	mov	dph,#(_GPIO_disable_irq_file_name_3_3 >> 8)
   5E12 75 F0 00           6087 	mov	b,#0x00
   5E15 C0 02              6088 	push	ar2
   5E17 C0 03              6089 	push	ar3
   5E19 C0 04              6090 	push	ar4
   5E1B C0 05              6091 	push	ar5
   5E1D C0 06              6092 	push	ar6
   5E1F C0 07              6093 	push	ar7
   5E21 12 05 F6           6094 	lcall	_HAL_assert_fail
   5E24 D0 07              6095 	pop	ar7
   5E26 D0 06              6096 	pop	ar6
   5E28 D0 05              6097 	pop	ar5
   5E2A D0 04              6098 	pop	ar4
   5E2C D0 03              6099 	pop	ar3
   5E2E D0 02              6100 	pop	ar2
   5E30                    6101 00104$:
                    1B4F   6102 	C$core_gpio.c$417$1$1 ==.
                           6103 ;	../drivers/CoreGPIO/core_gpio.c:417: if ( port_id < NB_OF_GPIO )
                           6104 ;	genIfx
   5E30 EF                 6105 	mov	a,r7
                           6106 ;	genIfxJump
   5E31 70 03              6107 	jnz	00114$
   5E33 02 5E 7E           6108 	ljmp	00108$
   5E36                    6109 00114$:
                    1B55   6110 	C$core_gpio.c$419$2$4 ==.
                           6111 ;	../drivers/CoreGPIO/core_gpio.c:419: cfg_reg_addr += (port_id * 4);
                           6112 ;	genMult
                           6113 ;	genMultOneByte
   5E36 EE                 6114 	mov	a,r6
   5E37 75 F0 04           6115 	mov	b,#0x04
   5E3A A4                 6116 	mul	ab
   5E3B FE                 6117 	mov	r6,a
   5E3C AF F0              6118 	mov	r7,b
                           6119 ;	genCast
   5E3E EF                 6120 	mov	a,r7
   5E3F 33                 6121 	rlc	a
   5E40 95 E0              6122 	subb	a,acc
   5E42 F8                 6123 	mov	r0,a
   5E43 F9                 6124 	mov	r1,a
                           6125 ;	genPlus
   5E44 E5 06              6126 	mov	a,ar6
   5E46 25 02              6127 	add	a,ar2
   5E48 FA                 6128 	mov	r2,a
   5E49 E5 07              6129 	mov	a,ar7
   5E4B 35 03              6130 	addc	a,ar3
   5E4D FB                 6131 	mov	r3,a
   5E4E E5 00              6132 	mov	a,ar0
   5E50 35 04              6133 	addc	a,ar4
   5E52 FC                 6134 	mov	r4,a
   5E53 E5 01              6135 	mov	a,ar1
   5E55 35 05              6136 	addc	a,ar5
   5E57 FD                 6137 	mov	r5,a
                    1B77   6138 	C$core_gpio.c$420$2$4 ==.
                           6139 ;	../drivers/CoreGPIO/core_gpio.c:420: cfg_value = HW_get_8bit_reg( cfg_reg_addr );
                           6140 ;	genCast
                           6141 ;	genCall
   5E58 8A 82              6142 	mov	dpl,r2
   5E5A 8B 83              6143 	mov	dph,r3
   5E5C C0 02              6144 	push	ar2
   5E5E C0 03              6145 	push	ar3
   5E60 12 06 A7           6146 	lcall	_HW_get_8bit_reg
   5E63 AC 82              6147 	mov	r4,dpl
   5E65 D0 03              6148 	pop	ar3
   5E67 D0 02              6149 	pop	ar2
                           6150 ;	genCast
   5E69 7D 00              6151 	mov	r5,#0x00
   5E6B 7E 00              6152 	mov	r6,#0x00
   5E6D 7F 00              6153 	mov	r7,#0x00
                    1B8E   6154 	C$core_gpio.c$421$2$4 ==.
                           6155 ;	../drivers/CoreGPIO/core_gpio.c:421: cfg_value &= ~GPIO_INT_ENABLE_MASK;
                           6156 ;	genAnd
   5E6F 53 04 F7           6157 	anl	ar4,#0xF7
                    1B91   6158 	C$core_gpio.c$422$2$4 ==.
                           6159 ;	../drivers/CoreGPIO/core_gpio.c:422: HW_set_8bit_reg( cfg_reg_addr, cfg_value );
                           6160 ;	genCast
   5E72 90 00 A9           6161 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5E75 EC                 6162 	mov	a,r4
   5E76 F0                 6163 	movx	@dptr,a
                           6164 ;	genCall
   5E77 8A 82              6165 	mov	dpl,r2
   5E79 8B 83              6166 	mov	dph,r3
   5E7B 12 06 99           6167 	lcall	_HW_set_8bit_reg
   5E7E                    6168 00108$:
                    1B9D   6169 	C$core_gpio.c$424$2$1 ==.
                    1B9D   6170 	XG$GPIO_disable_irq$0$0 ==.
   5E7E 22                 6171 	ret
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
   5E7F                    6187 _GPIO_clear_irq:
                           6188 ;	genReceive
   5E7F AA F0              6189 	mov	r2,b
   5E81 AB 83              6190 	mov	r3,dph
   5E83 E5 82              6191 	mov	a,dpl
   5E85 90 09 65           6192 	mov	dptr,#_GPIO_clear_irq_this_gpio_1_1
   5E88 F0                 6193 	movx	@dptr,a
   5E89 A3                 6194 	inc	dptr
   5E8A EB                 6195 	mov	a,r3
   5E8B F0                 6196 	movx	@dptr,a
   5E8C A3                 6197 	inc	dptr
   5E8D EA                 6198 	mov	a,r2
   5E8E F0                 6199 	movx	@dptr,a
                    1BAE   6200 	C$core_gpio.c$436$1$1 ==.
                           6201 ;	../drivers/CoreGPIO/core_gpio.c:436: uint32_t irq_clr_value = ((uint32_t)1) << ((uint32_t)port_id);
                           6202 ;	genAssign
   5E8F 90 09 64           6203 	mov	dptr,#_GPIO_clear_irq_PARM_2
   5E92 E0                 6204 	movx	a,@dptr
   5E93 FA                 6205 	mov	r2,a
                           6206 ;	genCast
   5E94 7B 00              6207 	mov	r3,#0x00
   5E96 7C 00              6208 	mov	r4,#0x00
   5E98 7D 00              6209 	mov	r5,#0x00
                           6210 ;	genLeftShift
   5E9A 8A F0              6211 	mov	b,r2
   5E9C 05 F0              6212 	inc	b
   5E9E 75 59 01           6213 	mov	_GPIO_clear_irq_sloc0_1_0,#0x01
   5EA1 75 5A 00           6214 	mov	(_GPIO_clear_irq_sloc0_1_0 + 1),#0x00
   5EA4 75 5B 00           6215 	mov	(_GPIO_clear_irq_sloc0_1_0 + 2),#0x00
   5EA7 75 5C 00           6216 	mov	(_GPIO_clear_irq_sloc0_1_0 + 3),#0x00
   5EAA 80 15              6217 	sjmp	00117$
   5EAC                    6218 00116$:
   5EAC E5 59              6219 	mov	a,_GPIO_clear_irq_sloc0_1_0
   5EAE 25 E0              6220 	add	a,acc
   5EB0 F5 59              6221 	mov	_GPIO_clear_irq_sloc0_1_0,a
   5EB2 E5 5A              6222 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   5EB4 33                 6223 	rlc	a
   5EB5 F5 5A              6224 	mov	(_GPIO_clear_irq_sloc0_1_0 + 1),a
   5EB7 E5 5B              6225 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   5EB9 33                 6226 	rlc	a
   5EBA F5 5B              6227 	mov	(_GPIO_clear_irq_sloc0_1_0 + 2),a
   5EBC E5 5C              6228 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   5EBE 33                 6229 	rlc	a
   5EBF F5 5C              6230 	mov	(_GPIO_clear_irq_sloc0_1_0 + 3),a
   5EC1                    6231 00117$:
   5EC1 D5 F0 E8           6232 	djnz	b,00116$
                    1BE3   6233 	C$core_gpio.c$438$1$1 ==.
                           6234 ;	../drivers/CoreGPIO/core_gpio.c:438: switch( this_gpio->apb_bus_width )
                           6235 ;	genAssign
   5EC4 90 09 65           6236 	mov	dptr,#_GPIO_clear_irq_this_gpio_1_1
   5EC7 E0                 6237 	movx	a,@dptr
   5EC8 FE                 6238 	mov	r6,a
   5EC9 A3                 6239 	inc	dptr
   5ECA E0                 6240 	movx	a,@dptr
   5ECB FF                 6241 	mov	r7,a
   5ECC A3                 6242 	inc	dptr
   5ECD E0                 6243 	movx	a,@dptr
   5ECE F8                 6244 	mov	r0,a
                           6245 ;	genPlus
                           6246 ;	genPlusIncr
   5ECF 74 02              6247 	mov	a,#0x02
   5ED1 25 06              6248 	add	a,ar6
   5ED3 F9                 6249 	mov	r1,a
   5ED4 74 00              6250 	mov	a,#0x00
   5ED6 35 07              6251 	addc	a,ar7
   5ED8 FA                 6252 	mov	r2,a
   5ED9 88 03              6253 	mov	ar3,r0
                           6254 ;	genPointerGet
                           6255 ;	genGenPointerGet
   5EDB 89 82              6256 	mov	dpl,r1
   5EDD 8A 83              6257 	mov	dph,r2
   5EDF 8B F0              6258 	mov	b,r3
   5EE1 12 61 48           6259 	lcall	__gptrget
   5EE4 FA                 6260 	mov	r2,a
                           6261 ;	genCmpEq
                           6262 ;	gencjneshort
   5EE5 BA 00 03           6263 	cjne	r2,#0x00,00118$
   5EE8 02 5F 91           6264 	ljmp	00103$
   5EEB                    6265 00118$:
                           6266 ;	genCmpEq
                           6267 ;	gencjneshort
   5EEB BA 01 03           6268 	cjne	r2,#0x01,00119$
   5EEE 02 5F 2E           6269 	ljmp	00102$
   5EF1                    6270 00119$:
                           6271 ;	genCmpEq
                           6272 ;	gencjneshort
   5EF1 BA 02 02           6273 	cjne	r2,#0x02,00120$
   5EF4 80 03              6274 	sjmp	00121$
   5EF6                    6275 00120$:
   5EF6 02 60 50           6276 	ljmp	00107$
   5EF9                    6277 00121$:
                    1C18   6278 	C$core_gpio.c$441$2$2 ==.
                           6279 ;	../drivers/CoreGPIO/core_gpio.c:441: HAL_set_32bit_reg( this_gpio->base_addr, IRQ, irq_clr_value );
                           6280 ;	genPointerGet
                           6281 ;	genGenPointerGet
   5EF9 8E 82              6282 	mov	dpl,r6
   5EFB 8F 83              6283 	mov	dph,r7
   5EFD 88 F0              6284 	mov	b,r0
   5EFF 12 61 48           6285 	lcall	__gptrget
   5F02 FA                 6286 	mov	r2,a
   5F03 A3                 6287 	inc	dptr
   5F04 12 61 48           6288 	lcall	__gptrget
   5F07 FB                 6289 	mov	r3,a
                           6290 ;	genPlus
                           6291 ;	genPlusIncr
   5F08 74 80              6292 	mov	a,#0x80
   5F0A 25 02              6293 	add	a,ar2
   5F0C FA                 6294 	mov	r2,a
   5F0D 74 00              6295 	mov	a,#0x00
   5F0F 35 03              6296 	addc	a,ar3
   5F11 FB                 6297 	mov	r3,a
                           6298 ;	genAssign
   5F12 90 00 AA           6299 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   5F15 E5 59              6300 	mov	a,_GPIO_clear_irq_sloc0_1_0
   5F17 F0                 6301 	movx	@dptr,a
   5F18 A3                 6302 	inc	dptr
   5F19 E5 5A              6303 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   5F1B F0                 6304 	movx	@dptr,a
   5F1C A3                 6305 	inc	dptr
   5F1D E5 5B              6306 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   5F1F F0                 6307 	movx	@dptr,a
   5F20 A3                 6308 	inc	dptr
   5F21 E5 5C              6309 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   5F23 F0                 6310 	movx	@dptr,a
                           6311 ;	genCall
   5F24 8A 82              6312 	mov	dpl,r2
   5F26 8B 83              6313 	mov	dph,r3
   5F28 12 06 62           6314 	lcall	_HW_set_32bit_reg
                    1C4A   6315 	C$core_gpio.c$442$2$2 ==.
                           6316 ;	../drivers/CoreGPIO/core_gpio.c:442: break;
   5F2B 02 61 2E           6317 	ljmp	00111$
                    1C4D   6318 	C$core_gpio.c$444$2$2 ==.
                           6319 ;	../drivers/CoreGPIO/core_gpio.c:444: case GPIO_APB_16_BITS_BUS:
   5F2E                    6320 00102$:
                    1C4D   6321 	C$core_gpio.c$445$2$2 ==.
                           6322 ;	../drivers/CoreGPIO/core_gpio.c:445: HAL_set_16bit_reg( this_gpio->base_addr, IRQ0, irq_clr_value );
                           6323 ;	genPointerGet
                           6324 ;	genGenPointerGet
   5F2E 8E 82              6325 	mov	dpl,r6
   5F30 8F 83              6326 	mov	dph,r7
   5F32 88 F0              6327 	mov	b,r0
   5F34 12 61 48           6328 	lcall	__gptrget
   5F37 FA                 6329 	mov	r2,a
   5F38 A3                 6330 	inc	dptr
   5F39 12 61 48           6331 	lcall	__gptrget
   5F3C FB                 6332 	mov	r3,a
                           6333 ;	genPlus
                           6334 ;	genPlusIncr
   5F3D 74 80              6335 	mov	a,#0x80
   5F3F 25 02              6336 	add	a,ar2
   5F41 FA                 6337 	mov	r2,a
   5F42 74 00              6338 	mov	a,#0x00
   5F44 35 03              6339 	addc	a,ar3
   5F46 FB                 6340 	mov	r3,a
                           6341 ;	genCast
   5F47 90 00 A7           6342 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   5F4A E5 59              6343 	mov	a,_GPIO_clear_irq_sloc0_1_0
   5F4C F0                 6344 	movx	@dptr,a
   5F4D A3                 6345 	inc	dptr
   5F4E E5 5A              6346 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   5F50 F0                 6347 	movx	@dptr,a
                           6348 ;	genCall
   5F51 8A 82              6349 	mov	dpl,r2
   5F53 8B 83              6350 	mov	dph,r3
   5F55 C0 06              6351 	push	ar6
   5F57 C0 07              6352 	push	ar7
   5F59 C0 00              6353 	push	ar0
   5F5B 12 06 7E           6354 	lcall	_HW_set_16bit_reg
   5F5E D0 00              6355 	pop	ar0
   5F60 D0 07              6356 	pop	ar7
   5F62 D0 06              6357 	pop	ar6
                    1C83   6358 	C$core_gpio.c$446$2$2 ==.
                           6359 ;	../drivers/CoreGPIO/core_gpio.c:446: HAL_set_16bit_reg( this_gpio->base_addr, IRQ1, irq_clr_value >> 16 );
                           6360 ;	genPointerGet
                           6361 ;	genGenPointerGet
   5F64 8E 82              6362 	mov	dpl,r6
   5F66 8F 83              6363 	mov	dph,r7
   5F68 88 F0              6364 	mov	b,r0
   5F6A 12 61 48           6365 	lcall	__gptrget
   5F6D FA                 6366 	mov	r2,a
   5F6E A3                 6367 	inc	dptr
   5F6F 12 61 48           6368 	lcall	__gptrget
   5F72 FB                 6369 	mov	r3,a
                           6370 ;	genPlus
                           6371 ;	genPlusIncr
   5F73 74 84              6372 	mov	a,#0x84
   5F75 25 02              6373 	add	a,ar2
   5F77 FA                 6374 	mov	r2,a
   5F78 74 00              6375 	mov	a,#0x00
   5F7A 35 03              6376 	addc	a,ar3
   5F7C FB                 6377 	mov	r3,a
                           6378 ;	genGetWord
   5F7D 90 00 A7           6379 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   5F80 E5 5B              6380 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   5F82 F0                 6381 	movx	@dptr,a
   5F83 A3                 6382 	inc	dptr
   5F84 E5 5C              6383 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   5F86 F0                 6384 	movx	@dptr,a
                           6385 ;	genCall
   5F87 8A 82              6386 	mov	dpl,r2
   5F89 8B 83              6387 	mov	dph,r3
   5F8B 12 06 7E           6388 	lcall	_HW_set_16bit_reg
                    1CAD   6389 	C$core_gpio.c$447$2$2 ==.
                           6390 ;	../drivers/CoreGPIO/core_gpio.c:447: break;
   5F8E 02 61 2E           6391 	ljmp	00111$
                    1CB0   6392 	C$core_gpio.c$449$2$2 ==.
                           6393 ;	../drivers/CoreGPIO/core_gpio.c:449: case GPIO_APB_8_BITS_BUS:
   5F91                    6394 00103$:
                    1CB0   6395 	C$core_gpio.c$450$2$2 ==.
                           6396 ;	../drivers/CoreGPIO/core_gpio.c:450: HAL_set_8bit_reg( this_gpio->base_addr, IRQ0, irq_clr_value );
                           6397 ;	genPointerGet
                           6398 ;	genGenPointerGet
   5F91 8E 82              6399 	mov	dpl,r6
   5F93 8F 83              6400 	mov	dph,r7
   5F95 88 F0              6401 	mov	b,r0
   5F97 12 61 48           6402 	lcall	__gptrget
   5F9A FA                 6403 	mov	r2,a
   5F9B A3                 6404 	inc	dptr
   5F9C 12 61 48           6405 	lcall	__gptrget
   5F9F FB                 6406 	mov	r3,a
                           6407 ;	genPlus
                           6408 ;	genPlusIncr
   5FA0 74 80              6409 	mov	a,#0x80
   5FA2 25 02              6410 	add	a,ar2
   5FA4 FA                 6411 	mov	r2,a
   5FA5 74 00              6412 	mov	a,#0x00
   5FA7 35 03              6413 	addc	a,ar3
   5FA9 FB                 6414 	mov	r3,a
                           6415 ;	genCast
   5FAA 90 00 A9           6416 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5FAD E5 59              6417 	mov	a,_GPIO_clear_irq_sloc0_1_0
   5FAF F0                 6418 	movx	@dptr,a
                           6419 ;	genCall
   5FB0 8A 82              6420 	mov	dpl,r2
   5FB2 8B 83              6421 	mov	dph,r3
   5FB4 C0 06              6422 	push	ar6
   5FB6 C0 07              6423 	push	ar7
   5FB8 C0 00              6424 	push	ar0
   5FBA 12 06 99           6425 	lcall	_HW_set_8bit_reg
   5FBD D0 00              6426 	pop	ar0
   5FBF D0 07              6427 	pop	ar7
   5FC1 D0 06              6428 	pop	ar6
                    1CE2   6429 	C$core_gpio.c$451$2$2 ==.
                           6430 ;	../drivers/CoreGPIO/core_gpio.c:451: HAL_set_8bit_reg( this_gpio->base_addr, IRQ1, irq_clr_value >> 8 );
                           6431 ;	genPointerGet
                           6432 ;	genGenPointerGet
   5FC3 8E 82              6433 	mov	dpl,r6
   5FC5 8F 83              6434 	mov	dph,r7
   5FC7 88 F0              6435 	mov	b,r0
   5FC9 12 61 48           6436 	lcall	__gptrget
   5FCC FA                 6437 	mov	r2,a
   5FCD A3                 6438 	inc	dptr
   5FCE 12 61 48           6439 	lcall	__gptrget
   5FD1 FB                 6440 	mov	r3,a
                           6441 ;	genPlus
                           6442 ;	genPlusIncr
   5FD2 74 84              6443 	mov	a,#0x84
   5FD4 25 02              6444 	add	a,ar2
   5FD6 FA                 6445 	mov	r2,a
   5FD7 74 00              6446 	mov	a,#0x00
   5FD9 35 03              6447 	addc	a,ar3
   5FDB FB                 6448 	mov	r3,a
                           6449 ;	genGetByte
   5FDC 90 00 A9           6450 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   5FDF E5 5A              6451 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   5FE1 F0                 6452 	movx	@dptr,a
                           6453 ;	genCall
   5FE2 8A 82              6454 	mov	dpl,r2
   5FE4 8B 83              6455 	mov	dph,r3
   5FE6 C0 06              6456 	push	ar6
   5FE8 C0 07              6457 	push	ar7
   5FEA C0 00              6458 	push	ar0
   5FEC 12 06 99           6459 	lcall	_HW_set_8bit_reg
   5FEF D0 00              6460 	pop	ar0
   5FF1 D0 07              6461 	pop	ar7
   5FF3 D0 06              6462 	pop	ar6
                    1D14   6463 	C$core_gpio.c$452$2$2 ==.
                           6464 ;	../drivers/CoreGPIO/core_gpio.c:452: HAL_set_8bit_reg( this_gpio->base_addr, IRQ2, irq_clr_value >> 16 );
                           6465 ;	genPointerGet
                           6466 ;	genGenPointerGet
   5FF5 8E 82              6467 	mov	dpl,r6
   5FF7 8F 83              6468 	mov	dph,r7
   5FF9 88 F0              6469 	mov	b,r0
   5FFB 12 61 48           6470 	lcall	__gptrget
   5FFE FA                 6471 	mov	r2,a
   5FFF A3                 6472 	inc	dptr
   6000 12 61 48           6473 	lcall	__gptrget
   6003 FB                 6474 	mov	r3,a
                           6475 ;	genPlus
                           6476 ;	genPlusIncr
   6004 74 88              6477 	mov	a,#0x88
   6006 25 02              6478 	add	a,ar2
   6008 FA                 6479 	mov	r2,a
   6009 74 00              6480 	mov	a,#0x00
   600B 35 03              6481 	addc	a,ar3
   600D FB                 6482 	mov	r3,a
                           6483 ;	genGetByte
   600E 90 00 A9           6484 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6011 E5 5B              6485 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   6013 F0                 6486 	movx	@dptr,a
                           6487 ;	genCall
   6014 8A 82              6488 	mov	dpl,r2
   6016 8B 83              6489 	mov	dph,r3
   6018 C0 06              6490 	push	ar6
   601A C0 07              6491 	push	ar7
   601C C0 00              6492 	push	ar0
   601E 12 06 99           6493 	lcall	_HW_set_8bit_reg
   6021 D0 00              6494 	pop	ar0
   6023 D0 07              6495 	pop	ar7
   6025 D0 06              6496 	pop	ar6
                    1D46   6497 	C$core_gpio.c$453$2$2 ==.
                           6498 ;	../drivers/CoreGPIO/core_gpio.c:453: HAL_set_8bit_reg( this_gpio->base_addr, IRQ3, irq_clr_value >> 24 );
                           6499 ;	genPointerGet
                           6500 ;	genGenPointerGet
   6027 8E 82              6501 	mov	dpl,r6
   6029 8F 83              6502 	mov	dph,r7
   602B 88 F0              6503 	mov	b,r0
   602D 12 61 48           6504 	lcall	__gptrget
   6030 FE                 6505 	mov	r6,a
   6031 A3                 6506 	inc	dptr
   6032 12 61 48           6507 	lcall	__gptrget
   6035 FF                 6508 	mov	r7,a
                           6509 ;	genPlus
                           6510 ;	genPlusIncr
   6036 74 8C              6511 	mov	a,#0x8C
   6038 25 06              6512 	add	a,ar6
   603A FE                 6513 	mov	r6,a
   603B 74 00              6514 	mov	a,#0x00
   603D 35 07              6515 	addc	a,ar7
   603F FF                 6516 	mov	r7,a
                           6517 ;	genGetByte
   6040 90 00 A9           6518 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6043 E5 5C              6519 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   6045 F0                 6520 	movx	@dptr,a
                           6521 ;	genCall
   6046 8E 82              6522 	mov	dpl,r6
   6048 8F 83              6523 	mov	dph,r7
   604A 12 06 99           6524 	lcall	_HW_set_8bit_reg
                    1D6C   6525 	C$core_gpio.c$454$2$2 ==.
                           6526 ;	../drivers/CoreGPIO/core_gpio.c:454: break;
   604D 02 61 2E           6527 	ljmp	00111$
                    1D6F   6528 	C$core_gpio.c$457$2$2 ==.
                           6529 ;	../drivers/CoreGPIO/core_gpio.c:457: HAL_ASSERT(0);
   6050                    6530 00107$:
                           6531 ;	genPointerSet
                           6532 ;     genFarPointerSet
   6050 90 09 68           6533 	mov	dptr,#_GPIO_clear_irq_file_name_4_4
   6053 74 2E              6534 	mov	a,#0x2E
   6055 F0                 6535 	movx	@dptr,a
                           6536 ;	genPointerSet
                           6537 ;     genFarPointerSet
   6056 90 09 69           6538 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0001)
   6059 74 2E              6539 	mov	a,#0x2E
   605B F0                 6540 	movx	@dptr,a
                           6541 ;	genPointerSet
                           6542 ;     genFarPointerSet
   605C 90 09 6A           6543 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0002)
   605F 74 2F              6544 	mov	a,#0x2F
   6061 F0                 6545 	movx	@dptr,a
                           6546 ;	genPointerSet
                           6547 ;     genFarPointerSet
   6062 90 09 6B           6548 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0003)
   6065 74 64              6549 	mov	a,#0x64
   6067 F0                 6550 	movx	@dptr,a
                           6551 ;	genPointerSet
                           6552 ;     genFarPointerSet
   6068 90 09 6C           6553 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0004)
   606B 74 72              6554 	mov	a,#0x72
   606D F0                 6555 	movx	@dptr,a
                           6556 ;	genPointerSet
                           6557 ;     genFarPointerSet
   606E 90 09 6D           6558 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0005)
   6071 74 69              6559 	mov	a,#0x69
   6073 F0                 6560 	movx	@dptr,a
                           6561 ;	genPointerSet
                           6562 ;     genFarPointerSet
   6074 90 09 6E           6563 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0006)
   6077 74 76              6564 	mov	a,#0x76
   6079 F0                 6565 	movx	@dptr,a
                           6566 ;	genPointerSet
                           6567 ;     genFarPointerSet
   607A 90 09 6F           6568 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0007)
   607D 74 65              6569 	mov	a,#0x65
   607F F0                 6570 	movx	@dptr,a
                           6571 ;	genPointerSet
                           6572 ;     genFarPointerSet
   6080 90 09 70           6573 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0008)
   6083 74 72              6574 	mov	a,#0x72
   6085 F0                 6575 	movx	@dptr,a
                           6576 ;	genPointerSet
                           6577 ;     genFarPointerSet
   6086 90 09 71           6578 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0009)
   6089 74 73              6579 	mov	a,#0x73
   608B F0                 6580 	movx	@dptr,a
                           6581 ;	genPointerSet
                           6582 ;     genFarPointerSet
   608C 90 09 72           6583 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000a)
   608F 74 2F              6584 	mov	a,#0x2F
   6091 F0                 6585 	movx	@dptr,a
                           6586 ;	genPointerSet
                           6587 ;     genFarPointerSet
   6092 90 09 73           6588 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000b)
   6095 74 43              6589 	mov	a,#0x43
   6097 F0                 6590 	movx	@dptr,a
                           6591 ;	genPointerSet
                           6592 ;     genFarPointerSet
   6098 90 09 74           6593 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000c)
   609B 74 6F              6594 	mov	a,#0x6F
   609D F0                 6595 	movx	@dptr,a
                           6596 ;	genPointerSet
                           6597 ;     genFarPointerSet
   609E 90 09 75           6598 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000d)
   60A1 74 72              6599 	mov	a,#0x72
   60A3 F0                 6600 	movx	@dptr,a
                           6601 ;	genPointerSet
                           6602 ;     genFarPointerSet
   60A4 90 09 76           6603 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000e)
   60A7 74 65              6604 	mov	a,#0x65
   60A9 F0                 6605 	movx	@dptr,a
                           6606 ;	genPointerSet
                           6607 ;     genFarPointerSet
   60AA 90 09 77           6608 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000f)
   60AD 74 47              6609 	mov	a,#0x47
   60AF F0                 6610 	movx	@dptr,a
                           6611 ;	genPointerSet
                           6612 ;     genFarPointerSet
   60B0 90 09 78           6613 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0010)
   60B3 74 50              6614 	mov	a,#0x50
   60B5 F0                 6615 	movx	@dptr,a
                           6616 ;	genPointerSet
                           6617 ;     genFarPointerSet
   60B6 90 09 79           6618 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0011)
   60B9 74 49              6619 	mov	a,#0x49
   60BB F0                 6620 	movx	@dptr,a
                           6621 ;	genPointerSet
                           6622 ;     genFarPointerSet
   60BC 90 09 7A           6623 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0012)
   60BF 74 4F              6624 	mov	a,#0x4F
   60C1 F0                 6625 	movx	@dptr,a
                           6626 ;	genPointerSet
                           6627 ;     genFarPointerSet
   60C2 90 09 7B           6628 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0013)
   60C5 74 2F              6629 	mov	a,#0x2F
   60C7 F0                 6630 	movx	@dptr,a
                           6631 ;	genPointerSet
                           6632 ;     genFarPointerSet
   60C8 90 09 7C           6633 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0014)
   60CB 74 63              6634 	mov	a,#0x63
   60CD F0                 6635 	movx	@dptr,a
                           6636 ;	genPointerSet
                           6637 ;     genFarPointerSet
   60CE 90 09 7D           6638 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0015)
   60D1 74 6F              6639 	mov	a,#0x6F
   60D3 F0                 6640 	movx	@dptr,a
                           6641 ;	genPointerSet
                           6642 ;     genFarPointerSet
   60D4 90 09 7E           6643 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0016)
   60D7 74 72              6644 	mov	a,#0x72
   60D9 F0                 6645 	movx	@dptr,a
                           6646 ;	genPointerSet
                           6647 ;     genFarPointerSet
   60DA 90 09 7F           6648 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0017)
   60DD 74 65              6649 	mov	a,#0x65
   60DF F0                 6650 	movx	@dptr,a
                           6651 ;	genPointerSet
                           6652 ;     genFarPointerSet
   60E0 90 09 80           6653 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0018)
   60E3 74 5F              6654 	mov	a,#0x5F
   60E5 F0                 6655 	movx	@dptr,a
                           6656 ;	genPointerSet
                           6657 ;     genFarPointerSet
   60E6 90 09 81           6658 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0019)
   60E9 74 67              6659 	mov	a,#0x67
   60EB F0                 6660 	movx	@dptr,a
                           6661 ;	genPointerSet
                           6662 ;     genFarPointerSet
   60EC 90 09 82           6663 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001a)
   60EF 74 70              6664 	mov	a,#0x70
   60F1 F0                 6665 	movx	@dptr,a
                           6666 ;	genPointerSet
                           6667 ;     genFarPointerSet
   60F2 90 09 83           6668 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001b)
   60F5 74 69              6669 	mov	a,#0x69
   60F7 F0                 6670 	movx	@dptr,a
                           6671 ;	genPointerSet
                           6672 ;     genFarPointerSet
   60F8 90 09 84           6673 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001c)
   60FB 74 6F              6674 	mov	a,#0x6F
   60FD F0                 6675 	movx	@dptr,a
                           6676 ;	genPointerSet
                           6677 ;     genFarPointerSet
   60FE 90 09 85           6678 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001d)
   6101 74 2E              6679 	mov	a,#0x2E
   6103 F0                 6680 	movx	@dptr,a
                           6681 ;	genPointerSet
                           6682 ;     genFarPointerSet
   6104 90 09 86           6683 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001e)
   6107 74 63              6684 	mov	a,#0x63
   6109 F0                 6685 	movx	@dptr,a
                           6686 ;	genPointerSet
                           6687 ;     genFarPointerSet
   610A 90 09 87           6688 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001f)
   610D 74 00              6689 	mov	a,#0x00
   610F F0                 6690 	movx	@dptr,a
                           6691 ;	genAssign
   6110 90 00 8C           6692 	mov	dptr,#_HAL_assert_fail_PARM_2
   6113 74 C9              6693 	mov	a,#0xC9
   6115 F0                 6694 	movx	@dptr,a
   6116 A3                 6695 	inc	dptr
   6117 74 01              6696 	mov	a,#0x01
   6119 F0                 6697 	movx	@dptr,a
   611A A3                 6698 	inc	dptr
   611B 74 00              6699 	mov	a,#0x00
   611D F0                 6700 	movx	@dptr,a
   611E A3                 6701 	inc	dptr
   611F 74 00              6702 	mov	a,#0x00
   6121 F0                 6703 	movx	@dptr,a
                           6704 ;	genCall
   6122 75 82 68           6705 	mov	dpl,#_GPIO_clear_irq_file_name_4_4
   6125 75 83 09           6706 	mov	dph,#(_GPIO_clear_irq_file_name_4_4 >> 8)
   6128 75 F0 00           6707 	mov	b,#0x00
   612B 12 05 F6           6708 	lcall	_HAL_assert_fail
                    1E4D   6709 	C$core_gpio.c$459$1$1 ==.
                           6710 ;	../drivers/CoreGPIO/core_gpio.c:459: }
   612E                    6711 00111$:
                    1E4D   6712 	C$core_gpio.c$460$1$1 ==.
                    1E4D   6713 	XG$GPIO_clear_irq$0$0 ==.
   612E 22                 6714 	ret
                           6715 	.area CSEG    (CODE)
                           6716 	.area CONST   (CODE)
                           6717 	.area XINIT   (CODE)
                           6718 	.area CABS    (ABS,CODE)
