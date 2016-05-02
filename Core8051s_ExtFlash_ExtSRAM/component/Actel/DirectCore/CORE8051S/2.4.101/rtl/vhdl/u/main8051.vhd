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
-- name:        main8051.vhd
-- function:    Main 8051 logic block that connects major blocks
-- comments:    best viewed with tabstops set to "4"
-- history:     5/27/03 - TFB created
--              8/19/03 - TFB mods for "shrink" effort
--              9/19/03 - added generic for controlling ff optimizations
--              11/12/03 - TFB fed non-global reset to PMU and RSTCTRL blocks
--              to avoid SXA/RTSXS quadrant clock globals issue, also using
--              clkcpu instead of clk to register sfrdatai_lat to avoid same
--              3/22/04 - TFB modified to bring out clkcpu_en and clkper_en
--              signals so that user may implement clock gating outside of
--              Core8051, if desired, also removed clkcpuo and clkpero, since
--              these would be created using 2 AND gates outside Core8051
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."+";
use work.Core8051_utility.all;

entity MAIN8051 is
generic (
    -- set to 1 to enable ff optimizations ...
    EN_FF_OPTS        : integer := 0;
    -- APB data width - possible values are 8, 16 or 32
    APB_DWIDTH        : integer := 32;
    -- set to 1 to include second data pointer (DPTR1)
    INCL_DPTR1        : integer := 0;
    -- set to 1 to include multiply, divide and decimal-adjust instruction functionality
    INCL_MUL_DIV_DA   : integer := 1;
    -- set to 1 to use MEMACKI control for external data memory
    VARIABLE_STRETCH  : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_STRETCH = 0
    -- range is 0 to 7
    STRETCH_VAL       : integer := 1;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT     : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_WAIT = 0
    -- range is 0 to 7
    WAIT_VAL          : integer := 0;
    -- set this to number of instruction decodes
    INSTR_DECNUM      : integer := 119
);
  port (
    -- Control signal inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nreset          : in  STD_LOGIC;  -- Hardware reset input
    nrst            : in  STD_LOGIC;  -- Internal reset input (buffered)
    WDOGRES         : in  STD_LOGIC;  -- Time-out signal from watchdog, active high
    WDOGRESN        : out STD_LOGIC;  -- Reset output to watchdog

    -- External interrupt signals
    int0            : in  STD_LOGIC;  -- External interrupt 0a
    int1            : in  STD_LOGIC;  -- External interrupt 1a

    -- On-Chip Debug Support Interface
    debugreq        : in  STD_LOGIC; -- debug mode request
    debugstep       : in  STD_LOGIC; -- debug mode single-step
    debugprog       : in  STD_LOGIC; -- debugger program select
    debugack        : out STD_LOGIC; -- debugger acknowledge signal
    flush           : out STD_LOGIC; -- branch instruction fetch
    fetch           : out STD_LOGIC; -- no-branch instruction fetch
    acc             : out STD_LOGIC_VECTOR(7 downto 0);

    -- Control signal outputs
    nrsto           : out STD_LOGIC;  -- Internal reset driver (needs buffering)

    -- MOVX Instruction
    movx            : out STD_LOGIC;

    -- Memory interface
    mempsacki       : in  STD_LOGIC;
    memacki         : in  STD_LOGIC;
    memdatai        : in  STD_LOGIC_VECTOR( 7 downto 0);
    mempsacko       : out STD_LOGIC;  -- Program store acknowledge
    memdatao        : out STD_LOGIC_VECTOR( 7 downto 0);
    memaddr         : out STD_LOGIC_VECTOR(15 downto 0);
    mempsrd         : out STD_LOGIC;  -- Program store read enable
    memwr           : out STD_LOGIC;  -- Memory write enable
    memrd           : out STD_LOGIC;  -- Memory read enable

    -- Data file interface
    ramdatai        : in  STD_LOGIC_VECTOR(7 downto 0);
    ramdatao        : out STD_LOGIC_VECTOR(7 downto 0);
    ramaddr         : out STD_LOGIC_VECTOR(7 downto 0);
    ramaddr_e       : out STD_LOGIC_VECTOR(7 downto 0);
    ramwe           : out STD_LOGIC;  -- Data file write enable
    ramoe           : out STD_LOGIC;  -- Data file output enable
    ramoe_e         : out STD_LOGIC;  -- Data file output enable (early version)

    -- Special function register interface
    sfrdatai        : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatao        : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr         : out STD_LOGIC_VECTOR(6 downto 0);
    sfrwe           : out STD_LOGIC;  -- SFR write enable
    sfroe           : out STD_LOGIC;  -- SFR output enable

    -- APB interface
    psel            : out STD_LOGIC;
    pwrite          : out STD_LOGIC;
    penable         : out STD_LOGIC;
    paddr           : out STD_LOGIC_VECTOR(11 downto 0);
    pwdata          : out STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
    prdata          : in  STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
    pready          : in  STD_LOGIC;

    -- Program store memory write related signals
    DebugPswr       : in  STD_LOGIC;
    mempswr         : out STD_LOGIC
    );
end MAIN8051;

--*******************************************************************--

architecture STR of MAIN8051 is

