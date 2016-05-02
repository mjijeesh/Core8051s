-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2010 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAHBLite default slave state machine logic for
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
entity COREAHBLITE_DEFAULTSLAVESM is
    port (
        HCLK               : in std_logic;
        HRESETN            : in std_logic;
        DEFSLAVEDATASEL    : in std_logic;
        DEFSLAVEDATAREADY  : out std_logic;
        HRESP_DEFAULT      : out std_logic
    );
end entity COREAHBLITE_DEFAULTSLAVESM;

architecture COREAHBLITE_DEFAULTSLAVESM_arch of COREAHBLITE_DEFAULTSLAVESM is

constant IDLE               :std_logic := '0';
constant HRESPEXTEND        :std_logic := '1';

    signal defSlaveSMNextState    : std_logic;
    signal defSlaveSMCurrentState : std_logic;
begin
    process (defSlaveSMCurrentState, DEFSLAVEDATASEL)
    begin
        DEFSLAVEDATAREADY <= '1';
        HRESP_DEFAULT <= '0';
        case defSlaveSMCurrentState is
            when IDLE =>
                if (DEFSLAVEDATASEL = '1') then
                    DEFSLAVEDATAREADY <= '0';
                    HRESP_DEFAULT <= '1';
                    defSlaveSMNextState <= HRESPEXTEND;
                else
                    defSlaveSMNextState <= IDLE;
                end if;
            when HRESPEXTEND =>
                HRESP_DEFAULT <= '1';
                defSlaveSMNextState <= IDLE;
            when others =>
                defSlaveSMNextState <= IDLE;
        end case;
    end process;
    
    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            defSlaveSMCurrentState <= IDLE;
        elsif (HCLK'event and HCLK = '1') then
            defSlaveSMCurrentState <= defSlaveSMNextState;
        end if;
    end process;
    
    
end architecture COREAHBLITE_DEFAULTSLAVESM_arch;
