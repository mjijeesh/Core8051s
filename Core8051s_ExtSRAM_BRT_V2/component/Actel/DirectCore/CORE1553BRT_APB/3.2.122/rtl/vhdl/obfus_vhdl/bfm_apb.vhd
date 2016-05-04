-- Actel Corporation Proprietary and Confidential
-- Copyright 2008 Actel Corporation.  All rights reserved.
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
-- Revision Information:
-- SVN Revision Information:
-- SVN $Revision: 3562 $
-- SVN $Date: 2008-10-13 06:07:22 -0700 (Mon, 13 Oct 2008) $
use Std.textiO.all;
library ieEE;
use ieee.STD_loGIC_1164.all;
use ieeE.numeric_STD.all;
use WORk.BFm_package.all;
entity BFM_APB is
generic (OPMODe: integer range 0 to 2 := 0;
veCTFILE: strinG := "test.vec";
max_inSTRUCTIOns: Integer := 16384;
max_memTEST: INTEGER := 65536;
max_sTACK: inteGER := 1024;
tpd: integeR range 0 to 1000 := 1;
debuGLEVEL: INTEGer range -1 to 5 := -1;
ARGvalue0: INTEger := 0;
arGVALUE1: INTEGER := 0;
ARGVALUE2: inteGER := 0;
Argvalue3: INTEger := 0;
argvalue4: INTEGer := 0;
ARGVALUe5: inteGER := 0;
argvalue6: INTEGEr := 0;
argvaLUE7: INTEger := 0;
arGVALUE8: integer := 0;
ARGVAlue9: INTeger := 0;
ARGVALUe10: integer := 0;
argvaLUE11: INTEger := 0;
ARgvalue12: intEGER := 0;
argvalue13: integeR := 0;
aRGVALUE14: INTEger := 0;
argvalue15: inTEGER := 0;
ARGVALUE16: INteger := 0;
argvaLUE17: INTEGER := 0;
ARGVAlue18: INTEger := 0;
ARgvalue19: integeR := 0;
ARGValue20: INTEGEr := 0;
ARGvalue21: INTEGer := 0;
argvalue22: INTeger := 0;
ARGValue23: INTEGER := 0;
ARgvalue24: INTEGer := 0;
ARgvalue25: INTEGEr := 0;
ARGVALUe26: INTEGER := 0;
argvALUE27: integer := 0;
argvalue28: INTEGER := 0;
argvALUE29: INTEGER := 0;
aRGVALUE30: integer := 0;
argVALUE31: INTeger := 0;
ARGVALUE32: integer := 0;
argvaluE33: INTEGER := 0;
ARGValue34: integer := 0;
Argvalue35: integer := 0;
argvalue36: integeR := 0;
argvalUE37: intEGER := 0;
argvaLUE38: intEGER := 0;
argvalue39: integer := 0;
argvaluE40: integer := 0;
ARGVALue41: INTEGEr := 0;
argVALUE42: inteGER := 0;
argvalue43: INTEGer := 0;
ARGVALUE44: inteGER := 0;
Argvalue45: INTEGEr := 0;
ARGVALue46: INTEGER := 0;
argvalue47: INteger := 0;
ARGVALUe48: integeR := 0;
ARGVALUE49: integer := 0;
arGVALUE50: integer := 0;
argvaLUE51: INTEger := 0;
argvaluE52: INTEGEr := 0;
argVALUE53: Integer := 0;
argvALUE54: INTEGER := 0;
ARGVALUe55: Integer := 0;
Argvalue56: integer := 0;
Argvalue57: integer := 0;
argvalue58: integeR := 0;
argvaluE59: intEGER := 0;
arGVALUE60: INteger := 0;
Argvalue61: INteger := 0;
argvalue62: INTeger := 0;
arGVALUE63: iNTEGER := 0;
aRGVALUE64: inTEGER := 0;
argvalue65: INTEGer := 0;
argvaluE66: Integer := 0;
aRGVALUE67: integeR := 0;
ARGVALUE68: iNTEGER := 0;
argvalue69: INTEGer := 0;
argvalue70: INTEGEr := 0;
ARGvalue71: inteGER := 0;
argvaluE72: INTEGER := 0;
ARGvalue73: integeR := 0;
ARGVALUE74: INteger := 0;
ARGVALUe75: INteger := 0;
ARGValue76: integer := 0;
ARgvalue77: integer := 0;
Argvalue78: inteGER := 0;
argvalue79: integeR := 0;
ARGVALUE80: INTEGer := 0;
ARGVALue81: INteger := 0;
ARgvalue82: INTEger := 0;
ARGVALue83: INTEGER := 0;
argvaluE84: integer := 0;
ARGVALUe85: iNTEGER := 0;
argvalue86: INTeger := 0;
argvalUE87: integer := 0;
argvalUE88: INteger := 0;
argVALUE89: integer := 0;
arGVALUE90: integer := 0;
argvalUE91: INTEger := 0;
argvALUE92: integer := 0;
argvalUE93: INTEGer := 0;
argvalue94: INTEGER := 0;
ARGValue95: integeR := 0;
ARGVALUE96: Integer := 0;
ARgvalue97: integeR := 0;
argvalUE98: INTEGER := 0;
argVALUE99: INTEGER := 0); port (SYsclk: in STD_logic;
sysRSTN: in std_lOGIC;
pCLK: out STd_logic;
presetn: out STD_logic;
paddR: out STD_LOGIc_vector(31 downto 0);
PENABLE: out STD_LOGic;
pwrite: out STD_Logic;
pwdatA: out STD_logic_vecTOR(31 downto 0);
PRDATA: in stD_LOGIC_vector(31 downto 0);
PReady: in std_logic;
PSLVerr: in STD_logic;
psel: out STD_Logic_vectOR(15 downto 0);
Interrupt: in stD_LOGIC_vector(255 downto 0);
GP_Out: out std_LOGIC_VEctor(31 downto 0);
GP_In: in sTD_LOGIC_vector(31 downto 0);
ext_wr: out std_logIC;
EXT_rd: out STD_Logic;
EXT_Addr: out STD_logic_vecTOR(31 downto 0);
ext_data: inout std_loGIC_VECtor(31 downto 0);
ext_waiT: in Std_logic;
finished: out std_logiC;
FAIled: out STD_logic);
end BFM_apb;

