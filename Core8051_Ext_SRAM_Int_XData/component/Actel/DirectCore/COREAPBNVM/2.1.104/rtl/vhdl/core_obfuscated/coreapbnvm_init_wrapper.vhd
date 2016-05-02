library IEee;
use ieee.std_logic_1164.all;
use ieee.STD_logic_unSIGNED.all;
entity CNVML00I is
generic (INIT_AWIDTH: Integer := 11;
init_BASE_ADDRESS_rst: integER := 0;
iNIT_BASE_ADDRess_0: integer := 0;
Init_base_address_1: INTEGER := 0;
INIT_BASE_address_2: inteGER := 0;
init_base_ADDRESS_3: INTEger := 0;
INIT_word_count_rst: integER := 0;
INIT_WORD_COUnt_0: integer := 0;
INIT_WORD_COunt_1: integer := 0;
init_WORD_COUNT_2: INTEGer := 0;
init_WORD_COUNT_3: INTEGer := 0;
INit_spare_page_rsT: integeR := 0;
INIT_SPARE_PAge_0: INTeger := 0;
Init_spare_page_1: integer := 0;
init_spare_pagE_2: inteGER := 0;
init_spare_page_3: integeR := 0); port (clk: in STD_LOGIC;
CNVMI00I: in STD_logic;
NReset: in std_LOGIC;
CNVMo10i: in std_LOGIC_VECTOR(((9*5)-1) downto 0);
CNVMl10i: in std_lOGIC_VECTOR(5-1 downto 0);
CNVMI10i: in stD_LOGIC_VECTOr(17 downto 0);
CNVMOO1I: in std_logic;
CNVMlo1i: in STD_logic_vector(31 downto 0);
CNVMIO1I: in STD_Logic;
CNVMOL1I: in stD_LOGIC;
CNVMlL1I: in std_logiC;
CNVMIL1i: in STD_LOGIC;
CNVMoi1i: in STd_logic;
CNVMLI1I: in STD_LOGIC;
CNVMii1I: in std_logic;
CNVMo01i: in STD_LOGIC;
CNVMl01i: in STD_LOGIC;
CNVMI01I: in std_logiC;
CNVMo11i: in STD_logic;
CNVMl11I: in STd_logic;
CNVMI11I: in std_LOGIC_VECTOR(1 downto 0);
CNVMoOO0: in Std_logic;
CNVMLOO0: in STD_Logic;
CNVMioo0: in std_logIC;
CNVMolo0: in STD_LOGIC;
CNVMOI: in STD_LOGIC;
CNVMii: in STD_LOgic_vector(31 downto 0);
CNVMLI: in std_LOGIC_VECTOR(1 downto 0);
CNVMi0: out std_LOGIC_VECTOR(17 downto 0);
CNVMLLO0: out stD_LOGIC;
CNVML0: out std_logIC_VECTOR(31 downto 0);
CNVMill: out std_LOGIC;
CNVMoll: out std_logiC;
CNVMo0l: out std_logic;
CNVMoil: out std_logic;
CNVMIIL: out STD_LOGIC;
CNVMlil: out std_logiC;
CNVMIOL: out STD_LOGIC;
CNVMILO0: out STd_logic;
CNVMi1: out std_logic;
CNVMl0l: out Std_logic;
CNVMlOL: out std_logic;
CNVMlll: out std_logic;
CNVMo1: out STD_LOGIc_vector(1 downto 0);
CNVMOol: out STD_LOGIC;
CNVMoio0: out STD_LOgic;
CNVMlio0: out std_logic_VECTOR(INit_awidth-1 downto 0);
CNVMIIO0: out std_logic_vectoR(8 downto 0);
CNVMo0o0: out stD_LOGIC;
CNVMl0o0: out std_LOGIC;
INIT_DONE: out STD_LOGIC;
CNVMi0o0: out STD_LOGIC_vector(31 downto 0);
CNVMO1O0: out STD_logic;
CNVMl1o0: out std_logic_vecTOR(1 downto 0);
CNVMO0: out std_logic;
INIT_Base0: in STD_LOGIC;
init_base1: in STD_LOGic;
init_base2: in STD_LOgic;
Init_base3: in STD_LOGIC);
end CNVMl00I;

architecture CNVMO of CNVMl00i is

