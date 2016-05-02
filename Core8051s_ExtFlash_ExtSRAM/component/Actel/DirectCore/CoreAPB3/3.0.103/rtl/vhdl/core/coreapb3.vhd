-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2010 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAPB3 - Actel-enhanced version of AMBA APB3 Fabric
--				instantiates the following modules:
--				COREAPB3_MUXPTOB3
--
-- Revision Information:
-- Date			Description
-- ----			-----------------------------------------
-- 05Feb10		Production Release Version 3.0
--
-- SVN Revision Information:
-- SVN $Revision: 12349 $
-- SVN $Date: 2010-02-27 22:43:45 -0800 (Sat, 27 Feb 2010) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
-- 1. best viewed with tabstops set to "4" (tabs used throughout file)
--
-- *********************************************************************/
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CoreAPB3 is
generic (
APB_DWIDTH       : integer range 8 to 32        := 32;
RANGESIZE        : integer range 256 to 1048576 := 256;
IADDR_ENABLE     : integer range 0 to 1         := 0;
APBSLOT0ENABLE   : integer range 0 to 1         := 1;
APBSLOT1ENABLE   : integer range 0 to 1         := 1;
APBSLOT2ENABLE   : integer range 0 to 1         := 1;
APBSLOT3ENABLE   : integer range 0 to 1         := 1;
APBSLOT4ENABLE   : integer range 0 to 1         := 1;
APBSLOT5ENABLE   : integer range 0 to 1         := 1;
APBSLOT6ENABLE   : integer range 0 to 1         := 1;
APBSLOT7ENABLE   : integer range 0 to 1         := 1;
APBSLOT8ENABLE   : integer range 0 to 1         := 1;
APBSLOT9ENABLE   : integer range 0 to 1         := 1;
APBSLOT10ENABLE  : integer range 0 to 1         := 1;
APBSLOT11ENABLE  : integer range 0 to 1         := 1;
APBSLOT12ENABLE  : integer range 0 to 1         := 1;
APBSLOT13ENABLE  : integer range 0 to 1         := 1;
APBSLOT14ENABLE  : integer range 0 to 1         := 1;
APBSLOT15ENABLE  : integer range 0 to 1         := 1
);
port(
PRESETN       : in  std_logic;
PCLK          : in  std_logic;
PADDR         : in  std_logic_vector(23 downto 0);
PWRITE        : in  std_logic;
PENABLE       : in  std_logic;
PSEL          : in  std_logic;
PWDATA        : in  std_logic_vector(31 downto 0);
PRDATA        : out std_logic_vector(31 downto 0);
PREADY        : out std_logic;
PSLVERR       : out std_logic;
PADDRS        : out std_logic_vector(23 downto 0);
PADDRS0       : out std_logic_vector((((1-IADDR_ENABLE)*24)+((IADDR_ENABLE)*32))-1 downto 0);
PWRITES       : out std_logic;
PENABLES      : out std_logic;
PWDATAS       : out std_logic_vector(31 downto 0);
PSELS0        : out std_logic;
PSELS1        : out std_logic;
PSELS2        : out std_logic;
PSELS3        : out std_logic;
PSELS4        : out std_logic;
PSELS5        : out std_logic;
PSELS6        : out std_logic;
PSELS7        : out std_logic;
PSELS8        : out std_logic;
PSELS9        : out std_logic;
PSELS10       : out std_logic;
PSELS11       : out std_logic;
PSELS12       : out std_logic;
PSELS13       : out std_logic;
PSELS14       : out std_logic;
PSELS15       : out std_logic;
PRDATAS0      : in  std_logic_vector(31 downto 0);
PRDATAS1      : in  std_logic_vector(31 downto 0);
PRDATAS2      : in  std_logic_vector(31 downto 0);
PRDATAS3      : in  std_logic_vector(31 downto 0);
PRDATAS4      : in  std_logic_vector(31 downto 0);
PRDATAS5      : in  std_logic_vector(31 downto 0);
PRDATAS6      : in  std_logic_vector(31 downto 0);
PRDATAS7      : in  std_logic_vector(31 downto 0);
PRDATAS8      : in  std_logic_vector(31 downto 0);
PRDATAS9      : in  std_logic_vector(31 downto 0);
PRDATAS10     : in  std_logic_vector(31 downto 0);
PRDATAS11     : in  std_logic_vector(31 downto 0);
PRDATAS12     : in  std_logic_vector(31 downto 0);
PRDATAS13     : in  std_logic_vector(31 downto 0);
PRDATAS14     : in  std_logic_vector(31 downto 0);
PRDATAS15     : in  std_logic_vector(31 downto 0);
PREADYS0      : in std_logic;
PREADYS1      : in std_logic;
PREADYS2      : in std_logic;
PREADYS3      : in std_logic;
PREADYS4      : in std_logic;
PREADYS5      : in std_logic;
PREADYS6      : in std_logic;
PREADYS7      : in std_logic;
PREADYS8      : in std_logic;
PREADYS9      : in std_logic;
PREADYS10     : in std_logic;
PREADYS11     : in std_logic;
PREADYS12     : in std_logic;
PREADYS13     : in std_logic;
PREADYS14     : in std_logic;
PREADYS15     : in std_logic;
PSLVERRS0     : in std_logic;
PSLVERRS1     : in std_logic;
PSLVERRS2     : in std_logic;
PSLVERRS3     : in std_logic;
PSLVERRS4     : in std_logic;
PSLVERRS5     : in std_logic;
PSLVERRS6     : in std_logic;
PSLVERRS7     : in std_logic;
PSLVERRS8     : in std_logic;
PSLVERRS9     : in std_logic;
PSLVERRS10    : in std_logic;
PSLVERRS11    : in std_logic;
PSLVERRS12    : in std_logic;
PSLVERRS13    : in std_logic;
PSLVERRS14    : in std_logic;
PSLVERRS15    : in std_logic
);
end entity CoreAPB3;

