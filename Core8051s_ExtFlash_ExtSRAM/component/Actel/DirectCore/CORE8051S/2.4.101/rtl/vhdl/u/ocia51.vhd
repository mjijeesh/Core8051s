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
-- name:		ocia51.vhd
-- function:	Top level module for the On-Chip Instrumentation (OCI) block
--				used with Core8051.
-- comments:	best viewed with tabstops set to "4"
-- history:		6/18/03 - TFB created
--				6/27/03 - Added optional AuxOut output signal.
--				7/10/03 - Added urstb async reset from jtag to trace module.
--				7/13/03 - TFB modified to use generics rather than constants
--				for various parameters
-------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE work.jtagdef.all;
entity ocia51 is
generic (
	-- set this to 1 to use ProASIC+ UJTAG macro for OCI logic
	USE_UJTAG	: integer := 0;
	-- TRACE_DEPTH
	-- no trace:  Set value to 0
	-- 256 depth: Set value to 8
	TRACE_DEPTH	: integer := 0;
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
   TCK                      : IN std_logic;
   TMS                      : IN std_logic;
   TDI                      : IN std_logic;
   TDO                      : OUT std_logic;
   TRSTB                    : IN std_logic;
   DebugReq                 : OUT std_logic;
   DebugAck                 : IN std_logic;
   DebugStep                : OUT std_logic;
   DebugProg                : OUT std_logic;
   DebugMemdataEnb          : OUT std_logic;
   DebugMemdatai            : OUT std_logic_vector(7 DOWNTO 0);
   DebugPswr                : OUT std_logic;
   TrigOut                  : OUT std_logic;
   JReset                   : OUT std_logic;
   -- Break bus
   BreakIn                  : IN std_logic;
   BreakOut                 : OUT std_logic;
   -- status from core
   acc                      : IN std_logic_vector(7 DOWNTO 0);
   fetch                    : IN std_logic;
   flush                    : IN std_logic;
   -- prog/xdata monitors
   memdatai                 : IN std_logic_vector(7 DOWNTO 0);
   memdatao                 : IN std_logic_vector(7 DOWNTO 0);
   memaddr                  : IN std_logic_vector(15 DOWNTO 0);
   membank                  : IN std_logic_vector(3 DOWNTO 0);
   mempswr                  : IN std_logic;
   mempsrd                  : IN std_logic;
   mempsack                 : IN std_logic;
   memwr                    : IN std_logic;
   memrd                    : IN std_logic;
   -- idata monitor
   ramdatai                 : IN std_logic_vector(7 DOWNTO 0);
   ramdatao                 : IN std_logic_vector(7 DOWNTO 0);
   ramaddr                  : IN std_logic_vector(7 DOWNTO 0);
   ramwe                    : IN std_logic;
   ramoe                    : IN std_logic;
   -- sfr monitor
   sfrdatai                 : IN std_logic_vector(7 DOWNTO 0);
   sfrdatao                 : IN std_logic_vector(7 DOWNTO 0);
   sfraddr                  : IN std_logic_vector(6 DOWNTO 0);
   sfrwe                    : IN std_logic;
   sfroe                    : IN std_logic;
   -- trace ram interface
   TraceA                   : OUT std_logic_vector(7 DOWNTO 0);
   TraceA_e                 : OUT std_logic_vector(7 DOWNTO 0);
   TraceDI                  : OUT std_logic_vector(19 DOWNTO 0);
   TraceDO                  : IN std_logic_vector(19 DOWNTO 0);
   TraceWr                  : OUT std_logic;
   TraceRd                  : OUT std_logic;
   -- Aux output
   AuxOut                   : OUT std_logic);
END ocia51;

ARCHITECTURE rtl of ocia51 IS

                         -----------------------
                         --                   --
                         -- EXTERNAL MODULES  --
                         --                   --
                         -----------------------
