-------------------------------------------------------------------------------
-- Copyright 2006 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- File:            tb_oci_sys.vhd
--
-- Description:     Top-level Verification OCI testbench for Core8051s
--
-- Rev:             1.2  Dec06
--
-- Notes:
--
-------------------------------------------------------------------------------

LIBRARY std,ieee;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE WORK.jtagdef.ALL;

                         -----------------------
                         --                   --
                         -- MODULE DEFINITION --
                         --                   --
                         -----------------------
ENTITY tb_oci_sys IS
-- TFB added 7/24/03
	generic (
    -- DEBUG controls whether or not the On Chip Instrumentation (OCI)
    -- debug block is included and also the nature of the JTAG connection
    -- used for debugging. The JTAG connection can be implemented using
    -- either the UJTAG macro or by making use of general purpose I/O pins
    -- on the FPGA. DEBUG is used to set the values of the internal parameters
    -- USE_OCI and USE_UJTAG.
    -- Settings for DEBUG are as follows:
    --
    -- DEBUG  USE_OCI  USE_UJTAG  Comments
    -- --------------------------------------------------------------
    --   0       0         0      OCI block not included
    --   1       1         0      OCI included, UJTAG macro not used
    --   2       1         1      OCI included, UJTAG macro in use
    --
    DEBUG       : integer := 1;
    -- set this to 1 to include OCI trace RAM
    INCL_TRACE  : integer := 1;
	-- TRIG_NUM
	-- no triggers:  set value to 0
	--  1 trigger:   set value to 1
	--  2 triggers:  set value to 2
	--  4 triggers:  set value to 4
	TRIG_NUM	: integer := 0;
	-- WAITSTATES
	--    For simulation, determines the waitstate count for memory.
	--    This value is not used in synthesis.
	WAITSTATES	: integer := 0
	);
END tb_oci_sys;

ARCHITECTURE rtl OF tb_oci_sys IS

                         -----------------------
                         --                   --
                         --  LOCAL VARIABLES  --
                         --                   --
                         -----------------------
  CONSTANT TRACE_DEPTH     : integer := 8;

  CONSTANT CLK_half        : time := 50 ns;       -- CLK is 10 MHz
  CONSTANT TCK_half        : time := 60 ns;       -- TCK is 8.33 MHz (max is CLK)

  FILE fp1                 : TEXT IS OUT "STD_OUTPUT";  -- file descriptor
  FILE fp2                 : TEXT IS OUT "ocisim.log";  -- file descriptor
  SIGNAL done              :  boolean := false;
  SIGNAL ckcon_value       : std_logic_vector(7 DOWNTO 0);

  SIGNAL clkcpu            : std_logic;
  SIGNAL resetiB           : std_logic;
  SIGNAL TCK               : std_logic;
  SIGNAL TMS               : std_logic;
  SIGNAL TDI               : std_logic;
  SIGNAL TRSTB             : std_logic;
  SIGNAL BreakIn           : std_logic;
  SIGNAL BreakOut          : std_logic;
  SIGNAL AuxOut            : std_logic;
  SIGNAL TDO               : std_logic;
  SIGNAL TrigOut           : std_logic;

  SIGNAL TDOsr             : std_logic_vector(39 DOWNTO 0);
  SIGNAL TDOlat            : std_logic_vector(39 DOWNTO 0);
  SIGNAL TDOout            : std_logic_vector(39 DOWNTO 0);


