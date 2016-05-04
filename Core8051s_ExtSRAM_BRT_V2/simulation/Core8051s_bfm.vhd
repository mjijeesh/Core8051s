library iEEE;
use ieee.sTD_Logic_1164.all;
entity CORE8051S is
generic (DEBUG: INTEGer := 0;
INCL_TRACE: inteGER := 0;
TRIG_NUM: integer := 0;
EN_FF_OPTS: integer := 0;
APB_DWIDTH: INteger := 32;
INCL_DPTR1: integER := 0;
INCL_MUL_DIV_DA: INTEGEr := 1;
VARIABLE_STRETCH: INTEGer := 1;
STRETCH_VAL: intEGER := 1;
VARIABLE_WAIT: INTeger := 1;
WAIT_VAL: INteger := 0;
INTRAM_IMPLEMENTATION: inteGER := 0;
FAMILY: INTEGer range 0 to 21 := 0); port (CLK: in Std_logic;
NSYSRESET: in std_lOGIC;
PRESETN: out Std_logic;
WDOGRES: in std_LOGIC;
WDOGRESN: out std_logIC;
INT0: in stD_LOGIC;
INT1: in sTD_LOGIC;
MOVX: out Std_logic;
MEMPSACKI: in Std_logic;
MEMACKI: in STD_LOgic;
MEMDATAI: in std_lOGIC_VECtor(7 downto 0);
MEMDATAO: out STD_LOgic_vector(7 downto 0);
MEMADDR: out std_logIC_VECTOr(15 downto 0);
MEMPSRD: out std_loGIC;
MEMWR: out std_logic;
MEMRD: out Std_logic;
PWRITE: out std_lOGIC;
PENABLE: out std_LOGIC;
PSEL: out STD_Logic;
PADDR: out std_LOGIC_vector(11 downto 0);
PWDATA: out STD_LOgic_vector(APB_DWIDTH-1 downto 0);
PRDATA: in stD_LOGIC_vector(APB_DWIDTH-1 downto 0);
PREADY: in STd_logic;
PSLVERR: in STD_LOGic;
TCK: in STD_logic;
TMS: in STD_LOGIc;
TDI: in STD_LOgic;
TDO: out std_logic;
TRSTN: in std_logic;
BREAKIN: in Std_logic;
BREAKOUT: out std_logIC;
MEMBANK: in sTD_LOgic_vecTOR(3 downto 0);
DBGMEMPSWR: out STD_logic;
TRIGOUT: out STD_logic;
AUXOUT: out STd_logic);
end CORE8051S;

library ieEE;
use ieee.STD_logic_1164.all;
architecture CORE8051S_bfm_i1oL of CORE8051S is

component BFMAPB
port (PCLK: in std_loGIC;
PRESETN: in std_LOGIc;
PREADY: in sTD_LOgic;
PSLVERR: in stD_LOGic;
PRDATA: in Std_lOGIC_vector(31 downto 0);
IRQ: in STD_logic;
FIQ: in std_LOGIC;
PSEL: out std_lOGIC;
PENABLE: out STD_logic;
PWRITE: out STD_logic;
PADDR: out Std_logiC_VECtor(31 downto 0);
PWDATA: out STD_logic_vECTOR(31 downto 0));
end component;

signal CORE8051S_bFM_OOll: Std_logiC_VECtor(31 downto 0);

begin
PADDR <= CORE8051S_bfM_OOLl(11 downto 0);
PRESETN <= '0' when ((NSYSRESET = '0') or (WDOGRES = '1')) else
'1';
WDOGRESN <= '0' when (NSYSRESET = '0') else
'1';
MOVX <= '0';
MEMDATAO <= ( others => '0');
MEMADDR <= ( others => '0');
MEMPSRD <= '0';
MEMWR <= '0';
MEMRD <= '0';
TDO <= '0';
BREAKOUT <= '0';
DBGMEMPSWR <= '0';
TRIGOUT <= '0';
AUXOUT <= '0';
CORE8051S_bfm_LOLl: BFMAPb
port map (PCLK => CLK,
PRESETN => NSYSRESET,
PSEL => PSEL,
PENABLE => PENABLE,
PREADY => PREADY,
PSLVERR => PSLVERR,
PADDR => CORE8051S_bfm_OOLL,
PWRITE => PWRITE,
PWDATA => PWDATA,
PRDATA => PRDATA,
IRQ => INT0,
FIQ => INT1);
end CORE8051S_bfm_I1Ol;
