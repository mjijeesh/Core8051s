-- Version: v11.7 11.7.0.119

library ieee;
use ieee.std_logic_1164.all;
library fusion;
use fusion.all;

entity RAM4Kx8 is

    port( WD    : in    std_logic_vector(7 downto 0);
          RD    : out   std_logic_vector(7 downto 0);
          WEN   : in    std_logic;
          REN   : in    std_logic;
          WADDR : in    std_logic_vector(11 downto 0);
          RADDR : in    std_logic_vector(11 downto 0);
          WCLK  : in    std_logic;
          RCLK  : in    std_logic
        );

end RAM4Kx8;

architecture DEF_ARCH of RAM4Kx8 is 

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NAND3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component BUFF
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component RAM4K9
    generic (MEMORYFILE:string := "");

    port( ADDRA11 : in    std_logic := 'U';
          ADDRA10 : in    std_logic := 'U';
          ADDRA9  : in    std_logic := 'U';
          ADDRA8  : in    std_logic := 'U';
          ADDRA7  : in    std_logic := 'U';
          ADDRA6  : in    std_logic := 'U';
          ADDRA5  : in    std_logic := 'U';
          ADDRA4  : in    std_logic := 'U';
          ADDRA3  : in    std_logic := 'U';
          ADDRA2  : in    std_logic := 'U';
          ADDRA1  : in    std_logic := 'U';
          ADDRA0  : in    std_logic := 'U';
          ADDRB11 : in    std_logic := 'U';
          ADDRB10 : in    std_logic := 'U';
          ADDRB9  : in    std_logic := 'U';
          ADDRB8  : in    std_logic := 'U';
          ADDRB7  : in    std_logic := 'U';
          ADDRB6  : in    std_logic := 'U';
          ADDRB5  : in    std_logic := 'U';
          ADDRB4  : in    std_logic := 'U';
          ADDRB3  : in    std_logic := 'U';
          ADDRB2  : in    std_logic := 'U';
          ADDRB1  : in    std_logic := 'U';
          ADDRB0  : in    std_logic := 'U';
          DINA8   : in    std_logic := 'U';
          DINA7   : in    std_logic := 'U';
          DINA6   : in    std_logic := 'U';
          DINA5   : in    std_logic := 'U';
          DINA4   : in    std_logic := 'U';
          DINA3   : in    std_logic := 'U';
          DINA2   : in    std_logic := 'U';
          DINA1   : in    std_logic := 'U';
          DINA0   : in    std_logic := 'U';
          DINB8   : in    std_logic := 'U';
          DINB7   : in    std_logic := 'U';
          DINB6   : in    std_logic := 'U';
          DINB5   : in    std_logic := 'U';
          DINB4   : in    std_logic := 'U';
          DINB3   : in    std_logic := 'U';
          DINB2   : in    std_logic := 'U';
          DINB1   : in    std_logic := 'U';
          DINB0   : in    std_logic := 'U';
          WIDTHA0 : in    std_logic := 'U';
          WIDTHA1 : in    std_logic := 'U';
          WIDTHB0 : in    std_logic := 'U';
          WIDTHB1 : in    std_logic := 'U';
          PIPEA   : in    std_logic := 'U';
          PIPEB   : in    std_logic := 'U';
          WMODEA  : in    std_logic := 'U';
          WMODEB  : in    std_logic := 'U';
          BLKA    : in    std_logic := 'U';
          BLKB    : in    std_logic := 'U';
          WENA    : in    std_logic := 'U';
          WENB    : in    std_logic := 'U';
          CLKA    : in    std_logic := 'U';
          CLKB    : in    std_logic := 'U';
          RESET   : in    std_logic := 'U';
          DOUTA8  : out   std_logic;
          DOUTA7  : out   std_logic;
          DOUTA6  : out   std_logic;
          DOUTA5  : out   std_logic;
          DOUTA4  : out   std_logic;
          DOUTA3  : out   std_logic;
          DOUTA2  : out   std_logic;
          DOUTA1  : out   std_logic;
          DOUTA0  : out   std_logic;
          DOUTB8  : out   std_logic;
          DOUTB7  : out   std_logic;
          DOUTB6  : out   std_logic;
          DOUTB5  : out   std_logic;
          DOUTB4  : out   std_logic;
          DOUTB3  : out   std_logic;
          DOUTB2  : out   std_logic;
          DOUTB1  : out   std_logic;
          DOUTB0  : out   std_logic
        );
  end component;

  component NAND3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NAND3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NAND3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal WEAP, WEBP, \ADDRA_FF2[0]\, \ADDRA_FF2[1]\, 
        \ADDRA_FF2[2]\, \ADDRB_FF2[0]\, \ADDRB_FF2[1]\, 
        \ADDRB_FF2[2]\, \ENABLE_ADDRA[0]\, \ENABLE_ADDRA[1]\, 
        \ENABLE_ADDRA[2]\, \ENABLE_ADDRA[3]\, \ENABLE_ADDRA[4]\, 
        \ENABLE_ADDRA[5]\, \ENABLE_ADDRA[6]\, \ENABLE_ADDRA[7]\, 
        \ENABLE_ADDRB[0]\, \ENABLE_ADDRB[1]\, \ENABLE_ADDRB[2]\, 
        \ENABLE_ADDRB[3]\, \ENABLE_ADDRB[4]\, \ENABLE_ADDRB[5]\, 
        \ENABLE_ADDRB[6]\, \ENABLE_ADDRB[7]\, \BLKA_EN[0]\, 
        \BLKB_EN[0]\, \BLKA_EN[1]\, \BLKB_EN[1]\, \BLKA_EN[2]\, 
        \BLKB_EN[2]\, \BLKA_EN[3]\, \BLKB_EN[3]\, \BLKA_EN[4]\, 
        \BLKB_EN[4]\, \BLKA_EN[5]\, \BLKB_EN[5]\, \BLKA_EN[6]\, 
        \BLKB_EN[6]\, \BLKA_EN[7]\, \BLKB_EN[7]\, \READA_EN[0]\, 
        \READB_EN[0]\, \READA_EN[1]\, \READB_EN[1]\, 
        \READA_EN[2]\, \READB_EN[2]\, \READA_EN[3]\, 
        \READB_EN[3]\, \READA_EN[4]\, \READB_EN[4]\, 
        \READA_EN[5]\, \READB_EN[5]\, \READA_EN[6]\, 
        \READB_EN[6]\, \READA_EN[7]\, \READB_EN[7]\, 
        \QX_TEMPR0[0]\, \QX_TEMPR0[1]\, \QX_TEMPR0[2]\, 
        \QX_TEMPR0[3]\, \QX_TEMPR0[4]\, \QX_TEMPR0[5]\, 
        \QX_TEMPR0[6]\, \QX_TEMPR0[7]\, \QX_TEMPR1[0]\, 
        \QX_TEMPR1[1]\, \QX_TEMPR1[2]\, \QX_TEMPR1[3]\, 
        \QX_TEMPR1[4]\, \QX_TEMPR1[5]\, \QX_TEMPR1[6]\, 
        \QX_TEMPR1[7]\, \QX_TEMPR2[0]\, \QX_TEMPR2[1]\, 
        \QX_TEMPR2[2]\, \QX_TEMPR2[3]\, \QX_TEMPR2[4]\, 
        \QX_TEMPR2[5]\, \QX_TEMPR2[6]\, \QX_TEMPR2[7]\, 
        \QX_TEMPR3[0]\, \QX_TEMPR3[1]\, \QX_TEMPR3[2]\, 
        \QX_TEMPR3[3]\, \QX_TEMPR3[4]\, \QX_TEMPR3[5]\, 
        \QX_TEMPR3[6]\, \QX_TEMPR3[7]\, \QX_TEMPR4[0]\, 
        \QX_TEMPR4[1]\, \QX_TEMPR4[2]\, \QX_TEMPR4[3]\, 
        \QX_TEMPR4[4]\, \QX_TEMPR4[5]\, \QX_TEMPR4[6]\, 
        \QX_TEMPR4[7]\, \QX_TEMPR5[0]\, \QX_TEMPR5[1]\, 
        \QX_TEMPR5[2]\, \QX_TEMPR5[3]\, \QX_TEMPR5[4]\, 
        \QX_TEMPR5[5]\, \QX_TEMPR5[6]\, \QX_TEMPR5[7]\, 
        \QX_TEMPR6[0]\, \QX_TEMPR6[1]\, \QX_TEMPR6[2]\, 
        \QX_TEMPR6[3]\, \QX_TEMPR6[4]\, \QX_TEMPR6[5]\, 
        \QX_TEMPR6[6]\, \QX_TEMPR6[7]\, \QX_TEMPR7[0]\, 
        \QX_TEMPR7[1]\, \QX_TEMPR7[2]\, \QX_TEMPR7[3]\, 
        \QX_TEMPR7[4]\, \QX_TEMPR7[5]\, \QX_TEMPR7[6]\, 
        \QX_TEMPR7[7]\, BUFF_1_Y, BUFF_2_Y, BUFF_3_Y, BUFF_4_Y, 
        BUFF_0_Y, MX2_34_Y, MX2_30_Y, MX2_13_Y, MX2_9_Y, MX2_42_Y, 
        MX2_44_Y, MX2_40_Y, MX2_16_Y, MX2_14_Y, MX2_4_Y, MX2_23_Y, 
        MX2_32_Y, MX2_28_Y, MX2_17_Y, MX2_38_Y, MX2_25_Y, MX2_2_Y, 
        MX2_6_Y, MX2_45_Y, MX2_3_Y, MX2_7_Y, MX2_27_Y, MX2_0_Y, 
        MX2_41_Y, MX2_43_Y, MX2_35_Y, MX2_10_Y, MX2_24_Y, 
        MX2_12_Y, MX2_22_Y, MX2_39_Y, MX2_15_Y, MX2_1_Y, MX2_31_Y, 
        MX2_5_Y, MX2_11_Y, MX2_37_Y, MX2_20_Y, MX2_26_Y, MX2_36_Y, 
        MX2_19_Y, MX2_47_Y, MX2_33_Y, MX2_18_Y, MX2_29_Y, MX2_8_Y, 
        MX2_21_Y, MX2_46_Y, \VCC\, \GND\ : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;

    MX2_18 : MX2
      port map(A => \QX_TEMPR2[0]\, B => \QX_TEMPR3[0]\, S => 
        BUFF_1_Y, Y => MX2_18_Y);
    
    MX2_12 : MX2
      port map(A => \QX_TEMPR4[4]\, B => \QX_TEMPR5[4]\, S => 
        BUFF_2_Y, Y => MX2_12_Y);
    
    \MX2_RD[5]\ : MX2
      port map(A => MX2_7_Y, B => MX2_27_Y, S => \ADDRB_FF2[2]\, 
        Y => RD(5));
    
    \ORA_GATE[6]\ : OR2
      port map(A => \ENABLE_ADDRA[6]\, B => WEAP, Y => 
        \BLKA_EN[6]\);
    
    MX2_10 : MX2
      port map(A => MX2_43_Y, B => MX2_35_Y, S => BUFF_0_Y, Y => 
        MX2_10_Y);
    
    \NAND3A_ENABLE_ADDRB[3]\ : NAND3A
      port map(A => RADDR(11), B => RADDR(10), C => RADDR(9), Y
         => \ENABLE_ADDRB[3]\);
    
    \MX2_RD[2]\ : MX2
      port map(A => MX2_38_Y, B => MX2_25_Y, S => \ADDRB_FF2[2]\, 
        Y => RD(2));
    
    MX2_7 : MX2
      port map(A => MX2_45_Y, B => MX2_3_Y, S => BUFF_0_Y, Y => 
        MX2_7_Y);
    
    \ORA_READ_EN_GATE[3]\ : OR2A
      port map(A => WEAP, B => \ENABLE_ADDRA[3]\, Y => 
        \READA_EN[3]\);
    
    \ORA_READ_EN_GATE[0]\ : OR2A
      port map(A => WEAP, B => \ENABLE_ADDRA[0]\, Y => 
        \READA_EN[0]\);
    
    MX2_15 : MX2
      port map(A => \QX_TEMPR2[1]\, B => \QX_TEMPR3[1]\, S => 
        BUFF_1_Y, Y => MX2_15_Y);
    
    \ORA_GATE[0]\ : OR2
      port map(A => \ENABLE_ADDRA[0]\, B => WEAP, Y => 
        \BLKA_EN[0]\);
    
    MX2_26 : MX2
      port map(A => MX2_37_Y, B => MX2_20_Y, S => BUFF_0_Y, Y => 
        MX2_26_Y);
    
    BUFF_0 : BUFF
      port map(A => \ADDRB_FF2[1]\, Y => BUFF_0_Y);
    
    \AFF1[1]\ : DFN1E1C0
      port map(D => WADDR(10), CLK => WCLK, CLR => \VCC\, E => 
        \READA_EN[1]\, Q => \ADDRA_FF2[1]\);
    
    \ORA_READ_EN_GATE[2]\ : OR2A
      port map(A => WEAP, B => \ENABLE_ADDRA[2]\, Y => 
        \READA_EN[2]\);
    
    \ORB_GATE[2]\ : OR2
      port map(A => \ENABLE_ADDRB[2]\, B => WEBP, Y => 
        \BLKB_EN[2]\);
    
    MX2_43 : MX2
      port map(A => \QX_TEMPR0[4]\, B => \QX_TEMPR1[4]\, S => 
        BUFF_2_Y, Y => MX2_43_Y);
    
    \ORB_GATE[3]\ : OR2
      port map(A => \ENABLE_ADDRB[3]\, B => WEBP, Y => 
        \BLKB_EN[3]\);
    
    MX2_47 : MX2
      port map(A => \QX_TEMPR6[7]\, B => \QX_TEMPR7[7]\, S => 
        BUFF_3_Y, Y => MX2_47_Y);
    
    \MX2_RD[4]\ : MX2
      port map(A => MX2_10_Y, B => MX2_24_Y, S => \ADDRB_FF2[2]\, 
        Y => RD(4));
    
    \ORA_GATE[5]\ : OR2
      port map(A => \ENABLE_ADDRA[5]\, B => WEAP, Y => 
        \BLKA_EN[5]\);
    
    \ORA_READ_EN_GATE[7]\ : OR2A
      port map(A => WEAP, B => \ENABLE_ADDRA[7]\, Y => 
        \READA_EN[7]\);
    
    MX2_16 : MX2
      port map(A => \QX_TEMPR2[3]\, B => \QX_TEMPR3[3]\, S => 
        BUFF_2_Y, Y => MX2_16_Y);
    
    MX2_34 : MX2
      port map(A => \QX_TEMPR0[6]\, B => \QX_TEMPR1[6]\, S => 
        BUFF_3_Y, Y => MX2_34_Y);
    
    RAM4Kx8_R1C0 : RAM4K9
      port map(ADDRA11 => \GND\, ADDRA10 => \GND\, ADDRA9 => 
        \GND\, ADDRA8 => WADDR(8), ADDRA7 => WADDR(7), ADDRA6 => 
        WADDR(6), ADDRA5 => WADDR(5), ADDRA4 => WADDR(4), ADDRA3
         => WADDR(3), ADDRA2 => WADDR(2), ADDRA1 => WADDR(1), 
        ADDRA0 => WADDR(0), ADDRB11 => \GND\, ADDRB10 => \GND\, 
        ADDRB9 => \GND\, ADDRB8 => RADDR(8), ADDRB7 => RADDR(7), 
        ADDRB6 => RADDR(6), ADDRB5 => RADDR(5), ADDRB4 => 
        RADDR(4), ADDRB3 => RADDR(3), ADDRB2 => RADDR(2), ADDRB1
         => RADDR(1), ADDRB0 => RADDR(0), DINA8 => \GND\, DINA7
         => WD(7), DINA6 => WD(6), DINA5 => WD(5), DINA4 => WD(4), 
        DINA3 => WD(3), DINA2 => WD(2), DINA1 => WD(1), DINA0 => 
        WD(0), DINB8 => \GND\, DINB7 => \GND\, DINB6 => \GND\, 
        DINB5 => \GND\, DINB4 => \GND\, DINB3 => \GND\, DINB2 => 
        \GND\, DINB1 => \GND\, DINB0 => \GND\, WIDTHA0 => \VCC\, 
        WIDTHA1 => \VCC\, WIDTHB0 => \VCC\, WIDTHB1 => \VCC\, 
        PIPEA => \GND\, PIPEB => \GND\, WMODEA => \GND\, WMODEB
         => \GND\, BLKA => \BLKA_EN[1]\, BLKB => \BLKB_EN[1]\, 
        WENA => \GND\, WENB => \VCC\, CLKA => WCLK, CLKB => RCLK, 
        RESET => \VCC\, DOUTA8 => OPEN, DOUTA7 => OPEN, DOUTA6
         => OPEN, DOUTA5 => OPEN, DOUTA4 => OPEN, DOUTA3 => OPEN, 
        DOUTA2 => OPEN, DOUTA1 => OPEN, DOUTA0 => OPEN, DOUTB8
         => OPEN, DOUTB7 => \QX_TEMPR1[7]\, DOUTB6 => 
        \QX_TEMPR1[6]\, DOUTB5 => \QX_TEMPR1[5]\, DOUTB4 => 
        \QX_TEMPR1[4]\, DOUTB3 => \QX_TEMPR1[3]\, DOUTB2 => 
        \QX_TEMPR1[2]\, DOUTB1 => \QX_TEMPR1[1]\, DOUTB0 => 
        \QX_TEMPR1[0]\);
    
    MX2_2 : MX2
      port map(A => \QX_TEMPR4[2]\, B => \QX_TEMPR5[2]\, S => 
        BUFF_1_Y, Y => MX2_2_Y);
    
    RAM4Kx8_R5C0 : RAM4K9
      port map(ADDRA11 => \GND\, ADDRA10 => \GND\, ADDRA9 => 
        \GND\, ADDRA8 => WADDR(8), ADDRA7 => WADDR(7), ADDRA6 => 
        WADDR(6), ADDRA5 => WADDR(5), ADDRA4 => WADDR(4), ADDRA3
         => WADDR(3), ADDRA2 => WADDR(2), ADDRA1 => WADDR(1), 
        ADDRA0 => WADDR(0), ADDRB11 => \GND\, ADDRB10 => \GND\, 
        ADDRB9 => \GND\, ADDRB8 => RADDR(8), ADDRB7 => RADDR(7), 
        ADDRB6 => RADDR(6), ADDRB5 => RADDR(5), ADDRB4 => 
        RADDR(4), ADDRB3 => RADDR(3), ADDRB2 => RADDR(2), ADDRB1
         => RADDR(1), ADDRB0 => RADDR(0), DINA8 => \GND\, DINA7
         => WD(7), DINA6 => WD(6), DINA5 => WD(5), DINA4 => WD(4), 
        DINA3 => WD(3), DINA2 => WD(2), DINA1 => WD(1), DINA0 => 
        WD(0), DINB8 => \GND\, DINB7 => \GND\, DINB6 => \GND\, 
        DINB5 => \GND\, DINB4 => \GND\, DINB3 => \GND\, DINB2 => 
        \GND\, DINB1 => \GND\, DINB0 => \GND\, WIDTHA0 => \VCC\, 
        WIDTHA1 => \VCC\, WIDTHB0 => \VCC\, WIDTHB1 => \VCC\, 
        PIPEA => \GND\, PIPEB => \GND\, WMODEA => \GND\, WMODEB
         => \GND\, BLKA => \BLKA_EN[5]\, BLKB => \BLKB_EN[5]\, 
        WENA => \GND\, WENB => \VCC\, CLKA => WCLK, CLKB => RCLK, 
        RESET => \VCC\, DOUTA8 => OPEN, DOUTA7 => OPEN, DOUTA6
         => OPEN, DOUTA5 => OPEN, DOUTA4 => OPEN, DOUTA3 => OPEN, 
        DOUTA2 => OPEN, DOUTA1 => OPEN, DOUTA0 => OPEN, DOUTB8
         => OPEN, DOUTB7 => \QX_TEMPR5[7]\, DOUTB6 => 
        \QX_TEMPR5[6]\, DOUTB5 => \QX_TEMPR5[5]\, DOUTB4 => 
        \QX_TEMPR5[4]\, DOUTB3 => \QX_TEMPR5[3]\, DOUTB2 => 
        \QX_TEMPR5[2]\, DOUTB1 => \QX_TEMPR5[1]\, DOUTB0 => 
        \QX_TEMPR5[0]\);
    
    MX2_41 : MX2
      port map(A => \QX_TEMPR6[5]\, B => \QX_TEMPR7[5]\, S => 
        BUFF_3_Y, Y => MX2_41_Y);
    
    MX2_42 : MX2
      port map(A => \QX_TEMPR4[6]\, B => \QX_TEMPR5[6]\, S => 
        BUFF_3_Y, Y => MX2_42_Y);
    
    \ORB_GATE[1]\ : OR2
      port map(A => \ENABLE_ADDRB[1]\, B => WEBP, Y => 
        \BLKB_EN[1]\);
    
    \NAND3B_ENABLE_ADDRA[2]\ : NAND3B
      port map(A => WADDR(11), B => WADDR(9), C => WADDR(10), Y
         => \ENABLE_ADDRA[2]\);
    
    MX2_1 : MX2
      port map(A => MX2_39_Y, B => MX2_15_Y, S => BUFF_4_Y, Y => 
        MX2_1_Y);
    
    \NAND3B_ENABLE_ADDRA[4]\ : NAND3B
      port map(A => WADDR(9), B => WADDR(10), C => WADDR(11), Y
         => \ENABLE_ADDRA[4]\);
    
    MX2_40 : MX2
      port map(A => \QX_TEMPR0[3]\, B => \QX_TEMPR1[3]\, S => 
        BUFF_2_Y, Y => MX2_40_Y);
    
    \ORA_READ_EN_GATE[6]\ : OR2A
      port map(A => WEAP, B => \ENABLE_ADDRA[6]\, Y => 
        \READA_EN[6]\);
    
    \NAND3B_ENABLE_ADDRB[1]\ : NAND3B
      port map(A => RADDR(11), B => RADDR(10), C => RADDR(9), Y
         => \ENABLE_ADDRB[1]\);
    
    \ORA_READ_EN_GATE[1]\ : OR2A
      port map(A => WEAP, B => \ENABLE_ADDRA[1]\, Y => 
        \READA_EN[1]\);
    
    \ORB_GATE[7]\ : OR2
      port map(A => \ENABLE_ADDRB[7]\, B => WEBP, Y => 
        \BLKB_EN[7]\);
    
    WEBUBBLEA : INV
      port map(A => WEN, Y => WEAP);
    
    MX2_45 : MX2
      port map(A => \QX_TEMPR0[5]\, B => \QX_TEMPR1[5]\, S => 
        BUFF_2_Y, Y => MX2_45_Y);
    
    \ORA_GATE[2]\ : OR2
      port map(A => \ENABLE_ADDRA[2]\, B => WEAP, Y => 
        \BLKA_EN[2]\);
    
    RAM4Kx8_R7C0 : RAM4K9
      port map(ADDRA11 => \GND\, ADDRA10 => \GND\, ADDRA9 => 
        \GND\, ADDRA8 => WADDR(8), ADDRA7 => WADDR(7), ADDRA6 => 
        WADDR(6), ADDRA5 => WADDR(5), ADDRA4 => WADDR(4), ADDRA3
         => WADDR(3), ADDRA2 => WADDR(2), ADDRA1 => WADDR(1), 
        ADDRA0 => WADDR(0), ADDRB11 => \GND\, ADDRB10 => \GND\, 
        ADDRB9 => \GND\, ADDRB8 => RADDR(8), ADDRB7 => RADDR(7), 
        ADDRB6 => RADDR(6), ADDRB5 => RADDR(5), ADDRB4 => 
        RADDR(4), ADDRB3 => RADDR(3), ADDRB2 => RADDR(2), ADDRB1
         => RADDR(1), ADDRB0 => RADDR(0), DINA8 => \GND\, DINA7
         => WD(7), DINA6 => WD(6), DINA5 => WD(5), DINA4 => WD(4), 
        DINA3 => WD(3), DINA2 => WD(2), DINA1 => WD(1), DINA0 => 
        WD(0), DINB8 => \GND\, DINB7 => \GND\, DINB6 => \GND\, 
        DINB5 => \GND\, DINB4 => \GND\, DINB3 => \GND\, DINB2 => 
        \GND\, DINB1 => \GND\, DINB0 => \GND\, WIDTHA0 => \VCC\, 
        WIDTHA1 => \VCC\, WIDTHB0 => \VCC\, WIDTHB1 => \VCC\, 
        PIPEA => \GND\, PIPEB => \GND\, WMODEA => \GND\, WMODEB
         => \GND\, BLKA => \BLKA_EN[7]\, BLKB => \BLKB_EN[7]\, 
        WENA => \GND\, WENB => \VCC\, CLKA => WCLK, CLKB => RCLK, 
        RESET => \VCC\, DOUTA8 => OPEN, DOUTA7 => OPEN, DOUTA6
         => OPEN, DOUTA5 => OPEN, DOUTA4 => OPEN, DOUTA3 => OPEN, 
        DOUTA2 => OPEN, DOUTA1 => OPEN, DOUTA0 => OPEN, DOUTB8
         => OPEN, DOUTB7 => \QX_TEMPR7[7]\, DOUTB6 => 
        \QX_TEMPR7[6]\, DOUTB5 => \QX_TEMPR7[5]\, DOUTB4 => 
        \QX_TEMPR7[4]\, DOUTB3 => \QX_TEMPR7[3]\, DOUTB2 => 
        \QX_TEMPR7[2]\, DOUTB1 => \QX_TEMPR7[1]\, DOUTB0 => 
        \QX_TEMPR7[0]\);
    
    \ORA_GATE[3]\ : OR2
      port map(A => \ENABLE_ADDRA[3]\, B => WEAP, Y => 
        \BLKA_EN[3]\);
    
    \ORB_READ_EN_GATE[3]\ : OR2A
      port map(A => WEBP, B => \ENABLE_ADDRB[3]\, Y => 
        \READB_EN[3]\);
    
    \ORB_READ_EN_GATE[0]\ : OR2A
      port map(A => WEBP, B => \ENABLE_ADDRB[0]\, Y => 
        \READB_EN[0]\);
    
    \NAND3A_ENABLE_ADDRA[6]\ : NAND3A
      port map(A => WADDR(9), B => WADDR(10), C => WADDR(11), Y
         => \ENABLE_ADDRA[6]\);
    
    MX2_0 : MX2
      port map(A => \QX_TEMPR4[5]\, B => \QX_TEMPR5[5]\, S => 
        BUFF_3_Y, Y => MX2_0_Y);
    
    \ORB_GATE[4]\ : OR2
      port map(A => \ENABLE_ADDRB[4]\, B => WEBP, Y => 
        \BLKB_EN[4]\);
    
    \BFF1[2]\ : DFN1E1C0
      port map(D => RADDR(11), CLK => RCLK, CLR => \VCC\, E => 
        \READB_EN[2]\, Q => \ADDRB_FF2[2]\);
    
    \NAND3B_ENABLE_ADDRA[1]\ : NAND3B
      port map(A => WADDR(11), B => WADDR(10), C => WADDR(9), Y
         => \ENABLE_ADDRA[1]\);
    
    BUFF_1 : BUFF
      port map(A => \ADDRB_FF2[0]\, Y => BUFF_1_Y);
    
    RAM4Kx8_R6C0 : RAM4K9
      port map(ADDRA11 => \GND\, ADDRA10 => \GND\, ADDRA9 => 
        \GND\, ADDRA8 => WADDR(8), ADDRA7 => WADDR(7), ADDRA6 => 
        WADDR(6), ADDRA5 => WADDR(5), ADDRA4 => WADDR(4), ADDRA3
         => WADDR(3), ADDRA2 => WADDR(2), ADDRA1 => WADDR(1), 
        ADDRA0 => WADDR(0), ADDRB11 => \GND\, ADDRB10 => \GND\, 
        ADDRB9 => \GND\, ADDRB8 => RADDR(8), ADDRB7 => RADDR(7), 
        ADDRB6 => RADDR(6), ADDRB5 => RADDR(5), ADDRB4 => 
        RADDR(4), ADDRB3 => RADDR(3), ADDRB2 => RADDR(2), ADDRB1
         => RADDR(1), ADDRB0 => RADDR(0), DINA8 => \GND\, DINA7
         => WD(7), DINA6 => WD(6), DINA5 => WD(5), DINA4 => WD(4), 
        DINA3 => WD(3), DINA2 => WD(2), DINA1 => WD(1), DINA0 => 
        WD(0), DINB8 => \GND\, DINB7 => \GND\, DINB6 => \GND\, 
        DINB5 => \GND\, DINB4 => \GND\, DINB3 => \GND\, DINB2 => 
        \GND\, DINB1 => \GND\, DINB0 => \GND\, WIDTHA0 => \VCC\, 
        WIDTHA1 => \VCC\, WIDTHB0 => \VCC\, WIDTHB1 => \VCC\, 
        PIPEA => \GND\, PIPEB => \GND\, WMODEA => \GND\, WMODEB
         => \GND\, BLKA => \BLKA_EN[6]\, BLKB => \BLKB_EN[6]\, 
        WENA => \GND\, WENB => \VCC\, CLKA => WCLK, CLKB => RCLK, 
        RESET => \VCC\, DOUTA8 => OPEN, DOUTA7 => OPEN, DOUTA6
         => OPEN, DOUTA5 => OPEN, DOUTA4 => OPEN, DOUTA3 => OPEN, 
        DOUTA2 => OPEN, DOUTA1 => OPEN, DOUTA0 => OPEN, DOUTB8
         => OPEN, DOUTB7 => \QX_TEMPR6[7]\, DOUTB6 => 
        \QX_TEMPR6[6]\, DOUTB5 => \QX_TEMPR6[5]\, DOUTB4 => 
        \QX_TEMPR6[4]\, DOUTB3 => \QX_TEMPR6[3]\, DOUTB2 => 
        \QX_TEMPR6[2]\, DOUTB1 => \QX_TEMPR6[1]\, DOUTB0 => 
        \QX_TEMPR6[0]\);
    
    RAM4Kx8_R4C0 : RAM4K9
      port map(ADDRA11 => \GND\, ADDRA10 => \GND\, ADDRA9 => 
        \GND\, ADDRA8 => WADDR(8), ADDRA7 => WADDR(7), ADDRA6 => 
        WADDR(6), ADDRA5 => WADDR(5), ADDRA4 => WADDR(4), ADDRA3
         => WADDR(3), ADDRA2 => WADDR(2), ADDRA1 => WADDR(1), 
        ADDRA0 => WADDR(0), ADDRB11 => \GND\, ADDRB10 => \GND\, 
        ADDRB9 => \GND\, ADDRB8 => RADDR(8), ADDRB7 => RADDR(7), 
        ADDRB6 => RADDR(6), ADDRB5 => RADDR(5), ADDRB4 => 
        RADDR(4), ADDRB3 => RADDR(3), ADDRB2 => RADDR(2), ADDRB1
         => RADDR(1), ADDRB0 => RADDR(0), DINA8 => \GND\, DINA7
         => WD(7), DINA6 => WD(6), DINA5 => WD(5), DINA4 => WD(4), 
        DINA3 => WD(3), DINA2 => WD(2), DINA1 => WD(1), DINA0 => 
        WD(0), DINB8 => \GND\, DINB7 => \GND\, DINB6 => \GND\, 
        DINB5 => \GND\, DINB4 => \GND\, DINB3 => \GND\, DINB2 => 
        \GND\, DINB1 => \GND\, DINB0 => \GND\, WIDTHA0 => \VCC\, 
        WIDTHA1 => \VCC\, WIDTHB0 => \VCC\, WIDTHB1 => \VCC\, 
        PIPEA => \GND\, PIPEB => \GND\, WMODEA => \GND\, WMODEB
         => \GND\, BLKA => \BLKA_EN[4]\, BLKB => \BLKB_EN[4]\, 
        WENA => \GND\, WENB => \VCC\, CLKA => WCLK, CLKB => RCLK, 
        RESET => \VCC\, DOUTA8 => OPEN, DOUTA7 => OPEN, DOUTA6
         => OPEN, DOUTA5 => OPEN, DOUTA4 => OPEN, DOUTA3 => OPEN, 
        DOUTA2 => OPEN, DOUTA1 => OPEN, DOUTA0 => OPEN, DOUTB8
         => OPEN, DOUTB7 => \QX_TEMPR4[7]\, DOUTB6 => 
        \QX_TEMPR4[6]\, DOUTB5 => \QX_TEMPR4[5]\, DOUTB4 => 
        \QX_TEMPR4[4]\, DOUTB3 => \QX_TEMPR4[3]\, DOUTB2 => 
        \QX_TEMPR4[2]\, DOUTB1 => \QX_TEMPR4[1]\, DOUTB0 => 
        \QX_TEMPR4[0]\);
    
    MX2_24 : MX2
      port map(A => MX2_12_Y, B => MX2_22_Y, S => BUFF_0_Y, Y => 
        MX2_24_Y);
    
    \ORB_READ_EN_GATE[2]\ : OR2A
      port map(A => WEBP, B => \ENABLE_ADDRB[2]\, Y => 
        \READB_EN[2]\);
    
    MX2_46 : MX2
      port map(A => \QX_TEMPR6[0]\, B => \QX_TEMPR7[0]\, S => 
        BUFF_1_Y, Y => MX2_46_Y);
    
    \ORB_READ_EN_GATE[7]\ : OR2A
      port map(A => WEBP, B => \ENABLE_ADDRB[7]\, Y => 
        \READB_EN[7]\);
    
    \ORA_READ_EN_GATE[4]\ : OR2A
      port map(A => WEAP, B => \ENABLE_ADDRA[4]\, Y => 
        \READA_EN[4]\);
    
    \MX2_RD[7]\ : MX2
      port map(A => MX2_26_Y, B => MX2_36_Y, S => \ADDRB_FF2[2]\, 
        Y => RD(7));
    
    \ORA_GATE[1]\ : OR2
      port map(A => \ENABLE_ADDRA[1]\, B => WEAP, Y => 
        \BLKA_EN[1]\);
    
    MX2_5 : MX2
      port map(A => \QX_TEMPR4[1]\, B => \QX_TEMPR5[1]\, S => 
        BUFF_1_Y, Y => MX2_5_Y);
    
    MX2_14 : MX2
      port map(A => MX2_40_Y, B => MX2_16_Y, S => BUFF_4_Y, Y => 
        MX2_14_Y);
    
    RAM4Kx8_R3C0 : RAM4K9
      port map(ADDRA11 => \GND\, ADDRA10 => \GND\, ADDRA9 => 
        \GND\, ADDRA8 => WADDR(8), ADDRA7 => WADDR(7), ADDRA6 => 
        WADDR(6), ADDRA5 => WADDR(5), ADDRA4 => WADDR(4), ADDRA3
         => WADDR(3), ADDRA2 => WADDR(2), ADDRA1 => WADDR(1), 
        ADDRA0 => WADDR(0), ADDRB11 => \GND\, ADDRB10 => \GND\, 
        ADDRB9 => \GND\, ADDRB8 => RADDR(8), ADDRB7 => RADDR(7), 
        ADDRB6 => RADDR(6), ADDRB5 => RADDR(5), ADDRB4 => 
        RADDR(4), ADDRB3 => RADDR(3), ADDRB2 => RADDR(2), ADDRB1
         => RADDR(1), ADDRB0 => RADDR(0), DINA8 => \GND\, DINA7
         => WD(7), DINA6 => WD(6), DINA5 => WD(5), DINA4 => WD(4), 
        DINA3 => WD(3), DINA2 => WD(2), DINA1 => WD(1), DINA0 => 
        WD(0), DINB8 => \GND\, DINB7 => \GND\, DINB6 => \GND\, 
        DINB5 => \GND\, DINB4 => \GND\, DINB3 => \GND\, DINB2 => 
        \GND\, DINB1 => \GND\, DINB0 => \GND\, WIDTHA0 => \VCC\, 
        WIDTHA1 => \VCC\, WIDTHB0 => \VCC\, WIDTHB1 => \VCC\, 
        PIPEA => \GND\, PIPEB => \GND\, WMODEA => \GND\, WMODEB
         => \GND\, BLKA => \BLKA_EN[3]\, BLKB => \BLKB_EN[3]\, 
        WENA => \GND\, WENB => \VCC\, CLKA => WCLK, CLKB => RCLK, 
        RESET => \VCC\, DOUTA8 => OPEN, DOUTA7 => OPEN, DOUTA6
         => OPEN, DOUTA5 => OPEN, DOUTA4 => OPEN, DOUTA3 => OPEN, 
        DOUTA2 => OPEN, DOUTA1 => OPEN, DOUTA0 => OPEN, DOUTB8
         => OPEN, DOUTB7 => \QX_TEMPR3[7]\, DOUTB6 => 
        \QX_TEMPR3[6]\, DOUTB5 => \QX_TEMPR3[5]\, DOUTB4 => 
        \QX_TEMPR3[4]\, DOUTB3 => \QX_TEMPR3[3]\, DOUTB2 => 
        \QX_TEMPR3[2]\, DOUTB1 => \QX_TEMPR3[1]\, DOUTB0 => 
        \QX_TEMPR3[0]\);
    
    MX2_33 : MX2
      port map(A => \QX_TEMPR0[0]\, B => \QX_TEMPR1[0]\, S => 
        BUFF_1_Y, Y => MX2_33_Y);
    
    \ORA_GATE[7]\ : OR2
      port map(A => \ENABLE_ADDRA[7]\, B => WEAP, Y => 
        \BLKA_EN[7]\);
    
    \NAND3A_ENABLE_ADDRA[5]\ : NAND3A
      port map(A => WADDR(10), B => WADDR(11), C => WADDR(9), Y
         => \ENABLE_ADDRA[5]\);
    
    MX2_9 : MX2
      port map(A => MX2_42_Y, B => MX2_44_Y, S => BUFF_0_Y, Y => 
        MX2_9_Y);
    
    \ORA_READ_EN_GATE[5]\ : OR2A
      port map(A => WEAP, B => \ENABLE_ADDRA[5]\, Y => 
        \READA_EN[5]\);
    
    MX2_37 : MX2
      port map(A => \QX_TEMPR0[7]\, B => \QX_TEMPR1[7]\, S => 
        BUFF_3_Y, Y => MX2_37_Y);
    
    MX2_4 : MX2
      port map(A => MX2_23_Y, B => MX2_32_Y, S => BUFF_4_Y, Y => 
        MX2_4_Y);
    
    \ORA_GATE[4]\ : OR2
      port map(A => \ENABLE_ADDRA[4]\, B => WEAP, Y => 
        \BLKA_EN[4]\);
    
    \ORB_READ_EN_GATE[6]\ : OR2A
      port map(A => WEBP, B => \ENABLE_ADDRB[6]\, Y => 
        \READB_EN[6]\);
    
    \MX2_RD[0]\ : MX2
      port map(A => MX2_29_Y, B => MX2_8_Y, S => \ADDRB_FF2[2]\, 
        Y => RD(0));
    
    \ORB_READ_EN_GATE[1]\ : OR2A
      port map(A => WEBP, B => \ENABLE_ADDRB[1]\, Y => 
        \READB_EN[1]\);
    
    RAM4Kx8_R0C0 : RAM4K9
      port map(ADDRA11 => \GND\, ADDRA10 => \GND\, ADDRA9 => 
        \GND\, ADDRA8 => WADDR(8), ADDRA7 => WADDR(7), ADDRA6 => 
        WADDR(6), ADDRA5 => WADDR(5), ADDRA4 => WADDR(4), ADDRA3
         => WADDR(3), ADDRA2 => WADDR(2), ADDRA1 => WADDR(1), 
        ADDRA0 => WADDR(0), ADDRB11 => \GND\, ADDRB10 => \GND\, 
        ADDRB9 => \GND\, ADDRB8 => RADDR(8), ADDRB7 => RADDR(7), 
        ADDRB6 => RADDR(6), ADDRB5 => RADDR(5), ADDRB4 => 
        RADDR(4), ADDRB3 => RADDR(3), ADDRB2 => RADDR(2), ADDRB1
         => RADDR(1), ADDRB0 => RADDR(0), DINA8 => \GND\, DINA7
         => WD(7), DINA6 => WD(6), DINA5 => WD(5), DINA4 => WD(4), 
        DINA3 => WD(3), DINA2 => WD(2), DINA1 => WD(1), DINA0 => 
        WD(0), DINB8 => \GND\, DINB7 => \GND\, DINB6 => \GND\, 
        DINB5 => \GND\, DINB4 => \GND\, DINB3 => \GND\, DINB2 => 
        \GND\, DINB1 => \GND\, DINB0 => \GND\, WIDTHA0 => \VCC\, 
        WIDTHA1 => \VCC\, WIDTHB0 => \VCC\, WIDTHB1 => \VCC\, 
        PIPEA => \GND\, PIPEB => \GND\, WMODEA => \GND\, WMODEB
         => \GND\, BLKA => \BLKA_EN[0]\, BLKB => \BLKB_EN[0]\, 
        WENA => \GND\, WENB => \VCC\, CLKA => WCLK, CLKB => RCLK, 
        RESET => \VCC\, DOUTA8 => OPEN, DOUTA7 => OPEN, DOUTA6
         => OPEN, DOUTA5 => OPEN, DOUTA4 => OPEN, DOUTA3 => OPEN, 
        DOUTA2 => OPEN, DOUTA1 => OPEN, DOUTA0 => OPEN, DOUTB8
         => OPEN, DOUTB7 => \QX_TEMPR0[7]\, DOUTB6 => 
        \QX_TEMPR0[6]\, DOUTB5 => \QX_TEMPR0[5]\, DOUTB4 => 
        \QX_TEMPR0[4]\, DOUTB3 => \QX_TEMPR0[3]\, DOUTB2 => 
        \QX_TEMPR0[2]\, DOUTB1 => \QX_TEMPR0[1]\, DOUTB0 => 
        \QX_TEMPR0[0]\);
    
    WEBUBBLEB : INV
      port map(A => REN, Y => WEBP);
    
    MX2_39 : MX2
      port map(A => \QX_TEMPR0[1]\, B => \QX_TEMPR1[1]\, S => 
        BUFF_1_Y, Y => MX2_39_Y);
    
    \AFF1[2]\ : DFN1E1C0
      port map(D => WADDR(11), CLK => WCLK, CLR => \VCC\, E => 
        \READA_EN[2]\, Q => \ADDRA_FF2[2]\);
    
    MX2_31 : MX2
      port map(A => MX2_5_Y, B => MX2_11_Y, S => BUFF_4_Y, Y => 
        MX2_31_Y);
    
    \NAND3A_ENABLE_ADDRA[3]\ : NAND3A
      port map(A => WADDR(11), B => WADDR(10), C => WADDR(9), Y
         => \ENABLE_ADDRA[3]\);
    
    MX2_38 : MX2
      port map(A => MX2_28_Y, B => MX2_17_Y, S => BUFF_4_Y, Y => 
        MX2_38_Y);
    
    MX2_32 : MX2
      port map(A => \QX_TEMPR6[3]\, B => \QX_TEMPR7[3]\, S => 
        BUFF_2_Y, Y => MX2_32_Y);
    
    \NAND3A_ENABLE_ADDRB[6]\ : NAND3A
      port map(A => RADDR(9), B => RADDR(10), C => RADDR(11), Y
         => \ENABLE_ADDRB[6]\);
    
    MX2_30 : MX2
      port map(A => \QX_TEMPR2[6]\, B => \QX_TEMPR3[6]\, S => 
        BUFF_3_Y, Y => MX2_30_Y);
    
    \BFF1[0]\ : DFN1E1C0
      port map(D => RADDR(9), CLK => RCLK, CLR => \VCC\, E => 
        \READB_EN[0]\, Q => \ADDRB_FF2[0]\);
    
    \MX2_RD[6]\ : MX2
      port map(A => MX2_13_Y, B => MX2_9_Y, S => \ADDRB_FF2[2]\, 
        Y => RD(6));
    
    \NAND3B_ENABLE_ADDRB[4]\ : NAND3B
      port map(A => RADDR(9), B => RADDR(10), C => RADDR(11), Y
         => \ENABLE_ADDRB[4]\);
    
    \NAND3_ENABLE_ADDRB[7]\ : NAND3
      port map(A => RADDR(11), B => RADDR(10), C => RADDR(9), Y
         => \ENABLE_ADDRB[7]\);
    
    MX2_35 : MX2
      port map(A => \QX_TEMPR2[4]\, B => \QX_TEMPR3[4]\, S => 
        BUFF_2_Y, Y => MX2_35_Y);
    
    \NAND3C_ENABLE_ADDRA[0]\ : NAND3C
      port map(A => WADDR(11), B => WADDR(10), C => WADDR(9), Y
         => \ENABLE_ADDRA[0]\);
    
    \ORB_READ_EN_GATE[4]\ : OR2A
      port map(A => WEBP, B => \ENABLE_ADDRB[4]\, Y => 
        \READB_EN[4]\);
    
    MX2_23 : MX2
      port map(A => \QX_TEMPR4[3]\, B => \QX_TEMPR5[3]\, S => 
        BUFF_2_Y, Y => MX2_23_Y);
    
    MX2_6 : MX2
      port map(A => \QX_TEMPR6[2]\, B => \QX_TEMPR7[2]\, S => 
        BUFF_2_Y, Y => MX2_6_Y);
    
    MX2_44 : MX2
      port map(A => \QX_TEMPR6[6]\, B => \QX_TEMPR7[6]\, S => 
        BUFF_3_Y, Y => MX2_44_Y);
    
    \NAND3B_ENABLE_ADDRB[2]\ : NAND3B
      port map(A => RADDR(11), B => RADDR(9), C => RADDR(10), Y
         => \ENABLE_ADDRB[2]\);
    
    \ORB_GATE[6]\ : OR2
      port map(A => \ENABLE_ADDRB[6]\, B => WEBP, Y => 
        \BLKB_EN[6]\);
    
    RAM4Kx8_R2C0 : RAM4K9
      port map(ADDRA11 => \GND\, ADDRA10 => \GND\, ADDRA9 => 
        \GND\, ADDRA8 => WADDR(8), ADDRA7 => WADDR(7), ADDRA6 => 
        WADDR(6), ADDRA5 => WADDR(5), ADDRA4 => WADDR(4), ADDRA3
         => WADDR(3), ADDRA2 => WADDR(2), ADDRA1 => WADDR(1), 
        ADDRA0 => WADDR(0), ADDRB11 => \GND\, ADDRB10 => \GND\, 
        ADDRB9 => \GND\, ADDRB8 => RADDR(8), ADDRB7 => RADDR(7), 
        ADDRB6 => RADDR(6), ADDRB5 => RADDR(5), ADDRB4 => 
        RADDR(4), ADDRB3 => RADDR(3), ADDRB2 => RADDR(2), ADDRB1
         => RADDR(1), ADDRB0 => RADDR(0), DINA8 => \GND\, DINA7
         => WD(7), DINA6 => WD(6), DINA5 => WD(5), DINA4 => WD(4), 
        DINA3 => WD(3), DINA2 => WD(2), DINA1 => WD(1), DINA0 => 
        WD(0), DINB8 => \GND\, DINB7 => \GND\, DINB6 => \GND\, 
        DINB5 => \GND\, DINB4 => \GND\, DINB3 => \GND\, DINB2 => 
        \GND\, DINB1 => \GND\, DINB0 => \GND\, WIDTHA0 => \VCC\, 
        WIDTHA1 => \VCC\, WIDTHB0 => \VCC\, WIDTHB1 => \VCC\, 
        PIPEA => \GND\, PIPEB => \GND\, WMODEA => \GND\, WMODEB
         => \GND\, BLKA => \BLKA_EN[2]\, BLKB => \BLKB_EN[2]\, 
        WENA => \GND\, WENB => \VCC\, CLKA => WCLK, CLKB => RCLK, 
        RESET => \VCC\, DOUTA8 => OPEN, DOUTA7 => OPEN, DOUTA6
         => OPEN, DOUTA5 => OPEN, DOUTA4 => OPEN, DOUTA3 => OPEN, 
        DOUTA2 => OPEN, DOUTA1 => OPEN, DOUTA0 => OPEN, DOUTB8
         => OPEN, DOUTB7 => \QX_TEMPR2[7]\, DOUTB6 => 
        \QX_TEMPR2[6]\, DOUTB5 => \QX_TEMPR2[5]\, DOUTB4 => 
        \QX_TEMPR2[4]\, DOUTB3 => \QX_TEMPR2[3]\, DOUTB2 => 
        \QX_TEMPR2[2]\, DOUTB1 => \QX_TEMPR2[1]\, DOUTB0 => 
        \QX_TEMPR2[0]\);
    
    MX2_27 : MX2
      port map(A => MX2_0_Y, B => MX2_41_Y, S => BUFF_0_Y, Y => 
        MX2_27_Y);
    
    \NAND3A_ENABLE_ADDRB[5]\ : NAND3A
      port map(A => RADDR(10), B => RADDR(11), C => RADDR(9), Y
         => \ENABLE_ADDRB[5]\);
    
    \BFF1[1]\ : DFN1E1C0
      port map(D => RADDR(10), CLK => RCLK, CLR => \VCC\, E => 
        \READB_EN[1]\, Q => \ADDRB_FF2[1]\);
    
    \ORB_READ_EN_GATE[5]\ : OR2A
      port map(A => WEBP, B => \ENABLE_ADDRB[5]\, Y => 
        \READB_EN[5]\);
    
    \ORB_GATE[0]\ : OR2
      port map(A => \ENABLE_ADDRB[0]\, B => WEBP, Y => 
        \BLKB_EN[0]\);
    
    MX2_36 : MX2
      port map(A => MX2_19_Y, B => MX2_47_Y, S => BUFF_0_Y, Y => 
        MX2_36_Y);
    
    MX2_13 : MX2
      port map(A => MX2_34_Y, B => MX2_30_Y, S => BUFF_0_Y, Y => 
        MX2_13_Y);
    
    \MX2_RD[3]\ : MX2
      port map(A => MX2_14_Y, B => MX2_4_Y, S => \ADDRB_FF2[2]\, 
        Y => RD(3));
    
    MX2_29 : MX2
      port map(A => MX2_33_Y, B => MX2_18_Y, S => BUFF_4_Y, Y => 
        MX2_29_Y);
    
    MX2_17 : MX2
      port map(A => \QX_TEMPR2[2]\, B => \QX_TEMPR3[2]\, S => 
        BUFF_1_Y, Y => MX2_17_Y);
    
    \NAND3C_ENABLE_ADDRB[0]\ : NAND3C
      port map(A => RADDR(11), B => RADDR(10), C => RADDR(9), Y
         => \ENABLE_ADDRB[0]\);
    
    MX2_21 : MX2
      port map(A => \QX_TEMPR4[0]\, B => \QX_TEMPR5[0]\, S => 
        BUFF_1_Y, Y => MX2_21_Y);
    
    MX2_28 : MX2
      port map(A => \QX_TEMPR0[2]\, B => \QX_TEMPR1[2]\, S => 
        BUFF_1_Y, Y => MX2_28_Y);
    
    MX2_22 : MX2
      port map(A => \QX_TEMPR6[4]\, B => \QX_TEMPR7[4]\, S => 
        BUFF_2_Y, Y => MX2_22_Y);
    
    \ORB_GATE[5]\ : OR2
      port map(A => \ENABLE_ADDRB[5]\, B => WEBP, Y => 
        \BLKB_EN[5]\);
    
    MX2_20 : MX2
      port map(A => \QX_TEMPR2[7]\, B => \QX_TEMPR3[7]\, S => 
        BUFF_3_Y, Y => MX2_20_Y);
    
    BUFF_4 : BUFF
      port map(A => \ADDRB_FF2[1]\, Y => BUFF_4_Y);
    
    MX2_19 : MX2
      port map(A => \QX_TEMPR4[7]\, B => \QX_TEMPR5[7]\, S => 
        BUFF_3_Y, Y => MX2_19_Y);
    
    \MX2_RD[1]\ : MX2
      port map(A => MX2_1_Y, B => MX2_31_Y, S => \ADDRB_FF2[2]\, 
        Y => RD(1));
    
    BUFF_3 : BUFF
      port map(A => \ADDRB_FF2[0]\, Y => BUFF_3_Y);
    
    MX2_3 : MX2
      port map(A => \QX_TEMPR2[5]\, B => \QX_TEMPR3[5]\, S => 
        BUFF_2_Y, Y => MX2_3_Y);
    
    MX2_8 : MX2
      port map(A => MX2_21_Y, B => MX2_46_Y, S => BUFF_4_Y, Y => 
        MX2_8_Y);
    
    \AFF1[0]\ : DFN1E1C0
      port map(D => WADDR(9), CLK => WCLK, CLR => \VCC\, E => 
        \READA_EN[0]\, Q => \ADDRA_FF2[0]\);
    
    MX2_25 : MX2
      port map(A => MX2_2_Y, B => MX2_6_Y, S => BUFF_4_Y, Y => 
        MX2_25_Y);
    
    BUFF_2 : BUFF
      port map(A => \ADDRB_FF2[0]\, Y => BUFF_2_Y);
    
    MX2_11 : MX2
      port map(A => \QX_TEMPR6[1]\, B => \QX_TEMPR7[1]\, S => 
        BUFF_1_Y, Y => MX2_11_Y);
    
    \NAND3_ENABLE_ADDRA[7]\ : NAND3
      port map(A => WADDR(11), B => WADDR(10), C => WADDR(9), Y
         => \ENABLE_ADDRA[7]\);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 

