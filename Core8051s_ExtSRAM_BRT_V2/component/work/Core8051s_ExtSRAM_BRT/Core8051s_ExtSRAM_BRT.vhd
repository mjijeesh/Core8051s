----------------------------------------------------------------------
-- Created by SmartDesign Tue May 03 12:13:08 2016
-- Version: v11.7 11.7.0.119
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library fusion;
use fusion.all;
----------------------------------------------------------------------
-- Core8051s_ExtSRAM_BRT entity declaration
----------------------------------------------------------------------
entity Core8051s_ExtSRAM_BRT is
    -- Port list
    port(
        -- Inputs
        BUSAINN       : in    std_logic;
        BUSAINP       : in    std_logic;
        BUSBINN       : in    std_logic;
        BUSBINP       : in    std_logic;
        DebugIf_TCK   : in    std_logic;
        DebugIf_TDI   : in    std_logic;
        DebugIf_TMS   : in    std_logic;
        DebugIf_TRSTN : in    std_logic;
        NSYSRESET     : in    std_logic;
        SWITCH        : in    std_logic_vector(7 downto 0);
        UART_RX       : in    std_logic;
        -- Outputs
        BUSAINEN      : out   std_logic;
        BUSAOUTIN     : out   std_logic;
        BUSAOUTN      : out   std_logic;
        BUSAOUTP      : out   std_logic;
        BUSBINEN      : out   std_logic;
        BUSBOUTIN     : out   std_logic;
        BUSBOUTN      : out   std_logic;
        BUSBOUTP      : out   std_logic;
        DebugIf_TDO   : out   std_logic;
        FLASH_BYTEn   : out   std_logic;
        FLASH_CEn     : out   std_logic;
        FLASH_OEn     : out   std_logic;
        FLASH_RPn     : out   std_logic;
        FLASH_VPEN    : out   std_logic;
        FLASH_WEn     : out   std_logic;
        LED           : out   std_logic_vector(7 downto 0);
        MEM_ADDR      : out   std_logic_vector(23 downto 0);
        SRAM_BHEn0    : out   std_logic;
        SRAM_BHEn1    : out   std_logic;
        SRAM_BLEn0    : out   std_logic;
        SRAM_BLEn1    : out   std_logic;
        SRAM_CE2      : out   std_logic;
        SRAM_CEn1     : out   std_logic;
        SRAM_OEn      : out   std_logic;
        SRAM_WEn      : out   std_logic;
        UART_TX       : out   std_logic;
        -- Inouts
        MEM_DATA      : inout std_logic_vector(7 downto 0)
        );
end Core8051s_ExtSRAM_BRT;
----------------------------------------------------------------------
-- Core8051s_ExtSRAM_BRT architecture body
----------------------------------------------------------------------
architecture RTL of Core8051s_ExtSRAM_BRT is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- memory_mux
component memory_mux
    -- Port list
    port(
        -- Inputs
        SYSCLK      : in    std_logic;
        memaddr     : in    std_logic_vector(15 downto 0);
        memdatai    : in    std_logic_vector(7 downto 0);
        mempsrd     : in    std_logic;
        mempswr     : in    std_logic;
        memrd       : in    std_logic;
        memwr       : in    std_logic;
        -- Outputs
        FLASH_BYTEn : out   std_logic;
        FLASH_CEn   : out   std_logic;
        FLASH_OEn   : out   std_logic;
        FLASH_RPn   : out   std_logic;
        FLASH_VPEN  : out   std_logic;
        FLASH_WEn   : out   std_logic;
        MEM_ADDR    : out   std_logic_vector(23 downto 0);
        SRAM_BHEn0  : out   std_logic;
        SRAM_BHEn1  : out   std_logic;
        SRAM_BLEn0  : out   std_logic;
        SRAM_BLEn1  : out   std_logic;
        SRAM_CE2    : out   std_logic;
        SRAM_CEn1   : out   std_logic;
        SRAM_OEn    : out   std_logic;
        SRAM_WEn    : out   std_logic;
        memdatao    : out   std_logic_vector(7 downto 0);
        -- Inouts
        MEM_DATA    : inout std_logic_vector(7 downto 0)
        );
end component;
-- PLL_50Mh_6Mh
component PLL_50Mh_6Mh
    -- Port list
    port(
        -- Inputs
        CLKA      : in  std_logic;
        OADIVRST  : in  std_logic;
        POWERDOWN : in  std_logic;
        -- Outputs
        GLA       : out std_logic;
        GLB       : out std_logic;
        LOCK      : out std_logic
        );
