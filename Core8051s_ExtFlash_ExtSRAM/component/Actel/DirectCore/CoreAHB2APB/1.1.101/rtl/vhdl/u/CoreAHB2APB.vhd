--  --========================================================================--
--
--  CoreAHB2APB
--
--  ----------------------------------------------------------------------------
--  Purpose             : Converts AHB peripheral transfers to APB transfers
--  --========================================================================--

library ieee;
use     ieee.std_logic_1164.all;

entity CoreAHB2APB is
  port(
    -- Global signals ----------------------------------------------------------
    HCLK        : in  std_logic;                     -- AHB Clock
    HRESETn     : in  std_logic;                     -- AHB Reset

    -- AHB Slave inputs --------------------------------------------------------
    HADDR       : in  std_logic_vector(27 downto 0); -- Address bus
    HTRANS      : in  std_logic_vector(1 downto 0);  -- Transfer type
    HWRITE      : in  std_logic;                     -- Transfer direction
    HWDATA      : in  std_logic_vector(31 downto 0); -- Write data bus
    HSEL        : in  std_logic;                     -- Bridge slave select
    HREADY      : in  std_logic;                     -- Transfer done input

    -- APB Master inputs -------------------------------------------------------
    PRDATA      : in  std_logic_vector(31 downto 0); -- Read data bus

    -- AHB Slave outputs -------------------------------------------------------
    HRDATA      : out std_logic_vector(31 downto 0); -- Read data bus
    HREADYOUT   : out std_logic;                     -- Transfer done output
    HRESP       : out std_logic_vector(1 downto 0);  -- Transfer response

    -- APB Master outputs ------------------------------------------------------
    PWDATA      : out std_logic_vector(31 downto 0); -- Write data bus
    PENABLE     : out std_logic;                     -- Data valid strobe
    PSELECT     : out std_logic_vector(15 downto 0); -- Select bus
    PADDR       : out std_logic_vector(23 downto 0); -- Address bus
    PWRITE      : out std_logic                      -- Transfer direction
    );
end CoreAHB2APB;



architecture synth of CoreAHB2APB is

-- Block Overview
--
--   The 16-Slot APB Bridge provides an interface between the high-speed AHB
-- domain and the low-power APB domain. The Bridge appears as a slave on AHB,
-- whereas on APB, it is the master. Read and write transfers on the AHB are
-- converted into corresponding transfers on the APB. As the APB is not
-- pipelined, wait states are added during transfers to and from the APB when
-- the AHB is required to wait for the APB protocol.
--
-- The AHB to APB Bridge comprises of a state machine, which is used to control
-- the generation of the APB and AHB output signals, and the address decoding
-- logic which is used to generate the APB peripheral select lines.
-- All registers used in the system are clocked from the rising edge of the
-- system clock HCLK, and use the asynchronous reset HRESETn.
--
-- Ahb2Apb states:
--  ST_IDLE     is APB bus idle state entered on reset
--  ST_READ     is read setup
--  ST_RENABLE  is read enable
--  ST_WWAIT    is write wait state
--  ST_WRITE    is write setup
--  ST_WENABLE  is write enable
--  ST_WRITEP   is write setup with pending transfer
--  ST_WENABLEP is write enable with pending transfer

--------------------------------------------------------------------------------
-- Constant declarations
--------------------------------------------------------------------------------

  constant ST_IDLE     : std_logic_vector(3 downto 0) := "0000";
  constant ST_READ     : std_logic_vector(3 downto 0) := "0001";
  constant ST_RENABLE  : std_logic_vector(3 downto 0) := "0100";
  constant ST_WWAIT    : std_logic_vector(3 downto 0) := "1001";
  constant ST_WRITE    : std_logic_vector(3 downto 0) := "1010";
  constant ST_WENABLE  : std_logic_vector(3 downto 0) := "1110";
  constant ST_WRITEP   : std_logic_vector(3 downto 0) := "1011";
  constant ST_WENABLEP : std_logic_vector(3 downto 0) := "1111";

