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
-- name:		jtag.vhd
-- function:	OCI JTAG interface to external debugger (includes TAP) for
--				Core8051 OCI (for use with non-Flash FPGA devices)
-- comments:	best viewed with tabstops set to "4"
-- history:		6/18/03 - TFB created
--				6/27/03 - Added AuxOut; JReset now uses sync reset so ff
--				doesn't use both set and clr.
--				7/10/03 - Added urstb reset output following TRSTB.
--				7/14/03 - modified to use generics rather than constants for
--				various parameters
-------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE WORK.jtagdef.ALL;

entity jtag is
generic (
	-- TRIG_NUM
	-- no triggers:  set value to 0
	--  1 trigger:   set value to 1
	--  2 triggers:  set value to 2
	--  4 triggers:  set value to 4
	TRIG_NUM	: integer := 0
);
port (
   CLK               : IN std_logic;
   RESETB            : IN std_logic;
   TCK               : IN std_logic;
   TMS               : IN std_logic;
   TDI               : IN std_logic;
   TDO               : OUT std_logic;
   TRSTB             : IN std_logic;
   urstb             : OUT std_logic;
   IR                : OUT std_logic_vector(7 DOWNTO 0);
   JDO               : OUT std_logic_vector(39 DOWNTO 0);
   JXIR              : OUT std_logic;
   JXDR              : OUT std_logic;
   JReset            : OUT std_logic;
   acc               : IN std_logic_vector(7 DOWNTO 0);
   Trigger           : IN std_logic_vector(159 DOWNTO 0);
   TraceDO           : IN std_logic_vector(19 DOWNTO 0);
   TraceA            : IN std_logic_vector(7 DOWNTO 0);
   TraceRun          : IN std_logic;
   TraceWrapped      : IN std_logic;
   DebugReq          : IN std_logic;
   DebugAck          : IN std_logic;
   DebugStep         : IN std_logic;
   TrigBrkType       : IN std_logic;
   BreakInType       : IN std_logic;
   PCsample          : IN std_logic_vector(19 DOWNTO 0);
   Idcode            : IN std_logic_vector(7 DOWNTO 0);
   AuxOut            : OUT std_logic);
END jtag;

ARCHITECTURE rtl OF jtag IS

   SIGNAL TDO_xhdl           : std_logic;
   SIGNAL IR_xhdl            : std_logic_vector(7 DOWNTO 0);
   SIGNAL JXIR_xhdl          : std_logic;
   SIGNAL JXDR_xhdl          : std_logic;
   SIGNAL JReset_xhdl        : std_logic;
   SIGNAL AuxOut_xhdl        : std_logic;

                         -----------------------
                         --                   --
                         --  LOCAL VARIABLES  --
                         --                   --
                         -----------------------

	-- TAP controller state
   SIGNAL TAP                : std_logic_vector(3 DOWNTO 0);
	-- TAP shift register
   SIGNAL SR                 : std_logic_vector(39 DOWNTO 0);

   -- JTAG TAP controller states
   CONSTANT ST_RESET               :  std_logic_vector:="0000";
   CONSTANT ST_IDLE                :  std_logic_vector:="0001";
   CONSTANT ST_SELECTDR            :  std_logic_vector:="0010";
   CONSTANT ST_SELECTIR            :  std_logic_vector:="0011";
   CONSTANT ST_CAPTUREDR           :  std_logic_vector:="0100";
   CONSTANT ST_SHIFTDR             :  std_logic_vector:="0101";
   CONSTANT ST_EXIT1DR             :  std_logic_vector:="0110";
   CONSTANT ST_PAUSEDR             :  std_logic_vector:="0111";
   CONSTANT ST_EXIT2DR             :  std_logic_vector:="1000";
   CONSTANT ST_UPDATEDR            :  std_logic_vector:="1001";
   CONSTANT ST_CAPTUREIR           :  std_logic_vector:="1010";
   CONSTANT ST_SHIFTIR             :  std_logic_vector:="1011";
   CONSTANT ST_EXIT1IR             :  std_logic_vector:="1100";
   CONSTANT ST_PAUSEIR             :  std_logic_vector:="1101";
   CONSTANT ST_EXIT2IR             :  std_logic_vector:="1110";
   CONSTANT ST_UPDATEIR            :  std_logic_vector:="1111";

   CONSTANT SZ_1                   :  std_logic_vector:="000";
   CONSTANT SZ_8                   :  std_logic_vector:="001";
   CONSTANT SZ_16                  :  std_logic_vector:="010";
   CONSTANT SZ_24                  :  std_logic_vector:="100";
   CONSTANT SZ_40                  :  std_logic_vector:="111";

   SIGNAL DRsize                   : std_logic_vector(2 DOWNTO 0);

   SIGNAL XIR1                     : std_logic;
   SIGNAL XIR2                     : std_logic;
   SIGNAL XDR1                     : std_logic;
   SIGNAL XDR2                     : std_logic;
   SIGNAL XIR_TCK                  : std_logic;
   SIGNAL XDR_TCK                  : std_logic;
   SIGNAL RESETB_occurred          : std_logic;
   SIGNAL syncReset                : std_logic;

