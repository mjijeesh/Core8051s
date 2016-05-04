----------------------------------------------------------------------
-- Created by SmartDesign Tue May 03 12:11:18 2016
-- Version: v11.7 11.7.0.119
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library fusion;
use fusion.all;
library CORE8051S_LIB;
use CORE8051S_LIB.all;
library COREAPB3_LIB;
use COREAPB3_LIB.all;
use COREAPB3_LIB.components.all;
library COREAPBSRAM_LIB;
use COREAPBSRAM_LIB.all;
use COREAPBSRAM_LIB.components.all;
library COREGPIO_LIB;
use COREGPIO_LIB.all;
use COREGPIO_LIB.components.all;
library CORETIMER_LIB;
use CORETIMER_LIB.all;
library COREUARTAPB_LIB;
use COREUARTAPB_LIB.all;
use COREUARTAPB_LIB.sys_CoreUARTapb_0_components.all;
----------------------------------------------------------------------
-- sys entity declaration
----------------------------------------------------------------------
entity sys is
    -- Port list
    port(
        -- Inputs
        BRT_CLK                 : in  std_logic;
        BUSAINN                 : in  std_logic;
        BUSAINP                 : in  std_logic;
        BUSBINN                 : in  std_logic;
        BUSBINP                 : in  std_logic;
        DebugIf_BREAKIN         : in  std_logic;
        DebugIf_MEMBANK         : in  std_logic_vector(3 downto 0);
        DebugIf_TCK             : in  std_logic;
        DebugIf_TDI             : in  std_logic;
        DebugIf_TMS             : in  std_logic;
        DebugIf_TRSTN           : in  std_logic;
        ExternalMemIf_MEMACKI   : in  std_logic;
        ExternalMemIf_MEMDATAI  : in  std_logic_vector(7 downto 0);
        ExternalMemIf_MEMPSACKI : in  std_logic;
        NSYSRESET               : in  std_logic;
        SWITCH                  : in  std_logic_vector(31 downto 0);
        SYSCLK                  : in  std_logic;
        UART_RX                 : in  std_logic;
        -- Outputs
        BUSAINEN                : out std_logic;
        BUSAOUTIN               : out std_logic;
        BUSAOUTN                : out std_logic;
        BUSAOUTP                : out std_logic;
        BUSBINEN                : out std_logic;
        BUSBOUTIN               : out std_logic;
        BUSBOUTN                : out std_logic;
        BUSBOUTP                : out std_logic;
        DebugIf_AUXOUT          : out std_logic;
        DebugIf_BREAKOUT        : out std_logic;
        DebugIf_DBGMEMPSWR      : out std_logic;
        DebugIf_TDO             : out std_logic;
        DebugIf_TRIGOUT         : out std_logic;
        ExternalMemIf_MEMADDR   : out std_logic_vector(15 downto 0);
        ExternalMemIf_MEMDATAO  : out std_logic_vector(7 downto 0);
        ExternalMemIf_MEMPSRD   : out std_logic;
        ExternalMemIf_MEMRD     : out std_logic;
        ExternalMemIf_MEMWR     : out std_logic;
        LED                     : out std_logic_vector(31 downto 0);
        UART_TX                 : out std_logic
        );
end sys;
----------------------------------------------------------------------
-- sys architecture body
----------------------------------------------------------------------
architecture RTL of sys is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- BRT_0
component BRT_0
    -- Port list
    port(
        -- Inputs
        BUSAINN   : in  std_logic;
        BUSAINP   : in  std_logic;
        BUSBINN   : in  std_logic;
        BUSBINP   : in  std_logic;
        CLK       : in  std_logic;
        PADDR     : in  std_logic_vector(12 downto 0);
        PCLK      : in  std_logic;
        PENABLE   : in  std_logic;
        PRESETN   : in  std_logic;
        PSEL      : in  std_logic;
        PWDATA    : in  std_logic_vector(15 downto 0);
        PWRITE    : in  std_logic;
        -- Outputs
        BUSAINEN  : out std_logic;
        BUSAOUTIN : out std_logic;
        BUSAOUTN  : out std_logic;
        BUSAOUTP  : out std_logic;
        BUSBINEN  : out std_logic;
        BUSBOUTIN : out std_logic;
        BUSBOUTN  : out std_logic;
        BUSBOUTP  : out std_logic;
        PRDATA    : out std_logic_vector(15 downto 0)
        );
end component;
-- CORE8051S   -   Actel:DirectCore:CORE8051S:2.4.101
component CORE8051S
    generic( 
        APB_DWIDTH            : integer := 32 ;
        DEBUG                 : integer := 2 ;
        EN_FF_OPTS            : integer := 0 ;
        FAMILY                : integer := 17 ;
        INCL_DPTR1            : integer := 1 ;
        INCL_MUL_DIV_DA       : integer := 1 ;
        INCL_TRACE            : integer := 0 ;
        INTRAM_IMPLEMENTATION : integer := 0 ;
        STRETCH_VAL           : integer := 1 ;
        TRIG_NUM              : integer := 4 ;
        VARIABLE_STRETCH      : integer := 0 ;
        VARIABLE_WAIT         : integer := 0 ;
        WAIT_VAL              : integer := 1 
        );
    -- Port list
    port(
        -- Inputs
        BREAKIN    : in  std_logic;
        CLK        : in  std_logic;
        INT0       : in  std_logic;
        INT1       : in  std_logic;
        MEMACKI    : in  std_logic;
        MEMBANK    : in  std_logic_vector(3 downto 0);
        MEMDATAI   : in  std_logic_vector(7 downto 0);
        MEMPSACKI  : in  std_logic;
        NSYSRESET  : in  std_logic;
        PRDATA     : in  std_logic_vector(31 downto 0);
        PREADY     : in  std_logic;
        PSLVERR    : in  std_logic;
        TCK        : in  std_logic;
        TDI        : in  std_logic;
        TMS        : in  std_logic;
        TRSTN      : in  std_logic;
        WDOGRES    : in  std_logic;
        -- Outputs
        AUXOUT     : out std_logic;
        BREAKOUT   : out std_logic;
        DBGMEMPSWR : out std_logic;
        MEMADDR    : out std_logic_vector(15 downto 0);
        MEMDATAO   : out std_logic_vector(7 downto 0);
        MEMPSRD    : out std_logic;
        MEMRD      : out std_logic;
        MEMWR      : out std_logic;
        MOVX       : out std_logic;
        PADDR      : out std_logic_vector(11 downto 0);
        PENABLE    : out std_logic;
        PRESETN    : out std_logic;
        PSEL       : out std_logic;
        PWDATA     : out std_logic_vector(31 downto 0);
        PWRITE     : out std_logic;
        TDO        : out std_logic;
        TRIGOUT    : out std_logic;
        WDOGRESN   : out std_logic
        );
