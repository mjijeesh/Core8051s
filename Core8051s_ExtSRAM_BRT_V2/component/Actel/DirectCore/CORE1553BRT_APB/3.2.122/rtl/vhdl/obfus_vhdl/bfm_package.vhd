-- Actel Corporation Proprietary and Confidential
-- Copyright 2008 Actel Corporation.  All rights reserved.
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
-- Revision Information:
-- SVN Revision Information:
-- SVN $Revision: 3562 $
-- SVN $Date: 2008-10-13 06:07:22 -0700 (Mon, 13 Oct 2008) $
use std.textio.all;
library IeEE;
use ieEE.STD_logic_1164.all;
use ieEE.numeric_STD.all;
use wORK.bfm_tEXTIO.all;
use WORK.bfm_MISC.all;
package BFM_PAckage is

constant BFMA1O: inteGER := 22;

constant BFMA1L: integER := 0;

constant BFMA1i: INTEGEr := 4;

constant BFMA1ol: intEGER := 8;

constant BFMA1ll: integER := 12;

constant BFMA1IL: integer := 16;

constant BFMA1OI: integer := 20;

constant BFMA1LI: Integer := 24;

constant BFMA1Ii: integer := 28;

constant BFMA1O0: INTEGER := 32;

constant BFMA1l0: integer := 36;

constant BFMA1i0: integeR := 40;

constant BFMA1O1: INTEGER := 44;

constant BFMA1L1: INTEGER := 48;

constant BFMA1I1: INTEGER := 52;

constant BFMA1ool: integer := 56;

constant BFMA1lol: INTEGer := 60;

constant BFMA1iol: Integer := 64;

constant BFMA1OLL: INTEGER := 68;

constant BFMA1LLL: inTEGER := 72;

constant BFMA1ILl: INTEGER := 76;

constant BFMA1OIl: INTEGER := 80;

constant BFMA1lil: INTEGER := 100;

constant BFMA1iil: INTEGer := 101;

constant BFMA1O0L: integER := 102;

constant BFMA1l0l: INTEGER := 103;

constant BFMA1i0l: INTEGer := 104;

constant BFMA1o1l: INTEGER := 105;

constant BFMA1l1l: inTEGER := 106;

constant BFMA1I1L: INteger := 107;

constant BFMA1ooi: inteGER := 108;

constant BFMA1lOI: INTEGer := 109;

constant BFMA1ioi: inTEGER := 110;

constant BFMA1oli: integer := 111;

constant BFMA1lli: inteGER := 112;

constant BFMA1ILI: INTEGER := 113;

constant BFMA1OIi: INTEger := 114;

constant BFMA1LII: INTEGer := 115;

constant BFMA1III: iNTEGER := 128;

constant BFMA1o0i: integer := 129;

constant BFMA1l0i: INteger := 130;

constant BFMA1I0i: INTEGER := 131;

constant BFMA1o1i: Integer := 132;

constant BFMA1L1i: INTEGER := 133;

constant BFMA1i1I: inteGER := 134;

constant BFMA1OO0: inteGER := 135;

constant BFMA1lo0: INTEger := 136;

constant BFMA1io0: INTEGER := 137;

constant BFMA1ol0: INTEger := 138;

constant BFMA1lL0: Integer := 139;

constant BFMA1IL0: integer := 140;

constant BFMA1oi0: inTEGER := 141;

constant BFMA1li0: integer := 142;

constant BFMA1ii0: INTEGER := 150;

constant BFMA1o00: integer := 151;

constant BFMA1l00: integER := 152;

constant BFMA1i00: integer := 153;

constant BFMA1o10: integer := 154;

constant BFMA1l10: Integer := 160;

constant BFMA1i10: INteger := 161;

constant BFMA1oo1: INTEger := 162;

constant BFMA1lO1: intEGER := 163;

constant BFMA1io1: Integer := 164;

constant BFMA1ol1: INTEGer := 165;

constant BFMA1LL1: intEGER := 166;

constant BFMA1il1: Integer := 167;

constant BFMA1oi1: INTEGEr := 168;

constant BFMA1li1: INTEGER := 169;

constant BFMA1II1: integer := 170;

constant BFMA1o01: INTEGER := 171;

constant BFMA1l01: INTEGER := 172;

constant BFMA1I01: integer := 200;

constant BFMA1O11: integer := 201;

constant BFMA1l11: inTEGER := 202;

constant BFMA1I11: integer := 203;

constant BFMA1OOol: integer := 204;

constant BFMA1LOOL: INTEGEr := 205;

constant BFMA1IOOl: INteger := 206;

constant BFMA1olol: integER := 207;

constant BFMA1llol: integer := 208;

constant BFMA1ilol: integeR := 209;

constant BFMA1oiol: integer := 210;

constant BFMA1liol: INTeger := 211;

constant BFMA1IIOL: intEGER := 212;

constant BFMA1O0ol: INTEGEr := 213;

constant BFMA1L0OL: INTEGER := 214;

constant BFMA1i0ol: INteger := 215;

constant BFMA1o1ol: INTEGer := 216;

constant BFMA1L1OL: iNTEGER := 217;

constant BFMA1i1oL: INTeger := 218;

constant BFMA1ooll: INTEGER := 219;

constant BFMA1loll: inTEGER := 220;

constant BFMA1iOLL: INTeger := 221;

constant BFMA1olLL: INTEger := 222;

constant BFMA1llll: integeR := 250;

constant BFMA1ILLL: INTEGEr := 251;

constant BFMA1oill: INTEGER := 252;

constant BFMA1lill: integer := 253;

constant BFMA1IILL: INTEGer := 254;

constant BFMA1o0ll: integer := 255;

constant BFMA1L0LL: iNTEGER := 1001;

constant BFMA1i0LL: INTEGER := 1002;

constant BFMA1o1ll: Integer := 1003;

constant BFMA1l1ll: INteger := 1004;

constant BFMA1I1ll: INTeger := 1005;

constant BFMA1Ooil: INTEGER := 1006;

constant BFMA1loil: Integer := 1007;

constant BFMA1ioil: Integer := 1008;

constant BFMA1olil: INTEGER := 1009;

constant BFMA1llil: INTEGEr := 1010;

constant BFMA1ILIL: Integer := 1011;

constant BFMA1Oiil: inTEGER := 1012;

constant BFMA1liil: INTEGER := 1013;

constant BFMA1IIIL: inteGER := 1014;

constant BFMA1o0il: INTEGer := 1015;

constant BFMA1l0il: intEGER := 1016;

constant BFMA1i0il: iNTEGER := 1017;

constant BFMA1O1IL: INTEGer := 1018;

constant BFMA1l1il: integer := 1019;

constant BFMA1I1IL: INTeger := 1020;

constant BFMA1OO0L: INTEGEr := 1021;

constant BFMA1Lo0l: INTeger := 1022;

constant BFMA1io0l: Integer := 1023;

constant BFMA1Ol0l: integer := 0;

constant BFMA1ll0L: integER := 1;

constant BFMA1il0l: INTEGer := 2;

constant BFMA1OI0L: integeR := 3;

constant BFMA1li0l: Integer := 4;

constant BFMA1ii0l: INTEGer := 0;

constant BFMA1o00L: integer := 1;

constant BFMA1l00L: INteger := 2;

constant BFMA1i00l: INTEger := 3;

constant BFMA1o10l: INTEGER := 4;

constant BFMA1l10l: inTEGER := 5;

constant BFMA1i10L: INTEger := 6;

constant BFMA1oo1l: INTEGER := 7;

constant BFMA1lo1l: intEGER := 8;

constant BFMA1io1l: intEGER := 16#00000000#;

constant BFMA1ol1l: integeR := 16#00002000#;

constant BFMA1ll1l: integER := 16#00004000#;

constant BFMA1il1l: integeR := 16#00006000#;

constant BFMA1oi1l: integeR := 16#00008000#;

type BFMA1LI1l is (BFMA1II1l,BFMA1o01L,BFMA1L01L,X);

subtype BFMA1I01l is std_logic_VECTOR(31 downto 0);

type BFMA1o11l is array (INTEGER range <> ) of BFMA1I01l;