component CNVMI1O0 is
generic (CNVMool0: INTEGer := 8;
CNVMlol0: integer := 2;
CNVMiol0: integer := 1;
CNVMOLL0: INTEGER := 0;
CNVMlll0: inTEGER := 0;
CNVMill0: INTEger := 0;
CNVMoil0: INTEGER := 0;
CNVMLIl0: integer := 0;
CNVMiil0: INTEGER := 0;
CNVMo0l0: integer := 0;
CNVML0L0: intEGER := 0;
CNVMI0l0: INTEGER := 0;
CNVMo1l0: INTEGER := 0;
CNVML1L0: INTEGER := 0;
CNVMI1L0: integeR := 0;
CNVMoOI0: integer := 0;
CNVMLOI0: integer := 0;
CNVMiOI0: integer := 0;
CNVMoli0: INTEGEr := 0;
CNVMLLI0: integeR := 0;
CNVMili0: integER := 0;
CNVMoii0: iNTEGER := 0;
CNVMlii0: integer := 0;
CNVMiii0: integer := 0;
CNVMO0I0: integer := 0;
CNVMl0i0: INTEGER := 0;
CNVMi0i0: intEGER := 0;
CNVMo1i0: integer := 0;
CNVMl1i0: intEGER := 0;
CNVMi1i0: inteGER := 0;
CNVMoo00: INTEGER := 0;
CNVMLO00: INTEGER := 0;
CNVMio00: integer := 0;
CNVMol00: Integer := 0;
CNVMll00: INTeger := 0;
CNVMil00: integer := 0;
CNVMOI00: INTEGER := 0;
CNVMLI00: INTEGER := 0;
CNVMii00: INTEGER := 0;
CNVMo000: INTEger := 0;
CNVMl000: INTEGER := 0;
CNVMi000: INTEGEr := 0;
CNVMO100: iNTEGER := 0;
CNVMl100: INTEGER := 0;
CNVMi100: INTEGEr := 0;
CNVMoo10: INTEGER := 0;
CNVMlo10: INTEGER := 0;
CNVMIO10: integer := 0;
CNVMol10: INTEGER := 0;
CNVMLl10: inteGER := 0;
CNVMil10: INTEGER := 0;
CNVMOI10: integer := 0;
CNVMli10: integer := 0;
CNVMIi10: integer := 0;
CNVMo010: integer := 0;
CNVMl010: integer := 0;
CNVMI010: INTEGER := 0;
CNVMo110: integer := 0;
CNVMl110: integer := 0;
CNVMi110: iNTEGER := 0;
CNVMooo1: integer := 0;
CNVMLOO1: INTEger := 0;
CNVMioO1: inteGER := 0;
CNVMolo1: integer := 0;
CNVMLLO1: iNTEGER := 0;
CNVMiLO1: integER := 0;
CNVMOIO1: INTEGER := 0;
CNVMlIO1: integer := 0;
CNVMiIO1: integer := 0;
CNVMO0O1: integer := 0;
CNVML0O1: inTEGER := 0;
CNVMi0o1: INTEGER := 0;
CNVMO1O1: integer := 0;
CNVML1O1: intEGER := 0;
CNVMI1O1: INTEGER := 0;
CNVMOOL1: inteGER := 0;
CNVMlol1: INTeger := 0;
CNVMiol1: integeR := 0;
CNVMOLL1: integer := 0;
CNVMlll1: INTEGER := 0;
CNVMill1: INTEGER := 0;
CNVMOIL1: integer := 0;
CNVMLIl1: integer := 0;
CNVMIIL1: Integer := 0;
CNVMO0L1: INTEger := 0;
CNVML0L1: INTeger := 0;
CNVMi0l1: integer := 0;
CNVMo1l1: integer := 0;
CNVMl1l1: integer := 0;
CNVMi1l1: inteGER := 0;
CNVMooi1: Integer := 0;
CNVMLOI1: INTEGER := 0;
CNVMIOI1: INTEGER := 0;
CNVMoli1: integer := 0;
CNVMlli1: integer := 0;
CNVMili1: integer := 0;
CNVMOII1: integeR := 0;
CNVMLII1: INTEGER := 0;
CNVMiii1: INTEGER := 0;
CNVMO0I1: iNTEGER := 0;
CNVML0I1: integer := 0;
CNVMi0i1: INTEGER := 0;
CNVMO1I1: integer := 0;
CNVML1I1: integeR := 0;
CNVMi1i1: INTEGER := 0;
CNVMoo01: integer := 0;
CNVMLO01: integer := 0;
CNVMio01: INTEGER := 0;
CNVMOL01: Integer := 0;
CNVMll01: inteGER := 0;
CNVMIL01: Integer := 0;
CNVMOI01: integer := 0;
CNVMli01: inTEGER := 0;
CNVMII01: INTEGER := 0;
CNVMO001: INTEGEr := 0;
CNVMl001: integer := 0;
CNVMi001: integer := 0;
CNVMO101: INTEGER := 0;
CNVML101: INTEGer := 0;
CNVMI101: INTEGer := 0;
CNVMOO11: INTEGER := 0;
CNVMLo11: INteger := 0;
CNVMIO11: INTEGER := 0;
CNVMol11: integer := 0;
CNVMLL11: integER := 0;
CNVMIL11: INTEGER := 0;
CNVMoI11: integer := 0;
CNVMli11: INTEGEr := 0;
CNVMii11: INTEGER := 0;
CNVMo011: INTEGER := 0;
CNVMl011: intEGER := 0;
CNVMI011: integer := 0;
CNVMo111: integeR := 0;
CNVMl111: INTEGER := 0;
CNVMi111: INTEGEr := 0;
CNVMooool: INTEGER := 0;
CNVMloool: inTEGER := 0;
CNVMioooL: INTEGER := 0;
CNVMOLool: integer := 0;
CNVMllool: INTEGER := 0;
CNVMILOOL: integer := 0;
CNVMOIOOL: integer := 0;
CNVMliool: integer := 0;
CNVMiiool: integer := 0;
CNVMo0ool: integer := 0;
CNVMl0ool: integer := 0;
CNVMi0ool: integer := 0;
CNVMO1OOL: INTEGER := 0;
CNVMl1ooL: integer := 0;
CNVMi1ool: integer := 0;
CNVMoolol: Integer := 0;
CNVMLOLOL: INTEGER := 0;
CNVMiolol: integer := 0;
CNVMOllol: INTEGER := 0;
CNVMLLLOl: INTEGER := 0;
CNVMillol: INTeger := 0;
CNVMOILOL: inteGER := 0;
CNVMLILOL: iNTEGER := 0;
CNVMiilol: INTEGER := 0;
CNVMO0lol: iNTEGER := 0;
CNVML0Lol: integER := 0;
CNVMI0Lol: integer := 0;
CNVMO1LOL: INteger := 0;
CNVMl1lol: INTEGER := 0;
CNVMi1lol: intEGER := 0;
CNVMooiol: INTEGER := 0;
CNVMloiol: inteGER := 0;
CNVMioIOL: INTEger := 0;
CNVMoliol: integer := 0;
CNVMlliol: inTEGER := 0;
CNVMILIOL: INteger := 0;
CNVMOIIol: INTeger := 0;
CNVMLIIOL: INTEger := 0;
CNVMiiiol: inteGER := 0;
CNVMO0IOL: INTEGer := 0;
CNVML0IOl: INTeger := 0;
CNVMi0iol: integer := 0;
CNVMo1iol: integer := 0;
CNVML1IOL: INTEGEr := 0;
CNVMi1iOL: INTEGER := 0;
CNVMoO0OL: inTEGER := 0;
CNVMlo0ol: integer := 0;
CNVMio0ol: INTeger := 0;
CNVMOL0OL: inteGER := 0;
CNVMll0ol: INTEGER := 0;
CNVMIL0OL: integer := 0;
CNVMOI0ol: INTEGER := 0;
CNVMli0ol: INTEGER := 0;
CNVMii0ol: INTEGER := 0;
CNVMo00ol: INTEGER := 0;
CNVMl00ol: INTEGER := 0;
CNVMi00ol: INTEGER := 0;
CNVMO10OL: integer := 0;
CNVML10OL: integer := 0;
CNVMI10ol: integer := 0;
CNVMOO1OL: integer := 0;
CNVMlo1OL: INTEger := 0;
CNVMio1ol: INTEGER := 0;
CNVMOL1ol: integer := 0;
CNVMll1ol: INTEGER := 0;
CNVMIL1Ol: Integer := 0;
CNVMoi1ol: integer := 0;
CNVMli1ol: integer := 0;
CNVMii1ol: integer := 0;
CNVMo01ol: integer := 0;
CNVMl01ol: integer := 0;
CNVMi01ol: integer := 0;
CNVMO11OL: intEGER := 0;
CNVMl11OL: integer := 0;
CNVMi11ol: integer := 0;
CNVMoooll: INTeger := 0;
CNVMLOOLL: integer := 0;
CNVMIOOLL: intEGER := 0;
CNVMOLOLL: integer := 0;
CNVMLLOLL: integer := 0;
CNVMILOll: INTEGER := 0;
CNVMoioll: INTEGER := 0;
CNVMLioll: inTEGER := 0;
CNVMiioll: inTEGER := 0;
CNVMo0olL: integer := 0;
CNVML0OLL: integer := 0;
CNVMI0OLL: integer := 0;
CNVMo1oll: INTEGER := 0;
CNVML1OLL: integer := 0;
CNVMi1oll: intEGER := 0;
CNVMOOLLL: integer := 0;
CNVMLOLLL: INTEger := 0;
CNVMIOLLL: INteger := 0;
CNVMollll: iNTEGER := 0;
CNVMlllLL: INTEGER := 0;
CNVMillll: integer := 0;
CNVMoilll: integer := 0;
CNVMLilll: integer := 0;
CNVMIILll: Integer := 0;
CNVMo0lll: integer := 0;
CNVML0lll: INTEger := 0;
CNVMi0lll: INteger := 0;
CNVMO1LLL: INTEGER := 0;
CNVMl1lll: Integer := 0;
CNVMI1LLL: inTEGER := 0;
CNVMooill: INTEGER := 0;
CNVMLOILL: INTEGER := 0;
CNVMioill: INTEGER := 0;
CNVMolill: Integer := 0;
CNVMLLILL: integer := 0;
CNVMilill: INTEGER := 0;
CNVMoiill: INTEGER := 0;
CNVMLIILL: integer := 0;
CNVMIIILL: integer := 0;
CNVMo0ill: INTEGER := 0;
CNVMl0ill: intEGER := 0;
CNVMi0ILL: INTEGer := 0;
CNVMo1ill: intEGER := 0;
CNVMl1ill: integER := 0;
CNVMi1ill: INTEGER := 0;
CNVMoo0ll: inTEGER := 0;
CNVMLO0Ll: integer := 0;
CNVMIo0ll: integer := 0;
CNVMol0LL: INTEGER := 0;
CNVMlL0LL: INTEGER := 0;
CNVMIL0LL: INTEGER := 0;
CNVMoi0ll: integer := 0;
CNVMli0ll: integer := 0;
CNVMII0ll: integer := 0;
CNVMo00ll: INteger := 0;
CNVML00ll: INTEGEr := 0;
CNVMi00ll: INTeger := 0;
CNVMo10LL: integer := 0;
CNVML10ll: INTEGER := 0;
CNVMI10LL: inTEGER := 0;
CNVMoo1ll: INTEGEr := 0;
CNVMlO1LL: integer := 0;
CNVMIO1LL: integer := 0;
CNVMol1ll: INTEGER := 0;
CNVMLL1LL: integer := 0;
CNVMil1LL: Integer := 0;
CNVMoi1LL: INTeger := 0;
CNVMli1ll: INTEGER := 0;
CNVMII1LL: integer := 0;
CNVMo01LL: INTeger := 0;
CNVMl01ll: INTEGER := 0;
CNVMi01ll: intEGER := 0;
CNVMo11lL: INTEGER := 0;
CNVML11LL: INTeger := 0;
CNVMi11ll: integer := 0;
CNVMOOOIL: INTeger := 0;
CNVMlooil: integer := 0;
CNVMiooil: integer := 0;
CNVMoloIL: inTEGER := 0;
CNVMLLOIL: INTEGER := 0;
CNVMiloil: integer := 0;
CNVMoiOIL: INTEGER := 0;
CNVMlioil: integer := 0;
CNVMiioil: integeR := 0;
CNVMo0oil: integer := 0;
CNVMl0oil: INTeger := 0;
CNVMI0Oil: INTEGER := 0;
CNVMO1OIL: INTEGER := 0;
CNVMl1oil: INTEGEr := 0;
CNVMi1OIL: integer := 0;
CNVMOOLIL: integER := 0;
CNVMlolil: INTEGEr := 0;
CNVMiolil: INTEGER := 0;
CNVMollil: INTEGER := 0;
CNVMllliL: integer := 0;
CNVMILLIL: integer := 0;
CNVMOILIL: integer := 0;
CNVMlilIL: Integer := 0;
CNVMiilIL: INTEger := 0;
CNVMo0lil: intEGER := 0;
CNVMl0lil: integeR := 0;
CNVMI0LIL: Integer := 0;
CNVMo1lil: integer := 0;
CNVMl1LIL: INTEGER := 0;
CNVMi1lil: integer := 0;
CNVMooiil: integer := 0;
CNVMloiil: inteGER := 0;
CNVMIOIIL: INTEGer := 0;
CNVMOLIil: Integer := 0;
CNVMlliil: integer := 0;
CNVMiliIL: INTEGER := 0;
CNVMOIIIL: INteger := 0;
CNVMLIIIL: INTEGER := 0);
port (clk: in std_logic;
CNVMi00i: in std_logic;
nreset: in STD_logic;
CNVMo10I: in std_logic_vecTOR(((9*CNVMLOL0)-1) downto 0);
CNVML10i: in std_lOGIC_VECTOR(CNVMlol0-1 downto 0);
CNVMi10i: in std_logic_vECTOR(17 downto 0);
CNVMoo1i: in std_lOGIC;
CNVMlo1i: in std_logIC_VECTOR(31 downto 0);
CNVMio1i: in std_logic;
CNVMol1i: in Std_logic;
CNVMll1i: in STD_LOGIC;
CNVMIL1I: in STD_LOGIC;
CNVMOI1I: in STD_LOGIC;
CNVMli1I: in std_logiC;
CNVMii1i: in STD_LOgic;
CNVMo01I: in STd_logic;
CNVML01I: in std_logic;
CNVMI01I: in stD_LOGIC;
CNVMo11i: in STD_LOGIC;
CNVML11I: in std_logic;
CNVMi11i: in STD_logic_vector(1 downto 0);
CNVMoOO0: in std_logic;
CNVMLOO0: in STD_logic;
CNVMioo0: in std_logic;
CNVMolo0: in std_loGIC;
CNVMoi: in STD_LOGIC;
CNVMII: in STD_LOGic_vector(31 downto 0);
CNVMLI: in STD_LOGIc_vector(1 downto 0);
CNVMi0: out std_logic_vectoR(17 downto 0);
CNVMllO0: out stD_LOGIC;
CNVMl0: out std_logic_vecTOR(31 downto 0);
CNVMILL: out STD_LOGIC;
CNVMoll: out std_loGIC;
CNVMO0L: out std_logic;
CNVMoiL: out STD_LOGic;
CNVMiil: out std_logic;
CNVMlIL: out STD_LOGIc;
CNVMIOL: out Std_logic;
CNVMILO0: out STD_logic;
CNVMI1: out std_logic;
CNVML0L: out STD_logic;
CNVMlol: out std_logic;
CNVMlll: out std_logic;
CNVMo1: out std_logIC_VECTOR(1 downto 0);
CNVMOOL: out STD_LOGIc;
CNVMoio0: out Std_logic;
CNVMLIO0: out STD_LOGIC_VECtor(CNVMool0-1 downto 0);
CNVMiio0: out STD_logic_vector(8 downto 0);
CNVMo0o0: out stD_LOGIC_VECTOr(CNVMlol0-1 downto 0);
CNVMl0o0: out STD_LOGIC;
init_done: out std_lOGIC;
CNVMI0O0: out std_LOGIC_VECTOR(31 downto 0);
CNVMO1O0: out STd_logic;
CNVML1O0: out STD_LOGic_vector(1 downto 0);
CNVMo0: out std_logic;
init_base0: in std_logic;
INit_base1: in STD_LOGIC;
INIT_BASe2: in std_LOGIC;
init_base3: in STD_logic);
end component;

