-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  RT1553B.vhd
--     
-- Description: 1553B RT
--              Top Level  
--
-- Rev: 1.0  01Jul02 IPB  : Initial Code  
-- Rev: 1.1  09Jul02 IPB  : First Cut EAP
-- Rev: 1.2  01Aug02 IPB  : Second EAP 
-- Rev: 2.0  22Aug02 IPB  : Production 
-- Rev: 2.1  01Feb03 IPB  : Corrected MSGSTART issue 
-- Rev: 2.2  24Jan05 IPB  : Added support for 20 & 24MHz Operation 
-- Rev: 2.21 01Jul05 IPB  : SAR47719 Fixed RTBUSY issue 
-- Rev: 3.0  01Aug05 IPB  : All state machines made safe 
-- Rev: 3.1  01Mar05 IPB  : CoreConsole Release, new top level wrapper
-- Rev: 3.2  15Jan09 IPB  : Fixed WRTCMD Issue SAR 13628
--
--
--
-- SVN Revision Information:
-- SVN $Revision: 7022 $
-- SVN $Date: 2009-02-27 03:49:18 -0800 (Fri, 27 Feb 2009) $
--
-- Notes:
--  1) It is highly recommended that the TEXTTXTOUT is tied to logic 0
--     in the user design
--
-- *********************************************************************/ 
-- Changes
-- 2.1  17Dec02 Added MSGSTART port and made CMDSYNC behave as per the datasheet
--              Added CMDOKOUT port
--              Loopback tests now check SYNC value as well
-- 2.2  01Apr04 Moved CLKSPD to a input port rather than Generic and added 12/24MHz Support
--              Fixed SAR  34405  to prevent erronous SYNCOUT pulses
--              Added CMDSTB output indicating CMDVAL has changed SAR 34555
-- 2.21 01Jul05 SAR47719 Fixed RTBUSY issue
-- 3.0  01Aug05 Updated Core to create safe state machines
--              SAR46234 Loopback failure detection issue
-- 3.1  01Mar05 version number updated
--              TESTLEGALITY generic pulled to top level
-- 3.2  15Jan09 Corrected WRTCMD issue SAR 13628
--              version number updated
--      27Feb09 Corrected RTRT additional DW issue SAR14645
--
-- *********************************************************************/ 
-- *********************************************************************/ 
-- Known Problems 
--
--
-- *********************************************************************/ 
-- *********************************************************************/ 


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.rtcomps.all;


entity RT1553B is
  generic ( TESTLEGALITY : integer range 0 to 1:=0 );
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
end RT1553B;

architecture RTL of RT1553B is

--------------------------------------------------------------------
-- Some Constants that effect the core
--

-- This sets the version number in the BIT Word
-- constant VERSION : std_logic_vector(4 downto 0) := "00001";  -- 2.0 
-- constant VERSION : std_logic_vector(4 downto 0) := "00010";  -- 2.1 
-- constant VERSION : std_logic_vector(4 downto 0) := "00011";  -- 2.12 
-- constant VERSION : std_logic_vector(4 downto 0) := "00100";  -- 2.2 
-- constant VERSION : std_logic_vector(4 downto 0) := "00101";  -- 2.21 
-- constant VERSION : std_logic_vector(4 downto 0) := "01000";  -- 3.0   Space Version 
-- constant VERSION : std_logic_vector(4 downto 0) := "01001";  -- 3.1   CC Release 
   constant VERSION : std_logic_vector(4 downto 0) := "01010";  -- 3.2   3.2 Release 

--------------------------------------------------------------------



function to_logic( x: BOOLEAN) return std_logic is
 variable y : std_logic;
 begin
  if x then y:='1';
       else y:='0';
  end if;
  return(y);
end to_logic;

--Encoder Signals
signal  BUSOUT         : std_logic;
signal  BUSA_INUSE     : std_logic;
signal  BUSB_INUSE     : std_logic;
signal  BUSA_TXENABLE  : std_logic;
signal  BUSB_TXENABLE  : std_logic;
signal  TXT_DATAIN     : std_logic_vector(15 downto 0);
signal  TXT_STROBE     : std_logic;
signal  TXT_ABORT      : std_logic;
signal  TXT_CMDSTAT    : std_logic;
signal  TXT_TXREADY    : std_logic;
signal  TXT_TXBUSY     : std_logic;
signal  TXT_ERROR      : std_logic;
signal  TXT_ENABLE     : std_logic;
signal  MCSHUTDOWNA    : std_logic;
signal  MCSHUTDOWNB    : std_logic;
signal  SHUTDOWNA      : std_logic;
signal  SHUTDOWNB      : std_logic;
signal  LOOPFAILA      : std_logic;
signal  LOOPFAILB      : std_logic;
signal  ENC_READY      : std_logic;
signal  ENC_BUSY       : std_logic;
  
-- Decoder Signals
signal  DECA_FROMUS    : std_logic;
signal  DECA_STROBE    : std_logic;
signal  DECA_DATAOUT   : std_logic_vector(15 downto 0);
signal  DECA_CMDSTAT   : std_logic;
signal  DECA_GOTSYNC   : std_logic;
signal  DECA_PARERR    : std_logic;
signal  DECA_MANERR    : std_logic;
signal  DECA_ACTIVE    : std_logic;
signal  DECA_CONTIG    : std_logic;
signal  DECA_ERROR     : std_logic;
signal  DECB_FROMUS    : std_logic;
signal  DECB_STROBE    : std_logic;
signal  DECB_DATAOUT   : std_logic_vector(15 downto 0);
signal  DECB_CMDSTAT   : std_logic;
signal  DECB_GOTSYNC   : std_logic;
signal  DECB_PARERR    : std_logic;
signal  DECB_MANERR    : std_logic;
signal  DECB_ACTIVE    : std_logic;
signal  DECB_CONTIG    : std_logic;
signal  DECB_ERROR     : std_logic;
                    
-- Bus Selection and Multiplexing Signals
signal  BUSSEL         : std_logic;
signal  DEC_STROBE     : std_logic;
signal  DEC_STBDEL1    : std_logic;
signal  DEC_DATAOUT    : std_logic_vector(15 downto 0);
signal  DEC_CMDSTAT    : std_logic;
signal  DEC_GOTSYNC    : std_logic;
signal  DEC_PARERR     : std_logic;
signal  DEC_MANERR     : std_logic;
signal  DEC_ACTIVE     : std_logic;
signal  DEC_CONTIG     : std_logic;
signal  DATASYNC       : std_logic;
  
-- Timer Signals  
signal  TIMERRTRT      : std_logic_vector(10 downto 0);
signal  TIMER57US      : std_logic;            
signal  HWTIMVALUE     : std_logic_vector(6 downto 0);
signal  RTTIMVALUE     : std_logic_vector(6 downto 0);