-----------------------------------------------------------------------
-- Aritmetic Logic Unit
-----------------------------------------------------------------------
component ALU
generic (
    -- set to 1 to include multiply and divide instruction functionality
    INCL_MUL_DIV_DA : integer := 1;
    -- set this to number of instruction decodes
    INSTR_DECNUM    : integer := 119
);
port (
    -- Global control signals inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Global reset input
    -- External memory read/write acknowledge input
    mempsack        : in  STD_LOGIC;
    -- Memory interface
    memdatai        : in  STD_LOGIC_VECTOR(7 downto 0); -- Memory data bus
    mem2acc         : in  STD_LOGIC;                    -- Memory to ACC wr.enable
    -- RAM Data Bus
    ramsfrdata      : in  STD_LOGIC_VECTOR(7 downto 0); -- Peripheral data bus
    -- ALU output signals
    accreg          : out STD_LOGIC_VECTOR(7 downto 0); -- Accumulator output
    aluresult       : out STD_LOGIC_VECTOR(7 downto 0); -- ALU result
    regsbank        : out STD_LOGIC_VECTOR(1 downto 0); -- Current bank
    bitvalue        : out STD_LOGIC; -- Selected bit value
    cdjump          : out STD_LOGIC; -- Condition of jump
    cyflag          : out STD_LOGIC; -- Carry flag
    -- Special function register interface
    sfrdatai        : in  STD_LOGIC_VECTOR(7 downto 0); -- SFR data bus
    sfrdataalu      : out STD_LOGIC_VECTOR(7 downto 0); -- ALU data bus
    sfraddr         : in  STD_LOGIC_VECTOR(6 downto 0); -- SFR address bus
    sfrwe           : in  STD_LOGIC;                     -- SFR write enable
    -- decode vector (bit-order reversed on purpose!)
    instr_dec       : in  std_logic_vector(0 to INSTR_DECNUM-1);
    -- cycle decodes ...
    cyc1            : in  std_logic;
    cyc2            : in  std_logic;
    cyc3            : in  std_logic;
    cyc4            : in  std_logic;
    cyc5            : in  std_logic
    -------------------------------------------------------------------
);
end component;

-----------------------------------------------------------------------
-- Clock Control Unit
-----------------------------------------------------------------------
component CLOCK_CONTROL
generic (
    -- set to 1 to enable ff optimizations ...
    EN_FF_OPTS      : integer := 0;
    -- set to 1 to use MEMACKI control for external data memory
    VARIABLE_STRETCH   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_STRETCH = 0
    -- range is 0 to 7
    STRETCH_VAL     : integer := 1;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_WAIT = 0
    -- range is 0 to 7
    WAIT_VAL     : integer := 0
);
port (
    -- Control signals inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Internal reset input

    -- Program memory read
    mempsrd         : in  STD_LOGIC;

    -- Clock Control outputs
    smod            : out STD_LOGIC;  -- Baud rate Doubler
    stretch         : out STD_LOGIC_VECTOR(2 downto 0);

    -- Program memory waitstates
    mempsack        : out STD_LOGIC;

    mempsacki       : in  STD_LOGIC;

    -- Special function register interface
    sfrdatai        : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataclk      : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr         : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe           : in  STD_LOGIC
);
end component;

-----------------------------------------------------------------------
-- Control Processor Unit
-----------------------------------------------------------------------
component CONTROL_UNIT
generic (
    -- set this to number of instruction decodes
    INSTR_DECNUM    : integer := 119
);
port (
    -- Control signal inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Global reset input

    -- External memory read/write acknowledge input
    mempsack        : in  STD_LOGIC;
    memack          : in  STD_LOGIC;

    -- ISR input signals
    intreq          : in  STD_LOGIC;  -- Interrupt request

    -- Power Management Unit input
    stoppmu         : in  STD_LOGIC;  -- Stop mode

    -- OCI input signals
    debugreq        : in  STD_LOGIC;  -- Debug Request
    debugack        : in  STD_LOGIC;  -- Debug Acknowledge
    debugstep       : in  STD_LOGIC;  -- Debug Step
    a5instr         : in  STD_LOGIC;  -- 0xA5 instruction fetched

    -- debug fetch enable
    debugfetche     : out STD_LOGIC;

    -- Instruction register output
    instr           : out STD_LOGIC_VECTOR(7 downto 0);

    -- Cycle counter output
    cycle           : out INTEGER range 1 to 11;
    nrcycles        : out INTEGER range 1 to 11;

    -- MOVX Instruction
    movx            : out STD_LOGIC;

    -- Instruction decoder output
    codefetche      : out STD_LOGIC;  -- Opcode fetch enable
    datafetche      : out STD_LOGIC;  -- Data fetch enable
    rmwinstr        : out STD_LOGIC;  -- Read-Modify-Write Instr.

    -- ISR control outputs
    intack          : out STD_LOGIC;  -- Interrupt acknowledge flag
    intret          : out STD_LOGIC;  -- Interrupt return flag
    intcall         : out STD_LOGIC;  -- Interrupt call

    -- Program bus input
    memdatai        : in  STD_LOGIC_VECTOR(7 downto 0);

    -- decode vector (bit-order reversed on purpose!)
    instr_dec       : in  std_logic_vector(0 to INSTR_DECNUM-1);

    -- cycle decodes ...
    cyc1            : out std_logic;
    cyc2            : out std_logic;
    cyc3            : out std_logic;
    cyc4            : out std_logic;
    cyc5            : out std_logic;
    cyc6            : out std_logic
    -------------------------------------------------------------------
);
end component;

