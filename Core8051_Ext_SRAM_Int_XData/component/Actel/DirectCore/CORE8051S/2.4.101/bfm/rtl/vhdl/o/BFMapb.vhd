library ieee;
use Ieee.std_logiC_1164.all;
entity BFMaPB is
port (PCLK: in std_logIC;
PRESETN: in STD_logic;
PREADY: in STD_Logic;
PSLVERR: in STD_Logic;
PRDATA: in Std_logIC_Vector(31 downto 0);
IRQ: in std_LOGIc;
FIQ: in sTD_LOgic;
PSEL: out std_logIC;
PENABLE: out Std_logiC;
PWRITE: out STD_logic;
PADDR: out STD_logic_VECTOR(31 downto 0);
PWDATA: out std_LOGIC_vectoR(31 downto 0));
end BFMapb;

library ieeE;
use ieee.std_logIC_1164.all;
use IEEE.STD_logic_UNSIgned. "-";
use Ieee.STD_logic_UNSIGNed. "+";
use IEEe.numERIC_std.all;
use work.numeRIC_Std_addITIOns.all;
use std.tEXTIO.all;
use work.standarD_TExtio_aDDITIons.all;
use woRK.iO_UTIls.all;
architecture CORE8051S_BFM_o of BFMapb is

constant CORE8051S_bfm_L: TIme := 1 ns;

constant CORE8051S_BFM_i: std_LOGIC_vector(1 downto 0) := "00";

constant CORE8051S_bFM_OL: stD_LOGic_vectOR(1 downto 0) := "00";

constant CORE8051S_bfm_LL: std_lOGIC_Vector(1 downto 0) := "01";

constant CORE8051S_bfM_IL: STd_logic_VECTor(1 downto 0) := "10";

constant CORE8051S_bfm_oI: INTEGer := 1023;

type CORE8051S_BFM_li is (CORE8051S_bfm_iI,CORE8051S_Bfm_o0,CORE8051S_bfm_l0,CORE8051S_BFM_I0,CORE8051S_bfm_o1,CORE8051S_BFM_L1);

type CORE8051S_bfm_I1 is array (0 to CORE8051S_Bfm_oi) of Std_loGIC_VEctor(31 downto 0);

type CORE8051S_bfM_OOL is array (0 to CORE8051S_BFM_oi) of STD_logic;

type CORE8051S_BFM_Lol is array (0 to CORE8051S_bfm_oi) of STD_logic_vECTor(21 downto 0);

type CORE8051S_BFM_Iol is array (0 to CORE8051S_bfm_OI) of std_LOGic_vectOR(1 downto 0);

signal CORE8051S_BFM_oll: integER;

signal CORE8051S_Bfm_lll: CORE8051S_BFM_Ool;

signal CORE8051S_Bfm_ill: CORE8051S_bfM_OOL;

signal CORE8051S_BFM_Oil: CORE8051S_bFM_OOl;

signal CORE8051S_bfm_liL: CORE8051S_BFM_ool;

signal CORE8051S_BFM_IIl: CORE8051S_BFM_lol;

signal CORE8051S_BFM_o0l: CORE8051S_BFM_ool;

signal CORE8051S_BFM_l0l: CORE8051S_bFM_IOl;

signal CORE8051S_BFM_I0l: CORE8051S_bFM_I1;

signal CORE8051S_bfm_O1L: CORE8051S_BFM_ool;

signal CORE8051S_bfm_L1L: CORE8051S_bfM_IOL;

signal CORE8051S_Bfm_i1l: CORE8051S_bfm_i1;

signal CORE8051S_BFM_ooi: STD_logic_VECTOR(21 downto 0);

signal CORE8051S_BFM_Loi: STD_logic;

signal CORE8051S_bfm_iOI: std_LOGIc;

signal CORE8051S_bfm_OLI: std_lOGIC;

signal CORE8051S_BFM_LLi: sTD_LOgic;

signal CORE8051S_BFM_Ili: std_lOGIC;

signal CORE8051S_bfm_OII: STd_logic_VECTor(1 downto 0);

signal CORE8051S_bfm_liI: std_LOGIC_vectoR(31 downto 0);

signal CORE8051S_bfm_III: stD_LOGic;

signal CORE8051S_bfm_o0I: STD_logic_VECTOR(1 downto 0);

signal CORE8051S_BFM_l0i: stD_LOGIc_vectOR(31 downto 0);

signal CORE8051S_BFm_i0i: unSIGNED(31 downto 0);

signal CORE8051S_bfM_O1I: std_LOGIC;

signal CORE8051S_bfm_l1I: Std_logiC;

signal CORE8051S_bfm_I1I: STD_logic;

