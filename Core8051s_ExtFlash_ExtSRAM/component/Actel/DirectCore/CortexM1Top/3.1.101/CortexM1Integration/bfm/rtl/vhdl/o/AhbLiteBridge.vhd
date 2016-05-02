library Ieee;
use iEEE.stD_logic_1164.all;
use IEee.STD_Logic_unsigNED. "+";
entity bFM_I0IL is
generic (bfm_O1IL: integeR := 2); port (HCLK: in STD_LOgic;
SYSRESETn: in sTD_LOGIC;
HREADY: in std_lOGIC;
HRESP: in std_loGIC_VECTor(1 downto 0);
HRDATA: in std_LOGIC_Vector(31 downto 0);
HADDR: out STD_LOGIc_vector(31 downto 0);
HTRANS: out std_lOGIC_VECtor(1 downto 0);
HWRITE: out std_logiC;
HSIZE: out Std_logic_vECTOR(2 downto 0);
HBURST: out std_loGIC_VECTor(2 downto 0);
HPROT: out std_logic_VECTOR(3 downto 0);
BFm_il0l: out Std_logic;
HWDATA: out STD_LOGic_vector(31 downto 0);
BFM_l1il: in STD_logic_vectOR(31 downto 0);
bfm_I1IL: in std_LOGIC;
SIZE: in std_logic_VECTOR(1 downto 0);
WRIte: in STD_LOgic;
BFM_oo0l: in std_LOGIC_vector(1 downto 0);
bfm_lo0l: in STD_LOgic_vector(1 downto 0);
BFM_IO0l: in std_logIC_VECTOr(31 downto 0);
BFM_OL0l: out STD_Logic;
BFM_ll0l: out std_logIC;
BFM_OI0l: out STD_logic_veCTOR(31 downto 0));
end BFM_i0il;

architecture BFM_Olli of bfm_I0IL is

signal Bfm_llli: STD_LOgic;

signal bfm_illi: Std_logic;

signal bfm_oili: stD_LOGIC_vector(31 downto 0);

signal BFM_LILi: STD_LOGic_vector(1 downto 0);

signal bFM_IILI: STD_logic;

signal BFM_o0li: STD_logic_vecTOR(2 downto 0);

signal BFM_L0li: STD_LOGic_vector(2 downto 0);

signal BFM_i0li: STD_LOGic_vector(3 downto 0);

signal bFM_O1LI: STD_LOgic;

signal bfm_L1LI: std_LOGIC;

signal bfm_i1LI: std_LOGIC;

signal BFM_Iii: std_logIC_VECTor(31 downto 0);

signal bfm_OOII: std_LOGIC_VEctor(1 downto 0);

signal Bfm_loii: std_logic;

signal BFM_Ioii: STD_LOGic_vector(1 downto 0);

signal BFm_olii: std_logic;

signal bfm_lliI: STD_Logic_vectOR(31 downto 0);

signal BFM_ilii: STd_logic_veCTOR(31 downto 0);

signal bfm_oIII: stD_LOGIC;

signal BFm_liii: STD_logic;

signal bfm_iiiI: std_logic_VECTOR(1 downto 0);

signal BFM_o0ii: STd_logic;

signal BFM_l0ii: STD_Logic;

signal BFM_i0ii: STD_LOgic_vectoR(31 downto 0);

signal BFm_o1ii: Std_logic;

signal BFM_L1ii: STD_LOgic;

signal BFM_I1Ii: stD_LOGIC_vector(2 downto 0);

signal bfm_oo0i: Std_logic;

signal Bfm_lo0i: std_logic;

signal BFm_io0i: STD_logic_vecTOR(2 downto 0);

signal bfm_ol0i: STd_logic_veCTOR(1 downto 0);

signal bfm_ll0I: stD_LOGIC;

signal bfm_il0I: std_logic_VECTOR(1 downto 0);

signal BFM_oi0i: STD_logic;

signal BFM_LI0i: STD_LOGic;

signal BFM_ii0i: STD_logic;

signal Bfm_o00i: STD_logic;

signal bfm_l00I: std_loGIC;

signal BFM_i00i: STD_logic;

signal bfM_O10I: std_LOGIC_Vector(1 downto 0);

signal bfm_L10I: STD_LOgic;

