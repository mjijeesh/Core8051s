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
-- name:		Core8051s.vhd
-- function:	Core8051s top-level
--				instantiates the following sub-blocks:
--				MAIN8051,CORE8051_GLOBS,OCI
-- comments:	best viewed with tabstops set to "4"
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity CORE8051S is
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
    DEBUG           : integer := 0;
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
    VARIABLE_STRETCH   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_STRETCH = 0
    -- range is 0 to 7
    STRETCH_VAL     : integer := 1;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_WAIT = 0
    -- range is 0 to 7
    WAIT_VAL     : integer := 0;
    -- INTRAM_IMPLEMENTATION controls the implementation of the internal (256x8) RAM.
    --  0 = instantiate RAM blocks
    --  1 = infer RAM blocks during synthesis
    --  2 = infer registers during synthesis
    INTRAM_IMPLEMENTATION : integer := 0;
    -- Selection of device family (not currently used)
    FAMILY     : integer range 0 to 23 := 0
);
port (
    -- Control signal inputs
    CLK         : in  std_logic;  -- Main clock input
    NSYSRESET      : in  std_logic;  -- Asynch.act.low reset input
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
end CORE8051S;

--*******************************************************************--

architecture STR of CORE8051S is

-----------------------------------------------------------------------
-- MAIN8051 core logic
-----------------------------------------------------------------------
component MAIN8051
generic (
    -- set to 1 to enable ff optimizations ...
    EN_FF_OPTS      : integer := 0;
    -- APB data width - possible values are 8, 16 or 32
    APB_DWIDTH      : integer := 32;
    -- set to 1 to include second data pointer (DPTR1)
    INCL_DPTR1      : integer := 0;
    -- set to 1 to include multiply and divide instruction functionality
    INCL_MUL_DIV_DA : integer := 1;
    -- set to 1 to use MEMACKI control for external data memory
    VARIABLE_STRETCH   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_STRETCH = 0
    -- range is 0 to 7
    STRETCH_VAL     : integer := 1;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_WAIT = 0
    -- range is 0 to 7
    WAIT_VAL     : integer := 0;
    -- set this to number of instruction decodes
    INSTR_DECNUM    : integer := 119
);
  port (
    -- Control signal inputs
    clk         : in  STD_LOGIC;  -- Global clock input
    nreset      : in  STD_LOGIC;  -- Hardware reset input
    nrst        : in  STD_LOGIC;  -- Internal reset input (buffered)
    WDOGRES     : in  STD_LOGIC;  -- Time-out signal from watchdog, active high
    WDOGRESN    : out STD_LOGIC;  -- Reset output to watchdog

    -- External interrupt signals
    int0        : in  STD_LOGIC;  -- External interrupt 0a
    int1        : in  STD_LOGIC;  -- External interrupt 1a

    -- On-Chip Debug Support Interface
    debugreq    : in  STD_LOGIC; -- debug mode request
    debugstep   : in  STD_LOGIC; -- debug mode single-step
    debugprog   : in  STD_LOGIC; -- debugger program select
    debugack    : out STD_LOGIC; -- debugger acknowledge signal
    flush       : out STD_LOGIC; -- branch instruction fetch
    fetch       : out STD_LOGIC; -- no-branch instruction fetch
    acc         : out STD_LOGIC_VECTOR(7 downto 0);

    -- Control signal outputs
    nrsto       : out STD_LOGIC;  -- Internal reset driver (needs buffering)

    -- MOVX Instruction
    movx        : out STD_LOGIC;

    -- Memory interface
    mempsacki   : in  STD_LOGIC;
    memacki     : in  STD_LOGIC;
    memdatai    : in  STD_LOGIC_VECTOR( 7 downto 0);
    mempsacko   : out STD_LOGIC;  -- Program store acknowledge
    memdatao    : out STD_LOGIC_VECTOR( 7 downto 0);
    memaddr     : out STD_LOGIC_VECTOR(15 downto 0);
    mempsrd     : out STD_LOGIC;  -- Program store read enable
    memwr       : out STD_LOGIC;  -- Memory write enable
    memrd       : out STD_LOGIC;  -- Memory read enable

    -- Data file interface
    ramdatai    : in  STD_LOGIC_VECTOR(7 downto 0);
    ramdatao    : out STD_LOGIC_VECTOR(7 downto 0);
    ramaddr     : out STD_LOGIC_VECTOR(7 downto 0);
    ramaddr_e   : out STD_LOGIC_VECTOR(7 downto 0);
    ramwe       : out STD_LOGIC;  -- Data file write enable
    ramoe       : out STD_LOGIC;  -- Data file output enable
    ramoe_e     : out STD_LOGIC;  -- Data file output enable

    -- Special function register interface
    sfrdatai    : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatao    : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr     : out STD_LOGIC_VECTOR(6 downto 0);
    sfrwe       : out STD_LOGIC;  -- SFR write enable
    sfroe       : out STD_LOGIC;  -- SFR output enable

    -- APB interface
    psel        : out STD_LOGIC;
    pwrite      : out STD_LOGIC;
    penable     : out STD_LOGIC;
    paddr       : out STD_LOGIC_VECTOR(11 downto 0);
    pwdata      : out STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
    prdata      : in  STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
    pready      : in  STD_LOGIC;

    -- Program store memory write related signals
    DebugPswr   : in  STD_LOGIC;
    mempswr     : out STD_LOGIC
    );
end component;

-----------------------------------------------------------------------
-- global buffer block for internal gated clocks and reset (device-specific)
-----------------------------------------------------------------------
component CORE8051_GLOBS
generic(
    -- set this to 1 to instantiate OCI logic
    USE_OCI            : integer := 0
);
port (
    nrst         : in  std_logic;  -- Internal reset input
    nrstg        : out std_logic;  -- global buffered nrst
    nrst_nc      : inout std_logic;-- this must be a no-connect at top-level
    clk          : in  std_logic;  -- clock input (from pad)
    clkg            : out std_logic;  -- global buffered clk
    clkcpu       : in  std_logic;  -- CPU clock input
    clkcpug      : out std_logic;  -- global buffered clkcpu
    clkper       : in  std_logic;  -- Peripheral clock input
    clkperg      : out std_logic;  -- global buffered clkper
    TCK          : in  std_logic;  -- JTAG test clock
    TCKg         : out std_logic  -- global buffered TCK
);
end component;

-----------------------------------------------------------------------
-- On-Chip Instrumentation (OCI) block
-----------------------------------------------------------------------
component ocia51
generic (
    -- set this to 1 to use ProASIC+ UJTAG macro for OCI logic
    USE_UJTAG    : integer := 0;
    -- TRACE_DEPTH
    -- no trace:  Set value to 0
    -- 256 depth: Set value to 8
    TRACE_DEPTH    : integer := 0;
    -- TRIG_NUM
    -- no triggers:  set value to 0
    --  1 trigger:   set value to 1
    --  2 triggers:  set value to 2
    --  4 triggers:  set value to 4
    TRIG_NUM    : integer := 0
);
port (
    CLK                      : in std_logic;
    RESETB                   : in std_logic;
    TCK                      : in std_logic;
    TMS                      : in std_logic;
    TDI                      : in std_logic;
    TDO                      : out std_logic;
    TRSTB                    : in std_logic;
    DebugReq                 : out std_logic;
    DebugAck                 : in std_logic;
    DebugStep                : out std_logic;
    DebugProg                : out std_logic;
    DebugMemdataEnb          : out std_logic;
    DebugMemdatai            : out std_logic_vector(7 downto 0);
    DebugPswr                : out std_logic;
    TrigOut                  : out std_logic;
    JReset                   : out std_logic;
    -- Break bus
    BreakIn                  : in std_logic;
    BreakOut                 : out std_logic;
    -- status from core
    acc                      : in std_logic_vector(7 downto 0);
    fetch                    : in std_logic;
    flush                    : in std_logic;
    -- prog/xdata monitors
    memdatai                 : in std_logic_vector(7 downto 0);
    memdatao                 : in std_logic_vector(7 downto 0);
    memaddr                  : in std_logic_vector(15 downto 0);
    membank                  : in std_logic_vector(3 downto 0);
    mempswr                  : in std_logic;
    mempsrd                  : in std_logic;
    mempsack                 : in std_logic;
    memwr                    : in std_logic;
    memrd                    : in std_logic;
    -- idata monitor
    ramdatai                 : in std_logic_vector(7 downto 0);
    ramdatao                 : in std_logic_vector(7 downto 0);
    ramaddr                  : in std_logic_vector(7 downto 0);
    ramwe                    : in std_logic;
    ramoe                    : in std_logic;
    -- sfr monitor
    sfrdatai                 : in std_logic_vector(7 downto 0);
    sfrdatao                 : in std_logic_vector(7 downto 0);
    sfraddr                  : in std_logic_vector(6 downto 0);
    sfrwe                    : in std_logic;
    sfroe                    : in std_logic;
    -- trace ram interface
    TraceA                   : out std_logic_vector(7 downto 0);
    TraceA_e                 : out std_logic_vector(7 downto 0);
    TraceDI                  : out std_logic_vector(19 downto 0);
    TraceDO                  : in std_logic_vector(19 downto 0);
    TraceWr                  : out std_logic;
    TraceRd                  : out std_logic;
    -- Aux output
    AuxOut                   : out std_logic
);
end component;

-----------------------------------------------------------------------
-- Internal data RAM
-----------------------------------------------------------------------
component RAM256X8_registers
port (
    WD      : in std_logic_vector(7 downto 0);
    RD      : out std_logic_vector(7 downto 0);
    WEN     : in std_logic;
    REN     : in std_logic;
    WADDR   : in std_logic_vector(7 downto 0);
    RADDR   : in std_logic_vector(7 downto 0);
    WCLK    : in std_logic;
    RCLK    : in std_logic
);
end component;

component RAM256X8_block_ram
port (
    WD      : in std_logic_vector(7 downto 0);
    RD      : out std_logic_vector(7 downto 0);
    WEN     : in std_logic;
    REN     : in std_logic;
    WADDR   : in std_logic_vector(7 downto 0);
    RADDR   : in std_logic_vector(7 downto 0);
    WCLK    : in std_logic;
    RCLK    : in std_logic
);
end component;

component RAM256X8
port (
    WD      : in std_logic_vector(7 downto 0);
    RD      : out std_logic_vector(7 downto 0);
    WEN     : in std_logic;
    REN     : in std_logic;
    WADDR   : in std_logic_vector(7 downto 0);
    RADDR   : in std_logic_vector(7 downto 0);
    WCLK    : in std_logic;
    RCLK    : in std_logic
);
end component;

-----------------------------------------------------------------------
-- Trace RAM
-----------------------------------------------------------------------
component RAM256X20
port (
    WD      : in std_logic_vector(19 downto 0);
    RD      : out std_logic_vector(19 downto 0);
    WEN     : in std_logic;
    REN     : in std_logic;
    WADDR   : in std_logic_vector(7 downto 0);
    RADDR   : in std_logic_vector(7 downto 0);
    WCLK    : in std_logic;
    RCLK    : in std_logic
);
end component;

-----------------------------------------------------------------------
-- Functions
-----------------------------------------------------------------------

function set_use_oci (DEBUG : integer)
return integer is
begin
    if (DEBUG = 0) then
        return 0;
    else
        return 1;
    end if;
end function set_use_oci;

function set_use_ujtag (FAMILY : integer; DEBUG : integer)
return integer is
begin
    -- Force USE_UJTAG to 0 when FAMILY=11 (i.e. Axcelerator family)
    if (FAMILY = 11) then
        return 0;
    else
        if (DEBUG = 2) then
            return 1;
        else
            return 0;
        end if;
    end if;
end function set_use_ujtag;

-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------

-- set this to 1 to instantiate OCI logic
constant USE_OCI         : integer := set_use_oci(DEBUG);
-- set this to 1 to use ProASIC+ UJTAG macro for OCI logic
constant USE_UJTAG       : integer := set_use_ujtag(FAMILY, DEBUG);

-----------------------------------------------------------------------
-- Signals
-----------------------------------------------------------------------

---------------------------------------
-- MAIN8051 signals
---------------------------------------

-- inputs from control signals to MAIN8051
signal nreset_8051      : std_logic;

-- inputs from OCI Debug Support Interface to MAIN8051
signal debugreq         : std_logic;    -- debug mode request
signal debugstep        : std_logic;    -- debug mode single-step
signal debugprog        : std_logic;    -- debugger program select

-- outputs from MAIN8051 to OCI Debug Support Interface
signal debugack         : std_logic;    -- debugger acknowledge signal
signal flush            : std_logic;    -- branch instruction fetch
signal fetch            : std_logic;    -- no-branch instruction fetch
signal acc              : std_logic_vector(7 downto 0);

-- outputs from MAIN8051 to global buffering block
signal nrst_8051        : std_logic;    -- Internal reset input

-- outputs from MAIN8051 to Memory interface (and monitored by OCI)
signal memdatao_8051    : std_logic_vector( 7 downto 0);
signal memaddr_8051     : std_logic_vector(15 downto 0);
signal mempsrd_8051     : std_logic;    -- Program store read enable
signal memwr_8051       : std_logic;    -- Memory write enable
signal memrd_8051       : std_logic;    -- Memory read enable
signal mempswr          : std_logic;    -- Program store write enable

-- outputs from MAIN8051 to Data file interface (and monitored by OCI)
signal ramdatao_8051    : std_logic_vector(7 downto 0);
signal ramaddr_8051     : std_logic_vector(7 downto 0);
signal ramwe_8051       : std_logic;    -- Data file write enable
signal ramoe_8051       : std_logic;    -- Data file output enable

-- data from Data file
signal ramdatai         : std_logic_vector(7 downto 0);

-- outputs from MAIN8051 to SFR interface (monitored by OCI)
signal sfrdatao_8051    : std_logic_vector(7 downto 0);
signal sfraddr_8051     : std_logic_vector(6 downto 0);
signal sfrwe_8051       : std_logic;    -- SFR write enable
signal sfroe_8051       : std_logic;    -- SFR output enable

---------------------------------------
-- CORE8051_GLOBS signals
---------------------------------------

-- globally buffered output signals to rest of logic, and external logic
signal nrstg            : std_logic;    -- global buffered nrst
signal clkg             : std_logic;    -- global buffered clk
signal TCKg             : std_logic;    -- global buffered TCK

---------------------------------------
-- OCI signals
---------------------------------------

-- input signals to OCI, some gated with other internal logic
signal memdatai_8051    : std_logic_vector(7 downto 0);

-- output signals from OCI, some gated to other internal logic
signal DebugMemdataEnb  : std_logic;
signal DebugMemdatai    : std_logic_vector(7 downto 0);
signal DebugPswr        : std_logic;
signal JReset           : std_logic;

-- static logic signals
signal VCC_sig          : std_logic;
signal GND_sig          : std_logic;

-- signals for internal RAM/Data file
signal ramdatao         : std_logic_vector(7 downto 0);
signal ramaddr          : std_logic_vector(7 downto 0);
signal ramaddr_e        : std_logic_vector(7 downto 0);
signal ramwe            : std_logic;
signal ramoe            : std_logic;
signal ramoe_e          : std_logic;

-- signals for trace RAM
signal TraceA           : std_logic_vector(7 downto 0);
signal TraceA_e         : std_logic_vector(7 downto 0);
signal TraceDI          : std_logic_vector(19 downto 0);
signal TraceDO          : std_logic_vector(19 downto 0);
signal TraceWR          : std_logic;
signal TraceRD          : std_logic;

signal iPSEL            : std_logic;

-----------------------------------------------------------------------

begin

-----------------------------------------------------------------
-- MAIN8051 block
-----------------------------------------------------------------
MAIN8051_inst: MAIN8051
generic map (
    EN_FF_OPTS      => EN_FF_OPTS,
    APB_DWIDTH      => APB_DWIDTH,
    INCL_DPTR1      => INCL_DPTR1,
    INCL_MUL_DIV_DA => INCL_MUL_DIV_DA,
    VARIABLE_STRETCH=> VARIABLE_STRETCH,
    STRETCH_VAL     => STRETCH_VAL,
    VARIABLE_WAIT   => VARIABLE_WAIT,
    WAIT_VAL        => WAIT_VAL
)
port map (
    -- Control signal inputs
    clk             => clkg,
    nreset          => nreset_8051,
    nrst            => nrstg,
    WDOGRES         => WDOGRES,
    WDOGRESN        => WDOGRESN,
    -- External interrupt signals
    int0            => INT0,
    int1            => INT1,
    -- On-Chip Debug Support Interface
    debugreq        => debugreq,
    debugstep       => debugstep,
    debugprog       => debugprog,
    debugack        => debugack,
    flush           => flush,
    fetch           => fetch,
    acc             => acc,
    -- Control signal outputs
    nrsto           => nrst_8051,
    -- MOVX Instruction
    movx            => MOVX,
    -- Memory interface
    mempsacki       => MEMPSACKI,
    memacki         => MEMACKI,
    memdatai        => memdatai_8051,
    mempsacko       => open,
    memdatao        => memdatao_8051,
    memaddr         => memaddr_8051,
    mempsrd         => mempsrd_8051,
    memwr           => memwr_8051,
    memrd           => memrd_8051,
    -- Data file interface
    ramdatai        => ramdatai,
    ramdatao        => ramdatao_8051,
    ramaddr         => ramaddr_8051,
    ramaddr_e       => ramaddr_e,
    ramwe           => ramwe_8051,
    ramoe           => ramoe_8051,
    ramoe_e         => ramoe_e,
    -- Special function register interface
    sfrdatai        => "00000000",
    sfrdatao        => sfrdatao_8051,
    sfraddr         => sfraddr_8051,
    sfrwe           => sfrwe_8051,
    sfroe           => sfroe_8051,
    -- APB interface
    psel            => iPSEL,
    pwrite          => PWRITE,
    penable         => PENABLE,
    paddr           => PADDR,
    pwdata          => PWDATA,
    prdata          => PRDATA,
    pready          => PREADY,
    -- Program store memory write related signals
    DebugPswr       => DebugPswr,
    mempswr         => mempswr
);

-----------------------------------------------------------------------
-- global buffer block for internal gated clocks and reset (device-specific)
-- If the OCI logic is used, global resource usage will be different
-----------------------------------------------------------------------
CORE8051_GLOBS_inst: CORE8051_GLOBS
generic map(
    USE_OCI => USE_OCI
)
port map (
    nrst    => nrst_8051,
    nrstg   => nrstg,
    nrst_nc => open,
    clk     => clk,
    clkg    => clkg,
    clkcpu  => GND_sig,
    clkcpug => open,
    clkper  => GND_sig,
    clkperg => open,
    TCK     => TCK,
    TCKg    => TCKg
);

-----------------------------------------------------------------
-- Internal data RAM
-- 256x8 RAM (sync. write, sync. read)
-----------------------------------------------------------------
intram_infer_reg:
if (INTRAM_IMPLEMENTATION = 2) generate
    -- Infer registers for internal RAM
    internal_ram: RAM256X8_registers
    port map (
        WD     => ramdatao_8051,
        RD     => ramdatai,
        WEN    => ramwe,
        REN    => ramoe_e,
        WADDR  => ramaddr,
        RADDR  => ramaddr_e,
        WCLK   => clkg,
        RCLK   => clkg
    );
end generate;

intram_infer_ram:
if (INTRAM_IMPLEMENTATION = 1) generate
    -- Infer RAM block for internal RAM
    internal_ram: RAM256X8_block_ram
    port map (
        WD     => ramdatao_8051,
        RD     => ramdatai,
        WEN    => ramwe,
        REN    => ramoe_e,
        WADDR  => ramaddr,
        RADDR  => ramaddr_e,
        WCLK   => clkg,
        RCLK   => clkg
    );
end generate;

intram_instt_ram:
if ((INTRAM_IMPLEMENTATION /= 2) and (INTRAM_IMPLEMENTATION /= 1)) generate
    -- Instantiate RAM block for internal RAM
    internal_ram: RAM256X8
    port map (
        WD     => ramdatao_8051,
        RD     => ramdatai,
        WEN    => ramwe,
        REN    => ramoe_e,
        WADDR  => ramaddr,
        RADDR  => ramaddr_e,
        WCLK   => clkg,
        RCLK   => clkg
    );
end generate;

-----------------------------------------------------------------
-- OCI block used
-----------------------------------------------------------------
oci1_trace1:
if ((USE_OCI = 1) and (INCL_TRACE = 1)) generate
    ocia51_inst : ocia51
    generic map (
        USE_UJTAG           => USE_UJTAG,
        TRACE_DEPTH         => 8,
        TRIG_NUM            => TRIG_NUM
    )
    port map (
        CLK                 => clkg,
        RESETB              => NSYSRESET,
        TCK                 => TCKg,
        TMS                 => TMS,
        TDI                 => TDI,
        TDO                 => TDO,
        TRSTB               => TRSTN,
        DebugReq            => debugreq,
        DebugAck            => debugack,
        DebugStep           => debugstep,
        DebugProg           => debugprog,
        DebugMemdataEnb     => DebugMemdataEnb,
        DebugMemdatai       => DebugMemdatai,
        DebugPswr           => DebugPswr,
        TrigOut             => TrigOut,
        JReset              => JReset,
        BreakIn             => BreakIn,
        BreakOut            => BreakOut,
        acc                 => acc,
        fetch               => fetch,
        flush               => flush,
        memdatai            => memdatai_8051,
        memdatao            => memdatao_8051,
        memaddr             => memaddr_8051,
        membank             => membank,
        mempswr             => GND_sig,
        mempsrd             => mempsrd_8051,
        mempsack            => mempsacki,
        memwr               => memwr_8051,
        memrd               => memrd_8051,
        ramdatai            => ramdatai,
        ramdatao            => ramdatao_8051,
        ramaddr             => ramaddr_8051,
        ramwe               => ramwe_8051,
        ramoe               => ramoe_8051,
        sfrdatai            => "00000000",
        sfrdatao            => sfrdatao_8051,
        sfraddr             => sfraddr_8051,
        sfrwe               => sfrwe_8051,
        sfroe               => sfroe_8051,
        TraceA              => TraceA,
        TraceA_e            => TraceA_e,
        TraceDI             => TraceDI,
        TraceDO             => TraceDO,
        TraceWr             => TraceWR,
        TraceRd             => TraceRD,
        AuxOut              => AuxOut
    );
end generate;

oci1_trace0:
if ((USE_OCI = 1) and (INCL_TRACE = 0)) generate
    ocia51_inst : ocia51
    generic map (
        USE_UJTAG           => USE_UJTAG,
        TRACE_DEPTH         => 0,
        TRIG_NUM            => TRIG_NUM
    )
    port map (
        CLK                 => clkg,
        RESETB              => NSYSRESET,
        TCK                 => TCKg,
        TMS                 => TMS,
        TDI                 => TDI,
        TDO                 => TDO,
        TRSTB               => TRSTN,
        DebugReq            => debugreq,
        DebugAck            => debugack,
        DebugStep           => debugstep,
        DebugProg           => debugprog,
        DebugMemdataEnb     => DebugMemdataEnb,
        DebugMemdatai       => DebugMemdatai,
        DebugPswr           => DebugPswr,
        TrigOut             => TrigOut,
        JReset              => JReset,
        BreakIn             => BreakIn,
        BreakOut            => BreakOut,
        acc                 => acc,
        fetch               => fetch,
        flush               => flush,
        memdatai            => memdatai_8051,
        memdatao            => memdatao_8051,
        memaddr             => memaddr_8051,
        membank             => membank,
        mempswr             => GND_sig,
        mempsrd             => mempsrd_8051,
        mempsack            => mempsacki,
        memwr               => memwr_8051,
        memrd               => memrd_8051,
        ramdatai            => ramdatai,
        ramdatao            => ramdatao_8051,
        ramaddr             => ramaddr_8051,
        ramwe               => ramwe_8051,
        ramoe               => ramoe_8051,
        sfrdatai            => "00000000",
        sfrdatao            => sfrdatao_8051,
        sfraddr             => sfraddr_8051,
        sfrwe               => sfrwe_8051,
        sfroe               => sfroe_8051,
        TraceA              => TraceA,
        TraceA_e            => TraceA_e,
        TraceDI             => TraceDI,
        TraceDO             => TraceDO,
        TraceWr             => TraceWR,
        TraceRd             => TraceRD,
        AuxOut              => AuxOut
    );
end generate;

-----------------------------------------------------------------
-- OCI block not used
-----------------------------------------------------------------
oci0:
if (USE_OCI = 0) generate
    debugreq        <= GND_sig;
    debugstep       <= GND_sig;
    debugprog       <= GND_sig;
    DebugMemdataEnb <= GND_sig;
    DebugMemdatai   <= (others => '0');
    DebugPswr       <= GND_sig;
    JReset          <= GND_sig;
    TrigOut         <= GND_sig;
    BreakOut        <= BreakIn;
    TraceDI         <= TraceDO;
    TraceA          <= membank & "0000";
    TraceA_e        <= membank & "0000";
    TraceWr         <= GND_sig;
    TraceRd         <= GND_sig;
    AuxOut          <= GND_sig;
end generate;

-----------------------------------------------------------------
-- OCI Trace RAM
-----------------------------------------------------------------
trace1:
if ( (USE_OCI = 1) and (INCL_TRACE = 1) ) generate
    trace_ram: RAM256X20
    port map (
        WD      => TraceDI,
        RD      => TraceDO,
        WEN     => TraceWR,
        REN     => TraceRD,
        WADDR   => TraceA,
        RADDR   => TraceA_e,
        WCLK    => clkg,
        RCLK    => clkg
    );
end generate;

-----------------------------------------------------------------------
-- Signal (and gated output) assignments
-----------------------------------------------------------------------

    -- logic 1 and logic 0
    VCC_sig <= '1';
    GND_sig <= '0';

    PSEL <= iPSEL;

    -- gated nreset to MAIN8051
    nreset_8051 <= NSYSRESET and not(JReset);

    -- Synchronized reset output to APB peripherals and other external
    -- logic
    PRESETN <= nrstg;

    -- External Memory interface
    -- muxed mem data to MAIN8051 and OCI
    memdatai_8051 <=    DebugMemdatai when (DebugMemdataEnb = '1') else
                        PRDATA(7 downto 0) when (iPSEL = '1') else
                        memdatai;

    memdatao    <= memdatao_8051;
    memaddr     <= memaddr_8051;
    mempsrd     <= mempsrd_8051;
    -- gated data store writes
    memwr       <= memwr_8051 and not DebugPswr;
    memrd       <= memrd_8051;
    -- outputs to internal memory (R0-R7, etc.)
    ramdatao    <= ramdatao_8051;
    ramaddr     <= ramaddr_8051;
    ramwe       <= ramwe_8051;
    ramoe       <= ramoe_8051;
    -- gated debug program store writes
    DBGMEMPSWR  <= mempswr and DebugPswr;

end STR;
