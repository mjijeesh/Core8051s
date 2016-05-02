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
-- name:		trigger.vhd
-- function:	OCI Trigger control for Core8051
-- comments:	best viewed with tabstops set to "4"
-- history:		6/18/03 - TFB created
--				7/13/03 - TFB modified to use generics rather than constants
--				for various parameters
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
USE ieee.std_logic_arith.ALL;
USE WORK.jtagdef.ALL;
entity trigger is
generic (
	-- TRIG_NUM
	-- no triggers:  set value to 0
	--  1 trigger:   set value to 1
	--  2 triggers:  set value to 2
	--  4 triggers:  set value to 4
	TRIG_NUM	: integer := 0
);
port (
   CLK                      : IN std_logic;
   RESETB                   : IN std_logic;
   IR                       : IN std_logic_vector(7 DOWNTO 0);
   JDO                      : IN std_logic_vector(39 DOWNTO 0);
   JXDR                     : IN std_logic;
   Trigger                  : OUT std_logic_vector(159 DOWNTO 0);
   DebugReq                 : IN std_logic;
   memaddr                  : IN std_logic_vector(15 DOWNTO 0);
   membank                  : IN std_logic_vector(3 DOWNTO 0);
   memdatai                 : IN std_logic_vector(7 DOWNTO 0);
   memdatao                 : IN std_logic_vector(7 DOWNTO 0);
   mempsrd                  : IN std_logic;
   mempsack                 : IN std_logic;
   mempswr                  : IN std_logic;
   memrd                    : IN std_logic;
   memwr                    : IN std_logic;
   ramaddr                  : IN std_logic_vector(7 DOWNTO 0);
   ramdatai                 : IN std_logic_vector(7 DOWNTO 0);
   ramdatao                 : IN std_logic_vector(7 DOWNTO 0);
   ramwe                    : IN std_logic;
   ramoe                    : IN std_logic;
   sfraddr                  : IN std_logic_vector(6 DOWNTO 0);
   sfrdatai                 : IN std_logic_vector(7 DOWNTO 0);
   sfrdatao                 : IN std_logic_vector(7 DOWNTO 0);
   sfrwe                    : IN std_logic;
   sfroe                    : IN std_logic;
-- Action outputs
   TrigTon                  : OUT std_logic;
   TrigToff                 : OUT std_logic;
   TrigBreak                : OUT std_logic;
   TrigOut                  : OUT std_logic;
   TrigXbrk                 : OUT std_logic);
end trigger;

ARCHITECTURE rtl of trigger IS

   SIGNAL Trigger_xhdl      : std_logic_vector(159 DOWNTO 0);

                         -----------------------
                         --                   --
                         --  LOCAL VARIABLES  --
                         --                   --
                         -----------------------
   SIGNAL trig0             : std_logic_vector(39 DOWNTO 0);
   SIGNAL trig1             : std_logic_vector(39 DOWNTO 0);
   SIGNAL trig2             : std_logic_vector(39 DOWNTO 0);
   SIGNAL trig3             : std_logic_vector(39 DOWNTO 0);
   SIGNAL TrigTon0          : std_logic;
   SIGNAL TrigTon1          : std_logic;
   SIGNAL TrigTon2          : std_logic;
   SIGNAL TrigTon3          : std_logic;
   SIGNAL TrigToff0         : std_logic;
   SIGNAL TrigToff1         : std_logic;
   SIGNAL TrigToff2         : std_logic;
   SIGNAL TrigToff3         : std_logic;
   SIGNAL TrigBreak0        : std_logic;
   SIGNAL TrigBreak1        : std_logic;
   SIGNAL TrigBreak2        : std_logic;
   SIGNAL TrigBreak3        : std_logic;
   SIGNAL TrigOut0          : std_logic;
   SIGNAL TrigOut1          : std_logic;
   SIGNAL TrigOut2          : std_logic;
   SIGNAL TrigOut3          : std_logic;
   SIGNAL TrigEnb0          : std_logic;
   SIGNAL TrigEnb1          : std_logic;
   SIGNAL TrigEnb2          : std_logic;
   SIGNAL TrigEnb3          : std_logic;
   SIGNAL TrigXbrkSetting   : std_logic_vector(7 DOWNTO 0);
   SIGNAL TrigXbrk0         : std_logic;
   SIGNAL TrigXbrk1         : std_logic;
   SIGNAL TrigXbrk2         : std_logic;
   SIGNAL TrigXbrk3         : std_logic;

                         -----------------------
                         --                   --
                         --     FUNCTIONS     --
                         --                   --
                         -----------------------