architecture CoreAPB3_arch of CoreAPB3 is
function ezlog2 (val: in integer) return integer is
	variable v:integer;
	variable lg:integer;
begin
	v:=val;
	lg:=0;
	while (v>1) loop
		v	:= v / 2;
		lg	:= lg + 1;
	end loop;
	return(lg);
end ezlog2;
function b2nat (b: in boolean) return natural is
	variable natvar: natural range 0 to 1;
begin
	if (b) then
		natvar:=1;
	else
		natvar:=0;
	end if;
	return natvar;
end b2nat;
constant RANGEBITS          : integer := ezlog2(RANGESIZE);
constant RANGEBITS_LT16     : integer := (RANGEBITS * b2nat(RANGESIZE<65536)) +
                                         (15 * b2nat(RANGESIZE>=65536));
constant IADDR_31_24_8B_A   : std_logic_vector(RANGEBITS-1 downto 0) := std_logic_vector(to_unsigned(12,RANGEBITS));
constant IADDR_23_16_8B_A   : std_logic_vector(RANGEBITS-1 downto 0) := std_logic_vector(to_unsigned(8,RANGEBITS));
constant IADDR_15_8_8B_A    : std_logic_vector(RANGEBITS-1 downto 0) := std_logic_vector(to_unsigned(4,RANGEBITS));
constant IADDR_7_0_8B_A     : std_logic_vector(RANGEBITS-1 downto 0) := std_logic_vector(to_unsigned(0,RANGEBITS));
constant IADDR_31_16_16B_A  : std_logic_vector(RANGEBITS-1 downto 0) := std_logic_vector(to_unsigned(4,RANGEBITS));
constant IADDR_15_0_16B_A   : std_logic_vector(RANGEBITS-1 downto 0) := std_logic_vector(to_unsigned(0,RANGEBITS));
constant IADDR_31_0_32B_A   : std_logic_vector(RANGEBITS-1 downto 0) := std_logic_vector(to_unsigned(0,RANGEBITS));
constant SL0  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT0ENABLE  * (2**0)),16));
constant SL1  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT1ENABLE  * (2**1)),16));
constant SL2  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT2ENABLE  * (2**2)),16));
constant SL3  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT3ENABLE  * (2**3)),16));
constant SL4  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT4ENABLE  * (2**4)),16));
constant SL5  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT5ENABLE  * (2**5)),16));
constant SL6  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT6ENABLE  * (2**6)),16));
constant SL7  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT7ENABLE  * (2**7)),16));
constant SL8  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT8ENABLE  * (2**8)),16));
constant SL9  : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT9ENABLE  * (2**9)),16));
constant SL10 : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT10ENABLE * (2**10)),16));
constant SL11 : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT11ENABLE * (2**11)),16));
constant SL12 : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT12ENABLE * (2**12)),16));
constant SL13 : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT13ENABLE * (2**13)),16));
constant SL14 : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT14ENABLE * (2**14)),16));
constant SL15 : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned((APBSLOT15ENABLE * (2**15)),16));
component COREAPB3_MUXPTOB3
port (
PSELS       : in std_logic_vector(15 downto 0);
PRDATAS0    : in std_logic_vector(31 downto 0);
PRDATAS1    : in std_logic_vector(31 downto 0);
PRDATAS2    : in std_logic_vector(31 downto 0);
PRDATAS3    : in std_logic_vector(31 downto 0);
PRDATAS4    : in std_logic_vector(31 downto 0);
PRDATAS5    : in std_logic_vector(31 downto 0);
PRDATAS6    : in std_logic_vector(31 downto 0);
PRDATAS7    : in std_logic_vector(31 downto 0);
PRDATAS8    : in std_logic_vector(31 downto 0);
PRDATAS9    : in std_logic_vector(31 downto 0);
PRDATAS10   : in std_logic_vector(31 downto 0);
PRDATAS11   : in std_logic_vector(31 downto 0);
PRDATAS12   : in std_logic_vector(31 downto 0);
PRDATAS13   : in std_logic_vector(31 downto 0);
PRDATAS14   : in std_logic_vector(31 downto 0);
PRDATAS15   : in std_logic_vector(31 downto 0);
PREADYS     : in std_logic_vector(15 downto 0);
PSLVERRS    : in std_logic_vector(15 downto 0);
PREADY      : out std_logic;
PSLVERR     : out std_logic;
PRDATA      : out std_logic_vector(31 downto 0)
);
end component;

