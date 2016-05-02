-- ********************************************************************* 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
--  
--
--  File................: components.vhd                                             --
--  Function............: UART controller (non-dedicated)                      --
-- Person Responsible..: Haribabu Jagarlamudi
-- Rev: 3.0  21FEB07  HJ  : v3.0 CoreConsole Release  
-- Last Updated........: 02/21/07
--
--  Components Required.: Clock_gen.vhd, Tx_async, Rx_async --
--                                                                            --
--
--  This entity provides a rudimentary UART function.  This block generates and uses baud
--  rates determined by the equation baudval = (external clock freq. / Baud * 16).
--  Data is transmitted LSB first. The modes of operation are: 8 data bits with even or odd parity,
--  one start bit and one stop bit or 7 data bits with even or odd parity, one start bit and one
--  stop bit. Four active-high direct status signals some of which can be used for interrupts: parity error,
--  overflow, txrdy, and receive_full are generated. The configuration of the UART's baud rate is done
--  at compile time see "COMPILETIME CONFIGERATION SELECTIONS" section in the Clock_gen.vhd file. The receive
--  data and transmit data are double-buffered.
--
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

package components is

component COREUARTAPB IS
   GENERIC (
      -- DEVICE FAMILY 
      FAMILY                         :  integer := 15;    
      -- UART configuration parameters
      TX_FIFO                        :  integer := 0;    --  1 = with tx fifo, 0 = without tx fifo
      RX_FIFO                        :  integer := 0;    --  1 = with rx fifo, 0 = without rx fifo
      BAUD_VALUE                     :  std_logic_vector(7 DOWNTO 0) := "00000000";    --  Baud value is set only when fixed buad rate is selected 
      BAUD_RATE                      :  integer := 0;    --  baud rate fixed or variable, 0: variable; 1:fixed
      CTRL_BIT8                      :  integer := 0;    --  0 = program bit8 with variable value, 1 = program bit8 with fixed value
      CTRL_PARITY_EN                 :  integer := 0;    --  0 = program parity_en with variable value, 1 = program parity_en with fixed value 
      CTRL_ODD_EVEN                  :  integer := 0;    --  0 = program odd_even with vairable value, 1 = program odd_even with fixed value
      PRG_BIT8                       :  integer := 0;    --  This bit value is selected only when CTRL_BIT8 is set to 1 
      PRG_PARITY_EN                  :  integer := 0;    --  This bit value is selected only when CTRL_PARITY_EN is set to 1 
      PRG_ODD_EVEN                   :  integer := 0);    --  This bit value is selected only when CTRL_ODD_EVEN is set to 1
   PORT (
      -- Inputs and Outputs
-- APB signals

      PCLK                    : IN std_logic;   --  APB system clock
      PRESETN                 : IN std_logic;   --  APB system reset
      PADDR                   : IN std_logic_vector(4 DOWNTO 2);   --  Address (used bits only)
      PSEL                    : IN std_logic;   --  Peripheral select signal
      PENABLE                 : IN std_logic;   --  Enable (data valid strobe)
      PWRITE                  : IN std_logic;   --  Write/nRead signal
      PWDATA                  : IN std_logic_vector(7 DOWNTO 0);   --  8 bit write data
      PRDATA                  : OUT std_logic_vector(7 DOWNTO 0);   --  8 bit read data
      -- transmit ready and receive full indicators

      TXRDY                   : OUT std_logic;   
      RXRDY                   : OUT std_logic;   
      -- FLAGS 

      PARITY_ERR              : OUT std_logic;   
      OVERFLOW                : OUT std_logic;   
      -- Serial receive and transmit data

      RX                      : IN std_logic;   
      TX                      : OUT std_logic);   
END component;
end components;

