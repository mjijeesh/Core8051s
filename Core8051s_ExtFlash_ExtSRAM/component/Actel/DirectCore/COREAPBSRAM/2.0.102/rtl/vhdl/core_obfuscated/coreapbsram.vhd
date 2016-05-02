-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- SVN Revision Information:
-- SVN $Revision: 5996 $
-- SVN $Date: 2009-01-16 11:28:16 +0000 (Fri, 16 Jan 2009) $
--
-- ********************************************************************/
library Ieee;
use iEEE.stD_logic_1164.all;
use ieee.std_LOGic_unsiGNED.all;
use ieeE.numerIC_STd.all;
library COREAPBSRAM_LIB;
entity COREAPBSRAM is
generic (FAMILY: integeR := 17;
APB_DWIDTH: integeR := 32;
NUM_LOCATIONS_DWIDTH32: intEGER := 512;
NUM_LOCATIONS_DWIDTH24: Integer := 512;
NUM_LOCATIONS_DWIDTH16: intEGER := 512;
NUM_LOCATIONS_DWIDTH08: iNTEGEr := 512;
ADDR_SCHEME: intEGER := 0); port (	PCLK: in stD_LOgic;
PRESETN: in Std_logiC;
	PSEL: in STD_logic;
PENABLE: in std_LOGIC;
PWRITE: in STD_logic;
PADDR: in std_loGIC_vector(16 downto 0);
PWDATA: in STD_logic_VECTOR(APB_DWIDTH-1 downto 0);
PRDATA: out std_LOGIC_vector(APB_DWIDTH-1 downto 0);
PREADY: out sTD_LOGic;
PSLVERR: out stD_LOGic);
end COREAPBSRAM;

architecture COREApbSraM_O of COREAPBSRAM is

component COReApbSraM_L
generic (CoreApbSRAM_I: iNTEGEr);
port (CoreApbSRAM_OL: in STD_logic;
CoreApbSRAM_Ll: in Std_logIC;
CoreApbSRAM_Il: in STD_logic;
CoreApbSRAM_OI: in Std_logiC;
COREApbSram_LI: in STD_logic_VECTOR(12 downto 0);
CoreAPBSRAm_ii: in Std_logiC_VECTor(12 downto 0);
CoREAPBSram_o0: in std_logIC_VEctor(7 downto 0);
CoreApBSRAM_l0: out STD_Logic_veCTOR(7 downto 0));
end component;

function CoreApBSRAM_i0(NUM_LOCATIONS_DWIDTH16: integeR)
return intEGER is
begin
if (NUM_LOCATIONS_DWIDTH16 < 8193) then
return NUM_LOCATIONS_DWIDTH16;
else
return 8192;
end if;
end function CoreApbSRAM_i0;

function COReApbSraM_O1(NUM_LOCATIONS_DWIDTH16: INTeger)
return integeR is
begin
if (NUM_LOCATIONS_DWIDTH16 < 8193) then
return 0;
else
return NUM_LOCATIONS_DWIDTH16-8192;
end if;
end function CorEAPBSram_o1;

function CoREAPBSram_l1(NUM_LOCATIONS_DWIDTH08: INTEGer)
return INTeger is
begin
if (NUM_LOCATIONS_DWIDTH08 < 513) then
return 512;
elsif (NUM_LOCATIONS_DWIDTH08 < 8193) then
return NUM_LOCATIONS_DWIDTH08;
else
return 8192;
end if;
end function CoreApbSRAM_L1;

function COREApbSram_I1(NUM_LOCATIONS_DWIDTH08: INTEGEr)
return Integer is
begin
if (NUM_LOCATIONS_DWIDTH08 < 8193) then
return 0;
elsif (NUM_LOCATIONS_DWIDTH08 > 8192 and NUM_LOCATIONS_DWIDTH08 < 16385) then
return NUM_LOCATIONS_DWIDTH08-8192;
else
return 8192;
end if;
end function COREAPbSram_I1;

function CoreApbSRAM_ool(NUM_LOCATIONS_DWIDTH08: INTeger)
return integer is
begin
if (NUM_LOCATIONS_DWIDTH08 < 16385) then
return 0;
elsif (NUM_LOCATIONS_DWIDTH08 > 16384 and NUM_LOCATIONS_DWIDTH08 < 24577) then
return NUM_LOCATIONS_DWIDTH08-16384;
else
return 8192;
end if;
end function CoreAPBSRam_ool;

