-- (c) Copyright 2005 Actel Corporation
-- Rev:                 1.4 28Nov05
library ieee;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_std.all;
entity CNVMo1L0L is
generic (CNVMlol0: INTEGER := 4;
CNVMiOL0: integer := 1); port (CNVMOOL0l: in std_logic;
CNVMlol0l: in STD_LOGic;
CNVMiol0l: in std_lOGIC;
CNVMoll0l: in std_logIC;
CNVMlll0l: in std_logIC;
CNVMill0l: in std_logic;
CNVMOIL0l: in STd_logic;
CNVMLIL0L: in STD_Logic;
CNVMIIL0L: out STD_LOGIC;
CNVMo0l0l: out std_logic;
CNVML0L0l: out STD_logic;
CNVMi0l0l: out std_logic;
CNVML1L0l: out STD_LOGIc;
CNVMI1L0L: out std_LOGIC;
CNVMooi0l: out std_logic_VECTOR(CNVMiol0-1 downto 0);
CNVMloi0l: out STD_Logic);
end CNVMo1l0L;

architecture CNVMl1O0L of CNVMo1l0l is

type CNVMoO11L is (CNVMlo11l,CNVMio11L,CNVMOL11L,CNVMl111l,CNVMi111l,CNVMOI11L,PROGRAM,CNVMooooi,CNVMloooi);

signal CNVMo011l: CNVMOo11l;

signal CNVMl011l: unsigned(CNVMIOL0-1 downto 0);

signal CNVMO0I1L: std_LOGIC;

signal clk: Std_logic;

signal nreset: STD_LOGIc;

signal CNVMioo0: Std_logic;

signal busy: STD_LOGIc;

signal CNVMooi1l: STD_Logic;

signal CNVMOLI1L: std_logic;

signal CNVML10i: std_LOGIC;

signal CNVMIOooi: STD_LOGIC;

signal CNVMlil1l: STD_LOGIC;

signal CNVMIIL1l: std_logIC;

signal CNVMi1o1l: std_LOGIC;

signal CNVMLOL1L: std_logic;

signal CNVMiOL1L: STd_logic;

signal CNVMOII1L: STD_logic;

signal CNVMi011l: std_logic_VECTOR(CNVMiol0-1 downto 0);

signal CNVMl0O0: STD_logic;

begin
clk <= CNVMool0l;
NRESET <= CNVMlol0l;
CNVMIoo0 <= CNVMIOL0L;
BUSY <= CNVMoll0l;
CNVMooi1l <= CNVMLLL0L;
CNVMoli1l <= CNVMILL0L;
CNVMl10i <= CNVMOIL0l;
CNVMioooi <= CNVMlil0l;
CNVMiil0l <= CNVMLil1l;
CNVMO0l0l <= CNVMIIL1L;
CNVML0L0L <= CNVMI1O1l;
CNVMI0L0L <= CNVMLOL1L;
CNVMl1l0l <= CNVMiol1l;
CNVMI1l0l <= CNVMoii1l;
CNVMOOI0l <= CNVMI011L;
CNVMloi0l <= CNVMl0o0;
CNVMI011l <= STd_logic_vector(CNVMl011l);
CNVMl0o0 <= CNVMo0i1l;
CNVMi1o1l <= '1' when CNVMO011l /= CNVMLO11L else
'0';
CNVMiil1L <= '1' when CNVMo011l = CNVMIo11l or CNVMo011l = CNVMoi11l
or CNVMO011L = CNVMOL11L else
'0';
CNVMIOL1l <= '1' when CNVMo011l = PROGRAM else
'0';
CNVMLOL1L <= '1' when CNVMo011l = CNVMi111l else
'0';
CNVMlil1l <= '1' when ((CNVMo011l = CNVMI111l and CNVMoli1l = '0') or CNVMO011L = CNVMLOooi) and CNVMooi1L = '0' else
'0';
CNVMoii1l <= '1' when CNVMo011L = CNVMl111l else
'0';
CNVMolooi:
process (clk,NRESET)
begin
if nreseT = '0' then
CNVMo011l <= CNVMLO11l;
CNVMl011l <= ( others => '0');
CNVMO0I1L <= '0';
elsif rising_edge(clk) then
if (not CNVMO0I1l and CNVMIOO0) = '1' and CNVMO011l = CNVMoi11l
and CNVML011L = CNVMlol0-1 then
CNVMo0i1l <= '1';
elsif (CNVMO0I1l and not CNVMIOO0) = '1' then
CNVMO0i1l <= '0';
end if;
case CNVMo011l is
when CNVMLO11L =>
if CNVMioo0 = '1' and CNVMO0i1l = '0' then
CNVMO011l <= CNVMIO11L;
else
CNVMo011l <= CNVMLO11L;
end if;
when CNVMio11l =>
if (CNVMIOOOi and CNVML10I) = '1' then
CNVMo011l <= CNVMol11l;
else
CNVMO011L <= CNVMOI11L;
end if;
when CNVMOI11L =>
if CNVMl011L = CNVMlol0-1 then
CNVMO011L <= CNVMlo11l;
CNVMl011l <= ( others => '0');
else
CNVMO011L <= CNVMio11l;
CNVML011L <= CNVML011l+1;
end if;
when CNVMol11l =>
CNVMO011l <= CNVML111L;
when CNVMl111L =>
if busy = '0' then
CNVMO011L <= CNVMI111L;
end if;
when CNVMI111L =>
if (CNVMOOi1l or CNVMoli1l) = '1' then
CNVMo011L <= Program;
else
CNVMo011l <= CNVML111L;
end if;
when program =>
if BUSY = '0' then
CNVMo011l <= CNVMOOOOI;
end if;
when CNVMooooi =>
if BUSY = '0' then
CNVMo011l <= CNVMLOOOI;
end if;
when CNVMLOOoi =>
if CNVMOOI1l = '1' then
CNVMO011L <= CNVMoi11l;
else
CNVMO011L <= CNVMl111l;
end if;
end case;
end if;
end process CNVMolooi;
end CNVMl1o0l;
