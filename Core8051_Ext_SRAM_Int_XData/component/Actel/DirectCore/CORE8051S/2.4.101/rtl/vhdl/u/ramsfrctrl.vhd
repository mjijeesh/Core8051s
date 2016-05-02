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
-- name:		ramsfrctrl.vhd
-- function:	256 byte data memory control unit, and Special Function
--				Register (SFR) control logic
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."+";
use IEEE.std_logic_unsigned."-";
use work.Core8051_utility.all;

entity RAM_SFR_CONTROL is
generic (
	-- set this to number of instruction decodes
	INSTR_DECNUM	: integer := 119
);
port (
    -- Global control signals inputs
    clk            : in  STD_LOGIC;  -- Global clock input
    nrst           : in  STD_LOGIC;  -- Global reset input

    -- External memory read/write acknowledge input
    mempsack       : in  STD_LOGIC;

    -- CPU input signals
    instr          : in  STD_LOGIC_VECTOR(7 downto 0);
    codefetche     : in  STD_LOGIC;
    debugfetche    : in  STD_LOGIC;

    -- ISR input signal
    intreq         : in  STD_LOGIC; -- interrupt request

    -- RAM and SFR input signals
    regsbank       : in  STD_LOGIC_VECTOR(1 downto 0);
    accreg         : in  STD_LOGIC_VECTOR(7 downto 0);
    aluresult      : in  STD_LOGIC_VECTOR(7 downto 0);

    -- Memory Control input signals
    pclreg         : in  STD_LOGIC_VECTOR(7 downto 0);
    pchreg         : in  STD_LOGIC_VECTOR(7 downto 0);

    -- Memory interface
    memdatai       : in  STD_LOGIC_VECTOR(7 downto 0);
    ram2memaddr    : in  STD_LOGIC; -- RAM to MemAddr write enable

    -- Internal SFR Bus
    ramsfrdata     : out STD_LOGIC_VECTOR(7 downto 0);

    -- RAM and SFR address bus
    ramsfraddr     : out STD_LOGIC_VECTOR(7 downto 0);
    ramsfraddr_e   : out STD_LOGIC_VECTOR(7 downto 0);

    -- Data file interface
    ramdatai       : in  STD_LOGIC_VECTOR(7 downto 0);
    ramdatao       : out STD_LOGIC_VECTOR(7 downto 0);
    ramwe          : out STD_LOGIC;  -- Data file write enable
    ramoe          : out STD_LOGIC;  -- Data file output enable
    ramoe_e        : out STD_LOGIC;  -- Data file output enable (early version)

    -- Special function register interface
    sfrdataalu     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataclk     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataisr     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatamcu     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataports   : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataser0    : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatatim     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataext     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatao       : out STD_LOGIC_VECTOR(7 downto 0);
    sfrwe          : out STD_LOGIC;  -- SFR write enable
    sfroe          : out STD_LOGIC;  -- SFR output enable

	-- decode vector (bit-order reversed on purpose!)
    instr_dec		:	in	std_logic_vector(0 to INSTR_DECNUM-1);

	-- cycle decodes ...
    cyc1			: in  std_logic;
    cyc2			: in  std_logic;
    cyc3			: in  std_logic;
    cyc4			: in  std_logic;
    ramdata2memctrl : out std_logic_vector(7 downto 0)
);
end RAM_SFR_CONTROL;

--*******************************************************************--

   architecture RTL of RAM_SFR_CONTROL is

      -- Stack Pointer Register
      signal sp               : STD_LOGIC_VECTOR(7 downto 0);
      signal sp_inc           : STD_LOGIC_VECTOR(7 downto 0);
      signal sp_dec           : STD_LOGIC_VECTOR(7 downto 0);
      signal spince           : STD_LOGIC;
      signal spdece           : STD_LOGIC;

      -- RAM and SFR address drivers
      signal ram_sfr_address  : STD_LOGIC_VECTOR(7 downto 0);
      signal sfr_address      : STD_LOGIC_VECTOR(6 downto 0);
      signal sfr_bus          : STD_LOGIC_VECTOR(7 downto 0);

      -- RAM and SFR data drivers
      signal datareg          : STD_LOGIC_VECTOR(7 downto 0);
      signal sfr_datao        : STD_LOGIC_VECTOR(7 downto 0);
      signal ram_datao        : STD_LOGIC_VECTOR(7 downto 0);
      signal ram_sfr_data     : STD_LOGIC_VECTOR(7 downto 0);


      -- RAM and SFR control drivers
      signal ram_oe           : STD_LOGIC;
      signal ram_we           : STD_LOGIC;
      signal sfr_oe           : STD_LOGIC;
      signal sfr_we           : STD_LOGIC;

      -- Data Bus access signals
      signal db_accreg        : STD_LOGIC;
      signal db_aluresult     : STD_LOGIC;
      signal db_pclreg        : STD_LOGIC;
      signal db_pchreg        : STD_LOGIC;

