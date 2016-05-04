-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  CoreApbSram
--               Provides APB interface to embedded SRAM.
--
--
-- Revision Information:
-- Date     Description
--
-- SVN Revision Information:
-- SVN $Revision: 5877 $
-- SVN $Date: 2009-01-13 12:19:26 +0000 (Tue, 13 Jan 2009) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
--
-- ********************************************************************/

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.numeric_std.all;

library COREAPBSRAM_LIB;

entity COREAPBSRAM is
    generic (
        FAMILY                  : integer := 17;
        APB_DWIDTH              : integer := 32;
        NUM_LOCATIONS_DWIDTH32  : integer := 512; -- 0.5K to 8K,  in steps of 0.5K
        NUM_LOCATIONS_DWIDTH24  : integer := 512; -- 0.5K to 8K,  in steps of 0.5K
        NUM_LOCATIONS_DWIDTH16  : integer := 512; -- 0.5K to 16K, in steps of 0.5K
        NUM_LOCATIONS_DWIDTH08  : integer := 512; -- 0.5K to 32K, in steps of 0.5K
        -- ADDR_SCHEME
        -- 0 = word aligned
        -- 1 = sequential
        ADDR_SCHEME             : integer := 0
    );
    port (
        --APB IO
        --inputs
        PCLK                : in STD_LOGIC;
        PRESETN             : in STD_LOGIC;
        PSEL                : in STD_LOGIC;
        PENABLE             : in STD_LOGIC;
        PWRITE              : in STD_LOGIC;
        PADDR               : in STD_LOGIC_VECTOR(16 downto 0);
        PWDATA              : in STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
        --outputs
        PRDATA              : out STD_LOGIC_VECTOR(APB_DWIDTH-1 downto 0);
        PREADY              : out STD_LOGIC;
        PSLVERR             : out STD_LOGIC
    );
end COREAPBSRAM;