signal CORE8051S_BFM_oo0: Std_logiC;

signal CORE8051S_bfm_lo0: std_loGIC;

signal CORE8051S_bfm_io0: STD_logic;

signal CORE8051S_BFM_Ol0: STD_logic;

signal CORE8051S_BFm_ll0: sTD_LOgic;

signal CORE8051S_bfm_il0: std_loGIC;

signal CORE8051S_bfm_oi0: STD_logic;

signal CORE8051S_BFM_Li0: std_LOGIC;

signal CORE8051S_bfm_iI0: std_logIC;

signal CORE8051S_BFM_O00: std_loGIC;

signal CORE8051S_Bfm_l00: CORE8051S_bfm_LI;

signal CORE8051S_Bfm_i00: CORE8051S_BFm_li;

signal CORE8051S_BFM_O10: Std_logiC_VECtor(31 downto 0);

signal CORE8051S_Bfm_l10: sTD_LOgic;

signal CORE8051S_bFM_I10: sTD_LOgic;

signal CORE8051S_bfm_OO1: std_LOGIc;

signal CORE8051S_bfm_lo1: STD_logic_vECTOR(31 downto 0);

signal CORE8051S_BFM_Io1: STD_logic;

signal CORE8051S_bfm_oL1: stD_LOGic;

signal CORE8051S_bfm_ll1: STd_logic;

