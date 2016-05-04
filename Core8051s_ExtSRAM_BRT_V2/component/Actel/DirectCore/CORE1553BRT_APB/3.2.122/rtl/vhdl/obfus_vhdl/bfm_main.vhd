-- Actel Corporation Proprietary and Confidential
-- Copyright 2008 Actel Corporation.  All rights reserved.
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
-- Revision Information:
-- SVN Revision Information:
-- SVN $Revision: 3562 $
-- SVN $Date: 2008-10-13 06:07:22 -0700 (Mon, 13 Oct 2008) $
use STD.tEXTIO.all;
library iEEE;
use Ieee.std_loGIC_1164.all;
use Ieee.Numeric_std.all;
use work.bfm_textio.all;
use Work.BFM_misc.all;
use WOrk.bfm_PACKAGE.all;
use std.Textio.all;
entity BFM_MAin is
generic (vectfile: STRIng := "test.vec";
max_instruCTIONS: iNTEGER := 16384;
max_stACK: INTEger := 1024;
max_MEMTEST: inteGER := 65536;
tpD: integer range 0 to 1000 := 1;
Debuglevel: integER range -1 to 5 := -1;
ARGValue0: integER := 0;
arGVALUE1: intEGER := 0;
ARGVAlue2: iNTEGER := 0;
argvALUE3: integer := 0;
ARGVALUE4: inteGER := 0;
ARGVAlue5: inteGER := 0;
argvaLUE6: INTeger := 0;
ARGVALue7: integer := 0;
Argvalue8: inteGER := 0;
ARGvalue9: integER := 0;
argvalue10: inTEGER := 0;
argvalUE11: INTEGEr := 0;
argvaluE12: INTEGER := 0;
Argvalue13: integer := 0;
ARGVAlue14: INteger := 0;
argvaLUE15: INTEGER := 0;
argvalue16: integer := 0;
ARGVALUE17: INTEGEr := 0;
aRGVALUE18: INTEGEr := 0;
Argvalue19: INteger := 0;
argvaluE20: integer := 0;
argvaLUE21: integeR := 0;
ARGVAlue22: INTEGER := 0;
ARGValue23: INTEGER := 0;
ARgvalue24: INTEGER := 0;
ARGVALUe25: integER := 0;
arGVALUE26: integer := 0;
ARGVALUE27: integER := 0;
aRGVALUE28: integer := 0;
ARGValue29: inteGER := 0;
argvaluE30: INTEGER := 0;
argVALUE31: INTEger := 0;
ARGVALUe32: Integer := 0;
aRGVALUE33: inTEGER := 0;
argvalue34: inteGER := 0;
ARgvalue35: integeR := 0;
ARGVALue36: INteger := 0;
arGVALUE37: INTEger := 0;
ARGVALUe38: INTEger := 0;
argVALUE39: inTEGER := 0;
argvalue40: integer := 0;
argvalue41: integer := 0;
ARGVALue42: INTEGER := 0;
ARGvalue43: INTEGEr := 0;
ARGvalue44: INTEGER := 0;
aRGVALUE45: integER := 0;
ARGVALue46: inteGER := 0;
argVALUE47: integer := 0;
argvALUE48: Integer := 0;
ARGVAlue49: integER := 0;
ARgvalue50: inteGER := 0;
argvalue51: inTEGER := 0;
argvaluE52: INTEGER := 0;
argvaLUE53: INTEGEr := 0;
ARGVALUE54: INTeger := 0;
argvaLUE55: INTEGER := 0;
argvALUE56: INTEGER := 0;
argvalUE57: integer := 0;
ARgvalue58: Integer := 0;
argvALUE59: INTEGER := 0;
argvalUE60: integer := 0;
ARGVALUE61: INTEGER := 0;
Argvalue62: INTEger := 0;
argvalUE63: integer := 0;
ARGVALue64: inTEGER := 0;
argvaLUE65: integer := 0;
Argvalue66: INTEGER := 0;
ARGvalue67: INTEGER := 0;
ARGvalue68: inteGER := 0;
argvaluE69: INTEGEr := 0;
ARGVALUE70: integer := 0;
ARGValue71: integer := 0;
argvaLUE72: INTEger := 0;
ARGVALUE73: INTeger := 0;
ARGVALUE74: INTeger := 0;
ARGVALUe75: Integer := 0;
ARgvalue76: integer := 0;
ARGVALue77: INteger := 0;
ARGVALUe78: INTEger := 0;
argvalue79: integer := 0;
ARGvalue80: Integer := 0;
argvalue81: integer := 0;
argvalUE82: integER := 0;
aRGVALUE83: integER := 0;
argvALUE84: intEGER := 0;
ARGVALUE85: INTEGER := 0;
ARgvalue86: INTEGEr := 0;
aRGVALUE87: integER := 0;
argvalue88: INTEger := 0;
aRGVALUE89: integer := 0;
Argvalue90: INTEGER := 0;
argvaLUE91: Integer := 0;
argvalue92: INTEGER := 0;
arGVALUE93: integer := 0;
ARGVALUE94: integer := 0;
ARGvalue95: integer := 0;
Argvalue96: integer := 0;
arGVALUE97: INTEger := 0;
Argvalue98: integeR := 0;
ARGVALUe99: INTEger := 0); port (SYsclk: in std_logic;
SYSRSTN: in std_LOGIC;
Pclk: out std_logic;
hclk: out std_LOGIC;
hrESETN: out STD_logic;
hADDR: out Std_logic_vECTOR(31 downto 0);
hburst: out STD_Logic_vectOR(2 downto 0);
hMASTLOCK: out std_LOGIC;
Hprot: out std_lOGIC_VECtor(3 downto 0);
hsize: out STD_logic_vecTOR(2 downto 0);
htRANS: out std_LOGIC_Vector(1 downto 0);
Hwrite: out std_LOGIC;
hwdatA: out std_loGIC_VECtor(31 downto 0);
HRData: in STD_logic_veCTOR(31 downto 0);
hready: in Std_logic;
HRESP: in STd_logic;
hsel: out Std_logic_vECTOR(15 downto 0);
interrupT: in std_loGIC_VECtor(255 downto 0);
GP_OUT: out STD_LOGIc_vector(31 downto 0);
GP_IN: in std_loGIC_VECtor(31 downto 0);
ext_WR: out STD_logic;
ext_rd: out std_LOGIC;
EXT_addr: out Std_logic_vECTOR(31 downto 0);
EXT_data: inout std_logiC_VECTOr(31 downto 0);
ext_wAIT: in std_LOGIC;
INStr_out: out std_logic_VECTOR(31 downto 0);
INSTr_in: in STD_logic_vecTOR(31 downto 0);
finished: out STD_Logic;
FAiled: out STD_logic);
end Bfm_main;

architecture BFMA1i00I of bfm_MAIN is

constant BFMA1O10i: sTRING(1 to 3) := "2.1";

constant BFMA1l10i: STRIng(1 to 7) := "10Oct08";

constant CON_Spulse: integER range 0 to 1 := 0;

constant opMODE: intEGER range 0 to 1 := 0;

signal BFMA1i10I: std_lOGIC;

signal BFMA1oo1i: STD_logic;

signal BFMA1lo1i: STD_LOgic_vectoR(2 downto 0);

signal BFMA1IO1I: std_LOGIC;

signal BFMA1ol1i: std_logIC_VECTor(3 downto 0);

signal BFMA1ll1i: STD_logic_vecTOR(1 downto 0);

signal BFMA1il1i: STD_logic;

signal BFMA1OI1i: STD_logic_veCTOR(31 downto 0);

signal BFMA1li1i: std_logIC_VECTor(31 downto 0) := ( others => '0');

signal BFMA1ii1i: std_logiC_VECTOr(31 downto 0) := ( others => '0');

signal BFMA1o01i: STD_logic_veCTOR(2 downto 0);

signal BFMA1l01I: std_logic_VECTOR(2 downto 0);

signal BFMA1i01I: STd_logic_veCTOR(15 downto 0);

signal BFMA1O11I: STD_Logic;

signal BFMA1l11I: STD_LOgic;

signal BFMA1i11i: std_loGIC;

signal BFMA1ooo0: std_LOGIC;

signal BFMA1LOO0: STD_LOgic;

signal BFMA1ioo0: std_logic;

signal BFMA1olo0: STD_LOGIc;

signal BFMA1LLO0: STD_LOgic;

signal BFMA1ILo0: STD_LOGIc_vector(31 downto 0);

signal BFMA1oio0: STD_logic_vecTOR(31 downto 0);

signal BFMA1liO0: STD_Logic_vectOR(31 downto 0);

signal BFMA1iio0: sTD_LOGIC_vector(31 downto 0);

signal BFMA1O0O0: STd_logic_vECTOR(31 downto 0);

signal BFMA1L0o0: std_logic_VECTOR(31 downto 0);

signal BFMA1i0o0: std_logic_VECTOR(31 downto 0);

signal BFMA1o1o0: std_logIC_VECTor(31 downto 0);

signal BFMA1L1o0: integer;

signal BFMA1i1o0: STD_LOGIc;

signal BFMA1ool0: sTD_LOGIC;

signal BFMA1LOL0: std_logiC_VECTOr(31 downto 0);

signal BFMA1iol0: STD_logic_vecTOR(31 downto 0);

signal BFMA1OLL0: INTEGER;

signal BFMA1lll0: std_lOGIC;

signal BFMA1ill0: std_logic;

signal BFMA1oil0: std_logic;

signal BFMA1lil0: std_lOGIC;

signal BFMA1IIL0: STD_Logic;

signal BFMA1o0l0: STD_logic_vecTOR(31 downto 0);

signal BFMA1l0l0: Std_logic_vECTOR(31 downto 0);

signal BFMA1I0l0: STD_LOGic_vectoR(31 downto 0);

signal BFMA1O1L0: std_lOGIC_VEctor(31 downto 0);

signal BFMA1L1l0: std_LOGIC_vector(31 downto 0);

signal BFMA1I1L0: std_logiC_VECTOr(31 downto 0);

signal BFMA1ooI0: std_logic;

signal BFMA1loi0: STD_logic;

signal DEBUG: INTEGER;

signal BFMA1iOI0: INTEGer;

signal BFMA1oli0: inTEGER;

signal BFMA1LLi0: std_lOGIC := '0';

signal BFMA1ilI0: std_loGIC_VECtor(31 downto 0);

signal BFMA1oII0: STRIng(1 to 80);

signal BFMA1lii0: sTD_LOGIC;

signal BFMA1iii0: stD_LOGIC;

signal BFMA1o0i0: BOOLEAN;

signal BFMA1l0i0: boolean;

signal BFMA1i0I0: booLEAN;

signal BFMA1O1I0: BOOLEAN;

signal cON_ADDR: STD_LOGic_vectoR(15 downto 0);

signal con_DATA: std_logiC_VECTOr(31 downto 0);

signal con_rd: STD_LOgic;

signal con_wr: stD_LOGIC;

signal con_bUSY: STd_logic;

constant BFMA1L1i0: STD_LOGic_vector(31 downto 0) := ( others => '0');

constant BFMA1I1I0: STD_LOgic_vectoR(255 downto 0) := ( others => '0');

constant BFMA1oo00: Time := TPD*1 ns;

