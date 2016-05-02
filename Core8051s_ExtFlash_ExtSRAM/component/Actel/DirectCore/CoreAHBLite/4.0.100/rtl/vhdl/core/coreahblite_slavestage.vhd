-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2010 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAHBLite slave stage logic for
--				matrix (2 masters by 16 slaves),
--				instantiates the following modules:
--				COREAHBLITE_SLAVEARBITER
--
-- Revision Information:
-- Date			Description
-- ----			-----------------------------------------
-- 10Feb10		Production Release Version 3.1
--
-- SVN Revision Information:
-- SVN $Revision: 11955 $
-- SVN $Date: 2010-01-30 23:35:13 +0000 (Sat, 30 Jan 2010) $
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
entity COREAHBLITE_SLAVESTAGE is
    port (
        HCLK                 : in std_logic;
        HRESETN              : in std_logic;
        HREADYOUT            : in std_logic;
        HRESP                : in std_logic;
        HSEL                 : out std_logic;
        HADDR                : out std_logic_vector(31 downto 0);
        HSIZE                : out std_logic_vector(2 downto 0);
        HTRANS               : out std_logic;
        HWRITE               : out std_logic;
        HWDATA               : out std_logic_vector(31 downto 0);
        HREADY_S             : out std_logic;
        HMASTLOCK            : out std_logic;
        MADDRSEL             : in std_logic_vector(1 downto 0);
        MDATASEL             : in std_logic_vector(1 downto 0);
        MPREVDATASLAVEREADY  : in std_logic_vector(1 downto 0);
        MADDRREADY           : out std_logic_vector(1 downto 0);
        MDATAREADY           : out std_logic_vector(1 downto 0);
        MHRESP               : out std_logic_vector(1 downto 0);
        M0GATEDHADDR         : in std_logic_vector(31 downto 0);
        M0GATEDHMASTLOCK     : in std_logic;
        M0GATEDHSIZE         : in std_logic_vector(2 downto 0);
        M0GATEDHTRANS        : in std_logic;
        M0GATEDHWRITE        : in std_logic;
        M1GATEDHADDR         : in std_logic_vector(31 downto 0);
        M1GATEDHMASTLOCK     : in std_logic;
        M1GATEDHSIZE         : in std_logic_vector(2 downto 0);
        M1GATEDHTRANS        : in std_logic;
        M1GATEDHWRITE        : in std_logic;
        HWDATA_M0            : in std_logic_vector(31 downto 0);
        HWDATA_M1            : in std_logic_vector(31 downto 0)
    );
end entity COREAHBLITE_SLAVESTAGE;

architecture trans of COREAHBLITE_SLAVESTAGE is


function or_v (
    v : std_logic_vector) return std_logic is
    variable sl : std_logic := '0';
begin
    for i in v'range loop
       sl := sl or v(i);
    end loop;
    return(sl);
end or_v;

constant TRN_IDLE       : std_logic := '0';
constant MASTER_NONE    : std_logic_vector(1 downto 0) := "00";


    component COREAHBLITE_SLAVEARBITER is
        port (
            HCLK                 : in std_logic;
            HRESETN              : in std_logic;
            MADDRSEL             : in std_logic_vector(1 downto 0);
            ADDRPHEND            : in std_logic;
            M0GATEDHMASTLOCK     : in std_logic;
            M1GATEDHMASTLOCK     : in std_logic;
            MASTERADDRINPROG     : out std_logic_vector(1 downto 0)
        );
    end component;
    
    signal masterAddrInProg           : std_logic_vector(1 downto 0);
    signal masterDataInProg           : std_logic_vector(1 downto 0);
    signal addrPhMasterHREADY         : std_logic;
    signal addrPhMasterDataPhComplete : std_logic;
    signal preHTRANS                  : std_logic;
    
    -- Declare intermediate signals for referenced outputs
    signal HREADY_S_xhdl0             : std_logic;
