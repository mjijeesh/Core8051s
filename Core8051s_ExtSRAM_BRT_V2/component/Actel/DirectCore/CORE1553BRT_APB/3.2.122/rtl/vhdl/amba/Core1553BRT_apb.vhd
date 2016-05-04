-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  core1553brt_apb.vhd
--     
-- Description: 1553B RT
--              APB Top Level  
--
-- Rev: 3.0  01Aug05 IPB  : All state machines made safe 
-- Rev: 3.1  01Mar07 IPB  : CoreConsole Release 
-- Rev: 3.2  01Oct07 IPB  : APB Release 
--
--
-- SVN Revision Information:
-- SVN $Revision: 102 $
-- SVN $Date: 2007-10-10 16:23:23 -0700 (Wed, 10 Oct 2007) $
--
-- Notes:
--
-- *********************************************************************/ 


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use work.rtcomps.all;


entity CORE1553BRT_APB is
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
end CORE1553BRT_APB;



architecture RTL of CORE1553BRT_APB is

--------------------------------------------------------------------
-- Some Constants that effect the core
--

constant TESTLEGALITY   : integer := 0; 

-- This sets the version number in the BIT Word
constant VERSION : std_logic_vector(4 downto 0) := "01001";  -- 3.1   CC Release 

--------------------------------------------------------------------

function to_logic( x: BOOLEAN) return std_logic is
 variable y : std_logic;
 begin
  if x then y:='1';
       else y:='0';
  end if;
  return(y);
end to_logic;


component RAM2K16  
    port(RESET : in  std_logic;
         CLKA  : in  std_logic;
         BLKA  : in  std_logic;
         RWA   : in  std_logic;
         ADDRA : in  std_logic_vector(10 downto 0);
         DINA  : in  std_logic_vector(15 downto 0); 
         DOUTA : out std_logic_vector(15 downto 0); 
         CLKB  : in  std_logic; 
         BLKB  : in  std_logic;
         RWB   : in  std_logic;   
         ADDRB : in  std_logic_vector(10 downto 0); 
         DINB  : in  std_logic_vector(15 downto 0); 
         DOUTB : out std_logic_vector(15 downto 0)
        ); 
end component;

subtype WORD       is std_logic_vector (15 downto 0);
type WORD_ARRAY    is array ( INTEGER range <>) of WORD;

signal  SIG_CLKSPD       : std_logic_vector(1 downto 0);  
signal  SIG_WRTTSW       : std_logic; 
signal  SIG_WRTCMD       : std_logic; 
signal  SIG_EXTMDATA     : std_logic; 
signal  SIG_BCASTEN      : std_logic; 
signal  SIG_SA30LOOP     : std_logic; 
signal  SIG_ASYNCIF      : std_logic; 
signal  SIG_INTENBBR     : std_logic; 
       
signal  CORE_RTADDR      : std_logic_vector(4 downto 0);
signal  CORE_RTADDRP     : std_logic;
signal  CORE_RTADERR     : std_logic;
signal  CORE_USEXTOK     : std_logic;
signal  CORE_CMDVAL      : std_logic_vector(11 downto 0);
signal  CORE_CMDOKIN     : std_logic;
signal  CORE_CMDSTB      : std_logic;
signal  CORE_SREQUEST    : std_logic;
signal  CORE_RTBUSY      : std_logic;
signal  CORE_SSFLAG      : std_logic;
signal  CORE_TFLAG       : std_logic;
signal  CORE_VWORD       : std_logic_vector(15 downto 0);
signal  CORE_INTACK      : std_logic;
signal  CORE_CLRERR      : std_logic;
signal  CORE_TESTTXTOUT  : std_logic;
signal  CORE_BUSY        : std_logic;
signal  CORE_INTOUT      : std_logic;
signal  CORE_INTVECT     : std_logic_vector(6 downto 0);
signal  CORE_RTN         : std_logic_vector(4 downto 0);
signal  CORE_RTP         : std_logic;
signal  CORE_LOCK        : std_logic;
signal  CORE_BUSRESET    : std_logic;
signal  CORE_FSM_ERROR   : std_logic;
signal  CORE_SYNCNOW     : std_logic;
signal  CORE_INTACKSIG	 : std_logic;
signal  CORE_INTNOWSIG	 : std_logic;
    