-- TFB modified 7/24/03
--  COMPONENT oci_sys port (
  component oci_sys
	generic (
    -- DEBUG controls whether or not the On Chip Instrumentation (OCI)
    -- debug block is included and also the nature of the JTAG connection
    -- used for debugging. The JTAG connection can be implemented using
    -- either the UJTAG macro or by making use of general purpose I/O pins
    -- on the FPGA. DEBUG is used to set the values of the internal parameters
    -- USE_OCI and USE_UJTAG.
    -- Settings for DEBUG are as follows:
    --
    -- DEBUG  USE_OCI  USE_UJTAG  Comments
    -- --------------------------------------------------------------
    --   0       0         0      OCI block not included
    --   1       1         0      OCI included, UJTAG macro not used
    --   2       1         1      OCI included, UJTAG macro in use
    --
    DEBUG           : integer := 1;
    -- set this to 1 to include OCI trace RAM
    INCL_TRACE      : integer := 1;
    -- TRIG_NUM
    -- no triggers:  set value to 0
    --  1 trigger:   set value to 1
    --  2 triggers:  set value to 2
    --  4 triggers:  set value to 4
    TRIG_NUM        : integer := 0;
    ------- various rtl optimizations for synthesis size reductions ------
    -- set to 1 to enable ff optimizations ...
    EN_FF_OPTS      : integer := 0;
    -- APB data width - possible values are 8, 16 or 32
    APB_DWIDTH      : integer := 32;
    -- set to 1 to include second data pointer (DPTR1)
    INCL_DPTR1      : integer := 1;
    -- set to 1 to include multiply, divide and decimal-adjust instruction functionality
    INCL_MUL_DIV_DA : integer := 1;
    -- set to 1 to use MEMACKI control for external data memory
    VARIABLE_STRETCH: integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_STRETCH = 0
    -- range is 0 to 7
    STRETCH_VAL     : integer := 1;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_WAIT = 0
    -- range is 0 to 7
    WAIT_VAL        : integer := 0;
	-- WAITSTATES
	--    For simulation, determines the waitstate count for memory.
	--    This value is not used in synthesis.
	WAITSTATES      : integer := 0
	);
	port (
     clk              : IN std_logic;   -- CPU clock input
     resetiB          : IN std_logic;   -- System reset input (active low)
     tck              : IN std_logic;   -- JTAG clock
     tdi              : IN std_logic;   -- JTAG data in
     tms              : IN std_logic;   -- JTAG mode in
     tdo              : OUT std_logic;  -- JTAG data out
     TRSTB            : IN std_logic;   -- JTAG reset
     TrigOut          : OUT std_logic;  -- OCI trigger output
     BreakIn          : IN std_logic;   -- Break bus input
     BreakOut         : OUT std_logic;  -- Break bus output
     AuxOut           : OUT std_logic); -- Aux output
   end COMPONENT;


                         -----------------------
                         --                   --
                         --    FUNCTIONS      --
                         --                   --
                         -----------------------

   FUNCTION hex(
      A                     : IN string;
      size                  : IN integer) return std_logic_vector is
      variable   nibble  : std_logic_vector(3 downto 0);
      variable   data    : std_logic_vector(63 downto 0) := (others=>'0');
      variable   offset  : integer := 0;
   BEGIN
      l1:for index in a'length downto 1
      loop
         case a(index) is
            when '0'     => nibble := "0000";
            when '1'     => nibble := "0001";
            when '2'     => nibble := "0010";
            when '3'     => nibble := "0011";
            when '4'     => nibble := "0100";
            when '5'     => nibble := "0101";
            when '6'     => nibble := "0110";
            when '7'     => nibble := "0111";
            when '8'     => nibble := "1000";
            when '9'     => nibble := "1001";
            when 'A'|'a' => nibble := "1010";
            when 'B'|'b' => nibble := "1011";
            when 'C'|'c' => nibble := "1100";
            when 'D'|'d' => nibble := "1101";
            when 'E'|'e' => nibble := "1110";
            when 'F'|'f' => nibble := "1111";
            when others  => null;
         end case;
         data((offset+3) DOWNTO offset) := nibble(3 DOWNTO 0);
         offset := offset + 4;
      end loop l1;
      return data((size-1) downto 0);
   END hex;

                         -----------------------
                         --                   --
                         -- Support Procedures--
                         --                   --
                         -----------------------
   PROCEDURE fdisplay(
      A : in string) is
      VARIABLE   line_handle  : LINE;
   begin
      write(line_handle, A);
      writeline(fp1,line_handle);
      write(line_handle, A);
      writeline(fp2,line_handle);
   end fdisplay;

   --
   -- TC1: Generate one JTAG TCK, supplying TMS and TDI and capturing TDO.
   --

   PROCEDURE TC1 (
      SIGNAL TMS              : OUT   std_logic;
      SIGNAL TDI              : OUT   std_logic;
      SIGNAL TCK              : IN    std_logic;
      SIGNAL TDOsr            : INOUT std_logic_vector(39 DOWNTO 0);
      TMSin                   : IN    std_logic;
      TDIin                   : IN    std_logic
                 ) IS
   BEGIN
      WAIT UNTIL (TCK'EVENT AND TCK='0');
      TMS <= TMSin;
      TDI <= TDIin;
      WAIT UNTIL (TCK'EVENT AND TCK='1');
      TDOsr(39 DOWNTO 0) <= TDO & TDOsr(39 DOWNTO 1);
   END TC1;

   --
   -- TC1X: Generate one JTAG TCK, supplying TMS and TDI and NOT capturing TDO.
   --

   PROCEDURE TC1X (
      SIGNAL TMS              : OUT   std_logic;
      SIGNAL TDI              : OUT   std_logic;
      SIGNAL TCK              : IN    std_logic;
      SIGNAL TDOsr            : INOUT std_logic_vector(39 DOWNTO 0);
      TMSin                   : IN    std_logic;
      TDIin                   : IN    std_logic
                 ) IS
   BEGIN
      WAIT UNTIL (TCK'EVENT AND TCK='0');
      TMS <= TMSin;
      TDI <= TDIin;
      WAIT UNTIL (TCK'EVENT AND TCK='1');
   END TC1X;

   --
   -- SHIFT:  From Pause, go to Shift, supply 8 bits, then traverse to Pause state.
   --

   PROCEDURE SHIFT (
      SIGNAL TMS              : OUT   std_logic;
      SIGNAL TDI              : OUT   std_logic;
      SIGNAL TCK              : IN    std_logic;
      SIGNAL TDOsr            : INOUT std_logic_vector(39 DOWNTO 0);
      in_xhdl9                : IN std_logic_vector(7 DOWNTO 0)
                   ) IS
   BEGIN
      TC1X(TMS,TDI, TCK, TDOsr, '1', '0');           -- exit2
      TC1X(TMS,TDI, TCK, TDOsr, '0', '0');           -- shift
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl9(0));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl9(1));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl9(2));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl9(3));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl9(4));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl9(5));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl9(6));
      TC1(TMS, TDI, TCK, TDOsr, '1', in_xhdl9(7));   -- exit1
      TC1X(TMS,TDI, TCK, TDOsr, '0', '0');           -- pause
   END SHIFT;

   --
   -- SHIFTX:  From Pause, go to Shift, supply 8 bits, then advance to Idle.
   --
   PROCEDURE SHIFTX (
                      SIGNAL TDOlat   : OUT   std_logic_vector(39 DOWNTO 0);
                      SIGNAL TMS      : OUT   std_logic;
                      SIGNAL TDI      : OUT   std_logic;
                      SIGNAL TCK      : IN    std_logic;
                      SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                             in_xhdl8 : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS

   BEGIN
      TC1X(TMS,TDI, TCK, TDOsr, '1', '0');           -- exit2
      TC1X(TMS,TDI, TCK, TDOsr, '0', '0');           -- shift
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl8(0));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl8(1));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl8(2));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl8(3));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl8(4));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl8(5));
      TC1(TMS, TDI, TCK, TDOsr, '0', in_xhdl8(6));
      TC1(TMS, TDI, TCK, TDOsr, '1', in_xhdl8(7));   --  -> exit
      TC1X(TMS, TDI, TCK, TDOsr, '1', '0');   --  -> update
      TDOlat <= TDOsr;
      TC1X(TMS, TDI, TCK, TDOsr, '0', '0');   --  -> idle
   END SHIFTX;

   --
   -- IR_ENTER:  Advance JTAG TAP from Idle or Reset state to Shift-IR state.
   --

   PROCEDURE IR_ENTER (
      SIGNAL TMS              : OUT   std_logic;
      SIGNAL TDI              : OUT   std_logic;
      SIGNAL TCK              : IN    std_logic;
      SIGNAL TDOsr            : INOUT std_logic_vector(39 DOWNTO 0)
      ) IS
   BEGIN
      TC1(TMS, TDI, TCK, TDOsr, '0', '0');   --  ->idle
      TC1(TMS, TDI, TCK, TDOsr, '1', '0');   --  ->selectdr
      TC1(TMS, TDI, TCK, TDOsr, '1', '0');   --  ->selectir
      TC1(TMS, TDI, TCK, TDOsr, '0', '0');   --  ->captureir
      TC1(TMS, TDI, TCK, TDOsr, '1', '0');   --  ->exit1
      TC1(TMS, TDI, TCK, TDOsr, '0', '0');   --  ->pause
      TDOsr <= (OTHERS => '0');
   END IR_ENTER;

   --
   -- DR_ENTER: Advance JTAG TAP from Idle or Reset state to Shift-DR state.
   --

   PROCEDURE DR_ENTER (
                        SIGNAL TMS       : OUT   std_logic;
                        SIGNAL TDI       : OUT   std_logic;
                        SIGNAL TCK       : IN    std_logic;
                        SIGNAL TDOsr     : INOUT std_logic_vector(39 DOWNTO 0)
                        ) IS
   BEGIN
      TC1(TMS, TDI, TCK, TDOsr, '0', '0');   --  ->idle
      TC1(TMS, TDI, TCK, TDOsr, '1', '0');   --  ->selectdr
      TC1(TMS, TDI, TCK, TDOsr, '0', '0');   --  ->capturedr
      TC1(TMS, TDI, TCK, TDOsr, '1', '0');   --  ->exit1
      TC1(TMS, TDI, TCK, TDOsr, '0', '0');   --  ->pause
      TDOsr <= (OTHERS => '0');
   END DR_ENTER;

   --
   -- IR8: Write one byte to JTAG IR, capture 8 bit output into TDOlat.
   --

   PROCEDURE IR8 (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          in_xhdl3 : IN std_logic_vector(7 DOWNTO 0)
                 ) IS
      variable      handle    :line;
   BEGIN
      IR_ENTER(TMS, TDI, TCK, TDOsr);
      if (DEBUG = 2) then
         SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, UI_IRCODE);
         DR_ENTER(TMS, TDI, TCK, TDOsr);
      end if;
      SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, in_xhdl3);
      TDOout(39 DOWNTO 8) <= (OTHERS => '0');
      TDOout(7 DOWNTO 0)  <= TDOlat(39 DOWNTO 32);
      wait for 1 ns;
   END IR8;

   --
   -- DR8: Write 8 bits to JTAG DR, capture 8 bit output into TDOlat.
   --

   PROCEDURE DR8 (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          in_xhdl4 : IN    std_logic_vector(7 DOWNTO 0)
                 ) IS
      variable      handle    :line;
   BEGIN
      if (DEBUG = 2) then
         IR_ENTER(TMS, TDI, TCK, TDOsr);
         SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, UI_DRCODE);
      end if;
      DR_ENTER(TMS, TDI, TCK, TDOsr);
      SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, in_xhdl4);
      TDOout(39 DOWNTO 8) <= (OTHERS => '0');
      TDOout(7 DOWNTO 0)  <= TDOlat(39 DOWNTO 32);
      wait for 1 ns;
   END DR8;

   --
   -- DR16: Write 16 bits to JTAG DR, capture 16 bit output into TDOlat.
   --

   PROCEDURE DR16 (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          in_xhdl5 : IN std_logic_vector(15 DOWNTO 0)
                  ) IS
      variable      handle    :line;
   BEGIN
      if (DEBUG = 2) then
         IR_ENTER(TMS, TDI, TCK, TDOsr);
         SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, UI_DRCODE);
      end if;
      DR_ENTER(TMS, TDI, TCK, TDOsr);
      SHIFT(TMS, TDI, TCK, TDOsr, in_xhdl5(7 DOWNTO 0));
      SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, in_xhdl5(15 DOWNTO 8));
      TDOout(39 DOWNTO 0) <= "000000000000000000000000" & TDOlat(39 DOWNTO 24);
      wait for 1 ns;
   END DR16;

   --
   -- DR24: Write 24 bits to JTAG DR, capture 24 bit output into TDOlat.
   --

   PROCEDURE DR24 (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          in_xhdl6 : IN std_logic_vector(23 DOWNTO 0)
                  ) IS
      variable      handle    :line;
   BEGIN
      if (DEBUG = 2) then
         IR_ENTER(TMS, TDI, TCK, TDOsr);
         SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, UI_DRCODE);
      end if;
      DR_ENTER(TMS, TDI, TCK, TDOsr);
      SHIFT(TMS, TDI, TCK, TDOsr, in_xhdl6(7 DOWNTO 0));
      SHIFT(TMS, TDI, TCK, TDOsr, in_xhdl6(15 DOWNTO 8));
      SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, in_xhdl6(23 DOWNTO 16));
      TDOout(39 DOWNTO 0) <= "0000000000000000" & TDOlat(39 DOWNTO 16);
      wait for 1 ns;
   END DR24;

   --
   -- DR40: Write 40 bits to JTAG DR, capture 40 bit output into TDOlat.
   --

   PROCEDURE DR40 (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          in_xhdl7 : IN std_logic_vector(39 DOWNTO 0)
                  ) IS
      variable      handle    :line;
   BEGIN
      if (DEBUG = 2) then
         IR_ENTER(TMS, TDI, TCK, TDOsr);
         SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, UI_DRCODE);
      end if;
      DR_ENTER(TMS, TDI, TCK, TDOsr);
      SHIFT(TMS, TDI, TCK, TDOsr, in_xhdl7(7 DOWNTO 0));
      SHIFT(TMS, TDI, TCK, TDOsr, in_xhdl7(15 DOWNTO 8));
      SHIFT(TMS, TDI, TCK, TDOsr, in_xhdl7(23 DOWNTO 16));
      SHIFT(TMS, TDI, TCK, TDOsr, in_xhdl7(31 DOWNTO 24));
      SHIFTX(TDOlat, TMS, TDI, TCK, TDOsr, in_xhdl7(39 DOWNTO 32));
      TDOout <= TDOlat;
      wait for 1 ns;
   END DR40;