function TrigA (
   trig     : IN std_logic_vector(39 DOWNTO 0);
   memaddr  : IN std_logic_vector(15 DOWNTO 0);
   ramaddr  : IN std_logic_vector (7 DOWNTO 0);
   sfraddr  : IN std_logic_vector (6 DOWNTO 0))
RETURN std_logic_vector IS

   VARIABLE TrigA : std_logic_vector(15 DOWNTO 0);
BEGIN
   case trig(38 DOWNTO 36) IS
     WHEN TRIGMODE_PROGRD|TRIGMODE_PROGWR|TRIGMODE_XDATARD|TRIGMODE_XDATAWR =>
        TrigA(15 DOWNTO 0) := memaddr(15 DOWNTO 0);
     WHEN TRIGMODE_IDATARD|TRIGMODE_IDATAWR =>
        TrigA(15 DOWNTO 0) := "00000000" & ramaddr(7 DOWNTO 0);
     WHEN TRIGMODE_SFRRD|TRIGMODE_SFRWR =>
        TrigA(15 DOWNTO 0) := "000000001" & sfraddr(6 DOWNTO 0);
     WHEN OTHERS => NULL;
   end case;
   return(TrigA);
end TrigA;

function TrigD (
   trig     : IN std_logic_vector(39 DOWNTO 0);
   memdatai : IN std_logic_vector (7 DOWNTO 0);
   memdatao : IN std_logic_vector (7 DOWNTO 0);
   ramdatai : IN std_logic_vector (7 DOWNTO 0);
   ramdatao : IN std_logic_vector (7 DOWNTO 0);
   sfrdatai : IN std_logic_vector (7 DOWNTO 0);
   sfrdatao : IN std_logic_vector (7 DOWNTO 0))
RETURN std_logic_vector IS

   VARIABLE TrigD : std_logic_vector(7 DOWNTO 0);
BEGIN
   case trig(38 DOWNTO 36) IS
     WHEN TRIGMODE_XDATARD | TRIGMODE_PROGRD =>
        TrigD(7 DOWNTO 0) := memdatai(7 DOWNTO 0);
     WHEN TRIGMODE_XDATAWR | TRIGMODE_PROGWR =>
        TrigD(7 DOWNTO 0) := memdatao(7 DOWNTO 0);
     WHEN TRIGMODE_IDATARD =>
        TrigD(7 DOWNTO 0) := ramdatai(7 DOWNTO 0);
     WHEN TRIGMODE_IDATAWR =>
        TrigD(7 DOWNTO 0) := ramdatao(7 DOWNTO 0);
     WHEN TRIGMODE_SFRRD =>
        TrigD(7 DOWNTO 0) := sfrdatai(7 DOWNTO 0);
     WHEN TRIGMODE_SFRWR =>
        TrigD(7 DOWNTO 0) := sfrdatao(7 DOWNTO 0);
     WHEN OTHERS => NULL;
   end case;
   return(TrigD);
end TrigD;

function TrigB (
   trig     : IN std_logic_vector(39 DOWNTO 0);
   membank  : IN std_logic_vector (3 DOWNTO 0))
RETURN std_logic_vector IS

   VARIABLE TrigB : std_logic_vector(3 DOWNTO 0);
BEGIN
   TrigB(3 DOWNTO 0) := membank(3 DOWNTO 0);
   return(TrigB);
end TrigB;

function TrigS (
   trig     : IN std_logic_vector(39 DOWNTO 0);
   mempsrd  : IN std_logic;
   mempsack : IN std_logic;
   mempswr  : IN std_logic;
   memrd    : IN std_logic;
   memwr    : IN std_logic;
   ramoe    : IN std_logic;
   ramwe    : IN std_logic;
   sfroe    : IN std_logic;
   sfrwe    : IN std_logic)
RETURN std_logic IS

   VARIABLE TrigS : std_logic;
