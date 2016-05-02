library Ieee;
use IEEE.STD_logIC_1164.all;
use ieee.stD_LOgic_unsIGNED. "+";
use IEEE.STD_logic_uNSIGNed. "-";
entity Uj_jtag is
generic (CortexM1TOP_i1i: stD_LOGic_vectOR(7 downto 0) := X"33"); port (CORtexM1ToP_IOI: in STD_logic_VECTOR(7 downto 0);
URSTB: in stD_LOGIc;
UDRUPD: in STD_Logic;
UDRCK: in stD_LOGic;
UDRCAP: in STd_logic;
UDRSH: in std_loGIC;
UTDI: in std_logIC;
UTDO: out Std_logiC;
CORtexM1ToP_OLI: out sTD_LOgic;
CortEXM1Top_oo0: out STD_logic;
COrtexM1TOP_Lo0: out std_lOGIC;
CortexM1TOP_Io0: out STD_logic;
CorTEXM1Top_ol0: out stD_LOGic;
CORtexM1ToP_LL0: in STD_Logic;
CorTEXM1Top_iL0: out STD_logic_VECTOR(3 downto 0);
CortexM1TOp_oi0: in Std_logiC_VECtor(3 downto 0));
end uj_jTAG;

architecture CORTexM1Top_I10 of uj_JTAG is

constant CortexM1TOP_oo1: STD_logic_vectOR(4 downto 0) := "00000";

constant CortexM1TOP_LO1: STD_logic_vectOR(4 downto 0) := "00100";

constant CortexM1ToP_IO1: std_logIC_VECTor(4 downto 0) := "00101";

constant CORTExM1Top_ol1: Std_logic_veCTOR(4 downto 0) := "00110";

constant CortexM1TOP_Ll1: STD_LOgic_vector(4 downto 0) := "00111";

constant CORTEXM1Top_il1: std_LOGIC_VEctor(4 downto 0) := "01001";

constant CORTEXM1Top_oi1: STd_logic_veCTOR(4 downto 0) := "01010";

constant CortexM1Top_LI1: std_logic_VECTOR(4 downto 0) := "01011";

constant CorTEXM1TOP_ii1: STD_logic_vectoR(4 downto 0) := "01100";

constant CORTEXM1Top_o01: std_logic_vECTOR(4 downto 0) := "01101";

constant CorTEXM1TOp_l01: STD_LOgic_vector(4 downto 0) := "01110";

constant CORTEXM1Top_i01: std_logic_vECTOR(4 downto 0) := "01111";

constant CoRTEXM1Top_o11: STD_Logic_vectoR(4 downto 0) := "10100";

constant CortexM1ToP_L11: std_logIC_VECTOr(4 downto 0) := "10101";

constant CortexM1ToP_I11: std_lOGIC_VECtor(4 downto 0) := "10110";

constant CORTEXM1Top_oool: Std_logic_VECTOR(4 downto 0) := "10111";

constant CortexM1TOP_LOOL: STD_LOGIc_vector(4 downto 0) := "10000";

constant CORTEXM1Top_iool: Std_logic_vECTOR(4 downto 0) := "10001";

constant CORTEXM1Top_olol: std_logiC_VECTOR(4 downto 0) := "10010";

constant CorTEXM1TOp_llol: STD_logic_vecTOR(4 downto 0) := "10011";

signal CORTexM1Top_ilOL: std_lOGIC;

signal CORTEXM1Top_oiol: STD_Logic;

signal CortexM1TOP_LIOl: STD_LOGIc_vector(31 downto 0);

signal CortexM1ToP_IIOL: std_logIC_VECTOr(1 downto 0);

signal CORTEXM1Top_o0ol: std_logic_vECTOR(4 downto 0);

signal Count: std_logIC_VECTOr(5 downto 0);

signal CORTExM1Top_l0ol: STD_logic_vectOR(5 downto 0);

