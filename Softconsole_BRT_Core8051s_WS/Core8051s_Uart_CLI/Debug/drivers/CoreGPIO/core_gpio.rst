                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.3 #4543 (Dec 31 2006)
                              4 ; This file generated Tue May 03 17:52:21 2016
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
   005A                      52 _GPIO_set_outputs_sloc1_1_0:
   005A                      53 	.ds 4
                    0004     54 LGPIO_set_outputs$sloc2$1$0==.
   005E                      55 _GPIO_set_outputs_sloc2_1_0:
   005E                      56 	.ds 4
                    0008     57 LGPIO_set_output$sloc0$1$0==.
   0062                      58 _GPIO_set_output_sloc0_1_0:
   0062                      59 	.ds 4
                    000C     60 LGPIO_set_output$sloc2$1$0==.
   0066                      61 _GPIO_set_output_sloc2_1_0:
   0066                      62 	.ds 4
                    0010     63 LGPIO_clear_irq$sloc0$1$0==.
   006A                      64 _GPIO_clear_irq_sloc0_1_0:
   006A                      65 	.ds 4
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
   0B2B                      92 _GPIO_init_PARM_2:
   0B2B                      93 	.ds 2
                    0002     94 LGPIO_init$bus_width$1$1==.
   0B2D                      95 _GPIO_init_PARM_3:
   0B2D                      96 	.ds 1
                    0003     97 LGPIO_init$this_gpio$1$1==.
   0B2E                      98 _GPIO_init_this_gpio_1_1:
   0B2E                      99 	.ds 3
                    0006    100 LGPIO_init$i$1$1==.
   0B31                     101 _GPIO_init_i_1_1:
   0B31                     102 	.ds 1
                    0007    103 LGPIO_init$cfg_reg_addr$1$1==.
   0B32                     104 _GPIO_init_cfg_reg_addr_1_1:
   0B32                     105 	.ds 2
                    0009    106 LGPIO_init$file_name$4$5==.
   0B34                     107 _GPIO_init_file_name_4_5:
   0B34                     108 	.ds 32
                    0029    109 LGPIO_config$port_id$1$1==.
   0B54                     110 _GPIO_config_PARM_2:
   0B54                     111 	.ds 1
                    002A    112 LGPIO_config$config$1$1==.
   0B55                     113 _GPIO_config_PARM_3:
   0B55                     114 	.ds 4
                    002E    115 LGPIO_config$this_gpio$1$1==.
   0B59                     116 _GPIO_config_this_gpio_1_1:
   0B59                     117 	.ds 3
                    0031    118 LGPIO_config$file_name$3$3==.
   0B5C                     119 _GPIO_config_file_name_3_3:
   0B5C                     120 	.ds 32
                    0051    121 LGPIO_config$file_name$4$6==.
   0B7C                     122 _GPIO_config_file_name_4_6:
   0B7C                     123 	.ds 32
                    0071    124 LGPIO_set_outputs$value$1$1==.
   0B9C                     125 _GPIO_set_outputs_PARM_2:
   0B9C                     126 	.ds 4
                    0075    127 LGPIO_set_outputs$this_gpio$1$1==.
   0BA0                     128 _GPIO_set_outputs_this_gpio_1_1:
   0BA0                     129 	.ds 3
                    0078    130 LGPIO_set_outputs$file_name$4$4==.
   0BA3                     131 _GPIO_set_outputs_file_name_4_4:
   0BA3                     132 	.ds 32
                    0098    133 LGPIO_set_outputs$file_name$3$6==.
   0BC3                     134 _GPIO_set_outputs_file_name_3_6:
   0BC3                     135 	.ds 32
                    00B8    136 LGPIO_get_inputs$this_gpio$1$1==.
   0BE3                     137 _GPIO_get_inputs_this_gpio_1_1:
   0BE3                     138 	.ds 3
                    00BB    139 LGPIO_get_inputs$gpio_in$1$1==.
   0BE6                     140 _GPIO_get_inputs_gpio_in_1_1:
   0BE6                     141 	.ds 4
                    00BF    142 LGPIO_get_inputs$file_name$4$4==.
   0BEA                     143 _GPIO_get_inputs_file_name_4_4:
   0BEA                     144 	.ds 32
                    00DF    145 LGPIO_get_outputs$this_gpio$1$1==.
   0C0A                     146 _GPIO_get_outputs_this_gpio_1_1:
   0C0A                     147 	.ds 3
                    00E2    148 LGPIO_get_outputs$gpio_out$1$1==.
   0C0D                     149 _GPIO_get_outputs_gpio_out_1_1:
   0C0D                     150 	.ds 4
                    00E6    151 LGPIO_get_outputs$file_name$4$4==.
   0C11                     152 _GPIO_get_outputs_file_name_4_4:
   0C11                     153 	.ds 32
                    0106    154 LGPIO_set_output$port_id$1$1==.
   0C31                     155 _GPIO_set_output_PARM_2:
   0C31                     156 	.ds 1
                    0107    157 LGPIO_set_output$value$1$1==.
   0C32                     158 _GPIO_set_output_PARM_3:
   0C32                     159 	.ds 1
                    0108    160 LGPIO_set_output$this_gpio$1$1==.
   0C33                     161 _GPIO_set_output_this_gpio_1_1:
   0C33                     162 	.ds 3
                    010B    163 LGPIO_set_output$file_name$3$3==.
   0C36                     164 _GPIO_set_output_file_name_3_3:
   0C36                     165 	.ds 32
                    012B    166 LGPIO_set_output$outputs_state$3$5==.
   0C56                     167 _GPIO_set_output_outputs_state_3_5:
   0C56                     168 	.ds 4
                    012F    169 LGPIO_set_output$file_name$5$9==.
   0C5A                     170 _GPIO_set_output_file_name_5_9:
   0C5A                     171 	.ds 32
                    014F    172 LGPIO_set_output$outputs_state$3$10==.
   0C7A                     173 _GPIO_set_output_outputs_state_3_10:
   0C7A                     174 	.ds 2
                    0151    175 LGPIO_set_output$file_name$5$14==.
   0C7C                     176 _GPIO_set_output_file_name_5_14:
   0C7C                     177 	.ds 32
                    0171    178 LGPIO_set_output$outputs_state$3$15==.
   0C9C                     179 _GPIO_set_output_outputs_state_3_15:
   0C9C                     180 	.ds 1
                    0172    181 LGPIO_set_output$file_name$5$19==.
   0C9D                     182 _GPIO_set_output_file_name_5_19:
   0C9D                     183 	.ds 32
                    0192    184 LGPIO_set_output$file_name$4$21==.
   0CBD                     185 _GPIO_set_output_file_name_4_21:
   0CBD                     186 	.ds 32
                    01B2    187 LGPIO_drive_inout$port_id$1$1==.
   0CDD                     188 _GPIO_drive_inout_PARM_2:
   0CDD                     189 	.ds 1
                    01B3    190 LGPIO_drive_inout$inout_state$1$1==.
   0CDE                     191 _GPIO_drive_inout_PARM_3:
   0CDE                     192 	.ds 1
                    01B4    193 LGPIO_drive_inout$this_gpio$1$1==.
   0CDF                     194 _GPIO_drive_inout_this_gpio_1_1:
   0CDF                     195 	.ds 3
                    01B7    196 LGPIO_drive_inout$file_name$3$3==.
   0CE2                     197 _GPIO_drive_inout_file_name_3_3:
   0CE2                     198 	.ds 32
                    01D7    199 LGPIO_drive_inout$file_name$4$6==.
   0D02                     200 _GPIO_drive_inout_file_name_4_6:
   0D02                     201 	.ds 32
                    01F7    202 LGPIO_enable_irq$port_id$1$1==.
   0D22                     203 _GPIO_enable_irq_PARM_2:
   0D22                     204 	.ds 1
                    01F8    205 LGPIO_enable_irq$this_gpio$1$1==.
   0D23                     206 _GPIO_enable_irq_this_gpio_1_1:
   0D23                     207 	.ds 3
                    01FB    208 LGPIO_enable_irq$file_name$3$3==.
   0D26                     209 _GPIO_enable_irq_file_name_3_3:
   0D26                     210 	.ds 32
                    021B    211 LGPIO_disable_irq$port_id$1$1==.
   0D46                     212 _GPIO_disable_irq_PARM_2:
   0D46                     213 	.ds 1
                    021C    214 LGPIO_disable_irq$this_gpio$1$1==.
   0D47                     215 _GPIO_disable_irq_this_gpio_1_1:
   0D47                     216 	.ds 3
                    021F    217 LGPIO_disable_irq$file_name$3$3==.
   0D4A                     218 _GPIO_disable_irq_file_name_3_3:
   0D4A                     219 	.ds 32
                    023F    220 LGPIO_clear_irq$port_id$1$1==.
   0D6A                     221 _GPIO_clear_irq_PARM_2:
   0D6A                     222 	.ds 1
                    0240    223 LGPIO_clear_irq$this_gpio$1$1==.
   0D6B                     224 _GPIO_clear_irq_this_gpio_1_1:
   0D6B                     225 	.ds 3
                    0243    226 LGPIO_clear_irq$file_name$4$4==.
   0D6E                     227 _GPIO_clear_irq_file_name_4_4:
   0D6E                     228 	.ds 32
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
   512F                     275 _GPIO_init:
                    0002    276 	ar2 = 0x02
                    0003    277 	ar3 = 0x03
                    0004    278 	ar4 = 0x04
                    0005    279 	ar5 = 0x05
                    0006    280 	ar6 = 0x06
                    0007    281 	ar7 = 0x07
                    0000    282 	ar0 = 0x00
                    0001    283 	ar1 = 0x01
                            284 ;	genReceive
   512F AA F0               285 	mov	r2,b
   5131 AB 83               286 	mov	r3,dph
   5133 E5 82               287 	mov	a,dpl
   5135 90 0B 2E            288 	mov	dptr,#_GPIO_init_this_gpio_1_1
   5138 F0                  289 	movx	@dptr,a
   5139 A3                  290 	inc	dptr
   513A EB                  291 	mov	a,r3
   513B F0                  292 	movx	@dptr,a
   513C A3                  293 	inc	dptr
   513D EA                  294 	mov	a,r2
   513E F0                  295 	movx	@dptr,a
                    0010    296 	C$core_gpio.c$39$1$0 ==.
                            297 ;	../drivers/CoreGPIO/core_gpio.c:39: addr_t cfg_reg_addr = base_addr;
                            298 ;	genAssign
   513F 90 0B 2B            299 	mov	dptr,#_GPIO_init_PARM_2
   5142 E0                  300 	movx	a,@dptr
   5143 FA                  301 	mov	r2,a
   5144 A3                  302 	inc	dptr
   5145 E0                  303 	movx	a,@dptr
   5146 FB                  304 	mov	r3,a
                    0018    305 	C$core_gpio.c$41$1$1 ==.
                            306 ;	../drivers/CoreGPIO/core_gpio.c:41: this_gpio->base_addr = base_addr;
                            307 ;	genAssign
   5147 90 0B 2E            308 	mov	dptr,#_GPIO_init_this_gpio_1_1
   514A E0                  309 	movx	a,@dptr
   514B FC                  310 	mov	r4,a
   514C A3                  311 	inc	dptr
   514D E0                  312 	movx	a,@dptr
   514E FD                  313 	mov	r5,a
   514F A3                  314 	inc	dptr
   5150 E0                  315 	movx	a,@dptr
   5151 FE                  316 	mov	r6,a
                            317 ;	genPointerSet
                            318 ;	genGenPointerSet
   5152 8C 82               319 	mov	dpl,r4
   5154 8D 83               320 	mov	dph,r5
   5156 8E F0               321 	mov	b,r6
   5158 EA                  322 	mov	a,r2
   5159 12 70 17            323 	lcall	__gptrput
   515C A3                  324 	inc	dptr
   515D EB                  325 	mov	a,r3
   515E 12 70 17            326 	lcall	__gptrput
                    0032    327 	C$core_gpio.c$42$1$1 ==.
                            328 ;	../drivers/CoreGPIO/core_gpio.c:42: this_gpio->apb_bus_width = bus_width;
                            329 ;	genPlus
                            330 ;	genPlusIncr
   5161 74 02               331 	mov	a,#0x02
   5163 25 04               332 	add	a,ar4
   5165 FC                  333 	mov	r4,a
   5166 74 00               334 	mov	a,#0x00
   5168 35 05               335 	addc	a,ar5
   516A FD                  336 	mov	r5,a
                            337 ;	genAssign
   516B 90 0B 2D            338 	mov	dptr,#_GPIO_init_PARM_3
   516E E0                  339 	movx	a,@dptr
   516F FF                  340 	mov	r7,a
                            341 ;	genPointerSet
                            342 ;	genGenPointerSet
   5170 8C 82               343 	mov	dpl,r4
   5172 8D 83               344 	mov	dph,r5
   5174 8E F0               345 	mov	b,r6
   5176 EF                  346 	mov	a,r7
   5177 12 70 17            347 	lcall	__gptrput
                    004B    348 	C$core_gpio.c$45$1$1 ==.
                            349 ;	../drivers/CoreGPIO/core_gpio.c:45: for( i = 0, cfg_reg_addr = base_addr; i < NB_OF_GPIO; ++i )
                            350 ;	genAssign
   517A 90 0B 31            351 	mov	dptr,#_GPIO_init_i_1_1
   517D 74 00               352 	mov	a,#0x00
   517F F0                  353 	movx	@dptr,a
                            354 ;	genAssign
   5180 90 0B 32            355 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
   5183 EA                  356 	mov	a,r2
   5184 F0                  357 	movx	@dptr,a
   5185 A3                  358 	inc	dptr
   5186 EB                  359 	mov	a,r3
   5187 F0                  360 	movx	@dptr,a
   5188                     361 00111$:
                            362 ;	genAssign
   5188 90 0B 31            363 	mov	dptr,#_GPIO_init_i_1_1
   518B E0                  364 	movx	a,@dptr
   518C FA                  365 	mov	r2,a
                            366 ;	genCmpLt
                            367 ;	genCmp
   518D BA 20 00            368 	cjne	r2,#0x20,00122$
   5190                     369 00122$:
                            370 ;	genIfxJump
   5190 40 03               371 	jc	00123$
   5192 02 51 CD            372 	ljmp	00114$
   5195                     373 00123$:
                    0066    374 	C$core_gpio.c$47$2$2 ==.
                            375 ;	../drivers/CoreGPIO/core_gpio.c:47: HW_set_8bit_reg( cfg_reg_addr, 0 );
                            376 ;	genAssign
   5195 90 0B 32            377 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
   5198 E0                  378 	movx	a,@dptr
   5199 FB                  379 	mov	r3,a
   519A A3                  380 	inc	dptr
   519B E0                  381 	movx	a,@dptr
   519C FC                  382 	mov	r4,a
                            383 ;	genAssign
   519D 90 05 9C            384 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   51A0 74 00               385 	mov	a,#0x00
   51A2 F0                  386 	movx	@dptr,a
                            387 ;	genCall
   51A3 8B 82               388 	mov	dpl,r3
   51A5 8C 83               389 	mov	dph,r4
   51A7 C0 02               390 	push	ar2
   51A9 C0 03               391 	push	ar3
   51AB C0 04               392 	push	ar4
   51AD 12 1B E2            393 	lcall	_HW_set_8bit_reg
   51B0 D0 04               394 	pop	ar4
   51B2 D0 03               395 	pop	ar3
   51B4 D0 02               396 	pop	ar2
                    0087    397 	C$core_gpio.c$48$2$2 ==.
                            398 ;	../drivers/CoreGPIO/core_gpio.c:48: cfg_reg_addr += 4;
                            399 ;	genPlus
   51B6 90 0B 32            400 	mov	dptr,#_GPIO_init_cfg_reg_addr_1_1
                            401 ;	genPlusIncr
   51B9 74 04               402 	mov	a,#0x04
   51BB 25 03               403 	add	a,ar3
   51BD F0                  404 	movx	@dptr,a
   51BE 74 00               405 	mov	a,#0x00
   51C0 35 04               406 	addc	a,ar4
   51C2 A3                  407 	inc	dptr
   51C3 F0                  408 	movx	@dptr,a
                    0095    409 	C$core_gpio.c$45$1$1 ==.
                            410 ;	../drivers/CoreGPIO/core_gpio.c:45: for( i = 0, cfg_reg_addr = base_addr; i < NB_OF_GPIO; ++i )
                            411 ;	genPlus
   51C4 90 0B 31            412 	mov	dptr,#_GPIO_init_i_1_1
                            413 ;	genPlusIncr
   51C7 EA                  414 	mov	a,r2
   51C8 04                  415 	inc	a
   51C9 F0                  416 	movx	@dptr,a
   51CA 02 51 88            417 	ljmp	00111$
   51CD                     418 00114$:
                    009E    419 	C$core_gpio.c$51$1$1 ==.
                            420 ;	../drivers/CoreGPIO/core_gpio.c:51: switch( this_gpio->apb_bus_width )
                            421 ;	genAssign
   51CD 90 0B 2E            422 	mov	dptr,#_GPIO_init_this_gpio_1_1
   51D0 E0                  423 	movx	a,@dptr
   51D1 FA                  424 	mov	r2,a
   51D2 A3                  425 	inc	dptr
   51D3 E0                  426 	movx	a,@dptr
   51D4 FB                  427 	mov	r3,a
   51D5 A3                  428 	inc	dptr
   51D6 E0                  429 	movx	a,@dptr
   51D7 FC                  430 	mov	r4,a
                            431 ;	genPlus
                            432 ;	genPlusIncr
   51D8 74 02               433 	mov	a,#0x02
   51DA 25 02               434 	add	a,ar2
   51DC FD                  435 	mov	r5,a
   51DD 74 00               436 	mov	a,#0x00
   51DF 35 03               437 	addc	a,ar3
   51E1 FE                  438 	mov	r6,a
   51E2 8C 07               439 	mov	ar7,r4
                            440 ;	genPointerGet
                            441 ;	genGenPointerGet
   51E4 8D 82               442 	mov	dpl,r5
   51E6 8E 83               443 	mov	dph,r6
   51E8 8F F0               444 	mov	b,r7
   51EA 12 71 69            445 	lcall	__gptrget
   51ED FD                  446 	mov	r5,a
                            447 ;	genCmpEq
                            448 ;	gencjneshort
   51EE BD 00 03            449 	cjne	r5,#0x00,00124$
   51F1 02 52 9A            450 	ljmp	00103$
   51F4                     451 00124$:
                            452 ;	genCmpEq
                            453 ;	gencjneshort
   51F4 BD 01 03            454 	cjne	r5,#0x01,00125$
   51F7 02 52 37            455 	ljmp	00102$
   51FA                     456 00125$:
                            457 ;	genCmpEq
                            458 ;	gencjneshort
   51FA BD 02 02            459 	cjne	r5,#0x02,00126$
   51FD 80 03               460 	sjmp	00127$
   51FF                     461 00126$:
   51FF 02 53 59            462 	ljmp	00107$
   5202                     463 00127$:
                    00D3    464 	C$core_gpio.c$54$2$3 ==.
                            465 ;	../drivers/CoreGPIO/core_gpio.c:54: HAL_set_32bit_reg( this_gpio->base_addr, IRQ, CLEAR_ALL_IRQ32 );
                            466 ;	genPointerGet
                            467 ;	genGenPointerGet
   5202 8A 82               468 	mov	dpl,r2
   5204 8B 83               469 	mov	dph,r3
   5206 8C F0               470 	mov	b,r4
   5208 12 71 69            471 	lcall	__gptrget
   520B FD                  472 	mov	r5,a
   520C A3                  473 	inc	dptr
   520D 12 71 69            474 	lcall	__gptrget
   5210 FE                  475 	mov	r6,a
                            476 ;	genPlus
                            477 ;	genPlusIncr
   5211 74 80               478 	mov	a,#0x80
   5213 25 05               479 	add	a,ar5
   5215 FD                  480 	mov	r5,a
   5216 74 00               481 	mov	a,#0x00
   5218 35 06               482 	addc	a,ar6
   521A FE                  483 	mov	r6,a
                            484 ;	genAssign
   521B 90 05 9D            485 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   521E 74 FF               486 	mov	a,#0xFF
   5220 F0                  487 	movx	@dptr,a
   5221 A3                  488 	inc	dptr
   5222 74 FF               489 	mov	a,#0xFF
   5224 F0                  490 	movx	@dptr,a
   5225 A3                  491 	inc	dptr
   5226 74 FF               492 	mov	a,#0xFF
   5228 F0                  493 	movx	@dptr,a
   5229 A3                  494 	inc	dptr
   522A 74 FF               495 	mov	a,#0xFF
   522C F0                  496 	movx	@dptr,a
                            497 ;	genCall
   522D 8D 82               498 	mov	dpl,r5
   522F 8E 83               499 	mov	dph,r6
   5231 12 1B AB            500 	lcall	_HW_set_32bit_reg
                    0105    501 	C$core_gpio.c$55$2$3 ==.
                            502 ;	../drivers/CoreGPIO/core_gpio.c:55: break;
   5234 02 54 32            503 	ljmp	00115$
                    0108    504 	C$core_gpio.c$57$2$3 ==.
                            505 ;	../drivers/CoreGPIO/core_gpio.c:57: case GPIO_APB_16_BITS_BUS:
   5237                     506 00102$:
                    0108    507 	C$core_gpio.c$58$2$3 ==.
                            508 ;	../drivers/CoreGPIO/core_gpio.c:58: HAL_set_16bit_reg( this_gpio->base_addr, IRQ0, (uint16_t)CLEAR_ALL_IRQ16 );
                            509 ;	genPointerGet
                            510 ;	genGenPointerGet
   5237 8A 82               511 	mov	dpl,r2
   5239 8B 83               512 	mov	dph,r3
   523B 8C F0               513 	mov	b,r4
   523D 12 71 69            514 	lcall	__gptrget
   5240 FD                  515 	mov	r5,a
   5241 A3                  516 	inc	dptr
   5242 12 71 69            517 	lcall	__gptrget
   5245 FE                  518 	mov	r6,a
                            519 ;	genPlus
                            520 ;	genPlusIncr
   5246 74 80               521 	mov	a,#0x80
   5248 25 05               522 	add	a,ar5
   524A FD                  523 	mov	r5,a
   524B 74 00               524 	mov	a,#0x00
   524D 35 06               525 	addc	a,ar6
   524F FE                  526 	mov	r6,a
                            527 ;	genAssign
   5250 90 05 9A            528 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   5253 74 FF               529 	mov	a,#0xFF
   5255 F0                  530 	movx	@dptr,a
   5256 A3                  531 	inc	dptr
   5257 74 FF               532 	mov	a,#0xFF
   5259 F0                  533 	movx	@dptr,a
                            534 ;	genCall
   525A 8D 82               535 	mov	dpl,r5
   525C 8E 83               536 	mov	dph,r6
   525E C0 02               537 	push	ar2
   5260 C0 03               538 	push	ar3
   5262 C0 04               539 	push	ar4
   5264 12 1B C7            540 	lcall	_HW_set_16bit_reg
   5267 D0 04               541 	pop	ar4
   5269 D0 03               542 	pop	ar3
   526B D0 02               543 	pop	ar2
                    013E    544 	C$core_gpio.c$59$2$3 ==.
                            545 ;	../drivers/CoreGPIO/core_gpio.c:59: HAL_set_16bit_reg( this_gpio->base_addr, IRQ1, (uint16_t)CLEAR_ALL_IRQ16 );
                            546 ;	genPointerGet
                            547 ;	genGenPointerGet
   526D 8A 82               548 	mov	dpl,r2
   526F 8B 83               549 	mov	dph,r3
   5271 8C F0               550 	mov	b,r4
   5273 12 71 69            551 	lcall	__gptrget
   5276 FD                  552 	mov	r5,a
   5277 A3                  553 	inc	dptr
   5278 12 71 69            554 	lcall	__gptrget
   527B FE                  555 	mov	r6,a
                            556 ;	genPlus
                            557 ;	genPlusIncr
   527C 74 84               558 	mov	a,#0x84
   527E 25 05               559 	add	a,ar5
   5280 FD                  560 	mov	r5,a
   5281 74 00               561 	mov	a,#0x00
   5283 35 06               562 	addc	a,ar6
   5285 FE                  563 	mov	r6,a
                            564 ;	genAssign
   5286 90 05 9A            565 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   5289 74 FF               566 	mov	a,#0xFF
   528B F0                  567 	movx	@dptr,a
   528C A3                  568 	inc	dptr
   528D 74 FF               569 	mov	a,#0xFF
   528F F0                  570 	movx	@dptr,a
                            571 ;	genCall
   5290 8D 82               572 	mov	dpl,r5
   5292 8E 83               573 	mov	dph,r6
   5294 12 1B C7            574 	lcall	_HW_set_16bit_reg
                    0168    575 	C$core_gpio.c$60$2$3 ==.
                            576 ;	../drivers/CoreGPIO/core_gpio.c:60: break;
   5297 02 54 32            577 	ljmp	00115$
                    016B    578 	C$core_gpio.c$62$2$3 ==.
                            579 ;	../drivers/CoreGPIO/core_gpio.c:62: case GPIO_APB_8_BITS_BUS:
   529A                     580 00103$:
                    016B    581 	C$core_gpio.c$63$2$3 ==.
                            582 ;	../drivers/CoreGPIO/core_gpio.c:63: HAL_set_8bit_reg( this_gpio->base_addr, IRQ0, (uint8_t)CLEAR_ALL_IRQ8 );
                            583 ;	genPointerGet
                            584 ;	genGenPointerGet
   529A 8A 82               585 	mov	dpl,r2
   529C 8B 83               586 	mov	dph,r3
   529E 8C F0               587 	mov	b,r4
   52A0 12 71 69            588 	lcall	__gptrget
   52A3 FD                  589 	mov	r5,a
   52A4 A3                  590 	inc	dptr
   52A5 12 71 69            591 	lcall	__gptrget
   52A8 FE                  592 	mov	r6,a
                            593 ;	genPlus
                            594 ;	genPlusIncr
   52A9 74 80               595 	mov	a,#0x80
   52AB 25 05               596 	add	a,ar5
   52AD FD                  597 	mov	r5,a
   52AE 74 00               598 	mov	a,#0x00
   52B0 35 06               599 	addc	a,ar6
   52B2 FE                  600 	mov	r6,a
                            601 ;	genAssign
   52B3 90 05 9C            602 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   52B6 74 FF               603 	mov	a,#0xFF
   52B8 F0                  604 	movx	@dptr,a
                            605 ;	genCall
   52B9 8D 82               606 	mov	dpl,r5
   52BB 8E 83               607 	mov	dph,r6
   52BD C0 02               608 	push	ar2
   52BF C0 03               609 	push	ar3
   52C1 C0 04               610 	push	ar4
   52C3 12 1B E2            611 	lcall	_HW_set_8bit_reg
   52C6 D0 04               612 	pop	ar4
   52C8 D0 03               613 	pop	ar3
   52CA D0 02               614 	pop	ar2
                    019D    615 	C$core_gpio.c$64$2$3 ==.
                            616 ;	../drivers/CoreGPIO/core_gpio.c:64: HAL_set_8bit_reg( this_gpio->base_addr, IRQ1, (uint8_t)CLEAR_ALL_IRQ8 );
                            617 ;	genPointerGet
                            618 ;	genGenPointerGet
   52CC 8A 82               619 	mov	dpl,r2
   52CE 8B 83               620 	mov	dph,r3
   52D0 8C F0               621 	mov	b,r4
   52D2 12 71 69            622 	lcall	__gptrget
   52D5 FD                  623 	mov	r5,a
   52D6 A3                  624 	inc	dptr
   52D7 12 71 69            625 	lcall	__gptrget
   52DA FE                  626 	mov	r6,a
                            627 ;	genPlus
                            628 ;	genPlusIncr
   52DB 74 84               629 	mov	a,#0x84
   52DD 25 05               630 	add	a,ar5
   52DF FD                  631 	mov	r5,a
   52E0 74 00               632 	mov	a,#0x00
   52E2 35 06               633 	addc	a,ar6
   52E4 FE                  634 	mov	r6,a
                            635 ;	genAssign
   52E5 90 05 9C            636 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   52E8 74 FF               637 	mov	a,#0xFF
   52EA F0                  638 	movx	@dptr,a
                            639 ;	genCall
   52EB 8D 82               640 	mov	dpl,r5
   52ED 8E 83               641 	mov	dph,r6
   52EF C0 02               642 	push	ar2
   52F1 C0 03               643 	push	ar3
   52F3 C0 04               644 	push	ar4
   52F5 12 1B E2            645 	lcall	_HW_set_8bit_reg
   52F8 D0 04               646 	pop	ar4
   52FA D0 03               647 	pop	ar3
   52FC D0 02               648 	pop	ar2
                    01CF    649 	C$core_gpio.c$65$2$3 ==.
                            650 ;	../drivers/CoreGPIO/core_gpio.c:65: HAL_set_8bit_reg( this_gpio->base_addr, IRQ2, (uint8_t)CLEAR_ALL_IRQ8 );
                            651 ;	genPointerGet
                            652 ;	genGenPointerGet
   52FE 8A 82               653 	mov	dpl,r2
   5300 8B 83               654 	mov	dph,r3
   5302 8C F0               655 	mov	b,r4
   5304 12 71 69            656 	lcall	__gptrget
   5307 FD                  657 	mov	r5,a
   5308 A3                  658 	inc	dptr
   5309 12 71 69            659 	lcall	__gptrget
   530C FE                  660 	mov	r6,a
                            661 ;	genPlus
                            662 ;	genPlusIncr
   530D 74 88               663 	mov	a,#0x88
   530F 25 05               664 	add	a,ar5
   5311 FD                  665 	mov	r5,a
   5312 74 00               666 	mov	a,#0x00
   5314 35 06               667 	addc	a,ar6
   5316 FE                  668 	mov	r6,a
                            669 ;	genAssign
   5317 90 05 9C            670 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   531A 74 FF               671 	mov	a,#0xFF
   531C F0                  672 	movx	@dptr,a
                            673 ;	genCall
   531D 8D 82               674 	mov	dpl,r5
   531F 8E 83               675 	mov	dph,r6
   5321 C0 02               676 	push	ar2
   5323 C0 03               677 	push	ar3
   5325 C0 04               678 	push	ar4
   5327 12 1B E2            679 	lcall	_HW_set_8bit_reg
   532A D0 04               680 	pop	ar4
   532C D0 03               681 	pop	ar3
   532E D0 02               682 	pop	ar2
                    0201    683 	C$core_gpio.c$66$2$3 ==.
                            684 ;	../drivers/CoreGPIO/core_gpio.c:66: HAL_set_8bit_reg( this_gpio->base_addr, IRQ3, (uint8_t)CLEAR_ALL_IRQ8 );
                            685 ;	genPointerGet
                            686 ;	genGenPointerGet
   5330 8A 82               687 	mov	dpl,r2
   5332 8B 83               688 	mov	dph,r3
   5334 8C F0               689 	mov	b,r4
   5336 12 71 69            690 	lcall	__gptrget
   5339 FA                  691 	mov	r2,a
   533A A3                  692 	inc	dptr
   533B 12 71 69            693 	lcall	__gptrget
   533E FB                  694 	mov	r3,a
                            695 ;	genPlus
                            696 ;	genPlusIncr
   533F 74 8C               697 	mov	a,#0x8C
   5341 25 02               698 	add	a,ar2
   5343 FA                  699 	mov	r2,a
   5344 74 00               700 	mov	a,#0x00
   5346 35 03               701 	addc	a,ar3
   5348 FB                  702 	mov	r3,a
                            703 ;	genAssign
   5349 90 05 9C            704 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   534C 74 FF               705 	mov	a,#0xFF
   534E F0                  706 	movx	@dptr,a
                            707 ;	genCall
   534F 8A 82               708 	mov	dpl,r2
   5351 8B 83               709 	mov	dph,r3
   5353 12 1B E2            710 	lcall	_HW_set_8bit_reg
                    0227    711 	C$core_gpio.c$67$2$3 ==.
                            712 ;	../drivers/CoreGPIO/core_gpio.c:67: break;
   5356 02 54 32            713 	ljmp	00115$
                    022A    714 	C$core_gpio.c$70$2$3 ==.
                            715 ;	../drivers/CoreGPIO/core_gpio.c:70: HAL_ASSERT(0);
   5359                     716 00107$:
                            717 ;	genPointerSet
                            718 ;     genFarPointerSet
   5359 90 0B 34            719 	mov	dptr,#_GPIO_init_file_name_4_5
   535C 74 2E               720 	mov	a,#0x2E
   535E F0                  721 	movx	@dptr,a
                            722 ;	genPointerSet
                            723 ;     genFarPointerSet
   535F 90 0B 35            724 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0001)
   5362 74 2E               725 	mov	a,#0x2E
   5364 F0                  726 	movx	@dptr,a
                            727 ;	genPointerSet
                            728 ;     genFarPointerSet
   5365 90 0B 36            729 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0002)
   5368 74 2F               730 	mov	a,#0x2F
   536A F0                  731 	movx	@dptr,a
                            732 ;	genPointerSet
                            733 ;     genFarPointerSet
   536B 90 0B 37            734 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0003)
   536E 74 64               735 	mov	a,#0x64
   5370 F0                  736 	movx	@dptr,a
                            737 ;	genPointerSet
                            738 ;     genFarPointerSet
   5371 90 0B 38            739 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0004)
   5374 74 72               740 	mov	a,#0x72
   5376 F0                  741 	movx	@dptr,a
                            742 ;	genPointerSet
                            743 ;     genFarPointerSet
   5377 90 0B 39            744 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0005)
   537A 74 69               745 	mov	a,#0x69
   537C F0                  746 	movx	@dptr,a
                            747 ;	genPointerSet
                            748 ;     genFarPointerSet
   537D 90 0B 3A            749 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0006)
   5380 74 76               750 	mov	a,#0x76
   5382 F0                  751 	movx	@dptr,a
                            752 ;	genPointerSet
                            753 ;     genFarPointerSet
   5383 90 0B 3B            754 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0007)
   5386 74 65               755 	mov	a,#0x65
   5388 F0                  756 	movx	@dptr,a
                            757 ;	genPointerSet
                            758 ;     genFarPointerSet
   5389 90 0B 3C            759 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0008)
   538C 74 72               760 	mov	a,#0x72
   538E F0                  761 	movx	@dptr,a
                            762 ;	genPointerSet
                            763 ;     genFarPointerSet
   538F 90 0B 3D            764 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0009)
   5392 74 73               765 	mov	a,#0x73
   5394 F0                  766 	movx	@dptr,a
                            767 ;	genPointerSet
                            768 ;     genFarPointerSet
   5395 90 0B 3E            769 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000a)
   5398 74 2F               770 	mov	a,#0x2F
   539A F0                  771 	movx	@dptr,a
                            772 ;	genPointerSet
                            773 ;     genFarPointerSet
   539B 90 0B 3F            774 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000b)
   539E 74 43               775 	mov	a,#0x43
   53A0 F0                  776 	movx	@dptr,a
                            777 ;	genPointerSet
                            778 ;     genFarPointerSet
   53A1 90 0B 40            779 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000c)
   53A4 74 6F               780 	mov	a,#0x6F
   53A6 F0                  781 	movx	@dptr,a
                            782 ;	genPointerSet
                            783 ;     genFarPointerSet
   53A7 90 0B 41            784 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000d)
   53AA 74 72               785 	mov	a,#0x72
   53AC F0                  786 	movx	@dptr,a
                            787 ;	genPointerSet
                            788 ;     genFarPointerSet
   53AD 90 0B 42            789 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000e)
   53B0 74 65               790 	mov	a,#0x65
   53B2 F0                  791 	movx	@dptr,a
                            792 ;	genPointerSet
                            793 ;     genFarPointerSet
   53B3 90 0B 43            794 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x000f)
   53B6 74 47               795 	mov	a,#0x47
   53B8 F0                  796 	movx	@dptr,a
                            797 ;	genPointerSet
                            798 ;     genFarPointerSet
   53B9 90 0B 44            799 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0010)
   53BC 74 50               800 	mov	a,#0x50
   53BE F0                  801 	movx	@dptr,a
                            802 ;	genPointerSet
                            803 ;     genFarPointerSet
   53BF 90 0B 45            804 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0011)
   53C2 74 49               805 	mov	a,#0x49
   53C4 F0                  806 	movx	@dptr,a
                            807 ;	genPointerSet
                            808 ;     genFarPointerSet
   53C5 90 0B 46            809 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0012)
   53C8 74 4F               810 	mov	a,#0x4F
   53CA F0                  811 	movx	@dptr,a
                            812 ;	genPointerSet
                            813 ;     genFarPointerSet
   53CB 90 0B 47            814 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0013)
   53CE 74 2F               815 	mov	a,#0x2F
   53D0 F0                  816 	movx	@dptr,a
                            817 ;	genPointerSet
                            818 ;     genFarPointerSet
   53D1 90 0B 48            819 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0014)
   53D4 74 63               820 	mov	a,#0x63
   53D6 F0                  821 	movx	@dptr,a
                            822 ;	genPointerSet
                            823 ;     genFarPointerSet
   53D7 90 0B 49            824 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0015)
   53DA 74 6F               825 	mov	a,#0x6F
   53DC F0                  826 	movx	@dptr,a
                            827 ;	genPointerSet
                            828 ;     genFarPointerSet
   53DD 90 0B 4A            829 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0016)
   53E0 74 72               830 	mov	a,#0x72
   53E2 F0                  831 	movx	@dptr,a
                            832 ;	genPointerSet
                            833 ;     genFarPointerSet
   53E3 90 0B 4B            834 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0017)
   53E6 74 65               835 	mov	a,#0x65
   53E8 F0                  836 	movx	@dptr,a
                            837 ;	genPointerSet
                            838 ;     genFarPointerSet
   53E9 90 0B 4C            839 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0018)
   53EC 74 5F               840 	mov	a,#0x5F
   53EE F0                  841 	movx	@dptr,a
                            842 ;	genPointerSet
                            843 ;     genFarPointerSet
   53EF 90 0B 4D            844 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x0019)
   53F2 74 67               845 	mov	a,#0x67
   53F4 F0                  846 	movx	@dptr,a
                            847 ;	genPointerSet
                            848 ;     genFarPointerSet
   53F5 90 0B 4E            849 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001a)
   53F8 74 70               850 	mov	a,#0x70
   53FA F0                  851 	movx	@dptr,a
                            852 ;	genPointerSet
                            853 ;     genFarPointerSet
   53FB 90 0B 4F            854 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001b)
   53FE 74 69               855 	mov	a,#0x69
   5400 F0                  856 	movx	@dptr,a
                            857 ;	genPointerSet
                            858 ;     genFarPointerSet
   5401 90 0B 50            859 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001c)
   5404 74 6F               860 	mov	a,#0x6F
   5406 F0                  861 	movx	@dptr,a
                            862 ;	genPointerSet
                            863 ;     genFarPointerSet
   5407 90 0B 51            864 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001d)
   540A 74 2E               865 	mov	a,#0x2E
   540C F0                  866 	movx	@dptr,a
                            867 ;	genPointerSet
                            868 ;     genFarPointerSet
   540D 90 0B 52            869 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001e)
   5410 74 63               870 	mov	a,#0x63
   5412 F0                  871 	movx	@dptr,a
                            872 ;	genPointerSet
                            873 ;     genFarPointerSet
   5413 90 0B 53            874 	mov	dptr,#(_GPIO_init_file_name_4_5 + 0x001f)
   5416 74 00               875 	mov	a,#0x00
   5418 F0                  876 	movx	@dptr,a
                            877 ;	genAssign
   5419 90 05 7F            878 	mov	dptr,#_HAL_assert_fail_PARM_2
   541C 74 46               879 	mov	a,#0x46
   541E F0                  880 	movx	@dptr,a
   541F E4                  881 	clr	a
   5420 A3                  882 	inc	dptr
   5421 F0                  883 	movx	@dptr,a
   5422 A3                  884 	inc	dptr
   5423 F0                  885 	movx	@dptr,a
   5424 A3                  886 	inc	dptr
   5425 F0                  887 	movx	@dptr,a
                            888 ;	genCall
   5426 75 82 34            889 	mov	dpl,#_GPIO_init_file_name_4_5
   5429 75 83 0B            890 	mov	dph,#(_GPIO_init_file_name_4_5 >> 8)
   542C 75 F0 00            891 	mov	b,#0x00
   542F 12 1B 3F            892 	lcall	_HAL_assert_fail
                    0303    893 	C$core_gpio.c$72$1$1 ==.
                            894 ;	../drivers/CoreGPIO/core_gpio.c:72: }
   5432                     895 00115$:
                    0303    896 	C$core_gpio.c$73$1$1 ==.
                    0303    897 	XG$GPIO_init$0$0 ==.
   5432 22                  898 	ret
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
   5433                     915 _GPIO_config:
                            916 ;	genReceive
   5433 AA F0               917 	mov	r2,b
   5435 AB 83               918 	mov	r3,dph
   5437 E5 82               919 	mov	a,dpl
   5439 90 0B 59            920 	mov	dptr,#_GPIO_config_this_gpio_1_1
   543C F0                  921 	movx	@dptr,a
   543D A3                  922 	inc	dptr
   543E EB                  923 	mov	a,r3
   543F F0                  924 	movx	@dptr,a
   5440 A3                  925 	inc	dptr
   5441 EA                  926 	mov	a,r2
   5442 F0                  927 	movx	@dptr,a
                    0314    928 	C$core_gpio.c$86$2$2 ==.
                            929 ;	../drivers/CoreGPIO/core_gpio.c:86: HAL_ASSERT( port_id < NB_OF_GPIO );
                            930 ;	genAssign
   5443 90 0B 54            931 	mov	dptr,#_GPIO_config_PARM_2
   5446 E0                  932 	movx	a,@dptr
   5447 FA                  933 	mov	r2,a
                            934 ;	genCmpLt
                            935 ;	genCmp
   5448 BA 20 00            936 	cjne	r2,#0x20,00118$
   544B                     937 00118$:
   544B E4                  938 	clr	a
   544C 33                  939 	rlc	a
   544D FB                  940 	mov	r3,a
                            941 ;	genIfx
   544E EB                  942 	mov	a,r3
                            943 ;	genIfxJump
   544F 60 03               944 	jz	00119$
   5451 02 55 35            945 	ljmp	00104$
   5454                     946 00119$:
                            947 ;	genPointerSet
                            948 ;     genFarPointerSet
   5454 90 0B 5C            949 	mov	dptr,#_GPIO_config_file_name_3_3
   5457 74 2E               950 	mov	a,#0x2E
   5459 F0                  951 	movx	@dptr,a
                            952 ;	genPointerSet
                            953 ;     genFarPointerSet
   545A 90 0B 5D            954 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0001)
   545D 74 2E               955 	mov	a,#0x2E
   545F F0                  956 	movx	@dptr,a
                            957 ;	genPointerSet
                            958 ;     genFarPointerSet
   5460 90 0B 5E            959 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0002)
   5463 74 2F               960 	mov	a,#0x2F
   5465 F0                  961 	movx	@dptr,a
                            962 ;	genPointerSet
                            963 ;     genFarPointerSet
   5466 90 0B 5F            964 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0003)
   5469 74 64               965 	mov	a,#0x64
   546B F0                  966 	movx	@dptr,a
                            967 ;	genPointerSet
                            968 ;     genFarPointerSet
   546C 90 0B 60            969 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0004)
   546F 74 72               970 	mov	a,#0x72
   5471 F0                  971 	movx	@dptr,a
                            972 ;	genPointerSet
                            973 ;     genFarPointerSet
   5472 90 0B 61            974 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0005)
   5475 74 69               975 	mov	a,#0x69
   5477 F0                  976 	movx	@dptr,a
                            977 ;	genPointerSet
                            978 ;     genFarPointerSet
   5478 90 0B 62            979 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0006)
   547B 74 76               980 	mov	a,#0x76
   547D F0                  981 	movx	@dptr,a
                            982 ;	genPointerSet
                            983 ;     genFarPointerSet
   547E 90 0B 63            984 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0007)
   5481 74 65               985 	mov	a,#0x65
   5483 F0                  986 	movx	@dptr,a
                            987 ;	genPointerSet
                            988 ;     genFarPointerSet
   5484 90 0B 64            989 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0008)
   5487 74 72               990 	mov	a,#0x72
   5489 F0                  991 	movx	@dptr,a
                            992 ;	genPointerSet
                            993 ;     genFarPointerSet
   548A 90 0B 65            994 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0009)
   548D 74 73               995 	mov	a,#0x73
   548F F0                  996 	movx	@dptr,a
                            997 ;	genPointerSet
                            998 ;     genFarPointerSet
   5490 90 0B 66            999 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000a)
   5493 74 2F              1000 	mov	a,#0x2F
   5495 F0                 1001 	movx	@dptr,a
                           1002 ;	genPointerSet
                           1003 ;     genFarPointerSet
   5496 90 0B 67           1004 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000b)
   5499 74 43              1005 	mov	a,#0x43
   549B F0                 1006 	movx	@dptr,a
                           1007 ;	genPointerSet
                           1008 ;     genFarPointerSet
   549C 90 0B 68           1009 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000c)
   549F 74 6F              1010 	mov	a,#0x6F
   54A1 F0                 1011 	movx	@dptr,a
                           1012 ;	genPointerSet
                           1013 ;     genFarPointerSet
   54A2 90 0B 69           1014 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000d)
   54A5 74 72              1015 	mov	a,#0x72
   54A7 F0                 1016 	movx	@dptr,a
                           1017 ;	genPointerSet
                           1018 ;     genFarPointerSet
   54A8 90 0B 6A           1019 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000e)
   54AB 74 65              1020 	mov	a,#0x65
   54AD F0                 1021 	movx	@dptr,a
                           1022 ;	genPointerSet
                           1023 ;     genFarPointerSet
   54AE 90 0B 6B           1024 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x000f)
   54B1 74 47              1025 	mov	a,#0x47
   54B3 F0                 1026 	movx	@dptr,a
                           1027 ;	genPointerSet
                           1028 ;     genFarPointerSet
   54B4 90 0B 6C           1029 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0010)
   54B7 74 50              1030 	mov	a,#0x50
   54B9 F0                 1031 	movx	@dptr,a
                           1032 ;	genPointerSet
                           1033 ;     genFarPointerSet
   54BA 90 0B 6D           1034 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0011)
   54BD 74 49              1035 	mov	a,#0x49
   54BF F0                 1036 	movx	@dptr,a
                           1037 ;	genPointerSet
                           1038 ;     genFarPointerSet
   54C0 90 0B 6E           1039 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0012)
   54C3 74 4F              1040 	mov	a,#0x4F
   54C5 F0                 1041 	movx	@dptr,a
                           1042 ;	genPointerSet
                           1043 ;     genFarPointerSet
   54C6 90 0B 6F           1044 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0013)
   54C9 74 2F              1045 	mov	a,#0x2F
   54CB F0                 1046 	movx	@dptr,a
                           1047 ;	genPointerSet
                           1048 ;     genFarPointerSet
   54CC 90 0B 70           1049 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0014)
   54CF 74 63              1050 	mov	a,#0x63
   54D1 F0                 1051 	movx	@dptr,a
                           1052 ;	genPointerSet
                           1053 ;     genFarPointerSet
   54D2 90 0B 71           1054 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0015)
   54D5 74 6F              1055 	mov	a,#0x6F
   54D7 F0                 1056 	movx	@dptr,a
                           1057 ;	genPointerSet
                           1058 ;     genFarPointerSet
   54D8 90 0B 72           1059 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0016)
   54DB 74 72              1060 	mov	a,#0x72
   54DD F0                 1061 	movx	@dptr,a
                           1062 ;	genPointerSet
                           1063 ;     genFarPointerSet
   54DE 90 0B 73           1064 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0017)
   54E1 74 65              1065 	mov	a,#0x65
   54E3 F0                 1066 	movx	@dptr,a
                           1067 ;	genPointerSet
                           1068 ;     genFarPointerSet
   54E4 90 0B 74           1069 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0018)
   54E7 74 5F              1070 	mov	a,#0x5F
   54E9 F0                 1071 	movx	@dptr,a
                           1072 ;	genPointerSet
                           1073 ;     genFarPointerSet
   54EA 90 0B 75           1074 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x0019)
   54ED 74 67              1075 	mov	a,#0x67
   54EF F0                 1076 	movx	@dptr,a
                           1077 ;	genPointerSet
                           1078 ;     genFarPointerSet
   54F0 90 0B 76           1079 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001a)
   54F3 74 70              1080 	mov	a,#0x70
   54F5 F0                 1081 	movx	@dptr,a
                           1082 ;	genPointerSet
                           1083 ;     genFarPointerSet
   54F6 90 0B 77           1084 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001b)
   54F9 74 69              1085 	mov	a,#0x69
   54FB F0                 1086 	movx	@dptr,a
                           1087 ;	genPointerSet
                           1088 ;     genFarPointerSet
   54FC 90 0B 78           1089 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001c)
   54FF 74 6F              1090 	mov	a,#0x6F
   5501 F0                 1091 	movx	@dptr,a
                           1092 ;	genPointerSet
                           1093 ;     genFarPointerSet
   5502 90 0B 79           1094 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001d)
   5505 74 2E              1095 	mov	a,#0x2E
   5507 F0                 1096 	movx	@dptr,a
                           1097 ;	genPointerSet
                           1098 ;     genFarPointerSet
   5508 90 0B 7A           1099 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001e)
   550B 74 63              1100 	mov	a,#0x63
   550D F0                 1101 	movx	@dptr,a
                           1102 ;	genPointerSet
                           1103 ;     genFarPointerSet
   550E 90 0B 7B           1104 	mov	dptr,#(_GPIO_config_file_name_3_3 + 0x001f)
   5511 74 00              1105 	mov	a,#0x00
   5513 F0                 1106 	movx	@dptr,a
                           1107 ;	genAssign
   5514 90 05 7F           1108 	mov	dptr,#_HAL_assert_fail_PARM_2
   5517 74 56              1109 	mov	a,#0x56
   5519 F0                 1110 	movx	@dptr,a
   551A E4                 1111 	clr	a
   551B A3                 1112 	inc	dptr
   551C F0                 1113 	movx	@dptr,a
   551D A3                 1114 	inc	dptr
   551E F0                 1115 	movx	@dptr,a
   551F A3                 1116 	inc	dptr
   5520 F0                 1117 	movx	@dptr,a
                           1118 ;	genCall
   5521 75 82 5C           1119 	mov	dpl,#_GPIO_config_file_name_3_3
   5524 75 83 0B           1120 	mov	dph,#(_GPIO_config_file_name_3_3 >> 8)
   5527 75 F0 00           1121 	mov	b,#0x00
   552A C0 02              1122 	push	ar2
   552C C0 03              1123 	push	ar3
   552E 12 1B 3F           1124 	lcall	_HAL_assert_fail
   5531 D0 03              1125 	pop	ar3
   5533 D0 02              1126 	pop	ar2
   5535                    1127 00104$:
                    0406   1128 	C$core_gpio.c$88$1$1 ==.
                           1129 ;	../drivers/CoreGPIO/core_gpio.c:88: if ( port_id < NB_OF_GPIO )
                           1130 ;	genIfx
   5535 EB                 1131 	mov	a,r3
                           1132 ;	genIfxJump
   5536 70 03              1133 	jnz	00120$
   5538 02 56 C0           1134 	ljmp	00113$
   553B                    1135 00120$:
                    040C   1136 	C$core_gpio.c$90$2$4 ==.
                           1137 ;	../drivers/CoreGPIO/core_gpio.c:90: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           1138 ;	genAssign
   553B 90 0B 59           1139 	mov	dptr,#_GPIO_config_this_gpio_1_1
   553E E0                 1140 	movx	a,@dptr
   553F FB                 1141 	mov	r3,a
   5540 A3                 1142 	inc	dptr
   5541 E0                 1143 	movx	a,@dptr
   5542 FC                 1144 	mov	r4,a
   5543 A3                 1145 	inc	dptr
   5544 E0                 1146 	movx	a,@dptr
   5545 FD                 1147 	mov	r5,a
                           1148 ;	genPointerGet
                           1149 ;	genGenPointerGet
   5546 8B 82              1150 	mov	dpl,r3
   5548 8C 83              1151 	mov	dph,r4
   554A 8D F0              1152 	mov	b,r5
   554C 12 71 69           1153 	lcall	__gptrget
   554F FB                 1154 	mov	r3,a
   5550 A3                 1155 	inc	dptr
   5551 12 71 69           1156 	lcall	__gptrget
   5554 FC                 1157 	mov	r4,a
                           1158 ;	genCast
   5555 7D 00              1159 	mov	r5,#0x00
   5557 7E 00              1160 	mov	r6,#0x00
                    042A   1161 	C$core_gpio.c$91$2$4 ==.
                           1162 ;	../drivers/CoreGPIO/core_gpio.c:91: cfg_reg_addr += (port_id * 4);
                           1163 ;	genMult
                           1164 ;	genMultOneByte
   5559 EA                 1165 	mov	a,r2
   555A 75 F0 04           1166 	mov	b,#0x04
   555D A4                 1167 	mul	ab
   555E FA                 1168 	mov	r2,a
   555F AF F0              1169 	mov	r7,b
                           1170 ;	genCast
   5561 EF                 1171 	mov	a,r7
   5562 33                 1172 	rlc	a
   5563 95 E0              1173 	subb	a,acc
   5565 F8                 1174 	mov	r0,a
   5566 F9                 1175 	mov	r1,a
                           1176 ;	genPlus
   5567 E5 02              1177 	mov	a,ar2
   5569 25 03              1178 	add	a,ar3
   556B FB                 1179 	mov	r3,a
   556C E5 07              1180 	mov	a,ar7
   556E 35 04              1181 	addc	a,ar4
   5570 FC                 1182 	mov	r4,a
   5571 E5 00              1183 	mov	a,ar0
   5573 35 05              1184 	addc	a,ar5
   5575 FD                 1185 	mov	r5,a
   5576 E5 01              1186 	mov	a,ar1
   5578 35 06              1187 	addc	a,ar6
   557A FE                 1188 	mov	r6,a
                    044C   1189 	C$core_gpio.c$92$2$4 ==.
                           1190 ;	../drivers/CoreGPIO/core_gpio.c:92: HW_set_32bit_reg( cfg_reg_addr, config );
                           1191 ;	genCast
                           1192 ;	genAssign
   557B 90 0B 55           1193 	mov	dptr,#_GPIO_config_PARM_3
   557E E0                 1194 	movx	a,@dptr
   557F FA                 1195 	mov	r2,a
   5580 A3                 1196 	inc	dptr
   5581 E0                 1197 	movx	a,@dptr
   5582 FD                 1198 	mov	r5,a
   5583 A3                 1199 	inc	dptr
   5584 E0                 1200 	movx	a,@dptr
   5585 FE                 1201 	mov	r6,a
   5586 A3                 1202 	inc	dptr
   5587 E0                 1203 	movx	a,@dptr
   5588 FF                 1204 	mov	r7,a
                           1205 ;	genAssign
   5589 90 05 9D           1206 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   558C EA                 1207 	mov	a,r2
   558D F0                 1208 	movx	@dptr,a
   558E A3                 1209 	inc	dptr
   558F ED                 1210 	mov	a,r5
   5590 F0                 1211 	movx	@dptr,a
   5591 A3                 1212 	inc	dptr
   5592 EE                 1213 	mov	a,r6
   5593 F0                 1214 	movx	@dptr,a
   5594 A3                 1215 	inc	dptr
   5595 EF                 1216 	mov	a,r7
   5596 F0                 1217 	movx	@dptr,a
                           1218 ;	genCall
   5597 8B 82              1219 	mov	dpl,r3
   5599 8C 83              1220 	mov	dph,r4
   559B C0 02              1221 	push	ar2
   559D C0 03              1222 	push	ar3
   559F C0 04              1223 	push	ar4
   55A1 C0 05              1224 	push	ar5
   55A3 C0 06              1225 	push	ar6
   55A5 C0 07              1226 	push	ar7
   55A7 12 1B AB           1227 	lcall	_HW_set_32bit_reg
   55AA D0 07              1228 	pop	ar7
   55AC D0 06              1229 	pop	ar6
   55AE D0 05              1230 	pop	ar5
   55B0 D0 04              1231 	pop	ar4
   55B2 D0 03              1232 	pop	ar3
   55B4 D0 02              1233 	pop	ar2
                    0487   1234 	C$core_gpio.c$101$3$5 ==.
                           1235 ;	../drivers/CoreGPIO/core_gpio.c:101: HAL_ASSERT( HW_get_32bit_reg( cfg_reg_addr ) == config );
                           1236 ;	genCall
   55B6 8B 82              1237 	mov	dpl,r3
   55B8 8C 83              1238 	mov	dph,r4
   55BA C0 02              1239 	push	ar2
   55BC C0 05              1240 	push	ar5
   55BE C0 06              1241 	push	ar6
   55C0 C0 07              1242 	push	ar7
   55C2 12 1B 9F           1243 	lcall	_HW_get_32bit_reg
   55C5 AB 82              1244 	mov	r3,dpl
   55C7 AC 83              1245 	mov	r4,dph
   55C9 A8 F0              1246 	mov	r0,b
   55CB F9                 1247 	mov	r1,a
   55CC D0 07              1248 	pop	ar7
   55CE D0 06              1249 	pop	ar6
   55D0 D0 05              1250 	pop	ar5
   55D2 D0 02              1251 	pop	ar2
                           1252 ;	genCmpEq
                           1253 ;	gencjneshort
   55D4 EB                 1254 	mov	a,r3
   55D5 B5 02 0F           1255 	cjne	a,ar2,00121$
   55D8 EC                 1256 	mov	a,r4
   55D9 B5 05 0B           1257 	cjne	a,ar5,00121$
   55DC E8                 1258 	mov	a,r0
   55DD B5 06 07           1259 	cjne	a,ar6,00121$
   55E0 E9                 1260 	mov	a,r1
   55E1 B5 07 03           1261 	cjne	a,ar7,00121$
   55E4 02 56 C0           1262 	ljmp	00113$
   55E7                    1263 00121$:
                           1264 ;	genPointerSet
                           1265 ;     genFarPointerSet
   55E7 90 0B 7C           1266 	mov	dptr,#_GPIO_config_file_name_4_6
   55EA 74 2E              1267 	mov	a,#0x2E
   55EC F0                 1268 	movx	@dptr,a
                           1269 ;	genPointerSet
                           1270 ;     genFarPointerSet
   55ED 90 0B 7D           1271 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0001)
   55F0 74 2E              1272 	mov	a,#0x2E
   55F2 F0                 1273 	movx	@dptr,a
                           1274 ;	genPointerSet
                           1275 ;     genFarPointerSet
   55F3 90 0B 7E           1276 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0002)
   55F6 74 2F              1277 	mov	a,#0x2F
   55F8 F0                 1278 	movx	@dptr,a
                           1279 ;	genPointerSet
                           1280 ;     genFarPointerSet
   55F9 90 0B 7F           1281 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0003)
   55FC 74 64              1282 	mov	a,#0x64
   55FE F0                 1283 	movx	@dptr,a
                           1284 ;	genPointerSet
                           1285 ;     genFarPointerSet
   55FF 90 0B 80           1286 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0004)
   5602 74 72              1287 	mov	a,#0x72
   5604 F0                 1288 	movx	@dptr,a
                           1289 ;	genPointerSet
                           1290 ;     genFarPointerSet
   5605 90 0B 81           1291 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0005)
   5608 74 69              1292 	mov	a,#0x69
   560A F0                 1293 	movx	@dptr,a
                           1294 ;	genPointerSet
                           1295 ;     genFarPointerSet
   560B 90 0B 82           1296 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0006)
   560E 74 76              1297 	mov	a,#0x76
   5610 F0                 1298 	movx	@dptr,a
                           1299 ;	genPointerSet
                           1300 ;     genFarPointerSet
   5611 90 0B 83           1301 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0007)
   5614 74 65              1302 	mov	a,#0x65
   5616 F0                 1303 	movx	@dptr,a
                           1304 ;	genPointerSet
                           1305 ;     genFarPointerSet
   5617 90 0B 84           1306 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0008)
   561A 74 72              1307 	mov	a,#0x72
   561C F0                 1308 	movx	@dptr,a
                           1309 ;	genPointerSet
                           1310 ;     genFarPointerSet
   561D 90 0B 85           1311 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0009)
   5620 74 73              1312 	mov	a,#0x73
   5622 F0                 1313 	movx	@dptr,a
                           1314 ;	genPointerSet
                           1315 ;     genFarPointerSet
   5623 90 0B 86           1316 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000a)
   5626 74 2F              1317 	mov	a,#0x2F
   5628 F0                 1318 	movx	@dptr,a
                           1319 ;	genPointerSet
                           1320 ;     genFarPointerSet
   5629 90 0B 87           1321 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000b)
   562C 74 43              1322 	mov	a,#0x43
   562E F0                 1323 	movx	@dptr,a
                           1324 ;	genPointerSet
                           1325 ;     genFarPointerSet
   562F 90 0B 88           1326 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000c)
   5632 74 6F              1327 	mov	a,#0x6F
   5634 F0                 1328 	movx	@dptr,a
                           1329 ;	genPointerSet
                           1330 ;     genFarPointerSet
   5635 90 0B 89           1331 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000d)
   5638 74 72              1332 	mov	a,#0x72
   563A F0                 1333 	movx	@dptr,a
                           1334 ;	genPointerSet
                           1335 ;     genFarPointerSet
   563B 90 0B 8A           1336 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000e)
   563E 74 65              1337 	mov	a,#0x65
   5640 F0                 1338 	movx	@dptr,a
                           1339 ;	genPointerSet
                           1340 ;     genFarPointerSet
   5641 90 0B 8B           1341 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x000f)
   5644 74 47              1342 	mov	a,#0x47
   5646 F0                 1343 	movx	@dptr,a
                           1344 ;	genPointerSet
                           1345 ;     genFarPointerSet
   5647 90 0B 8C           1346 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0010)
   564A 74 50              1347 	mov	a,#0x50
   564C F0                 1348 	movx	@dptr,a
                           1349 ;	genPointerSet
                           1350 ;     genFarPointerSet
   564D 90 0B 8D           1351 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0011)
   5650 74 49              1352 	mov	a,#0x49
   5652 F0                 1353 	movx	@dptr,a
                           1354 ;	genPointerSet
                           1355 ;     genFarPointerSet
   5653 90 0B 8E           1356 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0012)
   5656 74 4F              1357 	mov	a,#0x4F
   5658 F0                 1358 	movx	@dptr,a
                           1359 ;	genPointerSet
                           1360 ;     genFarPointerSet
   5659 90 0B 8F           1361 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0013)
   565C 74 2F              1362 	mov	a,#0x2F
   565E F0                 1363 	movx	@dptr,a
                           1364 ;	genPointerSet
                           1365 ;     genFarPointerSet
   565F 90 0B 90           1366 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0014)
   5662 74 63              1367 	mov	a,#0x63
   5664 F0                 1368 	movx	@dptr,a
                           1369 ;	genPointerSet
                           1370 ;     genFarPointerSet
   5665 90 0B 91           1371 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0015)
   5668 74 6F              1372 	mov	a,#0x6F
   566A F0                 1373 	movx	@dptr,a
                           1374 ;	genPointerSet
                           1375 ;     genFarPointerSet
   566B 90 0B 92           1376 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0016)
   566E 74 72              1377 	mov	a,#0x72
   5670 F0                 1378 	movx	@dptr,a
                           1379 ;	genPointerSet
                           1380 ;     genFarPointerSet
   5671 90 0B 93           1381 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0017)
   5674 74 65              1382 	mov	a,#0x65
   5676 F0                 1383 	movx	@dptr,a
                           1384 ;	genPointerSet
                           1385 ;     genFarPointerSet
   5677 90 0B 94           1386 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0018)
   567A 74 5F              1387 	mov	a,#0x5F
   567C F0                 1388 	movx	@dptr,a
                           1389 ;	genPointerSet
                           1390 ;     genFarPointerSet
   567D 90 0B 95           1391 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x0019)
   5680 74 67              1392 	mov	a,#0x67
   5682 F0                 1393 	movx	@dptr,a
                           1394 ;	genPointerSet
                           1395 ;     genFarPointerSet
   5683 90 0B 96           1396 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001a)
   5686 74 70              1397 	mov	a,#0x70
   5688 F0                 1398 	movx	@dptr,a
                           1399 ;	genPointerSet
                           1400 ;     genFarPointerSet
   5689 90 0B 97           1401 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001b)
   568C 74 69              1402 	mov	a,#0x69
   568E F0                 1403 	movx	@dptr,a
                           1404 ;	genPointerSet
                           1405 ;     genFarPointerSet
   568F 90 0B 98           1406 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001c)
   5692 74 6F              1407 	mov	a,#0x6F
   5694 F0                 1408 	movx	@dptr,a
                           1409 ;	genPointerSet
                           1410 ;     genFarPointerSet
   5695 90 0B 99           1411 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001d)
   5698 74 2E              1412 	mov	a,#0x2E
   569A F0                 1413 	movx	@dptr,a
                           1414 ;	genPointerSet
                           1415 ;     genFarPointerSet
   569B 90 0B 9A           1416 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001e)
   569E 74 63              1417 	mov	a,#0x63
   56A0 F0                 1418 	movx	@dptr,a
                           1419 ;	genPointerSet
                           1420 ;     genFarPointerSet
   56A1 90 0B 9B           1421 	mov	dptr,#(_GPIO_config_file_name_4_6 + 0x001f)
   56A4 74 00              1422 	mov	a,#0x00
   56A6 F0                 1423 	movx	@dptr,a
                           1424 ;	genAssign
   56A7 90 05 7F           1425 	mov	dptr,#_HAL_assert_fail_PARM_2
   56AA 74 65              1426 	mov	a,#0x65
   56AC F0                 1427 	movx	@dptr,a
   56AD E4                 1428 	clr	a
   56AE A3                 1429 	inc	dptr
   56AF F0                 1430 	movx	@dptr,a
   56B0 A3                 1431 	inc	dptr
   56B1 F0                 1432 	movx	@dptr,a
   56B2 A3                 1433 	inc	dptr
   56B3 F0                 1434 	movx	@dptr,a
                           1435 ;	genCall
   56B4 75 82 7C           1436 	mov	dpl,#_GPIO_config_file_name_4_6
   56B7 75 83 0B           1437 	mov	dph,#(_GPIO_config_file_name_4_6 >> 8)
   56BA 75 F0 00           1438 	mov	b,#0x00
   56BD 12 1B 3F           1439 	lcall	_HAL_assert_fail
   56C0                    1440 00113$:
                    0591   1441 	C$core_gpio.c$103$2$1 ==.
                    0591   1442 	XG$GPIO_config$0$0 ==.
   56C0 22                 1443 	ret
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
   56C1                    1461 _GPIO_set_outputs:
                           1462 ;	genReceive
   56C1 AA F0              1463 	mov	r2,b
   56C3 AB 83              1464 	mov	r3,dph
   56C5 E5 82              1465 	mov	a,dpl
   56C7 90 0B A0           1466 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   56CA F0                 1467 	movx	@dptr,a
   56CB A3                 1468 	inc	dptr
   56CC EB                 1469 	mov	a,r3
   56CD F0                 1470 	movx	@dptr,a
   56CE A3                 1471 	inc	dptr
   56CF EA                 1472 	mov	a,r2
   56D0 F0                 1473 	movx	@dptr,a
                    05A2   1474 	C$core_gpio.c$115$1$1 ==.
                           1475 ;	../drivers/CoreGPIO/core_gpio.c:115: switch( this_gpio->apb_bus_width )
                           1476 ;	genAssign
   56D1 90 0B A0           1477 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   56D4 E0                 1478 	movx	a,@dptr
   56D5 FA                 1479 	mov	r2,a
   56D6 A3                 1480 	inc	dptr
   56D7 E0                 1481 	movx	a,@dptr
   56D8 FB                 1482 	mov	r3,a
   56D9 A3                 1483 	inc	dptr
   56DA E0                 1484 	movx	a,@dptr
   56DB FC                 1485 	mov	r4,a
                           1486 ;	genPlus
                           1487 ;	genPlusIncr
   56DC 74 02              1488 	mov	a,#0x02
   56DE 25 02              1489 	add	a,ar2
   56E0 FD                 1490 	mov	r5,a
   56E1 74 00              1491 	mov	a,#0x00
   56E3 35 03              1492 	addc	a,ar3
   56E5 FE                 1493 	mov	r6,a
   56E6 8C 07              1494 	mov	ar7,r4
                           1495 ;	genPointerGet
                           1496 ;	genGenPointerGet
   56E8 8D 82              1497 	mov	dpl,r5
   56EA 8E 83              1498 	mov	dph,r6
   56EC 8F F0              1499 	mov	b,r7
   56EE 12 71 69           1500 	lcall	__gptrget
   56F1 FD                 1501 	mov	r5,a
                           1502 ;	genCmpEq
                           1503 ;	gencjneshort
   56F2 BD 00 03           1504 	cjne	r5,#0x00,00122$
   56F5 02 57 BA           1505 	ljmp	00103$
   56F8                    1506 00122$:
                           1507 ;	genCmpEq
                           1508 ;	gencjneshort
   56F8 BD 01 03           1509 	cjne	r5,#0x01,00123$
   56FB 02 57 45           1510 	ljmp	00102$
   56FE                    1511 00123$:
                           1512 ;	genCmpEq
                           1513 ;	gencjneshort
   56FE BD 02 02           1514 	cjne	r5,#0x02,00124$
   5701 80 03              1515 	sjmp	00125$
   5703                    1516 00124$:
   5703 02 58 8B           1517 	ljmp	00107$
   5706                    1518 00125$:
                    05D7   1519 	C$core_gpio.c$118$2$2 ==.
                           1520 ;	../drivers/CoreGPIO/core_gpio.c:118: HAL_set_32bit_reg( this_gpio->base_addr, GPIO_OUT, value );
                           1521 ;	genPointerGet
                           1522 ;	genGenPointerGet
   5706 8A 82              1523 	mov	dpl,r2
   5708 8B 83              1524 	mov	dph,r3
   570A 8C F0              1525 	mov	b,r4
   570C 12 71 69           1526 	lcall	__gptrget
   570F FD                 1527 	mov	r5,a
   5710 A3                 1528 	inc	dptr
   5711 12 71 69           1529 	lcall	__gptrget
   5714 FE                 1530 	mov	r6,a
                           1531 ;	genPlus
                           1532 ;	genPlusIncr
   5715 74 A0              1533 	mov	a,#0xA0
   5717 25 05              1534 	add	a,ar5
   5719 FA                 1535 	mov	r2,a
   571A 74 00              1536 	mov	a,#0x00
   571C 35 06              1537 	addc	a,ar6
   571E FB                 1538 	mov	r3,a
                           1539 ;	genAssign
   571F 90 0B 9C           1540 	mov	dptr,#_GPIO_set_outputs_PARM_2
   5722 E0                 1541 	movx	a,@dptr
   5723 FF                 1542 	mov	r7,a
   5724 A3                 1543 	inc	dptr
   5725 E0                 1544 	movx	a,@dptr
   5726 F8                 1545 	mov	r0,a
   5727 A3                 1546 	inc	dptr
   5728 E0                 1547 	movx	a,@dptr
   5729 F9                 1548 	mov	r1,a
   572A A3                 1549 	inc	dptr
   572B E0                 1550 	movx	a,@dptr
   572C FD                 1551 	mov	r5,a
                           1552 ;	genAssign
   572D 90 05 9D           1553 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   5730 EF                 1554 	mov	a,r7
   5731 F0                 1555 	movx	@dptr,a
   5732 A3                 1556 	inc	dptr
   5733 E8                 1557 	mov	a,r0
   5734 F0                 1558 	movx	@dptr,a
   5735 A3                 1559 	inc	dptr
   5736 E9                 1560 	mov	a,r1
   5737 F0                 1561 	movx	@dptr,a
   5738 A3                 1562 	inc	dptr
   5739 ED                 1563 	mov	a,r5
   573A F0                 1564 	movx	@dptr,a
                           1565 ;	genCall
   573B 8A 82              1566 	mov	dpl,r2
   573D 8B 83              1567 	mov	dph,r3
   573F 12 1B AB           1568 	lcall	_HW_set_32bit_reg
                    0613   1569 	C$core_gpio.c$119$2$2 ==.
                           1570 ;	../drivers/CoreGPIO/core_gpio.c:119: break;
   5742 02 59 64           1571 	ljmp	00113$
                    0616   1572 	C$core_gpio.c$121$2$2 ==.
                           1573 ;	../drivers/CoreGPIO/core_gpio.c:121: case GPIO_APB_16_BITS_BUS:
   5745                    1574 00102$:
                    0616   1575 	C$core_gpio.c$122$2$2 ==.
                           1576 ;	../drivers/CoreGPIO/core_gpio.c:122: HAL_set_16bit_reg( this_gpio->base_addr, GPIO_OUT0, (uint16_t)value );
                           1577 ;	genPointerGet
                           1578 ;	genGenPointerGet
   5745 8A 82              1579 	mov	dpl,r2
   5747 8B 83              1580 	mov	dph,r3
   5749 8C F0              1581 	mov	b,r4
   574B 12 71 69           1582 	lcall	__gptrget
   574E FD                 1583 	mov	r5,a
   574F A3                 1584 	inc	dptr
   5750 12 71 69           1585 	lcall	__gptrget
   5753 FE                 1586 	mov	r6,a
                           1587 ;	genPlus
                           1588 ;	genPlusIncr
   5754 74 A0              1589 	mov	a,#0xA0
   5756 25 05              1590 	add	a,ar5
   5758 FD                 1591 	mov	r5,a
   5759 74 00              1592 	mov	a,#0x00
   575B 35 06              1593 	addc	a,ar6
   575D FE                 1594 	mov	r6,a
                           1595 ;	genAssign
   575E 90 0B 9C           1596 	mov	dptr,#_GPIO_set_outputs_PARM_2
   5761 E0                 1597 	movx	a,@dptr
   5762 F5 5A              1598 	mov	_GPIO_set_outputs_sloc1_1_0,a
   5764 A3                 1599 	inc	dptr
   5765 E0                 1600 	movx	a,@dptr
   5766 F5 5B              1601 	mov	(_GPIO_set_outputs_sloc1_1_0 + 1),a
   5768 A3                 1602 	inc	dptr
   5769 E0                 1603 	movx	a,@dptr
   576A F5 5C              1604 	mov	(_GPIO_set_outputs_sloc1_1_0 + 2),a
   576C A3                 1605 	inc	dptr
   576D E0                 1606 	movx	a,@dptr
   576E F5 5D              1607 	mov	(_GPIO_set_outputs_sloc1_1_0 + 3),a
                           1608 ;	genCast
   5770 90 05 9A           1609 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   5773 E5 5A              1610 	mov	a,_GPIO_set_outputs_sloc1_1_0
   5775 F0                 1611 	movx	@dptr,a
   5776 A3                 1612 	inc	dptr
   5777 E5 5B              1613 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 1)
   5779 F0                 1614 	movx	@dptr,a
                           1615 ;	genCall
   577A 8D 82              1616 	mov	dpl,r5
   577C 8E 83              1617 	mov	dph,r6
   577E C0 02              1618 	push	ar2
   5780 C0 03              1619 	push	ar3
   5782 C0 04              1620 	push	ar4
   5784 12 1B C7           1621 	lcall	_HW_set_16bit_reg
   5787 D0 04              1622 	pop	ar4
   5789 D0 03              1623 	pop	ar3
   578B D0 02              1624 	pop	ar2
                    065E   1625 	C$core_gpio.c$123$2$2 ==.
                           1626 ;	../drivers/CoreGPIO/core_gpio.c:123: HAL_set_16bit_reg( this_gpio->base_addr, GPIO_OUT1, (uint16_t)(value >> 16) );
                           1627 ;	genPointerGet
                           1628 ;	genGenPointerGet
   578D 8A 82              1629 	mov	dpl,r2
   578F 8B 83              1630 	mov	dph,r3
   5791 8C F0              1631 	mov	b,r4
   5793 12 71 69           1632 	lcall	__gptrget
   5796 FE                 1633 	mov	r6,a
   5797 A3                 1634 	inc	dptr
   5798 12 71 69           1635 	lcall	__gptrget
   579B FD                 1636 	mov	r5,a
                           1637 ;	genPlus
                           1638 ;	genPlusIncr
   579C 74 A4              1639 	mov	a,#0xA4
   579E 25 06              1640 	add	a,ar6
   57A0 FE                 1641 	mov	r6,a
   57A1 74 00              1642 	mov	a,#0x00
   57A3 35 05              1643 	addc	a,ar5
   57A5 FD                 1644 	mov	r5,a
                           1645 ;	genGetWord
   57A6 90 05 9A           1646 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   57A9 E5 5C              1647 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 2)
   57AB F0                 1648 	movx	@dptr,a
   57AC A3                 1649 	inc	dptr
   57AD E5 5D              1650 	mov	a,(_GPIO_set_outputs_sloc1_1_0 + 3)
   57AF F0                 1651 	movx	@dptr,a
                           1652 ;	genCall
   57B0 8E 82              1653 	mov	dpl,r6
   57B2 8D 83              1654 	mov	dph,r5
   57B4 12 1B C7           1655 	lcall	_HW_set_16bit_reg
                    0688   1656 	C$core_gpio.c$124$2$2 ==.
                           1657 ;	../drivers/CoreGPIO/core_gpio.c:124: break;
   57B7 02 59 64           1658 	ljmp	00113$
                    068B   1659 	C$core_gpio.c$126$2$2 ==.
                           1660 ;	../drivers/CoreGPIO/core_gpio.c:126: case GPIO_APB_8_BITS_BUS:
   57BA                    1661 00103$:
                    068B   1662 	C$core_gpio.c$127$2$2 ==.
                           1663 ;	../drivers/CoreGPIO/core_gpio.c:127: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT0, (uint8_t)value );
                           1664 ;	genPointerGet
                           1665 ;	genGenPointerGet
   57BA 8A 82              1666 	mov	dpl,r2
   57BC 8B 83              1667 	mov	dph,r3
   57BE 8C F0              1668 	mov	b,r4
   57C0 12 71 69           1669 	lcall	__gptrget
   57C3 FD                 1670 	mov	r5,a
   57C4 A3                 1671 	inc	dptr
   57C5 12 71 69           1672 	lcall	__gptrget
   57C8 FE                 1673 	mov	r6,a
                           1674 ;	genPlus
                           1675 ;	genPlusIncr
   57C9 74 A0              1676 	mov	a,#0xA0
   57CB 25 05              1677 	add	a,ar5
   57CD FD                 1678 	mov	r5,a
   57CE 74 00              1679 	mov	a,#0x00
   57D0 35 06              1680 	addc	a,ar6
   57D2 FE                 1681 	mov	r6,a
                           1682 ;	genAssign
   57D3 90 0B 9C           1683 	mov	dptr,#_GPIO_set_outputs_PARM_2
   57D6 E0                 1684 	movx	a,@dptr
   57D7 F5 5E              1685 	mov	_GPIO_set_outputs_sloc2_1_0,a
   57D9 A3                 1686 	inc	dptr
   57DA E0                 1687 	movx	a,@dptr
   57DB F5 5F              1688 	mov	(_GPIO_set_outputs_sloc2_1_0 + 1),a
   57DD A3                 1689 	inc	dptr
   57DE E0                 1690 	movx	a,@dptr
   57DF F5 60              1691 	mov	(_GPIO_set_outputs_sloc2_1_0 + 2),a
   57E1 A3                 1692 	inc	dptr
   57E2 E0                 1693 	movx	a,@dptr
   57E3 F5 61              1694 	mov	(_GPIO_set_outputs_sloc2_1_0 + 3),a
                           1695 ;	genCast
   57E5 90 05 9C           1696 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   57E8 E5 5E              1697 	mov	a,_GPIO_set_outputs_sloc2_1_0
   57EA F0                 1698 	movx	@dptr,a
                           1699 ;	genCall
   57EB 8D 82              1700 	mov	dpl,r5
   57ED 8E 83              1701 	mov	dph,r6
   57EF C0 02              1702 	push	ar2
   57F1 C0 03              1703 	push	ar3
   57F3 C0 04              1704 	push	ar4
   57F5 12 1B E2           1705 	lcall	_HW_set_8bit_reg
   57F8 D0 04              1706 	pop	ar4
   57FA D0 03              1707 	pop	ar3
   57FC D0 02              1708 	pop	ar2
                    06CF   1709 	C$core_gpio.c$128$2$2 ==.
                           1710 ;	../drivers/CoreGPIO/core_gpio.c:128: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT1, (uint8_t)(value >> 8) );
                           1711 ;	genPointerGet
                           1712 ;	genGenPointerGet
   57FE 8A 82              1713 	mov	dpl,r2
   5800 8B 83              1714 	mov	dph,r3
   5802 8C F0              1715 	mov	b,r4
   5804 12 71 69           1716 	lcall	__gptrget
   5807 FE                 1717 	mov	r6,a
   5808 A3                 1718 	inc	dptr
   5809 12 71 69           1719 	lcall	__gptrget
   580C FD                 1720 	mov	r5,a
                           1721 ;	genPlus
                           1722 ;	genPlusIncr
   580D 74 A4              1723 	mov	a,#0xA4
   580F 25 06              1724 	add	a,ar6
   5811 FE                 1725 	mov	r6,a
   5812 74 00              1726 	mov	a,#0x00
   5814 35 05              1727 	addc	a,ar5
   5816 FD                 1728 	mov	r5,a
                           1729 ;	genGetByte
   5817 90 05 9C           1730 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   581A E5 5F              1731 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 1)
   581C F0                 1732 	movx	@dptr,a
                           1733 ;	genCall
   581D 8E 82              1734 	mov	dpl,r6
   581F 8D 83              1735 	mov	dph,r5
   5821 C0 02              1736 	push	ar2
   5823 C0 03              1737 	push	ar3
   5825 C0 04              1738 	push	ar4
   5827 12 1B E2           1739 	lcall	_HW_set_8bit_reg
   582A D0 04              1740 	pop	ar4
   582C D0 03              1741 	pop	ar3
   582E D0 02              1742 	pop	ar2
                    0701   1743 	C$core_gpio.c$129$2$2 ==.
                           1744 ;	../drivers/CoreGPIO/core_gpio.c:129: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT2, (uint8_t)(value >> 16) );
                           1745 ;	genPointerGet
                           1746 ;	genGenPointerGet
   5830 8A 82              1747 	mov	dpl,r2
   5832 8B 83              1748 	mov	dph,r3
   5834 8C F0              1749 	mov	b,r4
   5836 12 71 69           1750 	lcall	__gptrget
   5839 FD                 1751 	mov	r5,a
   583A A3                 1752 	inc	dptr
   583B 12 71 69           1753 	lcall	__gptrget
   583E FE                 1754 	mov	r6,a
                           1755 ;	genPlus
                           1756 ;	genPlusIncr
   583F 74 A8              1757 	mov	a,#0xA8
   5841 25 05              1758 	add	a,ar5
   5843 FD                 1759 	mov	r5,a
   5844 74 00              1760 	mov	a,#0x00
   5846 35 06              1761 	addc	a,ar6
   5848 FE                 1762 	mov	r6,a
                           1763 ;	genGetByte
   5849 90 05 9C           1764 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   584C E5 60              1765 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 2)
   584E F0                 1766 	movx	@dptr,a
                           1767 ;	genCall
   584F 8D 82              1768 	mov	dpl,r5
   5851 8E 83              1769 	mov	dph,r6
   5853 C0 02              1770 	push	ar2
   5855 C0 03              1771 	push	ar3
   5857 C0 04              1772 	push	ar4
   5859 12 1B E2           1773 	lcall	_HW_set_8bit_reg
   585C D0 04              1774 	pop	ar4
   585E D0 03              1775 	pop	ar3
   5860 D0 02              1776 	pop	ar2
                    0733   1777 	C$core_gpio.c$130$2$2 ==.
                           1778 ;	../drivers/CoreGPIO/core_gpio.c:130: HAL_set_8bit_reg( this_gpio->base_addr, GPIO_OUT3, (uint8_t)(value >> 24) );
                           1779 ;	genPointerGet
                           1780 ;	genGenPointerGet
   5862 8A 82              1781 	mov	dpl,r2
   5864 8B 83              1782 	mov	dph,r3
   5866 8C F0              1783 	mov	b,r4
   5868 12 71 69           1784 	lcall	__gptrget
   586B FA                 1785 	mov	r2,a
   586C A3                 1786 	inc	dptr
   586D 12 71 69           1787 	lcall	__gptrget
   5870 FB                 1788 	mov	r3,a
                           1789 ;	genPlus
                           1790 ;	genPlusIncr
   5871 74 AC              1791 	mov	a,#0xAC
   5873 25 02              1792 	add	a,ar2
   5875 FA                 1793 	mov	r2,a
   5876 74 00              1794 	mov	a,#0x00
   5878 35 03              1795 	addc	a,ar3
   587A FB                 1796 	mov	r3,a
                           1797 ;	genGetByte
   587B 90 05 9C           1798 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   587E E5 61              1799 	mov	a,(_GPIO_set_outputs_sloc2_1_0 + 3)
   5880 F0                 1800 	movx	@dptr,a
                           1801 ;	genCall
   5881 8A 82              1802 	mov	dpl,r2
   5883 8B 83              1803 	mov	dph,r3
   5885 12 1B E2           1804 	lcall	_HW_set_8bit_reg
                    0759   1805 	C$core_gpio.c$131$2$2 ==.
                           1806 ;	../drivers/CoreGPIO/core_gpio.c:131: break;
   5888 02 59 64           1807 	ljmp	00113$
                    075C   1808 	C$core_gpio.c$134$2$2 ==.
                           1809 ;	../drivers/CoreGPIO/core_gpio.c:134: HAL_ASSERT(0);
   588B                    1810 00107$:
                           1811 ;	genPointerSet
                           1812 ;     genFarPointerSet
   588B 90 0B A3           1813 	mov	dptr,#_GPIO_set_outputs_file_name_4_4
   588E 74 2E              1814 	mov	a,#0x2E
   5890 F0                 1815 	movx	@dptr,a
                           1816 ;	genPointerSet
                           1817 ;     genFarPointerSet
   5891 90 0B A4           1818 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0001)
   5894 74 2E              1819 	mov	a,#0x2E
   5896 F0                 1820 	movx	@dptr,a
                           1821 ;	genPointerSet
                           1822 ;     genFarPointerSet
   5897 90 0B A5           1823 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0002)
   589A 74 2F              1824 	mov	a,#0x2F
   589C F0                 1825 	movx	@dptr,a
                           1826 ;	genPointerSet
                           1827 ;     genFarPointerSet
   589D 90 0B A6           1828 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0003)
   58A0 74 64              1829 	mov	a,#0x64
   58A2 F0                 1830 	movx	@dptr,a
                           1831 ;	genPointerSet
                           1832 ;     genFarPointerSet
   58A3 90 0B A7           1833 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0004)
   58A6 74 72              1834 	mov	a,#0x72
   58A8 F0                 1835 	movx	@dptr,a
                           1836 ;	genPointerSet
                           1837 ;     genFarPointerSet
   58A9 90 0B A8           1838 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0005)
   58AC 74 69              1839 	mov	a,#0x69
   58AE F0                 1840 	movx	@dptr,a
                           1841 ;	genPointerSet
                           1842 ;     genFarPointerSet
   58AF 90 0B A9           1843 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0006)
   58B2 74 76              1844 	mov	a,#0x76
   58B4 F0                 1845 	movx	@dptr,a
                           1846 ;	genPointerSet
                           1847 ;     genFarPointerSet
   58B5 90 0B AA           1848 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0007)
   58B8 74 65              1849 	mov	a,#0x65
   58BA F0                 1850 	movx	@dptr,a
                           1851 ;	genPointerSet
                           1852 ;     genFarPointerSet
   58BB 90 0B AB           1853 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0008)
   58BE 74 72              1854 	mov	a,#0x72
   58C0 F0                 1855 	movx	@dptr,a
                           1856 ;	genPointerSet
                           1857 ;     genFarPointerSet
   58C1 90 0B AC           1858 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0009)
   58C4 74 73              1859 	mov	a,#0x73
   58C6 F0                 1860 	movx	@dptr,a
                           1861 ;	genPointerSet
                           1862 ;     genFarPointerSet
   58C7 90 0B AD           1863 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000a)
   58CA 74 2F              1864 	mov	a,#0x2F
   58CC F0                 1865 	movx	@dptr,a
                           1866 ;	genPointerSet
                           1867 ;     genFarPointerSet
   58CD 90 0B AE           1868 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000b)
   58D0 74 43              1869 	mov	a,#0x43
   58D2 F0                 1870 	movx	@dptr,a
                           1871 ;	genPointerSet
                           1872 ;     genFarPointerSet
   58D3 90 0B AF           1873 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000c)
   58D6 74 6F              1874 	mov	a,#0x6F
   58D8 F0                 1875 	movx	@dptr,a
                           1876 ;	genPointerSet
                           1877 ;     genFarPointerSet
   58D9 90 0B B0           1878 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000d)
   58DC 74 72              1879 	mov	a,#0x72
   58DE F0                 1880 	movx	@dptr,a
                           1881 ;	genPointerSet
                           1882 ;     genFarPointerSet
   58DF 90 0B B1           1883 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000e)
   58E2 74 65              1884 	mov	a,#0x65
   58E4 F0                 1885 	movx	@dptr,a
                           1886 ;	genPointerSet
                           1887 ;     genFarPointerSet
   58E5 90 0B B2           1888 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x000f)
   58E8 74 47              1889 	mov	a,#0x47
   58EA F0                 1890 	movx	@dptr,a
                           1891 ;	genPointerSet
                           1892 ;     genFarPointerSet
   58EB 90 0B B3           1893 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0010)
   58EE 74 50              1894 	mov	a,#0x50
   58F0 F0                 1895 	movx	@dptr,a
                           1896 ;	genPointerSet
                           1897 ;     genFarPointerSet
   58F1 90 0B B4           1898 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0011)
   58F4 74 49              1899 	mov	a,#0x49
   58F6 F0                 1900 	movx	@dptr,a
                           1901 ;	genPointerSet
                           1902 ;     genFarPointerSet
   58F7 90 0B B5           1903 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0012)
   58FA 74 4F              1904 	mov	a,#0x4F
   58FC F0                 1905 	movx	@dptr,a
                           1906 ;	genPointerSet
                           1907 ;     genFarPointerSet
   58FD 90 0B B6           1908 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0013)
   5900 74 2F              1909 	mov	a,#0x2F
   5902 F0                 1910 	movx	@dptr,a
                           1911 ;	genPointerSet
                           1912 ;     genFarPointerSet
   5903 90 0B B7           1913 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0014)
   5906 74 63              1914 	mov	a,#0x63
   5908 F0                 1915 	movx	@dptr,a
                           1916 ;	genPointerSet
                           1917 ;     genFarPointerSet
   5909 90 0B B8           1918 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0015)
   590C 74 6F              1919 	mov	a,#0x6F
   590E F0                 1920 	movx	@dptr,a
                           1921 ;	genPointerSet
                           1922 ;     genFarPointerSet
   590F 90 0B B9           1923 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0016)
   5912 74 72              1924 	mov	a,#0x72
   5914 F0                 1925 	movx	@dptr,a
                           1926 ;	genPointerSet
                           1927 ;     genFarPointerSet
   5915 90 0B BA           1928 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0017)
   5918 74 65              1929 	mov	a,#0x65
   591A F0                 1930 	movx	@dptr,a
                           1931 ;	genPointerSet
                           1932 ;     genFarPointerSet
   591B 90 0B BB           1933 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0018)
   591E 74 5F              1934 	mov	a,#0x5F
   5920 F0                 1935 	movx	@dptr,a
                           1936 ;	genPointerSet
                           1937 ;     genFarPointerSet
   5921 90 0B BC           1938 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x0019)
   5924 74 67              1939 	mov	a,#0x67
   5926 F0                 1940 	movx	@dptr,a
                           1941 ;	genPointerSet
                           1942 ;     genFarPointerSet
   5927 90 0B BD           1943 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001a)
   592A 74 70              1944 	mov	a,#0x70
   592C F0                 1945 	movx	@dptr,a
                           1946 ;	genPointerSet
                           1947 ;     genFarPointerSet
   592D 90 0B BE           1948 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001b)
   5930 74 69              1949 	mov	a,#0x69
   5932 F0                 1950 	movx	@dptr,a
                           1951 ;	genPointerSet
                           1952 ;     genFarPointerSet
   5933 90 0B BF           1953 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001c)
   5936 74 6F              1954 	mov	a,#0x6F
   5938 F0                 1955 	movx	@dptr,a
                           1956 ;	genPointerSet
                           1957 ;     genFarPointerSet
   5939 90 0B C0           1958 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001d)
   593C 74 2E              1959 	mov	a,#0x2E
   593E F0                 1960 	movx	@dptr,a
                           1961 ;	genPointerSet
                           1962 ;     genFarPointerSet
   593F 90 0B C1           1963 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001e)
   5942 74 63              1964 	mov	a,#0x63
   5944 F0                 1965 	movx	@dptr,a
                           1966 ;	genPointerSet
                           1967 ;     genFarPointerSet
   5945 90 0B C2           1968 	mov	dptr,#(_GPIO_set_outputs_file_name_4_4 + 0x001f)
   5948 74 00              1969 	mov	a,#0x00
   594A F0                 1970 	movx	@dptr,a
                           1971 ;	genAssign
   594B 90 05 7F           1972 	mov	dptr,#_HAL_assert_fail_PARM_2
   594E 74 86              1973 	mov	a,#0x86
   5950 F0                 1974 	movx	@dptr,a
   5951 E4                 1975 	clr	a
   5952 A3                 1976 	inc	dptr
   5953 F0                 1977 	movx	@dptr,a
   5954 A3                 1978 	inc	dptr
   5955 F0                 1979 	movx	@dptr,a
   5956 A3                 1980 	inc	dptr
   5957 F0                 1981 	movx	@dptr,a
                           1982 ;	genCall
   5958 75 82 A3           1983 	mov	dpl,#_GPIO_set_outputs_file_name_4_4
   595B 75 83 0B           1984 	mov	dph,#(_GPIO_set_outputs_file_name_4_4 >> 8)
   595E 75 F0 00           1985 	mov	b,#0x00
   5961 12 1B 3F           1986 	lcall	_HAL_assert_fail
                    0835   1987 	C$core_gpio.c$145$1$1 ==.
                           1988 ;	../drivers/CoreGPIO/core_gpio.c:145: HAL_ASSERT( GPIO_get_outputs( this_gpio ) == value );
   5964                    1989 00113$:
                           1990 ;	genAssign
   5964 90 0B A0           1991 	mov	dptr,#_GPIO_set_outputs_this_gpio_1_1
   5967 E0                 1992 	movx	a,@dptr
   5968 FA                 1993 	mov	r2,a
   5969 A3                 1994 	inc	dptr
   596A E0                 1995 	movx	a,@dptr
   596B FB                 1996 	mov	r3,a
   596C A3                 1997 	inc	dptr
   596D E0                 1998 	movx	a,@dptr
   596E FC                 1999 	mov	r4,a
                           2000 ;	genCall
   596F 8A 82              2001 	mov	dpl,r2
   5971 8B 83              2002 	mov	dph,r3
   5973 8C F0              2003 	mov	b,r4
   5975 12 5C AF           2004 	lcall	_GPIO_get_outputs
   5978 AA 82              2005 	mov	r2,dpl
   597A AB 83              2006 	mov	r3,dph
   597C AC F0              2007 	mov	r4,b
   597E FD                 2008 	mov	r5,a
                           2009 ;	genAssign
   597F 90 0B 9C           2010 	mov	dptr,#_GPIO_set_outputs_PARM_2
   5982 E0                 2011 	movx	a,@dptr
   5983 FE                 2012 	mov	r6,a
   5984 A3                 2013 	inc	dptr
   5985 E0                 2014 	movx	a,@dptr
   5986 FF                 2015 	mov	r7,a
   5987 A3                 2016 	inc	dptr
   5988 E0                 2017 	movx	a,@dptr
   5989 F8                 2018 	mov	r0,a
   598A A3                 2019 	inc	dptr
   598B E0                 2020 	movx	a,@dptr
   598C F9                 2021 	mov	r1,a
                           2022 ;	genCmpEq
                           2023 ;	gencjneshort
   598D EA                 2024 	mov	a,r2
   598E B5 06 0F           2025 	cjne	a,ar6,00126$
   5991 EB                 2026 	mov	a,r3
   5992 B5 07 0B           2027 	cjne	a,ar7,00126$
   5995 EC                 2028 	mov	a,r4
   5996 B5 00 07           2029 	cjne	a,ar0,00126$
   5999 ED                 2030 	mov	a,r5
   599A B5 01 03           2031 	cjne	a,ar1,00126$
   599D 02 5A 79           2032 	ljmp	00116$
   59A0                    2033 00126$:
                           2034 ;	genPointerSet
                           2035 ;     genFarPointerSet
   59A0 90 0B C3           2036 	mov	dptr,#_GPIO_set_outputs_file_name_3_6
   59A3 74 2E              2037 	mov	a,#0x2E
   59A5 F0                 2038 	movx	@dptr,a
                           2039 ;	genPointerSet
                           2040 ;     genFarPointerSet
   59A6 90 0B C4           2041 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0001)
   59A9 74 2E              2042 	mov	a,#0x2E
   59AB F0                 2043 	movx	@dptr,a
                           2044 ;	genPointerSet
                           2045 ;     genFarPointerSet
   59AC 90 0B C5           2046 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0002)
   59AF 74 2F              2047 	mov	a,#0x2F
   59B1 F0                 2048 	movx	@dptr,a
                           2049 ;	genPointerSet
                           2050 ;     genFarPointerSet
   59B2 90 0B C6           2051 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0003)
   59B5 74 64              2052 	mov	a,#0x64
   59B7 F0                 2053 	movx	@dptr,a
                           2054 ;	genPointerSet
                           2055 ;     genFarPointerSet
   59B8 90 0B C7           2056 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0004)
   59BB 74 72              2057 	mov	a,#0x72
   59BD F0                 2058 	movx	@dptr,a
                           2059 ;	genPointerSet
                           2060 ;     genFarPointerSet
   59BE 90 0B C8           2061 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0005)
   59C1 74 69              2062 	mov	a,#0x69
   59C3 F0                 2063 	movx	@dptr,a
                           2064 ;	genPointerSet
                           2065 ;     genFarPointerSet
   59C4 90 0B C9           2066 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0006)
   59C7 74 76              2067 	mov	a,#0x76
   59C9 F0                 2068 	movx	@dptr,a
                           2069 ;	genPointerSet
                           2070 ;     genFarPointerSet
   59CA 90 0B CA           2071 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0007)
   59CD 74 65              2072 	mov	a,#0x65
   59CF F0                 2073 	movx	@dptr,a
                           2074 ;	genPointerSet
                           2075 ;     genFarPointerSet
   59D0 90 0B CB           2076 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0008)
   59D3 74 72              2077 	mov	a,#0x72
   59D5 F0                 2078 	movx	@dptr,a
                           2079 ;	genPointerSet
                           2080 ;     genFarPointerSet
   59D6 90 0B CC           2081 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0009)
   59D9 74 73              2082 	mov	a,#0x73
   59DB F0                 2083 	movx	@dptr,a
                           2084 ;	genPointerSet
                           2085 ;     genFarPointerSet
   59DC 90 0B CD           2086 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000a)
   59DF 74 2F              2087 	mov	a,#0x2F
   59E1 F0                 2088 	movx	@dptr,a
                           2089 ;	genPointerSet
                           2090 ;     genFarPointerSet
   59E2 90 0B CE           2091 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000b)
   59E5 74 43              2092 	mov	a,#0x43
   59E7 F0                 2093 	movx	@dptr,a
                           2094 ;	genPointerSet
                           2095 ;     genFarPointerSet
   59E8 90 0B CF           2096 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000c)
   59EB 74 6F              2097 	mov	a,#0x6F
   59ED F0                 2098 	movx	@dptr,a
                           2099 ;	genPointerSet
                           2100 ;     genFarPointerSet
   59EE 90 0B D0           2101 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000d)
   59F1 74 72              2102 	mov	a,#0x72
   59F3 F0                 2103 	movx	@dptr,a
                           2104 ;	genPointerSet
                           2105 ;     genFarPointerSet
   59F4 90 0B D1           2106 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000e)
   59F7 74 65              2107 	mov	a,#0x65
   59F9 F0                 2108 	movx	@dptr,a
                           2109 ;	genPointerSet
                           2110 ;     genFarPointerSet
   59FA 90 0B D2           2111 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x000f)
   59FD 74 47              2112 	mov	a,#0x47
   59FF F0                 2113 	movx	@dptr,a
                           2114 ;	genPointerSet
                           2115 ;     genFarPointerSet
   5A00 90 0B D3           2116 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0010)
   5A03 74 50              2117 	mov	a,#0x50
   5A05 F0                 2118 	movx	@dptr,a
                           2119 ;	genPointerSet
                           2120 ;     genFarPointerSet
   5A06 90 0B D4           2121 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0011)
   5A09 74 49              2122 	mov	a,#0x49
   5A0B F0                 2123 	movx	@dptr,a
                           2124 ;	genPointerSet
                           2125 ;     genFarPointerSet
   5A0C 90 0B D5           2126 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0012)
   5A0F 74 4F              2127 	mov	a,#0x4F
   5A11 F0                 2128 	movx	@dptr,a
                           2129 ;	genPointerSet
                           2130 ;     genFarPointerSet
   5A12 90 0B D6           2131 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0013)
   5A15 74 2F              2132 	mov	a,#0x2F
   5A17 F0                 2133 	movx	@dptr,a
                           2134 ;	genPointerSet
                           2135 ;     genFarPointerSet
   5A18 90 0B D7           2136 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0014)
   5A1B 74 63              2137 	mov	a,#0x63
   5A1D F0                 2138 	movx	@dptr,a
                           2139 ;	genPointerSet
                           2140 ;     genFarPointerSet
   5A1E 90 0B D8           2141 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0015)
   5A21 74 6F              2142 	mov	a,#0x6F
   5A23 F0                 2143 	movx	@dptr,a
                           2144 ;	genPointerSet
                           2145 ;     genFarPointerSet
   5A24 90 0B D9           2146 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0016)
   5A27 74 72              2147 	mov	a,#0x72
   5A29 F0                 2148 	movx	@dptr,a
                           2149 ;	genPointerSet
                           2150 ;     genFarPointerSet
   5A2A 90 0B DA           2151 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0017)
   5A2D 74 65              2152 	mov	a,#0x65
   5A2F F0                 2153 	movx	@dptr,a
                           2154 ;	genPointerSet
                           2155 ;     genFarPointerSet
   5A30 90 0B DB           2156 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0018)
   5A33 74 5F              2157 	mov	a,#0x5F
   5A35 F0                 2158 	movx	@dptr,a
                           2159 ;	genPointerSet
                           2160 ;     genFarPointerSet
   5A36 90 0B DC           2161 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x0019)
   5A39 74 67              2162 	mov	a,#0x67
   5A3B F0                 2163 	movx	@dptr,a
                           2164 ;	genPointerSet
                           2165 ;     genFarPointerSet
   5A3C 90 0B DD           2166 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001a)
   5A3F 74 70              2167 	mov	a,#0x70
   5A41 F0                 2168 	movx	@dptr,a
                           2169 ;	genPointerSet
                           2170 ;     genFarPointerSet
   5A42 90 0B DE           2171 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001b)
   5A45 74 69              2172 	mov	a,#0x69
   5A47 F0                 2173 	movx	@dptr,a
                           2174 ;	genPointerSet
                           2175 ;     genFarPointerSet
   5A48 90 0B DF           2176 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001c)
   5A4B 74 6F              2177 	mov	a,#0x6F
   5A4D F0                 2178 	movx	@dptr,a
                           2179 ;	genPointerSet
                           2180 ;     genFarPointerSet
   5A4E 90 0B E0           2181 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001d)
   5A51 74 2E              2182 	mov	a,#0x2E
   5A53 F0                 2183 	movx	@dptr,a
                           2184 ;	genPointerSet
                           2185 ;     genFarPointerSet
   5A54 90 0B E1           2186 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001e)
   5A57 74 63              2187 	mov	a,#0x63
   5A59 F0                 2188 	movx	@dptr,a
                           2189 ;	genPointerSet
                           2190 ;     genFarPointerSet
   5A5A 90 0B E2           2191 	mov	dptr,#(_GPIO_set_outputs_file_name_3_6 + 0x001f)
   5A5D 74 00              2192 	mov	a,#0x00
   5A5F F0                 2193 	movx	@dptr,a
                           2194 ;	genAssign
   5A60 90 05 7F           2195 	mov	dptr,#_HAL_assert_fail_PARM_2
   5A63 74 91              2196 	mov	a,#0x91
   5A65 F0                 2197 	movx	@dptr,a
   5A66 E4                 2198 	clr	a
   5A67 A3                 2199 	inc	dptr
   5A68 F0                 2200 	movx	@dptr,a
   5A69 A3                 2201 	inc	dptr
   5A6A F0                 2202 	movx	@dptr,a
   5A6B A3                 2203 	inc	dptr
   5A6C F0                 2204 	movx	@dptr,a
                           2205 ;	genCall
   5A6D 75 82 C3           2206 	mov	dpl,#_GPIO_set_outputs_file_name_3_6
   5A70 75 83 0B           2207 	mov	dph,#(_GPIO_set_outputs_file_name_3_6 >> 8)
   5A73 75 F0 00           2208 	mov	b,#0x00
   5A76 12 1B 3F           2209 	lcall	_HAL_assert_fail
   5A79                    2210 00116$:
                    094A   2211 	C$core_gpio.c$146$1$1 ==.
                    094A   2212 	XG$GPIO_set_outputs$0$0 ==.
   5A79 22                 2213 	ret
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
   5A7A                    2227 _GPIO_get_inputs:
                           2228 ;	genReceive
   5A7A AA F0              2229 	mov	r2,b
   5A7C AB 83              2230 	mov	r3,dph
   5A7E E5 82              2231 	mov	a,dpl
   5A80 90 0B E3           2232 	mov	dptr,#_GPIO_get_inputs_this_gpio_1_1
   5A83 F0                 2233 	movx	@dptr,a
   5A84 A3                 2234 	inc	dptr
   5A85 EB                 2235 	mov	a,r3
   5A86 F0                 2236 	movx	@dptr,a
   5A87 A3                 2237 	inc	dptr
   5A88 EA                 2238 	mov	a,r2
   5A89 F0                 2239 	movx	@dptr,a
                    095B   2240 	C$core_gpio.c$157$1$1 ==.
                           2241 ;	../drivers/CoreGPIO/core_gpio.c:157: uint32_t gpio_in = 0;
                           2242 ;	genAssign
   5A8A 90 0B E6           2243 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   5A8D E4                 2244 	clr	a
   5A8E F0                 2245 	movx	@dptr,a
   5A8F A3                 2246 	inc	dptr
   5A90 F0                 2247 	movx	@dptr,a
   5A91 A3                 2248 	inc	dptr
   5A92 F0                 2249 	movx	@dptr,a
   5A93 A3                 2250 	inc	dptr
   5A94 F0                 2251 	movx	@dptr,a
                    0966   2252 	C$core_gpio.c$159$1$1 ==.
                           2253 ;	../drivers/CoreGPIO/core_gpio.c:159: switch( this_gpio->apb_bus_width )
                           2254 ;	genAssign
   5A95 90 0B E3           2255 	mov	dptr,#_GPIO_get_inputs_this_gpio_1_1
   5A98 E0                 2256 	movx	a,@dptr
   5A99 FA                 2257 	mov	r2,a
   5A9A A3                 2258 	inc	dptr
   5A9B E0                 2259 	movx	a,@dptr
   5A9C FB                 2260 	mov	r3,a
   5A9D A3                 2261 	inc	dptr
   5A9E E0                 2262 	movx	a,@dptr
   5A9F FC                 2263 	mov	r4,a
                           2264 ;	genPlus
                           2265 ;	genPlusIncr
   5AA0 74 02              2266 	mov	a,#0x02
   5AA2 25 02              2267 	add	a,ar2
   5AA4 FD                 2268 	mov	r5,a
   5AA5 74 00              2269 	mov	a,#0x00
   5AA7 35 03              2270 	addc	a,ar3
   5AA9 FE                 2271 	mov	r6,a
   5AAA 8C 07              2272 	mov	ar7,r4
                           2273 ;	genPointerGet
                           2274 ;	genGenPointerGet
   5AAC 8D 82              2275 	mov	dpl,r5
   5AAE 8E 83              2276 	mov	dph,r6
   5AB0 8F F0              2277 	mov	b,r7
   5AB2 12 71 69           2278 	lcall	__gptrget
   5AB5 FD                 2279 	mov	r5,a
                           2280 ;	genCmpEq
                           2281 ;	gencjneshort
   5AB6 BD 00 03           2282 	cjne	r5,#0x00,00116$
   5AB9 02 5B 39           2283 	ljmp	00103$
   5ABC                    2284 00116$:
                           2285 ;	genCmpEq
                           2286 ;	gencjneshort
   5ABC BD 01 03           2287 	cjne	r5,#0x01,00117$
   5ABF 02 5B 02           2288 	ljmp	00102$
   5AC2                    2289 00117$:
                           2290 ;	genCmpEq
                           2291 ;	gencjneshort
   5AC2 BD 02 02           2292 	cjne	r5,#0x02,00118$
   5AC5 80 03              2293 	sjmp	00119$
   5AC7                    2294 00118$:
   5AC7 02 5B C0           2295 	ljmp	00107$
   5ACA                    2296 00119$:
                    099B   2297 	C$core_gpio.c$162$2$2 ==.
                           2298 ;	../drivers/CoreGPIO/core_gpio.c:162: gpio_in = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_IN );
                           2299 ;	genPointerGet
                           2300 ;	genGenPointerGet
   5ACA 8A 82              2301 	mov	dpl,r2
   5ACC 8B 83              2302 	mov	dph,r3
   5ACE 8C F0              2303 	mov	b,r4
   5AD0 12 71 69           2304 	lcall	__gptrget
   5AD3 FD                 2305 	mov	r5,a
   5AD4 A3                 2306 	inc	dptr
   5AD5 12 71 69           2307 	lcall	__gptrget
   5AD8 FE                 2308 	mov	r6,a
                           2309 ;	genPlus
                           2310 ;	genPlusIncr
   5AD9 74 90              2311 	mov	a,#0x90
   5ADB 25 05              2312 	add	a,ar5
   5ADD FD                 2313 	mov	r5,a
   5ADE 74 00              2314 	mov	a,#0x00
   5AE0 35 06              2315 	addc	a,ar6
   5AE2 FE                 2316 	mov	r6,a
                           2317 ;	genCall
   5AE3 8D 82              2318 	mov	dpl,r5
   5AE5 8E 83              2319 	mov	dph,r6
   5AE7 12 1B 9F           2320 	lcall	_HW_get_32bit_reg
   5AEA AD 82              2321 	mov	r5,dpl
   5AEC AE 83              2322 	mov	r6,dph
   5AEE AF F0              2323 	mov	r7,b
   5AF0 F8                 2324 	mov	r0,a
                           2325 ;	genAssign
   5AF1 90 0B E6           2326 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   5AF4 ED                 2327 	mov	a,r5
   5AF5 F0                 2328 	movx	@dptr,a
   5AF6 A3                 2329 	inc	dptr
   5AF7 EE                 2330 	mov	a,r6
   5AF8 F0                 2331 	movx	@dptr,a
   5AF9 A3                 2332 	inc	dptr
   5AFA EF                 2333 	mov	a,r7
   5AFB F0                 2334 	movx	@dptr,a
   5AFC A3                 2335 	inc	dptr
   5AFD E8                 2336 	mov	a,r0
   5AFE F0                 2337 	movx	@dptr,a
                    09D0   2338 	C$core_gpio.c$163$2$2 ==.
                           2339 ;	../drivers/CoreGPIO/core_gpio.c:163: break;
   5AFF 02 5C 99           2340 	ljmp	00110$
                    09D3   2341 	C$core_gpio.c$165$2$2 ==.
                           2342 ;	../drivers/CoreGPIO/core_gpio.c:165: case GPIO_APB_16_BITS_BUS:
   5B02                    2343 00102$:
                    09D3   2344 	C$core_gpio.c$166$2$2 ==.
                           2345 ;	../drivers/CoreGPIO/core_gpio.c:166: gpio_in |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_IN0 );
                           2346 ;	genPointerGet
                           2347 ;	genGenPointerGet
   5B02 8A 82              2348 	mov	dpl,r2
   5B04 8B 83              2349 	mov	dph,r3
   5B06 8C F0              2350 	mov	b,r4
   5B08 12 71 69           2351 	lcall	__gptrget
   5B0B FD                 2352 	mov	r5,a
   5B0C A3                 2353 	inc	dptr
   5B0D 12 71 69           2354 	lcall	__gptrget
   5B10 FE                 2355 	mov	r6,a
                           2356 ;	genPlus
                           2357 ;	genPlusIncr
   5B11 74 90              2358 	mov	a,#0x90
   5B13 25 05              2359 	add	a,ar5
   5B15 FD                 2360 	mov	r5,a
   5B16 74 00              2361 	mov	a,#0x00
   5B18 35 06              2362 	addc	a,ar6
   5B1A FE                 2363 	mov	r6,a
                           2364 ;	genCall
   5B1B 8D 82              2365 	mov	dpl,r5
   5B1D 8E 83              2366 	mov	dph,r6
   5B1F 12 1B DB           2367 	lcall	_HW_get_16bit_reg
   5B22 AD 82              2368 	mov	r5,dpl
   5B24 AE 83              2369 	mov	r6,dph
                           2370 ;	genCast
   5B26 90 0B E6           2371 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   5B29 ED                 2372 	mov	a,r5
   5B2A F0                 2373 	movx	@dptr,a
   5B2B A3                 2374 	inc	dptr
   5B2C EE                 2375 	mov	a,r6
   5B2D F0                 2376 	movx	@dptr,a
   5B2E A3                 2377 	inc	dptr
   5B2F 74 00              2378 	mov	a,#0x00
   5B31 F0                 2379 	movx	@dptr,a
   5B32 A3                 2380 	inc	dptr
   5B33 74 00              2381 	mov	a,#0x00
   5B35 F0                 2382 	movx	@dptr,a
                    0A07   2383 	C$core_gpio.c$168$2$2 ==.
                           2384 ;	../drivers/CoreGPIO/core_gpio.c:168: break;
   5B36 02 5C 99           2385 	ljmp	00110$
                    0A0A   2386 	C$core_gpio.c$170$2$2 ==.
                           2387 ;	../drivers/CoreGPIO/core_gpio.c:170: case GPIO_APB_8_BITS_BUS:
   5B39                    2388 00103$:
                    0A0A   2389 	C$core_gpio.c$171$2$2 ==.
                           2390 ;	../drivers/CoreGPIO/core_gpio.c:171: gpio_in |= HAL_get_8bit_reg( this_gpio->base_addr, GPIO_IN0 );
                           2391 ;	genPointerGet
                           2392 ;	genGenPointerGet
   5B39 8A 82              2393 	mov	dpl,r2
   5B3B 8B 83              2394 	mov	dph,r3
   5B3D 8C F0              2395 	mov	b,r4
   5B3F 12 71 69           2396 	lcall	__gptrget
   5B42 FD                 2397 	mov	r5,a
   5B43 A3                 2398 	inc	dptr
   5B44 12 71 69           2399 	lcall	__gptrget
   5B47 FE                 2400 	mov	r6,a
                           2401 ;	genPlus
                           2402 ;	genPlusIncr
   5B48 74 90              2403 	mov	a,#0x90
   5B4A 25 05              2404 	add	a,ar5
   5B4C FD                 2405 	mov	r5,a
   5B4D 74 00              2406 	mov	a,#0x00
   5B4F 35 06              2407 	addc	a,ar6
   5B51 FE                 2408 	mov	r6,a
                           2409 ;	genCall
   5B52 8D 82              2410 	mov	dpl,r5
   5B54 8E 83              2411 	mov	dph,r6
   5B56 C0 02              2412 	push	ar2
   5B58 C0 03              2413 	push	ar3
   5B5A C0 04              2414 	push	ar4
   5B5C 12 1B F0           2415 	lcall	_HW_get_8bit_reg
   5B5F AD 82              2416 	mov	r5,dpl
   5B61 D0 04              2417 	pop	ar4
   5B63 D0 03              2418 	pop	ar3
   5B65 D0 02              2419 	pop	ar2
                           2420 ;	genCast
   5B67 7E 00              2421 	mov	r6,#0x00
   5B69 7F 00              2422 	mov	r7,#0x00
   5B6B 78 00              2423 	mov	r0,#0x00
                    0A3E   2424 	C$core_gpio.c$172$2$2 ==.
                           2425 ;	../drivers/CoreGPIO/core_gpio.c:172: gpio_in |= (HAL_get_8bit_reg( this_gpio->base_addr, GPIO_IN1 ) << 8);
                           2426 ;	genPointerGet
                           2427 ;	genGenPointerGet
   5B6D 8A 82              2428 	mov	dpl,r2
   5B6F 8B 83              2429 	mov	dph,r3
   5B71 8C F0              2430 	mov	b,r4
   5B73 12 71 69           2431 	lcall	__gptrget
   5B76 FA                 2432 	mov	r2,a
   5B77 A3                 2433 	inc	dptr
   5B78 12 71 69           2434 	lcall	__gptrget
   5B7B FB                 2435 	mov	r3,a
                           2436 ;	genPlus
                           2437 ;	genPlusIncr
   5B7C 74 94              2438 	mov	a,#0x94
   5B7E 25 02              2439 	add	a,ar2
   5B80 FA                 2440 	mov	r2,a
   5B81 74 00              2441 	mov	a,#0x00
   5B83 35 03              2442 	addc	a,ar3
   5B85 FB                 2443 	mov	r3,a
                           2444 ;	genCall
   5B86 8A 82              2445 	mov	dpl,r2
   5B88 8B 83              2446 	mov	dph,r3
   5B8A C0 05              2447 	push	ar5
   5B8C C0 06              2448 	push	ar6
   5B8E C0 07              2449 	push	ar7
   5B90 C0 00              2450 	push	ar0
   5B92 12 1B F0           2451 	lcall	_HW_get_8bit_reg
   5B95 AA 82              2452 	mov	r2,dpl
   5B97 D0 00              2453 	pop	ar0
   5B99 D0 07              2454 	pop	ar7
   5B9B D0 06              2455 	pop	ar6
   5B9D D0 05              2456 	pop	ar5
                           2457 ;	genCast
   5B9F 7B 00              2458 	mov	r3,#0x00
                           2459 ;	genLeftShift
                           2460 ;	genLeftShiftLiteral
                           2461 ;	genlshTwo
   5BA1 8A 03              2462 	mov	ar3,r2
   5BA3 7A 00              2463 	mov	r2,#0x00
                           2464 ;	genCast
   5BA5 EB                 2465 	mov	a,r3
   5BA6 33                 2466 	rlc	a
   5BA7 95 E0              2467 	subb	a,acc
   5BA9 FC                 2468 	mov	r4,a
   5BAA F9                 2469 	mov	r1,a
                           2470 ;	genOr
   5BAB 90 0B E6           2471 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   5BAE EA                 2472 	mov	a,r2
   5BAF 4D                 2473 	orl	a,r5
   5BB0 F0                 2474 	movx	@dptr,a
   5BB1 EB                 2475 	mov	a,r3
   5BB2 4E                 2476 	orl	a,r6
   5BB3 A3                 2477 	inc	dptr
   5BB4 F0                 2478 	movx	@dptr,a
   5BB5 EC                 2479 	mov	a,r4
   5BB6 4F                 2480 	orl	a,r7
   5BB7 A3                 2481 	inc	dptr
   5BB8 F0                 2482 	movx	@dptr,a
   5BB9 E9                 2483 	mov	a,r1
   5BBA 48                 2484 	orl	a,r0
   5BBB A3                 2485 	inc	dptr
   5BBC F0                 2486 	movx	@dptr,a
                    0A8E   2487 	C$core_gpio.c$175$2$2 ==.
                           2488 ;	../drivers/CoreGPIO/core_gpio.c:175: break;
   5BBD 02 5C 99           2489 	ljmp	00110$
                    0A91   2490 	C$core_gpio.c$178$2$2 ==.
                           2491 ;	../drivers/CoreGPIO/core_gpio.c:178: HAL_ASSERT(0);
   5BC0                    2492 00107$:
                           2493 ;	genPointerSet
                           2494 ;     genFarPointerSet
   5BC0 90 0B EA           2495 	mov	dptr,#_GPIO_get_inputs_file_name_4_4
   5BC3 74 2E              2496 	mov	a,#0x2E
   5BC5 F0                 2497 	movx	@dptr,a
                           2498 ;	genPointerSet
                           2499 ;     genFarPointerSet
   5BC6 90 0B EB           2500 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0001)
   5BC9 74 2E              2501 	mov	a,#0x2E
   5BCB F0                 2502 	movx	@dptr,a
                           2503 ;	genPointerSet
                           2504 ;     genFarPointerSet
   5BCC 90 0B EC           2505 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0002)
   5BCF 74 2F              2506 	mov	a,#0x2F
   5BD1 F0                 2507 	movx	@dptr,a
                           2508 ;	genPointerSet
                           2509 ;     genFarPointerSet
   5BD2 90 0B ED           2510 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0003)
   5BD5 74 64              2511 	mov	a,#0x64
   5BD7 F0                 2512 	movx	@dptr,a
                           2513 ;	genPointerSet
                           2514 ;     genFarPointerSet
   5BD8 90 0B EE           2515 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0004)
   5BDB 74 72              2516 	mov	a,#0x72
   5BDD F0                 2517 	movx	@dptr,a
                           2518 ;	genPointerSet
                           2519 ;     genFarPointerSet
   5BDE 90 0B EF           2520 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0005)
   5BE1 74 69              2521 	mov	a,#0x69
   5BE3 F0                 2522 	movx	@dptr,a
                           2523 ;	genPointerSet
                           2524 ;     genFarPointerSet
   5BE4 90 0B F0           2525 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0006)
   5BE7 74 76              2526 	mov	a,#0x76
   5BE9 F0                 2527 	movx	@dptr,a
                           2528 ;	genPointerSet
                           2529 ;     genFarPointerSet
   5BEA 90 0B F1           2530 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0007)
   5BED 74 65              2531 	mov	a,#0x65
   5BEF F0                 2532 	movx	@dptr,a
                           2533 ;	genPointerSet
                           2534 ;     genFarPointerSet
   5BF0 90 0B F2           2535 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0008)
   5BF3 74 72              2536 	mov	a,#0x72
   5BF5 F0                 2537 	movx	@dptr,a
                           2538 ;	genPointerSet
                           2539 ;     genFarPointerSet
   5BF6 90 0B F3           2540 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0009)
   5BF9 74 73              2541 	mov	a,#0x73
   5BFB F0                 2542 	movx	@dptr,a
                           2543 ;	genPointerSet
                           2544 ;     genFarPointerSet
   5BFC 90 0B F4           2545 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000a)
   5BFF 74 2F              2546 	mov	a,#0x2F
   5C01 F0                 2547 	movx	@dptr,a
                           2548 ;	genPointerSet
                           2549 ;     genFarPointerSet
   5C02 90 0B F5           2550 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000b)
   5C05 74 43              2551 	mov	a,#0x43
   5C07 F0                 2552 	movx	@dptr,a
                           2553 ;	genPointerSet
                           2554 ;     genFarPointerSet
   5C08 90 0B F6           2555 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000c)
   5C0B 74 6F              2556 	mov	a,#0x6F
   5C0D F0                 2557 	movx	@dptr,a
                           2558 ;	genPointerSet
                           2559 ;     genFarPointerSet
   5C0E 90 0B F7           2560 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000d)
   5C11 74 72              2561 	mov	a,#0x72
   5C13 F0                 2562 	movx	@dptr,a
                           2563 ;	genPointerSet
                           2564 ;     genFarPointerSet
   5C14 90 0B F8           2565 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000e)
   5C17 74 65              2566 	mov	a,#0x65
   5C19 F0                 2567 	movx	@dptr,a
                           2568 ;	genPointerSet
                           2569 ;     genFarPointerSet
   5C1A 90 0B F9           2570 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x000f)
   5C1D 74 47              2571 	mov	a,#0x47
   5C1F F0                 2572 	movx	@dptr,a
                           2573 ;	genPointerSet
                           2574 ;     genFarPointerSet
   5C20 90 0B FA           2575 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0010)
   5C23 74 50              2576 	mov	a,#0x50
   5C25 F0                 2577 	movx	@dptr,a
                           2578 ;	genPointerSet
                           2579 ;     genFarPointerSet
   5C26 90 0B FB           2580 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0011)
   5C29 74 49              2581 	mov	a,#0x49
   5C2B F0                 2582 	movx	@dptr,a
                           2583 ;	genPointerSet
                           2584 ;     genFarPointerSet
   5C2C 90 0B FC           2585 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0012)
   5C2F 74 4F              2586 	mov	a,#0x4F
   5C31 F0                 2587 	movx	@dptr,a
                           2588 ;	genPointerSet
                           2589 ;     genFarPointerSet
   5C32 90 0B FD           2590 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0013)
   5C35 74 2F              2591 	mov	a,#0x2F
   5C37 F0                 2592 	movx	@dptr,a
                           2593 ;	genPointerSet
                           2594 ;     genFarPointerSet
   5C38 90 0B FE           2595 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0014)
   5C3B 74 63              2596 	mov	a,#0x63
   5C3D F0                 2597 	movx	@dptr,a
                           2598 ;	genPointerSet
                           2599 ;     genFarPointerSet
   5C3E 90 0B FF           2600 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0015)
   5C41 74 6F              2601 	mov	a,#0x6F
   5C43 F0                 2602 	movx	@dptr,a
                           2603 ;	genPointerSet
                           2604 ;     genFarPointerSet
   5C44 90 0C 00           2605 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0016)
   5C47 74 72              2606 	mov	a,#0x72
   5C49 F0                 2607 	movx	@dptr,a
                           2608 ;	genPointerSet
                           2609 ;     genFarPointerSet
   5C4A 90 0C 01           2610 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0017)
   5C4D 74 65              2611 	mov	a,#0x65
   5C4F F0                 2612 	movx	@dptr,a
                           2613 ;	genPointerSet
                           2614 ;     genFarPointerSet
   5C50 90 0C 02           2615 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0018)
   5C53 74 5F              2616 	mov	a,#0x5F
   5C55 F0                 2617 	movx	@dptr,a
                           2618 ;	genPointerSet
                           2619 ;     genFarPointerSet
   5C56 90 0C 03           2620 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x0019)
   5C59 74 67              2621 	mov	a,#0x67
   5C5B F0                 2622 	movx	@dptr,a
                           2623 ;	genPointerSet
                           2624 ;     genFarPointerSet
   5C5C 90 0C 04           2625 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001a)
   5C5F 74 70              2626 	mov	a,#0x70
   5C61 F0                 2627 	movx	@dptr,a
                           2628 ;	genPointerSet
                           2629 ;     genFarPointerSet
   5C62 90 0C 05           2630 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001b)
   5C65 74 69              2631 	mov	a,#0x69
   5C67 F0                 2632 	movx	@dptr,a
                           2633 ;	genPointerSet
                           2634 ;     genFarPointerSet
   5C68 90 0C 06           2635 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001c)
   5C6B 74 6F              2636 	mov	a,#0x6F
   5C6D F0                 2637 	movx	@dptr,a
                           2638 ;	genPointerSet
                           2639 ;     genFarPointerSet
   5C6E 90 0C 07           2640 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001d)
   5C71 74 2E              2641 	mov	a,#0x2E
   5C73 F0                 2642 	movx	@dptr,a
                           2643 ;	genPointerSet
                           2644 ;     genFarPointerSet
   5C74 90 0C 08           2645 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001e)
   5C77 74 63              2646 	mov	a,#0x63
   5C79 F0                 2647 	movx	@dptr,a
                           2648 ;	genPointerSet
                           2649 ;     genFarPointerSet
   5C7A 90 0C 09           2650 	mov	dptr,#(_GPIO_get_inputs_file_name_4_4 + 0x001f)
   5C7D 74 00              2651 	mov	a,#0x00
   5C7F F0                 2652 	movx	@dptr,a
                           2653 ;	genAssign
   5C80 90 05 7F           2654 	mov	dptr,#_HAL_assert_fail_PARM_2
   5C83 74 B2              2655 	mov	a,#0xB2
   5C85 F0                 2656 	movx	@dptr,a
   5C86 E4                 2657 	clr	a
   5C87 A3                 2658 	inc	dptr
   5C88 F0                 2659 	movx	@dptr,a
   5C89 A3                 2660 	inc	dptr
   5C8A F0                 2661 	movx	@dptr,a
   5C8B A3                 2662 	inc	dptr
   5C8C F0                 2663 	movx	@dptr,a
                           2664 ;	genCall
   5C8D 75 82 EA           2665 	mov	dpl,#_GPIO_get_inputs_file_name_4_4
   5C90 75 83 0B           2666 	mov	dph,#(_GPIO_get_inputs_file_name_4_4 >> 8)
   5C93 75 F0 00           2667 	mov	b,#0x00
   5C96 12 1B 3F           2668 	lcall	_HAL_assert_fail
                    0B6A   2669 	C$core_gpio.c$180$1$1 ==.
                           2670 ;	../drivers/CoreGPIO/core_gpio.c:180: }
   5C99                    2671 00110$:
                    0B6A   2672 	C$core_gpio.c$182$1$1 ==.
                           2673 ;	../drivers/CoreGPIO/core_gpio.c:182: return gpio_in;
                           2674 ;	genAssign
   5C99 90 0B E6           2675 	mov	dptr,#_GPIO_get_inputs_gpio_in_1_1
   5C9C E0                 2676 	movx	a,@dptr
   5C9D FA                 2677 	mov	r2,a
   5C9E A3                 2678 	inc	dptr
   5C9F E0                 2679 	movx	a,@dptr
   5CA0 FB                 2680 	mov	r3,a
   5CA1 A3                 2681 	inc	dptr
   5CA2 E0                 2682 	movx	a,@dptr
   5CA3 FC                 2683 	mov	r4,a
   5CA4 A3                 2684 	inc	dptr
   5CA5 E0                 2685 	movx	a,@dptr
   5CA6 FD                 2686 	mov	r5,a
                           2687 ;	genRet
   5CA7 8A 82              2688 	mov	dpl,r2
   5CA9 8B 83              2689 	mov	dph,r3
   5CAB 8C F0              2690 	mov	b,r4
   5CAD ED                 2691 	mov	a,r5
   5CAE                    2692 00111$:
                    0B7F   2693 	C$core_gpio.c$183$1$1 ==.
                    0B7F   2694 	XG$GPIO_get_inputs$0$0 ==.
   5CAE 22                 2695 	ret
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
   5CAF                    2709 _GPIO_get_outputs:
                           2710 ;	genReceive
   5CAF AA F0              2711 	mov	r2,b
   5CB1 AB 83              2712 	mov	r3,dph
   5CB3 E5 82              2713 	mov	a,dpl
   5CB5 90 0C 0A           2714 	mov	dptr,#_GPIO_get_outputs_this_gpio_1_1
   5CB8 F0                 2715 	movx	@dptr,a
   5CB9 A3                 2716 	inc	dptr
   5CBA EB                 2717 	mov	a,r3
   5CBB F0                 2718 	movx	@dptr,a
   5CBC A3                 2719 	inc	dptr
   5CBD EA                 2720 	mov	a,r2
   5CBE F0                 2721 	movx	@dptr,a
                    0B90   2722 	C$core_gpio.c$194$1$1 ==.
                           2723 ;	../drivers/CoreGPIO/core_gpio.c:194: uint32_t gpio_out = 0;
                           2724 ;	genAssign
   5CBF 90 0C 0D           2725 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   5CC2 E4                 2726 	clr	a
   5CC3 F0                 2727 	movx	@dptr,a
   5CC4 A3                 2728 	inc	dptr
   5CC5 F0                 2729 	movx	@dptr,a
   5CC6 A3                 2730 	inc	dptr
   5CC7 F0                 2731 	movx	@dptr,a
   5CC8 A3                 2732 	inc	dptr
   5CC9 F0                 2733 	movx	@dptr,a
                    0B9B   2734 	C$core_gpio.c$196$1$1 ==.
                           2735 ;	../drivers/CoreGPIO/core_gpio.c:196: switch( this_gpio->apb_bus_width )
                           2736 ;	genAssign
   5CCA 90 0C 0A           2737 	mov	dptr,#_GPIO_get_outputs_this_gpio_1_1
   5CCD E0                 2738 	movx	a,@dptr
   5CCE FA                 2739 	mov	r2,a
   5CCF A3                 2740 	inc	dptr
   5CD0 E0                 2741 	movx	a,@dptr
   5CD1 FB                 2742 	mov	r3,a
   5CD2 A3                 2743 	inc	dptr
   5CD3 E0                 2744 	movx	a,@dptr
   5CD4 FC                 2745 	mov	r4,a
                           2746 ;	genPlus
                           2747 ;	genPlusIncr
   5CD5 74 02              2748 	mov	a,#0x02
   5CD7 25 02              2749 	add	a,ar2
   5CD9 FD                 2750 	mov	r5,a
   5CDA 74 00              2751 	mov	a,#0x00
   5CDC 35 03              2752 	addc	a,ar3
   5CDE FE                 2753 	mov	r6,a
   5CDF 8C 07              2754 	mov	ar7,r4
                           2755 ;	genPointerGet
                           2756 ;	genGenPointerGet
   5CE1 8D 82              2757 	mov	dpl,r5
   5CE3 8E 83              2758 	mov	dph,r6
   5CE5 8F F0              2759 	mov	b,r7
   5CE7 12 71 69           2760 	lcall	__gptrget
   5CEA FD                 2761 	mov	r5,a
                           2762 ;	genCmpEq
                           2763 ;	gencjneshort
   5CEB BD 00 03           2764 	cjne	r5,#0x00,00116$
   5CEE 02 5D 6E           2765 	ljmp	00103$
   5CF1                    2766 00116$:
                           2767 ;	genCmpEq
                           2768 ;	gencjneshort
   5CF1 BD 01 03           2769 	cjne	r5,#0x01,00117$
   5CF4 02 5D 37           2770 	ljmp	00102$
   5CF7                    2771 00117$:
                           2772 ;	genCmpEq
                           2773 ;	gencjneshort
   5CF7 BD 02 02           2774 	cjne	r5,#0x02,00118$
   5CFA 80 03              2775 	sjmp	00119$
   5CFC                    2776 00118$:
   5CFC 02 5D F3           2777 	ljmp	00107$
   5CFF                    2778 00119$:
                    0BD0   2779 	C$core_gpio.c$199$2$2 ==.
                           2780 ;	../drivers/CoreGPIO/core_gpio.c:199: gpio_out = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT );
                           2781 ;	genPointerGet
                           2782 ;	genGenPointerGet
   5CFF 8A 82              2783 	mov	dpl,r2
   5D01 8B 83              2784 	mov	dph,r3
   5D03 8C F0              2785 	mov	b,r4
   5D05 12 71 69           2786 	lcall	__gptrget
   5D08 FD                 2787 	mov	r5,a
   5D09 A3                 2788 	inc	dptr
   5D0A 12 71 69           2789 	lcall	__gptrget
   5D0D FE                 2790 	mov	r6,a
                           2791 ;	genPlus
                           2792 ;	genPlusIncr
   5D0E 74 A0              2793 	mov	a,#0xA0
   5D10 25 05              2794 	add	a,ar5
   5D12 FD                 2795 	mov	r5,a
   5D13 74 00              2796 	mov	a,#0x00
   5D15 35 06              2797 	addc	a,ar6
   5D17 FE                 2798 	mov	r6,a
                           2799 ;	genCall
   5D18 8D 82              2800 	mov	dpl,r5
   5D1A 8E 83              2801 	mov	dph,r6
   5D1C 12 1B 9F           2802 	lcall	_HW_get_32bit_reg
   5D1F AD 82              2803 	mov	r5,dpl
   5D21 AE 83              2804 	mov	r6,dph
   5D23 AF F0              2805 	mov	r7,b
   5D25 F8                 2806 	mov	r0,a
                           2807 ;	genAssign
   5D26 90 0C 0D           2808 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   5D29 ED                 2809 	mov	a,r5
   5D2A F0                 2810 	movx	@dptr,a
   5D2B A3                 2811 	inc	dptr
   5D2C EE                 2812 	mov	a,r6
   5D2D F0                 2813 	movx	@dptr,a
   5D2E A3                 2814 	inc	dptr
   5D2F EF                 2815 	mov	a,r7
   5D30 F0                 2816 	movx	@dptr,a
   5D31 A3                 2817 	inc	dptr
   5D32 E8                 2818 	mov	a,r0
   5D33 F0                 2819 	movx	@dptr,a
                    0C05   2820 	C$core_gpio.c$200$2$2 ==.
                           2821 ;	../drivers/CoreGPIO/core_gpio.c:200: break;
   5D34 02 5E CC           2822 	ljmp	00110$
                    0C08   2823 	C$core_gpio.c$202$2$2 ==.
                           2824 ;	../drivers/CoreGPIO/core_gpio.c:202: case GPIO_APB_16_BITS_BUS:
   5D37                    2825 00102$:
                    0C08   2826 	C$core_gpio.c$203$2$2 ==.
                           2827 ;	../drivers/CoreGPIO/core_gpio.c:203: gpio_out |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT0 );
                           2828 ;	genPointerGet
                           2829 ;	genGenPointerGet
   5D37 8A 82              2830 	mov	dpl,r2
   5D39 8B 83              2831 	mov	dph,r3
   5D3B 8C F0              2832 	mov	b,r4
   5D3D 12 71 69           2833 	lcall	__gptrget
   5D40 FD                 2834 	mov	r5,a
   5D41 A3                 2835 	inc	dptr
   5D42 12 71 69           2836 	lcall	__gptrget
   5D45 FE                 2837 	mov	r6,a
                           2838 ;	genPlus
                           2839 ;	genPlusIncr
   5D46 74 A0              2840 	mov	a,#0xA0
   5D48 25 05              2841 	add	a,ar5
   5D4A FD                 2842 	mov	r5,a
   5D4B 74 00              2843 	mov	a,#0x00
   5D4D 35 06              2844 	addc	a,ar6
   5D4F FE                 2845 	mov	r6,a
                           2846 ;	genCall
   5D50 8D 82              2847 	mov	dpl,r5
   5D52 8E 83              2848 	mov	dph,r6
   5D54 12 1B DB           2849 	lcall	_HW_get_16bit_reg
   5D57 AD 82              2850 	mov	r5,dpl
   5D59 AE 83              2851 	mov	r6,dph
                           2852 ;	genCast
   5D5B 90 0C 0D           2853 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   5D5E ED                 2854 	mov	a,r5
   5D5F F0                 2855 	movx	@dptr,a
   5D60 A3                 2856 	inc	dptr
   5D61 EE                 2857 	mov	a,r6
   5D62 F0                 2858 	movx	@dptr,a
   5D63 A3                 2859 	inc	dptr
   5D64 74 00              2860 	mov	a,#0x00
   5D66 F0                 2861 	movx	@dptr,a
   5D67 A3                 2862 	inc	dptr
   5D68 74 00              2863 	mov	a,#0x00
   5D6A F0                 2864 	movx	@dptr,a
                    0C3C   2865 	C$core_gpio.c$205$2$2 ==.
                           2866 ;	../drivers/CoreGPIO/core_gpio.c:205: break;
   5D6B 02 5E CC           2867 	ljmp	00110$
                    0C3F   2868 	C$core_gpio.c$207$2$2 ==.
                           2869 ;	../drivers/CoreGPIO/core_gpio.c:207: case GPIO_APB_8_BITS_BUS:
   5D6E                    2870 00103$:
                    0C3F   2871 	C$core_gpio.c$208$2$2 ==.
                           2872 ;	../drivers/CoreGPIO/core_gpio.c:208: gpio_out |= HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT0 );
                           2873 ;	genPointerGet
                           2874 ;	genGenPointerGet
   5D6E 8A 82              2875 	mov	dpl,r2
   5D70 8B 83              2876 	mov	dph,r3
   5D72 8C F0              2877 	mov	b,r4
   5D74 12 71 69           2878 	lcall	__gptrget
   5D77 FD                 2879 	mov	r5,a
   5D78 A3                 2880 	inc	dptr
   5D79 12 71 69           2881 	lcall	__gptrget
   5D7C FE                 2882 	mov	r6,a
                           2883 ;	genPlus
                           2884 ;	genPlusIncr
   5D7D 74 A0              2885 	mov	a,#0xA0
   5D7F 25 05              2886 	add	a,ar5
   5D81 FD                 2887 	mov	r5,a
   5D82 74 00              2888 	mov	a,#0x00
   5D84 35 06              2889 	addc	a,ar6
   5D86 FE                 2890 	mov	r6,a
                           2891 ;	genCall
   5D87 8D 82              2892 	mov	dpl,r5
   5D89 8E 83              2893 	mov	dph,r6
   5D8B C0 02              2894 	push	ar2
   5D8D C0 03              2895 	push	ar3
   5D8F C0 04              2896 	push	ar4
   5D91 12 1B DB           2897 	lcall	_HW_get_16bit_reg
   5D94 AD 82              2898 	mov	r5,dpl
   5D96 AE 83              2899 	mov	r6,dph
   5D98 D0 04              2900 	pop	ar4
   5D9A D0 03              2901 	pop	ar3
   5D9C D0 02              2902 	pop	ar2
                           2903 ;	genCast
   5D9E 7F 00              2904 	mov	r7,#0x00
   5DA0 78 00              2905 	mov	r0,#0x00
                    0C73   2906 	C$core_gpio.c$209$2$2 ==.
                           2907 ;	../drivers/CoreGPIO/core_gpio.c:209: gpio_out |= (HAL_get_16bit_reg( this_gpio->base_addr, GPIO_OUT1 ) << 8);
                           2908 ;	genPointerGet
                           2909 ;	genGenPointerGet
   5DA2 8A 82              2910 	mov	dpl,r2
   5DA4 8B 83              2911 	mov	dph,r3
   5DA6 8C F0              2912 	mov	b,r4
   5DA8 12 71 69           2913 	lcall	__gptrget
   5DAB FA                 2914 	mov	r2,a
   5DAC A3                 2915 	inc	dptr
   5DAD 12 71 69           2916 	lcall	__gptrget
   5DB0 FB                 2917 	mov	r3,a
                           2918 ;	genPlus
                           2919 ;	genPlusIncr
   5DB1 74 A4              2920 	mov	a,#0xA4
   5DB3 25 02              2921 	add	a,ar2
   5DB5 FA                 2922 	mov	r2,a
   5DB6 74 00              2923 	mov	a,#0x00
   5DB8 35 03              2924 	addc	a,ar3
   5DBA FB                 2925 	mov	r3,a
                           2926 ;	genCall
   5DBB 8A 82              2927 	mov	dpl,r2
   5DBD 8B 83              2928 	mov	dph,r3
   5DBF C0 05              2929 	push	ar5
   5DC1 C0 06              2930 	push	ar6
   5DC3 C0 07              2931 	push	ar7
   5DC5 C0 00              2932 	push	ar0
   5DC7 12 1B DB           2933 	lcall	_HW_get_16bit_reg
   5DCA AA 82              2934 	mov	r2,dpl
   5DCC AB 83              2935 	mov	r3,dph
   5DCE D0 00              2936 	pop	ar0
   5DD0 D0 07              2937 	pop	ar7
   5DD2 D0 06              2938 	pop	ar6
   5DD4 D0 05              2939 	pop	ar5
                           2940 ;	genLeftShift
                           2941 ;	genLeftShiftLiteral
                           2942 ;	genlshTwo
   5DD6 8A 03              2943 	mov	ar3,r2
   5DD8 7A 00              2944 	mov	r2,#0x00
                           2945 ;	genCast
   5DDA 7C 00              2946 	mov	r4,#0x00
   5DDC 79 00              2947 	mov	r1,#0x00
                           2948 ;	genOr
   5DDE 90 0C 0D           2949 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   5DE1 EA                 2950 	mov	a,r2
   5DE2 4D                 2951 	orl	a,r5
   5DE3 F0                 2952 	movx	@dptr,a
   5DE4 EB                 2953 	mov	a,r3
   5DE5 4E                 2954 	orl	a,r6
   5DE6 A3                 2955 	inc	dptr
   5DE7 F0                 2956 	movx	@dptr,a
   5DE8 EC                 2957 	mov	a,r4
   5DE9 4F                 2958 	orl	a,r7
   5DEA A3                 2959 	inc	dptr
   5DEB F0                 2960 	movx	@dptr,a
   5DEC E9                 2961 	mov	a,r1
   5DED 48                 2962 	orl	a,r0
   5DEE A3                 2963 	inc	dptr
   5DEF F0                 2964 	movx	@dptr,a
                    0CC1   2965 	C$core_gpio.c$212$2$2 ==.
                           2966 ;	../drivers/CoreGPIO/core_gpio.c:212: break;
   5DF0 02 5E CC           2967 	ljmp	00110$
                    0CC4   2968 	C$core_gpio.c$215$2$2 ==.
                           2969 ;	../drivers/CoreGPIO/core_gpio.c:215: HAL_ASSERT(0);
   5DF3                    2970 00107$:
                           2971 ;	genPointerSet
                           2972 ;     genFarPointerSet
   5DF3 90 0C 11           2973 	mov	dptr,#_GPIO_get_outputs_file_name_4_4
   5DF6 74 2E              2974 	mov	a,#0x2E
   5DF8 F0                 2975 	movx	@dptr,a
                           2976 ;	genPointerSet
                           2977 ;     genFarPointerSet
   5DF9 90 0C 12           2978 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0001)
   5DFC 74 2E              2979 	mov	a,#0x2E
   5DFE F0                 2980 	movx	@dptr,a
                           2981 ;	genPointerSet
                           2982 ;     genFarPointerSet
   5DFF 90 0C 13           2983 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0002)
   5E02 74 2F              2984 	mov	a,#0x2F
   5E04 F0                 2985 	movx	@dptr,a
                           2986 ;	genPointerSet
                           2987 ;     genFarPointerSet
   5E05 90 0C 14           2988 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0003)
   5E08 74 64              2989 	mov	a,#0x64
   5E0A F0                 2990 	movx	@dptr,a
                           2991 ;	genPointerSet
                           2992 ;     genFarPointerSet
   5E0B 90 0C 15           2993 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0004)
   5E0E 74 72              2994 	mov	a,#0x72
   5E10 F0                 2995 	movx	@dptr,a
                           2996 ;	genPointerSet
                           2997 ;     genFarPointerSet
   5E11 90 0C 16           2998 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0005)
   5E14 74 69              2999 	mov	a,#0x69
   5E16 F0                 3000 	movx	@dptr,a
                           3001 ;	genPointerSet
                           3002 ;     genFarPointerSet
   5E17 90 0C 17           3003 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0006)
   5E1A 74 76              3004 	mov	a,#0x76
   5E1C F0                 3005 	movx	@dptr,a
                           3006 ;	genPointerSet
                           3007 ;     genFarPointerSet
   5E1D 90 0C 18           3008 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0007)
   5E20 74 65              3009 	mov	a,#0x65
   5E22 F0                 3010 	movx	@dptr,a
                           3011 ;	genPointerSet
                           3012 ;     genFarPointerSet
   5E23 90 0C 19           3013 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0008)
   5E26 74 72              3014 	mov	a,#0x72
   5E28 F0                 3015 	movx	@dptr,a
                           3016 ;	genPointerSet
                           3017 ;     genFarPointerSet
   5E29 90 0C 1A           3018 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0009)
   5E2C 74 73              3019 	mov	a,#0x73
   5E2E F0                 3020 	movx	@dptr,a
                           3021 ;	genPointerSet
                           3022 ;     genFarPointerSet
   5E2F 90 0C 1B           3023 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000a)
   5E32 74 2F              3024 	mov	a,#0x2F
   5E34 F0                 3025 	movx	@dptr,a
                           3026 ;	genPointerSet
                           3027 ;     genFarPointerSet
   5E35 90 0C 1C           3028 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000b)
   5E38 74 43              3029 	mov	a,#0x43
   5E3A F0                 3030 	movx	@dptr,a
                           3031 ;	genPointerSet
                           3032 ;     genFarPointerSet
   5E3B 90 0C 1D           3033 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000c)
   5E3E 74 6F              3034 	mov	a,#0x6F
   5E40 F0                 3035 	movx	@dptr,a
                           3036 ;	genPointerSet
                           3037 ;     genFarPointerSet
   5E41 90 0C 1E           3038 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000d)
   5E44 74 72              3039 	mov	a,#0x72
   5E46 F0                 3040 	movx	@dptr,a
                           3041 ;	genPointerSet
                           3042 ;     genFarPointerSet
   5E47 90 0C 1F           3043 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000e)
   5E4A 74 65              3044 	mov	a,#0x65
   5E4C F0                 3045 	movx	@dptr,a
                           3046 ;	genPointerSet
                           3047 ;     genFarPointerSet
   5E4D 90 0C 20           3048 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x000f)
   5E50 74 47              3049 	mov	a,#0x47
   5E52 F0                 3050 	movx	@dptr,a
                           3051 ;	genPointerSet
                           3052 ;     genFarPointerSet
   5E53 90 0C 21           3053 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0010)
   5E56 74 50              3054 	mov	a,#0x50
   5E58 F0                 3055 	movx	@dptr,a
                           3056 ;	genPointerSet
                           3057 ;     genFarPointerSet
   5E59 90 0C 22           3058 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0011)
   5E5C 74 49              3059 	mov	a,#0x49
   5E5E F0                 3060 	movx	@dptr,a
                           3061 ;	genPointerSet
                           3062 ;     genFarPointerSet
   5E5F 90 0C 23           3063 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0012)
   5E62 74 4F              3064 	mov	a,#0x4F
   5E64 F0                 3065 	movx	@dptr,a
                           3066 ;	genPointerSet
                           3067 ;     genFarPointerSet
   5E65 90 0C 24           3068 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0013)
   5E68 74 2F              3069 	mov	a,#0x2F
   5E6A F0                 3070 	movx	@dptr,a
                           3071 ;	genPointerSet
                           3072 ;     genFarPointerSet
   5E6B 90 0C 25           3073 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0014)
   5E6E 74 63              3074 	mov	a,#0x63
   5E70 F0                 3075 	movx	@dptr,a
                           3076 ;	genPointerSet
                           3077 ;     genFarPointerSet
   5E71 90 0C 26           3078 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0015)
   5E74 74 6F              3079 	mov	a,#0x6F
   5E76 F0                 3080 	movx	@dptr,a
                           3081 ;	genPointerSet
                           3082 ;     genFarPointerSet
   5E77 90 0C 27           3083 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0016)
   5E7A 74 72              3084 	mov	a,#0x72
   5E7C F0                 3085 	movx	@dptr,a
                           3086 ;	genPointerSet
                           3087 ;     genFarPointerSet
   5E7D 90 0C 28           3088 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0017)
   5E80 74 65              3089 	mov	a,#0x65
   5E82 F0                 3090 	movx	@dptr,a
                           3091 ;	genPointerSet
                           3092 ;     genFarPointerSet
   5E83 90 0C 29           3093 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0018)
   5E86 74 5F              3094 	mov	a,#0x5F
   5E88 F0                 3095 	movx	@dptr,a
                           3096 ;	genPointerSet
                           3097 ;     genFarPointerSet
   5E89 90 0C 2A           3098 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x0019)
   5E8C 74 67              3099 	mov	a,#0x67
   5E8E F0                 3100 	movx	@dptr,a
                           3101 ;	genPointerSet
                           3102 ;     genFarPointerSet
   5E8F 90 0C 2B           3103 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001a)
   5E92 74 70              3104 	mov	a,#0x70
   5E94 F0                 3105 	movx	@dptr,a
                           3106 ;	genPointerSet
                           3107 ;     genFarPointerSet
   5E95 90 0C 2C           3108 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001b)
   5E98 74 69              3109 	mov	a,#0x69
   5E9A F0                 3110 	movx	@dptr,a
                           3111 ;	genPointerSet
                           3112 ;     genFarPointerSet
   5E9B 90 0C 2D           3113 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001c)
   5E9E 74 6F              3114 	mov	a,#0x6F
   5EA0 F0                 3115 	movx	@dptr,a
                           3116 ;	genPointerSet
                           3117 ;     genFarPointerSet
   5EA1 90 0C 2E           3118 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001d)
   5EA4 74 2E              3119 	mov	a,#0x2E
   5EA6 F0                 3120 	movx	@dptr,a
                           3121 ;	genPointerSet
                           3122 ;     genFarPointerSet
   5EA7 90 0C 2F           3123 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001e)
   5EAA 74 63              3124 	mov	a,#0x63
   5EAC F0                 3125 	movx	@dptr,a
                           3126 ;	genPointerSet
                           3127 ;     genFarPointerSet
   5EAD 90 0C 30           3128 	mov	dptr,#(_GPIO_get_outputs_file_name_4_4 + 0x001f)
   5EB0 74 00              3129 	mov	a,#0x00
   5EB2 F0                 3130 	movx	@dptr,a
                           3131 ;	genAssign
   5EB3 90 05 7F           3132 	mov	dptr,#_HAL_assert_fail_PARM_2
   5EB6 74 D7              3133 	mov	a,#0xD7
   5EB8 F0                 3134 	movx	@dptr,a
   5EB9 E4                 3135 	clr	a
   5EBA A3                 3136 	inc	dptr
   5EBB F0                 3137 	movx	@dptr,a
   5EBC A3                 3138 	inc	dptr
   5EBD F0                 3139 	movx	@dptr,a
   5EBE A3                 3140 	inc	dptr
   5EBF F0                 3141 	movx	@dptr,a
                           3142 ;	genCall
   5EC0 75 82 11           3143 	mov	dpl,#_GPIO_get_outputs_file_name_4_4
   5EC3 75 83 0C           3144 	mov	dph,#(_GPIO_get_outputs_file_name_4_4 >> 8)
   5EC6 75 F0 00           3145 	mov	b,#0x00
   5EC9 12 1B 3F           3146 	lcall	_HAL_assert_fail
                    0D9D   3147 	C$core_gpio.c$217$1$1 ==.
                           3148 ;	../drivers/CoreGPIO/core_gpio.c:217: }
   5ECC                    3149 00110$:
                    0D9D   3150 	C$core_gpio.c$219$1$1 ==.
                           3151 ;	../drivers/CoreGPIO/core_gpio.c:219: return gpio_out;
                           3152 ;	genAssign
   5ECC 90 0C 0D           3153 	mov	dptr,#_GPIO_get_outputs_gpio_out_1_1
   5ECF E0                 3154 	movx	a,@dptr
   5ED0 FA                 3155 	mov	r2,a
   5ED1 A3                 3156 	inc	dptr
   5ED2 E0                 3157 	movx	a,@dptr
   5ED3 FB                 3158 	mov	r3,a
   5ED4 A3                 3159 	inc	dptr
   5ED5 E0                 3160 	movx	a,@dptr
   5ED6 FC                 3161 	mov	r4,a
   5ED7 A3                 3162 	inc	dptr
   5ED8 E0                 3163 	movx	a,@dptr
   5ED9 FD                 3164 	mov	r5,a
                           3165 ;	genRet
   5EDA 8A 82              3166 	mov	dpl,r2
   5EDC 8B 83              3167 	mov	dph,r3
   5EDE 8C F0              3168 	mov	b,r4
   5EE0 ED                 3169 	mov	a,r5
   5EE1                    3170 00111$:
                    0DB2   3171 	C$core_gpio.c$220$1$1 ==.
                    0DB2   3172 	XG$GPIO_get_outputs$0$0 ==.
   5EE1 22                 3173 	ret
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
   5EE2                    3200 _GPIO_set_output:
                           3201 ;	genReceive
   5EE2 AA F0              3202 	mov	r2,b
   5EE4 AB 83              3203 	mov	r3,dph
   5EE6 E5 82              3204 	mov	a,dpl
   5EE8 90 0C 33           3205 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   5EEB F0                 3206 	movx	@dptr,a
   5EEC A3                 3207 	inc	dptr
   5EED EB                 3208 	mov	a,r3
   5EEE F0                 3209 	movx	@dptr,a
   5EEF A3                 3210 	inc	dptr
   5EF0 EA                 3211 	mov	a,r2
   5EF1 F0                 3212 	movx	@dptr,a
                    0DC3   3213 	C$core_gpio.c$233$2$2 ==.
                           3214 ;	../drivers/CoreGPIO/core_gpio.c:233: HAL_ASSERT( port_id < NB_OF_GPIO );
                           3215 ;	genAssign
   5EF2 90 0C 31           3216 	mov	dptr,#_GPIO_set_output_PARM_2
   5EF5 E0                 3217 	movx	a,@dptr
   5EF6 FA                 3218 	mov	r2,a
                           3219 ;	genCmpLt
                           3220 ;	genCmp
   5EF7 BA 20 00           3221 	cjne	r2,#0x20,00152$
   5EFA                    3222 00152$:
                           3223 ;	genIfxJump
   5EFA 50 03              3224 	jnc	00153$
   5EFC 02 5F DC           3225 	ljmp	00104$
   5EFF                    3226 00153$:
                           3227 ;	genPointerSet
                           3228 ;     genFarPointerSet
   5EFF 90 0C 36           3229 	mov	dptr,#_GPIO_set_output_file_name_3_3
   5F02 74 2E              3230 	mov	a,#0x2E
   5F04 F0                 3231 	movx	@dptr,a
                           3232 ;	genPointerSet
                           3233 ;     genFarPointerSet
   5F05 90 0C 37           3234 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0001)
   5F08 74 2E              3235 	mov	a,#0x2E
   5F0A F0                 3236 	movx	@dptr,a
                           3237 ;	genPointerSet
                           3238 ;     genFarPointerSet
   5F0B 90 0C 38           3239 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0002)
   5F0E 74 2F              3240 	mov	a,#0x2F
   5F10 F0                 3241 	movx	@dptr,a
                           3242 ;	genPointerSet
                           3243 ;     genFarPointerSet
   5F11 90 0C 39           3244 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0003)
   5F14 74 64              3245 	mov	a,#0x64
   5F16 F0                 3246 	movx	@dptr,a
                           3247 ;	genPointerSet
                           3248 ;     genFarPointerSet
   5F17 90 0C 3A           3249 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0004)
   5F1A 74 72              3250 	mov	a,#0x72
   5F1C F0                 3251 	movx	@dptr,a
                           3252 ;	genPointerSet
                           3253 ;     genFarPointerSet
   5F1D 90 0C 3B           3254 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0005)
   5F20 74 69              3255 	mov	a,#0x69
   5F22 F0                 3256 	movx	@dptr,a
                           3257 ;	genPointerSet
                           3258 ;     genFarPointerSet
   5F23 90 0C 3C           3259 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0006)
   5F26 74 76              3260 	mov	a,#0x76
   5F28 F0                 3261 	movx	@dptr,a
                           3262 ;	genPointerSet
                           3263 ;     genFarPointerSet
   5F29 90 0C 3D           3264 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0007)
   5F2C 74 65              3265 	mov	a,#0x65
   5F2E F0                 3266 	movx	@dptr,a
                           3267 ;	genPointerSet
                           3268 ;     genFarPointerSet
   5F2F 90 0C 3E           3269 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0008)
   5F32 74 72              3270 	mov	a,#0x72
   5F34 F0                 3271 	movx	@dptr,a
                           3272 ;	genPointerSet
                           3273 ;     genFarPointerSet
   5F35 90 0C 3F           3274 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0009)
   5F38 74 73              3275 	mov	a,#0x73
   5F3A F0                 3276 	movx	@dptr,a
                           3277 ;	genPointerSet
                           3278 ;     genFarPointerSet
   5F3B 90 0C 40           3279 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000a)
   5F3E 74 2F              3280 	mov	a,#0x2F
   5F40 F0                 3281 	movx	@dptr,a
                           3282 ;	genPointerSet
                           3283 ;     genFarPointerSet
   5F41 90 0C 41           3284 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000b)
   5F44 74 43              3285 	mov	a,#0x43
   5F46 F0                 3286 	movx	@dptr,a
                           3287 ;	genPointerSet
                           3288 ;     genFarPointerSet
   5F47 90 0C 42           3289 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000c)
   5F4A 74 6F              3290 	mov	a,#0x6F
   5F4C F0                 3291 	movx	@dptr,a
                           3292 ;	genPointerSet
                           3293 ;     genFarPointerSet
   5F4D 90 0C 43           3294 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000d)
   5F50 74 72              3295 	mov	a,#0x72
   5F52 F0                 3296 	movx	@dptr,a
                           3297 ;	genPointerSet
                           3298 ;     genFarPointerSet
   5F53 90 0C 44           3299 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000e)
   5F56 74 65              3300 	mov	a,#0x65
   5F58 F0                 3301 	movx	@dptr,a
                           3302 ;	genPointerSet
                           3303 ;     genFarPointerSet
   5F59 90 0C 45           3304 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x000f)
   5F5C 74 47              3305 	mov	a,#0x47
   5F5E F0                 3306 	movx	@dptr,a
                           3307 ;	genPointerSet
                           3308 ;     genFarPointerSet
   5F5F 90 0C 46           3309 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0010)
   5F62 74 50              3310 	mov	a,#0x50
   5F64 F0                 3311 	movx	@dptr,a
                           3312 ;	genPointerSet
                           3313 ;     genFarPointerSet
   5F65 90 0C 47           3314 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0011)
   5F68 74 49              3315 	mov	a,#0x49
   5F6A F0                 3316 	movx	@dptr,a
                           3317 ;	genPointerSet
                           3318 ;     genFarPointerSet
   5F6B 90 0C 48           3319 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0012)
   5F6E 74 4F              3320 	mov	a,#0x4F
   5F70 F0                 3321 	movx	@dptr,a
                           3322 ;	genPointerSet
                           3323 ;     genFarPointerSet
   5F71 90 0C 49           3324 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0013)
   5F74 74 2F              3325 	mov	a,#0x2F
   5F76 F0                 3326 	movx	@dptr,a
                           3327 ;	genPointerSet
                           3328 ;     genFarPointerSet
   5F77 90 0C 4A           3329 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0014)
   5F7A 74 63              3330 	mov	a,#0x63
   5F7C F0                 3331 	movx	@dptr,a
                           3332 ;	genPointerSet
                           3333 ;     genFarPointerSet
   5F7D 90 0C 4B           3334 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0015)
   5F80 74 6F              3335 	mov	a,#0x6F
   5F82 F0                 3336 	movx	@dptr,a
                           3337 ;	genPointerSet
                           3338 ;     genFarPointerSet
   5F83 90 0C 4C           3339 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0016)
   5F86 74 72              3340 	mov	a,#0x72
   5F88 F0                 3341 	movx	@dptr,a
                           3342 ;	genPointerSet
                           3343 ;     genFarPointerSet
   5F89 90 0C 4D           3344 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0017)
   5F8C 74 65              3345 	mov	a,#0x65
   5F8E F0                 3346 	movx	@dptr,a
                           3347 ;	genPointerSet
                           3348 ;     genFarPointerSet
   5F8F 90 0C 4E           3349 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0018)
   5F92 74 5F              3350 	mov	a,#0x5F
   5F94 F0                 3351 	movx	@dptr,a
                           3352 ;	genPointerSet
                           3353 ;     genFarPointerSet
   5F95 90 0C 4F           3354 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x0019)
   5F98 74 67              3355 	mov	a,#0x67
   5F9A F0                 3356 	movx	@dptr,a
                           3357 ;	genPointerSet
                           3358 ;     genFarPointerSet
   5F9B 90 0C 50           3359 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001a)
   5F9E 74 70              3360 	mov	a,#0x70
   5FA0 F0                 3361 	movx	@dptr,a
                           3362 ;	genPointerSet
                           3363 ;     genFarPointerSet
   5FA1 90 0C 51           3364 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001b)
   5FA4 74 69              3365 	mov	a,#0x69
   5FA6 F0                 3366 	movx	@dptr,a
                           3367 ;	genPointerSet
                           3368 ;     genFarPointerSet
   5FA7 90 0C 52           3369 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001c)
   5FAA 74 6F              3370 	mov	a,#0x6F
   5FAC F0                 3371 	movx	@dptr,a
                           3372 ;	genPointerSet
                           3373 ;     genFarPointerSet
   5FAD 90 0C 53           3374 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001d)
   5FB0 74 2E              3375 	mov	a,#0x2E
   5FB2 F0                 3376 	movx	@dptr,a
                           3377 ;	genPointerSet
                           3378 ;     genFarPointerSet
   5FB3 90 0C 54           3379 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001e)
   5FB6 74 63              3380 	mov	a,#0x63
   5FB8 F0                 3381 	movx	@dptr,a
                           3382 ;	genPointerSet
                           3383 ;     genFarPointerSet
   5FB9 90 0C 55           3384 	mov	dptr,#(_GPIO_set_output_file_name_3_3 + 0x001f)
   5FBC 74 00              3385 	mov	a,#0x00
   5FBE F0                 3386 	movx	@dptr,a
                           3387 ;	genAssign
   5FBF 90 05 7F           3388 	mov	dptr,#_HAL_assert_fail_PARM_2
   5FC2 74 E9              3389 	mov	a,#0xE9
   5FC4 F0                 3390 	movx	@dptr,a
   5FC5 E4                 3391 	clr	a
   5FC6 A3                 3392 	inc	dptr
   5FC7 F0                 3393 	movx	@dptr,a
   5FC8 A3                 3394 	inc	dptr
   5FC9 F0                 3395 	movx	@dptr,a
   5FCA A3                 3396 	inc	dptr
   5FCB F0                 3397 	movx	@dptr,a
                           3398 ;	genCall
   5FCC 75 82 36           3399 	mov	dpl,#_GPIO_set_output_file_name_3_3
   5FCF 75 83 0C           3400 	mov	dph,#(_GPIO_set_output_file_name_3_3 >> 8)
   5FD2 75 F0 00           3401 	mov	b,#0x00
   5FD5 C0 02              3402 	push	ar2
   5FD7 12 1B 3F           3403 	lcall	_HAL_assert_fail
   5FDA D0 02              3404 	pop	ar2
   5FDC                    3405 00104$:
                    0EAD   3406 	C$core_gpio.c$236$1$1 ==.
                           3407 ;	../drivers/CoreGPIO/core_gpio.c:236: switch( this_gpio->apb_bus_width )
                           3408 ;	genAssign
   5FDC 90 0C 33           3409 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   5FDF E0                 3410 	movx	a,@dptr
   5FE0 FB                 3411 	mov	r3,a
   5FE1 A3                 3412 	inc	dptr
   5FE2 E0                 3413 	movx	a,@dptr
   5FE3 FC                 3414 	mov	r4,a
   5FE4 A3                 3415 	inc	dptr
   5FE5 E0                 3416 	movx	a,@dptr
   5FE6 FD                 3417 	mov	r5,a
                           3418 ;	genPlus
                           3419 ;	genPlusIncr
   5FE7 74 02              3420 	mov	a,#0x02
   5FE9 25 03              3421 	add	a,ar3
   5FEB FE                 3422 	mov	r6,a
   5FEC 74 00              3423 	mov	a,#0x00
   5FEE 35 04              3424 	addc	a,ar4
   5FF0 FF                 3425 	mov	r7,a
   5FF1 8D 00              3426 	mov	ar0,r5
                           3427 ;	genPointerGet
                           3428 ;	genGenPointerGet
   5FF3 8E 82              3429 	mov	dpl,r6
   5FF5 8F 83              3430 	mov	dph,r7
   5FF7 88 F0              3431 	mov	b,r0
   5FF9 12 71 69           3432 	lcall	__gptrget
   5FFC FE                 3433 	mov	r6,a
                           3434 ;	genCmpEq
                           3435 ;	gencjneshort
   5FFD BE 00 03           3436 	cjne	r6,#0x00,00154$
   6000 02 64 14           3437 	ljmp	00124$
   6003                    3438 00154$:
                           3439 ;	genCmpEq
                           3440 ;	gencjneshort
   6003 BE 01 03           3441 	cjne	r6,#0x01,00155$
   6006 02 62 35           3442 	ljmp	00115$
   6009                    3443 00155$:
                           3444 ;	genCmpEq
                           3445 ;	gencjneshort
   6009 BE 02 02           3446 	cjne	r6,#0x02,00156$
   600C 80 03              3447 	sjmp	00157$
   600E                    3448 00156$:
   600E 02 65 AC           3449 	ljmp	00136$
   6011                    3450 00157$:
                    0EE2   3451 	C$core_gpio.c$242$1$1 ==.
                           3452 ;	../drivers/CoreGPIO/core_gpio.c:242: outputs_state = HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT );
                           3453 ;	genIpush
   6011 C0 02              3454 	push	ar2
                           3455 ;	genPointerGet
                           3456 ;	genGenPointerGet
   6013 8B 82              3457 	mov	dpl,r3
   6015 8C 83              3458 	mov	dph,r4
   6017 8D F0              3459 	mov	b,r5
   6019 12 71 69           3460 	lcall	__gptrget
   601C FE                 3461 	mov	r6,a
   601D A3                 3462 	inc	dptr
   601E 12 71 69           3463 	lcall	__gptrget
   6021 FF                 3464 	mov	r7,a
                           3465 ;	genPlus
                           3466 ;	genPlusIncr
   6022 74 A0              3467 	mov	a,#0xA0
   6024 25 06              3468 	add	a,ar6
   6026 FE                 3469 	mov	r6,a
   6027 74 00              3470 	mov	a,#0x00
   6029 35 07              3471 	addc	a,ar7
   602B FF                 3472 	mov	r7,a
                           3473 ;	genCall
   602C 8E 82              3474 	mov	dpl,r6
   602E 8F 83              3475 	mov	dph,r7
   6030 C0 02              3476 	push	ar2
   6032 12 1B 9F           3477 	lcall	_HW_get_32bit_reg
   6035 85 82 62           3478 	mov	_GPIO_set_output_sloc0_1_0,dpl
   6038 85 83 63           3479 	mov	(_GPIO_set_output_sloc0_1_0 + 1),dph
   603B 85 F0 64           3480 	mov	(_GPIO_set_output_sloc0_1_0 + 2),b
   603E F5 65              3481 	mov	(_GPIO_set_output_sloc0_1_0 + 3),a
   6040 D0 02              3482 	pop	ar2
                    0F13   3483 	C$core_gpio.c$243$3$5 ==.
                           3484 ;	../drivers/CoreGPIO/core_gpio.c:243: if ( 0 == value )
                           3485 ;	genAssign
   6042 90 0C 32           3486 	mov	dptr,#_GPIO_set_output_PARM_3
   6045 E0                 3487 	movx	a,@dptr
   6046 FA                 3488 	mov	r2,a
                           3489 ;	genCmpEq
                           3490 ;	gencjne
                           3491 ;	gencjneshort
   6047 BA 00 04           3492 	cjne	r2,#0x00,00158$
   604A 74 01              3493 	mov	a,#0x01
   604C 80 01              3494 	sjmp	00159$
   604E                    3495 00158$:
   604E E4                 3496 	clr	a
   604F                    3497 00159$:
                           3498 ;	genIpop
   604F D0 02              3499 	pop	ar2
                           3500 ;	genIfx
                           3501 ;	genIfxJump
   6051 70 03              3502 	jnz	00160$
   6053 02 60 8F           3503 	ljmp	00108$
   6056                    3504 00160$:
                    0F27   3505 	C$core_gpio.c$245$4$6 ==.
                           3506 ;	../drivers/CoreGPIO/core_gpio.c:245: outputs_state &= ~(1 << port_id);
                           3507 ;	genLeftShift
   6056 8A F0              3508 	mov	b,r2
   6058 05 F0              3509 	inc	b
   605A 7E 01              3510 	mov	r6,#0x01
   605C 7F 00              3511 	mov	r7,#0x00
   605E 80 07              3512 	sjmp	00162$
   6060                    3513 00161$:
   6060 EE                 3514 	mov	a,r6
   6061 25 E0              3515 	add	a,acc
   6063 FE                 3516 	mov	r6,a
   6064 EF                 3517 	mov	a,r7
   6065 33                 3518 	rlc	a
   6066 FF                 3519 	mov	r7,a
   6067                    3520 00162$:
   6067 D5 F0 F6           3521 	djnz	b,00161$
                           3522 ;	genCpl
   606A EE                 3523 	mov	a,r6
   606B F4                 3524 	cpl	a
   606C FE                 3525 	mov	r6,a
   606D EF                 3526 	mov	a,r7
   606E F4                 3527 	cpl	a
   606F FF                 3528 	mov	r7,a
                           3529 ;	genCast
   6070 EF                 3530 	mov	a,r7
   6071 33                 3531 	rlc	a
   6072 95 E0              3532 	subb	a,acc
   6074 F8                 3533 	mov	r0,a
   6075 F9                 3534 	mov	r1,a
                           3535 ;	genAnd
   6076 90 0C 56           3536 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   6079 EE                 3537 	mov	a,r6
   607A 55 62              3538 	anl	a,_GPIO_set_output_sloc0_1_0
   607C F0                 3539 	movx	@dptr,a
   607D EF                 3540 	mov	a,r7
   607E 55 63              3541 	anl	a,(_GPIO_set_output_sloc0_1_0 + 1)
   6080 A3                 3542 	inc	dptr
   6081 F0                 3543 	movx	@dptr,a
   6082 E8                 3544 	mov	a,r0
   6083 55 64              3545 	anl	a,(_GPIO_set_output_sloc0_1_0 + 2)
   6085 A3                 3546 	inc	dptr
   6086 F0                 3547 	movx	@dptr,a
   6087 E9                 3548 	mov	a,r1
   6088 55 65              3549 	anl	a,(_GPIO_set_output_sloc0_1_0 + 3)
   608A A3                 3550 	inc	dptr
   608B F0                 3551 	movx	@dptr,a
   608C 02 60 BF           3552 	ljmp	00109$
   608F                    3553 00108$:
                    0F60   3554 	C$core_gpio.c$249$4$7 ==.
                           3555 ;	../drivers/CoreGPIO/core_gpio.c:249: outputs_state |= 1 << port_id;
                           3556 ;	genLeftShift
   608F 8A F0              3557 	mov	b,r2
   6091 05 F0              3558 	inc	b
   6093 7E 01              3559 	mov	r6,#0x01
   6095 7F 00              3560 	mov	r7,#0x00
   6097 80 07              3561 	sjmp	00164$
   6099                    3562 00163$:
   6099 EE                 3563 	mov	a,r6
   609A 25 E0              3564 	add	a,acc
   609C FE                 3565 	mov	r6,a
   609D EF                 3566 	mov	a,r7
   609E 33                 3567 	rlc	a
   609F FF                 3568 	mov	r7,a
   60A0                    3569 00164$:
   60A0 D5 F0 F6           3570 	djnz	b,00163$
                           3571 ;	genCast
   60A3 EF                 3572 	mov	a,r7
   60A4 33                 3573 	rlc	a
   60A5 95 E0              3574 	subb	a,acc
   60A7 F8                 3575 	mov	r0,a
   60A8 F9                 3576 	mov	r1,a
                           3577 ;	genOr
   60A9 90 0C 56           3578 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   60AC EE                 3579 	mov	a,r6
   60AD 45 62              3580 	orl	a,_GPIO_set_output_sloc0_1_0
   60AF F0                 3581 	movx	@dptr,a
   60B0 EF                 3582 	mov	a,r7
   60B1 45 63              3583 	orl	a,(_GPIO_set_output_sloc0_1_0 + 1)
   60B3 A3                 3584 	inc	dptr
   60B4 F0                 3585 	movx	@dptr,a
   60B5 E8                 3586 	mov	a,r0
   60B6 45 64              3587 	orl	a,(_GPIO_set_output_sloc0_1_0 + 2)
   60B8 A3                 3588 	inc	dptr
   60B9 F0                 3589 	movx	@dptr,a
   60BA E9                 3590 	mov	a,r1
   60BB 45 65              3591 	orl	a,(_GPIO_set_output_sloc0_1_0 + 3)
   60BD A3                 3592 	inc	dptr
   60BE F0                 3593 	movx	@dptr,a
   60BF                    3594 00109$:
                    0F90   3595 	C$core_gpio.c$251$3$5 ==.
                           3596 ;	../drivers/CoreGPIO/core_gpio.c:251: HAL_set_32bit_reg( this_gpio->base_addr, GPIO_OUT, outputs_state );
                           3597 ;	genAssign
   60BF 90 0C 33           3598 	mov	dptr,#_GPIO_set_output_this_gpio_1_1
   60C2 E0                 3599 	movx	a,@dptr
   60C3 FA                 3600 	mov	r2,a
   60C4 A3                 3601 	inc	dptr
   60C5 E0                 3602 	movx	a,@dptr
   60C6 FB                 3603 	mov	r3,a
   60C7 A3                 3604 	inc	dptr
   60C8 E0                 3605 	movx	a,@dptr
   60C9 FC                 3606 	mov	r4,a
                           3607 ;	genPointerGet
                           3608 ;	genGenPointerGet
   60CA 8A 82              3609 	mov	dpl,r2
   60CC 8B 83              3610 	mov	dph,r3
   60CE 8C F0              3611 	mov	b,r4
   60D0 12 71 69           3612 	lcall	__gptrget
   60D3 F9                 3613 	mov	r1,a
   60D4 A3                 3614 	inc	dptr
   60D5 12 71 69           3615 	lcall	__gptrget
   60D8 FE                 3616 	mov	r6,a
                           3617 ;	genPlus
                           3618 ;	genPlusIncr
   60D9 74 A0              3619 	mov	a,#0xA0
   60DB 25 01              3620 	add	a,ar1
   60DD FD                 3621 	mov	r5,a
   60DE 74 00              3622 	mov	a,#0x00
   60E0 35 06              3623 	addc	a,ar6
   60E2 FE                 3624 	mov	r6,a
                           3625 ;	genAssign
   60E3 90 0C 56           3626 	mov	dptr,#_GPIO_set_output_outputs_state_3_5
   60E6 E0                 3627 	movx	a,@dptr
   60E7 F5 66              3628 	mov	_GPIO_set_output_sloc2_1_0,a
   60E9 A3                 3629 	inc	dptr
   60EA E0                 3630 	movx	a,@dptr
   60EB F5 67              3631 	mov	(_GPIO_set_output_sloc2_1_0 + 1),a
   60ED A3                 3632 	inc	dptr
   60EE E0                 3633 	movx	a,@dptr
   60EF F5 68              3634 	mov	(_GPIO_set_output_sloc2_1_0 + 2),a
   60F1 A3                 3635 	inc	dptr
   60F2 E0                 3636 	movx	a,@dptr
   60F3 F5 69              3637 	mov	(_GPIO_set_output_sloc2_1_0 + 3),a
                           3638 ;	genAssign
   60F5 90 05 9D           3639 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   60F8 E5 66              3640 	mov	a,_GPIO_set_output_sloc2_1_0
   60FA F0                 3641 	movx	@dptr,a
   60FB A3                 3642 	inc	dptr
   60FC E5 67              3643 	mov	a,(_GPIO_set_output_sloc2_1_0 + 1)
   60FE F0                 3644 	movx	@dptr,a
   60FF A3                 3645 	inc	dptr
   6100 E5 68              3646 	mov	a,(_GPIO_set_output_sloc2_1_0 + 2)
   6102 F0                 3647 	movx	@dptr,a
   6103 A3                 3648 	inc	dptr
   6104 E5 69              3649 	mov	a,(_GPIO_set_output_sloc2_1_0 + 3)
   6106 F0                 3650 	movx	@dptr,a
                           3651 ;	genCall
   6107 8D 82              3652 	mov	dpl,r5
   6109 8E 83              3653 	mov	dph,r6
   610B C0 02              3654 	push	ar2
   610D C0 03              3655 	push	ar3
   610F C0 04              3656 	push	ar4
   6111 12 1B AB           3657 	lcall	_HW_set_32bit_reg
   6114 D0 04              3658 	pop	ar4
   6116 D0 03              3659 	pop	ar3
   6118 D0 02              3660 	pop	ar2
                    0FEB   3661 	C$core_gpio.c$260$4$8 ==.
                           3662 ;	../drivers/CoreGPIO/core_gpio.c:260: HAL_ASSERT( HAL_get_32bit_reg( this_gpio->base_addr, GPIO_OUT ) == outputs_state );
                           3663 ;	genPointerGet
                           3664 ;	genGenPointerGet
   611A 8A 82              3665 	mov	dpl,r2
   611C 8B 83              3666 	mov	dph,r3
   611E 8C F0              3667 	mov	b,r4
   6120 12 71 69           3668 	lcall	__gptrget
   6123 FE                 3669 	mov	r6,a
   6124 A3                 3670 	inc	dptr
   6125 12 71 69           3671 	lcall	__gptrget
   6128 FF                 3672 	mov	r7,a
                           3673 ;	genPlus
                           3674 ;	genPlusIncr
   6129 74 A0              3675 	mov	a,#0xA0
   612B 25 06              3676 	add	a,ar6
   612D FE                 3677 	mov	r6,a
   612E 74 00              3678 	mov	a,#0x00
   6130 35 07              3679 	addc	a,ar7
   6132 FF                 3680 	mov	r7,a
                           3681 ;	genCall
   6133 8E 82              3682 	mov	dpl,r6
   6135 8F 83              3683 	mov	dph,r7
   6137 12 1B 9F           3684 	lcall	_HW_get_32bit_reg
   613A AE 82              3685 	mov	r6,dpl
   613C AF 83              3686 	mov	r7,dph
   613E A8 F0              3687 	mov	r0,b
   6140 F9                 3688 	mov	r1,a
                           3689 ;	genCmpEq
                           3690 ;	gencjneshort
   6141 EE                 3691 	mov	a,r6
   6142 B5 66 0F           3692 	cjne	a,_GPIO_set_output_sloc2_1_0,00165$
   6145 EF                 3693 	mov	a,r7
   6146 B5 67 0B           3694 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 1),00165$
   6149 E8                 3695 	mov	a,r0
   614A B5 68 07           3696 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 2),00165$
   614D E9                 3697 	mov	a,r1
   614E B5 69 03           3698 	cjne	a,(_GPIO_set_output_sloc2_1_0 + 3),00165$
   6151 02 66 8A           3699 	ljmp	00140$
   6154                    3700 00165$:
                           3701 ;	genPointerSet
                           3702 ;     genFarPointerSet
   6154 90 0C 5A           3703 	mov	dptr,#_GPIO_set_output_file_name_5_9
   6157 74 2E              3704 	mov	a,#0x2E
   6159 F0                 3705 	movx	@dptr,a
                           3706 ;	genPointerSet
                           3707 ;     genFarPointerSet
   615A 90 0C 5B           3708 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0001)
   615D 74 2E              3709 	mov	a,#0x2E
   615F F0                 3710 	movx	@dptr,a
                           3711 ;	genPointerSet
                           3712 ;     genFarPointerSet
   6160 90 0C 5C           3713 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0002)
   6163 74 2F              3714 	mov	a,#0x2F
   6165 F0                 3715 	movx	@dptr,a
                           3716 ;	genPointerSet
                           3717 ;     genFarPointerSet
   6166 90 0C 5D           3718 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0003)
   6169 74 64              3719 	mov	a,#0x64
   616B F0                 3720 	movx	@dptr,a
                           3721 ;	genPointerSet
                           3722 ;     genFarPointerSet
   616C 90 0C 5E           3723 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0004)
   616F 74 72              3724 	mov	a,#0x72
   6171 F0                 3725 	movx	@dptr,a
                           3726 ;	genPointerSet
                           3727 ;     genFarPointerSet
   6172 90 0C 5F           3728 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0005)
   6175 74 69              3729 	mov	a,#0x69
   6177 F0                 3730 	movx	@dptr,a
                           3731 ;	genPointerSet
                           3732 ;     genFarPointerSet
   6178 90 0C 60           3733 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0006)
   617B 74 76              3734 	mov	a,#0x76
   617D F0                 3735 	movx	@dptr,a
                           3736 ;	genPointerSet
                           3737 ;     genFarPointerSet
   617E 90 0C 61           3738 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0007)
   6181 74 65              3739 	mov	a,#0x65
   6183 F0                 3740 	movx	@dptr,a
                           3741 ;	genPointerSet
                           3742 ;     genFarPointerSet
   6184 90 0C 62           3743 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0008)
   6187 74 72              3744 	mov	a,#0x72
   6189 F0                 3745 	movx	@dptr,a
                           3746 ;	genPointerSet
                           3747 ;     genFarPointerSet
   618A 90 0C 63           3748 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0009)
   618D 74 73              3749 	mov	a,#0x73
   618F F0                 3750 	movx	@dptr,a
                           3751 ;	genPointerSet
                           3752 ;     genFarPointerSet
   6190 90 0C 64           3753 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000a)
   6193 74 2F              3754 	mov	a,#0x2F
   6195 F0                 3755 	movx	@dptr,a
                           3756 ;	genPointerSet
                           3757 ;     genFarPointerSet
   6196 90 0C 65           3758 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000b)
   6199 74 43              3759 	mov	a,#0x43
   619B F0                 3760 	movx	@dptr,a
                           3761 ;	genPointerSet
                           3762 ;     genFarPointerSet
   619C 90 0C 66           3763 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000c)
   619F 74 6F              3764 	mov	a,#0x6F
   61A1 F0                 3765 	movx	@dptr,a
                           3766 ;	genPointerSet
                           3767 ;     genFarPointerSet
   61A2 90 0C 67           3768 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000d)
   61A5 74 72              3769 	mov	a,#0x72
   61A7 F0                 3770 	movx	@dptr,a
                           3771 ;	genPointerSet
                           3772 ;     genFarPointerSet
   61A8 90 0C 68           3773 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000e)
   61AB 74 65              3774 	mov	a,#0x65
   61AD F0                 3775 	movx	@dptr,a
                           3776 ;	genPointerSet
                           3777 ;     genFarPointerSet
   61AE 90 0C 69           3778 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x000f)
   61B1 74 47              3779 	mov	a,#0x47
   61B3 F0                 3780 	movx	@dptr,a
                           3781 ;	genPointerSet
                           3782 ;     genFarPointerSet
   61B4 90 0C 6A           3783 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0010)
   61B7 74 50              3784 	mov	a,#0x50
   61B9 F0                 3785 	movx	@dptr,a
                           3786 ;	genPointerSet
                           3787 ;     genFarPointerSet
   61BA 90 0C 6B           3788 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0011)
   61BD 74 49              3789 	mov	a,#0x49
   61BF F0                 3790 	movx	@dptr,a
                           3791 ;	genPointerSet
                           3792 ;     genFarPointerSet
   61C0 90 0C 6C           3793 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0012)
   61C3 74 4F              3794 	mov	a,#0x4F
   61C5 F0                 3795 	movx	@dptr,a
                           3796 ;	genPointerSet
                           3797 ;     genFarPointerSet
   61C6 90 0C 6D           3798 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0013)
   61C9 74 2F              3799 	mov	a,#0x2F
   61CB F0                 3800 	movx	@dptr,a
                           3801 ;	genPointerSet
                           3802 ;     genFarPointerSet
   61CC 90 0C 6E           3803 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0014)
   61CF 74 63              3804 	mov	a,#0x63
   61D1 F0                 3805 	movx	@dptr,a
                           3806 ;	genPointerSet
                           3807 ;     genFarPointerSet
   61D2 90 0C 6F           3808 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0015)
   61D5 74 6F              3809 	mov	a,#0x6F
   61D7 F0                 3810 	movx	@dptr,a
                           3811 ;	genPointerSet
                           3812 ;     genFarPointerSet
   61D8 90 0C 70           3813 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0016)
   61DB 74 72              3814 	mov	a,#0x72
   61DD F0                 3815 	movx	@dptr,a
                           3816 ;	genPointerSet
                           3817 ;     genFarPointerSet
   61DE 90 0C 71           3818 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0017)
   61E1 74 65              3819 	mov	a,#0x65
   61E3 F0                 3820 	movx	@dptr,a
                           3821 ;	genPointerSet
                           3822 ;     genFarPointerSet
   61E4 90 0C 72           3823 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0018)
   61E7 74 5F              3824 	mov	a,#0x5F
   61E9 F0                 3825 	movx	@dptr,a
                           3826 ;	genPointerSet
                           3827 ;     genFarPointerSet
   61EA 90 0C 73           3828 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x0019)
   61ED 74 67              3829 	mov	a,#0x67
   61EF F0                 3830 	movx	@dptr,a
                           3831 ;	genPointerSet
                           3832 ;     genFarPointerSet
   61F0 90 0C 74           3833 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001a)
   61F3 74 70              3834 	mov	a,#0x70
   61F5 F0                 3835 	movx	@dptr,a
                           3836 ;	genPointerSet
                           3837 ;     genFarPointerSet
   61F6 90 0C 75           3838 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001b)
   61F9 74 69              3839 	mov	a,#0x69
   61FB F0                 3840 	movx	@dptr,a
                           3841 ;	genPointerSet
                           3842 ;     genFarPointerSet
   61FC 90 0C 76           3843 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001c)
   61FF 74 6F              3844 	mov	a,#0x6F
   6201 F0                 3845 	movx	@dptr,a
                           3846 ;	genPointerSet
                           3847 ;     genFarPointerSet
   6202 90 0C 77           3848 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001d)
   6205 74 2E              3849 	mov	a,#0x2E
   6207 F0                 3850 	movx	@dptr,a
                           3851 ;	genPointerSet
                           3852 ;     genFarPointerSet
   6208 90 0C 78           3853 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001e)
   620B 74 63              3854 	mov	a,#0x63
   620D F0                 3855 	movx	@dptr,a
                           3856 ;	genPointerSet
                           3857 ;     genFarPointerSet
   620E 90 0C 79           3858 	mov	dptr,#(_GPIO_set_output_file_name_5_9 + 0x001f)
   6211 74 00              3859 	mov	a,#0x00
   6213 F0                 3860 	movx	@dptr,a
                           3861 ;	genAssign
   6214 90 05 7F           3862 	mov	dptr,#_HAL_assert_fail_PARM_2
   6217 74 04              3863 	mov	a,#0x04
   6219 F0                 3864 	movx	@dptr,a
   621A A3                 3865 	inc	dptr
   621B 74 01              3866 	mov	a,#0x01
   621D F0                 3867 	movx	@dptr,a
   621E A3                 3868 	inc	dptr
   621F 74 00              3869 	mov	a,#0x00
   6221 F0                 3870 	movx	@dptr,a
   6222 A3                 3871 	inc	dptr
   6223 74 00              3872 	mov	a,#0x00
   6225 F0                 3873 	movx	@dptr,a
                           3874 ;	genCall
   6226 75 82 5A           3875 	mov	dpl,#_GPIO_set_output_file_name_5_9
   6229 75 83 0C           3876 	mov	dph,#(_GPIO_set_output_file_name_5_9 >> 8)
   622C 75 F0 00           3877 	mov	b,#0x00
   622F 12 1B 3F           3878 	lcall	_HAL_assert_fail
                    1103   3879 	C$core_gpio.c$262$2$4 ==.
                           3880 ;	../drivers/CoreGPIO/core_gpio.c:262: break;
   6232 02 66 8A           3881 	ljmp	00140$
                    1106   3882 	C$core_gpio.c$264$2$4 ==.
                           3883 ;	../drivers/CoreGPIO/core_gpio.c:264: case GPIO_APB_16_BITS_BUS:
   6235                    3884 00115$:
                    1106   3885 	C$core_gpio.c$267$3$10 ==.
                           3886 ;	../drivers/CoreGPIO/core_gpio.c:267: uint32_t gpio_out_reg_addr = this_gpio->base_addr + GPIO_OUT_REG_OFFSET + ((port_id >> 4) * 4);
                           3887 ;	genPointerGet
                           3888 ;	genGenPointerGet
   6235 8B 82              3889 	mov	dpl,r3
   6237 8C 83              3890 	mov	dph,r4
   6239 8D F0              3891 	mov	b,r5
   623B 12 71 69           3892 	lcall	__gptrget
   623E FE                 3893 	mov	r6,a
   623F A3                 3894 	inc	dptr
   6240 12 71 69           3895 	lcall	__gptrget
   6243 FF                 3896 	mov	r7,a
                           3897 ;	genPlus
                           3898 ;	genPlusIncr
   6244 74 A0              3899 	mov	a,#0xA0
   6246 25 06              3900 	add	a,ar6
   6248 FE                 3901 	mov	r6,a
   6249 74 00              3902 	mov	a,#0x00
   624B 35 07              3903 	addc	a,ar7
   624D FF                 3904 	mov	r7,a
                           3905 ;	genRightShift
                           3906 ;	genRightShiftLiteral
                           3907 ;	genrshOne
   624E EA                 3908 	mov	a,r2
   624F C4                 3909 	swap	a
   6250 54 0F              3910 	anl	a,#0x0f
   6252 F8                 3911 	mov	r0,a
                           3912 ;	genMult
                           3913 ;	genMultOneByte
   6253 E8                 3914 	mov	a,r0
   6254 75 F0 04           3915 	mov	b,#0x04
   6257 A4                 3916 	mul	ab
                           3917 ;	genPlus
   6258 25 06              3918 	add	a,ar6
   625A FE                 3919 	mov	r6,a
   625B E5 07              3920 	mov	a,ar7
   625D 35 F0              3921 	addc	a,b
   625F FF                 3922 	mov	r7,a
                           3923 ;	genCast
   6260 78 00              3924 	mov	r0,#0x00
   6262 79 00              3925 	mov	r1,#0x00
                    1135   3926 	C$core_gpio.c$269$3$10 ==.
                           3927 ;	../drivers/CoreGPIO/core_gpio.c:269: outputs_state = HW_get_16bit_reg( gpio_out_reg_addr );
                           3928 ;	genCast
                           3929 ;	genCall
   6264 8E 82              3930 	mov	dpl,r6
   6266 8F 83              3931 	mov	dph,r7
   6268 C0 02              3932 	push	ar2
   626A C0 06              3933 	push	ar6
   626C C0 07              3934 	push	ar7
   626E 12 1B DB           3935 	lcall	_HW_get_16bit_reg
   6271 A8 82              3936 	mov	r0,dpl
   6273 A9 83              3937 	mov	r1,dph
   6275 D0 07              3938 	pop	ar7
   6277 D0 06              3939 	pop	ar6
   6279 D0 02              3940 	pop	ar2
                    114C   3941 	C$core_gpio.c$270$1$1 ==.
                           3942 ;	../drivers/CoreGPIO/core_gpio.c:270: if ( 0 == value )
                           3943 ;	genIpush
   627B C0 02              3944 	push	ar2
                           3945 ;	genAssign
   627D 90 0C 32           3946 	mov	dptr,#_GPIO_set_output_PARM_3
   6280 E0                 3947 	movx	a,@dptr
   6281 FA                 3948 	mov	r2,a
                           3949 ;	genCmpEq
                           3950 ;	gencjne
                           3951 ;	gencjneshort
   6282 BA 00 04           3952 	cjne	r2,#0x00,00166$
   6285 74 01              3953 	mov	a,#0x01
   6287 80 01              3954 	sjmp	00167$
   6289                    3955 00166$:
   6289 E4                 3956 	clr	a
   628A                    3957 00167$:
                           3958 ;	genIpop
   628A D0 02              3959 	pop	ar2
                           3960 ;	genIfx
                           3961 ;	genIfxJump
   628C 70 03              3962 	jnz	00168$
   628E 02 62 C4           3963 	ljmp	00117$
   6291                    3964 00168$:
                    1162   3965 	C$core_gpio.c$272$1$1 ==.
                           3966 ;	../drivers/CoreGPIO/core_gpio.c:272: outputs_state &= ~(1 << (port_id & 0x0F));
                           3967 ;	genIpush
   6291 C0 06              3968 	push	ar6
   6293 C0 07              3969 	push	ar7
                           3970 ;	genAnd
   6295 74 0F              3971 	mov	a,#0x0F
   6297 5A                 3972 	anl	a,r2
   6298 FE                 3973 	mov	r6,a
                           3974 ;	genLeftShift
   6299 8E F0              3975 	mov	b,r6
   629B 05 F0              3976 	inc	b
   629D 7E 01              3977 	mov	r6,#0x01
   629F 7F 00              3978 	mov	r7,#0x00
   62A1 80 07              3979 	sjmp	00170$
   62A3                    3980 00169$:
   62A3 EE                 3981 	mov	a,r6
   62A4 25 E0              3982 	add	a,acc
   62A6 FE                 3983 	mov	r6,a
   62A7 EF                 3984 	mov	a,r7
   62A8 33                 3985 	rlc	a
   62A9 FF                 3986 	mov	r7,a
   62AA                    3987 00170$:
   62AA D5 F0 F6           3988 	djnz	b,00169$
                           3989 ;	genCpl
   62AD EE                 3990 	mov	a,r6
   62AE F4                 3991 	cpl	a
   62AF FE                 3992 	mov	r6,a
   62B0 EF                 3993 	mov	a,r7
   62B1 F4                 3994 	cpl	a
   62B2 FF                 3995 	mov	r7,a
                           3996 ;	genAnd
   62B3 90 0C 7A           3997 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   62B6 EE                 3998 	mov	a,r6
   62B7 58                 3999 	anl	a,r0
   62B8 F0                 4000 	movx	@dptr,a
   62B9 EF                 4001 	mov	a,r7
   62BA 59                 4002 	anl	a,r1
   62BB A3                 4003 	inc	dptr
   62BC F0                 4004 	movx	@dptr,a
                           4005 ;	genIpop
   62BD D0 07              4006 	pop	ar7
   62BF D0 06              4007 	pop	ar6
   62C1 02 62 EE           4008 	ljmp	00118$
   62C4                    4009 00117$:
                    1195   4010 	C$core_gpio.c$276$1$1 ==.
                           4011 ;	../drivers/CoreGPIO/core_gpio.c:276: outputs_state |= 1 << (port_id & 0x0F);
                           4012 ;	genIpush
   62C4 C0 06              4013 	push	ar6
   62C6 C0 07              4014 	push	ar7
                           4015 ;	genAnd
   62C8 74 0F              4016 	mov	a,#0x0F
   62CA 5A                 4017 	anl	a,r2
   62CB FE                 4018 	mov	r6,a
                           4019 ;	genLeftShift
   62CC 8E F0              4020 	mov	b,r6
   62CE 05 F0              4021 	inc	b
   62D0 7E 01              4022 	mov	r6,#0x01
   62D2 7F 00              4023 	mov	r7,#0x00
   62D4 80 07              4024 	sjmp	00172$
   62D6                    4025 00171$:
   62D6 EE                 4026 	mov	a,r6
   62D7 25 E0              4027 	add	a,acc
   62D9 FE                 4028 	mov	r6,a
   62DA EF                 4029 	mov	a,r7
   62DB 33                 4030 	rlc	a
   62DC FF                 4031 	mov	r7,a
   62DD                    4032 00172$:
   62DD D5 F0 F6           4033 	djnz	b,00171$
                           4034 ;	genOr
   62E0 90 0C 7A           4035 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   62E3 EE                 4036 	mov	a,r6
   62E4 48                 4037 	orl	a,r0
   62E5 F0                 4038 	movx	@dptr,a
   62E6 EF                 4039 	mov	a,r7
   62E7 49                 4040 	orl	a,r1
   62E8 A3                 4041 	inc	dptr
   62E9 F0                 4042 	movx	@dptr,a
                    11BB   4043 	C$core_gpio.c$321$1$1 ==.
                           4044 ;	../drivers/CoreGPIO/core_gpio.c:321: }
                           4045 ;	genIpop
   62EA D0 07              4046 	pop	ar7
   62EC D0 06              4047 	pop	ar6
                    11BF   4048 	C$core_gpio.c$276$3$10 ==.
                           4049 ;	../drivers/CoreGPIO/core_gpio.c:276: outputs_state |= 1 << (port_id & 0x0F);
   62EE                    4050 00118$:
                    11BF   4051 	C$core_gpio.c$278$3$10 ==.
                           4052 ;	../drivers/CoreGPIO/core_gpio.c:278: HW_set_16bit_reg( gpio_out_reg_addr, outputs_state );
                           4053 ;	genAssign
   62EE 90 0C 7A           4054 	mov	dptr,#_GPIO_set_output_outputs_state_3_10
   62F1 E0                 4055 	movx	a,@dptr
   62F2 F8                 4056 	mov	r0,a
   62F3 A3                 4057 	inc	dptr
   62F4 E0                 4058 	movx	a,@dptr
   62F5 F9                 4059 	mov	r1,a
                           4060 ;	genAssign
   62F6 90 05 9A           4061 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   62F9 E8                 4062 	mov	a,r0
   62FA F0                 4063 	movx	@dptr,a
   62FB A3                 4064 	inc	dptr
   62FC E9                 4065 	mov	a,r1
   62FD F0                 4066 	movx	@dptr,a
                           4067 ;	genCall
   62FE 8E 82              4068 	mov	dpl,r6
   6300 8F 83              4069 	mov	dph,r7
   6302 C0 06              4070 	push	ar6
   6304 C0 07              4071 	push	ar7
   6306 C0 00              4072 	push	ar0
   6308 C0 01              4073 	push	ar1
   630A 12 1B C7           4074 	lcall	_HW_set_16bit_reg
   630D D0 01              4075 	pop	ar1
   630F D0 00              4076 	pop	ar0
   6311 D0 07              4077 	pop	ar7
   6313 D0 06              4078 	pop	ar6
                    11E6   4079 	C$core_gpio.c$287$4$13 ==.
                           4080 ;	../drivers/CoreGPIO/core_gpio.c:287: HAL_ASSERT( HW_get_16bit_reg( gpio_out_reg_addr ) == outputs_state );
                           4081 ;	genCall
   6315 8E 82              4082 	mov	dpl,r6
   6317 8F 83              4083 	mov	dph,r7
   6319 C0 00              4084 	push	ar0
   631B C0 01              4085 	push	ar1
   631D 12 1B DB           4086 	lcall	_HW_get_16bit_reg
   6320 AE 82              4087 	mov	r6,dpl
   6322 AF 83              4088 	mov	r7,dph
   6324 D0 01              4089 	pop	ar1
   6326 D0 00              4090 	pop	ar0
                           4091 ;	genCmpEq
                           4092 ;	gencjneshort
   6328 EE                 4093 	mov	a,r6
   6329 B5 00 07           4094 	cjne	a,ar0,00173$
   632C EF                 4095 	mov	a,r7
   632D B5 01 03           4096 	cjne	a,ar1,00173$
   6330 02 66 8A           4097 	ljmp	00140$
   6333                    4098 00173$:
                           4099 ;	genPointerSet
                           4100 ;     genFarPointerSet
   6333 90 0C 7C           4101 	mov	dptr,#_GPIO_set_output_file_name_5_14
   6336 74 2E              4102 	mov	a,#0x2E
   6338 F0                 4103 	movx	@dptr,a
                           4104 ;	genPointerSet
                           4105 ;     genFarPointerSet
   6339 90 0C 7D           4106 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0001)
   633C 74 2E              4107 	mov	a,#0x2E
   633E F0                 4108 	movx	@dptr,a
                           4109 ;	genPointerSet
                           4110 ;     genFarPointerSet
   633F 90 0C 7E           4111 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0002)
   6342 74 2F              4112 	mov	a,#0x2F
   6344 F0                 4113 	movx	@dptr,a
                           4114 ;	genPointerSet
                           4115 ;     genFarPointerSet
   6345 90 0C 7F           4116 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0003)
   6348 74 64              4117 	mov	a,#0x64
   634A F0                 4118 	movx	@dptr,a
                           4119 ;	genPointerSet
                           4120 ;     genFarPointerSet
   634B 90 0C 80           4121 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0004)
   634E 74 72              4122 	mov	a,#0x72
   6350 F0                 4123 	movx	@dptr,a
                           4124 ;	genPointerSet
                           4125 ;     genFarPointerSet
   6351 90 0C 81           4126 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0005)
   6354 74 69              4127 	mov	a,#0x69
   6356 F0                 4128 	movx	@dptr,a
                           4129 ;	genPointerSet
                           4130 ;     genFarPointerSet
   6357 90 0C 82           4131 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0006)
   635A 74 76              4132 	mov	a,#0x76
   635C F0                 4133 	movx	@dptr,a
                           4134 ;	genPointerSet
                           4135 ;     genFarPointerSet
   635D 90 0C 83           4136 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0007)
   6360 74 65              4137 	mov	a,#0x65
   6362 F0                 4138 	movx	@dptr,a
                           4139 ;	genPointerSet
                           4140 ;     genFarPointerSet
   6363 90 0C 84           4141 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0008)
   6366 74 72              4142 	mov	a,#0x72
   6368 F0                 4143 	movx	@dptr,a
                           4144 ;	genPointerSet
                           4145 ;     genFarPointerSet
   6369 90 0C 85           4146 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0009)
   636C 74 73              4147 	mov	a,#0x73
   636E F0                 4148 	movx	@dptr,a
                           4149 ;	genPointerSet
                           4150 ;     genFarPointerSet
   636F 90 0C 86           4151 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000a)
   6372 74 2F              4152 	mov	a,#0x2F
   6374 F0                 4153 	movx	@dptr,a
                           4154 ;	genPointerSet
                           4155 ;     genFarPointerSet
   6375 90 0C 87           4156 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000b)
   6378 74 43              4157 	mov	a,#0x43
   637A F0                 4158 	movx	@dptr,a
                           4159 ;	genPointerSet
                           4160 ;     genFarPointerSet
   637B 90 0C 88           4161 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000c)
   637E 74 6F              4162 	mov	a,#0x6F
   6380 F0                 4163 	movx	@dptr,a
                           4164 ;	genPointerSet
                           4165 ;     genFarPointerSet
   6381 90 0C 89           4166 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000d)
   6384 74 72              4167 	mov	a,#0x72
   6386 F0                 4168 	movx	@dptr,a
                           4169 ;	genPointerSet
                           4170 ;     genFarPointerSet
   6387 90 0C 8A           4171 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000e)
   638A 74 65              4172 	mov	a,#0x65
   638C F0                 4173 	movx	@dptr,a
                           4174 ;	genPointerSet
                           4175 ;     genFarPointerSet
   638D 90 0C 8B           4176 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x000f)
   6390 74 47              4177 	mov	a,#0x47
   6392 F0                 4178 	movx	@dptr,a
                           4179 ;	genPointerSet
                           4180 ;     genFarPointerSet
   6393 90 0C 8C           4181 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0010)
   6396 74 50              4182 	mov	a,#0x50
   6398 F0                 4183 	movx	@dptr,a
                           4184 ;	genPointerSet
                           4185 ;     genFarPointerSet
   6399 90 0C 8D           4186 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0011)
   639C 74 49              4187 	mov	a,#0x49
   639E F0                 4188 	movx	@dptr,a
                           4189 ;	genPointerSet
                           4190 ;     genFarPointerSet
   639F 90 0C 8E           4191 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0012)
   63A2 74 4F              4192 	mov	a,#0x4F
   63A4 F0                 4193 	movx	@dptr,a
                           4194 ;	genPointerSet
                           4195 ;     genFarPointerSet
   63A5 90 0C 8F           4196 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0013)
   63A8 74 2F              4197 	mov	a,#0x2F
   63AA F0                 4198 	movx	@dptr,a
                           4199 ;	genPointerSet
                           4200 ;     genFarPointerSet
   63AB 90 0C 90           4201 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0014)
   63AE 74 63              4202 	mov	a,#0x63
   63B0 F0                 4203 	movx	@dptr,a
                           4204 ;	genPointerSet
                           4205 ;     genFarPointerSet
   63B1 90 0C 91           4206 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0015)
   63B4 74 6F              4207 	mov	a,#0x6F
   63B6 F0                 4208 	movx	@dptr,a
                           4209 ;	genPointerSet
                           4210 ;     genFarPointerSet
   63B7 90 0C 92           4211 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0016)
   63BA 74 72              4212 	mov	a,#0x72
   63BC F0                 4213 	movx	@dptr,a
                           4214 ;	genPointerSet
                           4215 ;     genFarPointerSet
   63BD 90 0C 93           4216 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0017)
   63C0 74 65              4217 	mov	a,#0x65
   63C2 F0                 4218 	movx	@dptr,a
                           4219 ;	genPointerSet
                           4220 ;     genFarPointerSet
   63C3 90 0C 94           4221 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0018)
   63C6 74 5F              4222 	mov	a,#0x5F
   63C8 F0                 4223 	movx	@dptr,a
                           4224 ;	genPointerSet
                           4225 ;     genFarPointerSet
   63C9 90 0C 95           4226 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x0019)
   63CC 74 67              4227 	mov	a,#0x67
   63CE F0                 4228 	movx	@dptr,a
                           4229 ;	genPointerSet
                           4230 ;     genFarPointerSet
   63CF 90 0C 96           4231 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001a)
   63D2 74 70              4232 	mov	a,#0x70
   63D4 F0                 4233 	movx	@dptr,a
                           4234 ;	genPointerSet
                           4235 ;     genFarPointerSet
   63D5 90 0C 97           4236 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001b)
   63D8 74 69              4237 	mov	a,#0x69
   63DA F0                 4238 	movx	@dptr,a
                           4239 ;	genPointerSet
                           4240 ;     genFarPointerSet
   63DB 90 0C 98           4241 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001c)
   63DE 74 6F              4242 	mov	a,#0x6F
   63E0 F0                 4243 	movx	@dptr,a
                           4244 ;	genPointerSet
                           4245 ;     genFarPointerSet
   63E1 90 0C 99           4246 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001d)
   63E4 74 2E              4247 	mov	a,#0x2E
   63E6 F0                 4248 	movx	@dptr,a
                           4249 ;	genPointerSet
                           4250 ;     genFarPointerSet
   63E7 90 0C 9A           4251 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001e)
   63EA 74 63              4252 	mov	a,#0x63
   63EC F0                 4253 	movx	@dptr,a
                           4254 ;	genPointerSet
                           4255 ;     genFarPointerSet
   63ED 90 0C 9B           4256 	mov	dptr,#(_GPIO_set_output_file_name_5_14 + 0x001f)
   63F0 74 00              4257 	mov	a,#0x00
   63F2 F0                 4258 	movx	@dptr,a
                           4259 ;	genAssign
   63F3 90 05 7F           4260 	mov	dptr,#_HAL_assert_fail_PARM_2
   63F6 74 1F              4261 	mov	a,#0x1F
   63F8 F0                 4262 	movx	@dptr,a
   63F9 A3                 4263 	inc	dptr
   63FA 74 01              4264 	mov	a,#0x01
   63FC F0                 4265 	movx	@dptr,a
   63FD A3                 4266 	inc	dptr
   63FE 74 00              4267 	mov	a,#0x00
   6400 F0                 4268 	movx	@dptr,a
   6401 A3                 4269 	inc	dptr
   6402 74 00              4270 	mov	a,#0x00
   6404 F0                 4271 	movx	@dptr,a
                           4272 ;	genCall
   6405 75 82 7C           4273 	mov	dpl,#_GPIO_set_output_file_name_5_14
   6408 75 83 0C           4274 	mov	dph,#(_GPIO_set_output_file_name_5_14 >> 8)
   640B 75 F0 00           4275 	mov	b,#0x00
   640E 12 1B 3F           4276 	lcall	_HAL_assert_fail
                    12E2   4277 	C$core_gpio.c$289$2$4 ==.
                           4278 ;	../drivers/CoreGPIO/core_gpio.c:289: break;
   6411 02 66 8A           4279 	ljmp	00140$
                    12E5   4280 	C$core_gpio.c$291$2$4 ==.
                           4281 ;	../drivers/CoreGPIO/core_gpio.c:291: case GPIO_APB_8_BITS_BUS:
   6414                    4282 00124$:
                    12E5   4283 	C$core_gpio.c$294$3$15 ==.
                           4284 ;	../drivers/CoreGPIO/core_gpio.c:294: uint32_t gpio_out_reg_addr = this_gpio->base_addr + GPIO_OUT_REG_OFFSET + ((port_id >> 3) * 4);
                           4285 ;	genPointerGet
                           4286 ;	genGenPointerGet
   6414 8B 82              4287 	mov	dpl,r3
   6416 8C 83              4288 	mov	dph,r4
   6418 8D F0              4289 	mov	b,r5
   641A 12 71 69           4290 	lcall	__gptrget
   641D FB                 4291 	mov	r3,a
   641E A3                 4292 	inc	dptr
   641F 12 71 69           4293 	lcall	__gptrget
   6422 FC                 4294 	mov	r4,a
                           4295 ;	genPlus
                           4296 ;	genPlusIncr
   6423 74 A0              4297 	mov	a,#0xA0
   6425 25 03              4298 	add	a,ar3
   6427 FB                 4299 	mov	r3,a
   6428 74 00              4300 	mov	a,#0x00
   642A 35 04              4301 	addc	a,ar4
   642C FC                 4302 	mov	r4,a
                           4303 ;	genRightShift
                           4304 ;	genRightShiftLiteral
                           4305 ;	genrshOne
   642D EA                 4306 	mov	a,r2
   642E C4                 4307 	swap	a
   642F 23                 4308 	rl	a
   6430 54 1F              4309 	anl	a,#0x1f
   6432 FD                 4310 	mov	r5,a
                           4311 ;	genMult
                           4312 ;	genMultOneByte
   6433 ED                 4313 	mov	a,r5
   6434 75 F0 04           4314 	mov	b,#0x04
   6437 A4                 4315 	mul	ab
                           4316 ;	genPlus
   6438 25 03              4317 	add	a,ar3
   643A FB                 4318 	mov	r3,a
   643B E5 04              4319 	mov	a,ar4
   643D 35 F0              4320 	addc	a,b
   643F FC                 4321 	mov	r4,a
                           4322 ;	genCast
   6440 7D 00              4323 	mov	r5,#0x00
   6442 7E 00              4324 	mov	r6,#0x00
                    1315   4325 	C$core_gpio.c$296$3$15 ==.
                           4326 ;	../drivers/CoreGPIO/core_gpio.c:296: outputs_state = HW_get_8bit_reg( gpio_out_reg_addr );
                           4327 ;	genCast
                           4328 ;	genCall
   6444 8B 82              4329 	mov	dpl,r3
   6446 8C 83              4330 	mov	dph,r4
   6448 C0 02              4331 	push	ar2
   644A C0 03              4332 	push	ar3
   644C C0 04              4333 	push	ar4
   644E 12 1B F0           4334 	lcall	_HW_get_8bit_reg
   6451 AD 82              4335 	mov	r5,dpl
   6453 D0 04              4336 	pop	ar4
   6455 D0 03              4337 	pop	ar3
   6457 D0 02              4338 	pop	ar2
                    132A   4339 	C$core_gpio.c$297$3$15 ==.
                           4340 ;	../drivers/CoreGPIO/core_gpio.c:297: if ( 0 == value )
                           4341 ;	genAssign
   6459 90 0C 32           4342 	mov	dptr,#_GPIO_set_output_PARM_3
   645C E0                 4343 	movx	a,@dptr
   645D FE                 4344 	mov	r6,a
                           4345 ;	genCmpEq
                           4346 ;	gencjneshort
   645E BE 00 02           4347 	cjne	r6,#0x00,00174$
   6461 80 03              4348 	sjmp	00175$
   6463                    4349 00174$:
   6463 02 64 83           4350 	ljmp	00126$
   6466                    4351 00175$:
                    1337   4352 	C$core_gpio.c$299$4$16 ==.
                           4353 ;	../drivers/CoreGPIO/core_gpio.c:299: outputs_state &= ~(1 << (port_id & 0x07));
                           4354 ;	genAnd
   6466 74 07              4355 	mov	a,#0x07
   6468 5A                 4356 	anl	a,r2
                           4357 ;	genLeftShift
   6469 F5 F0              4358 	mov	b,a
   646B 05 F0              4359 	inc	b
   646D 74 01              4360 	mov	a,#0x01
   646F 80 02              4361 	sjmp	00178$
   6471                    4362 00176$:
   6471 25 E0              4363 	add	a,acc
   6473                    4364 00178$:
   6473 D5 F0 FB           4365 	djnz	b,00176$
   6476 FE                 4366 	mov	r6,a
                           4367 ;	genCpl
   6477 EE                 4368 	mov	a,r6
   6478 F4                 4369 	cpl	a
   6479 FE                 4370 	mov	r6,a
                           4371 ;	genAnd
   647A 90 0C 9C           4372 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   647D EE                 4373 	mov	a,r6
   647E 5D                 4374 	anl	a,r5
   647F F0                 4375 	movx	@dptr,a
   6480 02 64 9A           4376 	ljmp	00127$
   6483                    4377 00126$:
                    1354   4378 	C$core_gpio.c$303$4$17 ==.
                           4379 ;	../drivers/CoreGPIO/core_gpio.c:303: outputs_state |= 1 << (port_id & 0x07);
                           4380 ;	genAnd
   6483 74 07              4381 	mov	a,#0x07
   6485 5A                 4382 	anl	a,r2
                           4383 ;	genLeftShift
   6486 F5 F0              4384 	mov	b,a
   6488 05 F0              4385 	inc	b
   648A 74 01              4386 	mov	a,#0x01
   648C 80 02              4387 	sjmp	00181$
   648E                    4388 00179$:
   648E 25 E0              4389 	add	a,acc
   6490                    4390 00181$:
   6490 D5 F0 FB           4391 	djnz	b,00179$
   6493 FA                 4392 	mov	r2,a
                           4393 ;	genOr
   6494 90 0C 9C           4394 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   6497 EA                 4395 	mov	a,r2
   6498 4D                 4396 	orl	a,r5
   6499 F0                 4397 	movx	@dptr,a
   649A                    4398 00127$:
                    136B   4399 	C$core_gpio.c$305$3$15 ==.
                           4400 ;	../drivers/CoreGPIO/core_gpio.c:305: HW_set_8bit_reg( gpio_out_reg_addr, outputs_state );
                           4401 ;	genAssign
   649A 90 0C 9C           4402 	mov	dptr,#_GPIO_set_output_outputs_state_3_15
   649D E0                 4403 	movx	a,@dptr
   649E FA                 4404 	mov	r2,a
                           4405 ;	genAssign
   649F 90 05 9C           4406 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   64A2 EA                 4407 	mov	a,r2
   64A3 F0                 4408 	movx	@dptr,a
                           4409 ;	genCall
   64A4 8B 82              4410 	mov	dpl,r3
   64A6 8C 83              4411 	mov	dph,r4
   64A8 C0 02              4412 	push	ar2
   64AA C0 03              4413 	push	ar3
   64AC C0 04              4414 	push	ar4
   64AE 12 1B E2           4415 	lcall	_HW_set_8bit_reg
   64B1 D0 04              4416 	pop	ar4
   64B3 D0 03              4417 	pop	ar3
   64B5 D0 02              4418 	pop	ar2
                    1388   4419 	C$core_gpio.c$314$4$18 ==.
                           4420 ;	../drivers/CoreGPIO/core_gpio.c:314: HAL_ASSERT( HW_get_8bit_reg( gpio_out_reg_addr ) == outputs_state );
                           4421 ;	genCall
   64B7 8B 82              4422 	mov	dpl,r3
   64B9 8C 83              4423 	mov	dph,r4
   64BB C0 02              4424 	push	ar2
   64BD 12 1B F0           4425 	lcall	_HW_get_8bit_reg
   64C0 AB 82              4426 	mov	r3,dpl
   64C2 D0 02              4427 	pop	ar2
                           4428 ;	genCmpEq
                           4429 ;	gencjneshort
   64C4 EB                 4430 	mov	a,r3
   64C5 B5 02 03           4431 	cjne	a,ar2,00182$
   64C8 02 66 8A           4432 	ljmp	00140$
   64CB                    4433 00182$:
                           4434 ;	genPointerSet
                           4435 ;     genFarPointerSet
   64CB 90 0C 9D           4436 	mov	dptr,#_GPIO_set_output_file_name_5_19
   64CE 74 2E              4437 	mov	a,#0x2E
   64D0 F0                 4438 	movx	@dptr,a
                           4439 ;	genPointerSet
                           4440 ;     genFarPointerSet
   64D1 90 0C 9E           4441 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0001)
   64D4 74 2E              4442 	mov	a,#0x2E
   64D6 F0                 4443 	movx	@dptr,a
                           4444 ;	genPointerSet
                           4445 ;     genFarPointerSet
   64D7 90 0C 9F           4446 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0002)
   64DA 74 2F              4447 	mov	a,#0x2F
   64DC F0                 4448 	movx	@dptr,a
                           4449 ;	genPointerSet
                           4450 ;     genFarPointerSet
   64DD 90 0C A0           4451 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0003)
   64E0 74 64              4452 	mov	a,#0x64
   64E2 F0                 4453 	movx	@dptr,a
                           4454 ;	genPointerSet
                           4455 ;     genFarPointerSet
   64E3 90 0C A1           4456 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0004)
   64E6 74 72              4457 	mov	a,#0x72
   64E8 F0                 4458 	movx	@dptr,a
                           4459 ;	genPointerSet
                           4460 ;     genFarPointerSet
   64E9 90 0C A2           4461 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0005)
   64EC 74 69              4462 	mov	a,#0x69
   64EE F0                 4463 	movx	@dptr,a
                           4464 ;	genPointerSet
                           4465 ;     genFarPointerSet
   64EF 90 0C A3           4466 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0006)
   64F2 74 76              4467 	mov	a,#0x76
   64F4 F0                 4468 	movx	@dptr,a
                           4469 ;	genPointerSet
                           4470 ;     genFarPointerSet
   64F5 90 0C A4           4471 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0007)
   64F8 74 65              4472 	mov	a,#0x65
   64FA F0                 4473 	movx	@dptr,a
                           4474 ;	genPointerSet
                           4475 ;     genFarPointerSet
   64FB 90 0C A5           4476 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0008)
   64FE 74 72              4477 	mov	a,#0x72
   6500 F0                 4478 	movx	@dptr,a
                           4479 ;	genPointerSet
                           4480 ;     genFarPointerSet
   6501 90 0C A6           4481 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0009)
   6504 74 73              4482 	mov	a,#0x73
   6506 F0                 4483 	movx	@dptr,a
                           4484 ;	genPointerSet
                           4485 ;     genFarPointerSet
   6507 90 0C A7           4486 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000a)
   650A 74 2F              4487 	mov	a,#0x2F
   650C F0                 4488 	movx	@dptr,a
                           4489 ;	genPointerSet
                           4490 ;     genFarPointerSet
   650D 90 0C A8           4491 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000b)
   6510 74 43              4492 	mov	a,#0x43
   6512 F0                 4493 	movx	@dptr,a
                           4494 ;	genPointerSet
                           4495 ;     genFarPointerSet
   6513 90 0C A9           4496 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000c)
   6516 74 6F              4497 	mov	a,#0x6F
   6518 F0                 4498 	movx	@dptr,a
                           4499 ;	genPointerSet
                           4500 ;     genFarPointerSet
   6519 90 0C AA           4501 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000d)
   651C 74 72              4502 	mov	a,#0x72
   651E F0                 4503 	movx	@dptr,a
                           4504 ;	genPointerSet
                           4505 ;     genFarPointerSet
   651F 90 0C AB           4506 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000e)
   6522 74 65              4507 	mov	a,#0x65
   6524 F0                 4508 	movx	@dptr,a
                           4509 ;	genPointerSet
                           4510 ;     genFarPointerSet
   6525 90 0C AC           4511 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x000f)
   6528 74 47              4512 	mov	a,#0x47
   652A F0                 4513 	movx	@dptr,a
                           4514 ;	genPointerSet
                           4515 ;     genFarPointerSet
   652B 90 0C AD           4516 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0010)
   652E 74 50              4517 	mov	a,#0x50
   6530 F0                 4518 	movx	@dptr,a
                           4519 ;	genPointerSet
                           4520 ;     genFarPointerSet
   6531 90 0C AE           4521 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0011)
   6534 74 49              4522 	mov	a,#0x49
   6536 F0                 4523 	movx	@dptr,a
                           4524 ;	genPointerSet
                           4525 ;     genFarPointerSet
   6537 90 0C AF           4526 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0012)
   653A 74 4F              4527 	mov	a,#0x4F
   653C F0                 4528 	movx	@dptr,a
                           4529 ;	genPointerSet
                           4530 ;     genFarPointerSet
   653D 90 0C B0           4531 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0013)
   6540 74 2F              4532 	mov	a,#0x2F
   6542 F0                 4533 	movx	@dptr,a
                           4534 ;	genPointerSet
                           4535 ;     genFarPointerSet
   6543 90 0C B1           4536 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0014)
   6546 74 63              4537 	mov	a,#0x63
   6548 F0                 4538 	movx	@dptr,a
                           4539 ;	genPointerSet
                           4540 ;     genFarPointerSet
   6549 90 0C B2           4541 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0015)
   654C 74 6F              4542 	mov	a,#0x6F
   654E F0                 4543 	movx	@dptr,a
                           4544 ;	genPointerSet
                           4545 ;     genFarPointerSet
   654F 90 0C B3           4546 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0016)
   6552 74 72              4547 	mov	a,#0x72
   6554 F0                 4548 	movx	@dptr,a
                           4549 ;	genPointerSet
                           4550 ;     genFarPointerSet
   6555 90 0C B4           4551 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0017)
   6558 74 65              4552 	mov	a,#0x65
   655A F0                 4553 	movx	@dptr,a
                           4554 ;	genPointerSet
                           4555 ;     genFarPointerSet
   655B 90 0C B5           4556 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0018)
   655E 74 5F              4557 	mov	a,#0x5F
   6560 F0                 4558 	movx	@dptr,a
                           4559 ;	genPointerSet
                           4560 ;     genFarPointerSet
   6561 90 0C B6           4561 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x0019)
   6564 74 67              4562 	mov	a,#0x67
   6566 F0                 4563 	movx	@dptr,a
                           4564 ;	genPointerSet
                           4565 ;     genFarPointerSet
   6567 90 0C B7           4566 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001a)
   656A 74 70              4567 	mov	a,#0x70
   656C F0                 4568 	movx	@dptr,a
                           4569 ;	genPointerSet
                           4570 ;     genFarPointerSet
   656D 90 0C B8           4571 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001b)
   6570 74 69              4572 	mov	a,#0x69
   6572 F0                 4573 	movx	@dptr,a
                           4574 ;	genPointerSet
                           4575 ;     genFarPointerSet
   6573 90 0C B9           4576 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001c)
   6576 74 6F              4577 	mov	a,#0x6F
   6578 F0                 4578 	movx	@dptr,a
                           4579 ;	genPointerSet
                           4580 ;     genFarPointerSet
   6579 90 0C BA           4581 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001d)
   657C 74 2E              4582 	mov	a,#0x2E
   657E F0                 4583 	movx	@dptr,a
                           4584 ;	genPointerSet
                           4585 ;     genFarPointerSet
   657F 90 0C BB           4586 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001e)
   6582 74 63              4587 	mov	a,#0x63
   6584 F0                 4588 	movx	@dptr,a
                           4589 ;	genPointerSet
                           4590 ;     genFarPointerSet
   6585 90 0C BC           4591 	mov	dptr,#(_GPIO_set_output_file_name_5_19 + 0x001f)
   6588 74 00              4592 	mov	a,#0x00
   658A F0                 4593 	movx	@dptr,a
                           4594 ;	genAssign
   658B 90 05 7F           4595 	mov	dptr,#_HAL_assert_fail_PARM_2
   658E 74 3A              4596 	mov	a,#0x3A
   6590 F0                 4597 	movx	@dptr,a
   6591 A3                 4598 	inc	dptr
   6592 74 01              4599 	mov	a,#0x01
   6594 F0                 4600 	movx	@dptr,a
   6595 A3                 4601 	inc	dptr
   6596 74 00              4602 	mov	a,#0x00
   6598 F0                 4603 	movx	@dptr,a
   6599 A3                 4604 	inc	dptr
   659A 74 00              4605 	mov	a,#0x00
   659C F0                 4606 	movx	@dptr,a
                           4607 ;	genCall
   659D 75 82 9D           4608 	mov	dpl,#_GPIO_set_output_file_name_5_19
   65A0 75 83 0C           4609 	mov	dph,#(_GPIO_set_output_file_name_5_19 >> 8)
   65A3 75 F0 00           4610 	mov	b,#0x00
   65A6 12 1B 3F           4611 	lcall	_HAL_assert_fail
                    147A   4612 	C$core_gpio.c$316$2$4 ==.
                           4613 ;	../drivers/CoreGPIO/core_gpio.c:316: break;
   65A9 02 66 8A           4614 	ljmp	00140$
                    147D   4615 	C$core_gpio.c$319$2$4 ==.
                           4616 ;	../drivers/CoreGPIO/core_gpio.c:319: HAL_ASSERT(0);
   65AC                    4617 00136$:
                           4618 ;	genPointerSet
                           4619 ;     genFarPointerSet
   65AC 90 0C BD           4620 	mov	dptr,#_GPIO_set_output_file_name_4_21
   65AF 74 2E              4621 	mov	a,#0x2E
   65B1 F0                 4622 	movx	@dptr,a
                           4623 ;	genPointerSet
                           4624 ;     genFarPointerSet
   65B2 90 0C BE           4625 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0001)
   65B5 74 2E              4626 	mov	a,#0x2E
   65B7 F0                 4627 	movx	@dptr,a
                           4628 ;	genPointerSet
                           4629 ;     genFarPointerSet
   65B8 90 0C BF           4630 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0002)
   65BB 74 2F              4631 	mov	a,#0x2F
   65BD F0                 4632 	movx	@dptr,a
                           4633 ;	genPointerSet
                           4634 ;     genFarPointerSet
   65BE 90 0C C0           4635 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0003)
   65C1 74 64              4636 	mov	a,#0x64
   65C3 F0                 4637 	movx	@dptr,a
                           4638 ;	genPointerSet
                           4639 ;     genFarPointerSet
   65C4 90 0C C1           4640 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0004)
   65C7 74 72              4641 	mov	a,#0x72
   65C9 F0                 4642 	movx	@dptr,a
                           4643 ;	genPointerSet
                           4644 ;     genFarPointerSet
   65CA 90 0C C2           4645 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0005)
   65CD 74 69              4646 	mov	a,#0x69
   65CF F0                 4647 	movx	@dptr,a
                           4648 ;	genPointerSet
                           4649 ;     genFarPointerSet
   65D0 90 0C C3           4650 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0006)
   65D3 74 76              4651 	mov	a,#0x76
   65D5 F0                 4652 	movx	@dptr,a
                           4653 ;	genPointerSet
                           4654 ;     genFarPointerSet
   65D6 90 0C C4           4655 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0007)
   65D9 74 65              4656 	mov	a,#0x65
   65DB F0                 4657 	movx	@dptr,a
                           4658 ;	genPointerSet
                           4659 ;     genFarPointerSet
   65DC 90 0C C5           4660 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0008)
   65DF 74 72              4661 	mov	a,#0x72
   65E1 F0                 4662 	movx	@dptr,a
                           4663 ;	genPointerSet
                           4664 ;     genFarPointerSet
   65E2 90 0C C6           4665 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0009)
   65E5 74 73              4666 	mov	a,#0x73
   65E7 F0                 4667 	movx	@dptr,a
                           4668 ;	genPointerSet
                           4669 ;     genFarPointerSet
   65E8 90 0C C7           4670 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000a)
   65EB 74 2F              4671 	mov	a,#0x2F
   65ED F0                 4672 	movx	@dptr,a
                           4673 ;	genPointerSet
                           4674 ;     genFarPointerSet
   65EE 90 0C C8           4675 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000b)
   65F1 74 43              4676 	mov	a,#0x43
   65F3 F0                 4677 	movx	@dptr,a
                           4678 ;	genPointerSet
                           4679 ;     genFarPointerSet
   65F4 90 0C C9           4680 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000c)
   65F7 74 6F              4681 	mov	a,#0x6F
   65F9 F0                 4682 	movx	@dptr,a
                           4683 ;	genPointerSet
                           4684 ;     genFarPointerSet
   65FA 90 0C CA           4685 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000d)
   65FD 74 72              4686 	mov	a,#0x72
   65FF F0                 4687 	movx	@dptr,a
                           4688 ;	genPointerSet
                           4689 ;     genFarPointerSet
   6600 90 0C CB           4690 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000e)
   6603 74 65              4691 	mov	a,#0x65
   6605 F0                 4692 	movx	@dptr,a
                           4693 ;	genPointerSet
                           4694 ;     genFarPointerSet
   6606 90 0C CC           4695 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x000f)
   6609 74 47              4696 	mov	a,#0x47
   660B F0                 4697 	movx	@dptr,a
                           4698 ;	genPointerSet
                           4699 ;     genFarPointerSet
   660C 90 0C CD           4700 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0010)
   660F 74 50              4701 	mov	a,#0x50
   6611 F0                 4702 	movx	@dptr,a
                           4703 ;	genPointerSet
                           4704 ;     genFarPointerSet
   6612 90 0C CE           4705 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0011)
   6615 74 49              4706 	mov	a,#0x49
   6617 F0                 4707 	movx	@dptr,a
                           4708 ;	genPointerSet
                           4709 ;     genFarPointerSet
   6618 90 0C CF           4710 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0012)
   661B 74 4F              4711 	mov	a,#0x4F
   661D F0                 4712 	movx	@dptr,a
                           4713 ;	genPointerSet
                           4714 ;     genFarPointerSet
   661E 90 0C D0           4715 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0013)
   6621 74 2F              4716 	mov	a,#0x2F
   6623 F0                 4717 	movx	@dptr,a
                           4718 ;	genPointerSet
                           4719 ;     genFarPointerSet
   6624 90 0C D1           4720 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0014)
   6627 74 63              4721 	mov	a,#0x63
   6629 F0                 4722 	movx	@dptr,a
                           4723 ;	genPointerSet
                           4724 ;     genFarPointerSet
   662A 90 0C D2           4725 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0015)
   662D 74 6F              4726 	mov	a,#0x6F
   662F F0                 4727 	movx	@dptr,a
                           4728 ;	genPointerSet
                           4729 ;     genFarPointerSet
   6630 90 0C D3           4730 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0016)
   6633 74 72              4731 	mov	a,#0x72
   6635 F0                 4732 	movx	@dptr,a
                           4733 ;	genPointerSet
                           4734 ;     genFarPointerSet
   6636 90 0C D4           4735 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0017)
   6639 74 65              4736 	mov	a,#0x65
   663B F0                 4737 	movx	@dptr,a
                           4738 ;	genPointerSet
                           4739 ;     genFarPointerSet
   663C 90 0C D5           4740 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0018)
   663F 74 5F              4741 	mov	a,#0x5F
   6641 F0                 4742 	movx	@dptr,a
                           4743 ;	genPointerSet
                           4744 ;     genFarPointerSet
   6642 90 0C D6           4745 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x0019)
   6645 74 67              4746 	mov	a,#0x67
   6647 F0                 4747 	movx	@dptr,a
                           4748 ;	genPointerSet
                           4749 ;     genFarPointerSet
   6648 90 0C D7           4750 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001a)
   664B 74 70              4751 	mov	a,#0x70
   664D F0                 4752 	movx	@dptr,a
                           4753 ;	genPointerSet
                           4754 ;     genFarPointerSet
   664E 90 0C D8           4755 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001b)
   6651 74 69              4756 	mov	a,#0x69
   6653 F0                 4757 	movx	@dptr,a
                           4758 ;	genPointerSet
                           4759 ;     genFarPointerSet
   6654 90 0C D9           4760 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001c)
   6657 74 6F              4761 	mov	a,#0x6F
   6659 F0                 4762 	movx	@dptr,a
                           4763 ;	genPointerSet
                           4764 ;     genFarPointerSet
   665A 90 0C DA           4765 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001d)
   665D 74 2E              4766 	mov	a,#0x2E
   665F F0                 4767 	movx	@dptr,a
                           4768 ;	genPointerSet
                           4769 ;     genFarPointerSet
   6660 90 0C DB           4770 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001e)
   6663 74 63              4771 	mov	a,#0x63
   6665 F0                 4772 	movx	@dptr,a
                           4773 ;	genPointerSet
                           4774 ;     genFarPointerSet
   6666 90 0C DC           4775 	mov	dptr,#(_GPIO_set_output_file_name_4_21 + 0x001f)
   6669 74 00              4776 	mov	a,#0x00
   666B F0                 4777 	movx	@dptr,a
                           4778 ;	genAssign
   666C 90 05 7F           4779 	mov	dptr,#_HAL_assert_fail_PARM_2
   666F 74 3F              4780 	mov	a,#0x3F
   6671 F0                 4781 	movx	@dptr,a
   6672 A3                 4782 	inc	dptr
   6673 74 01              4783 	mov	a,#0x01
   6675 F0                 4784 	movx	@dptr,a
   6676 A3                 4785 	inc	dptr
   6677 74 00              4786 	mov	a,#0x00
   6679 F0                 4787 	movx	@dptr,a
   667A A3                 4788 	inc	dptr
   667B 74 00              4789 	mov	a,#0x00
   667D F0                 4790 	movx	@dptr,a
                           4791 ;	genCall
   667E 75 82 BD           4792 	mov	dpl,#_GPIO_set_output_file_name_4_21
   6681 75 83 0C           4793 	mov	dph,#(_GPIO_set_output_file_name_4_21 >> 8)
   6684 75 F0 00           4794 	mov	b,#0x00
   6687 12 1B 3F           4795 	lcall	_HAL_assert_fail
                    155B   4796 	C$core_gpio.c$321$1$1 ==.
                           4797 ;	../drivers/CoreGPIO/core_gpio.c:321: }
   668A                    4798 00140$:
                    155B   4799 	C$core_gpio.c$322$1$1 ==.
                    155B   4800 	XG$GPIO_set_output$0$0 ==.
   668A 22                 4801 	ret
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
   668B                    4819 _GPIO_drive_inout:
                           4820 ;	genReceive
   668B AA F0              4821 	mov	r2,b
   668D AB 83              4822 	mov	r3,dph
   668F E5 82              4823 	mov	a,dpl
   6691 90 0C DF           4824 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   6694 F0                 4825 	movx	@dptr,a
   6695 A3                 4826 	inc	dptr
   6696 EB                 4827 	mov	a,r3
   6697 F0                 4828 	movx	@dptr,a
   6698 A3                 4829 	inc	dptr
   6699 EA                 4830 	mov	a,r2
   669A F0                 4831 	movx	@dptr,a
                    156C   4832 	C$core_gpio.c$338$2$2 ==.
                           4833 ;	../drivers/CoreGPIO/core_gpio.c:338: HAL_ASSERT( port_id < NB_OF_GPIO );
                           4834 ;	genAssign
   669B 90 0C DD           4835 	mov	dptr,#_GPIO_drive_inout_PARM_2
   669E E0                 4836 	movx	a,@dptr
   669F FA                 4837 	mov	r2,a
                           4838 ;	genCmpLt
                           4839 ;	genCmp
   66A0 BA 20 00           4840 	cjne	r2,#0x20,00122$
   66A3                    4841 00122$:
                           4842 ;	genIfxJump
   66A3 50 03              4843 	jnc	00123$
   66A5 02 67 8A           4844 	ljmp	00104$
   66A8                    4845 00123$:
                           4846 ;	genPointerSet
                           4847 ;     genFarPointerSet
   66A8 90 0C E2           4848 	mov	dptr,#_GPIO_drive_inout_file_name_3_3
   66AB 74 2E              4849 	mov	a,#0x2E
   66AD F0                 4850 	movx	@dptr,a
                           4851 ;	genPointerSet
                           4852 ;     genFarPointerSet
   66AE 90 0C E3           4853 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0001)
   66B1 74 2E              4854 	mov	a,#0x2E
   66B3 F0                 4855 	movx	@dptr,a
                           4856 ;	genPointerSet
                           4857 ;     genFarPointerSet
   66B4 90 0C E4           4858 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0002)
   66B7 74 2F              4859 	mov	a,#0x2F
   66B9 F0                 4860 	movx	@dptr,a
                           4861 ;	genPointerSet
                           4862 ;     genFarPointerSet
   66BA 90 0C E5           4863 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0003)
   66BD 74 64              4864 	mov	a,#0x64
   66BF F0                 4865 	movx	@dptr,a
                           4866 ;	genPointerSet
                           4867 ;     genFarPointerSet
   66C0 90 0C E6           4868 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0004)
   66C3 74 72              4869 	mov	a,#0x72
   66C5 F0                 4870 	movx	@dptr,a
                           4871 ;	genPointerSet
                           4872 ;     genFarPointerSet
   66C6 90 0C E7           4873 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0005)
   66C9 74 69              4874 	mov	a,#0x69
   66CB F0                 4875 	movx	@dptr,a
                           4876 ;	genPointerSet
                           4877 ;     genFarPointerSet
   66CC 90 0C E8           4878 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0006)
   66CF 74 76              4879 	mov	a,#0x76
   66D1 F0                 4880 	movx	@dptr,a
                           4881 ;	genPointerSet
                           4882 ;     genFarPointerSet
   66D2 90 0C E9           4883 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0007)
   66D5 74 65              4884 	mov	a,#0x65
   66D7 F0                 4885 	movx	@dptr,a
                           4886 ;	genPointerSet
                           4887 ;     genFarPointerSet
   66D8 90 0C EA           4888 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0008)
   66DB 74 72              4889 	mov	a,#0x72
   66DD F0                 4890 	movx	@dptr,a
                           4891 ;	genPointerSet
                           4892 ;     genFarPointerSet
   66DE 90 0C EB           4893 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0009)
   66E1 74 73              4894 	mov	a,#0x73
   66E3 F0                 4895 	movx	@dptr,a
                           4896 ;	genPointerSet
                           4897 ;     genFarPointerSet
   66E4 90 0C EC           4898 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000a)
   66E7 74 2F              4899 	mov	a,#0x2F
   66E9 F0                 4900 	movx	@dptr,a
                           4901 ;	genPointerSet
                           4902 ;     genFarPointerSet
   66EA 90 0C ED           4903 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000b)
   66ED 74 43              4904 	mov	a,#0x43
   66EF F0                 4905 	movx	@dptr,a
                           4906 ;	genPointerSet
                           4907 ;     genFarPointerSet
   66F0 90 0C EE           4908 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000c)
   66F3 74 6F              4909 	mov	a,#0x6F
   66F5 F0                 4910 	movx	@dptr,a
                           4911 ;	genPointerSet
                           4912 ;     genFarPointerSet
   66F6 90 0C EF           4913 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000d)
   66F9 74 72              4914 	mov	a,#0x72
   66FB F0                 4915 	movx	@dptr,a
                           4916 ;	genPointerSet
                           4917 ;     genFarPointerSet
   66FC 90 0C F0           4918 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000e)
   66FF 74 65              4919 	mov	a,#0x65
   6701 F0                 4920 	movx	@dptr,a
                           4921 ;	genPointerSet
                           4922 ;     genFarPointerSet
   6702 90 0C F1           4923 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x000f)
   6705 74 47              4924 	mov	a,#0x47
   6707 F0                 4925 	movx	@dptr,a
                           4926 ;	genPointerSet
                           4927 ;     genFarPointerSet
   6708 90 0C F2           4928 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0010)
   670B 74 50              4929 	mov	a,#0x50
   670D F0                 4930 	movx	@dptr,a
                           4931 ;	genPointerSet
                           4932 ;     genFarPointerSet
   670E 90 0C F3           4933 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0011)
   6711 74 49              4934 	mov	a,#0x49
   6713 F0                 4935 	movx	@dptr,a
                           4936 ;	genPointerSet
                           4937 ;     genFarPointerSet
   6714 90 0C F4           4938 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0012)
   6717 74 4F              4939 	mov	a,#0x4F
   6719 F0                 4940 	movx	@dptr,a
                           4941 ;	genPointerSet
                           4942 ;     genFarPointerSet
   671A 90 0C F5           4943 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0013)
   671D 74 2F              4944 	mov	a,#0x2F
   671F F0                 4945 	movx	@dptr,a
                           4946 ;	genPointerSet
                           4947 ;     genFarPointerSet
   6720 90 0C F6           4948 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0014)
   6723 74 63              4949 	mov	a,#0x63
   6725 F0                 4950 	movx	@dptr,a
                           4951 ;	genPointerSet
                           4952 ;     genFarPointerSet
   6726 90 0C F7           4953 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0015)
   6729 74 6F              4954 	mov	a,#0x6F
   672B F0                 4955 	movx	@dptr,a
                           4956 ;	genPointerSet
                           4957 ;     genFarPointerSet
   672C 90 0C F8           4958 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0016)
   672F 74 72              4959 	mov	a,#0x72
   6731 F0                 4960 	movx	@dptr,a
                           4961 ;	genPointerSet
                           4962 ;     genFarPointerSet
   6732 90 0C F9           4963 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0017)
   6735 74 65              4964 	mov	a,#0x65
   6737 F0                 4965 	movx	@dptr,a
                           4966 ;	genPointerSet
                           4967 ;     genFarPointerSet
   6738 90 0C FA           4968 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0018)
   673B 74 5F              4969 	mov	a,#0x5F
   673D F0                 4970 	movx	@dptr,a
                           4971 ;	genPointerSet
                           4972 ;     genFarPointerSet
   673E 90 0C FB           4973 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x0019)
   6741 74 67              4974 	mov	a,#0x67
   6743 F0                 4975 	movx	@dptr,a
                           4976 ;	genPointerSet
                           4977 ;     genFarPointerSet
   6744 90 0C FC           4978 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001a)
   6747 74 70              4979 	mov	a,#0x70
   6749 F0                 4980 	movx	@dptr,a
                           4981 ;	genPointerSet
                           4982 ;     genFarPointerSet
   674A 90 0C FD           4983 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001b)
   674D 74 69              4984 	mov	a,#0x69
   674F F0                 4985 	movx	@dptr,a
                           4986 ;	genPointerSet
                           4987 ;     genFarPointerSet
   6750 90 0C FE           4988 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001c)
   6753 74 6F              4989 	mov	a,#0x6F
   6755 F0                 4990 	movx	@dptr,a
                           4991 ;	genPointerSet
                           4992 ;     genFarPointerSet
   6756 90 0C FF           4993 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001d)
   6759 74 2E              4994 	mov	a,#0x2E
   675B F0                 4995 	movx	@dptr,a
                           4996 ;	genPointerSet
                           4997 ;     genFarPointerSet
   675C 90 0D 00           4998 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001e)
   675F 74 63              4999 	mov	a,#0x63
   6761 F0                 5000 	movx	@dptr,a
                           5001 ;	genPointerSet
                           5002 ;     genFarPointerSet
   6762 90 0D 01           5003 	mov	dptr,#(_GPIO_drive_inout_file_name_3_3 + 0x001f)
   6765 74 00              5004 	mov	a,#0x00
   6767 F0                 5005 	movx	@dptr,a
                           5006 ;	genAssign
   6768 90 05 7F           5007 	mov	dptr,#_HAL_assert_fail_PARM_2
   676B 74 52              5008 	mov	a,#0x52
   676D F0                 5009 	movx	@dptr,a
   676E A3                 5010 	inc	dptr
   676F 74 01              5011 	mov	a,#0x01
   6771 F0                 5012 	movx	@dptr,a
   6772 A3                 5013 	inc	dptr
   6773 74 00              5014 	mov	a,#0x00
   6775 F0                 5015 	movx	@dptr,a
   6776 A3                 5016 	inc	dptr
   6777 74 00              5017 	mov	a,#0x00
   6779 F0                 5018 	movx	@dptr,a
                           5019 ;	genCall
   677A 75 82 E2           5020 	mov	dpl,#_GPIO_drive_inout_file_name_3_3
   677D 75 83 0C           5021 	mov	dph,#(_GPIO_drive_inout_file_name_3_3 >> 8)
   6780 75 F0 00           5022 	mov	b,#0x00
   6783 C0 02              5023 	push	ar2
   6785 12 1B 3F           5024 	lcall	_HAL_assert_fail
   6788 D0 02              5025 	pop	ar2
   678A                    5026 00104$:
                    165B   5027 	C$core_gpio.c$340$1$1 ==.
                           5028 ;	../drivers/CoreGPIO/core_gpio.c:340: switch( inout_state )
                           5029 ;	genAssign
   678A 90 0C DE           5030 	mov	dptr,#_GPIO_drive_inout_PARM_3
   678D E0                 5031 	movx	a,@dptr
   678E FB                 5032 	mov	r3,a
                           5033 ;	genCmpEq
                           5034 ;	gencjneshort
   678F BB 00 03           5035 	cjne	r3,#0x00,00124$
   6792 02 68 1B           5036 	ljmp	00107$
   6795                    5037 00124$:
                           5038 ;	genCmpEq
                           5039 ;	gencjneshort
   6795 BB 01 03           5040 	cjne	r3,#0x01,00125$
   6798 02 67 A4           5041 	ljmp	00106$
   679B                    5042 00125$:
                           5043 ;	genCmpEq
                           5044 ;	gencjneshort
   679B BB 02 03           5045 	cjne	r3,#0x02,00126$
   679E 02 68 92           5046 	ljmp	00108$
   67A1                    5047 00126$:
   67A1 02 68 E6           5048 	ljmp	00112$
                    1675   5049 	C$core_gpio.c$342$2$4 ==.
                           5050 ;	../drivers/CoreGPIO/core_gpio.c:342: case GPIO_DRIVE_HIGH:
   67A4                    5051 00106$:
                    1675   5052 	C$core_gpio.c$344$2$4 ==.
                           5053 ;	../drivers/CoreGPIO/core_gpio.c:344: GPIO_set_output( this_gpio, port_id, 1 );
                           5054 ;	genAssign
   67A4 90 0C DF           5055 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   67A7 E0                 5056 	movx	a,@dptr
   67A8 FB                 5057 	mov	r3,a
   67A9 A3                 5058 	inc	dptr
   67AA E0                 5059 	movx	a,@dptr
   67AB FC                 5060 	mov	r4,a
   67AC A3                 5061 	inc	dptr
   67AD E0                 5062 	movx	a,@dptr
   67AE FD                 5063 	mov	r5,a
                           5064 ;	genAssign
   67AF 90 0C 31           5065 	mov	dptr,#_GPIO_set_output_PARM_2
   67B2 EA                 5066 	mov	a,r2
   67B3 F0                 5067 	movx	@dptr,a
                           5068 ;	genAssign
   67B4 90 0C 32           5069 	mov	dptr,#_GPIO_set_output_PARM_3
   67B7 74 01              5070 	mov	a,#0x01
   67B9 F0                 5071 	movx	@dptr,a
                           5072 ;	genCall
   67BA 8B 82              5073 	mov	dpl,r3
   67BC 8C 83              5074 	mov	dph,r4
   67BE 8D F0              5075 	mov	b,r5
   67C0 C0 02              5076 	push	ar2
   67C2 12 5E E2           5077 	lcall	_GPIO_set_output
   67C5 D0 02              5078 	pop	ar2
                    1698   5079 	C$core_gpio.c$347$2$4 ==.
                           5080 ;	../drivers/CoreGPIO/core_gpio.c:347: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5081 ;	genAssign
   67C7 90 0C DF           5082 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   67CA E0                 5083 	movx	a,@dptr
   67CB FB                 5084 	mov	r3,a
   67CC A3                 5085 	inc	dptr
   67CD E0                 5086 	movx	a,@dptr
   67CE FC                 5087 	mov	r4,a
   67CF A3                 5088 	inc	dptr
   67D0 E0                 5089 	movx	a,@dptr
   67D1 FD                 5090 	mov	r5,a
                           5091 ;	genPointerGet
                           5092 ;	genGenPointerGet
   67D2 8B 82              5093 	mov	dpl,r3
   67D4 8C 83              5094 	mov	dph,r4
   67D6 8D F0              5095 	mov	b,r5
   67D8 12 71 69           5096 	lcall	__gptrget
   67DB FB                 5097 	mov	r3,a
   67DC A3                 5098 	inc	dptr
   67DD 12 71 69           5099 	lcall	__gptrget
   67E0 FC                 5100 	mov	r4,a
                           5101 ;	genMult
                           5102 ;	genMultOneByte
   67E1 EA                 5103 	mov	a,r2
   67E2 75 F0 04           5104 	mov	b,#0x04
   67E5 A4                 5105 	mul	ab
                           5106 ;	genPlus
   67E6 25 03              5107 	add	a,ar3
   67E8 FB                 5108 	mov	r3,a
   67E9 E5 04              5109 	mov	a,ar4
   67EB 35 F0              5110 	addc	a,b
   67ED FC                 5111 	mov	r4,a
                           5112 ;	genCast
   67EE 7D 00              5113 	mov	r5,#0x00
   67F0 7E 00              5114 	mov	r6,#0x00
                    16C3   5115 	C$core_gpio.c$348$2$4 ==.
                           5116 ;	../drivers/CoreGPIO/core_gpio.c:348: config = HW_get_8bit_reg( cfg_reg_addr );
                           5117 ;	genCast
                           5118 ;	genCall
   67F2 8B 82              5119 	mov	dpl,r3
   67F4 8C 83              5120 	mov	dph,r4
   67F6 C0 03              5121 	push	ar3
   67F8 C0 04              5122 	push	ar4
   67FA 12 1B F0           5123 	lcall	_HW_get_8bit_reg
   67FD AD 82              5124 	mov	r5,dpl
   67FF D0 04              5125 	pop	ar4
   6801 D0 03              5126 	pop	ar3
                           5127 ;	genCast
   6803 7E 00              5128 	mov	r6,#0x00
   6805 7F 00              5129 	mov	r7,#0x00
   6807 78 00              5130 	mov	r0,#0x00
                    16DA   5131 	C$core_gpio.c$349$2$4 ==.
                           5132 ;	../drivers/CoreGPIO/core_gpio.c:349: config |= OUTPUT_BUFFER_ENABLE_MASK;
                           5133 ;	genOr
   6809 43 05 04           5134 	orl	ar5,#0x04
                    16DD   5135 	C$core_gpio.c$350$2$4 ==.
                           5136 ;	../drivers/CoreGPIO/core_gpio.c:350: HW_set_8bit_reg( cfg_reg_addr, config );
                           5137 ;	genCast
   680C 90 05 9C           5138 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   680F ED                 5139 	mov	a,r5
   6810 F0                 5140 	movx	@dptr,a
                           5141 ;	genCall
   6811 8B 82              5142 	mov	dpl,r3
   6813 8C 83              5143 	mov	dph,r4
   6815 12 1B E2           5144 	lcall	_HW_set_8bit_reg
                    16E9   5145 	C$core_gpio.c$351$2$4 ==.
                           5146 ;	../drivers/CoreGPIO/core_gpio.c:351: break;
   6818 02 69 C4           5147 	ljmp	00116$
                    16EC   5148 	C$core_gpio.c$353$2$4 ==.
                           5149 ;	../drivers/CoreGPIO/core_gpio.c:353: case GPIO_DRIVE_LOW:
   681B                    5150 00107$:
                    16EC   5151 	C$core_gpio.c$355$2$4 ==.
                           5152 ;	../drivers/CoreGPIO/core_gpio.c:355: GPIO_set_output( this_gpio, port_id, 0 );
                           5153 ;	genAssign
   681B 90 0C DF           5154 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   681E E0                 5155 	movx	a,@dptr
   681F FB                 5156 	mov	r3,a
   6820 A3                 5157 	inc	dptr
   6821 E0                 5158 	movx	a,@dptr
   6822 FC                 5159 	mov	r4,a
   6823 A3                 5160 	inc	dptr
   6824 E0                 5161 	movx	a,@dptr
   6825 FD                 5162 	mov	r5,a
                           5163 ;	genAssign
   6826 90 0C 31           5164 	mov	dptr,#_GPIO_set_output_PARM_2
   6829 EA                 5165 	mov	a,r2
   682A F0                 5166 	movx	@dptr,a
                           5167 ;	genAssign
   682B 90 0C 32           5168 	mov	dptr,#_GPIO_set_output_PARM_3
   682E 74 00              5169 	mov	a,#0x00
   6830 F0                 5170 	movx	@dptr,a
                           5171 ;	genCall
   6831 8B 82              5172 	mov	dpl,r3
   6833 8C 83              5173 	mov	dph,r4
   6835 8D F0              5174 	mov	b,r5
   6837 C0 02              5175 	push	ar2
   6839 12 5E E2           5176 	lcall	_GPIO_set_output
   683C D0 02              5177 	pop	ar2
                    170F   5178 	C$core_gpio.c$358$2$4 ==.
                           5179 ;	../drivers/CoreGPIO/core_gpio.c:358: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5180 ;	genAssign
   683E 90 0C DF           5181 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   6841 E0                 5182 	movx	a,@dptr
   6842 FB                 5183 	mov	r3,a
   6843 A3                 5184 	inc	dptr
   6844 E0                 5185 	movx	a,@dptr
   6845 FC                 5186 	mov	r4,a
   6846 A3                 5187 	inc	dptr
   6847 E0                 5188 	movx	a,@dptr
   6848 FD                 5189 	mov	r5,a
                           5190 ;	genPointerGet
                           5191 ;	genGenPointerGet
   6849 8B 82              5192 	mov	dpl,r3
   684B 8C 83              5193 	mov	dph,r4
   684D 8D F0              5194 	mov	b,r5
   684F 12 71 69           5195 	lcall	__gptrget
   6852 FB                 5196 	mov	r3,a
   6853 A3                 5197 	inc	dptr
   6854 12 71 69           5198 	lcall	__gptrget
   6857 FC                 5199 	mov	r4,a
                           5200 ;	genMult
                           5201 ;	genMultOneByte
   6858 EA                 5202 	mov	a,r2
   6859 75 F0 04           5203 	mov	b,#0x04
   685C A4                 5204 	mul	ab
                           5205 ;	genPlus
   685D 25 03              5206 	add	a,ar3
   685F FB                 5207 	mov	r3,a
   6860 E5 04              5208 	mov	a,ar4
   6862 35 F0              5209 	addc	a,b
   6864 FC                 5210 	mov	r4,a
                           5211 ;	genCast
   6865 7D 00              5212 	mov	r5,#0x00
   6867 7E 00              5213 	mov	r6,#0x00
                    173A   5214 	C$core_gpio.c$359$2$4 ==.
                           5215 ;	../drivers/CoreGPIO/core_gpio.c:359: config = HW_get_8bit_reg( cfg_reg_addr );
                           5216 ;	genCast
                           5217 ;	genCall
   6869 8B 82              5218 	mov	dpl,r3
   686B 8C 83              5219 	mov	dph,r4
   686D C0 03              5220 	push	ar3
   686F C0 04              5221 	push	ar4
   6871 12 1B F0           5222 	lcall	_HW_get_8bit_reg
   6874 AD 82              5223 	mov	r5,dpl
   6876 D0 04              5224 	pop	ar4
   6878 D0 03              5225 	pop	ar3
                           5226 ;	genCast
   687A 7E 00              5227 	mov	r6,#0x00
   687C 7F 00              5228 	mov	r7,#0x00
   687E 78 00              5229 	mov	r0,#0x00
                    1751   5230 	C$core_gpio.c$360$2$4 ==.
                           5231 ;	../drivers/CoreGPIO/core_gpio.c:360: config |= OUTPUT_BUFFER_ENABLE_MASK;
                           5232 ;	genOr
   6880 43 05 04           5233 	orl	ar5,#0x04
                    1754   5234 	C$core_gpio.c$361$2$4 ==.
                           5235 ;	../drivers/CoreGPIO/core_gpio.c:361: HW_set_8bit_reg( cfg_reg_addr, config );
                           5236 ;	genCast
   6883 90 05 9C           5237 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6886 ED                 5238 	mov	a,r5
   6887 F0                 5239 	movx	@dptr,a
                           5240 ;	genCall
   6888 8B 82              5241 	mov	dpl,r3
   688A 8C 83              5242 	mov	dph,r4
   688C 12 1B E2           5243 	lcall	_HW_set_8bit_reg
                    1760   5244 	C$core_gpio.c$362$2$4 ==.
                           5245 ;	../drivers/CoreGPIO/core_gpio.c:362: break;
   688F 02 69 C4           5246 	ljmp	00116$
                    1763   5247 	C$core_gpio.c$364$2$4 ==.
                           5248 ;	../drivers/CoreGPIO/core_gpio.c:364: case GPIO_HIGH_Z:
   6892                    5249 00108$:
                    1763   5250 	C$core_gpio.c$366$2$4 ==.
                           5251 ;	../drivers/CoreGPIO/core_gpio.c:366: cfg_reg_addr = this_gpio->base_addr + (port_id * 4);
                           5252 ;	genAssign
   6892 90 0C DF           5253 	mov	dptr,#_GPIO_drive_inout_this_gpio_1_1
   6895 E0                 5254 	movx	a,@dptr
   6896 FB                 5255 	mov	r3,a
   6897 A3                 5256 	inc	dptr
   6898 E0                 5257 	movx	a,@dptr
   6899 FC                 5258 	mov	r4,a
   689A A3                 5259 	inc	dptr
   689B E0                 5260 	movx	a,@dptr
   689C FD                 5261 	mov	r5,a
                           5262 ;	genPointerGet
                           5263 ;	genGenPointerGet
   689D 8B 82              5264 	mov	dpl,r3
   689F 8C 83              5265 	mov	dph,r4
   68A1 8D F0              5266 	mov	b,r5
   68A3 12 71 69           5267 	lcall	__gptrget
   68A6 FB                 5268 	mov	r3,a
   68A7 A3                 5269 	inc	dptr
   68A8 12 71 69           5270 	lcall	__gptrget
   68AB FC                 5271 	mov	r4,a
                           5272 ;	genMult
                           5273 ;	genMultOneByte
   68AC EA                 5274 	mov	a,r2
   68AD 75 F0 04           5275 	mov	b,#0x04
   68B0 A4                 5276 	mul	ab
                           5277 ;	genPlus
   68B1 25 03              5278 	add	a,ar3
   68B3 FB                 5279 	mov	r3,a
   68B4 E5 04              5280 	mov	a,ar4
   68B6 35 F0              5281 	addc	a,b
   68B8 FC                 5282 	mov	r4,a
                           5283 ;	genCast
   68B9 7A 00              5284 	mov	r2,#0x00
   68BB 7D 00              5285 	mov	r5,#0x00
                    178E   5286 	C$core_gpio.c$367$2$4 ==.
                           5287 ;	../drivers/CoreGPIO/core_gpio.c:367: config = HW_get_8bit_reg( cfg_reg_addr );
                           5288 ;	genCast
                           5289 ;	genCall
   68BD 8B 82              5290 	mov	dpl,r3
   68BF 8C 83              5291 	mov	dph,r4
   68C1 C0 03              5292 	push	ar3
   68C3 C0 04              5293 	push	ar4
   68C5 12 1B F0           5294 	lcall	_HW_get_8bit_reg
   68C8 AA 82              5295 	mov	r2,dpl
   68CA D0 04              5296 	pop	ar4
   68CC D0 03              5297 	pop	ar3
                           5298 ;	genCast
   68CE 7D 00              5299 	mov	r5,#0x00
   68D0 7E 00              5300 	mov	r6,#0x00
   68D2 7F 00              5301 	mov	r7,#0x00
                    17A5   5302 	C$core_gpio.c$368$2$4 ==.
                           5303 ;	../drivers/CoreGPIO/core_gpio.c:368: config &= ~OUTPUT_BUFFER_ENABLE_MASK;
                           5304 ;	genAnd
   68D4 53 02 FB           5305 	anl	ar2,#0xFB
                    17A8   5306 	C$core_gpio.c$369$2$4 ==.
                           5307 ;	../drivers/CoreGPIO/core_gpio.c:369: HW_set_8bit_reg( cfg_reg_addr, config );
                           5308 ;	genCast
   68D7 90 05 9C           5309 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   68DA EA                 5310 	mov	a,r2
   68DB F0                 5311 	movx	@dptr,a
                           5312 ;	genCall
   68DC 8B 82              5313 	mov	dpl,r3
   68DE 8C 83              5314 	mov	dph,r4
   68E0 12 1B E2           5315 	lcall	_HW_set_8bit_reg
                    17B4   5316 	C$core_gpio.c$370$2$4 ==.
                           5317 ;	../drivers/CoreGPIO/core_gpio.c:370: break;
   68E3 02 69 C4           5318 	ljmp	00116$
                    17B7   5319 	C$core_gpio.c$373$2$4 ==.
                           5320 ;	../drivers/CoreGPIO/core_gpio.c:373: HAL_ASSERT(0);
   68E6                    5321 00112$:
                           5322 ;	genPointerSet
                           5323 ;     genFarPointerSet
   68E6 90 0D 02           5324 	mov	dptr,#_GPIO_drive_inout_file_name_4_6
   68E9 74 2E              5325 	mov	a,#0x2E
   68EB F0                 5326 	movx	@dptr,a
                           5327 ;	genPointerSet
                           5328 ;     genFarPointerSet
   68EC 90 0D 03           5329 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0001)
   68EF 74 2E              5330 	mov	a,#0x2E
   68F1 F0                 5331 	movx	@dptr,a
                           5332 ;	genPointerSet
                           5333 ;     genFarPointerSet
   68F2 90 0D 04           5334 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0002)
   68F5 74 2F              5335 	mov	a,#0x2F
   68F7 F0                 5336 	movx	@dptr,a
                           5337 ;	genPointerSet
                           5338 ;     genFarPointerSet
   68F8 90 0D 05           5339 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0003)
   68FB 74 64              5340 	mov	a,#0x64
   68FD F0                 5341 	movx	@dptr,a
                           5342 ;	genPointerSet
                           5343 ;     genFarPointerSet
   68FE 90 0D 06           5344 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0004)
   6901 74 72              5345 	mov	a,#0x72
   6903 F0                 5346 	movx	@dptr,a
                           5347 ;	genPointerSet
                           5348 ;     genFarPointerSet
   6904 90 0D 07           5349 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0005)
   6907 74 69              5350 	mov	a,#0x69
   6909 F0                 5351 	movx	@dptr,a
                           5352 ;	genPointerSet
                           5353 ;     genFarPointerSet
   690A 90 0D 08           5354 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0006)
   690D 74 76              5355 	mov	a,#0x76
   690F F0                 5356 	movx	@dptr,a
                           5357 ;	genPointerSet
                           5358 ;     genFarPointerSet
   6910 90 0D 09           5359 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0007)
   6913 74 65              5360 	mov	a,#0x65
   6915 F0                 5361 	movx	@dptr,a
                           5362 ;	genPointerSet
                           5363 ;     genFarPointerSet
   6916 90 0D 0A           5364 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0008)
   6919 74 72              5365 	mov	a,#0x72
   691B F0                 5366 	movx	@dptr,a
                           5367 ;	genPointerSet
                           5368 ;     genFarPointerSet
   691C 90 0D 0B           5369 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0009)
   691F 74 73              5370 	mov	a,#0x73
   6921 F0                 5371 	movx	@dptr,a
                           5372 ;	genPointerSet
                           5373 ;     genFarPointerSet
   6922 90 0D 0C           5374 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000a)
   6925 74 2F              5375 	mov	a,#0x2F
   6927 F0                 5376 	movx	@dptr,a
                           5377 ;	genPointerSet
                           5378 ;     genFarPointerSet
   6928 90 0D 0D           5379 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000b)
   692B 74 43              5380 	mov	a,#0x43
   692D F0                 5381 	movx	@dptr,a
                           5382 ;	genPointerSet
                           5383 ;     genFarPointerSet
   692E 90 0D 0E           5384 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000c)
   6931 74 6F              5385 	mov	a,#0x6F
   6933 F0                 5386 	movx	@dptr,a
                           5387 ;	genPointerSet
                           5388 ;     genFarPointerSet
   6934 90 0D 0F           5389 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000d)
   6937 74 72              5390 	mov	a,#0x72
   6939 F0                 5391 	movx	@dptr,a
                           5392 ;	genPointerSet
                           5393 ;     genFarPointerSet
   693A 90 0D 10           5394 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000e)
   693D 74 65              5395 	mov	a,#0x65
   693F F0                 5396 	movx	@dptr,a
                           5397 ;	genPointerSet
                           5398 ;     genFarPointerSet
   6940 90 0D 11           5399 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x000f)
   6943 74 47              5400 	mov	a,#0x47
   6945 F0                 5401 	movx	@dptr,a
                           5402 ;	genPointerSet
                           5403 ;     genFarPointerSet
   6946 90 0D 12           5404 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0010)
   6949 74 50              5405 	mov	a,#0x50
   694B F0                 5406 	movx	@dptr,a
                           5407 ;	genPointerSet
                           5408 ;     genFarPointerSet
   694C 90 0D 13           5409 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0011)
   694F 74 49              5410 	mov	a,#0x49
   6951 F0                 5411 	movx	@dptr,a
                           5412 ;	genPointerSet
                           5413 ;     genFarPointerSet
   6952 90 0D 14           5414 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0012)
   6955 74 4F              5415 	mov	a,#0x4F
   6957 F0                 5416 	movx	@dptr,a
                           5417 ;	genPointerSet
                           5418 ;     genFarPointerSet
   6958 90 0D 15           5419 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0013)
   695B 74 2F              5420 	mov	a,#0x2F
   695D F0                 5421 	movx	@dptr,a
                           5422 ;	genPointerSet
                           5423 ;     genFarPointerSet
   695E 90 0D 16           5424 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0014)
   6961 74 63              5425 	mov	a,#0x63
   6963 F0                 5426 	movx	@dptr,a
                           5427 ;	genPointerSet
                           5428 ;     genFarPointerSet
   6964 90 0D 17           5429 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0015)
   6967 74 6F              5430 	mov	a,#0x6F
   6969 F0                 5431 	movx	@dptr,a
                           5432 ;	genPointerSet
                           5433 ;     genFarPointerSet
   696A 90 0D 18           5434 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0016)
   696D 74 72              5435 	mov	a,#0x72
   696F F0                 5436 	movx	@dptr,a
                           5437 ;	genPointerSet
                           5438 ;     genFarPointerSet
   6970 90 0D 19           5439 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0017)
   6973 74 65              5440 	mov	a,#0x65
   6975 F0                 5441 	movx	@dptr,a
                           5442 ;	genPointerSet
                           5443 ;     genFarPointerSet
   6976 90 0D 1A           5444 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0018)
   6979 74 5F              5445 	mov	a,#0x5F
   697B F0                 5446 	movx	@dptr,a
                           5447 ;	genPointerSet
                           5448 ;     genFarPointerSet
   697C 90 0D 1B           5449 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x0019)
   697F 74 67              5450 	mov	a,#0x67
   6981 F0                 5451 	movx	@dptr,a
                           5452 ;	genPointerSet
                           5453 ;     genFarPointerSet
   6982 90 0D 1C           5454 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001a)
   6985 74 70              5455 	mov	a,#0x70
   6987 F0                 5456 	movx	@dptr,a
                           5457 ;	genPointerSet
                           5458 ;     genFarPointerSet
   6988 90 0D 1D           5459 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001b)
   698B 74 69              5460 	mov	a,#0x69
   698D F0                 5461 	movx	@dptr,a
                           5462 ;	genPointerSet
                           5463 ;     genFarPointerSet
   698E 90 0D 1E           5464 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001c)
   6991 74 6F              5465 	mov	a,#0x6F
   6993 F0                 5466 	movx	@dptr,a
                           5467 ;	genPointerSet
                           5468 ;     genFarPointerSet
   6994 90 0D 1F           5469 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001d)
   6997 74 2E              5470 	mov	a,#0x2E
   6999 F0                 5471 	movx	@dptr,a
                           5472 ;	genPointerSet
                           5473 ;     genFarPointerSet
   699A 90 0D 20           5474 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001e)
   699D 74 63              5475 	mov	a,#0x63
   699F F0                 5476 	movx	@dptr,a
                           5477 ;	genPointerSet
                           5478 ;     genFarPointerSet
   69A0 90 0D 21           5479 	mov	dptr,#(_GPIO_drive_inout_file_name_4_6 + 0x001f)
   69A3 74 00              5480 	mov	a,#0x00
   69A5 F0                 5481 	movx	@dptr,a
                           5482 ;	genAssign
   69A6 90 05 7F           5483 	mov	dptr,#_HAL_assert_fail_PARM_2
   69A9 74 75              5484 	mov	a,#0x75
   69AB F0                 5485 	movx	@dptr,a
   69AC A3                 5486 	inc	dptr
   69AD 74 01              5487 	mov	a,#0x01
   69AF F0                 5488 	movx	@dptr,a
   69B0 A3                 5489 	inc	dptr
   69B1 74 00              5490 	mov	a,#0x00
   69B3 F0                 5491 	movx	@dptr,a
   69B4 A3                 5492 	inc	dptr
   69B5 74 00              5493 	mov	a,#0x00
   69B7 F0                 5494 	movx	@dptr,a
                           5495 ;	genCall
   69B8 75 82 02           5496 	mov	dpl,#_GPIO_drive_inout_file_name_4_6
   69BB 75 83 0D           5497 	mov	dph,#(_GPIO_drive_inout_file_name_4_6 >> 8)
   69BE 75 F0 00           5498 	mov	b,#0x00
   69C1 12 1B 3F           5499 	lcall	_HAL_assert_fail
                    1895   5500 	C$core_gpio.c$375$1$1 ==.
                           5501 ;	../drivers/CoreGPIO/core_gpio.c:375: }
   69C4                    5502 00116$:
                    1895   5503 	C$core_gpio.c$376$1$1 ==.
                    1895   5504 	XG$GPIO_drive_inout$0$0 ==.
   69C4 22                 5505 	ret
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
   69C5                    5521 _GPIO_enable_irq:
                           5522 ;	genReceive
   69C5 AA F0              5523 	mov	r2,b
   69C7 AB 83              5524 	mov	r3,dph
   69C9 E5 82              5525 	mov	a,dpl
   69CB 90 0D 23           5526 	mov	dptr,#_GPIO_enable_irq_this_gpio_1_1
   69CE F0                 5527 	movx	@dptr,a
   69CF A3                 5528 	inc	dptr
   69D0 EB                 5529 	mov	a,r3
   69D1 F0                 5530 	movx	@dptr,a
   69D2 A3                 5531 	inc	dptr
   69D3 EA                 5532 	mov	a,r2
   69D4 F0                 5533 	movx	@dptr,a
                    18A6   5534 	C$core_gpio.c$389$1$1 ==.
                           5535 ;	../drivers/CoreGPIO/core_gpio.c:389: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           5536 ;	genAssign
   69D5 90 0D 23           5537 	mov	dptr,#_GPIO_enable_irq_this_gpio_1_1
   69D8 E0                 5538 	movx	a,@dptr
   69D9 FA                 5539 	mov	r2,a
   69DA A3                 5540 	inc	dptr
   69DB E0                 5541 	movx	a,@dptr
   69DC FB                 5542 	mov	r3,a
   69DD A3                 5543 	inc	dptr
   69DE E0                 5544 	movx	a,@dptr
   69DF FC                 5545 	mov	r4,a
                           5546 ;	genPointerGet
                           5547 ;	genGenPointerGet
   69E0 8A 82              5548 	mov	dpl,r2
   69E2 8B 83              5549 	mov	dph,r3
   69E4 8C F0              5550 	mov	b,r4
   69E6 12 71 69           5551 	lcall	__gptrget
   69E9 FA                 5552 	mov	r2,a
   69EA A3                 5553 	inc	dptr
   69EB 12 71 69           5554 	lcall	__gptrget
   69EE FB                 5555 	mov	r3,a
                           5556 ;	genCast
   69EF 7C 00              5557 	mov	r4,#0x00
   69F1 7D 00              5558 	mov	r5,#0x00
                    18C4   5559 	C$core_gpio.c$391$2$2 ==.
                           5560 ;	../drivers/CoreGPIO/core_gpio.c:391: HAL_ASSERT( port_id < NB_OF_GPIO );
                           5561 ;	genAssign
   69F3 90 0D 22           5562 	mov	dptr,#_GPIO_enable_irq_PARM_2
   69F6 E0                 5563 	movx	a,@dptr
   69F7 FE                 5564 	mov	r6,a
                           5565 ;	genCmpLt
                           5566 ;	genCmp
   69F8 BE 20 00           5567 	cjne	r6,#0x20,00112$
   69FB                    5568 00112$:
   69FB E4                 5569 	clr	a
   69FC 33                 5570 	rlc	a
   69FD FF                 5571 	mov	r7,a
                           5572 ;	genIfx
   69FE EF                 5573 	mov	a,r7
                           5574 ;	genIfxJump
   69FF 60 03              5575 	jz	00113$
   6A01 02 6A FA           5576 	ljmp	00104$
   6A04                    5577 00113$:
                           5578 ;	genPointerSet
                           5579 ;     genFarPointerSet
   6A04 90 0D 26           5580 	mov	dptr,#_GPIO_enable_irq_file_name_3_3
   6A07 74 2E              5581 	mov	a,#0x2E
   6A09 F0                 5582 	movx	@dptr,a
                           5583 ;	genPointerSet
                           5584 ;     genFarPointerSet
   6A0A 90 0D 27           5585 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0001)
   6A0D 74 2E              5586 	mov	a,#0x2E
   6A0F F0                 5587 	movx	@dptr,a
                           5588 ;	genPointerSet
                           5589 ;     genFarPointerSet
   6A10 90 0D 28           5590 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0002)
   6A13 74 2F              5591 	mov	a,#0x2F
   6A15 F0                 5592 	movx	@dptr,a
                           5593 ;	genPointerSet
                           5594 ;     genFarPointerSet
   6A16 90 0D 29           5595 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0003)
   6A19 74 64              5596 	mov	a,#0x64
   6A1B F0                 5597 	movx	@dptr,a
                           5598 ;	genPointerSet
                           5599 ;     genFarPointerSet
   6A1C 90 0D 2A           5600 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0004)
   6A1F 74 72              5601 	mov	a,#0x72
   6A21 F0                 5602 	movx	@dptr,a
                           5603 ;	genPointerSet
                           5604 ;     genFarPointerSet
   6A22 90 0D 2B           5605 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0005)
   6A25 74 69              5606 	mov	a,#0x69
   6A27 F0                 5607 	movx	@dptr,a
                           5608 ;	genPointerSet
                           5609 ;     genFarPointerSet
   6A28 90 0D 2C           5610 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0006)
   6A2B 74 76              5611 	mov	a,#0x76
   6A2D F0                 5612 	movx	@dptr,a
                           5613 ;	genPointerSet
                           5614 ;     genFarPointerSet
   6A2E 90 0D 2D           5615 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0007)
   6A31 74 65              5616 	mov	a,#0x65
   6A33 F0                 5617 	movx	@dptr,a
                           5618 ;	genPointerSet
                           5619 ;     genFarPointerSet
   6A34 90 0D 2E           5620 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0008)
   6A37 74 72              5621 	mov	a,#0x72
   6A39 F0                 5622 	movx	@dptr,a
                           5623 ;	genPointerSet
                           5624 ;     genFarPointerSet
   6A3A 90 0D 2F           5625 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0009)
   6A3D 74 73              5626 	mov	a,#0x73
   6A3F F0                 5627 	movx	@dptr,a
                           5628 ;	genPointerSet
                           5629 ;     genFarPointerSet
   6A40 90 0D 30           5630 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000a)
   6A43 74 2F              5631 	mov	a,#0x2F
   6A45 F0                 5632 	movx	@dptr,a
                           5633 ;	genPointerSet
                           5634 ;     genFarPointerSet
   6A46 90 0D 31           5635 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000b)
   6A49 74 43              5636 	mov	a,#0x43
   6A4B F0                 5637 	movx	@dptr,a
                           5638 ;	genPointerSet
                           5639 ;     genFarPointerSet
   6A4C 90 0D 32           5640 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000c)
   6A4F 74 6F              5641 	mov	a,#0x6F
   6A51 F0                 5642 	movx	@dptr,a
                           5643 ;	genPointerSet
                           5644 ;     genFarPointerSet
   6A52 90 0D 33           5645 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000d)
   6A55 74 72              5646 	mov	a,#0x72
   6A57 F0                 5647 	movx	@dptr,a
                           5648 ;	genPointerSet
                           5649 ;     genFarPointerSet
   6A58 90 0D 34           5650 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000e)
   6A5B 74 65              5651 	mov	a,#0x65
   6A5D F0                 5652 	movx	@dptr,a
                           5653 ;	genPointerSet
                           5654 ;     genFarPointerSet
   6A5E 90 0D 35           5655 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x000f)
   6A61 74 47              5656 	mov	a,#0x47
   6A63 F0                 5657 	movx	@dptr,a
                           5658 ;	genPointerSet
                           5659 ;     genFarPointerSet
   6A64 90 0D 36           5660 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0010)
   6A67 74 50              5661 	mov	a,#0x50
   6A69 F0                 5662 	movx	@dptr,a
                           5663 ;	genPointerSet
                           5664 ;     genFarPointerSet
   6A6A 90 0D 37           5665 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0011)
   6A6D 74 49              5666 	mov	a,#0x49
   6A6F F0                 5667 	movx	@dptr,a
                           5668 ;	genPointerSet
                           5669 ;     genFarPointerSet
   6A70 90 0D 38           5670 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0012)
   6A73 74 4F              5671 	mov	a,#0x4F
   6A75 F0                 5672 	movx	@dptr,a
                           5673 ;	genPointerSet
                           5674 ;     genFarPointerSet
   6A76 90 0D 39           5675 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0013)
   6A79 74 2F              5676 	mov	a,#0x2F
   6A7B F0                 5677 	movx	@dptr,a
                           5678 ;	genPointerSet
                           5679 ;     genFarPointerSet
   6A7C 90 0D 3A           5680 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0014)
   6A7F 74 63              5681 	mov	a,#0x63
   6A81 F0                 5682 	movx	@dptr,a
                           5683 ;	genPointerSet
                           5684 ;     genFarPointerSet
   6A82 90 0D 3B           5685 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0015)
   6A85 74 6F              5686 	mov	a,#0x6F
   6A87 F0                 5687 	movx	@dptr,a
                           5688 ;	genPointerSet
                           5689 ;     genFarPointerSet
   6A88 90 0D 3C           5690 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0016)
   6A8B 74 72              5691 	mov	a,#0x72
   6A8D F0                 5692 	movx	@dptr,a
                           5693 ;	genPointerSet
                           5694 ;     genFarPointerSet
   6A8E 90 0D 3D           5695 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0017)
   6A91 74 65              5696 	mov	a,#0x65
   6A93 F0                 5697 	movx	@dptr,a
                           5698 ;	genPointerSet
                           5699 ;     genFarPointerSet
   6A94 90 0D 3E           5700 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0018)
   6A97 74 5F              5701 	mov	a,#0x5F
   6A99 F0                 5702 	movx	@dptr,a
                           5703 ;	genPointerSet
                           5704 ;     genFarPointerSet
   6A9A 90 0D 3F           5705 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x0019)
   6A9D 74 67              5706 	mov	a,#0x67
   6A9F F0                 5707 	movx	@dptr,a
                           5708 ;	genPointerSet
                           5709 ;     genFarPointerSet
   6AA0 90 0D 40           5710 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001a)
   6AA3 74 70              5711 	mov	a,#0x70
   6AA5 F0                 5712 	movx	@dptr,a
                           5713 ;	genPointerSet
                           5714 ;     genFarPointerSet
   6AA6 90 0D 41           5715 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001b)
   6AA9 74 69              5716 	mov	a,#0x69
   6AAB F0                 5717 	movx	@dptr,a
                           5718 ;	genPointerSet
                           5719 ;     genFarPointerSet
   6AAC 90 0D 42           5720 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001c)
   6AAF 74 6F              5721 	mov	a,#0x6F
   6AB1 F0                 5722 	movx	@dptr,a
                           5723 ;	genPointerSet
                           5724 ;     genFarPointerSet
   6AB2 90 0D 43           5725 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001d)
   6AB5 74 2E              5726 	mov	a,#0x2E
   6AB7 F0                 5727 	movx	@dptr,a
                           5728 ;	genPointerSet
                           5729 ;     genFarPointerSet
   6AB8 90 0D 44           5730 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001e)
   6ABB 74 63              5731 	mov	a,#0x63
   6ABD F0                 5732 	movx	@dptr,a
                           5733 ;	genPointerSet
                           5734 ;     genFarPointerSet
   6ABE 90 0D 45           5735 	mov	dptr,#(_GPIO_enable_irq_file_name_3_3 + 0x001f)
   6AC1 74 00              5736 	mov	a,#0x00
   6AC3 F0                 5737 	movx	@dptr,a
                           5738 ;	genAssign
   6AC4 90 05 7F           5739 	mov	dptr,#_HAL_assert_fail_PARM_2
   6AC7 74 87              5740 	mov	a,#0x87
   6AC9 F0                 5741 	movx	@dptr,a
   6ACA A3                 5742 	inc	dptr
   6ACB 74 01              5743 	mov	a,#0x01
   6ACD F0                 5744 	movx	@dptr,a
   6ACE A3                 5745 	inc	dptr
   6ACF 74 00              5746 	mov	a,#0x00
   6AD1 F0                 5747 	movx	@dptr,a
   6AD2 A3                 5748 	inc	dptr
   6AD3 74 00              5749 	mov	a,#0x00
   6AD5 F0                 5750 	movx	@dptr,a
                           5751 ;	genCall
   6AD6 75 82 26           5752 	mov	dpl,#_GPIO_enable_irq_file_name_3_3
   6AD9 75 83 0D           5753 	mov	dph,#(_GPIO_enable_irq_file_name_3_3 >> 8)
   6ADC 75 F0 00           5754 	mov	b,#0x00
   6ADF C0 02              5755 	push	ar2
   6AE1 C0 03              5756 	push	ar3
   6AE3 C0 04              5757 	push	ar4
   6AE5 C0 05              5758 	push	ar5
   6AE7 C0 06              5759 	push	ar6
   6AE9 C0 07              5760 	push	ar7
   6AEB 12 1B 3F           5761 	lcall	_HAL_assert_fail
   6AEE D0 07              5762 	pop	ar7
   6AF0 D0 06              5763 	pop	ar6
   6AF2 D0 05              5764 	pop	ar5
   6AF4 D0 04              5765 	pop	ar4
   6AF6 D0 03              5766 	pop	ar3
   6AF8 D0 02              5767 	pop	ar2
   6AFA                    5768 00104$:
                    19CB   5769 	C$core_gpio.c$393$1$1 ==.
                           5770 ;	../drivers/CoreGPIO/core_gpio.c:393: if ( port_id < NB_OF_GPIO )
                           5771 ;	genIfx
   6AFA EF                 5772 	mov	a,r7
                           5773 ;	genIfxJump
   6AFB 70 03              5774 	jnz	00114$
   6AFD 02 6B 48           5775 	ljmp	00108$
   6B00                    5776 00114$:
                    19D1   5777 	C$core_gpio.c$395$2$4 ==.
                           5778 ;	../drivers/CoreGPIO/core_gpio.c:395: cfg_reg_addr += (port_id * 4);
                           5779 ;	genMult
                           5780 ;	genMultOneByte
   6B00 EE                 5781 	mov	a,r6
   6B01 75 F0 04           5782 	mov	b,#0x04
   6B04 A4                 5783 	mul	ab
   6B05 FE                 5784 	mov	r6,a
   6B06 AF F0              5785 	mov	r7,b
                           5786 ;	genCast
   6B08 EF                 5787 	mov	a,r7
   6B09 33                 5788 	rlc	a
   6B0A 95 E0              5789 	subb	a,acc
   6B0C F8                 5790 	mov	r0,a
   6B0D F9                 5791 	mov	r1,a
                           5792 ;	genPlus
   6B0E E5 06              5793 	mov	a,ar6
   6B10 25 02              5794 	add	a,ar2
   6B12 FA                 5795 	mov	r2,a
   6B13 E5 07              5796 	mov	a,ar7
   6B15 35 03              5797 	addc	a,ar3
   6B17 FB                 5798 	mov	r3,a
   6B18 E5 00              5799 	mov	a,ar0
   6B1A 35 04              5800 	addc	a,ar4
   6B1C FC                 5801 	mov	r4,a
   6B1D E5 01              5802 	mov	a,ar1
   6B1F 35 05              5803 	addc	a,ar5
   6B21 FD                 5804 	mov	r5,a
                    19F3   5805 	C$core_gpio.c$396$2$4 ==.
                           5806 ;	../drivers/CoreGPIO/core_gpio.c:396: cfg_value = HW_get_8bit_reg( cfg_reg_addr );
                           5807 ;	genCast
                           5808 ;	genCall
   6B22 8A 82              5809 	mov	dpl,r2
   6B24 8B 83              5810 	mov	dph,r3
   6B26 C0 02              5811 	push	ar2
   6B28 C0 03              5812 	push	ar3
   6B2A 12 1B F0           5813 	lcall	_HW_get_8bit_reg
   6B2D AC 82              5814 	mov	r4,dpl
   6B2F D0 03              5815 	pop	ar3
   6B31 D0 02              5816 	pop	ar2
                           5817 ;	genCast
   6B33 7D 00              5818 	mov	r5,#0x00
   6B35 7E 00              5819 	mov	r6,#0x00
   6B37 7F 00              5820 	mov	r7,#0x00
                    1A0A   5821 	C$core_gpio.c$397$2$4 ==.
                           5822 ;	../drivers/CoreGPIO/core_gpio.c:397: cfg_value |= GPIO_INT_ENABLE_MASK;
                           5823 ;	genOr
   6B39 43 04 08           5824 	orl	ar4,#0x08
                    1A0D   5825 	C$core_gpio.c$398$2$4 ==.
                           5826 ;	../drivers/CoreGPIO/core_gpio.c:398: HW_set_8bit_reg( cfg_reg_addr, cfg_value );
                           5827 ;	genCast
   6B3C 90 05 9C           5828 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6B3F EC                 5829 	mov	a,r4
   6B40 F0                 5830 	movx	@dptr,a
                           5831 ;	genCall
   6B41 8A 82              5832 	mov	dpl,r2
   6B43 8B 83              5833 	mov	dph,r3
   6B45 12 1B E2           5834 	lcall	_HW_set_8bit_reg
   6B48                    5835 00108$:
                    1A19   5836 	C$core_gpio.c$400$2$1 ==.
                    1A19   5837 	XG$GPIO_enable_irq$0$0 ==.
   6B48 22                 5838 	ret
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
   6B49                    5854 _GPIO_disable_irq:
                           5855 ;	genReceive
   6B49 AA F0              5856 	mov	r2,b
   6B4B AB 83              5857 	mov	r3,dph
   6B4D E5 82              5858 	mov	a,dpl
   6B4F 90 0D 47           5859 	mov	dptr,#_GPIO_disable_irq_this_gpio_1_1
   6B52 F0                 5860 	movx	@dptr,a
   6B53 A3                 5861 	inc	dptr
   6B54 EB                 5862 	mov	a,r3
   6B55 F0                 5863 	movx	@dptr,a
   6B56 A3                 5864 	inc	dptr
   6B57 EA                 5865 	mov	a,r2
   6B58 F0                 5866 	movx	@dptr,a
                    1A2A   5867 	C$core_gpio.c$413$1$1 ==.
                           5868 ;	../drivers/CoreGPIO/core_gpio.c:413: uint32_t cfg_reg_addr = this_gpio->base_addr;
                           5869 ;	genAssign
   6B59 90 0D 47           5870 	mov	dptr,#_GPIO_disable_irq_this_gpio_1_1
   6B5C E0                 5871 	movx	a,@dptr
   6B5D FA                 5872 	mov	r2,a
   6B5E A3                 5873 	inc	dptr
   6B5F E0                 5874 	movx	a,@dptr
   6B60 FB                 5875 	mov	r3,a
   6B61 A3                 5876 	inc	dptr
   6B62 E0                 5877 	movx	a,@dptr
   6B63 FC                 5878 	mov	r4,a
                           5879 ;	genPointerGet
                           5880 ;	genGenPointerGet
   6B64 8A 82              5881 	mov	dpl,r2
   6B66 8B 83              5882 	mov	dph,r3
   6B68 8C F0              5883 	mov	b,r4
   6B6A 12 71 69           5884 	lcall	__gptrget
   6B6D FA                 5885 	mov	r2,a
   6B6E A3                 5886 	inc	dptr
   6B6F 12 71 69           5887 	lcall	__gptrget
   6B72 FB                 5888 	mov	r3,a
                           5889 ;	genCast
   6B73 7C 00              5890 	mov	r4,#0x00
   6B75 7D 00              5891 	mov	r5,#0x00
                    1A48   5892 	C$core_gpio.c$415$2$2 ==.
                           5893 ;	../drivers/CoreGPIO/core_gpio.c:415: HAL_ASSERT( port_id < NB_OF_GPIO );
                           5894 ;	genAssign
   6B77 90 0D 46           5895 	mov	dptr,#_GPIO_disable_irq_PARM_2
   6B7A E0                 5896 	movx	a,@dptr
   6B7B FE                 5897 	mov	r6,a
                           5898 ;	genCmpLt
                           5899 ;	genCmp
   6B7C BE 20 00           5900 	cjne	r6,#0x20,00112$
   6B7F                    5901 00112$:
   6B7F E4                 5902 	clr	a
   6B80 33                 5903 	rlc	a
   6B81 FF                 5904 	mov	r7,a
                           5905 ;	genIfx
   6B82 EF                 5906 	mov	a,r7
                           5907 ;	genIfxJump
   6B83 60 03              5908 	jz	00113$
   6B85 02 6C 7E           5909 	ljmp	00104$
   6B88                    5910 00113$:
                           5911 ;	genPointerSet
                           5912 ;     genFarPointerSet
   6B88 90 0D 4A           5913 	mov	dptr,#_GPIO_disable_irq_file_name_3_3
   6B8B 74 2E              5914 	mov	a,#0x2E
   6B8D F0                 5915 	movx	@dptr,a
                           5916 ;	genPointerSet
                           5917 ;     genFarPointerSet
   6B8E 90 0D 4B           5918 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0001)
   6B91 74 2E              5919 	mov	a,#0x2E
   6B93 F0                 5920 	movx	@dptr,a
                           5921 ;	genPointerSet
                           5922 ;     genFarPointerSet
   6B94 90 0D 4C           5923 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0002)
   6B97 74 2F              5924 	mov	a,#0x2F
   6B99 F0                 5925 	movx	@dptr,a
                           5926 ;	genPointerSet
                           5927 ;     genFarPointerSet
   6B9A 90 0D 4D           5928 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0003)
   6B9D 74 64              5929 	mov	a,#0x64
   6B9F F0                 5930 	movx	@dptr,a
                           5931 ;	genPointerSet
                           5932 ;     genFarPointerSet
   6BA0 90 0D 4E           5933 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0004)
   6BA3 74 72              5934 	mov	a,#0x72
   6BA5 F0                 5935 	movx	@dptr,a
                           5936 ;	genPointerSet
                           5937 ;     genFarPointerSet
   6BA6 90 0D 4F           5938 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0005)
   6BA9 74 69              5939 	mov	a,#0x69
   6BAB F0                 5940 	movx	@dptr,a
                           5941 ;	genPointerSet
                           5942 ;     genFarPointerSet
   6BAC 90 0D 50           5943 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0006)
   6BAF 74 76              5944 	mov	a,#0x76
   6BB1 F0                 5945 	movx	@dptr,a
                           5946 ;	genPointerSet
                           5947 ;     genFarPointerSet
   6BB2 90 0D 51           5948 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0007)
   6BB5 74 65              5949 	mov	a,#0x65
   6BB7 F0                 5950 	movx	@dptr,a
                           5951 ;	genPointerSet
                           5952 ;     genFarPointerSet
   6BB8 90 0D 52           5953 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0008)
   6BBB 74 72              5954 	mov	a,#0x72
   6BBD F0                 5955 	movx	@dptr,a
                           5956 ;	genPointerSet
                           5957 ;     genFarPointerSet
   6BBE 90 0D 53           5958 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0009)
   6BC1 74 73              5959 	mov	a,#0x73
   6BC3 F0                 5960 	movx	@dptr,a
                           5961 ;	genPointerSet
                           5962 ;     genFarPointerSet
   6BC4 90 0D 54           5963 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000a)
   6BC7 74 2F              5964 	mov	a,#0x2F
   6BC9 F0                 5965 	movx	@dptr,a
                           5966 ;	genPointerSet
                           5967 ;     genFarPointerSet
   6BCA 90 0D 55           5968 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000b)
   6BCD 74 43              5969 	mov	a,#0x43
   6BCF F0                 5970 	movx	@dptr,a
                           5971 ;	genPointerSet
                           5972 ;     genFarPointerSet
   6BD0 90 0D 56           5973 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000c)
   6BD3 74 6F              5974 	mov	a,#0x6F
   6BD5 F0                 5975 	movx	@dptr,a
                           5976 ;	genPointerSet
                           5977 ;     genFarPointerSet
   6BD6 90 0D 57           5978 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000d)
   6BD9 74 72              5979 	mov	a,#0x72
   6BDB F0                 5980 	movx	@dptr,a
                           5981 ;	genPointerSet
                           5982 ;     genFarPointerSet
   6BDC 90 0D 58           5983 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000e)
   6BDF 74 65              5984 	mov	a,#0x65
   6BE1 F0                 5985 	movx	@dptr,a
                           5986 ;	genPointerSet
                           5987 ;     genFarPointerSet
   6BE2 90 0D 59           5988 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x000f)
   6BE5 74 47              5989 	mov	a,#0x47
   6BE7 F0                 5990 	movx	@dptr,a
                           5991 ;	genPointerSet
                           5992 ;     genFarPointerSet
   6BE8 90 0D 5A           5993 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0010)
   6BEB 74 50              5994 	mov	a,#0x50
   6BED F0                 5995 	movx	@dptr,a
                           5996 ;	genPointerSet
                           5997 ;     genFarPointerSet
   6BEE 90 0D 5B           5998 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0011)
   6BF1 74 49              5999 	mov	a,#0x49
   6BF3 F0                 6000 	movx	@dptr,a
                           6001 ;	genPointerSet
                           6002 ;     genFarPointerSet
   6BF4 90 0D 5C           6003 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0012)
   6BF7 74 4F              6004 	mov	a,#0x4F
   6BF9 F0                 6005 	movx	@dptr,a
                           6006 ;	genPointerSet
                           6007 ;     genFarPointerSet
   6BFA 90 0D 5D           6008 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0013)
   6BFD 74 2F              6009 	mov	a,#0x2F
   6BFF F0                 6010 	movx	@dptr,a
                           6011 ;	genPointerSet
                           6012 ;     genFarPointerSet
   6C00 90 0D 5E           6013 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0014)
   6C03 74 63              6014 	mov	a,#0x63
   6C05 F0                 6015 	movx	@dptr,a
                           6016 ;	genPointerSet
                           6017 ;     genFarPointerSet
   6C06 90 0D 5F           6018 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0015)
   6C09 74 6F              6019 	mov	a,#0x6F
   6C0B F0                 6020 	movx	@dptr,a
                           6021 ;	genPointerSet
                           6022 ;     genFarPointerSet
   6C0C 90 0D 60           6023 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0016)
   6C0F 74 72              6024 	mov	a,#0x72
   6C11 F0                 6025 	movx	@dptr,a
                           6026 ;	genPointerSet
                           6027 ;     genFarPointerSet
   6C12 90 0D 61           6028 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0017)
   6C15 74 65              6029 	mov	a,#0x65
   6C17 F0                 6030 	movx	@dptr,a
                           6031 ;	genPointerSet
                           6032 ;     genFarPointerSet
   6C18 90 0D 62           6033 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0018)
   6C1B 74 5F              6034 	mov	a,#0x5F
   6C1D F0                 6035 	movx	@dptr,a
                           6036 ;	genPointerSet
                           6037 ;     genFarPointerSet
   6C1E 90 0D 63           6038 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x0019)
   6C21 74 67              6039 	mov	a,#0x67
   6C23 F0                 6040 	movx	@dptr,a
                           6041 ;	genPointerSet
                           6042 ;     genFarPointerSet
   6C24 90 0D 64           6043 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001a)
   6C27 74 70              6044 	mov	a,#0x70
   6C29 F0                 6045 	movx	@dptr,a
                           6046 ;	genPointerSet
                           6047 ;     genFarPointerSet
   6C2A 90 0D 65           6048 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001b)
   6C2D 74 69              6049 	mov	a,#0x69
   6C2F F0                 6050 	movx	@dptr,a
                           6051 ;	genPointerSet
                           6052 ;     genFarPointerSet
   6C30 90 0D 66           6053 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001c)
   6C33 74 6F              6054 	mov	a,#0x6F
   6C35 F0                 6055 	movx	@dptr,a
                           6056 ;	genPointerSet
                           6057 ;     genFarPointerSet
   6C36 90 0D 67           6058 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001d)
   6C39 74 2E              6059 	mov	a,#0x2E
   6C3B F0                 6060 	movx	@dptr,a
                           6061 ;	genPointerSet
                           6062 ;     genFarPointerSet
   6C3C 90 0D 68           6063 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001e)
   6C3F 74 63              6064 	mov	a,#0x63
   6C41 F0                 6065 	movx	@dptr,a
                           6066 ;	genPointerSet
                           6067 ;     genFarPointerSet
   6C42 90 0D 69           6068 	mov	dptr,#(_GPIO_disable_irq_file_name_3_3 + 0x001f)
   6C45 74 00              6069 	mov	a,#0x00
   6C47 F0                 6070 	movx	@dptr,a
                           6071 ;	genAssign
   6C48 90 05 7F           6072 	mov	dptr,#_HAL_assert_fail_PARM_2
   6C4B 74 9F              6073 	mov	a,#0x9F
   6C4D F0                 6074 	movx	@dptr,a
   6C4E A3                 6075 	inc	dptr
   6C4F 74 01              6076 	mov	a,#0x01
   6C51 F0                 6077 	movx	@dptr,a
   6C52 A3                 6078 	inc	dptr
   6C53 74 00              6079 	mov	a,#0x00
   6C55 F0                 6080 	movx	@dptr,a
   6C56 A3                 6081 	inc	dptr
   6C57 74 00              6082 	mov	a,#0x00
   6C59 F0                 6083 	movx	@dptr,a
                           6084 ;	genCall
   6C5A 75 82 4A           6085 	mov	dpl,#_GPIO_disable_irq_file_name_3_3
   6C5D 75 83 0D           6086 	mov	dph,#(_GPIO_disable_irq_file_name_3_3 >> 8)
   6C60 75 F0 00           6087 	mov	b,#0x00
   6C63 C0 02              6088 	push	ar2
   6C65 C0 03              6089 	push	ar3
   6C67 C0 04              6090 	push	ar4
   6C69 C0 05              6091 	push	ar5
   6C6B C0 06              6092 	push	ar6
   6C6D C0 07              6093 	push	ar7
   6C6F 12 1B 3F           6094 	lcall	_HAL_assert_fail
   6C72 D0 07              6095 	pop	ar7
   6C74 D0 06              6096 	pop	ar6
   6C76 D0 05              6097 	pop	ar5
   6C78 D0 04              6098 	pop	ar4
   6C7A D0 03              6099 	pop	ar3
   6C7C D0 02              6100 	pop	ar2
   6C7E                    6101 00104$:
                    1B4F   6102 	C$core_gpio.c$417$1$1 ==.
                           6103 ;	../drivers/CoreGPIO/core_gpio.c:417: if ( port_id < NB_OF_GPIO )
                           6104 ;	genIfx
   6C7E EF                 6105 	mov	a,r7
                           6106 ;	genIfxJump
   6C7F 70 03              6107 	jnz	00114$
   6C81 02 6C CC           6108 	ljmp	00108$
   6C84                    6109 00114$:
                    1B55   6110 	C$core_gpio.c$419$2$4 ==.
                           6111 ;	../drivers/CoreGPIO/core_gpio.c:419: cfg_reg_addr += (port_id * 4);
                           6112 ;	genMult
                           6113 ;	genMultOneByte
   6C84 EE                 6114 	mov	a,r6
   6C85 75 F0 04           6115 	mov	b,#0x04
   6C88 A4                 6116 	mul	ab
   6C89 FE                 6117 	mov	r6,a
   6C8A AF F0              6118 	mov	r7,b
                           6119 ;	genCast
   6C8C EF                 6120 	mov	a,r7
   6C8D 33                 6121 	rlc	a
   6C8E 95 E0              6122 	subb	a,acc
   6C90 F8                 6123 	mov	r0,a
   6C91 F9                 6124 	mov	r1,a
                           6125 ;	genPlus
   6C92 E5 06              6126 	mov	a,ar6
   6C94 25 02              6127 	add	a,ar2
   6C96 FA                 6128 	mov	r2,a
   6C97 E5 07              6129 	mov	a,ar7
   6C99 35 03              6130 	addc	a,ar3
   6C9B FB                 6131 	mov	r3,a
   6C9C E5 00              6132 	mov	a,ar0
   6C9E 35 04              6133 	addc	a,ar4
   6CA0 FC                 6134 	mov	r4,a
   6CA1 E5 01              6135 	mov	a,ar1
   6CA3 35 05              6136 	addc	a,ar5
   6CA5 FD                 6137 	mov	r5,a
                    1B77   6138 	C$core_gpio.c$420$2$4 ==.
                           6139 ;	../drivers/CoreGPIO/core_gpio.c:420: cfg_value = HW_get_8bit_reg( cfg_reg_addr );
                           6140 ;	genCast
                           6141 ;	genCall
   6CA6 8A 82              6142 	mov	dpl,r2
   6CA8 8B 83              6143 	mov	dph,r3
   6CAA C0 02              6144 	push	ar2
   6CAC C0 03              6145 	push	ar3
   6CAE 12 1B F0           6146 	lcall	_HW_get_8bit_reg
   6CB1 AC 82              6147 	mov	r4,dpl
   6CB3 D0 03              6148 	pop	ar3
   6CB5 D0 02              6149 	pop	ar2
                           6150 ;	genCast
   6CB7 7D 00              6151 	mov	r5,#0x00
   6CB9 7E 00              6152 	mov	r6,#0x00
   6CBB 7F 00              6153 	mov	r7,#0x00
                    1B8E   6154 	C$core_gpio.c$421$2$4 ==.
                           6155 ;	../drivers/CoreGPIO/core_gpio.c:421: cfg_value &= ~GPIO_INT_ENABLE_MASK;
                           6156 ;	genAnd
   6CBD 53 04 F7           6157 	anl	ar4,#0xF7
                    1B91   6158 	C$core_gpio.c$422$2$4 ==.
                           6159 ;	../drivers/CoreGPIO/core_gpio.c:422: HW_set_8bit_reg( cfg_reg_addr, cfg_value );
                           6160 ;	genCast
   6CC0 90 05 9C           6161 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6CC3 EC                 6162 	mov	a,r4
   6CC4 F0                 6163 	movx	@dptr,a
                           6164 ;	genCall
   6CC5 8A 82              6165 	mov	dpl,r2
   6CC7 8B 83              6166 	mov	dph,r3
   6CC9 12 1B E2           6167 	lcall	_HW_set_8bit_reg
   6CCC                    6168 00108$:
                    1B9D   6169 	C$core_gpio.c$424$2$1 ==.
                    1B9D   6170 	XG$GPIO_disable_irq$0$0 ==.
   6CCC 22                 6171 	ret
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
   6CCD                    6187 _GPIO_clear_irq:
                           6188 ;	genReceive
   6CCD AA F0              6189 	mov	r2,b
   6CCF AB 83              6190 	mov	r3,dph
   6CD1 E5 82              6191 	mov	a,dpl
   6CD3 90 0D 6B           6192 	mov	dptr,#_GPIO_clear_irq_this_gpio_1_1
   6CD6 F0                 6193 	movx	@dptr,a
   6CD7 A3                 6194 	inc	dptr
   6CD8 EB                 6195 	mov	a,r3
   6CD9 F0                 6196 	movx	@dptr,a
   6CDA A3                 6197 	inc	dptr
   6CDB EA                 6198 	mov	a,r2
   6CDC F0                 6199 	movx	@dptr,a
                    1BAE   6200 	C$core_gpio.c$436$1$1 ==.
                           6201 ;	../drivers/CoreGPIO/core_gpio.c:436: uint32_t irq_clr_value = ((uint32_t)1) << ((uint32_t)port_id);
                           6202 ;	genAssign
   6CDD 90 0D 6A           6203 	mov	dptr,#_GPIO_clear_irq_PARM_2
   6CE0 E0                 6204 	movx	a,@dptr
   6CE1 FA                 6205 	mov	r2,a
                           6206 ;	genCast
   6CE2 7B 00              6207 	mov	r3,#0x00
   6CE4 7C 00              6208 	mov	r4,#0x00
   6CE6 7D 00              6209 	mov	r5,#0x00
                           6210 ;	genLeftShift
   6CE8 8A F0              6211 	mov	b,r2
   6CEA 05 F0              6212 	inc	b
   6CEC 75 6A 01           6213 	mov	_GPIO_clear_irq_sloc0_1_0,#0x01
   6CEF 75 6B 00           6214 	mov	(_GPIO_clear_irq_sloc0_1_0 + 1),#0x00
   6CF2 75 6C 00           6215 	mov	(_GPIO_clear_irq_sloc0_1_0 + 2),#0x00
   6CF5 75 6D 00           6216 	mov	(_GPIO_clear_irq_sloc0_1_0 + 3),#0x00
   6CF8 80 15              6217 	sjmp	00117$
   6CFA                    6218 00116$:
   6CFA E5 6A              6219 	mov	a,_GPIO_clear_irq_sloc0_1_0
   6CFC 25 E0              6220 	add	a,acc
   6CFE F5 6A              6221 	mov	_GPIO_clear_irq_sloc0_1_0,a
   6D00 E5 6B              6222 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   6D02 33                 6223 	rlc	a
   6D03 F5 6B              6224 	mov	(_GPIO_clear_irq_sloc0_1_0 + 1),a
   6D05 E5 6C              6225 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   6D07 33                 6226 	rlc	a
   6D08 F5 6C              6227 	mov	(_GPIO_clear_irq_sloc0_1_0 + 2),a
   6D0A E5 6D              6228 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   6D0C 33                 6229 	rlc	a
   6D0D F5 6D              6230 	mov	(_GPIO_clear_irq_sloc0_1_0 + 3),a
   6D0F                    6231 00117$:
   6D0F D5 F0 E8           6232 	djnz	b,00116$
                    1BE3   6233 	C$core_gpio.c$438$1$1 ==.
                           6234 ;	../drivers/CoreGPIO/core_gpio.c:438: switch( this_gpio->apb_bus_width )
                           6235 ;	genAssign
   6D12 90 0D 6B           6236 	mov	dptr,#_GPIO_clear_irq_this_gpio_1_1
   6D15 E0                 6237 	movx	a,@dptr
   6D16 FE                 6238 	mov	r6,a
   6D17 A3                 6239 	inc	dptr
   6D18 E0                 6240 	movx	a,@dptr
   6D19 FF                 6241 	mov	r7,a
   6D1A A3                 6242 	inc	dptr
   6D1B E0                 6243 	movx	a,@dptr
   6D1C F8                 6244 	mov	r0,a
                           6245 ;	genPlus
                           6246 ;	genPlusIncr
   6D1D 74 02              6247 	mov	a,#0x02
   6D1F 25 06              6248 	add	a,ar6
   6D21 F9                 6249 	mov	r1,a
   6D22 74 00              6250 	mov	a,#0x00
   6D24 35 07              6251 	addc	a,ar7
   6D26 FA                 6252 	mov	r2,a
   6D27 88 03              6253 	mov	ar3,r0
                           6254 ;	genPointerGet
                           6255 ;	genGenPointerGet
   6D29 89 82              6256 	mov	dpl,r1
   6D2B 8A 83              6257 	mov	dph,r2
   6D2D 8B F0              6258 	mov	b,r3
   6D2F 12 71 69           6259 	lcall	__gptrget
   6D32 FA                 6260 	mov	r2,a
                           6261 ;	genCmpEq
                           6262 ;	gencjneshort
   6D33 BA 00 03           6263 	cjne	r2,#0x00,00118$
   6D36 02 6D DF           6264 	ljmp	00103$
   6D39                    6265 00118$:
                           6266 ;	genCmpEq
                           6267 ;	gencjneshort
   6D39 BA 01 03           6268 	cjne	r2,#0x01,00119$
   6D3C 02 6D 7C           6269 	ljmp	00102$
   6D3F                    6270 00119$:
                           6271 ;	genCmpEq
                           6272 ;	gencjneshort
   6D3F BA 02 02           6273 	cjne	r2,#0x02,00120$
   6D42 80 03              6274 	sjmp	00121$
   6D44                    6275 00120$:
   6D44 02 6E 9E           6276 	ljmp	00107$
   6D47                    6277 00121$:
                    1C18   6278 	C$core_gpio.c$441$2$2 ==.
                           6279 ;	../drivers/CoreGPIO/core_gpio.c:441: HAL_set_32bit_reg( this_gpio->base_addr, IRQ, irq_clr_value );
                           6280 ;	genPointerGet
                           6281 ;	genGenPointerGet
   6D47 8E 82              6282 	mov	dpl,r6
   6D49 8F 83              6283 	mov	dph,r7
   6D4B 88 F0              6284 	mov	b,r0
   6D4D 12 71 69           6285 	lcall	__gptrget
   6D50 FA                 6286 	mov	r2,a
   6D51 A3                 6287 	inc	dptr
   6D52 12 71 69           6288 	lcall	__gptrget
   6D55 FB                 6289 	mov	r3,a
                           6290 ;	genPlus
                           6291 ;	genPlusIncr
   6D56 74 80              6292 	mov	a,#0x80
   6D58 25 02              6293 	add	a,ar2
   6D5A FA                 6294 	mov	r2,a
   6D5B 74 00              6295 	mov	a,#0x00
   6D5D 35 03              6296 	addc	a,ar3
   6D5F FB                 6297 	mov	r3,a
                           6298 ;	genAssign
   6D60 90 05 9D           6299 	mov	dptr,#_HW_set_32bit_reg_PARM_2
   6D63 E5 6A              6300 	mov	a,_GPIO_clear_irq_sloc0_1_0
   6D65 F0                 6301 	movx	@dptr,a
   6D66 A3                 6302 	inc	dptr
   6D67 E5 6B              6303 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   6D69 F0                 6304 	movx	@dptr,a
   6D6A A3                 6305 	inc	dptr
   6D6B E5 6C              6306 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   6D6D F0                 6307 	movx	@dptr,a
   6D6E A3                 6308 	inc	dptr
   6D6F E5 6D              6309 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   6D71 F0                 6310 	movx	@dptr,a
                           6311 ;	genCall
   6D72 8A 82              6312 	mov	dpl,r2
   6D74 8B 83              6313 	mov	dph,r3
   6D76 12 1B AB           6314 	lcall	_HW_set_32bit_reg
                    1C4A   6315 	C$core_gpio.c$442$2$2 ==.
                           6316 ;	../drivers/CoreGPIO/core_gpio.c:442: break;
   6D79 02 6F 7C           6317 	ljmp	00111$
                    1C4D   6318 	C$core_gpio.c$444$2$2 ==.
                           6319 ;	../drivers/CoreGPIO/core_gpio.c:444: case GPIO_APB_16_BITS_BUS:
   6D7C                    6320 00102$:
                    1C4D   6321 	C$core_gpio.c$445$2$2 ==.
                           6322 ;	../drivers/CoreGPIO/core_gpio.c:445: HAL_set_16bit_reg( this_gpio->base_addr, IRQ0, irq_clr_value );
                           6323 ;	genPointerGet
                           6324 ;	genGenPointerGet
   6D7C 8E 82              6325 	mov	dpl,r6
   6D7E 8F 83              6326 	mov	dph,r7
   6D80 88 F0              6327 	mov	b,r0
   6D82 12 71 69           6328 	lcall	__gptrget
   6D85 FA                 6329 	mov	r2,a
   6D86 A3                 6330 	inc	dptr
   6D87 12 71 69           6331 	lcall	__gptrget
   6D8A FB                 6332 	mov	r3,a
                           6333 ;	genPlus
                           6334 ;	genPlusIncr
   6D8B 74 80              6335 	mov	a,#0x80
   6D8D 25 02              6336 	add	a,ar2
   6D8F FA                 6337 	mov	r2,a
   6D90 74 00              6338 	mov	a,#0x00
   6D92 35 03              6339 	addc	a,ar3
   6D94 FB                 6340 	mov	r3,a
                           6341 ;	genCast
   6D95 90 05 9A           6342 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   6D98 E5 6A              6343 	mov	a,_GPIO_clear_irq_sloc0_1_0
   6D9A F0                 6344 	movx	@dptr,a
   6D9B A3                 6345 	inc	dptr
   6D9C E5 6B              6346 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   6D9E F0                 6347 	movx	@dptr,a
                           6348 ;	genCall
   6D9F 8A 82              6349 	mov	dpl,r2
   6DA1 8B 83              6350 	mov	dph,r3
   6DA3 C0 06              6351 	push	ar6
   6DA5 C0 07              6352 	push	ar7
   6DA7 C0 00              6353 	push	ar0
   6DA9 12 1B C7           6354 	lcall	_HW_set_16bit_reg
   6DAC D0 00              6355 	pop	ar0
   6DAE D0 07              6356 	pop	ar7
   6DB0 D0 06              6357 	pop	ar6
                    1C83   6358 	C$core_gpio.c$446$2$2 ==.
                           6359 ;	../drivers/CoreGPIO/core_gpio.c:446: HAL_set_16bit_reg( this_gpio->base_addr, IRQ1, irq_clr_value >> 16 );
                           6360 ;	genPointerGet
                           6361 ;	genGenPointerGet
   6DB2 8E 82              6362 	mov	dpl,r6
   6DB4 8F 83              6363 	mov	dph,r7
   6DB6 88 F0              6364 	mov	b,r0
   6DB8 12 71 69           6365 	lcall	__gptrget
   6DBB FA                 6366 	mov	r2,a
   6DBC A3                 6367 	inc	dptr
   6DBD 12 71 69           6368 	lcall	__gptrget
   6DC0 FB                 6369 	mov	r3,a
                           6370 ;	genPlus
                           6371 ;	genPlusIncr
   6DC1 74 84              6372 	mov	a,#0x84
   6DC3 25 02              6373 	add	a,ar2
   6DC5 FA                 6374 	mov	r2,a
   6DC6 74 00              6375 	mov	a,#0x00
   6DC8 35 03              6376 	addc	a,ar3
   6DCA FB                 6377 	mov	r3,a
                           6378 ;	genGetWord
   6DCB 90 05 9A           6379 	mov	dptr,#_HW_set_16bit_reg_PARM_2
   6DCE E5 6C              6380 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   6DD0 F0                 6381 	movx	@dptr,a
   6DD1 A3                 6382 	inc	dptr
   6DD2 E5 6D              6383 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   6DD4 F0                 6384 	movx	@dptr,a
                           6385 ;	genCall
   6DD5 8A 82              6386 	mov	dpl,r2
   6DD7 8B 83              6387 	mov	dph,r3
   6DD9 12 1B C7           6388 	lcall	_HW_set_16bit_reg
                    1CAD   6389 	C$core_gpio.c$447$2$2 ==.
                           6390 ;	../drivers/CoreGPIO/core_gpio.c:447: break;
   6DDC 02 6F 7C           6391 	ljmp	00111$
                    1CB0   6392 	C$core_gpio.c$449$2$2 ==.
                           6393 ;	../drivers/CoreGPIO/core_gpio.c:449: case GPIO_APB_8_BITS_BUS:
   6DDF                    6394 00103$:
                    1CB0   6395 	C$core_gpio.c$450$2$2 ==.
                           6396 ;	../drivers/CoreGPIO/core_gpio.c:450: HAL_set_8bit_reg( this_gpio->base_addr, IRQ0, irq_clr_value );
                           6397 ;	genPointerGet
                           6398 ;	genGenPointerGet
   6DDF 8E 82              6399 	mov	dpl,r6
   6DE1 8F 83              6400 	mov	dph,r7
   6DE3 88 F0              6401 	mov	b,r0
   6DE5 12 71 69           6402 	lcall	__gptrget
   6DE8 FA                 6403 	mov	r2,a
   6DE9 A3                 6404 	inc	dptr
   6DEA 12 71 69           6405 	lcall	__gptrget
   6DED FB                 6406 	mov	r3,a
                           6407 ;	genPlus
                           6408 ;	genPlusIncr
   6DEE 74 80              6409 	mov	a,#0x80
   6DF0 25 02              6410 	add	a,ar2
   6DF2 FA                 6411 	mov	r2,a
   6DF3 74 00              6412 	mov	a,#0x00
   6DF5 35 03              6413 	addc	a,ar3
   6DF7 FB                 6414 	mov	r3,a
                           6415 ;	genCast
   6DF8 90 05 9C           6416 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6DFB E5 6A              6417 	mov	a,_GPIO_clear_irq_sloc0_1_0
   6DFD F0                 6418 	movx	@dptr,a
                           6419 ;	genCall
   6DFE 8A 82              6420 	mov	dpl,r2
   6E00 8B 83              6421 	mov	dph,r3
   6E02 C0 06              6422 	push	ar6
   6E04 C0 07              6423 	push	ar7
   6E06 C0 00              6424 	push	ar0
   6E08 12 1B E2           6425 	lcall	_HW_set_8bit_reg
   6E0B D0 00              6426 	pop	ar0
   6E0D D0 07              6427 	pop	ar7
   6E0F D0 06              6428 	pop	ar6
                    1CE2   6429 	C$core_gpio.c$451$2$2 ==.
                           6430 ;	../drivers/CoreGPIO/core_gpio.c:451: HAL_set_8bit_reg( this_gpio->base_addr, IRQ1, irq_clr_value >> 8 );
                           6431 ;	genPointerGet
                           6432 ;	genGenPointerGet
   6E11 8E 82              6433 	mov	dpl,r6
   6E13 8F 83              6434 	mov	dph,r7
   6E15 88 F0              6435 	mov	b,r0
   6E17 12 71 69           6436 	lcall	__gptrget
   6E1A FA                 6437 	mov	r2,a
   6E1B A3                 6438 	inc	dptr
   6E1C 12 71 69           6439 	lcall	__gptrget
   6E1F FB                 6440 	mov	r3,a
                           6441 ;	genPlus
                           6442 ;	genPlusIncr
   6E20 74 84              6443 	mov	a,#0x84
   6E22 25 02              6444 	add	a,ar2
   6E24 FA                 6445 	mov	r2,a
   6E25 74 00              6446 	mov	a,#0x00
   6E27 35 03              6447 	addc	a,ar3
   6E29 FB                 6448 	mov	r3,a
                           6449 ;	genGetByte
   6E2A 90 05 9C           6450 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6E2D E5 6B              6451 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 1)
   6E2F F0                 6452 	movx	@dptr,a
                           6453 ;	genCall
   6E30 8A 82              6454 	mov	dpl,r2
   6E32 8B 83              6455 	mov	dph,r3
   6E34 C0 06              6456 	push	ar6
   6E36 C0 07              6457 	push	ar7
   6E38 C0 00              6458 	push	ar0
   6E3A 12 1B E2           6459 	lcall	_HW_set_8bit_reg
   6E3D D0 00              6460 	pop	ar0
   6E3F D0 07              6461 	pop	ar7
   6E41 D0 06              6462 	pop	ar6
                    1D14   6463 	C$core_gpio.c$452$2$2 ==.
                           6464 ;	../drivers/CoreGPIO/core_gpio.c:452: HAL_set_8bit_reg( this_gpio->base_addr, IRQ2, irq_clr_value >> 16 );
                           6465 ;	genPointerGet
                           6466 ;	genGenPointerGet
   6E43 8E 82              6467 	mov	dpl,r6
   6E45 8F 83              6468 	mov	dph,r7
   6E47 88 F0              6469 	mov	b,r0
   6E49 12 71 69           6470 	lcall	__gptrget
   6E4C FA                 6471 	mov	r2,a
   6E4D A3                 6472 	inc	dptr
   6E4E 12 71 69           6473 	lcall	__gptrget
   6E51 FB                 6474 	mov	r3,a
                           6475 ;	genPlus
                           6476 ;	genPlusIncr
   6E52 74 88              6477 	mov	a,#0x88
   6E54 25 02              6478 	add	a,ar2
   6E56 FA                 6479 	mov	r2,a
   6E57 74 00              6480 	mov	a,#0x00
   6E59 35 03              6481 	addc	a,ar3
   6E5B FB                 6482 	mov	r3,a
                           6483 ;	genGetByte
   6E5C 90 05 9C           6484 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6E5F E5 6C              6485 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 2)
   6E61 F0                 6486 	movx	@dptr,a
                           6487 ;	genCall
   6E62 8A 82              6488 	mov	dpl,r2
   6E64 8B 83              6489 	mov	dph,r3
   6E66 C0 06              6490 	push	ar6
   6E68 C0 07              6491 	push	ar7
   6E6A C0 00              6492 	push	ar0
   6E6C 12 1B E2           6493 	lcall	_HW_set_8bit_reg
   6E6F D0 00              6494 	pop	ar0
   6E71 D0 07              6495 	pop	ar7
   6E73 D0 06              6496 	pop	ar6
                    1D46   6497 	C$core_gpio.c$453$2$2 ==.
                           6498 ;	../drivers/CoreGPIO/core_gpio.c:453: HAL_set_8bit_reg( this_gpio->base_addr, IRQ3, irq_clr_value >> 24 );
                           6499 ;	genPointerGet
                           6500 ;	genGenPointerGet
   6E75 8E 82              6501 	mov	dpl,r6
   6E77 8F 83              6502 	mov	dph,r7
   6E79 88 F0              6503 	mov	b,r0
   6E7B 12 71 69           6504 	lcall	__gptrget
   6E7E FE                 6505 	mov	r6,a
   6E7F A3                 6506 	inc	dptr
   6E80 12 71 69           6507 	lcall	__gptrget
   6E83 FF                 6508 	mov	r7,a
                           6509 ;	genPlus
                           6510 ;	genPlusIncr
   6E84 74 8C              6511 	mov	a,#0x8C
   6E86 25 06              6512 	add	a,ar6
   6E88 FE                 6513 	mov	r6,a
   6E89 74 00              6514 	mov	a,#0x00
   6E8B 35 07              6515 	addc	a,ar7
   6E8D FF                 6516 	mov	r7,a
                           6517 ;	genGetByte
   6E8E 90 05 9C           6518 	mov	dptr,#_HW_set_8bit_reg_PARM_2
   6E91 E5 6D              6519 	mov	a,(_GPIO_clear_irq_sloc0_1_0 + 3)
   6E93 F0                 6520 	movx	@dptr,a
                           6521 ;	genCall
   6E94 8E 82              6522 	mov	dpl,r6
   6E96 8F 83              6523 	mov	dph,r7
   6E98 12 1B E2           6524 	lcall	_HW_set_8bit_reg
                    1D6C   6525 	C$core_gpio.c$454$2$2 ==.
                           6526 ;	../drivers/CoreGPIO/core_gpio.c:454: break;
   6E9B 02 6F 7C           6527 	ljmp	00111$
                    1D6F   6528 	C$core_gpio.c$457$2$2 ==.
                           6529 ;	../drivers/CoreGPIO/core_gpio.c:457: HAL_ASSERT(0);
   6E9E                    6530 00107$:
                           6531 ;	genPointerSet
                           6532 ;     genFarPointerSet
   6E9E 90 0D 6E           6533 	mov	dptr,#_GPIO_clear_irq_file_name_4_4
   6EA1 74 2E              6534 	mov	a,#0x2E
   6EA3 F0                 6535 	movx	@dptr,a
                           6536 ;	genPointerSet
                           6537 ;     genFarPointerSet
   6EA4 90 0D 6F           6538 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0001)
   6EA7 74 2E              6539 	mov	a,#0x2E
   6EA9 F0                 6540 	movx	@dptr,a
                           6541 ;	genPointerSet
                           6542 ;     genFarPointerSet
   6EAA 90 0D 70           6543 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0002)
   6EAD 74 2F              6544 	mov	a,#0x2F
   6EAF F0                 6545 	movx	@dptr,a
                           6546 ;	genPointerSet
                           6547 ;     genFarPointerSet
   6EB0 90 0D 71           6548 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0003)
   6EB3 74 64              6549 	mov	a,#0x64
   6EB5 F0                 6550 	movx	@dptr,a
                           6551 ;	genPointerSet
                           6552 ;     genFarPointerSet
   6EB6 90 0D 72           6553 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0004)
   6EB9 74 72              6554 	mov	a,#0x72
   6EBB F0                 6555 	movx	@dptr,a
                           6556 ;	genPointerSet
                           6557 ;     genFarPointerSet
   6EBC 90 0D 73           6558 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0005)
   6EBF 74 69              6559 	mov	a,#0x69
   6EC1 F0                 6560 	movx	@dptr,a
                           6561 ;	genPointerSet
                           6562 ;     genFarPointerSet
   6EC2 90 0D 74           6563 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0006)
   6EC5 74 76              6564 	mov	a,#0x76
   6EC7 F0                 6565 	movx	@dptr,a
                           6566 ;	genPointerSet
                           6567 ;     genFarPointerSet
   6EC8 90 0D 75           6568 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0007)
   6ECB 74 65              6569 	mov	a,#0x65
   6ECD F0                 6570 	movx	@dptr,a
                           6571 ;	genPointerSet
                           6572 ;     genFarPointerSet
   6ECE 90 0D 76           6573 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0008)
   6ED1 74 72              6574 	mov	a,#0x72
   6ED3 F0                 6575 	movx	@dptr,a
                           6576 ;	genPointerSet
                           6577 ;     genFarPointerSet
   6ED4 90 0D 77           6578 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0009)
   6ED7 74 73              6579 	mov	a,#0x73
   6ED9 F0                 6580 	movx	@dptr,a
                           6581 ;	genPointerSet
                           6582 ;     genFarPointerSet
   6EDA 90 0D 78           6583 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000a)
   6EDD 74 2F              6584 	mov	a,#0x2F
   6EDF F0                 6585 	movx	@dptr,a
                           6586 ;	genPointerSet
                           6587 ;     genFarPointerSet
   6EE0 90 0D 79           6588 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000b)
   6EE3 74 43              6589 	mov	a,#0x43
   6EE5 F0                 6590 	movx	@dptr,a
                           6591 ;	genPointerSet
                           6592 ;     genFarPointerSet
   6EE6 90 0D 7A           6593 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000c)
   6EE9 74 6F              6594 	mov	a,#0x6F
   6EEB F0                 6595 	movx	@dptr,a
                           6596 ;	genPointerSet
                           6597 ;     genFarPointerSet
   6EEC 90 0D 7B           6598 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000d)
   6EEF 74 72              6599 	mov	a,#0x72
   6EF1 F0                 6600 	movx	@dptr,a
                           6601 ;	genPointerSet
                           6602 ;     genFarPointerSet
   6EF2 90 0D 7C           6603 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000e)
   6EF5 74 65              6604 	mov	a,#0x65
   6EF7 F0                 6605 	movx	@dptr,a
                           6606 ;	genPointerSet
                           6607 ;     genFarPointerSet
   6EF8 90 0D 7D           6608 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x000f)
   6EFB 74 47              6609 	mov	a,#0x47
   6EFD F0                 6610 	movx	@dptr,a
                           6611 ;	genPointerSet
                           6612 ;     genFarPointerSet
   6EFE 90 0D 7E           6613 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0010)
   6F01 74 50              6614 	mov	a,#0x50
   6F03 F0                 6615 	movx	@dptr,a
                           6616 ;	genPointerSet
                           6617 ;     genFarPointerSet
   6F04 90 0D 7F           6618 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0011)
   6F07 74 49              6619 	mov	a,#0x49
   6F09 F0                 6620 	movx	@dptr,a
                           6621 ;	genPointerSet
                           6622 ;     genFarPointerSet
   6F0A 90 0D 80           6623 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0012)
   6F0D 74 4F              6624 	mov	a,#0x4F
   6F0F F0                 6625 	movx	@dptr,a
                           6626 ;	genPointerSet
                           6627 ;     genFarPointerSet
   6F10 90 0D 81           6628 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0013)
   6F13 74 2F              6629 	mov	a,#0x2F
   6F15 F0                 6630 	movx	@dptr,a
                           6631 ;	genPointerSet
                           6632 ;     genFarPointerSet
   6F16 90 0D 82           6633 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0014)
   6F19 74 63              6634 	mov	a,#0x63
   6F1B F0                 6635 	movx	@dptr,a
                           6636 ;	genPointerSet
                           6637 ;     genFarPointerSet
   6F1C 90 0D 83           6638 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0015)
   6F1F 74 6F              6639 	mov	a,#0x6F
   6F21 F0                 6640 	movx	@dptr,a
                           6641 ;	genPointerSet
                           6642 ;     genFarPointerSet
   6F22 90 0D 84           6643 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0016)
   6F25 74 72              6644 	mov	a,#0x72
   6F27 F0                 6645 	movx	@dptr,a
                           6646 ;	genPointerSet
                           6647 ;     genFarPointerSet
   6F28 90 0D 85           6648 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0017)
   6F2B 74 65              6649 	mov	a,#0x65
   6F2D F0                 6650 	movx	@dptr,a
                           6651 ;	genPointerSet
                           6652 ;     genFarPointerSet
   6F2E 90 0D 86           6653 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0018)
   6F31 74 5F              6654 	mov	a,#0x5F
   6F33 F0                 6655 	movx	@dptr,a
                           6656 ;	genPointerSet
                           6657 ;     genFarPointerSet
   6F34 90 0D 87           6658 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x0019)
   6F37 74 67              6659 	mov	a,#0x67
   6F39 F0                 6660 	movx	@dptr,a
                           6661 ;	genPointerSet
                           6662 ;     genFarPointerSet
   6F3A 90 0D 88           6663 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001a)
   6F3D 74 70              6664 	mov	a,#0x70
   6F3F F0                 6665 	movx	@dptr,a
                           6666 ;	genPointerSet
                           6667 ;     genFarPointerSet
   6F40 90 0D 89           6668 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001b)
   6F43 74 69              6669 	mov	a,#0x69
   6F45 F0                 6670 	movx	@dptr,a
                           6671 ;	genPointerSet
                           6672 ;     genFarPointerSet
   6F46 90 0D 8A           6673 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001c)
   6F49 74 6F              6674 	mov	a,#0x6F
   6F4B F0                 6675 	movx	@dptr,a
                           6676 ;	genPointerSet
                           6677 ;     genFarPointerSet
   6F4C 90 0D 8B           6678 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001d)
   6F4F 74 2E              6679 	mov	a,#0x2E
   6F51 F0                 6680 	movx	@dptr,a
                           6681 ;	genPointerSet
                           6682 ;     genFarPointerSet
   6F52 90 0D 8C           6683 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001e)
   6F55 74 63              6684 	mov	a,#0x63
   6F57 F0                 6685 	movx	@dptr,a
                           6686 ;	genPointerSet
                           6687 ;     genFarPointerSet
   6F58 90 0D 8D           6688 	mov	dptr,#(_GPIO_clear_irq_file_name_4_4 + 0x001f)
   6F5B 74 00              6689 	mov	a,#0x00
   6F5D F0                 6690 	movx	@dptr,a
                           6691 ;	genAssign
   6F5E 90 05 7F           6692 	mov	dptr,#_HAL_assert_fail_PARM_2
   6F61 74 C9              6693 	mov	a,#0xC9
   6F63 F0                 6694 	movx	@dptr,a
   6F64 A3                 6695 	inc	dptr
   6F65 74 01              6696 	mov	a,#0x01
   6F67 F0                 6697 	movx	@dptr,a
   6F68 A3                 6698 	inc	dptr
   6F69 74 00              6699 	mov	a,#0x00
   6F6B F0                 6700 	movx	@dptr,a
   6F6C A3                 6701 	inc	dptr
   6F6D 74 00              6702 	mov	a,#0x00
   6F6F F0                 6703 	movx	@dptr,a
                           6704 ;	genCall
   6F70 75 82 6E           6705 	mov	dpl,#_GPIO_clear_irq_file_name_4_4
   6F73 75 83 0D           6706 	mov	dph,#(_GPIO_clear_irq_file_name_4_4 >> 8)
   6F76 75 F0 00           6707 	mov	b,#0x00
   6F79 12 1B 3F           6708 	lcall	_HAL_assert_fail
                    1E4D   6709 	C$core_gpio.c$459$1$1 ==.
                           6710 ;	../drivers/CoreGPIO/core_gpio.c:459: }
   6F7C                    6711 00111$:
                    1E4D   6712 	C$core_gpio.c$460$1$1 ==.
                    1E4D   6713 	XG$GPIO_clear_irq$0$0 ==.
   6F7C 22                 6714 	ret
                           6715 	.area CSEG    (CODE)
                           6716 	.area CONST   (CODE)
                           6717 	.area XINIT   (CODE)
                           6718 	.area CABS    (ABS,CODE)