signal CNVMiiiil: std_logic_VECTOR(4 downto 0);

signal CNVMo0iil: std_logic_VECTOR(17 downto 0);

signal CNVML0IIL: std_logic;

signal CNVMi0iil: STD_Logic_vector(31 downto 0);

signal CNVMo1iil: STD_LOGIC;

signal CNVMl1iil: std_loGIC;

signal CNVMi1iil: std_logic;

signal CNVMoo0il: std_logic;

signal CNVMlo0IL: std_LOGIC;

signal CNVMio0il: std_logic;

signal CNVMOL0IL: STD_logic;

signal CNVMll0il: std_logic;

signal CNVMil0il: std_logIC;

signal CNVMoi0il: std_logic;

signal CNVMli0IL: std_lOGIC;

signal CNVMii0il: STd_logic;

signal CNVMo00iL: std_lOGIC_VECTOR(1 downto 0);

signal CNVMl00il: std_logic;

signal CNVMi00il: STd_logic;

signal CNVMO10IL: STD_LOGIC_VEctor(init_AWIDTH-1 downto 0);

signal CNVMl10il: std_logic_vector(8 downto 0);

signal CNVMi10il: STD_Logic;

signal CNVMOO1Il: stD_LOGIC;

signal CNVMLO1IL: std_LOGIC_VECTOR(31 downto 0);