architecture rtl of COREAPBSRAM is
    -- ---------------------------------------------------------------------
    -- Components
    -- ---------------------------------------------------------------------
    component sram_512to8192x8
        generic (
            DEPTH           :  integer);
        port (
            -- ---------------------------------------------------------------------
            -- Port declarations
            -- ---------------------------------------------------------------------
            clk             : in std_logic;
            resetn          : in std_logic;
            sramREN         : in std_logic;
            sramWEN         : in std_logic;
            writeAddr       : in std_logic_vector(12 downto 0);
            readAddr        : in std_logic_vector(12 downto 0);
            writeData       : in std_logic_vector(7 downto 0);
            readData        : out std_logic_vector(7 downto 0));
    end component;

    -- ---------------------------------------------------------------------
    -- Functions
    -- ---------------------------------------------------------------------
    function block0_depth_dwidth16 (NUM_LOCATIONS_DWIDTH16 : integer)
    return integer is
    begin
        if (NUM_LOCATIONS_DWIDTH16 < 8193) then
            return NUM_LOCATIONS_DWIDTH16;
        else
            return 8192;
        end if;
    end function block0_depth_dwidth16;

    function block1_depth_dwidth16 (NUM_LOCATIONS_DWIDTH16 : integer)
    return integer is
    begin
        if (NUM_LOCATIONS_DWIDTH16 < 8193) then
            return 0;
        else
            return NUM_LOCATIONS_DWIDTH16 - 8192;
        end if;
    end function block1_depth_dwidth16;

    function block0_depth_dwidth8 (NUM_LOCATIONS_DWIDTH08 : integer)
    return integer is
    begin
        if (NUM_LOCATIONS_DWIDTH08 < 513) then
            return 512;
        elsif (NUM_LOCATIONS_DWIDTH08 < 8193) then
            return NUM_LOCATIONS_DWIDTH08;
        else
            return 8192;
        end if;
    end function block0_depth_dwidth8;

    function block1_depth_dwidth8 (NUM_LOCATIONS_DWIDTH08 : integer)
    return integer is
    begin
        if (NUM_LOCATIONS_DWIDTH08 < 8193) then
            return 0;
        elsif (NUM_LOCATIONS_DWIDTH08 > 8192 and NUM_LOCATIONS_DWIDTH08 < 16385) then
            return NUM_LOCATIONS_DWIDTH08 - 8192;
        else
            return 8192;
        end if;
    end function block1_depth_dwidth8;

    function block2_depth_dwidth8 (NUM_LOCATIONS_DWIDTH08 : integer)
    return integer is
    begin
        if (NUM_LOCATIONS_DWIDTH08 < 16385) then
            return 0;
        elsif (NUM_LOCATIONS_DWIDTH08 > 16384 and NUM_LOCATIONS_DWIDTH08 < 24577) then
            return NUM_LOCATIONS_DWIDTH08 - 16384;
        else
            return 8192;
        end if;
    end function block2_depth_dwidth8;

    function block3_depth_dwidth8 (NUM_LOCATIONS_DWIDTH08 : integer)
    return integer is
    begin
        if (NUM_LOCATIONS_DWIDTH08 < 24577) then
            return 0;
        else
            return NUM_LOCATIONS_DWIDTH08 - 24576;
        end if;
    end function block3_depth_dwidth8;

    function adjust_block1_depth_dwidth16 (RAW_DEPTH_DWIDTH16_1 : integer)
    return integer is
    begin
        if (RAW_DEPTH_DWIDTH16_1 = 0) then
            return 512;
        else
            return RAW_DEPTH_DWIDTH16_1;
        end if;
    end function adjust_block1_depth_dwidth16;

    function adjust_block1_depth_dwidth8 (RAW_DEPTH_DWIDTH8_1 : integer)
    return integer is
    begin
        if (RAW_DEPTH_DWIDTH8_1 = 0) then
            return 512;
        else
            return RAW_DEPTH_DWIDTH8_1;
        end if;
    end function adjust_block1_depth_dwidth8;

    function adjust_block2_depth_dwidth8 (RAW_DEPTH_DWIDTH8_2 : integer)
    return integer is
    begin
        if (RAW_DEPTH_DWIDTH8_2 = 0) then
            return 512;
        else
            return RAW_DEPTH_DWIDTH8_2;
        end if;
    end function adjust_block2_depth_dwidth8;

    function adjust_block3_depth_dwidth8 (RAW_DEPTH_DWIDTH8_3 : integer)
    return integer is
    begin
        if (RAW_DEPTH_DWIDTH8_3 = 0) then
            return 512;
        else
            return RAW_DEPTH_DWIDTH8_3;
        end if;
    end function adjust_block3_depth_dwidth8;

    ------------------------------------------------------------------------
    -- Constants
    ------------------------------------------------------------------------
    constant DEPTH_DWIDTH32         : integer := NUM_LOCATIONS_DWIDTH32;

    constant DEPTH_DWIDTH24         : integer := NUM_LOCATIONS_DWIDTH24;

    constant DEPTH_DWIDTH16_0       : integer := block0_depth_dwidth16(NUM_LOCATIONS_DWIDTH16);
    constant RAW_DEPTH_DWIDTH16_1   : integer := block1_depth_dwidth16(NUM_LOCATIONS_DWIDTH16);

    constant DEPTH_DWIDTH8_0        : integer := block0_depth_dwidth8(NUM_LOCATIONS_DWIDTH08);
    constant RAW_DEPTH_DWIDTH8_1    : integer := block1_depth_dwidth8(NUM_LOCATIONS_DWIDTH08);
    constant RAW_DEPTH_DWIDTH8_2    : integer := block2_depth_dwidth8(NUM_LOCATIONS_DWIDTH08);
    constant RAW_DEPTH_DWIDTH8_3    : integer := block3_depth_dwidth8(NUM_LOCATIONS_DWIDTH08);

    constant DEPTH_DWIDTH16_1       : integer := adjust_block1_depth_dwidth16(RAW_DEPTH_DWIDTH16_1);

    constant DEPTH_DWIDTH8_1        : integer := adjust_block1_depth_dwidth8(RAW_DEPTH_DWIDTH8_1);
    constant DEPTH_DWIDTH8_2        : integer := adjust_block2_depth_dwidth8(RAW_DEPTH_DWIDTH8_2);
    constant DEPTH_DWIDTH8_3        : integer := adjust_block3_depth_dwidth8(RAW_DEPTH_DWIDTH8_3);

    ------------------------------------------------------------------------
    -- Signals
    ------------------------------------------------------------------------
    signal sramWEN              : std_logic_vector(3 downto 0);
    signal addr                 : std_logic_vector(12 downto 0);

    signal readData3            : std_logic_vector(7 downto 0);
    signal readData2            : std_logic_vector(7 downto 0);
    signal readData1            : std_logic_vector(7 downto 0);
    signal readData0            : std_logic_vector(7 downto 0);

    signal raw_readData3        : std_logic_vector(7 downto 0);
    signal raw_readData2        : std_logic_vector(7 downto 0);
    signal raw_readData1        : std_logic_vector(7 downto 0);

    signal wen                  : std_logic;
    signal ren                  : std_logic;

    ------------------------------------------------------------------------
    -- Main body of code
    ------------------------------------------------------------------------
