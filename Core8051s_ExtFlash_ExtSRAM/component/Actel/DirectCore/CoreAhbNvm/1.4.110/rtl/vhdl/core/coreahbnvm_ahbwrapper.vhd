-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAhbNvm AHB wrapper logic
--
-- Revision Information:
-- Date			Description
-- ----			-----------------------------------------
-- 04Dec09		Production Release Version 1.4
--
-- SVN Revision Information:
-- SVN $Revision: 11364 $
-- SVN $Date: 2009-12-05 20:59:40 -0800 (Sat, 05 Dec 2009) $
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

entity COREAHBNVM_AHBWRAPPER is
generic (
THROUGHPUT_MODE  : integer range 0 to 1:= 1
);
port (
HCLK             : in std_logic;
HRESETN          : in std_logic;
HWRITE           : in std_logic;
HSIZE            : in std_logic_vector(2 downto 0);
HTRANS           : in std_logic_vector(1 downto 0);
HREADYIN         : in std_logic;
HSEL             : in std_logic;
HADDR            : in std_logic_vector(20 downto 0);
HWDATA           : in std_logic_vector(31 downto 0);
HRESP            : out std_logic_vector(1 downto 0);
HREADY           : out std_logic;
ahbAck           : in std_logic;
ahbReq           : out std_logic;
nextAhbReq       : out std_logic;
ahbWrite         : out std_logic;
ahbSize          : out std_logic_vector(2 downto 0);
ahbAddr          : out std_logic_vector(20 downto 0);
ahbWData         : out std_logic_vector(31 downto 0)
);
end entity COREAHBNVM_AHBWRAPPER;

architecture COREAHBNVM_AHBWRAPPER_arch of COREAHBNVM_AHBWRAPPER is

constant TRN_IDLE       : std_logic_vector(1 downto 0) := "00";
constant TRN_BUSY       : std_logic_vector(1 downto 0) := "01";
constant TRN_NSEQ       : std_logic_vector(1 downto 0) := "10";
constant TRN_SEQU       : std_logic_vector(1 downto 0) := "11";
constant RSP_OKAY       : std_logic_vector(1 downto 0) := "00";
constant RSP_ERROR      : std_logic_vector(1 downto 0) := "01";
constant RSP_RETRY      : std_logic_vector(1 downto 0) := "10";
constant RSP_SPLIT      : std_logic_vector(1 downto 0) := "11";
constant FSM_IDLE       : std_logic_vector(2 downto 0) := "001";
constant FSM_DATA_PHASE : std_logic_vector(2 downto 0) := "010";
constant FSM_PROC_REQ   : std_logic_vector(2 downto 0) := "100";

-- Declare intermediate signals for referenced outputs
signal HREADY_xhdl0     : std_logic;
signal nextAhbReq_xhdl2 : std_logic;
signal ahbSize_xhdl1    : std_logic_vector(2 downto 0);

