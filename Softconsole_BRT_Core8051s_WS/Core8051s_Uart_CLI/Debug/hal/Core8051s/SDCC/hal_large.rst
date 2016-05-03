                              1 ;===============================================================================
                              2 ; Core8051s/SDCC HAL implementation for large memory model.
                              3 ;
                              4 ; SVN $Revision: 638 $
                              5 ; SVN $Date: 2009-02-11 15:02:08 +0000 (Wed, 11 Feb 2009) $
                              6 ;
                              7 ;===============================================================================
                              8 	.module ___hal_large
                              9 	.optsdcc -mmcs51 --model-large
                             10 	
                             11 	.globl _HW_get_32bit_reg
                             12 	.globl _HW_set_32bit_reg
                             13     .globl _HW_set_16bit_reg
                             14     .globl _HW_get_16bit_reg
                             15     .globl _HW_set_8bit_reg
                             16 	.globl _HW_get_8bit_reg
                             17 	.globl _HAL_enable_interrupts
                             18 	.globl _HAL_disable_interrupts
                             19 	.globl _HAL_restore_interrupts
                             20 	
                             21 ;===============================================================================
                    009A     22 	XWB1 = 0x9A
                    009B     23 	XWB2 = 0x9B
                    009C     24 	XWB3 = 0x9C	
                    009D     25 	XRB1 = 0x9D
                    009E     26 	XRB2 = 0x9E
                    009F     27 	XRB3 = 0x9F
                             28 
                             29 	.globl _P
                             30 	.globl _OV
                             31 	.globl _RS0
                             32 	.globl _RS1
                             33 	.globl _F0
                             34 	.globl _AC
                             35 	.globl _CY
                             36 	.globl _B
                             37 	.globl _ACC
                             38 	.globl _PSW
                             39 	.globl _XRB3
                             40 	.globl _XRB2
                             41 	.globl _XRB1
                             42 	.globl _XWB3
                             43 	.globl _XWB2
                             44 	.globl _XWB1
                             45 	.globl _DPS
                             46 	.globl _DPH1
                             47 	.globl _DPL1
                             48 	.globl _DPH
                             49 	.globl _DPL
                             50 	.globl _SP
                             51 	.globl _HW_set_32bit_reg_PARM_2
                             52 	.globl _HW_set_16bit_reg_PARM_2
                             53 	.globl _HW_set_8bit_reg_PARM_2
                             54 	
                             55 ;--------------------------------------------------------
                             56 ; special function registers
                             57 ;--------------------------------------------------------
                             58 	.area RSEG    (DATA)
                             59 ;G$SP$0$0==.
   006E                      60 _SP::
   006E                      61 	.ds 1
                             62 ;G$DPL$0$0==.
   006F                      63 _DPL::
   006F                      64 	.ds 1
                             65 ;G$DPH$0$0==.
   0070                      66 _DPH::
   0070                      67 	.ds 1
                             68 ;G$DPL1$0$0==.
   0071                      69 _DPL1::
   0071                      70 	.ds 1
                             71 ;G$DPH1$0$0==.
   0072                      72 _DPH1::
   0072                      73 	.ds 1
                             74 ;G$DPS$0$0==.
   0073                      75 _DPS::
   0073                      76 	.ds 1
                             77 ;G$XWB1$0$0==.
   0074                      78 _XWB1::
   0074                      79 	.ds 1
                             80 ;G$XWB2$0$0==.
   0075                      81 _XWB2::
   0075                      82 	.ds 1
                             83 ;G$XWB3$0$0==.
   0076                      84 _XWB3::
   0076                      85 	.ds 1
                             86 ;G$XRB1$0$0==.
   0077                      87 _XRB1::
   0077                      88 	.ds 1
                             89 ;G$XRB2$0$0==.
   0078                      90 _XRB2::
   0078                      91 	.ds 1
                             92 ;G$XRB3$0$0==.
   0079                      93 _XRB3::
   0079                      94 	.ds 1
                             95 ;G$PSW$0$0==.
   007A                      96 _PSW::
   007A                      97 	.ds 1
                             98 ;G$ACC$0$0==.
   007B                      99 _ACC::
   007B                     100 	.ds 1
                            101 ;G$B$0$0==.
   007C                     102 _B::
   007C                     103 	.ds 1
                            104 ;--------------------------------------------------------
                            105 ; special function bits
                            106 ;--------------------------------------------------------
                            107 	.area RSEG    (DATA)
                            108 ;G$CY$0$0==.
   007D                     109 _CY::
   007D                     110 	.ds 1
                            111 ;G$AC$0$0==.
   007E                     112 _AC::
   007E                     113 	.ds 1
                            114 ;G$F0$0$0==.
   007F                     115 _F0::
   007F                     116 	.ds 1
                            117 ;G$RS1$0$0==.
   0080                     118 _RS1::
   0080                     119 	.ds 1
                            120 ;G$RS0$0$0==.
   0081                     121 _RS0::
   0081                     122 	.ds 1
                            123 ;G$OV$0$0==.
   0082                     124 _OV::
   0082                     125 	.ds 1
                            126 ;G$P$0$0==.
   0083                     127 _P::
   0083                     128 	.ds 1
                            129 ;--------------------------------------------------------
                            130 ; overlayable register banks
                            131 ;--------------------------------------------------------
                            132 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     133 	.ds 8
                            134 ;--------------------------------------------------------
                            135 ; internal ram data
                            136 ;--------------------------------------------------------
                            137 	.area DSEG    (DATA)
                            138 ;--------------------------------------------------------
                            139 ; overlayable items in internal ram 
                            140 ;--------------------------------------------------------
                            141 	.area OSEG    (OVR,DATA)
                            142 ;--------------------------------------------------------
                            143 ; indirectly addressable internal ram data
                            144 ;--------------------------------------------------------
                            145 	.area ISEG    (DATA)
                            146 ;--------------------------------------------------------
                            147 ; absolute internal ram data
                            148 ;--------------------------------------------------------
                            149 	.area IABS    (ABS,DATA)
                            150 	.area IABS    (ABS,DATA)
                            151 ;--------------------------------------------------------
                            152 ; bit data
                            153 ;--------------------------------------------------------
                            154 	.area BSEG    (BIT)
                            155 ;--------------------------------------------------------
                            156 ; paged external ram data
                            157 ;--------------------------------------------------------
                            158 	.area PSEG    (PAG,XDATA)
                            159 ;--------------------------------------------------------
                            160 ; external ram data
                            161 ;--------------------------------------------------------
                            162 	.area XSEG    (XDATA)
                            163 
   058E                     164 _HW_get_32bit_reg_reg_addr_1_1:
   058E                     165 	.ds 2
                            166 
   0590                     167 _HW_get_32bit_reg_dummy_1_1:
   0590                     168 	.ds 2
                            169 
   0592                     170 _HW_get_32bit_reg_ret_val_1_1:
   0592                     171 	.ds 4
                            172 
   0596                     173 _HW_set_32bit_reg_ret_val_1_1:
   0596                     174 	.ds 4
                            175 
   059A                     176 _HW_set_16bit_reg_PARM_2:
   059A                     177     .ds 2
                            178 
   059C                     179 _HW_set_8bit_reg_PARM_2:
   059C                     180     .ds 1
                            181 
                            182 ;===============================================================================
                            183 ; external ram data
                            184 ;===============================================================================
                            185 	.area XSEG    (XDATA)
                            186 
   059D                     187 _HW_set_32bit_reg_PARM_2:
   059D                     188 	.ds 4
                            189 
                            190 	.area XISEG   (XDATA)
                            191 	.area HOME    (CODE)
                            192 	.area GSINIT0 (CODE)
                            193 	.area GSINIT1 (CODE)
                            194 	.area GSINIT2 (CODE)
                            195 	.area GSINIT3 (CODE)
                            196 	.area GSINIT4 (CODE)
                            197 	.area GSINIT5 (CODE)
                            198 	.area GSINIT  (CODE)
                            199 	.area GSFINAL (CODE)
                            200 	.area CSEG    (CODE)
                            201 
                            202 	.area HOME    (CODE)
                            203 	.area GSINIT  (CODE)
                            204 	.area GSFINAL (CODE)
                            205 	.area GSINIT  (CODE)
                            206 	
                            207 	; has code here
                            208 	
                            209 	.area HOME    (CODE)
                            210 	.area HOME    (CODE)
                            211 
                            212 ;===============================================================================
                            213 ; code
                            214 ;===============================================================================
                            215 	.area CSEG    (CODE)
                            216 
                            217 ;-------------------------------------------------------------------------------
                            218 ; HW_get_32bit_reg
                            219 ;
                    0000    220 	G$HW_get_32bit_reg$0$0 ==.
   1B9F                     221 _HW_get_32bit_reg:
   1B9F E0                  222 	MOVX 	A,@DPTR
   1BA0 F5 82               223 	MOV  	DPL,A
   1BA2 85 9D 83            224 	MOV  	DPH,XRB1
   1BA5 85 9E F0            225 	MOV  	B,XRB2
   1BA8 E5 9F               226 	MOV  	A,XRB3
   1BAA                     227 00101$:
                    000B    228 	XG$HW_get_32bit_reg$0$0 ==.
                            229 
   1BAA 22                  230 	RET  	
                            231 
                            232 ;-------------------------------------------------------------------------------
                            233 ; HW_set_32bit_reg
                            234 ;
                    000C    235 	G$HW_set_32bit_reg$0$0 ==.
   1BAB                     236 _HW_set_32bit_reg:
   1BAB C0 83               237 	PUSH    DPH
   1BAD C0 82               238 	PUSH    DPL	   
   1BAF 90 05 9E            239 	MOV     DPTR,#_HW_set_32bit_reg_PARM_2 + 1
   1BB2 E0                  240 	MOVX	A,@DPTR
   1BB3 F5 9A               241 	MOV     XWB1,A
   1BB5 A3                  242 	INC		DPTR
   1BB6 E0                  243 	MOVX	A,@DPTR
   1BB7 F5 9B               244 	MOV     XWB2,A
   1BB9 A3                  245 	INC		DPTR
   1BBA E0                  246 	MOVX	A,@DPTR
   1BBB F5 9C               247 	MOV     XWB3,A
   1BBD 90 05 9D            248 	MOV     DPTR,#_HW_set_32bit_reg_PARM_2
   1BC0 E0                  249 	MOVX	A,@DPTR
   1BC1 D0 82               250 	POP     DPL
   1BC3 D0 83               251 	POP     DPH
   1BC5 F0                  252 	MOVX 	@DPTR,A
   1BC6                     253 00101$:
                    0027    254 	XG$HW_set_32bit_reg$0$0 ==.
                            255 
   1BC6 22                  256 	RET  	
                            257 
                            258 ;-------------------------------------------------------------------------------
                            259 ; HW_set_16bit_reg
                            260 ;
                    0028    261     G$HW_set_16bit_reg$0$0 ==.
   1BC7                     262 _HW_set_16bit_reg:
   1BC7 C0 83               263     PUSH    DPH
   1BC9 C0 82               264     PUSH    DPL    
   1BCB 90 05 9B            265     MOV     DPTR,#_HW_set_16bit_reg_PARM_2 + 1
   1BCE E0                  266     MOVX    A,@DPTR
   1BCF F5 9A               267     MOV     XWB1,A
   1BD1 90 05 9A            268     MOV     DPTR,#_HW_set_16bit_reg_PARM_2
   1BD4 E0                  269     MOVX    A,@DPTR
   1BD5 D0 82               270     POP     DPL
   1BD7 D0 83               271     POP     DPH
   1BD9 F0                  272     MOVX    @DPTR,A
   1BDA                     273 00101$:
                    003B    274     XG$HW_set_16bit_reg$0$0 ==.
                            275 
   1BDA 22                  276     RET
                            277 
                            278 ;-------------------------------------------------------------------------------
                            279 ; HW_get_16bit_reg
                            280 ;
                    003C    281     G$HW_get_16bit_reg$0$0 ==.
   1BDB                     282 _HW_get_16bit_reg:
   1BDB E0                  283     MOVX    A,@DPTR
   1BDC F5 82               284     MOV     DPL,A
   1BDE 85 9D 83            285     MOV     DPH,XRB1
                            286 
   1BE1                     287 00101$:
                    0042    288     XG$HW_get_16bit_reg$0$0 ==.
                            289 
   1BE1 22                  290     RET
                            291     
                            292 ;-------------------------------------------------------------------------------
                            293 ; HW_set_8bit_reg
                            294 ;
                    0043    295     G$HW_set_8bit_reg$0$0 ==.
   1BE2                     296 _HW_set_8bit_reg:
   1BE2 C0 83               297     PUSH    DPH
   1BE4 C0 82               298     PUSH    DPL    
   1BE6 90 05 9C            299     MOV     DPTR,#_HW_set_8bit_reg_PARM_2
   1BE9 E0                  300     MOVX    A, @DPTR
   1BEA D0 82               301     POP     DPL
   1BEC D0 83               302     POP     DPH
   1BEE F0                  303     MOVX    @DPTR,A
                            304 
   1BEF                     305 00101$:
                    0050    306     XG$HW_set_8bit_reg$0$0 ==.
                            307 
   1BEF 22                  308     RET
                            309 
                            310 ;-------------------------------------------------------------------------------
                            311 ; HW_get_8bit_reg
                            312 ;
                    0051    313     G$HW_get_8bit_reg$0$0 ==.
   1BF0                     314 _HW_get_8bit_reg:
   1BF0 E0                  315     MOVX    A,@DPTR
   1BF1 F5 82               316     MOV     DPL,A
   1BF3                     317 00101$:
                    0054    318     XG$HW_get_8bit_reg$0$0 ==.
   1BF3 22                  319     RET
                            320 
                            321 ;-------------------------------------------------------------------------------
                            322 ; HAL_enable_interrupts
                            323 ;
                    0055    324     G$HAL_enable_interrupts$0$0 ==.
   1BF4                     325 _HAL_enable_interrupts:
   1BF4 75 AF 80            326     MOV     EA,#0x80
                            327 
   1BF7                     328 00101$:
                    0058    329     XG$HAL_enable_interrupts$0$0 ==.
   1BF7 22                  330     RET
                            331 
                            332 ;-------------------------------------------------------------------------------
                            333 ; HAL_disable_interrupts
                            334 ;
                    0059    335     G$HAL_disable_interrupts$0$0 ==.
   1BF8                     336 _HAL_disable_interrupts:
   1BF8 85 AF 82            337     MOV     DPL,EA
   1BFB 75 AF 00            338     MOV     EA,#0x00
   1BFE                     339 00101$:
                    005F    340     XG$HAL_disable_interrupts$0$0 ==.
   1BFE 22                  341     RET
                            342 
                            343 ;-------------------------------------------------------------------------------
                            344 ; HAL_restore_interrupts
                            345 ;
                    0060    346     G$HAL_restore_interrupts$0$0 ==.
   1BFF                     347 _HAL_restore_interrupts:
   1BFF 85 82 AF            348     MOV     EA,DPL
   1C02                     349 00101$:
                    0063    350     XG$HAL_restore_interrupts$0$0 ==.
   1C02 22                  351     RET
                            352 
                            353 ;-------------------------------------------------------------------------------
                            354     
                            355 	.area CSEG    (CODE)
                            356 	.area CONST   (CODE)
                            357 	.area XINIT   (CODE)
                            358 	.area CABS    (ABS,CODE)
                            359 	
