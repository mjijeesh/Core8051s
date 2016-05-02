-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAhbNvm - components package
--
-- Revision Information:
-- Date			Description
-- ----			-----------------------------------------
-- 20Nov09		Production Release Version 3.0
--
-- SVN Revision Information:
-- SVN $Revision: 11333 $
-- SVN $Date: 2009-12-04 12:05:53 -0800 (Fri, 04 Dec 2009) $
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

package components is

component CoreAhbNvm
generic (
NVM_INSTANCES       : integer range 1 to 4:= 1;
MAP_NVM0_TO_BLOCK0  : integer range 0 to 1:= 0;
THROUGHPUT_MODE     : integer range 0 to 1:= 1
);
port (
HCLK                : in std_logic;
HRESETn             : in std_logic;
HWRITE              : in std_logic;
HSIZE               : in std_logic_vector(2 downto 0);
HTRANS              : in std_logic_vector(1 downto 0);
HWDATA              : in std_logic_vector(31 downto 0);
HREADYIN            : in std_logic;
HSEL                : in std_logic;
HADDR               : in std_logic_vector(20 downto 0);
HRDATA              : out std_logic_vector(31 downto 0);
HRESP               : out std_logic_vector(1 downto 0);
HREADY              : out std_logic
);
end component;

end components;
