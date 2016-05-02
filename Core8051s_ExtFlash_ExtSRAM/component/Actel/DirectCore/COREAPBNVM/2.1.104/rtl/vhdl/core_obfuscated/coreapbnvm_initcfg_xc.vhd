-- (c) Copyright 2005 Actel Corporation
-- Rev:                 1.4 28Nov05
library IEEE;
use ieee.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity CNVMioi0l is
generic (CNVMlol0: INTEGER := 4;
CNVMIOL0: INTEGER := 2;
CNVMool0: INTEGER := 10); port (CNVMooL0L: in STD_logic_vector((9*CNVMLOL0)-1 downto 0);
CNVMlol0l: in STD_LOGIc_vector(CNVMlol0-1 downto 0);
CNVMIOL0L: in std_lOGIC;
CNVMoll0l: in std_logic_veCTOR(CNVMiol0-1 downto 0);
CNVMLLl0l: in std_logic;
CNVMILL0L: in STD_LOGIC;
CNVMOIL0L: in std_logic_vecTOR(CNVMiol0-1 downto 0);
CNVMliL0L: in std_logic_vector(17 downto 0);
CNVMiil0l: in std_logic_vectoR(CNVMLOL0-1 downto 0);
CNVMo0l0l: in std_logic_vectOR((CNVMOOL0*CNVMLOL0)-1 downto 0);
CNVML0L0l: in std_lOGIC_VECTOR((18*CNVMLOL0)-1 downto 0);
CNVMi0l0L: in STD_LOGIC_Vector(CNVMlol0-1 downto 0);
CNVML1l0l: in STD_LOGIC_VEctor((2*CNVMLOL0)-1 downto 0);
CNVMI1L0L: in STD_LOGIC;
CNVMloi0l: in STD_logic;
CNVMOOI0L: in std_loGIC;
CNVMoli0l: in STD_LOGIC;
CNVMlli0l: in STD_Logic_vector(17 downto 0);
CNVMili0l: in STD_LOGIC;
CNVMoii0l: in sTD_LOGIC_VECTor(31 downto 0);
CNVMlii0l: in sTD_LOGIC;
CNVMIII0L: in STD_Logic;
CNVMO0I0L: in STD_LOGic;
CNVMl0i0l: in std_logic;
CNVMi0i0l: in STD_logic;
CNVMo1i0l: in STd_logic;
CNVML1I0l: in STD_LOgic;
CNVMI1I0l: in STD_LOgic;
CNVMOO00L: in stD_LOGIC;
CNVMlo00l: in std_logic;
CNVMIO00l: in STD_LOGIC;
CNVMol00L: in STd_logic;
CNVMlL00L: in STD_LOGIC;
CNVMil00l: in STD_LOGIC_VECtor(1 downto 0);
CNVMOI00L: in std_logIC;
CNVMLI00L: in STD_LOGIC;
CNVMii00l: in stD_LOGIC;
CNVMO000L: in std_logic;
CNVMl000l: out STD_LOGIc_vector(17 downto 0);
CNVMI000L: out std_logic;
CNVMO100l: out std_logic_VECTOR(31 downto 0);
CNVML100l: out std_logic;
CNVMi100l: out STD_logic;
CNVMOO10L: out sTD_LOGIC;
CNVMlo10l: out STD_logic;
CNVMIO10L: out STD_LOGIC;
CNVMol10L: out std_logic;
CNVMLL10L: out sTD_LOGIC;
CNVMil10l: out STD_LOGic;
CNVMoi10l: out STd_logic;
CNVMLI10L: out std_logic;
CNVMii10l: out sTD_LOGIC;
CNVMo010l: out STD_LOGIC;
CNVMl010l: out STD_LOGIC;
CNVMi010l: out std_logic_VECTOR(1 downto 0);
CNVMo110l: out STD_LOGIc;
CNVMl110L: out std_logic_vecTOR(17 downto 0);
CNVMi110l: out STD_LOGIC;
CNVMooo1l: out STD_LOGIC_VEctor(1 downto 0);
CNVMLOO1L: out STD_logic;
CNVMioo1l: out std_logic;
CNVMolo1l: out std_logic_vectOR(CNVMOol0-1 downto 0);
CNVMllo1l: out std_logic;
CNVMilo1l: out STD_LOGIC;
CNVMOIO1L: out std_logic);
end CNVMIOI0l;

