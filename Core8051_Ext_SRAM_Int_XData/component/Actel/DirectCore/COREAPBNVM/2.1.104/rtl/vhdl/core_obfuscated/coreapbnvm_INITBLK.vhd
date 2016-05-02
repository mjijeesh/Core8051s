library ieee;
use Ieee.STD_logic_1164.all;
entity CNVML is
generic (inIT_AWIDTH: INTEGER := 11;
Init_base_address_RST: INteger := 0;
init_basE_ADDRESS_0: integer := 0;
INIT_base_address_1: INTEGER := 0;
INIT_BASE_address_2: intEGER := 0;
init_base_adDRESS_3: INTEGER := 0;
init_WORD_COUNT_RSt: integer := 0;
init_word_couNT_0: INTEGER := 0;
init_word_counT_1: INTEGER := 0;
INIT_WOrd_count_2: integer := 0;
init_word_COUNT_3: INTEGER := 0;
INIT_SPARE_page_rst: integer := 0;
Init_spare_page_0: integer := 0;
init_spare_page_1: integer := 0;
init_SPARE_PAGE_2: INTEGER := 0;
INIT_SPARE_Page_3: INTeger := 0); port (CNVMi: in std_logic;
CNVMOL: in Std_logic;
CNVMLl: in std_LOGIC;
INit_base0: in STD_LOGIC;
init_base1: in STD_logic;
iniT_BASE2: in std_logic;
INIT_BASE3: in std_logic;
init_done: out STD_LOGIC;
Init_data: out std_logiC_VECTOR(8 downto 0);
init_addr: out STD_LOGIC_vector(Init_awidth-1 downto 0);
CNVMil: out std_LOGIC;
CNVMoi: in Std_logic;
CNVMli: in STD_LOGIC_Vector(1 downto 0);
CNVMIi: in stD_LOGIC_VECTOr(31 downto 0);
CNVMO0: out STD_LOGIC;
CNVMl0: out stD_LOGIC_VECTOR(31 downto 0);
CNVMi0: out STD_logic_vector(17 downto 0);
CNVMO1: out std_logic_veCTOR(1 downto 0);
CNVMl1: out Std_logic;
CNVMi1: out STD_LOGIC;
CNVMool: out Std_logic;
CNVMlol: out STD_LOGIC;
CNVMioL: out std_logic;
CNVMoll: out STD_LOGIC;
CNVMlLL: out STd_logic;
CNVMILL: out std_logIC;
CNVMoiL: out Std_logic;
CNVMLil: out STD_LOGIC;
CNVMiil: out std_LOGIC;
CNVMO0L: out Std_logic;
CNVMl0l: out STD_LOGIC;
CNVMi0l: out stD_LOGIC);
end CNVML;

architecture CNVMo of CNVML is

component CNVML00i is
generic (init_awidth: inTEGER := 11;
init_BASE_ADDRESS_0: Integer := 0;
INIT_BASE_address_1: integer := 0;
INit_base_address_2: inTEGER := 0;
init_base_addreSS_3: INTEGER := 0;
init_word_count_0: integer := 0;
INIt_word_count_1: integer := 0;
INIT_Word_count_2: integer := 0;
inIT_WORD_COUNT_3: INTEGER := 0;
init_spare_page_0: integer := 0;
INIT_spare_page_1: iNTEGER := 0;
init_spare_paGE_2: inTEGER := 0;
INIT_SPAre_page_3: INTEGEr := 0);
port (CLK: in std_logic;
CNVMi00i: in sTD_LOGIC;
NRESEt: in std_logIC;
CNVMo10i: in std_logic_vecTOR(((9*5)-1) downto 0);
CNVMl10i: in STD_LOGIC_VEctor(5-1 downto 0);
CNVMi10i: in STd_logic_vector(17 downto 0);
CNVMoo1i: in std_logic;
CNVMlo1i: in std_lOGIC_VECTOR(31 downto 0);
CNVMio1i: in STD_logic;
CNVMOL1I: in std_loGIC;
CNVMLL1I: in std_logic;
CNVMIL1i: in std_logiC;
CNVMoi1i: in std_LOGIC;
CNVMli1i: in STD_LOGIC;
CNVMii1I: in STD_LOGic;
CNVMo01I: in std_loGIC;
CNVMl01i: in std_logic;
CNVMi01I: in STD_Logic;
CNVMO11I: in STd_logic;
CNVML11I: in STD_LOGIc;
CNVMi11I: in STD_logic_vector(1 downto 0);
CNVMooO0: in STD_LOGIC;
CNVMLoo0: in STd_logic;
CNVMioo0: in STD_logic;
CNVMOLO0: in sTD_LOGIC;
CNVMoi: in STD_logic;
CNVMii: in std_LOGIC_VECTOR(31 downto 0);
CNVMli: in std_loGIC_VECTOR(1 downto 0);
CNVMI0: out STd_logic_vector(17 downto 0);
CNVMllo0: out sTD_LOGIC;
CNVML0: out std_logic_VECTOR(31 downto 0);
CNVMIll: out std_logic;
CNVMoll: out std_logic;
CNVMo0l: out Std_logic;
CNVMoil: out std_logic;
CNVMiil: out STD_Logic;
CNVMLIL: out STD_LOGIC;
CNVMioL: out std_logic;
CNVMILo0: out STD_Logic;
CNVMi1: out std_logic;
CNVML0L: out std_logiC;
CNVMlol: out STD_logic;
CNVMLLL: out std_LOGIC;
CNVMO1: out STD_LOGic_vector(1 downto 0);
CNVMool: out STD_LOGIC;
CNVMoio0: out stD_LOGIC;
CNVMLIO0: out std_logic_vecTOR(init_awidth-1 downto 0);
CNVMIIO0: out stD_LOGIC_VECTOR(8 downto 0);
CNVMo0o0: out std_logic;
CNVMl0o0: out std_logic;
INIT_DOne: out STD_LOgic;
CNVMI0O0: out std_logic_vecTOR(31 downto 0);
CNVMO1O0: out STD_LOGIC;
CNVML1O0: out Std_logic_vector(1 downto 0);
CNVMO0: out std_lOGIC;
iNIT_BASE0: in std_logic;
INit_base1: in std_LOGIC;
init_base2: in STD_LOGIC;
iniT_BASE3: in STD_logic);
end component;

