library IEEE;
use ieee.STd_logic_1164.all;
entity BFMAPB is
port (PCLK: in STD_logic;
PRESETN: in STD_logic;
PREADY: in std_loGIC;
PSLVERR: in STD_LOGic;
PRDATA: in STD_LOgic_vector(31 downto 0);
IRQ: in STD_logic;
FIQ: in STD_logic;
PSEL: out std_loGIC;
PENABLE: out STD_LOgic;
PWRITE: out Std_logic;
PADDR: out Std_logic_vECTOR(31 downto 0);
PWDATA: out STd_logic_vecTOR(31 downto 0));
end BFMapb;

library ieee;
use IEEE.std_lOGIC_1164.all;
use Ieee.stD_LOGIC_unsigned. "-";
use IEEE.STD_LOGic_unsignED. "+";
use IEEE.nuMERIC_STD.all;
use WORK.numERIC_STD_additionS.all;
use STD.TEXTIO.all;
use work.standard_TEXTIO_AdditionS.all;
use WORK.io_utiLS.all;
architecture CORE8051S_bfm_O of BFMapb is

constant CORE8051S_bfm_l: TIme := 1 Ns;

constant CORE8051S_BFM_I: Std_logic_VECTOR(1 downto 0) := "00";

constant CORE8051S_BFm_ol: STD_logic_vectOR(1 downto 0) := "00";

constant CORE8051S_BFM_LL: STD_Logic_vector(1 downto 0) := "01";

constant CORE8051S_BFM_il: std_logic_vECTOR(1 downto 0) := "10";

constant CORE8051S_bfM_OI: intEGER := 1023;

type CORE8051S_Bfm_li is (CORE8051S_bfm_II,CORE8051S_BFM_O0,CORE8051S_Bfm_l0,CORE8051S_bfm_i0,CORE8051S_BFM_o1,CORE8051S_bFM_L1);

type CORE8051S_BFm_i1 is array (0 to CORE8051S_bFM_OI) of std_logic_VECTOR(31 downto 0);

type CORE8051S_bfm_OOL is array (0 to CORE8051S_BFm_oi) of STD_logic;

type CORE8051S_bFM_LOl is array (0 to CORE8051S_bfm_oi) of Std_logic_vECTOR(21 downto 0);

type CORE8051S_BFM_iol is array (0 to CORE8051S_bfm_oi) of STD_LOgic_vector(1 downto 0);

signal CORE8051S_BFM_OLL: INTEGer;

signal CORE8051S_bfm_lll: CORE8051S_BFM_ool;

signal CORE8051S_bFM_ILL: CORE8051S_bfm_ool;

signal CORE8051S_bfm_oIL: CORE8051S_BFM_OOl;

signal CORE8051S_BFM_LIL: CORE8051S_Bfm_ool;

signal CORE8051S_BFM_IIL: CORE8051S_bfm_loL;

signal CORE8051S_bfm_o0L: CORE8051S_BFM_OOL;

signal CORE8051S_BFM_L0L: CORE8051S_bfm_iol;

signal CORE8051S_bfm_i0l: CORE8051S_bfM_I1;

signal CORE8051S_bfm_o1L: CORE8051S_BFM_Ool;

signal CORE8051S_BFM_L1L: CORE8051S_bfm_iol;

signal CORE8051S_BFm_i1l: CORE8051S_bfm_I1;

signal CORE8051S_bfm_OOI: std_loGIC_VECtor(21 downto 0);

signal CORE8051S_bfm_loi: Std_logic;

signal CORE8051S_bfm_IOI: std_logic;

signal CORE8051S_BFm_oli: STD_Logic;

signal CORE8051S_BFM_LLI: std_lOGIC;

signal CORE8051S_bfm_iLI: std_logic;

signal CORE8051S_bfm_oii: STD_logic_vectOR(1 downto 0);

signal CORE8051S_BFM_LII: STD_LOgic_vector(31 downto 0);

signal CORE8051S_bfm_iiI: std_lOGIC;

signal CORE8051S_bfM_O0I: STD_LOGic_vector(1 downto 0);

signal CORE8051S_bFM_L0I: std_lOGIC_VEctor(31 downto 0);

signal CORE8051S_bfM_I0I: UNSigned(31 downto 0);

signal CORE8051S_BFM_o1i: STD_LOgic;

signal CORE8051S_bfm_l1i: Std_logic;

signal CORE8051S_bfm_I1I: std_logic;

signal CORE8051S_bfm_OO0: std_LOGIC;

signal CORE8051S_bFM_LO0: STD_LOgic;

signal CORE8051S_BFM_Io0: STD_Logic;