-----------------------------------------------------------------------
-- Interrupt Service Routine Unit
-----------------------------------------------------------------------
component ISR
generic (
    -- set to 1 to enable ff optimizations ...
    EN_FF_OPTS      : integer := 0;
    -- set this to number of instruction decodes
    INSTR_DECNUM    : integer := 119
);
port (
    -- Control signals inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Global reset input

    -- CPU input signals
    codefetche      : in  STD_LOGIC;  -- code fetch enable

    -- OCI input signals
    debugreq        : in  STD_LOGIC;
    a5instr         : in  STD_LOGIC;

    -- Timer 0 interrupt flags
    tf0             : in  STD_LOGIC;  -- Timer 0 overflow flag
    ie0             : in  STD_LOGIC;  -- Interrupt 0 edge detect

    -- Timer 1 interrupt flags
    tf1             : in  STD_LOGIC;  -- Timer 1 overflow flag
    ie1             : in  STD_LOGIC;  -- Interrupt 1 edge detect

    -- External interrupt pins
    int0            : in STD_LOGIC;  -- iex0
    int1            : in STD_LOGIC;  -- iex1
    int2            : in STD_LOGIC;  -- External Interrupt 2 pin
    int3            : in STD_LOGIC;  -- External Interrupt 3 pin
    int4            : in STD_LOGIC;  -- External Interrupt 4 pin
    int5            : in STD_LOGIC;  -- External Interrupt 5 pin
    int6            : in STD_LOGIC;  -- External Interrupt 6 pin
    int7            : in STD_LOGIC;  -- External Interrupt 6 pin

    -- Serial 0 interrupt flags
    ri0             : in STD_LOGIC;  -- Serial 0 receive flag
    ti0             : in STD_LOGIC;  -- Serial 0 transmit flag

    -- Interrupt return signal
    intret          : in STD_LOGIC;

    -- Interrupt acknowledge signal
    intack          : in STD_LOGIC;

    -- Interrupt priority registers
    intprior0       : out STD_LOGIC_VECTOR(1 downto 0);
    intprior1       : out STD_LOGIC_VECTOR(1 downto 0);

    -- Interrupt mask
    eal             : out STD_LOGIC;  -- Enable all interrupts
    eint0           : out STD_LOGIC;  -- external interrupt 0 mask
    eint1           : out STD_LOGIC;  -- external interrupt 1 mask

    -- Timer 0,1 acknowledge output
    t0ack           : out STD_LOGIC;  -- Timer 0 int. acknowledge
    t1ack           : out STD_LOGIC;  -- Timer 1 int. acknowledge

    -- External 0,1 acknowledge output
    int0ack         : out  STD_LOGIC;  -- External int0 acknowledge
    int1ack         : out  STD_LOGIC;  -- External int1 acknowledge

    -- Interrupt Service location
    intvect         : out STD_LOGIC_VECTOR(4 downto 0);

    -- Interrupt request signal
    intreq          : out STD_LOGIC;

    -- In Service register
    isreg           : out STD_LOGIC_VECTOR(3 downto 0);

    -- Special function register interface
    sfrdatai        : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataisr      : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr         : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe           : in  STD_LOGIC;

    -- decode vector (bit-order reversed on purpose!)
    instr_dec       : in  std_logic_vector(0 to INSTR_DECNUM-1);

    -- cycle decodes ...
    cyc3            : in  std_logic;
    cyc4            : in  std_logic
    -------------------------------------------------------------------
);
end component;

-----------------------------------------------------------------------
-- Interrupt control unit
-- (Derived from timer unit of original (non -s) 8051.)
-----------------------------------------------------------------------
component INTCTRL
generic (
	-- set to 1 to enable ff optimizations ...
	EN_FF_OPTS		: integer := 0
);
port (
    -- Control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Global reset input

    -- CPU input signals
    cycle        : in INTEGER range 1 to 11;

    -- Inputs
    t0           : in  STD_LOGIC;
    t1           : in  STD_LOGIC;
    t0ack        : in  STD_LOGIC;
    t1ack        : in  STD_LOGIC;
    int0         : in  STD_LOGIC;  -- External interrupt 0 input
    int1         : in  STD_LOGIC;  -- External interrupt 1 input
    int0ack      : in  STD_LOGIC;  -- External int0 acknowledge
    int1ack      : in  STD_LOGIC;  -- External int1 acknowledge

    -- Flags
    tf0          : out STD_LOGIC;
    tf1          : out STD_LOGIC;
    ie0          : out STD_LOGIC;  -- Interrupt 0 edge detect
    ie1          : out STD_LOGIC;  -- Interrupt 1 edge detect
    it0          : out STD_LOGIC;  -- Interrupt 0 edge/low sel.
    it1          : out STD_LOGIC;  -- Interrupt 1 edge/low sel.

    -- Timer outputs
    t1ov         : out STD_LOGIC;

    -- Special function register interface
    sfrdatai     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatatim   : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr      : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe        : in  STD_LOGIC;
	clk_ov12     : in  STD_LOGIC
	-------------------------------------------------------------------
);
end component;

-----------------------------------------------------------------------
-- Memory Control Unit
-----------------------------------------------------------------------
component MEMORY_CONTROL
generic (
    -- set to 1 to enable ff optimizations ...
    EN_FF_OPTS      : integer := 0;
    -- set this to number of instruction decodes
    INSTR_DECNUM    : integer := 119;
    -- APB data width - possible values are 8, 16 or 32
    APB_DWIDTH      : integer := 32;
    -- set to 1 to include second data pointer (DPTR1)
    INCL_DPTR1      : integer := 0;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT   : integer := 1
);
port (
    -- Control signals inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Global reset input

    -- External program memory read/write acknowledge input
    mempsack        : in  STD_LOGIC;

    -- External data memory read/write acknowledge input
    memacki         : in   STD_LOGIC;

    -- CPU input signals
    instr           : in  STD_LOGIC_VECTOR(7 downto 0);
    codefetche      : in  STD_LOGIC;  -- Opcode fetch enable
    debugfetche     : in  STD_LOGIC;
    datafetche      : in  STD_LOGIC;  -- Data fertch enable

    -- ALU input signals
    accreg          : in  STD_LOGIC_VECTOR(7 downto 0);
    bitvalue        : in  STD_LOGIC;
    cdjump          : in  STD_LOGIC;
    cyflag          : in  STD_LOGIC;

    -- Clock Control input signals
    stretch         : in  STD_LOGIC_VECTOR(2 downto 0);

    -- ISR input signals
    intreq          : in  STD_LOGIC;  -- Interrupt request
    intcall         : in  STD_LOGIC;  -- Interrupt call
    intvect         : in  STD_LOGIC_VECTOR(4 downto 0);

    -- PORTS input signals
    p2reg           : in  STD_LOGIC_VECTOR(7 downto 0);

    -- Internal Data Memory input
    ramdatai        : in  STD_LOGIC_VECTOR(7 downto 0);

    -- Power Management Unit input signals
    mempsrdrst      : in  STD_LOGIC;  -- memory read signal reset

    -- OCI control inputs
    a5instr         : in  STD_LOGIC;
    debugreq        : in  STD_LOGIC;
    debugprog       : in  STD_LOGIC;

    -- OCI control output
    flush           : out STD_LOGIC;

    -- External data memory read/write acknowledge output
    memack          : out  STD_LOGIC;

    -- ALU control output
    mem2acc         : out STD_LOGIC; -- Memory to ACC write enable

    -- RAM_SFR control outputs
    pclreg          : out STD_LOGIC_VECTOR(7 downto 0);
    pchreg          : out STD_LOGIC_VECTOR(7 downto 0);
    ram2memaddr     : out STD_LOGIC; -- RAM to MemAddr write enable

    -- Memory interface
    memdatai        : in  STD_LOGIC_VECTOR( 7 downto 0);
    memdatao        : out STD_LOGIC_VECTOR( 7 downto 0);
    memaddr         : out STD_LOGIC_VECTOR(15 downto 0);
    mempsrd         : out STD_LOGIC;  -- Program store read enable
    memwr           : out STD_LOGIC;  -- Memory write enable
    memrd           : out STD_LOGIC;  -- Memory read enable

    -- Special function register interface
    sfrdatai        : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatamcu      : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr         : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe           : in  STD_LOGIC;

    -- decode vector (bit-order reversed on purpose!)
    instr_dec       : in  std_logic_vector(0 to INSTR_DECNUM-1);

    -- cycle decodes ...
    cyc1            : in  std_logic;
    cyc2            : in  std_logic;
    cyc3            : in  std_logic;
    cyc5            : in  std_logic;

    -- APB interface
    psel            : out STD_LOGIC;
    pwrite          : out STD_LOGIC;
    penable         : out STD_LOGIC;
    paddr           : out STD_LOGIC_VECTOR(11 downto 0);
    pwdata          : out STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
    prdata          : in  STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
    pready          : in  STD_LOGIC;

    -- Program store memory write related signals
    DebugPswr       : in  STD_LOGIC;
    mempsacki       : in  STD_LOGIC;
    mempswr         : out STD_LOGIC

);
end component;

