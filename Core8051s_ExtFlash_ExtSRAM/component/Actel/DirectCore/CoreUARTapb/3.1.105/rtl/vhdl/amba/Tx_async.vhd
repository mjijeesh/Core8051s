-- ********************************************************************* 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
--  
--
-- File................: TX_ASYNC.VHD
-- Function............: Perform the asynchronous transmit function for the SCC
-- Person Responsible..: Haribabu Jagarlamudi
-- Rev: 3.0  21FEB07  HJ  : v3.0 CoreConsole Release  
-- Last Updated........: 02/21/07
--
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

ENTITY Tx_async IS
   GENERIC (
      -- TX Parameters
      TX_FIFO                        :  integer := 0);    --  0=without tx fifo
   PORT (
      --  1=with tx fifo

      clk                     : IN std_logic;
      xmit_pulse              : IN std_logic;
      reset_n                 : IN std_logic;
      rst_tx_empty            : IN std_logic;
      tx_hold_reg             : IN std_logic_vector(7 DOWNTO 0);
      tx_dout_reg             : IN std_logic_vector(7 DOWNTO 0);
      fifo_empty              : IN std_logic;
      fifo_full               : IN std_logic;
      bit8                    : IN std_logic;
      parity_en               : IN std_logic;
      odd_n_even              : IN std_logic;
      txrdy                   : OUT std_logic;
      tx                      : OUT std_logic;
      fifo_read_tx            : OUT std_logic);
END ENTITY Tx_async;

ARCHITECTURE translated OF Tx_async IS


   CONSTANT  tx_idle               :  integer := 0;
   CONSTANT  tx_load               :  integer := 1;
   CONSTANT  start_bit             :  integer := 2;
   CONSTANT  tx_data_bits          :  integer := 3;
   CONSTANT  parity_bit            :  integer := 4;
   CONSTANT  tx_stop_bit           :  integer := 5;
   CONSTANT  delay_state           :  integer := 6;
   SIGNAL xmit_state               :  integer;   --  transmit state machine
   SIGNAL txrdy_int                :  std_logic;   --  transmit ready for another byte
   SIGNAL tx_byte                  :  std_logic_vector(7 DOWNTO 0);   --  transmit byte
   SIGNAL xmit_bit_sel             :  std_logic_vector(3 DOWNTO 0);   --  selects transmit bit
   SIGNAL tx_parity                :  std_logic;   --  transmit parity
   SIGNAL fifo_read_en0            :  std_logic;
   SIGNAL fifo_read_en1            :  std_logic;
   SIGNAL fifo_read_en             :  std_logic;
   SIGNAL fifo_write               :  std_logic;
   SIGNAL txrdy_xhdl1              :  std_logic;
   SIGNAL tx_xhdl2                 :  std_logic;
   SIGNAL fifo_read_tx_xhdl3       :  std_logic;

   FUNCTION to_integer (
      val      : std_logic_vector) RETURN integer IS

      CONSTANT vec      : std_logic_vector(val'high-val'low DOWNTO 0) := val;
      VARIABLE rtn      : integer := 0;
   BEGIN
      FOR index IN vec'RANGE LOOP
         IF (vec(index) = '1') THEN
            rtn := rtn + (2**index);
         END IF;
      END LOOP;
      RETURN(rtn);
   END to_integer;

