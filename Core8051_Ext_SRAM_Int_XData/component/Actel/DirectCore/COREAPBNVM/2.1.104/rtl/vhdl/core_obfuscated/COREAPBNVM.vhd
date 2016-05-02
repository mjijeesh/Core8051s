library ieEe;
use IEEE.STD_logic_1164.all;
use ieeE.std_logic_UNSIGNED.all;
use IEEE.NUMERIc_std.all;
entity COREAPBNVM is
generic (FAMILY: INTEGer := 17;
APB_AWIDTH: integer := 8;
apb_dwidth: intEGER := 8;
num_insTANCES: INTEGEr := 1;
init_enabled: INTeger := 0;
iNIT_AWIDTH: Integer := 11;
init_baSE_ADDRESS_RSt: integeR := 0;
init_WORD_COUNT_Rst: integer := 0;
init_spare_PAGE_RST: Integer := 0;
INIt_base_address_0: INTEGER := 0;
init_word_count_0: INTEGER := 0;
init_spare_pAGE_0: INTEGER := 0;
init_base_aDDRESS_1: INTEGER := 0;
init_word_COUNT_1: INTEGER := 0;
INIT_spare_page_1: integer := 0;
INIT_Base_address_2: integer := 0;
init_word_count_2: integER := 0;
Init_spare_page_2: integer := 0;
init_BASE_ADDRESS_3: INTEger := 0;
Init_word_count_3: integer := 0;
init_spare_pAGE_3: iNTEGER := 0); port (PCLK: in STD_logic;
preSETN: in std_logic;
psel: in STD_LOGIC;
PENABLE: in std_logIC;
pwritE: in std_logic;
PADDR: in STD_LOGIC_vector(aPB_AWIDTH-1 downto 0);
pwDATA: in STD_logic_vector(APB_dwidth-1 downto 0);
PRDATA: out std_logic_VECTOR(apb_dWIDTH-1 downto 0);
pready: out std_LOGIC;
pSLVERR: out STD_LOGIC;
INIT_BAse0: in std_logiC;
init_base1: in stD_LOGIC;
INIT_BASe2: in STD_logic;
Init_base3: in std_logic;
inIT_DONE: out STD_LOgic;
inIT_DATA: out STD_LOgic_vector(8 downto 0);
init_addr: out STD_logic_vector(INIT_Awidth-1 downto 0);
Init_datval: out STD_logic);
end COREapbnvm;

architecture CNVMO of COREapbnvm is

component CNVMl is
generic (iNIT_AWIDTH: INTEGER := 11;
init_base_addreSS_RST: INTEGER := 0;
INIT_BASE_ADdress_0: INTEGER := 0;
INIT_base_address_1: INTeger := 0;
INIT_BASE_ADDress_2: INTEGER := 0;
init_BASE_ADDRESS_3: Integer := 0;
Init_word_count_rST: iNTEGER := 0;
INIT_WOrd_count_0: INTEGER := 0;
Init_word_count_1: INTEGER := 0;
iniT_WORD_COUNT_2: integer := 0;
init_wORD_COUNT_3: integer := 0;
init_sPARE_PAGE_RST: integer := 0;
INIT_spare_page_0: inTEGER := 0;
init_spARE_PAGE_1: INTEGER := 0;
INIT_Spare_page_2: integer := 0;
init_spare_paGE_3: INTEGER := 0);
port (CNVMi: in STD_LOGIc;
CNVMol: in std_logic;
CNVMLL: in STD_LOGIC;
init_base0: in STD_logic;
init_base1: in std_logic;
init_bASE2: in std_logiC;
Init_base3: in std_logIC;
INIt_done: out STD_LOgic;
INit_data: out STD_Logic_vector(8 downto 0);
init_addr: out std_logic_VECTOR(init_awidth-1 downto 0);
CNVMIL: out std_loGIC;
CNVMoi: in STD_LOGIC;
CNVMli: in STD_LOGIC_VECtor(1 downto 0);
CNVMii: in std_LOGIC_VECTOR(31 downto 0);
CNVMo0: out std_LOGIC;
CNVMl0: out STd_logic_vector(31 downto 0);
CNVMI0: out std_logic_vectoR(17 downto 0);
CNVMo1: out std_logiC_VECTOR(1 downto 0);
CNVML1: out std_logIC;
CNVMi1: out STD_LOGIC;
CNVMOOL: out Std_logic;
CNVMLOL: out STD_logic;
CNVMiOL: out STD_LOGIC;
CNVMoll: out std_lOGIC;
CNVMlll: out std_lOGIC;
CNVMill: out std_LOGIC;
CNVMoil: out std_logic;
CNVMlil: out STD_logic;
CNVMIIL: out STD_LOGIC;
CNVMO0L: out STD_LOGIc;
CNVMl0l: out std_logic;
CNVMI0l: out STD_LOGIC);
end component;