architecture BFMA1i00I of BFM_APb is

signal BFMA1oOOLL: STD_logic;

signal BFMA1looll: std_LOGIC;

signal BFMA1IOoll: std_logic;

signal BFMA1ololl: STD_LOgic_vectOR(31 downto 0);

signal BFMA1lLOLL: Std_logic_vECTOR(2 downto 0);

signal BFMA1ILOLl: STD_logic;

signal BFMA1OIOLL: std_logic_vECTOR(3 downto 0);

signal BFMA1LIOLL: STD_logic_vecTOR(2 downto 0);

signal BFMA1iiOLL: std_LOGIC_vector(1 downto 0);

signal BFMA1o0oll: Std_logic;

signal BFMA1L0OLL: STD_LOGic_vector(31 downto 0);

signal BFMA1I0oll: STd_logic_veCTOR(31 downto 0);

signal BFMA1o1OLL: std_loGIC;

signal BFMA1l1oll: STD_logic;

signal BFMA1i1oll: STD_LOGIc;

signal BFMA1oolll: STD_Logic;

signal BFMA1lolll: std_LOGIC_vector(15 downto 0);

signal instr_IN: STD_LOgic_vectoR(31 downto 0) := ( others => '0');

signal BFMA1lilll: STD_logic;

begin
BFMA1LILLl <= '1';
BFMA1O10Ol: BFM_MAIN
generic map (Vectfile => vectfile,
maX_INSTRuctions => maX_INSTRUctions,
max_STACK => MAX_STAck,
Max_memtest => mAX_MEMTest,
dEBUGLEVEL => debuglevel,
ARGVALue0 => argvalue0,
ARGValue1 => argvALUE1,
argvalue2 => ARgvalue2,
argVALUE3 => argvaluE3,
ARGVALUe4 => ARGVALUe4,
Argvalue5 => aRGVALUE5,
ARGvalue6 => Argvalue6,
ARGValue7 => ARGVALUE7,
ARGvalue8 => ARGvalue8,
ARgvalue9 => ARGVALue9,
ARGVALUE10 => ARGVALue10,
ARGvalue11 => ARGVALue11,
ARGVAlue12 => ARGVALUe12,
ARgvalue13 => ARGVAlue13,
ARGVALue14 => ARGVALUE14,
ARGValue15 => ARGVALue15,
ARGVALUe16 => argvalue16,
argvalUE17 => argvalue17,
argvalue18 => ARGVAlue18,
arGVALUE19 => argvaluE19,
Argvalue20 => argvaluE20,
argvALUE21 => argvalue21,
ARGVALue22 => Argvalue22,
aRGVALUE23 => Argvalue23,
ARGVAlue24 => Argvalue24,
ARGVALUe25 => Argvalue25,
argvALUE26 => ARGVAlue26,
argvaLUE27 => argVALUE27,
ARGVALue28 => argvalue28,
argvaLUE29 => ARGVALUe29,
argvaluE30 => ARGVALUE30,
ARgvalue31 => ARgvalue31,
argvaluE32 => argvalUE32,
aRGVALUE33 => argVALUE33,
ARGVALUe34 => argvALUE34,
arGVALUE35 => argVALUE35,
ARGVALUe36 => aRGVALUE36,
ARGVAlue37 => argVALUE37,
argVALUE38 => argvalue38,
ARGValue39 => argvaLUE39,
argvalue40 => ARGVAlue40,
ARGVALue41 => Argvalue41,
argvalUE42 => ARgvalue42,
ARGVALUe43 => argvalue43,
ARGvalue44 => argvalue44,
ARGVAlue45 => ARGValue45,
argvALUE46 => ARGVAlue46,
argvaLUE47 => arGVALUE47,
ARGvalue48 => ARgvalue48,
argVALUE49 => argvalue49,
ARGvalue50 => ARGVALue50,
argvalue51 => Argvalue51,
argvaLUE52 => argvalue52,
argvaLUE53 => argvalUE53,
arGVALUE54 => argvaluE54,
argvalUE55 => argvaluE55,
argVALUE56 => argvalUE56,
ARgvalue57 => argvALUE57,
arGVALUE58 => argvalUE58,
argvaLUE59 => ARgvalue59,
ARgvalue60 => ARGVALUE60,
aRGVALUE61 => Argvalue61,
ARGVAlue62 => argvalue62,
ARgvalue63 => argvalUE63,
Argvalue64 => ARGVALue64,
ARGVALUE65 => ARgvalue65,
aRGVALUE66 => ARGVAlue66,
argVALUE67 => aRGVALUE67,
argvalue68 => argvaluE68,
ARgvalue69 => Argvalue69,
argvALUE70 => arGVALUE70,
ARgvalue71 => ARGValue71,
argvalUE72 => ARGvalue72,
argvalUE73 => argvalue73,
argvALUE74 => argvalue74,
argvaluE75 => argvalue75,
argvalue76 => ARGVALue76,
ARGvalue77 => aRGVALUE77,
ARGVAlue78 => argvalUE78,
argvaLUE79 => ARgvalue79,
argvalue80 => Argvalue80,
ARGVALUE81 => argvaluE81,
argvalUE82 => ARGvalue82,
ARGVALUe83 => argvalue83,
ARgvalue84 => argvALUE84,
argvaLUE85 => ARGVALue85,
aRGVALUE86 => Argvalue86,
ARGVALUE87 => argvaLUE87,
argvaluE88 => argvalue88,
ARGValue89 => argvalue89,
ARGVALUE90 => ARGVALUE90,
argvalue91 => argvaluE91,
ARGVAlue92 => ARGVALue92,
argvalue93 => Argvalue93,
arGVALUE94 => arGVALUE94,
ARGvalue95 => ARGVALue95,
Argvalue96 => ARGValue96,
argvalue97 => argvaLUE97,
aRGVALUE98 => argvaLUE98,
argVALUE99 => argvaluE99)
port map (SYSCLK => sysclk,
sysrstN => sYSRSTN,
haddR => BFMA1OLOLL,
Hclk => BFMA1looll,
PCLK => BFMA1OOoll,
hRESETN => BFMA1iooll,
HBURSt => BFMA1lloll,
HMASTlock => BFMA1iLOLL,
hprot => BFMA1oioll,
hsIZE => BFMA1lioll,
HTRANs => BFMA1IIOLL,
hwrite => BFMA1o0OLL,
HWdata => BFMA1I0oll,
hrdata => BFMA1L0oll,
hready => BFMA1o1oll,
hresp => BFMA1OOLLL,
HSel => BFMA1lollL,
INTERRUPT => inteRRUPT,
GP_OUT => Gp_out,
GP_In => gp_in,
Ext_wr => ext_wr,
Ext_rd => EXt_rd,
Ext_addr => exT_ADDR,
ext_daTA => EXT_DATa,
EXT_Wait => ext_wait,
INStr_out => open ,
Instr_in => instr_in,
FINISHED => FINIshed,
faiLED => failed);
PCLK <= BFMA1OOOLL;
presETN <= BFMA1iooll;
BFMA1oiLLL: BFMA1o1li
generic map (TPD => Tpd)
port map (HCLK => BFMA1LOOLl,
HRESEtn => BFMA1iooll,
hseL => BFMA1lilll,
hwriTE => BFMA1O0oll,
HADDr => BFMA1OLOLL,
HWdata => BFMA1i0oll,
HRDATA => BFMA1l0oll,
HREADYIN => BFMA1o1olL,
HREAdyout => BFMA1O1OLL,
HTRANs => BFMA1iiolL,
HSIZE => BFMA1lioll,
Hburst => BFMA1lloll,
hmastlOCK => BFMA1iloll,
HProt => BFMA1oioll,
HRESp => BFMA1oolll,
PSEL => psel,
pADDR => paddr,
PWRITE => pWRITE,
Penable => PENABLE,
pwdata => PWDATA,
pRDATA => prdata,
prEADY => pready,
pslVERR => pslverR);
end BFMA1I00I;
