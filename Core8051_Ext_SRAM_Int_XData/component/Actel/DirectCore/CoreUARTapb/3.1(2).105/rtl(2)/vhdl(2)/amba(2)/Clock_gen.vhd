-- ********************************************************************* 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
-- IN ADVANCE IN WRITING.  
--  
--
-- File................: CLOCK_GEN.VHD
-- Function............: Generates the 16x oversampled clock pulse and the tx clock pulse
-- Person Responsible..: Haribabu Jagarlamudi
-- Rev: 3.0  21FEB07  HJ  : v3.0 CoreConsole Release  
-- Last Updated........: 02/21/07
--


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;

entity Clock_gen is port (
             clk              : in   std_logic;                     -- system clock
             reset_n          : in   std_logic;                     -- active low async reset
             baud_val         : in   std_logic_vector(7 downto 0);  -- value loaded into cntr  

             baud_clock       : out  std_logic;                     -- 16x baud clock pulse
             xmit_pulse       : out  std_logic                      -- transmit pulse
);
end Clock_gen;

architecture rtl of Clock_gen is


signal baud_cntr        : std_logic_vector(7 downto 0);             -- 16x clock division counter reg.
signal baud_clock_int   : std_logic;                                -- internal 16x baud clock pulse
signal xmit_clock       : std_logic;                                
signal xmit_cntr        : std_logic_vector(3 downto 0);              -- baud tx counter reg.

begin

  --------------------------------------------------
  -- generate a x16 baud clock pulse
  --------------------------------------------------

  make_baud_cntr: process(clk,reset_n)
                  begin
                    if(reset_n = '0') then
                      baud_cntr <= "00000000";
                      baud_clock_int <= '0';
                    elsif(clk'event and clk='1') then
                      if(baud_cntr = "00000000") then
                        baud_cntr <= baud_val;
                        baud_clock_int <= '1'; 
                      else
                        baud_cntr <= baud_cntr - '1';
                        baud_clock_int <= '0';
                      end if;
                    end if;
                  end process;  
                  
  --baud_clock_int <= '1' when baud_cntr = "00000000" else
  --                  '0';                       

  ----------------------------------------------------
  -- generate a transmit clock pulse
  ----------------------------------------------------

  make_xmit_clock: process(clk,reset_n)
                   begin
                     if(reset_n = '0') then
                       xmit_cntr <= "0000";
                       xmit_clock <= '0';
                     elsif(clk'event and clk='1') then
                       if(baud_clock_int = '1') then
                         xmit_cntr <= xmit_cntr + '1';
                         if(xmit_cntr = "1111") then
                           xmit_clock <= '1';
                         else
                           xmit_clock <= '0';
                         end if;
                       end if;
                     end if;
                   end process;

xmit_pulse <= xmit_clock and baud_clock_int;
baud_clock <= baud_clock_int;


end rtl;