-- TFB additions 9/8/03
signal ram_oe_write_dec:		std_logic_vector(4 downto 0);
signal ram_oe_async:			std_logic;
signal ram_we_write_dec:		std_logic_vector(11 downto 0);
signal ram_we_async:			std_logic;
signal sfr_oe_write_dec:		std_logic_vector(2 downto 0);
signal sfr_oe_async:			std_logic;
signal sfr_we_write_dec:		std_logic_vector(3 downto 0);
signal sfr_we_async:			std_logic;
signal ram_sfr_address_async:	std_logic_vector(7 downto 0);
signal ram_sfr_address_write_dec:std_logic_vector(12 downto 0);
signal db_accreg_async:			std_logic;
signal db_accreg_write_dec:		std_logic_vector(3 downto 0);
signal db_aluresult_async:		std_logic;
signal db_aluresult_write_dec:	std_logic_vector(5 downto 0);
signal db_pclreg_async:			std_logic;
signal db_pclreg_write_dec:		std_logic_vector(1 downto 0);
signal db_pchreg_async:			std_logic;
signal db_pchreg_write_dec:		std_logic_vector(1 downto 0);
signal datareg_async:			std_logic_vector(7 downto 0);
signal datareg_write_dec:		std_logic_vector(8 downto 0);

signal bypass               : std_logic_vector(7 DOWNTO 0);
signal use_bypass_async     : std_logic;
signal use_bypass           : std_logic;
signal ramdatain            : std_logic_vector(7 DOWNTO 0);