-- EASY Peripherals address decoding values:
  constant S0BASE     : std_logic_vector(27 downto 24) := "0000";
  constant S1BASE     : std_logic_vector(27 downto 24) := "0001";
  constant S2BASE     : std_logic_vector(27 downto 24) := "0010";
  constant S3BASE     : std_logic_vector(27 downto 24) := "0011";
  constant S4BASE     : std_logic_vector(27 downto 24) := "0100";
  constant S5BASE     : std_logic_vector(27 downto 24) := "0101";
  constant S6BASE     : std_logic_vector(27 downto 24) := "0110";
  constant S7BASE     : std_logic_vector(27 downto 24) := "0111";
  constant S8BASE     : std_logic_vector(27 downto 24) := "1000";
  constant S9BASE     : std_logic_vector(27 downto 24) := "1001";
  constant S10BASE    : std_logic_vector(27 downto 24) := "1010";
  constant S11BASE    : std_logic_vector(27 downto 24) := "1011";
  constant S12BASE    : std_logic_vector(27 downto 24) := "1100";
  constant S13BASE    : std_logic_vector(27 downto 24) := "1101";
  constant S14BASE    : std_logic_vector(27 downto 24) := "1110";
  constant S15BASE    : std_logic_vector(27 downto 24) := "1111";

-- HTRANS transfer type signal encoding:
  constant TRN_IDLE   : std_logic_vector(1 downto 0) := "00";
  constant TRN_BUSY   : std_logic_vector(1 downto 0) := "01";
  constant TRN_NONSEQ : std_logic_vector(1 downto 0) := "10";
  constant TRN_SEQ    : std_logic_vector(1 downto 0) := "11";

-- HRESP transfer response signal encoding:
  constant RSP_OKAY  : std_logic_vector(1 downto 0) := "00";
  constant RSP_ERROR : std_logic_vector(1 downto 0) := "01";
  constant RSP_RETRY : std_logic_vector(1 downto 0) := "10";
  constant RSP_SPLIT : std_logic_vector(1 downto 0) := "11";