signal  APB_SREQUEST     : std_logic;
signal  APB_RTBUSY       : std_logic;
signal  APB_SSFLAG       : std_logic;
signal  APB_TFLAG        : std_logic;
signal  APB_VWORD        : std_logic_vector(15 downto 0);
signal  APB_INTVECT      : std_logic_vector(6 downto 0);
signal  APB_INTACT       : std_logic;
signal  APB_INTORUN      : std_logic;
signal  APB_INTEN        : std_logic;
signal  APB_CLRERR       : std_logic;
signal  APB_TESTTXTOUT   : std_logic;
signal  APB_RTN          : std_logic_vector(4 downto 0);
signal  APB_RTP          : std_logic;
signal  APB_RDRTN        : std_logic_vector(4 downto 0);
signal  APB_RDRTP        : std_logic;
signal  APB_RTADERR      : std_logic;
signal  APB_LOCK         : std_logic;
signal  APB_BUSY         : std_logic;
signal  APB_INTACKSIG	 : std_logic;
signal  APB_INTNOWSIG	 : std_logic;
   
signal  RT_REG0          : std_logic_vector(15 downto 0);
signal  RT_REG1          : std_logic_vector(15 downto 0);
signal  RT_REG2          : std_logic_vector(15 downto 0);
signal  RT_REGM          : std_logic_vector(15 downto 0);
signal  LEG_REGS         : WORD_ARRAY(0 to 15);
signal  LEG_READ         : std_logic_vector(15 downto 0);
                      
signal  PREGWRT          : std_logic;
signal  PLEGWRT          : std_logic;
signal  PRDATA_RAM       : std_logic_vector(15 downto 0);
    
signal  LEG_RAMSTB       : std_logic;
signal  LEG_RAMSTB_D1    : std_logic;
signal  LEGAL_RAMLAT     : std_logic;
signal  LEGAL_ADDR       : std_logic_vector(12 downto 0);
signal  LEGAL_BITS       : integer range 0 to 15;

signal  MEMWRn           : std_logic;
signal  MEMRDn           : std_logic;
signal  MEMCSn           : std_logic;
signal  MEMADDR          : std_logic_vector(12 downto 0);
signal  MEMDOUT          : std_logic_vector(15 downto 0);
signal  MEMDIN           : std_logic_vector(15 downto 0);
signal  MEMWAITn         : std_logic;
signal  MEMGNTn          : std_logic;

signal  BLKA             : std_logic;
signal  RWA              : std_logic;
signal  BLKB             : std_logic;
signal  RWB              : std_logic;
signal  ADDRA            : std_logic_vector(12 downto 0);

signal  Logic0           : std_logic;
signal  Logic1           : std_logic;
signal  ZERO             : std_logic_vector(15 downto 0);
        
begin

Logic0 <= '0';
Logic1 <= '1';
ZERO   <= ( others => '0');

----------------------------------------------------------------   
-- Convert Generics to Signals for driving v3.00 of the core

SIG_CLKSPD     <=       "00" when CLKSPD=12
                   else "01" when CLKSPD=16
                   else "10" when CLKSPD=20
                   else "11";
                        
SIG_WRTTSW     <= '1';   -- Core is fixed to default mode   
SIG_WRTCMD     <= '0';     
SIG_EXTMDATA   <= '0';     
SIG_BCASTEN    <= '1' when BCASTEN =1 else '0';    
SIG_SA30LOOP   <= '1' when SA30LOOP=1 else '0';    
SIG_INTENBBR   <= '1' when INTENBBR=1 else '0';    
SIG_ASYNCIF    <= '0';   

---------------------------------------------------------------------------------------   
-- This is the v3.00 core base code unaltered (apart from the TESTLEGALITY generic)  
   
