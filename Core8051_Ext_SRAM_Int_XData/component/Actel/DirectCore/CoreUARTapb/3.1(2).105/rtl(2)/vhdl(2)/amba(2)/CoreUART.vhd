-- ********************************************************************* 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
--  
--
--  File................: UART.V                                             --
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

ENTITY COREUART IS
   GENERIC (
      FAMILY                         :  integer := 15;    -- Device Family
      -- TX Parameters
      TX_FIFO                        :  integer := 0;    --  0=without tx fifo
      --  1=with tx fifo
      -- RX Parameters
      RX_FIFO                        :  integer := 0);    --  0=without rx fifo
      --  1=with rx fifo
   PORT (
      -- 0= SYNCHRONOUS

      reset_n                 : IN std_logic;
      clk                     : IN std_logic;
      WEn                     : IN std_logic;
      OEn                     : IN std_logic;
      csn                     : IN std_logic;
      data_in                 : IN std_logic_vector(7 DOWNTO 0);
      rx                      : IN std_logic;
      baud_val                : IN std_logic_vector(7 DOWNTO 0);
      bit8                    : IN std_logic;   --   if set to one 8 data bits otherwise 7 data bits
      parity_en               : IN std_logic;   --   if set to one parity is enabled otherwise disabled
      odd_n_even              : IN std_logic;   --   if set to one odd parity otherwise even parity
      parity_err              : OUT std_logic;   --   parity error indicator on recieved data
      overflow                : OUT std_logic;   --   receiver overflow
      txrdy                   : OUT std_logic;   --   transmit ready for another byte
      rxrdy            : OUT std_logic;   --   receiver has a byte ready
      data_out                : OUT std_logic_vector(7 DOWNTO 0);
      tx                      : OUT std_logic);
END ENTITY COREUART;