signal CNVMio1il: STd_logic;

signal CNVMOL1IL: std_logic_vECTOR(1 downto 0);

signal CNVMll1il: STD_logic;

begin
CNVMI0 <= CNVMo0iil;
CNVMllo0 <= CNVMl0iil;
CNVMl0 <= CNVMi0iil;
CNVMILL <= CNVMO1IIL;
CNVMOLl <= CNVMl1iil;
CNVMo0l <= CNVMi1IIL;
CNVMOIL <= CNVMoo0il;
CNVMiil <= CNVMlo0il;
CNVMlil <= CNVMIO0IL;
CNVMiol <= CNVMol0il;
CNVMILO0 <= CNVMll0il;
CNVMi1 <= CNVMil0il;
CNVMl0l <= CNVMoi0il;
CNVMLOl <= CNVMLI0il;
CNVMLLL <= CNVMII0IL;
CNVMo1 <= CNVMO00il;
CNVMool <= CNVMl00il;
CNVMoIO0 <= CNVMi00il;
CNVMLIO0 <= CNVMo10il;
CNVMIIO0 <= CNVMl10il;
CNVMl0o0 <= CNVMI10il;
Init_done <= CNVMOO1IL;
CNVMI0o0 <= CNVMlo1iL;
CNVMO1o0 <= CNVMio1il;
CNVML1O0 <= CNVMol1il;
CNVMo0 <= CNVMll1il;
CNVMo0o0 <= CNVMiIIIL(4) or CNVMiiiil(3)
or CNVMIIIIL(2)
or CNVMiiiil(1)
or CNVMIiiil(0);
CNVMil1il: CNVMI1O0
generic map (CNVMoOL0 => init_awidth,
CNVMlol0 => 5,
CNVMiol0 => 3,
CNVMoll0 => INIT_BASE_address_rst,
CNVMlll0 => iniT_WORD_COUNT_rst,
CNVMILL0 => 0,
CNVMoil0 => INIT_SPARE_page_rst,
CNVMlil0 => 1,
CNVMiil0 => init_base_ADDRESS_0,
CNVMO0L0 => iNIT_WORD_COUNT_0,
CNVML0L0 => 0,
CNVMi0L0 => init_spaRE_PAGE_0,
CNVMO1L0 => 1,
CNVMl1l0 => init_base_addRESS_1,
CNVMi1l0 => INIT_Word_count_1,
CNVMooi0 => 0,
CNVMlOI0 => INIt_spare_page_1,
CNVMIOI0 => 1,
CNVMoli0 => INIT_BASE_address_2,
CNVMLLI0 => init_word_counT_2,
CNVMILI0 => 0,
CNVMoii0 => Init_spare_page_2,
CNVMLII0 => 1,
CNVMIII0 => init_base_addRESS_3,
CNVMO0I0 => init_word_cOUNT_3,
CNVML0I0 => 0,
CNVMi0i0 => init_spare_PAGE_3,
CNVMo1I0 => 1,
CNVMl1i0 => 0,
CNVMI1I0 => 0,
CNVMOO00 => 0,
CNVMlo00 => 0,
CNVMio00 => 0,
CNVMol00 => 0,
CNVMll00 => 0,
CNVMIL00 => 0,
CNVMOI00 => 0,
CNVMli00 => 0,
CNVMII00 => 0,
CNVMO000 => 0,
CNVMl000 => 0,
CNVMI000 => 0,
CNVMo100 => 0,
CNVMl100 => 0,
CNVMi100 => 0,
CNVMoo10 => 0,
CNVMLO10 => 0,
CNVMio10 => 0,
CNVMol10 => 0,
CNVMll10 => 0,
CNVMil10 => 0,
CNVMoi10 => 0,
CNVMli10 => 0,
CNVMii10 => 0,
CNVMo010 => 0,
CNVML010 => 0,
CNVMI010 => 0,
CNVMo110 => 0,
CNVMl110 => 0,
CNVMI110 => 0,
CNVMOOO1 => 0,
CNVMloo1 => 0,
CNVMioo1 => 0,
CNVMOlo1 => 0,
CNVMllo1 => 0,
CNVMilo1 => 0,
CNVMoio1 => 0,
CNVMLIO1 => 0,
CNVMiio1 => 0,
CNVMo0o1 => 0,
CNVML0O1 => 0,
CNVMi0O1 => 0,
CNVMo1o1 => 0,
CNVMl1o1 => 0,
CNVMI1O1 => 0,
CNVMool1 => 0,
CNVMLOL1 => 0,
CNVMIol1 => 0,
CNVMoll1 => 0,
CNVMLLL1 => 0,
CNVMill1 => 0,
CNVMoil1 => 0,
CNVMlil1 => 0,
CNVMiil1 => 0,
CNVMO0l1 => 0,
CNVMl0l1 => 0,
CNVMi0l1 => 0,
CNVMo1l1 => 0,
CNVML1L1 => 0,
CNVMI1L1 => 0,
CNVMOOI1 => 0,
CNVMLOI1 => 0,
CNVMioi1 => 0,
CNVMOLI1 => 0,
CNVMLLI1 => 0,
CNVMILi1 => 0,
CNVMOII1 => 0,
CNVMlii1 => 0,
CNVMIii1 => 0,
CNVMO0I1 => 0,
CNVMl0i1 => 0,
CNVMi0i1 => 0,
CNVMO1I1 => 0,
CNVMl1i1 => 0,
CNVMI1I1 => 0,
CNVMOO01 => 0,
CNVMLO01 => 0,
CNVMio01 => 0,
CNVMOL01 => 0,
CNVMll01 => 0,
CNVMIL01 => 0,
CNVMOI01 => 0,
CNVMli01 => 0,
CNVMii01 => 0,
CNVMO001 => 0,
CNVML001 => 0,
CNVMi001 => 0,
CNVMO101 => 0,
CNVMl101 => 0,
CNVMI101 => 0,
CNVMoo11 => 0,
CNVMlo11 => 0,
CNVMio11 => 0,
CNVMOL11 => 0,
CNVMll11 => 0,
CNVMIL11 => 0,
CNVMoi11 => 0,
CNVMLI11 => 0,
CNVMiI11 => 0,
CNVMo011 => 0,
CNVMl011 => 0,
CNVMI011 => 0,
CNVMo111 => 0,
CNVML111 => 0,
CNVMi111 => 0,
CNVMOOOOL => 0,
CNVMloool => 0,
CNVMioooL => 0,
CNVMolool => 0,
CNVMllool => 0,
CNVMilool => 0,
CNVMoIOOL => 0,
CNVMliool => 0,
CNVMiiool => 0,
CNVMo0ool => 0,
CNVMl0ool => 0,
CNVMi0ooL => 0,
CNVMo1ool => 0,
CNVMl1ool => 0,
CNVMi1ool => 0,
CNVMOOLOL => 0,
CNVMLOLOL => 0,
CNVMiolOL => 0,
CNVMollol => 0,
CNVMlllol => 0,
CNVMIllol => 0,
CNVMOIlol => 0,
CNVMLILOL => 0,
CNVMiilol => 0,
CNVMO0LOL => 0,
CNVML0LOL => 0,
CNVMi0lol => 0,
CNVMo1loL => 0,
CNVML1lol => 0,
CNVMI1LOl => 0,
CNVMOOIOL => 0,
CNVMloiol => 0,
CNVMioiol => 0,
CNVMolioL => 0,
CNVMLLIOL => 0,
CNVMiliol => 0,
CNVMoiIOL => 0,
CNVMLIIOL => 0,
CNVMIIIOL => 0,
CNVMo0IOL => 0,
CNVML0IOL => 0,
CNVMi0iol => 0,
CNVMO1IOL => 0,
CNVMl1iol => 0,
CNVMi1iol => 0,
CNVMoo0ol => 0,
CNVMlo0ol => 0,
CNVMIO0OL => 0,
CNVMol0OL => 0,
CNVMll0OL => 0,
CNVMil0ol => 0,
CNVMOI0OL => 0,
CNVMli0OL => 0,
CNVMii0ol => 0,
CNVMO00OL => 0,
CNVML00OL => 0,
CNVMi00ol => 0,
CNVMO10OL => 0,
CNVML10OL => 0,
CNVMi10OL => 0,
CNVMOO1ol => 0,
CNVMlo1oL => 0,
CNVMio1ol => 0,
CNVMol1ol => 0,
CNVMll1ol => 0,
CNVMil1OL => 0,
CNVMoI1OL => 0,
CNVMLI1Ol => 0,
CNVMII1OL => 0,
CNVMO01ol => 0,
CNVMl01ol => 0,
CNVMi01OL => 0,
CNVMo11ol => 0,
CNVMl11ol => 0,
CNVMI11OL => 0,
CNVMOooll => 0,
CNVMLooll => 0,
CNVMIOOLL => 0,
CNVMololl => 0,
CNVMlloll => 0,
CNVMILOLL => 0,
CNVMOIOLL => 0,
CNVMlioll => 0,
CNVMIIOLL => 0,
CNVMo0oll => 0,
CNVML0OLL => 0,
CNVMi0oll => 0,
CNVMO1OLL => 0,
CNVMl1oll => 0,
CNVMI1OLL => 0,
CNVMOolll => 0,
CNVMLOLLL => 0,
CNVMIOLLl => 0,
CNVMollll => 0,
CNVMlllLL => 0,
CNVMILLLl => 0,
CNVMoilll => 0,
CNVMlilll => 0,
CNVMiilll => 0,
CNVMo0llL => 0,
CNVMl0llL => 0,
CNVMi0lll => 0,
CNVMO1lll => 0,
CNVMl1lll => 0,
CNVMI1LLL => 0,
CNVMOOILL => 0,
CNVMLOILL => 0,
CNVMiOILL => 0,
CNVMolill => 0,
CNVMllill => 0,
CNVMILILL => 0,
CNVMOIILL => 0,
CNVMliill => 0,
CNVMIIILL => 0,
CNVMo0ill => 0,
CNVML0ill => 0,
CNVMi0iLL => 0,
CNVMo1ill => 0,
CNVMl1ilL => 0,
CNVMi1ill => 0,
CNVMoo0ll => 0,
CNVMLO0LL => 0,
CNVMIO0LL => 0,
CNVMol0LL => 0,
CNVMLL0Ll => 0,
CNVMil0ll => 0,
CNVMoi0lL => 0,
CNVMli0LL => 0,
CNVMii0ll => 0,
CNVMo00LL => 0,
CNVMl00ll => 0,
CNVMi00ll => 0,
CNVMO10ll => 0,
CNVML10LL => 0,
CNVMi10LL => 0,
CNVMOO1LL => 0,
CNVMLO1LL => 0,
CNVMIO1LL => 0,
CNVMol1ll => 0,
CNVMLl1ll => 0,
CNVMil1LL => 0,
CNVMOi1ll => 0,
CNVMli1ll => 0,
CNVMII1ll => 0,
CNVMo01ll => 0,
CNVMl01ll => 0,
CNVMI01LL => 0,
CNVMO11ll => 0,
CNVMl11ll => 0,
CNVMi11ll => 0,
CNVMoooil => 0,
CNVMLOOIL => 0,
CNVMIOOIL => 0,
CNVMOLOIL => 0,
CNVMlloil => 0,
CNVMiloil => 0,
CNVMoioil => 0,
CNVMlioil => 0,
CNVMIioil => 0,
CNVMo0oil => 0,
CNVML0OIL => 0,
CNVMI0OIL => 0,
CNVMo1oil => 0,
CNVMl1oil => 0,
CNVMi1oil => 0,
CNVMOOLil => 0,
CNVMloLIL => 0,
CNVMiolil => 0,
CNVMoLLIL => 0,
CNVMlllil => 0,
CNVMILLIL => 0,
CNVMOILIL => 0,
CNVMLIlil => 0,
CNVMiilil => 0,
CNVMo0lil => 0,
CNVML0LIL => 0,
CNVMi0lil => 0,
CNVMo1lil => 0,
CNVML1LIL => 0,
CNVMI1lil => 0,
CNVMooiil => 0,
CNVMloiil => 0,
CNVMioiil => 0,
CNVMoliil => 0,
CNVMlliil => 0,
CNVMiliil => 0,
CNVMoiiil => 0,
CNVMliiil => 0)
port map (Clk => CLK,
CNVMi00i => CNVMi00I,
NRESET => NReset,
CNVMO10I => CNVMo10i,
CNVML10i => CNVMl10i,
CNVMI10i => CNVMi10i,
CNVMoo1i => CNVMoo1I,
CNVMLo1i => CNVMlo1i,
CNVMIO1i => CNVMiO1I,
CNVMol1i => CNVMOL1I,
CNVMLL1I => CNVMll1i,
CNVMIL1I => CNVMil1i,
CNVMOI1I => CNVMOI1I,
CNVMLI1I => CNVMli1i,
CNVMii1i => CNVMii1i,
CNVMo01I => CNVMo01i,
CNVMl01I => CNVML01I,
CNVMI01I => CNVMI01I,
CNVMo11i => CNVMo11i,
CNVMl11I => CNVML11I,
CNVMI11i => CNVMI11I,
CNVMOOO0 => CNVMOOO0,
CNVMLOO0 => CNVMloO0,
CNVMIOO0 => CNVMioo0,
CNVMOLO0 => CNVMolo0,
CNVMoi => CNVMOI,
CNVMII => CNVMii,
CNVMLI => CNVMli,
CNVMI0 => CNVMo0iil,
CNVMllo0 => CNVMl0iil,
CNVMl0 => CNVMI0IIL,
CNVMILL => CNVMo1iil,
CNVMoll => CNVML1iil,
CNVMo0l => CNVMi1iil,
CNVMoil => CNVMOo0il,
CNVMIIL => CNVMLO0Il,
CNVMLIL => CNVMIO0IL,
CNVMiol => CNVMol0il,
CNVMilO0 => CNVMll0il,
CNVMI1 => CNVMil0il,
CNVMl0l => CNVMoi0il,
CNVMLOL => CNVMli0iL,
CNVMlll => CNVMII0IL,
CNVMo1 => CNVMo00il,
CNVMool => CNVMl00il,
CNVMOIO0 => CNVMi00il,
CNVMLIO0 => CNVMo10il,
CNVMiio0 => CNVMl10IL,
CNVMO0O0 => CNVMIIIil,
CNVMl0o0 => CNVMi10IL,
inIT_DONE => CNVMOO1Il,
CNVMI0O0 => CNVMLO1il,
CNVMo1o0 => CNVMio1il,
CNVMl1o0 => CNVMOL1IL,
CNVMO0 => CNVMll1iL,
init_baSE0 => init_bASE0,
init_BASE1 => init_base1,
INIT_base2 => init_bASE2,
INIT_BASE3 => init_base3);
end CNVMo;
