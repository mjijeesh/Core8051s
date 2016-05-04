----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Tue May 03 12:11:18 2016
-- Parameters for CORE8051S
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant APB_DWIDTH : integer := 32;
    constant DEBUG : integer := 2;
    constant EN_FF_OPTS : integer := 0;
    constant FAMILY : integer := 17;
    constant HDL_license : string( 1 to 1 ) := "U";
    constant INCL_DPTR1 : integer := 1;
    constant INCL_MUL_DIV_DA : integer := 1;
    constant INCL_TRACE : integer := 0;
    constant INTRAM_IMPLEMENTATION : integer := 0;
    constant STRETCH_VAL : integer := 1;
    constant TRIG_NUM : integer := 4;
    constant VARIABLE_STRETCH : integer := 0;
    constant VARIABLE_WAIT : integer := 0;
    constant WAIT_VAL : integer := 1;
end coreparameters;
