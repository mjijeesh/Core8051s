-- memory_mux.vhd

library ieee;
use ieee.std_logic_1164.all;

entity memory_mux is 


port (
        SYSCLK          : in std_logic;  
        mempsrd         : in std_logic;  -- active high read enable,for program mmeory
        mempswr         : in std_logic;  -- active high write enable,for program memory
        memrd           : in std_logic;  -- active high external memory read
        memwr           : in std_logic;  -- active high external memory write


        memdatai        : in std_logic_vector(7 downto 0); -- from core
        memaddr         : in std_logic_vector(15 downto 0); -- from core


        memdatao        : out std_logic_vector(7 downto 0); -- to core

        MEM_ADDR        :  out std_logic_vector(23 downto 0);  -- common Address bus for FLASH and SRAM
        MEM_DATA        : inout std_logic_vector(7 downto 0);  --- common data bus for SRAM and FLASH

---  Flash memory i/o interface

        FLASH_CEn       : out std_logic;
        FLASH_WEn       : out std_logic;
        FLASH_OEn       : out std_logic;
        FLASH_VPEN      : out std_logic;
        FLASH_RPn       : out std_logic;  --// active low reset
        FLASH_BYTEn     : out std_logic;  -- active low byte mode enable

---- SRAM memory i/o interface

        SRAM_OEn     : out std_logic; -- active low Output enable
        SRAM_WEn     : out std_logic; -- active low write enable

        SRAM_CEn1    : out std_logic; -- active Low Chip Enable
        SRAM_CE2    : out std_logic; -- active high chip enable

        SRAM_BHEn0   : out std_logic;  --  active low Byte High Enable
        SRAM_BLEn0   : out std_logic;  --  Active low Byte Low Enable

        SRAM_BHEn1   : out std_logic;  --  active low Byte High Enable (Second SRAM)
        SRAM_BLEn1   : out std_logic   --  Active low Byte Low Enable  (Second SRAM)
       


    );
end memory_mux ;


architecture one of memory_mux is 

signal flash_memdatai,ext_memdatao , xdata_memdatao : std_logic_vector(7 downto 0);

component RAM4Kx8 
    port( WD  : in  std_logic_vector(7 downto 0); 
	  	  RD  : out std_logic_vector(7 downto 0);
          WEN : in std_logic;
          REN : in std_logic; 
          WADDR : in std_logic_vector(11 downto 0); 
          RADDR : in std_logic_vector(11 downto 0);
          WCLK  : in std_logic;
          RCLK  : in std_logic
        ) ;
end component;


begin



XDATA:RAM4Kx8 port map
	    ( WD    =>  memdatai, 
	      RD    =>  xdata_memdatao,
          WEN   =>  memwr,
          REN   =>  memrd, 
          WADDR =>  memaddr(11 downto 0), 
          RADDR =>  memaddr(11 downto 0),
          WCLK  =>  SYSCLK,
          RCLK  =>  SYSCLK   
        ) ;

-- data to the core8051s

memdatao <= ext_memdatao when (mempsrd = '1' ) else xdata_memdatao;





---FLASH_DATA     <= memdatai when mempswr = '1' else (others=>'Z');
--flash_memdatai <= FLASH_DATA;


MEM_DATA     <= memdatai when (mempswr = '1' ) else  (others=>'Z');

ext_memdatao <= MEM_DATA;


--- FLASH  external memory control signals

--disabled the flash interface not using 
FLASH_CEn     <= '1';  --'0';
FLASH_BYTEn   <= '0';
FLASH_RPn     <= '1';
FLASH_OEn     <= (not mempsrd);
FLASH_WEn     <= (not mempswr);
FLASH_VPEN    <= '1';



MEM_ADDR(15 downto 0) <= memaddr;
MEM_ADDR(23 downto 16) <= (others=>'0');



--- SRAM  external memory control signals , configured to use it as program memory 


SRAM_CEn1    <= '0'; -- active Low Chip Enable
SRAM_CE2     <= '1'; -- active high chip enable

SRAM_BHEn0   <=  '1';   --  active low Byte High Enable, only 8 bit needed here so disabled
SRAM_BLEn0   <=  '0';  --  Active low Byte Low Enable

SRAM_BHEn1   <= '1' ; --  active low Byte High Enable, only 64KB required so not using 2nd memory
SRAM_BLEn1   <= '1' ; --  Active low Byte Low Enable, only 64KB required so not using 2nd memory
       
SRAM_OEn     <= (not mempsrd); -- active low Output enable
SRAM_WEn     <= (not mempswr); -- active low write enable



end one;