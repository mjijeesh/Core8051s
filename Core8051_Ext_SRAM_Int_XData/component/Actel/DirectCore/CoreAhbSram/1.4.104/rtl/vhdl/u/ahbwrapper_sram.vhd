-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2007 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  CoreAhbSram
--               AHB wrapper.
--
-- Revision Information:
-- Date     Description
-- 22Sep08  v1.4 Release
--
-- SVN Revision Information:
-- SVN $Revision: 3200 $
-- SVN $Date: 2008-10-01 19:35:56 +0100 (Wed, 01 Oct 2008) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
--
-- *********************************************************************/

library ieee;
    use ieee.std_logic_1164.all;

ENTITY AhbWrapper_SRAM IS
    PORT (
        -- ---------------------------------------------------------------------
        -- Parameters
        -- ---------------------------------------------------------------------
        -- ---------------------------------------------------------------------
        -- Port declarations
        -- ---------------------------------------------------------------------
        -- AHB interface
        -- Inputs

        HCLK                    : IN std_logic;
        HRESETn                 : IN std_logic;
        -- AhbFabric interface
        -- Inputs

        HWRITE                  : IN std_logic;
        HSIZE                   : IN std_logic_vector(2 DOWNTO 0);
        HTRANS                  : IN std_logic_vector(1 DOWNTO 0);
        HREADYIN                : IN std_logic;
        HSEL                    : IN std_logic;
        HADDR                   : IN std_logic_vector(14 DOWNTO 0);
        -- Output

        HRESP                   : OUT std_logic_vector(1 DOWNTO 0);
        HREADY                  : OUT std_logic;
        -- AhbWrapper interface
        -- Input

        ahbAck                  : IN std_logic;
        -- Outputs

        ahbReq                  : OUT std_logic;
        nextAhbReq              : OUT std_logic;
        ahbWrite                : OUT std_logic;
        ahbSize                 : OUT std_logic_vector(2 DOWNTO 0);
        ahbAddr                 : OUT std_logic_vector(14 DOWNTO 0));
END AhbWrapper_SRAM;

library ieee;
    use ieee.std_logic_1164.all;

ARCHITECTURE RTL OF AhbWrapper_SRAM IS

    -- ---------------------------------------------------------------------
    -- Constant declarations
    -- ---------------------------------------------------------------------

    -- AHB HTRANS constant definitions
    constant TRN_IDLE : std_logic_vector(1 downto 0) := "00";
    constant TRN_BUSY : std_logic_vector(1 downto 0) := "01";
    constant TRN_NSEQ : std_logic_vector(1 downto 0) := "10";
    constant TRN_SEQU : std_logic_vector(1 downto 0) := "11";

    -- AHB HRESP constant definitions
    constant RSP_OKAY  : std_logic_vector(1 downto 0) := "00";
    constant RSP_ERROR : std_logic_vector(1 downto 0) := "01";
    constant RSP_RETRY : std_logic_vector(1 downto 0) := "10";
    constant RSP_SPLIT : std_logic_vector(1 downto 0) := "11";

    -- ---------------------------------------------------------------------
    -- Signal declarations
    -- ---------------------------------------------------------------------
    SIGNAL currAhbAddr              :  std_logic_vector(14 DOWNTO 0);
    SIGNAL currAhbSize              :  std_logic_vector(2 DOWNTO 0);
    SIGNAL currAhbWrite             :  std_logic;
    SIGNAL currAhbReq               :  std_logic;
    SIGNAL shiftPipe                :  std_logic;

    -- Selection of raw or latched address class signals.
    SIGNAL temp_ahbAddr               :  std_logic_vector(14 DOWNTO 0);
    SIGNAL temp_ahbWrite               :  std_logic;
    SIGNAL temp_ahbSize              :  std_logic_vector(2 DOWNTO 0);
    SIGNAL iHREADY             :  std_logic;
    SIGNAL inextAhbReq         :  std_logic;
    SIGNAL iahbSize            :  std_logic_vector(2 DOWNTO 0);

BEGIN
    HREADY <= iHREADY;
    nextAhbReq <= inextAhbReq;
    ahbSize <= iahbSize;

    ------------------------------------------------------------------------
    -- Main body of code
    ------------------------------------------------------------------------
    HRESP <= RSP_OKAY;

    -- Address Class Signal Handling

    PROCESS (HCLK)
    BEGIN
        IF (HCLK'EVENT AND HCLK = '1') THEN
            IF ((iHREADY AND HREADYIN) = '1') THEN
                currAhbAddr <= HADDR;
                currAhbWrite <= HWRITE;
                currAhbSize <= HSIZE;
            ELSE
                currAhbAddr <= currAhbAddr;
                currAhbWrite <= currAhbWrite;
                currAhbSize <= iahbSize;
            END IF;
        END IF;
    END PROCESS;

    ahbAddr <= currAhbAddr WHEN (currAhbReq AND NOT ahbAck) = '1' ELSE HADDR;
    ahbWrite <= currAhbWrite WHEN (currAhbReq AND NOT ahbAck) = '1' ELSE HWRITE;
    iahbSize <= currAhbSize WHEN (currAhbReq AND NOT ahbAck) = '1' ELSE HSIZE;

    -- Next (raw) request decode
    process (iHREADY, HREADYIN, HSEL, HTRANS)
    begin
        inextAhbReq <= '0';
        if ((iHREADY = '1') and (HREADYIN = '1') and (HSEL = '1')) then
            case HTRANS is
                when TRN_NSEQ => inextAhbReq <= '1';
                when TRN_SEQU => inextAhbReq <= '1';
                when others => inextAhbReq <= '0';
            end case;
        end if;
    end process;

    -- Generation of current request

    PROCESS (HCLK, HRESETn)
    BEGIN
        IF (NOT HRESETn = '1') THEN
            currAhbReq <= '0';
        ELSIF (HCLK'EVENT AND HCLK = '1') THEN
            IF (shiftPipe = '1') THEN
                currAhbReq <= inextAhbReq;
            ELSE
                IF (ahbAck = '1') THEN
                    currAhbReq <= '0';
                ELSE
                    currAhbReq <= currAhbReq;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Combined request
    ahbReq <= inextAhbReq OR currAhbReq ;

    -- Pipeline control
    shiftPipe <= (inextAhbReq AND NOT currAhbReq) OR ((inextAhbReq AND currAhbReq) AND ahbAck) ;

    -- HREADY generation
    iHREADY <= (NOT currAhbReq) OR ahbAck ;

END RTL;
