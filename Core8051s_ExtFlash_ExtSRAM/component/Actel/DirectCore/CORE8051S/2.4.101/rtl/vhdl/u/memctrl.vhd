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
-- name:		memctrl.vhd
-- function:	External data memory control, External program memory control,
--				External I/O device control
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
-- 				8/29/03 - TFB continued shrink effort ...
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."+";
use IEEE.std_logic_unsigned."-";
use IEEE.std_logic_arith.all;
use work.Core8051_utility.all;

entity MEMORY_CONTROL is
generic (
	-- set to 1 to enable ff optimizations ...
	EN_FF_OPTS		    : integer := 0;
	-- set this to number of instruction decodes
	INSTR_DECNUM	    : integer := 119;
    -- APB data width - possible values are 8, 16 or 32
    APB_DWIDTH          : integer := 32;
    -- set to 1 to include second data pointer (DPTR1)
    INCL_DPTR1          : integer := 0;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT       : integer := 1
);
port (
    -- Control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Global reset input

    -- External program memory read/write acknowledge input
    mempsack     : in  STD_LOGIC;

    -- External data memory read/write acknowledge input
    memacki     : in   STD_LOGIC;

    -- CPU input signals
    instr        : in  STD_LOGIC_VECTOR(7 downto 0);
    codefetche   : in  STD_LOGIC;  -- Opcode fetch enable
    debugfetche  : in  STD_LOGIC;
    datafetche   : in  STD_LOGIC;  -- Data fertch enable

    -- ALU input signals
    accreg       : in  STD_LOGIC_VECTOR(7 downto 0);
    bitvalue     : in  STD_LOGIC;
    cdjump       : in  STD_LOGIC;
    cyflag       : in  STD_LOGIC;

    -- Clock Control input signals
    stretch      : in  STD_LOGIC_VECTOR(2 downto 0);

    -- ISR input signals
    intreq       : in  STD_LOGIC;  -- Interrupt request
    intcall      : in  STD_LOGIC;  -- Interrupt call
    intvect      : in  STD_LOGIC_VECTOR(4 downto 0);

    -- PORTS input signals
    p2reg        : in  STD_LOGIC_VECTOR(7 downto 0);

    -- Internal Data Memory input
    ramdatai     : in  STD_LOGIC_VECTOR(7 downto 0);

    -- Power Management Unit input signals
    mempsrdrst   : in  STD_LOGIC;  -- memory read signal reset

    -- OCI control inputs
    a5instr      : in  STD_LOGIC;
    debugreq     : in  STD_LOGIC;
    debugprog    : in  STD_LOGIC;

    -- OCI control output
    flush        : out STD_LOGIC;

    -- External data memory read/write acknowledge output
    memack      : out  STD_LOGIC;

    -- ALU control output
    mem2acc      : out STD_LOGIC; -- Memory to ACC write enable

    -- RAM_SFR control outputs
    pclreg       : out STD_LOGIC_VECTOR(7 downto 0);
    pchreg       : out STD_LOGIC_VECTOR(7 downto 0);
    ram2memaddr  : out STD_LOGIC; -- RAM to MemAddr write enable

    -- Memory interface
    memdatai     : in  STD_LOGIC_VECTOR( 7 downto 0);
    memdatao     : out STD_LOGIC_VECTOR( 7 downto 0);
    memaddr      : out STD_LOGIC_VECTOR(15 downto 0);
    mempsrd      : out STD_LOGIC;  -- Program store read enable
    memwr        : out STD_LOGIC;  -- Memory write enable
    memrd        : out STD_LOGIC;  -- Memory read enable

    -- Special function register interface
    sfrdatai     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatamcu   : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr      : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe        : in  STD_LOGIC;
	-------------------------------------------------------------------
	-- TFB added 9/6/03 for instruction decodes

	-- decode vector (bit-order reversed on purpose!)
    instr_dec	 :	in	STD_LOGIC_VECTOR(0 to INSTR_DECNUM-1);
	-- cycle decodes ...
    cyc1		 :	in	STD_LOGIC;
    cyc2		 :	in	STD_LOGIC;
    cyc3		 :	in	STD_LOGIC;
    cyc5		 :	in	STD_LOGIC;
    -- APB interface
    psel            : out STD_LOGIC;
    pwrite          : out STD_LOGIC;
    penable         : out STD_LOGIC;
    paddr           : out STD_LOGIC_VECTOR(11 downto 0);
    pwdata          : out STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
    prdata          : in  STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
    pready          : in  STD_LOGIC;
	-------------------------------------------------------------------

    -- Program store memory write related signals
    DebugPswr       : in  STD_LOGIC;
    mempsacki       : in  STD_LOGIC;
    mempswr         : out STD_LOGIC
);
end MEMORY_CONTROL;

