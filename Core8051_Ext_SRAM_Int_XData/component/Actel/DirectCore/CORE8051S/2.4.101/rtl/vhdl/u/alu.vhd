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
-- name:        alu.vhd
-- function:    Arithmetic Logic Unit
-- comments:    best viewed with tabstops set to "4"
-- history:        5/27/03 - TFB created
-- history:        9/01/03 - TFB shrink effort continues ... took instr decodes
--                and put in separate file
--                11/20/03 modified bool_res circuitry because of synth. problems
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."+";
use IEEE.std_logic_unsigned."-";
use work.Core8051_utility.all;

entity ALU is
generic (
    -- set to 1 to include multiply, divide and decimal-adjust instruction functionality
    INCL_MUL_DIV_DA : integer := 1;
    -- set this to number of instruction decodes
    INSTR_DECNUM    : integer := 119
);
port (
    -- Global control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Global reset input
    -- External memory read/write acknowledge input
    mempsack     : in  STD_LOGIC;

    -- Memory interface
    memdatai     : in  STD_LOGIC_VECTOR(7 downto 0); -- Memory data bus
    mem2acc      : in  STD_LOGIC;                    -- Memory to ACC wr.enable

    -- RAM Data Bus
    ramsfrdata   : in  STD_LOGIC_VECTOR(7 downto 0); -- Peripheral data bus

    -- ALU output signals
    accreg       : out STD_LOGIC_VECTOR(7 downto 0); -- Accumulator output
    aluresult    : out STD_LOGIC_VECTOR(7 downto 0); -- ALU result
    regsbank     : out STD_LOGIC_VECTOR(1 downto 0); -- Current bank
    bitvalue     : out STD_LOGIC; -- Selected bit value
    cdjump       : out STD_LOGIC; -- Condition of jump
    cyflag       : out STD_LOGIC; -- Carry flag

    -- Special function register interface
    sfrdatai     : in  STD_LOGIC_VECTOR(7 downto 0); -- SFR data bus
    sfrdataalu   : out STD_LOGIC_VECTOR(7 downto 0); -- ALU data bus
    sfraddr      : in  STD_LOGIC_VECTOR(6 downto 0); -- SFR address bus
    sfrwe        : in  STD_LOGIC;                     -- SFR write enable

    -- decode vector (bit-order reversed on purpose!)
    instr_dec        :    in    std_logic_vector(0 to INSTR_DECNUM-1);

    -- cycle decodes ...
    cyc1            :    in    std_logic;
    cyc2            :    in    std_logic;
    cyc3            :    in    std_logic;
    cyc4            :    in    std_logic;
    cyc5            :    in    std_logic
);
end ALU;

--*******************************************************************--

architecture RTL of ALU is

      -- Main registers
      signal acc          : STD_LOGIC_VECTOR(7 DOWNTO 0); -- Accumulator
      signal b            : STD_LOGIC_VECTOR(7 DOWNTO 0); -- B register
      signal psw          : STD_LOGIC_VECTOR(7 DOWNTO 0); -- PSW register

      -- ALU operand registers
      signal a1           : STD_LOGIC_VECTOR(7 DOWNTO 0); -- A1 register
      signal a2           : STD_LOGIC_VECTOR(7 DOWNTO 0); -- A2 register
      signal op_a         : STD_LOGIC_VECTOR(7 DOWNTO 0); -- Operand A
      signal op_b         : STD_LOGIC_VECTOR(7 DOWNTO 0); -- Operand B
      signal op_c         : STD_LOGIC;                    -- Operand C (carry)
      signal bool_op      : STD_LOGIC_VECTOR(7 DOWNTO 0); -- Boolean operand

      signal bit_nr       : STD_LOGIC_VECTOR(2 DOWNTO 0); -- bit number

      -- ALU result registers
      signal b1           : STD_LOGIC_VECTOR(7 DOWNTO 0); -- B1 register
      signal b2           : STD_LOGIC_VECTOR(7 DOWNTO 0); -- B2 register
      signal b3           : STD_LOGIC_VECTOR(7 DOWNTO 0); -- B3 register

      -- PSW flags
      signal ac_bit       : STD_LOGIC; -- A carry flag
      signal ov_bit       : STD_LOGIC; -- Overflow flag
      signal parity_bit   : STD_LOGIC; -- Parity flag

      -- Arithmetic result vector
      signal result_b1    : STD_LOGIC_VECTOR(8 DOWNTO 0); -- Result B1
      signal result_b2    : STD_LOGIC_VECTOR(8 DOWNTO 0); -- Result B2

      -- Boolean result vector
      signal bool_res     : STD_LOGIC_VECTOR(7 DOWNTO 0); -- Result boolean

      -- Multiplication / division registers
      signal mda          : STD_LOGIC_VECTOR(7 DOWNTO 0); -- MDA register
      signal mdb          : STD_LOGIC_VECTOR(7 DOWNTO 0); -- MDB register
      signal sum          : STD_LOGIC_VECTOR(8 DOWNTO 0); -- result register
      signal sum1         : STD_LOGIC_VECTOR(8 DOWNTO 0); -- result register

-- TFB additions
signal acc_async        :    std_logic_vector(7 downto 0);
-- 9/2/03 TFB additions for various decodes in this block ...
signal acc_write_dec    :    std_logic_vector(15 downto 0);
signal acc_id_wr        :    std_logic;

signal b_async            :    std_logic_vector(7 downto 0);
signal b_write_dec        :    std_logic_vector(2 downto 0);
signal b_id_wr            :    std_logic;

signal ramsfrdata_mux    :    std_logic;
signal psw_async        :    std_logic_vector(7 downto 0);
signal c2_mempsack        :    std_logic;
signal psw_id_wr        :    std_logic;
signal psw7_write_dec    :    std_logic_vector(11 downto 0);
signal psw7_write_dec_0  :    std_logic_vector(10 downto 0);
signal psw6_write_dec    :    std_logic_vector(1 downto 0);
signal psw2_write_dec    :    std_logic_vector(3 downto 0);

