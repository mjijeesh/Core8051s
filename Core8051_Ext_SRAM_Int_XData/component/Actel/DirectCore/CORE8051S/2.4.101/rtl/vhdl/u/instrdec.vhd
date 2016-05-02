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

library IEEE;
use IEEE.std_logic_1164.all;
use work.Core8051_utility.all;

entity instrdec is
    generic (
        -- set to 1 to include multiply, divide and decimal-adjust instruction functionality
        INCL_MUL_DIV_DA : integer := 1;
	    -- set this to number of instruction decodes
	    INSTR_DECNUM	: integer := 119
    );
    port (
        instr       : in  STD_LOGIC_VECTOR(7 downto 0);
        instr_dec   : out STD_LOGIC_VECTOR(0 to INSTR_DECNUM-1)
    );
end instrdec;

--*******************************************************************--

architecture STR of instrdec is

-----------------------------------------------------------------------
-- Signals
-----------------------------------------------------------------------
-- instruction decode vector
signal decvec:			std_logic_vector(0 to INSTR_DECNUM-1);

-----------------------------------------------------------------------

begin

-------------------------- instruction decodes -------------------------------

	-- alu decodes in order used in alu.vhd file ...

	------------------------------------------------------------------------
	decvec(0)	<= '1' when (
		instr=ADD_R0 or instr=ADD_R1 or instr=ADD_R2 or instr=ADD_R3 or
		instr=ADD_R4 or instr=ADD_R5 or instr=ADD_R6 or instr=ADD_R7 or
		instr=ADDC_R0 or instr=ADDC_R1 or instr=ADDC_R2 or instr=ADDC_R3 or
		instr=ADDC_R4 or instr=ADDC_R5 or instr=ADDC_R6 or instr=ADDC_R7 or
		instr=SUBB_R0 or instr=SUBB_R1 or instr=SUBB_R2 or instr=SUBB_R3 or
		instr=SUBB_R4 or instr=SUBB_R5 or instr=SUBB_R6 or instr=SUBB_R7 or
		instr=INC_A or instr=DEC_A
		) else '0';
	------------------------------------------------------------------------
    INCL_MUL_DIV_DA_01 : if (INCL_MUL_DIV_DA = 1) generate
		decvec(1)	<= '1' when (
			instr=ORL_A_R0 or instr=ORL_A_R1 or instr=ORL_A_R2 or
			instr=ORL_A_R3 or instr=ORL_A_R4 or instr=ORL_A_R5 or
			instr=ORL_A_R6 or instr=ORL_A_R7 or instr=ANL_A_R0 or
			instr=ANL_A_R1 or instr=ANL_A_R2 or instr=ANL_A_R3 or
			instr=ANL_A_R4 or instr=ANL_A_R5 or instr=ANL_A_R6 or
			instr=ANL_A_R7 or instr=XRL_A_R0 or instr=XRL_A_R1 or
			instr=XRL_A_R2 or instr=XRL_A_R3 or instr=XRL_A_R4 or
			instr=XRL_A_R5 or instr=XRL_A_R6 or instr=XRL_A_R7 or
			instr=DA_A or instr=CLR_A or instr=CPL_A or instr=RL_A or
			instr=RR_A or instr=RLC_A or instr=RRC_A or instr=SWAP_A
			) else '0';
    end generate;
    INCL_MUL_DIV_DA_00 : if (INCL_MUL_DIV_DA = 0) generate
		decvec(1)	<= '1' when (
			instr=ORL_A_R0 or instr=ORL_A_R1 or instr=ORL_A_R2 or
			instr=ORL_A_R3 or instr=ORL_A_R4 or instr=ORL_A_R5 or
			instr=ORL_A_R6 or instr=ORL_A_R7 or instr=ANL_A_R0 or
			instr=ANL_A_R1 or instr=ANL_A_R2 or instr=ANL_A_R3 or
			instr=ANL_A_R4 or instr=ANL_A_R5 or instr=ANL_A_R6 or
			instr=ANL_A_R7 or instr=XRL_A_R0 or instr=XRL_A_R1 or
			instr=XRL_A_R2 or instr=XRL_A_R3 or instr=XRL_A_R4 or
			instr=XRL_A_R5 or instr=XRL_A_R6 or instr=XRL_A_R7 or
			instr=CLR_A or instr=CPL_A or instr=RL_A or
			instr=RR_A or instr=RLC_A or instr=RRC_A or instr=SWAP_A
			) else '0';
    end generate;
	------------------------------------------------------------------------
	decvec(2)	<= '1' when (
		instr=MOV_A_R0 or instr=MOV_A_R1 or instr=MOV_A_R2 or
		instr=MOV_A_R3 or instr=MOV_A_R4 or instr=MOV_A_R5 or
		instr=MOV_A_R6 or instr=MOV_A_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(3)	<= '1' when (
		instr=ADD_N or instr=ADD_ADDR or instr=ADD_IR0 or
		instr=ADD_IR1 or instr=ADDC_N or instr=ADDC_ADDR or
		instr=ADDC_IR0 or instr=ADDC_IR1 or instr=SUBB_N or
		instr=SUBB_ADDR or instr=SUBB_IR0 or instr=SUBB_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(4)	<= '1' when (
		instr=ANL_A_N or instr=ANL_A_ADDR or instr=ANL_A_IR0 or
		instr=ANL_A_IR1 or instr=ORL_A_N or instr=ORL_A_ADDR or
		instr=ORL_A_IR0 or instr=ORL_A_IR1 or instr=XRL_A_N or
		instr=XRL_A_ADDR or instr=XRL_A_IR0 or instr=XRL_A_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(5)	<= '1' when (
		instr=MOV_A_N
		) else '0';
	------------------------------------------------------------------------
	decvec(6)	<= '1' when (
		instr=MOV_A_ADDR or instr=MOV_A_IR0 or instr=MOV_A_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(7)	<= '1' when (
		instr=XCH_R0 or instr=XCH_R1 or instr=XCH_R2 or instr=XCH_R3 or
		instr=XCH_R4 or instr=XCH_R5 or instr=XCH_R6 or instr=XCH_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(8)	<= '1' when (
		instr=XCHD_IR0 or instr=XCHD_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(9)	<= '1' when (
		instr=XCH_ADDR or instr=XCH_IR0 or instr=XCH_IR1
		) else '0';
	------------------------------------------------------------------------
    INCL_MUL_DIV_DA_11 : if (INCL_MUL_DIV_DA = 1) generate
		decvec(10)	<= '1' when (
			instr=MUL_AB
			) else '0';
    end generate;
    INCL_MUL_DIV_DA_10 : if (INCL_MUL_DIV_DA = 0) generate
		decvec(10)	<= '0';
    end generate;
	------------------------------------------------------------------------
    INCL_MUL_DIV_DA_21 : if (INCL_MUL_DIV_DA = 1) generate
		decvec(11)	<= '1' when (
			instr=DIV_AB
			) else '0';
    end generate;
    INCL_MUL_DIV_DA_20 : if (INCL_MUL_DIV_DA = 0) generate
		decvec(11)	<= '0';
    end generate;
	------------------------------------------------------------------------
	decvec(12)	<= '1' when (
		instr=ADD_N or instr=ADD_IR0 or instr=ADD_IR1 or instr=ADD_R0 or
		instr=ADD_R1 or instr=ADD_R2 or instr=ADD_R3 or instr=ADD_R4 or
		instr=ADD_R5 or instr=ADD_R6 or instr=ADD_R7 or instr=ADDC_R0 or
		instr=ADDC_R1 or instr=ADDC_R2 or instr=ADDC_R3 or instr=ADDC_R4 or
		instr=ADDC_R5 or instr=ADDC_R6 or instr=ADDC_R7 or instr=SUBB_R0 or
		instr=SUBB_R1 or instr=SUBB_R2 or instr=SUBB_R3 or instr=SUBB_R4 or
		instr=SUBB_R5 or instr=SUBB_R6 or instr=SUBB_R7 or
		instr=CJNE_R0_N or instr=CJNE_R1_N or instr=CJNE_R2_N or
		instr=CJNE_R3_N or instr=CJNE_R4_N or instr=CJNE_R5_N or
		instr=CJNE_R6_N or instr=CJNE_R7_N or instr=CJNE_A_N
		) else '0';
	------------------------------------------------------------------------
	decvec(13)	<= '1' when (
		instr=RLC_A or instr=RRC_A
		) else '0';
	------------------------------------------------------------------------
	decvec(14)	<= '1' when (
		instr=ADD_ADDR or instr=ADDC_ADDR or instr=ADDC_IR0 or
		instr=ADDC_IR1 or instr=ADDC_N or instr=SUBB_N or
		instr=SUBB_ADDR or instr=CJNE_A_ADDR or instr=CJNE_IR0_N or
		instr=CJNE_IR1_N or instr=SUBB_IR0 or instr=SUBB_IR1
		) else '0';
	------------------------------------------------------------------------
    INCL_MUL_DIV_DA_31 : if (INCL_MUL_DIV_DA = 1) generate
		decvec(15)	<= '1' when (
			instr=DA_A
			) else '0';
    end generate;
    INCL_MUL_DIV_DA_30 : if (INCL_MUL_DIV_DA = 0) generate
		decvec(15)	<= '0';
    end generate;
	------------------------------------------------------------------------
    INCL_MUL_DIV_DA_40 : if (INCL_MUL_DIV_DA = 1) generate
	decvec(16)	<= '1' when (
		instr=MUL_AB or instr=DIV_AB or instr=CLR_C
		) else '0';
    end generate;
    INCL_MUL_DIV_DA_41 : if (INCL_MUL_DIV_DA = 0) generate
	decvec(16)	<= '1' when (
		instr=CLR_C
		) else '0';
    end generate;
	------------------------------------------------------------------------
	decvec(17)	<= '1' when (
		instr=SETB_C
		) else '0';
	------------------------------------------------------------------------
	decvec(18)	<= '1' when (
		instr=CPL_C
		) else '0';
	------------------------------------------------------------------------
	decvec(19)	<= '1' when (
		instr=ANL_C_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(20)	<= '1' when (
		instr=ANL_C_NBIT
		) else '0';
	------------------------------------------------------------------------
	decvec(21)	<= '1' when (
		instr=ORL_C_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(22)	<= '1' when (
		instr=ORL_C_NBIT
		) else '0';
	------------------------------------------------------------------------
	decvec(23)	<= '1' when (
		instr=MOV_C_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(24)	<= '1' when (
		instr=ADD_N or instr=ADD_IR0 or instr=ADD_IR1 or instr=ADD_R0 or
		instr=ADD_R1 or instr=ADD_R2 or instr=ADD_R3 or instr=ADD_R4 or
		instr=ADD_R5 or instr=ADD_R6 or instr=ADD_R7 or instr=ADDC_N or
		instr=ADDC_IR0 or instr=ADDC_IR1 or instr=ADDC_R0 or
		instr=ADDC_R1 or instr=ADDC_R2 or instr=ADDC_R3 or
		instr=ADDC_R4 or instr=ADDC_R5 or instr=ADDC_R6 or
		instr=ADDC_R7 or instr=SUBB_N or instr=SUBB_IR0 or
		instr=SUBB_IR1 or instr=SUBB_R0 or instr=SUBB_R1 or
		instr=SUBB_R2 or instr=SUBB_R3 or instr=SUBB_R4 or
		instr=SUBB_R5 or instr=SUBB_R6 or instr=SUBB_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(25)	<= '1' when (
		instr=ADD_ADDR or instr=ADDC_ADDR or instr=SUBB_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(26)	<= '1' when (
		instr=CJNE_R0_N or instr=CJNE_R1_N or instr=CJNE_R2_N or
		instr=CJNE_R3_N or instr=CJNE_R4_N or instr=CJNE_R5_N or
		instr=CJNE_R6_N or instr=CJNE_R7_N or instr=XCH_R0 or
		instr=XCH_R1 or instr=XCH_R2 or instr=XCH_R3 or instr=XCH_R4 or
		instr=XCH_R5 or instr=XCH_R6 or instr=XCH_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(27)	<= '1' when (
		instr=CJNE_IR0_N or instr=CJNE_IR1_N
		) else '0';
	------------------------------------------------------------------------
	decvec(28)	<= '1' when (
		instr=CLR_BIT or instr=SETB_BIT or instr=ANL_C_BIT or
		instr=ANL_C_NBIT or instr=ORL_C_BIT or instr=ORL_C_NBIT or
		instr=MOV_C_BIT or instr=MOV_BIT_C or instr=CPL_BIT or
		instr=JBC_BIT or instr=JB_BIT or instr=JNB_BIT or
		instr=ANL_ADDR_N or instr=ORL_ADDR_N or instr=XRL_ADDR_N or
		instr=XCH_ADDR or instr=XCH_IR0 or instr=XCH_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(29)	<= '1' when (
		instr=ADD_N or instr=ADDC_N or instr=SUBB_N or instr=ANL_A_N or
		instr=ORL_A_N or instr=XRL_A_N or instr=CJNE_A_N or
		instr=CJNE_R0_N or instr=CJNE_R1_N or instr=CJNE_R2_N or
		instr=CJNE_R3_N or instr=CJNE_R4_N or instr=CJNE_R5_N or
		instr=CJNE_R6_N or instr=CJNE_R7_N
		) else '0';
	------------------------------------------------------------------------
	decvec(30)	<= '1' when (
		instr=ANL_ADDR_N or instr=ORL_ADDR_N or instr=XRL_ADDR_N
		) else '0';
	------------------------------------------------------------------------
	decvec(31)	<= '1' when (
		instr=ANL_ADDR_A or instr=ORL_ADDR_A or instr=XRL_ADDR_A or
		instr=CJNE_A_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(32)	<= '1' when (
		instr=ANL_ADDR_N or instr=ORL_ADDR_N or instr=XRL_ADDR_N or
		instr=CJNE_R0_N or instr=CJNE_R1_N or instr=CJNE_R2_N or
		instr=CJNE_R3_N or instr=CJNE_R4_N or instr=CJNE_R5_N or
		instr=CJNE_R6_N or instr=CJNE_R7_N or instr=CJNE_IR0_N or
		instr=CJNE_IR1_N
		) else '0';
	------------------------------------------------------------------------
	decvec(33)	<= '1' when (
		instr=ADD_N or instr=ADDC_N or instr=SUBB_N or instr=ANL_A_N or
		instr=ORL_A_N or instr=XRL_A_N or instr=ANL_ADDR_N or
		instr=ORL_ADDR_N or instr=XRL_ADDR_N or instr=CJNE_A_N or
		instr=CJNE_R0_N or instr=CJNE_R1_N or instr=CJNE_R2_N or
		instr=CJNE_R3_N or instr=CJNE_R4_N or instr=CJNE_R5_N or
		instr=CJNE_R6_N or instr=CJNE_R7_N
		) else '0';
	------------------------------------------------------------------------
	decvec(34)	<= '1' when (
		instr=ADD_N or instr=ADD_ADDR or instr=ADD_IR0 or
		instr=ADD_IR1 or instr=ADD_R0 or instr=ADD_R1 or
		instr=ADD_R2 or instr=ADD_R3 or instr=ADD_R4 or instr=ADD_R5 or
		instr=ADD_R6 or instr=ADD_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(35)	<= '1' when (
		instr=ADDC_N or instr=ADDC_ADDR or instr=ADDC_IR0 or
		instr=ADDC_IR1 or instr=ADDC_R0 or instr=ADDC_R1 or
		instr=ADDC_R2 or instr=ADDC_R3 or instr=ADDC_R4 or
		instr=ADDC_R5 or instr=ADDC_R6 or instr=ADDC_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(36)	<= '1' when (
		instr=SUBB_N or instr=SUBB_ADDR or instr=SUBB_IR0 or
		instr=SUBB_IR1 or instr=SUBB_R0 or instr=SUBB_R1 or
		instr=SUBB_R2 or instr=SUBB_R3 or instr=SUBB_R4 or
		instr=SUBB_R5 or instr=SUBB_R6 or instr=SUBB_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(37)	<= '1' when (
		instr=CJNE_A_N or instr=CJNE_A_ADDR or instr=CJNE_R0_N or
		instr=CJNE_R1_N or instr=CJNE_R2_N or instr=CJNE_R3_N or
		instr=CJNE_R4_N or instr=CJNE_R5_N or instr=CJNE_R6_N or
		instr=CJNE_R7_N
		) else '0';
	------------------------------------------------------------------------
	decvec(38)	<= '1' when (
		instr=CJNE_IR0_N or instr=CJNE_IR1_N
		) else '0';
	------------------------------------------------------------------------
	decvec(39)	<= '1' when (
		instr=INC_ADDR or instr=INC_IR0 or instr=INC_IR1 or
		instr=INC_R0 or instr=INC_R1 or instr=INC_R2 or instr=INC_R3 or
		instr=INC_R4 or instr=INC_R5 or instr=INC_R6 or instr=INC_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(40)	<= '1' when (
		instr=INC_A
		) else '0';
	------------------------------------------------------------------------
	decvec(41)	<= '1' when (
		instr=DEC_ADDR or instr=DEC_IR0 or instr=DEC_IR1 or
		instr=DEC_R0 or instr=DEC_R1 or instr=DEC_R2 or instr=DEC_R3 or
		instr=DEC_R4 or instr=DEC_R5 or instr=DEC_R6 or instr=DEC_R7 or
		instr=DJNZ_R0 or instr=DJNZ_R1 or instr=DJNZ_R2 or
		instr=DJNZ_R3 or instr=DJNZ_R4 or instr=DJNZ_R5 or
		instr=DJNZ_R6 or instr=DJNZ_R7 or instr=DJNZ_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(42)	<= '1' when (
		instr=DEC_A
		) else '0';
	------------------------------------------------------------------------
	decvec(43)	<= '1' when (
		instr=ORL_ADDR_A or instr=ORL_ADDR_N or instr=ORL_A_N or
		instr=ORL_A_ADDR or instr=ORL_A_IR0 or instr=ORL_A_IR1 or
		instr=ORL_A_R0 or instr=ORL_A_R1 or instr=ORL_A_R2 or
		instr=ORL_A_R3 or instr=ORL_A_R4 or instr=ORL_A_R5 or
		instr=ORL_A_R6 or instr=ORL_A_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(44)	<= '1' when (
		instr=XRL_ADDR_A or instr=XRL_ADDR_N or instr=XRL_A_N or
		instr=XRL_A_ADDR or instr=XRL_A_IR0 or instr=XRL_A_IR1 or
		instr=XRL_A_R0 or instr=XRL_A_R1 or instr=XRL_A_R2 or
		instr=XRL_A_R3 or instr=XRL_A_R4 or instr=XRL_A_R5 or
		instr=XRL_A_R6 or instr=XRL_A_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(45)	<= '1' when (
		instr=ANL_ADDR_A or instr=ANL_ADDR_N or instr=ANL_A_N or
		instr=ANL_A_ADDR or instr=ANL_A_IR0 or instr=ANL_A_IR1 or
		instr=ANL_A_R0 or instr=ANL_A_R1 or instr=ANL_A_R2 or
		instr=ANL_A_R3 or instr=ANL_A_R4 or instr=ANL_A_R5 or
		instr=ANL_A_R6 or instr=ANL_A_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(46)	<= '1' when (
		instr=CLR_A
		) else '0';
	------------------------------------------------------------------------
	decvec(47)	<= '1' when (
		instr=CPL_A
		) else '0';
	------------------------------------------------------------------------
	decvec(48)	<= '1' when (
		instr=RL_A
		) else '0';
	------------------------------------------------------------------------
	decvec(49)	<= '1' when (
		instr=RR_A
		) else '0';
	------------------------------------------------------------------------
	decvec(50)	<= '1' when (
		instr=RLC_A
		) else '0';
	------------------------------------------------------------------------
	decvec(51)	<= '1' when (
		instr=RRC_A
		) else '0';
	------------------------------------------------------------------------
	decvec(52)	<= '1' when (
		instr=SWAP_A
		) else '0';
	------------------------------------------------------------------------
	decvec(53)	<= '1' when (
		instr=DJNZ_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(54)	<= '1' when (
		instr=CLR_BIT or instr=SETB_BIT or instr=ANL_C_BIT or
		instr=ANL_C_NBIT or instr=ORL_C_BIT or instr=ORL_C_NBIT or
		instr=MOV_C_BIT or instr=MOV_BIT_C or instr=CPL_BIT or
		instr=JBC_BIT or instr=JB_BIT or instr=JNB_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(55)	<= '1' when (
		instr=CLR_BIT or instr=SETB_BIT or instr=CPL_BIT or instr=MOV_BIT_C
		) else '0';
	------------------------------------------------------------------------
	decvec(56)	<= '1' when (
		instr=SETB_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(57)	<= '1' when (
		instr=CLR_BIT or instr=JBC_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(58)	<= '1' when (
		instr=CPL_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(59)	<= '1' when (
		instr=MOV_BIT_C
		) else '0';
	------------------------------------------------------------------------
	decvec(60)	<= '1' when (
		instr=CLR_BIT or instr=SETB_BIT or instr=MOV_BIT_C or
		instr=CPL_BIT or instr=JBC_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(61)	<= '1' when (
		instr=ANL_ADDR_A or instr=ANL_ADDR_N or instr=ORL_ADDR_A or
		instr=ORL_ADDR_N or instr=XRL_ADDR_A or instr=XRL_ADDR_N
		) else '0';
	------------------------------------------------------------------------

	-- isr decodes in order used in isr.vhd file ...

	------------------------------------------------------------------------
	decvec(62)	<= '1' when (
		instr=RETI
		) else '0';
	------------------------------------------------------------------------
	decvec(63)	<= '1' when (
		instr=INC_ADDR or instr=DEC_ADDR or instr=ANL_ADDR_A or
		instr=ANL_ADDR_N or instr=ORL_ADDR_A or instr=ORL_ADDR_N or
		instr=XRL_ADDR_A or instr=XRL_ADDR_N or instr=MOV_ADDR_A or
		instr=MOV_ADDR_R0 or instr=MOV_ADDR_R1 or instr=MOV_ADDR_R2 or
		instr=MOV_ADDR_R3 or instr=MOV_ADDR_R4 or instr=MOV_ADDR_R5 or
		instr=MOV_ADDR_R6 or instr=MOV_ADDR_R7 or instr=MOV_ADDR_ADDR or
		instr=MOV_ADDR_IR0 or instr=MOV_ADDR_IR1 or instr=MOV_ADDR_N or
		instr=POP or instr=CLR_BIT or instr=SETB_BIT or instr=CPL_BIT or
		instr=MOV_BIT_C or instr=JBC_BIT or instr=DJNZ_ADDR
		) else '0';
	------------------------------------------------------------------------

	-- cpu decodes in order used in cpu.vhd file ...

	------------------------------------------------------------------------
	decvec(64)	<= '1' when (
		instr=MOVX_A_IR0 or instr=MOVX_A_IR1 or instr=MOVX_A_IDPTR or
		instr=MOVX_IDPTR_A or instr=MOVX_IR0_A or instr=MOVX_IR1_A
		) else '0';
	------------------------------------------------------------------------

	-- memctrl decodes in order used in memctrl.vhd file ...

	------------------------------------------------------------------------
	decvec(65)	<= '1' when (
		instr=SJMP
		) else '0';
	------------------------------------------------------------------------
	decvec(66)	<= '1' when (
		instr=JZ
		) else '0';
	------------------------------------------------------------------------
	decvec(67)	<= '1' when (
		instr=JNZ
		) else '0';
	------------------------------------------------------------------------
	decvec(68)	<= '1' when (
		instr=JC
		) else '0';
	------------------------------------------------------------------------
	decvec(69)	<= '1' when (
		instr=JNC
		) else '0';
	------------------------------------------------------------------------
	decvec(70)	<= '1' when (
		instr=DJNZ_R0 or instr=DJNZ_R1 or instr=DJNZ_R2 or instr=DJNZ_R3 or
		instr=DJNZ_R4 or instr=DJNZ_R5 or instr=DJNZ_R6 or instr=DJNZ_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(71)	<= '1' when (
		instr=CJNE_A_ADDR or instr=CJNE_A_N or instr=CJNE_R0_N or
		instr=CJNE_R1_N or instr=CJNE_R2_N or instr=CJNE_R3_N or
		instr=CJNE_R4_N or instr=CJNE_R5_N or instr=CJNE_R6_N or
		instr=CJNE_R7_N or instr=CJNE_IR0_N or instr=CJNE_IR1_N or
		instr=DJNZ_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(72)	<= '1' when (
		instr=JNB_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(73)	<= '1' when (
		instr=JB_BIT or instr=JBC_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(74)	<= '1' when (
		instr=INC_DPTR
		) else '0';
	------------------------------------------------------------------------
	decvec(75)	<= '1' when (
		instr=JMP_A_DPTR
		) else '0';
	------------------------------------------------------------------------
	decvec(76)	<= '1' when (
		instr=MOV_DPTR_N
		) else '0';
	------------------------------------------------------------------------
	decvec(77)	<= '1' when (
		instr=ACALL_0 or instr=ACALL_1 or instr=ACALL_2 or instr=ACALL_3 or
		instr=ACALL_4 or instr=ACALL_5 or instr=ACALL_6 or instr=ACALL_7 or
		instr=AJMP_0 or instr=AJMP_1 or instr=AJMP_2 or instr=AJMP_3 or
		instr=AJMP_4 or instr=AJMP_5 or instr=AJMP_6 or instr=AJMP_7
		) else '0';
	------------------------------------------------------------------------
	decvec(78)	<= '1' when (
		instr=LCALL or instr=LJMP
		) else '0';
	------------------------------------------------------------------------
	decvec(79)	<= '1' when (
		instr=RET or instr=RETI
		) else '0';
	------------------------------------------------------------------------
	decvec(80)	<= '1' when (
		instr=MOVC_A_PC
		) else '0';
	------------------------------------------------------------------------
	decvec(81)	<= '1' when (
		instr=MOVC_A_DPTR
		) else '0';
	------------------------------------------------------------------------
	decvec(82)	<= '1' when (
		instr=MOVX_A_IDPTR
		) else '0';
	------------------------------------------------------------------------
	decvec(83)	<= '1' when (
		instr=MOVX_IDPTR_A
		) else '0';
	------------------------------------------------------------------------
	decvec(84)	<= '1' when (
		instr=MOVX_A_IR0 or instr=MOVX_A_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(85)	<= '1' when (
		instr=MOVX_IR0_A or instr=MOVX_IR1_A
		) else '0';
	------------------------------------------------------------------------
	decvec(86)	<= '1' when (
		instr=AJMP_0 or instr=AJMP_1 or instr=AJMP_2 or instr=AJMP_3 or
		instr=AJMP_4 or instr=AJMP_5 or instr=AJMP_6 or instr=AJMP_7
		) else '0';
	------------------------------------------------------------------------
	decvec(87)	<= '1' when (
		instr=RET or instr=RETI or instr=LJMP
		) else '0';
	------------------------------------------------------------------------
	decvec(88)	<= '1' when (
		instr=ACALL_0 or instr=ACALL_1 or instr=ACALL_2 or instr=ACALL_3 or
		instr=ACALL_4 or instr=ACALL_5 or instr=ACALL_6 or instr=ACALL_7 or
		instr=LCALL
		) else '0';
	------------------------------------------------------------------------
	decvec(89)	<= '1' when (
		instr=SJMP or instr=JZ or instr=JNZ or instr=JC or instr=JNC or
		instr=DJNZ_R0 or instr=DJNZ_R1 or instr=DJNZ_R2 or instr=DJNZ_R3 or
		instr=DJNZ_R4 or instr=DJNZ_R5 or instr=DJNZ_R6 or instr=DJNZ_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(90)	<= '1' when (
		instr=JB_BIT or instr=JNB_BIT or instr=CJNE_A_ADDR or
		instr=CJNE_A_N or instr=CJNE_R0_N or instr=CJNE_R1_N or
		instr=CJNE_R2_N or instr=CJNE_R3_N or instr=CJNE_R4_N or
		instr=CJNE_R5_N or instr=CJNE_R6_N or instr=CJNE_R7_N or
		instr=CJNE_IR0_N or instr=CJNE_IR1_N or instr=DJNZ_ADDR or
		instr=JBC_BIT
		) else '0';
	------------------------------------------------------------------------
	decvec(91)	<= '1' when (
		instr=MOVX_A_IR0 or instr=MOVX_A_IR1 or instr=MOVX_A_IDPTR
		) else '0';
	------------------------------------------------------------------------
	decvec(92)	<= '1' when (
		instr=MOVC_A_PC or instr=MOVC_A_DPTR
		) else '0';
	------------------------------------------------------------------------
	decvec(93)	<= '1' when (
		instr=MOVX_IR0_A or instr=MOVX_IR1_A or instr=MOVX_IDPTR_A
		) else '0';
	------------------------------------------------------------------------

	-- ramsfrctrl decodes in order used in ramsfrctrl.vhd file ...

	------------------------------------------------------------------------
	decvec(94)	<= '1' when (
		instr=ADD_IR0 or instr=ADD_IR1 or instr=ADDC_IR0 or
		instr=ADDC_IR1 or instr=INC_IR0 or instr=INC_IR1 or
		instr=DEC_IR0 or instr=DEC_IR1 or instr=ORL_A_IR0 or
		instr=ORL_A_IR1 or instr=ANL_A_IR0 or instr=ANL_A_IR1 or
		instr=XRL_A_IR0 or instr=XRL_A_IR1 or instr=CJNE_IR0_N or
		instr=CJNE_IR1_N or instr=MOV_A_IR0 or instr=MOV_A_IR1 or
		instr=MOV_ADDR_IR0 or instr=MOV_ADDR_IR1 or instr=SUBB_IR0 or
		instr=SUBB_IR1 or instr=XCH_IR0 or instr=XCH_IR1 or
		instr=XCHD_IR0 or instr=XCHD_IR1 or instr=MOVX_A_IR0 or
		instr=MOVX_A_IR1 or instr=MOVX_IR0_A or instr=MOVX_IR1_A or
		instr=RET or instr=RETI
		) else '0';
	------------------------------------------------------------------------
	decvec(95)	<= '1' when (
		instr=ADD_ADDR or instr=ADDC_ADDR or instr=SUBB_ADDR or
		instr=INC_ADDR or instr=DEC_ADDR or instr=ANL_A_ADDR or
		instr=ORL_A_ADDR or instr=XRL_A_ADDR or instr=ANL_ADDR_A or
		instr=ANL_ADDR_N or instr=ORL_ADDR_A or instr=ORL_ADDR_N or
		instr=XRL_ADDR_A or instr=XRL_ADDR_N or instr=MOV_A_ADDR or
		instr=MOV_R0_ADDR or instr=MOV_R1_ADDR or instr=MOV_R2_ADDR or
		instr=MOV_R3_ADDR or instr=MOV_R4_ADDR or instr=MOV_R5_ADDR or
		instr=MOV_R6_ADDR or instr=MOV_R7_ADDR or instr=MOV_ADDR_ADDR or
		instr=DJNZ_ADDR or instr=XCH_ADDR or instr=PUSH or
		instr=CLR_BIT or instr=SETB_BIT or instr=ANL_C_BIT or
		instr=ANL_C_NBIT or instr=ORL_C_BIT or instr=ORL_C_NBIT or
		instr=MOV_C_BIT or instr=MOV_BIT_C or instr=CPL_BIT or
		instr=JBC_BIT or instr=JB_BIT or instr=JNB_BIT or instr=CJNE_A_ADDR
 		) else '0';
	------------------------------------------------------------------------
	decvec(96)	<= '1' when (
		instr=MOV_IR0_ADDR or instr=MOV_IR1_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(97)	<= '1' when (
		instr=DJNZ_R0 or instr=DJNZ_R1 or instr=DJNZ_R2 or instr=DJNZ_R3 or
		instr=DJNZ_R4 or instr=DJNZ_R5 or instr=DJNZ_R6 or instr=DJNZ_R7 or
		instr=INC_R0 or instr=INC_R1 or instr=INC_R2 or instr=INC_R3 or
		instr=INC_R4 or instr=INC_R5 or instr=INC_R6 or instr=INC_R7 or
		instr=DEC_R0 or instr=DEC_R1 or instr=DEC_R2 or instr=DEC_R3 or
		instr=DEC_R4 or instr=DEC_R5 or instr=DEC_R6 or instr=DEC_R7 or
		instr=MOV_R0_A or instr=MOV_R1_A or instr=MOV_R2_A or
		instr=MOV_R3_A or instr=MOV_R4_A or instr=MOV_R5_A or
		instr=MOV_R6_A or instr=MOV_R7_A or
		instr=XCH_R0 or instr=XCH_R1 or instr=XCH_R2 or
		instr=XCH_R3 or instr=XCH_R4 or instr=XCH_R5 or instr=XCH_R6 or
		instr=XCH_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(98)	<= '1' when (
		instr=INC_IR0 or instr=INC_IR1 or instr=DEC_IR0 or instr=DEC_IR1 or
		instr=MOV_IR0_A or instr=MOV_IR1_A or instr=MOV_IR0_N or
		instr=MOV_IR1_N or instr=XCH_IR0 or instr=XCH_IR1 or
		instr=XCHD_IR0 or instr=XCHD_IR1
 		) else '0';
	------------------------------------------------------------------------
	decvec(99)	<= '1' when (
		instr=INC_ADDR or instr=DEC_ADDR or instr=ANL_ADDR_A or
		instr=ORL_ADDR_A or instr=XRL_ADDR_A or instr=MOV_ADDR_A or
		instr=MOV_ADDR_N or instr=MOV_ADDR_R0 or instr=MOV_ADDR_R1 or
		instr=MOV_ADDR_R2 or instr=MOV_ADDR_R3 or instr=MOV_ADDR_R4 or
		instr=MOV_ADDR_R5 or instr=MOV_ADDR_R6 or instr=MOV_ADDR_R7 or
		instr=POP or instr=XCH_ADDR or instr=CLR_BIT or instr=SETB_BIT or
		instr=CPL_BIT or instr=MOV_BIT_C
		) else '0';
	------------------------------------------------------------------------
	decvec(100)	<= '1' when (
		instr=MOV_R0_ADDR or instr=MOV_R1_ADDR or instr=MOV_R2_ADDR or
		instr=MOV_R3_ADDR or instr=MOV_R4_ADDR or instr=MOV_R5_ADDR or
		instr=MOV_R6_ADDR or instr=MOV_R7_ADDR or
		instr=PUSH
		) else '0';
	------------------------------------------------------------------------
	decvec(101)	<= '1' when (
		instr=MOV_ADDR_ADDR or instr=XRL_ADDR_N or instr=ANL_ADDR_N or
		instr=ORL_ADDR_N or instr=MOV_ADDR_IR0 or instr=MOV_ADDR_IR1 or
		instr=JBC_BIT or instr=DJNZ_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(102)	<= '1' when (
		instr=MOV_R0_N or instr=MOV_R1_N or instr=MOV_R2_N or
		instr=MOV_R3_N or instr=MOV_R4_N or instr=MOV_R5_N or
		instr=MOV_R6_N or instr=MOV_R7_N
		) else '0';
	------------------------------------------------------------------------
	decvec(103)	<= '1' when (
		instr=ADD_IR0 or instr=ADD_IR1 or instr=ADDC_IR0 or
		instr=ADDC_IR1 or instr=SUBB_IR0 or instr=SUBB_IR1 or
		instr=INC_IR0 or instr=INC_IR1 or instr=DEC_IR0 or
		instr=DEC_IR1 or instr=ORL_A_IR0 or instr=ORL_A_IR1 or
		instr=ANL_A_IR0 or instr=ANL_A_IR1 or instr=XRL_A_IR0 or
		instr=XRL_A_IR1 or instr=CJNE_IR0_N or instr=CJNE_IR1_N or
		instr=MOV_IR0_A or instr=MOV_IR1_A or instr=MOV_IR0_N or
		instr=MOV_IR1_N or
		instr=XCH_IR0 or instr=XCH_IR1 or instr=XCHD_IR0 or
		instr=XCHD_IR1 or instr=MOV_A_IR0 or instr=MOV_A_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(104)	<= '1' when (
		instr=ADD_ADDR or instr=ADDC_ADDR or instr=SUBB_ADDR or
		instr=INC_ADDR or instr=DEC_ADDR or instr=ANL_ADDR_N or
		instr=ORL_ADDR_N or instr=XRL_ADDR_N or instr=ANL_A_ADDR or
		instr=ANL_ADDR_A or instr=ORL_A_ADDR or instr=ORL_ADDR_A or
		instr=XRL_A_ADDR or instr=XRL_ADDR_A or instr=MOV_A_ADDR or
		instr=MOV_ADDR_A or instr=MOV_ADDR_R0 or instr=MOV_ADDR_R1 or
		instr=MOV_ADDR_R2 or instr=MOV_ADDR_R3 or instr=MOV_ADDR_R4 or
		instr=MOV_ADDR_R5 or instr=MOV_ADDR_R6 or instr=MOV_ADDR_R7 or
		instr=MOV_ADDR_N or instr=POP or instr=CJNE_A_ADDR or
		instr=DJNZ_ADDR or instr=XCH_ADDR
		) else '0';
	------------------------------------------------------------------------
	-- just make a copy of this from 54 to use later in ramsfrctrl.vhd, since
	-- this is already 79 or'd with 88
	decvec(105)	<= decvec(54);
	------------------------------------------------------------------------
	decvec(106)	<= '1' when (
		instr=MOV_R0_ADDR or instr=MOV_R1_ADDR or instr=MOV_R2_ADDR or
		instr=MOV_R3_ADDR or instr=MOV_R4_ADDR or instr=MOV_R5_ADDR or
		instr=MOV_R6_ADDR or instr=MOV_R7_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(107)	<= '1' when (
		instr=MOV_ADDR_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(108)	<= '1' when (
		instr=PUSH
		) else '0';
	------------------------------------------------------------------------
	decvec(109)	<= '1' when (
		instr=MOV_ADDR_IR0 or instr= MOV_ADDR_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(110)	<= '1' when (
		instr=MOV_R0_A or instr=MOV_R1_A or instr=MOV_R2_A or
		instr=MOV_R3_A or instr=MOV_R4_A or instr=MOV_R5_A or
		instr=MOV_R6_A or instr=MOV_R7_A or instr=XCH_R0 or
		instr=XCH_R1 or instr=XCH_R2 or instr=XCH_R3 or instr=XCH_R4 or
		instr=XCH_R5 or instr=XCH_R6 or instr=XCH_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(111)	<= '1' when (
		instr=MOV_ADDR_A or instr=XCH_ADDR or instr=MOV_IR0_A or
		instr=MOV_IR1_A or instr=XCH_IR0 or instr=XCH_IR1
		) else '0';
	------------------------------------------------------------------------
	decvec(112)	<= '1' when (
		instr=DJNZ_R0 or instr=DJNZ_R1 or instr=DJNZ_R2 or instr=DJNZ_R3 or
		instr=DJNZ_R4 or instr=DJNZ_R5 or instr=DJNZ_R6 or instr=DJNZ_R7 or
		instr=INC_R0 or instr=INC_R1 or instr=INC_R2 or instr=INC_R3 or
		instr=INC_R4 or instr=INC_R5 or instr=INC_R6 or instr=INC_R7 or
		instr=DEC_R0 or instr=DEC_R1 or instr=DEC_R2 or instr=DEC_R3 or
		instr=DEC_R4 or instr=DEC_R5 or instr=DEC_R6 or instr=DEC_R7
		) else '0';
	------------------------------------------------------------------------
	decvec(113)	<= '1' when (
		instr=INC_ADDR or instr=DEC_ADDR or instr=INC_IR0 or
		instr=INC_IR1 or instr=DEC_IR0 or instr=DEC_IR1 or
		instr=ANL_ADDR_A or instr=ORL_ADDR_A or instr=XRL_ADDR_A or
		instr=CLR_BIT or instr=SETB_BIT or instr=CPL_BIT or instr=MOV_BIT_C
		) else '0';
	------------------------------------------------------------------------
	decvec(114)	<= '1' when (
		instr=ANL_ADDR_N or instr=XRL_ADDR_N or instr=ORL_ADDR_N or
		instr=JBC_BIT or instr=DJNZ_ADDR
		) else '0';
	------------------------------------------------------------------------
	decvec(115)	<= '1' when (
		instr=MOV_R0_N or instr=MOV_R1_N or instr=MOV_R2_N or
		instr=MOV_R3_N or instr=MOV_R4_N or instr=MOV_R5_N or
		instr=MOV_R6_N or instr=MOV_R7_N or instr=MOV_IR0_N or
		instr=MOV_IR1_N or instr=MOV_A_N
		) else '0';
	------------------------------------------------------------------------
	decvec(116)	<= '1' when (
		instr=MOV_ADDR_R0 or instr=MOV_ADDR_R1 or instr=MOV_ADDR_R2 or
		instr=MOV_ADDR_R3 or instr=MOV_ADDR_R4 or instr=MOV_ADDR_R5 or
		instr=MOV_ADDR_R6 or instr=MOV_ADDR_R7 or instr=POP
		) else '0';
	------------------------------------------------------------------------
	decvec(117)	<= '1' when (
		instr=MOV_ADDR_N
		) else '0';
	------------------------------------------------------------------------
	decvec(118)	<= '1' when (
		instr=MOV_R0_ADDR or instr=MOV_R1_ADDR or instr=MOV_R2_ADDR or
		instr=MOV_R3_ADDR or instr=MOV_R4_ADDR or instr=MOV_R5_ADDR or
		instr=MOV_R6_ADDR or instr=MOV_R7_ADDR or instr=MOV_IR0_ADDR or
		instr=MOV_IR1_ADDR or instr=MOV_ADDR_ADDR
		) else '0';
	------------------------------------------------------------------------

    instr_dec	<= decvec;

end STR;
