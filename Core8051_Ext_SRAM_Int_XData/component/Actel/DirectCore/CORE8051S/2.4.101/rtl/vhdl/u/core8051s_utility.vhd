-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- SVN Revision Information:
-- SVN $Revision: 9148 $
-- SVN $Date: 2009-07-22 13:53:33 +0100 (Wed, 22 Jul 2009) $
--
-- ********************************************************************/
-------------------------------------------------------------------------------
-- name:		core8051_utility.vhd
-- function:	Utility package support routines for Core8051 VHDL source
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

package Core8051_utility IS

   --------------------------------------------------------------------
   -- Special Function Register description
   --------------------------------------------------------------------
   -- Register : ID  : RV  : Description
   -- p0       : 80h : FFh : Port 0
   -- sp       : 81h : 07h : Stack Pointer
   -- dpl      : 82h : 00h : Data Pointer Low 0
   -- dph      : 83h : 00h : Data Pointer High 0
   -- dpl1     : 84h : 00h : Data Pointer Low 1
   -- dph1     : 85h : 00h : Data Pointer High 1
   -- pcon     : 87h : 00h : Power Control
   -- tcon     : 88h : 00h : Timer/Counter Control
   -- tmod     : 89h : 00h : Timer Mode Control
   -- tl0      : 8Ah : 00h : Timer 0, low byte
   -- tl1      : 8Bh : 00h : Timer 1, low byte
   -- th0      : 8Ch : 00h : Timer 0, high byte
   -- th1      : 8Dh : 00h : Timer 1, high byte
   -- ckcon    : 8Eh : 01h : Clock Control (Stretch=1)
   -- p1       : 90h : FFh : Port 1
   -- dps      : 92h : 00h : Data Pointer select Register
   -- scon     : 98h : 00h : Serial Port 0, Control Register
   -- sbuf     : 99h : 00h : Serial Port 0, Data Buffer
   -- xwb1     : 9Ah : 00h : External APB write data buffer 1
   -- xwb2     : 9Bh : 00h : External APB write data buffer 2
   -- xwb3     : 9Ch : 00h : External APB write data buffer 3
   -- xrb1     : 9Dh : 00h : External APB read data buffer 1
   -- xrb2     : 9Eh : 00h : External APB read data buffer 2
   -- xrb3     : 9Fh : 00h : External APB read data buffer 3
   -- p2       : A0h : 00h : Port 2
   -- ien0     : A8h : 00h : Interrupt Enable Register 0
   -- ip0      : A9h : 00h : Interrupt Priority Register 0
   -- p3       : B0h : FFh : Port 3
   -- ien1     : B8h : 00h : Interrupt Enable Register 1
   -- ip1      : B9h : 00h : Interrupt Priority Register 1
   -- psw      : D0h : 00h : Program Status Word
   -- acc      : E0h : 00h : Accumulator
   -- b        : F0h : 00h : B Register
   --------------------------------------------------------------------


      -----------------------------------------------------------------
      -- Special Function Register locations
      -----------------------------------------------------------------
      -- 80h - 87h
      constant P0_ID      : STD_LOGIC_VECTOR(6 downto 0) := "0000000";
      constant SP_ID      : STD_LOGIC_VECTOR(6 downto 0) := "0000001";
      constant DPL_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0000010";
      constant DPH_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0000011";
      constant DPL1_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0000100";
      constant DPH1_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0000101";
      constant PCON_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0000111";
      -- 88h - 8Fh
      constant TCON_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0001000";
      constant TMOD_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0001001";
      constant TL0_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0001010";
      constant TL1_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0001011";
      constant TH0_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0001100";
      constant TH1_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0001101";
      constant CKCON_ID   : STD_LOGIC_VECTOR(6 downto 0) := "0001110";
      -- 90h - 97h
      constant P1_ID      : STD_LOGIC_VECTOR(6 downto 0) := "0010000";
      constant DPS_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0010010";
      -- 98h - 9Fh
      constant SCON_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0011000";
      constant SBUF_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0011001";
      constant XWB1_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0011010";
      constant XWB2_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0011011";
      constant XWB3_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0011100";
      constant XRB1_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0011101";
      constant XRB2_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0011110";
      constant XRB3_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0011111";
      -- A0h - A7h
      constant P2_ID      : STD_LOGIC_VECTOR(6 downto 0) := "0100000";
      -- A8h - AFh
      constant IEN0_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0101000";
      constant IP0_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0101001";
      -- B0h - B7h
      constant P3_ID      : STD_LOGIC_VECTOR(6 downto 0) := "0110000";
      -- B8h - BFh
      constant IEN1_ID    : STD_LOGIC_VECTOR(6 downto 0) := "0111000";
      constant IP1_ID     : STD_LOGIC_VECTOR(6 downto 0) := "0111001";
      -- C0h - C7h
      -- C8h - CFh
      -- D0h - D7h
      constant PSW_ID     : STD_LOGIC_VECTOR(6 downto 0) := "1010000";
      -- D8h - DFh
      -- E0h - E7h
      constant ACC_ID     : STD_LOGIC_VECTOR(6 downto 0) := "1100000";
      -- E8h - EFh
      -- F0h - F7h
      constant B_ID       : STD_LOGIC_VECTOR(6 downto 0) := "1110000";
      -----------------------------------------------------------------
      -- Special Function Register reset values
      -----------------------------------------------------------------
      -- 80h - 87h
      constant P0_RV      : STD_LOGIC_VECTOR(7 downto 0) := "11111111";
      constant SP_RV      : STD_LOGIC_VECTOR(7 downto 0) := "00000111";
      constant DPL_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant DPH_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant DPL1_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant DPH1_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant PCON_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -- 88h - 8Fh
      constant TCON_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant TMOD_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant TL0_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant TL1_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant TH0_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant TH1_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant CKCON_RV   : STD_LOGIC_VECTOR(7 downto 0) := "00000001";
      -- 90h - 97h
      constant P1_RV      : STD_LOGIC_VECTOR(7 downto 0) := "11111111";
      constant DPS_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -- 98h - 9Fh
      constant SCON_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant SBUF_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant XWB1_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant XWB2_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant XWB3_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant XRB1_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant XRB2_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant XRB3_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -- A0h - A7h
      constant P2_RV      : STD_LOGIC_VECTOR(7 downto 0) := "11111111";
      -- A8h - AFh
      constant IEN0_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant IP0_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -- B0h - B7h
      constant P3_RV      : STD_LOGIC_VECTOR(7 downto 0) := "11111111";
      -- B8h - BFh
      constant IEN1_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant IP1_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -- C0h - C7h
      -- C8h - CFh
      -- D0h - D7h
      constant PSW_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -- D8h - DFh
      -- E0h - E7h
      constant ACC_RV     : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -- E8h - EFh
      -- F0h - F7h
      constant B_RV       : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -------------------------------------------------------------------
      -- Instruction Mnemonics
      -------------------------------------------------------------------
      -- 00H - 0Fh
      constant NOP          : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      constant AJMP_0       : STD_LOGIC_VECTOR(7 downto 0) := "00000001";
      constant LJMP         : STD_LOGIC_VECTOR(7 downto 0) := "00000010";
      constant RR_A         : STD_LOGIC_VECTOR(7 downto 0) := "00000011";
      constant INC_A        : STD_LOGIC_VECTOR(7 downto 0) := "00000100";
      constant INC_ADDR     : STD_LOGIC_VECTOR(7 downto 0) := "00000101";
      constant INC_IR0      : STD_LOGIC_VECTOR(7 downto 0) := "00000110";
      constant INC_IR1      : STD_LOGIC_VECTOR(7 downto 0) := "00000111";
      constant INC_R0       : STD_LOGIC_VECTOR(7 downto 0) := "00001000";
      constant INC_R1       : STD_LOGIC_VECTOR(7 downto 0) := "00001001";
      constant INC_R2       : STD_LOGIC_VECTOR(7 downto 0) := "00001010";
      constant INC_R3       : STD_LOGIC_VECTOR(7 downto 0) := "00001011";
      constant INC_R4       : STD_LOGIC_VECTOR(7 downto 0) := "00001100";
      constant INC_R5       : STD_LOGIC_VECTOR(7 downto 0) := "00001101";
      constant INC_R6       : STD_LOGIC_VECTOR(7 downto 0) := "00001110";
      constant INC_R7       : STD_LOGIC_VECTOR(7 downto 0) := "00001111";
      -- 10H - 1Fh
      constant JBC_BIT      : STD_LOGIC_VECTOR(7 downto 0) := "00010000";
      constant ACALL_0      : STD_LOGIC_VECTOR(7 downto 0) := "00010001";
      constant LCALL        : STD_LOGIC_VECTOR(7 downto 0) := "00010010";
      constant RRC_A        : STD_LOGIC_VECTOR(7 downto 0) := "00010011";
      constant DEC_A        : STD_LOGIC_VECTOR(7 downto 0) := "00010100";
      constant DEC_ADDR     : STD_LOGIC_VECTOR(7 downto 0) := "00010101";
      constant DEC_IR0      : STD_LOGIC_VECTOR(7 downto 0) := "00010110";
      constant DEC_IR1      : STD_LOGIC_VECTOR(7 downto 0) := "00010111";
      constant DEC_R0       : STD_LOGIC_VECTOR(7 downto 0) := "00011000";
      constant DEC_R1       : STD_LOGIC_VECTOR(7 downto 0) := "00011001";
      constant DEC_R2       : STD_LOGIC_VECTOR(7 downto 0) := "00011010";
      constant DEC_R3       : STD_LOGIC_VECTOR(7 downto 0) := "00011011";
      constant DEC_R4       : STD_LOGIC_VECTOR(7 downto 0) := "00011100";
      constant DEC_R5       : STD_LOGIC_VECTOR(7 downto 0) := "00011101";
      constant DEC_R6       : STD_LOGIC_VECTOR(7 downto 0) := "00011110";
      constant DEC_R7       : STD_LOGIC_VECTOR(7 downto 0) := "00011111";
      -- 20H - 2Fh
      constant JB_BIT       : STD_LOGIC_VECTOR(7 downto 0) := "00100000";
      constant AJMP_1       : STD_LOGIC_VECTOR(7 downto 0) := "00100001";
      constant RET          : STD_LOGIC_VECTOR(7 downto 0) := "00100010";
      constant RL_A         : STD_LOGIC_VECTOR(7 downto 0) := "00100011";
      constant ADD_N        : STD_LOGIC_VECTOR(7 downto 0) := "00100100";
      constant ADD_ADDR     : STD_LOGIC_VECTOR(7 downto 0) := "00100101";
      constant ADD_IR0      : STD_LOGIC_VECTOR(7 downto 0) := "00100110";
      constant ADD_IR1      : STD_LOGIC_VECTOR(7 downto 0) := "00100111";
      constant ADD_R0       : STD_LOGIC_VECTOR(7 downto 0) := "00101000";
      constant ADD_R1       : STD_LOGIC_VECTOR(7 downto 0) := "00101001";
      constant ADD_R2       : STD_LOGIC_VECTOR(7 downto 0) := "00101010";
      constant ADD_R3       : STD_LOGIC_VECTOR(7 downto 0) := "00101011";
      constant ADD_R4       : STD_LOGIC_VECTOR(7 downto 0) := "00101100";
      constant ADD_R5       : STD_LOGIC_VECTOR(7 downto 0) := "00101101";
      constant ADD_R6       : STD_LOGIC_VECTOR(7 downto 0) := "00101110";
      constant ADD_R7       : STD_LOGIC_VECTOR(7 downto 0) := "00101111";
      -- 30H - 3Fh
      constant JNB_BIT      : STD_LOGIC_VECTOR(7 downto 0) := "00110000";
      constant ACALL_1      : STD_LOGIC_VECTOR(7 downto 0) := "00110001";
      constant RETI         : STD_LOGIC_VECTOR(7 downto 0) := "00110010";
      constant RLC_A        : STD_LOGIC_VECTOR(7 downto 0) := "00110011";
      constant ADDC_N       : STD_LOGIC_VECTOR(7 downto 0) := "00110100";
      constant ADDC_ADDR    : STD_LOGIC_VECTOR(7 downto 0) := "00110101";
      constant ADDC_IR0     : STD_LOGIC_VECTOR(7 downto 0) := "00110110";
      constant ADDC_IR1     : STD_LOGIC_VECTOR(7 downto 0) := "00110111";
      constant ADDC_R0      : STD_LOGIC_VECTOR(7 downto 0) := "00111000";
      constant ADDC_R1      : STD_LOGIC_VECTOR(7 downto 0) := "00111001";
      constant ADDC_R2      : STD_LOGIC_VECTOR(7 downto 0) := "00111010";
      constant ADDC_R3      : STD_LOGIC_VECTOR(7 downto 0) := "00111011";
      constant ADDC_R4      : STD_LOGIC_VECTOR(7 downto 0) := "00111100";
      constant ADDC_R5      : STD_LOGIC_VECTOR(7 downto 0) := "00111101";
      constant ADDC_R6      : STD_LOGIC_VECTOR(7 downto 0) := "00111110";
      constant ADDC_R7      : STD_LOGIC_VECTOR(7 downto 0) := "00111111";
      -- 40H - 4Fh
      constant JC           : STD_LOGIC_VECTOR(7 downto 0) := "01000000";
      constant AJMP_2       : STD_LOGIC_VECTOR(7 downto 0) := "01000001";
      constant ORL_ADDR_A   : STD_LOGIC_VECTOR(7 downto 0) := "01000010";
      constant ORL_ADDR_N   : STD_LOGIC_VECTOR(7 downto 0) := "01000011";
      constant ORL_A_N      : STD_LOGIC_VECTOR(7 downto 0) := "01000100";
      constant ORL_A_ADDR   : STD_LOGIC_VECTOR(7 downto 0) := "01000101";
      constant ORL_A_IR0    : STD_LOGIC_VECTOR(7 downto 0) := "01000110";
      constant ORL_A_IR1    : STD_LOGIC_VECTOR(7 downto 0) := "01000111";
      constant ORL_A_R0     : STD_LOGIC_VECTOR(7 downto 0) := "01001000";
      constant ORL_A_R1     : STD_LOGIC_VECTOR(7 downto 0) := "01001001";
      constant ORL_A_R2     : STD_LOGIC_VECTOR(7 downto 0) := "01001010";
      constant ORL_A_R3     : STD_LOGIC_VECTOR(7 downto 0) := "01001011";
      constant ORL_A_R4     : STD_LOGIC_VECTOR(7 downto 0) := "01001100";
      constant ORL_A_R5     : STD_LOGIC_VECTOR(7 downto 0) := "01001101";
      constant ORL_A_R6     : STD_LOGIC_VECTOR(7 downto 0) := "01001110";
      constant ORL_A_R7     : STD_LOGIC_VECTOR(7 downto 0) := "01001111";
      -- 50H - 5Fh
      constant JNC          : STD_LOGIC_VECTOR(7 downto 0) := "01010000";
      constant ACALL_2      : STD_LOGIC_VECTOR(7 downto 0) := "01010001";
      constant ANL_ADDR_A   : STD_LOGIC_VECTOR(7 downto 0) := "01010010";
      constant ANL_ADDR_N   : STD_LOGIC_VECTOR(7 downto 0) := "01010011";
      constant ANL_A_N      : STD_LOGIC_VECTOR(7 downto 0) := "01010100";
      constant ANL_A_ADDR   : STD_LOGIC_VECTOR(7 downto 0) := "01010101";
      constant ANL_A_IR0    : STD_LOGIC_VECTOR(7 downto 0) := "01010110";
      constant ANL_A_IR1    : STD_LOGIC_VECTOR(7 downto 0) := "01010111";
      constant ANL_A_R0     : STD_LOGIC_VECTOR(7 downto 0) := "01011000";
      constant ANL_A_R1     : STD_LOGIC_VECTOR(7 downto 0) := "01011001";
      constant ANL_A_R2     : STD_LOGIC_VECTOR(7 downto 0) := "01011010";
      constant ANL_A_R3     : STD_LOGIC_VECTOR(7 downto 0) := "01011011";
      constant ANL_A_R4     : STD_LOGIC_VECTOR(7 downto 0) := "01011100";
      constant ANL_A_R5     : STD_LOGIC_VECTOR(7 downto 0) := "01011101";
      constant ANL_A_R6     : STD_LOGIC_VECTOR(7 downto 0) := "01011110";
      constant ANL_A_R7     : STD_LOGIC_VECTOR(7 downto 0) := "01011111";
      -- 60H - 6Fh
      constant JZ           : STD_LOGIC_VECTOR(7 downto 0) := "01100000";
      constant AJMP_3       : STD_LOGIC_VECTOR(7 downto 0) := "01100001";
      constant XRL_ADDR_A   : STD_LOGIC_VECTOR(7 downto 0) := "01100010";
      constant XRL_ADDR_N   : STD_LOGIC_VECTOR(7 downto 0) := "01100011";
      constant XRL_A_N      : STD_LOGIC_VECTOR(7 downto 0) := "01100100";
      constant XRL_A_ADDR   : STD_LOGIC_VECTOR(7 downto 0) := "01100101";
      constant XRL_A_IR0    : STD_LOGIC_VECTOR(7 downto 0) := "01100110";
      constant XRL_A_IR1    : STD_LOGIC_VECTOR(7 downto 0) := "01100111";
      constant XRL_A_R0     : STD_LOGIC_VECTOR(7 downto 0) := "01101000";
      constant XRL_A_R1     : STD_LOGIC_VECTOR(7 downto 0) := "01101001";
      constant XRL_A_R2     : STD_LOGIC_VECTOR(7 downto 0) := "01101010";
      constant XRL_A_R3     : STD_LOGIC_VECTOR(7 downto 0) := "01101011";
      constant XRL_A_R4     : STD_LOGIC_VECTOR(7 downto 0) := "01101100";
      constant XRL_A_R5     : STD_LOGIC_VECTOR(7 downto 0) := "01101101";
      constant XRL_A_R6     : STD_LOGIC_VECTOR(7 downto 0) := "01101110";
      constant XRL_A_R7     : STD_LOGIC_VECTOR(7 downto 0) := "01101111";
      -- 70H - 7Fh
      constant JNZ          : STD_LOGIC_VECTOR(7 downto 0) := "01110000";
      constant ACALL_3      : STD_LOGIC_VECTOR(7 downto 0) := "01110001";
      constant ORL_C_BIT    : STD_LOGIC_VECTOR(7 downto 0) := "01110010";
      constant JMP_A_DPTR   : STD_LOGIC_VECTOR(7 downto 0) := "01110011";
      constant MOV_A_N      : STD_LOGIC_VECTOR(7 downto 0) := "01110100";
      constant MOV_ADDR_N   : STD_LOGIC_VECTOR(7 downto 0) := "01110101";
      constant MOV_IR0_N    : STD_LOGIC_VECTOR(7 downto 0) := "01110110";
      constant MOV_IR1_N    : STD_LOGIC_VECTOR(7 downto 0) := "01110111";
      constant MOV_R0_N     : STD_LOGIC_VECTOR(7 downto 0) := "01111000";
      constant MOV_R1_N     : STD_LOGIC_VECTOR(7 downto 0) := "01111001";
      constant MOV_R2_N     : STD_LOGIC_VECTOR(7 downto 0) := "01111010";
      constant MOV_R3_N     : STD_LOGIC_VECTOR(7 downto 0) := "01111011";
      constant MOV_R4_N     : STD_LOGIC_VECTOR(7 downto 0) := "01111100";
      constant MOV_R5_N     : STD_LOGIC_VECTOR(7 downto 0) := "01111101";
      constant MOV_R6_N     : STD_LOGIC_VECTOR(7 downto 0) := "01111110";
      constant MOV_R7_N     : STD_LOGIC_VECTOR(7 downto 0) := "01111111";
      -- 80H - 8Fh
      constant SJMP         : STD_LOGIC_VECTOR(7 downto 0) := "10000000";
      constant AJMP_4       : STD_LOGIC_VECTOR(7 downto 0) := "10000001";
      constant ANL_C_BIT    : STD_LOGIC_VECTOR(7 downto 0) := "10000010";
      constant MOVC_A_PC    : STD_LOGIC_VECTOR(7 downto 0) := "10000011";
      constant DIV_AB       : STD_LOGIC_VECTOR(7 downto 0) := "10000100";
      constant MOV_ADDR_ADDR: STD_LOGIC_VECTOR(7 downto 0) := "10000101";
      constant MOV_ADDR_IR0 : STD_LOGIC_VECTOR(7 downto 0) := "10000110";
      constant MOV_ADDR_IR1 : STD_LOGIC_VECTOR(7 downto 0) := "10000111";
      constant MOV_ADDR_R0  : STD_LOGIC_VECTOR(7 downto 0) := "10001000";
      constant MOV_ADDR_R1  : STD_LOGIC_VECTOR(7 downto 0) := "10001001";
      constant MOV_ADDR_R2  : STD_LOGIC_VECTOR(7 downto 0) := "10001010";
      constant MOV_ADDR_R3  : STD_LOGIC_VECTOR(7 downto 0) := "10001011";
      constant MOV_ADDR_R4  : STD_LOGIC_VECTOR(7 downto 0) := "10001100";
      constant MOV_ADDR_R5  : STD_LOGIC_VECTOR(7 downto 0) := "10001101";
      constant MOV_ADDR_R6  : STD_LOGIC_VECTOR(7 downto 0) := "10001110";
      constant MOV_ADDR_R7  : STD_LOGIC_VECTOR(7 downto 0) := "10001111";
      -- 90H - 9Fh
      constant MOV_DPTR_N   : STD_LOGIC_VECTOR(7 downto 0) := "10010000";
      constant ACALL_4      : STD_LOGIC_VECTOR(7 downto 0) := "10010001";
      constant MOV_BIT_C    : STD_LOGIC_VECTOR(7 downto 0) := "10010010";
      constant MOVC_A_DPTR  : STD_LOGIC_VECTOR(7 downto 0) := "10010011";
      constant SUBB_N       : STD_LOGIC_VECTOR(7 downto 0) := "10010100";
      constant SUBB_ADDR    : STD_LOGIC_VECTOR(7 downto 0) := "10010101";
      constant SUBB_IR0     : STD_LOGIC_VECTOR(7 downto 0) := "10010110";
      constant SUBB_IR1     : STD_LOGIC_VECTOR(7 downto 0) := "10010111";
      constant SUBB_R0      : STD_LOGIC_VECTOR(7 downto 0) := "10011000";
      constant SUBB_R1      : STD_LOGIC_VECTOR(7 downto 0) := "10011001";
      constant SUBB_R2      : STD_LOGIC_VECTOR(7 downto 0) := "10011010";
      constant SUBB_R3      : STD_LOGIC_VECTOR(7 downto 0) := "10011011";
      constant SUBB_R4      : STD_LOGIC_VECTOR(7 downto 0) := "10011100";
      constant SUBB_R5      : STD_LOGIC_VECTOR(7 downto 0) := "10011101";
      constant SUBB_R6      : STD_LOGIC_VECTOR(7 downto 0) := "10011110";
      constant SUBB_R7      : STD_LOGIC_VECTOR(7 downto 0) := "10011111";
      -- A0H - AFh
      constant ORL_C_NBIT   : STD_LOGIC_VECTOR(7 downto 0) := "10100000";
      constant AJMP_5       : STD_LOGIC_VECTOR(7 downto 0) := "10100001";
      constant MOV_C_BIT    : STD_LOGIC_VECTOR(7 downto 0) := "10100010";
      constant INC_DPTR     : STD_LOGIC_VECTOR(7 downto 0) := "10100011";
      constant MUL_AB       : STD_LOGIC_VECTOR(7 downto 0) := "10100100";
      constant UNKNOWN      : STD_LOGIC_VECTOR(7 downto 0) := "10100101";
      constant MOV_IR0_ADDR : STD_LOGIC_VECTOR(7 downto 0) := "10100110";
      constant MOV_IR1_ADDR : STD_LOGIC_VECTOR(7 downto 0) := "10100111";
      constant MOV_R0_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10101000";
      constant MOV_R1_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10101001";
      constant MOV_R2_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10101010";
      constant MOV_R3_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10101011";
      constant MOV_R4_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10101100";
      constant MOV_R5_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10101101";
      constant MOV_R6_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10101110";
      constant MOV_R7_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10101111";
      -- B0H - BFh
      constant ANL_C_NBIT   : STD_LOGIC_VECTOR(7 downto 0) := "10110000";
      constant ACALL_5      : STD_LOGIC_VECTOR(7 downto 0) := "10110001";
      constant CPL_BIT      : STD_LOGIC_VECTOR(7 downto 0) := "10110010";
      constant CPL_C        : STD_LOGIC_VECTOR(7 downto 0) := "10110011";
      constant CJNE_A_N     : STD_LOGIC_VECTOR(7 downto 0) := "10110100";
      constant CJNE_A_ADDR  : STD_LOGIC_VECTOR(7 downto 0) := "10110101";
      constant CJNE_IR0_N   : STD_LOGIC_VECTOR(7 downto 0) := "10110110";
      constant CJNE_IR1_N   : STD_LOGIC_VECTOR(7 downto 0) := "10110111";
      constant CJNE_R0_N    : STD_LOGIC_VECTOR(7 downto 0) := "10111000";
      constant CJNE_R1_N    : STD_LOGIC_VECTOR(7 downto 0) := "10111001";
      constant CJNE_R2_N    : STD_LOGIC_VECTOR(7 downto 0) := "10111010";
      constant CJNE_R3_N    : STD_LOGIC_VECTOR(7 downto 0) := "10111011";
      constant CJNE_R4_N    : STD_LOGIC_VECTOR(7 downto 0) := "10111100";
      constant CJNE_R5_N    : STD_LOGIC_VECTOR(7 downto 0) := "10111101";
      constant CJNE_R6_N    : STD_LOGIC_VECTOR(7 downto 0) := "10111110";
      constant CJNE_R7_N    : STD_LOGIC_VECTOR(7 downto 0) := "10111111";
      -- C0H - CFh
      constant PUSH         : STD_LOGIC_VECTOR(7 downto 0) := "11000000";
      constant AJMP_6       : STD_LOGIC_VECTOR(7 downto 0) := "11000001";
      constant CLR_BIT      : STD_LOGIC_VECTOR(7 downto 0) := "11000010";
      constant CLR_C        : STD_LOGIC_VECTOR(7 downto 0) := "11000011";
      constant SWAP_A       : STD_LOGIC_VECTOR(7 downto 0) := "11000100";
      constant XCH_ADDR     : STD_LOGIC_VECTOR(7 downto 0) := "11000101";
      constant XCH_IR0      : STD_LOGIC_VECTOR(7 downto 0) := "11000110";
      constant XCH_IR1      : STD_LOGIC_VECTOR(7 downto 0) := "11000111";
      constant XCH_R0       : STD_LOGIC_VECTOR(7 downto 0) := "11001000";
      constant XCH_R1       : STD_LOGIC_VECTOR(7 downto 0) := "11001001";
      constant XCH_R2       : STD_LOGIC_VECTOR(7 downto 0) := "11001010";
      constant XCH_R3       : STD_LOGIC_VECTOR(7 downto 0) := "11001011";
      constant XCH_R4       : STD_LOGIC_VECTOR(7 downto 0) := "11001100";
      constant XCH_R5       : STD_LOGIC_VECTOR(7 downto 0) := "11001101";
      constant XCH_R6       : STD_LOGIC_VECTOR(7 downto 0) := "11001110";
      constant XCH_R7       : STD_LOGIC_VECTOR(7 downto 0) := "11001111";
      -- D0H - DFh
      constant POP          : STD_LOGIC_VECTOR(7 downto 0) := "11010000";
      constant ACALL_6      : STD_LOGIC_VECTOR(7 downto 0) := "11010001";
      constant SETB_BIT     : STD_LOGIC_VECTOR(7 downto 0) := "11010010";
      constant SETB_C       : STD_LOGIC_VECTOR(7 downto 0) := "11010011";
      constant DA_A         : STD_LOGIC_VECTOR(7 downto 0) := "11010100";
      constant DJNZ_ADDR    : STD_LOGIC_VECTOR(7 downto 0) := "11010101";
      constant XCHD_IR0     : STD_LOGIC_VECTOR(7 downto 0) := "11010110";
      constant XCHD_IR1     : STD_LOGIC_VECTOR(7 downto 0) := "11010111";
      constant DJNZ_R0      : STD_LOGIC_VECTOR(7 downto 0) := "11011000";
      constant DJNZ_R1      : STD_LOGIC_VECTOR(7 downto 0) := "11011001";
      constant DJNZ_R2      : STD_LOGIC_VECTOR(7 downto 0) := "11011010";
      constant DJNZ_R3      : STD_LOGIC_VECTOR(7 downto 0) := "11011011";
      constant DJNZ_R4      : STD_LOGIC_VECTOR(7 downto 0) := "11011100";
      constant DJNZ_R5      : STD_LOGIC_VECTOR(7 downto 0) := "11011101";
      constant DJNZ_R6      : STD_LOGIC_VECTOR(7 downto 0) := "11011110";
      constant DJNZ_R7      : STD_LOGIC_VECTOR(7 downto 0) := "11011111";
      -- E0H - EFh
      constant MOVX_A_IDPTR : STD_LOGIC_VECTOR(7 downto 0) := "11100000";
      constant AJMP_7       : STD_LOGIC_VECTOR(7 downto 0) := "11100001";
      constant MOVX_A_IR0   : STD_LOGIC_VECTOR(7 downto 0) := "11100010";
      constant MOVX_A_IR1   : STD_LOGIC_VECTOR(7 downto 0) := "11100011";
      constant CLR_A        : STD_LOGIC_VECTOR(7 downto 0) := "11100100";
      constant MOV_A_ADDR   : STD_LOGIC_VECTOR(7 downto 0) := "11100101";
      constant MOV_A_IR0    : STD_LOGIC_VECTOR(7 downto 0) := "11100110";
      constant MOV_A_IR1    : STD_LOGIC_VECTOR(7 downto 0) := "11100111";
      constant MOV_A_R0     : STD_LOGIC_VECTOR(7 downto 0) := "11101000";
      constant MOV_A_R1     : STD_LOGIC_VECTOR(7 downto 0) := "11101001";
      constant MOV_A_R2     : STD_LOGIC_VECTOR(7 downto 0) := "11101010";
      constant MOV_A_R3     : STD_LOGIC_VECTOR(7 downto 0) := "11101011";
      constant MOV_A_R4     : STD_LOGIC_VECTOR(7 downto 0) := "11101100";
      constant MOV_A_R5     : STD_LOGIC_VECTOR(7 downto 0) := "11101101";
      constant MOV_A_R6     : STD_LOGIC_VECTOR(7 downto 0) := "11101110";
      constant MOV_A_R7     : STD_LOGIC_VECTOR(7 downto 0) := "11101111";
      -- F0H - FFh
      constant MOVX_IDPTR_A : STD_LOGIC_VECTOR(7 downto 0) := "11110000";
      constant ACALL_7      : STD_LOGIC_VECTOR(7 downto 0) := "11110001";
      constant MOVX_IR0_A   : STD_LOGIC_VECTOR(7 downto 0) := "11110010";
      constant MOVX_IR1_A   : STD_LOGIC_VECTOR(7 downto 0) := "11110011";
      constant CPL_A        : STD_LOGIC_VECTOR(7 downto 0) := "11110100";
      constant MOV_ADDR_A   : STD_LOGIC_VECTOR(7 downto 0) := "11110101";
      constant MOV_IR0_A    : STD_LOGIC_VECTOR(7 downto 0) := "11110110";
      constant MOV_IR1_A    : STD_LOGIC_VECTOR(7 downto 0) := "11110111";
      constant MOV_R0_A     : STD_LOGIC_VECTOR(7 downto 0) := "11111000";
      constant MOV_R1_A     : STD_LOGIC_VECTOR(7 downto 0) := "11111001";
      constant MOV_R2_A     : STD_LOGIC_VECTOR(7 downto 0) := "11111010";
      constant MOV_R3_A     : STD_LOGIC_VECTOR(7 downto 0) := "11111011";
      constant MOV_R4_A     : STD_LOGIC_VECTOR(7 downto 0) := "11111100";
      constant MOV_R5_A     : STD_LOGIC_VECTOR(7 downto 0) := "11111101";
      constant MOV_R6_A     : STD_LOGIC_VECTOR(7 downto 0) := "11111110";
      constant MOV_R7_A     : STD_LOGIC_VECTOR(7 downto 0) := "11111111";
      -------------------------------------------------------------------
      -- Interrupt reset values
      -------------------------------------------------------------------
      -- Interrupt Vector reset value
      constant VECT_RV       : STD_LOGIC_VECTOR(4 downto 0) := "00000";
      -- In Service Register reset value
      constant IS_REG_RV     : STD_LOGIC_VECTOR(3 downto 0) := "0000";
      -------------------------------------------------------------------
      -- Interrupt Vector locations
      -------------------------------------------------------------------
      -- (0003) external interrupt 0
      constant VECT_E0       : STD_LOGIC_VECTOR(4 downto 0) := "00000";
      -- (000B) timer 0 overflow
      constant VECT_TF0      : STD_LOGIC_VECTOR(4 downto 0) := "00001";
      -- (0013) external interrupt 1
      constant VECT_E1       : STD_LOGIC_VECTOR(4 downto 0) := "00010";
      -- (001B) timer 1 overflow
      constant VECT_TF1      : STD_LOGIC_VECTOR(4 downto 0) := "00011";
      -- (0023) serial channel 0
      constant VECT_SER0     : STD_LOGIC_VECTOR(4 downto 0) := "00100";
      -- (002B) external interrupt 6
      constant VECT_INT6     : STD_LOGIC_VECTOR(4 downto 0) := "00101";
      -- (0043) external interrupt 1
      constant VECT_INT1A    : STD_LOGIC_VECTOR(4 downto 0) := "01000";
      -- (004B) external interrupt 2
      constant VECT_INT2     : STD_LOGIC_VECTOR(4 downto 0) := "01001";
      -- (0053) external interrupt 3
      constant VECT_INT3     : STD_LOGIC_VECTOR(4 downto 0) := "01010";
      -- (005B) external interrupt 4
      constant VECT_INT4     : STD_LOGIC_VECTOR(4 downto 0) := "01011";
      -- (0063) external interrupt 5
      constant VECT_INT5     : STD_LOGIC_VECTOR(4 downto 0) := "01100";
      -- (006B) external interrupt 7
      constant VECT_INT7     : STD_LOGIC_VECTOR(4 downto 0) := "01101";
      -- (0083) external interrupt 0
      constant VECT_INT0A    : STD_LOGIC_VECTOR(4 downto 0) := "10000";
      -------------------------------------------------------------------
      -- Start address location
      -------------------------------------------------------------------
      constant ADDR_RV       : STD_LOGIC_VECTOR(15 downto 0) :=
                               "0000000000000000";
      -------------------------------------------------------------------
      -- RAM & SFR address reset value
      -------------------------------------------------------------------
      constant RAM_SFR_ADDR_RV  : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -------------------------------------------------------------------
      -- Data register reset value
      -------------------------------------------------------------------
      constant DATAREG_RV    : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -------------------------------------------------------------------
      -- High ordered half of address during indirect addressing
      -------------------------------------------------------------------
      constant ADDR_HIGH_RI  : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
      -------------------------------------------------------------------
      --
      -------------------------------------------------------------------
      constant ADDR_HIGH_P2_SEL : INTEGER := 1;

end Core8051_utility;