--------------------------------------------------------------------------------
-- Signal declarations
--------------------------------------------------------------------------------

  signal Valid        : std_logic; -- Module is selected with valid transfer
  signal ACRegEn      : std_logic; -- Enable for address and control registers
  signal HaddrReg     : std_logic_vector(27 downto 0); -- HADDR register
  signal HwriteReg    : std_logic;                     -- HWRITE register
  signal HaddrMux     : std_logic_vector(27 downto 0); -- HADDR multiplexer

  signal NextState    : std_logic_vector(3 downto 0); -- State machine
  signal CurrentState : std_logic_vector(3 downto 0);

  signal HreadyNext   : std_logic; -- HREADYOUT register input
  signal iHREADYOUT   : std_logic; -- HREADYOUT register

  signal Psel0Int     : std_logic; -- Internal PSEL0
  signal Psel1Int     : std_logic; -- Internal PSEL1
  signal Psel2Int     : std_logic; -- Internal PSEL2
  signal Psel3Int     : std_logic; -- Internal PSEL3
  signal Psel4Int     : std_logic; -- Internal PSEL4
  signal Psel5Int     : std_logic; -- Internal PSEL5
  signal Psel6Int     : std_logic; -- Internal PSEL6
  signal Psel7Int     : std_logic; -- Internal PSEL7
  signal Psel8Int     : std_logic; -- Internal PSEL8
  signal Psel9Int     : std_logic; -- Internal PSEL9
  signal Psel10Int    : std_logic; -- Internal PSEL10
  signal Psel11Int    : std_logic; -- Internal PSEL11
  signal Psel12Int    : std_logic; -- Internal PSEL12
  signal Psel13Int    : std_logic; -- Internal PSEL13
  signal Psel14Int    : std_logic; -- Internal PSEL14
  signal Psel15Int    : std_logic; -- Internal PSEL15

  signal APBEn        : std_logic; -- Enable for APB output registers

  signal PWDATAEn     : std_logic; -- PWDATA Register enable
  signal PenableNext  : std_logic; -- PENABLE register input

  signal Psel0Mux     : std_logic; -- PSEL multiplexer values
  signal Psel1Mux     : std_logic;
  signal Psel2Mux     : std_logic;
  signal Psel3Mux     : std_logic;
  signal Psel4Mux     : std_logic;
  signal Psel5Mux     : std_logic;
  signal Psel6Mux     : std_logic;
  signal Psel7Mux     : std_logic;
  signal Psel8Mux     : std_logic;
  signal Psel9Mux     : std_logic;
  signal Psel10Mux    : std_logic;
  signal Psel11Mux    : std_logic;
  signal Psel12Mux    : std_logic;
  signal Psel13Mux    : std_logic;
  signal Psel14Mux    : std_logic;
  signal Psel15Mux    : std_logic;

  signal iPSEL0       : std_logic; -- Internal PSEL outputs
  signal iPSEL1       : std_logic;
  signal iPSEL2       : std_logic;
  signal iPSEL3       : std_logic;
  signal iPSEL4       : std_logic;
  signal iPSEL5       : std_logic;
  signal iPSEL6       : std_logic;
  signal iPSEL7       : std_logic;
  signal iPSEL8       : std_logic;
  signal iPSEL9       : std_logic;
  signal iPSEL10      : std_logic;
  signal iPSEL11      : std_logic;
  signal iPSEL12      : std_logic;
  signal iPSEL13      : std_logic;
  signal iPSEL14      : std_logic;
  signal iPSEL15      : std_logic;

  signal PwriteNext   : std_logic; -- PWRITE register input


--------------------------------------------------------------------------------
-- Beginning of main code
--------------------------------------------------------------------------------

begin

--------------------------------------------------------------------------------
-- Valid transfer detection
--------------------------------------------------------------------------------
-- Valid AHB transfers only take place when a non-sequential or sequential
--  transfer is shown on HTRANS - an idle or busy transfer should be ignored.

  Valid <= '1' when (HSEL = '1' and HREADY = '1' and
                     (HTRANS = TRN_NONSEQ or HTRANS = TRN_SEQ))
           else '0';

