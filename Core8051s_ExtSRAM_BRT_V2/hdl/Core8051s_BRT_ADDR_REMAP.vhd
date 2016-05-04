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


entity CORE8051S_BRT_ADDR_REMAP is
  
  port ( 

        -- From Core8051s ApB3 Interface
         M_PCLK       : in  std_logic;
         M_PRESETN    : in  std_logic;
         M_PSEL       : in  std_logic;
         M_PENABLE    : in  std_logic;
         M_PWRITE     : in  std_logic;
         M_PADDR      : in  std_logic_vector(12 downto 0);
         M_PWDATA     : in  std_logic_vector(15 downto 0);
         M_PRDATA     : out std_logic_vector(15 downto 0);

         -- To Core1553BRT APB Slave Interface
         PCLK       : out  std_logic;
         PRESETN    : out  std_logic;
         PSEL       : out  std_logic;
         PENABLE    : out  std_logic;
         PWRITE     : out  std_logic;
         PADDR      : out  std_logic_vector(12 downto 0);
         PWDATA     : out  std_logic_vector(15 downto 0);
         PRDATA     : in std_logic_vector(15 downto 0)
        
        );
end CORE8051S_BRT_ADDR_REMAP;



architecture RTL of CORE8051S_BRT_ADDR_REMAP is
begin

--- The offset address of the Core1553BRT will be ncremented by 1 Byte 
---- Apply this conversion of address space by dividing the offset address by 4 and get teh correspondig value.
--- you need to this before using it in the software.



-- To Core1553BRT APB Slave Interface
         PCLK       <= M_PCLK;
         PRESETN    <= M_PRESETN;
         PSEL       <= M_PSEL;
         PENABLE    <= M_PENABLE;
         PWRITE     <= M_PWRITE;
-- 2K address locations fro mCOre8051s ( addr incremented by 1 byte.
--  Core1553 Has total 2K location spaced by 4 Byte word boundary. 
--  The below assignment will conver the incoming address to the 4 byte boundary

         PADDR(12 downto 2) <= M_PADDR(10 downto 0); 
         PADDR(1 downto 0)  <= (others=>'0');
         PWDATA     <= M_PWDATA;
         M_PRDATA   <= PRDATA;

end RTL;

       