signal CNVMllli: std_logic;

signal CNVMoi1il: STD_logic_vector(8 downto 0);

signal CNVMli1il: STD_LOGIC_VECTor(iNIT_AWIDTH-1 downto 0);

signal CNVMII1IL: std_logic;

signal CNVMo01il: std_logic;

signal CNVML01IL: std_logic_vector(31 downto 0);

signal CNVMi01IL: STD_LOGIc_vector(17 downto 0);

signal CNVMO11IL: STd_logic_vector(1 downto 0);

signal CNVMl11iL: std_logIC;

signal CNVMI11IL: STD_LOGIC;

signal CNVMooo0l: Std_logic;

signal CNVMloo0l: STD_Logic;

signal CNVMioo0l: STD_Logic;

signal CNVMOLO0l: STD_LOGIC;

signal CNVMLLO0L: std_logic;

signal CNVMILO0L: std_logic;

signal CNVMoio0L: STD_logic;

signal CNVMLIO0l: stD_LOGIC;

signal CNVMiio0l: STD_LOGic;

signal CNVMo0o0l: STD_LOGIC;

signal CNVMl0o0l: STD_LOGIC;

signal CNVMi0O0L: Std_logic;

begin
init_done <= CNVMlLLI;
INIt_data <= CNVMoi1IL;
INIT_addr <= CNVMli1IL;
CNVMil <= CNVMII1IL;
CNVMo0 <= CNVMo01il;
CNVMl0 <= CNVML01IL;
CNVMi0 <= CNVMI01il;
CNVMo1 <= CNVMo11il;
CNVMl1 <= CNVML11il;
CNVMi1 <= CNVMI11IL;
CNVMOOL <= CNVMOOO0L;
CNVMlol <= CNVMloo0l;
CNVMiol <= CNVMioo0l;
CNVMOLL <= CNVMOLO0L;
CNVMlll <= CNVMlLO0L;
CNVMIll <= CNVMilo0l;
CNVMOIL <= CNVMOIO0L;
CNVMlil <= CNVMlio0l;
CNVMiil <= CNVMiio0l;
CNVMO0L <= CNVMo0o0l;
CNVML0l <= CNVML0O0L;
CNVMI0L <= CNVMi0o0l;
CNVMo1o0l: CNVMl00i
generic map (init_AWIDTH => init_awIDTH,
INIT_BASE_address_0 => init_base_ADDRESS_0,
inIT_BASE_ADDRESs_1 => init_base_addresS_1,
init_base_addrESS_2 => INIT_BAse_address_2,
INIT_BAse_address_3 => init_base_addrESS_3,
INit_word_count_0 => init_word_count_0,
Init_word_count_1 => init_word_counT_1,
INIT_Word_count_2 => Init_word_count_2,
INIT_WORD_count_3 => INIT_WOrd_count_3,
init_spaRE_PAGE_0 => init_spare_PAGE_0,
INIT_spare_page_1 => INIT_SPare_page_1,
inIT_SPARE_PAGE_2 => INIT_SPARE_PAge_2,
init_spare_paGE_3 => INIT_spare_page_3)
port map (clk => CNVMi,
CNVMI00i => CNVMI,
nreSET => CNVMol,
CNVMO10I => "000000000000000000000000000000000000000000000",
CNVMl10i => "00000",
CNVMi10i => "000000000000000000",
CNVMoo1i => '0',
CNVMlO1I => "00000000000000000000000000000000",
CNVMio1I => '0',
CNVMol1i => '0',
CNVMLL1I => '0',
CNVMil1i => '0',
CNVMoi1I => '0',
CNVMli1i => '0',
CNVMii1i => '0',
CNVMO01i => '0',
CNVMl01i => '0',
CNVMi01i => '0',
CNVMo11i => '0',
CNVMl11i => '0',
CNVMI11i => "00",
CNVMooO0 => '0',
CNVMloo0 => '0',
CNVMIOO0 => '0',
CNVMOLO0 => CNVMll,
CNVMOI => CNVMOI,
CNVMii => CNVMii,
CNVMLI => CNVMLI,
CNVMI0 => CNVMI01Il,
CNVMLLO0 => CNVMI0O0l,
CNVMl0 => CNVMl01il,
CNVMill => CNVMilo0l,
CNVMOLL => CNVMOLO0l,
CNVMO0L => CNVMo0o0l,
CNVMOIL => CNVMoio0l,
CNVMIIL => CNVMiio0l,
CNVMlIL => CNVMLIO0L,
CNVMiol => CNVMioo0l,
CNVMilo0 => CNVML11IL,
CNVMi1 => CNVMi11il,
CNVMl0l => CNVML0O0L,
CNVMlol => CNVMloo0l,
CNVMlll => CNVMLlo0l,
CNVMo1 => CNVMO11IL,
CNVMOOL => CNVMooo0l,
CNVMlio0 => CNVMli1il,
CNVMIio0 => CNVMOI1il,
CNVMO0o0 => CNVMii1il,
INIT_done => CNVMLLLI,
CNVMO0 => CNVMo01il,
INIT_base0 => init_base0,
init_base1 => init_BASE1,
init_base2 => init_base2,
INit_base3 => init_base3);
end CNVMO;