signal CORE8051S_bfm_OL0: std_logic;

signal CORE8051S_bfm_LL0: std_logiC;

signal CORE8051S_bfm_IL0: std_loGIC;

signal CORE8051S_bfm_oi0: STD_logic;

signal CORE8051S_BFM_LI0: stD_LOGIC;

signal CORE8051S_bfm_ii0: STD_logic;

signal CORE8051S_bFM_O00: std_loGIC;

signal CORE8051S_BFM_L00: CORE8051S_BFM_Li;

signal CORE8051S_bfm_I00: CORE8051S_bfM_LI;

signal CORE8051S_bFM_O10: STd_logic_vecTOR(31 downto 0);

signal CORE8051S_BFM_L10: STD_LOGic;

signal CORE8051S_bfm_i10: std_logic;

signal CORE8051S_bfM_OO1: std_logiC;

signal CORE8051S_bfM_LO1: std_logIC_VECTOr(31 downto 0);

signal CORE8051S_bfm_io1: std_logiC;

signal CORE8051S_bfm_oL1: std_lOGIC;

signal CORE8051S_bfM_LL1: std_LOGIC;

begin
CORE8051S_Bfm_il1:
process
file CORE8051S_bfM_OI1: text is in "transAddr.vec";
file CORE8051S_BFm_li1: texT is in "transData.vec";
file CORE8051S_BFM_Ii1: text is in "transInstr.vec";
file CORE8051S_bfm_o01: tEXT is in "numErrors.vec";
file CORE8051S_bfm_l01: teXT is in "numTrans.vec";
variable l: linE;
variable CORE8051S_bfM_I01: inTEGER := 0;
variable x: Bit_vector(31 downto 0);
variable CORE8051S_bFM_O11: STD_logic_vectOR(31 downto 0);
variable Y: STD_LOGIc_vector(31 downto 0);
variable CORE8051S_BFm_l11: std_logic_VECTOR(31 downto 0);
begin
while not ENDFILE(CORE8051S_BFM_oi1)
loop
reADLINE(CORE8051S_bfm_oI1,
L);
Hread(l,
X);
CORE8051S_BFm_i0l(CORE8051S_BFM_I01) <= to_stdlOGICVECTOr(x);
CORE8051S_BFm_i01 := CORE8051S_bfm_i01+1;
end loop;
CORE8051S_bfm_I01 := 0;
while not enDFILE(CORE8051S_BFM_LI1)
loop
readline(CORE8051S_bfm_LI1,
L);
HREAD(L,
x);
CORE8051S_BFm_i1l(CORE8051S_BFM_I01) <= to_sTDLOGICVEctor(x);
CORE8051S_BFm_i01 := CORE8051S_BFm_i01+1;
end loop;
CORE8051S_bfm_i01 := 0;
while not endFILE(CORE8051S_bFM_II1)
loop
readlINE(CORE8051S_bfm_II1,
l);
hread(L,
x);
CORE8051S_BFM_l11 := TO_StdlogicvectOR(x);
CORE8051S_bfm_L1L(CORE8051S_bfm_i01) <= CORE8051S_BFM_l11(1 downto 0);
CORE8051S_bfm_O1L(CORE8051S_bfm_i01) <= CORE8051S_bfm_l11(2);
CORE8051S_bfm_l0l(CORE8051S_Bfm_i01) <= CORE8051S_bfm_l11(4 downto 3);
CORE8051S_bfm_o0L(CORE8051S_bfm_i01) <= CORE8051S_BFM_L11(5);
CORE8051S_BFM_LIL(CORE8051S_bfm_I01) <= CORE8051S_bfm_l11(6);
CORE8051S_BFM_oil(CORE8051S_bfM_I01) <= CORE8051S_BFM_l11(7);
CORE8051S_BFm_ill(CORE8051S_BFM_I01) <= CORE8051S_bfm_l11(8);
CORE8051S_bfm_llL(CORE8051S_BFM_i01) <= CORE8051S_Bfm_l11(9);
CORE8051S_bfm_iIL(CORE8051S_BFM_i01) <= CORE8051S_BFM_l11(31 downto 10);
CORE8051S_BFM_i01 := CORE8051S_bfm_i01+1;
end loop;
reADLINE(CORE8051S_BFM_L01,
l);
hrEAD(l,
X);
Y := to_stdlOGICvector(X);
CORE8051S_BFM_I0I <= unsigneD(Y);
readLINE(CORE8051S_bfm_o01,
L);
hread(l,
x);
CORE8051S_BFM_O11 := TO_stdlogicvecTOR(x);
if (CORE8051S_bFM_O11 > X"00000000") then
write_striNG(L,
"Core8051s BFM script compiler encountered "&to_hSTRING(Unsigned(CORE8051S_bfm_O11))&" error(s)");
WRITEline(output,
l);
wRITE_STRIng(l,
"Please fix BFM script and re-run simulation");
writelinE(OUtput,
l);
assert (false) report " - see bfmCompile.log for details of BFM script errors" severity FAILUre;
end if;
wait;
end process;
process
variable CORE8051S_BFM_i11: booleaN := true;
variable L: LIne;
begin
if (CORE8051S_BFM_I11) then
writE_STRING(l,
"=================================================");
writELINE(OUTPUT,
L);
WRITe_string(l,
"           Actel Core8051s Bus Functional Model (BFM)");
WRITELINe(output,
L);
WRITE_string(L,
"=================================================");
WRITELine(OUtput,
l);
write_strinG(L,
"");
wRITELINE(outpuT,
l);
Write_strinG(l,
"All Core8051s APB space is within the upper 4kB");
writeLINE(oUTPUT,
l);
Write_strinG(l,
"of External Data Memory Space.");
WRITeline(outpUT,
L);
write_strING(L,
"All APB addresses shown below are relative to 0xf000");
writelINE(OUtput,
l);
write_strinG(l,
"in XDATA Space.");
writeliNE(output,
L);
wrITE_STRIng(L,
"");
WRIteline(outPUT,
l);
wait until (CORE8051S_bfM_LL1'eVENT and CORE8051S_bfm_ll1 = '1');
CORE8051S_Bfm_i11 := falSE;
else
wait;
end if;
end process;
CORE8051S_BFM_Oool:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_ooI <= ("00"&X"00000");
elsif (PCLK'Event and PCLK = '1') then
if ((CORE8051S_bfm_ol0 = '1') and (CORE8051S_bfM_OOI /= ("00"&X"00000"))) then
CORE8051S_bfM_OOI <= CORE8051S_BFM_ooi-1;
elsif (CORE8051S_bFM_IO1 = '1') then
CORE8051S_BFM_Ooi <= CORE8051S_BFM_iil(CORE8051S_bfm_OLL+1);
end if;
end if;
end process;
CORE8051S_bfm_lool:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_oLL <= 0;
elsif (PCLK'Event and PCLK = '1') then
if (CORE8051S_bfm_io1 = '1') then
CORE8051S_bfm_oLL <= CORE8051S_bfm_oll+1;
end if;
end if;
end process;
CORE8051S_BFM_IOOl:
process (PRESETN,CORE8051S_BFm_oll)
begin
if (PRESETN = '0') then
CORE8051S_bfm_LOI <= '0';
CORE8051S_bFM_IOI <= '0';
CORE8051S_bFM_OLI <= '0';
CORE8051S_BFM_LLi <= '0';
CORE8051S_bfm_OII <= "00";
CORE8051S_BFM_lii <= X"00000000";
CORE8051S_bfM_III <= '0';
CORE8051S_bfm_O0I <= "00";
CORE8051S_BFM_ILI <= '0';
CORE8051S_BFM_L0I <= X"00000000";
elsif (PRESETN = '1') then
CORE8051S_BFM_Loi <= CORE8051S_BFM_Lll(CORE8051S_bFM_OLL);
CORE8051S_bfm_ioi <= CORE8051S_bFM_ILL(CORE8051S_bFM_OLL);
CORE8051S_BFM_oli <= CORE8051S_BFM_Oil(CORE8051S_BFM_oll);
CORE8051S_bfm_lLI <= CORE8051S_bfm_lil(CORE8051S_bfm_oll);
CORE8051S_bfm_oii <= CORE8051S_BFM_L0L(CORE8051S_bfm_oll);
CORE8051S_bfm_lii <= CORE8051S_bfM_I0L(CORE8051S_bfM_OLL);
CORE8051S_bfm_III <= CORE8051S_BFM_O1l(CORE8051S_Bfm_oll);
CORE8051S_BFm_o0i <= CORE8051S_bfm_L1L(CORE8051S_bfm_oll);
CORE8051S_bfm_ili <= CORE8051S_BFM_o0l(CORE8051S_bFM_OLL);
CORE8051S_BFM_l0i <= CORE8051S_BFM_I1L(CORE8051S_bfm_OLL);
end if;
end process;
CORE8051S_BFM_OLOl:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_L00 <= CORE8051S_BFM_Ii;
elsif (PCLK'eveNT and PCLK = '1') then
CORE8051S_bfm_l00 <= CORE8051S_BFM_I00;
end if;
end process;
CORE8051S_BFm_llol:
process (CORE8051S_bfm_l00,CORE8051S_BFm_loi,CORE8051S_bfm_oii,CORE8051S_BFM_ooi,CORE8051S_bfm_llI,CORE8051S_BFM_OLI,IRQ,FIQ,PREADY,CORE8051S_bfm_IOI,CORE8051S_BFM_LL0,CORE8051S_bfM_L0I,CORE8051S_BFM_III,CORE8051S_bfM_ILI,CORE8051S_bfM_LII,CORE8051S_bfM_II0)
begin
CORE8051S_bfm_ol1 <= '0';
CORE8051S_BFM_io1 <= '0';
CORE8051S_BFM_ol0 <= '0';
CORE8051S_bfm_o10 <= X"00000000";
CORE8051S_bfm_l10 <= '0';
CORE8051S_bfm_i10 <= '0';
CORE8051S_bfm_oo1 <= '0';
CORE8051S_bfm_lO1 <= X"00000000";
CORE8051S_bfm_IL0 <= '0';
CORE8051S_BFM_Oi0 <= '0';
CORE8051S_Bfm_li0 <= '0';
CORE8051S_BFM_O00 <= '0';
case (CORE8051S_bfm_l00) is
when CORE8051S_BFm_ii =>
CORE8051S_BFM_I00 <= CORE8051S_BFM_O0;
when CORE8051S_BFM_O0 =>
if (CORE8051S_bfM_LOI = '1') then
CORE8051S_bFM_OL1 <= '1';
CORE8051S_bfm_i00 <= CORE8051S_BFM_L1;
elsif (CORE8051S_bfm_oii = CORE8051S_bFM_I) then
CORE8051S_BFM_I00 <= CORE8051S_BFM_O1;
else
CORE8051S_BFM_O10 <= CORE8051S_BFm_lii;
CORE8051S_bfM_L10 <= '1';
CORE8051S_bfm_I10 <= CORE8051S_BFM_Iii;
if (CORE8051S_bfm_iii = '1') then
CORE8051S_BFM_lo1 <= CORE8051S_bfm_l0i;
else
CORE8051S_bfm_LO1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end if;
CORE8051S_BFM_I00 <= CORE8051S_BFM_L0;
end if;
when CORE8051S_bFM_L0 =>
CORE8051S_BFM_O10 <= CORE8051S_BFm_lii;
CORE8051S_bfM_L10 <= '1';
CORE8051S_bfm_oo1 <= '1';
CORE8051S_bFM_I10 <= CORE8051S_BFM_III;
if (CORE8051S_bfm_iii = '1') then
CORE8051S_BFM_LO1 <= CORE8051S_BFM_l0i;
else
CORE8051S_BFM_LO1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end if;
CORE8051S_BFM_I00 <= CORE8051S_BFM_i0;
when CORE8051S_bfm_i0 =>
if (PREADY = '1') then
if (CORE8051S_bfm_IOI = '1') then
if (CORE8051S_bfm_ll0 = '1') then
CORE8051S_bfm_IO1 <= '1';
CORE8051S_bfm_LI0 <= '1';
CORE8051S_bFM_I00 <= CORE8051S_bfM_O0;
else
CORE8051S_BFM_O00 <= not CORE8051S_bfm_ii0;
CORE8051S_bfm_i00 <= CORE8051S_Bfm_o0;
end if;
else
CORE8051S_bfm_io1 <= '1';
if (CORE8051S_bfm_iii = '1') then
CORE8051S_bfm_oi0 <= '1';
CORE8051S_BFM_i00 <= CORE8051S_Bfm_o0;
else
CORE8051S_BFM_Il0 <= '1';
CORE8051S_bfm_i00 <= CORE8051S_bfm_o0;
end if;
end if;
else
CORE8051S_BFM_O10 <= CORE8051S_BFM_LIi;
CORE8051S_bfm_L10 <= '1';
CORE8051S_BFM_oo1 <= '1';
CORE8051S_bfM_I10 <= CORE8051S_bfm_III;
if (CORE8051S_BFM_III = '1') then
CORE8051S_bfm_LO1 <= CORE8051S_bfM_L0I;
else
CORE8051S_bfM_LO1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
end if;
CORE8051S_BFM_i00 <= CORE8051S_BFm_i0;
end if;
when CORE8051S_bFM_O1 =>
if (CORE8051S_BFm_lli = '1') then
if (IRQ = '1') then
CORE8051S_BFM_IO1 <= '1';
CORE8051S_bfm_I00 <= CORE8051S_BFM_O0;
else
CORE8051S_Bfm_i00 <= CORE8051S_BFM_O1;
end if;
elsif (CORE8051S_BFm_oli = '1') then
if (FIQ = '1') then
CORE8051S_bfm_IO1 <= '1';
CORE8051S_BFM_i00 <= CORE8051S_bfm_o0;
else
CORE8051S_bFM_I00 <= CORE8051S_bfm_o1;
end if;
elsif (CORE8051S_BFm_ooi = ("00"&X"00000")) then
CORE8051S_BFM_IO1 <= '1';
CORE8051S_bfm_i00 <= CORE8051S_bfm_o0;
else
CORE8051S_BFM_ol0 <= '1';
CORE8051S_bfm_i00 <= CORE8051S_bfm_o1;
end if;
when CORE8051S_Bfm_l1 =>
CORE8051S_bfm_I00 <= CORE8051S_bfm_l1;
when others =>
CORE8051S_bfM_I00 <= CORE8051S_bfm_ii;
assert (FALse) report "BFM APB Controller Illegal State";
end case;
end process;
CORE8051S_bfm_ilol:
process (PCLK)
variable L: lINE;
begin
if (PCLK'event and PCLK = '1') then
CORE8051S_BFM_O1i <= CORE8051S_bfM_OLI;
CORE8051S_bfm_l1I <= CORE8051S_BFM_Lli;
CORE8051S_bfm_i1i <= FIQ;
CORE8051S_BFM_OO0 <= IRQ;
end if;
if (CORE8051S_BFm_lo0 = '1') then
write_strinG(l,
"Waiting for FIQ assertion");
writELINE(outPUT,
l);
end if;
if (CORE8051S_bfm_io0 = '1') then
write_strING(l,
"Waiting for IRQ assertion");
wriTELINE(OUTPut,
l);
end if;
if ((FIQ and (not CORE8051S_bfm_i1I)) = '1') then
Write_strinG(L,
"FIQ assertion detected");
wRITELINE(OUTPUT,
l);
end if;
if ((IRQ and (not CORE8051S_BFM_oo0)) = '1') then
wRITE_STring(L,
"IRQ assertion detected");
wRITELINE(ouTPUT,
L);
end if;
end process;
CORE8051S_bfm_oIOL:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_BFM_LO0 <= '0';
elsif (PCLK'event and PCLK = '1') then
if (CORE8051S_bFM_LO0 = '1') then
CORE8051S_bfm_lo0 <= '0';
elsif ((CORE8051S_bfm_OLI and (not CORE8051S_BFM_o1i)) = '1') then
CORE8051S_BFM_LO0 <= '1';
end if;
end if;
end process;
CORE8051S_bfm_liOL:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_io0 <= '0';
elsif (PCLK'event and PCLK = '1') then
if (CORE8051S_bfm_iO0 = '1') then
CORE8051S_bfm_io0 <= '0';
elsif ((CORE8051S_bfm_lli and (not CORE8051S_bfm_l1I)) = '1') then
CORE8051S_BFM_IO0 <= '1';
end if;
end if;
end process;
CORE8051S_bFM_IIOL:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_ll1 <= '0';
PADDR <= X"00000000";
PSEL <= '0';
PENABLE <= '0';
PWRITE <= '0';
PWDATA <= X"00000000";
elsif (PCLK'Event and PCLK = '1') then
CORE8051S_bFM_LL1 <= CORE8051S_bfm_ol1;
PADDR <= CORE8051S_BFM_O10;
PSEL <= CORE8051S_BFm_l10;
PENABLE <= CORE8051S_bfm_oo1;
PWRITE <= CORE8051S_BFM_i10;
PWDATA <= CORE8051S_BFm_lo1;
end if;
end process;
process
variable L: linE;
begin
wait until (PCLK'Event and PCLK = '1');
if (CORE8051S_BFm_ll1 = '1') then
wRITE_STRing(l,
"--------- Successful Execution of BFM Script Complete ---------");
wRITELINE(output,
L);
assert (FALSE) report "Breakpoint encountered - normal completion of BFM-driven simulation" severity faILURE;
end if;
end process;
CORE8051S_bfm_O0OL:
process (PCLK)
variable L: line;
variable CORE8051S_bFM_L0OL: STRing(1 to 9);
begin
if (PCLK'Event and PCLK = '1') then
if ((CORE8051S_BFM_oi0 or CORE8051S_BFM_IL0) = '1') then
if (CORE8051S_BFM_OI0 = '1') then
if (CORE8051S_bFM_O0I = CORE8051S_bfm_ol) then
writE_STRING(L,
"Write "&to_hstRING(Unsigned(CORE8051S_BFm_l0i(7 downto 0)))&" to address "&To_hstring(UNsigned(CORE8051S_bfm_lII)));
writeliNE(OUTPUt,
L);
elsif (CORE8051S_BFM_O0i = CORE8051S_BFM_LL) then
wRITE_STRing(l,
"Write "&TO_Hstring(Unsigned(CORE8051S_BFM_L0I(15 downto 0)))&" to address "&to_hstrING(Unsigned(CORE8051S_BFM_LII)));
WRITELIne(OUTput,
l);
else
WRITE_string(l,
"Write "&to_hstrING(unsIGNED(CORE8051S_bfm_l0I(31 downto 0)))&" to address "&To_hstring(UNSIGNED(CORE8051S_bfm_lii)));
Writeline(output,
L);
end if;
elsif ((CORE8051S_bfm_ili = '1') and (CORE8051S_bfm_o0i = CORE8051S_bfm_oL)
and (PRDATA(7 downto 0) /= CORE8051S_bfm_L0I(7 downto 0))) then
write_STRING(l,
"Read from address "&to_HSTRING(UNSIGNED(CORE8051S_bfm_lii))&"- data incorrect: Expected "&to_hstrING(unsigNED(CORE8051S_bfm_L0I(7 downto 0)))&", Actual "&to_hstriNG(UNSIgned(PRDATA(7 downto 0))));
Writeline(output,
L);
assert (faLSE) report "Stop Encountered" severity Failure;
elsif ((CORE8051S_bfm_ili = '1') and (CORE8051S_bfm_O0I = CORE8051S_bfm_LL)
and (PRDATA(15 downto 0) /= CORE8051S_bfm_L0I(15 downto 0))) then
WRITe_string(L,
"Read from address "&TO_Hstring(unsiGNED(CORE8051S_bFM_LII))&"- data incorrect: Expected "&to_hstrinG(unsigned(CORE8051S_bfm_L0I(15 downto 0)))&", Actual "&to_hstriNG(unsigned(PRDATA(15 downto 0))));
WRIteline(output,
L);
assert (false) report "Stop Encountered" severity failure;
elsif ((CORE8051S_BFm_ili = '1') and (CORE8051S_BFM_o0i = CORE8051S_bfm_IL)
and (PRDATA(31 downto 0) /= CORE8051S_bfm_l0i(31 downto 0))) then
write_strING(l,
"Read from address "&TO_HSTring(unsigned(CORE8051S_bFM_LII))&"- data incorrect: Expected "&TO_HSTring(UNSIGNEd(CORE8051S_bfm_L0I))&", Actual "&tO_HSTRINg(unsigNED(PRDATA)));
writeline(OUTPUT,
l);
assert (false) report "Stop Encountered" severity Failure;
end if;
if (CORE8051S_bfM_IL0 = '1') then
if (CORE8051S_bfm_o0i = CORE8051S_bfm_OL) then
write_stRING(l,
"Read "&to_hstRING(UNSIGNED(PRDATA(7 downto 0)))&" from address "&TO_HSTring(unsignED(CORE8051S_BFM_lii)));
WRITEline(Output,
l);
elsif (CORE8051S_BFM_O0i = CORE8051S_bFM_LL) then
write_STRING(L,
"Read "&TO_HSTring(Unsigned(PRDATA(15 downto 0)))&" from address "&tO_HSTRIng(unsigned(CORE8051S_bFM_LII)));
WRITELINe(ouTPUT,
l);
else
wrITE_STRINg(l,
"Read "&TO_hstring(unsigned(PRDATA(31 downto 0)))&" from address "&TO_HSTring(unsIGNED(CORE8051S_BFm_lii)));
writelINE(output,
l);
end if;
end if;
end if;
end if;
end process;
CORE8051S_bFM_I0Ol:
process (PRESETN,PCLK)
begin
if (PRESETN = '0') then
CORE8051S_bfm_ii0 <= '0';
elsif (PCLK'event and PCLK = '1') then
if (CORE8051S_BFm_o00 = '1') then
CORE8051S_bfm_ii0 <= '1';
elsif (CORE8051S_bfm_lI0 = '1') then
CORE8051S_bfm_II0 <= '0';
end if;
end if;
end process;
CORE8051S_BFM_O1Ol:
process (CORE8051S_BFM_O0I,CORE8051S_bfm_l0i,CORE8051S_bfm_lii,PRDATA)
begin
if (((CORE8051S_bfM_O0I = CORE8051S_BFm_ol) and (((PRDATA(7) and CORE8051S_BFM_l0i(7)) = CORE8051S_bfm_l0i(7)) and ((PRDATA(6) and CORE8051S_BFM_L0I(6)) = CORE8051S_BFM_L0i(6))
and ((PRDATA(5) and CORE8051S_BFM_l0i(5)) = CORE8051S_BFM_l0i(5))
and ((PRDATA(4) and CORE8051S_BFM_L0I(4)) = CORE8051S_BFM_l0i(4))
and ((PRDATA(3) and CORE8051S_bfm_l0i(3)) = CORE8051S_BFM_L0I(3))
and ((PRDATA(2) and CORE8051S_bfm_L0I(2)) = CORE8051S_bfm_l0I(2))
and ((PRDATA(1) and CORE8051S_BFM_L0I(1)) = CORE8051S_bfm_L0I(1))
and ((PRDATA(0) and CORE8051S_bfm_l0i(0)) = CORE8051S_BFm_l0i(0)))) or ((CORE8051S_BFM_O0i = CORE8051S_BFM_LL) and (((PRDATA(15) and CORE8051S_BFM_L0I(15)) = CORE8051S_bfm_l0i(15)) and ((PRDATA(14) and CORE8051S_bfm_l0I(14)) = CORE8051S_bfm_l0i(14))
and ((PRDATA(13) and CORE8051S_bfm_L0I(13)) = CORE8051S_bfm_l0I(13))
and ((PRDATA(12) and CORE8051S_bfm_L0I(12)) = CORE8051S_BFM_L0i(12))
and ((PRDATA(11) and CORE8051S_BFM_L0i(11)) = CORE8051S_BFM_L0i(11))
and ((PRDATA(10) and CORE8051S_bfm_l0I(10)) = CORE8051S_bfm_l0I(10))
and ((PRDATA(9) and CORE8051S_bfm_l0i(9)) = CORE8051S_bfm_l0i(9))
and ((PRDATA(8) and CORE8051S_bfm_L0I(8)) = CORE8051S_bFM_L0I(8))
and ((PRDATA(7) and CORE8051S_bfM_L0I(7)) = CORE8051S_bfm_l0i(7))
and ((PRDATA(6) and CORE8051S_bfm_l0i(6)) = CORE8051S_bfm_L0I(6))
and ((PRDATA(5) and CORE8051S_BFM_l0i(5)) = CORE8051S_BFm_l0i(5))
and ((PRDATA(4) and CORE8051S_Bfm_l0i(4)) = CORE8051S_bfm_l0I(4))
and ((PRDATA(3) and CORE8051S_BFM_L0i(3)) = CORE8051S_BFM_L0I(3))
and ((PRDATA(2) and CORE8051S_bfM_L0I(2)) = CORE8051S_bFM_L0I(2))
and ((PRDATA(1) and CORE8051S_bfm_l0i(1)) = CORE8051S_Bfm_l0i(1))
and ((PRDATA(0) and CORE8051S_BFM_l0i(0)) = CORE8051S_bfM_L0I(0))))
or ((CORE8051S_bfm_o0I = CORE8051S_bFM_IL) and ((PRDATA(31) and CORE8051S_BFM_L0I(31)) = CORE8051S_bfm_l0I(31))
and ((PRDATA(30) and CORE8051S_bFM_L0I(30)) = CORE8051S_BFM_l0i(30))
and ((PRDATA(29) and CORE8051S_BFM_L0i(29)) = CORE8051S_BFM_L0i(29))
and ((PRDATA(28) and CORE8051S_BFm_l0i(28)) = CORE8051S_bfm_l0i(28))
and ((PRDATA(27) and CORE8051S_BFM_L0i(27)) = CORE8051S_bfm_l0i(27))
and ((PRDATA(26) and CORE8051S_Bfm_l0i(26)) = CORE8051S_BFM_L0I(26))
and ((PRDATA(25) and CORE8051S_BFM_l0i(25)) = CORE8051S_BFM_L0I(25))
and ((PRDATA(24) and CORE8051S_bfm_l0i(24)) = CORE8051S_bfm_L0I(24))
and ((PRDATA(23) and CORE8051S_BFM_L0i(23)) = CORE8051S_bfM_L0I(23))
and ((PRDATA(22) and CORE8051S_bfm_l0i(22)) = CORE8051S_bfm_l0I(22))
and ((PRDATA(21) and CORE8051S_BFM_L0I(21)) = CORE8051S_BFM_L0I(21))
and ((PRDATA(20) and CORE8051S_BFM_l0i(20)) = CORE8051S_BFm_l0i(20))
and ((PRDATA(19) and CORE8051S_BFM_L0i(19)) = CORE8051S_bfM_L0I(19))
and ((PRDATA(18) and CORE8051S_bfM_L0I(18)) = CORE8051S_BFM_l0i(18))
and ((PRDATA(17) and CORE8051S_bfm_l0i(17)) = CORE8051S_bfM_L0I(17))
and ((PRDATA(16) and CORE8051S_BFM_l0i(16)) = CORE8051S_BFM_l0i(16))
and ((PRDATA(15) and CORE8051S_BFm_l0i(15)) = CORE8051S_BFM_L0I(15))
and ((PRDATA(14) and CORE8051S_bFM_L0I(14)) = CORE8051S_bfm_l0I(14))
and ((PRDATA(13) and CORE8051S_BFM_L0i(13)) = CORE8051S_bfm_l0i(13))
and ((PRDATA(12) and CORE8051S_bfm_l0I(12)) = CORE8051S_BFM_L0I(12))
and ((PRDATA(11) and CORE8051S_Bfm_l0i(11)) = CORE8051S_bfm_l0I(11))
and ((PRDATA(10) and CORE8051S_BFM_l0i(10)) = CORE8051S_Bfm_l0i(10))
and ((PRDATA(9) and CORE8051S_bfm_l0i(9)) = CORE8051S_BFM_l0i(9))
and ((PRDATA(8) and CORE8051S_bfm_L0I(8)) = CORE8051S_BFm_l0i(8))
and ((PRDATA(7) and CORE8051S_bfm_L0I(7)) = CORE8051S_BFM_l0i(7))
and ((PRDATA(6) and CORE8051S_bfm_L0I(6)) = CORE8051S_bfm_l0I(6))
and ((PRDATA(5) and CORE8051S_BFM_L0i(5)) = CORE8051S_BFM_L0i(5))
and ((PRDATA(4) and CORE8051S_bfm_l0i(4)) = CORE8051S_bfM_L0I(4))
and ((PRDATA(3) and CORE8051S_bFM_L0I(3)) = CORE8051S_bfm_l0i(3))
and ((PRDATA(2) and CORE8051S_Bfm_l0i(2)) = CORE8051S_BFM_l0i(2))
and ((PRDATA(1) and CORE8051S_bfm_l0i(1)) = CORE8051S_BFM_L0i(1))
and ((PRDATA(0) and CORE8051S_bfm_l0i(0)) = CORE8051S_bfm_l0I(0)))) then
CORE8051S_bfm_ll0 <= '1';
else
CORE8051S_bFM_LL0 <= '0';
end if;
end process;
CORE8051S_bfm_l1oL:
process (PCLK)
variable L: line;
begin
if (PCLK'Event and PCLK = '1') then
if ((CORE8051S_bfM_O00 and (not CORE8051S_bfm_ii0)) = '1') then
if (CORE8051S_bFM_O0I = CORE8051S_bfm_ol) then
write_STRING(l,
"Polling address "&TO_HSTRing(unsigNED(CORE8051S_bfM_LII))&" for bitmask "&to_HSTRING(Unsigned(CORE8051S_Bfm_l0i(7 downto 0))));
writelinE(OUTput,
L);
elsif (CORE8051S_BFM_O0I = CORE8051S_BFM_LL) then
WRITE_String(L,
"Polling address "&TO_hstring(Unsigned(CORE8051S_bfm_lii))&" for bitmask "&TO_hstring(unsiGNED(CORE8051S_bFM_L0I(15 downto 0))));
writeliNE(Output,
L);
else
WRite_string(L,
"Polling address "&to_hstrinG(unsiGNED(CORE8051S_BFM_LIi))&" for bitmask "&tO_HSTRINg(unsigned(CORE8051S_bFM_L0I(31 downto 0))));
writeliNE(OUTPUt,
L);
end if;
end if;
if (CORE8051S_bFM_LI0 = '1') then
if (CORE8051S_BFM_O0i = CORE8051S_bfm_OL) then
write_strING(L,
"Poll completed - read "&TO_hstring(unsigned(PRDATA(7 downto 0)))&" from address "&TO_HString(unsiGNED(CORE8051S_bfm_lii)));
WRiteline(output,
L);
elsif (CORE8051S_BFm_o0i = CORE8051S_bFM_LL) then
wRITE_STRing(l,
"Poll completed - read "&TO_Hstring(UNsigned(PRDATA(15 downto 0)))&" from address "&TO_HSTRing(unsigned(CORE8051S_BFM_Lii)));
WRITELine(Output,
L);
else
WRIte_string(l,
"Poll completed - read "&to_hstring(unsigned(PRDATA))&" from address "&tO_HSTRINg(unsigned(CORE8051S_bfm_lII)));
Writeline(output,
L);
end if;
end if;
end if;
end process;
end CORE8051S_bfM_O;
