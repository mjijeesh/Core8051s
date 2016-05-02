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
-- name:		trace.vhd
-- function:	OCI Trace control for Core8051
-- comments:	best viewed with tabstops set to "4"
-- history:		6/18/03 - TFB created
--				6/27/03 - Trace logic must use sync reset so ff's don't
--				need both set and clr.
--				7/10/03 - Added async reset for all signals using urstb.
--				7/13/03 - TFB modified to use generics rather than constants
--				for various parameters
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.std_logic_arith.ALL;
USE WORK.jtagdef.ALL;
entity trace is
generic (
	-- TRACE_DEPTH
	-- no trace:  Set value to 0
	-- 256 depth: Set value to 8
	TRACE_DEPTH	: integer := 0
);
port (
   CLK                     : IN std_logic;
   urstb                   : IN std_logic;
   RESETB                  : IN std_logic;
   IR                      : IN std_logic_vector(7 DOWNTO 0);
   JDO                     : IN std_logic_vector(39 DOWNTO 0);
   JXIR                    : IN std_logic;
   JXDR                    : IN std_logic;
   memaddr                 : IN std_logic_vector(15 DOWNTO 0);
   membank                 : IN std_logic_vector(3 DOWNTO 0);
   fetch                   : IN std_logic;
   flush                   : IN std_logic;
   TraceA                  : OUT std_logic_vector(7 DOWNTO 0);
   TraceA_e                : OUT std_logic_vector(7 DOWNTO 0);
   TraceDI                 : OUT std_logic_vector(19 DOWNTO 0);
   TraceWr                 : OUT std_logic;
   TraceRun                : OUT std_logic;
   TraceWrapped            : OUT std_logic;
   TrigTon                 : IN std_logic;
   TrigToff                : IN std_logic;
   PCsample                : OUT std_logic_vector(19 DOWNTO 0));
END trace;

ARCHITECTURE rtl of trace IS

   SIGNAL TraceA_xhdl       : std_logic_vector(7 DOWNTO 0);
   SIGNAL TraceA_xhdl_e     : std_logic_vector(7 DOWNTO 0);
   SIGNAL TraceWr_xhdl      : std_logic;
   SIGNAL TraceRun_xhdl     : std_logic;
   SIGNAL TraceWrapped_xhdl : std_logic;


                         -----------------------
                         --                   --
                         --  LOCAL VARIABLES  --
                         --                   --
                         -----------------------
   SIGNAL Jump0             : std_logic;
   SIGNAL TraceType         : std_logic_vector(3 DOWNTO 0);
   SIGNAL resetDelay        : std_logic;
   SIGNAL PC                : std_logic_vector(15 DOWNTO 0);
   SIGNAL PCA               : std_logic_vector(15 DOWNTO 0);
   SIGNAL TrigTon2          : std_logic;
   SIGNAL TrigToff2         : std_logic;
   SIGNAL syncReset         : std_logic;

   CONSTANT TRACE_TON       : std_logic_vector:="0001";
   CONSTANT TRACE_TOFF      : std_logic_vector:="0010";
   CONSTANT TRACE_JUMP      : std_logic_vector:="0100";
   CONSTANT TRACE_RESET     : std_logic_vector:="1000";
   CONSTANT One             : SIGNED:="01";

