-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  encoder.vhd
--     
-- Description: 1553B RT
--              Serial Encoder  
--
-- Rev: 1.0  01Jul02 IPB  : Initial Code  
-- Rev: 1.1  09Jul02 IPB  : First Cut EAP
-- Rev: 1.2  01Aug02 IPB  : Second EAP 
-- Rev: 2.0  22Aug02 IPB  : Production 
-- Rev: 2.1  01Feb03 IPB  : Corrected Loopback problem in SYNC pattern 
-- Rev: 2.2  24Jan05 IPB  : Added support for 20 & 24MHz Operation 
--           17Sep04 IPB  : SAR38813 Fixed, 12MHZ loopback errors
-- Rev: 3.0  01Aug05 IPB  : All state machines made safe 
--                          SAR48234 Loopback Failure Logic fixed, delay limited to 2.4us
--                                                       
--
-- SVN Revision Information:
-- SVN $Revision: 73 $
-- SVN $Date: 2007-10-03 05:01:23 -0700 (Wed, 03 Oct 2007) $
--
-- Notes:
--
-- *********************************************************************/ 

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ENCODER is
  port ( CLK        : in  std_logic;
         RSTn       : in  std_logic;
         CLKSPD     : in  std_logic_vector(1 downto 0);
         STROBE     : in  std_logic;
         ABORTX     : in  std_logic;
         DATAIN     : in  std_logic_vector(15 downto 0);
         CMDSTAT    : in  std_logic;
         TXENABLE   : out std_logic;
         TXBUSY     : out std_logic;
         TXREADY    : out std_logic;
         DOUT       : out std_logic;
         TXENA      : in  std_logic;
         RXSTROBEA  : in  std_logic;
         RXERRORA   : in  std_logic;
         RXDATAA    : in  std_logic_vector(15 downto 0);
         RXDATAAS   : in  std_logic;
         LOOPFAILA  : out std_logic;
         TXENB      : in  std_logic;
         RXSTROBEB  : in  std_logic;
         RXERRORB   : in  std_logic;
         RXDATAB    : in  std_logic_vector(15 downto 0);
         RXDATABS   : in  std_logic;
         LOOPFAILB  : out std_logic;
         CLRERRORS  : in  std_logic;
         FSM_ERROR  : out std_logic
      );
end ENCODER;


architecture RTL of ENCODER is


constant IDLE     : bit_vector(2 downto 0) := "000";
constant SYNC1    : bit_vector(2 downto 0) := "001";
constant SYNC2    : bit_vector(2 downto 0) := "010";
constant DOUT1    : bit_vector(2 downto 0) := "011";
constant DOUT2    : bit_vector(2 downto 0) := "100";
constant NDATA    : bit_vector(2 downto 0) := "101";
constant UNUSED1  : bit_vector(2 downto 0) := "110";
constant UNUSED2  : bit_vector(2 downto 0) := "111";

signal  STATE     : bit_vector(2 downto 0);

signal  CLKCNT    : std_logic_vector(5 downto 0); 
signal  DATATEMP  : std_logic_vector(15 downto 0);
signal  COMPDATA  : std_logic_vector(15 downto 0);
signal  DATACNT   : std_logic_vector(4 downto 0);
signal  READY     : std_logic;
signal  BUSY      : std_logic;
signal  PAR       : std_logic;
signal  xDOUT     : std_logic;
signal  CHECKA    : std_logic;
signal  CHECKB    : std_logic;
signal  COMPSYNC  : std_logic;

signal  CLKVALUE1 : std_logic_vector(5 downto 0);    
signal  CLKVALUE2 : std_logic_vector(5 downto 0);    
signal  CLKVALUE3 : std_logic_vector(5 downto 0);    
signal  CLKVALUE4 : std_logic_vector(5 downto 0);    
signal  CLKVALUE5 : std_logic_vector(5 downto 0);    
signal  CLKVALUE6 : std_logic_vector(5 downto 0);    
    
attribute syn_preserve   : boolean;
attribute syn_replicate  : boolean;
attribute syn_encoding   : string;
attribute syn_preserve  of STATE : signal is true;
attribute syn_encoding  of STATE : signal is "orginal";
attribute syn_replicate of STATE : signal is false;
    
begin

-- These are the count values that change based on the clock frequency

process(CLKSPD)
 begin
   case CLKSPD is
     when "00"   => CLKVALUE1 <= "010001"; --12MHz        -- FREQ * 1.5 -1
                    CLKVALUE2 <= "010000";                -- FREQ * 1.5 -1
                    CLKVALUE3 <= "001011";                -- FREQ -1
                    CLKVALUE4 <= "001010";                -- FREQ -2
                    CLKVALUE5 <= "000101";                -- FREQ/2 -1
                    CLKVALUE6 <= "100011";                -- FREQ * 2.4 + 6
     when "01"   => CLKVALUE1 <= "010111"; --16MHz
                    CLKVALUE2 <= "010110"; 
                    CLKVALUE3 <= "001111"; 
                    CLKVALUE4 <= "001110"; 
                    CLKVALUE5 <= "000111"; 
                    CLKVALUE6 <= "101101";               
     when "10"   => CLKVALUE1 <= "011101"; --20MHz
                    CLKVALUE2 <= "011100"; 
                    CLKVALUE3 <= "010011"; 
                    CLKVALUE4 <= "010010"; 
                    CLKVALUE5 <= "001001"; 
                    CLKVALUE6 <= "110110";               
     when others => CLKVALUE1 <= "100011"; --24MHz
                    CLKVALUE2 <= "100010"; 
                    CLKVALUE3 <= "010111"; 
                    CLKVALUE4 <= "010110"; 
                    CLKVALUE5 <= "001011"; 
                    CLKVALUE6 <= "111111";               
   end case;