-- Command Word Signals
signal  RTADERROR      : std_logic;
signal  CW_STBME       : std_logic;
signal  PENDING        : std_logic;
signal  STARTMSG       : std_logic;
signal  CW_RTADDR      : std_logic_vector(4 downto 0);
signal  CW_TX          : std_logic;
signal  CW_SUBADR      : std_logic_vector(4 downto 0);
signal  CW_MCWC        : std_logic_vector(4 downto 0);
signal  CW_COUNT       : std_logic_vector(4 downto 0);
signal  CW_BCAST       : std_logic;
signal  CW_MCODE       : std_logic;
signal  CW_DATA        : std_logic;
signal  SW_STBOK       : std_logic;
signal  DW_STBOK       : std_logic;
signal  BURST          : std_logic;
signal  RTRT           : std_logic;
signal  RTRTDEL        : std_logic;  --SAR14645
signal  RTRTOK         : std_logic;
signal  RTRTTXADDR     : std_logic_vector(4 downto 0);
 
-- Status Word Signals
signal  LATCHSW        : std_logic;
signal  SW_MSGERR      : std_logic;
signal  SW_INSTRU      : std_logic;
signal  SW_SERVREQ     : std_logic;
signal  SW_SSFLAG      : std_logic;
signal  SW_BUSY        : std_logic;
signal  SW_DYNBUS      : std_logic;
signal  SW_TFLAG       : std_logic;
signal  STATUS         : std_logic_vector(15 downto 0);
signal  MSGOKAY        : std_logic;
signal  MSGSTATUS      : std_logic_vector(15 downto 0);
signal  BITS40         : std_logic_vector(4 downto 0);
signal  RTBUSYREG      : std_logic;

-- RT Data word transfers signals
-- Hard encoded for safe state machines
constant IDLE    : bit_vector(3 downto 0) := "0000";
constant INIT    : bit_vector(3 downto 0) := "0001";
constant WCMD1   : bit_vector(3 downto 0) := "0010";
constant READ1   : bit_vector(3 downto 0) := "0011";
constant READ2   : bit_vector(3 downto 0) := "0100";
constant READ3   : bit_vector(3 downto 0) := "0101";
constant WRITE0  : bit_vector(3 downto 0) := "0110";
constant WRITE1  : bit_vector(3 downto 0) := "0111";
constant TXMCODE : bit_vector(3 downto 0) := "1000";
constant TXSTAT  : bit_vector(3 downto 0) := "1001";
constant STATRX  : bit_vector(3 downto 0) := "1010";
constant MSGSTAT : bit_vector(3 downto 0) := "1011";
constant ALLDONE : bit_vector(3 downto 0) := "1100";
constant UNUSED0 : bit_vector(3 downto 0) := "1101";
constant UNUSED1 : bit_vector(3 downto 0) := "1110";
constant UNUSED2 : bit_vector(3 downto 0) := "1111";

signal  DSTATE          : bit_vector(3 downto 0);
signal  MADDR           : std_logic_vector(4 downto 0);
signal  DATCNT          : std_logic_vector(4 downto 0);
signal  ENC_STB         : std_logic;
signal  WCNTERR         : std_logic;
signal  DBUSY           : std_logic;    
signal  CMDDONE         : std_logic;    
signal  GOTSW           : std_logic;            
signal  HOLDCW          : std_logic;        
signal  xINTLAT         : std_logic;        

-- Mode Code Signals
signal  CMDOKAY         : std_logic;
signal  CMDVALINT       : std_logic_vector(11 downto 0); 
signal  CMDOKAYINT      : std_logic; 
signal  LASTSW          : std_logic; 
signal  MASKTFLAG       : std_logic;
signal  DORESET         : std_logic;
signal  LastCommandWord : std_logic_vector(15 downto 0);
signal  LastStatusWord  : std_logic_vector(15 downto 0);
signal  BITWord         : std_logic_vector(15 downto 0);
signal  VectorWord      : std_logic_vector(15 downto 0);
signal  MODEDATA        : std_logic_vector(15 downto 0);
signal  MCDMUX          : std_logic_vector(1 downto 0);
signal  TSW_MANERR      : std_logic;
signal  TSW_PARERR      : std_logic;
signal  TSW_MEMFAIL     : std_logic;
signal  BIT_LOOPFAILB   : std_logic; 
signal  BIT_LOOPFAILA   : std_logic; 
signal  BIT_WCNTERR     : std_logic;
signal  BIT_MANERR      : std_logic;
signal  BIT_PARERR      : std_logic;
signal  BIT_RT2RTTOUT   : std_logic;
signal  BIT_MEMFAIL     : std_logic;
   
-- Backend Signals

signal  BENDREQ         : std_logic;
signal  BENDWRT         : std_logic;
signal  BENDBUSY        : std_logic;
signal  BENDADDR        : std_logic_vector(10 downto 0);
signal  BENDOPER        : std_logic_vector( 1 downto 0);
signal  BENDDIN         : std_logic_vector(15 downto 0);
signal  BENDDOUT        : std_logic_vector(15 downto 0);
signal  BENDFAIL        : std_logic;
signal  BEND10US        : std_logic;

-- FSM Failure Signals
signal  FSMD_ERROR      : std_logic;
signal  FSMM_ERROR      : std_logic;
signal  FSME_ERROR      : std_logic;

-- Misc Signals
signal  RSTn            : std_logic; 
signal  RSTREG          : std_logic; 
signal  Logic0          : std_logic; 
signal  Logic1          : std_logic; 
 

attribute syn_preserve   : boolean;
attribute syn_replicate  : boolean;
attribute syn_encoding   : string;
attribute syn_preserve  of DSTATE : signal is true;
attribute syn_encoding  of DSTATE : signal is "orginal";
attribute syn_replicate of DSTATE : signal is false;

-- These are for PA3, please contact Actel tech support for advice here
-- prevents RST/EN registers being replaced with two tile versions
-- synplicity attributes in 7.70 do not prevent replication of the OR gate function
-- attribute syn_replicate : boolean;
-- attribute syn_keep : boolean;
-- attribute syn_replicate of RSTn : signal is false;
-- attribute syn_keep of RSTn : signal is true;
-- signal RSTXXX : std_logic;
-- component CLKINT port  ( A: in std_logic; Y : out std_logic); end component;

begin
       
--------------------------------------------------------------------
-- Misc

Logic0 <= '0';
Logic1 <= '1';   

-- Force a reset if the RESET mode code is received;   
-- This register must be reset at power up

PRST:
process(CLK,RSTINn)
 begin
  if RSTINn='0' then
    RSTREG <= '0';
  elsif CLK'event and CLK='1' then
    RSTREG <= DORESET and CMDDONE;
  end if;