BEGIN
   case trig(38 DOWNTO 36) IS
     WHEN TRIGMODE_PROGRD  => TrigS := mempsrd and mempsack;
     WHEN TRIGMODE_PROGWR  => TrigS := mempswr;
     WHEN TRIGMODE_XDATARD => TrigS := memrd;
     WHEN TRIGMODE_XDATAWR => TrigS := memwr;
     WHEN TRIGMODE_IDATARD => TrigS := ramoe;
     WHEN TRIGMODE_IDATAWR => TrigS := ramwe;
     WHEN TRIGMODE_SFRRD   => TrigS := sfroe;
     WHEN TRIGMODE_SFRWR   => TrigS := sfrwe;
     WHEN OTHERS => NULL;
   end case;
   return(TrigS);
end TrigS;

--
-- Comparison functions for triggers
--
function TrigMatchSingle (
   trig     : IN std_logic_vector(39 DOWNTO 0);
   TrigA    : IN std_logic_vector(15 DOWNTO 0);
   TrigB    : IN std_logic_vector(3 DOWNTO 0);
   TrigD    : IN std_logic_vector(7 DOWNTO 0);
   TrigS    : IN std_logic)
RETURN std_logic IS

   VARIABLE a : std_logic;
   VARIABLE d : std_logic;
   VARIABLE b : std_logic;
   VARIABLE TrigMatchSingle : std_logic;
BEGIN
   if ((trig(39) = '0') or (TrigS = '0')) then
      -- trigger disabled or no strobe
      TrigMatchSingle := '0';
   else
      if (trig(28) = '0') then
         a := '1';
      elsif (trig(15 DOWNTO 0) = TrigA(15 DOWNTO 0)) then
         a := '1';
      else
         a := '0';
      end if;

      if (trig(29) = '0') then
         b := '1';
      elsif (trig(19 DOWNTO 16) = TrigB(3 DOWNTO 0)) then
         b := '1';
      else
         b := '0';
      end if;

      if (trig(30) = '0') then
         d := '1';
      elsif (trig(27 DOWNTO 20) = TrigD(7 DOWNTO 0)) then
         d := '1';
      else
         d := '0';
      end if;

      TrigMatchSingle := (a and b) and d;
   end if;
   return (TrigMatchSingle);
end TrigMatchSingle;

function TrigMatchPair (
   trigx    : IN std_logic_vector(39 DOWNTO 0);
   trigy    : IN std_logic_vector(39 DOWNTO 0);
   TrigA    : IN std_logic_vector(15 DOWNTO 0);
   TrigB    : IN std_logic_vector(3 DOWNTO 0);
   TrigD    : IN std_logic_vector(7 DOWNTO 0);
   TrigS    : IN std_logic)
RETURN std_logic IS

   VARIABLE a : std_logic;
   VARIABLE d : std_logic;
   VARIABLE b : std_logic;
   VARIABLE TrigMatchPair : std_logic;
BEGIN

   if ((trigx(39) = '0') or (TrigS = '0')) then
      -- trigger disabled or no strobe
      TrigMatchPair := '0';
   else
      if (trigx(28) = '0') then
         a := '1';
      elsif ((trigx(15 DOWNTO 0) <= TrigA(15 DOWNTO 0)) and
      (TrigA(15 DOWNTO 0) <= trigy(15 DOWNTO 0))) then
         a := '1';
      else
         a := '0';
      end if;

      if (trigx(29) = '0') then
         b := '1';
      elsif (trigx(19 DOWNTO 16) = TrigB(3 DOWNTO 0)) then
         b := '1';
      else
         b := '0';
      end if;

      if (trigx(30) = '0') then
         d := '1';
      elsif (((trigx(27 DOWNTO 20) xor TrigD(7 DOWNTO 0)) and
      trigy(27 DOWNTO 20)) = "00000000") then
         d := '1';
      else
         d := '0';
      end if;

      TrigMatchPair := (a and b) and d;
   end if;
   return (TrigMatchPair);
end TrigMatchPair;

