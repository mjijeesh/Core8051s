-------------------------------------------------------------------------------
-- Copyright (c) 2006 Actel Corporation.  All rights reserved.
--
-- Any use or redistribution in part or in whole must be handled in
-- accordance with the Actel license agreement and must be approved
-- in advance in writing.
--
-- name:		jtagpa3e.vhd
-- function:	OCI JTAG interface to external debugger for
--				Core8051 OCI (for use with ProASIC+ FPGA devices - uses UJTAG)
-- comments:	best viewed with tabstops set to "4"
-- history:		6/18/03 - TFB created
--				6/27/03 - Added AuxOut; JReset now uses sync reset so ff
--				doesn't use both set and clr.
--				7/10/03 - Added urstb reset output; fixed usage of TDI->utdi.
--				7/14/03 - modified to use generics rather than constants for
--				various parameters
--				7/14/03 - TFB modified to add attributes for Synplicity to
--				not insert pads for JTAG signals, they should directly connect
--				to the UJTAG component
--				7/21/03 - TFB modified to add attributes for setting high
--				fanout (75) for udrck signal from UJTAG, since this isn't
--				time critical (<=4MHZ)
--				7/22/03 - TFB modified to add BFR for udrck signal to connect
--				to spine in APA device ...
--				7/23/03 - TFB modified - BFR not needed took it out
--
-- Rev:			2.2 24Jan05 TFB - Production
--
-------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE WORK.jtagdef.ALL;
library Fusion;
entity jtagapa is
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
END jtagapa;

ARCHITECTURE rtl OF jtagapa IS

   COMPONENT UJTAG PORT (
      UTDO           :	in    STD_ULOGIC;
      TMS            :	in    STD_ULOGIC;
      TDI            :	in    STD_ULOGIC;
      TCK            :	in    STD_ULOGIC;
      TRSTB          :	in    STD_ULOGIC;
      UIREG0         :  out   STD_ULOGIC;
      UIREG1         :  out   STD_ULOGIC;
      UIREG2         :  out   STD_ULOGIC;
      UIREG3         :  out   STD_ULOGIC;
      UIREG4         :  out   STD_ULOGIC;
      UIREG5         :  out   STD_ULOGIC;
      UIREG6         :  out   STD_ULOGIC;
      UIREG7         :  out   STD_ULOGIC;
      UTDI           :  out   STD_ULOGIC;
      URSTB          :  out   STD_ULOGIC;
      UDRCK          :  out   STD_ULOGIC;
      UDRCAP         :  out   STD_ULOGIC;
      UDRSH          :  out   STD_ULOGIC;
      UDRUPD         :  out   STD_ULOGIC;
      TDO            :  out   STD_ULOGIC);
   END COMPONENT;
----------------------------------------------------------------------------
-- 07/14/03 - TFB added for Synplicity to not insert pads for JTAG signals,
-- I/O signals should directly connect to the UJTAG component, no pads needed.
--attribute syn_black_box : boolean;
--attribute syn_black_box of UJTAG : component is true;
--attribute black_box_pad_pin : string;
--attribute black_box_pad_pin of UJTAG : component is "TDI,TMS,TCK,TRSTB,TDO";
--
-- This doesn't seem to work ... created UJTAG black-box file for synplicity
-- to be read in with the rest of RTL code ...
----------------------------------------------------------------------------
   SIGNAL TDO_xhdl           : std_logic;
   SIGNAL IR_xhdl            : std_logic_vector(7 DOWNTO 0);
   SIGNAL JXIR_xhdl          : std_logic;
   SIGNAL JXDR_xhdl          : std_logic;
   SIGNAL JReset_xhdl        : std_logic;
   SIGNAL AuxOut_xhdl        : std_logic;
   SIGNAL urstb_xhdl         : std_logic;

                         -----------------------
                         --                   --
                         --  LOCAL VARIABLES  --
                         --                   --
                         -----------------------

	-- TAP shift register
   SIGNAL SR                 : std_logic_vector(39 DOWNTO 0);

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
   SIGNAL uireg                    : std_logic_vector(7 DOWNTO 0);
   SIGNAL udrupd                   : std_logic;
   SIGNAL udrck                    : std_logic;
---------------------------------------------------------------------------
-- 07/21/03 - TFB added to set high fanout (75) for udrck signal from UJTAG,
-- which should be assigned to global spine inside APA device
	attribute syn_maxfan			: integer;
	attribute syn_maxfan of udrck	: signal is 75;
---------------------------------------------------------------------------
-- 07/22/03 - TFB added
	attribute syn_keep				: boolean;
	attribute syn_keep of udrck		: signal is true;
---------------------------------------------------------------------------
   SIGNAL udrcap                   : std_logic;
   SIGNAL udrsh                    : std_logic;
   SIGNAL utdi                     : std_logic;
   SIGNAL utdo                     : std_logic;
   SIGNAL RESETB_occurred          : std_logic;
   SIGNAL syncReset                : std_logic;

