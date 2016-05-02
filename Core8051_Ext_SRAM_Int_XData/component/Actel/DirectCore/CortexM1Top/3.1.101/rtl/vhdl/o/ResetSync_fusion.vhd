-- Actel Corporation Proprietary and Confidential
-- Copyright 2010 Actel Corporation.  All rights reserved.
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
-- SVN Revision Information:
-- SVN $Revision: 13266 $
library IEEe;
use ieee.STD_logic_1164.all;
use IEEE.numERIC_Std.all;
library fusion;
entity ResetSYNC is
generic (DEBUG_INCL: inteGER := 0;
USE_UJTAG: inTEGER := 0;
DRIVE_RTCK: inTEGER := 0;
UJ_RST_ON_GLOBAL: integer := 1;
UJ_CLK_ON_GLOBAL: inteGER := 1); port (HCLK: in std_loGIC;
NSYSRESET: in std_loGIC;
PORESETN: in Std_logIC;
SYSRESETREQ: in Std_logiC;
DBGRESETN: out std_lOGIC;
HRESETn: out std_lOGIC;
WDOGRES: in STD_logic;
WDOGRESN: out std_LOGIC;
RV_VTref: out STD_logic;
RV_NTRST: in stD_LOGic;
RV_TDI: in stD_LOGIc;
RV_TMS: in std_loGIC;
RV_TCK: in std_LOGIC;
RV_RTCK: out stD_LOGic;
RV_TDO: out std_lOGIC;
RV_NSRST_IN: in stD_LOGic;
	RV_DBGRQ: in Std_logiC;
RV_DBGACK: out STD_logic;
UJTAG_TCK: in STD_logic;
UJTAG_TRSTB: in std_loGIC;
UJTAG_TMS: in std_LOGIc;
UJTAG_TDI: in std_logic;
UJTAG_TDO: out std_LOGIC;
TDO: in std_logic;
NTRST: out std_lOGIC;
SWCLKTCK: out STD_Logic;
SWDITMS: out std_logic;
TDI: out std_logic);
end ResetSync;

architecture CortexM1Top_I of REsetSync is

signal COrtexM1Top_LOL: std_logIC;

signal CORTEXM1Top_iol: STD_LOGic;

signal SYSRESETN: STD_logic;

signal CorteXM1TOP_oll: std_LOGIC;

signal CORtexM1Top_llL: STD_LOGic;

signal CortexM1TOP_ILl: std_logic;

signal CORTEXM1Top_oil: sTD_LOGIC;

signal CortexM1ToP_LIL: Std_logic;

signal CorteXM1TOP_Iil: std_LOGIC;

signal COrtexM1Top_o0L: STd_logic;

signal CorteXM1TOP_l0l: std_LOGIC;

signal CORTexM1Top_i0l: sTD_LOGIc;

signal CORTEXM1Top_o1l: stD_LOGIC;

signal COrtexM1Top_l1L: STd_logic;

signal CORtexM1Top_i1L: STD_Logic;

signal CortexM1TOP_OOi: std_logic;

signal CORTEXM1Top_loi: STD_LOGIC;

signal CortexM1TOP_IOI: STD_logic_vecTOR(7 downto 0);

signal URSTB: sTD_LOGIc;

signal UDRUPD: std_logiC;

signal UDRCK: Std_logic;

signal UDRCAP: STd_logic;

signal UDRSH: std_LOGIC;

signal UTDI: STD_LOGic;

signal UTDO: STD_logic;

signal CORTEXM1Top_oli: sTD_LOGIc;

signal CorTEXM1TOP_lli: std_logiC;

signal CortexM1TOP_ILI: std_logic;

signal CortexM1ToP_OII: std_logic;

signal CORTEXM1Top_lii: std_lOGIC;

signal CortEXM1TOP_iii: std_loGIC;

signal CortEXM1TOP_o0i: std_LOGIC_VEctor(3 downto 0);

signal CORTexM1Top_l0I: Std_loGIC_vectOR(3 downto 0);