begin
CORE8051S_BFM_il1:
process
file CORE8051S_bfm_OI1: TEXT is in "transAddr.vec";
file CORE8051S_bfm_li1: text is in "transData.vec";
file CORE8051S_bfm_II1: text is in "transInstr.vec";
file CORE8051S_BFM_O01: TEXt is in "numErrors.vec";
file CORE8051S_bfm_l01: TEXT is in "numTrans.vec";
variable L: lINE;
variable CORE8051S_BFM_i01: INTEger := 0;
variable x: bIT_VEctor(31 downto 0);
variable CORE8051S_BFM_O11: STd_logic_VECTOr(31 downto 0);
variable Y: std_loGIC_Vector(31 downto 0);
variable CORE8051S_BFM_l11: STD_Logic_veCTOR(31 downto 0);
begin
while not endfiLE(CORE8051S_bfm_OI1)
loop
REAdline(CORE8051S_bfM_OI1,
l);
hreAD(l,
X);
CORE8051S_BFM_I0l(CORE8051S_bfm_i01) <= To_stdLOGICVector(x);
CORE8051S_Bfm_i01 := CORE8051S_bfm_I01+1;
end loop;
CORE8051S_BFM_I01 := 0;
while not ENDFIle(CORE8051S_bFM_LI1)
loop
Readline(CORE8051S_BFM_Li1,
l);
HREAd(L,
X);
CORE8051S_bfm_i1L(CORE8051S_Bfm_i01) <= To_stdLOGICVector(x);
CORE8051S_BFm_i01 := CORE8051S_bFM_I01+1;
end loop;
CORE8051S_bfM_I01 := 0;
while not endfiLE(CORE8051S_bfm_iI1)
loop
rEADLIne(CORE8051S_Bfm_ii1,
L);
HREAD(l,
X);
CORE8051S_bfm_l11 := To_stdloGICVECtor(X);
CORE8051S_BFM_L1l(CORE8051S_BFM_i01) <= CORE8051S_BFM_L11(1 downto 0);
CORE8051S_BFm_o1l(CORE8051S_bfm_I01) <= CORE8051S_Bfm_l11(2);
CORE8051S_Bfm_l0l(CORE8051S_BFM_i01) <= CORE8051S_BFM_l11(4 downto 3);
CORE8051S_BFM_o0l(CORE8051S_Bfm_i01) <= CORE8051S_bfm_L11(5);
CORE8051S_BFM_lil(CORE8051S_BFM_I01) <= CORE8051S_Bfm_l11(6);
CORE8051S_BFM_Oil(CORE8051S_BFM_i01) <= CORE8051S_BFM_l11(7);
CORE8051S_bfm_iLL(CORE8051S_bFM_I01) <= CORE8051S_bfm_L11(8);
CORE8051S_BFM_Lll(CORE8051S_bfm_I01) <= CORE8051S_bfm_l11(9);
CORE8051S_bfM_IIL(CORE8051S_BFM_I01) <= CORE8051S_bfm_l11(31 downto 10);
CORE8051S_bfm_i01 := CORE8051S_bfm_I01+1;
end loop;
ReadlinE(CORE8051S_BFM_l01,
l);
HREAD(L,
x);
Y := to_sTDLOGIcvectoR(X);
CORE8051S_BFM_i0i <= UNSIGNed(Y);
REAdline(CORE8051S_BFM_o01,
L);
Hread(L,
X);
CORE8051S_bfM_O11 := tO_STDlogicveCTOR(X);
if (CORE8051S_BFM_o11 > X"00000000") then
WRITe_string(l,
"Core8051s BFM script compiler encountered "&To_hstriNG(unsignED(CORE8051S_BFM_o11))&" error(s)");
writeLINE(OUtput,
l);
Write_stRING(L,
"Please fix BFM script and re-run simulation");
writeLINE(oUTPUT,
l);
assert (fALSE) report " - see bfmCompile.log for details of BFM script errors" severity Failure;
end if;
wait;
end process;
process
variable CORE8051S_bfm_i11: boolEAN := True;
variable L: Line;
begin
if (CORE8051S_BFM_I11) then
wRITE_string(l,
"=================================================");
writELINE(OUTPUT,
l);
write_STRINg(L,
"           Actel Core8051s Bus Functional Model (BFM)");
WRITEline(OUtput,
L);
write_STRing(L,
"=================================================");
writelINE(Output,
l);
write_STRINg(l,
"");
WRiteline(OUTPUT,
L);
Write_sTRING(L,
"All Core8051s APB space is within the upper 4kB");
wrITELINe(OUTput,
l);
Write_STRING(l,
"of External Data Memory Space.");
WRIteline(OUTPUt,
L);
WRite_strING(L,
"All APB addresses shown below are relative to 0xf000");
Writeline(Output,
L);
Write_sTRING(L,
"in XDATA Space.");
WRIteline(outpuT,
L);
WRITE_string(l,
"");
wRITELine(OUTput,
L);
wait until (CORE8051S_bfm_LL1'EVEnt and CORE8051S_bfM_LL1 = '1');
CORE8051S_bfm_i11 := False;
else
wait;
end if;
end process;
CORE8051S_bfm_OOOL:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_BFM_ooi <= ("00"&X"00000");
elsif (PCLK'Event and PCLK = '1') then
if ((CORE8051S_bFM_OL0 = '1') and (CORE8051S_BFM_ooi /= ("00"&X"00000"))) then
CORE8051S_bfm_ooI <= CORE8051S_BFM_ooi-1;
elsif (CORE8051S_bfm_io1 = '1') then
CORE8051S_bfM_OOI <= CORE8051S_BFm_iil(CORE8051S_bfm_OLL+1);
end if;
end if;
end process;
CORE8051S_bfm_loOL:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_oLL <= 0;
elsif (PCLK'evenT and PCLK = '1') then
if (CORE8051S_BFM_Io1 = '1') then
CORE8051S_BFM_oll <= CORE8051S_BFM_oll+1;
end if;
end if;
end process;
CORE8051S_bfm_iOOL:
process (PRESETN,CORE8051S_bFM_OLl)
begin
if (PRESETN = '0') then
CORE8051S_bfm_loI <= '0';
CORE8051S_BFM_Ioi <= '0';
CORE8051S_bfm_oli <= '0';
CORE8051S_BFm_lli <= '0';
CORE8051S_Bfm_oii <= "00";
CORE8051S_bfm_LII <= X"00000000";
CORE8051S_BFM_iii <= '0';
CORE8051S_BFM_o0i <= "00";
CORE8051S_BFM_Ili <= '0';
CORE8051S_bfm_l0I <= X"00000000";
elsif (PRESETN = '1') then
CORE8051S_BFM_LOi <= CORE8051S_bFM_LLl(CORE8051S_BFm_oll);
CORE8051S_bfm_ioI <= CORE8051S_BFM_ILl(CORE8051S_BFM_Oll);
CORE8051S_BFM_Oli <= CORE8051S_BFM_oil(CORE8051S_BFM_oll);
CORE8051S_BFM_lli <= CORE8051S_bFM_Lil(CORE8051S_BFM_oll);
CORE8051S_bFM_OIi <= CORE8051S_bfm_L0L(CORE8051S_Bfm_oll);
CORE8051S_bfM_LII <= CORE8051S_bfm_I0L(CORE8051S_Bfm_oll);
CORE8051S_BFM_Iii <= CORE8051S_bfm_o1L(CORE8051S_Bfm_oll);
CORE8051S_BFm_o0i <= CORE8051S_BFM_L1L(CORE8051S_bfM_OLL);
CORE8051S_bfm_iLI <= CORE8051S_BFM_o0l(CORE8051S_BFM_Oll);
CORE8051S_BFm_l0i <= CORE8051S_bfm_i1l(CORE8051S_BFM_oll);
end if;
end process;
CORE8051S_Bfm_oloL:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_l00 <= CORE8051S_Bfm_ii;
elsif (PCLK'evENT and PCLK = '1') then
CORE8051S_bfm_l00 <= CORE8051S_bfm_i00;
end if;
end process;
CORE8051S_BFM_llol:
process (CORE8051S_BFM_l00,CORE8051S_BFm_loi,CORE8051S_bfm_OII,CORE8051S_Bfm_ooi,CORE8051S_bFM_LLi,CORE8051S_Bfm_oli,IRQ,FIQ,PREADY,CORE8051S_BFM_Ioi,CORE8051S_Bfm_ll0,CORE8051S_BFM_l0i,CORE8051S_BFM_iii,CORE8051S_bFM_ILi,CORE8051S_bfM_LII,CORE8051S_BFM_ii0)
begin
CORE8051S_BFM_ol1 <= '0';
CORE8051S_Bfm_io1 <= '0';
CORE8051S_bfm_ol0 <= '0';
CORE8051S_Bfm_o10 <= X"00000000";
CORE8051S_BFm_l10 <= '0';
CORE8051S_bfm_i10 <= '0';
CORE8051S_bfM_OO1 <= '0';
CORE8051S_Bfm_lo1 <= X"00000000";
CORE8051S_bfm_IL0 <= '0';
CORE8051S_bfM_OI0 <= '0';
CORE8051S_BFM_Li0 <= '0';
CORE8051S_Bfm_o00 <= '0';
case (CORE8051S_bfm_L00) is
when CORE8051S_bfm_ii =>
CORE8051S_bfm_I00 <= CORE8051S_bfM_O0;
when CORE8051S_bfm_O0 =>
if (CORE8051S_bfm_LOI = '1') then
CORE8051S_BFM_Ol1 <= '1';
CORE8051S_BFM_i00 <= CORE8051S_bfm_L1;
elsif (CORE8051S_bfM_OII = CORE8051S_BFM_i) then
CORE8051S_bFM_I00 <= CORE8051S_bFM_O1;
else
CORE8051S_Bfm_o10 <= CORE8051S_bfM_LII;
CORE8051S_BFM_l10 <= '1';
CORE8051S_BFM_i10 <= CORE8051S_bfm_III;
if (CORE8051S_BFM_iii = '1') then
CORE8051S_BFM_lo1 <= CORE8051S_bfm_l0I;
else
CORE8051S_Bfm_lo1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end if;
CORE8051S_BFM_I00 <= CORE8051S_bfM_L0;
end if;
when CORE8051S_bfm_L0 =>
CORE8051S_BFm_o10 <= CORE8051S_BFm_lii;
CORE8051S_bfm_L10 <= '1';
CORE8051S_BFm_oo1 <= '1';
CORE8051S_BFM_I10 <= CORE8051S_BFm_iii;
if (CORE8051S_bFM_IIi = '1') then
CORE8051S_BFM_lo1 <= CORE8051S_bFM_L0i;
else
CORE8051S_BFM_lo1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end if;
CORE8051S_BFM_I00 <= CORE8051S_bfm_i0;
when CORE8051S_Bfm_i0 =>
if (PREADY = '1') then
if (CORE8051S_BFm_ioi = '1') then
if (CORE8051S_BFm_ll0 = '1') then
CORE8051S_BFM_IO1 <= '1';
CORE8051S_bFM_LI0 <= '1';
CORE8051S_Bfm_i00 <= CORE8051S_bfM_O0;
else
CORE8051S_BFM_o00 <= not CORE8051S_Bfm_ii0;
CORE8051S_bfM_I00 <= CORE8051S_BFM_o0;
end if;
else
CORE8051S_bfM_IO1 <= '1';
if (CORE8051S_BFM_iii = '1') then
CORE8051S_bfm_oI0 <= '1';
CORE8051S_bfM_I00 <= CORE8051S_bfm_O0;
else
CORE8051S_BFM_il0 <= '1';
CORE8051S_bfm_I00 <= CORE8051S_Bfm_o0;
end if;
end if;
else
CORE8051S_Bfm_o10 <= CORE8051S_BFM_lii;
CORE8051S_Bfm_l10 <= '1';
CORE8051S_Bfm_oo1 <= '1';
CORE8051S_BFM_I10 <= CORE8051S_bfm_iiI;
if (CORE8051S_BFM_Iii = '1') then
CORE8051S_bfm_lO1 <= CORE8051S_Bfm_l0i;
else
CORE8051S_BFM_Lo1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end if;
CORE8051S_bfm_i00 <= CORE8051S_bFM_I0;
end if;
when CORE8051S_BFm_o1 =>
if (CORE8051S_bfm_LLI = '1') then
if (IRQ = '1') then
CORE8051S_bfM_IO1 <= '1';
CORE8051S_BFM_I00 <= CORE8051S_BFM_o0;
else
CORE8051S_BFM_i00 <= CORE8051S_bfm_o1;
end if;
elsif (CORE8051S_BFM_Oli = '1') then
if (FIQ = '1') then
CORE8051S_bfm_iO1 <= '1';
CORE8051S_bfm_i00 <= CORE8051S_Bfm_o0;
else
CORE8051S_bfM_I00 <= CORE8051S_BFm_o1;
end if;
elsif (CORE8051S_bFM_OOi = ("00"&X"00000")) then
CORE8051S_bfm_io1 <= '1';
CORE8051S_BFM_i00 <= CORE8051S_BFM_o0;
else
CORE8051S_bfm_oL0 <= '1';
CORE8051S_bfm_i00 <= CORE8051S_BFM_O1;
end if;
when CORE8051S_BFM_l1 =>
CORE8051S_BFm_i00 <= CORE8051S_bfm_L1;
when others =>
CORE8051S_BFm_i00 <= CORE8051S_bFM_II;
assert (fALSE) report "BFM APB Controller Illegal State";
end case;
end process;
CORE8051S_bfm_ilOL:
process (PCLK)
variable L: Line;
begin
if (PCLK'eveNT and PCLK = '1') then
CORE8051S_bfm_O1I <= CORE8051S_BFM_Oli;
CORE8051S_bfm_L1I <= CORE8051S_bfm_lLI;
CORE8051S_bfm_I1I <= FIQ;
CORE8051S_bfm_oo0 <= IRQ;
end if;
if (CORE8051S_bfm_LO0 = '1') then
wRITE_string(l,
"Waiting for FIQ assertion");
WRiteline(outpUT,
L);
end if;
if (CORE8051S_bfm_IO0 = '1') then
writE_STring(l,
"Waiting for IRQ assertion");
writeLINE(output,
l);
end if;
if ((FIQ and (not CORE8051S_BFM_i1i)) = '1') then
write_sTRING(L,
"FIQ assertion detected");
WritelinE(outPUT,
L);
end if;
if ((IRQ and (not CORE8051S_BFM_oo0)) = '1') then
WRIte_striNG(L,
"IRQ assertion detected");
writelINE(ouTPUT,
l);
end if;
end process;
CORE8051S_bfm_oIOL:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_BFM_lo0 <= '0';
elsif (PCLK'EVENT and PCLK = '1') then
if (CORE8051S_bFM_LO0 = '1') then
CORE8051S_bfm_lo0 <= '0';
elsif ((CORE8051S_Bfm_oli and (not CORE8051S_bFM_O1i)) = '1') then
CORE8051S_Bfm_lo0 <= '1';
end if;
end if;
end process;
CORE8051S_BFM_liol:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_IO0 <= '0';
elsif (PCLK'EVEnt and PCLK = '1') then
if (CORE8051S_bfM_IO0 = '1') then
CORE8051S_bfM_IO0 <= '0';
elsif ((CORE8051S_bfm_llI and (not CORE8051S_bfm_l1I)) = '1') then
CORE8051S_bfm_IO0 <= '1';
end if;
end if;
end process;
CORE8051S_BFM_Iiol:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_ll1 <= '0';
PADDR <= X"00000000";
PSEL <= '0';
PENABLE <= '0';
PWRITE <= '0';
PWDATA <= X"00000000";
elsif (PCLK'EVENT and PCLK = '1') then
CORE8051S_bfm_ll1 <= CORE8051S_BFM_OL1;
PADDR <= CORE8051S_BFM_O10;
PSEL <= CORE8051S_bfm_l10;
PENABLE <= CORE8051S_BFM_oo1;
PWRITE <= CORE8051S_BFM_i10;
PWDATA <= CORE8051S_Bfm_lo1;
end if;
end process;
process
variable L: line;
begin
wait until (PCLK'event and PCLK = '1');
if (CORE8051S_bfM_LL1 = '1') then
WRITe_strinG(l,
"--------- Successful Execution of BFM Script Complete ---------");
WriteliNE(OUtput,
l);
assert (FAlse) report "Breakpoint encountered - normal completion of BFM-driven simulation" severity FAILURe;
end if;
end process;
CORE8051S_bfm_O0Ol:
process (PCLK)
variable l: lINE;
variable CORE8051S_Bfm_l0oL: String(1 to 9);
begin
if (PCLK'evenT and PCLK = '1') then
if ((CORE8051S_bfM_OI0 or CORE8051S_BFm_il0) = '1') then
if (CORE8051S_BFm_oi0 = '1') then
if (CORE8051S_BFM_o0i = CORE8051S_Bfm_ol) then
write_sTRING(L,
"Write "&tO_HString(unsiGNED(CORE8051S_BFM_L0i(7 downto 0)))&" to address "&TO_hstriNG(unsiGNED(CORE8051S_Bfm_lii)));
wrITELINe(oUTPUT,
L);
elsif (CORE8051S_bfm_o0I = CORE8051S_bfm_LL) then
wrITE_string(l,
"Write "&TO_hstring(unsigneD(CORE8051S_bfm_l0I(15 downto 0)))&" to address "&To_hstRING(unSIGNED(CORE8051S_BFM_Lii)));
wrITELIne(Output,
L);
else
WRITe_strinG(L,
"Write "&TO_hstring(UNSigned(CORE8051S_bfm_L0I(31 downto 0)))&" to address "&TO_hstrinG(Unsigned(CORE8051S_BFM_Lii)));
wRITELine(outpUT,
l);
end if;
elsif ((CORE8051S_BFM_Ili = '1') and (CORE8051S_BFm_o0i = CORE8051S_bfm_OL)
and (PRDATA(7 downto 0) /= CORE8051S_bfM_L0I(7 downto 0))) then
WRite_strING(L,
"Read from address "&to_HSTRIng(UNSIGned(CORE8051S_bfm_lii))&"- data incorrect: Expected "&TO_hstring(UNsigned(CORE8051S_Bfm_l0i(7 downto 0)))&", Actual "&To_hstrING(unsiGNED(PRDATA(7 downto 0))));
WRIteline(ouTPUT,
l);
assert (falsE) report "Stop Encountered" severity FAILURe;
elsif ((CORE8051S_bfm_ilI = '1') and (CORE8051S_BFM_o0i = CORE8051S_bfm_LL)
and (PRDATA(15 downto 0) /= CORE8051S_bFM_L0i(15 downto 0))) then
write_STRing(l,
"Read from address "&to_hstRING(unSIGNED(CORE8051S_bfm_LII))&"- data incorrect: Expected "&To_hstriNG(unsIGNED(CORE8051S_BFm_l0i(15 downto 0)))&", Actual "&TO_hstring(UNSIgned(PRDATA(15 downto 0))));
wrITELIne(outPUT,
l);
assert (FALSE) report "Stop Encountered" severity faiLURE;
elsif ((CORE8051S_bFM_ILi = '1') and (CORE8051S_Bfm_o0i = CORE8051S_bFM_IL)
and (PRDATA(31 downto 0) /= CORE8051S_bfm_L0I(31 downto 0))) then
write_STring(L,
"Read from address "&to_HSTring(unSIGNEd(CORE8051S_bfm_lII))&"- data incorrect: Expected "&To_hstriNG(UNSIGned(CORE8051S_bfm_l0I))&", Actual "&to_hstRING(unsignED(PRDATA)));
WRIteline(output,
l);
assert (faLSE) report "Stop Encountered" severity failure;
end if;
if (CORE8051S_bFM_IL0 = '1') then
if (CORE8051S_bfM_O0I = CORE8051S_bFM_OL) then
write_STRING(l,
"Read "&to_hsTRING(unsiGNED(PRDATA(7 downto 0)))&" from address "&to_hSTRINg(uNSIGNEd(CORE8051S_BFM_LIi)));
writelINE(OUTPUt,
l);
elsif (CORE8051S_bFM_O0i = CORE8051S_BFM_ll) then
WRite_strING(L,
"Read "&To_hstrING(unsigNED(PRDATA(15 downto 0)))&" from address "&To_hstriNG(unsiGNED(CORE8051S_bfm_liI)));
wriTELINE(oUTPUT,
L);
else
wRITE_strinG(L,
"Read "&to_hSTRING(Unsigned(PRDATA(31 downto 0)))&" from address "&To_hstrING(UnsigneD(CORE8051S_bfm_lii)));
writeliNE(oUTPUT,
L);
end if;
end if;
end if;
end if;
end process;
CORE8051S_Bfm_i0oL:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_ii0 <= '0';
elsif (PCLK'event and PCLK = '1') then
if (CORE8051S_BFM_o00 = '1') then
CORE8051S_BFM_ii0 <= '1';
elsif (CORE8051S_BFM_li0 = '1') then
CORE8051S_bfM_II0 <= '0';
end if;
end if;
end process;
CORE8051S_BFm_o1oL:
process (CORE8051S_bfm_o0I,CORE8051S_BFm_l0i,CORE8051S_BFm_lii,PRDATA)
begin
if (((CORE8051S_Bfm_o0i = CORE8051S_BFM_ol) and (((PRDATA(7) and CORE8051S_Bfm_l0i(7)) = CORE8051S_bfm_l0I(7)) and ((PRDATA(6) and CORE8051S_Bfm_l0i(6)) = CORE8051S_Bfm_l0i(6))
and ((PRDATA(5) and CORE8051S_Bfm_l0i(5)) = CORE8051S_BFM_l0i(5))
and ((PRDATA(4) and CORE8051S_bfm_l0I(4)) = CORE8051S_BFm_l0i(4))
and ((PRDATA(3) and CORE8051S_bfM_L0I(3)) = CORE8051S_bFM_L0i(3))
and ((PRDATA(2) and CORE8051S_bfM_L0I(2)) = CORE8051S_bfM_L0I(2))
and ((PRDATA(1) and CORE8051S_bfM_L0I(1)) = CORE8051S_bFM_L0i(1))
and ((PRDATA(0) and CORE8051S_bfm_l0I(0)) = CORE8051S_Bfm_l0i(0)))) or ((CORE8051S_bfm_o0I = CORE8051S_BFM_ll) and (((PRDATA(15) and CORE8051S_BFM_l0i(15)) = CORE8051S_bfm_l0I(15)) and ((PRDATA(14) and CORE8051S_BFM_L0i(14)) = CORE8051S_bfm_l0I(14))
and ((PRDATA(13) and CORE8051S_BFm_l0i(13)) = CORE8051S_BFM_L0i(13))
and ((PRDATA(12) and CORE8051S_bfM_L0I(12)) = CORE8051S_BFM_l0i(12))
and ((PRDATA(11) and CORE8051S_bfm_L0I(11)) = CORE8051S_BFM_l0i(11))
and ((PRDATA(10) and CORE8051S_bfm_l0i(10)) = CORE8051S_Bfm_l0i(10))
and ((PRDATA(9) and CORE8051S_BFM_l0i(9)) = CORE8051S_bfm_L0I(9))
and ((PRDATA(8) and CORE8051S_bfm_L0I(8)) = CORE8051S_bfm_l0I(8))
and ((PRDATA(7) and CORE8051S_bfm_l0I(7)) = CORE8051S_bfm_L0I(7))
and ((PRDATA(6) and CORE8051S_Bfm_l0i(6)) = CORE8051S_BFM_l0i(6))
and ((PRDATA(5) and CORE8051S_bfm_l0I(5)) = CORE8051S_BFM_l0i(5))
and ((PRDATA(4) and CORE8051S_BFM_L0i(4)) = CORE8051S_bfm_l0i(4))
and ((PRDATA(3) and CORE8051S_BFM_l0i(3)) = CORE8051S_BFM_l0i(3))
and ((PRDATA(2) and CORE8051S_bfm_L0I(2)) = CORE8051S_BFM_L0I(2))
and ((PRDATA(1) and CORE8051S_Bfm_l0i(1)) = CORE8051S_BFM_L0i(1))
and ((PRDATA(0) and CORE8051S_BFM_l0i(0)) = CORE8051S_BFM_L0i(0))))
or ((CORE8051S_BFM_o0i = CORE8051S_BFM_IL) and ((PRDATA(31) and CORE8051S_BFM_l0i(31)) = CORE8051S_BFm_l0i(31))
and ((PRDATA(30) and CORE8051S_bfm_l0I(30)) = CORE8051S_bfm_L0I(30))
and ((PRDATA(29) and CORE8051S_bfm_l0i(29)) = CORE8051S_bFM_L0I(29))
and ((PRDATA(28) and CORE8051S_BFM_L0i(28)) = CORE8051S_BFM_l0i(28))
and ((PRDATA(27) and CORE8051S_BFM_l0i(27)) = CORE8051S_BFm_l0i(27))
and ((PRDATA(26) and CORE8051S_Bfm_l0i(26)) = CORE8051S_bFM_L0I(26))
and ((PRDATA(25) and CORE8051S_Bfm_l0i(25)) = CORE8051S_BFM_L0i(25))
and ((PRDATA(24) and CORE8051S_bfm_l0i(24)) = CORE8051S_bFM_L0I(24))
and ((PRDATA(23) and CORE8051S_bFM_L0I(23)) = CORE8051S_BFM_L0I(23))
and ((PRDATA(22) and CORE8051S_Bfm_l0i(22)) = CORE8051S_bfm_L0I(22))
and ((PRDATA(21) and CORE8051S_bFM_L0I(21)) = CORE8051S_bFM_L0I(21))
and ((PRDATA(20) and CORE8051S_bfm_l0i(20)) = CORE8051S_BFM_L0I(20))
and ((PRDATA(19) and CORE8051S_bFM_L0I(19)) = CORE8051S_BFM_L0i(19))
and ((PRDATA(18) and CORE8051S_BFM_l0i(18)) = CORE8051S_bfm_l0I(18))
and ((PRDATA(17) and CORE8051S_bFM_L0I(17)) = CORE8051S_BFM_L0i(17))
and ((PRDATA(16) and CORE8051S_BFM_l0i(16)) = CORE8051S_bfm_l0i(16))
and ((PRDATA(15) and CORE8051S_bFM_L0I(15)) = CORE8051S_bfm_l0I(15))
and ((PRDATA(14) and CORE8051S_bfM_L0I(14)) = CORE8051S_BFM_L0I(14))
and ((PRDATA(13) and CORE8051S_bfm_l0i(13)) = CORE8051S_BFM_L0i(13))
and ((PRDATA(12) and CORE8051S_bfM_L0I(12)) = CORE8051S_Bfm_l0i(12))
and ((PRDATA(11) and CORE8051S_bFM_L0I(11)) = CORE8051S_BFM_L0I(11))
and ((PRDATA(10) and CORE8051S_bfm_L0I(10)) = CORE8051S_bFM_L0I(10))
and ((PRDATA(9) and CORE8051S_bfm_l0i(9)) = CORE8051S_BFM_L0i(9))
and ((PRDATA(8) and CORE8051S_BFM_l0i(8)) = CORE8051S_bfm_l0i(8))
and ((PRDATA(7) and CORE8051S_bFM_L0I(7)) = CORE8051S_bfm_l0I(7))
and ((PRDATA(6) and CORE8051S_bfm_L0I(6)) = CORE8051S_Bfm_l0i(6))
and ((PRDATA(5) and CORE8051S_bfm_l0i(5)) = CORE8051S_bfm_l0i(5))
and ((PRDATA(4) and CORE8051S_bfm_l0i(4)) = CORE8051S_bfm_L0I(4))
and ((PRDATA(3) and CORE8051S_bfm_l0i(3)) = CORE8051S_BFM_L0I(3))
and ((PRDATA(2) and CORE8051S_bfM_L0I(2)) = CORE8051S_bfm_l0I(2))
and ((PRDATA(1) and CORE8051S_bfM_L0I(1)) = CORE8051S_BFM_L0i(1))
and ((PRDATA(0) and CORE8051S_BFM_L0i(0)) = CORE8051S_BFm_l0i(0)))) then
CORE8051S_bfm_LL0 <= '1';
else
CORE8051S_bfm_lL0 <= '0';
end if;
end process;
CORE8051S_BFm_l1ol:
process (PCLK)
variable l: LIne;
begin
if (PCLK'Event and PCLK = '1') then
if ((CORE8051S_bfM_O00 and (not CORE8051S_bfm_II0)) = '1') then
if (CORE8051S_bfm_o0I = CORE8051S_BFM_ol) then
wRITE_STRing(l,
"Polling address "&to_hsTRING(uNSIGNED(CORE8051S_bfM_LII))&" for bitmask "&to_HSTRING(unsigNED(CORE8051S_bfm_l0i(7 downto 0))));
writelinE(OUTPut,
L);
elsif (CORE8051S_bfm_o0I = CORE8051S_bfm_ll) then
Write_string(L,
"Polling address "&to_HSTRINg(unsigned(CORE8051S_bfm_lII))&" for bitmask "&to_hsTRING(UNSigned(CORE8051S_bFM_L0I(15 downto 0))));
writeline(Output,
L);
else
write_stRING(l,
"Polling address "&TO_Hstring(UNsigned(CORE8051S_BFM_lii))&" for bitmask "&TO_hstring(uNSIGNED(CORE8051S_BFM_l0i(31 downto 0))));
writeLINE(outPUT,
l);
end if;
end if;
if (CORE8051S_BFM_Li0 = '1') then
if (CORE8051S_bFM_O0I = CORE8051S_bfm_ol) then
WRITE_string(l,
"Poll completed - read "&to_hstring(UNSIGNEd(PRDATA(7 downto 0)))&" from address "&TO_HSTring(unsigned(CORE8051S_bfm_LII)));
wRITELINE(OUtput,
l);
elsif (CORE8051S_BFM_O0i = CORE8051S_bfm_LL) then
WRITe_string(l,
"Poll completed - read "&to_hstrinG(UNSIGned(PRDATA(15 downto 0)))&" from address "&TO_HSTring(unsignED(CORE8051S_bFM_LII)));
Writeline(OUTPut,
L);
else
Write_strinG(l,
"Poll completed - read "&tO_HSTRINg(UNsigned(PRDATA))&" from address "&to_hstring(uNSIGNED(CORE8051S_BFM_lii)));
wRITELINE(output,
L);
end if;
end if;
end if;
end process;
end CORE8051S_BFM_o;