function BFMA1l11l(SIZE: STD_logic_veCTOR(2 downto 0);
BFMA1i11l: STD_Logic_vectOR(1 downto 0);
BFMA1OOOI: std_LOGIC_Vector(31 downto 0);
BFMA1looi: Integer)
return std_LOGIC_vector;

function BFMA1iooi(SIZE: STD_LOGic_vectoR(2 downto 0);
BFMA1I11l: STD_logic_veCTOR(1 downto 0);
BFMA1OOOI: STd_logic_vECTOR(31 downto 0);
BFMA1looI: Integer)
return std_loGIC_VECtor;

function BFMA1oloi(SIZE: STD_LOGIc_vector(2 downto 0);
BFMA1i11l: std_logIC_VECTor(1 downto 0);
BFMA1oooi: stD_LOGIC_vector(31 downto 0);
BFMA1LOOI: integer)
return std_logic_VECTOR;

function BFMA1LLOI(x: INTEGer)
return CHARACTer;

function BFMA1Iloi(Size: INTEGER)
return charaCTER;

function BFMA1iloi(SIZE: STD_logic_vecTOR)
return charaCTER;

function BFMA1oioi(BFMA1LIoi: STD_Logic_vectOR)
return Integer;

function TO_SLV32(x: integer)
return std_logic_VECTOR;

function BFMA1IIOI(SIze: inTEGER;
BFMA1o0OI: INTEGER)
return integeR;

function BFMA1l0oi(SIZE: integer;
BFMA1i0oi: integer)
return std_LOGIC_vector;

function BFMA1o1oi(BFMA1l1OI: intEGER;
X,y: inTEGER;
DEBUG: integer)
return INTEGEr;

function BFMA1i1oi(X: STD_logic_veCTOR)
return STD_LOgic_vectoR;

function BFMA1ooli(BFMA1loLI: integer;
BFMA1IOli: inTEGER_ARray;
BFMA1olli: integer_aRRAY)
return stRING;

function BFMA1LLLI(BFMA1ILLI: integer)
return Integer;

function BFMA1OILi(BFMA1LIli,x: inTEGER)
return iNTEGER;

function BFMA1iili(BFMA1lilI,x: inTEGER)
return integeR;

function TO_INT_signed(BFMA1lIOI: stD_LOGIC_vector)
return integeR;

function TO_Int_unsignED(BFMA1LIOI: STD_LOgic_vectoR)
return integeR;

function BFMA1o0li(Seed: Integer)
return INTeger;

function BFMA1L0Li(SEED: INTEGER;
sIZE: INTEGER)
return integeR;

function BFMA1i0li(SEed: INTEGer;
SIZE: INTEGER)
return INTEger;

component BFM_Main
generic (veCTFILE: striNG := "test.vec";
mAX_INSTructions: INTeger := 16384;
tPD: integer range 0 to 1000 := 1;
max_sTACK: INTeger := 1024;
max_mEMTEST: INTeger := 65536;
DEBUGLEvel: integeR range -1 to 5 := -1;
aRGVALUE0: INTeger := 0;
argvaLUE1: INTEGER := 0;
argvaLUE2: INTEGer := 0;
ARGVAlue3: INTEGER := 0;
ARGvalue4: integer := 0;
argvalue5: integER := 0;
ARGValue6: INteger := 0;
ARGVALUe7: INTEGER := 0;
ARGVALUE8: iNTEGER := 0;
ARGVALUE9: iNTEGER := 0;
argvalue10: integer := 0;
argvalue11: integer := 0;
ARGVAlue12: INTEGEr := 0;
ARGVAlue13: inTEGER := 0;
Argvalue14: inTEGER := 0;
argvaLUE15: integer := 0;
ARGVALUE16: integeR := 0;
ARGvalue17: iNTEGER := 0;
ARGVAlue18: inTEGER := 0;
ARGVALUe19: integer := 0;
argVALUE20: INteger := 0;
argvalue21: INTEGER := 0;
ARGvalue22: integeR := 0;
argvaLUE23: INTEGEr := 0;
Argvalue24: integer := 0;
argvalue25: intEGER := 0;
ARGvalue26: integeR := 0;
argvaLUE27: inTEGER := 0;
ARGVALUE28: INTEGEr := 0;
ARGvalue29: INTEger := 0;
ARGVAlue30: INTEGEr := 0;
argVALUE31: iNTEGER := 0;
argvaLUE32: integer := 0;
argvalue33: Integer := 0;
ARGVALUE34: INTEGER := 0;
argvaluE35: integer := 0;
argvalue36: INTEGer := 0;
argVALUE37: integer := 0;
argvaluE38: INteger := 0;
aRGVALUE39: integer := 0;
ARGVALUE40: integer := 0;
arGVALUE41: integer := 0;
argVALUE42: INteger := 0;
argvalue43: integER := 0;
arGVALUE44: INTEger := 0;
ARGVALue45: Integer := 0;
argvalue46: integer := 0;
ARGValue47: INteger := 0;
ARGValue48: INTeger := 0;
ARGVALue49: INTEGer := 0;
argvaLUE50: intEGER := 0;
argvaluE51: integer := 0;
ARGValue52: INTEGer := 0;
argvALUE53: inteGER := 0;
ARGValue54: INTEGER := 0;
argvalue55: Integer := 0;
aRGVALUE56: integeR := 0;
ARGVALue57: intEGER := 0;
ARGVALue58: inteGER := 0;
ARGvalue59: inTEGER := 0;
ARGVALUe60: integer := 0;
arGVALUE61: Integer := 0;
argvalUE62: INTEGer := 0;
argVALUE63: INteger := 0;
Argvalue64: integeR := 0;
Argvalue65: iNTEGER := 0;
ARGVALUe66: INteger := 0;
argvalue67: inteGER := 0;
argvalUE68: intEGER := 0;
Argvalue69: Integer := 0;
ARGVAlue70: INTEGer := 0;
ARGVALUE71: INTEGER := 0;
aRGVALUE72: INTEGER := 0;
argvaLUE73: intEGER := 0;
argvalue74: Integer := 0;
ARGVALUE75: integer := 0;
argvalue76: INTEGer := 0;
argvaluE77: integer := 0;
aRGVALUE78: integer := 0;
argVALUE79: integer := 0;
argvalUE80: Integer := 0;
argVALUE81: INteger := 0;
argVALUE82: integer := 0;
argvalue83: INTEGER := 0;
argvalue84: INTEGER := 0;
ARGvalue85: integer := 0;
argvalUE86: INTEGer := 0;
ARgvalue87: inteGER := 0;
arGVALUE88: INTeger := 0;
argVALUE89: INteger := 0;
Argvalue90: integer := 0;
ARGVALue91: INTEGer := 0;
arGVALUE92: INTEGEr := 0;
argvALUE93: intEGER := 0;
argvalue94: integer := 0;
ARGVALUE95: inTEGER := 0;
argvalue96: integer := 0;
arGVALUE97: inTEGER := 0;
ARgvalue98: INTEger := 0;
ARGVALUE99: inTEGER := 0);
port (sysclk: in std_logiC;
sYSRSTN: in std_LOGIC;
pclk: out STD_Logic;
hCLK: out std_lOGIC;
hresETN: out STD_LOGIc;
haDDR: out STD_logic_veCTOR(31 downto 0);
HBURST: out std_loGIC_VECtor(2 downto 0);
hmastloCK: out std_logIC;
HPROT: out std_LOGIC_VEctor(3 downto 0);
Hsize: out STD_LOGIc_vector(2 downto 0);
HTrans: out STD_LOgic_vectoR(1 downto 0);
HWRITe: out STD_LOGic;
HWDATA: out STd_logic_veCTOR(31 downto 0);
HRDATa: in STD_LOgic_vectOR(31 downto 0);
hready: in std_loGIC;
HResp: in STD_LOGic;
hsel: out STD_logic_vecTOR(15 downto 0);
inTERRUPT: in STd_logic_veCTOR(255 downto 0);
gp_out: out std_logic_VECTOR(31 downto 0);
GP_In: in STD_LOgic_vectoR(31 downto 0);
ext_wr: out std_logiC;
EXT_Rd: out STD_LOgic;
ext_adDR: out std_loGIC_VECtor(31 downto 0);
ext_datA: inout STD_LOGic_vectoR(31 downto 0);
exT_WAIT: in std_logiC;
instr_ouT: out std_lOGIC_VEctor(31 downto 0);
INSTR_in: in STD_logic_veCTOR(31 downto 0);
FINished: out Std_logic;
fAILED: out Std_logic);
end component;

