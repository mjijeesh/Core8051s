----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Tue May 03 12:11:18 2016
-- Parameters for COREAPBSRAM
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant ADDR_SCHEME : integer := 1;
    constant APB_DWIDTH : integer := 16;
    constant FAMILY : integer := 17;
    constant HDL_license : string( 1 to 1 ) := "U";
    constant NUM_LOCATIONS_DWIDTH08 : integer := 512;
    constant NUM_LOCATIONS_DWIDTH16 : integer := 512;
    constant NUM_LOCATIONS_DWIDTH24 : integer := 512;
    constant NUM_LOCATIONS_DWIDTH32 : integer := 512;
    constant testbench : string( 1 to 4 ) := "User";
end coreparameters;
