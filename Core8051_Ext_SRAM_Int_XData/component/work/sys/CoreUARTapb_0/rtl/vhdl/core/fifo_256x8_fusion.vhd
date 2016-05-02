-- ********************************************************************
-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description: COREUART/ CoreUARTapb UART core
--
--
--  Revision Information:
-- Date     Description
-- Jun09    Revision 4.1
-- Aug10    Revision 4.2

-- SVN Revision Information:
-- SVN $Revision: 8508 $
-- SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
-- 20741    2Sep10   AS    Increased baud rate by ensuring fifo ctrl runs off
--                         sys clk (not baud clock).  See note below.

-- Notes:
-- best viewed with tabstops set to "4"
library ieee;
use ieee.std_logic_1164.all;
library fusion;

ENTITY sys_CoreUARTapb_0_fifo_256x8 IS
   GENERIC(SYNC_RESET: INTEGER := 0);
   PORT (
      DO                      : OUT std_logic_vector(7 DOWNTO 0);   
      RCLOCK                  : IN std_logic;   
      WCLOCK                  : IN std_logic;   
      DI                      : IN std_logic_vector(7 DOWNTO 0);   
      WRB                     : IN std_logic;   
      RDB                     : IN std_logic;   
      RESET                   : IN std_logic;   
      FULL                    : OUT std_logic;   
      EMPTY                   : OUT std_logic);   
END ENTITY sys_CoreUARTapb_0_fifo_256x8;

ARCHITECTURE translated OF sys_CoreUARTapb_0_fifo_256x8 IS

COMPONENT sys_CoreUARTapb_0_fifo_256x8_pa3 
   PORT (
      DATA                    : IN std_logic_vector(7 DOWNTO 0);   
      Q                       : OUT std_logic_vector(7 DOWNTO 0);   
      WE                      : IN std_logic;   
      RE                      : IN std_logic;   
      WCLOCK                  : IN std_logic;   
      RCLOCK                  : IN std_logic;   
      FULL                    : OUT std_logic;   
      EMPTY                   : OUT std_logic;   
      RESET                   : IN std_logic;   
      AEMPTY                  : OUT std_logic;   
      AFULL                   : OUT std_logic;   
      LEVEL                   : IN std_logic_vector(7 DOWNTO 0));   
END COMPONENT;
   
   CONSTANT  LEVEL                 :  std_logic_vector(7 DOWNTO 0) := "11111111";
   SIGNAL AEMPTY                   :  std_logic;   
   SIGNAL AFULL                    :  std_logic;   
   SIGNAL DO_0                     :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL DO_xhdl1                 :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL FULL_xhdl2               :  std_logic;   
   SIGNAL EMPTY_xhdl3              :  std_logic;   
   SIGNAL EQTH_xhdl4               :  std_logic;   
   SIGNAL GEQTH_xhdl5              :  std_logic;   

