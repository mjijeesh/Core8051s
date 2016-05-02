-- ********************************************************************
-- Actel Corporation Proprietary and Confidential
--  Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	User Testbench for CoreAhbNvm
--
-- Revision Information:
-- Date     Description
-- 04Dec09		Production Release Version 1.4
--
-- SVN Revision Information:
-- SVN $Revision: 11362 $
-- SVN $Date: 2009-12-05 20:00:20 -0800 (Sat, 05 Dec 2009) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
-- 1. best viewed with tabstops set to "4"
-- 2. Most of the behavior is driven from the BFM script for the AHB-Lite
--    master.  Consult the Actel AMBA BFM documentation for more information.
--
-- History:		10/28/08  - TFB created
--
-- *********************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.coreparameters.all;
use work.components.all;
use work.bfm_package.all;

entity testbench is
generic (
-------------------------------------------------------------------------------
-- top-level parameters
-------------------------------------------------------------------------------

-- vector files for driving the AHB master BFM
-- NOTE: location of the following files can be overridden at run time
AHB_MASTER_VECTFILE			: string  := "coreahbnvm_usertb_ahb_master.vec";

-- AHB Master System Clock cycle (in ns)
AHB_MASTER_CLK_CYCLE		: integer := 30;

-- propagation delay in ns
TPD							: integer := 3
);
end entity testbench;

architecture testbench_arch of testbench is

-----------------------------------------------------------------------------
-- components
-----------------------------------------------------------------------------
-- from work.components ...


-- System signals
signal SYSRSTN_ahb			: std_logic;
signal SYSCLK_ahb			: std_logic;

-- AHB master bfm signals
signal HADDR_ahb_bfm_wide	: std_logic_vector(31 downto 0);
signal HCLK					: std_logic;
signal HRESETN				: std_logic;
signal HBURST_ahb_bfm		: std_logic_vector(2 downto 0);
signal HMASTLOCK_ahb_bfm	: std_logic;
signal HPROT_ahb_bfm		: std_logic_vector(3 downto 0);
signal HSIZE_ahb_bfm		: std_logic_vector(2 downto 0);
signal HTRANS				: std_logic_vector(1 downto 0);
signal HWRITE				: std_logic;
signal HWDATA				: std_logic_vector(31 downto 0);
signal HSEL_ahb_bfm_wide	: std_logic_vector(15 downto 0); 
signal HSEL					: std_logic; 
signal HREADYIN				: std_logic; -- driving from GP_OUT[0]

-- outputs from AHB bfm
signal GP_OUT_ahb_bfm		: std_logic_vector(31 downto 0);
signal FINISHED_ahb_bfm		: std_logic;
signal FAILED_ahb_bfm		: std_logic;

-- inputs to AHB bfm
signal HRDATA				: std_logic_vector(31 downto 0);
signal HRESP				: std_logic_vector(1 downto 0);
signal HREADY				: std_logic;

signal stopsim				: integer range 0 to 1 := 0;

-- misc. signals
signal GND256:				std_logic_vector(255 downto 0)	:=(others=>'0');
signal GND32:				std_logic_vector(31 downto 0)	:=(others=>'0');
signal GND1:				std_logic	:= '0';

begin

-- instantiate DUT(s)

u_coreahbnvm : CoreAhbNvm
generic map (
	NVM_INSTANCES		=> NVM_INSTANCES,
	MAP_NVM0_TO_BLOCK0	=> MAP_NVM0_TO_BLOCK0,
	THROUGHPUT_MODE		=> THROUGHPUT_MODE
)
port map (
	-- Inputs
	HCLK				=> HCLK,
	HRESETn				=> HRESETN,
	HWRITE				=> HWRITE,
	HSIZE				=> HSIZE_ahb_bfm,
	HTRANS				=> HTRANS,
	HWDATA				=> HWDATA,
	HREADYIN			=> HREADYIN,
	HSEL				=> HSEL,
	HADDR				=> HADDR_ahb_bfm_wide(20 downto 0),
	-- Outputs
	HRDATA				=> HRDATA,
	HRESP				=> HRESP,
	HREADY				=> HREADY
);

-- instantiate AHB-lite Master BFM to drive AHB slave port
u_ahb_master : BFM_AHBL
generic map (
	VECTFILE	=> AHB_MASTER_VECTFILE,
	TPD			=> TPD,
	-- passing testbench parameters to BFM ARGVALUE* parameters
	ARGVALUE0	=> NVM_INSTANCES,
	ARGVALUE1	=> MAP_NVM0_TO_BLOCK0,
	ARGVALUE2	=> THROUGHPUT_MODE
)
port map (
	SYSCLK		=> SYSCLK_ahb,
	SYSRSTN		=> SYSRSTN_ahb,
	HADDR		=> HADDR_ahb_bfm_wide,
	HCLK		=> HCLK,
	HRESETN		=> HRESETN,
	HBURST		=> HBURST_ahb_bfm,
	HMASTLOCK	=> HMASTLOCK_ahb_bfm,
	HPROT		=> HPROT_ahb_bfm,
	HSIZE		=> HSIZE_ahb_bfm,
	HTRANS		=> HTRANS,
	HWRITE		=> HWRITE,
	HWDATA		=> HWDATA,
	HRDATA		=> HRDATA,
	HREADY		=> HREADY,
	HRESP		=> HRESP(0),
	HSEL		=> HSEL_ahb_bfm_wide,
	INTERRUPT	=> GND256,
	GP_OUT		=> GP_OUT_ahb_bfm,
	GP_IN		=> GND32,
	EXT_WR		=> open,
	EXT_RD		=> open,
	EXT_ADDR	=> open,
	EXT_DATA	=> open,
	EXT_WAIT	=> GND1,
	FINISHED	=> FINISHED_ahb_bfm,
	FAILED		=> FAILED_ahb_bfm
);

HSEL		<= HSEL_ahb_bfm_wide(0);
HREADYIN	<= GP_OUT_ahb_bfm(0);

-- System Clocks
process 
begin
	SYSCLK_ahb	<= '0';
	wait for (AHB_MASTER_CLK_CYCLE / 2)*1 ns;
	SYSCLK_ahb	<= '1';
	wait for (AHB_MASTER_CLK_CYCLE / 2)*1 ns;
	if (stopsim = 1) then
		wait;
	end if;
end process;

-- Main simulation
process 
begin
	SYSRSTN_ahb	<= '0';
	wait for AHB_MASTER_CLK_CYCLE * 1 ns;
	wait for (TPD)*1 ns;
	SYSRSTN_ahb	<= '1';

	-- wait until BFM is finished
	while (not(FINISHED_ahb_bfm = '1')) loop
		wait on SYSCLK_ahb;
		wait for (TPD)*1 ns;
	end loop;
	wait for 1 ns;
	stopsim <= 1;
	wait;
end process;

end architecture testbench_arch;

