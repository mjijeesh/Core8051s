-- (c) Copyright 2005 Actel Corporation
-- Rev:                 1.4 28Nov05
library IEEE;
use IEEE.STD_logic_1164.all;
use ieeE.NUMERIC_STD.all;
entity CNVMI1O0 is
generic (CNVMool0: integer := 8;
CNVMLOL0: integer := 2;
CNVMioL0: INTEGer := 1;
CNVMolL0: integer := 0;
CNVMlll0: INTEger := 0;
CNVMILL0: iNTEGER := 0;
CNVMoil0: integer := 0;
CNVMLIL0: iNTEGER := 0;
CNVMIIL0: INTEGER := 0;
CNVMO0l0: INTEGER := 0;
CNVMl0l0: INTEGER := 0;
CNVMi0l0: INTEGER := 0;
CNVMo1l0: INTEGER := 0;
CNVML1l0: inTEGER := 0;
CNVMI1L0: integer := 0;
CNVMOOI0: integer := 0;
CNVMloi0: integeR := 0;
CNVMioi0: inteGER := 0;
CNVMolI0: INTEGER := 0;
CNVMlli0: intEGER := 0;
CNVMili0: integer := 0;
CNVMOII0: intEGER := 0;
CNVMLII0: integer := 0;
CNVMiii0: integer := 0;
CNVMO0I0: integer := 0;
CNVMl0i0: integer := 0;
CNVMi0i0: integer := 0;
CNVMo1i0: integer := 0;
CNVML1I0: iNTEGER := 0;
CNVMI1I0: iNTEGER := 0;
CNVMoo00: Integer := 0;
CNVMLO00: iNTEGER := 0;
CNVMIo00: INTEGER := 0;
CNVMOL00: inTEGER := 0;
CNVMll00: INTEGer := 0;
CNVMIL00: intEGER := 0;
CNVMoi00: INTEGER := 0;
CNVMLI00: INTEGER := 0;
CNVMII00: integeR := 0;
CNVMo000: INTEGEr := 0;
CNVML000: integeR := 0;
CNVMi000: INteger := 0;
CNVMO100: integer := 0;
CNVMl100: Integer := 0;
CNVMI100: integer := 0;
CNVMOO10: integer := 0;
CNVMLO10: integer := 0;
CNVMio10: iNTEGER := 0;
CNVMOL10: integer := 0;
CNVMLl10: integer := 0;
CNVMil10: INTEGEr := 0;
CNVMOi10: integer := 0;
CNVMli10: integer := 0;
CNVMii10: integer := 0;
CNVMO010: INteger := 0;
CNVMl010: integeR := 0;
CNVMI010: INTEGEr := 0;
CNVMO110: INTEGER := 0;
CNVMl110: Integer := 0;
CNVMi110: Integer := 0;
CNVMooo1: Integer := 0;
CNVMLOO1: inteGER := 0;
CNVMioo1: Integer := 0;
CNVMolo1: INTEGER := 0;
CNVMllo1: integer := 0;
CNVMilo1: INTEGER := 0;
CNVMoio1: INTEGER := 0;
CNVMLIO1: integer := 0;
CNVMIio1: iNTEGER := 0;
CNVMo0o1: INTeger := 0;
CNVMl0o1: INTEGER := 0;
CNVMI0O1: integER := 0;
CNVMo1o1: inTEGER := 0;
CNVMl1o1: INTEGER := 0;
CNVMI1O1: integer := 0;
CNVMool1: INTEGER := 0;
CNVMlol1: intEGER := 0;
CNVMiol1: INTEGER := 0;
CNVMOLl1: intEGER := 0;
CNVMlll1: INTEGEr := 0;
CNVMill1: integeR := 0;
CNVMOIL1: Integer := 0;
CNVMlil1: integer := 0;
CNVMiil1: integer := 0;
CNVMO0L1: INTEGer := 0;
CNVMl0l1: integer := 0;
CNVMi0l1: integer := 0;
CNVMo1l1: integer := 0;
CNVMl1l1: inteGER := 0;
CNVMi1l1: integer := 0;
CNVMooi1: integer := 0;
CNVMloi1: integer := 0;
CNVMioi1: INTEger := 0;
CNVMoli1: Integer := 0;
CNVMlli1: INTEGEr := 0;
CNVMili1: INTEGER := 0;
CNVMoiI1: Integer := 0;
CNVMLii1: inteGER := 0;
CNVMiii1: INTEGer := 0;
CNVMO0I1: iNTEGER := 0;
CNVMl0I1: INTEGEr := 0;
CNVMI0I1: integer := 0;
CNVMO1I1: integer := 0;
CNVML1i1: integer := 0;
CNVMI1I1: integer := 0;
CNVMoO01: INTEGER := 0;
CNVMLO01: integer := 0;
CNVMio01: iNTEGER := 0;
CNVMol01: iNTEGER := 0;
CNVMLl01: integer := 0;
CNVMIL01: INTEGER := 0;
CNVMoi01: integer := 0;
CNVMli01: integer := 0;
CNVMii01: iNTEGER := 0;
CNVMo001: INteger := 0;
CNVMl001: integer := 0;
CNVMI001: integER := 0;
CNVMo101: integer := 0;
CNVMl101: integer := 0;
CNVMi101: integeR := 0;
CNVMoO11: integeR := 0;
CNVMlo11: integer := 0;
CNVMIO11: iNTEGER := 0;
CNVMOL11: INTEGER := 0;
CNVMLL11: INTEGER := 0;
CNVMIL11: integer := 0;
CNVMoi11: INTEger := 0;
CNVMLI11: integer := 0;
CNVMii11: INTEGER := 0;
CNVMO011: integer := 0;
CNVML011: integer := 0;
CNVMI011: integer := 0;
CNVMo111: integeR := 0;
CNVMl111: INTEGER := 0;
CNVMI111: INTeger := 0;
CNVMooool: INTEGER := 0;
CNVMLOOOL: integer := 0;
CNVMIOOOL: integer := 0;
CNVMoLOOL: INTEGER := 0;
CNVMlLOOL: INTEGER := 0;
CNVMILOOL: INteger := 0;
CNVMoIOOL: INTEGER := 0;
CNVMliool: integer := 0;
CNVMiiool: integer := 0;
CNVMO0OOL: INTEGER := 0;
CNVML0Ool: INTEGER := 0;
CNVMi0ool: Integer := 0;
CNVMo1ool: INTeger := 0;
CNVMl1ool: INTEger := 0;
CNVMi1ool: INTeger := 0;
CNVMoolol: INTeger := 0;
CNVMLOLOL: inTEGER := 0;
CNVMIOLOL: integeR := 0;
CNVMolLOL: integer := 0;
CNVMlllol: INTEGER := 0;
CNVMillol: INTEGER := 0;
CNVMoILOL: integer := 0;
CNVMlilol: INTEGER := 0;
CNVMiilol: INTEGER := 0;
CNVMO0LOL: integer := 0;
CNVMl0lol: INTEGER := 0;
CNVMi0lol: INTEGER := 0;
CNVMo1lol: iNTEGER := 0;
CNVMl1lol: INTEGER := 0;
CNVMi1lol: iNTEGER := 0;
CNVMooiol: iNTEGER := 0;
CNVMloiol: INTEGER := 0;
CNVMioiol: INTEGER := 0;
CNVMoliol: INTEGER := 0;
CNVMlliol: integeR := 0;
CNVMILIOL: INTEger := 0;
CNVMoiiol: integer := 0;
CNVMLIiol: INTEger := 0;
CNVMiiiol: INTEger := 0;
CNVMo0iol: integER := 0;
CNVML0IOL: INTEGER := 0;
CNVMI0Iol: INTEGER := 0;
CNVMo1iol: INTEGER := 0;
CNVML1IOL: iNTEGER := 0;
CNVMI1IOL: intEGER := 0;
CNVMOO0OL: inTEGER := 0;
CNVMlo0oL: Integer := 0;
CNVMio0ol: INTEGER := 0;
CNVMOl0ol: INTEGER := 0;
CNVMLL0OL: integer := 0;
CNVMil0ol: INTEGER := 0;
CNVMOI0OL: integer := 0;
CNVMLI0OL: integer := 0;
CNVMii0ol: intEGER := 0;
CNVMo00ol: INTEGER := 0;
CNVMl00OL: INTEger := 0;
CNVMI00ol: integer := 0;
CNVMO10OL: integer := 0;
CNVML10OL: INTeger := 0;
CNVMI10OL: Integer := 0;
CNVMOO1OL: INTeger := 0;
CNVMLO1OL: INTEGER := 0;
CNVMio1ol: integer := 0;
CNVMOL1ol: Integer := 0;
CNVMLL1OL: INTEGER := 0;
CNVMIL1OL: INTEGER := 0;
CNVMoi1ol: Integer := 0;
CNVMli1ol: Integer := 0;
CNVMii1ol: integer := 0;
CNVMo01oL: integer := 0;
CNVMl01OL: integer := 0;
CNVMI01OL: intEGER := 0;
CNVMo11oL: integer := 0;
CNVML11OL: integer := 0;
CNVMi11ol: INteger := 0;
CNVMOOOll: INTEGER := 0;
CNVMlooll: INTEGER := 0;
CNVMIOOLL: integer := 0;
CNVMololl: INTEGER := 0;
CNVMllolL: INTEGEr := 0;
CNVMILOll: integeR := 0;
CNVMOIOLL: integer := 0;
CNVMLIOLl: integer := 0;
CNVMIIOLL: Integer := 0;
CNVMO0Oll: integer := 0;
CNVML0oll: integer := 0;
CNVMI0Oll: integer := 0;
CNVMo1OLL: INTEGER := 0;
CNVMl1oll: integer := 0;
CNVMi1oll: integer := 0;
CNVMOOLLL: INTEGER := 0;
CNVMlolll: integer := 0;
CNVMIOLLL: INTEGER := 0;
CNVMollll: INTEger := 0;
CNVMlllll: integer := 0;
CNVMilLLL: integeR := 0;
CNVMOIlll: INTEGEr := 0;
CNVMlilll: INTEGer := 0;
CNVMiilll: INTEGer := 0;
CNVMo0lll: INTEGER := 0;
CNVMl0lll: INTEGEr := 0;
CNVMi0lll: INTeger := 0;
CNVMo1lll: INTEGER := 0;
CNVMl1llL: INteger := 0;
CNVMi1lll: INTEGER := 0;
CNVMOOILL: integer := 0;
CNVMloiLL: INTeger := 0;
CNVMIOILL: integer := 0;
CNVMolill: INTEGER := 0;
CNVMLLILL: integer := 0;
CNVMilill: inTEGER := 0;
CNVMOIILl: integER := 0;
CNVMLIILL: integer := 0;
CNVMIIIll: integer := 0;
CNVMo0ill: integer := 0;
CNVML0Ill: integer := 0;
CNVMI0ILL: integer := 0;
CNVMo1ill: integer := 0;
CNVMl1ill: integer := 0;
CNVMi1ill: integer := 0;
CNVMoo0ll: integer := 0;
CNVMLO0LL: INTEGER := 0;
CNVMio0ll: integer := 0;
CNVMOL0ll: INTEGEr := 0;
CNVMll0ll: integer := 0;
CNVMil0lL: integer := 0;
CNVMoi0ll: Integer := 0;
CNVMli0ll: INTEGEr := 0;
CNVMII0LL: INTEGER := 0;
CNVMO00ll: INTEGER := 0;
CNVML00LL: integER := 0;
CNVMI00LL: integeR := 0;
CNVMo10LL: integer := 0;
CNVMl10ll: INTEGEr := 0;
CNVMi10ll: INTEGER := 0;
CNVMOO1LL: integer := 0;
CNVMlo1LL: INTEger := 0;
CNVMio1LL: INTEGer := 0;
CNVMOL1LL: Integer := 0;
CNVMll1ll: integer := 0;
CNVMil1ll: inteGER := 0;
CNVMoi1ll: integER := 0;
CNVMLI1LL: INTEGER := 0;
CNVMii1ll: intEGER := 0;
CNVMo01LL: INTEGER := 0;
CNVMl01ll: integER := 0;
CNVMi01ll: integer := 0;
CNVMO11LL: INTEGER := 0;
CNVML11LL: INTEGER := 0;
CNVMi11ll: integer := 0;
CNVMOOOIL: INTEGER := 0;
CNVMlooil: integer := 0;
CNVMIOOIL: iNTEGER := 0;
CNVMOloil: INTEGEr := 0;
CNVMlloil: integer := 0;
CNVMILOIL: iNTEGER := 0;
CNVMoioil: Integer := 0;
CNVMlioil: INTEGER := 0;
CNVMiioil: INTEGER := 0;
CNVMo0oil: INTEger := 0;
CNVMl0oil: INTEGER := 0;
CNVMI0Oil: inTEGER := 0;
CNVMO1OIL: integer := 0;
CNVMl1oil: INTEGER := 0;
CNVMI1OIL: integer := 0;
CNVMoolil: INTEGER := 0;
CNVMLOLIL: integer := 0;
CNVMiolil: iNTEGER := 0;
CNVMOLLIL: integer := 0;
CNVMlllil: intEGER := 0;
CNVMiLLIL: INTEGER := 0;
CNVMOILIL: Integer := 0;
CNVMLILIL: INTEGEr := 0;
CNVMiilil: integeR := 0;
CNVMO0lil: integer := 0;
CNVML0LIL: integer := 0;
CNVMi0lil: integer := 0;
CNVMo1lil: integer := 0;
CNVML1LIl: INTEger := 0;
CNVMI1LIL: INTEGER := 0;
CNVMooiil: integer := 0;
CNVMLOIIL: INTEGER := 0;
CNVMIOiil: INTEGer := 0;
CNVMoliil: integer := 0;
CNVMlliil: INTEGer := 0;
CNVMiliil: INTeger := 0;
CNVMoiiil: INTEger := 0;
CNVMLIIil: INTEGER := 0); port (CLK: in STD_Logic;
CNVMI00I: in stD_LOGIC;
nreseT: in std_logic;
CNVMO10i: in std_logic_vecTOR(((9*CNVMLOL0)-1) downto 0);
CNVMl10i: in STD_Logic_vector(CNVMlol0-1 downto 0);
CNVMI10I: in STD_LOgic_vector(17 downto 0);
CNVMoo1i: in STD_LOGIC;
CNVMlo1I: in STD_LOGIC_VECtor(31 downto 0);
CNVMio1i: in std_logic;
CNVMol1i: in std_logic;
CNVMll1i: in STd_logic;
CNVMIL1I: in std_lOGIC;
CNVMOI1I: in STD_LOGIC;
CNVMli1i: in STD_Logic;
CNVMii1i: in STD_LOGic;
CNVMO01i: in sTD_LOGIC;
CNVML01I: in std_LOGIC;
CNVMi01i: in STD_LOGIC;
CNVMo11i: in STD_LOGIC;
CNVMl11i: in STD_LOGIC;
CNVMi11I: in std_logic_vECTOR(1 downto 0);
CNVMooo0: in sTD_LOGIC;
CNVMLOO0: in std_logic;
CNVMIOO0: in STD_logic;
CNVMolo0: in STD_LOGIC;
CNVMoi: in std_LOGIC;
CNVMII: in STD_LOGIC_vector(31 downto 0);
CNVMli: in std_logic_vECTOR(1 downto 0);
CNVMI0: out STD_LOgic_vector(17 downto 0);
CNVMLLO0: out sTD_LOGIC;
CNVMl0: out std_logiC_VECTOR(31 downto 0);
CNVMILL: out std_logic;
CNVMoll: out std_LOGIC;
CNVMO0L: out std_logic;
CNVMoil: out STD_LOGIC;
CNVMiil: out std_logIC;
CNVMlil: out std_logIC;
CNVMIOL: out STD_logic;
CNVMilo0: out std_LOGIC;
CNVMi1: out std_logic;
CNVMl0l: out std_logiC;
CNVMLol: out std_logic;
CNVMlll: out std_logIC;
CNVMO1: out Std_logic_vector(1 downto 0);
CNVMOOL: out STD_Logic;
CNVMoio0: out STD_logic;
CNVMLIO0: out STD_logic_vector(CNVMool0-1 downto 0);
CNVMiio0: out STD_LOGIC_VECtor(8 downto 0);
CNVMo0o0: out std_LOGIC_VECTOR(CNVMLOL0-1 downto 0);
CNVML0o0: out std_logic;
INIT_DONE: out STD_logic;
CNVMi0o0: out STD_logic_vector(31 downto 0);
CNVMO1O0: out Std_logic;
CNVML1O0: out std_logic_vectOR(1 downto 0);
CNVMo0: out Std_logic;
iNIT_BASE0: in STD_LOGIC;
init_baSE1: in std_logic;
iniT_BASE2: in std_logic;
INIT_BASE3: in std_logiC);
end CNVMi1o0;