-- _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


-- _GEN_File_Contents_

-- Version:11.7.0.119
-- ACTGENU_CALL:1
-- BATCH:T
-- FAM:PA3SOC
-- OUTFORMAT:VHDL
-- LPMTYPE:LPM_RAM
-- LPM_HINT:TWO
-- INSERT_PAD:NO
-- INSERT_IOREG:NO
-- GEN_BHV_VHDL_VAL:F
-- GEN_BHV_VERILOG_VAL:F
-- MGNTIMER:F
-- MGNCMPL:T
-- DESDIR:C:/proj/dev-kits/m1afs-adv-dev-kit/Core8051_Ext_SRAM_Int_XData/smartgen\RAM4Kx8
-- GEN_BEHV_MODULE:F
-- SMARTGEN_DIE:M1IR10X10M3
-- SMARTGEN_PACKAGE:fg484
-- AGENIII_IS_SUBPROJECT_LIBERO:T
-- WWIDTH:8
-- WDEPTH:4096
-- RWIDTH:8
-- RDEPTH:4096
-- CLKS:2
-- RESET_POLARITY:2
-- INIT_RAM:F
-- DEFAULT_WORD:0x00
-- CASCADE:1
-- WCLK_EDGE:RISE
-- RCLK_EDGE:RISE
-- WCLOCK_PN:WCLK
-- RCLOCK_PN:RCLK
-- PMODE2:0
-- DATA_IN_PN:WD
-- WADDRESS_PN:WADDR
-- WE_PN:WEN
-- DATA_OUT_PN:RD
-- RADDRESS_PN:RADDR
-- RE_PN:REN
-- WE_POLARITY:1
-- RE_POLARITY:1
-- PTYPE:1

-- _End_Comments_

