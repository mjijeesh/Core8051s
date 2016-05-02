-------------------------------------------------------------------------------
-- Copyright 2006 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- File:            oci_sys.vhd
--
-- Description:     System for Core8051s OCI testbench
--
-- Rev:             1.2  Dec06
--
-- Notes:
--
-------------------------------------------------------------------------------

LIBRARY std,ieee;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE WORK.jtagdef.ALL;

                         -----------------------
                         --                   --
                         -- MODULE DEFINITION --
                         --                   --
                         -----------------------
entity oci_sys is
	generic (
    -- DEBUG controls whether or not the On Chip Instrumentation (OCI)
    -- debug block is included and also the nature of the JTAG connection
    -- used for debugging. The JTAG connection can be implemented using
    -- either the UJTAG macro or by making use of general purpose I/O pins
    -- on the FPGA. DEBUG is used to set the values of the internal parameters
    -- USE_OCI and USE_UJTAG.
    -- Settings for DEBUG are as follows:
    --
    -- DEBUG  USE_OCI  USE_UJTAG  Comments
    -- --------------------------------------------------------------
    --   0       0         0      OCI block not included
    --   1       1         0      OCI included, UJTAG macro not used
    --   2       1         1      OCI included, UJTAG macro in use
    --
    DEBUG           : integer := 1;
    -- set this to 1 to include OCI trace RAM
    INCL_TRACE      : integer := 1;
    -- TRIG_NUM
    -- no triggers:  set value to 0
    --  1 trigger:   set value to 1
    --  2 triggers:  set value to 2
    --  4 triggers:  set value to 4
    TRIG_NUM        : integer := 0;
    -- set to 1 to enable ff optimizations ...
    EN_FF_OPTS      : integer := 0;
    -- APB data width - possible values are 8, 16 or 32
    APB_DWIDTH      : integer := 32;
    -- set to 1 to include second data pointer (DPTR1)
    INCL_DPTR1      : integer := 1;
    -- set to 1 to include multiply, divide and decimal-adjust instruction functionality
    INCL_MUL_DIV_DA : integer := 1;
    -- set to 1 to use MEMACKI control for external data memory
    VARIABLE_STRETCH: integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_STRETCH = 0
    -- range is 0 to 7
    STRETCH_VAL     : integer := 1;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_WAIT = 0
    -- range is 0 to 7
    WAIT_VAL        : integer := 0;
	-- WAITSTATES
	--    For simulation, determines the waitstate count for memory.
	--    This value is not used in synthesis.
	WAITSTATES      : integer := 0;
    -- INTRAM_IMPLEMENTATION controls the implementation of the internal (256x8) RAM.
    --  0 = instantiate RAM blocks
    --  1 = infer RAM blocks during synthesis
    --  2 = infer registers during synthesis
    INTRAM_IMPLEMENTATION : integer := 0
	);
port (
   clk              : IN std_logic;   -- CPU clock input
   resetiB          : IN std_logic;   -- System reset input (active low)
   tck              : IN std_logic;   -- JTAG clock
   tdi              : IN std_logic;   -- JTAG data in
   tms              : IN std_logic;   -- JTAG mode in
   tdo              : OUT std_logic;  -- JTAG data out
   TRSTB            : IN std_logic;   -- JTAG reset
   TrigOut          : OUT std_logic;  -- OCI trigger output
   BreakIn          : IN std_logic;   -- Break bus input
   BreakOut         : OUT std_logic;  -- Break bus output
   AuxOut           : OUT std_logic); -- Aux output
END oci_sys;

ARCHITECTURE rtl OF oci_sys IS

                         -----------------------
                         --                   --
                         --  LOCAL VARIABLES  --
                         --                   --
                         -----------------------

  SIGNAL waitcount         : natural range 0 to 255;