U300 : RT1553B 
  generic map ( TESTLEGALITY => TESTLEGALITY )
  port map ( CLK        => CLK,      
             RSTINn     => RSTINn,   
             CLKSPD     => SIG_CLKSPD,   
             RTADDR     => CORE_RTADDR,   
             RTADDRP    => CORE_RTADDRP,  
             RTADERR    => CORE_RTADERR,  
             BUSAINEN   => BUSAINEN, 
             BUSAINP    => BUSAINP,  
             BUSAINN    => BUSAINN,  
             BUSBINEN   => BUSBINEN, 
             BUSBINP    => BUSBINP,  
             BUSBINN    => BUSBINN,  
             BUSAOUTIN  => BUSAOUTIN,
             BUSAOUTP   => BUSAOUTP, 
             BUSAOUTN   => BUSAOUTN, 
             BUSBOUTIN  => BUSBOUTIN,
             BUSBOUTP   => BUSBOUTP, 
             BUSBOUTN   => BUSBOUTN, 
             -- Control Signals - should be tied high or low
             WRTTSW     => SIG_WRTTSW,   
             WRTCMD     => SIG_WRTCMD,   
             EXTMDATA   => SIG_EXTMDATA, 
             BCASTEN    => SIG_BCASTEN,  
             SA30LOOP   => SIG_SA30LOOP, 
             ASYNCIF    => SIG_ASYNCIF,  
             INTENBBR   => SIG_INTENBBR, 
             TESTTXTOUT => CORE_TESTTXTOUT,
             -- Control Signals
             SREQUEST   => CORE_SREQUEST, 
             RTBUSY     => CORE_RTBUSY,   
             SSFLAG     => CORE_SSFLAG,   
             TFLAG      => CORE_TFLAG,    
             VWORD      => CORE_VWORD,    
             INTACK     => CORE_INTACKSIG,   
             CLRERR     => CORE_CLRERR,   
             -- Status Signals
             BUSY       => CORE_BUSY,     
             MSGSTART   => open, 
             CMDSYNC    => open,  
             SYNCNOW    => CORE_SYNCNOW,  
             BUSRESET   => CORE_BUSRESET, 
             INTOUT     => CORE_INTNOWSIG,   
             INTVECT    => CORE_INTVECT,  
             MEMFAIL    => open,                    -- Cannot Happen  
             -- Command Legalization Interface
             USEXTOK    => CORE_USEXTOK, 
             ADDRLAT    => open, 
             INTLAT     => open,  
             CMDVAL     => CORE_CMDVAL,  
             CMDOK      => CORE_CMDOKIN,   
             CMDOKOUT   => open,
             CMDSTB     => CORE_CMDSTB,  
             -- Backend Memory interface
             MEMREQn    => open, 
             MEMGNTn    => Logic0, 
             MEMWRn     => MEMWRn,  
             MEMRDn     => MEMRDn,  
             MEMCSn     => MEMCSn,  
             MEMWAITn   => Logic1,
             MEMCEN     => open,  
             MEMDEN     => open,  
             MEMADDR    => MEMADDR(12 downto 2), 
             MEMOPER    => open, 
             MEMDOUT    => MEMDOUT, 
             MEMDIN     => MEMDIN,  
             -- FSM Failure Output
             FSM_ERROR  => CORE_FSM_ERROR
            );

MEMADDR(1 downto 0) <= "00";

RTADERR   <= CORE_RTADERR;
CMDVAL    <= CORE_CMDVAL;
CMDSTB    <= CORE_CMDSTB;
BUSY      <= CORE_BUSY;
SYNCNOW   <= CORE_SYNCNOW;
BUSRESET  <= CORE_BUSRESET;
FSM_ERROR <= CORE_FSM_ERROR;

        
---------------------------------------------------------------------------------
-- Legalisation Logic 
-- 
--
-- 0: Internal to RT core 
-- 1: External Input
-- 2: APB Registers
-- 3: APB RAM block

CORE_USEXTOK      <= to_logic(LEGMODE>=1);