begin
    -- Drive referenced outputs
    HREADY <= HREADY_xhdl0;
    nextAhbReq <= nextAhbReq_xhdl2;
    ahbSize <= ahbSize_xhdl1;
    HRESP <= RSP_OKAY;
    xhdl3 : if (THROUGHPUT_MODE = 0) generate
        signal currAhbAddr  : std_logic_vector(20 downto 0);
        signal currAhbSize  : std_logic_vector(2 downto 0);
        signal currAhbWrite : std_logic;
        signal currAhbReq   : std_logic;
        signal shiftPipe    : std_logic;
    begin
        process (HCLK, HRESETN)
        begin
            if ((not(HRESETN)) = '1') then
                currAhbAddr <= (others => '0');
                currAhbWrite <= '0';
                currAhbSize <= (others => '0');
            elsif (HCLK'event and HCLK = '1') then
                if ((HREADY_xhdl0 and HREADYIN) = '1') then
                    currAhbAddr <= HADDR(20 downto 0);
                    currAhbWrite <= HWRITE;
                    currAhbSize <= HSIZE;
                else
                    currAhbAddr <= currAhbAddr;
                    currAhbWrite <= currAhbWrite;
                    currAhbSize <= ahbSize_xhdl1;
                end if;
            end if;
        end process;
        
        ahbAddr <= currAhbAddr when ((currAhbReq and not(ahbAck)) = '1') else
                   HADDR;
        ahbWrite <= currAhbWrite when ((currAhbReq and not(ahbAck)) = '1') else
                    HWRITE;
        ahbSize_xhdl1 <= currAhbSize when ((currAhbReq and not(ahbAck)) = '1') else
                         HSIZE;
        nextAhbReq_xhdl2 <= '1' when HREADY_xhdl0='1' and HREADYIN='1' and HSEL='1' and
                            ((HTRANS = TRN_NSEQ) or (HTRANS = TRN_SEQU)) else '0';
        process (HCLK, HRESETN)
        begin
            if ((not(HRESETN)) = '1') then
                currAhbReq <= '0';
            elsif (HCLK'event and HCLK = '1') then
                if (shiftPipe = '1') then
                    currAhbReq <= nextAhbReq_xhdl2;
                elsif (ahbAck = '1') then
                    currAhbReq <= '0';
                else
                    currAhbReq <= currAhbReq;
                end if;
            end if;
        end process;
        
        ahbReq <= nextAhbReq_xhdl2 or currAhbReq;
        shiftPipe <= (nextAhbReq_xhdl2 and not(currAhbReq)) or (nextAhbReq_xhdl2 and currAhbReq and ahbAck);
        HREADY_xhdl0 <= ((not(currAhbReq)) or ahbAck);
        ahbWData <= (others => '0');
    end generate;
    xhdl4 : if (not(THROUGHPUT_MODE = 0)) generate
        xhdl5 : if (THROUGHPUT_MODE = 1) generate
            signal HREADY_q     : std_logic;
            signal HREADY_d     : std_logic;
            signal ahbReq_d     : std_logic;
            signal ahbReq_q     : std_logic;
            signal HWRITE_d     : std_logic;
            signal HWRITE_q     : std_logic;
            signal ahbSize_d    : std_logic_vector(2 downto 0);
            signal ahbSize_q    : std_logic_vector(2 downto 0);
            signal ahbAddr_d    : std_logic_vector(20 downto 0);
            signal ahbAddr_q    : std_logic_vector(20 downto 0);
            signal HWDATA_q     : std_logic_vector(31 downto 0);
            signal HWDATA_d     : std_logic_vector(31 downto 0);
            signal cur_state_d  : std_logic_vector(2 downto 0);
            signal cur_state_q  : std_logic_vector(2 downto 0);
            attribute syn_state_machine: boolean;
            attribute syn_state_machine of cur_state_q : signal is false;
        begin
            ahbAddr <= ahbAddr_q;
            ahbWrite <= HWRITE_q;
            ahbSize_xhdl1 <= ahbSize_q;
            nextAhbReq_xhdl2 <= '0';
            ahbReq <= ahbReq_q;
            ahbWData <= HWDATA_q;
            HREADY_xhdl0 <= HREADY_q;
            process (HCLK, HRESETN)
            begin
                if ((not(HRESETN)) = '1') then
                    cur_state_q <= FSM_IDLE;
                    ahbReq_q <= '0';
                    ahbSize_q <= (others => '0');
                    ahbAddr_q <= (others => '0');
                    HWRITE_q <= '0';
                    HWDATA_q <= (others => '0');
                    HREADY_q <= '1';
                elsif (HCLK'event and HCLK = '1') then
                    cur_state_q <= cur_state_d;
                    ahbReq_q <= ahbReq_d;
                    ahbSize_q <= ahbSize_d;
                    ahbAddr_q <= ahbAddr_d;
                    HWRITE_q <= HWRITE_d;
                    HWDATA_q <= HWDATA_d;
                    HREADY_q <= HREADY_d;
                end if;
            end process;
            
            process (cur_state_q, ahbReq_q, ahbSize_q, ahbAddr_q, HWRITE_q, HREADY_q, HWDATA_q,
                     HREADY_xhdl0, HREADYIN, HSEL, HTRANS, HADDR, HWRITE, HSIZE, HWDATA, ahbAck)
            begin
                cur_state_d <= cur_state_q;
                ahbReq_d <= ahbReq_q;
                ahbSize_d <= ahbSize_q;
                ahbAddr_d <= ahbAddr_q;
                HWRITE_d <= HWRITE_q;
                HREADY_d <= HREADY_q;
                HWDATA_d <= HWDATA_q;
                case cur_state_q is --synthesis parallel_case
                    when FSM_IDLE =>
                        if ((HREADY_xhdl0 and HREADYIN and HSEL) = '1' and
                           ((HTRANS = TRN_NSEQ) or (HTRANS = TRN_SEQU))) then
                            cur_state_d <= FSM_DATA_PHASE;
                            ahbAddr_d <= HADDR;
                            HWRITE_d <= HWRITE;
                            ahbSize_d <= HSIZE;
                            HREADY_d <= '0';
                        end if;
                    when FSM_DATA_PHASE =>
                        HREADY_d <= '0';
                        cur_state_d <= FSM_PROC_REQ;
                        HWDATA_d <= HWDATA;
                        ahbReq_d <= '1';
                    when FSM_PROC_REQ =>
                        if (ahbAck = '1') then
                            HREADY_d <= '1';
                            cur_state_d <= FSM_IDLE;
                            ahbReq_d <= '0';
                        else
                            cur_state_d <= FSM_PROC_REQ;
                        end if;
                    when others =>
                        cur_state_d <= FSM_IDLE;
                end case;
            end process;
        end generate;
    end generate;

end architecture COREAHBNVM_AHBWRAPPER_arch;

