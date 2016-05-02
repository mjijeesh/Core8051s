--  --========================================================================--
--  This confidential and proprietary software may be used only as
--  authorised by a licensing agreement from ARM Limited
--    (C) COPYRIGHT 1998-2002 ARM Limited
--        ALL RIGHTS RESERVED
--  The entire notice above must be reproduced on all authorised
--  copies and copies may only be made to the extent permitted
--  by a licensing agreement from ARM Limited.
--
--  ----------------------------------------------------------------------------
--  Version and Release Control Information:
--
--  File Name           : MuxPtoB3.vhd,v
--
--  ----------------------------------------------------------------------------
--  Purpose             : Central mux - signals from peripherals to bridge.
--                        Stand-alone module to allow ease of removal if an
--                        alternative interconnection scheme is to be used.
--  --========================================================================--

library ieee;
use     ieee.std_logic_1164.all;

entity MuxPtoB3 is
  port(
    -- Inputs to the Mux
    PSELS0    : in  std_logic;
    PSELS1    : in  std_logic;
    PSELS2    : in  std_logic;
    PSELS3    : in  std_logic;
    PSELS4    : in  std_logic;
    PSELS5    : in  std_logic;
    PSELS6    : in  std_logic;
    PSELS7    : in  std_logic;
    PSELS8    : in  std_logic;
    PSELS9    : in  std_logic;
    PSELS10   : in  std_logic;
    PSELS11   : in  std_logic;
    PSELS12   : in  std_logic;
    PSELS13   : in  std_logic;
    PSELS14   : in  std_logic;
    PSELS15   : in  std_logic;

    PRDATAS0  : in  std_logic_vector(31 downto 0);
    PRDATAS1  : in  std_logic_vector(31 downto 0);
    PRDATAS2  : in  std_logic_vector(31 downto 0);
    PRDATAS3  : in  std_logic_vector(31 downto 0);
    PRDATAS4  : in  std_logic_vector(31 downto 0);
    PRDATAS5  : in  std_logic_vector(31 downto 0);
    PRDATAS6  : in  std_logic_vector(31 downto 0);
    PRDATAS7  : in  std_logic_vector(31 downto 0);
    PRDATAS8  : in  std_logic_vector(31 downto 0);
    PRDATAS9  : in  std_logic_vector(31 downto 0);
    PRDATAS10 : in  std_logic_vector(31 downto 0);
    PRDATAS11 : in  std_logic_vector(31 downto 0);
    PRDATAS12 : in  std_logic_vector(31 downto 0);
    PRDATAS13 : in  std_logic_vector(31 downto 0);
    PRDATAS14 : in  std_logic_vector(31 downto 0);
    PRDATAS15 : in  std_logic_vector(31 downto 0);

    PREADYS0    : in  std_logic;
    PREADYS1    : in  std_logic;
    PREADYS2    : in  std_logic;
    PREADYS3    : in  std_logic;
    PREADYS4    : in  std_logic;
    PREADYS5    : in  std_logic;
    PREADYS6    : in  std_logic;
    PREADYS7    : in  std_logic;
    PREADYS8    : in  std_logic;
    PREADYS9    : in  std_logic;
    PREADYS10   : in  std_logic;
    PREADYS11   : in  std_logic;
    PREADYS12   : in  std_logic;
    PREADYS13   : in  std_logic;
    PREADYS14   : in  std_logic;
    PREADYS15   : in  std_logic;

    PSLVERRS0    : in  std_logic;
    PSLVERRS1    : in  std_logic;
    PSLVERRS2    : in  std_logic;
    PSLVERRS3    : in  std_logic;
    PSLVERRS4    : in  std_logic;
    PSLVERRS5    : in  std_logic;
    PSLVERRS6    : in  std_logic;
    PSLVERRS7    : in  std_logic;
    PSLVERRS8    : in  std_logic;
    PSLVERRS9    : in  std_logic;
    PSLVERRS10   : in  std_logic;
    PSLVERRS11   : in  std_logic;
    PSLVERRS12   : in  std_logic;
    PSLVERRS13   : in  std_logic;
    PSLVERRS14   : in  std_logic;
    PSLVERRS15   : in  std_logic;

    -- Output from the Mux
    PRDATA   : out std_logic_vector(31 downto 0);
    PREADY   : out std_logic;
    PSLVERR  : out std_logic
    );
end MuxPtoB3;


architecture synth of MuxPtoB3 is

