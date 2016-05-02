-- ------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------- --
--                                                                           --
-- File................: TESTBNCH.V                                        --
-- Function............: Test bench for GENERIC UARTapb                          --
-- Version.............: 3.1                                                --
-- Last Updated........: 03-08-07                                            --
-- Component of........: None                                                --
-- Components Required.: UARTapb                                                 --
-- Compilation Notes...:                                                     --
--                                                                           --
-- Revision History:                                                         --
--   3.1:   Coreconsole version along with APB interface testbench
--   3.00:  added fifo verification
--   2.00:  improve report
--   1.01:  Initial design                                                   --
--   1.00:  Initial design                                                   --
--                                                                           --
--                                                                           --
-- ------------------------------------------------------------------------- --
-- ------------------------------------------------------------------------- --
library ieee;
library std;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
LIBRARY std;
use std.textio.all;
use work.tbpack.all;
use work.textio.all;
use work.misc.all;
use work.coreparameters.all;

ENTITY testbnch IS
   GENERIC (
      --  0=without fifo operation mode
      TX_FIFO                        :  integer := 0;    
      --  0=without fifo operation mode
      RX_FIFO                        :  integer := 0;    
      --  0=fifo depth is 256 bytes for devices
      --  (PA3/E, APA, AX, RTAX-S)
      -- DEVICE FAMILY 
      FAMILY                         :  integer := 15;    
      --  1=fifo depth is 16 bytes, FIFO_DEPTH_16
      --  is used for the testbench purpose only to
      --  support the devices(SX-A, RTSX-S)
      BAUD_VALUE                     :  integer := 1;    --  This value is selected only when FIXEDMODE is set to 1 
      FIXEDMODE                      :  integer := 0;    --  fixed or programmable mode, 0: programmable; 1:fixed
      PRG_BIT8                     :  integer := 0;    --  This bit value is selected only when FIXEDMODE is set to 1 
      PRG_PARITY                   :  integer := 0;    --  This value is selected only when FIXEDMODE is set to 1 
      -- The following parameter is used only in the testbench
      FIFO_DEPTH_16                  :  integer := 0);    
 END ENTITY testbnch;

ARCHITECTURE translated OF testbnch IS

COMPONENT CoreUARTapb 
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
END COMPONENT ;

   CONSTANT xhdl_timescale         : time := 1 ns;

   TYPE xhdl_1 IS ARRAY (0 TO 511) OF std_logic_vector(7 DOWNTO 0);



   -------------------------------------------------
   -- component port listings
   -------------------------------------------------
   --  1=with fifo operation mode
   --  1=with fifo operation mode
   -------------------------------------------------
   -- internal signals
   -------------------------------------------------
   SIGNAL PCLK                     :  std_logic := '0';   
   SIGNAL PRESETN                  :  std_logic := '0';   
   SIGNAL UARTstatus1_data_out     :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL UARTstatus2_data_out     :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL UARTconfig1_bit8         :  std_logic;   
   SIGNAL UARTconfig1_parity_en    :  std_logic;   
   SIGNAL UARTconfig1_odd_n_even   :  std_logic;   
   SIGNAL UARTconfig2_bit8         :  std_logic;   
   SIGNAL UARTconfig2_parity_en    :  std_logic;   
   SIGNAL UARTconfig2_odd_n_even   :  std_logic;   
   SIGNAL PWDATA1                  :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL PWDATA2                  :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL txdata1                  :  std_logic;   
   SIGNAL rxdata1                  :  std_logic;   
   SIGNAL txdata2                  :  std_logic;   
   SIGNAL rxdata2                  :  std_logic;   
   SIGNAL PSEL1                    :  std_logic;   
   SIGNAL PSEL2                    :  std_logic;   
   SIGNAL count                    :  std_logic_vector(8 DOWNTO 0);   
   SIGNAL tdata                    :  xhdl_1;   
   SIGNAL rdata                    :  xhdl_1;   
   SIGNAL wdata                    :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL wdata1                   :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL wdata2                   :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL rc                       :  std_logic_vector(8 DOWNTO 0);   
   SIGNAL tc                       :  std_logic_vector(8 DOWNTO 0);   
   SIGNAL i                        :  std_logic_vector(8 DOWNTO 0);   
   SIGNAL passflag                 :  std_logic_vector(8 DOWNTO 0);   
   SIGNAL par_err                  :  xhdl_1;   
   SIGNAL PWRITE1                  :  std_logic;   
   SIGNAL PWRITE2                  :  std_logic;   
   SIGNAL PENABLE1                 :  std_logic;   
   SIGNAL PENABLE2                 :  std_logic;   
   SIGNAL PADDR1                   :  std_logic_vector(8 DOWNTO 0);   
   SIGNAL PADDR2                   :  std_logic_vector(8 DOWNTO 0);   
   SIGNAL UARTstatus1_overflow     :  std_logic;   
   SIGNAL UARTstatus1_parity_err   :  std_logic;   
   SIGNAL UARTstatus1_rxrdy        :  std_logic;   
   SIGNAL UARTstatus1_txrdy        :  std_logic;   
   SIGNAL UARTstatus2_overflow     :  std_logic;   
   SIGNAL UARTstatus2_parity_err   :  std_logic;   
   SIGNAL UARTstatus2_rxrdy        :  std_logic;   
   SIGNAL UARTstatus2_txrdy        :  std_logic;   