end component;
-- rc_osc
component rc_osc
    -- Port list
    port(
        -- Outputs
        CLKOUT : out std_logic
        );
end component;
-- sys
component sys
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
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal BUSAINEN_net_0                 : std_logic;
signal BUSAOUTIN_net_0                : std_logic;
signal BUSAOUTN_net_0                 : std_logic;
signal BUSAOUTP_net_0                 : std_logic;
signal BUSBINEN_net_0                 : std_logic;
signal BUSBOUTIN_net_0                : std_logic;
signal BUSBOUTN_net_0                 : std_logic;
signal BUSBOUTP_net_0                 : std_logic;
signal DebugIf_TDO_net_0              : std_logic;
signal FLASH_BYTEn_net_0              : std_logic;
signal FLASH_CEn_net_0                : std_logic;
signal FLASH_OEn_net_0                : std_logic;
signal FLASH_RPn_net_0                : std_logic;
signal FLASH_VPEN_net_0               : std_logic;
signal FLASH_WEn_net_0                : std_logic;
signal GLB                            : std_logic;
signal LED_net_0                      : std_logic_vector(7 downto 0);
signal MEM_ADDR_net_0                 : std_logic_vector(23 downto 0);
signal memory_mux_0_memdatao          : std_logic_vector(7 downto 0);
signal PLL_50Mh_6Mh_0_GLA             : std_logic;
signal rc_osc_0_RCOscClk_bif_RCCLKOUT : std_logic;
signal SRAM_BHEn0_net_0               : std_logic;
signal SRAM_BHEn1_net_0               : std_logic;
signal SRAM_BLEn0_net_0               : std_logic;
signal SRAM_BLEn1_net_0               : std_logic;
signal SRAM_CE2_net_0                 : std_logic;
signal SRAM_CEn1_net_0                : std_logic;
signal SRAM_OEn_net_0                 : std_logic;
signal SRAM_WEn_net_0                 : std_logic;
signal sys_0_DebugIf_DBGMEMPSWR       : std_logic;
signal sys_0_ExternalMemIf_MEMADDR    : std_logic_vector(15 downto 0);
signal sys_0_ExternalMemIf_MEMDATAO   : std_logic_vector(7 downto 0);
signal sys_0_ExternalMemIf_MEMPSRD    : std_logic;
signal sys_0_ExternalMemIf_MEMRD      : std_logic;
signal sys_0_ExternalMemIf_MEMWR      : std_logic;
signal UART_TX_net_0                  : std_logic;
signal FLASH_CEn_net_1                : std_logic;
signal FLASH_WEn_net_1                : std_logic;
signal FLASH_OEn_net_1                : std_logic;
signal FLASH_VPEN_net_1               : std_logic;
signal FLASH_RPn_net_1                : std_logic;
signal FLASH_BYTEn_net_1              : std_logic;
signal SRAM_BLEn1_net_1               : std_logic;
signal SRAM_CE2_net_1                 : std_logic;
signal SRAM_OEn_net_1                 : std_logic;
signal SRAM_WEn_net_1                 : std_logic;
signal SRAM_CEn1_net_1                : std_logic;
signal SRAM_BHEn0_net_1               : std_logic;
signal SRAM_BLEn0_net_1               : std_logic;
signal SRAM_BHEn1_net_1               : std_logic;
signal DebugIf_TDO_net_1              : std_logic;
signal UART_TX_net_1                  : std_logic;
signal BUSAOUTN_net_1                 : std_logic;
signal BUSBOUTN_net_1                 : std_logic;
signal BUSBINEN_net_1                 : std_logic;
signal BUSBOUTIN_net_1                : std_logic;
signal BUSAOUTP_net_1                 : std_logic;
signal BUSAOUTIN_net_1                : std_logic;
signal BUSBOUTP_net_1                 : std_logic;
signal BUSAINEN_net_1                 : std_logic;
signal MEM_ADDR_net_1                 : std_logic_vector(23 downto 0);
signal LED_net_1                      : std_logic_vector(7 downto 0);
signal LED_slice_0                    : std_logic_vector(31 downto 8);
signal SWITCH_net_0                   : std_logic_vector(31 downto 0);
signal LED_net_2                      : std_logic_vector(31 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal VCC_net                        : std_logic;
signal GND_net                        : std_logic;
signal SWITCH_const_net_0             : std_logic_vector(31 downto 8);
signal DebugIf_MEMBANK_const_net_0    : std_logic_vector(3 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 VCC_net                     <= '1';
 GND_net                     <= '0';
 SWITCH_const_net_0          <= B"000000000000000000000000";
 DebugIf_MEMBANK_const_net_0 <= B"0000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 FLASH_CEn_net_1       <= FLASH_CEn_net_0;
 FLASH_CEn             <= FLASH_CEn_net_1;
 FLASH_WEn_net_1       <= FLASH_WEn_net_0;
 FLASH_WEn             <= FLASH_WEn_net_1;
 FLASH_OEn_net_1       <= FLASH_OEn_net_0;
 FLASH_OEn             <= FLASH_OEn_net_1;
 FLASH_VPEN_net_1      <= FLASH_VPEN_net_0;
 FLASH_VPEN            <= FLASH_VPEN_net_1;
 FLASH_RPn_net_1       <= FLASH_RPn_net_0;
 FLASH_RPn             <= FLASH_RPn_net_1;
 FLASH_BYTEn_net_1     <= FLASH_BYTEn_net_0;
 FLASH_BYTEn           <= FLASH_BYTEn_net_1;
 SRAM_BLEn1_net_1      <= SRAM_BLEn1_net_0;
 SRAM_BLEn1            <= SRAM_BLEn1_net_1;
 SRAM_CE2_net_1        <= SRAM_CE2_net_0;
 SRAM_CE2              <= SRAM_CE2_net_1;
 SRAM_OEn_net_1        <= SRAM_OEn_net_0;
 SRAM_OEn              <= SRAM_OEn_net_1;
 SRAM_WEn_net_1        <= SRAM_WEn_net_0;
 SRAM_WEn              <= SRAM_WEn_net_1;
 SRAM_CEn1_net_1       <= SRAM_CEn1_net_0;
 SRAM_CEn1             <= SRAM_CEn1_net_1;
 SRAM_BHEn0_net_1      <= SRAM_BHEn0_net_0;
 SRAM_BHEn0            <= SRAM_BHEn0_net_1;
 SRAM_BLEn0_net_1      <= SRAM_BLEn0_net_0;
 SRAM_BLEn0            <= SRAM_BLEn0_net_1;
 SRAM_BHEn1_net_1      <= SRAM_BHEn1_net_0;
 SRAM_BHEn1            <= SRAM_BHEn1_net_1;
 DebugIf_TDO_net_1     <= DebugIf_TDO_net_0;
 DebugIf_TDO           <= DebugIf_TDO_net_1;
 UART_TX_net_1         <= UART_TX_net_0;
 UART_TX               <= UART_TX_net_1;
 BUSAOUTN_net_1        <= BUSAOUTN_net_0;
 BUSAOUTN              <= BUSAOUTN_net_1;
 BUSBOUTN_net_1        <= BUSBOUTN_net_0;
 BUSBOUTN              <= BUSBOUTN_net_1;
 BUSBINEN_net_1        <= BUSBINEN_net_0;
 BUSBINEN              <= BUSBINEN_net_1;
 BUSBOUTIN_net_1       <= BUSBOUTIN_net_0;
 BUSBOUTIN             <= BUSBOUTIN_net_1;
 BUSAOUTP_net_1        <= BUSAOUTP_net_0;
 BUSAOUTP              <= BUSAOUTP_net_1;
 BUSAOUTIN_net_1       <= BUSAOUTIN_net_0;
 BUSAOUTIN             <= BUSAOUTIN_net_1;
 BUSBOUTP_net_1        <= BUSBOUTP_net_0;
 BUSBOUTP              <= BUSBOUTP_net_1;
 BUSAINEN_net_1        <= BUSAINEN_net_0;
 BUSAINEN              <= BUSAINEN_net_1;
 MEM_ADDR_net_1        <= MEM_ADDR_net_0;
 MEM_ADDR(23 downto 0) <= MEM_ADDR_net_1;
 LED_net_1             <= LED_net_0;
 LED(7 downto 0)       <= LED_net_1;
----------------------------------------------------------------------
-- Slices assignments
----------------------------------------------------------------------
 LED_net_0   <= LED_net_2(7 downto 0);
 LED_slice_0 <= LED_net_2(31 downto 8);
----------------------------------------------------------------------
-- Concatenation assignments
----------------------------------------------------------------------
 SWITCH_net_0 <= ( B"000000000000000000000000" & SWITCH );
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- memory_mux_0
memory_mux_0 : memory_mux
    port map( 
        -- Inputs
        SYSCLK      => PLL_50Mh_6Mh_0_GLA,
        mempsrd     => sys_0_ExternalMemIf_MEMPSRD,
        mempswr     => sys_0_DebugIf_DBGMEMPSWR,
        memrd       => sys_0_ExternalMemIf_MEMRD,
        memwr       => sys_0_ExternalMemIf_MEMWR,
        memdatai    => sys_0_ExternalMemIf_MEMDATAO,
        memaddr     => sys_0_ExternalMemIf_MEMADDR,
        -- Outputs
        FLASH_CEn   => FLASH_CEn_net_0,
        FLASH_WEn   => FLASH_WEn_net_0,
        FLASH_OEn   => FLASH_OEn_net_0,
        FLASH_VPEN  => FLASH_VPEN_net_0,
        FLASH_RPn   => FLASH_RPn_net_0,
        FLASH_BYTEn => FLASH_BYTEn_net_0,
        SRAM_OEn    => SRAM_OEn_net_0,
        SRAM_WEn    => SRAM_WEn_net_0,
        SRAM_CEn1   => SRAM_CEn1_net_0,
        SRAM_CE2    => SRAM_CE2_net_0,
        SRAM_BHEn0  => SRAM_BHEn0_net_0,
        SRAM_BLEn0  => SRAM_BLEn0_net_0,
        SRAM_BHEn1  => SRAM_BHEn1_net_0,
        SRAM_BLEn1  => SRAM_BLEn1_net_0,
        memdatao    => memory_mux_0_memdatao,
        MEM_ADDR    => MEM_ADDR_net_0,
        -- Inouts
        MEM_DATA    => MEM_DATA 
        );
-- PLL_50Mh_6Mh_0
PLL_50Mh_6Mh_0 : PLL_50Mh_6Mh
    port map( 
        -- Inputs
        POWERDOWN => VCC_net,
        CLKA      => rc_osc_0_RCOscClk_bif_RCCLKOUT,
        OADIVRST  => VCC_net,
        -- Outputs
        LOCK      => OPEN,
        GLA       => PLL_50Mh_6Mh_0_GLA,
        GLB       => GLB 
        );
-- rc_osc_0
rc_osc_0 : rc_osc
    port map( 
        -- Outputs
        CLKOUT => rc_osc_0_RCOscClk_bif_RCCLKOUT 
        );
-- sys_0
sys_0 : sys
    port map( 
        -- Inputs
        SYSCLK                  => PLL_50Mh_6Mh_0_GLA,
        NSYSRESET               => NSYSRESET,
        UART_RX                 => UART_RX,
        ExternalMemIf_MEMPSACKI => VCC_net,
        ExternalMemIf_MEMACKI   => VCC_net,
        DebugIf_TCK             => DebugIf_TCK,
        DebugIf_TMS             => DebugIf_TMS,
        DebugIf_TDI             => DebugIf_TDI,
        DebugIf_TRSTN           => DebugIf_TRSTN,
        DebugIf_BREAKIN         => GND_net,
        BRT_CLK                 => GLB,
        BUSBINP                 => BUSBINP,
        BUSAINP                 => BUSAINP,
        BUSAINN                 => BUSAINN,
        BUSBINN                 => BUSBINN,
        SWITCH                  => SWITCH_net_0,
        ExternalMemIf_MEMDATAI  => memory_mux_0_memdatao,
        DebugIf_MEMBANK         => DebugIf_MEMBANK_const_net_0,
        -- Outputs
        UART_TX                 => UART_TX_net_0,
        ExternalMemIf_MEMPSRD   => sys_0_ExternalMemIf_MEMPSRD,
        ExternalMemIf_MEMWR     => sys_0_ExternalMemIf_MEMWR,
        ExternalMemIf_MEMRD     => sys_0_ExternalMemIf_MEMRD,
        DebugIf_TDO             => DebugIf_TDO_net_0,
        DebugIf_BREAKOUT        => OPEN,
        DebugIf_TRIGOUT         => OPEN,
        DebugIf_AUXOUT          => OPEN,
        DebugIf_DBGMEMPSWR      => sys_0_DebugIf_DBGMEMPSWR,
        BUSAOUTN                => BUSAOUTN_net_0,
        BUSBOUTN                => BUSBOUTN_net_0,
        BUSBINEN                => BUSBINEN_net_0,
        BUSBOUTIN               => BUSBOUTIN_net_0,
        BUSAOUTP                => BUSAOUTP_net_0,
        BUSAOUTIN               => BUSAOUTIN_net_0,
        BUSBOUTP                => BUSBOUTP_net_0,
        BUSAINEN                => BUSAINEN_net_0,
        LED                     => LED_net_2,
        ExternalMemIf_MEMDATAO  => sys_0_ExternalMemIf_MEMDATAO,
        ExternalMemIf_MEMADDR   => sys_0_ExternalMemIf_MEMADDR 
        );

end RTL;