function CoreApBSRAM_lol(NUM_LOCATIONS_DWIDTH08: intEGER)
return INTEGer is
begin
if (NUM_LOCATIONS_DWIDTH08 < 24577) then
return 0;
else
return NUM_LOCATIONS_DWIDTH08-24576;
end if;
end function COReApbSraM_LOL;

function COREApbSram_IOL(CoreApBSRAM_oll: INTeger)
return inteGER is
begin
if (CoreApBSRAm_oll = 0) then
return 512;
else
return CoreApBSRAm_oll;
end if;
end function CoreApbSRAM_IOl;

function CoREAPbSram_LLL(COREApbSram_ILL: INTEger)
return inteGER is
begin
if (COREApbSram_ILL = 0) then
return 512;
else
return COREApbSram_ILL;
end if;
end function CoreAPBSram_lll;

function CoREAPBSram_oiL(CorEAPBSram_liL: INteger)
return INTEGEr is
begin
if (CorEAPbSram_lIL = 0) then
return 512;
else
return CoreApbSRAM_lil;
end if;
end function CoreAPBSRam_oil;

function CoreApBSRAM_iil(CoreAPBSram_o0L: INteger)
return integER is
begin
if (CoreAPBSRAm_o0l = 0) then
return 512;
else
return CoREAPBSram_o0L;
end if;
end function CoreAPBSRAM_iil;

constant CoreApbSRAM_l0l: INteger := NUM_LOCATIONS_DWIDTH32;

constant CoreApbSRAM_i0l: INTEger := NUM_LOCATIONS_DWIDTH24;

constant COREApbSram_O1L: INTeger := CoreApBSRAM_i0(NUM_LOCATIONS_DWIDTH16);

constant COReApbSraM_OLL: Integer := CoreAPBSRAM_o1(NUM_LOCATIONS_DWIDTH16);

constant CoreAPBSRAM_l1l: iNTEGEr := COREAPbSram_l1(NUM_LOCATIONS_DWIDTH08);

constant CoreApBSRAM_ill: integER := COReApbSraM_I1(NUM_LOCATIONS_DWIDTH08);

constant CoreApBSRAM_lil: IntegeR := COREApbSram_OOL(NUM_LOCATIONS_DWIDTH08);

constant CorEAPBSram_o0L: INteger := COREAPbSram_lOL(NUM_LOCATIONS_DWIDTH08);

constant COreApbSRAM_I1l: integer := CoreApbSRAM_iol(COREApbSram_OLL);

constant CoREAPBSram_oOI: iNTEGER := COREAPbSram_lLL(CoreApbSRAM_ILl);

constant COReApbSraM_LOI: Integer := COREAPbSram_oIL(COREApbSram_LIL);

constant COreApbSRAM_IOi: inteGER := CoreApBSRAM_iil(CoreApBSRAM_o0l);

signal CoREAPBSram_oi: STD_logic_VECTOR(3 downto 0);

signal CoREAPBSram_olI: STD_Logic_veCTOR(12 downto 0);

signal COREAPbSram_LLI: Std_logIC_VEctor(7 downto 0);

signal CoREAPBSram_iLI: std_loGIC_Vector(7 downto 0);

signal CoREAPBSram_oII: stD_LOGic_vectOR(7 downto 0);

signal CoreApbSRAM_LIi: std_lOGIC_vector(7 downto 0);

signal CoREAPBSram_iiI: STd_logic_VECTOr(7 downto 0);

signal CoreApbSRAM_o0i: sTD_LOgic_vecTOR(7 downto 0);

signal CorEAPBSram_l0I: STD_logic_VECTOR(7 downto 0);

signal COREApbSram_I0I: std_LOGIc;

signal CorEAPBSram_o1I: STD_Logic;

