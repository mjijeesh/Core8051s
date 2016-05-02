-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2010 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAHBLite slave arbiter logic for
--				matrix (2 masters by 16 slaves)
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
entity COREAHBLITE_SLAVEARBITER is
    port (
        HCLK              : in std_logic;
        HRESETN           : in std_logic;
        MADDRSEL          : in std_logic_vector(1 downto 0);
        ADDRPHEND         : in std_logic;
        M0GATEDHMASTLOCK  : in std_logic;
        M1GATEDHMASTLOCK  : in std_logic;
        MASTERADDRINPROG  : out std_logic_vector(1 downto 0)
    );
end entity COREAHBLITE_SLAVEARBITER;

architecture COREAHBLITE_SLAVEARBITER_arch of COREAHBLITE_SLAVEARBITER is

constant M1DONE           : std_logic_vector(2 downto 0) := "000";
constant M0EXTEND         : std_logic_vector(2 downto 0) := "001";
constant M1EXTEND         : std_logic_vector(2 downto 0) := "010";
constant M0DONE           : std_logic_vector(2 downto 0) := "011";
constant M0LOCK           : std_logic_vector(2 downto 0) := "100";
constant M1LOCK           : std_logic_vector(2 downto 0) := "101";
constant M0LOCKEXTEND     : std_logic_vector(2 downto 0) := "110";
constant M1LOCKEXTEND     : std_logic_vector(2 downto 0) := "111";

constant MASTER_0         : std_logic_vector(1 downto 0) := "01";
constant MASTER_1         : std_logic_vector(1 downto 0) := "10";
constant MASTER_NONE      : std_logic_vector(1 downto 0) := "00";


    signal arbRegSMNextState    : std_logic_vector(2 downto 0);
    signal arbRegSMCurrentState : std_logic_vector(2 downto 0);
begin
    process (arbRegSMCurrentState, MADDRSEL, M0GATEDHMASTLOCK, ADDRPHEND, M1GATEDHMASTLOCK)
    begin
        MASTERADDRINPROG <= MASTER_NONE;
        case arbRegSMCurrentState is
            when M1DONE =>
                if ((MADDRSEL(0)) = '1') then
                    if (M0GATEDHMASTLOCK = '1') then
                        arbRegSMNextState <= M0LOCK;
                    else
                        MASTERADDRINPROG <= MASTER_0;
                        if (ADDRPHEND = '1') then
                            arbRegSMNextState <= M0DONE;
                        else
                            arbRegSMNextState <= M0EXTEND;
                        end if;
                    end if;
                elsif ((MADDRSEL(1)) = '1') then
                    if (M1GATEDHMASTLOCK = '1') then
                        arbRegSMNextState <= M1LOCK;
                    else
                        MASTERADDRINPROG <= MASTER_1;
                        if (ADDRPHEND = '1') then
                            arbRegSMNextState <= M1DONE;
                        else
                            arbRegSMNextState <= M1EXTEND;
                        end if;
                    end if;
                else
                    arbRegSMNextState <= M1DONE;
                end if;
            when M0DONE =>
                if ((MADDRSEL(1)) = '1') then
                    if (M1GATEDHMASTLOCK = '1') then
                        arbRegSMNextState <= M1LOCK;
                    else
                        MASTERADDRINPROG <= MASTER_1;
                        if (ADDRPHEND = '1') then
                            arbRegSMNextState <= M1DONE;
                        else
                            arbRegSMNextState <= M1EXTEND;
                        end if;
                    end if;
                elsif ((MADDRSEL(0)) = '1') then
                    if (M0GATEDHMASTLOCK = '1') then
                        arbRegSMNextState <= M0LOCK;
                    else
                        MASTERADDRINPROG <= MASTER_0;
                        if (ADDRPHEND = '1') then
                            arbRegSMNextState <= M0DONE;
                        else
                            arbRegSMNextState <= M0EXTEND;
                        end if;
                    end if;
                else
                    arbRegSMNextState <= M0DONE;
                end if;
            when M0EXTEND =>
                MASTERADDRINPROG <= MASTER_0;
                if (ADDRPHEND = '1') then
                    arbRegSMNextState <= M0DONE;
                else
                    arbRegSMNextState <= M0EXTEND;
                end if;
            when M1EXTEND =>
                MASTERADDRINPROG <= MASTER_1;
                if (ADDRPHEND = '1') then
                    arbRegSMNextState <= M1DONE;
                else
                    arbRegSMNextState <= M1EXTEND;
                end if;
            when M0LOCK =>
                if (M0GATEDHMASTLOCK = '1') then
                    if ((MADDRSEL(0)) = '1') then
                        MASTERADDRINPROG <= MASTER_0;
                        if (ADDRPHEND = '1') then
                            arbRegSMNextState <= M0LOCK;
                        else
                            arbRegSMNextState <= M0LOCKEXTEND;
                        end if;
                    else
                        arbRegSMNextState <= M0LOCK;
                    end if;
                else
                    arbRegSMNextState <= M0DONE;
                end if;
            when M0LOCKEXTEND =>
                MASTERADDRINPROG <= MASTER_0;
                if (ADDRPHEND = '1') then
                    arbRegSMNextState <= M0LOCK;
                else
                    arbRegSMNextState <= M0LOCKEXTEND;
                end if;
            when M1LOCK =>
                if (M1GATEDHMASTLOCK = '1') then
                    if ((MADDRSEL(1)) = '1') then
                        MASTERADDRINPROG <= MASTER_1;
                        if (ADDRPHEND = '1') then
                            arbRegSMNextState <= M1LOCK;
                        else
                            arbRegSMNextState <= M1LOCKEXTEND;
                        end if;
                    else
                        arbRegSMNextState <= M1LOCK;
                    end if;
                else
                    arbRegSMNextState <= M1DONE;
                end if;
            when M1LOCKEXTEND =>
                MASTERADDRINPROG <= MASTER_1;
                if (ADDRPHEND = '1') then
                    arbRegSMNextState <= M1LOCK;
                else
                    arbRegSMNextState <= M1LOCKEXTEND;
                end if;
            
            when others =>
                arbRegSMNextState <= M1DONE;
        end case;
    end process;
    
    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            arbRegSMCurrentState <= M1DONE;
        elsif (HCLK'event and HCLK = '1') then
            arbRegSMCurrentState <= arbRegSMNextState;
        end if;
    end process;
    
    
end architecture COREAHBLITE_SLAVEARBITER_arch;