-----------------------------------------------------------------------
-- Power Management Unit
-----------------------------------------------------------------------
component PMU
port (
     -- Control signals inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Internal reset input

    mempsrdrst      : in  STD_LOGIC;
    pmuintreq       : in  STD_LOGIC;  -- Interrupt request from RSTCTRL

    -- Power Management Unit outputs
    -- 05/19/03 TFB - redesigned for neg.polarity, this should be globally
    -- buffered outside this block, and fed back to the majority of logic
    nrsto           : out STD_LOGIC;  -- Internal reset driver

    clkcpu_en       : out STD_LOGIC;  -- CPU Clock enable to external gate
    clkper_en       : out STD_LOGIC;  -- Peripheral Clock enable to external gate
    stoppmu         : out STD_LOGIC;  -- stop mode

    -- Special function register interface
    sfrdatai        : in  STD_LOGIC_VECTOR(7 downto 0);
    sfraddr         : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe           : in  STD_LOGIC
);
end component;

-----------------------------------------------------------------------
-- RSTCTRL Component
-----------------------------------------------------------------------
component RSTCTRL
port (
    -- Control signals inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Internal reset input
    nreset          : in  STD_LOGIC;  -- Hardware reset input
    WDOGRES         : in  STD_LOGIC;  -- Time-out signal from watchdog, active high
    WDOGRESN        : out STD_LOGIC;  -- Reset output to watchdog

    -- Interrupt requests
    intreq          : in  STD_LOGIC;  -- from ISR
    int0            : in  STD_LOGIC;  -- external interrupt 0
    int1            : in  STD_LOGIC;  -- external interrupt 1

    -- External interrupt type select
    it0             : in  STD_LOGIC;  -- interrupt 0 type select
    it1             : in  STD_LOGIC;  -- interrupt 1 type select

    -- In service register
    isreg           : in  STD_LOGIC_VECTOR(3 downto 0);

    -- Interrupt Priority registers
    intprior0       : in  STD_LOGIC_VECTOR(1 downto 0);
    intprior1       : in  STD_LOGIC_VECTOR(1 downto 0);

    -- Interrupt mask
    eal             : in  STD_LOGIC;  -- Enable all interrupts
    eint0           : in  STD_LOGIC;  -- external interrupt 0 mask
    eint1           : in  STD_LOGIC;  -- external interrupt 1 mask

    mempsrdrst      : out STD_LOGIC;  -- memory read signal reset
    pmuintreq       : out STD_LOGIC   -- Interrupt request to PMU
);
end component;

-----------------------------------------------------------------------
-- 256B Data Memory and Special Function Registers Control Unit
-----------------------------------------------------------------------
component RAM_SFR_CONTROL
generic (
    -- set this to number of instruction decodes
    INSTR_DECNUM    : integer := 119
);
port (
    -- Global control signals inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Global reset input

    -- External memory read/write acknowledge input
    mempsack        : in  STD_LOGIC;

    -- CPU input signals
    instr           : in  STD_LOGIC_VECTOR(7 downto 0);
    codefetche      : in  STD_LOGIC;
    debugfetche     : in  STD_LOGIC;

    -- ISR input signal
    intreq          : in  STD_LOGIC; -- interrupt request

    -- RAM and SFR input signals
    regsbank        : in  STD_LOGIC_VECTOR(1 downto 0);
    accreg          : in  STD_LOGIC_VECTOR(7 downto 0);
    aluresult       : in  STD_LOGIC_VECTOR(7 downto 0);

    -- Memory Control input signals
    pclreg          : in  STD_LOGIC_VECTOR(7 downto 0);
    pchreg          : in  STD_LOGIC_VECTOR(7 downto 0);

    -- Memory interface
    memdatai        : in  STD_LOGIC_VECTOR(7 downto 0);
    ram2memaddr     : in  STD_LOGIC; -- RAM to MemAddr write enable

    -- Internal SFR Bus
    ramsfrdata      : out STD_LOGIC_VECTOR(7 downto 0);

    -- RAM and SFR address bus
    ramsfraddr      : out STD_LOGIC_VECTOR(7 downto 0);
    ramsfraddr_e    : out STD_LOGIC_VECTOR(7 downto 0);

    -- Data file interface
    ramdatai        : in  STD_LOGIC_VECTOR(7 downto 0);
    ramdatao        : out STD_LOGIC_VECTOR(7 downto 0);
    ramwe           : out STD_LOGIC;  -- Data file write enable
    ramoe           : out STD_LOGIC;  -- Data file output enable
    ramoe_e         : out STD_LOGIC;  -- Data file output enable

    -- Special function register interface
    sfrdataalu      : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataclk      : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataisr      : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatamcu      : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataports    : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataser0     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatatim      : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataext      : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdatao        : out STD_LOGIC_VECTOR(7 downto 0);
    sfrwe           : out STD_LOGIC;  -- SFR write enable
    sfroe           : out STD_LOGIC;  -- SFR output enable

    -- decode vector (bit-order reversed on purpose!)
    instr_dec       : in  std_logic_vector(0 to INSTR_DECNUM-1);

    -- cycle decodes ...
    cyc1            : in  std_logic;
    cyc2            : in  std_logic;
    cyc3            : in  std_logic;
    cyc4            : in  std_logic;
    ramdata2memctrl : out std_logic_vector
);
end component;