-- Program Memory Interface
  SIGNAL memaddr           : std_logic_vector(15 DOWNTO 0);
  SIGNAL membank           : std_logic_vector(3 DOWNTO 0);
  SIGNAL memdatai          : std_logic_vector(7 DOWNTO 0);
  SIGNAL memdatao          : std_logic_vector(7 DOWNTO 0);
  SIGNAL mempswr           : std_logic;
  SIGNAL mempsrd           : std_logic;
  SIGNAL memwr             : std_logic;
  SIGNAL memrd             : std_logic;
  SIGNAL mempsack          : std_logic;
  SIGNAL mempsacko         : std_logic;
  SIGNAL memacki           : std_logic;

  SIGNAL dbgmempswr        : std_logic;
-- Stop X propagation through netlist ...
  SIGNAL Pmem_no_x         : std_logic_vector(7 downto 0);

-- Simulated Memory
  constant MEM_SIZE        : integer := 65536;
  TYPE TypeMemory IS ARRAY (0 TO MEM_SIZE-1) OF std_logic_vector(7 DOWNTO 0);
  SIGNAL Pmem              : TypeMemory;
  SIGNAL Xmem              : TypeMemory;

  SIGNAL zeroes            : std_logic_vector(31 DOWNTO 0);
  SIGNAL ones              : std_logic_vector(31 DOWNTO 0);
  SIGNAL GND_sig           : std_logic;
  SIGNAL VCC_sig           : std_logic;

    -----------------------------------------------------------------
    component CORE8051S
    -----------------------------------------------------------------
    generic (
        -- DEBUG controls whether or not the On Chip Instrumentation (OCI)
        -- debug block is included and also the nature of the JTAG connection
        -- used for debugging. The JTAG connection can be implemented using
        -- either the UJTAG macro or by making use of general purpose I/O pins
        -- on the FPGA. DEBUG is used to set the values of the internal parameters
        -- USE_OCI and USE_UJTAG.
        -- Settings for DEBUG are as follows:
        --
        -- DEBUG  USE_OCI  USE_UJTAG  Comments
        -- --------------------------------------------------------------
        --   0       0         0      OCI block not included
        --   1       1         0      OCI included, UJTAG macro not used
        --   2       1         1      OCI included, UJTAG macro in use
        --
        DEBUG           : integer := 1;
        -- set this to 1 to include OCI trace RAM
        INCL_TRACE      : integer := 0;
        -- TRIG_NUM
        -- no triggers:  set value to 0
        --  1 trigger:   set value to 1
        --  2 triggers:  set value to 2
        --  4 triggers:  set value to 4
        TRIG_NUM        : integer := 0;
        ------- various rtl optimizations for synthesis size reductions ------
        -- set to 1 to enable ff optimizations ...
        EN_FF_OPTS      : integer := 0;
        -- APB data width - possible values are 8, 16 or 32
        APB_DWIDTH      : integer := 32;
        -- set to 1 to include second data pointer (DPTR1)
        INCL_DPTR1      : integer := 0;
        -- set to 1 to include multiply, divide and decimal-adjust instruction functionality
        INCL_MUL_DIV_DA : integer := 1;
        -- set to 1 to use MEMACKI control for external data memory
        VARIABLE_STRETCH: integer := 1;
        -- fixed setting for stretch, only applicable if VARIABLE_STRETCH = 0
        -- range is 0 to 7
        STRETCH_VAL     : integer := 1;
        -- set to 1 to use MEMPSACKI control for program memory
        VARIABLE_WAIT   : integer := 1;
        -- fixed setting for stretch, only applicable if VARIABLE_WAIT = 0
        -- range is 0 to 7
        WAIT_VAL        : integer := 0;
        -- INTRAM_IMPLEMENTATION controls the implementation of the internal (256x8) RAM.
        --  0 = instantiate RAM blocks
        --  1 = infer RAM blocks during synthesis
        --  2 = infer registers during synthesis
        INTRAM_IMPLEMENTATION : integer := 0
    );
    port (
        -- Control signal inputs
        CLK         : in  std_logic;  -- Main clock input
        NSYSRESET   : in  std_logic;  -- Asynch.act.low reset input
        -- Synchronized reset output for APB peripherals and other logic
        PRESETN     : out std_logic;
        -- Watchdog signals
        WDOGRES     : in  std_logic;  -- Time-out signal from watchdog, active high
        WDOGRESN    : out std_logic;  -- Reset output to watchdog
        -- External interrupt signals
        INT0        : in  std_logic;  -- External interrupt 0
        INT1        : in  std_logic;  -- External interrupt 1
        -- MOVX Instruction
        MOVX        : out std_logic;
        -- External Memory interface
        MEMPSACKI   : in  std_logic;
        MEMACKI     : in  std_logic;
        MEMDATAI    : in  std_logic_vector( 7 downto 0);
        MEMDATAO    : out std_logic_vector( 7 downto 0);
        MEMADDR     : out std_logic_vector(15 downto 0);
        MEMPSRD     : out std_logic;  -- Program store read enable
        MEMWR       : out std_logic;  -- Memory write enable
        MEMRD       : out std_logic;  -- Memory read enable
        -- APB interface
        PWRITE      : out std_logic;
        PENABLE     : out std_logic;
        --PSELECT     : out std_logic_vector(15 downto 0);
        PSEL        : out std_logic;
        PADDR       : out std_logic_vector(11 downto 0);
        PWDATA      : out std_logic_vector(APB_DWIDTH-1 downto 0);
        PRDATA      : in  std_logic_vector(APB_DWIDTH-1 downto 0);
        PREADY      : in  std_logic;
        PSLVERR     : in  std_logic;
        ----------------------------------------------------------------------
        -- On Chip Instrumentation (OCI) related signals
        ----------------------------------------------------------------------
        -- JTAG signals for OCI
        TCK          : in  std_logic; -- this should be tied high if OCI unused
        TMS          : in  std_logic;
        TDI          : in  std_logic;
        TDO          : out std_logic;
        TRSTN        : in  std_logic; -- this should be tied high if OCI unused
        -- Break bus for OCI (connect to bidirectional pad at top-level)
        BREAKIN      : in  std_logic; -- this input must be grounded if unused
        BREAKOUT     : out std_logic;
        -- debugger code memory bank support, if banking not used, ground these
        MEMBANK      : in  std_logic_vector(3 downto 0);
        -- Debug mode program storage write signal
        DBGMEMPSWR   : out std_logic;
        -- Trigger output
        TRIGOUT      : out std_logic;
        -- Auxilliary output
        AUXOUT       : out std_logic
    );
    end component;


                         -----------------------
                         --                   --
                         --    FUNCTIONS      --
                         --                   --
                         -----------------------

   FUNCTION hex(
      A                     : IN string;
      size                  : IN integer) return std_logic_vector is
      variable   nibble  : std_logic_vector(3 downto 0);
      variable   data    : std_logic_vector(63 downto 0) := (others=>'0');
      variable   offset  : integer := 0;
   BEGIN
      l1:for index in a'length downto 1
      loop
         case a(index) is
            when '0'     => nibble := "0000";
            when '1'     => nibble := "0001";
            when '2'     => nibble := "0010";
            when '3'     => nibble := "0011";
            when '4'     => nibble := "0100";
            when '5'     => nibble := "0101";
            when '6'     => nibble := "0110";
            when '7'     => nibble := "0111";
            when '8'     => nibble := "1000";
            when '9'     => nibble := "1001";
            when 'A'|'a' => nibble := "1010";
            when 'B'|'b' => nibble := "1011";
            when 'C'|'c' => nibble := "1100";
            when 'D'|'d' => nibble := "1101";
            when 'E'|'e' => nibble := "1110";
            when 'F'|'f' => nibble := "1111";
            when others  => null;
         end case;
         data((offset+3) DOWNTO offset) := nibble(3 DOWNTO 0);
         offset := offset + 4;
      end loop l1;
      return data((size-1) downto 0);
   END hex;

