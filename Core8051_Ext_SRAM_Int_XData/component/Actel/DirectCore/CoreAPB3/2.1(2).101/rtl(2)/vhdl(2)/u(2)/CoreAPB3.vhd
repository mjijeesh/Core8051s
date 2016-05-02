--  ============================================================================
--  CoreAPB3
--
--  AMBA APB Fabric
--
--  ============================================================================


library ieee;
use     ieee.std_logic_1164.all;


entity CoreAPB3 is
  generic(
    ApbSlot0Enable   : integer := 1;
    ApbSlot1Enable   : integer := 1;
    ApbSlot2Enable   : integer := 1;
    ApbSlot3Enable   : integer := 1;
    ApbSlot4Enable   : integer := 1;
    ApbSlot5Enable   : integer := 1;
    ApbSlot6Enable   : integer := 1;
    ApbSlot7Enable   : integer := 1;
    ApbSlot8Enable   : integer := 1;
    ApbSlot9Enable   : integer := 1;
    ApbSlot10Enable  : integer := 1;
    ApbSlot11Enable  : integer := 1;
    ApbSlot12Enable  : integer := 1;
    ApbSlot13Enable  : integer := 1;
    ApbSlot14Enable  : integer := 1;
    ApbSlot15Enable  : integer := 1;
    RangeSize        : integer := 256
    );

  port(
    -- APB3 mirrored master interface
    PADDR       : in  std_logic_vector(23 downto 0);
    PWRITE      : in  std_logic;
    PENABLE     : in  std_logic;
    PWDATA      : in  std_logic_vector(31 downto 0);
    PSEL        : in  std_logic;
    PRDATA      : out std_logic_vector(31 downto 0);
    PREADY      : out std_logic;
    PSLVERR     : out std_logic;

    -- APB Slave interfaces.
    -- Up to 16 slaves can be accommodated. All slaves share the same
    -- PADDRS, PWRITES, PENABLES and PWDATAS signals but each slave has
    -- individual PSELSx and PRDATASx signals.
    --
    PADDRS      : out std_logic_vector(23 downto 0);
    PWRITES     : out std_logic;
    PENABLES    : out std_logic;
    PWDATAS     : out std_logic_vector(31 downto 0);

    -- Select signals for APB peripherals
    PSELS0      : out std_logic;     -- Peripheral select 0
    PSELS1      : out std_logic;     -- Peripheral select 1
    PSELS2      : out std_logic;     -- Peripheral select 2
    PSELS3      : out std_logic;     -- Peripheral select 3
    PSELS4      : out std_logic;     -- Peripheral select 4
    PSELS5      : out std_logic;     -- Peripheral select 5
    PSELS6      : out std_logic;     -- Peripheral select 6
    PSELS7      : out std_logic;     -- Peripheral select 7
    PSELS8      : out std_logic;     -- Peripheral select 8
    PSELS9      : out std_logic;     -- Peripheral select 9
    PSELS10     : out std_logic;     -- Peripheral select 10
    PSELS11     : out std_logic;     -- Peripheral select 11
    PSELS12     : out std_logic;     -- Peripheral select 12
    PSELS13     : out std_logic;     -- Peripheral select 13
    PSELS14     : out std_logic;     -- Peripheral select 14
    PSELS15     : out std_logic;     -- Peripheral select 15

    -- Ready signals for APB peripherals
    PREADYS0      : in std_logic;
    PREADYS1      : in std_logic;
    PREADYS2      : in std_logic;
    PREADYS3      : in std_logic;
    PREADYS4      : in std_logic;
    PREADYS5      : in std_logic;
    PREADYS6      : in std_logic;
    PREADYS7      : in std_logic;
    PREADYS8      : in std_logic;
    PREADYS9      : in std_logic;
    PREADYS10     : in std_logic;
    PREADYS11     : in std_logic;
    PREADYS12     : in std_logic;
    PREADYS13     : in std_logic;
    PREADYS14     : in std_logic;
    PREADYS15     : in std_logic;

    -- Error signals for APB peripherals
    PSLVERRS0      : in std_logic;
    PSLVERRS1      : in std_logic;
    PSLVERRS2      : in std_logic;
    PSLVERRS3      : in std_logic;
    PSLVERRS4      : in std_logic;
    PSLVERRS5      : in std_logic;
    PSLVERRS6      : in std_logic;
    PSLVERRS7      : in std_logic;
    PSLVERRS8      : in std_logic;
    PSLVERRS9      : in std_logic;
    PSLVERRS10     : in std_logic;
    PSLVERRS11     : in std_logic;
    PSLVERRS12     : in std_logic;
    PSLVERRS13     : in std_logic;
    PSLVERRS14     : in std_logic;
    PSLVERRS15     : in std_logic;

    -- Read-data from APB peripherals
    PRDATAS0    : in  std_logic_vector(31 downto 0);
    PRDATAS1    : in  std_logic_vector(31 downto 0);
    PRDATAS2    : in  std_logic_vector(31 downto 0);
    PRDATAS3    : in  std_logic_vector(31 downto 0);
    PRDATAS4    : in  std_logic_vector(31 downto 0);
    PRDATAS5    : in  std_logic_vector(31 downto 0);
    PRDATAS6    : in  std_logic_vector(31 downto 0);
    PRDATAS7    : in  std_logic_vector(31 downto 0);
    PRDATAS8    : in  std_logic_vector(31 downto 0);
    PRDATAS9    : in  std_logic_vector(31 downto 0);
    PRDATAS10   : in  std_logic_vector(31 downto 0);
    PRDATAS11   : in  std_logic_vector(31 downto 0);
    PRDATAS12   : in  std_logic_vector(31 downto 0);
    PRDATAS13   : in  std_logic_vector(31 downto 0);
    PRDATAS14   : in  std_logic_vector(31 downto 0);
    PRDATAS15   : in  std_logic_vector(31 downto 0)
    );