--
-- Checkmemaddr:  Verify that bus has expected value.  Print diagnostic and exit if not.
--
   PROCEDURE Checkmemaddr (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
      Expected                : IN std_logic_vector(15 DOWNTO 0);
      name                    : IN string) IS

      VARIABLE   line_handle  : LINE;
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_GetPC);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "000000000000000000000000");
      IF (Expected(15 DOWNTO 0) /= TDOout(15 DOWNTO 0)) THEN
         write(line_handle,name);
         write(line_handle,string'("   "));
         write(line_handle,string'("Expected="));
         hwrite(line_handle, Expected);
         write(line_handle,string'("   "));
         write(line_handle,string'("Actual="));
         hwrite(line_handle, TDOout(15 downto 0));
         writeline(fp1,line_handle);
         write(line_handle,name);
         write(line_handle,string'("   "));
         write(line_handle,string'("Expected="));
         hwrite(line_handle, Expected);
         write(line_handle,string'("   "));
         write(line_handle,string'("Actual="));
         hwrite(line_handle, TDOout(15 downto 0));
         writeline(fp2,line_handle);
         ASSERT (FALSE) REPORT "'$stop' Encountered" SEVERITY FAILURE;
      END IF;
   END Checkmemaddr;

   PROCEDURE CheckmemaddrRange (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
      ExpectedLow             : IN std_logic_vector(15 DOWNTO 0);
      ExpectedHigh            : IN std_logic_vector(15 DOWNTO 0);
      name                    : IN string) IS
   VARIABLE     Line_handle   :LINE;

   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_GetPC);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "000000000000000000000000");
      IF ((ExpectedHigh(15 DOWNTO 0) < TDOout(15 DOWNTO 0)) OR (ExpectedLow(15 DOWNTO 0) > TDOout(15 DOWNTO 0))) THEN
         WRITE(line_handle,name);
         write(line_handle,string'("    Expected="));
         hwrite(line_handle,ExpectedLow);
         write(line_handle,string'("   TO    "));
         hwrite(line_handle,ExpectedHigh);
         write(line_handle,string'("     Actual"));
         hwrite(line_handle,TDOout(15 downto 0));
         writeline(fp1,line_handle);
         WRITE(line_handle,name);
         write(line_handle,string'("    Expected="));
         hwrite(line_handle,ExpectedLow);
         write(line_handle,string'("   TO    "));
         hwrite(line_handle,ExpectedHigh);
         write(line_handle,string'("     Actual"));
         hwrite(line_handle,TDOout(15 downto 0));
         writeline(fp2,line_handle);
         ASSERT (FALSE) REPORT "'$stop' Encountered" SEVERITY FAILURE;
      END IF;
   END CheckmemaddrRange;

   PROCEDURE CheckSignal (
      Actual                  : IN std_logic;
      Expected                : IN std_logic;
      name                    : IN string) IS
      VARIABLE   handle       : LINE;
      CONSTANT    Actual_V    : std_logic_vector:='0'&Actual;
      CONSTANT    Expected_V  : std_logic_vector:='0'&Expected;

   BEGIN
      IF (Expected /= Actual) THEN
         WRITE(handle,name);
         write(handle,string'("   Expected="));
         write(handle,Expected_V);
         write(handle,string'("   Actual="));
         write(handle,Actual_V);
         writeline(fp1,handle);
         WRITE(handle,name);
         write(handle,string'("   Expected="));
         write(handle,Expected_V);
         write(handle,string'("   Actual="));
         write(handle,Actual_V);
         writeline(fp2,handle);
         ASSERT (FALSE) REPORT "'$stop' Encountered" SEVERITY FAILURE;
      END IF;
   END CheckSignal;

   --
   -- CheckTDO:  Verify that TDO has expected value.
   -- Print diagnostic and exit if not.
   --

   PROCEDURE CheckTDO (
      Expected                : IN std_logic_vector(39 DOWNTO 0);
      name                    : IN string) IS
      VARIABLE     handle     :LINE;

   BEGIN
      WAIT FOR 1 ns;
      IF (Expected(39 DOWNTO 0) /= TDOout(39 DOWNTO 0)) THEN
         write(handle,name);
         write(handle,string'("   Expected="));
         hwrite(handle,Expected);
         write(handle,string'("   Actual="));
         hwrite(handle,TDOout);
         writeline(fp1,handle);
         write(handle,name);
         write(handle,string'("   Expected="));
         hwrite(handle,Expected);
         write(handle,string'("   Actual="));
         hwrite(handle,TDOout);
         writeline(fp2,handle);
         ASSERT (FALSE) REPORT "'$stop' Encountered" SEVERITY FAILURE;
      END IF;
   END CheckTDO;

--
-- WaitFordebugreq:  Wait up to N clk's for debugreq to take on the specified value.
-- WaitFordebugack
--
   PROCEDURE WaitForDebugReq (
      signal TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
      signal TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
      signal TMS      : OUT   std_logic;
      signal TDI      : OUT   std_logic;
      signal TCK      : IN    std_logic;
      signal TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
      count                   : IN integer;
      value                   : IN std_logic
                             ) IS

   BEGIN
      l1:FOR Index IN 1 TO count LOOP
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);
         IF (TDOout(3) = value) THEN
                exit l1;
         END IF;
      END LOOP l1;
      CheckSignal(TDOout(3), value, "WaitForDebugReq");
   END WaitForDebugReq;

   PROCEDURE WaitForDebugAck (
      signal TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
      signal TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
      signal TMS      : OUT   std_logic;
      signal TDI      : OUT   std_logic;
      signal TCK      : IN    std_logic;
      signal TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
      count                   : IN integer;
      value                   : IN std_logic
                             ) IS

   BEGIN
      l1:FOR X IN 1 TO count LOOP
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);
         IF (TDOout(2) = value) THEN
            exit l1;
         END IF;
      END LOOP l1;
      CheckSignal(TDOout(2), value, "WaitForDebugAck");
   END WaitForDebugAck;

   PROCEDURE WaitForTrigOut (
      count                   : IN integer;
      value                   : IN std_logic
                              ) IS
   BEGIN
      l1:FOR Index IN 1 TO count LOOP
         IF (TrigOut = value) THEN
         	exit l1;
         END IF;
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');

      END LOOP l1;
      CheckSignal(TrigOut, value, "WaitForTrigOut");
   END WaitForTrigOut;

   PROCEDURE WaitForStep (
      signal TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
      signal TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
      signal TMS      : OUT   std_logic;
      signal TDI      : OUT   std_logic;
      signal TCK      : IN    std_logic;
      signal TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
      count    : IN integer) IS
      variable      i : integer;
      variable      BreakOut  : boolean := false;
      VARIABLE     handle     :LINE;
   BEGIN
      i := 0;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);
      DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "0000000000000000");
      while (TDOout(9 DOWNTO 8) /= "00") loop
         if (i>count) then
            fdisplay("WaitForStep timed out");
            ASSERT (FALSE) REPORT "'$stop' Encountered" SEVERITY FAILURE;
         end if;
         DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "0000000000000000");
         i := i+1;
      end loop;
   END WaitForStep;

   PROCEDURE Reset (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                   ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_ResetCPU);     -- JReset on
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugReqOn);   -- request break, JReset off
      WaitForDebugReq(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10, '1');   --  debugreq turns on
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10, '1');   --   then DebugAck turns on
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "0000000000000000", "memaddr after reset");   --  CPU stopped before any execution?
   END Reset;

   PROCEDURE Go (
                 SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                 SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                 SIGNAL TMS      : OUT   std_logic;
                 SIGNAL TDI      : OUT   std_logic;
                 SIGNAL TCK      : IN    std_logic;
                 SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugReqOff);  --  request go
      FOR Index IN 1 TO waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      -- No way to check since bkpt may be hit before polling cycle can complete
   END Go;

   PROCEDURE Halt (
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugReqOn);   --  request break
      WaitForDebugReq(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10, '1');   --   first DebugReq turns on
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10, '1');   --   then DebugAck turns on
   END Halt;

   PROCEDURE Step (
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                  ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepUser);   --  request emulation step
      FOR Index IN 1 TO 8+2*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 100, '1');
   END Step;

   PROCEDURE GetReg (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          opcode   : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS

   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, opcode);
      FOR Index IN 1 TO 8+2*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      WaitForStep (TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10);
   END GetReg;

   PROCEDURE SetReg (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          opcode   : IN    std_logic_vector(7 DOWNTO 0);
                          value    : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS

   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, opcode & value);
      FOR Index IN 1 TO 8+2*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
   END SetReg;

   PROCEDURE SetPc (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          pc       : IN    std_logic_vector(15 DOWNTO 0)
                    ) IS

   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000010" & pc(15 DOWNTO 0));
      FOR Index IN 1 TO 8+3*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
   END SetPc;

   PROCEDURE MemReadC (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          addrh    : IN    std_logic_vector(7 DOWNTO 0);
                          addrl    : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11100100");    -- clr a
      FOR Index IN 1 TO 8+waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "10010000" & addrh & addrl);
      FOR Index IN 1 TO 8+3*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "10010011");    -- movc a,@a+dptr
      WaitForStep (TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10);
   END MemReadC;

   PROCEDURE MemReadX (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          addrh    : IN    std_logic_vector(7 DOWNTO 0);
                          addrl    : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "10010000" & addrh & addrl);
      FOR Index IN 1 TO 8+3*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11100000");    -- movx a,@dptr
      WaitForStep (TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10);
   END MemReadX;

   PROCEDURE MemReadI (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          addr     : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01111000" & addr);
      FOR Index IN 1 TO 8+2*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11100110");    -- movx a,@r0
      WaitForStep (TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10);
   END MemReadI;

   PROCEDURE MemReadS (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          addr     : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11100101" & addr);     -- mov a,addr
      WaitForStep (TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10);
   END MemReadS;

   PROCEDURE MemWriteP (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          addrh    : IN    std_logic_vector(7 DOWNTO 0);
                          addrl    : IN    std_logic_vector(7 DOWNTO 0);
                          data     : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugPswrOn);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "10010000" & addrh & addrl);
      FOR Index IN 1 TO 8+3*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01110100" & data);     -- mov a,#data
      FOR Index IN 1 TO 8+2*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11110000");     -- mov @dptr,a
      FOR Index IN 1 TO 8+waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugPswrOff);
   END MemWriteP;

   PROCEDURE MemWriteX (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          addrh    : IN    std_logic_vector(7 DOWNTO 0);
                          addrl    : IN    std_logic_vector(7 DOWNTO 0);
                          data     : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "10010000" & addrh & addrl);
      FOR Index IN 1 TO 8+3*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01110100" & data);     -- mov a,#data
      FOR Index IN 1 TO 8+2*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11110000");     -- mov @dptr,a
      FOR Index IN 1 TO 8+waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
   END MemWriteX;

   PROCEDURE MemWriteI (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          addr     : IN    std_logic_vector(7 DOWNTO 0);
                          data     : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01111000" & addr);  -- mov r0,#addr
      FOR Index IN 1 TO 8+2*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR16(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01110100" & data);   -- mov a,#data
      FOR Index IN 1 TO 8+2*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11110110");     -- mov @r0,a
      FOR Index IN 1 TO 8+waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
   END MemWriteI;

   PROCEDURE MemWriteS (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                          addr     : IN    std_logic_vector(7 DOWNTO 0);
                          data     : IN    std_logic_vector(7 DOWNTO 0)
                    ) IS
   BEGIN
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugStepOci);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01110101" & addr & data);  -- mov addr,#data
      FOR Index IN 1 TO 8+3*waitstates LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
   END MemWriteS;

   PROCEDURE InitMemory (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                    ) IS
   BEGIN
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("78",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("79",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("55",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("08",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("09",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("80",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0E",8), hex("f8",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0F",8), hex("00",8));
   END InitMemory;



                         -----------------------
                         --                   --
                         --  TEST PROCEDURES  --
                         --                   --
                         -----------------------

-----------------------------------------------------------------------------
-- IdcodeTest
--
-- Shift in IDCODE JTAG instruction.  Verify that IDCODE reported
-- back to debugger is the expected value.
--
-----------------------------------------------------------------------------
   PROCEDURE IdcodeTest (
                   SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                   SIGNAL TMS      : OUT   std_logic;
                   SIGNAL TDI      : OUT   std_logic;
                   SIGNAL TCK      : IN    std_logic;
                   SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                    ) IS
   BEGIN
      fdisplay("IDcodeTest");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_IDCODE);
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000000");
      if (DEBUG = 2) then
         CheckTDO(hex("68",40), "IDCODE");
      else
         CheckTDO(hex("60",40), "IDCODE");
      end if;
   END IdcodeTest;

   -----------------------------------------------------------------------------
   -- TriggerWriteReadTest
   --
   -- Write then read all trigger configuration registers.  Verifies that
   -- the registers are accessible from the debugger.
   --
   -----------------------------------------------------------------------------
   PROCEDURE TriggerWriteReadTest (
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                                  ) IS
       variable handle:line;
       variable temp  :std_logic_vector(39 downto 0);
   BEGIN
      fdisplay("TriggerWriteReadTest");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_Trigger);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("55AA5AA55A",40));
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger))+ 1);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("AA55A55AA5",40));
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger)) + 2);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("33CC3CC33C",40));
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger)) + 3);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("CC33C33CC3",40));
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_Trigger);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("AA55A55AA5",40));
      if (TRIG_NUM >= 1)
      then
          temp:=hex("55AA5AA55A",40);
      else
          temp:=(others=>'0');
      end if;
      CheckTDO(temp, "Trigger 0");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger)) + 1);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("55AA5AA55A",40));
      if (TRIG_NUM >=2)
      then
          temp:=hex("AA55A55AA5",40);
      else
          temp:=(others=>'0');
      end if;
      CheckTDO(temp, "Trigger 1");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger)) + 2);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("CC33C33CC3",40));
      if (TRIG_NUM >= 3)
      then
          temp:=hex("33CC3CC33C",40);
      else
          temp:=(others=>'0');
      end if;
      CheckTDO(temp, "Trigger 2");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger)) + 3);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("33CC3CC33C",40));
      if (TRIG_NUM >= 4)
      then
          temp:=hex("00CC33C33CC3",40);
      else
          temp:=(others=>'0');
      end if;
      CheckTDO(temp, "Trigger 3");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_Trigger);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0000000000",40));
      if (TRIG_NUM >= 1)
      then
          temp:=hex("AA55A55AA5",40);
      else
          temp:=(others=>'0');
      end if;

      CheckTDO(temp, "Trigger 0");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger)) + 1);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0000000000",40));
      IF (TRIG_NUM >= 2) THEN
          temp := hex("55AA5AA55A",40);
      ELSE
          temp := (OTHERS=>'0');
      END IF;
      CheckTDO(temp, "Trigger 1");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger)) + 2);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0000000000",40));
      IF (TRIG_NUM >= 3) THEN
         temp := hex("00CC33C33CC3",40);
      ELSE
         temp := (OTHERS => '0');
      END IF;
      CheckTDO(temp, "Trigger 2");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (unsigned(IR_Trigger)) + 3);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0000000000",40));
      IF (TRIG_NUM >= 4) THEN
          temp:=hex("0033CC3CC33C",40);
      ELSE
          temp:=(others=>'0');
      END IF;
      CheckTDO(temp, "Trigger 3");
   END TriggerWriteReadTest;

   -----------------------------------------------------------------------------
   -- TraceWriteReadTest
   --
   -- Write then read all trace RAM locations.  Verifies that the RAM is
   -- present, the right size, and is accessible from the debugger.
   --
   -----------------------------------------------------------------------------
   PROCEDURE TraceWriteReadTest (
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                                ) IS

      VARIABLE i                      :  integer;
      VARIABLE size                   :  integer;
      variable handle                 :  line;
      variable temp1_std              :  std_logic_vector(7 downto 0);

   BEGIN
      fdisplay("TraceWriteReadTest");
      size := 2 ** TRACE_DEPTH;

      -- first verify we can write to the trace address register

      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStop);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01010101");
      CheckTDO("0000000000000000000000000000000000000000", "TraceClear");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
      CheckTDO("0000000000000000000000000000000000000011", "IR status after TraceClear");
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01010101");
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "10101010");
      CheckTDO("0000000000000000000000000000000001010101", "TraceAddr");
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000000");   --  initialize address to 0
      CheckTDO("0000000000000000000000000000000010101010", "TraceAddr");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceData);
      -- Test each location in ram for uniqueness and ability to hold both 0 and 1

      i := 0;
      WHILE (i < size) LOOP
         temp1_std:=conv_std_logic_vector(i,8);
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (NOT temp1_std) & (temp1_std) & (NOT temp1_std));
         i := i + 1;
      END LOOP;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
      CheckTDO("0000000000000000000000000000000000010011", "IR status after trace wrap");
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000000");   --  initialize address to 0
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceData);
      i := 0;
      WHILE (i < size) LOOP
         temp1_std:=conv_std_logic_vector(i,8);
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, (temp1_std) & (NOT temp1_std) & (temp1_std));
         CheckTDO("00000000000000000000" & (NOT temp1_std(3 downto 0)) & (temp1_std) & (NOT temp1_std), "Trace memory");
         i := i + 1;
      END LOOP;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
      CheckTDO("0000000000000000000000000000000000010011", "IR status after trace wrap");
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000000");   --  initialize address to 0
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11011000");
      i := 0;
      WHILE (i < size) LOOP
         temp1_std:=conv_std_logic_vector(i,8);
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "000000000000000000000000");
         CheckTDO("00000000000000000000" & (temp1_std(3 downto 0)) & (NOT temp1_std) & (temp1_std), "Trace memory");
         i := i + 1;
      END LOOP;
      -- verify that a write to address "size" wraps to address 0.

      IF (size < 256) THEN
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
         DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, conv_std_logic_vector(size, 8));   --  set address to "size"
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_Tracedata);
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "000100100011010001010110");   --  write test data
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
         DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000000");   --  set address to 0
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceData);
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "000000000000000000000000");   --  read data
         CheckTDO("00000000000000000000" & "00100011010001010110", "Trace memory wrap");
      END IF;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
      CheckTDO("0000000000000000000000000000000000010011", "IR status after trace wrap");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
      CheckTDO("0000000000000000000000000000000000000011", "IR status after trace clear");
   END TraceWriteReadTest;

   --------------------------------------------------------------------------
   --
   -- AuxOutTest
   --
   --------------------------------------------------------------------------

   PROCEDURE AuxOutTest (
                 SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                 SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                 SIGNAL TMS      : OUT   std_logic;
                 SIGNAL TDI      : OUT   std_logic;
                 SIGNAL TCK      : IN    std_logic;
                 SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                 SIGNAL TRSTB    : INOUT std_logic
                 ) IS
   BEGIN
      fdisplay("AuxOutTest");

      TRSTB <= '0';
      FOR X IN 1 TO 8 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      TRSTB <= '1';
      CheckSignal(AuxOut, '0', "AuxOut step 1");

      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_AuxOn);
      FOR X IN 1 TO 2 LOOP
         WAIT UNTIL (TCK'EVENT AND TCK = '1');
      END LOOP;
      CheckSignal(AuxOut, '1', "AuxOut step 2");

      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_AuxOff);
      FOR X IN 1 TO 2 LOOP
         WAIT UNTIL (TCK'EVENT AND TCK = '1');
      END LOOP;
      CheckSignal(AuxOut, '0', "AuxOut step 3");

      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_AuxOn);
      FOR X IN 1 TO 2 LOOP
         WAIT UNTIL (TCK'EVENT AND TCK = '1');
      END LOOP;
      CheckSignal(AuxOut, '1', "AuxOut step 4");

      TRSTB <= '0';
      FOR X IN 1 TO 8 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      TRSTB <= '1';
      CheckSignal(AuxOut, '0', "AuxOut step 5");
   END AuxOutTest;

   --------------------------------------------------------------------------
   --
   -- ResetTest
   --
   --------------------------------------------------------------------------

   PROCEDURE ResetTest (
                 SIGNAL resetiB  : INOUT std_logic;
                 SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                 SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                 SIGNAL TMS      : OUT   std_logic;
                 SIGNAL TDI      : OUT   std_logic;
                 SIGNAL TCK      : IN    std_logic;
                 SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                 SIGNAL TRSTB    : INOUT std_logic
                 ) IS
   BEGIN
      fdisplay("ResetTest");

      --
      -- Debugger-initiated reset
      --
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);   --  check status thru JTAG
      CheckTDO(hex("0D",40), "IR status");   --  Stop state
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_GetPC);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "000000000000000000000000");
      CheckTDO(hex("0",40), "GetPC after reset");

      InitMemory(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

      --
      -- debugger not installed case (TRSTB low during reset)
      --
      TRSTB <= '0';
      resetiB <= '0';
      FOR X IN 1 TO 8 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      resetiB <= '1';
      FOR X IN 1 TO 2 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      TRSTB <= '1';
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);   --  check status thru JTAG
      CheckTDO(hex("03",40), "IR status");   --  Run state

      --
      -- debugger installed case (TRSTB high during reset)
      --
      resetiB <= '0';
      FOR X IN 1 TO 8 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      resetiB <= '1';
      FOR X IN 1 TO 2 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);   --  check status thru JTAG
      CheckTDO(hex("03",40), "IR status");       --  Run state
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugReqOn); --  to debug mode
      CheckTDO(hex("03",40), "IR status");       --  First read sampled before debugreq is on
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugReqOn); --  to debug mode
      CheckTDO(hex("0D",40), "IR status");       --  Debugreq is on, JReset is off.

      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_GetPC);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",24));
      CheckTDO(hex("0",40), "GetPC after reset");

   END ResetTest;

   -----------------------------------------------------------------------------
   -- GoHaltTest
   --
   -- Submission of halt and go commands to the OCI.  Checks action
   -- of DebugReq/DebugAck handshake to core.  Tests DebugStep function.
   -- Tests TRAP function.
   --
   -----------------------------------------------------------------------------
   PROCEDURE GoHaltTest (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                        ) IS
   BEGIN
      fdisplay("GoHaltTest");
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);   --  check status
      CheckTDO("0000000000000000000000000000000000000001", "IR status");   --  normal run state
      Halt(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);   --  check status thru JTAG
      CheckTDO("0000000000000000000000000000000000001101", "IR status");   --  Stop state (debugreq and debugack)
   END GoHaltTest;

   --------------------------------------------------------------------------
   -- TrapTest
   --
   -- Submission of halt and go commands to the OCI.  Checks action
   -- of DebugReq/DebugAck handshake to core.  Tests DebugStep function.
   -- Tests TRAP function.
   --
   --------------------------------------------------------------------------

   PROCEDURE TrapTest (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                        ) IS
   BEGIN
      fdisplay("TrapTest");

      --
      -- TRAP (software breakpoint) test
      --

      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), "10100101");    --  TRAP instruction
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 200, '1');
      FOR X IN 1 TO 2 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);   --  check status
      CheckTDO("0000000000000000000000000000000000001101", "IR status"); --  Normal stop state
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("B",16), "memaddr after trap");   --  CPU stopped at right address?
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_GetPC);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
      CheckTDO(hex("B",40), "GetPC after trap");

      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("E9",8));
      CheckTDO(hex("55",40), "R1 after trap");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("E8",08));
      CheckTDO(hex("00",40), "R0 after trap");
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), "00000000");
   END TrapTest;