BEGIN
   zeroes <= "00000000000000000000000000000000";
   ones   <= "11111111111111111111111111111111";
   GND_sig <= '0';
   VCC_sig <= '1';

                         -----------------------
                         --                   --
                         --  INSTANTIATIONS   --
                         --                   --
                         -----------------------

    CORE8051S_inst : CORE8051S
    generic map (
        DEBUG                   => DEBUG,
        INCL_TRACE              => INCL_TRACE,
        TRIG_NUM                => TRIG_NUM,
        EN_FF_OPTS              => EN_FF_OPTS,
        APB_DWIDTH              => APB_DWIDTH,
        INCL_DPTR1              => INCL_DPTR1,
        INCL_MUL_DIV_DA         => INCL_MUL_DIV_DA,
        VARIABLE_STRETCH        => VARIABLE_STRETCH,
        STRETCH_VAL             => STRETCH_VAL,
        VARIABLE_WAIT           => VARIABLE_WAIT,
        WAIT_VAL                => WAIT_VAL,
        INTRAM_IMPLEMENTATION   => INTRAM_IMPLEMENTATION
    )
    port map (
        CLK         => clk,
        NSYSRESET   => resetiB,
        PRESETN     => open,
        WDOGRES     => GND_sig,
        WDOGRESN    => open,
        INT0        => GND_sig,
        INT1        => GND_sig,
        MOVX        => open,
        MEMPSACKI   => mempsack,
        MEMACKI     => memacki,
        MEMDATAI    => memdatai,
        MEMDATAO    => memdatao,
        MEMADDR     => memaddr,
        MEMPSRD     => mempsrd,
        MEMWR       => memwr,
        MEMRD       => memrd,
        TCK         => tck,
        TMS         => tms,
        TDI         => tdi,
        TDO         => tdo,
        TRSTN       => TRSTB,
        BREAKIN     => BreakIn,
        BREAKOUT    => BreakOut,
        MEMBANK     => membank,
        DBGMEMPSWR  => dbgmempswr,
        TRIGOUT     => TrigOut,
        AUXOUT      => AuxOut,
        PWRITE      => open,
        PENABLE     => open,
        PSEL        => open,
        PADDR       => open,
        PWDATA      => open,
        PRDATA      => zeroes(APB_DWIDTH-1 downto 0),
        PREADY      => VCC_sig,
        PSLVERR     => GND_sig
    );