begin

   --------------------------------------------------------------------
   -- RAM and SFR address bus
   --------------------------------------------------------------------
      ramsfraddr <= ram_sfr_address;

   --------------------------------------------------------------------
   -- SFR data in bus
   --------------------------------------------------------------------
      ramsfrdata    <= ram_sfr_data;

   --------------------------------------------------------------------
   -- SFR data out bus
   --------------------------------------------------------------------
      sfrdatao    <= sfr_datao;

   --------------------------------------------------------------------
   -- RAM data out bus
   --------------------------------------------------------------------
      ramdatao    <= ram_datao;

   --------------------------------------------------------------------
   -- Data file interface
   -- Data file output enable
   --------------------------------------------------------------------
      ramoe      <= ram_oe;

   --------------------------------------------------------------------
   -- Data file interface
   -- Data file write enable
   --------------------------------------------------------------------
      ramwe      <= ram_we;

   --------------------------------------------------------------------
   -- Special function register interface
   -- SFR output enable
   --------------------------------------------------------------------
      sfroe      <= sfr_oe;

   --------------------------------------------------------------------
   -- Special function register interface
   -- SFR write enable
   --------------------------------------------------------------------
      sfrwe      <= sfr_we;

   --------------------------------------------------------------------
   -- Stack Pointer increment enable
   --------------------------------------------------------------------
      spince <=
         '1' when mempsack='1' and
              (
                 (memdatai=ACALL_0 and (codefetche='1' or debugfetche='1')) or
                 (memdatai=ACALL_1 and (codefetche='1' or debugfetche='1')) or
                 (memdatai=ACALL_2 and (codefetche='1' or debugfetche='1')) or
                 (memdatai=ACALL_3 and (codefetche='1' or debugfetche='1')) or
                 (memdatai=ACALL_4 and (codefetche='1' or debugfetche='1')) or
                 (memdatai=ACALL_5 and (codefetche='1' or debugfetche='1')) or
                 (memdatai=ACALL_6 and (codefetche='1' or debugfetche='1')) or
                 (memdatai=ACALL_7 and (codefetche='1' or debugfetche='1')) or
                 (memdatai=LCALL   and (codefetche='1' or debugfetche='1')) or
                  -- LCALL
                 (intreq='1'       and (codefetche='1' or debugfetche='1')) or
                 (instr=PUSH       and cyc1='1') or
                 (instr=ACALL_0    and cyc1='1') or
                 (instr=ACALL_1    and cyc1='1') or
                 (instr=ACALL_2    and cyc1='1') or
                 (instr=ACALL_3    and cyc1='1') or
                 (instr=ACALL_4    and cyc1='1') or
                 (instr=ACALL_5    and cyc1='1') or
                 (instr=ACALL_6    and cyc1='1') or
                 (instr=ACALL_7    and cyc1='1') or
                 (instr=LCALL      and cyc1='1')
              ) else
         '0';

   --------------------------------------------------------------------
   -- Stack Pointer decrement enable
   --------------------------------------------------------------------
      spdece <=
         '1' when
              (
                (mempsack='1' and
                   (
                     (memdatai=RET  and (codefetche='1' or debugfetche='1')) or
                     (memdatai=RETI and (codefetche='1' or debugfetche='1'))
                   )
                ) or
                (instr=RET     and cyc1='1') or
                (instr=RETI    and cyc1='1') or
                (instr=POP     and cyc2='1')
              ) else
         '0';

   --------------------------------------------------------------------
   -- Stack Pointer increment vector
   --------------------------------------------------------------------
      sp_inc <=
         sfr_datao + "00000001" when (sfr_we='1' and
                               ram_sfr_address='1'&SP_ID) else
         sp + "00000001";

   --------------------------------------------------------------------
   -- Stack Pointer decrement vector
   --------------------------------------------------------------------
      sp_dec <=
         sfr_datao - "00000001" when (sfr_we='1' and
                               ram_sfr_address='1'&SP_ID) else
         sp - "00000001";

   --------------------------------------------------------------------
   -- sync Stack Pointer
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			sp <= SP_RV;
		elsif clk'event and clk = '1' then
			----------------------------------
			-- Special function register write
			----------------------------------
			if spince='1' then
				sp <= sp_inc;
			elsif spdece='1' then
				sp <= sp_dec;
			elsif (sfr_we='1' and ram_sfr_address(6 downto 0)=SP_ID) then
				sp <= sfr_datao;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Data file output enable
   --------------------------------------------------------------------
	-- TFB added 9/8/03
	ram_oe_write_dec	<= cyc1 & cyc2 & instr_dec(94 to 96);

	ram_oe_proc:
	process(ram_oe,mempsack,codefetche,debugfetche,memdatai,ram2memaddr,
	ram_oe_write_dec)
	variable ram_oe_var:	std_logic;
	begin
		ram_oe_var:= ram_oe;
		if mempsack='1' then
			if codefetche='1' or debugfetche='1' then
				case memdatai is
				when
				ADD_IR0       | ADD_IR1       |
				ADDC_IR0      | ADDC_IR1      |
				INC_IR0       | INC_IR1       |
				DEC_IR0       | DEC_IR1       |
				ANL_A_IR0     | ANL_A_IR1     |
				ORL_A_IR0     | ORL_A_IR1     |
				XRL_A_IR0     | XRL_A_IR1     |
				MOV_A_IR0     | MOV_A_IR1     |
				MOV_ADDR_IR0  | MOV_ADDR_IR1  |
				MOV_IR0_A     | MOV_IR1_A     |
				MOV_IR0_N     | MOV_IR1_N     |
				XCH_IR0       | XCH_IR1       |
				XCHD_IR0      | XCHD_IR1      |
				CJNE_IR0_N    | CJNE_IR1_N    |
				ADD_R0        | ADD_R1        |
				ADD_R2        | ADD_R3        |
				ADD_R4        | ADD_R5        |
				ADD_R6        | ADD_R7        |
				ADDC_R0       | ADDC_R1       |
				ADDC_R2       | ADDC_R3       |
				ADDC_R4       | ADDC_R5       |
				ADDC_R6       | ADDC_R7       |
				SUBB_IR0      | SUBB_IR1      |
				SUBB_R0       | SUBB_R1       |
				SUBB_R2       | SUBB_R3       |
				SUBB_R4       | SUBB_R5       |
				SUBB_R6       | SUBB_R7       |
				INC_R0        | INC_R1        |
				INC_R2        | INC_R3        |
				INC_R4        | INC_R5        |
				INC_R6        | INC_R7        |
				DEC_R0        | DEC_R1        |
				DEC_R2        | DEC_R3        |
				DEC_R4        | DEC_R5        |
				DEC_R6        | DEC_R7        |
				ANL_A_R0      | ANL_A_R1      |
				ANL_A_R2      | ANL_A_R3      |
				ANL_A_R4      | ANL_A_R5      |
				ANL_A_R6      | ANL_A_R7      |
				ORL_A_R0      | ORL_A_R1      |
				ORL_A_R2      | ORL_A_R3      |
				ORL_A_R4      | ORL_A_R5      |
				ORL_A_R6      | ORL_A_R7      |
				XRL_A_R0      | XRL_A_R1      |
				XRL_A_R2      | XRL_A_R3      |
				XRL_A_R4      | XRL_A_R5      |
				XRL_A_R6      | XRL_A_R7      |
				MOV_A_R0      | MOV_A_R1      |
				MOV_A_R2      | MOV_A_R3      |
				MOV_A_R4      | MOV_A_R5      |
				MOV_A_R6      | MOV_A_R7      |
				MOV_R0_A      | MOV_R1_A      |
				MOV_R2_A      | MOV_R3_A      |
				MOV_R4_A      | MOV_R5_A      |
				MOV_R6_A      | MOV_R7_A      |
				MOV_ADDR_R0   | MOV_ADDR_R1   |
				MOV_ADDR_R2   | MOV_ADDR_R3   |
				MOV_ADDR_R4   | MOV_ADDR_R5   |
				MOV_ADDR_R6   | MOV_ADDR_R7   |
				XCH_R0        | XCH_R1        |
				XCH_R2        | XCH_R3        |
				XCH_R4        | XCH_R5        |
				XCH_R6        | XCH_R7        |
				CJNE_R0_N     | CJNE_R1_N     |
				CJNE_R2_N     | CJNE_R3_N     |
				CJNE_R4_N     | CJNE_R5_N     |
				CJNE_R6_N     | CJNE_R7_N     |
				DJNZ_R0       | DJNZ_R1       |
				DJNZ_R2       | DJNZ_R3       |
				DJNZ_R4       | DJNZ_R5       |
				DJNZ_R6       | DJNZ_R7       |
				MOVX_A_IR0    | MOVX_A_IR1    |
				MOVX_IR0_A    | MOVX_IR1_A    |
				RET           | RETI          |
				POP =>
					ram_oe_var:= '1';
				when others =>
					ram_oe_var:= '0';
				end case;
			elsif ram2memaddr='1' then
				ram_oe_var:= '1';
			else
				case ram_oe_write_dec is
				when "10100"|"01001" =>
					ram_oe_var:= '1';
				when "10010"|"10001" =>
					if memdatai(7)='0' then
						ram_oe_var:= '1';
					else
						ram_oe_var:= '0';
					end if;
				when others =>
					ram_oe_var:= '0';
				end case;
			end if;
		end if;
		ram_oe_async	<= ram_oe_var;
	end process;

	-- sync ram_oe process
	process(clk,nrst)
	begin
		if nrst = '0' then
			ram_oe	<= '0';
		elsif clk'event and clk = '1' then
			ram_oe	<= ram_oe_async;
		end if;
	end process;

    -- Early version of ramoe used for reading internal RAM.
    -- This to improve operating frequency in ProASIC3/E and Fusion
    -- devices in which internal RAMs can only be read synchronously.
    -- Negate read enable to internal RAM if attempting to read and
    -- write same address (bypass register will be used in this case).
	process(use_bypass_async, ram_oe_async)
    begin
        if (use_bypass_async = '1') then
            ramoe_e <= '0';
        else
            ramoe_e <= ram_oe_async;
        end if;
    end process;

   --------------------------------------------------------------------
   -- Data file write enable
   --------------------------------------------------------------------
	-- TFB added 9/9/03
	ram_we_write_dec	<= cyc1 & cyc2 & cyc3 & cyc4 &
							instr_dec(88) & instr_dec(96 to 102);

	ram_we_proc:
	process(ram_we,mempsack,ram_we_write_dec,ram_sfr_address)
	variable ram_we_var:	std_logic;
	begin
		ram_we_var:= ram_we;
		if mempsack='1' then
			case ram_we_write_dec is
			--(cyc1 and 102) or (cyc1 and 97)
			when "100000100000"|"100000000001" =>
				ram_we_var:= '1';
			--(cyc2 and 98) or (cyc2 and 88)
			when "010010000000"|"010000010000" =>
				ram_we_var:= '1';
			--(cyc2 and 99)
			when "010000001000" =>
				if ram_sfr_address(7)='0' then
					ram_we_var:= '1';
				else
					ram_we_var:= '0';
				end if;
			--(cyc3 and 102) or (cyc3 and 100)
			when "001000000100"|"001000000001" =>
				ram_we_var:= '1';
			--(cyc3 and 101)
			when "001000000010" =>
				if ram_sfr_address(7)='0' then
					ram_we_var:= '1';
				else
					ram_we_var:= '0';
				end if;
			--(cyc4 and 88) or (cyc4 and 96)
			when "000110000000"|"000101000000" =>
				ram_we_var:= '1';
			when others =>
				ram_we_var:= '0';
			end case;
		else
			ram_we_var:= '0';
		end if;
		ram_we_async	<= ram_we_var;
	end process;

	-- sync ram_we process
	process(clk,nrst)
	begin
		if nrst = '0' then
			ram_we	<= '0';
		elsif clk'event and clk = '1' then
			ram_we	<= ram_we_async;
		end if;
	end process;

   --------------------------------------------------------------------
   -- SFR output enable
   --------------------------------------------------------------------
	-- TFB added 9/9/03
	sfr_oe_write_dec	<= cyc1 & instr_dec(95 to 96);

	sfr_oe_proc:
	process(sfr_oe,mempsack,sfr_oe_write_dec,memdatai)
	variable sfr_oe_var:	std_logic;
	begin
		sfr_oe_var:= sfr_oe;
		if mempsack='1' then
			case sfr_oe_write_dec is
			when "110"|"101" =>
				if memdatai(7)='1' then
					sfr_oe_var := '1';
				else
					sfr_oe_var := '0';
				end if;
			when others =>
					sfr_oe_var := '0';
			end case;
		end if;
		sfr_oe_async	<= sfr_oe_var;
	end process;

	-- sync sfr_oe process
	process(clk,nrst)
	begin
		if nrst = '0' then
			sfr_oe	<= '0';
		elsif clk'event and clk = '1' then
			sfr_oe	<= sfr_oe_async;
		end if;
	end process;

   --------------------------------------------------------------------
   -- SFR write enable
   --------------------------------------------------------------------
	-- TFB added 9/9/03
	sfr_we_write_dec	<= cyc2 & cyc3 & instr_dec(99) & instr_dec(101);

	sfr_we_proc:
	process(sfr_we,mempsack,sfr_we_write_dec,ram_sfr_address)
	variable sfr_we_var:	std_logic;
	begin
		sfr_we_var:= sfr_we;
		if mempsack='1' then
			case sfr_we_write_dec is
			when "1010" =>
				if ram_sfr_address(7)='1' then
					sfr_we_var := '1';
				else
					sfr_we_var := '0';
				end if;
			when "0101" =>
				if ram_sfr_address(7)='1' then
					sfr_we_var := '1';
				else
					sfr_we_var := '0';
				end if;
			when others =>
				sfr_we_var := '0';
			end case;
		else
			sfr_we_var := '0';
		end if;
		sfr_we_async	<= sfr_we_var;
	end process;

	-- sync sfr_we process
	process(clk,nrst)
	begin
		if nrst = '0' then
			sfr_we	<= '0';
		elsif clk'event and clk = '1' then
			sfr_we	<= sfr_we_async;
		end if;
	end process;

   --------------------------------------------------------------------
   -- RAM/SFR address
   --------------------------------------------------------------------
 	-- TFB added 11/9/03
	ram_sfr_address_write_dec	<= cyc1 & cyc2 & cyc3 &
									 instr_dec(109) & instr_dec(103) &
									 instr_dec(96) & instr_dec(104) &
									 instr_dec(105) & instr_dec(79) &
									 instr_dec(88) & instr_dec(106) &
									 instr_dec(107) & instr_dec(108);

	ram_sfr_address_proc:
	process(ram_sfr_address,mempsack,codefetche,debugfetche,memdatai,
	sfr_we,sfr_datao,regsbank,sp,ramdatain,datareg,instr,
	ram_sfr_address_write_dec)
	variable ram_sfr_address_var: std_logic_vector(7 downto 0);
	begin
		ram_sfr_address_var:= ram_sfr_address;
		if codefetche='1' or debugfetche='1' then
			if mempsack='1' then
				case memdatai is
				when
				ADD_IR0       | ADD_IR1       |
				ADDC_IR0      | ADDC_IR1      |
				SUBB_IR0      | SUBB_IR1      |
				INC_IR0       | INC_IR1       |
				DEC_IR0       | DEC_IR1       |
				ORL_A_IR0     | ORL_A_IR1     |
				ANL_A_IR0     | ANL_A_IR1     |
				XRL_A_IR0     | XRL_A_IR1     |
				MOV_A_IR0     | MOV_A_IR1     |
				MOV_ADDR_IR0  | MOV_ADDR_IR1  |
				MOV_IR0_A     | MOV_IR1_A     |
				MOV_IR0_N     | MOV_IR1_N     |
				XCH_IR0       | XCH_IR1       |
				XCHD_IR0      | XCHD_IR1      |
				CJNE_IR0_N    | CJNE_IR1_N    |
				MOVX_A_IR0    | MOVX_A_IR1    |
				MOVX_IR0_A    | MOVX_IR1_A    =>
					if ram_sfr_address='1'&PSW_ID and sfr_we='1' then
						-- PSW write
						ram_sfr_address_var := "000"&sfr_datao(4 downto 3)&
						"00" & memdatai(0);
					else
						ram_sfr_address_var := "000" & regsbank &
						"00" & memdatai(0);
					end if;
				when
				ADD_R0        | ADD_R1        |
				ADD_R2        | ADD_R3        |
				ADD_R4        | ADD_R5        |
				ADD_R6        | ADD_R7        |
				ADDC_R0       | ADDC_R1       |
				ADDC_R2       | ADDC_R3       |
				ADDC_R4       | ADDC_R5       |
				ADDC_R6       | ADDC_R7       |
				SUBB_R0       | SUBB_R1       |
				SUBB_R2       | SUBB_R3       |
				SUBB_R4       | SUBB_R5       |
				SUBB_R6       | SUBB_R7       |
				INC_R0        | INC_R1        |
				INC_R2        | INC_R3        |
				INC_R4        | INC_R5        |
				INC_R6        | INC_R7        |
				DEC_R0        | DEC_R1        |
				DEC_R2        | DEC_R3        |
				DEC_R4        | DEC_R5        |
				DEC_R6        | DEC_R7        |
				ORL_A_R0      | ORL_A_R1      |
				ORL_A_R2      | ORL_A_R3      |
				ORL_A_R4      | ORL_A_R5      |
				ORL_A_R6      | ORL_A_R7      |
				ANL_A_R0      | ANL_A_R1      |
				ANL_A_R2      | ANL_A_R3      |
				ANL_A_R4      | ANL_A_R5      |
				ANL_A_R6      | ANL_A_R7      |
				XRL_A_R0      | XRL_A_R1      |
				XRL_A_R2      | XRL_A_R3      |
				XRL_A_R4      | XRL_A_R5      |
				XRL_A_R6      | XRL_A_R7      |
				MOV_A_R0      | MOV_A_R1      |
				MOV_A_R2      | MOV_A_R3      |
				MOV_A_R4      | MOV_A_R5      |
				MOV_A_R6      | MOV_A_R7      |
				MOV_R0_A      | MOV_R1_A      |
				MOV_R2_A      | MOV_R3_A      |
				MOV_R4_A      | MOV_R5_A      |
				MOV_R6_A      | MOV_R7_A      |
				MOV_R0_N      | MOV_R1_N      |
				MOV_R2_N      | MOV_R3_N      |
				MOV_R4_N      | MOV_R5_N      |
				MOV_R6_N      | MOV_R7_N      |
				MOV_ADDR_R0   | MOV_ADDR_R1   |
				MOV_ADDR_R2   | MOV_ADDR_R3   |
				MOV_ADDR_R4   | MOV_ADDR_R5   |
				MOV_ADDR_R6   | MOV_ADDR_R7   |
				XCH_R0        | XCH_R1        |
				XCH_R2        | XCH_R3        |
				XCH_R4        | XCH_R5        |
				XCH_R6        | XCH_R7        |
				CJNE_R0_N     | CJNE_R1_N     |
				CJNE_R2_N     | CJNE_R3_N     |
				CJNE_R4_N     | CJNE_R5_N     |
				CJNE_R6_N     | CJNE_R7_N     |
				DJNZ_R0       | DJNZ_R1       |
				DJNZ_R2       | DJNZ_R3       |
				DJNZ_R4       | DJNZ_R5       |
				DJNZ_R6       | DJNZ_R7       =>
					if ram_sfr_address='1'&PSW_ID and sfr_we='1' then
						-- PSW write
						ram_sfr_address_var := "000"&sfr_datao(4 downto 3)&
						memdatai(2 downto 0);
					else
						ram_sfr_address_var :="000" & regsbank &
						memdatai(2 downto 0);
					end if;
				when
				POP           |
				RET           | RETI          =>
					if (ram_sfr_address='1'&SP_ID and sfr_we='1') then
						-- SP write
						ram_sfr_address_var := sfr_datao;
					else
						ram_sfr_address_var := sp;
					end if;
				when others =>
					ram_sfr_address_var := ram_sfr_address;
				end case;
			end if;
		else
			case ram_sfr_address_write_dec is
			--(cyc1 and (109 or 103))
			when "1001000000000"|"1000100000000"=>
					if mempsack='1' then
						ram_sfr_address_var := ramdatain;
					end if;
			--(cyc1 and (96 or 108 or 107 or 106 or 104))
			when "1000010000000"|"1000000000001"|"1000000000010"|
			"1000000000100"|"1000001000000" =>
					if mempsack='1' then
						ram_sfr_address_var := memdatai;
					end if;
			--(cyc1 and 105 (really, 54))
			when "1000000100000"=>
					if mempsack='1' then
						if memdatai(7) = '0' then
							ram_sfr_address_var := "0010"&
							memdatai(6 downto 3);
						else
							ram_sfr_address_var :='1'&memdatai(6 downto 3)&
							"000";
						end if;
					end if;
			--(cyc1 and (79 or 88))
			when "1000000010000"|"1000000001000"=>
					ram_sfr_address_var := sp;
			--(cyc2 and 96)
			when "0100010000000"=>
					ram_sfr_address_var := "000"&regsbank&"00"&instr(0);
			--(cyc2 and 106)
			when "0100000000100"=>
					ram_sfr_address_var := "000"&regsbank&instr(2 downto 0);
			--(cyc2 and 107)
			when "0100000000010"=>
					if mempsack='1' then
						ram_sfr_address_var := memdatai;
					end if;
			--(cyc2 and 108)
			when "0100000000001"=>
					ram_sfr_address_var := sp;
			--(cyc2 and 109)
			when "0101000000000"=>
					ram_sfr_address_var := datareg;
			--(cyc3 and 96)
			when "0010010000000"=>
					ram_sfr_address_var := ramdatain;
			--(cyc3 and 88)
			when "0010000001000"=>
					ram_sfr_address_var := sp;
			when others =>
				ram_sfr_address_var := ram_sfr_address;
			end case;
		end if;
		ram_sfr_address_async <= ram_sfr_address_var;
	end process;

	-- sync ram_sfr_address process
	process(clk,nrst)
	begin
		if nrst = '0' then
			ram_sfr_address <= RAM_SFR_ADDR_RV;
		elsif clk'event and clk = '1' then
			ram_sfr_address	<= ram_sfr_address_async;
		end if;
	end process;

    -- Early version of ramsfraddr used for reading internal RAM.
    -- This to improve operating frequency in ProASIC3/E and Fusion
    -- devices in which internal RAMs can only be read synchronously.
    ramsfraddr_e <= ram_sfr_address_async;

    -- Internal RAM bypass register.
    -- This is used to facilitate reading from a location which has just
    -- been written to.
    -- (Can't write to and read from a RAM location at the same time,
    -- remember we are using "early" address for read.)
    process (clk, nrst)
    begin
        if (nrst = '0') then
            bypass <= "00000000" ;
        elsif (clk'event and clk = '1') then
            bypass <= ram_datao ;
        end if;
    end process;

    -- use_bypass_async is asserted when the (early) read and write addresses
    -- to internal RAM are equal and a write is occurring.
    use_bypass_async <= '1' when ((ram_sfr_address_async = ram_sfr_address)
                                and (ram_we = '1'))
                        else '0';

    -- registered version of use_bypass_async
    process (clk, nrst)
    begin
        if (nrst = '0') then
            use_bypass <= '0' ;
        elsif (clk'event and clk = '1') then
            use_bypass <= use_bypass_async ;
        end if;
    end process;

    -- Internal RAM read data mux
    process (use_bypass, bypass, ramdatai)
    begin
        if (use_bypass = '1') then
            ramdatain <= bypass;
        else
            ramdatain <= ramdatai;
        end if;
    end process;

    -- RAM data in bus to memctrl
    ramdata2memctrl <= ramdatain;

	--------------------------------------------------------------------
	-- Data Bus access reg
	--------------------------------------------------------------------
 	-- TFB added 11/9/03
	db_accreg_write_dec	<= cyc1 & cyc2 & instr_dec(110) & instr_dec(111);

	db_accreg_proc:
	process(db_accreg,db_accreg_write_dec)
	variable db_accreg_var:	std_logic;
	begin
		db_accreg_var:= db_accreg;
		case db_accreg_write_dec is
		when "1010"|"0101" =>
			db_accreg_var := '1';
		when others =>
			db_accreg_var := '0';
		end case;
		db_accreg_async <= db_accreg_var;
	end process;

	-- sync db_accreg
	process(clk,nrst)
	begin
		if nrst = '0' then
			db_accreg <= '0';
		elsif clk'event and clk = '1' then
			db_accreg <= db_accreg_async;
		end if;
	end process;

	--------------------------------------------------------------------
	-- Data Bus ALU result reg
	--------------------------------------------------------------------
 	-- TFB added 11/9/03
	db_aluresult_write_dec	<= cyc1 & cyc2 & cyc3 & instr_dec(112) &
								instr_dec(113) & instr_dec(114);

	db_aluresult_proc:
	process(db_aluresult,db_aluresult_write_dec)
	variable db_aluresult_var:	std_logic;
	begin
		db_aluresult_var:= db_aluresult;
		case db_aluresult_write_dec is
		when "100100"|"010010"|"001001" =>
			db_aluresult_var := '1';
		when others =>
			db_aluresult_var := '0';
		end case;
		db_aluresult_async <= db_aluresult_var;
	end process;

	-- sync db_aluresult
	process(clk,nrst)
	begin
		if nrst = '0' then
			db_aluresult <= '0';
		elsif clk'event and clk = '1' then
			db_aluresult <= db_aluresult_async;
		end if;
	end process;

	--------------------------------------------------------------------
	-- Data Bus pcl reg
	--------------------------------------------------------------------
 	-- TFB added 11/9/03
	db_pclreg_write_dec	<= cyc2 & instr_dec(88);

	db_pclreg_proc:
	process(db_pclreg,db_pclreg_write_dec)
	variable db_pclreg_var:	std_logic;
	begin
		db_pclreg_var:= db_pclreg;
		case db_pclreg_write_dec is
		when "11" =>
			db_pclreg_var := '1';
		when others =>
			db_pclreg_var := '0';
		end case;
		db_pclreg_async <= db_pclreg_var;
	end process;

	-- sync db_pclreg
	process(clk,nrst)
	begin
		if nrst = '0' then
			db_pclreg <= '0';
		elsif clk'event and clk = '1' then
			db_pclreg <= db_pclreg_async;
		end if;
	end process;

	--------------------------------------------------------------------
	-- Data Bus pch reg
	--------------------------------------------------------------------
 	-- TFB added 11/9/03
	db_pchreg_write_dec	<= cyc4 & instr_dec(88);

	db_pchreg_proc:
	process(db_pchreg,db_pchreg_write_dec)
	variable db_pchreg_var:	std_logic;
	begin
		db_pchreg_var:= db_pchreg;
		case db_pchreg_write_dec is
		when "11" =>
			db_pchreg_var := '1';
		when others =>
			db_pchreg_var := '0';
		end case;
		db_pchreg_async <= db_pchreg_var;
	end process;

	-- sync db_pchreg
	process(clk,nrst)
	begin
		if nrst = '0' then
			db_pchreg <= '0';
		elsif clk'event and clk = '1' then
			db_pchreg <= db_pchreg_async;
		end if;
	end process;

	--------------------------------------------------------------------
	-- datareg write process
	--------------------------------------------------------------------
 	-- TFB added 11/9/03
	datareg_write_dec	<= cyc1 & cyc2 & instr_dec(109) & instr_dec(115) &
							instr_dec(116) & instr_dec(108) & instr_dec(117) &
							instr_dec(118) & instr_dec(8);

	datareg_proc:
	process(datareg,datareg_write_dec,memdatai,ramdatain,sp,ram_sfr_data,
	ram_sfr_address,accreg)
	variable datareg_var: std_logic_vector(7 downto 0);
	begin
		datareg_var:= datareg;
		case datareg_write_dec is
		when "101000000"|"100100000" =>
			datareg_var := memdatai;
		when "100010000" =>
			-- data_bus -- ram(ma)->DR (Rn->DR)
			datareg_var := ramdatain;
		when "100001000" =>
			datareg_var := sp;
		when "010000100" =>
			datareg_var := memdatai;
		when "010000010"|"011000000" =>
			datareg_var := ram_sfr_data;
		when "010001000" =>
			if not (ram_sfr_address='1'&SP_ID) then
				datareg_var := ram_sfr_data;
			end if;
		when "010000001" =>
			datareg_var := ramdatain(7 downto 4) & accreg(3 downto 0);
		when others =>
			datareg_var:= datareg;
		end case;
		datareg_async <= datareg_var;
	end process;

	-- sync datareg
	process(clk,nrst)
	begin
		if nrst = '0' then
			datareg <= DATAREG_RV;
		elsif clk'event and clk = '1' then
			datareg <= datareg_async;
		end if;
	end process;

   --------------------------------------------------------------------
   -- SFR Data Out Mux
   --------------------------------------------------------------------
      sfr_datao <=
         accreg        when db_accreg='1'      else
         aluresult     when db_aluresult='1'   else
         datareg;

   --------------------------------------------------------------------
   -- SFR Data Out Mux
   --------------------------------------------------------------------
      ram_datao <=
         pclreg        when db_pclreg='1'      else
         pchreg        when db_pchreg='1'      else
         sfr_datao;

   --------------------------------------------------------------------
   -- RAM SFR Data In Mux
   --------------------------------------------------------------------
      ram_sfr_data <=
         ramdatain      when ram_oe='1'         else
         sfr_bus;

   --------------------------------------------------------------------
   -- Special Function registers Address write
   --------------------------------------------------------------------
      sfr_address   <= ram_sfr_address(6 downto 0);

   --------------------------------------------------------------------
   -- Special Function Registers Mux
   --------------------------------------------------------------------
      sfr_bus <=
         sp             when (sfr_address = SP_ID)    else
         sfrdataalu     when (sfr_address = ACC_ID    or
                              sfr_address = B_ID      or
                              sfr_address = PSW_ID)   else
         sfrdataclk     when (sfr_address = PCON_ID   or
                              sfr_address = CKCON_ID) else
         sfrdataisr     when (sfr_address = IEN0_ID   or
                              sfr_address = IEN1_ID   or
                              sfr_address = IP0_ID    or
                              sfr_address = IP1_ID)   else
         sfrdatamcu     when (sfr_address = DPL_ID    or
                              sfr_address = DPH_ID    or
                              sfr_address = DPL1_ID   or
                              sfr_address = DPH1_ID   or
                              sfr_address = DPS_ID    or
                              sfr_address = XWB1_ID   or
                              sfr_address = XWB2_ID   or
                              sfr_address = XWB3_ID   or
                              sfr_address = XRB1_ID   or
                              sfr_address = XRB2_ID   or
                              sfr_address = XRB3_ID)  else
         sfrdataports   when (sfr_address = P0_ID     or
                              sfr_address = P1_ID     or
                              sfr_address = P2_ID     or
                              sfr_address = P3_ID)    else
         sfrdataser0    when (sfr_address = SCON_ID   or
                              sfr_address = SBUF_ID)  else
         sfrdatatim     when (sfr_address = TL0_ID    or
                              sfr_address = TH0_ID    or
                              sfr_address = TL1_ID    or
                              sfr_address = TH1_ID    or
                              sfr_address = TCON_ID   or
                              sfr_address = TMOD_ID)  else
         sfrdataext;


end RTL;