COMPONENT debug PORT (
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
END COMPONENT;

component jtag
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
END COMPONENT;

component jtagu
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
END COMPONENT;

component trace
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
END COMPONENT;

component trigger
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
end COMPONENT;

   SIGNAL TDO_xhdl             : std_logic;
   SIGNAL DebugReq_xhdl        : std_logic;
   SIGNAL DebugStep_xhdl       : std_logic;
   SIGNAL DebugProg_xhdl       : std_logic;
   SIGNAL DebugMemdataEnb_xhdl : std_logic;
   SIGNAL DebugMemdatai_xhdl   : std_logic_vector(7 DOWNTO 0);
   SIGNAL DebugPswr_xhdl       : std_logic;
   SIGNAL TrigOut_xhdl         : std_logic;
   SIGNAL JReset_xhdl          : std_logic;
   SIGNAL BreakOut_xhdl        : std_logic;
   SIGNAL TraceA_xhdl          : std_logic_vector(7 DOWNTO 0);
   SIGNAL TraceA_xhdl_e        : std_logic_vector(7 DOWNTO 0);
   SIGNAL TraceDI_xhdl         : std_logic_vector(19 DOWNTO 0);
   SIGNAL TraceWr_xhdl         : std_logic;

                         -----------------------
                         --                   --
                         --  LOCAL VARIABLES  --
                         --                   --
                         -----------------------

   SIGNAL IR                : std_logic_vector(7 DOWNTO 0);
   SIGNAL JDO               : std_logic_vector(39 DOWNTO 0);
   SIGNAL JXIR              : std_logic;
   SIGNAL JXDR              : std_logic;
   SIGNAL urstb             : std_logic;

   SIGNAL TraceRun          : std_logic;
   SIGNAL TraceWrapped      : std_logic;
   SIGNAL PCsample          : std_logic_vector(19 DOWNTO 0);
   SIGNAL Idcode            : std_logic_vector(7 DOWNTO 0);

   SIGNAL Trigger_xhdl      : std_logic_vector(159 DOWNTO 0);
   SIGNAL TrigTon           : std_logic;
   SIGNAL TrigToff          : std_logic;
   SIGNAL TrigBreak         : std_logic;
   SIGNAL TrigXbrk          : std_logic;
   SIGNAL TrigBrkType       : std_logic;
   SIGNAL BreakInType       : std_logic;

   SIGNAL fetch_real        : std_logic;
   SIGNAL flush_real        : std_logic;

   SIGNAL bypass            : std_logic_vector(19 DOWNTO 0);
   SIGNAL use_bypass_async  : std_logic;
   SIGNAL use_bypass        : std_logic;
   SIGNAL TraceDO_i         : std_logic_vector(19 DOWNTO 0);


BEGIN
   TDO <= TDO_xhdl;
   DebugReq <= DebugReq_xhdl;
   DebugStep <= DebugStep_xhdl;
   DebugProg <= DebugProg_xhdl;
   DebugMemdataEnb <= DebugMemdataEnb_xhdl;
   DebugMemdatai <= DebugMemdatai_xhdl;
   DebugPswr <= DebugPswr_xhdl;
   TrigOut <= TrigOut_xhdl;
   JReset <= JReset_xhdl;
   BreakOut <= BreakOut_xhdl;
   TraceA <= TraceA_xhdl;
   TraceA_e <= TraceA_xhdl_e;
   TraceDI <= TraceDI_xhdl;
   TraceWr <= TraceWr_xhdl;


    ---------------------------------------------------------------------
    -- Trace RAM bypass register
    ---------------------------------------------------------------------
    -- This is used to facilitate reading from a location which has just
    -- been written to.
    -- (Can't write to and read from a RAM location at the same time,
    -- remember we are using "early" address for read.)
    process (CLK, urstb)
    begin
        if (urstb = '0') then
            bypass <= "00000000000000000000" ;
        elsif (CLK'event and CLK = '1') then
            bypass <= TraceDI_xhdl ;
        end if;
    end process;

    -- use_bypass_async is asserted when the (early) read and write addresses
    -- to trace RAM are equal and a write is occurring.
    use_bypass_async <= '1' when ((TraceA_xhdl_e = TraceA_xhdl) and (TraceWr_xhdl = '1'))
                        else '0';

    -- registered version of use_bypass_async
    process (CLK, urstb)
    begin
        if (urstb = '0') then
            use_bypass <= '0' ;
        elsif (CLK'event and CLK = '1') then
            use_bypass <= use_bypass_async ;
        end if;
    end process;

    -- Trace RAM read data mux
    process (use_bypass, bypass, TraceDO)
    begin
        if (use_bypass = '1') then
            TraceDO_i <= bypass;
        else
            TraceDO_i <= TraceDO;
        end if;
    end process;

    -- Negate read enable to trace RAM if attempting to read and
    -- write same address (bypass register will be used in this case).
    process (use_bypass_async)
    begin
        if (use_bypass_async = '1') then
            TraceRd <= '0';
        else
            TraceRd <= '1';
        end if;
    end process;

                         -----------------------
                         --                   --
                         --  INSTANTIATIONS   --
                         --                   --
                         -----------------------

ujtag1: if USE_UJTAG=1 generate
	jtagu_inst : jtagu
	generic map (TRIG_NUM=>TRIG_NUM)
	port map (
		CLK => CLK,
		RESETB => RESETB,
		TCK => TCK,
		TMS => TMS,
		TDI => TDI,
		TDO => TDO_xhdl,
		TRSTB => TRSTB,
		urstb => urstb,
		IR => IR,
		JDO => JDO,
		JXIR => JXIR,
		JXDR => JXDR,
		JReset => JReset_xhdl,
		acc => acc,
		Trigger => Trigger_xhdl,
		TraceDO => TraceDO_i,
		TraceA => TraceA_xhdl,
		TraceRun => TraceRun,
		TraceWrapped => TraceWrapped,
		DebugReq => DebugReq_xhdl,
		DebugAck => DebugAck,
		DebugStep => DebugStep_xhdl,
		TrigBrkType => TrigBrkType,
		BreakInType => BreakInType,
		PCsample => PCsample,
		Idcode => Idcode,
		AuxOut => AuxOut
	);
	Idcode <= IDCODE_A8051_UJTAG;
end generate;

ujtag0: if USE_UJTAG=0 generate
	jtag_inst : jtag
	generic map (TRIG_NUM=>TRIG_NUM)
	port map (
		CLK => CLK,
		RESETB => RESETB,
		TCK => TCK,
		TMS => TMS,
		TDI => TDI,
		TDO => TDO_xhdl,
		TRSTB => TRSTB,
		urstb => urstb,
		IR => IR,
		JDO => JDO,
		JXIR => JXIR,
		JXDR => JXDR,
		JReset => JReset_xhdl,
		acc => acc,
		Trigger => Trigger_xhdl,
		TraceDO => TraceDO_i,
		TraceA => TraceA_xhdl,
		TraceRun => TraceRun,
		TraceWrapped => TraceWrapped,
		DebugReq => DebugReq_xhdl,
		DebugAck => DebugAck,
		DebugStep => DebugStep_xhdl,
		TrigBrkType => TrigBrkType,
		BreakInType => BreakInType,
		PCsample => PCsample,
		Idcode => Idcode,
		AuxOut => AuxOut
	);
	Idcode <= IDCODE_A8051;
end generate;

xhdl_debug : debug PORT MAP (
   CLK => CLK,
   RESETB => RESETB,
   IR => IR,
   JDO => JDO,
   JXIR => JXIR,
   JXDR => JXDR,
   DebugAck => DebugAck,
   DebugReq => DebugReq_xhdl,
   DebugStep => DebugStep_xhdl,
   DebugProg => DebugProg_xhdl,
   DebugMemdatai => DebugMemdatai_xhdl,
   DebugMemdataEnb => DebugMemdataEnb_xhdl,
   DebugPswr => DebugPswr_xhdl,
   fetch => fetch_real,
   flush => flush_real,
   TrigXbrk => TrigXbrk,
   TrigBreak => TrigBreak,
   TrigBrkType => TrigBrkType,
   BreakInType => BreakInType,
   BreakIn => BreakIn,
   BreakOut => BreakOut_xhdl
);

xhdl_trace : trace
generic map (
	TRACE_DEPTH	=> TRACE_DEPTH
)
port map (
   CLK => CLK,
   urstb => urstb,
   RESETB => RESETB,
   IR => IR,
   JDO => JDO,
   JXIR => JXIR,
   JXDR => JXDR,
   memaddr => memaddr,
   membank => membank,
   fetch => fetch_real,
   flush => flush_real,
   TraceA => TraceA_xhdl,
   TraceA_e => TraceA_xhdl_e,
   TraceDI => TraceDI_xhdl,
   TraceWr => TraceWr_xhdl,
   TraceRun => TraceRun,
   TraceWrapped => TraceWrapped,
   TrigTon => TrigTon,
   TrigToff => TrigToff,
   PCsample => PCsample
);

xhdl_trigger : trigger
generic map (
	TRIG_NUM	=> TRIG_NUM
)
port map (
   CLK => CLK,
   RESETB => RESETB,
   IR => IR,
   JDO => JDO,
   JXDR => JXDR,
   Trigger => Trigger_xhdl,
   DebugReq => DebugReq_xhdl,
   memaddr => memaddr,
   membank => membank,
   memdatai => memdatai,
   memdatao => memdatao,
   mempsrd => mempsrd,
   mempsack => mempsack,
   mempswr => mempswr,
   memrd => memrd,
   memwr => memwr,
   ramaddr => ramaddr,
   ramdatai => ramdatai,
   ramdatao => ramdatao,
   ramwe => ramwe,
   ramoe => ramoe,
   sfraddr => sfraddr,
   sfrdatai => sfrdatai,
   sfrdatao => sfrdatao,
   sfrwe => sfrwe,
   sfroe => sfroe,
   TrigTon => TrigTon,
   TrigToff => TrigToff,
   TrigBreak => TrigBreak,
   TrigOut => TrigOut_xhdl,
   TrigXbrk => TrigXbrk
);

fetch_real <= fetch and mempsack;
flush_real <= flush and mempsack;

end rtl;
