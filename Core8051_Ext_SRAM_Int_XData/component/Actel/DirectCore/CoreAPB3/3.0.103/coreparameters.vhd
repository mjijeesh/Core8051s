----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Fri Apr 29 17:24:26 2016
-- Parameters for CoreAPB3
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant APB_DWIDTH : integer := 32;
    constant APBSLOT0ENABLE : integer := 1;
    constant APBSLOT1ENABLE : integer := 1;
    constant APBSLOT2ENABLE : integer := 1;
    constant APBSLOT3ENABLE : integer := 1;
    constant APBSLOT4ENABLE : integer := 0;
    constant APBSLOT5ENABLE : integer := 0;
    constant APBSLOT6ENABLE : integer := 0;
    constant APBSLOT7ENABLE : integer := 0;
    constant APBSLOT8ENABLE : integer := 0;
    constant APBSLOT9ENABLE : integer := 0;
    constant APBSLOT10ENABLE : integer := 0;
    constant APBSLOT11ENABLE : integer := 0;
    constant APBSLOT12ENABLE : integer := 0;
    constant APBSLOT13ENABLE : integer := 0;
    constant APBSLOT14ENABLE : integer := 0;
    constant APBSLOT15ENABLE : integer := 0;
    constant HDL_license : string( 1 to 1 ) := "U";
    constant IADDR_ENABLE : integer := 0;
    constant RANGESIZE : integer := 256;
    constant testbench : string( 1 to 4 ) := "User";
end coreparameters;