--------------------------------------------------------------------------------
-- Address and control registers
--------------------------------------------------------------------------------
-- Registers are used to store the address and control signals from the address
--  phase for use in the data phase of the transfer.
-- Only enabled when the HREADY input is HIGH and the module is addressed.

  ACRegEn <= HSEL and HREADY;

  p_ACRegSeq : process (HRESETn, HCLK)
  begin
    if (HRESETn = '0') then
      HaddrReg  <= (others => '0');
      HwriteReg <= '0';
    elsif (HCLK'event and HCLK = '1') then
      if ACRegEn = '1' then
        HaddrReg  <= HADDR;
        HwriteReg <= HWRITE;
      end if;
    end if;
  end process p_ACRegSeq;

-- The address source used depends on the source of the current APB transfer. If
--  the transfer is being generated from:
-- - the pipeline registers, then the address source is HaddrReg
-- - the AHB inputs, the the address source is HADDR.
--
-- The HaddrMux multiplexer is used to select the appropriate address source. A
--  new read, sequential read following another read, or a read following a
--  write with no pending transfer are the only transfers that are generated
--  directly from the AHB inputs. All other transfers are generated from the
--  pipeline registers.

  HaddrMux <= HADDR when (NextState = ST_READ and (CurrentState = ST_IDLE or
                                                   CurrentState = ST_RENABLE or
                                                   CurrentState = ST_WENABLE))
              else HaddrReg;

--------------------------------------------------------------------------------
-- Next state logic for APB state machine
--------------------------------------------------------------------------------
-- Generates next state from CurrentState and AHB inputs.

-- Due to write transfers having an extra setup state, the pending states are
--  used to indicate that there is a transfer in the pipeline that has not been
--  started on the APB.
-- Read transfers start immediately, so pending states are not needed.

  p_NextStateComb : process (CurrentState, HWRITE, HwriteReg, Valid)
  begin
    case CurrentState is

      when ST_IDLE =>                -- Idle state
        if Valid = '1' then
          if HWRITE = '1' then
            NextState <= ST_WWAIT;
          else
            NextState <= ST_READ;
          end if;
        else
          NextState   <= ST_IDLE;
        end if;

      when ST_READ =>                -- Read setup
        NextState     <= ST_RENABLE;

      when ST_WWAIT =>               -- Hold for one cycle before write
        if Valid = '1' then
          NextState   <= ST_WRITEP;
        else
          NextState   <= ST_WRITE;
        end if;

      when ST_WRITE =>               -- Write setup
        if Valid = '1' then
          NextState   <= ST_WENABLEP;
        else
          NextState   <= ST_WENABLE;
        end if;

      when ST_WRITEP =>              -- Write setup with pending transfer
        NextState     <= ST_WENABLEP;

      when ST_RENABLE =>             -- Read enable
        if Valid = '1' then
          if HWRITE = '1' then
            NextState <= ST_WWAIT;
          else
            NextState <= ST_READ;
          end if;
        else
          NextState   <= ST_IDLE;
        end if;

      when ST_WENABLE =>             -- Write enable
        if Valid = '1' then
          if HWRITE = '1' then
            NextState <= ST_WWAIT;
          else
            NextState <= ST_READ;
          end if;
        else
          NextState   <= ST_IDLE;
        end if;

      when ST_WENABLEP =>            -- Write enable with pending transfer
        if HwriteReg = '1' then
          if Valid = '1' then
            NextState <= ST_WRITEP;
          else
            NextState <= ST_WRITE;
          end if;
        else
          NextState   <= ST_READ;
        end if;

      when others =>
        NextState     <= ST_IDLE;    -- Return to idle on FSM error

    end case;
  end process p_NextStateComb;

--------------------------------------------------------------------------------
-- State machine
--------------------------------------------------------------------------------
-- Changes state on rising edge of HCLK.

  p_CurrentStateSeq : process (HRESETn, HCLK)
  begin
    if (HRESETn = '0') then
      CurrentState <= ST_IDLE;
    elsif (HCLK'event and HCLK = '1') then
      CurrentState <= NextState;
    end if;
  end process p_CurrentStateSeq;

--------------------------------------------------------------------------------
-- HREADYOUT generation
--------------------------------------------------------------------------------
-- A registered version of HREADYOUT is used to improve output timing.
-- Wait states are inserted during:
--  ST_READ
--  ST_WRITEP
--  ST_WENABLEP when the currently pending transfer is a read, or
--              when the currently driven AHB transfer is a read and is
--              qualified by Valid.

  HreadyNext <= '0' when (NextState = ST_READ or NextState = ST_WRITEP or
                          (NextState = ST_WENABLEP and
                           ((HWRITE = '0' and Valid = '1') or
                            HwriteReg = '0')))
                else '1';

  p_iHREADYOUTSeq : process (HRESETn, HCLK)
  begin
    if (HRESETn = '0') then
      iHREADYOUT <= '1';
    elsif (HCLK'event and HCLK = '1') then
      iHREADYOUT <= HreadyNext;
    end if;
  end process p_iHREADYOUTSeq;

--------------------------------------------------------------------------------
-- APB address decoding for slave devices
--------------------------------------------------------------------------------
-- Decodes the address from HaddrMux, which only changes during a read or write
--  cycle.
-- When an address is used that is not in any of the ranges specified,
--  operation of the system continues, but no PSEL lines are set, so no
--  peripherals are selected during the read/write transfer.
-- Operation of PWDATA, PWRITE, PENABLE and PADDR continues as normal.

  p_AddressDecodeComb : process (HaddrMux)
  begin
    -- Default values
    Psel0Int   <= '0';
    Psel1Int   <= '0';
    Psel2Int   <= '0';
    Psel3Int   <= '0';
    Psel4Int   <= '0';
    Psel5Int   <= '0';
    Psel6Int   <= '0';
    Psel7Int   <= '0';
    Psel8Int   <= '0';
    Psel9Int   <= '0';
    Psel10Int  <= '0';
    Psel11Int  <= '0';
    Psel12Int  <= '0';
    Psel13Int  <= '0';
    Psel14Int  <= '0';
    Psel15Int  <= '0';

    case HaddrMux(27 downto 24) is
      when S0BASE =>
        Psel0Int  <= '1';
      when S1BASE =>
        Psel1Int  <= '1';
      when S2BASE =>
        Psel2Int  <= '1';
      when S3BASE =>
        Psel3Int  <= '1';
      when S4BASE =>
        Psel4Int  <= '1';
      when S5BASE =>
        Psel5Int  <= '1';
      when S6BASE =>
        Psel6Int  <= '1';
      when S7BASE =>
        Psel7Int  <= '1';
      when S8BASE =>
        Psel8Int  <= '1';
      when S9BASE =>
        Psel9Int  <= '1';
      when S10BASE =>
        Psel10Int  <= '1';
      when S11BASE =>
        Psel11Int  <= '1';
      when S12BASE =>
        Psel12Int  <= '1';
      when S13BASE =>
        Psel13Int  <= '1';
      when S14BASE =>
        Psel14Int  <= '1';
      when S15BASE =>
        Psel15Int  <= '1';
      when others =>
        null;
    end case;
  end process p_AddressDecodeComb;

--------------------------------------------------------------------------------
-- APB enable generation
--------------------------------------------------------------------------------
-- APBEn is set when starting an access on the APB, and is used to enable the
--  PSEL, PWRITE and PADDR APB output registers.

  APBEn <= '1' when (NextState = ST_READ or NextState = ST_WRITE or
                     NextState = ST_WRITEP)
           else '0';

--------------------------------------------------------------------------------
-- Registered HWDATA for writes (PWDATA)
--------------------------------------------------------------------------------
-- Write wait state allows a register to be used to hold PWDATA.
-- Register enabled when PWRITE output is set HIGH.

  PWDATAEn <= PwriteNext;

  p_PWDATASeq : process (HRESETn, HCLK)
  begin
    if (HRESETn = '0') then
      PWDATA <= (others => '0');
    elsif (HCLK'event and HCLK = '1') then
      if PWDATAEn = '1' then
        PWDATA <= HWDATA;
      end if;
    end if;
  end process p_PWDATASeq;

--------------------------------------------------------------------------------
-- PENABLE generation
--------------------------------------------------------------------------------
-- PENABLE output is set HIGH during any of the three ENABLE states.

  PenableNext <= '1' when (NextState = ST_RENABLE or
                           NextState = ST_WENABLE or
                           NextState = ST_WENABLEP)
                 else '0';

  p_PENABLESeq : process (HRESETn, HCLK)
  begin
    if (HRESETn = '0') then
      PENABLE <= '0';
    elsif (HCLK'event and HCLK = '1') then
      PENABLE <= PenableNext;
    end if;
  end process p_PENABLESeq;

--------------------------------------------------------------------------------
-- iPSEL generation
--------------------------------------------------------------------------------
-- Set   outputs with internal values when in READ or WRITE states (APBEn HIGH).
-- Reset outputs when APB transfer has ended.
-- Hold  outputs at all other times.

  p_PselMuxComb : process (APBEn, NextState, Psel0Int, Psel1Int, Psel2Int,
                           Psel3Int, Psel4Int, Psel5Int, Psel6Int,
                           Psel7Int, Psel8Int, Psel9Int, Psel10Int,
                           Psel11Int, Psel12Int, Psel13Int, Psel14Int,
                           Psel15Int, iPSEL0, iPSEL1, iPSEL2, iPSEL3,
                           iPSEL4, iPSEL5, iPSEL6, iPSEL7, iPSEL8,
                           iPSEL9, iPSEL10, iPSEL11, iPSEL12, iPSEL13,
                           iPSEL14, iPSEL15)
  begin
    if (APBEn = '1') then
      Psel0Mux  <= Psel0Int;
      Psel1Mux  <= Psel1Int;
      Psel2Mux  <= Psel2Int;
      Psel3Mux  <= Psel3Int;
      Psel4Mux  <= Psel4Int;
      Psel5Mux  <= Psel5Int;
      Psel6Mux  <= Psel6Int;
      Psel7Mux  <= Psel7Int;
      Psel8Mux  <= Psel8Int;
      Psel9Mux  <= Psel9Int;
      Psel10Mux <= Psel10Int;
      Psel11Mux <= Psel11Int;
      Psel12Mux <= Psel12Int;
      Psel13Mux <= Psel13Int;
      Psel14Mux <= Psel14Int;
      Psel15Mux <= Psel15Int;
    elsif (NextState = ST_IDLE or NextState = ST_WWAIT) then
      Psel0Mux  <= '0';
      Psel1Mux  <= '0';
      Psel2Mux  <= '0';
      Psel3Mux  <= '0';
      Psel4Mux  <= '0';
      Psel5Mux  <= '0';
      Psel6Mux  <= '0';
      Psel7Mux  <= '0';
      Psel8Mux  <= '0';
      Psel9Mux  <= '0';
      Psel10Mux <= '0';
      Psel11Mux <= '0';
      Psel12Mux <= '0';
      Psel13Mux <= '0';
      Psel14Mux <= '0';
      Psel15Mux <= '0';
    else
      Psel0Mux  <= iPSEL0;
      Psel1Mux  <= iPSEL1;
      Psel2Mux  <= iPSEL2;
      Psel3Mux  <= iPSEL3;
      Psel4Mux  <= iPSEL4;
      Psel5Mux  <= iPSEL5;
      Psel6Mux  <= iPSEL6;
      Psel7Mux  <= iPSEL7;
      Psel8Mux  <= iPSEL8;
      Psel9Mux  <= iPSEL9;
      Psel10Mux <= iPSEL10;
      Psel11Mux <= iPSEL11;
      Psel12Mux <= iPSEL12;
      Psel13Mux <= iPSEL13;
      Psel14Mux <= iPSEL14;
      Psel15Mux <= iPSEL15;
    end if;
  end process p_PselMuxComb;

-- Drives PSEL outputs with internal multiplexer versions.

  p_PSELSeq : process (HRESETn, HCLK)
  begin
    if (HRESETn = '0') then
      iPSEL0  <= '0';
      iPSEL1  <= '0';
      iPSEL2  <= '0';
      iPSEL3  <= '0';
      iPSEL4  <= '0';
      iPSEL5  <= '0';
      iPSEL6  <= '0';
      iPSEL7  <= '0';
      iPSEL8  <= '0';
      iPSEL9  <= '0';
      iPSEL10 <= '0';
      iPSEL11 <= '0';
      iPSEL12 <= '0';
      iPSEL13 <= '0';
      iPSEL14 <= '0';
      iPSEL15 <= '0';
    elsif (HCLK'event and HCLK = '1') then
      iPSEL0  <= Psel0Mux;
      iPSEL1  <= Psel1Mux;
      iPSEL2  <= Psel2Mux;
      iPSEL3  <= Psel3Mux;
      iPSEL4  <= Psel4Mux;
      iPSEL5  <= Psel5Mux;
      iPSEL6  <= Psel6Mux;
      iPSEL7  <= Psel7Mux;
      iPSEL8  <= Psel8Mux;
      iPSEL9  <= Psel9Mux;
      iPSEL10 <= Psel10Mux;
      iPSEL11 <= Psel11Mux;
      iPSEL12 <= Psel12Mux;
      iPSEL13 <= Psel13Mux;
      iPSEL14 <= Psel14Mux;
      iPSEL15 <= Psel15Mux;
    end if;
  end process p_PSELSeq;

--------------------------------------------------------------------------------
-- Registered HADDR for reads and writes (iPADDR)
--------------------------------------------------------------------------------
-- HaddrMux is used, as the generation time of the APB address is different for
--  reads and writes, so both the direct and registered HADDR input need to be
--  used.
-- HaddrMux is captured by an APBEn enabled register to generate iPADDR.
-- PADDR driven on State Machine change to READ or WRITE, with reset to zero.

  p_iPADDRSeq : process (HRESETn, HCLK)
  begin
    if (HRESETn = '0') then
      PADDR <= (others => '0');
    elsif (HCLK'event and HCLK = '1') then
      if (APBEn = '1') then
        PADDR <= HaddrMux(23 downto 0);
      end if;
    end if;
  end process p_iPADDRSeq;

--------------------------------------------------------------------------------
-- PWRITE generation
--------------------------------------------------------------------------------
-- PwriteNext is active when NextState is either ST_WRITE or ST_WRITEP. To avoid
--  a critical path through the main state machine this signal is generated
--  using CurrentState.
-- PwriteNext is captured by an APBEn enabled register to generate PWRITE, and
--  is generated from NextState (set HIGH during a write cycle).
-- PWRITE output only changes when APB is accessed.

  p_PwriteNextComb : process (CurrentState, HwriteReg)
  begin
    case CurrentState is

      when ST_WWAIT =>
        PwriteNext <= '1';

      when ST_WENABLEP =>
        if HwriteReg = '1' then
          PwriteNext <= '1';
        else
          PwriteNext <= '0';
        end if;

      when others =>
        PwriteNext <= '0';

    end case;
  end process p_PwriteNextComb;

  p_PWRITESeq : process (HRESETn, HCLK)
  begin
    if (HRESETn = '0') then
      PWRITE <= '0';
    elsif (HCLK'event and HCLK = '1') then
      if (APBEn = '1') then
        PWRITE <= PwriteNext;
      end if;
    end if;
  end process p_PWRITESeq;

--------------------------------------------------------------------------------
-- APB output drivers
--------------------------------------------------------------------------------
-- Drive outputs with internal signals.

  PSELECT(0)  <= iPSEL0;
  PSELECT(1)  <= iPSEL1;
  PSELECT(2)  <= iPSEL2;
  PSELECT(3)  <= iPSEL3;
  PSELECT(4)  <= iPSEL4;
  PSELECT(5)  <= iPSEL5;
  PSELECT(6)  <= iPSEL6;
  PSELECT(7)  <= iPSEL7;
  PSELECT(8)  <= iPSEL8;
  PSELECT(9)  <= iPSEL9;
  PSELECT(10) <= iPSEL10;
  PSELECT(11) <= iPSEL11;
  PSELECT(12) <= iPSEL12;
  PSELECT(13) <= iPSEL13;
  PSELECT(14) <= iPSEL14;
  PSELECT(15) <= iPSEL15;

--------------------------------------------------------------------------------
-- AHB output drivers
--------------------------------------------------------------------------------
-- PRDATA is only ever driven during a read, so it can be directly copied to
--  HRDATA to reduce the output data delay onto the AHB.

  HRDATA <= PRDATA;

-- Drives the output port with the internal version, and sets it LOW at all
--  other times when the module is not selected.

  HREADYOUT <= iHREADYOUT;

-- The response will always be OKAY to show that the transfer has been performed
--  successfully.

  HRESP <= RSP_OKAY;


end synth;

-- --================================= End ===================================--