end process;

      
BUSRESET  <= RSTREG;
       
RSTn      <= not ( not RSTINn or RSTREG);     

-- FOR PA3
--RSTXXX  <= not ( not RSTINn or RSTREG);     
--UPAD : CLKINT port map ( A => RSTXXX , Y => RSTn );

       
--------------------------------------------------------------------
-- 1553B Bus Interface - Encoder
-- Just one encoder required, bus shutdown achieved by gating outputs


BUSAENC: ENCODER 
  port map ( CLK        => CLK,                 
             RSTn       => RSTn,                
             CLKSPD     => CLKSPD,
             STROBE     => TXT_STROBE,
             ABORTX     => TXT_ABORT,          
             DATAIN     => TXT_DATAIN,          
             CMDSTAT    => TXT_CMDSTAT,         
             TXREADY    => TXT_TXREADY,         
             TXBUSY     => TXT_TXBUSY,
             TXENABLE   => TXT_ENABLE,          
             DOUT       => BUSOUT,              
             TXENA      => BUSA_TXENABLE,                     
             RXSTROBEA  => DECA_STROBE,          
             RXERRORA   => DECA_ERROR,      
             RXDATAA    => DECA_DATAOUT,         
             RXDATAAS   => DECA_CMDSTAT,         
             TXENB      => BUSB_TXENABLE,                     
             RXSTROBEB  => DECB_STROBE, 
             RXERRORB   => DECB_ERROR,      
             RXDATAB    => DECB_DATAOUT,         
             RXDATABS   => DECB_CMDSTAT,         
             CLRERRORS  => CMDDONE,           
             LOOPFAILA  => LOOPFAILA,             
             LOOPFAILB  => LOOPFAILB,
             FSM_ERROR  => FSME_ERROR             
            );                                  
                                                
ENC_READY  <= TXT_TXREADY;                    
ENC_BUSY   <= TXT_TXBUSY;       

BUSA_INUSE <= not MCSHUTDOWNA and not SHUTDOWNA and not BUSSEL;
BUSB_INUSE <= not MCSHUTDOWNB and not SHUTDOWNB and BUSSEL;

BUSA_TXENABLE <= BUSA_INUSE and TXT_ENABLE;
BUSB_TXENABLE <= BUSB_INUSE and TXT_ENABLE;


-- Generate all the output signals
PTXT:
process(CLK,RSTn)
 begin
  if RSTn='0' then
    BUSAOUTIN <= '1';
    BUSAOUTP  <= '1';
    BUSAOUTN  <= '1';
    BUSBOUTIN <= '1';
    BUSBOUTP  <= '1';
    BUSBOUTN  <= '1';
  elsif CLK'event and CLK='1' then
    BUSAOUTIN <= SHUTDOWNA;
    BUSAOUTP  <= BUSOUT     or not BUSA_TXENABLE;
    BUSAOUTN  <= not BUSOUT or not BUSA_TXENABLE;
    BUSBOUTIN <= SHUTDOWNB;
    BUSBOUTP  <= BUSOUT     or not BUSB_TXENABLE;
    BUSBOUTN  <= not BUSOUT or not BUSB_TXENABLE;
  end if;
end process;


-- Transmitter Hardware Timeout
-- This is a separate timer, it should never trigger !

-- Transmitter Hardware Timeout
-- This is a separate timer, it should never trigger !
-- = ROUND(0.5+(688*FREQ/256),0)
-- at 12MHz set at 33 * 256 = 8448  = 704us 
-- at 16MHz set at 43 * 256 = 11264 = 688us
-- at 20MHz set at 54 * 256 = 13824 = 691 us
-- at 24MHz set at 65 * 256 = 16640 = 693us

process(CLKSPD)
 begin
   case CLKSPD is
     when "00"   => HWTIMVALUE <= "0100001"; -- 12MHz      
     when "01"   => HWTIMVALUE <= "0101011"; -- 16MHz      
     when "10"   => HWTIMVALUE <= "0110110"; -- 20MHz      
     when others => HWTIMVALUE <= "1000001"; -- 24MHz      
   end case;
end process;


PTXTTIM:  
process(CLK,RSTn)
 variable TXT_TIMER : std_logic_vector(14 downto 0);
 begin
   if RSTn='0' then
     TXT_TIMER := ( others => '0');
     TXT_ERROR <= '0';
   elsif CLK'event and CLK='1' then
     TXT_ERROR <= '0';
     if TXT_ENABLE='1' then
       TXT_TIMER := TXT_TIMER + 1;
     else
       TXT_TIMER := ( others => '0');
     end if; 
     if TXT_TIMER(14 downto 8) = HWTIMVALUE then  
       TXT_ERROR <= '1';
     end if;
   end if;
end process;


-- Handle the Transmitter Shutdown 
-- BUSA

PTOA:  
process(CLK,RSTn)
 begin
   if RSTn='0' then
     SHUTDOWNA <= '0';
   elsif CLK'event and CLK='1' then
     if (TXT_ERROR='1' and BUSA_TXENABLE='1') then        -- Transmission to long
       SHUTDOWNA <= '1';
     end if;
     if  (STARTMSG='1' and BUSSEL='0') then               -- valid command so clear
       SHUTDOWNA <= '0';
     end if; 
   end if;
end process;

-- Handle the Transmitter Shutdown 
-- BUSB

PTOB:  
process(CLK,RSTn)
 begin
   if RSTn='0' then
     SHUTDOWNB <= '0';
   elsif CLK'event and CLK='1' then
     if (TXT_ERROR='1' and BUSB_TXENABLE='1') then         -- Transmission to long
       SHUTDOWNB <= '1';
     end if;
     if  (STARTMSG='1' and BUSSEL='1') then                -- valid command so clear
       SHUTDOWNB <= '0';
     end if; 
   end if;
end process;


--------------------------------------------------------------------
-- 1553B Bus Interface - Decoders
--   
                             
BUSAINEN <= '1';


BUSADEC: DECODER 
  port map ( CLK       => CLK,                 
             RSTn      => RSTn,                
             CLKSPD    => CLKSPD,
             DATAINP   => BUSAINP,             
             DATAINN   => BUSAINN,
             FROMUS    => DECA_FROMUS,
             TXENABLE  => BUSA_TXENABLE,
             STROBE    => DECA_STROBE,         
             DATAOUT   => DECA_DATAOUT,        
             CMDSTAT   => DECA_CMDSTAT,        
             GOTSYNC   => DECA_GOTSYNC,        
             PARERR    => DECA_PARERR,         
             MANERR    => DECA_MANERR,         
             ACTIVE    => DECA_ACTIVE,         
             CONTIG    => DECA_CONTIG         
            );                                

BUSBINEN <= '1';

