-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  components.vhd
--     
-- Description: 1553B RT Testbench
--              Package giving top level declarations  
--
-- Rev: 1.0  01Jul02 IPB  : Initial Code  
-- Rev: 1.1  09Jul02 IPB  : First Cut EAP
-- Rev: 1.2  01Aug02 IPB  : Second EAP 
-- Rev: 2.0  22Aug02 IPB  : Production 
-- Rev: 2.1  01Feb03 IPB  : Corrected MSGSTART issue 
-- Rev: 2.2  24Jan05 IPB  : Added support for 20 & 24MHz Operation 
-- Rev: 3.0  01Aug05 IPB  : All state machines made safe 
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
use IEEE.std_logic_arith.all;

package components is

component CORE1553BRT_APB is
  generic ( FAMILY       : integer range 0  to 21;  
            CLKSPD       : integer range 12 to 24; 
            CLKSYNC      : integer range 0 to 1;
            LOCKRT       : integer range 0 to 1; 
            BCASTEN      : integer range 0 to 1;
            LEGMODE      : integer range 0 to 3;  
            SA30LOOP     : integer range 0 to 1;
            INTENBBR     : integer range 0 to 1; 
            TESTTXTOUTEN : integer range 0 to 1;
            INT_POLARITY : integer range 0 to 1 
         );
  port ( CLK        : in  std_logic;
         RSTINn     : in  std_logic;
         
         -- APB Slave Interface
         PCLK       : in  std_logic;
         PRESETN    : in  std_logic;
         PSEL       : in  std_logic;
         PENABLE    : in  std_logic;
         PWRITE     : in  std_logic;
         PADDR      : in  std_logic_vector(12 downto 0);
         PWDATA     : in  std_logic_vector(15 downto 0);
         PRDATA     : out std_logic_vector(15 downto 0);
         INTERRUPT  : out std_logic;
         
         -- 1553B Interface
         RTADDR     : in  std_logic_vector(4 downto 0);
         RTADDRP    : in  std_logic;
         RTADERR    : out std_logic;
         BUSAINEN   : out std_logic;
         BUSAINP    : in  std_logic;
         BUSAINN    : in  std_logic;
         BUSBINEN   : out std_logic;
         BUSBINP    : in  std_logic;
         BUSBINN    : in  std_logic;
         BUSAOUTIN  : out std_logic;
         BUSAOUTP   : out std_logic;
         BUSAOUTN   : out std_logic;
         BUSBOUTIN  : out std_logic;
         BUSBOUTP   : out std_logic;
         BUSBOUTN   : out std_logic;
   
         -- Command Legalization Interface
         CMDVAL     : out std_logic_vector(11 downto 0); 
         CMDOK      : in  std_logic;  
         CMDSTB     : out std_logic;  
           
         -- Miscellanous
         BUSY       : out std_logic;
         SYNCNOW    : out std_logic;
         BUSRESET   : out std_logic;
         FSM_ERROR  : out std_logic
        );
end component;

end components;