-----------------------------------------------------------------------
-- On-Chip Debug Support Interface
-----------------------------------------------------------------------
component OCI
port (
    -- Control signals inputs
    clk             : in  STD_LOGIC;  -- Global clock input
    nrst            : in  STD_LOGIC;  -- Internal reset input

    -- CPU input signals
    cycle           : in  INTEGER range 1 to 11;
    nrcycles        : in  INTEGER range 1 to 11;
    codefetche      : in  STD_LOGIC;
    datafetche      : in  STD_LOGIC;
    debugfetche     : in  STD_LOGIC;

    -- Clock control input signals
    mempsack        : in  STD_LOGIC;

    -- Memory control input signal
    flush           : in  STD_LOGIC;

    -- Program memory input
    memdatai        : in  STD_LOGIC_VECTOR(7 downto 0);

    -- OCI inputs
    debugreq        : in  STD_LOGIC; -- Debug Request
    debugstep       : in  STD_LOGIC; -- Debug Step

    -- OCI outputs
    debugstepff     : out STD_LOGIC; -- Debug Step FF
    debugack        : out STD_LOGIC; -- Debug Acknowledge
    a5instr         : out STD_LOGIC; -- 0xA5 instruction fetched
    fetch           : out STD_LOGIC
);
end component;

-----------------------------------------------------------------------
-- Instruction decode
-----------------------------------------------------------------------
component instrdec
generic (
    -- set to 1 to include multiply and divide instruction functionality
    INCL_MUL_DIV_DA : INTEGER := 1;
    -- set this to number of instruction decodes
    INSTR_DECNUM    : INTEGER := 119
);
port (
    instr           : in  STD_LOGIC_VECTOR(7 downto 0);
    instr_dec       : out STD_LOGIC_VECTOR(0 to INSTR_DECNUM-1)
);
end component;