architecture CNVMl1o0l of CNVMioi0l is

signal CNVMllooi: STD_LOGIC_VECtor(1 downto 0);

signal CNVMILOOI: stD_LOGIC_VECTOR(1 downto 0);

signal CNVMOIOOI: std_LOGIC_VECTOR(8 downto 0);

signal CNVMliooi: std_logic_veCTOR(17 downto 0);

signal CNVMIIOOI: STD_logic_vector(17 downto 0);

signal CNVMO0ooi: sTD_LOGIC_VECTOr(CNVMoOL0-1 downto 0);

signal CNVML0OOI: STD_LOGIC_VECtor(CNVMool0-1 downto 0);

signal CNVMI0OOI: stD_LOGIC_VECTOR(1 downto 0);

signal CNVMO1OOI: STD_LOGIC_Vector(1 downto 0);

signal CNVMO10i: std_lOGIC_VECTOR((9*CNVMLOL0)-1 downto 0);

signal CNVMl10i: std_lOGIC_VECTOR(CNVMlOL0-1 downto 0);

signal CNVMO1o1l: STD_LOGIC;

signal CNVML1O1l: STd_logic_vector(CNVMIol0-1 downto 0);

signal CNVMloL1L: Std_logic;

signal CNVMiol1l: std_logic;

signal CNVMoll1l: std_logic_vector(CNVMioL0-1 downto 0);

signal CNVMlll1l: STD_logic_vector(17 downto 0);

signal CNVMl0i1l: std_logic_vecTOR(CNVMlol0-1 downto 0);

signal CNVMi0i1L: std_logic_VECTOR((CNVMOOL0*CNVMlol0)-1 downto 0);

signal CNVMO1I1l: std_LOGIC_VECTOR((18*CNVMlol0)-1 downto 0);

signal CNVML1I1L: std_LOGIC_VECTOR(CNVMLOL0-1 downto 0);

signal CNVMi1i1l: STD_LOGic_vector((2*CNVMlol0)-1 downto 0);

signal CNVMILL1L: STD_logic;

signal CNVMOIL1l: STD_LOgic;

signal CNVMO0L1l: STD_LOGic;

signal CNVML0L1L: STD_LOGIC;

signal CNVMI10I: std_logic_vector(17 downto 0);

signal CNVMoo1i: std_logic;

signal CNVMlo1i: std_logic_vECTOR(31 downto 0);

signal CNVMio1i: std_logic;

signal CNVMol1i: STD_LOGIC;

signal CNVMLL1I: STD_LOGIC;

signal CNVMIL1I: std_logiC;

signal CNVMoi1i: STD_LOGIC;

signal CNVMLI1I: std_logic;

signal CNVMII1I: STD_LOGIc;

signal CNVMo01I: STd_logic;

signal CNVML01I: std_logic;

signal CNVMi01i: STD_LOGIC;

signal CNVMloo0: STD_LOGIC;

signal CNVMO11I: std_logic;

signal CNVMl11i: std_logiC;

signal CNVMi11i: std_logic_veCTOR(1 downto 0);

signal CNVMooo0: std_lOGIC;

signal CNVMIOO0: STD_LOgic;

signal CNVMOLO0: Std_logic;

signal Init_done: std_logic;

signal CNVMI0: STD_LOGIC_Vector(17 downto 0);

signal CNVMLLO0: STD_LOgic;

signal CNVMl0: Std_logic_vector(31 downto 0);