component NVM
generic (meMORYFILE: STRING);
port (addr: in STD_LOgic_vector(17 downto 0);
WD: in Std_logic_vector(31 downto 0);
datawidth: in std_logiC_VECTOR(1 downto 0);
Ren: in std_ulogic;
REAdnext: in STD_ULOGIC;
PAGESTATus: in STD_ULOGIC;
wEN: in STD_ulogic;
ERASEPAge: in std_ULOGIC;
program: in STD_ULOGIC;
SPAREPAGE: in stD_ULOGIC;
auxblock: in STD_ULOGic;
Unprotectpage: in STD_ulogic;
overwritepage: in Std_ulogic;
DISCARDPAGE: in std_ulogic;
overwriteproTECT: in std_ulogic;
PAGelossprotect: in STD_ulogic;
pipe: in STD_ULOGIC;
lockrequEST: in STD_ULOGIC;
clk: in std_ulogic;
RESET: in Std_ulogic;
RD: out STD_logic_vector(31 downto 0);
BUSY: out STD_ulogic;
STATUs: out STD_LOGIC_vector(1 downto 0));
end component;

constant CNVMO1L: inteGER := apb_dwidth/8;

signal CNVML1L: std_loGIC_VECTOR(6 downto 0);

signal CNVMi1L: STD_LOGic_vector(apb_dwidth-1 downto 0);

signal CNVMooi: std_LOGIC_VECTOR(7 downto 0);

signal CNVMLOI: STd_logic_vector(7 downto 0);

signal CNVMIOI: STD_LOGIC_vector(APB_dwidth-1 downto 0);

signal CNVMoli: std_logIC_VECTOR(7 downto 0);

signal CNVMLLI: sTD_LOGIC_VECTOr(7 downto 0);

signal CNVMili: STD_LOGIC;

signal CNVMOII: STD_Logic;

signal CNVMLii: std_logic;

signal CNVMiii: std_logic;

signal CNVMo0i: std_logiC;

signal CNVMl0i: std_logic;

signal CNVMi0i: sTD_LOGIC_VECTor(20 downto 0);

signal CNVMO1I: std_logic_VECTOR(apb_DWIDTH-1 downto 0);

signal CNVMl1i: stD_LOGIC_VECTOr(APB_dwidth-1 downto 0);

signal CNVMI1I: STD_LOGIC;

signal CNVMoi: STd_logic;

signal CNVMli: std_logic_vectOR(1 downto 0);

signal CNVMOO0: STD_LOGIC;

signal CNVMLO0: std_logic;

signal CNVMio0: std_logic_vector(1 downto 0);

signal CNVMOL0: STD_LOGIC;

signal CNVMLL0: STD_LOGIC;

signal CNVMil0: STD_LOGic_vector(1 downto 0);

signal CNVMoi0: STD_logic;

signal CNVMLI0: std_logiC;

signal CNVMii0: STD_Logic;

signal CNVMo00: STD_logic;

signal CNVMl00: sTD_LOGIC;

signal CNVMi00: STD_logic;

signal CNVMo10: Std_logic;

signal CNVML10: std_loGIC;

signal CNVMI10: std_logic;

signal CNVMoO1: STD_Logic;

signal CNVMLO1: STD_LOGIC_Vector(31 downto 0);

signal CNVMio1: std_LOGIC;

signal CNVMol1: Std_logic_vector(17 downto 0);

signal CNVMll1: stD_LOGIC;

signal CNVMIL1: std_logic_vectoR(31 downto 0);

signal CNVMoi1: std_LOGIC_VECTOR(1 downto 0);

signal CNVMli1: std_logiC;

signal CNVMiI1: STD_LOGIC;

signal CNVMO01: STD_Logic;

signal CNVMl01: std_logic;

signal CNVMI01: STD_LOGIc;

signal CNVMO11: STD_logic;

signal CNVMl11: std_logic;

signal CNVMI11: STD_LOGIC;

signal CNVMoool: STD_logic;

signal CNVMlool: STD_LOGIc;

signal CNVMiool: STD_LOGIC;

signal CNVMOLOL: std_logIC;

signal CNVMLLol: STD_LOGIC;

signal CNVMilol: STD_LOGIC;

signal CNVMOIOL: std_logic_vectoR(17 downto 0);

signal CNVMO0: std_logic;

signal CNVMLIOL: STD_logic_vector(31 downto 0);

signal CNVMIIOL: std_logic_VECTOR(1 downto 0);

signal CNVML1: STD_logic;

signal CNVMo0ol: STD_LOGIC;

signal CNVMl0ol: STD_LOGIC;

signal CNVMI0OL: std_logic;

signal CNVMiol: std_LOGIC;

signal CNVMO1Ol: std_logic;