BUSBDEC: DECODER 
  port map ( CLK       => CLK,    
             RSTn      => RSTn,   
             CLKSPD    => CLKSPD,
             DATAINP   => BUSBINP,
             DATAINN   => BUSBINN,
             FROMUS    => DECB_FROMUS,
             TXENABLE  => BUSB_TXENABLE,
             STROBE    => DECB_STROBE,
             DATAOUT   => DECB_DATAOUT,
             CMDSTAT   => DECB_CMDSTAT,
             GOTSYNC   => DECB_GOTSYNC, 
             PARERR    => DECB_PARERR,   
             MANERR    => DECB_MANERR, 
             ACTIVE    => DECB_ACTIVE,
             CONTIG    => DECB_CONTIG 
            );

--------------------------------------------------------------------
-- 1553B Bus Interface - RX Bus Selection 
--

DEC_STROBE   <= DECA_STROBE   when (BUSSEL='0') else DECB_STROBE ;
DEC_DATAOUT  <= DECA_DATAOUT  when (BUSSEL='0') else DECB_DATAOUT;
DEC_CMDSTAT  <= DECA_CMDSTAT  when (BUSSEL='0') else DECB_CMDSTAT;
DEC_PARERR   <= DECA_PARERR   when (BUSSEL='0') else DECB_PARERR ;
DEC_MANERR   <= DECA_MANERR   when (BUSSEL='0') else DECB_MANERR ;
DEC_CONTIG   <= DECA_CONTIG   when (BUSSEL='0') else DECB_CONTIG ;
DEC_ACTIVE   <= DECA_ACTIVE   when (BUSSEL='0') else DECB_ACTIVE ;
DEC_GOTSYNC  <= DECA_GOTSYNC  when (BUSSEL='0') else DECB_GOTSYNC;


DATASYNC  <= DEC_GOTSYNC and not DEC_CMDSTAT; 
   
BURST  <= DEC_CONTIG;
   
DECA_ERROR <= DECA_PARERR or DECA_MANERR;
DECB_ERROR <= DECB_PARERR or DECB_MANERR;

--------------------------------------------------------------------
-- Command Word Decode For us
-- We actually need to decode Command Words from Both Decoders so
-- we know whether a command arrives on the reduntant bus

-- This controls the RX Bus selection Logic as well
-- Notice 2 indicates that we need to check that the RX RT on 
-- RTRT should check both command words for legality, this is done here

PCWD:
process(CLK,RSTn)
variable RTPAROK    : std_logic;
variable CWOKA      : std_logic;
variable CWOKB      : std_logic;
variable CW_SECOND  : std_logic;
variable MYADDRA    : std_logic;
variable MYADDRB    : std_logic;
variable BCASTADDRA : std_logic;
variable BCASTADDRB : std_logic;
variable SYNCS      : std_logic_vector(1 downto 0);
begin
 if RSTn='0' then
    CW_STBME      <= '0';
    BUSSEL        <= '0';    -- default bus
    RTRT          <= '0';
    RTRTOK        <= '0';
    RTRTTXADDR    <= "00000";
    RTADERROR     <= '0';
    DEC_STBDEL1   <= '0';
    DW_STBOK      <= '0';
    SW_STBOK      <= '0';
 elsif CLK'event and CLK='1' then
    DEC_STBDEL1 <= DEC_STROBE;
    DW_STBOK    <= DEC_STROBE and not DEC_CMDSTAT and not DEC_MANERR and not DEC_PARERR and BURST;
    SW_STBOK    <= DEC_STROBE and     DEC_CMDSTAT and not DEC_MANERR and not DEC_PARERR;
    
    RTPAROK    := RTADDRP xor RTADDR(4) xor RTADDR(3) xor RTADDR(2) xor RTADDR(1) xor RTADDR(0);
    RTADERROR  <= not RTPAROK or to_logic(RTADDR="11111");
    BCASTADDRA := to_logic(DECA_DATAOUT(15 downto 11)="11111") and BCASTEN;
    BCASTADDRB := to_logic(DECB_DATAOUT(15 downto 11)="11111") and BCASTEN;
    MYADDRA    := to_logic(DECA_DATAOUT(15 downto 11)=RTADDR) or BCASTADDRA;
    MYADDRB    := to_logic(DECB_DATAOUT(15 downto 11)=RTADDR) or BCASTADDRB;
   
    CWOKA := DECA_STROBE and DECA_CMDSTAT and not DECA_FROMUS 
              and not DECA_PARERR and not DECA_MANERR and not MCSHUTDOWNA;
    CWOKB := DECB_STROBE and DECB_CMDSTAT and not DECB_FROMUS 
               and not DECB_PARERR and not DECB_MANERR and not MCSHUTDOWNB;
    CW_SECOND := BURST and ((CWOKA and not BUSSEL) or (CWOKB and BUSSEL));
      
    CW_STBME  <= not RTADERROR and ((MYADDRA and CWOKA) or (MYADDRB and CWOKB));
  
    -- Switch the Buses when a Valid Command Received for me                                  
    SYNCS(1) := MYADDRB and CWOKB;
    SYNCS(0) := MYADDRA and CWOKA;
    case SYNCS is
      when "01"   => BUSSEL <= '0';  --Bus A
      when "10"   => BUSSEL <= '1';  --Bus B
      when others =>
    end case;
      
    -- Check for RTRT to RT Transmitting RTRT does not need to know its RTRT
    --  RXCW TXCW .... TXSW DW DW DW .. RXSW
    if CW_STBME='1' and BURST='0' then       -- RX RT First CW
      RTRT   <= '0';
      RTRTOK <= not DEC_DATAOUT(10);         -- should be a RX Command
    elsif CW_SECOND='1' and DBUSY='1' then   -- Second command word and we are active 
      if RTRT='0' then
        RTRT       <= '1';
        RTRTOK     <= RTRTOK and DEC_DATAOUT(10) and not to_logic(DEC_DATAOUT(15 downto 11)="11111");
        RTRTTXADDR <= DEC_DATAOUT(15 downto 11);
      else -- third command word !
        RTRTOK     <= '0';
      end if;
    end if;
  end if;
end process;


TXT_ABORT  <= CW_STBME;    -- Abort the encoder, may be operational on the other bus

RTADERR <= RTADERROR;

--------------------------------------------------------------------
-- Command Word Register & Decode
--