signal CortexM1Top_I0OL: std_loGIC;

signal CortexM1TOP_O1ol: std_LOGIC;

signal CORTExM1Top_l1ol: STD_logic;

signal CorTEXM1TOP_i1ol: STD_LOGic;

signal CORTexM1Top_ooLL: STD_logic;

signal CortexM1ToP_LOLL: sTD_LOGIc_vector(3 downto 0);

begin
CORTEXM1Top_l0ol <= (cOUNT-"000001") when (CortexM1Top_O0OL(2 downto 0) = "111") else
(UTDI&COUNT(5 downto 1)) when (CortexM1TOP_O0Ol(3) = '1') else
("000"&UTDI&coUNT(2 downto 1));
CORtexM1Top_i0OL <= '1' when (CorTEXM1TOp_l0ol = "000000") else
'0';
CortexM1ToP_IO0 <= '1' when ((CORtexM1Top_oOLL = '1' and UTDI = '1') or (COrtexM1Top_l1OL = '1')) else
'0';
CorTEXM1TOP_ol0 <= UTDI;
process (UDRCK,URSTB)
begin
if (URSTB = '0') then
CortEXM1TOP_o1ol <= '0';
CorteXM1TOP_o0ol <= CorteXM1TOP_oo1;
cOUNT <= "000000";
CORTEXM1Top_il0 <= "0000";
CORTEXM1Top_loll <= "0000";
elsif (UDRCK'event and UDRCK = '1') then
CORTEXM1Top_loll <= CortexM1ToP_OI0;
case CORTExM1Top_o0oL is
when CortexM1TOP_OO1 =>
CORTEXM1Top_o1ol <= '0';
coUNT <= "000000";
if ((CORTEXM1Top_iOI = COrtexM1TOP_I1I) and (UDRCAP = '1')) then
CoRTEXM1Top_O0OL <= COrtexM1TOP_LO1;
else
COrtexM1TOP_O0Ol <= COrtexM1TOP_Oo1;
end if;
when COrtexM1ToP_LO1
| CORTEXM1Top_iO1
| CortexM1TOP_il1
| CortexM1TOP_oi1
| CORTexM1Top_LI1
| CorTEXM1Top_ii1
| CoRTEXM1Top_o01
| CortEXM1Top_o11
| CortexM1TOp_l11 =>
CORTexM1ToP_O1Ol <= '0';
if (UDRSH = '1') then
coUNT <= CORtexM1ToP_L0Ol;
CortexM1TOP_o0ol <= COrtexM1TOP_O0Ol+"00001";
elsif ((CortexM1TOP_IOi = CoRTEXM1Top_i1I) and (UDRCAP = '1')) then
CORTEXM1Top_o0OL <= CoRTEXM1Top_lO1;
elsif (UDRUPD = '1') then
CoRTEXM1Top_o0OL <= CORtexM1ToP_OO1;
end if;
when CorteXM1Top_ol1 =>
if (UDRSH = '1') then
if (CortexM1TOP_I0ol = '1') then
CorteXM1TOp_o1ol <= '0';
COUNt <= CortexM1TOP_L0ol;
CortEXM1Top_o0oL <= CortexM1TOP_il1;
elsif (CortexM1TOP_l0ol(2 downto 0) = "111") then
CorteXM1TOp_o1ol <= '0';
COUNt <= "00"&CORTEXM1Top_lOLL(3 downto 0);
CortexM1TOP_o0ol <= CorteXM1TOp_lool;
else
CortEXM1Top_o1ol <= '1';
Count <= CORTEXM1Top_l0OL;
CortexM1TOP_O0ol <= COrtexM1TOP_O0Ol+"00001";
end if;
elsif ((CortEXM1Top_ioI = CORtexM1ToP_I1I) and (UDRCAP = '1')) then
CoRTEXM1Top_O0OL <= CORtexM1ToP_LO1;
elsif (UDRUPD = '1') then
CortEXM1Top_o0oL <= CortexM1TOP_oo1;
end if;
when CoRTEXM1Top_l01 =>
if (UDRSH = '1') then
CORTexM1Top_O1Ol <= (CORTExM1Top_O0OL(2) and CortexM1TOP_O0ol(1)
and not (CorteXM1TOp_i0ol));
coUNT <= CORTEXM1Top_L0OL;
if (CortexM1TOp_i0ol = '1') then
COrtexM1TOP_O0ol <= CorteXM1Top_o11;
else
CortexM1TOP_O0ol <= CORTExM1Top_O0OL+"00001";
end if;
elsif ((CorTEXM1Top_ioI = CorTEXM1Top_i1I) and (UDRCAP = '1')) then
CortexM1TOP_o1ol <= '0';
CortEXM1Top_o0oL <= CortexM1TOp_lo1;
elsif (UDRUPD = '1') then
CORTExM1Top_O1OL <= '0';
CORTEXM1Top_O0OL <= CORTEXM1Top_oO1;
end if;
when CortexM1TOp_i11 =>
if (UDRSH = '1') then
CortEXM1Top_O1OL <= (CortexM1TOP_o0ol(2) and CORTexM1Top_O0OL(1)
and not (CorTEXM1Top_i0OL));
COUNT <= CORTEXM1Top_l0OL;
if (CORTExM1Top_I0OL = '1') then
CORTEXM1Top_o0OL <= CortexM1TOP_oo1;
else
CortexM1TOP_o0ol <= CortexM1TOP_O0ol+"00001";
end if;
elsif ((CORTEXM1Top_IOI = CorTEXM1Top_i1i) and (UDRCAP = '1')) then
CORTEXM1Top_o1OL <= '0';
CortexM1TOP_o0ol <= CortexM1TOP_lo1;
elsif (UDRUPD = '1') then
CORtexM1ToP_O1Ol <= '0';
CortexM1TOP_O0ol <= CorteXM1TOp_oo1;
end if;
when CORtexM1ToP_LL1 =>
if (UDRSH = '1') then
CortEXM1Top_o1ol <= not (COrtexM1TOP_I0ol);
count <= CortexM1TOP_L0ol;
if (CortexM1TOP_I0ol = '1') then
CorteXM1TOp_o0ol <= CorteXM1Top_il1;
else
CortexM1TOP_O0ol <= CortexM1Top_ll1;
end if;
elsif ((CORTexM1Top_ioi = CORTEXM1Top_i1i) and (UDRCAP = '1')) then
CortexM1Top_O1OL <= '0';
CORTEXM1Top_o0ol <= CortexM1TOP_LO1;
elsif (UDRUPD = '1') then
CortexM1TOP_O1ol <= '0';
CortexM1ToP_O0OL <= CortexM1ToP_OO1;
end if;
when CORTEXM1Top_i01 =>
if (UDRSH = '1') then
CorteXM1TOP_o1ol <= not (CortexM1TOP_I0ol);
COunt <= CortexM1TOP_l0ol;
if (COrtexM1TOP_I0ol = '1') then
CortexM1TOP_o0ol <= CortexM1TOP_O11;
else
CorteXM1Top_o0oL <= CORTEXM1Top_i01;
end if;
elsif ((CORTEXM1Top_iOI = CortexM1TOP_I1i) and (UDRCAP = '1')) then
CortexM1TOP_o1ol <= '0';
CortexM1TOP_o0ol <= CortexM1TOP_lo1;
elsif (UDRUPD = '1') then
CoRTEXM1Top_o1OL <= '0';
CortexM1TOP_O0ol <= CORtexM1ToP_OO1;
end if;
when CortexM1TOp_oool =>
if (UDRSH = '1') then
CortEXM1TOp_o1ol <= not (CorTEXM1Top_i0oL);
COUNt <= CortexM1TOP_L0ol;
if (COrtexM1TOP_I0ol = '1') then
CORTEXM1Top_o0OL <= CORTEXM1Top_OO1;
else
CortEXM1Top_o0oL <= CORTExM1Top_OOOL;
end if;
elsif ((CortexM1TOP_IOi = COrtexM1TOP_I1i) and (UDRCAP = '1')) then
CORTexM1Top_O1OL <= '0';
CORTexM1Top_O0OL <= CortexM1TOP_lo1;
elsif (UDRUPD = '1') then
CORtexM1ToP_O1Ol <= '0';
CortEXM1Top_o0ol <= CORtexM1ToP_OO1;
end if;
when CortexM1TOP_LOol
| CortexM1TOP_IOol
| CoRTEXM1Top_olOL
| CORTExM1Top_LLOL =>
CortexM1TOP_o1ol <= '0';
if (UDRSH = '1') then
COunt(5 downto 0) <= ("00"&UTDI&count(3 downto 1));
if ((CORTexM1Top_O0OL(1) and COrtexM1TOP_O0ol(0)) = '0') then
COrtexM1TOP_O0ol <= CortexM1TOP_O0ol+"00001";
end if;
elsif ((CorTEXM1ToP_IOI = CORTEXM1Top_i1I) and (UDRCAP = '1')) then
CORtexM1ToP_O0Ol <= CortexM1TOP_lo1;
elsif (UDRUPD = '1') then
COrtexM1TOP_IL0 <= count(3 downto 0);
CorTEXM1Top_o0OL <= CorteXM1Top_oo1;
end if;
when otheRS =>
CortexM1TOP_o1ol <= '0';
Count <= "000000";
if ((CorteXM1TOp_ioi = CortexM1TOP_i1i) and (UDRCAP = '1')) then
CorteXM1TOP_o0ol <= CORTEXM1Top_lO1;
else
COrtexM1TOP_O0ol <= CORTEXM1Top_oO1;
end if;
end case;
end if;
end process;
process (UDRCK,URSTB)
begin
if (URSTB = '0') then
CORTexM1ToP_L1Ol <= '0';
CORTEXM1Top_oOLL <= '0';
elsif (UDRCK'eVENT and UDRCK = '0') then
CORTexM1ToP_OOLl <= not (CortexM1TOP_o0ol(3));
if ((CortEXM1Top_o0oL = CoRTEXM1Top_I01) and CortEXM1Top_i0OL = '1') then
CortexM1TOp_l1ol <= '1';
else
COrtexM1TOP_L1ol <= '0';
end if;
end if;
end process;
process (UDRCK,URSTB)
begin
if (URSTB = '0') then
CortEXM1Top_i1OL <= '0';
elsif (UDRCK'EVENT and UDRCK = '1') then
if (UDRSH = '0') then
CORTExM1Top_I1OL <= '1';
elsif (CortexM1TOP_o1ol = '1') then
CorTEXM1Top_i1OL <= '0';
end if;
end if;
end process;
CortexM1Top_lo0 <= not (CoRTEXM1Top_i1OL or not (UDRSH)
or (CortexM1TOP_o1ol and not (UDRCK)));
COrtexM1TOP_OO0 <= URSTB;
process (UDRCK,URSTB)
begin
if (URSTB = '0') then
UTDO <= '0';
CoRTEXM1Top_oLI <= '0';
elsif (UDRCK'EVEnt and UDRCK = '1') then
if (UDRSH = '1') then
if (COrtexM1TOP_O0Ol(4 downto 2) = "100") then
UTDO <= Count(0);
else
UTDO <= CORTExM1Top_LL0;
end if;
if (CorteXM1TOP_ioi = CoRTEXM1Top_i1I) then
CoRTEXM1Top_olI <= '1';
else
CorTEXM1Top_olI <= '0';
end if;
end if;
end if;
end process;
end CorTEXM1TOP_I10;