signal a1_async            :    std_logic_vector(7 downto 0);
signal a1_write_dec        :    std_logic_vector(4 downto 0);

signal a2_async            :    std_logic_vector(7 downto 0);
signal a2_write_dec        :    std_logic_vector(4 downto 0);

signal op_a_dec            :    std_logic;
signal op_b_dec            :    std_logic;

signal b1_comb_dec        :    std_logic_vector(8 downto 0);
signal b2_comb_dec        :    std_logic_vector(10 downto 0);
signal b2_comb_dec_0      :    std_logic_vector(9 downto 0);
signal b1_wr            :    std_logic;
signal bit_nr_wr        :    std_logic;

signal bool_op_sel        :    std_logic;
signal bool_dec            :    std_logic_vector(6 downto 0);

signal aluresult_dec    :    std_logic_vector(1 downto 0);

signal mda_async        :    std_logic_vector(7 downto 0);
signal mdb_async        :    std_logic_vector(7 downto 0);
signal mdab_write_dec    :    std_logic_vector(3 downto 0);
signal cyc2345            :    std_logic;

signal sum_dec            :    std_logic_vector(1 downto 0);

begin

   --------------------------------------------------------------------
   -- ACC register output
   --------------------------------------------------------------------
      accreg <= acc;

   --------------------------------------------------------------------
   -- Carry flag output
   --------------------------------------------------------------------
      cyflag <= psw(7);

   --------------------------------------------------------------------
   -- Register select bank output
   --------------------------------------------------------------------
      regsbank <= psw(4 downto 3);

   --------------------------------------------------------------------
   -- Accumulator register
   --------------------------------------------------------------------
    -- TFB added 9/2/03
    acc_write_dec    <= cyc1 & cyc2 & cyc3 & cyc5 & instr_dec(0 to 11);
    acc_id_wr        <= '1' when sfrwe='1' and sfraddr=ACC_ID else '0';

    -- async acc process
    acc_async_proc:
    process(acc_id_wr,mem2acc,mempsack,acc,sfrdatai,memdatai,
    result_b1,result_b2,ramsfrdata,a1,sum1,sum,mda,
    acc_write_dec
    )
    variable acc_var    : std_logic_vector(7 downto 0);
    begin
        acc_var := acc;
        if acc_id_wr='1' then
            acc_var := sfrdatai;
        elsif mem2acc='1' then
            if mempsack='1' then
                acc_var := memdatai;
            end if;
        else
            if (INCL_MUL_DIV_DA = 1) then
                case acc_write_dec is
                when "1000100000000000"|"0100000100000000" =>
                    if mempsack='1' then
                        acc_var := result_b1(7 downto 0);
                    end if;
                when "1000010000000000"| "0100000010000000" =>
                    if mempsack='1' then
                        acc_var := result_b2(7 downto 0);
                    end if;
                when "1000001000000000"|"0100000000100000" =>
                    if mempsack='1' then
                        acc_var := ramsfrdata(7 downto 0);
                    end if;
                when "0100000001000000" =>
                    if mempsack='1' then
                        acc_var := sfrdatai(7 downto 0);
                    end if;
                when "0100000000010000" =>
                    if mempsack='1' then
                    acc_var := a1;
                    end if;
                when "0100000000001000" =>
                    acc_var(3 downto 0) := ramsfrdata(3 downto 0);
                when "0010000000000100" =>
                    acc_var := a1;
                when "0001000000000010" =>
                    if mempsack='1' then
                        acc_var := sum1(0) & sum(0) & mda(7 downto 2);
                    end if;
                when "0001000000000001" =>
                    if mempsack='1' then
                        acc_var := mda(5 downto 0) & sum(8) & sum1(8);
                    end if;
                when others =>
                    acc_var := acc;
                end case;
            else
                case acc_write_dec(15 downto 2) is
                when "10001000000000"|"01000001000000" =>
                    if mempsack='1' then
                        acc_var := result_b1(7 downto 0);
                    end if;
                when "10000100000000"| "01000000100000" =>
                    if mempsack='1' then
                        acc_var := result_b2(7 downto 0);
                    end if;
                when "10000010000000"|"01000000001000" =>
                    if mempsack='1' then
                        acc_var := ramsfrdata(7 downto 0);
                    end if;
                when "01000000010000" =>
                    if mempsack='1' then
                        acc_var := sfrdatai(7 downto 0);
                    end if;
                when "01000000000100" =>
                    if mempsack='1' then
                    acc_var := a1;
                    end if;
                when "01000000000010" =>
                    acc_var(3 downto 0) := ramsfrdata(3 downto 0);
                when "00100000000001" =>
                    acc_var := a1;
                when others =>
                    acc_var := acc;
                end case;
            end if;
        end if;
        acc_async    <= acc_var;
    end process;

    -- sync acc process
    process(clk,nrst)
    begin
        if nrst = '0' then
            acc <= ACC_RV;
        elsif clk'event and clk = '1' then
            acc <= acc_async;
        end if;
    end process;

   --------------------------------------------------------------------
   -- B register
   --------------------------------------------------------------------
    gen1:
    if (INCL_MUL_DIV_DA = 1) generate
        b_write_dec        <= cyc5 & instr_dec(10 to 11);
    end generate;

    b_id_wr            <= '1' when sfrwe='1' and sfraddr=B_ID else '0';

    -- async b process
    b_async_proc:
    process(b,b_id_wr,sfrdatai,mempsack,sum1,sum,mda,mdb,b_write_dec)
    variable b_var    : std_logic_vector(7 downto 0);
    begin
        b_var    := b;
        if b_id_wr='1' then
            b_var    := sfrdatai;
        else
            if (INCL_MUL_DIV_DA = 1) then
                case b_write_dec is
                when "110" =>
                    if mempsack='1' then
                        b_var    := sum1(8 downto 1);
                    end if;
                when "101" =>
                    if mempsack='1' then
                        if sum1(8)='1' then
                            b_var    := sum1(7 downto 0);
                        elsif sum(8)='1' then
                            b_var    := sum(6 downto 0) & mda(7);
                        else
                            b_var    := mdb(6 downto 0) & mda(7);
                        end if;
                    end if;
                when others =>
                    b_var    := b;
                end case;
            end if;
        end if;
        b_async    <= b_var;
    end process;

    -- sync b process
    process(clk,nrst)
    begin
        if nrst = '0' then
            b    <= B_RV;
        elsif clk'event and clk = '1' then
            b    <= b_async;
        end if;
    end process;

    --------------------------------------------------------------------
    -- PSW register logic
    --------------------------------------------------------------------
    -- TFB added 9/2/03
    -- mux process for ramsfrdata
    process(bit_nr,ramsfrdata)
    begin
        case bit_nr is
            when "000" => ramsfrdata_mux <= ramsfrdata(0);
            when "001" => ramsfrdata_mux <= ramsfrdata(1);
            when "010" => ramsfrdata_mux <= ramsfrdata(2);
            when "011" => ramsfrdata_mux <= ramsfrdata(3);
            when "100" => ramsfrdata_mux <= ramsfrdata(4);
            when "101" => ramsfrdata_mux <= ramsfrdata(5);
            when "110" => ramsfrdata_mux <= ramsfrdata(6);
            when others=> ramsfrdata_mux <= ramsfrdata(7);
        end case;
    end process;

    -- TFB added 9/2/03
    psw7_write_dec    <= instr_dec(12 to 23);
    psw7_write_dec_0  <= (instr_dec(12 to 14) & instr_dec(16 to 23));
    psw6_write_dec    <= instr_dec(24 to 25);
    psw2_write_dec    <= instr_dec(24 to 25) & instr_dec(10 to 11);
    c2_mempsack    <= '1' when cyc2='1' and mempsack='1' else '0';
    psw_id_wr    <= '1' when sfrwe='1' and sfraddr=PSW_ID else '0';

    -- async psw process
    psw_async_proc:
    process(psw,psw_id_wr,c2_mempsack,psw7_write_dec,psw6_write_dec,
    psw2_write_dec,sfrdatai,mempsack,result_b1,result_b2,
    ramsfrdata_mux,
    sum1,b,ac_bit,ov_bit,parity_bit
    )
    variable psw_var    : std_logic_vector(7 downto 0);
    begin
        psw_var := psw;
        if psw_id_wr='1' then
            psw_var    := sfrdatai;
        else
            -------------------------------
            -- PSW(7) CY FLAG WRITE
            -------------------------------
            if (INCL_MUL_DIV_DA = 1) then
                case psw7_write_dec is
                when "100000000000" =>
                    if mempsack='1' then
                        psw_var(7) := result_b1(8);
                    end if;
                when "010000000000" =>
                    if mempsack='1' then
                        psw_var(7) := result_b2(8);
                    end if;
                when "001000000000" =>
                    if c2_mempsack='1'then
                        psw_var(7) := result_b1(8);
                    end if;
                when "000100000000" =>
                    if result_b2(8) = '1' and mempsack='1' then
                        psw_var(7) := '1';
                    end if;
                when "000010000000" =>
                    psw_var(7) := '0';
                when "000001000000" =>
                    psw_var(7) := '1';
                when "000000100000" =>
                    if mempsack='1' then
                        psw_var(7) := not psw(7);
                    end if;
                when "000000010000" =>
                    if c2_mempsack='1'then
                        psw_var(7) := psw(7) and ramsfrdata_mux;
                    end if;
                when "000000001000" =>
                    if c2_mempsack='1'then
                        psw_var(7) := psw(7) and not ramsfrdata_mux;
                    end if;
                when "000000000100" =>
                    if c2_mempsack='1'then
                        psw_var(7) := psw(7) or ramsfrdata_mux;
                    end if;
                when "000000000010" =>
                    if c2_mempsack='1'then
                        psw_var(7) := psw(7) or not ramsfrdata_mux;
                    end if;
                when "000000000001" =>
                    if c2_mempsack='1'then
                        psw_var(7) := ramsfrdata_mux;
                    end if;
                when others =>
                    psw_var(7) := psw(7);
                end case;
            else
                case psw7_write_dec_0 is
                when "10000000000" =>
                    if mempsack='1' then
                        psw_var(7) := result_b1(8);
                    end if;
                when "01000000000" =>
                    if mempsack='1' then
                        psw_var(7) := result_b2(8);
                    end if;
                when "00100000000" =>
                    if c2_mempsack='1'then
                        psw_var(7) := result_b1(8);
                    end if;
                when "00010000000" =>
                    psw_var(7) := '0';
                when "00001000000" =>
                    psw_var(7) := '1';
                when "00000100000" =>
                    if mempsack='1' then
                        psw_var(7) := not psw(7);
                    end if;
                when "00000010000" =>
                    if c2_mempsack='1'then
                        psw_var(7) := psw(7) and ramsfrdata_mux;
                    end if;
                when "00000001000" =>
                    if c2_mempsack='1'then
                        psw_var(7) := psw(7) and not ramsfrdata_mux;
                    end if;
                when "00000000100" =>
                    if c2_mempsack='1'then
                        psw_var(7) := psw(7) or ramsfrdata_mux;
                    end if;
                when "00000000010" =>
                    if c2_mempsack='1'then
                        psw_var(7) := psw(7) or not ramsfrdata_mux;
                    end if;
                when "00000000001" =>
                    if c2_mempsack='1'then
                        psw_var(7) := ramsfrdata_mux;
                    end if;
                when others =>
                    psw_var(7) := psw(7);
                end case;
            end if;
            -------------------------------
            -- PSW(6) AC FLAG WRITE
            -------------------------------
            case psw6_write_dec is
            when "10" =>
                psw_var(6) := ac_bit;
            when "01" =>
                if c2_mempsack='1'then
                    psw_var(6) := ac_bit;
                end if;
            when others =>
                psw_var(6) := psw(6);
            end case;
            -------------------------------
            -- PSW(2) OV FLAG WRITE
            -------------------------------
            if (INCL_MUL_DIV_DA = 1) then
                case psw2_write_dec is
                when "1000" =>
                    psw_var(2) := ov_bit;
                when "0100" =>
                    if c2_mempsack='1'then
                        psw_var(2) := ov_bit;
                    end if;
                when "0010" =>
                    if (INCL_MUL_DIV_DA = 1) then
                        if sum1(8 downto 1)="00000000" then
                            psw_var(2) := '0';
                        else
                            psw_var(2) := '1';
                        end if;
                    else
                        psw_var(2) := psw(2);
                    end if;
                when "0001" =>
                    if (INCL_MUL_DIV_DA = 1) then
                        if b="00000000" then
                            psw_var(2) := '1';
                        else
                            psw_var(2) := '0';
                        end if;
                    else
                        psw_var(2) := psw(2);
                    end if;
                when others =>
                    psw_var(2) := psw(2);
                end case;
            else
                case psw2_write_dec(3 downto 2) is
                when "10" =>
                    psw_var(2) := ov_bit;
                when "01" =>
                    if c2_mempsack='1'then
                        psw_var(2) := ov_bit;
                    end if;
                when others =>
                    psw_var(2) := psw(2);
                end case;
            end if;
            -------------------------------
            -- PSW(0) P FLAG WRITE
            -------------------------------
            psw_var(0) := parity_bit;
        end if;
        psw_async    <= psw_var;
    end process;

    -- sync psw process
    process(clk,nrst)
    begin
        if nrst = '0' then
            psw    <= PSW_RV;
        elsif clk'event and clk = '1' then
            psw    <= psw_async;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Parity bit driver
    --------------------------------------------------------------------
    parity_bit <= (acc(0) xor acc(1) xor acc(2) xor acc(3) xor
                    acc(4) xor acc(5) xor acc(6) xor acc(7));

   --------------------------------------------------------------------
   -- Arithmetic-logic machine
   -- Operand 1 register
   --------------------------------------------------------------------
    -- TFB added 9/2/03
    a1_write_dec    <= cyc1 & cyc2 & instr_dec(26 to 28);

    -- async a1 process
    a1_async_proc:
    process(a1,a1_write_dec,ramsfrdata,memdatai)
    variable a1_var    : std_logic_vector(7 downto 0);
    begin
        a1_var := a1;
        case a1_write_dec is
            when "10100"|"01001"    => a1_var    := ramsfrdata;
            when "10010"            => a1_var    := memdatai;
            when others                => a1_var    := a1;
        end case;
        a1_async    <= a1_var;
    end process;

    -- sync a1 process
    process(clk,nrst)
    begin
        if nrst = '0' then
            a1    <= "00000000";
        elsif clk'event and clk = '1' then
            a1    <= a1_async;
        end if;
    end process;

   --------------------------------------------------------------------
   -- Arithmetic-logic machine
   -- Operand 2 register
   --------------------------------------------------------------------
    -- TFB added 9/2/03
    a2_write_dec    <= cyc1 & cyc2 & instr_dec(29 to 31);

    -- async a2 process
    a2_async_proc:
    process(a2,a2_write_dec,ramsfrdata,memdatai)
    variable a2_var    : std_logic_vector(7 downto 0);
    begin
        a2_var := a2;
        case a2_write_dec is
            when "10100"|"01010"    => a2_var    := memdatai;
            when "01001"            => a2_var    := ramsfrdata;
            when others                => a2_var    := a2;
        end case;
        a2_async    <= a2_var;
    end process;

    -- sync a2 process
    process(clk,nrst)
    begin
        if nrst = '0' then
            a2    <= "00000000";
        elsif clk'event and clk = '1' then
            a2    <= a2_async;
        end if;
    end process;

   --------------------------------------------------------------------
   -- Arithmetic-logic machine
   -- ALU Operand 1 input
   --------------------------------------------------------------------
    -- TFB added 9/2/03
    op_a_dec    <= '1' when instr_dec(32)='1' else '0';
    op_a        <= a1 when op_a_dec='1' else acc;

   --------------------------------------------------------------------
   -- Arithmetic-logic machine
   -- ALU Operand 2 input
   --------------------------------------------------------------------
    -- TFB added 9/2/03
    op_b_dec    <= '1' when instr_dec(33)='1' else '0';
    op_b        <= a2 when op_b_dec='1' else ramsfrdata;

   --------------------------------------------------------------------
   -- Arithmetic-logic machine
   -- ALU Carry input
   --------------------------------------------------------------------
    op_c <= psw(7);

    --------------------------------------------------------------------
    -- Combinational b1 process
    --------------------------------------------------------------------
    -- TFB added 9/3/03
    b1_comb_dec    <= instr_dec(34 to 42);

    combinational_b1_alu_proc:
    process(b1_comb_dec,op_a,op_b,op_c)
    variable one_9            :    std_logic_vector(8 downto 0);
    variable result_b1_var    :    std_logic_vector(8 downto 0);
    variable op_a_3_0        :    std_logic_vector(4 downto 0);
    variable op_b_3_0        :    std_logic_vector(4 downto 0);
    variable op_c_var        :    std_logic_vector(4 downto 0);
    variable res_3_0        :    std_logic_vector(4 downto 0);

    variable op_a_6_4        :    std_logic_vector(3 downto 0);
    variable op_b_6_4        :    std_logic_vector(3 downto 0);
    variable res_6_4        :    std_logic_vector(3 downto 0);

    variable op_a_7            :    std_logic_vector(1 downto 0);
    variable op_b_7            :    std_logic_vector(1 downto 0);
    variable res_8_7        :    std_logic_vector(1 downto 0);
    begin
        ------------------------------
        -- Initialize variables
        ------------------------------
        res_3_0            := "00000";
        res_6_4            := "0000";
        res_8_7            := "00";
        one_9            := "000000001";
        result_b1_var    := "000000000";
        op_a_3_0        := '0'&op_a(3 downto 0);
        op_b_3_0        := '0'&op_b(3 downto 0);
        op_a_6_4        := '0'&op_a(6 downto 4);
        op_b_6_4        := '0'&op_b(6 downto 4);
        op_c_var        := "0000"&op_c;
        op_a_7            := '0'&op_a(7);
        op_b_7            := '0'&op_b(7);
        ------------------------------
        -- Combinational value
        ------------------------------
        case b1_comb_dec is
        when "100000000" =>
            res_3_0            := op_a_3_0 + op_b_3_0;
            res_6_4            := op_a_6_4 + op_b_6_4 + res_3_0(4);
            res_8_7            := op_a_7 + op_b_7 + res_6_4(3);
            result_b1_var    := res_8_7&res_6_4(2 downto 0)&res_3_0(3 downto 0);
        when "010000000" =>
            res_3_0            := op_a_3_0 + op_b_3_0 + op_c_var;
            res_6_4            := op_a_6_4 + op_b_6_4 + res_3_0(4);
            res_8_7            := op_a_7 + op_b_7 + res_6_4(3);
            result_b1_var    := res_8_7&res_6_4(2 downto 0)&res_3_0(3 downto 0);
        when "001000000" =>
            res_3_0            := op_a_3_0 - op_b_3_0 - op_c_var;
            res_6_4            := op_a_6_4 - op_b_6_4 - res_3_0(4);
            res_8_7            := op_a_7 - op_b_7 - res_6_4(3);
            result_b1_var    := res_8_7&res_6_4(2 downto 0)&res_3_0(3 downto 0);
        when "000100000" =>
            res_3_0            := op_a_3_0 - op_b_3_0;
            res_6_4            := op_a_6_4 - op_b_6_4 - res_3_0(4);
            res_8_7            := op_a_7 - op_b_7 - res_6_4(3);
            result_b1_var    := res_8_7&res_6_4(2 downto 0)&res_3_0(3 downto 0);
        when "000010000" =>
            res_3_0            := op_b_3_0 - op_a_3_0;
            res_6_4            := op_b_6_4 - op_a_6_4 - res_3_0(4);
            res_8_7            := op_b_7 - op_a_7 - res_6_4(3);
            result_b1_var    := res_8_7&res_6_4(2 downto 0)&res_3_0(3 downto 0);
        when "000001000" =>
            result_b1_var    := '0'&op_b + one_9;
        when "000000100" =>
            result_b1_var    := '0'&op_a + one_9;
        when "000000010" =>
            result_b1_var    := '0'&op_b - one_9;
        when "000000001" =>
            result_b1_var    := '0'&op_a - one_9;
        when others =>
            res_3_0            := "00000";
            res_6_4            := "0000";
            res_8_7            := "00";
            result_b1_var    := "000000000";
        end case;
        ac_bit        <= res_3_0(4);
        ov_bit        <= (res_6_4(3) xor res_8_7(1));
        result_b1    <= result_b1_var;
    end process;

    --------------------------------------------------------------------
    -- Combinational b2 process
    --------------------------------------------------------------------
    b2_comb_dec    <= instr_dec(43 to 45) & instr_dec(15) & instr_dec(46 to 52);
    b2_comb_dec_0  <= instr_dec(43 to 45) & instr_dec(46 to 52);

    INCL_MUL_DIV_DA_01 : if (INCL_MUL_DIV_DA = 1) generate
        combinational_b2_alu_proc:
        process(b2_comb_dec,op_a,op_b,op_c,psw)
        variable op_a_var        :    std_logic_vector(8 downto 0);
        variable op_b_var        :    std_logic_vector(8 downto 0);
        variable result_b2_var   :    std_logic_vector(8 downto 0);
        variable res_3_0         :    std_logic_vector(4 downto 0);
        variable res_6_4         :    std_logic_vector(3 downto 0);
        variable res_8_7         :    std_logic_vector(1 downto 0);
        begin
            ------------------------------
            -- Initialize variables
            ------------------------------
            result_b2_var        := "000000000";
            op_a_var            := '0'&op_a;
            op_b_var            := '0'&op_b;
            res_3_0                := "00000";
            res_6_4                := "0000";
            res_8_7                := "00";
            ------------------------------
            -- Combinational value
            ------------------------------
            case b2_comb_dec is
            when "10000000000" =>
                result_b2_var    := op_a_var or op_b_var;
            when "01000000000" =>
                result_b2_var    := op_a_var xor op_b_var;
            when "00100000000" =>
                result_b2_var    := op_a_var and op_b_var;
            when "00010000000" =>
                if ((op_a(3 downto 1)/="100" and op_a(3)/='0') or psw(6)='1') then
                    res_3_0 := '0'&op_a(3 downto 0) + "00110";
                else
                    res_3_0 := '0'&op_a(3 downto 0);
                end if;
                if (res_3_0(4)='1' and op_a(7 downto 4)/="1000" and op_a(7)/='0') or
                (op_a(7 downto 5)/="100" and op_a(7)/='0') or (op_c='1') then
                    res_6_4 := '0'&op_a(6 downto 4) + res_3_0(4) + "0110";
                else
                    res_6_4 := '0'&op_a(6 downto 4) + res_3_0(4);
                end if;
                res_8_7 := '0'&op_a(7) + res_6_4(3);
                result_b2_var    := res_8_7&res_6_4(2 downto 0)&res_3_0(3 downto 0);
            when "00001000000" =>
                result_b2_var    := "000000000";
            when "00000100000" =>
                result_b2_var    := '-' & (not op_a);
            when "00000010000" =>
                result_b2_var    := '-' & op_a(6 downto 0) & op_a(7);
            when "00000001000" =>
                result_b2_var    := '-' & op_a(0) & op_a(7 downto 1);
            when "00000000100" =>
                result_b2_var    := op_a(7 downto 0) & psw(7);
            when "00000000010" =>
                result_b2_var    := op_a(0) & psw(7) & op_a(7 downto 1);
            when "00000000001" =>
                result_b2_var    := '-' & op_a(3 downto 0) & op_a(7 downto 4);
            when others =>
                res_3_0            := "00000";
                res_6_4            := "0000";
                res_8_7            := "00";
                result_b2_var    := "000000000";
            end case;
            result_b2    <= result_b2_var;
        end process;
    end generate;

    INCL_MUL_DIV_DA_00 : if (INCL_MUL_DIV_DA = 0) generate
        combinational_b2_alu_proc:
        process(b2_comb_dec,op_a,op_b,op_c,psw)
        variable op_a_var        :    std_logic_vector(8 downto 0);
        variable op_b_var        :    std_logic_vector(8 downto 0);
        variable result_b2_var   :    std_logic_vector(8 downto 0);
        variable res_3_0         :    std_logic_vector(4 downto 0);
        variable res_6_4         :    std_logic_vector(3 downto 0);
        variable res_8_7         :    std_logic_vector(1 downto 0);
        begin
            ------------------------------
            -- Initialize variables
            ------------------------------
            result_b2_var        := "000000000";
            op_a_var            := '0'&op_a;
            op_b_var            := '0'&op_b;
            res_3_0                := "00000";
            res_6_4                := "0000";
            res_8_7                := "00";
            ------------------------------
            -- Combinational value
            ------------------------------
            case b2_comb_dec_0 is
            when "1000000000" =>
                result_b2_var    := op_a_var or op_b_var;
            when "0100000000" =>
                result_b2_var    := op_a_var xor op_b_var;
            when "0010000000" =>
                result_b2_var    := op_a_var and op_b_var;
            when "0001000000" =>
                result_b2_var    := "000000000";
            when "0000100000" =>
                result_b2_var    := '-' & (not op_a);
            when "0000010000" =>
                result_b2_var    := '-' & op_a(6 downto 0) & op_a(7);
            when "0000001000" =>
                result_b2_var    := '-' & op_a(0) & op_a(7 downto 1);
            when "0000000100" =>
                result_b2_var    := op_a(7 downto 0) & psw(7);
            when "0000000010" =>
                result_b2_var    := op_a(0) & psw(7) & op_a(7 downto 1);
            when "0000000001" =>
                result_b2_var    := '-' & op_a(3 downto 0) & op_a(7 downto 4);
            when others =>
                res_3_0            := "00000";
                res_6_4            := "0000";
                res_8_7            := "00";
                result_b2_var    := "000000000";
            end case;
            result_b2    <= result_b2_var;
        end process;
    end generate;

    --------------------------------------------------------------------
    -- b1 write process
    --------------------------------------------------------------------
    -- TFB 9/4/03
    b1_wr    <= '1' when not (instr_dec(53)='1' and cyc3='1') else '0';

    process(clk,nrst)
    begin
        if nrst = '0' then
            b1 <= "00000000";
        elsif clk'event and clk = '1' then
            if b1_wr='1' then
                b1 <= result_b1(7 downto 0);
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- b2 write process
    --------------------------------------------------------------------
    process(clk,nrst)
    begin
        if nrst = '0' then
            b2 <= "00000000";
        elsif clk'event and clk = '1' then
            b2 <= result_b2(7 downto 0);
        end if;
    end process;

    --------------------------------------------------------------------
    -- bit nr write
    --------------------------------------------------------------------
    -- TFB 9/4/03
    bit_nr_wr    <= '1' when instr_dec(54)='1' and cyc1='1' else '0';

    process(clk,nrst)
    begin
        if nrst = '0' then
            bit_nr <= "000";
        elsif clk'event and clk = '1' then
            if bit_nr_wr='1' then
                bit_nr <= memdatai(2 downto 0);
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Boolean machine
    -- Operand multiplexer
    --------------------------------------------------------------------
    -- TFB 9/4/03
    bool_op_sel    <= '1' when instr_dec(55)='1' else '0';
    bool_op        <= ramsfrdata when bool_op_sel='1' else a1;

   --------------------------------------------------------------------
   -- Boolean machine
   -- Combinational part
   --------------------------------------------------------------------
    -- TFB 9/4/03
    bool_dec    <= instr_dec(56 to 59) & bit_nr;

