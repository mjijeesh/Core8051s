-- Actel Corporation Proprietary and Confidential
-- Copyright 2010 Actel Corporation.  All rights reserved.
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
-- SVN Revision Information:
-- SVN $Revision: 13266 $
library IEEe;
use Ieee.Std_loGIC_1164.all;
use IEEE.NUMEric_stD.all;
package CORtexM1ToP_O is

function CortEXM1Top_l(DEBUG_IF: Integer)
return integeR;
end CORTEXM1Top_o;

package body CortexM1TOP_o is
function CORTEXM1Top_l(DEBUG_IF: Integer)
return intEGER is
begin
if DEBUG_IF = 0 then
return (1);
else
return (0);
end if;
end COrtexM1TOP_L;
end CORTEXM1Top_o;

use WORk.CortexM1TOP_o.all;
library ieee;
use Ieee.STd_logic_1164.all;
use IEEe.NUMERic_std.all;
library fusion;
entity COrtexM1TOP is
generic (DEBUG_INCL: iNTEGEr := 0;
DEBUG_RESET: integeR := 0;
DEBUG_IF: INTeger := 0;
UJ_RST_ON_GLOBAL: iNTEGEr := 1;
UJ_CLK_ON_GLOBAL: INTEGEr := 1;
CONFIG: Integer := 0;
DEBUG_CONFIG: INTeger := 1;
DEBUG_PROTOCOL: INteger := 0;
ITCM_ALIAS: Integer := 2); port (HCLK: in stD_LOGic;
NSYSRESET: in STd_logic;
PORESETN: in STD_Logic;
HRESETn: out std_lOGIC;
WDOGRES: in std_logIC;
WDOGRESN: out Std_logiC;
LOCKUP: out std_loGIC;
HALTED: out STd_logic;
NMI: in STD_logiC;
IRQ31: in std_lOGIC;
IRQ30: in STD_logic;
IRQ29: in std_LOGIC;
IRQ28: in stD_LOgic;
IRQ27: in STd_logic;
IRQ26: in stD_logic;
IRQ25: in STD_logic;
IRQ24: in STD_logic;
IRQ23: in sTD_Logic;
IRQ22: in std_lOGIC;
IRQ21: in STD_Logic;
IRQ20: in Std_logIC;
IRQ19: in STD_Logic;
IRQ18: in std_LOGIc;
IRQ17: in STD_logic;
IRQ16: in sTD_LOgic;
IRQ15: in std_LOGIc;
IRQ14: in STD_logic;
IRQ13: in STd_logic;
IRQ12: in STD_logic;
IRQ11: in STD_Logic;
IRQ10: in sTD_Logic;
IRQ9: in std_logIC;
IRQ8: in Std_logIC;
IRQ7: in STD_logic;
IRQ6: in stD_LOGic;
IRQ5: in std_LOGIC;
IRQ4: in std_LOGIC;
IRQ3: in STD_logic;
IRQ2: in std_loGIC;
IRQ1: in std_loGIC;
IRQ0: in sTD_LOgic;
HADDR: out STD_logic_vECTOR(31 downto 0);
HBURST: out STd_logiC_vector(2 downto 0);
HPROT: out std_lOGIC_VECtor(3 downto 0);
HRDATA: in Std_logic_vECTOR(31 downto 0);
HREADY: in STd_logic;
HRESP: in STd_logic_VECTOR(1 downto 0);
HSIZE: out std_LOGIc_vectoR(2 downto 0);
HTRANS: out STD_logic_VECTOR(1 downto 0);
HWDATA: out STd_logic_vecTOR(31 downto 0);
HWRITE: out STD_Logic;
HMASTLOCK: out STD_LOGIc;
EDBGRQ: in STD_logic;
JTAGTOP: out STD_Logic;
JTAGNSW: out STD_logic;
SWDO: out stD_LOGIC;
SWDOEN: out std_logic;
nTDOEN: out STD_LOGic;
TCK: in STd_logic;
NTRST: in STD_Logic;
TMS: in std_logiC;
TDI: in std_logic;
TDO: out STD_logic);
end CortexM1TOP;

architecture CORTexM1Top_i of CORTexM1Top is

constant USE_UJTAG: INTEGER := COrtexM1Top_L(DEBUG_IF);