component BFM_ahbslaveeXT
generic (awidtH: inTEGER range 1 to 32;
DEPTH: intEGER := 256;
EXT_Size: integer range 0 to 2 := 2;
initfile: STRIng := "";
id: inteGER := 0;
tPD: integer range 0 to 1000 := 1;
ENFUNC: integer := 0;
enfifo: Integer range 0 to 1024 := 0;
DEBUG: intEGER range 0 to 1 := 0);
port (hclk: in STD_LOGIc;
hreseTN: in STD_Logic;
HSEL: in STd_logic;
HWrite: in std_LOGIC;
HAddr: in STD_LOGIc_vector(AWIDTH-1 downto 0);
HWDAta: in sTD_LOGIC_vector(31 downto 0);
HRDATA: out std_logic_VECTOR(31 downto 0);
hreADYIN: in std_LOGIC;
HREADYOUt: out sTD_LOGIC;
HTRANs: in std_logiC_VECTOr(1 downto 0);
hsiZE: in std_LOGIC_Vector(2 downto 0);
hburST: in STD_logic_vecTOR(2 downto 0);
hmastlock: in stD_LOGIC;
HPROT: in std_logIC_VECTor(3 downto 0);
hresp: out STD_logic;
EXT_en: in std_logiC;
ext_wr: in std_logiC;
EXT_rd: in std_logic;
EXt_addr: in Std_logic_vECTOR(aWIDTH-1 downto 0);
EXT_Data: inout STD_logic_veCTOR(31 downto 0);
txreADY: out stD_LOGIC;
rxREADY: out std_logic);
end component;

component bfm_ahBSLAVE
generic (Awidth: INTEGer range 1 to 32;
depth: INTEGER := 256;
INITFILE: STRING := "";
id: integer := 0;
TPD: integer range 0 to 1000 := 1;
enfunc: iNTEGER := 0;
DEbug: iNTEGER range 0 to 1 := 0);
port (Hclk: in sTD_LOGIC;
hresetn: in STD_logic;
HSEL: in Std_logic;
HWrite: in stD_LOGIC;
HADDR: in STd_logic_vECTOR(awidth-1 downto 0);
hwDATA: in STD_LOgic_vectoR(31 downto 0);
hrdata: out STD_logic_vecTOR(31 downto 0);
hreadyin: in std_loGIC;
hreadyOUT: out std_logIC;
htrans: in std_logic_VECTOR(1 downto 0);
hsize: in STD_LOgic_vectoR(2 downto 0);
hburst: in std_logic_VECTOR(2 downto 0);
HMASTlock: in std_logic;
hPROT: in STD_LOGic_vector(3 downto 0);
HRESP: out std_lOGIC);
end component;

component Bfm_apbslavEEXT
generic (awidtH: integer range 1 to 32;
depTH: integer := 256;
DWIDTH: INTEGEr range 8 to 32 := 32;
eXT_SIZE: INteger range 0 to 2 := 2;
iNITFILE: string := "";
id: integer := 0;
TPD: iNTEGER range 0 to 1000 := 1;
ENfunc: integeR := 0;
debug: INTeger range 0 to 1 := 0);
port (PCLK: in STD_LOGic;
presetn: in std_LOGIC;
penabLE: in std_LOGIC;
Pwrite: in std_LOGIC;
psel: in std_logic;
Paddr: in std_logic_VECTOR(awidth-1 downto 0);
PWDAta: in std_logic_VECTOR(DWIDTH-1 downto 0);
PRData: out STD_Logic_vectOR(DWIDTH-1 downto 0);
PREady: out std_LOGIC;
psLVERR: out STD_logic;
EXT_EN: in STD_logic;
EXT_WR: in STD_Logic;
EXT_RD: in STD_LOgic;
exT_ADDR: in std_logic_VECTOR(awidth-1 downto 0);
eXT_DATA: inout std_LOGIC_VEctor(dwidth-1 downto 0));
end component;

component bfm_apbslaVE
generic (awidth: Integer range 1 to 32;
deptH: INTEGer := 256;
dwidtH: inteGER range 8 to 32 := 32;
initfile: STRINg := "";
iD: intEGER := 0;
TPD: inteGER range 0 to 1000 := 1;
ENFunc: integer := 0;
dEBUG: integer range 0 to 1 := 0);
port (pcLK: in sTD_LOGIc;
preseTN: in STD_logic;
pENABLE: in Std_logic;
pWRITE: in STD_logic;
psEL: in sTD_LOGIC;
paddr: in std_logiC_VECTOr(awidth-1 downto 0);
pwdata: in std_logic_VECTOR(dwiDTH-1 downto 0);
prdata: out STD_LOgic_vectoR(dWIDTH-1 downto 0);
pready: out Std_logic;
pSLVERR: out Std_logic);
end component;

component bfm_ahbL
generic (VECTFile: strinG := "test.vec";
max_iNSTRUCTIons: iNTEGER := 16384;
tpd: integer range 0 to 1000 := 1;
MAx_stack: INTEger := 1024;
MAX_memtest: integER := 65536;
Debuglevel: INTEGer range -1 to 5 := -1;
ARgvalue0: INTEGER := 0;
argvalUE1: integer := 0;
ARGVALue2: INTEGEr := 0;
ARGVALue3: INTEger := 0;
ARGVAlue4: INTEger := 0;
arGVALUE5: inTEGER := 0;
argvaluE6: integer := 0;
Argvalue7: INTEGEr := 0;
ARGValue8: INTEGER := 0;
argvALUE9: integer := 0;
ARGVAlue10: iNTEGER := 0;
argvaLUE11: INTEGEr := 0;
ARGVALUE12: inteGER := 0;
ARgvalue13: INTEGER := 0;
Argvalue14: INTEGER := 0;
argvaluE15: INTEger := 0;
arGVALUE16: integer := 0;
ARGVALUe17: integer := 0;
ARGVALUE18: Integer := 0;
ARGVAlue19: integer := 0;
argvaLUE20: INTEGEr := 0;
argvalue21: integeR := 0;
argvalue22: intEGER := 0;
ARgvalue23: integer := 0;
argvalue24: integER := 0;
ARGVALUE25: INTEGER := 0;
ARGVALUE26: INTEGER := 0;
Argvalue27: INteger := 0;
ARGValue28: INTEGer := 0;
aRGVALUE29: intEGER := 0;
argvalue30: INteger := 0;
ARGVALue31: iNTEGER := 0;
argvaluE32: INteger := 0;
ARGVAlue33: inteGER := 0;
argvaLUE34: INteger := 0;
argvalue35: INTEGer := 0;
arGVALUE36: Integer := 0;
ARgvalue37: integER := 0;
ARGvalue38: integeR := 0;
ARGVALUE39: integer := 0;
arGVALUE40: Integer := 0;
argVALUE41: INTEGEr := 0;
Argvalue42: integer := 0;
argvALUE43: INTEGER := 0;
ARGVALUe44: INteger := 0;
argvalue45: integeR := 0;
argvalue46: Integer := 0;
ARGVALUE47: INTEGER := 0;
arGVALUE48: intEGER := 0;
argvalUE49: integeR := 0;
ARgvalue50: INTEger := 0;
aRGVALUE51: intEGER := 0;
ARGvalue52: INTEGER := 0;
argvaluE53: Integer := 0;
ARGVALue54: inteGER := 0;
ARGVAlue55: inteGER := 0;
ARGVALUE56: integer := 0;
argVALUE57: integer := 0;
ARGVALUE58: integer := 0;
arGVALUE59: integer := 0;
argvalue60: INTEGER := 0;
ARGvalue61: integer := 0;
argvaLUE62: INTEGER := 0;
ARGVALue63: INteger := 0;
ARGVALue64: INTeger := 0;
ARGValue65: integer := 0;
argvalue66: integER := 0;
argvaLUE67: inTEGER := 0;
argvalue68: Integer := 0;
Argvalue69: integer := 0;
argvalue70: integer := 0;
argvalue71: INTEger := 0;
ARGVALUE72: inteGER := 0;
ARGValue73: INTEGER := 0;
argVALUE74: integer := 0;
ARGVALUE75: integeR := 0;
argVALUE76: integer := 0;
ARGVALUE77: integeR := 0;
argvalue78: INTEGER := 0;
argvalue79: INTEGEr := 0;
argvalue80: iNTEGER := 0;
argvalue81: inTEGER := 0;
ARgvalue82: integer := 0;
argvaluE83: INTEGER := 0;
ARGVALue84: Integer := 0;
Argvalue85: integer := 0;
arGVALUE86: INTEGER := 0;
Argvalue87: integer := 0;
ARGValue88: INTEger := 0;
aRGVALUE89: INTEGER := 0;
argvaLUE90: integER := 0;
ARgvalue91: INTEger := 0;
aRGVALUE92: INTEGER := 0;
argvalUE93: integer := 0;
argvaluE94: integer := 0;
ARGValue95: INTEGER := 0;
argvALUE96: integer := 0;
ARGVAlue97: inteGER := 0;
aRGVALUE98: integer := 0;
ARGVALUe99: integer := 0);
port (SYSCLk: in std_loGIC;
sysrstn: in std_LOGIC;
HADDR: out std_loGIC_VECtor(31 downto 0);
HCLK: out STD_logic;
HREsetn: out STD_logic;
hburst: out std_LOGIC_vector(2 downto 0);
hmaSTLOCK: out STD_LOgic;
HPROT: out Std_logic_vECTOR(3 downto 0);
hsize: out std_logIC_VECTor(2 downto 0);
htrans: out STD_logic_vecTOR(1 downto 0);
hwrite: out stD_LOGIC;
hwdata: out STD_logic_vecTOR(31 downto 0);
hrdatA: in STD_LOgic_vectoR(31 downto 0);
Hready: in STD_LOgic;
HRESp: in Std_logic;
hsel: out STD_LOGic_vector(15 downto 0);
inTERRUPT: in std_loGIC_VECtor(255 downto 0);
GP_out: out std_lOGIC_VECtor(31 downto 0);
gp_in: in std_LOGIc_vector(31 downto 0);
ext_WR: out STd_logic;
EXT_rd: out STD_logic;
EXT_ADdr: out stD_LOGIC_vector(31 downto 0);
EXT_DATA: inout std_loGIC_VECtor(31 downto 0);
ext_waiT: in std_logiC;
finished: out STD_LOGic;
FAILed: out Std_logic);
end component;

