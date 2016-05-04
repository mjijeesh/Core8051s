-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  backend.vhd
--     
-- Description: 1553B RT
--              Default Backend Interface  
--
-- Rev: 1.0  01Jul02 IPB  : Initial Code  
-- Rev: 1.1  09Jul02 IPB  : First Cut EAP
-- Rev: 1.2  01Aug02 IPB  : Second EAP 
-- Rev: 2.0  22Aug02 IPB  : Production 
-- Rev: 2.2  24Jan05 IPB  : Added support for 20 & 24MHz Operation 
-- Rev: 3.0  01Aug05 IPB  : All state machines made safe 
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


entity BACKEND  is
  port ( CLK        : in  std_logic;
         RSTn       : in  std_logic;
         CLKSPD     : in  std_logic_vector(1 downto 0);
         ASYNCIF    : in  std_logic;
         BEND10US   : in  std_logic;
                 
         -- Interface from the RT logic
         BENDREQ    : in  std_logic;
         BENDWRT    : in  std_logic;
         BENDBUSY   : out std_logic;
         BENDFAIL   : out std_logic;
         BENDADDR   : in  std_logic_vector(10 downto 0);
         BENDOPER   : in  std_logic_vector( 1 downto 0);
         BENDDOUT   : in  std_logic_vector(15 downto 0);
         BENDDIN    : out std_logic_vector(15 downto 0);
         
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
      
         FSM_ERROR  : out std_logic
       );
end BACKEND;



architecture RTL of BACKEND is
    
constant IDLE     : bit_vector(2 downto 0) := "000";
constant BREQ     : bit_vector(2 downto 0) := "001";
constant READ1    : bit_vector(2 downto 0) := "010";
constant WRITE1   : bit_vector(2 downto 0) := "011";
constant IDLE1    : bit_vector(2 downto 0) := "100";
constant UNUSED1  : bit_vector(2 downto 0) := "101";
constant UNUSED2  : bit_vector(2 downto 0) := "110";
constant UNUSED3  : bit_vector(2 downto 0) := "111";
     
signal  MSTATE         : bit_vector(2 downto 0);
signal  iBENDFAIL      : std_logic;
   
signal  iMEMREQn       : std_logic;
signal  iMEMCSn        : std_logic;                     
signal  iMEMWRn        : std_logic;                     
signal  iMEMRDn        : std_logic;
signal  iMEMCEN        : std_logic;
signal  iMEMDEN        : std_logic;
signal  MEMWRT         : std_logic;
signal  GNT            : std_logic;
signal  MEMTIMER       : INTEGER range 0 to 511;
signal  MEMTIMER10US   : INTEGER range 0 to 511;
signal  MEMTIMER19US   : INTEGER range 0 to 511;

attribute syn_preserve   : boolean;
attribute syn_replicate  : boolean;
attribute syn_encoding   : string;
attribute syn_preserve  of MSTATE : signal is true;
attribute syn_encoding  of MSTATE : signal is "orginal";
attribute syn_replicate of MSTATE : signal is false;


begin
    
-- The backend must respond within 10.0 or 19.5us. The counter values depend on
-- the core frequency;

PCLKS:
process(CLKSPD)
begin
  case CLKSPD is
    when "00" =>  MEMTIMER10US <= (100*12)/10;
                  MEMTIMER19US <= (195*12)/10;
    when "01" =>  MEMTIMER10US <= (100*16)/10;
                  MEMTIMER19US <= (195*16)/10;
    when "10" =>  MEMTIMER10US <= (100*20)/10;
                  MEMTIMER19US <= (195*20)/10;
    when others=> MEMTIMER10US <= (100*24)/10;
                  MEMTIMER19US <= (195*24)/10;  -- max value 468
 end case;
end process;

 
-- No reset on these signals, not required 
 
PMEMSM1:
process(CLK)
begin 
 if CLK'event and CLK='1' then
   if BENDREQ='1' then
     MEMADDR  <= BENDADDR;
     MEMOPER  <= BENDOPER;
     MEMDOUT  <= BENDDOUT;
     MEMWRT   <= BENDWRT;
   end if;
 end if;
end process;
       
--------------------------------------------------------------------
-- Data Transfers - Bus Control State Machine
--

