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
-- name:		isr.vhd
-- function:	Interrupt service routine logic
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
-- 				8/29/03 - TFB continued shrink effort ...
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use work.Core8051_utility.all;

entity ISR is
generic (
	-- set to 1 to enable ff optimizations ...
	EN_FF_OPTS		: integer := 0;
	-- set this to number of instruction decodes
	INSTR_DECNUM	: integer := 119
);
port (
    -- Control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Global reset input

    -- CPU input signals
    codefetche   : in  STD_LOGIC;  -- code fetch enable

    -- OCI input signals
    debugreq     : in  STD_LOGIC;
    a5instr      : in  STD_LOGIC;

    -- Timer 0 interrupt flags
    tf0          : in  STD_LOGIC;  -- Timer 0 overflow flag
    ie0          : in  STD_LOGIC;  -- Interrupt 0 edge detect

    -- Timer 1 interrupt flags
    tf1          : in  STD_LOGIC;  -- Timer 1 overflow flag
    ie1          : in  STD_LOGIC;  -- Interrupt 1 edge detect

    -- External interrupt pins
    int0         : in STD_LOGIC;  -- iex0
    int1         : in STD_LOGIC;  -- iex1
    int2         : in STD_LOGIC;  -- External Interrupt 2 pin
    int3         : in STD_LOGIC;  -- External Interrupt 3 pin
    int4         : in STD_LOGIC;  -- External Interrupt 4 pin
    int5         : in STD_LOGIC;  -- External Interrupt 5 pin
    int6         : in STD_LOGIC;  -- External Interrupt 6 pin
    int7         : in STD_LOGIC;  -- External Interrupt 6 pin

    -- Serial 0 interrupt flags
    ri0          : in STD_LOGIC;  -- Serial 0 receive flag
    ti0          : in STD_LOGIC;  -- Serial 0 transmit flag

    -- Interrupt return signal
    intret       : in STD_LOGIC;

    -- Interrupt acknowledge signal
    intack       : in STD_LOGIC;

    -- Interrupt priority registers
    intprior0    : out STD_LOGIC_VECTOR(1 downto 0);
    intprior1    : out STD_LOGIC_VECTOR(1 downto 0);

    -- Interrupt mask
    eal          : out STD_LOGIC;  -- Enable all interrupts
    eint0        : out STD_LOGIC;  -- external interrupt 0 mask
    eint1        : out STD_LOGIC;  -- external interrupt 1 mask

    -- Timer 0,1 acknowledge output
    t0ack        : out STD_LOGIC;  -- Timer 0 int. acknowledge
    t1ack        : out STD_LOGIC;  -- Timer 1 int. acknowledge

    -- External 0,1 acknowledge output
    int0ack      : out  STD_LOGIC;  -- External int0 acknowledge
    int1ack      : out  STD_LOGIC;  -- External int1 acknowledge

    -- Interrupt Service location
    intvect      : out STD_LOGIC_VECTOR(4 downto 0);

    -- Interrupt request signal
    intreq       : out STD_LOGIC;

    -- In Service register
    isreg        : out STD_LOGIC_VECTOR(3 downto 0);

    -- Special function register interface
    sfrdatai     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataisr   : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr      : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe        : in  STD_LOGIC;
	-------------------------------------------------------------------
	-- TFB added 9/4/03 for instruction decodes

	-- decode vector (bit-order reversed on purpose!)
    instr_dec		:	in	std_logic_vector(0 to INSTR_DECNUM-1);

	-- cycle decodes ...
    cyc3			:	in	std_logic;
    cyc4			:	in	std_logic
	-------------------------------------------------------------------
);
end ISR;

