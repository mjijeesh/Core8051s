-------------------------------------------------------------------------------
-- Copyright (c) 2006 Actel Corporation.  All rights reserved.
--
-- Any use or redistribution in part or in whole must be handled in
-- accordance with the Actel license agreement and must be approved
-- in advance in writing.
--
-- name:		core8051_globs_pa3e.vhd
-- function:	Core8051 global buffer instantiations (PA3-specific)
-- comments:	best viewed with tabstops set to "4"
-- history:		5/27/03 - TFB created
--				6/11/03 - TFB added nrst_nc bidir port to be consistent with
--				SX-A/SX-S version
--				11/20/03 - TFB using BFR now, instead of GLINT for buffering
--				gated clocks clkperg and clkcpug, in case user wants to assign
--				these clocks to spines
--
-- Rev:			2.2 24Jan05 TFB - Production
--
-------------------------------------------------------------------------------

library ieee, Fusion;
use ieee.std_logic_1164.all;

entity CORE8051_GLOBS is
generic(
	-- set this to 1 to instantiate OCI logic
	USE_OCI			: integer := 0
);
  port (
    nrst         : in  std_logic;  -- Internal reset input
    nrstg        : out std_logic;  -- global buffered nrst
    nrst_nc      : inout std_logic;  -- Non-connected bidir signal at top-level
    clk          : in  std_logic;  -- clock input (from pad)
    clkg       	 : out std_logic;  -- global buffered clk
    clkcpu       : in  std_logic;  -- CPU clock input
    clkcpug      : out std_logic;  -- global buffered clkcpu
    clkper       : in  std_logic;  -- Peripheral clock input
    clkperg      : out std_logic;  -- global buffered clkper
    TCK          : in  std_logic;  -- JTAG test clock
    TCKg         : out std_logic  -- global buffered TCK
);

---------------------------------------------------------------------------

end CORE8051_GLOBS;

--*******************************************************************--

architecture STR of CORE8051_GLOBS is

-----------------------------------------------------------------------
-- technology specific components
-----------------------------------------------------------------------
--component GLINT port (
--A	:	in	std_logic;
--GL	:	out	std_logic
--);
--end component;

component BFR port (
A : in std_logic;
Y : out std_logic
);
end component;

-----------------------------------------------------------------------

begin

-- nrst global buffer
-- 5/27/03 modified to not make this a global - can fix later with spines
--nrst_gb: GLINT port map (
--A	=> nrst,
--GL	=> nrstg
--);
nrstg <= nrst;

-- 6/11/03 - TFB
nrst_nc <= nrst;


-- clk global buffer (may need to use GL33 instead ...)
-- 5/27/03 modified to not make this a global - synplicity instantiates GL33
-- at top-level anyway
--clk_gb: GLINT port map (
--A	=> clk,
--GL	=> clkg
--);
clkg <= clk;

-- 11/20/03 - using BFR now, instead of GLINT for buffering
-- clkcpu global buffer
--clkcpu_gb: GLINT port map (
--A	=> clkcpu,
--GL	=> clkcpug
--);

--clkcpu_gb: BFR port map (
--A	=> clkcpu,
--Y	=> clkcpug
--);

clkcpug <= clkcpu;

-- 11/20/03 - using BFR now, instead of GLINT for buffering
-- clkper global buffer
--clkper_gb: GLINT port map (
--A	=> clkper,
--GL	=> clkperg
--);

--clkper_gb: BFR port map (
--A	=> clkper,
--Y	=> clkperg
--);

clkperg <= clkper;

-- TCK global buffer (only using TCK with OCI)
TCK_gb:
if USE_OCI=1 generate
	TCKg <= TCK;
end generate;

end STR;
