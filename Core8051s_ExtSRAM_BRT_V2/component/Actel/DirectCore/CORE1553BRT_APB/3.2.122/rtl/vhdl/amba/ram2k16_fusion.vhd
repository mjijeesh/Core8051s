-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  ram2k16_pa3e.vhd
--     
-- Description: 1553B RT
--              APB RAM Block  
--
-- Rev: 3.2  01Oct07 IPB  : APB Release 
--
--
-- SVN Revision Information:
-- SVN $Revision: 13434 $
-- SVN $Date: 2010-06-14 05:42:34 -0700 (Mon, 14 Jun 2010) $
--
-- Notes:
--
-- *********************************************************************/ 

-- Version: 8.0 8.0.0.40

library ieee;
use ieee.std_logic_1164.all;
library fusion;
use fusion.components.all;

entity RAM2K16 is 
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
end RAM2K16;

architecture RTL of  RAM2K16 is


signal WEAP, WEBP, VCC_1_net, GND_1_net : std_logic ;
begin   

    VCC_1_net <= '1';
    GND_1_net <= '0';
    WEBP <= not  BLKB;
    WEAP <= not  BLKA;
        
    RAM2K16_R0C2 : RAM4K9
      port map(ADDRA11 => GND_1_net, ADDRA10 => ADDRA(10), 
        ADDRA9 => ADDRA(9), ADDRA8 => ADDRA(8), ADDRA7 => 
        ADDRA(7), ADDRA6 => ADDRA(6), ADDRA5 => ADDRA(5), 
        ADDRA4 => ADDRA(4), ADDRA3 => ADDRA(3), ADDRA2 => 
        ADDRA(2), ADDRA1 => ADDRA(1), ADDRA0 => ADDRA(0), 
        ADDRB11 => GND_1_net, ADDRB10 => ADDRB(10), ADDRB9 => 
        ADDRB(9), ADDRB8 => ADDRB(8), ADDRB7 => ADDRB(7), 
        ADDRB6 => ADDRB(6), ADDRB5 => ADDRB(5), ADDRB4 => 
        ADDRB(4), ADDRB3 => ADDRB(3), ADDRB2 => ADDRB(2), 
        ADDRB1 => ADDRB(1), ADDRB0 => ADDRB(0), DINA8 => 
        GND_1_net, DINA7 => GND_1_net, DINA6 => GND_1_net, 
        DINA5 => GND_1_net, DINA4 => GND_1_net, DINA3 => 
        GND_1_net, DINA2 => GND_1_net, DINA1 => DINA(5), DINA0 => 
        DINA(4), DINB8 => GND_1_net, DINB7 => GND_1_net, DINB6 => 
        GND_1_net, DINB5 => GND_1_net, DINB4 => GND_1_net, 
        DINB3 => GND_1_net, DINB2 => GND_1_net, DINB1 => DINB(5), 
        DINB0 => DINB(4), WIDTHA0 => VCC_1_net, WIDTHA1 => 
        GND_1_net, WIDTHB0 => VCC_1_net, WIDTHB1 => GND_1_net, 
        PIPEA => GND_1_net, PIPEB => GND_1_net, WMODEA => 
        GND_1_net, WMODEB => GND_1_net, BLKA => WEAP, BLKB => 
        WEBP, WENA => RWA, WENB => RWB, CLKA => CLKA, CLKB => 
        CLKB, RESET => RESET, DOUTA8 => OPEN , DOUTA7 => OPEN , 
        DOUTA6 => OPEN , DOUTA5 => OPEN , DOUTA4 => OPEN , 
        DOUTA3 => OPEN , DOUTA2 => OPEN , DOUTA1 => DOUTA(5), 
        DOUTA0 => DOUTA(4), DOUTB8 => OPEN , DOUTB7 => OPEN , 
        DOUTB6 => OPEN , DOUTB5 => OPEN , DOUTB4 => OPEN , 
        DOUTB3 => OPEN , DOUTB2 => OPEN , DOUTB1 => DOUTB(5), 
        DOUTB0 => DOUTB(4));
    RAM2K16_R0C3 : RAM4K9
      port map(ADDRA11 => GND_1_net, ADDRA10 => ADDRA(10), 
        ADDRA9 => ADDRA(9), ADDRA8 => ADDRA(8), ADDRA7 => 
        ADDRA(7), ADDRA6 => ADDRA(6), ADDRA5 => ADDRA(5), 
        ADDRA4 => ADDRA(4), ADDRA3 => ADDRA(3), ADDRA2 => 
        ADDRA(2), ADDRA1 => ADDRA(1), ADDRA0 => ADDRA(0), 
        ADDRB11 => GND_1_net, ADDRB10 => ADDRB(10), ADDRB9 => 
        ADDRB(9), ADDRB8 => ADDRB(8), ADDRB7 => ADDRB(7), 
        ADDRB6 => ADDRB(6), ADDRB5 => ADDRB(5), ADDRB4 => 
        ADDRB(4), ADDRB3 => ADDRB(3), ADDRB2 => ADDRB(2), 
        ADDRB1 => ADDRB(1), ADDRB0 => ADDRB(0), DINA8 => 
        GND_1_net, DINA7 => GND_1_net, DINA6 => GND_1_net, 
        DINA5 => GND_1_net, DINA4 => GND_1_net, DINA3 => 
        GND_1_net, DINA2 => GND_1_net, DINA1 => DINA(7), DINA0 => 
        DINA(6), DINB8 => GND_1_net, DINB7 => GND_1_net, DINB6 => 
        GND_1_net, DINB5 => GND_1_net, DINB4 => GND_1_net, 
        DINB3 => GND_1_net, DINB2 => GND_1_net, DINB1 => DINB(7), 
        DINB0 => DINB(6), WIDTHA0 => VCC_1_net, WIDTHA1 => 
        GND_1_net, WIDTHB0 => VCC_1_net, WIDTHB1 => GND_1_net, 
        PIPEA => GND_1_net, PIPEB => GND_1_net, WMODEA => 
        GND_1_net, WMODEB => GND_1_net, BLKA => WEAP, BLKB => 
        WEBP, WENA => RWA, WENB => RWB, CLKA => CLKA, CLKB => 
        CLKB, RESET => RESET, DOUTA8 => OPEN , DOUTA7 => OPEN , 
        DOUTA6 => OPEN , DOUTA5 => OPEN , DOUTA4 => OPEN , 
        DOUTA3 => OPEN , DOUTA2 => OPEN , DOUTA1 => DOUTA(7), 
        DOUTA0 => DOUTA(6), DOUTB8 => OPEN , DOUTB7 => OPEN , 
        DOUTB6 => OPEN , DOUTB5 => OPEN , DOUTB4 => OPEN , 
        DOUTB3 => OPEN , DOUTB2 => OPEN , DOUTB1 => DOUTB(7), 
        DOUTB0 => DOUTB(6));
    RAM2K16_R0C4 : RAM4K9
      port map(ADDRA11 => GND_1_net, ADDRA10 => ADDRA(10), 
        ADDRA9 => ADDRA(9), ADDRA8 => ADDRA(8), ADDRA7 => 
        ADDRA(7), ADDRA6 => ADDRA(6), ADDRA5 => ADDRA(5), 
        ADDRA4 => ADDRA(4), ADDRA3 => ADDRA(3), ADDRA2 => 
        ADDRA(2), ADDRA1 => ADDRA(1), ADDRA0 => ADDRA(0), 
        ADDRB11 => GND_1_net, ADDRB10 => ADDRB(10), ADDRB9 => 
        ADDRB(9), ADDRB8 => ADDRB(8), ADDRB7 => ADDRB(7), 
        ADDRB6 => ADDRB(6), ADDRB5 => ADDRB(5), ADDRB4 => 
        ADDRB(4), ADDRB3 => ADDRB(3), ADDRB2 => ADDRB(2), 
        ADDRB1 => ADDRB(1), ADDRB0 => ADDRB(0), DINA8 => 
        GND_1_net, DINA7 => GND_1_net, DINA6 => GND_1_net, 
        DINA5 => GND_1_net, DINA4 => GND_1_net, DINA3 => 
        GND_1_net, DINA2 => GND_1_net, DINA1 => DINA(9), DINA0 => 
        DINA(8), DINB8 => GND_1_net, DINB7 => GND_1_net, DINB6 => 
        GND_1_net, DINB5 => GND_1_net, DINB4 => GND_1_net, 
        DINB3 => GND_1_net, DINB2 => GND_1_net, DINB1 => DINB(9), 
        DINB0 => DINB(8), WIDTHA0 => VCC_1_net, WIDTHA1 => 
        GND_1_net, WIDTHB0 => VCC_1_net, WIDTHB1 => GND_1_net, 
        PIPEA => GND_1_net, PIPEB => GND_1_net, WMODEA => 
        GND_1_net, WMODEB => GND_1_net, BLKA => WEAP, BLKB => 
        WEBP, WENA => RWA, WENB => RWB, CLKA => CLKA, CLKB => 
        CLKB, RESET => RESET, DOUTA8 => OPEN , DOUTA7 => OPEN , 
        DOUTA6 => OPEN , DOUTA5 => OPEN , DOUTA4 => OPEN , 
        DOUTA3 => OPEN , DOUTA2 => OPEN , DOUTA1 => DOUTA(9), 
        DOUTA0 => DOUTA(8), DOUTB8 => OPEN , DOUTB7 => OPEN , 
        DOUTB6 => OPEN , DOUTB5 => OPEN , DOUTB4 => OPEN , 
        DOUTB3 => OPEN , DOUTB2 => OPEN , DOUTB1 => DOUTB(9), 
        DOUTB0 => DOUTB(8));
    RAM2K16_R0C6 : RAM4K9
      port map(ADDRA11 => GND_1_net, ADDRA10 => ADDRA(10), 
        ADDRA9 => ADDRA(9), ADDRA8 => ADDRA(8), ADDRA7 => 
        ADDRA(7), ADDRA6 => ADDRA(6), ADDRA5 => ADDRA(5), 
        ADDRA4 => ADDRA(4), ADDRA3 => ADDRA(3), ADDRA2 => 
        ADDRA(2), ADDRA1 => ADDRA(1), ADDRA0 => ADDRA(0), 
        ADDRB11 => GND_1_net, ADDRB10 => ADDRB(10), ADDRB9 => 
        ADDRB(9), ADDRB8 => ADDRB(8), ADDRB7 => ADDRB(7), 
        ADDRB6 => ADDRB(6), ADDRB5 => ADDRB(5), ADDRB4 => 
        ADDRB(4), ADDRB3 => ADDRB(3), ADDRB2 => ADDRB(2), 
        ADDRB1 => ADDRB(1), ADDRB0 => ADDRB(0), DINA8 => 
        GND_1_net, DINA7 => GND_1_net, DINA6 => GND_1_net, 
        DINA5 => GND_1_net, DINA4 => GND_1_net, DINA3 => 
        GND_1_net, DINA2 => GND_1_net, DINA1 => DINA(13), 
        DINA0 => DINA(12), DINB8 => GND_1_net, DINB7 => GND_1_net, 
        DINB6 => GND_1_net, DINB5 => GND_1_net, DINB4 => 
        GND_1_net, DINB3 => GND_1_net, DINB2 => GND_1_net, 
        DINB1 => DINB(13), DINB0 => DINB(12), WIDTHA0 => 
        VCC_1_net, WIDTHA1 => GND_1_net, WIDTHB0 => VCC_1_net, 
        WIDTHB1 => GND_1_net, PIPEA => GND_1_net, PIPEB => 
        GND_1_net, WMODEA => GND_1_net, WMODEB => GND_1_net, 
        BLKA => WEAP, BLKB => WEBP, WENA => RWA, WENB => RWB, 
        CLKA => CLKA, CLKB => CLKB, RESET => RESET, DOUTA8 => 
        OPEN , DOUTA7 => OPEN , DOUTA6 => OPEN , DOUTA5 => OPEN , 
        DOUTA4 => OPEN , DOUTA3 => OPEN , DOUTA2 => OPEN , 
        DOUTA1 => DOUTA(13), DOUTA0 => DOUTA(12), DOUTB8 => OPEN , 
        DOUTB7 => OPEN , DOUTB6 => OPEN , DOUTB5 => OPEN , 
        DOUTB4 => OPEN , DOUTB3 => OPEN , DOUTB2 => OPEN , 
        DOUTB1 => DOUTB(13), DOUTB0 => DOUTB(12));
    RAM2K16_R0C0 : RAM4K9
      port map(ADDRA11 => GND_1_net, ADDRA10 => ADDRA(10), 
        ADDRA9 => ADDRA(9), ADDRA8 => ADDRA(8), ADDRA7 => 
        ADDRA(7), ADDRA6 => ADDRA(6), ADDRA5 => ADDRA(5), 
        ADDRA4 => ADDRA(4), ADDRA3 => ADDRA(3), ADDRA2 => 
        ADDRA(2), ADDRA1 => ADDRA(1), ADDRA0 => ADDRA(0), 
        ADDRB11 => GND_1_net, ADDRB10 => ADDRB(10), ADDRB9 => 
        ADDRB(9), ADDRB8 => ADDRB(8), ADDRB7 => ADDRB(7), 
        ADDRB6 => ADDRB(6), ADDRB5 => ADDRB(5), ADDRB4 => 
        ADDRB(4), ADDRB3 => ADDRB(3), ADDRB2 => ADDRB(2), 
        ADDRB1 => ADDRB(1), ADDRB0 => ADDRB(0), DINA8 => 
        GND_1_net, DINA7 => GND_1_net, DINA6 => GND_1_net, 
        DINA5 => GND_1_net, DINA4 => GND_1_net, DINA3 => 
        GND_1_net, DINA2 => GND_1_net, DINA1 => DINA(1), DINA0 => 
        DINA(0), DINB8 => GND_1_net, DINB7 => GND_1_net, DINB6 => 
        GND_1_net, DINB5 => GND_1_net, DINB4 => GND_1_net, 
        DINB3 => GND_1_net, DINB2 => GND_1_net, DINB1 => DINB(1), 
        DINB0 => DINB(0), WIDTHA0 => VCC_1_net, WIDTHA1 => 
        GND_1_net, WIDTHB0 => VCC_1_net, WIDTHB1 => GND_1_net, 
        PIPEA => GND_1_net, PIPEB => GND_1_net, WMODEA => 
        GND_1_net, WMODEB => GND_1_net, BLKA => WEAP, BLKB => 
        WEBP, WENA => RWA, WENB => RWB, CLKA => CLKA, CLKB => 
        CLKB, RESET => RESET, DOUTA8 => OPEN , DOUTA7 => OPEN , 
        DOUTA6 => OPEN , DOUTA5 => OPEN , DOUTA4 => OPEN , 
        DOUTA3 => OPEN , DOUTA2 => OPEN , DOUTA1 => DOUTA(1), 
        DOUTA0 => DOUTA(0), DOUTB8 => OPEN , DOUTB7 => OPEN , 
        DOUTB6 => OPEN , DOUTB5 => OPEN , DOUTB4 => OPEN , 
        DOUTB3 => OPEN , DOUTB2 => OPEN , DOUTB1 => DOUTB(1), 
        DOUTB0 => DOUTB(0));
    RAM2K16_R0C5 : RAM4K9
      port map(ADDRA11 => GND_1_net, ADDRA10 => ADDRA(10), 
        ADDRA9 => ADDRA(9), ADDRA8 => ADDRA(8), ADDRA7 => 
        ADDRA(7), ADDRA6 => ADDRA(6), ADDRA5 => ADDRA(5), 
        ADDRA4 => ADDRA(4), ADDRA3 => ADDRA(3), ADDRA2 => 
        ADDRA(2), ADDRA1 => ADDRA(1), ADDRA0 => ADDRA(0), 
        ADDRB11 => GND_1_net, ADDRB10 => ADDRB(10), ADDRB9 => 
        ADDRB(9), ADDRB8 => ADDRB(8), ADDRB7 => ADDRB(7), 
        ADDRB6 => ADDRB(6), ADDRB5 => ADDRB(5), ADDRB4 => 
        ADDRB(4), ADDRB3 => ADDRB(3), ADDRB2 => ADDRB(2), 
        ADDRB1 => ADDRB(1), ADDRB0 => ADDRB(0), DINA8 => 
        GND_1_net, DINA7 => GND_1_net, DINA6 => GND_1_net, 
        DINA5 => GND_1_net, DINA4 => GND_1_net, DINA3 => 
        GND_1_net, DINA2 => GND_1_net, DINA1 => DINA(11), 
        DINA0 => DINA(10), DINB8 => GND_1_net, DINB7 => GND_1_net, 
        DINB6 => GND_1_net, DINB5 => GND_1_net, DINB4 => 
        GND_1_net, DINB3 => GND_1_net, DINB2 => GND_1_net, 
        DINB1 => DINB(11), DINB0 => DINB(10), WIDTHA0 => 
        VCC_1_net, WIDTHA1 => GND_1_net, WIDTHB0 => VCC_1_net, 
        WIDTHB1 => GND_1_net, PIPEA => GND_1_net, PIPEB => 
        GND_1_net, WMODEA => GND_1_net, WMODEB => GND_1_net, 
        BLKA => WEAP, BLKB => WEBP, WENA => RWA, WENB => RWB, 
        CLKA => CLKA, CLKB => CLKB, RESET => RESET, DOUTA8 => 
        OPEN , DOUTA7 => OPEN , DOUTA6 => OPEN , DOUTA5 => OPEN , 
        DOUTA4 => OPEN , DOUTA3 => OPEN , DOUTA2 => OPEN , 
        DOUTA1 => DOUTA(11), DOUTA0 => DOUTA(10), DOUTB8 => OPEN , 
        DOUTB7 => OPEN , DOUTB6 => OPEN , DOUTB5 => OPEN , 
        DOUTB4 => OPEN , DOUTB3 => OPEN , DOUTB2 => OPEN , 
        DOUTB1 => DOUTB(11), DOUTB0 => DOUTB(10));
    RAM2K16_R0C7 : RAM4K9
      port map(ADDRA11 => GND_1_net, ADDRA10 => ADDRA(10), 
        ADDRA9 => ADDRA(9), ADDRA8 => ADDRA(8), ADDRA7 => 
        ADDRA(7), ADDRA6 => ADDRA(6), ADDRA5 => ADDRA(5), 
        ADDRA4 => ADDRA(4), ADDRA3 => ADDRA(3), ADDRA2 => 
        ADDRA(2), ADDRA1 => ADDRA(1), ADDRA0 => ADDRA(0), 
        ADDRB11 => GND_1_net, ADDRB10 => ADDRB(10), ADDRB9 => 
        ADDRB(9), ADDRB8 => ADDRB(8), ADDRB7 => ADDRB(7), 
        ADDRB6 => ADDRB(6), ADDRB5 => ADDRB(5), ADDRB4 => 
        ADDRB(4), ADDRB3 => ADDRB(3), ADDRB2 => ADDRB(2), 
        ADDRB1 => ADDRB(1), ADDRB0 => ADDRB(0), DINA8 => 
        GND_1_net, DINA7 => GND_1_net, DINA6 => GND_1_net, 
        DINA5 => GND_1_net, DINA4 => GND_1_net, DINA3 => 
        GND_1_net, DINA2 => GND_1_net, DINA1 => DINA(15), 
        DINA0 => DINA(14), DINB8 => GND_1_net, DINB7 => GND_1_net, 
        DINB6 => GND_1_net, DINB5 => GND_1_net, DINB4 => 
        GND_1_net, DINB3 => GND_1_net, DINB2 => GND_1_net, 
        DINB1 => DINB(15), DINB0 => DINB(14), WIDTHA0 => 
        VCC_1_net, WIDTHA1 => GND_1_net, WIDTHB0 => VCC_1_net, 
        WIDTHB1 => GND_1_net, PIPEA => GND_1_net, PIPEB => 
        GND_1_net, WMODEA => GND_1_net, WMODEB => GND_1_net, 
        BLKA => WEAP, BLKB => WEBP, WENA => RWA, WENB => RWB, 
        CLKA => CLKA, CLKB => CLKB, RESET => RESET, DOUTA8 => 
        OPEN , DOUTA7 => OPEN , DOUTA6 => OPEN , DOUTA5 => OPEN , 
        DOUTA4 => OPEN , DOUTA3 => OPEN , DOUTA2 => OPEN , 
        DOUTA1 => DOUTA(15), DOUTA0 => DOUTA(14), DOUTB8 => OPEN , 
        DOUTB7 => OPEN , DOUTB6 => OPEN , DOUTB5 => OPEN , 
        DOUTB4 => OPEN , DOUTB3 => OPEN , DOUTB2 => OPEN , 
        DOUTB1 => DOUTB(15), DOUTB0 => DOUTB(14));
    RAM2K16_R0C1 : RAM4K9
      port map(ADDRA11 => GND_1_net, ADDRA10 => ADDRA(10), 
        ADDRA9 => ADDRA(9), ADDRA8 => ADDRA(8), ADDRA7 => 
        ADDRA(7), ADDRA6 => ADDRA(6), ADDRA5 => ADDRA(5), 
        ADDRA4 => ADDRA(4), ADDRA3 => ADDRA(3), ADDRA2 => 
        ADDRA(2), ADDRA1 => ADDRA(1), ADDRA0 => ADDRA(0), 
        ADDRB11 => GND_1_net, ADDRB10 => ADDRB(10), ADDRB9 => 
        ADDRB(9), ADDRB8 => ADDRB(8), ADDRB7 => ADDRB(7), 
        ADDRB6 => ADDRB(6), ADDRB5 => ADDRB(5), ADDRB4 => 
        ADDRB(4), ADDRB3 => ADDRB(3), ADDRB2 => ADDRB(2), 
        ADDRB1 => ADDRB(1), ADDRB0 => ADDRB(0), DINA8 => 
        GND_1_net, DINA7 => GND_1_net, DINA6 => GND_1_net, 
        DINA5 => GND_1_net, DINA4 => GND_1_net, DINA3 => 
        GND_1_net, DINA2 => GND_1_net, DINA1 => DINA(3), DINA0 => 
        DINA(2), DINB8 => GND_1_net, DINB7 => GND_1_net, DINB6 => 
        GND_1_net, DINB5 => GND_1_net, DINB4 => GND_1_net, 
        DINB3 => GND_1_net, DINB2 => GND_1_net, DINB1 => DINB(3), 
        DINB0 => DINB(2), WIDTHA0 => VCC_1_net, WIDTHA1 => 
        GND_1_net, WIDTHB0 => VCC_1_net, WIDTHB1 => GND_1_net, 
        PIPEA => GND_1_net, PIPEB => GND_1_net, WMODEA => 
        GND_1_net, WMODEB => GND_1_net, BLKA => WEAP, BLKB => 
        WEBP, WENA => RWA, WENB => RWB, CLKA => CLKA, CLKB => 
        CLKB, RESET => RESET, DOUTA8 => OPEN , DOUTA7 => OPEN , 
        DOUTA6 => OPEN , DOUTA5 => OPEN , DOUTA4 => OPEN , 
        DOUTA3 => OPEN , DOUTA2 => OPEN , DOUTA1 => DOUTA(3), 
        DOUTA0 => DOUTA(2), DOUTB8 => OPEN , DOUTB7 => OPEN , 
        DOUTB6 => OPEN , DOUTB5 => OPEN , DOUTB4 => OPEN , 
        DOUTB3 => OPEN , DOUTB2 => OPEN , DOUTB1 => DOUTB(3), 
        DOUTB0 => DOUTB(2));