--*******************************************************************--

   architecture RTL of MEMORY_CONTROL is

    -- ---------------------------------------------------------------------
    -- Constant declarations
    -- ---------------------------------------------------------------------
    -- StateName constant definitions
	type apbCtrl_state_names is (
	    APB_I,
		APB_A,
		APB_D
	);

   -----------------------------------------------------------------
   -- Registers
   -----------------------------------------------------------------
   -- Program Counter register
   signal pc          : STD_LOGIC_VECTOR(15 downto 0);
   signal pc_inc      : STD_LOGIC_VECTOR(15 downto 0);
   signal pc_add      : STD_LOGIC_VECTOR(15 downto 0);
   signal pc_rel      : STD_LOGIC_VECTOR(15 downto 0);

   -- Data Pointer registers
   signal dptr        : STD_LOGIC_VECTOR(15 downto 0);
   signal dp_inc      : STD_LOGIC_VECTOR(15 downto 0);
   signal dp_add      : STD_LOGIC_VECTOR(15 downto 0);

   -- Data Pointer 1 registers
   signal dptr1       : STD_LOGIC_VECTOR(15 downto 0);
   signal dp1_inc     : STD_LOGIC_VECTOR(15 downto 0);
   signal dp1_add     : STD_LOGIC_VECTOR(15 downto 0);

   -- Data Pointer select register
   signal dps         : STD_LOGIC_VECTOR(7 downto 0);

   -- Address Buffer register
   signal addrbuff    : STD_LOGIC_VECTOR(15 downto 0);

   -- Realtive address register
   signal rel         : STD_LOGIC_VECTOR( 7 downto 0);

   -----------------------------------------------------------------
   -- Control signals
   -----------------------------------------------------------------
   -- Program Counter control signals
   signal pcince      : STD_LOGIC;  -- PC increment enable
   signal pcrele      : STD_LOGIC;  -- PC + REL count enable

   -- Data Pointer control signals
   signal dpince      : STD_LOGIC;  -- DPTR increment enable
   signal dpadde      : STD_LOGIC;  -- DPTR + A count enable
   signal dplwe       : STD_LOGIC;  -- DPTR low byte write enable
   signal dphwe       : STD_LOGIC;  -- DPTR high byte write enable

   -- Address Buffer control signals
   signal membufflwe  : STD_LOGIC;  -- Memory to Buffer low write en.
   signal membuffhwe  : STD_LOGIC;  -- Memory to Buffer high write en.
   signal rambufflwe  : STD_LOGIC;  -- RAM to Buffer low write en.
   signal rambuffhwe  : STD_LOGIC;  -- RAM to Buffer high write en.
   signal instrbuffwe : STD_LOGIC;  -- Instr. to Buffer high write en.

   -- Memory Address control signals
   signal pcaddsel    : STD_LOGIC;  -- PC + A count enable
   signal dpaddsel    : STD_LOGIC;  -- DPTR + A count enable
   signal dpsel       : STD_LOGIC;  -- DPTR select
   signal risel       : STD_LOGIC;  -- Ri select
   signal buffsel     : STD_LOGIC;  -- Buffer select

   -- Relative Address control signals
   signal relwe       : STD_LOGIC;  -- Rel register write enable

   -- Opcode fetch enable for MOVC instructions
   signal storefetche : STD_LOGIC;

   signal stretchcount: STD_LOGIC_VECTOR( 3 downto 0);
   signal movxwait    : STD_LOGIC;
   signal movxend     : STD_LOGIC;
   signal movxendff   : STD_LOGIC;

   -- OCI interface
   signal flush_ff    : STD_LOGIC; --flush flip-flop

   signal dps_wrclk		 : STD_LOGIC;
   signal acc0				 : STD_LOGIC;
   signal stretchcomm1		 : STD_LOGIC;
   signal stretchcomm2		 : STD_LOGIC;
   signal stretchcomm3		 : STD_LOGIC;
   signal stretchcomm4		 : STD_LOGIC;
   signal comm1			 : STD_LOGIC;

   -- Buffers for APB data
   signal xwb1             : STD_LOGIC_VECTOR(7 downto 0);
   signal xwb2             : STD_LOGIC_VECTOR(7 downto 0);
   signal xwb3             : STD_LOGIC_VECTOR(7 downto 0);
   signal xrb1             : STD_LOGIC_VECTOR(7 downto 0);
   signal xrb2             : STD_LOGIC_VECTOR(7 downto 0);
   signal xrb3             : STD_LOGIC_VECTOR(7 downto 0);

   -- next value for memaddr register
   signal memaddr_next     : STD_LOGIC_VECTOR(15 downto 0);

   -- internal versions of outputs
   signal memaddr_i        : STD_LOGIC_VECTOR(15 downto 0);
   signal pwrite_i         : STD_LOGIC;
   signal psel_i           : STD_LOGIC;
   signal penable_i        : STD_LOGIC;
   signal mempswr_i        : STD_LOGIC;

   -- Internal APB-related signals
   signal apbAck           : STD_LOGIC;
   signal apbWrStart       : STD_LOGIC;
   signal apbRdStart       : STD_LOGIC;
   signal stretchSubstitute : STD_LOGIC;
   signal d_psel           : STD_LOGIC;
   signal d_penable        : STD_LOGIC;
   signal d_pwrite         : STD_LOGIC;
   signal apbCtrlSMCurrentState : apbCtrl_state_names;
   signal apbCtrlSMNextState : apbCtrl_state_names;
   signal stretch_int      : STD_LOGIC_VECTOR(2 downto 0);
   signal memacki_int      : STD_LOGIC;

   signal clear_mempswr    : STD_LOGIC;