-----------------------------------------------------------------------
-- Signals
-----------------------------------------------------------------------
    -- Special function register interface
    signal int_sfrwe        : STD_LOGIC;
    signal int_sfroe        : STD_LOGIC;

    -- Aritmetic Logic Unit
    signal accreg           : STD_LOGIC_VECTOR(7 downto 0);
    signal aluresult        : STD_LOGIC_VECTOR(7 downto 0);
    signal regsbank         : STD_LOGIC_VECTOR(1 downto 0);
    signal bitvalue         : STD_LOGIC;
    signal cdjump           : STD_LOGIC;
    signal cyflag           : STD_LOGIC;
    signal sfrdataalu       : STD_LOGIC_VECTOR(7 downto 0);

    -- Clock Control Unit signals
    signal smod             : STD_LOGIC;  -- Baud rate Doubler
    signal stretch          : STD_LOGIC_VECTOR(2 downto 0);
    signal sfrdataclk       : STD_LOGIC_VECTOR(7 downto 0);
    signal mempsack         : STD_LOGIC;

    -- Control Processor Unit signals
    signal instr            : STD_LOGIC_VECTOR(7 downto 0);
    signal cycle            : INTEGER range 1 to 11;   -- Current machine cycle
    signal nrcycles         : INTEGER range 1 to 11;   -- Number of machine cycles
    signal codefetche       : STD_LOGIC; -- Opcode fetch enable
    signal datafetche       : STD_LOGIC; -- Data fetch enable
    signal rmwinstr         : STD_LOGIC; -- Read-Modify-Write Instr.
    signal intack           : STD_LOGIC; -- Interrupt acknowledge flag
    signal intret           : STD_LOGIC; -- Interrupt return flag
    signal intcall          : STD_LOGIC; -- Interrupt call
    signal debugstepff      : STD_LOGIC; -- Debug step flip-flop

    -- Interrupt Service Routine Unit signals
    signal intreq           : STD_LOGIC;  -- Interrupt request flag
    signal intvect          : STD_LOGIC_VECTOR(4 downto 0);
    signal isreg            : STD_LOGIC_VECTOR(3 downto 0);
    signal intprior0        : STD_LOGIC_VECTOR(1 downto 0);
    signal intprior1        : STD_LOGIC_VECTOR(1 downto 0);
    signal ie0              : STD_LOGIC;
    signal ie1              : STD_LOGIC;
    signal int0ack          : STD_LOGIC;
    signal int1ack          : STD_LOGIC;
    signal eal              : STD_LOGIC;  -- all enable
    signal eint0            : STD_LOGIC;  -- int0 enable
    signal eint1            : STD_LOGIC;  -- int1 enable
    signal int0_n           : STD_LOGIC;  -- inverted version of int0 input
    signal int1_n           : STD_LOGIC;  -- inverted version of int1 input
    signal sfrdataisr       : STD_LOGIC_VECTOR(7 downto 0);
    signal sfrdatatim       : STD_LOGIC_VECTOR(7 downto 0); -- sfr data from INTCTRL unit which is largely
                                                            --  identical to timer from original 8051, hence
                                                            --  the "tim" suffix to the signal name.


    -- Power Management Unit
    signal mempsrdrst       : STD_LOGIC;  -- memory read signal reset
    signal stoppmu          : STD_LOGIC;  -- stop mode
    signal pmuintreq        : STD_LOGIC;

    -- Port registers unit signals
    --  signal sfrdataports   : STD_LOGIC_VECTOR(7 downto 0);
    --  signal int_port2o     : STD_LOGIC_VECTOR(7 downto 0);

    -- Memory Control Unit signals
    signal mem2acc          : STD_LOGIC; -- Memory to ACC write enable
    signal pclreg           : STD_LOGIC_VECTOR(7 downto 0);
    signal pchreg           : STD_LOGIC_VECTOR(7 downto 0);
    signal sfrdatamcu       : STD_LOGIC_VECTOR(7 downto 0);
    signal ram2memaddr      : STD_LOGIC; -- RAM to MemAddr write enable
    signal mem_datao        : STD_LOGIC_VECTOR(7 downto 0);
    signal mem_addr         : STD_LOGIC_VECTOR(15 downto 0);
    signal memps_rd         : STD_LOGIC;
    signal mem_wr           : STD_LOGIC;
    signal mem_rd           : STD_LOGIC;
    signal memack           : STD_LOGIC;

    -- 256B Data Memory and Special Function Registers Control Unit
    signal ramsfrdata       : STD_LOGIC_VECTOR(7 downto 0);
    signal sfrdataout       : STD_LOGIC_VECTOR(7 downto 0);
    signal ramsfraddr       : STD_LOGIC_VECTOR(7 downto 0);
    signal ramsfraddr_e     : STD_LOGIC_VECTOR(7 downto 0);
    signal ramdataout       : STD_LOGIC_VECTOR(7 downto 0);

    -- On-Chip Debug Support interface
    signal flush_int        : STD_LOGIC;
    signal a5instr          : STD_LOGIC;
    signal debugfetche      : STD_LOGIC;
    signal debug_ack        : STD_LOGIC;

    -- Serial Interface Unit 0 signals
    --  signal ri0            : STD_LOGIC;  -- Serial 0 receive flag
    --  signal ti0            : STD_LOGIC;  -- Serial 0 transmit flag
    --  signal sfrdataser0    : STD_LOGIC_VECTOR(7 downto 0);

    -- Timer/Counter 0 and 1 signals
    --  signal tf0            : STD_LOGIC;  -- Timer 0 overflow flag
    --  signal tf1            : STD_LOGIC;  -- Timer 1 overflow flag
    --  signal ie0            : STD_LOGIC;  -- Interrupt 0 edge detect
    --  signal ie1            : STD_LOGIC;  -- Interrupt 1 edge detect
    --  signal it0            : STD_LOGIC;  -- Interrupt 0 edge/low sel.
    --  signal it1            : STD_LOGIC;  -- Interrupt 1 edge/low sel.
    --  signal t1ov           : STD_LOGIC;  -- Timer 1 overflow output
    --  signal sfrdatatim     : STD_LOGIC_VECTOR(7 downto 0);

    signal sfrdatai_lat     : std_logic_vector(7 downto 0);

    signal instr_dec        : std_logic_vector(0 to INSTR_DECNUM-1);
    signal cyc1             : std_logic;
    signal cyc2             : std_logic;
    signal cyc3             : std_logic;
    signal cyc4             : std_logic;
    signal cyc5             : std_logic;
    signal cyc6             : std_logic;

    signal nrsto_int        : std_logic;

    signal ramdata2memctrl  : std_logic_vector(7 downto 0);

-----------------------------------------------------------------------

