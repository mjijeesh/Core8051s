library ieee;
use Ieee.STD_logic_1164.all;
entity CORE8051S is
generic (USE_OCI: INTEGER := 0;
USE_UJTAG: integeR := 1;
INCL_TRACE: integer := 0;
TRIG_NUM: integer := 0;
EN_FF_OPTS: INTeger := 0;
APB_DWIDTH: Integer := 32;
INCL_DPTR1: Integer := 0;
INCL_MUL_DIV_DA: integer := 1;
VARIABLE_STRETCH: inteGER := 1;
STRETCH_VAL: INTEGER := 1;
VARIABLE_WAIT: iNTEGER := 1;
WAIT_VAL: integER := 0;
FAMILY: INTEGER range 0 to 21 := 0); port (CLK: in std_logic;
NSYSRESET: in std_LOGIC;
PRESETN: out stD_LOGIC;
WDOGRES: in Std_logic;
WDOGRESN: out STD_Logic;
INT0: in std_logic;
INT1: in STD_logic;
MOVX: out stD_LOGIC;
MEMPSACKI: in STD_Logic;
MEMACKI: in STD_LOGic;
MEMDATAI: in std_logIC_VECTOr(7 downto 0);
MEMDATAO: out STD_LOGIc_vector(7 downto 0);
MEMADDR: out STD_Logic_vector(15 downto 0);
MEMPSRD: out std_LOGIC;
MEMWR: out std_LOGIC;
MEMRD: out std_lOGIC;
PWRITE: out std_logic;
PENABLE: out Std_logic;
PSEL: out stD_LOGIC;
PADDR: out sTD_LOGIC_vector(11 downto 0);
PWDATA: out std_logiC_VECTOR(APB_DWIDTH-1 downto 0);
PRDATA: in Std_logic_vECTOR(APB_DWIDTH-1 downto 0);
PREADY: in STD_logic;
PSLVERR: in STd_logic;
TCK: in std_LOGIC;
TMS: in sTD_LOGIC;
TDI: in Std_logic;
TDO: out STD_LOGic;
TRSTN: in STD_Logic;
BREAKIN: in STD_logic;
BREAKOUT: out sTD_LOGIC;
MEMBANK: in STD_logic_vectOR(3 downto 0);
DBGMEMPSWR: out stD_LOGIC;
TRIGOUT: out STD_LOGIc;
AUXOUT: out STD_LOGIc);
end CORE8051S;

library Ieee;
use ieEE.std_lOGIC_1164.all;
architecture CORE8051S_BFM_i1ol of CORE8051S is

component BFMAPB
port (PCLK: in STD_Logic;
PRESETN: in STD_logic;
PREADY: in std_logiC;
PSLVERR: in STD_LOGIc;
PRDATA: in STD_logic_vectOR(31 downto 0);
IRQ: in STD_LOGIc;
FIQ: in STD_LOGic;
PSEL: out STD_logic;
PENABLE: out STD_logic;
PWRITE: out STD_logic;
PADDR: out stD_LOGIC_vector(31 downto 0);
PWDATA: out STD_logic_vectOR(31 downto 0));
end component;

signal CORE8051S_bfm_oOLL: STD_logic_vectoR(31 downto 0);

begin
PADDR <= CORE8051S_bfm_OOLL(11 downto 0);
PRESETN <= NSYSRESET;
CORE8051S_bFM_LOLL: BFMapb
port map (PCLK => CLK,
PRESETN => NSYSRESET,
PSEL => PSEL,
PENABLE => PENABLE,
PREADY => PREADY,
PSLVERR => PSLVERR,
PADDR => CORE8051S_bfm_oolL,
PWRITE => PWRITE,
PWDATA => PWDATA,
PRDATA => PRDATA,
IRQ => INT0,
FIQ => INT1);
end CORE8051S_Bfm_i1ol;