-- Block Overview
--
--   The Peripheral to Bridge Multiplexor is used to connect the read data
-- output of each APB Slave to the APB Bridge module, using the PSELx signals
-- to select the required data source.
--
-- The Peripheral to Bridge Multiplexor module has a 32-bit wide data path.
-- It is constructed from a parallel arrangement of 32 multiplexors, each
-- taking 16 inputs.


--------------------------------------------------------------------------------
-- Constant declarations
--------------------------------------------------------------------------------
-- PselBus encoding. This must be extended if more than sixteen APB peripherals
--  are used in the system.

  constant PSEL_S0  : std_logic_vector(3 downto 0) := "0000";
  constant PSEL_S1  : std_logic_vector(3 downto 0) := "0001";
  constant PSEL_S2  : std_logic_vector(3 downto 0) := "0010";
  constant PSEL_S3  : std_logic_vector(3 downto 0) := "0011";
  constant PSEL_S4  : std_logic_vector(3 downto 0) := "0100";
  constant PSEL_S5  : std_logic_vector(3 downto 0) := "0101";
  constant PSEL_S6  : std_logic_vector(3 downto 0) := "0110";
  constant PSEL_S7  : std_logic_vector(3 downto 0) := "0111";
  constant PSEL_S8  : std_logic_vector(3 downto 0) := "1000";
  constant PSEL_S9  : std_logic_vector(3 downto 0) := "1001";
  constant PSEL_S10 : std_logic_vector(3 downto 0) := "1010";
  constant PSEL_S11 : std_logic_vector(3 downto 0) := "1011";
  constant PSEL_S12 : std_logic_vector(3 downto 0) := "1100";
  constant PSEL_S13 : std_logic_vector(3 downto 0) := "1101";
  constant PSEL_S14 : std_logic_vector(3 downto 0) := "1110";
  constant PSEL_S15 : std_logic_vector(3 downto 0) := "1111";


--------------------------------------------------------------------------------
-- Signal declaration
--------------------------------------------------------------------------------
  signal PselBus : std_logic_vector(3 downto 0); -- PSEL input encoding


--------------------------------------------------------------------------------
-- Beginning of main code
--------------------------------------------------------------------------------

begin

--------------------------------------------------------------------------------
-- PSEL bus
--------------------------------------------------------------------------------
-- The internal PSEL bus is a binary encoded value of the individual PSEL
--  inputs. This arrangement provides a speed optimisation

  PselBus(3) <= PSELS15  or PSELS14  or PSELS13 or PSELS12 or
                PSELS11 or PSELS10 or PSELS9 or PSELS8;

  PselBus(2) <= PSELS15 or PSELS14 or PSELS13 or PSELS12 or
                PSELS7  or PSELS6  or PSELS5  or PSELS4;

  PselBus(1) <= PSELS15  or PSELS14  or PSELS11  or PSELS10  or
                PSELS7 or PSELS6 or PSELS3 or PSELS2;

  PselBus(0) <= PSELS15  or PSELS13  or PSELS11  or PSELS9  or
                PSELS7  or PSELS5 or PSELS3 or PSELS1;

--------------------------------------------------------------------------------
-- Multiplexers
--------------------------------------------------------------------------------
-- Multiplexers controlling read data from peripherals to the bridge.

