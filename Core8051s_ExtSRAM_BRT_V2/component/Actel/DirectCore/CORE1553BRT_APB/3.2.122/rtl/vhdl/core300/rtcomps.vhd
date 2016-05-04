-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  rtcomps.vhd
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

package rtcomps is

component RT1553B 
  generic ( TESTLEGALITY : integer range 0 to 1 );
  port ( CLK        : in  std_logic;
         RSTINn     : in  std_logic;
         CLKSPD     : in  std_logic_vector(1 downto 0);
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
         
         -- Control Signals - should be tied high or low
         WRTTSW     : in  std_logic;
         WRTCMD     : in  std_logic;
         EXTMDATA   : in  std_logic;
         BCASTEN    : in  std_logic;
         SA30LOOP   : in  std_logic;
         ASYNCIF    : in  std_logic;
         TESTTXTOUT : in  std_logic;
         INTENBBR   : in  std_logic;
         
         -- Control Signals
         SREQUEST   : in  std_logic;
         RTBUSY     : in  std_logic;
         SSFLAG     : in  std_logic;
         TFLAG      : in  std_logic;
         VWORD      : in  std_logic_vector(15 downto 0);
         INTACK     : in  std_logic;
         CLRERR     : in  std_logic;
         
         -- Status Signals
         BUSY       : out std_logic;
         MSGSTART   : out std_logic;
         CMDSYNC    : out std_logic;
         SYNCNOW    : out std_logic;
         BUSRESET   : out std_logic;
         INTOUT     : out std_logic;
         INTVECT    : out std_logic_vector(6 downto 0);
         MEMFAIL    : out std_logic;
         
         -- Command Legalization Interface
         USEXTOK    : in  std_logic;
         ADDRLAT    : out std_logic;
         INTLAT     : out std_logic;
         CMDVAL     : out std_logic_vector(11 downto 0);
         CMDOK      : in  std_logic;
         CMDOKOUT   : out std_logic;
         CMDSTB     : out std_logic;
         
         -- Backend Memory interface
         MEMREQn    : out std_logic;
         MEMGNTn    : in  std_logic;
         MEMWRn     : out std_logic;
         MEMRDn     : out std_logic;
         MEMCSn     : out std_logic;
         MEMWAITn   : in  std_logic;
         MEMCEN     : out std_logic;
         MEMDEN     : out std_logic;
         MEMADDR    : out std_logic_vector(10 downto 0);
         MEMOPER    : out std_logic_vector( 1 downto 0);
         MEMDOUT    : out std_logic_vector(15 downto 0);
         MEMDIN     : in  std_logic_vector(15 downto 0);
         
         -- FSM Failure Output
         FSM_ERROR  : out std_logic
        );
end component;


component ENCODER 
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
end component;

component DECODER 
  port ( CLK       : in  std_logic;
         RSTn      : in  std_logic;
         CLKSPD    : in  std_logic_vector(1 downto 0);
         DATAINP   : in  std_logic;
         DATAINN   : in  std_logic;
         TXENABLE  : in  std_logic;
         FROMUS    : out std_logic;
         STROBE    : out std_logic;
         DATAOUT   : out std_logic_vector(15 downto 0);
         CMDSTAT   : out std_logic;
         GOTSYNC   : out std_logic;
         PARERR    : out std_logic;
         MANERR    : out std_logic;
         ACTIVE    : out std_logic;
         CONTIG    : out std_logic
      );
end component;

component BACKEND  
  port ( CLK       : in  std_logic;
         RSTn      : in  std_logic;
         CLKSPD    : in  std_logic_vector(1 downto 0);
         ASYNCIF   : in  std_logic;
         BEND10US  : in  std_logic;
                 
         -- Interface from the RT logic
         BENDREQ   : in  std_logic;
         BENDWRT   : in  std_logic;
         BENDBUSY  : out std_logic;
         BENDFAIL  : out std_logic;
         BENDADDR  : in  std_logic_vector(10 downto 0);
         BENDOPER  : in  std_logic_vector( 1 downto 0);
         BENDDOUT  : in  std_logic_vector(15 downto 0);
         BENDDIN   : out std_logic_vector(15 downto 0);
         
         -- Backend Memory interface
         MEMREQn   : out std_logic;
         MEMGNTn   : in  std_logic;
         MEMWRn    : out std_logic;
         MEMRDn    : out std_logic;
         MEMCSn    : out std_logic;
         MEMWAITn  : in  std_logic;
         MEMCEN    : out std_logic;
         MEMDEN    : out std_logic;
         MEMADDR   : out std_logic_vector(10 downto 0);
         MEMOPER   : out std_logic_vector( 1 downto 0);
         MEMDOUT   : out std_logic_vector(15 downto 0);
         MEMDIN    : in  std_logic_vector(15 downto 0);
         FSM_ERROR : out std_logic
       );
end component;


component CWLEGALITY 
  generic ( TESTLEGALITY : integer range 0 to 1 );
  port ( CWVAL   : in  std_logic_vector(11 downto 0);
         CMDOKAY : out std_logic 
        );
end component;



end rtcomps;