end component;
-- CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
-- using entity instantiation for component CoreAPB3
-- COREAPBSRAM   -   Actel:DirectCore:COREAPBSRAM:2.0.102
-- using entity instantiation for component COREAPBSRAM
-- CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.1.101
-- using entity instantiation for component CoreGPIO
-- CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
component CoreTimer
    generic( 
        FAMILY     : integer := 17 ;
        INTACTIVEH : integer := 1 ;
        WIDTH      : integer := 32 
        );
    -- Port list
    port(
        -- Inputs
        PADDR   : in  std_logic_vector(4 downto 2);
        PCLK    : in  std_logic;
        PENABLE : in  std_logic;
        PRESETn : in  std_logic;
        PSEL    : in  std_logic;
        PWDATA  : in  std_logic_vector(31 downto 0);
        PWRITE  : in  std_logic;
        -- Outputs
        PRDATA  : out std_logic_vector(31 downto 0);
        TIMINT  : out std_logic
        );
end component;
-- sys_CoreUARTapb_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.5.101
component sys_CoreUARTapb_0_CoreUARTapb
    generic( 
        BAUD_VAL_FRCTN    : integer := 0 ;
        BAUD_VAL_FRCTN_EN : integer := 0 ;
        BAUD_VALUE        : integer := 1 ;
        FAMILY            : integer := 17 ;
        FIXEDMODE         : integer := 0 ;
        PRG_BIT8          : integer := 0 ;
        PRG_PARITY        : integer := 0 ;
        RX_FIFO           : integer := 0 ;
        RX_LEGACY_MODE    : integer := 0 ;
        TX_FIFO           : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        PADDR       : in  std_logic_vector(4 downto 0);
        PCLK        : in  std_logic;
        PENABLE     : in  std_logic;
        PRESETN     : in  std_logic;
        PSEL        : in  std_logic;
        PWDATA      : in  std_logic_vector(7 downto 0);
        PWRITE      : in  std_logic;
        RX          : in  std_logic;
        -- Outputs
        FRAMING_ERR : out std_logic;
        OVERFLOW    : out std_logic;
        PARITY_ERR  : out std_logic;
        PRDATA      : out std_logic_vector(7 downto 0);
        PREADY      : out std_logic;
        PSLVERR     : out std_logic;
        RXRDY       : out std_logic;
        TX          : out std_logic;
        TXRDY       : out std_logic
        );