signal iPADDR      : std_logic_vector(31 downto 0);
signal iPRDATA     : std_logic_vector(31 downto 0);
signal iPRDATAS0   : std_logic_vector(31 downto 0);
signal iPRDATAS1   : std_logic_vector(31 downto 0);
signal iPRDATAS2   : std_logic_vector(31 downto 0);
signal iPRDATAS3   : std_logic_vector(31 downto 0);
signal iPRDATAS4   : std_logic_vector(31 downto 0);
signal iPRDATAS5   : std_logic_vector(31 downto 0);
signal iPRDATAS6   : std_logic_vector(31 downto 0);
signal iPRDATAS7   : std_logic_vector(31 downto 0);
signal iPRDATAS8   : std_logic_vector(31 downto 0);
signal iPRDATAS9   : std_logic_vector(31 downto 0);
signal iPRDATAS10  : std_logic_vector(31 downto 0);
signal iPRDATAS11  : std_logic_vector(31 downto 0);
signal iPRDATAS12  : std_logic_vector(31 downto 0);
signal iPRDATAS13  : std_logic_vector(31 downto 0);
signal iPRDATAS14  : std_logic_vector(31 downto 0);
signal iPRDATAS15  : std_logic_vector(31 downto 0);
signal IA_PRDATAS1 : std_logic_vector(31 downto 0);
signal iPREADYS    : std_logic_vector(15 downto 0);
signal iPSLVERRS   : std_logic_vector(15 downto 0);
signal iPSELS      : std_logic_vector(15 downto 0);
signal slotSel     : std_logic_vector(3 downto 0);
signal TieOffLo32  : std_logic_vector(31 downto 0);
signal TieOffHi    : std_logic;
signal TieOffLo    : std_logic;

