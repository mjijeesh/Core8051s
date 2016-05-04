-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  tb_amba.vhd
--     
-- Description: 1553B RT Testbench
--              Top level of APB testbench  
--
-- Rev: 3.2  01Oct07 IPB  : APB Release 
--
--
-- SVN Revision Information:
-- SVN $Revision: 13475 $
-- SVN $Date: 2010-06-18 05:26:12 -0700 (Fri, 18 Jun 2010) $
--
-- Notes:
--   NRTS=x  Sets the Number of RTS active in the Simulation
--   Generic Values are picke dup from CoreParameters
--
-- *********************************************************************/ 


library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;


use work.components.all;
use work.coreparameters.all;
use work.bfm_misc.all;
use work.bfm_package.all;

use std.textio.all;


entity TB_AMBA is
   generic ( NRTS    : INTEGER range 1 to 31 := 4;
             VERIF   : integer range 0 to 4  := 0
           );
end TB_AMBA;


architecture TB of TB_AMBA is

-- Based on VERIF generic set the core parameters
-- When VERIF=0 the testbench uses the the values as set in CoreConsole at Core configuration
-- When VERIF is 1 to 4 then various combinations are used to increase coverage
-- Other coreparameters are not tested here as they do not alter function at APB level

constant SEL_CLKSPD       : INTEGER_ARRAY(0 to 4) := ( 0 => CLKSPD,
                                                       1 => 12,
                                                       2 => 16,
                                                       3 => 20,
                                                       4 => 24 );
                                                 
constant SEL_CLKSYNC      : INTEGER_ARRAY(0 to 4) := ( 0 => CLKSYNC,
                                                       1 => 1,
                                                       2 => 0,
                                                       3 => 0,
                                                       4 => 1 );

constant SEL_TESTTXTOUTEN : INTEGER_ARRAY(0 to 4) := ( 0 => TESTTXTOUTEN,
                                                       1 => 0,
                                                       2 => 1,
                                                       3 => 0,
                                                       4 => 1 );

constant SEL_LEGMODE      : INTEGER_ARRAY(0 to 4) := ( 0 => LEGMODE, 
                                                       1 => 0, 
                                                       2 => 1, 
                                                       3 => 2, 
                                                       4 => 3);
                                                         
constant SEL_LOCKRT       : INTEGER_ARRAY(0 to 4) := ( 0 => LOCKRT,
                                                       1 => 0, 
                                                       2 => 1, 
                                                       3 => 1,
                                                       4 => 0);
													  
constant SEL_INT_POLARITY : INTEGER_ARRAY(0 to 4) := ( 0 => INT_POLARITY,
                                                       1 => 0, 
                                                       2 => 0, 
                                                       3 => 1,
                                                       4 => 1);

constant SU_CLKSPD			: integer := SEL_CLKSPD(VERIF);		
constant SU_CLKSYNC			: integer := SEL_CLKSYNC(VERIF);		
constant SU_TESTTXTOUTEN	: integer := SEL_TESTTXTOUTEN(VERIF);
constant SU_LEGMODE			: integer := SEL_LEGMODE(VERIF);		
constant SU_LOCKRT			: integer := SEL_LOCKRT(VERIF);		
constant SU_INT_POLARITY	: integer := SEL_INT_POLARITY(VERIF);


component BFM_1553BBC 
  port ( ECLK     : in    std_logic;
         ERESETN  : in    std_logic;
         EXT_SEL  : in    std_logic;
         EXT_WR   : in    std_logic;
         EXT_RD   : in    std_logic;
         EXT_ADDR : in    std_logic_vector(31 downto 0);
         EXT_DATA : inout std_logic_vector(31 downto 0);
         EXT_WAIT : out   std_logic;
         STOPCLK  : in    boolean;
         BUSY     : out   std_logic;
         BUSAPOS  : inout std_logic;
         BUSANEG  : inout std_logic;
         BUSBPOS  : inout std_logic;
         BUSBNEG  : inout std_logic
       );
end component;


component TRANSCEIVER 
      port  (  BUSPOS     : inout std_logic;
               BUSNEG     : inout std_logic;
               RXENABLE   : in    std_logic;
               RXDATAOUTP : out   std_logic;
               RXDATAOUTN : out   std_logic;
               TXINHIBIT  : in    std_logic;
               TXDATAINP  : in    std_logic;
               TXDATAINN  : in    std_logic
             );
