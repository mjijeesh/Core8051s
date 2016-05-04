-------------------------------------------------------------------------------
-- Copyright 2006 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- File:            tb_verif.vhd
--
-- Description:     Verification Testbench for Core8051s
--
-- Rev:             1.2  Dec06
--
-- Notes:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity tb_verif is
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
        FAMILY     : integer range 0 to 21 := 0;

        TESTNAME    : STRING    := "test001";
        TESTPATH    : STRING    := "tests"
    );
end tb_verif;

--*******************************************************************--

architecture SIM of tb_verif is

    -----------------------------------------------------------------
    -- Test Bench file names
    -----------------------------------------------------------------
    constant EXTROMFILE   : STRING := "extrom.hex";
    constant ACSCOMPFILE  : STRING := "acscomp.txt";
    constant ACSDIFFFILE  : STRING := "acsdiff.txt";

    -----------------------------------------------------------------
    -- Test Bench environment parameters
    -----------------------------------------------------------------
    constant INTRAMSIZE   : INTEGER := 8;  -- Internal RAM size index
    constant INTROMSIZE   : INTEGER := 12; -- Internal ROM size index
    constant EXTRAMSIZE   : INTEGER := 16; -- External RAM size index
    constant EXTROMSIZE   : INTEGER := 16; -- External ROM size index
    constant CLOCKPERIOD  : TIME    := 20 ns; -- Clock pulse period
    constant CLOCKDUTY    : INTEGER := 50; -- Duty cycle (0-100%)
    constant ACSCOMPMODE  : INTEGER := 2;  -- ACS Comparator mode
    -- ACS Comparator mode description:
    -- 0 - no occurrence
    -- 1 - the COMPFILE writer
    -- 2 - vectors comparator

    -- ASCII file for loading program ROM
    --constant ROMFILE : STRING := TESTPATH & '/' & TESTNAME & '/' & EXTROMFILE;
    constant ROMFILE : STRING := "opcode_" & TESTNAME & "_" & EXTROMFILE;

    -----------------------------------------------------------------
    component EXTERNAL_CLOCK_GENERATOR
    -----------------------------------------------------------------
    generic (
        PERIOD      : TIME    := 100 ns; -- Clock pulse period
        DUTY        : INTEGER := 50      -- Duty cycle (0-100%)
    );
    port (
        clk         : out STD_LOGIC
    );
    end component;

    -----------------------------------------------------------------
    component EXTERNAL_ACCESS_COMPARATOR
    -----------------------------------------------------------------
    generic (
        MODE        : INTEGER := 2; -- Comparator mode
                                    -- 0 - no occurrence
                                    -- 1 - the COMPFILE writer
                                    -- 2 - vectors comparator
        DATAWIDTH   : INTEGER := 8;
        ADDRWIDTH   : INTEGER := 16;
        TESTNAME    : STRING  := "DEFAULT";
        TESTPATH    : STRING  := "TESTS";
        COMPFILE    : STRING  := "ACSCOMP.TXT"; -- Compare file
        DIFFFILE    : STRING  := "ACSDIFF.TXT"  -- Differ. file
    );
    port (
        rst         : in  STD_LOGIC;
        addrbus     : in  STD_LOGIC_VECTOR (ADDRWIDTH-1 downto 0);
        databus     : in  STD_LOGIC_VECTOR (DATAWIDTH-1 downto 0);
        wr          : in  STD_LOGIC;
        PWRITE      : in  STD_LOGIC;
        PENABLE     : in  STD_LOGIC;
        PWDATA      : in  STD_LOGIC_VECTOR (7 downto 0);
        PADDR       : in  STD_LOGIC_VECTOR (11 downto 0)

    );
    end component;

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

    -----------------------------------------------------------------
    component USER_ROM
    -----------------------------------------------------------------
    generic (
        WIDTH   :    integer    := 8;            -- data width
        DEPTH   :    integer    := 4096;        -- ROM depth
        ASIZE   :    integer    := 12;            -- address width
        ROMFILE :    string     := "rom.hex"
    );
    port (
        clk     :    in  std_logic;  -- Clock input
        -- ROM address (for now, fixed for depth of 256)
        addr    :    in  std_logic_vector(ASIZE-1 downto 0);
        -- ROM data out (for now, fixed for width of 8), this will be
        -- available on next rising edge of clk
        dout    :    out std_logic_vector(WIDTH-1 downto 0)
    );
    end component;

    -----------------------------------------------------------------
    component USER_RAM
    -----------------------------------------------------------------
    generic (
        WIDTH   :    integer    := 8;            -- data width
        DEPTH   :    integer    := 256;            -- RAM depth
        ASIZE   :    integer    := 8            -- address width
    );
    port (
        -- RAM write signals
        wclk    :    in    std_logic;  -- write clock input
        waddr   :    in    std_logic_vector(ASIZE-1 downto 0);
        wr      :    in    std_logic;    -- write enable
        din     :    in    std_logic_vector(WIDTH-1 downto 0);
        -- RAM read signals
        rclk    :    in    std_logic;  -- read clock input
        raddr   :    in    std_logic_vector(ASIZE-1 downto 0);
        rd      :    in    std_logic;    -- read enable
        dout    :    out    std_logic_vector(WIDTH-1 downto 0)
    );
    end component;

    -----------------------------------------------------------------
    -- Test Bench interconnection signals
    -----------------------------------------------------------------

    -- External Memory interface
    signal MEMPSACKI    : std_logic;
    signal MEMACKI      : std_logic;
    signal MEMDATAI     : std_logic_vector( 7 downto 0);
    signal MEMDATAO     : std_logic_vector( 7 downto 0);
    signal MEMADDR      : std_logic_vector(15 downto 0);
    signal MEMPSRD      : std_logic;  -- Program store read enable
    signal MEMWR        : std_logic;  -- Memory write enable
    signal MEMRD        : std_logic;  -- Memory read enable

    signal user_rom_dout: std_logic_vector( 7 downto 0);
    signal ext_ram_dout : std_logic_vector( 7 downto 0);

    signal PWRITE      : std_logic;
    signal PENABLE     : std_logic;
    signal PSEL        : std_logic;
    signal PADDR       : std_logic_vector(11 downto 0);
    signal PWDATA      : std_logic_vector(APB_DWIDTH-1 downto 0);
    signal PRDATA      : std_logic_vector(APB_DWIDTH-1 downto 0);
    signal PREADY      : std_logic;
    signal PSLVERR     : std_logic;

    signal apb_write    : std_logic;
    signal apb_read     : std_logic;

    -----------------------------------------------------------------
    -- Miscellaneous signals
    -----------------------------------------------------------------
    signal reset        : STD_LOGIC;  -- Global reset input
    signal nreset       : STD_LOGIC;  -- Inverted global reset
    signal SYSCLK       : STD_LOGIC;  -- Clock signal
    signal NSYSCLK      : STD_LOGIC;  -- Inverted clock
    signal VCC_sig      : STD_LOGIC;
    signal GND_sig      : STD_LOGIC;
    signal zeroes       : STD_LOGIC_VECTOR(31 downto 0);

    begin

    -----------------------------------------------------------------
    -- Initialize signals
    -----------------------------------------------------------------
    nreset <= not(reset);
    NSYSCLK <= not(SYSCLK);
    vcc : VCC_sig <= '1';
    gnd : GND_sig <= '0';
    zeroes <= (others => '0');

    -----------------------------------------------------------------
    -- Reset signal
    -----------------------------------------------------------------
    process
    begin
        reset <= '1';
        wait for (CLOCKPERIOD*5);
        reset <= '0';
        wait;
    end process;

    -----------------------------------------------------------------
    -- Test Bench Clock Generator unit
    -----------------------------------------------------------------
    U_EXT_CLOCK : EXTERNAL_CLOCK_GENERATOR
    generic map (
        PERIOD  => CLOCKPERIOD,
        DUTY    => CLOCKDUTY
    )
    port map (
        clk     => SYSCLK
    );

    -----------------------------------------------------------------
    -- Test Bench ACS Comparator
    -----------------------------------------------------------------
    U_EXT_ACSCOMP : EXTERNAL_ACCESS_COMPARATOR
    generic map (
        MODE        => ACSCOMPMODE,
        DATAWIDTH   => 8,
        ADDRWIDTH   => 16,
        TESTNAME    => TESTNAME,
        TESTPATH    => TESTPATH,
        COMPFILE    => ACSCOMPFILE,
        DIFFFILE    => ACSDIFFFILE
    )
    port map (
        rst         => reset,
        addrbus     => MEMADDR(15 downto 0),
        databus     => MEMDATAO,
        wr          => MEMWR,
        PWRITE      => PWRITE,
        PENABLE     => PENABLE,
        PWDATA      => PWDATA(7 downto 0),
        PADDR       => PADDR(11 downto 0)
    );

    -----------------------------------------------------------------
    -- Instantiate Core8051s
    -----------------------------------------------------------------
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
        CLK         => SYSCLK,
        NSYSRESET   => nreset,
        PRESETN     => open,
        WDOGRES     => GND_sig,
        WDOGRESN    => open,
        INT0        => GND_sig,
        INT1        => GND_sig,
        MOVX        => open,
        MEMPSACKI   => VCC_sig,
        MEMACKI     => VCC_sig,
        MEMDATAI    => MEMDATAI,
        MEMDATAO    => MEMDATAO,
        MEMADDR     => MEMADDR,
        MEMPSRD     => MEMPSRD,
        MEMWR       => MEMWR,
        MEMRD       => MEMRD,
        TCK         => VCC_sig,
        TMS         => VCC_sig,
        TDI         => GND_sig,
        TDO         => open,
        TRSTN       => VCC_sig,
        BREAKIN     => GND_sig,
        BREAKOUT    => open,
        MEMBANK     => zeroes(3 downto 0),
        DBGMEMPSWR  => open,
        TRIGOUT     => open,
        AUXOUT      => open,
        PWRITE      => PWRITE,
        PENABLE     => PENABLE,
        PSEL        => open,
        PADDR       => PADDR,
        PWDATA      => PWDATA,
        PRDATA      => PRDATA,
        PREADY      => VCC_sig,
        PSLVERR     => GND_sig
    );

    ------------------------------------------------------------
    -- Make APB space appear as a RAM to facilitate tests which
    -- read back values previously written.
    ------------------------------------------------------------
    apb_write <= PWRITE and PENABLE;
    apb_read <= not(PWRITE) and PENABLE;

    APB_space : USER_RAM
    generic map (
        WIDTH   => APB_DWIDTH,
        DEPTH   => 4096,
        ASIZE   => 12
    )
    port map (
        wclk    => SYSCLK,
        waddr   => PADDR,
        wr      => apb_write,
        din     => PWDATA,
        rclk    => NSYSCLK,
        raddr   => PADDR,
        rd      => apb_read,
        dout    => PRDATA
    );

    ------------------------------------------------------------
    -- Behavioral program ROM
    ------------------------------------------------------------
    program_ROM : USER_ROM
    generic map (
        WIDTH   => 8,
        DEPTH   => 65536,
        ASIZE   => 16,
        ROMFILE => ROMFILE
    )
    port map (
        clk     => NSYSCLK,
        addr    => MEMADDR(15 downto 0),
        dout    => user_rom_dout
    );

    ------------------------------------------------------------
    -- Behavioral model of external RAM
    ------------------------------------------------------------
    external_RAM :USER_RAM
    generic map (
        WIDTH   => 8,
        DEPTH   => 65536,
        ASIZE   => 16
    )
    port map (
        wclk    => SYSCLK,
        waddr   => MEMADDR(15 downto 0),
        wr      => MEMWR,
        din     => MEMDATAO,
        rclk    => NSYSCLK,
        raddr   => MEMADDR(15 downto 0),
        rd      => MEMRD,
        dout    => ext_ram_dout
    );

    MEMDATAI <= user_rom_dout when (MEMPSRD = '1') else ext_ram_dout;

end SIM;