signal CNVMILL: STD_LOGIc;

signal CNVMoll: std_logic;

signal CNVMO0L: STD_LOGIC;

signal CNVMoil: STd_logic;

signal CNVMiil: STD_logic;

signal CNVMlil: STD_logic;

signal CNVMIOL: stD_LOGIC;

signal CNVMilo0: STD_logic;

signal CNVMI1: std_lOGIC;

signal CNVML0l: STD_LOGIC;

signal CNVMoiO0: std_logic;

signal CNVMlol: STD_LOGIC;

signal CNVMlLL: Std_logic;

signal CNVMo1: STD_LOGIc_vector(1 downto 0);

signal CNVMOOl: STD_LOGIC;

signal CNVMi0l1l: STD_LOGIc_vector(17 downto 0);

signal CNVMo1l1l: STD_LOGIC;

signal CNVMLLI1L: std_logic_vECTOR(1 downto 0);

signal CNVMl1l1l: STD_LOGIc;

signal CNVMloi1l: sTD_LOGIC;

signal CNVMI1L1L: std_logic_vectOR(CNVMool0-1 downto 0);

signal CNVMIOI1L: std_logic;

signal CNVMlil1L: STD_LOGIC;

signal CNVMIIL1l: std_logic;

begin
CNVMo10i <= CNVMoOL0L;
CNVMl10i <= CNVMlol0l;
CNVMo1O1L <= CNVMIOL0l;
CNVML1o1l <= CNVMoll0l;
CNVMLOL1L <= CNVMLLL0l;
CNVMiol1l <= CNVMILL0L;
CNVMoll1L <= CNVMoil0l;
CNVMlll1l <= CNVMlil0l;
CNVML0I1l <= CNVMiiL0L;
CNVMi0i1l <= CNVMO0l0l;
CNVMo1i1l <= CNVML0L0L;
CNVMl1i1l <= CNVMi0l0L;
CNVMI1I1L <= CNVMl1l0l;
CNVMill1L <= CNVMi1l0l;
CNVMoil1l <= CNVMLOI0L;
CNVMO0L1L <= CNVMooi0l;
CNVMl0l1l <= CNVMOLI0L;
CNVMI10I <= CNVMLLI0L;
CNVMoo1i <= CNVMili0l;
CNVMlo1i <= CNVMoii0l;
CNVMio1I <= CNVMlii0L;
CNVMol1i <= CNVMiiI0L;
CNVMLL1i <= CNVMo0i0l;
CNVMil1i <= CNVMl0i0L;
CNVMoi1i <= CNVMi0i0l;
CNVMli1i <= CNVMo1i0l;
CNVMII1I <= CNVML1I0L;
CNVMo01i <= CNVMi1i0l;
CNVML01I <= CNVMoo00L;
CNVMi01i <= CNVMLO00L;
CNVMLOO0 <= CNVMIO00L;
CNVMo11i <= CNVMOL00L;
CNVML11I <= CNVMll00l;
CNVMi11I <= CNVMil00l;
CNVMOOO0 <= CNVMoi00L;
CNVMIOO0 <= CNVMli00L;
CNVMOLO0 <= CNVMII00L;
INIT_DONe <= CNVMo000L;
CNVMl000l <= CNVMi0;
CNVMI000L <= CNVMLLO0;
CNVMO100L <= CNVMl0;
CNVMl100l <= CNVMill;
CNVMi100l <= CNVMOLl;
CNVMoo10L <= CNVMO0L;
CNVMLO10L <= CNVMOil;
CNVMiO10L <= CNVMiil;
CNVMOL10L <= CNVMLIl;
CNVMlL10L <= CNVMiol;
CNVMiL10L <= CNVMilo0;
CNVMoi10L <= CNVMi1;
CNVMli10l <= CNVML0L;
CNVMii10l <= CNVMOio0;
CNVMo010L <= CNVMloL;
CNVML010L <= CNVMlll;
CNVMi010l <= CNVMo1;
CNVMo110L <= CNVMOOL;
CNVML110L <= CNVMI0L1l;
CNVMi110l <= CNVMO1L1l;
CNVMooo1l <= CNVMlli1L;
CNVMloo1l <= CNVMl1l1l;
CNVMioo1L <= CNVMLOI1L;
CNVMOLO1L <= CNVMI1L1L;
CNVMLLO1L <= CNVMIOI1L;
CNVMILO1L <= CNVMlil1L;
CNVMoio1l <= CNVMiil1l;
CNVMLLI1L <= CNVMllooi;
CNVMILOOI <= CNVMLLOOI;
CNVMl1ooI:
for CNVMII01L in 0 to 8
generate
CNVMoioOI(CNVMII01L) <= CNVMo10i((9*TO_integer(unsigned(CNVMOLL1L)))+CNVMII01L);
end generate;
CNVMI1ooi:
for CNVMii01l in 0 to 17
generate
CNVMLIooi(CNVMii01l) <= CNVMO1I1L((18*TO_Integer(unsiGNED(CNVMl1o1l)))+CNVMii01l);
end generate;
CNVMOOLOI:
for CNVMii01l in 7 to 17
generate
CNVMIIOoi(CNVMii01l) <= CNVMo1i1l((18*to_integer(UNSIGned(CNVMOLL1L)))+CNVMII01L);
end generate;
CNVMLOLOi:
for CNVMii01l in 0 to 6
generate
CNVMiiooi(CNVMii01l) <= '0';
end generate;
CNVMioLOI:
for CNVMII01L in 0 to CNVMOOL0-1
generate
CNVMO0OOI(CNVMII01L) <= CNVMi0i1l((CNVMool0*TO_INTEGER(unsigned(CNVMl1O1L)))+CNVMii01l);
end generate;
CNVMolloi:
for CNVMii01l in 0 to CNVMOOl0-1
generate
CNVMl0ooi(CNVMii01l) <= CNVMi0i1l((CNVMOOL0*TO_INTEGER(UNSIGNED(CNVMoll1l)))+CNVMIi01l);
end generate;
CNVMLLLOI:
for CNVMii01l in 0 to 1
generate
CNVMI0OOi(CNVMII01l) <= CNVMI1I1L((2*TO_integer(unsigned(CNVML1O1L)))+CNVMII01L);
end generate;
CNVMilloi:
for CNVMii01l in 0 to 1
generate
CNVMO1OOI(CNVMii01L) <= CNVMI1i1l((2*to_intEGER(UNSIGNED(CNVMOll1l)))+CNVMII01l);
end generate;
CNVMOILOI:
process (CNVMoiooI,CNVMliOOI,CNVMiioOI,CNVMO0OOI,CNVMl0ooi,CNVMi0ooi,CNVMo1ooi,CNVMl10i,CNVML1I1L,CNVML0I1l,CNVMIOo0,CNVMl1o1l,CNVMoll1l,CNVMILOOI,CNVMill1l,CNVMo0l1l,init_DONE,CNVMOIL1L,CNVML0l1l,CNVMOLO0,CNVMIOl1l,CNVMLLL1L,CNVMO1O1L,CNVMi10i,CNVMoo1i,CNVMLo1i,CNVMio1i,CNVMOL1I,CNVMLL1i,CNVMIL1i,CNVMOI1I,CNVMLI1I,CNVMii1i,CNVMo01i,CNVML01i,CNVMi01i,CNVMlOO0,CNVMo11i,CNVMl11I,CNVMI11I,CNVMOOO0,CNVMLOL1L)
variable CNVMLiloi: UNSIGNED(CNVMIOL0-1 downto 0);
variable CNVMiiloi: uNSIGNED(CNVMiol0-1 downto 0);
begin
CNVMliloi := UNSIGNED(CNVMl1o1l);
CNVMiiloi := unsigned(CNVMOLL1l);
if (CNVMOLO0 and not INIT_DONE) = '1' then
CNVMI0 <= CNVMlll1l;
CNVMLLO0 <= '0';
CNVMl0 <= ( others => '0');
CNVMILl <= '0';
CNVMOLL <= '0';
CNVMO0l <= '0';
CNVMOIl <= '0';
CNVMIIl <= '0';
CNVMLIL <= '0';
CNVMiol <= '0';
CNVML0L <= '1';
CNVMIlo0 <= CNVMO1O1L;
CNVMi1 <= CNVMO1O1l;
CNVMoio0 <= '0';
CNVMLOL <= CNVMl0i1l(TO_integer(CNVMLILOi));
CNVMlll <= '0';
CNVMO1 <= CNVMILOOI;
CNVMool <= '0';
elsif CNVMioo0 = '1' then
CNVMI0 <= CNVMlll1l;
CNVMLLO0 <= '0';
CNVML0(31 downto 9) <= ( others => '0');
CNVMl0(8 downto 0) <= CNVMoIOOI;
CNVMilL <= '0';
CNVMOLL <= '0';
CNVMO0L <= '0';
CNVMoil <= '0';
CNVMiil <= '0';
CNVMlil <= '0';
CNVMIOL <= CNVMIOl1l;
CNVMILo0 <= '0';
CNVMi1 <= '0';
CNVMl0l <= '1';
CNVMoio0 <= '0';
CNVMlol <= CNVML0i1l(TO_integer(CNVMiilOI));
CNVMlll <= '0';
CNVMO1 <= CNVMILOOI;
CNVMool <= CNVMLOL1l;
else
CNVMi0 <= CNVMI10I;
CNVMllo0 <= CNVMoo1i;
CNVMl0 <= CNVMLO1I;
CNVMill <= CNVMio1i;
CNVMOLL <= CNVMOL1I;
CNVMO0L <= CNVMll1i;
CNVMOIL <= CNVMIL1I;
CNVMiil <= CNVMOI1I;
CNVMlil <= CNVMLI1I;
CNVMiol <= CNVMii1i;
CNVMilo0 <= CNVMO01I;
CNVMi1 <= CNVMl01i;
CNVML0l <= CNVMI01I;
CNVMOio0 <= CNVMloo0;
CNVMlol <= CNVMo11i;
CNVMlll <= CNVMl11i;
CNVMO1 <= CNVMi11I;
CNVMool <= CNVMOOO0;
end if;
if (CNVMolo0 and not CNVMioo0) = '1' then
CNVMI0l1l <= CNVMliooI;
CNVMI1L1L <= CNVMo0ooi;
CNVMllooi <= CNVMI0OOI;
CNVMo1l1l <= CNVMl1i1l(To_integer(CNVMLILoi));
CNVML1L1L <= CNVML0I1L(to_intEGER(CNVMliloi));
CNVMloi1l <= CNVMl10i(TO_INTEGER(CNVMIILOI));
else
CNVMI0L1L <= CNVMiiooi;
CNVMi1l1l <= CNVML0ooi;
CNVMllooi <= CNVMO1OOI;
CNVMo1l1l <= CNVML1I1l(to_inteGER(CNVMiiloi));
CNVML1l1l <= CNVML0I1L(to_integer(CNVMiiloi));
CNVMLOI1L <= CNVMl10i(to_integer(CNVMIILOI));
end if;
CNVMioi1l <= not (CNVMOLO0 or CNVMIOO0);
if (CNVMolo0 and not init_donE) = '1' then
CNVMlil1l <= CNVMILL1l;
CNVMiil1L <= CNVMoil1l;
else
CNVMlil1l <= CNVMO0L1l;
CNVMiiL1L <= CNVMl0l1l;
end if;
end process CNVMoiLOI;
end CNVML1O0L;
