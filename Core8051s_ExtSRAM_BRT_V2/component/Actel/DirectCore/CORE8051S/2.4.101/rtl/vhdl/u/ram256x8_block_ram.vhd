-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- SVN Revision Information:
-- SVN $Revision: 9148 $
-- SVN $Date: 2009-07-22 13:53:33 +0100 (Wed, 22 Jul 2009) $
--
-- ********************************************************************/
library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all ;
use IEEE.std_logic_unsigned.all ;

entity RAM256X8_block_ram is
    port (
        WD              : in  std_logic_vector(7 downto 0);
        RD              : out std_logic_vector(7 downto 0);
        WADDR           : in  std_logic_vector(7 downto 0);
        RADDR           : in  std_logic_vector(7 downto 0);
        WEN             : in  std_logic;
        REN             : in  std_logic;
        WCLK            : in  std_logic;
        RCLK            : in  std_logic
    );
end RAM256X8_block_ram;


architecture DEF_ARCH of  RAM256X8_block_ram is

type MEM_TYPE is array (255 downto 0) of std_logic_vector(7 downto 0) ;

signal MEM : MEM_TYPE ;


attribute syn_ramstyle : string;
attribute syn_ramstyle of MEM : signal is "block_ram";

begin

    WRIO_MEMORY : process (WCLK)
    begin
        if (rising_edge(WCLK)) then
            if (WEN = '1') then
                MEM(conv_integer(unsigned(WADDR))) <= WD;
            end if;
        end if;
    end process WRIO_MEMORY;

    RDIO_MEMORY : process (RCLK)
    begin
        if (rising_edge(RCLK)) then
            if (REN = '1') then
                RD <= MEM(conv_integer(unsigned(RADDR)));
            end if;
        end if;
    end process RDIO_MEMORY;

end DEF_ARCH;