signal CNVMl1ol: sTD_LOGIC;

signal CNVMi1ol: std_logic;

signal CNVMOOLL: std_logic;

signal CNVMLOLL: std_logic;

signal CNVMioll: std_loGIC;

signal CNVMi0l: std_logic;

signal CNVMolll: std_LOGIC;

signal CNVMLLLL: STD_LOgic;

signal CNVMILLL: std_lOGIC;

signal CNVMOILL: std_logic_vecTOR(31 downto 0);

signal CNVMlill: std_logic;

signal CNVMIILL: STD_LOGIC;

signal CNVMo0lL: std_logic;

signal CNVML0LL: STD_LOGIC;

signal CNVMi0ll: std_logic;

signal CNVMo1ll: STD_LOGic;

signal CNVML1LL: STD_LOGIC;

signal CNVMi1ll: STD_LOGic;

signal CNVMOOIL: std_logiC;

signal CNVMLOil: sTD_LOGIC;

signal CNVMIOIL: sTD_LOGIC;

signal CNVMolil: STD_LOGIC;

signal CNVMllil: STD_Logic;

signal CNVMILIl: std_loGIC;

signal CNVMoiil: STD_LOGIC;

signal CNVMlIIL: STd_logic;

signal CNVMIIIL: std_logic;

signal CNVMO0il: STD_Logic;

signal CNVMl0il: STD_LOGIC;

signal CNVMi0il: std_lOGIC;

signal CNVMO1il: std_logic;

signal CNVMl1il: std_logiC;

signal CNVMI1IL: STD_logic;

signal CNVMOO0l: std_logic;

signal CNVMLO0L: STD_logic;

signal CNVMio0l: std_logic;

signal CNVMOL0L: STD_logic;

signal CNVMll0l: std_logic;

signal CNVMil0L: stD_LOGIC;

signal CNVMoi0l: Std_logic;

signal CNVMli0l: STD_logic;

signal CNVMii0l: std_logic;

signal CNVMo00l: std_logic;

signal CNVMl00l: STD_logic;

signal CNVMI00l: STD_LOGIC;

signal CNVMo10l: STD_LOGIc;

signal CNVMl10l: STD_LOGIc;

signal CNVMI10L: std_logic;

signal CNVMOo1l: STD_LOGIC;

signal CNVMlo1l: STD_logic;

signal CNVMio1L: Std_logic;

signal CNVMOL1l: std_lOGIC;

signal CNVMll1l: STD_LOgic;

signal CNVMIL1L: std_logic;

signal CNVMOI1l: std_logic;

signal CNVMli1l: STD_LOGIC;

signal CNVMii1l: STD_LOGIC;

signal CNVMo01l: std_loGIC;

signal CNVMl01l: stD_LOGIC;

signal CNVMI01L: STD_Logic;

signal CNVMO11L: STd_logic;

signal CNVMl11l: std_logic;

signal CNVMI11L: STd_logic;

signal CNVMoooi: std_logIC;

signal CNVMLOOI: std_logic;

signal CNVMiooi: std_logic;

signal CNVMoloI: std_LOGIC;

signal CNVMLLOI: stD_LOGIC;

signal CNVMiloi: std_logic;

signal CNVMoioi: std_logic;

signal CNVMlioi: STD_logic;

signal CNVMIIOI: STD_LOGIC;

signal CNVMo0oi: STD_logic;

signal CNVML0OI: std_loGIC;

signal CNVMi0OI: STD_LOGIC_VECtor(31 downto 0);

signal CNVMo1oI: std_logIC_VECTOR(31 downto 0);

signal CNVML1OI: STD_LOGIC_vector(31 downto 0);

signal CNVMI1OI: sTD_LOGIC_VECTOr(31 downto 0);

signal CNVMooli: STD_Logic_vector(1 downto 0);

signal CNVMloli: std_logic_vector(1 downto 0);

signal CNVMIoli: STD_LOGIC_VECtor(1 downto 0);

signal CNVMolli: STD_LOGIC_vector(1 downto 0);

signal CNVMllli: STD_LOgic;

signal CNVMILLi: std_logiC_VECTOR(8 downto 0);

signal CNVMoili: STD_LOGIC_vector(INIT_awidth-1 downto 0);

signal CNVMLILI: std_logic;