end RTL;

-- _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


-- _GEN_File_Contents_

-- Version:8.0.0.40
-- ACTGENU_CALL:1
-- BATCH:T
-- FAM:ProASIC3
-- OUTFORMAT:VHDL
-- LPMTYPE:LPM_RAM
-- LPM_HINT:DUAL
-- INSERT_PAD:NO
-- INSERT_IOREG:NO
-- GEN_BHV_VHDL_VAL:F
-- GEN_BHV_VERILOG_VAL:F
-- MGNTIMER:F
-- MGNCMPL:T
-- "DESDIR:C:/tmp/fff/smartgen\RAM2K16"
-- GEN_BEHV_MODULE:T
-- SMARTGEN_DIE:IS6X4M1
-- SMARTGEN_PACKAGE:fg484
-- WWIDTH:16
-- WDEPTH:2048
-- RWIDTH:16
-- RDEPTH:2048
-- CLKS:2
-- RESET_PN:RESET
-- RESET_POLARITY:0
-- INIT_RAM:F
-- DEFAULT_WORD:0x0000
-- WCLK_EDGE:RISE
-- RCLK_EDGE:RISE
-- CLKA_PN:CLKA
-- CLKB_PN:CLKB
-- WMODE1:0
-- WMODE2:0
-- PMODE1:0
-- PMODE2:0
-- DATAA_IN_PN:DINA
-- DATAA_OUT_PN:DOUTA
-- ADDRESSA_PN:ADDRA
-- RWA_PN:RWA
-- BLKA_PN:BLKA
-- DATAB_IN_PN:DINB
-- DATAB_OUT_PN:DOUTB
-- ADDRESSB_PN:ADDRB
-- RWB_PN:RWB
-- BLKB_PN:BLKB
-- WE_POLARITY:1
-- RE_POLARITY:1
-- PTYPE:2

-- _End_Comments_