end CoreAPB3;


architecture structural of CoreAPB3 is

--------------------------------------------------------------------------------
-- Component declarations
--------------------------------------------------------------------------------

  -- Multiplexer - peripherals to bridge
  component MuxPtoB3
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
  end component;

--------------------------------------------------------------------------------
-- Signal declarations
--------------------------------------------------------------------------------

  -- Internal peripheral read data signals
  signal iPRDATAS0    : std_logic_vector(31 downto 0);
  signal iPRDATAS1    : std_logic_vector(31 downto 0);
  signal iPRDATAS2    : std_logic_vector(31 downto 0);
  signal iPRDATAS3    : std_logic_vector(31 downto 0);
  signal iPRDATAS4    : std_logic_vector(31 downto 0);
  signal iPRDATAS5    : std_logic_vector(31 downto 0);
  signal iPRDATAS6    : std_logic_vector(31 downto 0);
  signal iPRDATAS7    : std_logic_vector(31 downto 0);
  signal iPRDATAS8    : std_logic_vector(31 downto 0);
  signal iPRDATAS9    : std_logic_vector(31 downto 0);
  signal iPRDATAS10   : std_logic_vector(31 downto 0);
  signal iPRDATAS11   : std_logic_vector(31 downto 0);
  signal iPRDATAS12   : std_logic_vector(31 downto 0);
  signal iPRDATAS13   : std_logic_vector(31 downto 0);
  signal iPRDATAS14   : std_logic_vector(31 downto 0);
  signal iPRDATAS15   : std_logic_vector(31 downto 0);

  signal iPREADYS0    : std_logic;
  signal iPREADYS1    : std_logic;
  signal iPREADYS2    : std_logic;
  signal iPREADYS3    : std_logic;
  signal iPREADYS4    : std_logic;
  signal iPREADYS5    : std_logic;
  signal iPREADYS6    : std_logic;
  signal iPREADYS7    : std_logic;
  signal iPREADYS8    : std_logic;
  signal iPREADYS9    : std_logic;
  signal iPREADYS10   : std_logic;
  signal iPREADYS11   : std_logic;
  signal iPREADYS12   : std_logic;
  signal iPREADYS13   : std_logic;
  signal iPREADYS14   : std_logic;
  signal iPREADYS15   : std_logic;

  signal iPSLVERRS0   : std_logic;
  signal iPSLVERRS1   : std_logic;
  signal iPSLVERRS2   : std_logic;
  signal iPSLVERRS3   : std_logic;
  signal iPSLVERRS4   : std_logic;
  signal iPSLVERRS5   : std_logic;
  signal iPSLVERRS6   : std_logic;
  signal iPSLVERRS7   : std_logic;
  signal iPSLVERRS8   : std_logic;
  signal iPSLVERRS9   : std_logic;
  signal iPSLVERRS10  : std_logic;
  signal iPSLVERRS11  : std_logic;
  signal iPSLVERRS12  : std_logic;
  signal iPSLVERRS13  : std_logic;
  signal iPSLVERRS14  : std_logic;
  signal iPSLVERRS15  : std_logic;

  signal PSELECT    : std_logic_vector(15 downto 0);
  signal slotSel    : std_logic_vector(3 downto 0);