begin
pslverr <= '0';
pready <= '1';
CNVMIILI:
if (apb_dwidth = 32)
generate
CNVMl1l <= "1111100";
end generate;
CNVMo0LI:
if (apB_DWIDTH = 16)
generate
CNVMl1L <= "1111110";
end generate;
CNVML0LI:
if (apb_dwidth = 8)
generate
CNVMl1l <= "1111111";
end generate;
init_done <= CNVMLLLI;
init_data <= CNVMilli;
INIT_ADDR <= CNVMoiLI;
init_datvaL <= CNVMlili;
CNVMOi0 <= '0';
CNVMLI0 <= '0';
CNVMII0 <= '0';
CNVMo00 <= '0';
CNVML00 <= '0';
CNVMI00 <= '0';
CNVMO10 <= '0';
CNVML10 <= '0';
CNVMI10 <= '1';
CNVMoo1 <= '1';
CNVMILLL <= CNVMoli(0);
CNVMO0I <= CNVMOLI(2);
CNVMl0i <= CNVMOLI(3);
CNVMll0 <= CNVMoli(4);
CNVMOO0 <= CNVMoli(7);
CNVMO1I <= CNVMIOI;
CNVMili <= '1' when (CNVMi0I(6 downto 0) >= CNVMl1l) else
'0';
CNVMLLi <= (CNVMlo0&CNVMio1&CNVMOII&CNVMili&'0'&CNVMOI&CNVMli(1 downto 0));
CNVMi0li:
process (PRESETN,PCLK)
begin
if ((not (PRESETN)) = '1') then
CNVMi1l <= ( others => '0');
CNVMOOI <= "00000000";
CNVMloi <= "00000000";
CNVMioi <= ( others => '0');
CNVMoli <= "00000000";
elsif (pCLK'EVENT and Pclk = '1') then
if (CNVMOLI /= "00000000") then
CNVMOli <= "00000000";
elsif ((psel = '1') and (pwRITE = '1')
and (penaBLE = '1')) then
case (PADDR(7 downto 0)) is
when "00000000" =>
CNVMI1L <= pwdata(Apb_dwidth-1 downto 0);
when "00000100" =>
CNVMooi <= PWDATA(7 downto 0);
when "00001000" =>
CNVMlOI <= PWDATA(7 downto 0);
when "00001100" =>
CNVMIOI <= PWDATA(apb_dwidth-1 downto 0);
when "00010000" =>
CNVMoli <= pwdata(7 downto 0);
when others =>
CNVMioi <= CNVMioi;
end case;
else
CNVMoli <= "00000000";
end if;
end if;
end process;
CNVMo1li:
if (not (apb_dwidTH > 8))
generate
begin
CNVML1LI:
process (PADDR,CNVMI1L,CNVMooI,CNVMloi,CNVMioi,CNVMOLI,CNVMLLI,CNVMl1i)
begin
case (PADdr(7 downto 0)) is
when "00000000" =>
prdata <= CNVMI0I(7 downto 0);
when "00000100" =>
prdata <= CNVMi0i(15 downto 8);
when "00001000" =>
prdata <= "000"&CNVMI0i(20 downto 16);
when "00001100" =>
prdata <= CNVMIOI(apb_dwidth-1 downto 0);
when "00010000" =>
prDATA <= CNVMoli(7 downto 0);
when "00010100" =>
prdata <= CNVMLLI(7 downto 0);
when "00011000" =>
PRData <= CNVMl1i(apb_DWIDTH-1 downto 0);
when others =>
prdata <= ( others => '0');
end case;
end process;
end generate CNVMo1li;
CNVMI1LI:
if (apb_dwidth = 16)
generate
constant CNVMooii: STD_logic_vector(APB_dwidth-8-1 downto 0) := ( others => '0');
begin
CNVMl1LI:
process (PADDR,CNVMi1l,CNVMooi,CNVMLOI,CNVMioI,CNVMoli,CNVMLLI,CNVMl1i)
begin
case (paddr(7 downto 0)) is
when "00000000" =>
Prdata <= CNVMI0I(15 downto 0);
when "00000100" =>
prdata <= "00000000000"&CNVMi0i(20 downto 16);
when "00001000" =>
prdata <= ( others => '0');
when "00001100" =>
PRDATA <= CNVMioi(apb_DWIDTH-1 downto 0);
when "00010000" =>
PRDATA <= CNVMOOIi&CNVMoli(7 downto 0);
when "00010100" =>
PRDATA <= CNVMOOII&CNVMlli(7 downto 0);
when "00011000" =>
PRDATA <= CNVMl1i(apb_dwidth-1 downto 0);
when others =>
Prdata <= ( others => '0');
end case;
end process;
end generate CNVMI1LI;
CNVMloii:
if (APB_dwidth = 32)
generate
constant CNVMOOii: std_lOGIC_VECTOR(apb_dwIDTH-8-1 downto 0) := ( others => '0');
begin
CNVML1li:
process (paddr,CNVMI1L,CNVMOOI,CNVMloi,CNVMIOI,CNVMoli,CNVMLLI,CNVMl1i)
begin
case (pADDR(7 downto 0)) is
when "00000000" =>
PRDAta <= "00000000000"&CNVMi0i(20 downto 0);
when "00000100" =>
PRDATA <= ( others => '0');
when "00001000" =>
prdata <= ( others => '0');
when "00001100" =>
prdata <= CNVMIOI(APB_dwidth-1 downto 0);
when "00010000" =>
PRDATA <= CNVMOOII&CNVMoli(7 downto 0);
when "00010100" =>
PRDAta <= CNVMOOIi&CNVMlli(7 downto 0);
when "00011000" =>
PRDATA <= CNVMl1i(apb_dwiDTH-1 downto 0);
when others =>
prdaTA <= ( others => '0');
end case;
end process;
end generate CNVMloii;
CNVMioii:
process (PResetn,PCLk)
begin
if ((not (PRESetn)) = '1') then
CNVMi0i <= "000000000000000000000";
elsif (PCLK'event and PCLK = '1') then
if (CNVMILLL = '1') then
if (APB_DWIdth = 8) then
CNVMI0I <= (CNVMLOI(4 downto 0)&CNVMooi&CNVMI1L);
elsif (Apb_dwidth = 16) then
CNVMi0i <= (CNVMooI(4 downto 0)&CNVMi1L);
else
CNVMI0I <= CNVMI1l(20 downto 0);
end if;
elsif (CNVMOI = '1') then
CNVMi0i <= CNVMI0I;
elsif (CNVMI0I(6 downto 0) >= CNVML1L) then
CNVMi0i <= CNVMi0i;
elsif ((CNVMo0i or CNVML0i) = '1') then
if (CNVMlo0 = '1') then
CNVMi0i <= CNVMI0I+sTD_LOGIC_VECTor(TO_UNsigned(CNVMo1l,
21));
else
CNVMi0i <= CNVMi0i;
end if;
end if;
end if;
end process;
CNVMolii:
process (PRESEtn,PCLK)
begin
if ((not (presETN)) = '1') then
CNVMLO0 <= '1';
elsif (PCLK'event and PCLK = '1') then
if (CNVMoo0 = '1') then
CNVMlo0 <= not (CNVMlo0);
else
CNVMLO0 <= CNVMLO0;
end if;
end if;
end process;
CNVMlii <= CNVMli(0) or CNVMLI(1);
CNVMLLII:
process (preseTN,pclk)
begin
if ((not (preSETN)) = '1') then
CNVMoii <= '0';
CNVMiii <= '0';
elsif (Pclk'eveNT and PClk = '1') then
CNVMIII <= CNVMlii;
if (CNVMlii = '1' and CNVMIII = '0') then
CNVMOII <= '1';
elsif (psel = '1' and PENABLE = '1'
and pwrite = '1'
and PADDR = "00010100") then
CNVMoii <= '0';
else
CNVMOII <= CNVMoii;
end if;
end if;
end process;
CNVMILii:
if (APB_dwidth = 32)
generate
CNVMIL0 <= "11";
CNVMoill <= CNVMo1i;
end generate;
CNVMoiii:
if (not (APB_DWidth = 32))
generate
CNVMliii:
if (Apb_dwidth = 16)
generate
CNVMil0 <= "01";
CNVMOILL <= ("0000000000000000"&CNVMo1i);
end generate;
CNVMiiii:
if (not (apb_dwidth = 16))
generate
CNVMil0 <= "00";
CNVMOILl <= ("000000000000000000000000"&CNVMO1I);
end generate;
end generate;
CNVMO0II:
process (presetn,PCLK)
begin
if ((not (Presetn)) = '1') then
CNVML1I <= ( others => '0');
CNVMI1I <= '0';
elsif (PCLK'EVent and pclk = '1') then
if (CNVML0I = '1') then
CNVMI1I <= CNVMl0i;
elsif (((CNVMi1i) and (CNVMOI)) = '1') then
CNVMi1i <= CNVMi1i;
elsif (((CNVMI1I) and (not (CNVMOI))) = '1') then
CNVMl1I <= CNVMlo1(APB_dwidth-1 downto 0);
CNVMI1i <= '0';
end if;
end if;
end process;
CNVMIO1 <= not (CNVMllli);
CNVMo0 <= CNVMLL1 when CNVMIO1 = '1' else
PCLK;
CNVMoiol <= CNVMOL1 when CNVMIO1 = '1' else
CNVMI0I(17 downto 0);
CNVMLIOL <= CNVMil1 when CNVMio1 = '1' else
CNVMOILL(31 downto 0);
CNVMiiol <= CNVMoi1 when CNVMio1 = '1' else
CNVMil0;
CNVMl1 <= CNVMli1 when CNVMIO1 = '1' else
CNVMl0i;
CNVMO0OL <= CNVMii1 when CNVMio1 = '1' else
CNVMOI0;
CNVMioll <= CNVMIOOL when CNVMIO1 = '1' else
CNVMli0;
CNVMl0ol <= CNVMo01 when CNVMio1 = '1' else
CNVMo0i;
CNVMO1OL <= CNVMo11 when CNVMIO1 = '1' else
CNVMii0;
CNVMiol <= CNVMI01 when CNVMiO1 = '1' else
CNVMLl0;
CNVMi0ol <= CNVML01 when CNVMio1 = '1' else
CNVMOL0;
CNVMi0l <= CNVMolol when CNVMio1 = '1' else
CNVMo00;
CNVML1ol <= CNVMl11 when CNVMIo1 = '1' else
CNVML00;
CNVMloll <= CNVMLOOL when CNVMIO1 = '1' else
CNVMi10;
CNVMOLLl <= CNVMllol when CNVMIO1 = '1' else
CNVMoo1;
CNVMLLLL <= CNVMoool when CNVMIO1 = '1' else
CNVMi00;
CNVMI1ol <= CNVMi11 when CNVMio1 = '1' else
CNVMo10;
CNVMooLL <= CNVMIlol when CNVMio1 = '1' else
CNVML10;
CNVMio0 <= CNVMI0I(20 downto 19);
CNVMOl0 <= CNVMi0i(18);
CNVMLILL <= '1' when (CNVMIO0 = "00") or (CNVMio1 = '1') else
'0';
CNVMiill <= '1' when (CNVMIO0 = "01") and (CNVMIO1 = '0') else
'0';
CNVMo0ll <= '1' when (CNVMIO0 = "10") and (CNVMio1 = '0') else
'0';
CNVMl0ll <= '1' when (CNVMIO0 = "11") and (CNVMIO1 = '0') else
'0';
CNVMI0LL <= CNVMl1 and CNVMLILL;
CNVMO1LL <= CNVMo0ol and CNVMLILL;
CNVMl1ll <= CNVMioll and CNVMlill;
CNVMI1LL <= CNVMl0ol and CNVMlill;
CNVMooil <= CNVMO1ol and CNVMlill;
CNVMLOIL <= CNVMiol and CNVMlill;
CNVMIOIL <= CNVMi0oL and CNVMLILL;
CNVMolil <= CNVMI0L and CNVMLILL;
CNVMLLIL <= CNVML1OL and CNVMLILL;
CNVMilil <= CNVMLOLL and CNVMLIll;
CNVMoiil <= CNVMOLLL and CNVMLILL;
CNVMliil <= CNVMllll and CNVMLIll;
CNVMiiil <= CNVMI1ol and CNVMlill;
CNVMO0IL <= CNVMOOLL and CNVMlILL;
CNVMl0il <= CNVMl1 and CNVMiill;
CNVMi0il <= CNVMO0OL and CNVMIILL;
CNVMo1il <= CNVMiolL and CNVMiill;
CNVML1il <= CNVMl0ol and CNVMIILl;
CNVMI1il <= CNVMo1ol and CNVMiill;
CNVMOO0L <= CNVMIol and CNVMiiLL;
CNVMLO0L <= CNVMi0ol and CNVMIILL;
CNVMIO0L <= CNVMI0L and CNVMiill;
CNVMol0l <= CNVML1OL and CNVMiill;
CNVMll0l <= CNVMLOLL and CNVMiill;
CNVMil0l <= CNVMolll and CNVMIILL;
CNVMOI0L <= CNVMLLLL and CNVMiill;
CNVMli0l <= CNVMi1ol and CNVMiiLL;
CNVMii0L <= CNVMooLL and CNVMIILL;
CNVMo00l <= CNVML1 and CNVMo0ll;
CNVML00L <= CNVMO0OL and CNVMo0ll;
CNVMI00L <= CNVMIOLL and CNVMO0ll;
CNVMo10l <= CNVML0OL and CNVMO0Ll;
CNVML10L <= CNVMo1OL and CNVMO0LL;
CNVMI10l <= CNVMIOL and CNVMO0LL;
CNVMoo1l <= CNVMI0OL and CNVMO0LL;
CNVMlo1l <= CNVMI0l and CNVMO0ll;
CNVMIO1L <= CNVML1OL and CNVMO0LL;
CNVMOL1L <= CNVMloll and CNVMo0ll;
CNVMLL1L <= CNVMolll and CNVMo0ll;
CNVMil1l <= CNVMLLLL and CNVMO0LL;
CNVMoi1l <= CNVMI1OL and CNVMO0LL;
CNVMli1l <= CNVMOOll and CNVMO0LL;
CNVMII1L <= CNVML1 and CNVMl0LL;
CNVMo01L <= CNVMO0ol and CNVML0LL;
CNVMl01l <= CNVMIOLL and CNVMl0ll;
CNVMi01l <= CNVMl0ol and CNVML0ll;
CNVMO11l <= CNVMo1ol and CNVML0LL;
CNVMl11L <= CNVMIOL and CNVMl0ll;
CNVMi11l <= CNVMI0OL and CNVMl0ll;
CNVMoooi <= CNVMi0l and CNVML0LL;
CNVMLOOi <= CNVMl1ol and CNVML0LL;
CNVMIooi <= CNVMloll and CNVML0LL;
CNVMOLOI <= CNVMOLLL and CNVMl0ll;
CNVMlloi <= CNVMllll and CNVMl0ll;
CNVMiloi <= CNVMi1ol and CNVMl0LL;
CNVMOIOI <= CNVMOOLL and CNVML0ll;
CNVMoi <= CNVMlioi or CNVMIIOi
or CNVMO0OI
or CNVMl0oi;
CNVML0ii:
process (CNVMiO0,CNVMOOLi,CNVMloLI,CNVMioli,CNVMolLI)
begin
case (CNVMio0) is
when "00" =>
CNVMli <= CNVMooli;
when "01" =>
CNVMLI <= CNVMlOLI;
when "10" =>
CNVMLI <= CNVMioli;
when "11" =>
CNVMli <= CNVMOLLI;
when others =>
CNVMli <= CNVMoOLI;
end case;
end process;
CNVMi0ii:
process (CNVMIO0,CNVMI0OI,CNVMo1oi,CNVMl1oi,CNVMi1OI)
begin
case (CNVMio0) is
when "00" =>
CNVMlo1 <= CNVMI0OI;
when "01" =>
CNVMlo1 <= CNVMO1Oi;
when "10" =>
CNVMlo1 <= CNVMl1oi;
when "11" =>
CNVMLO1 <= CNVMi1oi;
when others =>
CNVMlo1 <= CNVMI0OI;
end case;
end process;
CNVMo1ii: nvm
generic map (MEMORYFILe => "./nvm0.mem")
port map (ADDR => CNVMoiol,
WD => CNVMliol,
datawidth => CNVMiiol,
ren => CNVMi0ll,
readnext => CNVMO1ll,
pagestatus => CNVMl1ll,
wen => CNVMi1ll,
Erasepage => CNVMOOIL,
pROGRAM => CNVMloil,
sparepage => CNVMIOIL,
aUXBLOCK => CNVMolil,
unprotectpage => CNVMllil,
Overwritepage => CNVMliil,
discardpage => CNVMiIIL,
oveRWRITEPROTECT => CNVMO0IL,
pagelossprotect => CNVMILIL,
pipe => '0',
locKREQUEST => CNVMoiil,
CLK => CNVMO0,
RESET => presetn,
RD => CNVMi0oI,
busy => CNVMlioi,
STATUS => CNVMOOLI);
CNVML1II:
if (NUM_INStances > 1)
generate
CNVMi1iI: nVM
generic map (mEMORYFILE => "./nvm1.mem")
port map (ADDR => CNVMOIOL,
wd => CNVMLIOL,
dataWIDTH => CNVMiiol,
ren => CNVML0IL,
reaDNEXT => CNVMi0il,
pagestatus => CNVMo1il,
WEN => CNVMl1il,
ERASEpage => CNVMI1IL,
pROGRAM => CNVMoo0l,
Sparepage => CNVMLO0L,
auxblock => CNVMiO0L,
unprotecTPAGE => CNVMol0l,
overwritepAGE => CNVMoi0l,
discardpaGE => CNVMli0l,
OVERWriteprotect => CNVMii0l,
pagelosSPROTECT => CNVMLL0L,
PIPE => '0',
LOCKrequest => CNVMIL0L,
Clk => CNVMO0,
RESET => preseTN,
RD => CNVMO1OI,
busy => CNVMiioi,
statuS => CNVMloli);
end generate;
CNVMoo0i:
if (not (NUM_INSTANCes > 1))
generate
CNVMO1OI <= "00000000000000000000000000000000";
CNVMiioi <= '0';
CNVMloli <= "00";
end generate;
CNVMlo0i:
if (NUM_INstances > 2)
generate
CNVMio0i: nvm
generic map (memoryfile => "./nvm2.mem")
port map (addr => CNVMOIOL,
wd => CNVMliol,
datawidth => CNVMiiol,
REN => CNVMo00l,
READNEXt => CNVMl00l,
pagestATUS => CNVMi00l,
wen => CNVMo10L,
erasepage => CNVML10l,
PROGRAM => CNVMi10l,
Sparepage => CNVMOO1L,
auxblocK => CNVMLO1l,
UNPROTECTpage => CNVMIO1l,
OVERWRItepage => CNVMIL1L,
DISCardpage => CNVMOI1L,
ovERWRITEPROTECT => CNVMLI1L,
PAGelossprotect => CNVMol1l,
pipe => '0',
Lockrequest => CNVMLL1L,
clk => CNVMO0,
reset => prESETN,
RD => CNVML1OI,
busy => CNVMO0oi,
statuS => CNVMIOLI);
end generate;
CNVMol0i:
if (not (num_inSTANCES > 2))
generate
CNVMl1oi <= "00000000000000000000000000000000";
CNVMo0oi <= '0';
CNVMioli <= "00";
end generate;
CNVMll0i:
if (NUM_INSTAnces > 3)
generate
CNVMIL0I: NVM
generic map (MEMORYFILE => "./nvm3.mem")
port map (ADdr => CNVMoIOL,
WD => CNVMLIol,
DATAWIDTH => CNVMiiol,
ren => CNVMii1l,
READNEXT => CNVMO01L,
pagestatus => CNVML01l,
WEN => CNVMI01l,
ERASEPAGE => CNVMO11L,
progrAM => CNVML11l,
SPAREPAge => CNVMi11l,
AUXBLOCk => CNVMoooi,
UNPROTectpage => CNVMLOOI,
OVERWRITEPAGE => CNVMLLOI,
DISCARDPAGe => CNVMiloi,
overwriteprotect => CNVMoioi,
pagelossPROTECT => CNVMiooi,
pipe => '0',
lockrequest => CNVMOLoi,
clk => CNVMO0,
reset => preSETN,
RD => CNVMi1oi,
BUSY => CNVMl0oi,
STATUS => CNVMOLLI);
end generate;
CNVMOI0I:
if (not (Num_instances > 3))
generate
CNVMi1oi <= "00000000000000000000000000000000";
CNVMl0oi <= '0';
CNVMOLLI <= "00";
end generate;
CNVMli0i:
if (INIT_ENAbled = 1)
generate
CNVMII0I: CNVMl
generic map (INIT_AWIDTH => init_awidth,
INIT_base_address_rsT => Init_base_address_RST,
iniT_BASE_ADDRESs_0 => INIT_BASE_ADDRess_0,
INIT_base_address_1 => Init_base_address_1,
init_base_aDDRESS_2 => init_BASE_ADDRESS_2,
INIT_base_address_3 => INIT_Base_address_3,
init_worD_COUNT_RST => init_worD_COUNT_RST,
INIT_WORD_COunt_0 => init_word_COUNT_0,
init_woRD_COUNT_1 => init_word_count_1,
INit_word_count_2 => inIT_WORD_COUNT_2,
INIT_WORD_COUNt_3 => INit_word_count_3,
INIT_spare_page_rst => iniT_SPARE_PAGE_rst,
init_spARE_PAGE_0 => INIT_Spare_page_0,
init_sPARE_PAGE_1 => INit_spare_page_1,
INIT_spare_page_2 => init_spARE_PAGE_2,
init_spare_paGE_3 => INIT_SPARE_PAGe_3)
port map (CNVMi => PCLK,
CNVMol => presetn,
CNVMll => '1',
INIT_BASE0 => INIT_Base0,
INIT_base1 => iNIT_BASE1,
init_basE2 => INIT_base2,
INIT_BASE3 => init_base3,
init_done => CNVMllli,
INIt_data => CNVMILLI,
init_adDR => CNVMoili,
CNVMil => CNVMLILI,
CNVMOI => CNVMoi,
CNVMli => CNVMli,
CNVMII => CNVMI0OI,
CNVMo0 => CNVMLL1,
CNVMl0 => CNVMil1,
CNVMi0 => CNVMol1,
CNVMO1 => CNVMoi1,
CNVMl1 => CNVMli1,
CNVMi1 => CNVMii1,
CNVMOOL => CNVMO01,
CNVMlol => CNVMl01,
CNVMiol => CNVMi01,
CNVMOLL => CNVMo11,
CNVMLLL => CNVML11,
CNVMill => CNVMi11,
CNVMoil => CNVMILOL,
CNVMlil => CNVMlooL,
CNVMiIL => CNVMIOOL,
CNVMO0l => CNVMoool,
CNVML0L => CNVMllol,
CNVMI0l => CNVMOLOL);
end generate;
CNVMo00I:
if (INIT_enabled = 0)
generate
CNVMLLli <= '1';
CNVMillI <= "000000000";
CNVMoili <= ( others => '0');
CNVMLILI <= '0';
CNVMll1 <= '0';
CNVMIL1 <= X"00000000";
CNVMol1 <= "000000000000000000";
CNVMoi1 <= "00";
CNVMLI1 <= '0';
CNVMii1 <= '0';
CNVMO01 <= '0';
CNVMl01 <= '0';
CNVMi01 <= '0';
CNVMO11 <= '0';
CNVMl11 <= '0';
CNVMI11 <= '0';
CNVMilOL <= '0';
CNVMlool <= '0';
CNVMiool <= '0';
CNVMoool <= '0';
CNVMLLOL <= '0';
CNVMOLOL <= '0';
end generate;
end CNVMO;