begin

    ------------------------------------------------------------------------
    -- Main body of code
    ------------------------------------------------------------------------
    -- APB Contol State Machine (next state decode and output decode)

    PROCESS (apbCtrlSMCurrentState, apbWrStart, apbRdStart, pwrite_i, pready)
    BEGIN
        apbAck <= '1';
        d_psel <= '0';
        d_penable <= '0';
        d_pwrite <= '0';

        CASE apbCtrlSMCurrentState IS
            WHEN APB_I =>
                        IF (apbWrStart = '1' OR apbRdStart = '1') THEN
                            d_psel <= '1';
                            d_pwrite <= apbWrStart;
                            apbCtrlSMNextState <= APB_A;
                        ELSE
                            apbCtrlSMNextState <= APB_I;
                        END IF;
            WHEN APB_A =>
                        apbAck <= '0';
                        d_psel <= '1';
                        d_penable <= '1';
                        d_pwrite <= pwrite_i;
                        apbCtrlSMNextState <= APB_D;
            WHEN APB_D =>
                        IF (pready = '1') THEN
                            apbCtrlSMNextState <= APB_I;
                        ELSE
                            apbAck <= '0';
                            d_psel <= '1';
                            d_penable <= '1';
                            d_pwrite <= pwrite_i;
                            apbCtrlSMNextState <= APB_D;
                        END IF;
            WHEN OTHERS  =>
                        apbCtrlSMNextState <= APB_I;
        END CASE;
    END PROCESS;

    PROCESS (clk, nrst)
    BEGIN
        IF (NOT nrst = '1') THEN
            apbCtrlSMCurrentState <= APB_I;
        ELSIF (clk'EVENT AND clk = '1') THEN
            apbCtrlSMCurrentState <= apbCtrlSMNextState;
        END IF;
    END PROCESS;

    PROCESS (clk, nrst)
    BEGIN
        IF (NOT nrst = '1') THEN
            psel_i <= '0';
            pwrite_i <= '0';
            penable_i <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            psel_i <= d_psel;
            pwrite_i <= d_pwrite;
            penable_i <= d_penable;
        END IF;
    END PROCESS;

    stretchSubstitute <= apbWrStart OR apbRdStart OR psel_i;

    psel <= psel_i;
    pwrite <= pwrite_i;
    penable <= penable_i;

    PROCESS (instr_dec, cyc2, memaddr_next, DebugPswr)
    BEGIN
        IF ((instr_dec(93) = '1') AND (cyc2 = '1') AND (memaddr_next(15 DOWNTO 12) = "1111") AND (DebugPswr = '0')) THEN
            apbWrStart <= '1';
        ELSE
            apbWrStart <= '0';
        END IF;
    END PROCESS;

    PROCESS (instr_dec, cyc1, memaddr_next)
    BEGIN
        IF ((instr_dec(91) = '1') AND (cyc1 = '1') AND (memaddr_next(15 DOWNTO 12) = "1111")) THEN
            apbRdStart <= '1';
        ELSE
            apbRdStart <= '0';
        END IF;
    END PROCESS;

    PROCESS (stretchSubstitute, stretch)
    BEGIN
        IF (stretchSubstitute = '1') THEN
            stretch_int <= "001";
        ELSE
            stretch_int <= stretch;
        END IF;
    END PROCESS;

    PROCESS (psel_i, apbAck, memacki)
    BEGIN
        IF (psel_i = '1') THEN
            memacki_int <= apbAck;
        ELSE
            memacki_int <= memacki;
        END IF;
    END PROCESS;

   --------------------------------------------------------------------
   -- Program counter low byte output
   --------------------------------------------------------------------
      pclreg <= pc(7 downto 0);

   --------------------------------------------------------------------
   -- Program counter low byte output
   --------------------------------------------------------------------
      pchreg <= pc(15 downto 8);

   --------------------------------------------------------------------
   -- PC increment enable
   -- PC=PC+1
   --------------------------------------------------------------------
      process (codefetche, datafetche, debugfetche, intreq, intcall,
               a5instr, debugreq, debugprog, mempsack)
      begin
         if mempsack='1' and
            ( (codefetche='1' and intreq='0') or
                 (
                    (datafetche='1') and
                    (intcall='0') and
                    (
                       (a5instr='0' and debugreq='0') or
                       (debugprog='0')
                    )
                 ) or
					-- debugger mode, user program
                 (debugfetche='1' and debugprog='0')
            )
         then
            pcince <= '1';
         else
            pcince <= '0';
         end if;
      end process;

   --------------------------------------------------------------------
   -- PC + REL count enable
   -- PC=PC+REL
   -- MEMADDR=PC+REL
   --------------------------------------------------------------------
	acc0	<= '1' when accreg="00000000" else '0';
	pcrele	<= '1' when (
				(cyc2='1' and (
					instr_dec(65)='1' or
					(acc0='1' and instr_dec(66)='1') or
					(acc0='0' and instr_dec(67)='1') or
					(cyflag='1' and instr_dec(68)='1') or
					(cyflag='0' and instr_dec(69)='1') or
					(cdjump='1' and instr_dec(70)='1'))
				) or
				(cyc3='1' and (
					(cdjump='1' and instr_dec(71)='1') or
					(bitvalue='0' and instr_dec(72)='1') or
					(bitvalue='1' and instr_dec(73)='1')))
			) else '0';

	--------------------------------------------------------------------
	-- flush_ff
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			flush_ff <= '0';
		elsif clk'event and clk = '1' then
			if pcrele='1' or dpadde='1' or buffsel='1' then
				flush_ff <= '1';
			elsif mempsack='1' then
				flush_ff <= '0';
			end if;
		end if;
	end process;
-- #################################################################

   --------------------------------------------------------------------
   -- flush output
   --------------------------------------------------------------------
      flush <=
         '1' when mempsack='1' and flush_ff='1' else
         '0';

   --------------------------------------------------------------------
   -- DPTR increment enable
   -- DPTR=DPTR+1
   --------------------------------------------------------------------
	dpince <= '1' when mempsack='1' and instr_dec(74)='1' and cyc1='1' else '0';

   --------------------------------------------------------------------
   -- DPTR + A count enable
   -- PC=DPTR+A
   --------------------------------------------------------------------
	dpadde <= '1' when instr_dec(75)='1' and cyc1='1' else '0';

   --------------------------------------------------------------------
   -- DPTR low byte write enable
   --------------------------------------------------------------------
	dplwe <= '1' when mempsack='1' and instr_dec(76)='1' and cyc2='1' else '0';

   --------------------------------------------------------------------
   -- DPTR high byte write enable
   --------------------------------------------------------------------
	dphwe <= '1' when mempsack='1' and instr_dec(76)='1' and cyc1='1' else '0';

   --------------------------------------------------------------------
   -- Memory to Buffer low write enable
   --------------------------------------------------------------------
	membufflwe <= '1' when (
					instrbuffwe='1' or (cyc2='1' and instr_dec(78)='1')
				) else '0';

   --------------------------------------------------------------------
   -- Memory to Buffer high write enable
   --------------------------------------------------------------------
	membuffhwe <= '1' when cyc1='1' and instr_dec(78)='1' else '0';

   --------------------------------------------------------------------
   -- RAM to Buffer low write enable
   --------------------------------------------------------------------
	rambufflwe <= '1' when cyc2='1' and instr_dec(79)='1' else '0';

   --------------------------------------------------------------------
   -- RAM to Buffer high write enable
   --------------------------------------------------------------------
	rambuffhwe <= '1' when cyc1='1' and instr_dec(79)='1' else '0';

   --------------------------------------------------------------------
   -- Instruction opcode to Buffer high write enable
   --------------------------------------------------------------------
	instrbuffwe <= '1' when cyc1='1' and instr_dec(77)='1' else '0';

   --------------------------------------------------------------------
   -- PC + A count enable
   --------------------------------------------------------------------
	comm1		<= '1' when (cyc1='1' or (cyc2='1' and mempsack='0')) else '0';
	pcaddsel	<= '1' when instr_dec(80)='1' and comm1='1' else '0';

   --------------------------------------------------------------------
   -- DPTR + A count enable
   -- MEMADDR=DPTR+A
   --------------------------------------------------------------------
	dpaddsel <= '1' when (
				dpadde='1' or (instr_dec(81)='1' and comm1='1')) else '0';

	-- TFB added 9/5/03 for common factors ...
	stretchcomm1	<= '1' when
						stretchcount="0011" or
						stretchcount="0100" or
						stretchcount="0101" or
						stretchcount="0110" or
						stretchcount="0111"
						else '0';

	stretchcomm2	<= '1' when
						stretchcomm1='1' or
						stretchcount="1000"
						else '0';

	stretchcomm3	<= '1' when
						stretchcomm2='1' or
						stretchcount="0010"
						else '0';

	stretchcomm4	<= '1' when
						stretchcomm1='1' or
						stretchcount="0010"
						else '0';

   --------------------------------------------------------------------
   -- DPTR select
   -- MEMADDR=DPTR
   --------------------------------------------------------------------
	dpsel <= '1' when (
				instr_dec(82)='1' and
				(cyc1='1' or stretchcomm3='1' or
					(stretchcount="0001" and memacki_int='0')
				)
			) or
			(
				instr_dec(83)='1' and
				(
					(cyc1='1' or cyc2='1' or (memacki_int='0' and movxendff='0')) or
					((stretchcount/="0000") and cyc3='1')
				)
			) else '0';

   --------------------------------------------------------------------
   -- Ri select
   -- MEMADDR low = Ri
   --------------------------------------------------------------------
	risel <= '1' when (
			instr_dec(84)='1' and
			(cyc1='1' or stretchcomm3='1' or
				(stretchcount="0001" and memacki_int='0')
			)
		) or
		(
			instr_dec(85)='1' and
			codefetche='0' and datafetche='0' and debugfetche='0' and
			(cyc1='1' or cyc2='1' or memacki_int='0' or
				(stretchcount/="0000" and cyc3='1')
			)
		) else '0';

   --------------------------------------------------------------------
   -- Buffer to PC write enable
   -- Buffer to Memory Address write enable
   --------------------------------------------------------------------
	buffsel <= '1' when (
				(cyc2='1' and instr_dec(86)='1') or
				(cyc3='1' and instr_dec(87)='1') or
				(cyc5='1' and instr_dec(88)='1')
			) else '0';

   --------------------------------------------------------------------
   -- Rel register write enable
   --------------------------------------------------------------------
	relwe <= '1' when (
				(cyc1='1' and instr_dec(89)='1') or
				(cyc2='1' and instr_dec(90)='1')
			) else '0';

	--------------------------------------------------------------------
	-- Program Counter incremented buffer
	--------------------------------------------------------------------
	process (pc)
	begin
		pc_inc <= pc + "0000000000000001";
	end process;

   --------------------------------------------------------------------
   -- Program Counter added buffer
   --------------------------------------------------------------------
      process (pc, accreg)
      begin
         pc_add <= pc + accreg;
      end process;

   --------------------------------------------------------------------
   -- Program Counter Relative added buffer
   --------------------------------------------------------------------
   pc_rel_hand :
      process (pc, rel)
         variable pc_u2 : SIGNED (16 downto 0);
      begin
         pc_u2  := SIGNED('0'&pc) + SIGNED(rel);
         pc_rel <= STD_LOGIC_VECTOR(pc_u2(15 downto 0));
      end process;

	--------------------------------------------------------------------
	-- sync PC
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			pc <= ADDR_RV;
		elsif clk'event and clk = '1' then
			-- PC=PC+1
			if pcince='1' then
				pc <= pc_inc;
			-- PC=PC+rel
			elsif pcrele='1' then
				pc <= pc_rel;
            -- PC=DPTR+A
            elsif dpadde='1' then
                if (INCL_DPTR1 = 1) then
                    if dps(0)='0' then
                        pc <= dp_add;
                    else
                        pc <= dp1_add;
                    end if;
                else
                    pc <= dp_add;
                end if;
			-- PC=Buffer
			elsif buffsel='1' then
				pc <= addrbuff;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Data Pointer incremented buffer
   --------------------------------------------------------------------
      process (dptr)
      begin
         dp_inc <= dptr + "0000000000000001";
      end process;

   --------------------------------------------------------------------
   -- Data Pointer 1 incremented buffer
   --------------------------------------------------------------------
    dp1_inc_1:
    if (INCL_DPTR1 = 1) generate
      process (dptr1)
      begin
         dp1_inc <= dptr1 + "0000000000000001";
      end process;
    end generate;

   --------------------------------------------------------------------
   -- Data Pointer added buffer
   --------------------------------------------------------------------
      process (dptr, accreg)
      begin
         dp_add <= dptr + accreg;
      end process;

   --------------------------------------------------------------------
   -- Data Pointer 1 added buffer
   --------------------------------------------------------------------
    dp1_add_1:
    if (INCL_DPTR1 = 1) generate
      process (dptr1, accreg)
      begin
         dp1_add <= dptr1 + accreg;
      end process;
    end generate;

	--------------------------------------------------------------------
	-- sync Data Pointer
	--------------------------------------------------------------------
    dptr1_1:
    if (INCL_DPTR1 = 1) generate
        process(clk,nrst)
        begin
            if nrst = '0' then
                dptr( 7 downto 0)    <= DPL_RV;
                dptr(15 downto 8)    <= DPH_RV;
                dptr1( 7 downto 0)    <= DPL1_RV;
                dptr1(15 downto 8)    <= DPH1_RV;
            elsif clk'event and clk = '1' then
                ----------------------------------
                -- Data Pointer increment or load
                ----------------------------------
                -- DPTR=DPTR+1
                if dpince='1' then
                    -- DPTR select
                    if dps(0)='0' then
                        dptr    <= dp_inc;
                    else
                        dptr1    <= dp1_inc;
                    end if;
                elsif dplwe='1' then
                    -- DPTR select
                    if dps(0)='0' then
                        dptr(7 downto 0)    <= memdatai;
                    else
                        dptr1(7 downto 0)    <= memdatai;
                    end if;
                elsif dphwe='1' then
                    -- DPTR select
                    if dps(0)='0' then
                        dptr(15 downto 8)    <= memdatai;
                    else
                        dptr1(15 downto 8)    <= memdatai;
                    end if;
                else
                    ----------------------------------
                    -- Special function register write
                    ----------------------------------
                    if (sfrwe='1' and sfraddr=DPL_ID) then
                        dptr(7 downto 0)    <= sfrdatai;
                    end if;
                    if (sfrwe='1' and sfraddr=DPH_ID) then
                        dptr(15 downto 8)    <= sfrdatai;
                    end if;
                    if (sfrwe='1' and sfraddr=DPL1_ID) then
                        dptr1(7 downto 0)    <= sfrdatai;
                    end if;
                    if (sfrwe='1' and sfraddr=DPH1_ID) then
                        dptr1(15 downto 8)    <= sfrdatai;
                    end if;
                end if;
            end if;
        end process;
    end generate;

    dptr1_0:
    if (INCL_DPTR1 = 0) generate
        process(clk,nrst)
        begin
            if nrst = '0' then
                dptr( 7 downto 0)    <= DPL_RV;
                dptr(15 downto 8)    <= DPH_RV;
            elsif clk'event and clk = '1' then
                ----------------------------------
                -- Data Pointer increment or load
                ----------------------------------
                -- DPTR=DPTR+1
                if dpince='1' then
                    dptr    <= dp_inc;
                elsif dplwe='1' then
                    dptr(7 downto 0)    <= memdatai;
                elsif dphwe='1' then
                    dptr(15 downto 8)    <= memdatai;
                else
                    ----------------------------------
                    -- Special function register write
                    ----------------------------------
                    if (sfrwe='1' and sfraddr=DPL_ID) then
                        dptr(7 downto 0)    <= sfrdatai;
                    end if;
                    if (sfrwe='1' and sfraddr=DPH_ID) then
                        dptr(15 downto 8)    <= sfrdatai;
                    end if;
                end if;
            end if;
        end process;
    end generate;

	--------------------------------------------------------------------
	-- Data Pointer select register write
	--------------------------------------------------------------------
    dps_en_ff_1:
    if (INCL_DPTR1 = 1 and EN_FF_OPTS = 1) generate
        process(clk,nrst)
        begin
            if nrst='0' then
                dps_wrclk    <= '0';
            elsif clk'event and clk='1' then
                if (sfrwe='1' and sfraddr=DPS_ID) then
                    dps_wrclk    <= '1';
                else
                    dps_wrclk    <= '0';
                end if;
            end if;
        end process;
        process(dps_wrclk,nrst)
        begin
            if nrst='0' then
                dps(7 downto 0)    <= DPS_RV;
            elsif dps_wrclk'event and dps_wrclk='1' then
                dps(7 downto 0)    <= sfrdatai;
            end if;
        end process;
    end generate;

    dps_en_ff_0:
    if (INCL_DPTR1 = 1 and EN_FF_OPTS = 0) generate
        process(clk,nrst)
        begin
            if nrst = '0' then
                dps(7 downto 0)  <= DPS_RV;
            elsif clk'event and clk = '1' then
                if (sfrwe='1' and sfraddr=DPS_ID) then
                    dps(7 downto 0) <= sfrdatai;
                end if;
            end if;
        end process;
    end generate;

    --------------------------------------------------------------------
    -- async memaddr
    --------------------------------------------------------------------
    process(pcince, pc_inc, pcrele, pc_rel, pcaddsel, pc_add, dpaddsel,
        dps, dp_add, dp1_add, dpsel, dptr, dptr1, risel, cyc1, ramdatai,
        p2reg, buffsel, addrbuff, pc, DebugPswr, mempsacki, memaddr_i)
    begin
        -- Maintain (dbgmempswr related) memaddr until acknowledge
        -- is received, in case where acknowledge controlled access to
        -- program memory is used (i.e. VARIABLE_WAIT asserted).
        if VARIABLE_WAIT = 1 and DebugPswr = '1' and mempsacki = '0' then
            memaddr_next <= memaddr_i;
        else
            -- ADDR=PC+1
            if pcince='1' then
                memaddr_next <= pc_inc;
            -- ADDR=PC+rel
            elsif pcrele='1' then
                memaddr_next <= pc_rel;
            -- ADDR=PC+A
            elsif pcaddsel='1' then
                memaddr_next <= pc_add;
            -- ADDR=DPTR+A
            elsif dpaddsel='1' then
                if (INCL_DPTR1 = 1) then
                    if dps(0)='0' then
                        memaddr_next <= dp_add;
                    else
                        memaddr_next <= dp1_add;
                    end if;
                else
                    memaddr_next <= dp_add;
                end if;
            -- ADDR=DPTR
            elsif dpsel='1' then
                if (INCL_DPTR1 = 1) then
                    if dps(0)='0' then
                        memaddr_next <= dptr;
                    else
                        memaddr_next <= dptr1;
                    end if;
                else
                    memaddr_next <= dptr;
                end if;
            -- ADDR(low)=Ri
            elsif risel='1' then
                if cyc1='1' then
                    memaddr_next( 7 downto 0) <= ramdatai;
                    if (ADDR_HIGH_P2_SEL = 0) then
                        memaddr_next(15 downto 8) <= p2reg;
                    else
                        memaddr_next(15 downto 8) <= ADDR_HIGH_RI;
                    end if;
                else
                    memaddr_next <= memaddr_i;
                end if;
            -- ADDR=Buffer
            elsif buffsel='1' then
                memaddr_next <= addrbuff;
            -- ADDR=PC
            else
                memaddr_next <= pc;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- sync memaddr
    --------------------------------------------------------------------
    process(clk,nrst)
    begin
        if nrst = '0' then
            memaddr_i <= ADDR_RV;
        elsif clk'event and clk = '1' then
            memaddr_i <= memaddr_next;
        end if;
    end process;

    -- Drive memaddr output with internal signal
    memaddr <= memaddr_i;

	--------------------------------------------------------------------
	-- sync Relative address register
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			rel <= "00000000";
		elsif clk'event and clk = '1' then
			----------------------------------
			-- Relative address register write
			----------------------------------
			if relwe='1' then
				rel <= memdatai;
			end if;
		end if;
	end process;

	--------------------------------------------------------------------
	-- sync addrbuff
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			addrbuff <= "0000000000000000";
		elsif clk'event and clk = '1' then
			-- Interrupt call
			if intcall='1' then
				addrbuff(7 downto 0) <= intvect & "011";
			elsif membufflwe='1' then
				addrbuff(7 downto 0) <= memdatai;
			elsif rambufflwe='1' then
				addrbuff(7 downto 0) <= ramdatai;
			end if;
			-- Interrupt call
			if intcall='1' then
				addrbuff(15 downto 8) <= "00000000";
			elsif membuffhwe='1' then
				addrbuff(15 downto 8) <= memdatai;
			elsif rambuffhwe='1' then
				addrbuff(15 downto 8) <= ramdatai;
			elsif instrbuffwe='1' then
				addrbuff(10 downto 8)  <= instr(7 downto 5);
				addrbuff(15 downto 11) <= pc_inc(15 downto 11);
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Memory to ACC write enable
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			mem2acc <= '0';
		elsif clk'event and clk = '1' then
			if (
					instr_dec(91)='1' and
					(	(stretch_int="000" and cyc1='1') or
						(stretchcount="0010" and cyc2='1') or
						(stretchcount="0001" and memacki_int='0')
					)
				) or
				(
					instr_dec(92)='1' and
					(cyc1='1' or (cyc2='1' and mempsack='0'))
			) then
				mem2acc <= '1';
			else
				if instr_dec(91)='1'
				and stretch_int="000" then
					if memacki_int='1' then
						mem2acc <= '0';
					end if;
				else
					mem2acc <= '0';
				end if;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- RAM to MemAddr write enable
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			ram2memaddr <= '0';
		elsif clk'event and clk = '1' then
			if (instr_dec(84)='1' and
			(stretch_int/="000" and stretch_int/="001" and (cyc1='1' or (cyc2='1' and (
				stretchcomm2='1'
			))))) then
				ram2memaddr <= '1';
			elsif (instr_dec(84)='1' and
			(stretch_int/="000" and (cyc1='1' or (stretch_int/="001" and cyc2='1') or
			(cyc3='1' and (
				stretchcomm1='1'
			))))) then
				ram2memaddr <= '1';
			else
				ram2memaddr <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Program store read enable for MOVC instructions only
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			storefetche <= '0';
		elsif clk'event and clk = '1' then
			if comm1='1' and instr_dec(92)='1' then
				storefetche <= '1';
			else
				storefetche <= '0';
			end if;
		end if;
	end process;

	--------------------------------------------------------------------
	--  Program store read enable
	--  combinational output
	--  high active
	--------------------------------------------------------------------
	process (mempsrdrst, codefetche, debugfetche, datafetche, storefetche)
	begin
		-------------------------------------
		-- Combinational reset
		-------------------------------------
		if mempsrdrst='1' then
			mempsrd <= '0';
		else
			-------------------------------------
			-- Combinational write
			-------------------------------------
			if (codefetche='1' or debugfetche='1' or datafetche='1' or
			storefetche='1') then
				mempsrd <= '1';
			else
				mempsrd <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Progam store write enable
   --  registered output
   --  high active
   --
   -- Progam store write is controlled by the debugger - DebugPswr being
   -- asserted is one of the conditions necessary for mempswr to be
   -- asserted.
   -- Only the debugger can write to program memory; in normal operation
   -- the program memory is read only.
   --------------------------------------------------------------------
    process(clk,nrst)
    begin
        if nrst = '0' then
            mempswr_i <= '0';
            clear_mempswr <= '0';
        elsif clk'event and clk = '1' then
            -- Keep mempswr asserted until acknowledge is received, in case
            -- where acknowledge controlled access to program memory is used
            -- (i.e. when VARIABLE_WAIT asserted).
            if VARIABLE_WAIT = 1 and DebugPswr = '1' and mempswr_i = '1' and mempsacki = '0' then
                mempswr_i <= '1';
                if movxend = '1' then
                    clear_mempswr <= '1';
                end if;
            else
                if (instr_dec(93)='1' and (cyc2='1' or (cyc3='1' and stretchcomm4='1'))) then
                    mempswr_i <= '1';
                else
                    if movxend ='1' or clear_mempswr ='1' then
                        mempswr_i <= '0';
                        clear_mempswr <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Drive mempswr output with internal signal
    mempswr <= mempswr_i;

   --------------------------------------------------------------------
   -- Memory write enable
   --  registered output
   --  high active
   --------------------------------------------------------------------
    process(clk,nrst)
    begin
        if nrst = '0' then
            memwr <= '0';
        elsif clk'event and clk = '1' then
            if ((instr_dec(93)='1' and (cyc2='1' or (cyc3='1' and stretchcomm4='1')))
            and (memaddr_next(15 downto 12) /= "1111")) then
                memwr <= '1';
            else
                if movxend ='1' then
                    memwr <= '0';
                end if;
            end if;
        end if;
    end process;

   --------------------------------------------------------------------
   -- Memory read enable
   --  registered output
   --  high active
   --------------------------------------------------------------------
    process(clk,nrst)
    begin
        if nrst = '0' then
            memrd <= '0';
        elsif clk'event and clk = '1' then
            if (instr_dec(91)='1' and (memaddr_next(15 downto 12) /= "1111")) then
                if cyc1='1' then
                    memrd <= '1';
                else
                    if movxend='1' then
                        memrd <= '0';
                    end if;
                end if;
            else
                memrd <= '0';
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    --  APB interface
    --------------------------------------------------------------------
    -- APB address
    paddr <= memaddr_i(11 downto 0);

    -- APB write data
    gen1:
    if (APB_DWIDTH > 16) generate
        pwdata <= xwb3 & xwb2 & xwb1 & accreg;
    end generate;

    gen2:
    if ((8 < APB_DWIDTH) and (APB_DWIDTH < 17)) generate
        pwdata <= xwb1 & accreg;
    end generate;

    gen3:
    if (APB_DWIDTH < 9) generate
        pwdata <= accreg;
    end generate;

    --------------------------------------------------------------------
    -- "X" SFR registers
    -- These are buffers for APB read and write data in the case where
    -- the APB data width exceeds 8 bits.
    --------------------------------------------------------------------
    -- External write data buffer 1
    gen4:
    if (APB_DWIDTH > 8) generate
        process(clk,nrst)
        begin
            if nrst = '0' then
                xwb1 <= XWB1_RV;
            elsif clk'event and clk = '1' then
                if (sfrwe = '1' and sfraddr = XWB1_ID) then
                    xwb1 <= sfrdatai;
                end if;
            end if;
        end process;
    end generate;
    gen5:
    if (APB_DWIDTH < 9) generate
        xwb1 <= (others => 'X');
    end generate;

    -- External write data buffers 2 and 3
    gen6:
    if (APB_DWIDTH > 16) generate
        process(clk,nrst)
        begin
            if nrst = '0' then
                xwb2 <= XWB2_RV;
            elsif clk'event and clk = '1' then
                if (sfrwe = '1' and sfraddr = XWB2_ID) then
                    xwb2 <= sfrdatai;
                end if;
            end if;
        end process;
        process(clk,nrst)
        begin
            if nrst = '0' then
                xwb3 <= XWB3_RV;
            elsif clk'event and clk = '1' then
                if (sfrwe = '1' and sfraddr = XWB3_ID) then
                    xwb3 <= sfrdatai;
                end if;
            end if;
        end process;
    end generate;
    gen7:
    if (APB_DWIDTH < 17) generate
        xwb2 <= (others => 'X');
        xwb3 <= (others => 'X');
    end generate;

    -- External read data buffer 1
    gen8:
    if (APB_DWIDTH > 8) generate
        process(clk,nrst)
        begin
            if nrst = '0' then
                xrb1 <= XRB1_RV;
            elsif clk'event and clk = '1' then
                if (sfrwe = '1' and sfraddr = XRB1_ID) then
                    xrb1 <= sfrdatai;
                elsif ((psel_i = '1') and (pwrite_i = '0') and (penable_i = '1') and (pready = '1')) then
                    xrb1 <= prdata(15 downto 8);
                end if;
            end if;
        end process;
    end generate;
    gen9:
    if (APB_DWIDTH < 9) generate
        xrb1 <= (others => 'X');
    end generate;

    -- External read data buffers 2 and 3
    gen10:
    if (APB_DWIDTH > 16) generate
        process(clk,nrst)
        begin
            if nrst = '0' then
                xrb2 <= XRB2_RV;
            elsif clk'event and clk = '1' then
                if (sfrwe = '1' and sfraddr = XRB2_ID) then
                    xrb2 <= sfrdatai;
                elsif ((psel_i = '1') and (pwrite_i = '0') and (penable_i = '1') and (pready = '1')) then
                    xrb2 <= prdata(23 downto 16);
                end if;
            end if;
        end process;
        process(clk,nrst)
        begin
            if nrst = '0' then
                xrb3 <= XRB3_RV;
            elsif clk'event and clk = '1' then
                if (sfrwe = '1' and sfraddr = XRB3_ID) then
                    xrb3 <= sfrdatai;
                elsif ((psel_i = '1') and (pwrite_i = '0') and (penable_i = '1') and (pready = '1')) then
                    xrb3 <= prdata(31 downto 24);
                end if;
            end if;
        end process;
    end generate;
    gen11:
    if (APB_DWIDTH < 17) generate
        xrb2 <= (others => 'X');
        xrb3 <= (others => 'X');
    end generate;

	--------------------------------------------------------------------
	--  Stretch count
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			stretchcount <= "0000";
		elsif clk'event and clk = '1' then
			if instr_dec(93)='1' and
			cyc2='1' then
				stretchcount <= '0'&stretch_int;
			else
				if memacki_int='0' and stretchcount="0001" then
					stretchcount <= "0001";
				else
					if stretchcount/="0000" and cyc3='1' then
						stretchcount <= stretchcount -"0001";
					end if;
				end if;
				if instr_dec(91)='1'
				and cyc1='1' then
					if stretch_int="111" then
						stretchcount <= "1000";
					else
						stretchcount(2 downto 0) <= stretch_int+"001";
						stretchcount(3) <='0';
					end if;
				else
					if memacki_int = '0' and  stretchcount = "0001" then
						stretchcount <= "0001";
					else
						if stretchcount /= "0000" and cyc2='1' then
							stretchcount <= stretchcount - "0001";
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;

	--------------------------------------------------------------------
	-- sync movxendff
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			movxendff <= '0';
		elsif clk'event and clk = '1' then
			if (movxend='1' and instr_dec(93)='1') then
				movxendff <= '1';
			elsif (mempsack='1' and (codefetche='1' or debugfetche='1')) then
				movxendff <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- memack to CPU
   --------------------------------------------------------------------
	movxwait <=	'1' when (memacki_int='1' and stretchcount="0001" and
					instr_dec(91)='1') else
				'0' when (memacki_int='0' and stretch_int="000" and cyc3='1' and
					instr_dec(93)='1') else
				'1' when  stretchcount="0000" else
				'0';

   --------------------------------------------------------------------
   -- memack to CPU
   --------------------------------------------------------------------
      memack <= '0' when (movxwait ='0' or
                          (memacki_int='0' and stretchcount="0001")) else
                '1';

   --------------------------------------------------------------------
   -- End of external access to data memory
   --------------------------------------------------------------------
	movxend <= '1' when (
				memacki_int='1' and (
					stretchcount="0001" or
					(stretch_int="000" and cyc3='1' and instr_dec(93)='1'))
				) else '0';

   --------------------------------------------------------------------
   -- Memory Data Bus output
   --------------------------------------------------------------------
      memdatao <= accreg;

    --------------------------------------------------------------------
    -- Special Function registers read
    --------------------------------------------------------------------
    dptr1_dps_1:
    if (INCL_DPTR1 = 1) generate
        sfrdatamcu <=
            dptr( 7 downto 0) when sfraddr=DPL_ID else
            dptr(15 downto 8) when sfraddr=DPH_ID else
            dptr1( 7 downto 0) when sfraddr=DPL1_ID else
            dptr1(15 downto 8) when sfraddr=DPH1_ID else
            dps               when sfraddr=DPS_ID  else
            xwb1( 7 downto 0) when sfraddr=XWB1_ID else
            xwb2( 7 downto 0) when sfraddr=XWB2_ID else
            xwb3( 7 downto 0) when sfraddr=XWB3_ID else
            xrb1( 7 downto 0) when sfraddr=XRB1_ID else
            xrb2( 7 downto 0) when sfraddr=XRB2_ID else
            xrb3( 7 downto 0) when sfraddr=XRB3_ID else
            "00000000";
    end generate;
    dptr1_dps_0:
    if (INCL_DPTR1 = 0) generate
        sfrdatamcu <=
            dptr( 7 downto 0) when sfraddr=DPL_ID else
            dptr(15 downto 8) when sfraddr=DPH_ID else
            xwb1( 7 downto 0) when sfraddr=XWB1_ID else
            xwb2( 7 downto 0) when sfraddr=XWB2_ID else
            xwb3( 7 downto 0) when sfraddr=XWB3_ID else
            xrb1( 7 downto 0) when sfraddr=XRB1_ID else
            xrb2( 7 downto 0) when sfraddr=XRB2_ID else
            xrb3( 7 downto 0) when sfraddr=XRB3_ID else
            "00000000";
    end generate;

end RTL;
