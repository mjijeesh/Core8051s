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
-- name:		oci.vhd
-- function:	OCI (On-Chip Interface) debug support logic
--				(not the actual OCI, just hooks for OCI!)
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use work.Core8051_utility.all;

entity OCI is
port (
    -- Control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Internal reset input

    -- CPU input signals
    cycle        : in  INTEGER range 1 to 11;
    nrcycles     : in  INTEGER range 1 to 11;
    codefetche   : in  STD_LOGIC;
    datafetche   : in  STD_LOGIC;
    debugfetche  : in  STD_LOGIC;

    -- Clock control input signals
    mempsack     : in  STD_LOGIC;

    -- Memory control input signal
    flush        : in  STD_LOGIC;

    -- Program memory input
    memdatai     : in  STD_LOGIC_VECTOR(7 downto 0);

    -- OCI inputs
    debugreq     : in  STD_LOGIC; -- Debug Request
    debugstep    : in  STD_LOGIC; -- Debug Step

    -- OCI outputs
    debugstepff  : out STD_LOGIC; -- Debug Step FF
    debugack     : out STD_LOGIC; -- Debug Acknowledge
    a5instr      : out STD_LOGIC; -- 0xA5 instruction fetched
    fetch        : out STD_LOGIC
);
end OCI;

--*******************************************************************--

   architecture RTL of OCI is

      -- Internal control signals
      signal debug_ack       : STD_LOGIC;
      signal a5_instr        : STD_LOGIC;
      signal debugstep_ff    : STD_LOGIC;

   begin

   --------------------------------------------------------------------
   -- Debug Acknowledge driver
   --------------------------------------------------------------------
      debugack <= debug_ack;

   --------------------------------------------------------------------
   -- 0xA5 instruction detector driver
   --------------------------------------------------------------------
      a5instr <= a5_instr;

   --------------------------------------------------------------------
   -- fetch write
   --------------------------------------------------------------------
      fetch <=
         '1' when (
                     (codefetche='1'  or
                      debugfetche='1' or
                      datafetche='1'
                     ) and
                     (mempsack='1') and
                     (flush='0')
                  ) else
         '0';

   --------------------------------------------------------------------
   -- Debug Acknowledge
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			debug_ack  <= '0';
		elsif clk'event and clk = '1' then
			if (a5_instr='1' or debugreq='1') and
			(debug_ack='0' and cycle=nrcycles) then
				debug_ack <= '1';
			elsif (debugstep_ff='1') and mempsack='1' then
				debug_ack <= '0';
			-- if not debug request
			elsif (a5_instr='0') and (debugreq='0') then
				debug_ack <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- 0xA5 instruction detector
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			a5_instr <= '0';
		elsif clk'event and clk = '1' then
			if codefetche='1' and mempsack='1' and memdatai=UNKNOWN then
				a5_instr <= '1';
			elsif debugreq='1' then
				a5_instr <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- Debug Step FF
   --------------------------------------------------------------------
	process(clk,nrst)
	begin
		if nrst = '0' then
			debugstep_ff <= '0';
		elsif clk'event and clk = '1' then
			if debugstep='1' then
				debugstep_ff <= '1';
			elsif mempsack='1' then
				debugstep_ff <= '0';
			end if;
		end if;
	end process;

   --------------------------------------------------------------------
   -- debugstepff output
   --------------------------------------------------------------------
      debugstepff <= debugstep_ff;

end RTL;