end component;


function  calc_parity ( x : INTEGER range 0 to 31) return std_logic is
variable y: std_logic_vector(31 downto 0);
variable z: std_logic;
begin
   y := to_slv32(x);
   z := not (y(4) xor y(3) xor y(2) xor y(1) xor y(0));
   return(z);
end calc_parity;


subtype slv5       is std_logic_vector (4 downto 0);
subtype slv12      is std_logic_vector (11 downto 0);
subtype slv13      is std_logic_vector (12 downto 0);
subtype slv16      is std_logic_vector (15 downto 0);
type slv_array1    is array ( INTEGER range <>) of std_logic;
type slv_array5    is array ( INTEGER range <>) of slv5;
type slv_array12   is array ( INTEGER range <>) of slv12;
type slv_array13   is array ( INTEGER range <>) of slv13;
type slv_array16   is array ( INTEGER range <>) of slv16;

signal MONEN       : BOOLEAN;
signal STOPCLK     : BOOLEAN;

--Clocks etc
signal CLKCORE      : std_logic := '0';
signal CLK18        : std_logic := '0';
signal CLK16        : std_logic := '0';
signal RSTn         : std_logic := '0';

--1553B Signals
signal BUSAPOS      : std_logic;
signal BUSANEG      : std_logic;
signal BUSBPOS      : std_logic;
signal BUSBNEG      : std_logic;
signal BCBUSY       : std_logic;

signal RTADDR       : slv_array5(0 to NRTS-1);
signal RTADDRP      : slv_array1(0 to NRTS-1);
signal RTADERR      : slv_array1(0 to NRTS-1);
signal BUSAINEN     : slv_array1(0 to NRTS-1);
signal BUSAINP      : slv_array1(0 to NRTS-1);               
signal BUSAINN      : slv_array1(0 to NRTS-1);               
signal BUSBINEN     : slv_array1(0 to NRTS-1);               
signal BUSBINP      : slv_array1(0 to NRTS-1);               
signal BUSBINN      : slv_array1(0 to NRTS-1);               
signal BUSAOUTIN    : slv_array1(0 to NRTS-1);               
signal BUSAOUTP     : slv_array1(0 to NRTS-1);
signal BUSAOUTN     : slv_array1(0 to NRTS-1);
signal BUSBOUTIN    : slv_array1(0 to NRTS-1);
signal BUSBOUTP     : slv_array1(0 to NRTS-1);
signal BUSBOUTN     : slv_array1(0 to NRTS-1);
signal CMDVAL       : slv_array12(0 to NRTS-1);
signal CMDOK        : slv_array1(0 to NRTS-1);
signal CMDSTB       : slv_array1(0 to NRTS-1);
                 
--APB           
signal SYSCLK       : std_logic;
signal SYSRSTN      : std_logic;
signal PCLK         : std_logic;
signal PRESETN      : std_logic;
signal PADDR        : std_logic_vector(31 downto 0);
signal PENABLE      : std_logic;
signal PWRITE       : std_logic;
signal PWDATA       : std_logic_vector(31 downto 0);
signal PRDATA       : std_logic_vector(31 downto 0);
signal PREADY       : std_logic;
signal PSLVERR      : std_logic;
signal PSEL         : std_logic_vector(15 downto 0);
signal INTERRUPT    : std_logic_vector(255 downto 0);
signal XINTERRUPT   : std_logic_vector(255 downto 0);
signal GP_OUT       : std_logic_vector(31 downto 0);
signal GP_IN        : std_logic_vector(31 downto 0);
signal EXT_WR       : std_logic;
signal EXT_RD       : std_logic;
signal EXT_WAIT     : std_logic;
signal EXT_ADDR     : std_logic_vector(31 downto 0);
signal EXT_DATA     : std_logic_vector(31 downto 0);
signal INSTR_OUT    : std_logic_vector(31 downto 0);
signal INSTR_IN     : std_logic_vector(31 downto 0);
signal FINISHED     : std_logic;
signal FAILED       : std_logic;
    
signal PRDATAMUX    : slv_array16(0 to NRTS-1);

signal EXT_SEL      : std_logic;

signal Logic0  : std_logic;
signal Logic1  : std_logic;
signal ZERO    : std_logic_vector(31 downto 0);
signal HHHH    : std_logic_vector(31 downto 0);
signal ZZZZ    : std_logic_vector(31 downto 0);

