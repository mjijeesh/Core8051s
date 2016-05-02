-------------------------------------------------------------------------------
-- Copyright 2006 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- File:            extclock.vhd
--
-- Description:     External clock generator
--
--
-- Rev:             1.2  Dec06
--
-- Notes:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;


   entity EXTERNAL_CLOCK_GENERATOR is
      generic (
              PERIOD    : TIME    := 100 ns; -- Clock pulse period
              DUTY      : INTEGER := 50      -- Duty cycle (0-100%)
              );
      port (
           clk          : out STD_LOGIC
           );
   end EXTERNAL_CLOCK_GENERATOR;

--*******************************************************************--

   architecture SIM of EXTERNAL_CLOCK_GENERATOR is
   begin

   --------------------------------------------------------------------
   main :
   --------------------------------------------------------------------
      process
         constant HALF_PERIOD : TIME := PERIOD*DUTY/100;
      begin
         ----------------------------------------
         -- Clock generator
         ----------------------------------------
         loop
            clk <= '0';
            wait for HALF_PERIOD;
            clk <= '1';
            wait for PERIOD-HALF_PERIOD;
         end loop;
      end process;

   end SIM;
