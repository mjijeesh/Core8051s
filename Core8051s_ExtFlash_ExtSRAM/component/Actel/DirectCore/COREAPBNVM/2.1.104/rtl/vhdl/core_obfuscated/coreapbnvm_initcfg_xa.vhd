-- (c) Copyright 2005 Actel Corporation
-- Rev:                 1.4 28Nov05
library ieee;
use Ieee.STD_logic_1164.all;
use ieee.numeRIC_STD.all;
entity CNVMi1o0l is
generic (CNVMLol0: INTEger := 3;
CNVMiol0: INTEGEr := 1); port (CNVMoOL0L: in std_LOGIC;
CNVMlol0l: in STD_logic;
CNVMiol0l: in std_logic;
CNVMoll0l: in std_logic;
CNVMlll0l: in std_logic;
CNVMill0l: out std_logic;
CNVMoil0l: out std_logic;
CNVMlil0l: out std_logic;
CNVMIIl0l: out STD_logic;
CNVMO0l0l: out STD_logic;
CNVML0L0L: out STD_LOGic;
CNVMI0L0L: out std_logic_vector(CNVMiol0-1 downto 0);
init_base0: in std_LOGIC;
Init_base1: in STD_LOGIC;
init_base2: in STD_logic;
iniT_BASE3: in std_logic);
end CNVMI1O0L;

architecture CNVML1O0L of CNVMI1O0L is

type CNVMOO11L is (CNVMLO11L,CNVMio11l,CNVMOL11L,CNVMLL11L,CNVMil11l,CNVMoI11L,CNVMLI11L,CNVMii11l);

signal CNVMo011l: CNVMoo11l;

signal CNVMl011l: uNSIGNED(CNVMiol0-1 downto 0);

signal clk: STD_LOGIC;

signal NRESEt: std_LOGIC;

signal CNVMOLO0: std_logic;

signal busy: STD_LOGIC;

signal CNVMooi1l: STD_LOGIC;

signal CNVMlil1l: STD_LOGIC;

signal CNVMIIL1L: std_logic;

signal CNVMili1l: std_lOGIC;

signal CNVMI0O1L: STD_logic;

signal CNVMo1o1l: sTD_LOGIC;

signal CNVMool1l: std_lOGIC;

signal CNVMI011l: std_logiC_VECTOR(CNVMiol0-1 downto 0);

signal CNVMO111L: std_logic;

begin
CLK <= CNVMool0l;
NRESET <= CNVMlol0l;
CNVMOLO0 <= CNVMiol0l;
busy <= CNVMOLL0L;
CNVMooi1L <= CNVMlll0l;
CNVMill0l <= CNVMLil1l;
CNVMoil0l <= CNVMIIL1L;
CNVMLIL0L <= CNVMILi1l;
CNVMIIL0l <= CNVMi0o1l;
CNVMo0l0l <= CNVMO1O1L;
CNVML0L0L <= CNVMOOL1L;
CNVMi0L0L <= CNVMi011l;
CNVMi011l <= std_logic_veCTOR(CNVML011L);
CNVMo1o1L <= '1' when CNVMo011l = CNVMll11l or CNVMo011L = CNVMIL11L else
'0';
CNVMIIL1L <= '1' when CNVMO011L = CNVMIO11L or CNVMO011l = CNVMol11l else
'0';
CNVMI0o1l <= '1' when CNVMo011l = CNVMii11l else
'0';
CNVMLIL1L <= '1' when CNVMo011l = CNVMil11l and Busy = '0'
and CNVMoOI1L = '0' else
'0';
CNVMILI1L <= '1' when CNVMo011l = CNVMil11l else
'0';
CNVMool1l <= '1' when CNVMO011l /= CNVMIi11l and CNVMo011l /= CNVMlo11l else
'0';
CNVMO111l <= init_base0 or init_base1
or init_base2
or Init_base3;
process (clk,NRESet)
begin
if NRESET = '0' then
CNVMo011l <= CNVMlo11L;
CNVMl011L <= ( others => '0');
elsif RISing_edge(Clk) then
case CNVMo011l is
when CNVMlo11l =>
if CNVMolo0 = '1' then
CNVMo011l <= CNVMio11l;
end if;
when CNVMio11l =>
CNVMO011L <= CNVMol11l;
when CNVMol11L =>
if busy = '0' then
CNVMo011l <= CNVMLL11L;
end if;
when CNVMll11l =>
CNVMO011L <= CNVMil11L;
when CNVMil11l =>
if BUSY = '0' then
if CNVMoOI1L = '1' then
CNVMo011L <= CNVMoi11L;
else
CNVMo011L <= CNVMLL11L;
end if;
end if;
when CNVMoi11l =>
CNVMl011l <= ( others => '0');
CNVMo011l <= CNVMli11l;
when CNVMLI11l =>
CNVMO011l <= CNVMii11L;
when CNVMII11L =>
if CNVMo111l = '1' then
if INIT_BASe0 = '1' then
CNVML011L <= TO_unsigned(1,
CNVMiol0);
elsif INIT_base1 = '1' then
CNVML011l <= to_unsigned(2,
CNVMiOL0);
elsif INIT_BASE2 = '1' then
CNVML011L <= TO_UNSIGNED(3,
CNVMiol0);
elsif init_bASE3 = '1' then
CNVMl011l <= to_unsignED(4,
CNVMIOL0);
end if;
CNVMo011L <= CNVMIO11l;
else
CNVMo011l <= CNVMii11l;
end if;
end case;
end if;
end process;
end CNVML1O0L;
