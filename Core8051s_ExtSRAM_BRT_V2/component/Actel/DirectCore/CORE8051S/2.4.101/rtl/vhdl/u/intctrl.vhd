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
-- name:		intctrl
-- function:	Contains interrupt control related logic.
--              This block is derived from (and is largely identical to) the
--              timer unit used in the original (non -s) 8051. We are only
--              making use of the int0 and int1 related functionality here;
--              other logic will be optimzed away during synthesis.
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."+";
use work.Core8051_utility.all;

entity INTCTRL is
generic (
	-- set to 1 to enable ff optimizations ...
	EN_FF_OPTS		: integer := 0
);
port (
    -- Control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Global reset input

    -- CPU input signals
    cycle        : in  INTEGER range 1 to 11;

    -- Timers inputs
    t0           : in  STD_LOGIC;  -- Timer 0 external input
    t1           : in  STD_LOGIC;  -- Timer 1 external input
    t0ack        : in  STD_LOGIC;  -- Timer 0 int. acknowledge
    t1ack        : in  STD_LOGIC;  -- Timer 1 int. acknowledge
    int0         : in  STD_LOGIC;  -- External interrupt 0 input
    int1         : in  STD_LOGIC;  -- External interrupt 1 input
    int0ack      : in  STD_LOGIC;  -- External int0 acknowledge
    int1ack      : in  STD_LOGIC;  -- External int1 acknowledge

    -- Timer interrupt flags
    tf0          : out STD_LOGIC;  -- Timer 0 overflow flag
    tf1          : out STD_LOGIC;  -- Timer 1 overflow flag
    ie0          : out STD_LOGIC;  -- Interrupt 0 edge detect
    ie1          : out STD_LOGIC;  -- Interrupt 1 edge detect
    it0          : out STD_LOGIC;  -- Interrupt 0 edge/low sel.
    it1          : out STD_LOGIC;  -- Interrupt 1 edge/low sel.

    -- Timer outputs
    t1ov         : out STD_LOGIC;  -- Timer 1 overflow output

    -- Special function register interface
    sfrdatai     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatatim   : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr      : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe        : in  STD_LOGIC;
	clk_ov12     : in  STD_LOGIC
-------------------------------------------------------------------
);
end INTCTRL;

--*******************************************************************--

   architecture RTL of INTCTRL is

      -- Timer/Counter registers
      signal tl0        : STD_LOGIC_VECTOR(7 downto 0);
      signal th0        : STD_LOGIC_VECTOR(7 downto 0);
      signal tl1        : STD_LOGIC_VECTOR(7 downto 0);
      signal th1        : STD_LOGIC_VECTOR(7 downto 0);

      -- Control registers
      signal tcon       : STD_LOGIC_VECTOR(7 downto 0);
      signal tmod       : STD_LOGIC_VECTOR(7 downto 0);

      -----------------------------------------------------------------
      -- Timer 0 control signals
      -----------------------------------------------------------------
      -- External input t0 falling edge detector
      signal t0_fall    : STD_LOGIC;  -- t0 input fall edge detector
      signal t0_ff0     : STD_LOGIC;  -- t0 input flip-flop
      signal t0_ff      : STD_LOGIC;  -- t0 input flip-flop

      -- External input int0 falling edge detector
      signal int0_fall  : STD_LOGIC;  -- int0 input fall edge detector
      signal int0_ff0   : STD_LOGIC;  -- int0 input flip-flop
      signal int0_ff    : STD_LOGIC;  -- int0 input flip-flop

      -- Timer 0 mode
      signal t0_mode    : STD_LOGIC_VECTOR(1 downto 0);

      -- Timer 0 signals
      signal t0_clk     : STD_LOGIC;  -- Timer 0 clock
      signal t0_open    : STD_LOGIC;  -- Timer 0 open
      signal tl0_clk    : STD_LOGIC;  -- Timer low 0 clock
      signal th0_clk    : STD_LOGIC;  -- Timer high 0 clock
      signal tl0_ov     : STD_LOGIC;  -- Timer low 0 overflow
      signal tl0_ov_ff  : STD_LOGIC;
      signal th0_ov     : STD_LOGIC;  -- Timer high 0 overflow
      signal th0_ov_ff  : STD_LOGIC;

      -----------------------------------------------------------------
      -- Timer 1 control signals
      -----------------------------------------------------------------
      -- External input t1 falling edge detector
      signal t1_fall    : STD_LOGIC;  -- t1 input fall edge detector
      signal t1_ff0     : STD_LOGIC;  -- t1 input flip-flop
      signal t1_ff      : STD_LOGIC;  -- t1 input flip-flop

      -- External input int1 falling edge detector
      signal int1_fall  : STD_LOGIC;  -- int1 input fall edge detector
      signal int1_ff0   : STD_LOGIC;  -- INT1 input flip-flop
      signal int1_ff    : STD_LOGIC;  -- INT1 input flip-flop

      -- Timer 1 mode
      signal t1_mode    : STD_LOGIC_VECTOR(1 downto 0);

      -- Timer 1 signals
      signal t1_clk     : STD_LOGIC;  -- Timer 1 clock
      signal t1_open    : STD_LOGIC;  -- Timer 1 open
      signal tl1_clk    : STD_LOGIC;  -- Timer low 1 clock
      signal th1_clk    : STD_LOGIC;  -- Timer high 1 clock
      signal tl1_ov     : STD_LOGIC;  -- Timer low 1 overflow
      signal tl1_ov_ff  : STD_LOGIC;
      signal th1_ov     : STD_LOGIC;  -- Timer high 1 overflow
      signal th1_ov_ff  : STD_LOGIC;

      signal tmod_wrclk	: STD_LOGIC;

