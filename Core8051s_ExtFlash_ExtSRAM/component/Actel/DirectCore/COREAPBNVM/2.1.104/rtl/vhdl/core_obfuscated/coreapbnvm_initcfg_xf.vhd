-- (c) Copyright 2005 Actel Corporation
-- Rev:                 1.4 28Nov05
library ieee;
use Ieee.std_logIC_1164.all;
use IEEE.numerIC_STD.all;
entity CNVMo0o1l is
port (CNVMool0l: in STD_LOgic;
CNVMLOL0L: in sTD_LOGIC;
CNVMiol0l: in STD_logic;
CNVMoll0l: in std_logic;
CNVMlll0l: in Std_logic;
CNVMill0l: in STD_logic;
CNVMoil0l: in std_logic;
CNVMlil0l: in STd_logic;
CNVMiil0l: in STD_LOGIc;
CNVMo0l0l: out STD_logic;
CNVMl0l0l: out std_logic;
CNVMi0l0l: out STD_LOGIC;
CNVMl1l0l: out std_LOGIC;
CNVMI1L0L: out std_logic);
end CNVMo0o1l;

architecture CNVMl1o0l of CNVMO0O1l is

signal CNVMOO0OI: STD_logic;

signal CNVMLo0oi: STd_logic;

signal CNVMIO0OI: STD_LOGIc;

signal CNVMOL0oi: STD_LOgic;

signal CNVMi: STD_LOGIC;

signal CNVMi00i: STD_LOgic;

signal CNVMll0oi: STd_logic;

signal CNVMI1O1L: std_loGIC;

signal CNVMool1l: STD_LOGIC;

signal CNVMolo0: stD_LOGIC;

signal CNVMioo0: std_LOGIC;

signal CNVML0o0: std_logiC;

signal INIT_DONE: std_logic;

signal CNVMo0: std_logiC;

signal CNVMIL0OI: std_LOGIC;

signal CNVMoi0oi: STD_LOGIC;

signal CNVMLII1l: std_logic;

signal CNVMIII1L: std_logic;

begin
CNVMI <= CNVMOOL0L;
CNVMi00i <= CNVMLOL0l;
CNVMll0oi <= CNVMIOL0l;
CNVMI1O1L <= CNVMoll0l;
CNVMOOL1L <= CNVMlll0l;
CNVMolo0 <= CNVMILL0l;
CNVMioo0 <= CNVMOIL0L;
CNVMl0o0 <= CNVMlil0l;
init_donE <= CNVMIIL0l;
CNVMO0L0L <= CNVMo0;
CNVML0L0l <= CNVMIl0oi;
CNVMI0L0L <= CNVMOI0OI;
CNVMl1l0l <= CNVMLII1l;
CNVMi1l0l <= CNVMiii1l;
CNVMlii1l <= CNVMio0oi;
CNVMiii1l <= CNVMol0oi;
CNVMli0oi:
process (CNVMi,CNVMLL0OI)
begin
if CNVMll0OI = '0' then
CNVMio0oi <= '0';
CNVMOL0OI <= '0';
elsif rising_EDGE(CNVMi) then
CNVMio0oi <= CNVMolo0;
CNVMol0OI <= CNVMIOO0;
end if;
end process;
CNVMII0Oi:
process (CNVMi00i,CNVMLL0OI)
begin
if CNVMLl0oi = '0' then
CNVMoo0oi <= '0';
CNVMIL0OI <= '0';
CNVMLO0OI <= '0';
CNVMOI0OI <= '0';
elsif RISING_Edge(CNVMi00i) then
CNVMOO0Oi <= CNVML0O0;
CNVMil0oi <= CNVMOO0OI;
CNVMLO0oi <= INIT_Done;
CNVMoi0oi <= CNVMlo0oi;
end if;
end process;
CNVMo0 <= CNVMi when (CNVMI1O1L or CNVMOOL1l) = '1' else
CNVMi00i;
end CNVMl1o0l;