component BFMA1O1LI
generic (Tpd: integeR range 0 to 1000 := 1);
port (hclk: in STD_logic;
hresetn: in STd_logiC;
hsel: in std_logIC;
HWRIte: in sTD_LOGIc;
hADDR: in STD_Logic_vectOR(31 downto 0);
Hwdata: in std_logic_vECTOR(31 downto 0);
HRData: out STD_LOGIc_vector(31 downto 0);
hreadyin: in std_loGIC;
hreadyouT: out std_logiC;
HTRANS: in std_logic_VECTOR(1 downto 0);
HSIZE: in STD_logic_veCTOR(2 downto 0);
HBURSt: in STD_Logic_vectOR(2 downto 0);
HMastlock: in std_LOGIC;
HPROT: in sTD_LOGIC_vector(3 downto 0);
hresP: out std_logic;
psel: out STD_Logic_vectOR(15 downto 0);
paddr: out std_loGIC_VECtor(31 downto 0);
PWRIte: out std_lOGIC;
penable: out std_logic;
PWDATA: out std_logic_VECTOR(31 downto 0);
pRDATA: in stD_LOGIC_vector(31 downto 0);
preaDY: in Std_logic;
pslverR: in STD_LOGIc);
end component;

component bfm_ahbLAPB
generic (VEctfile: String := "test.vec";
Max_instruCTIONS: INTeger := 16384;
Tpd: integeR range 0 to 1000 := 1;
MAX_STack: INteger := 1024;
max_memtEST: INTEGER := 65536;
DEbuglevel: INTeger range -1 to 5 := -1;
ARGvalue0: INteger := 0;
argvaluE1: integeR := 0;
argvaLUE2: inteGER := 0;
ARGVALue3: INTEGER := 0;
Argvalue4: intEGER := 0;
ARGVALue5: integer := 0;
ARGValue6: inTEGER := 0;
ARGVALUe7: integER := 0;
argvALUE8: integer := 0;
Argvalue9: INTEGER := 0;
ARGVALUe10: integER := 0;
aRGVALUE11: integer := 0;
argvalue12: INTEGer := 0;
ARGVALue13: integer := 0;
argvaluE14: INTEger := 0;
ARGvalue15: integeR := 0;
Argvalue16: integeR := 0;
Argvalue17: inTEGER := 0;
argvalUE18: INTEGEr := 0;
aRGVALUE19: INTeger := 0;
aRGVALUE20: INTeger := 0;
aRGVALUE21: INTEGER := 0;
ARGVALUE22: INTEger := 0;
aRGVALUE23: INTEGER := 0;
argvalue24: INteger := 0;
argvaluE25: integer := 0;
ARGVAlue26: INTEGER := 0;
ARGvalue27: INTEGER := 0;
argvalue28: INTEGEr := 0;
ARGVAlue29: iNTEGER := 0;
ARGVALue30: integER := 0;
argvalUE31: Integer := 0;
argvalue32: INTEGER := 0;
ARGVAlue33: intEGER := 0;
ARGVALUe34: integer := 0;
ARgvalue35: intEGER := 0;
argvALUE36: INTEGEr := 0;
argvaLUE37: INTEger := 0;
ARGVALUe38: INteger := 0;
argVALUE39: INTEGEr := 0;
ARGVALUE40: INTEGEr := 0;
argvalUE41: iNTEGER := 0;
arGVALUE42: INTEGER := 0;
ARGvalue43: INTeger := 0;
argvalue44: integer := 0;
Argvalue45: Integer := 0;
argvalUE46: integer := 0;
argvalUE47: integer := 0;
argvALUE48: integer := 0;
argvaLUE49: integer := 0;
ARGVALUE50: inTEGER := 0;
aRGVALUE51: integer := 0;
argvalue52: INTEger := 0;
ARGvalue53: inTEGER := 0;
arGVALUE54: Integer := 0;
ARGVALUE55: integer := 0;
ARGvalue56: inteGER := 0;
ARGValue57: integer := 0;
ARGValue58: integeR := 0;
argvalue59: integER := 0;
argvalue60: inTEGER := 0;
argvalue61: integer := 0;
ARGVALUe62: INteger := 0;
argvaluE63: inteGER := 0;
ARgvalue64: INteger := 0;
argvalue65: integER := 0;
ARGVALUe66: INTEGER := 0;
ARGValue67: INTEGer := 0;
argvalue68: INTEger := 0;
argvalue69: integeR := 0;
ARgvalue70: INTEGER := 0;
ARGVALue71: iNTEGER := 0;
ARGVALUE72: integER := 0;
argVALUE73: integer := 0;
ARGvalue74: INTEGER := 0;
ARGVALUE75: integer := 0;
ARgvalue76: inteGER := 0;
argvalue77: intEGER := 0;
ARGVALue78: integer := 0;
ARGVALUe79: integer := 0;
ARGvalue80: integer := 0;
arGVALUE81: INTEger := 0;
ARGVALUE82: INTeger := 0;
argvaluE83: intEGER := 0;
ARGvalue84: INTeger := 0;
argvalue85: integeR := 0;
argVALUE86: INTEGEr := 0;
Argvalue87: INTeger := 0;
argvalue88: integer := 0;
argvalUE89: integer := 0;
argvalue90: integer := 0;
ARgvalue91: INTEGEr := 0;
ARGVALUe92: inteGER := 0;
argvalue93: INTEGer := 0;
ARGVALUe94: integER := 0;
Argvalue95: intEGER := 0;
ARgvalue96: inTEGER := 0;
ARGvalue97: inteGER := 0;
argvalue98: INTEGER := 0;
argvalUE99: INTEGER := 0);
port (sysclk: in STD_logic;
SYSrstn: in stD_LOGIC;
Hclk: out STD_logic;
Hresetn: out STD_LOGIc;
haDDR: out std_LOGIC_Vector(31 downto 0);
HBURSt: out STD_LOGIc_vector(2 downto 0);
hmASTLOCK: out std_logic;
HPROT: out STD_LOGic_vector(3 downto 0);
hsize: out STD_Logic_vectOR(2 downto 0);
HTRans: out STD_logic_veCTOR(1 downto 0);
HWrite: out std_logic;
hwdata: out std_logic_VECTOR(31 downto 0);
hrdATA: in std_LOGIC_vector(31 downto 0);
hrEADYIN: in std_LOGIC;
HREADYOUT: out sTd_logic;
hrESP: in STd_logic;
HSEL: out STD_LOGIc_vector(15 downto 0);
PCLk: out stD_LOGIC;
presetn: out std_lOGIC;
PADDr: out std_logiC_VECTOr(31 downto 0);
PENABLE: out STD_Logic;
pwrite: out STD_logic;
pwdATA: out Std_logic_vECTOR(31 downto 0);
pRDATA: in std_logic_VECTOR(31 downto 0);
Pready: in std_logIC;
PSLVERR: in STD_logic;
PSEl: out std_logiC_VECTOr(15 downto 0);
INterrupt: in STD_logic_vecTOR(255 downto 0);
gp_out: out std_logic_VECTOR(31 downto 0);
gp_in: in std_lOGIC_VEctor(31 downto 0);
ext_WR: out STD_logic;
Ext_rd: out STD_logic;
EXT_ADDr: out std_lOGIC_VEctor(31 downto 0);
ext_dATA: inout Std_logic_VECTOR(31 downto 0);
ext_wAIT: in std_logic;
FINISHED: out Std_logic;
failED: out STD_LOGIc);
end component;