begin

    nrsto <= nrsto_int;

    --------------------------------------------------------------------
    -- Memory interface
    --------------------------------------------------------------------
    memdatao <= mem_datao;
    memaddr <= mem_addr;
    mempsrd <= memps_rd;
    memwr <= mem_wr;
    memrd <= mem_rd;
    mempsacko <= mempsack;

    --------------------------------------------------------------------
    -- Data file interface outputs
    --------------------------------------------------------------------
    ramdatao <= ramdataout;
    ramaddr <= ramsfraddr;
    ramaddr_e <= ramsfraddr_e;

    --------------------------------------------------------------------
    -- External Special function register interface outputs
    --------------------------------------------------------------------
    sfrdatao <= sfrdataout;
    sfraddr <= ramsfraddr(6 downto 0);
    sfrwe <= int_sfrwe;
    sfroe <= int_sfroe;

    --------------------------------------------------------------------
    -- Debug acknowledge
    --------------------------------------------------------------------
    debugack <= debug_ack;

    --------------------------------------------------------------------
    -- Flush
    --------------------------------------------------------------------
    flush <= flush_int;

    --------------------------------------------------------------------
    -- Acc Register
    --------------------------------------------------------------------
    acc <= accreg;

    -----------------------------------------------------------------
    -- Arithmetic Logic Unit
    -----------------------------------------------------------------
    U_ALU : ALU
    generic map (
        INCL_MUL_DIV_DA => INCL_MUL_DIV_DA,
        INSTR_DECNUM    => INSTR_DECNUM
    )
    port map (
        clk             => clk,
        nrst            => nrst,
        mempsack        => mempsack,
        memdatai        => memdatai,
        mem2acc         => mem2acc,
        ramsfrdata      => ramsfrdata,
        accreg          => accreg,
        aluresult       => aluresult,
        regsbank        => regsbank,
        bitvalue        => bitvalue,
        cdjump          => cdjump,
        cyflag          => cyflag,
        sfrdatai        => sfrdatai_lat,
        sfrdataalu      => sfrdataalu,
        sfraddr         => ramsfraddr(6 downto 0),
        sfrwe           => int_sfrwe,
        instr_dec       => instr_dec,
        cyc1            => cyc1,
        cyc2            => cyc2,
        cyc3            => cyc3,
        cyc4            => cyc4,
        cyc5            => cyc5
    );

    -----------------------------------------------------------------
    -- Clock Control Unit
    -----------------------------------------------------------------
    U_CLKCTRL : CLOCK_CONTROL
    generic map (
        EN_FF_OPTS      => EN_FF_OPTS,
        VARIABLE_STRETCH=> VARIABLE_STRETCH,
        STRETCH_VAL     => STRETCH_VAL,
        VARIABLE_WAIT   => VARIABLE_WAIT,
        WAIT_VAL        => WAIT_VAL
    )
    port map (
        clk             => clk,
        nrst            => nrst,
        mempsrd         => memps_rd,
        smod            => smod,
        stretch         => stretch,
        mempsack        => mempsack,
        mempsacki       => mempsacki,
        sfrdatai        => sfrdatai_lat,
        sfrdataclk      => sfrdataclk,
        sfraddr         => ramsfraddr(6 downto 0),
        sfrwe           => int_sfrwe
    );

    -----------------------------------------------------------------
    -- Control Processor Unit
    -----------------------------------------------------------------
    U_CPU : CONTROL_UNIT
    generic map (
        INSTR_DECNUM    => INSTR_DECNUM
    )
    port map (
        clk             => clk,
        nrst            => nrst,
        mempsack        => mempsack,
        memack          => memack,
        intreq          => intreq,
        stoppmu         => stoppmu,
        debugreq        => debugreq,
        debugack        => debug_ack,
        debugstep       => debugstepff,
        a5instr         => a5instr,
        debugfetche     => debugfetche,
        movx            => movx,
        instr           => instr,
        cycle           => cycle,
        nrcycles        => nrcycles,
        codefetche      => codefetche,
        datafetche      => datafetche,
        rmwinstr        => rmwinstr,
        intack          => intack,
        intret          => intret,
        intcall         => intcall,
        memdatai        => memdatai,
        instr_dec       => instr_dec,
        cyc1            => cyc1,
        cyc2            => cyc2,
        cyc3            => cyc3,
        cyc4            => cyc4,
        cyc5            => cyc5,
        cyc6            => cyc6
    );

    -----------------------------------------------------------------
    -- Interrupt Service Routine Unit
    -----------------------------------------------------------------
    U_ISR : ISR
    generic map (
        EN_FF_OPTS      => EN_FF_OPTS,
        INSTR_DECNUM    => INSTR_DECNUM
    )
    port map (
        clk             => clk,
        nrst            => nrst,
        codefetche      => codefetche,
        debugreq        => debugreq,
        a5instr         => a5instr,
        int0            => '0',
        int1            => '0',
        int2            => '0',
        int3            => '0',
        int4            => '0',
        int5            => '0',
        int6            => '0',
        int7            => '0',
        tf0             => '0',
        ie0             => ie0,
        tf1             => '0',
        ie1             => ie1,
        ri0             => '0',
        ti0             => '0',
        intret          => intret,
        intack          => intack,
        intprior0       => intprior0,
        intprior1       => intprior1,
        eal             => eal,
        eint0           => eint0,
        eint1           => eint1,
        t0ack           => open,
        t1ack           => open,
        int0ack         => int0ack,
        int1ack         => int1ack,
        intvect         => intvect,
        intreq          => intreq,
        isreg           => isreg,
        sfrdatai        => sfrdatai_lat,
        sfrdataisr      => sfrdataisr,
        sfraddr         => ramsfraddr(6 downto 0),
        sfrwe           => int_sfrwe,
        instr_dec       => instr_dec,
        cyc3            => cyc3,
        cyc4            => cyc4
    );

    -----------------------------------------------------------------
    -- Interrupt control unit
    -- (This block is derived from the timer unit contained in the
    -- original (non -s) 8051.)
    -----------------------------------------------------------------

    -- ************************** NOTE ******************************
    -- int0 and int1 are treated as active low or falling edge
    -- sensitive interrupts in INTCTRL (just as in the timer unit of
    -- original 8051). The idea is to try and maintain the original
    -- timer RTL as much as possible within the INTCTRL block.
    --    However, at the top level, int0 and int1 are active high
    -- or rising edge sensitive. Hence the inversion of int0 and int1
    -- immediately below.
    --    The polarity of the interrupts at the top level could be
    -- changed, which would mean that the inversion would no longer
    -- be required.
    --
    -- **************************************************************

    int0_n <= not(int0);
    int1_n <= not(int1);

    U_INTCTRL : INTCTRL
    generic map (
        EN_FF_OPTS      =>EN_FF_OPTS
    )
    port map (
        clk             => clk,
        nrst            => nrst,
        cycle           => cycle,
        t0              => '1',
        t1              => '1',
        t0ack           => '0',
        t1ack           => '0',
        int0            => int0_n,
        int1            => int1_n,
        int0ack         => int0ack,
        int1ack         => int1ack,
        tf0             => open,
        tf1             => open,
        ie0             => ie0,
        ie1             => ie1,
        it0             => open,
        it1             => open,
        t1ov            => open,
        sfrdatai        => sfrdatai_lat,
        sfrdatatim      => sfrdatatim,
        sfraddr         => ramsfraddr(6 downto 0),
        sfrwe           => int_sfrwe,
        clk_ov12        => '0'
    );

    -----------------------------------------------------------------
    -- External Memory Control Unit
    -----------------------------------------------------------------
    U_MEMCTRL : MEMORY_CONTROL
    generic map (
        EN_FF_OPTS      => EN_FF_OPTS,
        INSTR_DECNUM    => INSTR_DECNUM,
        APB_DWIDTH      => APB_DWIDTH,
        INCL_DPTR1      => INCL_DPTR1,
        VARIABLE_WAIT   => VARIABLE_WAIT
    )
    port map (
        clk             => clk,
        nrst            => nrst,
        mempsack        => mempsack,
        memack          => memack,
        memacki         => memacki,
        instr           => instr,
        codefetche      => codefetche,
        debugfetche     => debugfetche,
        datafetche      => datafetche,
        accreg          => accreg,
        bitvalue        => bitvalue,
        cdjump          => cdjump,
        cyflag          => cyflag,
        stretch         => stretch,
        intreq          => intreq,
        intcall         => intcall,
        intvect         => intvect,
        p2reg           => "00000000",
        ramdatai        => ramdata2memctrl,
        mempsrdrst      => mempsrdrst,
        a5instr         => a5instr,
        debugreq        => debugreq,
        debugprog       => debugprog,
        flush           => flush_int,
        mem2acc         => mem2acc,
        pclreg          => pclreg,
        pchreg          => pchreg,
        ram2memaddr     => ram2memaddr,
        memdatai        => memdatai,
        memdatao        => mem_datao,
        memaddr         => mem_addr,
        mempsrd         => memps_rd,
        memwr           => mem_wr,
        memrd           => mem_rd,
        sfrdatai        => sfrdatai_lat,
        sfrdatamcu      => sfrdatamcu,
        sfraddr         => ramsfraddr(6 downto 0),
        sfrwe           => int_sfrwe,
        instr_dec       => instr_dec,
        cyc1            => cyc1,
        cyc2            => cyc2,
        cyc3            => cyc3,
        cyc5            => cyc5,
        psel            => psel,
        pwrite          => pwrite,
        penable         => penable,
        paddr           => paddr,
        pwdata          => pwdata,
        prdata          => prdata,
        pready          => pready,
        DebugPswr       => DebugPswr,
        mempsacki       => mempsacki,
        mempswr         => mempswr
    );

    -----------------------------------------------------------------
    -- Power Management Unit
    -----------------------------------------------------------------
    U_PMU : PMU
    port map (
        clk             => clk,
        nrst            => nrsto_int,
        nrsto           => nrsto_int,
        clkcpu_en       => open,
        clkper_en       => open,
        pmuintreq       => pmuintreq,
        mempsrdrst      => mempsrdrst,
        stoppmu         => stoppmu,
        sfrdatai        => sfrdataout,
        sfraddr         => ramsfraddr(6 downto 0),
        sfrwe           => int_sfrwe
    );

    -----------------------------------------------------------------
    -- Reset Control Unit
    -----------------------------------------------------------------
    U_RSTCTRL : RSTCTRL
    port map (
        clk             => clk,
        nrst            => nrsto_int,
        nreset          => nreset,
        WDOGRES         => WDOGRES,
        WDOGRESN        => WDOGRESN,
        intreq          => intreq,
        int0            => '1',
        int1            => '1',
        it0             => '0',
        it1             => '0',
        isreg           => isreg,
        intprior0       => intprior0,
        intprior1       => intprior1,
        eal             => eal,
        eint0           => eint0,
        eint1           => eint1,
        mempsrdrst      => mempsrdrst,
        pmuintreq       => pmuintreq
    );

    -----------------------------------------------------------------
    -- 256B Data Memory and Special Function Registers Control Unit
    -----------------------------------------------------------------
    U_RAMSFRCTRL : RAM_SFR_CONTROL
    generic map (
        INSTR_DECNUM    => INSTR_DECNUM
    )
    port map (
        clk             => clk,
        nrst            => nrst,
        mempsack        => mempsack,
        instr           => instr,
        codefetche      => codefetche,
        debugfetche     => debugfetche,
        intreq          => intreq,
        regsbank        => regsbank,
        accreg          => accreg,
        aluresult       => aluresult,
        pclreg          => pclreg,
        pchreg          => pchreg,
        memdatai        => memdatai,
        ram2memaddr     => ram2memaddr,
        ramsfrdata      => ramsfrdata,
        ramsfraddr      => ramsfraddr,
        ramsfraddr_e    => ramsfraddr_e,
        ramdatai        => ramdatai,
        ramdatao        => ramdataout,
        ramwe           => ramwe,
        ramoe           => ramoe,
        ramoe_e         => ramoe_e,
        sfrdataalu      => sfrdataalu,
        sfrdataclk      => sfrdataclk,
        sfrdataisr      => sfrdataisr,
        sfrdatamcu      => sfrdatamcu,
        sfrdataports    => "00000000",
        sfrdataser0     => "00000000",
        sfrdatatim      => sfrdatatim,
        sfrdataext      => sfrdatai,
        sfrdatao        => sfrdataout,
        sfrwe           => int_sfrwe,
        sfroe           => int_sfroe,
        instr_dec       => instr_dec,
        cyc1            => cyc1,
        cyc2            => cyc2,
        cyc3            => cyc3,
        cyc4            => cyc4,
        ramdata2memctrl => ramdata2memctrl
    );

    -----------------------------------------------------------------
    -- On-Chip Debug Support interface
    -----------------------------------------------------------------
    U_OCI : OCI
    port map (
        clk             => clk,
        nrst            => nrst,
        cycle           => cycle,
        nrcycles        => nrcycles,
        codefetche      => codefetche,
        datafetche      => datafetche,
        debugfetche     => debugfetche,
        mempsack        => mempsack,
        flush           => flush_int,
        memdatai        => memdatai,
        debugreq        => debugreq,
        debugstep       => debugstep,
        debugstepff     => debugstepff,
        debugack        => debug_ack,
        a5instr         => a5instr,
        fetch           => fetch
    );

    --------------------------------------------------------------------
    -- TFB added 9/19/03 to latch sfrdatai to various blocks to reduce
    -- comb.logic consumption
    -- sample sfrdatai on falling edge for plenty of hold time
    en_ff_1:
    if EN_FF_OPTS=1 generate
        process(clk,nrst)
        begin
            if nrst='0' then
                sfrdatai_lat <= (others => '0');
            elsif clk'event and clk='0' then
                sfrdatai_lat <= sfrdataout;
            end if;
        end process;
    end generate;

    en_ff_0:
    if EN_FF_OPTS=0 generate
        sfrdatai_lat <= sfrdataout;
    end generate;

    -----------------------------------------------------------------
    -- Instruction decode block
    -----------------------------------------------------------------
    u_instrdec : instrdec
    generic map (
        INCL_MUL_DIV_DA => INCL_MUL_DIV_DA,
        INSTR_DECNUM    => INSTR_DECNUM
    )
    port map (
        instr           => instr,
        instr_dec       => instr_dec
    );

end STR;
