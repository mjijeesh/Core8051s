----------------------------------------------------------------------
-- Created by SmartDesign Tue May 03 13:33:28 2016
-- Version: v11.7 11.7.0.119
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library fusion;
use fusion.all;
library CORE1553BRT_APB_LIB;
use CORE1553BRT_APB_LIB.all;
use CORE1553BRT_APB_LIB.components.all;
----------------------------------------------------------------------
-- BRT_0 entity declaration
----------------------------------------------------------------------
entity BRT_0 is
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
end BRT_0;
----------------------------------------------------------------------
-- BRT_0 architecture body
----------------------------------------------------------------------
architecture RTL of BRT_0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CORE1553BRT_APB   -   Actel:DirectCore:CORE1553BRT_APB:3.2.122
-- using entity instantiation for component CORE1553BRT_APB
-- CORE8051S_BRT_ADDR_REMAP
-- using entity instantiation for component CORE8051S_BRT_ADDR_REMAP
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APBslave_PRDATA                    : std_logic_vector(15 downto 0);
signal BUSAINEN_net_0                     : std_logic;
signal BUSAOUTIN_net_0                    : std_logic;
signal BUSAOUTN_net_0                     : std_logic;
signal BUSAOUTP_net_0                     : std_logic;
signal BUSBINEN_net_0                     : std_logic;
signal BUSBOUTIN_net_0                    : std_logic;
signal BUSBOUTN_net_0                     : std_logic;
signal BUSBOUTP_net_0                     : std_logic;
signal CORE1553BRT_APB_0_CMDSTB           : std_logic;
signal CORE1553BRT_APB_0_PRDATA           : std_logic_vector(15 downto 0);
signal CORE8051S_BRT_ADDR_REMAP_0_PADDR   : std_logic_vector(12 downto 0);
signal CORE8051S_BRT_ADDR_REMAP_0_PCLK    : std_logic;
signal CORE8051S_BRT_ADDR_REMAP_0_PENABLE : std_logic;
signal CORE8051S_BRT_ADDR_REMAP_0_PRESETN : std_logic;
signal CORE8051S_BRT_ADDR_REMAP_0_PSEL    : std_logic;
signal CORE8051S_BRT_ADDR_REMAP_0_PWDATA  : std_logic_vector(15 downto 0);
signal CORE8051S_BRT_ADDR_REMAP_0_PWRITE  : std_logic;
signal BUSBINEN_net_1                     : std_logic;
signal BUSAOUTN_net_1                     : std_logic;
signal BUSBOUTN_net_1                     : std_logic;
signal BUSAOUTP_net_1                     : std_logic;
signal BUSAOUTIN_net_1                    : std_logic;
signal BUSBOUTP_net_1                     : std_logic;
signal BUSBOUTIN_net_1                    : std_logic;
signal BUSAINEN_net_1                     : std_logic;
signal APBslave_PRDATA_net_0              : std_logic_vector(15 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                            : std_logic;
signal RTADDR_const_net_0                 : std_logic_vector(4 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net            <= '0';
 RTADDR_const_net_0 <= B"00100";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 BUSBINEN_net_1        <= BUSBINEN_net_0;
 BUSBINEN              <= BUSBINEN_net_1;
 BUSAOUTN_net_1        <= BUSAOUTN_net_0;
 BUSAOUTN              <= BUSAOUTN_net_1;
 BUSBOUTN_net_1        <= BUSBOUTN_net_0;
 BUSBOUTN              <= BUSBOUTN_net_1;
 BUSAOUTP_net_1        <= BUSAOUTP_net_0;
 BUSAOUTP              <= BUSAOUTP_net_1;
 BUSAOUTIN_net_1       <= BUSAOUTIN_net_0;
 BUSAOUTIN             <= BUSAOUTIN_net_1;
 BUSBOUTP_net_1        <= BUSBOUTP_net_0;
 BUSBOUTP              <= BUSBOUTP_net_1;
 BUSBOUTIN_net_1       <= BUSBOUTIN_net_0;
 BUSBOUTIN             <= BUSBOUTIN_net_1;
 BUSAINEN_net_1        <= BUSAINEN_net_0;
 BUSAINEN              <= BUSAINEN_net_1;
 APBslave_PRDATA_net_0 <= APBslave_PRDATA;
 PRDATA(15 downto 0)   <= APBslave_PRDATA_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CORE1553BRT_APB_0   -   Actel:DirectCore:CORE1553BRT_APB:3.2.122
CORE1553BRT_APB_0 : entity CORE1553BRT_APB_LIB.CORE1553BRT_APB
    generic map( 
        BCASTEN      => ( 1 ),
        CLKSPD       => ( 24 ),
        CLKSYNC      => ( 1 ),
        FAMILY       => ( 17 ),
        INT_POLARITY => ( 1 ),
        INTENBBR     => ( 0 ),
        LEGMODE      => ( 2 ),
        LOCKRT       => ( 1 ),
        SA30LOOP     => ( 1 ),
        TESTTXTOUTEN => ( 1 )
        )
    port map( 
        -- Inputs
        BUSAINN   => BUSAINN,
        BUSAINP   => BUSAINP,
        BUSBINN   => BUSBINN,
        BUSBINP   => BUSBINP,
        CLK       => CLK,
        CMDOK     => CORE1553BRT_APB_0_CMDSTB,
        PCLK      => CORE8051S_BRT_ADDR_REMAP_0_PCLK,
        PENABLE   => CORE8051S_BRT_ADDR_REMAP_0_PENABLE,
        PRESETN   => CORE8051S_BRT_ADDR_REMAP_0_PRESETN,
        PSEL      => CORE8051S_BRT_ADDR_REMAP_0_PSEL,
        PWRITE    => CORE8051S_BRT_ADDR_REMAP_0_PWRITE,
        RSTINn    => PRESETN,
        RTADDRP   => GND_net,
        PADDR     => CORE8051S_BRT_ADDR_REMAP_0_PADDR,
        PWDATA    => CORE8051S_BRT_ADDR_REMAP_0_PWDATA,
        RTADDR    => RTADDR_const_net_0,
        -- Outputs
        BUSAINEN  => BUSAINEN_net_0,
        BUSAOUTIN => BUSAOUTIN_net_0,
        BUSAOUTN  => BUSAOUTN_net_0,
        BUSAOUTP  => BUSAOUTP_net_0,
        BUSBINEN  => BUSBINEN_net_0,
        BUSBOUTIN => BUSBOUTIN_net_0,
        BUSBOUTN  => BUSBOUTN_net_0,
        BUSBOUTP  => BUSBOUTP_net_0,
        BUSRESET  => OPEN,
        BUSY      => OPEN,
        CMDSTB    => CORE1553BRT_APB_0_CMDSTB,
        FSM_ERROR => OPEN,
        INTERRUPT => OPEN,
        RTADERR   => OPEN,
        SYNCNOW   => OPEN,
        CMDVAL    => OPEN,
        PRDATA    => CORE1553BRT_APB_0_PRDATA 
        );
-- CORE8051S_BRT_ADDR_REMAP_0
CORE8051S_BRT_ADDR_REMAP_0 : entity work.CORE8051S_BRT_ADDR_REMAP
    port map( 
        -- Inputs
        M_PCLK    => PCLK,
        M_PRESETN => PRESETN,
        M_PSEL    => PSEL,
        M_PENABLE => PENABLE,
        M_PWRITE  => PWRITE,
        M_PADDR   => PADDR,
        M_PWDATA  => PWDATA,
        PRDATA    => CORE1553BRT_APB_0_PRDATA,
        -- Outputs
        M_PRDATA  => APBslave_PRDATA,
        PCLK      => CORE8051S_BRT_ADDR_REMAP_0_PCLK,
        PRESETN   => CORE8051S_BRT_ADDR_REMAP_0_PRESETN,
        PSEL      => CORE8051S_BRT_ADDR_REMAP_0_PSEL,
        PENABLE   => CORE8051S_BRT_ADDR_REMAP_0_PENABLE,
        PWRITE    => CORE8051S_BRT_ADDR_REMAP_0_PWRITE,
        PADDR     => CORE8051S_BRT_ADDR_REMAP_0_PADDR,
        PWDATA    => CORE8051S_BRT_ADDR_REMAP_0_PWDATA 
        );

end RTL;