begin
    
Logic0  <= '0';
Logic1  <= '1';
ZERO    <= ( others => '0');
HHHH    <= ( others => 'H');
ZZZZ    <= ( others => 'Z');

EXT_DATA <= ( others => 'Z');

-------------------------------------------------------------------------
-- Clock and Reset Generation
--

process
 begin
    CLK18 <= '0';           -- is set to 18MHz so PCLK is in middle of 1553 CLK options
    wait for 27 ns;
    CLK18 <= '1';
    wait for 27 ns;
    if STOPCLK then
      wait;
    end if;
end process;


process
 begin
    CLKCORE <= '0';
    wait for 500000/SU_CLKSPD * 1 ps;
    CLKCORE <= '1';
    wait for 500000/SU_CLKSPD * 1 ps;
    if STOPCLK then
      wait;
    end if;
end process;


process
 begin
    CLK16 <= '0';
    wait for 31250 ps;
    CLK16 <= '1';
    wait for 31250 ps;
    if STOPCLK then
      wait;
    end if;
end process;


process
 begin
  RSTn <= '0';
  wait for 150 ns;
  RSTn <= '1';
  wait;
end process;

SYSCLK   <= CLK18 when SU_CLKSYNC=0 else CLKCORE;
SYSRSTN  <= RSTn;


---------------------------------------------------------------------------------------------
-- APB Bus Master and Multiplexers


BFM:  BFM_APB 
  generic map
          ( VECTFILE        => "core1553brt.vec",
            MAX_INSTRUCTIONS=> 8192,
            MAX_STACK       => 200,
            TPD             => 5,
            DEBUGLEVEL      => -1,
            ARGVALUE0       => VERIF,        -- Pass Core Parameters to the BFM
            ARGVALUE1       => NRTS,      
            ARGVALUE2       => FAMILY,      
            ARGVALUE3       => SU_CLKSPD,      
            ARGVALUE4       => SU_CLKSYNC,     
            ARGVALUE5       => SU_LOCKRT,      
            ARGVALUE6       => BCASTEN,     
            ARGVALUE7       => SU_LEGMODE,     
            ARGVALUE8       => SA30LOOP,    
            ARGVALUE9       => INTENBBR,    
            ARGVALUE10      => SU_TESTTXTOUTEN,
            ARGVALUE11      => SU_INT_POLARITY
          )
  port map
       ( SYSCLK      => SYSCLK,   
         SYSRSTN     => SYSRSTN,  
         PCLK        => PCLK,     
         PRESETN     => PRESETN,  
         PADDR       => PADDR ,   
         PENABLE     => PENABLE,  
         PWRITE      => PWRITE,   
         PWDATA      => PWDATA,   
         PRDATA      => PRDATA,   
         PREADY      => PREADY,   
         PSLVERR     => PSLVERR,  
         PSEL        => PSEL,     
         INTERRUPT   => INTERRUPT,
         GP_OUT      => GP_OUT,   
         GP_IN       => GP_IN,    
         EXT_WR      => EXT_WR,   
         EXT_RD      => EXT_RD,   
         EXT_ADDR    => EXT_ADDR,
         EXT_DATA    => EXT_DATA,
         EXT_WAIT    => EXT_WAIT, 
         FINISHED    => FINISHED, 
         FAILED      => FAILED  
       );

GP_IN(27 downto 16) <= CMDVAL(0);   -- Monitor CMDVAL on GP_IN
GP_IN(14 downto NRTS) <= ( others => '0');
-- other bits driven by interrupt outputs

PSLVERR   <= '0';
PREADY    <= '1';
STOPCLK   <= (FINISHED='1');
INTERRUPT(255 downto NRTS) <= ( others => '0');

-- APB Data MUX
process(PRDATAMUX,PSEL)
begin
 for i in 0 to NRTS-1 loop
  if PSEL(i)='1' then 
    PRDATA <= ZERO(31 downto 16) & PRDATAMUX(i);
  end if;
 end loop;
end process;


-------------------------------------------------------------------------
-- The RT System 
--

