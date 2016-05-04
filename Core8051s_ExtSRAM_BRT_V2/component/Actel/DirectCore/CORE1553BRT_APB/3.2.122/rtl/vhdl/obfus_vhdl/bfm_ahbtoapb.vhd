-- Actel Corporation Proprietary and Confidential
-- Copyright 2008 Actel Corporation.  All rights reserved.
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
-- Revision Information:
-- SVN Revision Information:
-- SVN $Revision: 3562 $
-- SVN $Date: 2008-10-13 06:07:22 -0700 (Mon, 13 Oct 2008) $
library ieee;
use Ieee.std_logic_1164.all;
use IEee.numeric_sTD.all;
use wORK.bfM_MISC.all;
use WORk.bFM_TEXTIo.all;
use work.BFm_package.all;
entity BFMA1o1li is
generic (tpd: inteGER range 0 to 1000 := 1); port (hclk: in Std_logic;
HResetn: in std_lOGIC;
HSEL: in std_loGIC;
Hwrite: in stD_LOGIC;
HADDr: in std_logiC_VECTOr(31 downto 0);
HWdata: in std_lOGIC_VEctor(31 downto 0);
HRDAta: out std_logIC_VECTor(31 downto 0);
hreadyiN: in Std_logic;
hreadyout: out STD_Logic;
htrans: in std_logic_VECTOr(1 downto 0);
hSIZE: in std_LOGIC_Vector(2 downto 0);
hBURST: in STD_logic_vecTOR(2 downto 0);
hmastlocK: in std_logiC;
hprot: in STD_LOgic_vectoR(3 downto 0);
HRESP: out std_logIC;
psel: out stD_LOGIC_vector(15 downto 0);
paddr: out Std_logic_VECTOR(31 downto 0);
pwrite: out std_logIC;
penable: out STD_logic;
pwdata: out Std_logic_VECTOR(31 downto 0);
PRDAta: in std_LOGIC_vector(31 downto 0);
PREady: in std_loGIC;
pslverR: in std_loGIC);
end BFMA1o1li;

architecture BFMA1L10ol of BFMA1o1li is

type BFMA1i10ol is (BFMA1oo1ol,BFMA1lo1ol,BFMA1io1OL,BFMA1oL1OL);

signal BFMA1LL1OL: BFMA1I10ol;

signal BFMA1il1ol: std_lOGIC;

signal BFMA1OI1ol: std_logic;

signal BFMA1li1ol: STD_logic_vecTOR(15 downto 0);

signal BFMA1II1ol: STD_logic_vectOR(31 downto 0);

signal BFMA1o01oL: STD_LOGIc;

signal BFMA1l01ol: std_logic;

signal BFMA1i01OL: std_logic_VECTOr(31 downto 0);

signal BFMA1o11ol: STd_logic_veCTOR(31 downto 0);

signal BFMA1L11ol: STD_LOgic;

signal BFMA1I11OL: STD_LOGIc;

constant BFMA1oo00: timE := tPD*1 Ns;

begin
process (HCLK,hresetn)
begin
if HRESETN = '0' then
BFMA1ll1ol <= BFMA1oo1ol;
BFMA1IL1OL <= '1';
BFMA1ii1ol <= ( others => '0');
BFMA1i01ol <= ( others => '0');
BFMA1O01ol <= '0';
BFMA1l01ol <= '0';
BFMA1oi1oL <= '0';
BFMA1l11ol <= '0';
BFMA1i11ol <= '0';
elsif HCLK = '1' and hclk'event then
BFMA1oi1ol <= '0';
BFMA1il1ol <= '0';
BFMA1l11ol <= '0';
case BFMA1LL1OL is
when BFMA1oo1ol =>
if hsel = '1' and HREADYIn = '1'
and HTRAns(1) = '1' then
BFMA1Ll1ol <= BFMA1lO1OL;
BFMA1ii1oL <= HADDR;
BFMA1o01ol <= hWRITE;
BFMA1l01ol <= '0';
BFMA1l11OL <= HWRite;
BFMA1i11ol <= '1';
else
BFMA1IL1ol <= '1';
end if;
when BFMA1lo1ol =>
BFMA1l01ol <= '1';
BFMA1ll1ol <= BFMA1io1ol;
when BFMA1io1ol =>
if PREADy = '1' then
BFMA1l01ol <= '0';
BFMA1I11ol <= '0';
if pslverr = '0' then
BFMA1LL1Ol <= BFMA1oo1ol;
if hsel = '1' and HREADYIN = '1'
and HTRANS(1) = '1' then
BFMA1LL1ol <= BFMA1LO1ol;
BFMA1II1Ol <= haddr;
BFMA1O01ol <= hwrite;
BFMA1l11ol <= hwrITE;
BFMA1I11OL <= '1';
end if;
else
BFMA1OI1OL <= '1';
BFMA1ll1ol <= BFMA1OL1OL;
end if;
end if;
when BFMA1ol1ol =>
BFMA1oi1ol <= '1';
BFMA1il1ol <= '1';
BFMA1ll1ol <= BFMA1oo1ol;
end case;
if BFMA1l11ol = '1' then
BFMA1i01ol <= HWDATA;
end if;
end if;
end process;
process (BFMA1II1ol,BFMA1I11ol)
begin
BFMA1LI1OL <= ( others => '0');
if BFMA1i11ol = '1' then
for BFMA1O0ii in 0 to 15
loop
BFMA1LI1OL(BFMA1o0ii) <= To_std_logIC(TO_Integer((to_unsiGNED(BFMA1ii1ol(27 downto 24)))) = BFMA1O0II);
end loop;
end if;
end process;
BFMA1o11ol <= HWDAta when (BFMA1l11OL = '1') else
BFMA1I01OL;
HRDATA <= prdaTA after BFMA1oo00;
HREADYout <= BFMA1il1ol or (prEADY and BFMA1i11ol
and BFMA1l01ol
and not Pslverr) after BFMA1oo00;
hreSP <= BFMA1oi1ol after BFMA1OO00;
PSEl <= BFMA1LI1OL after BFMA1oo00;
PADDr <= BFMA1II1OL after BFMA1oo00;
Pwrite <= BFMA1o01oL after BFMA1oo00;
penable <= BFMA1l01ol after BFMA1oo00;
Pwdata <= BFMA1O11ol after BFMA1OO00;
end BFMA1l10ol;