end component;
-- CoreWatchdog   -   Actel:DirectCore:CoreWatchdog:1.1.101
component CoreWatchdog
    generic( 
        WIDTH : integer := 32 
        );
    -- Port list
    port(
        -- Inputs
        PADDR    : in  std_logic_vector(4 downto 2);
        PCLK     : in  std_logic;
        PENABLE  : in  std_logic;
        PRESETn  : in  std_logic;
        PSEL     : in  std_logic;
        PWDATA   : in  std_logic_vector(31 downto 0);
        PWRITE   : in  std_logic;
        WDOGRESn : in  std_logic;
        -- Outputs
        PRDATA   : out std_logic_vector(31 downto 0);
        WDOGRES  : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal AUXOUT                          : std_logic;
signal BREAKOUT                        : std_logic;
signal BUSAINEN_net_0                  : std_logic;
signal BUSAOUTIN_net_0                 : std_logic;
signal BUSAOUTN_net_0                  : std_logic;
signal BUSAOUTP_net_0                  : std_logic;
signal BUSBINEN_net_0                  : std_logic;
signal BUSBOUTIN_net_0                 : std_logic;
signal BUSBOUTN_net_0                  : std_logic;
signal BUSBOUTP_net_0                  : std_logic;
signal Core8051s_00_APB3master_PENABLE : std_logic;
signal Core8051s_00_APB3master_PRDATA  : std_logic_vector(31 downto 0);
signal Core8051s_00_APB3master_PREADY  : std_logic;
signal Core8051s_00_APB3master_PSELx   : std_logic;
signal Core8051s_00_APB3master_PSLVERR : std_logic;
signal Core8051s_00_APB3master_PWDATA  : std_logic_vector(31 downto 0);
signal Core8051s_00_APB3master_PWRITE  : std_logic;
signal Core8051s_00_PRESETN            : std_logic;
signal CORE8051S_0_WDOGRESN            : std_logic;
signal CoreAPB3_0_APBmslave0_PENABLE   : std_logic;
signal CoreAPB3_0_APBmslave0_PREADY    : std_logic;
signal CoreAPB3_0_APBmslave0_PSELx     : std_logic;
signal CoreAPB3_0_APBmslave0_PSLVERR   : std_logic;
signal CoreAPB3_0_APBmslave0_PWRITE    : std_logic;
signal CoreAPB3_0_APBmslave1_0_PRDATA  : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave1_0_PREADY  : std_logic;
signal CoreAPB3_0_APBmslave1_0_PSELx   : std_logic;
signal CoreAPB3_0_APBmslave1_0_PSLVERR : std_logic;
signal CoreAPB3_0_APBmslave2_PRDATA    : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave2_PSELx     : std_logic;
signal CoreAPB3_0_APBmslave3_PRDATA    : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave3_PSELx     : std_logic;
signal CoreAPB3_0_APBmslave5_PREADY    : std_logic;
signal CoreAPB3_0_APBmslave5_PSELx     : std_logic;
signal CoreAPB3_0_APBmslave5_PSLVERR   : std_logic;
signal CoreAPB3_0_APBmslave16_PSELx    : std_logic;
signal CoreTimer_00_TIMINT             : std_logic;
signal CoreUARTapb_00_RXRDY            : std_logic;
signal CoreWatchdog_0_WDOGRES          : std_logic;
signal DBGMEMPSWR                      : std_logic;
signal LED_net_0                       : std_logic_vector(31 downto 0);
signal MEMADDR                         : std_logic_vector(15 downto 0);
signal MEMDATAO                        : std_logic_vector(7 downto 0);
signal MEMPSRD                         : std_logic;
signal MEMRD                           : std_logic;
signal MEMWR                           : std_logic;
signal TDO                             : std_logic;
signal TRIGOUT                         : std_logic;
signal UART_TX_net_0                   : std_logic;
signal UART_TX_net_1                   : std_logic;
signal MEMPSRD_net_0                   : std_logic;
signal MEMWR_net_0                     : std_logic;
signal MEMRD_net_0                     : std_logic;
signal TDO_net_0                       : std_logic;
signal BREAKOUT_net_0                  : std_logic;
signal TRIGOUT_net_0                   : std_logic;
signal AUXOUT_net_0                    : std_logic;
signal DBGMEMPSWR_net_0                : std_logic;
signal BUSAOUTN_net_1                  : std_logic;
signal BUSBOUTN_net_1                  : std_logic;
signal BUSBINEN_net_1                  : std_logic;
signal BUSBOUTIN_net_1                 : std_logic;
signal BUSAOUTP_net_1                  : std_logic;
signal BUSAOUTIN_net_1                 : std_logic;
signal BUSBOUTP_net_1                  : std_logic;
signal BUSAINEN_net_1                  : std_logic;
signal LED_net_1                       : std_logic_vector(31 downto 0);
signal MEMDATAO_net_0                  : std_logic_vector(7 downto 0);
signal MEMADDR_net_0                   : std_logic_vector(15 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                         : std_logic;
signal VCC_net                         : std_logic;
signal IADDR_const_net_0               : std_logic_vector(31 downto 0);
signal PRDATAS4_const_net_0            : std_logic_vector(31 downto 0);
signal PRDATAS6_const_net_0            : std_logic_vector(31 downto 0);
signal PRDATAS7_const_net_0            : std_logic_vector(31 downto 0);
signal PRDATAS8_const_net_0            : std_logic_vector(31 downto 0);
signal PRDATAS9_const_net_0            : std_logic_vector(31 downto 0);
signal PRDATAS10_const_net_0           : std_logic_vector(31 downto 0);
signal PRDATAS11_const_net_0           : std_logic_vector(31 downto 0);
signal PRDATAS12_const_net_0           : std_logic_vector(31 downto 0);
signal PRDATAS13_const_net_0           : std_logic_vector(31 downto 0);
signal PRDATAS14_const_net_0           : std_logic_vector(31 downto 0);
signal PRDATAS15_const_net_0           : std_logic_vector(31 downto 0);
----------------------------------------------------------------------
-- Bus Interface Nets Declarations - Unequal Pin Widths
----------------------------------------------------------------------
signal Core8051s_00_APB3master_PADDR   : std_logic_vector(11 downto 0);
signal Core8051s_00_APB3master_PADDR_0_31to12: std_logic_vector(31 downto 12);
signal Core8051s_00_APB3master_PADDR_0_11to0: std_logic_vector(11 downto 0);
signal Core8051s_00_APB3master_PADDR_0 : std_logic_vector(31 downto 0);

signal CoreAPB3_0_APBmslave0_PADDR_0_4to0: std_logic_vector(4 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_0   : std_logic_vector(4 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_3_4to2: std_logic_vector(4 downto 2);
signal CoreAPB3_0_APBmslave0_PADDR_3   : std_logic_vector(4 downto 2);
signal CoreAPB3_0_APBmslave0_PADDR_5_12to0: std_logic_vector(12 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_5   : std_logic_vector(12 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_4_16to0: std_logic_vector(16 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_4   : std_logic_vector(16 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_2_4to2: std_logic_vector(4 downto 2);
signal CoreAPB3_0_APBmslave0_PADDR_2   : std_logic_vector(4 downto 2);
signal CoreAPB3_0_APBmslave0_PADDR_1_7to0: std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR_1   : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PADDR     : std_logic_vector(31 downto 0);

signal CoreAPB3_0_APBmslave0_PRDATA_0_31to8: std_logic_vector(31 downto 8);
signal CoreAPB3_0_APBmslave0_PRDATA_0_7to0: std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PRDATA_0  : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave0_PRDATA    : std_logic_vector(7 downto 0);

signal CoreAPB3_0_APBmslave0_PWDATA    : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_0_7to0: std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_0  : std_logic_vector(7 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_2_15to0: std_logic_vector(15 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_2  : std_logic_vector(15 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_1_15to0: std_logic_vector(15 downto 0);
signal CoreAPB3_0_APBmslave0_PWDATA_1  : std_logic_vector(15 downto 0);

signal CoreAPB3_0_APBmslave5_PRDATA_0_31to16: std_logic_vector(31 downto 16);
signal CoreAPB3_0_APBmslave5_PRDATA_0_15to0: std_logic_vector(15 downto 0);
signal CoreAPB3_0_APBmslave5_PRDATA_0  : std_logic_vector(31 downto 0);
signal CoreAPB3_0_APBmslave5_PRDATA    : std_logic_vector(15 downto 0);

signal CoreAPB3_0_APBmslave16_PRDATA   : std_logic_vector(15 downto 0);
signal CoreAPB3_0_APBmslave16_PRDATA_0_31to16: std_logic_vector(31 downto 16);
signal CoreAPB3_0_APBmslave16_PRDATA_0_15to0: std_logic_vector(15 downto 0);
signal CoreAPB3_0_APBmslave16_PRDATA_0 : std_logic_vector(31 downto 0);


begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net               <= '0';
 VCC_net               <= '1';
 IADDR_const_net_0     <= B"00000000000000000000000000000000";
 PRDATAS4_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS6_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS7_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS8_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS9_const_net_0  <= B"00000000000000000000000000000000";
 PRDATAS10_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS11_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS12_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS13_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS14_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS15_const_net_0 <= B"00000000000000000000000000000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 UART_TX_net_1                      <= UART_TX_net_0;
 UART_TX                            <= UART_TX_net_1;
 MEMPSRD_net_0                      <= MEMPSRD;
 ExternalMemIf_MEMPSRD              <= MEMPSRD_net_0;
 MEMWR_net_0                        <= MEMWR;
 ExternalMemIf_MEMWR                <= MEMWR_net_0;
 MEMRD_net_0                        <= MEMRD;
 ExternalMemIf_MEMRD                <= MEMRD_net_0;
 TDO_net_0                          <= TDO;
 DebugIf_TDO                        <= TDO_net_0;
 BREAKOUT_net_0                     <= BREAKOUT;
 DebugIf_BREAKOUT                   <= BREAKOUT_net_0;
 TRIGOUT_net_0                      <= TRIGOUT;
 DebugIf_TRIGOUT                    <= TRIGOUT_net_0;
 AUXOUT_net_0                       <= AUXOUT;
 DebugIf_AUXOUT                     <= AUXOUT_net_0;
 DBGMEMPSWR_net_0                   <= DBGMEMPSWR;
 DebugIf_DBGMEMPSWR                 <= DBGMEMPSWR_net_0;
 BUSAOUTN_net_1                     <= BUSAOUTN_net_0;
 BUSAOUTN                           <= BUSAOUTN_net_1;
 BUSBOUTN_net_1                     <= BUSBOUTN_net_0;
 BUSBOUTN                           <= BUSBOUTN_net_1;
 BUSBINEN_net_1                     <= BUSBINEN_net_0;
 BUSBINEN                           <= BUSBINEN_net_1;
 BUSBOUTIN_net_1                    <= BUSBOUTIN_net_0;
 BUSBOUTIN                          <= BUSBOUTIN_net_1;
 BUSAOUTP_net_1                     <= BUSAOUTP_net_0;
 BUSAOUTP                           <= BUSAOUTP_net_1;
 BUSAOUTIN_net_1                    <= BUSAOUTIN_net_0;
 BUSAOUTIN                          <= BUSAOUTIN_net_1;
 BUSBOUTP_net_1                     <= BUSBOUTP_net_0;
 BUSBOUTP                           <= BUSBOUTP_net_1;
 BUSAINEN_net_1                     <= BUSAINEN_net_0;
 BUSAINEN                           <= BUSAINEN_net_1;
 LED_net_1                          <= LED_net_0;
 LED(31 downto 0)                   <= LED_net_1;
 MEMDATAO_net_0                     <= MEMDATAO;
 ExternalMemIf_MEMDATAO(7 downto 0) <= MEMDATAO_net_0;
 MEMADDR_net_0                      <= MEMADDR;
 ExternalMemIf_MEMADDR(15 downto 0) <= MEMADDR_net_0;
----------------------------------------------------------------------
-- Bus Interface Nets Assignments - Unequal Pin Widths
----------------------------------------------------------------------
 Core8051s_00_APB3master_PADDR_0_31to12(31 downto 12) <= B"00000000000000000000";
 Core8051s_00_APB3master_PADDR_0_11to0(11 downto 0) <= Core8051s_00_APB3master_PADDR(11 downto 0);
 Core8051s_00_APB3master_PADDR_0 <= ( Core8051s_00_APB3master_PADDR_0_31to12(31 downto 12) & Core8051s_00_APB3master_PADDR_0_11to0(11 downto 0) );

 CoreAPB3_0_APBmslave0_PADDR_0_4to0(4 downto 0) <= CoreAPB3_0_APBmslave0_PADDR(4 downto 0);
 CoreAPB3_0_APBmslave0_PADDR_0 <= ( CoreAPB3_0_APBmslave0_PADDR_0_4to0(4 downto 0) );
 CoreAPB3_0_APBmslave0_PADDR_3_4to2(4 downto 2) <= CoreAPB3_0_APBmslave0_PADDR(4 downto 2);
 CoreAPB3_0_APBmslave0_PADDR_3 <= ( CoreAPB3_0_APBmslave0_PADDR_3_4to2(4 downto 2) );
 CoreAPB3_0_APBmslave0_PADDR_5_12to0(12 downto 0) <= CoreAPB3_0_APBmslave0_PADDR(12 downto 0);
 CoreAPB3_0_APBmslave0_PADDR_5 <= ( CoreAPB3_0_APBmslave0_PADDR_5_12to0(12 downto 0) );
 CoreAPB3_0_APBmslave0_PADDR_4_16to0(16 downto 0) <= CoreAPB3_0_APBmslave0_PADDR(16 downto 0);
 CoreAPB3_0_APBmslave0_PADDR_4 <= ( CoreAPB3_0_APBmslave0_PADDR_4_16to0(16 downto 0) );
 CoreAPB3_0_APBmslave0_PADDR_2_4to2(4 downto 2) <= CoreAPB3_0_APBmslave0_PADDR(4 downto 2);
 CoreAPB3_0_APBmslave0_PADDR_2 <= ( CoreAPB3_0_APBmslave0_PADDR_2_4to2(4 downto 2) );
 CoreAPB3_0_APBmslave0_PADDR_1_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PADDR(7 downto 0);
 CoreAPB3_0_APBmslave0_PADDR_1 <= ( CoreAPB3_0_APBmslave0_PADDR_1_7to0(7 downto 0) );

 CoreAPB3_0_APBmslave0_PRDATA_0_31to8(31 downto 8) <= B"000000000000000000000000";
 CoreAPB3_0_APBmslave0_PRDATA_0_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PRDATA(7 downto 0);
 CoreAPB3_0_APBmslave0_PRDATA_0 <= ( CoreAPB3_0_APBmslave0_PRDATA_0_31to8(31 downto 8) & CoreAPB3_0_APBmslave0_PRDATA_0_7to0(7 downto 0) );

 CoreAPB3_0_APBmslave0_PWDATA_0_7to0(7 downto 0) <= CoreAPB3_0_APBmslave0_PWDATA(7 downto 0);
 CoreAPB3_0_APBmslave0_PWDATA_0 <= ( CoreAPB3_0_APBmslave0_PWDATA_0_7to0(7 downto 0) );
 CoreAPB3_0_APBmslave0_PWDATA_2_15to0(15 downto 0) <= CoreAPB3_0_APBmslave0_PWDATA(15 downto 0);
 CoreAPB3_0_APBmslave0_PWDATA_2 <= ( CoreAPB3_0_APBmslave0_PWDATA_2_15to0(15 downto 0) );
 CoreAPB3_0_APBmslave0_PWDATA_1_15to0(15 downto 0) <= CoreAPB3_0_APBmslave0_PWDATA(15 downto 0);
 CoreAPB3_0_APBmslave0_PWDATA_1 <= ( CoreAPB3_0_APBmslave0_PWDATA_1_15to0(15 downto 0) );

 CoreAPB3_0_APBmslave5_PRDATA_0_31to16(31 downto 16) <= B"0000000000000000";
 CoreAPB3_0_APBmslave5_PRDATA_0_15to0(15 downto 0) <= CoreAPB3_0_APBmslave5_PRDATA(15 downto 0);
 CoreAPB3_0_APBmslave5_PRDATA_0 <= ( CoreAPB3_0_APBmslave5_PRDATA_0_31to16(31 downto 16) & CoreAPB3_0_APBmslave5_PRDATA_0_15to0(15 downto 0) );

 CoreAPB3_0_APBmslave16_PRDATA_0_31to16(31 downto 16) <= B"0000000000000000";
 CoreAPB3_0_APBmslave16_PRDATA_0_15to0(15 downto 0) <= CoreAPB3_0_APBmslave16_PRDATA(15 downto 0);
 CoreAPB3_0_APBmslave16_PRDATA_0 <= ( CoreAPB3_0_APBmslave16_PRDATA_0_31to16(31 downto 16) & CoreAPB3_0_APBmslave16_PRDATA_0_15to0(15 downto 0) );

----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- BRT_0_0
BRT_0_0 : BRT_0
    port map( 
        -- Inputs
        PENABLE   => CoreAPB3_0_APBmslave0_PENABLE,
        PSEL      => CoreAPB3_0_APBmslave16_PSELx,
        PWRITE    => CoreAPB3_0_APBmslave0_PWRITE,
        PCLK      => SYSCLK,
        PRESETN   => Core8051s_00_PRESETN,
        BUSBINP   => BUSBINP,
        BUSAINP   => BUSAINP,
        BUSBINN   => BUSBINN,
        BUSAINN   => BUSAINN,
        CLK       => BRT_CLK,
        PADDR     => CoreAPB3_0_APBmslave0_PADDR_5,
        PWDATA    => CoreAPB3_0_APBmslave0_PWDATA_2,
        -- Outputs
        BUSBINEN  => BUSBINEN_net_0,
        BUSAOUTN  => BUSAOUTN_net_0,
        BUSBOUTN  => BUSBOUTN_net_0,
        BUSAOUTP  => BUSAOUTP_net_0,
        BUSAOUTIN => BUSAOUTIN_net_0,
        BUSBOUTP  => BUSBOUTP_net_0,
        BUSBOUTIN => BUSBOUTIN_net_0,
        BUSAINEN  => BUSAINEN_net_0,
        PRDATA    => CoreAPB3_0_APBmslave16_PRDATA 
        );
-- CORE8051S_0   -   Actel:DirectCore:CORE8051S:2.4.101
CORE8051S_0 : CORE8051S
    generic map( 
        APB_DWIDTH            => ( 32 ),
        DEBUG                 => ( 2 ),
        EN_FF_OPTS            => ( 0 ),
        FAMILY                => ( 17 ),
        INCL_DPTR1            => ( 1 ),
        INCL_MUL_DIV_DA       => ( 1 ),
        INCL_TRACE            => ( 0 ),
        INTRAM_IMPLEMENTATION => ( 0 ),
        STRETCH_VAL           => ( 1 ),
        TRIG_NUM              => ( 4 ),
        VARIABLE_STRETCH      => ( 0 ),
        VARIABLE_WAIT         => ( 0 ),
        WAIT_VAL              => ( 1 )
        )
    port map( 
        -- Inputs
        CLK        => SYSCLK,
        NSYSRESET  => NSYSRESET,
        WDOGRES    => CoreWatchdog_0_WDOGRES,
        INT0       => CoreTimer_00_TIMINT,
        INT1       => CoreUARTapb_00_RXRDY,
        PREADY     => Core8051s_00_APB3master_PREADY,
        PSLVERR    => Core8051s_00_APB3master_PSLVERR,
        MEMPSACKI  => ExternalMemIf_MEMPSACKI,
        MEMACKI    => ExternalMemIf_MEMACKI,
        TCK        => DebugIf_TCK,
        TMS        => DebugIf_TMS,
        TDI        => DebugIf_TDI,
        TRSTN      => DebugIf_TRSTN,
        BREAKIN    => DebugIf_BREAKIN,
        PRDATA     => Core8051s_00_APB3master_PRDATA,
        MEMDATAI   => ExternalMemIf_MEMDATAI,
        MEMBANK    => DebugIf_MEMBANK,
        -- Outputs
        PRESETN    => Core8051s_00_PRESETN,
        WDOGRESN   => CORE8051S_0_WDOGRESN,
        MOVX       => OPEN,
        PWRITE     => Core8051s_00_APB3master_PWRITE,
        PENABLE    => Core8051s_00_APB3master_PENABLE,
        PSEL       => Core8051s_00_APB3master_PSELx,
        MEMPSRD    => MEMPSRD,
        MEMWR      => MEMWR,
        MEMRD      => MEMRD,
        TDO        => TDO,
        BREAKOUT   => BREAKOUT,
        DBGMEMPSWR => DBGMEMPSWR,
        TRIGOUT    => TRIGOUT,
        AUXOUT     => AUXOUT,
        PADDR      => Core8051s_00_APB3master_PADDR,
        PWDATA     => Core8051s_00_APB3master_PWDATA,
        MEMDATAO   => MEMDATAO,
        MEMADDR    => MEMADDR 
        );
-- CoreAPB3_0   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3_0 : entity COREAPB3_LIB.CoreAPB3
    generic map( 
        APB_DWIDTH      => ( 32 ),
        APBSLOT0ENABLE  => ( 1 ),
        APBSLOT1ENABLE  => ( 1 ),
        APBSLOT2ENABLE  => ( 1 ),
        APBSLOT3ENABLE  => ( 1 ),
        APBSLOT4ENABLE  => ( 0 ),
        APBSLOT5ENABLE  => ( 1 ),
        APBSLOT6ENABLE  => ( 0 ),
        APBSLOT7ENABLE  => ( 0 ),
        APBSLOT8ENABLE  => ( 0 ),
        APBSLOT9ENABLE  => ( 0 ),
        APBSLOT10ENABLE => ( 0 ),
        APBSLOT11ENABLE => ( 0 ),
        APBSLOT12ENABLE => ( 0 ),
        APBSLOT13ENABLE => ( 0 ),
        APBSLOT14ENABLE => ( 0 ),
        APBSLOT15ENABLE => ( 0 ),
        FAMILY          => ( 17 ),
        IADDR_OPTION    => ( 0 ),
        MADDR_BITS      => ( 12 ),
        SC_0            => ( 0 ),
        SC_1            => ( 0 ),
        SC_2            => ( 0 ),
        SC_3            => ( 0 ),
        SC_4            => ( 0 ),
        SC_5            => ( 0 ),
        SC_6            => ( 0 ),
        SC_7            => ( 0 ),
        SC_8            => ( 1 ),
        SC_9            => ( 1 ),
        SC_10           => ( 1 ),
        SC_11           => ( 1 ),
        SC_12           => ( 1 ),
        SC_13           => ( 1 ),
        SC_14           => ( 1 ),
        SC_15           => ( 1 ),
        UPR_NIBBLE_POSN => ( 2 )
        )
    port map( 
        -- Inputs
        PRESETN    => GND_net, -- tied to '0' from definition
        PCLK       => GND_net, -- tied to '0' from definition
        PWRITE     => Core8051s_00_APB3master_PWRITE,
        PENABLE    => Core8051s_00_APB3master_PENABLE,
        PSEL       => Core8051s_00_APB3master_PSELx,
        PREADYS0   => CoreAPB3_0_APBmslave0_PREADY,
        PSLVERRS0  => CoreAPB3_0_APBmslave0_PSLVERR,
        PREADYS1   => CoreAPB3_0_APBmslave1_0_PREADY,
        PSLVERRS1  => CoreAPB3_0_APBmslave1_0_PSLVERR,
        PREADYS2   => VCC_net, -- tied to '1' from definition
        PSLVERRS2  => GND_net, -- tied to '0' from definition
        PREADYS3   => VCC_net, -- tied to '1' from definition
        PSLVERRS3  => GND_net, -- tied to '0' from definition
        PREADYS4   => VCC_net, -- tied to '1' from definition
        PSLVERRS4  => GND_net, -- tied to '0' from definition
        PREADYS5   => CoreAPB3_0_APBmslave5_PREADY,
        PSLVERRS5  => CoreAPB3_0_APBmslave5_PSLVERR,
        PREADYS6   => VCC_net, -- tied to '1' from definition
        PSLVERRS6  => GND_net, -- tied to '0' from definition
        PREADYS7   => VCC_net, -- tied to '1' from definition
        PSLVERRS7  => GND_net, -- tied to '0' from definition
        PREADYS8   => VCC_net, -- tied to '1' from definition
        PSLVERRS8  => GND_net, -- tied to '0' from definition
        PREADYS9   => VCC_net, -- tied to '1' from definition
        PSLVERRS9  => GND_net, -- tied to '0' from definition
        PREADYS10  => VCC_net, -- tied to '1' from definition
        PSLVERRS10 => GND_net, -- tied to '0' from definition
        PREADYS11  => VCC_net, -- tied to '1' from definition
        PSLVERRS11 => GND_net, -- tied to '0' from definition
        PREADYS12  => VCC_net, -- tied to '1' from definition
        PSLVERRS12 => GND_net, -- tied to '0' from definition
        PREADYS13  => VCC_net, -- tied to '1' from definition
        PSLVERRS13 => GND_net, -- tied to '0' from definition
        PREADYS14  => VCC_net, -- tied to '1' from definition
        PSLVERRS14 => GND_net, -- tied to '0' from definition
        PREADYS15  => VCC_net, -- tied to '1' from definition
        PSLVERRS15 => GND_net, -- tied to '0' from definition
        PREADYS16  => VCC_net, -- tied to '1' from definition
        PSLVERRS16 => GND_net, -- tied to '0' from definition
        PADDR      => Core8051s_00_APB3master_PADDR_0,
        PWDATA     => Core8051s_00_APB3master_PWDATA,
        PRDATAS0   => CoreAPB3_0_APBmslave0_PRDATA_0,
        PRDATAS1   => CoreAPB3_0_APBmslave1_0_PRDATA,
        PRDATAS2   => CoreAPB3_0_APBmslave2_PRDATA,
        PRDATAS3   => CoreAPB3_0_APBmslave3_PRDATA,
        PRDATAS4   => PRDATAS4_const_net_0, -- tied to X"0" from definition
        PRDATAS5   => CoreAPB3_0_APBmslave5_PRDATA_0,
        PRDATAS6   => PRDATAS6_const_net_0, -- tied to X"0" from definition
        PRDATAS7   => PRDATAS7_const_net_0, -- tied to X"0" from definition
        PRDATAS8   => PRDATAS8_const_net_0, -- tied to X"0" from definition
        PRDATAS9   => PRDATAS9_const_net_0, -- tied to X"0" from definition
        PRDATAS10  => PRDATAS10_const_net_0, -- tied to X"0" from definition
        PRDATAS11  => PRDATAS11_const_net_0, -- tied to X"0" from definition
        PRDATAS12  => PRDATAS12_const_net_0, -- tied to X"0" from definition
        PRDATAS13  => PRDATAS13_const_net_0, -- tied to X"0" from definition
        PRDATAS14  => PRDATAS14_const_net_0, -- tied to X"0" from definition
        PRDATAS15  => PRDATAS15_const_net_0, -- tied to X"0" from definition
        PRDATAS16  => CoreAPB3_0_APBmslave16_PRDATA_0,
        IADDR      => IADDR_const_net_0, -- tied to X"0" from definition
        -- Outputs
        PREADY     => Core8051s_00_APB3master_PREADY,
        PSLVERR    => Core8051s_00_APB3master_PSLVERR,
        PWRITES    => CoreAPB3_0_APBmslave0_PWRITE,
        PENABLES   => CoreAPB3_0_APBmslave0_PENABLE,
        PSELS0     => CoreAPB3_0_APBmslave0_PSELx,
        PSELS1     => CoreAPB3_0_APBmslave1_0_PSELx,
        PSELS2     => CoreAPB3_0_APBmslave2_PSELx,
        PSELS3     => CoreAPB3_0_APBmslave3_PSELx,
        PSELS4     => OPEN,
        PSELS5     => CoreAPB3_0_APBmslave5_PSELx,
        PSELS6     => OPEN,
        PSELS7     => OPEN,
        PSELS8     => OPEN,
        PSELS9     => OPEN,
        PSELS10    => OPEN,
        PSELS11    => OPEN,
        PSELS12    => OPEN,
        PSELS13    => OPEN,
        PSELS14    => OPEN,
        PSELS15    => OPEN,
        PSELS16    => CoreAPB3_0_APBmslave16_PSELx,
        PRDATA     => Core8051s_00_APB3master_PRDATA,
        PADDRS     => CoreAPB3_0_APBmslave0_PADDR,
        PWDATAS    => CoreAPB3_0_APBmslave0_PWDATA 
        );
-- COREAPBSRAM_0   -   Actel:DirectCore:COREAPBSRAM:2.0.102
COREAPBSRAM_0 : entity COREAPBSRAM_LIB.COREAPBSRAM
    generic map( 
        ADDR_SCHEME            => ( 1 ),
        APB_DWIDTH             => ( 16 ),
        FAMILY                 => ( 17 ),
        NUM_LOCATIONS_DWIDTH08 => ( 512 ),
        NUM_LOCATIONS_DWIDTH16 => ( 512 ),
        NUM_LOCATIONS_DWIDTH24 => ( 512 ),
        NUM_LOCATIONS_DWIDTH32 => ( 512 )
        )
    port map( 
        -- Inputs
        PENABLE => CoreAPB3_0_APBmslave0_PENABLE,
        PSEL    => CoreAPB3_0_APBmslave5_PSELx,
        PWRITE  => CoreAPB3_0_APBmslave0_PWRITE,
        PCLK    => SYSCLK,
        PRESETN => Core8051s_00_PRESETN,
        PADDR   => CoreAPB3_0_APBmslave0_PADDR_4,
        PWDATA  => CoreAPB3_0_APBmslave0_PWDATA_1,
        -- Outputs
        PREADY  => CoreAPB3_0_APBmslave5_PREADY,
        PSLVERR => CoreAPB3_0_APBmslave5_PSLVERR,
        PRDATA  => CoreAPB3_0_APBmslave5_PRDATA 
        );
-- CoreGPIO_0   -   Actel:DirectCore:CoreGPIO:3.1.101
CoreGPIO_0 : entity COREGPIO_LIB.CoreGPIO
    generic map( 
        APB_WIDTH       => ( 32 ),
        FAMILY          => ( 17 ),
        FIXED_CONFIG_0  => ( 0 ),
        FIXED_CONFIG_1  => ( 0 ),
        FIXED_CONFIG_2  => ( 0 ),
        FIXED_CONFIG_3  => ( 0 ),
        FIXED_CONFIG_4  => ( 0 ),
        FIXED_CONFIG_5  => ( 0 ),
        FIXED_CONFIG_6  => ( 0 ),
        FIXED_CONFIG_7  => ( 0 ),
        FIXED_CONFIG_8  => ( 0 ),
        FIXED_CONFIG_9  => ( 0 ),
        FIXED_CONFIG_10 => ( 0 ),
        FIXED_CONFIG_11 => ( 0 ),
        FIXED_CONFIG_12 => ( 0 ),
        FIXED_CONFIG_13 => ( 0 ),
        FIXED_CONFIG_14 => ( 0 ),
        FIXED_CONFIG_15 => ( 0 ),
        FIXED_CONFIG_16 => ( 0 ),
        FIXED_CONFIG_17 => ( 0 ),
        FIXED_CONFIG_18 => ( 0 ),
        FIXED_CONFIG_19 => ( 0 ),
        FIXED_CONFIG_20 => ( 0 ),
        FIXED_CONFIG_21 => ( 0 ),
        FIXED_CONFIG_22 => ( 0 ),
        FIXED_CONFIG_23 => ( 0 ),
        FIXED_CONFIG_24 => ( 0 ),
        FIXED_CONFIG_25 => ( 0 ),
        FIXED_CONFIG_26 => ( 0 ),
        FIXED_CONFIG_27 => ( 0 ),
        FIXED_CONFIG_28 => ( 0 ),
        FIXED_CONFIG_29 => ( 0 ),
        FIXED_CONFIG_30 => ( 0 ),
        FIXED_CONFIG_31 => ( 0 ),
        INT_BUS         => ( 0 ),
        IO_INT_TYPE_0   => ( 7 ),
        IO_INT_TYPE_1   => ( 7 ),
        IO_INT_TYPE_2   => ( 7 ),
        IO_INT_TYPE_3   => ( 7 ),
        IO_INT_TYPE_4   => ( 7 ),
        IO_INT_TYPE_5   => ( 7 ),
        IO_INT_TYPE_6   => ( 7 ),
        IO_INT_TYPE_7   => ( 7 ),
        IO_INT_TYPE_8   => ( 7 ),
        IO_INT_TYPE_9   => ( 7 ),
        IO_INT_TYPE_10  => ( 7 ),
        IO_INT_TYPE_11  => ( 7 ),
        IO_INT_TYPE_12  => ( 7 ),
        IO_INT_TYPE_13  => ( 7 ),
        IO_INT_TYPE_14  => ( 7 ),
        IO_INT_TYPE_15  => ( 7 ),
        IO_INT_TYPE_16  => ( 7 ),
        IO_INT_TYPE_17  => ( 7 ),
        IO_INT_TYPE_18  => ( 7 ),
        IO_INT_TYPE_19  => ( 7 ),
        IO_INT_TYPE_20  => ( 7 ),
        IO_INT_TYPE_21  => ( 7 ),
        IO_INT_TYPE_22  => ( 7 ),
        IO_INT_TYPE_23  => ( 7 ),
        IO_INT_TYPE_24  => ( 7 ),
        IO_INT_TYPE_25  => ( 7 ),
        IO_INT_TYPE_26  => ( 7 ),
        IO_INT_TYPE_27  => ( 7 ),
        IO_INT_TYPE_28  => ( 7 ),
        IO_INT_TYPE_29  => ( 7 ),
        IO_INT_TYPE_30  => ( 7 ),
        IO_INT_TYPE_31  => ( 7 ),
        IO_NUM          => ( 32 ),
        IO_TYPE_0       => ( 0 ),
        IO_TYPE_1       => ( 0 ),
        IO_TYPE_2       => ( 0 ),
        IO_TYPE_3       => ( 0 ),
        IO_TYPE_4       => ( 0 ),
        IO_TYPE_5       => ( 0 ),
        IO_TYPE_6       => ( 0 ),
        IO_TYPE_7       => ( 0 ),
        IO_TYPE_8       => ( 0 ),
        IO_TYPE_9       => ( 0 ),
        IO_TYPE_10      => ( 0 ),
        IO_TYPE_11      => ( 0 ),
        IO_TYPE_12      => ( 0 ),
        IO_TYPE_13      => ( 0 ),
        IO_TYPE_14      => ( 0 ),
        IO_TYPE_15      => ( 0 ),
        IO_TYPE_16      => ( 0 ),
        IO_TYPE_17      => ( 0 ),
        IO_TYPE_18      => ( 0 ),
        IO_TYPE_19      => ( 0 ),
        IO_TYPE_20      => ( 0 ),
        IO_TYPE_21      => ( 0 ),
        IO_TYPE_22      => ( 0 ),
        IO_TYPE_23      => ( 0 ),
        IO_TYPE_24      => ( 0 ),
        IO_TYPE_25      => ( 0 ),
        IO_TYPE_26      => ( 0 ),
        IO_TYPE_27      => ( 0 ),
        IO_TYPE_28      => ( 0 ),
        IO_TYPE_29      => ( 0 ),
        IO_TYPE_30      => ( 0 ),
        IO_TYPE_31      => ( 0 ),
        IO_VAL_0        => ( 0 ),
        IO_VAL_1        => ( 0 ),
        IO_VAL_2        => ( 0 ),
        IO_VAL_3        => ( 0 ),
        IO_VAL_4        => ( 0 ),
        IO_VAL_5        => ( 0 ),
        IO_VAL_6        => ( 0 ),
        IO_VAL_7        => ( 0 ),
        IO_VAL_8        => ( 0 ),
        IO_VAL_9        => ( 0 ),
        IO_VAL_10       => ( 0 ),
        IO_VAL_11       => ( 0 ),
        IO_VAL_12       => ( 0 ),
        IO_VAL_13       => ( 0 ),
        IO_VAL_14       => ( 0 ),
        IO_VAL_15       => ( 0 ),
        IO_VAL_16       => ( 0 ),
        IO_VAL_17       => ( 0 ),
        IO_VAL_18       => ( 0 ),
        IO_VAL_19       => ( 0 ),
        IO_VAL_20       => ( 0 ),
        IO_VAL_21       => ( 0 ),
        IO_VAL_22       => ( 0 ),
        IO_VAL_23       => ( 0 ),
        IO_VAL_24       => ( 0 ),
        IO_VAL_25       => ( 0 ),
        IO_VAL_26       => ( 0 ),
        IO_VAL_27       => ( 0 ),
        IO_VAL_28       => ( 0 ),
        IO_VAL_29       => ( 0 ),
        IO_VAL_30       => ( 0 ),
        IO_VAL_31       => ( 0 ),
        OE_TYPE         => ( 1 )
        )
    port map( 
        -- Inputs
        PRESETN  => Core8051s_00_PRESETN,
        PCLK     => SYSCLK,
        PSEL     => CoreAPB3_0_APBmslave1_0_PSELx,
        PENABLE  => CoreAPB3_0_APBmslave0_PENABLE,
        PWRITE   => CoreAPB3_0_APBmslave0_PWRITE,
        PADDR    => CoreAPB3_0_APBmslave0_PADDR_1,
        PWDATA   => CoreAPB3_0_APBmslave0_PWDATA,
        GPIO_IN  => SWITCH,
        -- Outputs
        PSLVERR  => CoreAPB3_0_APBmslave1_0_PSLVERR,
        PREADY   => CoreAPB3_0_APBmslave1_0_PREADY,
        INT_OR   => OPEN,
        PRDATA   => CoreAPB3_0_APBmslave1_0_PRDATA,
        INT      => OPEN,
        GPIO_OUT => LED_net_0,
        GPIO_OE  => OPEN 
        );
-- CoreTimer_0   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer_0 : CoreTimer
    generic map( 
        FAMILY     => ( 17 ),
        INTACTIVEH => ( 1 ),
        WIDTH      => ( 32 )
        )
    port map( 
        -- Inputs
        PCLK    => SYSCLK,
        PRESETn => Core8051s_00_PRESETN,
        PSEL    => CoreAPB3_0_APBmslave2_PSELx,
        PWRITE  => CoreAPB3_0_APBmslave0_PWRITE,
        PENABLE => CoreAPB3_0_APBmslave0_PENABLE,
        PADDR   => CoreAPB3_0_APBmslave0_PADDR_2,
        PWDATA  => CoreAPB3_0_APBmslave0_PWDATA,
        -- Outputs
        TIMINT  => CoreTimer_00_TIMINT,
        PRDATA  => CoreAPB3_0_APBmslave2_PRDATA 
        );
-- CoreUARTapb_0   -   Actel:DirectCore:CoreUARTapb:5.5.101
CoreUARTapb_0 : sys_CoreUARTapb_0_CoreUARTapb
    generic map( 
        BAUD_VAL_FRCTN    => ( 0 ),
        BAUD_VAL_FRCTN_EN => ( 0 ),
        BAUD_VALUE        => ( 1 ),
        FAMILY            => ( 17 ),
        FIXEDMODE         => ( 0 ),
        PRG_BIT8          => ( 0 ),
        PRG_PARITY        => ( 0 ),
        RX_FIFO           => ( 0 ),
        RX_LEGACY_MODE    => ( 0 ),
        TX_FIFO           => ( 0 )
        )
    port map( 
        -- Inputs
        PCLK        => SYSCLK,
        PRESETN     => Core8051s_00_PRESETN,
        PSEL        => CoreAPB3_0_APBmslave0_PSELx,
        PENABLE     => CoreAPB3_0_APBmslave0_PENABLE,
        PWRITE      => CoreAPB3_0_APBmslave0_PWRITE,
        RX          => UART_RX,
        PADDR       => CoreAPB3_0_APBmslave0_PADDR_0,
        PWDATA      => CoreAPB3_0_APBmslave0_PWDATA_0,
        -- Outputs
        TXRDY       => OPEN,
        RXRDY       => CoreUARTapb_00_RXRDY,
        PARITY_ERR  => OPEN,
        OVERFLOW    => OPEN,
        TX          => UART_TX_net_0,
        PREADY      => CoreAPB3_0_APBmslave0_PREADY,
        PSLVERR     => CoreAPB3_0_APBmslave0_PSLVERR,
        FRAMING_ERR => OPEN,
        PRDATA      => CoreAPB3_0_APBmslave0_PRDATA 
        );
-- CoreWatchdog_0   -   Actel:DirectCore:CoreWatchdog:1.1.101
CoreWatchdog_0 : CoreWatchdog
    generic map( 
        WIDTH => ( 32 )
        )
    port map( 
        -- Inputs
        PCLK     => SYSCLK,
        PRESETn  => Core8051s_00_PRESETN,
        PSEL     => CoreAPB3_0_APBmslave3_PSELx,
        PWRITE   => CoreAPB3_0_APBmslave0_PWRITE,
        PENABLE  => CoreAPB3_0_APBmslave0_PENABLE,
        WDOGRESn => CORE8051S_0_WDOGRESN,
        PADDR    => CoreAPB3_0_APBmslave0_PADDR_3,
        PWDATA   => CoreAPB3_0_APBmslave0_PWDATA,
        -- Outputs
        WDOGRES  => CoreWatchdog_0_WDOGRES,
        PRDATA   => CoreAPB3_0_APBmslave3_PRDATA 
        );

end RTL;