--*******************************************************************--

   architecture RTL of ISR is

      -- Interrupt Enable registers
      signal ien0       : STD_LOGIC_VECTOR(7 downto 0);
      signal ien1       : STD_LOGIC_VECTOR(7 downto 0);

      -- Interrupt Priority registers
      signal ip0        : STD_LOGIC_VECTOR(7 downto 0);
      signal ip1        : STD_LOGIC_VECTOR(7 downto 0);

      -- In Service register
      signal is_reg     : STD_LOGIC_VECTOR(3 downto 0);
      signal is_nxt     : STD_LOGIC_VECTOR(3 downto 0);

      -- Interrupt levels
      signal ie0_l3,    ie0_l2,    ie0_l1,    ie0_l0       : STD_LOGIC;
      signal iex0_l3,   iex0_l2,   iex0_l1,   iex0_l0      : STD_LOGIC;
      signal iex1_l3,   iex1_l2,   iex1_l1,   iex1_l0      : STD_LOGIC;
      signal tf0_l3,    tf0_l2,    tf0_l1,    tf0_l0       : STD_LOGIC;
      signal iex2_l3,   iex2_l2,   iex2_l1,   iex2_l0      : STD_LOGIC;
      signal ie1_l3,    ie1_l2,    ie1_l1,    ie1_l0       : STD_LOGIC;
      signal iex3_l3,   iex3_l2,   iex3_l1,   iex3_l0      : STD_LOGIC;
      signal tf1_l3,    tf1_l2,    tf1_l1,    tf1_l0       : STD_LOGIC;
      signal iex4_l3,   iex4_l2,   iex4_l1,   iex4_l0      : STD_LOGIC;
      signal riti0_l3,  riti0_l2,  riti0_l1,  riti0_l0     : STD_LOGIC;
      signal iex5_l3,   iex5_l2,   iex5_l1,   iex5_l0      : STD_LOGIC;
      signal iex6_l3,   iex6_l2,   iex6_l1,   iex6_l0      : STD_LOGIC;
      signal iex7_l3,   iex7_l2,   iex7_l1,   iex7_l0      : STD_LOGIC;
      signal l3, l2, l1, l0                                : STD_LOGIC;
      signal l3_reg, l2_reg, l1_reg                        : STD_LOGIC;

      -- Interrupt enable
      signal ie0_en     : STD_LOGIC;
      signal iex0_en   : STD_LOGIC;
      signal iex1_en    : STD_LOGIC;
      signal tf0_en     : STD_LOGIC;
      signal iex2_en    : STD_LOGIC;
      signal ie1_en     : STD_LOGIC;
      signal iex3_en    : STD_LOGIC;
      signal tf1_en     : STD_LOGIC;
      signal iex4_en    : STD_LOGIC;
      signal riti0_en   : STD_LOGIC;
      signal iex5_en    : STD_LOGIC;
      signal iex6_en  : STD_LOGIC;
      signal iex7_en    : STD_LOGIC;

      -- Interrupt vector
      signal ie0_p1     : STD_LOGIC;
      signal iex0_p1   : STD_LOGIC;
      signal iex1_p1    : STD_LOGIC;
      signal tf0_p1     : STD_LOGIC;
      signal iex2_p1    : STD_LOGIC;
      signal ie1_p1     : STD_LOGIC;
      signal iex3_p1    : STD_LOGIC;
      signal tf1_p1     : STD_LOGIC;
      signal iex4_p1    : STD_LOGIC;
      signal riti0_p1   : STD_LOGIC;
      signal iex5_p1    : STD_LOGIC;
      signal iex6_p1  : STD_LOGIC;
      signal iex7_p1    : STD_LOGIC;

      -- Compare Capture Enable register
      signal int0_ff  : STD_LOGIC;
      signal int1_ff  : STD_LOGIC;
      signal int2_ff   : STD_LOGIC;
      signal int3_ff   : STD_LOGIC;
      signal int4_ff   : STD_LOGIC;
      signal int5_ff   : STD_LOGIC;
      signal int6_ff   : STD_LOGIC;
      signal int7_ff   : STD_LOGIC;

      -- Combinational Interrupt Service location
      signal vect       : STD_LOGIC_VECTOR(4 downto 0);

      -- Registered Interrupt Service location
      signal int_vect   : STD_LOGIC_VECTOR(4 downto 0);