signal CortexM1TOP_i0i: std_LOGIC;

signal CortexM1TOP_O1i: STD_logic;

signal CortexM1TOP_l1i: std_loGIC;

component UJ_JTag
generic (CORTEXM1Top_i1I: STd_logic_VECTor(7 downto 0));
port (CORTEXM1Top_IOI: in stD_logic_vECTOR(7 downto 0);
URSTB: in std_logIC;
UDRUPD: in stD_LOGic;
UDRCK: in Std_logIC;
UDRCAP: in std_loGIC;
UDRSH: in sTD_Logic;
UTDI: in std_LOGic;
UTDO: out STD_logic;
CORTExM1Top_OLI: out std_LOGIC;
CorTEXM1Top_oo0: out std_lOGIC;
CortexM1TOp_lo0: out STD_logic;
CorTEXM1Top_io0: out STD_logic;
CortexM1TOP_ol0: out STD_logic;
CortexM1TOP_ll0: in std_LOGIC;
COrtexM1TOP_IL0: out STD_logic_VECTOr(3 downto 0);
CortEXM1Top_oI0: in STD_Logic_veCTOR(3 downto 0));
end component;

component UJTAG
port (TCK: in STD_logic;
TDI: in std_loGIC;
TMS: in STD_logic;
TDO: out STD_logic;
TRSTB: in std_lOGIC;
UIREG0: out STd_logic;
UIREG1: out Std_logIC;
UIREG2: out stD_LOgic;
UIREG3: out STD_logic;
UIREG4: out std_loGIC;
UIREG5: out sTD_Logic;
UIREG6: out STD_logic;
UIREG7: out Std_logiC;
URSTB: out std_loGIC;
UDRUPD: out stD_LOGic;
UDRCK: out sTD_LOGic;
UDRCAP: out Std_logIC;
UDRSH: out stD_LOgic;
UTDI: out std_logIC;
UTDO: in std_LOGIc);
end component;

component CLKINT
port (A: in STD_logic;
Y: out std_LOgic);
end component;

constant CORTEXM1Top_i1I: std_logIC_Vector(7 downto 0) := X"33";