signal SYSRESETREQ: std_logiC;

signal CortEXM1TOP_ol: std_LOGIC;

signal CORTEXM1Top_ll: sTD_LOGIC;

signal CortexM1Top_IL: STD_logic;

signal CortexM1TOP_OI: Std_logic;

signal DBGRESETN: std_logic;

signal CortEXM1TOP_li: std_logIC;

signal RV_TDO: STD_logic;

signal UJTAG_TDO: STD_logic;

signal CORTEXM1Top_ii: std_LOGIC;

signal URSTB: STD_logic;

signal CorteXM1TOP_o0: std_logiC;

signal SWCLKTCK: std_loGIC;

signal SWDITMS: std_loGIC;

signal CortexM1Top_L0: STD_logic;

signal IRQ: std_logic_vECTOR(31 downto 0);

component CLKINT
port (A: in std_lOGIC;
Y: out std_lOGIC);
end component;

component CORTexM1IntegraTION
port (HCLK: in STD_LOGIc;
DBGRESETn: in std_LOGIC;
SYSRESETN: in std_LOGIC;
LOCKUP: out sTD_LOGIC;
HALTED: out std_LOGIC;
SYSRESETREQ: out STd_logic;
EDBGRQ: in STD_logic;
IRQ: in std_LOGIC_VEctor(31 downto 0);
NMI: in std_lOGIC;
HADDR: out std_loGIC_VECTor(31 downto 0);
HBURST: out STD_Logic_vector(2 downto 0);
HPROT: out std_LOGIC_VEctor(3 downto 0);
HRDATA: in std_logIC_VECTOr(31 downto 0);
HREADY: in STD_LOGIc;
HRESP: in std_logIC;
HSIZE: out std_logIC_VECTOr(2 downto 0);
HTRANS: out STD_LOgic_vector(1 downto 0);
HWDATA: out STD_logic_vectOR(31 downto 0);
HWRITE: out std_logIC;
HMASTLOCK: out STD_LOgic;
SWDO: out std_logic;
SWDOEN: out STD_Logic;
TDO: out stD_LOGIC;
nTDOEN: out stD_LOGIC;
JTAGNSW: out std_logiC;
JTAGTOP: out std_loGIC;
nTRST: in STD_logic;
SWCLKTCK: in STD_logic;
SWDITMS: in Std_logic;
TDI: in std_lOGIC;
tcmInitWRITEENAble: in stD_LOGIC;
tcMINITADdr: in STD_logic_vectoR(19 downto 2);
tcmInitWRITEDAta: in STD_logic_vecTOR(31 downto 0));
end component;

component ResETSYNC
generic (DEBUG_INCL: INTEGER;
USE_UJTAG: INteger;
DRIVE_RTCK: inteGER;
UJ_RST_ON_GLOBAL: INTEGER;
UJ_CLK_ON_GLOBAL: INTEGEr);
port (HCLK: in STD_logic;
NSYSRESET: in std_loGIC;
PORESETN: in std_loGIC;
SYSRESETREQ: in STD_logic;
DBGRESETN: out sTD_LOGIC;
HRESETn: out STd_logic;
WDOGRES: in stD_LOGIC;
WDOGRESn: out std_logic;
RV_VTref: out STD_Logic;
RV_NTRST: in std_logiC;
RV_TDI: in std_loGIC;
RV_TMS: in STD_LOGIc;
RV_TCK: in STD_LOGic;
RV_RTCK: out std_lOGIC;
RV_TDO: out std_lOGIC;
RV_NSRST_IN: in sTD_LOGIC;
	RV_DBGRQ: in stD_LOGIC;
RV_DBGACK: out STD_logic;
UJTAG_TCK: in stD_LOGIC;
UJTAG_TRSTB: in std_logic;
UJTAG_TMS: in std_loGIC;
UJTAG_TDI: in STD_LOGIc;
UJTAG_TDO: out STD_logic;
TDO: in std_logic;
NTRST: out std_logIC;
SWCLKTCK: out stD_LOGIC;
SWDITMS: out STD_LOGIc;
TDI: out std_lOGIC);
end component;