--------------------------------------------------------------------------------
-- Signal declarations: Tie-offs
--------------------------------------------------------------------------------

  signal TieOffLo32 : std_logic_vector(31 downto 0);  -- 32-bit low
  signal TieOffLo   : std_logic;  -- 1-bit low
  signal TieOffHi   : std_logic;  -- 1-bit high


--------------------------------------------------------------------------------
-- Beginning of main code
--------------------------------------------------------------------------------

begin

--------------------------------------------------------------------------------
-- Tie-offs
--------------------------------------------------------------------------------

  TieOffLo32 <= (others => '0');
  TieOffLo <= '0';
  TieOffHi <= '1';

--------------------------------------------------------------------------------
-- Match slave interface to mirrored-master interface.
--------------------------------------------------------------------------------

  PADDRS <= PADDR;
  PWRITES <= PWRITE;
  PENABLES <= PENABLE;
  PWDATAS <= PWDATA;

  PSELS0  <= PSELECT(0);
  PSELS1  <= PSELECT(1);
  PSELS2  <= PSELECT(2);
  PSELS3  <= PSELECT(3);
  PSELS4  <= PSELECT(4);
  PSELS5  <= PSELECT(5);
  PSELS6  <= PSELECT(6);
  PSELS7  <= PSELECT(7);
  PSELS8  <= PSELECT(8);
  PSELS9  <= PSELECT(9);
  PSELS10 <= PSELECT(10);
  PSELS11 <= PSELECT(11);
  PSELS12 <= PSELECT(12);
  PSELS13 <= PSELECT(13);
  PSELS14 <= PSELECT(14);
  PSELS15 <= PSELECT(15);


