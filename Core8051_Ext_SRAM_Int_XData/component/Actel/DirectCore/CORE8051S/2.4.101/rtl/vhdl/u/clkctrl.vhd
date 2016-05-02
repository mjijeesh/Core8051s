-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- SVN Revision Information:
-- SVN $Revision: 13906 $
-- SVN $Date: 2010-08-25 08:19:44 -0700 (Wed, 25 Aug 2010) $
--
-- ********************************************************************/
-------------------------------------------------------------------------------
-- name:        clkctrl.vhd
-- function:    Clock Control Unit and internal reset control unit
-- comments:    best viewed with tabstops set to "4"
-- history:        5/27/03 - TFB created
--                 8/29/03 - TFB continued shrink effort ...
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."-";
use work.Core8051_utility.all;

entity CLOCK_CONTROL is
generic (
    -- set to 1 to enable ff optimizations ...
    EN_FF_OPTS      : integer := 0;
    -- set to 1 to use MEMACKI control for external data memory
    VARIABLE_STRETCH   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_STRETCH = 0
    -- range is 0 to 7
    STRETCH_VAL     : integer := 1;
    -- set to 1 to use MEMPSACKI control for program memory
    VARIABLE_WAIT   : integer := 1;
    -- fixed setting for stretch, only applicable if VARIABLE_WAIT = 0
    -- range is 0 to 7
    WAIT_VAL     : integer := 0
);
  port (
    -- Control signals inputs
    clk          : in  STD_LOGIC;  -- Global clock input
    nrst         : in  STD_LOGIC;  -- Internal reset input

    -- Program memory read
    mempsrd      : in  STD_LOGIC;

    -- Clock Control outputs
    smod         : out STD_LOGIC;  -- Baud rate Doubler
    stretch      : out STD_LOGIC_VECTOR(2 downto 0);

    -- Program memory waitstates
    mempsack     : out STD_LOGIC;

    mempsacki    : in  STD_LOGIC;

    -- Special function register interface
    sfrdatai     : in  STD_LOGIC_VECTOR(7 downto 0);
    sfrdataclk   : out STD_LOGIC_VECTOR(7 downto 0);
    sfraddr      : in  STD_LOGIC_VECTOR(6 downto 0);
    sfrwe        : in  STD_LOGIC
    );
end CLOCK_CONTROL;

--*******************************************************************--

architecture RTL of CLOCK_CONTROL is

    -- Power Control register
    signal pcon         : STD_LOGIC_VECTOR(7 downto 2);

    -- Clock Control register
    signal ckcon        : STD_LOGIC_VECTOR(7 downto 0);

    -- Wait states counter
    signal waitcount    : STD_LOGIC_VECTOR(2 downto 0);

    signal pcon_wrclk   : STD_LOGIC;
    signal ckcon_wrclk  : STD_LOGIC;

    signal stretch_val_vect : STD_LOGIC_VECTOR(2 downto 0);
    signal wait_val_vect : STD_LOGIC_VECTOR(2 downto 0);
