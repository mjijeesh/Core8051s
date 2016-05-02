-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2007 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  CoreAhbSram
--               Top level declaration
--
--
-- Revision Information:
-- Date     Description
-- 22Sep08  v1.4 Release
--
-- SVN Revision Information:
-- SVN $Revision: 4086 $
-- SVN $Date: 2008-11-05 20:07:38 +0000 (Wed, 05 Nov 2008) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
--
-- *********************************************************************/

library ieee;
    use ieee.std_logic_1164.all;

package components is

component CoreAhbSram
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
        RAM_BLOCK_INSTANCES            :  integer range 4 to 64 := 4;
        FAMILY                         :  integer range 0 to 23 := 17);
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
end component;

end components;