signal BFm_i10i: STD_logic;

signal bfm_OO1I: sTD_LOGIc_vector(2 downto 0);

signal BFM_LO1i: STD_logic;

signal bfM_IO1I: stD_LOGIC;

signal BFM_Ol1i: STD_logic;

signal bfM_LL1I: STD_LOgic;

signal BFM_Il1i: STD_logic;

signal bfm_oi1i: std_logiC;

signal bfm_LI1I: std_LOGIC;

signal BFM_II1i: STD_Logic;

signal BFM_O01i: STD_LOgic;

signal bfM_L01I: std_LOGIC_vector(31 downto 0);

signal bfm_i01i: Std_logic;

signal bfm_o11i: std_logic_VECTOR(2 downto 0);

signal bFM_L11i: STD_LOGic_vector(3 downto 0);

signal Bfm_i11i: std_logic;

constant BFM_OOo0: sTD_LOGIC_vector(1 downto 0) := "00";

constant bfm_loo0: std_logic_VECTOR(1 downto 0) := "01";

constant bfm_ioO0: std_loGIC_VECTor(1 downto 0) := "10";

constant bfm_OLO0: stD_LOGIC_vector(3 downto 0) := "0001";

constant BFM_LLo0: STD_LOGIc_vector(3 downto 0) := "0010";

constant bfm_ilo0: std_logiC_VECTOR(3 downto 0) := "0100";

constant BFM_OIO0: STD_LOgic_vector(1 downto 0) := "00";

constant bfm_lio0: Std_logic_vECTOR(1 downto 0) := "01";

constant BFM_iio0: STD_LOgic_vectoR(1 downto 0) := "10";

constant bfm_o0o0: STd_logic_veCTOR(1 downto 0) := "11";

constant bfm_l0o0: STd_logic_veCTOR(1 downto 0) := "01";

constant BFM_i0o0: STD_logic_vecTOR(2 downto 0) := "000";

constant Bfm_o1o0: STD_logic_vecTOR(2 downto 0) := "001";

constant BFM_l1o0: STD_logic_vecTOR(2 downto 0) := "011";

constant bfm_i1o0: STD_logic_vectOR(2 downto 0) := "010";

constant bfm_ool0: std_logiC_VECTOR(2 downto 0) := "100";

constant BFm_lol0: STD_logic_vecTOR(2 downto 0) := "101";

constant bfm_iol0: STD_logic_vecTOR(2 downto 0) := "111";

constant BFM_OLL0: STD_LOGic := '0';

constant bfm_lll0: std_logiC := '1';

constant Bfm_ill0: STd_logic_veCTOR(1 downto 0) := "00";

constant BFM_oil0: STD_logic_vecTOR(1 downto 0) := "01";

constant bfm_lil0: STd_logic_vECTOR(1 downto 0) := "10";

constant BFM_IIl0: STD_LOGic_vector(1 downto 0) := "11";

constant bfm_o0L0: std_logIC_VECTOr(2 downto 0) := "000";

constant Bfm_l0l0: STd_logic_veCTOR(2 downto 0) := "001";

constant bfm_i0l0: STD_logic_vectOR(2 downto 0) := "010";

constant bfm_o1L0: std_logIC_VECTor(2 downto 0) := "011";

constant BFM_l1l0: STD_LOGIc_vector(2 downto 0) := "100";

constant BFM_i1l0: STD_LOgic_vector(2 downto 0) := "101";

constant BFM_OOI0: std_LOGIC_Vector(2 downto 0) := "110";

constant BFM_loi0: STD_LOgic_vector(2 downto 0) := "111";

constant BFM_IOI0: STD_LOGic_vector(1 downto 0) := "00";

constant BFm_oli0: STD_LOGic_vector(1 downto 0) := "01";

constant BFM_lli0: STD_LOGic_vector(1 downto 0) := "10";

constant BFM_ILI0: STD_LOGIc_vector(1 downto 0) := "11";

