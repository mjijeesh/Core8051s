-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  tranceiver.vhd
--     
-- Description: 1553B RT Testbench
--              Simple Tranceiver Model  
--
-- Rev: 1.0 01Jul02 IPB  : Initial Code  
-- Rev: 1.1 09Jul02 IPB  : First Cut EAP
-- Rev: 1.2 01Aug02 IPB  : Second EAP 
-- Rev: 2.0 22Aug02 IPB  : Production 
-- Rev: 3.0 01Aug05 IPB  : All state machines made safe 
--
--
-- SVN Revision Information:
-- SVN $Revision: 90 $
-- SVN $Date: 2007-10-09 02:38:13 -0700 (Tue, 09 Oct 2007) $
--
-- Notes: Recoded in v3.0 to make very simple
--
-- *********************************************************************/ 

library IEEE;
use IEEE.std_logic_1164.all;
 
 
entity TRANSCEIVER is 
      port  (  BUSPOS     : inout std_logic;
               BUSNEG     : inout std_logic;
               RXENABLE   : in    std_logic;
               RXDATAOUTP : out   std_logic;
               RXDATAOUTN : out   std_logic;
               TXINHIBIT  : in    std_logic;
               TXDATAINP  : in    std_logic;
               TXDATAINN  : in    std_logic
             );
end TRANSCEIVER;



architecture TB of TRANSCEIVER is
                   
signal TXEN     : std_logic;
signal BUSPOS01 : std_logic;
signal BUSNEG01 : std_logic;

begin

TXEN <= not TXINHIBIT and ( TXDATAINP xor TXDATAINN);


BUSPOS <=  TXDATAINP when (TXEN='1') else 'Z';
BUSNEG <=  TXDATAINN when (TXEN='1') else 'Z';


BUSPOS01 <=  '1' when BUSPOS='1' or BUSPOS='H' else '0';
BUSNEG01 <=  '1' when BUSNEG='1' or BUSNEG='H' else '0';

RXDATAOUTP <=  BUSPOS01 when (RXENABLE='1') else '0';
RXDATAOUTN <=  BUSNEG01 when (RXENABLE='1') else '0';

end TB;