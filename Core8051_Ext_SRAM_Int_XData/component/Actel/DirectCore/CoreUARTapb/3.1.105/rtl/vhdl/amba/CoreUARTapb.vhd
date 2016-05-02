-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
--  
-- File................: CoreUARTapb.vhd
--     
--  Person Responsible..: Haribabu Jagarlamudi
--
-- Rev: 3.1  12MAR07  HJ  : v3.1 CoreConsole Release  
--
--		  
--
--==============================================================================
-- AMBA APB wrapped CoreUART
--
-- Two control registers and one status register are implemented in this file
-- i.e. at the wrapper level.
-- Transmit and receive data registers are located in the UART module which is
-- instantiated in this file.
--
-- A separate word location is used for each (8-bit) register.
--
--
-- Address Map:
--
--     Offset    Register Name       Read/Write         Width
--     -------------------------------------------------------
--      0x00     Transmit data       (Write only)       8 bits
--      0x04     Receive data        (Read only)        8 bits
--      0x08     Control Register 1  (R/W)              8 bits
--      0x0C     Control Register 2  (R/W)              3 bits
--      0x10     Status Register     (Read Only)        4 bits
--
--==============================================================================
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY CoreUARTapb IS
   GENERIC (
      -- DEVICE FAMILY 
      FAMILY                         :  integer := 15;    
      -- UART configuration parameters
      TX_FIFO                        :  integer := 0;    --  1 = with tx fifo, 0 = without tx fifo
      RX_FIFO                        :  integer := 0;    --  1 = with rx fifo, 0 = without rx fifo
      BAUD_VALUE                     :  integer := 0;    --  Baud value is set only when fixed buad rate is selected 
      FIXEDMODE                      :  integer := 0;    --  fixed or programmable mode, 0: programmable; 1:fixed
      PRG_BIT8                       :  integer := 0;    --  This bit value is selected only when FIXEDMODE is set to 1 
      PRG_PARITY                     :  integer := 0);    --  This bit value is selected only when FIXEDMODE is set to 1 
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
END ENTITY CoreUARTapb;

ARCHITECTURE translated OF CoreUARTapb IS

   COMPONENT COREUART
      GENERIC (
          TX_FIFO         : integer;
          RX_FIFO         : integer );
      PORT (
         RESET_N                 : IN  std_logic;
         CLK                     : IN  std_logic;
         WEN                     : IN  std_logic;
         OEN                     : IN  std_logic;
         CSN                     : IN  std_logic;
         DATA_IN                 : IN  std_logic_vector(7 DOWNTO 0);
         RX                      : IN  std_logic;
         BAUD_VAL                : IN  std_logic_vector(7 DOWNTO 0);
         BIT8                    : IN  std_logic;
         PARITY_EN               : IN  std_logic;
         ODD_N_EVEN              : IN  std_logic;
         PARITY_ERR              : OUT std_logic;
         OVERFLOW                : OUT std_logic;
         TXRDY                   : OUT std_logic;
         RXRDY                   : OUT std_logic;
         DATA_OUT                : OUT std_logic_vector(7 DOWNTO 0);
         TX                      : OUT std_logic);
   END COMPONENT;

   ------------------------------------------------------------------------
   -- Constant declarations
   ------------------------------------------------------------------------
   ------------------------------------------------------------------------
   -- Signal declarations
   ------------------------------------------------------------------------
   -- I/O signals
   -- Internal signals
   SIGNAL controlReg1              :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL controlReg2              :  std_logic_vector(2 DOWNTO 0);   
   SIGNAL NxtPrdata                :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL iPRDATA                  :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL NxtPrdataEn              :  std_logic;   --   valid read
   SIGNAL data_in                  :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL data_out                 :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL baud_val                 :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL bit8                     :  std_logic;   
   SIGNAL parity_en                :  std_logic;   
   SIGNAL odd_n_even               :  std_logic;   
   SIGNAL WEn                      :  std_logic;   
   SIGNAL OEn                      :  std_logic;   
   SIGNAL csn                      :  std_logic; 
   SIGNAL gen_parity_en            :  std_logic_vector(1 DOWNTO 0);  
   SIGNAL prg_parity_en            :  std_logic;   
   SIGNAL prg_odd_even             :  std_logic;   
   -- block: p_CtrlReg1Seq
   SIGNAL temp_xhdl10              :  std_logic_vector(7 DOWNTO 0);   
   -- block: p_CtrlReg2Seq
   SIGNAL temp_xhdl11              :  std_logic;   
   SIGNAL temp_xhdl12              :  std_logic;   
   SIGNAL temp_xhdl13              :  std_logic;   
   SIGNAL PRDATA_xhdl1             :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL TXRDY_xhdl2              :  std_logic;   
   SIGNAL RXRDY_xhdl3              :  std_logic;   
   SIGNAL TX_xhdl4                 :  std_logic;   
   SIGNAL PARITY_ERR_xhdl5         :  std_logic;   
   SIGNAL OVERFLOW_xhdl6           :  std_logic;   

   FUNCTION CONV_STD_LOGIC (
      val      : IN integer) RETURN std_logic IS
   BEGIN
      IF (val = 1) THEN
         RETURN('1');
      ELSE
         RETURN('0');
      END IF;
   END CONV_STD_LOGIC;