architecture CNVMl1o0l of CNVMi1o0 is

component CNVMi1o0l
generic (CNVMlol0: intEGER := 3;
CNVMiol0: INTEGER := 1);
port (CNVMOOL0L: in std_logic;
CNVMLOL0L: in STD_LOgic;
CNVMIOL0L: in STD_logic;
CNVMOLL0l: in STD_logic;
CNVMLLL0L: in STD_logic;
CNVMill0L: out std_LOGIC;
CNVMoil0L: out std_LOGIC;
CNVMlil0l: out std_logic;
CNVMIIL0L: out STd_logic;
CNVMO0L0L: out STD_LOgic;
CNVMl0l0L: out std_logIC;
CNVMi0l0l: out STD_logic_vector(CNVMIOL0-1 downto 0);
INIT_BASE0: in STD_LOGIC;
INIt_base1: in std_logIC;
init_bASE2: in STD_LOGIc;
INIT_base3: in std_logIC);
end component;

component CNVMO1L0L
generic (CNVMlol0: integer := 4;
CNVMiol0: INTEGER := 1);
port (CNVMOOL0L: in STD_LOgic;
CNVMlol0l: in Std_logic;
CNVMIOL0L: in sTD_LOGIC;
CNVMoll0l: in STD_Logic;
CNVMlll0l: in std_logic;
CNVMilL0L: in std_logic;
CNVMOIL0L: in std_logIC;
CNVMLIL0L: in std_LOGIC;
CNVMIIl0l: out STD_LOGIC;
CNVMo0l0l: out STD_LOGIC;
CNVMl0l0l: out STD_LOGIC;
CNVMI0L0L: out std_lOGIC;
CNVML1L0L: out STD_LOGIC;
CNVMi1l0l: out STD_Logic;
CNVMooi0l: out sTD_LOGIC_VECTor(CNVMiol0-1 downto 0);
CNVMloi0l: out std_logic);
end component;

