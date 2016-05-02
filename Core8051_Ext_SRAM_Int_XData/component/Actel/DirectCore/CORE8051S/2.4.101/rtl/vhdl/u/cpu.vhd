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
-- name:		cpu.vhd
-- function:	Control Processor Unit (main control logic)
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Core8051_utility.all;

entity CONTROL_UNIT is
generic (
	-- set this to number of instruction decodes
	INSTR_DECNUM	: integer := 119
);
port (
    -- Control signal inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Global reset input

    -- External memory read/write acknowledge input
    mempsack     : in  STD_LOGIC;
    memack       : in  STD_LOGIC;

    -- ISR input signals
    intreq       : in  STD_LOGIC;  -- Interrupt request

    -- Power Management Unit input
    stoppmu      : in  STD_LOGIC;  -- Stop mode

    -- OCI input signals
    debugreq     : in  STD_LOGIC;  -- Debug Request
    debugack     : in  STD_LOGIC;  -- Debug Acknowledge
    debugstep    : in  STD_LOGIC;  -- Debug Step
    a5instr      : in  STD_LOGIC;  -- 0xA5 instruction fetched

    -- debug fetch enable
    debugfetche  : out STD_LOGIC;

    -- Instruction register output
    instr        : out STD_LOGIC_VECTOR(7 downto 0);

    -- Cycle counter output
    cycle        : out INTEGER range 1 to 11;
    nrcycles     : out INTEGER range 1 to 11;

    -- MOVX Instruction
    movx         : out STD_LOGIC;

    -- Instruction decoder output
    codefetche   : out STD_LOGIC;  -- Opcode fetch enable
    datafetche   : out STD_LOGIC;  -- Data fetch enable
    rmwinstr     : out STD_LOGIC;  -- Read-Modify-Write Instr.

    -- ISR control outputs
    intack       : out STD_LOGIC;  -- Interrupt acknowledge flag
    intret       : out STD_LOGIC;  -- Interrupt return flag
    intcall      : out STD_LOGIC;  -- Interrupt call

    -- Program bus input
    memdatai     : in  STD_LOGIC_VECTOR(7 downto 0);

	-------------------------------------------------------------------
	-- TFB added 9/4/03 for instruction decodes

	-- decode vector (bit-order reversed on purpose!)
    instr_dec		:	in	std_logic_vector(0 to INSTR_DECNUM-1);

	-- cycle decodes ...
    cyc1			:	out	std_logic;
    cyc2			:	out	std_logic;
    cyc3			:	out	std_logic;
    cyc4			:	out	std_logic;
    cyc5			:	out	std_logic;
    cyc6			:	out	std_logic
	-------------------------------------------------------------------
);
end CONTROL_UNIT;

--*******************************************************************--

   architecture RTL of CONTROL_UNIT is

      -- Instruction register
      signal instrreg         : STD_LOGIC_VECTOR(7 downto 0);

      -- Fetch enable signals
      signal debug_fetch_e    : STD_LOGIC;
      signal code_fetch_e     : STD_LOGIC;
      signal data_fetch_e     : STD_LOGIC;

      -- Current machine cycle register
      signal curcycle         : INTEGER range 1 to 11;

      -- Number of bytes and cycles signals
      signal nr_cycles_a      : INTEGER range 1 to 11;
      signal nr_bytes_a       : INTEGER range 1 to 3;

      -- Number of bytes and cycles registers
      signal nr_cycles        : INTEGER range 1 to 11;
      signal nr_bytes         : INTEGER range 1 to 3;

      -- Read-Modify-Write Instruction signal
      signal rmwinstr_a       : STD_LOGIC;

      -- Interrupt call routine flag
      signal int_call         : STD_LOGIC;

-- TFB 9/4/03
	signal c1,c2,c3,c4,c5,c6:	std_logic;
	signal code_or_debug:		std_logic;
	signal cyc_eq_nr_cyc:		std_logic;
	signal cyc_lt_nr_cyc:		std_logic;

   begin

-- TFB 9/4/03
	-- cycle decodes ...
	c1		<= '1' when curcycle=1 else '0';
	c2		<= '1' when curcycle=2 else '0';
	c3		<= '1' when curcycle=3 else '0';
	c4		<= '1' when curcycle=4 else '0';
	c5		<= '1' when curcycle=5 else '0';
	c6		<= '1' when curcycle=6 else '0';

	cyc1	<= c1;
	cyc2	<= c2;
	cyc3	<= c3;
	cyc4	<= c4;
	cyc5	<= c5;
	cyc6	<= c6;