BEGIN
   txrdy <= txrdy_xhdl1;
   tx <= tx_xhdl2;
   fifo_read_tx <= fifo_read_tx_xhdl3;

    -- Modified Sep 2006, ROK
    make_txrdy : PROCESS (clk, reset_n)
    BEGIN
        IF (NOT reset_n = '1') THEN
            txrdy_int <= '1';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (TX_FIFO = 2#0#) THEN
                IF (xmit_pulse = '1') THEN
                    IF (xmit_state = tx_load) THEN
                        txrdy_int <= '1';
                    END IF;
                END IF;
                IF (rst_tx_empty = '1') THEN
                    txrdy_int <= '0';
                END IF;
            ELSE
                txrdy_int <= NOT fifo_full;
            END IF;
        END IF;
    END PROCESS make_txrdy;

   xmit_sm : PROCESS (clk, reset_n)
   BEGIN
      IF (NOT reset_n = '1') THEN
         xmit_state <= tx_idle;
         tx_byte <= "00000000";
         fifo_read_en0 <= '1';
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (xmit_pulse = '1') THEN
            fifo_read_en0 <= '1';
            CASE xmit_state IS
               WHEN tx_idle =>
                        IF (TX_FIFO = 2#0#) THEN
                           IF (NOT txrdy_int = '1') THEN
                              xmit_state <= tx_load;
                           ELSE
                              xmit_state <= tx_idle;
                           END IF;
                        ELSE
                           IF (fifo_empty = '0') THEN
                              fifo_read_en0 <= '0';
                              xmit_state <= delay_state;
                           ELSE
                              xmit_state <= tx_idle;
                              fifo_read_en0 <= '1';
                           END IF;
                        END IF;
               WHEN tx_load =>
                        IF (TX_FIFO = 2#0#) THEN
                           tx_byte <= tx_hold_reg;
                        ELSE
                           tx_byte <= tx_dout_reg;
                        END IF;
                        xmit_state <= start_bit;
               WHEN start_bit =>
                        xmit_state <= tx_data_bits;
               WHEN tx_data_bits =>
                        IF (bit8 = '1') THEN
                           IF (xmit_bit_sel = "0111") THEN
                              IF (parity_en = '1') THEN
                                 xmit_state <= parity_bit;
                              ELSE
                                 xmit_state <= tx_stop_bit;
                              END IF;
                           ELSE
                              xmit_state <= tx_data_bits;
                           END IF;
                        ELSE
                           IF (xmit_bit_sel = "0110") THEN
                              IF (parity_en = '1') THEN
                                 xmit_state <= parity_bit;
                              ELSE
                                 xmit_state <= tx_stop_bit;
                              END IF;
                           ELSE
                              xmit_state <= tx_data_bits;
                           END IF;
                        END IF;
               WHEN parity_bit =>
                        xmit_state <= tx_stop_bit;
               WHEN tx_stop_bit =>
                        xmit_state <= tx_idle;
               WHEN delay_state =>
                        xmit_state <= tx_load;
               WHEN OTHERS  =>
                        xmit_state <= tx_idle;

            END CASE;
         END IF;
      END IF;
   END PROCESS xmit_sm;

   -- Added by Hari

   read_fifo : PROCESS (clk, reset_n)
   BEGIN
      IF (NOT reset_n = '1') THEN
         fifo_read_tx_xhdl3 <= '1';
         fifo_read_en1 <= '1';
      ELSIF (clk'EVENT AND clk = '1') THEN
         fifo_read_tx_xhdl3 <= '1';
         fifo_read_en1 <= fifo_read_en0;
         IF (fifo_read_en = '0') THEN
            fifo_read_tx_xhdl3 <= '0';
         END IF;
      END IF;
   END PROCESS read_fifo;
   fifo_read_en <= NOT fifo_read_en1 OR fifo_read_en0 ;

   xmit_cnt : PROCESS (clk, reset_n)
   BEGIN
      IF (NOT reset_n = '1') THEN
         xmit_bit_sel <= "0000";
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (xmit_pulse = '1') THEN
            IF (xmit_state /= tx_data_bits) THEN
               xmit_bit_sel <= "0000";
            ELSE
               xmit_bit_sel <= xmit_bit_sel + "0001";
            END IF;
         END IF;
      END IF;
   END PROCESS xmit_cnt;

   xmit_sel : PROCESS (clk, reset_n)
   BEGIN
      IF (NOT reset_n = '1') THEN
         tx_xhdl2 <= '1';
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF (xmit_pulse = '1') THEN
            CASE xmit_state IS
               WHEN tx_idle =>
                        tx_xhdl2 <= '1';
               WHEN tx_load =>
                        tx_xhdl2 <= '1';
               WHEN start_bit =>
                        tx_xhdl2 <= '0';
               WHEN tx_data_bits =>
                        --tx <= tx_byte[conv_integer(xmit_bit_sel)] ;

                        tx_xhdl2 <= tx_byte(to_integer(xmit_bit_sel));
               WHEN parity_bit =>
                        tx_xhdl2 <= odd_n_even XOR tx_parity;
               --when parity_bit    => if(ODD_N_EVEN = '1') then
               --                        tx <= not tx_parity;
               --                      else
               --                        tx <= tx_parity;
               --                      end if;

               WHEN tx_stop_bit =>
                        tx_xhdl2 <= '1';
               WHEN OTHERS  =>
                        tx_xhdl2 <= '1';

            END CASE;
         END IF;
      END IF;
   END PROCESS xmit_sel;

   xmit_par_calc : PROCESS (clk, reset_n)
   BEGIN
      IF (NOT reset_n = '1') THEN
         tx_parity <= '0';
      ELSIF (clk'EVENT AND clk = '1') THEN
         IF ((xmit_pulse AND parity_en) = '1') THEN
            IF (xmit_state = tx_data_bits) THEN
               --tx_parity <= tx_parity ^ tx_byte[conv_integer(xmit_bit_sel)] ;

               tx_parity <= tx_parity XOR tx_byte(to_integer(xmit_bit_sel));
            ELSE
               tx_parity <= tx_parity;
            END IF;
         END IF;
         IF (xmit_state = tx_stop_bit) THEN
            tx_parity <= '0';
         END IF;
      END IF;
   END PROCESS xmit_par_calc;
   txrdy_xhdl1 <= txrdy_int ;

END ARCHITECTURE translated;
