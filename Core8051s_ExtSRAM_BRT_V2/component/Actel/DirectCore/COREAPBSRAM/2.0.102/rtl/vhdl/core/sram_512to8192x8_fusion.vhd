-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  SRAM block, 1 byte wide, 512 to 8192 deep (in steps
--               of 512), used to construct the memory.
--
-- Revision Information:
-- Date     Description
--
-- SVN Revision Information:
-- SVN $Revision: 4797 $
-- SVN $Date: 2008-11-27 11:29:27 +0000 (Thu, 27 Nov 2008) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
--
-- ********************************************************************/

library ieee;
    use ieee.std_logic_1164.all;
library fusion;

ENTITY sram_512to8192x8 IS
    GENERIC (
        DEPTH           :  integer range 512 to 8192 := 512);
    PORT (
        -- ---------------------------------------------------------------------
        -- Port declarations
        -- ---------------------------------------------------------------------
        clk             : IN std_logic;
        resetn          : IN std_logic;
        sramREN         : IN std_logic;
        sramWEN         : IN std_logic;
        writeAddr       : IN std_logic_vector(12 DOWNTO 0);
        readAddr        : IN std_logic_vector(12 DOWNTO 0);
        writeData       : IN std_logic_vector(7 DOWNTO 0);
        readData        : OUT std_logic_vector(7 DOWNTO 0));
END sram_512to8192x8;

ARCHITECTURE RTL OF sram_512to8192x8 IS

-- ---------------------------------------------------------------------
-- Component declarations
-- ---------------------------------------------------------------------
    COMPONENT RAM4K9
    port (
      ADDRA11       : IN STD_ULOGIC;
      ADDRA10       : IN STD_ULOGIC;
      ADDRA9        : IN STD_ULOGIC;
      ADDRA8        : IN STD_ULOGIC;
      ADDRA7        : IN STD_ULOGIC;
      ADDRA6        : IN STD_ULOGIC;
      ADDRA5        : IN STD_ULOGIC;
      ADDRA4        : IN STD_ULOGIC;
      ADDRA3        : IN STD_ULOGIC;
      ADDRA2        : IN STD_ULOGIC;
      ADDRA1        : IN STD_ULOGIC;
      ADDRA0        : IN STD_ULOGIC;
      ADDRB11       : IN STD_ULOGIC;
      ADDRB10       : IN STD_ULOGIC;
      ADDRB9        : IN STD_ULOGIC;
      ADDRB8        : IN STD_ULOGIC;
      ADDRB7        : IN STD_ULOGIC;
      ADDRB6        : IN STD_ULOGIC;
      ADDRB5        : IN STD_ULOGIC;
      ADDRB4        : IN STD_ULOGIC;
      ADDRB3        : IN STD_ULOGIC;
      ADDRB2        : IN STD_ULOGIC;
      ADDRB1        : IN STD_ULOGIC;
      ADDRB0        : IN STD_ULOGIC;
      DINA8         : IN STD_ULOGIC;
      DINA7         : IN STD_ULOGIC;
      DINA6         : IN STD_ULOGIC;
      DINA5         : IN STD_ULOGIC;
      DINA4         : IN STD_ULOGIC;
      DINA3         : IN STD_ULOGIC;
      DINA2         : IN STD_ULOGIC;
      DINA1         : IN STD_ULOGIC;
      DINA0         : IN STD_ULOGIC;
      DINB8         : IN STD_ULOGIC;
      DINB7         : IN STD_ULOGIC;
      DINB6         : IN STD_ULOGIC;
      DINB5         : IN STD_ULOGIC;
      DINB4         : IN STD_ULOGIC;
      DINB3         : IN STD_ULOGIC;
      DINB2         : IN STD_ULOGIC;
      DINB1         : IN STD_ULOGIC;
      DINB0         : IN STD_ULOGIC;
      WIDTHA1       : IN STD_ULOGIC;
      WIDTHA0       : IN STD_ULOGIC;
      WIDTHB1       : IN STD_ULOGIC;
      WIDTHB0       : IN STD_ULOGIC;
      PIPEA         : IN STD_ULOGIC;
      PIPEB         : IN STD_ULOGIC;
      WMODEA        : IN STD_ULOGIC;
      WMODEB        : IN STD_ULOGIC;
      BLKA          : IN STD_ULOGIC;
      BLKB          : IN STD_ULOGIC;
      WENA          : IN STD_ULOGIC;
      WENB          : IN STD_ULOGIC;
      CLKA          : IN STD_ULOGIC;
      CLKB          : IN STD_ULOGIC;
      RESET         : IN STD_ULOGIC;
      DOUTA8        : OUT STD_ULOGIC;
      DOUTA7        : OUT STD_ULOGIC;
      DOUTA6        : OUT STD_ULOGIC;
      DOUTA5        : OUT STD_ULOGIC;
      DOUTA4        : OUT STD_ULOGIC;
      DOUTA3        : OUT STD_ULOGIC;
      DOUTA2        : OUT STD_ULOGIC;
      DOUTA1        : OUT STD_ULOGIC;
      DOUTA0        : OUT STD_ULOGIC;
      DOUTB8        : OUT STD_ULOGIC;
      DOUTB7        : OUT STD_ULOGIC;
      DOUTB6        : OUT STD_ULOGIC;
      DOUTB5        : OUT STD_ULOGIC;
      DOUTB4        : OUT STD_ULOGIC;
      DOUTB3        : OUT STD_ULOGIC;
      DOUTB2        : OUT STD_ULOGIC;
      DOUTB1        : OUT STD_ULOGIC;
      DOUTB0        : OUT STD_ULOGIC
     );

    END COMPONENT;

-- ---------------------------------------------------------------------
-- Constant declarations
-- ---------------------------------------------------------------------
    -- RAM4K9_WIDTH can be 1, 2, 4 or 8.
    -- Setting to 1 will minimize tile count for the core.
    constant RAM4K9_WIDTH   : integer := 1;

-- ---------------------------------------------------------------------
-- Signal declarations
-- ---------------------------------------------------------------------
    signal  ckRdAddr        : std_logic_vector(12 downto 9);

    signal  width0          : std_logic_vector(1 downto 0);
    signal  width1          : std_logic_vector(1 downto 0);
    signal  width2          : std_logic_vector(1 downto 0);
    signal  width3          : std_logic_vector(1 downto 0);
    signal  width4          : std_logic_vector(1 downto 0);
    signal  width5          : std_logic_vector(1 downto 0);
    signal  width6          : std_logic_vector(1 downto 0);
    signal  width7          : std_logic_vector(1 downto 0);
    signal  width8          : std_logic_vector(1 downto 0);
    signal  width9          : std_logic_vector(1 downto 0);
    signal  width10         : std_logic_vector(1 downto 0);
    signal  width11         : std_logic_vector(1 downto 0);
    signal  width12         : std_logic_vector(1 downto 0);
    signal  width13         : std_logic_vector(1 downto 0);
    signal  width14         : std_logic_vector(1 downto 0);
    signal  width15         : std_logic_vector(1 downto 0);

    signal  wen_vec         : std_logic_vector(15 downto 0);
    signal  ren_vec         : std_logic_vector(15 downto 0);

    signal  writeData0      : std_logic_vector(7 downto 0);
    signal  writeData1      : std_logic_vector(7 downto 0);
    signal  writeData2      : std_logic_vector(7 downto 0);
    signal  writeData3      : std_logic_vector(7 downto 0);
    signal  writeData4      : std_logic_vector(7 downto 0);
    signal  writeData5      : std_logic_vector(7 downto 0);
    signal  writeData6      : std_logic_vector(7 downto 0);
    signal  writeData7      : std_logic_vector(7 downto 0);
    signal  writeData8      : std_logic_vector(7 downto 0);
    signal  writeData9      : std_logic_vector(7 downto 0);
    signal  writeData10     : std_logic_vector(7 downto 0);
    signal  writeData11     : std_logic_vector(7 downto 0);
    signal  writeData12     : std_logic_vector(7 downto 0);
    signal  writeData13     : std_logic_vector(7 downto 0);
    signal  writeData14     : std_logic_vector(7 downto 0);
    signal  writeData15     : std_logic_vector(7 downto 0);

    signal  readData0       : std_logic_vector(7 downto 0);
    signal  readData1       : std_logic_vector(7 downto 0);
    signal  readData2       : std_logic_vector(7 downto 0);
    signal  readData3       : std_logic_vector(7 downto 0);
    signal  readData4       : std_logic_vector(7 downto 0);
    signal  readData5       : std_logic_vector(7 downto 0);
    signal  readData6       : std_logic_vector(7 downto 0);
    signal  readData7       : std_logic_vector(7 downto 0);
    signal  readData8       : std_logic_vector(7 downto 0);
    signal  readData9       : std_logic_vector(7 downto 0);
    signal  readData10      : std_logic_vector(7 downto 0);
    signal  readData11      : std_logic_vector(7 downto 0);
    signal  readData12      : std_logic_vector(7 downto 0);
    signal  readData13      : std_logic_vector(7 downto 0);
    signal  readData14      : std_logic_vector(7 downto 0);
    signal  readData15      : std_logic_vector(7 downto 0);

    signal  writeAddr0      : std_logic_vector(11 downto 0);
    signal  writeAddr1      : std_logic_vector(11 downto 0);
    signal  writeAddr2      : std_logic_vector(11 downto 0);
    signal  writeAddr3      : std_logic_vector(11 downto 0);
    signal  writeAddr4      : std_logic_vector(11 downto 0);
    signal  writeAddr5      : std_logic_vector(11 downto 0);
    signal  writeAddr6      : std_logic_vector(11 downto 0);
    signal  writeAddr7      : std_logic_vector(11 downto 0);
    signal  writeAddr8      : std_logic_vector(11 downto 0);
    signal  writeAddr9      : std_logic_vector(11 downto 0);
    signal  writeAddr10     : std_logic_vector(11 downto 0);
    signal  writeAddr11     : std_logic_vector(11 downto 0);
    signal  writeAddr12     : std_logic_vector(11 downto 0);
    signal  writeAddr13     : std_logic_vector(11 downto 0);
    signal  writeAddr14     : std_logic_vector(11 downto 0);
    signal  writeAddr15     : std_logic_vector(11 downto 0);

    signal  readAddr0       : std_logic_vector(11 downto 0);
    signal  readAddr1       : std_logic_vector(11 downto 0);
    signal  readAddr2       : std_logic_vector(11 downto 0);
    signal  readAddr3       : std_logic_vector(11 downto 0);
    signal  readAddr4       : std_logic_vector(11 downto 0);
    signal  readAddr5       : std_logic_vector(11 downto 0);
    signal  readAddr6       : std_logic_vector(11 downto 0);
    signal  readAddr7       : std_logic_vector(11 downto 0);
    signal  readAddr8       : std_logic_vector(11 downto 0);
    signal  readAddr9       : std_logic_vector(11 downto 0);
    signal  readAddr10      : std_logic_vector(11 downto 0);
    signal  readAddr11      : std_logic_vector(11 downto 0);
    signal  readAddr12      : std_logic_vector(11 downto 0);
    signal  readAddr13      : std_logic_vector(11 downto 0);
    signal  readAddr14      : std_logic_vector(11 downto 0);
    signal  readAddr15      : std_logic_vector(11 downto 0);

    signal  wen             : std_logic;
    signal  ren             : std_logic;
    signal  hi              : std_logic;
    signal  lo              : std_logic;