process(CMDOK,CORE_CMDVAL,LEG_REGS,LEGAL_RAMLAT)
variable mux : std_logic_vector(3 downto 0);
variable SA  : integer range 0 to 15;
begin
 CORE_CMDOKIN <= '0';
 LEGAL_ADDR   <= "11111111" & "---" & "00";
 LEGAL_BITS   <= 0;
 if LEGMODE=1 then
   CORE_CMDOKIN <= CMDOK;
 end if;
 if LEGMODE=2 or LEGMODE=3 then
     SA   := conv_integer(CORE_CMDVAL(8 downto 5));
     mux(0) := CORE_CMDVAL(9);    -- SA4
     mux(1) := CORE_CMDVAL(10);   -- TX/RX
     mux(2) := CORE_CMDVAL(11);   -- Broadcast
     mux(3) := '0';               -- Data
   if (CORE_CMDVAL(9 downto 5)="00000" or CORE_CMDVAL(9 downto 5)="11111") then
     SA := conv_integer(CORE_CMDVAL(3 downto 0));
     mux(0) := CORE_CMDVAL(4);    -- MC4
     mux(1) := CORE_CMDVAL(10);   -- TX/RX
     mux(2) := CORE_CMDVAL(11);   -- Broadcast
     mux(3) := '1';               -- ModeCode
   end if;
 end if;
 if LEGMODE=2 then 
   case (mux) is
     when "0000"  => CORE_CMDOKIN <= not LEG_REGS(0)(SA); 	  -- note 0 means legal
     when "0001"  => CORE_CMDOKIN <= not LEG_REGS(1)(SA); 	  --      1 means illegal
     when "0010"  => CORE_CMDOKIN <= not LEG_REGS(2)(SA); 
     when "0011"  => CORE_CMDOKIN <= not LEG_REGS(3)(SA); 
     when "0100"  => CORE_CMDOKIN <= not LEG_REGS(4)(SA); 
     when "0101"  => CORE_CMDOKIN <= not LEG_REGS(5)(SA); 
     when "0110"  => CORE_CMDOKIN <= not LEG_REGS(6)(SA); 
     when "0111"  => CORE_CMDOKIN <= not LEG_REGS(7)(SA); 
     when "1000"  => CORE_CMDOKIN <= not LEG_REGS(8)(SA); 	 
     when "1001"  => CORE_CMDOKIN <= not LEG_REGS(9)(SA); 	 
     when "1010"  => CORE_CMDOKIN <= not LEG_REGS(10)(SA); 
     when "1011"  => CORE_CMDOKIN <= not LEG_REGS(11)(SA); 
     when "1100"  => CORE_CMDOKIN <= not LEG_REGS(12)(SA); 
     when "1101"  => CORE_CMDOKIN <= not LEG_REGS(13)(SA); 
     when "1110"  => CORE_CMDOKIN <= not LEG_REGS(14)(SA); 
     when others  => CORE_CMDOKIN <= not LEG_REGS(15)(SA); 
   end case;
 end if; 
 if LEGMODE=3 then
   LEGAL_ADDR   <= "1111111" & mux & "00";
   LEGAL_BITS   <= SA;
   CORE_CMDOKIN <= not LEGAL_RAMLAT;
 end if;
end process;
 
 
CMDVAL <= CORE_CMDVAL; 
 
---------------------------------------------------------------------------------
-- APB Slave Interface 


PREGWRT <= PSEL and PENABLE and PWRITE and to_logic( PADDR(12 downto 6) = "1111110" );
PLEGWRT <= PSEL and PENABLE and PWRITE and to_logic( PADDR(12 downto 6) = "1111111" );