-- 8/29/03 TFB additions
signal ien0_wrclk		: std_logic;
signal ien1_wrclk		: std_logic;
signal ip0_wrclk		: std_logic;
signal ip1_wrclk		: std_logic;



   begin

   --------------------------------------------------------------------
   -- In Service register
   --------------------------------------------------------------------
      isreg  <= is_reg;

   --------------------------------------------------------------------
   -- Interrupt Priority registers
   --------------------------------------------------------------------
      --intprior0  <= ip0(2)&ip0(0);
      --intprior1  <= ip1(2)&ip1(0);
      --
      -- int0 priority is fixed at level 0
      -- int1 priority is fixed at level 1
      intprior0  <= "10";
      intprior1  <= "00";

   --------------------------------------------------------------------
   -- All interrupts enable register
   --------------------------------------------------------------------
      eal  <= ien0(7);

   --------------------------------------------------------------------
   -- INT0 enable register
   --------------------------------------------------------------------
      eint0  <= ien0(0);

   --------------------------------------------------------------------
   -- INT1 enable register
   --------------------------------------------------------------------
      eint1  <= ien0(2);

   --------------------------------------------------------------------
   -- Interrupt Enable register 0
   --------------------------------------------------------------------
	-- TFB modified 9/19/03
	ien0_en_ff_1:
	if EN_FF_OPTS=1 generate
		process(clk,nrst)
		begin
			if nrst='0' then
				ien0_wrclk	<= '0';
			elsif clk'event and clk='1' then
				if (sfrwe='1' and sfraddr=IEN0_ID) then
					ien0_wrclk	<= '1';
				else
					ien0_wrclk	<= '0';
				end if;
			end if;
		end process;
		process(ien0_wrclk,nrst)
		begin
			if nrst='0' then
				ien0	<= IEN0_RV;
			elsif ien0_wrclk'event and ien0_wrclk='1' then
				ien0	<= sfrdatai;
			end if;
		end process;
	end generate;

	-- TFB added 9/19/03
	ien0_en_ff_0:
	if EN_FF_OPTS=0 generate
		process(clk,nrst)
		begin
			if nrst = '0' then
				ien0 <= IEN0_RV;
			elsif clk'event and clk = '1' then
				if (sfrwe='1' and sfraddr=IEN0_ID) then
					ien0 <= sfrdatai;
				end if;
			end if;
		end process;
	end generate;

   --------------------------------------------------------------------
   -- Interrupt Enable register 1
   --------------------------------------------------------------------
	-- TFB modified 9/19/03
	ien1_en_ff_1:
	if EN_FF_OPTS=1 generate
		process(clk,nrst)
		begin
			if nrst='0' then
				ien1_wrclk	<= '0';
			elsif clk'event and clk='1' then
				if (sfrwe='1' and sfraddr=IEN1_ID) then
					ien1_wrclk	<= '1';
				else
					ien1_wrclk	<= '0';
				end if;
			end if;
		end process;
		process(ien1_wrclk,nrst)
		begin
			if nrst='0' then
				ien1	<= IEN1_RV;
			elsif ien1_wrclk'event and ien1_wrclk='1' then
				ien1	<= sfrdatai;
			end if;
		end process;
	end generate;

	-- TFB added 9/19/03
	ien1_en_ff_0:
	if EN_FF_OPTS=0 generate
		process(clk,nrst)
		begin
			if nrst = '0' then
				ien1  <= IEN1_RV;
			elsif clk'event and clk = '1' then
				if (sfrwe='1' and sfraddr=IEN1_ID) then
					ien1 <= sfrdatai;
				end if;
			end if;
		end process;
	end generate;

	--------------------------------------------------------------------
	-- Interrupt Priority register 0
	--------------------------------------------------------------------
	-- TFB modified 9/19/03
	ip0_en_ff_1:
	if EN_FF_OPTS=1 generate
		process(clk,nrst)
		begin
			if nrst='0' then
				ip0_wrclk	<= '0';
			elsif clk'event and clk='1' then
				if (sfrwe='1' and sfraddr=IP0_ID) then
					ip0_wrclk	<= '1';
				else
					ip0_wrclk	<= '0';
				end if;
			end if;
		end process;
		process(ip0_wrclk,nrst)
		begin
			if nrst='0' then
				ip0	<= IP0_RV;
			elsif ip0_wrclk'event and ip0_wrclk='1' then
				ip0	<= sfrdatai;
			end if;
		end process;
	end generate;

	-- TFB modified 9/19/03
	ip0_en_ff_0:
	if EN_FF_OPTS=0 generate
		process(clk,nrst)
		begin
			if nrst = '0' then
				ip0 <= IP0_RV;
			elsif clk'event and clk = '1' then
				if (sfrwe='1' and sfraddr=IP0_ID) then
					ip0 <= sfrdatai;
				end if;
			end if;
		end process;
	end generate;

   --------------------------------------------------------------------
   -- Interrupt Priority register 1
   --------------------------------------------------------------------
	-- TFB modified 9/19/03
	ip1_en_ff_1:
	if EN_FF_OPTS=1 generate
		process(clk,nrst)
		begin
			if nrst='0' then
				ip1_wrclk	<= '0';
			elsif clk'event and clk='1' then
				if (sfrwe='1' and sfraddr=IP1_ID) then
					ip1_wrclk	<= '1';
				else
					ip1_wrclk	<= '0';
				end if;
			end if;
		end process;
		process(ip1_wrclk,nrst)
		begin
			if nrst='0' then
				ip1 <= IP1_RV;
			elsif ip1_wrclk'event and ip1_wrclk='1' then
				ip1	<= sfrdatai;
			end if;
		end process;
	end generate;

	-- TFB modified 9/19/03
	ip1_en_ff_0:
	if EN_FF_OPTS=0 generate
		process(clk,nrst)
		begin
			if nrst = '0' then
				ip1 <= IP1_RV;
			elsif clk'event and clk = '1' then
				if (sfrwe='1' and sfraddr=IP1_ID) then
					ip1 <= sfrdatai;
				end if;
			end if;
		end process;
	end generate;

   --------------------------------------------------------------------
   -- sync interrupt signals
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			int0_ff  <= '0';
			int1_ff  <= '0';
			int2_ff   <= '0';
			int3_ff   <= '0';
			int4_ff   <= '0';
			int5_ff   <= '0';
			int6_ff   <= '0';
			int7_ff   <= '0';
		elsif clk'event and clk = '1' then
			int0_ff   <= int0;
			int1_ff   <= int1;
			int2_ff   <= int2;
			int3_ff   <= int3;
			int4_ff   <= int4;
			int5_ff   <= int5;
			int6_ff   <= int6;
			int7_ff   <= int7;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Mask and priority encode
   -- level0 - low priority
   -- level3 - high priority
   --------------------------------------------------------------------
      process(ie0_en, ie1_en)
      begin
         -------------------------------------
         -- External interrupt 0
         -------------------------------------
         ie0_l3 <= '0';     -- level3
         ie0_l2 <= '0';     -- level2
         ie0_l1 <= '0';     -- level1
         ie0_l0 <= ie0_en;  -- level0

         -------------------------------------
         -- Serial port 1 interrupt
         -------------------------------------
         iex0_l3 <= '0'; -- level3
         iex0_l2 <= '0'; -- level2
         iex0_l1 <= '0'; -- level1
         iex0_l0 <= '0'; -- level0

         -------------------------------------
         -- Aanalog - Digital converter interrupt
         -------------------------------------
         iex1_l3 <= '0'; -- level3
         iex1_l2 <= '0'; -- level2
         iex1_l1 <= '0'; -- level1
         iex1_l0 <= '0'; -- level0

         -------------------------------------
         -- Timer 0 overflow interrupt
         -------------------------------------
         tf0_l3 <= '0'; -- level3
         tf0_l2 <= '0'; -- level2
         tf0_l1 <= '0'; -- level1
         tf0_l0 <= '0'; -- level0

         -------------------------------------
         -- External interrupt 2
         -------------------------------------
         iex2_l3 <= '0'; -- level3
         iex2_l2 <= '0'; -- level2
         iex2_l1 <= '0'; -- level1
         iex2_l0 <= '0'; -- level0

         -------------------------------------
         -- External interrupt 1
         -------------------------------------
         ie1_l3 <= '0';     -- level3
         ie1_l2 <= '0';     -- level2
         ie1_l1 <= ie1_en;  -- level1
         ie1_l0 <= '0';     -- level0

         -------------------------------------
         -- External interrupt 3
         -------------------------------------
         iex3_l3 <= '0'; -- level3
         iex3_l2 <= '0'; -- level2
         iex3_l1 <= '0'; -- level1
         iex3_l0 <= '0'; -- level0

         -------------------------------------
         -- Timer 1 overflow interrupt
         -------------------------------------
         tf1_l3 <= '0'; -- level3
         tf1_l2 <= '0'; -- level2
         tf1_l1 <= '0'; -- level1
         tf1_l0 <= '0'; -- level0

         -------------------------------------
         -- External interrupt 4
         -------------------------------------
         iex4_l3 <= '0'; -- level3
         iex4_l2 <= '0'; -- level2
         iex4_l1 <= '0'; -- level1
         iex4_l0 <= '0'; -- level0

         -------------------------------------
         -- Serial port 0 interrupt
         -------------------------------------
         riti0_l3 <= '0'; -- level3
         riti0_l2 <= '0'; -- level2
         riti0_l1 <= '0'; -- level1
         riti0_l0 <= '0'; -- level0

         -------------------------------------
         -- External interrupt 5
         -------------------------------------
         iex5_l3 <= '0'; -- level3
         iex5_l2 <= '0'; -- level2
         iex5_l1 <= '0'; -- level1
         iex5_l0 <= '0'; -- level0

         -------------------------------------
         -- Timer 2 interrupt
         -------------------------------------
         iex6_l3 <= '0'; -- level3
         iex6_l2 <= '0'; -- level2
         iex6_l1 <= '0'; -- level1
         iex6_l0 <= '0'; -- level0

         -------------------------------------
         -- External interrupt 6
         -------------------------------------
         iex7_l3 <= '0'; -- level3
         iex7_l2 <= '0'; -- level2
         iex7_l1 <= '0'; -- level1
         iex7_l0 <= '0'; -- level0
      end process;

   --------------------------------------------------------------------
   -- priority encode
   --------------------------------------------------------------------
      process(ie0, ie1, ien0)
      begin
         -------------------------------------
         -- External interrupt 0
         -------------------------------------
         ie0_en <= ie0 and ien0(7) and ien0(0);    -- interrupt enable

         -------------------------------------
         -- External interrupt 0
         -------------------------------------
         iex0_en <= '0'; -- i.enable

         -------------------------------------
         -- External interrupt 1
         -------------------------------------
         iex1_en <= '0';     -- i. enable

         -------------------------------------
         -- External interrupt 2
         -------------------------------------
         iex2_en <= '0';     -- i. enable

         -------------------------------------
         -- External interrupt 3
         -------------------------------------
         iex3_en <= '0';     -- i. enable

         -------------------------------------
         -- External interrupt 4
         -------------------------------------
         iex4_en <= '0';     -- i. enable

         -------------------------------------
         -- External interrupt 5
         -------------------------------------
         iex5_en <= '0';     -- i. enable

         -------------------------------------
         -- External interrupt 6
         -------------------------------------
         iex6_en <= '0';

         -------------------------------------
         -- External interrupt 7
         -------------------------------------
         iex7_en <= '0';     -- i. enable

         -------------------------------------
         -- Timer 0 overflow interrupt
         -------------------------------------
         tf0_en <= '0';    -- interrupt enable

         -------------------------------------
         -- External interrupt 1
         -------------------------------------
         ie1_en <= ie1 and ien0(7) and ien0(2);    -- interrupt enable

         -------------------------------------
         -- Timer 1 overflow interrupt
         -------------------------------------
         tf1_en <= '0';    -- interrupt enable

         -------------------------------------
         -- Serial port 0 interrupt
         -------------------------------------
         riti0_en <= '0'; -- i.enable

      end process;

   --------------------------------------------------------------------
   -- Interrupt levels
   --------------------------------------------------------------------
      l3 <= (ie0_l3  or iex0_l3 or iex1_l3 or tf0_l3    or
             iex2_l3 or ie1_l3   or iex3_l3 or tf1_l3    or
             iex4_l3 or riti0_l3 or iex5_l3 or iex6_l3 or
             iex7_l3);

      l2 <= (ie0_l2  or iex0_l2 or iex1_l2 or tf0_l2    or
             iex2_l2 or ie1_l2   or iex3_l2 or tf1_l2    or
             iex4_l2 or riti0_l2 or iex5_l2 or iex6_l2 or
             iex7_l2);

      l1 <= (ie0_l1  or iex0_l1 or iex1_l1 or tf0_l1    or
             iex2_l1 or ie1_l1   or iex3_l1 or tf1_l1    or
             iex4_l1 or riti0_l1 or iex5_l1 or iex6_l1 or
             iex7_l1);

      l0 <= (ie0_l0  or iex0_l0 or iex1_l0 or tf0_l0    or
             iex2_l0 or ie1_l0   or iex3_l0 or tf1_l0    or
             iex4_l0 or riti0_l0 or iex5_l0 or iex6_l0 or
             iex7_l0);

   ---------------------------------------------------------------------
   -- Interrupt vector
   ---------------------------------------------------------------------
      ie0_p1 <= (
                   (ie0_l3) or
                   (ie0_l2 and not l3) or
                   (ie0_l1 and not l3 and not l2) or
                   (ie0_l0 and not l3 and not l2 and not l1)
                );

      iex0_p1 <= (
                     (iex0_l3) or
                     (iex0_l2 and not l3) or
                     (iex0_l1 and not l3 and not l2) or
                     (iex0_l0 and not l3 and not l2 and not l1)
                  );

      iex1_p1 <= (
                    (iex1_l3) or
                    (iex1_l2 and not l3) or
                    (iex1_l1 and not l3 and not l2) or
                    (iex1_l0 and not l3 and not l2 and not l1)
                 );

      tf0_p1 <= (
                   (tf0_l3) or
                   (tf0_l2 and not l3) or
                   (tf0_l1 and not l3 and not l2) or
                   (tf0_l0 and not l3 and not l2 and not l1)
                );

      iex2_p1 <= (
                    (iex2_l3) or
                    (iex2_l2 and not l3) or
                    (iex2_l1 and not l3 and not l2) or
                    (iex2_l0 and not l3 and not l2 and not l1)
                 );

      ie1_p1 <= (
                   (ie1_l3) or
                   (ie1_l2 and not l3) or
                   (ie1_l1 and not l3 and not l2) or
                   (ie1_l0 and not l3 and not l2 and not l1)
                );

      iex3_p1 <= (
                    (iex3_l3) or
                    (iex3_l2 and not l3) or
                    (iex3_l1 and not l3 and not l2) or
                    (iex3_l0 and not l3 and not l2 and not l1)
                 );

      tf1_p1 <= (
                   (tf1_l3) or
                   (tf1_l2 and not l3) or
                   (tf1_l1 and not l3 and not l2) or
                   (tf1_l0 and not l3 and not l2 and not l1)
                );

      iex4_p1 <= (
                    (iex4_l3) or
                    (iex4_l2 and not l3) or
                    (iex4_l1 and not l3 and not l2) or
                    (iex4_l0 and not l3 and not l2 and not l1)
                 );

      riti0_p1 <= (
                     (riti0_l3) or
                     (riti0_l2 and not l3) or
                     (riti0_l1 and not l3 and not l2) or
                     (riti0_l0 and not l3 and not l2 and not l1)
                  );

      iex5_p1 <= (
                    (iex5_l3) or
                    (iex5_l2 and not l3) or
                    (iex5_l1 and not l3 and not l2) or
                    (iex5_l0 and not l3 and not l2 and not l1)
                 );

      iex6_p1 <= (
                      (iex6_l3) or
                      (iex6_l2 and not l3) or
                      (iex6_l1 and not l3 and not l2) or
                      (iex6_l0 and not l3 and not l2 and not l1)
                   );

      iex7_p1 <= (
                    (iex7_l3) or
                    (iex7_l2 and not l3) or
                    (iex7_l1 and not l3 and not l2) or
                    (iex7_l0 and not l3 and not l2 and not l1)
                 );

   --------------------------------------------------------------------
   -- Vector locations
   -- Combinational section
   --------------------------------------------------------------------
      process(ie0_p1, iex0_p1, iex1_p1, tf0_p1, iex2_p1,
              ie1_p1, iex3_p1, tf1_p1, iex4_p1, riti0_p1,
              iex5_p1, iex6_p1, iex7_p1)
      begin
         if ie0_p1='1' then
            vect <= VECT_E0; --0003
         else
            if iex0_p1='1' then
               vect <= VECT_INT0A; --0083
            else
               if iex1_p1='1' then
                  vect <= VECT_INT1A; --0043
               else
                  if tf0_p1='1' then
                     vect <= VECT_TF0; --000B
                  else
                     if iex2_p1='1' then
                        vect <= VECT_INT2; --004B
                     else
                        if ie1_p1='1' then
                           vect <= VECT_E1; --0013
                        else
                           if iex3_p1='1' then
                              vect <= VECT_INT3; --0053
                           else
                              if tf1_p1='1' then
                                 vect <= VECT_TF1; --001B
                              else
                                 if iex4_p1='1' then
                                    vect <= VECT_INT4; --005B
                                 else
                                    if riti0_p1='1' then
                                       vect <= VECT_SER0; --0023
                                    else
                                       if iex5_p1='1' then
                                          vect <= VECT_INT5; --0063
                                       else
                                          if iex6_p1='1' then
                                             vect <= VECT_INT6; --002B
                                          else
                                             if iex7_p1='1' then
                                                vect <= VECT_INT7; --006B
                                             else
                                                vect <= "-----";
                                             end if;
                                          end if;
                                       end if;
                                    end if;
                                 end if;
                              end if;
                           end if;
                        end if;
                     end if;
                  end if;
               end if;
            end if;
         end if;
      end process;

   --------------------------------------------------------------------
   -- Vector locations
   -- Registered section
   ---------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			int_vect  <= VECT_RV;
		elsif clk'event and clk = '1' then
			if codefetche='1' then
				int_vect  <= vect;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Vector locations
   --------------------------------------------------------------------
      intvect <= int_vect;

   --------------------------------------------------------------------
   -- Interrupt Request Comparator
   --------------------------------------------------------------------
	intreq	<= '1' when
			(
				(l3='1' and is_reg(3)='0') or
				(l2='1' and not(is_reg(2)='1' or is_reg(3)='1')) or
				(l1='1' and not(is_reg(1)='1' or is_reg(2)='1' or is_reg(3)='1')
				) or
				(l0='1' and not(is_reg(0)='1' or is_reg(1)='1' or
				is_reg(2)='1' or is_reg(3)='1')
				)
			) and
			(debugreq='0' and a5instr='0') and
			not(
				instr_dec(62)='1' or
				(
					instr_dec(63)='1' and
					(sfraddr=IEN0_ID or sfraddr=IEN1_ID or sfraddr=IP0_ID or
					sfraddr=IP1_ID) and
					(cyc3='1' or cyc4='1')
				)
			) else '0';

	--------------------------------------------------------------------
	-- sync level registers
	--------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			l3_reg <= '0';
			l2_reg <= '0';
			l1_reg <= '0';
		elsif clk'event and clk = '1' then
			if codefetche='1' then
				l3_reg <= l3;
				l2_reg <= l2;
				l1_reg <= l1;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- In Service Register
   -- Combinational section
   --------------------------------------------------------------------
      process(is_reg, l3_reg, l2_reg, l1_reg, intret)
      begin
         if intret='1' then
            if is_reg(3)='1' then
               is_nxt <= '0' & is_reg(2 downto 0);
            else
               if is_reg(2)='1' then
                  is_nxt <= "00" & is_reg(1 downto 0);
               else
                  if is_reg(1)='1' then
                     is_nxt <= "000" & is_reg(0);
                  else
                     is_nxt <= "0000";
                  end if;
               end if;
            end if;
         else
            if l3_reg='1' then
               is_nxt <= '1' & is_reg(2 downto 0);
            else
               if l2_reg='1' then
                  is_nxt <= "01" & is_reg(1 downto 0);
               else
                  if l1_reg='1' then
                     is_nxt <= "001" & is_reg(0);
                  else
                     is_nxt <= "0001";
                  end if;
               end if;
            end if;
         end if;
      end process;

   --------------------------------------------------------------------
   -- In Service Register
   -- Registered section
   ---------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			is_reg <= IS_REG_RV;
		elsif clk'event and clk = '1' then
			if (intack='1' or intret='1') then
				is_reg <= is_nxt;
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Timer 0 acknowledge output
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			t0ack <= '0';
		elsif clk'event and clk = '1' then
			if (intack = '1') and (int_vect = VECT_TF0) then
				t0ack <= '1';
			else
				t0ack <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Timer 1 acknowledge output
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			t1ack <= '0';
		elsif clk'event and clk = '1' then
			if (intack = '1') and (int_vect = VECT_TF1) then
				t1ack <= '1';
			else
				t1ack <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- External interrupt 0 acknowledge output
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			int0ack <= '0';
		elsif clk'event and clk = '1' then
			if (intack = '1') and (int_vect = VECT_E0) then
				int0ack <= '1';
			else
				int0ack <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- External interrupt 1 acknowledge output
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			int1ack <= '0';
		elsif clk'event and clk = '1' then
			if (intack = '1') and (int_vect = VECT_E1) then
				int1ack <= '1';
			else
				int1ack <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Special Function registers read
   --------------------------------------------------------------------
      sfrdataisr <=
         ien0(7)&"0000"&ien0(2)&'0'&ien0(0) when sfraddr=IEN0_ID  else
         "00000000";


end RTL;
