library IEEE;
use IEEE.std_logic_1164.all;
entity CoRTEXM1BFM is
port (HCLK: in STD_logic;
SYSRESETn: in std_logiC;
IRQ: in std_logiC_VECTOr(31 downto 0);
NMI: in STD_Logic;
HREADY: in std_logic;
HRESP: in std_loGIC;
HRDATA: in std_LOGIC_Vector(31 downto 0);
SYSRESETREQ: out std_loGIC;
LOCKUP: out std_LOGIC;
HTRANS: out stD_LOGIC_vector(1 downto 0);
HBURST: out STD_Logic_vectoR(2 downto 0);
HPROT: out sTD_LOGIc_vector(3 downto 0);
HSIZE: out std_logic_VECTOR(2 downto 0);
HWRITE: out STD_LOGic;
HMASTLOCK: out std_loGIC;
HADDR: out std_logic_VECTOR(31 downto 0);
HWDATA: out STD_logic_vecTOR(31 downto 0);
DBGRESETn: in std_LOGIC;
EDBGRQ: in std_logic;
NTRST: in STD_logic;
SWCLKTCK: in std_logic;
SWDITMS: in Std_logic;
TDI: in STD_Logic;
JTAGNSW: out std_logic;
JTAGTOP: out STd_logic;
TDO: out stD_LOGIC;
nTDOEN: out STd_logic;
SWDO: out std_logic;
SWDOEN: out STD_LOGIc;
HALTED: out STD_logic);
end CortexM1BFM;

library Ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_UNSIGNEd. "-";
use IEEE.STD_logic_unsIGNED. "+";
use ieeE.nuMERIC_STd.all;
use Work.NUMERic_std_adDITIONS.all;
use std.tEXTIO.all;
use work.standard_TEXTIO_Additions.all;
use WORK.io_utils.all;
architecture BFM_o of CorTEXM1BFM is

constant bfM_L: TIme := 1 NS;

constant bfm_i: STd_logic_veCTOR(1 downto 0) := "00";

constant bfm_OL: std_logic_VECTOR(1 downto 0) := "01";

constant bfm_ll: STD_logic_vecTOR(1 downto 0) := "10";

constant BFm_il: STD_LOgic_vectoR(1 downto 0) := "11";

constant bfm_oi: std_LOGIC_Vector(1 downto 0) := "00";

constant BFM_Li: STD_LOGic_vector(1 downto 0) := "01";

constant bfm_ii: STD_logic_vectOR(1 downto 0) := "10";

constant bfm_o0: integer := 1023;

constant BFM_L0: inteGER := 20;

type bFM_I0 is (bfm_o1,bfm_l1,bfm_i1,Bfm_ool,bFM_LOL);

type bfm_iol is (bfm_oll,BFm_lll,BFM_ILL);

type bfm_OIL is (bfm_lil,bfm_iIL,Bfm_o0l,BFM_l0l);

type Bfm_i0l is array (0 to Bfm_o0) of std_logic_VECTOR(31 downto 0);

type BFM_o1l is array (0 to bfm_o0) of Std_logic;

type bfm_l1l is array (0 to bfm_o0) of std_loGIC_VECTor(21 downto 0);

type BFM_i1l is array (0 to bfM_O0) of STD_LOgic_vector(1 downto 0);

signal BFm_ooi: STD_logic := '0';

signal Bfm_loi: STd_logic := '0';

signal bfm_IOI: std_logic := '0';

signal bfM_OLI: std_logIC_VECTOr(31 downto 0);

signal bfm_lli: STd_logic_veCTOR(1 downto 0);

signal BFM_ili: STD_LOgic_vector(1 downto 0);

signal BFM_OIi: stD_LOGIC_vector(31 downto 0);

signal bfm_lii: std_logic;

signal BFM_iii: STd_logic_veCTOR(31 downto 0);

signal BFM_O0I: std_LOGIC_Vector(1 downto 0);

signal bfm_l0I: Std_logic_vECTOR(1 downto 0);

signal bfm_i0I: std_logic_VECTOR(31 downto 0);

signal Bfm_o1i: STd_logic;

signal BFM_l1i: BFM_L1l;

signal bfm_I1I: bfm_o1L;

signal BFM_OO0: bFM_O1L;

signal bfm_LO0: bfM_O1L;

signal BFM_io0: BFM_o1l;

signal bFM_OL0: bfm_O1L;

signal BFM_LL0: bFM_I1L;

signal bfm_il0: bfm_i0l;

signal BFM_oi0: BFM_O1l;

signal BFM_LI0: bfM_I1L;

signal BFM_ii0: BFM_I0l;

signal bFM_O00: stD_LOGIC;

signal BFm_l00: STD_logic;

signal bfm_I00: std_loGIC;

signal BFM_O10: STD_LOgic;

signal bfm_L10: integer;

signal bfm_i10: std_logic;

signal bfm_oO1: std_logic_VECTOR(31 downto 0);

signal BFM_lo1: STD_LOGIc_vector(1 downto 0);

signal bfm_IO1: Std_logic_VECTOR(1 downto 0);

signal BFM_Ol1: stD_LOGIC_vector(31 downto 0);

signal bFM_LL1: integER;

signal bFM_IL1: std_LOGIC_VEctor(1 downto 0);

signal bfm_oi1: STD_logic_vecTOR(1 downto 0);

signal bfm_li1: STD_logic_vecTOR(31 downto 0);

signal Bfm_ii1: STD_Logic_vectOR(31 downto 0);

signal bfm_o01: std_logic;

signal BFM_L01: Unsigned(31 downto 0);

signal bfm_i01: BFM_i0;

signal BFM_o11: bfm_I0;

signal BFM_L11: stD_LOGIC_vector(21 downto 0);

signal bfm_i11: Std_logic;

signal bfm_OOOL: std_loGIC;

signal BFM_Lool: STD_logic;

signal bfm_iooL: std_logic;

signal Bfm_olol: Std_logic;

signal BFM_llol: bfm_iOL;

signal BFM_ILOl: BFm_iol;

signal BFM_oiol: STD_Logic_vectoR(1 downto 0);

signal bfm_lioL: std_logic_VECTOR(31 downto 0);

signal BFM_iiol: STd_logic;

signal bfm_o0ol: Std_logic_VECTOR(1 downto 0);

signal BFM_l0ol: STd_logic;

signal BFM_i0ol: STD_LOgic;

signal BFM_o1ol: STD_Logic;

signal bfm_l1ol: Std_logic;

signal BFM_I1ol: STD_LOGic_vector(31 downto 0);

signal bfM_OOLL: STD_LOGIc;

signal BFM_LOll: STD_LOGIc_vector(1 downto 0);

signal bfm_IOLL: std_logiC_VECTOR(1 downto 0);

signal BFM_OLLl: bfm_oiL;

signal BFM_LLLL: Bfm_oil;

signal bFM_ILLL: std_LOGIC;

signal bfm_oill: STD_logic;

signal bfm_lILL: std_logiC_VECTOR(31 downto 0);

signal bfm_iill: STD_logic_vecTOR(31 downto 0);

signal BFM_o0ll: STD_LOGic_vector(8 downto 0);

signal bfm_l0lL: std_LOGIC;

signal BFM_I0ll: STD_logic;

signal bFM_O1LL: STD_LOGic;

signal bfM_L1LL: sTD_LOGIC;

signal bFM_I1LL: sTD_LOGIC;

signal bfM_OOIL: stD_LOGIC;

signal bfm_loil: STd_logic;

signal BFM_IOIL: sTD_LOGIC;

signal bfm_oLIL: std_logic;

signal bfM_LLIL: sTD_LOGIC;

signal bfm_ilil: STd_logic;

signal BFM_OIil: STD_Logic;

signal bfm_liil: STD_logic;

signal BFm_iiil: STD_logic;

signal BFM_O0Il: sTD_LOGIC;

signal BFM_L0il: STD_LOGIc;

component bfm_i0il
generic (BFM_O1Il: INTeger := 1);
port (HCLK: in Std_logic;
SYSRESETn: in std_logic;
bfm_l1il: in Std_logic_VECTOR(31 downto 0);
HRDATA: in std_lOGIC_VECtor(31 downto 0);
HREADY: in STD_Logic;
HRESP: in STD_LOGic_vector(1 downto 0);
bfm_i1il: in std_LOGIC;
bFM_OO0L: in std_logIC_VECTOr(1 downto 0);
sizE: in std_loGIC_VECTor(1 downto 0);
bfM_LO0L: in STD_LOgic_vector(1 downto 0);
BFM_io0l: in std_LOGIC_VEctor(31 downto 0);
WRITe: in STD_LOgic;
Bfm_ol0l: out std_lOGIC;
BFm_ll0l: out Std_logic;
HADDR: out STD_LOGic_vector(31 downto 0);
HBURST: out STD_LOgic_vector(2 downto 0);
Bfm_il0l: out Std_logic;
HPROT: out std_logIC_VECTOr(3 downto 0);
HSIZE: out std_LOGIC_VEctor(2 downto 0);
HTRANS: out sTD_LOGIC_vector(1 downto 0);
HWDATA: out std_logic_VECTOR(31 downto 0);
HWRITE: out std_LOGIC;
BFM_oi0l: out stD_LOGIC_vector(31 downto 0));
end component;