BEGIN

   -------------------------------------------------
   -- 2 Meg baud selection based on 33 MHZ clock
   -------------------------------------------------
   -------------------------------------------------
   -- drive clock
   -------------------------------------------------
   
   PROCESS
   BEGIN
      WAIT FOR 15 * xhdl_timescale;
      
      PCLK <= NOT PCLK;    
   END PROCESS;
   
   -------------------------------------------------
   -- component instantiations
   -------------------------------------------------
   make_UART1 : CoreUARTapb 
      GENERIC MAP (
         PRG_PARITY => PRG_PARITY,
         TX_FIFO => TX_FIFO,
         BAUD_VALUE => BAUD_VALUE,
         FAMILY => FAMILY,
         RX_FIFO => RX_FIFO,
         PRG_BIT8 => PRG_BIT8,
         FIXEDMODE => FIXEDMODE)
      PORT MAP (
         PCLK => PCLK,
         PRESETN => PRESETN,
         PADDR => PADDR1(4 DOWNTO 2),
         PSEL => PSEL1,
         PENABLE => PENABLE1,
         PWRITE => PWRITE1,
         PWDATA => PWDATA1,
         PRDATA => UARTstatus1_data_out,
         TXRDY => UARTstatus1_txrdy,
         RXRDY => UARTstatus1_rxrdy,
         PARITY_ERR => UARTstatus1_parity_err,
         OVERFLOW => UARTstatus1_overflow,
         RX => rxdata1,
         TX => txdata1);   
   
   make_UART2 : CoreUARTapb 
      GENERIC MAP (
         PRG_PARITY => PRG_PARITY,
         TX_FIFO => TX_FIFO,
         BAUD_VALUE => BAUD_VALUE,
         FAMILY => FAMILY,
         RX_FIFO => RX_FIFO,
         PRG_BIT8 => PRG_BIT8,
         FIXEDMODE => FIXEDMODE)
      PORT MAP (
         PCLK => PCLK,
         PRESETN => PRESETN,
         PADDR => PADDR2(4 DOWNTO 2),
         PSEL => PSEL2,
         PENABLE => PENABLE2,
         PWRITE => PWRITE2,
         PWDATA => PWDATA2,
         PRDATA => UARTstatus2_data_out,
         TXRDY => UARTstatus2_txrdy,
         RXRDY => UARTstatus2_rxrdy,
         PARITY_ERR => UARTstatus2_parity_err,
         OVERFLOW => UARTstatus2_overflow,
         RX => rxdata2,
         TX => txdata2);   
   
   rxdata1 <= txdata2 ;
   rxdata2 <= txdata1 ;

   xhdl_7 : PROCESS

   VARIABLE xhdl_initial : BOOLEAN := TRUE;

   PROCEDURE cpu_write1 (
         address                 : IN std_logic_vector(8 DOWNTO 0);   
         data                    : IN std_logic_vector(7 DOWNTO 0))IS
   
      
   BEGIN
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      -- $display("CPU Write %04x = %04x",address,data);
      
      
      PWRITE1 <= '0';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PENABLE1 <= '0';    
      PSEL1 <= '1';    
      PADDR1 <= address;    
      PWDATA1 <= data;    
      PWRITE1 <= '1';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PENABLE1 <= '1';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PWRITE1 <= '0';    
      PENABLE1 <= '0';    
      PSEL1 <= '0';    
   END PROCEDURE cpu_write1;


   PROCEDURE cpu_write2 (
         address                 : IN std_logic_vector(8 DOWNTO 0);   
         data                    : IN std_logic_vector(7 DOWNTO 0))IS
   
      
   BEGIN
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      -- $display("CPU Write %04x = %04x",address,data);
      
      
      PWRITE2 <= '0';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PENABLE2 <= '0';    
      PSEL2 <= '1';    
      PADDR2 <= address;    
      PWDATA2 <= data;    
      PWRITE2 <= '1';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PENABLE2 <= '1';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PWRITE2 <= '0';    
      PENABLE2 <= '0';    
      PSEL2 <= '0';    
   END PROCEDURE cpu_write2;

   PROCEDURE cpu_read2 (
         address                 : IN std_logic_vector(8 DOWNTO 0))IS
   
      
   BEGIN
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PWRITE2 <= '1';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PENABLE2 <= '0';    
      PSEL2 <= '1';    
      PADDR2 <= address;    
      PWRITE2 <= '0';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PENABLE2 <= '1';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PWRITE2 <= '1';    
      PENABLE2 <= '0';    
      PSEL2 <= '0';    
      -- $display("CPU Read %04x = %04x",address, UARTstatus2_data_out);
      
      
   END PROCEDURE cpu_read2;

   -- This task does a cpu read
   PROCEDURE cpu_read1 (
         address                 : IN std_logic_vector(8 DOWNTO 0))IS
   
      
   BEGIN
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PWRITE1 <= '1';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PENABLE1 <= '0';    
      PSEL1 <= '1';    
      PADDR1 <= address;    
      PWRITE1 <= '0';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PENABLE1 <= '1';    
      WAIT UNTIL (PCLK'EVENT AND PCLK = '0');
      
      PWRITE1 <= '1';    
      PENABLE1 <= '0';    
      PSEL1 <= '0';    
      -- $display("CPU Read %04x",address);
      
      
   END PROCEDURE cpu_read1;

   PROCEDURE WRITE (
      val      : IN string) IS
      VARIABLE ptr        : line;
   BEGIN
      WRITE(OUTPUT, val);
      WRITELINE(OUTPUT, ptr);
   END WRITE;

      
   BEGIN
      IF (xhdl_initial) THEN
         -- ALL TESTS BY DEFAULT TRANSMIT ON UART1 AND RECEIVE ON UART2
         
         WRITE("Actel UART Testbench  v3.00 ");   
         WRITE("--------------------------------------");   
         WRITE(" ");   
         ------------------------------------
         -- initial control signal conditions
         ------------------------------------
         
         PSEL1 <= '0';    
         PSEL2 <= '0';    
         PWDATA1 <= "00000000";    
         -------------------------------------------------
         -- drive the resets
         -------------------------------------------------
         
         WRITE("Appling Reset");   
         PRESETN <= '0';    
         FOR X IN 1 TO 10 LOOP
            WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
            
         END LOOP;
         WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
         
         WAIT FOR 100 * xhdl_timescale;
         
         PRESETN <= '1';    
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 1) AND (PRG_PARITY = 2) )) THEN
            WRITE("Setting UART1 Operating Mode 8 bit, parity enabled, and even parity");   
            wdata1 <= "00000011";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 Operating Mode 8 bit, parity enabled, and even parity");   
            wdata2 <= "00000011";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "100000000";    
            END IF;
            tc <= "000000000";    
            rc <= "000000000";    
            WRITE("Testing Continuous Data Stream UART1 to UART2");   
            -- Initialiase test data
            
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               -- Now See if any received data
               
               IF (UARTstatus2_rxrdy = '1') THEN
                  cpu_read2("000000100");   
                  rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                  rc <= rc + "000000001";    
               END IF;
            END LOOP;
            -- Verify that correct data received
            
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (rdata(to_integer(i)) /= tdata(to_integer(i))) THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  --  $display("CPU write data %04x",tdata[i]);
                  --  $display("CPU read data %04x",rdata[i]);
                  
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 1) AND (PRG_PARITY = 1))) THEN
            WRITE("Setting UART1 Operating Mode 8 bit, parity enabled, and odd parity");   
            wdata1 <= "00000111";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 Operating Mode 8 bit, parity enabled, and odd parity");   
            wdata2 <= "00000111";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "100000000";    
            END IF;
            tc <= "000000000";    
            rc <= "000000000";    
            WRITE("Testing Continuous Data Stream UART1 to UART2");   
            -- Initialiase test data
            
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               -- Now See if any received data
               
               IF (UARTstatus2_rxrdy = '1') THEN
                  cpu_read2("000000100");   
                  rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                  rc <= rc + "000000001";    
               END IF;
            END LOOP;
            -- Verify that correct data received
            
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (rdata(to_integer(i)) /= tdata(to_integer(i))) THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 0) AND (PRG_PARITY = 2))) THEN
            WRITE("Setting UART1 Operating Mode 7 bit, parity enabled, and even parity");   
            wdata1 <= "00000010";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 Operating Mode 7 bit, parity enabled, and even parity");   
            wdata2 <= "00000010";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "010000000";    
            END IF;
            tc <= "000000000";    
            rc <= "000000000";    
            WRITE("Testing Continuous Data Stream UART1 to UART2");   
            -- Initialiase test data
            
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               -- Now See if any received data
               
               IF (UARTstatus2_rxrdy = '1') THEN
                  cpu_read2("000000100");   
                  rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                  rc <= rc + "000000001";    
               END IF;
            END LOOP;
            -- Verify that correct data received
            
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (rdata(to_integer(i)) /= tdata(to_integer(i))) THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 0) AND (PRG_PARITY = 1))) THEN
            WRITE("Setting UART1 Operating Mode 7 bit, parity enabled, and odd parity");   
            wdata1 <= "00000110";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 Operating Mode 7 bit, parity enabled, and odd parity");   
            wdata2 <= "00000110";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "010000000";    
            END IF;
            tc <= "000000000";    
            rc <= "000000000";    
            WRITE("Testing Continuous Data Stream UART1 to UART2");   
            -- Initialiase test data
            
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               -- Now See if any received data
               
               IF (UARTstatus2_rxrdy = '1') THEN
                  cpu_read2("000000100");   
                  rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                  rc <= rc + "000000001";    
               END IF;
            END LOOP;
            -- Verify that correct data received
            
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (rdata(to_integer(i)) /= tdata(to_integer(i))) THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 1) AND (PRG_PARITY = 0))) THEN
            WRITE("Setting UART1 Operating Mode 8 bit, parity disabled") ;   
            wdata1 <= "00000101";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 Operating Mode 8 bit, parity disabled") ;   
            wdata2 <= "00000101";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "100000000";    
            END IF;
            tc <= "000000000";    
            rc <= "000000000";    
            WRITE("Testing Continuous Data Stream UART1 to UART2");   
            -- Initialiase test data
            
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               -- Now See if any received data
               
               IF (UARTstatus2_rxrdy = '1') THEN
                  cpu_read2("000000100");   
                  rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                  rc <= rc + "000000001";    
               END IF;
            END LOOP;
            -- Verify that correct data received
            
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (rdata(to_integer(i)) /= tdata(to_integer(i))) THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 0) AND (PRG_PARITY = 0))) THEN
            WRITE("Setting UART1 Operating Mode 7 bit, parity disabled") ;   
            wdata1 <= "00000100";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 Operating Mode 7 bit, parity disabled") ;   
            wdata2 <= "00000100";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "010000000";    
            END IF;
            tc <= "000000000";    
            rc <= "000000000";    
            WRITE("Testing Continuous Data Stream UART1 to UART2");   
            -- Initialiase test data
            
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               -- Now See if any received data
               
               IF (UARTstatus2_rxrdy = '1') THEN
                  cpu_read2("000000100");   
                  rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                  rc <= rc + "000000001";    
               END IF;
            END LOOP;
            -- Verify that correct data received
            
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (rdata(to_integer(i)) /= tdata(to_integer(i))) THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         -----------------------------------
         -- Testing PARITY ERROR Generations
         -----------------------------------
         
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 1) AND (PRG_PARITY = 2))) THEN
            WRITE("Setting UART1 8bit, parity enabled, and even parity") ;   
            -- UART1 8bit, parity enabled, and even parity
            
            wdata1 <= "00000011";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 8bit, parity enabled, and odd parity"); 
            wdata2 <= "00000111";    
            cpu_write2("000001100", wdata2);   
            -- UART2 8bit, parity enabled, and odd parity
            
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "100000000";    
            END IF;
            WRITE("Testing parity error generation");   
            -- Initialiase test data
            
            tc <= "000000000";    
            rc <= "000000000";    
            i <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               par_err(to_integer(i)) <= "00000000";    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               IF (RX_FIFO = 0) THEN
                  -- Now See if any received data
                  
                  IF (UARTstatus2_rxrdy = '1') THEN
                     par_err(to_integer(rc)) <= "0000000" & 
                     UARTstatus2_parity_err;    
                     cpu_read2("000000100");   
                     rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                     rc <= rc + "000000001";    
                  END IF;
               ELSE
                  IF (UARTstatus2_parity_err = '1') THEN
                     par_err(to_integer(rc)) <= "0000000" & 
                     UARTstatus2_parity_err;    
                     cpu_read2("000000100");   
                     rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                     rc <= rc + "000000001";    
                  END IF;
               END IF;
            END LOOP;
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (par_err(to_integer(i)) /= "00000001") THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 1) AND (PRG_PARITY = 1))) THEN
            WRITE("Setting UART1 8bit, parity enabled, and odd parity"); 
            -- UART1 8bit, parity enabled, and odd parity
            
            wdata1 <= "00000111";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 8bit, parity enabled, and even parity") ;   
            wdata2 <= "00000011";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "100000000";    
            END IF;
            WRITE("Testing parity error generation");   
            -- Initialiase test data
            
            tc <= "000000000";    
            rc <= "000000000";    
            i <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               par_err(to_integer(i)) <= "00000000";    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               IF (RX_FIFO = 0) THEN
                  -- Now See if any received data
                  
                  IF (UARTstatus2_rxrdy = '1') THEN
                     par_err(to_integer(rc)) <= "0000000" & 
                     UARTstatus2_parity_err;    
                     cpu_read2("000000100");   
                     rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                     rc <= rc + "000000001";    
                  END IF;
               ELSE
                  IF (UARTstatus2_parity_err = '1') THEN
                     par_err(to_integer(rc)) <= "0000000" & 
                     UARTstatus2_parity_err;    
                     cpu_read2("000000100");   
                     rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                     rc <= rc + "000000001";    
                  END IF;
               END IF;
            END LOOP;
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (par_err(to_integer(i)) /= "00000001") THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 0) AND (PRG_PARITY = 2))) THEN
            WRITE("Setting UART1 7bit, parity enabled, and even parity") ;   
            -- UART1 7bit, parity enabled, and even parity
            
            wdata1 <= "00000010";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 7bit, parity enabled, and odd parity"); 
            -- UART2 7bit, parity enabled, and odd parity
            
            wdata2 <= "00000110";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "010000000";    
            END IF;
            WRITE("Testing parity error generation");   
            -- Initialiase test data
            
            tc <= "000000000";    
            rc <= "000000000";    
            i <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               par_err(to_integer(i)) <= "00000000";    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               IF (RX_FIFO = 0) THEN
                  -- Now See if any received data
                  
                  IF (UARTstatus2_rxrdy = '1') THEN
                     par_err(to_integer(rc)) <= "0000000" & 
                     UARTstatus2_parity_err;    
                     cpu_read2("000000100");   
                     rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                     rc <= rc + "000000001";    
                  END IF;
               ELSE
                  IF (UARTstatus2_parity_err = '1') THEN
                     par_err(to_integer(rc)) <= "0000000" & 
                     UARTstatus2_parity_err;    
                     cpu_read2("000000100");   
                     rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                     rc <= rc + "000000001";    
                  END IF;
               END IF;
            END LOOP;
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (par_err(to_integer(i)) /= "00000001") THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 0) AND (PRG_PARITY = 1))) THEN
            WRITE("Setting UART1 7bit, parity enabled, and odd parity"); 
            -- UART1 7bit, parity enabled, and odd parity
            
            wdata1 <= "00000110";    
            cpu_write1("000001100", wdata1);   
            WRITE("Setting UART2 8bit, parity enabled, and even parity") ;   
            -- UART2 7bit, parity enabled, and even parity
            
            wdata2 <= "00000010";    
            cpu_write2("000001100", wdata2);   
            FOR X IN 1 TO 10 LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
            END LOOP;
            IF (FIFO_DEPTH_16 = 1) THEN
               count <= "000010000";    
            ELSE
               count <= "100000000";    
            END IF;
            WRITE("Testing parity error generation");   
            -- Initialiase test data
            
            tc <= "000000000";    
            rc <= "000000000";    
            i <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               tdata(to_integer(i)) <= i(7 DOWNTO 0);    
               par_err(to_integer(i)) <= "00000000";    
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
            WHILE (rc < count) LOOP
               WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
               
               IF (tc < count) THEN
                  -- Firstly See if the Transmitter is ready
                  
                  IF (UARTstatus1_txrdy = '1') THEN
                     wdata <= tdata(to_integer(tc));    
                     cpu_write1("000000000", wdata);   
                     tc <= tc + "000000001";    
                  END IF;
               END IF;
               IF (RX_FIFO = 0) THEN
                  -- Now See if any received data
                  
                  IF (UARTstatus2_rxrdy = '1') THEN
                     par_err(to_integer(rc)) <= "0000000" & 
                     UARTstatus2_parity_err;    
                     cpu_read2("000000100");   
                     rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                     rc <= rc + "000000001";    
                  END IF;
               ELSE
                  IF (UARTstatus2_parity_err = '1') THEN
                     par_err(to_integer(rc)) <= "0000000" & 
                     UARTstatus2_parity_err;    
                     cpu_read2("000000100");   
                     rdata(to_integer(rc)) <= UARTstatus2_data_out;    
                     rc <= rc + "000000001";    
                  END IF;
               END IF;
            END LOOP;
            passflag <= "000000000";    
            i <= "000000000";
            WAIT FOR 0 ns;
            WHILE (i<=count - "000000001") LOOP
               IF (par_err(to_integer(i)) /= "00000001") THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  passflag <= passflag + "000000001";    
                  IF (passflag = count) THEN
                     WRITE("THIS TEST IS PASSED");   
                     WRITE("-----------------------------------------------------");   
                  END IF;
               END IF;
               i <= i + "000000001";
               WAIT FOR 0 ns;
            END LOOP;
         END IF;
         -----------------------------------
         -- Testing Overflow circuitry
         -----------------------------------
         
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 1) AND (PRG_PARITY = 1))) THEN
            IF (RX_FIFO = 0) THEN
               WRITE("Setting UART1 8bit, parity enabled, and odd parity");   
               wdata1 <= "00000011";    
               cpu_write1("000001100", wdata1);   
               WRITE("Setting UART2 8bit, parity enabled, and odd parity");   
               wdata2 <= "00000011";    
               cpu_write2("000001100", wdata2);   
               FOR X IN 1 TO 100 LOOP
                  WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
                  
               END LOOP;
               WRITE("Testing for RX data overflow");   
               cpu_write1("000000000", "10100101");   
               FOR X IN 1 TO 5 LOOP
                  WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
                  
               END LOOP;
               IF (UARTstatus2_overflow = '1') THEN
                  WRITE("Overflow set too early");   
               END IF;
               IF (UARTstatus1_txrdy = '1') THEN
                  cpu_write1("000000000", "01011010");   
                  WAIT UNTIL (UARTstatus2_overflow'EVENT AND 
                  UARTstatus2_overflow = '1');
                  
                  FOR X IN 1 TO 10 LOOP
                     WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
                     
                  END LOOP;
               ELSE
                  WAIT UNTIL (UARTstatus1_txrdy'EVENT AND 
                  UARTstatus1_txrdy = '1');
                  
                  FOR X IN 1 TO 10 LOOP
                     WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
                     
                  END LOOP;
                  cpu_write1("000000000", "01011010");   
                  WAIT UNTIL (UARTstatus2_overflow'EVENT AND 
                  UARTstatus2_overflow = '1');
                  
                  FOR X IN 1 TO 10 LOOP
                     WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
                     
                  END LOOP;
               END IF;
               -- Get the byte, should be the first one
               
               IF (UARTstatus2_rxrdy = '1') THEN
                  cpu_read2("000000100");   
               ELSE
                  WAIT UNTIL (UARTstatus2_rxrdy'EVENT AND 
                  UARTstatus2_rxrdy = '1');
                  
                  cpu_read2("000000100");   
               END IF;
               IF (UARTstatus2_data_out /= "10100101") THEN
                  WRITE("THIS TEST IS FAILED");   
                  ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
                  FAILURE;   
               ELSE
                  WRITE("THIS TEST IS PASSED");   
                  WRITE("-----------------------------------------------------");   
               END IF;
               FOR X IN 1 TO 5 LOOP
                  WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
                  
               END LOOP;
               cpu_write1("000000000", "01011010");   
            END IF;
         END IF;
         IF ((FIXEDMODE = 0) OR ((PRG_BIT8 = 1) AND (PRG_PARITY = 2))) THEN
            IF (RX_FIFO = 1) THEN
               WRITE("Setting UART1 Operating Mode 8 bit, parity enabled, and even parity");   
               wdata1 <= "00000011";    
               cpu_write1("000001100", wdata1);   
               WRITE("Setting UART2 Operating Mode 8 bit, parity enabled, and even parity");   
               wdata2 <= "00000011";    
               cpu_write2("000001100", wdata2);   
               FOR X IN 1 TO 10 LOOP
                  WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
                  
               END LOOP;
               IF (FIFO_DEPTH_16 = 1) THEN
                  count <= "000010000";    
               ELSE
                  count <= "100000000";    
               END IF;
               tc <= "000000000";    
               rc <= "000000000";    
               WRITE("Testing for RX data overflow");   
               -- Initialiase test data
               
               i <= "000000000";
               WAIT FOR 0 ns;
               WHILE (i<=count - "000000001") LOOP
                  tdata(to_integer(i)) <= i(7 DOWNTO 0);    
                  i <= i + "000000001";
                  WAIT FOR 0 ns;
               END LOOP;
               WHILE (tc < count) LOOP
                  WAIT UNTIL (PCLK'EVENT AND PCLK = '1');
                  
                  IF (tc < count) THEN
                     -- Firstly See if the Transmitter is ready
                     
                     IF (UARTstatus1_txrdy = '1') THEN
                        wdata <= tdata(to_integer(tc));    
                        cpu_write1("000000000", wdata);   
                        tc <= tc + "000000001";    
                     END IF;
                  END IF;
               END LOOP;
               WAIT UNTIL (UARTstatus2_overflow'EVENT AND 
               UARTstatus2_overflow = '1');
               -- Now See if any received data
               
               
               cpu_read2("000000100");   
               rdata(0) <= UARTstatus2_data_out;    
       --     END IF;
            -- Verify that correct data received
            
            IF (rdata(0) /= tdata(0)) THEN
               WRITE("THIS TEST IS FAILED");   
               ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY 
               FAILURE;   
            ELSE
               WRITE("THIS TEST IS PASSED");   
               WRITE("-----------------------------------------------------");   
            END IF;
         END IF;
       END IF;
         WRITE("END OF SIMULATION");   
         WRITE("ALL TESTS ARE PASSED");   
         ASSERT (FALSE) REPORT "'$finish' Encountered" SEVERITY FAILURE; 
         xhdl_initial := FALSE;
      ELSE
         WAIT;
      END IF;
   END PROCESS xhdl_7;

END ARCHITECTURE translated;