-----------------------------------------------------------------------------
-- BreakBusTest
--
-- BreakIn and BreakOut signals
--
-----------------------------------------------------------------------------
   procedure BreakBusTest (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL BreakIn  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                        ) IS
   begin
      fdisplay("BreakBusTest");
      --
      -- brkbus test
      --
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("a5",8));  -- trap
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      FOR X IN 1 TO 10 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      CheckSignal(BreakOut, '0', "BreakOut");
      WaitFordebugack(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 200,'1');
      FOR X IN 1 TO 2 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      CheckSignal(BreakOut, '1', "BreakOut");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);                     -- check status
      CheckTDO(hex("0D",40), "IR status");   -- Normal stop state
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("00",8));  -- restore

      --
      -- BreakIn breakpoint
      --
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      FOR X IN 1 TO 5 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      BreakIn <= '1';                           -- external break bus assertion
      CheckSignal(BreakOut, '0', "BreakOut");
      FOR X IN 1 TO 5 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 50,'1');
      FOR X IN 1 TO 2 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      CheckSignal(BreakOut, '1', "BreakOut");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);                     -- check status
      CheckTDO(hex("4D",40), "IR status");   -- BreakIn stop state

      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      BreakIn <= '0';
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);                     -- check status
      CheckTDO(hex("0D",40), "IR status");   -- Normal stop state
   end BreakBusTest;

   -----------------------------------------------------------------------------
   -- StepTest
   --
   -- Single-step
   --
   -----------------------------------------------------------------------------

   PROCEDURE StepTest (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                      ) IS
   BEGIN
      fdisplay("StepTest");
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("2",16), "memaddr after step");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_GetPC);
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000000");
      CheckTDO(hex("2",40), "GetPC after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("4",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("5",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("6",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("7",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("9",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("A",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("B",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("C",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("D",16), "memaddr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("7",16), "memaddr after step");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_GetPC);
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000000");
      CheckTDO(hex("7",40), "GetPC after step");
   END StepTest;

   -----------------------------------------------------------------------------
   -- RegTest
   --
   -- Test mechanism to extract registers after a breakpoint.
   --
   -----------------------------------------------------------------------------

   PROCEDURE RegTest (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                     ) IS
   BEGIN
      fdisplay("RegTest");
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);   --  At this point, R0 should be 0x00 and R1 should be 0x55.
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("4",16), "memaddr after step");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101001");
      CheckTDO(hex("55",40), "R1 after step");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101000");
      CheckTDO(hex("00",40), "R0 after step");

      --
      -- Set register and verify
      --

      SetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01111000", "00100011");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101000");
      CheckTDO(hex("23",40), "R0 after setreg");
      SetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01111001", "10101000");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101001");
      CheckTDO(hex("A8",40), "R1 after setreg");

      --
      -- Verify that new registers sticky through emulation
      --
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("5",16), "memaddr after step");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101000");
      CheckTDO(hex("23",40), "R0 after setreg and step");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101001");
      CheckTDO(hex("A8",40), "R1 after setreg and step");

      --
      -- Change PC
      --
      SetPc(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("2",16));
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("2",16), "memaddr after setpc");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("4",16), "memaddr after setpc and step");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101000");
      CheckTDO(hex("23",40), "R0 after set PC");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101001");
      CheckTDO(hex("55",40), "R1 after set PC");
   END RegTest;

   --------------------------------------------------------------------------
   -- MemTest
   --
   -- Test read/write memory mechanism
   --
   --------------------------------------------------------------------------

   PROCEDURE MemTest (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                  ) IS
   BEGIN
      fdisplay("MemTest");
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("75",8));   -- mov 0xF0,#0x10  -- B register
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("F0",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("10",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("75",8));   -- mov 0x55,#0x23  -- initialize
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("55",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("23",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("90",8));   -- mov DPTR,#0x0234
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("02",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("34",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("E0",8));   -- movx a,@dptr
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("04",8));   -- inc a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("F0",8));   -- movx @dptr,a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("E5",8));   -- mov a,0x55
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("55",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0E",8), hex("04",8));   -- inc a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0F",8), hex("F5",8));   -- mov 0x55,a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("10",8), hex("55",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("11",8), hex("a5",8));   -- bkpt
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("12",8), hex("80",8));   -- sjmp 9
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("13",8), hex("F5",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("14",8), hex("00",8));

      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("05",8), hex("67",8), hex("00",8));
      MemWriteX(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8), hex("00",8));
      MemWriteX(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("05",8), hex("67",8), hex("00",8));

      SetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("78",8), hex("00",8));
      SetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("79",8), hex("00",8));
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 1000, '1');   --  hits breakpoint
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("12",16), "memaddr after bkpt");

      MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("83",8));
      CheckTDO(hex("02",40), "DPH after bkpt");
      MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("82",8));
      CheckTDO(hex("34",40), "DPL after bkpt");
      MemReadX(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8));
      CheckTDO(hex("01",40), "Xdata[0234] after bkpt");
      MemReadX(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("05",8), hex("67",8));
      CheckTDO(hex("00",40), "Xdata[0567] after bkpt");
      MemReadC(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8));
      CheckTDO(hex("00",40), "Code[0234] after bkpt");
      MemReadC(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("05",8), hex("67",8));
      CheckTDO(hex("00",40), "Code[0567] after bkpt");
      MemReadI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("55",8));
      CheckTDO(hex("24",40), "Idata[55] after bkpt");
      MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("f0",8));
      CheckTDO(hex("10",40), "SFR[F0] after bkpt");

      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("83",8), hex("02",8));  -- restore DPTR
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("82",8), hex("34",8));
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 200, '1');
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("12",16), "memaddr after bkpt2");
      MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("83",8));
      CheckTDO(hex("02",40), "DPH after bkpt2");
      MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("82",8));
      CheckTDO(hex("34",40), "DPL after bkpt2");
      MemReadX(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8));
      CheckTDO(hex("02",40), "Xdata[0234] after bkpt2");
      MemReadX(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("05",8), hex("67",8));
      CheckTDO(hex("00",40), "Xdata[0567] after bkpt");
      MemReadC(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8));
      CheckTDO(hex("00",40), "Code[0234] after bkpt");
      MemReadC(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("05",8), hex("67",8));
      CheckTDO(hex("00",40), "Code[0567] after bkpt");
      MemReadI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("55",8));
      CheckTDO(hex("25",40), "Idata[55] after bkpt");
      MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("f0",8));
      CheckTDO(hex("10",40), "SFR[F0] after bkpt");

      MemWriteI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("55",8), hex("67",8));
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("F0",8), hex("8E",8));
      --MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("96",8), hex("55",8));   --  our ESFR port
      --MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("94",8), hex("F0",8));
      MemReadI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("55",8));
      CheckTDO(hex("67",40), "Idata[55] write verify");
      MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("F0",8));
      CheckTDO(hex("8E",40), "SFR[F0] write verify");
      --MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("96",8));
      --CheckTDO(hex("55",40), "SFR[96] write verify");
      --MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("94",8));
      --CheckTDO(hex("F0",40), "SFR[94] write verify");

      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("83",8), hex("02",8));  -- restore DPTR
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("82",8), hex("34",8));
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 200, '1');
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("12",16), "memaddr after bkpt3");

      -- Read again
      MemReadI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("55",8));
      CheckTDO(hex("68",40), "Idata[55] after bkpt 3");
      MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("f0",8));
      CheckTDO(hex("8E",40), "SFR[F0] after bkpt3");
      --MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("96",8));
      --CheckTDO(hex("55",40), "SFR[96] after bkpt3");
      --MemReadS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("94",8));
      --CheckTDO(hex("F0",40), "SFR[94] after bkpt3");
      MemReadX(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8));
      CheckTDO(hex("03",40), "Xdata[0234] after bkpt3");

      --
      -- Test halt from idle state
      --