BEGIN
   TDO <= TDO_xhdl;
   IR <= IR_xhdl;
   JXIR <= JXIR_xhdl;
   JXDR <= JXDR_xhdl;
   JReset <= JReset_xhdl;
   AuxOut <= AuxOut_xhdl;


                         -----------------------
                         --                   --
                         --  EXECUTABLE CODE  --
                         --                   --
                         -----------------------

--
-- CLK domain
--
   PROCESS (CLK, RESETB) BEGIN
      if (RESETB = '0') then
         syncReset <= '1';
         JXIR_xhdl <= '0';
         XIR1 <= '0';
         XIR2 <= '0';
         JXDR_xhdl <= '0';
         XDR1 <= '0';
         XDR2 <= '0';
         RESETB_occurred <= '1';
      elsif (CLK'EVENT AND CLK = '1') THEN
         syncReset <= '0';
         XIR1 <= XIR_TCK;        -- synchronize TCK domain to CLK domain
         XIR2 <= XIR1;
         XDR1 <= XDR_TCK;        -- synchronize TCK domain to CLK domain
         XDR2 <= XDR1;
         if ((XIR1 = '1') AND (XIR2 = '0')) then
            JXIR_xhdl <= '1';        -- update-IR state reached
         else
            JXIR_xhdl <= '0';
         end if;
         if ((XDR1 = '1') AND (XDR2 = '0')) then
            JXDR_xhdl <= '1';        -- update-DR state reached
         else
            JXDR_xhdl <= '0';
         end if;

         if ((JXIR_xhdl = '1') AND (IR_xhdl(7 DOWNTO 5) = IRC_DEBUGCMD) AND
         (IR_xhdl(3) = '1')) then
            RESETB_occurred <= '0';
         end if;
      end if;
   end PROCESS;

   PROCESS (CLK) BEGIN
      if (CLK'EVENT AND CLK = '1') THEN
         if (syncReset = '1') then
            JReset_xhdl <= TRSTB;   -- low = probe not connected = JReset low
                                    -- high = probe connected = JReset high
         else
            if ((JXIR_xhdl = '1') AND (IR_xhdl(7 DOWNTO 5) = IRC_DEBUGCMD) AND
            (IR_xhdl(3) = '1')) then
            -- JReset on or off by command
               JReset_xhdl <= IR_xhdl(4);
            end if;
         end if;

      end if;
   end PROCESS;

   --
   -- TCK domain
   --

   PROCESS (TCK, TRSTB) BEGIN
      if (TRSTB = '0') then
         TAP <= ST_RESET;
      elsif (TCK'EVENT AND TCK = '1') THEN
         case TAP IS
            WHEN ST_RESET     =>
               if (TMS = '1') then
                  TAP <= ST_RESET;
               else
                  TAP <= ST_IDLE;
               end if;
            WHEN ST_IDLE      =>
               if (TMS = '1') then
                  TAP <= ST_SELECTDR;
               else
                  TAP <= ST_IDLE;
               end if;
            WHEN ST_SELECTDR  =>
               if (TMS = '1') then
                  TAP <= ST_SELECTIR;
               else
                  TAP <= ST_CAPTUREDR;
               end if;
            WHEN ST_SELECTIR  =>
               if (TMS = '1') then
                  TAP <= ST_RESET   ;
               else
                  TAP <= ST_CAPTUREIR;
               end if;
            WHEN ST_CAPTUREDR =>
               if (TMS = '1') then
                  TAP <= ST_EXIT1DR ;
               else
                  TAP <= ST_SHIFTDR;
               end if;
            WHEN ST_SHIFTDR   =>
               if (TMS = '1') then
                  TAP <= ST_EXIT1DR ;
               else
                  TAP <= ST_SHIFTDR;
               end if;
            WHEN ST_EXIT1DR   =>
               if (TMS = '1') then
                  TAP <= ST_UPDATEDR;
               else
                  TAP <= ST_PAUSEDR;
               end if;
            WHEN ST_PAUSEDR   =>
               if (TMS = '1') then
                  TAP <= ST_EXIT2DR ;
               else
                  TAP <= ST_PAUSEDR;
               end if;
            WHEN ST_EXIT2DR   =>
               if (TMS = '1') then
                  TAP <= ST_UPDATEDR;
               else
                  TAP <= ST_SHIFTDR;
               end if;
            WHEN ST_UPDATEDR  =>
               if (TMS = '1') then
                  TAP <= ST_SELECTDR;
               else
                  TAP <= ST_IDLE;
               end if;
            WHEN ST_CAPTUREIR =>
               if (TMS = '1') then
                  TAP <= ST_EXIT1IR ;
               else
                  TAP <= ST_SHIFTIR;
               end if;
            WHEN ST_SHIFTIR   =>
               if (TMS = '1') then
                  TAP <= ST_EXIT1IR ;
               else
                  TAP <= ST_SHIFTIR;
               end if;
            WHEN ST_EXIT1IR   =>
               if (TMS = '1') then
                  TAP <= ST_UPDATEIR;
               else
                  TAP <= ST_PAUSEIR;
               end if;
            WHEN ST_PAUSEIR   =>
               if (TMS = '1') then
                  TAP <= ST_EXIT2IR ;
               else
                  TAP <= ST_PAUSEIR;
               end if;
            WHEN ST_EXIT2IR   =>
               if (TMS = '1') then
                  TAP <= ST_UPDATEIR;
               else
                  TAP <= ST_SHIFTIR;
               end if;
            WHEN ST_UPDATEIR  =>
               if (TMS = '1') then
                  TAP <= ST_SELECTDR;
               else
                  TAP <= ST_IDLE;
               end if;
            WHEN OTHERS       =>
                  TAP <= ST_RESET;
         end case;
     end if;
   end PROCESS;

   PROCESS (TCK, TRSTB) BEGIN
      if (TRSTB = '0') THEN
         IR_xhdl <= IR_IDCODE;
         SR <= (OTHERS => '0');
         DRsize <= SZ_8;
      elsif (TCK'EVENT AND TCK = '1') THEN
         case TAP IS
            WHEN ST_RESET =>
               IR_xhdl <= IR_IDCODE;
            WHEN ST_CAPTUREIR =>
               SR(7 DOWNTO 0) <= TrigBrkType & BreakInType & TraceRun &
                                 TraceWrapped & DebugReq & DebugAck &
                                 RESETB_occurred & '1';
            WHEN ST_SHIFTIR =>
               SR(38 DOWNTO 0) <= SR(39 DOWNTO 9) & TDI & SR(7 DOWNTO 1);
            WHEN ST_EXIT1IR | ST_EXIT2IR =>
               if (TMS = '1') then
                  -- update at entry to UpdateIR
                  IR_xhdl(7 DOWNTO 0) <= SR(7 DOWNTO 0);
               end if;
            WHEN ST_UPDATEIR =>
               case SR(7 DOWNTO 5) IS
                  WHEN IRC_TRIGGER =>
                     DRsize <= SZ_40;
                  WHEN IRC_TRACE | IRC_DEBUGCMD | IRC_CMD =>
                     DRsize <= SZ_24;
                  WHEN IRC_BYPASS =>
                     DRsize <= SZ_1;
                  WHEN OTHERS =>
                     DRsize <= SZ_8;
               end case;
            WHEN ST_CAPTUREDR =>
               case IR_xhdl(7 DOWNTO 5) IS
                  WHEN IRC_JTAG | IRC_JTAG1 =>
                     SR(7 DOWNTO 0) <= Idcode;
                  WHEN IRC_TRACECMD =>
                     SR(7 DOWNTO 0) <= TraceA(7 DOWNTO 0);
                  WHEN IRC_CMD | IRC_DEBUGCMD =>
                     SR(23 DOWNTO 0) <= "00000000000000" & DebugStep &
                                        not DebugAck & acc(7 DOWNTO 0);
                  WHEN IRC_TRIGGER =>
                     case IR_xhdl(1 DOWNTO 0) IS
                        WHEN "00" =>
                           if (TRIG_NUM > 0) then
                              SR(39 DOWNTO 0) <= Trigger( 39 DOWNTO   0);
                           else
                              SR(39 DOWNTO 0) <= (OTHERS=>'0');
                           end if;
                        WHEN "01" =>
                           if (TRIG_NUM > 1) then
                              SR(39 DOWNTO 0) <= Trigger( 79 DOWNTO  40);
                           else
                              SR(39 DOWNTO 0) <= (OTHERS=>'0');
                           end if;
                        WHEN "10" =>
                           if (TRIG_NUM > 2) then
                              SR(39 DOWNTO 0) <= Trigger(119 DOWNTO  80);
                           else
                              SR(39 DOWNTO 0) <= (OTHERS=>'0');
                           end if;
                        WHEN "11" =>
                           if (TRIG_NUM > 3) then
                              SR(39 DOWNTO 0) <= Trigger(159 DOWNTO 120);
                           else
                              SR(39 DOWNTO 0) <= (OTHERS=>'0');
                           end if;
                        WHEN OTHERS => NULL;
                     end case;
                  WHEN IRC_TRACE =>
                     if (IR_xhdl(3) = '1') then
                        SR(23 DOWNTO 0) <= "0000" & TraceDO(19 DOWNTO 0);
                     else
                        SR(23 DOWNTO 0) <= "0000" & PCsample(19 DOWNTO 0);
                     end if;
                  WHEN IRC_BYPASS =>
                     SR(0) <= TDI;
                  WHEN OTHERS => NULL;
               end case;
            WHEN ST_SHIFTDR =>
               case DRsize is
                  WHEN SZ_1  => SR(39 DOWNTO 0) <= TDI & SR(39 DOWNTO 2) &
                                                   TDI;
                  WHEN SZ_8  => SR(39 DOWNTO 0) <= TDI & SR(39 DOWNTO 9) &
                                                   TDI & SR( 7 DOWNTO 1);
                  WHEN SZ_16 => SR(39 DOWNTO 0) <= TDI & SR(39 DOWNTO 17) &
                                                   TDI & SR(15 DOWNTO 1);
                  WHEN SZ_24 => SR(39 DOWNTO 0) <= TDI & SR(39 DOWNTO 25) &
                                                   TDI & SR(23 DOWNTO 1);
                  WHEN SZ_40 => SR(39 DOWNTO 0) <= TDI & SR(39 DOWNTO 1);
                  WHEN OTHERS=> SR(39 DOWNTO 0) <= TDI & SR(39 DOWNTO 1);
               end case;
            WHEN OTHERS => NULL;
         end case;
      end if;
   end PROCESS;

   PROCESS (TCK, TRSTB) BEGIN
      if (TRSTB = '0') then
         AuxOut_xhdl <= '0';
      elsif (TCK'EVENT AND TCK = '1') then
         if ((TAP = ST_UPDATEIR) AND (IR_xhdl(7 DOWNTO 5) = IRC_CMD) AND
         (IR_xhdl(2) = '1')) then
            AuxOut_xhdl <= IR_xhdl(1);
         end if;
      end if;
   end PROCESS;


   PROCESS (TCK, TRSTB) BEGIN
      if (TRSTB = '0') then
         TDO_xhdl <= '0';
         XIR_TCK <= '0';
         XDR_TCK <= '0';
      elsif (TCK'EVENT AND TCK = '0') then
         TDO_xhdl <= SR(0);
         case TAP IS
            WHEN ST_UPDATEIR =>  XIR_TCK <= '1';
            WHEN ST_UPDATEDR =>  XIR_TCK <= '0';
            WHEN OTHERS =>       XIR_TCK <= '0';
         end case;
         case TAP IS
            WHEN ST_UPDATEIR =>  XDR_TCK <= '0';
            WHEN ST_UPDATEDR =>  XDR_TCK <= '1';
            WHEN OTHERS =>       XDR_TCK <= '0';
         end case;
      end if;
   end PROCESS;

   JDO(39 DOWNTO 0) <= SR(39 DOWNTO 0);
   urstb <= TRSTB;

end rtl;
