-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  CMDLEGALITY.vhd
--     
-- Description: 1553B RT
--              Command Word Legallity Checker 
--
-- Rev: 1.0  01Jul02 IPB  : Initial Code  
-- Rev: 1.1  09Jul02 IPB  : First Cut EAP
-- Rev: 1.2  01Aug02 IPB  : Second EAP 
-- Rev: 2.0  22Aug02 IPB  : Production 
-- Rev: 2.2  24Jan05 IPB  : Added support for 20 & 24MHz Operation 
-- Rev: 3.0  01Aug05 IPB  : All state machines made safe 
--
--
-- SVN Revision Information:
-- SVN $Revision: 73 $
-- SVN $Date: 2007-10-03 05:01:23 -0700 (Wed, 03 Oct 2007) $
--
--
-- *********************************************************************/ 

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity CWLEGALITY is
  generic ( TESTLEGALITY : integer range 0 to 1 );
  port ( CWVAL   : in  std_logic_vector(11 downto 0);
         CMDOKAY : out std_logic 
        );
end CWLEGALITY;


architecture RTL of CWLEGALITY is

-- The TESTLEGALITY generic forces some sub addresses to become illegal for testing
--
------------------------------------------------------------------------------
-- This allows sub-addresses to be dissabled for testing the core, by default
-- If TRUE enables the Illegal Subaddress circuitery so that the RT
-- can set message error for illegal subaddresses
-- 

constant SADISSABLED : BOOLEAN := (TESTLEGALITY=1);


-- On the demoboard a 18 character buffer (9 Word Buffer) is implemented to drive the
-- RS232 port connected at subaddress 27. To stop bigger messages this sub address 
-- is invalidated if the wordcount is not 1 to 9 and also blocked for receive

constant DEMOBOARD   : BOOLEAN := (TESTLEGALITY=1);

------------------------------------------------------------------------------


signal BROADCAST : std_logic;
signal ISMCODE   : std_logic;
signal TX        : std_logic;
signal SA        : std_logic_vector(4 downto 0);
signal WCMC      : std_logic_vector(4 downto 0);
 
 
function to_logic( x: BOOLEAN) return std_logic is
 variable y : std_logic;
 begin
  y:='0';
  if x then 
     y:='1';
  end if;
  return(y);
end to_logic;


begin

-- Decode incoming Value
BROADCAST <= CWVAL(11); 
TX        <= CWVAL(10); 
SA        <= CWVAL(9 downto 5);
WCMC      <= CWVAL(4 downto 0);
ISMCODE   <= to_logic(SA="00000" or SA="11111");


-- This process decodes the Command Word and set CMDOKAY for legal command words

PLEGAL:
process(BROADCAST,TX,SA,WCMC,ISMCODE)
 variable OK     : std_logic;
 variable MUXSEL : std_logic_vector(5 downto 0);
 begin
    
    if (ISMCODE='0') then
        -- Data Transfers
        MUXSEL := TX & SA;
        OK := to_logic(FALSE);
        ------------------------------------------------------------------------
        -- This case statement legalizes Data transfers to certain sub addresses
        case MUXSEL is
          when "111010" => OK := to_logic(not SADISSABLED);   -- SA 26 Dissabled for TX
          when "111011" => OK := to_logic(not DEMOBOARD);     -- SA 27 Dissabled for TX
          when "011001" => OK := to_logic(not SADISSABLED);   -- SA 25 Dissabled for RX
          when "011011" => OK := to_logic(not DEMOBOARD)      -- SA 27 Dissabled for RX if WC>9
                                 or to_logic( WCMC>0 and WCMC <10);
          when others   => OK := '1';  -- legalize all other sub addresses
        end case;
        ------------------------------------------------------------------------
        -- Broadcast transmits are not allowed, overrides above case statement
        if BROADCAST='1' and TX='1' then
          OK := '0';  -- Broadcast Transmit is not allowed
        end if;
    
     else
        ------------------------------------------------------------------------
        -- This case statement legalizes Mode Codes
        MUXSEL := TX & WCMC;
        OK := '1';
        case MUXSEL is
          when "100000" => --Dynamic Bus Control
                           OK := '0';        -- since we cant do it we messaage error
          when "100001" => --Synchronise
          when "100010" => --Transmit Status Word
                           OK := not BROADCAST;
          when "100011" => --Initiate Self Test, we set this because we provide BIT word
                           OK := '1';
          when "100100" => --Transmitter ShutDown
          when "100101" => --Override Transmitter Shutdown
          when "100110" => --Inhibit terminal flag
          when "100111" => --Override inhibit terminal flag
          when "101000" => --Reset Remote Terminal
          when "110000" => --Transmit Vector Word
                           OK := not BROADCAST;
          when "010001" => --Synchronise with data
          when "110010" => --Transmit last command
                           OK := not BROADCAST;
          when "110011" => --Transmit bit word
                           OK := not BROADCAST;
          when "010100" => --Selected Transmitter Shutdown
                           OK := '0';
          when "010101" => --Override Selected Transmitter Shutdown
                           OK := '0';
          when others   => --All other commands all illegal
                           OK := '0';
        end case;
     end if;
     CMDOKAY <= OK;
end process;


end RTL;