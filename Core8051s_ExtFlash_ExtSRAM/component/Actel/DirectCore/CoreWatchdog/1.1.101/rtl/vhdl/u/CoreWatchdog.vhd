--============================================================================
--
--  CoreWatchdog
--
--============================================================================

library ieee;
use     ieee.std_logic_1164.all;
use     ieee.std_logic_unsigned."+";
use     ieee.std_logic_unsigned."-";

entity CoreWatchdog is
    generic(
        WIDTH       : integer := 32 -- Width can be 16 or 32
    );
    port(
        PCLK        : in  std_logic;                        -- APB clock
        PRESETn     : in  std_logic;                        -- APB reset
        PENABLE     : in  std_logic;                        -- APB enable
        PSEL        : in  std_logic;                        -- APB periph select
        PADDR       : in  std_logic_vector(4 downto 2);     -- APB address bus
        PWRITE      : in  std_logic;                        -- APB write
        PWDATA      : in  std_logic_vector(31 downto 0);    -- APB write data
        PRDATA      : out std_logic_vector(31 downto 0);    -- APB read data
        WDOGRESn    : in  std_logic;    -- Watchdog reset input (active low)
        WDOGRES     : out std_logic     -- Watchdog reset output (active high)
    );
end CoreWatchdog;

architecture synth of CoreWatchdog is

    -------------------------------------------------------------------------------
    -- Constant declarations
    -------------------------------------------------------------------------------
    -- Register addresses

    -- Timer base address prefixes
    constant WDOGLOADA      : std_logic_vector(4 downto 2) := "000";
    constant WDOGVALUEA     : std_logic_vector(4 downto 2) := "001";
    constant WDOGCONTROLA   : std_logic_vector(4 downto 2) := "010";
    constant WDOGREFRESHA   : std_logic_vector(4 downto 2) := "011";

    -------------------------------------------------------------------------------
    -- Signal declarations
    -------------------------------------------------------------------------------
    signal PrdataNext       : std_logic_vector(31 downto 0);        -- Internal PRDATA
    signal iPRDATA          : std_logic_vector(31 downto 0);        -- Regd PrdataNext
    signal PrdataNextEn     : std_logic;                            -- PRDATAEn register input
    signal DataOut          : std_logic_vector(31 downto 0);

    signal CtrlEn           : std_logic;                            -- Ctrl write enable
    signal CtrlReg          : std_logic_vector(4 downto 0);         -- Control register

    signal LoadEn           : std_logic;                            -- Load write enable
    signal LoadEnReg        : std_logic;                            -- Registered load enable
    signal Load             : std_logic_vector(WIDTH-1 downto 0);   -- Stores the load value

    signal WdogEn           : std_logic;                            -- Watchdog enable
    signal CountPre         : std_logic_vector(3 downto 0);         -- Count pre-scale

    signal PreScale         : std_logic_vector(9 downto 0);         -- Prescale counter

    signal Count            : std_logic_vector(WIDTH-1 downto 0);   -- Current count
    signal ZeroCount        : std_logic_vector(WIDTH-1 downto 0);

    signal RefreshEn        : std_logic;
    signal Refresh          : std_logic;                            -- Counter refresh signal

    signal CountIsZero      : std_logic;
    signal CountIsZeroReg   : std_logic;
    signal TimeOut          : std_logic;

    signal CountPulse       : std_logic;
    signal NextCountPulse   : std_logic;

    signal WdogResCount     : std_logic_vector(1 downto 0);

    -------------------------------------------------------------------------------
    -- Beginning of main code
    -------------------------------------------------------------------------------
    begin

    -------------------------------------------------------------------------------
    -- Signal assignments
    -------------------------------------------------------------------------------
    ZeroCount <= (others => '0');

    -------------------------------------------------------------------------------
    -- Control Register
    -------------------------------------------------------------------------------
    -- Functions of bits/bit fields of Control Register are:
    --   4 - Watchdog enable
    -- 3:0 - Prescale

    -- Control register write enable
    CtrlEn <=   '1' when (PWRITE = '1' and PSEL = '1' and PENABLE = '0'
                        and (PADDR = WDOGCONTROLA))
                else '0';

    -- Control register
    p_CtrlSeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            CtrlReg <= (others => '0');
        elsif (PCLK'event and PCLK = '1') then
            if (CtrlEn = '1') then
                CtrlReg <= PWDATA(4 downto 0);
            end if;
        end if;
    end process p_CtrlSeq;

    -- Assign control bits/fields
    WdogEn      <= CtrlReg(4);
    CountPre    <= CtrlReg(3 downto 0);

    -------------------------------------------------------------------------------
    -- Load Register
    -------------------------------------------------------------------------------
    -- Decode a TimerLoad write transaction
    LoadEn <=   '1' when (PWRITE = '1' and PSEL = '1' and PENABLE = '0'
                        and (PADDR = WDOGLOADA))
                else '0';

    -- Register LoadEn so it is aligned with the data in the Load register
    p_LoadEnSeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            LoadEnReg <= '0';
        elsif (PCLK'event and PCLK = '1') then
            LoadEnReg <= LoadEn;
        end if;
    end process p_LoadEnSeq;

    -- Load register implementation
    p_LoadSeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            Load <= (others => '0');
        elsif (PCLK'event and PCLK = '1') then
            if (LoadEn = '1') then
                Load <= PWDATA(WIDTH-1 downto 0);
            end if;
        end if;
    end process p_LoadSeq;

    -------------------------------------------------------------------------------
    -- Counter clock prescaler
    -------------------------------------------------------------------------------
    p_PrescalerSeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            PreScale <= (others => '0');
        elsif (PCLK'event and PCLK = '1') then
            if (LoadEnReg = '1') then -- Set to zero for new value
                PreScale <= (others => '0');
            else
                PreScale <= PreScale + '1';
            end if;
        end if;
    end process p_PrescalerSeq;

    p_NextCountPulseComb : process (PreScale, CountPre)
    begin
        NextCountPulse <= '0';
        case CountPre is
            when "0000" =>  if (PreScale(0) = '1') then
                                NextCountPulse <= '1';
                            end if;
            when "0001" =>  if (PreScale(1 downto 0) = "11") then
                                NextCountPulse <= '1';
                            end if;
            when "0010" =>  if (PreScale(2 downto 0) = "111") then
                                NextCountPulse <= '1';
                            end if;
            when "0011" =>  if (PreScale(3 downto 0) = "1111") then
                                NextCountPulse <= '1';
                            end if;
            when "0100" =>  if (PreScale(4 downto 0) = "11111") then
                                NextCountPulse <= '1';
                            end if;
            when "0101" =>  if (PreScale(5 downto 0) = "111111") then
                                NextCountPulse <= '1';
                            end if;
            when "0110" =>  if (PreScale(6 downto 0) = "1111111") then
                                NextCountPulse <= '1';
                            end if;
            when "0111" =>  if (PreScale(7 downto 0) = "11111111") then
                                NextCountPulse <= '1';
                            end if;
            when "1000" =>  if (PreScale(8 downto 0) = "111111111") then
                                NextCountPulse <= '1';
                            end if;
            when "1001" =>  if (PreScale(9 downto 0) = "1111111111") then
                                NextCountPulse <= '1';
                            end if;
            when others =>  if (PreScale(9 downto 0) = "1111111111") then
                                NextCountPulse <= '1';
                            end if;
        end case;
    end process p_NextCountPulseComb;

    p_CountPulseSeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            CountPulse <= '0';
        elsif (PCLK'event and PCLK = '1') then
            CountPulse <= NextCountPulse;
        end if;
    end process p_CountPulseSeq;

    -------------------------------------------------------------------------------
    -- Counter register
    -------------------------------------------------------------------------------
    p_CountSeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            Count <= (others => '1');
        elsif (PCLK'event and PCLK = '1') then
            if (LoadEnReg = '1' or Refresh = '1') then
                -- Re-start for new value or refresh
                Count <= Load;
            else
                if (WdogEn = '1' and CountPulse = '1') then
                    Count <= Count - '1';
                end if;
            end if;
        end if;
    end process p_CountSeq;

    CountIsZero <=  '1' when (Count = ZeroCount) else '0';

    p_CountIsZeroSeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            CountIsZeroReg <= '0';
        elsif (PCLK'event and PCLK = '1') then
            CountIsZeroReg <= CountIsZero;
        end if;
    end process p_CountIsZeroSeq;

    TimeOut <=  '1' when (CountIsZero = '1' and CountIsZeroReg = '0') else '0';

    -------------------------------------------------------------------------------
    -- Counter refesh
    -------------------------------------------------------------------------------
    RefreshEn <=    '1' when (PWRITE = '1' and PSEL = '1' and PENABLE = '0'
                            and (PADDR = WDOGREFRESHA))
                    else '0';

    p_RefreshSeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            Refresh <= '0';
        elsif (PCLK'event and PCLK = '1') then
            if (RefreshEn = '1') then
                Refresh <= '1';
            else
                Refresh <= '0';
            end if;
        end if;
    end process p_RefreshSeq;

    --------------------------------------------------------------------------------
    -- Watchdog reset signal
    --------------------------------------------------------------------------------
    -- 2-bit counter used to assert WDOGRES for four cycles of PCLK.
    p_WdogResCountSeq : process (WDOGRESn, PCLK)
    begin
        if (WDOGRESn = '0') then
            WdogResCount <= "00";
        elsif (PCLK'event and PCLK = '1') then
            if (TimeOut = '1') then
                WdogResCount <= "11";
            else
                if (WdogResCount = "00") then
                    WdogResCount <= WdogResCount;
                else
                    WdogResCount <= WdogResCount - '1';
                end if;
            end if;
        end if;
    end process p_WdogResCountSeq;

    -- WDOGRES asserted when WdogResCount is non-zero
    p_WDOGRESSeq : process (WDOGRESn, PCLK)
    begin
        if (WDOGRESn = '0') then
            WDOGRES <= '0';
        elsif (PCLK'event and PCLK = '1') then
            if (TimeOut = '1') then
                WDOGRES <= '1';
            elsif (WdogResCount = "00") then
                WDOGRES <= '0';
            end if;
        end if;
    end process p_WDOGRESSeq;

    -------------------------------------------------------------------------------
    -- Output data generation
    -------------------------------------------------------------------------------
    -- Zero data is used as padding for register reads

    p_DataOutComb : process (Count, CtrlReg, PSEL, Load, PADDR, PWRITE)
    begin
        DataOut <= (others => '0'); -- Drive zeros by default

        if (PWRITE = '0' and PSEL = '1') then
            case PADDR is
                when WDOGLOADA =>
                    DataOut(WIDTH-1 downto 0) <= Load;

                when WDOGVALUEA =>
                    DataOut(WIDTH-1 downto 0) <= Count;

                when WDOGCONTROLA =>
                    DataOut(4 downto 0) <= CtrlReg;

                when others =>
                    DataOut <= (others => '0');
            end case;
        else
            DataOut <= (others => '0');
        end if;
    end process p_DataOutComb;

    -- Enable for output data.
    PrdataNextEn <= '1' when (PSEL = '1' and PWRITE ='0' and PENABLE = '0')
                    else '0';

    PrdataNext <=   DataOut when (PrdataNextEn = '1') else (others => '0');

    -- Register used to reduce output delay during reads.
    p_iPRDATASeq : process (PRESETn, PCLK)
    begin
        if (PRESETn = '0') then
            iPRDATA <= (others => '0');
        elsif (PCLK'event and PCLK = '1') then
            iPRDATA <= PrdataNext;
        end if;
    end process p_iPRDATASeq;

    -- Drive output with internal version.
    PRDATA <= iPRDATA;

end synth;

--================================= End ===================================--