BEGIN
------------------------------------------------------------------------
-- Main body of code
------------------------------------------------------------------------
    wen <= not(sramWEN);
    ren <= not(sramREN);
    hi <= '1';
    lo <= '0';

    process (clk, resetn)
    begin
        if (resetn = '0') then
            ckRdAddr(12 downto 9) <= "0000";
        elsif (clk'event and clk = '1') then
            ckRdAddr(12 downto 9) <= readAddr(12 downto 9);
        end if;
    end process;

    ------------------------------------------------------------------------------------------
    -- Assign values to various signals based on DEPTH and RAM4K9_WIDTH settings.
    -- Default is to build the (byte wide) memory from RAM blocks which are configured to
    -- be tall and narrow.
    ------------------------------------------------------------------------------------------
    process (writeAddr, readAddr, writeData, wen, ren,
             readData0, readData1, readData2, readData3, readData4,
             readData5, readData6, readData7, readData8, readData9,
             readData10, readData11, readData12, readData13, readData14,
             readData15
             )
    begin
        width0  <= "00";
        width1  <= "00";
        width2  <= "00";
        width3  <= "00";
        width4  <= "00";
        width5  <= "00";
        width6  <= "00";
        width7  <= "00";
        width8  <= "00";
        width9  <= "00";
        width10 <= "00";
        width11 <= "00";
        width12 <= "00";
        width13 <= "00";
        width14 <= "00";
        width15 <= "00";

        wen_vec <= "1111111111111111";
        ren_vec <= "1111111111111111";

        writeData0  <= "00000000";
        writeData1  <= "00000000";
        writeData2  <= "00000000";
        writeData3  <= "00000000";
        writeData4  <= "00000000";
        writeData5  <= "00000000";
        writeData6  <= "00000000";
        writeData7  <= "00000000";
        writeData8  <= "00000000";
        writeData9  <= "00000000";
        writeData10 <= "00000000";
        writeData11 <= "00000000";
        writeData12 <= "00000000";
        writeData13 <= "00000000";
        writeData14 <= "00000000";
        writeData15 <= "00000000";

        writeAddr0  <= "000000000000";
        writeAddr1  <= "000000000000";
        writeAddr2  <= "000000000000";
        writeAddr3  <= "000000000000";
        writeAddr4  <= "000000000000";
        writeAddr5  <= "000000000000";
        writeAddr6  <= "000000000000";
        writeAddr7  <= "000000000000";
        writeAddr8  <= "000000000000";
        writeAddr9  <= "000000000000";
        writeAddr10 <= "000000000000";
        writeAddr11 <= "000000000000";
        writeAddr12 <= "000000000000";
        writeAddr13 <= "000000000000";
        writeAddr14 <= "000000000000";
        writeAddr15 <= "000000000000";

        readAddr0  <= "000000000000";
        readAddr1  <= "000000000000";
        readAddr2  <= "000000000000";
        readAddr3  <= "000000000000";
        readAddr4  <= "000000000000";
        readAddr5  <= "000000000000";
        readAddr6  <= "000000000000";
        readAddr7  <= "000000000000";
        readAddr8  <= "000000000000";
        readAddr9  <= "000000000000";
        readAddr10 <= "000000000000";
        readAddr11 <= "000000000000";
        readAddr12 <= "000000000000";
        readAddr13 <= "000000000000";
        readAddr14 <= "000000000000";
        readAddr15 <= "000000000000";

        case (DEPTH) is
             when 512 =>
                    width0 <= "11";
                    writeAddr0 <= "000"&writeAddr(8 downto 0);
                    readAddr0  <= "000"&readAddr(8 downto 0);
                    writeData0 <= writeData;
                    wen_vec(0) <= wen;
                    ren_vec(0) <= ren;
                    readData <= readData0;
            when 1024 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            case (writeAddr(9)) is
                                when '0' => wen_vec(0) <= wen;
                                when '1' => wen_vec(1) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(9)) is
                                when '0' => ren_vec(0) <= ren;
                                when '1' => ren_vec(1) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(9)) is
                                when '0' => readData <= readData0;
                                when '1' => readData <= readData1;
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "10";
                            width1 <= "10";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            wen_vec(1 downto 0) <= wen&wen;
                            ren_vec(1 downto 0) <= ren&ren;
                            readData <= readData1(3 downto 0)&readData0(3 downto 0);
                end case;
            when 1536 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            width2 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            writeData2 <= writeData;
                            case (writeAddr(10 downto 9)) is
                                when "00" => wen_vec(0) <= wen;
                                when "01" => wen_vec(1) <= wen;
                                when "10" => wen_vec(2) <= wen;
                                when "11" => wen_vec(1) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(10 downto 9)) is
                                when "00" => ren_vec(0) <= ren;
                                when "01" => ren_vec(1) <= ren;
                                when "10" => ren_vec(2) <= ren;
                                when "11" => ren_vec(1) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(10 downto 9)) is
                                when "00" => readData <= readData0;
                                when "01" => readData <= readData1;
                                when "10" => readData <= readData2;
                                when "11" => readData <= readData1;
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "11";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2 <= writeData;
                            case (writeAddr(10 downto 9)) is
                                when "00" => wen_vec(1 downto 0) <= wen&wen;
                                when "01" => wen_vec(1 downto 0) <= wen&wen;
                                when "10" => wen_vec(2) <= wen;
                                when "11" => wen_vec(1 downto 0) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(10 downto 9)) is
                                when "00" => ren_vec(1 downto 0) <= ren&ren;
                                when "01" => ren_vec(1 downto 0) <= ren&ren;
                                when "10" => ren_vec(2) <= ren;
                                when "11" => ren_vec(1 downto 0) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(10 downto 9)) is
                                when "00" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "01" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "10" => readData <= readData2;
                                when "11" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when others => null;
                            end case;
                end case;
            when 2048 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            width2 <= "11";
                            width3 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            writeAddr3 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            readAddr3  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            writeData2 <= writeData;
                            writeData3 <= writeData;
                            case (writeAddr(10 downto 9)) is
                                when "00" => wen_vec(0) <= wen;
                                when "01" => wen_vec(1) <= wen;
                                when "10" => wen_vec(2) <= wen;
                                when "11" => wen_vec(3) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(10 downto 9)) is
                                when "00" => ren_vec(0) <= ren;
                                when "01" => ren_vec(1) <= ren;
                                when "10" => ren_vec(2) <= ren;
                                when "11" => ren_vec(3) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(10 downto 9)) is
                                when "00" => readData <= readData0;
                                when "01" => readData <= readData1;
                                when "10" => readData <= readData2;
                                when "11" => readData <= readData3;
                                when others => null;
                            end case;
                    when 4 =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "10";
                            width3 <= "10";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            writeAddr2 <= "00"&writeAddr(9 downto 0);
                            writeAddr3 <= "00"&writeAddr(9 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            readAddr2  <= "00"&readAddr(9 downto 0);
                            readAddr3  <= "00"&readAddr(9 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(10 downto 9)) is
                                when "00" => wen_vec(1 downto 0) <= wen&wen;
                                when "01" => wen_vec(1 downto 0) <= wen&wen;
                                when "10" => wen_vec(3 downto 2) <= wen&wen;
                                when "11" => wen_vec(3 downto 2) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(10 downto 9)) is
                                when "00" => ren_vec(1 downto 0) <= ren&ren;
                                when "01" => ren_vec(1 downto 0) <= ren&ren;
                                when "10" => ren_vec(3 downto 2) <= ren&ren;
                                when "11" => ren_vec(3 downto 2) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(10 downto 9)) is
                                when "00" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "01" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "10" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "11" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "01";
                            width1 <= "01";
                            width2 <= "01";
                            width3 <= "01";
                            writeAddr0 <= '0'&writeAddr(10 downto 0);
                            writeAddr1 <= '0'&writeAddr(10 downto 0);
                            writeAddr2 <= '0'&writeAddr(10 downto 0);
                            writeAddr3 <= '0'&writeAddr(10 downto 0);
                            readAddr0  <= '0'&readAddr(10 downto 0);
                            readAddr1  <= '0'&readAddr(10 downto 0);
                            readAddr2  <= '0'&readAddr(10 downto 0);
                            readAddr3  <= '0'&readAddr(10 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            wen_vec(3 downto 0) <= wen&wen&wen&wen;
                            ren_vec(3 downto 0) <= ren&ren&ren&ren;
                            readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                end case;
            when 2560 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            width2 <= "11";
                            width3 <= "11";
                            width4 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            writeAddr3 <= "000"&writeAddr(8 downto 0);
                            writeAddr4 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            readAddr3  <= "000"&readAddr(8 downto 0);
                            readAddr4  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            writeData2 <= writeData;
                            writeData3 <= writeData;
                            writeData4 <= writeData;
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(0) <= wen;
                                when "001" => wen_vec(1) <= wen;
                                when "010" => wen_vec(2) <= wen;
                                when "011" => wen_vec(3) <= wen;
                                when "100" => wen_vec(4) <= wen;
                                when "101" => wen_vec(1) <= wen;
                                when "110" => wen_vec(2) <= wen;
                                when "111" => wen_vec(3) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(0) <= ren;
                                when "001" => ren_vec(1) <= ren;
                                when "010" => ren_vec(2) <= ren;
                                when "011" => ren_vec(3) <= ren;
                                when "100" => ren_vec(4) <= ren;
                                when "101" => ren_vec(1) <= ren;
                                when "110" => ren_vec(2) <= ren;
                                when "111" => ren_vec(3) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData0;
                                when "001" => readData <= readData1;
                                when "010" => readData <= readData2;
                                when "011" => readData <= readData3;
                                when "100" => readData <= readData4;
                                when "101" => readData <= readData1;
                                when "110" => readData <= readData2;
                                when "111" => readData <= readData3;
                                when others => null;
                            end case;
                    when 4 =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "10";
                            width3 <= "10";
                            width4 <= "11";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            writeAddr2 <= "00"&writeAddr(9 downto 0);
                            writeAddr3 <= "00"&writeAddr(9 downto 0);
                            writeAddr4 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            readAddr2  <= "00"&readAddr(9 downto 0);
                            readAddr3  <= "00"&readAddr(9 downto 0);
                            readAddr4  <= "000"&readAddr(8 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4 <= writeData;
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(1 downto 0) <= wen&wen;
                                when "001" => wen_vec(1 downto 0) <= wen&wen;
                                when "010" => wen_vec(3 downto 2) <= wen&wen;
                                when "011" => wen_vec(3 downto 2) <= wen&wen;
                                when "100" => wen_vec(4) <= wen;
                                when "101" => wen_vec(1 downto 0) <= wen&wen;
                                when "110" => wen_vec(3 downto 2) <= wen&wen;
                                when "111" => wen_vec(3 downto 2) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(1 downto 0) <= ren&ren;
                                when "001" => ren_vec(1 downto 0) <= ren&ren;
                                when "010" => ren_vec(3 downto 2) <= ren&ren;
                                when "011" => ren_vec(3 downto 2) <= ren&ren;
                                when "100" => ren_vec(4) <= ren;
                                when "101" => ren_vec(1 downto 0) <= ren&ren;
                                when "110" => ren_vec(3 downto 2) <= ren&ren;
                                when "111" => ren_vec(3 downto 2) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "100" => readData <= readData4;
                                when "101" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "110" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "111" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "01";
                            width1 <= "01";
                            width2 <= "01";
                            width3 <= "01";
                            width4 <= "11";
                            writeAddr0 <= '0'&writeAddr(10 downto 0);
                            writeAddr1 <= '0'&writeAddr(10 downto 0);
                            writeAddr2 <= '0'&writeAddr(10 downto 0);
                            writeAddr3 <= '0'&writeAddr(10 downto 0);
                            writeAddr4 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= '0'&readAddr(10 downto 0);
                            readAddr1  <= '0'&readAddr(10 downto 0);
                            readAddr2  <= '0'&readAddr(10 downto 0);
                            readAddr3  <= '0'&readAddr(10 downto 0);
                            readAddr4  <= "000"&readAddr(8 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            writeData4 <= writeData;
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "100" => wen_vec(4) <= wen;
                                when "101" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "110" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "111" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "100" => ren_vec(4) <= ren;
                                when "101" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "110" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "111" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "100" => readData <= readData4;
                                when "101" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "110" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "111" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when others => null;
                            end case;
                end case;
            when 3072 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            width2 <= "11";
                            width3 <= "11";
                            width4 <= "11";
                            width5 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            writeAddr3 <= "000"&writeAddr(8 downto 0);
                            writeAddr4 <= "000"&writeAddr(8 downto 0);
                            writeAddr5 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            readAddr3  <= "000"&readAddr(8 downto 0);
                            readAddr4  <= "000"&readAddr(8 downto 0);
                            readAddr5  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            writeData2 <= writeData;
                            writeData3 <= writeData;
                            writeData4 <= writeData;
                            writeData5 <= writeData;
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(0) <= wen;
                                when "001" => wen_vec(1) <= wen;
                                when "010" => wen_vec(2) <= wen;
                                when "011" => wen_vec(3) <= wen;
                                when "100" => wen_vec(4) <= wen;
                                when "101" => wen_vec(5) <= wen;
                                when "110" => wen_vec(2) <= wen;
                                when "111" => wen_vec(3) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(0) <= ren;
                                when "001" => ren_vec(1) <= ren;
                                when "010" => ren_vec(2) <= ren;
                                when "011" => ren_vec(3) <= ren;
                                when "100" => ren_vec(4) <= ren;
                                when "101" => ren_vec(5) <= ren;
                                when "110" => ren_vec(2) <= ren;
                                when "111" => ren_vec(3) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData0;
                                when "001" => readData <= readData1;
                                when "010" => readData <= readData2;
                                when "011" => readData <= readData3;
                                when "100" => readData <= readData4;
                                when "101" => readData <= readData5;
                                when "110" => readData <= readData2;
                                when "111" => readData <= readData3;
                                when others => null;
                            end case;
                    when 4 =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "10";
                            width3 <= "10";
                            width4 <= "10";
                            width5 <= "10";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            writeAddr2 <= "00"&writeAddr(9 downto 0);
                            writeAddr3 <= "00"&writeAddr(9 downto 0);
                            writeAddr4 <= "00"&writeAddr(9 downto 0);
                            writeAddr5 <= "00"&writeAddr(9 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            readAddr2  <= "00"&readAddr(9 downto 0);
                            readAddr3  <= "00"&readAddr(9 downto 0);
                            readAddr4  <= "00"&readAddr(9 downto 0);
                            readAddr5  <= "00"&readAddr(9 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(1 downto 0) <= wen&wen;
                                when "001" => wen_vec(1 downto 0) <= wen&wen;
                                when "010" => wen_vec(3 downto 2) <= wen&wen;
                                when "011" => wen_vec(3 downto 2) <= wen&wen;
                                when "100" => wen_vec(5 downto 4) <= wen&wen;
                                when "101" => wen_vec(5 downto 4) <= wen&wen;
                                when "110" => wen_vec(3 downto 2) <= wen&wen;
                                when "111" => wen_vec(3 downto 2) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(1 downto 0) <= ren&ren;
                                when "001" => ren_vec(1 downto 0) <= ren&ren;
                                when "010" => ren_vec(3 downto 2) <= ren&ren;
                                when "011" => ren_vec(3 downto 2) <= ren&ren;
                                when "100" => ren_vec(5 downto 4) <= ren&ren;
                                when "101" => ren_vec(5 downto 4) <= ren&ren;
                                when "110" => ren_vec(3 downto 2) <= ren&ren;
                                when "111" => ren_vec(3 downto 2) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "110" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "111" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "01";
                            width1 <= "01";
                            width2 <= "01";
                            width3 <= "01";
                            width4 <= "10";
                            width5 <= "10";
                            writeAddr0 <= '0'&writeAddr(10 downto 0);
                            writeAddr1 <= '0'&writeAddr(10 downto 0);
                            writeAddr2 <= '0'&writeAddr(10 downto 0);
                            writeAddr3 <= '0'&writeAddr(10 downto 0);
                            writeAddr4 <= "00"&writeAddr(9 downto 0);
                            writeAddr5 <= "00"&writeAddr(9 downto 0);
                            readAddr0  <= '0'&readAddr(10 downto 0);
                            readAddr1  <= '0'&readAddr(10 downto 0);
                            readAddr2  <= '0'&readAddr(10 downto 0);
                            readAddr3  <= '0'&readAddr(10 downto 0);
                            readAddr4  <= "00"&readAddr(9 downto 0);
                            readAddr5  <= "00"&readAddr(9 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "100" => wen_vec(5 downto 4) <= wen&wen;
                                when "101" => wen_vec(5 downto 4) <= wen&wen;
                                when "110" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "111" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "100" => ren_vec(5 downto 4) <= ren&ren;
                                when "101" => ren_vec(5 downto 4) <= ren&ren;
                                when "110" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "111" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "110" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "111" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when others => null;
                            end case;
                end case;
            when 3584 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            width2 <= "11";
                            width3 <= "11";
                            width4 <= "11";
                            width5 <= "11";
                            width6 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            writeAddr3 <= "000"&writeAddr(8 downto 0);
                            writeAddr4 <= "000"&writeAddr(8 downto 0);
                            writeAddr5 <= "000"&writeAddr(8 downto 0);
                            writeAddr6 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            readAddr3  <= "000"&readAddr(8 downto 0);
                            readAddr4  <= "000"&readAddr(8 downto 0);
                            readAddr5  <= "000"&readAddr(8 downto 0);
                            readAddr6  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            writeData2 <= writeData;
                            writeData3 <= writeData;
                            writeData4 <= writeData;
                            writeData5 <= writeData;
                            writeData6 <= writeData;
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(0) <= wen;
                                when "001" => wen_vec(1) <= wen;
                                when "010" => wen_vec(2) <= wen;
                                when "011" => wen_vec(3) <= wen;
                                when "100" => wen_vec(4) <= wen;
                                when "101" => wen_vec(5) <= wen;
                                when "110" => wen_vec(6) <= wen;
                                when "111" => wen_vec(3) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(0) <= ren;
                                when "001" => ren_vec(1) <= ren;
                                when "010" => ren_vec(2) <= ren;
                                when "011" => ren_vec(3) <= ren;
                                when "100" => ren_vec(4) <= ren;
                                when "101" => ren_vec(5) <= ren;
                                when "110" => ren_vec(6) <= ren;
                                when "111" => ren_vec(3) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData0;
                                when "001" => readData <= readData1;
                                when "010" => readData <= readData2;
                                when "011" => readData <= readData3;
                                when "100" => readData <= readData4;
                                when "101" => readData <= readData5;
                                when "110" => readData <= readData6;
                                when "111" => readData <= readData3;
                                when others => null;
                            end case;
                    when 4 =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "10";
                            width3 <= "10";
                            width4 <= "10";
                            width5 <= "10";
                            width6 <= "11";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            writeAddr2 <= "00"&writeAddr(9 downto 0);
                            writeAddr3 <= "00"&writeAddr(9 downto 0);
                            writeAddr4 <= "00"&writeAddr(9 downto 0);
                            writeAddr5 <= "00"&writeAddr(9 downto 0);
                            writeAddr6 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            readAddr2  <= "00"&readAddr(9 downto 0);
                            readAddr3  <= "00"&readAddr(9 downto 0);
                            readAddr4  <= "00"&readAddr(9 downto 0);
                            readAddr5  <= "00"&readAddr(9 downto 0);
                            readAddr6  <= "000"&readAddr(8 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6 <= writeData;
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(1 downto 0) <= wen&wen;
                                when "001" => wen_vec(1 downto 0) <= wen&wen;
                                when "010" => wen_vec(3 downto 2) <= wen&wen;
                                when "011" => wen_vec(3 downto 2) <= wen&wen;
                                when "100" => wen_vec(5 downto 4) <= wen&wen;
                                when "101" => wen_vec(5 downto 4) <= wen&wen;
                                when "110" => wen_vec(6) <= wen;
                                when "111" => wen_vec(3 downto 2) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(1 downto 0) <= ren&ren;
                                when "001" => ren_vec(1 downto 0) <= ren&ren;
                                when "010" => ren_vec(3 downto 2) <= ren&ren;
                                when "011" => ren_vec(3 downto 2) <= ren&ren;
                                when "100" => ren_vec(5 downto 4) <= ren&ren;
                                when "101" => ren_vec(5 downto 4) <= ren&ren;
                                when "110" => ren_vec(6) <= ren;
                                when "111" => ren_vec(3 downto 2) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "110" => readData <= readData6;
                                when "111" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "01";
                            width1 <= "01";
                            width2 <= "01";
                            width3 <= "01";
                            width4 <= "10";
                            width5 <= "10";
                            width6 <= "11";
                            writeAddr0 <= '0'&writeAddr(10 downto 0);
                            writeAddr1 <= '0'&writeAddr(10 downto 0);
                            writeAddr2 <= '0'&writeAddr(10 downto 0);
                            writeAddr3 <= '0'&writeAddr(10 downto 0);
                            writeAddr4 <= "00"&writeAddr(9 downto 0);
                            writeAddr5 <= "00"&writeAddr(9 downto 0);
                            writeAddr6 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= '0'&readAddr(10 downto 0);
                            readAddr1  <= '0'&readAddr(10 downto 0);
                            readAddr2  <= '0'&readAddr(10 downto 0);
                            readAddr3  <= '0'&readAddr(10 downto 0);
                            readAddr4  <= "00"&readAddr(9 downto 0);
                            readAddr5  <= "00"&readAddr(9 downto 0);
                            readAddr6  <= "000"&readAddr(8 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6 <= writeData;
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "100" => wen_vec(5 downto 4) <= wen&wen;
                                when "101" => wen_vec(5 downto 4) <= wen&wen;
                                when "110" => wen_vec(6) <= wen;
                                when "111" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "100" => ren_vec(5 downto 4) <= ren&ren;
                                when "101" => ren_vec(5 downto 4) <= ren&ren;
                                when "110" => ren_vec(6) <= ren;
                                when "111" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "110" => readData <= readData6;
                                when "111" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when others => null;
                            end case;
                end case;
            when 4096 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            width2 <= "11";
                            width3 <= "11";
                            width4 <= "11";
                            width5 <= "11";
                            width6 <= "11";
                            width7 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            writeAddr3 <= "000"&writeAddr(8 downto 0);
                            writeAddr4 <= "000"&writeAddr(8 downto 0);
                            writeAddr5 <= "000"&writeAddr(8 downto 0);
                            writeAddr6 <= "000"&writeAddr(8 downto 0);
                            writeAddr7 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            readAddr3  <= "000"&readAddr(8 downto 0);
                            readAddr4  <= "000"&readAddr(8 downto 0);
                            readAddr5  <= "000"&readAddr(8 downto 0);
                            readAddr6  <= "000"&readAddr(8 downto 0);
                            readAddr7  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            writeData2 <= writeData;
                            writeData3 <= writeData;
                            writeData4 <= writeData;
                            writeData5 <= writeData;
                            writeData6 <= writeData;
                            writeData7 <= writeData;
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(0) <= wen;
                                when "001" => wen_vec(1) <= wen;
                                when "010" => wen_vec(2) <= wen;
                                when "011" => wen_vec(3) <= wen;
                                when "100" => wen_vec(4) <= wen;
                                when "101" => wen_vec(5) <= wen;
                                when "110" => wen_vec(6) <= wen;
                                when "111" => wen_vec(7) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(0) <= ren;
                                when "001" => ren_vec(1) <= ren;
                                when "010" => ren_vec(2) <= ren;
                                when "011" => ren_vec(3) <= ren;
                                when "100" => ren_vec(4) <= ren;
                                when "101" => ren_vec(5) <= ren;
                                when "110" => ren_vec(6) <= ren;
                                when "111" => ren_vec(7) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData0;
                                when "001" => readData <= readData1;
                                when "010" => readData <= readData2;
                                when "011" => readData <= readData3;
                                when "100" => readData <= readData4;
                                when "101" => readData <= readData5;
                                when "110" => readData <= readData6;
                                when "111" => readData <= readData7;
                                when others => null;
                            end case;
                    when 4 =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "10";
                            width3 <= "10";
                            width4 <= "10";
                            width5 <= "10";
                            width6 <= "10";
                            width7 <= "10";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            writeAddr2 <= "00"&writeAddr(9 downto 0);
                            writeAddr3 <= "00"&writeAddr(9 downto 0);
                            writeAddr4 <= "00"&writeAddr(9 downto 0);
                            writeAddr5 <= "00"&writeAddr(9 downto 0);
                            writeAddr6 <= "00"&writeAddr(9 downto 0);
                            writeAddr7 <= "00"&writeAddr(9 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            readAddr2  <= "00"&readAddr(9 downto 0);
                            readAddr3  <= "00"&readAddr(9 downto 0);
                            readAddr4  <= "00"&readAddr(9 downto 0);
                            readAddr5  <= "00"&readAddr(9 downto 0);
                            readAddr6  <= "00"&readAddr(9 downto 0);
                            readAddr7  <= "00"&readAddr(9 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(1 downto 0) <= wen&wen;
                                when "001" => wen_vec(1 downto 0) <= wen&wen;
                                when "010" => wen_vec(3 downto 2) <= wen&wen;
                                when "011" => wen_vec(3 downto 2) <= wen&wen;
                                when "100" => wen_vec(5 downto 4) <= wen&wen;
                                when "101" => wen_vec(5 downto 4) <= wen&wen;
                                when "110" => wen_vec(7 downto 6) <= wen&wen;
                                when "111" => wen_vec(7 downto 6) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(1 downto 0) <= ren&ren;
                                when "001" => ren_vec(1 downto 0) <= ren&ren;
                                when "010" => ren_vec(3 downto 2) <= ren&ren;
                                when "011" => ren_vec(3 downto 2) <= ren&ren;
                                when "100" => ren_vec(5 downto 4) <= ren&ren;
                                when "101" => ren_vec(5 downto 4) <= ren&ren;
                                when "110" => ren_vec(7 downto 6) <= ren&ren;
                                when "111" => ren_vec(7 downto 6) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0 <= "01";
                            width1 <= "01";
                            width2 <= "01";
                            width3 <= "01";
                            width4 <= "01";
                            width5 <= "01";
                            width6 <= "01";
                            width7 <= "01";
                            writeAddr0 <= '0'&writeAddr(10 downto 0);
                            writeAddr1 <= '0'&writeAddr(10 downto 0);
                            writeAddr2 <= '0'&writeAddr(10 downto 0);
                            writeAddr3 <= '0'&writeAddr(10 downto 0);
                            writeAddr4 <= '0'&writeAddr(10 downto 0);
                            writeAddr5 <= '0'&writeAddr(10 downto 0);
                            writeAddr6 <= '0'&writeAddr(10 downto 0);
                            writeAddr7 <= '0'&writeAddr(10 downto 0);
                            readAddr0  <= '0'&readAddr(10 downto 0);
                            readAddr1  <= '0'&readAddr(10 downto 0);
                            readAddr2  <= '0'&readAddr(10 downto 0);
                            readAddr3  <= '0'&readAddr(10 downto 0);
                            readAddr4  <= '0'&readAddr(10 downto 0);
                            readAddr5  <= '0'&readAddr(10 downto 0);
                            readAddr6  <= '0'&readAddr(10 downto 0);
                            readAddr7  <= '0'&readAddr(10 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            writeData4(1 downto 0) <= writeData(1 downto 0);
                            writeData5(1 downto 0) <= writeData(3 downto 2);
                            writeData6(1 downto 0) <= writeData(5 downto 4);
                            writeData7(1 downto 0) <= writeData(7 downto 6);
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "00";
                            width1 <= "00";
                            width2 <= "00";
                            width3 <= "00";
                            width4 <= "00";
                            width5 <= "00";
                            width6 <= "00";
                            width7 <= "00";
                            writeAddr0 <= writeAddr(11 downto 0);
                            writeAddr1 <= writeAddr(11 downto 0);
                            writeAddr2 <= writeAddr(11 downto 0);
                            writeAddr3 <= writeAddr(11 downto 0);
                            writeAddr4 <= writeAddr(11 downto 0);
                            writeAddr5 <= writeAddr(11 downto 0);
                            writeAddr6 <= writeAddr(11 downto 0);
                            writeAddr7 <= writeAddr(11 downto 0);
                            readAddr0  <= readAddr(11 downto 0);
                            readAddr1  <= readAddr(11 downto 0);
                            readAddr2  <= readAddr(11 downto 0);
                            readAddr3  <= readAddr(11 downto 0);
                            readAddr4  <= readAddr(11 downto 0);
                            readAddr5  <= readAddr(11 downto 0);
                            readAddr6  <= readAddr(11 downto 0);
                            readAddr7  <= readAddr(11 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            case (writeAddr(11 downto 9)) is
                                when "000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(11 downto 9)) is
                                when "000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(11 downto 9)) is
                                when "000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when others => null;
                            end case;
                end case;
            when 4608 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            width2 <= "11";
                            width3 <= "11";
                            width4 <= "11";
                            width5 <= "11";
                            width6 <= "11";
                            width7 <= "11";
                            width8 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            writeAddr3 <= "000"&writeAddr(8 downto 0);
                            writeAddr4 <= "000"&writeAddr(8 downto 0);
                            writeAddr5 <= "000"&writeAddr(8 downto 0);
                            writeAddr6 <= "000"&writeAddr(8 downto 0);
                            writeAddr7 <= "000"&writeAddr(8 downto 0);
                            writeAddr8 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            readAddr3  <= "000"&readAddr(8 downto 0);
                            readAddr4  <= "000"&readAddr(8 downto 0);
                            readAddr5  <= "000"&readAddr(8 downto 0);
                            readAddr6  <= "000"&readAddr(8 downto 0);
                            readAddr7  <= "000"&readAddr(8 downto 0);
                            readAddr8  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            writeData2 <= writeData;
                            writeData3 <= writeData;
                            writeData4 <= writeData;
                            writeData5 <= writeData;
                            writeData6 <= writeData;
                            writeData7 <= writeData;
                            writeData8 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(0) <= wen;
                                when "0001" => wen_vec(1) <= wen;
                                when "0010" => wen_vec(2) <= wen;
                                when "0011" => wen_vec(3) <= wen;
                                when "0100" => wen_vec(4) <= wen;
                                when "0101" => wen_vec(5) <= wen;
                                when "0110" => wen_vec(6) <= wen;
                                when "0111" => wen_vec(7) <= wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(1) <= wen;
                                when "1010" => wen_vec(2) <= wen;
                                when "1011" => wen_vec(3) <= wen;
                                when "1100" => wen_vec(4) <= wen;
                                when "1101" => wen_vec(5) <= wen;
                                when "1110" => wen_vec(6) <= wen;
                                when "1111" => wen_vec(7) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(0) <= ren;
                                when "0001" => ren_vec(1) <= ren;
                                when "0010" => ren_vec(2) <= ren;
                                when "0011" => ren_vec(3) <= ren;
                                when "0100" => ren_vec(4) <= ren;
                                when "0101" => ren_vec(5) <= ren;
                                when "0110" => ren_vec(6) <= ren;
                                when "0111" => ren_vec(7) <= ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(1) <= ren;
                                when "1010" => ren_vec(2) <= ren;
                                when "1011" => ren_vec(3) <= ren;
                                when "1100" => ren_vec(4) <= ren;
                                when "1101" => ren_vec(5) <= ren;
                                when "1110" => ren_vec(6) <= ren;
                                when "1111" => ren_vec(7) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData0;
                                when "0001" => readData <= readData1;
                                when "0010" => readData <= readData2;
                                when "0011" => readData <= readData3;
                                when "0100" => readData <= readData4;
                                when "0101" => readData <= readData5;
                                when "0110" => readData <= readData6;
                                when "0111" => readData <= readData7;
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData1;
                                when "1010" => readData <= readData2;
                                when "1011" => readData <= readData3;
                                when "1100" => readData <= readData4;
                                when "1101" => readData <= readData5;
                                when "1110" => readData <= readData6;
                                when "1111" => readData <= readData7;
                                when others => null;
                            end case;
                    when 4 =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "10";
                            width3 <= "10";
                            width4 <= "10";
                            width5 <= "10";
                            width6 <= "10";
                            width7 <= "10";
                            width8 <= "11";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            writeAddr2 <= "00"&writeAddr(9 downto 0);
                            writeAddr3 <= "00"&writeAddr(9 downto 0);
                            writeAddr4 <= "00"&writeAddr(9 downto 0);
                            writeAddr5 <= "00"&writeAddr(9 downto 0);
                            writeAddr6 <= "00"&writeAddr(9 downto 0);
                            writeAddr7 <= "00"&writeAddr(9 downto 0);
                            writeAddr8 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            readAddr2  <= "00"&readAddr(9 downto 0);
                            readAddr3  <= "00"&readAddr(9 downto 0);
                            readAddr4  <= "00"&readAddr(9 downto 0);
                            readAddr5  <= "00"&readAddr(9 downto 0);
                            readAddr6  <= "00"&readAddr(9 downto 0);
                            readAddr7  <= "00"&readAddr(9 downto 0);
                            readAddr8  <= "000"&readAddr(8 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            writeData8 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(1 downto 0) <= wen&wen;
                                when "0001" => wen_vec(1 downto 0) <= wen&wen;
                                when "0010" => wen_vec(3 downto 2) <= wen&wen;
                                when "0011" => wen_vec(3 downto 2) <= wen&wen;
                                when "0100" => wen_vec(5 downto 4) <= wen&wen;
                                when "0101" => wen_vec(5 downto 4) <= wen&wen;
                                when "0110" => wen_vec(7 downto 6) <= wen&wen;
                                when "0111" => wen_vec(7 downto 6) <= wen&wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(1 downto 0) <= wen&wen;
                                when "1010" => wen_vec(3 downto 2) <= wen&wen;
                                when "1011" => wen_vec(3 downto 2) <= wen&wen;
                                when "1100" => wen_vec(5 downto 4) <= wen&wen;
                                when "1101" => wen_vec(5 downto 4) <= wen&wen;
                                when "1110" => wen_vec(7 downto 6) <= wen&wen;
                                when "1111" => wen_vec(7 downto 6) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(1 downto 0) <= ren&ren;
                                when "0001" => ren_vec(1 downto 0) <= ren&ren;
                                when "0010" => ren_vec(3 downto 2) <= ren&ren;
                                when "0011" => ren_vec(3 downto 2) <= ren&ren;
                                when "0100" => ren_vec(5 downto 4) <= ren&ren;
                                when "0101" => ren_vec(5 downto 4) <= ren&ren;
                                when "0110" => ren_vec(7 downto 6) <= ren&ren;
                                when "0111" => ren_vec(7 downto 6) <= ren&ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(1 downto 0) <= ren&ren;
                                when "1010" => ren_vec(3 downto 2) <= ren&ren;
                                when "1011" => ren_vec(3 downto 2) <= ren&ren;
                                when "1100" => ren_vec(5 downto 4) <= ren&ren;
                                when "1101" => ren_vec(5 downto 4) <= ren&ren;
                                when "1110" => ren_vec(7 downto 6) <= ren&ren;
                                when "1111" => ren_vec(7 downto 6) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "0111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "1010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "1011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "1100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0 <= "01";
                            width1 <= "01";
                            width2 <= "01";
                            width3 <= "01";
                            width4 <= "01";
                            width5 <= "01";
                            width6 <= "01";
                            width7 <= "01";
                            width8 <= "11";
                            writeAddr0 <= '0'&writeAddr(10 downto 0);
                            writeAddr1 <= '0'&writeAddr(10 downto 0);
                            writeAddr2 <= '0'&writeAddr(10 downto 0);
                            writeAddr3 <= '0'&writeAddr(10 downto 0);
                            writeAddr4 <= '0'&writeAddr(10 downto 0);
                            writeAddr5 <= '0'&writeAddr(10 downto 0);
                            writeAddr6 <= '0'&writeAddr(10 downto 0);
                            writeAddr7 <= '0'&writeAddr(10 downto 0);
                            writeAddr8 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= '0'&readAddr(10 downto 0);
                            readAddr1  <= '0'&readAddr(10 downto 0);
                            readAddr2  <= '0'&readAddr(10 downto 0);
                            readAddr3  <= '0'&readAddr(10 downto 0);
                            readAddr4  <= '0'&readAddr(10 downto 0);
                            readAddr5  <= '0'&readAddr(10 downto 0);
                            readAddr6  <= '0'&readAddr(10 downto 0);
                            readAddr7  <= '0'&readAddr(10 downto 0);
                            readAddr8  <= "000"&readAddr(8 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            writeData4(1 downto 0) <= writeData(1 downto 0);
                            writeData5(1 downto 0) <= writeData(3 downto 2);
                            writeData6(1 downto 0) <= writeData(5 downto 4);
                            writeData7(1 downto 0) <= writeData(7 downto 6);
                            writeData8 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "1010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "1011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "1100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "00";
                            width1 <= "00";
                            width2 <= "00";
                            width3 <= "00";
                            width4 <= "00";
                            width5 <= "00";
                            width6 <= "00";
                            width7 <= "00";
                            width8 <= "11";
                            writeAddr0 <= writeAddr(11 downto 0);
                            writeAddr1 <= writeAddr(11 downto 0);
                            writeAddr2 <= writeAddr(11 downto 0);
                            writeAddr3 <= writeAddr(11 downto 0);
                            writeAddr4 <= writeAddr(11 downto 0);
                            writeAddr5 <= writeAddr(11 downto 0);
                            writeAddr6 <= writeAddr(11 downto 0);
                            writeAddr7 <= writeAddr(11 downto 0);
                            writeAddr8 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= readAddr(11 downto 0);
                            readAddr1  <= readAddr(11 downto 0);
                            readAddr2  <= readAddr(11 downto 0);
                            readAddr3  <= readAddr(11 downto 0);
                            readAddr4  <= readAddr(11 downto 0);
                            readAddr5  <= readAddr(11 downto 0);
                            readAddr6  <= readAddr(11 downto 0);
                            readAddr7  <= readAddr(11 downto 0);
                            readAddr8  <= "000"&readAddr(8 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            writeData8 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when others => null;
                            end case;
                end case;
            when 5120 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0 <= "11";
                            width1 <= "11";
                            width2 <= "11";
                            width3 <= "11";
                            width4 <= "11";
                            width5 <= "11";
                            width6 <= "11";
                            width7 <= "11";
                            width8 <= "11";
                            width9 <= "11";
                            writeAddr0 <= "000"&writeAddr(8 downto 0);
                            writeAddr1 <= "000"&writeAddr(8 downto 0);
                            writeAddr2 <= "000"&writeAddr(8 downto 0);
                            writeAddr3 <= "000"&writeAddr(8 downto 0);
                            writeAddr4 <= "000"&writeAddr(8 downto 0);
                            writeAddr5 <= "000"&writeAddr(8 downto 0);
                            writeAddr6 <= "000"&writeAddr(8 downto 0);
                            writeAddr7 <= "000"&writeAddr(8 downto 0);
                            writeAddr8 <= "000"&writeAddr(8 downto 0);
                            writeAddr9 <= "000"&writeAddr(8 downto 0);
                            readAddr0  <= "000"&readAddr(8 downto 0);
                            readAddr1  <= "000"&readAddr(8 downto 0);
                            readAddr2  <= "000"&readAddr(8 downto 0);
                            readAddr3  <= "000"&readAddr(8 downto 0);
                            readAddr4  <= "000"&readAddr(8 downto 0);
                            readAddr5  <= "000"&readAddr(8 downto 0);
                            readAddr6  <= "000"&readAddr(8 downto 0);
                            readAddr7  <= "000"&readAddr(8 downto 0);
                            readAddr8  <= "000"&readAddr(8 downto 0);
                            readAddr9  <= "000"&readAddr(8 downto 0);
                            writeData0 <= writeData;
                            writeData1 <= writeData;
                            writeData2 <= writeData;
                            writeData3 <= writeData;
                            writeData4 <= writeData;
                            writeData5 <= writeData;
                            writeData6 <= writeData;
                            writeData7 <= writeData;
                            writeData8 <= writeData;
                            writeData9 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(0) <= wen;
                                when "0001" => wen_vec(1) <= wen;
                                when "0010" => wen_vec(2) <= wen;
                                when "0011" => wen_vec(3) <= wen;
                                when "0100" => wen_vec(4) <= wen;
                                when "0101" => wen_vec(5) <= wen;
                                when "0110" => wen_vec(6) <= wen;
                                when "0111" => wen_vec(7) <= wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(9) <= wen;
                                when "1010" => wen_vec(2) <= wen;
                                when "1011" => wen_vec(3) <= wen;
                                when "1100" => wen_vec(4) <= wen;
                                when "1101" => wen_vec(5) <= wen;
                                when "1110" => wen_vec(6) <= wen;
                                when "1111" => wen_vec(7) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(0) <= ren;
                                when "0001" => ren_vec(1) <= ren;
                                when "0010" => ren_vec(2) <= ren;
                                when "0011" => ren_vec(3) <= ren;
                                when "0100" => ren_vec(4) <= ren;
                                when "0101" => ren_vec(5) <= ren;
                                when "0110" => ren_vec(6) <= ren;
                                when "0111" => ren_vec(7) <= ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(9) <= ren;
                                when "1010" => ren_vec(2) <= ren;
                                when "1011" => ren_vec(3) <= ren;
                                when "1100" => ren_vec(4) <= ren;
                                when "1101" => ren_vec(5) <= ren;
                                when "1110" => ren_vec(6) <= ren;
                                when "1111" => ren_vec(7) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData0;
                                when "0001" => readData <= readData1;
                                when "0010" => readData <= readData2;
                                when "0011" => readData <= readData3;
                                when "0100" => readData <= readData4;
                                when "0101" => readData <= readData5;
                                when "0110" => readData <= readData6;
                                when "0111" => readData <= readData7;
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData9;
                                when "1010" => readData <= readData2;
                                when "1011" => readData <= readData3;
                                when "1100" => readData <= readData4;
                                when "1101" => readData <= readData5;
                                when "1110" => readData <= readData6;
                                when "1111" => readData <= readData7;
                                when others => null;
                            end case;
                    when 4 =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "10";
                            width3 <= "10";
                            width4 <= "10";
                            width5 <= "10";
                            width6 <= "10";
                            width7 <= "10";
                            width8 <= "10";
                            width9 <= "10";
                            writeAddr0 <= "00"&writeAddr(9 downto 0);
                            writeAddr1 <= "00"&writeAddr(9 downto 0);
                            writeAddr2 <= "00"&writeAddr(9 downto 0);
                            writeAddr3 <= "00"&writeAddr(9 downto 0);
                            writeAddr4 <= "00"&writeAddr(9 downto 0);
                            writeAddr5 <= "00"&writeAddr(9 downto 0);
                            writeAddr6 <= "00"&writeAddr(9 downto 0);
                            writeAddr7 <= "00"&writeAddr(9 downto 0);
                            writeAddr8 <= "00"&writeAddr(9 downto 0);
                            writeAddr9 <= "00"&writeAddr(9 downto 0);
                            readAddr0  <= "00"&readAddr(9 downto 0);
                            readAddr1  <= "00"&readAddr(9 downto 0);
                            readAddr2  <= "00"&readAddr(9 downto 0);
                            readAddr3  <= "00"&readAddr(9 downto 0);
                            readAddr4  <= "00"&readAddr(9 downto 0);
                            readAddr5  <= "00"&readAddr(9 downto 0);
                            readAddr6  <= "00"&readAddr(9 downto 0);
                            readAddr7  <= "00"&readAddr(9 downto 0);
                            readAddr8  <= "00"&readAddr(9 downto 0);
                            readAddr9  <= "00"&readAddr(9 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(1 downto 0) <= wen&wen;
                                when "0001" => wen_vec(1 downto 0) <= wen&wen;
                                when "0010" => wen_vec(3 downto 2) <= wen&wen;
                                when "0011" => wen_vec(3 downto 2) <= wen&wen;
                                when "0100" => wen_vec(5 downto 4) <= wen&wen;
                                when "0101" => wen_vec(5 downto 4) <= wen&wen;
                                when "0110" => wen_vec(7 downto 6) <= wen&wen;
                                when "0111" => wen_vec(7 downto 6) <= wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(3 downto 2) <= wen&wen;
                                when "1011" => wen_vec(3 downto 2) <= wen&wen;
                                when "1100" => wen_vec(5 downto 4) <= wen&wen;
                                when "1101" => wen_vec(5 downto 4) <= wen&wen;
                                when "1110" => wen_vec(7 downto 6) <= wen&wen;
                                when "1111" => wen_vec(7 downto 6) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(1 downto 0) <= ren&ren;
                                when "0001" => ren_vec(1 downto 0) <= ren&ren;
                                when "0010" => ren_vec(3 downto 2) <= ren&ren;
                                when "0011" => ren_vec(3 downto 2) <= ren&ren;
                                when "0100" => ren_vec(5 downto 4) <= ren&ren;
                                when "0101" => ren_vec(5 downto 4) <= ren&ren;
                                when "0110" => ren_vec(7 downto 6) <= ren&ren;
                                when "0111" => ren_vec(7 downto 6) <= ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(3 downto 2) <= ren&ren;
                                when "1011" => ren_vec(3 downto 2) <= ren&ren;
                                when "1100" => ren_vec(5 downto 4) <= ren&ren;
                                when "1101" => ren_vec(5 downto 4) <= ren&ren;
                                when "1110" => ren_vec(7 downto 6) <= ren&ren;
                                when "1111" => ren_vec(7 downto 6) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "0111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "1011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "1100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0 <= "01";
                            width1 <= "01";
                            width2 <= "01";
                            width3 <= "01";
                            width4 <= "01";
                            width5 <= "01";
                            width6 <= "01";
                            width7 <= "01";
                            width8 <= "10";
                            width9 <= "10";
                            writeAddr0 <= '0'&writeAddr(10 downto 0);
                            writeAddr1 <= '0'&writeAddr(10 downto 0);
                            writeAddr2 <= '0'&writeAddr(10 downto 0);
                            writeAddr3 <= '0'&writeAddr(10 downto 0);
                            writeAddr4 <= '0'&writeAddr(10 downto 0);
                            writeAddr5 <= '0'&writeAddr(10 downto 0);
                            writeAddr6 <= '0'&writeAddr(10 downto 0);
                            writeAddr7 <= '0'&writeAddr(10 downto 0);
                            writeAddr8 <= "00"&writeAddr(9 downto 0);
                            writeAddr9 <= "00"&writeAddr(9 downto 0);
                            readAddr0  <= '0'&readAddr(10 downto 0);
                            readAddr1  <= '0'&readAddr(10 downto 0);
                            readAddr2  <= '0'&readAddr(10 downto 0);
                            readAddr3  <= '0'&readAddr(10 downto 0);
                            readAddr4  <= '0'&readAddr(10 downto 0);
                            readAddr5  <= '0'&readAddr(10 downto 0);
                            readAddr6  <= '0'&readAddr(10 downto 0);
                            readAddr7  <= '0'&readAddr(10 downto 0);
                            readAddr8  <= "00"&readAddr(9 downto 0);
                            readAddr9  <= "00"&readAddr(9 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            writeData4(1 downto 0) <= writeData(1 downto 0);
                            writeData5(1 downto 0) <= writeData(3 downto 2);
                            writeData6(1 downto 0) <= writeData(5 downto 4);
                            writeData7(1 downto 0) <= writeData(7 downto 6);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "1011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "1100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "00";
                            width1 <= "00";
                            width2 <= "00";
                            width3 <= "00";
                            width4 <= "00";
                            width5 <= "00";
                            width6 <= "00";
                            width7 <= "00";
                            width8 <= "10";
                            width9 <= "10";
                            writeAddr0 <= writeAddr(11 downto 0);
                            writeAddr1 <= writeAddr(11 downto 0);
                            writeAddr2 <= writeAddr(11 downto 0);
                            writeAddr3 <= writeAddr(11 downto 0);
                            writeAddr4 <= writeAddr(11 downto 0);
                            writeAddr5 <= writeAddr(11 downto 0);
                            writeAddr6 <= writeAddr(11 downto 0);
                            writeAddr7 <= writeAddr(11 downto 0);
                            writeAddr8 <= "00"&writeAddr(9 downto 0);
                            writeAddr9 <= "00"&writeAddr(9 downto 0);
                            readAddr0  <= readAddr(11 downto 0);
                            readAddr1  <= readAddr(11 downto 0);
                            readAddr2  <= readAddr(11 downto 0);
                            readAddr3  <= readAddr(11 downto 0);
                            readAddr4  <= readAddr(11 downto 0);
                            readAddr5  <= readAddr(11 downto 0);
                            readAddr6  <= readAddr(11 downto 0);
                            readAddr7  <= readAddr(11 downto 0);
                            readAddr8  <= "00"&readAddr(9 downto 0);
                            readAddr9  <= "00"&readAddr(9 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when others => null;
                            end case;
                end case;
            when 5632 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0  <= "11";
                            width1  <= "11";
                            width2  <= "11";
                            width3  <= "11";
                            width4  <= "11";
                            width5  <= "11";
                            width6  <= "11";
                            width7  <= "11";
                            width8  <= "11";
                            width9  <= "11";
                            width10 <= "11";
                            writeAddr0  <= "000"&writeAddr(8 downto 0);
                            writeAddr1  <= "000"&writeAddr(8 downto 0);
                            writeAddr2  <= "000"&writeAddr(8 downto 0);
                            writeAddr3  <= "000"&writeAddr(8 downto 0);
                            writeAddr4  <= "000"&writeAddr(8 downto 0);
                            writeAddr5  <= "000"&writeAddr(8 downto 0);
                            writeAddr6  <= "000"&writeAddr(8 downto 0);
                            writeAddr7  <= "000"&writeAddr(8 downto 0);
                            writeAddr8  <= "000"&writeAddr(8 downto 0);
                            writeAddr9  <= "000"&writeAddr(8 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "000"&readAddr(8 downto 0);
                            readAddr1   <= "000"&readAddr(8 downto 0);
                            readAddr2   <= "000"&readAddr(8 downto 0);
                            readAddr3   <= "000"&readAddr(8 downto 0);
                            readAddr4   <= "000"&readAddr(8 downto 0);
                            readAddr5   <= "000"&readAddr(8 downto 0);
                            readAddr6   <= "000"&readAddr(8 downto 0);
                            readAddr7   <= "000"&readAddr(8 downto 0);
                            readAddr8   <= "000"&readAddr(8 downto 0);
                            readAddr9   <= "000"&readAddr(8 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            writeData0  <= writeData;
                            writeData1  <= writeData;
                            writeData2  <= writeData;
                            writeData3  <= writeData;
                            writeData4  <= writeData;
                            writeData5  <= writeData;
                            writeData6  <= writeData;
                            writeData7  <= writeData;
                            writeData8  <= writeData;
                            writeData9  <= writeData;
                            writeData10 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(0) <= wen;
                                when "0001" => wen_vec(1) <= wen;
                                when "0010" => wen_vec(2) <= wen;
                                when "0011" => wen_vec(3) <= wen;
                                when "0100" => wen_vec(4) <= wen;
                                when "0101" => wen_vec(5) <= wen;
                                when "0110" => wen_vec(6) <= wen;
                                when "0111" => wen_vec(7) <= wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(9) <= wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(3) <= wen;
                                when "1100" => wen_vec(4) <= wen;
                                when "1101" => wen_vec(5) <= wen;
                                when "1110" => wen_vec(6) <= wen;
                                when "1111" => wen_vec(7) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(0) <= ren;
                                when "0001" => ren_vec(1) <= ren;
                                when "0010" => ren_vec(2) <= ren;
                                when "0011" => ren_vec(3) <= ren;
                                when "0100" => ren_vec(4) <= ren;
                                when "0101" => ren_vec(5) <= ren;
                                when "0110" => ren_vec(6) <= ren;
                                when "0111" => ren_vec(7) <= ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(9) <= ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(3) <= ren;
                                when "1100" => ren_vec(4) <= ren;
                                when "1101" => ren_vec(5) <= ren;
                                when "1110" => ren_vec(6) <= ren;
                                when "1111" => ren_vec(7) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData0;
                                when "0001" => readData <= readData1;
                                when "0010" => readData <= readData2;
                                when "0011" => readData <= readData3;
                                when "0100" => readData <= readData4;
                                when "0101" => readData <= readData5;
                                when "0110" => readData <= readData6;
                                when "0111" => readData <= readData7;
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData9;
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData3;
                                when "1100" => readData <= readData4;
                                when "1101" => readData <= readData5;
                                when "1110" => readData <= readData6;
                                when "1111" => readData <= readData7;
                                when others => null;
                            end case;
                    when 4 =>
                            width0 <= "10";
                            width1 <= "10";
                            width2 <= "10";
                            width3 <= "10";
                            width4 <= "10";
                            width5 <= "10";
                            width6 <= "10";
                            width7 <= "10";
                            width8 <= "10";
                            width9 <= "10";
                            width10 <= "11";
                            writeAddr0  <= "00"&writeAddr(9 downto 0);
                            writeAddr1  <= "00"&writeAddr(9 downto 0);
                            writeAddr2  <= "00"&writeAddr(9 downto 0);
                            writeAddr3  <= "00"&writeAddr(9 downto 0);
                            writeAddr4  <= "00"&writeAddr(9 downto 0);
                            writeAddr5  <= "00"&writeAddr(9 downto 0);
                            writeAddr6  <= "00"&writeAddr(9 downto 0);
                            writeAddr7  <= "00"&writeAddr(9 downto 0);
                            writeAddr8  <= "00"&writeAddr(9 downto 0);
                            writeAddr9  <= "00"&writeAddr(9 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "00"&readAddr(9 downto 0);
                            readAddr1   <= "00"&readAddr(9 downto 0);
                            readAddr2   <= "00"&readAddr(9 downto 0);
                            readAddr3   <= "00"&readAddr(9 downto 0);
                            readAddr4   <= "00"&readAddr(9 downto 0);
                            readAddr5   <= "00"&readAddr(9 downto 0);
                            readAddr6   <= "00"&readAddr(9 downto 0);
                            readAddr7   <= "00"&readAddr(9 downto 0);
                            readAddr8   <= "00"&readAddr(9 downto 0);
                            readAddr9   <= "00"&readAddr(9 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            writeData10 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(1 downto 0) <= wen&wen;
                                when "0001" => wen_vec(1 downto 0) <= wen&wen;
                                when "0010" => wen_vec(3 downto 2) <= wen&wen;
                                when "0011" => wen_vec(3 downto 2) <= wen&wen;
                                when "0100" => wen_vec(5 downto 4) <= wen&wen;
                                when "0101" => wen_vec(5 downto 4) <= wen&wen;
                                when "0110" => wen_vec(7 downto 6) <= wen&wen;
                                when "0111" => wen_vec(7 downto 6) <= wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(3 downto 2) <= wen&wen;
                                when "1100" => wen_vec(5 downto 4) <= wen&wen;
                                when "1101" => wen_vec(5 downto 4) <= wen&wen;
                                when "1110" => wen_vec(7 downto 6) <= wen&wen;
                                when "1111" => wen_vec(7 downto 6) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(1 downto 0) <= ren&ren;
                                when "0001" => ren_vec(1 downto 0) <= ren&ren;
                                when "0010" => ren_vec(3 downto 2) <= ren&ren;
                                when "0011" => ren_vec(3 downto 2) <= ren&ren;
                                when "0100" => ren_vec(5 downto 4) <= ren&ren;
                                when "0101" => ren_vec(5 downto 4) <= ren&ren;
                                when "0110" => ren_vec(7 downto 6) <= ren&ren;
                                when "0111" => ren_vec(7 downto 6) <= ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(3 downto 2) <= ren&ren;
                                when "1100" => ren_vec(5 downto 4) <= ren&ren;
                                when "1101" => ren_vec(5 downto 4) <= ren&ren;
                                when "1110" => ren_vec(7 downto 6) <= ren&ren;
                                when "1111" => ren_vec(7 downto 6) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "0111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "1100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0 <= "01";
                            width1 <= "01";
                            width2 <= "01";
                            width3 <= "01";
                            width4 <= "01";
                            width5 <= "01";
                            width6 <= "01";
                            width7 <= "01";
                            width8 <= "10";
                            width9 <= "10";
                            width10 <= "11";
                            writeAddr0  <= '0'&writeAddr(10 downto 0);
                            writeAddr1  <= '0'&writeAddr(10 downto 0);
                            writeAddr2  <= '0'&writeAddr(10 downto 0);
                            writeAddr3  <= '0'&writeAddr(10 downto 0);
                            writeAddr4  <= '0'&writeAddr(10 downto 0);
                            writeAddr5  <= '0'&writeAddr(10 downto 0);
                            writeAddr6  <= '0'&writeAddr(10 downto 0);
                            writeAddr7  <= '0'&writeAddr(10 downto 0);
                            writeAddr8  <= "00"&writeAddr(9 downto 0);
                            writeAddr9  <= "00"&writeAddr(9 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= '0'&readAddr(10 downto 0);
                            readAddr1   <= '0'&readAddr(10 downto 0);
                            readAddr2   <= '0'&readAddr(10 downto 0);
                            readAddr3   <= '0'&readAddr(10 downto 0);
                            readAddr4   <= '0'&readAddr(10 downto 0);
                            readAddr5   <= '0'&readAddr(10 downto 0);
                            readAddr6   <= '0'&readAddr(10 downto 0);
                            readAddr7   <= '0'&readAddr(10 downto 0);
                            readAddr8   <= "00"&readAddr(9 downto 0);
                            readAddr9   <= "00"&readAddr(9 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            writeData4(1 downto 0) <= writeData(1 downto 0);
                            writeData5(1 downto 0) <= writeData(3 downto 2);
                            writeData6(1 downto 0) <= writeData(5 downto 4);
                            writeData7(1 downto 0) <= writeData(7 downto 6);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            writeData10 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "1100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0 <= "00";
                            width1 <= "00";
                            width2 <= "00";
                            width3 <= "00";
                            width4 <= "00";
                            width5 <= "00";
                            width6 <= "00";
                            width7 <= "00";
                            width8 <= "10";
                            width9 <= "10";
                            width10 <= "11";
                            writeAddr0  <= writeAddr(11 downto 0);
                            writeAddr1  <= writeAddr(11 downto 0);
                            writeAddr2  <= writeAddr(11 downto 0);
                            writeAddr3  <= writeAddr(11 downto 0);
                            writeAddr4  <= writeAddr(11 downto 0);
                            writeAddr5  <= writeAddr(11 downto 0);
                            writeAddr6  <= writeAddr(11 downto 0);
                            writeAddr7  <= writeAddr(11 downto 0);
                            writeAddr8  <= "00"&writeAddr(9 downto 0);
                            writeAddr9  <= "00"&writeAddr(9 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= readAddr(11 downto 0);
                            readAddr1   <= readAddr(11 downto 0);
                            readAddr2   <= readAddr(11 downto 0);
                            readAddr3   <= readAddr(11 downto 0);
                            readAddr4   <= readAddr(11 downto 0);
                            readAddr5   <= readAddr(11 downto 0);
                            readAddr6   <= readAddr(11 downto 0);
                            readAddr7   <= readAddr(11 downto 0);
                            readAddr8   <= "00"&readAddr(9 downto 0);
                            readAddr9   <= "00"&readAddr(9 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            writeData10 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when others => null;
                            end case;
                end case;
            when 6144 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0  <= "11";
                            width1  <= "11";
                            width2  <= "11";
                            width3  <= "11";
                            width4  <= "11";
                            width5  <= "11";
                            width6  <= "11";
                            width7  <= "11";
                            width8  <= "11";
                            width9  <= "11";
                            width10 <= "11";
                            width11 <= "11";
                            writeAddr0  <= "000"&writeAddr(8 downto 0);
                            writeAddr1  <= "000"&writeAddr(8 downto 0);
                            writeAddr2  <= "000"&writeAddr(8 downto 0);
                            writeAddr3  <= "000"&writeAddr(8 downto 0);
                            writeAddr4  <= "000"&writeAddr(8 downto 0);
                            writeAddr5  <= "000"&writeAddr(8 downto 0);
                            writeAddr6  <= "000"&writeAddr(8 downto 0);
                            writeAddr7  <= "000"&writeAddr(8 downto 0);
                            writeAddr8  <= "000"&writeAddr(8 downto 0);
                            writeAddr9  <= "000"&writeAddr(8 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            writeAddr11 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "000"&readAddr(8 downto 0);
                            readAddr1   <= "000"&readAddr(8 downto 0);
                            readAddr2   <= "000"&readAddr(8 downto 0);
                            readAddr3   <= "000"&readAddr(8 downto 0);
                            readAddr4   <= "000"&readAddr(8 downto 0);
                            readAddr5   <= "000"&readAddr(8 downto 0);
                            readAddr6   <= "000"&readAddr(8 downto 0);
                            readAddr7   <= "000"&readAddr(8 downto 0);
                            readAddr8   <= "000"&readAddr(8 downto 0);
                            readAddr9   <= "000"&readAddr(8 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            readAddr11  <= "000"&readAddr(8 downto 0);
                            writeData0  <= writeData;
                            writeData1  <= writeData;
                            writeData2  <= writeData;
                            writeData3  <= writeData;
                            writeData4  <= writeData;
                            writeData5  <= writeData;
                            writeData6  <= writeData;
                            writeData7  <= writeData;
                            writeData8  <= writeData;
                            writeData9  <= writeData;
                            writeData10 <= writeData;
                            writeData11 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(0) <= wen;
                                when "0001" => wen_vec(1) <= wen;
                                when "0010" => wen_vec(2) <= wen;
                                when "0011" => wen_vec(3) <= wen;
                                when "0100" => wen_vec(4) <= wen;
                                when "0101" => wen_vec(5) <= wen;
                                when "0110" => wen_vec(6) <= wen;
                                when "0111" => wen_vec(7) <= wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(9) <= wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(11) <= wen;
                                when "1100" => wen_vec(4) <= wen;
                                when "1101" => wen_vec(5) <= wen;
                                when "1110" => wen_vec(6) <= wen;
                                when "1111" => wen_vec(7) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(0) <= ren;
                                when "0001" => ren_vec(1) <= ren;
                                when "0010" => ren_vec(2) <= ren;
                                when "0011" => ren_vec(3) <= ren;
                                when "0100" => ren_vec(4) <= ren;
                                when "0101" => ren_vec(5) <= ren;
                                when "0110" => ren_vec(6) <= ren;
                                when "0111" => ren_vec(7) <= ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(9) <= ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(11) <= ren;
                                when "1100" => ren_vec(4) <= ren;
                                when "1101" => ren_vec(5) <= ren;
                                when "1110" => ren_vec(6) <= ren;
                                when "1111" => ren_vec(7) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData0;
                                when "0001" => readData <= readData1;
                                when "0010" => readData <= readData2;
                                when "0011" => readData <= readData3;
                                when "0100" => readData <= readData4;
                                when "0101" => readData <= readData5;
                                when "0110" => readData <= readData6;
                                when "0111" => readData <= readData7;
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData9;
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData11;
                                when "1100" => readData <= readData4;
                                when "1101" => readData <= readData5;
                                when "1110" => readData <= readData6;
                                when "1111" => readData <= readData7;
                                when others => null;
                            end case;
                    when 4 =>
                            width0  <= "10";
                            width1  <= "10";
                            width2  <= "10";
                            width3  <= "10";
                            width4  <= "10";
                            width5  <= "10";
                            width6  <= "10";
                            width7  <= "10";
                            width8  <= "10";
                            width9  <= "10";
                            width10 <= "10";
                            width11 <= "10";
                            writeAddr0  <= "00"&writeAddr(9 downto 0);
                            writeAddr1  <= "00"&writeAddr(9 downto 0);
                            writeAddr2  <= "00"&writeAddr(9 downto 0);
                            writeAddr3  <= "00"&writeAddr(9 downto 0);
                            writeAddr4  <= "00"&writeAddr(9 downto 0);
                            writeAddr5  <= "00"&writeAddr(9 downto 0);
                            writeAddr6  <= "00"&writeAddr(9 downto 0);
                            writeAddr7  <= "00"&writeAddr(9 downto 0);
                            writeAddr8  <= "00"&writeAddr(9 downto 0);
                            writeAddr9  <= "00"&writeAddr(9 downto 0);
                            writeAddr10 <= "00"&writeAddr(9 downto 0);
                            writeAddr11 <= "00"&writeAddr(9 downto 0);
                            readAddr0   <= "00"&readAddr(9 downto 0);
                            readAddr1   <= "00"&readAddr(9 downto 0);
                            readAddr2   <= "00"&readAddr(9 downto 0);
                            readAddr3   <= "00"&readAddr(9 downto 0);
                            readAddr4   <= "00"&readAddr(9 downto 0);
                            readAddr5   <= "00"&readAddr(9 downto 0);
                            readAddr6   <= "00"&readAddr(9 downto 0);
                            readAddr7   <= "00"&readAddr(9 downto 0);
                            readAddr8   <= "00"&readAddr(9 downto 0);
                            readAddr9   <= "00"&readAddr(9 downto 0);
                            readAddr10  <= "00"&readAddr(9 downto 0);
                            readAddr11  <= "00"&readAddr(9 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            writeData10(3 downto 0) <= writeData(3 downto 0);
                            writeData11(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(1 downto 0) <= wen&wen;
                                when "0001" => wen_vec(1 downto 0) <= wen&wen;
                                when "0010" => wen_vec(3 downto 2) <= wen&wen;
                                when "0011" => wen_vec(3 downto 2) <= wen&wen;
                                when "0100" => wen_vec(5 downto 4) <= wen&wen;
                                when "0101" => wen_vec(5 downto 4) <= wen&wen;
                                when "0110" => wen_vec(7 downto 6) <= wen&wen;
                                when "0111" => wen_vec(7 downto 6) <= wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(11 downto 10) <= wen&wen;
                                when "1011" => wen_vec(11 downto 10) <= wen&wen;
                                when "1100" => wen_vec(5 downto 4) <= wen&wen;
                                when "1101" => wen_vec(5 downto 4) <= wen&wen;
                                when "1110" => wen_vec(7 downto 6) <= wen&wen;
                                when "1111" => wen_vec(7 downto 6) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(1 downto 0) <= ren&ren;
                                when "0001" => ren_vec(1 downto 0) <= ren&ren;
                                when "0010" => ren_vec(3 downto 2) <= ren&ren;
                                when "0011" => ren_vec(3 downto 2) <= ren&ren;
                                when "0100" => ren_vec(5 downto 4) <= ren&ren;
                                when "0101" => ren_vec(5 downto 4) <= ren&ren;
                                when "0110" => ren_vec(7 downto 6) <= ren&ren;
                                when "0111" => ren_vec(7 downto 6) <= ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(11 downto 10) <= ren&ren;
                                when "1011" => ren_vec(11 downto 10) <= ren&ren;
                                when "1100" => ren_vec(5 downto 4) <= ren&ren;
                                when "1101" => ren_vec(5 downto 4) <= ren&ren;
                                when "1110" => ren_vec(7 downto 6) <= ren&ren;
                                when "1111" => ren_vec(7 downto 6) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "0111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1011" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0  <= "01";
                            width1  <= "01";
                            width2  <= "01";
                            width3  <= "01";
                            width4  <= "01";
                            width5  <= "01";
                            width6  <= "01";
                            width7  <= "01";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            writeAddr0  <= '0'&writeAddr(10 downto 0);
                            writeAddr1  <= '0'&writeAddr(10 downto 0);
                            writeAddr2  <= '0'&writeAddr(10 downto 0);
                            writeAddr3  <= '0'&writeAddr(10 downto 0);
                            writeAddr4  <= '0'&writeAddr(10 downto 0);
                            writeAddr5  <= '0'&writeAddr(10 downto 0);
                            writeAddr6  <= '0'&writeAddr(10 downto 0);
                            writeAddr7  <= '0'&writeAddr(10 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            readAddr0   <= '0'&readAddr(10 downto 0);
                            readAddr1   <= '0'&readAddr(10 downto 0);
                            readAddr2   <= '0'&readAddr(10 downto 0);
                            readAddr3   <= '0'&readAddr(10 downto 0);
                            readAddr4   <= '0'&readAddr(10 downto 0);
                            readAddr5   <= '0'&readAddr(10 downto 0);
                            readAddr6   <= '0'&readAddr(10 downto 0);
                            readAddr7   <= '0'&readAddr(10 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            writeData0(1 downto 0)  <= writeData(1 downto 0);
                            writeData1(1 downto 0)  <= writeData(3 downto 2);
                            writeData2(1 downto 0)  <= writeData(5 downto 4);
                            writeData3(1 downto 0)  <= writeData(7 downto 6);
                            writeData4(1 downto 0)  <= writeData(1 downto 0);
                            writeData5(1 downto 0)  <= writeData(3 downto 2);
                            writeData6(1 downto 0)  <= writeData(5 downto 4);
                            writeData7(1 downto 0)  <= writeData(7 downto 6);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0  <= "00";
                            width1  <= "00";
                            width2  <= "00";
                            width3  <= "00";
                            width4  <= "00";
                            width5  <= "00";
                            width6  <= "00";
                            width7  <= "00";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            writeAddr0  <= writeAddr(11 downto 0);
                            writeAddr1  <= writeAddr(11 downto 0);
                            writeAddr2  <= writeAddr(11 downto 0);
                            writeAddr3  <= writeAddr(11 downto 0);
                            writeAddr4  <= writeAddr(11 downto 0);
                            writeAddr5  <= writeAddr(11 downto 0);
                            writeAddr6  <= writeAddr(11 downto 0);
                            writeAddr7  <= writeAddr(11 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            readAddr0   <= readAddr(11 downto 0);
                            readAddr1   <= readAddr(11 downto 0);
                            readAddr2   <= readAddr(11 downto 0);
                            readAddr3   <= readAddr(11 downto 0);
                            readAddr4   <= readAddr(11 downto 0);
                            readAddr5   <= readAddr(11 downto 0);
                            readAddr6   <= readAddr(11 downto 0);
                            readAddr7   <= readAddr(11 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when others => null;
                            end case;
                end case;
            when 6656 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0  <= "11";
                            width1  <= "11";
                            width2  <= "11";
                            width3  <= "11";
                            width4  <= "11";
                            width5  <= "11";
                            width6  <= "11";
                            width7  <= "11";
                            width8  <= "11";
                            width9  <= "11";
                            width10 <= "11";
                            width11 <= "11";
                            width12 <= "11";
                            writeAddr0  <= "000"&writeAddr(8 downto 0);
                            writeAddr1  <= "000"&writeAddr(8 downto 0);
                            writeAddr2  <= "000"&writeAddr(8 downto 0);
                            writeAddr3  <= "000"&writeAddr(8 downto 0);
                            writeAddr4  <= "000"&writeAddr(8 downto 0);
                            writeAddr5  <= "000"&writeAddr(8 downto 0);
                            writeAddr6  <= "000"&writeAddr(8 downto 0);
                            writeAddr7  <= "000"&writeAddr(8 downto 0);
                            writeAddr8  <= "000"&writeAddr(8 downto 0);
                            writeAddr9  <= "000"&writeAddr(8 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            writeAddr11 <= "000"&writeAddr(8 downto 0);
                            writeAddr12 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "000"&readAddr(8 downto 0);
                            readAddr1   <= "000"&readAddr(8 downto 0);
                            readAddr2   <= "000"&readAddr(8 downto 0);
                            readAddr3   <= "000"&readAddr(8 downto 0);
                            readAddr4   <= "000"&readAddr(8 downto 0);
                            readAddr5   <= "000"&readAddr(8 downto 0);
                            readAddr6   <= "000"&readAddr(8 downto 0);
                            readAddr7   <= "000"&readAddr(8 downto 0);
                            readAddr8   <= "000"&readAddr(8 downto 0);
                            readAddr9   <= "000"&readAddr(8 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            readAddr11  <= "000"&readAddr(8 downto 0);
                            readAddr12  <= "000"&readAddr(8 downto 0);
                            writeData0  <= writeData;
                            writeData1  <= writeData;
                            writeData2  <= writeData;
                            writeData3  <= writeData;
                            writeData4  <= writeData;
                            writeData5  <= writeData;
                            writeData6  <= writeData;
                            writeData7  <= writeData;
                            writeData8  <= writeData;
                            writeData9  <= writeData;
                            writeData10 <= writeData;
                            writeData11 <= writeData;
                            writeData12 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(0) <= wen;
                                when "0001" => wen_vec(1) <= wen;
                                when "0010" => wen_vec(2) <= wen;
                                when "0011" => wen_vec(3) <= wen;
                                when "0100" => wen_vec(4) <= wen;
                                when "0101" => wen_vec(5) <= wen;
                                when "0110" => wen_vec(6) <= wen;
                                when "0111" => wen_vec(7) <= wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(9) <= wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(11) <= wen;
                                when "1100" => wen_vec(12) <= wen;
                                when "1101" => wen_vec(5) <= wen;
                                when "1110" => wen_vec(6) <= wen;
                                when "1111" => wen_vec(7) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(0) <= ren;
                                when "0001" => ren_vec(1) <= ren;
                                when "0010" => ren_vec(2) <= ren;
                                when "0011" => ren_vec(3) <= ren;
                                when "0100" => ren_vec(4) <= ren;
                                when "0101" => ren_vec(5) <= ren;
                                when "0110" => ren_vec(6) <= ren;
                                when "0111" => ren_vec(7) <= ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(9) <= ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(11) <= ren;
                                when "1100" => ren_vec(12) <= ren;
                                when "1101" => ren_vec(5) <= ren;
                                when "1110" => ren_vec(6) <= ren;
                                when "1111" => ren_vec(7) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData0;
                                when "0001" => readData <= readData1;
                                when "0010" => readData <= readData2;
                                when "0011" => readData <= readData3;
                                when "0100" => readData <= readData4;
                                when "0101" => readData <= readData5;
                                when "0110" => readData <= readData6;
                                when "0111" => readData <= readData7;
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData9;
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData11;
                                when "1100" => readData <= readData12;
                                when "1101" => readData <= readData5;
                                when "1110" => readData <= readData6;
                                when "1111" => readData <= readData7;
                                when others => null;
                            end case;
                    when 4 =>
                            width0  <= "10";
                            width1  <= "10";
                            width2  <= "10";
                            width3  <= "10";
                            width4  <= "10";
                            width5  <= "10";
                            width6  <= "10";
                            width7  <= "10";
                            width8  <= "10";
                            width9  <= "10";
                            width10 <= "10";
                            width11 <= "10";
                            width12 <= "11";
                            writeAddr0  <= "00"&writeAddr(9 downto 0);
                            writeAddr1  <= "00"&writeAddr(9 downto 0);
                            writeAddr2  <= "00"&writeAddr(9 downto 0);
                            writeAddr3  <= "00"&writeAddr(9 downto 0);
                            writeAddr4  <= "00"&writeAddr(9 downto 0);
                            writeAddr5  <= "00"&writeAddr(9 downto 0);
                            writeAddr6  <= "00"&writeAddr(9 downto 0);
                            writeAddr7  <= "00"&writeAddr(9 downto 0);
                            writeAddr8  <= "00"&writeAddr(9 downto 0);
                            writeAddr9  <= "00"&writeAddr(9 downto 0);
                            writeAddr10 <= "00"&writeAddr(9 downto 0);
                            writeAddr11 <= "00"&writeAddr(9 downto 0);
                            writeAddr12 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "00"&readAddr(9 downto 0);
                            readAddr1   <= "00"&readAddr(9 downto 0);
                            readAddr2   <= "00"&readAddr(9 downto 0);
                            readAddr3   <= "00"&readAddr(9 downto 0);
                            readAddr4   <= "00"&readAddr(9 downto 0);
                            readAddr5   <= "00"&readAddr(9 downto 0);
                            readAddr6   <= "00"&readAddr(9 downto 0);
                            readAddr7   <= "00"&readAddr(9 downto 0);
                            readAddr8   <= "00"&readAddr(9 downto 0);
                            readAddr9   <= "00"&readAddr(9 downto 0);
                            readAddr10  <= "00"&readAddr(9 downto 0);
                            readAddr11  <= "00"&readAddr(9 downto 0);
                            readAddr12  <= "000"&readAddr(8 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            writeData10(3 downto 0) <= writeData(3 downto 0);
                            writeData11(3 downto 0) <= writeData(7 downto 4);
                            writeData12 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(1 downto 0) <= wen&wen;
                                when "0001" => wen_vec(1 downto 0) <= wen&wen;
                                when "0010" => wen_vec(3 downto 2) <= wen&wen;
                                when "0011" => wen_vec(3 downto 2) <= wen&wen;
                                when "0100" => wen_vec(5 downto 4) <= wen&wen;
                                when "0101" => wen_vec(5 downto 4) <= wen&wen;
                                when "0110" => wen_vec(7 downto 6) <= wen&wen;
                                when "0111" => wen_vec(7 downto 6) <= wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(11 downto 10) <= wen&wen;
                                when "1011" => wen_vec(11 downto 10) <= wen&wen;
                                when "1100" => wen_vec(12) <= wen;
                                when "1101" => wen_vec(5 downto 4) <= wen&wen;
                                when "1110" => wen_vec(7 downto 6) <= wen&wen;
                                when "1111" => wen_vec(7 downto 6) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(1 downto 0) <= ren&ren;
                                when "0001" => ren_vec(1 downto 0) <= ren&ren;
                                when "0010" => ren_vec(3 downto 2) <= ren&ren;
                                when "0011" => ren_vec(3 downto 2) <= ren&ren;
                                when "0100" => ren_vec(5 downto 4) <= ren&ren;
                                when "0101" => ren_vec(5 downto 4) <= ren&ren;
                                when "0110" => ren_vec(7 downto 6) <= ren&ren;
                                when "0111" => ren_vec(7 downto 6) <= ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(11 downto 10) <= ren&ren;
                                when "1011" => ren_vec(11 downto 10) <= ren&ren;
                                when "1100" => ren_vec(12) <= ren;
                                when "1101" => ren_vec(5 downto 4) <= ren&ren;
                                when "1110" => ren_vec(7 downto 6) <= ren&ren;
                                when "1111" => ren_vec(7 downto 6) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "0111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1011" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1100" => readData <= readData12;
                                when "1101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "1110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0  <= "01";
                            width1  <= "01";
                            width2  <= "01";
                            width3  <= "01";
                            width4  <= "01";
                            width5  <= "01";
                            width6  <= "01";
                            width7  <= "01";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            width12 <= "11";
                            writeAddr0  <= '0'&writeAddr(10 downto 0);
                            writeAddr1  <= '0'&writeAddr(10 downto 0);
                            writeAddr2  <= '0'&writeAddr(10 downto 0);
                            writeAddr3  <= '0'&writeAddr(10 downto 0);
                            writeAddr4  <= '0'&writeAddr(10 downto 0);
                            writeAddr5  <= '0'&writeAddr(10 downto 0);
                            writeAddr6  <= '0'&writeAddr(10 downto 0);
                            writeAddr7  <= '0'&writeAddr(10 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            writeAddr12 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= '0'&readAddr(10 downto 0);
                            readAddr1   <= '0'&readAddr(10 downto 0);
                            readAddr2   <= '0'&readAddr(10 downto 0);
                            readAddr3   <= '0'&readAddr(10 downto 0);
                            readAddr4   <= '0'&readAddr(10 downto 0);
                            readAddr5   <= '0'&readAddr(10 downto 0);
                            readAddr6   <= '0'&readAddr(10 downto 0);
                            readAddr7   <= '0'&readAddr(10 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            readAddr12  <= "000"&readAddr(8 downto 0);
                            writeData0(1 downto 0)  <= writeData(1 downto 0);
                            writeData1(1 downto 0)  <= writeData(3 downto 2);
                            writeData2(1 downto 0)  <= writeData(5 downto 4);
                            writeData3(1 downto 0)  <= writeData(7 downto 6);
                            writeData4(1 downto 0)  <= writeData(1 downto 0);
                            writeData5(1 downto 0)  <= writeData(3 downto 2);
                            writeData6(1 downto 0)  <= writeData(5 downto 4);
                            writeData7(1 downto 0)  <= writeData(7 downto 6);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            writeData12 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(12) <= wen;
                                when "1101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(12) <= ren;
                                when "1101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData12;
                                when "1101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0  <= "00";
                            width1  <= "00";
                            width2  <= "00";
                            width3  <= "00";
                            width4  <= "00";
                            width5  <= "00";
                            width6  <= "00";
                            width7  <= "00";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            width12 <= "11";
                            writeAddr0  <= writeAddr(11 downto 0);
                            writeAddr1  <= writeAddr(11 downto 0);
                            writeAddr2  <= writeAddr(11 downto 0);
                            writeAddr3  <= writeAddr(11 downto 0);
                            writeAddr4  <= writeAddr(11 downto 0);
                            writeAddr5  <= writeAddr(11 downto 0);
                            writeAddr6  <= writeAddr(11 downto 0);
                            writeAddr7  <= writeAddr(11 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            writeAddr12 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= readAddr(11 downto 0);
                            readAddr1   <= readAddr(11 downto 0);
                            readAddr2   <= readAddr(11 downto 0);
                            readAddr3   <= readAddr(11 downto 0);
                            readAddr4   <= readAddr(11 downto 0);
                            readAddr5   <= readAddr(11 downto 0);
                            readAddr6   <= readAddr(11 downto 0);
                            readAddr7   <= readAddr(11 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            readAddr12  <= "000"&readAddr(8 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            writeData12 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(12) <= wen;
                                when "1101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(12) <= ren;
                                when "1101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData12;
                                when "1101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when others => null;
                            end case;
                end case;
            when 7168 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0  <= "11";
                            width1  <= "11";
                            width2  <= "11";
                            width3  <= "11";
                            width4  <= "11";
                            width5  <= "11";
                            width6  <= "11";
                            width7  <= "11";
                            width8  <= "11";
                            width9  <= "11";
                            width10 <= "11";
                            width11 <= "11";
                            width12 <= "11";
                            width13 <= "11";
                            writeAddr0  <= "000"&writeAddr(8 downto 0);
                            writeAddr1  <= "000"&writeAddr(8 downto 0);
                            writeAddr2  <= "000"&writeAddr(8 downto 0);
                            writeAddr3  <= "000"&writeAddr(8 downto 0);
                            writeAddr4  <= "000"&writeAddr(8 downto 0);
                            writeAddr5  <= "000"&writeAddr(8 downto 0);
                            writeAddr6  <= "000"&writeAddr(8 downto 0);
                            writeAddr7  <= "000"&writeAddr(8 downto 0);
                            writeAddr8  <= "000"&writeAddr(8 downto 0);
                            writeAddr9  <= "000"&writeAddr(8 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            writeAddr11 <= "000"&writeAddr(8 downto 0);
                            writeAddr12 <= "000"&writeAddr(8 downto 0);
                            writeAddr13 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "000"&readAddr(8 downto 0);
                            readAddr1   <= "000"&readAddr(8 downto 0);
                            readAddr2   <= "000"&readAddr(8 downto 0);
                            readAddr3   <= "000"&readAddr(8 downto 0);
                            readAddr4   <= "000"&readAddr(8 downto 0);
                            readAddr5   <= "000"&readAddr(8 downto 0);
                            readAddr6   <= "000"&readAddr(8 downto 0);
                            readAddr7   <= "000"&readAddr(8 downto 0);
                            readAddr8   <= "000"&readAddr(8 downto 0);
                            readAddr9   <= "000"&readAddr(8 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            readAddr11  <= "000"&readAddr(8 downto 0);
                            readAddr12  <= "000"&readAddr(8 downto 0);
                            readAddr13  <= "000"&readAddr(8 downto 0);
                            writeData0  <= writeData;
                            writeData1  <= writeData;
                            writeData2  <= writeData;
                            writeData3  <= writeData;
                            writeData4  <= writeData;
                            writeData5  <= writeData;
                            writeData6  <= writeData;
                            writeData7  <= writeData;
                            writeData8  <= writeData;
                            writeData9  <= writeData;
                            writeData10 <= writeData;
                            writeData11 <= writeData;
                            writeData12 <= writeData;
                            writeData13 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(0) <= wen;
                                when "0001" => wen_vec(1) <= wen;
                                when "0010" => wen_vec(2) <= wen;
                                when "0011" => wen_vec(3) <= wen;
                                when "0100" => wen_vec(4) <= wen;
                                when "0101" => wen_vec(5) <= wen;
                                when "0110" => wen_vec(6) <= wen;
                                when "0111" => wen_vec(7) <= wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(9) <= wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(11) <= wen;
                                when "1100" => wen_vec(12) <= wen;
                                when "1101" => wen_vec(13) <= wen;
                                when "1110" => wen_vec(6) <= wen;
                                when "1111" => wen_vec(7) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(0) <= ren;
                                when "0001" => ren_vec(1) <= ren;
                                when "0010" => ren_vec(2) <= ren;
                                when "0011" => ren_vec(3) <= ren;
                                when "0100" => ren_vec(4) <= ren;
                                when "0101" => ren_vec(5) <= ren;
                                when "0110" => ren_vec(6) <= ren;
                                when "0111" => ren_vec(7) <= ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(9) <= ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(11) <= ren;
                                when "1100" => ren_vec(12) <= ren;
                                when "1101" => ren_vec(13) <= ren;
                                when "1110" => ren_vec(6) <= ren;
                                when "1111" => ren_vec(7) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData0;
                                when "0001" => readData <= readData1;
                                when "0010" => readData <= readData2;
                                when "0011" => readData <= readData3;
                                when "0100" => readData <= readData4;
                                when "0101" => readData <= readData5;
                                when "0110" => readData <= readData6;
                                when "0111" => readData <= readData7;
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData9;
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData11;
                                when "1100" => readData <= readData12;
                                when "1101" => readData <= readData13;
                                when "1110" => readData <= readData6;
                                when "1111" => readData <= readData7;
                                when others => null;
                            end case;
                    when 4 =>
                            width0  <= "10";
                            width1  <= "10";
                            width2  <= "10";
                            width3  <= "10";
                            width4  <= "10";
                            width5  <= "10";
                            width6  <= "10";
                            width7  <= "10";
                            width8  <= "10";
                            width9  <= "10";
                            width10 <= "10";
                            width11 <= "10";
                            width12 <= "10";
                            width13 <= "10";
                            writeAddr0  <= "00"&writeAddr(9 downto 0);
                            writeAddr1  <= "00"&writeAddr(9 downto 0);
                            writeAddr2  <= "00"&writeAddr(9 downto 0);
                            writeAddr3  <= "00"&writeAddr(9 downto 0);
                            writeAddr4  <= "00"&writeAddr(9 downto 0);
                            writeAddr5  <= "00"&writeAddr(9 downto 0);
                            writeAddr6  <= "00"&writeAddr(9 downto 0);
                            writeAddr7  <= "00"&writeAddr(9 downto 0);
                            writeAddr8  <= "00"&writeAddr(9 downto 0);
                            writeAddr9  <= "00"&writeAddr(9 downto 0);
                            writeAddr10 <= "00"&writeAddr(9 downto 0);
                            writeAddr11 <= "00"&writeAddr(9 downto 0);
                            writeAddr12 <= "00"&writeAddr(9 downto 0);
                            writeAddr13 <= "00"&writeAddr(9 downto 0);
                            readAddr0   <= "00"&readAddr(9 downto 0);
                            readAddr1   <= "00"&readAddr(9 downto 0);
                            readAddr2   <= "00"&readAddr(9 downto 0);
                            readAddr3   <= "00"&readAddr(9 downto 0);
                            readAddr4   <= "00"&readAddr(9 downto 0);
                            readAddr5   <= "00"&readAddr(9 downto 0);
                            readAddr6   <= "00"&readAddr(9 downto 0);
                            readAddr7   <= "00"&readAddr(9 downto 0);
                            readAddr8   <= "00"&readAddr(9 downto 0);
                            readAddr9   <= "00"&readAddr(9 downto 0);
                            readAddr10  <= "00"&readAddr(9 downto 0);
                            readAddr11  <= "00"&readAddr(9 downto 0);
                            readAddr12  <= "00"&readAddr(9 downto 0);
                            readAddr13  <= "00"&readAddr(9 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            writeData10(3 downto 0) <= writeData(3 downto 0);
                            writeData11(3 downto 0) <= writeData(7 downto 4);
                            writeData12(3 downto 0) <= writeData(3 downto 0);
                            writeData13(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(1 downto 0) <= wen&wen;
                                when "0001" => wen_vec(1 downto 0) <= wen&wen;
                                when "0010" => wen_vec(3 downto 2) <= wen&wen;
                                when "0011" => wen_vec(3 downto 2) <= wen&wen;
                                when "0100" => wen_vec(5 downto 4) <= wen&wen;
                                when "0101" => wen_vec(5 downto 4) <= wen&wen;
                                when "0110" => wen_vec(7 downto 6) <= wen&wen;
                                when "0111" => wen_vec(7 downto 6) <= wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(11 downto 10) <= wen&wen;
                                when "1011" => wen_vec(11 downto 10) <= wen&wen;
                                when "1100" => wen_vec(13 downto 12) <= wen&wen;
                                when "1101" => wen_vec(13 downto 12) <= wen&wen;
                                when "1110" => wen_vec(7 downto 6) <= wen&wen;
                                when "1111" => wen_vec(7 downto 6) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(1 downto 0) <= ren&ren;
                                when "0001" => ren_vec(1 downto 0) <= ren&ren;
                                when "0010" => ren_vec(3 downto 2) <= ren&ren;
                                when "0011" => ren_vec(3 downto 2) <= ren&ren;
                                when "0100" => ren_vec(5 downto 4) <= ren&ren;
                                when "0101" => ren_vec(5 downto 4) <= ren&ren;
                                when "0110" => ren_vec(7 downto 6) <= ren&ren;
                                when "0111" => ren_vec(7 downto 6) <= ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(11 downto 10) <= ren&ren;
                                when "1011" => ren_vec(11 downto 10) <= ren&ren;
                                when "1100" => ren_vec(13 downto 12) <= ren&ren;
                                when "1101" => ren_vec(13 downto 12) <= ren&ren;
                                when "1110" => ren_vec(7 downto 6) <= ren&ren;
                                when "1111" => ren_vec(7 downto 6) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "0111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1011" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1100" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1101" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0  <= "01";
                            width1  <= "01";
                            width2  <= "01";
                            width3  <= "01";
                            width4  <= "01";
                            width5  <= "01";
                            width6  <= "01";
                            width7  <= "01";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            width12 <= "10";
                            width13 <= "10";
                            writeAddr0  <= '0'&writeAddr(10 downto 0);
                            writeAddr1  <= '0'&writeAddr(10 downto 0);
                            writeAddr2  <= '0'&writeAddr(10 downto 0);
                            writeAddr3  <= '0'&writeAddr(10 downto 0);
                            writeAddr4  <= '0'&writeAddr(10 downto 0);
                            writeAddr5  <= '0'&writeAddr(10 downto 0);
                            writeAddr6  <= '0'&writeAddr(10 downto 0);
                            writeAddr7  <= '0'&writeAddr(10 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            writeAddr12 <= "00"&writeAddr(9 downto 0);
                            writeAddr13 <= "00"&writeAddr(9 downto 0);
                            readAddr0   <= '0'&readAddr(10 downto 0);
                            readAddr1   <= '0'&readAddr(10 downto 0);
                            readAddr2   <= '0'&readAddr(10 downto 0);
                            readAddr3   <= '0'&readAddr(10 downto 0);
                            readAddr4   <= '0'&readAddr(10 downto 0);
                            readAddr5   <= '0'&readAddr(10 downto 0);
                            readAddr6   <= '0'&readAddr(10 downto 0);
                            readAddr7   <= '0'&readAddr(10 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            readAddr12  <= "00"&readAddr(9 downto 0);
                            readAddr13  <= "00"&readAddr(9 downto 0);
                            writeData0(1 downto 0)  <= writeData(1 downto 0);
                            writeData1(1 downto 0)  <= writeData(3 downto 2);
                            writeData2(1 downto 0)  <= writeData(5 downto 4);
                            writeData3(1 downto 0)  <= writeData(7 downto 6);
                            writeData4(1 downto 0)  <= writeData(1 downto 0);
                            writeData5(1 downto 0)  <= writeData(3 downto 2);
                            writeData6(1 downto 0)  <= writeData(5 downto 4);
                            writeData7(1 downto 0)  <= writeData(7 downto 6);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            writeData12(3 downto 0) <= writeData(3 downto 0);
                            writeData13(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(13 downto 12) <= wen&wen;
                                when "1101" => wen_vec(13 downto 12) <= wen&wen;
                                when "1110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(13 downto 12) <= ren&ren;
                                when "1101" => ren_vec(13 downto 12) <= ren&ren;
                                when "1110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1101" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0  <= "00";
                            width1  <= "00";
                            width2  <= "00";
                            width3  <= "00";
                            width4  <= "00";
                            width5  <= "00";
                            width6  <= "00";
                            width7  <= "00";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            width12 <= "10";
                            width13 <= "10";
                            writeAddr0  <= writeAddr(11 downto 0);
                            writeAddr1  <= writeAddr(11 downto 0);
                            writeAddr2  <= writeAddr(11 downto 0);
                            writeAddr3  <= writeAddr(11 downto 0);
                            writeAddr4  <= writeAddr(11 downto 0);
                            writeAddr5  <= writeAddr(11 downto 0);
                            writeAddr6  <= writeAddr(11 downto 0);
                            writeAddr7  <= writeAddr(11 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            writeAddr12 <= "00"&writeAddr(9 downto 0);
                            writeAddr13 <= "00"&writeAddr(9 downto 0);
                            readAddr0   <= readAddr(11 downto 0);
                            readAddr1   <= readAddr(11 downto 0);
                            readAddr2   <= readAddr(11 downto 0);
                            readAddr3   <= readAddr(11 downto 0);
                            readAddr4   <= readAddr(11 downto 0);
                            readAddr5   <= readAddr(11 downto 0);
                            readAddr6   <= readAddr(11 downto 0);
                            readAddr7   <= readAddr(11 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            readAddr12  <= "00"&readAddr(9 downto 0);
                            readAddr13  <= "00"&readAddr(9 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            writeData12(3 downto 0) <= writeData(3 downto 0);
                            writeData13(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(13 downto 12) <= wen&wen;
                                when "1101" => wen_vec(13 downto 12) <= wen&wen;
                                when "1110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(13 downto 12) <= ren&ren;
                                when "1101" => ren_vec(13 downto 12) <= ren&ren;
                                when "1110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1101" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when others => null;
                            end case;
                end case;
            when 7680 =>
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0  <= "11";
                            width1  <= "11";
                            width2  <= "11";
                            width3  <= "11";
                            width4  <= "11";
                            width5  <= "11";
                            width6  <= "11";
                            width7  <= "11";
                            width8  <= "11";
                            width9  <= "11";
                            width10 <= "11";
                            width11 <= "11";
                            width12 <= "11";
                            width13 <= "11";
                            width14 <= "11";
                            writeAddr0  <= "000"&writeAddr(8 downto 0);
                            writeAddr1  <= "000"&writeAddr(8 downto 0);
                            writeAddr2  <= "000"&writeAddr(8 downto 0);
                            writeAddr3  <= "000"&writeAddr(8 downto 0);
                            writeAddr4  <= "000"&writeAddr(8 downto 0);
                            writeAddr5  <= "000"&writeAddr(8 downto 0);
                            writeAddr6  <= "000"&writeAddr(8 downto 0);
                            writeAddr7  <= "000"&writeAddr(8 downto 0);
                            writeAddr8  <= "000"&writeAddr(8 downto 0);
                            writeAddr9  <= "000"&writeAddr(8 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            writeAddr11 <= "000"&writeAddr(8 downto 0);
                            writeAddr12 <= "000"&writeAddr(8 downto 0);
                            writeAddr13 <= "000"&writeAddr(8 downto 0);
                            writeAddr14 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "000"&readAddr(8 downto 0);
                            readAddr1   <= "000"&readAddr(8 downto 0);
                            readAddr2   <= "000"&readAddr(8 downto 0);
                            readAddr3   <= "000"&readAddr(8 downto 0);
                            readAddr4   <= "000"&readAddr(8 downto 0);
                            readAddr5   <= "000"&readAddr(8 downto 0);
                            readAddr6   <= "000"&readAddr(8 downto 0);
                            readAddr7   <= "000"&readAddr(8 downto 0);
                            readAddr8   <= "000"&readAddr(8 downto 0);
                            readAddr9   <= "000"&readAddr(8 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            readAddr11  <= "000"&readAddr(8 downto 0);
                            readAddr12  <= "000"&readAddr(8 downto 0);
                            readAddr13  <= "000"&readAddr(8 downto 0);
                            readAddr14  <= "000"&readAddr(8 downto 0);
                            writeData0  <= writeData;
                            writeData1  <= writeData;
                            writeData2  <= writeData;
                            writeData3  <= writeData;
                            writeData4  <= writeData;
                            writeData5  <= writeData;
                            writeData6  <= writeData;
                            writeData7  <= writeData;
                            writeData8  <= writeData;
                            writeData9  <= writeData;
                            writeData10 <= writeData;
                            writeData11 <= writeData;
                            writeData12 <= writeData;
                            writeData13 <= writeData;
                            writeData14 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(0) <= wen;
                                when "0001" => wen_vec(1) <= wen;
                                when "0010" => wen_vec(2) <= wen;
                                when "0011" => wen_vec(3) <= wen;
                                when "0100" => wen_vec(4) <= wen;
                                when "0101" => wen_vec(5) <= wen;
                                when "0110" => wen_vec(6) <= wen;
                                when "0111" => wen_vec(7) <= wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(9) <= wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(11) <= wen;
                                when "1100" => wen_vec(12) <= wen;
                                when "1101" => wen_vec(13) <= wen;
                                when "1110" => wen_vec(14) <= wen;
                                when "1111" => wen_vec(7) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(0) <= ren;
                                when "0001" => ren_vec(1) <= ren;
                                when "0010" => ren_vec(2) <= ren;
                                when "0011" => ren_vec(3) <= ren;
                                when "0100" => ren_vec(4) <= ren;
                                when "0101" => ren_vec(5) <= ren;
                                when "0110" => ren_vec(6) <= ren;
                                when "0111" => ren_vec(7) <= ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(9) <= ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(11) <= ren;
                                when "1100" => ren_vec(12) <= ren;
                                when "1101" => ren_vec(13) <= ren;
                                when "1110" => ren_vec(14) <= ren;
                                when "1111" => ren_vec(7) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData0;
                                when "0001" => readData <= readData1;
                                when "0010" => readData <= readData2;
                                when "0011" => readData <= readData3;
                                when "0100" => readData <= readData4;
                                when "0101" => readData <= readData5;
                                when "0110" => readData <= readData6;
                                when "0111" => readData <= readData7;
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData9;
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData11;
                                when "1100" => readData <= readData12;
                                when "1101" => readData <= readData13;
                                when "1110" => readData <= readData14;
                                when "1111" => readData <= readData7;
                                when others => null;
                            end case;
                    when 4 =>
                            width0  <= "10";
                            width1  <= "10";
                            width2  <= "10";
                            width3  <= "10";
                            width4  <= "10";
                            width5  <= "10";
                            width6  <= "10";
                            width7  <= "10";
                            width8  <= "10";
                            width9  <= "10";
                            width10 <= "10";
                            width11 <= "10";
                            width12 <= "10";
                            width13 <= "10";
                            width14 <= "11";
                            writeAddr0  <= "00"&writeAddr(9 downto 0);
                            writeAddr1  <= "00"&writeAddr(9 downto 0);
                            writeAddr2  <= "00"&writeAddr(9 downto 0);
                            writeAddr3  <= "00"&writeAddr(9 downto 0);
                            writeAddr4  <= "00"&writeAddr(9 downto 0);
                            writeAddr5  <= "00"&writeAddr(9 downto 0);
                            writeAddr6  <= "00"&writeAddr(9 downto 0);
                            writeAddr7  <= "00"&writeAddr(9 downto 0);
                            writeAddr8  <= "00"&writeAddr(9 downto 0);
                            writeAddr9  <= "00"&writeAddr(9 downto 0);
                            writeAddr10 <= "00"&writeAddr(9 downto 0);
                            writeAddr11 <= "00"&writeAddr(9 downto 0);
                            writeAddr12 <= "00"&writeAddr(9 downto 0);
                            writeAddr13 <= "00"&writeAddr(9 downto 0);
                            writeAddr14 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "00"&readAddr(9 downto 0);
                            readAddr1   <= "00"&readAddr(9 downto 0);
                            readAddr2   <= "00"&readAddr(9 downto 0);
                            readAddr3   <= "00"&readAddr(9 downto 0);
                            readAddr4   <= "00"&readAddr(9 downto 0);
                            readAddr5   <= "00"&readAddr(9 downto 0);
                            readAddr6   <= "00"&readAddr(9 downto 0);
                            readAddr7   <= "00"&readAddr(9 downto 0);
                            readAddr8   <= "00"&readAddr(9 downto 0);
                            readAddr9   <= "00"&readAddr(9 downto 0);
                            readAddr10  <= "00"&readAddr(9 downto 0);
                            readAddr11  <= "00"&readAddr(9 downto 0);
                            readAddr12  <= "00"&readAddr(9 downto 0);
                            readAddr13  <= "00"&readAddr(9 downto 0);
                            readAddr14  <= "000"&readAddr(8 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            writeData10(3 downto 0) <= writeData(3 downto 0);
                            writeData11(3 downto 0) <= writeData(7 downto 4);
                            writeData12(3 downto 0) <= writeData(3 downto 0);
                            writeData13(3 downto 0) <= writeData(7 downto 4);
                            writeData14 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(1 downto 0) <= wen&wen;
                                when "0001" => wen_vec(1 downto 0) <= wen&wen;
                                when "0010" => wen_vec(3 downto 2) <= wen&wen;
                                when "0011" => wen_vec(3 downto 2) <= wen&wen;
                                when "0100" => wen_vec(5 downto 4) <= wen&wen;
                                when "0101" => wen_vec(5 downto 4) <= wen&wen;
                                when "0110" => wen_vec(7 downto 6) <= wen&wen;
                                when "0111" => wen_vec(7 downto 6) <= wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(11 downto 10) <= wen&wen;
                                when "1011" => wen_vec(11 downto 10) <= wen&wen;
                                when "1100" => wen_vec(13 downto 12) <= wen&wen;
                                when "1101" => wen_vec(13 downto 12) <= wen&wen;
                                when "1110" => wen_vec(14) <= wen;
                                when "1111" => wen_vec(7 downto 6) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(1 downto 0) <= ren&ren;
                                when "0001" => ren_vec(1 downto 0) <= ren&ren;
                                when "0010" => ren_vec(3 downto 2) <= ren&ren;
                                when "0011" => ren_vec(3 downto 2) <= ren&ren;
                                when "0100" => ren_vec(5 downto 4) <= ren&ren;
                                when "0101" => ren_vec(5 downto 4) <= ren&ren;
                                when "0110" => ren_vec(7 downto 6) <= ren&ren;
                                when "0111" => ren_vec(7 downto 6) <= ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(11 downto 10) <= ren&ren;
                                when "1011" => ren_vec(11 downto 10) <= ren&ren;
                                when "1100" => ren_vec(13 downto 12) <= ren&ren;
                                when "1101" => ren_vec(13 downto 12) <= ren&ren;
                                when "1110" => ren_vec(14) <= ren;
                                when "1111" => ren_vec(7 downto 6) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "0111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1011" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1100" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1101" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1110" => readData <= readData14;
                                when "1111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0  <= "01";
                            width1  <= "01";
                            width2  <= "01";
                            width3  <= "01";
                            width4  <= "01";
                            width5  <= "01";
                            width6  <= "01";
                            width7  <= "01";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            width12 <= "10";
                            width13 <= "10";
                            width14 <= "11";
                            writeAddr0  <= '0'&writeAddr(10 downto 0);
                            writeAddr1  <= '0'&writeAddr(10 downto 0);
                            writeAddr2  <= '0'&writeAddr(10 downto 0);
                            writeAddr3  <= '0'&writeAddr(10 downto 0);
                            writeAddr4  <= '0'&writeAddr(10 downto 0);
                            writeAddr5  <= '0'&writeAddr(10 downto 0);
                            writeAddr6  <= '0'&writeAddr(10 downto 0);
                            writeAddr7  <= '0'&writeAddr(10 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            writeAddr12 <= "00"&writeAddr(9 downto 0);
                            writeAddr13 <= "00"&writeAddr(9 downto 0);
                            writeAddr14 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= '0'&readAddr(10 downto 0);
                            readAddr1   <= '0'&readAddr(10 downto 0);
                            readAddr2   <= '0'&readAddr(10 downto 0);
                            readAddr3   <= '0'&readAddr(10 downto 0);
                            readAddr4   <= '0'&readAddr(10 downto 0);
                            readAddr5   <= '0'&readAddr(10 downto 0);
                            readAddr6   <= '0'&readAddr(10 downto 0);
                            readAddr7   <= '0'&readAddr(10 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            readAddr12  <= "00"&readAddr(9 downto 0);
                            readAddr13  <= "00"&readAddr(9 downto 0);
                            readAddr14  <= "000"&readAddr(8 downto 0);
                            writeData0(1 downto 0) <= writeData(1 downto 0);
                            writeData1(1 downto 0) <= writeData(3 downto 2);
                            writeData2(1 downto 0) <= writeData(5 downto 4);
                            writeData3(1 downto 0) <= writeData(7 downto 6);
                            writeData4(1 downto 0) <= writeData(1 downto 0);
                            writeData5(1 downto 0) <= writeData(3 downto 2);
                            writeData6(1 downto 0) <= writeData(5 downto 4);
                            writeData7(1 downto 0) <= writeData(7 downto 6);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            writeData12(3 downto 0) <= writeData(3 downto 0);
                            writeData13(3 downto 0) <= writeData(7 downto 4);
                            writeData14 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(13 downto 12) <= wen&wen;
                                when "1101" => wen_vec(13 downto 12) <= wen&wen;
                                when "1110" => wen_vec(14) <= wen;
                                when "1111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(13 downto 12) <= ren&ren;
                                when "1101" => ren_vec(13 downto 12) <= ren&ren;
                                when "1110" => ren_vec(14) <= ren;
                                when "1111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1101" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1110" => readData <= readData14;
                                when "1111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0  <= "00";
                            width1  <= "00";
                            width2  <= "00";
                            width3  <= "00";
                            width4  <= "00";
                            width5  <= "00";
                            width6  <= "00";
                            width7  <= "00";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            width12 <= "10";
                            width13 <= "10";
                            width14 <= "11";
                            writeAddr0  <= writeAddr(11 downto 0);
                            writeAddr1  <= writeAddr(11 downto 0);
                            writeAddr2  <= writeAddr(11 downto 0);
                            writeAddr3  <= writeAddr(11 downto 0);
                            writeAddr4  <= writeAddr(11 downto 0);
                            writeAddr5  <= writeAddr(11 downto 0);
                            writeAddr6  <= writeAddr(11 downto 0);
                            writeAddr7  <= writeAddr(11 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            writeAddr12 <= "00"&writeAddr(9 downto 0);
                            writeAddr13 <= "00"&writeAddr(9 downto 0);
                            writeAddr14 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= readAddr(11 downto 0);
                            readAddr1   <= readAddr(11 downto 0);
                            readAddr2   <= readAddr(11 downto 0);
                            readAddr3   <= readAddr(11 downto 0);
                            readAddr4   <= readAddr(11 downto 0);
                            readAddr5   <= readAddr(11 downto 0);
                            readAddr6   <= readAddr(11 downto 0);
                            readAddr7   <= readAddr(11 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            readAddr12  <= "00"&readAddr(9 downto 0);
                            readAddr13  <= "00"&readAddr(9 downto 0);
                            readAddr14  <= "000"&readAddr(8 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            writeData12(3 downto 0) <= writeData(3 downto 0);
                            writeData13(3 downto 0) <= writeData(7 downto 4);
                            writeData14 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(13 downto 12) <= wen&wen;
                                when "1101" => wen_vec(13 downto 12) <= wen&wen;
                                when "1110" => wen_vec(14) <= wen;
                                when "1111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(13 downto 12) <= ren&ren;
                                when "1101" => ren_vec(13 downto 12) <= ren&ren;
                                when "1110" => ren_vec(14) <= ren;
                                when "1111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1101" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1110" => readData <= readData14;
                                when "1111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when others => null;
                            end case;
                end case;
            when others =>   -- 8192
                case (RAM4K9_WIDTH) is
                    when 8 =>
                            width0  <= "11";
                            width1  <= "11";
                            width2  <= "11";
                            width3  <= "11";
                            width4  <= "11";
                            width5  <= "11";
                            width6  <= "11";
                            width7  <= "11";
                            width8  <= "11";
                            width9  <= "11";
                            width10 <= "11";
                            width11 <= "11";
                            width12 <= "11";
                            width13 <= "11";
                            width14 <= "11";
                            width15 <= "11";
                            writeAddr0  <= "000"&writeAddr(8 downto 0);
                            writeAddr1  <= "000"&writeAddr(8 downto 0);
                            writeAddr2  <= "000"&writeAddr(8 downto 0);
                            writeAddr3  <= "000"&writeAddr(8 downto 0);
                            writeAddr4  <= "000"&writeAddr(8 downto 0);
                            writeAddr5  <= "000"&writeAddr(8 downto 0);
                            writeAddr6  <= "000"&writeAddr(8 downto 0);
                            writeAddr7  <= "000"&writeAddr(8 downto 0);
                            writeAddr8  <= "000"&writeAddr(8 downto 0);
                            writeAddr9  <= "000"&writeAddr(8 downto 0);
                            writeAddr10 <= "000"&writeAddr(8 downto 0);
                            writeAddr11 <= "000"&writeAddr(8 downto 0);
                            writeAddr12 <= "000"&writeAddr(8 downto 0);
                            writeAddr13 <= "000"&writeAddr(8 downto 0);
                            writeAddr14 <= "000"&writeAddr(8 downto 0);
                            writeAddr15 <= "000"&writeAddr(8 downto 0);
                            readAddr0   <= "000"&readAddr(8 downto 0);
                            readAddr1   <= "000"&readAddr(8 downto 0);
                            readAddr2   <= "000"&readAddr(8 downto 0);
                            readAddr3   <= "000"&readAddr(8 downto 0);
                            readAddr4   <= "000"&readAddr(8 downto 0);
                            readAddr5   <= "000"&readAddr(8 downto 0);
                            readAddr6   <= "000"&readAddr(8 downto 0);
                            readAddr7   <= "000"&readAddr(8 downto 0);
                            readAddr8   <= "000"&readAddr(8 downto 0);
                            readAddr9   <= "000"&readAddr(8 downto 0);
                            readAddr10  <= "000"&readAddr(8 downto 0);
                            readAddr11  <= "000"&readAddr(8 downto 0);
                            readAddr12  <= "000"&readAddr(8 downto 0);
                            readAddr13  <= "000"&readAddr(8 downto 0);
                            readAddr14  <= "000"&readAddr(8 downto 0);
                            readAddr15  <= "000"&readAddr(8 downto 0);
                            writeData0  <= writeData;
                            writeData1  <= writeData;
                            writeData2  <= writeData;
                            writeData3  <= writeData;
                            writeData4  <= writeData;
                            writeData5  <= writeData;
                            writeData6  <= writeData;
                            writeData7  <= writeData;
                            writeData8  <= writeData;
                            writeData9  <= writeData;
                            writeData10 <= writeData;
                            writeData11 <= writeData;
                            writeData12 <= writeData;
                            writeData13 <= writeData;
                            writeData14 <= writeData;
                            writeData15 <= writeData;
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(0) <= wen;
                                when "0001" => wen_vec(1) <= wen;
                                when "0010" => wen_vec(2) <= wen;
                                when "0011" => wen_vec(3) <= wen;
                                when "0100" => wen_vec(4) <= wen;
                                when "0101" => wen_vec(5) <= wen;
                                when "0110" => wen_vec(6) <= wen;
                                when "0111" => wen_vec(7) <= wen;
                                when "1000" => wen_vec(8) <= wen;
                                when "1001" => wen_vec(9) <= wen;
                                when "1010" => wen_vec(10) <= wen;
                                when "1011" => wen_vec(11) <= wen;
                                when "1100" => wen_vec(12) <= wen;
                                when "1101" => wen_vec(13) <= wen;
                                when "1110" => wen_vec(14) <= wen;
                                when "1111" => wen_vec(15) <= wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(0) <= ren;
                                when "0001" => ren_vec(1) <= ren;
                                when "0010" => ren_vec(2) <= ren;
                                when "0011" => ren_vec(3) <= ren;
                                when "0100" => ren_vec(4) <= ren;
                                when "0101" => ren_vec(5) <= ren;
                                when "0110" => ren_vec(6) <= ren;
                                when "0111" => ren_vec(7) <= ren;
                                when "1000" => ren_vec(8) <= ren;
                                when "1001" => ren_vec(9) <= ren;
                                when "1010" => ren_vec(10) <= ren;
                                when "1011" => ren_vec(11) <= ren;
                                when "1100" => ren_vec(12) <= ren;
                                when "1101" => ren_vec(13) <= ren;
                                when "1110" => ren_vec(14) <= ren;
                                when "1111" => ren_vec(15) <= ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData0;
                                when "0001" => readData <= readData1;
                                when "0010" => readData <= readData2;
                                when "0011" => readData <= readData3;
                                when "0100" => readData <= readData4;
                                when "0101" => readData <= readData5;
                                when "0110" => readData <= readData6;
                                when "0111" => readData <= readData7;
                                when "1000" => readData <= readData8;
                                when "1001" => readData <= readData9;
                                when "1010" => readData <= readData10;
                                when "1011" => readData <= readData11;
                                when "1100" => readData <= readData12;
                                when "1101" => readData <= readData13;
                                when "1110" => readData <= readData14;
                                when "1111" => readData <= readData15;
                                when others => null;
                            end case;
                    when 4 =>
                            width0  <= "10";
                            width1  <= "10";
                            width2  <= "10";
                            width3  <= "10";
                            width4  <= "10";
                            width5  <= "10";
                            width6  <= "10";
                            width7  <= "10";
                            width8  <= "10";
                            width9  <= "10";
                            width10 <= "10";
                            width11 <= "10";
                            width12 <= "10";
                            width13 <= "10";
                            width14 <= "10";
                            width15 <= "10";
                            writeAddr0  <= "00"&writeAddr(9 downto 0);
                            writeAddr1  <= "00"&writeAddr(9 downto 0);
                            writeAddr2  <= "00"&writeAddr(9 downto 0);
                            writeAddr3  <= "00"&writeAddr(9 downto 0);
                            writeAddr4  <= "00"&writeAddr(9 downto 0);
                            writeAddr5  <= "00"&writeAddr(9 downto 0);
                            writeAddr6  <= "00"&writeAddr(9 downto 0);
                            writeAddr7  <= "00"&writeAddr(9 downto 0);
                            writeAddr8  <= "00"&writeAddr(9 downto 0);
                            writeAddr9  <= "00"&writeAddr(9 downto 0);
                            writeAddr10 <= "00"&writeAddr(9 downto 0);
                            writeAddr11 <= "00"&writeAddr(9 downto 0);
                            writeAddr12 <= "00"&writeAddr(9 downto 0);
                            writeAddr13 <= "00"&writeAddr(9 downto 0);
                            writeAddr14 <= "00"&writeAddr(9 downto 0);
                            writeAddr15 <= "00"&writeAddr(9 downto 0);
                            readAddr0   <= "00"&readAddr(9 downto 0);
                            readAddr1   <= "00"&readAddr(9 downto 0);
                            readAddr2   <= "00"&readAddr(9 downto 0);
                            readAddr3   <= "00"&readAddr(9 downto 0);
                            readAddr4   <= "00"&readAddr(9 downto 0);
                            readAddr5   <= "00"&readAddr(9 downto 0);
                            readAddr6   <= "00"&readAddr(9 downto 0);
                            readAddr7   <= "00"&readAddr(9 downto 0);
                            readAddr8   <= "00"&readAddr(9 downto 0);
                            readAddr9   <= "00"&readAddr(9 downto 0);
                            readAddr10  <= "00"&readAddr(9 downto 0);
                            readAddr11  <= "00"&readAddr(9 downto 0);
                            readAddr12  <= "00"&readAddr(9 downto 0);
                            readAddr13  <= "00"&readAddr(9 downto 0);
                            readAddr14  <= "00"&readAddr(9 downto 0);
                            readAddr15  <= "00"&readAddr(9 downto 0);
                            writeData0(3 downto 0) <= writeData(3 downto 0);
                            writeData1(3 downto 0) <= writeData(7 downto 4);
                            writeData2(3 downto 0) <= writeData(3 downto 0);
                            writeData3(3 downto 0) <= writeData(7 downto 4);
                            writeData4(3 downto 0) <= writeData(3 downto 0);
                            writeData5(3 downto 0) <= writeData(7 downto 4);
                            writeData6(3 downto 0) <= writeData(3 downto 0);
                            writeData7(3 downto 0) <= writeData(7 downto 4);
                            writeData8(3 downto 0) <= writeData(3 downto 0);
                            writeData9(3 downto 0) <= writeData(7 downto 4);
                            writeData10(3 downto 0) <= writeData(3 downto 0);
                            writeData11(3 downto 0) <= writeData(7 downto 4);
                            writeData12(3 downto 0) <= writeData(3 downto 0);
                            writeData13(3 downto 0) <= writeData(7 downto 4);
                            writeData14(3 downto 0) <= writeData(3 downto 0);
                            writeData15(3 downto 0) <= writeData(7 downto 4);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(1 downto 0) <= wen&wen;
                                when "0001" => wen_vec(1 downto 0) <= wen&wen;
                                when "0010" => wen_vec(3 downto 2) <= wen&wen;
                                when "0011" => wen_vec(3 downto 2) <= wen&wen;
                                when "0100" => wen_vec(5 downto 4) <= wen&wen;
                                when "0101" => wen_vec(5 downto 4) <= wen&wen;
                                when "0110" => wen_vec(7 downto 6) <= wen&wen;
                                when "0111" => wen_vec(7 downto 6) <= wen&wen;
                                when "1000" => wen_vec(9 downto 8) <= wen&wen;
                                when "1001" => wen_vec(9 downto 8) <= wen&wen;
                                when "1010" => wen_vec(11 downto 10) <= wen&wen;
                                when "1011" => wen_vec(11 downto 10) <= wen&wen;
                                when "1100" => wen_vec(13 downto 12) <= wen&wen;
                                when "1101" => wen_vec(13 downto 12) <= wen&wen;
                                when "1110" => wen_vec(15 downto 14) <= wen&wen;
                                when "1111" => wen_vec(15 downto 14) <= wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(1 downto 0) <= ren&ren;
                                when "0001" => ren_vec(1 downto 0) <= ren&ren;
                                when "0010" => ren_vec(3 downto 2) <= ren&ren;
                                when "0011" => ren_vec(3 downto 2) <= ren&ren;
                                when "0100" => ren_vec(5 downto 4) <= ren&ren;
                                when "0101" => ren_vec(5 downto 4) <= ren&ren;
                                when "0110" => ren_vec(7 downto 6) <= ren&ren;
                                when "0111" => ren_vec(7 downto 6) <= ren&ren;
                                when "1000" => ren_vec(9 downto 8) <= ren&ren;
                                when "1001" => ren_vec(9 downto 8) <= ren&ren;
                                when "1010" => ren_vec(11 downto 10) <= ren&ren;
                                when "1011" => ren_vec(11 downto 10) <= ren&ren;
                                when "1100" => ren_vec(13 downto 12) <= ren&ren;
                                when "1101" => ren_vec(13 downto 12) <= ren&ren;
                                when "1110" => ren_vec(15 downto 14) <= ren&ren;
                                when "1111" => ren_vec(15 downto 14) <= ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0001" => readData <= readData1(3 downto 0)&readData0(3 downto 0);
                                when "0010" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0011" => readData <= readData3(3 downto 0)&readData2(3 downto 0);
                                when "0100" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0101" => readData <= readData5(3 downto 0)&readData4(3 downto 0);
                                when "0110" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "0111" => readData <= readData7(3 downto 0)&readData6(3 downto 0);
                                when "1000" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1001" => readData <= readData9(3 downto 0)&readData8(3 downto 0);
                                when "1010" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1011" => readData <= readData11(3 downto 0)&readData10(3 downto 0);
                                when "1100" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1101" => readData <= readData13(3 downto 0)&readData12(3 downto 0);
                                when "1110" => readData <= readData15(3 downto 0)&readData14(3 downto 0);
                                when "1111" => readData <= readData15(3 downto 0)&readData14(3 downto 0);
                                when others => null;
                            end case;
                    when 2 =>
                            width0  <= "01";
                            width1  <= "01";
                            width2  <= "01";
                            width3  <= "01";
                            width4  <= "01";
                            width5  <= "01";
                            width6  <= "01";
                            width7  <= "01";
                            width8  <= "01";
                            width9  <= "01";
                            width10 <= "01";
                            width11 <= "01";
                            width12 <= "01";
                            width13 <= "01";
                            width14 <= "01";
                            width15 <= "01";
                            writeAddr0  <= '0'&writeAddr(10 downto 0);
                            writeAddr1  <= '0'&writeAddr(10 downto 0);
                            writeAddr2  <= '0'&writeAddr(10 downto 0);
                            writeAddr3  <= '0'&writeAddr(10 downto 0);
                            writeAddr4  <= '0'&writeAddr(10 downto 0);
                            writeAddr5  <= '0'&writeAddr(10 downto 0);
                            writeAddr6  <= '0'&writeAddr(10 downto 0);
                            writeAddr7  <= '0'&writeAddr(10 downto 0);
                            writeAddr8  <= '0'&writeAddr(10 downto 0);
                            writeAddr9  <= '0'&writeAddr(10 downto 0);
                            writeAddr10 <= '0'&writeAddr(10 downto 0);
                            writeAddr11 <= '0'&writeAddr(10 downto 0);
                            writeAddr12 <= '0'&writeAddr(10 downto 0);
                            writeAddr13 <= '0'&writeAddr(10 downto 0);
                            writeAddr14 <= '0'&writeAddr(10 downto 0);
                            writeAddr15 <= '0'&writeAddr(10 downto 0);
                            readAddr0   <= '0'&readAddr(10 downto 0);
                            readAddr1   <= '0'&readAddr(10 downto 0);
                            readAddr2   <= '0'&readAddr(10 downto 0);
                            readAddr3   <= '0'&readAddr(10 downto 0);
                            readAddr4   <= '0'&readAddr(10 downto 0);
                            readAddr5   <= '0'&readAddr(10 downto 0);
                            readAddr6   <= '0'&readAddr(10 downto 0);
                            readAddr7   <= '0'&readAddr(10 downto 0);
                            readAddr8   <= '0'&readAddr(10 downto 0);
                            readAddr9   <= '0'&readAddr(10 downto 0);
                            readAddr10  <= '0'&readAddr(10 downto 0);
                            readAddr11  <= '0'&readAddr(10 downto 0);
                            readAddr12  <= '0'&readAddr(10 downto 0);
                            readAddr13  <= '0'&readAddr(10 downto 0);
                            readAddr14  <= '0'&readAddr(10 downto 0);
                            readAddr15  <= '0'&readAddr(10 downto 0);
                            writeData0(1 downto 0)  <= writeData(1 downto 0);
                            writeData1(1 downto 0)  <= writeData(3 downto 2);
                            writeData2(1 downto 0)  <= writeData(5 downto 4);
                            writeData3(1 downto 0)  <= writeData(7 downto 6);
                            writeData4(1 downto 0)  <= writeData(1 downto 0);
                            writeData5(1 downto 0)  <= writeData(3 downto 2);
                            writeData6(1 downto 0)  <= writeData(5 downto 4);
                            writeData7(1 downto 0)  <= writeData(7 downto 6);
                            writeData8(1 downto 0)  <= writeData(1 downto 0);
                            writeData9(1 downto 0)  <= writeData(3 downto 2);
                            writeData10(1 downto 0) <= writeData(5 downto 4);
                            writeData11(1 downto 0) <= writeData(7 downto 6);
                            writeData12(1 downto 0) <= writeData(1 downto 0);
                            writeData13(1 downto 0) <= writeData(3 downto 2);
                            writeData14(1 downto 0) <= writeData(5 downto 4);
                            writeData15(1 downto 0) <= writeData(7 downto 6);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0001" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0010" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0011" => wen_vec(3 downto 0) <= wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 4) <= wen&wen&wen&wen;
                                when "1000" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1001" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1010" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1011" => wen_vec(11 downto 8) <= wen&wen&wen&wen;
                                when "1100" => wen_vec(15 downto 12) <= wen&wen&wen&wen;
                                when "1101" => wen_vec(15 downto 12) <= wen&wen&wen&wen;
                                when "1110" => wen_vec(15 downto 12) <= wen&wen&wen&wen;
                                when "1111" => wen_vec(15 downto 12) <= wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0001" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0010" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0011" => ren_vec(3 downto 0) <= ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 4) <= ren&ren&ren&ren;
                                when "1000" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1001" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1010" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1011" => ren_vec(11 downto 8) <= ren&ren&ren&ren;
                                when "1100" => ren_vec(15 downto 12) <= ren&ren&ren&ren;
                                when "1101" => ren_vec(15 downto 12) <= ren&ren&ren&ren;
                                when "1110" => ren_vec(15 downto 12) <= ren&ren&ren&ren;
                                when "1111" => ren_vec(15 downto 12) <= ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0001" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0010" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0011" => readData <= readData3(1 downto 0)&readData2(1 downto 0)&readData1(1 downto 0)&readData0(1 downto 0);
                                when "0100" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0101" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0110" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "0111" => readData <= readData7(1 downto 0)&readData6(1 downto 0)&readData5(1 downto 0)&readData4(1 downto 0);
                                when "1000" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1001" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1010" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1011" => readData <= readData11(1 downto 0)&readData10(1 downto 0)&readData9(1 downto 0)&readData8(1 downto 0);
                                when "1100" => readData <= readData15(1 downto 0)&readData14(1 downto 0)&readData13(1 downto 0)&readData12(1 downto 0);
                                when "1101" => readData <= readData15(1 downto 0)&readData14(1 downto 0)&readData13(1 downto 0)&readData12(1 downto 0);
                                when "1110" => readData <= readData15(1 downto 0)&readData14(1 downto 0)&readData13(1 downto 0)&readData12(1 downto 0);
                                when "1111" => readData <= readData15(1 downto 0)&readData14(1 downto 0)&readData13(1 downto 0)&readData12(1 downto 0);
                                when others => null;
                            end case;
                    when others =>
                            width0  <= "00";
                            width1  <= "00";
                            width2  <= "00";
                            width3  <= "00";
                            width4  <= "00";
                            width5  <= "00";
                            width6  <= "00";
                            width7  <= "00";
                            width8  <= "00";
                            width9  <= "00";
                            width10 <= "00";
                            width11 <= "00";
                            width12 <= "00";
                            width13 <= "00";
                            width14 <= "00";
                            width15 <= "00";
                            writeAddr0  <= writeAddr(11 downto 0);
                            writeAddr1  <= writeAddr(11 downto 0);
                            writeAddr2  <= writeAddr(11 downto 0);
                            writeAddr3  <= writeAddr(11 downto 0);
                            writeAddr4  <= writeAddr(11 downto 0);
                            writeAddr5  <= writeAddr(11 downto 0);
                            writeAddr6  <= writeAddr(11 downto 0);
                            writeAddr7  <= writeAddr(11 downto 0);
                            writeAddr8  <= writeAddr(11 downto 0);
                            writeAddr9  <= writeAddr(11 downto 0);
                            writeAddr10 <= writeAddr(11 downto 0);
                            writeAddr11 <= writeAddr(11 downto 0);
                            writeAddr12 <= writeAddr(11 downto 0);
                            writeAddr13 <= writeAddr(11 downto 0);
                            writeAddr14 <= writeAddr(11 downto 0);
                            writeAddr15 <= writeAddr(11 downto 0);
                            readAddr0   <= readAddr(11 downto 0);
                            readAddr1   <= readAddr(11 downto 0);
                            readAddr2   <= readAddr(11 downto 0);
                            readAddr3   <= readAddr(11 downto 0);
                            readAddr4   <= readAddr(11 downto 0);
                            readAddr5   <= readAddr(11 downto 0);
                            readAddr6   <= readAddr(11 downto 0);
                            readAddr7   <= readAddr(11 downto 0);
                            readAddr8   <= readAddr(11 downto 0);
                            readAddr9   <= readAddr(11 downto 0);
                            readAddr10  <= readAddr(11 downto 0);
                            readAddr11  <= readAddr(11 downto 0);
                            readAddr12  <= readAddr(11 downto 0);
                            readAddr13  <= readAddr(11 downto 0);
                            readAddr14  <= readAddr(11 downto 0);
                            readAddr15  <= readAddr(11 downto 0);
                            writeData0(0) <= writeData(0);
                            writeData1(0) <= writeData(1);
                            writeData2(0) <= writeData(2);
                            writeData3(0) <= writeData(3);
                            writeData4(0) <= writeData(4);
                            writeData5(0) <= writeData(5);
                            writeData6(0) <= writeData(6);
                            writeData7(0) <= writeData(7);
                            writeData8(0) <= writeData(0);
                            writeData9(0) <= writeData(1);
                            writeData10(0) <= writeData(2);
                            writeData11(0) <= writeData(3);
                            writeData12(0) <= writeData(4);
                            writeData13(0) <= writeData(5);
                            writeData14(0) <= writeData(6);
                            writeData15(0) <= writeData(7);
                            case (writeAddr(12 downto 9)) is
                                when "0000" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0001" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0010" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0011" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0100" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0101" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0110" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "0111" => wen_vec(7 downto 0) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1000" => wen_vec(15 downto 8) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1001" => wen_vec(15 downto 8) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1010" => wen_vec(15 downto 8) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1011" => wen_vec(15 downto 8) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1100" => wen_vec(15 downto 8) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1101" => wen_vec(15 downto 8) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1110" => wen_vec(15 downto 8) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when "1111" => wen_vec(15 downto 8) <= wen&wen&wen&wen&wen&wen&wen&wen;
                                when others => null;
                            end case;
                            case (readAddr(12 downto 9)) is
                                when "0000" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0001" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0010" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0011" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0100" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0101" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0110" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "0111" => ren_vec(7 downto 0) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1000" => ren_vec(15 downto 8) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1001" => ren_vec(15 downto 8) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1010" => ren_vec(15 downto 8) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1011" => ren_vec(15 downto 8) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1100" => ren_vec(15 downto 8) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1101" => ren_vec(15 downto 8) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1110" => ren_vec(15 downto 8) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when "1111" => ren_vec(15 downto 8) <= ren&ren&ren&ren&ren&ren&ren&ren;
                                when others => null;
                            end case;
                            case (ckRdAddr(12 downto 9)) is
                                when "0000" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0001" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0010" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0011" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0100" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0101" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0110" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "0111" => readData <= readData7(0)&readData6(0)&readData5(0)&readData4(0)&readData3(0)&readData2(0)&readData1(0)&readData0(0);
                                when "1000" => readData <= readData15(0)&readData14(0)&readData13(0)&readData12(0)&readData11(0)&readData10(0)&readData9(0)&readData8(0);
                                when "1001" => readData <= readData15(0)&readData14(0)&readData13(0)&readData12(0)&readData11(0)&readData10(0)&readData9(0)&readData8(0);
                                when "1010" => readData <= readData15(0)&readData14(0)&readData13(0)&readData12(0)&readData11(0)&readData10(0)&readData9(0)&readData8(0);
                                when "1011" => readData <= readData15(0)&readData14(0)&readData13(0)&readData12(0)&readData11(0)&readData10(0)&readData9(0)&readData8(0);
                                when "1100" => readData <= readData15(0)&readData14(0)&readData13(0)&readData12(0)&readData11(0)&readData10(0)&readData9(0)&readData8(0);
                                when "1101" => readData <= readData15(0)&readData14(0)&readData13(0)&readData12(0)&readData11(0)&readData10(0)&readData9(0)&readData8(0);
                                when "1110" => readData <= readData15(0)&readData14(0)&readData13(0)&readData12(0)&readData11(0)&readData10(0)&readData9(0)&readData8(0);
                                when "1111" => readData <= readData15(0)&readData14(0)&readData13(0)&readData12(0)&readData11(0)&readData10(0)&readData9(0)&readData8(0);
                                when others => null;
                            end case;
                end case;
        end case;
    end process;

    ------------------------------------------------------------------------------------------
    -- RAM4K9 blocks
    ------------------------------------------------------------------------------------------
    block0 : RAM4K9 port map (
        ADDRA11    => writeAddr0(11),       ADDRB11    => readAddr0(11),
        ADDRA10    => writeAddr0(10),       ADDRB10    => readAddr0(10),
        ADDRA9     => writeAddr0(9),        ADDRB9     => readAddr0(9),
        ADDRA8     => writeAddr0(8),        ADDRB8     => readAddr0(8),
        ADDRA7     => writeAddr0(7),        ADDRB7     => readAddr0(7),
        ADDRA6     => writeAddr0(6),        ADDRB6     => readAddr0(6),
        ADDRA5     => writeAddr0(5),        ADDRB5     => readAddr0(5),
        ADDRA4     => writeAddr0(4),        ADDRB4     => readAddr0(4),
        ADDRA3     => writeAddr0(3),        ADDRB3     => readAddr0(3),
        ADDRA2     => writeAddr0(2),        ADDRB2     => readAddr0(2),
        ADDRA1     => writeAddr0(1),        ADDRB1     => readAddr0(1),
        ADDRA0     => writeAddr0(0),        ADDRB0     => readAddr0(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData0(7),        DINB7      => lo,
        DINA6      => writeData0(6),        DINB6      => lo,
        DINA5      => writeData0(5),        DINB5      => lo,
        DINA4      => writeData0(4),        DINB4      => lo,
        DINA3      => writeData0(3),        DINB3      => lo,
        DINA2      => writeData0(2),        DINB2      => lo,
        DINA1      => writeData0(1),        DINB1      => lo,
        DINA0      => writeData0(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData0(7),
        DOUTA6     => open,                 DOUTB6     => readData0(6),
        DOUTA5     => open,                 DOUTB5     => readData0(5),
        DOUTA4     => open,                 DOUTB4     => readData0(4),
        DOUTA3     => open,                 DOUTB3     => readData0(3),
        DOUTA2     => open,                 DOUTB2     => readData0(2),
        DOUTA1     => open,                 DOUTB1     => readData0(1),
        DOUTA0     => open,                 DOUTB0     => readData0(0),
        WIDTHA1    => width0(1),            WIDTHB1    => width0(1),
        WIDTHA0    => width0(0),            WIDTHB0    => width0(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(0),           BLKB       => ren_vec(0),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block1 : RAM4K9 port map (
        ADDRA11    => writeAddr1(11),       ADDRB11    => readAddr1(11),
        ADDRA10    => writeAddr1(10),       ADDRB10    => readAddr1(10),
        ADDRA9     => writeAddr1(9),        ADDRB9     => readAddr1(9),
        ADDRA8     => writeAddr1(8),        ADDRB8     => readAddr1(8),
        ADDRA7     => writeAddr1(7),        ADDRB7     => readAddr1(7),
        ADDRA6     => writeAddr1(6),        ADDRB6     => readAddr1(6),
        ADDRA5     => writeAddr1(5),        ADDRB5     => readAddr1(5),
        ADDRA4     => writeAddr1(4),        ADDRB4     => readAddr1(4),
        ADDRA3     => writeAddr1(3),        ADDRB3     => readAddr1(3),
        ADDRA2     => writeAddr1(2),        ADDRB2     => readAddr1(2),
        ADDRA1     => writeAddr1(1),        ADDRB1     => readAddr1(1),
        ADDRA0     => writeAddr1(0),        ADDRB0     => readAddr1(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData1(7),        DINB7      => lo,
        DINA6      => writeData1(6),        DINB6      => lo,
        DINA5      => writeData1(5),        DINB5      => lo,
        DINA4      => writeData1(4),        DINB4      => lo,
        DINA3      => writeData1(3),        DINB3      => lo,
        DINA2      => writeData1(2),        DINB2      => lo,
        DINA1      => writeData1(1),        DINB1      => lo,
        DINA0      => writeData1(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData1(7),
        DOUTA6     => open,                 DOUTB6     => readData1(6),
        DOUTA5     => open,                 DOUTB5     => readData1(5),
        DOUTA4     => open,                 DOUTB4     => readData1(4),
        DOUTA3     => open,                 DOUTB3     => readData1(3),
        DOUTA2     => open,                 DOUTB2     => readData1(2),
        DOUTA1     => open,                 DOUTB1     => readData1(1),
        DOUTA0     => open,                 DOUTB0     => readData1(0),
        WIDTHA1    => width1(1),            WIDTHB1    => width1(1),
        WIDTHA0    => width1(0),            WIDTHB0    => width1(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(1),           BLKB       => ren_vec(1),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block2 : RAM4K9 port map (
        ADDRA11    => writeAddr2(11),       ADDRB11    => readAddr2(11),
        ADDRA10    => writeAddr2(10),       ADDRB10    => readAddr2(10),
        ADDRA9     => writeAddr2(9),        ADDRB9     => readAddr2(9),
        ADDRA8     => writeAddr2(8),        ADDRB8     => readAddr2(8),
        ADDRA7     => writeAddr2(7),        ADDRB7     => readAddr2(7),
        ADDRA6     => writeAddr2(6),        ADDRB6     => readAddr2(6),
        ADDRA5     => writeAddr2(5),        ADDRB5     => readAddr2(5),
        ADDRA4     => writeAddr2(4),        ADDRB4     => readAddr2(4),
        ADDRA3     => writeAddr2(3),        ADDRB3     => readAddr2(3),
        ADDRA2     => writeAddr2(2),        ADDRB2     => readAddr2(2),
        ADDRA1     => writeAddr2(1),        ADDRB1     => readAddr2(1),
        ADDRA0     => writeAddr2(0),        ADDRB0     => readAddr2(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData2(7),        DINB7      => lo,
        DINA6      => writeData2(6),        DINB6      => lo,
        DINA5      => writeData2(5),        DINB5      => lo,
        DINA4      => writeData2(4),        DINB4      => lo,
        DINA3      => writeData2(3),        DINB3      => lo,
        DINA2      => writeData2(2),        DINB2      => lo,
        DINA1      => writeData2(1),        DINB1      => lo,
        DINA0      => writeData2(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData2(7),
        DOUTA6     => open,                 DOUTB6     => readData2(6),
        DOUTA5     => open,                 DOUTB5     => readData2(5),
        DOUTA4     => open,                 DOUTB4     => readData2(4),
        DOUTA3     => open,                 DOUTB3     => readData2(3),
        DOUTA2     => open,                 DOUTB2     => readData2(2),
        DOUTA1     => open,                 DOUTB1     => readData2(1),
        DOUTA0     => open,                 DOUTB0     => readData2(0),
        WIDTHA1    => width2(1),            WIDTHB1    => width2(1),
        WIDTHA0    => width2(0),            WIDTHB0    => width2(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(2),           BLKB       => ren_vec(2),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block3 : RAM4K9 port map (
        ADDRA11    => writeAddr3(11),       ADDRB11    => readAddr3(11),
        ADDRA10    => writeAddr3(10),       ADDRB10    => readAddr3(10),
        ADDRA9     => writeAddr3(9),        ADDRB9     => readAddr3(9),
        ADDRA8     => writeAddr3(8),        ADDRB8     => readAddr3(8),
        ADDRA7     => writeAddr3(7),        ADDRB7     => readAddr3(7),
        ADDRA6     => writeAddr3(6),        ADDRB6     => readAddr3(6),
        ADDRA5     => writeAddr3(5),        ADDRB5     => readAddr3(5),
        ADDRA4     => writeAddr3(4),        ADDRB4     => readAddr3(4),
        ADDRA3     => writeAddr3(3),        ADDRB3     => readAddr3(3),
        ADDRA2     => writeAddr3(2),        ADDRB2     => readAddr3(2),
        ADDRA1     => writeAddr3(1),        ADDRB1     => readAddr3(1),
        ADDRA0     => writeAddr3(0),        ADDRB0     => readAddr3(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData3(7),        DINB7      => lo,
        DINA6      => writeData3(6),        DINB6      => lo,
        DINA5      => writeData3(5),        DINB5      => lo,
        DINA4      => writeData3(4),        DINB4      => lo,
        DINA3      => writeData3(3),        DINB3      => lo,
        DINA2      => writeData3(2),        DINB2      => lo,
        DINA1      => writeData3(1),        DINB1      => lo,
        DINA0      => writeData3(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData3(7),
        DOUTA6     => open,                 DOUTB6     => readData3(6),
        DOUTA5     => open,                 DOUTB5     => readData3(5),
        DOUTA4     => open,                 DOUTB4     => readData3(4),
        DOUTA3     => open,                 DOUTB3     => readData3(3),
        DOUTA2     => open,                 DOUTB2     => readData3(2),
        DOUTA1     => open,                 DOUTB1     => readData3(1),
        DOUTA0     => open,                 DOUTB0     => readData3(0),
        WIDTHA1    => width3(1),            WIDTHB1    => width3(1),
        WIDTHA0    => width3(0),            WIDTHB0    => width3(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(3),           BLKB       => ren_vec(3),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block4 : RAM4K9 port map (
        ADDRA11    => writeAddr4(11),       ADDRB11    => readAddr4(11),
        ADDRA10    => writeAddr4(10),       ADDRB10    => readAddr4(10),
        ADDRA9     => writeAddr4(9),        ADDRB9     => readAddr4(9),
        ADDRA8     => writeAddr4(8),        ADDRB8     => readAddr4(8),
        ADDRA7     => writeAddr4(7),        ADDRB7     => readAddr4(7),
        ADDRA6     => writeAddr4(6),        ADDRB6     => readAddr4(6),
        ADDRA5     => writeAddr4(5),        ADDRB5     => readAddr4(5),
        ADDRA4     => writeAddr4(4),        ADDRB4     => readAddr4(4),
        ADDRA3     => writeAddr4(3),        ADDRB3     => readAddr4(3),
        ADDRA2     => writeAddr4(2),        ADDRB2     => readAddr4(2),
        ADDRA1     => writeAddr4(1),        ADDRB1     => readAddr4(1),
        ADDRA0     => writeAddr4(0),        ADDRB0     => readAddr4(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData4(7),        DINB7      => lo,
        DINA6      => writeData4(6),        DINB6      => lo,
        DINA5      => writeData4(5),        DINB5      => lo,
        DINA4      => writeData4(4),        DINB4      => lo,
        DINA3      => writeData4(3),        DINB3      => lo,
        DINA2      => writeData4(2),        DINB2      => lo,
        DINA1      => writeData4(1),        DINB1      => lo,
        DINA0      => writeData4(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData4(7),
        DOUTA6     => open,                 DOUTB6     => readData4(6),
        DOUTA5     => open,                 DOUTB5     => readData4(5),
        DOUTA4     => open,                 DOUTB4     => readData4(4),
        DOUTA3     => open,                 DOUTB3     => readData4(3),
        DOUTA2     => open,                 DOUTB2     => readData4(2),
        DOUTA1     => open,                 DOUTB1     => readData4(1),
        DOUTA0     => open,                 DOUTB0     => readData4(0),
        WIDTHA1    => width4(1),            WIDTHB1    => width4(1),
        WIDTHA0    => width4(0),            WIDTHB0    => width4(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(4),           BLKB       => ren_vec(4),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block5 : RAM4K9 port map (
        ADDRA11    => writeAddr5(11),       ADDRB11    => readAddr5(11),
        ADDRA10    => writeAddr5(10),       ADDRB10    => readAddr5(10),
        ADDRA9     => writeAddr5(9),        ADDRB9     => readAddr5(9),
        ADDRA8     => writeAddr5(8),        ADDRB8     => readAddr5(8),
        ADDRA7     => writeAddr5(7),        ADDRB7     => readAddr5(7),
        ADDRA6     => writeAddr5(6),        ADDRB6     => readAddr5(6),
        ADDRA5     => writeAddr5(5),        ADDRB5     => readAddr5(5),
        ADDRA4     => writeAddr5(4),        ADDRB4     => readAddr5(4),
        ADDRA3     => writeAddr5(3),        ADDRB3     => readAddr5(3),
        ADDRA2     => writeAddr5(2),        ADDRB2     => readAddr5(2),
        ADDRA1     => writeAddr5(1),        ADDRB1     => readAddr5(1),
        ADDRA0     => writeAddr5(0),        ADDRB0     => readAddr5(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData5(7),        DINB7      => lo,
        DINA6      => writeData5(6),        DINB6      => lo,
        DINA5      => writeData5(5),        DINB5      => lo,
        DINA4      => writeData5(4),        DINB4      => lo,
        DINA3      => writeData5(3),        DINB3      => lo,
        DINA2      => writeData5(2),        DINB2      => lo,
        DINA1      => writeData5(1),        DINB1      => lo,
        DINA0      => writeData5(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData5(7),
        DOUTA6     => open,                 DOUTB6     => readData5(6),
        DOUTA5     => open,                 DOUTB5     => readData5(5),
        DOUTA4     => open,                 DOUTB4     => readData5(4),
        DOUTA3     => open,                 DOUTB3     => readData5(3),
        DOUTA2     => open,                 DOUTB2     => readData5(2),
        DOUTA1     => open,                 DOUTB1     => readData5(1),
        DOUTA0     => open,                 DOUTB0     => readData5(0),
        WIDTHA1    => width5(1),            WIDTHB1    => width5(1),
        WIDTHA0    => width5(0),            WIDTHB0    => width5(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(5),           BLKB       => ren_vec(5),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block6 : RAM4K9 port map (
        ADDRA11    => writeAddr6(11),       ADDRB11    => readAddr6(11),
        ADDRA10    => writeAddr6(10),       ADDRB10    => readAddr6(10),
        ADDRA9     => writeAddr6(9),        ADDRB9     => readAddr6(9),
        ADDRA8     => writeAddr6(8),        ADDRB8     => readAddr6(8),
        ADDRA7     => writeAddr6(7),        ADDRB7     => readAddr6(7),
        ADDRA6     => writeAddr6(6),        ADDRB6     => readAddr6(6),
        ADDRA5     => writeAddr6(5),        ADDRB5     => readAddr6(5),
        ADDRA4     => writeAddr6(4),        ADDRB4     => readAddr6(4),
        ADDRA3     => writeAddr6(3),        ADDRB3     => readAddr6(3),
        ADDRA2     => writeAddr6(2),        ADDRB2     => readAddr6(2),
        ADDRA1     => writeAddr6(1),        ADDRB1     => readAddr6(1),
        ADDRA0     => writeAddr6(0),        ADDRB0     => readAddr6(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData6(7),        DINB7      => lo,
        DINA6      => writeData6(6),        DINB6      => lo,
        DINA5      => writeData6(5),        DINB5      => lo,
        DINA4      => writeData6(4),        DINB4      => lo,
        DINA3      => writeData6(3),        DINB3      => lo,
        DINA2      => writeData6(2),        DINB2      => lo,
        DINA1      => writeData6(1),        DINB1      => lo,
        DINA0      => writeData6(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData6(7),
        DOUTA6     => open,                 DOUTB6     => readData6(6),
        DOUTA5     => open,                 DOUTB5     => readData6(5),
        DOUTA4     => open,                 DOUTB4     => readData6(4),
        DOUTA3     => open,                 DOUTB3     => readData6(3),
        DOUTA2     => open,                 DOUTB2     => readData6(2),
        DOUTA1     => open,                 DOUTB1     => readData6(1),
        DOUTA0     => open,                 DOUTB0     => readData6(0),
        WIDTHA1    => width6(1),            WIDTHB1    => width6(1),
        WIDTHA0    => width6(0),            WIDTHB0    => width6(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(6),           BLKB       => ren_vec(6),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block7 : RAM4K9 port map (
        ADDRA11    => writeAddr7(11),       ADDRB11    => readAddr7(11),
        ADDRA10    => writeAddr7(10),       ADDRB10    => readAddr7(10),
        ADDRA9     => writeAddr7(9),        ADDRB9     => readAddr7(9),
        ADDRA8     => writeAddr7(8),        ADDRB8     => readAddr7(8),
        ADDRA7     => writeAddr7(7),        ADDRB7     => readAddr7(7),
        ADDRA6     => writeAddr7(6),        ADDRB6     => readAddr7(6),
        ADDRA5     => writeAddr7(5),        ADDRB5     => readAddr7(5),
        ADDRA4     => writeAddr7(4),        ADDRB4     => readAddr7(4),
        ADDRA3     => writeAddr7(3),        ADDRB3     => readAddr7(3),
        ADDRA2     => writeAddr7(2),        ADDRB2     => readAddr7(2),
        ADDRA1     => writeAddr7(1),        ADDRB1     => readAddr7(1),
        ADDRA0     => writeAddr7(0),        ADDRB0     => readAddr7(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData7(7),        DINB7      => lo,
        DINA6      => writeData7(6),        DINB6      => lo,
        DINA5      => writeData7(5),        DINB5      => lo,
        DINA4      => writeData7(4),        DINB4      => lo,
        DINA3      => writeData7(3),        DINB3      => lo,
        DINA2      => writeData7(2),        DINB2      => lo,
        DINA1      => writeData7(1),        DINB1      => lo,
        DINA0      => writeData7(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData7(7),
        DOUTA6     => open,                 DOUTB6     => readData7(6),
        DOUTA5     => open,                 DOUTB5     => readData7(5),
        DOUTA4     => open,                 DOUTB4     => readData7(4),
        DOUTA3     => open,                 DOUTB3     => readData7(3),
        DOUTA2     => open,                 DOUTB2     => readData7(2),
        DOUTA1     => open,                 DOUTB1     => readData7(1),
        DOUTA0     => open,                 DOUTB0     => readData7(0),
        WIDTHA1    => width7(1),            WIDTHB1    => width7(1),
        WIDTHA0    => width7(0),            WIDTHB0    => width7(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(7),           BLKB       => ren_vec(7),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block8 : RAM4K9 port map (
        ADDRA11    => writeAddr8(11),       ADDRB11    => readAddr8(11),
        ADDRA10    => writeAddr8(10),       ADDRB10    => readAddr8(10),
        ADDRA9     => writeAddr8(9),        ADDRB9     => readAddr8(9),
        ADDRA8     => writeAddr8(8),        ADDRB8     => readAddr8(8),
        ADDRA7     => writeAddr8(7),        ADDRB7     => readAddr8(7),
        ADDRA6     => writeAddr8(6),        ADDRB6     => readAddr8(6),
        ADDRA5     => writeAddr8(5),        ADDRB5     => readAddr8(5),
        ADDRA4     => writeAddr8(4),        ADDRB4     => readAddr8(4),
        ADDRA3     => writeAddr8(3),        ADDRB3     => readAddr8(3),
        ADDRA2     => writeAddr8(2),        ADDRB2     => readAddr8(2),
        ADDRA1     => writeAddr8(1),        ADDRB1     => readAddr8(1),
        ADDRA0     => writeAddr8(0),        ADDRB0     => readAddr8(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData8(7),        DINB7      => lo,
        DINA6      => writeData8(6),        DINB6      => lo,
        DINA5      => writeData8(5),        DINB5      => lo,
        DINA4      => writeData8(4),        DINB4      => lo,
        DINA3      => writeData8(3),        DINB3      => lo,
        DINA2      => writeData8(2),        DINB2      => lo,
        DINA1      => writeData8(1),        DINB1      => lo,
        DINA0      => writeData8(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData8(7),
        DOUTA6     => open,                 DOUTB6     => readData8(6),
        DOUTA5     => open,                 DOUTB5     => readData8(5),
        DOUTA4     => open,                 DOUTB4     => readData8(4),
        DOUTA3     => open,                 DOUTB3     => readData8(3),
        DOUTA2     => open,                 DOUTB2     => readData8(2),
        DOUTA1     => open,                 DOUTB1     => readData8(1),
        DOUTA0     => open,                 DOUTB0     => readData8(0),
        WIDTHA1    => width8(1),            WIDTHB1    => width8(1),
        WIDTHA0    => width8(0),            WIDTHB0    => width8(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(8),           BLKB       => ren_vec(8),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block9 : RAM4K9 port map (
        ADDRA11    => writeAddr9(11),       ADDRB11    => readAddr9(11),
        ADDRA10    => writeAddr9(10),       ADDRB10    => readAddr9(10),
        ADDRA9     => writeAddr9(9),        ADDRB9     => readAddr9(9),
        ADDRA8     => writeAddr9(8),        ADDRB8     => readAddr9(8),
        ADDRA7     => writeAddr9(7),        ADDRB7     => readAddr9(7),
        ADDRA6     => writeAddr9(6),        ADDRB6     => readAddr9(6),
        ADDRA5     => writeAddr9(5),        ADDRB5     => readAddr9(5),
        ADDRA4     => writeAddr9(4),        ADDRB4     => readAddr9(4),
        ADDRA3     => writeAddr9(3),        ADDRB3     => readAddr9(3),
        ADDRA2     => writeAddr9(2),        ADDRB2     => readAddr9(2),
        ADDRA1     => writeAddr9(1),        ADDRB1     => readAddr9(1),
        ADDRA0     => writeAddr9(0),        ADDRB0     => readAddr9(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData9(7),        DINB7      => lo,
        DINA6      => writeData9(6),        DINB6      => lo,
        DINA5      => writeData9(5),        DINB5      => lo,
        DINA4      => writeData9(4),        DINB4      => lo,
        DINA3      => writeData9(3),        DINB3      => lo,
        DINA2      => writeData9(2),        DINB2      => lo,
        DINA1      => writeData9(1),        DINB1      => lo,
        DINA0      => writeData9(0),        DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData9(7),
        DOUTA6     => open,                 DOUTB6     => readData9(6),
        DOUTA5     => open,                 DOUTB5     => readData9(5),
        DOUTA4     => open,                 DOUTB4     => readData9(4),
        DOUTA3     => open,                 DOUTB3     => readData9(3),
        DOUTA2     => open,                 DOUTB2     => readData9(2),
        DOUTA1     => open,                 DOUTB1     => readData9(1),
        DOUTA0     => open,                 DOUTB0     => readData9(0),
        WIDTHA1    => width9(1),            WIDTHB1    => width9(1),
        WIDTHA0    => width9(0),            WIDTHB0    => width9(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(9),           BLKB       => ren_vec(9),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block10 : RAM4K9 port map (
        ADDRA11    => writeAddr10(11),      ADDRB11    => readAddr10(11),
        ADDRA10    => writeAddr10(10),      ADDRB10    => readAddr10(10),
        ADDRA9     => writeAddr10(9),       ADDRB9     => readAddr10(9),
        ADDRA8     => writeAddr10(8),       ADDRB8     => readAddr10(8),
        ADDRA7     => writeAddr10(7),       ADDRB7     => readAddr10(7),
        ADDRA6     => writeAddr10(6),       ADDRB6     => readAddr10(6),
        ADDRA5     => writeAddr10(5),       ADDRB5     => readAddr10(5),
        ADDRA4     => writeAddr10(4),       ADDRB4     => readAddr10(4),
        ADDRA3     => writeAddr10(3),       ADDRB3     => readAddr10(3),
        ADDRA2     => writeAddr10(2),       ADDRB2     => readAddr10(2),
        ADDRA1     => writeAddr10(1),       ADDRB1     => readAddr10(1),
        ADDRA0     => writeAddr10(0),       ADDRB0     => readAddr10(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData10(7),       DINB7      => lo,
        DINA6      => writeData10(6),       DINB6      => lo,
        DINA5      => writeData10(5),       DINB5      => lo,
        DINA4      => writeData10(4),       DINB4      => lo,
        DINA3      => writeData10(3),       DINB3      => lo,
        DINA2      => writeData10(2),       DINB2      => lo,
        DINA1      => writeData10(1),       DINB1      => lo,
        DINA0      => writeData10(0),       DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData10(7),
        DOUTA6     => open,                 DOUTB6     => readData10(6),
        DOUTA5     => open,                 DOUTB5     => readData10(5),
        DOUTA4     => open,                 DOUTB4     => readData10(4),
        DOUTA3     => open,                 DOUTB3     => readData10(3),
        DOUTA2     => open,                 DOUTB2     => readData10(2),
        DOUTA1     => open,                 DOUTB1     => readData10(1),
        DOUTA0     => open,                 DOUTB0     => readData10(0),
        WIDTHA1    => width10(1),           WIDTHB1    => width10(1),
        WIDTHA0    => width10(0),           WIDTHB0    => width10(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(10),          BLKB       => ren_vec(10),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block11 : RAM4K9 port map (
        ADDRA11    => writeAddr11(11),      ADDRB11    => readAddr11(11),
        ADDRA10    => writeAddr11(10),      ADDRB10    => readAddr11(10),
        ADDRA9     => writeAddr11(9),       ADDRB9     => readAddr11(9),
        ADDRA8     => writeAddr11(8),       ADDRB8     => readAddr11(8),
        ADDRA7     => writeAddr11(7),       ADDRB7     => readAddr11(7),
        ADDRA6     => writeAddr11(6),       ADDRB6     => readAddr11(6),
        ADDRA5     => writeAddr11(5),       ADDRB5     => readAddr11(5),
        ADDRA4     => writeAddr11(4),       ADDRB4     => readAddr11(4),
        ADDRA3     => writeAddr11(3),       ADDRB3     => readAddr11(3),
        ADDRA2     => writeAddr11(2),       ADDRB2     => readAddr11(2),
        ADDRA1     => writeAddr11(1),       ADDRB1     => readAddr11(1),
        ADDRA0     => writeAddr11(0),       ADDRB0     => readAddr11(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData11(7),       DINB7      => lo,
        DINA6      => writeData11(6),       DINB6      => lo,
        DINA5      => writeData11(5),       DINB5      => lo,
        DINA4      => writeData11(4),       DINB4      => lo,
        DINA3      => writeData11(3),       DINB3      => lo,
        DINA2      => writeData11(2),       DINB2      => lo,
        DINA1      => writeData11(1),       DINB1      => lo,
        DINA0      => writeData11(0),       DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData11(7),
        DOUTA6     => open,                 DOUTB6     => readData11(6),
        DOUTA5     => open,                 DOUTB5     => readData11(5),
        DOUTA4     => open,                 DOUTB4     => readData11(4),
        DOUTA3     => open,                 DOUTB3     => readData11(3),
        DOUTA2     => open,                 DOUTB2     => readData11(2),
        DOUTA1     => open,                 DOUTB1     => readData11(1),
        DOUTA0     => open,                 DOUTB0     => readData11(0),
        WIDTHA1    => width11(1),           WIDTHB1    => width11(1),
        WIDTHA0    => width11(0),           WIDTHB0    => width11(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(11),          BLKB       => ren_vec(11),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block12 : RAM4K9 port map (
        ADDRA11    => writeAddr12(11),      ADDRB11    => readAddr12(11),
        ADDRA10    => writeAddr12(10),      ADDRB10    => readAddr12(10),
        ADDRA9     => writeAddr12(9),       ADDRB9     => readAddr12(9),
        ADDRA8     => writeAddr12(8),       ADDRB8     => readAddr12(8),
        ADDRA7     => writeAddr12(7),       ADDRB7     => readAddr12(7),
        ADDRA6     => writeAddr12(6),       ADDRB6     => readAddr12(6),
        ADDRA5     => writeAddr12(5),       ADDRB5     => readAddr12(5),
        ADDRA4     => writeAddr12(4),       ADDRB4     => readAddr12(4),
        ADDRA3     => writeAddr12(3),       ADDRB3     => readAddr12(3),
        ADDRA2     => writeAddr12(2),       ADDRB2     => readAddr12(2),
        ADDRA1     => writeAddr12(1),       ADDRB1     => readAddr12(1),
        ADDRA0     => writeAddr12(0),       ADDRB0     => readAddr12(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData12(7),       DINB7      => lo,
        DINA6      => writeData12(6),       DINB6      => lo,
        DINA5      => writeData12(5),       DINB5      => lo,
        DINA4      => writeData12(4),       DINB4      => lo,
        DINA3      => writeData12(3),       DINB3      => lo,
        DINA2      => writeData12(2),       DINB2      => lo,
        DINA1      => writeData12(1),       DINB1      => lo,
        DINA0      => writeData12(0),       DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData12(7),
        DOUTA6     => open,                 DOUTB6     => readData12(6),
        DOUTA5     => open,                 DOUTB5     => readData12(5),
        DOUTA4     => open,                 DOUTB4     => readData12(4),
        DOUTA3     => open,                 DOUTB3     => readData12(3),
        DOUTA2     => open,                 DOUTB2     => readData12(2),
        DOUTA1     => open,                 DOUTB1     => readData12(1),
        DOUTA0     => open,                 DOUTB0     => readData12(0),
        WIDTHA1    => width12(1),           WIDTHB1    => width12(1),
        WIDTHA0    => width12(0),           WIDTHB0    => width12(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(12),          BLKB       => ren_vec(12),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block13 : RAM4K9 port map (
        ADDRA11    => writeAddr13(11),      ADDRB11    => readAddr13(11),
        ADDRA10    => writeAddr13(10),      ADDRB10    => readAddr13(10),
        ADDRA9     => writeAddr13(9),       ADDRB9     => readAddr13(9),
        ADDRA8     => writeAddr13(8),       ADDRB8     => readAddr13(8),
        ADDRA7     => writeAddr13(7),       ADDRB7     => readAddr13(7),
        ADDRA6     => writeAddr13(6),       ADDRB6     => readAddr13(6),
        ADDRA5     => writeAddr13(5),       ADDRB5     => readAddr13(5),
        ADDRA4     => writeAddr13(4),       ADDRB4     => readAddr13(4),
        ADDRA3     => writeAddr13(3),       ADDRB3     => readAddr13(3),
        ADDRA2     => writeAddr13(2),       ADDRB2     => readAddr13(2),
        ADDRA1     => writeAddr13(1),       ADDRB1     => readAddr13(1),
        ADDRA0     => writeAddr13(0),       ADDRB0     => readAddr13(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData13(7),       DINB7      => lo,
        DINA6      => writeData13(6),       DINB6      => lo,
        DINA5      => writeData13(5),       DINB5      => lo,
        DINA4      => writeData13(4),       DINB4      => lo,
        DINA3      => writeData13(3),       DINB3      => lo,
        DINA2      => writeData13(2),       DINB2      => lo,
        DINA1      => writeData13(1),       DINB1      => lo,
        DINA0      => writeData13(0),       DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData13(7),
        DOUTA6     => open,                 DOUTB6     => readData13(6),
        DOUTA5     => open,                 DOUTB5     => readData13(5),
        DOUTA4     => open,                 DOUTB4     => readData13(4),
        DOUTA3     => open,                 DOUTB3     => readData13(3),
        DOUTA2     => open,                 DOUTB2     => readData13(2),
        DOUTA1     => open,                 DOUTB1     => readData13(1),
        DOUTA0     => open,                 DOUTB0     => readData13(0),
        WIDTHA1    => width13(1),           WIDTHB1    => width13(1),
        WIDTHA0    => width13(0),           WIDTHB0    => width13(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(13),          BLKB       => ren_vec(13),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block14 : RAM4K9 port map (
        ADDRA11    => writeAddr14(11),      ADDRB11    => readAddr14(11),
        ADDRA10    => writeAddr14(10),      ADDRB10    => readAddr14(10),
        ADDRA9     => writeAddr14(9),       ADDRB9     => readAddr14(9),
        ADDRA8     => writeAddr14(8),       ADDRB8     => readAddr14(8),
        ADDRA7     => writeAddr14(7),       ADDRB7     => readAddr14(7),
        ADDRA6     => writeAddr14(6),       ADDRB6     => readAddr14(6),
        ADDRA5     => writeAddr14(5),       ADDRB5     => readAddr14(5),
        ADDRA4     => writeAddr14(4),       ADDRB4     => readAddr14(4),
        ADDRA3     => writeAddr14(3),       ADDRB3     => readAddr14(3),
        ADDRA2     => writeAddr14(2),       ADDRB2     => readAddr14(2),
        ADDRA1     => writeAddr14(1),       ADDRB1     => readAddr14(1),
        ADDRA0     => writeAddr14(0),       ADDRB0     => readAddr14(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData14(7),       DINB7      => lo,
        DINA6      => writeData14(6),       DINB6      => lo,
        DINA5      => writeData14(5),       DINB5      => lo,
        DINA4      => writeData14(4),       DINB4      => lo,
        DINA3      => writeData14(3),       DINB3      => lo,
        DINA2      => writeData14(2),       DINB2      => lo,
        DINA1      => writeData14(1),       DINB1      => lo,
        DINA0      => writeData14(0),       DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData14(7),
        DOUTA6     => open,                 DOUTB6     => readData14(6),
        DOUTA5     => open,                 DOUTB5     => readData14(5),
        DOUTA4     => open,                 DOUTB4     => readData14(4),
        DOUTA3     => open,                 DOUTB3     => readData14(3),
        DOUTA2     => open,                 DOUTB2     => readData14(2),
        DOUTA1     => open,                 DOUTB1     => readData14(1),
        DOUTA0     => open,                 DOUTB0     => readData14(0),
        WIDTHA1    => width14(1),           WIDTHB1    => width14(1),
        WIDTHA0    => width14(0),           WIDTHB0    => width14(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(14),          BLKB       => ren_vec(14),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

    block15 : RAM4K9 port map (
        ADDRA11    => writeAddr15(11),      ADDRB11    => readAddr15(11),
        ADDRA10    => writeAddr15(10),      ADDRB10    => readAddr15(10),
        ADDRA9     => writeAddr15(9),       ADDRB9     => readAddr15(9),
        ADDRA8     => writeAddr15(8),       ADDRB8     => readAddr15(8),
        ADDRA7     => writeAddr15(7),       ADDRB7     => readAddr15(7),
        ADDRA6     => writeAddr15(6),       ADDRB6     => readAddr15(6),
        ADDRA5     => writeAddr15(5),       ADDRB5     => readAddr15(5),
        ADDRA4     => writeAddr15(4),       ADDRB4     => readAddr15(4),
        ADDRA3     => writeAddr15(3),       ADDRB3     => readAddr15(3),
        ADDRA2     => writeAddr15(2),       ADDRB2     => readAddr15(2),
        ADDRA1     => writeAddr15(1),       ADDRB1     => readAddr15(1),
        ADDRA0     => writeAddr15(0),       ADDRB0     => readAddr15(0),
        DINA8      => lo,                   DINB8      => lo,
        DINA7      => writeData15(7),       DINB7      => lo,
        DINA6      => writeData15(6),       DINB6      => lo,
        DINA5      => writeData15(5),       DINB5      => lo,
        DINA4      => writeData15(4),       DINB4      => lo,
        DINA3      => writeData15(3),       DINB3      => lo,
        DINA2      => writeData15(2),       DINB2      => lo,
        DINA1      => writeData15(1),       DINB1      => lo,
        DINA0      => writeData15(0),       DINB0      => lo,
        DOUTA8     => open,                 DOUTB8     => open,
        DOUTA7     => open,                 DOUTB7     => readData15(7),
        DOUTA6     => open,                 DOUTB6     => readData15(6),
        DOUTA5     => open,                 DOUTB5     => readData15(5),
        DOUTA4     => open,                 DOUTB4     => readData15(4),
        DOUTA3     => open,                 DOUTB3     => readData15(3),
        DOUTA2     => open,                 DOUTB2     => readData15(2),
        DOUTA1     => open,                 DOUTB1     => readData15(1),
        DOUTA0     => open,                 DOUTB0     => readData15(0),
        WIDTHA1    => width15(1),           WIDTHB1    => width15(1),
        WIDTHA0    => width15(0),           WIDTHB0    => width15(0),
        PIPEA      => lo,                   PIPEB      => lo,
        WMODEA     => lo,                   WMODEB     => lo,
        BLKA       => wen_vec(15),          BLKB       => ren_vec(15),
        WENA       => lo,                   WENB       => hi,
        CLKA       => clk,                  CLKB       => clk,
        RESET      => resetn
    );

END RTL;