begin
CorteXM1Top_li0:
if ((DEBUG_INCL = 1) and (USE_UJTAG = 1)
and (UJ_RST_ON_GLOBAL = 1))
generate
begin
CorteXM1Top_ii0: CLKINT
port map (A => URSTB,
Y => COrtexM1TOP_O1i);
end generate CortEXM1Top_li0;
CortexM1TOP_o00:
if ((DEBUG_INCL = 1) and (USE_UJTAG = 1)
and (UJ_RST_ON_GLOBAL = 0))
generate
begin
CortexM1TOP_o1i <= URSTB;
end generate CORTexM1Top_O00;
CORtexM1ToP_L00:
if ((DEBUG_INCL = 1) and (USE_UJTAG = 1)
and (UJ_CLK_ON_GLOBAL = 1))
generate
begin
CortexM1TOP_ii0: CLKINT
port map (A => UDRCK,
Y => CORTExM1Top_L1I);
end generate CorteXM1Top_l00;
CortexM1TOP_i00:
if ((DEBUG_INCL = 1) and (USE_UJTAG = 1)
and (UJ_CLK_ON_GLOBAL = 0))
generate
begin
COrtexM1TOP_L1i <= UDRCK;
end generate CortexM1Top_i00;
Dbg_uj:
if ((DEBUG_INCL = 1) and (USE_UJTAG = 1))
generate
begin
CortexM1TOP_O1l <= '0';
COrtexM1TOP_l1l <= '0';
RV_VTreF <= '1';
RV_DBGACK <= '0';
RV_RTCK <= '0';
RV_TDO <= '1';
CortexM1TOp_i0i <= not (COrtexM1TOP_O0i(0));
SWCLKTCK <= CortEXM1Top_oii;
SWDITMS <= CORtexM1TOP_LII;
TDI <= COrtexM1TOP_IIi;
nTRST <= CortexM1TOP_Ili;
CorteXM1TOp_l0i <= CortexM1TOP_O0i;
CortexM1TOP_lli <= UTDO and CortexM1TOP_oli;
UJ: UJTAG
port map (TCK => UJTAG_TCK,
TDI => UJTAG_TDI,
TMS => UJTAG_TMS,
TDO => UJTAG_TDO,
TRSTB => UJTAG_TRSTB,
UIREG0 => CORtexM1ToP_IOI(0),
UIREG1 => CortexM1TOP_ioi(1),
UIREG2 => CORtexM1ToP_IOI(2),
UIREG3 => CORtexM1ToP_IOI(3),
UIREG4 => CORTExM1Top_IOI(4),
UIREG5 => CortexM1TOP_ioi(5),
UIREG6 => CortEXM1Top_ioi(6),
UIREG7 => CortexM1TOP_ioi(7),
URSTB => URSTB,
UDRUPD => UDRUPD,
UDRCK => UDRCK,
UDRCAP => UDRCAP,
UDRSH => UDRSH,
UTDI => UTDI,
UTDO => CORtexM1ToP_LLI);
Ujjtag: Uj_jtag
generic map (CortexM1TOP_I1i => CortexM1TOP_i1i)
port map (COrtexM1TOP_IOi => CortexM1TOP_ioi,
URSTB => CORTexM1Top_O1I,
UDRUPD => UDRUPD,
UDRCK => CORTEXM1Top_L1I,
UDRCAP => UDRCAP,
UDRSH => UDRSH,
UTDI => UTDI,
UTDO => UTDO,
CoRTEXM1Top_oLI => CortexM1TOp_oli,
COrtexM1TOP_OO0 => CortexM1TOP_ili,
CortexM1TOP_lo0 => CorteXM1Top_oii,
CORTEXM1Top_iO0 => CortexM1TOP_lii,
CORTEXM1Top_OL0 => CortexM1TOP_iii,
COrtexM1TOP_Ll0 => TDO,
CorteXM1Top_il0 => CoRTEXM1Top_o0I,
CORTEXM1Top_OI0 => CORTEXM1Top_l0I);
end generate dbg_uj;
CortEXM1Top_o10:
if ((DEBUG_INCL = 1) and (USE_UJTAG = 0))
generate
begin
RV_VTref <= '1';
RV_DBGACK <= '0';
RV_RTCK <= CoRTEXM1Top_l1L when DRIVE_RTCK = 1 else
'0';
RV_TDO <= TDO;
CORTEXM1Top_i0I <= RV_nSRST_IN;
SWCLKTCK <= RV_TCK;
SWDITMS <= RV_TMS;
TDI <= RV_TDI;
NTRST <= RV_nTRST;
UJTAG_TDO <= '0';
CortexM1TOP_ioi <= "00000000";
URSTB <= '0';
UDRUPD <= '0';
UDRCK <= '0';
UDRCAP <= '0';
UDRSH <= '0';
UTDI <= '0';
UTDO <= '0';
CortexM1TOP_oli <= '0';
CORtexM1ToP_ILI <= '0';
CORtexM1TOP_OII <= '0';
CORTexM1Top_LII <= '0';
COrtexM1TOP_III <= '0';
CORTExM1Top_o0I <= "0000";
CortexM1TOP_l0i <= "0000";
CORTEXM1Top_LLI <= '0';
CorteXM1TOp_o1i <= '0';
CORTexM1Top_L1I <= '0';
process (HCLK,RV_nTRST)
begin
if (RV_NTRST = '0') then
CortexM1TOP_o1l <= '0';
CortEXM1Top_l1L <= '0';
elsif (HCLK'event and HCLK = '1') then
CortexM1TOP_O1l <= RV_TCK;
COrtexM1TOP_L1l <= CortexM1TOp_o1l;
end if;
end process;
end generate CorteXM1Top_o10;
CorteXM1Top_l10:
if (DEBUG_INCL = 0)
generate
begin
CortexM1TOP_o1l <= '0';
CortexM1TOP_l1l <= '0';
RV_VTref <= '1';
RV_DBGACK <= '0';
RV_RTCK <= '0';
RV_TDO <= '1';
CorTEXM1Top_i0I <= '1';
SWCLKTCK <= '0';
SWDITMS <= '0';
TDI <= '0';
nTRST <= '1';
UJTAG_TDO <= '0';
CoRTEXM1Top_IOI <= "00000000";
URSTB <= '0';
UDRUPD <= '0';
UDRCK <= '0';
UDRCAP <= '0';
UDRSH <= '0';
UTDI <= '0';
UTDO <= '0';
CORtexM1ToP_OLI <= '0';
CORtexM1TOP_ILI <= '0';
CorteXM1TOp_oii <= '0';
CortEXM1Top_lii <= '0';
COrtexM1TOP_Iii <= '0';
CORTEXM1Top_O0I <= "0000";
CortexM1TOp_l0i <= "0000";
CORTExM1Top_LLI <= '0';
CortexM1TOP_o1i <= '0';
CortEXM1Top_l1i <= '0';
end generate CortEXM1Top_l10;
CorTEXM1Top_i1L <= CortexM1TOP_i0i and NSYSRESET
and PORESETN;
process (HCLK,CortexM1TOP_i1l)
begin
if (CORtexM1ToP_I1L = '0') then
COrtexM1TOP_Iol <= '0';
SYSRESETn <= '0';
elsif (HCLK'EVent and HCLK = '1') then
CorteXM1Top_ioL <= '1';
SYSRESETn <= CORtexM1TOP_IOl;
end if;
end process;
process (HCLK,SYSRESETn)
begin
if (SYSRESETN = '0') then
CORTexM1Top_LOL <= '0';
elsif (HCLK'event and HCLK = '1') then
CorteXM1Top_lol <= SYSRESETREQ;
end if;
end process;
CortexM1TOp_ooi <= CORtexM1ToP_I0I and NSYSRESET
and PORESETN
and not (WDOGRES)
and not (CortexM1TOP_lol);
process (HCLK,CortEXM1Top_ooi)
begin
if (CORTexM1Top_OOI = '0') then
CORTExM1Top_OLL <= '0';
CorTEXM1Top_llL <= '0';
CortexM1TOP_ill <= '0';
CorteXM1Top_oil <= '0';
HRESETn <= '0';
elsif (HCLK'EVEnt and HCLK = '1') then
CorTEXM1Top_olL <= '1';
CoRTEXM1Top_llL <= CORtexM1ToP_OLL;
COrtexM1TOP_ILl <= CorTEXM1Top_lLL;
CORTExM1Top_OIL <= CORTexM1Top_ILL;
HRESETn <= CORTEXM1Top_oIL;
end if;
end process;
CORTexM1Top_LOI <= CORtexM1ToP_I0I and NSYSRESET
and PORESETN
and not (CORTExM1Top_LOL);
process (HCLK,CortexM1TOp_loi)
begin
if (CortEXM1Top_lOI = '0') then
CortexM1TOP_lil <= '0';
WDOGRESn <= '0';
elsif (HCLK'event and HCLK = '1') then
CorTEXM1Top_lIL <= '1';
WDOGRESN <= CorteXM1TOp_lil;
end if;
end process;
process (HCLK,PORESETN)
begin
if (PORESETN = '0') then
CORTExM1Top_IIL <= '0';
CORTEXM1Top_o0L <= '0';
CorteXM1TOp_l0l <= '0';
CorteXM1Top_i0l <= '0';
DBGRESETN <= '0';
elsif (HCLK'event and HCLK = '1') then
CorTEXM1Top_iiL <= '1';
COrtexM1ToP_O0L <= CortexM1TOP_iil;
CORTExM1Top_L0L <= CorTEXM1Top_o0l;
CortEXM1Top_i0l <= CORtexM1ToP_L0L;
DBGRESETN <= CortexM1TOP_i0l;
end if;
end process;
end CortexM1TOP_I;
