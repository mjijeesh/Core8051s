-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- SVN Revision Information:
-- SVN $Revision: 9148 $
-- SVN $Date: 2009-07-22 13:53:33 +0100 (Wed, 22 Jul 2009) $
--
-- ********************************************************************/
-------------------------------------------------------------------------------
-- name:		debug.vhd
-- function:	OCI Debug Mode Control
-- comments:	best viewed with tabstops set to "4"
-- history:		6/18/03 - TFB created
--				6/27/03 - Change DebugPswr JTAG to require IR[2]=0.
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.std_logic_arith.ALL;
USE WORK.jtagdef.ALL;

ENTITY debug IS PORT (
   CLK                      : IN std_logic;
   RESETB                   : IN std_logic;
   IR                       : IN std_logic_vector(7 DOWNTO 0);
   JDO                      : IN std_logic_vector(39 DOWNTO 0);
   JXIR                     : IN std_logic;
   JXDR                     : IN std_logic;
   DebugAck                 : IN std_logic;
   DebugReq                 : OUT std_logic;
   DebugStep                : OUT std_logic;
   DebugProg                : OUT std_logic;
   DebugMemdatai            : OUT std_logic_vector(7 DOWNTO 0);
   DebugMemdataEnb          : OUT std_logic;
   DebugPswr                : OUT std_logic;
   fetch                    : IN std_logic;
   flush                    : IN std_logic;
   TrigXbrk                 : IN std_logic;
   TrigBreak                : IN std_logic;
   TrigBrkType              : OUT std_logic;
   BreakInType              : OUT std_logic;
   BreakIn                  : IN std_logic;
   BreakOut                 : OUT std_logic);
END debug;

ARCHITECTURE rtl OF debug IS

   SIGNAL DebugReq_xhdl        : std_logic;
   SIGNAL DebugStep_xhdl       : std_logic;
   SIGNAL DebugProg_xhdl       : std_logic;
   SIGNAL DebugPswr_xhdl       : std_logic;
   SIGNAL TrigBrkType_xhdl     : std_logic;
   SIGNAL BreakInType_xhdl     : std_logic;
   SIGNAL BreakOut_xhdl        : std_logic;

                         -----------------------
                         --                   --
                         --  LOCAL VARIABLES  --
                         --                   --
                         -----------------------
   SIGNAL DebugAckDelay        : std_logic;
   SIGNAL OCIopcode            : std_logic_vector(23 DOWNTO 0);

BEGIN
   DebugReq <= DebugReq_xhdl;
   DebugStep <= DebugStep_xhdl;
   DebugProg <= DebugProg_xhdl;
   DebugPswr <= DebugPswr_xhdl;
   TrigBrkType <= TrigBrkType_xhdl;
   BreakInType <= BreakInType_xhdl;
   BreakOut <= BreakOut_xhdl;

                         -----------------------
                         --                   --
                         --  EXECUTABLE CODE  --
                         --                   --
                         -----------------------

  PROCESS (CLK, RESETB) BEGIN
     if (RESETB = '0') then
         DebugReq_xhdl <= '0';
         DebugStep_xhdl <= '0';
         DebugProg_xhdl <= '0';
         TrigBrkType_xhdl <= '0';
         BreakInType_xhdl <= '0';
         DebugAckDelay <= '0';
         DebugPswr_xhdl <= '0';
         OCIopcode(23 DOWNTO 0) <= (OTHERS=>'0');
         BreakOut_xhdl <= '0';
     elsif (CLK'EVENT AND CLK = '1') THEN
         --
         -- Handle JTAG commands
         --

         -- DebugReq manipulation command
         if ((JXIR = '1') AND (IR(7 DOWNTO 5) = IRC_DEBUGCMD) AND
         (IR(3) = '1')) then
            DebugReq_xhdl <= IR(0);
            TrigBrkType_xhdl <= '0';     -- reset for next session
            BreakInType_xhdl <= '0';     -- reset for next session
            BreakOut_xhdl <= '0';        -- reset for next session
            DebugStep_xhdl <= IR(2);     -- user single-step
            DebugProg_xhdl <= IR(1);     -- Source is OCI(1) or user memory(0)
         elsif ((JXIR = '1') AND (IR(7 DOWNTO 5) = IRC_CMD) AND
         (IR(2) = '0')) then
            DebugPswr_xhdl <= IR(0);     -- redirect xdata -> prog writes
         elsif ((JXDR = '1') AND (IR(7 DOWNTO 5) = IRC_DEBUGCMD)) then
            DebugStep_xhdl <= IR(1);     -- OCI single-step
            OCIopcode(23 DOWNTO 0) <= JDO(23 DOWNTO 0);
         else
            DebugStep_xhdl <= '0';
            DebugAckDelay <= DebugAck;
            -- in debug mode
            if (DebugAck = '1') then
               if (DebugAckDelay = '0') then
                  DebugReq_xhdl <= '1';  -- TRAP execution case
                  BreakOut_xhdl <= '1';
               end if;
            -- in run mode
            else
               -- trigger breakpoint
               if (TrigBreak = '1') then
                  DebugReq_xhdl <= '1';
                  if (DebugReq_xhdl = '0') then
                     TrigBrkType_xhdl <= '1';
                  end if;
               end if;
               -- break bus breakpoint
               if (BreakIn = '1') then
                  DebugReq_xhdl <= '1';
                  if (DebugReq_xhdl = '0') then
                     BreakInType_xhdl <= '1';
                  end if;
               end if;
            end if;

            if ((flush = '1') OR (fetch = '1')) then
               OCIopcode(23 DOWNTO 16) <= OCIopcode(15 DOWNTO 8);
               OCIopcode(15 DOWNTO  8) <= OCIopcode( 7 DOWNTO 0);
            end if;
         end if;
      end if;
   end PROCESS;

DebugMemdataEnb <=
      ((fetch OR flush) AND DebugProg_xhdl) -- read program data from OCI
   OR ((fetch OR flush) AND TrigXbrk);      -- execution breakpoint

DebugMemdatai(7 DOWNTO 0) <= OCIopcode(23 DOWNTO 16) WHEN (DebugProg_xhdl = '1')
   ELSE BKPT;                          -- execution breakpoint

end rtl;