begin

   --------------------------------------------------------------------
   -- Baud rate Doubler
   --------------------------------------------------------------------
      smod <= pcon(7);

   --------------------------------------------------------------------
   -- Data Memory cycle stretch control
   --------------------------------------------------------------------
      stretch <= ckcon(2 downto 0);

   --------------------------------------------------------------------
   -- Set stretch_val_vect based on STRETCH_VAL integer
   --------------------------------------------------------------------
    sv0:
    if (STRETCH_VAL = 0) generate
        stretch_val_vect <= "000";
    end generate;
    sv1:
    if (STRETCH_VAL = 1) generate
        stretch_val_vect <= "001";
    end generate;
    sv2:
    if (STRETCH_VAL = 2) generate
        stretch_val_vect <= "010";
    end generate;
    sv3:
    if (STRETCH_VAL = 3) generate
        stretch_val_vect <= "011";
    end generate;
    sv4:
    if (STRETCH_VAL = 4) generate
        stretch_val_vect <= "100";
    end generate;
    sv5:
    if (STRETCH_VAL = 5) generate
        stretch_val_vect <= "101";
    end generate;
    sv6:
    if (STRETCH_VAL = 6) generate
        stretch_val_vect <= "110";
    end generate;
    sv7:
    if (STRETCH_VAL = 7) generate
        stretch_val_vect <= "111";
    end generate;

   --------------------------------------------------------------------
   -- Set wait_val_vect based on WAIT_VAL integer
   --------------------------------------------------------------------
    wv0:
    if (WAIT_VAL = 0) generate
        wait_val_vect <= "000";
    end generate;
    wv1:
    if (WAIT_VAL = 1) generate
        wait_val_vect <= "001";
    end generate;
    wv2:
    if (WAIT_VAL = 2) generate
        wait_val_vect <= "010";
    end generate;
    wv3:
    if (WAIT_VAL = 3) generate
        wait_val_vect <= "011";
    end generate;
    wv4:
    if (WAIT_VAL = 4) generate
        wait_val_vect <= "100";
    end generate;
    wv5:
    if (WAIT_VAL = 5) generate
        wait_val_vect <= "101";
    end generate;
    wv6:
    if (WAIT_VAL = 6) generate
        wait_val_vect <= "110";
    end generate;
    wv7:
    if (WAIT_VAL = 7) generate
        wait_val_vect <= "111";
    end generate;


   --------------------------------------------------------------------
   -- pcon register
   --------------------------------------------------------------------
   process(clk,nrst)
   begin
       if nrst = '0' then
           pcon  <= PCON_RV(7 downto 2);
       elsif clk'event and clk = '1' then
           if (sfrwe='1' and sfraddr=PCON_ID) then
               pcon <= sfrdatai(7 downto 2);
           end if;
       end if;
   end process;

   --------------------------------------------------------------------
   -- ckcon register
   --------------------------------------------------------------------

   ckcon_variable_stretch:
    if (VARIABLE_STRETCH = 1) generate
        ckcon(2 downto 0)  <= CKCON_RV(2 downto 0);
    end generate;

   ckcon_not_variable_stretch:
    if (VARIABLE_STRETCH = 0) generate
        ckcon(2 downto 0)  <= stretch_val_vect;
    end generate;

   ckcon_variable_wait:
    if (VARIABLE_WAIT = 1) generate
        ckcon(6 downto 4)  <= CKCON_RV(6 downto 4);
    end generate;

   ckcon_not_variable_wait:
    if (VARIABLE_WAIT = 0) generate
        ckcon(6 downto 4)  <= wait_val_vect;
    end generate;

    --------------------------------------------------------------------
    -- Wait states counter
    --------------------------------------------------------------------
wc_variable_wait: if (VARIABLE_WAIT = 1) generate
    process(clk,nrst)
    begin
        if nrst = '0' then
            waitcount <= CKCON_RV(6 downto 4);
        elsif clk'event and clk = '1' then
            ----------------------------------
            -- Current cycle count
            ----------------------------------
            if mempsrd='1' then
                if waitcount="000" then
                    if mempsacki ='1'then
                        waitcount <= ckcon(6 downto 4);
                    end if;
                else
                    waitcount <= waitcount-"001";
                end if;
            else
                waitcount <= ckcon(6 downto 4);
            end if;
        end if;
    end process;
end generate;

wc_not_variable_wait: if (VARIABLE_WAIT = 0) generate
    process(clk,nrst)
    begin
        if nrst = '0' then
            waitcount <= wait_val_vect;
        elsif clk'event and clk = '1' then
            ----------------------------------
            -- Current cycle count
            ----------------------------------
            if mempsrd='1' then
                if waitcount="000" then
                    if mempsacki ='1'then
                        waitcount <= ckcon(6 downto 4);
                    end if;
                else
                    waitcount <= waitcount-"001";
                end if;
            else
                waitcount <= ckcon(6 downto 4);
            end if;
        end if;
    end process;
end generate;

   --------------------------------------------------------------------
   -- Program memory acknowledge
   --------------------------------------------------------------------
      mempsack <=
         '1' when (waitcount="000" or mempsrd='0') and
                  (mempsacki='1' or mempsrd='0')
             else
         '0';

   --------------------------------------------------------------------
   -- Special Function registers read
   --------------------------------------------------------------------
      sfrdataclk <= "00000000";

end RTL;