component CNVMioi0l
generic (CNVMLOL0: integer := 4;
CNVMIOL0: integer := 2;
CNVMOOL0: integer := 10);
port (CNVMOOL0L: in STD_LOGic_vector((9*CNVMLOL0)-1 downto 0);
CNVMlol0l: in std_logic_VECTOR(CNVMLOL0-1 downto 0);
CNVMIOL0l: in Std_logic;
CNVMoll0L: in STD_logic_vector(CNVMIOL0-1 downto 0);
CNVMlll0l: in std_logic;
CNVMill0l: in std_logic;
CNVMoil0l: in STD_Logic_vector(CNVMiol0-1 downto 0);
CNVMLIL0l: in STD_LOGIC_VEctor(17 downto 0);
CNVMIIL0L: in std_logiC_VECTOR(CNVMLOL0-1 downto 0);
CNVMO0l0l: in Std_logic_vector((CNVMool0*CNVMLOL0)-1 downto 0);
CNVMl0l0L: in Std_logic_vector((18*CNVMlol0)-1 downto 0);
CNVMI0L0L: in std_logic_vectoR(CNVMlol0-1 downto 0);
CNVMl1l0l: in std_logic_VECTOR((2*CNVMlol0)-1 downto 0);
CNVMI1l0l: in std_LOGIC;
CNVMloi0l: in std_logic;
CNVMOOI0L: in STd_logic;
CNVMoLI0L: in STd_logic;
CNVMllI0L: in std_logiC_VECTOR(17 downto 0);
CNVMili0l: in STD_LOGIC;
CNVMoii0l: in std_logic_vECTOR(31 downto 0);
CNVMlii0L: in STD_LOGIC;
CNVMIII0L: in std_LOGIC;
CNVMo0i0l: in std_logic;
CNVMl0i0l: in std_logic;
CNVMI0I0l: in STD_LOGIC;
CNVMo1I0L: in std_logic;
CNVML1I0L: in stD_LOGIC;
CNVMI1I0L: in std_LOGIC;
CNVMoo00l: in STD_LOGIC;
CNVMlo00l: in STD_LOGIc;
CNVMio00l: in STD_Logic;
CNVMol00L: in STD_LOGIc;
CNVMLL00L: in sTD_LOGIC;
CNVMIL00L: in sTD_LOGIC_VECTor(1 downto 0);
CNVMOI00L: in std_loGIC;
CNVMLI00L: in std_logic;
CNVMii00l: in std_LOGIC;
CNVMO000L: in std_logic;
CNVMl000l: out std_logic_vECTOR(17 downto 0);
CNVMI000L: out STd_logic;
CNVMo100l: out STD_logic_vector(31 downto 0);
CNVML100L: out STD_logic;
CNVMI100L: out std_lOGIC;
CNVMoo10l: out STD_logic;
CNVMLO10L: out std_lOGIC;
CNVMIO10l: out STD_LOGIC;
CNVMol10l: out STD_LOGIC;
CNVMll10l: out STD_Logic;
CNVMil10l: out STD_LOGIc;
CNVMoi10l: out STD_Logic;
CNVMLi10l: out STD_LOGIC;
CNVMii10l: out sTD_LOGIC;
CNVMO010L: out std_logic;
CNVMl010l: out STD_LOGIC;
CNVMI010L: out std_logic_vectoR(1 downto 0);
CNVMO110l: out std_LOGIC;
CNVMl110l: out STD_logic_vector(17 downto 0);
CNVMi110L: out STD_LOGIC;
CNVMooo1l: out STD_Logic_vector(1 downto 0);
CNVMloo1l: out std_logic;
CNVMIOO1L: out std_LOGIC;
CNVMOlo1l: out std_LOGIC_VECTOR(CNVMool0-1 downto 0);
CNVMLLo1l: out STD_LOGIC;
CNVMilo1l: out stD_LOGIC;
CNVMOIO1L: out STD_logic);
end component;

component CNVMLIO1l
generic (CNVMool0: inteGER := 10);
port (CNVMool0l: in std_loGIC;
CNVMlol0l: in sTD_LOGIC;
CNVMIol0l: in std_logic;
CNVMoll0l: in std_LOGIC;
CNVMlll0l: in STD_LOGIC_vector(17 downto 0);
CNVMill0l: in std_LOGIC_VECTOR(CNVMOOL0-1 downto 0);
CNVMOil0l: in STD_logic_vector(1 downto 0);
CNVMlil0l: in std_logic;
CNVMIIL0L: in stD_LOGIC;
CNVMo0l0l: out std_LOGIC_VECTOR(17 downto 0);
CNVML0L0L: out STD_Logic_vector(CNVMool0-1 downto 0);
CNVMI0L0L: out std_logIC;
CNVMl1l0l: out std_logic);
end component;

component CNVMIIO1L
generic (CNVMlol0: integer := 4;
CNVMIOL0: INteger := 2);
port (CNVMool0l: in STD_logic;
CNVMlol0l: in STD_LOgic;
CNVMiol0l: in std_logic;
CNVMOLL0L: in std_logic_VECTOR(CNVMIOL0-1 downto 0);
CNVMLll0l: in std_loGIC_VECTOR(CNVMiol0-1 downto 0);
CNVMill0l: out std_logic_vectoR(CNVMlol0-1 downto 0));
end component;

component CNVMO0O1L
port (CNVMOOL0L: in std_logiC;
CNVMlol0l: in STD_LOGIC;
CNVMIOL0L: in std_logic;
CNVMoll0l: in sTD_LOGIC;
CNVMLLL0l: in std_logic;
CNVMill0l: in std_logic;
CNVMoil0l: in std_lOGIC;
CNVMlIL0L: in STD_Logic;
CNVMIIl0l: in std_logic;
CNVMo0l0l: out std_loGIC;
CNVMl0l0L: out STD_LOGIC;
CNVMI0L0L: out STD_logic;
CNVML1l0l: out STd_logic;
CNVMI1l0l: out std_logic);
end component;

signal CNVMl0o1l: STD_LOGIC_Vector(((CNVMool0*CNVMLOL0)-1) downto 0);

signal CNVMi0o1l: std_lOGIC;

signal CNVMo1o1l: std_logic;

signal CNVML1O1L: Std_logic_vector(CNVMiol0-1 downto 0);

signal CNVMi1o1l: std_logic;

signal CNVMOOL1L: STD_LOGIC;

signal CNVMlol1l: STD_LOgic;

signal CNVMiol1l: STD_LOGic;

signal CNVMoll1l: std_logic_vector(CNVMIOL0-1 downto 0);

signal CNVMlll1l: STD_LOGIC_vector(17 downto 0);

signal CNVMill1l: STD_LOGIc;

signal CNVMoil1L: STD_LOgic;

signal CNVMlil1l: STD_LOGIC;

signal CNVMIIL1L: std_logic;

signal CNVMO0L1L: std_logic;

signal CNVMl0l1l: std_LOGIC;

signal CNVMi0l1l: std_logic_vECTOR(17 downto 0);

signal CNVMo1l1l: std_loGIC;

signal CNVML1L1L: STd_logic;

signal CNVMI1L1L: STD_LOGIC_Vector(CNVMOOL0-1 downto 0);

signal CNVMOOI1L: STd_logic;

signal CNVMLOI1l: Std_logic;

signal CNVMIOI1L: STD_logic;

signal CNVMoli1l: std_logic;

signal CNVMLLI1L: std_logiC_VECTOR(1 downto 0);

signal CNVMILI1L: STD_LOGIc;

signal CNVMoii1l: std_logic;

signal CNVMlii1l: std_logic;

signal CNVMiii1l: Std_logic;

signal CNVMo0i1l: STd_logic;

signal CNVMl0I1L: STD_Logic_vector(CNVMlol0-1 downto 0);

signal CNVMi0i1l: std_logic_vectOR(((CNVMOOL0*CNVMlol0)-1) downto 0);

signal CNVMo1i1l: std_logIC_VECTOR(((18*CNVMlol0)-1) downto 0);

signal CNVML1I1L: STD_LOGic_vector(CNVMLOL0-1 downto 0);

signal CNVMI1i1l: std_logic_vector(((2*CNVMLOl0)-1) downto 0);

signal CNVMoo01L: std_LOGIC_VECTOR(63 downto 0);

signal CNVMlo01l: STd_logic_vector(((CNVMOOL0*64)-1) downto 0);

signal CNVMIO01l: STD_LOGIC_VECtor(((18*64)-1) downto 0);

signal CNVMOL01L: STD_LOGIC_vector(63 downto 0);

signal CNVMll01l: STD_LOGic_vector(127 downto 0);