PROCESS(clk, resetiB) BEGIN
   if (resetiB = '0') then
      waitcount <= 0;
   elsif (clk'event and clk='1') then
      if ((mempsrd = '0') or (mempsack = '1')) then
         waitcount <= WAITSTATES;
      elsif (waitcount /= 0) then
         waitcount <= 0;
      end if;
   end if;
end process;

mempsack <= '0' when (mempsrd = '1') and (waitcount /= 0) else '1';
memacki <= '1';
mempswr <= '0';

--
-- Program memory handling
-- Xdata memory handling
--

PROCESS(clk) BEGIN
   if clk'event and clk='1' then
      if ((resetiB='1') AND (dbgmempswr='1')) then
         Pmem(conv_integer(unsigned(memaddr(15 DOWNTO 0)))) <= memdatao(7 DOWNTO 0);
      end if;
   end if;
end process;


PROCESS(clk) BEGIN
   if clk'event and clk='1' then
      if ((resetiB='1') AND (memwr='1')) then
         Xmem(conv_integer(unsigned(memaddr(15 DOWNTO 0)))) <= memdatao(7 DOWNTO 0);
      end if;
   end if;
end process;

-- Stop X propagation through netlist ...
stopxproc:
process(mempsrd, mempsack, memaddr)
variable pnx: std_logic_vector(7 downto 0);
begin
	pnx := Pmem(conv_integer(unsigned(memaddr(15 downto 0))));
	for i in 0 to 7 loop
		case pnx(i) is
			when '0'	=> Pmem_no_x(i) <= '0';
			when others	=> Pmem_no_x(i) <= '1';
		end case;
	end loop;
end process;

memdatai(7 DOWNTO 0) <=
    Xmem(conv_integer(unsigned(memaddr(15 DOWNTO 0)))) when memrd = '1' else
-- Stop X propagation through netlist ...
    Pmem_no_x  when (mempsrd='1' and mempsack='1') else
    "10011001";

membank <= "0000";

end rtl;