-- This test is removed because oci_sys has been changed to turn off the clock in
-- idle mode.  With clocks off, the OCI cannot gain control of the CPU.
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("E5",8));  -- mov a,pcon
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("87",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("44",8));  -- orl a, #1
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("01",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("F5",8));  -- mov pcon,a
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("87",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("00",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("00",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("00",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("00",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("00",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("00",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("00",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("00",8));
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0E",8), hex("80",8));  -- sjmp *
--      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0F",8), hex("FE",8));
--
--      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
--      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
--      SetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("7A",8), hex("34",8));   --  R2=34
--      SetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("79",8), hex("97",8));   --  R1=97
--      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
--      FOR Index IN 1 TO 20 LOOP
--         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
--      END LOOP;
--      Halt(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
--      MemReadI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8));
--      CheckTDO(hex("34",40), "REG2 after idle");
--      MemReadI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("01",8));
--      CheckTDO(hex("97",40), "REG1 after idle");

   END MemTest;

   --------------------------------------------------------------------------
   --
   -- TraceTest
   --
   -- Verify trace collection
   --
   --------------------------------------------------------------------------

   PROCEDURE TestTrace1 (
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
                           frames   : IN integer;
                           verify   : IN std_logic
                       ) IS

      VARIABLE i                      :  integer;
      VARIABLE size                   :  integer;
      VARIABLE hwframes               :  integer;
      VARIABLE temp                   :  std_logic_vector(9 DOWNTO 0);
      CONSTANT two                    :  std_logic_vector(1 DOWNTO 0) := "10";
      variable handle:line;

   BEGIN
      write(handle,string'("TestTrace frames="));
      hwrite(handle,conv_std_logic_vector(frames,16));
      writeline(fp1,handle);
      size := 2 ** TRACE_DEPTH;
      SetPc(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "0000000000000000");
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "10000010", conv_std_logic_vector(frames+1, 8));    --  DPL
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "10000011", "00000010");   --  DPH=0x02
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStart);
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 10000, '1');
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("9",16), "memaddr after bkpt");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStop);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
      IF (verify = '1') THEN
         IF (2 * frames >= size) THEN
            CheckTDO(hex("1D",40), "TestTrace: IR status after trace");   --  wrap
            hwframes := size / 2;
         ELSE
            CheckTDO(hex("0D",40), "TestTrace: IR status after trace");   --  no wrap
            hwframes := frames;
         END IF;
         DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "00000000");
         temp := conv_std_logic_vector(2*frames,10);
         CheckTDO( ("00000000000000000000000000000000" & (temp(7 DOWNTO 0) AND conv_std_logic_vector((size - 1),8))), "TraceAddr");
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceData);
         i := 0;
         WHILE (i < hwframes) LOOP
            DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
            CheckTDO(hex("40007",40), "Trace frame even");
            DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
            CheckTDO(hex("00001",40), "Trace frame odd");
            i := i + 1;
         END LOOP;
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
      END IF;
   END TestTrace1;

   PROCEDURE TraceTest (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                    ) IS
      VARIABLE i                      :  integer;
      VARIABLE traceDepth             :  integer;
      VARIABLE traceaddr              :  std_logic_vector(7 DOWNTO 0);
   BEGIN
      fdisplay("TraceTest");
      i := 0;
      WHILE (i < 256) LOOP
         MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), conv_std_logic_vector(i,8), "00000000");
         i := i + 1;
      END LOOP;
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("e0",8));   -- movx a,@dptr
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("04",8));   -- inc a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("f0",8));   -- movx @dptr,a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("d5",8));   -- djnz dpl,1
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("82",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("f9",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("a5",8));   -- bkpt
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("80",8));   -- jmp self
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("fe",8));

      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);

      traceDepth := 2 ** TRACE_DEPTH;
      TestTrace1(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 0, '1');
      TestTrace1(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 1, '1');
      TestTrace1(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 2, '1');
      i := tracedepth/2;
      TestTrace1(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, i-1,'1');
      TestTrace1(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, i,  '1');
      TestTrace1(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, i+1,'1');

      --
      -- Test Toff/Ton
      --
      fdisplay("TraceTest toff/ton");
      if ((TRACE_DEPTH > 3) and (TRIG_NUM > 1)) then
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_Trigger);
         DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("A810000206",40));   --  toff at xdata read 0x0206
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, unsigned(IR_Trigger)+ 1);
         DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("A410000202",40));   --  ton at xdata read 0x0202

         TestTrace1(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 8, '0');

         CheckTDO(hex("0D",40), "Toff/Ton: IR status after trace");   --  no wrap
         DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8));
         CheckTDO(hex("0C",40), "TraceAddr");   --  6 frames: 3+toff+ton+1
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceData);
         i := 0;
         WHILE (i < 3) LOOP
            DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
            CheckTDO(hex("0040007",40), "Trace frame even");
            DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
            CheckTDO(hex("0000001",40), "Trace frame odd");
            i := i + 1;
         END LOOP;
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
         CheckTDO(hex("0020001",40), "Trace frame toff");
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
         if (waitstates > 0) then
            CheckTDO(hex("0000001",40), "Trace frame toff");
         else
            CheckTDO(hex("0000002",40), "Trace frame toff");
         end if;
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
         if (waitstates > 0) then
            CheckTDO(hex("0000001",40), "Trace frame ton");
         else
            CheckTDO(hex("0000002",40), "Trace frame ton");
         end if;
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
         CheckTDO(hex("0040007",40), "Trace frame even");
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
         CheckTDO(hex("0000001",40), "Trace frame odd");
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
      END IF;

      --
      -- Test Trace through Reset
      --

      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("A5",8));    --  bkpt
      SetPc(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0E",16));
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStart);
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      FOR X IN 1 TO 21 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      resetiB <= '0';
      FOR X IN 1 TO 8 LOOP
         WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
      END LOOP;
      resetiB <= '1';
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 1000, '1');
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("5",16), "memaddr after bkpt");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStop);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
      IF (traceDepth > 2) THEN
         CheckTDO(hex("0D",40), "Trace reset: IR status after trace");   --  no wrap
         DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",8));
         CheckTDO(hex("02",40), "TraceAddr after reset");
      ELSE
         CheckTDO(hex("1D",40), "Trace reset: IR status after trace");   --  wrap
         DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",8));
         CheckTDO(hex("00",40), "TraceAddr after reset");
      END IF;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceData);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
      CheckTDO(hex("0000000",40), "Trace frame 1 after reset");

      --
      -- Test Trace through Reset from jump self
      -- (tests behavior of reset record occurring simultaneously with branch)
      -- run once for each alignment of jumps to reset (jump loop is 4 clocks).
      --
      fdisplay("TraceTest reset from jump self");
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("75",8));   -- load b
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("E0",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("10",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("a5",8));   -- bkpt
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0E",8), hex("80",8));   -- sjmp *
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0F",8), hex("FE",8));
      i := traceDepth * 4;
      WHILE (i < (traceDepth * 4) + 4) LOOP
         SetPc(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0E",16));
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStart);
         Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
         FOR X IN 1 TO i*(waitstates+1) LOOP
            WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
         END LOOP;
         resetiB <= '0';
         FOR X IN 1 TO 8 LOOP
            WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
         END LOOP;
         resetiB <= '1';
         MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
         Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
         WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 1000, '1');
         Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0005",16), "memaddr after bkpt");
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStop);
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
         CheckTDO(hex("1D",40), "Trace thru reset/jump self: IR status after trace");   --  wrap
         DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",08));
         traceaddr := TDOout(7 DOWNTO 0);    --  youngest frame
         traceaddr := unsigned(traceaddr) - 2;
         DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, traceaddr);
         IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceData);
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
         IF ((TDOout(39 DOWNTO 0) /= hex("8000E",40)) AND (TDOout(39 DOWNTO 0) /= hex("8000F",40))) THEN
            CheckTDO(hex("008000E",40), "Trace frame n-2 after reset");
         END IF;
         DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
         CheckTDO(hex("0000000",40), "Trace frame n-1 after reset");
         i := i + 1;
      END LOOP;

      --
      -- Test Trace through Step
      --
      fdisplay("TraceTest step");
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("e0",8));   -- movx a,@dptr
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("04",8));   -- inc a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("f0",8));   -- movx @dptr,a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("d5",8));   -- djnz dpl,0
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("82",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("f9",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("a5",8));   -- bkpt
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("80",8));   -- jmp self
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("fe",8));

      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("82",08), hex("10",08));   --  DPL
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("83",08), hex("02",08));   --  DPH=0x02
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStart);
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0001",16), "memaddr after step");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStop);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",8));
      CheckTDO(hex("0",40), "Trace addr after step");
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      --
      -- Test trace of step thru jump
      --
      fdisplay("TraceTest step thru jump");
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceClear);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStart);
      Step(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      Checkmemaddr(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("1",16), "memaddr after step");
      GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("E8",08));
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceStop);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceAddr);
      DR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",8));
      IF (traceDepth > 2) THEN
         CheckTDO(hex("2",40), "Trace addr after step");
      ELSE
         CheckTDO(hex("0",40), "Trace addr after step");
      END IF;
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_TraceData);
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
      CheckTDO(hex("40007",40), "Trace frame even");
      DR24(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0",24));
      CheckTDO(hex("00001",40), "Trace frame odd");
   END TraceTest;

   -----------------------------------------------------------------------------
   -- TriggerTest
   --
   -- Verify triggers
   --
   -----------------------------------------------------------------------------
   PROCEDURE TestOneTrigger (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
            trig0                   : IN std_logic_vector(39 DOWNTO 0);   --  values for trigger registers
            trig1                   : IN std_logic_vector(39 DOWNTO 0);
            trig2                   : IN std_logic_vector(39 DOWNTO 0);
            trig3                   : IN std_logic_vector(39 DOWNTO 0);
            expect                  : IN std_logic_vector(2 DOWNTO 0);   --  xbrk, trigbrk, or trigout
            expectPClow             : IN std_logic_vector(15 DOWNTO 0);
            expectPChigh            : IN std_logic_vector(15 DOWNTO 0);
            expectR0                : IN std_logic_vector(7 DOWNTO 0)
                            ) IS

      VARIABLE i                      :  integer;
      variable temp_int               :  integer;
      variable temp_std               :  std_logic_vector(15 downto 0);

   BEGIN
      Reset(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("8E",8), ckcon_value);
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8), hex("00",8));
      MemWriteX(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("02",8), hex("34",8), hex("00",8));
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_trigger);   --  set trigger registers
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, trig0);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, unsigned(IR_Trigger) + 1);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, trig1);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, unsigned(IR_Trigger) + 2);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, trig2);
      IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, unsigned(IR_Trigger) + 3);
      DR40(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, trig3);
      MemWriteI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("34",8), "00000000");   --  init ram & sfr's
      MemWriteI(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("40",8), "00000000");
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("94",8), "00000000");
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("96",8), "00000000");
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("82",8), "00110100");   --  DPTR=0x0234
      MemWriteS(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("83",8), "00000010");
      SetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01111000", "00010000");   --  R0 = 0 (16 iterations max)
      SetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "01111001", "00110100");   --  R1 = 0x34
      Go(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      IF ((expect(2) OR expect(1)) = '1') THEN
         WaitForDebugAck(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, 1000*(waitstates+1), '1');
         CheckmemaddrRange(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, expectPClow(15 DOWNTO 0), expectPChigh(15 DOWNTO 0), "memaddr after trigger bkpt");
         GetReg(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "11101000");   --  read R0
         CheckTDO(hex("0",32) & expectR0(7 DOWNTO 0), "R0 after trigger bkpt");
      ELSE
         IF (expect(0) = '1') THEN
            WaitForTrigOut(1000*(waitstates+1),'1');
            FOR Index IN 1 TO 30 LOOP
               WAIT UNTIL (clkcpu'EVENT AND clkcpu = '1');
            END LOOP;
            IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);
            CheckSignal(TDOout(2), '0', "DebugAck after TrigOut");
            Halt(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
         ELSE
            IR8(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, IR_DebugNop);
            CheckSignal(TDOout(2), '0', "DebugAck after TrigOut");
            Halt(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
         END IF;
      END IF;
   END TestOneTrigger;

   PROCEDURE TestPairedTrigger (
                    SIGNAL resetiB : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
      trigE                   : IN std_logic_vector(39 DOWNTO 0);   --  value for trigger register
      trigO                   : IN std_logic_vector(39 DOWNTO 0);   --  value for trigger register
      expect                  : IN std_logic_vector(2 DOWNTO 0);   --  xbrk, trigbrk, or trigout
      expectPClow             : IN std_logic_vector(15 DOWNTO 0);
      expectPChigh            : IN std_logic_vector(15 DOWNTO 0);
      expectR0                : IN std_logic_vector(7 DOWNTO 0)
                               ) IS
   BEGIN
      IF (TRIG_NUM >= 2) THEN
         TestOneTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, trigE, trigO, "0000000000000000000000000000000000000000", "0000000000000000000000000000000000000000", expect, expectPClow, expectPChigh, expectR0);
      END IF;
      IF (TRIG_NUM >= 4) THEN
         TestOneTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "0000000000000000000000000000000000000000", "0000000000000000000000000000000000000000", trigE, trigO, expect, expectPClow, expectPChigh, expectR0);
      END IF;
   END TestPairedTrigger;

   PROCEDURE TestSingleTrigger (
                    SIGNAL resetiB : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0);
      trig                    : IN std_logic_vector(39 DOWNTO 0);   --  value for trigger register
      expect                  : IN std_logic_vector(2 DOWNTO 0);   --  xbrk, trigbrk, or trigout
      expectPClow             : IN std_logic_vector(15 DOWNTO 0);
      expectPChigh            : IN std_logic_vector(15 DOWNTO 0);
      expectR0                : IN std_logic_vector(7 DOWNTO 0)
                               ) IS


   BEGIN
      IF (TRIG_NUM >= 1) THEN
         TestOneTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, trig, "0000000000000000000000000000000000000000", "0000000000000000000000000000000000000000", "0000000000000000000000000000000000000000", expect, expectPClow, expectPChigh, expectR0);
      END IF;
      IF (TRIG_NUM >= 2) THEN
         TestOneTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "0000000000000000000000000000000000000000", trig, "0000000000000000000000000000000000000000", "0000000000000000000000000000000000000000", expect, expectPClow, expectPChigh, expectR0);
      END IF;
      IF (TRIG_NUM >= 3) THEN
         TestOneTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "0000000000000000000000000000000000000000", "0000000000000000000000000000000000000000", trig, "0000000000000000000000000000000000000000", expect, expectPClow, expectPChigh, expectR0);
      END IF;
      IF (TRIG_NUM >= 4) THEN
         TestOneTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, "0000000000000000000000000000000000000000", "0000000000000000000000000000000000000000", "0000000000000000000000000000000000000000", trig, expect, expectPClow, expectPChigh, expectR0);
      END IF;
   END TestSingleTrigger;

   PROCEDURE TriggerP (
                    SIGNAL resetiB  : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                      ) IS
   BEGIN
      fdisplay("-- TriggerP");
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("e4",8));   -- clr a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("93",8));   -- movc a,@a+dptr
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("04",8));   -- inc a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("d8",8));   -- djnz r0,0
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("f8",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("75",8));   -- load B
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("e0",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("10",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0E",8), hex("80",8));   -- jmp self
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0F",8), hex("fe",8));
      -- reads
      fdisplay("----reads");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008110000234",40), "010", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008110000240",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008150000234",40), "010", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008159900234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr, !data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00815FF00234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr, !data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008170000234",40), "010", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr, bank, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008170010234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr, !bank, data
      -- writes
      fdisplay("----writes");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("009110000234",40), "000", hex("000004",16), hex("000006",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("009150500234",40), "000", hex("000004",16), hex("000006",16), hex("000c",8));   --  addr, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("009170800234",40), "000", hex("000004",16), hex("000006",16), hex("0009",8));   --  addr, bank, data
      -- execution breakpoints
      fdisplay("----execution");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00801000000C",40), "100", hex("00000D",16), hex("00000D",16), hex("0000",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008010000234",40), "000", hex("00000D",16), hex("00000D",16), hex("0000",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00803000000C",40), "100", hex("00000D",16), hex("00000D",16), hex("0000",8));   --  addr, bank, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00803001000C",40), "000", hex("00000D",16), hex("00000D",16), hex("0000",8));   --  addr, !bank, data
      -- no-break
      fdisplay("----no break");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a110000234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b110000234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c110000234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d110000234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e110000234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f110000234",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008210000234",40), "001", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr, TrigOut
      -- reads paired trigger
      fdisplay("---- paired reads");
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008190000234",40), hex("008190000234",40), "010", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008190000230",40), hex("00819000023F",40), "010", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008190000240",40), hex("00819000024F",40), "000", hex("000002",16), hex("000003",16), hex("0010",8));   --  !addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("0081d0000234",40), hex("0081dFF00234",40), "010", hex("000002",16), hex("000003",16), hex("0010",8));   --  addr, data
      -- writes paired trigger
      fdisplay("---- paired writes");
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("009190000234",40), hex("009190000234",40), "000", hex("000004",16), hex("000006",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("009190000230",40), hex("00919000023F",40), "000", hex("000004",16), hex("000006",16), hex("0010",8));   --  addr
   END TriggerP;

   PROCEDURE TriggerX (
                    SIGNAL resetiB : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                      ) IS
       variable handle:line;
   BEGIN
      fdisplay("-- TriggerX");
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("e0",8));   -- movx a,@dptr
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("04",8));   -- inc a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("f0",8));   -- movx @dptr,a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("d8",8));   -- djnz r0,0
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("f8",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("75",8));   -- load B
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("E0",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("10",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0E",8), hex("80",8));   -- jmp self
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0F",8), hex("fe",8));
      -- reads
      fdisplay("----reads");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a110000234",40), "010", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a110000240",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a150500234",40), "010", hex("000002",16), hex("000004",16), hex("000b",8));   --  addr, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a15FF00234",40), "000", hex("000002",16), hex("000004",16), hex("000b",8));   --  addr, !data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a170800234",40), "010", hex("000002",16), hex("000004",16), hex("0008",8));   --  addr, bank, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a170810234",40), "000", hex("000002",16), hex("000004",16), hex("0008",8));   --  addr, !bank, data
      -- writes
      fdisplay("----writes");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b110000234",40), "010", hex("000004",16), hex("000006",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b110000240",40), "000", hex("000004",16), hex("000006",16), hex("0010",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b150500234",40), "010", hex("000004",16), hex("000006",16), hex("000c",8));   --  addr, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b15FF00234",40), "000", hex("000004",16), hex("000006",16), hex("000b",8));   --  addr, !data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b170800234",40), "010", hex("000004",16), hex("000006",16), hex("0009",8));   --  addr, bank, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b170810234",40), "000", hex("000004",16), hex("000006",16), hex("0008",8));   --  addr, !bank, data
      -- no-break
      fdisplay("----no break");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008110000234",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("009110000234",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c110000234",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d110000234",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e110000234",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f110000234",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a210000234",40), "001", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr, TrigOut
      -- reads paired trigger
      fdisplay("----paired reads");
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a190000234",40), hex("00a190000234",40), "010", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a190000230",40), hex("00a19000023F",40), "010", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a190000240",40), hex("00a19000024F",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  !addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a1d0500234",40), hex("00a1dFF00234",40), "010", hex("000002",16), hex("000004",16), hex("000b",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a1d0500234",40), hex("00a1dFC00234",40), "010", hex("000002",16), hex("000004",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a1d5500234",40), hex("00a1d0F00234",40), "010", hex("000002",16), hex("000004",16), hex("000b",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a1d5500234",40), hex("00a1dF000234",40), "000", hex("000002",16), hex("000004",16), hex("000b",8));   --  addr, data
      -- writes paired trigger
      fdisplay("----paired writes");
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b190000234",40), hex("00b190000234",40), "010", hex("000004",16), hex("000006",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b190000230",40), hex("00b19000023F",40), "010", hex("000004",16), hex("000006",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b190000240",40), hex("00b19000024F",40), "000", hex("000004",16), hex("000006",16), hex("0010",8));   --  !addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b1d0500234",40), hex("00b1dFF00234",40), "010", hex("000004",16), hex("000006",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b1d0500234",40), hex("00b1dFC00234",40), "010", hex("000004",16), hex("000006",16), hex("000d",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b1d5500234",40), hex("00b1d0F00234",40), "010", hex("000004",16), hex("000006",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b1d5500234",40), hex("00b1dF000234",40), "000", hex("000004",16), hex("000006",16), hex("000c",8));   --  addr, data
   END TriggerX;

   PROCEDURE TriggerI (
                    SIGNAL resetiB : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                      ) IS
   BEGIN
      fdisplay("-- TriggerI");
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("e7",8));   -- mov a,@r1
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("04",8));   -- inc a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("f7",8));   -- mov @r1,a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("d8",8));   -- djnz r0,0
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("f7",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("75",8));   -- load B
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("E0",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("10",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("00",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0E",8), hex("80",8));   -- jmp self
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0F",8), hex("fe",8));
      -- reads
      fdisplay("---- reads");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("c110000034",40),"010", hex("2",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("c110000040",40),"000", hex("2",16), hex("000004",16), hex("0010",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("c150500034",40),"010", hex("2",16), hex("000004",16), hex("000b",8));   --  addr, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("c15FF00034",40),"000", hex("2",16), hex("000004",16), hex("000b",8));   --  addr, !data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("c170800034",40),"010", hex("2",16), hex("000004",16), hex("0008",8));   --  addr, bank, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("c170810034",40),"000", hex("2",16), hex("000004",16), hex("0008",8));   --  addr, !bank, data
      -- writes
      fdisplay("---- writes");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d110000034",40),"010", hex("000005",16), hex("000007",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d110000040",40),"000", hex("000005",16), hex("000007",16), hex("0010",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d150500034",40),"010", hex("000005",16), hex("000007",16), hex("000c",8));   --  addr, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d15FF00034",40),"000", hex("000005",16), hex("000007",16), hex("000b",8));   --  addr, !data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d170800034",40),"010", hex("000005",16), hex("000007",16), hex("0009",8));   --  addr, bank, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d170810034",40),"000", hex("000005",16), hex("000007",16), hex("0008",8));   --  addr, !bank, data
      -- no-break
      fdisplay("---- no break");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008110000034",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("009110000034",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a110000034",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b110000034",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e110000034",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e1100000b4",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f110000034",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c210000034",40), "001", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr, TrigOut
      -- reads paired trigger
      fdisplay("---- paired reads");
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c190000034",40), hex("00c190000034",40), "010", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c190000030",40), hex("00c19000003F",40), "010", hex("000002",16), hex("000004",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c190000040",40), hex("00c19000004F",40), "000", hex("000002",16), hex("000004",16), hex("0010",8));   --  !addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c1d0500034",40), hex("00c1dFF00034",40), "010", hex("000002",16), hex("000004",16), hex("000b",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c1d0500034",40), hex("00c1dFC00034",40), "010", hex("000002",16), hex("000004",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c1d5500034",40), hex("00c1d0F00034",40), "010", hex("000002",16), hex("000004",16), hex("000b",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c1d5500034",40), hex("00c1dF000034",40), "000", hex("000002",16), hex("000004",16), hex("000b",8));   --  addr, data
      -- writes paired trigger
      fdisplay("---- paired writes");
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d190000034",40), hex("00d190000034",40), "010", hex("000005",16), hex("000007",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d190000030",40), hex("00d19000003F",40), "010", hex("000005",16), hex("000007",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d190000040",40), hex("00d19000004F",40), "000", hex("000005",16), hex("000007",16), hex("0010",8));   --  !addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d1d0500034",40), hex("00d1dFF00034",40), "010", hex("000005",16), hex("000007",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d1d0500034",40), hex("00d1dFC00034",40), "010", hex("000005",16), hex("000007",16), hex("000d",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d1d5500034",40), hex("00d1d0F00034",40), "010", hex("000005",16), hex("000007",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d1d5500034",40), hex("00d1dF000034",40), "000", hex("000005",16), hex("000007",16), hex("000c",8));   --  addr, data
   END TriggerI;

   PROCEDURE TriggerS (
                    SIGNAL resetiB : OUT   std_logic;
                    SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                    SIGNAL TMS      : OUT   std_logic;
                    SIGNAL TDI      : OUT   std_logic;
                    SIGNAL TCK      : IN    std_logic;
                    SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                      ) IS

      VARIABLE i                      :  integer;

   BEGIN
      fdisplay("-- TriggerS");
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("00",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("01",8), hex("e5",8));   -- mov a,0x96
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("02",8), hex("96",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("03",8), hex("04",8));   -- inc a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("04",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("05",8), hex("f5",8));   -- mov 0x96,a
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("06",8), hex("96",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("07",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("08",8), hex("00",8));   -- nop
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("09",8), hex("d8",8));   -- djnz r0,0
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0A",8), hex("f5",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0B",8), hex("75",8));   -- load B
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0C",8), hex("E0",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0D",8), hex("10",8));
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0E",8), hex("80",8));   -- jmp self
      MemWriteP(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00",8), hex("0F",8), hex("fe",8));
      -- reads
      fdisplay("---- reads");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e110000096",40), "010", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e110000097",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e110000016",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e150500096",40), "010", hex("000002",16), hex("000005",16), hex("000b",8));   --  addr, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e15FF00096",40), "000", hex("000002",16), hex("000005",16), hex("000b",8));   --  addr, !data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e170800096",40), "010", hex("000002",16), hex("000005",16), hex("0008",8));   --  addr, bank, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e170810096",40), "000", hex("000002",16), hex("000005",16), hex("0008",8));   --  addr, !bank, data
      -- writes
      fdisplay("---- writes");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f110000096",40), "010", hex("000006",16), hex("000009",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f110000016",40), "000", hex("000006",16), hex("000009",16), hex("0010",8));   --  !addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f150500096",40), "010", hex("000006",16), hex("000009",16), hex("000c",8));   --  addr, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f15FF00096",40), "000", hex("000006",16), hex("000009",16), hex("000b",8));   --  addr, !data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f170800096",40), "010", hex("000006",16), hex("000009",16), hex("0009",8));   --  addr, bank, data
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f170810096",40), "000", hex("000006",16), hex("000009",16), hex("0008",8));   --  addr, !bank, data
      -- no-break
      fdisplay("---- no break");
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("008110000096",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("009110000096",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00a110000096",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00b110000096",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00c110000096",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr (false trigger)
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00d110000096",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr
      TestSingleTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e210000096",40), "001", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr, TrigOut
      -- reads paired trigger
      fdisplay("---- paired reads");
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e190000096",40), hex("00e190000096",40), "010", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e190000090",40), hex("00e19000009F",40), "010", hex("000002",16), hex("000005",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e1900000a0",40), hex("00e1900000aF",40), "000", hex("000002",16), hex("000005",16), hex("0010",8));   --  !addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e1d0500096",40), hex("00e1dFF00096",40), "010", hex("000002",16), hex("000005",16), hex("000b",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e1d0500096",40), hex("00e1dFC00096",40), "010", hex("000002",16), hex("000005",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e1d5500096",40), hex("00e1d0F00096",40), "010", hex("000002",16), hex("000005",16), hex("000b",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00e1d5500096",40), hex("00e1dF000096",40), "000", hex("000002",16), hex("000005",16), hex("000b",8));   --  addr, data
      -- writes paired trigger
      fdisplay("---- paired writes");
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f190000096",40), hex("00f190000096",40), "010", hex("000006",16), hex("000009",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f190000090",40), hex("00f19000009F",40), "010", hex("000006",16), hex("000009",16), hex("0010",8));   --  addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f1900000a0",40), hex("00f1900000aF",40), "000", hex("000006",16), hex("000009",16), hex("0010",8));   --  !addr
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f1d0500096",40), hex("00f1dFF00096",40), "010", hex("000006",16), hex("000009",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f1d0500096",40), hex("00f1dFC00096",40), "010", hex("000006",16), hex("000009",16), hex("000d",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f1d5500096",40), hex("00f1d0F00096",40), "010", hex("000006",16), hex("000009",16), hex("000c",8));   --  addr, data
      TestPairedTrigger(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, hex("00f1d5500096",40), hex("00f1dF000096",40), "000", hex("000006",16), hex("000009",16), hex("000c",8));   --  addr, data
   END TriggerS;


   PROCEDURE TriggerTest (
                          SIGNAL resetiB : INOUT std_logic;
                          SIGNAL TDOout   : INOUT std_logic_vector(39 DOWNTO 0);
                          SIGNAL TDOlat   : INOUT std_logic_vector(39 DOWNTO 0);
                          SIGNAL TMS      : INOUT std_logic;
                          SIGNAL TDI      : INOUT std_logic;
                          SIGNAL TCK      : IN    std_logic;
                          SIGNAL TDOsr    : INOUT std_logic_vector(39 DOWNTO 0)
                         ) IS
      variable handle:line;
   BEGIN
      fdisplay("TriggerTest");
      TriggerP(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      TriggerX(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      TriggerI(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
      --TriggerS(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr); -- External SFR related test skipped for Core8051s
   END TriggerTest;




BEGIN
                         -----------------------
                         --                   --
                         --  INSTANTIATIONS   --
                         --                   --
                         -----------------------

oci_sys_inst : oci_sys
generic map (
    DEBUG            => DEBUG,
    INCL_TRACE       => INCL_TRACE,
    TRIG_NUM         => TRIG_NUM,
    EN_FF_OPTS       => 0,
    APB_DWIDTH       => 32,
    INCL_DPTR1       => 1,
    INCL_MUL_DIV_DA  => 1,
    VARIABLE_STRETCH => 1,
    STRETCH_VAL      => 1,
    VARIABLE_WAIT    => 1,
    WAIT_VAL         => 0,
	WAITSTATES       => WAITSTATES
)
port map (
     clk            => clkcpu,
     resetiB        => resetiB,
     tck            => TCK,
     tdi            => TDI,
     tms            => TMS,
     tdo            => TDO,
     TRSTB          => TRSTB,
     TrigOut        => TrigOut,
     BreakIn        => BreakIn,
     BreakOut       => BreakOut,
     AuxOut         => AuxOut
);

--
-- CLK source
--
PROCESS BEGIN
   clkcpu <= '0';
   WHILE (not done) LOOP
      WAIT FOR CLK_half;
      clkcpu <= not clkcpu;
   end loop;
   wait;
end process;

--
-- TCK source
--
PROCESS BEGIN
   TCK <= '0';
   WHILE (not done) LOOP
      WAIT FOR TCK_half;
      TCK <= not TCK;
   end loop;
   wait;
end process;

--
-- Main simulation driver
--
PROCESS
   VARIABLE line_handle : LINE;
BEGIN

   done <= false;
   fdisplay("--------------------------------------");

   write(line_handle, string'("TRIG_NUM = "));
   write(line_handle, TRIG_NUM);
   writeline(fp1, line_handle);
   write(line_handle, string'("TRIG_NUM = "));
   write(line_handle, TRIG_NUM);
   writeline(fp2, line_handle);
   write(line_handle, string'("WAITSTATES = "));
   write(line_handle, WAITSTATES);
   writeline(fp1, line_handle);
   write(line_handle, string'("WAITSTATES = "));
   write(line_handle, WAITSTATES);
   writeline(fp2, line_handle);
   write(line_handle, string'("DEBUG = "));
   write(line_handle, DEBUG);
   writeline(fp1, line_handle);
   write(line_handle, string'("DEBUG = "));
   write(line_handle, DEBUG);
   writeline(fp2, line_handle);

   ckcon_value <= "00000001";

   BreakIn <= '0';

   TDI <= '0';
   TMS <= '0';
   TRSTB <= '0';   -- force TAP reset (needed for simulation)
   resetiB <= '0';

   wait for 10 ns;
   TRSTB <= '1';
   wait for 500 ns;
   resetiB <= '1';

   wait for 1000 ns;

   --
   -- Run the tests
   --

   -- verify JTAG idcode
   IdcodeTest(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

   -- access to trigger registers
   TriggerWriteReadTest(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

   -- access to trace memory
   if (TRACE_DEPTH > 0) then
      TraceWriteReadTest(TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
   end if;

   -- AuxOut signal
   AuxOutTest(TDOout, TDOlat, TMS, TDI, TCK, TDOsr, TRSTB);

   -- Reset functions
   ResetTest(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr, TRSTB);

   -- debugack/debugreq behavior
   GoHaltTest(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

   -- software breakpoint trap instruction
   TrapTest(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

   -- BreakIn/BreakOut signals
   BreakBusTest(resetiB, BreakIn, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

   -- Single-step
   StepTest(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

   -- Test mechanism to extract registers at bkpt
   RegTest(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

   -- Read/write memory from debugger
   MemTest(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);

   -- Collect branch-mode trace
   if (TRACE_DEPTH > 0) then
      TraceTest(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
   end if;

   -- Complex triggers
   if (TRIG_NUM > 0) then
      TriggerTest(resetiB, TDOout, TDOlat, TMS, TDI, TCK, TDOsr);
   end if;

   fdisplay("Simulation completed successfully.");
   done <= true;
   WAIT;
end process;

end rtl;