URT: for i in 0 to NRTS-1 generate


 RTADDR(i)   <= to_slv32(i)(4 downto 0);
 RTADDRP(i)  <= CALC_PARITY(i);  
 CMDOK(i)    <= GP_OUT(0);
 GP_IN(i)    <= INTERRUPT(i);

 URT: CORE1553BRT_APB 
  generic map ( FAMILY       =>  FAMILY,      
                CLKSPD       =>  SU_CLKSPD ,      
                CLKSYNC      =>  SU_CLKSYNC,     
                LOCKRT       =>  SU_LOCKRT,      
                BCASTEN      =>  BCASTEN,     
                LEGMODE      =>  SU_LEGMODE,     
                SA30LOOP     =>  SA30LOOP,    
                INTENBBR     =>  INTENBBR,    
                TESTTXTOUTEN =>  SU_TESTTXTOUTEN,
                INT_POLARITY =>  SU_INT_POLARITY
         )
  port map ( CLK        => CLKCORE,       
             RSTINn     => RSTn,    
             PCLK       => PCLK,      
             PRESETN    => PRESETN,   
             PSEL       => PSEL(i),      
             PENABLE    => PENABLE,   
             PWRITE     => PWRITE,    
             PADDR      => PADDR(12 downto 0),     
             PWDATA     => PWDATA(15 downto 0),    
             PRDATA     => PRDATAMUX(i)(15 downto 0),    
             INTERRUPT  => XINTERRUPT(i), 
             RTADDR     => RTADDR(i),  
             RTADDRP    => RTADDRP(i), 
             RTADERR    => RTADERR(i), 
             BUSAINEN   => BUSAINEN(i), 
             BUSAINP    => BUSAINP(i),  
             BUSAINN    => BUSAINN(i),  
             BUSBINEN   => BUSBINEN(i), 
             BUSBINP    => BUSBINP(i),  
             BUSBINN    => BUSBINN(i),  
             BUSAOUTIN  => BUSAOUTIN(i),
             BUSAOUTP   => BUSAOUTP(i), 
             BUSAOUTN   => BUSAOUTN(i), 
             BUSBOUTIN  => BUSBOUTIN(i),
             BUSBOUTP   => BUSBOUTP(i), 
             BUSBOUTN   => BUSBOUTN(i), 
             CMDVAL     => CMDVAL(i),
             CMDOK      => CMDOK(i), 
             CMDSTB     => CMDSTB(i),
             BUSY       => open,
             SYNCNOW    => open,
             BUSRESET   => open,
             FSM_ERROR  => open
            );
            
  INTERRUPT(i) <= XINTERRUPT(i) when SU_INT_POLARITY=1 else not XINTERRUPT(i);
 
  UTCVA : TRANSCEIVER 
    port map (  BUSPOS       => BUSAPOS,
                BUSNEG       => BUSANEG,
                RXENABLE     => BUSAINEN(i),
                RXDATAOUTP   => BUSAINP(i), 
                RXDATAOUTN   => BUSAINN(i), 
                TXINHIBIT    => BUSAOUTIN(i),
                TXDATAINP    => BUSAOUTP(i), 
                TXDATAINN    => BUSAOUTN(i)
              ); 
                
  UTCVB : TRANSCEIVER 
    port map (  BUSPOS       => BUSBPOS,
                BUSNEG       => BUSBNEG,
                RXENABLE     => BUSBINEN(i),
                RXDATAOUTP   => BUSBINP(i), 
                RXDATAOUTN   => BUSBINN(i), 
                TXINHIBIT    => BUSBOUTIN(i),
                TXDATAINP    => BUSBOUTP(i), 
                TXDATAINN    => BUSBOUTN(i)
              );     

end generate;

    


--------------------------------------------------------------------
-- 1553B Bus Controller Message Generation
--

EXT_SEL <= '1';
    
UBC  : BFM_1553BBC port map
       ( ECLK     => PCLK,    
         ERESETN  => PRESETN,
         EXT_SEL  => EXT_SEL, 
         EXT_WR   => EXT_WR,  
         EXT_RD   => EXT_RD,  
         EXT_ADDR => EXT_ADDR,
         EXT_DATA => EXT_DATA,
         EXT_WAIT => EXT_WAIT,
         STOPCLK  => STOPCLK,
         BUSY     => BCBUSY,
         BUSAPOS  => BUSAPOS,
         BUSANEG  => BUSANEG,
         BUSBPOS  => BUSBPOS,
         BUSBNEG  => BUSBNEG
       );
  
  
end TB;