begin
    -- APB 3 signals
    PSLVERR <= '0';
    PREADY <= '1';

    -- Create read and write enable signals using APB control signals
    wen <= PWRITE and PENABLE and PSEL;
    ren <= not(PWRITE) and not(PENABLE) and PSEL;

gen_dwidth32: if (APB_DWIDTH = 32) generate
    process (PADDR, wen, readData3, readData2, readData1, readData0)
    begin
        case (ADDR_SCHEME) is
            when 1 =>
                addr <= PADDR(12 downto 0);
                sramWEN(3 downto 0) <= wen & wen & wen & wen;
                PRDATA(APB_DWIDTH-1 downto 0) <= readData3 & readData2 & readData1 & readData0;
            when others =>
                addr <= PADDR(14 downto 2);
                sramWEN(3 downto 0) <= wen & wen & wen & wen;
                PRDATA(APB_DWIDTH-1 downto 0) <= readData3 & readData2 & readData1 & readData0;
        end case;
    end process;

    sram_block3: sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH32
    )
    port map (
        writeData   => PWDATA(31 downto 24),
        readData    => readData3,
        sramWEN     => sramWEN(3),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block2 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH32
    )
    port map (
        writeData   => PWDATA(23 downto 16),
        readData    => readData2,
        sramWEN     => sramWEN(2),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block1 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH32
    )
    port map (
        writeData   => PWDATA(15 downto 8),
        readData    => readData1,
        sramWEN     => sramWEN(1),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block0 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH32
    )
    port map (
        writeData   => PWDATA(7 downto 0),
        readData    => readData0,
        sramWEN     => sramWEN(0),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );
end generate;

gen_dwidth24: if (APB_DWIDTH = 24) generate
    process (PADDR, wen, readData2, readData1, readData0)
    begin
        case (ADDR_SCHEME) is
            when 1 =>
                addr <= PADDR(12 downto 0);
                sramWEN(3 downto 0) <= '0' & wen & wen & wen;
                PRDATA(APB_DWIDTH-1 downto 0) <= readData2 & readData1 & readData0;
            when others =>
                addr <= PADDR(14 downto 2);
                sramWEN(3 downto 0) <= '0' & wen & wen & wen;
                PRDATA(APB_DWIDTH-1 downto 0) <= readData2 & readData1 & readData0;
        end case;
    end process;

    sram_block2 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH24
    )
    port map (
        writeData   => PWDATA(23 downto 16),
        readData    => readData2,
        sramWEN     => sramWEN(2),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block1 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH24
    )
    port map (
        writeData   => PWDATA(15 downto 8),
        readData    => readData1,
        sramWEN     => sramWEN(1),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block0 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH24
    )
    port map (
        writeData   => PWDATA(7 downto 0),
        readData    => readData0,
        sramWEN     => sramWEN(0),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );
end generate;

