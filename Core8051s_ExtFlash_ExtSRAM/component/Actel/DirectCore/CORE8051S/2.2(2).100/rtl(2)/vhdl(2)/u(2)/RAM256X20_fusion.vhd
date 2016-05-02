-- Copyright (c) 2006 Actel Corporation.  All rights reserved.
--
-- Any use or redistribution in part or in whole must be handled in
-- accordance with the Actel license agreement and must be approved
-- in advance in writing.
-- Version: 7.1 7.1.0.14

library ieee;
use ieee.std_logic_1164.all;
library fusion;

entity RAM256X20 is
    port( WD : in std_logic_vector(19 downto 0); RD : out
        std_logic_vector(19 downto 0);WEN, REN : in std_logic;
        WADDR : in std_logic_vector(7 downto 0); RADDR : in
        std_logic_vector(7 downto 0);WCLK, RCLK : in std_logic) ;
end RAM256X20;


architecture DEF_ARCH of  RAM256X20 is

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component RAM512X18
    generic (MEMORYFILE:string := "");

        port(RADDR8, RADDR7, RADDR6, RADDR5, RADDR4, RADDR3,
        RADDR2, RADDR1, RADDR0, WADDR8, WADDR7, WADDR6, WADDR5,
        WADDR4, WADDR3, WADDR2, WADDR1, WADDR0, WD17, WD16, WD15,
        WD14, WD13, WD12, WD11, WD10, WD9, WD8, WD7, WD6, WD5,
        WD4, WD3, WD2, WD1, WD0, RW0, RW1, WW0, WW1, PIPE, REN,
        WEN, RCLK, WCLK, RESET : in std_logic := 'U'; RD17, RD16,
        RD15, RD14, RD13, RD12, RD11, RD10, RD9, RD8, RD7, RD6,
        RD5, RD4, RD3, RD2, RD1, RD0 : out std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

    signal WEAP, WEBP, VCC_1_net, GND_1_net : std_logic ;
    begin

    VCC_2_net : VCC port map(Y => VCC_1_net);
    GND_2_net : GND port map(Y => GND_1_net);
    WEBUBBLEB : INV
      port map(A => REN, Y => WEBP);
    RAM256X20_R0C0 : RAM512X18
      port map(RADDR8 => GND_1_net, RADDR7 => RADDR(7), RADDR6 =>
        RADDR(6), RADDR5 => RADDR(5), RADDR4 => RADDR(4),
        RADDR3 => RADDR(3), RADDR2 => RADDR(2), RADDR1 =>
        RADDR(1), RADDR0 => RADDR(0), WADDR8 => GND_1_net,
        WADDR7 => WADDR(7), WADDR6 => WADDR(6), WADDR5 =>
        WADDR(5), WADDR4 => WADDR(4), WADDR3 => WADDR(3),
        WADDR2 => WADDR(2), WADDR1 => WADDR(1), WADDR0 =>
        WADDR(0), WD17 => GND_1_net, WD16 => GND_1_net, WD15 =>
        GND_1_net, WD14 => GND_1_net, WD13 => GND_1_net, WD12 =>
        GND_1_net, WD11 => GND_1_net, WD10 => GND_1_net, WD9 =>
        WD(9), WD8 => WD(8), WD7 => WD(7), WD6 => WD(6), WD5 =>
        WD(5), WD4 => WD(4), WD3 => WD(3), WD2 => WD(2), WD1 =>
        WD(1), WD0 => WD(0), RW0 => GND_1_net, RW1 => VCC_1_net,
        WW0 => GND_1_net, WW1 => VCC_1_net, PIPE => GND_1_net,
        REN => WEBP, WEN => WEAP, RCLK => RCLK, WCLK => WCLK,
        RESET => VCC_1_net, RD17 => OPEN , RD16 => OPEN , RD15 =>
        OPEN , RD14 => OPEN , RD13 => OPEN , RD12 => OPEN ,
        RD11 => OPEN , RD10 => OPEN , RD9 => RD(9), RD8 => RD(8),
        RD7 => RD(7), RD6 => RD(6), RD5 => RD(5), RD4 => RD(4),
        RD3 => RD(3), RD2 => RD(2), RD1 => RD(1), RD0 => RD(0));
    WEBUBBLEA : INV
      port map(A => WEN, Y => WEAP);
    RAM256X20_R0C1 : RAM512X18
      port map(RADDR8 => GND_1_net, RADDR7 => RADDR(7), RADDR6 =>
        RADDR(6), RADDR5 => RADDR(5), RADDR4 => RADDR(4),
        RADDR3 => RADDR(3), RADDR2 => RADDR(2), RADDR1 =>
        RADDR(1), RADDR0 => RADDR(0), WADDR8 => GND_1_net,
        WADDR7 => WADDR(7), WADDR6 => WADDR(6), WADDR5 =>
        WADDR(5), WADDR4 => WADDR(4), WADDR3 => WADDR(3),
        WADDR2 => WADDR(2), WADDR1 => WADDR(1), WADDR0 =>
        WADDR(0), WD17 => GND_1_net, WD16 => GND_1_net, WD15 =>
        GND_1_net, WD14 => GND_1_net, WD13 => GND_1_net, WD12 =>
        GND_1_net, WD11 => GND_1_net, WD10 => GND_1_net, WD9 =>
        WD(19), WD8 => WD(18), WD7 => WD(17), WD6 => WD(16),
        WD5 => WD(15), WD4 => WD(14), WD3 => WD(13), WD2 =>
        WD(12), WD1 => WD(11), WD0 => WD(10), RW0 => GND_1_net,
        RW1 => VCC_1_net, WW0 => GND_1_net, WW1 => VCC_1_net,
        PIPE => GND_1_net, REN => WEBP, WEN => WEAP, RCLK => RCLK,
        WCLK => WCLK, RESET => VCC_1_net, RD17 => OPEN , RD16 =>
        OPEN , RD15 => OPEN , RD14 => OPEN , RD13 => OPEN ,
        RD12 => OPEN , RD11 => OPEN , RD10 => OPEN , RD9 =>
        RD(19), RD8 => RD(18), RD7 => RD(17), RD6 => RD(16),
        RD5 => RD(15), RD4 => RD(14), RD3 => RD(13), RD2 =>
        RD(12), RD1 => RD(11), RD0 => RD(10));
end DEF_ARCH;