PCW:
process(CLK,RSTn)
 begin
  if RSTn='0' then
    CW_RTADDR  <= "00000";
    CW_TX      <= '0'; 
    CW_SUBADR  <= "00000";
    CW_MCWC    <= "00000";
    CW_COUNT   <= "00000";
    CW_BCAST   <= '0';
    CW_MCODE   <= '0';
    STARTMSG   <= '0';
    PENDING    <= '0';
    CMDSTB     <= '0';
  elsif CLK'event and CLK='1' then
    CMDSTB    <= '0';
    STARTMSG  <= '0';
    if CW_STBME='1' then    
      PENDING   <= '1';
      CMDSTB    <= '1';
      CW_RTADDR <= DEC_DATAOUT(15 downto 11);
      CW_TX     <= DEC_DATAOUT(10);
      CW_SUBADR <= DEC_DATAOUT(9 downto 5);
      CW_MCWC   <= DEC_DATAOUT(4 downto 0);
      CW_BCAST  <= to_logic(DEC_DATAOUT(15 downto 11)="11111") and BCASTEN;
      if (DEC_DATAOUT(9 downto 5)="00000") or (DEC_DATAOUT(9 downto 5)="11111") then
        CW_MCODE  <= '1';
        CW_COUNT  <= "0000" & DEC_DATAOUT(4);
      else
        CW_MCODE  <= '0';
        CW_COUNT  <= DEC_DATAOUT(4 downto 0);
      end if;
    end if;
    if PENDING='1' and (DEC_ACTIVE='0' or DEC_GOTSYNC='1') then 
      STARTMSG  <= '1';
      PENDING   <= '0';
    end if;
  end if;                    
end process;


CW_DATA  <= not CW_MCODE;

--------------------------------------------------------------------
-- Command Legallity Block
--

CMDVALINT <= CW_BCAST & CW_TX & CW_SUBADR & CW_MCWC;

-- Internal Command Word checker

ULEGAL : CWLEGALITY  
 generic map  ( TESTLEGALITY => TESTLEGALITY )
 port map (   CWVAL   => CMDVALINT,
              CMDOKAY => CMDOKAYINT
           );


-- External Command Word checker and register enable signals for external
-- Address and Interrupt latchs
    
CMDVAL  <= CMDVALINT;
ADDRLAT <= BENDREQ;
INTLAT  <= xINTLAT;
      
        
-- Select Internal or External Checker, also latch the input signal as we
-- start processing the message

PCMDOK:
process(CLK,RSTn)
 begin
  if RSTn='0' then
    CMDOKAY <= '0';
  elsif CLK'event and CLK='1' then
    if USEXTOK='1' then
      CMDOKAY <= CMDOK;
    else
      CMDOKAY <= CMDOKAYINT;
    end if;
  end if;
end process;

CMDOKOUT <= CMDOKAY;

--------------------------------------------------------------------
-- Mode Code Operations
--  This Peforms the command word operations

VectorWord <= VWORD;

PMCODE:
process(CLK,RSTn)
variable MUXSEL : std_logic_vector(5 downto 0);
variable WRITE  : std_logic;
 begin
  if RSTn='0' then
    SYNCNOW      <= '0';
    LASTSW       <= '0';
    MASKTFLAG    <= '0';
    DORESET      <= '0';
    MCDMUX       <= "00";
    MCSHUTDOWNA  <= '0';
    MCSHUTDOWNB  <= '0';
  elsif CLK'event and CLK='1' then
    SYNCNOW      <= '0';
    LASTSW       <= '0';
    DORESET      <= '0';
    MCDMUX       <= "00";
    MUXSEL       := CW_TX & CW_SUBADR;
    MUXSEL       := CW_TX & CW_MCWC;
    WRITE        := STARTMSG and CMDOKAY; 
    if ( CW_MCODE='1') then
       case MUXSEL is
         when "100001" =>  SYNCNOW  <= WRITE;                                 --Synchronise
         when "100010" =>  LASTSW   <= CMDOKAY;                               --Transmit Status Word
         when "100100" =>  if WRITE='1' and BUSSEL='1' then                   --Transmitter ShutDown
                             MCSHUTDOWNA <= '1';
                           end if;
                           if WRITE='1' and BUSSEL='0' then                  
                             MCSHUTDOWNB <= '1';
                           end if;
         when "100101" =>  if WRITE='1' and BUSSEL='1' then                   --Override Transmitter Shutdown
                             MCSHUTDOWNA <= '0';
                           end if;
                           if WRITE='1' and BUSSEL='0' then                       
                             MCSHUTDOWNB <= '0';
                           end if;
         when "100110" =>  if WRITE='1' then
                             MASKTFLAG  <= '1';                               --Inhibit terminal flag
                           end if;
         when "100111" =>  if WRITE='1' then                                  --Override inhibit terminal flag
                             MASKTFLAG  <= '0';
                           end if;
         when "101000" =>  DORESET     <= CMDOKAY;                            --Reset Remote Terminal
         when "110000" =>  MCDMUX      <= "01";                               --Tranmit Vector Word
         when "010001" =>  SYNCNOW     <= DW_STBOK and CMDOKAY and DBUSY;     --Synchronise with data   
         when "110010" =>  LASTSW      <= CMDOKAY;                            --Transmit last command
                           MCDMUX      <= "10";
         when "110011" =>  MCDMUX      <= "11";                               --Transmit bit word
                         
         when others   =>
       end case;
     end if;
   end if;
end process;

HOLDCW <= to_logic(MCDMUX="10");

-- Force 4-1 Mux for datapath
PMCMUX:
process(MCDMUX,VectorWord,LastCommandWord,BITWord)
 begin
   case MCDMUX is  -- synopsys infer_mux 
    when "01"   => MODEDATA <= VectorWord;
    when "10"   => MODEDATA <= LastCommandWord;
    when "11"   => MODEDATA <= BITWord;
    when others => MODEDATA <= (others => '0');
   end case;
end process;

--------------------------------------------------------------------
-- Error Control and Clearing
--

PERRLAT:
process(CLK,RSTn)
 begin
  if RSTn='0' then
    BIT_LOOPFAILB <= '0';
    BIT_LOOPFAILA <= '0';
    BIT_WCNTERR   <= '0';
    BIT_MANERR    <= '0';
    BIT_PARERR    <= '0';
    BIT_MEMFAIL   <= '0';
    TSW_MANERR    <= '0';
    TSW_PARERR    <= '0';
    TSW_MEMFAIL   <= '0';
    RTBUSYREG     <= '0';
  elsif CLK'event and CLK='1' then
    if STARTMSG='1' then        --SAR 47719
      RTBUSYREG <= '0';         -- altered priority here
    end if;
    if RTBUSY='1' then          --SAR 47719
      RTBUSYREG <= '1';         -- wont clear if RTBUSY held active !
    end if;
    if LOOPFAILB='1' then
      BIT_LOOPFAILB <= '1';
    end if;
    if LOOPFAILA='1' then
      BIT_LOOPFAILA <= '1';
    end if;
    if WCNTERR='1' then
      BIT_WCNTERR <= '1';
    end if;
    if DEC_STROBE='1' and DEC_MANERR='1' and DBUSY='1' then
      TSW_MANERR <= '1';
    end if;
    if DEC_STROBE='1' and DEC_PARERR='1' and DBUSY='1' then
      TSW_PARERR <= '1';
    end if;
    if TSW_MANERR='1' then
      BIT_MANERR <= '1';
    end if;
    if TSW_PARERR='1' then
      BIT_PARERR <= '1';
    end if;
    if BENDFAIL='1' then 
      BIT_MEMFAIL   <= '1';
      TSW_MEMFAIL   <= '1';
    end if;
    if CMDDONE='1' then
      TSW_MANERR  <= '0';
      TSW_PARERR  <= '0';
      TSW_MEMFAIL <= '0';
    end if;
    if CLRERR='1' then
      BIT_LOOPFAILB <= '0';
      BIT_LOOPFAILA <= '0';
      BIT_WCNTERR   <= '0';
      BIT_MANERR    <= '0';
      BIT_PARERR    <= '0';
      BIT_MEMFAIL   <= '0';
      TSW_MANERR    <= '0';
      TSW_PARERR    <= '0';
    end if;
  end if;