BEGIN
   PRDATA <= PRDATA_xhdl1;
   TXRDY <= TXRDY_xhdl2;
   RXRDY <= RXRDY_xhdl3;
   TX <= TX_xhdl4;
   PARITY_ERR <= PARITY_ERR_xhdl5;
   OVERFLOW <= OVERFLOW_xhdl6;
   ------------------------------------------------------------------------
   -- Write enable, output enable and select signals for UART
   ------------------------------------------------------------------------
   -- WEn only asserted (low) when writing transmit data
   WEn <= '0' when (PENABLE = '1' and
                     PWRITE = '1' and
                     PADDR = "000") else
           '1'; 
   -- OEn only asserted (low) when reading received data
   OEn <= '0' when (PENABLE = '1' and
                     PWRITE = '0' and
                     PADDR = "001") else
           '1';
   csn <= NOT PSEL ;
   -- data_in input to UART is used for transmit data
   data_in <= PWDATA ;
   ------------------------------------------------------------------------
   -- APB read data
   ------------------------------------------------------------------------
   -- NxtPrdataEn is asserted during the first cycle of a valid read
   NxtPrdataEn <= (PSEL AND NOT PWRITE) AND NOT PENABLE ;

   p_NxtPrdataComb : PROCESS (PADDR, NxtPrdataEn, iPRDATA, data_out, 
   controlReg1, controlReg2, OVERFLOW_xhdl6, PARITY_ERR_xhdl5, 
   RXRDY_xhdl3, TXRDY_xhdl2)
      VARIABLE NxtPrdata_xhdl7  : std_logic_vector(7 DOWNTO 0);
   BEGIN
      IF (NxtPrdataEn = '1') THEN
         CASE PADDR(4 DOWNTO 2) IS
            WHEN "000" =>
                     NxtPrdata_xhdl7 := "00000000";    --  transmit data location reads as 0x00
            WHEN "001" =>
                     NxtPrdata_xhdl7 := data_out;    --  received data
            WHEN "010" =>
                     NxtPrdata_xhdl7 := controlReg1;    --  control reg 1 - baud value
            WHEN "011" =>
                     NxtPrdata_xhdl7 := "00000" & controlReg2;    --  control reg 2 - bit8, parity_en, odd_n_even
            WHEN "100" =>
                     NxtPrdata_xhdl7 := "0000" & OVERFLOW_xhdl6 & PARITY_ERR_xhdl5 & RXRDY_xhdl3 & TXRDY_xhdl2;    --  status register
            WHEN OTHERS  =>
                     NxtPrdata_xhdl7 := iPRDATA;    
            
         END CASE;
      ELSE
         NxtPrdata_xhdl7 := iPRDATA;    
      END IF;
      NxtPrdata <= NxtPrdata_xhdl7;
   END PROCESS p_NxtPrdataComb;

   -- block: p_NxtPrdataComb
   
   gen_parity_en <= CONV_STD_LOGIC_VECTOR(PRG_PARITY, 2) ;

   prg_parity_en <= '1' when (gen_parity_en = "01" or gen_parity_en = "10") else '0'; 
   prg_odd_even <= '1' when (gen_parity_en = "01") else '0'; 


   -- PRDATA output register
   
   p_iPRDATASeq : PROCESS (PCLK, PRESETN)
   BEGIN
      IF (NOT PRESETN = '1') THEN
         iPRDATA <= "00000000";    
      ELSIF (PCLK'EVENT AND PCLK = '1') THEN
         iPRDATA <= NxtPrdata;    
      END IF;
   END PROCESS p_iPRDATASeq;
   -- block: p_iPRDATASeq
   -- Drive output with internal version.
   PRDATA_xhdl1 <= iPRDATA ;

   ------------------------------------------------------------------------
   -- Control register 1
   -- Holds 8-bit value to set baud rate.
   ------------------------------------------------------------------------
   
   p_CtrlReg1Seq : PROCESS (PCLK, PRESETN)
   BEGIN
      IF (NOT PRESETN = '1') THEN
         controlReg1 <= "00000000";    
      ELSIF (PCLK'EVENT AND PCLK = '1') THEN
         if (PSEL = '1' and PENABLE = '1' and PWRITE = '1' and PADDR(4 downto 2) = "010") THEN
            controlReg1 <= PWDATA;    
         ELSE
            controlReg1 <= controlReg1;    
         END IF;
      END IF;
   END PROCESS p_CtrlReg1Seq;
   temp_xhdl10 <= CONV_STD_LOGIC_VECTOR(BAUD_VALUE, 8) WHEN FIXEDMODE /= 0 ELSE controlReg1;
   baud_val <= temp_xhdl10 ;

   ------------------------------------------------------------------------
   -- Control register 2
   -- Contents as follows:
   --   Bit 0: bit8        Data width is 8 bits when '1', 7 bits otherwise.
   --   Bit 1: parity_en   Parity enabled when '1'.
   --   Bit 2: odd_n_even  Odd parity when '1', even parity when '0'.
   --   Bits 3 to 7: Unused.
   ------------------------------------------------------------------------
   
   p_CtrlReg2Seq : PROCESS (PCLK, PRESETN)
   BEGIN
      IF (NOT PRESETN = '1') THEN
         controlReg2 <= "000";    
      ELSIF (PCLK'EVENT AND PCLK = '1') THEN
         if (PSEL = '1' and PENABLE = '1' and PWRITE = '1' and PADDR(4 downto 2) = "011") THEN
            controlReg2 <= PWDATA(2 DOWNTO 0);    
         ELSE
            controlReg2 <= controlReg2;    
         END IF;
      END IF;
   END PROCESS p_CtrlReg2Seq;
   temp_xhdl11 <= CONV_STD_LOGIC(PRG_BIT8) WHEN FIXEDMODE /= 0 ELSE 
   controlReg2(0);
   bit8 <= temp_xhdl11 ;
   temp_xhdl12 <= prg_parity_en WHEN FIXEDMODE /= 0 ELSE controlReg2(1)
   ;
   parity_en <= temp_xhdl12 ;
   temp_xhdl13 <= prg_odd_even WHEN FIXEDMODE /= 0 ELSE controlReg2(2);
   odd_n_even <= temp_xhdl13 ;
   
   ------------------------------------------------------------------------
   -- Instantiation of UART
   ------------------------------------------------------------------------
   uUART : COREUART 
      GENERIC MAP (
         RX_FIFO => RX_FIFO,
         TX_FIFO => TX_FIFO)
      PORT MAP (
         RESET_N => PRESETN,
         CLK => PCLK,
         WEN => WEn,
         OEN => OEn,
         CSN => csn,
         DATA_IN => data_in,
         RX => RX,
         BAUD_VAL => baud_val,
         BIT8 => bit8,
         PARITY_EN => parity_en,
         ODD_N_EVEN => odd_n_even,
         PARITY_ERR => PARITY_ERR_xhdl5,
         OVERFLOW => OVERFLOW_xhdl6,
         TXRDY => TXRDY_xhdl2,
         RXRDY => RXRDY_xhdl3,
         DATA_OUT => data_out,
         TX => TX_xhdl4);   
   

END ARCHITECTURE translated;