-- TFB 9/5/03
	code_or_debug	<= '1' when code_fetch_e='1' or debug_fetch_e='1' else '0';
	cyc_eq_nr_cyc	<= '1' when curcycle=nr_cycles else '0';
	cyc_lt_nr_cyc	<= '1' when curcycle<nr_cycles else '0';


   --------------------------------------------------------------------
   -- Instruction opcode
   --------------------------------------------------------------------
      instr <= instrreg;

   --------------------------------------------------------------------
   -- Current machine cycle
   --------------------------------------------------------------------
      cycle <= curcycle;

   --------------------------------------------------------------------
   -- Number of machine cycles
   --------------------------------------------------------------------
      nrcycles <= nr_cycles;

   --------------------------------------------------------------------
   -- Opcode fetch enable signals for debug mode
   --------------------------------------------------------------------
      debugfetche <= debug_fetch_e;

   --------------------------------------------------------------------
   -- Opcode fetch enable signals
   --------------------------------------------------------------------
      codefetche <= code_fetch_e;

   --------------------------------------------------------------------
   -- Data fetch enable signals
   --------------------------------------------------------------------
      datafetche <= data_fetch_e;

   --------------------------------------------------------------------
   -- Interrupt call
   --------------------------------------------------------------------
      intcall <= int_call;

	--------------------------------------------------------------------
	-- various interrupt signals
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			intack   <= '0';
			intret   <= '0';
			int_call <= '0';
		elsif clk'event and clk = '1' then
			----------------------------------
			-- Interrupt call flag
			----------------------------------
			if code_fetch_e='1' and mempsack='1' then
				if intreq='1' then
					int_call <= '1';
				else
					int_call <= '0';
				end if;
			end if;
			----------------------------------
			-- Interrupt acknowledge flag
			----------------------------------
			-- active cycle=4
			if (int_call='1' and c3='1') then
				intack <= '1';
			else
				intack <= '0';
			end if;
			----------------------------------
			-- Interrupt return flag
			----------------------------------
			-- active cycle=4
			if (instr_dec(62)='1' and c3='1') then
				intret <= '1';
			else
				intret <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Instruction code fetch enable for debug mode
   --------------------------------------------------------------------
      debug_fetch_e <=
         '1' when debugack='1' and debugstep='1' else
         '0';

   --------------------------------------------------------------------
   -- Instruction code fetch enable
   --------------------------------------------------------------------
	code_fetch_e <= '1' when cyc_eq_nr_cyc='1' and stoppmu='0' and
					a5instr='0' and debugreq='0' else '0';

   --------------------------------------------------------------------
   -- Instruction data fetch enable
   --------------------------------------------------------------------
      data_fetch_e <=
         '1' when curcycle<nr_bytes else
         '0';

   --------------------------------------------------------------------
   -- MOVX Instruction
   --------------------------------------------------------------------
	movx <= '1' when instr_dec(64)='1' and data_fetch_e='0' and
			code_fetch_e='0' else '0';

   --------------------------------------------------------------------
   -- Instruction register
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			instrreg <= NOP;
		elsif clk'event and clk = '1' then
			----------------------------------
			-- Instruction register write
			----------------------------------
			if stoppmu='1' then
				instrreg <= NOP;
			elsif code_or_debug='1' and mempsack='1' then
				-- Interrupt request
				if intreq='1' then
					instrreg <= LCALL;
				else
					instrreg <= memdatai;
				end if;
			elsif cyc_eq_nr_cyc='1' and (a5instr='1' or debugreq='1') then
				instrreg  <= NOP;
			end if;
		end if;
	end process;

	--------------------------------------------------------------------
	-- Current cycle counter
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			curcycle <= 1;
		elsif clk'event and clk = '1' then
			----------------------------------
			-- Current cycle count
			----------------------------------
			if (mempsack='1' and memack='1') then
				if cyc_lt_nr_cyc='1' then
					curcycle <= curcycle + 1;
				else
					curcycle <= 1;
				end if;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Read-Modify-Write instruction decoder
   -- Combinational part
   --------------------------------------------------------------------
      rmwinstr_a <=
         '1' when (memdatai=ANL_ADDR_A or
                   memdatai=ANL_ADDR_N or
                   memdatai=ORL_ADDR_A or
                   memdatai=ORL_ADDR_N or
                   memdatai=XRL_ADDR_A or
                   memdatai=XRL_ADDR_N or
                   memdatai=JBC_BIT or
                   memdatai=CPL_BIT or
                   memdatai=INC_ADDR or
                   memdatai=DEC_ADDR or
                   memdatai=DJNZ_ADDR or
                   memdatai=MOV_BIT_C or
                   memdatai=CLR_BIT or
                   memdatai=SETB_BIT
                  ) else
         '0';

   --------------------------------------------------------------------
   -- Read-Modify-Write instruction decoder
   -- Sequential part
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			rmwinstr <= '0';
		elsif clk'event and clk = '1' then
			-------------------------------------
			-- Read-Modify-Write flip-flop
			-------------------------------------
			if mempsack='1' then
				if code_or_debug='1' then
					rmwinstr <= rmwinstr_a;
				end if;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Instruction decoder
   -- Combinational part
   --------------------------------------------------------------------
      process (memdatai)
      begin
         case memdatai is
            -------------------------------------
            -- 00h
            -------------------------------------
            when NOP        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when AJMP_0     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when LJMP       =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when RR_A       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when INC_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when INC_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when INC_IR0    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when INC_IR1    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when INC_R0     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when INC_R1     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when INC_R2     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when INC_R3     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when INC_R4     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when INC_R5     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when INC_R6     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when INC_R7     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            -------------------------------------
            -- 10h
            -------------------------------------
            when JBC_BIT    =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when ACALL_0    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 6;
            when LCALL      =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 6;
            when RRC_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when DEC_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when DEC_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when DEC_IR0    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when DEC_IR1    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when DEC_R0     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when DEC_R1     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when DEC_R2     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when DEC_R3     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when DEC_R4     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when DEC_R5     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when DEC_R6     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when DEC_R7     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            -------------------------------------
            -- 20h
            -------------------------------------
            when JB_BIT     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when AJMP_1     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when RET        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 4;
            when RL_A       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADD_N      =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ADD_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ADD_IR0    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when ADD_IR1    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when ADD_R0     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADD_R1     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADD_R2     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADD_R3     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADD_R4     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADD_R5     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADD_R6     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADD_R7     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            -------------------------------------
            -- 30h
            -------------------------------------
            when JNB_BIT    =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when ACALL_1    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 6;
            when RETI       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 4;
            when RLC_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADDC_N     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ADDC_ADDR  =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ADDC_IR0   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when ADDC_IR1   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when ADDC_R0    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADDC_R1    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADDC_R2    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADDC_R3    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADDC_R4    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADDC_R5    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADDC_R6    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ADDC_R7    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            -------------------------------------
            -- 40h
            -------------------------------------
            when JC         =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when AJMP_2     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when ORL_ADDR_A =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when ORL_ADDR_N =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when ORL_A_N    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ORL_A_ADDR =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ORL_A_IR0  =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when ORL_A_IR1  =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when ORL_A_R0   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ORL_A_R1   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ORL_A_R2   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ORL_A_R3   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ORL_A_R4   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ORL_A_R5   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ORL_A_R6   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ORL_A_R7   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            -------------------------------------
            -- 50h
            -------------------------------------
            when JNC        =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when ACALL_2    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 6;
            when ANL_ADDR_A =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when ANL_ADDR_N =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when ANL_A_N    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ANL_A_ADDR =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ANL_A_IR0  =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when ANL_A_IR1  =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when ANL_A_R0   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ANL_A_R1   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ANL_A_R2   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ANL_A_R3   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ANL_A_R4   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ANL_A_R5   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ANL_A_R6   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when ANL_A_R7   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            -------------------------------------
            -- 60h
            -------------------------------------
            when JZ         =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when AJMP_3     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when XRL_ADDR_A =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when XRL_ADDR_N =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when XRL_A_N    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when XRL_A_ADDR =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when XRL_A_IR0  =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XRL_A_IR1  =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XRL_A_R0   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when XRL_A_R1   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when XRL_A_R2   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when XRL_A_R3   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when XRL_A_R4   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when XRL_A_R5   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when XRL_A_R6   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when XRL_A_R7   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            -------------------------------------
            -- 70h
            -------------------------------------
            when JNZ        =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when ACALL_3    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 6;
            when ORL_C_BIT  =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when JMP_A_DPTR =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_A_N    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_ADDR_N =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 3;
            when MOV_IR0_N  =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_IR1_N  =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_R0_N   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_R1_N   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_R2_N   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_R3_N   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_R4_N   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_R5_N   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_R6_N   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_R7_N   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            -------------------------------------
            -- 80h
            -------------------------------------
            when SJMP          =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when AJMP_4        =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when ANL_C_BIT     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOVC_A_PC     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when DIV_AB        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 5;
            when MOV_ADDR_ADDR =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when MOV_ADDR_IR0  =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_ADDR_IR1  =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_ADDR_R0   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_ADDR_R1   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_ADDR_R2   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_ADDR_R3   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_ADDR_R4   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_ADDR_R5   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_ADDR_R6   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_ADDR_R7   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            -------------------------------------
            -- 90h
            -------------------------------------
            when MOV_DPTR_N    =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 3;
            when ACALL_4    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 6;
            when MOV_BIT_C     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOVC_A_DPTR   =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when SUBB_N        =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when SUBB_ADDR     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when SUBB_IR0      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when SUBB_IR1      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when SUBB_R0       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when SUBB_R1       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when SUBB_R2       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when SUBB_R3       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when SUBB_R4       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when SUBB_R5       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when SUBB_R6       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when SUBB_R7       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            -------------------------------------
            -- A0h
            -------------------------------------
            when ORL_C_NBIT    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when AJMP_5     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_C_BIT     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when INC_DPTR      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MUL_AB        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 5;
            --when UNKNOWN     =>
            --   nr_bytes_a  <= 1;
            --   nr_cycles_a <= 1;
            when MOV_IR0_ADDR  =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 5;
            when MOV_IR1_ADDR  =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 5;
            when MOV_R0_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_R1_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_R2_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_R3_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_R4_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_R5_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_R6_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when MOV_R7_ADDR   =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            -------------------------------------
            -- B0h
            -------------------------------------
            when ANL_C_NBIT    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when ACALL_5    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 6;
            when CPL_BIT       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when CPL_C         =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when CJNE_A_N      =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_A_ADDR   =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_IR0_N    =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_IR1_N    =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_R0_N     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_R1_N     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_R2_N     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_R3_N     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_R4_N     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_R5_N     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_R6_N     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when CJNE_R7_N     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            -------------------------------------
            -- C0h
            -------------------------------------
            when PUSH          =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 4;
            when AJMP_6     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when CLR_BIT       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when CLR_C         =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when SWAP_A        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when XCH_ADDR      =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when XCH_IR0       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when XCH_IR1       =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when XCH_R0        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XCH_R1        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XCH_R2        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XCH_R3        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XCH_R4        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XCH_R5        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XCH_R6        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when XCH_R7        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            -------------------------------------
            -- D0h
            -------------------------------------
            when POP           =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when ACALL_6    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 6;
            when SETB_BIT      =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when SETB_C        =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when DA_A          =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when DJNZ_ADDR     =>
               nr_bytes_a  <= 3;
               nr_cycles_a <= 4;
            when XCHD_IR0      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when XCHD_IR1      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when DJNZ_R0       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when DJNZ_R1       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when DJNZ_R2       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when DJNZ_R3       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when DJNZ_R4       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when DJNZ_R5       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when DJNZ_R6       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when DJNZ_R7       =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            -------------------------------------
            -- E0h
            -------------------------------------
            when MOVX_A_IDPTR  =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when AJMP_7     =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOVX_A_IR0    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when MOVX_A_IR1    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when CLR_A         =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_A_ADDR    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 2;
            when MOV_A_IR0     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_A_IR1     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_A_R0      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_A_R1      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_A_R2      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_A_R3      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_A_R4      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_A_R5      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_A_R6      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_A_R7      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            -------------------------------------
            -- F0h
            -------------------------------------
            when MOVX_IDPTR_A  =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 4;
            when ACALL_7    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 6;
            when MOVX_IR0_A    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 4;
            when MOVX_IR1_A    =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 4;
            when CPL_A         =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
            when MOV_ADDR_A    =>
               nr_bytes_a  <= 2;
               nr_cycles_a <= 3;
            when MOV_IR0_A     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when MOV_IR1_A     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 3;
            when MOV_R0_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_R1_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_R2_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_R3_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_R4_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_R5_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_R6_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when MOV_R7_A      =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 2;
            when others     =>
               nr_bytes_a  <= 1;
               nr_cycles_a <= 1;
         end case;
      end process;

   --------------------------------------------------------------------
   -- Instruction decoder
   -- Sequential part
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			nr_bytes  <= 1;
			nr_cycles <= 1;
		elsif clk'event and clk = '1' then
			-------------------------------------
			-- nr_bytes and nr_cycles flip-flops
			-------------------------------------
			if stoppmu='1' then
				-- NOP
				nr_bytes <= 1;
				-- NOP
				nr_cycles <= 1;
			elsif code_or_debug='1' and mempsack='1' then
				-- Interrupt request
				if intreq='1' then
					nr_bytes  <= 3;
					nr_cycles <= 6;
				else
					nr_bytes  <= nr_bytes_a;
					nr_cycles <= nr_cycles_a;
				end if;
			elsif (cyc_eq_nr_cyc='1' and (a5instr='1' or debugreq='1')) then
				nr_bytes  <= 1;
				nr_cycles <= 1;
			end if;
		end if;
	end process;

end RTL;