end process;

MEMFAIL <= BIT_MEMFAIL;

--------------------------------------------------------------------
-- Status Word Ceation
--

SW_MSGERR  <= not CMDOKAY or TSW_MANERR or TSW_PARERR or WCNTERR or TSW_MEMFAIL;
SW_INSTRU  <= '0';
SW_SERVREQ <= SREQUEST;
SW_BUSY    <= RTBUSYREG;
SW_DYNBUS  <= '0';
SW_TFLAG   <= not MASKTFLAG and TFLAG;
SW_SSFLAG  <= SSFLAG;

STATUS <= RTADDR & SW_MSGERR & SW_INSTRU & SW_SERVREQ & "000" & 
          CW_BCAST & SW_BUSY & SW_SSFLAG & SW_DYNBUS & SW_TFLAG;


--------------------------------------------------------------------
-- Message Status Word Creation, Written to RAM
--

MSGOKAY   <= not (TSW_MEMFAIL or TSW_MANERR or WCNTERR or TSW_PARERR 
                  or LOOPFAILB or LOOPFAILA or not CMDOKAY or (RTBUSYREG and not CW_MCODE) );
BITS40    <= CW_MCWC when CW_MCODE='1' else DATCNT;

MSGSTATUS <= '1' & MSGOKAY & BUSSEL & CW_BCAST & LOOPFAILB & LOOPFAILA 
             & not CMDOKAY & BIT_MEMFAIL & TSW_MANERR & TSW_PARERR & WCNTERR
             & BITS40;
 
--------------------------------------------------------------------
-- BIT WORD - Data for BIT Mode Code 
--

BITWord <= BUSSEL & BIT_LOOPFAILB & BIT_LOOPFAILA 
           & (MCSHUTDOWNB or SHUTDOWNB) & (MCSHUTDOWNA or SHUTDOWNA)
           & MASKTFLAG 
           & BIT_WCNTERR & BIT_MANERR & BIT_PARERR & BIT_RT2RTTOUT & BIT_MEMFAIL
           & VERSION;

--------------------------------------------------------------------
-- Last Command and Status Word Store
--  This is not RESET since we want to Preserve the last CW and SW values
--   After the reset mode code !

-- The testplan does a broadcast transmit last command word. This is illegal
-- and since it is not the transmit last command word message it expects us
-- to overwrite the last command word, so we do !

PLCSW:
process(CLK)
 begin
  if CLK'event and CLK='1' then
    if CMDDONE='1' and (HOLDCW='0' or CW_BCAST='1') then
      LastCommandWord <= CW_RTADDR & CW_TX & CW_SUBADR & CW_MCWC;
    end if;
    if LATCHSW='1' and LASTSW='0' then
      LastStatusWord <= STATUS;
    end if;
  end if;
end process;         


-- Select what data to output, handles last status word problem
-- Code forces 4:1 Mux

PDM1:
process(LASTSW,TXT_CMDSTAT,CW_MCODE,BENDDIN,MODEDATA,STATUS,LastStatusWord,
        EXTMDATA,MCDMUX)
 variable MUXSELC : std_logic_vector(2 downto 0);
 variable MUXSELD : std_logic_vector(1 downto 0);
 begin
   MUXSELC := LASTSW & TXT_CMDSTAT & CW_MCODE;
   case MUXSELC is
     when "000"  => MUXSELD := "00";
     when "001"  => MUXSELD := "01";
     when "010"  => MUXSELD := "10";
     when "011"  => MUXSELD := "10";
     when "101"  => MUXSELD := "01";
     when "111"  => MUXSELD := "11";
     when others => MUXSELD := ( others => '-');
   end case;
   if EXTMDATA='1' and MCDMUX(1)='0' and CW_MCODE='1' and TXT_CMDSTAT='0' then
     MUXSELD := "00";
   end if;
   case MUXSELD is -- synopsys infer_mux 
     when "00"   => TXT_DATAIN <= BENDDIN;
     when "01"   => TXT_DATAIN <= MODEDATA;
     when "10"   => TXT_DATAIN <= STATUS;
     when others => TXT_DATAIN <= LastStatusWord;
   end case;
end process; 


--------------------------------------------------------------------
-- Core Status Signals
--

BUSY     <= DBUSY;

CMDSYNC  <= (DECA_GOTSYNC and DECA_CMDSTAT) or (DECB_GOTSYNC and DECB_CMDSTAT);
MSGSTART <= STARTMSG;

---------------------------------------------------------------------------
-- Notice 2 implies we need a special timer to detect RTRT timeout condition
-- This is a timer that times from the RX command word received 
-- Counter starts about 250ns the mid point of parity bit

--  Notice 2 says we need to check the TX SW in the RX RT before accepting the data

-- RT address should match the stored TX RT Address, unless BCAST
--  MSGERR and BUSY bits should be zero

-- We start 0.25 later than the spec but out DATASYNC is delayed until bit 2. 
-- Thus the timer is set to 60 us

process(CLKSPD)
 begin
   case CLKSPD is           -- 60 * FREQ/16   
     when "00"   => RTTIMVALUE <= "0101101"; -- 12MHz  45    
     when "01"   => RTTIMVALUE <= "0111100"; -- 16MHz  60    
     when "10"   => RTTIMVALUE <= "1001011"; -- 20MHz  75  
     when others => RTTIMVALUE <= "1011010"; -- 24MHz  90    
   end case;
end process;