BEGIN
   TDO <= TDO_xhdl;
   IR <= IR_xhdl;
   JXIR <= JXIR_xhdl;
   JXDR <= JXDR_xhdl;
   JReset <= JReset_xhdl;
   AuxOut <= AuxOut_xhdl;
   urstb <= urstb_xhdl;


                         -----------------------
                         --                   --
                         --  EXECUTABLE CODE  --
                         --                   --
                         -----------------------
xhdl_UJTAG : UJTAG PORT MAP (
      UTDO   => utdo,
      TMS    => TMS,
      TDI    => TDI,
      TCK    => TCK,
      TRSTB  => TRSTB,
      UIREG0 => uireg(0),
      UIREG1 => uireg(1),
      UIREG2 => uireg(2),
      UIREG3 => uireg(3),
      UIREG4 => uireg(4),
      UIREG5 => uireg(5),
      UIREG6 => uireg(6),
      UIREG7 => uireg(7),
      UTDI   => utdi,
      URSTB  => urstb_xhdl,
      UDRCK  => udrck,
      UDRCAP => udrcap,
      UDRSH  => udrsh,
      UDRUPD => udrupd,
      TDO    => TDO_xhdl
);

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
            -- low = probe not connected = JReset low
            -- high = probe connected = JReset high
            JReset_xhdl <= urstb_xhdl;
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

   PROCESS (IR_xhdl) BEGIN
      case IR_xhdl(7 DOWNTO 5) IS
         WHEN IRC_TRIGGER  => DRsize <= SZ_40;
         WHEN IRC_TRACE    => DRsize <= SZ_24;
         WHEN IRC_DEBUGCMD => DRsize <= SZ_24;
         WHEN IRC_CMD      => DRsize <= SZ_24;
         WHEN IRC_BYPASS   => DRsize <= SZ_1;
         WHEN OTHERS       => DRsize <= SZ_8;
      end case;
   end PROCESS;

   PROCESS (udrck, urstb_xhdl) BEGIN
      if (urstb_xhdl = '0') THEN
         SR <= (OTHERS => '0');
      elsif (udrck'EVENT AND udrck = '1') THEN
         if ((udrcap = '1') AND (uireg = UI_IRCODE)) THEN
            SR(7 DOWNTO 0) <= TrigBrkType & BreakInType & TraceRun &
                              TraceWrapped & DebugReq & DebugAck &
                              RESETB_occurred & '1';
         end if;
         if ((udrcap = '1') AND (uireg = UI_DRCODE)) THEN
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
                     SR(0) <= utdi;
                  WHEN OTHERS => NULL;
               end case;
         end if;

         if ((udrsh = '1') AND (uireg = UI_IRCODE)) THEN
            SR(39 downto 0) <= '0' & SR(39 downto 9) & utdi & SR(7 downto 1);
         end if;

         if ((udrsh = '1') AND (uireg = UI_DRCODE)) THEN
               case DRsize is
                  WHEN SZ_1  => SR(39 DOWNTO 0) <= utdi & SR(39 DOWNTO 2) &
                                                   utdi;
                  WHEN SZ_8  => SR(39 DOWNTO 0) <= utdi & SR(39 DOWNTO 9) &
                                                   utdi & SR( 7 DOWNTO 1);
                  WHEN SZ_16 => SR(39 DOWNTO 0) <= utdi & SR(39 DOWNTO 17) &
                                                   utdi & SR(15 DOWNTO 1);
                  WHEN SZ_24 => SR(39 DOWNTO 0) <= utdi & SR(39 DOWNTO 25) &
                                                   utdi & SR(23 DOWNTO 1);
                  WHEN SZ_40 => SR(39 DOWNTO 0) <= utdi & SR(39 DOWNTO 1);
                  WHEN OTHERS=> SR(39 DOWNTO 0) <= utdi & SR(39 DOWNTO 1);
               end case;
         end if;
     end if;
   end PROCESS;

   utdo <= SR(0);

   PROCESS (udrck, urstb_xhdl) BEGIN
      if (urstb_xhdl = '0') then
         XIR_TCK <= '0';
         XDR_TCK <= '0';
         IR_xhdl <= IR_IDCODE;
         AuxOut_xhdl <= '0';
      elsif (udrck'EVENT AND udrck = '1') then
         case uireg IS
            WHEN UI_IRCODE =>  XIR_TCK <= udrupd;
            WHEN UI_DRCODE =>  XIR_TCK <= '0';
            WHEN OTHERS =>     XIR_TCK <= '0';
         end case;
         case uireg IS
            WHEN UI_IRCODE =>  XDR_TCK <= '0';
            WHEN UI_DRCODE =>  XDR_TCK <= udrupd;
            WHEN OTHERS =>     XDR_TCK <= '0';
         end case;
         if ((udrupd = '1') AND (uireg = UI_IRCODE)) then
            IR_xhdl <= SR(7 downto 0);
            if ((SR(7 downto 5) = IRC_CMD) AND (SR(2) = '1')) then
               AuxOut_xhdl <= SR(1);
            end if;
         end if;
      end if;
   end PROCESS;

   JDO(39 DOWNTO 0) <= SR(39 DOWNTO 0);

end rtl;
