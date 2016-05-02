-- ********************************************************************* 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
--  
--
-- File................: RX_ASYNC.VHD
-- Function............: Perform the asynchronous receive function for the SCC
-- Person Responsible..: Haribabu Jagarlamudi
-- Rev: 3.0  21FEB07  HJ  : v3.0 CoreConsole Release  
-- Last Updated........: 02/21/07
--
-- 
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY Rx_async IS
   GENERIC (
      -- RX Parameters
      RX_FIFO                        :  integer := 0);    --  0=without rx fifo 
   PORT (
      --  1=with rx fifo 

      clk                     : IN std_logic;   --   system clock
      baud_clock              : IN std_logic;   --   8x baud clock pulse
      reset_n                 : IN std_logic;   --   active low async reset  
      bit8                    : IN std_logic;   --   if set to one 8 data bits otherwise 7 data bits
      parity_en               : IN std_logic;   --   if set to one parity is enabled otherwise disabled
      odd_n_even              : IN std_logic;   --   if set to one odd parity otherwise even parity
      read_rx_byte            : IN std_logic;   --   read rx byte register
      clear_parity            : IN std_logic;   --   clear parity error 
      rx                      : IN std_logic;   
      overflow                : OUT std_logic;   --   receiver overflow
      parity_err              : OUT std_logic;   --   parity error indicator on recieved data
      clear_parity_en         : OUT std_logic;   --  clear parity error enable
      receive_full            : OUT std_logic;   --   receiver has a byte ready
      rx_byte                 : OUT std_logic_vector(7 DOWNTO 0);   
      fifo_write              : OUT std_logic);   
END ENTITY Rx_async;

ARCHITECTURE translated OF Rx_async IS

   -- TYPE receive_states:
   type receive_states  is (rx_idle, rx_data_bits, rx_stop_bit);

   --  receive byte register
   SIGNAL rx_state                 :  receive_states;                -- receive state machine
   SIGNAL receive_count            :  std_logic_vector(3 DOWNTO 0);   --   counts bits received
   SIGNAL rx_filtered              :  std_logic;   --   filtered rx data
   SIGNAL rx_shift                 :  std_logic_vector(8 DOWNTO 0);   --   receive shift register
   SIGNAL rx_parity_calc           :  std_logic;   --   received parity, calculated
   SIGNAL rx_bit_cnt               :  std_logic_vector(3 DOWNTO 0);   --   count of received bits 
   SIGNAL receive_full_int         :  std_logic;   --   receiver has a byte ready
   SIGNAL samples                  :  std_logic_vector(2 DOWNTO 0);   
   SIGNAL overflow_int             :  std_logic;   
   SIGNAL shift_choice             :  std_logic_vector(1 DOWNTO 0);   
   SIGNAL parity_choice            :  std_logic_vector(1 DOWNTO 0);   
   -- ----------------------------------------------------------------------------
   SIGNAL last_bit                 :  std_logic_vector(3 DOWNTO 0);   
   -- ----------------------------------------------------------------------------
   --  receive state machine & byte register
   -- ----------------------------------------------------------------------------
   SIGNAL temp_xhdl7               :  std_logic_vector(3 DOWNTO 0);   
   SIGNAL temp_xhdl8               :  std_logic_vector(3 DOWNTO 0);   
   SIGNAL temp_xhdl9               :  std_logic_vector(3 DOWNTO 0);   
   SIGNAL overflow_xhdl1           :  std_logic;   
   SIGNAL parity_err_xhdl2         :  std_logic;   
   SIGNAL clear_parity_en_xhdl3    :  std_logic;   
   SIGNAL receive_full_xhdl4       :  std_logic;   
   SIGNAL rx_byte_xhdl5            :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL fifo_write_xhdl6         :  std_logic;   

