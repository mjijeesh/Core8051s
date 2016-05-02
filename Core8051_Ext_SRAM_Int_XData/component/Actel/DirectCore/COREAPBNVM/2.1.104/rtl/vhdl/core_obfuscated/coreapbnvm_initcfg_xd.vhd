-- (c) Copyright 2005 Actel Corporation
-- Rev:                 1.4 28Nov05
library IEEE;
use IEEE.STD_logic_1164.all;
use IEEE.numERIC_STD.all;
entity CNVMlio1l is
generic (CNVMool0: inteGER := 10); port (CNVMOOL0L: in std_logic;
CNVMloL0L: in std_logic;
CNVMIOL0L: in std_LOGIC;
CNVMoll0l: in std_loGIC;
CNVMlll0l: in Std_logic_vector(17 downto 0);
CNVMill0l: in STD_logic_vector(CNVMOOL0-1 downto 0);
CNVMOIL0L: in stD_LOGIC_VECTOR(1 downto 0);
CNVMlil0l: in std_lOGIC;
CNVMiil0l: in std_logIC;
CNVMO0L0L: out STd_logic_vector(17 downto 0);
CNVML0L0L: out STD_logic_vector(CNVMool0-1 downto 0);
CNVMI0L0L: out STD_LOGIC;
CNVMl1l0l: out STD_LOGIC);
end CNVMlio1l;

architecture CNVMl1o0l of CNVMLIO1l is

signal CNVMO0loi: UNSIGNED(CNVMool0-1 downto 0);

signal CNVMl0LOI: STD_Logic;

signal CNVMi0loi: std_logic;

signal CNVMo1loi: UNSIGNED(17 downto 0);

signal CNVMl1LOI: UNSIGNED(17 downto 0);

signal CNVMi1loI: unsiGNED(17 downto 0);

signal CNVMOOIOI: UNSIGNED(17 downto 0);

signal CNVMloioI: unsigned(17 downto 0);

signal CNVMioioi: UNsigned(17 downto 0);

signal CNVMolioi: UNSIGNed(17 downto 0);

signal CLK: std_LOGIC;

signal NRESET: std_logIC;

signal CNVMLIL1L: std_logic;

signal CNVMiil1l: STD_LOgic;

signal CNVMLLIOI: stD_LOGIC_VECTOR(17 downto 0);

signal CNVMilioi: STd_logic_vector(CNVMool0-1 downto 0);

signal CNVMLLI1L: std_logic_vecTOR(1 downto 0);

signal CNVMIoo0: STD_LOGIC;

signal CNVMoiioi: STD_LOGIC;

signal CNVMlll1l: std_LOGIC_VECTOR(17 downto 0);

signal CNVMLIO0: std_logic_vector(CNVMOOL0-1 downto 0);

signal CNVMooi1l: STD_LOGIc;

signal CNVMoli1l: std_LOGIC;

begin
clk <= CNVMOOL0L;
nreseT <= CNVMloL0L;
CNVMlil1l <= CNVMiol0l;
CNVMIIL1L <= CNVMOLL0l;
CNVMllioi <= CNVMlll0l;
CNVMilioi <= CNVMill0l;
CNVMLLI1L <= CNVMoil0l;
CNVMIoo0 <= CNVMLil0l;
CNVMOIIOI <= CNVMIIL0L;
CNVMO0l0l <= CNVMLLL1L;
CNVML0l0l <= CNVMlio0;
CNVMi0l0l <= CNVMooi1l;
CNVMl1l0l <= CNVMOLI1l;
CNVMOOI1l <= CNVMl0loI;
CNVMOLI1L <= CNVMi0loi;
CNVMlio0 <= std_logic_VECTOR(CNVMO0LOI);
CNVMlll1L <= std_logic_vector(CNVMoliOI);
CNVMliioi:
if CNVMOOl0 < 18
generate
CNVMIIIOI:
for CNVMII01L in CNVMOOL0 to 17
generate
CNVMo1loi(CNVMII01L) <= '0';
end generate;
CNVMO1Loi(CNVMOOL0-1 downto 0) <= CNVMo0loi(CNVMool0-1 downto 0);
end generate;
CNVMo0ioi:
if CNVMool0 >= 18
generate
CNVMo1loi(17 downto 0) <= CNVMo0loi(17 downto 0);
end generate;
CNVMl1loi <= (CNVMo1loi(16 downto 0)&'0') when CNVMLLI1L /= "00" else
CNVMO1loi;
CNVMI1LOI <= "00000"&(unsiGNED(CNVMllioI(17 downto 12)&CNVMLlioi(6 downto 0)));
CNVMooioi <= CNVMI1Loi when CNVMoiioi = '1' else
uNSIGNED(CNVMllioi);
CNVMioioi <= UNSIGNED(CNVMooioi)+CNVML1LOI;
CNVMloIOI <= CNVMioiOI(12 downto 7)&"00000"&CNVMioiOI(6 downto 0);
CNVMOLIOi <= CNVMLOIOI when CNVMoiioi = '1' else
CNVMioioi;
CNVML0IOi:
process (clk,nrESET)
begin
if nreset = '0' then
CNVMO0loi <= ( others => '0');
CNVML0LOI <= '0';
elsif rising_eDGE(CLK) then
if CNVMiil1l = '1' then
CNVMo0loi <= ( others => '0');
elsif CNVMlil1l = '1' then
CNVMo0loi <= CNVMo0LOI+1;
end if;
if (CNVMO0LOI = UNSIGNED(CNVMILIOI)) then
CNVML0LOi <= '1';
elsif CNVMiil1l = '1' then
CNVMl0loi <= '0';
end if;
end if;
end process CNVMl0ioi;
CNVMi0ioi:
process (CNVMolioi,CNVMlli1l,CNVMioo0)
begin
if CNVMoliOI(6 downto 1) = "111111" and (CNVMolioi(0) or CNVMlli1l(0)
or CNVMLLI1l(1)) = '1' then
CNVMI0loi <= CNVMIOO0;
else
CNVMi0loi <= '0';
end if;
end process CNVMI0IOI;
end CNVML1O0l;