ARCHITECTURE translated OF COREUART IS

   COMPONENT Rx_async
      GENERIC (
         -- RX Parameters
         RX_FIFO                        :  integer := 0);    --  0=without rx fifo
      PORT (
         clk                     : IN  std_logic;
         baud_clock              : IN  std_logic;
         reset_n                 : IN  std_logic;
         bit8                    : IN  std_logic;
         parity_en               : IN  std_logic;
         odd_n_even              : IN  std_logic;
         read_rx_byte            : IN  std_logic;
         clear_parity            : IN  std_logic;
         rx                      : IN  std_logic;
         overflow                : OUT std_logic;
         parity_err              : OUT std_logic;
         clear_parity_en         : OUT std_logic;
         receive_full            : OUT std_logic;
         rx_byte                 : OUT std_logic_vector(7 DOWNTO 0);
         fifo_write              : OUT std_logic);
   END COMPONENT;


   COMPONENT Tx_async
      GENERIC (
         -- TX Parameters
         TX_FIFO                        :  integer := 0);    --  0=without tx fifo
      PORT (
         clk                     : IN  std_logic;
         xmit_pulse              : IN  std_logic;
         reset_n                 : IN  std_logic;
         rst_tx_empty            : IN  std_logic;
         tx_hold_reg             : IN  std_logic_vector(7 DOWNTO 0);
         tx_dout_reg             : IN  std_logic_vector(7 DOWNTO 0);
         fifo_empty              : IN  std_logic;
         fifo_full               : IN  std_logic;
         bit8                    : IN  std_logic;
         parity_en               : IN  std_logic;
         odd_n_even              : IN  std_logic;
         txrdy                   : OUT std_logic;
         tx                      : OUT std_logic;
         fifo_read_tx            : OUT std_logic);
   END COMPONENT;


   COMPONENT Clock_gen port (
             clk              : in   std_logic;                     -- system clock
             reset_n          : in   std_logic;                     -- active low async reset
             baud_val        : in   std_logic_vector(7 downto 0);  -- value loaded into cntr

             baud_clock       : out  std_logic;                     -- 8x baud clock pulse
             xmit_pulse       : out  std_logic                      -- transmit pulse
            );
   END COMPONENT;

   COMPONENT fifo_256x8 IS
    PORT (
      DO                      : OUT std_logic_vector(7 DOWNTO 0);
      RCLOCK                  : IN std_logic;
      WCLOCK                  : IN std_logic;
      DI                      : IN std_logic_vector(7 DOWNTO 0);
      WRB                     : IN std_logic;
      RDB                     : IN std_logic;
      RESET                   : IN std_logic;
      FULL                    : OUT std_logic;
      EMPTY                   : OUT std_logic);
   END COMPONENT;


   -- State name constant definitions
   CONSTANT S0  : std_logic_vector(1 DOWNTO 0) := "00";
   CONSTANT S1  : std_logic_vector(1 DOWNTO 0) := "01";
   CONSTANT S2  : std_logic_vector(1 DOWNTO 0) := "10";
   CONSTANT S3  : std_logic_vector(1 DOWNTO 0) := "11";


   --  Configuration bits
   --  Status bits
   SIGNAL overflow_legacy          :  std_logic;
   SIGNAL receive_legacy           :  std_logic;
   SIGNAL fifo_write_rx            :  std_logic;
   SIGNAL fifo_write               :  std_logic;
   SIGNAL xmit_pulse               :  std_logic;   --   transmit pulse
   SIGNAL baud_clock               :  std_logic;   --   8x baud clock pulse
   SIGNAL rst_tx_empty             :  std_logic;   --   reset transmit empty
   SIGNAL tx_hold_reg              :  std_logic_vector(7 DOWNTO 0);   --   transmit byte hold register
   SIGNAL tx_dout_reg              :  std_logic_vector(7 DOWNTO 0);   --   transmit byte hold register
   SIGNAL rx_dout                  :  std_logic_vector(7 DOWNTO 0);   --   receive data out
   SIGNAL read_rx_byte             :  std_logic;   --   read rx byte register
   SIGNAL rx_dout_reg              :  std_logic_vector(7 DOWNTO 0);   --   receive data out
   SIGNAL rx_byte                  :  std_logic_vector(7 DOWNTO 0);   --   receive byte register
   SIGNAL rx_byte_in               :  std_logic_vector(7 DOWNTO 0);   --   receive byte register
   SIGNAL fifo_empty_tx            :  std_logic;
   SIGNAL fifo_empty_rx            :  std_logic;
   SIGNAL fifo_read_rx             :  std_logic;
   SIGNAL fifo_write_tx            :  std_logic;
   SIGNAL fifo_read_tx             :  std_logic;
   SIGNAL fifo_full_tx             :  std_logic;
   SIGNAL fifo_full_rx             :  std_logic;
   SIGNAL clear_parity             :  std_logic;
   SIGNAL clear_parity_en          :  std_logic;
   SIGNAL clear_parity_reg0        :  std_logic;
   SIGNAL clear_parity_reg         :  std_logic;
   SIGNAL data_en0                 :  std_logic;
   SIGNAL data_en1                 :  std_logic;
   SIGNAL data_en                  :  std_logic;
   SIGNAL data_ready               :  std_logic;
   -- ----------------------------------------------------------------------------
   --  cpu reads from UART registers
   -- ----------------------------------------------------------------------------
   SIGNAL temp_xhdl7               :  std_logic;
   SIGNAL temp_xhdl10              :  std_logic;
   SIGNAL temp_xhdl11              :  std_logic;
   SIGNAL temp_xhdl12              :  std_logic;
   SIGNAL temp_xhdl13              :  std_logic;
   SIGNAL temp_xhdl14              :  std_logic_vector(7 DOWNTO 0);
   SIGNAL temp_xhdl16              :  std_logic;
   SIGNAL temp_xhdl17              :  std_logic;
   SIGNAL parity_err_xhdl1         :  std_logic;
   SIGNAL overflow_xhdl2           :  std_logic;
   SIGNAL txrdy_xhdl3              :  std_logic;
   SIGNAL rxrdy_xhdl4       :  std_logic;
   SIGNAL data_out_xhdl5           :  std_logic_vector(7 DOWNTO 0);
   SIGNAL tx_xhdl6                 :  std_logic;

   SIGNAL rx_dout_reg_empty        :  std_logic;
   SIGNAL rx_state                 :  std_logic_vector(1 DOWNTO 0);
   SIGNAL next_rx_state            :  std_logic_vector(1 DOWNTO 0);