end process;

UTX:
process(CLK,RSTn)
 begin
    if RSTn='0' then
      CLKCNT    <= "000000";
      STATE     <= IDLE;
      xDOUT     <= '0';
      BUSY      <= '0';
      READY     <= '1';
      DATATEMP  <= (others => '0');
      DATACNT   <= "00000";
      PAR       <= '0';
      CHECKA    <= '0';
      CHECKB    <= '0';
      LOOPFAILA <= '0';
      LOOPFAILB <= '0';
      TXENABLE  <= '0';
      COMPDATA  <= (others => '0');
      COMPSYNC  <= '0';
      FSM_ERROR <= '0';
    elsif CLK'event and CLK='1' then
      FSM_ERROR <= '0';
      if STROBE='1' and READY='1' then 
        READY <= '0';
      end if;
      case STATE is
       when IDLE  => CLKCNT   <= CLKCNT - 1;
                     TXENABLE <= '0';
                     BUSY     <= '0';
                     if STROBE='1' or READY='0' then
                       STATE    <= SYNC1;
                       xDOUT    <= CMDSTAT;
                       CLKCNT   <= CLKVALUE1;
                       BUSY     <= '1';
                       TXENABLE <= '1';
                       DATATEMP <= DATAIN;
                       DATACNT  <= "00000";
                       PAR      <= '1';
                       READY    <= '1';
                     end if;
                     if CLKCNT="000000" then        
                       if CHECKA='1' then           -- No RX data after 2.4us, error  
                         LOOPFAILA <= '1';          -- Previous data not received
                       end if;
                       if CHECKB='1' then
                         LOOPFAILB <= '1';          -- Previous data not received
                       end if;
                       CHECKA <= '0';
                       CHECKB <= '0';
                     end if;
       when SYNC1 => CLKCNT   <= CLKCNT - 1;
                     if CLKCNT="000000" then
                        xDOUT   <= not xDOUT;
                        STATE   <= SYNC2;
                        CLKCNT  <= CLKVALUE2;
                     end if;
       when SYNC2 => CLKCNT <= CLKCNT - 1;
                     if CLKCNT="000000" then
                       STATE  <= NDATA;
                       if CHECKA='1' then
                         LOOPFAILA <= '1';             -- Previous data not received
                       end if;                         -- end of SYNC pattern 3us later
                       if CHECKB='1' then
                         LOOPFAILB <= '1';             -- Previous data not received
                       end if;
                       COMPDATA <= DATATEMP;           -- Update data for compare
                       COMPSYNC <= not xDOUT;          -- Also the SYNC value
                       CHECKA   <= TXENA;              
                       CHECKB   <= TXENB;              
                     end if;
       when DOUT2 => CLKCNT <= CLKCNT -1;
                     if CLKCNT="000000" then
                       if DATACNT="10001" then         -- Back to IDLE
                         STATE    <= IDLE;
                         CLKCNT   <= CLKVALUE6;
                       else
                         STATE <= NDATA;
                       end if;
                     end if;
       when NDATA => if DATACNT(4)='1' then
                       xDOUT <= PAR;
                     else
                       xDOUT <= DATATEMP(15);
                     end if;
                     PAR      <= PAR xor DATATEMP(15);
                     DATATEMP <= DATATEMP(14 downto 0) & '0';
                     DATACNT  <= DATACNT +1;
                     CLKCNT   <= CLKVALUE4;
                     STATE    <= DOUT1;
       when DOUT1 => CLKCNT   <= CLKCNT -1;
                     if CLKCNT=CLKVALUE5 then
                       xDOUT  <= not xDOUT;
                       STATE  <= DOUT2;
                     end if;
       when UNUSED1 | UNUSED2 =>
                     FSM_ERROR <= '1';        -- Illegal state detection
                     CLKCNT    <= "000000";   -- make sure critical signals cleared
                     STATE     <= IDLE;
                     BUSY      <= '0';
                     READY     <= '1';
                     CHECKA    <= '0';
                     CHECKB    <= '0';
                     TXENABLE  <= '0';
     end case;  
     -- Compare SYNC value and RXDATA to detect loopback on both buses
     if RXSTROBEA='1' and CHECKA='1' then
       CHECKA <= '0';
       if COMPDATA/=RXDATAA or COMPSYNC/=RXDATAAS or RXERRORA='1' then
         LOOPFAILA <= '1';
       end if;
     end if;
     if RXSTROBEB='1' and CHECKB='1' then
       CHECKB <= '0';
       if COMPDATA/=RXDATAB or COMPSYNC/=RXDATABS or RXERRORB='1' then
         LOOPFAILB <= '1';
       end if;
     end if;
     if CLRERRORS='1' then
       LOOPFAILA <= '0';
       LOOPFAILB <= '0';
     end if; 
     if ABORTX='1' then
       STATE    <= IDLE;
       READY    <= '1';
       CLKCNT   <= "000000";
       CHECKA   <= '0';
       CHECKB   <= '0';
       TXENABLE <= '0';
       BUSY     <= '0';
     end if; 
   end if;
end process;

TXREADY <= READY;
TXBUSY  <= BUSY or CHECKA or CHECKB;

DOUT <= xDOUT;

    
end RTL;
