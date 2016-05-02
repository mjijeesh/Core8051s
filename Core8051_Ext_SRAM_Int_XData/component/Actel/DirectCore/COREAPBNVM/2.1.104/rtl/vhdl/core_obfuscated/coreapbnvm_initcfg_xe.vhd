-- (c) Copyright 2005 Actel Corporation
-- Rev:                 1.4 28Nov05
library iEEE;
use IEEE.std_logic_1164.all;
use ieee.NUmeric_std.all;
entity CNVMiio1l is
generic (CNVMlol0: integer := 4;
CNVMIOL0: INTEGER := 2); port (CNVMool0L: in Std_logic;
CNVMLOL0L: in STD_LOGIc;
CNVMIOL0L: in STD_LOGIC;
CNVMoll0l: in STD_LOGIC_VECtor(CNVMiol0-1 downto 0);
CNVMlll0L: in STD_LOGIC_vector(CNVMIOL0-1 downto 0);
CNVMill0L: out stD_LOGIC_VECTOr(CNVMlol0-1 downto 0));
end CNVMiIO1L;

architecture CNVML1O0L of CNVMIIO1L is

signal CNVMoi: sTD_LOGIC;

signal CNVMili1l: std_LOGIC;

signal CNVMoii1l: std_LOGIC;

signal CNVMi011l: sTD_LOGIC_VECTor(CNVMIOL0-1 downto 0);

signal CNVMO1ioi: std_LOGIC_VECTOR(CNVMiol0-1 downto 0);

signal CNVMl1ioi: std_LOGIC_VECTOR(CNVMlol0-1 downto 0);

begin
CNVMoi <= CNVMOOL0L;
CNVMili1l <= CNVMlol0l;
CNVMOII1L <= CNVMIol0l;
CNVMI011l <= CNVMoll0l;
CNVMo1ioi <= CNVMlll0l;
CNVMILL0L <= CNVML1ioi;
CNVMi1ioi:
process (CNVMOI,CNVMili1l,CNVMOII1L,CNVMI011l,CNVMO1ioi)
begin
CNVMl1IOI <= ( others => '0');
if (not CNVMOI and CNVMoii1l) = '1' then
CNVML1IOI(tO_INTEGER(unSIGNED(CNVMO1ioi))) <= '1';
elsif (not CNVMOI and CNVMili1l) = '1' then
CNVMl1ioi(to_iNTEGER(UNSIGNED(CNVMi011l))) <= '1';
else
CNVML1IOI <= ( others => '0');
end if;
end process CNVMi1ioi;
end CNVMl1o0l;