begin
PSLVERR <= '0';
PREADY <= '1';
COREApbSram_I0I <= PWRITE and PENABLE
and 	PSEL;
COREApbSram_O1I <= not (PWRITE) and not (PENABLE)
and 	PSEL;
CoreApbSRAM_L1i:
if (APB_DWIDTH = 32)
generate
process (PADDR,COREAPbSram_i0I,COreApbSrAM_LLI,CoreApbSRAM_ILi,COREApbSram_OII,CoreApbSRAM_LIi)
begin
case (ADDR_SCHEME) is
when 1 =>
COREApbSram_OLI <= PADDR(12 downto 0);
COReApbSraM_OI(3 downto 0) <= CoreApbSRAM_i0i&CorEAPBSram_i0I&CoREAPBSram_i0I&COREAPbSram_i0I;
PRDATA(APB_DWIDTH-1 downto 0) <= COREApbSram_LLI&CoreAPBSRam_ili&CoreApBSRAM_oii&CoreApBSRAM_lii;
when others =>
COREApbSram_OLI <= PADDR(14 downto 2);
CoreAPBSRAm_oi(3 downto 0) <= CoreApbSRAM_i0i&CorEAPBSram_i0i&COREApbSram_I0I&CorEAPBSram_i0i;
PRDATA(APB_DWIDTH-1 downto 0) <= CorEAPBSram_lli&CoreApbSRAM_ILi&CoreApBSRAM_oii&CoreApbSRAM_lii;
end case;
end process;
CoreAPBSRAm_i1i: CoreApBSRAM_l
generic map (CoreApbSRAM_I => CoreApBSRAM_l0l)
port map (CoreApbSRAM_o0 => PWDATA(31 downto 24),
COREApbSram_L0 => COREApbSram_LLI,
CoreApBSRAM_oi => COreApbSrAM_OI(3),
CoreApbSRAM_il => CoreAPBSRAm_o1i,
CoreApbSRAM_Li => CoreApBSRAM_oli,
CoreAPBSRAM_ii => CoreApbSRAM_Oli,
COReApbSraM_OL => 	PCLK,
CoREAPBSram_ll => PRESETN);
COreApbSRAM_OO0: CoreApbSRAM_l
generic map (COREApbSram_I => CoreApBSRAM_l0l)
port map (COreApbSRAM_O0 => PWDATA(23 downto 16),
COREApbSram_L0 => CoreAPBSRam_ili,
CoreApbSRAM_oi => CoreApBSRAM_oi(2),
COReApbSraM_IL => CorEAPBSram_o1I,
COREApbSram_LI => COreApbSrAM_OLI,
CoreAPBSRam_ii => CoreApbSRAM_oli,
COReApbSraM_OL => 	PCLK,
CoreApbSRAM_Ll => PRESETN);
CoreAPBSRAm_lo0: COREApbSram_L
generic map (CoreApbSRAM_i => CoreApbSRAM_l0l)
port map (COreApbSRAM_O0 => PWDATA(15 downto 8),
CoreApbSRAM_l0 => COreApbSrAM_OII,
CoreApbSRAM_oi => CoreApbSRAM_oi(1),
COREApbSram_IL => CoreApBSRAM_o1i,
CoreApBSRAM_li => COReApbSraM_OLI,
CoreApBSRAM_ii => CoreApBSRAM_oli,
CorEAPBSram_ol => 	PCLK,
COREApbSram_LL => PRESETN);
CoreApbSRAM_io0: CoreApbSRAM_L
generic map (CoreApbSRAM_i => CoreApbSRAM_L0l)
port map (CoreAPBSRAm_o0 => PWDATA(7 downto 0),
COReApbSraM_L0 => CoreAPBSRam_lii,
CoREAPBSram_oi => CorEAPBSram_oi(0),
CoREAPBSram_il => CoreAPBSRAm_o1i,
COREAPbSram_lI => CoreApbSRAM_oli,
COREAPbSram_iI => CorEAPBSram_olI,
CoreApBSRAM_ol => 	PCLK,
COREApbSram_LL => PRESETN);
end generate;
CoreApbSRAM_ol0:
if (APB_DWIDTH = 24)
generate
process (PADDR,COReApbSraM_I0I,COREApbSram_ILI,COREAPbSram_oII,CoreAPBSRAm_lii)
begin
case (ADDR_SCHEME) is
when 1 =>
CoreAPBSRam_oli <= PADDR(12 downto 0);
COREApbSram_OI(3 downto 0) <= '0'&COreApbSRAM_I0i&CorEAPBSram_i0i&COREApbSram_I0I;
PRDATA(APB_DWIDTH-1 downto 0) <= CoreApbSRAM_Ili&CoreAPBSRam_oii&CoreAPBSRAm_lii;
when others =>
CoreAPBSram_oli <= PADDR(14 downto 2);
CoreApbSRAM_oi(3 downto 0) <= '0'&COReApbSraM_I0i&COREApbSram_I0I&COReApbSraM_I0I;
PRDATA(APB_DWIDTH-1 downto 0) <= CoREAPbSram_iLI&COreApbSrAM_OIi&COreApbSraM_LII;
end case;
end process;
CoreAPBSRam_oo0: COREAPbSram_L
generic map (CoreApbSRAM_I => CoreApbSRAM_i0l)
port map (CorEAPBSram_o0 => PWDATA(23 downto 16),
COREApbSram_L0 => CoreApbSRAM_ili,
CoreAPBSRam_oi => COREApbSram_OI(2),
CoreApBSRAM_il => CoreAPBSRam_o1i,
CoreApBSRAM_li => COREApbSram_oLI,
CorEAPBSram_ii => CoreAPBSRam_oli,
CoreAPBSram_ol => 	PCLK,
COreApbSrAM_LL => PRESETN);
COREApbSram_LO0: COREApbSram_L
generic map (CoreApbSRAM_I => CoreAPBSRAm_i0l)
port map (CoreAPBSram_o0 => PWDATA(15 downto 8),
COREApbSram_L0 => CoreApbSRAM_oii,
COREApbSram_OI => COREApbSram_OI(1),
CoreApbSRAM_il => CoreAPBSRAM_o1i,
CoREApbSram_LI => COreApbSRAM_OLi,
COREAPbSram_iI => COREApbSram_OLI,
CorEAPBSram_ol => 	PCLK,
COREApbSram_LL => PRESETN);
CoreApbSRAM_Io0: COreApbSrAM_L
generic map (CoreApBSRAM_i => COREAPbSram_i0L)
port map (CoreApbSRAM_O0 => PWDATA(7 downto 0),
CoreApbSRAM_l0 => COreApbSrAM_LII,
CoreApBSRAM_oi => CoreApBSRAM_oi(0),
COREApbSram_IL => CoreApbSRAM_o1i,
CoreApbSRAM_li => COREAPbSram_OLI,
COReApbSraM_II => CoREAPBSram_olI,
CoreApbSRAM_ol => 	PCLK,
COREAPbSram_lL => PRESETN);
end generate;
CoreAPBSram_ll0:
if (APB_DWIDTH = 16)
generate
process (PADDR,COREApbSram_I0I,CoreApbSRAM_Lli,COreApbSrAM_ILi,COreApbSrAM_OII,COREApbSram_LII)
begin
case (ADDR_SCHEME) is
when 1 =>
CoreApbSRAM_oli <= PADDR(12 downto 0);
case PADDR(13) is
when '0' =>
COreApbSrAM_OI(3 downto 0) <= '0'&'0'&CoreAPBSRAm_i0i&COREApbSram_I0I;
when '1' =>
COREAPbSram_OI(3 downto 0) <= CoreAPBSRam_i0i&COREApbSram_I0I&'0'&'0';
when others =>
CoreApbSRAM_oi(3 downto 0) <= '0'&'0'&'0'&'0';
end case;
case PADDR(13) is
when '0' =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoreApbSRAM_Oii&CoreApbSRAM_lii;
when '1' =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoreApbSRAM_lli&CoreApbSRAM_ili;
when others =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoREAPBSram_oiI&CoreApBSRAM_lii;
end case;
when others =>
COREAPbSram_oLI <= PADDR(14 downto 2);
case PADDR(15) is
when '0' =>
CoreApbSRAM_Oi(3 downto 0) <= '0'&'0'&CoreAPBSRam_i0i&COREAPbSram_i0I;
when '1' =>
CoreAPBSRAm_oi(3 downto 0) <= COReApbSraM_I0I&CoreAPBSRAM_i0i&'0'&'0';
when others =>
CoreApbSRAM_OI(3 downto 0) <= '0'&'0'&'0'&'0';
end case;
case PADDR(15) is
when '0' =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoreApbSRAM_oii&CoreAPBSRam_lii;
when '1' =>
PRDATA(APB_DWIDTH-1 downto 0) <= COReApbSraM_LLI&CoreApBSRAM_ili;
when others =>
PRDATA(APB_DWIDTH-1 downto 0) <= COreApbSrAM_OIi&CoreAPBSRam_lii;
end case;
end case;
end process;
COREApbSram_I1I: CoreApbSRAM_L
generic map (COreApbSrAM_I => COREApbSram_I1L)
port map (COReApbSraM_O0 => PWDATA(15 downto 8),
CoreApbSRAM_L0 => COreApbSrAM_III,
CoreApbSRAM_OI => CoreApbSRAM_Oi(3),
CoreApbSRAM_Il => COREApbSram_O1I,
COREApbSram_LI => CoreApbSRAM_oli,
CoreAPBSram_ii => CorEAPBSram_oli,
CoreAPBSRam_ol => 	PCLK,
CoreApbSRAM_LL => PRESETN);
CoreApbSRAM_Oo0: CoreAPBSRAm_l
generic map (CoreApbSRAM_i => COReApbSraM_I1L)
port map (CoREAPBSram_o0 => PWDATA(7 downto 0),
COreApbSrAM_L0 => COREAPbSram_O0I,
CoreApbSRAM_OI => COReApbSraM_OI(2),
CoreAPBSRam_il => COREApbSram_O1I,
CoreApBSRAM_li => COreApbSrAM_OLI,
COREAPbSram_iI => CoreApBSRAM_oli,
CorEAPBSram_ol => 	PCLK,
COREAPbSram_lL => PRESETN);
CoreApbSRAM_LO0: CoreApbSRAM_L
generic map (CoreApBSRAM_i => COREApbSram_O1L)
port map (COreApbSrAM_O0 => PWDATA(15 downto 8),
CoreAPBSRAm_l0 => CoreApBSRAm_oii,
CoreApbSRAM_OI => CoreApbSRAM_OI(1),
CoreAPBSRAm_il => CoreApBSRAM_o1i,
CoreAPBSRam_li => CoreApBSRAM_oli,
CoREAPBSram_ii => COReApbSraM_OLI,
CorEAPBSram_ol => 	PCLK,
CoREAPBSram_ll => PRESETN);
CoreAPBSram_io0: COREApbSram_L
generic map (CoreAPBSRam_i => COREApbSram_O1L)
port map (COREApbSram_O0 => PWDATA(7 downto 0),
CoreApbSRAM_L0 => CoreApbSRAM_Lii,
COreApbSrAM_OI => CoreAPBSRAm_oi(0),
CoreApbSRAM_il => CoreApbSRAM_O1i,
CoREAPBSram_li => COREAPbSram_OLI,
CoreApbSRAM_Ii => CoreApbSRAM_oli,
COReApbSraM_OL => 	PCLK,
CoreApBSRAM_ll => PRESETN);
CoreApbSRAM_LLi <= "00000000" when CoreAPBSram_oll = 0 else
COReApbSraM_III;
COReApbSraM_ILI <= "00000000" when CoreApbSRAM_OLl = 0 else
CoreApbSRAM_o0i;
end generate;
CorEAPBSram_il0:
if (APB_DWIDTH = 8)
generate
process (PADDR,CoreAPBSRAm_i0i,COREApbSram_LLI,CorEAPBSram_ili,CoreAPBSRAM_oii,CoreApbSRAM_Lii)
begin
case (ADDR_SCHEME) is
when 1 =>
COREAPbSram_oLI <= PADDR(12 downto 0);
case PADDR(14 downto 13) is
when "00" =>
CoreApbSRAM_oi(3 downto 0) <= '0'&'0'&'0'&CoreApbSRAM_I0i;
when "01" =>
COREApbSram_OI(3 downto 0) <= '0'&'0'&COREApbSraM_I0I&'0';
when "10" =>
CoreApbSRAM_Oi(3 downto 0) <= '0'&COreApbSrAM_I0i&'0'&'0';
when "11" =>
CorEAPBSram_oi(3 downto 0) <= COREAPbSram_i0I&'0'&'0'&'0';
when others =>
COREApbSram_OI(3 downto 0) <= '0'&'0'&'0'&'0';
end case;
case PADDR(14 downto 13) is
when "00" =>
PRDATA(APB_DWIDTH-1 downto 0) <= COREAPBSram_liI;
when "01" =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoreApbSRAM_Oii;
when "10" =>
PRDATA(APB_DWIDTH-1 downto 0) <= COreApbSRAM_ILi;
when "11" =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoreAPBSRAm_lli;
when others =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoreApbSRAM_lii;
end case;
when others =>
COreApbSRAM_OLi <= PADDR(14 downto 2);
case PADDR(16 downto 15) is
when "00" =>
CoreApBSRAM_oi(3 downto 0) <= '0'&'0'&'0'&COreApbSrAM_I0i;
when "01" =>
CoreApbSRAM_Oi(3 downto 0) <= '0'&'0'&CoreAPBSRAm_i0i&'0';
when "10" =>
COREApbSram_OI(3 downto 0) <= '0'&COREAPbSram_I0I&'0'&'0';
when "11" =>
COreApbSrAM_OI(3 downto 0) <= CoreApbSRAM_i0i&'0'&'0'&'0';
when others =>
COReApbSraM_OI(3 downto 0) <= '0'&'0'&'0'&'0';
end case;
case PADDR(16 downto 15) is
when "00" =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoREAPbSram_lII;
when "01" =>
PRDATA(APB_DWIDTH-1 downto 0) <= CorEAPBSram_oii;
when "10" =>
PRDATA(APB_DWIDTH-1 downto 0) <= COREApbSram_ILI;
when "11" =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoreApbSRAM_Lli;
when others =>
PRDATA(APB_DWIDTH-1 downto 0) <= CoreApBSRAm_lii;
end case;
end case;
end process;
COREApbSram_I1I: COreApbSrAM_L
generic map (COreApbSrAM_I => COREApbSram_IOI)
port map (COREApbSram_O0 => PWDATA(7 downto 0),
COREAPbSram_l0 => CoreAPBSRam_iii,
CoreAPBSRAm_oi => COreApbSrAM_OI(3),
CoREAPBSram_il => COREApbSram_O1I,
COreApbSrAM_LI => CoREAPbSram_oLI,
CoreAPBSRam_ii => CoreApbSRAM_Oli,
CoreAPBSRAm_ol => 	PCLK,
COREApbSraM_LL => PRESETN);
CoreApbSRAM_oo0: CorEAPBSram_l
generic map (COREAPbSram_i => CoreAPBSRam_loi)
port map (CorEAPBSram_o0 => PWDATA(7 downto 0),
CoreApbSRAM_l0 => COReApbSraM_O0I,
CoreAPBSRam_oi => COREApbSram_OI(2),
CoreApbSRAM_il => COREApbSram_O1I,
COREAPbSram_lI => CoREAPBSram_olI,
CorEAPBSram_ii => CorEAPBSram_oli,
COReApbSraM_OL => 	PCLK,
CoreApbSRAM_ll => PRESETN);
CoreApbSRAM_Lo0: COREAPBSram_l
generic map (CoREAPBSram_i => CoreAPBSram_ooI)
port map (CoreApBSRAM_o0 => PWDATA(7 downto 0),
CoreApbSRAM_l0 => CoreAPBSRAM_l0i,
CoreAPBSRAm_oi => CoreApbSRAM_OI(1),
COREApbSram_IL => CoreApBSRAm_o1i,
COREApbSram_LI => CoreApbSRAM_oli,
COREApbSram_II => CoreApbSRAM_Oli,
COREApbSram_OL => 	PCLK,
CorEAPBSram_ll => PRESETN);
CoreAPBSRam_io0: COREAPbSram_L
generic map (COREApbSram_I => CoreApBSRAM_l1l)
port map (CoreApBSRAM_o0 => PWDATA(7 downto 0),
COreApbSrAM_L0 => CoreApbSRAM_Lii,
CorEAPBSram_oi => COreApbSrAM_OI(0),
COREApbSram_IL => CoreApbSRAM_O1i,
COREApbSraM_LI => CorEAPBSram_oli,
CoreAPBSRam_ii => CoREAPBSram_olI,
COreApbSrAM_OL => 	PCLK,
CoreApbSRAM_ll => PRESETN);
COREApbSram_LLI <= "00000000" when CoREAPBSram_o0L = 0 else
COREAPbSram_iII;
CoreAPBSRam_ili <= "00000000" when COreApbSrAM_LIL = 0 else
COReApbSraM_O0I;
COReApbSraM_OII <= "00000000" when COREApbSram_ILL = 0 else
COREApbSram_L0I;
end generate;
end CoreApbSRAM_o;