begin

   --------------------------------------------------------------------
   -- Timer 0 overflow flag
   --   interrupt request flag
   --   high active output
   --   cleared by high on signal t0ack
   --------------------------------------------------------------------
      tf0 <= tcon(5);

   --------------------------------------------------------------------
   -- Timer 1 overflow flag
   --   interrupt request flag
   --   high active output
   --   cleared by high on signal t1ack
   --------------------------------------------------------------------
      tf1 <= tcon(7);

   --------------------------------------------------------------------
   -- Interrupt 0 edge detect
   --   interrupt request flag
   --   high active output
   --------------------------------------------------------------------
      ie0 <= tcon(1);

   --------------------------------------------------------------------
   -- Interrupt 0 edge/low level selector
   --------------------------------------------------------------------
      it0 <= tcon(0);

   --------------------------------------------------------------------
   -- Interrupt 1 edge/low level selector
   --------------------------------------------------------------------
      it1 <= tcon(2);

   --------------------------------------------------------------------
   -- Interrupt 1 edge detect
   --   interrupt request flag
   --   high active output
   --------------------------------------------------------------------
      ie1 <= tcon(3);

   --------------------------------------------------------------------
   -- Timer 1 overflow output
   --   output for serial interface
   --   high active output
   --   active during single clk period
   --------------------------------------------------------------------
      t1ov <= tl1_ov when t1_mode="10" else th1_ov;

   --------------------------------------------------------------------
   -- Timer 0 mode
   --------------------------------------------------------------------
      t0_mode <= tmod(1 downto 0);

   --------------------------------------------------------------------
   -- Timer 1 mode
   --------------------------------------------------------------------
      t1_mode <= tmod(5 downto 4);

	-----------------------
	-- tcon process
	-----------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			tcon <= TCON_RV;
		elsif clk'event and clk = '1' then
			if (sfrwe='1' and sfraddr=TCON_ID) then
				tcon <= sfrdatai;
			else
				----------------------------------
				-- Interrupt 0 edge/level detect
				----------------------------------
				-- Low level detect
				if tcon(0) = '0' then
					tcon(1) <= not int0;
				else
				-- clear int. request
					if int0ack = '1' then
						tcon(1) <= '0';
					else
						--Falling edge
						if int0_fall='1' or (int0_ff0='0' and int0_ff='1') then
							tcon(1) <= '1';
						end if;
					end if;
				end if;
				----------------------------------
				-- Interrupt 1 edge/level detect
				----------------------------------
				-- Low level detect
				if tcon(2) = '0' then
					tcon(3) <= not int1;
				else
					-- clear int. request
					if int1ack = '1' then
						tcon(3) <= '0';
					else
						--Falling edge
						if int1_fall='1' or (int1_ff0='0' and int1_ff='1') then
							tcon(3) <= '1';
						end if;
					end if;
				end if;
				----------------------------------
				-- Timer 0 interrupt acknowledge
				----------------------------------
				if t0ack='1' then
					tcon(5) <= '0';
				else
					----------------------------------
					-- Timer 0 overflow flag TF0
					----------------------------------
					if ((t0_mode="00" or t0_mode="01") and
					(th0_ov='1' or th0_ov_ff='1')) or
					((t0_mode="10" or t0_mode="11") and
					(tl0_ov='1' or tl0_ov_ff='1')) then
						tcon(5) <= '1';
					end if;
				end if;
				----------------------------------
				-- Timer 1 interrupt acknowledge
				----------------------------------
				if t1ack='1' then
					tcon(7) <= '0';
				else
					----------------------------------
					-- Timer 1 overflow flag TF1
					----------------------------------
					if ((t1_mode="00" or t1_mode="01") and
					(th1_ov='1' or th1_ov_ff='1')) or
					((t1_mode="10") and (tl1_ov='1' or tl1_ov_ff='1')) or
					((t0_mode="11") and (th0_ov='1' or th0_ov_ff='1')) then
						tcon(7) <= '1';
					end if;
				end if;
			end if;
		end if;
	end process;

	--------------------------------------------------------------------
	-- tmod proc
	--------------------------------------------------------------------
	-- TFB modified 9/19/03
	tmod_en_ff_1:
	if EN_FF_OPTS=1 generate
		process(clk,nrst)
		begin
			if nrst='0' then
				tmod_wrclk	<= '0';
			elsif clk'event and clk='1' then
				if (sfrwe='1' and sfraddr=TMOD_ID) then
					tmod_wrclk	<= '1';
				else
					tmod_wrclk	<= '0';
				end if;
			end if;
		end process;
		process(tmod_wrclk,nrst)
		begin
			if nrst='0' then
				tmod	<= TMOD_RV;
			elsif tmod_wrclk'event and tmod_wrclk='1' then
				tmod	<= sfrdatai;
			end if;
		end process;
	end generate;

	-- TFB added 9/19/03
	tmod_en_ff_0:
	if EN_FF_OPTS=0 generate
		process(clk,nrst)
		begin
			if nrst = '0' then
				tmod <= TMOD_RV;
			elsif clk'event and clk = '1' then
				if (sfrwe='1' and sfraddr=TMOD_ID) then
					tmod <= sfrdatai;
				end if;
			end if;
		end process;
	end generate;

	--------------------------------------------------------------------
	-- tl0,th0 proc
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			tl0 <= TL0_RV;
			th0 <= TH0_RV;
		elsif clk'event and clk = '1' then
			if (sfrwe='1' and sfraddr=TL0_ID) then
				if t0_mode="00" then
					tl0(7 downto 5) <= "000";
					tl0(4 downto 0) <= sfrdatai(4 downto 0);
				else
					tl0 <= sfrdatai;
				end if;
			else
				if (t0_mode="10" and tl0_ov='1') then
					-- Reload mode
					tl0 <= th0;
				else
					if tl0_clk='1' then
						if t0_mode="00" then
							tl0(4 downto 0) <= tl0(4 downto 0) + '1';
						else
							tl0 <= tl0 + '1';
						end if;
					end if;
				end if;
			end if;
			if (sfrwe='1' and sfraddr=TH0_ID) then
				th0 <= sfrdatai;
			else
				if th0_clk='1' then
					th0 <= th0 + '1';
				end if;
			end if;
		end if;
	end process;

	--------------------------------------------------------------------
	--   timer1 proc
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			tl1 <= TL1_RV;
			th1 <= TH1_RV;
		elsif clk'event and clk = '1' then
			if (sfrwe='1' and sfraddr=TL1_ID) then
				if t1_mode="00" then
					tl1(7 downto 5) <= "000";
					tl1(4 downto 0) <= sfrdatai(4 downto 0);
				else
					tl1 <= sfrdatai;
				end if;
			else
				if (t1_mode="10" and tl1_ov='1') then
					-- Reload mode
					tl1 <= th1;
				else
					if tl1_clk='1' then
						if t1_mode="00" then
							tl1(4 downto 0) <= tl1(4 downto 0) + '1';
						else
							tl1 <= tl1 + '1';
						end if;
					end if;
				end if;
			end if;
			if (sfrwe='1' and sfraddr=TH1_ID) then
				th1 <= sfrdatai;
			else
				if th1_clk='1' and not(t1_mode="10") then
					th1 <= th1 + '1';
				end if;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Timer 0 clock
   -- t0_clk is high active during single clk period
   --------------------------------------------------------------------
      t0_clk <= clk_ov12;
   --------------------------------------------------------------------
   -- Timer 1 clock
   -- t1_clk is high active during single clk period
   --------------------------------------------------------------------
      t1_clk <= clk_ov12;

	--------------------------------------------------------------------
	-- Falling edge detection on the external input t0
	-- t0_fall is high active during single clk period
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			t0_ff0  <= '0';
			t0_ff   <= '0';
		elsif clk'event and clk = '1' then
			t0_ff0 <= t0;
			t0_ff  <= t0_ff0;
		end if;
	end process;
	t0_fall <= t0_ff and not t0_ff0;

   --------------------------------------------------------------------
   -- Falling edge detection on the external input t1
   -- t1_fall is high active during single clk period
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			t1_ff0  <= '0';
			t1_ff   <= '0';
		elsif clk'event and clk = '1' then
			t1_ff0 <= t1;
			t1_ff  <= t1_ff0;
		end if;
	end process;
	t1_fall <= t1_ff and not t1_ff0;

   --------------------------------------------------------------------
   -- Falling edge or low level detection on the external input int0
   -- int0_fall is high active
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			int0_fall <= '0';
			int0_ff   <= '0';
			int0_ff0  <= '0';
		elsif clk'event and clk = '1' then
			if cycle=1 then
				int0_fall <= '0';
			elsif int0_ff0='0' and int0_ff='1' then
				int0_fall <= '1';
			end if;
			int0_ff0 <= int0;
			int0_ff  <= int0_ff0;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Falling edge or low level detection on the external input int1
   -- int1_fall is high active
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			int1_fall <= '0';
			int1_ff   <= '0';
			int1_ff0  <= '0';
		elsif clk'event and clk = '1' then
			if cycle=1 then
				int1_fall <= '0';
			elsif int1_ff0='0' and int1_ff='1' then
				int1_fall <= '1';
			end if;
			int1_ff0 <= int1;
			int1_ff  <= int1_ff0;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Timer 0 open gate control
   --------------------------------------------------------------------
      t0_open <= tcon(4) and (int0_ff0 or not tmod(3));
   --------------------------------------------------------------------
   -- Timer 1 open gate control
   --------------------------------------------------------------------
      t1_open <= tcon(6) and (int1_ff0 or not tmod(7));
   --------------------------------------------------------------------
   -- Timer 0 low ordered byte clock
   -- tl0_clk is high active during single clk period
   --------------------------------------------------------------------
      tl0_clk <=
         t0_clk  when (t0_open='1' and tmod(2)='0') else
         t0_fall when (t0_open='1' and tmod(2)='1') else
         '0';
   --------------------------------------------------------------------
   -- Timer 1 low ordered byte clock
   -- tl0_clk is high active during single clk period
   --------------------------------------------------------------------
      tl1_clk <=
         t1_clk  when (t1_open='1' and tmod(6)='0' and t0_mode/="11") else
         t1_fall when (t1_open='1' and tmod(6)='1' and t0_mode/="11") else
         '0';
   --------------------------------------------------------------------
   -- Timer 0 high ordered byte clock
   -- th0_clk is high active during single clk period
   --------------------------------------------------------------------
      th0_clk <=
         tl0_ov when (t0_mode="00" or t0_mode="01") else -- Modes 0 or 1
         t0_clk when (tcon(6)='1' and t0_mode="11") else -- Mode 3
         '0';
   --------------------------------------------------------------------
   -- Timer 1 high ordered byte clock
   -- th1_clk is high active during single clk period
   --------------------------------------------------------------------
      th1_clk <=