gen_dwidth16: if (APB_DWIDTH = 16) generate
    process (PADDR, wen, readData3, readData2, readData1, readData0)
    begin
        case (ADDR_SCHEME) is
            when 1 =>
                addr <= PADDR(12 downto 0);
                case PADDR(13) is
                    when '0' =>
                        sramWEN(3 downto 0) <= '0' & '0' & wen & wen;
                    when '1' =>
                        sramWEN(3 downto 0) <= wen & wen & '0' & '0';
                    when others =>
                        sramWEN(3 downto 0) <= '0' & '0' & '0' & '0';
                end case;
                case PADDR(13) is
                    when '0' =>
                        PRDATA(APB_DWIDTH-1 downto 0) <= readData1 & readData0;
                    when '1' =>
                        PRDATA(APB_DWIDTH-1 downto 0) <= readData3 & readData2;
                    when others =>
                        PRDATA(APB_DWIDTH-1 downto 0) <= readData1 & readData0;
                end case;
            when others =>
                addr <= PADDR(14 downto 2);
                case PADDR(15) is
                    when '0' =>
                        sramWEN(3 downto 0) <= '0' & '0' & wen & wen;
                    when '1' =>
                        sramWEN(3 downto 0) <= wen & wen & '0' & '0';
                    when others =>
                        sramWEN(3 downto 0) <= '0' & '0' & '0' & '0';
                end case;
                case PADDR(15) is
                    when '0' =>
                        PRDATA(APB_DWIDTH-1 downto 0) <= readData1 & readData0;
                    when '1' =>
                        PRDATA(APB_DWIDTH-1 downto 0) <= readData3 & readData2;
                    when others =>
                        PRDATA(APB_DWIDTH-1 downto 0) <= readData1 & readData0;
                end case;
        end case;
    end process;

    sram_block3 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH16_1
    )
    port map (
        writeData   => PWDATA(15 downto 8),
        readData    => raw_readData3,
        sramWEN     => sramWEN(3),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block2 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH16_1
    )
    port map (
        writeData   => PWDATA(7 downto 0),
        readData    => raw_readData2,
        sramWEN     => sramWEN(2),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block1 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH16_0
    )
    port map (
        writeData   => PWDATA(15 downto 8),
        readData    => readData1,
        sramWEN     => sramWEN(1),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block0 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH16_0
    )
    port map (
        writeData   => PWDATA(7 downto 0),
        readData    => readData0,
        sramWEN     => sramWEN(0),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    readData3 <= "00000000" when RAW_DEPTH_DWIDTH16_1 = 0 else raw_readData3;
    readData2 <= "00000000" when RAW_DEPTH_DWIDTH16_1 = 0 else raw_readData2;
end generate;

gen_dwidth8: if (APB_DWIDTH = 8) generate
    process (PADDR, wen, readData3, readData2, readData1, readData0)
    begin
        case (ADDR_SCHEME) is
            when 1 =>
                addr <= PADDR(12 downto 0);
                case PADDR(14 downto 13) is
                    when "00" =>   sramWEN(3 downto 0) <= '0' & '0' & '0' & wen;
                    when "01" =>   sramWEN(3 downto 0) <= '0' & '0' & wen & '0';
                    when "10" =>   sramWEN(3 downto 0) <= '0' & wen & '0' & '0';
                    when "11" =>   sramWEN(3 downto 0) <= wen & '0' & '0' & '0';
                    when others => sramWEN(3 downto 0) <= '0' & '0' & '0' & '0';
                end case;
                case PADDR(14 downto 13) is
                    when "00" =>   PRDATA(APB_DWIDTH-1 downto 0) <= readData0;
                    when "01" =>   PRDATA(APB_DWIDTH-1 downto 0) <= readData1;
                    when "10" =>   PRDATA(APB_DWIDTH-1 downto 0) <= readData2;
                    when "11" =>   PRDATA(APB_DWIDTH-1 downto 0) <= readData3;
                    when others => PRDATA(APB_DWIDTH-1 downto 0) <= readData0;
                end case;
            when others =>
                addr <= PADDR(14 downto 2);
                case PADDR(16 downto 15) is
                    when "00" =>   sramWEN(3 downto 0) <= '0' & '0' & '0' & wen;
                    when "01" =>   sramWEN(3 downto 0) <= '0' & '0' & wen & '0';
                    when "10" =>   sramWEN(3 downto 0) <= '0' & wen & '0' & '0';
                    when "11" =>   sramWEN(3 downto 0) <= wen & '0' & '0' & '0';
                    when others => sramWEN(3 downto 0) <= '0' & '0' & '0' & '0';
                end case;
                case PADDR(16 downto 15) is
                    when "00" =>   PRDATA(APB_DWIDTH-1 downto 0) <= readData0;
                    when "01" =>   PRDATA(APB_DWIDTH-1 downto 0) <= readData1;
                    when "10" =>   PRDATA(APB_DWIDTH-1 downto 0) <= readData2;
                    when "11" =>   PRDATA(APB_DWIDTH-1 downto 0) <= readData3;
                    when others => PRDATA(APB_DWIDTH-1 downto 0) <= readData0;
                end case;
        end case;
    end process;

    sram_block3 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH8_3
    )
    port map (
        writeData   => PWDATA(7 downto 0),
        readData    => raw_readData3,
        sramWEN     => sramWEN(3),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block2 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH8_2
    )
    port map (
        writeData   => PWDATA(7 downto 0),
        readData    => raw_readData2,
        sramWEN     => sramWEN(2),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block1 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH8_1
    )
    port map (
        writeData   => PWDATA(7 downto 0),
        readData    => raw_readData1,
        sramWEN     => sramWEN(1),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    sram_block0 : sram_512to8192x8
    generic map (
        DEPTH       => DEPTH_DWIDTH8_0
    )
    port map (
        writeData   => PWDATA(7 downto 0),
        readData    => readData0,
        sramWEN     => sramWEN(0),
        sramREN     => ren,
        writeAddr   => addr,
        readAddr    => addr,
        clk         => PCLK,
        resetn      => PRESETN
    );

    readData3 <= "00000000" when RAW_DEPTH_DWIDTH8_3 = 0 else raw_readData3;
    readData2 <= "00000000" when RAW_DEPTH_DWIDTH8_2 = 0 else raw_readData2;
    readData1 <= "00000000" when RAW_DEPTH_DWIDTH8_1 = 0 else raw_readData1;
end generate;

end rtl;
