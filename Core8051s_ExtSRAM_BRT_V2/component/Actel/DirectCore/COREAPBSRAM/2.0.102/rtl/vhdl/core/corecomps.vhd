-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  CoreApbSram
--               corecomps package
--
--
-- Revision Information:
-- Date     Description
--
-- SVN Revision Information:
-- SVN $Revision: 4797 $
-- SVN $Date: 2008-11-27 11:29:27 +0000 (Thu, 27 Nov 2008) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
--
-- ********************************************************************/

library ieee;
use ieee.std_logic_1164.all;

package corecomps is

component sram_512to8192x8
    generic (
        DEPTH           :  integer);
    port (
        clk             : in std_logic;
        resetn          : in std_logic;
        sramREN         : in std_logic;
        sramWEN         : in std_logic;
        writeAddr       : in std_logic_vector(12 downto 0);
        readAddr        : in std_logic_vector(12 downto 0);
        writeData       : in std_logic_vector(7 downto 0);
        readData        : out std_logic_vector(7 downto 0));
end component;

end corecomps;