process(PCLK,RSTINn)
begin
  if RSTINn='0' then
    APB_SREQUEST   <= '0';
    APB_RTBUSY     <= '0'; 
    APB_SSFLAG     <= '0'; 
    APB_TFLAG      <= '0'; 
    APB_VWORD      <= ( others => '0'); 
    APB_INTACT     <= '0'; 
    APB_INTEN      <= '0'; 
    APB_INTORUN    <= '0'; 
    APB_INTACKSIG  <= '0';
    APB_CLRERR     <= '0'; 
    APB_TESTTXTOUT <= '0'; 
    APB_RTN        <= "00000";
    APB_RTP        <= '0';
    APB_LOCK       <= '1';
    LEG_REGS(0)    <= "0000000000000000";   -- Receive  SA 15:0                0000
    LEG_REGS(1)    <= "0000000000000000";   -- Receive  SA 31:16               0000
    LEG_REGS(2)    <= "0000000000000000";   -- Transmit SA 15:0                0000
    LEG_REGS(3)    <= "0000000000000000";   -- Transmit SA 31:16               0000
    LEG_REGS(4)    <= "0000000000000000";   -- Bcast Receive  SA 15:0          0000
    LEG_REGS(5)    <= "0000000000000000";   -- Bcast Receive  SA 31:16         0000
    LEG_REGS(6)    <= "1111111111111111";   -- Bcast Transmit SA 15:0          FFFF
    LEG_REGS(7)    <= "1111111111111111";   -- Bcast Transmit SA 31:16         FFFF
    LEG_REGS(8)    <= "1111111111111111";   -- Mode Code Receive  15:0         FFFF
    LEG_REGS(9)    <= "1111111111111101";   -- Mode Code Receive  31:16        FFFD 
    LEG_REGS(10)   <= "1111111000000001";   -- Mode Code Transmit 15:0         FE01 
    LEG_REGS(11)   <= "1111111111110010";   -- Mode Code Transmit 31:16        FFF2
    LEG_REGS(12)   <= "1111111111111111";   -- Bcast Mode Code Receive  15:0   FFFF
    LEG_REGS(13)   <= "1111111111111101";   -- Bcast Mode Code Receive  31:16  FFFD
    LEG_REGS(14)   <= "1111111000000101";   -- Bcast Mode Code Transmit 15:0   FE05
    LEG_REGS(15)   <= "1111111111111111";   -- Bcast Mode Code Transmit 31:16  FFFF
  elsif PCLK'event and PCLK='1' then
    if PREGWRT='1' and PADDR(5 downto 2)="0000" then
       APB_SREQUEST   <= PWDATA(0);
       APB_RTBUSY     <= PWDATA(1); 
       APB_SSFLAG     <= PWDATA(2); 
       APB_TFLAG      <= PWDATA(3); 
       APB_TESTTXTOUT <= PWDATA(4) and to_logic(TESTTXTOUTEN=1); 
       -- Bit 7 is BUSY
       APB_RTN        <= PWDATA(12 downto 8);
       APB_RTP        <= PWDATA(13);
       -- Bit 14 is RTADERR
       APB_LOCK       <= PWDATA(15) or to_logic(LOCKRT=1);
    end if;
    if PREGWRT='1' and PADDR(5 downto 2)="0001" then
       if PWDATA(7)='1' then
	     APB_INTACT <= '0';
       end if;
       APB_INTEN <= PWDATA(8);
       if PWDATA(7)='1' then
	     APB_INTORUN <= '0';
       end if;
	   APB_CLRERR <= PWDATA(10); 
    end if;
	if APB_INTNOWSIG='1' and APB_INTACKSIG='0' then
	  APB_INTACKSIG <= '1';
	  APB_INTACT <= '1';
	  if APB_INTACT='1' then
	    APB_INTORUN<='1';
      end if;
	end if;
	if APB_INTNOWSIG='0' then
      APB_INTACKSIG <= '0';	
	end if;
    if PREGWRT='1' and PADDR(5 downto 2)="0010" then
      APB_VWORD <= PWDATA; 
    end if;
    if LEGMODE=2 and PLEGWRT='1' then
      case PADDR(5 downto 2) is
       when "0000" =>  LEG_REGS(0)  <= PWDATA;
       when "0001" =>  LEG_REGS(1)  <= PWDATA;
       when "0010" =>  LEG_REGS(2)  <= PWDATA;
       when "0011" =>  LEG_REGS(3)  <= PWDATA;
       when "0100" =>  LEG_REGS(4)  <= PWDATA;
       when "0101" =>  LEG_REGS(5)  <= PWDATA;
       when "0110" =>  LEG_REGS(6)  <= PWDATA;
       when "0111" =>  LEG_REGS(7)  <= PWDATA;
       when "1000" =>  LEG_REGS(8)  <= PWDATA;
       when "1001" =>  LEG_REGS(9)  <= PWDATA;
       when "1010" =>  LEG_REGS(10) <= PWDATA;
       when "1011" =>  LEG_REGS(11) <= PWDATA;
       when "1100" =>  LEG_REGS(12) <= PWDATA;
       when "1101" =>  LEG_REGS(13) <= PWDATA;
       when "1110" =>  LEG_REGS(14) <= PWDATA;
       when "1111" =>  LEG_REGS(15) <= PWDATA;
       when others =>
      end case;
    end if;
    if LOCKRT=1 then
      APB_LOCK <= '1';
    end if;
    if TESTTXTOUTEN=0 then
      APB_TESTTXTOUT  <= '0';
    end if; 
  end if;