--------------------------------------------------------------------------------
-- Configuration
--------------------------------------------------------------------------------
    g_range256: if (RangeSize = 256) generate
        slotSel <= PADDR(11 downto 8);
    end generate;
    g_range512: if (RangeSize = 512) generate
        slotSel <= PADDR(12 downto 9);
    end generate;
    g_range1024: if (RangeSize = 1024) generate
        slotSel <= PADDR(13 downto 10);
    end generate;
    g_range2048: if (RangeSize = 2048) generate
        slotSel <= PADDR(14 downto 11);
    end generate;
    g_range4096: if (RangeSize = 4096) generate
        slotSel <= PADDR(15 downto 12);
    end generate;
    g_range8192: if (RangeSize = 8192) generate
        slotSel <= PADDR(16 downto 13);
    end generate;
    g_range16384: if (RangeSize = 16384) generate
        slotSel <= PADDR(17 downto 14);
    end generate;
    g_range32768: if (RangeSize = 32768) generate
        slotSel <= PADDR(18 downto 15);
    end generate;
    g_range65536: if (RangeSize = 65536) generate
        slotSel <= PADDR(19 downto 16);
    end generate;
    g_range131072: if (RangeSize = 131072) generate
        slotSel <= PADDR(20 downto 17);
    end generate;
    g_range262144: if (RangeSize = 262144) generate
        slotSel <= PADDR(21 downto 18);
    end generate;
    g_range524288: if (RangeSize = 524288) generate
        slotSel <= PADDR(22 downto 19);
    end generate;
    g_range1048576: if (RangeSize = 1048576) generate
        slotSel <= PADDR(23 downto 20);
    end generate;

    -- APB select signals
    -- 16 selects
    process (PSEL, slotSel)
    begin
        if (PSEL = '1') then
            case slotSel(3 downto 0) is
                when "0000" => PSELECT <= "0000000000000001";
                when "0001" => PSELECT <= "0000000000000010";
                when "0010" => PSELECT <= "0000000000000100";
                when "0011" => PSELECT <= "0000000000001000";
                when "0100" => PSELECT <= "0000000000010000";
                when "0101" => PSELECT <= "0000000000100000";
                when "0110" => PSELECT <= "0000000001000000";
                when "0111" => PSELECT <= "0000000010000000";
                when "1000" => PSELECT <= "0000000100000000";
                when "1001" => PSELECT <= "0000001000000000";
                when "1010" => PSELECT <= "0000010000000000";
                when "1011" => PSELECT <= "0000100000000000";
                when "1100" => PSELECT <= "0001000000000000";
                when "1101" => PSELECT <= "0010000000000000";
                when "1110" => PSELECT <= "0100000000000000";
                when "1111" => PSELECT <= "1000000000000000";
                when others => PSELECT <= "0000000000000000";
            end case;
        else
            PSELECT <= "0000000000000000";
        end if;
    end process;

  -- Tie off unused APB slave data paths

  ------- APB slot 0 configuration -------
  S0_1: if (ApbSlot0Enable = 1) generate
    begin
      iPRDATAS0 <= PRDATAS0;
      iPREADYS0 <= PREADYS0;
      iPSLVERRS0 <= PSLVERRS0;
    end generate S0_1;

  S0_0: if (ApbSlot0Enable = 0) generate
    begin
      iPRDATAS0 <= TieOffLo32;
      iPREADYS0 <= TieOffHi;
      iPSLVERRS0 <= TieOffLo;
    end generate S0_0;

  ------- APB slot 1 configuration -------
  S1_1: if (ApbSlot1Enable = 1) generate
    begin
      iPRDATAS1 <= PRDATAS1;
      iPREADYS1 <= PREADYS1;
      iPSLVERRS1 <= PSLVERRS1;
    end generate S1_1;

  S1_0: if (ApbSlot1Enable = 0) generate
    begin
      iPRDATAS1 <= TieOffLo32;
      iPREADYS1 <= TieOffHi;
      iPSLVERRS1 <= TieOffLo;
    end generate S1_0;

  ------- APB slot 2 configuration -------
  S2_1: if (ApbSlot2Enable = 1) generate
    begin
      iPRDATAS2 <= PRDATAS2;
      iPREADYS2 <= PREADYS2;
      iPSLVERRS2 <= PSLVERRS2;
    end generate S2_1;

  S2_0: if (ApbSlot2Enable = 0) generate
    begin
      iPRDATAS2 <= TieOffLo32;
      iPREADYS2 <= TieOffHi;
      iPSLVERRS2 <= TieOffLo;
    end generate S2_0;

  ------- APB slot 3 configuration -------
  S3_1: if (ApbSlot3Enable = 1) generate
    begin
      iPRDATAS3 <= PRDATAS3;
      iPREADYS3 <= PREADYS3;
      iPSLVERRS3 <= PSLVERRS3;
    end generate S3_1;

  S3_0: if (ApbSlot3Enable = 0) generate
    begin
      iPRDATAS3 <= TieOffLo32;
      iPREADYS3 <= TieOffHi;
      iPSLVERRS3 <= TieOffLo;
    end generate S3_0;

  ------- APB slot 4 configuration -------
  S4_1: if (ApbSlot4Enable = 1) generate
    begin
      iPRDATAS4 <= PRDATAS4;
      iPREADYS4 <= PREADYS4;
      iPSLVERRS4 <= PSLVERRS4;
    end generate S4_1;

  S4_0: if (ApbSlot4Enable = 0) generate
    begin
      iPRDATAS4 <= TieOffLo32;
      iPREADYS4 <= TieOffHi;
      iPSLVERRS4 <= TieOffLo;
    end generate S4_0;

  ------- APB slot 5 configuration -------
  S5_1: if (ApbSlot5Enable = 1) generate
    begin
      iPRDATAS5 <= PRDATAS5;
      iPREADYS5 <= PREADYS5;
      iPSLVERRS5 <= PSLVERRS5;
    end generate S5_1;

  S5_0: if (ApbSlot5Enable = 0) generate
    begin
      iPRDATAS5 <= TieOffLo32;
      iPREADYS5 <= TieOffHi;
      iPSLVERRS5 <= TieOffLo;
    end generate S5_0;

  ------- APB slot 6 configuration -------
  S6_1: if (ApbSlot6Enable = 1) generate
    begin
      iPRDATAS6 <= PRDATAS6;
      iPREADYS6 <= PREADYS6;
      iPSLVERRS6 <= PSLVERRS6;
    end generate S6_1;

  S6_0: if (ApbSlot6Enable = 0) generate
    begin
      iPRDATAS6 <= TieOffLo32;
      iPREADYS6 <= TieOffHi;
      iPSLVERRS6 <= TieOffLo;
    end generate S6_0;

  ------- APB slot 7 configuration -------
  S7_1: if (ApbSlot7Enable = 1) generate
    begin
      iPRDATAS7 <= PRDATAS7;
      iPREADYS7 <= PREADYS7;
      iPSLVERRS7 <= PSLVERRS7;
    end generate S7_1;

  S7_0: if (ApbSlot7Enable = 0) generate
    begin
      iPRDATAS7 <= TieOffLo32;
      iPREADYS7 <= TieOffHi;
      iPSLVERRS7 <= TieOffLo;
    end generate S7_0;

  ------- APB slot 8 configuration -------
  S8_1: if (ApbSlot8Enable = 1) generate
    begin
      iPRDATAS8 <= PRDATAS8;
      iPREADYS8 <= PREADYS8;
      iPSLVERRS8 <= PSLVERRS8;
    end generate S8_1;

  S8_0: if (ApbSlot8Enable = 0) generate
    begin
      iPRDATAS8 <= TieOffLo32;
      iPREADYS8 <= TieOffHi;
      iPSLVERRS8 <= TieOffLo;
    end generate S8_0;

  ------- APB slot 9 configuration -------
  S9_1: if (ApbSlot9Enable = 1) generate
    begin
      iPRDATAS9 <= PRDATAS9;
      iPREADYS9 <= PREADYS9;
      iPSLVERRS9 <= PSLVERRS9;
    end generate S9_1;

  S9_0: if (ApbSlot9Enable = 0) generate
    begin
      iPRDATAS9 <= TieOffLo32;
      iPREADYS9 <= TieOffHi;
      iPSLVERRS9 <= TieOffLo;
    end generate S9_0;

  ------- APB slot 10 configuration -------
  S10_1: if (ApbSlot10Enable = 1) generate
    begin
      iPRDATAS10 <= PRDATAS10;
      iPREADYS10 <= PREADYS10;
      iPSLVERRS10 <= PSLVERRS10;
    end generate S10_1;

  S10_0: if (ApbSlot10Enable = 0) generate
    begin
      iPRDATAS10 <= TieOffLo32;
      iPREADYS10 <= TieOffHi;
      iPSLVERRS10 <= TieOffLo;
    end generate S10_0;

  ------- APB slot 11 configuration -------
  S11_1: if (ApbSlot11Enable = 1) generate
    begin
      iPRDATAS11 <= PRDATAS11;
      iPREADYS11 <= PREADYS11;
      iPSLVERRS11 <= PSLVERRS11;
    end generate S11_1;

  S11_0: if (ApbSlot11Enable = 0) generate
    begin
      iPRDATAS11 <= TieOffLo32;
      iPREADYS11 <= TieOffHi;
      iPSLVERRS11 <= TieOffLo;
    end generate S11_0;

  ------- APB slot 12 configuration -------
  S12_1: if (ApbSlot12Enable = 1) generate
    begin
      iPRDATAS12 <= PRDATAS12;
      iPREADYS12 <= PREADYS12;
      iPSLVERRS12 <= PSLVERRS0;
    end generate S12_1;

  S12_0: if (ApbSlot12Enable = 0) generate
    begin
      iPRDATAS12 <= TieOffLo32;
      iPREADYS12 <= TieOffHi;
      iPSLVERRS12 <= TieOffLo;
    end generate S12_0;

  ------- APB slot 13 configuration -------
  S13_1: if (ApbSlot13Enable = 1) generate
    begin
      iPRDATAS13 <= PRDATAS13;
      iPREADYS13 <= PREADYS13;
      iPSLVERRS13 <= PSLVERRS0;
    end generate S13_1;

  S13_0: if (ApbSlot13Enable = 0) generate
    begin
      iPRDATAS13 <= TieOffLo32;
      iPREADYS13 <= TieOffHi;
      iPSLVERRS13 <= TieOffLo;
    end generate S13_0;

  ------- APB slot 14 configuration -------
  S14_1: if (ApbSlot14Enable = 1) generate
    begin
      iPRDATAS14 <= PRDATAS14;
      iPREADYS14 <= PREADYS14;
      iPSLVERRS14 <= PSLVERRS0;
    end generate S14_1;

  S14_0: if (ApbSlot14Enable = 0) generate
    begin
      iPRDATAS14 <= TieOffLo32;
      iPREADYS14 <= TieOffHi;
      iPSLVERRS14 <= TieOffLo;
    end generate S14_0;

  ------- APB slot 15 configuration -------
  S15_1: if (ApbSlot15Enable = 1) generate
    begin
      iPRDATAS15 <= PRDATAS15;
      iPREADYS15 <= PREADYS15;
      iPSLVERRS15 <= PSLVERRS15;
    end generate S15_1;

  S15_0: if (ApbSlot15Enable = 0) generate
    begin
      iPRDATAS15 <= TieOffLo32;
      iPREADYS15 <= TieOffHi;
      iPSLVERRS15 <= TieOffLo;
    end generate S15_0;


