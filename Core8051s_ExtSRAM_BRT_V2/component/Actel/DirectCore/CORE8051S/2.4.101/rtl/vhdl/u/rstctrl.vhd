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
-- name:		rstctrl.vhd
-- function:	Reset control
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use work.Core8051_utility.all;

entity RSTCTRL is
  port (
    -- Control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Internal reset input
    nreset       : in  STD_LOGIC;  -- Hardware reset input
    WDOGRES      : in  STD_LOGIC;  -- Time-out signal from watchdog, active high
    WDOGRESN     : out STD_LOGIC;  -- Reset output to watchdog

    -- Interrupt requests
    intreq       : in  STD_LOGIC;  -- from ISR
    int0         : in  STD_LOGIC;  -- external interrupt 0
    int1         : in  STD_LOGIC;  -- external interrupt 1

    -- External interrupt type select
    it0          : in  STD_LOGIC;  -- interrupt 0 type select
    it1          : in  STD_LOGIC;  -- interrupt 1 type select

    -- In service register
    isreg        : in  STD_LOGIC_VECTOR(3 downto 0);

    -- Interrupt Priority registers
    intprior0    : in  STD_LOGIC_VECTOR(1 downto 0);
    intprior1    : in  STD_LOGIC_VECTOR(1 downto 0);

    -- Interrupt mask
    eal          : in  STD_LOGIC;  -- Enable all interrupts
    eint0        : in  STD_LOGIC;  -- external interrupt 0 mask
    eint1        : in  STD_LOGIC;  -- external interrupt 1 mask

    mempsrdrst   : out STD_LOGIC;  -- memory read signal reset
    pmuintreq    : out STD_LOGIC   -- Interrupt request to PMU
    );
end RSTCTRL;

--*******************************************************************--

architecture RTL of RSTCTRL is

      signal int_req_c     : STD_LOGIC; -- Interrupt request comb.
      signal int_req       : STD_LOGIC; -- Interrupt request sync.e
      signal reset_ff      : STD_LOGIC; -- external reset flip-flop
      signal rst_o         : STD_LOGIC; -- internal reset flip-flop
      signal WDOGRES_1     : STD_LOGIC;
      signal WDOGRES_2     : STD_LOGIC;

begin

   --------------------------------------------------------------------
   -- Program memory read signal reset
   --------------------------------------------------------------------
      mempsrdrst <= rst_o;

   --------------------------------------------------------------------
   -- Interrupt request to PMU
   --------------------------------------------------------------------
      pmuintreq <= int_req;

   --------------------------------------------------------------------
   -- Combinational interrupt request
   -- Low active
   --------------------------------------------------------------------
      int_req_c <=
         '1' when (
                     -- ISR intreq
                     (intreq='1') or
                     (eal='1' and
                         (
                            -- ext. int. 0
                            (int0='0' and eint0='1' and it0='0' and
                                (
                                    -- l3
                                   (intprior0(0)='1' and intprior1(0)='1' and
                                    isreg(3)='0') or
                                    -- l2
                                   (intprior0(0)='0' and intprior1(0)='1' and
                                    isreg(3)='0'     and isreg(2)='0') or
                                    -- l1
                                   (intprior0(0)='1' and intprior1(0)='0' and
                                    isreg(3)='0'     and isreg(2)='0'     and
                                    isreg(1)='0') or
                                    -- l0
                                   (intprior0(0)='0' and intprior1(0)='0' and
                                    isreg(3)='0'     and isreg(2)='0'     and
                                    isreg(1)='0'     and isreg(0)='0')
                                )
                            ) or
                            -- ext. int. 1
                            (int1='0' and eint1='1' and it1='0' and
                                (
                                    -- l3
                                   (intprior0(1)='1' and intprior1(1)='1' and
                                    isreg(3)='0') or
                                    -- l2
                                   (intprior0(1)='0' and intprior1(1)='1' and
                                    isreg(3)='0' and isreg(2)='0') or
                                    -- l1
                                   (intprior0(1)='1' and intprior1(1)='0' and
                                    isreg(3)='0' and isreg(2)='0' and
                                    isreg(1)='0') or
                                    -- l0
                                   (intprior0(1)='0' and intprior1(1)='0' and
                                    isreg(3)='0' and isreg(2)='0' and
                                    isreg(1)='0' and isreg(0)='0')
                                )
                            )
                         )
                     )
                  ) else
         '0';

   --------------------------------------------------------------------
   -- Interrupt request
   -- Synchronous section
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			int_req <= '0';
		elsif clk'event and clk = '1' then
			int_req <= int_req_c;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Internal synchronous reset generator
   --------------------------------------------------------------------
	-- 05/19/03 TFB - redesigned synchronizer for external hardware nreset
	process (clk)
	begin
		if clk'event and clk='1' then
            -- Combine watchdog reset with external/OCI reset
			reset_ff <= not (nreset and not(WDOGRES));
			if (nreset='0' or reset_ff='1') then
				rst_o  <= '1';
			else
				rst_o  <= '0';
			end if;
		end if;
	end process;

    --------------------------------------------------------------------
    -- Output reset signal to watchdog
    --
    -- Using a similar circuit to that used for rst_o to keep WDOGRESN
    -- in sync with main system reset signal.
    --
    --------------------------------------------------------------------
	process (clk)
    begin
		if clk'event and clk='1' then
            -- Want to assert WDOGRESN on external/OCI reset only
            WDOGRES_1 <= not (nreset);
            if (nreset = '0' or WDOGRES_1 = '1') then
                WDOGRES_2 <= '1';
            else
                WDOGRES_2 <= '0';
            end if;
        end if;
    end process;

    -- This final WDOGRESN register mirrors the nrsto register used
    -- for the main reset signal in the PMU block.
	process (clk)
    begin
		if clk'event and clk='0' then
            if (WDOGRES_2 = '1') then
                WDOGRESN <= '0';
            else
                WDOGRESN <= '1';
            end if;
        end if;
    end process;

end RTL;