begin
IRQ <= (IRQ31&IRQ30&IRQ29&IRQ28&IRQ27&IRQ26&IRQ25&IRQ24&IRQ23&IRQ22&IRQ21&IRQ20&IRQ19&IRQ18&IRQ17&IRQ16&IRQ15&IRQ14&IRQ13&IRQ12&IRQ11&IRQ10&IRQ9&IRQ8&IRQ7&IRQ6&IRQ5&IRQ4&IRQ3&IRQ2&IRQ1&IRQ0);
COrtexM1Top_I0: CLKINT
port map (A => CORTEXM1Top_ol,
Y => CORtexM1Top_ll);
HRESETN <= CORTExM1Top_ll;
CORTexM1Top_o1:
if (DEBUG_INCL = 1)
generate
begin
CORTExM1Top_l1: CLKINT
port map (A => CORTexM1Top_o0,
Y => SWCLKTCK);
CorTEXM1TOp_i1: CLKINT
port map (A => CORTexM1Top_oi,
Y => DBGRESETn);
CortexM1ToP_LI <= EDBGRQ;
end generate CortexM1ToP_O1;
CortexM1TOP_Ool:
if (DEBUG_INCL = 0)
generate
begin
SWCLKTCK <= '0';
DBGRESETn <= '1';
CORTexM1Top_li <= '0';
end generate CortexM1TOP_OOL;
M1: COrtexM1IntegRATION
port map (HCLK => HCLK,
DBGRESETn => DBGRESETn,
SYSRESETn => CortexM1Top_LL,
LOCKUP => LOCKUP,
HALTED => HALTED,
SYSRESETREQ => SYSRESETREQ,
EDBGRQ => CORTEXM1Top_li,
IRQ => IRQ,
NMI => NMI,
HADDR => HADDR,
HBURST => HBURST,
HPROT => HPROT,
HRDATA => HRDATA,
HREADY => HREADY,
HRESP => HRESP(0),
HSIZE => HSIZE,
HTRANS => HTRANS,
HWDATA => HWDATA,
HWRITE => HWRITE,
HMASTLOCK => HMASTLOCK,
SWDO => SWDO,
SWDOEN => SWDOEN,
TDO => CortEXM1TOP_ii,
nTDOEN => nTDOEN,
JTAGNSW => JTAGNSW,
JTAGTOP => JTAGTOP,
NTRST => URSTB,
SWCLKTCK => SWCLKTCK,
SWDITMS => SWDITMS,
TDI => CortexM1TOP_L0,
TCmInitWriteENABLE => '0',
tcmIniTADDR => ( otheRS => '0'),
tcMINITWRIteData => ( otheRS => '0'));
CorTEXM1TOp_il <= PORESETN when DEBUG_RESET = 1 else
NSYSRESET;
RS: RESETSync
generic map (DEBUG_INCL => DEBUG_INCL,
USE_UJTAG => USE_UJTAG,
DRIVE_RTCK => 0,
UJ_RST_ON_GLOBAL => UJ_RST_ON_GLOBAL,
UJ_CLK_ON_GLOBAL => UJ_CLK_ON_GLOBAL)
port map (HCLK => HCLK,
NSYSRESET => NSYSRESET,
PORESETN => CortexM1TOP_IL,
SYSRESETREQ => SYSRESETREQ,
DBGRESETn => CortexM1ToP_OI,
HRESETn => CortexM1Top_OL,
WDOGRES => WDOGRES,
WDOGRESn => WDOGRESN,
RV_VTREF => open ,
RV_NTRST => NTRST,
RV_TDI => TDI,
RV_TMS => TMS,
RV_TCK => TCK,
RV_RTCK => open ,
RV_TDO => RV_TDO,
RV_nSRST_IN => '1',
	RV_DBGRQ => '0',
RV_DBGACK => open ,
UJTAG_TCK => TCK,
UJTAG_TRSTB => NTRST,
UJTAG_TMS => TMS,
UJTAG_TDI => TDI,
UJTAG_TDO => UJTAG_TDO,
TDO => COrtexM1TOP_II,
nTRST => URSTB,
SWCLKTCK => COrtexM1ToP_O0,
SWDITMS => SWDITMS,
TDI => CortEXM1Top_l0);
TDO <= UJTAG_TDO when USE_UJTAG = 1 else
RV_TDO;
end CortexM1ToP_I;