begin
    TieOffLo32 <= (others=>'0');
    TieOffHi <= '1';
    TieOffLo <= '0';
    PADDRS <= iPADDR(23 downto 0);
    PADDRS0 <= iPADDR((((1-IADDR_ENABLE)*24)+((IADDR_ENABLE)*32))-1 downto 0);
    PWRITES <= PWRITE;
    PENABLES <= PENABLE;
    PWDATAS <= PWDATA;

    slotSel <= PADDR((RANGEBITS+3) downto (RANGEBITS+0));

    xhdl28 : if (IADDR_ENABLE = 0) generate
        iPADDR(31 downto 0) <= (TieOffLo32(31 downto (RANGEBITS+4)) & PADDR((RANGEBITS + 3) downto 0));
        IA_PRDATAS1(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl29 : if (not(IADDR_ENABLE = 0)) generate
        xhdl30 : if (IADDR_ENABLE = 1) generate
            signal IADDR  : std_logic_vector(31 downto 0);
        begin
            xhdl31 : if (APB_DWIDTH = 8) generate
                process (PCLK, PRESETN)
                begin
                    if (PRESETN = '0') then
                        IADDR(31 downto 0) <= (others=>'0');
                    elsif (PCLK'event and PCLK = '1') then
                        if (RANGESIZE<65536) then
                            if (iPSELS(1) = '1' and PWRITE = '1' and PENABLE = '1' and PADDR((RANGEBITS - 1) downto 0) = IADDR_15_8_8B_A((RANGEBITS - 1) downto 0)) then
                                IADDR(15 downto RANGEBITS_LT16) <= PWDATA(7 downto (RANGEBITS_LT16 - 8));
                            end if;
                        end if;
                        if (iPSELS(1) = '1' and PWRITE = '1' and PENABLE = '1' and PADDR((RANGEBITS - 1) downto 0) = IADDR_23_16_8B_A((RANGEBITS - 1) downto 0)) then
                            IADDR(23 downto 16) <= PWDATA(7 downto 0);
                        end if;
                        if (iPSELS(1) = '1' and PWRITE = '1' and PENABLE = '1' and PADDR((RANGEBITS - 1) downto 0) = IADDR_31_24_8B_A((RANGEBITS - 1) downto 0)) then
                            IADDR(31 downto 24) <= PWDATA(7 downto 0);
                        end if;
                    end if;
                end process;
                
                IA_PRDATAS1(7 downto 0) <= IADDR(7 downto 0) when (PADDR((RANGEBITS - 1) downto 0) = IADDR_7_0_8B_A((RANGEBITS - 1) downto 0)) else
                                           IADDR(15 downto 8) when (PADDR((RANGEBITS - 1) downto 0) = IADDR_15_8_8B_A((RANGEBITS - 1) downto 0)) else
                                           IADDR(23 downto 16) when (PADDR((RANGEBITS - 1) downto 0) = IADDR_23_16_8B_A((RANGEBITS - 1) downto 0)) else
                                           IADDR(31 downto 24) when (PADDR((RANGEBITS - 1) downto 0) = IADDR_31_24_8B_A((RANGEBITS - 1) downto 0)) else
                                           (others=>'0');
            end generate;
            xhdl32 : if (not(APB_DWIDTH = 8)) generate
                xhdl33 : if (APB_DWIDTH = 16) generate
                    process (PCLK, PRESETN)
                    begin
                        if (PRESETN = '0') then
                            IADDR(31 downto 0) <= (others=>'0');
                        elsif (PCLK'event and PCLK = '1') then
                            if (RANGESIZE<65536) then
                                if (iPSELS(1) = '1' and PWRITE = '1' and PENABLE = '1' and PADDR((RANGEBITS - 1) downto 0) = IADDR_15_0_16B_A((RANGEBITS - 1) downto 0)) then
                                    IADDR(15 downto RANGEBITS_LT16) <= PWDATA(15 downto RANGEBITS_LT16);
                                end if;
                            end if;
                            if (iPSELS(1) = '1' and PWRITE = '1' and PENABLE = '1' and PADDR((RANGEBITS - 1) downto 0) = IADDR_31_16_16B_A((RANGEBITS - 1) downto 0)) then
                                IADDR(31 downto 16) <= PWDATA(15 downto 0);
                            end if;
                        end if;
                    end process;
                    
                    IA_PRDATAS1(15 downto 0) <= IADDR(15 downto 0) when (PADDR((RANGEBITS - 1) downto 0) = IADDR_15_0_16B_A((RANGEBITS - 1) downto 0)) else
                                                IADDR(31 downto 16) when (PADDR((RANGEBITS - 1) downto 0) = IADDR_31_16_16B_A((RANGEBITS - 1) downto 0)) else
                                                (others=>'0');
                end generate;
                xhdl34 : if (not(APB_DWIDTH = 16)) generate
                    process (PCLK, PRESETN)
                    begin
                        if (PRESETN = '0') then
                            IADDR(31 downto 0) <= (others=>'0');
                        elsif (PCLK'event and PCLK = '1') then
                            if (iPSELS(1) = '1' and PWRITE = '1' and PENABLE = '1' and PADDR((RANGEBITS - 1) downto 0) = IADDR_31_0_32B_A((RANGEBITS - 1) downto 0)) then
                                IADDR(31 downto RANGEBITS) <= PWDATA(31 downto RANGEBITS);
                            end if;
                        end if;
                    end process;
                    
                    IA_PRDATAS1(31 downto 0) <= IADDR(31 downto 0) when (PADDR((RANGEBITS - 1) downto 0) = IADDR_31_0_32B_A((RANGEBITS - 1) downto 0)) else
                                                (others=>'0');
                end generate;
            end generate;
            iPADDR(31 downto RANGEBITS) <= IADDR(31 downto RANGEBITS) when (iPSELS(0) = '1') else
                                           (TieOffLo32(31 downto RANGEBITS+4) & PADDR((RANGEBITS+3) downto (RANGEBITS+0)));
            iPADDR((RANGEBITS - 1) downto 0) <= PADDR((RANGEBITS - 1) downto 0);
        end generate;
    end generate;
    process (PSEL, slotSel)
    begin
        if (PSEL = '1') then
            case slotSel is
                when "0000" => iPSELS <= SL0;
                when "0001" => iPSELS <= SL1;
                when "0010" => iPSELS <= SL2;
                when "0011" => iPSELS <= SL3;
                when "0100" => iPSELS <= SL4;
                when "0101" => iPSELS <= SL5;
                when "0110" => iPSELS <= SL6;
                when "0111" => iPSELS <= SL7;
                when "1000" => iPSELS <= SL8;
                when "1001" => iPSELS <= SL9;
                when "1010" => iPSELS <= SL10;
                when "1011" => iPSELS <= SL11;
                when "1100" => iPSELS <= SL12;
                when "1101" => iPSELS <= SL13;
                when "1110" => iPSELS <= SL14;
                when "1111" => iPSELS <= SL15;
                when others => iPSELS <= (others=>'0');
            end case;
        else
            iPSELS <= (others=>'0');
        end if;
    end process;
    
    xhdl35 : if (APBSLOT0ENABLE = 1) generate
        iPRDATAS0(31 downto 0) <= PRDATAS0(31 downto 0);
    end generate;
    xhdl36 : if (not(APBSLOT0ENABLE = 1)) generate
        iPRDATAS0(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl37 : if (IADDR_ENABLE = 1) generate
        iPRDATAS1(31 downto 0) <= IA_PRDATAS1(31 downto 0);
    end generate;
    xhdl38 : if (not(IADDR_ENABLE = 1)) generate
        xhdl39 : if (APBSLOT1ENABLE = 1) generate
            iPRDATAS1(31 downto 0) <= PRDATAS1(31 downto 0);
        end generate;
        xhdl40 : if (not(APBSLOT1ENABLE = 1)) generate
            iPRDATAS1(31 downto 0) <= TieOffLo32(31 downto 0);
        end generate;
    end generate;
    xhdl41 : if (APBSLOT2ENABLE = 1) generate
        iPRDATAS2(31 downto 0) <= PRDATAS2(31 downto 0);
    end generate;
    xhdl42 : if (not(APBSLOT2ENABLE = 1)) generate
        iPRDATAS2(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl43 : if (APBSLOT3ENABLE = 1) generate
        iPRDATAS3(31 downto 0) <= PRDATAS3(31 downto 0);
    end generate;
    xhdl44 : if (not(APBSLOT3ENABLE = 1)) generate
        iPRDATAS3(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl45 : if (APBSLOT4ENABLE = 1) generate
        iPRDATAS4(31 downto 0) <= PRDATAS4(31 downto 0);
    end generate;
    xhdl46 : if (not(APBSLOT4ENABLE = 1)) generate
        iPRDATAS4(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl47 : if (APBSLOT5ENABLE = 1) generate
        iPRDATAS5(31 downto 0) <= PRDATAS5(31 downto 0);
    end generate;
    xhdl48 : if (not(APBSLOT5ENABLE = 1)) generate
        iPRDATAS5(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl49 : if (APBSLOT6ENABLE = 1) generate
        iPRDATAS6(31 downto 0) <= PRDATAS6(31 downto 0);
    end generate;
    xhdl50 : if (not(APBSLOT6ENABLE = 1)) generate
        iPRDATAS6(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl51 : if (APBSLOT7ENABLE = 1) generate
        iPRDATAS7(31 downto 0) <= PRDATAS7(31 downto 0);
    end generate;
    xhdl52 : if (not(APBSLOT7ENABLE = 1)) generate
        iPRDATAS7(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl53 : if (APBSLOT8ENABLE = 1) generate
        iPRDATAS8(31 downto 0) <= PRDATAS8(31 downto 0);
    end generate;
    xhdl54 : if (not(APBSLOT8ENABLE = 1)) generate
        iPRDATAS8(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl55 : if (APBSLOT9ENABLE = 1) generate
        iPRDATAS9(31 downto 0) <= PRDATAS9(31 downto 0);
    end generate;
    xhdl56 : if (not(APBSLOT9ENABLE = 1)) generate
        iPRDATAS9(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl57 : if (APBSLOT10ENABLE = 1) generate
        iPRDATAS10(31 downto 0) <= PRDATAS10(31 downto 0);
    end generate;
    xhdl58 : if (not(APBSLOT10ENABLE = 1)) generate
        iPRDATAS10(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl59 : if (APBSLOT11ENABLE = 1) generate
        iPRDATAS11(31 downto 0) <= PRDATAS11(31 downto 0);
    end generate;
    xhdl60 : if (not(APBSLOT11ENABLE = 1)) generate
        iPRDATAS11(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl61 : if (APBSLOT12ENABLE = 1) generate
        iPRDATAS12(31 downto 0) <= PRDATAS12(31 downto 0);
    end generate;
    xhdl62 : if (not(APBSLOT12ENABLE = 1)) generate
        iPRDATAS12(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl63 : if (APBSLOT13ENABLE = 1) generate
        iPRDATAS13(31 downto 0) <= PRDATAS13(31 downto 0);
    end generate;
    xhdl64 : if (not(APBSLOT13ENABLE = 1)) generate
        iPRDATAS13(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl65 : if (APBSLOT14ENABLE = 1) generate
        iPRDATAS14(31 downto 0) <= PRDATAS14(31 downto 0);
    end generate;
    xhdl66 : if (not(APBSLOT14ENABLE = 1)) generate
        iPRDATAS14(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl67 : if (APBSLOT15ENABLE = 1) generate
        iPRDATAS15(31 downto 0) <= PRDATAS15(31 downto 0);
    end generate;
    xhdl68 : if (not(APBSLOT15ENABLE = 1)) generate
        iPRDATAS15(31 downto 0) <= TieOffLo32(31 downto 0);
    end generate;
    xhdl69 : if (APBSLOT0ENABLE = 1) generate
        iPREADYS(0) <= PREADYS0;
    end generate;
    xhdl70 : if (not(APBSLOT0ENABLE = 1)) generate
        iPREADYS(0) <= TieOffHi;
    end generate;
    xhdl71 : if (IADDR_ENABLE = 1) generate
        iPREADYS(1) <= TieOffHi;
    end generate;
    xhdl72 : if (not(IADDR_ENABLE = 1)) generate
        xhdl73 : if (APBSLOT1ENABLE = 1) generate
            iPREADYS(1) <= PREADYS1;
        end generate;
        xhdl74 : if (not(APBSLOT1ENABLE = 1)) generate
            iPREADYS(1) <= TieOffHi;
        end generate;
    end generate;
    xhdl75 : if (APBSLOT2ENABLE = 1) generate
        iPREADYS(2) <= PREADYS2;
    end generate;
    xhdl76 : if (not(APBSLOT2ENABLE = 1)) generate
        iPREADYS(2) <= TieOffHi;
    end generate;
    xhdl77 : if (APBSLOT3ENABLE = 1) generate
        iPREADYS(3) <= PREADYS3;
    end generate;
    xhdl78 : if (not(APBSLOT3ENABLE = 1)) generate
        iPREADYS(3) <= TieOffHi;
    end generate;
    xhdl79 : if (APBSLOT4ENABLE = 1) generate
        iPREADYS(4) <= PREADYS4;
    end generate;
    xhdl80 : if (not(APBSLOT4ENABLE = 1)) generate
        iPREADYS(4) <= TieOffHi;
    end generate;
    xhdl81 : if (APBSLOT5ENABLE = 1) generate
        iPREADYS(5) <= PREADYS5;
    end generate;
    xhdl82 : if (not(APBSLOT5ENABLE = 1)) generate
        iPREADYS(5) <= TieOffHi;
    end generate;
    xhdl83 : if (APBSLOT6ENABLE = 1) generate
        iPREADYS(6) <= PREADYS6;
    end generate;
    xhdl84 : if (not(APBSLOT6ENABLE = 1)) generate
        iPREADYS(6) <= TieOffHi;
    end generate;
    xhdl85 : if (APBSLOT7ENABLE = 1) generate
        iPREADYS(7) <= PREADYS7;
    end generate;
    xhdl86 : if (not(APBSLOT7ENABLE = 1)) generate
        iPREADYS(7) <= TieOffHi;
    end generate;
    xhdl87 : if (APBSLOT8ENABLE = 1) generate
        iPREADYS(8) <= PREADYS8;
    end generate;
    xhdl88 : if (not(APBSLOT8ENABLE = 1)) generate
        iPREADYS(8) <= TieOffHi;
    end generate;
    xhdl89 : if (APBSLOT9ENABLE = 1) generate
        iPREADYS(9) <= PREADYS9;
    end generate;
    xhdl90 : if (not(APBSLOT9ENABLE = 1)) generate
        iPREADYS(9) <= TieOffHi;
    end generate;
    xhdl91 : if (APBSLOT10ENABLE = 1) generate
        iPREADYS(10) <= PREADYS10;
    end generate;
    xhdl92 : if (not(APBSLOT10ENABLE = 1)) generate
        iPREADYS(10) <= TieOffHi;
    end generate;
    xhdl93 : if (APBSLOT11ENABLE = 1) generate
        iPREADYS(11) <= PREADYS11;
    end generate;
    xhdl94 : if (not(APBSLOT11ENABLE = 1)) generate
        iPREADYS(11) <= TieOffHi;
    end generate;
    xhdl95 : if (APBSLOT12ENABLE = 1) generate
        iPREADYS(12) <= PREADYS12;
    end generate;
    xhdl96 : if (not(APBSLOT12ENABLE = 1)) generate
        iPREADYS(12) <= TieOffHi;
    end generate;
    xhdl97 : if (APBSLOT13ENABLE = 1) generate
        iPREADYS(13) <= PREADYS13;
    end generate;
    xhdl98 : if (not(APBSLOT13ENABLE = 1)) generate
        iPREADYS(13) <= TieOffHi;
    end generate;
    xhdl99 : if (APBSLOT14ENABLE = 1) generate
        iPREADYS(14) <= PREADYS14;
    end generate;
    xhdl100 : if (not(APBSLOT14ENABLE = 1)) generate
        iPREADYS(14) <= TieOffHi;
    end generate;
    xhdl101 : if (APBSLOT15ENABLE = 1) generate
        iPREADYS(15) <= PREADYS15;
    end generate;
    xhdl102 : if (not(APBSLOT15ENABLE = 1)) generate
        iPREADYS(15) <= TieOffHi;
    end generate;
    xhdl103 : if (APBSLOT0ENABLE = 1) generate
        iPSLVERRS(0) <= PSLVERRS0;
    end generate;
    xhdl104 : if (not(APBSLOT0ENABLE = 1)) generate
        iPSLVERRS(0) <= TieOffLo;
    end generate;
    xhdl105 : if (IADDR_ENABLE = 1) generate
        iPSLVERRS(1) <= TieOffLo;
    end generate;
    xhdl106 : if (not(IADDR_ENABLE = 1)) generate
        xhdl107 : if (APBSLOT1ENABLE = 1) generate
            iPSLVERRS(1) <= PSLVERRS1;
        end generate;
        xhdl108 : if (not(APBSLOT1ENABLE = 1)) generate
            iPSLVERRS(1) <= TieOffLo;
        end generate;
    end generate;
    xhdl109 : if (APBSLOT2ENABLE = 1) generate
        iPSLVERRS(2) <= PSLVERRS2;
    end generate;
    xhdl110 : if (not(APBSLOT2ENABLE = 1)) generate
        iPSLVERRS(2) <= TieOffLo;
    end generate;
    xhdl111 : if (APBSLOT3ENABLE = 1) generate
        iPSLVERRS(3) <= PSLVERRS3;
    end generate;
    xhdl112 : if (not(APBSLOT3ENABLE = 1)) generate
        iPSLVERRS(3) <= TieOffLo;
    end generate;
    xhdl113 : if (APBSLOT4ENABLE = 1) generate
        iPSLVERRS(4) <= PSLVERRS4;
    end generate;
    xhdl114 : if (not(APBSLOT4ENABLE = 1)) generate
        iPSLVERRS(4) <= TieOffLo;
    end generate;
    xhdl115 : if (APBSLOT5ENABLE = 1) generate
        iPSLVERRS(5) <= PSLVERRS5;
    end generate;
    xhdl116 : if (not(APBSLOT5ENABLE = 1)) generate
        iPSLVERRS(5) <= TieOffLo;
    end generate;
    xhdl117 : if (APBSLOT6ENABLE = 1) generate
        iPSLVERRS(6) <= PSLVERRS6;
    end generate;
    xhdl118 : if (not(APBSLOT6ENABLE = 1)) generate
        iPSLVERRS(6) <= TieOffLo;
    end generate;
    xhdl119 : if (APBSLOT7ENABLE = 1) generate
        iPSLVERRS(7) <= PSLVERRS7;
    end generate;
    xhdl120 : if (not(APBSLOT7ENABLE = 1)) generate
        iPSLVERRS(7) <= TieOffLo;
    end generate;
    xhdl121 : if (APBSLOT8ENABLE = 1) generate
        iPSLVERRS(8) <= PSLVERRS8;
    end generate;
    xhdl122 : if (not(APBSLOT8ENABLE = 1)) generate
        iPSLVERRS(8) <= TieOffLo;
    end generate;
    xhdl123 : if (APBSLOT9ENABLE = 1) generate
        iPSLVERRS(9) <= PSLVERRS9;
    end generate;
    xhdl124 : if (not(APBSLOT9ENABLE = 1)) generate
        iPSLVERRS(9) <= TieOffLo;
    end generate;
    xhdl125 : if (APBSLOT10ENABLE = 1) generate
        iPSLVERRS(10) <= PSLVERRS10;
    end generate;
    xhdl126 : if (not(APBSLOT10ENABLE = 1)) generate
        iPSLVERRS(10) <= TieOffLo;
    end generate;
    xhdl127 : if (APBSLOT11ENABLE = 1) generate
        iPSLVERRS(11) <= PSLVERRS11;
    end generate;
    xhdl128 : if (not(APBSLOT11ENABLE = 1)) generate
        iPSLVERRS(11) <= TieOffLo;
    end generate;
    xhdl129 : if (APBSLOT12ENABLE = 1) generate
        iPSLVERRS(12) <= PSLVERRS12;
    end generate;
    xhdl130 : if (not(APBSLOT12ENABLE = 1)) generate
        iPSLVERRS(12) <= TieOffLo;
    end generate;
    xhdl131 : if (APBSLOT13ENABLE = 1) generate
        iPSLVERRS(13) <= PSLVERRS13;
    end generate;
    xhdl132 : if (not(APBSLOT13ENABLE = 1)) generate
        iPSLVERRS(13) <= TieOffLo;
    end generate;
    xhdl133 : if (APBSLOT14ENABLE = 1) generate
        iPSLVERRS(14) <= PSLVERRS14;
    end generate;
    xhdl134 : if (not(APBSLOT14ENABLE = 1)) generate
        iPSLVERRS(14) <= TieOffLo;
    end generate;
    xhdl135 : if (APBSLOT15ENABLE = 1) generate
        iPSLVERRS(15) <= PSLVERRS15;
    end generate;
    xhdl136 : if (not(APBSLOT15ENABLE = 1)) generate
        iPSLVERRS(15) <= TieOffLo;
    end generate;

    u_mux_p_to_b3 : COREAPB3_MUXPTOB3
        port map (
            PSELS      => iPSELS(15 downto 0),
            PRDATAS0   => iPRDATAS0(31 downto 0),
            PRDATAS1   => iPRDATAS1(31 downto 0),
            PRDATAS2   => iPRDATAS2(31 downto 0),
            PRDATAS3   => iPRDATAS3(31 downto 0),
            PRDATAS4   => iPRDATAS4(31 downto 0),
            PRDATAS5   => iPRDATAS5(31 downto 0),
            PRDATAS6   => iPRDATAS6(31 downto 0),
            PRDATAS7   => iPRDATAS7(31 downto 0),
            PRDATAS8   => iPRDATAS8(31 downto 0),
            PRDATAS9   => iPRDATAS9(31 downto 0),
            PRDATAS10  => iPRDATAS10(31 downto 0),
            PRDATAS11  => iPRDATAS11(31 downto 0),
            PRDATAS12  => iPRDATAS12(31 downto 0),
            PRDATAS13  => iPRDATAS13(31 downto 0),
            PRDATAS14  => iPRDATAS14(31 downto 0),
            PRDATAS15  => iPRDATAS15(31 downto 0),
            PREADYS    => iPREADYS(15 downto 0),
            PSLVERRS   => iPSLVERRS(15 downto 0),
            PREADY     => PREADY,
            PSLVERR    => PSLVERR,
            PRDATA     => iPRDATA(31 downto 0)
        );
    PRDATA(31 downto 0) <= iPRDATA(31 downto 0);
    PSELS0 <= iPSELS(0);
    xhdl137 : if (IADDR_ENABLE = 1) generate
        PSELS1 <= '0';
    end generate;
    xhdl138 : if (not(IADDR_ENABLE = 1)) generate
        PSELS1 <= iPSELS(1);
    end generate;
    PSELS2 <= iPSELS(2);
    PSELS3 <= iPSELS(3);
    PSELS4 <= iPSELS(4);
    PSELS5 <= iPSELS(5);
    PSELS6 <= iPSELS(6);
    PSELS7 <= iPSELS(7);
    PSELS8 <= iPSELS(8);
    PSELS9 <= iPSELS(9);
    PSELS10 <= iPSELS(10);
    PSELS11 <= iPSELS(11);
    PSELS12 <= iPSELS(12);
    PSELS13 <= iPSELS(13);
    PSELS14 <= iPSELS(14);
    PSELS15 <= iPSELS(15);
    
end architecture CoreAPB3_arch;