function MatchE (
   t0       : IN std_logic_vector(39 DOWNTO 0);
   t1       : IN std_logic_vector(39 DOWNTO 0);
   mempsrd  : IN std_logic;
   mempsack : IN std_logic;
   mempswr  : IN std_logic;
   memrd    : IN std_logic;
   memwr    : IN std_logic;
   ramoe    : IN std_logic;
   ramwe    : IN std_logic;
   sfroe    : IN std_logic;
   sfrwe    : IN std_logic;
   memaddr  : IN std_logic_vector(15 DOWNTO 0);
   ramaddr  : IN std_logic_vector (7 DOWNTO 0);
   sfraddr  : IN std_logic_vector (6 DOWNTO 0);
   memdatai : IN std_logic_vector (7 DOWNTO 0);
   memdatao : IN std_logic_vector (7 DOWNTO 0);
   ramdatai : IN std_logic_vector (7 DOWNTO 0);
   ramdatao : IN std_logic_vector (7 DOWNTO 0);
   sfrdatai : IN std_logic_vector (7 DOWNTO 0);
   sfrdatao : IN std_logic_vector (7 DOWNTO 0);
   membank  : IN std_logic_vector (3 DOWNTO 0))
RETURN std_logic IS

   VARIABLE MatchE : std_logic;
BEGIN

   if (t0(31) = '0') then
      MatchE := TrigMatchSingle(t0,
        TrigA(t0, memaddr, ramaddr, sfraddr),
        TrigB(t0, membank),
        TrigD(t0, memdatai, memdatao, ramdatai, ramdatao, sfrdatai, sfrdatao),
        TrigS(t0, mempsrd, mempsack, mempswr, memrd, memwr, ramoe, ramwe,
        sfroe, sfrwe));
   else
      MatchE := TrigMatchPair(t0, t1,
        TrigA(t0, memaddr, ramaddr, sfraddr),
        TrigB(t0, membank),
        TrigD(t0, memdatai, memdatao, ramdatai, ramdatao, sfrdatai, sfrdatao),
        TrigS(t0, mempsrd, mempsack, mempswr, memrd, memwr, ramoe, ramwe,
        sfroe, sfrwe));
   end if;
   return(MatchE);
end MatchE;

function MatchO (
   t0       : IN std_logic_vector(39 DOWNTO 0);
   t1       : IN std_logic_vector(39 DOWNTO 0);
   mempsrd  : IN std_logic;
   mempsack : IN std_logic;
   mempswr  : IN std_logic;
   memrd    : IN std_logic;
   memwr    : IN std_logic;
   ramoe    : IN std_logic;
   ramwe    : IN std_logic;
   sfroe    : IN std_logic;
   sfrwe    : IN std_logic;
   memaddr  : IN std_logic_vector(15 DOWNTO 0);
   ramaddr  : IN std_logic_vector (7 DOWNTO 0);
   sfraddr  : IN std_logic_vector (6 DOWNTO 0);
   memdatai : IN std_logic_vector (7 DOWNTO 0);
   memdatao : IN std_logic_vector (7 DOWNTO 0);
   ramdatai : IN std_logic_vector (7 DOWNTO 0);
   ramdatao : IN std_logic_vector (7 DOWNTO 0);
   sfrdatai : IN std_logic_vector (7 DOWNTO 0);
   sfrdatao : IN std_logic_vector (7 DOWNTO 0);
   membank  : IN std_logic_vector (3 DOWNTO 0))
RETURN std_logic IS

   VARIABLE MatchO : std_logic;
BEGIN

   if (t0(31) = '0') then
      MatchO := TrigMatchSingle(t1,
       TrigA(t1, memaddr, ramaddr, sfraddr),
       TrigB(t1, membank),
       TrigD(t1, memdatai, memdatao, ramdatai, ramdatao, sfrdatai, sfrdatao),
       TrigS(t1, mempsrd, mempsack, mempswr, memrd, memwr, ramoe, ramwe,
       sfroe, sfrwe));
   else
      MatchO := '0';
   end if;
   return(MatchO);
end MatchO;

