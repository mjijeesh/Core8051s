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
use ieee.STD_logic_1164.all;
library fusion;
entity CoreApbSRAM_L is
generic (COREApbSram_i: INteger range 512 to 8192 := 512); port (COREAPBSram_ol: in STD_logic;
COREAPBSram_ll: in stD_LOGIC;
CoreApbSram_IL: in STD_LOGIC;
COreApbSram_oI: in std_lOGIC;
COREApbSram_li: in STD_logic_vectOR(12 downto 0);
COREAPBSram_ii: in STD_logic_vectoR(12 downto 0);
CoreApbSram_O0: in std_loGIC_VECTor(7 downto 0);
CoreApbSram_L0: out sTD_LOGIC_vector(7 downto 0));
end COreApbSram_l;

architecture COREApbSram_o of COREAPBSram_l is

component RAM4K9
port (ADDRA11: in std_ULOGIC;
ADDRA10: in std_uloGIC;
ADDRA9: in std_ulogIC;
ADDRA8: in STD_ULogic;
ADDRA7: in std_ulogiC;
ADDRA6: in sTD_ULOGIc;
ADDRA5: in STD_ulogic;
ADDRA4: in STD_ulogic;
ADDRA3: in STD_ulogic;
ADDRA2: in std_ULOGIC;
ADDRA1: in STD_ulogic;
ADDRA0: in std_ulogIC;
ADDRB11: in sTD_ULOGic;
ADDRB10: in Std_ulogic;
ADDRB9: in std_ULOGIC;
ADDRB8: in STD_ulogic;
ADDRB7: in std_uLOGIC;
ADDRB6: in std_ULOGIC;
ADDRB5: in std_uloGIC;
ADDRB4: in std_ulogic;
ADDRB3: in Std_ulogic;
ADDRB2: in std_ulogiC;
ADDRB1: in std_uLOGIC;
ADDRB0: in sTD_ULOGIc;
DINA8: in STD_ULOgic;
DINA7: in std_uloGIC;
DINA6: in std_ulOGIC;
DINA5: in Std_ulogic;
DINA4: in STD_ULogic;
DINA3: in std_uloGIC;
DINA2: in std_uLOGIC;
DINA1: in STD_ULOgic;
DINA0: in STd_ulogic;
DINB8: in std_uloGIC;
DINB7: in sTD_ULOGIc;
DINB6: in std_uloGIC;
DINB5: in STD_ULOgic;
DINB4: in Std_ulogic;
DINB3: in std_ulOGIC;
DINB2: in sTD_ULOGIc;
DINB1: in STD_ulogic;
DINB0: in STD_Ulogic;
WIDTHA1: in STD_ULOgic;
WIDTHA0: in stD_ULOGIC;
WIDTHB1: in STD_ulogic;
WIDTHB0: in STD_ulogic;
PIPEA: in STD_ulogic;
PIPEB: in std_uLOGIC;
WMODEA: in std_uloGIC;
WMODEB: in std_ULOGIC;
BLKA: in std_ulOGIC;
BLKB: in STD_ulogic;
WENA: in sTD_ULOGIc;
WENB: in STD_Ulogic;
CLKA: in STD_ulogic;
CLKB: in std_ulogiC;
RESET: in Std_ulogic;
DOUTA8: out STD_ULOgic;
DOUTA7: out std_ulOGIC;
DOUTA6: out Std_ulogic;
DOUTA5: out Std_ulogic;
DOUTA4: out std_uLOGIC;
DOUTA3: out std_uLOGIC;
DOUTA2: out std_ulogIC;
DOUTA1: out std_ULOGIC;
DOUTA0: out STd_ulogic;
DOUTB8: out stD_ULOGIC;
DOUTB7: out Std_ulogic;
DOUTB6: out Std_ulogIC;
DOUTB5: out std_uloGIC;
DOUTB4: out Std_ulogic;
DOUTB3: out STD_ulogic;
DOUTB2: out std_uloGIC;
DOUTB1: out STD_ulogic;
DOUTB0: out Std_ulogic);
end component;

constant COREAPBSram_oi0: INTEger := 1;

signal CoreApbSram_LI0: Std_logic_vECTOR(12 downto 9);

signal CoREAPBSRAm_ii0: STD_logic_vectOR(1 downto 0);

signal CoreApbSram_O00: std_loGIC_VECTor(1 downto 0);

signal CoreApbSram_L00: std_logIC_VECTOr(1 downto 0);

signal COREApbSram_i00: std_loGIC_VECtor(1 downto 0);

signal CoreAPBSRAM_o10: STd_logic_vecTOR(1 downto 0);

signal COReApbSram_l10: std_LOGIC_vector(1 downto 0);

signal COREAPbSram_i10: std_logiC_VECTOR(1 downto 0);

signal CoreApbSraM_OO1: std_lOGIC_VECtor(1 downto 0);

signal CoreApbSraM_LO1: std_LOGIC_VEctor(1 downto 0);

signal CoreAPBSRAM_io1: STD_logic_vectOR(1 downto 0);

signal CoreApbSram_OL1: std_loGIC_VECTor(1 downto 0);

signal COReApbSram_ll1: std_logIC_VECTOr(1 downto 0);

signal CorEAPBSRAm_il1: STD_logic_vectOR(1 downto 0);

signal COREAPbSram_oi1: Std_logic_vECTOR(1 downto 0);

signal COREAPBSram_li1: Std_logic_vECTOR(1 downto 0);

signal COReApbSram_ii1: std_logIC_VECTOr(1 downto 0);

signal CoreApbSram_O01: std_loGIC_VECTor(15 downto 0);

signal COReApbSram_l01: std_logiC_VECTOr(15 downto 0);

signal CoreApbSraM_I01: std_loGIC_VECTor(7 downto 0);

signal COREAPBSRam_o11: std_logic_vECTOR(7 downto 0);

signal CoREAPBSRAm_l11: STD_logic_vectOR(7 downto 0);

signal CoreApbSRAM_I11: STD_LOGic_vector(7 downto 0);

signal CoreApbSram_OOOL: sTD_LOGIC_vector(7 downto 0);

signal CoreApbSraM_LOOL: STD_Logic_vector(7 downto 0);

signal CoreApbSRAM_IOol: STD_LOGIc_vector(7 downto 0);

signal COREAPbSram_olol: std_loGIC_VECTor(7 downto 0);

signal CoreAPBSRAM_llol: STD_LOgic_vector(7 downto 0);

signal CoreApbSRAM_ILOL: STD_Logic_vectoR(7 downto 0);

signal CoreApBSRAM_Oiol: STD_logic_vectoR(7 downto 0);

signal CoreApbSRAM_LIOL: sTD_LOGIC_vector(7 downto 0);

signal CoreApbSRAM_IIol: stD_LOGIC_vector(7 downto 0);

signal CoreApbSraM_O0OL: STD_LOGIc_vector(7 downto 0);

signal CoreApbSraM_L0OL: std_LOGIC_vector(7 downto 0);

signal COREApbSram_i0oL: std_logiC_VECTOR(7 downto 0);

signal CoreAPBSRAM_lii: STD_LOGIc_vector(7 downto 0);

signal COreApbSram_OII: std_logic_VECTOR(7 downto 0);

signal CoreApbSram_ILI: STd_logic_vecTOR(7 downto 0);

signal COREAPBSRam_lli: sTD_LOGIC_vector(7 downto 0);

signal CoreAPBSRAM_o1ol: std_LOGIc_vectoR(7 downto 0);

signal CoreAPBSRAM_l1ol: stD_LOGic_vectOR(7 downto 0);

signal CoreAPBSRAm_i1ol: std_logIC_VEctor(7 downto 0);

signal COREApbSram_oolL: STD_logic_vecTOR(7 downto 0);

signal COREAPBSRam_loll: STD_logic_vectOR(7 downto 0);

signal CoREAPBSRAm_ioll: STD_Logic_vectoR(7 downto 0);

signal COREAPBSram_olll: STD_logic_vectoR(7 downto 0);

signal CoreApbSram_LLLL: stD_LOGIC_vector(7 downto 0);

signal COreApbSram_ILLL: Std_logic_VECTOR(7 downto 0);

signal CoreApbSraM_OILL: std_LOGIC_VEctor(7 downto 0);

signal CoREAPBSRam_lill: STD_logic_vectoR(7 downto 0);

signal COREApbSram_iiLL: std_lOGIC_VECtor(7 downto 0);

signal CoreApbSRAM_O0Ll: std_LOGIC_vector(11 downto 0);

signal COREAPbSram_l0ll: std_loGIC_VECTor(11 downto 0);

signal COreApbSram_i0LL: std_logIC_VECTOr(11 downto 0);

signal CoreApbSram_O1LL: stD_LOGIC_vector(11 downto 0);

signal COREApbSram_l1lL: STD_logic_vectOR(11 downto 0);

signal COreApbSram_i1LL: std_lOGIC_VECtor(11 downto 0);

signal CoreApbSram_OOIL: std_logIC_VECTOr(11 downto 0);

signal COREApbSram_loiL: std_loGIC_VECTor(11 downto 0);

signal CoreApbSrAM_IOIL: STD_logic_vectoR(11 downto 0);

signal COREAPBSRam_olil: STD_logic_vectOR(11 downto 0);

signal CoreApbSram_LLIL: std_lOGIC_VECtor(11 downto 0);

signal COREAPBSram_ilil: std_logic_vECTOR(11 downto 0);

signal COREAPbSram_oiil: STD_logic_vectOR(11 downto 0);

signal CoreApbSraM_LIIL: STD_LOGIc_vector(11 downto 0);

signal CoreApbSRAM_IIil: sTD_LOGIC_vector(11 downto 0);

signal CoreAPBSRAM_o0il: STd_logic_vecTOR(11 downto 0);

signal COREAPbSram_l0il: std_logic_VECTOR(11 downto 0);

signal CoreApbSraM_I0IL: STD_LOgic_vector(11 downto 0);

signal CoreApbSRAM_O1Il: STD_LOgic_vector(11 downto 0);

signal CoreApbSrAM_L1IL: Std_logic_veCTOR(11 downto 0);

signal CoREAPBSRAm_i1il: STd_logic_vecTOR(11 downto 0);

signal COREAPBSram_oo0l: Std_logic_VECTOR(11 downto 0);

signal CoREAPBSRAm_lo0l: Std_logic_veCTOR(11 downto 0);

signal COreApbSram_iO0L: std_logiC_VECTOR(11 downto 0);

signal CoreApbSram_OL0L: std_logIC_VECTOr(11 downto 0);

signal CoreApbSram_LL0L: STD_LOGic_vector(11 downto 0);

signal CoreApbSram_IL0L: std_logic_VECTOR(11 downto 0);

signal CoreApbSraM_OI0L: std_logIC_VECTOr(11 downto 0);

signal CoreApbSram_LI0L: std_logic_vECTOR(11 downto 0);

signal COreApbSram_iI0L: stD_LOGIC_vector(11 downto 0);

signal CoreApbSRAM_O00l: std_lOGIC_VECtor(11 downto 0);

signal CoreApbSram_L00L: stD_LOGIC_vector(11 downto 0);

signal CoreApbSrAM_I0I: STD_Logic;

signal CoREAPBSRAm_o1i: sTD_LOGIC;

signal CoreApbSram_I00L: std_logiC;

signal COReApbSram_o10L: Std_logic;

begin
CoreAPBSRAM_i0i <= not (COreApbSram_oI);
CoreAPBSRAM_O1i <= not (COREAPBSram_il);
COReApbSram_i00L <= '1';
CoreApbSram_O10L <= '0';
process (COREAPBSram_ol,COREApbSram_ll)
begin
if (CoreApbSraM_LL = '0') then
CoreApbSram_LI0(12 downto 9) <= "0000";
elsif (CoreApbSrAM_OL'eveNT and CoreApbSram_OL = '1') then
CoreAPBSRAM_li0(12 downto 9) <= COREApbSram_ii(12 downto 9);
end if;
end process;
process (COREAPBSram_li,COreApbSram_II,COREApbSram_o0,CoreApbSRAM_I0i,COREApbSram_o1i,COREApbSram_liI,CoreApbSram_OII,COREApbSram_ilI,COReApbSram_llI,COREAPbSram_o1ol,COREApbSram_l1oL,COREAPbSram_i1ol,COREAPBSram_ooll,CoreApBSRAM_Loll,CoreAPBSRAM_ioll,CoreApBSRAM_Olll,CoreApBSRAM_Llll,CoreApBSRAM_ILll,CoreApbSraM_OILL,CoreApbSraM_LILL,CoreApbSram_IILL)
begin
CoreApbSraM_II0 <= "00";
CoreApbSram_O00 <= "00";
CoreApbSram_L00 <= "00";
COREApbSram_i00 <= "00";
CoreApbSraM_O10 <= "00";
COREApbSram_l10 <= "00";
CoreAPBSRAM_I10 <= "00";
CoreAPBSRAM_Oo1 <= "00";
CoreApbSRAM_LO1 <= "00";
COREAPbSram_io1 <= "00";
CoreApbSraM_OL1 <= "00";
CoreApbSrAM_LL1 <= "00";
COREApbSram_il1 <= "00";
COREAPBSram_oi1 <= "00";
COreApbSram_lI1 <= "00";
COreApbSram_iI1 <= "00";
CoreApbSraM_O01 <= "1111111111111111";
COREAPBSram_l01 <= "1111111111111111";
COREAPBSram_i01 <= "00000000";
COreApbSram_O11 <= "00000000";
COREAPBSram_l11 <= "00000000";
COReApbSram_i11 <= "00000000";
COREAPbSram_oool <= "00000000";
COREAPBSRam_lool <= "00000000";
CoreApbSraM_IOOL <= "00000000";
CoreApbSram_OLOL <= "00000000";
COREApbSram_llOL <= "00000000";
COREApbSram_iloL <= "00000000";
COREAPBSRam_oiol <= "00000000";
COReApbSram_lIOL <= "00000000";
CoreAPBSRAM_Iiol <= "00000000";
CoREAPBSRAm_o0ol <= "00000000";
CoreAPBSRAM_l0ol <= "00000000";
COReApbSram_i0OL <= "00000000";
COREAPBSram_o0ll <= "000000000000";
COreApbSram_l0LL <= "000000000000";
COreApbSram_i0LL <= "000000000000";
CoreApBSRAM_O1ll <= "000000000000";
COreApbSram_l1LL <= "000000000000";
COreApbSram_I1LL <= "000000000000";
CoreAPBSRAM_Ooil <= "000000000000";
COREApbSram_loiL <= "000000000000";
COREAPBSram_ioil <= "000000000000";
CoreApbSraM_OLIL <= "000000000000";
CoreApbSraM_LLIL <= "000000000000";
CoreApbSRAM_ILil <= "000000000000";
CoreApbSram_OIIL <= "000000000000";
CorEAPBSRAM_liil <= "000000000000";
COREAPBSram_iiil <= "000000000000";
COreApbSram_O0IL <= "000000000000";
COREApbSram_l0iL <= "000000000000";
COReApbSram_i0IL <= "000000000000";
CorEAPBSRAM_o1il <= "000000000000";
COREAPBSRam_l1il <= "000000000000";
CoreApbSraM_I1IL <= "000000000000";
CoreAPBSRAM_oo0l <= "000000000000";
CoreApbSraM_LO0L <= "000000000000";
COreApbSram_iO0L <= "000000000000";
CoreApbSram_OL0L <= "000000000000";
CoreApbSraM_LL0L <= "000000000000";
COREAPbSram_il0l <= "000000000000";
CoreApbSrAM_OI0L <= "000000000000";
CoreAPBSRAM_li0l <= "000000000000";
CoreApbSram_II0L <= "000000000000";
COREAPBSram_o00l <= "000000000000";
COREApbSram_l00l <= "000000000000";
case (CorEAPbSram_I) is
when 512 =>
CoreAPBSRAM_ii0 <= "11";
COREApbSram_o0lL <= "000"&CoreApbSram_LI(8 downto 0);
COreApbSram_L0IL <= "000"&COREApbSram_ii(8 downto 0);
COREApbSram_i01 <= CoREAPBSRAm_o0;
COReApbSram_o01(0) <= CoreApbSram_I0I;
CoreAPBSRAM_L01(0) <= CoreAPBSRAM_O1i;
COREAPBSram_l0 <= COREApbSram_lii;
when 1024 =>
case (CoreApbSram_OI0) is
when 8 =>
CoreAPBSRAM_ii0 <= "11";
CoREAPBSRAm_o00 <= "11";
CoreApbSraM_O0LL <= "000"&CoreApbSraM_LI(8 downto 0);
COREApbSram_l0LL <= "000"&COREAPBSram_li(8 downto 0);
CoREAPBSRAm_l0il <= "000"&CoreAPBSRAM_ii(8 downto 0);
CorEAPBSRAM_i0il <= "000"&CoreApBSRAM_II(8 downto 0);
CoreApbSraM_I01 <= COREAPbSram_o0;
COREAPBSRam_o11 <= CoreApbSraM_O0;
case (COreApbSram_LI(9)) is
when '0' =>
COREApbSram_o01(0) <= CoreApBSRAM_I0i;
when '1' =>
CoreApbSrAM_O01(1) <= CoreAPBSRAM_i0i;
when others =>
null
;
end case;
case (CoreApbSrAM_II(9)) is
when '0' =>
COReApbSram_l01(0) <= CorEAPBSRAm_o1i;
when '1' =>
CoREAPBSRAm_l01(1) <= CoreApbSrAM_O1I;
when others =>
null
;
end case;
case (COREAPBSram_li0(9)) is
when '0' =>
CoreAPBSRAM_l0 <= COreApbSram_LII;
when '1' =>
CoreApbSraM_L0 <= CoreApbSram_OII;
when others =>
null
;
end case;
when others =>
CoreApbSrAM_II0 <= "10";
COREApbSram_o00 <= "10";
COREAPBSRam_o0ll <= "00"&CoreApbSRAM_LI(9 downto 0);
COreApbSram_L0LL <= "00"&COREAPBSram_li(9 downto 0);
CoreApbSram_L0IL <= "00"&CoreApbSram_II(9 downto 0);
COREAPbSram_i0il <= "00"&COREApbSram_ii(9 downto 0);
CoreAPBSRAm_i01(3 downto 0) <= COREApbSram_O0(3 downto 0);
CoreApBSRAM_o11(3 downto 0) <= CoreApBSRAM_o0(7 downto 4);
CorEAPBSram_o01(1 downto 0) <= CoreApBSRAM_i0i&CoreAPBSRam_i0i;
COReApbSraM_L01(1 downto 0) <= COREAPbSram_O1I&CoreApbSRAM_o1i;
CorEAPBSram_l0 <= CoreApbSRAM_OIi(3 downto 0)&CoreApbSRAM_LIi(3 downto 0);
end case;
when 1536 =>
case (CorEAPbSram_oI0) is
when 8 =>
CoreApBSRAM_ii0 <= "11";
CoREAPBSram_o00 <= "11";
CoreApbSRAM_L00 <= "11";
COREAPbSram_o0LL <= "000"&CoreApbSRAM_Li(8 downto 0);
CoREAPbSram_l0LL <= "000"&CoreApbSrAM_LI(8 downto 0);
CoreApBSRAM_i0ll <= "000"&COreApbSRAM_LI(8 downto 0);
CoreAPBSRAm_l0il <= "000"&CorEAPBSram_ii(8 downto 0);
CorEApbSRAM_I0il <= "000"&CoreApbSRAM_II(8 downto 0);
COREAPBSram_o1il <= "000"&CoreApbSraM_II(8 downto 0);
COREAPBSram_i01 <= COREAPBSram_o0;
COREApbSram_o11 <= CoreApbSraM_O0;
CoreApbSRAM_L11 <= COREApbSram_o0;
case (COReApbSram_li(10 downto 9)) is
when "00" =>
CoreApbSram_O01(0) <= CoreApbSraM_I0I;
when "01" =>
CoreApbSram_O01(1) <= CorEAPBSRAM_i0i;
when "10" =>
CoREAPBSRAm_o01(2) <= CoreApbSrAM_I0I;
when "11" =>
COREApbSram_o01(1) <= COREAPBSram_i0i;
when others =>
null
;
end case;
case (CoreApbSRAM_II(10 downto 9)) is
when "00" =>
CoreApbSram_L01(0) <= CoreApbSram_O1I;
when "01" =>
CorEAPBSRAM_l01(1) <= CorEAPBSRAm_o1i;
when "10" =>
CoREAPBSRAm_l01(2) <= COREApbSram_o1i;
when "11" =>
COREAPBSRam_l01(1) <= COReApbSram_o1I;
when others =>
null
;
end case;
case (CoreAPBSRAM_Li0(10 downto 9)) is
when "00" =>
CoreApbSram_L0 <= CoreApbSRAM_LII;
when "01" =>
CoreApbSRAM_L0 <= CoreApBSRAM_Oii;
when "10" =>
CorEAPBSRAm_l0 <= COREAPBSram_ili;
when "11" =>
CorEAPBSRAm_l0 <= CoreApbSraM_OII;
when others =>
null
;
end case;
when others =>
COREApbSram_ii0 <= "10";
CoreAPBSRAM_o00 <= "10";
CoREAPBSRAm_l00 <= "11";
CoreApbSraM_O0LL <= "00"&COREAPBSram_li(9 downto 0);
COREApbSram_l0lL <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSram_I0LL <= "000"&COREAPBSRam_li(8 downto 0);
CoreApbSraM_L0IL <= "00"&CoreApBSRAM_Ii(9 downto 0);
COREApbSram_i0IL <= "00"&CoREAPBSRAm_ii(9 downto 0);
COREAPBSram_o1il <= "000"&COReApbSram_ii(8 downto 0);
COREAPBSRam_i01(3 downto 0) <= COREAPbSram_o0(3 downto 0);
CorEAPBSRAm_o11(3 downto 0) <= CoreAPBSRAM_O0(7 downto 4);
COREApbSram_l11 <= CorEAPBSRAM_o0;
case (COReApbSram_li(10 downto 9)) is
when "00" =>
COREApbSram_o01(1 downto 0) <= COREAPBSRAm_i0i&CoreApbSRAM_I0i;
when "01" =>
COREAPBSram_o01(1 downto 0) <= CoREAPBSRam_i0i&CoreApbSraM_I0I;
when "10" =>
COREApbSram_o01(2) <= CoreApbSRAM_I0I;
when "11" =>
CoreAPBSRAM_o01(1 downto 0) <= COREAPBSram_i0i&CoreApbSRAM_I0i;
when others =>
null
;
end case;
case (COReApbSram_ii(10 downto 9)) is
when "00" =>
CoreApbSraM_L01(1 downto 0) <= CoreApBSRAM_O1i&CoreApbSram_O1I;
when "01" =>
COREAPBSram_l01(1 downto 0) <= CoreApbSraM_O1I&CoreApbSram_O1I;
when "10" =>
CoreApbSRAM_L01(2) <= COReApbSram_o1I;
when "11" =>
CoreApbSRAM_L01(1 downto 0) <= CoreAPBSRAM_o1i&CoreApbSraM_O1I;
when others =>
null
;
end case;
case (COREAPbSram_li0(10 downto 9)) is
when "00" =>
COREAPBSram_l0 <= CoreApbSram_OII(3 downto 0)&CoreApbSraM_LII(3 downto 0);
when "01" =>
CoreApbSraM_L0 <= CoreApbSram_OII(3 downto 0)&CoreAPBSRAM_lii(3 downto 0);
when "10" =>
COREApbSram_l0 <= COreApbSram_ILI;
when "11" =>
CoREAPBSRAm_l0 <= COREAPBSram_oii(3 downto 0)&CoreApbSRAM_LIi(3 downto 0);
when others =>
null
;
end case;
end case;
when 2048 =>
case (COREAPbSram_oi0) is
when 8 =>
COreApbSram_iI0 <= "11";
COReApbSram_o00 <= "11";
CoreApbSram_L00 <= "11";
COREAPbSram_i00 <= "11";
CoREAPBSRAm_o0ll <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSram_L0LL <= "000"&CoreApbSram_LI(8 downto 0);
CoreAPBSRAM_i0ll <= "000"&COREApbSram_li(8 downto 0);
COReApbSraM_O1Ll <= "000"&CoreApbSrAM_LI(8 downto 0);
CoreApbSrAM_L0IL <= "000"&COreApbSram_iI(8 downto 0);
COREAPbSram_i0il <= "000"&COREAPBSRam_ii(8 downto 0);
COREApbSram_o1iL <= "000"&COREAPbSram_ii(8 downto 0);
CoreApbSram_L1IL <= "000"&CoREAPBSRAm_ii(8 downto 0);
COREAPBSram_i01 <= CoreApbSram_O0;
CoreAPBSRAM_O11 <= CoreApbSram_O0;
CoreAPBSRAM_l11 <= CoreApbSram_O0;
COREAPBSram_i11 <= CoreApbSraM_O0;
case (CoreAPBSRAM_li(10 downto 9)) is
when "00" =>
CoreApBSRAM_O01(0) <= COREAPBSram_i0i;
when "01" =>
COREApbSram_o01(1) <= COREAPBSram_i0i;
when "10" =>
CoreAPBSRAM_O01(2) <= COREAPBSRam_i0i;
when "11" =>
COREAPBSram_o01(3) <= CoreApBSRAM_I0i;
when others =>
null
;
end case;
case (COREAPBSRam_ii(10 downto 9)) is
when "00" =>
COREAPBSram_l01(0) <= COREAPbSram_o1i;
when "01" =>
CoREAPBSRAm_l01(1) <= CoreApbSram_O1I;
when "10" =>
CoreApBSRAM_L01(2) <= CoreApbSram_O1I;
when "11" =>
CoreApbSram_L01(3) <= CoREAPBSRAm_o1i;
when others =>
null
;
end case;
case (CoreApbSram_LI0(10 downto 9)) is
when "00" =>
CoreApbSram_L0 <= CoreApbSraM_LII;
when "01" =>
COREAPBSram_l0 <= CoreApbSRAM_Oii;
when "10" =>
CoreAPBSram_l0 <= COREApbSraM_ILI;
when "11" =>
COREApbSram_L0 <= CoreApBSRAM_lli;
when others =>
null
;
end case;
when 4 =>
CoreAPBSRAM_ii0 <= "10";
CoreApbSram_O00 <= "10";
CoreAPBSRAM_l00 <= "10";
CoreApbSram_I00 <= "10";
CoREAPBSRam_o0ll <= "00"&CoreApbSram_LI(9 downto 0);
COREApbSram_l0lL <= "00"&CoreApbSrAM_LI(9 downto 0);
CoreApbSraM_I0LL <= "00"&CoreApbSrAM_LI(9 downto 0);
COREApbSram_o1lL <= "00"&CoreApbSram_LI(9 downto 0);
COreApbSram_l0IL <= "00"&CoreAPBSRAM_ii(9 downto 0);
COreApbSram_I0IL <= "00"&CoreApbSram_II(9 downto 0);
CoreApbSram_O1IL <= "00"&CoreApbSRAM_II(9 downto 0);
CorEAPBSRAM_l1il <= "00"&CoreAPBSRAM_Ii(9 downto 0);
CoreApbSrAM_I01(3 downto 0) <= CoreAPBSRAM_o0(3 downto 0);
COREApbSram_o11(3 downto 0) <= CoreApbSram_O0(7 downto 4);
CoreApbSraM_L11(3 downto 0) <= CorEAPBSRAM_o0(3 downto 0);
CoreApbSram_I11(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
case (CorEAPBSRAM_li(10 downto 9)) is
when "00" =>
CoreApbSRAM_O01(1 downto 0) <= CoreApbSram_I0I&COREAPbSram_i0i;
when "01" =>
CoreApbSrAM_O01(1 downto 0) <= CoreApbSRAM_I0i&CoreApbSram_I0I;
when "10" =>
CoreApbSrAM_O01(3 downto 2) <= COREAPBSram_i0i&CoreApbSrAM_I0I;
when "11" =>
CoreApbSram_O01(3 downto 2) <= CoreApbSrAM_I0I&CoreApbSram_I0I;
when others =>
null
;
end case;
case (CoreAPBSRAM_ii(10 downto 9)) is
when "00" =>
COReApbSram_l01(1 downto 0) <= CoreApbSram_O1I&COREApbSram_o1i;
when "01" =>
CoreApbSrAM_L01(1 downto 0) <= CoreAPBSRAM_O1i&CoreApbSrAM_O1I;
when "10" =>
COREApbSram_l01(3 downto 2) <= COREApbSram_o1i&CorEAPBSRAM_o1i;
when "11" =>
CoreApbSRAM_L01(3 downto 2) <= CoreApbSraM_O1I&COREApbSram_o1i;
when others =>
null
;
end case;
case (CoreApbSram_LI0(10 downto 9)) is
when "00" =>
COREAPBSRam_l0 <= COREApbSram_oii(3 downto 0)&CoREAPBSRAm_lii(3 downto 0);
when "01" =>
CoREAPBSRAm_l0 <= CoreApbSram_OII(3 downto 0)&COREAPbSram_lii(3 downto 0);
when "10" =>
COREAPBSRam_l0 <= CoreApbSraM_LLI(3 downto 0)&COreApbSram_ILI(3 downto 0);
when "11" =>
CoreApbSraM_L0 <= CoreApbSrAM_LLI(3 downto 0)&CoreApbSram_ILI(3 downto 0);
when others =>
null
;
end case;
when others =>
CoreApbSRAM_II0 <= "01";
COreApbSram_O00 <= "01";
COREAPBSram_l00 <= "01";
CoreApbSram_I00 <= "01";
CoreApbSram_O0LL <= '0'&CoREAPBSRAm_li(10 downto 0);
COReApbSram_l0LL <= '0'&CoREAPBSRAm_li(10 downto 0);
CorEAPBSRAM_i0ll <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreApbSrAM_O1LL <= '0'&CoreAPBSRAM_li(10 downto 0);
CoreAPBSRAM_L0il <= '0'&COReApbSram_iI(10 downto 0);
CoreAPBSRAM_i0il <= '0'&COREAPBSram_ii(10 downto 0);
CorEAPBSRAM_o1il <= '0'&CoreApBSRAM_II(10 downto 0);
CoreApbSram_L1IL <= '0'&COReApbSram_ii(10 downto 0);
CoreApbSraM_I01(1 downto 0) <= COreApbSram_o0(1 downto 0);
COREAPBSram_o11(1 downto 0) <= CoreApbSRAM_O0(3 downto 2);
CoreApbSrAM_L11(1 downto 0) <= COREApbSram_o0(5 downto 4);
CoreApBSRAM_I11(1 downto 0) <= CoreApbSraM_O0(7 downto 6);
CoreAPBSRAM_o01(3 downto 0) <= COREAPbSram_i0i&CoreApbSram_I0I&CoreApbSraM_I0I&CoreApbSram_I0I;
COREAPBSram_l01(3 downto 0) <= CoreApBSRAM_O1i&COREAPBSram_o1i&CoreAPBSRAM_o1i&CorEAPBSRAM_o1i;
COREAPBSram_l0 <= CoreApbSram_LLI(1 downto 0)&COREAPBSram_ili(1 downto 0)&COREApbSram_oii(1 downto 0)&COReApbSram_liI(1 downto 0);
end case;
when 2560 =>
case (CorEAPBSRAM_oi0) is
when 8 =>
COreApbSram_iI0 <= "11";
COREApbSram_o00 <= "11";
CoreApbSram_L00 <= "11";
CoREAPBSRAm_i00 <= "11";
COReApbSram_o10 <= "11";
CoreApbSraM_O0LL <= "000"&CorEAPBSRAM_li(8 downto 0);
CoreApbSram_L0LL <= "000"&COreApbSram_lI(8 downto 0);
CoreApbSram_I0LL <= "000"&CoreAPBSRAM_Li(8 downto 0);
COREApbSram_o1ll <= "000"&CoreAPBSRAM_li(8 downto 0);
CoREAPBSRam_l1ll <= "000"&CoreApbSrAM_LI(8 downto 0);
CoreApBSRAM_L0il <= "000"&CoreApbSraM_II(8 downto 0);
CoreApbSram_I0IL <= "000"&COREApbSram_ii(8 downto 0);
CoreApBSRAM_O1il <= "000"&CorEAPBSRAm_ii(8 downto 0);
COREAPBSRam_l1il <= "000"&CoreApbSraM_II(8 downto 0);
COreApbSram_I1IL <= "000"&COReApbSram_ii(8 downto 0);
CoreAPBSRAM_i01 <= CoreApbSram_O0;
CoreApbSraM_O11 <= COREApbSram_o0;
COREApbSram_l11 <= CoREAPBSRAm_o0;
COReApbSram_i11 <= CoreApBSRAM_O0;
COREAPbSram_oool <= CoreApBSRAM_O0;
case (COREAPBSRam_li(11 downto 9)) is
when "000" =>
CoreApbSrAM_O01(0) <= CoreApbSrAM_I0I;
when "001" =>
COreApbSram_o01(1) <= CoreApBSRAM_I0i;
when "010" =>
CoreAPBSRAM_o01(2) <= CoreApbSram_I0I;
when "011" =>
COREAPBSram_o01(3) <= CoreApBSRAM_I0i;
when "100" =>
CoreApbSRAM_O01(4) <= COreApbSram_i0I;
when "101" =>
COreApbSram_o01(1) <= CoreApbSram_I0I;
when "110" =>
COREAPBSram_o01(2) <= CoreApbSRAM_I0I;
when "111" =>
CoreApbSrAM_O01(3) <= COReApbSram_i0I;
when others =>
null
;
end case;
case (CorEAPBSRAm_ii(11 downto 9)) is
when "000" =>
COREAPBSram_l01(0) <= COREApbSram_o1i;
when "001" =>
COREAPBSram_l01(1) <= CoreAPBSRAM_O1i;
when "010" =>
COReApbSram_l01(2) <= COREAPBSram_o1i;
when "011" =>
CoreApbSRAM_L01(3) <= CoreApbSraM_O1I;
when "100" =>
COreApbSram_l01(4) <= CoreApbSram_O1I;
when "101" =>
COreApbSram_L01(1) <= CoreApbSram_O1I;
when "110" =>
CoreApbSRAM_L01(2) <= CoreApbSraM_O1I;
when "111" =>
COREApbSram_l01(3) <= CoreApbSRAM_O1i;
when others =>
null
;
end case;
case (CoreApbSram_LI0(11 downto 9)) is
when "000" =>
CoreApbSRAM_L0 <= CoreApbSram_LII;
when "001" =>
COReApbSram_l0 <= COREAPbSram_oii;
when "010" =>
COreApbSram_l0 <= CoreApbSram_ILI;
when "011" =>
CoreApbSraM_L0 <= CoreApbSrAM_LLI;
when "100" =>
COREApbSram_l0 <= COREAPbSram_o1ol;
when "101" =>
CoreApbSraM_L0 <= COREApbSram_oiI;
when "110" =>
COReApbSram_l0 <= CoreAPBSRAM_Ili;
when "111" =>
CoreApbSRAM_L0 <= CoreApbSrAM_LLI;
when others =>
null
;
end case;
when 4 =>
CoreApbSRAM_II0 <= "10";
CoreApbSRAM_O00 <= "10";
CoreAPBSram_l00 <= "10";
CoreAPBSRam_i00 <= "10";
COreApbSrAM_O10 <= "11";
COREApbSraM_O0LL <= "00"&CoreApbSRAM_LI(9 downto 0);
CoreApbSRAM_L0ll <= "00"&CoreApbSRAM_li(9 downto 0);
CorEAPBSram_i0lL <= "00"&COReApbSraM_LI(9 downto 0);
COreApbSrAM_O1Ll <= "00"&CoreApBSRAM_li(9 downto 0);
COReApbSrAM_L1Ll <= "000"&CoREAPBSram_li(8 downto 0);
CoreAPBSRam_l0iL <= "00"&COREApbSram_II(9 downto 0);
COreApbSrAM_I0il <= "00"&CoreAPBSRam_ii(9 downto 0);
CoreApbSRAM_o1il <= "00"&CorEAPBSram_ii(9 downto 0);
COReApbSraM_L1Il <= "00"&CoreAPBSRam_ii(9 downto 0);
CoreAPBSRAm_i1il <= "000"&CoreApBSRAM_ii(8 downto 0);
COREApbSram_I01(3 downto 0) <= CorEAPBSram_o0(3 downto 0);
CoreApbSRAM_O11(3 downto 0) <= CoreAPBSRAm_o0(7 downto 4);
CoreApBSRAM_l11(3 downto 0) <= COReApbSrAM_O0(3 downto 0);
CoreApBSRAM_i11(3 downto 0) <= CoreApBSRAM_o0(7 downto 4);
COreApbSrAM_OOol <= COREApbSram_O0;
case (COREApbSraM_LI(11 downto 9)) is
when "000" =>
CorEAPbSram_o01(1 downto 0) <= CoreApbSrAM_I0I&CoreApbSraM_I0I;
when "001" =>
CoreAPBSRAM_o01(1 downto 0) <= COREApbSram_i0I&CoreAPBSRAM_i0i;
when "010" =>
COReApbSram_o01(3 downto 2) <= COREApbSram_i0i&COREAPBSram_i0i;
when "011" =>
COREAPBSRam_o01(3 downto 2) <= COREApbSram_i0i&COREAPBSram_i0i;
when "100" =>
CoreApBSRAM_O01(4) <= CoreApbSram_I0I;
when "101" =>
COREAPBSram_o01(1 downto 0) <= CoreApbSram_I0I&COREAPbSram_i0i;
when "110" =>
COREAPBSRam_o01(3 downto 2) <= CoreApBSRAM_I0i&CoreApbSraM_I0I;
when "111" =>
COREAPbSram_o01(3 downto 2) <= COReApbSram_i0I&COREAPBSRAm_i0i;
when others =>
null
;
end case;
case (CoreApbSrAM_II(11 downto 9)) is
when "000" =>
COREAPBSram_l01(1 downto 0) <= CoreApbSram_O1I&COREAPbSram_o1i;
when "001" =>
CoreApbSraM_L01(1 downto 0) <= CoREAPBSRAm_o1i&CoreApbSRAM_O1I;
when "010" =>
CoreApbSrAM_L01(3 downto 2) <= CorEAPBSRAM_o1i&CoreAPBSRAM_O1i;
when "011" =>
CoreApbSRAM_L01(3 downto 2) <= CoreApbSram_O1I&COREAPBSram_o1i;
when "100" =>
CoreApBSRAM_L01(4) <= CoreApbSrAM_O1I;
when "101" =>
CorEAPBSRAM_l01(1 downto 0) <= CoreApbSrAM_O1I&COREApbSram_o1I;
when "110" =>
CoreApbSrAM_L01(3 downto 2) <= CoreAPBSRAM_O1i&CoreApbSram_O1I;
when "111" =>
CoreAPBSRAM_l01(3 downto 2) <= COREAPbSram_o1i&CoreAPBSRAM_o1i;
when others =>
null
;
end case;
case (CoreApbSRAM_LI0(11 downto 9)) is
when "000" =>
CoREAPBSRAm_l0 <= COREApbSram_oii(3 downto 0)&COREApbSram_lii(3 downto 0);
when "001" =>
CoreAPBSRAM_L0 <= CoreApbSraM_OII(3 downto 0)&COreApbSram_lII(3 downto 0);
when "010" =>
COReApbSram_l0 <= CoreApbSRAM_LLi(3 downto 0)&CoreApbSram_ILI(3 downto 0);
when "011" =>
COREAPBSram_l0 <= COreApbSram_LLI(3 downto 0)&COREAPBSram_ili(3 downto 0);
when "100" =>
COREApbSram_l0 <= CoreApbSraM_O1OL;
when "101" =>
COREAPBSram_l0 <= COREApbSram_oii(3 downto 0)&CoreAPBSRAM_lii(3 downto 0);
when "110" =>
COReApbSram_l0 <= CoreApbSrAM_LLI(3 downto 0)&COReApbSram_iLI(3 downto 0);
when "111" =>
CoREAPBSRAm_l0 <= COREApbSram_llI(3 downto 0)&CoreApbSRAM_ILI(3 downto 0);
when others =>
null
;
end case;
when others =>
COREAPBSram_ii0 <= "01";
COREApbSram_o00 <= "01";
CoreAPBSRAM_l00 <= "01";
COReApbSram_i00 <= "01";
COREAPbSram_o10 <= "11";
CoreApbSrAM_O0LL <= '0'&CoreApbSram_LI(10 downto 0);
COREAPBSram_l0ll <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreAPBSRAM_I0ll <= '0'&COReApbSram_li(10 downto 0);
CoreApbSram_O1LL <= '0'&COreApbSram_lI(10 downto 0);
CoreApbSraM_L1LL <= "000"&CorEAPBSRAM_li(8 downto 0);
CoreAPBSRAM_l0il <= '0'&CoreApbSRAM_II(10 downto 0);
CoreApbSraM_I0IL <= '0'&CorEAPBSRAm_ii(10 downto 0);
CoreApBSRAM_O1il <= '0'&COREApbSram_ii(10 downto 0);
CoreApbSrAM_L1IL <= '0'&COREApbSram_ii(10 downto 0);
CorEAPBSRAm_i1il <= "000"&CoreApbSrAM_II(8 downto 0);
CoreApbSraM_I01(1 downto 0) <= CoreApbSram_O0(1 downto 0);
COREAPBSram_o11(1 downto 0) <= CoreApBSRAM_O0(3 downto 2);
CoreApbSram_L11(1 downto 0) <= CoreApbSrAM_O0(5 downto 4);
COREAPBSram_i11(1 downto 0) <= CoreApbSraM_O0(7 downto 6);
COREAPbSram_oool <= COREAPBSRAm_o0;
case (COREApbSram_li(11 downto 9)) is
when "000" =>
COREAPBSRam_o01(3 downto 0) <= CoREAPBSRAm_i0i&CoreApbSrAM_I0I&CoreAPBSRAM_i0i&COREApbSram_i0i;
when "001" =>
CoreAPBSRAM_o01(3 downto 0) <= COREApbSram_i0I&CorEAPBSRAM_i0i&COREApbSram_i0i&CoreApbSram_I0I;
when "010" =>
COreApbSram_o01(3 downto 0) <= CoreApbSraM_I0I&COreApbSram_i0I&CoreApbSram_I0I&COREAPbSram_i0i;
when "011" =>
CoreApbSRAM_O01(3 downto 0) <= CoreApbSram_I0I&COREAPbSram_i0i&COREApbSram_i0I&CoreApbSraM_I0I;
when "100" =>
COREApbSram_o01(4) <= COREAPBSram_i0i;
when "101" =>
CoreApbSram_O01(3 downto 0) <= COREApbSram_i0I&COREAPBSRam_i0i&COREApbSram_i0i&CoreApbSram_I0I;
when "110" =>
CoreApbSrAM_O01(3 downto 0) <= COREApbSram_i0I&COREAPBSram_i0i&COREAPBSram_i0i&CoreApbSraM_I0I;
when "111" =>
COREAPBSram_o01(3 downto 0) <= COREAPBSRam_i0i&CoreApbSRAM_I0I&CoreAPBSRAM_I0i&COREApbSram_i0i;
when others =>
null
;
end case;
case (COREAPBSram_ii(11 downto 9)) is
when "000" =>
COREAPbSram_l01(3 downto 0) <= COREApbSram_o1i&COREAPBSRam_o1i&CoreApbSram_O1I&CoreApBSRAM_O1i;
when "001" =>
CoreApbSraM_L01(3 downto 0) <= COREApbSram_o1i&CoreAPBSRAM_o1i&CorEAPBSRAM_o1i&COREApbSram_o1i;
when "010" =>
CoreAPBSRAM_l01(3 downto 0) <= CoreApbSraM_O1I&COreApbSram_o1I&CoreApbSrAM_O1I&COREAPbSram_o1i;
when "011" =>
COREAPBSram_l01(3 downto 0) <= CoreApbSrAM_O1I&COReApbSraM_O1I&COReApbSraM_O1I&COREAPbSram_o1I;
when "100" =>
CoreApBSRAM_l01(4) <= COREApbSram_O1I;
when "101" =>
CoreApBSRAM_l01(3 downto 0) <= COREApbSram_O1I&CoreApBSRAM_o1i&CoreApbSRAM_o1i&CoreApbSRAM_O1i;
when "110" =>
COREApbSram_l01(3 downto 0) <= CorEAPBSRAM_o1i&COREAPBSram_o1i&COReApbSram_o1I&CoreApbSRAM_O1I;
when "111" =>
CoreApbSram_L01(3 downto 0) <= CoreApbSraM_O1I&COREApbSram_o1i&CoreApbSRAM_O1I&COREAPBSRam_o1i;
when others =>
null
;
end case;
case (CoREAPBSRAm_li0(11 downto 9)) is
when "000" =>
CoreApbSram_L0 <= CoreApbSraM_LLI(1 downto 0)&CoreApbSraM_ILI(1 downto 0)&CoreApbSram_OII(1 downto 0)&CoreApBSRAM_LIi(1 downto 0);
when "001" =>
COREAPBSram_l0 <= CorEAPBSRAm_lli(1 downto 0)&CorEAPBSRAm_ili(1 downto 0)&CoreApbSraM_OII(1 downto 0)&CoREAPBSRAm_lii(1 downto 0);
when "010" =>
CoreApbSRAM_L0 <= CoreApbSram_LLI(1 downto 0)&COReApbSram_ilI(1 downto 0)&CoreApbSram_OII(1 downto 0)&COREAPBSram_lii(1 downto 0);
when "011" =>
COREAPBSram_l0 <= CorEAPBSRAM_lli(1 downto 0)&CoreAPBSRAM_ili(1 downto 0)&CoreAPBSRAM_oii(1 downto 0)&COREAPBSRam_lii(1 downto 0);
when "100" =>
CoreAPBSRAM_l0 <= COREApbSram_o1OL;
when "101" =>
CoreApbSRAM_L0 <= COREAPBSram_lli(1 downto 0)&COREApbSram_ili(1 downto 0)&CoreApbSraM_OII(1 downto 0)&CoreApBSRAM_Lii(1 downto 0);
when "110" =>
COREApbSram_l0 <= CoreApBSRAM_LLi(1 downto 0)&CoreApbSram_ILI(1 downto 0)&CoreApbSRAM_OII(1 downto 0)&CoreApbSram_LII(1 downto 0);
when "111" =>
CoREAPBSRAm_l0 <= COREApbSram_lli(1 downto 0)&COREAPBSram_ili(1 downto 0)&COREApbSram_oii(1 downto 0)&COreApbSram_LII(1 downto 0);
when others =>
null
;
end case;
end case;
when 3072 =>
case (COREApbSram_oi0) is
when 8 =>
CoreApbSRAM_II0 <= "11";
CoreAPBSRAM_O00 <= "11";
CoreApbSRAM_L00 <= "11";
COREApbSram_i00 <= "11";
COREAPBSram_o10 <= "11";
COREAPbSram_l10 <= "11";
COREApbSram_o0LL <= "000"&COREAPBSram_li(8 downto 0);
COREApbSram_l0lL <= "000"&CoreApbSraM_LI(8 downto 0);
COREApbSram_i0lL <= "000"&CoreApbSram_LI(8 downto 0);
CoreApBSRAM_O1ll <= "000"&CoreApbSRAM_LI(8 downto 0);
COreApbSram_l1LL <= "000"&COreApbSram_lI(8 downto 0);
CoreApbSraM_I1LL <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSraM_L0IL <= "000"&CoreApBSRAM_II(8 downto 0);
COREAPBSram_i0il <= "000"&CoreApbSraM_II(8 downto 0);
COREApbSram_o1iL <= "000"&CoreApbSRAM_II(8 downto 0);
CoreApBSRAM_L1il <= "000"&COReApbSram_ii(8 downto 0);
COReApbSram_i1IL <= "000"&COREAPBSram_ii(8 downto 0);
COreApbSram_oO0L <= "000"&CoreApbSrAM_II(8 downto 0);
CoreAPBSRAM_i01 <= CoreApbSraM_O0;
CorEAPBSRAM_o11 <= CoreApbSram_O0;
CoreApbSRAM_L11 <= COREApbSram_o0;
CoreApbSRAM_I11 <= COreApbSram_o0;
CoreApBSRAM_Oool <= COREApbSram_o0;
CoreApbSram_LOOL <= CoreApBSRAM_O0;
case (CoreApbSram_LI(11 downto 9)) is
when "000" =>
CoreApbSram_O01(0) <= CoreApbSrAM_I0I;
when "001" =>
COREAPbSram_o01(1) <= CoreApBSRAM_I0i;
when "010" =>
CoreApbSRAM_O01(2) <= CoreApbSram_I0I;
when "011" =>
CoreApBSRAM_O01(3) <= CoreApbSraM_I0I;
when "100" =>
COREAPBSram_o01(4) <= COREAPBSram_i0i;
when "101" =>
CoreAPBSRAM_O01(5) <= COreApbSram_i0I;
when "110" =>
COREApbSram_o01(2) <= COREAPbSram_i0i;
when "111" =>
COREAPBSram_o01(3) <= CoreApbSRAM_I0I;
when others =>
null
;
end case;
case (CoreApbSRAM_II(11 downto 9)) is
when "000" =>
COREAPBSram_l01(0) <= CoreApbSram_O1I;
when "001" =>
CoreApbSram_L01(1) <= CoreApbSram_O1I;
when "010" =>
COReApbSram_l01(2) <= COREAPBSram_o1i;
when "011" =>
COREAPBSram_l01(3) <= COREAPBSram_o1i;
when "100" =>
COREAPBSram_l01(4) <= COREAPBSram_o1i;
when "101" =>
COREApbSram_l01(5) <= CorEAPBSRAM_o1i;
when "110" =>
CoREAPBSRAm_l01(2) <= CorEAPBSRAM_o1i;
when "111" =>
COReApbSram_l01(3) <= CoreApBSRAM_O1i;
when others =>
null
;
end case;
case (COREAPBSram_li0(11 downto 9)) is
when "000" =>
CorEAPBSRAm_l0 <= COREApbSram_lii;
when "001" =>
CoreAPBSRAM_L0 <= CoREAPBSRAm_oii;
when "010" =>
COREAPBSram_l0 <= COREAPBSram_ili;
when "011" =>
CoREAPBSRam_l0 <= CoreApbSrAM_LLI;
when "100" =>
CoreApBSRAM_L0 <= CoreApbSrAM_O1OL;
when "101" =>
COREAPBSRam_l0 <= COReApbSram_l1OL;
when "110" =>
COreApbSram_l0 <= COreApbSram_ILI;
when "111" =>
CoreApbSRAM_L0 <= CoreApBSRAM_Lli;
when others =>
null
;
end case;
when 4 =>
CoreAPBSRAM_ii0 <= "10";
CoreApbSram_O00 <= "10";
CoreApbSram_L00 <= "10";
COREApbSram_i00 <= "10";
COREApbSram_o10 <= "10";
CorEAPBSRAm_l10 <= "10";
COReApbSram_o0LL <= "00"&COREApbSram_li(9 downto 0);
COREApbSram_l0LL <= "00"&CoREAPBSRAm_li(9 downto 0);
CoreApbSram_I0LL <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSRAM_O1ll <= "00"&COREApbSram_li(9 downto 0);
CoreApbSram_L1LL <= "00"&CoreApbSrAM_LI(9 downto 0);
COREAPBSram_i1ll <= "00"&COREApbSram_li(9 downto 0);
CoreApbSraM_L0IL <= "00"&CoreApbSram_II(9 downto 0);
CoreApbSRAM_I0il <= "00"&COReApbSram_ii(9 downto 0);
CoreApbSrAM_O1IL <= "00"&CoreApbSram_II(9 downto 0);
COReApbSram_l1IL <= "00"&CoreApbSRAM_II(9 downto 0);
CoreApbSraM_I1IL <= "00"&CoreApBSRAM_II(9 downto 0);
CoreApbSraM_OO0L <= "00"&CoreApbSRAM_II(9 downto 0);
CoreApBSRAM_I01(3 downto 0) <= COREApbSram_o0(3 downto 0);
CoreApbSrAM_O11(3 downto 0) <= CoreApbSram_O0(7 downto 4);
COReApbSram_l11(3 downto 0) <= COReApbSram_o0(3 downto 0);
CoREAPBSRAm_i11(3 downto 0) <= CoreApbSram_O0(7 downto 4);
CoreApbSrAM_OOOL(3 downto 0) <= CorEAPBSRAM_o0(3 downto 0);
COREAPBSram_lool(3 downto 0) <= CoreApbSram_O0(7 downto 4);
case (CoreApbSram_LI(11 downto 9)) is
when "000" =>
CoreApbSrAM_O01(1 downto 0) <= COREApbSram_I0I&COREAPbSram_i0I;
when "001" =>
CoreApBSRAM_o01(1 downto 0) <= CoreAPBSRam_i0i&COREApbSram_I0I;
when "010" =>
CoreApBSRAM_o01(3 downto 2) <= CoreAPBSRam_i0i&COReApbSraM_I0I;
when "011" =>
COREAPBSram_o01(3 downto 2) <= CoreApbSRAM_i0i&CoREAPBSram_i0I;
when "100" =>
CorEAPBSram_o01(5 downto 4) <= CoreApbSRAM_I0i&CoreApbSRAM_i0i;
when "101" =>
CoreApBSRAM_o01(5 downto 4) <= CoreAPBSRAM_i0i&CoreApbSRAM_I0i;
when "110" =>
COReApbSraM_O01(3 downto 2) <= CoreApbSRAM_I0i&COREAPbSram_i0I;
when "111" =>
CorEAPbSram_o01(3 downto 2) <= COREApbSram_I0I&CoreApbSRAM_I0i;
when others =>
null
;
end case;
case (CoreAPBSRAM_ii(11 downto 9)) is
when "000" =>
COREApbSram_L01(1 downto 0) <= CorEAPBSram_o1i&COREApbSraM_O1I;
when "001" =>
CoreApbSrAM_L01(1 downto 0) <= COREAPBSram_o1I&CoreApbSRAM_o1i;
when "010" =>
COREApbSram_L01(3 downto 2) <= COREApbSram_O1I&COReApbSraM_O1I;
when "011" =>
COREApbSram_L01(3 downto 2) <= CoREAPBSram_o1I&COREApbSram_O1I;
when "100" =>
CoreApBSRAM_l01(5 downto 4) <= COreApbSrAM_O1i&CoreAPBSRAM_o1i;
when "101" =>
COREApbSram_L01(5 downto 4) <= CoreApbSRAM_o1i&CorEAPBSram_o1i;
when "110" =>
CoreAPBSRAm_l01(3 downto 2) <= CoreAPBSRAm_o1i&CoREAPBSram_o1I;
when "111" =>
CoreApbSrAM_L01(3 downto 2) <= CoREAPbSram_o1I&CorEAPBSram_o1i;
when others =>
null
;
end case;
case (COreApbSrAM_LI0(11 downto 9)) is
when "000" =>
CoreAPBSRam_l0 <= COREApbSram_OII(3 downto 0)&CoreApbSRAM_Lii(3 downto 0);
when "001" =>
COReApbSraM_L0 <= COreApbSrAM_OIi(3 downto 0)&CoreApbSRAM_Lii(3 downto 0);
when "010" =>
COreApbSraM_L0 <= COreApbSrAM_LLI(3 downto 0)&CoreApbSRAM_ILi(3 downto 0);
when "011" =>
CoreAPBSRAM_l0 <= CoREAPBSram_llI(3 downto 0)&CorEAPBSram_ili(3 downto 0);
when "100" =>
CorEAPBSram_l0 <= COreApbSrAM_L1Ol(3 downto 0)&CoreApbSRAM_O1ol(3 downto 0);
when "101" =>
COreApbSrAM_L0 <= CoreApbSRAM_L1ol(3 downto 0)&CoreApbSRAM_o1ol(3 downto 0);
when "110" =>
CoreApbSRAM_l0 <= CoreApbSRAM_LLi(3 downto 0)&COREApbSram_ILI(3 downto 0);
when "111" =>
CoreApBSRAM_l0 <= COREApbSram_LLI(3 downto 0)&CoreAPBSRAm_ili(3 downto 0);
when others =>
null
;
end case;
when others =>
COreApbSrAM_II0 <= "01";
COreApbSrAM_O00 <= "01";
CoreApbSRAM_l00 <= "01";
COREApbSram_I00 <= "01";
CoreApbSRAM_O10 <= "10";
CoREAPBSram_l10 <= "10";
CorEAPBSram_o0LL <= '0'&COREAPbSram_lI(10 downto 0);
CoreAPBSRAm_l0ll <= '0'&CoreApbSRAM_li(10 downto 0);
CoreAPBSRAM_i0ll <= '0'&COREApbSram_li(10 downto 0);
COREAPBSram_o1ll <= '0'&COREAPBSram_li(10 downto 0);
CoreApbSram_L1LL <= "00"&CoreApbSraM_LI(9 downto 0);
CoreApBSRAM_I1ll <= "00"&CoreApbSRAM_LI(9 downto 0);
COREAPBSram_l0il <= '0'&COREAPBSram_ii(10 downto 0);
COREApbSram_i0IL <= '0'&COREAPBSram_ii(10 downto 0);
COreApbSram_o1IL <= '0'&COREAPBSram_ii(10 downto 0);
COReApbSram_l1IL <= '0'&CoreApbSraM_II(10 downto 0);
CoreAPBSRAM_i1il <= "00"&CorEAPBSRAm_ii(9 downto 0);
CorEAPBSRAm_oo0l <= "00"&COREAPBSram_ii(9 downto 0);
CoreApbSraM_I01(1 downto 0) <= COREAPBSram_o0(1 downto 0);
COREAPBSRam_o11(1 downto 0) <= COReApbSram_o0(3 downto 2);
CoreAPBSRAM_L11(1 downto 0) <= CoreAPBSRAM_o0(5 downto 4);
CoreAPBSRAM_i11(1 downto 0) <= COREAPBSram_o0(7 downto 6);
COreApbSram_OOOL(3 downto 0) <= COREAPBSRam_o0(3 downto 0);
COREApbSram_looL(3 downto 0) <= CoreApbSraM_O0(7 downto 4);
case (COREAPBSram_li(11 downto 9)) is
when "000" =>
COREAPBSram_o01(3 downto 0) <= COREAPBSram_i0i&CorEAPBSRAM_i0i&CoreApbSram_I0I&CoreAPBSRAM_I0i;
when "001" =>
CorEAPBSRAM_o01(3 downto 0) <= CorEAPBSRAM_i0i&CoreApbSraM_I0I&CorEAPBSRAM_i0i&COREApbSram_i0i;
when "010" =>
COREAPBSram_o01(3 downto 0) <= CoreApbSrAM_I0I&COreApbSram_I0I&CoreApbSraM_I0I&COREAPBSram_i0i;
when "011" =>
COREApbSram_o01(3 downto 0) <= CorEAPBSRAm_i0i&CoreApbSraM_I0I&CorEAPBSRAM_i0i&COReApbSram_i0I;
when "100" =>
CorEAPBSRAM_o01(5 downto 4) <= CoreApBSRAM_I0i&COreApbSram_I0I;
when "101" =>
COREAPBSram_o01(5 downto 4) <= CoreApbSram_I0I&COReApbSram_i0I;
when "110" =>
CoreApbSrAM_O01(3 downto 0) <= COREAPbSram_i0i&COREAPBSRam_i0i&COREApbSram_i0I&CoreApBSRAM_I0i;
when "111" =>
CoreApbSram_O01(3 downto 0) <= COREAPBSram_i0i&CoreAPBSRAM_I0i&COREAPBSram_i0i&COReApbSram_i0I;
when others =>
null
;
end case;
case (CoreApbSraM_II(11 downto 9)) is
when "000" =>
CoreApbSraM_L01(3 downto 0) <= CoreApbSRAM_O1i&CoreApbSrAM_O1I&COREApbSram_o1i&CoreApbSRAM_O1I;
when "001" =>
COREAPBSram_l01(3 downto 0) <= COreApbSram_o1I&COREAPBSRam_o1i&COREAPBSram_o1i&CoreApbSram_O1I;
when "010" =>
COREAPbSram_l01(3 downto 0) <= COREAPbSram_o1i&COREAPBSram_o1i&COREApbSram_o1i&CoreApbSraM_O1I;
when "011" =>
COREApbSram_l01(3 downto 0) <= CoreApbSRAM_O1I&COreApbSram_o1I&CoreApbSram_O1I&CoreAPBSRam_o1i;
when "100" =>
CoreApbSRAM_l01(5 downto 4) <= CorEAPBSram_o1I&CoREAPBSram_o1I;
when "101" =>
COREApbSram_L01(5 downto 4) <= CoREAPBSram_o1I&CoreApbSRAM_o1i;
when "110" =>
CoreAPBSram_l01(3 downto 0) <= COREApbSraM_O1I&CoREAPBSram_o1I&CoreApbSRAM_o1i&CoreAPBSRam_o1i;
when "111" =>
COREAPbSram_l01(3 downto 0) <= CoreApbSRAM_O1i&CoreApbSrAM_O1i&COREApbSram_O1I&CoREAPBSram_o1I;
when others =>
null
;
end case;
case (CoreApbSram_LI0(11 downto 9)) is
when "000" =>
CoreApbSRAM_L0 <= CoreApbSram_LLI(1 downto 0)&CoreApbSram_ILI(1 downto 0)&COREAPbSram_oii(1 downto 0)&COREAPBSram_lii(1 downto 0);
when "001" =>
COREAPbSram_l0 <= COREApbSram_llI(1 downto 0)&COREAPbSram_ili(1 downto 0)&CoreAPBSRAM_oii(1 downto 0)&CoREAPBSRAm_lii(1 downto 0);
when "010" =>
CoreApbSraM_L0 <= CoreApbSraM_LLI(1 downto 0)&CoreApbSram_ILI(1 downto 0)&CoreApbSrAM_OII(1 downto 0)&COREApbSram_lii(1 downto 0);
when "011" =>
CoreAPBSRAM_l0 <= COreApbSram_LLI(1 downto 0)&CoreApbSraM_ILI(1 downto 0)&CoreApbSraM_OII(1 downto 0)&CorEAPBSRAM_lii(1 downto 0);
when "100" =>
COREAPBSRam_l0 <= COREAPBSram_l1ol(3 downto 0)&COREApbSram_o1oL(3 downto 0);
when "101" =>
CoreAPBSRAM_L0 <= COREAPbSram_l1ol(3 downto 0)&COREApbSram_o1oL(3 downto 0);
when "110" =>
CoreApbSraM_L0 <= CoreAPBSRAM_lli(1 downto 0)&CorEAPBSRAM_ili(1 downto 0)&CoreAPBSRAM_oii(1 downto 0)&COREApbSram_lii(1 downto 0);
when "111" =>
CoreApbSrAM_L0 <= COReApbSram_lLI(1 downto 0)&COREAPbSram_ili(1 downto 0)&COREApbSram_oii(1 downto 0)&CoreApbSram_LII(1 downto 0);
when others =>
null
;
end case;
end case;
when 3584 =>
case (COREAPBSRam_oi0) is
when 8 =>
COREAPbSram_ii0 <= "11";
COreApbSram_o00 <= "11";
CoreApbSraM_L00 <= "11";
CoreApbSram_I00 <= "11";
CoreApbSraM_O10 <= "11";
COReApbSram_l10 <= "11";
COreApbSram_I10 <= "11";
COREApbSram_o0LL <= "000"&CoreApbSRAM_LI(8 downto 0);
CoreApbSram_L0LL <= "000"&COreApbSram_lI(8 downto 0);
CoreApbSraM_I0LL <= "000"&CoreApbSrAM_LI(8 downto 0);
CorEAPBSRAm_o1ll <= "000"&CorEAPBSRAM_li(8 downto 0);
CoreApBSRAM_L1ll <= "000"&CoreApbSraM_LI(8 downto 0);
CoreAPBSRAM_i1ll <= "000"&COREAPBSRam_li(8 downto 0);
COREAPBSram_ooil <= "000"&COREApbSram_li(8 downto 0);
CoreApbSraM_L0IL <= "000"&COREAPBSram_ii(8 downto 0);
CoreApbSram_I0IL <= "000"&CoreAPBSRAM_ii(8 downto 0);
COreApbSram_o1IL <= "000"&CoreApbSram_II(8 downto 0);
COREApbSram_l1iL <= "000"&CoreApbSram_II(8 downto 0);
CoreApbSraM_I1IL <= "000"&COREAPBSram_ii(8 downto 0);
COREApbSram_oo0L <= "000"&COReApbSram_ii(8 downto 0);
CoreApbSram_LO0L <= "000"&COReApbSram_ii(8 downto 0);
CoreApbSram_I01 <= CoreApbSram_O0;
CoreAPBSRAM_O11 <= COReApbSram_o0;
CoreApbSram_L11 <= COREAPBSram_o0;
CoreApbSraM_I11 <= COReApbSram_o0;
CoreApbSrAM_OOOL <= COREAPBSram_o0;
COReApbSram_loOL <= CoreApbSRAM_O0;
COREAPBSram_iool <= CoreApBSRAM_O0;
case (COReApbSram_lI(11 downto 9)) is
when "000" =>
COREAPBSram_o01(0) <= COREAPBSram_i0i;
when "001" =>
CorEAPBSRAM_o01(1) <= COREAPBSram_i0i;
when "010" =>
COREAPBSram_o01(2) <= CoreApbSram_I0I;
when "011" =>
CoreApbSram_O01(3) <= CoreApbSram_I0I;
when "100" =>
COREApbSram_o01(4) <= COREAPBSRam_i0i;
when "101" =>
COREApbSram_o01(5) <= CoreApbSraM_I0I;
when "110" =>
COReApbSram_o01(6) <= COREAPBSram_i0i;
when "111" =>
COREAPBSRam_o01(3) <= COREAPBSRam_i0i;
when others =>
null
;
end case;
case (COreApbSram_II(11 downto 9)) is
when "000" =>
CoreApbSram_L01(0) <= COREApbSram_o1i;
when "001" =>
COREAPbSram_l01(1) <= CorEAPBSRAM_o1i;
when "010" =>
COREApbSram_l01(2) <= CoreApBSRAM_O1i;
when "011" =>
CoreApBSRAM_L01(3) <= CoreAPBSRAM_O1i;
when "100" =>
CoreApBSRAM_L01(4) <= CoreApbSram_O1I;
when "101" =>
COreApbSram_l01(5) <= COREAPBSram_o1i;
when "110" =>
COREAPbSram_l01(6) <= CoreAPBSRAM_o1i;
when "111" =>
COREApbSram_l01(3) <= CoreAPBSRAM_o1i;
when others =>
null
;
end case;
case (COREApbSram_li0(11 downto 9)) is
when "000" =>
COREApbSram_l0 <= COREApbSram_lii;
when "001" =>
CorEAPBSRAm_l0 <= CoREAPBSRAm_oii;
when "010" =>
COREApbSram_l0 <= COREAPBSram_ili;
when "011" =>
COREApbSram_l0 <= COREAPBSRam_lli;
when "100" =>
CorEAPBSRAM_l0 <= CoreAPBSRAM_o1ol;
when "101" =>
COREApbSram_l0 <= COreApbSram_L1OL;
when "110" =>
CoreApbSRAM_L0 <= CorEAPBSRAM_i1ol;
when "111" =>
COReApbSram_l0 <= CoreAPBSRAM_lli;
when others =>
null
;
end case;
when 4 =>
COREAPBSram_ii0 <= "10";
COREApbSram_o00 <= "10";
COREApbSram_l00 <= "10";
CoreApbSraM_I00 <= "10";
CoreAPBSRAM_o10 <= "10";
CoreApbSram_L10 <= "10";
CoreApbSRAM_I10 <= "11";
CoreApbSRAM_O0Ll <= "00"&CoreApbSrAM_LI(9 downto 0);
COREApbSram_l0lL <= "00"&CoreApbSram_LI(9 downto 0);
CoreApBSRAM_I0ll <= "00"&CoreAPBSRAM_Li(9 downto 0);
COREApbSram_o1LL <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSraM_L1LL <= "00"&CoreApbSram_LI(9 downto 0);
CoreApBSRAM_I1ll <= "00"&CoreAPBSRAM_Li(9 downto 0);
COREAPBSram_ooil <= "000"&COREAPBSram_li(8 downto 0);
COREAPBSRam_l0il <= "00"&CoreAPBSRAM_ii(9 downto 0);
COREApbSram_i0il <= "00"&COREApbSram_ii(9 downto 0);
COreApbSram_O1IL <= "00"&COREAPBSRam_ii(9 downto 0);
COreApbSram_L1IL <= "00"&COREAPBSram_ii(9 downto 0);
COREAPBSram_i1il <= "00"&CoreApbSrAM_II(9 downto 0);
CoreApBSRAM_OO0l <= "00"&CoreApbSram_II(9 downto 0);
COREApbSram_lo0L <= "000"&COreApbSram_iI(8 downto 0);
COREAPBSram_i01(3 downto 0) <= CoreApbSrAM_O0(3 downto 0);
CoreApbSrAM_O11(3 downto 0) <= COREApbSram_o0(7 downto 4);
CorEAPBSRAM_l11(3 downto 0) <= COREApbSram_o0(3 downto 0);
COREApbSram_i11(3 downto 0) <= COREApbSram_o0(7 downto 4);
CoreApBSRAm_oool(3 downto 0) <= CoreApbSRAM_O0(3 downto 0);
COREApbSram_LOOL(3 downto 0) <= CoreAPBSRAm_o0(7 downto 4);
CoreAPBSram_iooL <= COreApbSRAM_O0;
case (COReApbSraM_LI(11 downto 9)) is
when "000" =>
COReApbSraM_O01(1 downto 0) <= COREApbSraM_I0I&COREAPbSram_I0I;
when "001" =>
CoreApBSRAM_o01(1 downto 0) <= CoreApbSRAM_i0i&COreApbSrAM_I0i;
when "010" =>
CoreAPBSram_o01(3 downto 2) <= COreApbSrAM_I0i&CoreApbSRAM_i0i;
when "011" =>
COreApbSrAM_O01(3 downto 2) <= CoreAPBSRam_i0i&COREApbSram_I0I;
when "100" =>
CoreApbSRAM_o01(5 downto 4) <= CorEAPBSram_i0I&COreApbSrAM_I0i;
when "101" =>
CoreApbSRAM_O01(5 downto 4) <= CoreApBSRAM_i0i&CoreApbSRAM_I0i;
when "110" =>
COReApbSram_O01(6) <= CoreApbSRAM_I0i;
when "111" =>
CoreApBSRAM_o01(3 downto 2) <= CorEAPBSram_i0I&COREAPbSram_i0I;
when others =>
null
;
end case;
case (CoREAPbSram_II(11 downto 9)) is
when "000" =>
CoreApBSRam_l01(1 downto 0) <= CoreAPBSram_o1i&CoreApbSRAM_O1i;
when "001" =>
CoreApbSRAM_L01(1 downto 0) <= COREAPBSram_o1i&CoreApBSRAM_O1i;
when "010" =>
COREAPBSram_l01(3 downto 2) <= COREAPBSram_o1i&CorEAPBSRAM_o1i;
when "011" =>
COReApbSram_l01(3 downto 2) <= COReApbSram_o1I&COREAPbSram_o1i;
when "100" =>
COREAPBSram_l01(5 downto 4) <= COREAPBSram_o1i&COREAPBSram_o1i;
when "101" =>
COReApbSram_l01(5 downto 4) <= COREAPBSram_o1i&CoreApbSRAM_O1i;
when "110" =>
CoreApbSraM_L01(6) <= CoreApbSram_O1I;
when "111" =>
CoreApbSram_L01(3 downto 2) <= CoreApbSram_O1I&COREAPbSram_o1i;
when others =>
null
;
end case;
case (CoreApbSram_LI0(11 downto 9)) is
when "000" =>
CoreApbSram_L0 <= COREApbSram_oii(3 downto 0)&CoreApbSraM_LII(3 downto 0);
when "001" =>
CoreAPBSRAM_l0 <= COREApbSram_oiI(3 downto 0)&COREApbSram_lii(3 downto 0);
when "010" =>
COREAPBSRam_l0 <= COreApbSram_lLI(3 downto 0)&COreApbSram_ILI(3 downto 0);
when "011" =>
CoREAPBSRAm_l0 <= COReApbSram_llI(3 downto 0)&COREApbSram_ili(3 downto 0);
when "100" =>
CoreApbSRAM_L0 <= CoREAPBSRam_l1ol(3 downto 0)&COREAPbSram_o1ol(3 downto 0);
when "101" =>
COREAPBSram_l0 <= CoreApbSRAM_L1Ol(3 downto 0)&CoreApbSrAM_O1OL(3 downto 0);
when "110" =>
CoreAPBSRAM_l0 <= CoREAPBSRAm_i1ol;
when "111" =>
CoreApbSram_L0 <= CoreApbSrAM_LLI(3 downto 0)&COREApbSram_ili(3 downto 0);
when others =>
null
;
end case;
when others =>
CoreApbSram_II0 <= "01";
CoREAPBSRAm_o00 <= "01";
CoreAPBSRAM_l00 <= "01";
COREApbSram_i00 <= "01";
CoreAPBSRAM_o10 <= "10";
CoreApBSRAM_L10 <= "10";
CorEAPBSRAm_i10 <= "11";
COREApbSram_o0lL <= '0'&COREAPBSram_li(10 downto 0);
COreApbSram_L0LL <= '0'&CoreApbSram_LI(10 downto 0);
COREAPBSram_i0ll <= '0'&CoreApbSram_LI(10 downto 0);
COREApbSram_o1ll <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreAPBSRAM_l1ll <= "00"&COREApbSram_li(9 downto 0);
CoreApbSraM_I1LL <= "00"&CoreApbSRAM_LI(9 downto 0);
CoREAPBSRAm_ooil <= "000"&COREApbSram_li(8 downto 0);
CoreApbSraM_L0IL <= '0'&CoreApbSraM_II(10 downto 0);
CoreApbSram_I0IL <= '0'&CoreApbSram_II(10 downto 0);
COReApbSram_o1IL <= '0'&CorEAPBSRAM_ii(10 downto 0);
CoreApbSrAM_L1IL <= '0'&CoreApbSrAM_II(10 downto 0);
CoreApbSraM_I1IL <= "00"&COREAPBSram_ii(9 downto 0);
CoreApbSram_OO0L <= "00"&CoreAPBSRAM_Ii(9 downto 0);
COReApbSram_lo0L <= "000"&COREApbSram_ii(8 downto 0);
CoreApbSram_I01(1 downto 0) <= COreApbSram_o0(1 downto 0);
CoreApbSraM_O11(1 downto 0) <= COREApbSram_o0(3 downto 2);
COREAPbSram_l11(1 downto 0) <= CorEAPBSRAm_o0(5 downto 4);
CoreAPBSRAM_i11(1 downto 0) <= COReApbSram_o0(7 downto 6);
CoreApbSram_OOOL(3 downto 0) <= CoreApbSRAM_O0(3 downto 0);
CoreApbSrAM_LOOL(3 downto 0) <= CorEAPBSRAM_o0(7 downto 4);
CoREAPBSRAm_iool <= CoreApbSram_O0;
case (CoreApbSraM_LI(11 downto 9)) is
when "000" =>
CoreApbSram_O01(3 downto 0) <= CoreApbSram_I0I&COREApbSram_i0i&CoreApbSraM_I0I&CoreApBSRAM_I0i;
when "001" =>
CoreApbSram_O01(3 downto 0) <= CoreAPBSRAM_i0i&CoreApbSraM_I0I&CoreApbSRAM_I0I&COREAPBSRam_i0i;
when "010" =>
CoreApbSRAM_O01(3 downto 0) <= CoreAPBSRAM_i0i&CoreApbSrAM_I0I&CoreApbSRAM_I0i&COREAPBSram_i0i;
when "011" =>
CoreAPBSRAM_O01(3 downto 0) <= CoreApbSrAM_I0I&CoreApbSram_I0I&CoreAPBSRAM_i0i&COREAPBSram_i0i;
when "100" =>
CoreApbSrAM_O01(5 downto 4) <= CoreAPBSRAM_i0i&CoreApbSram_I0I;
when "101" =>
COREAPbSram_o01(5 downto 4) <= CoreApbSrAM_I0I&COREApbSram_i0I;
when "110" =>
COREAPBSRam_o01(6) <= COREApbSram_i0i;
when "111" =>
COReApbSram_o01(3 downto 0) <= COREApbSram_i0i&CoreApBSRAM_I0i&COREAPBSRam_i0i&COREApbSram_i0i;
when others =>
null
;
end case;
case (COreApbSram_iI(11 downto 9)) is
when "000" =>
CoreApbSRAM_L01(3 downto 0) <= CoreApbSRAM_O1i&COreApbSram_O1I&CoreApbSram_O1I&CoreApbSRAM_O1I;
when "001" =>
COREApbSram_l01(3 downto 0) <= COREAPBSram_o1i&CorEAPBSRAM_o1i&COREAPbSram_o1i&CoreApbSraM_O1I;
when "010" =>
CoreApbSram_L01(3 downto 0) <= COREAPBSram_o1i&CoreApbSRAM_O1I&CoreAPBSRAM_o1i&COREApbSram_o1i;
when "011" =>
CoreApbSram_L01(3 downto 0) <= COREApbSram_o1i&CorEAPBSRAM_o1i&COREAPbSram_o1i&CoreApbSram_O1I;
when "100" =>
CoreAPBSRAM_l01(5 downto 4) <= CoreApbSram_O1I&CoreApbSram_O1I;
when "101" =>
COREAPBSram_l01(5 downto 4) <= CoreApbSram_O1I&COREAPBSram_o1i;
when "110" =>
CoreApbSRAM_L01(6) <= CoREAPBSRAm_o1i;
when "111" =>
CorEAPBSRAm_l01(3 downto 0) <= CoreAPBSRAM_o1i&CoreApbSraM_O1I&CoreApbSram_O1I&CoreApBSRAM_O1i;
when others =>
null
;
end case;
case (CoreApbSraM_LI0(11 downto 9)) is
when "000" =>
CoREAPBSram_l0 <= COreApbSrAM_LLI(1 downto 0)&COreApbSrAM_ILI(1 downto 0)&CoREAPBSram_oiI(1 downto 0)&CoreApbSRAM_lii(1 downto 0);
when "001" =>
CoreApbSRAM_L0 <= COReApbSram_llI(1 downto 0)&CoreApBSRAM_Ili(1 downto 0)&COreApbSram_oII(1 downto 0)&COREApbSram_lii(1 downto 0);
when "010" =>
CoreApbSRAM_L0 <= CoreApbSraM_LLI(1 downto 0)&CoreAPBSRAM_ili(1 downto 0)&CoreAPBSRAM_Oii(1 downto 0)&CoreApbSram_LII(1 downto 0);
when "011" =>
COReApbSram_l0 <= COREApbSram_lli(1 downto 0)&CoreApBSRAM_Ili(1 downto 0)&CoreApbSraM_OII(1 downto 0)&COREApbSram_liI(1 downto 0);
when "100" =>
CoreApbSrAM_L0 <= CoreApbSrAM_L1OL(3 downto 0)&CoreApbSRAM_O1ol(3 downto 0);
when "101" =>
CoreApbSram_L0 <= COREAPBSram_l1ol(3 downto 0)&COREAPBSram_o1ol(3 downto 0);
when "110" =>
CoreApbSRAM_L0 <= COREApbSram_i1OL;
when "111" =>
CoreApbSram_L0 <= COREApbSram_lli(1 downto 0)&COREAPBSram_ili(1 downto 0)&CoreApbSraM_OII(1 downto 0)&COREAPbSram_lii(1 downto 0);
when others =>
null
;
end case;
end case;
when 4096 =>
case (COREAPbSram_oi0) is
when 8 =>
COREAPBSram_ii0 <= "11";
CoreApbSram_O00 <= "11";
CoreAPBSRAM_l00 <= "11";
CoREAPBSRAm_i00 <= "11";
COREAPBSRam_o10 <= "11";
CoreAPBSRAM_l10 <= "11";
COREApbSram_i10 <= "11";
COREAPBSram_oo1 <= "11";
CorEAPBSRAM_o0ll <= "000"&COREApbSram_li(8 downto 0);
CoREAPBSRAm_l0ll <= "000"&CoreApbSraM_LI(8 downto 0);
COREApbSram_i0lL <= "000"&COREApbSram_li(8 downto 0);
CoreApbSrAM_O1LL <= "000"&CoreApBSRAM_Li(8 downto 0);
COREApbSram_l1lL <= "000"&CoreApbSraM_LI(8 downto 0);
CoreApbSraM_I1LL <= "000"&CoreAPBSRAM_Li(8 downto 0);
COREApbSram_ooil <= "000"&CoreAPBSRAM_Li(8 downto 0);
CoreApbSram_LOIL <= "000"&COREApbSram_li(8 downto 0);
CoreAPBSRAM_L0il <= "000"&COREAPBSram_ii(8 downto 0);
COREApbSram_i0IL <= "000"&COReApbSram_ii(8 downto 0);
CoreApbSraM_O1IL <= "000"&CoreApbSRAM_II(8 downto 0);
CoreAPBSRAM_L1il <= "000"&CoreApbSraM_II(8 downto 0);
CoreAPBSRAM_i1il <= "000"&CoreApbSrAM_II(8 downto 0);
CoreApBSRAM_Oo0l <= "000"&COREAPBSRam_ii(8 downto 0);
COREAPBSram_lo0l <= "000"&CoreApbSram_II(8 downto 0);
COREAPBSram_io0l <= "000"&COREApbSram_ii(8 downto 0);
COREApbSram_i01 <= CoreApBSRAM_O0;
COREAPbSram_o11 <= CoreApbSram_O0;
CoreApBSRAM_L11 <= COREApbSram_o0;
CoreAPBSRAM_I11 <= CoreApbSraM_O0;
CoreAPBSRAM_oool <= CoreApbSram_O0;
CoreAPBSRAM_Lool <= CoreApbSraM_O0;
CorEAPBSRAM_iool <= CoreApBSRAM_O0;
COREApbSram_olOL <= CorEAPBSRAM_o0;
case (COreApbSram_lI(11 downto 9)) is
when "000" =>
COReApbSram_o01(0) <= CoreAPBSRAM_i0i;
when "001" =>
CoreApbSraM_O01(1) <= CoreApbSRAM_I0i;
when "010" =>
CoreApbSRAM_O01(2) <= CoreApbSRAM_I0I;
when "011" =>
COREApbSram_o01(3) <= CoREAPBSRAm_i0i;
when "100" =>
CoreApBSRAM_O01(4) <= CoreApbSrAM_I0I;
when "101" =>
CoreApBSRAM_O01(5) <= COREAPBSram_i0i;
when "110" =>
CorEAPBSRAm_o01(6) <= COREAPbSram_i0i;
when "111" =>
COREAPbSram_o01(7) <= COREAPBSram_i0i;
when others =>
null
;
end case;
case (CorEAPBSRAM_ii(11 downto 9)) is
when "000" =>
CoreApbSRAM_L01(0) <= COREAPbSram_o1i;
when "001" =>
CoREAPBSRAm_l01(1) <= CoreApbSrAM_O1I;
when "010" =>
CoreApbSRAM_L01(2) <= COREAPbSram_o1i;
when "011" =>
COREApbSram_l01(3) <= CoreAPBSRAM_O1i;
when "100" =>
COREApbSram_l01(4) <= COReApbSram_o1I;
when "101" =>
COReApbSram_l01(5) <= COREAPbSram_o1i;
when "110" =>
CoreApbSraM_L01(6) <= COreApbSram_O1I;
when "111" =>
CoreApbSram_L01(7) <= COREApbSram_o1i;
when others =>
null
;
end case;
case (CoreApbSrAM_LI0(11 downto 9)) is
when "000" =>
CorEAPBSRAM_l0 <= COREAPBSram_lii;
when "001" =>
COREAPBSram_l0 <= COReApbSram_oiI;
when "010" =>
CoreApBSRAM_L0 <= CoreApBSRAM_Ili;
when "011" =>
CorEAPBSRAM_l0 <= CorEAPBSRAM_lli;
when "100" =>
COREApbSram_l0 <= COREAPBSram_o1ol;
when "101" =>
CoreApbSraM_L0 <= CorEAPBSRAM_l1ol;
when "110" =>
COREApbSram_l0 <= CoREAPBSRAm_i1ol;
when "111" =>
COREAPBSram_l0 <= COreApbSram_OOLL;
when others =>
null
;
end case;
when 4 =>
COreApbSram_II0 <= "10";
CorEAPBSRAm_o00 <= "10";
CoreApbSRAM_L00 <= "10";
COReApbSram_i00 <= "10";
CoreApbSram_O10 <= "10";
COREApbSram_l10 <= "10";
CoreAPBSRAM_i10 <= "10";
CoreApbSram_OO1 <= "10";
CoreAPBSRAM_o0ll <= "00"&CoreApbSraM_LI(9 downto 0);
CoreApbSraM_L0LL <= "00"&CoreApbSraM_LI(9 downto 0);
COREApbSram_i0lL <= "00"&COREApbSram_li(9 downto 0);
CoreApbSram_O1LL <= "00"&CoreApbSrAM_LI(9 downto 0);
COREApbSram_l1lL <= "00"&COREApbSram_li(9 downto 0);
COREAPBSram_i1ll <= "00"&CoreApbSraM_LI(9 downto 0);
CoreApbSRAM_OOil <= "00"&COREAPBSRam_li(9 downto 0);
CoreApbSram_LOIL <= "00"&CoreApbSram_LI(9 downto 0);
CoreAPBSRAM_l0il <= "00"&COReApbSram_iI(9 downto 0);
COREApbSram_i0iL <= "00"&COREApbSram_ii(9 downto 0);
CoreApbSraM_O1IL <= "00"&COREApbSram_ii(9 downto 0);
CoreApbSram_L1IL <= "00"&COREApbSram_ii(9 downto 0);
COreApbSram_I1IL <= "00"&COREApbSram_ii(9 downto 0);
CoreApbSRAM_OO0l <= "00"&CoreApbSRAM_II(9 downto 0);
COREAPBSRam_lo0l <= "00"&CoreApbSRAM_II(9 downto 0);
CoREAPBSRam_io0l <= "00"&COREApbSram_ii(9 downto 0);
COREApbSram_i01(3 downto 0) <= COREApbSram_o0(3 downto 0);
COReApbSram_o11(3 downto 0) <= CoreApBSRAM_O0(7 downto 4);
COreApbSram_l11(3 downto 0) <= COREApbSram_o0(3 downto 0);
CoreApbSram_I11(3 downto 0) <= CoreApbSraM_O0(7 downto 4);
CoreAPBSRAM_oool(3 downto 0) <= COREAPBSram_o0(3 downto 0);
COREApbSram_looL(3 downto 0) <= CoreApbSraM_O0(7 downto 4);
CoreApbSram_IOOL(3 downto 0) <= COREApbSram_o0(3 downto 0);
COREAPBSram_olol(3 downto 0) <= COREAPBSRam_o0(7 downto 4);
case (CoreApBSram_lI(11 downto 9)) is
when "000" =>
CoreAPBSRAM_o01(1 downto 0) <= CoreApBSRAm_i0i&CoreAPBSRam_i0i;
when "001" =>
COREApbSram_O01(1 downto 0) <= CoreAPBSram_i0I&CorEAPBSram_i0i;
when "010" =>
COreApbSrAM_O01(3 downto 2) <= COREApbSram_I0I&COReApbSrAM_I0I;
when "011" =>
CoreApbSRAM_o01(3 downto 2) <= CoreAPBSRAm_i0i&COREApbSram_I0I;
when "100" =>
COreApbSrAM_O01(5 downto 4) <= CoreApbSRAM_I0i&CoreApbSRAM_i0i;
when "101" =>
CoREAPBSram_o01(5 downto 4) <= COREApbSram_I0I&COReApbSraM_I0I;
when "110" =>
COREApbSram_O01(7 downto 6) <= COREAPbSram_i0I&CoreApbSRAM_I0i;
when "111" =>
CoreApbSRAM_O01(7 downto 6) <= CoreApbSRAM_i0i&COREAPbSram_i0I;
when others =>
null
;
end case;
case (CoREApbSraM_II(11 downto 9)) is
when "000" =>
CoreApbSRAM_l01(1 downto 0) <= CoreAPbSram_o1I&CoreAPBSRam_o1i;
when "001" =>
CoreApbSraM_L01(1 downto 0) <= CoreApbSRAM_O1i&CoreApBSRAM_O1i;
when "010" =>
COREApbSram_l01(3 downto 2) <= CoREAPBSRAm_o1i&COREApbSram_o1i;
when "011" =>
COREAPBSram_l01(3 downto 2) <= CoreApbSram_O1I&CoreApbSram_O1I;
when "100" =>
CoreAPBSRAM_l01(5 downto 4) <= COREAPbSram_o1i&COREAPBSram_o1i;
when "101" =>
CoreApbSram_L01(5 downto 4) <= COREAPBSram_o1i&CorEAPBSRAM_o1i;
when "110" =>
COReApbSram_l01(7 downto 6) <= COREApbSram_o1I&COReApbSram_o1I;
when "111" =>
COREApbSram_l01(7 downto 6) <= CoreApBSRAM_O1i&CoreApbSram_O1I;
when others =>
null
;
end case;
case (COReApbSram_li0(11 downto 9)) is
when "000" =>
COREApbSram_l0 <= COREAPBSram_oii(3 downto 0)&COreApbSram_lII(3 downto 0);
when "001" =>
CorEAPBSRAM_l0 <= COREApbSram_oii(3 downto 0)&COREAPbSram_lii(3 downto 0);
when "010" =>
CoreApbSram_L0 <= COREApbSram_llI(3 downto 0)&CoreApbSram_ILI(3 downto 0);
when "011" =>
CoreApbSram_L0 <= CoreApbSRAM_LLi(3 downto 0)&CoreApbSram_ILI(3 downto 0);
when "100" =>
CorEAPBSRAm_l0 <= CoreApbSraM_L1OL(3 downto 0)&CoreAPBSRAM_o1ol(3 downto 0);
when "101" =>
CoreApbSrAM_L0 <= COREAPBSram_l1ol(3 downto 0)&CoreAPBSRAM_o1ol(3 downto 0);
when "110" =>
CoreApbSram_L0 <= CoreAPBSRAM_ooll(3 downto 0)&CoreApbSRAM_I1Ol(3 downto 0);
when "111" =>
CoreApbSram_L0 <= CoreApbSraM_OOLL(3 downto 0)&CoreApbSram_I1OL(3 downto 0);
when others =>
null
;
end case;
when 2 =>
COREApbSram_ii0 <= "01";
COREAPBSRam_o00 <= "01";
COREAPbSram_l00 <= "01";
CoreApbSRAM_I00 <= "01";
COreApbSram_O10 <= "01";
CoreApbSraM_L10 <= "01";
CoreApbSram_I10 <= "01";
CoREAPBSRAm_oo1 <= "01";
CoreAPBSRAM_o0ll <= '0'&CoreApbSraM_LI(10 downto 0);
COREAPBSram_l0ll <= '0'&CoreApbSrAM_LI(10 downto 0);
CoreApbSRAM_I0Ll <= '0'&CoreApBSRAM_Li(10 downto 0);
CoreApbSrAM_O1LL <= '0'&CoreApbSraM_LI(10 downto 0);
COReApbSram_l1LL <= '0'&COREAPBSRam_li(10 downto 0);
COReApbSram_i1LL <= '0'&CorEAPBSRAM_li(10 downto 0);
COREAPBSram_ooil <= '0'&CoreAPBSRAM_li(10 downto 0);
CoreApbSRAM_LOil <= '0'&CoreApBSRAM_Li(10 downto 0);
CoreAPBSRAM_l0il <= '0'&COREAPBSram_ii(10 downto 0);
COREAPbSram_i0il <= '0'&CoreAPBSRAM_ii(10 downto 0);
CoreApbSram_O1IL <= '0'&COREAPbSram_ii(10 downto 0);
CoreApBSRAM_L1il <= '0'&CoreApbSrAM_II(10 downto 0);
COReApbSram_i1IL <= '0'&COREAPBSRam_ii(10 downto 0);
CoreApbSraM_OO0L <= '0'&COREApbSram_ii(10 downto 0);
COREApbSram_lo0L <= '0'&CoreApbSRAM_II(10 downto 0);
COREAPbSram_io0l <= '0'&COREAPBSRam_ii(10 downto 0);
CorEAPBSRAm_i01(1 downto 0) <= COREApbSram_o0(1 downto 0);
CoreApbSraM_O11(1 downto 0) <= CoreApbSraM_O0(3 downto 2);
CoreApbSRAM_L11(1 downto 0) <= COREAPBSram_o0(5 downto 4);
COREApbSram_i11(1 downto 0) <= CoreAPBSRAM_O0(7 downto 6);
CorEAPBSRAM_oool(1 downto 0) <= CoreApbSRAM_O0(1 downto 0);
CoreAPBSRAM_lool(1 downto 0) <= COREAPBSRam_o0(3 downto 2);
CoreApbSraM_IOOL(1 downto 0) <= COREAPBSram_o0(5 downto 4);
COREAPbSram_olol(1 downto 0) <= CoreApbSRAM_O0(7 downto 6);
case (CoreApbSram_LI(11 downto 9)) is
when "000" =>
COREApbSram_o01(3 downto 0) <= COREAPBSRam_i0i&CoreAPBSRAM_i0i&COREAPbSram_i0i&COreApbSram_i0I;
when "001" =>
CoreAPBSRAM_o01(3 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CoreApbSram_I0I&CoreApbSrAM_I0I;
when "010" =>
COReApbSram_o01(3 downto 0) <= COReApbSram_i0I&COREAPBSRAm_i0i&COREAPBSRam_i0i&COREApbSram_i0i;
when "011" =>
CorEAPBSRAm_o01(3 downto 0) <= COREApbSram_i0i&COREAPBSRAm_i0i&COreApbSram_i0I&CoreApbSRAM_I0I;
when "100" =>
CoreApbSram_O01(7 downto 4) <= CoreApBSRAM_I0i&CoreApbSraM_I0I&CoreApbSrAM_I0I&CorEAPBSRAM_i0i;
when "101" =>
CoreApbSram_O01(7 downto 4) <= COREApbSram_i0i&CoREAPBSRAm_i0i&COREAPbSram_i0i&COREApbSram_i0I;
when "110" =>
COREAPBSram_o01(7 downto 4) <= CoreApbSram_I0I&COReApbSram_i0I&CoreApbSram_I0I&CoreApBSRAM_I0i;
when "111" =>
CoreApbSram_O01(7 downto 4) <= CoREAPBSRAm_i0i&CoreApbSram_I0I&CoreApbSram_I0I&CoREAPBSRAm_i0i;
when others =>
null
;
end case;
case (COREApbSram_ii(11 downto 9)) is
when "000" =>
CoreApbSrAM_L01(3 downto 0) <= CoreApbSram_O1I&COREApbSram_o1i&CoreApbSraM_O1I&CoreApbSrAM_O1I;
when "001" =>
CoreAPBSRAM_l01(3 downto 0) <= CorEAPBSRAM_o1i&CoreApbSram_O1I&CoreApBSRAM_O1i&COREAPBSram_o1i;
when "010" =>
CoreApbSRAM_L01(3 downto 0) <= COreApbSram_o1I&COREAPBSram_o1i&COREApbSram_o1i&COREApbSram_o1i;
when "011" =>
CoreApbSRAM_L01(3 downto 0) <= COReApbSraM_O1I&CoreApBSRAM_o1i&COREApbSram_O1I&CoreAPBSRAm_o1i;
when "100" =>
CoreApbSRAM_L01(7 downto 4) <= CoreApbSRAM_O1i&CoreApbSRAM_o1i&CoreAPBSRAM_o1i&CoreAPBSram_o1I;
when "101" =>
CoreApbSram_L01(7 downto 4) <= CoreApbSram_O1I&CoreApBSRAM_O1i&COReApbSram_o1I&CoreAPBSRAM_o1i;
when "110" =>
CorEAPBSRAm_l01(7 downto 4) <= COreApbSram_O1I&COREApbSram_o1i&CoreApbSrAM_O1I&COREAPbSram_o1i;
when "111" =>
COREApbSram_l01(7 downto 4) <= COREAPBSram_o1i&COREAPBSram_o1i&COreApbSram_O1I&CoreAPBSRAM_O1i;
when others =>
null
;
end case;
case (CoreAPBSRAM_Li0(11 downto 9)) is
when "000" =>
CoreAPBSRAM_l0 <= COREApbSram_lli(1 downto 0)&COREApbSram_ili(1 downto 0)&CoreApbSraM_OII(1 downto 0)&COReApbSram_liI(1 downto 0);
when "001" =>
CorEAPBSRAM_l0 <= CoreApbSraM_LLI(1 downto 0)&CoreApbSraM_ILI(1 downto 0)&CoreApbSram_OII(1 downto 0)&COREAPBSRam_lii(1 downto 0);
when "010" =>
CoreApbSRAM_L0 <= CoreAPBSRAM_lli(1 downto 0)&CoREAPBSRAm_ili(1 downto 0)&CoreApbSraM_OII(1 downto 0)&COreApbSram_lII(1 downto 0);
when "011" =>
CoreApbSram_L0 <= CoreApbSram_LLI(1 downto 0)&CoreApbSraM_ILI(1 downto 0)&COREApbSram_oii(1 downto 0)&CoREAPBSRam_lii(1 downto 0);
when "100" =>
CoreApBSRAM_L0 <= CoreApbSraM_OOLL(1 downto 0)&CorEAPBSRAM_i1ol(1 downto 0)&COREAPBSram_l1ol(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when "101" =>
CoreApbSraM_L0 <= CoreApbSraM_OOLL(1 downto 0)&CoREAPBSRAm_i1ol(1 downto 0)&COREApbSram_l1OL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when "110" =>
COREAPBSram_l0 <= CoreAPBSRAM_Ooll(1 downto 0)&CoreAPBSRAM_I1ol(1 downto 0)&CoreApbSram_L1OL(1 downto 0)&COREAPBSRam_o1ol(1 downto 0);
when "111" =>
CoreAPBSRAM_l0 <= CoreApbSrAM_OOLL(1 downto 0)&COREAPBSram_i1ol(1 downto 0)&CoreApbSrAM_L1OL(1 downto 0)&CoreAPBSRAM_O1ol(1 downto 0);
when others =>
null
;
end case;
when others =>
CoreApbSram_II0 <= "00";
CoreAPBSRAM_o00 <= "00";
CoreAPBSRAM_L00 <= "00";
CoreApbSraM_I00 <= "00";
COReApbSram_o10 <= "00";
CoreApBSRAM_L10 <= "00";
COREAPBSram_i10 <= "00";
COreApbSram_oO1 <= "00";
CoreApbSraM_O0LL <= CoREAPBSRAm_li(11 downto 0);
CoreApbSrAM_L0LL <= COREAPBSram_li(11 downto 0);
COREApbSram_i0LL <= COREApbSram_li(11 downto 0);
CoreApbSrAM_O1LL <= COREAPbSram_li(11 downto 0);
CoreApbSram_L1LL <= COReApbSram_li(11 downto 0);
COreApbSram_I1LL <= COReApbSram_li(11 downto 0);
COREAPbSram_ooil <= CoreApbSRAM_LI(11 downto 0);
CorEAPBSRAM_loil <= COREApbSram_li(11 downto 0);
CoreAPBSRAM_l0il <= CoreAPBSRAM_ii(11 downto 0);
COREAPBSRam_i0il <= CoreApBSRAM_Ii(11 downto 0);
COREAPBSRam_o1il <= CoreApbSRAM_II(11 downto 0);
CoreApbSram_L1IL <= COREApbSram_ii(11 downto 0);
COReApbSram_i1IL <= CorEAPBSRAM_ii(11 downto 0);
COREAPbSram_oo0l <= COreApbSram_iI(11 downto 0);
CoreApbSram_LO0L <= COREApbSram_ii(11 downto 0);
CoreApbSraM_IO0L <= COreApbSram_iI(11 downto 0);
CoreAPBSRAM_i01(0) <= CoreApbSraM_O0(0);
CoreAPBSRAM_O11(0) <= CoreApbSRAM_O0(1);
COREAPBSRam_l11(0) <= CoreApbSram_O0(2);
CoreAPBSRAM_i11(0) <= CoreApbSraM_O0(3);
CoreApbSraM_OOOL(0) <= COREAPBSram_o0(4);
CorEAPBSRAM_lool(0) <= COREAPbSram_o0(5);
COReApbSram_ioOL(0) <= CoreApBSRAM_O0(6);
CoreApbSRAM_OLOl(0) <= CoreApBSRAM_O0(7);
case (CoreApbSrAM_LI(11 downto 9)) is
when "000" =>
CoreApBSRAM_O01(7 downto 0) <= CoREAPBSRAm_i0i&CoREAPBSRAm_i0i&COreApbSram_i0I&CoreApbSrAM_I0I&COREAPBSram_i0i&COreApbSram_I0I&CoreApbSrAM_I0I&COREAPBSram_i0i;
when "001" =>
CoreApbSram_O01(7 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CoreAPBSRAM_i0i&COReApbSram_i0I&CoreApbSram_I0I&CoreApBSRAM_I0i&COREAPBSram_i0i&CoreApbSraM_I0I;
when "010" =>
CoreApbSram_O01(7 downto 0) <= CoREAPBSRam_i0i&COREAPBSRam_i0i&COReApbSram_i0I&CoreApbSraM_I0I&CoreApBSRAM_I0i&COReApbSram_i0I&COreApbSram_i0I&CoreApbSrAM_I0I;
when "011" =>
CoreApbSraM_O01(7 downto 0) <= CoreApbSRAM_I0i&CoreApbSRAM_I0I&COREAPBSRam_i0i&COReApbSram_i0I&CoreApbSraM_I0I&CoreApBSRAM_I0i&COREApbSram_i0i&CoreApbSram_I0I;
when "100" =>
COReApbSram_o01(7 downto 0) <= CoreApbSram_I0I&COreApbSram_I0I&CoreAPBSRAM_i0i&COREApbSram_i0i&COreApbSram_i0I&CoREAPBSRAm_i0i&COREAPBSram_i0i&COREApbSram_i0I;
when "101" =>
COREApbSram_o01(7 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CoreAPBSRAM_i0i&COreApbSram_i0I&CoreApbSram_I0I&CoreAPBSRAM_i0i&CoreAPBSRAM_i0i&COREAPbSram_i0i;
when "110" =>
CoreAPBSRAM_O01(7 downto 0) <= CoreApbSRAM_I0i&CoreApbSraM_I0I&CoreApBSRAM_I0i&CoreApbSram_I0I&CoreAPBSRAM_i0i&COREApbSram_i0i&COReApbSram_i0I&CoreApbSrAM_I0I;
when "111" =>
COREAPbSram_o01(7 downto 0) <= CoreApbSraM_I0I&COreApbSram_i0I&CoreApbSram_I0I&COREAPBSram_i0i&COREApbSram_i0i&CoreApbSram_I0I&CoreApbSram_I0I&CorEAPBSRAM_i0i;
when others =>
null
;
end case;
case (CoreAPBSRAM_Ii(11 downto 9)) is
when "000" =>
CoreApBSRAM_L01(7 downto 0) <= COREAPBSram_o1i&CoreApBSRAM_O1i&COreApbSram_o1I&CoreApBSRAM_O1i&COREAPBSram_o1i&COreApbSram_O1I&CoreApbSraM_O1I&CoreApBSRAM_O1i;
when "001" =>
CoreApbSRAM_L01(7 downto 0) <= CoreApbSrAM_O1I&CoreApbSraM_O1I&CoreAPBSRAM_o1i&COReApbSram_o1I&CoreApbSram_O1I&CoreAPBSRAM_o1i&COREAPBSram_o1i&CoreApbSraM_O1I;
when "010" =>
CoreApBSRAM_L01(7 downto 0) <= COREAPBSram_o1i&CoreAPBSRAM_o1i&CoREAPBSRAm_o1i&CoreApbSram_O1I&CoreApbSrAM_O1I&COREAPBSRam_o1i&COREApbSram_o1i&CoreApbSram_O1I;
when "011" =>
COREApbSram_l01(7 downto 0) <= COREApbSram_o1i&COREAPBSram_o1i&COREApbSram_o1I&CoreApbSRAM_O1I&CorEAPBSRAM_o1i&COREApbSram_o1i&COreApbSram_O1I&CoreApBSRAM_O1i;
when "100" =>
CoreApbSram_L01(7 downto 0) <= CorEAPBSRAM_o1i&CorEAPBSRAM_o1i&COREAPBSRam_o1i&CoreApbSram_O1I&CoreApbSRAM_O1i&COREAPbSram_o1i&COREApbSram_o1I&CoreApbSram_O1I;
when "101" =>
COREApbSram_l01(7 downto 0) <= COreApbSram_O1I&COREApbSram_o1i&COREAPbSram_o1i&CoreApbSram_O1I&CoREAPBSRam_o1i&COREApbSram_o1i&CoreApbSram_O1I&CoreApbSRAM_O1i;
when "110" =>
CoreApBSRAM_l01(7 downto 0) <= COReApbSraM_O1I&CorEAPBSram_o1I&CoreApBSRAM_o1i&CoreAPBSRam_o1i&COREAPbSram_o1I&CoreAPBSRam_o1i&CoreAPBSRam_o1i&COREApbSram_O1I;
when "111" =>
COReApbSraM_L01(7 downto 0) <= CoreAPBSram_o1I&CoreAPBSRam_o1i&CoreAPBSRam_o1i&COREAPbSram_O1I&CorEAPBSram_o1I&COreApbSraM_O1I&COREApbSram_O1I&CoreAPBSRAm_o1i;
when others =>
null
;
end case;
case (COReApbSraM_LI0(11 downto 9)) is
when "000" =>
CoreAPBSRAM_l0 <= CoreAPBSRAm_ooll(0)&CoREAPBSram_i1OL(0)&CoreAPBSRAm_l1ol(0)&CoreAPBSRAm_o1ol(0)&CoreApbSRAM_LLi(0)&CoreAPBSRAm_ili(0)&COreApbSrAM_OIi(0)&CoreAPBSRam_lii(0);
when "001" =>
COreApbSrAM_L0 <= COReApbSraM_OOLL(0)&COREApbSram_I1OL(0)&COREApbSram_L1OL(0)&COREApbSram_O1OL(0)&CoreAPBSRam_lli(0)&COREApbSram_ILI(0)&COREAPbSram_oII(0)&CoreApbSRAM_Lii(0);
when "010" =>
COREApbSram_L0 <= CoreApbSRAM_OOll(0)&COREApbSram_i1ol(0)&COREAPbSram_l1ol(0)&COREApbSram_o1oL(0)&COREAPbSram_lli(0)&CoreApbSrAM_ILI(0)&COREAPbSram_oii(0)&COREAPBSram_lii(0);
when "011" =>
COREAPBSRam_l0 <= COREApbSram_oolL(0)&CoreAPBSRAM_i1ol(0)&COREApbSram_l1oL(0)&CoreApbSram_O1OL(0)&COreApbSram_LLI(0)&CoreApbSram_ILI(0)&COREApbSram_oii(0)&COREAPBSRam_lii(0);
when "100" =>
CoreApbSram_L0 <= CorEAPBSRAM_ooll(0)&CoREAPBSRAm_i1ol(0)&COREApbSram_l1oL(0)&CoreApbSram_O1OL(0)&CoreApbSrAM_LLI(0)&CoreApbSrAM_ILI(0)&COreApbSram_OII(0)&CoreAPBSRAM_lii(0);
when "101" =>
CoreApbSram_L0 <= CoREAPBSRam_ooll(0)&CoreAPBSRAM_i1ol(0)&CoreApbSram_L1OL(0)&CoreAPBSRAM_o1ol(0)&COREApbSram_llI(0)&COReApbSram_ilI(0)&COREApbSram_oii(0)&CoreAPBSRAM_lii(0);
when "110" =>
COreApbSram_l0 <= CoREAPBSRAm_ooll(0)&COREAPBSram_i1ol(0)&CorEAPBSRAm_l1ol(0)&COREAPBSRam_o1ol(0)&COREApbSram_lli(0)&CoreApbSram_ILI(0)&CoreApbSram_OII(0)&CoreApbSRAM_LII(0);
when "111" =>
CoreApbSraM_L0 <= CoreApbSram_OOLL(0)&CoreApbSram_I1OL(0)&CorEAPBSRAM_l1ol(0)&COREAPbSram_o1ol(0)&COREApbSram_lli(0)&COREApbSram_ili(0)&CoreApbSram_OII(0)&CoreApbSraM_LII(0);
when others =>
null
;
end case;
end case;
when 4608 =>
case (CoreApbSrAM_OI0) is
when 8 =>
COREAPBSram_ii0 <= "11";
CoreApbSram_O00 <= "11";
COREAPbSram_l00 <= "11";
COREAPbSram_i00 <= "11";
CoREAPBSRAm_o10 <= "11";
COREApbSram_l10 <= "11";
COREAPbSram_i10 <= "11";
COREApbSram_oo1 <= "11";
CorEAPBSRAM_lo1 <= "11";
COREApbSram_o0ll <= "000"&COreApbSram_LI(8 downto 0);
CoreApbSraM_L0LL <= "000"&COREApbSram_li(8 downto 0);
CorEAPBSRAm_i0ll <= "000"&CoreApbSraM_LI(8 downto 0);
CoreApbSRAM_O1LL <= "000"&CoreApbSram_LI(8 downto 0);
COREAPBSRam_l1ll <= "000"&COREApbSram_li(8 downto 0);
CoreApbSram_I1LL <= "000"&CoreApbSRAM_LI(8 downto 0);
CoREAPBSRAm_ooil <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSRAM_LOil <= "000"&COREAPBSram_li(8 downto 0);
CoreApbSram_IOIL <= "000"&COreApbSram_lI(8 downto 0);
COREAPBSram_l0il <= "000"&COREAPBSram_ii(8 downto 0);
COREApbSram_i0IL <= "000"&COREAPBSRam_ii(8 downto 0);
COreApbSram_o1IL <= "000"&CoreApbSraM_II(8 downto 0);
CoreApbSRAM_L1il <= "000"&CorEAPBSRAM_ii(8 downto 0);
COreApbSram_i1IL <= "000"&CoreApbSraM_II(8 downto 0);
COREAPBSRam_oo0l <= "000"&CorEAPBSRAm_ii(8 downto 0);
COREAPBSRam_lo0l <= "000"&COreApbSram_iI(8 downto 0);
CoreApbSRAM_IO0l <= "000"&CoreApbSrAM_II(8 downto 0);
CoreApbSram_OL0L <= "000"&CoreAPBSRAM_Ii(8 downto 0);
COreApbSram_i01 <= COREAPbSram_o0;
CoreApbSRAM_O11 <= CoreApbSrAM_O0;
CoreAPBSRAM_l11 <= COREApbSram_o0;
CoreAPBSRAM_I11 <= COREAPBSram_o0;
CoreApbSraM_OOOL <= COREApbSram_o0;
CoreApbSRAM_LOOl <= COReApbSram_o0;
CoreApbSRAM_IOOl <= COREApbSram_o0;
COREAPBSRam_olol <= CoreApbSram_O0;
COREAPBSram_llol <= CoreApBSRAM_O0;
case (COREApbSram_li(12 downto 9)) is
when "0000" =>
COReApbSram_o01(0) <= CoreApbSRAM_I0I;
when "0001" =>
COREApbSram_o01(1) <= COREApbSram_i0i;
when "0010" =>
COREApbSram_o01(2) <= CoreApbSram_I0I;
when "0011" =>
CoREAPBSRam_o01(3) <= CoreApbSRAM_I0i;
when "0100" =>
COREAPBSram_o01(4) <= CorEAPBSRAM_i0i;
when "0101" =>
CoreApbSram_O01(5) <= CoreApbSrAM_I0I;
when "0110" =>
COREAPBSRam_o01(6) <= CoreAPBSRAM_i0i;
when "0111" =>
CoreAPBSRAM_O01(7) <= COREAPbSram_i0i;
when "1000" =>
CoreApbSraM_O01(8) <= CoreApbSram_I0I;
when "1001" =>
CoreAPBSRAM_o01(1) <= COREAPbSram_i0i;
when "1010" =>
COREAPbSram_o01(2) <= CorEAPBSRAm_i0i;
when "1011" =>
COREApbSram_o01(3) <= CoreApBSRAM_I0i;
when "1100" =>
CoreApbSrAM_O01(4) <= CoreApbSram_I0I;
when "1101" =>
CoreApbSram_O01(5) <= CoreApbSram_I0I;
when "1110" =>
COREAPBSram_o01(6) <= CoreApbSram_I0I;
when "1111" =>
CoreApbSram_O01(7) <= CoreApbSram_I0I;
when others =>
null
;
end case;
case (CoreApbSram_II(12 downto 9)) is
when "0000" =>
COreApbSrAM_L01(0) <= COREApbSram_O1I;
when "0001" =>
CoreApbSRAM_L01(1) <= CoREAPbSram_o1I;
when "0010" =>
CoreAPBSRAm_l01(2) <= COREApbSram_O1I;
when "0011" =>
COREAPBSRam_l01(3) <= CorEAPBSRAm_o1i;
when "0100" =>
COREAPBSram_l01(4) <= CoreApBSRAM_O1i;
when "0101" =>
CorEAPBSRAm_l01(5) <= COREApbSram_o1i;
when "0110" =>
CorEAPBSRAM_l01(6) <= CoreAPBSRAM_o1i;
when "0111" =>
COreApbSram_l01(7) <= CoreApbSRAM_O1I;
when "1000" =>
CoreApbSrAM_L01(8) <= COREAPBSram_o1i;
when "1001" =>
COREAPBSram_l01(1) <= CoREAPBSRAm_o1i;
when "1010" =>
COREAPBSram_l01(2) <= COReApbSram_o1I;
when "1011" =>
CoREAPBSRAm_l01(3) <= CoREAPBSRAm_o1i;
when "1100" =>
CoreApbSRAM_L01(4) <= CoREAPBSRAm_o1i;
when "1101" =>
CoreAPBSRAM_l01(5) <= CoreAPBSRAM_o1i;
when "1110" =>
COReApbSram_l01(6) <= CoreApbSram_O1I;
when "1111" =>
COREApbSram_l01(7) <= COREApbSram_o1i;
when others =>
null
;
end case;
case (COREApbSram_li0(12 downto 9)) is
when "0000" =>
CoreApbSRAM_L0 <= COREAPBSRam_lii;
when "0001" =>
COREApbSram_l0 <= COREAPbSram_oii;
when "0010" =>
CoreApbSram_L0 <= CoreAPBSRAM_ili;
when "0011" =>
CoreApbSram_L0 <= CoreApbSRAM_LLI;
when "0100" =>
COREAPbSram_l0 <= COreApbSram_O1OL;
when "0101" =>
COreApbSram_l0 <= CoreAPBSRAM_L1ol;
when "0110" =>
COReApbSram_l0 <= CoreApbSrAM_I1OL;
when "0111" =>
CoREAPBSRam_l0 <= CoreApbSram_OOLL;
when "1000" =>
COREAPBSram_l0 <= COREAPbSram_loll;
when "1001" =>
CoreApbSram_L0 <= COREAPbSram_oii;
when "1010" =>
COreApbSram_l0 <= COREAPBSram_ili;
when "1011" =>
CoreApbSram_L0 <= COreApbSram_lLI;
when "1100" =>
CoreApbSraM_L0 <= CoreApbSRAM_O1OL;
when "1101" =>
CoreApbSram_L0 <= CoreApbSram_L1OL;
when "1110" =>
CoreApbSram_L0 <= CoreApbSraM_I1OL;
when "1111" =>
COREAPBSram_l0 <= COREAPbSram_ooll;
when others =>
null
;
end case;
when 4 =>
COREApbSram_ii0 <= "10";
CoreApbSram_O00 <= "10";
CoreApbSraM_L00 <= "10";
CoreApbSram_I00 <= "10";
CoreApBSRAM_O10 <= "10";
CorEAPBSRAm_l10 <= "10";
CoreApbSRAM_I10 <= "10";
CoreApBSRAM_Oo1 <= "10";
COREAPBSram_lo1 <= "11";
COReApbSram_o0LL <= "00"&CoreApBSRAM_LI(9 downto 0);
CoreApbSRAM_L0Ll <= "00"&CorEAPBSRAM_li(9 downto 0);
CoreApbSRAM_I0Ll <= "00"&CoreApbSrAM_LI(9 downto 0);
COREAPbSram_o1ll <= "00"&CoreApbSraM_LI(9 downto 0);
CorEAPBSRAM_l1ll <= "00"&CoREAPBSRAm_li(9 downto 0);
COReApbSram_i1LL <= "00"&CoreApbSraM_LI(9 downto 0);
COREAPBSram_ooil <= "00"&COREApbSram_li(9 downto 0);
CoreApbSram_LOIL <= "00"&CoreApbSRAM_LI(9 downto 0);
COReApbSram_ioIL <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSraM_L0IL <= "00"&COREAPbSram_ii(9 downto 0);
CorEAPBSRAM_i0il <= "00"&COREApbSram_ii(9 downto 0);
COREApbSram_o1iL <= "00"&COREApbSram_ii(9 downto 0);
CoreApbSRAM_L1il <= "00"&CoREAPBSRAm_ii(9 downto 0);
CoreAPBSRAM_i1il <= "00"&CoREAPBSRAm_ii(9 downto 0);
CoreApbSram_OO0L <= "00"&COREAPBSRam_ii(9 downto 0);
COREApbSram_lo0L <= "00"&CoreApbSram_II(9 downto 0);
CoreApbSRAM_IO0l <= "00"&COREApbSram_ii(9 downto 0);
CoreAPBSRAM_ol0l <= "000"&COReApbSram_ii(8 downto 0);
COREAPbSram_i01(3 downto 0) <= COREAPBSram_o0(3 downto 0);
CoreAPBSRAM_o11(3 downto 0) <= COREAPBSram_o0(7 downto 4);
COReApbSram_l11(3 downto 0) <= CoreAPBSRAM_O0(3 downto 0);
COreApbSram_i11(3 downto 0) <= CoreAPBSRAM_o0(7 downto 4);
CoreApbSram_OOOL(3 downto 0) <= CoreApbSRAM_O0(3 downto 0);
CoreApbSRAM_LOol(3 downto 0) <= CoreApBSRAM_O0(7 downto 4);
CoreAPBSRAM_iool(3 downto 0) <= CoreApbSram_O0(3 downto 0);
CoreApbSram_OLOL(3 downto 0) <= CoreApbSram_O0(7 downto 4);
CoreApbSram_LLOL <= CoreApbSram_O0;
case (COREAPBSram_li(12 downto 9)) is
when "0000" =>
COREAPBSram_o01(1 downto 0) <= COReApbSram_i0I&COREApbSram_i0i;
when "0001" =>
CoreApbSraM_O01(1 downto 0) <= CoreApBSRAM_I0i&CoreApbSram_I0I;
when "0010" =>
CoreApbSraM_O01(3 downto 2) <= COREApbSram_i0i&COREAPBSRam_i0i;
when "0011" =>
CoreApbSraM_O01(3 downto 2) <= CoreApbSraM_I0I&COReApbSram_i0I;
when "0100" =>
COREAPBSRam_o01(5 downto 4) <= CoreApbSram_I0I&COreApbSram_I0I;
when "0101" =>
CoreApbSRAM_O01(5 downto 4) <= COreApbSram_i0I&COREApbSram_i0i;
when "0110" =>
COREApbSram_o01(7 downto 6) <= CoREAPBSRAm_i0i&CorEAPBSRAM_i0i;
when "0111" =>
CoreApbSRAM_O01(7 downto 6) <= COreApbSram_i0I&COREApbSram_i0i;
when "1000" =>
COREApbSram_o01(8) <= COREAPbSram_i0i;
when "1001" =>
COREApbSram_o01(1 downto 0) <= CoreApbSRAM_I0I&CoreApbSram_I0I;
when "1010" =>
COREAPBSram_o01(3 downto 2) <= CoreApbSram_I0I&COREApbSram_i0i;
when "1011" =>
CoreApbSram_O01(3 downto 2) <= CoreApBSRAM_I0i&CoreApbSram_I0I;
when "1100" =>
COREAPBSram_o01(5 downto 4) <= CoreApbSRAM_I0i&COReApbSram_i0I;
when "1101" =>
CoreApbSram_O01(5 downto 4) <= CorEAPBSRAM_i0i&CoreApbSram_I0I;
when "1110" =>
CoreApbSRAM_O01(7 downto 6) <= CoreApbSram_I0I&COREApbSram_i0i;
when "1111" =>
CoreApBSRAM_O01(7 downto 6) <= CoreApbSRAM_I0i&CoreApbSram_I0I;
when others =>
null
;
end case;
case (CoreAPBSRAM_ii(12 downto 9)) is
when "0000" =>
CoreApbSRAM_L01(1 downto 0) <= CorEAPBSRAM_o1i&CoreApbSraM_O1I;
when "0001" =>
CoreApbSRAM_L01(1 downto 0) <= CoreApbSraM_O1I&COREApbSram_o1i;
when "0010" =>
COREAPBSRam_l01(3 downto 2) <= COREAPBSram_o1i&CoreAPBSRAM_O1i;
when "0011" =>
CoreApbSraM_L01(3 downto 2) <= CoreAPBSRAM_o1i&CoreApbSRAM_O1I;
when "0100" =>
CoreApbSram_L01(5 downto 4) <= CoREAPBSRAm_o1i&CoreApbSRAM_O1i;
when "0101" =>
CoreApbSrAM_L01(5 downto 4) <= COREAPbSram_o1i&COREAPBSRam_o1i;
when "0110" =>
CorEAPBSRAm_l01(7 downto 6) <= CoreAPBSRAM_o1i&CoreApbSram_O1I;
when "0111" =>
COREAPbSram_l01(7 downto 6) <= COREAPBSram_o1i&CoreAPBSRAM_o1i;
when "1000" =>
CoreApbSRAM_L01(8) <= CoreApbSraM_O1I;
when "1001" =>
COREApbSram_l01(1 downto 0) <= COREAPBSram_o1i&CoreAPBSRAM_O1i;
when "1010" =>
CoreApbSRAM_L01(3 downto 2) <= COREAPBSram_o1i&CoreApbSRAM_O1I;
when "1011" =>
COreApbSrAM_L01(3 downto 2) <= CoREAPBSram_o1I&CoreApbSRAM_O1i;
when "1100" =>
CoreAPBSram_l01(5 downto 4) <= CoreAPBSRAm_o1i&COReApbSrAM_O1I;
when "1101" =>
COREApbSram_L01(5 downto 4) <= COREApbSram_O1I&CoREAPBSram_o1I;
when "1110" =>
CoREAPBSram_l01(7 downto 6) <= CoreApBSRAM_o1i&COREApbSram_O1I;
when "1111" =>
COreApbSRAM_L01(7 downto 6) <= CoREAPBSram_o1I&CoreApBSRAM_o1i;
when others =>
null
;
end case;
case (CoREAPBSram_lI0(12 downto 9)) is
when "0000" =>
CoreApbSRAM_L0 <= CoreAPBSRAm_oii(3 downto 0)&COREAPbSram_lII(3 downto 0);
when "0001" =>
CoreApbSRAM_L0 <= CoreAPBSRAm_oii(3 downto 0)&COREApbSram_LII(3 downto 0);
when "0010" =>
CoreAPBSram_l0 <= COREApbSram_LLI(3 downto 0)&CoreApbSRAM_Ili(3 downto 0);
when "0011" =>
CoreApbSRAM_l0 <= CoREAPBSram_llI(3 downto 0)&CoreApBSRAM_ili(3 downto 0);
when "0100" =>
CoreApbSram_L0 <= CoreApbSraM_L1OL(3 downto 0)&COREApbSram_o1oL(3 downto 0);
when "0101" =>
CoreAPBSRAM_l0 <= CoREAPBSRAm_l1ol(3 downto 0)&CoreAPBSRAM_o1ol(3 downto 0);
when "0110" =>
CoREAPBSRAm_l0 <= CoREAPBSRAm_ooll(3 downto 0)&CoreApBSRAM_I1ol(3 downto 0);
when "0111" =>
CoreApBSRAM_L0 <= COREApbSram_ooll(3 downto 0)&CoreApbSraM_I1OL(3 downto 0);
when "1000" =>
CoreApbSram_L0 <= CoREAPBSram_loll;
when "1001" =>
CoreApBSRAM_L0 <= CoreApbSrAM_OII(3 downto 0)&COREAPBSram_lii(3 downto 0);
when "1010" =>
CoreApbSram_L0 <= COREAPBSram_lli(3 downto 0)&COreApbSram_ILI(3 downto 0);
when "1011" =>
COReApbSram_l0 <= CoreApbSram_LLI(3 downto 0)&CoreApbSram_ILI(3 downto 0);
when "1100" =>
CoreApbSRAM_L0 <= CoreApbSram_L1OL(3 downto 0)&COReApbSram_o1OL(3 downto 0);
when "1101" =>
COREApbSram_l0 <= COREAPbSram_l1ol(3 downto 0)&COREAPbSram_o1ol(3 downto 0);
when "1110" =>
COREApbSram_l0 <= CoreApbSraM_OOLL(3 downto 0)&CoREAPBSRAm_i1ol(3 downto 0);
when "1111" =>
CoreAPBSRAM_l0 <= COREApbSram_oolL(3 downto 0)&CoreAPBSRAM_i1ol(3 downto 0);
when others =>
null
;
end case;
when 2 =>
CoreApbSRAM_II0 <= "01";
CoreApBSRAM_O00 <= "01";
CoreApbSram_L00 <= "01";
CoreApbSram_I00 <= "01";
CoreApbSrAM_O10 <= "01";
COREAPbSram_l10 <= "01";
CoreApbSraM_I10 <= "01";
COREAPBSram_oo1 <= "01";
COREAPBSRam_lo1 <= "11";
CoreApbSRAM_O0Ll <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreApbSram_L0LL <= '0'&CoreAPBSRAM_li(10 downto 0);
COREAPbSram_i0ll <= '0'&COREAPBSram_li(10 downto 0);
COREApbSram_o1lL <= '0'&COREApbSram_LI(10 downto 0);
COREApbSram_l1lL <= '0'&COreApbSram_lI(10 downto 0);
CoreApBSRAM_I1ll <= '0'&COreApbSram_lI(10 downto 0);
CoreApbSram_OOIL <= '0'&COREAPBSram_li(10 downto 0);
CoreApbSram_LOIL <= '0'&CoreApbSraM_LI(10 downto 0);
CoreApbSram_IOIL <= "000"&CoreApbSraM_LI(8 downto 0);
CoreApbSram_L0IL <= '0'&CoreApbSraM_II(10 downto 0);
CoreApbSram_I0IL <= '0'&COREApbSram_ii(10 downto 0);
COreApbSram_o1IL <= '0'&COREApbSram_ii(10 downto 0);
CoreApbSraM_L1IL <= '0'&CoreAPBSRAM_ii(10 downto 0);
COREAPBSram_i1il <= '0'&CoreApbSRAM_II(10 downto 0);
CoreApbSraM_OO0L <= '0'&CoreApBSRAM_II(10 downto 0);
CoreApbSRAM_LO0l <= '0'&CoreApbSram_II(10 downto 0);
COreApbSram_IO0L <= '0'&COreApbSram_II(10 downto 0);
CoreApbSram_OL0L <= "000"&CoreApbSraM_II(8 downto 0);
COREAPBSram_i01(1 downto 0) <= COREAPbSram_o0(1 downto 0);
COREAPbSram_o11(1 downto 0) <= COREAPBSram_o0(3 downto 2);
COREApbSram_l11(1 downto 0) <= CoreApbSraM_O0(5 downto 4);
COREAPBSram_i11(1 downto 0) <= CoreApbSraM_O0(7 downto 6);
COREAPbSram_oool(1 downto 0) <= CoreApbSrAM_O0(1 downto 0);
CoreApbSraM_LOOL(1 downto 0) <= CoreApbSram_O0(3 downto 2);
CoreApbSram_IOOL(1 downto 0) <= COREAPbSram_o0(5 downto 4);
COREApbSram_oloL(1 downto 0) <= COREAPbSram_o0(7 downto 6);
CoreApBSRAM_Llol <= CoreApbSRAM_O0;
case (CoreApbSram_LI(12 downto 9)) is
when "0000" =>
COREAPbSram_o01(3 downto 0) <= CoreApbSram_I0I&COReApbSram_i0I&CoreApbSRAM_I0i&COREAPBSram_i0i;
when "0001" =>
CoreApbSRAM_O01(3 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CoreApbSRAM_I0I&COREApbSram_i0I;
when "0010" =>
CoreApbSraM_O01(3 downto 0) <= COREApbSram_i0I&COREApbSram_i0i&COReApbSram_i0I&COREAPBSRam_i0i;
when "0011" =>
CoreApbSRAM_O01(3 downto 0) <= CoreAPBSRAM_i0i&CoreAPBSRAM_I0i&COREAPBSram_i0i&CoreApbSram_I0I;
when "0100" =>
COREApbSram_o01(7 downto 4) <= COREApbSram_i0i&COREAPBSRam_i0i&COreApbSram_I0I&CoreAPBSRAM_i0i;
when "0101" =>
CoreApbSraM_O01(7 downto 4) <= CoreApbSraM_I0I&CoreApbSram_I0I&CoreApbSRAM_I0i&COREAPBSram_i0i;
when "0110" =>
COREAPBSram_o01(7 downto 4) <= CoreApbSrAM_I0I&CoreApbSram_I0I&CoreApbSRAM_I0i&COREAPbSram_i0i;
when "0111" =>
COREAPBSram_o01(7 downto 4) <= CoreApbSraM_I0I&COReApbSram_i0I&CoreApbSram_I0I&CoreAPBSRAM_I0i;
when "1000" =>
COREApbSram_o01(8) <= CoreApbSraM_I0I;
when "1001" =>
COREAPBSram_o01(3 downto 0) <= COREAPBSRam_i0i&CoreApbSRAM_I0i&COREApbSram_i0i&CoreApbSrAM_I0I;
when "1010" =>
CoreApBSRAM_O01(3 downto 0) <= COREApbSram_i0i&CorEAPBSRAM_i0i&COREApbSram_i0i&COreApbSram_i0I;
when "1011" =>
COREAPBSram_o01(3 downto 0) <= CoreApBSRAM_I0i&CoreApbSraM_I0I&CoreAPBSRAM_i0i&COREApbSram_i0i;
when "1100" =>
COREAPBSRam_o01(7 downto 4) <= CoreApbSrAM_I0I&CoreApbSram_I0I&COReApbSram_I0I&COREApbSraM_I0I;
when "1101" =>
COREApbSram_O01(7 downto 4) <= CoreAPBSRAm_i0i&CoreAPBSRAm_i0i&COREAPbSram_i0I&CoREAPBSram_i0I;
when "1110" =>
COREApbSram_O01(7 downto 4) <= COreApbSrAM_I0i&COREAPbSram_i0I&CoreAPBSram_i0i&CoreAPBSRAm_i0i;
when "1111" =>
COREAPBSRam_o01(7 downto 4) <= CoreApBSRAM_I0i&COREApbSram_i0i&CoreApbSrAM_I0I&COREApbSram_i0i;
when others =>
null
;
end case;
case (COREAPBSram_ii(12 downto 9)) is
when "0000" =>
CoreApbSRAM_L01(3 downto 0) <= CoreApbSRAM_O1i&CoreApbSraM_O1I&COreApbSram_o1I&COREAPbSram_o1i;
when "0001" =>
COReApbSram_l01(3 downto 0) <= CoreApBSRAM_O1i&CoreApbSrAM_O1I&CoreAPBSRAM_o1i&CoreApbSram_O1I;
when "0010" =>
CoreApbSRAM_L01(3 downto 0) <= COREAPBSram_o1i&CoreAPBSRAM_o1i&CoreApbSram_O1I&COREAPBSRam_o1i;
when "0011" =>
CoreApbSraM_L01(3 downto 0) <= CoreApbSRAM_O1I&CoreApbSRAM_O1I&COREAPBSRam_o1i&CoreApbSraM_O1I;
when "0100" =>
CoreApbSram_L01(7 downto 4) <= COReApbSram_o1I&COREAPBSram_o1i&COREApbSram_o1i&COreApbSram_o1I;
when "0101" =>
CoreApbSrAM_L01(7 downto 4) <= CoreApbSram_O1I&COREApbSram_o1I&CoreApbSram_O1I&COREAPBSram_o1i;
when "0110" =>
COReApbSram_l01(7 downto 4) <= CoreApbSram_O1I&CoreApbSram_O1I&CoreApBSRAM_O1i&CoreApbSrAM_O1I;
when "0111" =>
CoreApbSram_L01(7 downto 4) <= CoreApbSraM_O1I&CoreApbSram_O1I&CoreApbSRAM_O1I&COREAPBSram_o1i;
when "1000" =>
COREApbSram_l01(8) <= COReApbSram_o1I;
when "1001" =>
CoreApbSram_L01(3 downto 0) <= CoreApbSraM_O1I&COreApbSram_o1I&CoreApbSRAM_O1I&COREApbSram_o1i;
when "1010" =>
CoreApbSRAM_L01(3 downto 0) <= CoreApbSram_O1I&COREApbSram_o1i&COREApbSram_o1i&CoreApbSrAM_O1I;
when "1011" =>
CoreApbSraM_L01(3 downto 0) <= COreApbSram_O1I&COREApbSram_o1I&CoreApbSraM_O1I&CoREAPBSRAm_o1i;
when "1100" =>
COREAPbSram_l01(7 downto 4) <= COREApbSram_o1I&CoreAPBSRAM_o1i&COREAPBSRAm_o1i&CoreApbSram_O1I;
when "1101" =>
COREAPBSram_l01(7 downto 4) <= COREAPBSram_o1i&CoreAPBSRAM_o1i&COREAPbSram_o1i&CoreApbSRAM_O1I;
when "1110" =>
CoreApbSram_L01(7 downto 4) <= CoreApbSram_O1I&COREApbSram_o1i&CoreApbSRAM_O1I&COREAPBSRam_o1i;
when "1111" =>
CoreApbSram_L01(7 downto 4) <= COREApbSram_o1i&COREAPBSRam_o1i&COReApbSram_o1I&CoreAPBSRAM_O1i;
when others =>
null
;
end case;
case (CoreApBSRAM_Li0(12 downto 9)) is
when "0000" =>
COREAPBSram_l0 <= CoreApbSrAM_LLI(1 downto 0)&COREAPBSram_ili(1 downto 0)&CoREAPBSRAm_oii(1 downto 0)&CoreApBSRAM_Lii(1 downto 0);
when "0001" =>
COREApbSram_l0 <= COREAPbSram_lli(1 downto 0)&COREAPBSram_ili(1 downto 0)&CoreApbSraM_OII(1 downto 0)&COREAPBSram_lii(1 downto 0);
when "0010" =>
CoreApbSrAM_L0 <= COreApbSram_lLI(1 downto 0)&COREApbSram_ilI(1 downto 0)&CoreApbSRAM_OII(1 downto 0)&COREAPBSram_lii(1 downto 0);
when "0011" =>
CoreAPBSRAM_l0 <= CoreApbSRAM_LLi(1 downto 0)&COREAPBSram_ili(1 downto 0)&CoreApbSram_OII(1 downto 0)&CoreAPBSRAM_lii(1 downto 0);
when "0100" =>
CoreApbSRAM_L0 <= COREApbSram_oolL(1 downto 0)&COreApbSram_I1OL(1 downto 0)&CoreApbSram_L1OL(1 downto 0)&COREApbSram_o1oL(1 downto 0);
when "0101" =>
CoreApbSram_L0 <= CoreAPBSRAM_ooll(1 downto 0)&COREAPBSram_i1ol(1 downto 0)&CorEAPBSRAM_l1ol(1 downto 0)&CoreApbSraM_O1OL(1 downto 0);
when "0110" =>
COreApbSram_l0 <= COREAPBSRam_ooll(1 downto 0)&COREApbSram_i1ol(1 downto 0)&CoreApbSraM_L1OL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when "0111" =>
CoREAPBSRam_l0 <= COREApbSram_ooLL(1 downto 0)&CoreAPBSRAM_i1ol(1 downto 0)&COreApbSram_L1OL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when "1000" =>
CoreApbSrAM_L0 <= CoreAPBSRAM_loll;
when "1001" =>
CoreApbSram_L0 <= COREAPbSram_lli(1 downto 0)&CoREAPBSRAm_ili(1 downto 0)&CoreApbSrAM_OII(1 downto 0)&COREAPbSram_lii(1 downto 0);
when "1010" =>
CorEAPBSRAm_l0 <= CoreApbSrAM_LLI(1 downto 0)&CoreApbSram_ILI(1 downto 0)&COREAPBSRam_oii(1 downto 0)&COReApbSram_liI(1 downto 0);
when "1011" =>
COREApbSram_l0 <= CoreApbSram_LLI(1 downto 0)&CoreApbSRAM_ILi(1 downto 0)&COreApbSram_oII(1 downto 0)&CoreApbSraM_LII(1 downto 0);
when "1100" =>
COreApbSram_l0 <= CoreAPBSRAM_Ooll(1 downto 0)&COREApbSram_i1ol(1 downto 0)&COREAPbSram_l1ol(1 downto 0)&CoreApbSraM_O1OL(1 downto 0);
when "1101" =>
COREApbSram_l0 <= CoREAPBSRAm_ooll(1 downto 0)&COREAPBSram_i1ol(1 downto 0)&CoreApbSraM_L1OL(1 downto 0)&COREApbSram_o1oL(1 downto 0);
when "1110" =>
CoREAPBSRAm_l0 <= CoreAPBSRAM_Ooll(1 downto 0)&CoreApbSraM_I1OL(1 downto 0)&CorEAPBSRAM_l1ol(1 downto 0)&COreApbSram_O1OL(1 downto 0);
when "1111" =>
COREAPBSram_l0 <= CoreApBSRAM_Ooll(1 downto 0)&CoreAPBSRAM_i1ol(1 downto 0)&CoreApbSram_L1OL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when others =>
null
;
end case;
when others =>
CorEAPBSRAM_ii0 <= "00";
CoreApbSram_O00 <= "00";
CoreApbSram_L00 <= "00";
COREApbSram_i00 <= "00";
CoREAPBSRam_o10 <= "00";
COREApbSram_l10 <= "00";
CoREAPBSRAm_i10 <= "00";
CoreApbSraM_OO1 <= "00";
COREApbSram_lo1 <= "11";
CoreApbSRAM_O0ll <= CoreAPBSRAM_li(11 downto 0);
CoreApbSram_L0LL <= COReApbSram_li(11 downto 0);
CoreApbSRAM_I0ll <= CoreApbSRAM_LI(11 downto 0);
CoreApbSram_O1LL <= CorEAPBSRAM_li(11 downto 0);
CoreApbSram_L1LL <= CoreApbSram_LI(11 downto 0);
COREApbSram_i1lL <= COREApbSram_li(11 downto 0);
CoreApbSraM_OOIL <= COREApbSram_li(11 downto 0);
CoreApbSRAM_LOil <= CoreApbSraM_LI(11 downto 0);
CoreApbSraM_IOIL <= "000"&COREApbSram_li(8 downto 0);
COREAPBSram_l0il <= COreApbSram_iI(11 downto 0);
COReApbSram_i0IL <= COREAPBSram_ii(11 downto 0);
CoREAPBSRAm_o1il <= CorEAPBSRAM_ii(11 downto 0);
CoreApbSram_L1IL <= COREAPBSram_ii(11 downto 0);
CoreAPBSRAM_I1il <= CoreApbSRAM_II(11 downto 0);
COREAPBSram_oo0l <= CoREAPBSRam_ii(11 downto 0);
CoreApBSRAM_Lo0l <= COREAPBSRam_ii(11 downto 0);
COREAPBSram_io0l <= CoreAPBSRAM_ii(11 downto 0);
COREApbSram_OL0L <= "000"&CoreApbSram_iI(8 downto 0);
CoreApBSRAM_i01(0) <= CoreApbSRAM_O0(0);
CoreApBSRAM_o11(0) <= CorEAPBSram_o0(1);
CoreAPBSram_l11(0) <= CoREAPBSram_o0(2);
COReApbSraM_I11(0) <= CoreApBSRAM_o0(3);
CorEAPBSram_oooL(0) <= CoreApBSRAM_o0(4);
CoreApBSRAM_lool(0) <= COreApbSrAM_O0(5);
CoreAPBSRAm_iool(0) <= CoreAPBSRAm_o0(6);
CoreApbSRAM_Olol(0) <= CorEAPBSram_o0(7);
CoreApbSRAM_Llol <= CoreApbSRAM_o0;
case (COreApbSrAM_LI(12 downto 9)) is
when "0000" =>
COREAPBSram_o01(7 downto 0) <= CoreApbSraM_I0I&CorEAPBSRAM_i0i&COREAPBSRam_i0i&CoreApbSraM_I0I&COReApbSram_i0I&COREAPBSram_i0i&CoreApbSrAM_I0I&COReApbSram_i0I;
when "0001" =>
CorEAPBSRAm_o01(7 downto 0) <= COREApbSram_i0i&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApbSram_I0I&COREApbSram_i0i&CorEAPBSRAm_i0i&COREAPbSram_i0i&CoreApbSram_I0I;
when "0010" =>
CoreApbSram_O01(7 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CoreAPBSRAM_i0i&COreApbSram_i0I&CoreApBSRAM_I0i&CoreApbSram_I0I&CoreApbSRAM_I0I&COREApbSram_i0I;
when "0011" =>
CoreApbSRAM_O01(7 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CorEAPBSRAM_i0i&CoreApbSram_I0I&COREAPbSram_i0i&CorEAPBSRAm_i0i&COREApbSram_i0i&CoreApbSram_I0I;
when "0100" =>
COREAPBSram_o01(7 downto 0) <= COreApbSram_i0I&COREApbSram_i0i&CoreApBSRAM_I0i&COReApbSram_i0I&CoreAPBSRAM_I0i&CoreApbSram_I0I&COREAPBSRam_i0i&CoreApbSraM_I0I;
when "0101" =>
CoreAPBSRAM_o01(7 downto 0) <= COREApbSram_i0i&COREAPbSram_i0i&CoreApbSram_I0I&COREAPBSram_i0i&COREApbSram_i0i&CoreApbSRAM_I0I&COREAPBSram_i0i&CoreApbSram_I0I;
when "0110" =>
CoreApbSrAM_O01(7 downto 0) <= CoreApBSRAM_I0i&CoreApbSRAM_I0I&COREAPBSRam_i0i&COReApbSram_i0I&CoreApbSram_I0I&CoreApBSRAM_I0i&COREAPbSram_i0i&CoreAPBSRAM_i0i;
when "0111" =>
COREAPBSRam_o01(7 downto 0) <= CoreAPBSRAM_I0i&CorEAPBSRAm_i0i&CoreApbSram_I0I&CoreAPBSRAM_i0i&COReApbSram_i0I&CoreApBSRAM_I0i&CoreApbSraM_I0I&CoreApBSRAM_I0i;
when "1000" =>
CorEAPBSRAm_o01(8) <= COREAPBSram_i0i;
when "1001" =>
CoreApbSraM_O01(7 downto 0) <= COReApbSram_i0I&COREAPbSram_i0i&CoreApbSRAM_I0I&COREAPBSram_i0i&COREAPbSram_i0i&CoreApbSRAM_I0i&COREAPBSram_i0i&CoreApbSram_I0I;
when "1010" =>
CoreApbSrAM_O01(7 downto 0) <= COREApbSram_i0I&COREApbSram_i0i&COreApbSram_i0I&CoREAPBSRAm_i0i&COreApbSram_i0I&CoreApBSRAM_I0i&COREAPbSram_i0i&CoreApbSRAM_I0I;
when "1011" =>
CoreAPBSRAM_o01(7 downto 0) <= COreApbSram_i0I&COREAPbSram_i0i&CoreApbSrAM_I0I&COREApbSram_i0i&CoreApbSram_I0I&COREAPBSRam_i0i&COREAPBSram_i0i&CoreApbSram_I0I;
when "1100" =>
COREAPBSRam_o01(7 downto 0) <= CorEAPBSRAM_i0i&CoreApBSRAM_I0i&COREAPBSram_i0i&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApbSram_I0I&CoreApbSRAM_I0I&COREApbSram_i0i;
when "1101" =>
CoreApbSrAM_O01(7 downto 0) <= CoREAPBSRAm_i0i&CoreApbSRAM_I0I&COREAPBSram_i0i&CoreApbSRAM_I0I&COREApbSram_i0i&CoreApbSraM_I0I&CoreApbSraM_I0I&CorEAPBSRAM_i0i;
when "1110" =>
CoreApbSRAM_O01(7 downto 0) <= CoreApbSRAM_I0I&CoreApbSram_I0I&COREAPBSRam_i0i&COreApbSram_i0I&CoreApbSRAM_I0i&COREApbSram_i0I&CoreApbSraM_I0I&COREAPBSram_i0i;
when "1111" =>
COreApbSram_o01(7 downto 0) <= CoreApbSrAM_I0I&CoreApbSraM_I0I&CorEAPBSRAM_i0i&COREApbSram_i0i&CoreApbSram_I0I&COREAPBSRam_i0i&COREApbSram_i0i&COreApbSram_i0I;
when others =>
null
;
end case;
case (COREAPbSram_ii(12 downto 9)) is
when "0000" =>
COREApbSram_l01(7 downto 0) <= CoreApbSram_O1I&CoreApbSRAM_O1i&COREAPbSram_o1i&COReApbSram_o1I&CoreApBSRAM_O1i&COREAPBSram_o1i&CoreApbSraM_O1I&CoreApbSrAM_O1I;
when "0001" =>
COreApbSram_l01(7 downto 0) <= CoreApBSRAM_O1i&CoreApBSRAM_o1i&CoreApbSram_O1I&COREAPbSram_o1i&CoreApbSraM_O1I&COREAPBSRAm_o1i&COReApbSram_o1I&CoreApbSRAM_O1I;
when "0010" =>
COreApbSram_l01(7 downto 0) <= CoreApbSrAM_O1I&CoreApbSraM_O1I&CoREAPBSRAm_o1i&CoreApbSram_O1I&CorEAPBSRAM_o1i&CoreApbSrAM_O1I&COREAPBSram_o1i&COreApbSram_O1I;
when "0011" =>
COreApbSram_l01(7 downto 0) <= COREAPbSram_o1i&COREAPBSram_o1i&COReApbSram_o1I&CoreAPBSRAM_o1i&COREAPBSram_o1i&CoreApbSrAM_O1I&CorEAPBSRAM_o1i&CoreApbSram_O1I;
when "0100" =>
COReApbSram_l01(7 downto 0) <= COREAPBSRam_o1i&CoreAPBSRAM_O1i&COREAPbSram_o1i&CoreApbSraM_O1I&CoreAPBSRAM_o1i&COreApbSram_o1I&CoreApbSraM_O1I&CoreAPBSRAM_o1i;
when "0101" =>
COREAPBSRam_l01(7 downto 0) <= CoreApbSrAM_O1I&CoreApbSram_O1I&CoreApbSrAM_O1I&COREAPBSram_o1i&COREAPbSram_o1i&CoreApbSraM_O1I&CorEAPBSRAM_o1i&COreApbSram_O1I;
when "0110" =>
COREAPbSram_l01(7 downto 0) <= CoreApBSRAM_O1i&CoreApbSrAM_O1I&CoREAPBSRam_o1i&COreApbSram_o1I&CoreApbSram_O1I&CoREAPBSRAm_o1i&COReApbSram_o1I&CoreApbSram_O1I;
when "0111" =>
CoreAPBSRAM_l01(7 downto 0) <= CorEAPBSRAM_o1i&CoreApBSRAM_O1i&COREAPBSram_o1i&CoreApbSRAM_O1I&CoreAPBSRAM_o1i&COREAPbSram_o1i&COReApbSram_o1I&CoreAPBSRAM_O1i;
when "1000" =>
CorEAPBSRAm_l01(8) <= CoREAPBSRam_o1i;
when "1001" =>
CoreApbSrAM_L01(7 downto 0) <= CoreApbSrAM_O1I&CoreApbSram_O1I&CoreAPBSRAM_o1i&CoreApbSram_O1I&CoreApbSraM_O1I&CoREAPBSRAm_o1i&COREApbSram_o1I&CoreApbSraM_O1I;
when "1010" =>
COREApbSram_l01(7 downto 0) <= COREApbSram_o1i&COREApbSram_o1i&CoreApbSrAM_O1I&CoreAPBSRAM_O1i&COREAPBSram_o1i&CoreApbSrAM_O1I&CoreApBSRAM_O1i&COREApbSram_o1i;
when "1011" =>
COREAPBSRam_l01(7 downto 0) <= CoreApbSraM_O1I&CoreApbSram_O1I&CorEAPBSRAM_o1i&COReApbSram_o1I&CoreApbSram_O1I&CoREAPBSRAm_o1i&COREApbSram_o1i&CoreApbSrAM_O1I;
when "1100" =>
CoreApbSram_L01(7 downto 0) <= CoreApbSraM_O1I&COreApbSram_o1I&CoreApBSRAM_O1i&COREApbSram_o1i&COReApbSram_o1I&CoreAPBSRAM_O1i&COREAPBSRam_o1i&COREApbSram_o1i;
when "1101" =>
COREAPBSram_l01(7 downto 0) <= CoreAPBSRAM_O1i&CoreApbSRAM_O1I&COREAPBSram_o1i&CoreApbSRAM_O1i&CoreAPBSRAM_o1i&COREAPBSram_o1i&COreApbSram_O1I&CoREAPBSRAm_o1i;
when "1110" =>
CoreApbSRAM_L01(7 downto 0) <= CoreApBSRAM_O1i&CoreApbSRAM_O1I&COREAPbSram_o1i&CoreApbSraM_O1I&CoreApbSRAM_O1I&COREAPBSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I;
when "1111" =>
CoreApBSRAM_l01(7 downto 0) <= CoreAPBSRAm_o1i&CoreApbSrAM_O1I&CoreApBSRAM_o1i&CoreApbSRAM_O1i&COREApbSram_O1I&CoreApbSRAM_o1i&CoreApbSRAM_o1i&COREAPbSram_o1I;
when others =>
null
;
end case;
case (CoreApBSRAm_li0(12 downto 9)) is
when "0000" =>
CoreApbSraM_L0 <= CoREAPBSRam_ooll(0)&CoREAPBSRam_i1ol(0)&CoreApbSram_L1OL(0)&COreApbSram_o1OL(0)&CoreApBSRAM_LLi(0)&COREAPbSram_ili(0)&COREAPbSram_oii(0)&COREApbSram_lii(0);
when "0001" =>
COREAPbSram_l0 <= CoreApbSraM_OOLL(0)&CoreApbSraM_I1OL(0)&CoreApbSRAM_L1Ol(0)&COreApbSram_O1OL(0)&COREApbSram_lli(0)&CoreApbSrAM_ILI(0)&CoreApbSRAM_OII(0)&COreApbSram_lII(0);
when "0010" =>
COREApbSram_l0 <= CoreApBSRAM_Ooll(0)&COREAPBSram_i1ol(0)&CoreApbSram_L1OL(0)&CoreApbSRAM_O1Ol(0)&CoreApbSraM_LLI(0)&CoreApbSram_ILI(0)&CoreApbSrAM_OII(0)&CoreAPBSRAM_lii(0);
when "0011" =>
COREAPBSram_l0 <= CoreAPBSRAM_ooll(0)&CoreApbSraM_I1OL(0)&CoreApbSraM_L1OL(0)&CoreApbSram_O1OL(0)&CoREAPBSRam_lli(0)&CoREAPBSRAm_ili(0)&CoreApbSram_OII(0)&CoreApBSRAM_LIi(0);
when "0100" =>
CoreAPBSRAM_L0 <= COREAPbSram_ooll(0)&COREAPBSram_i1ol(0)&COReApbSram_l1OL(0)&COREAPBSram_o1ol(0)&COReApbSram_llI(0)&COreApbSram_iLI(0)&COREAPBSram_oii(0)&CoreApbSram_LII(0);
when "0101" =>
CoreApbSRAM_L0 <= CoreApbSram_OOLL(0)&CoreApbSram_I1OL(0)&CoreApbSRAM_L1Ol(0)&COREAPBSram_o1ol(0)&COreApbSram_lLI(0)&COREAPbSram_ili(0)&CoreApbSram_OII(0)&COREApbSram_lii(0);
when "0110" =>
COREApbSram_l0 <= CoreApbSraM_OOLL(0)&COReApbSram_i1OL(0)&COreApbSram_l1OL(0)&CoreApbSram_O1OL(0)&CorEAPBSRAM_lli(0)&CoreAPBSRAM_ili(0)&CoreApBSRAM_Oii(0)&CoreApbSrAM_LII(0);
when "0111" =>
COREApbSram_l0 <= COREAPBSram_ooll(0)&COreApbSram_i1OL(0)&CoreApbSRAM_L1ol(0)&CoreAPBSRAM_o1ol(0)&COREAPBSRam_lli(0)&COREApbSram_ili(0)&CorEAPBSRAM_oii(0)&CoreApbSram_LII(0);
when "1000" =>
CoreAPBSRAM_l0 <= COREApbSram_lolL;
when "1001" =>
CoreApbSRAM_L0 <= CoREAPBSRam_ooll(0)&CoreApbSram_I1OL(0)&CoreAPBSRAM_l1ol(0)&COREAPBSRam_o1ol(0)&CoreApbSRAM_LLi(0)&COReApbSram_ilI(0)&CoreApbSram_OII(0)&CoreAPBSRAM_lii(0);
when "1010" =>
COreApbSram_l0 <= CoreApbSram_OOLL(0)&COREAPBSRam_i1ol(0)&COREAPBSRam_l1ol(0)&CoreApBSRAM_O1ol(0)&COREAPBSram_lli(0)&COREAPBSRam_ili(0)&CoreApbSram_OII(0)&COreApbSram_lII(0);
when "1011" =>
CoreApBSRAM_L0 <= COREApbSram_oolL(0)&CoreApbSrAM_I1OL(0)&CoreAPBSRAM_l1ol(0)&CoREAPBSRAm_o1ol(0)&COREApbSram_lli(0)&COREApbSram_ilI(0)&CoREAPBSRam_oii(0)&CorEAPBSRAm_lii(0);
when "1100" =>
CoreApbSram_L0 <= CoreAPBSRAM_ooll(0)&COreApbSram_i1OL(0)&COREAPBSram_l1ol(0)&CoreApbSraM_O1OL(0)&CoreApbSraM_LLI(0)&CoreApbSRAM_ILi(0)&CoREAPBSRAm_oii(0)&CoreApbSram_LII(0);
when "1101" =>
CoreApbSrAM_L0 <= CoreAPBSRAM_ooll(0)&COREAPbSram_i1ol(0)&COREAPBSram_l1ol(0)&COreApbSram_o1OL(0)&COREAPBSRam_lli(0)&CoreApbSRAM_ILi(0)&CoreAPBSRAM_oii(0)&COReApbSram_liI(0);
when "1110" =>
CoreApBSRAM_L0 <= COREApbSram_oolL(0)&COReApbSram_i1OL(0)&COREAPbSram_l1ol(0)&COREAPbSram_o1ol(0)&CoreApbSram_LLI(0)&CoreApbSram_ILI(0)&CoreAPBSRAM_oii(0)&CoreApbSram_LII(0);
when "1111" =>
CoreApbSRAM_L0 <= CoreApbSraM_OOLL(0)&CoreApbSram_I1OL(0)&COREAPBSRam_l1ol(0)&CoreAPBSRAM_O1ol(0)&CorEAPBSRAM_lli(0)&CorEAPBSRAM_ili(0)&CoreApbSRAM_OII(0)&COREAPBSRam_lii(0);
when others =>
null
;
end case;
end case;
when 5120 =>
case (COREAPBSRam_oi0) is
when 8 =>
CoreApbSram_II0 <= "11";
COReApbSram_o00 <= "11";
COREAPBSram_l00 <= "11";
COREAPbSram_i00 <= "11";
CoreApbSram_O10 <= "11";
COREAPBSram_l10 <= "11";
COREAPBSram_i10 <= "11";
COREApbSram_oo1 <= "11";
COReApbSram_lo1 <= "11";
CoreApbSram_IO1 <= "11";
COreApbSram_o0LL <= "000"&COREAPBSram_li(8 downto 0);
CoREAPBSRAm_l0ll <= "000"&CoreApbSRAM_LI(8 downto 0);
CoreApbSram_I0LL <= "000"&COREAPBSram_li(8 downto 0);
CoreApbSram_O1LL <= "000"&CorEAPBSRAM_li(8 downto 0);
CoreApbSraM_L1LL <= "000"&COreApbSram_lI(8 downto 0);
CoreApbSrAM_I1LL <= "000"&COreApbSram_lI(8 downto 0);
CoreApbSRAM_OOil <= "000"&CoreApbSRAM_LI(8 downto 0);
CoreApbSRAM_LOil <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSram_IOIL <= "000"&CoREAPBSRAm_li(8 downto 0);
CoreApbSRAM_OLIL <= "000"&COReApbSram_li(8 downto 0);
COREApbSram_l0iL <= "000"&COREAPBSram_ii(8 downto 0);
COREAPBSRam_i0il <= "000"&CoreApbSraM_II(8 downto 0);
CorEAPBSRam_o1iL <= "000"&CorEAPBSram_ii(8 downto 0);
CoreApbSRAM_L1il <= "000"&CoreApBSRAM_ii(8 downto 0);
CoreApbSRAM_I1il <= "000"&CoreAPBSram_ii(8 downto 0);
CoreApbSRAM_Oo0l <= "000"&CoreAPBSRAm_ii(8 downto 0);
CoreApbSRAM_LO0l <= "000"&CorEAPBSram_ii(8 downto 0);
CoreApBSRAM_io0l <= "000"&COREApbSram_II(8 downto 0);
COreApbSrAM_OL0l <= "000"&COREApbSram_II(8 downto 0);
CoREAPBSram_ll0L <= "000"&CorEAPBSram_ii(8 downto 0);
CoreAPBSRAM_i01 <= COreApbSrAM_O0;
CoreApbSRAM_O11 <= COReApbSraM_O0;
CoreAPBSRam_l11 <= CorEAPBSRam_o0;
CoreAPBSRam_i11 <= CoreApbSRAM_o0;
CoreApbSRAM_Oool <= COreApbSrAM_O0;
CoreApbSRAM_Lool <= CoreApbSrAM_O0;
CoreAPBSRAM_iool <= CoreApbSRAM_O0;
COreApbSrAM_OLOl <= CoreApBSRAM_o0;
COREAPBSram_llOL <= CoreApbSrAM_O0;
CoreAPBSRAm_ilol <= COreApbSrAM_O0;
case (CoreApbSRAM_li(12 downto 9)) is
when "0000" =>
CoreApBSRAM_o01(0) <= CorEAPBSram_i0i;
when "0001" =>
COREApbSram_O01(1) <= CoreApbSRAM_I0i;
when "0010" =>
COREAPbSram_o01(2) <= CoreApbSRAM_i0i;
when "0011" =>
CoreApbSRAM_O01(3) <= CoreApbSRAM_I0i;
when "0100" =>
CoreApbSRAM_O01(4) <= CoreAPBSRAm_i0i;
when "0101" =>
CoreAPBSRam_o01(5) <= CoreApbSRAM_i0i;
when "0110" =>
CorEAPBSram_o01(6) <= COreApbSrAM_I0I;
when "0111" =>
COReApbSraM_O01(7) <= CoreApBSRAM_i0i;
when "1000" =>
CoreAPBSRam_o01(8) <= CoreAPBSRam_i0i;
when "1001" =>
CoreAPBSRam_o01(9) <= COREAPBSram_i0I;
when "1010" =>
CoREAPBSram_o01(2) <= CoreApbSRAM_I0i;
when "1011" =>
CorEAPBSram_o01(3) <= CoreApbSRAM_i0i;
when "1100" =>
CoreAPBSRAm_o01(4) <= CoreAPBSram_i0i;
when "1101" =>
CorEAPBSram_o01(5) <= CoreApbSRAM_I0i;
when "1110" =>
CoreAPBSram_o01(6) <= COreApbSram_i0I;
when "1111" =>
CoreApbSram_O01(7) <= CoreApbSRAM_I0i;
when others =>
null
;
end case;
case (COreApbSram_II(12 downto 9)) is
when "0000" =>
COREAPBSram_l01(0) <= CoreApbSraM_O1I;
when "0001" =>
COREAPBSram_l01(1) <= CoreApbSraM_O1I;
when "0010" =>
CoreApbSram_L01(2) <= CoreApBSRAM_O1i;
when "0011" =>
CoreApbSraM_L01(3) <= CoreAPBSRAM_o1i;
when "0100" =>
CoreApbSram_L01(4) <= COREAPBSRam_o1i;
when "0101" =>
CoreApbSram_L01(5) <= COREApbSram_o1I;
when "0110" =>
CoreApbSram_L01(6) <= CoreApbSraM_O1I;
when "0111" =>
COREAPBSram_l01(7) <= CoreApbSram_O1I;
when "1000" =>
CoreApbSrAM_L01(8) <= COREApbSram_o1i;
when "1001" =>
COreApbSram_l01(9) <= COREAPBSram_o1i;
when "1010" =>
CoreApBSRAM_L01(2) <= COreApbSram_o1I;
when "1011" =>
COREAPbSram_l01(3) <= CoreApbSram_O1I;
when "1100" =>
CoreApbSRAM_L01(4) <= COREAPbSram_o1i;
when "1101" =>
CoreAPBSRAM_l01(5) <= COreApbSram_o1I;
when "1110" =>
CoreAPBSRAM_l01(6) <= COREApbSram_o1i;
when "1111" =>
COreApbSram_L01(7) <= COREAPBSram_o1i;
when others =>
null
;
end case;
case (COREApbSram_li0(12 downto 9)) is
when "0000" =>
CoreApBSRAM_L0 <= COREAPBSram_lii;
when "0001" =>
CoreApbSraM_L0 <= COREAPbSram_oii;
when "0010" =>
CoreAPBSRAM_l0 <= COREAPbSram_ili;
when "0011" =>
CoreApbSRAM_L0 <= COREAPbSram_lli;
when "0100" =>
CoreApbSram_L0 <= CorEAPBSRAM_o1ol;
when "0101" =>
CoreApbSRAM_L0 <= COREAPBSram_l1ol;
when "0110" =>
CoreApbSraM_L0 <= CoreApbSRAM_I1Ol;
when "0111" =>
COreApbSram_l0 <= CoreApbSram_OOLL;
when "1000" =>
CoreApbSraM_L0 <= CoreApbSraM_LOLL;
when "1001" =>
COREApbSram_l0 <= COREAPBSram_ioll;
when "1010" =>
CoreApbSraM_L0 <= CoreApbSRAM_ILi;
when "1011" =>
COREApbSram_l0 <= COREAPBSram_lli;
when "1100" =>
COREApbSram_l0 <= CoreAPBSRAM_o1ol;
when "1101" =>
COREApbSram_l0 <= COREAPbSram_l1ol;
when "1110" =>
CoreApbSraM_L0 <= COReApbSram_i1OL;
when "1111" =>
CoreApbSRAM_L0 <= CoreApbSram_OOLL;
when others =>
null
;
end case;
when 4 =>
COREAPbSram_ii0 <= "10";
COREApbSraM_O00 <= "10";
CoreApbSram_L00 <= "10";
CoREAPBSRam_i00 <= "10";
COreApbSram_o10 <= "10";
COReApbSram_l10 <= "10";
CoreApbSrAM_I10 <= "10";
CoreApbSram_OO1 <= "10";
CoreAPBSRAM_lo1 <= "10";
CoreApbSRAM_IO1 <= "10";
CoreApbSram_O0LL <= "00"&CoreApBSRAM_Li(9 downto 0);
CoreApbSrAM_L0LL <= "00"&COReApbSram_li(9 downto 0);
CorEAPBSRAM_i0ll <= "00"&COREApbSram_li(9 downto 0);
CoreApbSRAM_O1Ll <= "00"&CoreApbSRAM_LI(9 downto 0);
CoreApbSram_L1LL <= "00"&CoreApbSram_LI(9 downto 0);
COREAPBSram_i1ll <= "00"&COREApbSram_li(9 downto 0);
CoreApbSRAM_OOIl <= "00"&CoreAPBSRAM_Li(9 downto 0);
COREAPBSram_loil <= "00"&CoreApbSraM_LI(9 downto 0);
COREApbSram_ioiL <= "00"&CoreApbSram_LI(9 downto 0);
COREAPBSram_olil <= "00"&CorEAPBSRAM_li(9 downto 0);
CoreAPBSRAM_L0il <= "00"&CoreApbSram_II(9 downto 0);
CoreApbSraM_I0IL <= "00"&COREAPbSram_ii(9 downto 0);
CoreAPBSRAM_o1il <= "00"&CoREAPBSRAm_ii(9 downto 0);
COREAPbSram_l1il <= "00"&CoreAPBSRAM_ii(9 downto 0);
COreApbSram_i1IL <= "00"&COREApbSram_ii(9 downto 0);
CoreAPBSRAM_oo0l <= "00"&CoreAPBSRAM_Ii(9 downto 0);
CoreApbSram_LO0L <= "00"&CoreApbSram_II(9 downto 0);
CorEAPBSram_io0L <= "00"&COREApbSram_II(9 downto 0);
COreApbSrAM_OL0l <= "00"&CoreAPBSram_iI(9 downto 0);
CoREAPBSram_ll0L <= "00"&COReApbSraM_II(9 downto 0);
CoreApbSRAM_I01(3 downto 0) <= CorEAPBSram_o0(3 downto 0);
CoREAPBSram_o11(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
CoreApBSRAM_l11(3 downto 0) <= CoreApbSRAM_o0(3 downto 0);
CoreAPBSram_i11(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
CorEAPBSram_ooOL(3 downto 0) <= CoreApbSRAM_o0(3 downto 0);
COREApbSram_LOOL(3 downto 0) <= CoreAPBSram_o0(7 downto 4);
CoreApbSRAm_iool(3 downto 0) <= COREAPbSram_O0(3 downto 0);
CoreApbSram_OLOL(3 downto 0) <= COreApbSram_o0(7 downto 4);
COREApbSram_lloL(3 downto 0) <= CoreApbSRAM_O0(3 downto 0);
COreApbSram_iLOL(3 downto 0) <= CoreAPBSRAM_O0(7 downto 4);
case (COREApbSram_li(12 downto 9)) is
when "0000" =>
CoreApbSraM_O01(1 downto 0) <= COReApbSram_i0I&COREApbSram_i0i;
when "0001" =>
CoreApbSram_O01(1 downto 0) <= CorEAPBSRAm_i0i&CoreApbSRAM_I0i;
when "0010" =>
CoreApbSram_O01(3 downto 2) <= COREAPbSram_i0i&COREAPBSRam_i0i;
when "0011" =>
CoreApbSram_O01(3 downto 2) <= COREAPBSram_i0i&COREAPbSram_i0i;
when "0100" =>
CorEAPBSRAm_o01(5 downto 4) <= COREAPBSram_i0i&CoreApbSRAM_I0i;
when "0101" =>
COREAPBSram_o01(5 downto 4) <= CoreAPBSRAM_i0i&COREAPBSRam_i0i;
when "0110" =>
CoreAPBSRAM_o01(7 downto 6) <= CoreApbSram_I0I&COREApbSram_i0I;
when "0111" =>
COREApbSram_o01(7 downto 6) <= COREAPBSram_i0i&COREAPBSram_i0i;
when "1000" =>
COreApbSram_o01(9 downto 8) <= COREAPBSram_i0i&CoreAPBSRAM_I0i;
when "1001" =>
CoreApbSRAM_O01(9 downto 8) <= CoreApbSram_I0I&COREApbSram_i0i;
when "1010" =>
COREAPBSram_o01(3 downto 2) <= CoreApbSRAM_I0i&CoreApbSram_I0I;
when "1011" =>
CoreApbSRAM_O01(3 downto 2) <= CoreApbSram_I0I&COREApbSram_i0i;
when "1100" =>
CorEAPBSRAm_o01(5 downto 4) <= COREAPBSram_i0i&CoreAPBSRAM_i0i;
when "1101" =>
CoREAPBSRAm_o01(5 downto 4) <= COREApbSram_i0i&CorEAPBSRAM_i0i;
when "1110" =>
CoreApbSram_O01(7 downto 6) <= COREApbSram_i0i&CoREAPBSRAm_i0i;
when "1111" =>
CoreAPBSRAM_O01(7 downto 6) <= COREAPbSram_i0i&CoreApBSRAM_I0i;
when others =>
null
;
end case;
case (COREAPBSram_ii(12 downto 9)) is
when "0000" =>
COreApbSram_l01(1 downto 0) <= COReApbSram_o1I&COREAPBSRam_o1i;
when "0001" =>
COReApbSram_l01(1 downto 0) <= COREApbSram_o1i&CorEAPBSRAm_o1i;
when "0010" =>
CoreAPBSRAM_l01(3 downto 2) <= COreApbSram_o1I&COREApbSram_o1i;
when "0011" =>
COREAPBSram_l01(3 downto 2) <= CoreAPBSRAM_o1i&CoreApbSRAM_O1I;
when "0100" =>
CoreAPBSRAM_l01(5 downto 4) <= CoreAPBSRAM_o1i&CoreApbSRAM_O1i;
when "0101" =>
CoreApbSram_L01(5 downto 4) <= COREApbSram_o1i&COREAPBSram_o1i;
when "0110" =>
CoreApbSram_L01(7 downto 6) <= COREAPbSram_o1i&CoreApbSRAM_O1I;
when "0111" =>
COreApbSram_l01(7 downto 6) <= CoreAPBSRAM_o1i&CoreApbSraM_O1I;
when "1000" =>
CoreApbSraM_L01(9 downto 8) <= CoreAPBSRAM_o1i&CoreApbSraM_O1I;
when "1001" =>
COReApbSram_l01(9 downto 8) <= COREAPBSram_o1i&CoreAPBSRAM_o1i;
when "1010" =>
CoreApbSraM_L01(3 downto 2) <= COREApbSram_o1i&COREApbSram_o1i;
when "1011" =>
COREApbSram_l01(3 downto 2) <= CoreApbSraM_O1I&COreApbSram_o1I;
when "1100" =>
CoreApbSram_L01(5 downto 4) <= CoreApbSRAM_O1i&COREApbSram_o1I;
when "1101" =>
CorEAPBSRAM_l01(5 downto 4) <= CoreApbSraM_O1I&COreApbSram_o1I;
when "1110" =>
CoreApbSRAM_L01(7 downto 6) <= COREAPBSram_o1i&CoreApbSRAM_O1i;
when "1111" =>
CoreApBSRAM_L01(7 downto 6) <= CoreApbSram_O1I&COREAPBSram_o1i;
when others =>
null
;
end case;
case (CoreApbSraM_LI0(12 downto 9)) is
when "0000" =>
CoreApbSraM_L0 <= COReApbSram_oII(3 downto 0)&CoreApbSrAM_LII(3 downto 0);
when "0001" =>
CorEAPBSRAM_l0 <= COREApbSram_oiI(3 downto 0)&COREAPBSram_lii(3 downto 0);
when "0010" =>
CoreAPBSRAM_l0 <= CoreApbSrAM_LLI(3 downto 0)&CorEAPBSRAM_ili(3 downto 0);
when "0011" =>
CoreApBSRAM_L0 <= COReApbSram_llI(3 downto 0)&CoreAPBSRAM_ili(3 downto 0);
when "0100" =>
CoreApbSraM_L0 <= CoreApbSraM_L1OL(3 downto 0)&CoreApbSraM_O1OL(3 downto 0);
when "0101" =>
COReApbSram_l0 <= CoreApbSRAM_L1Ol(3 downto 0)&COREAPBSRam_o1ol(3 downto 0);
when "0110" =>
CoreApbSraM_L0 <= COReApbSram_ooLL(3 downto 0)&COREApbSram_i1oL(3 downto 0);
when "0111" =>
CoreApbSrAM_L0 <= CorEAPBSRAM_ooll(3 downto 0)&COREAPBSRam_i1ol(3 downto 0);
when "1000" =>
CoreApbSRAM_L0 <= CoreApbSram_IOLL(3 downto 0)&COREApbSram_loll(3 downto 0);
when "1001" =>
CoreApBSRAM_L0 <= CoreApbSraM_IOLL(3 downto 0)&CoreApbSram_LOLL(3 downto 0);
when "1010" =>
CoreApbSram_L0 <= CoreApbSraM_LLI(3 downto 0)&COREApbSram_ilI(3 downto 0);
when "1011" =>
CoREAPBSRam_l0 <= COREAPbSram_lli(3 downto 0)&COREAPBSram_ili(3 downto 0);
when "1100" =>
CoreApbSrAM_L0 <= COREAPBSram_l1ol(3 downto 0)&CoreAPBSRAM_O1ol(3 downto 0);
when "1101" =>
CoreApbSram_L0 <= COREApbSram_l1ol(3 downto 0)&CoreApbSram_O1OL(3 downto 0);
when "1110" =>
COREApbSram_l0 <= CoreApbSram_OOLL(3 downto 0)&COREAPBSRam_i1ol(3 downto 0);
when "1111" =>
COREApbSram_l0 <= COReApbSram_oOLL(3 downto 0)&COReApbSram_i1OL(3 downto 0);
when others =>
null
;
end case;
when 2 =>
CoreAPBSRAM_ii0 <= "01";
COREAPbSram_o00 <= "01";
COREAPbSram_l00 <= "01";
COREAPBSram_i00 <= "01";
CoreAPBSRAM_o10 <= "01";
COReApbSram_l10 <= "01";
CoreApBSRAM_I10 <= "01";
CoreApbSram_OO1 <= "01";
COReApbSram_lo1 <= "10";
CoreApbSrAM_IO1 <= "10";
CoreApbSRAM_O0ll <= '0'&CoreAPBSRAM_li(10 downto 0);
CoreApBSram_l0LL <= '0'&CoREAPBSram_li(10 downto 0);
COREAPbSram_i0LL <= '0'&CoreApBSRAM_li(10 downto 0);
CoreApbSRAM_O1ll <= '0'&CoreApBSRAM_li(10 downto 0);
COreApbSraM_L1Ll <= '0'&CoreAPBSRam_li(10 downto 0);
COReApbSraM_I1LL <= '0'&CoreApbSrAM_LI(10 downto 0);
COREAPbSram_oOIL <= '0'&COREAPbSram_li(10 downto 0);
CoreAPBSRAm_loil <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreAPBSRAm_ioil <= "00"&CoreAPBSRAm_li(9 downto 0);
COREApbSram_OLIL <= "00"&COreApbSrAM_LI(9 downto 0);
CoreAPBSRAm_l0il <= '0'&CoreApBSRAM_ii(10 downto 0);
CoreAPBSRam_i0il <= '0'&COreApbSraM_II(10 downto 0);
COREAPbSram_o1IL <= '0'&COREAPbSram_iI(10 downto 0);
CoreApbSRAM_L1il <= '0'&CoreApBSRAM_ii(10 downto 0);
CoreApbSRAM_I1il <= '0'&CorEAPBSram_ii(10 downto 0);
COReApbSraM_OO0L <= '0'&CoreApBSRAM_ii(10 downto 0);
COREAPbSram_lO0L <= '0'&CoreApbSRAM_II(10 downto 0);
CoreAPBSRAm_io0l <= '0'&COReApbSram_II(10 downto 0);
CoreApbSRAM_OL0l <= "00"&COreApbSrAM_II(9 downto 0);
COreApbSrAM_LL0l <= "00"&CoREAPBSram_ii(9 downto 0);
CoreApbSRAM_i01(1 downto 0) <= CoREAPBSram_o0(1 downto 0);
COREAPBSram_o11(1 downto 0) <= COReApbSraM_O0(3 downto 2);
CoreAPBSRAm_l11(1 downto 0) <= CoreApbSRAM_o0(5 downto 4);
CoreApbSRAM_i11(1 downto 0) <= CoreApBSRAM_o0(7 downto 6);
COreApbSrAM_OOOl(1 downto 0) <= COreApbSrAM_O0(1 downto 0);
COreApbSrAM_LOOl(1 downto 0) <= CoreApBSRAM_o0(3 downto 2);
COREAPbSram_iOOL(1 downto 0) <= COREApbSram_O0(5 downto 4);
COreApbSraM_OLOl(1 downto 0) <= COREAPBSram_o0(7 downto 6);
CoreApbSRAM_llol(3 downto 0) <= CoREAPBSram_o0(3 downto 0);
COREApbSram_ILOL(3 downto 0) <= COREApbSram_O0(7 downto 4);
case (CoreApbSrAM_LI(12 downto 9)) is
when "0000" =>
CorEAPBSram_o01(3 downto 0) <= COREApbSram_I0I&COREApbSram_I0I&COReApbSraM_I0I&COReApbSraM_I0I;
when "0001" =>
COREApbSram_O01(3 downto 0) <= CoreApbSRAM_I0i&CoreAPBSRAM_i0i&COREAPBSram_i0I&CoreApbSRAM_i0i;
when "0010" =>
CoreAPBSram_o01(3 downto 0) <= CoreApbSRAM_i0i&COREAPbSram_i0I&CoreApbSRAM_I0i&COREApbSram_I0I;
when "0011" =>
COreApbSrAM_O01(3 downto 0) <= COReApbSraM_I0I&CoreAPBSRam_i0i&COREApbSram_I0I&COReApbSraM_I0I;
when "0100" =>
COReApbSraM_O01(7 downto 4) <= CoreAPBSRam_i0i&CoreApBSRAM_i0i&CoreAPBSRAM_i0i&COREAPBSram_i0I;
when "0101" =>
CorEAPBSRam_o01(7 downto 4) <= COREApbSram_I0I&COReApbSraM_I0I&COREApbSram_I0I&COREApbSram_I0I;
when "0110" =>
CoreApbSRAM_O01(7 downto 4) <= COREAPbSram_i0I&COREAPbSram_i0I&CoreApbSRAM_I0i&COREAPbSram_i0I;
when "0111" =>
CoreAPBSRam_o01(7 downto 4) <= CoreAPBSRAM_i0i&COREAPbSram_i0I&CorEAPBSRam_i0i&CoreApbSRAM_i0i;
when "1000" =>
CoREAPBSram_o01(9 downto 8) <= CoreAPBSRAm_i0i&CoreApbSRAM_I0i;
when "1001" =>
CorEAPBSram_o01(9 downto 8) <= COREAPbSram_i0I&CoreApbSRAM_i0i;
when "1010" =>
CoreApbSRAM_O01(3 downto 0) <= CoreApBSRAM_i0i&CoreApbSRAM_i0i&CoreAPBSRAm_i0i&CoreApbSRAM_I0i;
when "1011" =>
COReApbSraM_O01(3 downto 0) <= CoreApbSRAM_I0i&CorEAPBSram_i0i&COREAPBSram_i0I&CoreApbSrAM_I0i;
when "1100" =>
COreApbSrAM_O01(7 downto 4) <= COREApbSram_I0I&CoreApBSRAM_i0i&CorEAPBSram_i0i&COREAPbSram_I0I;
when "1101" =>
CoreApbSRAM_O01(7 downto 4) <= CoreApBSRAM_i0i&COreApbSrAM_I0I&COREApbSram_I0I&CoreApbSRAM_i0i;
when "1110" =>
CoreAPBSRAm_o01(7 downto 4) <= CoreApbSRAM_i0i&CoreApBSRAM_i0i&COReApbSraM_I0I&COReApbSraM_I0I;
when "1111" =>
CoreApbSRAM_o01(7 downto 4) <= COREApbSram_I0I&COReApbSraM_I0I&COReApbSraM_I0I&CoreAPBSRAm_i0i;
when others =>
null
;
end case;
case (COREAPbSram_iI(12 downto 9)) is
when "0000" =>
CoreAPBSRAm_l01(3 downto 0) <= COreApbSrAM_O1I&CorEAPBSram_o1i&COREApbSram_O1I&CorEAPBSram_o1i;
when "0001" =>
COREApbSram_L01(3 downto 0) <= CoreApBSRAM_o1i&CoreAPBSRAM_o1i&CoreApbSRAM_O1i&CoreApbSRAM_O1i;
when "0010" =>
COReApbSraM_L01(3 downto 0) <= CorEAPBSRam_o1i&CoreAPBSRAm_o1i&CorEAPBSram_o1i&CorEAPBSram_o1I;
when "0011" =>
COreApbSrAM_L01(3 downto 0) <= COREApbSram_O1I&CoreApBSRAM_o1i&CoreAPBSRAm_o1i&CoreAPBSRAm_o1i;
when "0100" =>
CorEAPBSram_l01(7 downto 4) <= CoreApBSRAm_o1i&COREApbSram_O1I&COReApbSram_O1I&COreApbSrAM_O1i;
when "0101" =>
CoreAPBSRam_l01(7 downto 4) <= COreApbSrAM_O1I&CoreAPBSRam_o1i&CoreApbSRAM_o1i&CoreApbSRAM_o1i;
when "0110" =>
COreApbSrAM_L01(7 downto 4) <= COReApbSraM_O1I&CoreApbSRAM_O1i&CoREAPBSram_o1i&COREApbSram_O1I;
when "0111" =>
COREAPbSram_l01(7 downto 4) <= CoreAPBSRam_o1i&COReApbSraM_O1I&COREApbSram_O1I&CoREAPBSram_o1I;
when "1000" =>
COREApbSram_L01(9 downto 8) <= COReApbSraM_O1I&CoreApbSRAM_O1i;
when "1001" =>
COREApbSram_L01(9 downto 8) <= COREApbSram_o1I&CoreApbSrAM_O1i;
when "1010" =>
CoreApbSRAM_l01(3 downto 0) <= CoreAPBSRam_o1i&CoreAPBSRam_o1i&CoreAPBSRam_o1i&CoreApbSRAM_O1i;
when "1011" =>
COREAPbSram_l01(3 downto 0) <= CoreApBSRAm_o1i&CoreAPBSRam_o1i&COreApbSrAM_O1I&CoREAPBSram_o1I;
when "1100" =>
COREAPbSram_l01(7 downto 4) <= CoreApbSRAM_o1i&CorEAPBSRam_o1i&CoreApbSrAM_O1i&CoreAPBSRam_o1i;
when "1101" =>
COreApbSrAM_L01(7 downto 4) <= CorEAPBSram_o1i&CoreApbSRAM_o1i&CoreAPBSRAm_o1i&COREApbSram_O1I;
when "1110" =>
CoreApBSRAM_l01(7 downto 4) <= CoreAPBSRAM_o1i&CoreApbSrAM_O1I&COREAPBSram_o1I&COREAPbSram_o1I;
when "1111" =>
CoreApbSRAM_L01(7 downto 4) <= CoreApBSRAM_o1i&CorEAPBSRam_o1i&CoREAPBSram_o1I&CoreApbSrAM_O1I;
when others =>
null
;
end case;
case (CoreApbSRAM_li0(12 downto 9)) is
when "0000" =>
CorEAPBSRam_l0 <= CoreAPBSRAm_lli(1 downto 0)&COREApbSram_ILI(1 downto 0)&COREApbSram_OII(1 downto 0)&CoreApbSrAM_LIi(1 downto 0);
when "0001" =>
COreApbSrAM_L0 <= CoREAPBSram_llI(1 downto 0)&COReApbSram_ILI(1 downto 0)&CoreApbSRAM_Oii(1 downto 0)&CoreApbSRAM_Lii(1 downto 0);
when "0010" =>
CoREAPbSram_l0 <= COreApbSrAM_LLi(1 downto 0)&COREAPbSram_iLI(1 downto 0)&CoreAPBSRam_oii(1 downto 0)&CorEAPBSram_lii(1 downto 0);
when "0011" =>
CoreAPBSRAM_l0 <= CoreApBSRAM_lli(1 downto 0)&CorEAPBSram_ili(1 downto 0)&COReApbSraM_OII(1 downto 0)&CoreApbSRAM_LIi(1 downto 0);
when "0100" =>
CoreApBSRam_l0 <= CoREAPBSram_ooLL(1 downto 0)&CoreAPBSram_i1oL(1 downto 0)&COREApbSram_L1OL(1 downto 0)&CoreAPBSRAm_o1ol(1 downto 0);
when "0101" =>
COREAPBSram_l0 <= CorEAPBSram_oolL(1 downto 0)&CoreApbSRAM_i1ol(1 downto 0)&CoreAPBSRam_l1ol(1 downto 0)&COREAPbSram_o1OL(1 downto 0);
when "0110" =>
CoreAPBSRAM_l0 <= CoreApbSRAM_OOll(1 downto 0)&CoreApbSRAM_I1ol(1 downto 0)&COREApbSram_L1OL(1 downto 0)&COREApbSram_O1OL(1 downto 0);
when "0111" =>
CoreAPBSRam_l0 <= CoreApBSRAM_ooll(1 downto 0)&CoreApBSRAM_i1ol(1 downto 0)&COREApbSram_L1OL(1 downto 0)&CoreApbSRAM_O1ol(1 downto 0);
when "1000" =>
CoreApBSRAm_l0 <= CoreApBSRAM_ioll(3 downto 0)&CoreAPBSRAm_loll(3 downto 0);
when "1001" =>
CoreAPBSRam_l0 <= CoreApbSRAM_ioll(3 downto 0)&CoreApbSrAM_LOLl(3 downto 0);
when "1010" =>
CoreApbSRAm_l0 <= COReApbSraM_LLI(1 downto 0)&CoreAPBSRam_ili(1 downto 0)&CoreApbSrAM_OII(1 downto 0)&COREApbSram_LII(1 downto 0);
when "1011" =>
CoreApBSRAM_l0 <= COREApbSram_LLI(1 downto 0)&COReApbSraM_ILI(1 downto 0)&COReApbSraM_OII(1 downto 0)&COreApbSrAM_LII(1 downto 0);
when "1100" =>
COREAPBSram_l0 <= COREApbSram_OOLL(1 downto 0)&COreApbSrAM_I1Ol(1 downto 0)&CorEAPBSram_l1oL(1 downto 0)&CoREAPBSram_o1OL(1 downto 0);
when "1101" =>
CoreApBSRAM_l0 <= COREApbSram_OOLL(1 downto 0)&COREApbSram_I1OL(1 downto 0)&COreApbSrAM_L1Ol(1 downto 0)&CoreApBSRAM_o1ol(1 downto 0);
when "1110" =>
CoreApbSRAM_L0 <= COREApbSraM_OOLL(1 downto 0)&COreApbSrAM_I1Ol(1 downto 0)&CoreApbSRAM_l1ol(1 downto 0)&COREApbSram_O1OL(1 downto 0);
when "1111" =>
CoreApBSRAM_l0 <= CoreAPBSRam_oolL(1 downto 0)&COReApbSraM_I1OL(1 downto 0)&COREApbSraM_L1OL(1 downto 0)&COREAPbSram_o1OL(1 downto 0);
when others =>
null
;
end case;
when others =>
COREApbSraM_II0 <= "00";
CoreApbSRAM_O00 <= "00";
COreApbSrAM_L00 <= "00";
COREApbSram_I00 <= "00";
COReApbSraM_O10 <= "00";
CorEAPBSram_l10 <= "00";
CoreApbSRAM_i10 <= "00";
COREApbSram_OO1 <= "00";
CoreApbSRAM_lo1 <= "10";
CoreApbSRAM_IO1 <= "10";
COREAPBSram_o0ll <= CoreApbSrAM_LI(11 downto 0);
COreApbSram_L0LL <= COREApbSram_li(11 downto 0);
CoreAPBSRAM_I0ll <= CoreApbSRAM_LI(11 downto 0);
CorEAPBSRAM_o1ll <= CoreApbSRAM_Li(11 downto 0);
COREApbSram_l1LL <= COREApbSram_LI(11 downto 0);
CoreApbSRAM_i1ll <= COreApbSrAM_LI(11 downto 0);
CoreApbSRAM_OOIL <= COREAPBSram_li(11 downto 0);
COREAPBSram_loil <= CoreApbSRAM_LI(11 downto 0);
CoreApBSRAM_Ioil <= "00"&COREAPbSram_li(9 downto 0);
CoreApBSRAM_Olil <= "00"&CoreAPBSRAM_li(9 downto 0);
CoREAPBSRAm_l0il <= CorEAPBSRAM_ii(11 downto 0);
CoreAPBSRAM_i0il <= COREAPBSram_ii(11 downto 0);
COREApbSram_o1iL <= CoreApbSRAM_II(11 downto 0);
CoreApbSraM_L1IL <= CoreApBSRAM_Ii(11 downto 0);
COreApbSram_i1IL <= CoreApbSram_II(11 downto 0);
COREApbSram_oo0L <= COreApbSram_iI(11 downto 0);
CoreAPBSRAM_lo0l <= COREAPBSram_ii(11 downto 0);
CoreApbSrAM_IO0L <= CoreApbSrAM_II(11 downto 0);
COREApbSram_ol0L <= "00"&CoreApbSraM_II(9 downto 0);
COREAPBSram_ll0l <= "00"&COREApbSram_ii(9 downto 0);
COREAPBSram_i01(0) <= COREApbSram_o0(0);
COREAPBSram_o11(0) <= CoreApbSraM_O0(1);
CoreAPBSRAM_l11(0) <= CoreApbSram_O0(2);
CoreApbSraM_I11(0) <= CoreApbSRAM_O0(3);
CoreApbSram_OOOL(0) <= CoreApbSRAM_O0(4);
CoreApbSRAM_LOol(0) <= COREAPbSram_o0(5);
COREApbSram_ioOL(0) <= CoreApbSRAM_O0(6);
COREApbSram_oloL(0) <= CoreApbSram_O0(7);
COREApbSram_lloL(3 downto 0) <= CoreApbSrAM_O0(3 downto 0);
CoreApbSram_ILOL(3 downto 0) <= COREAPbSram_o0(7 downto 4);
case (COREAPbSram_li(12 downto 9)) is
when "0000" =>
CoreApbSRAM_O01(7 downto 0) <= CoreApbSram_I0I&COREApbSram_i0I&COREAPBSram_i0i&COreApbSram_i0I&CoreApBSRAM_I0i&COReApbSram_i0I&CoreApBSRAM_I0i&COREAPbSram_i0i;
when "0001" =>
COREApbSram_o01(7 downto 0) <= CoREAPBSRAm_i0i&CoREAPBSRAm_i0i&CoreApbSram_I0I&CoreApBSRAM_I0i&COREAPbSram_i0i&CoreApbSram_I0I&COREAPBSram_i0i&COreApbSram_I0I;
when "0010" =>
COreApbSram_o01(7 downto 0) <= COREAPBSram_i0i&COREAPBSram_i0i&CoreApbSRAM_I0I&COREApbSram_i0i&COReApbSram_i0I&CorEAPBSRAM_i0i&COREApbSram_i0i&CoreApbSraM_I0I;
when "0011" =>
CoreApbSRAM_O01(7 downto 0) <= CoreApbSram_I0I&COReApbSram_i0I&CoreApbSRAM_I0i&COREAPbSram_i0i&COReApbSram_i0I&CoreApBSRAM_I0i&COREApbSram_i0i&CoreApBSRAM_I0i;
when "0100" =>
COREAPBSram_o01(7 downto 0) <= COREAPBSRam_i0i&COREAPBSram_i0i&COREApbSram_i0I&CoreApBSRAM_I0i&COReApbSram_i0I&CoreAPBSRAM_i0i&COREAPBSRam_i0i&COREApbSram_i0i;
when "0101" =>
COREAPBSram_o01(7 downto 0) <= COreApbSram_i0I&COREApbSram_i0i&CoreApbSram_I0I&CoREAPBSRAm_i0i&CoreApbSram_I0I&COREAPBSram_i0i&COREApbSram_i0i&CoreApbSram_I0I;
when "0110" =>
CoreApbSram_O01(7 downto 0) <= CoREAPBSRAm_i0i&COREAPBSram_i0i&COreApbSram_i0I&CorEAPBSRAm_i0i&COreApbSram_i0I&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApbSram_I0I;
when "0111" =>
CoreApbSRAM_O01(7 downto 0) <= CoreApbSram_I0I&COREApbSram_i0i&COreApbSram_i0I&COREAPBSram_i0i&COReApbSram_i0I&CoreAPBSRAM_I0i&COREApbSram_i0i&CoreApbSram_I0I;
when "1000" =>
CoreApbSraM_O01(9 downto 8) <= CoreApbSram_I0I&COREApbSram_i0i;
when "1001" =>
COREApbSram_o01(9 downto 8) <= CoreApbSram_I0I&COREAPBSram_i0i;
when "1010" =>
CorEAPBSram_o01(7 downto 0) <= CoreApBSRAM_I0i&CoreApbSRAM_I0I&COREAPBSRam_i0i&CoreApbSram_I0I&CoreApbSRAM_I0I&COREAPbSram_i0i&COREApbSram_i0i&COreApbSram_i0I;
when "1011" =>
CoreApBSRAM_O01(7 downto 0) <= COReApbSram_i0I&CoreApbSram_I0I&CoreApbSRAM_I0I&COreApbSram_I0I&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApbSraM_I0I&CorEAPBSRAM_i0i;
when "1100" =>
CoreApbSRAM_O01(7 downto 0) <= COreApbSram_I0I&COreApbSram_i0I&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApbSraM_I0I&COREAPBSRam_i0i&COreApbSram_i0I&CoreApbSraM_I0I;
when "1101" =>
CoreApbSraM_O01(7 downto 0) <= CorEAPBSRAM_i0i&CoreApbSrAM_I0I&CoreAPBSRAM_i0i&COreApbSram_i0I&CoreApbSram_I0I&CorEAPBSRAM_i0i&COREAPBSram_i0i&CoreApbSram_I0I;
when "1110" =>
COREApbSram_o01(7 downto 0) <= CoreApbSrAM_I0I&CoreApbSram_I0I&CoreApbSrAM_I0I&CorEAPBSRAm_i0i&COReApbSram_i0I&CoreApBSRAM_I0i&COREApbSram_i0i&COreApbSram_i0I;
when "1111" =>
COREAPBSram_o01(7 downto 0) <= COReApbSram_i0I&COREAPBSram_i0i&COReApbSram_i0I&CoreApbSrAM_I0I&CoreAPBSRAM_i0i&COReApbSram_i0I&CoreApbSram_I0I&CoreAPBSRAM_i0i;
when others =>
null
;
end case;
case (COREApbSram_ii(12 downto 9)) is
when "0000" =>
COreApbSram_l01(7 downto 0) <= COREAPBSram_o1i&COREAPbSram_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&COREApbSram_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&COREAPBSram_o1i;
when "0001" =>
CorEAPBSRAM_l01(7 downto 0) <= COREAPBSram_o1i&COREAPBSram_o1i&COREApbSram_o1i&CoreApbSraM_O1I&CorEAPBSRAM_o1i&CoreApbSraM_O1I&CoREAPBSRAm_o1i&COREApbSram_o1i;
when "0010" =>
COReApbSram_l01(7 downto 0) <= CoreApbSraM_O1I&COREApbSram_o1I&CoreApbSram_O1I&COREAPBSRam_o1i&COREApbSram_o1i&CoreApbSrAM_O1I&CoREAPBSRam_o1i&COREApbSram_o1I;
when "0011" =>
CoreApbSram_L01(7 downto 0) <= CoreApbSraM_O1I&CoreApbSram_O1I&CoreApbSRAM_O1I&COREAPbSram_o1i&CoreApbSraM_O1I&COREAPBSram_o1i&COReApbSram_o1I&CoreApbSraM_O1I;
when "0100" =>
COREApbSram_l01(7 downto 0) <= COREAPBSram_o1i&COREAPBSram_o1i&CoreApbSraM_O1I&COREAPBSram_o1i&COREApbSram_o1I&CoreAPBSRAM_O1i&COREAPbSram_o1i&CoreApbSrAM_O1I;
when "0101" =>
CoreAPBSRAM_l01(7 downto 0) <= COREApbSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&COREAPBSRam_o1i&COREApbSram_o1i&CoreAPBSRAM_o1i&COREApbSram_o1i&CoreApbSraM_O1I;
when "0110" =>
CoreAPBSRAM_l01(7 downto 0) <= COREApbSraM_O1I&COREAPbSram_o1I&CoreApbSRAM_O1i&CoreApbSRAM_o1i&COREApbSram_O1I&COreApbSraM_O1I&CoreApbSRAM_o1i&COREAPbSram_o1I;
when "0111" =>
CoreAPBSRam_l01(7 downto 0) <= CoreAPBSram_o1i&COreApbSrAM_O1i&COREApbSram_O1I&COReApbSrAM_O1I&COreApbSrAM_O1I&CoREAPBSram_o1I&COREApbSram_O1I&COReApbSrAM_O1I;
when "1000" =>
CoreApBSRAM_L01(9 downto 8) <= COreApbSram_O1I&COReApbSram_o1I;
when "1001" =>
CoreApBSRAM_L01(9 downto 8) <= COReApbSram_o1I&CoreApbSrAM_O1I;
when "1010" =>
CoreApbSRAM_L01(7 downto 0) <= CoreApBSRAM_O1i&COREAPBSRam_o1i&CoreApBSRAM_O1i&COReApbSram_o1I&CoreApbSRAM_O1I&COREApbSram_o1i&CoreAPBSRAM_o1i&COReApbSram_o1I;
when "1011" =>
COREAPBSRam_l01(7 downto 0) <= COREApbSram_o1i&COReApbSram_o1I&CoreAPBSRAM_O1i&CoreApbSram_O1I&CoreApbSrAM_O1I&COREAPbSram_o1i&CoreApbSram_O1I&COREAPBSRam_o1i;
when "1100" =>
CoreApbSraM_L01(7 downto 0) <= COReApbSram_o1I&COREAPBSram_o1i&COreApbSram_o1I&CoreApbSraM_O1I&COREAPbSram_o1i&COREAPBSram_o1i&CoreApbSRAM_O1i&COREApbSram_o1i;
when "1101" =>
COREApbSram_L01(7 downto 0) <= CoreApbSRAM_o1i&CoreAPBSRam_o1i&COReApbSram_O1I&COREApbSram_O1I&CoREAPBSram_o1I&COREApbSram_O1I&CoreApbSrAM_o1i&CorEAPBSram_o1i;
when "1110" =>
CoreAPBSRAM_l01(7 downto 0) <= COREApbSram_o1i&CoreApbSraM_O1I&COREAPBSram_o1i&CoreApBSRAM_O1i&COReApbSram_o1I&CoreAPBSRAM_o1i&CoreApbSraM_O1I&COREAPBSram_o1i;
when "1111" =>
CoreApbSram_L01(7 downto 0) <= CoreApbSram_O1I&CoreApbSraM_O1I&COREApbSram_o1i&CoREAPBSRAm_o1i&CoreApbSRAM_O1I&CoreApbSraM_O1I&COREAPBSram_o1i&CoreApbSram_O1I;
when others =>
null
;
end case;
case (CoreApbSRAM_LI0(12 downto 9)) is
when "0000" =>
COREAPbSram_l0 <= CoreApbSram_OOLL(0)&CorEAPBSRAM_i1ol(0)&COREAPBSram_l1ol(0)&CoreApbSram_O1OL(0)&CoreAPBSRAM_lli(0)&CoreApbSrAM_ILI(0)&CoreApbSrAM_OII(0)&CoreApbSraM_LII(0);
when "0001" =>
CoreApbSram_L0 <= COREAPBSram_ooll(0)&CoreApbSrAM_I1OL(0)&CoREAPBSRam_l1ol(0)&COREAPBSRam_o1ol(0)&COREAPBSram_lli(0)&COREApbSram_ili(0)&CoreApBSRAM_Oii(0)&CoreApbSrAM_LII(0);
when "0010" =>
CoreApbSRAM_L0 <= CoreApbSram_OOLL(0)&COREApbSram_i1oL(0)&COREApbSram_l1ol(0)&COREApbSram_o1oL(0)&COREAPbSram_lli(0)&CoreApbSrAM_ILI(0)&COreApbSram_OII(0)&CoreApBSRAM_Lii(0);
when "0011" =>
CoreAPBSRAM_l0 <= CoreApbSraM_OOLL(0)&CoreApbSrAM_I1OL(0)&CoreApBSRAM_L1ol(0)&CoreApbSram_O1OL(0)&COREApbSram_lli(0)&COREAPbSram_ili(0)&CorEAPBSRAM_oii(0)&CoreApbSRAM_LII(0);
when "0100" =>
CoreApbSrAM_L0 <= COREAPBSram_ooll(0)&COREAPBSram_i1ol(0)&COREAPbSram_l1ol(0)&COREApbSram_o1ol(0)&CoreApbSram_LLI(0)&CoreApbSrAM_ILI(0)&COReApbSram_oiI(0)&COREAPBSRam_lii(0);
when "0101" =>
CoreApbSram_L0 <= COREApbSram_ooLL(0)&COREAPbSram_i1ol(0)&COreApbSram_l1OL(0)&COReApbSram_o1OL(0)&COreApbSram_lLI(0)&CoreApbSrAM_ILI(0)&COREAPBSram_oii(0)&CoreApbSram_LII(0);
when "0110" =>
CoREAPBSRAm_l0 <= CoreAPBSRAM_ooll(0)&CoreApbSram_I1OL(0)&CoreAPBSRAM_l1ol(0)&CoREAPBSRAm_o1ol(0)&COreApbSram_lLI(0)&CoreApbSrAM_ILI(0)&COREApbSram_oii(0)&CoreAPBSRAM_lii(0);
when "0111" =>
COREAPbSram_l0 <= COREApbSram_oolL(0)&COReApbSram_i1OL(0)&COReApbSram_l1OL(0)&CoreApbSram_O1OL(0)&COREApbSram_lli(0)&CoreApbSrAM_ILI(0)&CoreApbSram_OII(0)&CoreApbSram_LII(0);
when "1000" =>
CoreAPBSram_l0 <= CorEAPBSRAM_ioll(3 downto 0)&CoreApbSram_LOLL(3 downto 0);
when "1001" =>
CoREAPBSRAm_l0 <= COreApbSram_iOLL(3 downto 0)&COREAPbSram_loll(3 downto 0);
when "1010" =>
CoreApbSRAM_L0 <= COREAPBSram_ooll(0)&COREApbSram_i1OL(0)&COREApbSram_l1oL(0)&CoreApbSRAM_O1Ol(0)&CoreAPBSRAM_lli(0)&CoreApbSrAM_ILI(0)&CoreApbSraM_OII(0)&CoreApbSrAM_LII(0);
when "1011" =>
CoreApbSRAM_L0 <= COREApbSram_oolL(0)&COREApbSram_i1ol(0)&CoreApbSraM_L1OL(0)&CoreApbSRAM_O1Ol(0)&COReApbSram_lLI(0)&COreApbSram_iLI(0)&COREAPBSram_oii(0)&COReApbSram_liI(0);
when "1100" =>
CorEAPBSRAM_l0 <= COREAPBSram_ooll(0)&CoreAPBSRAM_i1ol(0)&CorEAPBSRAm_l1ol(0)&COREApbSram_o1ol(0)&CorEAPBSRAM_lli(0)&CoreApbSrAM_ILI(0)&CoreApbSraM_OII(0)&COREAPbSram_lii(0);
when "1101" =>
COREApbSram_l0 <= CoreAPBSRAM_Ooll(0)&CoreAPBSRAM_i1ol(0)&COREApbSram_l1oL(0)&COREAPBSram_o1ol(0)&COREAPbSram_lli(0)&COREApbSram_ili(0)&CoreAPBSRAM_oii(0)&COREApbSram_lii(0);
when "1110" =>
COREAPBSRam_l0 <= CoreApbSram_OOLL(0)&COReApbSram_i1OL(0)&CoreApbSRAM_L1ol(0)&COREAPBSram_o1ol(0)&CoreAPBSRAM_Lli(0)&CoreApbSraM_ILI(0)&CoreApbSraM_OII(0)&CoreApBSRAM_Lii(0);
when "1111" =>
CoreApbSraM_L0 <= CoreAPBSRAM_ooll(0)&CoreApBSRAM_I1ol(0)&COREAPbSram_l1OL(0)&CoreApbSRAM_O1ol(0)&CoreAPBSRam_lli(0)&CoreApbSRAM_ili(0)&CoreApbSRAM_OIi(0)&CoreApbSRAM_Lii(0);
when others =>
null
;
end case;
end case;
when 5632 =>
case (CorEAPBSRam_oi0) is
when 8 =>
CoreAPBSram_iI0 <= "11";
COReApbSraM_O00 <= "11";
COREAPbSram_l00 <= "11";
CoreApbSRAM_i00 <= "11";
CoreApbSRAM_o10 <= "11";
CorEAPBSram_l10 <= "11";
CoreAPBSRAm_i10 <= "11";
CoreApbSRAM_oo1 <= "11";
COReApbSraM_LO1 <= "11";
COREApbSram_IO1 <= "11";
COreApbSrAM_OL1 <= "11";
CorEAPBSram_o0LL <= "000"&CoreApBSRAM_li(8 downto 0);
CoREAPBSram_l0LL <= "000"&COREApbSram_LI(8 downto 0);
CoreApbSRAM_I0ll <= "000"&COReApbSraM_LI(8 downto 0);
COREApbSraM_O1LL <= "000"&CoreAPBSRam_li(8 downto 0);
COreApbSrAM_L1ll <= "000"&CoreApbSRAM_Li(8 downto 0);
CoreApbSRAM_I1ll <= "000"&CoreAPBSrAM_LI(8 downto 0);
CoreApbSRAM_Ooil <= "000"&CoreApbSRAM_li(8 downto 0);
COReApbSraM_LOIl <= "000"&CoreAPBSRam_li(8 downto 0);
CoreAPBSRam_ioil <= "000"&CoreAPBSRAm_li(8 downto 0);
CoreAPBSram_oliL <= "000"&CoREAPBSram_lI(8 downto 0);
CoreApbSRAM_llil <= "000"&COreApbSrAM_LI(8 downto 0);
COREApbSram_L0IL <= "000"&CoreApbSRAM_ii(8 downto 0);
COreApbSrAM_I0il <= "000"&COReApbSraM_II(8 downto 0);
COREApbSram_O1IL <= "000"&CoreApbSRAM_II(8 downto 0);
CoreApBSRAM_l1il <= "000"&COreApbSrAM_II(8 downto 0);
COREApbSram_I1IL <= "000"&COREApbSram_II(8 downto 0);
COreApbSrAM_OO0l <= "000"&CoreApBSRAM_ii(8 downto 0);
CorEAPBSram_lO0L <= "000"&CoreAPBSRam_ii(8 downto 0);
COReApbSraM_IO0L <= "000"&CorEAPBSram_ii(8 downto 0);
COreApbSraM_OL0l <= "000"&CoreAPBSRAm_ii(8 downto 0);
CoreApbSRAM_ll0l <= "000"&COreApbSrAM_II(8 downto 0);
COReApbSraM_IL0l <= "000"&CoreApbSRAM_II(8 downto 0);
CoreApbSRAM_I01 <= COREApbSram_O0;
CoreApbSRAM_o11 <= CoreApbSRAM_o0;
CoreApBSRAM_l11 <= CoREAPBSram_o0;
CorEAPBSram_i11 <= COReApbSraM_O0;
CoreApbSRAM_Oool <= COREApbSram_O0;
CoreApBSRAM_lool <= COREAPbSram_o0;
CoreAPBSRam_iool <= CorEAPBSram_o0;
COREApbSram_OLOL <= CoreApbSRAM_o0;
COREApbSram_LLOL <= CoreApbSRAM_O0;
CoreApBSRAM_ilol <= COREApbSram_O0;
CoreApBSRAM_oiol <= CorEAPBSram_o0;
case (CoreApBSRAM_li(12 downto 9)) is
when "0000" =>
COReApbSraM_O01(0) <= COreApbSrAM_I0I;
when "0001" =>
CoreAPBSRAm_o01(1) <= CoreApbSRAM_I0i;
when "0010" =>
CoreApBSRAM_o01(2) <= COREApbSram_I0I;
when "0011" =>
CoreApBSRAm_o01(3) <= CoreApBSRAM_i0i;
when "0100" =>
CoREAPbSram_O01(4) <= COREAPbSram_I0I;
when "0101" =>
CoreApbSRAM_o01(5) <= CoreAPBSRam_i0i;
when "0110" =>
CoreAPBSRAM_O01(6) <= CoREAPBSRAm_i0i;
when "0111" =>
CoreApbSRAM_O01(7) <= CoreApbSrAM_I0I;
when "1000" =>
COreApbSram_o01(8) <= COreApbSram_i0I;
when "1001" =>
CoreAPBSRAM_o01(9) <= COreApbSram_i0I;
when "1010" =>
CoREAPBSRam_o01(10) <= COREAPBSram_i0i;
when "1011" =>
CoreAPBSRAm_o01(3) <= CoreApbSrAM_I0I;
when "1100" =>
COreApbSram_O01(4) <= COREApbSram_i0i;
when "1101" =>
COREAPBSRam_o01(5) <= COREApbSram_i0i;
when "1110" =>
CoreApbSRAM_O01(6) <= COREApbSram_i0i;
when "1111" =>
CoreApbSram_O01(7) <= CoreAPBSRAM_i0i;
when others =>
null
;
end case;
case (CoREAPBSRAm_ii(12 downto 9)) is
when "0000" =>
CoreApbSrAM_L01(0) <= COReApbSram_o1I;
when "0001" =>
CoreAPBSRAM_L01(1) <= COREAPbSram_o1i;
when "0010" =>
CoREAPBSRAm_l01(2) <= COREAPbSram_o1i;
when "0011" =>
COREApbSram_l01(3) <= CoreApBSRAM_O1i;
when "0100" =>
COReApbSram_l01(4) <= CoreApbSram_O1I;
when "0101" =>
CoreApBSRAM_L01(5) <= CoreApBSRAM_O1i;
when "0110" =>
COREApbSram_l01(6) <= CoreAPBSRAM_O1i;
when "0111" =>
COREAPBSRam_l01(7) <= COREApbSram_o1i;
when "1000" =>
CoreAPBSRAM_l01(8) <= CoreAPBSRAM_o1i;
when "1001" =>
COREAPBSram_l01(9) <= COReApbSram_o1I;
when "1010" =>
CoreApBSRAM_L01(10) <= COREAPbSram_o1i;
when "1011" =>
CoreApbSram_L01(3) <= CoreApbSraM_O1I;
when "1100" =>
CoreApbSraM_L01(4) <= CoreApbSram_O1I;
when "1101" =>
CoreApbSrAM_L01(5) <= CoreAPBSRAM_o1i;
when "1110" =>
COREApbSram_l01(6) <= COReApbSram_o1I;
when "1111" =>
CoreAPBSRAM_l01(7) <= COREAPBSRam_o1i;
when others =>
null
;
end case;
case (CoREAPBSRAm_li0(12 downto 9)) is
when "0000" =>
CorEAPBSRAM_l0 <= COReApbSram_liI;
when "0001" =>
COreApbSram_l0 <= CoreApbSram_OII;
when "0010" =>
COREApbSram_l0 <= COReApbSram_ilI;
when "0011" =>
CoreApbSraM_L0 <= COREAPBSram_lli;
when "0100" =>
CoreApbSram_L0 <= CoreApbSRAM_O1OL;
when "0101" =>
COREApbSram_l0 <= COREApbSram_l1OL;
when "0110" =>
COreApbSraM_L0 <= COREApbSram_I1OL;
when "0111" =>
CoreAPBSram_l0 <= CorEApbSram_OOLL;
when "1000" =>
CorEAPBSram_l0 <= COREAPBSRam_loll;
when "1001" =>
CoreAPBSRAM_l0 <= CoreApbSraM_IOLL;
when "1010" =>
COReApbSram_l0 <= CoreApbSRAM_OLLl;
when "1011" =>
COREApbSram_l0 <= CoreApbSraM_LLI;
when "1100" =>
COREApbSram_l0 <= CoreApbSrAM_O1OL;
when "1101" =>
CoREAPBSRAm_l0 <= CoreApbSram_L1OL;
when "1110" =>
COReApbSram_l0 <= CoreApbSraM_I1OL;
when "1111" =>
CoreApbSrAM_L0 <= CoreApbSRAM_OOll;
when others =>
null
;
end case;
when 4 =>
COREAPbSram_ii0 <= "10";
CoreApbSRAM_O00 <= "10";
CoreApbSrAM_L00 <= "10";
CoreAPBSRAM_i00 <= "10";
CoreApbSraM_O10 <= "10";
COREApbSram_l10 <= "10";
CorEAPBSRAM_i10 <= "10";
CoreApbSram_OO1 <= "10";
CorEAPBSRAm_lo1 <= "10";
COREApbSram_io1 <= "10";
COREAPbSram_ol1 <= "11";
CoreApbSRAM_O0ll <= "00"&COREApbSram_li(9 downto 0);
CoreAPBSRAM_l0ll <= "00"&COReApbSram_li(9 downto 0);
COREAPBSram_i0ll <= "00"&CoreAPBSRAM_Li(9 downto 0);
CoreApbSram_O1LL <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSRAM_L1LL <= "00"&CoreApBSRAM_LI(9 downto 0);
COREApbSram_i1ll <= "00"&CoreApbSraM_LI(9 downto 0);
CoreApbSram_OOIL <= "00"&CoREAPBSRAm_li(9 downto 0);
CoreApbSram_LOIL <= "00"&COREAPBSRam_li(9 downto 0);
CoreApbSRAM_Ioil <= "00"&COreApbSrAM_LI(9 downto 0);
CoreApBSRAM_olil <= "00"&CoreAPBSRAm_li(9 downto 0);
CoREAPbSram_lLIL <= "000"&CoreApBSRAM_li(8 downto 0);
COREApbSram_L0IL <= "00"&COREAPbSram_ii(9 downto 0);
COREAPBSram_i0il <= "00"&CoreApbSrAM_II(9 downto 0);
CoreApbSraM_O1IL <= "00"&COREApbSram_ii(9 downto 0);
CoreApbSrAM_L1IL <= "00"&CoreAPBSRAM_Ii(9 downto 0);
COreApbSram_I1IL <= "00"&CoREAPBSRAm_ii(9 downto 0);
CoreApBSRAM_OO0l <= "00"&CoreApbSram_II(9 downto 0);
CoreAPBSRAM_lo0l <= "00"&CoreApbSraM_II(9 downto 0);
COreApbSram_iO0L <= "00"&COREAPbSram_ii(9 downto 0);
CoreAPBSRAM_ol0l <= "00"&COreApbSram_iI(9 downto 0);
CoreAPBSRAM_ll0l <= "00"&CoreApbSraM_II(9 downto 0);
COREAPBSram_il0l <= "000"&COREAPbSram_ii(8 downto 0);
CoreApbSram_I01(3 downto 0) <= CoreApbSraM_O0(3 downto 0);
CoreApbSraM_O11(3 downto 0) <= CoreApbSraM_O0(7 downto 4);
CoreAPBSRAM_l11(3 downto 0) <= CoreAPBSRAM_O0(3 downto 0);
CoreApbSraM_I11(3 downto 0) <= CoreApbSram_O0(7 downto 4);
CoreApbSrAM_OOOL(3 downto 0) <= COREApbSram_o0(3 downto 0);
COREAPBSram_lool(3 downto 0) <= COREApbSram_o0(7 downto 4);
CoreApbSram_IOOL(3 downto 0) <= CoreAPBSRAM_O0(3 downto 0);
COReApbSram_oLOL(3 downto 0) <= CoreApBSRAM_O0(7 downto 4);
CoreApbSRAM_LLOl(3 downto 0) <= CoreApbSram_O0(3 downto 0);
COREApbSram_iloL(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
CorEAPBSRAM_oiol <= CoreApbSram_O0;
case (COReApbSram_lI(12 downto 9)) is
when "0000" =>
CoreApbSram_O01(1 downto 0) <= COREAPbSram_i0i&CoREAPBSRAm_i0i;
when "0001" =>
CoreApbSram_O01(1 downto 0) <= COREApbSram_i0i&COREAPBSRam_i0i;
when "0010" =>
COREAPbSram_o01(3 downto 2) <= CoreApbSRAM_I0I&CoreApbSrAM_I0I;
when "0011" =>
COREApbSram_o01(3 downto 2) <= CoreApbSram_I0I&CoreApbSram_I0I;
when "0100" =>
CoreAPBSRAM_o01(5 downto 4) <= CoreApbSrAM_I0I&COreApbSram_i0I;
when "0101" =>
COREAPBSram_o01(5 downto 4) <= CorEAPBSRAM_i0i&CoreAPBSRAM_i0i;
when "0110" =>
CoreApbSRAM_O01(7 downto 6) <= CoreApbSram_I0I&COREApbSram_i0i;
when "0111" =>
CoreApbSRAM_O01(7 downto 6) <= COREAPBSram_i0i&COREAPBSram_i0i;
when "1000" =>
CoreApbSrAM_O01(9 downto 8) <= CoreApbSRAM_I0I&CoreApbSraM_I0I;
when "1001" =>
COreApbSram_o01(9 downto 8) <= CoreApbSram_I0I&COREApbSram_i0i;
when "1010" =>
CoreApbSRAM_O01(10) <= CoREAPBSRAm_i0i;
when "1011" =>
COREApbSram_o01(3 downto 2) <= COREAPBSram_i0i&CoreAPBSRAM_I0i;
when "1100" =>
COREApbSram_o01(5 downto 4) <= COREAPBSram_i0i&COREAPBSram_i0i;
when "1101" =>
CoreAPBSRAM_o01(5 downto 4) <= COReApbSram_i0I&CorEAPBSRAM_i0i;
when "1110" =>
CoreApbSram_O01(7 downto 6) <= CoreApbSraM_I0I&COREApbSram_i0I;
when "1111" =>
COREAPBSram_o01(7 downto 6) <= CoreAPBSRAM_I0i&CoreApbSraM_I0I;
when others =>
null
;
end case;
case (COREApbSram_ii(12 downto 9)) is
when "0000" =>
COREAPbSram_l01(1 downto 0) <= CoreAPBSRAM_O1i&CoreApbSraM_O1I;
when "0001" =>
COREApbSram_l01(1 downto 0) <= CoreAPBSRAM_o1i&CoreApbSraM_O1I;
when "0010" =>
CoreApbSram_L01(3 downto 2) <= CoreApbSrAM_O1I&COreApbSram_o1I;
when "0011" =>
COREAPBSram_l01(3 downto 2) <= CoreApbSrAM_O1I&CoreApbSram_O1I;
when "0100" =>
COREApbSram_l01(5 downto 4) <= CoreAPBSRAM_o1i&CoreApbSraM_O1I;
when "0101" =>
CoreApbSraM_L01(5 downto 4) <= CoreApbSram_O1I&COREAPbSram_o1i;
when "0110" =>
CoreApbSraM_L01(7 downto 6) <= COreApbSram_o1I&COReApbSram_o1I;
when "0111" =>
COREApbSram_l01(7 downto 6) <= CoreApbSRAM_O1I&CoreAPBSRAM_o1i;
when "1000" =>
COReApbSram_l01(9 downto 8) <= COREAPbSram_o1i&CoREAPBSRAm_o1i;
when "1001" =>
CoreApBSRAM_L01(9 downto 8) <= CoreApbSRAM_O1I&CoreApbSram_O1I;
when "1010" =>
CoreApbSRAM_L01(10) <= COREAPbSram_o1i;
when "1011" =>
CoreApBSRAM_L01(3 downto 2) <= COREApbSram_o1i&CoREAPBSRAm_o1i;
when "1100" =>
CoreApbSRAM_L01(5 downto 4) <= COREApbSram_o1i&CoREAPBSRAm_o1i;
when "1101" =>
CoreApBSRAM_L01(5 downto 4) <= CoreApbSram_O1I&COREAPbSram_o1i;
when "1110" =>
CoreAPBSRAM_l01(7 downto 6) <= CoreApbSRAM_O1I&CoreApbSram_O1I;
when "1111" =>
CoreApbSRAM_L01(7 downto 6) <= CoreApbSraM_O1I&CoreApbSraM_O1I;
when others =>
null
;
end case;
case (CoreAPBSram_LI0(12 downto 9)) is
when "0000" =>
CorEAPBSRam_l0 <= COReApbSraM_OII(3 downto 0)&COreApbSrAM_LIi(3 downto 0);
when "0001" =>
CoreApBSRAM_l0 <= CoreAPBSRAm_oii(3 downto 0)&CoreApbSRAM_Lii(3 downto 0);
when "0010" =>
CoreAPBSRAm_l0 <= COREApbSram_LLI(3 downto 0)&CoreApbSRAM_Ili(3 downto 0);
when "0011" =>
CoREAPBSram_l0 <= CoreApbSRAM_LLi(3 downto 0)&CoreApbSRAM_Ili(3 downto 0);
when "0100" =>
COREApbSram_L0 <= CoreAPBSRAm_l1ol(3 downto 0)&COReApbSraM_O1Ol(3 downto 0);
when "0101" =>
COReApbSrAM_L0 <= COREAPbSram_l1OL(3 downto 0)&CoreApBSRAM_o1ol(3 downto 0);
when "0110" =>
CoreApbSRAM_l0 <= COReApbSraM_OOLl(3 downto 0)&CoreAPBSRAm_i1ol(3 downto 0);
when "0111" =>
CoreApbSRAM_L0 <= COREAPbSram_OOLL(3 downto 0)&CoreApbSRAM_I1ol(3 downto 0);
when "1000" =>
COReApbSraM_L0 <= CoreApBSRAM_ioll(3 downto 0)&COREApbSram_LOLL(3 downto 0);
when "1001" =>
CoreApBSRam_l0 <= COReApbSraM_IOLL(3 downto 0)&CoREAPBSram_loLL(3 downto 0);
when "1010" =>
CoreAPBSRam_l0 <= COREApbSram_OLLL;
when "1011" =>
COReApbSraM_L0 <= COREAPbSram_lLI(3 downto 0)&CoREAPBSram_iLI(3 downto 0);
when "1100" =>
CorEAPBSram_l0 <= COREAPbSram_l1OL(3 downto 0)&CoREAPBSram_o1OL(3 downto 0);
when "1101" =>
CoreApbSRAM_l0 <= CoreApBSRAM_l1ol(3 downto 0)&COREAPbSram_o1OL(3 downto 0);
when "1110" =>
CorEAPbSram_l0 <= COREApbSram_OOLL(3 downto 0)&COREAPbSram_i1OL(3 downto 0);
when "1111" =>
COREApbSram_L0 <= CoreApbSrAM_OOll(3 downto 0)&CorEAPBSram_i1OL(3 downto 0);
when others =>
null
;
end case;
when 2 =>
COREApbSram_II0 <= "01";
COREApbSram_O00 <= "01";
CoreApBSRAM_l00 <= "01";
CoreApBSRAm_i00 <= "01";
CorEAPBSram_o10 <= "01";
COREApbSraM_L10 <= "01";
CoreAPBSRAm_i10 <= "01";
CoreApBSRAM_oo1 <= "01";
COREAPbSram_lO1 <= "10";
CoreApbSRAM_IO1 <= "10";
CoreApbSRAM_ol1 <= "11";
COreApbSrAM_O0Ll <= '0'&CoreAPBSRAm_li(10 downto 0);
COREAPbSram_L0LL <= '0'&COREApbSram_LI(10 downto 0);
CoreApbSRAM_I0ll <= '0'&CoreApbSRAM_li(10 downto 0);
CoreApbSRAM_O1Ll <= '0'&COreApbSram_lI(10 downto 0);
COREAPbSram_l1ll <= '0'&COREApbSram_li(10 downto 0);
CoreApbSraM_I1LL <= '0'&COREApbSram_li(10 downto 0);
COReApbSram_oOIL <= '0'&COREApbSram_li(10 downto 0);
CoreApbSram_LOIL <= '0'&CoREAPBSRAm_li(10 downto 0);
COREApbSram_ioil <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSraM_OLIL <= "00"&CoreApbSraM_LI(9 downto 0);
CoREAPBSRAm_llil <= "000"&CoreApBSRAM_LI(8 downto 0);
COREAPBSram_l0il <= '0'&CoreApBSRAM_Ii(10 downto 0);
COREApbSram_i0iL <= '0'&COReApbSram_ii(10 downto 0);
CoreApbSrAM_O1IL <= '0'&CoreApbSraM_II(10 downto 0);
CoreApbSram_L1IL <= '0'&COREApbSram_ii(10 downto 0);
CoreApbSram_I1IL <= '0'&CoreApbSram_II(10 downto 0);
CoreApbSram_OO0L <= '0'&CoreApBSRAM_Ii(10 downto 0);
COREApbSram_lo0L <= '0'&CoreApbSram_II(10 downto 0);
COREApbSram_io0L <= '0'&COREAPbSram_ii(10 downto 0);
CoreApbSraM_OL0L <= "00"&CoreApbSram_II(9 downto 0);
COreApbSram_LL0L <= "00"&CoreAPBSRAM_ii(9 downto 0);
CoreApbSRAM_IL0l <= "000"&CoreApbSram_II(8 downto 0);
CoreApbSRAM_I01(1 downto 0) <= CoreAPBSRAM_o0(1 downto 0);
COREAPBSram_o11(1 downto 0) <= CoreApbSRAM_O0(3 downto 2);
CoreApbSraM_L11(1 downto 0) <= COREAPBSram_o0(5 downto 4);
CoreApBSRAM_I11(1 downto 0) <= COREApbSram_o0(7 downto 6);
CoreApbSrAM_OOOL(1 downto 0) <= CoreApbSrAM_O0(1 downto 0);
COREAPBSram_lool(1 downto 0) <= COREAPBSram_o0(3 downto 2);
COREAPbSram_iool(1 downto 0) <= COReApbSram_o0(5 downto 4);
COREAPBSram_olol(1 downto 0) <= CoreApbSraM_O0(7 downto 6);
CoreApbSRAM_LLol(3 downto 0) <= COREApbSram_o0(3 downto 0);
CoreApbSram_ILOL(3 downto 0) <= CoreApbSraM_O0(7 downto 4);
COREAPBSram_oiol <= CoREAPBSRAm_o0;
case (COReApbSram_li(12 downto 9)) is
when "0000" =>
CoreApbSram_O01(3 downto 0) <= COREApbSram_i0I&COReApbSram_i0I&CoreApbSram_I0I&CoreApbSRAM_I0I;
when "0001" =>
CoreApbSraM_O01(3 downto 0) <= CoreApbSRAM_I0I&CoreApbSraM_I0I&CoreApbSRAM_I0i&COREApbSram_i0i;
when "0010" =>
COREApbSram_o01(3 downto 0) <= COREAPBSram_i0i&COREAPBSram_i0i&COREAPbSram_i0i&CoreApbSram_I0I;
when "0011" =>
CoreApbSraM_O01(3 downto 0) <= CoreApbSraM_I0I&COREApbSram_i0i&COreApbSram_i0I&CoreAPBSRAM_I0i;
when "0100" =>
CoreApbSrAM_O01(7 downto 4) <= CoreApbSram_I0I&COreApbSram_i0I&CoreApbSRAM_I0I&CoREAPBSRAm_i0i;
when "0101" =>
CorEAPBSRAm_o01(7 downto 4) <= COREAPbSram_i0i&COREAPBSRam_i0i&COreApbSram_I0I&CoreApbSraM_I0I;
when "0110" =>
CoreApBSRAM_O01(7 downto 4) <= CoreApbSRAM_I0i&COREApbSram_I0I&COreApbSrAM_I0i&CoreAPBSRAm_i0i;
when "0111" =>
CoreAPBSRAm_o01(7 downto 4) <= CoREAPBSram_i0I&COREAPBSram_i0I&CoreAPBSRAm_i0i&COREAPbSram_i0I;
when "1000" =>
CoreApBSRAM_o01(9 downto 8) <= CoreApbSRAM_I0i&COREApbSram_i0i;
when "1001" =>
CoREAPBSRam_o01(9 downto 8) <= CoreApbSRAM_I0i&CoreApBSRAM_I0i;
when "1010" =>
CoreApbSram_O01(10) <= CoreApbSRAM_I0I;
when "1011" =>
COREAPbSram_o01(3 downto 0) <= CoreApbSraM_I0I&CoreApbSraM_I0I&COREAPBSram_i0i&CoreApbSRAM_I0I;
when "1100" =>
COREAPBSram_o01(7 downto 4) <= CoreApbSrAM_I0I&CoreApbSRAM_I0I&COREAPBSRam_i0i&CoreApbSram_I0I;
when "1101" =>
CoreApbSRAM_O01(7 downto 4) <= CoreAPBSRAM_i0i&CoreApBSRAM_I0i&CorEAPBSRAm_i0i&COREApbSram_i0I;
when "1110" =>
CoreAPBSRAM_o01(7 downto 4) <= COREApbSram_i0I&COreApbSram_i0I&CoreApbSrAM_I0I&CoREAPBSRam_i0i;
when "1111" =>
CoreApbSraM_O01(7 downto 4) <= CoreAPBSRAM_i0i&CoreAPBSRAM_I0i&COREApbSram_i0i&CoreApbSraM_I0I;
when others =>
null
;
end case;
case (CoreApbSRAM_II(12 downto 9)) is
when "0000" =>
COREAPBSRam_l01(3 downto 0) <= COReApbSram_o1I&COREApbSram_o1I&CoreApbSraM_O1I&COREAPBSram_o1i;
when "0001" =>
CoreAPBSRAM_L01(3 downto 0) <= CoreApbSRAM_O1i&CoreApbSraM_O1I&CorEAPBSRAM_o1i&COREApbSram_o1i;
when "0010" =>
COREApbSram_l01(3 downto 0) <= CorEAPBSRAM_o1i&CoreApbSrAM_O1I&CorEAPBSRAM_o1i&COREApbSram_o1i;
when "0011" =>
CorEAPBSRAM_l01(3 downto 0) <= COREAPBSram_o1i&CoREAPBSRAm_o1i&COreApbSram_o1I&CoreApBSRAM_O1i;
when "0100" =>
CoreApbSrAM_L01(7 downto 4) <= CoreApbSram_O1I&COREApbSram_o1I&CoreApbSraM_O1I&COREAPBSram_o1i;
when "0101" =>
COREAPBSram_l01(7 downto 4) <= CoreAPBSRAM_o1i&CoREAPbSram_o1I&CoreApbSRAM_O1i&COREApbSram_O1I;
when "0110" =>
CoreApBSRAM_l01(7 downto 4) <= COREApbSraM_O1I&COREApbSram_O1I&CoreApbSRAM_O1i&CoreAPBSRAM_o1i;
when "0111" =>
CoreApbSrAM_L01(7 downto 4) <= CoreApbSRAM_O1i&CoreApBSRAm_o1i&CoreApbSraM_O1I&COREApbSram_o1i;
when "1000" =>
COReApbSram_l01(9 downto 8) <= CoreApbSRAM_O1I&COReApbSram_o1I;
when "1001" =>
CoreAPBSRAM_l01(9 downto 8) <= CoreApbSram_O1I&COREApbSram_o1I;
when "1010" =>
CoreAPBSRAM_l01(10) <= COreApbSram_O1I;
when "1011" =>
CoreApBSRAM_L01(3 downto 0) <= COREAPBSram_o1i&CoreAPBSRAM_o1i&COREApbSram_o1i&CoreApbSram_O1I;
when "1100" =>
COREApbSram_l01(7 downto 4) <= COReApbSram_o1I&COREAPbSram_o1i&CoreApbSram_O1I&CorEAPBSRAM_o1i;
when "1101" =>
COReApbSram_l01(7 downto 4) <= CoreApbSram_O1I&COREAPBSram_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i;
when "1110" =>
COREApbSram_l01(7 downto 4) <= COREApbSram_o1I&COREAPBSram_o1i&CoreApbSraM_O1I&CoreAPBSRAM_O1i;
when "1111" =>
CoreAPBSRAM_L01(7 downto 4) <= CoreApbSraM_O1I&COreApbSram_o1I&CoreApbSrAM_O1I&COREAPBSram_o1i;
when others =>
null
;
end case;
case (CoreAPBSRAM_li0(12 downto 9)) is
when "0000" =>
CoreApbSram_L0 <= CoreApbSram_LLI(1 downto 0)&CoreApbSram_ILI(1 downto 0)&CoreApBSRAM_Oii(1 downto 0)&COreApbSram_lII(1 downto 0);
when "0001" =>
COREAPbSram_l0 <= COREAPBSram_lli(1 downto 0)&COREAPBSRam_ili(1 downto 0)&CoreApbSrAM_OII(1 downto 0)&CoreApbSram_LII(1 downto 0);
when "0010" =>
COReApbSram_l0 <= COreApbSram_lLI(1 downto 0)&CoreApbSraM_ILI(1 downto 0)&CoreApbSraM_OII(1 downto 0)&COREApbSram_liI(1 downto 0);
when "0011" =>
CoreAPBSRAM_l0 <= CoreAPBSRAM_lli(1 downto 0)&COReApbSram_ilI(1 downto 0)&COREAPBSram_oii(1 downto 0)&CoreApBSRAM_LIi(1 downto 0);
when "0100" =>
COREAPBSRam_l0 <= COREApbSram_ooLL(1 downto 0)&CoreApbSram_I1OL(1 downto 0)&COREApbSram_l1oL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when "0101" =>
COREAPbSram_l0 <= CoreApbSrAM_OOLL(1 downto 0)&COREApbSram_i1ol(1 downto 0)&CoreApbSraM_L1OL(1 downto 0)&CoREAPBSRam_o1ol(1 downto 0);
when "0110" =>
CoreApbSram_L0 <= COREAPBSram_ooll(1 downto 0)&COReApbSram_i1OL(1 downto 0)&COREApbSram_l1ol(1 downto 0)&CoreApbSRAM_O1ol(1 downto 0);
when "0111" =>
COREApbSram_l0 <= COREAPBSram_ooll(1 downto 0)&COReApbSram_i1OL(1 downto 0)&COREAPbSram_l1ol(1 downto 0)&CoreApbSram_O1OL(1 downto 0);
when "1000" =>
COREAPbSram_l0 <= COREAPBSram_ioll(3 downto 0)&COREApbSram_loll(3 downto 0);
when "1001" =>
CoreApbSrAM_L0 <= COreApbSram_iOLL(3 downto 0)&COREAPBSram_loll(3 downto 0);
when "1010" =>
CoreAPBSRAM_l0 <= COREAPBSram_olll;
when "1011" =>
CoreAPBSRAM_l0 <= COreApbSram_LLI(1 downto 0)&COREApbSram_ili(1 downto 0)&COREApbSram_oii(1 downto 0)&COREAPBSram_lii(1 downto 0);
when "1100" =>
CoreAPBSRAM_l0 <= COREApbSram_oolL(1 downto 0)&CoreApbSrAM_I1OL(1 downto 0)&COREApbSram_L1OL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when "1101" =>
COREAPBSram_l0 <= CoREAPBSRAm_ooll(1 downto 0)&CorEAPBSRAM_i1ol(1 downto 0)&CoreApbSrAM_L1OL(1 downto 0)&CoreApbSram_O1OL(1 downto 0);
when "1110" =>
CorEAPBSRAm_l0 <= CoreApbSram_OOLL(1 downto 0)&COreApbSram_i1OL(1 downto 0)&CoreApBSRAM_L1ol(1 downto 0)&CoreApbSram_O1OL(1 downto 0);
when "1111" =>
CorEAPBSRAM_l0 <= CoreApBSRAM_Ooll(1 downto 0)&CoreApBSRAM_I1ol(1 downto 0)&CoreApbSram_L1OL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when others =>
null
;
end case;
when others =>
CoreApbSram_II0 <= "00";
CoreApbSRAM_O00 <= "00";
COREApbSram_l00 <= "00";
CoREAPBSRAm_i00 <= "00";
COREApbSram_o10 <= "00";
CoreAPBSRAM_l10 <= "00";
COReApbSram_i10 <= "00";
COREApbSram_oo1 <= "00";
CoreApbSram_LO1 <= "10";
CorEAPBSRAM_io1 <= "10";
COREAPBSram_ol1 <= "11";
CorEAPBSRAm_o0ll <= CoreApbSraM_LI(11 downto 0);
CoreApbSram_L0LL <= COREAPBSram_li(11 downto 0);
CoreApbSram_I0LL <= COREAPbSram_li(11 downto 0);
CoreApbSram_O1LL <= CoreApbSram_LI(11 downto 0);
CoreApbSrAM_L1LL <= CoREAPBSRAm_li(11 downto 0);
CoreApbSrAM_I1LL <= CoREAPBSRAm_li(11 downto 0);
CoreAPBSRam_ooil <= COREApbSram_LI(11 downto 0);
CoreApBSRAM_loil <= CoreApBSRAM_li(11 downto 0);
CoreAPBSRAM_ioil <= "00"&CoreApbSRAM_li(9 downto 0);
COReApbSraM_OLIl <= "00"&COreApbSrAM_LI(9 downto 0);
CoREAPBSram_llIL <= "000"&COREAPBSram_lI(8 downto 0);
CoreAPBSRam_l0il <= COREApbSram_II(11 downto 0);
CoreApbSRAM_i0il <= CoreAPBSRAm_ii(11 downto 0);
CoreApbSRAM_O1il <= CoreAPBSRam_ii(11 downto 0);
COREApbSram_L1IL <= CoREAPbSram_iI(11 downto 0);
CoreApBSRAM_i1il <= COREApbSram_II(11 downto 0);
CoreApbSrAM_OO0l <= CoreApbSRAM_Ii(11 downto 0);
CoreAPBSRAm_lo0l <= CoreAPBSram_ii(11 downto 0);
COREApbSram_IO0L <= COREApbSram_II(11 downto 0);
COREApbSram_OL0L <= "00"&CoreApBSRAM_ii(9 downto 0);
COREAPbSram_lL0L <= "00"&CoreAPBSRam_ii(9 downto 0);
COreApbSrAM_IL0l <= "000"&COReApbSram_II(8 downto 0);
CoreAPBSRAm_i01(0) <= COreApbSrAM_O0(0);
CoreApbSRAM_o11(0) <= COREApbSram_O0(1);
CoreAPBSRAm_l11(0) <= CoREAPBSram_o0(2);
COreApbSrAM_I11(0) <= CoreApbSRAM_o0(3);
CorEAPBSram_oooL(0) <= CorEAPBSram_o0(4);
CoreAPBSRAm_lool(0) <= COReApbSraM_O0(5);
COReApbSraM_IOOL(0) <= COReApbSRAM_O0(6);
COreApbSrAM_OLOl(0) <= CorEAPBSram_o0(7);
COREAPbSram_lLOL(3 downto 0) <= CoreApBSRAM_o0(3 downto 0);
CoREAPbSram_iLOL(3 downto 0) <= COreApbSRAM_O0(7 downto 4);
COREApbSram_OIOL <= COREApbSram_O0;
case (COREApbSram_LI(12 downto 9)) is
when "0000" =>
COREAPbSram_o01(7 downto 0) <= COREApbSraM_I0I&CoreApBSRAM_i0i&CoreAPBSRAM_i0i&COreApbSRAM_I0i&CoreApbSrAM_I0i&COReApbSraM_I0I&CoreAPBSRAm_i0i&CoREAPBSram_i0I;
when "0001" =>
CoreApBSRAM_o01(7 downto 0) <= COReApbSraM_I0I&COREApbSram_I0I&COreApbSRAM_I0i&CoreAPBSRam_i0i&COREAPBSram_i0I&CoREAPBSram_i0I&COreApbSrAM_I0i&CorEAPBSram_i0i;
when "0010" =>
CoreApBSRAM_o01(7 downto 0) <= CoREAPBSram_i0I&CorEAPBSram_i0I&COREApbSram_I0I&CoreApbSRAM_i0i&CoreApbSRAM_I0i&COREApbSram_I0I&COReApbSrAM_I0I&COREAPbSram_i0I;
when "0011" =>
COREAPbSram_O01(7 downto 0) <= CorEAPBSRAM_i0i&CoreApbSram_I0I&COReApbSram_i0I&COREApbSram_i0i&COReApbSram_i0I&COREApbSram_i0I&COREApbSram_i0I&CoREAPBSRAm_i0i;
when "0100" =>
CoreAPBSRAM_O01(7 downto 0) <= CoreApbSRAM_I0I&CoreAPBSRAM_I0i&COREApbSram_i0i&COREAPBSRam_i0i&COReApbSram_i0I&CoreApbSRAM_I0i&COReApbSram_i0I&CoreApbSRAM_I0I;
when "0101" =>
CorEAPBSRAM_o01(7 downto 0) <= CoreApbSram_I0I&CoreApbSraM_I0I&COREAPBSram_i0i&COREAPBSRam_i0i&CoreApBSRAM_I0i&COreApbSram_i0I&CoreApbSraM_I0I&CoreApBSRAM_I0i;
when "0110" =>
COReApbSram_o01(7 downto 0) <= CorEAPBSRAM_i0i&CoreAPBSRAM_i0i&COREApbSram_i0I&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApbSRAM_I0i&COReApbSram_i0I&CoreAPBSRAM_I0i;
when "0111" =>
COreApbSram_o01(7 downto 0) <= CoREAPBSRam_i0i&COREApbSram_i0i&CoreApbSRAM_I0I&COREApbSram_i0i&CoreApbSRAM_I0I&COREApbSram_i0I&CoreApBSRAM_I0i&COREApbSram_i0i;
when "1000" =>
COREApbSram_o01(9 downto 8) <= COREAPbSram_i0i&COREApbSram_i0i;
when "1001" =>
CoreApbSrAM_O01(9 downto 8) <= CoreApbSram_I0I&COREApbSram_i0I;
when "1010" =>
COreApbSram_o01(10) <= CoREAPBSRAm_i0i;
when "1011" =>
CorEAPBSRAM_o01(7 downto 0) <= CoreApbSram_I0I&COreApbSram_i0I&CoreApbSrAM_I0I&CorEAPBSRAM_i0i&CoreApbSram_I0I&CoreAPBSRAM_i0i&COreApbSram_i0I&CoreApbSram_I0I;
when "1100" =>
CoreAPBSRAM_o01(7 downto 0) <= COREApbSram_i0i&COREAPBSRam_i0i&COreApbSram_I0I&COREAPBSram_i0i&COREApbSram_i0i&CoreApbSRAM_I0i&CoREAPBSRAm_i0i&CoreApbSraM_I0I;
when "1101" =>
CorEAPBSRAM_o01(7 downto 0) <= COreApbSram_i0I&COREApbSram_i0i&COreApbSram_I0I&CoreApBSRAM_I0i&COREApbSram_i0i&CorEAPBSRAM_i0i&COREApbSram_i0i&CoreApbSRAM_I0I;
when "1110" =>
CoreApBSRAM_O01(7 downto 0) <= CoreApBSRAM_I0i&CoreApBSRAM_I0i&COREApbSram_i0i&CoreApbSRAM_I0i&CoreAPBSRAM_i0i&CoreApbSram_I0I&CoreApbSRAM_I0I&COREAPBSram_i0i;
when "1111" =>
COReApbSram_o01(7 downto 0) <= COREAPbSram_i0i&CoREAPBSRAm_i0i&COREApbSram_i0i&CoreApbSRAM_I0i&COREApbSram_i0i&CoreApbSraM_I0I&CoreApbSRAM_I0i&COREApbSram_i0i;
when others =>
null
;
end case;
case (CoreApbSrAM_II(12 downto 9)) is
when "0000" =>
CoreApbSraM_L01(7 downto 0) <= CoreApbSraM_O1I&CoreApbSrAM_O1I&COREAPbSram_o1i&CoreApbSraM_O1I&CoreAPBSRAM_o1i&CoreApbSram_O1I&CoreApbSRAM_O1I&CoREAPBSRAm_o1i;
when "0001" =>
CorEAPBSRAm_l01(7 downto 0) <= CoreApbSraM_O1I&CoreApbSraM_O1I&CorEAPBSRAM_o1i&CoreApbSram_O1I&CorEAPBSRAM_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&COreApbSram_O1I;
when "0010" =>
COREAPBSram_l01(7 downto 0) <= CoreApbSrAM_O1I&CorEAPBSRAM_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&COREAPbSram_o1i&CoreApbSrAM_O1I&COREAPBSRam_o1i&CoreApbSraM_O1I;
when "0011" =>
CoreApbSRAM_L01(7 downto 0) <= CoreApBSRAM_O1i&CoreApbSrAM_O1I&CoREAPBSRAm_o1i&COReApbSram_o1I&CoreApbSram_O1I&COREApbSram_o1I&CorEAPBSRAM_o1i&CoreApbSram_O1I;
when "0100" =>
CoreApBSRAM_L01(7 downto 0) <= COreApbSram_o1I&CoreApbSraM_O1I&CoreAPBSRAM_o1i&CoreAPBSram_o1i&COREAPbSram_o1I&COreApbSrAM_O1i&COREApbSram_O1I&COREApbSram_O1I;
when "0101" =>
CoreApbSRAM_L01(7 downto 0) <= CoreApbSRAM_O1I&COREAPBSram_o1i&COREAPbSram_o1i&COREAPbSram_o1i&COREAPBSRam_o1i&CoREAPBSRAm_o1i&CorEAPBSRAM_o1i&CoreApbSraM_O1I;
when "0110" =>
COREApbSram_l01(7 downto 0) <= CoreApbSram_O1I&CoreApbSraM_O1I&COREAPBSram_o1i&CoreApbSRAM_O1I&COREAPBSram_o1i&CoreApbSRAM_O1I&COReApbSram_o1I&CoreApbSRAM_O1i;
when "0111" =>
CoreApbSraM_L01(7 downto 0) <= COREAPBSram_o1i&COREAPBSRam_o1i&COREApbSram_o1i&CoreApbSRAM_O1i&COReApbSram_o1I&CoreAPBSRAM_o1i&COREApbSram_o1I&CoreApbSram_O1I;
when "1000" =>
CoreApbSram_L01(9 downto 8) <= COREAPBSram_o1i&CoreAPBSRAM_o1i;
when "1001" =>
COReApbSram_l01(9 downto 8) <= COREAPBSram_o1i&CoreAPBSRAM_O1i;
when "1010" =>
COREAPbSram_l01(10) <= COREAPBSram_o1i;
when "1011" =>
COREAPbSram_l01(7 downto 0) <= COREAPBSRam_o1i&COREApbSram_o1i&CoreApbSram_O1I&COREAPbSram_o1i&CoreApbSram_O1I&COREAPbSram_o1i&CoreApbSraM_O1I&COREApbSram_o1i;
when "1100" =>
COreApbSram_l01(7 downto 0) <= CoreApbSRAM_O1I&COREAPBSram_o1i&COREApbSram_o1i&CoreApbSram_O1I&CorEAPBSRAM_o1i&COreApbSram_o1I&CoreApBSRAM_O1i&COREAPBSram_o1i;
when "1101" =>
CoreApbSrAM_L01(7 downto 0) <= CoreApbSram_O1I&CoreApbSram_O1I&COREAPBSram_o1i&CoreApbSRAM_O1i&CorEAPBSRAM_o1i&COREAPBSram_o1i&CoreApbSraM_O1I&COREAPBSram_o1i;
when "1110" =>
CoreApbSrAM_L01(7 downto 0) <= COREAPBSRam_o1i&COREApbSram_o1i&CoreApbSraM_O1I&CoreAPBSRAM_o1i&COREAPbSram_o1i&CoreApbSram_O1I&CoreApbSrAM_O1I&COREAPBSRam_o1i;
when "1111" =>
COREApbSram_l01(7 downto 0) <= CoreApbSram_O1I&COREApbSram_o1i&CoreApbSraM_O1I&CoreAPBSRAM_o1i&COREAPBSRam_o1i&COReApbSram_o1I&CoreApbSRAM_O1i&COREApbSram_o1i;
when others =>
null
;
end case;
case (CoreApBSRAM_Li0(12 downto 9)) is
when "0000" =>
CoreApbSRAM_L0 <= CoreApbSraM_OOLL(0)&CoreApbSRAM_I1ol(0)&CoreApbSRAM_L1ol(0)&CoreApbSram_O1OL(0)&COREApbSram_lli(0)&CoreApbSram_ILI(0)&COREAPbSram_oii(0)&COREApbSram_LII(0);
when "0001" =>
COreApbSram_l0 <= COREAPBSRam_ooll(0)&CoreAPBSRAM_I1ol(0)&CoreApbSRAM_L1ol(0)&CoREAPBSRam_o1ol(0)&COReApbSram_llI(0)&CoreApbSraM_ILI(0)&CoreApbSram_OII(0)&COREApbSram_lii(0);
when "0010" =>
CoREAPBSRAm_l0 <= CoreApbSram_OOLL(0)&CoreApBSRAM_I1ol(0)&COReApbSram_l1OL(0)&COREAPBSram_o1ol(0)&CoreApbSrAM_LLI(0)&COREAPBSram_ili(0)&CorEAPBSRAM_oii(0)&CoreAPBSRAM_lii(0);
when "0011" =>
CoreApbSram_L0 <= COREAPbSram_ooll(0)&CoreApbSRAM_I1ol(0)&CoreAPBSRAM_l1ol(0)&CoreApbSRAM_O1Ol(0)&COREApbSram_lli(0)&COREApbSram_ilI(0)&COReApbSram_oiI(0)&CorEAPBSRAM_lii(0);
when "0100" =>
COREAPBSram_l0 <= CoreApBSRAM_Ooll(0)&COREApbSram_i1OL(0)&CoreApbSraM_L1OL(0)&CorEAPBSRAm_o1ol(0)&COreApbSram_lLI(0)&COreApbSram_ILI(0)&COREAPBSram_oii(0)&CoreApBSRAM_Lii(0);
when "0101" =>
CoreAPBSRAM_L0 <= COREAPBSram_ooll(0)&COREAPbSram_i1ol(0)&COreApbSram_l1OL(0)&CoreApbSrAM_O1OL(0)&CoreApbSraM_LLI(0)&COREAPBSram_ili(0)&CoreApbSraM_OII(0)&CoreApbSram_LII(0);
when "0110" =>
COREAPBSram_l0 <= CoreAPBSRAM_ooll(0)&COREAPBSram_i1ol(0)&CoreApbSraM_L1OL(0)&COREAPBSram_o1ol(0)&CorEAPBSRAm_lli(0)&CoreApBSRAM_Ili(0)&COREApbSram_oii(0)&CoreApbSrAM_LII(0);
when "0111" =>
CoreAPBSRAM_l0 <= CoreApbSraM_OOLL(0)&CoreAPBSRAM_i1ol(0)&CoreApbSram_L1OL(0)&CoreApbSraM_O1OL(0)&CoreApbSraM_LLI(0)&COREApbSram_ili(0)&CoreAPBSRAM_oii(0)&CoreApbSram_LII(0);
when "1000" =>
COREAPBSram_l0 <= COREAPbSram_ioll(3 downto 0)&COReApbSram_loLL(3 downto 0);
when "1001" =>
COReApbSram_l0 <= COREAPBSRam_ioll(3 downto 0)&COREAPBSram_loll(3 downto 0);
when "1010" =>
COREAPBSram_l0 <= CoreApbSraM_OLLL;
when "1011" =>
COREApbSram_l0 <= CoreApbSram_OOLL(0)&COREAPBSram_i1ol(0)&COREApbSram_l1ol(0)&CoreApbSrAM_O1OL(0)&COReApbSram_llI(0)&COreApbSram_iLI(0)&COREAPbSram_oii(0)&CoreApbSraM_LII(0);
when "1100" =>
CoreAPBSRAM_l0 <= CoreApbSrAM_OOLL(0)&CoreApbSram_I1OL(0)&CoREAPBSRAm_l1ol(0)&COREApbSram_o1ol(0)&CoreApbSraM_LLI(0)&COREAPBSram_ili(0)&CoreApbSRAM_OIi(0)&COREApbSram_lii(0);
when "1101" =>
CoreApbSram_L0 <= COREAPBSram_ooll(0)&COREApbSram_i1oL(0)&CoreApbSraM_L1OL(0)&CoREAPBSRam_o1ol(0)&CoreAPBSRAM_Lli(0)&CoreAPBSRAM_ili(0)&CoreApbSram_OII(0)&CoreApbSrAM_LII(0);
when "1110" =>
COREAPBSRam_l0 <= CoreApBSRAM_Ooll(0)&CoreApbSraM_I1OL(0)&COreApbSram_l1OL(0)&COREAPBSRam_o1ol(0)&CoreApbSram_LLI(0)&COreApbSram_ILI(0)&CoREAPBSRAm_oii(0)&COreApbSram_LII(0);
when "1111" =>
COREApbSram_l0 <= CoreApbSraM_OOLL(0)&COREApbSram_i1OL(0)&CoreApbSram_L1OL(0)&COREAPBSram_o1ol(0)&CoreApbSram_LLI(0)&CoreApBSRAM_ili(0)&CoREAPBSram_oiI(0)&COREAPbSram_lII(0);
when others =>
null
;
end case;
end case;
when 6144 =>
case (CoreApBSRAM_oi0) is
when 8 =>
CorEAPbSram_iI0 <= "11";
CorEAPBSRam_o00 <= "11";
COReApbSraM_L00 <= "11";
CoreAPBSRAm_i00 <= "11";
COREApbSram_O10 <= "11";
COREAPbSram_l10 <= "11";
CoreApbSrAM_I10 <= "11";
CoREAPBSram_oo1 <= "11";
CoreApbSRAM_Lo1 <= "11";
COREApbSram_IO1 <= "11";
COreApbSrAM_OL1 <= "11";
COReApbSraM_LL1 <= "11";
COREApbSram_O0LL <= "000"&COreApbSrAM_LI(8 downto 0);
CoreApbSRAM_L0ll <= "000"&CorEAPBSRam_li(8 downto 0);
COREApbSram_I0LL <= "000"&CoreApbSRAM_li(8 downto 0);
CorEAPBSram_o1lL <= "000"&CoreApbSRAM_Li(8 downto 0);
CorEAPBSram_l1lL <= "000"&CoreAPBSRAM_li(8 downto 0);
CoreApbSRAM_I1ll <= "000"&CoreApbSRAM_LI(8 downto 0);
CoREAPBSram_ooIL <= "000"&COREApbSram_LI(8 downto 0);
CoreAPBSRAm_loil <= "000"&COREApbSram_LI(8 downto 0);
CoreApBSRAM_ioil <= "000"&CoreAPBSRAM_li(8 downto 0);
CoreApbSRAM_Olil <= "000"&CoreApbSRAM_LI(8 downto 0);
CoreAPBSRam_lliL <= "000"&COREApbSram_LI(8 downto 0);
CoREAPBSram_ilIL <= "000"&COreApbSrAM_LI(8 downto 0);
CoreAPBSRAM_l0il <= "000"&COREApbSram_II(8 downto 0);
CoreApbSRAM_I0il <= "000"&COREApbSram_II(8 downto 0);
CoreApBSRAM_o1il <= "000"&COreApbSRAM_II(8 downto 0);
CoreAPBSRam_l1iL <= "000"&CoreAPBSRam_ii(8 downto 0);
CoreApbSRAM_i1il <= "000"&CoreApbSRAM_Ii(8 downto 0);
CoreApbSRAM_Oo0l <= "000"&CoREAPBSram_ii(8 downto 0);
COREAPbSram_lO0L <= "000"&CoREAPBSram_iI(8 downto 0);
CoreApBSRAM_io0l <= "000"&CoreApbSRAM_Ii(8 downto 0);
CorEAPBSram_ol0L <= "000"&CoreApBSRAM_ii(8 downto 0);
COREAPbSram_lL0L <= "000"&CorEAPBSram_ii(8 downto 0);
COreApbSRAM_IL0l <= "000"&COREAPbSram_iI(8 downto 0);
CoREAPBSram_oI0L <= "000"&CoreAPBSRam_ii(8 downto 0);
CoREAPBSram_i01 <= CoreApBSRAM_o0;
COREAPbSram_O11 <= COREAPbSram_O0;
COREAPbSram_l11 <= CoreApbSRAM_O0;
CoREAPBSram_i11 <= COreApbSrAM_O0;
CoreAPBSRam_oooL <= CoreAPBSRam_o0;
CoreApBSRAM_lool <= COreApbSrAM_O0;
CoreAPBSRAm_iool <= CoreApBSRAM_o0;
COReApbSraM_OLOL <= CoreAPBSRam_o0;
CoREAPBSram_llOL <= COReApbSraM_O0;
CoreApBSRAM_ilol <= COReApbSraM_O0;
COREApbSram_OIOL <= CoreApbSRAM_O0;
COReApbSrAM_LIol <= COREApbSram_O0;
case (CorEAPBSram_li(12 downto 9)) is
when "0000" =>
CoreAPBSRam_o01(0) <= CoreApBSRAM_i0i;
when "0001" =>
CoreApBSRAM_o01(1) <= CoreAPBSram_i0i;
when "0010" =>
COREAPbSram_O01(2) <= COreApbSRAM_I0i;
when "0011" =>
COReApbSrAM_O01(3) <= COREApbSraM_I0I;
when "0100" =>
CoreApbSRAM_o01(4) <= COreApbSrAM_I0i;
when "0101" =>
CoreAPBSRAm_o01(5) <= CoreApbSRAM_I0i;
when "0110" =>
CoreApBSRAm_o01(6) <= COreApbSrAM_I0I;
when "0111" =>
CoREAPbSram_o01(7) <= COreApbSrAM_I0i;
when "1000" =>
CoreApbSRAM_O01(8) <= CoREAPBSram_i0I;
when "1001" =>
COreApbSrAM_O01(9) <= CoreAPBSRAm_i0i;
when "1010" =>
CoreApBSRAM_o01(10) <= CoreApbSRAM_I0i;
when "1011" =>
CorEAPBSram_o01(11) <= CoreAPBSRAm_i0i;
when "1100" =>
CoreAPBSRAm_o01(4) <= COreApbSRAM_I0i;
when "1101" =>
CoreApBSRAm_o01(5) <= COreApbSRAM_I0i;
when "1110" =>
CorEAPBSram_o01(6) <= CoreAPBSRAm_i0i;
when "1111" =>
CoreAPBSRam_o01(7) <= CorEApbSraM_I0I;
when others =>
null
;
end case;
case (CoreApbSRAM_ii(12 downto 9)) is
when "0000" =>
CoreApBSRam_l01(0) <= COREApbSram_O1I;
when "0001" =>
CoreAPBSRam_l01(1) <= CoreAPBSRam_o1i;
when "0010" =>
COREAPBSram_l01(2) <= CoreApBSRAm_o1i;
when "0011" =>
CoreApbSRAM_L01(3) <= COreApbSRAM_O1i;
when "0100" =>
CoreApbSRAM_l01(4) <= COREApbSram_O1I;
when "0101" =>
COREAPbSram_L01(5) <= COREApbSram_O1I;
when "0110" =>
COReApbSraM_L01(6) <= CorEAPBSram_o1I;
when "0111" =>
CoreAPBSram_l01(7) <= COreApbSrAM_O1I;
when "1000" =>
COREApbSram_L01(8) <= CoreApbSRAM_o1i;
when "1001" =>
COReApbSram_L01(9) <= CoreAPBSram_o1I;
when "1010" =>
COREApbSram_L01(10) <= COReApbSraM_O1I;
when "1011" =>
COREApbSram_L01(11) <= CoREAPbSram_O1I;
when "1100" =>
CorEAPBSram_l01(4) <= COReApbSraM_O1I;
when "1101" =>
CoreApBSRAM_l01(5) <= CoreAPBSram_o1I;
when "1110" =>
CoreApBSRAM_l01(6) <= CoreApBSRAm_o1i;
when "1111" =>
CoreAPBSram_l01(7) <= CoreApbSRAM_O1i;
when others =>
null
;
end case;
case (CoreAPBSRAm_li0(12 downto 9)) is
when "0000" =>
COREApbSraM_L0 <= COreApbSRAM_Lii;
when "0001" =>
COReApbSraM_L0 <= CoreApbSRAM_Oii;
when "0010" =>
CoreApBSRAM_l0 <= CoreApbSRAM_Ili;
when "0011" =>
CoreApbSRAM_L0 <= CoreAPBSRAM_lli;
when "0100" =>
CoreApBSRAm_l0 <= COreApbSrAM_O1ol;
when "0101" =>
COReApbSrAM_L0 <= COreApbSRAM_L1ol;
when "0110" =>
COREApbSram_L0 <= COREApbSram_I1OL;
when "0111" =>
CoreApbSRAM_L0 <= CoreAPBSRAM_ooll;
when "1000" =>
CoreAPBSram_l0 <= CoREAPBSram_loLL;
when "1001" =>
CoreApbSram_L0 <= CoreApbSraM_IOLL;
when "1010" =>
CoreApbSram_L0 <= COREAPBSRam_olll;
when "1011" =>
CoreApbSraM_L0 <= COREAPBSram_llll;
when "1100" =>
CoreApbSram_L0 <= COREAPBSram_o1ol;
when "1101" =>
COREApbSram_l0 <= CoREAPBSRAm_l1ol;
when "1110" =>
COReApbSram_l0 <= COREApbSram_i1OL;
when "1111" =>
COreApbSrAM_L0 <= CoreAPBSRam_oolL;
when others =>
null
;
end case;
when 4 =>
CoreApbSrAM_II0 <= "10";
CoreApbSRAM_O00 <= "10";
COREApbSram_L00 <= "10";
CoREAPBSram_i00 <= "10";
CoreApBSRAM_o10 <= "10";
CoreApbSrAM_L10 <= "10";
CoreApbSram_I10 <= "10";
COreApbSram_oO1 <= "10";
CoreApBSRAM_Lo1 <= "10";
COREApbSram_io1 <= "10";
CoreApbSRAM_OL1 <= "10";
COReApbSram_ll1 <= "10";
CoreApbSram_O0LL <= "00"&CoreApbSram_LI(9 downto 0);
CoreAPBSRAM_l0ll <= "00"&CoreAPBSRAM_Li(9 downto 0);
CoreApbSRAM_I0ll <= "00"&COreApbSram_LI(9 downto 0);
CorEAPBSRAm_o1ll <= "00"&CoreApbSRAM_LI(9 downto 0);
COReApbSram_l1LL <= "00"&CoreApbSrAM_LI(9 downto 0);
COREAPBSRam_i1ll <= "00"&CoreApbSrAM_LI(9 downto 0);
CoreAPBSRAM_ooil <= "00"&CoreApbSrAM_LI(9 downto 0);
COREApbSram_loiL <= "00"&CoREAPBSRAm_li(9 downto 0);
CoreAPBSRAM_Ioil <= "00"&COREApbSram_li(9 downto 0);
COREApbSram_oliL <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSrAM_LLIL <= "00"&COREApbSram_li(9 downto 0);
COREApbSram_ilil <= "00"&CoreApbSraM_LI(9 downto 0);
COREAPbSram_l0il <= "00"&CoreAPBSRAm_ii(9 downto 0);
COreApbSram_i0IL <= "00"&COREAPBSRam_ii(9 downto 0);
COREAPBSram_o1il <= "00"&COREAPbSram_ii(9 downto 0);
COReApbSram_l1IL <= "00"&CoreApbSraM_II(9 downto 0);
COREApbSram_i1iL <= "00"&CoreApbSrAM_II(9 downto 0);
COREAPBSram_oo0l <= "00"&CoreApbSraM_II(9 downto 0);
COREAPBSram_lo0l <= "00"&COREAPBSRam_ii(9 downto 0);
CoreApbSRAM_IO0l <= "00"&COREApbSram_ii(9 downto 0);
CoREAPBSRAm_ol0l <= "00"&CoREAPBSRAm_ii(9 downto 0);
CoreApbSraM_LL0L <= "00"&CoreApbSrAM_II(9 downto 0);
CorEAPBSRAM_il0l <= "00"&CoreAPBSRAM_ii(9 downto 0);
COREApbSram_oi0l <= "00"&CoreApbSram_II(9 downto 0);
COREApbSram_i01(3 downto 0) <= CoreApbSram_O0(3 downto 0);
COREAPBSram_o11(3 downto 0) <= COREApbSram_o0(7 downto 4);
CoreApbSRAM_L11(3 downto 0) <= CoreAPBSRAM_o0(3 downto 0);
CoreApBSRAM_I11(3 downto 0) <= COREAPbSram_o0(7 downto 4);
COreApbSram_oOOL(3 downto 0) <= CoreApbSRAM_O0(3 downto 0);
CoreApbSrAM_LOOL(3 downto 0) <= COREApbSram_o0(7 downto 4);
COREAPBSRam_iool(3 downto 0) <= CorEAPBSRAm_o0(3 downto 0);
CoreApbSram_OLOL(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
CoreApBSRAM_Llol(3 downto 0) <= CoreApbSrAM_O0(3 downto 0);
COreApbSram_ILOL(3 downto 0) <= CoreAPBSRAM_o0(7 downto 4);
CoreAPBSRAM_oiol(3 downto 0) <= CoreAPBSRAM_O0(3 downto 0);
COREApbSram_lioL(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
case (COReApbSram_li(12 downto 9)) is
when "0000" =>
CorEAPBSRAM_o01(1 downto 0) <= COREApbSram_i0i&COREAPBSram_i0i;
when "0001" =>
CoreApbSRAM_O01(1 downto 0) <= COREAPBSram_i0i&CoreApBSRAM_I0i;
when "0010" =>
CoreApbSram_O01(3 downto 2) <= COReApbSram_i0I&COREAPbSram_i0i;
when "0011" =>
CoREAPBSRAm_o01(3 downto 2) <= CoreApbSram_I0I&COREAPBSram_i0i;
when "0100" =>
CoreApbSraM_O01(5 downto 4) <= COREAPBSram_i0i&CoreAPBSRAM_i0i;
when "0101" =>
CoREAPBSRAm_o01(5 downto 4) <= CoreApbSrAM_I0I&COReApbSram_i0I;
when "0110" =>
CoREAPBSRAm_o01(7 downto 6) <= CoreAPBSRAM_i0i&CoreAPBSRAM_i0i;
when "0111" =>
CoreApBSRAM_O01(7 downto 6) <= COREApbSram_i0i&CoreAPBSRAM_I0i;
when "1000" =>
COReApbSram_o01(9 downto 8) <= COREAPbSram_i0i&CorEAPBSRAm_i0i;
when "1001" =>
CoreApbSram_O01(9 downto 8) <= COReApbSram_i0I&COREAPBSram_i0i;
when "1010" =>
CoreApbSrAM_O01(11 downto 10) <= CoREAPBSram_i0I&COReApbSraM_I0I;
when "1011" =>
CoreApbSRAM_o01(11 downto 10) <= CoreAPBSram_i0I&CoreApBSRAM_i0i;
when "1100" =>
CorEAPBSram_o01(5 downto 4) <= COREApbSram_I0I&CoreApBSRAM_i0i;
when "1101" =>
CoreApbSRAM_O01(5 downto 4) <= COREApbSraM_I0I&CoreAPBSRAm_i0i;
when "1110" =>
CoreAPBSRam_o01(7 downto 6) <= COREApbSram_I0I&CoreApBSRAM_i0i;
when "1111" =>
CoreAPBSRam_o01(7 downto 6) <= COreApbSrAM_I0i&CorEAPBSram_i0I;
when others =>
null
;
end case;
case (CoreAPBSram_ii(12 downto 9)) is
when "0000" =>
COReApbSraM_L01(1 downto 0) <= CoreApBSRAM_o1i&COREAPbSram_o1I;
when "0001" =>
CoreApbSRAM_l01(1 downto 0) <= CoreApbSRAM_O1i&CoreApBSRAM_o1i;
when "0010" =>
CorEAPBSram_l01(3 downto 2) <= CoREAPBSram_o1I&CoreApBSRAM_o1i;
when "0011" =>
CoreAPBSram_l01(3 downto 2) <= COREApbSram_O1I&CoreApbSRAM_o1i;
when "0100" =>
CoreApbSRAM_l01(5 downto 4) <= COREApbSram_O1I&COREApbSram_O1I;
when "0101" =>
COREAPbSram_l01(5 downto 4) <= COREAPbSram_o1I&CoreApbSRAM_o1i;
when "0110" =>
CoreApBSRAM_l01(7 downto 6) <= COREApbSram_O1I&CoreApbSRAM_O1i;
when "0111" =>
COREApbSraM_L01(7 downto 6) <= COreApbSrAM_O1I&CoreApbSRAM_o1i;
when "1000" =>
CoreAPBSRam_l01(9 downto 8) <= COReApbSraM_O1I&CoreAPBSRAm_o1i;
when "1001" =>
CoreApbSRAM_l01(9 downto 8) <= CoreApbSRAM_o1i&CorEAPBSram_o1i;
when "1010" =>
CoreAPBSRam_l01(11 downto 10) <= CoreApbSRAm_o1i&CoreApbSRAM_O1i;
when "1011" =>
COREApbSram_l01(11 downto 10) <= COREAPbSram_o1i&CoreApbSram_O1I;
when "1100" =>
COREAPbSram_l01(5 downto 4) <= COREAPbSram_o1i&COREAPBSram_o1i;
when "1101" =>
CoREAPBSRAm_l01(5 downto 4) <= CoreApbSraM_O1I&CoreApbSRAM_O1I;
when "1110" =>
COreApbSram_l01(7 downto 6) <= CoREAPBSRam_o1i&COREAPBSRam_o1i;
when "1111" =>
COREApbSram_l01(7 downto 6) <= CoreApbSram_O1I&COreApbSram_O1I;
when others =>
null
;
end case;
case (CoreApbSram_LI0(12 downto 9)) is
when "0000" =>
CoreApbSraM_L0 <= COREAPBSram_oii(3 downto 0)&COReApbSram_liI(3 downto 0);
when "0001" =>
COReApbSram_l0 <= CoreAPBSRAM_oii(3 downto 0)&CoreApbSrAM_LII(3 downto 0);
when "0010" =>
COREAPbSram_l0 <= COReApbSram_llI(3 downto 0)&CoreApbSraM_ILI(3 downto 0);
when "0011" =>
CoreApbSrAM_L0 <= COREApbSram_lli(3 downto 0)&COreApbSram_ILI(3 downto 0);
when "0100" =>
CoreApbSram_L0 <= COreApbSram_L1OL(3 downto 0)&CoREAPBSRAm_o1ol(3 downto 0);
when "0101" =>
CoreApbSraM_L0 <= CoreApbSrAM_L1OL(3 downto 0)&CorEAPBSRAm_o1ol(3 downto 0);
when "0110" =>
CoreApbSram_L0 <= COReApbSram_oOLL(3 downto 0)&CoreApbSraM_I1OL(3 downto 0);
when "0111" =>
COREAPBSram_l0 <= CoreApBSRAM_Ooll(3 downto 0)&COREAPBSram_i1ol(3 downto 0);
when "1000" =>
CoreApbSram_L0 <= CoreApbSram_IOLL(3 downto 0)&CoreApbSram_LOLL(3 downto 0);
when "1001" =>
COreApbSram_L0 <= CoreApbSRAM_IOll(3 downto 0)&CoreAPBSRAM_loll(3 downto 0);
when "1010" =>
CoreApbSRAM_L0 <= CoreApbSraM_LLLL(3 downto 0)&COREAPbSram_olll(3 downto 0);
when "1011" =>
COREApbSram_l0 <= COReApbSram_llLL(3 downto 0)&CoreApbSraM_OLLL(3 downto 0);
when "1100" =>
CoreApbSrAM_L0 <= CoreApbSram_L1OL(3 downto 0)&CoreApbSRAM_O1ol(3 downto 0);
when "1101" =>
CoreApbSRAM_L0 <= CoreApbSram_L1OL(3 downto 0)&CoreApbSraM_O1OL(3 downto 0);
when "1110" =>
COREApbSram_l0 <= COREAPBSRam_ooll(3 downto 0)&CoREAPBSRAm_i1ol(3 downto 0);
when "1111" =>
COreApbSram_L0 <= CoreAPBSRAM_ooll(3 downto 0)&COREAPBSram_i1ol(3 downto 0);
when others =>
null
;
end case;
when 2 =>
CoREAPBSRAm_ii0 <= "01";
CoreApbSram_O00 <= "01";
CoreApbSraM_L00 <= "01";
COREApbSram_i00 <= "01";
CoREAPBSRAm_o10 <= "01";
CorEAPBSRAM_l10 <= "01";
COREAPbSram_i10 <= "01";
CoreApbSrAM_OO1 <= "01";
CoreApbSRAM_LO1 <= "01";
COREAPBSram_io1 <= "01";
COreApbSram_OL1 <= "01";
CoREAPBSRAm_ll1 <= "01";
COREApbSram_o0lL <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreApbSram_L0LL <= '0'&CoreApBSRAM_LI(10 downto 0);
COREAPbSram_i0ll <= '0'&CoreApbSRAM_Li(10 downto 0);
CoreApBSRAm_o1ll <= '0'&CoreAPBSRAm_li(10 downto 0);
COREAPbSram_l1LL <= '0'&CoREAPBSram_li(10 downto 0);
CoreApbSRAM_I1ll <= '0'&COreApbSrAM_LI(10 downto 0);
COREApbSraM_OOIL <= '0'&COReApbSraM_LI(10 downto 0);
CoreAPBSRam_loil <= '0'&CorEAPBSram_li(10 downto 0);
COReApbSraM_IOIl <= '0'&COREApbSram_LI(10 downto 0);
COREAPBSram_olil <= '0'&COREApbSram_li(10 downto 0);
CorEAPBSRAm_llil <= '0'&CoreApbSraM_LI(10 downto 0);
CoreApbSram_ILIL <= '0'&COREAPBSRam_li(10 downto 0);
COREAPBSRam_l0il <= '0'&CorEAPBSRAm_ii(10 downto 0);
CoREAPBSRAm_i0il <= '0'&CoreApbSram_II(10 downto 0);
CoreApbSRAM_O1IL <= '0'&CoreApbSram_II(10 downto 0);
COReApbSram_l1IL <= '0'&CoreApbSram_II(10 downto 0);
CorEAPBSRAM_i1il <= '0'&COREApbSram_ii(10 downto 0);
CoreApbSram_OO0L <= '0'&COREAPBSram_ii(10 downto 0);
CoreAPBSRAM_Lo0l <= '0'&COREAPBSram_ii(10 downto 0);
CoreAPBSRAM_io0l <= '0'&COReApbSram_ii(10 downto 0);
CoreApbSram_OL0L <= '0'&CoreApbSram_II(10 downto 0);
CoREAPBSRAm_ll0l <= '0'&CoreApBSRAM_Ii(10 downto 0);
COReApbSram_iL0L <= '0'&CoreApbSram_II(10 downto 0);
CoreAPBSRAM_oi0l <= '0'&CoreAPBSRAM_ii(10 downto 0);
CoreApBSRAM_I01(1 downto 0) <= COREAPBSram_o0(1 downto 0);
COReApbSram_o11(1 downto 0) <= CoreApbSraM_O0(3 downto 2);
COREApbSram_l11(1 downto 0) <= CoreApbSRAM_O0(5 downto 4);
CoreApbSraM_I11(1 downto 0) <= COREApbSram_o0(7 downto 6);
CoREAPBSRAm_oool(1 downto 0) <= CoreApbSraM_O0(1 downto 0);
COREAPBSram_lool(1 downto 0) <= COREAPBSram_o0(3 downto 2);
CoreAPBSRAM_iool(1 downto 0) <= COREApbSram_o0(5 downto 4);
CoreApbSram_OLOL(1 downto 0) <= COREAPbSram_o0(7 downto 6);
CoreApbSRAM_LLOL(1 downto 0) <= COREApbSram_o0(1 downto 0);
CoreApbSram_ILOL(1 downto 0) <= CoreApbSrAM_O0(3 downto 2);
COREApbSram_oioL(1 downto 0) <= CoreAPBSRAM_o0(5 downto 4);
COREAPBSram_liol(1 downto 0) <= COReApbSram_o0(7 downto 6);
case (CorEAPBSRAM_li(12 downto 9)) is
when "0000" =>
CoreApbSram_O01(3 downto 0) <= CoreApbSRAM_I0i&CoreApbSram_I0I&CoREAPBSRAm_i0i&CoreApbSram_I0I;
when "0001" =>
COReApbSraM_O01(3 downto 0) <= COREAPbSram_i0I&COREApbSram_I0I&CoreAPBSRAm_i0i&CoreApBSRAM_i0i;
when "0010" =>
CoreApbSRAM_O01(3 downto 0) <= CoreApbSram_I0I&CoreApbSraM_I0I&COREApbSram_i0i&CoreAPBSRAM_i0i;
when "0011" =>
CoreApBSRAM_O01(3 downto 0) <= CoreApbSrAM_I0I&CoreApBSRAM_I0i&CoreApbSram_I0I&CorEAPBSRAM_i0i;
when "0100" =>
COREAPbSram_o01(7 downto 4) <= CoreApbSrAM_I0I&COreApbSram_i0I&CoreAPBSRAM_I0i&CoreApbSraM_I0I;
when "0101" =>
CoreApbSrAM_O01(7 downto 4) <= CoreApbSram_I0I&CoreApbSram_I0I&COREAPBSram_i0i&CoreApbSram_I0I;
when "0110" =>
COREAPBSram_o01(7 downto 4) <= CoreApbSRAM_I0I&CoreApbSraM_I0I&COREAPBSram_i0i&COreApbSram_i0I;
when "0111" =>
COREAPBSRam_o01(7 downto 4) <= COREApbSram_i0i&COREAPBSRam_i0i&COReApbSram_i0I&CoreApbSRAM_I0I;
when "1000" =>
CoreApbSram_O01(11 downto 8) <= COREAPBSram_i0i&CoREAPBSRAm_i0i&COReApbSram_i0I&CoreApbSRAM_I0I;
when "1001" =>
CoreApbSram_O01(11 downto 8) <= CoreApbSrAM_I0I&COReApbSram_i0I&CoreApbSRAM_I0I&COREApbSram_i0I;
when "1010" =>
CoreAPBSRAM_o01(11 downto 8) <= COREAPBSram_i0i&COREAPBSRam_i0i&COReApbSram_i0I&CoreAPBSRAM_i0i;
when "1011" =>
COREAPBSram_o01(11 downto 8) <= COREApbSram_i0i&COREAPBSram_i0i&COReApbSram_i0I&CoreApbSRAM_I0i;
when "1100" =>
CorEAPBSRAm_o01(7 downto 4) <= COREAPbSram_i0i&CoREAPBSRAm_i0i&COREAPbSram_i0i&CoreAPBSRAM_I0i;
when "1101" =>
COREApbSram_o01(7 downto 4) <= COreApbSram_i0I&COREApbSram_i0i&CoreApbSRAM_I0i&COREAPBSram_i0i;
when "1110" =>
CoreApbSrAM_O01(7 downto 4) <= CoreApbSraM_I0I&CoreApbSram_I0I&CoreApBSRAM_I0i&COREAPbSram_i0i;
when "1111" =>
COREAPBSRam_o01(7 downto 4) <= CoreApbSRAM_I0i&CoreApbSraM_I0I&CoREAPBSRAm_i0i&CoreApbSram_I0I;
when others =>
null
;
end case;
case (COREAPbSram_ii(12 downto 9)) is
when "0000" =>
COREAPBSram_l01(3 downto 0) <= CoreApbSRAM_O1i&CoreApbSraM_O1I&CoreApbSRAM_O1i&COreApbSram_o1I;
when "0001" =>
CoREAPBSRam_l01(3 downto 0) <= COREApbSram_o1i&COREAPBSram_o1i&COReApbSram_o1I&CoreApbSRAM_O1I;
when "0010" =>
CoreApbSram_L01(3 downto 0) <= CoreApbSram_O1I&COReApbSram_o1I&CoreApbSRAM_O1i&COREApbSram_o1i;
when "0011" =>
COReApbSram_l01(3 downto 0) <= COREApbSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&CoreApBSRAM_O1i;
when "0100" =>
CoreApbSrAM_L01(7 downto 4) <= CoreApbSrAM_O1I&CoreApbSrAM_O1I&CoreAPBSRAM_o1i&COREApbSram_o1i;
when "0101" =>
CorEAPBSRAm_l01(7 downto 4) <= COReApbSram_o1I&COREAPBSram_o1i&COReApbSram_o1I&CoreApBSRAM_O1i;
when "0110" =>
COREAPBSram_l01(7 downto 4) <= COREApbSram_o1I&COREAPbSram_o1i&CoreApbSram_O1I&CorEAPBSRAM_o1i;
when "0111" =>
COREAPbSram_l01(7 downto 4) <= CoreApbSRAM_O1i&COreApbSram_o1I&CoreApbSraM_O1I&CoreApBSRAM_O1i;
when "1000" =>
COREApbSram_l01(11 downto 8) <= CoreApbSram_O1I&COREApbSram_o1i&COreApbSram_o1I&CoreApbSRAM_O1I;
when "1001" =>
CoreApbSrAM_L01(11 downto 8) <= CoreApbSram_O1I&CoreApbSram_O1I&CoreApbSrAM_O1I&CorEAPBSRAM_o1i;
when "1010" =>
CoreApbSRAM_L01(11 downto 8) <= CoreApbSram_O1I&COreApbSram_o1I&CoreApbSraM_O1I&CoreApBSRAM_O1i;
when "1011" =>
CoreApbSraM_L01(11 downto 8) <= COREApbSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&CoreAPBSRAM_O1i;
when "1100" =>
CoreApbSraM_L01(7 downto 4) <= CoreApbSrAM_O1I&COreApbSram_o1I&CoreApbSRAM_O1I&CoREAPBSRAm_o1i;
when "1101" =>
COREApbSram_l01(7 downto 4) <= CoreApbSRAM_O1i&CoreApbSRAM_O1I&COREAPBSRam_o1i&COREApbSram_o1i;
when "1110" =>
COREAPBSram_l01(7 downto 4) <= CoreApBSRAM_O1i&CoreApbSram_O1I&CoreApBSRAM_O1i&COREApbSram_o1i;
when "1111" =>
CoreApbSrAM_L01(7 downto 4) <= COreApbSram_o1I&COREApbSram_o1i&COreApbSram_o1I&CoreApbSrAM_O1I;
when others =>
null
;
end case;
case (CoreApbSRAM_LI0(12 downto 9)) is
when "0000" =>
CoreAPBSRAm_l0 <= COREAPbSram_lLI(1 downto 0)&CoreApbSRAM_Ili(1 downto 0)&COREApbSram_OII(1 downto 0)&CoreApbSRAM_lii(1 downto 0);
when "0001" =>
CorEAPBSram_l0 <= COREApbSraM_LLI(1 downto 0)&COREApbSram_ILI(1 downto 0)&COReApbSraM_OII(1 downto 0)&CoREAPBSram_lII(1 downto 0);
when "0010" =>
COREApbSram_L0 <= COreApbSrAM_LLi(1 downto 0)&COReApbSraM_ILI(1 downto 0)&COREAPbSram_oII(1 downto 0)&COREAPbSram_LII(1 downto 0);
when "0011" =>
CoreApbSRAM_L0 <= COreApbSRAM_LLi(1 downto 0)&COReApbSraM_ILI(1 downto 0)&COReApbSraM_OII(1 downto 0)&CoreAPBSRam_lii(1 downto 0);
when "0100" =>
COreApbSrAM_L0 <= COReApbSraM_OOLL(1 downto 0)&COreApbSrAM_I1ol(1 downto 0)&COreApbSrAM_L1Ol(1 downto 0)&CoreApbSRAM_O1ol(1 downto 0);
when "0101" =>
CoreApbSRAM_l0 <= CoREAPBSram_oOLL(1 downto 0)&CoreAPBSRam_i1oL(1 downto 0)&CoreAPBSRAm_l1ol(1 downto 0)&COREAPbSram_o1OL(1 downto 0);
when "0110" =>
COreApbSrAM_L0 <= COREApbSram_OOLL(1 downto 0)&COreApbSRAM_I1ol(1 downto 0)&CoREAPBSram_l1OL(1 downto 0)&COreApbSrAM_O1ol(1 downto 0);
when "0111" =>
COReApbSraM_L0 <= CoreAPBSRAm_ooll(1 downto 0)&CorEAPBSram_i1OL(1 downto 0)&CorEAPBSram_l1oL(1 downto 0)&CoreApbSRAM_o1ol(1 downto 0);
when "1000" =>
COreApbSRAM_L0 <= COREApbSram_LLLL(1 downto 0)&CoreAPBSram_ollL(1 downto 0)&CorEAPBSram_ioLL(1 downto 0)&CoreApbSRAM_loll(1 downto 0);
when "1001" =>
CoreAPBSram_l0 <= COREApbSram_LLLL(1 downto 0)&COREAPbSram_oLLL(1 downto 0)&CoreApBSRAM_ioll(1 downto 0)&CoreAPBSRAm_loll(1 downto 0);
when "1010" =>
CoreAPBSram_l0 <= CoreApbSRAM_llll(1 downto 0)&COReApbSraM_OLLL(1 downto 0)&CoreAPBSRam_iolL(1 downto 0)&COREApbSram_LOLL(1 downto 0);
when "1011" =>
CoREApbSram_L0 <= CoreAPBSRam_lllL(1 downto 0)&COreApbSrAM_OLll(1 downto 0)&CoreAPBSRam_iolL(1 downto 0)&CoreApbSRAM_loll(1 downto 0);
when "1100" =>
CoreApbSRAM_l0 <= CoreApbSRAM_ooll(1 downto 0)&COReApbSraM_I1Ol(1 downto 0)&CoreApbSRAM_l1ol(1 downto 0)&CoreApbSram_O1OL(1 downto 0);
when "1101" =>
CoreApbSram_L0 <= COREAPBSram_ooll(1 downto 0)&COReApbSram_i1OL(1 downto 0)&COREApbSram_l1oL(1 downto 0)&CoreApbSRAM_O1ol(1 downto 0);
when "1110" =>
CoreAPBSRAM_l0 <= CoreApbSram_OOLL(1 downto 0)&COREAPBSram_i1ol(1 downto 0)&CoreApbSraM_L1OL(1 downto 0)&CoreApbSram_O1OL(1 downto 0);
when "1111" =>
CoreApbSrAM_L0 <= CoreApBSRAM_Ooll(1 downto 0)&COREAPbSram_i1ol(1 downto 0)&COreApbSram_l1OL(1 downto 0)&CoreApbSraM_O1OL(1 downto 0);
when others =>
null
;
end case;
when others =>
CoreApBSRAM_Ii0 <= "00";
CoreApBSRAM_O00 <= "00";
CoreApbSRAM_L00 <= "00";
CoreApbSraM_I00 <= "00";
COREApbSram_o10 <= "00";
COREApbSram_l10 <= "00";
CoreApbSraM_I10 <= "00";
CoreAPBSRAM_oo1 <= "00";
CoreApbSram_LO1 <= "01";
CoreApbSram_IO1 <= "01";
COREApbSram_ol1 <= "01";
COREApbSram_ll1 <= "01";
CoreApbSRAM_O0Ll <= CoreApbSram_LI(11 downto 0);
COreApbSram_l0LL <= CoreApbSraM_LI(11 downto 0);
CoREAPBSRAm_i0ll <= COREAPbSram_li(11 downto 0);
CoreApbSraM_O1LL <= COREAPBSram_li(11 downto 0);
COreApbSram_l1LL <= CoreApBSRAM_li(11 downto 0);
CorEAPBSRAM_i1ll <= COREAPBSram_li(11 downto 0);
COREApbSram_ooiL <= CoreApbSraM_LI(11 downto 0);
COREApbSram_loIL <= CoreApbSraM_LI(11 downto 0);
CoreAPBSRAM_ioil <= '0'&COReApbSram_li(10 downto 0);
COreApbSram_OLIL <= '0'&CoreApbSraM_LI(10 downto 0);
COREAPBSram_llil <= '0'&COREApbSram_li(10 downto 0);
COREAPbSram_ilil <= '0'&COReApbSram_lI(10 downto 0);
CoreApBSRAM_L0il <= COREAPbSram_ii(11 downto 0);
CoreApbSrAM_I0IL <= COREApbSram_ii(11 downto 0);
CoreApBSRAM_O1il <= CoreApbSrAM_II(11 downto 0);
COREAPBSram_l1il <= CoreAPBSRAM_ii(11 downto 0);
COREApbSram_i1IL <= COreApbSram_iI(11 downto 0);
CoreApbSram_OO0L <= COreApbSram_iI(11 downto 0);
COREAPBSram_lo0l <= COReApbSram_ii(11 downto 0);
CoreApbSraM_IO0L <= COREApbSram_ii(11 downto 0);
CoreApbSram_OL0L <= '0'&COREAPBSRam_ii(10 downto 0);
COREAPBSram_ll0l <= '0'&COREApbSram_ii(10 downto 0);
CoreApBSRAM_Il0l <= '0'&COREAPBSram_ii(10 downto 0);
CoREAPBSRAm_oi0l <= '0'&CoreApBSRAM_ii(10 downto 0);
CoreApBSRAM_I01(0) <= CoreApbSraM_O0(0);
COREAPBSram_o11(0) <= CoreApbSRAM_O0(1);
COREApbSram_l11(0) <= COREApbSram_O0(2);
COREAPbSram_i11(0) <= COreApbSrAM_O0(3);
COREApbSram_OOOL(0) <= CoreApbSRAM_O0(4);
CoreApbSRAM_lool(0) <= COREApbSram_O0(5);
CoreApbSraM_IOOL(0) <= CoreApbSraM_O0(6);
CoreAPBSRAM_olol(0) <= CoreApbSRAM_O0(7);
CoreApBSRAM_Llol(1 downto 0) <= COreApbSram_O0(1 downto 0);
CoreApBSRAM_Ilol(1 downto 0) <= COreApbSram_o0(3 downto 2);
CoreApbSram_OIOL(1 downto 0) <= CoreApbSrAM_O0(5 downto 4);
COREAPbSram_liol(1 downto 0) <= COREAPBSram_o0(7 downto 6);
case (COREAPBSram_li(12 downto 9)) is
when "0000" =>
CoreApbSraM_O01(7 downto 0) <= CoreApbSRAM_I0i&CoreAPBSRAM_i0i&COReApbSram_i0I&CoreAPBSRAM_I0i&COREApbSram_i0i&COREApbSram_i0i&CoreAPBSRAM_I0i&COREAPBSram_i0i;
when "0001" =>
COreApbSram_o01(7 downto 0) <= COREApbSram_i0i&COREAPBSram_i0i&CoreApbSram_I0I&COREAPBSram_i0i&COreApbSram_I0I&CoreApBSRAM_I0i&COREAPBSram_i0i&CoreApbSram_I0I;
when "0010" =>
CoREAPBSRam_o01(7 downto 0) <= COREAPBSram_i0i&COREApbSram_i0i&CoreApbSram_I0I&COREAPBSram_i0i&COreApbSram_i0I&COREAPBSRam_i0i&COREApbSram_i0I&CoreApbSraM_I0I;
when "0011" =>
COREAPbSram_o01(7 downto 0) <= COREAPBSram_i0i&COREApbSram_i0i&CoreApbSram_I0I&COREAPBSram_i0i&COReApbSram_i0I&CoreApbSRAM_I0i&COREAPBSram_i0i&CoreApbSRAM_I0I;
when "0100" =>
CoreAPBSRAM_o01(7 downto 0) <= COREAPbSram_i0i&COREAPBSram_i0i&CoreApbSram_I0I&COREAPBSram_i0i&COReApbSram_i0I&CoREAPBSRAm_i0i&COReApbSram_i0I&CoreApbSRAM_I0i;
when "0101" =>
CoreApbSram_O01(7 downto 0) <= COREApbSram_i0i&CoreApbSram_I0I&CoreApBSRAM_I0i&COReApbSram_i0I&CoreApbSram_I0I&COREAPBSRam_i0i&COREApbSram_i0I&CoreApbSraM_I0I;
when "0110" =>
CoreAPBSRAM_o01(7 downto 0) <= CoreAPBSRAM_i0i&CoreAPBSRAM_I0i&COREAPbSram_i0i&CoreApbSraM_I0I&CoREAPBSRAm_i0i&CoreApbSraM_I0I&CoreApbSRAM_I0I&COREAPBSRam_i0i;
when "0111" =>
CorEAPBSRAM_o01(7 downto 0) <= COreApbSram_i0I&COREApbSram_i0i&CoreApbSram_I0I&CoREAPBSRAm_i0i&COREApbSram_i0i&CoreApbSRAM_I0i&COREAPBSram_i0i&CoreApbSraM_I0I;
when "1000" =>
CoreApbSraM_O01(11 downto 8) <= COREApbSram_i0i&COREAPBSram_i0i&COREApbSram_i0i&CoreApbSram_I0I;
when "1001" =>
COreApbSram_o01(11 downto 8) <= CoreApbSraM_I0I&COreApbSram_i0I&CoreApbSrAM_I0I&COREApbSram_i0i;
when "1010" =>
CoreApbSrAM_O01(11 downto 8) <= COREAPBSram_i0i&CoreApbSRAM_I0i&CorEAPBSRAM_i0i&COREAPbSram_i0i;
when "1011" =>
CoreApbSrAM_O01(11 downto 8) <= CorEAPBSRAM_i0i&CoreAPBSRAM_i0i&COREAPbSram_i0i&COreApbSram_i0I;
when "1100" =>
COREAPBSRam_o01(7 downto 0) <= CoREAPBSRam_i0i&CorEAPBSRAM_i0i&COreApbSram_I0I&CoreApbSRAM_I0i&COREAPBSram_i0i&CoreApbSRAM_I0I&CoreApBSRAM_I0i&COREAPbSram_i0i;
when "1101" =>
COREAPbSram_o01(7 downto 0) <= COreApbSram_i0I&COREApbSram_i0i&CoreApbSRAM_I0I&COREAPBSram_i0i&COreApbSram_I0I&CoreAPBSRAM_i0i&CoreApbSram_I0I&COREAPBSram_i0i;
when "1110" =>
CoREAPBSRAm_o01(7 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CorEAPBSRAM_i0i&COreApbSrAM_I0I&CoreAPBSRam_i0i&CoreAPBSRAM_i0i&CoreApbSRAM_I0i&CoREAPBSram_i0I;
when "1111" =>
COreApbSrAM_O01(7 downto 0) <= CoreApbSRAM_i0i&CoreApbSram_I0I&COREAPBSRam_i0i&CoreAPBSRAM_I0i&CoreApbSrAM_I0I&COREApbSram_i0i&CoREAPBSRAm_i0i&CoreApbSRAM_I0i;
when others =>
null
;
end case;
case (CoreApbSRAM_II(12 downto 9)) is
when "0000" =>
COREApbSram_l01(7 downto 0) <= COreApbSram_o1I&COReApbSram_o1I&CoreApBSRAM_O1i&COReApbSram_o1I&CoreApbSRAM_O1I&COREAPBSRam_o1i&CoreApbSram_O1I&COREAPBSram_o1i;
when "0001" =>
CoreApbSraM_L01(7 downto 0) <= COREApbSram_o1i&COREApbSram_o1i&CoreApbSrAM_O1I&COREApbSram_o1i&CoreAPBSRAM_O1i&CoreApbSram_O1I&CoreApbSraM_O1I&CoreApBSRAM_O1i;
when "0010" =>
CoreAPBSRAM_l01(7 downto 0) <= COREApbSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&CorEAPBSRAm_o1i&COReApbSram_o1I&COREAPBSram_o1i&CoreApbSraM_O1I&COREApbSram_o1I;
when "0011" =>
COREApbSram_l01(7 downto 0) <= COREAPBSram_o1i&COREAPBSRam_o1i&COreApbSram_O1I&CoREAPBSRAm_o1i&COReApbSram_o1I&CoreAPBSRAM_O1i&COREAPBSRam_o1i&CoreApbSrAM_O1I;
when "0100" =>
CoreApbSraM_L01(7 downto 0) <= COREAPBSram_o1i&COREAPBSram_o1i&CoreApbSRAM_O1I&CoreApbSram_O1I&CoreAPBSRAM_o1i&COreApbSram_o1I&COREAPBSram_o1i&CoreApbSram_O1I;
when "0101" =>
CoreApbSrAM_L01(7 downto 0) <= CoreApbSram_O1I&COReApbSram_o1I&CoreApbSram_O1I&COREAPBSram_o1i&CoreApbSraM_O1I&COREApbSram_o1i&CoreApbSram_O1I&CoreAPBSRAM_O1i;
when "0110" =>
COREAPBSRam_l01(7 downto 0) <= CoREAPBSRAm_o1i&CoreApbSRAM_O1i&COREApbSram_o1i&CoreApbSRAM_O1I&CorEAPBSRAM_o1i&CoreApbSram_O1I&COREAPBSram_o1i&CoreApbSraM_O1I;
when "0111" =>
CoREAPBSRam_l01(7 downto 0) <= CoreAPBSRAM_o1i&CoreAPBSRAM_O1i&CoreApbSram_O1I&CoreApbSRAM_O1i&COREApbSram_o1i&CoreApbSRAM_O1I&COREAPBSram_o1i&COREApbSram_o1i;
when "1000" =>
COREAPBSRam_l01(11 downto 8) <= CoreApbSram_O1I&COReApbSram_o1I&CoreApbSraM_O1I&CorEAPBSRAM_o1i;
when "1001" =>
COREAPBSram_l01(11 downto 8) <= COREAPBSram_o1i&CorEAPBSRAM_o1i&COREAPbSram_o1i&COreApbSram_O1I;
when "1010" =>
COReApbSram_l01(11 downto 8) <= CoreApbSRAM_O1I&CoreApbSram_O1I&CoreApbSrAM_O1I&COREAPBSram_o1i;
when "1011" =>
COreApbSram_l01(11 downto 8) <= CoreApbSrAM_O1I&COREApbSram_o1i&COreApbSram_o1I&CoreApbSraM_O1I;
when "1100" =>
COreApbSram_L01(7 downto 0) <= CoreAPBSRAM_o1i&CoreApbSrAM_O1I&COREAPBSram_o1i&CoreApbSram_O1I&CoreApbSRAM_O1i&COREAPBSram_o1i&COreApbSram_O1I&CoreAPBSRAM_o1i;
when "1101" =>
COREApbSram_l01(7 downto 0) <= CoreApbSram_O1I&COreApbSram_o1I&CoreApbSraM_O1I&CoREAPBSRAm_o1i&COREApbSram_o1i&CoreAPBSRAM_O1i&COREAPBSRam_o1i&COReApbSram_o1I;
when "1110" =>
CoreApBSRAM_L01(7 downto 0) <= CoreAPBSRAM_O1i&CoreAPBSRAM_O1i&COREApbSram_o1I&CorEAPBSRAM_o1i&COreApbSram_o1I&CoreApbSRAM_O1I&CorEAPBSRAM_o1i&CoreApbSRAM_O1I;
when "1111" =>
COREAPBSram_l01(7 downto 0) <= CoreApbSRAM_O1i&CoreAPBSRAM_o1i&CoreApbSram_O1I&COREAPbSram_o1i&CoreApbSram_O1I&CoREAPBSRAm_o1i&COREApbSram_o1i&CoreApbSram_O1I;
when others =>
null
;
end case;
case (COREApbSram_li0(12 downto 9)) is
when "0000" =>
CoreApbSraM_L0 <= CoreApbSraM_OOLL(0)&CoREAPBSRam_i1ol(0)&CoreApbSraM_L1OL(0)&COREApbSram_o1oL(0)&COREAPBSram_lli(0)&CoreApbSram_ILI(0)&CoreApbSram_OII(0)&CoreApbSRAM_LII(0);
when "0001" =>
CoreApbSraM_L0 <= CoreAPBSRAM_ooll(0)&COREAPbSram_i1ol(0)&CoreApbSRAM_l1ol(0)&CoreApbSRAM_o1ol(0)&COREAPbSram_lLI(0)&CoreApbSRAM_ili(0)&CoREAPbSram_oII(0)&CoreApbSRAM_Lii(0);
when "0010" =>
CoreAPBSram_l0 <= CoreAPBSRAm_ooll(0)&CoreApbSRAM_i1ol(0)&COREApbSram_L1OL(0)&CoreApBSRAM_o1ol(0)&CoreAPBSRam_lli(0)&CoreApbSRAM_ili(0)&CorEAPBSram_oiI(0)&CoreApbSRAM_Lii(0);
when "0011" =>
COREAPbSram_l0 <= CoREAPbSram_oOLL(0)&COREApbSram_I1OL(0)&CoreApbSRAM_l1ol(0)&CoreApbSRAM_O1ol(0)&CoreApBSRAM_lli(0)&COreApbSraM_ILI(0)&CoreAPBSRAm_oii(0)&CorEAPBSram_liI(0);
when "0100" =>
CoreApbSRAM_L0 <= CoreApBSRAM_ooll(0)&COREApbSram_I1OL(0)&CoreApbSRAM_L1ol(0)&COREAPbSram_O1OL(0)&CoreAPBSRAm_lli(0)&COReApbSraM_ILI(0)&COREAPbSram_oII(0)&COreApbSrAM_LIi(0);
when "0101" =>
CoreApBSRAm_l0 <= COreApbSrAM_OOLl(0)&CoreApbSRAM_I1ol(0)&COREAPbSram_l1OL(0)&COREAPbSram_o1OL(0)&CoREAPBSram_lLI(0)&COREAPbSram_iLI(0)&CoreApbSRAM_oii(0)&COREAPbSram_lII(0);
when "0110" =>
COREApbSram_L0 <= CoreApbSRAM_ooll(0)&CoreApbSRAM_i1ol(0)&COREAPbSram_l1OL(0)&CoreApBSRAM_o1ol(0)&CoreApbSRAM_Lli(0)&COREAPbSram_iLI(0)&COREAPbSram_OII(0)&CoreApBSRAm_lii(0);
when "0111" =>
COREApbSram_L0 <= CoreApBSRAM_ooll(0)&COREApbSram_I1OL(0)&CoreApbSRAM_L1ol(0)&CoreAPBSRAm_o1ol(0)&COReApbSraM_LLI(0)&CoreAPBSRam_ili(0)&CorEAPBSram_oii(0)&CoreApBSRAM_lii(0);
when "1000" =>
CorEApbSrAM_L0 <= CoreApbSRAM_llll(1 downto 0)&CoreApbSraM_OLLL(1 downto 0)&CoreAPBSRAM_Ioll(1 downto 0)&COREApbSram_loll(1 downto 0);
when "1001" =>
COREApbSram_l0 <= CoreApBSRAM_LLll(1 downto 0)&COREAPBSram_olll(1 downto 0)&CorEAPBSRAm_ioll(1 downto 0)&CoreAPBSRAM_Loll(1 downto 0);
when "1010" =>
COREAPbSram_l0 <= CoreApbSRAM_LLll(1 downto 0)&COREApbSram_olll(1 downto 0)&CorEAPBSRAm_ioll(1 downto 0)&COREApbSram_lolL(1 downto 0);
when "1011" =>
COREAPBSRam_l0 <= COREApbSram_lllL(1 downto 0)&CoreApbSrAM_OLLL(1 downto 0)&CoreApbSraM_IOLL(1 downto 0)&CoreApbSRAM_LOll(1 downto 0);
when "1100" =>
CoREAPBSRAm_l0 <= CoreApbSRAM_OOLl(0)&CoREAPBSRam_i1ol(0)&CoreApbSraM_L1OL(0)&CoreApbSram_O1OL(0)&COREAPBSram_lli(0)&CoreApbSrAM_ILI(0)&CoreApBSRAM_Oii(0)&COREApbSram_lii(0);
when "1101" =>
COREApbSram_l0 <= CoreApbSraM_OOLL(0)&CoreAPBSRAM_I1ol(0)&COREApbSram_l1oL(0)&CoreApbSram_O1OL(0)&COReApbSram_llI(0)&COREAPbSram_ili(0)&CoreApbSram_OII(0)&COREAPBSram_lii(0);
when "1110" =>
CoreApbSram_L0 <= CoreApbSrAM_OOLL(0)&CoreApbSrAM_I1OL(0)&CoreApbSram_L1OL(0)&CoREAPBSRAm_o1ol(0)&COREApbSram_lli(0)&COREAPBSram_ili(0)&COREAPBSRam_oii(0)&CorEAPBSRAm_lii(0);
when "1111" =>
COREApbSram_l0 <= CoreAPBSRAM_ooll(0)&COREApbSram_i1oL(0)&CoreApbSraM_L1OL(0)&CoreAPBSRAM_o1ol(0)&CoREAPBSRAm_lli(0)&COREAPBSram_ili(0)&COREAPBSRam_oii(0)&CoreApbSRAM_LII(0);
when others =>
null
;
end case;
end case;
when 6656 =>
case (CoreApbSraM_OI0) is
when 8 =>
CoreApbSram_II0 <= "11";
CoREAPBSRAm_o00 <= "11";
COREApbSram_l00 <= "11";
CoreApbSraM_I00 <= "11";
CoreApbSraM_O10 <= "11";
COREAPbSram_l10 <= "11";
CoreApbSrAM_I10 <= "11";
CoreApbSrAM_OO1 <= "11";
CoreApbSRAM_LO1 <= "11";
CoreApbSrAM_IO1 <= "11";
CoreApbSraM_OL1 <= "11";
CoreApbSraM_LL1 <= "11";
CoreApBSRAM_Il1 <= "11";
COReApbSram_o0LL <= "000"&COREAPBSram_li(8 downto 0);
CoREAPBSRam_l0ll <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSRAM_I0ll <= "000"&CoreApbSraM_LI(8 downto 0);
COREApbSram_o1lL <= "000"&COreApbSram_lI(8 downto 0);
COREApbSram_l1ll <= "000"&CoreAPBSRAM_Li(8 downto 0);
CoreApbSram_I1LL <= "000"&COREApbSram_li(8 downto 0);
CoREAPBSram_ooIL <= "000"&CorEAPBSram_li(8 downto 0);
CoREAPBSram_loIL <= "000"&CoreAPBSRam_li(8 downto 0);
COreApbSrAM_IOIl <= "000"&COreApbSrAM_LI(8 downto 0);
CoreApbSRAM_olil <= "000"&COREApbSram_li(8 downto 0);
CoreApbSram_LLIL <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSraM_ILIL <= "000"&CoreAPBSRAM_li(8 downto 0);
CoreAPBSRAM_oiil <= "000"&COREApbSram_li(8 downto 0);
CoreApbSram_L0IL <= "000"&CoreAPBSRAM_Ii(8 downto 0);
CoreAPBSRAM_i0il <= "000"&CoreApBSRAM_II(8 downto 0);
CoreApbSRAM_O1IL <= "000"&COREApbSram_ii(8 downto 0);
CoreApbSraM_L1IL <= "000"&COreApbSram_II(8 downto 0);
COREAPBSram_i1il <= "000"&CoreApbSraM_II(8 downto 0);
COREApbSram_oo0L <= "000"&CoreApbSram_II(8 downto 0);
CoreAPBSRAM_lo0l <= "000"&COREApbSram_ii(8 downto 0);
COREAPBSram_io0l <= "000"&COREApbSram_ii(8 downto 0);
COreApbSram_oL0L <= "000"&CoREAPBSRAm_ii(8 downto 0);
COREApbSram_ll0L <= "000"&CoreApbSRAM_II(8 downto 0);
COREAPBSram_il0l <= "000"&COREAPbSram_ii(8 downto 0);
COREApbSram_oi0L <= "000"&CoreApbSRAM_II(8 downto 0);
COREApbSram_li0L <= "000"&CorEAPBSRAm_ii(8 downto 0);
CorEAPBSRAM_i01 <= CoreApbSRAM_O0;
CoreApbSram_O11 <= COREAPbSram_o0;
CoREAPBSRAm_l11 <= COReApbSram_o0;
COREApbSram_i11 <= CoreAPBSRAM_o0;
CoreAPBSRAM_oool <= CoreApbSram_O0;
COReApbSram_lOOL <= CoreAPBSRAM_o0;
CoreApbSram_IOOL <= COReApbSram_o0;
CoreAPBSRAM_olol <= CoreAPBSRAM_O0;
CoreApbSRAM_LLOl <= CoreApbSRAM_O0;
COREAPBSram_ilol <= CoreApbSRAM_O0;
CoreAPBSRAM_oiol <= CoreApbSram_O0;
COREAPBSram_liol <= CoreApbSrAM_O0;
CoreApbSram_IIOL <= CoreAPBSRAM_o0;
case (COreApbSram_lI(12 downto 9)) is
when "0000" =>
COreApbSram_o01(0) <= CoreApbSraM_I0I;
when "0001" =>
COREAPBSram_o01(1) <= CoreApbSram_I0I;
when "0010" =>
CoreApbSraM_O01(2) <= CoreApbSrAM_I0I;
when "0011" =>
COREAPBSram_o01(3) <= CoreApbSraM_I0I;
when "0100" =>
COREAPBSram_o01(4) <= CoreApbSRAM_I0I;
when "0101" =>
CoreAPBSRAM_o01(5) <= CorEAPBSRAm_i0i;
when "0110" =>
CoreApbSraM_O01(6) <= COREAPBSram_i0i;
when "0111" =>
CoreApbSRAM_O01(7) <= CoreAPBSRAM_i0i;
when "1000" =>
COREAPbSram_o01(8) <= CoreApbSraM_I0I;
when "1001" =>
CoreApBSRAM_O01(9) <= COREAPBSram_i0i;
when "1010" =>
CoreApbSram_O01(10) <= CoREAPBSRAm_i0i;
when "1011" =>
CoreApbSRAM_O01(11) <= COReApbSram_i0I;
when "1100" =>
COREApbSram_o01(12) <= COREAPBSram_i0i;
when "1101" =>
CoreApbSRAM_O01(5) <= COREApbSram_i0i;
when "1110" =>
CoreApbSram_O01(6) <= CoreAPBSRAM_i0i;
when "1111" =>
CoreAPBSRAM_o01(7) <= COReApbSram_i0I;
when others =>
null
;
end case;
case (CoreApBSRAM_II(12 downto 9)) is
when "0000" =>
CoREAPBSRAm_l01(0) <= CoreApbSRAM_O1I;
when "0001" =>
CoreAPBSRAM_l01(1) <= COREAPBSram_o1i;
when "0010" =>
COreApbSRAM_L01(2) <= CoreApbSRAM_o1i;
when "0011" =>
CoreApbSRAM_L01(3) <= COREAPbSram_o1I;
when "0100" =>
CorEAPBSram_l01(4) <= CoREAPBSram_o1I;
when "0101" =>
CoreApbSRAM_L01(5) <= COREAPbSram_o1i;
when "0110" =>
COReApbSram_l01(6) <= CoREAPBSRAm_o1i;
when "0111" =>
CorEAPBSRAM_l01(7) <= COREAPBSram_o1i;
when "1000" =>
COReApbSram_l01(8) <= CoREAPBSRAm_o1i;
when "1001" =>
COREApbSram_l01(9) <= CoreApbSRAM_O1i;
when "1010" =>
COREAPBSRam_l01(10) <= CoreApbSraM_O1I;
when "1011" =>
CoreApBSRAM_L01(11) <= COREAPbSram_o1i;
when "1100" =>
COREAPBSram_l01(12) <= COREAPBSram_o1i;
when "1101" =>
COREAPBSram_l01(5) <= CoreAPBSRAM_o1i;
when "1110" =>
COREAPBSram_l01(6) <= COREApbSram_o1i;
when "1111" =>
CoreAPBSRAM_L01(7) <= CoreApbSram_O1I;
when others =>
null
;
end case;
case (CoreApbSRAM_LI0(12 downto 9)) is
when "0000" =>
CoreApBSRAM_L0 <= CorEAPBSRAM_lii;
when "0001" =>
CoreApbSram_L0 <= CoreApBSRAM_Oii;
when "0010" =>
COreApbSram_l0 <= COREApbSram_ili;
when "0011" =>
CoreApbSram_L0 <= COREApbSram_lli;
when "0100" =>
CorEAPBSRAm_l0 <= COreApbSram_o1OL;
when "0101" =>
CoreApbSRAM_L0 <= COREAPBSram_l1ol;
when "0110" =>
CoreApbSRAM_L0 <= COREApbSram_i1oL;
when "0111" =>
CoreAPBSRAM_l0 <= COREApbSram_ooll;
when "1000" =>
COREAPBSram_l0 <= COREAPBSram_loll;
when "1001" =>
CoreAPBSRAM_l0 <= CoreApbSraM_IOLL;
when "1010" =>
COreApbSram_l0 <= CoreAPBSRAM_Olll;
when "1011" =>
COREAPbSram_l0 <= CoreApbSraM_LLLL;
when "1100" =>
COreApbSram_l0 <= CoreApbSRAM_ILll;
when "1101" =>
CorEAPBSRAM_l0 <= COreApbSram_l1OL;
when "1110" =>
CoreApbSraM_L0 <= CoreApbSRAM_I1Ol;
when "1111" =>
COREAPBSram_l0 <= COREAPBSRam_ooll;
when others =>
null
;
end case;
when 4 =>
COREApbSram_ii0 <= "10";
COreApbSram_O00 <= "10";
COREAPBSram_l00 <= "10";
CoreAPBSRAM_I00 <= "10";
COREAPBSRam_o10 <= "10";
COReApbSram_l10 <= "10";
CorEAPBSRAM_i10 <= "10";
CoreApbSrAM_OO1 <= "10";
CoreApbSraM_LO1 <= "10";
CorEAPBSRAM_io1 <= "10";
COREApbSram_ol1 <= "10";
CoreApbSRAM_LL1 <= "10";
CoreApbSraM_IL1 <= "11";
COREApbSram_o0ll <= "00"&CoreAPBSRAM_Li(9 downto 0);
COReApbSram_l0LL <= "00"&COreApbSram_lI(9 downto 0);
CoreAPBSRAM_I0ll <= "00"&COREAPbSram_li(9 downto 0);
CorEAPBSRAm_o1ll <= "00"&COREApbSram_li(9 downto 0);
COREAPBSRam_l1ll <= "00"&CoreAPBSRAM_li(9 downto 0);
CoREAPBSRAm_i1ll <= "00"&COreApbSram_LI(9 downto 0);
CorEAPBSRAM_ooil <= "00"&COREApbSram_li(9 downto 0);
COREAPBSRam_loil <= "00"&CoreApbSram_LI(9 downto 0);
COREAPbSram_ioil <= "00"&COREApbSram_li(9 downto 0);
COREAPBSRam_olil <= "00"&COREApbSram_li(9 downto 0);
COREAPBSram_llil <= "00"&CoreApbSRAM_LI(9 downto 0);
CoreApbSRAM_ILIl <= "00"&CoreApbSrAM_LI(9 downto 0);
COreApbSram_OIIL <= "000"&COreApbSram_lI(8 downto 0);
CoreApbSRAM_L0il <= "00"&COREAPBSram_ii(9 downto 0);
COreApbSrAM_I0il <= "00"&CorEApBSRAM_ii(9 downto 0);
CoreApbSrAM_O1Il <= "00"&CoreApbSRAM_II(9 downto 0);
COReApbSraM_L1IL <= "00"&COReApbSram_II(9 downto 0);
COreApbSRAM_I1il <= "00"&CoreApbSRAM_ii(9 downto 0);
COreApbSraM_OO0l <= "00"&COreApbSrAM_II(9 downto 0);
COREApbSram_LO0L <= "00"&COReApbSraM_II(9 downto 0);
CorEAPBSram_io0L <= "00"&CoreApBSRAM_ii(9 downto 0);
COreApbSrAM_OL0l <= "00"&CoreApbSRAM_ii(9 downto 0);
COREAPbSram_LL0L <= "00"&CorEAPBSram_ii(9 downto 0);
CorEAPBSram_il0L <= "00"&CoreApbSRAM_II(9 downto 0);
CoreAPBSRAm_oi0l <= "00"&CorEAPBSram_ii(9 downto 0);
CoreApbSRAM_li0l <= "000"&COREApbSram_II(8 downto 0);
CoreApbSRAM_i01(3 downto 0) <= CoreApbSRAM_o0(3 downto 0);
CoreApBSRAM_o11(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
COREApbSram_L11(3 downto 0) <= COReApbSraM_O0(3 downto 0);
CoreApbSRAM_I11(3 downto 0) <= CorEAPBSram_o0(7 downto 4);
CoreApbSRAM_oool(3 downto 0) <= CoreAPBSRAm_o0(3 downto 0);
CoreApbSRAM_LOol(3 downto 0) <= CoreApBSRAM_o0(7 downto 4);
COReApbSraM_IOOl(3 downto 0) <= CoREAPBSram_o0(3 downto 0);
COreApbSrAM_OLol(3 downto 0) <= COREApbSraM_O0(7 downto 4);
CoreAPBSRam_lloL(3 downto 0) <= COReApbSraM_O0(3 downto 0);
CorEAPBSram_ilOL(3 downto 0) <= COREAPbSram_o0(7 downto 4);
CoreAPBSRAm_oiol(3 downto 0) <= COREApbSram_O0(3 downto 0);
COreApbSrAM_LIOl(3 downto 0) <= CoREAPBSram_o0(7 downto 4);
COREApbSram_IIOL <= COReApbSraM_O0;
case (CoreApbSRAM_li(12 downto 9)) is
when "0000" =>
CoreApbSRAM_O01(1 downto 0) <= CoreAPBSram_i0i&CoreApBSRAM_i0i;
when "0001" =>
CoreApbSRAM_O01(1 downto 0) <= CoREAPbSram_i0I&CoreApBSRAM_i0i;
when "0010" =>
COReApbSraM_O01(3 downto 2) <= CoreApbSRAM_I0i&CoreApbSRAM_I0i;
when "0011" =>
CoreApbSRAM_o01(3 downto 2) <= COREApbSram_I0I&COREApbSram_I0I;
when "0100" =>
CoreApbSRAM_O01(5 downto 4) <= COReApbSram_i0I&CoreApbSraM_I0I;
when "0101" =>
COREAPbSram_o01(5 downto 4) <= COREApbSram_I0I&COREApbSram_I0I;
when "0110" =>
COREApbSram_o01(7 downto 6) <= CoreApbSrAM_I0I&CoreAPBSRAM_i0i;
when "0111" =>
COREAPBSram_o01(7 downto 6) <= CoreAPBSRAM_i0i&COREAPBSram_i0i;
when "1000" =>
CoreApbSrAM_O01(9 downto 8) <= COREAPbSram_i0i&COREAPBSram_i0i;
when "1001" =>
COReApbSram_o01(9 downto 8) <= COREApbSram_i0i&COREAPBSram_i0i;
when "1010" =>
CoREAPBSRAm_o01(11 downto 10) <= COreApbSram_i0I&COREAPBSRam_i0i;
when "1011" =>
CoreApbSrAM_O01(11 downto 10) <= COREApbSram_i0i&CoREAPBSRAm_i0i;
when "1100" =>
COREAPBSram_o01(12) <= CoreApbSrAM_I0I;
when "1101" =>
CoreApbSram_O01(5 downto 4) <= CoreAPBSRAM_i0i&CorEAPBSRAm_i0i;
when "1110" =>
COREApbSram_o01(7 downto 6) <= CoreApbSRAM_I0i&COReApbSram_i0I;
when "1111" =>
CorEAPBSRAm_o01(7 downto 6) <= CoREAPBSRam_i0i&CoreApbSraM_I0I;
when others =>
null
;
end case;
case (COREApbSram_ii(12 downto 9)) is
when "0000" =>
CoreApbSraM_L01(1 downto 0) <= COReApbSram_o1I&COREApbSram_o1i;
when "0001" =>
CoREAPBSRAm_l01(1 downto 0) <= CoreApbSrAM_O1I&CoreApbSram_O1I;
when "0010" =>
COREApbSram_l01(3 downto 2) <= CoreApbSraM_O1I&COREApbSram_o1I;
when "0011" =>
COREApbSram_l01(3 downto 2) <= COREApbSram_o1i&COREAPBSram_o1i;
when "0100" =>
COREAPBSram_l01(5 downto 4) <= CoreApbSRAM_O1i&COREApbSram_o1I;
when "0101" =>
CoreApbSrAM_L01(5 downto 4) <= COREAPBSram_o1i&CoreApbSRAM_O1i;
when "0110" =>
CoreAPBSRAM_l01(7 downto 6) <= CoreApbSram_O1I&COREApbSram_o1I;
when "0111" =>
CoreApbSraM_L01(7 downto 6) <= CoreApbSram_O1I&COReApbSram_o1I;
when "1000" =>
COREApbSram_l01(9 downto 8) <= COREAPBSram_o1i&CoreApbSRAM_O1i;
when "1001" =>
CoreApbSRAM_L01(9 downto 8) <= COreApbSram_o1I&COREApbSram_o1I;
when "1010" =>
CoreApbSraM_L01(11 downto 10) <= COREApbSram_o1i&COREAPBSram_o1i;
when "1011" =>
CoreAPBSRAM_l01(11 downto 10) <= COREApbSram_o1I&COREAPBSram_o1i;
when "1100" =>
CoREAPBSRAm_l01(12) <= CoreApbSraM_O1I;
when "1101" =>
COReApbSram_l01(5 downto 4) <= COREAPBSram_o1i&CoreAPBSRAM_O1i;
when "1110" =>
CoreApbSram_L01(7 downto 6) <= COREApbSram_o1i&COREAPBSRam_o1i;
when "1111" =>
CoreApbSRAM_L01(7 downto 6) <= CoreApbSRAM_O1I&CoreApbSram_O1I;
when others =>
null
;
end case;
case (CoreAPBSRAM_li0(12 downto 9)) is
when "0000" =>
CoreApbSram_L0 <= COReApbSram_oII(3 downto 0)&COReApbSram_liI(3 downto 0);
when "0001" =>
COREAPBSram_l0 <= CoreAPBSRAM_Oii(3 downto 0)&CoreApbSRAM_LII(3 downto 0);
when "0010" =>
CoreAPBSRAM_L0 <= CoreApbSrAM_LLI(3 downto 0)&CoREAPBSRAm_ili(3 downto 0);
when "0011" =>
CoreApbSraM_L0 <= CoreAPBSRAM_lli(3 downto 0)&CoreApbSrAM_ILI(3 downto 0);
when "0100" =>
COREApbSram_l0 <= COREAPBSram_l1ol(3 downto 0)&COReApbSram_o1OL(3 downto 0);
when "0101" =>
CoreApBSRAM_l0 <= CoreApBSRAM_l1ol(3 downto 0)&CoreApbSRAM_o1ol(3 downto 0);
when "0110" =>
CoreAPBSRAm_l0 <= CoreApbSRAM_ooll(3 downto 0)&CoreApbSRAM_I1ol(3 downto 0);
when "0111" =>
CoreApBSRAM_l0 <= CoreApBSRAM_ooll(3 downto 0)&COreApbSrAM_I1Ol(3 downto 0);
when "1000" =>
COREApbSram_L0 <= COReApbSraM_IOLL(3 downto 0)&COREApbSram_lolL(3 downto 0);
when "1001" =>
CoreApBSRAM_L0 <= COreApbSram_IOLL(3 downto 0)&CoreApbSrAM_LOLL(3 downto 0);
when "1010" =>
COREAPBSRam_l0 <= CorEAPBSRAm_llll(3 downto 0)&COReApbSram_olLL(3 downto 0);
when "1011" =>
COREApbSram_l0 <= CoreApbSraM_LLLL(3 downto 0)&COREAPbSram_olll(3 downto 0);
when "1100" =>
CoreApbSram_L0 <= CoreApbSraM_ILLL;
when "1101" =>
CoreApbSram_L0 <= CoreApbSrAM_L1OL(3 downto 0)&CoreApbSraM_O1OL(3 downto 0);
when "1110" =>
COReApbSram_l0 <= COREAPBSram_ooll(3 downto 0)&CoreAPBSRAM_I1ol(3 downto 0);
when "1111" =>
COreApbSram_l0 <= CoreApBSRAM_Ooll(3 downto 0)&CoreApbSRAM_I1Ol(3 downto 0);
when others =>
null
;
end case;
when 2 =>
COreApbSram_II0 <= "01";
CoreAPBSRAM_O00 <= "01";
COREApbSram_l00 <= "01";
CoreAPBSRAM_i00 <= "01";
COREApbSram_o10 <= "01";
CoreApbSram_L10 <= "01";
COREAPBSram_i10 <= "01";
CoreApbSram_OO1 <= "01";
CoreApbSram_LO1 <= "01";
COReApbSram_io1 <= "01";
COReApbSram_ol1 <= "01";
COREApbSram_ll1 <= "01";
COreApbSram_iL1 <= "11";
CoreApbSram_O0LL <= '0'&COREAPbSram_li(10 downto 0);
CoreApbSraM_L0LL <= '0'&CoreApbSRAM_LI(10 downto 0);
COREAPbSram_i0ll <= '0'&COreApbSram_lI(10 downto 0);
CoreApbSRAM_O1ll <= '0'&COREApbSram_li(10 downto 0);
COReApbSram_l1LL <= '0'&CoreApbSrAM_LI(10 downto 0);
COREAPBSram_i1ll <= '0'&CorEAPBSRAm_li(10 downto 0);
COREAPBSram_ooil <= '0'&COREApbSram_li(10 downto 0);
COREApbSram_loiL <= '0'&CoreApbSraM_LI(10 downto 0);
CoreApbSraM_IOIL <= '0'&COREAPbSram_li(10 downto 0);
CoreAPBSRAM_Olil <= '0'&COREAPBSram_li(10 downto 0);
CoreAPBSRAM_Llil <= '0'&CoreApbSram_LI(10 downto 0);
CoreAPBSRAM_Ilil <= '0'&COREAPbSram_li(10 downto 0);
CoreApbSram_OIIL <= "000"&CoreApbSRAM_LI(8 downto 0);
COREApbSram_l0il <= '0'&COREAPbSram_ii(10 downto 0);
COREAPBSRam_i0il <= '0'&COREAPBSram_ii(10 downto 0);
COREApbSram_o1iL <= '0'&COREAPBSram_ii(10 downto 0);
COREAPBSram_l1il <= '0'&CoreApbSrAM_II(10 downto 0);
COREAPBSram_i1il <= '0'&CoreApbSRAM_II(10 downto 0);
CoreApbSram_OO0L <= '0'&CoreApbSRAM_II(10 downto 0);
CoreApbSRAM_LO0l <= '0'&CorEAPBSRAM_ii(10 downto 0);
CoreApbSRAM_IO0l <= '0'&COREAPBSram_ii(10 downto 0);
CoreAPBSRAM_Ol0l <= '0'&COREApbSram_ii(10 downto 0);
CoREAPBSRAm_ll0l <= '0'&CoreApbSrAM_II(10 downto 0);
CoreApbSraM_IL0L <= '0'&CoreAPBSRAM_Ii(10 downto 0);
COreApbSram_oI0L <= '0'&COREAPBSram_ii(10 downto 0);
COREAPBSram_li0l <= "000"&CoreApbSram_II(8 downto 0);
COREApbSram_i01(1 downto 0) <= CoreApBSRAM_O0(1 downto 0);
CoreApbSram_O11(1 downto 0) <= CoreApbSRAM_O0(3 downto 2);
CoreApbSRAM_L11(1 downto 0) <= COReApbSram_o0(5 downto 4);
CorEAPBSRAM_i11(1 downto 0) <= CoreApbSram_O0(7 downto 6);
CoREAPBSRAm_oool(1 downto 0) <= CoreApbSraM_O0(1 downto 0);
CoreApbSram_LOOL(1 downto 0) <= CoreApbSraM_O0(3 downto 2);
CoreApbSraM_IOOL(1 downto 0) <= COREAPbSram_o0(5 downto 4);
CoreApbSram_OLOL(1 downto 0) <= CoreApbSRAM_O0(7 downto 6);
COREApbSram_llol(1 downto 0) <= CoreApbSram_O0(1 downto 0);
COREApbSram_iloL(1 downto 0) <= CoreApbSram_O0(3 downto 2);
COREAPBSRam_oiol(1 downto 0) <= CoreApbSraM_O0(5 downto 4);
CoreApbSram_LIOL(1 downto 0) <= CoreApbSram_O0(7 downto 6);
CoREAPBSRAm_iiol <= CoreApbSraM_O0;
case (CoreApbSraM_LI(12 downto 9)) is
when "0000" =>
COREApbSram_o01(3 downto 0) <= COREAPbSram_i0i&COREAPbSram_i0i&CoreApbSraM_I0I&CorEAPBSRAM_i0i;
when "0001" =>
CoreAPBSRAM_O01(3 downto 0) <= CoreApbSram_I0I&COreApbSram_i0I&CoreApbSraM_I0I&CoREAPBSRAm_i0i;
when "0010" =>
CoreApbSraM_O01(3 downto 0) <= CoreApbSRAM_I0I&COreApbSram_i0I&CoreApbSrAM_I0I&CoREAPBSRAm_i0i;
when "0011" =>
CoREAPBSRAm_o01(3 downto 0) <= CoreApbSrAM_I0I&CoreApbSram_I0I&CoreApbSRAM_I0I&COREAPbSram_i0i;
when "0100" =>
COREApbSram_o01(7 downto 4) <= CoreApbSram_I0I&COREApbSram_i0i&COreApbSram_i0I&CoreApbSraM_I0I;
when "0101" =>
CorEAPBSRAM_o01(7 downto 4) <= CoreAPBSRAM_I0i&CoreApbSrAM_I0I&CoreAPBSRAM_i0i&COReApbSram_i0I;
when "0110" =>
CoreAPBSRAM_o01(7 downto 4) <= CoreApbSram_I0I&CoreAPBSRAM_i0i&COReApbSram_i0I&CoreApbSRAM_I0i;
when "0111" =>
CoreApbSRAM_O01(7 downto 4) <= CoreApbSRAM_I0i&CoreApbSraM_I0I&CoreApbSRAM_I0i&CoreAPBSRAM_i0i;
when "1000" =>
CoreApbSram_O01(11 downto 8) <= COReApbSram_i0I&COREAPBSram_i0i&CoreApbSram_I0I&CoreAPBSRAM_i0i;
when "1001" =>
COREAPBSram_o01(11 downto 8) <= COREApbSram_i0i&COREAPBSram_i0i&COREApbSram_i0I&CoreApbSRAM_I0i;
when "1010" =>
CoreApbSraM_O01(11 downto 8) <= CoreAPBSRAM_i0i&CoreApbSraM_I0I&CoreApbSRAM_I0i&COREApbSram_i0i;
when "1011" =>
COREAPBSram_o01(11 downto 8) <= COREApbSram_i0i&COREAPBSRam_i0i&COREAPbSram_i0i&CoreApbSrAM_I0I;
when "1100" =>
CoreAPBSRAM_o01(12) <= COREApbSram_i0i;
when "1101" =>
COreApbSram_o01(7 downto 4) <= CoreApBSRAM_I0i&CoreApbSraM_I0I&COREAPBSram_i0i&CoreApbSRAM_I0I;
when "1110" =>
COREAPBSram_o01(7 downto 4) <= COREAPBSram_i0i&COREAPBSRam_i0i&COREApbSram_i0i&CoreApbSraM_I0I;
when "1111" =>
COREApbSram_o01(7 downto 4) <= COREApbSram_i0I&CoREAPBSRAm_i0i&COReApbSram_i0I&CoreApbSRAM_I0I;
when others =>
null
;
end case;
case (COReApbSram_ii(12 downto 9)) is
when "0000" =>
CoreApBSRAM_L01(3 downto 0) <= CoreApbSRAM_O1i&CoreApbSRAM_O1i&CoreApBSRAM_o1i&COREApbSram_O1I;
when "0001" =>
CorEAPBSram_l01(3 downto 0) <= COReApbSraM_O1I&COREAPBSram_o1I&COreApbSrAM_O1i&CoreAPBSRAm_o1i;
when "0010" =>
COREAPbSram_l01(3 downto 0) <= COREApbSram_O1I&COREAPbSram_o1I&CoreApbSRAM_o1i&CoreApBSRAM_o1i;
when "0011" =>
COreApbSrAM_L01(3 downto 0) <= CoREAPBSram_o1I&CoreAPBSRAm_o1i&CoreAPBSRAM_o1i&CoreAPBSRam_o1i;
when "0100" =>
CorEAPBSram_l01(7 downto 4) <= CoREAPbSram_o1I&COREApbSram_O1I&COreApbSrAM_O1I&CoREAPBSram_o1I;
when "0101" =>
CorEAPBSram_l01(7 downto 4) <= CoreApBSRAM_o1i&CoreAPBSRAm_o1i&CoreAPBSRam_o1i&CoREAPBSram_o1I;
when "0110" =>
CoreAPBSRam_l01(7 downto 4) <= COREApbSram_O1I&CorEAPBSram_o1I&CoreApBSRAM_o1i&CoreAPBSRam_o1i;
when "0111" =>
COReApbSraM_L01(7 downto 4) <= CoreApBSRAM_o1i&CorEAPBSram_o1i&CoreApbSRAM_O1i&CorEAPBSram_o1I;
when "1000" =>
CoreApBSRAM_l01(11 downto 8) <= CoreAPBSRAm_o1i&COReApbSraM_O1I&CoreApBSRAM_o1i&CoreAPBSRam_o1i;
when "1001" =>
COreApbSrAM_L01(11 downto 8) <= CoreAPBSRAM_o1i&COreApbSrAM_O1i&CoreApbSRAM_o1i&COREApbSram_O1I;
when "1010" =>
CoreAPBSRAm_l01(11 downto 8) <= COREApbSram_O1I&CoreApbSRAM_O1i&CoreApbSRAM_O1i&COREApbSram_O1I;
when "1011" =>
CoreAPBSRam_l01(11 downto 8) <= CoREAPbSram_o1I&COreApbSrAM_O1I&COReApbSraM_O1I&CoreAPBSRam_o1i;
when "1100" =>
CoreApbSRAM_l01(12) <= CoreApBSRAM_o1i;
when "1101" =>
COreApbSRAM_L01(7 downto 4) <= CoreApbSRAM_o1i&CoreApbSrAM_O1i&CoreApbSrAM_O1i&COreApbSrAM_O1I;
when "1110" =>
COREApbSram_L01(7 downto 4) <= CoreAPBSRam_o1i&CoreApbSRAM_O1i&CoREAPBSram_o1I&CoreApbSRAM_O1i;
when "1111" =>
CorEAPBSram_l01(7 downto 4) <= COREApbSram_O1I&COREApbSraM_O1I&COreApbSrAM_O1i&COreApbSrAM_O1I;
when others =>
null
;
end case;
case (CoreAPBSRAm_li0(12 downto 9)) is
when "0000" =>
COREApbSram_L0 <= COReApbSrAM_LLI(1 downto 0)&COREApbSram_ILI(1 downto 0)&COReApbSraM_OII(1 downto 0)&COREAPbSram_LII(1 downto 0);
when "0001" =>
COREApbSram_L0 <= CoreApbSRAM_lli(1 downto 0)&CoreAPBSRam_ili(1 downto 0)&COreApbSrAM_OII(1 downto 0)&COreApbSrAM_LII(1 downto 0);
when "0010" =>
CoreAPBSRam_l0 <= CoREAPBSram_llI(1 downto 0)&CoreApBSRAM_ili(1 downto 0)&COREApbSram_OII(1 downto 0)&CoreApbSRAM_Lii(1 downto 0);
when "0011" =>
COReApbSraM_L0 <= CoREAPBSram_llI(1 downto 0)&COREApbSram_ILI(1 downto 0)&COREAPbSram_oII(1 downto 0)&CoreApbSRAM_Lii(1 downto 0);
when "0100" =>
CoreApbSraM_L0 <= CoreApBSRAm_ooll(1 downto 0)&CoreAPBSRAm_i1ol(1 downto 0)&CoreAPBSRAm_l1ol(1 downto 0)&COREApbSram_O1OL(1 downto 0);
when "0101" =>
CorEAPBSram_l0 <= CoreApbSRAM_ooll(1 downto 0)&CoreApbSRAM_I1ol(1 downto 0)&CoREAPBSram_l1OL(1 downto 0)&CoreAPBSRam_o1oL(1 downto 0);
when "0110" =>
COREAPBSram_l0 <= CorEAPBSram_oolL(1 downto 0)&CoreAPBSRam_i1oL(1 downto 0)&COREApbSram_L1OL(1 downto 0)&CoreApbSRAm_o1ol(1 downto 0);
when "0111" =>
CoREAPBSram_l0 <= COREApbSRAM_ooll(1 downto 0)&COReApbSraM_I1OL(1 downto 0)&COREAPbSram_l1OL(1 downto 0)&CoreAPBSRam_o1ol(1 downto 0);
when "1000" =>
COReApbSraM_L0 <= CoreApbSRAM_LLll(1 downto 0)&CoREAPBSram_olLL(1 downto 0)&CoreAPBSRam_iolL(1 downto 0)&COREAPbSram_LOLL(1 downto 0);
when "1001" =>
COREApbSram_L0 <= COREApbSram_LLLL(1 downto 0)&CoreApbSRAM_Olll(1 downto 0)&COReApbSraM_IOLL(1 downto 0)&COREAPbSram_lOLL(1 downto 0);
when "1010" =>
CoreApBSRAM_l0 <= CoreApbSRAM_LLLl(1 downto 0)&CoreAPBSRAM_Olll(1 downto 0)&COreApbSram_iOLL(1 downto 0)&CoreAPBSRAM_Loll(1 downto 0);
when "1011" =>
COREAPbSram_l0 <= CoreApbSRAM_LLLL(1 downto 0)&CoreAPBSRAM_Olll(1 downto 0)&CoreApbSraM_IOLL(1 downto 0)&COREAPbSram_loll(1 downto 0);
when "1100" =>
COREAPBSRam_l0 <= CoreApBSRAM_Illl;
when "1101" =>
CoreApbSram_L0 <= CorEAPBSRAM_ooll(1 downto 0)&COREAPBSRam_i1ol(1 downto 0)&CoreApbSraM_L1OL(1 downto 0)&CoreAPBSRAM_o1ol(1 downto 0);
when "1110" =>
COREAPBSram_l0 <= CoreApBSRAM_Ooll(1 downto 0)&COREAPbSram_i1OL(1 downto 0)&CoREAPBSram_l1OL(1 downto 0)&CoreApbSRAM_o1ol(1 downto 0);
when "1111" =>
CoreAPBSRAm_l0 <= COREApbSram_OOLL(1 downto 0)&CoREAPBSram_i1OL(1 downto 0)&COReApbSram_l1OL(1 downto 0)&CoreApbSram_O1OL(1 downto 0);
when others =>
null
;
end case;
when others =>
CoreApbSraM_II0 <= "00";
CoreApBSRAM_O00 <= "00";
COREAPBSram_l00 <= "00";
COReApbSram_i00 <= "00";
CoreApbSrAM_O10 <= "00";
COreApbSrAM_L10 <= "00";
CoreAPBSRAm_i10 <= "00";
CoreApbSRAM_Oo1 <= "00";
COREAPbSram_lO1 <= "01";
CorEAPBSram_io1 <= "01";
CoreApbSRAM_ol1 <= "01";
CoreApbSram_LL1 <= "01";
COReApbSram_il1 <= "11";
CoreApbSram_O0LL <= CoreApbSram_LI(11 downto 0);
CoreApbSrAM_L0LL <= CoreAPBSRAM_li(11 downto 0);
CoreApBSRAM_I0ll <= COReApbSram_li(11 downto 0);
CoreApbSram_O1LL <= CoreAPBSRAM_li(11 downto 0);
COreApbSram_L1LL <= CoreApBSRAM_Li(11 downto 0);
COreApbSrAM_I1Ll <= CoreAPBSRAM_li(11 downto 0);
CoreApBSRAM_Ooil <= COREAPBSRam_li(11 downto 0);
COREAPBSram_loil <= CoreApbSram_LI(11 downto 0);
CoreApbSram_IOIL <= '0'&CoreAPBSRAM_Li(10 downto 0);
COREApbSram_olIL <= '0'&CoreApbSram_LI(10 downto 0);
CoreAPBSRAM_Llil <= '0'&COREAPBSram_li(10 downto 0);
COREAPbSram_ilil <= '0'&CoreApbSraM_LI(10 downto 0);
COREAPBSram_oiil <= "000"&COREAPBSram_li(8 downto 0);
CoreApbSram_L0IL <= COREApbSram_ii(11 downto 0);
COREAPBSram_i0il <= COREAPBSram_ii(11 downto 0);
CoREAPBSRAm_o1il <= COREApbSram_ii(11 downto 0);
CoreApbSram_L1IL <= CorEAPBSRAM_ii(11 downto 0);
CoreApbSRAM_I1il <= CoreApbSram_II(11 downto 0);
CoreApbSRAM_OO0l <= CoreApbSRAM_II(11 downto 0);
COREAPBSram_lo0l <= COreApbSram_iI(11 downto 0);
CoreApbSrAM_IO0L <= CoreApBSRAM_Ii(11 downto 0);
CoreApbSram_OL0L <= '0'&COREApbSram_ii(10 downto 0);
COreApbSram_lL0L <= '0'&CoreApbSram_II(10 downto 0);
CoreAPBSRAM_il0l <= '0'&CoreApbSRAM_II(10 downto 0);
COREApbSram_oi0L <= '0'&COREAPbSram_ii(10 downto 0);
COREAPbSram_li0l <= "000"&CoreApbSram_II(8 downto 0);
CoreApbSrAM_I01(0) <= COREApbSram_o0(0);
CoreApbSrAM_O11(0) <= COreApbSram_o0(1);
COREAPBSram_l11(0) <= COREApbSram_o0(2);
CoreApbSrAM_I11(0) <= CoREAPBSRAm_o0(3);
CoreApbSram_OOOL(0) <= CoreApbSrAM_O0(4);
COREAPbSram_lool(0) <= CoreApbSram_O0(5);
CorEAPBSRAm_iool(0) <= CoreApbSram_O0(6);
COREApbSram_oloL(0) <= CoreApBSRAM_O0(7);
CoreApbSrAM_LLOL(1 downto 0) <= CoreApBSRAM_O0(1 downto 0);
CoreAPBSRAM_Ilol(1 downto 0) <= COReApbSram_o0(3 downto 2);
CoreAPBSRAM_Oiol(1 downto 0) <= COREAPBSRam_o0(5 downto 4);
CoreAPBSRAM_liol(1 downto 0) <= COREApbSram_o0(7 downto 6);
COREApbSram_iioL <= CoreApbSRAM_O0;
case (CoreApBSRAM_Li(12 downto 9)) is
when "0000" =>
COREApbSram_o01(7 downto 0) <= COREApbSram_i0i&COREAPBSram_i0i&CoreApbSraM_I0I&COREAPbSram_i0i&CoreAPBSRAM_I0i&COREApbSram_i0i&CoreApbSraM_I0I&CoreAPBSRAM_i0i;
when "0001" =>
COREAPBSram_o01(7 downto 0) <= COREApbSram_i0I&COREAPBSram_i0i&COReApbSram_i0I&CoREAPBSRAm_i0i&COREApbSram_i0I&CoREAPBSRAm_i0i&COREAPBSram_i0i&CoreApbSram_I0I;
when "0010" =>
CoreApBSRAM_O01(7 downto 0) <= CoreApbSraM_I0I&COReApbSram_i0I&CoreApbSrAM_I0I&COREAPBSram_i0i&COREApbSram_i0i&CorEAPBSRAm_i0i&COREApbSram_i0i&CoreApbSraM_I0I;
when "0011" =>
CoreAPBSRAM_o01(7 downto 0) <= CoreApbSRAM_i0i&COReApbSraM_I0I&COREApbSram_i0i&CoreApbSrAM_I0I&COREApbSram_i0i&CoreApbSrAM_I0I&COREAPBSram_i0i&COreApbSram_I0I;
when "0100" =>
CoreApbSram_O01(7 downto 0) <= COREAPbSram_i0i&COREAPbSram_i0i&CoreApbSram_I0I&COREAPbSram_i0i&CoreApbSram_I0I&CorEAPBSRAM_i0i&COreApbSram_I0I&COREAPBSRam_i0i;
when "0101" =>
COREApbSram_o01(7 downto 0) <= CoreApBSRAM_I0i&CoreApbSRAM_I0I&COREAPbSram_i0i&CoreAPBSRAM_I0i&COREApbSram_i0I&CoreApbSRAM_I0I&CorEAPBSRAM_i0i&CoreApbSram_I0I;
when "0110" =>
COREApbSram_o01(7 downto 0) <= COREAPBSram_i0i&COREAPBSram_i0i&COReApbSram_i0I&CorEAPBSRAM_i0i&COREApbSram_i0i&CoreApbSram_I0I&CorEAPBSRAm_i0i&CoreApbSRAM_I0I;
when "0111" =>
CoREAPBSRam_o01(7 downto 0) <= CoreApbSram_I0I&CoreApbSrAM_I0I&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApbSram_I0I&CoreAPBSRAM_i0i&COREAPbSram_i0i&CoreApbSram_I0I;
when "1000" =>
CoreApbSram_O01(11 downto 8) <= CoreApbSraM_I0I&CoreApbSraM_I0I&CoreApBSRAM_I0i&COreApbSram_i0I;
when "1001" =>
COReApbSram_o01(11 downto 8) <= CoreApbSram_I0I&COREApbSram_i0i&COReApbSram_i0I&COREApbSram_i0i;
when "1010" =>
CoreApbSraM_O01(11 downto 8) <= COREApbSram_i0i&COREAPBSram_i0i&COReApbSram_i0I&COREAPBSRam_i0i;
when "1011" =>
CoreApbSRAM_O01(11 downto 8) <= CorEAPBSRAm_i0i&CoreApBSRAM_I0i&COREAPBSram_i0i&CoreApbSraM_I0I;
when "1100" =>
CorEAPBSRAm_o01(12) <= COREApbSram_i0I;
when "1101" =>
CoreApbSraM_O01(7 downto 0) <= CoreApbSram_I0I&COreApbSram_i0I&CorEAPBSRAM_i0i&CoreApbSram_I0I&CorEAPBSRAM_i0i&CoreApbSram_I0I&CoreApBSRAM_I0i&COreApbSram_i0I;
when "1110" =>
COREAPbSram_o01(7 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CoreApbSRAM_I0I&COREAPBSram_i0i&CoreApbSrAM_I0I&COREAPBSram_i0i&CoreApbSRAM_I0I&CoreAPBSRAM_i0i;
when "1111" =>
CoREAPBSRAm_o01(7 downto 0) <= CoreApbSRAM_I0i&CoreApbSrAM_I0I&CorEAPBSRAM_i0i&COreApbSram_i0I&COreApbSram_i0I&CoreAPBSRAM_i0i&COREAPBSram_i0i&CoreApbSram_I0I;
when others =>
null
;
end case;
case (COREAPBSRam_ii(12 downto 9)) is
when "0000" =>
CoreApbSram_L01(7 downto 0) <= CoREAPBSRam_o1i&CoreAPBSRAM_o1i&COREAPbSram_o1i&CoreApbSraM_O1I&CorEAPBSRAM_o1i&CoreApbSram_O1I&CorEAPBSRAM_o1i&COREApbSram_o1i;
when "0001" =>
CoreApbSram_L01(7 downto 0) <= COREAPBSRam_o1i&CorEAPBSRAm_o1i&COReApbSram_o1I&CoreAPBSRAM_o1i&COREApbSram_o1i&CoreApbSraM_O1I&CorEAPBSRAM_o1i&COREAPbSram_o1i;
when "0010" =>
CorEAPBSRAm_l01(7 downto 0) <= CoreAPBSRAM_O1i&CoreApBSRAM_O1i&COREApbSram_o1i&CoreApbSram_O1I&COREAPBSram_o1i&CoreApbSRAM_O1I&COREAPBSRam_o1i&COReApbSram_o1I;
when "0011" =>
COREAPBSram_l01(7 downto 0) <= COREAPBSram_o1i&COREAPBSRam_o1i&COREApbSram_o1i&CoreApBSRAm_o1i&COREAPbSram_O1I&CorEAPBSram_o1I&COReApbSraM_O1I&CoreAPBSRAm_o1i;
when "0100" =>
CoreApbSRAM_L01(7 downto 0) <= CoreAPBSRam_o1i&CoreApbSRAM_o1i&CoreApBSRAM_o1i&CoreApbSRAM_o1i&COREApbSram_O1I&COreApbSrAM_O1i&CoreAPBSRAm_o1i&CoreAPBSRam_o1i;
when "0101" =>
COREApbSraM_L01(7 downto 0) <= CoreApbSRAM_o1i&CoreApBSRAM_o1i&COREApbSram_O1I&COREApbSraM_O1I&CoreAPBSRam_o1i&CoreApbSRAM_O1i&COREApbSram_O1I&CoREAPBSram_o1I;
when "0110" =>
CorEAPBSRam_l01(7 downto 0) <= CoreAPBSRAm_o1i&COREAPbSram_o1I&CoreAPBSRAm_o1i&COreApbSRAM_O1i&CoreApBSRAM_o1i&CoreApBSRAM_o1i&CoreApbSRAM_O1i&CoreApbSRAM_O1i;
when "0111" =>
COreApbSrAM_L01(7 downto 0) <= COREApbSram_O1I&COReApbSraM_O1I&COREApbSram_O1I&COreApbSrAM_O1i&COreApbSrAM_O1i&COReApbSraM_O1I&CoreAPBSRam_o1i&COREApbSraM_O1I;
when "1000" =>
CoreApbSRAM_L01(11 downto 8) <= CoreApbSRAM_O1i&COreApbSrAM_O1i&COreApbSRAM_O1i&COREApbSram_O1I;
when "1001" =>
CoreAPBSram_l01(11 downto 8) <= CoreApbSRAM_o1i&CoREAPBSram_o1I&CoreAPBSRam_o1i&CoreAPBSRAm_o1i;
when "1010" =>
CoreApbSRAM_l01(11 downto 8) <= COREApbSraM_O1I&CoreApbSRAM_o1i&CoreApbSRAM_O1i&COREApbSraM_O1I;
when "1011" =>
CoreAPBSRam_l01(11 downto 8) <= CoreApbSRAM_o1i&CoreApbSRAM_O1i&CoREAPBSram_o1I&CoreApbSRAM_o1i;
when "1100" =>
COREAPbSram_l01(12) <= CoreAPBSram_o1i;
when "1101" =>
COReApbSraM_L01(7 downto 0) <= COreApbSrAM_O1i&COreApbSrAM_O1i&CoreApBSRAM_o1i&CoreAPBSRam_o1i&COREApbSram_O1I&COReApbSrAM_O1I&CorEAPBSram_o1i&COREApbSram_O1I;
when "1110" =>
CorEAPBSram_l01(7 downto 0) <= CorEAPBSram_o1I&CoreApbSRAM_o1i&COreApbSrAM_O1I&CoreAPBSram_o1I&COreApbSrAM_O1i&COREApbSraM_O1I&COreApbSrAM_O1i&CoreApBSRAm_o1i;
when "1111" =>
CoreApBSRAM_l01(7 downto 0) <= CoreAPBSram_o1I&CoreApbSrAM_O1i&CoreAPBSRam_o1i&CoreApbSRAM_o1i&COReApbSraM_O1I&CoREAPbSram_o1I&CoreApbSRAM_o1i&COReApbSraM_O1I;
when others =>
null
;
end case;
case (COreApbSrAM_LI0(12 downto 9)) is
when "0000" =>
CoreApbSraM_L0 <= CoreApbSRAM_OOll(0)&CoreApbSRAM_I1Ol(0)&CoreApbSrAM_L1OL(0)&COReApbSram_o1OL(0)&CoREAPBSRAm_lli(0)&CoreApbSraM_ILI(0)&COREAPBSram_oii(0)&CoreApbSRAM_LIi(0);
when "0001" =>
CoreApbSraM_L0 <= CorEAPBSRAM_ooll(0)&COREApbSram_i1oL(0)&CoreApBSRAM_L1ol(0)&CoreApbSram_O1OL(0)&COReApbSram_llI(0)&CoreApbSram_ILI(0)&COreApbSram_oII(0)&CorEAPBSRAM_lii(0);
when "0010" =>
CoreApbSram_L0 <= COREApbSram_oolL(0)&COReApbSram_i1OL(0)&COREAPBSRam_l1ol(0)&COREApbSram_o1oL(0)&COREAPBSram_lli(0)&COREApbSram_ilI(0)&COReApbSram_OII(0)&COREApbSram_lii(0);
when "0011" =>
CoREAPBSRam_l0 <= COreApbSram_oOLL(0)&CoreApbSraM_I1OL(0)&COREApbSram_l1ol(0)&COreApbSram_O1OL(0)&CoreAPBSRAM_lli(0)&COREAPBSRam_ili(0)&CorEAPBSRAm_oii(0)&CoreAPBSRAM_lii(0);
when "0100" =>
CoreApbSrAM_L0 <= COREAPbSram_ooll(0)&COREAPBSRam_i1ol(0)&COREApbSram_l1ol(0)&COREApbSram_o1oL(0)&CoreApbSrAM_LLI(0)&CoreApbSraM_ILI(0)&COREAPBSRam_oii(0)&COREAPBSram_lii(0);
when "0101" =>
COreApbSram_l0 <= CoreAPBSRAM_ooll(0)&COREAPBSram_i1ol(0)&COREApbSram_l1oL(0)&COREApbSram_o1oL(0)&CoreApBSRAM_Lli(0)&COREApbSram_ili(0)&COREAPBSram_oii(0)&CoreApbSraM_LII(0);
when "0110" =>
CoreApbSraM_L0 <= CoreApBSRAM_Ooll(0)&CoreApbSram_I1OL(0)&CoREAPBSRAm_l1ol(0)&CoreApbSRAM_O1Ol(0)&CoreApbSrAM_LLI(0)&CoreApbSRAM_ILi(0)&CoreApbSram_OII(0)&COREAPBSram_lii(0);
when "0111" =>
CoreApbSRAM_L0 <= CoreApbSrAM_OOLL(0)&COReApbSram_i1OL(0)&CoreApbSraM_L1OL(0)&COreApbSram_o1OL(0)&COREAPBSram_lli(0)&COREAPBSram_ili(0)&CoREAPBSRAm_oii(0)&COREAPBSram_lii(0);
when "1000" =>
CoreApbSram_L0 <= CoreApbSram_LLLL(1 downto 0)&COREApbSram_olLL(1 downto 0)&CoreApbSram_IOLL(1 downto 0)&COREApbSram_lolL(1 downto 0);
when "1001" =>
COREAPbSram_l0 <= COREAPbSram_llll(1 downto 0)&CoreApbSrAM_OLLL(1 downto 0)&CoreApBSRAM_IOll(1 downto 0)&CoreApbSram_LOLL(1 downto 0);
when "1010" =>
CoreApbSRAM_L0 <= CoreApbSrAM_LLLL(1 downto 0)&CoreApBSRAM_Olll(1 downto 0)&COREApbSram_ioll(1 downto 0)&CoREAPBSRAm_loll(1 downto 0);
when "1011" =>
CoreApBSRAM_l0 <= COREAPbSram_lLLL(1 downto 0)&COreApbSraM_OLLL(1 downto 0)&COreApbSrAM_IOLl(1 downto 0)&COREApbSram_LOLL(1 downto 0);
when "1100" =>
COREApbSram_L0 <= CoreAPBSRAm_illl;
when "1101" =>
CoreApbSrAM_L0 <= CoreAPBSRAM_ooll(0)&CoreApbSram_I1OL(0)&COREAPBSram_l1ol(0)&CoreApbSRAM_O1OL(0)&CorEAPBSRAM_lli(0)&COREApbSram_ili(0)&COREApbSram_oiI(0)&CoreApbSRAM_LIi(0);
when "1110" =>
CoreApbSram_L0 <= CoREAPBSRAm_ooll(0)&CoreApBSRAM_I1ol(0)&CoreApbSRAM_L1Ol(0)&CoreApbSraM_O1OL(0)&CoreAPBSRAM_lli(0)&CoreApbSram_ILI(0)&COReApbSram_oiI(0)&COREApbSram_lii(0);
when "1111" =>
CoreApbSRAM_L0 <= CoreAPBSram_oOLL(0)&CoreAPBSram_i1oL(0)&CoreApbSrAM_L1OL(0)&CorEAPBSRAm_o1ol(0)&COREAPbSram_lli(0)&COREAPBSram_ili(0)&CoreApbSram_OII(0)&CoreApbSraM_LII(0);
when others =>
null
;
end case;
end case;
when 7168 =>
case (CoreApbSraM_OI0) is
when 8 =>
CoreAPBSRAM_ii0 <= "11";
CoreApbSram_O00 <= "11";
COREApbSram_l00 <= "11";
COREAPBSram_i00 <= "11";
CoreApbSraM_O10 <= "11";
COREApbSram_l10 <= "11";
CoreAPBSRAM_I10 <= "11";
CoreAPBSRAM_Oo1 <= "11";
COREApbSram_lo1 <= "11";
CoreApBSRAM_IO1 <= "11";
COREAPbSram_ol1 <= "11";
CoreApbSRAM_LL1 <= "11";
CoreApbSRAM_IL1 <= "11";
CoreApbSraM_OI1 <= "11";
CoreApbSRAM_O0LL <= "000"&COREApbSram_li(8 downto 0);
COREApbSram_l0lL <= "000"&CoreApbSrAM_LI(8 downto 0);
CoreApBSRAM_I0ll <= "000"&CoreApbSRAM_LI(8 downto 0);
COreApbSram_o1LL <= "000"&COREApbSram_li(8 downto 0);
COREAPBSram_l1ll <= "000"&COreApbSram_LI(8 downto 0);
COREAPBSram_i1ll <= "000"&COREAPBSRam_li(8 downto 0);
CoreApbSraM_OOIL <= "000"&COREAPBSram_li(8 downto 0);
CorEAPBSRAM_loil <= "000"&COREApbSram_li(8 downto 0);
COREAPbSram_ioil <= "000"&CoreAPBSRAM_li(8 downto 0);
COREAPBSram_olil <= "000"&CoreApbSram_LI(8 downto 0);
CoreApBSRAM_Llil <= "000"&COREApbSram_li(8 downto 0);
CoreApbSRAM_ILil <= "000"&COReApbSram_li(8 downto 0);
CoREAPBSRAm_oiil <= "000"&CorEAPBSRAM_li(8 downto 0);
CoreApbSram_LIIL <= "000"&CoreApbSram_LI(8 downto 0);
COreApbSram_l0IL <= "000"&COREAPbSram_ii(8 downto 0);
CoreApbSram_I0IL <= "000"&CoreAPBSRAM_Ii(8 downto 0);
CoreApbSraM_O1IL <= "000"&CoreApbSraM_II(8 downto 0);
COREAPBSram_l1il <= "000"&CoreApbSram_II(8 downto 0);
CoreApbSRAM_I1il <= "000"&COReApbSram_ii(8 downto 0);
CorEAPBSRAM_oo0l <= "000"&CoreApbSrAM_II(8 downto 0);
CoreAPBSRAM_lo0l <= "000"&CoreApbSram_II(8 downto 0);
CoreAPBSRAM_io0l <= "000"&COREAPbSram_ii(8 downto 0);
CoreAPBSRAM_ol0l <= "000"&COreApbSram_II(8 downto 0);
CoREAPBSRam_ll0l <= "000"&COREAPBSram_ii(8 downto 0);
CoreApbSraM_IL0L <= "000"&CoreAPBSRAM_ii(8 downto 0);
COREApbSram_oi0L <= "000"&CorEAPBSRAM_ii(8 downto 0);
CoreApbSraM_LI0L <= "000"&COReApbSram_iI(8 downto 0);
COREAPbSram_ii0l <= "000"&CoreApbSraM_II(8 downto 0);
COREAPBSram_i01 <= COREAPBSram_o0;
CoreApbSram_O11 <= COREAPBSram_o0;
CoreApbSram_L11 <= CoreApbSRAM_O0;
CoreApbSraM_I11 <= COReApbSram_o0;
COREAPBSram_oool <= CoreApbSram_O0;
COREAPBSRam_lool <= CoreApbSram_O0;
COREAPbSram_iool <= CoreApbSraM_O0;
COREApbSram_olOL <= CoreAPBSRAM_o0;
CoreApbSrAM_LLOL <= COREApbSram_o0;
CoreApbSRAM_ILOl <= CoreApbSram_O0;
COREApbSram_oioL <= COREAPBSRam_o0;
CoreApbSRAM_LIOl <= CoreApbSrAM_O0;
COREAPBSram_iiol <= CoreApbSrAM_O0;
CoREAPBSRam_o0ol <= CoreApbSram_O0;
case (CoreApbSram_LI(12 downto 9)) is
when "0000" =>
COREApbSram_o01(0) <= COREAPBSram_i0i;
when "0001" =>
CoreApbSraM_O01(1) <= CorEAPBSRAm_i0i;
when "0010" =>
CorEAPBSRAm_o01(2) <= CorEAPBSRAM_i0i;
when "0011" =>
CoreApbSram_O01(3) <= COREApbSram_i0i;
when "0100" =>
CoreApbSram_O01(4) <= CoreApbSrAM_I0I;
when "0101" =>
CoreApbSRAM_O01(5) <= CoreApbSraM_I0I;
when "0110" =>
COREAPBSRam_o01(6) <= CoreApBSRAM_I0i;
when "0111" =>
CoREAPBSRam_o01(7) <= COREApbSram_i0I;
when "1000" =>
COREAPBSRam_o01(8) <= COREApbSram_i0i;
when "1001" =>
CoreAPBSRAM_O01(9) <= COREAPBSram_i0i;
when "1010" =>
CoreApbSram_O01(10) <= CoreApbSRAM_I0I;
when "1011" =>
COreApbSram_O01(11) <= CoREAPBSRAm_i0i;
when "1100" =>
COREApbSram_o01(12) <= CoreApbSrAM_I0I;
when "1101" =>
COREAPBSram_o01(13) <= CoreApbSraM_I0I;
when "1110" =>
CorEAPBSRAm_o01(6) <= COREApbSram_i0i;
when "1111" =>
COREAPbSram_o01(7) <= CoreApbSram_I0I;
when others =>
null
;
end case;
case (COREApbSram_ii(12 downto 9)) is
when "0000" =>
CoREAPBSRAm_l01(0) <= CoreApbSraM_O1I;
when "0001" =>
CoreApbSraM_L01(1) <= CoreApBSRAM_O1i;
when "0010" =>
CoreApbSram_L01(2) <= CoreAPBSRAM_o1i;
when "0011" =>
COREApbSram_l01(3) <= COREApbSram_o1i;
when "0100" =>
COreApbSram_l01(4) <= CoreApbSram_O1I;
when "0101" =>
COReApbSram_l01(5) <= CoreApbSrAM_O1I;
when "0110" =>
CoREAPBSRam_l01(6) <= CoreApbSram_O1I;
when "0111" =>
COREApbSram_l01(7) <= CoreAPBSRAM_o1i;
when "1000" =>
COREAPBSRam_l01(8) <= COREAPBSram_o1i;
when "1001" =>
CoreApbSram_L01(9) <= CoreApbSraM_O1I;
when "1010" =>
COREAPBSram_l01(10) <= CoreApbSrAM_O1I;
when "1011" =>
CorEAPBSRAM_l01(11) <= CoreApbSram_O1I;
when "1100" =>
CoreApbSRAM_L01(12) <= CoreApbSram_O1I;
when "1101" =>
CoreApbSRAM_L01(13) <= CoreApbSraM_O1I;
when "1110" =>
COREAPBSram_l01(6) <= CorEAPBSRAm_o1i;
when "1111" =>
COREApbSram_l01(7) <= CoreApbSRAM_O1i;
when others =>
null
;
end case;
case (COREApbSram_li0(12 downto 9)) is
when "0000" =>
CoreApBSRAM_L0 <= CoreAPBSRAm_lii;
when "0001" =>
COREApbSRAM_L0 <= COREApbSram_OII;
when "0010" =>
CoreApbSRAM_l0 <= CoREAPBSram_ilI;
when "0011" =>
CoreApbSRAM_L0 <= COREAPBSram_lli;
when "0100" =>
CoreAPBSRAM_L0 <= CoREAPBSRAm_o1ol;
when "0101" =>
CoreApbSraM_L0 <= COREApbSram_l1oL;
when "0110" =>
CoreApbSram_L0 <= COREApbSram_i1oL;
when "0111" =>
CoreApbSram_L0 <= COREApbSram_ooLL;
when "1000" =>
COREApbSram_l0 <= CoreApbSraM_LOLL;
when "1001" =>
CoreApbSram_L0 <= CoreApBSRAM_Ioll;
when "1010" =>
COREApbSram_l0 <= CoreApbSrAM_OLLL;
when "1011" =>
COREApbSram_l0 <= CorEAPBSRAm_llll;
when "1100" =>
COREApbSram_l0 <= CoreApbSraM_ILLL;
when "1101" =>
COREAPBSRam_l0 <= COREAPBSRam_oill;
when "1110" =>
CoreAPBSRAM_l0 <= COREApbSram_i1oL;
when "1111" =>
CoreApbSram_L0 <= CoreApbSram_OOLL;
when others =>
null
;
end case;
when 4 =>
COReApbSram_ii0 <= "10";
CoreApbSrAM_O00 <= "10";
CorEAPBSRam_l00 <= "10";
COREApbSram_I00 <= "10";
CorEAPBSram_o10 <= "10";
COreApbSrAM_L10 <= "10";
CoreApbSRAM_i10 <= "10";
COREApbSram_OO1 <= "10";
COREAPBSram_lo1 <= "10";
COREApbSram_io1 <= "10";
CoreApbSrAM_OL1 <= "10";
CorEAPBSRAm_ll1 <= "10";
CoreApbSram_IL1 <= "10";
CoreApbSrAM_OI1 <= "10";
CoreApbSRAM_O0Ll <= "00"&CoreApbSraM_LI(9 downto 0);
CoreApbSRAM_L0ll <= "00"&CoreApbSrAM_LI(9 downto 0);
CoreApbSram_I0LL <= "00"&CoreApbSRAM_LI(9 downto 0);
CoreApbSraM_O1LL <= "00"&CoreApbSram_LI(9 downto 0);
CoreAPBSRAM_L1ll <= "00"&CoreApbSrAM_LI(9 downto 0);
CoreApbSrAM_I1LL <= "00"&CoreApbSrAM_LI(9 downto 0);
COreApbSram_oOIL <= "00"&COREApbSram_li(9 downto 0);
COREApbSram_loIL <= "00"&CoreApBSRAM_LI(9 downto 0);
COREAPBSRam_ioil <= "00"&CoreApbSraM_LI(9 downto 0);
CoreApBSRAM_Olil <= "00"&COREApbSram_li(9 downto 0);
CoreAPBSRAM_llil <= "00"&CorEAPBSRAM_li(9 downto 0);
CoREAPBSRam_ilil <= "00"&CoreApbSRAM_LI(9 downto 0);
CoreApbSraM_OIIL <= "00"&COREAPBSram_li(9 downto 0);
CoreApbSRAM_LIIl <= "00"&COreApbSram_lI(9 downto 0);
CoreApbSraM_L0IL <= "00"&COREAPBSram_ii(9 downto 0);
CoreApBSRAM_I0il <= "00"&CoreApBSRAM_ii(9 downto 0);
CoreApbSraM_O1IL <= "00"&CoreApbSRAM_II(9 downto 0);
CoreApbSram_L1IL <= "00"&COREApbSram_ii(9 downto 0);
COREApbSram_i1iL <= "00"&CoreApbSraM_II(9 downto 0);
CoreApbSraM_OO0L <= "00"&COReApbSram_ii(9 downto 0);
COReApbSram_lO0L <= "00"&COREAPBSram_ii(9 downto 0);
COREAPbSram_io0l <= "00"&CoreApbSram_II(9 downto 0);
COREAPBSram_ol0l <= "00"&CoreApbSram_II(9 downto 0);
COReApbSram_lL0L <= "00"&CoreApbSRAM_II(9 downto 0);
CoreApbSram_IL0L <= "00"&CoreApBSRAM_Ii(9 downto 0);
COREApbSram_oi0l <= "00"&COREApbSram_ii(9 downto 0);
CoreAPBSRAM_li0l <= "00"&CorEAPBSRAM_ii(9 downto 0);
CoreApbSram_II0L <= "00"&CoreApbSram_II(9 downto 0);
COREApbSram_i01(3 downto 0) <= CoreApbSRAM_O0(3 downto 0);
CoreApbSram_O11(3 downto 0) <= COREAPbSram_o0(7 downto 4);
COreApbSram_l11(3 downto 0) <= CoreApbSram_O0(3 downto 0);
COreApbSram_i11(3 downto 0) <= CoreApBSRAM_O0(7 downto 4);
CoreApbSrAM_OOOL(3 downto 0) <= CoreAPBSRAM_o0(3 downto 0);
CorEAPBSRAM_lool(3 downto 0) <= CoreApbSraM_O0(7 downto 4);
CoreApbSrAM_IOOL(3 downto 0) <= COREApbSram_o0(3 downto 0);
CoreApbSram_OLOL(3 downto 0) <= COREAPBSram_o0(7 downto 4);
CoreApbSram_LLOL(3 downto 0) <= COREAPBSram_o0(3 downto 0);
CoreAPBSRAM_Ilol(3 downto 0) <= COREApbSram_o0(7 downto 4);
CoreAPBSRAM_Oiol(3 downto 0) <= CoreApBSRAM_O0(3 downto 0);
CoreApbSRAM_LIOL(3 downto 0) <= COREApbSram_o0(7 downto 4);
CoreApbSraM_IIOL(3 downto 0) <= COREApbSram_o0(3 downto 0);
CoreApbSram_O0OL(3 downto 0) <= COREAPbSram_o0(7 downto 4);
case (CoreApbSRAM_LI(12 downto 9)) is
when "0000" =>
CoreApbSraM_O01(1 downto 0) <= COreApbSram_i0I&COREApbSram_i0I;
when "0001" =>
COREAPBSRam_o01(1 downto 0) <= COReApbSram_i0I&CoREAPBSRAm_i0i;
when "0010" =>
COREAPbSram_o01(3 downto 2) <= CoreApbSram_I0I&COREAPBSram_i0i;
when "0011" =>
COREAPBSram_o01(3 downto 2) <= CoreAPBSRAM_I0i&CorEAPBSRAM_i0i;
when "0100" =>
CoreAPBSRAM_o01(5 downto 4) <= CoreApbSRAM_I0I&CoreApbSraM_I0I;
when "0101" =>
CoREAPBSRAm_o01(5 downto 4) <= CoreApbSrAM_I0I&CoreApbSram_I0I;
when "0110" =>
COREApbSram_o01(7 downto 6) <= CoREAPBSRAm_i0i&CoreApbSRAM_I0i;
when "0111" =>
COREApbSram_o01(7 downto 6) <= CoreApBSRAM_I0i&CoreApbSrAM_I0I;
when "1000" =>
CoreApbSRAM_O01(9 downto 8) <= COREApbSram_i0i&CoreAPBSRAM_i0i;
when "1001" =>
COREAPBSRam_o01(9 downto 8) <= CoreAPBSRAM_I0i&CoreApbSrAM_I0I;
when "1010" =>
CoreApbSram_O01(11 downto 10) <= CoreApbSraM_I0I&COREApbSram_i0i;
when "1011" =>
CoREAPBSRAm_o01(11 downto 10) <= COREApbSram_i0i&COREAPBSram_i0i;
when "1100" =>
CoreApbSrAM_O01(13 downto 12) <= CoreApbSram_I0I&COREApbSram_i0I;
when "1101" =>
COREApbSram_o01(13 downto 12) <= COREApbSram_i0i&CorEAPBSRAm_i0i;
when "1110" =>
CoreApbSRAM_O01(7 downto 6) <= CoreAPBSRAM_i0i&CoreApbSraM_I0I;
when "1111" =>
COREApbSram_o01(7 downto 6) <= COREApbSram_i0i&COREAPBSram_i0i;
when others =>
null
;
end case;
case (CoreApbSrAM_II(12 downto 9)) is
when "0000" =>
COREAPbSram_l01(1 downto 0) <= COREApbSram_o1I&COREAPBSram_o1i;
when "0001" =>
COReApbSram_l01(1 downto 0) <= COREAPBSram_o1i&COREAPBSram_o1i;
when "0010" =>
COREAPbSram_l01(3 downto 2) <= CoREAPBSRAm_o1i&CoreApBSRAM_O1i;
when "0011" =>
CoREAPBSRAm_l01(3 downto 2) <= COREAPBSram_o1i&COREAPBSram_o1i;
when "0100" =>
COReApbSram_l01(5 downto 4) <= COreApbSram_o1I&COREAPBSram_o1i;
when "0101" =>
CoREAPBSRAm_l01(5 downto 4) <= CoreAPBSRAM_O1i&CoreApBSRAM_O1i;
when "0110" =>
CoREApbSram_L01(7 downto 6) <= CoreApbSRAM_O1i&COREApbSraM_O1I;
when "0111" =>
COReApbSraM_L01(7 downto 6) <= COreApbSrAM_O1I&CorEAPBSram_o1i;
when "1000" =>
COreApbSraM_L01(9 downto 8) <= CoREAPbSram_o1I&CoREAPBSRAm_o1i;
when "1001" =>
CoreApBSRAM_L01(9 downto 8) <= COReApbSram_o1I&COreApbSram_O1I;
when "1010" =>
COREAPBSram_l01(11 downto 10) <= COREAPbSram_o1i&CorEAPBSRAM_o1i;
when "1011" =>
COREApbSram_l01(11 downto 10) <= CoreApbSram_O1I&CorEAPBSram_o1I;
when "1100" =>
CoreApbSrAM_L01(13 downto 12) <= CoreApbSRAM_O1i&CoreApbSRAM_O1I;
when "1101" =>
COREApbSram_l01(13 downto 12) <= COREApbSram_o1i&COREAPBSram_o1i;
when "1110" =>
COREAPBSram_l01(7 downto 6) <= CoreApbSraM_O1I&CoreApbSram_O1I;
when "1111" =>
CoreAPBSRAM_l01(7 downto 6) <= CoreAPBSRAM_o1i&CoREAPBSRAm_o1i;
when others =>
null
;
end case;
case (COREAPBSRam_li0(12 downto 9)) is
when "0000" =>
CoreApbSrAM_L0 <= COREApbSram_oii(3 downto 0)&COREApbSram_lii(3 downto 0);
when "0001" =>
CoreApbSRAM_L0 <= CoreApbSRAM_Oii(3 downto 0)&COreApbSrAM_LII(3 downto 0);
when "0010" =>
CoreApbSRAM_l0 <= CoreApbSraM_LLI(3 downto 0)&COREAPbSram_ili(3 downto 0);
when "0011" =>
COREAPBSRam_l0 <= CorEAPBSRAm_lli(3 downto 0)&CoreApbSraM_ILI(3 downto 0);
when "0100" =>
CorEAPBSRAM_l0 <= CoreApbSram_L1OL(3 downto 0)&COREAPbSram_o1ol(3 downto 0);
when "0101" =>
CorEAPBSRAm_l0 <= COREAPBSram_l1ol(3 downto 0)&COREAPBSram_o1ol(3 downto 0);
when "0110" =>
CoreAPBSRAM_L0 <= COREApbSram_ooLL(3 downto 0)&COREApbSram_i1oL(3 downto 0);
when "0111" =>
CoreApbSraM_L0 <= COREApbSram_oolL(3 downto 0)&CoreApbSraM_I1OL(3 downto 0);
when "1000" =>
COReApbSram_l0 <= COReApbSram_iOLL(3 downto 0)&COreApbSram_lOLL(3 downto 0);
when "1001" =>
CoreAPBSRAM_l0 <= CoreApbSRAM_IOLl(3 downto 0)&COREAPbSram_loll(3 downto 0);
when "1010" =>
CoreApbSrAM_L0 <= CoreApbSrAM_LLLL(3 downto 0)&COREAPBSram_olll(3 downto 0);
when "1011" =>
CorEAPBSRAm_l0 <= CoreApbSram_LLLL(3 downto 0)&CoreAPBSRAM_Olll(3 downto 0);
when "1100" =>
COREApbSram_l0 <= CorEAPBSRAM_oill(3 downto 0)&CoreApbSram_ILLL(3 downto 0);
when "1101" =>
CoreApbSRAM_L0 <= COReApbSram_oiLL(3 downto 0)&COReApbSram_iLLL(3 downto 0);
when "1110" =>
COREAPbSram_l0 <= CoreApbSraM_OOLL(3 downto 0)&CoreAPBSRAM_i1ol(3 downto 0);
when "1111" =>
CoreApBSRAM_L0 <= CoreApbSRAM_Ooll(3 downto 0)&COREAPbSram_i1ol(3 downto 0);
when others =>
null
;
end case;
when 2 =>
CoreApbSRAM_II0 <= "01";
COReApbSram_o00 <= "01";
CoreApbSraM_L00 <= "01";
COREAPBSram_i00 <= "01";
CoreApbSraM_O10 <= "01";
CoreApbSraM_L10 <= "01";
CoreApbSraM_I10 <= "01";
COREApbSram_oo1 <= "01";
COREAPbSram_lo1 <= "01";
CoreApbSram_IO1 <= "01";
CoreAPBSRAM_ol1 <= "01";
COreApbSram_lL1 <= "01";
CoreApBSRAM_Il1 <= "10";
COREApbSram_oi1 <= "10";
CoreApbSraM_O0LL <= '0'&COREApbSram_li(10 downto 0);
COreApbSram_L0LL <= '0'&CoreApbSRAM_LI(10 downto 0);
COReApbSram_i0LL <= '0'&COREApbSram_li(10 downto 0);
CoreApbSram_O1LL <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreAPBSRAM_l1ll <= '0'&COReApbSram_lI(10 downto 0);
COreApbSram_i1LL <= '0'&CoreApbSrAM_LI(10 downto 0);
CoREAPBSRAm_ooil <= '0'&COreApbSram_lI(10 downto 0);
COREAPBSram_loil <= '0'&COREAPBSram_li(10 downto 0);
COREApbSram_ioil <= '0'&CoreApbSram_LI(10 downto 0);
COreApbSram_oLIL <= '0'&COREApbSram_li(10 downto 0);
COreApbSram_lLIL <= '0'&CoreAPBSRAM_li(10 downto 0);
COreApbSram_iLIL <= '0'&CoreApbSRAM_LI(10 downto 0);
CoREAPBSRAm_oiil <= "00"&COREAPbSram_li(9 downto 0);
CoREAPBSRAm_liil <= "00"&COReApbSram_li(9 downto 0);
CorEAPBSRAm_l0il <= '0'&COREApbSram_ii(10 downto 0);
COREAPBSRam_i0il <= '0'&COREApbSram_ii(10 downto 0);
COreApbSram_O1IL <= '0'&CoreApbSram_II(10 downto 0);
CoreApBSRAM_L1il <= '0'&CoreApbSraM_II(10 downto 0);
COreApbSrAM_I1Il <= '0'&CoreAPBSRAM_ii(10 downto 0);
COReApbSram_oO0L <= '0'&CoREAPBSRAm_ii(10 downto 0);
COREAPbSram_lo0l <= '0'&COREApbSram_ii(10 downto 0);
COREAPBSram_io0l <= '0'&COREAPBSRam_ii(10 downto 0);
COREAPbSram_ol0l <= '0'&COREAPbSram_ii(10 downto 0);
CoreApbSram_LL0L <= '0'&CoREAPBSRAm_ii(10 downto 0);
COREAPBSram_il0l <= '0'&COREApbSram_ii(10 downto 0);
COREApbSram_oi0L <= '0'&CoreApbSram_II(10 downto 0);
COREApbSram_li0L <= "00"&COREAPBSram_ii(9 downto 0);
CorEAPBSRAm_ii0l <= "00"&CoreApbSRAM_II(9 downto 0);
CorEAPBSRAM_i01(1 downto 0) <= CoreApbSram_O0(1 downto 0);
CoreApbSrAM_O11(1 downto 0) <= COReApbSram_o0(3 downto 2);
CoreApBSRAM_L11(1 downto 0) <= COREAPBSram_o0(5 downto 4);
CoreApbSram_I11(1 downto 0) <= CoREAPBSRAm_o0(7 downto 6);
COREAPbSram_oool(1 downto 0) <= CoreApBSRAM_O0(1 downto 0);
COREApbSram_looL(1 downto 0) <= COREAPBSram_o0(3 downto 2);
CoreApbSram_IOOL(1 downto 0) <= CoreApbSRAM_O0(5 downto 4);
COREAPBSram_olol(1 downto 0) <= CoreApbSRAM_O0(7 downto 6);
COReApbSram_lLOL(1 downto 0) <= CoreAPBSRAM_o0(1 downto 0);
CoreApbSraM_ILOL(1 downto 0) <= CoreApbSraM_O0(3 downto 2);
COREApbSram_oioL(1 downto 0) <= CoreApbSRAM_O0(5 downto 4);
COREAPBSram_liol(1 downto 0) <= COREAPbSram_o0(7 downto 6);
CoreApbSRAM_IIOL(3 downto 0) <= COReApbSram_o0(3 downto 0);
CoREAPBSRAm_o0ol(3 downto 0) <= CoreApbSram_O0(7 downto 4);
case (CoreApbSrAM_LI(12 downto 9)) is
when "0000" =>
CoreApBSRAM_o01(3 downto 0) <= CoreAPBSRAm_i0i&CoREAPBSram_i0I&COREAPBSram_i0i&CoreApbSram_I0I;
when "0001" =>
CoreApbSRAM_O01(3 downto 0) <= COReApbSram_i0I&COREApbSram_i0i&COREApbSram_i0i&CoREAPBSRAm_i0i;
when "0010" =>
COREApbSram_o01(3 downto 0) <= CoreApbSRAM_I0I&COREAPBSram_i0i&CoreApbSram_I0I&CoreApbSram_I0I;
when "0011" =>
COREApbSram_o01(3 downto 0) <= CoreApbSRAM_I0i&CoreApbSrAM_I0I&COReApbSram_i0I&CoreApbSRAM_I0i;
when "0100" =>
COreApbSram_O01(7 downto 4) <= COreApbSram_i0I&COReApbSram_i0I&CoREAPBSRAm_i0i&CoreApbSRAM_I0I;
when "0101" =>
COReApbSram_o01(7 downto 4) <= COREApbSram_i0i&CoREAPBSRAm_i0i&COREApbSram_i0i&CoreAPBSRAM_i0i;
when "0110" =>
CoreApbSraM_O01(7 downto 4) <= CoreApbSram_I0I&CoreApbSraM_I0I&COREAPBSram_i0i&CoreApbSram_I0I;
when "0111" =>
COREAPbSram_o01(7 downto 4) <= COREApbSram_i0I&COREAPBSram_i0i&COREApbSram_i0i&CoreApbSRAM_I0I;
when "1000" =>
COREApbSram_o01(11 downto 8) <= COREApbSram_i0i&CoREAPBSRAm_i0i&COREAPbSram_i0i&CoreApbSrAM_I0I;
when "1001" =>
CoreApbSRAM_O01(11 downto 8) <= CoREAPBSram_i0I&CoreApbSRAM_I0i&COreApbSraM_I0I&COReApbSraM_I0I;
when "1010" =>
COREApbSram_O01(11 downto 8) <= CoreAPBSRAM_i0i&CoreAPBSRAM_i0i&CoreApbSRAM_I0I&CoreApbSRAM_I0I;
when "1011" =>
COREApbSram_o01(11 downto 8) <= CoreApbSRAM_I0i&CoreAPBSRAM_i0i&CoreApbSram_I0I&COREApbSram_i0i;
when "1100" =>
COREApbSram_o01(13 downto 12) <= CorEAPBSRAM_i0i&CoreApBSRAM_I0i;
when "1101" =>
COREAPbSram_o01(13 downto 12) <= CoREAPBSRAm_i0i&CoreAPBSRAM_i0i;
when "1110" =>
CoreApbSraM_O01(7 downto 4) <= CoreApbSraM_I0I&CoreApbSraM_I0I&COREAPBSRam_i0i&CoreApbSram_I0I;
when "1111" =>
CoreApbSram_O01(7 downto 4) <= CorEAPBSRAM_i0i&COREApbSram_i0i&CoreApbSrAM_I0I&COreApbSram_I0I;
when others =>
null
;
end case;
case (CorEAPBSRAM_ii(12 downto 9)) is
when "0000" =>
COREAPBSram_l01(3 downto 0) <= CoreApBSRAM_O1i&CoreApbSRAM_O1I&COREApbSram_o1i&CoreApBSRAM_O1i;
when "0001" =>
CorEAPBSRAm_l01(3 downto 0) <= COreApbSram_o1I&COREApbSram_o1i&CoreApbSrAM_O1I&COREAPbSram_o1i;
when "0010" =>
COREApbSram_l01(3 downto 0) <= COREApbSram_o1i&COREAPBSram_o1i&CoreApbSraM_O1I&CoreAPBSRAM_o1i;
when "0011" =>
COREAPbSram_l01(3 downto 0) <= COREApbSram_o1i&COREAPbSram_o1i&CoreApbSrAM_O1I&CorEAPBSRAM_o1i;
when "0100" =>
CoreApbSram_L01(7 downto 4) <= CorEAPBSRAm_o1i&CorEAPBSRAm_o1i&COREApbSram_o1I&CoreApbSRAM_O1I;
when "0101" =>
COReApbSram_l01(7 downto 4) <= CoreApbSraM_O1I&CoreApbSram_O1I&CoreApbSrAM_O1I&COREAPBSRam_o1i;
when "0110" =>
COREAPBSRam_l01(7 downto 4) <= COREAPbSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&CorEAPBSRAM_o1i;
when "0111" =>
CorEAPBSRAM_l01(7 downto 4) <= COREAPbSram_o1i&COREAPBSram_o1i&COREApbSram_o1I&CoreApbSRAM_O1I;
when "1000" =>
CoreAPBSRAM_l01(11 downto 8) <= COREAPBSram_o1i&CorEAPBSRAM_o1i&COREAPBSram_o1i&COREApbSram_o1i;
when "1001" =>
COreApbSram_l01(11 downto 8) <= COreApbSram_o1I&COREAPBSram_o1i&CoreApbSram_O1I&COREAPBSRam_o1i;
when "1010" =>
CoreApbSraM_L01(11 downto 8) <= CorEAPBSRAm_o1i&CoreApbSRAM_O1I&CoreAPBSRAM_O1i&COReApbSram_o1I;
when "1011" =>
COREApbSram_l01(11 downto 8) <= COREAPbSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&CoreAPBSRAM_O1i;
when "1100" =>
CoreApbSraM_L01(13 downto 12) <= CoreAPBSRAM_o1i&CoreAPBSRAM_O1i;
when "1101" =>
COREAPBSRam_l01(13 downto 12) <= CoreApbSram_O1I&COREApbSram_o1I;
when "1110" =>
COReApbSram_l01(7 downto 4) <= COREAPBSRam_o1i&CorEAPBSRAM_o1i&COREApbSram_o1i&CoreApbSrAM_O1I;
when "1111" =>
CoreApbSRAM_L01(7 downto 4) <= COREApbSram_o1i&COREApbSram_o1i&CoreApbSraM_O1I&COREAPBSram_o1i;
when others =>
null
;
end case;
case (COreApbSram_lI0(12 downto 9)) is
when "0000" =>
CoreApbSram_L0 <= COREAPBSram_lli(1 downto 0)&CoreApbSraM_ILI(1 downto 0)&CoreApbSrAM_OII(1 downto 0)&COREAPBSRam_lii(1 downto 0);
when "0001" =>
COReApbSram_l0 <= COREAPBSram_lli(1 downto 0)&CoreApbSrAM_ILI(1 downto 0)&COReApbSram_oiI(1 downto 0)&COREApbSram_lii(1 downto 0);
when "0010" =>
COREApbSram_l0 <= COREAPBSRam_lli(1 downto 0)&COREAPbSram_ili(1 downto 0)&CoreApBSRAM_Oii(1 downto 0)&COreApbSram_lII(1 downto 0);
when "0011" =>
COREAPBSram_l0 <= CoreApBSRAM_lli(1 downto 0)&COREAPBSram_ili(1 downto 0)&CoREAPBSRAm_oii(1 downto 0)&CoreApbSrAM_LII(1 downto 0);
when "0100" =>
COREApbSram_l0 <= COREAPbSram_ooll(1 downto 0)&CoreApbSrAM_I1OL(1 downto 0)&COREApbSram_l1ol(1 downto 0)&COreApbSram_o1OL(1 downto 0);
when "0101" =>
CoreAPBSRAM_l0 <= CoreApBSRAM_Ooll(1 downto 0)&COREAPbSram_i1ol(1 downto 0)&CoreApbSram_L1OL(1 downto 0)&CoreApbSRAM_O1Ol(1 downto 0);
when "0110" =>
COreApbSram_L0 <= CoreApbSram_OOLL(1 downto 0)&CoreApbSrAM_I1OL(1 downto 0)&CoreApbSrAM_L1OL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when "0111" =>
CoreApbSram_L0 <= CoreApbSram_OOLL(1 downto 0)&CoreApbSRAM_I1OL(1 downto 0)&COREApbSram_l1oL(1 downto 0)&COREAPBSram_o1ol(1 downto 0);
when "1000" =>
CoreApbSram_L0 <= CoreApbSRAM_LLLl(1 downto 0)&COREApbSram_ollL(1 downto 0)&COREAPbSram_ioll(1 downto 0)&CoreApBSRAM_Loll(1 downto 0);
when "1001" =>
CorEAPBSRAM_l0 <= CoreAPBSRAM_llll(1 downto 0)&COreApbSram_OLLL(1 downto 0)&COREAPbSram_ioll(1 downto 0)&CoreApbSRAM_LOll(1 downto 0);
when "1010" =>
COreApbSram_l0 <= COreApbSram_LLLL(1 downto 0)&CoREAPBSRAm_olll(1 downto 0)&COREAPbSram_ioll(1 downto 0)&CoreApbSrAM_LOLL(1 downto 0);
when "1011" =>
CoreApbSram_L0 <= CoreApbSram_LLLL(1 downto 0)&COREAPBSram_olll(1 downto 0)&CoreApbSraM_IOLL(1 downto 0)&COREApbSram_loll(1 downto 0);
when "1100" =>
CoreApbSRAM_l0 <= CoreApbSRAM_Oill(3 downto 0)&CoreApbSRAM_ILll(3 downto 0);
when "1101" =>
COREAPbSram_L0 <= CoreApbSRAM_OIll(3 downto 0)&CoreApBSrAM_ILLl(3 downto 0);
when "1110" =>
CorEAPBSram_l0 <= CoreApbSRAM_Ooll(1 downto 0)&CoreApbSrAM_I1ol(1 downto 0)&COREAPbSram_l1OL(1 downto 0)&CoreApBSRAM_o1ol(1 downto 0);
when "1111" =>
COREApbSram_L0 <= CorEAPBSram_ooLL(1 downto 0)&CoreApbSRAM_I1ol(1 downto 0)&CoreApBSRAM_l1ol(1 downto 0)&COREApbSram_O1OL(1 downto 0);
when others =>
null
;
end case;
when others =>
CoreAPBSram_ii0 <= "00";
CoreApbSRAM_O00 <= "00";
CoreApbSRAM_l00 <= "00";
COREAPBSram_i00 <= "00";
COREAPbSram_o10 <= "00";
CoreApbSRAM_l10 <= "00";
COReApbSram_I10 <= "00";
CoreApbSRAM_OO1 <= "00";
CoreApbSram_lo1 <= "01";
COReApbSraM_IO1 <= "01";
CoreApbSRAM_Ol1 <= "01";
COREAPBSram_ll1 <= "01";
COREApbSram_IL1 <= "10";
COreApbSRAM_oi1 <= "10";
COReApbSraM_O0LL <= COReApbSraM_LI(11 downto 0);
CorEAPBSRam_l0ll <= CoreAPBSRAM_li(11 downto 0);
COREApbSram_I0LL <= COreApbSrAM_LI(11 downto 0);
CoreAPBSRAM_o1ll <= CoreApbSRAM_LI(11 downto 0);
CoREAPBSram_l1LL <= COReApbSraM_LI(11 downto 0);
CoreApbSRAM_i1ll <= COREApbSram_LI(11 downto 0);
COREApbSram_OOIL <= COReApbSraM_LI(11 downto 0);
CoreApbSRAM_loil <= COREApbSram_LI(11 downto 0);
COReApbSraM_IOIl <= '0'&COREApbSram_LI(10 downto 0);
CoREAPBSram_olIL <= '0'&COREApbSram_LI(10 downto 0);
CoreAPBSRAM_llil <= '0'&CoreApBSRAM_li(10 downto 0);
CoreApbSRAM_Ilil <= '0'&CoreAPBSram_lI(10 downto 0);
CoreApBSRAM_oiil <= "00"&CorEAPBSram_li(9 downto 0);
COREApbSram_LIIL <= "00"&COREAPbSram_LI(9 downto 0);
CoreApbSRAM_L0Il <= COREAPbSram_ii(11 downto 0);
COReApbSram_i0IL <= COreApbSram_iI(11 downto 0);
COREApbSram_o1il <= CoREAPBSRAm_ii(11 downto 0);
CoreApbSrAM_L1IL <= CoreApbSram_II(11 downto 0);
COReApbSram_i1IL <= COREAPBSRam_ii(11 downto 0);
COREApbSram_oo0L <= CoreApbSram_II(11 downto 0);
CoreAPBSRAM_lo0l <= COREAPbSram_ii(11 downto 0);
CoreApbSram_IO0L <= CoreAPBSRAM_Ii(11 downto 0);
CoreApbSrAM_OL0L <= '0'&COReApbSram_ii(10 downto 0);
CoreApBSRAM_Ll0l <= '0'&CoreApbSraM_II(10 downto 0);
COreApbSram_iL0L <= '0'&CoreApbSrAM_II(10 downto 0);
CoreApbSraM_OI0L <= '0'&CoreApbSram_II(10 downto 0);
CoreApbSram_LI0L <= "00"&CoREAPBSRAm_ii(9 downto 0);
CoreApbSram_II0L <= "00"&CoreAPBSRAM_ii(9 downto 0);
CorEAPBSRAm_i01(0) <= CoreApbSram_O0(0);
CoREAPBSRam_o11(0) <= COREAPBSram_o0(1);
COREAPbSram_l11(0) <= CoreApBSRAM_O0(2);
CoreApbSraM_I11(0) <= CoreApbSraM_O0(3);
COreApbSram_oOOL(0) <= COREApbSram_o0(4);
CoreApbSrAM_LOOL(0) <= CoREAPBSRAm_o0(5);
COREApbSram_iooL(0) <= CoreAPBSRAM_O0(6);
CoreAPBSRAM_olol(0) <= CoreAPBSRAM_o0(7);
CoreApbSraM_LLOL(1 downto 0) <= CorEAPBSRAM_o0(1 downto 0);
CoREAPBSRAm_ilol(1 downto 0) <= COReApbSram_o0(3 downto 2);
COreApbSram_oIOL(1 downto 0) <= COREApbSram_o0(5 downto 4);
COREApbSram_lioL(1 downto 0) <= COREApbSram_o0(7 downto 6);
COREAPBSRam_iiol(3 downto 0) <= CoreApbSram_O0(3 downto 0);
COREAPBSram_o0ol(3 downto 0) <= CoreApbSram_O0(7 downto 4);
case (CoreApbSram_LI(12 downto 9)) is
when "0000" =>
CoreApbSRAM_O01(7 downto 0) <= COREAPbSram_i0i&COREAPbSram_i0i&CoreApbSrAM_I0I&COREAPbSram_i0i&CoreApbSraM_I0I&CoreAPBSRAM_i0i&COReApbSram_i0I&CoreApbSram_I0I;
when "0001" =>
CoreAPBSRam_o01(7 downto 0) <= CorEAPBSRAM_i0i&CorEAPBSRAm_i0i&COREApbSram_i0i&CoREAPBSRAm_i0i&COreApbSram_i0I&CorEAPBSRAM_i0i&COreApbSram_i0I&COREAPBSram_i0i;
when "0010" =>
CoreApbSram_O01(7 downto 0) <= COREApbSram_i0i&COReApbSram_i0I&CoreApbSram_I0I&CorEAPBSRAM_i0i&COReApbSram_i0I&CoreApbSRAM_I0I&COREAPBSRam_i0i&COreApbSram_i0I;
when "0011" =>
CoreApbSram_O01(7 downto 0) <= COreApbSram_i0I&COReApbSram_i0I&CoreApbSraM_I0I&COREAPBSram_i0i&CoreApbSram_I0I&COREAPBSram_i0i&CoreApbSraM_I0I&COREAPBSram_i0i;
when "0100" =>
COREApbSram_o01(7 downto 0) <= COREAPBSram_i0i&COREApbSram_i0i&CoreApbSraM_I0I&COREAPBSram_i0i&CoreApbSraM_I0I&COREAPBSram_i0i&COreApbSram_i0I&CoreApbSram_I0I;
when "0101" =>
CoreApBSRAM_O01(7 downto 0) <= COREAPBSram_i0i&COREAPBSram_i0i&COReApbSram_i0I&CoreApBSRAM_I0i&COREAPbSram_i0i&CoreApbSraM_I0I&COREAPBSram_i0i&COreApbSram_i0I;
when "0110" =>
CoreApbSram_O01(7 downto 0) <= CoreApbSrAM_I0I&COReApbSram_i0I&CoreApbSram_I0I&CorEAPBSRAM_i0i&COREApbSram_i0i&CoreApbSRAM_I0I&COREAPBSram_i0i&CoreApbSrAM_I0I;
when "0111" =>
CoREAPBSRam_o01(7 downto 0) <= CorEAPBSRAM_i0i&CoREAPBSRAm_i0i&COreApbSram_i0I&CoreApbSraM_I0I&CoREAPBSRam_i0i&COreApbSram_i0I&CoreApbSraM_I0I&COREApbSram_i0i;
when "1000" =>
CoreApbSram_O01(11 downto 8) <= COReApbSram_i0I&CoreApbSram_I0I&CoreApbSraM_I0I&CoreAPBSRAM_i0i;
when "1001" =>
COREApbSram_o01(11 downto 8) <= CoreApbSRAM_I0I&COreApbSram_I0I&CoreApBSRAM_I0i&COREAPbSram_i0i;
when "1010" =>
CoreApbSram_O01(11 downto 8) <= COREAPBSram_i0i&CoREAPBSRAm_i0i&COREApbSram_i0I&CoreAPBSRAM_I0i;
when "1011" =>
CoreApbSRAM_O01(11 downto 8) <= CoreApbSRAM_i0i&CoREAPBSram_i0I&COReApbSraM_I0I&CorEAPBSram_i0I;
when "1100" =>
COREAPBSram_o01(13 downto 12) <= CoREAPBSram_i0I&CorEAPBSram_i0I;
when "1101" =>
CoreApBSRAM_o01(13 downto 12) <= CoreAPBSram_i0i&CoreApbSRAM_I0i;
when "1110" =>
CoreAPBSram_o01(7 downto 0) <= CoreApBSRAM_i0i&CoREAPBSram_i0I&CorEAPBSram_i0i&CoreApbSRAM_I0i&CoreApbSRAM_i0i&COREAPbSram_i0I&COReApbSraM_I0I&CoreAPBSRAm_i0i;
when "1111" =>
CoreAPBSram_o01(7 downto 0) <= CoreAPBSRAm_i0i&CoreAPBSRAM_i0i&CoREAPBSram_i0I&COREAPbSram_i0I&COreApbSrAM_I0I&CoreApbSRAM_I0i&COreApbSrAM_I0I&CoreApbSRAM_I0i;
when others =>
null
;
end case;
case (COreApbSrAM_II(12 downto 9)) is
when "0000" =>
CoreAPBSRAm_l01(7 downto 0) <= COReApbSraM_O1I&CoreApbSRAM_O1i&COREApbSram_O1I&CoREAPBSram_o1I&CoreApbSrAM_O1I&CoreApbSraM_O1I&CoreApBSRAM_O1i&CoreApbSram_O1I;
when "0001" =>
COreApbSram_L01(7 downto 0) <= CoreApbSRAM_O1I&COREAPBSRam_o1i&CoreApbSraM_O1I&CoreApbSrAM_O1I&CoreAPBSRAM_O1i&CoreApbSraM_O1I&CorEAPBSRAM_o1i&CoreApbSram_O1I;
when "0010" =>
CoreAPBSRAM_l01(7 downto 0) <= CoreApbSram_O1I&CoreApbSRAM_O1I&COREApbSram_o1i&COREAPBSram_o1i&CoreApbSrAM_O1I&COREApbSram_o1i&CoreApbSrAM_O1I&CoreApbSram_O1I;
when "0011" =>
CoreApbSram_L01(7 downto 0) <= COreApbSram_o1I&COREAPBSram_o1i&CoreApbSram_O1I&CoREAPBSRAm_o1i&CoreApbSrAM_O1I&COREApbSram_o1i&CoreApbSRAM_O1I&COREAPBSram_o1i;
when "0100" =>
COREAPbSram_l01(7 downto 0) <= CoreApbSRAM_o1i&CoreAPBSRam_o1i&COReApbSraM_O1I&COREApbSram_O1I&CoreApbSRAM_O1i&CoreApBSRAM_o1i&CoreAPBSRam_o1i&CorEAPBSram_o1i;
when "0101" =>
COREAPbSram_l01(7 downto 0) <= CoreApbSram_O1I&CoreApBSRAM_O1i&COreApbSram_o1I&COREAPBSram_o1i&CoreApBSRAM_O1i&CoreApbSram_O1I&CoREAPBSRAm_o1i&CoreApbSram_O1I;
when "0110" =>
CoreApBSRAM_L01(7 downto 0) <= COreApbSram_o1I&COreApbSram_o1I&CoreApbSRAM_O1I&CoreApbSRAM_O1i&COREApbSram_o1i&COREApbSram_o1i&CoreApbSRAM_O1i&COREApbSram_o1i;
when "0111" =>
COREAPBSram_l01(7 downto 0) <= COREAPBSram_o1i&COREAPbSram_o1i&CoreApbSram_O1I&COREAPBSRam_o1i&CoreApbSram_O1I&COREApbSram_o1I&CoreApbSRAM_O1I&COREApbSram_o1i;
when "1000" =>
COReApbSram_l01(11 downto 8) <= COREAPBSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&COREApbSram_o1i;
when "1001" =>
COReApbSram_l01(11 downto 8) <= CoreApbSRAM_O1i&CoreAPBSRAM_o1i&COREApbSram_o1i&CoreAPBSRAM_o1i;
when "1010" =>
CoreApbSram_L01(11 downto 8) <= CoreApbSraM_O1I&CoreApbSram_O1I&CoreAPBSRAM_o1i&COREAPbSram_o1i;
when "1011" =>
COreApbSram_l01(11 downto 8) <= COREApbSram_o1i&COREAPBSRam_o1i&COREAPbSram_o1i&CoreApbSram_O1I;
when "1100" =>
COREApbSram_l01(13 downto 12) <= COREAPBSram_o1i&COREAPBSRam_o1i;
when "1101" =>
COREApbSram_l01(13 downto 12) <= CoREAPBSRAm_o1i&COREAPbSram_o1i;
when "1110" =>
COREApbSram_l01(7 downto 0) <= CoreApbSRAM_O1I&CoreApBSRAM_O1i&COREApbSram_o1i&CoreApbSRAM_O1I&CorEAPBSRAM_o1i&CoreApbSrAM_O1I&CoREAPBSRam_o1i&CoreApbSram_O1I;
when "1111" =>
CoreAPBSRAM_l01(7 downto 0) <= CoreApbSram_O1I&CoreApbSraM_O1I&CorEAPBSRAM_o1i&COreApbSram_o1I&CoreApBSRAM_O1i&COREApbSram_o1i&CoreApbSram_O1I&COREAPBSram_o1i;
when others =>
null
;
end case;
case (COREApbSram_li0(12 downto 9)) is
when "0000" =>
CoreApbSram_L0 <= CoreAPBSRAM_ooll(0)&CoreAPBSRAM_i1ol(0)&COREAPBSram_l1ol(0)&COreApbSram_o1OL(0)&COreApbSram_lLI(0)&CoreAPBSRAM_ili(0)&COREApbSram_oii(0)&CoreApbSraM_LII(0);
when "0001" =>
CoreAPBSRAM_L0 <= COREAPbSram_ooll(0)&COREAPBSram_i1ol(0)&CorEAPBSRAM_l1ol(0)&COreApbSram_o1OL(0)&COREApbSram_lli(0)&COREApbSram_ili(0)&CoREAPBSRAm_oii(0)&CoreApbSram_LII(0);
when "0010" =>
CoreApBSRAM_L0 <= CoreAPBSRAm_oolL(0)&CoreApBSRAM_I1ol(0)&CoreApbSrAM_L1OL(0)&CoreApbSRAM_O1ol(0)&COREApbSram_lli(0)&CoreApbSram_ILI(0)&COReApbSram_oiI(0)&CoreAPBSRAM_lii(0);
when "0011" =>
CoreAPBSRAM_l0 <= COreApbSram_OOLL(0)&CoreApBSRAM_I1ol(0)&COREAPBSRam_l1ol(0)&COREApbSram_o1OL(0)&CoreApbSraM_LLI(0)&CoREAPBSRAm_ili(0)&CoreApbSraM_OII(0)&COREApbSram_lii(0);
when "0100" =>
CoreApbSram_L0 <= COReApbSram_ooLL(0)&COREAPbSram_i1ol(0)&COREAPBSRam_l1ol(0)&CoreApbSraM_O1OL(0)&CoreApbSram_LLI(0)&CoreApbSRAM_ili(0)&COREAPbSram_oii(0)&CoreApbSRAM_LIi(0);
when "0101" =>
CoreApbSRAM_L0 <= COREApbSram_oolL(0)&CoreApbSram_I1OL(0)&COREAPBSram_l1ol(0)&COReApbSram_o1OL(0)&CoreApbSraM_LLI(0)&COREApbSram_ili(0)&CoreApbSrAM_OII(0)&COReApbSram_liI(0);
when "0110" =>
CoreApbSraM_L0 <= CoreApBSRAM_Ooll(0)&COREAPBSram_i1ol(0)&COREAPbSram_l1ol(0)&CoreApbSRAM_O1Ol(0)&CoreApbSrAM_LLI(0)&COREAPbSram_ili(0)&CoreApbSrAM_OII(0)&COREApbSram_lii(0);
when "0111" =>
COREApbSram_l0 <= CoreAPBSRAM_ooll(0)&CorEAPBSRAm_i1ol(0)&COREApbSram_l1oL(0)&CoreApbSraM_O1OL(0)&CoREAPBSRam_lli(0)&CoREAPBSRam_ili(0)&CoreAPBSRAM_oii(0)&COREAPBSram_lii(0);
when "1000" =>
COREAPbSram_l0 <= COREAPBSram_llll(1 downto 0)&COREApbSram_ollL(1 downto 0)&COREApbSram_ioll(1 downto 0)&COREAPBSram_loll(1 downto 0);
when "1001" =>
CoreApbSrAM_L0 <= CoreAPBSRAM_llll(1 downto 0)&COREApbSram_OLLL(1 downto 0)&CoreApBSRAM_ioll(1 downto 0)&CoreApbSRAM_loll(1 downto 0);
when "1010" =>
COReApbSraM_L0 <= CoreAPBSRAm_llll(1 downto 0)&CoreApBSRAM_olll(1 downto 0)&CoREAPBSram_ioLL(1 downto 0)&CorEAPBSram_loLL(1 downto 0);
when "1011" =>
CoreApbSrAM_L0 <= COREAPbSram_llll(1 downto 0)&CoREAPBSRAm_olll(1 downto 0)&CoreApbSraM_IOLL(1 downto 0)&COREApbSram_lolL(1 downto 0);
when "1100" =>
COReApbSram_l0 <= COreApbSram_oILL(3 downto 0)&CoreApbSRAM_ILLL(3 downto 0);
when "1101" =>
CoreApbSram_L0 <= CoreApbSram_OILL(3 downto 0)&CoreApbSram_ILLL(3 downto 0);
when "1110" =>
CoreApBSRAM_L0 <= CoreApbSRAM_Ooll(0)&CoreApbSram_I1OL(0)&CorEAPBSRAm_l1ol(0)&CoreApbSram_O1OL(0)&COReApbSram_llI(0)&COREAPBSRam_ili(0)&CoREAPBSRam_oii(0)&COREAPBSRam_lii(0);
when "1111" =>
COREAPBSram_l0 <= CoreApbSram_OOLL(0)&COREAPBSram_i1ol(0)&CorEAPBSRAm_l1ol(0)&COREApbSram_o1ol(0)&CoreApbSraM_LLI(0)&COREAPBSRam_ili(0)&CoreApbSram_OII(0)&COreApbSram_lII(0);
when others =>
null
;
end case;
end case;
when 7680 =>
case (CoreApbSram_OI0) is
when 8 =>
CoreApbSram_II0 <= "11";
COREAPBSram_o00 <= "11";
CoreApbSrAM_L00 <= "11";
CoreApbSram_I00 <= "11";
CoreApbSRAM_O10 <= "11";
CoREAPBSRAm_l10 <= "11";
CoreApbSraM_I10 <= "11";
CoreApbSram_OO1 <= "11";
COReApbSram_LO1 <= "11";
CoreAPBSRAm_io1 <= "11";
CoreApbSRAM_OL1 <= "11";
CoreApbSRAM_ll1 <= "11";
CorEAPBSram_il1 <= "11";
COREApbSram_oi1 <= "11";
CoreApbSram_LI1 <= "11";
COREAPBSram_o0ll <= "000"&COREApbSram_li(8 downto 0);
COREAPBSram_l0ll <= "000"&CoreApbSraM_LI(8 downto 0);
CoreApbSRAM_I0ll <= "000"&CoreApbSRAM_LI(8 downto 0);
CoreApbSraM_O1LL <= "000"&CoreApbSraM_LI(8 downto 0);
COREAPBSram_l1ll <= "000"&CoreApbSram_LI(8 downto 0);
CoreApBSRAM_I1ll <= "000"&CoreApbSraM_LI(8 downto 0);
COREAPBSRam_ooil <= "000"&CorEAPBSRAm_li(8 downto 0);
COREAPBSram_loil <= "000"&CorEAPBSRAm_li(8 downto 0);
COREApbSram_ioiL <= "000"&CoreApbSram_LI(8 downto 0);
COReApbSram_olIL <= "000"&CoreApbSrAM_LI(8 downto 0);
COREApbSram_llil <= "000"&CoreApbSraM_LI(8 downto 0);
CoreApbSram_ILIL <= "000"&CoreApbSRAM_LI(8 downto 0);
CoreApbSRAM_OIil <= "000"&COREApbSram_li(8 downto 0);
COreApbSram_lIIL <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSraM_IIIL <= "000"&COREApbSram_li(8 downto 0);
COREAPBSram_l0il <= "000"&COreApbSram_iI(8 downto 0);
COREApbSram_i0IL <= "000"&CoreAPBSRAM_ii(8 downto 0);
CoreAPBSRAM_O1il <= "000"&COREAPBSram_ii(8 downto 0);
CoreApbSRAM_L1Il <= "000"&COREAPBSram_ii(8 downto 0);
CoreApbSram_I1IL <= "000"&COREApbSram_ii(8 downto 0);
CoREAPBSRAm_oo0l <= "000"&COREAPBSram_ii(8 downto 0);
CoreApbSram_LO0L <= "000"&CoREAPBSRAm_ii(8 downto 0);
CoreAPBSRAM_io0l <= "000"&CoreApbSram_II(8 downto 0);
COREAPBSram_ol0l <= "000"&COREAPbSram_ii(8 downto 0);
CoreApbSram_LL0L <= "000"&COREApbSram_ii(8 downto 0);
COREAPBSram_il0l <= "000"&COREAPbSram_ii(8 downto 0);
COREApbSram_oi0L <= "000"&CoreApBSRAM_Ii(8 downto 0);
COReApbSram_li0L <= "000"&CoreApBSRAM_II(8 downto 0);
CoreApbSram_II0L <= "000"&CoreApbSraM_II(8 downto 0);
COREApbSram_o00L <= "000"&CoREAPBSRAm_ii(8 downto 0);
CoREAPBSRAm_i01 <= CoreApbSRAM_O0;
COReApbSram_o11 <= CorEAPBSRAM_o0;
CoreApbSRAM_L11 <= COREApbSram_o0;
COREAPBSram_i11 <= CoreApbSram_O0;
CoreApbSraM_OOOL <= COREApbSram_o0;
CoreApBSRAM_Lool <= CoreApbSram_O0;
COReApbSram_iOOL <= CoreApbSRAM_O0;
CoreApbSram_OLOL <= COreApbSram_o0;
COREApbSram_llol <= CoreApbSRAM_O0;
COreApbSram_iLOL <= COREAPBSRam_o0;
CoreApbSRAM_OIOL <= COReApbSram_o0;
COREAPBSram_liol <= CoreApbSRAM_O0;
COReApbSram_iIOL <= COReApbSram_o0;
CoreAPBSRAM_O0ol <= CoreApbSram_O0;
COREApbSram_l0oL <= CoreApbSRAM_O0;
case (COREApbSram_li(12 downto 9)) is
when "0000" =>
CoreApBSRAM_O01(0) <= CoreApbSraM_I0I;
when "0001" =>
COREApbSram_o01(1) <= CoreApbSRAM_I0I;
when "0010" =>
CoreApbSraM_O01(2) <= CoreApbSraM_I0I;
when "0011" =>
COReApbSram_o01(3) <= COREApbSram_i0i;
when "0100" =>
COREAPBSram_o01(4) <= CoreAPBSRAM_I0i;
when "0101" =>
COREAPbSram_o01(5) <= COREAPbSram_i0i;
when "0110" =>
CoreApbSRAM_O01(6) <= CoreApbSRAM_I0i;
when "0111" =>
COREAPBSram_o01(7) <= CoREAPBSRAm_i0i;
when "1000" =>
CoreApbSRAM_O01(8) <= CoreApbSraM_I0I;
when "1001" =>
COREAPbSram_o01(9) <= COReApbSraM_I0I;
when "1010" =>
CoreApbSram_O01(10) <= COREApbSram_i0i;
when "1011" =>
COREAPBSram_o01(11) <= CoreApbSraM_I0I;
when "1100" =>
CoreApbSrAM_O01(12) <= COreApbSram_i0I;
when "1101" =>
CoreAPBSRAM_o01(13) <= CorEAPBSRAm_i0i;
when "1110" =>
CoreApBSRAM_O01(14) <= CoreApbSram_I0I;
when "1111" =>
CorEAPBSRAm_o01(7) <= COREApbSram_i0i;
when others =>
null
;
end case;
case (CoreApbSram_II(12 downto 9)) is
when "0000" =>
COREAPbSram_l01(0) <= CoreAPBSRAM_O1i;
when "0001" =>
CoreApbSram_L01(1) <= CoREAPBSRam_o1i;
when "0010" =>
CoreApbSram_L01(2) <= COreApbSram_O1I;
when "0011" =>
CoreApbSrAM_L01(3) <= CoreAPBSRAM_o1i;
when "0100" =>
CoreApbSram_L01(4) <= COREAPbSram_o1i;
when "0101" =>
CoreApbSRAM_L01(5) <= CoreApbSRAM_O1I;
when "0110" =>
COREApbSram_l01(6) <= COREApbSram_o1i;
when "0111" =>
CoreAPBSRAM_l01(7) <= CoreApBSRAM_O1i;
when "1000" =>
CoreApbSram_L01(8) <= CoreApbSraM_O1I;
when "1001" =>
CorEAPBSRAM_l01(9) <= CoreAPBSRAM_o1i;
when "1010" =>
CoreApbSram_L01(10) <= COreApbSram_o1I;
when "1011" =>
CoreApBSRAM_l01(11) <= COREApbSram_O1I;
when "1100" =>
CoreApbSram_L01(12) <= CoreApbSRAM_O1I;
when "1101" =>
CorEAPBSRAm_l01(13) <= COREAPBSram_o1i;
when "1110" =>
COREAPBSram_l01(14) <= CoreAPBSRAM_O1i;
when "1111" =>
COREAPBSram_l01(7) <= COREAPBSram_o1i;
when others =>
null
;
end case;
case (COREAPBSram_li0(12 downto 9)) is
when "0000" =>
CoreApbSRAM_L0 <= COREAPbSram_lii;
when "0001" =>
CoreApbSraM_L0 <= COREAPBSram_oii;
when "0010" =>
CoreApbSraM_L0 <= CoreApbSraM_ILI;
when "0011" =>
CoreAPBSRAM_l0 <= COreApbSram_LLI;
when "0100" =>
COReApbSram_l0 <= CoreAPBSRAM_O1ol;
when "0101" =>
CoreApbSram_L0 <= COREAPBSram_l1ol;
when "0110" =>
CoreApbSrAM_L0 <= COReApbSram_i1OL;
when "0111" =>
COREAPBSram_l0 <= COReApbSram_ooLL;
when "1000" =>
CorEAPBSRAM_l0 <= COREApbSram_lolL;
when "1001" =>
COREAPBSram_l0 <= COreApbSram_iOLL;
when "1010" =>
COReApbSram_l0 <= CoreAPBSRAM_olll;
when "1011" =>
CoreApbSRAM_L0 <= CoreApbSraM_LLLL;
when "1100" =>
CoreApbSraM_L0 <= COREAPBSram_illl;
when "1101" =>
COREApbSram_l0 <= CoreApbSram_OILL;
when "1110" =>
COreApbSram_L0 <= CoreApbSrAM_LILL;
when "1111" =>
COREApbSram_l0 <= COREAPBSram_ooll;
when others =>
null
;
end case;
when 4 =>
COReApbSram_ii0 <= "10";
COREApbSram_o00 <= "10";
CoreAPBSRAM_l00 <= "10";
COREApbSram_i00 <= "10";
COREAPBSRam_o10 <= "10";
COReApbSram_l10 <= "10";
COREApbSram_i10 <= "10";
CoreApbSram_OO1 <= "10";
COREAPBSram_lo1 <= "10";
COREAPBSram_io1 <= "10";
CoreApbSRAM_OL1 <= "10";
COREApbSram_ll1 <= "10";
COREAPBSram_il1 <= "10";
CoreApbSram_OI1 <= "10";
COREAPBSRam_li1 <= "11";
CoreApbSram_O0LL <= "00"&COREAPBSram_li(9 downto 0);
CoreApbSrAM_L0LL <= "00"&CoreApbSram_LI(9 downto 0);
COReApbSram_i0LL <= "00"&CoreApBSRAM_li(9 downto 0);
CorEAPBSram_o1LL <= "00"&CoreApbSram_LI(9 downto 0);
COREAPBSram_l1ll <= "00"&CoreApbSRAM_LI(9 downto 0);
CoreApbSram_I1LL <= "00"&COREAPBSram_li(9 downto 0);
COREAPbSram_ooil <= "00"&CoREAPBSRAm_li(9 downto 0);
COREAPbSram_loil <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSram_IOIL <= "00"&COREAPbSram_li(9 downto 0);
CoreApbSram_OLIL <= "00"&COREAPBSram_li(9 downto 0);
CoreApbSraM_LLIL <= "00"&COREApbSram_li(9 downto 0);
COReApbSram_iLIL <= "00"&COREAPBSram_li(9 downto 0);
COReApbSram_oIIL <= "00"&COReApbSram_li(9 downto 0);
CoreApbSram_LIIL <= "00"&CoREAPBSRAm_li(9 downto 0);
CoreAPBSRAM_Iiil <= "000"&CoreAPBSRAM_li(8 downto 0);
CoreApBSRAM_L0il <= "00"&CoreApbSraM_II(9 downto 0);
CoreApbSram_I0IL <= "00"&COreApbSram_iI(9 downto 0);
CoREAPBSRAm_o1il <= "00"&COREApbSram_ii(9 downto 0);
CoreApBSRAM_L1il <= "00"&COREApbSram_ii(9 downto 0);
CoREAPBSRAm_i1il <= "00"&CoreApbSram_II(9 downto 0);
COREAPBSram_oo0l <= "00"&COreApbSram_II(9 downto 0);
CoreApbSrAM_LO0L <= "00"&CoreApbSRAM_II(9 downto 0);
COREAPBSram_io0l <= "00"&COreApbSram_II(9 downto 0);
CoreAPBSRAM_ol0l <= "00"&CoreApbSram_II(9 downto 0);
CoreApbSram_LL0L <= "00"&COREAPBSRam_ii(9 downto 0);
CoreApbSrAM_IL0L <= "00"&COREAPbSram_ii(9 downto 0);
COREApbSram_oi0L <= "00"&CoreApbSram_II(9 downto 0);
CoREAPBSRAm_li0l <= "00"&CorEAPBSRAM_ii(9 downto 0);
COREAPbSram_ii0l <= "00"&CoreApbSram_II(9 downto 0);
CoREAPBSRAm_o00l <= "000"&CorEAPBSRAM_ii(8 downto 0);
CoreApbSrAM_I01(3 downto 0) <= COReApbSram_o0(3 downto 0);
CorEAPBSRAM_o11(3 downto 0) <= CoreApbSraM_O0(7 downto 4);
COREApbSram_l11(3 downto 0) <= CoreApbSram_O0(3 downto 0);
COreApbSram_I11(3 downto 0) <= COreApbSram_o0(7 downto 4);
COREApbSram_oool(3 downto 0) <= COReApbSram_o0(3 downto 0);
COREAPBSram_lool(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
COREAPbSram_iool(3 downto 0) <= COreApbSram_O0(3 downto 0);
COREApbSram_oloL(3 downto 0) <= COREAPBSRam_o0(7 downto 4);
COREAPBSram_llol(3 downto 0) <= COREAPBSram_o0(3 downto 0);
CoreApbSrAM_ILOL(3 downto 0) <= CoreApbSraM_O0(7 downto 4);
COReApbSram_oIOL(3 downto 0) <= CoreApbSram_O0(3 downto 0);
COREAPBSram_liol(3 downto 0) <= CoreApbSrAM_O0(7 downto 4);
COREApbSram_iiol(3 downto 0) <= CoreApbSraM_O0(3 downto 0);
CoreApbSRAM_O0Ol(3 downto 0) <= CoreApbSram_O0(7 downto 4);
CoreApbSRAM_L0ol <= CoreApbSrAM_O0;
case (CoreApbSraM_LI(12 downto 9)) is
when "0000" =>
COREAPbSram_o01(1 downto 0) <= CoreApbSraM_I0I&CoreApbSraM_I0I;
when "0001" =>
COReApbSram_o01(1 downto 0) <= CoreApbSraM_I0I&COReApbSram_i0I;
when "0010" =>
COREApbSram_o01(3 downto 2) <= CoreApbSraM_I0I&CoreApbSRAM_I0I;
when "0011" =>
COREApbSram_o01(3 downto 2) <= COREAPBSram_i0i&CoreApBSRAM_I0i;
when "0100" =>
COreApbSram_o01(5 downto 4) <= CoreApbSram_I0I&COREApbSram_i0I;
when "0101" =>
COREApbSram_o01(5 downto 4) <= CoREAPBSRAm_i0i&CoREAPBSRAm_i0i;
when "0110" =>
CoREAPBSRAm_o01(7 downto 6) <= CoreApbSRAM_I0i&CoreApbSram_I0I;
when "0111" =>
COREAPBSram_o01(7 downto 6) <= COReApbSram_i0I&CoREAPBSRAm_i0i;
when "1000" =>
CoreApbSRAM_O01(9 downto 8) <= CoreApbSrAM_I0I&COreApbSram_I0I;
when "1001" =>
CoreApbSrAM_O01(9 downto 8) <= COREApbSram_i0i&CoREAPBSRAm_i0i;
when "1010" =>
CoreApBSRAM_O01(11 downto 10) <= COREAPBSram_i0i&CoreAPBSRAM_i0i;
when "1011" =>
CoreAPBSRAM_o01(11 downto 10) <= CoreAPBSRAM_I0i&CoreApbSrAM_I0I;
when "1100" =>
COREAPBSram_o01(13 downto 12) <= COREAPbSram_i0i&CoreApBSRAM_I0i;
when "1101" =>
CoreApbSRAM_O01(13 downto 12) <= COREAPbSram_i0i&CoreAPBSRAM_i0i;
when "1110" =>
COREAPBSram_o01(14) <= COREAPBSRam_i0i;
when "1111" =>
CoreAPBSRAm_o01(7 downto 6) <= CoREAPBSram_i0I&COreApbSrAM_I0I;
when others =>
null
;
end case;
case (CoreApbSRAM_II(12 downto 9)) is
when "0000" =>
CoreAPBSRAM_l01(1 downto 0) <= CoreAPBSRAM_o1i&COREAPBSram_o1i;
when "0001" =>
COREAPBSram_l01(1 downto 0) <= COREAPBSram_o1i&COREAPBSRam_o1i;
when "0010" =>
COREApbSram_l01(3 downto 2) <= COREApbSram_o1i&COREAPBSram_o1i;
when "0011" =>
COREAPBSram_l01(3 downto 2) <= COreApbSram_o1I&COREApbSram_o1i;
when "0100" =>
COREAPBSRam_l01(5 downto 4) <= CoreApbSRAM_O1I&CoreApbSram_O1I;
when "0101" =>
CoreAPBSRAM_l01(5 downto 4) <= CoreApbSRAM_O1I&CoreApbSRAM_O1I;
when "0110" =>
COREAPBSRam_l01(7 downto 6) <= CoreApbSraM_O1I&CoreApbSraM_O1I;
when "0111" =>
COREApbSram_l01(7 downto 6) <= CoreApbSRAM_O1i&CoreAPBSRAM_o1i;
when "1000" =>
CoreApbSRAM_L01(9 downto 8) <= COREApbSram_o1i&COREAPBSram_o1i;
when "1001" =>
COREApbSram_l01(9 downto 8) <= CoreAPBSRAM_O1i&CoreApBSRAM_O1i;
when "1010" =>
CoreApbSraM_L01(11 downto 10) <= COREApbSram_o1I&COREAPBSram_o1i;
when "1011" =>
COReApbSram_l01(11 downto 10) <= CoreApbSraM_O1I&COREApbSram_o1i;
when "1100" =>
CoreApbSraM_L01(13 downto 12) <= COReApbSram_o1I&COREAPbSram_o1i;
when "1101" =>
COREAPbSram_l01(13 downto 12) <= COreApbSram_O1I&CoreApbSraM_O1I;
when "1110" =>
COREApbSram_l01(14) <= COREAPBSram_o1i;
when "1111" =>
COREAPBSram_l01(7 downto 6) <= CoreApbSrAM_O1I&CoreApbSram_O1I;
when others =>
null
;
end case;
case (COreApbSram_lI0(12 downto 9)) is
when "0000" =>
COREApbSram_l0 <= CoreApbSraM_OII(3 downto 0)&CoREAPBSRAm_lii(3 downto 0);
when "0001" =>
COreApbSram_L0 <= CoreAPBSRAM_oii(3 downto 0)&COReApbSram_liI(3 downto 0);
when "0010" =>
CoreApbSraM_L0 <= CoreApbSram_LLI(3 downto 0)&CoreAPBSRAM_ili(3 downto 0);
when "0011" =>
CoREAPBSRAm_l0 <= COreApbSram_lLI(3 downto 0)&CoreApbSraM_ILI(3 downto 0);
when "0100" =>
COreApbSraM_L0 <= COreApbSrAM_L1Ol(3 downto 0)&CoreApBSRAM_o1ol(3 downto 0);
when "0101" =>
CoREAPBSRAm_l0 <= CoreApBSRAM_L1ol(3 downto 0)&COREAPbSram_o1ol(3 downto 0);
when "0110" =>
CoreApbSrAM_L0 <= CoreAPBSRAM_ooll(3 downto 0)&COREAPBSRam_i1ol(3 downto 0);
when "0111" =>
COreApbSram_l0 <= CoreApbSram_OOLL(3 downto 0)&CoreApBSRAM_I1ol(3 downto 0);
when "1000" =>
CoREAPBSRAm_l0 <= COREApbSram_iolL(3 downto 0)&CoreApbSrAM_LOLL(3 downto 0);
when "1001" =>
CoreApbSRAM_L0 <= CoreApbSram_IOLL(3 downto 0)&CoreApbSraM_LOLL(3 downto 0);
when "1010" =>
CoreAPBSRAM_l0 <= CoreApBSRAM_Llll(3 downto 0)&COReApbSram_olLL(3 downto 0);
when "1011" =>
COREAPbSram_l0 <= CoreApbSrAM_LLLL(3 downto 0)&COreApbSram_OLLL(3 downto 0);
when "1100" =>
CoreApbSRAM_L0 <= COREApbSram_oilL(3 downto 0)&COREAPbSram_illl(3 downto 0);
when "1101" =>
COREApbSram_l0 <= CorEAPBSRAM_oill(3 downto 0)&COreApbSram_iLLL(3 downto 0);
when "1110" =>
COREApbSram_l0 <= CoreApbSrAM_LILL;
when "1111" =>
CoreApbSrAM_L0 <= COREAPBSram_ooll(3 downto 0)&COreApbSram_i1OL(3 downto 0);
when others =>
null
;
end case;
when 2 =>
COREApbSram_ii0 <= "01";
CoREAPBSRAm_o00 <= "01";
CoreApbSram_L00 <= "01";
CoreApbSram_I00 <= "01";
COreApbSram_O10 <= "01";
CoREAPBSRam_l10 <= "01";
COREApbSram_i10 <= "01";
CoreAPBSRAM_oo1 <= "01";
CoreApbSRAM_LO1 <= "01";
CoreApbSram_IO1 <= "01";
CorEAPBSRAm_ol1 <= "01";
CoreApBSRAM_Ll1 <= "01";
COREAPBSram_il1 <= "10";
CoREAPBSRAm_oi1 <= "10";
COREAPBSram_li1 <= "11";
COREAPBSram_o0ll <= '0'&COREAPBSRam_li(10 downto 0);
COreApbSram_l0LL <= '0'&CoreApbSram_LI(10 downto 0);
CoreApbSrAM_I0LL <= '0'&CoreAPBSRAM_li(10 downto 0);
COReApbSram_o1LL <= '0'&CoreAPBSRAM_li(10 downto 0);
CoreApbSraM_L1LL <= '0'&CoreApbSraM_LI(10 downto 0);
CorEAPBSRAm_i1ll <= '0'&COREApbSram_li(10 downto 0);
CoreAPBSRAM_ooil <= '0'&CoreApbSraM_LI(10 downto 0);
CorEAPBSRAM_loil <= '0'&COREApbSram_li(10 downto 0);
COREApbSram_ioiL <= '0'&CoREAPBSRAm_li(10 downto 0);
CoreApbSram_OLIL <= '0'&CorEAPBSRAM_li(10 downto 0);
COREApbSram_lliL <= '0'&CoreApbSram_LI(10 downto 0);
CoREAPBSRAm_ilil <= '0'&COREAPBSram_li(10 downto 0);
COREApbSram_oiiL <= "00"&CoreApbSrAM_LI(9 downto 0);
CoreApbSram_LIIL <= "00"&COreApbSram_lI(9 downto 0);
COREApbSram_iiiL <= "000"&CoreApBSRAM_Li(8 downto 0);
CoreApbSRAM_L0il <= '0'&CoreApbSRAM_II(10 downto 0);
CoreApbSram_I0IL <= '0'&COREApbSram_ii(10 downto 0);
COreApbSram_o1IL <= '0'&COREAPbSram_ii(10 downto 0);
CoREAPBSRAm_l1il <= '0'&CoreApbSRAM_II(10 downto 0);
CoreApBSRAM_I1il <= '0'&CoreApbSram_II(10 downto 0);
CoreApbSraM_OO0L <= '0'&COREApbSram_ii(10 downto 0);
COREAPBSram_lo0l <= '0'&CoreAPBSRAM_ii(10 downto 0);
CoreApBSRAM_Io0l <= '0'&CoreApbSraM_II(10 downto 0);
COreApbSram_oL0L <= '0'&CoreAPBSRAm_ii(10 downto 0);
COREAPBSram_ll0l <= '0'&COREApbSram_ii(10 downto 0);
CoreAPBSRAM_il0l <= '0'&CorEAPBSRAm_ii(10 downto 0);
CoreApbSraM_OI0L <= '0'&COREAPbSram_ii(10 downto 0);
COREApbSram_li0L <= "00"&CoreAPBSRAM_Ii(9 downto 0);
CoreApbSram_II0L <= "00"&COREAPBSram_ii(9 downto 0);
COREApbSram_o00L <= "000"&COREApbSram_ii(8 downto 0);
CoreAPBSRAM_i01(1 downto 0) <= COREAPbSram_o0(1 downto 0);
COreApbSram_O11(1 downto 0) <= CoreApbSram_O0(3 downto 2);
CoREAPBSRAm_l11(1 downto 0) <= CoreApbSram_O0(5 downto 4);
CoreApbSraM_I11(1 downto 0) <= CoreApbSrAM_O0(7 downto 6);
CoreApBSRAM_Oool(1 downto 0) <= COREApbSram_o0(1 downto 0);
CoreApbSram_LOOL(1 downto 0) <= COreApbSram_O0(3 downto 2);
CoreApbSraM_IOOL(1 downto 0) <= COREApbSram_O0(5 downto 4);
CoreApbSrAM_OLol(1 downto 0) <= CoreAPBSRAm_o0(7 downto 6);
COREApbSram_LLOL(1 downto 0) <= COREAPbSram_o0(1 downto 0);
CoreAPBSRAM_ilol(1 downto 0) <= COREAPBSram_o0(3 downto 2);
CoREAPBSRAm_oiol(1 downto 0) <= CoreApbSrAM_O0(5 downto 4);
CoreApbSraM_LIOL(1 downto 0) <= CoreApbSram_O0(7 downto 6);
CoreApbSram_IIOL(3 downto 0) <= COreApbSram_o0(3 downto 0);
COReApbSram_o0OL(3 downto 0) <= COreApbSram_o0(7 downto 4);
CoreApBSRAM_L0ol <= COREAPBSram_o0;
case (CoreAPBSRAM_li(12 downto 9)) is
when "0000" =>
CoREAPBSRAm_o01(3 downto 0) <= COReApbSram_i0I&COreApbSram_i0I&CoreAPBSRAM_i0i&COreApbSram_i0I;
when "0001" =>
CoreAPBSRAM_O01(3 downto 0) <= CoreApbSram_I0I&COreApbSram_i0I&CoreAPBSRAM_i0i&COreApbSram_I0I;
when "0010" =>
CoreAPBSRAM_O01(3 downto 0) <= CoreApBSRAM_I0i&CoreApBSRAM_I0i&COREAPbSram_i0i&CoreApbSRAM_I0i;
when "0011" =>
COreApbSram_o01(3 downto 0) <= CorEAPBSRAm_i0i&CoreAPBSRAM_I0i&COREApbSram_i0I&CoreApbSraM_I0I;
when "0100" =>
CoreAPBSRAM_o01(7 downto 4) <= COREAPBSram_i0i&COREAPBSram_i0i&COReApbSram_i0I&CoreApbSrAM_I0I;
when "0101" =>
CoREAPBSRAm_o01(7 downto 4) <= CoreApbSrAM_I0I&COreApbSram_i0I&CoreApbSrAM_I0I&COReApbSram_i0I;
when "0110" =>
CoreApBSRAM_O01(7 downto 4) <= COREApbSram_i0i&COREAPBSram_i0i&COREApbSram_i0I&CoreApbSraM_I0I;
when "0111" =>
COreApbSram_o01(7 downto 4) <= CoreApbSraM_I0I&CoreApbSram_I0I&CoreApBSRAM_I0i&COREApbSram_i0i;
when "1000" =>
COReApbSram_o01(11 downto 8) <= CoreApbSRAM_I0I&CoreApbSraM_I0I&CoreAPBSRAM_i0i&COReApbSram_i0I;
when "1001" =>
COREAPbSram_o01(11 downto 8) <= COreApbSram_I0I&COREApbSram_i0i&CoreApbSraM_I0I&CoREAPBSRAm_i0i;
when "1010" =>
COREAPbSram_o01(11 downto 8) <= COREApbSram_i0I&COREApbSram_i0i&CoreApbSram_I0I&CoreApbSRAM_I0i;
when "1011" =>
CoreApbSRAM_O01(11 downto 8) <= COREAPbSram_i0i&COREAPBSRam_i0i&COreApbSram_i0I&CoreAPBSRAM_i0i;
when "1100" =>
COREApbSram_O01(13 downto 12) <= COREApbSram_I0I&COREAPBSram_i0I;
when "1101" =>
CoREAPBSram_o01(13 downto 12) <= CoreAPBSRam_i0i&CoreAPBSRam_i0i;
when "1110" =>
CorEAPBSRAM_o01(14) <= COREAPBSram_i0i;
when "1111" =>
CorEAPBSRAM_o01(7 downto 4) <= CoreApbSraM_I0I&COReApbSram_i0I&CorEAPBSRAM_i0i&CoreApbSRAM_I0i;
when others =>
null
;
end case;
case (CorEAPBSRAM_ii(12 downto 9)) is
when "0000" =>
CoreApbSraM_L01(3 downto 0) <= CoreAPBSRAM_o1i&CoreAPBSRAM_O1i&COREApbSram_o1i&CoreApBSRAM_O1i;
when "0001" =>
CoreAPBSRAM_L01(3 downto 0) <= COReApbSram_o1I&CoreApbSram_O1I&CoREAPBSRAm_o1i&CoreApbSraM_O1I;
when "0010" =>
CoreApbSram_L01(3 downto 0) <= CoreApBSRAM_O1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&COReApbSram_o1I;
when "0011" =>
COREApbSram_l01(3 downto 0) <= COREAPBSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&COREApbSram_o1i;
when "0100" =>
COREAPBSram_l01(7 downto 4) <= COreApbSram_O1I&COReApbSram_o1I&CoreApBSRAM_O1i&COREApbSram_o1i;
when "0101" =>
COREAPBSRam_l01(7 downto 4) <= CoreApbSraM_O1I&CoreApbSram_O1I&CoreApBSRAM_O1i&COREApbSram_o1i;
when "0110" =>
COREAPBSram_l01(7 downto 4) <= CoreApbSram_O1I&COreApbSram_O1I&CoreApBSRAM_O1i&COREAPbSram_o1i;
when "0111" =>
COReApbSram_l01(7 downto 4) <= COREApbSram_o1i&COREApbSram_o1i&CoreApbSram_O1I&CoREAPBSRAm_o1i;
when "1000" =>
COREAPBSram_l01(11 downto 8) <= COREApbSram_o1i&COREApbSram_o1i&CoreApbSram_O1I&COReApbSram_o1I;
when "1001" =>
CoreApbSram_L01(11 downto 8) <= COREApbSram_o1i&COREApbSram_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i;
when "1010" =>
COREAPBSram_l01(11 downto 8) <= COReApbSram_o1I&CoREAPBSRAm_o1i&COREApbSram_o1i&CoreApbSRAM_O1I;
when "1011" =>
CoreAPBSRAM_l01(11 downto 8) <= COreApbSram_O1I&COREApbSram_o1i&COREAPBSRam_o1i&CoreApbSram_O1I;
when "1100" =>
CoreApbSrAM_L01(13 downto 12) <= COREApbSram_o1i&COREAPBSRam_o1i;
when "1101" =>
CoreApbSRAM_L01(13 downto 12) <= COREAPbSram_o1i&CorEAPBSRAm_o1i;
when "1110" =>
COREApbSram_l01(14) <= COreApbSram_o1I;
when "1111" =>
COREAPBSRam_l01(7 downto 4) <= COREAPbSram_o1i&CoreAPBSRAM_o1i&COreApbSram_o1I&CoreApbSraM_O1I;
when others =>
null
;
end case;
case (COREApbSram_li0(12 downto 9)) is
when "0000" =>
CoreApbSram_L0 <= COREApbSram_lli(1 downto 0)&COREAPBSram_ili(1 downto 0)&COREApbSram_oiI(1 downto 0)&CoreApbSram_LII(1 downto 0);
when "0001" =>
CorEAPBSRAM_l0 <= CoREAPBSRAm_lli(1 downto 0)&CoreApbSraM_ILI(1 downto 0)&CorEAPBSRAM_oii(1 downto 0)&CoreAPBSRAM_lii(1 downto 0);
when "0010" =>
CoreApbSram_L0 <= COreApbSram_lLI(1 downto 0)&CorEAPBSRAm_ili(1 downto 0)&CoreApbSRAM_OII(1 downto 0)&COREAPBSram_lii(1 downto 0);
when "0011" =>
COREAPBSram_l0 <= COREAPBSRam_lli(1 downto 0)&COREApbSram_ili(1 downto 0)&COReApbSram_oiI(1 downto 0)&CoreAPBSRAM_lii(1 downto 0);
when "0100" =>
COreApbSram_L0 <= COReApbSram_oOLL(1 downto 0)&CoreApBSRAM_I1ol(1 downto 0)&CoREAPBSRAm_l1ol(1 downto 0)&CoreApbSraM_O1OL(1 downto 0);
when "0101" =>
COREApbSram_l0 <= COREAPbSram_ooll(1 downto 0)&COreApbSrAM_I1ol(1 downto 0)&COREApbSram_l1OL(1 downto 0)&CoreAPBSRAM_O1ol(1 downto 0);
when "0110" =>
CoreAPBSRAM_L0 <= CoreApBSRAM_OOll(1 downto 0)&COREAPbSram_i1ol(1 downto 0)&COREApbSram_l1ol(1 downto 0)&CorEAPBSram_o1oL(1 downto 0);
when "0111" =>
COREApbSram_l0 <= COREApbSram_ooLL(1 downto 0)&COReApbSram_i1OL(1 downto 0)&COReApbSram_l1OL(1 downto 0)&COREAPbSram_o1ol(1 downto 0);
when "1000" =>
CoreAPBSRAM_L0 <= COREApbSram_llLL(1 downto 0)&CoreApbSraM_OLLL(1 downto 0)&CoreApbSram_IOLL(1 downto 0)&CoreApbSram_LOLL(1 downto 0);
when "1001" =>
COReApbSram_l0 <= CorEAPBSRAM_llll(1 downto 0)&CoreAPBSram_ollL(1 downto 0)&CoreAPBSRAm_ioll(1 downto 0)&CoreApBSRAM_loll(1 downto 0);
when "1010" =>
COreApbSrAM_L0 <= COreApbSrAM_LLll(1 downto 0)&COreApbSrAM_OLLl(1 downto 0)&CoreAPBSRAm_ioll(1 downto 0)&CoreAPBSRAM_loll(1 downto 0);
when "1011" =>
CoreApbSraM_L0 <= COREAPBSram_llll(1 downto 0)&COREApbSram_olLL(1 downto 0)&COREAPBSram_ioll(1 downto 0)&COREAPBSram_loll(1 downto 0);
when "1100" =>
COREAPBSram_l0 <= COREAPBSram_oill(3 downto 0)&CoreApbSram_ILLL(3 downto 0);
when "1101" =>
CoreApbSram_L0 <= CoreApbSram_OILL(3 downto 0)&COREApbSram_illL(3 downto 0);
when "1110" =>
CoreApbSRAM_L0 <= CoreApBSRAM_Lill;
when "1111" =>
COREAPBSram_l0 <= CoreApbSraM_OOLL(1 downto 0)&COREAPBSram_i1ol(1 downto 0)&CoreApbSRAM_L1Ol(1 downto 0)&CoreApbSraM_O1OL(1 downto 0);
when others =>
null
;
end case;
when others =>
CoreApbSRAM_II0 <= "00";
COreApbSram_o00 <= "00";
CoreApbSRAM_L00 <= "00";
CoreApbSraM_I00 <= "00";
COREApbSram_o10 <= "00";
CoreApbSram_L10 <= "00";
CoreApbSRAM_I10 <= "00";
CoreApbSrAM_OO1 <= "00";
COREAPBSram_lo1 <= "01";
CoreAPBSRAM_Io1 <= "01";
CoREAPBSRAm_ol1 <= "01";
CoreApbSram_LL1 <= "01";
CoreAPBSRAM_Il1 <= "10";
CoreApbSraM_OI1 <= "10";
CoREAPBSRam_li1 <= "11";
COREApbSram_o0ll <= CoreApbSram_LI(11 downto 0);
COREAPBSRam_l0ll <= CoreApbSRAM_LI(11 downto 0);
COREAPBSRam_i0ll <= CoreApbSram_LI(11 downto 0);
CoreApbSRAM_O1ll <= COreApbSram_LI(11 downto 0);
COREAPBSRam_l1ll <= CoreApbSRAM_LI(11 downto 0);
COREApbSram_i1lL <= CoreApbSram_LI(11 downto 0);
CoreApbSRAM_OOIl <= CoreAPBSRAM_li(11 downto 0);
COREApbSram_loil <= CoreApbSram_LI(11 downto 0);
COREApbSram_ioil <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreAPBSRAM_olil <= '0'&COREAPbSram_li(10 downto 0);
CoreApbSRAM_LLIl <= '0'&CoREAPBSRam_li(10 downto 0);
CoreApbSram_ILIL <= '0'&CoreApbSRAM_LI(10 downto 0);
CoreAPBSRAM_oiil <= "00"&COREApbSram_li(9 downto 0);
COREApbSram_liiL <= "00"&COREApbSram_li(9 downto 0);
CoreApbSraM_IIIL <= "000"&CoreAPBSRAM_li(8 downto 0);
CoreApbSRAM_L0Il <= COREAPbSram_ii(11 downto 0);
CorEAPBSRAM_i0il <= CoreApbSram_II(11 downto 0);
COREApbSram_o1iL <= COREApbSram_ii(11 downto 0);
CoreApbSrAM_L1IL <= CoreApbSram_II(11 downto 0);
COREAPBSram_i1il <= CoREAPBSRAm_ii(11 downto 0);
COReApbSram_oo0L <= CoreApbSraM_II(11 downto 0);
COREApbSram_lo0L <= COREApbSram_ii(11 downto 0);
COREApbSram_io0L <= COreApbSram_II(11 downto 0);
CoreApbSrAM_OL0L <= '0'&CoreApbSrAM_II(10 downto 0);
CoreApbSram_LL0L <= '0'&COREApbSram_ii(10 downto 0);
COREAPBSram_il0l <= '0'&CoreApBSRAM_Ii(10 downto 0);
COReApbSram_oi0L <= '0'&CoreApbSraM_II(10 downto 0);
CoreApbSram_LI0L <= "00"&COREAPbSram_ii(9 downto 0);
CoreApbSRAM_II0l <= "00"&CoreApBSRAM_Ii(9 downto 0);
COREApbSram_o00L <= "000"&CoreApbSram_II(8 downto 0);
CoreApbSRAM_I01(0) <= CoreApbSRAM_O0(0);
COREAPBSram_o11(0) <= CoreApBSRAM_O0(1);
CoreAPBSRAM_l11(0) <= CoreApbSram_O0(2);
COREAPbSram_i11(0) <= CoreApbSRAM_O0(3);
CoreApbSrAM_OOOL(0) <= COReApbSram_o0(4);
CorEAPBSRAM_lool(0) <= CoreApbSram_O0(5);
COREAPBSram_iool(0) <= CoreApbSraM_O0(6);
CoreAPBSRAM_olol(0) <= COREAPbSram_o0(7);
COreApbSram_LLOL(1 downto 0) <= CoreApbSrAM_O0(1 downto 0);
CorEAPBSRAM_ilol(1 downto 0) <= COReApbSram_o0(3 downto 2);
CoreApBSRAM_Oiol(1 downto 0) <= COREApbSram_o0(5 downto 4);
CoreApbSRAM_LIOL(1 downto 0) <= COREAPBSram_o0(7 downto 6);
COREAPbSram_iiol(3 downto 0) <= COreApbSram_o0(3 downto 0);
CoreApbSRAM_O0ol(3 downto 0) <= COReApbSram_o0(7 downto 4);
COREAPBSram_l0ol <= COREAPBSRam_o0;
case (COreApbSram_lI(12 downto 9)) is
when "0000" =>
CoreApbSraM_O01(7 downto 0) <= CoreAPBSRAM_i0i&CoREAPBSRAm_i0i&COREApbSram_i0I&CoreApbSRAM_I0I&COReApbSram_i0I&CoreApBSRAM_I0i&COREApbSram_i0i&CoreAPBSRAM_I0i;
when "0001" =>
CoreApbSRAM_O01(7 downto 0) <= COREAPBSram_i0i&COREAPBSRam_i0i&CoreApbSram_I0I&CoreApBSRAM_I0i&COREAPBSram_i0i&CoreApbSRAM_I0I&COREAPBSram_i0i&CoreApbSram_I0I;
when "0010" =>
CoreApbSRAM_O01(7 downto 0) <= CoreApbSRAM_I0i&CoreApbSram_I0I&CoreAPBSRAM_i0i&COReApbSram_i0I&COREApbSram_i0i&CoreAPBSRAM_I0i&COReApbSram_i0I&CoreAPBSRAM_I0i;
when "0011" =>
COREAPBSRam_o01(7 downto 0) <= CoreApbSRAM_I0I&CoreApbSraM_I0I&CoreAPBSRAM_i0i&COREAPBSram_i0i&COReApbSram_i0I&CoreAPBSRAM_I0i&COREAPBSram_i0i&CoreApbSraM_I0I;
when "0100" =>
CoREAPBSRam_o01(7 downto 0) <= CoreApbSRAM_I0i&CoreApbSRAM_I0I&COREAPbSram_i0i&CoreApbSRAM_I0I&CoreAPBSRAM_i0i&COreApbSram_i0I&CoreApbSram_I0I&CoreAPBSRAM_i0i;
when "0101" =>
COREAPbSram_o01(7 downto 0) <= COreApbSram_i0I&COreApbSram_i0I&CoreAPBSRAM_i0i&COReApbSram_i0I&CoreApbSram_I0I&CoREAPBSRAm_i0i&COREAPbSram_i0i&COreApbSram_I0I;
when "0110" =>
CoreApbSrAM_O01(7 downto 0) <= CoreApbSram_I0I&CoreApbSram_I0I&CoreApBSRAM_I0i&COreApbSram_i0I&CoreApbSRAM_I0I&COREAPBSram_i0i&COREApbSram_i0i&CoreApbSraM_I0I;
when "0111" =>
COREApbSram_o01(7 downto 0) <= COREAPBSRam_i0i&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApbSrAM_I0I&COREAPBSram_i0i&CoreApbSram_I0I&CoreApbSrAM_I0I&CoREAPBSRAm_i0i;
when "1000" =>
COreApbSram_o01(11 downto 8) <= CorEAPBSRAM_i0i&CoreApbSraM_I0I&CoreAPBSRAM_I0i&COREApbSram_i0i;
when "1001" =>
COREAPBSram_o01(11 downto 8) <= CoreApbSram_I0I&COreApbSram_I0I&CoreApbSrAM_I0I&CoreAPBSRAM_i0i;
when "1010" =>
COREAPBSram_o01(11 downto 8) <= COREApbSram_i0I&COREAPBSram_i0i&CoreApbSram_I0I&CoreApbSrAM_I0I;
when "1011" =>
CoreApbSraM_O01(11 downto 8) <= CorEAPBSRAM_i0i&CoreApbSRAM_I0I&CorEAPBSRAM_i0i&CoreApbSram_I0I;
when "1100" =>
COREAPBSram_o01(13 downto 12) <= COreApbSram_i0I&COReApbSram_i0I;
when "1101" =>
COREApbSram_o01(13 downto 12) <= CoreApbSrAM_I0I&CoreApbSram_I0I;
when "1110" =>
CoreAPBSRAM_o01(14) <= CoreAPBSRAm_i0i;
when "1111" =>
CoreApBSRAm_o01(7 downto 0) <= CorEAPbSram_i0I&CoreApbSRAM_I0i&CoreApbSRAM_I0i&COREApbSram_I0I&CoreAPBSRAm_i0i&COREAPBSram_i0I&CoreAPBSRAm_i0i&CoreApbSRAM_i0i;
when others =>
null
;
end case;
case (CoreApbSRAM_II(12 downto 9)) is
when "0000" =>
COREApbSram_l01(7 downto 0) <= COREAPbSram_o1i&CoreApbSrAM_O1I&CoreApbSraM_O1I&COREApbSram_o1i&COREAPBSRam_o1i&COREAPBSram_o1i&CoREAPBSRAm_o1i&CoreApbSraM_O1I;
when "0001" =>
CoreApbSraM_L01(7 downto 0) <= COREApbSram_o1i&COreApbSram_o1I&CoreApbSRAM_O1i&COreApbSram_o1I&CoreAPBSRAM_O1i&COreApbSram_o1I&CoreAPBSRAM_o1i&CoreApbSraM_O1I;
when "0010" =>
COREAPbSram_l01(7 downto 0) <= COREAPBSRam_o1i&COREApbSram_o1i&CoreApbSram_O1I&COREAPBSRam_o1i&CoreApbSram_O1I&COREApbSram_o1i&CoreApbSRAM_O1I&CoREAPBSRAm_o1i;
when "0011" =>
CoreApbSRAM_L01(7 downto 0) <= COreApbSram_o1I&COReApbSram_o1I&CoREAPBSRAm_o1i&CoreApbSRAM_O1I&COREAPBSram_o1i&CoreApbSrAM_O1I&COREAPBSRam_o1i&CoreApbSram_O1I;
when "0100" =>
COreApbSram_l01(7 downto 0) <= CoreAPBSRAM_o1i&CorEAPBSRAM_o1i&COreApbSram_o1I&CoreAPBSRAM_o1i&COREApbSram_o1i&COREAPBSram_o1i&CoreApbSram_O1I&COREApbSram_o1i;
when "0101" =>
CoreAPBSRAM_L01(7 downto 0) <= COREAPBSRam_o1i&CoREAPBSRAm_o1i&COReApbSram_o1I&CoreAPBSRAM_o1i&CoreApbSraM_O1I&COREAPBSram_o1i&CoreApbSram_O1I&COREAPBSram_o1i;
when "0110" =>
CoreApbSRAM_L01(7 downto 0) <= CoreApBSRAM_O1i&CoreAPBSRAM_o1i&COReApbSram_o1I&COREAPBSRam_o1i&CoreApbSraM_O1I&COREApbSram_o1i&CoreApbSraM_O1I&CoREAPBSRam_o1i;
when "0111" =>
COREApbSram_l01(7 downto 0) <= COREApbSram_o1i&CoREAPBSRAm_o1i&COReApbSram_o1I&CoreAPBSRAM_O1i&COREApbSram_o1i&CoreApbSrAM_O1I&COREAPBSram_o1i&CoreApbSram_O1I;
when "1000" =>
CoreApbSRAM_L01(11 downto 8) <= COREApbSram_o1i&CorEAPBSRAM_o1i&COreApbSram_O1I&CoreApBSRAM_O1i;
when "1001" =>
COREApbSram_l01(11 downto 8) <= CoreApbSraM_O1I&CoreApbSram_O1I&CoreApBSRAM_O1i&COREApbSram_o1i;
when "1010" =>
CoreApbSRAM_L01(11 downto 8) <= CoreApbSRAM_O1I&CoreApbSram_O1I&CoreApBSRAM_O1i&COREApbSram_o1i;
when "1011" =>
CoreApbSraM_L01(11 downto 8) <= CoreApbSram_O1I&COReApbSram_o1I&CoreApbSRAM_O1I&COReApbSram_o1I;
when "1100" =>
COREApbSram_l01(13 downto 12) <= CoreApbSRAM_O1I&CoreApbSraM_O1I;
when "1101" =>
CoreApbSRAM_L01(13 downto 12) <= CoreApbSram_O1I&COreApbSram_o1I;
when "1110" =>
CoreApbSrAM_L01(14) <= CoreApbSram_O1I;
when "1111" =>
COREApbSram_l01(7 downto 0) <= COREApbSram_o1I&CoREAPBSram_o1I&CoreApbSRAM_o1i&CoreApbSRAM_O1i&CoreApbSRAM_O1i&CoreApBSRAM_o1i&COREApbSram_O1I&CoreAPBSRAm_o1i;
when others =>
null
;
end case;
case (CoreApbSRam_li0(12 downto 9)) is
when "0000" =>
CoreApBSRAM_L0 <= CoreApbSraM_OOLL(0)&COREAPbSram_i1ol(0)&CoreApbSRAM_L1Ol(0)&COReApbSram_o1OL(0)&COREAPBSram_lli(0)&COREAPBSram_ili(0)&COReApbSram_oiI(0)&CoreApbSrAM_LII(0);
when "0001" =>
COREApbSram_l0 <= CoreApbSraM_OOLL(0)&CoreApbSRAM_I1ol(0)&CoreApbSrAM_L1OL(0)&COReApbSram_o1OL(0)&COReApbSram_llI(0)&COREAPbSram_ili(0)&COREAPBSram_oii(0)&CoREAPBSRAm_lii(0);
when "0010" =>
CoREAPBSRAm_l0 <= COREAPbSram_ooll(0)&CoreApbSram_I1OL(0)&CoreAPBSRAM_l1ol(0)&CoreApbSram_O1OL(0)&CoreApbSraM_LLI(0)&CoreApbSraM_ILI(0)&COREAPbSram_oii(0)&CoreApbSram_LII(0);
when "0011" =>
CoreAPBSRAM_l0 <= CoreApbSram_OOLL(0)&CoreApbSrAM_I1OL(0)&CorEAPBSRAm_l1ol(0)&COREApbSram_o1OL(0)&COReApbSram_llI(0)&COreApbSram_iLI(0)&CoreApbSram_OII(0)&COreApbSram_LII(0);
when "0100" =>
CoreApbSRAM_L0 <= COREApbSram_ooLL(0)&CoreAPBSRAM_I1ol(0)&CoreApbSraM_L1OL(0)&CoREAPBSRam_o1ol(0)&CorEAPBSRAm_lli(0)&COREApbSram_ili(0)&COREAPBSram_oii(0)&COREApbSram_lii(0);
when "0101" =>
COReApbSram_l0 <= CoreApbSram_OOLL(0)&CoreApbSraM_I1OL(0)&CorEAPBSRAm_l1ol(0)&CoreApbSram_O1OL(0)&COREAPBSRam_lli(0)&COREAPbSram_ili(0)&COREApbSram_oii(0)&COReApbSram_liI(0);
when "0110" =>
CoreApbSram_L0 <= COREApbSram_ooLL(0)&CoreApbSram_I1OL(0)&COREAPBSRam_l1ol(0)&COREAPBSram_o1ol(0)&COREAPBSram_lli(0)&CoreApbSraM_ILI(0)&COREApbSram_oii(0)&CoREAPBSRAm_lii(0);
when "0111" =>
COReApbSram_l0 <= COReApbSram_ooLL(0)&CoreApbSram_I1OL(0)&CoreAPBSRAM_l1ol(0)&COREAPbSram_o1ol(0)&CoreApbSRAM_LLi(0)&CoreApbSram_ILI(0)&CoreApbSram_OII(0)&CoreApbSraM_LII(0);
when "1000" =>
COREApbSram_l0 <= CoreApbSram_LLLL(1 downto 0)&CoREAPBSRAm_olll(1 downto 0)&CoreApbSraM_IOLL(1 downto 0)&CoreApbSRAM_LOLl(1 downto 0);
when "1001" =>
COREAPBSRam_l0 <= CoreAPBSRAM_llll(1 downto 0)&COreApbSram_OLLL(1 downto 0)&CoREAPBSRAm_ioll(1 downto 0)&CoreApbSram_LOLL(1 downto 0);
when "1010" =>
CoreAPBSRAM_l0 <= CorEAPBSRAM_llll(1 downto 0)&COREApbSram_ollL(1 downto 0)&CoreApbSrAM_IOLL(1 downto 0)&CoreApbSram_LOLL(1 downto 0);
when "1011" =>
CoreAPBSRAM_L0 <= CoreApBSRAM_Llll(1 downto 0)&COREAPBSRam_olll(1 downto 0)&CoreApbSraM_IOLL(1 downto 0)&COREApbSram_loLL(1 downto 0);
when "1100" =>
CoreApbSram_L0 <= COREApbSram_oilL(3 downto 0)&CoreApbSRAM_Illl(3 downto 0);
when "1101" =>
CorEAPBSram_L0 <= CoreApBSRAM_oill(3 downto 0)&COREApbSram_ILLL(3 downto 0);
when "1110" =>
CoreApbSRAM_l0 <= CoreApbSRAM_lill;
when "1111" =>
CoreApbSRAM_L0 <= CoreApbSRAM_OOll(0)&CoreApBSRAM_i1ol(0)&CorEAPBSram_l1OL(0)&COREAPBSRam_o1ol(0)&CoreApbSram_LLI(0)&CoreApbSRAM_ILI(0)&COReApbSram_oiI(0)&COREAPbSram_lii(0);
when others =>
null
;
end case;
end case;
when others =>
case (CoreApbSram_OI0) is
when 8 =>
CoreApbSram_II0 <= "11";
CoREAPBSRam_o00 <= "11";
CoREAPBSRAm_l00 <= "11";
COreApbSram_i00 <= "11";
CoREAPBSRAm_o10 <= "11";
COREApbSram_l10 <= "11";
COREApbSram_i10 <= "11";
CoreApbSram_OO1 <= "11";
CoreApbSram_LO1 <= "11";
COREApbSram_io1 <= "11";
CoreApbSrAM_OL1 <= "11";
CoreApbSRAM_LL1 <= "11";
CoreApbSRAM_IL1 <= "11";
CoreApbSRAM_OI1 <= "11";
COREAPBSram_li1 <= "11";
CoreApBSRAM_Ii1 <= "11";
CoreApbSram_O0LL <= "000"&CoreApbSraM_LI(8 downto 0);
CoreAPBSRAM_l0ll <= "000"&CorEAPBSRAM_li(8 downto 0);
COReApbSram_i0LL <= "000"&CorEAPBSRAM_li(8 downto 0);
CoreApbSraM_O1LL <= "000"&CoreApbSrAM_LI(8 downto 0);
CoreAPBSRAM_l1ll <= "000"&CoreApbSrAM_LI(8 downto 0);
COREAPbSram_i1ll <= "000"&CoreAPBSRAM_li(8 downto 0);
CoreApBSRAM_Ooil <= "000"&CoreApbSraM_LI(8 downto 0);
COReApbSram_loIL <= "000"&COREAPBSram_li(8 downto 0);
COREAPBSram_ioil <= "000"&CoreAPBSRAM_li(8 downto 0);
COREApbSram_oliL <= "000"&CoreApbSram_LI(8 downto 0);
CoreApbSRAM_LLIL <= "000"&COREApbSram_li(8 downto 0);
COREApbSram_ilIL <= "000"&COReApbSram_lI(8 downto 0);
CoreApbSram_OIIL <= "000"&COreApbSram_lI(8 downto 0);
COREAPBSram_liil <= "000"&COREAPBSram_li(8 downto 0);
CoreAPBSRAM_iiil <= "000"&CoreApbSram_LI(8 downto 0);
CoreAPBSRAM_O0il <= "000"&CoreApbSram_LI(8 downto 0);
COREAPBSram_l0il <= "000"&CoreAPBSRAM_ii(8 downto 0);
CoreApbSraM_I0IL <= "000"&CoreApbSRAM_II(8 downto 0);
COREAPBSram_o1il <= "000"&COReApbSram_iI(8 downto 0);
CoreApbSram_L1IL <= "000"&COREAPBSRam_ii(8 downto 0);
COREAPBSram_i1il <= "000"&COreApbSram_II(8 downto 0);
CoreApBSRAM_OO0l <= "000"&COreApbSram_iI(8 downto 0);
COREApbSram_lo0L <= "000"&COREApbSram_ii(8 downto 0);
CoreApbSram_IO0L <= "000"&CoreApbSRAM_II(8 downto 0);
CoreApbSrAM_OL0L <= "000"&CoreApBSRAM_Ii(8 downto 0);
COREAPBSram_ll0l <= "000"&CoreAPBSRAM_Ii(8 downto 0);
CoreApbSrAM_IL0L <= "000"&COREAPBSRam_ii(8 downto 0);
CoreAPBSRAM_Oi0l <= "000"&COReApbSram_ii(8 downto 0);
CorEAPBSRAM_li0l <= "000"&CoreApbSraM_II(8 downto 0);
CoreApbSRAM_II0l <= "000"&COREApbSram_ii(8 downto 0);
CoreApBSRAM_O00l <= "000"&CoreApbSram_II(8 downto 0);
CoreApBSRAM_L00l <= "000"&COREAPbSram_ii(8 downto 0);
COreApbSram_i01 <= COREAPBSRam_o0;
CoreApbSraM_O11 <= COREAPBSram_o0;
CoreApbSram_L11 <= COREApbSram_o0;
CoreApbSrAM_I11 <= COREApbSram_o0;
CoreApbSRAM_OOOl <= COREAPBSram_o0;
CoreApbSRAM_LOOL <= COreApbSram_o0;
COREAPBSram_iool <= CoreApbSRAM_O0;
COREAPBSram_olol <= COREApbSram_o0;
CoreAPBSRAM_Llol <= COreApbSram_o0;
CoreApbSrAM_ILOL <= CoreApbSraM_O0;
COREAPBSram_oiol <= CoreApbSRAM_O0;
COREApbSram_lioL <= CoreAPBSRAM_o0;
CoreApbSram_IIOL <= COREAPBSram_o0;
CoreApbSram_O0OL <= COREAPBSram_o0;
CoreApbSrAM_L0OL <= CoreApbSraM_O0;
COREAPbSram_i0ol <= COREApbSram_o0;
case (CoreApbSrAM_LI(12 downto 9)) is
when "0000" =>
COREAPBSRam_o01(0) <= COREAPBSram_i0i;
when "0001" =>
COREAPbSram_o01(1) <= COreApbSram_i0I;
when "0010" =>
CorEAPBSRAm_o01(2) <= COREAPBSram_i0i;
when "0011" =>
CoreApbSRAM_O01(3) <= COREApbSram_i0i;
when "0100" =>
CoreApbSrAM_O01(4) <= COREAPBSRam_i0i;
when "0101" =>
COREApbSram_o01(5) <= COreApbSram_i0I;
when "0110" =>
CoreApbSRAM_O01(6) <= COREApbSram_i0i;
when "0111" =>
CoREAPBSRAm_o01(7) <= COREAPBSRAm_i0i;
when "1000" =>
CoreApbSram_O01(8) <= CoreApbSraM_I0I;
when "1001" =>
COREApbSram_o01(9) <= CoreApbSraM_I0I;
when "1010" =>
CoREAPBSRAm_o01(10) <= COReApbSram_i0I;
when "1011" =>
CorEAPBSRAM_o01(11) <= CoreApbSram_I0I;
when "1100" =>
COREAPBSram_o01(12) <= COREApbSram_i0i;
when "1101" =>
COreApbSram_o01(13) <= CorEAPBSRAM_i0i;
when "1110" =>
COREApbSram_o01(14) <= CoreApbSRAM_I0I;
when "1111" =>
CoREAPBSRam_o01(15) <= CorEAPBSRAM_i0i;
when others =>
null
;
end case;
case (COREAPbSram_ii(12 downto 9)) is
when "0000" =>
CoreApbSram_L01(0) <= CoreApbSram_O1I;
when "0001" =>
CoreApbSrAM_L01(1) <= CoreApBSRAM_O1i;
when "0010" =>
CoreAPBSRAM_l01(2) <= CoreApbSraM_O1I;
when "0011" =>
COREAPBSram_l01(3) <= COreApbSram_o1I;
when "0100" =>
CoreApbSRAM_L01(4) <= CoreApbSRAM_O1I;
when "0101" =>
CoreApbSraM_L01(5) <= COREAPBSram_o1i;
when "0110" =>
CoreApbSRAM_L01(6) <= COREAPbSram_o1i;
when "0111" =>
CorEAPBSRAM_l01(7) <= COREAPbSram_o1i;
when "1000" =>
CoreApbSram_L01(8) <= CoreApbSram_O1I;
when "1001" =>
CorEAPBSRAm_l01(9) <= CoreApbSram_O1I;
when "1010" =>
COREApbSram_l01(10) <= CoreAPBSRAM_o1i;
when "1011" =>
COREApbSram_l01(11) <= CoREAPBSRAm_o1i;
when "1100" =>
COReApbSram_l01(12) <= CoreApbSram_O1I;
when "1101" =>
COREApbSram_l01(13) <= CoreApbSraM_O1I;
when "1110" =>
COReApbSram_l01(14) <= CoreApbSrAM_O1I;
when "1111" =>
COREApbSram_l01(15) <= COREAPBSRam_o1i;
when others =>
null
;
end case;
case (CoREAPBSRAm_li0(12 downto 9)) is
when "0000" =>
CorEAPBSRAM_l0 <= COREAPBSram_lii;
when "0001" =>
COREAPBSRam_l0 <= COREApbSram_oii;
when "0010" =>
CorEAPBSRAm_l0 <= COREAPbSram_ili;
when "0011" =>
COReApbSram_l0 <= COREApbSram_lli;
when "0100" =>
CoREAPBSRAm_l0 <= CoREAPBSRAm_o1ol;
when "0101" =>
COreApbSram_l0 <= CoreApbSRAM_L1OL;
when "0110" =>
COReApbSram_l0 <= COReApbSram_i1OL;
when "0111" =>
COreApbSram_l0 <= CoreAPBSRAM_Ooll;
when "1000" =>
CoreAPBSRAm_l0 <= CoreAPBSRam_loll;
when "1001" =>
CoreAPBSRam_l0 <= CoREAPBSram_ioLL;
when "1010" =>
CorEAPBSram_l0 <= CoreApbSRAM_Olll;
when "1011" =>
COReApbSrAM_L0 <= COREApbSram_LLLL;
when "1100" =>
COREApbSram_L0 <= CorEAPBSram_illL;
when "1101" =>
COReApbSraM_L0 <= CorEAPBSram_oiLL;
when "1110" =>
CoreApbSRAM_l0 <= COReApbSraM_LILL;
when "1111" =>
CoreApBSRAm_l0 <= COreApbSram_IILL;
when others =>
null
;
end case;
when 4 =>
CoreApbSram_II0 <= "10";
CoreApbSrAM_O00 <= "10";
COREAPBSram_l00 <= "10";
CoREAPBSRAm_i00 <= "10";
CoreApbSRAM_O10 <= "10";
COReApbSram_l10 <= "10";
CoreApbSram_I10 <= "10";
CoREAPBSRam_oo1 <= "10";
CoreApbSraM_LO1 <= "10";
COREAPBSram_io1 <= "10";
CoreApbSram_OL1 <= "10";
CoreAPBSRAM_ll1 <= "10";
CoreApbSRAM_IL1 <= "10";
CoreApbSram_OI1 <= "10";
CoreApbSraM_LI1 <= "10";
CorEAPBSRAM_ii1 <= "10";
CoreApbSram_O0LL <= "00"&COREApbSram_li(9 downto 0);
CoreApbSRAM_L0Ll <= "00"&CoreApbSRAM_LI(9 downto 0);
CoreApBSRAM_I0ll <= "00"&CoreApbSraM_LI(9 downto 0);
CoreApbSraM_O1LL <= "00"&CoreAPBSRAM_Li(9 downto 0);
COReApbSram_l1LL <= "00"&CoREAPBSRAm_li(9 downto 0);
COREApbSram_i1lL <= "00"&CoreAPBSRAM_Li(9 downto 0);
CoreAPBSRAM_Ooil <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSram_LOIL <= "00"&COREAPbSram_li(9 downto 0);
COREApbSram_ioIL <= "00"&COREApbSram_li(9 downto 0);
CoreAPBSRAM_Olil <= "00"&CoreAPBSRAM_Li(9 downto 0);
COREAPBSram_llil <= "00"&CoreApbSRAM_LI(9 downto 0);
CoreAPBSRAM_ilil <= "00"&CoreApbSraM_LI(9 downto 0);
COREApbSram_oiiL <= "00"&CoreApbSrAM_LI(9 downto 0);
CoreApbSraM_LIIL <= "00"&COREApbSram_li(9 downto 0);
COREAPBSram_iiil <= "00"&CorEAPBSRAm_li(9 downto 0);
COREApbSram_o0il <= "00"&CoreApbSram_LI(9 downto 0);
CoreApbSram_L0IL <= "00"&COREApbSram_ii(9 downto 0);
CoreApbSRAM_I0Il <= "00"&COREAPBSram_ii(9 downto 0);
CoreApbSRAM_O1il <= "00"&COReApbSram_ii(9 downto 0);
COREAPBSRam_l1il <= "00"&CoREAPBSRAm_ii(9 downto 0);
COReApbSram_i1IL <= "00"&CoREAPBSRAm_ii(9 downto 0);
COREAPBSram_oo0l <= "00"&COREApbSram_ii(9 downto 0);
CoreApbSrAM_LO0L <= "00"&CoreApbSram_II(9 downto 0);
COREAPbSram_io0l <= "00"&CoreApbSram_II(9 downto 0);
COREAPBSRam_ol0l <= "00"&CoreApbSram_II(9 downto 0);
COreApbSram_lL0L <= "00"&CorEAPBSRAm_ii(9 downto 0);
CoreAPBSRAM_il0l <= "00"&COREAPBSRam_ii(9 downto 0);
CoreApbSrAM_OI0L <= "00"&CoreApbSRAM_II(9 downto 0);
CoreApBSRAM_LI0l <= "00"&COREAPBSRam_ii(9 downto 0);
CorEAPBSRAm_ii0l <= "00"&CoreApbSraM_II(9 downto 0);
COREApbSram_o00L <= "00"&COREApbSram_ii(9 downto 0);
CorEAPBSRAm_l00l <= "00"&CoreApbSraM_II(9 downto 0);
CoreAPBSRAM_i01(3 downto 0) <= COREAPBSram_o0(3 downto 0);
CoreApbSram_O11(3 downto 0) <= CoreApbSRAM_O0(7 downto 4);
CoreAPBSRAM_l11(3 downto 0) <= COREApbSram_o0(3 downto 0);
CorEAPBSRAM_i11(3 downto 0) <= CoreApbSrAM_O0(7 downto 4);
COReApbSram_ooOL(3 downto 0) <= CoreApbSRAM_O0(3 downto 0);
COReApbSram_loOL(3 downto 0) <= CoreAPBSRAM_o0(7 downto 4);
CoreApBSRAM_IOol(3 downto 0) <= CoreApbSraM_O0(3 downto 0);
CorEAPBSRAm_olol(3 downto 0) <= COREApbSram_o0(7 downto 4);
CoreApbSraM_LLOL(3 downto 0) <= CoreApbSram_O0(3 downto 0);
CoreApbSRAM_ILol(3 downto 0) <= COREApbSram_o0(7 downto 4);
COREAPBSRam_oiol(3 downto 0) <= CoREAPBSRAm_o0(3 downto 0);
CoreApBSRAM_Liol(3 downto 0) <= CorEAPBSRAM_o0(7 downto 4);
CoreApbSram_IIOL(3 downto 0) <= COReApbSram_o0(3 downto 0);
CoreAPBSRAM_o0ol(3 downto 0) <= CoreAPBSRAM_O0(7 downto 4);
COREAPbSram_l0ol(3 downto 0) <= CoreAPBSRAM_o0(3 downto 0);
COREApbSram_i0oL(3 downto 0) <= COREAPBSRam_o0(7 downto 4);
case (CoreApbSram_LI(12 downto 9)) is
when "0000" =>
CoreApbSram_O01(1 downto 0) <= COREApbSram_i0i&COreApbSram_i0I;
when "0001" =>
CorEAPBSRAm_o01(1 downto 0) <= CoREAPBSRAm_i0i&CoreAPBSRAM_I0i;
when "0010" =>
CoREAPBSRAm_o01(3 downto 2) <= CoREAPBSRam_i0i&CoreApBSRAM_I0i;
when "0011" =>
COREApbSram_o01(3 downto 2) <= CoreAPBSRAM_i0i&CoreApbSRAM_I0I;
when "0100" =>
CoreApbSram_O01(5 downto 4) <= CoreApbSram_I0I&COREApbSram_i0i;
when "0101" =>
CoreApbSram_O01(5 downto 4) <= CoreApbSraM_I0I&COREApbSram_i0I;
when "0110" =>
COREApbSram_o01(7 downto 6) <= COREAPBSram_i0i&CoREAPBSRAm_i0i;
when "0111" =>
COREAPBSRam_o01(7 downto 6) <= CoreApbSRAM_I0I&CoreApbSram_I0I;
when "1000" =>
CoreApbSrAM_O01(9 downto 8) <= COREApbSram_i0i&COREAPbSram_i0i;
when "1001" =>
CoreApbSram_O01(9 downto 8) <= COREAPBSram_i0i&CoreApbSRAM_I0I;
when "1010" =>
CoreAPBSRAM_o01(11 downto 10) <= CoREAPBSRAm_i0i&CoreApbSRAM_I0I;
when "1011" =>
CoreApbSram_O01(11 downto 10) <= COREAPBSram_i0i&CorEAPBSRAM_i0i;
when "1100" =>
CoreApBSRAM_O01(13 downto 12) <= CoreApbSraM_I0I&COREApbSram_i0i;
when "1101" =>
CoreApbSRAM_O01(13 downto 12) <= COREApbSram_i0I&COREApbSram_i0i;
when "1110" =>
COReApbSram_o01(15 downto 14) <= CoreApbSram_I0I&COreApbSram_I0I;
when "1111" =>
COreApbSram_O01(15 downto 14) <= COREAPBSram_i0i&CorEAPBSRAM_i0i;
when others =>
null
;
end case;
case (CoreApBSRAM_II(12 downto 9)) is
when "0000" =>
CoreApbSram_L01(1 downto 0) <= CoreApbSRAM_O1i&CoreApbSraM_O1I;
when "0001" =>
CoreAPBSRAM_l01(1 downto 0) <= CoreApbSram_O1I&COREApbSram_o1i;
when "0010" =>
CoreApbSraM_L01(3 downto 2) <= CoreApBSRAM_O1i&CoreAPBSRAM_o1i;
when "0011" =>
COREAPBSRam_l01(3 downto 2) <= CoreApbSRAM_O1i&CoreApbSrAM_O1I;
when "0100" =>
CoreApbSraM_L01(5 downto 4) <= COreApbSram_o1I&COREApbSram_o1i;
when "0101" =>
COREAPBSram_l01(5 downto 4) <= COREAPBSram_o1i&CoREAPBSRAm_o1i;
when "0110" =>
COREAPBSram_l01(7 downto 6) <= COREAPbSram_o1i&COReApbSram_O1I;
when "0111" =>
COREApbSram_L01(7 downto 6) <= COReApbSraM_O1I&CoreApbSRAM_o1i;
when "1000" =>
CoreApbSRAM_l01(9 downto 8) <= CoreApBSRAM_O1i&CoreApbSraM_O1I;
when "1001" =>
COREApbSram_l01(9 downto 8) <= CoreApbSram_O1I&COReApbSram_o1I;
when "1010" =>
COReApbSram_l01(11 downto 10) <= COREApbSram_o1i&COREAPbSram_o1i;
when "1011" =>
CoreApbSram_L01(11 downto 10) <= CoreApbSram_O1I&COreApbSram_o1I;
when "1100" =>
CoREAPBSRAm_l01(13 downto 12) <= COReApbSram_o1I&COReApbSram_o1I;
when "1101" =>
CoreApbSram_L01(13 downto 12) <= COReApbSram_o1I&COREAPBSRam_o1i;
when "1110" =>
COREApbSram_l01(15 downto 14) <= COreApbSram_O1I&CoreApbSram_O1I;
when "1111" =>
CoreAPBSRAM_l01(15 downto 14) <= CoreAPBSRAM_o1i&CoreApbSrAM_O1I;
when others =>
null
;
end case;
case (CoreApbSram_LI0(12 downto 9)) is
when "0000" =>
COREApbSram_l0 <= CorEAPBSRAm_oii(3 downto 0)&CoreApbSram_LII(3 downto 0);
when "0001" =>
COREApbSram_l0 <= COREApbSram_oii(3 downto 0)&CoreAPBSRAM_lii(3 downto 0);
when "0010" =>
COREAPBSRam_l0 <= CoreApbSraM_LLI(3 downto 0)&COReApbSram_ilI(3 downto 0);
when "0011" =>
CoREAPBSRAm_l0 <= CoREAPBSRAm_lli(3 downto 0)&COREApbSram_ili(3 downto 0);
when "0100" =>
COREAPBSRam_l0 <= COREApbSram_l1oL(3 downto 0)&CoreAPBSRAM_o1ol(3 downto 0);
when "0101" =>
CoREAPBSRAm_l0 <= CoreApBSRAM_L1ol(3 downto 0)&COREApbSram_o1oL(3 downto 0);
when "0110" =>
CoreApbSrAM_L0 <= CoreApbSrAM_OOLL(3 downto 0)&CoREAPBSRAm_i1ol(3 downto 0);
when "0111" =>
CoreApbSram_L0 <= COReApbSram_ooLL(3 downto 0)&COREApbSram_i1oL(3 downto 0);
when "1000" =>
COREApbSram_l0 <= COREAPbSram_ioll(3 downto 0)&CoREAPBSRam_loll(3 downto 0);
when "1001" =>
COREApbSram_l0 <= CoreAPBSRAM_ioll(3 downto 0)&COREAPbSram_loll(3 downto 0);
when "1010" =>
COREApbSram_l0 <= COreApbSram_LLLL(3 downto 0)&CoreAPBSRAM_olll(3 downto 0);
when "1011" =>
CoreApbSRAM_L0 <= COREApbSram_llLL(3 downto 0)&CoreApbSraM_OLLL(3 downto 0);
when "1100" =>
CoreApbSraM_L0 <= COreApbSram_OILL(3 downto 0)&CoreApBSRAM_ILll(3 downto 0);
when "1101" =>
COREAPbSram_l0 <= COREAPBSram_oill(3 downto 0)&CoreApbSRAM_ILLl(3 downto 0);
when "1110" =>
CoREAPBSRAm_l0 <= CoreAPBSRAM_Iill(3 downto 0)&CoreApbSrAM_LILL(3 downto 0);
when "1111" =>
CoreAPBSRAM_L0 <= COREAPBSram_iill(3 downto 0)&CoreApbSRAM_LIll(3 downto 0);
when others =>
null
;
end case;
when 2 =>
COreApbSram_iI0 <= "01";
CoreApbSram_O00 <= "01";
CoreAPBSRAM_l00 <= "01";
CorEAPBSRAM_i00 <= "01";
COReApbSram_o10 <= "01";
CoreApbSRAM_L10 <= "01";
COREAPBSRam_i10 <= "01";
CoreApbSram_OO1 <= "01";
CoreApbSRAM_LO1 <= "01";
COREApbSram_io1 <= "01";
CoreApbSrAM_OL1 <= "01";
CoreApBSRAM_Ll1 <= "01";
CorEAPBSRAm_il1 <= "01";
CoreApbSram_OI1 <= "01";
COReApbSram_li1 <= "01";
COREApbSram_ii1 <= "01";
CoreAPBSRAM_o0ll <= '0'&COReApbSram_lI(10 downto 0);
COREApbSram_l0LL <= '0'&CoreApbSram_LI(10 downto 0);
COREAPBSRam_i0ll <= '0'&COreApbSram_lI(10 downto 0);
CoreApbSram_O1LL <= '0'&CoreApbSRAM_LI(10 downto 0);
CorEAPBSRAM_l1ll <= '0'&COreApbSram_lI(10 downto 0);
CoreApBSRAM_I1ll <= '0'&COREAPBSRam_li(10 downto 0);
COREAPBSram_ooil <= '0'&CoreApbSraM_LI(10 downto 0);
COREAPBSram_loil <= '0'&COREAPBSram_li(10 downto 0);
COReApbSram_ioIL <= '0'&CoreAPBSRAM_li(10 downto 0);
COREAPBSram_olil <= '0'&COREApbSram_li(10 downto 0);
CoreApbSram_LLIL <= '0'&CoreApbSraM_LI(10 downto 0);
COREAPBSram_ilil <= '0'&COReApbSram_li(10 downto 0);
CoreApbSRAM_OIIl <= '0'&CoreApbSraM_LI(10 downto 0);
CoreAPBSRAM_liil <= '0'&COREAPBSram_li(10 downto 0);
CoreAPBSRAM_Iiil <= '0'&CoreApbSram_LI(10 downto 0);
COREAPBSram_o0il <= '0'&COReApbSram_li(10 downto 0);
COreApbSram_l0IL <= '0'&CorEAPBSRAM_ii(10 downto 0);
COREApbSram_i0IL <= '0'&CoreApbSRAM_II(10 downto 0);
CoreApbSraM_O1IL <= '0'&CoreAPBSRAM_ii(10 downto 0);
CorEAPBSRAm_l1il <= '0'&CoreAPBSRAM_Ii(10 downto 0);
COREAPbSram_i1il <= '0'&CorEAPBSRAm_ii(10 downto 0);
COREAPBSram_oo0l <= '0'&COREApbSram_ii(10 downto 0);
CoREAPBSRAm_lo0l <= '0'&CoreAPBSRAM_ii(10 downto 0);
COREAPbSram_io0l <= '0'&COREAPBSRam_ii(10 downto 0);
CoreAPBSRAM_ol0l <= '0'&CoREAPBSRAm_ii(10 downto 0);
CoreAPBSRAM_ll0l <= '0'&CoreApBSRAM_II(10 downto 0);
CorEAPBSRAM_il0l <= '0'&CoreApbSrAM_II(10 downto 0);
CorEAPBSRAm_oi0l <= '0'&COREAPbSram_ii(10 downto 0);
COReApbSram_li0L <= '0'&COREApbSram_ii(10 downto 0);
CoreApbSram_II0L <= '0'&COREApbSram_ii(10 downto 0);
COREAPbSram_o00l <= '0'&COREApbSram_ii(10 downto 0);
COReApbSram_l00L <= '0'&CoreApbSram_II(10 downto 0);
CoreApbSram_I01(1 downto 0) <= CoreAPBSRAM_o0(1 downto 0);
COReApbSram_o11(1 downto 0) <= CoreAPBSRAM_o0(3 downto 2);
COREAPBSram_l11(1 downto 0) <= COReApbSram_o0(5 downto 4);
CorEAPBSRAM_i11(1 downto 0) <= COREAPBSram_o0(7 downto 6);
CorEAPBSRAM_oool(1 downto 0) <= CoreApbSram_O0(1 downto 0);
CoreApbSrAM_LOOL(1 downto 0) <= CoreApbSram_O0(3 downto 2);
CoreAPBSRAM_iool(1 downto 0) <= COREAPbSram_o0(5 downto 4);
CoreApBSRAM_Olol(1 downto 0) <= COREApbSram_o0(7 downto 6);
CoreApbSram_LLOL(1 downto 0) <= COREApbSram_o0(1 downto 0);
COreApbSram_iLOL(1 downto 0) <= COREApbSram_o0(3 downto 2);
CoreApbSram_OIOL(1 downto 0) <= CoreApbSram_O0(5 downto 4);
CoreAPBSRAM_liol(1 downto 0) <= COREApbSram_o0(7 downto 6);
COreApbSram_IIOL(1 downto 0) <= COREAPBSRam_o0(1 downto 0);
CoreApbSram_O0OL(1 downto 0) <= COREApbSram_o0(3 downto 2);
CorEApbSrAM_L0ol(1 downto 0) <= CoreApBSRAM_o0(5 downto 4);
CoreAPBSRAM_i0ol(1 downto 0) <= COreApbSram_o0(7 downto 6);
case (COREApbSram_li(12 downto 9)) is
when "0000" =>
CoREAPBSRAm_o01(3 downto 0) <= COREAPBSram_i0i&COREApbSram_i0i&CoreApbSRAM_I0i&COREApbSram_i0i;
when "0001" =>
COREApbSram_o01(3 downto 0) <= COREApbSram_i0i&COREAPBSram_i0i&CoreApbSRAM_I0i&CoreApbSram_I0I;
when "0010" =>
CoreApbSram_O01(3 downto 0) <= CoreApBSRAM_I0i&CorEAPBSRAM_i0i&COReApbSram_i0I&COREAPBSRam_i0i;
when "0011" =>
COREApbSram_o01(3 downto 0) <= COREAPbSram_i0i&COREAPbSram_i0i&CoreApBSRAM_I0i&CoreApbSram_I0I;
when "0100" =>
CoreApbSRAM_O01(7 downto 4) <= CorEAPBSRAM_i0i&COREAPBSRam_i0i&CoreApbSraM_I0I&COReApbSram_i0I;
when "0101" =>
COREApbSram_o01(7 downto 4) <= CoreApbSraM_I0I&COREApbSram_i0I&CoreApbSRAM_I0I&COREAPBSram_i0i;
when "0110" =>
COREApbSram_o01(7 downto 4) <= COREApbSram_i0i&COREApbSram_i0i&CoreApbSrAM_I0I&COREApbSram_i0i;
when "0111" =>
COReApbSram_o01(7 downto 4) <= CoreApBSRAM_I0i&CoreApBSRAM_I0i&COREAPBSram_i0i&CoreApbSraM_I0I;
when "1000" =>
CoreApBSRAM_O01(11 downto 8) <= COREApbSram_i0i&COREAPBSram_i0i&COReApbSraM_I0I&COREAPbSram_i0i;
when "1001" =>
CoreAPBSRAM_o01(11 downto 8) <= COREAPBSram_i0i&COREAPBSram_i0i&CoreApbSram_I0I&CoREAPBSRam_i0i;
when "1010" =>
CoreApbSrAM_O01(11 downto 8) <= CoreApbSram_I0I&COReApbSram_i0I&CoreApbSRAM_I0I&COREAPBSram_i0i;
when "1011" =>
COREApbSram_o01(11 downto 8) <= COREAPBSram_i0i&COREAPBSram_i0i&CoreApbSraM_I0I&COREAPbSram_i0i;
when "1100" =>
CorEAPBSRAM_o01(15 downto 12) <= COREApbSram_i0i&COREAPBSRam_i0i&COreApbSram_i0I&CoREAPBSRAm_i0i;
when "1101" =>
CoreApbSram_O01(15 downto 12) <= CoreApBSRAM_I0i&CoreApbSram_I0I&CoreApbSrAM_I0I&CoREAPBSRAm_i0i;
when "1110" =>
CoreApbSRAM_O01(15 downto 12) <= CoreApbSram_I0I&COreApbSram_I0I&CoREAPBSRAm_i0i&COREAPbSram_i0i;
when "1111" =>
CorEAPBSRAM_o01(15 downto 12) <= COREApbSram_i0i&COREAPBSRam_i0i&COReApbSram_i0I&CoreApbSRAM_I0i;
when others =>
null
;
end case;
case (COREApbSram_ii(12 downto 9)) is
when "0000" =>
CoreApbSram_L01(3 downto 0) <= CoreApbSram_O1I&COREApbSram_o1I&CoreAPBSRAM_O1i&COReApbSram_o1I;
when "0001" =>
COREAPBSram_l01(3 downto 0) <= COreApbSram_O1I&COReApbSram_o1I&CoreApbSraM_O1I&CoreApbSRAM_O1I;
when "0010" =>
CoreApBSRAM_L01(3 downto 0) <= COREAPBSram_o1i&COREAPBSRam_o1i&COREApbSram_o1i&CoreApbSRAM_O1I;
when "0011" =>
CoreApbSRAM_L01(3 downto 0) <= COREApbSram_o1i&COREAPBSRam_o1i&CoreApbSraM_O1I&COREAPBSram_o1i;
when "0100" =>
COreApbSram_l01(7 downto 4) <= CoreApbSram_O1I&COReApbSram_o1I&COreApbSram_o1I&CoreApBSRAM_O1i;
when "0101" =>
CoreApBSRAM_L01(7 downto 4) <= COREAPBSram_o1i&COREAPBSram_o1i&CoreApbSraM_O1I&CorEAPBSRAM_o1i;
when "0110" =>
CoreAPBSRAM_l01(7 downto 4) <= COREAPBSram_o1i&CoreAPBSRAM_o1i&COREApbSram_o1I&CoreApBSRAM_O1i;
when "0111" =>
COREAPBSRam_l01(7 downto 4) <= COREAPBSRam_o1i&CoreApbSRAM_O1I&COREAPBSram_o1i&CoreApbSram_O1I;
when "1000" =>
CoreApbSRAM_L01(11 downto 8) <= CoreApbSram_O1I&COREApbSram_o1i&CoreApbSraM_O1I&CoREAPBSRAm_o1i;
when "1001" =>
CoREAPBSRAm_l01(11 downto 8) <= COreApbSram_o1I&COREAPbSram_o1i&COREApbSram_o1i&CoreApbSRAM_O1i;
when "1010" =>
CoREAPBSRam_l01(11 downto 8) <= CoreApbSraM_O1I&COREApbSram_o1i&CoreApbSram_O1I&CorEAPBSRAM_o1i;
when "1011" =>
CoreApBSRAM_L01(11 downto 8) <= COREApbSram_o1i&CorEAPBSRAm_o1i&COREAPbSram_o1i&CoreApbSram_O1I;
when "1100" =>
CoreApbSrAM_L01(15 downto 12) <= CoreApbSraM_O1I&COReApbSram_o1I&CoreApbSram_O1I&CoreAPBSRAM_o1i;
when "1101" =>
CoreApbSRAM_L01(15 downto 12) <= COREApbSram_o1i&COREAPBSram_o1i&COReApbSram_o1I&CorEAPBSRAM_o1i;
when "1110" =>
CoreAPBSRAM_L01(15 downto 12) <= CoreApbSram_O1I&COREApbSram_o1i&CoreApbSRAM_O1I&COREAPBSram_o1i;
when "1111" =>
CorEAPBSRAM_l01(15 downto 12) <= CoreApbSraM_O1I&CoreApbSram_O1I&CoreApbSRAM_O1i&COREAPBSram_o1i;
when others =>
null
;
end case;
case (COReApbSram_li0(12 downto 9)) is
when "0000" =>
CoreApbSrAM_L0 <= COreApbSram_LLI(1 downto 0)&COREAPBSram_ili(1 downto 0)&COREAPBSram_oii(1 downto 0)&CoreApbSram_LII(1 downto 0);
when "0001" =>
COREAPbSram_l0 <= COREAPbSram_lli(1 downto 0)&CoreApbSram_ILI(1 downto 0)&CorEAPBSRAM_oii(1 downto 0)&COREAPBSram_lii(1 downto 0);
when "0010" =>
COREApbSram_l0 <= COREAPBSram_lli(1 downto 0)&CoREAPBSRAm_ili(1 downto 0)&COREApbSram_oii(1 downto 0)&CoreApbSrAM_LII(1 downto 0);
when "0011" =>
CorEAPBSRAM_l0 <= CorEAPBSRAM_lli(1 downto 0)&COREApbSram_ili(1 downto 0)&CoREAPBSRAm_oii(1 downto 0)&CorEAPBSRAm_lii(1 downto 0);
when "0100" =>
COREApbSram_l0 <= CoreApbSRAM_OOll(1 downto 0)&CoreApbSram_I1OL(1 downto 0)&COREApbSram_l1OL(1 downto 0)&CoreApbSraM_O1OL(1 downto 0);
when "0101" =>
COREAPBSRam_l0 <= CoreAPBSRAM_ooll(1 downto 0)&CoREAPBSRAm_i1ol(1 downto 0)&CoreApBSRAM_L1ol(1 downto 0)&CoreApbSRAM_O1ol(1 downto 0);
when "0110" =>
CoreAPBSRAM_l0 <= COREApbSram_oolL(1 downto 0)&COREApbSram_i1oL(1 downto 0)&COREAPbSram_l1ol(1 downto 0)&CoreAPBSRAM_o1ol(1 downto 0);
when "0111" =>
COREApbSram_l0 <= CoreApbSraM_OOLL(1 downto 0)&CoreApbSraM_I1OL(1 downto 0)&CoreApbSrAM_L1OL(1 downto 0)&CoreApbSraM_O1OL(1 downto 0);
when "1000" =>
CoreAPBSRAM_l0 <= CoreApbSram_LLLL(1 downto 0)&CoreAPBSRAM_Olll(1 downto 0)&CoREAPBSRAm_ioll(1 downto 0)&CoreApbSrAM_LOLL(1 downto 0);
when "1001" =>
CoreApbSRAM_L0 <= CoreApBSRAM_Llll(1 downto 0)&COREAPBSram_olll(1 downto 0)&CoREAPBSRAm_ioll(1 downto 0)&CoreApBSRAM_Loll(1 downto 0);
when "1010" =>
CorEAPBSRAm_l0 <= COREAPBSram_llll(1 downto 0)&CoreApbSram_OLLL(1 downto 0)&CoreApbSRAM_IOLl(1 downto 0)&CoreApBSRAM_loll(1 downto 0);
when "1011" =>
COREApbSram_L0 <= CoreApbSRAM_Llll(1 downto 0)&CoreApBSRAm_olll(1 downto 0)&COreApbSrAM_IOLl(1 downto 0)&CoreAPBSRam_lolL(1 downto 0);
when "1100" =>
CoreAPBSRam_l0 <= CoreApBSRAm_iill(1 downto 0)&COREApbSram_LILL(1 downto 0)&COREApbSram_OILL(1 downto 0)&CoreApbSRAM_ILll(1 downto 0);
when "1101" =>
COREApbSram_l0 <= CoreApbSrAM_IILL(1 downto 0)&CoreAPBSRAM_lill(1 downto 0)&COREAPBSram_oill(1 downto 0)&CoreAPBSRAM_Illl(1 downto 0);
when "1110" =>
CoreApbSRAM_L0 <= COREAPBSram_iill(1 downto 0)&COREApbSram_lilL(1 downto 0)&COREAPBSram_oill(1 downto 0)&CoreApbSRAM_ILLL(1 downto 0);
when "1111" =>
CoreAPBSRAM_L0 <= COREAPBSRam_iill(1 downto 0)&COREAPBSram_lill(1 downto 0)&COreApbSram_oILL(1 downto 0)&CoreApbSram_ILLL(1 downto 0);
when others =>
null
;
end case;
when others =>
COReApbSram_iI0 <= "00";
CoreApbSrAM_O00 <= "00";
CoREAPBSRAm_l00 <= "00";
CoreAPBSRAM_I00 <= "00";
CorEAPBSRAM_o10 <= "00";
CorEAPBSRAM_l10 <= "00";
CoREAPBSRam_i10 <= "00";
COREApbSram_oo1 <= "00";
CoreApbSram_LO1 <= "00";
COREAPBSram_io1 <= "00";
COREAPBSRam_ol1 <= "00";
CoREAPBSRAm_ll1 <= "00";
COreApbSram_IL1 <= "00";
CoreAPBSRAM_oi1 <= "00";
CorEAPBSRAm_li1 <= "00";
CoreAPBSRAM_ii1 <= "00";
COREApbSram_o0lL <= CoreApbSRAM_LI(11 downto 0);
COREAPBSram_l0ll <= CoreApBSRAM_Li(11 downto 0);
CoreApbSRAM_I0Ll <= CoreAPBSRAM_li(11 downto 0);
CorEAPBSRAM_o1ll <= COReApbSram_li(11 downto 0);
COREAPBSRam_l1ll <= CoreApBSRAM_LI(11 downto 0);
COReApbSram_i1LL <= COreApbSram_lI(11 downto 0);
COREAPBSram_ooil <= CoreApbSraM_LI(11 downto 0);
CoreApbSram_LOIL <= COREApbSram_li(11 downto 0);
COREApbSram_ioIL <= CoreApBSRAM_LI(11 downto 0);
COREApbSram_oliL <= COReApbSram_li(11 downto 0);
CoreApbSRAM_LLIl <= CoreApbSram_LI(11 downto 0);
COREAPbSram_ilil <= CoreAPBSRAM_li(11 downto 0);
CoreApbSram_OIIL <= CoreApbSrAM_LI(11 downto 0);
COreApbSram_lIIL <= COREAPBSram_li(11 downto 0);
CoreApbSraM_IIIL <= COreApbSram_LI(11 downto 0);
COREAPBSram_o0il <= CoreApbSRAM_LI(11 downto 0);
COREAPbSram_l0il <= CoreApbSram_II(11 downto 0);
CoreApbSRAM_I0Il <= CoreApbSraM_II(11 downto 0);
CoreAPBSRAM_o1il <= CoreAPBSRAM_Ii(11 downto 0);
COREApbSram_l1il <= COREApbSram_ii(11 downto 0);
CoreApbSrAM_I1IL <= CoreAPBSRAM_ii(11 downto 0);
CoREAPBSRam_oo0l <= CoreApbSRAM_II(11 downto 0);
COreApbSram_LO0L <= COreApbSram_iI(11 downto 0);
CoreAPBSRAM_io0l <= COREAPbSram_ii(11 downto 0);
COreApbSram_OL0L <= CoreApBSRAM_Ii(11 downto 0);
COREAPBSRam_ll0l <= CorEAPBSRAM_ii(11 downto 0);
COReApbSram_il0L <= COREApbSram_ii(11 downto 0);
CoreApbSRAM_OI0L <= CoreApbSraM_II(11 downto 0);
COREAPBSram_li0l <= COreApbSram_iI(11 downto 0);
CoreApbSrAM_II0L <= CoreApbSRAM_II(11 downto 0);
COREApbSram_o00l <= CoreApbSram_II(11 downto 0);
CoreApBSRAM_L00l <= CorEAPBSRAm_ii(11 downto 0);
COReApbSram_i01(0) <= CoreApbSram_O0(0);
COREAPBSram_o11(0) <= CoreApbSram_O0(1);
CoreAPBSRAM_l11(0) <= COreApbSram_o0(2);
COREApbSram_i11(0) <= CoreApbSraM_O0(3);
COreApbSram_oOOL(0) <= CoreApBSRAM_O0(4);
COReApbSram_loOL(0) <= COREAPBSRam_o0(5);
CoreApbSram_IOOL(0) <= CoreApbSRAM_O0(6);
CoreApbSram_OLOL(0) <= COReApbSram_o0(7);
COReApbSram_llOL(0) <= CoREAPBSRAm_o0(0);
CoreApbSraM_ILOL(0) <= COREAPbSram_o0(1);
CoreApBSRAM_Oiol(0) <= COREApbSram_o0(2);
COReApbSram_liOL(0) <= CoreAPBSRAM_o0(3);
CoreApbSram_IIOL(0) <= CoreApbSram_O0(4);
CoreApBSRAM_O0ol(0) <= CoreApbSRAM_O0(5);
COREAPBSram_l0ol(0) <= CorEAPBSRAM_o0(6);
CoreApBSRAM_I0ol(0) <= CoreApBSRAM_O0(7);
case (COREAPBSram_li(12 downto 9)) is
when "0000" =>
CoreApbSrAM_O01(7 downto 0) <= CoreApbSram_I0I&CoreApbSraM_I0I&COREAPbSram_i0i&CoreApbSram_I0I&CoreAPBSRAM_i0i&COREApbSram_i0I&CoreAPBSRAM_I0i&COReApbSram_i0I;
when "0001" =>
CoreApbSraM_O01(7 downto 0) <= COreApbSram_i0I&COREApbSram_i0i&CoreApbSram_I0I&COREAPBSRam_i0i&COReApbSram_i0I&CorEAPBSRAM_i0i&COREApbSram_i0I&CoreApbSRAM_I0i;
when "0010" =>
COREAPBSRam_o01(7 downto 0) <= CoREAPBSRAm_i0i&COREAPBSram_i0i&CoreApbSram_I0I&COREAPBSRam_i0i&COReApbSram_i0I&CoreAPBSRAM_I0i&COREAPBSram_i0i&CoreApbSraM_I0I;
when "0011" =>
CoreApbSRAM_O01(7 downto 0) <= COREAPBSram_i0i&COREAPBSram_i0i&CoreApbSram_I0I&COREAPbSram_i0i&CoreApbSrAM_I0I&COREApbSram_i0i&CoreApBSRAM_I0i&COReApbSram_i0I;
when "0100" =>
CoreApbSrAM_O01(7 downto 0) <= CoreApbSraM_I0I&CoreApbSraM_I0I&COREAPBSram_i0i&COReApbSram_i0I&CoREAPBSRAm_i0i&CoreApbSraM_I0I&CorEAPBSRAM_i0i&COREApbSram_i0i;
when "0101" =>
CoreApbSRAM_O01(7 downto 0) <= COReApbSram_i0I&COREAPBSram_i0i&CoreApbSraM_I0I&COREApbSram_i0I&CoreApbSRAM_I0I&COREApbSram_i0i&CoreApbSraM_I0I&COREAPBSram_i0i;
when "0110" =>
CoreApbSrAM_O01(7 downto 0) <= COREApbSram_i0I&COREAPBSram_i0i&CoreApbSram_I0I&CoreAPBSRAM_i0i&COREApbSram_i0i&CoreApBSRAM_I0i&COREApbSram_i0i&CoreApbSraM_I0I;
when "0111" =>
CoreApbSRAM_O01(7 downto 0) <= COREApbSram_i0i&COREApbSram_i0i&CoreApbSRAM_I0I&COREApbSram_i0I&CoreApbSram_I0I&COREAPBSram_i0i&COReApbSram_i0I&CoreApbSRAM_I0I;
when "1000" =>
CorEAPBSRAM_o01(15 downto 8) <= CoreApbSram_I0I&COReApbSram_i0I&COREAPBSRam_i0i&COreApbSram_I0I&CoreAPBSRAM_i0i&CoreApbSram_I0I&CoreApbSRAM_I0i&COREAPbSram_i0i;
when "1001" =>
COreApbSram_o01(15 downto 8) <= COreApbSram_I0I&COReApbSram_i0I&CoreAPBSRAM_I0i&COReApbSram_i0I&CoreApBSRAM_I0i&COREApbSram_i0i&CoreApbSRAM_I0i&COREApbSram_i0i;
when "1010" =>
CoreApbSRAM_O01(15 downto 8) <= COREAPBSram_i0i&CoreApbSRAM_I0i&CorEAPBSRAM_i0i&CoreApbSram_I0I&CoreApBSRAM_I0i&COREApbSram_i0i&CoreApbSram_I0I&CoreAPBSRAM_i0i;
when "1011" =>
CorEAPBSRam_o01(15 downto 8) <= CoreApbSRAM_I0i&CoreApBSRAM_i0i&CoreApbSRAM_I0i&COREAPbSram_i0I&COREAPbSram_i0I&CoreApbSRAM_I0i&COreApbSrAM_I0I&COreApbSraM_I0I;
when "1100" =>
CoreAPBSRAM_o01(15 downto 8) <= COREAPbSram_i0i&COReApbSram_i0I&CoreApbSram_I0I&CoreApbSram_I0I&CoreApbSram_I0I&COREAPBSram_i0i&CoreAPBSRAM_i0i&CoreApbSrAM_I0I;
when "1101" =>
CoreApBSRAM_O01(15 downto 8) <= CoreApbSram_I0I&COreApbSram_i0I&COREAPBSram_i0i&CoreAPBSRAM_I0i&CoreApbSram_I0I&CoreAPBSRAM_i0i&CoreApbSraM_I0I&COREAPBSram_i0i;
when "1110" =>
CoREAPBSRam_o01(15 downto 8) <= COREAPBSram_i0i&COREApbSram_i0i&CorEAPBSRAM_i0i&CoreApbSraM_I0I&COREAPBSRam_i0i&COREAPBSRam_i0i&CoreApbSram_I0I&CoreApBSRAM_I0i;
when "1111" =>
COREAPBSram_o01(15 downto 8) <= COREAPBSram_i0i&COREAPBSram_i0i&COreApbSram_I0I&COREApbSram_i0i&CoreApbSram_I0I&COREApbSram_i0i&CoreApbSRAM_I0I&COREApbSram_i0i;
when others =>
null
;
end case;
case (CoreApBSRAM_Ii(12 downto 9)) is
when "0000" =>
CoreApBSRAM_L01(7 downto 0) <= COREAPBSram_o1i&COREAPbSram_o1i&CoreApbSRAM_O1i&COREAPBSram_o1i&CoreApbSraM_O1I&CoreApbSRAM_O1i&COREApbSram_o1i&CoreApbSraM_O1I;
when "0001" =>
COREAPBSRam_l01(7 downto 0) <= COreApbSram_O1I&COREApbSram_o1I&CoreAPBSRAM_O1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&CoreApbSraM_O1I&CoREAPBSRam_o1i&COReApbSram_o1I;
when "0010" =>
COREApbSram_l01(7 downto 0) <= CoREAPBSRAm_o1i&COREAPBSram_o1i&CoreApbSram_O1I&COREAPbSram_o1i&CoreApbSrAM_O1I&COREAPbSram_o1i&CoreApbSram_O1I&COREAPBSram_o1i;
when "0011" =>
CorEAPBSRAm_l01(7 downto 0) <= CoreAPBSRAM_o1i&CoreAPBSRAM_o1i&COREApbSram_o1I&CoreAPBSRAM_O1i&COReApbSram_o1I&CoreApbSRAM_O1i&COreApbSram_o1I&CoreApbSrAM_O1I;
when "0100" =>
CoreApBSRAM_L01(7 downto 0) <= CoreAPBSRAM_o1i&CorEAPBSRAM_o1i&COREApbSram_o1I&CoreApbSRAM_O1i&COREApbSram_o1i&CoreAPBSRAM_O1i&COREApbSram_o1i&CoreApbSRAM_O1I;
when "0101" =>
COREApbSram_l01(7 downto 0) <= COreApbSram_o1I&CoreApbSram_O1I&CoREAPBSRAm_o1i&CoreApbSram_O1I&COREAPBSRam_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&COREApbSram_o1i;
when "0110" =>
COReApbSram_l01(7 downto 0) <= CoreApbSraM_O1I&CoreApbSram_O1I&CoreAPBSRAM_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&CoreApbSram_O1I&CoreAPBSRAM_o1i&COReApbSram_o1I;
when "0111" =>
COREApbSram_l01(7 downto 0) <= CoreApbSraM_O1I&CoreApbSram_O1I&COREAPBSram_o1i&CoreApbSrAM_O1I&COREAPBSram_o1i&CoreApbSraM_O1I&CoreAPBSRAM_o1i&CoreApbSram_O1I;
when "1000" =>
COREAPbSram_l01(15 downto 8) <= CoreApbSraM_O1I&CoreApbSraM_O1I&CorEAPBSRAM_o1i&CoreApbSram_O1I&CoreApbSRAM_O1I&CoreApbSram_O1I&CoreApbSRAM_O1i&COREApbSram_o1i;
when "1001" =>
COREApbSram_l01(15 downto 8) <= CoreApbSram_O1I&COREAPbSram_o1i&COreApbSram_O1I&CoreApBSRAM_O1i&COREAPbSram_o1i&CoreApbSraM_O1I&COREAPbSram_o1i&CoreApbSrAM_O1I;
when "1010" =>
COREAPBSram_l01(15 downto 8) <= COREApbSram_o1i&COREAPBSram_o1i&COreApbSram_O1I&CorEAPBSRAM_o1i&COreApbSram_o1I&CoreApBSRAM_O1i&COREAPbSram_o1i&CoreApbSraM_O1I;
when "1011" =>
COReApbSram_l01(15 downto 8) <= CoreApbSraM_O1I&CoreAPBSRAM_o1i&COREAPBSram_o1i&CoreApbSraM_O1I&CorEAPBSRAM_o1i&COreApbSram_o1I&CoreApBSRAM_O1i&COREApbSram_o1i;
when "1100" =>
CoreApbSrAM_L01(15 downto 8) <= COREAPBSram_o1i&COREAPBSRam_o1i&CoreApbSrAM_O1I&COREApbSram_o1i&CoreApbSraM_O1I&COREAPBSram_o1i&COreApbSram_o1I&CoreApBSRAM_O1i;
when "1101" =>
COreApbSram_l01(15 downto 8) <= CoreApbSram_O1I&COREApbSram_o1i&CoreApbSram_O1I&COREAPBSRam_o1i&COReApbSram_o1I&CoREAPBSRAM_o1i&COREApbSram_o1I&CoreApbSraM_O1I;
when "1110" =>
CoreApbSram_L01(15 downto 8) <= CoREAPBSRAm_o1i&CoREAPBSRAm_o1i&CoreApbSram_O1I&COREAPbSram_o1i&COreApbSram_o1I&CoREAPBSRAm_o1i&COreApbSram_o1I&CoreAPBSRAM_o1i;
when "1111" =>
CoreApbSrAM_L01(15 downto 8) <= CoreAPBSRAM_o1i&CoreAPBSRAM_o1i&COReApbSram_o1I&CoreApbSrAM_O1I&COREAPbSram_o1i&CoreAPBSRAM_O1i&COREApbSram_o1i&CoreApbSram_O1I;
when others =>
null
;
end case;
case (COreApbSram_LI0(12 downto 9)) is
when "0000" =>
COReApbSram_l0 <= COREApbSram_oolL(0)&CoREAPBSRam_i1ol(0)&COReApbSram_l1OL(0)&CoREAPBSRAm_o1ol(0)&CoreApbSram_LLI(0)&CoreApbSraM_ILI(0)&COREAPBSram_oii(0)&CoreApBSRAM_LIi(0);
when "0001" =>
CoreApbSraM_L0 <= COREApbSram_ooll(0)&CoreApbSrAM_I1OL(0)&CoreAPBSRAM_L1ol(0)&COreApbSram_o1OL(0)&CoREAPBSRAm_lli(0)&CoreApbSram_ILI(0)&COREApbSram_oii(0)&COreApbSram_lII(0);
when "0010" =>
COREApbSram_l0 <= COREAPBSram_ooll(0)&COREAPBSram_i1ol(0)&COREApbSram_l1oL(0)&COREAPBSram_o1ol(0)&CoreApbSram_LLI(0)&COReApbSram_iLI(0)&COreApbSram_oII(0)&COREAPbSram_lii(0);
when "0011" =>
CoreApbSrAM_L0 <= CoreApbSraM_OOLL(0)&CoreAPBSRAM_i1ol(0)&CorEAPBSRAm_l1ol(0)&CoreAPBSRAM_o1ol(0)&CoreAPBSRAM_Lli(0)&CoreAPBSRAM_ili(0)&CoreApBSRAM_Oii(0)&COreApbSram_lII(0);
when "0100" =>
COREAPBSram_l0 <= COreApbSram_oOLL(0)&CoreApbSram_I1OL(0)&COreApbSram_l1OL(0)&CoreApbSram_O1OL(0)&COREAPBSram_lli(0)&CoreApbSram_ILI(0)&CoreApbSRAM_OII(0)&COREAPBSram_lii(0);
when "0101" =>
CoreApbSraM_L0 <= CoreApBSRAM_Ooll(0)&COREAPBSram_i1ol(0)&CoreApbSraM_L1OL(0)&CoreApbSram_O1OL(0)&CoREAPBSRAm_lli(0)&COReApbSram_iLI(0)&COREApbSram_oii(0)&CoreAPBSRAM_lii(0);
when "0110" =>
COReApbSram_l0 <= COREAPbSram_ooll(0)&COREAPbSram_i1ol(0)&CoreAPBSRAM_l1ol(0)&COREApbSram_o1OL(0)&CoreApBSRAM_Lli(0)&COREApbSram_ili(0)&COREApbSram_oii(0)&CoreApBSRAM_Lii(0);
when "0111" =>
COReApbSram_l0 <= COREApbSram_oolL(0)&CoreApbSram_I1OL(0)&COREApbSram_L1OL(0)&CoreApbSRAM_O1ol(0)&CoreAPBSRAm_lli(0)&CoreAPbSram_ILI(0)&COREApbSram_OII(0)&CoREAPbSram_lII(0);
when "1000" =>
CoreApBSRAM_l0 <= CoreApbSram_IILL(0)&CoreAPBSRAM_lill(0)&CoreAPBSRAM_oill(0)&CoreApBSRAM_ILll(0)&COreApbSram_lLLL(0)&CoreApbSrAM_OLLL(0)&CorEAPBSRAM_ioll(0)&COREAPBSRam_loll(0);
when "1001" =>
CoreApbSrAM_L0 <= COREAPbSram_iill(0)&COreApbSram_lILL(0)&COREAPBSram_oill(0)&COREAPBSram_illl(0)&CoreApBSRAM_Llll(0)&CoreApbSraM_OLLL(0)&COREAPBSram_ioll(0)&CoreApbSram_LOLL(0);
when "1010" =>
CoreApbSrAM_L0 <= CoreApbSRAM_IILl(0)&CoreApbSram_LILL(0)&COREAPbSram_oill(0)&CoreApbSRAM_ILll(0)&CoreApbSraM_LLLL(0)&CoreApbSram_OLLL(0)&COREAPBSram_ioll(0)&COREAPBSRam_loll(0);
when "1011" =>
COREAPBSram_l0 <= COREApbSram_iilL(0)&CoreApbSrAM_LILL(0)&CoreApbSRAM_OILl(0)&CoreApbSraM_ILLL(0)&CoreApbSrAM_LLLL(0)&COREApbSram_ollL(0)&CoreApbSrAM_IOLL(0)&COREAPBSram_loll(0);
when "1100" =>
COREApbSram_l0 <= CoreApbSram_IILL(0)&COREAPBSRam_lill(0)&CoreAPBSRAM_Oill(0)&COReApbSram_ilLL(0)&COREAPBSRam_llll(0)&CoREAPBSRAm_olll(0)&CoreApbSrAM_IOLL(0)&COreApbSram_lOLL(0);
when "1101" =>
COREAPbSram_l0 <= COREApbSram_iilL(0)&CoreApbSram_LILL(0)&COREAPBSram_oill(0)&COREAPBSRam_illl(0)&CoreApBSRAM_Llll(0)&CoreApbSram_OLLL(0)&CoreApbSRAM_IOll(0)&CoreAPBSRAM_loll(0);
when "1110" =>
CoreApbSram_L0 <= CoreApbSraM_IILL(0)&COREAPbSram_lill(0)&CoreApbSram_OILL(0)&COREApbSram_illl(0)&COREAPbSram_llll(0)&CoreApbSram_OLLL(0)&COREApbSram_iolL(0)&COREAPBSram_loll(0);
when "1111" =>
CoreApbSram_L0 <= COREApbSram_iiLL(0)&CoreAPBSRAM_lill(0)&CoreApbSrAM_OILL(0)&COREApbSram_ilLL(0)&COREApbSram_llll(0)&CoreApbSraM_OLLL(0)&CoREAPBSram_ioLL(0)&COreApbSram_lOLL(0);
when others =>
null
;
end case;
end case;
end case;
end process;
COREAPbSram_l10l: RAM4K9
port map (ADDRA11 => CoreApbSRAM_O0Ll(11),
ADDRB11 => COREApbSram_l0IL(11),
ADDRA10 => COREAPbSram_o0ll(10),
ADDRB10 => COREApbSram_l0IL(10),
ADDRA9 => COREApbSram_o0LL(9),
ADDRB9 => CoreApbSraM_L0IL(9),
ADDRA8 => CoreApbSraM_O0LL(8),
ADDRB8 => COreApbSram_L0IL(8),
ADDRA7 => CoREAPBSRam_o0ll(7),
ADDRB7 => COreApbSram_l0IL(7),
ADDRA6 => CoreApbSraM_O0LL(6),
ADDRB6 => CoreAPBSRAM_l0il(6),
ADDRA5 => CoreAPBSRAM_o0ll(5),
ADDRB5 => CoreApbSRAM_L0il(5),
ADDRA4 => COREApbSram_o0ll(4),
ADDRB4 => COREAPBSRam_l0il(4),
ADDRA3 => CoREAPBSRAm_o0ll(3),
ADDRB3 => CoreApbSram_L0IL(3),
ADDRA2 => CoreAPBSRAM_O0ll(2),
ADDRB2 => CoreAPBSRAM_L0il(2),
ADDRA1 => COReApbSram_o0LL(1),
ADDRB1 => COreApbSram_L0IL(1),
ADDRA0 => COreApbSram_O0LL(0),
ADDRB0 => COREApbSram_l0iL(0),
DINA8 => CoreApbSram_O10L,
DINB8 => CoreAPBSRAM_O10l,
DINA7 => CoreApbSRAM_I01(7),
DINB7 => CoreApbSram_O10L,
DINA6 => COREApbSram_i01(6),
DINB6 => CoreApbSraM_O10L,
DINA5 => CoreApBSRAM_I01(5),
DINB5 => CoreApBSRAM_O10l,
DINA4 => CoreApbSrAM_I01(4),
DINB4 => COREAPBSram_o10l,
DINA3 => CoreApbSram_I01(3),
DINB3 => CoreAPBSRAM_o10l,
DINA2 => COREAPBSram_i01(2),
DINB2 => CoreApbSram_O10L,
DINA1 => COREAPbSram_i01(1),
DINB1 => CorEAPBSRAm_o10l,
DINA0 => CoreApbSram_I01(0),
DINB0 => COReApbSram_o10L,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApbSRAM_LII(7),
DOUTA6 => open ,
DOUTB6 => COREAPBSram_lii(6),
DOUTA5 => open ,
DOUTB5 => COreApbSram_LII(5),
DOUTA4 => open ,
DOUTB4 => CoreApbSRAM_LIi(4),
DOUTA3 => open ,
DOUTB3 => COreApbSram_LII(3),
DOUTA2 => open ,
DOUTB2 => COReApbSram_liI(2),
DOUTA1 => open ,
DOUTB1 => CoreAPBSRAM_Lii(1),
DOUTA0 => open ,
DOUTB0 => CoreAPBSRAM_lii(0),
WIDTHA1 => COReApbSram_ii0(1),
WIDTHB1 => CorEAPBSRAM_ii0(1),
WIDTHA0 => COREApbSram_ii0(0),
WIDTHB0 => COREApbSram_ii0(0),
PIPEA => CorEAPBSRAm_o10l,
PIPEB => CoreApbSram_O10L,
WMODEA => CoreAPBSRAM_o10l,
WMODEB => COREAPBSram_o10l,
BLKA => CoreAPBSRAM_o01(0),
BLKB => CoREAPBSRAm_l01(0),
WENA => CoreApbSram_O10L,
WENB => COREAPBSram_i00l,
CLKA => CoreApBSRAM_OL,
CLKB => COREAPBSram_ol,
RESET => COREApbSram_ll);
COREAPBSram_i10l: RAM4K9
port map (ADDRA11 => CoreApbSraM_L0LL(11),
ADDRB11 => COReApbSram_i0IL(11),
ADDRA10 => CoreAPBSRAM_l0ll(10),
ADDRB10 => COREApbSram_i0iL(10),
ADDRA9 => COreApbSrAM_L0Ll(9),
ADDRB9 => COREApbSram_I0IL(9),
ADDRA8 => CoreApbSRAM_l0ll(8),
ADDRB8 => CoreApBSRAM_i0il(8),
ADDRA7 => COREApbSraM_L0LL(7),
ADDRB7 => CoreApbSraM_I0IL(7),
ADDRA6 => CoreApbSRAM_L0Ll(6),
ADDRB6 => COREApbSram_i0iL(6),
ADDRA5 => CoreApbSrAM_L0LL(5),
ADDRB5 => CoreApbSRAM_I0il(5),
ADDRA4 => CoreApBSRAM_L0ll(4),
ADDRB4 => CoreApbSraM_I0IL(4),
ADDRA3 => CorEAPBSRAM_l0ll(3),
ADDRB3 => CoreApbSrAM_I0IL(3),
ADDRA2 => COREAPBSram_l0ll(2),
ADDRB2 => COreApbSram_i0IL(2),
ADDRA1 => COREApbSram_l0ll(1),
ADDRB1 => CoreApbSRAM_I0il(1),
ADDRA0 => COREAPBSram_l0ll(0),
ADDRB0 => COREApbSram_i0iL(0),
DINA8 => COREApbSram_o10L,
DINB8 => CoreApbSRAM_O10l,
DINA7 => COreApbSram_o11(7),
DINB7 => COREApbSram_o10L,
DINA6 => COReApbSram_o11(6),
DINB6 => CoREAPBSRam_o10l,
DINA5 => CorEAPBSRAm_o11(5),
DINB5 => COREAPBSram_o10l,
DINA4 => CoreApbSRAM_O11(4),
DINB4 => CorEAPBSRAM_o10l,
DINA3 => COreApbSram_o11(3),
DINB3 => COReApbSram_o10L,
DINA2 => CoreApbSram_O11(2),
DINB2 => COreApbSram_o10L,
DINA1 => COREApbSram_o11(1),
DINB1 => COREAPBSram_o10l,
DINA0 => COREAPBSram_o11(0),
DINB0 => CorEAPBSRAM_o10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CorEAPBSRAM_oii(7),
DOUTA6 => open ,
DOUTB6 => COreApbSram_oII(6),
DOUTA5 => open ,
DOUTB5 => CoreApbSraM_OII(5),
DOUTA4 => open ,
DOUTB4 => COReApbSram_oiI(4),
DOUTA3 => open ,
DOUTB3 => COreApbSram_OII(3),
DOUTA2 => open ,
DOUTB2 => COReApbSram_oiI(2),
DOUTA1 => open ,
DOUTB1 => COREAPbSram_oii(1),
DOUTA0 => open ,
DOUTB0 => COREApbSram_oii(0),
WIDTHA1 => CoreApbSram_O00(1),
WIDTHB1 => CoreApbSraM_O00(1),
WIDTHA0 => COREApbSram_o00(0),
WIDTHB0 => COREApbSram_o00(0),
PIPEA => CoreApbSRAM_O10l,
PIPEB => CoreApbSraM_O10L,
WMODEA => COREApbSram_o10L,
WMODEB => CoreAPBSRAM_o10l,
BLKA => CoreAPBSRAM_O01(1),
BLKB => CoreApbSRAM_L01(1),
WENA => CoREAPBSRam_o10l,
WENB => CoreApbSram_I00L,
CLKA => CoreApBSRAM_Ol,
CLKB => CoreApbSram_OL,
RESET => CoreApbSraM_LL);
COREApbSram_oo1L: RAM4K9
port map (ADDRA11 => CoreApbSrAM_I0LL(11),
ADDRB11 => COreApbSram_o1IL(11),
ADDRA10 => CoreApbSrAM_I0LL(10),
ADDRB10 => CoreApBSRAM_O1il(10),
ADDRA9 => CoreApbSraM_I0LL(9),
ADDRB9 => CoreAPBSRAM_o1il(9),
ADDRA8 => CoreApbSRAM_I0ll(8),
ADDRB8 => CoreApbSrAM_O1IL(8),
ADDRA7 => CoreApbSram_I0LL(7),
ADDRB7 => COREAPBSRam_o1il(7),
ADDRA6 => CoreApbSraM_I0LL(6),
ADDRB6 => CoreApbSram_O1IL(6),
ADDRA5 => COREApbSram_i0lL(5),
ADDRB5 => COREAPBSRam_o1il(5),
ADDRA4 => COREAPbSram_i0ll(4),
ADDRB4 => CoreApBSRAM_O1il(4),
ADDRA3 => CoreAPBSRAM_i0ll(3),
ADDRB3 => CoreAPBSRAM_o1il(3),
ADDRA2 => COreApbSram_i0LL(2),
ADDRB2 => CoreApbSraM_O1IL(2),
ADDRA1 => COREAPBSram_i0ll(1),
ADDRB1 => CoreAPBSRAM_o1il(1),
ADDRA0 => CoreApbSraM_I0LL(0),
ADDRB0 => COREAPBSram_o1il(0),
DINA8 => CoreApbSram_O10L,
DINB8 => CoreAPBSRAM_O10l,
DINA7 => CoreApbSram_L11(7),
DINB7 => CoreApbSram_O10L,
DINA6 => CoreAPBSRAM_l11(6),
DINB6 => COREApbSram_o10L,
DINA5 => CoreApbSraM_L11(5),
DINB5 => COREAPBSram_o10l,
DINA4 => CoreApbSrAM_L11(4),
DINB4 => CorEAPBSRAm_o10l,
DINA3 => CoreApbSram_L11(3),
DINB3 => CoreApBSRAM_O10l,
DINA2 => COREApbSram_l11(2),
DINB2 => COREAPBSram_o10l,
DINA1 => CoreAPBSRAM_l11(1),
DINB1 => COREApbSram_o10L,
DINA0 => CoreApbSram_L11(0),
DINB0 => CoreApBSRAM_O10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CorEAPBSRAm_ili(7),
DOUTA6 => open ,
DOUTB6 => COReApbSram_ilI(6),
DOUTA5 => open ,
DOUTB5 => COREAPBSram_ili(5),
DOUTA4 => open ,
DOUTB4 => COREAPBSram_ili(4),
DOUTA3 => open ,
DOUTB3 => CoreApBSRAM_Ili(3),
DOUTA2 => open ,
DOUTB2 => CoreAPBSRAM_ili(2),
DOUTA1 => open ,
DOUTB1 => COREAPbSram_ili(1),
DOUTA0 => open ,
DOUTB0 => CoreApbSram_ILI(0),
WIDTHA1 => CoreApbSraM_L00(1),
WIDTHB1 => COREApbSram_l00(1),
WIDTHA0 => COREApbSram_l00(0),
WIDTHB0 => COREApbSram_l00(0),
PIPEA => CoreAPBSRAM_O10l,
PIPEB => COREApbSram_o10L,
WMODEA => CoreApbSraM_O10L,
WMODEB => CoreAPBSRAM_o10l,
BLKA => CoreApbSRAM_O01(2),
BLKB => CoreApbSram_L01(2),
WENA => CoreApbSrAM_O10L,
WENB => COReApbSram_i00L,
CLKA => COREAPbSram_ol,
CLKB => CoREAPBSRam_ol,
RESET => CoreApbSram_LL);
CoreApBSRAM_Lo1l: RAM4K9
port map (ADDRA11 => CoreApbSRAM_O1LL(11),
ADDRB11 => COREAPBSram_l1il(11),
ADDRA10 => COREApbSram_o1lL(10),
ADDRB10 => CoreApbSram_L1IL(10),
ADDRA9 => CoreApbSRAM_O1Ll(9),
ADDRB9 => CoreApbSRAM_L1il(9),
ADDRA8 => CoreApBSRAM_O1ll(8),
ADDRB8 => CoreApbSraM_L1IL(8),
ADDRA7 => CoREAPbSram_o1LL(7),
ADDRB7 => CoreApBSRAM_l1il(7),
ADDRA6 => COREAPbSram_o1LL(6),
ADDRB6 => COREApbSram_L1IL(6),
ADDRA5 => CoreAPBSRAm_o1ll(5),
ADDRB5 => CorEAPBSram_l1iL(5),
ADDRA4 => CoreAPBSRAm_o1ll(4),
ADDRB4 => CoreAPBSRAm_l1il(4),
ADDRA3 => COREApbSram_O1LL(3),
ADDRB3 => CoreApbSraM_L1IL(3),
ADDRA2 => CoreApbSRAM_O1Ll(2),
ADDRB2 => COREAPBSram_l1il(2),
ADDRA1 => CoreApbSraM_O1LL(1),
ADDRB1 => COREAPBSRam_l1il(1),
ADDRA0 => CoreApbSraM_O1LL(0),
ADDRB0 => COREApbSram_l1IL(0),
DINA8 => CoreApbSRAM_O10l,
DINB8 => CoreAPBSRAM_o10l,
DINA7 => COREAPBSRam_i11(7),
DINB7 => CoreApbSRAM_O10l,
DINA6 => COREAPBSram_i11(6),
DINB6 => COREAPBSRam_o10l,
DINA5 => CoreApbSram_I11(5),
DINB5 => COREAPBSram_o10l,
DINA4 => CoreApbSRAM_I11(4),
DINB4 => CoreApbSraM_O10L,
DINA3 => CoreApbSRAM_I11(3),
DINB3 => CoreApbSraM_O10L,
DINA2 => COREApbSram_i11(2),
DINB2 => COREApbSram_o10L,
DINA1 => CorEAPBSRAM_i11(1),
DINB1 => CoreApbSram_O10L,
DINA0 => CoreApbSrAM_I11(0),
DINB0 => CoreApbSrAM_O10L,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApbSRAM_LLI(7),
DOUTA6 => open ,
DOUTB6 => CoreAPBSRAM_lli(6),
DOUTA5 => open ,
DOUTB5 => COREAPBSRam_lli(5),
DOUTA4 => open ,
DOUTB4 => CoreApbSraM_LLI(4),
DOUTA3 => open ,
DOUTB3 => CoreApbSram_LLI(3),
DOUTA2 => open ,
DOUTB2 => COREAPbSram_lli(2),
DOUTA1 => open ,
DOUTB1 => COREAPBSram_lli(1),
DOUTA0 => open ,
DOUTB0 => CoreApbSrAM_LLI(0),
WIDTHA1 => COreApbSram_I00(1),
WIDTHB1 => CoreApbSram_I00(1),
WIDTHA0 => CoreApbSram_I00(0),
WIDTHB0 => COREApbSram_i00(0),
PIPEA => COREApbSram_o10L,
PIPEB => CoreApbSram_O10L,
WMODEA => CoreApbSRAM_O10l,
WMODEB => CoreAPBSRAM_o10l,
BLKA => COREAPBSram_o01(3),
BLKB => COREApbSram_l01(3),
WENA => CoreApbSram_O10L,
WENB => COREAPBSRam_i00l,
CLKA => COREAPBSram_ol,
CLKB => CoreAPBSRAM_ol,
RESET => COREApbSram_ll);
COREAPBSram_io1l: RAM4K9
port map (ADDRA11 => CoreAPBSRAM_l1ll(11),
ADDRB11 => COReApbSram_i1IL(11),
ADDRA10 => CoreApbSram_L1LL(10),
ADDRB10 => CoreApbSram_I1IL(10),
ADDRA9 => CoreApbSram_L1LL(9),
ADDRB9 => CoreApbSRAM_I1Il(9),
ADDRA8 => CorEAPBSRAM_l1ll(8),
ADDRB8 => COREAPbSram_i1il(8),
ADDRA7 => CoreApbSram_L1LL(7),
ADDRB7 => COREApbSram_i1il(7),
ADDRA6 => CoreApBSRAM_L1ll(6),
ADDRB6 => CoreAPBSRAM_I1il(6),
ADDRA5 => COreApbSram_l1LL(5),
ADDRB5 => CoreAPBSRAM_i1il(5),
ADDRA4 => COREApbSram_l1lL(4),
ADDRB4 => COreApbSram_I1IL(4),
ADDRA3 => COREAPBSRam_l1ll(3),
ADDRB3 => COreApbSram_i1IL(3),
ADDRA2 => CoreAPBSRAM_l1ll(2),
ADDRB2 => COREAPBSram_i1il(2),
ADDRA1 => CoreApbSrAM_L1LL(1),
ADDRB1 => COReApbSram_i1IL(1),
ADDRA0 => CoreApBSRAM_L1ll(0),
ADDRB0 => CoreApBSRAM_I1il(0),
DINA8 => CoreApbSram_O10L,
DINB8 => COreApbSram_o10L,
DINA7 => COREApbSram_oooL(7),
DINB7 => CoreAPBSRAM_o10l,
DINA6 => CoreApBSRAM_Oool(6),
DINB6 => CoreApBSRAM_O10l,
DINA5 => COREAPBSRam_oool(5),
DINB5 => COREApbSram_o10l,
DINA4 => COREApbSram_oooL(4),
DINB4 => CoreApbSraM_O10L,
DINA3 => CoreApbSram_OOOL(3),
DINB3 => CoreApbSraM_O10L,
DINA2 => COREAPbSram_oool(2),
DINB2 => COREAPBSRam_o10l,
DINA1 => CoreApbSrAM_OOOL(1),
DINB1 => CoreApbSram_O10L,
DINA0 => COREAPBSRam_oool(0),
DINB0 => CoreApbSram_O10L,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => COREAPBSram_o1ol(7),
DOUTA6 => open ,
DOUTB6 => COreApbSram_O1OL(6),
DOUTA5 => open ,
DOUTB5 => COReApbSram_o1OL(5),
DOUTA4 => open ,
DOUTB4 => CoreApbSraM_O1OL(4),
DOUTA3 => open ,
DOUTB3 => COREAPBSRam_o1ol(3),
DOUTA2 => open ,
DOUTB2 => CoreApbSraM_O1OL(2),
DOUTA1 => open ,
DOUTB1 => COREApbSram_o1oL(1),
DOUTA0 => open ,
DOUTB0 => COREApbSram_o1OL(0),
WIDTHA1 => CoreAPBSRAM_o10(1),
WIDTHB1 => COREApbSram_o10(1),
WIDTHA0 => CoreApbSram_O10(0),
WIDTHB0 => CoreAPBSRAM_O10(0),
PIPEA => COREApbSram_o10L,
PIPEB => CoreApbSraM_O10L,
WMODEA => COREApbSram_o10L,
WMODEB => CoreApBSRAM_O10l,
BLKA => CoreApbSram_O01(4),
BLKB => CoreAPBSRAM_l01(4),
WENA => CoreApbSraM_O10L,
WENB => CoreApbSRAM_I00l,
CLKA => CoreApbSram_OL,
CLKB => COREApbSram_ol,
RESET => CoreAPBSRAM_Ll);
COREApbSram_ol1L: RAM4K9
port map (ADDRA11 => CoreApbSRAM_I1ll(11),
ADDRB11 => CoreApbSRAM_OO0l(11),
ADDRA10 => COREAPBSram_i1ll(10),
ADDRB10 => CoreApbSRAM_OO0L(10),
ADDRA9 => CoreAPBSRAM_i1ll(9),
ADDRB9 => CoreApbSRAM_OO0L(9),
ADDRA8 => CoreApBSRAM_I1ll(8),
ADDRB8 => COREAPBSRam_oo0l(8),
ADDRA7 => CoreApbSram_I1LL(7),
ADDRB7 => CoreApbSraM_OO0L(7),
ADDRA6 => COREApbSram_i1lL(6),
ADDRB6 => CoreAPBSRAM_oo0l(6),
ADDRA5 => COREApbSram_i1lL(5),
ADDRB5 => CoreApbSRAM_OO0l(5),
ADDRA4 => CoreApBSRAM_i1ll(4),
ADDRB4 => CoreApbSRAM_OO0l(4),
ADDRA3 => COREApbSram_I1LL(3),
ADDRB3 => CoreApbSRAM_OO0l(3),
ADDRA2 => CorEAPBSRAM_i1ll(2),
ADDRB2 => CorEAPBSRAM_oo0l(2),
ADDRA1 => CorEAPBSRAM_i1ll(1),
ADDRB1 => CoreApbSram_OO0L(1),
ADDRA0 => CoreApbSraM_I1LL(0),
ADDRB0 => COREAPBSram_oo0l(0),
DINA8 => COREAPBSRam_o10l,
DINB8 => CoREAPBSRAm_o10l,
DINA7 => COREAPBSram_lool(7),
DINB7 => COREApbSram_o10L,
DINA6 => COreApbSram_LOOL(6),
DINB6 => CoREAPBSRAm_o10l,
DINA5 => CoREAPBSRAm_lool(5),
DINB5 => CoreApbSraM_O10L,
DINA4 => COreApbSram_lOOL(4),
DINB4 => COREAPBSram_o10l,
DINA3 => CoreApbSraM_LOOL(3),
DINB3 => CorEAPBSRAM_o10l,
DINA2 => COREAPBSRam_lool(2),
DINB2 => CoreApbSraM_O10L,
DINA1 => CoreApbSram_LOOL(1),
DINB1 => COREAPbSram_o10l,
DINA0 => CoreApbSram_LOOL(0),
DINB0 => CoreApbSRAM_O10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => COReApbSram_l1OL(7),
DOUTA6 => open ,
DOUTB6 => COREApbSram_l1ol(6),
DOUTA5 => open ,
DOUTB5 => COReApbSram_l1OL(5),
DOUTA4 => open ,
DOUTB4 => COReApbSram_l1OL(4),
DOUTA3 => open ,
DOUTB3 => CoreApbSram_L1OL(3),
DOUTA2 => open ,
DOUTB2 => CoreApBSRAM_L1ol(2),
DOUTA1 => open ,
DOUTB1 => CoreAPBSRAM_l1ol(1),
DOUTA0 => open ,
DOUTB0 => COREAPBSram_l1ol(0),
WIDTHA1 => COREAPBSram_l10(1),
WIDTHB1 => CoreApbSRAM_L10(1),
WIDTHA0 => CoreApbSraM_L10(0),
WIDTHB0 => COREAPBSram_l10(0),
PIPEA => CoreApbSrAM_O10L,
PIPEB => COREApbSram_o10L,
WMODEA => CorEAPBSRAM_o10l,
WMODEB => CoREAPBSRAm_o10l,
BLKA => COreApbSram_o01(5),
BLKB => COREAPBSram_l01(5),
WENA => CorEAPBSRAM_o10l,
WENB => CoreApbSram_I00L,
CLKA => CoreApbSRAM_OL,
CLKB => CoreApbSraM_OL,
RESET => CoreApbSrAM_LL);
CoreAPBSRAM_ll1l: RAM4K9
port map (ADDRA11 => CoreApBSRAM_Ooil(11),
ADDRB11 => COREAPBSram_lo0l(11),
ADDRA10 => COReApbSram_oOIL(10),
ADDRB10 => COREAPBSram_lo0l(10),
ADDRA9 => CoreAPBSRAM_ooil(9),
ADDRB9 => CoreApbSraM_LO0L(9),
ADDRA8 => COREApbSram_ooiL(8),
ADDRB8 => CoreApbSraM_LO0L(8),
ADDRA7 => CoreApbSraM_OOIL(7),
ADDRB7 => CoreApbSram_LO0L(7),
ADDRA6 => COREApbSram_ooiL(6),
ADDRB6 => COREAPBSram_lo0l(6),
ADDRA5 => CoreAPBSRAM_Ooil(5),
ADDRB5 => COREAPBSram_lo0l(5),
ADDRA4 => CoreAPBSRAM_Ooil(4),
ADDRB4 => CoreApbSram_LO0L(4),
ADDRA3 => CoreApbSram_OOIL(3),
ADDRB3 => CoreApbSram_LO0L(3),
ADDRA2 => CoreApbSRAM_OOil(2),
ADDRB2 => CorEAPBSRAM_lo0l(2),
ADDRA1 => CoreApbSram_OOIL(1),
ADDRB1 => COreApbSram_lO0L(1),
ADDRA0 => COREAPBSram_ooil(0),
ADDRB0 => COREApbSram_lo0L(0),
DINA8 => COREApbSram_o10L,
DINB8 => CoreApbSRAM_O10l,
DINA7 => CoREAPBSRAm_iool(7),
DINB7 => COREAPBSRam_o10l,
DINA6 => CoreApbSraM_IOOL(6),
DINB6 => CoreApbSram_O10L,
DINA5 => CoREAPBSRAm_iool(5),
DINB5 => COReApbSram_o10L,
DINA4 => COREAPbSram_iool(4),
DINB4 => COREAPBSram_o10l,
DINA3 => CoreApbSram_IOOL(3),
DINB3 => COREAPBSram_o10l,
DINA2 => CoreApbSram_IOOL(2),
DINB2 => CoreApbSRAM_O10l,
DINA1 => COReApbSram_iOOL(1),
DINB1 => CoreApbSram_O10L,
DINA0 => CoreApbSram_IOOL(0),
DINB0 => CorEAPBSRAM_o10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoREAPBSRAm_i1ol(7),
DOUTA6 => open ,
DOUTB6 => CoreApbSraM_I1OL(6),
DOUTA5 => open ,
DOUTB5 => CoreApbSRAM_I1ol(5),
DOUTA4 => open ,
DOUTB4 => COReApbSram_i1OL(4),
DOUTA3 => open ,
DOUTB3 => CoreApbSRAM_I1Ol(3),
DOUTA2 => open ,
DOUTB2 => CoreAPBSRAM_i1ol(2),
DOUTA1 => open ,
DOUTB1 => CoreApbSram_I1OL(1),
DOUTA0 => open ,
DOUTB0 => COReApbSram_i1OL(0),
WIDTHA1 => CorEAPBSRAM_i10(1),
WIDTHB1 => CoreApbSraM_I10(1),
WIDTHA0 => COreApbSram_I10(0),
WIDTHB0 => CoREAPBSRAm_i10(0),
PIPEA => CoreApbSraM_O10L,
PIPEB => COREAPBSram_o10l,
WMODEA => CorEAPBSRAm_o10l,
WMODEB => CoREAPBSRAm_o10l,
BLKA => COREApbSram_o01(6),
BLKB => COREAPBSram_l01(6),
WENA => CoreApbSram_O10L,
WENB => CoreApbSram_I00L,
CLKA => CoreApbSraM_OL,
CLKB => CoreAPBSRAM_ol,
RESET => CoreApbSRAM_LL);
CoREAPBSRAm_il1l: RAM4K9
port map (ADDRA11 => COREApbSram_loiL(11),
ADDRB11 => CoreApbSrAM_IO0L(11),
ADDRA10 => COREAPBSram_loil(10),
ADDRB10 => CoreApbSRAM_IO0l(10),
ADDRA9 => COreApbSram_LOIL(9),
ADDRB9 => COreApbSram_iO0L(9),
ADDRA8 => CoreApbSRAM_LOIl(8),
ADDRB8 => CoreApbSRAM_IO0l(8),
ADDRA7 => CoreApbSram_LOIL(7),
ADDRB7 => COREAPBSram_io0l(7),
ADDRA6 => COREAPbSram_loil(6),
ADDRB6 => CoreApbSram_IO0L(6),
ADDRA5 => COREAPbSram_loil(5),
ADDRB5 => COREAPbSram_io0l(5),
ADDRA4 => CoreApbSrAM_LOIL(4),
ADDRB4 => COREAPBSRam_io0l(4),
ADDRA3 => CoreApbSrAM_LOIL(3),
ADDRB3 => CoreApbSram_IO0L(3),
ADDRA2 => COreApbSrAM_LOil(2),
ADDRB2 => COREApbSram_IO0L(2),
ADDRA1 => COREApbSram_LOIL(1),
ADDRB1 => CoreAPBSram_io0L(1),
ADDRA0 => CorEAPBSram_loIL(0),
ADDRB0 => COREAPbSram_iO0L(0),
DINA8 => CoreApbSraM_O10L,
DINB8 => COREAPBSram_o10l,
DINA7 => CoREAPBSRAm_olol(7),
DINB7 => CoreApbSram_O10L,
DINA6 => COREAPbSram_olol(6),
DINB6 => COREAPBSram_o10l,
DINA5 => COreApbSram_oLOL(5),
DINB5 => COREAPBSram_o10l,
DINA4 => COREApbSram_oloL(4),
DINB4 => COreApbSram_O10L,
DINA3 => COREAPBSram_olol(3),
DINB3 => CoreAPBSRAM_o10l,
DINA2 => COREAPBSram_olol(2),
DINB2 => COREAPBSram_o10l,
DINA1 => COREAPBSRam_olol(1),
DINB1 => CoreApbSraM_O10L,
DINA0 => COReApbSram_olOL(0),
DINB0 => COReApbSram_o10L,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApbSRAM_OOll(7),
DOUTA6 => open ,
DOUTB6 => COREAPBSram_ooll(6),
DOUTA5 => open ,
DOUTB5 => CoreApbSRAM_OOLl(5),
DOUTA4 => open ,
DOUTB4 => CoreAPBSRAM_ooll(4),
DOUTA3 => open ,
DOUTB3 => CoreApbSraM_OOLL(3),
DOUTA2 => open ,
DOUTB2 => COReApbSram_ooLL(2),
DOUTA1 => open ,
DOUTB1 => COReApbSram_ooLL(1),
DOUTA0 => open ,
DOUTB0 => COREApbSram_oolL(0),
WIDTHA1 => CoreAPBSRAM_oo1(1),
WIDTHB1 => CoreApBSRAM_OO1(1),
WIDTHA0 => CoreAPBSRAM_oo1(0),
WIDTHB0 => CoreApbSrAM_OO1(0),
PIPEA => COREAPBSram_o10l,
PIPEB => COREAPBSram_o10l,
WMODEA => COREAPbSram_o10l,
WMODEB => CoreApbSram_O10L,
BLKA => COReApbSram_o01(7),
BLKB => COreApbSram_l01(7),
WENA => CoreApBSRAM_O10l,
WENB => CoreApbSraM_I00L,
CLKA => COREAPBSram_ol,
CLKB => CoreAPBSRAM_ol,
RESET => CoreApbSrAM_LL);
COREAPBSram_oi1l: RAM4K9
port map (ADDRA11 => CoreApbSRAM_IOIl(11),
ADDRB11 => COReApbSram_ol0L(11),
ADDRA10 => COREApbSram_ioIL(10),
ADDRB10 => CoreApbSram_OL0L(10),
ADDRA9 => CoreApbSraM_IOIL(9),
ADDRB9 => CoreApbSrAM_OL0L(9),
ADDRA8 => COREAPBSram_ioil(8),
ADDRB8 => CoreApbSRAM_OL0l(8),
ADDRA7 => CorEAPBSRAm_ioil(7),
ADDRB7 => CoreApBSRAM_Ol0l(7),
ADDRA6 => COREAPbSram_ioil(6),
ADDRB6 => COREAPbSram_ol0l(6),
ADDRA5 => CoreAPBSRAM_Ioil(5),
ADDRB5 => CoreApbSraM_OL0L(5),
ADDRA4 => CorEAPBSRAM_ioil(4),
ADDRB4 => CoreApbSrAM_OL0L(4),
ADDRA3 => CoreApbSRAM_IOIL(3),
ADDRB3 => COREApbSram_ol0l(3),
ADDRA2 => COreApbSram_iOIL(2),
ADDRB2 => COreApbSram_oL0L(2),
ADDRA1 => CoreApbSraM_IOIL(1),
ADDRB1 => COREApbSram_ol0L(1),
ADDRA0 => COREApbSram_ioIL(0),
ADDRB0 => COreApbSram_OL0L(0),
DINA8 => COREAPBSram_o10l,
DINB8 => CoreApbSraM_O10L,
DINA7 => COREApbSram_lloL(7),
DINB7 => COREAPBSRam_o10l,
DINA6 => CoreApbSraM_LLOL(6),
DINB6 => COREAPBSram_o10l,
DINA5 => COReApbSram_lLOL(5),
DINB5 => COREAPbSram_o10l,
DINA4 => CoreAPBSRAM_Llol(4),
DINB4 => COreApbSram_o10L,
DINA3 => COREAPBSram_llol(3),
DINB3 => CoreApbSraM_O10L,
DINA2 => CoreApBSRAM_Llol(2),
DINB2 => COREApbSram_o10L,
DINA1 => COReApbSram_llOL(1),
DINB1 => COREApbSram_o10L,
DINA0 => COREAPBSram_llol(0),
DINB0 => CoreApbSraM_O10L,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApbSram_LOLL(7),
DOUTA6 => open ,
DOUTB6 => CoreApBSRAM_LOll(6),
DOUTA5 => open ,
DOUTB5 => COReApbSram_loLL(5),
DOUTA4 => open ,
DOUTB4 => CoreApbSram_LOLL(4),
DOUTA3 => open ,
DOUTB3 => COreApbSram_lOLL(3),
DOUTA2 => open ,
DOUTB2 => CoreApbSram_LOLL(2),
DOUTA1 => open ,
DOUTB1 => CoreApbSraM_LOLL(1),
DOUTA0 => open ,
DOUTB0 => CoreApbSram_LOLL(0),
WIDTHA1 => COREApbSram_lo1(1),
WIDTHB1 => COreApbSram_lO1(1),
WIDTHA0 => CoreApbSrAM_LO1(0),
WIDTHB0 => CoreApbSRAM_lo1(0),
PIPEA => CoreApbSRAM_O10l,
PIPEB => COREApbSram_o10l,
WMODEA => COREAPBSram_o10l,
WMODEB => COREAPBSram_o10l,
BLKA => COREAPBSram_o01(8),
BLKB => CoreApbSrAM_L01(8),
WENA => CoreApbSram_O10L,
WENB => COREApbSram_i00L,
CLKA => CoreApbSram_OL,
CLKB => COREAPbSram_ol,
RESET => CoreApbSram_LL);
CoreApbSraM_LI1L: RAM4K9
port map (ADDRA11 => COREAPBSRam_olil(11),
ADDRB11 => COREAPBSram_ll0l(11),
ADDRA10 => COREApbSram_oliL(10),
ADDRB10 => COREApbSram_ll0L(10),
ADDRA9 => CorEAPBSRAm_olil(9),
ADDRB9 => CoreAPBSRAM_Ll0l(9),
ADDRA8 => CoreApbSRAM_OLIL(8),
ADDRB8 => CoREAPBSRam_ll0l(8),
ADDRA7 => CoREAPBSRAm_olil(7),
ADDRB7 => COreApbSram_lL0L(7),
ADDRA6 => CoreApbSram_OLIL(6),
ADDRB6 => CoreApbSRAM_LL0L(6),
ADDRA5 => COREApbSram_olIL(5),
ADDRB5 => COREAPBSram_ll0l(5),
ADDRA4 => COReApbSram_oLIL(4),
ADDRB4 => CoreAPBSRAM_Ll0l(4),
ADDRA3 => CoreApbSram_OLIL(3),
ADDRB3 => CoreApbSrAM_LL0L(3),
ADDRA2 => CorEAPBSRAm_olil(2),
ADDRB2 => CoreApbSram_LL0L(2),
ADDRA1 => CoreApbSrAM_OLIL(1),
ADDRB1 => COREAPBSram_ll0l(1),
ADDRA0 => COREAPbSram_olil(0),
ADDRB0 => COREAPBSram_ll0l(0),
DINA8 => COREAPBSram_o10l,
DINB8 => CoreApbSRAM_O10l,
DINA7 => CoreApbSram_ILOL(7),
DINB7 => CoreApbSRAM_o10l,
DINA6 => CoreApbSRAM_Ilol(6),
DINB6 => COREAPBSram_o10L,
DINA5 => CorEAPBSram_ilOL(5),
DINB5 => COREAPbSram_O10L,
DINA4 => CoreApBSRAM_ilol(4),
DINB4 => CoreApbSRAM_O10l,
DINA3 => COreApbSrAM_ILOl(3),
DINB3 => COREApbSram_O10L,
DINA2 => CoreApbSRAM_ilol(2),
DINB2 => CorEAPBSram_o10L,
DINA1 => CoreAPBSRAm_ilol(1),
DINB1 => COREApbSram_O10L,
DINA0 => CoreAPBSRAm_ilol(0),
DINB0 => CoreApBSRAM_o10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApbSRAM_ioll(7),
DOUTA6 => open ,
DOUTB6 => COREApbSram_IOLL(6),
DOUTA5 => open ,
DOUTB5 => CoreApBSRAM_ioll(5),
DOUTA4 => open ,
DOUTB4 => COREApbSraM_IOLL(4),
DOUTA3 => open ,
DOUTB3 => CoreApbSRAM_Ioll(3),
DOUTA2 => open ,
DOUTB2 => CoreApbSRAM_ioll(2),
DOUTA1 => open ,
DOUTB1 => CoREAPBSram_iOLL(1),
DOUTA0 => open ,
DOUTB0 => COReApbSraM_IOLl(0),
WIDTHA1 => CoreApBSRAM_io1(1),
WIDTHB1 => COReApbSraM_IO1(1),
WIDTHA0 => COREApbSram_io1(0),
WIDTHB0 => CoreApbSRAM_IO1(0),
PIPEA => CoreApbSRAM_O10l,
PIPEB => CoreApBSRAM_O10l,
WMODEA => CoreApbSRAM_O10l,
WMODEB => CoreApbSraM_O10L,
BLKA => CoREAPBSRam_o01(9),
BLKB => CoreAPBSRAM_l01(9),
WENA => CorEAPBSRAm_o10l,
WENB => CoREAPBSRAm_i00l,
CLKA => COREAPBSram_ol,
CLKB => CoREAPBSRAm_ol,
RESET => CoREAPBSRAm_ll);
COreApbSram_II1L: RAM4K9
port map (ADDRA11 => COReApbSram_llIL(11),
ADDRB11 => CoreApbSraM_IL0L(11),
ADDRA10 => COReApbSram_llIL(10),
ADDRB10 => COREApbSram_il0L(10),
ADDRA9 => COREAPBSram_llil(9),
ADDRB9 => COReApbSram_iL0L(9),
ADDRA8 => CoreApbSraM_LLIL(8),
ADDRB8 => COREAPBSram_il0l(8),
ADDRA7 => COREApbSram_lliL(7),
ADDRB7 => COREAPbSram_il0l(7),
ADDRA6 => COReApbSram_llIL(6),
ADDRB6 => COREApbSram_il0L(6),
ADDRA5 => CoreApbSRAM_LLIL(5),
ADDRB5 => COREApbSram_il0L(5),
ADDRA4 => CoreAPBSRAM_Llil(4),
ADDRB4 => COREAPBSram_il0l(4),
ADDRA3 => CoreAPBSRAM_Llil(3),
ADDRB3 => CoreAPBSRAM_il0l(3),
ADDRA2 => COreApbSram_LLIL(2),
ADDRB2 => COReApbSram_il0L(2),
ADDRA1 => CoreAPBSRAM_llil(1),
ADDRB1 => CoreApbSram_IL0L(1),
ADDRA0 => CoreApbSRAM_LLil(0),
ADDRB0 => CoREAPBSRAm_il0l(0),
DINA8 => CoreApbSraM_O10L,
DINB8 => COREApbSram_o10L,
DINA7 => COreApbSram_oIOL(7),
DINB7 => CoreAPBSRAM_O10l,
DINA6 => CoREAPBSRAm_oiol(6),
DINB6 => CoreApbSraM_O10L,
DINA5 => CoreApbSrAM_OIOL(5),
DINB5 => COreApbSram_o10L,
DINA4 => COReApbSram_oiOL(4),
DINB4 => CoreApbSram_O10L,
DINA3 => COReApbSram_oiOL(3),
DINB3 => CoreAPBSRAM_O10l,
DINA2 => COREAPbSram_oiol(2),
DINB2 => COReApbSram_o10L,
DINA1 => CoreAPBSRAM_oiol(1),
DINB1 => CoreApbSram_O10L,
DINA0 => COReApbSram_oIOL(0),
DINB0 => COREAPBSram_o10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => COREAPBSRam_olll(7),
DOUTA6 => open ,
DOUTB6 => CoreApbSram_OLLL(6),
DOUTA5 => open ,
DOUTB5 => COREAPBSram_olll(5),
DOUTA4 => open ,
DOUTB4 => CoreApbSram_OLLL(4),
DOUTA3 => open ,
DOUTB3 => COREApbSram_ollL(3),
DOUTA2 => open ,
DOUTB2 => CoreApbSraM_OLLL(2),
DOUTA1 => open ,
DOUTB1 => COREApbSram_olLL(1),
DOUTA0 => open ,
DOUTB0 => CoREAPBSRam_olll(0),
WIDTHA1 => CoreAPBSRAM_Ol1(1),
WIDTHB1 => COreApbSram_oL1(1),
WIDTHA0 => CoREAPBSRAm_ol1(0),
WIDTHB0 => CoreApbSraM_OL1(0),
PIPEA => CoreApbSram_O10L,
PIPEB => CoreApbSrAM_O10L,
WMODEA => CoreApbSrAM_O10L,
WMODEB => COreApbSram_O10L,
BLKA => CoreAPBSRAM_o01(10),
BLKB => COREAPBSram_l01(10),
WENA => CoreApbSRAM_O10l,
WENB => COreApbSram_i00L,
CLKA => CoreApbSram_OL,
CLKB => COREAPBSram_ol,
RESET => CoreApbSrAM_LL);
CorEAPBSRAM_o01l: RAM4K9
port map (ADDRA11 => CoreApbSraM_ILIL(11),
ADDRB11 => CoreApbSraM_OI0L(11),
ADDRA10 => COreApbSram_iLIL(10),
ADDRB10 => CoreApbSram_OI0L(10),
ADDRA9 => COREAPBSram_ilil(9),
ADDRB9 => COreApbSram_oI0L(9),
ADDRA8 => CoreAPBSRAM_ilil(8),
ADDRB8 => CoreApbSraM_OI0L(8),
ADDRA7 => CoreApbSrAM_ILIL(7),
ADDRB7 => CoreApbSram_OI0L(7),
ADDRA6 => COreApbSram_ILIL(6),
ADDRB6 => CorEAPBSRAM_oi0l(6),
ADDRA5 => COREAPBSRam_ilil(5),
ADDRB5 => CoreApbSram_OI0L(5),
ADDRA4 => CorEAPBSRAm_ilil(4),
ADDRB4 => COreApbSram_oI0L(4),
ADDRA3 => COREAPbSram_ilil(3),
ADDRB3 => CoreAPBSRAM_Oi0l(3),
ADDRA2 => COREAPBSram_ilil(2),
ADDRB2 => CoreApbSRAM_OI0L(2),
ADDRA1 => CoreApbSram_ILIL(1),
ADDRB1 => CoreApbSram_OI0L(1),
ADDRA0 => CoreAPBSRAm_ilil(0),
ADDRB0 => CoreAPBSRAm_oi0l(0),
DINA8 => COREApbSram_O10L,
DINB8 => COreApbSrAM_O10l,
DINA7 => CoreApbSraM_LIOL(7),
DINB7 => COREApbSram_o10L,
DINA6 => CoreAPBSRAM_Liol(6),
DINB6 => COREAPbSram_o10l,
DINA5 => CoreApBSRAM_Liol(5),
DINB5 => COREApbSram_o10L,
DINA4 => CoreApbSram_LIOL(4),
DINB4 => COREAPbSram_o10l,
DINA3 => CoreApbSraM_LIOL(3),
DINB3 => CoreApbSrAM_O10L,
DINA2 => CoreApbSRAM_LIOl(2),
DINB2 => COREApbSram_o10l,
DINA1 => COREAPBSRam_liol(1),
DINB1 => COREAPBSram_o10l,
DINA0 => CoreApbSram_LIOL(0),
DINB0 => CorEAPBSRAM_o10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApbSraM_LLLL(7),
DOUTA6 => open ,
DOUTB6 => CoreAPBSRAM_llll(6),
DOUTA5 => open ,
DOUTB5 => CoreApbSRAM_LLll(5),
DOUTA4 => open ,
DOUTB4 => CoreApbSram_LLLL(4),
DOUTA3 => open ,
DOUTB3 => COREAPBSRam_llll(3),
DOUTA2 => open ,
DOUTB2 => CoREAPBSRAm_llll(2),
DOUTA1 => open ,
DOUTB1 => COReApbSram_lLLL(1),
DOUTA0 => open ,
DOUTB0 => COREApbSram_llll(0),
WIDTHA1 => CoreApbSrAM_LL1(1),
WIDTHB1 => CoreApbSrAM_LL1(1),
WIDTHA0 => CoreApbSram_LL1(0),
WIDTHB0 => COREAPBSram_ll1(0),
PIPEA => COreApbSram_O10L,
PIPEB => COREAPbSram_o10l,
WMODEA => COREAPbSram_o10l,
WMODEB => COREAPBSram_o10l,
BLKA => CorEAPBSRAm_o01(11),
BLKB => CoreApbSraM_L01(11),
WENA => CoreApbSram_O10L,
WENB => CoreApbSram_I00L,
CLKA => COreApbSram_oL,
CLKB => COReApbSram_ol,
RESET => COREAPBSram_ll);
CoreApbSraM_L01L: RAM4K9
port map (ADDRA11 => COREApbSram_oiiL(11),
ADDRB11 => COREAPbSram_li0l(11),
ADDRA10 => CoreApbSraM_OIIL(10),
ADDRB10 => CoreApbSraM_LI0L(10),
ADDRA9 => CoreApbSraM_OIIL(9),
ADDRB9 => CoreApbSraM_LI0L(9),
ADDRA8 => CoreApBSRAM_Oiil(8),
ADDRB8 => CoreApbSram_LI0L(8),
ADDRA7 => COReApbSram_oiIL(7),
ADDRB7 => COReApbSram_li0L(7),
ADDRA6 => COREApbSram_oiiL(6),
ADDRB6 => COreApbSram_LI0L(6),
ADDRA5 => CoreApbSRAM_OIIl(5),
ADDRB5 => CoreApbSram_LI0L(5),
ADDRA4 => CoreApbSram_OIIL(4),
ADDRB4 => COREApbSram_li0l(4),
ADDRA3 => CoreApBSRAM_Oiil(3),
ADDRB3 => CoreApbSram_LI0L(3),
ADDRA2 => CoreApbSRAM_OIil(2),
ADDRB2 => COREAPBSram_li0l(2),
ADDRA1 => CoreAPBSRAM_Oiil(1),
ADDRB1 => COREAPbSram_li0l(1),
ADDRA0 => CoreApbSram_OIIL(0),
ADDRB0 => COreApbSram_lI0L(0),
DINA8 => CoreApbSram_O10L,
DINB8 => COREAPBSram_o10l,
DINA7 => CoreAPBSRAM_iiol(7),
DINB7 => CoreAPBSRAM_O10l,
DINA6 => COREApbSram_iioL(6),
DINB6 => CoreApbSraM_O10L,
DINA5 => CoreApbSraM_IIOL(5),
DINB5 => COreApbSram_o10L,
DINA4 => CoreApbSram_IIOL(4),
DINB4 => CoreApbSram_O10L,
DINA3 => CoreApBSRAM_Iiol(3),
DINB3 => CoreApbSraM_O10L,
DINA2 => CoreApbSraM_IIOL(2),
DINB2 => COreApbSram_o10L,
DINA1 => COreApbSram_iIOL(1),
DINB1 => COREAPBSRam_o10l,
DINA0 => CoreApbSraM_IIOL(0),
DINB0 => COREApbSram_o10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApBSRAM_Illl(7),
DOUTA6 => open ,
DOUTB6 => CoreApbSraM_ILLL(6),
DOUTA5 => open ,
DOUTB5 => CoreApBSRAM_ILll(5),
DOUTA4 => open ,
DOUTB4 => COREAPBSRam_illl(4),
DOUTA3 => open ,
DOUTB3 => CoreApbSraM_ILLL(3),
DOUTA2 => open ,
DOUTB2 => COREAPbSram_illl(2),
DOUTA1 => open ,
DOUTB1 => COREAPBSram_illl(1),
DOUTA0 => open ,
DOUTB0 => COREAPBSram_illl(0),
WIDTHA1 => CoreApbSRAM_IL1(1),
WIDTHB1 => COREAPBSRam_il1(1),
WIDTHA0 => CoreApbSram_IL1(0),
WIDTHB0 => COREApbSram_il1(0),
PIPEA => CoreApbSRAM_O10l,
PIPEB => COREAPBSram_o10l,
WMODEA => CoreApbSRAM_O10l,
WMODEB => COREApbSram_o10L,
BLKA => CoreApbSrAM_O01(12),
BLKB => CoreApbSraM_L01(12),
WENA => CoreApbSRAM_O10l,
WENB => CoreApbSraM_I00L,
CLKA => COREApbSram_ol,
CLKB => CoreApbSram_OL,
RESET => CoreAPBSRAM_ll);
COREAPBSram_i01l: RAM4K9
port map (ADDRA11 => CoREAPBSram_lIIL(11),
ADDRB11 => CoreApBSRAM_ii0l(11),
ADDRA10 => COreApbSram_LIIL(10),
ADDRB10 => CoreApbSram_II0L(10),
ADDRA9 => CoreApbSram_LIIL(9),
ADDRB9 => COREAPBSram_ii0l(9),
ADDRA8 => CoreAPBSRAM_Liil(8),
ADDRB8 => COREAPBSram_ii0l(8),
ADDRA7 => CoreApbSram_LIIL(7),
ADDRB7 => CoreApbSram_II0L(7),
ADDRA6 => CoreApbSram_LIIL(6),
ADDRB6 => CoREAPBSRAm_ii0l(6),
ADDRA5 => CoreApbSrAM_LIIL(5),
ADDRB5 => CoreApbSram_II0L(5),
ADDRA4 => COreApbSram_lIIL(4),
ADDRB4 => COREAPbSram_ii0l(4),
ADDRA3 => CoreApbSRAM_LIIl(3),
ADDRB3 => CoreApbSrAM_II0L(3),
ADDRA2 => COREApbSram_liil(2),
ADDRB2 => COREAPBSRam_ii0l(2),
ADDRA1 => CoreAPBSRAM_Liil(1),
ADDRB1 => CoreApbSram_II0L(1),
ADDRA0 => CoreApbSraM_LIIL(0),
ADDRB0 => CoREAPBSRAm_ii0l(0),
DINA8 => CorEAPBSRAM_o10l,
DINB8 => COREAPBSram_o10l,
DINA7 => CoreApbSram_O0OL(7),
DINB7 => CorEAPBSRAM_o10l,
DINA6 => COREAPbSram_o0ol(6),
DINB6 => CoreApbSRAM_O10L,
DINA5 => COREApbSram_o0oL(5),
DINB5 => CoREAPBSram_o10L,
DINA4 => CoREAPBSram_o0OL(4),
DINB4 => CorEAPBSram_o10L,
DINA3 => CoreApBSRAM_o0ol(3),
DINB3 => CoreAPBSram_o10L,
DINA2 => CoreApbSRAM_O0ol(2),
DINB2 => CoreAPBSRam_o10l,
DINA1 => CoreApbSRAM_o0ol(1),
DINB1 => COREApbSram_O10L,
DINA0 => COREAPbSram_O0OL(0),
DINB0 => CoreApBSRAM_o10l,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApbSrAM_OILL(7),
DOUTA6 => open ,
DOUTB6 => CoreApbSRAM_OIll(6),
DOUTA5 => open ,
DOUTB5 => CoreApbSraM_OILL(5),
DOUTA4 => open ,
DOUTB4 => COreApbSram_oILL(4),
DOUTA3 => open ,
DOUTB3 => CoreApbSraM_OILL(3),
DOUTA2 => open ,
DOUTB2 => CorEAPBSRAM_oill(2),
DOUTA1 => open ,
DOUTB1 => COREApbSram_oilL(1),
DOUTA0 => open ,
DOUTB0 => CoreApbSRAM_OILL(0),
WIDTHA1 => CoreAPBSRAM_oi1(1),
WIDTHB1 => COreApbSram_OI1(1),
WIDTHA0 => COReApbSram_oi1(0),
WIDTHB0 => CoreApbSRAM_OI1(0),
PIPEA => COREAPBSRam_o10l,
PIPEB => CoreApbSrAM_O10L,
WMODEA => CoreApbSram_O10L,
WMODEB => CorEAPBSRAM_o10l,
BLKA => CoreApbSRAM_O01(13),
BLKB => COReApbSram_l01(13),
WENA => COREAPBSRam_o10l,
WENB => COreApbSram_i00L,
CLKA => CorEAPBSRAM_ol,
CLKB => COREApbSram_ol,
RESET => COreApbSram_LL);
COReApbSram_o11L: RAM4K9
port map (ADDRA11 => CoreAPBSRAM_iiil(11),
ADDRB11 => CoreApbSram_O00L(11),
ADDRA10 => COREApbSram_iiiL(10),
ADDRB10 => CoreAPBSRAM_o00l(10),
ADDRA9 => COreApbSram_iIIL(9),
ADDRB9 => CoreApbSram_O00L(9),
ADDRA8 => CoreApbSram_IIIL(8),
ADDRB8 => COREAPbSram_o00l(8),
ADDRA7 => COREApbSram_iiIL(7),
ADDRB7 => COREAPBSram_o00l(7),
ADDRA6 => CorEAPBSRAm_iiil(6),
ADDRB6 => COREAPbSram_o00l(6),
ADDRA5 => COREApbSram_iiil(5),
ADDRB5 => CoreApbSraM_O00L(5),
ADDRA4 => COREApbSram_iiiL(4),
ADDRB4 => COREAPbSram_o00l(4),
ADDRA3 => CoREAPBSRAm_iiil(3),
ADDRB3 => CoreApbSRAM_O00l(3),
ADDRA2 => COreApbSram_iIIL(2),
ADDRB2 => CoreApbSram_O00L(2),
ADDRA1 => CoreApbSram_IIIL(1),
ADDRB1 => COREAPBSRam_o00l(1),
ADDRA0 => CoreApbSraM_IIIL(0),
ADDRB0 => CoreApbSram_O00L(0),
DINA8 => CoREAPBSRAm_o10l,
DINB8 => CoreApbSRAM_O10l,
DINA7 => COREApbSram_l0oL(7),
DINB7 => CoreAPBSRAM_o10l,
DINA6 => COreApbSram_l0OL(6),
DINB6 => CoreAPBSRAM_O10l,
DINA5 => CoreApbSram_L0OL(5),
DINB5 => CoreApBSRAM_O10l,
DINA4 => CoreApbSrAM_L0OL(4),
DINB4 => COREApbSram_o10L,
DINA3 => CoreAPBSRAM_l0ol(3),
DINB3 => CoreAPBSRAM_o10l,
DINA2 => COReApbSram_l0OL(2),
DINB2 => COreApbSram_o10L,
DINA1 => CoreApbSram_L0OL(1),
DINB1 => COREApbSram_o10L,
DINA0 => COREAPBSram_l0ol(0),
DINB0 => CoreApbSrAM_O10L,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => COREAPBSram_lill(7),
DOUTA6 => open ,
DOUTB6 => COREAPbSram_lill(6),
DOUTA5 => open ,
DOUTB5 => CoreAPBSRAM_lill(5),
DOUTA4 => open ,
DOUTB4 => CoreApbSram_LILL(4),
DOUTA3 => open ,
DOUTB3 => CoreApbSram_LILL(3),
DOUTA2 => open ,
DOUTB2 => CorEAPBSRAM_lill(2),
DOUTA1 => open ,
DOUTB1 => CoreApbSRAM_LILl(1),
DOUTA0 => open ,
DOUTB0 => CoreApbSRAM_LILL(0),
WIDTHA1 => CorEAPBSRAM_li1(1),
WIDTHB1 => CoreApbSraM_LI1(1),
WIDTHA0 => COREAPbSram_li1(0),
WIDTHB0 => COreApbSram_lI1(0),
PIPEA => CoreApbSraM_O10L,
PIPEB => COREApbSram_o10L,
WMODEA => COREAPbSram_o10l,
WMODEB => CoreApbSrAM_O10L,
BLKA => CoreApbSrAM_O01(14),
BLKB => CoreApbSram_L01(14),
WENA => CoreApbSrAM_O10L,
WENB => COREApbSram_i00L,
CLKA => COREAPBSRam_ol,
CLKB => COREAPBSram_ol,
RESET => CorEAPBSRAm_ll);
CoreApbSRAM_L11l: RAM4K9
port map (ADDRA11 => CoreApbSram_O0IL(11),
ADDRB11 => COReApbSram_l00L(11),
ADDRA10 => COReApbSram_o0IL(10),
ADDRB10 => COREApbSram_l00L(10),
ADDRA9 => CoreAPBSRAM_o0il(9),
ADDRB9 => COREAPBSRam_l00l(9),
ADDRA8 => COREAPbSram_o0il(8),
ADDRB8 => CoreApbSraM_L00L(8),
ADDRA7 => COreApbSram_O0IL(7),
ADDRB7 => CoreApBSRAM_L00l(7),
ADDRA6 => CoreApbSram_O0IL(6),
ADDRB6 => COreApbSram_L00L(6),
ADDRA5 => COREApbSram_o0iL(5),
ADDRB5 => CoreAPBSRAM_l00l(5),
ADDRA4 => COREAPbSram_o0il(4),
ADDRB4 => COREApbSram_l00L(4),
ADDRA3 => COREAPBSram_o0il(3),
ADDRB3 => CoREAPBSRAm_l00l(3),
ADDRA2 => CoreApBSRAM_O0il(2),
ADDRB2 => COREAPBSram_l00l(2),
ADDRA1 => COREAPbSram_o0il(1),
ADDRB1 => COREApbSram_l00L(1),
ADDRA0 => COReApbSram_o0IL(0),
ADDRB0 => COReApbSram_l00L(0),
DINA8 => COREApbSram_o10l,
DINB8 => CoreApbSram_O10L,
DINA7 => COREApbSram_i0oL(7),
DINB7 => CoreApbSrAM_O10L,
DINA6 => COREAPBSRam_i0ol(6),
DINB6 => COREApbSram_o10L,
DINA5 => CoreAPBSRAM_i0ol(5),
DINB5 => CoreApbSRAM_O10l,
DINA4 => CoreAPBSRAM_i0ol(4),
DINB4 => COREAPBSram_o10l,
DINA3 => CoreApbSraM_I0OL(3),
DINB3 => CoreApbSram_O10L,
DINA2 => CorEAPBSRAM_i0ol(2),
DINB2 => COREAPbSram_o10l,
DINA1 => COREAPBSRam_i0ol(1),
DINB1 => CoREAPBSram_o10L,
DINA0 => COReApbSrAM_I0Ol(0),
DINB0 => CorEAPBSram_o10L,
DOUTA8 => open ,
DOUTB8 => open ,
DOUTA7 => open ,
DOUTB7 => CoreApbSRAM_iill(7),
DOUTA6 => open ,
DOUTB6 => CoreApbSrAM_IILL(6),
DOUTA5 => open ,
DOUTB5 => CoREAPBSRam_iill(5),
DOUTA4 => open ,
DOUTB4 => CorEAPBSram_iilL(4),
DOUTA3 => open ,
DOUTB3 => COREAPbSram_IILL(3),
DOUTA2 => open ,
DOUTB2 => COREAPbSram_iILL(2),
DOUTA1 => open ,
DOUTB1 => COreApbSraM_IILl(1),
DOUTA0 => open ,
DOUTB0 => COREAPBSram_iill(0),
WIDTHA1 => CoreApBSRAM_Ii1(1),
WIDTHB1 => CoreApbSraM_II1(1),
WIDTHA0 => CoreApBSRAM_ii1(0),
WIDTHB0 => COreApbSraM_II1(0),
PIPEA => COREAPbSram_o10L,
PIPEB => CoreAPBSRAm_o10l,
WMODEA => CoREAPbSram_o10L,
WMODEB => CoreApBSRAm_o10l,
BLKA => COREApbSraM_O01(15),
BLKB => COREApbSram_L01(15),
WENA => COREApbSram_O10L,
WENB => COreApbSrAM_I00l,
CLKA => COREApbSraM_OL,
CLKB => CoreApBSRAM_ol,
RESET => COReApbSraM_LL);
end COREApbSram_O;