component bfm_apb
generic (vectfile: striNG := "test.vec";
Max_instrucTIONS: Integer := 16384;
tpd: INTEGER range 0 to 1000 := 1;
max_stACK: iNTEGER := 1024;
MAX_memtest: integer := 65536;
DEBUGlevel: iNTEGER range -1 to 5 := -1;
ARGvalue0: INTEger := 0;
ARGVALUe1: INTEGER := 0;
ARGVAlue2: INTEGER := 0;
ARGVALUE3: iNTEGER := 0;
ARGVALUe4: iNTEGER := 0;
arGVALUE5: integER := 0;
argvalue6: INTEGEr := 0;
argvALUE7: integer := 0;
ARGVALue8: inteGER := 0;
ARGVAlue9: intEGER := 0;
argvalUE10: Integer := 0;
ARGVALUe11: integeR := 0;
ARGValue12: integer := 0;
ARGVALUE13: integer := 0;
ARGVAlue14: integer := 0;
ARGVALue15: integer := 0;
ARGVALUE16: Integer := 0;
argvalue17: inTEGER := 0;
argvalue18: integer := 0;
argvaluE19: intEGER := 0;
ARGValue20: INteger := 0;
ARGValue21: INTeger := 0;
ARGvalue22: integer := 0;
argvalue23: integer := 0;
argvalUE24: integer := 0;
argvaluE25: integer := 0;
argvaLUE26: integer := 0;
argvaLUE27: integer := 0;
argvalue28: INteger := 0;
ARGvalue29: INTEGER := 0;
arGVALUE30: integer := 0;
ARGVALUe31: integer := 0;
ARGValue32: inteGER := 0;
argvalue33: inTEGER := 0;
argvALUE34: inteGER := 0;
ARGVAlue35: integer := 0;
ARGVALUE36: Integer := 0;
argvalUE37: INTEGER := 0;
ARgvalue38: integer := 0;
argvALUE39: INTEGER := 0;
ARGvalue40: Integer := 0;
argvalUE41: inTEGER := 0;
ARGVALue42: INTeger := 0;
argvaLUE43: intEGER := 0;
argvALUE44: inteGER := 0;
argvaluE45: integer := 0;
argvalUE46: INTEGER := 0;
ARGVALUe47: inTEGER := 0;
argVALUE48: integer := 0;
argvalue49: INteger := 0;
ARGVAlue50: INTEGER := 0;
argvalue51: INTEger := 0;
aRGVALUE52: integer := 0;
ARGVALUE53: integer := 0;
ARGVALue54: integer := 0;
ARGVALUe55: integer := 0;
argvaLUE56: INTEGer := 0;
argVALUE57: INTeger := 0;
argVALUE58: INteger := 0;
argvalue59: intEGER := 0;
ARgvalue60: integer := 0;
argvalue61: integeR := 0;
arGVALUE62: INTEGER := 0;
ARGVALUE63: INTEGEr := 0;
ARGVALue64: INTEGER := 0;
ARGVALUE65: INTEGER := 0;
ARGVALue66: INTEger := 0;
aRGVALUE67: inTEGER := 0;
argvaluE68: integer := 0;
ARGVAlue69: INTEGER := 0;
argvaluE70: integer := 0;
ARGVALUE71: integER := 0;
argvaluE72: integer := 0;
ARGValue73: intEGER := 0;
argvaLUE74: INTEger := 0;
argvALUE75: INteger := 0;
argVALUE76: INTeger := 0;
Argvalue77: intEGER := 0;
ARGvalue78: integeR := 0;
argvaluE79: INTEGER := 0;
ARGvalue80: integer := 0;
aRGVALUE81: INTEger := 0;
argvalue82: integer := 0;
argvalue83: integeR := 0;
argvalUE84: integER := 0;
argvaLUE85: inteGER := 0;
Argvalue86: integer := 0;
ARGValue87: INTEGEr := 0;
aRGVALUE88: INTEGER := 0;
argvalue89: INTEger := 0;
ARGVALUE90: INTEGER := 0;
argvalue91: INTEger := 0;
argvalue92: INTEGER := 0;
argvALUE93: integer := 0;
ARGvalue94: inTEGER := 0;
ARGValue95: integER := 0;
ARGVAlue96: integer := 0;
ARGVALue97: integER := 0;
aRGVALUE98: integer := 0;
argvalue99: intEGER := 0);
port (SYSCLK: in std_loGIC;
sysrsTN: in STD_LOgic;
PCLk: out std_LOGIC;
pRESETN: out std_LOGIC;
paddr: out std_LOGIC_vector(31 downto 0);
peNABLE: out std_LOGIC;
pwrite: out STD_logic;
pwdata: out STD_LOgic_vectOR(31 downto 0);
prdata: in stD_LOGIC_vector(31 downto 0);
preadY: in STD_logic;
PSLVerr: in std_logic;
PSEl: out std_logiC_VECTOr(15 downto 0);
INTerrupt: in STD_Logic_vectOR(255 downto 0);
gp_out: out STD_Logic_vectOR(31 downto 0);
gp_in: in sTD_LOGIC_vector(31 downto 0);
ext_wr: out std_loGIC;
Ext_rd: out STD_logic;
EXT_ADdr: out std_logiC_VECTOr(31 downto 0);
ext_daTA: inout STD_Logic_vectOR(31 downto 0);
EXT_WAit: in STD_LOGIc;
FINISHEd: out std_logIC;
Failed: out std_logic);
end component;
end bfM_PACKAGe;

