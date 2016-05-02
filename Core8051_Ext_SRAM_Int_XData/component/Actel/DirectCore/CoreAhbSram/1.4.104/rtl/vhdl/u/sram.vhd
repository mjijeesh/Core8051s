-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2007 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  CoreAhbSram
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

ENTITY Sram IS
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
        RAM_BLOCK_INSTANCES     :  integer range 4 to 64 := 4);
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
        writeData               : IN std_logic_vector(31 DOWNTO 0);
        readAddr                : IN std_logic_vector(12 DOWNTO 0);

        -- AhbSramIf interface
        -- Inputs
        sramREN                 : IN std_logic;
        sramWEN                 : IN std_logic_vector(3 DOWNTO 0);
        writeAddr               : IN std_logic_vector(12 DOWNTO 0);
        -- Outputs
        readData                : OUT std_logic_vector(31 DOWNTO 0));
END Sram;

library ieee;
    use ieee.std_logic_1164.all;

ARCHITECTURE RTL OF Sram IS

    COMPONENT sram_512to8192x8
        GENERIC (
            DEPTH            :  integer);
        PORT (
            -- ---------------------------------------------------------------------
            -- Port declarations
            -- ---------------------------------------------------------------------
            -- AhbFabric interface
            -- Inputs
            writeData               : IN std_logic_vector(7 DOWNTO 0);
            -- Output
            readData                : OUT std_logic_vector(7 DOWNTO 0);

            -- AhbSramIf interface
            -- Inputs
            sramWEN                 : IN std_logic;
            sramREN                 : IN std_logic;
            writeAddr               : IN std_logic_vector(12 DOWNTO 0);
            readAddr                : IN std_logic_vector(12 DOWNTO 0);
            clk                     : IN std_logic;
            resetn                  : IN std_logic);
    END COMPONENT;

    function blocks2depth (RAM_BLOCK_INSTANCES : integer)
    return integer is
    begin
        case RAM_BLOCK_INSTANCES is
            when  4 => return 512;
            when  8 => return 1024;
            when 12 => return 1536;
            when 16 => return 2048;
            when 20 => return 2560;
            when 24 => return 3072;
            when 28 => return 3584;
            when 32 => return 4096;
            when 36 => return 4608;
            when 40 => return 5120;
            when 44 => return 5632;
            when 48 => return 6144;
            when 52 => return 6656;
            when 56 => return 7168;
            when 60 => return 7680;
            when 64 => return 8192;
            when others => return 8192;
        end case;
    end function blocks2depth;

    constant DEPTH  : integer := blocks2depth(RAM_BLOCK_INSTANCES);

BEGIN

    sram_byte3 : sram_512to8192x8
        GENERIC MAP (
            DEPTH       => DEPTH)
        PORT MAP (
            writeData   => writeData(31 DOWNTO 24),
            readData    => readData(31 DOWNTO 24),
            sramWEN     => sramWEN(3),
            sramREN     => sramREN,
            writeAddr   => writeAddr(12 DOWNTO 0),
            readAddr    => readAddr(12 DOWNTO 0),
            clk         => HCLK,
            resetn      => HRESETn);

    sram_byte2 : sram_512to8192x8
        GENERIC MAP (
            DEPTH       => DEPTH)
        PORT MAP (
            writeData   => writeData(23 DOWNTO 16),
            readData    => readData(23 DOWNTO 16),
            sramWEN     => sramWEN(2),
            sramREN     => sramREN,
            writeAddr   => writeAddr(12 DOWNTO 0),
            readAddr    => readAddr(12 DOWNTO 0),
            clk         => HCLK,
            resetn      => HRESETn);

    sram_byte1 : sram_512to8192x8
        GENERIC MAP (
            DEPTH       => DEPTH)
        PORT MAP (
            writeData   => writeData(15 DOWNTO 8),
            readData    => readData(15 DOWNTO 8),
            sramWEN     => sramWEN(1),
            sramREN     => sramREN,
            writeAddr   => writeAddr(12 DOWNTO 0),
            readAddr    => readAddr(12 DOWNTO 0),
            clk         => HCLK,
            resetn      => HRESETn);

    sram_byte0 : sram_512to8192x8
        GENERIC MAP (
            DEPTH       => DEPTH)
        PORT MAP (
            writeData   => writeData(7 DOWNTO 0),
            readData    => readData(7 DOWNTO 0),
            sramWEN     => sramWEN(0),
            sramREN     => sramREN,
            writeAddr   => writeAddr(12 DOWNTO 0),
            readAddr    => readAddr(12 DOWNTO 0),
            clk         => HCLK,
            resetn      => HRESETn);

END RTL;