-- 5/9/08 TFB - fix for SARno76507
--         tl1_ov when (t0_mode="00" or t0_mode="01") else -- Modes 0 or 1
         tl1_ov when (t1_mode="00" or t1_mode="01") else -- Modes 0 or 1
         '0';
   --------------------------------------------------------------------
   -- Timer low 0 overflow
   -- tl0_ov is high active during single clk period
   --------------------------------------------------------------------
      tl0_ov <=
         tl0_clk when (
                         (tl0(4 downto 0)="11111" and t0_mode="00") or
                         (tl0(7 downto 0)="11111111")
                      ) else
         '0';

   --------------------------------------------------------------------
   -- Timer low 0 overflow flip-flop
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			tl0_ov_ff<= '0';
		elsif clk'event and clk = '1' then
			if tl0_ov='1' then
				tl0_ov_ff <= '1';
			elsif cycle=1 then
				tl0_ov_ff <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Timer low 1 overflow
   -- tl1_ov is high active during single clk period
   --------------------------------------------------------------------
      tl1_ov <=
         tl1_clk when (
                         (tl1(4 downto 0)="11111" and t1_mode="00") or
                         (tl1(7 downto 0)="11111111")
                      ) else
         '0';

   --------------------------------------------------------------------
   -- Timer low 1 overflow flip-flop
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			tl1_ov_ff<= '0';
		elsif clk'event and clk = '1' then
			if tl1_ov='1' then
				tl1_ov_ff <= '1';
			elsif cycle=1 then
				tl1_ov_ff <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Timer high 0 overflow
   -- th0_ov is high active during single clk period
   --------------------------------------------------------------------
      th0_ov <=
         th0_clk when th0(7 downto 0)="11111111" else
         '0';

   --------------------------------------------------------------------
   -- Timer high 0 overflow flip-flop
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			th0_ov_ff<= '0';
		elsif clk'event and clk = '1' then
			if th0_ov='1' then
				th0_ov_ff <= '1';
			elsif cycle=1 then
				th0_ov_ff <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Timer high 0 overflow
   -- th1_ov is high active during single clk period
   --------------------------------------------------------------------
      th1_ov <=
         th1_clk when th1(7 downto 0)="11111111" else
         '0';

   --------------------------------------------------------------------
   -- Timer high 1 overflow flip-flop
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			th1_ov_ff<= '0';
		elsif clk'event and clk = '1' then
			if th1_ov='1' then
				th1_ov_ff <= '1';
			elsif cycle=1 then
				th1_ov_ff <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Special Function registers read
   --------------------------------------------------------------------
      --sfrdatatim <=
      --   tl0  when sfraddr=TL0_ID  else
      --   th0  when sfraddr=TH0_ID  else
      --   tl1  when sfraddr=TL1_ID  else
      --   th1  when sfraddr=TH1_ID  else
      --   tmod when sfraddr=TMOD_ID else
      --   tcon when sfraddr=TCON_ID else
      --   "--------";

      -- Only the lower four bits of the tcon register are used. These bits
      -- are associated with external interrupts 0 and 1 (int0 and int1).
      sfrdatatim <=
         ("0000" & tcon(3 downto 0)) when sfraddr=TCON_ID else
         "00000000";

end RTL;