-- This module only needs to be as wide as the widest peripheral read data bus,
--  but in this default system it is set to the full 32 bits.
-- The default all zeros case is not strictly required, but may aid debugging by
--  ensuring that the read data bus is zero when no peripherals are being
--  accessed.

  p_PRDATAComb : process (PselBus, PRDATAS0, PRDATAS1, PRDATAS2,
                          PRDATAS3, PRDATAS4, PRDATAS5, PRDATAS6,
                          PRDATAS7, PRDATAS8, PRDATAS9, PRDATAS10,
                          PRDATAS11, PRDATAS12, PRDATAS13, PRDATAS14,
                          PRDATAS15, PSELS0)
  begin
    case PselBus is
      when PSEL_S0  => -- Either PSELS0 or nothing is selected
        if (PSELS0 = '1') then
          PRDATA <= PRDATAS0;
        else
          PRDATA <= "0000"&"0000"&"0000"&"0000"&
                    "0000"&"0000"&"0000"&"0000";
        end if;
      when PSEL_S1  => PRDATA <= PRDATAS1;
      when PSEL_S2  => PRDATA <= PRDATAS2;
      when PSEL_S3  => PRDATA <= PRDATAS3;
      when PSEL_S4  => PRDATA <= PRDATAS4;
      when PSEL_S5  => PRDATA <= PRDATAS5;
      when PSEL_S6  => PRDATA <= PRDATAS6;
      when PSEL_S7  => PRDATA <= PRDATAS7;
      when PSEL_S8  => PRDATA <= PRDATAS8;
      when PSEL_S9  => PRDATA <= PRDATAS9;
      when PSEL_S10 => PRDATA <= PRDATAS10;
      when PSEL_S11 => PRDATA <= PRDATAS11;
      when PSEL_S12 => PRDATA <= PRDATAS12;
      when PSEL_S13 => PRDATA <= PRDATAS13;
      when PSEL_S14 => PRDATA <= PRDATAS14;
      when PSEL_S15 => PRDATA <= PRDATAS15;
      when others   => PRDATA <= "0000"&"0000"&"0000"&"0000"&
                                 "0000"&"0000"&"0000"&"0000";
    end case;
  end process p_PRDATAComb;

  p_PREADYComb : process (PselBus, PREADYS0, PREADYS1, PREADYS2,
                          PREADYS3, PREADYS4, PREADYS5, PREADYS6,
                          PREADYS7, PREADYS8, PREADYS9, PREADYS10,
                          PREADYS11, PREADYS12, PREADYS13, PREADYS14,
                          PREADYS15, PSELS0)
  begin
    case PselBus is
      when PSEL_S0  => -- Either PSELS0 or nothing is selected
        if (PSELS0 = '1') then
          PREADY <= PREADYS0;
        else
          PREADY <= '1';
        end if;
      when PSEL_S1  => PREADY <= PREADYS1;
      when PSEL_S2  => PREADY <= PREADYS2;
      when PSEL_S3  => PREADY <= PREADYS3;
      when PSEL_S4  => PREADY <= PREADYS4;
      when PSEL_S5  => PREADY <= PREADYS5;
      when PSEL_S6  => PREADY <= PREADYS6;
      when PSEL_S7  => PREADY <= PREADYS7;
      when PSEL_S8  => PREADY <= PREADYS8;
      when PSEL_S9  => PREADY <= PREADYS9;
      when PSEL_S10 => PREADY <= PREADYS10;
      when PSEL_S11 => PREADY <= PREADYS11;
      when PSEL_S12 => PREADY <= PREADYS12;
      when PSEL_S13 => PREADY <= PREADYS13;
      when PSEL_S14 => PREADY <= PREADYS14;
      when PSEL_S15 => PREADY <= PREADYS15;
      when others   => PREADY <= '1';
    end case;
  end process p_PREADYComb;

  p_PSLVERRComb : process (PselBus, PSLVERRS0, PSLVERRS1, PSLVERRS2,
                          PSLVERRS3, PSLVERRS4, PSLVERRS5, PSLVERRS6,
                          PSLVERRS7, PSLVERRS8, PSLVERRS9, PSLVERRS10,
                          PSLVERRS11, PSLVERRS12, PSLVERRS13, PSLVERRS14,
                          PSLVERRS15, PSELS0)
  begin
    case PselBus is
      when PSEL_S0  => -- Either PSELS0 or nothing is selected
        if (PSELS0 = '1') then
          PSLVERR <= PSLVERRS0;
        else
          PSLVERR <= '0';
        end if;
      when PSEL_S1  => PSLVERR <= PSLVERRS1;
      when PSEL_S2  => PSLVERR <= PSLVERRS2;
      when PSEL_S3  => PSLVERR <= PSLVERRS3;
      when PSEL_S4  => PSLVERR <= PSLVERRS4;
      when PSEL_S5  => PSLVERR <= PSLVERRS5;
      when PSEL_S6  => PSLVERR <= PSLVERRS6;
      when PSEL_S7  => PSLVERR <= PSLVERRS7;
      when PSEL_S8  => PSLVERR <= PSLVERRS8;
      when PSEL_S9  => PSLVERR <= PSLVERRS9;
      when PSEL_S10 => PSLVERR <= PSLVERRS10;
      when PSEL_S11 => PSLVERR <= PSLVERRS11;
      when PSEL_S12 => PSLVERR <= PSLVERRS12;
      when PSEL_S13 => PSLVERR <= PSLVERRS13;
      when PSEL_S14 => PSLVERR <= PSLVERRS14;
      when PSEL_S15 => PSLVERR <= PSLVERRS15;
      when others   => PSLVERR <= '0';
    end case;
  end process p_PSLVERRComb;

end synth;

-- --================================= End ===================================--