--    11/20/03 TFB modified due to synthesis problems
--    comb_bool_proc:
--    process(bool_dec, bool_op, psw)
--    variable bool_res_var    :    std_logic_vector(7 downto 0);
--    begin
--        ------------------------------
--        -- Initialize variables
--        ------------------------------
--        bool_res_var    := bool_op(7 downto 0);
--        ------------------------------
--        -- Combinational value
--        ------------------------------
--        case bool_dec is
--        when "1000000"    => bool_res_var(0)    := '1';
--        when "1000001"    => bool_res_var(1)    := '1';
--        when "1000010"    => bool_res_var(2)    := '1';
--        when "1000011"    => bool_res_var(3)    := '1';
--        when "1000100"    => bool_res_var(4)    := '1';
--        when "1000101"    => bool_res_var(5)    := '1';
--        when "1000110"    => bool_res_var(6)    := '1';
--        when "1000111"    => bool_res_var(7)    := '1';
--        when "0100000"    => bool_res_var(0)    := '0';
--        when "0100001"    => bool_res_var(1)    := '0';
--        when "0100010"    => bool_res_var(2)    := '0';
--        when "0100011"    => bool_res_var(3)    := '0';
--        when "0100100"    => bool_res_var(4)    := '0';
--        when "0100101"    => bool_res_var(5)    := '0';
--        when "0100110"    => bool_res_var(6)    := '0';
--        when "0100111"    => bool_res_var(7)    := '0';
--        when "0010000"    => bool_res_var(0)    := not bool_op(0);
--        when "0010001"    => bool_res_var(1)    := not bool_op(1);
--        when "0010010"    => bool_res_var(2)    := not bool_op(2);
--        when "0010011"    => bool_res_var(3)    := not bool_op(3);
--        when "0010100"    => bool_res_var(4)    := not bool_op(4);
--        when "0010101"    => bool_res_var(5)    := not bool_op(5);
--        when "0010110"    => bool_res_var(6)    := not bool_op(6);
--        when "0010111"    => bool_res_var(7)    := not bool_op(7);
--        when "0001000"    => bool_res_var(0)    := psw(7);
--        when "0001001"    => bool_res_var(1)    := psw(7);
--        when "0001010"    => bool_res_var(2)    := psw(7);
--        when "0001011"    => bool_res_var(3)    := psw(7);
--        when "0001100"    => bool_res_var(4)    := psw(7);
--        when "0001101"    => bool_res_var(5)    := psw(7);
--        when "0001110"    => bool_res_var(6)    := psw(7);
--        when "0001111"    => bool_res_var(7)    := psw(7);
--        when others =>
--            bool_res_var    := "--------";
--        end case;
--        bool_res    <= bool_res_var;
--    end process;
    comb_bool_proc:
    process(bool_dec, bool_op, psw)
    begin
        case bool_dec is
        when "1000000"    =>
            bool_res <= bool_op(7 downto 1) & '1';
        when "1000001"    =>
            bool_res <= bool_op(7 downto 2) & '1' & bool_op(0);
        when "1000010"    =>
            bool_res <= bool_op(7 downto 3) & '1' & bool_op(1 downto 0);
        when "1000011"    =>
            bool_res <= bool_op(7 downto 4) & '1' & bool_op(2 downto 0);
        when "1000100"    =>
            bool_res <= bool_op(7 downto 5) & '1' & bool_op(3 downto 0);
        when "1000101"    =>
            bool_res <= bool_op(7 downto 6) & '1' & bool_op(4 downto 0);
        when "1000110"    =>
            bool_res <= bool_op(7) & '1' & bool_op(5 downto 0);
        when "1000111"    =>
            bool_res <= '1' & bool_op(6 downto 0);
        when "0100000"    =>
            bool_res <= bool_op(7 downto 1) & '0';
        when "0100001"    =>
            bool_res <= bool_op(7 downto 2) & '0' & bool_op(0);
        when "0100010"    =>
            bool_res <= bool_op(7 downto 3) & '0' & bool_op(1 downto 0);
        when "0100011"    =>
            bool_res <= bool_op(7 downto 4) & '0' & bool_op(2 downto 0);
        when "0100100"    =>
            bool_res <= bool_op(7 downto 5) & '0' & bool_op(3 downto 0);
        when "0100101"    =>
            bool_res <= bool_op(7 downto 6) & '0' & bool_op(4 downto 0);
        when "0100110"    =>
            bool_res <= bool_op(7) & '0' & bool_op(5 downto 0);
        when "0100111"    =>
            bool_res <= '0' & bool_op(6 downto 0);
        when "0010000"    =>
            bool_res <= bool_op(7 downto 1) & not bool_op(0);
        when "0010001"    =>
            bool_res <= bool_op(7 downto 2) & not bool_op(1) & bool_op(0);
        when "0010010"    =>
            bool_res <= bool_op(7 downto 3) & not bool_op(2) &
                        bool_op(1 downto 0);
        when "0010011"    =>
            bool_res <= bool_op(7 downto 4) & not bool_op(3) &
                        bool_op(2 downto 0);
        when "0010100"    =>
            bool_res <= bool_op(7 downto 5) & not bool_op(4) &
                        bool_op(3 downto 0);
        when "0010101"    =>
            bool_res <= bool_op(7 downto 6) & not bool_op(5) &
                        bool_op(4 downto 0);
        when "0010110"    =>
            bool_res <= bool_op(7) & not bool_op(6) & bool_op(5 downto 0);
        when "0010111"    =>
            bool_res <= not bool_op(7) & bool_op(6 downto 0);
        when "0001000"    =>
            bool_res <= bool_op(7 downto 1) & psw(7);
        when "0001001"    =>
            bool_res <= bool_op(7 downto 2) & psw(7) & bool_op(0);
        when "0001010"    =>
            bool_res <= bool_op(7 downto 3) & psw(7) & bool_op(1 downto 0);
        when "0001011"    =>
            bool_res <= bool_op(7 downto 4) & psw(7) & bool_op(2 downto 0);
        when "0001100"    =>
            bool_res <= bool_op(7 downto 5) & psw(7) & bool_op(3 downto 0);
        when "0001101"    =>
            bool_res <= bool_op(7 downto 6) & psw(7) & bool_op(4 downto 0);
        when "0001110"    =>
            bool_res <= bool_op(7) & psw(7) & bool_op(5 downto 0);
        when "0001111"    =>
            bool_res <= psw(7) & bool_op(6 downto 0);
        when others =>
            bool_res    <= bool_op(7 downto 0);
        end case;
    end process;


   --------------------------------------------------------------------
   -- Boolean machine
   -- Result register (b3)
   --------------------------------------------------------------------
    process(clk,nrst)
    begin
        if nrst = '0' then
            b3    <= "00000000";
        elsif clk'event and clk = '1' then
            b3    <= bool_res;
        end if;
    end process;

   --------------------------------------------------------------------
   -- Bit value of bit addressable register
   --------------------------------------------------------------------
    process(clk,nrst)
    begin
        if nrst = '0' then
            bitvalue    <= '0';
        elsif clk'event and clk = '1' then
            if cyc2='1' then
                bitvalue <= ramsfrdata_mux;
            end if;
        end if;
    end process;

   --------------------------------------------------------------------
   -- Conditional jump control
   --------------------------------------------------------------------
    process(clk,nrst)
    begin
        if nrst = '0' then
            cdjump <= '0';
        elsif clk'event and clk = '1' then
            if result_b1(7 downto 0)="00000000" then
                cdjump <= '0';
            else
                cdjump <= '1';
            end if;
        end if;
    end process;

   ---------------------------------------------------------------------
   -- ALU Result Multiplexer
   ---------------------------------------------------------------------
    -- TFB 9/4/03
    aluresult_dec    <= instr_dec(60 to 61);

    -- ALU result driver
    process(aluresult_dec,b3,b2,b1)
    begin
        case aluresult_dec is
        when "10"        => aluresult    <= b3;
        when "01"        => aluresult    <= b2;
        when others        => aluresult    <= b1;
        end case;
    end process;

    --------------------------------------------------------------------
    -- Multiplication and Division
    -- Register A and Register B
    --------------------------------------------------------------------
    gen2:
    if (INCL_MUL_DIV_DA = 1) generate
        cyc2345            <= '1' when cyc2='1' or cyc3='1' or cyc4='1' or
                            cyc5='1' else '0';
        mdab_write_dec    <= cyc1 & cyc2345 & instr_dec(10 to 11);
    end generate;

    gen3:
    if (INCL_MUL_DIV_DA = 1) generate
        -- async mda and mdb process
        mdab_async_proc:
        process(mda,mdb,mdab_write_dec,acc,mempsack,sum1,sum)
        variable mda_var    : std_logic_vector(7 downto 0);
        variable mdb_var    : std_logic_vector(7 downto 0);
        begin
            mda_var := mda;
            mdb_var := mdb;
            case mdab_write_dec is
            when "1010"    =>
                mda_var    := acc;
                mdb_var    := "00000000";
            when "1001"    =>
                mda_var    := acc(6 downto 0) & '0';
                mdb_var    := "0000000" & acc(7);
            when "0110"    =>
                if mempsack='1' then
                    mda_var    := sum1(0) & sum(0) & mda(7 downto 2);
                    mdb_var    := sum1(8 downto 1);
                end if;
            when "0101"    =>
                if mempsack='1' then
                    mda_var    := mda(5 downto 0) & sum(8) & sum1(8);
                    -- borrow = 0
                    if sum1(8)='1' then
                        mdb_var    := sum1(6 downto 0) & mda(6);
                    -- borrow = 0
                    elsif sum(8)='1' then
                        mdb_var    := sum(5 downto 0) & mda(7 downto 6);
                    else
                        mdb_var    := mdb(5 downto 0) & mda(7 downto 6);
                    end if;
                end if;
            when others    =>
                mda_var    := mda;
                mdb_var := mdb;
            end case;
            mda_async    <= mda_var;
            mdb_async    <= mdb_var;
        end process;
    end generate;

    gen4:
    if (INCL_MUL_DIV_DA = 1) generate
        -- sync mda and mdb process
        process(clk,nrst)
        begin
            if nrst = '0' then
                mda    <= "00000000";
                mdb    <= "00000000";
            elsif clk'event and clk = '1' then
                mda    <= mda_async;
                mdb    <= mdb_async;
            end if;
        end process;
    end generate;

    --------------------------------------------------------------------
    -- Multiplication and Division
    -- Combinational machine
    --------------------------------------------------------------------
    gen5:
    if (INCL_MUL_DIV_DA = 1) generate
        sum_dec    <= instr_dec(10 to 11);
    end generate;

    gen6:
    if (INCL_MUL_DIV_DA = 1) generate
        comb_sum_proc:
        process (sum_dec,b,mda,mdb)
        variable sum_var    : std_logic_vector(8 downto 0);
        begin
            sum_var    := "000000000";
            -------------------------------------
            -- Combinational value
            -------------------------------------
            case sum_dec is
            when "10" =>
                if mda(0)='1' then
                    sum_var := ('0' & mdb) + ('0' & b);
                else
                    sum_var    := '0' & mdb;
                end if;
            when "01" =>
                sum_var    := ('0' & mdb) + ('0' & (not b)) + "000000001";
            when others =>
                sum_var    := "000000000";
            end case;
            sum    <= sum_var;
        end process;
    end generate;

    gen7:
    if (INCL_MUL_DIV_DA = 1) generate
        comb_sum1_proc:
        process (sum_dec,b,mda,mdb,sum)
        variable sum1_var    : std_logic_vector(8 downto 0);
        begin
            sum1_var    := "000000000";
            -------------------------------------
            -- Combinational value
            -------------------------------------
            case sum_dec is
            when "10" =>
                if mda(1)='1' then
                    sum1_var    := ('0' & sum(8 downto 1)) + ('0' & b);
                else
                    sum1_var    := '0' & sum(8 downto 1);
                end if;
            when "01" =>
                -- borrow = 0
                if sum(8)='1' then
                    sum1_var    := ('0'&sum(6 downto 0)&mda(7)) + ('0'&(not b)) +
                            "000000001";
                else
                    sum1_var    := ('0'&mdb(6 downto 0)&mda(7)) + ('0'&(not b)) +
                            "000000001";
                end if;
            when others =>
                sum1_var    := "000000000";
            end case;
            sum1    <= sum1_var;
        end process;
    end generate;

   ---------------------------------------------------------------------
   -- Special Function registers read
   ---------------------------------------------------------------------
      sfrdataalu <=
         acc     when sfraddr=ACC_ID else
         b       when sfraddr=B_ID   else
         psw     when sfraddr=PSW_ID else
         "00000000";

end RTL;