signal bfm_L1IL: std_logic_VECTOR(31 downto 0);

signal bfm_lI0L: std_lOGIC_VECtor(1 downto 0);

signal bfm_oo0l: STD_LOgic_vectoR(1 downto 0);

signal SIZE: STD_Logic_vectOR(1 downto 0);

signal BFM_Lo0l: stD_LOGIC_vector(1 downto 0);

signal BFM_I1il: sTD_LOGIc;

signal write: sTD_LOGIC;

signal bfm_ol0l: STD_LOgic;

signal bfm_iI0L: stD_LOGIC;

signal bfm_LL0L: STD_logic;

signal bfm_o00l: Std_logic;

signal BFM_IO0l: std_logiC_VECTOr(31 downto 0);

signal Bfm_oi0l: sTD_LOGIC_vector(31 downto 0);

begin
Bfm_li0l <= '0'&HRESP;
LOCKUP <= '0';
SYSRESETREQ <= '0';
JTAGNSW <= '0';
JTAGTOP <= '0';
TDO <= '0';
NTDOEN <= '0';
SWDO <= '0';
SWDOEN <= '0';
HALTED <= '0';
BFM_L00l: bfm_i0il
generic map (BFM_O1il => 1)
port map (HCLK => HCLK,
SYSRESETN => SYSRESETn,
bfm_l1il => bfm_l1IL,
HRDATA => HRDATA,
HREADY => HREADY,
HRESP => bfm_li0l,
bfm_i1il => BFM_i1il,
BFm_oo0l => BFM_OO0l,
SIZe => size,
bfm_lo0l => BFM_LO0l,
Bfm_io0l => BFM_io0l,
Write => WRITE,
Bfm_ol0l => BFM_ol0l,
BFM_ll0l => bfm_ll0L,
HADDR => HADDR,
HBURST => HBURST,
bfm_il0l => HMASTLOCK,
HPROT => HPROT,
HSIZE => HSIZE,
HTRANS => HTRANS,
HWDATA => HWDATA,
HWRITE => HWRITE,
bfm_OI0L => bfm_oi0l);
process (HCLK)
begin
if (HCLK'EVent and HCLK = '1') then
bFM_O1I <= bfm_lii;
bfm_iii <= bfm_OLI;
bFM_O0I <= Bfm_lli;
bfm_l0i <= bfm_ILI;
bFM_I0I <= BFm_oii;
end if;
end process;
WRITe <= BFm_o1i;
bfm_l1il <= bfm_iii;
siZE <= bfm_o0i;
bfm_lo0l <= bfm_l0i;
bfm_io0L <= bfm_i0i;
bfm_I00L:
process
file BFM_O10l: Text is in "transAddr.vec";
file bfm_L10L: text is in "transData.vec";
file bFM_I10L: text is in "transInstr.vec";
file BFM_oo1l: TEXT is in "numErrors.vec";
file bfM_LO1L: text is in "numTrans.vec";
variable L: line;
variable bFM_IO1L: intEGER := 0;
variable x: BIt_vector(31 downto 0);
variable BFM_ol1l: STD_logic_vecTOR(31 downto 0);
variable Y: STD_logic_vecTOR(31 downto 0);
variable BFM_LL1l: sTD_LOGIC_vector(31 downto 0);
begin
while not ENDFILe(bfm_o10L)
loop
READLINE(BFM_o10l,
l);
hread(L,
x);
Bfm_il0(BFM_Io1l) <= to_stdlogICVECTOR(x);
bfm_io1l := BFM_IO1l+1;
end loop;
BFM_IO1l := 0;
while not endfile(bfM_L10L)
loop
rEADLINE(BFM_L10l,
L);
hREAD(L,
x);
bfm_II0(bfm_io1L) <= To_stdlogiCVECTOR(X);
bfm_io1l := bfm_io1l+1;
end loop;
BFm_io1l := 0;
while not eNDFILE(bfm_i10l)
loop
reADLINE(BFM_I10l,
L);
Hread(l,
x);
BFm_ll1l := To_stdlogicVECTOR(X);
BFM_li0(bfm_IO1L) <= Bfm_ll1l(1 downto 0);
bFM_OI0(bfm_io1L) <= BFM_LL1l(2);
bfm_LL0(BFM_io1l) <= bfm_LL1L(4 downto 3);
bfm_OL0(bfm_io1l) <= bfM_LL1L(5);
bfm_io0(BFM_io1l) <= bFM_LL1L(6);
bFM_LO0(bfm_io1l) <= bFM_LL1L(7);
bfm_oo0(BFM_Io1l) <= bfm_ll1L(8);
BFM_i1i(bfM_IO1L) <= BFM_ll1l(9);
BFM_L1I(bfm_iO1L) <= BFM_ll1l(31 downto 10);
BFM_io1l := bfm_io1l+1;
end loop;
REAdline(Bfm_lo1l,
l);
HREAD(L,
X);
Y := to_stdloGICVECTOR(x);
BFM_L01 <= UNsigned(y);
Readline(bfm_oo1l,
l);
hREAD(l,
x);
Bfm_ol1l := TO_stdlogicveCTOR(x);
if (bfm_oL1L > X"00000000") then
wRITE_STring(l,
"CortexM1 BFM script compiler encountered "&TO_hstring(unsigned(BFM_OL1l))&" error(s)");
WRITELIne(outPUT,
l);
writE_STRINg(L,
"Please fix BFM script and re-run simulation");
writelINE(OUTPUt,
L);
assert (fALSE) report " - see bfmCompile.log for details of BFM script errors" severity Failure;
end if;
wait;
end process;
BFm_il1l:
process
begin
wait until Bfm_iiol'EVENT;
wait for 1*bfm_l;
BFM_lii <= BFM_IIOL;
end process;
BFM_Oi1l:
process
begin
wait until BFM_Liol'evenT;
wait for 1*Bfm_l;
BFM_Oli <= BFM_Liol;
end process;
bfM_LI1L:
process
begin
wait until bfm_OIOL'Event;
wait for 1*BFM_L;
bfm_ILI <= bfm_oioL;
end process;
bfm_II1L:
process
begin
wait until bfm_LILL'EVent;
wait for 1*bFM_L;
bfm_oiI <= bfm_lILL;
end process;
BFM_o01l:
process
begin
wait until bFM_O0OL'event;
wait for 1*BFM_L;
bfm_lLI <= bfm_o0ol;
end process;
bfm_OO0L <= "01";
bfM_I1IL <= '0';
process
variable BFM_L01l: BOolean := true;
variable L: LINE;
begin
if (BFm_l01l) then
write_STRING(l,
"=================================================");
Writeline(OUTPUT,
L);
WRITe_string(l,
"           Actel CortexM1 Bus Functional Model (BFM)");
WRIteline(oUTPUT,
l);
wrITE_STRing(l,
"=================================================");
wRITELINE(output,
l);
wait until (BFM_l1ol'evenT and bfm_l1OL = '1');
BFM_l01l := falsE;
else
wait;
end if;
end process;
BFM_i01l:
process (SYSRESETn,HCLK)
begin
if (SYSRESETN = '0') then
BFM_L11 <= ("00"&X"00000");
elsif (HCLK'eveNT and HCLK = '1') then
if ((bfm_loOL = '1') and (bfm_l11 /= ("00"&X"00000"))) then
BFM_L11 <= bfm_L11-1;
elsif ((BFM_l0ol or Bfm_ooil) = '1') then
BFm_l11 <= BFM_L1i(BFM_l10+1);
end if;
end if;
end process;
bfm_o11L:
process (SYSRESETn,HCLK)
begin
if (SYSRESETN = '0') then
bfm_l10 <= 0;
elsif (HCLK'evenT and HCLK = '1') then
if ((BFM_l0ol or Bfm_ooil) = '1') then
bFM_L10 <= BFM_l10+1;
end if;
end if;
end process;
BFM_l11l:
process (SYSRESETn,BFM_L10)
begin
if (SYSRESETn = '0') then
BFM_O00 <= '0';
bfm_L00 <= '0';
bfm_i00 <= '0';
Bfm_o10 <= '0';
bfm_iolL <= "00";
BFM_I1ol <= X"00000000";
BFM_ooll <= '0';
bfm_loll <= "00";
elsif (SYSRESETn = '1') then
bfm_O00 <= bfm_i1I(bFM_L10);
BFM_l00 <= BFM_OO0(bFM_L10);
BFM_i00 <= bfM_LO0(bfm_l10);
Bfm_o10 <= bfm_IO0(Bfm_l10);
bfm_ioll <= bfm_ll0(BFM_l10);
bfM_I1OL <= BFM_il0(bfm_l10);
bfm_ooll <= BFM_Oi0(bfm_l10);
bfm_loll <= bfm_li0(BFM_l10);
end if;
end process;
bfm_i11L:
process (SYSRESETn,HCLK)
begin
if (SYSRESETn = '0') then
bfM_LL1 <= 0;
elsif (HCLK'event and HCLK = '1') then
if ((BFM_I11 or BFM_ooil) = '1') then
bfm_LL1 <= bFM_LL1+1;
end if;
end if;
end process;
bfm_OOOI:
process (SYSRESETN,bfm_ll1)
begin
if (SYSRESETn = '0') then
BFM_i10 <= '0';
bfm_oo1 <= X"00000000";
Bfm_lo1 <= "00";
bfM_IO1 <= "00";
bfm_ol1 <= X"00000000";
elsif (SYSRESETN = '1') then
BFM_i10 <= bfM_OL0(Bfm_ll1);
Bfm_oo1 <= bFM_II0(bfm_ll1);
bfm_LO1 <= BFM_Ll0(bfm_LL1);
bfm_iO1 <= bFM_LI0(bfm_ll1);
Bfm_ol1 <= BFM_il0(bfm_ll1);
end if;
end process;
bfm_looi:
process (SYSRESETn,HCLK)
begin
if (SYSRESETn = '0') then
bfm_il1 <= "00";
bfm_oi1 <= "00";
bfm_lI1 <= X"00000000";
bfm_ii1 <= X"00000000";
bfm_o01 <= '0';
elsif (HCLK'event and HCLK = '1') then
if (BFM_LL0l = '1') then
BFm_il1 <= bfm_lO1;
BFm_oi1 <= BFM_Io1;
bfm_li1 <= BFm_ol1;
Bfm_ii1 <= bfm_oo1;
bFM_O01 <= bfm_i10;
end if;
end if;
end process;
BFM_IOoi:
process (HCLK)
variable L: lINE;
variable bfm_oloi: stRING(1 to 9);
begin
if (HCLK'EVent and HCLK = '1') then
if ((Bfm_oill or BFM_ILll) = '1') then
if (bfm_oill = '1') then
if (bfM_IL1 = BFm_ll) then
BFM_oloi := "N-cycle: ";
else
bfM_OLOI := "S-cycle: ";
end if;
if (bfm_oI1 = BFM_OI) then
writE_STRING(l,
bfm_oLOI&"Write "&to_HSTRING(unsigNED(BFM_ii1(7 downto 0)))&" to address "&TO_hstring(UNSIGned(bfm_li1)));
writelINE(output,
l);
elsif (BFM_oi1 = bfm_li) then
wRITE_STring(l,
bfm_oloi&"Write "&TO_hstring(unsigNED(bfm_ii1(15 downto 0)))&" to address "&TO_hstring(UNSIGNED(BFM_li1)));
writeline(OUTPUT,
L);
else
WRITE_string(L,
bfm_olOI&"Write "&to_hstRING(unSIGNED(bfM_II1(31 downto 0)))&" to address "&to_HSTRINg(UNSIGNED(BFM_LI1)));
Writeline(OUTput,
L);
end if;
elsif ((BFM_o01 = '1') and ((BFM_OI1 = BFM_oi) and (BFM_OOi = '0')
and (((BFM_li1(1 downto 0) = "00") and (BFM_oi0l(7 downto 0) /= BFm_ii1(7 downto 0))) or ((BFM_Li1(1 downto 0) = "01") and (BFM_oi0l(15 downto 8) /= bfm_II1(7 downto 0)))
or ((bFM_LI1(1 downto 0) = "10") and (BFM_OI0l(23 downto 16) /= bfm_ii1(7 downto 0)))
or ((BFm_li1(1 downto 0) = "11") and (BFM_oi0l(31 downto 24) /= bfM_II1(7 downto 0)))))) then
if (BFm_il1 = bfm_ll) then
bfm_oLOI := "N-cycle: ";
else
BFM_OLoi := "S-cycle: ";
end if;
if (BFM_LI1(1 downto 0) = "00") then
WRITE_string(L,
bfm_oloI&"Read from address "&to_hstring(UNSIGNed(bfM_LI1))&"- data incorrect: Expected "&To_hstring(unsignED(bfM_II1(7 downto 0)))&", Actual "&to_hstrinG(unsigned(bfm_OI0L(7 downto 0))));
writELINE(OUTPUT,
L);
elsif (bfm_li1(1 downto 0) = "01") then
wrITE_STRing(l,
BFM_oloi&"Read from address "&tO_HSTRINg(unsigNED(bfm_li1))&"- data incorrect: Expected "&TO_hstring(Unsigned(bfm_II1(7 downto 0)))&", Actual "&to_hstriNG(unSIGNED(Bfm_oi0l(15 downto 8))));
WRITELine(OUTPUT,
L);
elsif (bfm_LI1(1 downto 0) = "10") then
WRITE_STring(l,
BFM_oloi&"Read from address "&TO_HSTRing(unsigneD(bfm_li1))&"- data incorrect: Expected "&TO_HString(UNsigned(bfm_ii1(7 downto 0)))&", Actual "&to_hSTRING(unSIGNED(BFM_oi0l(23 downto 16))));
WRITeline(OUTPut,
L);
elsif (bfm_li1(1 downto 0) = "11") then
WRITE_string(L,
BFm_oloi&"Read from address "&TO_HSTRing(unsigned(BFM_LI1))&"- data incorrect: Expected "&to_hsTRING(unsIGNED(BFM_II1(7 downto 0)))&", Actual "&TO_hstring(UNsigned(bfm_oi0L(31 downto 24))));
WRITELINe(oUTPUT,
L);
end if;
assert (false) report "Stop Encountered" severity FAIlure;
elsif ((BFM_o01 = '1') and (Bfm_oi1 = bfm_oi)
and (bFM_OOI = '1')
and (((Bfm_li1(1 downto 0) = "00") and (bfm_oi0L(31 downto 24) /= Bfm_ii1(7 downto 0))) or ((bfm_li1(1 downto 0) = "01") and (BFm_oi0l(23 downto 16) /= bfm_ii1(7 downto 0)))
or ((bfm_li1(1 downto 0) = "10") and (BFM_oi0l(15 downto 8) /= bfm_iI1(7 downto 0)))
or ((bfm_lI1(1 downto 0) = "11") and (BFM_Oi0l(7 downto 0) /= BFM_ii1(7 downto 0))))) then
if (bfm_il1 = bfm_lL) then
BFM_OLOi := "N-cycle: ";
else
bfm_oloI := "S-cycle: ";
end if;
if (BFM_LI1(1 downto 0) = "00") then
WRite_strinG(L,
Bfm_oloi&"Read from address "&to_hstring(uNSIGNED(bfM_LI1))&"- data incorrect: Expected "&to_hstrING(UNSIGNED(BFM_ii1(7 downto 0)))&", Actual "&to_hsTRING(unsigNED(BFM_OI0l(31 downto 24))));
Writeline(OUtput,
L);
elsif (bfm_lI1(1 downto 0) = "01") then
WRITE_string(l,
BFm_oloi&"Read from address "&To_hstring(UNSIGNEd(Bfm_li1))&"- data incorrect: Expected "&tO_HSTRIng(unsigned(bfm_II1(7 downto 0)))&", Actual "&TO_hstring(UNSigned(bfm_oi0l(23 downto 16))));
writELINE(outpuT,
L);
elsif (BFM_li1(1 downto 0) = "10") then
WRITE_String(l,
Bfm_oloi&"Read from address "&to_hstrinG(UNSIGNED(bfm_li1))&"- data incorrect: Expected "&TO_hstring(unsigned(bfm_ii1(7 downto 0)))&", Actual "&TO_HSTring(UNSIgned(bfm_oi0l(15 downto 8))));
WRIteline(OUTPUT,
L);
elsif (bfm_li1(1 downto 0) = "11") then
WRIte_string(L,
bfm_olOI&"Read from address "&to_hstRING(unsigned(BFM_li1))&"- data incorrect: Expected "&to_hstriNG(unsiGNED(BFM_ii1(7 downto 0)))&", Actual "&TO_HSTring(UNSIGNed(bfM_OI0L(7 downto 0))));
WRIteline(OUTPUT,
L);
end if;
assert (FALse) report "Stop Encountered" severity failurE;
elsif ((bfm_O01 = '1') and (BFM_oi1 = bfm_LI)
and (BFM_OOI = '0')
and (((bfm_li1(1) = '0') and (bfm_oi0l(15 downto 0) /= bfm_ii1(15 downto 0))) or ((BFm_li1(1) = '1') and (bfm_oi0l(31 downto 16) /= bfm_ii1(15 downto 0))))) then
if (bfm_IL1 = BFM_ll) then
bfm_oloi := "N-cycle: ";
else
BFM_OLoi := "S-cycle: ";
end if;
case (bfm_LI1(1)) is
when '0' =>
WRITE_String(L,
BFM_OLOI&"Read from address "&TO_HSTring(unsignED(Bfm_li1))&"- data incorrect: Expected "&To_hstring(unsigneD(bfm_ii1(15 downto 0)))&", Actual "&to_hstRING(unsiGNED(BFM_Oi0l(15 downto 0))));
WRITEline(OUTPUT,
L);
when '1' =>
write_STRING(l,
BFM_oloi&"Read from address "&to_HSTRING(unsigneD(BFM_LI1))&"- data incorrect: Expected "&to_hsTRING(UNSIGNED(BFm_ii1(15 downto 0)))&", Actual "&tO_HSTRINg(unsIGNED(BFM_Oi0l(31 downto 16))));
writeliNE(OUtput,
l);
when others =>
null
;
end case;
assert (falSE) report "Stop Encountered" severity Failure;
elsif ((BFM_o01 = '1') and ((bfm_oi1 = BFM_LI) and (BFM_OOI = '1')
and (((BFM_li1(1) = '0') and (BFm_oi0l(31 downto 16) /= bfm_ii1(15 downto 0))) or ((BFM_LI1(1) = '1') and (bfm_OI0L(15 downto 0) /= bfM_II1(15 downto 0)))))) then
if (BFm_il1 = bfm_ll) then
bfm_oloi := "N-cycle: ";
else
BFM_OLOI := "S-cycle: ";
end if;
case (BFM_li1(1)) is
when '0' =>
WRITe_string(L,
bfM_OLOI&"Read from address "&TO_HSTRIng(unsignED(bfm_li1))&"- data incorrect: Expected "&TO_hstring(unsigNED(bfm_iI1(15 downto 0)))&", Actual "&to_hstrING(unsigned(bfm_oi0L(31 downto 16))));
WRIteline(OUTPUt,
L);
when '1' =>
wRITE_STring(l,
BFm_oloi&"Read from address "&TO_hstring(UNSIGNED(bfm_lI1))&"- data incorrect: Expected "&TO_HString(unsigned(bfm_iI1(15 downto 0)))&", Actual "&to_hstriNG(unsigned(bfm_OI0L(15 downto 0))));
WRIteline(OUTPUt,
l);
when others =>
null
;
end case;
assert (FALSE) report "Stop Encountered" severity faILURE;
elsif ((bfM_O01 = '1') and (BFM_OI1 = bfm_ii)
and (bfm_OI0L(31 downto 0) /= BFm_ii1(31 downto 0))) then
if (bfm_il1 = bfm_lL) then
bfm_oLOI := "N-cycle: ";
else
BFM_oloi := "S-cycle: ";
end if;
WRIte_string(L,
bfm_oLOI&"Read from address "&to_hstrING(UNSIGNED(bfm_lI1))&"- data incorrect: Expected "&TO_hstring(unsigned(bfm_ii1))&", Actual "&to_hstring(UNSIgned(bfm_oi0L)));
writelinE(OUTPUt,
L);
assert (FALSE) report "Stop Encountered" severity failURE;
elsif ((bfM_LLIL = '0') and (bFM_IL1 /= bfm_i)) then
if (bfm_iL1 = bFM_LL) then
BFM_OLoi := "N-cycle: ";
else
bfm_OLOI := "S-cycle: ";
end if;
if ((BFM_oi1 = bfm_oi) and (BFm_ooi = '0')) then
if (Bfm_li1(1 downto 0) = "00") then
write_STRING(L,
BFM_Oloi&"Read "&to_hstRING(UNSIGNED(BFM_OI0l(7 downto 0)))&" from address "&To_hstring(unsigned(BFm_li1)));
writeline(OUTPUt,
L);
elsif (BFM_li1(1 downto 0) = "01") then
WRITE_string(L,
bfm_oloi&"Read "&To_hstring(unsIGNED(BFM_OI0l(15 downto 8)))&" from address "&to_HSTRING(unsigneD(bfm_LI1)));
WRITEline(OUTPUT,
L);
elsif (bFM_LI1(1 downto 0) = "10") then
Write_strinG(L,
bfm_oloi&"Read "&TO_hstring(unsigned(bfm_oi0l(23 downto 16)))&" from address "&to_hstriNG(unsigned(bfm_li1)));
wRITELINE(output,
l);
elsif (bfm_lI1(1 downto 0) = "11") then
write_striNG(L,
BFM_Oloi&"Read "&TO_HString(UNsigned(BFM_Oi0l(31 downto 24)))&" from address "&to_hstRING(unsigNED(bfm_lI1)));
wrITELINE(outpUT,
l);
end if;
elsif ((bfm_oi1 = bfm_OI) and (BFM_OOI = '1')) then
if (bfm_li1(1 downto 0) = "00") then
write_STRING(L,
BFM_OLoi&"Read "&to_hsTRING(UNSIGned(BFM_OI0l(31 downto 24)))&" from address "&To_hstring(Unsigned(BFM_li1)));
writeline(OUTPUt,
L);
elsif (BFM_li1(1 downto 0) = "01") then
WRIte_string(l,
bfm_oloi&"Read "&TO_HSTring(unsigneD(BFM_oi0l(23 downto 16)))&" from address "&to_hstrING(unsiGNED(BFM_LI1)));
WRiteline(OUTPUT,
l);
elsif (bfm_li1(1 downto 0) = "10") then
WRite_string(L,
bfm_oloi&"Read "&TO_hstring(unsigned(bfm_oi0L(15 downto 8)))&" from address "&to_HSTRING(unSIGNED(BFM_LI1)));
writeline(OUTPUT,
L);
elsif (bFM_LI1(1 downto 0) = "11") then
WRIte_string(L,
bfm_oLOI&"Read "&to_hstRING(unsiGNED(bfM_OI0L(7 downto 0)))&" from address "&to_hstRING(Unsigned(bfm_li1)));
wriTELINE(outpuT,
l);
end if;
elsif ((BFM_oi1 = bfM_LI) and (BFM_ooi = '0')) then
if (bfm_lI1(1) = '0') then
Write_striNG(L,
bfm_olOI&"Read "&To_hstring(unsigneD(bfm_oi0L(15 downto 0)))&" from address "&to_hSTRING(unSIGNED(BFM_LI1)));
writeline(OUTPUT,
L);
elsif (bfm_li1(1) = '1') then
Write_strinG(l,
BFM_oloi&"Read "&TO_HSTring(unsigned(bfm_oi0l(31 downto 16)))&" from address "&TO_hstring(UNsigned(BFM_li1)));
WRIteline(OUTPUT,
L);
end if;
elsif ((Bfm_oi1 = bfm_LI) and (bfm_OOI = '1')) then
if (BFM_LI1(1) = '0') then
writE_STRINg(L,
bfm_oloI&"Read "&to_hstriNG(uNSIGNED(bfM_OI0L(31 downto 16)))&" from address "&to_HSTRING(unsignED(bfm_li1)));
WRIteline(OUTput,
l);
elsif (BFm_li1(1) = '1') then
WRITe_string(L,
bfm_oloI&"Read "&TO_HSTRing(unsigned(bfm_oi0L(15 downto 0)))&" from address "&TO_Hstring(UNSigned(BFM_li1)));
Writeline(OUTPUt,
L);
end if;
else
WRITE_STring(l,
bfm_oloi&"Read "&TO_HSTRing(UNSIgned(BFM_Oi0l(31 downto 0)))&" from address "&To_hstring(UNSigned(BFM_LI1)));
WRITELIne(ouTPUT,
L);
end if;
end if;
end if;
end if;
end process;
Bfm_lloi:
process (HCLK)
variable l: LINE;
begin
if (HCLK'event and HCLK = '1') then
if ((bFM_IOIL and (not BFM_llil)) = '1') then
if (bfm_loll = bfm_OI) then
WRite_string(l,
"Polling address "&tO_HSTRIng(Unsigned(bfm_I1OL))&" for bitmask "&TO_Hstring(UNSigned(BFM_Oo1(7 downto 0))));
wriTELINE(output,
l);
elsif (bfm_loll = BFM_Li) then
write_strING(L,
"Polling address "&To_hstring(UNSIGNED(BFM_I1ol))&" for bitmask "&to_hstRING(unsigNED(bfm_oo1(15 downto 0))));
writeliNE(output,
l);
else
WRite_string(L,
"Polling address "&TO_Hstring(unsigned(bfm_I1OL))&" for bitmask "&to_hstrING(unsigNED(Bfm_oo1(31 downto 0))));
WRITeline(OUTPut,
L);
end if;
end if;
if (bfm_loil = '1') then
if ((bFM_LOLL = BFM_oi) and (bfm_oOI = '0')) then
if (bFM_I1OL(1 downto 0) = "00") then
write_STRING(l,
"Poll completed - read "&to_hSTRING(Unsigned(BFM_oi0l(7 downto 0)))&" from address "&TO_HSTRing(unsIGNED(bfm_I1OL)));
writelINE(OUTPUT,
L);
elsif (bfm_I1OL(1 downto 0) = "01") then
wrITE_STRing(L,
"Poll completed - read "&TO_hstring(unSIGNED(bfm_oi0l(15 downto 8)))&" from address "&tO_HSTRINg(UNSIGNed(BFM_I1ol)));
WRiteline(OUTPUt,
L);
elsif (bFM_I1OL(1 downto 0) = "10") then
WRIte_string(l,
"Poll completed - read "&to_HSTRING(unsigned(bfm_oI0L(23 downto 16)))&" from address "&to_HSTRING(UNSIGNed(Bfm_i1ol)));
wRITELINE(ouTPUT,
L);
elsif (bfm_i1OL(1 downto 0) = "11") then
Write_striNG(L,
"Poll completed - read "&tO_HSTRIng(unsIGNED(bfm_OI0L(31 downto 24)))&" from address "&to_hstriNG(unsignED(BFM_i1ol)));
writeliNE(output,
l);
end if;
elsif ((bfm_loLL = BFM_OI) and (bfM_OOI = '1')) then
if (bfm_i1OL(1 downto 0) = "00") then
WRITE_string(L,
"Poll completed - read "&TO_HString(unsignED(Bfm_OI0L(31 downto 24)))&" from address "&TO_HString(unsigned(BFM_i1ol)));
wRITELINE(outpUT,
L);
elsif (bfM_I1OL(1 downto 0) = "01") then
write_STRING(l,
"Poll completed - read "&To_hstring(unsigned(bfm_OI0L(23 downto 16)))&" from address "&to_hsTRING(unSIGNED(bfm_i1OL)));
WRITELine(OUTPUT,
l);
elsif (bfm_i1ol(1 downto 0) = "10") then
write_STRING(l,
"Poll completed - read "&to_HSTRING(unsigned(bfm_oI0L(15 downto 8)))&" from address "&to_hstriNG(unsigneD(BFm_i1ol)));
writeliNE(output,
l);
elsif (bfm_i1OL(1 downto 0) = "11") then
wRITE_STring(L,
"Poll completed - read "&TO_hstring(unsigNED(bfm_oi0l(7 downto 0)))&" from address "&to_hsTRING(unsigNED(BFM_i1ol)));
writELINE(output,
L);
end if;
elsif ((Bfm_loll = BFM_Li) and (Bfm_ooi = '0')) then
case (BFM_I1ol(1)) is
when '0' =>
WRite_strinG(L,
"Poll completed - read "&to_hstRING(UNSIGned(BFM_OI0l(15 downto 0)))&" from address "&to_hstrinG(unsignED(Bfm_i1ol)));
writeLINE(output,
L);
when '1' =>
WRITE_string(L,
"Poll completed - read "&TO_Hstring(unsigNED(bfm_oi0l(31 downto 16)))&" from address "&TO_hstring(unsigned(Bfm_i1ol)));
writELINE(output,
l);
when others =>
null
;
end case;
elsif ((bfm_LOLL = BFm_li) and (Bfm_ooi = '1')) then
case (bfm_I1OL(1)) is
when '0' =>
wriTE_STRIng(L,
"Poll completed - read "&to_hSTRING(UNSIGNed(bfm_oi0l(31 downto 16)))&" from address "&to_hstRING(unsignED(BFM_i1ol)));
writelINE(output,
l);
when '1' =>
WRITE_string(L,
"Poll completed - read "&TO_hstring(uNSIGNED(Bfm_oi0l(15 downto 0)))&" from address "&to_hstRING(unsigned(BFM_I1ol)));
writelINE(output,
l);
when others =>
null
;
end case;
else
wRITE_STRing(L,
"Poll completed - read "&To_hstring(unsiGNED(bfm_oI0L))&" from address "&to_hsTRING(unsignED(Bfm_i1ol)));
Writeline(Output,
l);
end if;
end if;
end if;
end process;
bfm_o1LL <= BFM_l1ll and bfm_i1ll;
BFM_Iloi:
process (Bfm_illl,Bfm_llil,bfm_loll,bfm_oo1,bfm_i1ol,BFM_oi0l,bfm_ooi)
begin
if ((Bfm_illl = '1') and (BFM_Llil = '1')
and (((bfm_loll = bfm_oi) and (bfm_OOI = '0')
and (((Bfm_i1ol(1 downto 0) = "00") and ((bFM_OI0L(7) and BFM_OO1(7)) = BFM_Oo1(7))
and ((BFM_OI0l(6) and BFM_oo1(6)) = BFM_OO1(6))
and ((Bfm_oi0l(5) and bfm_OO1(5)) = bfM_OO1(5))
and ((bfm_oI0L(4) and bfm_oo1(4)) = BFM_oo1(4))
and ((BFM_oi0l(3) and BFM_Oo1(3)) = bfm_oo1(3))
and ((bFM_OI0L(2) and BFM_Oo1(2)) = BFM_oo1(2))
and ((BFM_oi0l(1) and bfM_OO1(1)) = bfm_oo1(1))
and ((Bfm_oi0l(0) and BFM_OO1(0)) = bfm_oO1(0))) or ((bfm_I1OL(1 downto 0) = "01") and ((BFM_OI0l(15) and BFM_OO1(7)) = bfm_oo1(7))
and ((bfm_oi0L(14) and BFM_Oo1(6)) = bFM_OO1(6))
and ((BFM_oi0l(13) and bfM_OO1(5)) = BFm_oo1(5))
and ((BFM_OI0l(12) and BFM_oo1(4)) = bfm_oo1(4))
and ((BFM_oi0l(11) and BFM_oo1(3)) = Bfm_oo1(3))
and ((BFM_oi0l(10) and bfm_oo1(2)) = bfm_oo1(2))
and ((BFM_OI0l(9) and BFM_oo1(1)) = bfm_OO1(1))
and ((bfM_OI0L(8) and bfm_oo1(0)) = BFM_OO1(0)))
or ((Bfm_i1ol(1 downto 0) = "10") and ((bfm_oi0l(23) and BFM_OO1(7)) = BFm_oo1(7))
and ((bfM_OI0L(22) and bfm_OO1(6)) = Bfm_oo1(6))
and ((BFM_oi0l(21) and BFM_OO1(5)) = BFm_oo1(5))
and ((BFM_Oi0l(20) and BFM_oo1(4)) = BFM_OO1(4))
and ((BFM_oi0l(19) and BFM_OO1(3)) = Bfm_oo1(3))
and ((bfm_OI0L(18) and bfm_oO1(2)) = bfm_OO1(2))
and ((bFM_OI0L(17) and BFM_OO1(1)) = BFM_oo1(1))
and ((bfm_OI0L(16) and bfm_oO1(0)) = bfm_OO1(0)))
or ((bfm_i1OL(1 downto 0) = "11") and ((BFM_oi0l(31) and BFM_OO1(7)) = bfm_oo1(7))
and ((bFM_OI0l(30) and bfm_oo1(6)) = BFM_OO1(6))
and ((bfm_OI0L(29) and bfm_oo1(5)) = Bfm_oo1(5))
and ((BFM_oi0l(28) and bFM_OO1(4)) = BFM_Oo1(4))
and ((BFM_oi0l(27) and BFM_OO1(3)) = bfm_oo1(3))
and ((BFM_OI0l(26) and BFM_OO1(2)) = bfm_oo1(2))
and ((BFM_oi0l(25) and BFM_OO1(1)) = BFM_oo1(1))
and ((BFM_OI0l(24) and bfm_oo1(0)) = bfM_OO1(0))))) or ((bfm_loll = BFM_OI) and (bfm_ooi = '1')
and (((bfm_i1OL(1 downto 0) = "00") and ((BFM_oi0l(31) and bfm_oo1(7)) = bfm_oo1(7))
and ((bfm_oi0L(30) and bfm_oo1(6)) = bfm_OO1(6))
and ((bfM_OI0L(29) and bfm_oo1(5)) = bfm_OO1(5))
and ((BFM_OI0l(28) and BFM_oo1(4)) = BFM_OO1(4))
and ((bfM_OI0L(27) and BFM_Oo1(3)) = bfm_oo1(3))
and ((BFM_OI0l(26) and BFM_oo1(2)) = bfm_oo1(2))
and ((BFM_OI0l(25) and bFM_OO1(1)) = bfm_oo1(1))
and ((BFM_oi0l(24) and BFm_oo1(0)) = bfm_OO1(0))) or ((bFM_I1OL(1 downto 0) = "01") and ((bfm_oi0L(23) and bfm_oO1(7)) = bfm_oo1(7))
and ((bFM_OI0L(22) and bfm_OO1(6)) = bfM_OO1(6))
and ((Bfm_oi0l(21) and bfm_oo1(5)) = bfm_oO1(5))
and ((BFm_oi0l(20) and bfm_oo1(4)) = bFM_OO1(4))
and ((bfm_oI0L(19) and bfm_OO1(3)) = BFM_oo1(3))
and ((BFm_oi0l(18) and Bfm_oo1(2)) = bfm_oo1(2))
and ((bfm_OI0L(17) and bfm_oO1(1)) = bfm_oo1(1))
and ((BFM_OI0l(16) and BFM_OO1(0)) = BFm_oo1(0)))
or ((BFM_i1ol(1 downto 0) = "10") and ((bFM_OI0l(15) and Bfm_oo1(7)) = BFM_oo1(7))
and ((BFM_OI0l(14) and bfm_oo1(6)) = bfM_OO1(6))
and ((bfm_OI0L(13) and bfm_oo1(5)) = bfm_oo1(5))
and ((bfm_OI0L(12) and bfm_oo1(4)) = BFM_OO1(4))
and ((bfm_OI0L(11) and bfm_OO1(3)) = BFM_oo1(3))
and ((BFM_oi0l(10) and bfm_oo1(2)) = bfm_OO1(2))
and ((BFM_Oi0l(9) and BFM_OO1(1)) = BFM_OO1(1))
and ((bfm_oi0L(8) and bfm_oo1(0)) = Bfm_oo1(0)))
or ((BFM_i1ol(1 downto 0) = "11") and ((bfm_oi0l(7) and Bfm_oo1(7)) = bfm_oo1(7))
and ((bFM_OI0l(6) and Bfm_oo1(6)) = BFM_oo1(6))
and ((bfm_oi0l(5) and BFM_OO1(5)) = BFm_oo1(5))
and ((BFM_oi0l(4) and BFM_oo1(4)) = BFM_Oo1(4))
and ((bfm_oi0l(3) and BFM_oo1(3)) = BFM_oo1(3))
and ((bfm_oi0l(2) and Bfm_oo1(2)) = BFM_OO1(2))
and ((bfM_OI0L(1) and BFM_oo1(1)) = bFM_OO1(1))
and ((BFM_oi0l(0) and BFM_Oo1(0)) = bfm_oo1(0)))))
or ((bfm_lOLL = BFM_li) and (BFM_OOi = '0')
and (((bfm_I1OL(1) = '0') and ((bfm_OI0L(15) and bfm_oo1(15)) = bfm_OO1(15))
and ((bfm_oi0L(14) and BFM_OO1(14)) = bfm_OO1(14))
and ((Bfm_oi0l(13) and bFM_OO1(13)) = BFM_Oo1(13))
and ((bfM_OI0L(12) and BFM_OO1(12)) = bfM_OO1(12))
and ((Bfm_oi0l(11) and BFM_oo1(11)) = Bfm_oo1(11))
and ((bfm_oi0L(10) and bfm_OO1(10)) = Bfm_oo1(10))
and ((BFM_oi0l(9) and BFM_oo1(9)) = BFM_Oo1(9))
and ((BFM_OI0l(8) and BFM_OO1(8)) = bfm_oo1(8))
and ((bfm_oi0l(7) and BFM_Oo1(7)) = BFM_OO1(7))
and ((BFM_oi0l(6) and BFm_oo1(6)) = BFM_OO1(6))
and ((bfm_oi0l(5) and BFm_oo1(5)) = BFM_OO1(5))
and ((bfm_oi0l(4) and BFM_OO1(4)) = BFM_OO1(4))
and ((bfm_oi0l(3) and bfm_oo1(3)) = bfm_oo1(3))
and ((BFM_Oi0l(2) and BFM_oo1(2)) = bfm_oo1(2))
and ((bFM_OI0L(1) and bfm_oo1(1)) = BFM_Oo1(1))
and ((bfm_oi0l(0) and BFM_OO1(0)) = bfm_oo1(0))) or ((BFM_I1ol(1) = '1') and ((bfM_OI0L(31) and bfM_OO1(15)) = bfM_OO1(15))
and ((BFM_oi0l(30) and bfm_oo1(14)) = bfm_OO1(14))
and ((BFM_OI0l(29) and BFM_OO1(13)) = Bfm_oo1(13))
and ((bfM_OI0L(28) and bfm_oo1(12)) = BFm_oo1(12))
and ((BFM_OI0l(27) and BFM_Oo1(11)) = BFM_OO1(11))
and ((BFM_OI0l(26) and BFM_Oo1(10)) = bfm_oO1(10))
and ((BFM_OI0l(25) and BFM_oo1(9)) = bfm_oo1(9))
and ((bfm_OI0L(24) and BFM_OO1(8)) = bfm_oo1(8))
and ((bfm_OI0L(23) and BFm_oo1(7)) = BFM_OO1(7))
and ((Bfm_oi0l(22) and BFm_oo1(6)) = BFM_oo1(6))
and ((bfm_oi0L(21) and BFm_oo1(5)) = bfm_oO1(5))
and ((bfm_oi0l(20) and BFM_oo1(4)) = bfm_OO1(4))
and ((BFM_oi0l(19) and BFM_oo1(3)) = bfm_oo1(3))
and ((Bfm_oi0l(18) and BFm_oo1(2)) = bFM_OO1(2))
and ((BFM_oi0l(17) and BFM_OO1(1)) = bfm_oo1(1))
and ((bfm_oi0L(16) and BFm_oo1(0)) = bfm_oo1(0)))))
or ((BFM_LOll = bfm_LI) and (bfm_OOI = '1')
and (((bfm_i1ol(1) = '0') and ((BFM_Oi0l(31) and BFm_oo1(15)) = Bfm_oo1(15))
and ((bfm_oi0l(30) and BFM_oo1(14)) = bfM_OO1(14))
and ((bfm_OI0L(29) and BFM_oo1(13)) = BFM_OO1(13))
and ((bfm_oi0l(28) and bfm_oo1(12)) = BFM_oo1(12))
and ((bfm_oi0L(27) and bfm_OO1(11)) = BFm_oo1(11))
and ((Bfm_oi0l(26) and bfm_oo1(10)) = BFm_oo1(10))
and ((BFM_oi0l(25) and BFM_oo1(9)) = BFM_OO1(9))
and ((BFm_oi0l(24) and bfm_oo1(8)) = BFM_Oo1(8))
and ((BFM_oi0l(23) and BFM_oo1(7)) = bfM_OO1(7))
and ((bfm_oi0l(22) and Bfm_oo1(6)) = BFM_oo1(6))
and ((bfm_oi0L(21) and BFM_OO1(5)) = BFM_OO1(5))
and ((bfM_OI0L(20) and BFM_oo1(4)) = bfm_oO1(4))
and ((bfm_OI0L(19) and BFM_OO1(3)) = bfm_oo1(3))
and ((bfm_oi0l(18) and bfm_OO1(2)) = BFM_oo1(2))
and ((BFM_oi0l(17) and BFM_oo1(1)) = bfm_oO1(1))
and ((Bfm_oi0l(16) and Bfm_oo1(0)) = bfm_oo1(0))) or ((bfm_i1OL(1) = '1') and ((BFM_OI0l(15) and BFM_oo1(15)) = bfm_OO1(15))
and ((bfm_oi0l(14) and bfm_oO1(14)) = BFM_oo1(14))
and ((bFM_OI0L(13) and BFM_Oo1(13)) = BFM_OO1(13))
and ((BFM_oi0l(12) and bFM_OO1(12)) = bfM_OO1(12))
and ((Bfm_oi0l(11) and Bfm_oo1(11)) = bFM_OO1(11))
and ((BFM_oi0l(10) and bfm_oo1(10)) = BFm_oo1(10))
and ((BFm_oi0l(9) and BFM_oo1(9)) = bFM_OO1(9))
and ((BFM_OI0l(8) and BFM_OO1(8)) = bfm_OO1(8))
and ((bfm_oI0L(7) and BFM_OO1(7)) = bFM_OO1(7))
and ((BFM_OI0l(6) and bfm_OO1(6)) = Bfm_oo1(6))
and ((BFM_Oi0l(5) and BFM_OO1(5)) = BFM_oo1(5))
and ((bfm_OI0L(4) and bfm_oo1(4)) = BFM_OO1(4))
and ((BFM_OI0l(3) and bfm_OO1(3)) = BFm_oo1(3))
and ((bfm_oi0l(2) and Bfm_oo1(2)) = BFM_oo1(2))
and ((BFM_Oi0l(1) and bfm_oo1(1)) = BFM_Oo1(1))
and ((bfm_oi0L(0) and bfM_OO1(0)) = bfm_oo1(0)))))
or ((BFM_LOLL = bfm_iI) and ((bfm_oi0l(31) and BFM_OO1(31)) = bfm_oo1(31))
and ((bfm_oI0L(30) and BFM_Oo1(30)) = BFM_oo1(30))
and ((bfm_oi0l(29) and BFM_oo1(29)) = BFM_OO1(29))
and ((bfm_oi0l(28) and BFM_oo1(28)) = BFM_OO1(28))
and ((bfm_oI0L(27) and BFm_oo1(27)) = BFM_OO1(27))
and ((BFM_OI0l(26) and BFm_oo1(26)) = BFM_Oo1(26))
and ((bfm_oI0L(25) and bfm_OO1(25)) = bfm_oo1(25))
and ((bfm_oi0L(24) and BFM_Oo1(24)) = bfM_OO1(24))
and ((BFM_oi0l(23) and Bfm_oo1(23)) = BFM_OO1(23))
and ((bfm_OI0L(22) and bfM_OO1(22)) = bfm_OO1(22))
and ((BFM_oi0l(21) and bfM_OO1(21)) = BFM_oo1(21))
and ((BFM_Oi0l(20) and BFM_oo1(20)) = bFM_OO1(20))
and ((BFM_OI0l(19) and bfm_OO1(19)) = BFm_oo1(19))
and ((Bfm_oi0l(18) and BFM_oo1(18)) = BFM_oo1(18))
and ((BFM_OI0l(17) and BFM_Oo1(17)) = bfm_OO1(17))
and ((bfm_oi0l(16) and BFm_oo1(16)) = BFM_Oo1(16))
and ((Bfm_oi0l(15) and BFM_oo1(15)) = bFM_OO1(15))
and ((BFM_OI0l(14) and BFM_OO1(14)) = BFM_OO1(14))
and ((bfM_OI0L(13) and bfm_oo1(13)) = BFM_OO1(13))
and ((BFM_OI0l(12) and Bfm_oo1(12)) = bfm_oo1(12))
and ((bfm_oi0L(11) and bfm_oo1(11)) = Bfm_oo1(11))
and ((Bfm_oi0l(10) and bfm_OO1(10)) = Bfm_oo1(10))
and ((bfm_oi0l(9) and bfm_oO1(9)) = BFM_oo1(9))
and ((BFM_oi0l(8) and bfm_OO1(8)) = BFM_OO1(8))
and ((bfm_OI0L(7) and BFM_OO1(7)) = bfm_oO1(7))
and ((bfm_OI0L(6) and BFM_oo1(6)) = bfm_oo1(6))
and ((BFM_oi0l(5) and BFM_OO1(5)) = bfm_oo1(5))
and ((BFM_OI0l(4) and BFM_OO1(4)) = bfm_oo1(4))
and ((bfm_OI0L(3) and bfm_oo1(3)) = bfm_oO1(3))
and ((bfm_oi0L(2) and Bfm_oo1(2)) = bfM_OO1(2))
and ((BFM_OI0l(1) and bfm_oO1(1)) = BFM_OO1(1))
and ((bfm_oI0L(0) and BFM_oo1(0)) = bfm_oo1(0))))) then
bfm_lOIL <= '1';
else
BFM_LOIl <= '0';
end if;
end process;
BFM_oioi:
process (bfm_io1,BFM_oo1)
begin
if (BFM_IO1 = bfm_oI) then
BFM_iill(31 downto 24) <= bfm_oo1(7 downto 0);
bFM_IILL(23 downto 16) <= BFM_OO1(7 downto 0);
BFM_iill(15 downto 8) <= BFM_oo1(7 downto 0);
BFM_IIll(7 downto 0) <= BFM_OO1(7 downto 0);
elsif (bFM_IO1 = Bfm_li) then
bfm_IILL(31 downto 16) <= BFM_oo1(15 downto 0);
bfm_IILL(15 downto 0) <= BFM_OO1(15 downto 0);
else
bfm_IILL(31 downto 0) <= bfm_OO1(31 downto 0);
end if;
end process;
BFM_LIOI:
process (bfm_l11,bfm_l00,bfM_O1LL,bfm_i00,BFm_loi,bfm_o10,bfm_ioi)
begin
if ((bFM_L11 /= ("00"&X"00000")) or ((bfm_l00 and (not bFM_O1LL)) = '1')
or ((bfm_i00 and BFM_LOi) = '1')
or ((bfm_O10 and BFM_Ioi) = '1')) then
bfm_i0LL <= '1';
else
BFM_i0ll <= '0';
end if;
end process;
BFm_iioi:
process (SYSRESETN,HCLK)
begin
if (SYSRESETN = '0') then
bfm_llIL <= '0';
elsif (HCLK'Event and HCLK = '1') then
if (bfm_iOIL = '1') then
bfm_llil <= '1';
elsif (BFM_olil = '1') then
bfm_lLIL <= '0';
end if;
end if;
end process;
BFM_O0oi:
process (HCLK)
variable l: LINE;
begin
if (HCLK'event and HCLK = '1') then
Bfm_ilil <= Bfm_i00;
BFM_OIIl <= bfM_O10;
Bfm_liil <= bfm_loI;
BFM_IIIL <= bfm_ioi;
end if;
if ((BFM_O0il and bFM_O1LL) = '1') then
WRITE_string(L,
"Waiting for nFIQ assertion");
Writeline(OUtput,
l);
end if;
if ((Bfm_l0il and BFM_O1ll) = '1') then
WRITE_String(L,
"Waiting for nIRQ assertion");
WRiteline(OUTPUT,
L);
end if;
if (((not BFM_loi) and bFM_LIIL) = '1') then
WRITE_STring(L,
"nFIQ assertion detected");
writeliNE(output,
l);
end if;
if (((not BFm_ioi) and BFM_IIil) = '1') then
WRITe_string(L,
"nIRQ assertion detected");
wriTELINE(output,
l);
end if;
end process;
Bfm_l0oi:
process (SYSRESETn,HCLK)
begin
if (SYSRESETN = '0') then
BFM_O0Il <= '0';
elsif (HCLK'EVENt and HCLK = '1') then
if ((bfm_I00 and (not BFM_ILIl)) = '1') then
bfM_O0IL <= '1';
elsif (bfm_o1ll = '1') then
BFm_o0il <= '0';
end if;
end if;
end process;
BFM_I0oi:
process (SYSRESETn,HCLK)
begin
if (SYSRESETn = '0') then
bfM_L0IL <= '0';
elsif (HCLK'eveNT and HCLK = '1') then
if ((bfm_o10 and (not bfm_OIIL)) = '1') then
bfm_L0IL <= '1';
elsif (bfm_o1lL = '1') then
BFm_l0il <= '0';
end if;
end if;
end process;
BFM_o1oi:
process (SYSRESETn,HCLK)
begin
if (SYSRESETN = '0') then
bfm_i01 <= bfm_O1;
elsif (HCLK'Event and HCLK = '1') then
bfm_i01 <= bfm_o11;
end if;
end process;
BFM_l1oi:
process (BFm_i01,BFM_i0ll,bfm_o00,bfm_O1LL,BFM_L00)
begin
BFm_oool <= '0';
bfM_LOOL <= '0';
Bfm_iool <= '0';
BFM_ioil <= '0';
case (bfm_i01) is
when bFM_O1 =>
bfM_OLOL <= '0';
Bfm_oool <= '1';
bfm_o11 <= bfm_l1;
when BFM_L1 =>
bfm_olOL <= '0';
bfM_O11 <= BFM_I1;
when bfm_I1 =>
if (Bfm_o00 = '1') then
BFM_olol <= '0';
BFM_O11 <= bfm_ool;
elsif (BFm_i0ll = '1') then
BFM_olol <= '0';
BFM_Lool <= '1';
Bfm_o11 <= bfm_i1;
else
bfm_olol <= '1';
BFM_Ioil <= BFM_l00;
bfM_O11 <= bFM_I1;
end if;
when bfm_ool =>
BFM_olol <= '0';
if (BFM_O1ll = '1') then
Bfm_iool <= '1';
bfm_o11 <= Bfm_lol;
else
bfm_o11 <= bfm_ooL;
end if;
when bfm_loL =>
bfm_olol <= '0';
Bfm_iool <= '1';
BFm_o11 <= BFM_lol;
when others =>
bFM_OLOL <= '0';
BFM_O11 <= bfm_O1;
assert (FALSE) report "Scheduler Illegal State";
end case;
end process;
BFM_I1oi:
process (SYSRESETn,HCLK)
begin
if (SYSRESETn = '0') then
BFM_LLOL <= BFM_oll;
elsif (HCLK'event and HCLK = '1') then
Bfm_llol <= BFM_ilol;
end if;
end process;
bfm_ooli:
process (BFM_LLOL,BFm_o1ol,BFM_OLOl,Bfm_ll0l,bfm_l00,bfm_I1OL,BFM_OOLl,BFM_loll,bfm_iolL,BFM_III,BFM_O1i,BFm_l0i,BFM_O0i)
begin
bfM_OIOL <= BFM_I;
bfm_LIOL <= X"00000000";
bfm_iioL <= '0';
BFM_O0ol <= "00";
bfM_L1LL <= '0';
case (bfM_LLOL) is
when BFM_OLl =>
BFM_L0ol <= '0';
bfm_i0ol <= '0';
if (BFM_o1ol = '1') then
BFM_ILOL <= BFM_lll;
else
BFm_ilol <= BFm_oll;
end if;
when BFM_LLL =>
bfm_i0ol <= '0';
bfm_L1LL <= '1';
if (BFm_olol = '1') then
BFM_l0ol <= not bfm_l00;
bfm_OIOL <= bFM_IOLL;
bFM_LIOL <= bFM_I1OL;
bfM_IIOL <= BFM_OOll;
bfM_O0OL <= BFM_LOLl;
bfm_ilol <= bfM_ILL;
else
Bfm_l0ol <= '0';
BFM_Ilol <= BFM_lll;
end if;
when BFM_ILL =>
if (BFM_ll0l = '1') then
bfm_i0ol <= '1';
if (BFM_OLol = '1') then
bFM_L0OL <= '1';
Bfm_oiol <= Bfm_ioll;
bfm_liol <= Bfm_i1ol;
BFM_iiol <= BFm_ooll;
BFM_O0ol <= BFM_Loll;
bfm_iLOL <= bFM_ILL;
else
bfm_L0OL <= '0';
BFM_oiol <= BFM_I;
bfm_ilol <= bfm_lll;
end if;
else
bfm_L0OL <= '0';
bfm_i0ol <= '0';
bfm_OIOL <= bfm_l0I;
Bfm_liol <= BFM_Iii;
bfm_IIOL <= bFM_O1I;
bfm_o0ol <= BFM_o0i;
bfm_ILOL <= BFM_ILL;
end if;
when others =>
bfm_l0ol <= '0';
BFM_i0ol <= '0';
bfm_ilOL <= bfm_oll;
assert (false) report "Address Controller Illegal State";
end case;
end process;
bfm_lolI:
process (SYSRESETn,HCLK)
begin
if (SYSRESETn = '0') then
BFM_OLLl <= bfm_lIL;
elsif (HCLK'event and HCLK = '1') then
bfm_ollL <= Bfm_llll;
end if;
end process;
bfm_ioli:
process (bfm_olll,BFM_o1ol,bfm_I0OL,BFM_LLIl,bfm_loil,Bfm_o1i,BFM_ll0l,bfm_IILL,bfM_I0I)
begin
BFm_i11 <= '0';
BFM_illl <= '0';
BFM_oill <= '0';
BFM_i1ll <= '0';
BFM_Ooil <= '0';
bFM_OLIL <= '0';
case (bfm_olll) is
when bfm_lil =>
bfm_LILL <= "00000000000000000000000000000000";
if (bfm_o1ol = '1') then
Bfm_llll <= bfm_iil;
else
bfm_llll <= bfm_lil;
end if;
when BFM_IIL =>
bfm_i1ll <= '1';
if (Bfm_i0ol = '1') then
bfM_I11 <= not bfm_llIL;
if (bfm_O1I = '1') then
BFM_LILL <= bfm_iill;
BFM_LLLL <= bfm_o0l;
else
BFM_lill <= "00000000000000000000000000000000";
bfm_llll <= BFM_L0L;
end if;
else
bfm_llLL <= bfm_IIL;
end if;
when bfm_o0L =>
if (BFM_Ll0l = '1') then
bfm_oill <= '1';
if (BFM_i0ol = '1') then
bfm_i11 <= '1';
if (bfM_O1I = '1') then
BFM_lill <= bfm_IILL;
BFM_LLLL <= Bfm_o0l;
else
bfM_LILL <= "00000000000000000000000000000000";
bFM_LLLL <= BFM_l0l;
end if;
else
bfM_LILL <= "00000000000000000000000000000000";
BFM_llll <= BFm_iil;
end if;
else
bfm_lILL <= bfm_i0I;
BFM_LLLL <= BFM_o0l;
end if;
when BFM_l0l =>
if (bfm_ll0l = '1') then
Bfm_illl <= '1';
if (BFM_LLIl = '1') then
bfm_lill <= "00000000000000000000000000000000";
bfm_LLLL <= BFM_IIL;
if (bfm_loIL = '1') then
BFM_ooil <= '1';
bfm_oliL <= '1';
end if;
elsif (BFM_i0ol = '1') then
bfm_i11 <= '1';
if (BFM_O1I = '1') then
BFM_lill <= bFM_IILL;
bfm_llll <= bfm_o0L;
else
Bfm_lill <= "00000000000000000000000000000000";
bfm_llll <= bfm_L0L;
end if;
else
bfm_lilL <= "00000000000000000000000000000000";
bfm_LLLL <= BFM_IIL;
end if;
else
bfm_lill <= "00000000000000000000000000000000";
Bfm_llll <= bfm_l0L;
end if;
when others =>
BFM_LIll <= "00000000000000000000000000000000";
bfm_LLLL <= BFm_lil;
assert (False) report "Data Controller Illegal State";
end case;
end process;
process (SYSRESETn,HCLK)
begin
if (SYSRESETN = '0') then
bfm_o1oL <= '0';
BFM_l1ol <= '0';
elsif (HCLK'eveNT and HCLK = '1') then
bfM_O1OL <= bfm_OOOL;
BFM_L1ol <= bfm_IOOL;
end if;
end process;
process
variable L: LIne;
begin
wait until (HCLK'EVENT and HCLK = '1');
if (BFm_o1ol = '1') then
WRITE_String(L,
"--------- Execution of BFM Script Started ---------");
WRITeline(OUTPUT,
L);
end if;
if (BFM_l1ol = '1') then
wait until (bfm_l0LL'EVent and BFM_l0ll = '1');
write_stRING(L,
"--------- Successful Execution of BFM Script Complete ---------");
Writeline(output,
l);
assert (false) report "Breakpoint encountered - normal completion of BFM-driven simulation" severity failure;
end if;
end process;
process (SYSRESETn,HCLK)
begin
if (SYSRESETn = '0') then
BFM_O0Ll <= "000000000";
elsif (HCLK'eveNT and HCLK = '1') then
if (bfm_l1ol = '1') then
Bfm_o0ll <= BFM_O0ll+1;
end if;
end if;
end process;
process (SYSRESETN,HCLK)
begin
if (SYSRESETn = '0') then
bfM_L0LL <= '0';
elsif (HCLK'event and HCLK = '1') then
if (BFM_o0ll = std_logic_VECTOR(to_unsignED(bfm_l0,
9))) then
Bfm_l0ll <= '1';
end if;
end if;
end process;
end BFM_O;