end process;


process(PADDR,LEG_REGS)
begin    
  LEG_READ <= ( others => '0');
  if LEGMODE=2 then
    case PADDR(5 downto 2) is
     when "0000" => LEG_READ <= LEG_REGS(0) ;
     when "0001" => LEG_READ <= LEG_REGS(1) ;
     when "0010" => LEG_READ <= LEG_REGS(2) ;
     when "0011" => LEG_READ <= LEG_REGS(3) ;
     when "0100" => LEG_READ <= LEG_REGS(4) ;
     when "0101" => LEG_READ <= LEG_REGS(5) ;
     when "0110" => LEG_READ <= LEG_REGS(6) ;
     when "0111" => LEG_READ <= LEG_REGS(7) ;
     when "1000" => LEG_READ <= LEG_REGS(8) ;
     when "1001" => LEG_READ <= LEG_REGS(9) ;
     when "1010" => LEG_READ <= LEG_REGS(10);
     when "1011" => LEG_READ <= LEG_REGS(11);
     when "1100" => LEG_READ <= LEG_REGS(12);
     when "1101" => LEG_READ <= LEG_REGS(13);
     when "1110" => LEG_READ <= LEG_REGS(14);
     when others => LEG_READ <= LEG_REGS(15);
    end case;
  end if;
end process;


CORE_RTADDR  <=  RTADDR  when CORE_LOCK='1' else CORE_RTN;
CORE_RTADDRP <=  RTADDRP when CORE_LOCK='1' else CORE_RTP;

APB_RDRTN	 <=  RTADDR  when CORE_LOCK='1' else APB_RTN;
APB_RDRTP	 <=  RTADDRP when CORE_LOCK='1' else APB_RTP;

------------------------------------------------------------------------------------------
-- Asynchronous requires cross domain registers

US: if CLKSYNC=0 generate
  process(CLK)
  begin
   if CLK'event and CLK='1' then
     CORE_SREQUEST   <= APB_SREQUEST;  
     CORE_RTBUSY     <= APB_RTBUSY;    
     CORE_SSFLAG     <= APB_SSFLAG;    
     CORE_TFLAG      <= APB_TFLAG;     
     CORE_CLRERR     <= APB_CLRERR;    
     CORE_TESTTXTOUT <= APB_TESTTXTOUT and to_logic(TESTTXTOUTEN=1); 
     CORE_RTN        <= APB_RTN;    
     CORE_RTP        <= APB_RTP;   
     CORE_VWORD      <= APB_VWORD;
     CORE_LOCK       <= APB_LOCK;
	 CORE_INTACKSIG  <= APB_INTACKSIG;
   end if;       
  end process;

  process(PCLK)
  begin
    if PCLK='1' and PCLK'event then
      APB_BUSY      <= CORE_BUSY;
      APB_INTVECT   <= CORE_INTVECT;
      APB_RTADERR   <= CORE_RTADERR;
	  APB_INTNOWSIG	<= CORE_INTNOWSIG;
    end if;
  end process;
  
end generate;

-- Synchronous no need for cross domain registers