begin
BFM_i1li <= '1';
bfM_OI0L <= HRDATA;
HWDATA <= bfm_io0l;
BFM_l00i <= bfM_LLLI or BFM_O00i;
Bfm_oii0:
process (SYSRESETN,HCLK)
begin
if SYSRESETn = '0' then
BFM_i1ii <= BFM_I0O0;
bfm_l1II <= BFM_oll0;
BFm_ioii <= "00";
bfm_LOII <= '0';
BFM_O1Ii <= '0';
BFM_Iiii <= bfm_oio0;
bfm_oiiI <= '1';
elsif (HCLK'EVENT and HCLK = '1') then
if bfm_l00i = '1' then
bfm_i1iI <= bFM_IO0I;
BFm_l1ii <= BFM_oi0i;
bfm_ioII <= BFM_il0i;
bfm_loii <= BFM_Li0i;
Bfm_o1ii <= BFM_II0i;
BFM_iiii <= bfM_OL0I;
BFM_OIii <= bfm_ll0i;
end if;
end if;
end process BFM_OII0;
bfm_o1lI <= bfm_o1iI;
BFM_LII0:
process (BFM_i1ii,BFM_oo0i,bfm_lo0i,BFM_lo0l,BFM_illi,BFM_oiii)
begin
BFm_io0i <= bfm_i1ii;
BFM_O00i <= '0';
case BFM_i1ii is
when bfm_i0o0
| BFM_o1o0 =>
if BFM_oo0i = '1' then
BFm_io0i <= BFM_ool0;
BFM_o00i <= '0';
else
case bfm_lo0L is
when bfm_o0o0 =>
bfm_o00i <= '0';
bfm_IO0I <= BFM_l1o0;
when BFM_IIo0 =>
if bfm_lO0I = '0' then
bfm_o00I <= '1';
bfm_io0I <= bfm_i1o0;
else
BFM_O00i <= '0';
bfm_iO0I <= bfm_I0O0;
end if;
when bfm_OIO0 =>
Bfm_o00i <= '0';
BFM_Io0i <= BFM_O1o0;
when BFM_LIO0 =>
BFM_o00i <= '0';
BFM_Io0i <= BFM_I0o0;
when others =>
BFM_O00i <= '0';
bfm_IO0I <= bfm_i0o0;
end case;
end if;
when bfm_L1O0 =>
if BFM_oo0i = '1' then
BFM_O00i <= '0';
bfm_IO0I <= bfm_ool0;
else
case bfm_lo0l is
when bfM_O0O0 =>
BFm_o00i <= '0';
BFM_IO0i <= bfM_L1O0;
when BFM_iio0 =>
bfm_O00I <= '1';
bfm_iO0I <= bfm_i1O0;
when bfM_OIO0 =>
BFm_o00i <= '0';
BFM_IO0i <= bfm_O1O0;
when bfm_liO0 =>
BFM_o00i <= '0';
bfm_IO0I <= bfm_I0O0;
when others =>
bfm_O00I <= '0';
BFm_io0i <= BFM_I0o0;
end case;
end if;
when BFM_i1o0 =>
if BFM_oo0i = '1' then
bfM_O00I <= '0';
bfm_iO0I <= bfm_ool0;
else
case bFM_LO0L is
when BFM_o0o0 =>
bfm_O00I <= '0';
bfm_iO0I <= bfm_l1o0;
when BFM_IIo0 =>
bfm_o00I <= '0';
if BFM_oiii = '0' then
BFM_io0i <= BFm_i1o0;
else
BFM_IO0i <= BFM_l1o0;
end if;
when BFm_oio0 =>
bfM_O00I <= '0';
bfm_io0I <= bfm_O1O0;
when bFM_LIO0 =>
bfm_o00i <= '0';
Bfm_io0i <= Bfm_i0o0;
when others =>
BFM_o00i <= '0';
BFM_IO0i <= BFM_I0O0;
end case;
end if;
when bfm_ool0 =>
BFM_o00i <= '0';
BFM_Io0i <= BFM_Lol0;
when bfm_lOL0 =>
BFM_o00i <= '0';
if BFM_illi = '1' then
BFM_IO0i <= BFM_I0O0;
else
bFM_IO0I <= bfm_ioL0;
end if;
when Bfm_iol0 =>
bfm_o00I <= '0';
Bfm_io0i <= BFM_i0o0;
when others =>
bfm_o00i <= '0';
BFM_io0i <= bfm_i0o0;
end case;
end process Bfm_lii0;
BFm_iii0:
process (bfm_OO0I,Bfm_lo0l,bfm_I1II,bfM_OIII)
begin
if bfm_oO0I = '1' then
bfm_oi0I <= BFM_oll0;
elsif (bfm_LO0L = BFM_O0o0) or (BFM_I1ii = bfm_i1o0 and BFM_LO0l = bfm_iio0
and bfm_oiII = '1') then
bfm_oi0i <= bFM_LLL0;
else
BFm_oi0i <= bfm_OLL0;
end if;
end process BFM_Iii0;
bfM_O0I0:
process (BFM_oo0i,bfm_LO0L,bfm_oo0l,BFm_ioii)
begin
if BFM_OO0i = '1' then
BFM_il0i <= bfm_oo0l;
else
case BFM_lo0l is
when Bfm_oio0 =>
bfm_il0i <= Bfm_oo0l(1)&'0';
when Bfm_o0o0 =>
bfm_il0i <= BFM_ioii;
when bfM_IIO0
| bfm_liO0 =>
Bfm_il0i <= BFM_oo0l;
when others =>
bfm_il0I <= bfm_OO0L;
end case;
end if;
end process BFM_O0i0;
bfm_l0i0:
process (bfm_oo0i,bfm_i1ii)
begin
if (bfm_I1II = BFm_ool0 or bfm_i1ii = bFM_LOL0) or bFM_OO0I = '1' then
Bfm_ii0i <= '1';
else
BFm_ii0i <= '0';
end if;
end process BFM_l0i0;
bfm_i0i0:
process (BFM_I1Ii,bfm_LOII,wrITE)
begin
if bfm_I1II = bfm_ool0 then
Bfm_li0i <= BFM_LOII;
else
BFM_LI0i <= write;
end if;
end process;
Bfm_o1i0:
process (bFM_OO0I,bfm_lo0l,bfM_I1II,BFM_ILLI,bFM_LIII)
begin
if bfm_oo0I = '1' then
bFM_OL0I <= bfm_OIO0;
if bfm_LIII = '0' then
bfm_ll0I <= '1';
else
bfm_ll0i <= '0';
end if;
else
case bfm_I1II is
when bfm_o1o0
| BFM_i0o0
| bfm_l1o0 =>
case bfm_lo0l is
when bfM_O0O0 =>
bfm_ol0i <= bfm_O0O0;
bfm_lL0I <= '1';
when bfm_iIO0 =>
BFM_OL0i <= BFm_iio0;
if bfm_LIII = '0' then
bfm_ll0i <= '1';
else
bfm_ll0I <= '0';
end if;
when BFM_oio0 =>
bfm_OL0I <= BFM_IIO0;
bfm_ll0I <= '1';
when BFM_Lio0 =>
bfm_OL0I <= BFM_oio0;
BFM_LL0i <= '1';
when others =>
BFM_ol0i <= BFM_oio0;
bfm_LL0I <= '1';
end case;
when Bfm_i1o0 =>
case bfm_lo0l is
when BFm_o0o0 =>
bfm_OL0I <= BFM_O0o0;
bfM_LL0I <= '1';
when bfm_oio0
| bfm_LIO0 =>
bfm_ol0I <= bfm_OIO0;
Bfm_ll0i <= '1';
when BFm_iio0 =>
if BFM_LIIi = '0' then
bfm_oL0I <= bfm_IIO0;
else
BFM_ol0i <= BFM_O0O0;
end if;
bfM_LL0I <= '1';
when others =>
bfm_ol0i <= bfm_oio0;
BFM_LL0i <= '1';
end case;
when Bfm_ool0 =>
bfm_OL0I <= bfm_IIO0;
bfm_ll0i <= '0';
when Bfm_lol0 =>
if BFm_illi = '1' then
BFM_OL0i <= BFM_OIo0;
bfm_LL0I <= '1';
else
bfm_ol0I <= bfm_iio0;
BFM_LL0i <= '1';
end if;
when bfM_IOL0 =>
BFM_OL0i <= bFM_OIO0;
BFM_LL0i <= '1';
when others =>
Bfm_ol0i <= bfM_OIO0;
BFM_ll0i <= '1';
end case;
end if;
end process bfm_O1I0;
BFM_L1i0:
process (SYSRESETn,HCLK)
begin
if SYSRESETN = '0' then
bfm_ooII <= ( others => '0');
elsif (HCLK'event and HCLK = '1') then
if bfm_L00I = '1' then
Bfm_ooii <= size;
end if;
end if;
end process bfm_l1I0;
bfm_o0li <= '0'&bfm_ooiI;
bfm_l0li <= "001";
bfm_iILI <= bfm_loII;
BFM_i0li <= "00"&BFM_IOIi;
BFM_I1I0:
process (SYSRESETn,HCLK)
begin
if SYSRESETN = '0' then
bfm_olii <= '0';
elsif (HCLK'eveNT and HCLK = '1') then
if BFM_llli = '1' then
bfm_olII <= bFM_I1IL;
end if;
end if;
end process bfM_I1I0;
BFM_OO0i <= bfm_i1il and not BFM_OLii;
bfM_LO0I <= not bfm_i1il and BFM_OLII;
bfm_oo00:
process (SYSRESETn,HCLK)
begin
if SYSRESETn = '0' then
bfm_ilii <= ( others => '0');
elsif (HCLK'Event and HCLK = '1') then
if BFM_Llli = '1' then
case bFM_OOII is
when bfM_OOO0 =>
BFM_ILII <= bfm_i0iI+BFM_OLO0;
when BFM_Loo0 =>
Bfm_ilii <= bfm_i0II+BFM_llo0;
when others =>
bFM_ILII <= BFM_I0Ii+BFM_ILO0;
end case;
end if;
end if;
end process BFM_OO00;
bfm_lO00:
process (SYSRESETN,HCLK)
begin
if SYSRESETn = '0' then
BFM_llii <= ( others => '0');
elsif (HCLK'evENT and HCLK = '1') then
BFM_llii <= bfm_l1iL;
end if;
end process bfM_LO00;
bfm_IO00:
process (bfm_ooii,bfM_LLII)
begin
case BFM_OOii is
when BFM_IOO0 =>
bfm_III <= BFM_llii(31 downto 2)&"00";
when BFM_LOo0 =>
bfM_III <= BFM_LLIi(31 downto 1)&'0';
when others =>
bfm_III <= BFM_Llii;
end case;
end process BFM_io00;
BFM_I0Ii <= BFm_iii when BFM_L1Ii = bfm_oll0 else
BFM_ilii;
bfm_OILI <= bfm_I0II;
BFM_liii <= BFM_oiii and Bfm_llli;
BFM_ll0l <= BFM_Liii;
BFM_O0ii <= '1' when ((BFm_ooii(1) = '1' and bfM_I0II(9 downto 2) = "11111111") or (bfm_ooII(1) = '0' and bfm_I0II(9 downto 1) = "111111111")) else
'0';
bfM_OL00:
process (SYSRESETN,HCLK)
begin
if SYSRESETn = '0' then
bfm_l0ii <= '0';
elsif (HCLK'EVENT and HCLK = '1') then
if BFM_llli = '1' then
bfm_L0II <= Bfm_o0ii;
end if;
end if;
end process bfm_ol00;
bfm_lL00:
process (BFm_i1ii,bfm_LO0L,BFM_L0ii,BFM_IIii)
begin
if (bfm_I1II = BFM_l1o0 or BFM_I1ii = bfm_o1o0) and BFM_Lo0l /= bfm_O0O0 then
BFM_LILi <= bfm_OIO0;
elsif bfm_i1II = BFM_L1o0 and bfm_L0II = '1' then
bfm_LILI <= bfM_IIO0;
else
BFM_LILi <= bfm_iiiI;
end if;
end process Bfm_ll00;
BFM_l1li <= '1';
BFm_ol0l <= BFm_illi;
Bfm_il00:
process (bfm_o01I,Bfm_io1i,HREADY,BFM_LL1i)
begin
if (bfm_o01i = '1') then
bfM_I00I <= '0';
elsif (BFM_IO1i = '1') then
if (HREADY = '1' and BFM_ll1i = '0') then
BFM_I00i <= '1';
else
BFM_I00i <= '0';
end if;
else
BFM_I00i <= '1';
end if;
end process BFM_IL00;
bfm_llli <= bfm_i00I;
bFM_OI00:
process (bFM_IO1I,HRESP)
begin
if (BFM_io1i = '1' and HRESP = bfm_OLI0) then
bfm_illI <= '1';
else
BFM_illi <= '0';
end if;
end process bFM_OI00;
BFM_LI00:
process (SYSRESETn,HCLK)
begin
if SYSRESETn = '0' then
Bfm_lo1i <= '0';
bfm_io1I <= '0';
elsif (HCLK'event and HCLK = '1') then
if HREADY = '1' then
BFM_LO1i <= bfm_i1li;
bFM_IO1I <= BFM_lo1i;
end if;
end if;
end process bFM_LI00;
bfm_ol1i <= '1' when (bfm_IO1I = '1' and HREADY = '0'
and (HRESP = bFM_LLI0 or HRESP = bfm_ili0)) else
'0';
bfm_II00:
process (SYSRESETN,HCLK)
begin
if SYSRESETn = '0' then
BFm_ll1i <= '0';
elsif (HCLK'EVent and HCLK = '1') then
BFM_ll1i <= bfm_ol1I;
end if;
end process bfm_ii00;
bfm_il1i <= '1' when (bfm_i00I = '1' and (bfm_lO1I = '0' or HREADY = '0')
and bfm_o10I(1) = '1') else
'0';
bfm_OI1I <= '1' when ((bfm_io1i = '1' and bfm_ol1i = '1') or BFM_Il1i = '1') else
'0';
bfm_li1i <= '1' when (BFM_o01i = '1' and Bfm_lo1i = '1'
and HREADY = '1'
and BFm_ll1i = '0') else
'0';
bfm_ii1I <= '1' when BFM_OI1I = '1' else
'0' when BFm_li1i = '1' else
bfm_O01I;
bfm_o000:
process (SYSRESETn,HCLK)
begin
if SYSRESETN = '0' then
BFM_O01i <= '0';
elsif (HCLK'EVEnt and HCLK = '1') then
BFm_o01i <= BFM_ii1i;
end if;
end process bfm_o000;
BFM_L000:
process (SYSRESETn,HCLK)
begin
if SYSRESETn = '0' then
bfm_l01i <= ( others => '0');
Bfm_i01i <= '0';
bfM_O11I <= ( others => '0');
Bfm_l11i <= ( others => '0');
bfm_i11I <= '0';
elsif (HCLK'EVENT and HCLK = '1') then
if BFM_I00i = '1' then
BFM_L01i <= bfm_oili;
bFM_I01I <= Bfm_iili;
bfm_O11I <= BFM_O0li;
bfm_l11I <= bfM_I0LI;
BFM_i11i <= BFM_o1li;
end if;
end if;
end process bFM_L000;
bfm_i000:
process (BFm_o01i,BFM_OILI,Bfm_l01i,bfm_lili,bfm_iili,bfm_I01I,bfm_o0LI,BFM_O11I,BFM_L0Li,BFM_I0LI,BFM_l11i,BFM_O1li,BFM_i11i)
begin
if bfm_o01i = '1' then
HADDR <= BFM_L01i;
bfm_o10I <= Bfm_lil0;
HWRITE <= BFM_I01i;
HSIZE <= bfM_O11I;
HPROT <= bfm_l11i;
BFM_OO1i <= bfm_l0l0;
Bfm_il0l <= bfm_i11I;
else
HADDR <= Bfm_oili;
bfm_O10I <= BFM_Lili;
HWRITE <= Bfm_iili;
HSIZE <= Bfm_o0li;
HPROT <= Bfm_i0li;
bfM_OO1I <= BFM_l0li;
BFM_Il0l <= BFM_O1li;
end if;
end process bfm_I000;
HTRANS <= bfm_ill0 when BFM_ll1i = '1' or bfm_lO1I = '0' else
BFM_O10i;
bfm_i10I <= '1' when bfm_o01I = '1' else
'0' when bfm_lili = bfm_ilL0 else
bfm_L10I;
bfm_o100:
process (SYSRESETn,HCLK)
begin
if SYSRESETn = '0' then
BFM_L10i <= '0';
elsif (HCLK'EVENT and HCLK = '1') then
BFM_l10i <= BFM_I10i;
end if;
end process BFm_o100;
HBURST <= bfm_oo1i when BFM_l10i = '0' else
BFM_L0L0;
end bFM_OLLI;