BEGIN
   overflow <= overflow_xhdl1;
   parity_err <= parity_err_xhdl2;
   clear_parity_en <= clear_parity_en_xhdl3;
   receive_full <= receive_full_xhdl4;
   rx_byte <= rx_byte_xhdl5;
   fifo_write <= fifo_write_xhdl6;

   --  filter the receive data
   -- ----------------------------------------------------------------------------
   --  The receive data filter is a simple majority voter that accepts three
   --  samples of the "raw" data and reports the most populus result.  This
   --  provides a simple single-cycle glitch filter.
   --  This input needs to go to both the state machine start bit detector as
   --  well as the data shift register as this filter introduces a three-clock 
   --  delay and we need to keep the phases lined up.
   -- 
   
   majority : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         samples <= "000";    
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (baud_clock = '1') THEN
            samples(1 DOWNTO 0) <= samples(2 DOWNTO 1);    
            samples(2) <= rx;    
         END IF;
      END IF;
   END PROCESS majority;

   --  our voter
   
   PROCESS (samples)
   BEGIN
      CASE samples IS
         WHEN "000" =>
                  rx_filtered <= '0';    
         WHEN "001" =>
                  rx_filtered <= '0';    
         WHEN "010" =>
                  rx_filtered <= '0';    
         WHEN "011" =>
                  rx_filtered <= '1';    
         WHEN "100" =>
                  rx_filtered <= '0';    
         WHEN "101" =>
                  rx_filtered <= '1';    
         WHEN "110" =>
                  rx_filtered <= '1';    
         WHEN OTHERS  =>
                  rx_filtered <= '1';    
         
      END CASE;
   END PROCESS;

   -- ----------------------------------------------------------------------------
   --  receive bit counter
   -- ----------------------------------------------------------------------------
   
   rcv_cnt : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         receive_count <= "0000";    
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (baud_clock = '1') THEN
            --  no start bit yet or begin sample period for data
            
            IF (rx_state = rx_idle AND (rx_filtered = '1' OR receive_count = "1000")) THEN
               receive_count <= "0000";    
            ELSE
               receive_count <= receive_count + "0001";    
            END IF;
         END IF;
      END IF;
   END PROCESS rcv_cnt;

   -- ----------------------------------------------------------------------------
   --  registering of the overflow signal
   -- ----------------------------------------------------------------------------
   
   make_overflow : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         overflow_xhdl1 <= '0';    
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (baud_clock = '1') THEN
            IF (overflow_int = '1') THEN
               overflow_xhdl1 <= '1';    
            END IF;
         END IF;
         IF (read_rx_byte = '1') THEN
            overflow_xhdl1 <= '0';    
         END IF;
      END IF;
   END PROCESS make_overflow;
   temp_xhdl7 <= "1000" WHEN (bit8 = '1' AND parity_en = '0') ELSE "1001";
   temp_xhdl8 <= "1000" WHEN (bit8 = '0' AND parity_en = '1') ELSE temp_xhdl7;
   temp_xhdl9 <= "0111" WHEN (bit8 = '0' AND parity_en = '0') ELSE temp_xhdl8;
   last_bit <= temp_xhdl9 ;

   rcv_sm : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         rx_state <= rx_idle;
         rx_byte_xhdl5 <= "00000000";    
         overflow_int <= '0';    
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (baud_clock = '1') THEN
            overflow_int <= '0';    
            CASE rx_state IS
               WHEN rx_idle =>
                        IF (receive_count = "1000") THEN
                           rx_state <= rx_data_bits;
                        ELSE
                           rx_state <= rx_idle;
                        END IF;
               WHEN rx_data_bits =>
                        IF (rx_bit_cnt = last_bit) THEN
                           --  last bit has been received
                           --  if receive_full is still active at this point, then overflow
                           
                           rx_state <= rx_stop_bit;    
                           overflow_int <= receive_full_int;    
                           IF (receive_full_int = '0') THEN
                              rx_byte_xhdl5 <= (bit8 AND rx_shift(7)) & rx_shift(6 DOWNTO 0);    
                           END IF;
                        ELSE
                           rx_state <= rx_data_bits;    --   still clocking in bits
                        END IF;
               WHEN rx_stop_bit =>
                        IF (receive_count = "1111") THEN
                           rx_state <=  rx_idle; 
                        ELSE
                           rx_state <= rx_stop_bit;    
                        END IF;
               WHEN OTHERS  =>
                        rx_state <=  rx_idle;    
               
            END CASE;
         END IF;
      END IF;
   END PROCESS rcv_sm;
   -- ----------------------------------------------------------------------------
   --  receive shift register and parity calculation
   -- ----------------------------------------------------------------------------
   shift_choice <= bit8 & parity_en ;

   receive_shift : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         rx_shift(8 DOWNTO 0) <= "000000000";    
         rx_bit_cnt <= "0000";    
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (baud_clock = '1') THEN
            IF (rx_state = rx_idle) THEN
               rx_shift(8 DOWNTO 0) <= "000000000";    
               rx_bit_cnt <= "0000";    
            ELSE
               IF (receive_count = "1111") THEN
                  --  sample new data bit
                  
                  rx_bit_cnt <= rx_bit_cnt + "0001";    
                  CASE shift_choice IS
                     WHEN "00" =>
                              rx_shift(5 DOWNTO 0) <= rx_shift(6 DOWNTO 1);    
                              rx_shift(6) <= rx_filtered;    
                     WHEN "11" =>
                              rx_shift(7 DOWNTO 0) <= rx_shift(8 DOWNTO 1);    
                              rx_shift(8) <= rx_filtered;    
                     WHEN OTHERS  =>
                              rx_shift(6 DOWNTO 0) <= rx_shift(7 DOWNTO 1);    
                              rx_shift(7) <= rx_filtered;    
                     
                  END CASE;
               END IF;
            END IF;
         END IF;
      END IF;
   END PROCESS receive_shift;

   -- ----------------------------------------------------------------------------
   --  receiver parity calculation
   -- ----------------------------------------------------------------------------
   
   rx_par_calc : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         rx_parity_calc <= '0';    
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (baud_clock = '1') THEN
            IF (receive_count = "1111" AND parity_en = '1') THEN
               rx_parity_calc <= rx_parity_calc XOR rx_filtered;    
            END IF;
            IF (rx_state =  rx_stop_bit) THEN
               rx_parity_calc <= '0';    
            END IF;
         END IF;
      END IF;
   END PROCESS rx_par_calc;
   -- ----------------------------------------------------------------------------
   --  latch parity error for even or odd parity
   -- ----------------------------------------------------------------------------
   parity_choice <= bit8 & odd_n_even ;

   make_parity_err : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         parity_err_xhdl2 <= '0';    
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF ((baud_clock = '1' AND parity_en = '1') AND receive_count = "1111") THEN
            CASE parity_choice IS
               WHEN "00" =>
                        IF (rx_bit_cnt = "0111") THEN
                           parity_err_xhdl2 <= rx_parity_calc XOR rx_filtered;    
                        END IF;
               WHEN "01" =>
                        IF (rx_bit_cnt = "0111") THEN
                           parity_err_xhdl2 <= NOT (rx_parity_calc XOR rx_filtered);    
                        END IF;
               WHEN "10" =>
                        IF (rx_bit_cnt = "1000") THEN
                           parity_err_xhdl2 <= rx_parity_calc XOR rx_filtered;    
                        END IF;
               WHEN "11" =>
                        IF (rx_bit_cnt = "1000") THEN
                           parity_err_xhdl2 <= NOT (rx_parity_calc XOR rx_filtered);    
                        END IF;
               WHEN OTHERS  =>
                        parity_err_xhdl2 <= '0';    
               
            END CASE;
         END IF;
         -- if (read_rx_byte == 1'b1)
         
         IF (clear_parity = '1') THEN
            parity_err_xhdl2 <= '0';    
         END IF;
      END IF;
   END PROCESS make_parity_err;

   -- ----------------------------------------------------------------------------
   --  receive full indicator process
   -- ----------------------------------------------------------------------------
   
   receive_full_indicator : PROCESS (clk, reset_n)
   BEGIN
      IF (reset_n = '0') THEN
         receive_full_int <= '0';    
         fifo_write_xhdl6 <= '1';    
         clear_parity_en_xhdl3 <= '0';    
      ELSIF (clk'EVENT AND clk = '1') THEN
         fifo_write_xhdl6 <= '1';    
         clear_parity_en_xhdl3 <= '0';    
         IF (baud_clock = '1') THEN
            --  last bit has been received 
            
            IF (bit8 = '1') THEN
               IF (parity_en = '1') THEN
                  IF (rx_bit_cnt = "1001" AND rx_state = rx_data_bits) THEN
                     fifo_write_xhdl6 <= '0';    
                     clear_parity_en_xhdl3 <= '1';    
                     IF (RX_FIFO = 2#0#) THEN
                        receive_full_int <= '1';    
                     END IF;
                  END IF;
               ELSE
                  IF (rx_bit_cnt = "1000" AND rx_state = rx_data_bits) THEN
                     fifo_write_xhdl6 <= '0';    
                     clear_parity_en_xhdl3 <= '1';    
                     IF (RX_FIFO = 2#0#) THEN
                        receive_full_int <= '1';    
                     END IF;
                  END IF;
               END IF;
            ELSE
               IF (parity_en = '1') THEN
                  IF (rx_bit_cnt = "1000" AND rx_state = rx_data_bits) THEN
                     fifo_write_xhdl6 <= '0';    
                     clear_parity_en_xhdl3 <= '1';    
                     IF (RX_FIFO = 2#0#) THEN
                        receive_full_int <= '1';    
                     END IF;
                  END IF;
               ELSE
                  IF (rx_bit_cnt = "0111" AND rx_state = rx_data_bits) THEN
                     fifo_write_xhdl6 <= '0';    
                     clear_parity_en_xhdl3 <= '1';    
                     IF (RX_FIFO = 2#0#) THEN
                        receive_full_int <= '1';    
                     END IF;
                  END IF;
               END IF;
            END IF;
         END IF;
         IF (read_rx_byte = '1') THEN
            receive_full_int <= '0';    
         END IF;
      END IF;
   END PROCESS receive_full_indicator;
   receive_full_xhdl4 <= receive_full_int ;

END ARCHITECTURE translated;
