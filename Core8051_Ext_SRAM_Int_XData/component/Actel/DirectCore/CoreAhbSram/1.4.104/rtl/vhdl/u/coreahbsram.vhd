-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2007 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  CoreAhbSram
--               Provides AHB interface to embedded SRAM.
--
--
-- Revision Information:
-- Date     Description
-- 22Sep08  v1.4 Release
--
-- SVN Revision Information:
-- SVN $Revision: 4346 $
-- SVN $Date: 2008-11-13 21:45:19 +0000 (Thu, 13 Nov 2008) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
--
-- *********************************************************************/

library ieee;
    use ieee.std_logic_1164.all;

ENTITY CoreAhbSram IS
    GENERIC (
        -- ---------------------------------------------------------------------
        -- RAM_BLOCK_INSTANCES determines the size of the memory and can take
        -- values from 4 to 64, in steps of 4.
        --
        -- RAM_BLOCK_INSTANCES      Memory size (KBytes)
        -- ---------------------------------------------
        --           4                       2
        --           8                       4
        --          12                       6
        --          16                       8
        --          20                      10
        --          24                      12
        --          28                      14
        --          32                      16
        --          36                      18
        --          40                      20
        --          44                      22
        --          48                      24
        --          52                      26
        --          56                      28
        --          60                      30
        --          64                      32
        RAM_BLOCK_INSTANCES     :  integer range 4 to 64 := 4;
        FAMILY                  :  integer range 0 to 23 := 17);
    PORT (
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
        HWDATA                  : IN std_logic_vector(31 DOWNTO 0);
        HREADYIN                : IN std_logic;
        HSEL                    : IN std_logic;
        HADDR                   : IN std_logic_vector(14 DOWNTO 0);
        -- Output

        HRDATA                  : OUT std_logic_vector(31 DOWNTO 0);
        HRESP                   : OUT std_logic_vector(1 DOWNTO 0);
        HREADY                  : OUT std_logic);
END CoreAhbSram;

library ieee;
    use ieee.std_logic_1164.all;

ARCHITECTURE RTL OF CoreAhbSram IS

    COMPONENT AhbSramIf
        PORT (
        -- ---------------------------------------------------------------------
        -- Port declarations
        -- ---------------------------------------------------------------------
        -- MP7Bridge interface
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
        HRDATA                  : OUT std_logic_vector(31 DOWNTO 0);
        HRESP                   : OUT std_logic_vector(1 DOWNTO 0);
        HREADY                  : OUT std_logic;

        -- Sram interface
        -- Input
        sramRD                  : IN std_logic_vector(31 DOWNTO 0);
        -- Outputs
        sramREN                 : OUT std_logic;
        sramWEN                 : OUT std_logic_vector(3 DOWNTO 0);
        sramWADDR               : OUT std_logic_vector(14 DOWNTO 0);
        ahbAddr                 : OUT std_logic_vector(14 DOWNTO 0));
    END COMPONENT;

    COMPONENT Sram
        GENERIC (
        -- ---------------------------------------------------------------------
        -- Parameters
        -- ---------------------------------------------------------------------
        RAM_BLOCK_INSTANCES     :  integer := 4);
        PORT (
        -- ---------------------------------------------------------------------
        -- Port declarations
        -- ---------------------------------------------------------------------
        -- MP7Bridge interface
        -- Inputs
        HCLK                    : IN std_logic;
        HRESETn                 : IN std_logic;

        -- AhbFabric interface
        -- Inputs
        writeData               : IN std_logic_vector(31 DOWNTO 0);
        readAddr                : IN std_logic_vector(12 DOWNTO 0);

        -- AhbSramIf interface
        -- Inputs
        sramREN                 : IN std_logic;
        sramWEN                 : IN std_logic_vector(3 DOWNTO 0);
        writeAddr               : IN std_logic_vector(12 DOWNTO 0);
        -- Outputs
        readData                : OUT std_logic_vector(31 DOWNTO 0));
    END COMPONENT;


    -- ---------------------------------------------------------------------
    -- Signal declarations
    -- ---------------------------------------------------------------------
    -- AhbSramIf <-> Sram
    SIGNAL sramREN                  :  std_logic;
    SIGNAL sramWEN                  :  std_logic_vector(3 DOWNTO 0);
    SIGNAL sramWADDR                :  std_logic_vector(14 DOWNTO 0);
    SIGNAL sramRD                   :  std_logic_vector(31 DOWNTO 0);
    SIGNAL ahbAddr                  :  std_logic_vector(14 DOWNTO 0);
    SIGNAL iHRDATA                  :  std_logic_vector(31 DOWNTO 0);
    SIGNAL iHRESP                   :  std_logic_vector(1 DOWNTO 0);
    SIGNAL iHREADY                  :  std_logic;

BEGIN
    HRDATA <= iHRDATA;
    HRESP <= iHRESP;
    HREADY <= iHREADY;

    -- ---------------------------------------------------------------------
    -- Constant declarations
    -- ---------------------------------------------------------------------
    -- ---------------------------------------------------------------------
    -- Main body of code
    -- ---------------------------------------------------------------------
    u_AhbSramIf : AhbSramIf
        PORT MAP (
            HCLK => HCLK,
            HRESETn => HRESETn,
            HWRITE => HWRITE,
            HSIZE => HSIZE,
            HTRANS => HTRANS,
            HREADYIN => HREADYIN,
            HSEL => HSEL,
            HADDR => HADDR,
            HRDATA => iHRDATA,
            HRESP => iHRESP,
            HREADY => iHREADY,
            sramRD => sramRD,
            sramREN => sramREN,
            sramWEN => sramWEN,
            sramWADDR => sramWADDR,
            ahbAddr => ahbAddr);


    u_Sram : Sram
        GENERIC MAP (
            RAM_BLOCK_INSTANCES => RAM_BLOCK_INSTANCES)
        PORT MAP (
            HCLK => HCLK,
            HRESETn => HRESETn,
            writeData => HWDATA,
            readAddr => ahbAddr(14 DOWNTO 2),
            sramREN => sramREN,
            sramWEN => sramWEN,
            writeAddr => sramWADDR(14 DOWNTO 2),
            readData => sramRD);

END RTL;