UAS: if CLKSYNC=1 generate
   CORE_SREQUEST   <= APB_SREQUEST;  
   CORE_RTBUSY     <= APB_RTBUSY;    
   CORE_SSFLAG     <= APB_SSFLAG;    
   CORE_TFLAG      <= APB_TFLAG;     
   CORE_CLRERR     <= APB_CLRERR;    
   CORE_TESTTXTOUT <= APB_TESTTXTOUT and to_logic(TESTTXTOUTEN=1); 
   CORE_RTN        <= APB_RTN;    
   CORE_RTP        <= APB_RTP;   
   CORE_VWORD      <= APB_VWORD;
   CORE_LOCK       <= APB_LOCK;
   CORE_INTACKSIG  <= APB_INTACKSIG;
   APB_BUSY        <= CORE_BUSY;
   APB_INTVECT     <= CORE_INTVECT;
   APB_RTADERR     <= CORE_RTADERR;
   APB_INTNOWSIG   <= CORE_INTNOWSIG;
end generate;


INTERRUPT <= (APB_INTEN and APB_INTACT) when INT_POLARITY=1 else not (APB_INTEN and APB_INTACT);

RT_REG0 <=    APB_LOCK  & APB_RTADERR    & APB_RDRTP   & APB_RDRTN
            & APB_BUSY  & APB_TESTTXTOUT & APB_CLRERR  & APB_TESTTXTOUT
            & APB_TFLAG & APB_SSFLAG     & APB_RTBUSY  & APB_SREQUEST;

RT_REG1 <=  VERSION & APB_CLRERR & APB_INTORUN & APB_INTEN & APB_INTACT & APB_INTVECT; 

RT_REG2 <=  APB_VWORD;


process(PADDR,RT_REG0,RT_REG1,RT_REG2)
begin
  case PADDR(3 downto 2) is
    when "00"   => RT_REGM <= RT_REG0;
    when "01"   => RT_REGM <= RT_REG1;
    when "10"   => RT_REGM <= RT_REG2;
    when others => RT_REGM <= ( others => '0');
  end case;
end process;


process(PADDR,RT_REGM,LEG_READ,PRDATA_RAM)
variable registers : boolean;
begin
  registers :=     (PADDR(12 downto 6)="1111110")
               or  (PADDR(12 downto 6)="1111111"  and LEGMODE=2);
  if registers then
    if PADDR(6)='1' and LEGMODE=2 then
      PRDATA <= LEG_READ;
    else
      PRDATA <= RT_REGM;
    end if;
  else
    PRDATA <= PRDATA_RAM; 
  end if;
end process;

   
---------------------------------------------------------------------------------
-- 2K Words of Memorys  
-- When LEGMODE=3 then we need to read the legality information from RAM

BLKA     <= '1'        when (LEG_RAMSTB='1' and LEGMODE=3) else not MEMCSn;
RWA      <= '1'        when (LEG_RAMSTB='1' and LEGMODE=3) else MEMWRn;
ADDRA    <= LEGAL_ADDR when (LEG_RAMSTB='1' and LEGMODE=3) else MEMADDR;
BLKB     <= PSEL and (PENABLE or not PWRITE);
RWB      <= not PWRITE;  
MEMWAITn <= '1';
MEMGNTn  <= '0';

-- Note in AX/RTAXS/APA this RAM is readable from the lower half and writable to the upper half
-- on the APB side and opposite on the core side
--

 URAM : RAM2K16 
 port map(RESET => RSTINn,
          CLKA  => CLK,
          BLKA  => BLKA,
          RWA   => RWA,
          ADDRA => ADDRA(12 downto 2),
          DINA  => MEMDOUT,
          DOUTA => MEMDIN,
          CLKB  => PCLK,
          BLKB  => BLKB,
          RWB   => RWB,
          ADDRB => PADDR(12 downto 2),
          DINB  => PWDATA,
          DOUTB => PRDATA_RAM
       ); 

LEG_RAMSTB <= CORE_CMDSTB;

process(CLK,RSTINn)
begin
  if RSTINn='0' then
    LEGAL_RAMLAT <=	'0';
 	LEG_RAMSTB_D1<= '0';
  elsif CLK'event and CLK='1' then
    LEG_RAMSTB_D1 <= LEG_RAMSTB;
    if LEG_RAMSTB_D1='1' and LEGMODE=3 then
       LEGAL_RAMLAT <= MEMDIN(LEGAL_BITS);
    end if;
  end if;
end process;



end RTL;

       