begin
CNVMio01l(17 downto 0) <= std_loGIC_VECTOR(TO_UNSIGned(CNVMoll0,
18));
CNVMIO01L(35 downto 18) <= STD_LOGIC_vector(TO_UNSIGNED(CNVMIIL0,
18));
CNVMIO01l(53 downto 36) <= std_logic_veCTOR(To_unsigned(CNVMl1l0,
18));
CNVMIO01L(71 downto 54) <= STD_LOGIC_vector(to_unsigned(CNVMoli0,
18));
CNVMio01l(89 downto 72) <= std_logic_vector(to_unsigneD(CNVMIII0,
18));
CNVMIO01l(107 downto 90) <= sTD_LOGIC_VECTor(TO_UNSIGNED(CNVMl1i0,
18));
CNVMIO01L(125 downto 108) <= STD_logic_vector(TO_unsigned(CNVMOL00,
18));
CNVMio01l(143 downto 126) <= std_logic_VECTOR(to_unsiGNED(CNVMii00,
18));
CNVMio01l(161 downto 144) <= STD_LOGIC_vector(to_unsigned(CNVML100,
18));
CNVMIo01l(179 downto 162) <= std_logic_vectOR(to_UNSIGNED(CNVMOL10,
18));
CNVMio01l(197 downto 180) <= STD_LOGIC_VECtor(TO_UNSIGNED(CNVMii10,
18));
CNVMiO01L(215 downto 198) <= STD_LOGIC_VEctor(TO_UNSIGNED(CNVMl110,
18));
CNVMIO01L(233 downto 216) <= std_logiC_VECTOR(TO_UNSIGNED(CNVMolo1,
18));
CNVMio01L(251 downto 234) <= STd_logic_vector(TO_Unsigned(CNVMIIO1,
18));
CNVMIO01L(269 downto 252) <= Std_logic_vector(TO_UNSIGNED(CNVMl1o1,
18));
CNVMio01L(287 downto 270) <= std_LOGIC_VECTOR(to_unsigned(CNVMOLL1,
18));
CNVMio01l(305 downto 288) <= sTD_LOGIC_VECTor(to_unsigNED(CNVMIil1,
18));
CNVMIO01l(323 downto 306) <= STd_logic_vector(to_unsigned(CNVMl1l1,
18));
CNVMio01l(341 downto 324) <= std_logic_vectOR(TO_UNSIGNED(CNVMOLI1,
18));
CNVMio01l(359 downto 342) <= std_logic_VECTOR(TO_UNSigned(CNVMIII1,
18));
CNVMIO01L(377 downto 360) <= STD_logic_vector(TO_UNSIGNED(CNVMl1i1,
18));
CNVMio01l(395 downto 378) <= std_logic_vectoR(TO_UNSIGNed(CNVMol01,
18));
CNVMio01l(413 downto 396) <= std_logic_vECTOR(to_UNSIGNED(CNVMii01,
18));
CNVMIO01L(431 downto 414) <= STD_logic_vector(to_unsigned(CNVMl101,
18));
CNVMIO01l(449 downto 432) <= std_logic_vectoR(to_UNSIGNED(CNVMol11,
18));
CNVMIO01l(467 downto 450) <= std_LOGIC_VECTOR(to_unsigned(CNVMii11,
18));
CNVMIO01l(485 downto 468) <= stD_LOGIC_VECTOr(to_unsigned(CNVMl111,
18));
CNVMio01L(503 downto 486) <= STD_LOGIC_VEctor(To_unsigned(CNVMolool,
18));
CNVMio01l(521 downto 504) <= std_logic_veCTOR(TO_UNSIGNED(CNVMiiool,
18));
CNVMio01l(539 downto 522) <= std_logic_vector(TO_UNSigned(CNVMl1ooL,
18));
CNVMio01l(557 downto 540) <= std_logic_vecTOR(to_unsignED(CNVMOLlol,
18));
CNVMIO01L(575 downto 558) <= std_logic_VECTOR(to_unsigNED(CNVMIILOL,
18));
CNVMIO01L(593 downto 576) <= STD_logic_vector(to_unsigned(CNVML1lol,
18));
CNVMIO01l(611 downto 594) <= STD_Logic_vector(TO_UNSIGNED(CNVMOLIOL,
18));
CNVMIo01l(629 downto 612) <= std_logic_vectoR(to_unsiGNED(CNVMIIIOl,
18));
CNVMio01l(647 downto 630) <= std_loGIC_VECTOR(TO_unsigned(CNVML1IOL,
18));
CNVMio01L(665 downto 648) <= STD_Logic_vector(TO_UNSigned(CNVMol0ol,
18));
CNVMio01l(683 downto 666) <= std_loGIC_VECTOR(TO_UNSIGNED(CNVMII0OL,
18));
CNVMIO01l(701 downto 684) <= std_logic_vectOR(to_unsigned(CNVML10OL,
18));
CNVMio01l(719 downto 702) <= std_lOGIC_VECTOR(to_unsigned(CNVMol1ol,
18));
CNVMio01l(737 downto 720) <= std_logic_veCTOR(to_unsigned(CNVMII1OL,
18));
CNVMIO01L(755 downto 738) <= std_logic_VECTOR(to_UNSIGNED(CNVMl11OL,
18));
CNVMio01l(773 downto 756) <= STD_LOGIC_VECtor(TO_UNSIGNED(CNVMololl,
18));
CNVMio01l(791 downto 774) <= STD_logic_vector(TO_UNSIGNED(CNVMIIOLL,
18));
CNVMIO01l(809 downto 792) <= std_logic_vectOR(to_uNSIGNED(CNVMl1oll,
18));
CNVMIO01l(827 downto 810) <= std_logic_vectoR(to_UNSIGNED(CNVMollll,
18));
CNVMio01l(845 downto 828) <= std_lOGIC_VECTOR(TO_UNSIGNED(CNVMIILLL,
18));
CNVMIO01L(863 downto 846) <= Std_logic_vector(To_unsigned(CNVMl1lll,
18));
CNVMIO01L(881 downto 864) <= STD_LOGIC_vector(TO_unsigned(CNVMolill,
18));
CNVMIo01l(899 downto 882) <= STD_LOGIC_vector(to_unsiGNED(CNVMIIILL,
18));
CNVMio01l(917 downto 900) <= STD_LOGic_vector(to_UNSIGNED(CNVML1ILL,
18));
CNVMio01l(935 downto 918) <= STD_LOGIC_vector(TO_UNsigned(CNVMOL0ll,
18));
CNVMIO01L(953 downto 936) <= STD_logic_vector(to_unsIGNED(CNVMII0ll,
18));
CNVMio01l(971 downto 954) <= std_logic_VECTOR(to_UNSIGNED(CNVMl10ll,
18));
CNVMIO01L(989 downto 972) <= std_logic_vector(TO_UNSIGNED(CNVMOL1ll,
18));
CNVMio01l(1007 downto 990) <= std_logIC_VECTOR(to_unsIGNED(CNVMii1LL,
18));
CNVMIO01L(1025 downto 1008) <= std_logic_VECTOR(TO_UNSIGNED(CNVML11LL,
18));
CNVMio01l(1043 downto 1026) <= STD_LOGIC_vector(TO_unsigned(CNVMOLOIL,
18));
CNVMio01l(1061 downto 1044) <= STD_logic_vector(to_uNSIGNED(CNVMIIOIL,
18));
CNVMio01l(1079 downto 1062) <= std_logic_vecTOR(to_unsigNED(CNVML1OIL,
18));
CNVMIo01l(1097 downto 1080) <= std_logic_vector(to_UNSIGNED(CNVMollil,
18));
CNVMio01l(1115 downto 1098) <= STD_LOGIC_vector(TO_UNSIGNEd(CNVMIilil,
18));
CNVMio01l(1133 downto 1116) <= STD_LOgic_vector(TO_unsigned(CNVMl1lil,
18));
CNVMio01l(1151 downto 1134) <= std_logic_vecTOR(to_unsignED(CNVMoliil,
18));
CNVMlo01l(0*CNVMOOL0+(CNVMOOL0-1) downto (0*CNVMOOL0)) <= STD_LOGic_vector(tO_UNSIGNED(CNVMlll0,
CNVMOOL0));
CNVMlo01l(1*CNVMool0+(CNVMool0-1) downto (1*CNVMOOL0)) <= std_lOGIC_VECTOR(TO_UNSIGNED(CNVMO0L0,
CNVMool0));
CNVMLO01L(2*CNVMOOL0+(CNVMOOL0-1) downto (2*CNVMOOL0)) <= std_logiC_VECTOR(TO_UNSIGNED(CNVMI1L0,
CNVMOOL0));
CNVMlO01L(3*CNVMool0+(CNVMooL0-1) downto (3*CNVMooL0)) <= std_logic_veCTOR(to_unSIGNED(CNVMlli0,
CNVMOOL0));
CNVMlo01l(4*CNVMool0+(CNVMool0-1) downto (4*CNVMOol0)) <= std_logiC_VECTOR(to_unsigned(CNVMo0i0,
CNVMool0));
CNVMlo01l(5*CNVMOOL0+(CNVMoOL0-1) downto (5*CNVMOOL0)) <= STD_Logic_vector(TO_UNSIGNED(CNVMi1i0,
CNVMOOL0));
CNVMLO01L(6*CNVMOOL0+(CNVMOOL0-1) downto (6*CNVMool0)) <= std_logic_veCTOR(TO_UNSIGNEd(CNVMLL00,
CNVMOOL0));
CNVMLO01l(7*CNVMOOL0+(CNVMool0-1) downto (7*CNVMOol0)) <= sTD_LOGIC_VECtor(TO_UNSIGNED(CNVMo000,
CNVMOOL0));
CNVMLO01l(8*CNVMool0+(CNVMOOL0-1) downto (8*CNVMool0)) <= std_LOGIC_VECTOR(TO_UNSIGNED(CNVMi100,
CNVMOOl0));
CNVMlo01L(9*CNVMool0+(CNVMool0-1) downto (9*CNVMool0)) <= std_logic_vectoR(TO_UNSIgned(CNVMLL10,
CNVMool0));
CNVMLo01l(10*CNVMool0+(CNVMOOL0-1) downto (10*CNVMool0)) <= std_LOGIC_VECTOR(to_unsigned(CNVMo010,
CNVMool0));
CNVMlo01l(11*CNVMool0+(CNVMOol0-1) downto (11*CNVMool0)) <= std_LOGIC_VECTOr(To_unsigned(CNVMI110,
CNVMool0));
CNVMLo01l(12*CNVMool0+(CNVMool0-1) downto (12*CNVMool0)) <= STD_LOGIc_vector(to_unsiGNED(CNVMllo1,
CNVMool0));
CNVMlo01L(13*CNVMool0+(CNVMool0-1) downto (13*CNVMOOL0)) <= STd_logic_vector(to_unsigned(CNVMo0o1,
CNVMool0));
CNVMlo01l(14*CNVMOOL0+(CNVMOOL0-1) downto (14*CNVMool0)) <= std_logic_vectoR(TO_UNSIGNED(CNVMI1O1,
CNVMool0));
CNVMLO01l(15*CNVMOOL0+(CNVMOOL0-1) downto (15*CNVMool0)) <= std_LOGIC_VECTOR(To_unsigned(CNVMllL1,
CNVMool0));
CNVMLO01L(16*CNVMool0+(CNVMOOL0-1) downto (16*CNVMool0)) <= std_logic_veCTOR(to_uNSIGNED(CNVMo0l1,
CNVMool0));
CNVMlo01l(17*CNVMOol0+(CNVMOOL0-1) downto (17*CNVMOOL0)) <= STD_logic_vector(TO_UNsigned(CNVMi1l1,
CNVMool0));
CNVMlo01L(18*CNVMOOL0+(CNVMOOL0-1) downto (18*CNVMoOL0)) <= STD_LOGIC_VEctor(to_unsigned(CNVMlli1,
CNVMOOL0));
CNVMlo01L(19*CNVMooL0+(CNVMool0-1) downto (19*CNVMOOL0)) <= STD_LOGIC_vector(TO_UNSigned(CNVMo0i1,
CNVMOOL0));
CNVMlo01l(20*CNVMOOL0+(CNVMOOl0-1) downto (20*CNVMool0)) <= std_logic_vecTOR(to_unsigned(CNVMI1I1,
CNVMooL0));
CNVMLO01l(21*CNVMoOL0+(CNVMool0-1) downto (21*CNVMooL0)) <= std_LOGIC_VECTOr(to_unsigneD(CNVMll01,
CNVMOOL0));
CNVMLO01L(22*CNVMOOL0+(CNVMool0-1) downto (22*CNVMOOL0)) <= std_loGIC_VECTOR(to_unsIGNED(CNVMO001,
CNVMool0));
CNVMLO01l(23*CNVMOOL0+(CNVMool0-1) downto (23*CNVMOOL0)) <= STD_LOGIC_Vector(to_UNSIGNED(CNVMI101,
CNVMool0));
CNVMlo01l(24*CNVMool0+(CNVMOOl0-1) downto (24*CNVMool0)) <= STD_logic_vector(to_unsigned(CNVMll11,
CNVMOOl0));
CNVMLO01L(25*CNVMool0+(CNVMool0-1) downto (25*CNVMool0)) <= std_logic_veCTOR(to_unsIGNED(CNVMo011,
CNVMool0));
CNVMlo01l(26*CNVMOOL0+(CNVMOOL0-1) downto (26*CNVMool0)) <= STD_logic_vector(TO_UNsigned(CNVMi111,
CNVMOol0));
CNVMlo01l(27*CNVMool0+(CNVMool0-1) downto (27*CNVMool0)) <= std_logic_vectOR(TO_UNSIGNed(CNVMllool,
CNVMoOL0));
CNVMLO01L(28*CNVMOol0+(CNVMool0-1) downto (28*CNVMool0)) <= STD_LOGIC_VEctor(to_unsigned(CNVMo0ool,
CNVMOOL0));
CNVMLO01l(29*CNVMOOL0+(CNVMOol0-1) downto (29*CNVMool0)) <= std_logic_vectoR(to_unsigned(CNVMi1ool,
CNVMool0));
CNVMLO01L(30*CNVMoOL0+(CNVMool0-1) downto (30*CNVMOOL0)) <= STD_logic_vector(to_unsigned(CNVMlllol,
CNVMool0));
CNVMlo01L(31*CNVMool0+(CNVMool0-1) downto (31*CNVMool0)) <= STD_LOGIC_vector(to_unsigned(CNVMo0lol,
CNVMOOl0));
CNVMLO01L(32*CNVMOOL0+(CNVMool0-1) downto (32*CNVMOOL0)) <= STD_LOGIc_vector(to_UNSIGNED(CNVMi1lol,
CNVMool0));
CNVMLO01L(33*CNVMOOL0+(CNVMOol0-1) downto (33*CNVMOOL0)) <= STD_LOGIC_vector(to_unsigNED(CNVMllioL,
CNVMool0));
CNVMLO01l(34*CNVMool0+(CNVMool0-1) downto (34*CNVMool0)) <= std_logiC_VECTOR(TO_unsigned(CNVMo0iol,
CNVMool0));
CNVMlO01L(35*CNVMool0+(CNVMool0-1) downto (35*CNVMOOL0)) <= std_logic_vector(to_unsIGNED(CNVMi1iol,
CNVMool0));
CNVMLO01L(36*CNVMool0+(CNVMOOl0-1) downto (36*CNVMOOl0)) <= std_LOGIC_VECTOR(to_unsigned(CNVMll0ol,
CNVMOOl0));
CNVMlO01L(37*CNVMool0+(CNVMOOL0-1) downto (37*CNVMool0)) <= std_logic_vector(TO_UNsigned(CNVMO00ol,
CNVMool0));
CNVMLO01L(38*CNVMool0+(CNVMOOl0-1) downto (38*CNVMool0)) <= std_loGIC_VECTOR(TO_UNSIgned(CNVMi10OL,
CNVMOOl0));
CNVMlo01l(39*CNVMOOL0+(CNVMool0-1) downto (39*CNVMOOL0)) <= std_logic_VECTOR(to_unsigned(CNVMll1ol,
CNVMool0));
CNVMlo01l(40*CNVMool0+(CNVMool0-1) downto (40*CNVMool0)) <= std_LOGIC_VECTOr(to_unsigned(CNVMo01ol,
CNVMOOL0));
CNVMLo01l(41*CNVMool0+(CNVMOOL0-1) downto (41*CNVMOol0)) <= STD_Logic_vector(TO_unsigned(CNVMI11OL,
CNVMOOL0));
CNVMLO01L(42*CNVMOOL0+(CNVMOOL0-1) downto (42*CNVMOOL0)) <= std_logiC_VECTOR(TO_UNsigned(CNVMLLOll,
CNVMool0));
CNVMlo01l(43*CNVMool0+(CNVMool0-1) downto (43*CNVMool0)) <= STD_LOGIC_VEctor(TO_UNSIGned(CNVMo0oll,
CNVMool0));
CNVMLO01L(44*CNVMool0+(CNVMOOL0-1) downto (44*CNVMoOL0)) <= STD_LOgic_vector(to_unsigNED(CNVMI1Oll,
CNVMool0));
CNVMlo01l(45*CNVMool0+(CNVMOOL0-1) downto (45*CNVMool0)) <= STD_LOGIC_Vector(to_unsigned(CNVMLLLLL,
CNVMOOL0));
CNVMLo01l(46*CNVMOOL0+(CNVMOOL0-1) downto (46*CNVMool0)) <= STD_LOGIC_VEctor(TO_UNSIGned(CNVMo0lll,
CNVMool0));
CNVMlo01l(47*CNVMool0+(CNVMool0-1) downto (47*CNVMool0)) <= std_logic_vector(TO_UNSIGNED(CNVMi1lLL,
CNVMOOL0));
CNVMlo01l(48*CNVMool0+(CNVMool0-1) downto (48*CNVMool0)) <= STD_logic_vector(to_UNSIGNED(CNVMllill,
CNVMool0));
CNVMlo01l(49*CNVMOOL0+(CNVMOol0-1) downto (49*CNVMOOL0)) <= STD_logic_vector(TO_unsigned(CNVMo0ILL,
CNVMool0));
CNVMlo01l(50*CNVMool0+(CNVMool0-1) downto (50*CNVMool0)) <= sTD_LOGIC_VECTor(to_unsigneD(CNVMi1ILL,
CNVMOOL0));
CNVMLo01l(51*CNVMOOL0+(CNVMool0-1) downto (51*CNVMOOL0)) <= STD_LOGIc_vector(To_unsigned(CNVMll0ll,
CNVMool0));
CNVMLO01L(52*CNVMool0+(CNVMOOL0-1) downto (52*CNVMool0)) <= std_logic_VECTOR(to_unsigned(CNVMo00ll,
CNVMool0));
CNVMlo01L(53*CNVMOOL0+(CNVMOOL0-1) downto (53*CNVMool0)) <= std_logic_vecTOR(TO_UNSIGNED(CNVMi10LL,
CNVMOOL0));
CNVMLO01l(54*CNVMool0+(CNVMool0-1) downto (54*CNVMOOL0)) <= std_logic_vectoR(to_UNSIGNED(CNVMLL1Ll,
CNVMOol0));
CNVMLO01L(55*CNVMOOL0+(CNVMool0-1) downto (55*CNVMool0)) <= std_logic_vectOR(to_unsiGNED(CNVMo01LL,
CNVMOOL0));
CNVMLO01L(56*CNVMOOL0+(CNVMool0-1) downto (56*CNVMool0)) <= std_logiC_VECTOR(to_unsigned(CNVMi11LL,
CNVMOOL0));
CNVMlo01l(57*CNVMOOL0+(CNVMool0-1) downto (57*CNVMOOL0)) <= std_logIC_VECTOR(to_unsigned(CNVMLLOIL,
CNVMOOL0));
CNVMLO01L(58*CNVMOOL0+(CNVMool0-1) downto (58*CNVMool0)) <= std_logic_VECTOR(to_unsigned(CNVMo0oil,
CNVMool0));
CNVMLO01L(59*CNVMool0+(CNVMool0-1) downto (59*CNVMool0)) <= std_logic_VECTOR(TO_Unsigned(CNVMi1oil,
CNVMool0));
CNVMLO01L(60*CNVMool0+(CNVMool0-1) downto (60*CNVMOOL0)) <= sTD_LOGIC_VECtor(to_uNSIGNED(CNVMLLlil,
CNVMOOL0));
CNVMlo01l(61*CNVMool0+(CNVMool0-1) downto (61*CNVMool0)) <= STD_LOGIc_vector(to_unSIGNED(CNVMO0LIL,
CNVMOOL0));
CNVMlo01l(62*CNVMoOL0+(CNVMOOL0-1) downto (62*CNVMool0)) <= std_logic_vector(to_unsigned(CNVMi1lil,
CNVMool0));
CNVMlo01l(63*CNVMool0+(CNVMool0-1) downto (63*CNVMooL0)) <= STD_LOGIC_vector(TO_UNSIGNed(CNVMlliil,
CNVMool0));
CNVMoo01l(0) <= '1' when CNVMOIL0 = 1 else
'0';
CNVMoo01l(1) <= '1' when CNVMi0l0 = 1 else
'0';
CNVMoo01l(2) <= '1' when CNVMloi0 = 1 else
'0';
CNVMoo01l(3) <= '1' when CNVMOII0 = 1 else
'0';
CNVMOO01L(4) <= '1' when CNVMi0i0 = 1 else
'0';
CNVMoo01l(5) <= '1' when CNVMLO00 = 1 else
'0';
CNVMOO01L(6) <= '1' when CNVMoi00 = 1 else
'0';
CNVMoo01l(7) <= '1' when CNVMi000 = 1 else
'0';
CNVMOO01l(8) <= '1' when CNVMlo10 = 1 else
'0';
CNVMoo01l(9) <= '1' when CNVMOI10 = 1 else
'0';
CNVMOO01L(10) <= '1' when CNVMI010 = 1 else
'0';
CNVMOO01L(11) <= '1' when CNVMLOO1 = 1 else
'0';
CNVMOO01L(12) <= '1' when CNVMoio1 = 1 else
'0';
CNVMoo01l(13) <= '1' when CNVMi0O1 = 1 else
'0';
CNVMoo01l(14) <= '1' when CNVMlol1 = 1 else
'0';
CNVMOO01L(15) <= '1' when CNVMoil1 = 1 else
'0';
CNVMoo01l(16) <= '1' when CNVMi0l1 = 1 else
'0';
CNVMoo01l(17) <= '1' when CNVMLOi1 = 1 else
'0';
CNVMOO01L(18) <= '1' when CNVMoii1 = 1 else
'0';
CNVMoo01l(19) <= '1' when CNVMi0I1 = 1 else
'0';
CNVMOO01l(20) <= '1' when CNVMlo01 = 1 else
'0';
CNVMoo01l(21) <= '1' when CNVMoi01 = 1 else
'0';
CNVMoo01l(22) <= '1' when CNVMi001 = 1 else
'0';
CNVMoo01l(23) <= '1' when CNVMlo11 = 1 else
'0';
CNVMoo01l(24) <= '1' when CNVMoi11 = 1 else
'0';
CNVMOO01L(25) <= '1' when CNVMi011 = 1 else
'0';
CNVMoo01l(26) <= '1' when CNVMloool = 1 else
'0';
CNVMoo01l(27) <= '1' when CNVMoiool = 1 else
'0';
CNVMOO01l(28) <= '1' when CNVMI0ool = 1 else
'0';
CNVMoo01l(29) <= '1' when CNVMlolol = 1 else
'0';
CNVMoo01l(30) <= '1' when CNVMOILOL = 1 else
'0';
CNVMOO01L(31) <= '1' when CNVMI0lol = 1 else
'0';
CNVMOO01l(32) <= '1' when CNVMlOIOL = 1 else
'0';
CNVMOO01l(33) <= '1' when CNVMOIIOL = 1 else
'0';
CNVMoO01L(34) <= '1' when CNVMi0iol = 1 else
'0';
CNVMOO01l(35) <= '1' when CNVMLO0OL = 1 else
'0';
CNVMoo01l(36) <= '1' when CNVMOI0Ol = 1 else
'0';
CNVMoo01l(37) <= '1' when CNVMi00ol = 1 else
'0';
CNVMoo01l(38) <= '1' when CNVMLO1OL = 1 else
'0';
CNVMoo01l(39) <= '1' when CNVMOI1ol = 1 else
'0';
CNVMOO01L(40) <= '1' when CNVMi01ol = 1 else
'0';
CNVMOO01l(41) <= '1' when CNVMlooll = 1 else
'0';
CNVMOO01L(42) <= '1' when CNVMoioll = 1 else
'0';
CNVMOO01L(43) <= '1' when CNVMi0oll = 1 else
'0';
CNVMoo01l(44) <= '1' when CNVMlolll = 1 else
'0';
CNVMoo01L(45) <= '1' when CNVMoiLLL = 1 else
'0';
CNVMoo01l(46) <= '1' when CNVMi0lll = 1 else
'0';
CNVMoo01l(47) <= '1' when CNVMloILL = 1 else
'0';
CNVMOO01L(48) <= '1' when CNVMOiill = 1 else
'0';
CNVMoo01l(49) <= '1' when CNVMi0ill = 1 else
'0';
CNVMoo01l(50) <= '1' when CNVMlo0ll = 1 else
'0';
CNVMoo01l(51) <= '1' when CNVMoi0ll = 1 else
'0';
CNVMOo01l(52) <= '1' when CNVMI00LL = 1 else
'0';
CNVMOo01l(53) <= '1' when CNVMlo1ll = 1 else
'0';
CNVMoo01l(54) <= '1' when CNVMoi1ll = 1 else
'0';
CNVMoo01l(55) <= '1' when CNVMi01ll = 1 else
'0';
CNVMOo01l(56) <= '1' when CNVMlooil = 1 else
'0';
CNVMoo01l(57) <= '1' when CNVMOIOIL = 1 else
'0';
CNVMOO01L(58) <= '1' when CNVMI0OIL = 1 else
'0';
CNVMoo01l(59) <= '1' when CNVMlolil = 1 else
'0';
CNVMOO01L(60) <= '1' when CNVMOILIL = 1 else
'0';
CNVMoo01l(61) <= '1' when CNVMI0LIl = 1 else
'0';
CNVMOO01L(62) <= '1' when CNVMloiil = 1 else
'0';
CNVMOO01L(63) <= '1' when CNVMoiiil = 1 else
'0';
CNVMol01l(0) <= '1' when CNVMILL0 = 1 else
'0';
CNVMol01l(1) <= '1' when CNVMl0l0 = 1 else
'0';
CNVMOL01L(2) <= '1' when CNVMooi0 = 1 else
'0';
CNVMol01l(3) <= '1' when CNVMILI0 = 1 else
'0';
CNVMOL01L(4) <= '1' when CNVML0I0 = 1 else
'0';
CNVMol01l(5) <= '1' when CNVMoo00 = 1 else
'0';
CNVMol01l(6) <= '1' when CNVMil00 = 1 else
'0';
CNVMOL01L(7) <= '1' when CNVMl000 = 1 else
'0';
CNVMol01l(8) <= '1' when CNVMOO10 = 1 else
'0';
CNVMol01l(9) <= '1' when CNVMil10 = 1 else
'0';
CNVMol01L(10) <= '1' when CNVMl010 = 1 else
'0';
CNVMOL01L(11) <= '1' when CNVMooo1 = 1 else
'0';
CNVMOL01l(12) <= '1' when CNVMilo1 = 1 else
'0';
CNVMOL01L(13) <= '1' when CNVML0o1 = 1 else
'0';
CNVMol01l(14) <= '1' when CNVMool1 = 1 else
'0';
CNVMol01L(15) <= '1' when CNVMILL1 = 1 else
'0';
CNVMol01l(16) <= '1' when CNVMl0l1 = 1 else
'0';
CNVMOL01L(17) <= '1' when CNVMOoi1 = 1 else
'0';
CNVMol01l(18) <= '1' when CNVMIli1 = 1 else
'0';
CNVMol01l(19) <= '1' when CNVML0I1 = 1 else
'0';
CNVMOL01L(20) <= '1' when CNVMOo01 = 1 else
'0';
CNVMol01l(21) <= '1' when CNVMil01 = 1 else
'0';
CNVMOl01l(22) <= '1' when CNVMl001 = 1 else
'0';
CNVMol01L(23) <= '1' when CNVMOO11 = 1 else
'0';
CNVMol01l(24) <= '1' when CNVMil11 = 1 else
'0';
CNVMol01l(25) <= '1' when CNVMl011 = 1 else
'0';
CNVMOL01L(26) <= '1' when CNVMooOOL = 1 else
'0';
CNVMol01l(27) <= '1' when CNVMILOol = 1 else
'0';
CNVMOL01L(28) <= '1' when CNVMl0ool = 1 else
'0';
CNVMol01l(29) <= '1' when CNVMOOLOL = 1 else
'0';
CNVMOL01l(30) <= '1' when CNVMILLOL = 1 else
'0';
CNVMol01l(31) <= '1' when CNVML0LOL = 1 else
'0';
CNVMOL01l(32) <= '1' when CNVMOOIOL = 1 else
'0';
CNVMol01l(33) <= '1' when CNVMilioL = 1 else
'0';
CNVMOL01L(34) <= '1' when CNVMl0iol = 1 else
'0';
CNVMOL01L(35) <= '1' when CNVMoo0ol = 1 else
'0';
CNVMol01L(36) <= '1' when CNVMil0ol = 1 else
'0';
CNVMOL01L(37) <= '1' when CNVMl00ol = 1 else
'0';
CNVMol01l(38) <= '1' when CNVMoo1ol = 1 else
'0';
CNVMol01l(39) <= '1' when CNVMil1OL = 1 else
'0';
CNVMOL01l(40) <= '1' when CNVMl01ol = 1 else
'0';
CNVMol01l(41) <= '1' when CNVMoooll = 1 else
'0';
CNVMol01l(42) <= '1' when CNVMiloll = 1 else
'0';
CNVMol01l(43) <= '1' when CNVMl0oll = 1 else
'0';
CNVMOl01l(44) <= '1' when CNVMOolll = 1 else
'0';
CNVMol01l(45) <= '1' when CNVMIllll = 1 else
'0';
CNVMOl01l(46) <= '1' when CNVMl0lll = 1 else
'0';
CNVMol01l(47) <= '1' when CNVMOoill = 1 else
'0';
CNVMOL01l(48) <= '1' when CNVMILILL = 1 else
'0';
CNVMol01l(49) <= '1' when CNVMl0ill = 1 else
'0';
CNVMol01L(50) <= '1' when CNVMOo0ll = 1 else
'0';
CNVMOL01L(51) <= '1' when CNVMil0ll = 1 else
'0';
CNVMOl01l(52) <= '1' when CNVML00LL = 1 else
'0';
CNVMOL01L(53) <= '1' when CNVMoo1ll = 1 else
'0';
CNVMOL01l(54) <= '1' when CNVMil1LL = 1 else
'0';
CNVMol01l(55) <= '1' when CNVML01LL = 1 else
'0';
CNVMol01l(56) <= '1' when CNVMOOOIL = 1 else
'0';
CNVMol01l(57) <= '1' when CNVMILOIL = 1 else
'0';
CNVMol01l(58) <= '1' when CNVMl0oIL = 1 else
'0';
CNVMOL01L(59) <= '1' when CNVMoolil = 1 else
'0';
CNVMol01l(60) <= '1' when CNVMillil = 1 else
'0';
CNVMol01l(61) <= '1' when CNVML0LIL = 1 else
'0';
CNVMol01l(62) <= '1' when CNVMooiil = 1 else
'0';
CNVMol01l(63) <= '1' when CNVMiLIIL = 1 else
'0';
CNVMll01L(1 downto 0) <= STD_logic_vector(TO_UNSIGNED(CNVMlil0,
2));
CNVMLL01L(3 downto 2) <= STD_LOgic_vector(TO_UNSIGNEd(CNVMo1l0,
2));
CNVMLL01L(5 downto 4) <= std_logic_vECTOR(to_unsigned(CNVMioi0,
2));
CNVMll01L(7 downto 6) <= STD_Logic_vector(TO_UNSIGned(CNVMLII0,
2));
CNVMLL01L(9 downto 8) <= Std_logic_vector(To_unsigned(CNVMo1I0,
2));
CNVMll01L(11 downto 10) <= STD_LOGIC_vector(TO_UNSigned(CNVMio00,
2));
CNVMll01l(13 downto 12) <= std_logiC_VECTOR(to_unsigNED(CNVMLI00,
2));
CNVMLL01l(15 downto 14) <= STD_LOGIC_Vector(to_unsigNED(CNVMo100,
2));
CNVMll01l(17 downto 16) <= stD_LOGIC_VECTOr(to_unsigned(CNVMio10,
2));
CNVMll01l(19 downto 18) <= STD_LOgic_vector(to_unsigned(CNVMli10,
2));
CNVMll01l(21 downto 20) <= STD_LOGIC_VECtor(To_unsigned(CNVMO110,
2));
CNVMll01l(23 downto 22) <= std_logic_vecTOR(to_unSIGNED(CNVMIOO1,
2));
CNVMLL01L(25 downto 24) <= Std_logic_vector(TO_UNSIGNED(CNVMlIO1,
2));
CNVMll01l(27 downto 26) <= STD_LOGIC_VECtor(to_UNSIGNED(CNVMo1O1,
2));
CNVMLL01l(29 downto 28) <= std_logic_vecTOR(TO_UNSigned(CNVMiOL1,
2));
CNVMll01l(31 downto 30) <= STD_logic_vector(to_unsIGNED(CNVMLIL1,
2));
CNVMLL01L(33 downto 32) <= Std_logic_vector(to_unsIGNED(CNVMO1L1,
2));
CNVMll01l(35 downto 34) <= STD_LOgic_vector(TO_UNSIGNED(CNVMIOI1,
2));
CNVMll01l(37 downto 36) <= std_logic_veCTOR(to_unsigned(CNVMLii1,
2));
CNVMlL01L(39 downto 38) <= std_LOGIC_VECTOR(to_unsigned(CNVMo1i1,
2));
CNVMll01L(41 downto 40) <= STD_logic_vector(to_UNSIGNED(CNVMIO01,
2));
CNVMll01l(43 downto 42) <= std_LOGIC_VECTOR(TO_UNSIGNED(CNVMli01,
2));
CNVMll01l(45 downto 44) <= std_logic_vecTOR(TO_UNSigned(CNVMo101,
2));
CNVMll01L(47 downto 46) <= std_loGIC_VECTOR(To_unsigned(CNVMIO11,
2));
CNVMll01l(49 downto 48) <= std_logic_vectOR(to_unsigned(CNVMLI11,
2));
CNVMLL01l(51 downto 50) <= std_logic_VECTOR(to_unsigned(CNVMO111,
2));
CNVMLL01L(53 downto 52) <= STD_LOGIC_VEctor(to_unsigned(CNVMioool,
2));
CNVMll01l(55 downto 54) <= std_logic_vector(to_unsigneD(CNVMliool,
2));
CNVMll01L(57 downto 56) <= Std_logic_vector(TO_UNSigned(CNVMO1ool,
2));
CNVMll01l(59 downto 58) <= std_loGIC_VECTOR(TO_unsigned(CNVMIOLOl,
2));
CNVMll01l(61 downto 60) <= STD_LOGIC_VECTor(TO_UNSIGNED(CNVMlilol,
2));
CNVMll01l(63 downto 62) <= std_logic_VECTOR(TO_UNsigned(CNVMO1LOL,
2));
CNVMll01l(65 downto 64) <= std_logic_VECTOR(TO_UNSIGned(CNVMIoiol,
2));
CNVMll01l(67 downto 66) <= STD_logic_vector(TO_UNSIGned(CNVMLIIOL,
2));
CNVMLL01l(69 downto 68) <= STD_LOGIC_Vector(to_unsiGNED(CNVMo1iol,
2));
CNVMLL01l(71 downto 70) <= std_logic_vectoR(TO_UNsigned(CNVMIO0OL,
2));
CNVMLL01L(73 downto 72) <= std_loGIC_VECTOR(to_UNSIGNED(CNVMLI0OL,
2));
CNVMLL01L(75 downto 74) <= std_logic_vecTOR(to_unsigNED(CNVMO10OL,
2));
CNVMLL01L(77 downto 76) <= STD_LOGIC_Vector(TO_UNSIGNEd(CNVMIo1ol,
2));
CNVMLL01L(79 downto 78) <= STD_LOGic_vector(TO_unsigned(CNVMLI1Ol,
2));
CNVMLL01l(81 downto 80) <= std_logic_vectoR(TO_UNSIGNED(CNVMo11ol,
2));
CNVMll01l(83 downto 82) <= std_loGIC_VECTOR(TO_UNSIGNEd(CNVMiOOLL,
2));
CNVMll01l(85 downto 84) <= stD_LOGIC_VECTOr(To_unsigned(CNVMLIOLL,
2));
CNVMll01l(87 downto 86) <= std_logic_vectoR(To_unsigned(CNVMo1oll,
2));
CNVMLL01l(89 downto 88) <= STD_logic_vector(TO_UNSigned(CNVMiolll,
2));
CNVMLL01L(91 downto 90) <= std_logic_veCTOR(to_unsigned(CNVMlilll,
2));
CNVMLL01L(93 downto 92) <= STD_LOGIC_VECtor(to_unsignED(CNVMO1Lll,
2));
CNVMll01l(95 downto 94) <= sTD_LOGIC_VECTor(TO_unsigned(CNVMioill,
2));
CNVMlL01L(97 downto 96) <= std_logic_vector(to_unsigned(CNVMLiill,
2));
CNVMll01l(99 downto 98) <= std_loGIC_VECTOR(TO_UNSIGNED(CNVMo1ill,
2));
CNVMll01L(101 downto 100) <= STd_logic_vector(TO_UNsigned(CNVMIO0LL,
2));
CNVMll01l(103 downto 102) <= std_logic_vECTOR(TO_unsigned(CNVMLI0LL,
2));
CNVMll01L(105 downto 104) <= STD_LOGIC_vector(TO_UNSIGNEd(CNVMo10ll,
2));
CNVMll01l(107 downto 106) <= std_logic_vecTOR(to_unsigned(CNVMio1LL,
2));
CNVMLL01L(109 downto 108) <= std_logic_vectOR(to_unsigneD(CNVMli1lL,
2));
CNVMLL01L(111 downto 110) <= STD_LOGIC_Vector(TO_unsigned(CNVMo11ll,
2));
CNVMll01l(113 downto 112) <= STD_logic_vector(TO_UNSIGned(CNVMIOOIL,
2));
CNVMLL01l(115 downto 114) <= STD_LOGic_vector(TO_UNSIGNED(CNVMliOIL,
2));
CNVMll01l(117 downto 116) <= STD_logic_vector(TO_Unsigned(CNVMo1oil,
2));
CNVMll01l(119 downto 118) <= std_LOGIC_VECTOR(TO_UNSIGNED(CNVMiolil,
2));
CNVMLL01l(121 downto 120) <= std_logic_vector(TO_Unsigned(CNVMlilil,
2));
CNVMll01l(123 downto 122) <= std_logic_vectoR(TO_UNSIGNED(CNVMO1LIL,
2));
CNVMll01l(125 downto 124) <= stD_LOGIC_VECTOr(to_unsigned(CNVMioiil,
2));
CNVMll01l(127 downto 126) <= Std_logic_vector(TO_UNSIGNED(CNVMliiil,
2));
CNVMIio0 <= CNVMii(8 downto 0);
CNVMi0O0 <= CNVMII;
CNVMO1O0 <= CNVMoi or CNVMool1l
or CNVMi1O1L;
CNVMl1o0 <= CNVMLI;
CNVMl0i1l <= CNVMOo01l(CNVMlol0-1 downto 0);
CNVMI0I1L <= CNVMLO01L(((CNVMOOL0*CNVMlol0)-1) downto 0);
CNVMo1i1l <= CNVMio01L(((18*CNVMLOL0)-1) downto 0);
CNVMl1i1l <= CNVMol01L(CNVMLOL0-1 downto 0);
CNVMi1i1l <= CNVMll01l(((2*CNVMlOL0)-1) downto 0);
CNVMIL01l:
process (CNVMI0I1L)
variable CNVMoi01l: Std_logic_vector(CNVMool0-1 downto 0);
variable CNVMLI01L: std_logic_vectOR(CNVMooL0-1 downto 0);
begin
for CNVMii01l in 0 to CNVMLOL0-1
loop
for j in 0 to CNVMOOL0-1
loop
CNVMOi01l(J) := CNVMI0I1L((CNVMii01l*CNVMoOL0)+J);
end loop;
CNVMli01l := STD_LOGIc_vector(Unsigned(CNVMOI01L)-1);
for k in 0 to CNVMool0-1
loop
CNVMl0o1l((CNVMii01L*CNVMOOL0)+k) <= CNVMli01l(K);
end loop;
end loop;
end process CNVMil01l;
CNVMo001l: CNVMI1O0L
generic map (CNVMLOL0 => CNVMLOL0,
CNVMIOl0 => CNVMiol0)
port map (CNVMool0l => clk,
CNVMlol0l => nreset,
CNVMioL0L => CNVMlii1l,
CNVMoll0L => CNVMOI,
CNVMLLL0L => CNVMooi1L,
CNVMILL0L => CNVMilL1L,
CNVMOIL0L => CNVMoil1l,
CNVMlil0l => CNVMili1l,
CNVMiil0l => CNVMi0o1l,
CNVMo0l0l => CNVMo1o1l,
CNVML0l0l => CNVMool1l,
CNVMi0l0l => CNVML1O1L,
INIT_BAse0 => INIt_base0,
init_baSE1 => init_base1,
init_bASE2 => init_base2,
init_BASE3 => init_bASE3);
CNVMl001l: CNVMo1l0l
generic map (CNVMlol0 => CNVMlol0,
CNVMIOL0 => CNVMIOL0)
port map (CNVMOOL0L => clk,
CNVMlol0l => NReset,
CNVMIOl0l => CNVMIIi1l,
CNVMoll0l => CNVMoi,
CNVMlll0l => CNVMooi1l,
CNVMill0l => CNVMOLI1L,
CNVMOIl0l => CNVMloi1l,
CNVMlil0l => CNVMO1L1L,
CNVMIIL0L => CNVMO0l1l,
CNVMO0L0l => CNVMl0l1l,
CNVMl0l0l => CNVMi1o1l,
CNVMi0l0l => CNVMlol1l,
CNVMl1l0l => CNVMiol1l,
CNVMi1l0l => CNVMOII1L,
CNVMooi0l => CNVMOLL1L,
CNVMLOI0L => CNVMO0I1L);
CNVMI001l: CNVMioi0l
generic map (CNVMlol0 => CNVMlol0,
CNVMIOL0 => CNVMIOL0,
CNVMOOL0 => CNVMOOL0)
port map (CNVMOOL0l => CNVMO10I,
CNVMlol0l => CNVMl10I,
CNVMiol0l => CNVMo1o1l,
CNVMOLL0L => CNVML1o1l,
CNVMLLL0L => CNVMloL1L,
CNVMill0l => CNVMIOL1l,
CNVMoIL0L => CNVMOLl1l,
CNVMlIL0L => CNVMlll1l,
CNVMIil0l => CNVMl0i1l,
CNVMO0L0L => CNVML0o1l,
CNVML0L0L => CNVMo1i1l,
CNVMI0L0L => CNVML1I1L,
CNVMl1l0l => CNVMI1I1l,
CNVMi1l0l => CNVMILL1L,
CNVMloi0l => CNVMOIL1l,
CNVMooi0l => CNVMO0L1L,
CNVMoli0l => CNVML0L1L,
CNVMlli0l => CNVMI10I,
CNVMili0l => CNVMOO1I,
CNVMoii0l => CNVMlo1i,
CNVMLII0L => CNVMiO1I,
CNVMIII0L => CNVMol1i,
CNVMo0i0l => CNVMll1i,
CNVMl0i0l => CNVMil1i,
CNVMi0i0l => CNVMOI1I,
CNVMO1I0l => CNVMLI1I,
CNVML1I0l => CNVMii1i,
CNVMi1i0l => CNVMo01i,
CNVMoo00l => CNVMl01i,
CNVMlo00l => CNVMi01i,
CNVMio00l => CNVMLOO0,
CNVMol00l => CNVMO11I,
CNVMll00L => CNVMl11i,
CNVMIL00L => CNVMI11I,
CNVMOI00L => CNVMooo0,
CNVMli00l => CNVMiii1l,
CNVMII00l => CNVMLII1L,
CNVMo000l => CNVMi0O1L,
CNVMl000l => CNVMI0,
CNVMi000l => CNVMllo0,
CNVMo100l => CNVML0,
CNVML100l => CNVMill,
CNVMi100L => CNVMoll,
CNVMOO10L => CNVMO0l,
CNVMlo10L => CNVMOIL,
CNVMio10l => CNVMIIL,
CNVMol10l => CNVMlil,
CNVMll10l => CNVMIOL,
CNVMil10l => CNVMilo0,
CNVMoi10L => CNVMi1,
CNVMli10L => CNVML0l,
CNVMii10l => CNVMoio0,
CNVMO010L => CNVMlOL,
CNVML010L => CNVMLLl,
CNVMi010l => CNVMO1,
CNVMO110L => CNVMOOL,
CNVML110L => CNVMi0L1L,
CNVMi110l => CNVMo1l1l,
CNVMooo1l => CNVMlli1l,
CNVMloo1l => CNVMl1l1l,
CNVMioo1l => CNVMLOi1l,
CNVMOLO1L => CNVMI1L1L,
CNVMLLO1L => CNVMioI1L,
CNVMilo1l => CNVMLIL1L,
CNVMOIO1L => CNVMiil1l);
CNVMo101l: CNVMlio1l
generic map (CNVMOol0 => CNVMOOL0)
port map (CNVMOOL0l => clk,
CNVMLOL0L => NRESET,
CNVMIOL0L => CNVMLIL1L,
CNVMOLL0L => CNVMIil1l,
CNVMLLL0L => CNVMi0l1l,
CNVMill0l => CNVMi1l1l,
CNVMoil0l => CNVMlli1l,
CNVMlil0l => CNVMiii1l,
CNVMIIl0l => CNVMl1l1l,
CNVMO0L0L => CNVMllL1L,
CNVMl0l0l => CNVMLIo0,
CNVMI0L0L => CNVMooI1L,
CNVMl1l0l => CNVMOLi1l);
CNVML101l: CNVMiio1l
generic map (CNVMlol0 => CNVMLOL0,
CNVMiol0 => CNVMiol0)
port map (CNVMOOL0L => CNVMoi,
CNVMLOL0L => CNVMILI1L,
CNVMiol0L => CNVMOII1L,
CNVMoll0l => CNVMl1o1L,
CNVMlll0l => CNVMoll1l,
CNVMILL0L => CNVMO0O0);
CNVMI101l: CNVMO0o1l
port map (CNVMool0l => CLK,
CNVMlol0l => CNVMi00i,
CNVMiol0l => NRESET,
CNVMOLL0L => CNVMi1o1l,
CNVMlll0l => CNVMool1l,
CNVMill0l => CNVMolo0,
CNVMoil0l => CNVMioo0,
CNVMlil0l => CNVMo0i1l,
CNVMiil0l => CNVMI0O1L,
CNVMo0l0L => CNVMo0,
CNVML0L0L => CNVML0O0,
CNVMi0L0L => init_done,
CNVMl1l0l => CNVMLII1L,
CNVMi1l0L => CNVMiii1l);
end CNVMl1o0l;