BEGIN
   parity_err <= parity_err_xhdl1;
   overflow <= overflow_xhdl2;
   txrdy <= txrdy_xhdl3;
   rxrdy <= rxrdy_xhdl4;
   data_out <= data_out_xhdl5;
   tx <= tx_xhdl6;

   -- ---------------------------------------------------------
   --  COMPONENT DECLARATIONS
   -- ---------------------------------------------------------
   -- ----------------------------------------------------------------------------
   --  cpu writes to UART registers
   -- ----------------------------------------------------------------------------

   reg_write : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         tx_hold_reg <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
         fifo_write_tx <= '1';
      ELSIF (clk'EVENT AND clk = '1') THEN
         fifo_write_tx <= '1';
         IF (csn = '0' AND WEn = '0') THEN
            tx_hold_reg <= data_in;
            fifo_write_tx <= '0';
         END IF;
      END IF;
   END PROCESS reg_write;
   temp_xhdl7 <= '1' WHEN (WEn = '0' AND csn = '0') ELSE '0';
   rst_tx_empty <= temp_xhdl7 ;


   PROCESS (rx_byte, rx_dout_reg, parity_err_xhdl1)
   VARIABLE data_out_xhdl5_xhdl8  : std_logic_vector(7 DOWNTO 0);
   BEGIN
       IF (RX_FIFO = 2#0#) THEN
           data_out_xhdl5_xhdl8 := rx_byte;
       ELSE
           IF (parity_err_xhdl1 = '1') THEN
               data_out_xhdl5_xhdl8 := rx_byte;
           ELSE
               data_out_xhdl5_xhdl8 := rx_dout_reg;
           END IF;
       END IF;
       data_out_xhdl5 <= data_out_xhdl5_xhdl8;
   END PROCESS;


   temp_xhdl10 <= '1' WHEN (csn = '0' AND OEn = '0') ELSE '0';
   temp_xhdl11 <= (temp_xhdl10) WHEN (RX_FIFO = 2#0#) ELSE NOT fifo_full_rx;
   read_rx_byte <= temp_xhdl11 ;
   temp_xhdl12 <= '1' WHEN (csn = '0' AND OEn = '0') ELSE '0';
   temp_xhdl13 <= clear_parity_reg WHEN RX_FIFO /= 0 ELSE (temp_xhdl12);
   clear_parity <= temp_xhdl13 ;
   temp_xhdl14 <= rx_byte WHEN (parity_err_xhdl1 = '0') ELSE "00000000";
   rx_byte_in <= temp_xhdl14 ;


   PROCESS (receive_legacy, rx_dout_reg_empty)
   VARIABLE rxrdy_xhdl4_xhdl15  : std_logic;
   BEGIN
      IF (RX_FIFO = 2#0#) THEN
         rxrdy_xhdl4_xhdl15 := receive_legacy;
      ELSE
         rxrdy_xhdl4_xhdl15 := NOT rx_dout_reg_empty;
      END IF;
      rxrdy_xhdl4 <= rxrdy_xhdl4_xhdl15;
   END PROCESS;

   PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         clear_parity_reg <= '0';
      ELSIF (clk'EVENT AND clk = '1') THEN
         clear_parity_reg0 <= clear_parity_en;
         clear_parity_reg <= clear_parity_reg0;
      END IF;
   END PROCESS;

   -- state machine to control reading from the rx fifo
   PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         rx_state <= S0;
      ELSIF (clk'EVENT AND clk = '1') THEN
         rx_state <= next_rx_state;
      END IF;
   END PROCESS;

   PROCESS (rx_state, rx_dout_reg_empty, fifo_empty_rx)
   BEGIN
      next_rx_state <= rx_state;
      fifo_read_rx <= '1';
      data_en <= '0';
      CASE rx_state IS
         WHEN S0 => IF (rx_dout_reg_empty = '1' AND fifo_empty_rx = '0') THEN
                       next_rx_state <= S1;
                       fifo_read_rx <= '0';
                    END IF;
         WHEN S1 => next_rx_state <= S2;
         WHEN S2 => next_rx_state <= S3;
         WHEN S3 => next_rx_state <= S0;
                    data_en <= '1';
         WHEN others => next_rx_state <= rx_state;
      END CASE;
   END PROCESS;


   PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         rx_dout_reg <= "00000000";
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (data_en = '1') THEN
             rx_dout_reg <= rx_dout;
         END IF;
      END IF;
   END PROCESS;

   PROCESS (clk, reset_n)
   BEGIN
       IF (reset_n = '0') THEN
           rx_dout_reg_empty <= '1';
       ELSIF (clk'EVENT AND clk = '1') THEN
           IF (data_en = '1') THEN
               rx_dout_reg_empty <= '0';
           ELSE
               IF (csn = '0' AND OEn = '0') THEN
                   rx_dout_reg_empty <= '1';
               END IF;
           END IF;
       END IF;
   END PROCESS;

   temp_xhdl16 <= fifo_full_rx WHEN RX_FIFO /= 0 ELSE overflow_legacy;
   overflow_xhdl2 <= temp_xhdl16 ;

   temp_xhdl17 <= '1' WHEN (parity_err_xhdl1 = '1') ELSE fifo_write;

   fifo_write_rx <= temp_xhdl17 ;

      make_CLOCK_GEN : Clock_gen
         PORT MAP (
            clk => clk,
            reset_n => reset_n,
            baud_val => baud_val,
            baud_clock => baud_clock,
            xmit_pulse => xmit_pulse);

      make_TX : Tx_async
         GENERIC MAP (
            TX_FIFO => TX_FIFO)
         PORT MAP (
            clk => clk,
            xmit_pulse => xmit_pulse,
            reset_n => reset_n,
            rst_tx_empty => rst_tx_empty,
            tx_hold_reg => tx_hold_reg,
            tx_dout_reg => tx_dout_reg,
            fifo_empty => fifo_empty_tx,
            fifo_full => fifo_full_tx,
            bit8 => bit8,
            parity_en => parity_en,
            odd_n_even => odd_n_even,
            txrdy => txrdy_xhdl3,
            tx => tx_xhdl6,
            fifo_read_tx => fifo_read_tx);

      make_RX : Rx_async
         GENERIC MAP (
            RX_FIFO => RX_FIFO)
         PORT MAP (
            clk => clk,
            baud_clock => baud_clock,
            reset_n => reset_n,
            bit8 => bit8,
            parity_en => parity_en,
            odd_n_even => odd_n_even,
            read_rx_byte => read_rx_byte,
            clear_parity => clear_parity,
            rx => rx,
            overflow => overflow_legacy,
            parity_err => parity_err_xhdl1,
            clear_parity_en => clear_parity_en,
            receive_full => receive_legacy,
            rx_byte => rx_byte,
            fifo_write => fifo_write);

   UG06:IF (TX_FIFO = 2#1#) GENERATE
      tx_fifo_xhdl79 : fifo_256x8
         PORT MAP (
            DO => tx_dout_reg,
            RCLOCK => clk,
            WCLOCK => clk,
            DI => data_in,
            WRB => fifo_write_tx,
            RDB => fifo_read_tx,
            RESET => reset_n,
            FULL => fifo_full_tx,
            EMPTY => fifo_empty_tx);
   END GENERATE;

   UG07:IF (RX_FIFO = 2#1#) GENERATE
      rx_fifo_xhdl80 : fifo_256x8
         PORT MAP (
            DO => rx_dout,
            RCLOCK => clk,
            WCLOCK => clk,
            DI => rx_byte_in,
            WRB => fifo_write_rx,
            RDB => fifo_read_rx,
            RESET => reset_n,
            FULL => fifo_full_rx,
            EMPTY => fifo_empty_rx);
   END GENERATE;

END ARCHITECTURE translated;
