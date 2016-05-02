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
-- name:		pmu.vhd
-- function:	Power management unit (clock gating, etc.)
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
--				7/14/03 - TFB modified to preserve the nrsto register, since
--				synplicity is replicating it in APA ...
--				3/22/04 - TFB modified to bring out clkcpu_en and clkper_en
--				signals so that user may implement clock gating outside of
--				Core8051, if desired, also removed clkcpu and clkper, since
--				these would be created using 2 AND gates outside Core8051
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.Core8051_utility.all;

entity PMU is
port (
     -- Control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Internal reset input

    mempsrdrst   : in  STD_LOGIC;
    pmuintreq    : in  STD_LOGIC;  -- Interrupt request from RSTCTRL

    -- Power Management Unit outputs
	-- 05/19/03 TFB - redesigned for neg.polarity, this should be globally
	-- buffered outside this block, and fed back to the majority of logic
    nrsto        : out STD_LOGIC;  -- Internal reset driver

	-- 03/22/04 TFB - removed these 2 signals
--  clkcpu       : out STD_LOGIC;  -- CPU Clock
--  clkper       : out STD_LOGIC;  -- Peripheral Clock
	-- 03/22/04 TFB - added these 2 signals
    clkcpu_en    : out STD_LOGIC;  -- CPU Clock enable to external gate
    clkper_en    : out STD_LOGIC;  -- Peripheral Clock enable to external gate
    stoppmu      : out STD_LOGIC;  -- stop mode

    -- Special function register interface
    sfrdatai     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfraddr      : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe        : in  STD_LOGIC
);
-----------------------------------------------------
-- 7/14/03 TFB to preserve the nrsto register (not to replicate)
attribute syn_preserve : boolean;
attribute syn_preserve of nrsto : signal is true;
-----------------------------------------------------
end PMU;

--*******************************************************************--

architecture RTL of PMU is

      signal idle          : STD_LOGIC; -- Idle mode
      signal stop          : STD_LOGIC; -- Stop mode
      signal clkcpu_gate   : STD_LOGIC; -- CPU clock gate
      signal clkper_gate   : STD_LOGIC; -- Peripherals clock gate
-- 03/24/04 TFB - added these 2 signals
signal clkcpu_gate_pre		:STD_LOGIC;
signal clkper_gate_pre		:STD_LOGIC;


begin
	-- 03/22/04 TFB - added these 2 signals
-- 03/24/04 TFB
--    clkcpu_en <= clkcpu_gate;
--    clkper_en <= clkper_gate;
    clkcpu_en <= clkcpu_gate_pre;
    clkper_en <= clkper_gate_pre;


   --------------------------------------------------------------------
   -- Stop mode driver
   --------------------------------------------------------------------
      stoppmu <= stop;

   --------------------------------------------------------------------
   -- IDLE mode detector
   --------------------------------------------------------------------
      idle <= '1' when (sfraddr=PCON_ID and sfrwe='1' and sfrdatai(0)='1') or
              clkcpu_gate='0' else '0';

   --------------------------------------------------------------------
   -- STOP mode detector
   --------------------------------------------------------------------
      stop <= '1' when (sfraddr=PCON_ID and sfrwe='1' and sfrdatai(1)='1') or
              clkper_gate='0' else '0';

   --------------------------------------------------------------------
   -- Gated clocks control
   -- Active on falling edge of clock to avoid glitches on gate signals
   --------------------------------------------------------------------
--	process(clk,nrst)
--	begin
--		if nrst = '0' then
--			clkcpu_gate <= '1';
--			clkper_gate <= '1';
----		elsif clk'event and clk = '0' then
--		elsif clk'event and clk = '1' then
--			clkcpu_gate <= pmuintreq or not (idle or stop);
--			clkper_gate <= pmuintreq or not stop;
--		end if;
--	end process;

-- 03/24/04 TFB
	process(clk,nrst)
	begin
		if nrst = '0' then
			clkcpu_gate_pre	<= '1';
			clkper_gate_pre	<= '1';
		elsif clk'event and clk = '0' then
			clkcpu_gate_pre	<= pmuintreq or not (idle or stop);
			clkper_gate_pre	<= pmuintreq or not stop;
		end if;
	end process;
	process(clk,nrst)
	begin
		if nrst = '0' then
			clkcpu_gate <= '1';
			clkper_gate <= '1';
		elsif clk'event and clk = '1' then
			clkcpu_gate <= clkcpu_gate_pre;
			clkper_gate <= clkper_gate_pre;
		end if;
	end process;


--##########################################################################
-- 03/22/04 TFB - removed these 2 signals
--   --------------------------------------------------------------------
--   -- CPU gate clock
--   --------------------------------------------------------------------
--      clkcpu <= clk and clkcpu_gate;
--
--   --------------------------------------------------------------------
--   -- Peripherals gated clock
--   --------------------------------------------------------------------
--      clkper <= clk and clkper_gate;
--##########################################################################

   --------------------------------------------------------------------
   -- Reset synchronization
   -- Active on falling edge to enable resetting registers clocked by
   -- gated clocks
   --------------------------------------------------------------------
	-- TFB modified 5/6/03
	-- 05/19/03 TFB - redesigned for neg.polarity, this should be globally
	-- buffered outside this block, and fed back to the majority of logic
	process (clk)
	begin
		if clk'event and clk='0' then
			if mempsrdrst='1' then
				nrsto <= '0';
			else
				nrsto <= '1';
			end if;
		end if;
	end process;

end RTL;
