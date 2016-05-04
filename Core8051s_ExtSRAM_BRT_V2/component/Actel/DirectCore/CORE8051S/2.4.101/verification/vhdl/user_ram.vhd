-------------------------------------------------------------------------------
-- Copyright 2006 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- File:            user_ram.vhd
--
-- Description:     Synch. transparent RAM
--
--
-- Rev:             1.2  Dec06
--
-- Notes:
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;

entity USER_RAM is
generic (
	WIDTH	:	integer	:= 8;			-- data width
	DEPTH	:	integer	:= 256;			-- RAM depth
	ASIZE	:	integer	:= 8			-- address width
);
port (
		-- RAM write signals
		wclk	:	in		std_logic;  -- write clock input
		waddr	:	in		std_logic_vector(ASIZE-1 downto 0);
		wr		:	in		std_logic;	-- write enable
		din		:	in		std_logic_vector(WIDTH-1 downto 0);
		-- RAM read signals
		rclk	:	in		std_logic;  -- read clock input
		raddr	:	in		std_logic_vector(ASIZE-1 downto 0);
		rd		:	in		std_logic;	-- read enable
		dout	:	out		std_logic_vector(WIDTH-1 downto 0)
);

end USER_RAM;

architecture behv of USER_RAM is
	type memory is array (0 to DEPTH-1) of std_logic_vector(WIDTH-1 downto 0);
	signal store	:	memory;

-------------------------------------------------------------------------
-- main
-------------------------------------------------------------------------
begin

	---------------------------------------------------------------------
	wr_proc :
	---------------------------------------------------------------------
	process (wclk)
		variable	wa		: natural;
		variable	doutvar	: std_logic_vector(WIDTH-1 downto 0);
	begin
		wa	:= conv_integer(waddr);
		if wclk'event and wclk = '1' then
			if (wr = '1') then
				store(wa)	<= din;
			end if;
		end if;
	end process;

	---------------------------------------------------------------------
	rd_proc :
	---------------------------------------------------------------------
	process (rclk)
		variable	ra		: natural;
		variable	doutvar	: std_logic_vector(WIDTH-1 downto 0);
	begin
		ra	:= conv_integer(raddr);
		if rclk'event and rclk = '1' then
			if (rd = '1') then
				doutvar	:= store(ra);
			end if;
		end if;
		dout	<= doutvar;
	end process;

end behv;