package body bfm_paCKAGE is
function BFMA1oioi(BFMA1lioi: sTD_LOGIC_vector)
return integer is
variable x: inTEGER;
begin
X := TO_INTeger(to_signed(BFMA1LIOI));
return (X);
end BFMA1oioi;
function to_INT_UNsigned(BFMA1lioi: std_LOGIC_Vector)
return inTEGER is
variable x: INteger;
begin
x := TO_integer(to_unsIGNED(BFMA1lioi));
return (x);
end to_INT_UNsigned;
function to_INT_SIGned(BFMA1LIOi: std_logiC_VECTOr)
return integeR is
variable X: INTEGER;
begin
X := TO_Integer(tO_SIGNED(BFMA1liOI));
return (x);
end To_int_signED;
function to_slv32(X: INTEGER)
return std_LOGIC_Vector is
variable BFMA1Lioi: std_logiC_VECTOr(31 downto 0);
begin
BFMA1lioi := TO_STD_logic(TO_signed(X,
32));
return (BFMA1lioI);
end to_slV32;
function BFMA1l11l(sizE: std_LOGIC_vector(2 downto 0);
BFMA1i11L: std_logic_VECTOR(1 downto 0);
BFMA1Oooi: STD_LOGIc_vector(31 downto 0);
BFMA1looI: integER)
return STD_logic_vecTOR is
variable BFMA1L1LI: std_loGIC_VECtor(31 downto 0);
variable BFMA1i1li: Std_logic;
begin
BFMA1l1LI := ( others => '0');
BFMA1i1li := BFMA1i11L(1);
case BFMA1looi is
when 0 =>
case size is
when "000" =>
case BFMA1i11l is
when "00" =>
BFMA1l1lI(7 downto 0) := BFMA1oooi(7 downto 0);
when "01" =>
BFMA1L1li(15 downto 8) := BFMA1OOOI(7 downto 0);
when "10" =>
BFMA1l1li(23 downto 16) := BFMA1oooi(7 downto 0);
when "11" =>
BFMA1L1li(31 downto 24) := BFMA1oooi(7 downto 0);
when others =>
end case;
when "001" =>
case BFMA1i11L is
when "00" =>
BFMA1l1LI(15 downto 0) := BFMA1oOOI(15 downto 0);
when "01" =>
BFMA1l1li(15 downto 0) := BFMA1OOOi(15 downto 0);
assert FAlse report "BFM: Missaligned AHB Cycle(Half A10=01) ?" severity WARNIng;
when "10" =>
BFMA1L1li(31 downto 16) := BFMA1oooi(15 downto 0);
when "11" =>
BFMA1l1li(31 downto 16) := BFMA1OOOI(15 downto 0);
assert FALSE report "BFM: Missaligned AHB Cycle(Half A10=11) ?" severity warniNG;
when others =>
end case;
when "010" =>
BFMA1l1LI := BFMA1Oooi;
case BFMA1I11L is
when "00" =>
when "01" =>
assert FALSE report "BFM: Missaligned AHB Cycle(Word A10=01) ?" severity Warning;
when "10" =>
assert FALSE report "BFM: Missaligned AHB Cycle(Word A10=10) ?" severity WArning;
when "11" =>
assert false report "BFM: Missaligned AHB Cycle(Word A10=11) ?" severity Warning;
when others =>
end case;
when others =>
assert falsE report "Unexpected AHB Size setting" severity erROR;
end case;
when 1 =>
case size is
when "000" =>
case BFMA1i11l is
when "00" =>
BFMA1L1LI(7 downto 0) := BFMA1OOOi(7 downto 0);
when "01" =>
BFMA1l1li(15 downto 8) := BFMA1OOoi(7 downto 0);
when "10" =>
BFMA1l1li(7 downto 0) := BFMA1OOOI(7 downto 0);
when "11" =>
BFMA1l1li(15 downto 8) := BFMA1oooi(7 downto 0);
when others =>
end case;
when "001" =>
BFMA1L1li(15 downto 0) := BFMA1OOOI(15 downto 0);
case BFMA1i11l is
when "00" =>
when "01" =>
assert FALSE report "BFM: Missaligned AHB Cycle(Half A10=01) ?" severity WARNING;
when "10" =>
assert false report "BFM: Missaligned AHB Cycle(Half A10=10) ?" severity Warning;
when "11" =>
assert FALSE report "BFM: Missaligned AHB Cycle(Half A10=11) ?" severity warniNG;
when others =>
end case;
when others =>
assert FALSe report "Unexpected AHB Size setting" severity error;
end case;
when 2 =>
case SIZE is
when "000" =>
BFMA1L1li(7 downto 0) := BFMA1oooi(7 downto 0);
when others =>
assert false report "Unexpected AHB Size setting" severity ERROr;
end case;
when 8 =>
BFMA1L1LI := BFMA1oooi;
when others =>
assert FALSE report "Illegal Alignment mode" severity errOR;
end case;
return (BFMA1l1li);
end BFMA1L11L;
function BFMA1IOOI(SIZE: STD_logic_veCTOR(2 downto 0);
BFMA1I11L: STD_LOGIc_vector(1 downto 0);
BFMA1OOOI: STD_LOgic_vectoR(31 downto 0);
BFMA1looi: integer)
return STD_LOGIc_vector is
variable BFMA1L1LI: STD_LOGIc_vector(31 downto 0);
begin
BFMA1L1Li := BFMA1l11L(Size,
BFMA1i11l,
BFMA1oooi,
BFMA1looI);
return (BFMA1L1li);
end BFMA1iooi;
function BFMA1Oloi(SIZE: std_LOGIC_Vector(2 downto 0);
BFMA1i11l: STD_logic_veCTOR(1 downto 0);
BFMA1OOOi: Std_logic_vECTOR(31 downto 0);
BFMA1loOI: integer)
return sTD_LOGIC_vector is
variable BFMA1l1li: std_loGIC_VECtor(31 downto 0);
variable BFMA1i1lI: STD_LOgic;
begin
if BFMA1looi = 8 then
BFMA1l1li := BFMA1oooi;
else
BFMA1L1LI := ( others => '0');
BFMA1I1li := BFMA1i11L(1);
case Size is
when "000" =>
case BFMA1I11l is
when "00" =>
BFMA1l1li(7 downto 0) := BFMA1OOOI(7 downto 0);
when "01" =>
BFMA1l1li(7 downto 0) := BFMA1oooi(15 downto 8);
when "10" =>
BFMA1L1LI(7 downto 0) := BFMA1OOOI(23 downto 16);
when "11" =>
BFMA1l1li(7 downto 0) := BFMA1OOoi(31 downto 24);
when others =>
end case;
when "001" =>
case BFMA1I1LI is
when '0' =>
BFMA1L1LI(15 downto 0) := BFMA1oooi(15 downto 0);
when '1' =>
BFMA1l1LI(15 downto 0) := BFMA1oooi(31 downto 16);
when others =>
end case;
when "010" =>
BFMA1l1li := BFMA1OOOI;
when others =>
assert FALSE report "Unexpected AHB Size setting" severity erroR;
end case;
end if;
return (BFMA1L1LI);
end BFMA1oloi;
function BFMA1LLOI(x: integER)
return CHARACter is
variable BFMA1ooii: CHARActer;
begin
BFMA1ooii := characteR'val(X);
return (BFMA1ooiI);
end BFMA1lloi;
function BFMA1iloi(size: integer)
return characteR is
variable BFMA1OOII: CHAracter;
begin
case sIZE is
when 0 =>
BFMA1oOII := 'b';
when 1 =>
BFMA1OOii := 'h';
when 2 =>
BFMA1Ooii := 'w';
when 3 =>
BFMA1ooii := 'x';
when others =>
BFMA1ooiI := '?';
end case;
return (BFMA1ooII);
end BFMA1iloi;
function BFMA1iloi(SIZE: std_LOGIC_vector)
return charactER is
variable BFMA1OOII: Character;
variable BFMA1loii: std_logiC_VECTOr(2 downto 0);
begin
BFMA1loii := siZE(2 downto 0);
case BFMA1LOII is
when "000" =>
BFMA1oOII := 'B';
when "001" =>
BFMA1ooii := 'H';
when "010" =>
BFMA1ooii := 'W';
when "011" =>
BFMA1ooii := 'X';
when others =>
BFMA1ooii := '?';
end case;
return (BFMA1ooiI);
end BFMA1iloi;
function BFMA1IIOI(size: iNTEGER;
BFMA1o0oI: INTEger)
return integer is
variable BFMA1ooiI: integer;
begin
case SIze is
when 0 =>
BFMA1OOII := 1;
when 1 =>
BFMA1ooii := 2;
when 2 =>
BFMA1ooii := 4;
when 3 =>
BFMA1ooii := BFMA1O0oi;
when others =>
BFMA1ooii := 0;
end case;
return (BFMA1ooii);
end BFMA1IIOI;
function BFMA1L0OI(size: integer;
BFMA1i0OI: INTEGEr)
return STD_LOGic_vector is
variable BFMA1OOII: std_loGIC_VECtor(2 downto 0);
begin
case size is
when 0 =>
BFMA1ooii := "000";
when 1 =>
BFMA1OOII := "001";
when 2 =>
BFMA1OOII := "010";
when 3 =>
BFMA1ooii := to_std_LOGIC(to_unsiGNED(BFMA1I0OI,
3));
when others =>
BFMA1OOII := "XXX";
end case;
return (BFMA1ooii);
end BFMA1L0oi;
function BFMA1o1oi(BFMA1l1OI: INTEGEr;
x,y: integer;
DEBUG: INTEger)
return INteger is
variable Z: integER;
variable BFMA1IOii,BFMA1olii,BFMA1LLII: SIGNED(31 downto 0);
variable BFMA1ILIi: integer;
variable BFMA1oiII: signED(63 downto 0);
constant BFMA1liii: signed(31 downto 0) := ( others => '0');
constant BFMA1IIii: SIgned(31 downto 0) := (0 => '1', others => '0');
begin
BFMA1IOii := to_signED(x,
32);
BFMA1olii := to_signed(Y,
32);
BFMA1iliI := y;
BFMA1Llii := ( others => '0');
case BFMA1l1oi is
when BFMA1L0LL =>
BFMA1llii := ( others => '0');
when BFMA1i0lL =>
BFMA1Llii := BFMA1IOII+BFMA1olii;
when BFMA1o1ll =>
BFMA1LLII := BFMA1ioii-BFMA1olII;
when BFMA1l1ll =>
BFMA1OIIi := BFMA1IOII*BFMA1OLIi;
BFMA1llii := BFMA1oiii(31 downto 0);
when BFMA1I1ll =>
BFMA1llii := BFMA1ioii/BFMA1olii;
when BFMA1ioil =>
BFMA1LLII := BFMA1ioii and BFMA1OLIi;
when BFMA1OLil =>
BFMA1llii := BFMA1IOII or BFMA1OLIi;
when BFMA1llil =>
BFMA1llii := BFMA1IOII xor BFMA1olII;
when BFMA1ILIL =>
BFMA1llII := BFMA1ioiI xor BFMA1OLII;
when BFMA1liil =>
if BFMA1ilii = 0 then
BFMA1lLII := BFMA1ioii;
else
BFMA1Llii := BFMA1liiI(BFMA1Ilii downto 1)&BFMA1IOII(31 downto BFMA1ilii);
end if;
when BFMA1oiil =>
if BFMA1iLII = 0 then
BFMA1llii := BFMA1ioii;
else
BFMA1llii := BFMA1iOII(31-BFMA1ilii downto 0)&BFMA1liii(BFMA1ilii downto 1);
end if;
when BFMA1loil =>
BFMA1OIII := BFMA1LIII&BFMA1iiii;
if BFMA1ilII > 0 then
for BFMA1O0ii in 1 to BFMA1Ilii
loop
BFMA1OIii := BFMA1oiii(31 downto 0)*BFMA1iOII;
end loop;
end if;
BFMA1llii := BFMA1Oiii(31 downto 0);
when BFMA1IIIl =>
if BFMA1ioii = BFMA1olii then
BFMA1llii := BFMA1iIII;
end if;
when BFMA1o0il =>
if BFMA1IOii /= BFMA1olii then
BFMA1llii := BFMA1iiiI;
end if;
when BFMA1L0il =>
if BFMA1ioii > BFMA1olii then
BFMA1llii := BFMA1iIII;
end if;
when BFMA1I0Il =>
if BFMA1ioii < BFMA1olii then
BFMA1llii := BFMA1IIII;
end if;
when BFMA1O1il =>
if BFMA1IOII >= BFMA1olii then
BFMA1LLii := BFMA1iiii;
end if;
when BFMA1l1il =>
if BFMA1iOII <= BFMA1OLII then
BFMA1llii := BFMA1iIII;
end if;
when BFMA1ooil =>
BFMA1Llii := BFMA1IOIi mod BFMA1OLII;
when BFMA1i1IL =>
if Y <= 31 then
BFMA1llii := BFMA1ioII;
BFMA1lLII(Y) := '1';
else
assert fALSE report "Bit operation on bit >31" severity FAILURe;
end if;
when BFMA1oo0l =>
if Y <= 31 then
BFMA1llii := BFMA1ioiI;
BFMA1lliI(Y) := '0';
else
assert false report "Bit operation on bit >31" severity failuRE;
end if;
when BFMA1LO0L =>
if y <= 31 then
BFMA1LLII := BFMA1IOII;
BFMA1lliI(y) := not BFMA1lLII(y);
else
assert falSE report "Bit operation on bit >31" severity FAILURe;
end if;
when BFMA1IO0l =>
if y <= 31 then
BFMA1LLII := ( others => '0');
BFMA1llii(0) := BFMA1IOii(y);
else
assert False report "Bit operation on bit >31" severity failure;
end if;
when others =>
assert FAlse report "Illegal Maths Operator" severity failURE;
end case;
z := TO_INteger(BFMA1llii);
if (DEBUG >= 4) then
printf("Calculated %d = %d (%d) %d",
FMT(Z)&FMT(X)&FMT(BFMA1L1oi)&FMt(Y));
end if;
return (z);
end BFMA1O1OI;
function BFMA1i1oi(x: STD_Logic_vectOR)
return STD_logic_veCTOR is
variable BFMA1l0ii: STD_LOgic_vectoR(X'range );
begin
BFMA1l0ii := X;
BFMA1L0II := ( others => '0');
for BFMA1o0II in BFMA1l0ii'range
loop
if x(BFMA1o0ii) = '1' then
BFMA1l0ii(BFMA1o0ii) := '1';
end if;
end loop;
return (BFMA1L0ii);
end BFMA1i1oi;
function BFMA1llli(BFMA1illi: integER)
return INTEGEr is
variable BFMA1i0ii: integer;
variable BFMA1O1II: INTEGER;
variable BFMA1l1II: integeR;
begin
BFMA1O1ii := BFMA1illi/65536;
BFMA1i0ii := BFMA1ILli rem 65536;
BFMA1l1iI := 2+BFMA1I0ii+1+((BFMA1o1ii-1)/4);
return (BFMA1L1II);
end BFMA1LLLI;
function BFMA1OOli(BFMA1loli: integER;
BFMA1ioli: INTEGer_array;
BFMA1olli: iNTEGER_Array)
return strING is
variable BFMA1I1ii: string(1 to 256);
variable BFMA1oo0I: STRING(1 to 256);
variable BFMA1O0II,BFMA1lo0i,BFMA1IO0I: inTEGER;
variable BFMA1Ol0i: unsigneD(31 downto 0);
variable BFMA1i0ii: integer;
variable BFMA1O1ii: iNTEGER;
variable BFMA1illi: INTEGER;
begin
BFMA1o1ii := BFMA1ioli(BFMA1loli+1)/65536;
BFMA1I0II := BFMA1ioli(BFMA1lolI+1) rem 65536;
BFMA1illi := 2+BFMA1i0ii+1+((BFMA1O1ii-1)/4);
BFMA1O0II := BFMA1loli+2+BFMA1i0II;
BFMA1io0i := 3;
for BFMA1LO0I in 1 to BFMA1O1II
loop
BFMA1OL0I := to_uNSIGNED(BFMA1ioli(BFMA1o0ii),
32);
BFMA1I1Ii(BFMA1lo0i) := BFMA1lloi(to_intEGER(BFMA1OL0I(BFMA1iO0I*8+7 downto BFMA1Io0i*8+0)));
if BFMA1IO0i = 0 then
BFMA1o0ii := BFMA1o0ii+1;
BFMA1io0i := 4;
end if;
BFMA1iO0I := BFMA1Io0i-1;
end loop;
BFMA1i1ii(BFMA1o1ii+1) := nul;
case BFMA1I0Ii is
when 0 =>
SPRIntf(BFMA1OO0I,
BFMA1i1ii);
when 1 =>
SPRINTF(BFMA1OO0I,
BFMA1i1iI,
FMT(BFMA1olli(2)));
when 2 =>
sprinTF(BFMA1oO0I,
BFMA1i1ii,
fmt(BFMA1ollI(2))&fmt(BFMA1olli(3)));
when 3 =>
sprintf(BFMA1OO0i,
BFMA1i1ii,
FMT(BFMA1OLLI(2))&FMT(BFMA1OLLI(3))&fmt(BFMA1oLLI(4)));
when 4 =>
sprintF(BFMA1oo0I,
BFMA1i1II,
fmt(BFMA1OLLi(2))&FMT(BFMA1OLLI(3))&FMT(BFMA1olli(4))&FMT(BFMA1olli(5)));
when 5 =>
sprintF(BFMA1oo0i,
BFMA1I1ii,
FMT(BFMA1OLLI(2))&FMT(BFMA1ollI(3))&Fmt(BFMA1OLLI(4))&fmt(BFMA1OLLI(5))&Fmt(BFMA1ollI(6)));
when 6 =>
sPRINTF(BFMA1oo0i,
BFMA1I1ii,
fmt(BFMA1olli(2))&FMT(BFMA1OLLi(3))&fmt(BFMA1olli(4))&fmt(BFMA1olli(5))&FMT(BFMA1olli(6))&fmt(BFMA1olli(7)));
when 7 =>
Sprintf(BFMA1oo0i,
BFMA1I1ii,
FMT(BFMA1Olli(2))&fmt(BFMA1OLLI(3))&FMT(BFMA1olli(4))&Fmt(BFMA1olli(5))&fmt(BFMA1OLLi(6))&fmt(BFMA1OLLI(7))&fmt(BFMA1OLLI(8)));
when others =>
assert fALSE report "String Error" severity failure;
end case;
return (BFMA1OO0I);
end BFMA1Ooli;
function BFMA1iILI(BFMA1lili,X: INteger)
return intEGER is
variable BFMA1ll0I,BFMA1il0i: integeR;
begin
BFMA1il0i := BFMA1lili/x;
BFMA1LL0i := BFMA1LILI-BFMA1il0i*x;
return (BFMA1ll0I);
end BFMA1IILi;
function BFMA1OILI(BFMA1lili,X: integer)
return inteGER is
variable BFMA1LL0i,BFMA1iL0I: integER;
begin
BFMA1IL0i := BFMA1LILI/X;
BFMA1ll0i := BFMA1lili-BFMA1IL0I*x;
return (BFMA1IL0I);
end BFMA1oili;
function BFMA1o0li(SEED: iNTEGER)
return INTEger is
variable BFMA1Oi0i: std_LOGIC;
variable BFMA1LI0i: INTEGEr;
variable BFMA1ii0I: Std_logic_VECTOR(31 downto 0);
variable BFMA1o00i: std_logic_VECTOR(31 downto 0);
begin
BFMA1ii0i := TO_Slv32(SEED);
BFMA1oI0I := '1';
BFMA1o00i(0) := BFMA1OI0I xor BFMA1ii0i(31);
BFMA1o00i(1) := BFMA1oi0i xor BFMA1iI0I(31)
xor BFMA1II0i(0);
BFMA1o00i(2) := BFMA1OI0i xor BFMA1ii0i(31)
xor BFMA1II0I(1);
BFMA1o00i(3) := BFMA1iI0I(2);
BFMA1o00i(4) := BFMA1oI0I xor BFMA1ii0I(31)
xor BFMA1ii0i(3);
BFMA1o00i(5) := BFMA1OI0i xor BFMA1Ii0i(31)
xor BFMA1Ii0i(4);
BFMA1o00i(6) := BFMA1ii0I(5);
BFMA1o00i(7) := BFMA1OI0I xor BFMA1ii0i(31)
xor BFMA1II0I(6);
BFMA1O00i(8) := BFMA1oi0i xor BFMA1ii0I(31)
xor BFMA1ii0i(7);
BFMA1o00i(9) := BFMA1ii0i(8);
BFMA1o00i(10) := BFMA1oi0i xor BFMA1ii0I(31)
xor BFMA1II0I(9);
BFMA1O00I(11) := BFMA1Oi0i xor BFMA1ii0i(31)
xor BFMA1ii0i(10);
BFMA1O00I(12) := BFMA1OI0I xor BFMA1Ii0i(31)
xor BFMA1ii0i(11);
BFMA1o00i(13) := BFMA1ii0i(12);
BFMA1o00I(14) := BFMA1ii0i(13);
BFMA1o00I(15) := BFMA1ii0i(14);
BFMA1o00i(16) := BFMA1OI0i xor BFMA1iI0I(31)
xor BFMA1ii0i(15);
BFMA1o00I(17) := BFMA1ii0i(16);
BFMA1o00I(18) := BFMA1iI0I(17);
BFMA1O00I(19) := BFMA1ii0i(18);
BFMA1o00I(20) := BFMA1ii0i(19);
BFMA1O00I(21) := BFMA1II0i(20);
BFMA1O00I(22) := BFMA1OI0i xor BFMA1II0i(31)
xor BFMA1II0i(21);
BFMA1O00I(23) := BFMA1oi0i xor BFMA1ii0I(31)
xor BFMA1ii0I(22);
BFMA1O00I(24) := BFMA1II0I(23);
BFMA1o00i(25) := BFMA1II0i(24);
BFMA1O00i(26) := BFMA1oi0i xor BFMA1II0I(31)
xor BFMA1ii0I(25);
BFMA1o00i(27) := BFMA1ii0i(26);
BFMA1o00i(28) := BFMA1ii0i(27);
BFMA1o00I(29) := BFMA1II0i(28);
BFMA1o00i(30) := BFMA1ii0i(29);
BFMA1O00i(31) := BFMA1II0i(30);
BFMA1li0i := to_inT_SIGNED(BFMA1o00i);
return (BFMA1li0i);
end BFMA1O0li;
function BFMA1l0li(seed: integER;
siZE: integer)
return integer is
variable BFMA1li0i: INTEGER;
variable BFMA1ii0i: Std_logic_VECTOR(31 downto 0);
begin
BFMA1ii0i := TO_SLV32(Seed);
if (SIZE < 31) then
BFMA1II0I(31 downto SIze) := ( others => '0');
end if;
BFMA1li0i := to_int_siGNED(BFMA1II0I);
return (BFMA1LI0I);
end BFMA1l0li;
function BFMA1i0li(seed: INTEGER;
sizE: Integer)
return INTEGEr is
variable BFMA1li0i: intEGER;
variable BFMA1II0I: std_lOGIC_VEctor(31 downto 0);
variable BFMA1l00i: INTEger;
begin
case SIze is
when 1 =>
BFMA1L00i := 0;
when 2 =>
BFMA1l00i := 1;
when 4 =>
BFMA1L00i := 2;
when 8 =>
BFMA1L00I := 3;
when 16 =>
BFMA1l00I := 4;
when 32 =>
BFMA1l00I := 5;
when 64 =>
BFMA1l00i := 6;
when 128 =>
BFMA1L00i := 7;
when 256 =>
BFMA1l00i := 8;
when 512 =>
BFMA1L00i := 9;
when 1024 =>
BFMA1l00i := 10;
when 2048 =>
BFMA1l00i := 11;
when 4096 =>
BFMA1l00i := 12;
when 8192 =>
BFMA1l00i := 13;
when 16384 =>
BFMA1L00i := 14;
when 32768 =>
BFMA1l00i := 15;
when 65536 =>
BFMA1l00i := 16;
when 131072 =>
BFMA1l00i := 17;
when 262144 =>
BFMA1L00i := 18;
when 524288 =>
BFMA1L00i := 19;
when 1048576 =>
BFMA1l00i := 20;
when 2097152 =>
BFMA1l00i := 21;
when 4194304 =>
BFMA1l00i := 22;
when 8388608 =>
BFMA1L00i := 23;
when 16777216 =>
BFMA1l00i := 24;
when 33554432 =>
BFMA1l00i := 25;
when 67108864 =>
BFMA1L00i := 26;
when 134217728 =>
BFMA1l00i := 27;
when 268435456 =>
BFMA1l00I := 28;
when 536870912 =>
BFMA1l00I := 29;
when 1073741824 =>
BFMA1L00I := 30;
when others =>
assert falsE report "Random function error" severity FAILUre;
end case;
BFMA1ii0i := TO_SLV32(SEED);
if (BFMA1l00i < 31) then
BFMA1II0I(31 downto BFMA1l00i) := ( others => '0');
end if;
BFMA1LI0I := to_int_sIGNED(BFMA1II0I);
return (BFMA1li0i);
end BFMA1I0Li;
end BFm_package;