begin
    -- Drive referenced outputs
    HREADY_S <= HREADY_S_xhdl0;
    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            masterDataInProg <= MASTER_NONE;
        elsif (HCLK'event and HCLK = '1') then
            if (HREADY_S_xhdl0 = '1') then
                masterDataInProg <= masterAddrInProg;
            end if;
        end if;
    end process;
    
    
    
    slave_arbiter : COREAHBLITE_SLAVEARBITER
        port map (
            HCLK              => HCLK,
            HRESETN           => HRESETN,
            MADDRSEL          => MADDRSEL,
            ADDRPHEND         => HREADY_S_xhdl0,
            M0GATEDHMASTLOCK  => M0GATEDHMASTLOCK,
            M1GATEDHMASTLOCK  => M1GATEDHMASTLOCK,
            MASTERADDRINPROG  => masterAddrInProg
        );
    process (masterAddrInProg, M0GATEDHTRANS, M0GATEDHSIZE, M0GATEDHWRITE, M0GATEDHADDR, M0GATEDHMASTLOCK, MPREVDATASLAVEREADY, M1GATEDHTRANS, M1GATEDHSIZE, M1GATEDHWRITE, M1GATEDHADDR, M1GATEDHMASTLOCK)
    begin
        case masterAddrInProg is
            when "01" =>
                HSEL <= '1';
                preHTRANS <= M0GATEDHTRANS;
                HSIZE <= M0GATEDHSIZE;
                HWRITE <= M0GATEDHWRITE;
                HADDR <= M0GATEDHADDR;
                HMASTLOCK <= M0GATEDHMASTLOCK;
                addrPhMasterHREADY <= MPREVDATASLAVEREADY(0);
            when "10" =>
                HSEL <= '1';
                preHTRANS <= M1GATEDHTRANS;
                HSIZE <= M1GATEDHSIZE;
                HWRITE <= M1GATEDHWRITE;
                HADDR <= M1GATEDHADDR;
                HMASTLOCK <= M1GATEDHMASTLOCK;
                addrPhMasterHREADY <= MPREVDATASLAVEREADY(1);
            when others =>
                HSEL <= '0';
                preHTRANS <= TRN_IDLE;
                HSIZE <= "000";
                HWRITE <= '0';
                HADDR <= "00000000000000000000000000000000";
                HMASTLOCK <= '0';
                addrPhMasterHREADY <= '1';
        end case;
    end process;
    
    addrPhMasterDataPhComplete <= or_v((masterAddrInProg and MDATASEL));
    HTRANS <= preHTRANS and (addrPhMasterHREADY or addrPhMasterDataPhComplete);
    HREADY_S_xhdl0 <= HREADYOUT;
    process (masterDataInProg, HWDATA_M0, HWDATA_M1)
    begin
        case masterDataInProg is
            when "01" =>
                HWDATA <= HWDATA_M0;
            when "10" =>
                HWDATA <= HWDATA_M1;
            when others =>
                HWDATA <= "00000000000000000000000000000000";
        end case;
    end process;
    
    process (masterDataInProg, HRESP)
    begin
        MHRESP <= "00";
        case masterDataInProg is
            when "01" =>
                MHRESP(0) <= HRESP;
            when "10" =>
                MHRESP(1) <= HRESP;
            when others =>
                MHRESP <= "00";
        end case;
    end process;
    
    process (MADDRSEL, masterAddrInProg, HREADYOUT)
    begin
        if ((MADDRSEL(0) and not(masterAddrInProg(0))) = '1') then
            MADDRREADY(0) <= '0';
        elsif ((MADDRSEL(0) and masterAddrInProg(0)) = '1') then
            MADDRREADY(0) <= HREADYOUT;
        else
            MADDRREADY(0) <= '1';
        end if;
    end process;
    
    process (MADDRSEL, masterAddrInProg, HREADYOUT)
    begin
        if ((MADDRSEL(1) and not(masterAddrInProg(1))) = '1') then
            MADDRREADY(1) <= '0';
        elsif ((MADDRSEL(1) and masterAddrInProg(1)) = '1') then
            MADDRREADY(1) <= HREADYOUT;
        else
            MADDRREADY(1) <= '1';
        end if;
    end process;
    
    process (MDATASEL, masterDataInProg, HREADYOUT)
    begin
        if ((MDATASEL(0) and not(masterDataInProg(0))) = '1') then
            MDATAREADY(0) <= '0';
        elsif ((MDATASEL(0) and masterDataInProg(0)) = '1') then
            MDATAREADY(0) <= HREADYOUT;
        else
            MDATAREADY(0) <= '1';
        end if;
    end process;
    
    process (MDATASEL, masterDataInProg, HREADYOUT)
    begin
        if ((MDATASEL(1) and not(masterDataInProg(1))) = '1') then
            MDATAREADY(1) <= '0';
        elsif ((MDATASEL(1) and masterDataInProg(1)) = '1') then
            MDATAREADY(1) <= HREADYOUT;
        else
            MDATAREADY(1) <= '1';
        end if;
    end process;
    
    
end architecture trans;


