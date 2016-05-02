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
-- name:		jtagdef.vhd
-- function:	OCI JTAG definitions
-- comments:	best viewed with tabstops set to "4"
-- history:		6/18/03 - TFB created
--				6/27/03 - Added IR_AuxOn/IR_AuxOff to control AuxOut
--				optional signal.
-------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;

PACKAGE jtagdef IS

--
-- UJTAG IR codes
--
constant UI_IRCODE        :std_logic_vector:="00110000";
constant UI_DRCODE        :std_logic_vector:="00110001";

--
-- JTAG IR Classes
--
constant IRC_JTAG         :std_logic_vector:="000";
constant IRC_JTAG1        :std_logic_vector:="001";
constant IRC_TRACECMD     :std_logic_vector:="010";
constant IRC_DEBUGCMD     :std_logic_vector:="011";
constant IRC_CMD          :std_logic_vector:="100";
constant IRC_TRIGGER      :std_logic_vector:="101";
constant IRC_TRACE        :std_logic_vector:="110";
constant IRC_BYPASS       :std_logic_vector:="111";

--
-- JTAG IR instructions
--
constant IR_EXTEST        :std_logic_vector:="00000000";
constant IR_SAMPLE        :std_logic_vector:="00000001";
constant IR_IDCODE        :std_logic_vector:="00000010";

--
-- Trace commands
--   bit 2 indicates a trace state change
--   bit 1 is clear trace command
--   bit 0 is new trace run state
--
constant IR_TraceAddr     :std_logic_vector:="01000000";
constant IR_TraceStop     :std_logic_vector:="01000100";
constant IR_TraceStart    :std_logic_vector:="01000101";
constant IR_TraceClear    :std_logic_vector:="01000110";

--
-- Debug commands
--    bit 4 is new JReset state
--    bit 3 indicates a change to debugreq
--    bit 2 pulses DebugStep at Update-IR
--    bit 1 pulses DebugStep at Update-DR
--    bit 0 is new debugreq state (if bit 3 is set)
--
constant IR_DebugNop      :std_logic_vector:="01100000";
constant IR_ResetCPU      :std_logic_vector:="01111001";
constant IR_DebugReqOff   :std_logic_vector:="01101000";
constant IR_DebugReqOn    :std_logic_vector:="01101001";
constant IR_DebugStepUser :std_logic_vector:="01101101";
constant IR_DebugStepOCI  :std_logic_vector:="01101011";

constant IR_DebugPswrOn   :std_logic_vector:="10000001";
constant IR_DebugPswrOff  :std_logic_vector:="10000000";
constant IR_AuxOn         :std_logic_vector:="10000110";
constant IR_AuxOff        :std_logic_vector:="10000100";

-- 2 lsb's are the trigger id
constant IR_Trigger       :std_logic_vector:="10100000";

constant IR_GetPC         :std_logic_vector:="11010000";
constant IR_TraceData     :std_logic_vector:="11011000";

constant IR_BYPASS        :std_logic_vector:="11111111";

--
-- Trigger bus select codes
--
constant TRIGMODE_PROGRD  :std_logic_vector:="000";
constant TRIGMODE_PROGWR  :std_logic_vector:="001";
constant TRIGMODE_XDATARD :std_logic_vector:="010";
constant TRIGMODE_XDATAWR :std_logic_vector:="011";
constant TRIGMODE_IDATARD :std_logic_vector:="100";
constant TRIGMODE_IDATAWR :std_logic_vector:="101";
constant TRIGMODE_SFRRD   :std_logic_vector:="110";
constant TRIGMODE_SFRWR   :std_logic_vector:="111";

-- version number increments with each change
constant IDCODE_A8051        :std_logic_vector:="01100000";
constant IDCODE_A8051_UJTAG  :std_logic_vector:="01101000";

-- trap opcode
CONSTANT BKPT             :std_logic_vector:="10100101";

END jtagdef;