--------------------------------------------------------------------------------
-- APB infrastructure
--------------------------------------------------------------------------------

-- Peripheral read-data multiplexor
  uMuxPtoB3 : MuxPtoB3
    port map(
      PSELS0    => PSELECT(0),  -- Select lines from APB master
      PSELS1    => PSELECT(1),
      PSELS2    => PSELECT(2),
      PSELS3    => PSELECT(3),
      PSELS4    => PSELECT(4),
      PSELS5    => PSELECT(5),
      PSELS6    => PSELECT(6),
      PSELS7    => PSELECT(7),
      PSELS8    => PSELECT(8),
      PSELS9    => PSELECT(9),
      PSELS10   => PSELECT(10),
      PSELS11   => PSELECT(11),
      PSELS12   => PSELECT(12),
      PSELS13   => PSELECT(13),
      PSELS14   => PSELECT(14),
      PSELS15   => PSELECT(15),

      PRDATAS0  => iPRDATAS0,   -- APB Slave read-data
      PRDATAS1  => iPRDATAS1,
      PRDATAS2  => iPRDATAS2,
      PRDATAS3  => iPRDATAS3,
      PRDATAS4  => iPRDATAS4,
      PRDATAS5  => iPRDATAS5,
      PRDATAS6  => iPRDATAS6,
      PRDATAS7  => iPRDATAS7,
      PRDATAS8  => iPRDATAS8,
      PRDATAS9  => iPRDATAS9,
      PRDATAS10 => iPRDATAS10,
      PRDATAS11 => iPRDATAS11,
      PRDATAS12 => iPRDATAS12,
      PRDATAS13 => iPRDATAS13,
      PRDATAS14 => iPRDATAS14,
      PRDATAS15 => iPRDATAS15,

      PREADYS0  => iPREADYS0,   -- APB Slave ready
      PREADYS1  => iPREADYS1,
      PREADYS2  => iPREADYS2,
      PREADYS3  => iPREADYS3,
      PREADYS4  => iPREADYS4,
      PREADYS5  => iPREADYS5,
      PREADYS6  => iPREADYS6,
      PREADYS7  => iPREADYS7,
      PREADYS8  => iPREADYS8,
      PREADYS9  => iPREADYS9,
      PREADYS10 => iPREADYS10,
      PREADYS11 => iPREADYS11,
      PREADYS12 => iPREADYS12,
      PREADYS13 => iPREADYS13,
      PREADYS14 => iPREADYS14,
      PREADYS15 => iPREADYS15,

      PSLVERRS0  => iPSLVERRS0,   -- APB Slave error
      PSLVERRS1  => iPSLVERRS1,
      PSLVERRS2  => iPSLVERRS2,
      PSLVERRS3  => iPSLVERRS3,
      PSLVERRS4  => iPSLVERRS4,
      PSLVERRS5  => iPSLVERRS5,
      PSLVERRS6  => iPSLVERRS6,
      PSLVERRS7  => iPSLVERRS7,
      PSLVERRS8  => iPSLVERRS8,
      PSLVERRS9  => iPSLVERRS9,
      PSLVERRS10 => iPSLVERRS10,
      PSLVERRS11 => iPSLVERRS11,
      PSLVERRS12 => iPSLVERRS12,
      PSLVERRS13 => iPSLVERRS13,
      PSLVERRS14 => iPSLVERRS14,
      PSLVERRS15 => iPSLVERRS15,

      PRDATA    => PRDATA,      -- To APB master
      PREADY    => PREADY,
      PSLVERR   => PSLVERR
      );

end structural;


--================================= End ===================================--