BEGIN
   TraceA <= TraceA_xhdl;
   TraceA_e <= TraceA_xhdl_e;
   TraceWr <= TraceWr_xhdl;
   TraceRun <= TraceRun_xhdl;
   TraceWrapped <= TraceWrapped_xhdl;

                         -----------------------
                         --                   --
                         --  EXECUTABLE CODE  --
                         --                   --
                         -----------------------

   PROCESS (CLK, urstb) BEGIN
      if (urstb = '0') THEN
         syncReset <= '0';
      elsif (CLK'EVENT AND CLK = '1') THEN
         syncReset <= not RESETB;
      end if;
   END PROCESS;

   PROCESS (CLK, urstb) BEGIN
   if (urstb = '0') THEN
      TraceWrapped_xhdl <= '0';
      TraceRun_xhdl <= '0';
      TraceWr_xhdl <= '0';
      Jump0 <= '0';
      TraceType <= (OTHERS => '0');
      resetDelay <= '0';
      PC <= (OTHERS => '0');
      PCA <= (OTHERS => '0');
      TrigTon2 <= '0';
      TrigToff2 <= '0';
   elsif (CLK'EVENT AND CLK = '1') THEN

      if (TraceWr_xhdl = '1') then
         case TRACE_DEPTH is
            when 1 =>
               if (TraceA_xhdl(0) = '1') then
                  TraceWrapped_xhdl <= '1';
               end if;
            when 2 =>
               if (TraceA_xhdl(1 DOWNTO 0) = "11") then
                  TraceWrapped_xhdl <= '1';
               end if;
            when 3 =>
               if (TraceA_xhdl(2 DOWNTO 0) = "111") then
                  TraceWrapped_xhdl <= '1';
               end if;
            when 4 =>
               if (TraceA_xhdl(3 DOWNTO 0) = "1111") then
                  TraceWrapped_xhdl <= '1';
               end if;
            when 5 =>
               if (TraceA_xhdl(4 DOWNTO 0) = "11111") then
                  TraceWrapped_xhdl <= '1';
               end if;
            when 6 =>
               if (TraceA_xhdl(5 DOWNTO 0) = "111111") then
                  TraceWrapped_xhdl <= '1';
               end if;
            when 7 =>
               if (TraceA_xhdl(6 DOWNTO 0) = "1111111") then
                  TraceWrapped_xhdl <= '1';
               end if;
            when 8 =>
               if (TraceA_xhdl(7 DOWNTO 0) = "11111111") then
                  TraceWrapped_xhdl <= '1';
               end if;
            when others => NULL;
         end case;
      end if;

      if (syncReset = '1') THEN
         resetDelay <= '1';
         PC(15 DOWNTO 0) <= memaddr(15 DOWNTO 0);
         if (Jump0 = '1') then
            PCA(15 DOWNTO 0) <= PC(15 DOWNTO 0);
            TraceWr_xhdl <= '1';
            Jump0 <= '0';
         else
            TraceWr_xhdl <= '0';
         end if;
         TrigTon2 <= '0';
         TrigToff2 <= '0';

      else
         resetDelay <= '0';

         if ((fetch = '1') or (flush = '1')) then
            PC(15 DOWNTO 0) <= memaddr(15 DOWNTO 0);
         end if;
         if ((Jump0 = '1') or ((fetch = '1') and (resetDelay = '0')) or
         (flush = '1')) then
            PCA(15 DOWNTO 0) <= PC(15 DOWNTO 0);
         end if;

         if (TRACE_DEPTH > 0) then

            --
            -- Handle JTAG commands
            --
            if ((JXIR = '1') and (IR(7 DOWNTO 5) = IRC_TRACECMD) and
            (IR(3) = '0') and (IR(2) = '1')) then
               -- Clear trace
               if (IR(1) = '1') then
                  TraceWrapped_xhdl <= '0';
               end if;
               -- Start or stop trace
               TraceRun_xhdl <= IR(0);
               TraceWr_xhdl <= '0';
            -- Read/write trace operation
            elsif ((JXDR = '1') and (IR(7 DOWNTO 5) = IRC_TRACE) and
            (IR(3) = '1')) then
               TraceWr_xhdl <= '1';
            -- Write trace address
            elsif ((JXDR = '1') and (IR(7 DOWNTO 5) = IRC_TRACECMD)) then
               TraceWr_xhdl <= '0';
            -- write second half of frame
            elsif (Jump0 = '1') then
               TraceWr_xhdl <= '1';
               if (TrigTon = '1') then
                  -- bus busy...queue up
                  TrigTon2 <= '1';
               end if;
               if (TrigToff = '1') then
                  TrigToff2 <= '1';
               end if;
               Jump0 <= '0';
            -- check for new frame to write
            else
               if ((TraceRun_xhdl = '1') and (flush = '1')) then
                  -- write current PC
                  TraceWr_xhdl <= '1';
                  TraceType(3 DOWNTO 0) <= TRACE_JUMP;
                  -- schedule write of next program fetch
                  Jump0 <= '1';
               elsif ((TraceRun_xhdl = '1') and (resetDelay = '1')) then
                  -- write current PC
                  TraceWr_xhdl <= '1';
                  TraceType(3 DOWNTO 0) <= TRACE_RESET;
                  -- schedule write of next program fetch
                  Jump0 <= '1';
                  PC(15 DOWNTO 0) <= (OTHERS=>'0');
               else
                  TrigTon2 <= '0';
                  TrigToff2 <= '0';
                  if ((TrigTon = '1') or (TrigTon2 = '1')) then
                     TraceType(3 DOWNTO 0) <= TRACE_TON;
                     -- trace turns on
                     TraceRun_xhdl <= '1';
                     if (TraceRun_xhdl = '0') then
                        -- write current PC
                        TraceWr_xhdl <= '1';
                        -- schedule write of next program fetch
                        Jump0 <= '1';
                     else
                        TraceWr_xhdl <= '0';
                     end if;
                  elsif ((TrigToff = '1') or (TrigToff2 = '1')) then
                     -- trace turns off
                     TraceRun_xhdl <= '0';
                     TraceType(3 DOWNTO 0) <= TRACE_TOFF;
                     if (TraceRun_xhdl = '1') then
                        -- write current PC
                        TraceWr_xhdl <= '1';
                        -- schedule write of next program fetch
                        Jump0 <= '1';
                     else
                        TraceWr_xhdl <= '0';
                     end if;
                  else
                     TraceWr_xhdl <= '0';
                  end if;
               end if;
            end if;
         else
            TraceWrapped_xhdl <= '0';
            TraceRun_xhdl <= '0';
            Jump0 <= '0';
            TraceType <= "0000";
         end if;
      end if;
   end if;
   end PROCESS;


    -- TraceA handled separately
    -- Want to have early version of TraceA available for use in reading from
    -- Trace RAM. The intention is to improve operating frequency in ProASIC3/E
    -- and Fusion devices which have RAMs which only allow synchronous read.
    PROCESS (TraceWr_xhdl, TraceA_xhdl, syncReset, JXIR, IR, JXDR, JDO, urstb)
    BEGIN
        if (urstb = '0') THEN
            TraceA_xhdl_e(7 DOWNTO 0) <= "00000000";
        else
            if (TraceWr_xhdl = '1') then
                case TRACE_DEPTH is
                    when 1 =>
                        TraceA_xhdl_e(0) <= not TraceA_xhdl(0);
                    when 2 =>
                        TraceA_xhdl_e(1 DOWNTO 0) <= signed(TraceA_xhdl(1 DOWNTO 0)) + One;
                    when 3 =>
                        TraceA_xhdl_e(2 DOWNTO 0) <= signed(TraceA_xhdl(2 DOWNTO 0)) + One;
                    when 4 =>
                        TraceA_xhdl_e(3 DOWNTO 0) <= signed(TraceA_xhdl(3 DOWNTO 0)) + One;
                    when 5 =>
                        TraceA_xhdl_e(4 DOWNTO 0) <= signed(TraceA_xhdl(4 DOWNTO 0)) + One;
                    when 6 =>
                        TraceA_xhdl_e(5 DOWNTO 0) <= signed(TraceA_xhdl(5 DOWNTO 0)) + One;
                    when 7 =>
                        TraceA_xhdl_e(6 DOWNTO 0) <= signed(TraceA_xhdl(6 DOWNTO 0)) + One;
                    when 8 =>
                        TraceA_xhdl_e(7 DOWNTO 0) <= signed(TraceA_xhdl(7 DOWNTO 0)) + One;
                    when others => NULL;
                end case;
            end if;

            if (syncReset = '1') THEN
                if ((TraceWr_xhdl = '0') or (TRACE_DEPTH = 0)) then
                    TraceA_xhdl_e(7 DOWNTO 0) <= TraceA_xhdl(7 DOWNTO 0);
                end if;
            else
                if (TRACE_DEPTH > 0) then
                    --
                    -- Handle JTAG commands
                    --
                    if ((JXIR = '1') and (IR(7 DOWNTO 5) = IRC_TRACECMD) and
                    (IR(3) = '0') and (IR(2) = '1')) then
                    -- Clear trace
                        if (IR(1) = '1') then
                            TraceA_xhdl_e(7 DOWNTO 0) <= "00000000";
                        else
                            if (TraceWr_xhdl = '0') then
                                TraceA_xhdl_e(7 DOWNTO 0) <= TraceA_xhdl(7 DOWNTO 0);
                            end if;
                        end if;
                    -- Read/write trace operation
                    elsif ((JXDR = '1') and (IR(7 DOWNTO 5) = IRC_TRACE) and
                    (IR(3) = '1')) then
                        if (TraceWr_xhdl = '0') then
                            TraceA_xhdl_e(7 DOWNTO 0) <= TraceA_xhdl(7 DOWNTO 0);
                        end if;
                    -- Write trace address
                    elsif ((JXDR = '1') and (IR(7 DOWNTO 5) = IRC_TRACECMD)) then
                        TraceA_xhdl_e(7 DOWNTO 0) <= JDO(7 DOWNTO 0);
                    else
                        if (TraceWr_xhdl = '0') then
                            TraceA_xhdl_e(7 DOWNTO 0) <= TraceA_xhdl(7 DOWNTO 0);
                        end if;
                    end if;
                else
                    TraceA_xhdl_e(7 DOWNTO 0) <= (OTHERS=>'0');
                end if;
            end if;
        end if;
    end PROCESS;


    PROCESS (CLK, urstb) BEGIN
    if (urstb = '0') THEN
        TraceA_xhdl <= (OTHERS => '0');
    elsif (CLK'EVENT AND CLK = '1') THEN
        TraceA_xhdl <= TraceA_xhdl_e;
    end if;
    end PROCESS;


TraceDI(19 DOWNTO 0) <=
   JDO(19 DOWNTO 0)
      -- JTAG access to traceram
      when (TRACE_DEPTH > 0) and (IR(7 DOWNTO 5) = IRC_TRACE) else
   TraceType(3 DOWNTO 0) & PCA(15 DOWNTO 0)
      -- first frame  code+PC
      when (TRACE_DEPTH > 0) and (Jump0 = '1')                else
   membank(3 DOWNTO 0) & PCA(15 DOWNTO 0)
      -- second frame bank+PC
      when (TRACE_DEPTH > 0)                                  else
   (OTHERS=>'0');

PCsample(19 DOWNTO 0) <= membank(3 DOWNTO 0) & memaddr(15 DOWNTO 0);

end rtl;
