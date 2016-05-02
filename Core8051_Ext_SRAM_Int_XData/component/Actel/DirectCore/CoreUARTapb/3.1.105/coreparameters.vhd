----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Fri Apr 29 17:24:26 2016
-- Parameters for CoreUARTapb
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant BAUD_VALUE : integer := 1;
    constant FAMILY : integer := 17;
    constant FIXEDMODE : integer := 0;
    constant HDL_license : string( 1 to 1 ) := "U";
    constant PRG_BIT8 : integer := 0;
    constant PRG_PARITY : integer := 0;
    constant RX_FIFO : integer := 0;
    constant testbench : string( 1 to 5 ) := "Verif";
    constant TX_FIFO : integer := 0;
end coreparameters;