begin
CON_ADdr <= ( others => '0');
CON_data <= ( others => 'Z');
con_rd <= '0';
CON_wr <= '0';
BFMA1I10I <= sysclk;
BFMA1I00i:
process (BFMA1i10i,SYsrstn)
file BFMA1lo00: TEXT;
file BFMA1IO00: teXT;
subtype BFMA1ol00 is strING(1 to 256);
type BFMA1ll00 is (BFMA1IL00,BFMA1Oi00);
type BFMA1li00 is array (integer range <> ) of BFMA1OL00;
variable l: LINE;
variable BFMA1ii00: filE_OPEN_status;
variable BFMA1O000: BOOlean;
variable BFMA1OLLI: INTEGER_array(0 to maX_INSTRUctions-1);
variable BFMA1l000: BFMA1o11L(0 to max_iNSTRUCTions-1);
variable BFMA1IOLI: integer_arRAY(0 to max_inSTRUCTIons-1) := ( others => 0);
variable BFMA1i000: INTEger_array(0 to max_stACK-1);
variable BFMA1O100: integER_ARRAy(0 to 4);
variable BFMA1l100: INTeger;
variable BFMA1loli: integeR;
variable BFMA1i100: INTEGer;
variable BFMA1Oo10: inTEGER;
variable BFMA1lo10: iNTEGER;
variable BFMA1iO10: Integer;
variable BFMA1Ol10: std_logiC_VECTOr(31 downto 0);
variable BFMA1ll10: Integer range 0 to 3;
variable BFMA1il10: intEGER;
variable BFMA1oi10: integer;
variable BFMA1LI10: INteger;
variable BFMA1Ii10: Integer;
variable BFMA1o010: integer;
variable BFMA1L010: INTEGEr;
variable BFMA1I010: std_logic_VECTOR(2 downto 0);
variable BFMA1O110: STD_LOGIc_vector(31 downto 0);
variable BFMA1l110: std_logic_VECTOR(31 downto 0);
variable BFMA1i110: sTD_LOGIC_vector(31 downto 0);
variable BFMA1OOO1: Boolean;
variable BFMA1loo1: BOOlean;
variable BFMA1ioo1: BOOLEan;
variable BFMA1olo1: BOOLEAN;
variable BFMA1LLO1: boOLEAN;
variable BFMA1ILO1: boolean;
variable BFMA1oio1: BOOLEAN;
variable BFMA1liO1: BOolean;
variable BFMA1iio1: booLEAN;
variable BFMA1o0o1: bOOLEAN;
variable BFMA1l0O1: BOOLEan;
variable BFMA1I0O1: integer;
variable BFMA1O1O1: INTEger;
variable BFMA1l1o1: inteGER;
variable BFMA1l1ii: Integer;
variable BFMA1O0II: iNTEGER;
variable BFMA1IO0i: INTEGER;
variable x: integER;
variable Y: integer;
variable v: integER;
variable BFMA1Oo0i: STRINg(1 to 256);
variable BFMA1i1O1: STRING(1 to 256);
variable BFMA1OOL1: STRING(1 to 256);
variable BFMA1lol1: integer;
variable BFMA1IOL1: integeR;
variable BFMA1oll1: INTEger;
variable BFMA1lll1: integer;
variable BFMA1ill1: INTEGER_array(0 to 8191);
variable BFMA1OIL1: striNG(1 to 8);
variable BFMA1liL1: BOOlean;
variable BFMA1IIl1: boolean;
variable BFMA1O0L1: chaRACTER;
variable BFMA1L0L1: integer;
variable BFMA1i0l1: INTEGER;
variable BFMA1o1l1: integER;
variable BFMA1l1l1: inTEGER;
variable BFMA1I1l1: Integer;
variable BFMA1ooi1: Integer;
variable BFMA1loi1: Integer;
variable BFMA1i0ii: INTEGER;
variable BFMA1Ioi1: INTEger;
variable BFMA1oli1: Integer;
variable BFMA1llI1: integER;
variable BFMA1ILi1: INTEGER;
variable BFMA1Oii1: INTEGEr := 0;
variable BFMA1lii1: iNTEGER := 0;
variable BFMA1iii1: integer;
variable BFMA1o0i1: INTEGER;
variable eXP: STD_LOGic_vectoR(31 downto 0);
variable BFMA1l0i1: STD_LOGIc_vector(31 downto 0);
variable BFMA1I0I1: booleaN;
variable BFMA1o1i1: BOOLEAN;
variable BFMA1l1i1: BOOLEAN;
variable BFMA1i1i1: booleAN;
variable BFMA1oo01: BFMA1LL00;
variable BFMA1lo01: integeR := 0;
variable BFMA1iO01: string(1 to 10);
variable BFMA1OL01: std_logiC;
variable BFMA1LL01: stD_LOGIC_vector(3 downto 0);
variable BFMA1IL01: std_loGIC_VECtor(2 downto 0);
variable BFMA1OI01: INTEGer;
variable BFMA1li01: boolean;
variable BFMA1ii01: Boolean;
variable BFMA1o001: BFMA1li00(0 to 100);
variable BFMA1L001: INTEger := 0;
variable BFMA1I001: iNteger := 65536;
variable BFMA1o101: integER range 0 to 3;
variable BFMA1l101: INTEGER range 0 to 32;
variable BFMA1I101: INTEger range 0 to 65536;
variable BFMA1oo11: BOOLean;
variable BFMA1lo11: BOOLEAn;
variable BFMA1IO11: integer;
variable BFMA1ol11: bOOLEAN;
variable BFMA1ll11: booleaN;
variable BFMA1il11: bOOLEAN;
variable BFMA1oI11: INTEGer;
variable BFMA1LI11: Boolean;
variable BFMA1ii11: booleAN;
variable BFMA1o011: boolean;
variable BFMA1l011: boolean;
variable BFMA1I011: Boolean;
variable BFMA1o111: Integer;
variable BFMA1l111: intEGER;
variable BFMA1i111: Integer;
variable BFMA1OOOOL: inTEGER;
variable BFMA1Loool: INTEGEr;
variable BFMA1ioool: integer;
variable BFMA1OLOOL: inTEGER := 0;
variable BFMA1llool: std_logic;
variable BFMA1ILool: STD_LOGic_vector(1 downto 0);
variable BFMA1OIOOL: sTD_LOGIC_vector(2 downto 0);
variable BFMA1liool: std_logic;
variable BFMA1iiool: STD_Logic_vectOR(3 downto 0);
variable BFMA1o0ool: INTEGEr := 0;
variable BFMA1L0OOL: integer := 0;
variable BFMA1i0ool: integer_ARRAY(0 to 15);
variable BFMA1o1ool: integer;
variable BFMA1L1OOl: integeR_ARRAY(0 to 255);
variable BFMA1i1OOL: integer range 0 to 256;
variable BFMA1OOlol: INTEGEr range 0 to 256;
variable BFMA1LOLol: boolEAN_ARRAy(1 to 255);
variable BFMA1IOLOL: integER range 0 to 256;
variable BFMA1ollol: inTEGER;
type BFMA1lLLOL is (BFMA1illol,BFMA1oilol,active,BFMA1LILOL,BFMA1IILOl,BFMA1O0Lol);
variable BFMA1l0lol: integER;
variable BFMA1I0lol: INTEGer;
variable BFMA1O1LOL: INTEGER;
variable BFMA1L1lol: INTEGER;
variable BFMA1i1lol: integer;
variable BFMA1OOIOL: BFMA1llLOL;
variable BFMA1LOIOL: integer_arRAY(0 to mAX_MEMTEst-1);
variable BFMA1IOIOL: integeR;
variable BFMA1OLIOL: INTEGER;
variable BFMA1lliol: intEGER;
variable BFMA1ILiol: intEGER;
variable BFMA1oiiol: BOOLEAn;
variable BFMA1liiol: intEGER;
variable BFMA1iiiOL: INTEGER;
variable BFMA1O0Iol: integer;
variable BFMA1L0IOl: Boolean;
variable BFMA1i0iol: boolean;
variable BFMA1O1IOL: BOOLEAn;
variable BFMA1l1iol: booleaN;
variable BFMA1i1iol: boolean;
variable BFMA1OO0OL: INTEGER;
variable BFMA1lo0ol: integer;
impure function BFMA1io0OL(BFMA1OL0OL: booleaN;
x: INteger)
return INTEGEr is
variable y: intEGER;
variable BFMA1LL0OL: integER;
variable BFMA1IL0Ol: integeR;
variable BFMA1OI0OL: integer;
variable BFMA1li0OL: INTEGER;
variable BFMA1ii0ol: INTeger;
variable BFMA1lioi: Std_logic_vECTOR(31 downto 0);
variable BFMA1O00OL: INteger;
begin
if BFMA1OL0OL then
BFMA1lioi := To_slv32(X);
BFMA1ll0oL := to_inT_UNSIGned(BFMA1LIOI(30 downto 16));
BFMA1IL0OL := tO_INT_Unsigned(BFMA1lioi(14 downto 13));
BFMA1OI0ol := tO_INT_UNsigned(BFMA1lioi(12 downto 0));
BFMA1li0ol := TO_INT_unsigned(BFMA1lioI(12 downto 8));
BFMA1ii0ol := to_inT_UNSIGned(BFMA1lioI(7 downto 0));
BFMA1O00OL := 0;
if BFMA1LIOI(15) = '1' then
BFMA1O00ol := BFMA1IO0ol(true,
BFMA1lL0OL);
end if;
case BFMA1il0ol is
when 3 =>
case BFMA1li0ol is
when BFMA1ol0l =>
case BFMA1II0OL is
when BFMA1O00L =>
y := BFMA1ooI1;
when BFMA1L00L =>
y := (NOW/1 NS);
when BFMA1I00l =>
y := dEBUG;
when BFMA1o10l =>
y := BFMA1o010;
when BFMA1l10l =>
y := BFMA1lo01;
when BFMA1i10L =>
y := BFMA1ollol-1;
when BFMA1OO1L =>
Y := BFMA1O0OOl;
when BFMA1Lo1l =>
y := BFMA1L0ool;
when others =>
assert falsE report "Illegal Parameter P0" severity failURE;
end case;
when BFMA1ll0l =>
case BFMA1ii0ol is
when 0 =>
y := ARgvalue0;
when 1 =>
Y := argVALUE1;
when 2 =>
Y := argvalue2;
when 3 =>
Y := argvalue3;
when 4 =>
Y := argvaLUE4;
when 5 =>
y := argvaLUE5;
when 6 =>
y := ARGvalue6;
when 7 =>
Y := argvALUE7;
when 8 =>
y := argVALUE8;
when 9 =>
Y := argvaLUE9;
when 10 =>
y := argvalue10;
when 11 =>
Y := aRGVALUE11;
when 12 =>
Y := argvalue12;
when 13 =>
Y := ARGValue13;
when 14 =>
y := argvaluE14;
when 15 =>
y := argVALUE15;
when 16 =>
Y := ARgvalue16;
when 17 =>
y := ARGvalue17;
when 18 =>
y := Argvalue18;
when 19 =>
y := ARgvalue19;
when 20 =>
y := argvalue20;
when 21 =>
y := ARgvalue21;
when 22 =>
y := ARgvalue22;
when 23 =>
Y := ARGVAlue23;
when 24 =>
Y := argVALUE24;
when 25 =>
y := argvALUE25;
when 26 =>
Y := argVALUE26;
when 27 =>
Y := aRGVALUE27;
when 28 =>
y := argVALUE28;
when 29 =>
y := ARGValue29;
when 30 =>
Y := ARGvalue30;
when 31 =>
Y := ARGvalue31;
when 32 =>
y := ARGVALUE32;
when 33 =>
y := ARGVALUe33;
when 34 =>
y := ARgvalue34;
when 35 =>
y := argvalUE35;
when 36 =>
Y := ARGVAlue36;
when 37 =>
Y := ARGVALUE37;
when 38 =>
Y := ARGVALUE38;
when 39 =>
Y := ARGVALUE39;
when 40 =>
Y := ARGValue40;
when 41 =>
y := ARGVAlue41;
when 42 =>
Y := ARGVAlue42;
when 43 =>
y := argVALUE43;
when 44 =>
Y := argvalue44;
when 45 =>
y := ARGVALue45;
when 46 =>
Y := argvALUE46;
when 47 =>
Y := argvALUE47;
when 48 =>
y := ARGVALue48;
when 49 =>
Y := ARGValue49;
when 50 =>
y := ARGVALUe50;
when 51 =>
y := ARGVALUE51;
when 52 =>
y := argvalUE52;
when 53 =>
Y := Argvalue53;
when 54 =>
y := argvALUE54;
when 55 =>
Y := argvaluE55;
when 56 =>
Y := ARGVALUe56;
when 57 =>
Y := argvalue57;
when 58 =>
Y := ARGVALUE58;
when 59 =>
Y := ARGVALUe59;
when 60 =>
Y := ARGVALue60;
when 61 =>
Y := ARGVALUE61;
when 62 =>
y := argvaLUE62;
when 63 =>
y := Argvalue63;
when 64 =>
Y := aRGVALUE64;
when 65 =>
Y := argVALUE65;
when 66 =>
y := ARGvalue66;
when 67 =>
Y := argvaluE67;
when 68 =>
y := ARGVAlue68;
when 69 =>
y := ARgvalue69;
when 70 =>
Y := argvalue70;
when 71 =>
Y := ARGVAlue71;
when 72 =>
Y := argvalUE72;
when 73 =>
Y := argvalue73;
when 74 =>
y := ARgvalue74;
when 75 =>
y := ARGVAlue75;
when 76 =>
y := argvaLUE76;
when 77 =>
y := arGVALUE77;
when 78 =>
y := argvalue78;
when 79 =>
y := argvALUE79;
when 80 =>
y := aRGVALUE80;
when 81 =>
y := arGVALUE81;
when 82 =>
Y := argVALUE82;
when 83 =>
y := argvalUE83;
when 84 =>
y := argvaluE84;
when 85 =>
y := ARGVALue85;
when 86 =>
Y := ARGVALUE86;
when 87 =>
y := ARGVAlue87;
when 88 =>
Y := aRGVALUE88;
when 89 =>
y := ARGVALUe89;
when 90 =>
Y := argvalue90;
when 91 =>
Y := argvALUE91;
when 92 =>
y := ARgvalue92;
when 93 =>
Y := argvalue93;
when 94 =>
y := ARGVALUE94;
when 95 =>
y := ARGVALUe95;
when 96 =>
Y := argvaluE96;
when 97 =>
Y := ARGVAlue97;
when 98 =>
Y := ARGVALUE98;
when 99 =>
y := argvALUE99;
when others =>
assert FALSE report "Illegal Parameter P1" severity FAILURe;
end case;
when BFMA1iL0L =>
BFMA1LOOOL := BFMA1o0li(BFMA1loool);
Y := BFMA1l0li(BFMA1LOool,
BFMA1II0OL);
when BFMA1OI0L =>
BFMA1IOool := BFMA1loool;
BFMA1Loool := BFMA1o0li(BFMA1loOOL);
y := BFMA1l0li(BFMA1loool,
BFMA1ii0ol);
when BFMA1li0l =>
BFMA1loool := BFMA1IOOOL;
BFMA1LOOOL := BFMA1O0LI(BFMA1loool);
Y := BFMA1l0li(BFMA1loooL,
BFMA1Ii0ol);
when others =>
assert FALSE report "Illegal Parameter P2" severity failure;
end case;
when 2 =>
y := BFMA1I000(BFMA1lo10-BFMA1oi0ol+BFMA1O00ol);
when 1 =>
Y := BFMA1I000(BFMA1oi0ol+BFMA1o00ol);
when 0 =>
y := BFMA1oi0oL;
when others =>
assert false report "Illegal Parameter P3" severity failURE;
end case;
else
y := x;
end if;
return (Y);
end BFMA1IO0Ol;
impure function BFMA1l00ol(x: integer)
return Integer is
variable BFMA1i00ol: INTEger;
variable BFMA1ll0ol: inTEGER;
variable BFMA1IL0ol: integer;
variable BFMA1oi0ol: INteger;
variable BFMA1li0ol: integer;
variable BFMA1II0Ol: INTEGEr;
variable BFMA1lioi: std_logic_VECTOR(31 downto 0);
variable BFMA1o00ol: integer;
begin
BFMA1Lioi := to_slv32(X);
BFMA1ll0ol := TO_INt_unsigneD(BFMA1lioi(30 downto 16));
BFMA1il0ol := To_int_unsiGNED(BFMA1LIOI(14 downto 13));
BFMA1OI0OL := to_int_UNSIGNed(BFMA1lioi(12 downto 0));
BFMA1LI0ol := TO_INT_unsigned(BFMA1LIOI(12 downto 8));
BFMA1II0Ol := to_INT_UNSigned(BFMA1lioi(7 downto 0));
BFMA1o00ol := 0;
if BFMA1LIOi(15) = '1' then
BFMA1o00ol := BFMA1io0OL(TRUE,
BFMA1LL0ol);
end if;
case BFMA1il0ol is
when 3 =>
assert fALSE report "$Variables not allowed" severity FAILURE;
when 2 =>
BFMA1i00ol := BFMA1lo10-BFMA1oi0ol+BFMA1O00ol;
when 1 =>
BFMA1i00ol := BFMA1oi0OL+BFMA1o00oL;
when 0 =>
assert false report "Immediate data not allowed" severity failure;
when others =>
assert false report "Illegal Parameter P3" severity failure;
end case;
return (BFMA1I00OL);
end BFMA1L00ol;
begin
if sysrstn = '0' then
BFMA1lli0 <= '0';
DEBUG <= debuGLEVEL;
BFMA1li1i <= ( others => '0');
BFMA1lo1i <= ( others => '0');
BFMA1io1i <= '0';
BFMA1ol1I <= ( others => '0');
BFMA1O01I <= ( others => '0');
BFMA1ll1i <= ( others => '0');
BFMA1il1i <= '0';
BFMA1ili0 <= ( others => '0');
instr_OUT <= ( others => '0');
BFMA1L11I <= '0';
BFMA1i11i <= '0';
BFMA1ilo0 <= ( others => '0');
BFMA1oio0 <= ( others => '0');
BFMA1liO0 <= ( others => '0');
BFMA1lil0 <= '0';
BFMA1lll0 <= '0';
BFMA1ill0 <= '0';
BFMA1i0l0 <= ( others => '0');
BFMA1l0L0 <= ( others => '0');
BFMA1Lii0 <= '0';
BFMA1oii0(1 to 8) <= "UNKNOWN"&nul;
BFMA1ooo0 <= '0';
BFMA1IIo0 <= ( others => '0');
BFMA1O0O0 <= ( others => '0');
BFMA1oli0 <= 0;
BFMA1II1i <= ( others => '0');
BFMA1OOL0 <= '0';
BFMA1lol0 <= ( others => '0');
BFMA1IOL0 <= ( others => '0');
BFMA1oll0 <= 0;
BFMA1iii0 <= '0';
BFMA1oo1i <= '0';
con_busY <= '0';
BFMA1oli0 <= 0;
BFMA1loo0 <= '0';
BFMA1ioo0 <= '0';
BFMA1o0i0 <= FALSE;
BFMA1L0i0 <= false;
BFMA1i0i0 <= falsE;
BFMA1O1i0 <= false;
BFMA1oo01 := BFMA1Il00;
BFMA1o000 := false;
BFMA1LOLI := 0;
BFMA1o0o1 := false;
BFMA1ili1 := 0;
BFMA1OOO1 := FALSE;
BFMA1oio1 := False;
BFMA1lLO1 := false;
BFMA1loO1 := false;
BFMA1ioo1 := FALSe;
BFMA1olo1 := FALSe;
BFMA1ilo1 := FALSE;
BFMA1lio1 := False;
BFMA1LO10 := 0;
BFMA1lli1 := 0;
BFMA1l010 := 512;
BFMA1Li01 := false;
BFMA1LO01 := 0;
BFMA1i1i1 := FALSe;
BFMA1OL01 := '0';
BFMA1ll01 := "0011";
BFMA1IL01 := "001";
BFMA1lil1 := false;
BFMA1O101 := 2;
BFMA1l101 := 4;
BFMA1I101 := 0;
BFMA1oo11 := false;
BFMA1io11 := 0;
BFMA1LO0ol := 0;
BFMA1Ooi1 := 0;
BFMA1oL11 := false;
BFMA1OI11 := 0;
BFMA1ii11 := FALSE;
BFMA1o011 := FALSE;
BFMA1L011 := false;
BFMA1i011 := falsE;
BFMA1oOL1(1) := nul;
BFMA1li11 := FALSE;
BFMA1OOOOL := 0;
BFMA1IOool := 1;
BFMA1LOOOL := 1;
BFMA1OLOOL := 0;
BFMA1OLLOL := 0;
BFMA1o1ool := 0;
BFMA1i1ooL := 0;
BFMA1oolol := 0;
BFMA1iolol := 0;
elsif BFMA1i10i = '1' and BFMA1i10i'event then
BFMA1ooi0 <= CON_rd;
BFMA1Loi0 <= CON_WR;
BFMA1LLL0 <= '0';
BFMA1ill0 <= '0';
BFMA1lil0 <= '0';
BFMA1iil0 <= '0';
BFMA1IIO1 := FALSe;
if not BFMA1o000 then
Printf(" ");
prINTF("###########################################################################");
printf("AMBA BFM Model");
PRINTF("Version %s  %s",
fmt(BFMA1O10I)&fmt(BFMA1l10i));
printf(" ");
PRINTf("Opening BFM Script file %s",
FMT(vectfilE));
if not BFMA1o000 and opmodE /= 2 then
file_open(BFMA1ii00,
BFMA1lo00,
VECTFile);
if not (BFMA1II00 = open_ok) then
assert FALse report "FAILED to load script file "&VECTFIle severity FAILUre;
else
V := 0;
BFMA1iil1 := false;
while not BFMA1iil1
loop
REadline(BFMA1LO00,
l);
for BFMA1io0i in 1 to 8
loop
read(l,
BFMA1o0l1);
BFMA1oil1(BFMA1IO0I) := BFMA1o0l1;
end loop;
BFMA1Ioli(v) := to_INTEGER(to_dwoRD_SIGNed(BFMA1OIL1));
v := v+1;
BFMA1iiL1 := ENDFILE(BFMA1LO00);
end loop;
File_close(BFMA1lo00);
end if;
BFMA1O000 := true;
BFMA1l100 := V;
BFMA1o111 := BFMA1ioli(0) mod 65536;
BFMA1i111 := BFMA1ioLI(0)/65536;
Printf("Read %d Vectors - Compiler Version %d.%d",
fMT(BFMA1l100)&fmt(BFMA1I111)&FMT(BFMA1o111));
if BFMA1i111 /= BFMA1O then
assert false report "Incorrect vectors file format for this BFM"&VECTFIle severity faiLURE;
end if;
BFMA1loli := BFMA1IOLI(1);
BFMA1oo10 := BFMA1IOLI(2);
BFMA1lo10 := BFMA1ioli(3);
BFMA1I000(BFMA1LO10) := 0;
BFMA1Lo10 := BFMA1lo10+1;
if BFMA1lolI = 0 then
assert false report "BFM Compiler reported errors" severity FAILURE;
end if;
prINTF("BFM:Filenames includes in Vectors");
BFMA1ol10 := to_slv32(BFMA1ioli(BFMA1OO10));
BFMA1il10 := BFMA1ioli(BFMA1oo10) rem 256;
while BFMA1IL10 = BFMA1l00
loop
BFMA1ii10 := BFMA1llli(BFMA1ioli(BFMA1oo10+1));
BFMA1olLI := ( others => 0);
BFMA1OO0I := BFMA1ooLI(BFMA1OO10,
BFMA1ioli(BFMA1Oo10 to BFMA1OO10+BFMA1iI10-1),
BFMA1OLLI);
printf("  %s",
FMT(BFMA1oo0I));
for BFMA1o0II in 1 to 256
loop
BFMA1o001(BFMA1l001)(BFMA1o0ii) := BFMA1OO0I(BFMA1o0ii);
end loop;
BFMA1L001 := BFMA1L001+1;
BFMA1OO10 := BFMA1oo10+BFMA1II10;
BFMA1OL10 := tO_SLV32(BFMA1IOLI(BFMA1oo10));
BFMA1IL10 := BFMA1iolI(BFMA1OO10) rem 256;
end loop;
BFMA1I001 := 65536;
if BFMA1L001 > 1 then
BFMA1I001 := 32768;
end if;
if BFMA1l001 > 2 then
BFMA1I001 := 16384;
end if;
if BFMA1L001 > 4 then
BFMA1I001 := 8912;
end if;
if BFMA1l001 > 8 then
BFMA1i001 := 4096;
end if;
if BFMA1l001 > 16 then
BFMA1i001 := 2048;
end if;
if BFMA1l001 > 32 then
BFMA1I001 := 1024;
end if;
BFMA1OL11 := (opmode = 0);
end if;
end if;
if OPMODe = 2 and not BFMA1O000 then
BFMA1i001 := 65536;
BFMA1O000 := true;
BFMA1OL11 := False;
BFMA1lO10 := 0;
BFMA1i000(BFMA1lo10) := 0;
BFMA1lo10 := BFMA1lo10+1;
end if;
if BFMA1olool <= 1 then
BFMA1Oo1i <= '1';
else
BFMA1olool := BFMA1olool-1;
end if;
case BFMA1oo01 is
when BFMA1IL00 =>
if hreSP = '1' and HREADY = '1' then
assert FALSE report "BFM: HRESP Signaling Protocol Error T2" severity errOR;
BFMA1LO01 := BFMA1lO01+1;
end if;
if HRESp = '1' and hreaDY = '0' then
BFMA1OO01 := BFMA1oi00;
end if;
when BFMA1oi00 =>
if hresp = '0' or HREADy = '0' then
assert false report "BFM: HRESP Signaling Protocol Error T3" severity error;
BFMA1LO01 := BFMA1lo01+1;
end if;
if HRESP = '1' and HREady = '1' then
BFMA1oO01 := BFMA1il00;
end if;
case BFMA1lli1 is
when 0 =>
assert false report "BFM: Unexpected HRESP Signaling Occured" severity ERRor;
BFMA1lo01 := BFMA1LO01+1;
when 1 =>
BFMA1I1I1 := true;
when others =>
assert falSE report "BFM: HRESP mode is not correctly set" severity ERROR;
BFMA1lO01 := BFMA1lo01+1;
end case;
end case;
if oPMODE > 0 then
if CON_WR = '1' and (BFMA1Loi0 = '0' or CON_spulse = 1) then
BFMA1l1ii := BFMA1oioi(con_addr);
case BFMA1L1ii is
when 0 =>
BFMA1ol11 := (BFMA1L1L0(0) = '1');
BFMA1ll11 := (BFMA1l1l0(1) = '1');
BFMA1LIL1 := FALSE;
if BFMA1OL11 and not BFMA1ll11 then
BFMA1I000(BFMA1lo10) := 0;
BFMA1lo10 := BFMA1lo10+1;
end if;
if DEBug >= 2 and BFMA1ol11
and not BFMA1LL11 then
PRIntf("BFM: Starting script at %08x (%d parameters)",
fmt(BFMA1loli)&FMt(BFMA1o1ool));
end if;
if debuG >= 2 and BFMA1ol11
and BFMA1ll11 then
printF("BFM: Starting instruction at %08x",
FMT(BFMA1loli));
end if;
if BFMA1Ol11 then
if BFMA1o1oOL > 0 then
for BFMA1o0ii in 0 to BFMA1o1ool-1
loop
BFMA1i000(BFMA1LO10) := BFMA1I0OOl(BFMA1o0ii);
BFMA1LO10 := BFMA1lo10+1;
end loop;
BFMA1o1oOL := 0;
end if;
BFMA1I1ool := 0;
BFMA1OOlol := 0;
end if;
when 1 =>
BFMA1loli := tO_INT_Unsigned(BFMA1l1l0);
when 2 =>
BFMA1I0OOL(BFMA1O1OOL) := to_int_siGNED(BFMA1l1l0);
BFMA1O1OOl := BFMA1o1ool+1;
when others =>
BFMA1ioli(BFMA1l1II) := TO_int_signeD(BFMA1l1l0);
end case;
end if;
if con_rd = '1' and (BFMA1OOi0 = '0' or con_spuLSE = 1) then
BFMA1l1ii := BFMA1oioi(CON_ADDr);
case BFMA1l1ii is
when 0 =>
BFMA1i1l0 <= ( others => '0');
BFMA1i1l0(2) <= TO_STd_logic(BFMA1oL11);
BFMA1i1l0(3) <= to_STD_LOGic(BFMA1lo01 > 0);
when 1 =>
BFMA1i1l0 <= TO_STD_logic(TO_unsigned(BFMA1loli,
32));
when 2 =>
BFMA1I1L0 <= to_std_LOGIC(TO_Unsigned(BFMA1OOI1,
32));
BFMA1o1ool := 0;
when 3 =>
if BFMA1i1ool > BFMA1oolol then
BFMA1i1L0 <= to_std_loGIC(to_unsigneD(BFMA1L1OOL(BFMA1OOlol),
32));
BFMA1oolol := BFMA1OOLOl+1;
else
Printf("BFM: Overread Control return stack");
BFMA1I1l0 <= ( others => '0');
end if;
when others =>
BFMA1I1L0 <= to_sTD_LOGIc(to_unsignED(BFMA1IOLI(BFMA1l1ii),
32));
end case;
end if;
end if;
BFMA1oii1 := BFMA1oii1+1;
BFMA1ollol := BFMA1Ollol+1;
BFMA1l0iol := TRUE;
while BFMA1l0iol
loop
BFMA1L0iol := false;
if not BFMA1o0o1 and BFMA1ol11 then
BFMA1OL10 := TO_SLv32(BFMA1IOLI(BFMA1loli));
BFMA1ll10 := tO_INT_UNsigned(BFMA1ol10(1 downto 0));
BFMA1IL10 := to_int_unSIGNED(BFMA1ol10(7 downto 0));
BFMA1li10 := to_INT_UNSIgned(BFMA1ol10(15 downto 8));
BFMA1o010 := to_int_uNSIGNED(BFMA1ol10(31 downto 16));
BFMA1L1O1 := BFMA1L010;
BFMA1Lii1 := BFMA1lii1+1;
BFMA1ii10 := 1;
BFMA1OI01 := -1;
BFMA1oI11 := 0;
iFPRINTF((debuG >= 5),
"BFM: Instruction %d Line Number %d Command %d",
FMt(BFMA1loli)&FMT(BFMA1O010)&FMT(BFMA1il10));
if BFMA1I011 then
sprINTF(BFMA1i1o1,
"%05t BF %4d %4d %3d",
FMT(BFMA1loli)&FMt(BFMA1o010)&FMt(BFMA1IL10));
Write(l,
BFMA1i1o1);
writelINE(BFMA1io00,
L);
end if;
if BFMA1il10 >= 100 then
BFMA1oi10 := BFMA1il10;
else
BFMA1OI10 := 4*(BFMA1il10/4);
end if;
if BFMA1Il10 /= BFMA1IL1 then
BFMA1OII1 := 0;
end if;
case BFMA1Oi10 is
when BFMA1II0
| BFMA1O00
| BFMA1l00
| BFMA1illl =>
BFMA1L1II := 8;
when BFMA1o0
| BFMA1l1 =>
BFMA1l1II := 4+BFMA1Ioli(BFMA1LOLI+1);
when BFMA1l1i =>
BFMA1l1ii := 3+BFMA1ioli(BFMA1LOLI+2);
when BFMA1O1i =>
BFMA1L1II := 3;
when BFMA1oi0 =>
BFMA1L1Ii := 2+BFMA1ioli(BFMA1loli+1);
when BFMA1OOOl =>
BFMA1L1Ii := 3+BFMA1ioli(BFMA1lolI+2);
when BFMA1iill =>
BFMA1l1ii := 2+BFMA1ioli(BFMA1lolI+1);
when BFMA1LIi =>
BFMA1l1ii := 3+BFMA1IOLi(BFMA1loli+1);
when others =>
BFMA1L1ii := 8;
end case;
if BFMA1L1ii > 0 then
for BFMA1o0ii in 0 to BFMA1l1II-1
loop
if (BFMA1o0II >= 1 and BFMA1o0II <= 8) then
BFMA1OLLI(BFMA1O0ii) := BFMA1io0ol((BFMA1ol10(7+BFMA1O0II) = '1'),
BFMA1IOLI(BFMA1loli+BFMA1o0ii));
else
BFMA1Olli(BFMA1o0ii) := BFMA1IOLI(BFMA1loLI+BFMA1O0ii);
end if;
BFMA1l000(BFMA1o0ii) := tO_SLV32(BFMA1olli(BFMA1o0ii));
end loop;
end if;
case BFMA1oi10 is
when BFMA1o0ll =>
assert FALse report "BFM Compiler reported an error" severity failurE;
BFMA1lo01 := BFMA1LO01+1;
when BFMA1L01 =>
BFMA1II10 := 2;
BFMA1L0iol := trUE;
BFMA1l1ool(BFMA1i1ool) := BFMA1olli(1);
BFMA1I1ool := BFMA1i1ool+1;
ifprintf((Debug >= 2),
"BFM:%d:conifpush %d ",
FMt(BFMA1O010)&fmt(BFMA1Olli(1)));
when BFMA1Iool =>
BFMA1II10 := 2;
BFMA1oo1i <= '0';
BFMA1olool := BFMA1OLLi(1);
IFPrintf((debug >= 2),
"BFM:%d:RESET %d",
FMT(BFMA1o010)&fmt(BFMA1olli(1)));
when BFMA1oLOL =>
BFMA1II10 := 2;
BFMA1lli0 <= BFMA1L000(1)(0);
IFPRINTf((debug >= 2),
"BFM:%d:STOPCLK %d ",
fmt(BFMA1O010)&FMT(BFMA1L000(1)(0)));
when BFMA1l10 =>
BFMA1II10 := 2;
BFMA1Ili1 := BFMA1OLLI(1);
IFPRINtf((debug >= 2),
"BFM:%d:mode %d (No effect in this version)",
FMt(BFMA1o010)&fmt(BFMA1ILI1));
when BFMA1i10 =>
BFMA1L0IOL := true;
BFMA1ii10 := 4;
BFMA1L1ii := BFMA1OLLI(1);
x := BFMA1Olli(2);
y := BFMA1olli(3);
iFPRINTF((Debug >= 2),
"BFM:%d:setup %d %d %d ",
fMT(BFMA1o010)&fmt(BFMA1l1ii)&fmT(x)&fmt(Y));
case BFMA1l1II is
when 1 =>
BFMA1ii10 := 4;
BFMA1o101 := X;
BFMA1L101 := y;
IFprintf((debug >= 2),
"BFM:%d:Setup- Memory Cycle Transfer Size %s %d",
fmt(BFMA1o010)&FMT(BFMA1iloI(BFMA1O101))&fmt(BFMA1l101));
when 2 =>
BFMA1ii10 := 3;
BFMA1oo11 := To_boolean(x);
IFPRINTf((debUG >= 2),
"BFM:%d:Setup- Automatic Flush %d",
FMT(BFMA1o010)&FMT(BFMA1oo11));
when 3 =>
BFMA1ii10 := 3;
BFMA1i101 := X;
ifprintF((DEBUG >= 2),
"BFM:%d:Setup- XRATE %d",
FMT(BFMA1o010)&fMT(BFMA1i101));
when 4 =>
BFMA1ii10 := 3;
BFMA1lo11 := to_bOOLEAN(X);
iFPRINTF((debUG >= 2),
"BFM:%d:Setup- Burst Disable %d",
FMT(BFMA1o010)&fmt(BFMA1lo11));
when 5 =>
BFMA1ii10 := 3;
BFMA1IO11 := x;
IFPRIntf((DEBUG >= 2),
"BFM:%d:Setup- Alignment %d",
fmt(BFMA1o010)&FMT(BFMA1Io11));
if BFMA1IO11 = 1 or BFMA1io11 = 2 then
assert false report "BFM: Untested 8 or 16 Bit alignment selected" severity WARNIng;
end if;
when 6 =>
BFMA1II10 := 3;
BFMA1lo0ol := X;
IFPrintf((DEBug >= 2),
"BFM:%d:Setup- End Sim Action %0d",
fmT(BFMA1O010)&fmt(BFMA1LO0OL));
if (BFMA1lo0ol > 4) then
printf("BFM: Unexpected End Simulation value (WARNING)");
end if;
when 7 =>
BFMA1ii10 := 3;
when others =>
assert False report "BFM Unknown Setup Command" severity FAILURE;
end case;
when BFMA1olll =>
BFMA1l0iol := true;
BFMA1ii10 := 2;
BFMA1i0i0 <= (BFMA1L000(1)(0) = '1');
BFMA1o1i0 <= (BFMA1l000(1)(1) = '1');
BFMA1L0I0 <= (BFMA1L000(1)(2) = '1');
BFMA1O0I0 <= (BFMA1L000(1)(3) = '1');
ifpRINTF((debug >= 2),
"BFM:%d:drivex %d ",
fmT(BFMA1O010)&FMT(BFMA1olli(1)));
when BFMA1ol1 =>
BFMA1l0iol := truE;
BFMA1II10 := 3;
ifprintf((debUG >= 2),
"BFM:%d:error %d %d (No effect in this version)",
fmt(BFMA1o010)&fmt(BFMA1olli(1))&fmt(BFMA1OLLi(2)));
when BFMA1lo1 =>
BFMA1l0iol := TRUe;
BFMA1II10 := 2;
BFMA1ll01 := BFMA1L000(1)(3 downto 0);
IFprintf((debUG >= 2),
"BFM:%d:prot %d ",
FMT(BFMA1o010)&FMT(BFMA1ll01));
when BFMA1io1 =>
BFMA1L0Iol := tRUE;
BFMA1II10 := 2;
BFMA1ol01 := BFMA1l000(1)(0);
ifprINTF((DEBug >= 2),
"BFM:%d:lock %d ",
FMT(BFMA1o010)&FMT(BFMA1OL01));
when BFMA1ll1 =>
BFMA1l0iol := TRue;
BFMA1II10 := 2;
BFMA1IL01 := BFMA1l000(1)(2 downto 0);
IFPRINTF((DEBUG >= 2),
"BFM:%d:burst %d ",
fmt(BFMA1O010)&Fmt(BFMA1IL01));
when BFMA1io0 =>
BFMA1ii10 := 2;
BFMA1I0O1 := BFMA1OLLi(1);
IFPRIntf((DEBUg >= 2),
"BFM:%d:wait %d  starting at %t ns",
FMT(BFMA1O010)&FMT(BFMA1i0O1));
BFMA1ooO1 := TRUE;
when BFMA1IOLL =>
BFMA1ii10 := 2;
BFMA1Ooool := BFMA1olli(1)*1000+(now/1 ns);
ifprinTF((debug >= 2),
"BFM:%d:waitus %d  starting at %t ns",
FMt(BFMA1O010)&FMT(BFMA1olli(1)));
BFMA1ooo1 := true;
when BFMA1LOLl =>
BFMA1ii10 := 2;
BFMA1ooOOL := BFMA1olli(1)*1+(NOW/1 NS);
ifprintf((debug >= 2),
"BFM:%d:waitns %d  starting at %t ns",
fmt(BFMA1o010)&fmt(BFMA1olli(1)));
BFMA1OOo1 := true;
when BFMA1il1 =>
BFMA1II10 := 3;
IFPRINTF((DEBUG >= 2),
"BFM:%d:checktime %d %d at %t ns ",
FMT(BFMA1o010)&fmt(BFMA1OLLI(1))&FMT(BFMA1olli(2)));
BFMA1ooo1 := true;
when BFMA1li1 =>
BFMA1L0iol := TRUE;
BFMA1ii10 := 1;
BFMA1ollol := 1;
ifpriNTF(deBUG >= 2,
"BFM:%d:starttimer at %t ns",
fmt(BFMA1o010));
when BFMA1ii1 =>
BFMA1II10 := 3;
IFPRINTf((debUG >= 2),
"BFM:%d:checktimer %d %d at %t ns ",
Fmt(BFMA1O010)&FMT(BFMA1olli(1))&fMT(BFMA1OLLI(2)));
BFMA1OOO1 := TRUE;
when BFMA1I =>
BFMA1ii10 := 4;
BFMA1i010 := BFMA1l0oi(BFMA1LL10,
BFMA1o101);
BFMA1O110 := to_slv32(BFMA1OLLI(1)+BFMA1OLli(2));
BFMA1L110 := BFMA1l000(3);
IFPRINTF((DEBUG >= 2),
"BFM:%d:write %c %08x %08x at %t ns",
fmt(BFMA1O010)&FMT(BFMA1iloI(BFMA1ll10))&fMT(BFMA1o110)&FMt(BFMA1L110));
BFMA1llo1 := true;
when BFMA1LLl =>
BFMA1II10 := 5;
BFMA1i010 := BFMA1L0oi(BFMA1ll10,
BFMA1o101);
BFMA1O110 := to_slv32(BFMA1olli(1)+BFMA1olli(2));
BFMA1L110 := BFMA1l000(3);
BFMA1llool := BFMA1L000(4)(0);
BFMA1ilooL := BFMA1l000(4)(5 downto 4);
BFMA1oiool := BFMA1L000(4)(10 downto 8);
BFMA1liool := BFMA1l000(4)(12);
BFMA1iiool := BFMA1L000(4)(19 downto 16);
IFPRINTF((DEBUg >= 2),
"BFM:%d:ahbcycle %c %08x %08x %08x at %t ns",
FMT(BFMA1O010)&fmt(BFMA1ILoi(BFMA1ll10))&fMT(BFMA1o110)&Fmt(BFMA1l110)&FMT(BFMA1l000(4)));
BFMA1lio1 := True;
when BFMA1ol =>
BFMA1II10 := 3;
BFMA1i010 := BFMA1L0OI(BFMA1lL10,
BFMA1o101);
BFMA1o110 := To_slv32(BFMA1olli(1)+BFMA1OLli(2));
BFMA1l110 := ( others => '0');
BFMA1I110 := ( others => '0');
ifPRINTF((debug >= 2),
"BFM:%d:read %c %08x  at %t ns",
FMT(BFMA1O010)&fmt(BFMA1iloi(BFMA1LL10))&fmT(BFMA1o110));
BFMA1loo1 := true;
when BFMA1OLL =>
BFMA1ii10 := 4;
BFMA1i010 := BFMA1l0oI(BFMA1lL10,
BFMA1O101);
BFMA1o110 := to_slV32(BFMA1OLLI(1)+BFMA1OLli(2));
BFMA1L110 := ( others => '0');
BFMA1I110 := ( others => '0');
BFMA1oi01 := BFMA1l00ol(BFMA1ioli(BFMA1loli+3));
Ifprintf((debug >= 2),
"BFM:%d:readstore %c %08x @%d at %t ns ",
FMT(BFMA1o010)&Fmt(BFMA1iloi(BFMA1Ll10))&FMT(BFMA1o110)&FMT(BFMA1OI01));
BFMA1lOO1 := true;
BFMA1oio1 := TRUe;
when BFMA1ll =>
BFMA1ii10 := 4;
BFMA1i010 := BFMA1L0oi(BFMA1Ll10,
BFMA1O101);
BFMA1o110 := TO_Slv32(BFMA1olli(1)+BFMA1olli(2));
BFMA1l110 := BFMA1L000(3);
BFMA1i110 := ( others => '1');
ifprintf((Debug >= 2),
"BFM:%d:readcheck %c %08x %08x at %t ns",
FMT(BFMA1o010)&fmt(BFMA1iloi(BFMA1ll10))&fmt(BFMA1o110)&fMT(BFMA1L110));
BFMA1LOO1 := True;
when BFMA1il =>
BFMA1II10 := 5;
BFMA1i010 := BFMA1l0oi(BFMA1LL10,
BFMA1O101);
BFMA1O110 := to_slv32(BFMA1ollI(1)+BFMA1olli(2));
BFMA1l110 := BFMA1l000(3);
BFMA1I110 := BFMA1l000(4);
IFPRIntf((DEBUG >= 2),
"BFM:%d:readmask %c %08x %08x %08x at %t ns",
fmt(BFMA1o010)&FMt(BFMA1iloi(BFMA1LL10))&FMT(BFMA1o110)&fmt(BFMA1l110)&fmt(BFMA1i110));
BFMA1loo1 := TRUE;
when BFMA1oi =>
BFMA1ii10 := 4;
BFMA1i010 := BFMA1L0Oi(BFMA1LL10,
BFMA1o101);
BFMA1o110 := TO_slv32(BFMA1OLLI(1)+BFMA1OLLI(2));
BFMA1L110 := BFMA1l000(3);
BFMA1i110 := ( others => '1');
ifprINTF((DEBug >= 2),
"BFM:%d:poll %c %08x %08x at %t ns",
FMT(BFMA1o010)&FMt(BFMA1iloi(BFMA1ll10))&fMT(BFMA1O110)&FMT(BFMA1L110));
BFMA1o0o1 := TRUe;
BFMA1ilo1 := tRUE;
BFMA1ilo1 := true;
when BFMA1LI =>
BFMA1ii10 := 5;
BFMA1I010 := BFMA1L0oi(BFMA1ll10,
BFMA1o101);
BFMA1O110 := TO_slv32(BFMA1OLLI(1)+BFMA1olli(2));
BFMA1L110 := BFMA1L000(3);
BFMA1i110 := BFMA1l000(4);
iFPRINTF((debug >= 2),
"BFM:%d:pollmask %c %08x %08x %08x at %t ns",
FMT(BFMA1O010)&Fmt(BFMA1iloi(BFMA1ll10))&fmt(BFMA1o110)&fmt(BFMA1l110)&FMt(BFMA1i110));
BFMA1ilo1 := TRUE;
when BFMA1II =>
BFMA1ii10 := 5;
BFMA1I010 := BFMA1L0OI(BFMA1ll10,
BFMA1o101);
BFMA1O110 := To_slv32(BFMA1olli(1)+BFMA1Olli(2));
BFMA1L110 := ( others => '0');
BFMA1i110 := ( others => '0');
BFMA1O1o1 := BFMA1OLLi(3);
BFMA1i110(BFMA1o1o1) := '1';
BFMA1l110(BFMA1o1o1) := BFMA1L000(4)(0);
IFPRINtf((debuG >= 2),
"BFM:%d:pollbit %c %08x %d %d at %t ns",
fmt(BFMA1o010)&fmt(BFMA1iloi(BFMA1ll10))&fmt(BFMA1o110)&fmT(BFMA1o1o1)&FMT(BFMA1L110(BFMA1o1O1)));
BFMA1ilo1 := TRue;
when BFMA1o0 =>
BFMA1iOL1 := BFMA1olli(1);
BFMA1Ii10 := 4+BFMA1iol1;
BFMA1I010 := BFMA1l0oi(BFMA1ll10,
BFMA1o101);
BFMA1o110 := TO_SLV32(BFMA1olli(2)+BFMA1OLLI(3));
BFMA1oll1 := 0;
BFMA1lll1 := BFMA1iioI(BFMA1ll10,
BFMA1l101);
for BFMA1O0Ii in 0 to BFMA1iol1-1
loop
BFMA1ILL1(BFMA1O0II) := BFMA1olli(BFMA1O0ii+4);
end loop;
IFPRINTf((debug >= 2),
"BFM:%d:writemultiple %c %08x %08x ... at %t ns",
FMT(BFMA1o010)&FMT(BFMA1iloi(BFMA1ll10))&Fmt(BFMA1o110)&FMT(BFMA1ILl1(0)));
BFMA1IOO1 := true;
when BFMA1l0 =>
BFMA1IOL1 := BFMA1ollI(3);
BFMA1ii10 := 6;
BFMA1I010 := BFMA1l0oi(BFMA1LL10,
BFMA1O101);
BFMA1O110 := TO_slv32(BFMA1olLI(1)+BFMA1olli(2));
BFMA1OLL1 := 0;
BFMA1lll1 := BFMA1IIOi(BFMA1ll10,
BFMA1l101);
BFMA1IOI1 := BFMA1OLLI(4);
BFMA1OLI1 := BFMA1olli(5);
for BFMA1o0ii in 0 to BFMA1iol1-1
loop
BFMA1ILL1(BFMA1o0ii) := BFMA1IOI1;
BFMA1IOi1 := BFMA1IOI1+BFMA1OLI1;
end loop;
ifprintf((Debug >= 2),
"BFM:%d:fill %c %08x %d %d %d at %t ns",
FMT(BFMA1O010)&FMT(BFMA1ILOI(BFMA1ll10))&FMt(BFMA1O110)&fMT(BFMA1iol1)&fmt(BFMA1olli(4))&fmt(BFMA1OLli(4)));
BFMA1ioo1 := TRUE;
when BFMA1i0 =>
BFMA1IOL1 := BFMA1olli(4);
BFMA1II10 := 5;
BFMA1i010 := BFMA1l0oi(BFMA1LL10,
BFMA1o101);
BFMA1o110 := to_slv32(BFMA1olli(1)+BFMA1OLLI(2));
BFMA1oll1 := 0;
BFMA1LLL1 := BFMA1iioi(BFMA1ll10,
BFMA1L101);
BFMA1L0L1 := BFMA1olli(3);
for BFMA1o0ii in 0 to BFMA1iol1-1
loop
BFMA1ill1(BFMA1O0II) := BFMA1Ioli(2+BFMA1L0L1+BFMA1O0II);
end loop;
ifpRINTF((debug >= 2),
"BFM:%d:writetable %c %08x %d %d at %t ns ",
fmt(BFMA1O010)&Fmt(BFMA1ILOI(BFMA1ll10))&FMT(BFMA1o110)&FMT(BFMA1l0L1)&FMT(BFMA1iol1));
BFMA1ioo1 := TRue;
when BFMA1ill =>
BFMA1ioL1 := BFMA1OLLI(4);
BFMA1ii10 := 5;
BFMA1I010 := BFMA1L0OI(BFMA1LL10,
BFMA1O101);
BFMA1O110 := TO_slv32(BFMA1olli(1)+BFMA1OLli(2));
BFMA1oll1 := 0;
BFMA1lll1 := BFMA1iioI(BFMA1LL10,
BFMA1l101);
BFMA1iii1 := BFMA1L00OL(BFMA1IOLI(BFMA1loli+3));
for BFMA1o0ii in 0 to BFMA1IOL1-1
loop
BFMA1ill1(BFMA1o0ii) := BFMA1i000(BFMA1iii1+BFMA1O0II);
end loop;
ifprintf((debug >= 2),
"BFM:%d:writearray %c %08x %d %d at %t ns ",
fmt(BFMA1o010)&fmt(BFMA1iloi(BFMA1ll10))&FMT(BFMA1o110)&FMT(BFMA1iiI1)&fMT(BFMA1IOL1));
BFMA1ioo1 := TRUE;
when BFMA1o1 =>
BFMA1iOL1 := BFMA1olli(3);
BFMA1ii10 := 4;
BFMA1I010 := BFMA1L0OI(BFMA1ll10,
BFMA1o101);
BFMA1O110 := TO_SLv32(BFMA1ollI(1)+BFMA1olLI(2));
BFMA1i110 := ( others => '0');
BFMA1oll1 := 0;
BFMA1lLL1 := BFMA1IIOI(BFMA1ll10,
BFMA1L101);
BFMA1i110 := ( others => '0');
IFPRINTf((DEbug >= 2),
"BFM:%d:readmult %c %08x %d at %t ns",
FMT(BFMA1o010)&FMT(BFMA1iLOI(BFMA1Ll10))&fmT(BFMA1o110)&fmt(BFMA1iol1));
BFMA1olo1 := true;
when BFMA1l1 =>
BFMA1iol1 := BFMA1olli(1);
BFMA1ii10 := 4+BFMA1iol1;
BFMA1i010 := BFMA1l0oi(BFMA1Ll10,
BFMA1o101);
BFMA1O110 := TO_SLV32(BFMA1ollI(2)+BFMA1OLLI(3));
BFMA1i110 := ( others => '1');
BFMA1oLL1 := 0;
BFMA1lll1 := BFMA1IIOI(BFMA1ll10,
BFMA1L101);
BFMA1i110 := ( others => '1');
for BFMA1o0ii in 0 to BFMA1IOL1-1
loop
BFMA1ILL1(BFMA1O0ii) := BFMA1olLI(BFMA1O0ii+4);
end loop;
ifprINTF((deBUG >= 2),
"BFM:%d:readmultchk %c %08x %08x ... at %t ns",
fMT(BFMA1o010)&fmt(BFMA1iLOI(BFMA1LL10))&fmt(BFMA1o110)&fmt(BFMA1ill1(0)));
BFMA1OLO1 := true;
when BFMA1i1 =>
BFMA1iol1 := BFMA1olli(3);
BFMA1ii10 := 6;
BFMA1I010 := BFMA1l0oi(BFMA1ll10,
BFMA1o101);
BFMA1o110 := To_slv32(BFMA1OLLI(1)+BFMA1olli(2));
BFMA1I110 := ( others => '1');
BFMA1OLL1 := 0;
BFMA1lll1 := BFMA1iioi(BFMA1LL10,
BFMA1L101);
BFMA1ioi1 := BFMA1olli(4);
BFMA1oli1 := BFMA1olli(5);
for BFMA1o0ii in 0 to BFMA1iol1-1
loop
BFMA1ILl1(BFMA1O0Ii) := BFMA1ioi1;
BFMA1IOi1 := BFMA1ioi1+BFMA1oli1;
end loop;
ifprinTF((DEBUg >= 2),
"BFM:%d:fillcheck %c %08x %d %d %d at %t ns",
fmt(BFMA1O010)&fmt(BFMA1ILOI(BFMA1ll10))&fmT(BFMA1o110)&FMT(BFMA1IOL1)&fmt(BFMA1OLli(4))&fMT(BFMA1OLLI(5)));
BFMA1oLO1 := TRue;
when BFMA1oil =>
BFMA1iOL1 := BFMA1olli(4);
BFMA1ii10 := 5;
BFMA1i010 := BFMA1L0OI(BFMA1LL10,
BFMA1O101);
BFMA1o110 := TO_SLV32(BFMA1ollI(1)+BFMA1Olli(2));
BFMA1i110 := ( others => '1');
BFMA1oll1 := 0;
BFMA1lll1 := BFMA1iioi(BFMA1LL10,
BFMA1L101);
BFMA1iii1 := BFMA1l00ol(BFMA1IOLI(BFMA1loli+3));
for BFMA1O0Ii in 0 to BFMA1ioL1-1
loop
BFMA1ill1(BFMA1O0ii) := BFMA1i000(BFMA1III1+BFMA1O0II);
end loop;
IFPRIntf((DEBUG >= 2),
"BFM:%d:readarray %c %08x %d %d at %t ns",
fmt(BFMA1o010)&FMt(BFMA1iloi(BFMA1LL10))&fmt(BFMA1O110)&Fmt(BFMA1iii1)&FMt(BFMA1iol1));
BFMA1oLO1 := truE;
when BFMA1ool =>
BFMA1iol1 := BFMA1olli(4);
BFMA1ii10 := 5;
BFMA1I010 := BFMA1l0oi(BFMA1ll10,
BFMA1o101);
BFMA1o110 := TO_SLV32(BFMA1ollI(1)+BFMA1olli(2));
BFMA1I110 := ( others => '1');
BFMA1oll1 := 0;
BFMA1LLL1 := BFMA1iioi(BFMA1LL10,
BFMA1l101);
BFMA1l0l1 := BFMA1OLLI(3);
for BFMA1O0ii in 0 to BFMA1IOL1-1
loop
BFMA1ILL1(BFMA1O0ii) := BFMA1ioli(BFMA1L0L1+2+BFMA1o0ii);
end loop;
IFPRINTF((deBUG >= 2),
"BFM:%d:readtable %c %08x %d %d at %t ns",
fmt(BFMA1o010)&FMT(BFMA1iloi(BFMA1ll10))&FMT(BFMA1O110)&FMT(BFMA1l0L1)&fmt(BFMA1iol1));
BFMA1OLO1 := TRUE;
when BFMA1i00 =>
BFMA1ii10 := 7;
BFMA1oOO1 := true;
BFMA1OOIOl := BFMA1oilol;
when BFMA1O10 =>
BFMA1II10 := 7;
BFMA1ooo1 := TRUE;
BFMA1OOIol := BFMA1oilol;
when BFMA1i1l =>
BFMA1II10 := 1;
BFMA1O1l1 := 0;
ifprintF((DEBUG >= 2),
"BFM:%d:waitfiq at %t ns ",
FMT(BFMA1o010));
BFMA1OOO1 := true;
when BFMA1oOI =>
BFMA1II10 := 1;
BFMA1o1l1 := 1;
ifprintf((deBUG >= 2),
"BFM:%d:waitirq at %t ns ",
Fmt(BFMA1O010));
BFMA1Ooo1 := TRUE;
when BFMA1L1l =>
BFMA1II10 := 2;
BFMA1o1l1 := BFMA1olli(1);
ifprintf((DEBUg >= 2),
"BFM:%d:waitint %d  at %t ns",
FMT(BFMA1O010)&fmt(BFMA1O1L1));
BFMA1OOO1 := tRUE;
when BFMA1lil =>
BFMA1ii10 := 2;
BFMA1l110 := BFMA1l000(1);
BFMA1ili0 <= BFMA1l110;
BFMA1IIl0 <= '1';
IFPRintf((debug >= 2),
"BFM:%d:iowrite %08x  at %t ns ",
fmt(BFMA1o010)&FMT(BFMA1l110));
when BFMA1Iil =>
BFMA1II10 := 2;
BFMA1L110 := ( others => '0');
BFMA1I110 := ( others => '0');
BFMA1oi01 := BFMA1L00ol(BFMA1IOLI(BFMA1loLI+1));
IFPrintf((debug >= 2),
"BFM:%d:ioread @%d at %t ns",
FMt(BFMA1O010)&fmt(BFMA1Oi01));
BFMA1lil0 <= '1';
BFMA1ooo1 := TRUE;
BFMA1OIO1 := true;
BFMA1iio1 := true;
when BFMA1o0L =>
BFMA1ii10 := 2;
BFMA1l110 := BFMA1l000(1);
BFMA1i110 := ( others => '1');
BFMA1lil0 <= '1';
ifpriNTF((DEBUG >= 2),
"BFM:%d:iocheck %08x  at %t ns ",
fmt(BFMA1O010)&FMT(BFMA1l110));
BFMA1ooo1 := TRUE;
when BFMA1L0l =>
BFMA1ii10 := 3;
BFMA1L110 := BFMA1l000(1);
BFMA1I110 := BFMA1l000(2);
IFprintf((DEBug >= 2),
"BFM:%d:iomask %08x %08x  at %t ns",
fmt(BFMA1o010)&FMT(BFMA1l110)&FMT(BFMA1i110));
BFMA1lil0 <= '1';
BFMA1OOO1 := trUE;
when BFMA1lol =>
BFMA1ii10 := 2;
BFMA1l110 := ( others => '0');
BFMA1i110 := ( others => '0');
BFMA1O1o1 := BFMA1Olli(1);
BFMA1l110(BFMA1o1o1) := BFMA1OL10(0);
BFMA1I110(BFMA1o1o1) := '1';
BFMA1LIL0 <= '1';
ifpriNTF((debUG >= 2),
"BFM:%d:iotest %d %d  at %t ns",
fmt(BFMA1o010)&fmt(BFMA1O1O1)&Fmt(BFMA1OL10(0)));
BFMA1OOO1 := TRUE;
when BFMA1i0l =>
BFMA1ii10 := 2;
BFMA1o1o1 := BFMA1ollI(1);
BFMA1ili0(BFMA1O1O1) <= '1';
BFMA1iil0 <= '1';
IFPRINTF((debuG >= 2),
"BFM:%d:ioset %d at %t ns",
fmt(BFMA1o010)&FMT(BFMA1o1o1));
when BFMA1o1l =>
BFMA1II10 := 2;
BFMA1O1O1 := BFMA1OLLI(1);
BFMA1ili0(BFMA1O1O1) <= '0';
BFMA1iil0 <= '1';
IFprintf((debug >= 2),
"BFM:%d:ioclr %d at %t ns",
FMT(BFMA1o010)&fmt(BFMA1o1o1));
when BFMA1IOL =>
BFMA1ii10 := 2;
BFMA1l110 := ( others => '0');
BFMA1i110 := ( others => '0');
BFMA1O1O1 := BFMA1olli(1);
BFMA1l110(BFMA1O1O1) := BFMA1OL10(0);
BFMA1I110(BFMA1O1o1) := '1';
ifPRINTF((DEBUg >= 2),
"BFM:%d:iowait %d %d at %t ns ",
FMT(BFMA1O010)&FMT(BFMA1O1O1)&fmt(BFMA1OL10(0)));
BFMA1liL0 <= '1';
BFMA1ooo1 := TRUE;
when BFMA1IOI =>
BFMA1ii10 := 3;
BFMA1o110 := BFMA1l000(1);
BFMA1l110 := BFMA1L000(2);
IFPRINTF(DEBUg >= 2,
"BFM:%d:extwrite %08x %08x at %t ns",
fmt(BFMA1O010)&fmt(BFMA1O110)&fMT(BFMA1L110));
BFMA1ooo1 := TRUE;
when BFMA1LII =>
BFMA1iol1 := BFMA1OLli(1);
BFMA1lol1 := BFMA1OLLI(2);
BFMA1ii10 := BFMA1iol1+3;
for BFMA1O0ii in 0 to BFMA1IOL1-1
loop
BFMA1Ill1(BFMA1o0ii) := BFMA1olli(BFMA1o0ii+3);
end loop;
ifprintf(DEbug >= 2,
"BFM:%d:extwrite %08x %0d Words at %t ns",
FMT(BFMA1O010)&FMT(BFMA1o110)&fmt(BFMA1IOL1));
BFMA1olL1 := 0;
BFMA1ooo1 := true;
when BFMA1OLI =>
BFMA1ii10 := 3;
BFMA1o110 := BFMA1l000(1);
BFMA1l110 := ( others => '0');
BFMA1I110 := ( others => '0');
BFMA1OI01 := BFMA1L00ol(BFMA1ioli(BFMA1loli+2));
BFMA1ill0 <= '1';
IFPRINTf(DEBUG >= 2,
"BFM:%d:extread @%d %08x at %t ns ",
fmT(BFMA1O010)&FMT(BFMA1OI01)&FMT(BFMA1O110));
BFMA1OOO1 := trUE;
BFMA1oio1 := true;
BFMA1iio1 := true;
when BFMA1lli =>
BFMA1II10 := 3;
BFMA1O110 := BFMA1l000(1);
BFMA1l110 := BFMA1l000(2);
BFMA1i110 := ( others => '1');
BFMA1o0o1 := TRUE;
BFMA1ill0 <= '1';
Ifprintf(DEBUG >= 2,
"BFM:%d:extcheck %08x %08x at %t ns",
fmt(BFMA1o010)&FMT(BFMA1o110)&fmt(BFMA1l110));
BFMA1OOO1 := true;
when BFMA1ILI =>
BFMA1ii10 := 4;
BFMA1o110 := BFMA1l000(1);
BFMA1L110 := BFMA1l000(2);
BFMA1I110 := BFMA1l000(3);
BFMA1ILL0 <= '1';
ifprintf(DEBug >= 2,
"BFM:%d:extmask %08x %08x %08x at %t ns",
FMT(BFMA1o010)&fmt(BFMA1O110)&FMT(BFMA1l110)&FMT(BFMA1i110));
BFMA1oOO1 := TRUE;
when BFMA1oiI =>
BFMA1II10 := 1;
BFMA1I0O1 := 1;
BFMA1O0o1 := true;
ifprintf(DEBUg >= 2,
"BFM:%d:extwait ",
fmt(BFMA1o010));
BFMA1OOo1 := TRUE;
when BFMA1iii =>
assert false report "LABEL instructions not allowed in vector files" severity faiLURE;
when BFMA1OI0 =>
BFMA1l0iol := true;
BFMA1ii10 := 2+BFMA1OLLI(1);
ifprintf((debug >= 2),
"BFM:%d:table %08x ... (length=%d)",
fmt(BFMA1O010)&FMT(BFMA1olli(2))&FMT(BFMA1Ii10-2));
when BFMA1o0i =>
BFMA1l0IOL := TRUE;
BFMA1ii10 := 2;
BFMA1loi1 := BFMA1OLLI(1);
BFMA1ii10 := BFMA1loi1-BFMA1loLI;
IFPRINTF((DEBug >= 2),
"BFM:%d:jump",
fmt(BFMA1o010));
when BFMA1l0I =>
BFMA1L0IOL := TRUe;
BFMA1ii10 := 3;
BFMA1loi1 := BFMA1ollI(1);
if BFMA1OLli(2) = 0 then
BFMA1II10 := BFMA1loi1-BFMA1loli;
end if;
IFprintf((Debug >= 2),
"BFM:%d:jumpz  %08x",
fmt(BFMA1o010)&FMt(BFMA1OLLI(2)));
when BFMA1LLOl =>
BFMA1L0Iol := TRUe;
BFMA1iI10 := 5;
BFMA1lOI1 := BFMA1olli(1);
BFMA1O0i1 := BFMA1O1oi(BFMA1olli(3),
BFMA1OLli(2),
BFMA1Olli(4),
DEBUG);
if BFMA1O0I1 = 0 then
BFMA1ii10 := BFMA1loi1+2-BFMA1loLI;
end if;
IFPRINtf((debug >= 2),
"BFM:%d:if %08x func %08x",
FMT(BFMA1o010)&FMT(BFMA1OLLI(2))&fmt(BFMA1Olli(4)));
when BFMA1ilol =>
BFMA1L0IOl := TRUE;
BFMA1ii10 := 5;
BFMA1loi1 := BFMA1olLI(1);
BFMA1o0i1 := BFMA1o1OI(BFMA1olli(3),
BFMA1olli(2),
BFMA1olli(4),
DEBUG);
if BFMA1o0i1 /= 0 then
BFMA1II10 := BFMA1LOI1+2-BFMA1lolI;
end if;
IFPRintf((DEBug >= 2),
"BFM:%d:ifnot %08x func %08x",
FMT(BFMA1o010)&FMT(BFMA1olli(2))&FMT(BFMA1OLLI(4)));
when BFMA1liol =>
BFMA1l0iol := True;
BFMA1ii10 := 2;
BFMA1LOI1 := BFMA1olli(1);
BFMA1II10 := BFMA1loi1+2-BFMA1loli;
ifpriNTF((DEbug >= 2),
"BFM:%d:else ",
FMT(BFMA1O010));
when BFMA1IIol =>
BFMA1L0IOl := TRUE;
BFMA1ii10 := 2;
IFprintf((DEBug >= 2),
"BFM:%d:endif ",
fmt(BFMA1o010));
when BFMA1OIOl =>
BFMA1l0iOL := true;
BFMA1ii10 := 5;
BFMA1loi1 := BFMA1olli(1)+2;
BFMA1o0i1 := BFMA1o1oi(BFMA1olli(3),
BFMA1ollI(2),
BFMA1oLLI(4),
deBUG);
if BFMA1O0I1 = 0 then
BFMA1ii10 := BFMA1loi1-BFMA1lOLI;
end if;
IFPRIntf((debuG >= 2),
"BFM:%d:while %08x func %08x",
fmt(BFMA1o010)&Fmt(BFMA1oLLI(2))&FMT(BFMA1olli(4)));
when BFMA1o0OL =>
BFMA1l0iOL := true;
BFMA1ii10 := 2;
BFMA1LOI1 := BFMA1olLI(1);
BFMA1ii10 := BFMA1loi1-BFMA1LOli;
ifpRINTF((debUG >= 2),
"BFM:%d:endwhile",
fmt(BFMA1O010));
when BFMA1I0ol =>
BFMA1L0iol := TRUE;
BFMA1Ii10 := 4;
BFMA1loi1 := BFMA1olli(3);
if BFMA1olli(1) /= BFMA1olli(2) then
BFMA1iI10 := BFMA1LOI1-BFMA1loli;
else
BFMA1loloL(BFMA1iolol) := TRUE;
end if;
ifPRINTF((debug >= 2),
"BFM:%d:when %08x=%08x %08x",
FMT(BFMA1o010)&fmt(BFMA1OLli(1))&FMT(BFMA1ollI(2))&fmt(BFMA1olli(3)));
when BFMA1l1ol =>
BFMA1l0iol := TRue;
BFMA1ii10 := 4;
BFMA1loi1 := BFMA1olli(3);
if BFMA1loloL(BFMA1ioloL) then
BFMA1ii10 := BFMA1loi1-BFMA1LOLI;
else
BFMA1LOLol(BFMA1iolol) := falsE;
end if;
IFPRIntf((debug >= 2),
"BFM:%d:default %08x=%08x %08x",
FMT(BFMA1O010)&fmt(BFMA1olli(1))&FMt(BFMA1olli(2))&FMT(BFMA1OLLi(3)));
when BFMA1L0Ol =>
BFMA1l0iol := TRUE;
BFMA1ii10 := 1;
BFMA1iolol := BFMA1iolol+1;
BFMA1lolol(BFMA1iolol) := falsE;
ifprintf((dEBUG >= 2),
"BFM:%d:case",
FMT(BFMA1o010));
when BFMA1o1ol =>
BFMA1l0iol := TRUE;
BFMA1II10 := 1;
BFMA1iolol := BFMA1ioLOL-1;
ifprinTF((DEBUG >= 2),
"BFM:%d:endcase",
FMT(BFMA1O010));
when BFMA1i0i =>
BFMA1l0iol := true;
BFMA1ii10 := 3;
BFMA1loi1 := BFMA1olli(1);
if BFMA1olli(2) /= 0 then
BFMA1II10 := BFMA1Loi1-BFMA1loli;
end if;
IFPRINTf((debug >= 2),
"BFM:%d:jumpnz  %08x",
Fmt(BFMA1o010)&FMT(BFMA1OLLI(2)));
when BFMA1LOOL =>
BFMA1l0iol := True;
BFMA1ii10 := 4;
BFMA1l110 := BFMA1l000(2);
BFMA1i110 := BFMA1l000(3);
BFMA1l111 := BFMA1oioi((BFMA1l000(1) xor BFMA1L110) and BFMA1I110);
ifprintf(DEbug >= 2,
"BFM:%d:compare  %08x==%08x Mask=%08x (RES=%08x) at %t ns",
FMT(BFMA1o010)&FMT(BFMA1OLLI(1))&fmt(BFMA1L110)&fmt(BFMA1I110)&Fmt(BFMA1L111));
if BFMA1l111 /= 0 then
BFMA1lo01 := BFMA1lo01+1;
PRINTF("ERROR:  compare failed %08x==%08x Mask=%08x (RES=%08x) ",
fmT(BFMA1OLLI(1))&FMT(BFMA1l110)&FMT(BFMA1I110)&fmt(BFMA1L111));
printf("       Stimulus file %s  Line No %d",
FMT(BFMA1o001(BFMA1OIli(BFMA1O010,
BFMA1i001)))&fmt(BFMA1iili(BFMA1o010,
BFMA1i001)));
assert FAlse report "BFM Data Compare Error" severity error;
end if;
when BFMA1I1OL =>
BFMA1l0iol := TRUE;
BFMA1II10 := 4;
BFMA1L110 := BFMA1L000(2);
BFMA1I110 := BFMA1l000(3);
if BFMA1ollI(1) >= BFMA1OLLI(2) and BFMA1olli(1) <= BFMA1Olli(3) then
BFMA1l111 := 1;
else
BFMA1l111 := 0;
end if;
IFPRINTF(debUG >= 2,
"BFM:%d:cmprange %d in %d to %d at %t ns",
FMT(BFMA1O010)&FMT(BFMA1OLLI(1))&fmt(BFMA1OLLI(2))&fmt(BFMA1Olli(3)));
if BFMA1L111 = 0 then
BFMA1Lo01 := BFMA1LO01+1;
printf("ERROR: cmprange failed %d in %d to %d",
FMT(BFMA1olli(1))&fMT(BFMA1olLI(2))&fmt(BFMA1olli(3)));
Printf("       Stimulus file %s  Line No %d",
fmt(BFMA1o001(BFMA1oili(BFMA1o010,
BFMA1i001)))&FMT(BFMA1IILI(BFMA1o010,
BFMA1i001)));
assert FALse report "BFM Data Compare Error" severity error;
end if;
when BFMA1I11 =>
BFMA1l0iol := TRue;
BFMA1II10 := 2;
BFMA1I0ii := BFMA1olli(1);
BFMA1LO10 := BFMA1lo10+BFMA1I0ii;
BFMA1i000(BFMA1lo10) := 0;
IFPRIntf((DEBUG >= 2),
"BFM:%d:int %d",
FMT(BFMA1o010)&fmT(BFMA1olLI(1)));
when BFMA1o1i
| BFMA1l1i =>
BFMA1l0iOL := true;
if BFMA1il10 = BFMA1O1i then
BFMA1II10 := 2;
BFMA1i0ii := 0;
else
BFMA1I0II := BFMA1olli(2);
BFMA1ii10 := 3+BFMA1I0II;
end if;
BFMA1l1l1 := BFMA1OLli(1);
BFMA1I1L1 := BFMA1Loli+BFMA1ii10;
BFMA1ii10 := BFMA1l1l1-BFMA1loli;
BFMA1i000(BFMA1lo10) := BFMA1i1l1;
BFMA1LO10 := BFMA1LO10+1;
if BFMA1i0ii > 0 then
for BFMA1O0II in 0 to BFMA1i0ii-1
loop
BFMA1I000(BFMA1LO10) := BFMA1Olli(3+BFMA1o0II);
BFMA1LO10 := BFMA1lo10+1;
end loop;
end if;
ifpRINTF((DEBUG >= 2 and BFMA1il10 = BFMA1o1I),
"BFM:%d:call %d",
FMT(BFMA1O010)&Fmt(BFMA1l1l1));
ifpRINTF((debuG >= 2 and BFMA1il10 = BFMA1l1I),
"BFM:%d:call %d %08x ... ",
fmt(BFMA1o010)&FMT(BFMA1l1l1)&Fmt(BFMA1ollI(3)));
when BFMA1I1i =>
BFMA1l0iOL := TRUE;
BFMA1ii10 := 2;
BFMA1LO10 := BFMA1LO10-BFMA1ollI(1);
BFMA1I1L1 := 0;
if BFMA1LO10 > 0 then
BFMA1lo10 := BFMA1lo10-1;
BFMA1i1l1 := BFMA1i000(BFMA1lo10);
end if;
if BFMA1i1l1 = 0 then
BFMA1lIL1 := TRUE;
BFMA1oIO1 := trUE;
BFMA1l0iol := falsE;
else
BFMA1II10 := BFMA1i1l1-BFMA1LOLI;
end if;
ifPRINTF((debug >= 2),
"BFM:%d:return",
FMT(BFMA1O010));
when BFMA1OOll =>
BFMA1l0iOL := truE;
BFMA1ii10 := 3;
BFMA1Lo10 := BFMA1LO10-BFMA1olli(1);
BFMA1i1l1 := 0;
if BFMA1LO10 > 0 then
BFMA1lo10 := BFMA1lo10-1;
BFMA1I1l1 := BFMA1I000(BFMA1Lo10);
end if;
BFMA1ooi1 := BFMA1olli(2);
if BFMA1I1L1 = 0 then
BFMA1lil1 := true;
BFMA1OIO1 := TRUE;
BFMA1L0iol := False;
else
BFMA1ii10 := BFMA1i1l1-BFMA1loli;
end if;
ifprintf((dEBUG >= 2),
"BFM:%d:return %08x",
fMT(BFMA1O010)&FMT(BFMA1Ooi1));
when BFMA1oo0 =>
BFMA1l0iOL := TRUE;
BFMA1ii10 := 5;
BFMA1iii1 := BFMA1l00ol(BFMA1Ioli(BFMA1loli+1));
BFMA1o0I1 := BFMA1olli(2);
BFMA1i000(BFMA1III1) := BFMA1O0I1;
ifPRINTF(debug >= 2,
"BFM:%d:loop %d %d %d %d ",
Fmt(BFMA1O010)&FMT(BFMA1iii1)&FMt(BFMA1olli(2))&fmT(BFMA1OLli(3))&FMT(BFMA1OLLi(4)));
when BFMA1lo0 =>
BFMA1l0iol := TRUE;
BFMA1II10 := 2;
BFMA1I100 := BFMA1olli(1);
for BFMA1o0ii in 2 to 4
loop
BFMA1o100(BFMA1o0ii) := BFMA1io0oL((to_sLV32(BFMA1ioli(BFMA1I100))(7+BFMA1o0ii) = '1'),
BFMA1IOLI(BFMA1i100+BFMA1o0ii));
end loop;
BFMA1iii1 := BFMA1L00Ol(BFMA1ioli(BFMA1I100+1));
BFMA1L1ii := BFMA1o100(4);
BFMA1iO0I := BFMA1O100(3);
BFMA1iO10 := BFMA1i000(BFMA1iii1);
BFMA1IO10 := BFMA1io10+BFMA1l1II;
BFMA1i000(BFMA1iiI1) := BFMA1io10;
BFMA1loi1 := BFMA1i100+5;
if ((BFMA1L1II >= 0 and BFMA1IO10 <= BFMA1IO0I) or (BFMA1L1ii < 0 and BFMA1io10 >= BFMA1io0i)) then
BFMA1II10 := BFMA1loi1-BFMA1LOLI;
ifprINTF(debug >= 2,
"BFM:%d:endloop (Next Loop=%d)",
FMT(BFMA1o010)&fmt(BFMA1IO10));
else
Ifprintf(deBUG >= 2,
"BFM:%d:endloop (Finished)",
fmT(BFMA1o010));
end if;
when BFMA1iL0 =>
BFMA1L0iol := TRUE;
BFMA1ii10 := 2;
BFMA1l010 := BFMA1OLli(1);
IFPRINTF(debUG >= 2,
"BFM:%d:timeout %d",
FMT(BFMA1o010)&FMT(BFMA1L010));
when BFMA1o01 =>
BFMA1L0IOL := tRUE;
BFMA1ii10 := 2;
BFMA1LOool := BFMA1olli(1);
IFprintf(debug >= 2,
"BFM:%d:rand %d",
fmt(BFMA1o010)&FMT(BFMA1loool));
when BFMA1ii0 =>
BFMA1L0IOL := tRUE;
BFMA1II10 := BFMA1llli(BFMA1olli(1));
BFMA1oo0i := BFMA1OOLI(BFMA1LOli,
BFMA1IOLI(BFMA1LOLI to BFMA1lolI+BFMA1ii10-1),
BFMA1olli);
prinTF("BFM:%s",
fmt(BFMA1oo0i));
when BFMA1o00 =>
BFMA1l0iol := TRue;
BFMA1ii10 := BFMA1lllI(BFMA1ollI(1));
BFMA1oo0i := BFMA1ooli(BFMA1LOLI,
BFMA1IOLI(BFMA1loLI to BFMA1LOLI+BFMA1ii10-1),
BFMA1olli);
PRINtf("################################################################");
printf("BFM:%s",
fmt(BFMA1oo0i));
when BFMA1L =>
BFMA1II10 := 1;
IFPRINTF((debug >= 2),
"BFM:%d:nop",
fmt(BFMA1o010));
when BFMA1L00 =>
BFMA1L0IOL := TRUE;
BFMA1II10 := BFMA1LLLI(BFMA1ollI(1));
when BFMA1OO1 =>
BFMA1L0IOL := true;
BFMA1ii10 := 2;
if DEBUGLEVel >= 0 and debuglevEL <= 5 then
PRintf("BFM:%d: DEBUG - ignored due to DEBUGLEVEL generic setting",
fmt(BFMA1o010));
else
debug <= BFMA1olli(1);
PRINtf("BFM:%d: DEBUG %d",
fMT(BFMA1o010)&FMT(BFMA1olli(1)));
end if;
when BFMA1LOI =>
BFMA1l0iol := False;
BFMA1ii10 := 2;
BFMA1lli1 := BFMA1olli(1);
BFMA1io01(1) := NUl;
if BFMA1lli1 = 2 then
if BFMA1i1I1 then
BFMA1IO01(1 to 9) := "OCCURRED"&nul;
else
assert falsE report "BFM: HRESP Did Not Occur When Expected" severity ERROR;
BFMA1lo01 := BFMA1lo01+1;
end if;
BFMA1lli1 := 0;
end if;
BFMA1i1I1 := false;
IFPRintf(DEBUG >= 2,
"BFM:%d:hresp %d %s",
FMT(BFMA1o010)&FMT(BFMA1lli1)&FMT(BFMA1iO01));
when BFMA1ol0 =>
BFMA1L0IOL := true;
BFMA1iI10 := 2;
IFPRintf(Debug >= 2,
"BFM:%d:stop %d",
fmt(BFMA1O010)&FMT(BFMA1olli(1)));
PRINTF("       Stimulus file %s  Line No %d",
FMt(BFMA1o001(BFMA1oili(BFMA1o010,
BFMA1I001)))&fmt(BFMA1iili(BFMA1O010,
BFMA1I001)));
case BFMA1OLli(1) is
when 0 =>
assert FALSe report "BFM Script Stop Command" severity NOTE;
when 1 =>
assert FALSE report "BFM Script Stop Command" severity warnING;
when 3 =>
assert fALSE report "BFM Script Stop Command" severity failure;
when others =>
assert false report "BFM Script Stop Command" severity ERror;
end case;
when BFMA1ll0 =>
BFMA1LIl1 := true;
when BFMA1iill =>
BFMA1l0iol := TRUE;
ifprINTF(DEBUG >= 1,
"BFM:%d:echo at %t ns",
Fmt(BFMA1O010));
BFMA1II10 := 2+BFMA1OLLI(1);
printf("BFM Parameter values are");
for BFMA1O0II in 0 to BFMA1ii10-3
loop
Printf(" Para %d=0x%08x (%d)",
FMT(BFMA1o0iI+1)&FMT(BFMA1l000(2+BFMA1o0II))&fmt(BFMA1Olli(2+BFMA1O0II)));
end loop;
when BFMA1li0 =>
BFMA1ii10 := 2;
BFMA1i0o1 := BFMA1olli(1);
IFprintf(DEBUg >= 2,
"BFM:%d:flush %d at %t ns",
FMT(BFMA1O010)&FMT(BFMA1I0o1));
BFMA1OIO1 := true;
BFMA1OOo1 := TRUe;
when BFMA1OI1 =>
BFMA1L0Iol := true;
BFMA1lO01 := BFMA1LO01+1;
ifPRINTF(DEBUG >= 2,
"BFM:%d:setfail",
fmt(BFMA1O010));
assert FALSe report "BFM: User Script detected ERROR" severity ERROR;
when BFMA1O11 =>
BFMA1L0iol := truE;
BFMA1ii10 := 3;
BFMA1iii1 := BFMA1l00ol(BFMA1ioli(BFMA1LOLI+1));
BFMA1o0i1 := BFMA1ollI(2);
BFMA1i000(BFMA1III1) := BFMA1o0I1;
IFPRintf(deBUG >= 2,
"BFM:%d:set %d= 0x%08x (%d)",
fMT(BFMA1O010)&FMT(BFMA1iii1)&FMT(BFMA1o0i1)&fmt(BFMA1O0i1));
when BFMA1oool =>
BFMA1l0iol := TRUE;
BFMA1Ii10 := BFMA1olli(2)+3;
BFMA1iii1 := BFMA1L00ol(BFMA1ioLI(BFMA1LOLI+1));
BFMA1o0i1 := BFMA1o1oI(BFMA1olli(4),
BFMA1olli(3),
BFMA1OLLi(5),
DEBUG);
BFMA1O0II := 6;
while (BFMA1o0ii < BFMA1II10)
loop
BFMA1O0I1 := BFMA1o1oi(BFMA1Olli(BFMA1O0Ii),
BFMA1o0i1,
BFMA1olli(BFMA1o0ii+1),
debug);
BFMA1O0ii := BFMA1O0ii+2;
end loop;
BFMA1i000(BFMA1iii1) := BFMA1O0i1;
ifprintf(DEBUG >= 2,
"BFM:%d:set %d= 0x%08x (%d)",
fmt(BFMA1o010)&fmT(BFMA1iii1)&FMT(BFMA1o0i1)&FMT(BFMA1O0I1));
when BFMA1illl =>
BFMA1L0IOL := true;
BFMA1i0l1 := BFMA1li10;
BFMA1II10 := BFMA1llli(BFMA1olli(1));
if BFMA1Ool1(1) /= Nul then
fiLE_CLOSE(BFMA1io00);
end if;
BFMA1ool1 := BFMA1ooli(BFMA1loli,
BFMA1ioli(BFMA1LOLI to BFMA1LOLI+BFMA1ii10-1),
BFMA1ollI);
PRINTF("BFM:%d:LOGFILE %s",
FMT(BFMA1O010)&FMT(BFMA1ool1));
if BFMA1ool1(1) /= NUL then
FILe_open(BFMA1II00,
BFMA1IO00,
BFMA1OOL1,
wrITE_MODE);
if BFMA1ii00 = OPen_ok then
else
assert FAlse report "Logfile open FAILED" severity FAILURE;
end if;
end if;
when BFMA1oill =>
BFMA1L0IOL := TRUe;
BFMA1iI10 := 2;
PRINTF("BFM:%d:LOGSTART %d",
fmt(BFMA1o010)&Fmt(BFMA1OLLI(1)));
if BFMA1ool1(1) = nuL then
assert falsE report "Logfile not defined, ignoring command" severity errOR;
else
BFMA1ii11 := (BFMA1l000(1)(0) = '1');
BFMA1o011 := (BFMA1L000(1)(1) = '1');
BFMA1l011 := (BFMA1L000(1)(2) = '1');
BFMA1I011 := (BFMA1l000(1)(3) = '1');
end if;
when BFMA1lILL =>
BFMA1l0iol := true;
BFMA1ii10 := 1;
printf("BFM:%d:LOGSTOP",
fmt(BFMA1o010));
BFMA1ii11 := FALSE;
BFMA1O011 := False;
BFMA1l011 := false;
BFMA1i011 := false;
when BFMA1lLLL =>
BFMA1l0iol := TRUE;
BFMA1II10 := 1;
printf("BFM:%d:VERSION",
fmt(BFMA1o010));
priNTF("  BFM VHDL Version %s",
FMt(BFMA1O10I));
printf("  BFM Date %s",
FMT(BFMA1l10i));
PRIntf("  SVN Revision $Revision: 3562 $");
PRINTF("  SVN Date $Date: 2008-10-13 06:07:22 -0700 (Mon, 13 Oct 2008) $");
pRINTF("  Compiler Version %d",
FMT(BFMA1O111));
PRINtf("  Vectors Version %d",
fmt(BFMA1i111));
printf("  No of Vectors %d",
FMT(BFMA1L100));
if BFMA1Ool1(1) /= nul then
spRINTF(BFMA1i1o1,
"%05t VR %s %s %d %d %d",
FMT(BFMA1O10i)&fMT(BFMA1L10I)&FMT(BFMA1o111)&fmT(BFMA1i111)&fmt(BFMA1l100));
WRITE(L,
BFMA1I1O1);
writeLINE(BFMA1io00,
L);
end if;
when others =>
PRINTf("BFM: Instruction %d Line Number %d Command %d",
FMT(BFMA1loli)&FMT(BFMA1O010)&FMT(BFMA1il10));
PRINTf("       Stimulus file %s  Line No %d",
fmt(BFMA1o001(BFMA1oili(BFMA1O010,
BFMA1I001)))&fmt(BFMA1IILi(BFMA1O010,
BFMA1I001)));
assert FALSE report "Instruction not yet implemented" severity ERROR;
end case;
end if;
if BFMA1l0iol then
BFMA1O0O1 := FALSE;
BFMA1Loli := BFMA1Loli+BFMA1iI10;
BFMA1ii10 := 0;
end if;
end loop;
BFMA1i0i1 := FAlse;
BFMA1o1i1 := FALSE;
BFMA1L1I1 := false;
if BFMA1OOo0 = '1' then
EXp := BFMA1iio0 and BFMA1o0o0;
BFMA1l0i1 := hRDATA and BFMA1o0o0;
BFMA1i0i1 := (Exp = BFMA1L0I1);
end if;
if BFMA1oil0 = '1' then
exp := BFMA1lol0 and BFMA1iOL0;
BFMA1l0i1 := BFMA1o0l0 and BFMA1iol0;
BFMA1O1i1 := (eXP = BFMA1l0i1);
end if;
if BFMA1liL0 = '1' then
EXP := BFMA1I0o0 and BFMA1o1o0;
BFMA1l0I1 := GP_in and BFMA1O1O0;
BFMA1l1i1 := (EXp = BFMA1L0I1);
end if;
BFMA1li01 := BFMA1loo1 or BFMA1llo1
or BFMA1ioo1
or BFMA1olo1
or BFMA1ilO1
or BFMA1lio1
or BFMA1iio1
or TO_BOOLEan(BFMA1ooo0 or BFMA1I11I
or BFMA1L11i
or BFMA1o11i
or BFMA1ill0
or BFMA1oil0
or BFMA1LIL0);
if BFMA1ooo1 then
case BFMA1oi10 is
when BFMA1LI0 =>
if not BFMA1li01 then
if BFMA1i0o1 <= 1 then
BFMA1OOO1 := fALSE;
else
BFMA1I0O1 := BFMA1i0o1-1;
end if;
end if;
when BFMA1io0 =>
if BFMA1i0o1 <= 1 then
BFMA1OOo1 := FALSE;
else
BFMA1I0O1 := BFMA1i0o1-1;
end if;
when BFMA1loll
| BFMA1IOLL =>
if (now/1 NS) >= BFMA1ooool then
BFMA1OOO1 := FALSE;
end if;
when BFMA1ooI
| BFMA1i1L
| BFMA1L1l =>
if BFMA1O1l1 = 256 then
BFMA1IL11 := (INTERrupt /= BFMA1I1I0);
else
BFMA1iL11 := (INTERRupt(BFMA1O1L1) = '1');
end if;
if BFMA1il11 then
ifpRINTF((debug >= 2),
"BFM:Interrupt Wait Time %d cycles",
fMT(BFMA1oii1));
BFMA1OOO1 := faLSE;
end if;
when BFMA1ioi =>
BFMA1I0l0 <= BFMA1o110;
BFMA1L0L0 <= BFMA1l110;
BFMA1lll0 <= '1';
BFMA1oOO1 := false;
when BFMA1lii =>
BFMA1i0l0 <= to_slv32(BFMA1LOL1+BFMA1oll1);
BFMA1L0L0 <= TO_SLV32(BFMA1ILl1(BFMA1olL1));
BFMA1LLL0 <= '1';
BFMA1oll1 := BFMA1OLL1+1;
if BFMA1OLL1 >= BFMA1iol1 then
BFMA1ooo1 := FALSE;
end if;
when BFMA1olI
| BFMA1llI
| BFMA1ili =>
BFMA1I0L0 <= BFMA1O110;
BFMA1i0o0 <= BFMA1l110;
BFMA1O1O0 <= BFMA1i110;
BFMA1l1o0 <= BFMA1O010;
BFMA1i1o0 <= '1';
if BFMA1oil0 = '1' then
BFMA1OOO1 := faLSE;
end if;
when BFMA1oii =>
if Ext_wait = '0' and BFMA1I0o1 = 0 then
IFPRINTF((DEBug >= 2),
"BFM:Exteral Wait Time %d cycles",
fmt(BFMA1oiI1));
BFMA1ooo1 := FALse;
end if;
if BFMA1i0o1 >= 1 then
BFMA1i0o1 := BFMA1i0o1-1;
end if;
when BFMA1o0l
| BFMA1L0l
| BFMA1LOL
| BFMA1iiL =>
BFMA1i1o0 <= '1';
BFMA1i0o0 <= BFMA1L110;
BFMA1o1o0 <= BFMA1i110;
BFMA1l1o0 <= BFMA1o010;
BFMA1ooO1 := FALSE;
when BFMA1iol =>
BFMA1i0O0 <= BFMA1l110;
BFMA1o1o0 <= BFMA1i110;
BFMA1l1O0 <= BFMA1O010;
BFMA1lil0 <= '1';
BFMA1i1o0 <= '0';
if BFMA1lil0 = '1' and BFMA1l1i1 then
BFMA1LIL0 <= '0';
BFMA1ooo1 := FALSE;
ifprINTF((DEBUg >= 2),
"BFM:GP IO Wait Time %d cycles",
FMT(BFMA1OII1));
end if;
when BFMA1i00
| BFMA1o10 =>
case BFMA1OOiol is
when BFMA1ILLOL =>
BFMA1OOO1 := FALSE;
when BFMA1oilol =>
BFMA1lliol := BFMA1OLLI(1)+BFMA1ollI(2);
BFMA1iliol := 0;
BFMA1I0LOL := BFMA1oLLI(3);
BFMA1o1lol := BFMA1olli(4) mod 65536;
BFMA1o1iOL := (BFMA1L000(4)(16) = '1');
BFMA1L1Iol := (BFMA1L000(4)(17) = '1');
BFMA1I1IOl := (BFMA1L000(4)(18) = '1');
BFMA1l1loL := BFMA1OLLI(5);
BFMA1i1lol := BFMA1oLLI(6);
if not BFMA1I1Iol then
BFMA1loiol := ( others => 0);
end if;
BFMA1liiOL := 0;
BFMA1Iiiol := 0;
BFMA1o0iol := 0;
BFMA1OO0ol := 0;
BFMA1I0IOL := FALSE;
if BFMA1oi10 = BFMA1o10 then
BFMA1lliol := BFMA1olli(1);
BFMA1ilioL := BFMA1olli(2)-BFMA1i0lOL;
BFMA1i0lOL := 2*BFMA1i0lol;
BFMA1i0iol := true;
end if;
if not BFMA1i0ioL then
Printf("BFM:%d: memtest Started at %t ns",
fmt(BFMA1o010));
PRintf("BFM:  Address %08x Size %d Cycles %5d",
Fmt(BFMA1llIOL)&fmt(BFMA1i0lol)&FMT(BFMA1L1Lol));
else
PRINTF("BFM:%d: dual memtest Started at %t ns",
Fmt(BFMA1o010));
PRINTf("BFM:  Address %08x & %08x Size %d Cycles %5d",
FMT(BFMA1LLIol)&fmt(BFMA1ILIOl+BFMA1i0loL/2)&FMT(BFMA1i0lol/2)&fmt(BFMA1l1lol));
end if;
case BFMA1o1lOL is
when 0 =>
when 1 =>
printF("BFM: Transfers are APB Byte aligned");
when 2 =>
printf("BFM: Transfers are APB Half Word aligned");
when 3 =>
prINTF("BFM: Transfers are APB Word aligned");
when 4 =>
prinTF("BFM: Byte Writes Suppressed");
when others =>
assert FAlse report "Illegal Align on memtest" severity FAILURe;
end case;
if BFMA1I1iol then
printF("BFM: memtest restarted");
end if;
if BFMA1O1IOL then
PRINTF("BFM: Memtest Filling Memory");
BFMA1ooiOL := BFMA1iILOL;
elsif BFMA1l1LOL > 0 then
PRIntf("BFM: Memtest Random Read Writes");
BFMA1OOiol := ACTIVE;
elsif BFMA1L1IOL then
PRINTF("BFM: Memtest Verifying Memory Content");
BFMA1ooiol := BFMA1o0lol;
else
BFMA1ooiol := BFMA1LIlol;
end if;
when active
| BFMA1IILOL
| BFMA1o0lol =>
if not (BFMA1Llo1 or BFMA1loo1) then
case BFMA1ooiol is
when actiVE =>
BFMA1i1LOL := BFMA1O0LI(BFMA1I1LOL);
BFMA1ioiol := BFMA1i0li(BFMA1i1lOL,
BFMA1I0lol);
BFMA1i1loL := BFMA1O0LI(BFMA1i1lOL);
BFMA1oliol := BFMA1I0LI(BFMA1i1LOL,
8);
when BFMA1IILOL =>
BFMA1iOIOL := BFMA1oo0ol;
BFMA1Oliol := 6;
when BFMA1O0lol =>
BFMA1IOIol := BFMA1oo0ol;
BFMA1oliol := 2;
when others =>
end case;
case BFMA1o1lol is
when 0 =>
when 1 =>
BFMA1ioiol := 4*(BFMA1ioiol/4);
case BFMA1OLIOL is
when 0
| 4 =>
BFMA1OLIOL := BFMA1OLiol;
when 1
| 5 =>
BFMA1oliol := BFMA1OLIOL-1;
when 2
| 6 =>
BFMA1oLIOL := BFMA1OLIOL-2;
when others =>
end case;
when 2 =>
BFMA1ioiol := 4*(BFMA1ioiol/4);
case BFMA1OLIOL is
when 0
| 4 =>
BFMA1olioL := BFMA1olIOL+1;
when 1
| 5 =>
BFMA1oliol := BFMA1olIOL;
when 2
| 6 =>
BFMA1oliol := BFMA1olioL-1;
when others =>
end case;
when 3 =>
BFMA1ioiol := 4*(BFMA1ioiol/4);
case BFMA1oliol is
when 0
| 4 =>
BFMA1Oliol := BFMA1Oliol+2;
when 1
| 5 =>
BFMA1OLIOL := BFMA1OLIOl+1;
when 2
| 6 =>
BFMA1OLiol := BFMA1oliol;
when others =>
end case;
when 4 =>
case BFMA1oliol is
when 4 =>
BFMA1ioIOL := 2*(BFMA1IOIol/2);
BFMA1OLIOL := 5;
when others =>
end case;
when others =>
end case;
if BFMA1oliol >= 0 and BFMA1OLIOL <= 2 then
case BFMA1oliol is
when 0 =>
BFMA1i010 := "000";
BFMA1IOIOL := BFMA1Ioiol;
BFMA1OIIOL := (BFMA1LOiol(BFMA1ioiol+0) >= 256);
when 1 =>
BFMA1i010 := "001";
BFMA1ioiol := 2*(BFMA1IOiol/2);
BFMA1OIIOL := ((BFMA1lOIOL(BFMA1ioiOL+0) >= 256) and (BFMA1loiol(BFMA1ioiol+1) >= 256));
when 2 =>
BFMA1i010 := "010";
BFMA1ioioL := 4*(BFMA1IOIOl/4);
BFMA1OIiol := ((BFMA1lOIOL(BFMA1IOIOL+0) >= 256) and (BFMA1Loiol(BFMA1ioiOL+1) >= 256)
and (BFMA1loiol(BFMA1ioIOL+2) >= 256)
and (BFMA1loIOL(BFMA1ioiol+3) >= 256));
when others =>
end case;
if BFMA1oiiol then
BFMA1loo1 := TRUE;
BFMA1LIIOL := BFMA1LIIOL+1;
if BFMA1i0iol and BFMA1ioiol >= BFMA1i0lol/2 then
BFMA1o110 := TO_slv32(BFMA1iliol+BFMA1ioiol);
else
BFMA1o110 := to_SLV32(BFMA1LLIOL+BFMA1ioiOL);
end if;
case BFMA1oliOL is
when 0 =>
BFMA1l110 := BFMA1L1I0(31 downto 8)&to_slv32(BFMA1loiol(BFMA1IOiol+0))(7 downto 0);
when 1 =>
BFMA1l110 := BFMA1l1i0(31 downto 16)&TO_SLV32(BFMA1loiol(BFMA1IOIOL+1))(7 downto 0)&To_slv32(BFMA1loioL(BFMA1IOiol+0))(7 downto 0);
when 2 =>
BFMA1l110 := TO_Slv32(BFMA1LOIOl(BFMA1ioiol+3))(7 downto 0)&to_slv32(BFMA1LOIOl(BFMA1IOIOL+2))(7 downto 0)&to_slv32(BFMA1LOIol(BFMA1ioIOL+1))(7 downto 0)&to_slv32(BFMA1LOiol(BFMA1ioiol+0))(7 downto 0);
when others =>
BFMA1L110 := BFMA1l1i0(31 downto 0);
end case;
BFMA1i110 := ( others => '1');
else
BFMA1OLIol := BFMA1OLiol+4;
if BFMA1oliol = 4 and BFMA1o1lol = 4 then
BFMA1oliol := 5;
end if;
end if;
end if;
if BFMA1oliol >= 4 and BFMA1olIOL <= 6 then
BFMA1llO1 := true;
BFMA1iiioL := BFMA1IIIOL+1;
BFMA1i1LOL := BFMA1o0li(BFMA1I1lol);
BFMA1l110 := to_sLV32(BFMA1I1LOl);
case BFMA1OLIol is
when 4 =>
BFMA1i010 := "000";
BFMA1ioiol := BFMA1ioiol;
BFMA1loiol(BFMA1ioiol+0) := 256+to_int_unsIGNED(BFMA1l110(7 downto 0));
when 5 =>
BFMA1i010 := "001";
BFMA1IOiol := 2*(BFMA1ioiol/2);
BFMA1LOIOL(BFMA1IOIOl+0) := 256+To_int_unsIGNED(BFMA1l110(7 downto 0));
BFMA1LOiol(BFMA1IOIOL+1) := 256+TO_INT_unsigned(BFMA1l110(15 downto 8));
when 6 =>
BFMA1i010 := "010";
BFMA1Ioiol := 4*(BFMA1ioiol/4);
BFMA1loiol(BFMA1ioiol+0) := 256+to_inT_UNSIGned(BFMA1l110(7 downto 0));
BFMA1LOIOL(BFMA1ioiol+1) := 256+to_int_unSIGNED(BFMA1l110(15 downto 8));
BFMA1lOIOL(BFMA1ioiol+2) := 256+to_int_unsIGNED(BFMA1l110(23 downto 16));
BFMA1loIOL(BFMA1ioiol+3) := 256+tO_INT_UNsigned(BFMA1L110(31 downto 24));
when others =>
end case;
if BFMA1i0iol and BFMA1iOIOL >= BFMA1I0lol/2 then
BFMA1o110 := To_slv32(BFMA1Iliol+BFMA1ioiol);
else
BFMA1o110 := TO_slv32(BFMA1lLIOL+BFMA1IOIOl);
end if;
end if;
if BFMA1OLiol = 3 or BFMA1olioL = 7 then
BFMA1o0iol := BFMA1o0ioL+1;
end if;
BFMA1oo0ol := BFMA1oo0OL+4;
case BFMA1OOIOL is
when ACtive =>
if BFMA1l1lol > 0 then
BFMA1l1lol := BFMA1l1loL-1;
elsif BFMA1l1IOL then
BFMA1oo0ol := 0;
BFMA1ooiol := BFMA1o0lol;
PRintf("BFM: Memtest Verifying Memory Content");
else
BFMA1ooiol := BFMA1lilOL;
end if;
when BFMA1IILOl =>
if BFMA1OO0OL >= BFMA1i0lol then
if BFMA1L1LOL = 0 then
if BFMA1l1iol then
BFMA1oo0ol := 0;
BFMA1ooiol := BFMA1o0lol;
printf("BFM: Memtest Verifying Memory Content");
else
BFMA1ooiol := BFMA1lILOL;
end if;
else
BFMA1ooiol := Active;
printf("BFM: Memtest Random Read Writes");
end if;
end if;
when BFMA1o0LOL =>
if BFMA1oO0OL >= BFMA1i0lol then
BFMA1ooIOL := BFMA1lilol;
end if;
when others =>
end case;
BFMA1L1O1 := BFMA1L010;
end if;
when BFMA1lilol =>
if not BFMA1lI01 then
BFMA1ooioL := BFMA1illol;
PRINTf("BFM: bfmtest complete  Writes %d  Reads %d  Nops %d",
FMT(BFMA1IIIOL)&FMT(BFMA1LIiol)&Fmt(BFMA1o0iol));
end if;
end case;
when others =>
end case;
end if;
if BFMA1oi11 = 0 then
BFMA1li11 := false;
BFMA1oi11 := BFMA1i101;
else
BFMA1oi11 := BFMA1oi11-1;
BFMA1li11 := TRUe;
end if;
if HREAdy = '1' then
BFMA1Ll1i <= "00";
BFMA1IL1I <= '0';
BFMA1L11I <= '0';
BFMA1i11i <= '0';
BFMA1LOO0 <= '0';
if BFMA1l11I = '1' or BFMA1i11i = '1' then
BFMA1OLO0 <= '0';
end if;
if BFMA1llo1 and hready = '1' then
BFMA1lI1I <= BFMA1O110;
BFMA1il1i <= '1';
BFMA1lo1i <= BFMA1il01;
BFMA1LL1i <= "10";
BFMA1io1i <= BFMA1ol01;
BFMA1OL1I <= BFMA1ll01;
BFMA1o01i <= BFMA1i010;
BFMA1lio0 <= BFMA1L11L(BFMA1i010,
BFMA1O110(1 downto 0),
BFMA1L110,
BFMA1IO11);
BFMA1L11i <= '1';
BFMA1IOI0 <= BFMA1o010;
BFMA1llo1 := false;
end if;
if BFMA1loo1 and hready = '1' then
BFMA1Li1i <= BFMA1o110;
BFMA1Il1i <= '0';
BFMA1LO1I <= BFMA1il01;
BFMA1ll1i <= "10";
BFMA1io1i <= BFMA1OL01;
BFMA1ol1i <= BFMA1ll01;
BFMA1O01i <= BFMA1I010;
BFMA1ILO0 <= BFMA1l11l(BFMA1i010,
BFMA1o110(1 downto 0),
BFMA1l110,
BFMA1IO11);
BFMA1oio0 <= BFMA1iooi(BFMA1i010,
BFMA1o110(1 downto 0),
BFMA1I110,
BFMA1IO11);
BFMA1Ioi0 <= BFMA1o010;
BFMA1I11i <= '1';
BFMA1olo0 <= '1';
BFMA1loo1 := false;
end if;
if BFMA1lio1 and HREADY = '1' then
BFMA1LI1I <= BFMA1o110;
BFMA1il1i <= BFMA1llool;
BFMA1lo1i <= BFMA1OIOOL;
BFMA1ll1I <= BFMA1ilooL;
BFMA1io1i <= BFMA1LIOOL;
BFMA1ol1i <= BFMA1IIOOL;
BFMA1o01i <= BFMA1I010;
BFMA1LIO0 <= BFMA1l11l(BFMA1I010,
BFMA1O110(1 downto 0),
BFMA1L110,
BFMA1io11);
BFMA1L11I <= '1';
BFMA1IOI0 <= BFMA1o010;
BFMA1lio1 := faLSE;
end if;
if BFMA1ilo1 and hready = '1' then
BFMA1li1I <= BFMA1o110;
BFMA1il1i <= '0';
BFMA1lo1I <= BFMA1il01;
BFMA1IO1I <= BFMA1ol01;
BFMA1ol1i <= BFMA1ll01;
BFMA1o01I <= BFMA1i010;
BFMA1ilo0 <= BFMA1l11l(BFMA1I010,
BFMA1o110(1 downto 0),
BFMA1l110,
BFMA1io11);
BFMA1oio0 <= BFMA1iooi(BFMA1i010,
BFMA1o110(1 downto 0),
BFMA1i110,
BFMA1io11);
BFMA1IOi0 <= BFMA1o010;
if BFMA1I11I = '1' or BFMA1ooo0 = '1' then
BFMA1ll1i <= "00";
else
BFMA1LL1I <= "10";
BFMA1i11I <= '1';
BFMA1loo0 <= '1';
end if;
if BFMA1IOO0 = '1' and BFMA1I0i1 then
BFMA1ilo1 := FALse;
end if;
end if;
if BFMA1ioO1 and hready = '1' then
BFMA1LI1i <= BFMA1O110;
BFMA1il1i <= '1';
BFMA1lo1i <= BFMA1IL01;
BFMA1io1i <= BFMA1ol01;
BFMA1ol1i <= BFMA1ll01;
BFMA1o01i <= BFMA1i010;
BFMA1Ioi0 <= BFMA1o010;
if BFMA1li11 then
BFMA1ll1i <= "01";
else
BFMA1LIO0 <= BFMA1L11L(BFMA1I010,
BFMA1o110(1 downto 0),
TO_slv32(BFMA1ill1(BFMA1oll1)),
BFMA1io11);
BFMA1L11i <= '1';
if BFMA1Oll1 = 0 or BFMA1ll10 = 3
or BFMA1lO11 then
BFMA1LL1I <= "10";
else
BFMA1ll1i <= "11";
end if;
BFMA1o110 := to_std_lOGIC(to_unSIGNED(BFMA1O110)+BFMA1LLL1);
BFMA1oll1 := BFMA1oll1+1;
if BFMA1oLL1 = BFMA1iol1 then
BFMA1ioo1 := FALSE;
end if;
end if;
end if;
if BFMA1olo1 and Hready = '1' then
BFMA1li1I <= BFMA1o110;
BFMA1IL1i <= '0';
BFMA1LO1i <= BFMA1il01;
BFMA1io1i <= BFMA1ol01;
BFMA1ol1I <= BFMA1ll01;
BFMA1o01i <= BFMA1i010;
BFMA1ioi0 <= BFMA1o010;
if BFMA1li11 then
BFMA1ll1i <= "01";
else
BFMA1Ilo0 <= BFMA1l11l(BFMA1I010,
BFMA1o110(1 downto 0),
to_SLV32(BFMA1ill1(BFMA1olL1)),
BFMA1io11);
BFMA1OIO0 <= BFMA1iooI(BFMA1i010,
BFMA1o110(1 downto 0),
BFMA1i110,
BFMA1io11);
BFMA1I11i <= '1';
BFMA1olo0 <= '1';
if BFMA1oLL1 = 0 or BFMA1LL10 = 3
or BFMA1lo11 then
BFMA1ll1i <= "10";
else
BFMA1ll1i <= "11";
end if;
BFMA1o110 := To_std_logiC(to_uNSIGNED(BFMA1o110)+BFMA1lll1);
BFMA1OLL1 := BFMA1OLL1+1;
if BFMA1oll1 = BFMA1iol1 then
BFMA1olo1 := false;
end if;
end if;
end if;
end if;
if hREADY = '1' then
BFMA1o11I <= BFMA1L11i;
BFMA1OOO0 <= BFMA1I11i;
BFMA1IOO0 <= BFMA1LOO0;
BFMA1llo0 <= BFMA1olo0;
BFMA1iio0 <= BFMA1ilo0;
BFMA1o0o0 <= BFMA1OIO0;
BFMA1Oli0 <= BFMA1IOi0;
BFMA1ii1i <= BFMA1LI1i;
BFMA1L01i <= BFMA1O01I;
end if;
BFMA1Oil0 <= BFMA1ill0;
BFMA1o1l0 <= BFMA1i0l0;
BFMA1OOl0 <= BFMA1i1o0;
BFMA1lol0 <= BFMA1i0o0;
BFMA1IOL0 <= BFMA1o1o0;
BFMA1oLL0 <= BFMA1l1O0;
if HREADY = '1' then
if BFMA1L11I = '1' then
BFMA1l0o0 <= BFMA1lio0;
else
BFMA1l0o0 <= ( others => '0');
end if;
if BFMA1O11I = '1' and debug >= 3 then
printf("BFM: Data Write %08x %08x",
fmt(BFMA1II1I)&fmt(BFMA1L0O0));
end if;
if BFMA1ii11 and BFMA1o11i = '1' then
sprinTF(BFMA1I1o1,
"%05t AW %c %08x %08x",
Fmt(BFMA1ILOi(BFMA1L01i))&fmT(BFMA1ii1i)&FMT(BFMA1l0o0));
WRITE(L,
BFMA1i1o1);
writeline(BFMA1io00,
l);
end if;
end if;
if BFMA1iil0 = '1' and BFMA1L011 then
SPrintf(BFMA1i1o1,
"%05t GW   %08x ",
FMT(BFMA1ili0));
WRITE(L,
BFMA1i1o1);
writelinE(BFMA1iO00,
L);
end if;
if BFMA1LLL0 = '1' and BFMA1O011 then
SPRINTf(BFMA1i1o1,
"%05t EW   %08x %08x",
Fmt(BFMA1i0L0)&fmt(BFMA1l0L0));
WRite(l,
BFMA1I1o1);
WRITEline(BFMA1Io00,
l);
end if;
if hreADY = '1' then
if BFMA1ooo0 = '1' then
if deBUG >= 3 then
if BFMA1O0o0 = BFMA1l1I0 then
printf("BFM: Data Read %08x %08x",
FMT(BFMA1II1i)&FMT(HRDATA));
else
printf("BFM: Data Read %08x %08x MASK:%08x",
Fmt(BFMA1iI1I)&FMT(HRDATA)&fmt(BFMA1o0o0));
end if;
end if;
if BFMA1ii11 then
sprintF(BFMA1I1O1,
"%05t AR %c %08x %08x",
FMT(BFMA1iloi(BFMA1L01I))&fMT(BFMA1II1i)&fmt(HRDAta));
WRITe(l,
BFMA1i1o1);
wriTELINE(BFMA1iO00,
l);
end if;
if BFMA1OI01 >= 0 then
BFMA1i000(BFMA1oi01) := BFMA1oioi(BFMA1oloi(BFMA1l01i,
BFMA1II1i(1 downto 0),
HRDATA,
BFMA1IO11));
end if;
if BFMA1llo0 = '1' and not BFMA1I0I1 then
BFMA1lo01 := BFMA1LO01+1;
PRintf("ERROR: AHB Data Read Comparison failed Addr:%08x  Got:%08x  EXP:%08x  (MASK:%08x)",
fmt(BFMA1ii1i)&fmt(HRDATA)&fMT(BFMA1iio0)&fmt(BFMA1o0o0));
PRINtf("       Stimulus file %s  Line No %d",
FMT(BFMA1o001(BFMA1OILI(BFMA1oli0,
BFMA1i001)))&fmT(BFMA1iili(BFMA1OLI0,
BFMA1i001)));
assert false report "BFM Data Compare Error" severity ERROR;
if BFMA1ii11 then
SPRINTF(BFMA1i1O1,
"%05t ERROR  Addr:%08x  Got:%08x  EXP:%08x  (MASK:%08x)",
fmt(BFMA1Ii1i)&FMT(hrdata)&FMT(BFMA1iio0)&FMT(BFMA1o0O0));
WRITE(L,
BFMA1i1o1);
WRITELINE(BFMA1IO00,
L);
end if;
end if;
end if;
end if;
if BFMA1LIL0 = '1' then
if dEBUG >= 3 then
if BFMA1o1o0 = BFMA1l1i0 then
Printf("BFM: GP IO Data Read %08x",
Fmt(GP_In));
else
PRINTF("BFM: GP IO Data Read %08x MASK:%08x",
fMT(Gp_in)&fMT(BFMA1o1o0));
end if;
end if;
if BFMA1l011 then
SPRintf(BFMA1i1o1,
"%05t GR   %08x ",
fmt(BFMA1i0o0));
wriTE(l,
BFMA1I1o1);
writeline(BFMA1IO00,
l);
end if;
if BFMA1oi01 >= 0 then
BFMA1i000(BFMA1oi01) := BFMA1oioi(Gp_in);
end if;
if BFMA1i1o0 = '1' and not BFMA1l1i1 then
BFMA1lo01 := BFMA1LO01+1;
PRINTF("GPIO input not as expected  Got:%08x  EXP:%08x  (MASK:%08x)",
fmt(gp_in)&FMT(BFMA1i0O0)&Fmt(BFMA1o1o0));
printf("       Stimulus file %s  Line No %d",
fmT(BFMA1o001(BFMA1oili(BFMA1l1O0,
BFMA1I001)))&fmt(BFMA1iili(BFMA1l1o0,
BFMA1I001)));
assert falsE report "BFM GPIO Compare Error" severity ERROR;
if BFMA1l011 then
sprintf(BFMA1I1O1,
"ERROR  Got:%08x  EXP:%08x  (MASK:%08x)",
fMT(GP_IN)&FMT(BFMA1i0o0)&Fmt(BFMA1o1o0));
wriTE(L,
BFMA1i1o1);
WRIteline(BFMA1IO00,
L);
end if;
end if;
end if;
if BFMA1Oil0 = '1' then
if debug >= 3 then
if BFMA1iol0 = BFMA1l1i0 then
pRINTF("BFM: Extention Data Read %08x %08x",
fmt(BFMA1o1l0)&Fmt(BFMA1o0L0));
else
prINTF("BFM: Extention Data Read %08x %08x MASK:%08x",
fmt(BFMA1o1l0)&FMT(BFMA1o0l0)&fmt(BFMA1ioL0));
end if;
end if;
if BFMA1o011 then
SPRINTF(BFMA1i1O1,
"%05t ER   %08x %08x",
Fmt(BFMA1o1l0)&Fmt(BFMA1lol0));
WRITE(L,
BFMA1i1o1);
WRIteline(BFMA1io00,
l);
end if;
if BFMA1OI01 >= 0 then
BFMA1i000(BFMA1oi01) := BFMA1oioi(BFMA1o0l0);
end if;
if BFMA1ooL0 = '1' and not BFMA1O1I1 then
BFMA1lo01 := BFMA1lo01+1;
printf("ERROR: Extention Data Read Comparison failed  Got:%08x  EXP:%08x  (MASK:%08x)",
FMT(BFMA1o0l0)&fmt(BFMA1lol0)&FMT(BFMA1Iol0));
PRINTF("       Stimulus file %s  Line No %d",
FMT(BFMA1o001(BFMA1OIli(BFMA1oll0,
BFMA1i001)))&fmt(BFMA1iili(BFMA1oll0,
BFMA1i001)));
assert FALSE report "BFM Extention Data Compare Error" severity ERROr;
if BFMA1o011 then
sprintF(BFMA1i1o1,
"ERROR  Got:%08x  EXP:%08x  (MASK:%08x)",
fmt(BFMA1o0l0)&fmt(BFMA1LOL0)&fmt(BFMA1IOL0));
writE(l,
BFMA1I1o1);
Writeline(BFMA1IO00,
L);
end if;
end if;
end if;
BFMA1II01 := BFMA1loo1 or BFMA1LLO1
or BFMA1ioo1
or BFMA1oLO1
or BFMA1iLO1
or BFMA1lio1
or TO_BOolean(BFMA1I11I or BFMA1l11i
or BFMA1ill0
or BFMA1lil0)
or (TO_boolean((BFMA1ooo0 or BFMA1O11I) and not hreADY));
if BFMA1ooo1 then
case BFMA1oi10 is
when BFMA1IL1 =>
if not BFMA1ii01 then
IFPRintf((DEBUg >= 2),
"BFM:%d:checktime was %d cycles ",
fmt(BFMA1o010)&FMT(BFMA1oii1));
if BFMA1OII1 < BFMA1OLLi(1) or BFMA1OII1 > BFMA1olli(2) then
PRINTF("BFM: ERROR checktime %d %d Actual %d",
FMT(BFMA1olli(1))&FMT(BFMA1olli(2))&fmT(BFMA1oii1));
priNTF("       Stimulus file %s  Line No %d",
Fmt(BFMA1O001(BFMA1oili(BFMA1o010,
BFMA1i001)))&fmT(BFMA1IILI(BFMA1o010,
BFMA1i001)));
assert FALSE report "BFM checktime failure" severity error;
BFMA1lo01 := BFMA1lo01+1;
end if;
BFMA1OOO1 := FALSE;
BFMA1l0ool := BFMA1OII1;
end if;
when BFMA1II1 =>
if not BFMA1ii01 then
BFMA1OLLOL := BFMA1oLLOL-1;
ifprinTF((debug >= 2),
"BFM:%d:checktimer was %d cycles ",
FMT(BFMA1o010)&FMt(BFMA1OLlol));
if BFMA1oLLOL < BFMA1OLLI(1) or BFMA1ollol > BFMA1olli(2) then
printf("BFM: ERROR checktimer %d %d Actual %d",
fmt(BFMA1OLLi(1))&fmt(BFMA1Olli(2))&Fmt(BFMA1OLlol));
PRintf("       Stimulus file %s  Line No %d",
FMT(BFMA1o001(BFMA1oili(BFMA1o010,
BFMA1i001)))&fMT(BFMA1iili(BFMA1o010,
BFMA1i001)));
assert FALSE report "BFM checktimer failure" severity errOR;
BFMA1lo01 := BFMA1lo01+1;
end if;
BFMA1Ooo1 := FALSE;
BFMA1O0Ool := BFMA1ollol;
end if;
when others =>
end case;
end if;
if BFMA1ol11 then
if BFMA1l1o1 > 0 then
BFMA1l1o1 := BFMA1L1O1-1;
else
BFMA1l1o1 := BFMA1l010;
Printf("       BFM Command Timeout Occured");
priNTF("       Stimulus file %s  Line No %d",
FMT(BFMA1O001(BFMA1Oili(BFMA1oLI0,
BFMA1I001)))&FMt(BFMA1iili(BFMA1OLI0,
BFMA1i001)));
assert BFMA1lil1 report "BFM Command timeout occured" severity ERROR;
assert not BFMA1lil1 report "BFM Completed and timeout occured" severity ERROR;
end if;
else
BFMA1l1o1 := BFMA1L010;
end if;
if BFMA1LO01 > 0 then
BFMA1iII0 <= '1';
end if;
if BFMA1ooo1 or BFMA1loo1
or BFMA1llo1
or BFMA1ioo1
or BFMA1olo1
or BFMA1ILO1
or BFMA1LIo1
or ((BFMA1oio1 or BFMA1oo11) and BFMA1li01) then
BFMA1o0o1 := true;
else
BFMA1OIO1 := fALSE;
if not BFMA1lil1 then
BFMA1O0O1 := falsE;
end if;
BFMA1loli := BFMA1loli+BFMA1II10;
BFMA1II10 := 0;
if oPMODE > 0 then
if BFMA1ll11 or BFMA1lil1 then
BFMA1OL11 := falSE;
BFMA1O0O1 := falSE;
end if;
end if;
end if;
if BFMA1LII0 = '0' and OPMODE = 0
and BFMA1lil1
and not BFMA1LI01 then
printf("###########################################################");
prINTF(" ");
if BFMA1lo01 = 0 then
PRINTF("BFM Simulation Complete - %d Instructions - NO ERRORS",
Fmt(BFMA1LII1));
else
PRINTF("BFM Simulation Complete - %d Instructions - %d ERRORS OCCURED",
FMT(BFMA1LII1)&FMT(BFMA1lo01));
end if;
PRintf(" ");
printf("###########################################################");
Printf(" ");
BFMA1lii0 <= '1';
BFMA1O0O1 := true;
BFMA1OL11 := falSE;
if BFMA1OOL1(1) /= nul then
fILE_CLOSe(BFMA1Io00);
end if;
case BFMA1LO0Ol is
when 1 =>
assert falsE report "BFM Completed" severity NOTE;
when 2 =>
assert False report "BFM Completed" severity wARNING;
when 3 =>
assert false report "BFM Completed" severity ERROR;
when 4 =>
assert FALSE report "BFM Completed" severity failurE;
when others =>
end case;
end if;
CON_Busy <= TO_STD_Logic(BFMA1ol11 or BFMA1LI01);
INSTR_out <= TO_SLV32(BFMA1loli);
end if;
end process;
gp_out <= BFMA1ili0 after BFMA1OO00;
eXT_WR <= BFMA1lll0 after BFMA1OO00;
EXT_RD <= BFMA1ill0 after BFMA1Oo00;
EXT_ADDr <= BFMA1I0l0 after BFMA1oo00;
EXT_data <= BFMA1l0l0 when BFMA1lll0 = '1' else
( others => 'Z') after BFMA1oo00;
BFMA1o0l0 <= eXT_DATA;
process (BFMA1li1i,SYSRstn)
begin
if sysrstn = '0' then
BFMA1i01i <= ( others => '0');
else
for BFMA1o0ii in 0 to 15
loop
BFMA1I01i(BFMA1o0ii) <= to_STD_LOGic(TO_integer((TO_unsigned(BFMA1li1i(31 downto 28)))) = BFMA1o0II);
end loop;
end if;
end process;
HCLK <= 'X' when BFMA1O0I0 else
(SYSCLK or BFMA1lli0);
PCLK <= 'X' when BFMA1O0i0 else
(SYsclk or BFMA1Lli0);
hreseTN <= 'X' when BFMA1l0i0 else
BFMA1OO1i after BFMA1oo00;
HADDR <= ( others => 'X') when BFMA1i0I0 else
BFMA1lI1I after BFMA1Oo00;
hwdata <= ( others => 'X') when BFMA1o1i0 else
BFMA1l0o0 after BFMA1Oo00;
hburst <= ( others => 'X') when BFMA1i0i0 else
BFMA1LO1i after BFMA1oo00;
HMASTLOck <= 'X' when BFMA1i0i0 else
BFMA1IO1I after BFMA1OO00;
HProt <= ( others => 'X') when BFMA1I0i0 else
BFMA1Ol1i after BFMA1oo00;
HSize <= ( others => 'X') when BFMA1i0i0 else
BFMA1o01I after BFMA1oo00;
htrans <= ( others => 'X') when BFMA1I0i0 else
BFMA1ll1i after BFMA1oO00;
HWRITE <= 'X' when BFMA1I0i0 else
BFMA1il1i after BFMA1OO00;
hsel <= ( others => 'X') when BFMA1i0I0 else
BFMA1i01i after BFMA1oo00;
Con_data <= BFMA1I1L0 when BFMA1ooi0 = '1' else
( others => 'Z') after BFMA1oo00;
BFMA1l1l0 <= CON_DATa;
FINished <= BFMA1LII0 after BFMA1oo00;
FAILED <= BFMA1iii0 after BFMA1OO00;
end BFMA1I00I;