UTIMER:
process(CLK,RSTn)
 begin
  if RSTn='0' then
      TIMERRTRT <= "00000000000";
      TIMER57US <= '0';
      GOTSW     <= '0';
      RTRTDEL   <= '0';
  elsif CLK'event and CLK='1' then
    RTRTDEL <= RTRT; --SAR14645
    if DEC_ACTIVE='0' then
      GOTSW <= '0';
    elsif SW_STBOK='1' and BURST='0' and RTRT='1' and CW_STBME='0' then
      -- Got the Status Word, check if okay
      if (RTRTTXADDR=DEC_DATAOUT(15 downto 11) or (RTRTTXADDR="11111" and BCASTEN='1')) 
      and DEC_DATAOUT(10)='0' and DEC_DATAOUT(3)='0'
        then
          GOTSW <= '1';
        else
          TIMER57US <= '1'; -- bad SW force RT to abort command
        end if;
    elsif RTRTDEL='1' and GOTSW='0' and DEC_STBDEL1='1' then    -- SAR14645 detect any additional words before status received
      TIMER57US <= '1';                                         -- if occur force RT to abort command
    end if;
    
    if CW_STBME='1' or DATASYNC='1' then
      TIMERRTRT <= "00000000000";
      TIMER57US <= '0';
    else
      TIMERRTRT <= TIMERRTRT + 1;
      if TIMERRTRT(10 downto 4) = RTTIMVALUE then
        TIMER57US <= '1';
      end if;
    end if;
    
  end if;
end process;


--------------------------------------------------------------------
-- Master Protocol StateMachine
--             
             
PWC:
process(CLK,RSTn)
variable MUXSEL : std_logic_vector(2 downto 0);
 begin
  if RSTn='0' then
    DSTATE        <= IDLE;
    DATCNT        <= "00000";
    MADDR         <= "00000";
    BENDREQ       <= '0';
    TXT_CMDSTAT   <= '0'; 
    ENC_STB       <= '0';
    WCNTERR       <= '0';
    DBUSY         <= '1';
    LATCHSW       <= '0';
    CMDDONE       <= '0';
    INTOUT        <= '0';
    INTVECT       <= "0000000";
    BIT_RT2RTTOUT <= '0';
    BENDOPER      <= "00";
    xINTLAT       <= '0';
    FSMD_ERROR    <= '0';  
  elsif CLK'event and CLK='1' then
    FSMD_ERROR  <= '0';  
    ENC_STB     <= '0';
    CMDDONE     <= '0';
    LATCHSW     <= '0';
    BENDREQ     <= '0';
    BENDOPER    <= "00";
    xINTLAT     <= '0';
    if INTACK='1' then     
      INTOUT <= '0';
    end if;
    MUXSEL := CW_BCAST & CW_TX & CW_DATA;
     
    -- This Starts the Protocol State Machine, note that it can
    -- restarted by a subsequent command
    if CW_STBME='1' then  -- Second command is received need to abort operation
      DSTATE <= IDLE;
    elsif STARTMSG='1' then
      TXT_CMDSTAT <= not (CW_MCODE and not CW_MCWC(4));   -- If no data then clear
      DBUSY       <= '1';
      MADDR       <= "00000";
      DATCNT      <= "00000";
      WCNTERR     <= '0';
      DSTATE      <= INIT;   
    else
      case DSTATE is
        when IDLE =>  DBUSY    <= '0';
        when INIT  => case MUXSEL is
                        when "000"  => DSTATE  <= WRITE0;       -- RX Mode Code
                        when "010"  => DSTATE  <= TXSTAT;       -- TX Mode Code
                        when "001"  => DSTATE  <= WRITE0;       -- RX Data Transfer
                        when "011"  => DSTATE  <= TXSTAT;       -- TX Data Transfer
                        when "100"  => DSTATE  <= WRITE0;       -- Bcast RX Mode Code
                        when "110"  => DSTATE  <= WRITE0;       -- Bcast TX Mode Code  SAR 13628 
                                       LATCHSW <= '1'; 
                        when "101"  => DSTATE  <= WRITE0;       -- Bcast RX Data Transfer
                        when others => DSTATE  <= MSGSTAT;      -- Bcast TX Data Transfer Illegal!
                                       LATCHSW <= '1'; 
                      end case;
        when TXSTAT=> if DEC_STBDEL1='1' and (RTRT='0' or RTRTOK='0') then   -- if another word after TX Command then error
                        DSTATE  <= MSGSTAT;           
                        WCNTERR <= '1';
                        LATCHSW <= '1';
                      elsif DEC_ACTIVE='0' then
                        TXT_CMDSTAT <= '1';
                        ENC_STB     <= '1';
                        LATCHSW     <= '1';
                        DSTATE      <= WCMD1;
                      end if;
        when WCMD1 => if BENDBUSY='0' and BENDREQ='0' then  -- BEND may be busy completing previous word
                        BENDREQ  <= WRTCMD;                 --  if this message received on the other bus
                        BENDOPER <= "10";
                        if RTBUSYREG='1' then               -- If BUSY just we send the SW
                          DSTATE  <= MSGSTAT;
                        elsif CMDOKAY='0' then
                          DSTATE  <= MSGSTAT;
                        elsif MCDMUX(1)='1' or (CW_MCODE='1' and (EXTMDATA='0' or CW_MCWC(4)='0') ) then
                          DSTATE <= TXMCODE;                -- internal data or no data word
                        else
                          DSTATE <= READ3;
                        end if;
                      end if;
        when TXMCODE=>if ENC_READY='1' then                 -- Mode Code data from Internal register
                        TXT_CMDSTAT <= '0';
                        ENC_STB     <= CW_MCWC(4);        
                        DSTATE      <= MSGSTAT;
                      end if;
        when READ1 => TXT_CMDSTAT <= '0';
                      if BENDFAIL='1' then   
                         DSTATE  <= MSGSTAT;
                         WCNTERR <= '1';
                      elsif BENDBUSY='0' and BENDREQ='0' then
                         DSTATE <= READ2;
                      end if;
        when READ2 => if ENC_READY='1' then
                         if TESTTXTOUT='0' then             -- Inject Error Condition
                           DATCNT <= DATCNT + 1;            -- Dont increment the counter !
                         end if;
                         TXT_CMDSTAT <= '0';                -- Indicates we have done 1 word
                         ENC_STB     <= '1';
                         DSTATE      <= READ3;
                      end if;
        when READ3 => if (DATCNT=CW_COUNT and TXT_CMDSTAT='0') or RTBUSYREG='1' then       --SAR 47719     
                         DSTATE <= MSGSTAT;
                      elsif ENC_READY='1' and ENC_STB='0' and BENDBUSY='0' and BENDREQ='0' then   
                         DSTATE   <= READ1;
                         BENDREQ  <= CMDOKAY and (CW_DATA or EXTMDATA);    -- SAR 47719
                         MADDR    <= DATCNT;
                      end if;
        when WRITE0=> if BENDBUSY='0' and BENDREQ='0' then                 -- BEND may be busy completeing previous word
                        BENDREQ  <= WRTCMD;                                -- Writes the command word
                        BENDOPER <= "10";
                        if CW_BCAST='1' and CW_TX='1' and CW_MCODE='1' then -- See if EOM SAR13628
                          DSTATE <= MSGSTAT;
                        else
                          DSTATE <= WRITE1;
                        end if;
                      end if;
        when WRITE1=> if (RTRT='0' or GOTSW='1') then                      -- must have the SW for RTRT
                        if DEC_ACTIVE='0' then                             -- end of transmission
                           if DATCNT/=CW_COUNT or TXT_CMDSTAT='1' then     -- Check count CMDSTAT=1 if zero words 
                             WCNTERR <= '1';
                             DSTATE  <= MSGSTAT; 
                           else
                             WCNTERR <= '0';
                             DSTATE  <= STATRX; 
                           end if;
                           LATCHSW <= '1';                              
                        elsif DW_STBOK='1' then                          
                           BENDREQ     <= CMDOKAY and not RTBUSYREG and (CW_DATA or EXTMDATA);
                           MADDR       <= DATCNT;
                           DATCNT      <= DATCNT+1;
                           TXT_CMDSTAT <= '0';
                        elsif DEC_STBDEL1='1' then
                           DSTATE   <= MSGSTAT;                          -- Bad Transfer
                           LATCHSW  <= '1';
                           WCNTERR  <= '1';                           
                        end if;
                      end if;
                      if BENDFAIL='1' then
                         WCNTERR  <= '1'; 
                         DSTATE   <= MSGSTAT;
                         LATCHSW  <= '1';
                      end if;
                      if TIMER57US='1'  then                           -- No data received at 67us
                         BIT_RT2RTTOUT <= '1';
                         WCNTERR       <= '1'; 
                         LATCHSW       <= '1';                           
                         DSTATE        <= MSGSTAT;                     -- Send the SW
                      end if;
        when STATRX =>LATCHSW <= '1';               
                      if CW_BCAST='1'  then 
                        DSTATE  <= MSGSTAT;
                      elsif DEC_ACTIVE='0' then
                        TXT_CMDSTAT <= '1';          
                        ENC_STB     <= '1';          
                        DSTATE      <= MSGSTAT;
                      end if;
        when MSGSTAT=>if WRTTSW='1' then
                        if BENDREQ='0' and BENDBUSY='0' and ENC_BUSY='0' and ENC_STB='0' then
                          BENDREQ   <= '1';                 -- SAR46234 encoder to have checked TXT Word
                          BENDOPER  <= "01";                
                          DSTATE    <= ALLDONE;
                        end if;
                      else
                        DSTATE  <= ALLDONE;         
                      end if;
                      xINTLAT   <= MSGOKAY or INTENBBR;
        when ALLDONE=>if BENDREQ='0' and BENDBUSY='0'and ENC_BUSY='0' then 
                        DSTATE  <= IDLE;                   -- SAR46234 encoder to have checked TXT Word
                        CMDDONE <= '1';
                        if MSGOKAY='1' or INTENBBR='1' then
                          INTOUT  <= '1';
                          INTVECT <= MSGOKAY & CW_TX & CW_SUBADR;
                        end if;
                      end if;
       when others  => -- illegal state condition below, also works when STARTMSG or CW_STBME is active
      end case;
    end if;
    case DSTATE is  -- illegal state condition
        when UNUSED0 | UNUSED1 | UNUSED2  => 
                        FSMD_ERROR <= '1';             
                        DSTATE     <= IDLE;  -- clear critical controls
                        BENDREQ    <= '0';
                        ENC_STB    <= '0';
                        DBUSY      <= '0';
                        LATCHSW    <= '0';
                        CMDDONE    <= '0';
        when others =>
    end case;
    if CLRERR='1' then
       BIT_RT2RTTOUT <= '0';
    end if; 
  end if;