BEGIN
   Trigger <= Trigger_xhdl;

                         -----------------------
                         --                   --
                         --  EXECUTABLE CODE  --
                         --                   --
                         -----------------------

   trig0(39 DOWNTO 0) <= Trigger_xhdl( 39 DOWNTO   0) when (TRIG_NUM > 0) else
                         (OTHERS=>'0');
   trig1(39 DOWNTO 0) <= Trigger_xhdl( 79 DOWNTO  40) when (TRIG_NUM > 1) else
                         (OTHERS=>'0');
   trig2(39 DOWNTO 0) <= Trigger_xhdl(119 DOWNTO  80) when (TRIG_NUM > 2) else
                         (OTHERS=>'0');
   trig3(39 DOWNTO 0) <= Trigger_xhdl(159 DOWNTO 120) when (TRIG_NUM > 3) else
                         (OTHERS=>'0');

   PROCESS (CLK, RESETB) BEGIN
      if (RESETB = '0') then
         TrigBreak0 <= '0';
         TrigBreak1 <= '0';
         TrigBreak2 <= '0';
         TrigBreak3 <= '0';
         TrigOut0 <= '0';
         TrigOut1 <= '0';
         TrigOut2 <= '0';
         TrigOut3 <= '0';
         TrigTon0 <= '0';
         TrigTon1 <= '0';
         TrigTon2 <= '0';
         TrigTon3 <= '0';
         TrigToff0 <= '0';
         TrigToff1 <= '0';
         TrigToff2 <= '0';
         TrigToff3 <= '0';
         if (TRIG_NUM > 0) then
            Trigger_xhdl(39 downto 0) <= (OTHERS=>'0');
         end if;
         if (TRIG_NUM > 1) then
            Trigger_xhdl(79 downto 40) <= (OTHERS=>'0');
         end if;
         if (TRIG_NUM > 2) then
            Trigger_xhdl(119 downto 80) <= (OTHERS=>'0');
         end if;
         if (TRIG_NUM > 3) then
            Trigger_xhdl(159 downto 120) <= (OTHERS=>'0');
         end if;
      elsif (CLK'EVENT and CLK='1') then
         --
         -- Process trigger comparisons
         --
         TrigBreak0 <= (not DebugReq) and (MatchE(trig0,trig1, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig0(32));
         TrigBreak1 <= (not DebugReq) and (MatchO(trig0,trig1, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig1(32));
         TrigBreak2 <= (not DebugReq) and (MatchE(trig2,trig3, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig2(32));
         TrigBreak3 <= (not DebugReq) and (MatchO(trig2,trig3, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig3(32));

         TrigOut0   <= (not DebugReq) and (MatchE(trig0,trig1, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig0(33));
         TrigOut1   <= (not DebugReq) and (MatchO(trig0,trig1, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig1(33));
         TrigOut2   <= (not DebugReq) and (MatchE(trig2,trig3, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig2(33));
         TrigOut3   <= (not DebugReq) and (MatchO(trig2,trig3, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig3(33));

         TrigTon0   <= (not DebugReq) and (MatchE(trig0,trig1, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig0(34));
         TrigTon1   <= (not DebugReq) and (MatchO(trig0,trig1, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig1(34));
         TrigTon2   <= (not DebugReq) and (MatchE(trig2,trig3, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig2(34));
         TrigTon3   <= (not DebugReq) and (MatchO(trig2,trig3, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig3(34));

         TrigToff0  <= (not DebugReq) and (MatchE(trig0,trig1, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig0(35));
         TrigToff1  <= (not DebugReq) and (MatchO(trig0,trig1, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig1(35));
         TrigToff2  <= (not DebugReq) and (MatchE(trig2,trig3, mempsrd,
                       mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                       sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                       ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                       trig2(35));
         TrigToff3  <= (not DebugReq) and (MatchO(trig2,trig3, mempsrd,
                        mempsack, mempswr, memrd, memwr, ramoe, ramwe, sfroe,
                        sfrwe, memaddr, ramaddr, sfraddr, memdatai, memdatao,
                        ramdatai, ramdatao, sfrdatai, sfrdatao, membank) and
                        trig3(35));

         --
         -- Handle JTAG data accesses
         --
         if ((JXDR = '1') and (IR(7 DOWNTO 5) = IRC_TRIGGER)) then
            case IR(1 DOWNTO 0) IS
               WHEN "00" =>
                  if (TRIG_NUM > 0) then
                     Trigger_xhdl( 39 DOWNTO   0) <= JDO(39 DOWNTO 0);
                  end if;
               WHEN "01" =>
                  if (TRIG_NUM > 1) then
                     Trigger_xhdl( 79 DOWNTO  40) <= JDO(39 DOWNTO 0);
                  end if;
               WHEN "10" =>
                  if (TRIG_NUM > 2) then
                     Trigger_xhdl(119 DOWNTO  80) <= JDO(39 DOWNTO 0);
                  end if;
               WHEN "11" =>
                   if (TRIG_NUM > 3) then
                     Trigger_xhdl(159 DOWNTO 120) <= JDO(39 DOWNTO 0);
                   end if;
               WHEN OTHERS => NULL;
            end case;
         end if;
      end if;
   end process;

TrigEnb0 <=
  (not memwr) when (trig0(38 DOWNTO 36) = TRIGMODE_XDATAWR) else
  (not memrd) when (trig0(38 DOWNTO 36) = TRIGMODE_XDATARD) else
  '1';

TrigEnb1 <=
  (not memwr) when (trig1(38 DOWNTO 36) = TRIGMODE_XDATAWR) else
  (not memrd) when (trig1(38 DOWNTO 36) = TRIGMODE_XDATARD) else
  '1';

TrigEnb2 <=
  (not memwr) when (trig2(38 DOWNTO 36) = TRIGMODE_XDATAWR) else
  (not memrd) when (trig2(38 DOWNTO 36) = TRIGMODE_XDATARD) else
  '1';

TrigEnb3 <=
  (not memwr) when (trig3(38 DOWNTO 36) = TRIGMODE_XDATAWR) else
  (not memrd) when (trig3(38 DOWNTO 36) = TRIGMODE_XDATARD) else
  '1';

TrigBreak <=
     (TrigBreak0 and TrigEnb0)
   or (TrigBreak1 and TrigEnb1)
   or (TrigBreak2 and TrigEnb2)
   or (TrigBreak3 and TrigEnb3);

TrigOut <=
     (TrigOut0 and TrigEnb0)
   or (TrigOut1 and TrigEnb1)
   or (TrigOut2 and TrigEnb2)
   or (TrigOut3 and TrigEnb3);

TrigTon <=
     (TrigTon0 and TrigEnb0)
   or (TrigTon1 and TrigEnb1)
   or (TrigTon2 and TrigEnb2)
   or (TrigTon3 and TrigEnb3);

TrigToff <=
     (TrigToff0 and TrigEnb0)
   or (TrigToff1 and TrigEnb1)
   or (TrigToff2 and TrigEnb2)
   or (TrigToff3 and TrigEnb3);

--
-- TrigXbrk is combinatorially generated
--
-- Execution breakpoint is generated when:
--   enable = 1
--   cycle  = coderd
--   action = none
--   address matches
--   bank not used or bank matches
--

TrigXbrk0 <=
   '1' when (trig0(39 DOWNTO 32) = "10000000")
   and (trig0(15 DOWNTO 0) = memaddr(15 DOWNTO 0))
   and ((trig0(29) = '0') or (trig0(19 DOWNTO 16) = membank(3 DOWNTO 0)))
   else '0';

TrigXbrk1 <=
   '1' when (trig1(39 DOWNTO 32) = "10000000")
   and (trig1(15 DOWNTO 0) = memaddr(15 DOWNTO 0))
   and ((trig1(29) = '0') or (trig1(19 DOWNTO 16) = membank(3 DOWNTO 0)))
   else '0';

TrigXbrk2 <=
   '1' when (trig2(39 DOWNTO 32) = "10000000")
   and (trig2(15 DOWNTO 0) = memaddr(15 DOWNTO 0))
   and ((trig2(29) = '0') or (trig2(19 DOWNTO 16) = membank(3 DOWNTO 0)))
   else '0';

TrigXbrk3 <=
   '1' when (trig3(39 DOWNTO 32) = "10000000")
   and (trig3(15 DOWNTO 0) = memaddr(15 DOWNTO 0))
   and ((trig3(29) = '0') or (trig3(19 DOWNTO 16) = membank(3 DOWNTO 0)))
   else '0';

TrigXbrk <=
   (not DebugReq) and mempsrd and mempsack
   and (TrigXbrk0 or TrigXbrk1 or TrigXbrk2 or TrigXbrk3);

end rtl;