BEGIN
   DO <= DO_xhdl1;
   FULL <= FULL_xhdl2;
   EMPTY <= EMPTY_xhdl3;

   PROCESS (RCLOCK)
   BEGIN
      IF (RCLOCK'EVENT AND RCLOCK = '1') THEN
         DO_xhdl1 <= DO_0;    
      END IF;
   END PROCESS;
   
   sys_CoreUARTapb_0_fifo_256x8_pa3_xhdl14 : sys_CoreUARTapb_0_fifo_256x8_pa3 
      PORT MAP (
         DATA => DI,
         Q => DO_0,
         WE => WRB,
         RE => RDB,
         WCLOCK => WCLOCK,
         RCLOCK => RCLOCK,
         AEMPTY => AEMPTY,
         AFULL => GEQTH_xhdl5,
         FULL => FULL_xhdl2,
         EMPTY => EMPTY_xhdl3,
         RESET => RESET,
         LEVEL => LEVEL);   
   

END ARCHITECTURE translated;

library ieee;
use ieee.std_logic_1164.all;
library fusion;

ENTITY sys_CoreUARTapb_0_fifo_256x8_pa3 IS
   PORT (
      DATA                    : IN std_logic_vector(7 DOWNTO 0);   
      Q                       : OUT std_logic_vector(7 DOWNTO 0);   
      WE                      : IN std_logic;   
      RE                      : IN std_logic;   
      WCLOCK                  : IN std_logic;   
      RCLOCK                  : IN std_logic;   
      FULL                    : OUT std_logic;   
      EMPTY                   : OUT std_logic;   
      RESET                   : IN std_logic;   
      AEMPTY                  : OUT std_logic;   
      AFULL                   : OUT std_logic;   
      LEVEL                   : IN std_logic_vector(7 DOWNTO 0));   
END ENTITY sys_CoreUARTapb_0_fifo_256x8_pa3;

ARCHITECTURE translated OF sys_CoreUARTapb_0_fifo_256x8_pa3 IS

    component INV
        port(A : in std_logic := 'U'; Y : out std_logic) ;
    end component;

    component FIFO4K18
        port(AEVAL11, AEVAL10, AEVAL9, AEVAL8, AEVAL7, AEVAL6, 
        AEVAL5, AEVAL4, AEVAL3, AEVAL2, AEVAL1, AEVAL0, AFVAL11, 
        AFVAL10, AFVAL9, AFVAL8, AFVAL7, AFVAL6, AFVAL5, AFVAL4, 
        AFVAL3, AFVAL2, AFVAL1, AFVAL0, WD17, WD16, WD15, WD14, 
        WD13, WD12, WD11, WD10, WD9, WD8, WD7, WD6, WD5, WD4, WD3, 
        WD2, WD1, WD0, WW0, WW1, WW2, RW0, RW1, RW2, RPIPE, WEN, 
        REN, WBLK, RBLK, WCLK, RCLK, RESET, ESTOP, FSTOP : in 
        std_logic := 'U'; RD17, RD16, RD15, RD14, RD13, RD12, 
        RD11, RD10, RD9, RD8, RD7, RD6, RD5, RD4, RD3, RD2, RD1, 
        RD0, FULL, AFULL, EMPTY, AEMPTY : out std_logic) ;
    end component;

    component VCC
        port( Y : out std_logic);
    end component;

    component GND
        port( Y : out std_logic);
    end component;

   SIGNAL WEAP                     :  std_logic;   
   SIGNAL VCC_0                      :  std_logic;   
   SIGNAL GND_0                      :  std_logic;   
   SIGNAL Q_xhdl1                  :  std_logic_vector(7 DOWNTO 0);   
   SIGNAL FULL_xhdl2               :  std_logic;   
   SIGNAL EMPTY_xhdl3              :  std_logic;   
   SIGNAL AEMPTY_xhdl4             :  std_logic;   
   SIGNAL AFULL_xhdl5              :  std_logic;   

BEGIN
   Q <= Q_xhdl1;
   FULL <= FULL_xhdl2;
   EMPTY <= EMPTY_xhdl3;
   AEMPTY <= AEMPTY_xhdl4;
   AFULL <= AFULL_xhdl5;
   
   VCC_1_net : VCC PORT MAP ( Y => VCC_0);   
  
   GND_1_net : GND PORT MAP ( Y => GND_0);   
   
   REBUBBLEA : INV PORT MAP ( A => RE, Y => WEAP);   
   
   FIFOBLOCK0 : FIFO4K18 
      PORT MAP (
         AEVAL11 => GND_0,
         AEVAL10 => GND_0,
         AEVAL9 => GND_0,
         AEVAL8 => GND_0,
         AEVAL7 => GND_0,
         AEVAL6 => GND_0,
         AEVAL5 => GND_0,
         AEVAL4 => GND_0,
         AEVAL3 => VCC_0,
         AEVAL2 => GND_0,
         AEVAL1 => GND_0,
         AEVAL0 => GND_0,
         AFVAL11 => GND_0,
         AFVAL10 => LEVEL(7),
         AFVAL9 =>  LEVEL(6),
         AFVAL8 => LEVEL(5),
         AFVAL7 => LEVEL(4), 
         AFVAL6 =>  LEVEL(3),
         AFVAL5 => LEVEL(2),
         AFVAL4 => LEVEL(1),
         AFVAL3 =>  LEVEL(0),
         AFVAL2 => GND_0,
         AFVAL1 => GND_0,
         AFVAL0 => GND_0,
         WD17 => GND_0,
         WD16 => GND_0,
         WD15 => GND_0,
         WD14 => GND_0,
         WD13 => GND_0,
         WD12 => GND_0,
         WD11 => GND_0,
         WD10 => GND_0,
         WD9 => GND_0,
         WD8 => GND_0,
         WD7 => DATA(7),
         WD6 => DATA(6),
         WD5 => DATA(5),
         WD4 => DATA(4),
         WD3 => DATA(3),
         WD2 => DATA(2),
         WD1 => DATA(1),
         WD0 => DATA(0),
         WW0 => VCC_0,
         WW1 => VCC_0,
         WW2 => GND_0,
         RW0 => VCC_0,
         RW1 => VCC_0,
         RW2 => GND_0,
         RPIPE => GND_0,
         WEN => WE,
         REN => WEAP,
         WBLK => GND_0,
         RBLK => GND_0,
         WCLK => WCLOCK,
         RCLK => RCLOCK,
         RESET => RESET,
         ESTOP => VCC_0,
         FSTOP => VCC_0,
         RD17 => open,
         RD16 => open,
         RD15 => open,
         RD14 => open,
         RD13 => open,
         RD12 => open,
         RD11 => open,
         RD10 => open,
         RD9 => open,
         RD8 => open,
         RD7 => Q_xhdl1(7),
         RD6 => Q_xhdl1(6),
         RD5 => Q_xhdl1(5),
         RD4 => Q_xhdl1(4),
         RD3 => Q_xhdl1(3),
         RD2 => Q_xhdl1(2),
         RD1 => Q_xhdl1(1),
         RD0 => Q_xhdl1(0),
         FULL => open,
         AFULL => FULL_xhdl2,
         EMPTY => EMPTY_xhdl3,
         AEMPTY => AEMPTY_xhdl4);   
   

END ARCHITECTURE translated;