end process;

TXT_STROBE <= ENC_STB;


--------------------------------------------------------------------
-- Data Transfers - Memory Data & Address Multiplexing
--

PDMUX:
process(BENDOPER,CW_TX,CW_SUBADR,DEC_DATAOUT,MSGSTATUS,MADDR,SA30LOOP)
begin
  if BENDOPER/="00" then
    BENDADDR <= '0' & CW_TX & CW_TX & CW_TX & CW_TX & CW_TX & CW_SUBADR;
  else
    BENDADDR <= CW_TX & CW_SUBADR & MADDR;
    if SA30LOOP='1' and CW_SUBADR="11110" then
      BENDADDR <= '0' & CW_SUBADR & MADDR;
    else
      BENDADDR <= CW_TX & CW_SUBADR & MADDR;
    end if;
  end if;
  if BENDOPER="01" then
    BENDDOUT <= MSGSTATUS;
  else
    BENDDOUT <= DEC_DATAOUT;
  end if;  
end process;

PDMUX2:
process(BENDOPER,CW_TX)
begin
  if BENDOPER="00" then
    BENDWRT <= not CW_TX;
  else
    BENDWRT <= '1';
  end if;
end process;

--------------------------------------------------------------------
-- The Backend Interface
--

BEND10US <= WRTCMD or WRTTSW;

UBEND:  BACKEND 
  port map      
       ( CLK        =>  CLK,
         RSTn       =>  RSTn,
         CLKSPD     =>  CLKSPD,
         ASYNCIF    =>  ASYNCIF,
         BEND10US   =>  BEND10US,
         BENDREQ    =>  BENDREQ, 
         BENDWRT    =>  BENDWRT, 
         BENDBUSY   =>  BENDBUSY,
         BENDFAIL   =>  BENDFAIL,
         BENDADDR   =>  BENDADDR,
         BENDOPER   =>  BENDOPER,
         BENDDOUT   =>  BENDDOUT,
         BENDDIN    =>  BENDDIN, 
         MEMREQn    =>  MEMREQn, 
         MEMGNTn    =>  MEMGNTn, 
         MEMWRn     =>  MEMWRn,  
         MEMRDn     =>  MEMRDn,  
         MEMCSn     =>  MEMCSn,  
         MEMWAITn   =>  MEMWAITn,
         MEMCEN     =>  MEMCEN,  
         MEMDEN     =>  MEMDEN,  
         MEMADDR    =>  MEMADDR, 
         MEMOPER    =>  MEMOPER, 
         MEMDOUT    =>  MEMDOUT, 
         MEMDIN     =>  MEMDIN,
         FSM_ERROR  =>  FSMM_ERROR 
       );        
            
            
            
-----------------------------------------------------------
-- Combine the Various FSM failure Signals

FSM_ERROR <=  FSMD_ERROR or FSMM_ERROR or FSME_ERROR;              

end RTL;

       