GNT <= not MEMGNTn;


PMEMSM2:
process(CLK,RSTn)
 begin
  if RSTn='0' then
   MSTATE     <= IDLE;
   iMEMREQn   <= '1';
   iMEMCSn    <= '1';
   iMEMWRn    <= '1';                                         
   iMEMRDn    <= '1';
   iMEMCEN    <= '0';
   iMEMDEN    <= '0';
   BENDDIN    <= ( others => '0');
   BENDBUSY   <= '0';
   MEMTIMER   <= 0;
   iBENDFAIL  <= '0';       
   FSM_ERROR  <= '0';
  elsif CLK'event and CLK='1' then
    FSM_ERROR  <= '0';
    iBENDFAIL  <= '0';                           
    if (BEND10US='1' and MEMTIMER=MEMTIMER10US) or MEMTIMER=MEMTIMER19US then
      iBENDFAIL <= '1';
    end if;
    MEMTIMER <= MEMTIMER + 1;
    case MSTATE is                               -- TX=1 memory reads
      when IDLE =>  iMEMCSn    <= '1';
                    iMEMWRn    <= '1';
                    iMEMRDn    <= '1';
                    iMEMCEN    <= '0';
                    iMEMDEN    <= '0';
                    iMEMREQn   <= '1';
                    BENDBUSY   <= '0';
                    MEMTIMER   <= 0;
                    if BENDREQ='1'  then
                        BENDBUSY <= '1';
                        iMEMREQn <= '0';
                        MSTATE   <= BREQ;
                    end if;
      when BREQ  => if iBENDFAIL='1' then
                      MSTATE <= IDLE;
                    elsif GNT='1' then
                       iMEMCEN  <= '1';
                       iMEMCSn  <= '0';
                       if MEMWRT='1'  then
                         MSTATE   <= WRITE1;
                         iMEMDEN  <= '1';
                         iMEMWRn  <= ASYNCIF;   -- set if SYNC mode
                       else
                         MSTATE  <= READ1;
                         iMEMRDn <= ASYNCIF;    -- set if SYNC mode
                       end if;
                     end if;
      when WRITE1 => iMEMWRn <= '0';
                     if (ASYNCIF='0' or MEMWAITn='1' or iBENDFAIL='1') and iMEMWRn='0' then
                       iMEMWRn    <= '1';
                       MSTATE     <= IDLE1;
                     end if;  
      when READ1  => if ASYNCIF='1' then
                       iMEMRDn  <= '0';
                       if (MEMWAITn='1' or iBENDFAIL='1') and iMEMRDn='0' then
                         iMEMRDn    <= '1';
                         BENDDIN    <= MEMDIN;
                         MSTATE     <= IDLE1;
                       end if;  
                     else
                       iMEMRDn  <= '1';
                       if iMEMRDn='1' then
                         BENDDIN    <= MEMDIN;
                         MSTATE     <= IDLE1;
                       end if;  
                     end if;
      when IDLE1 => iMEMCSn    <= '1';
                    iMEMWRn    <= '1';
                    iMEMRDn    <= '1';
                    iMEMCEN    <= '0';
                    iMEMDEN    <= '0';
                    iMEMREQn   <= '0';  
                    BENDBUSY   <= '1';
                    MEMTIMER   <= 0;
                    MSTATE     <= IDLE;
      when UNUSED1 | UNUSED2 | UNUSED3 =>
                    FSM_ERROR  <= '1';  --  Illegal states, pulse error and reset
                    iMEMCSn    <= '1';  --  Abort any active access cycle
                    iMEMWRn    <= '1';
                    iMEMRDn    <= '1';
                    iMEMCEN    <= '0';
                    iMEMDEN    <= '0';
                    iMEMREQn   <= '0';  
                    BENDBUSY   <= '1';
                    MEMTIMER   <= 0;
                    MSTATE     <= IDLE;            
    end case;
  end if;
end process;

BENDFAIL <= iBENDFAIL;

MEMREQn <= iMEMREQn;
MEMWRn  <= iMEMWRn;
MEMRDn  <= iMEMRDn;            
MEMCEN  <= iMEMCEN;
MEMDEN  <= iMEMDEN;
MEMCSn  <= iMEMCSn;


end RTL; 