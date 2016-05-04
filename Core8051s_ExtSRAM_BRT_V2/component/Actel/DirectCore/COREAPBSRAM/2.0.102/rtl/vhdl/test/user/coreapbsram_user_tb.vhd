-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  User Testbench for CoreApbSram, instantiates 1 core
--
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

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.std_logic_unsigned.all;
  USE ieee.numeric_std.all;

LIBRARY work;
  USE work.coreapbsram_pkg.all;


ENTITY coreapbsram_user_tb IS
  GENERIC (
    FAMILY                  : INTEGER := 17;
    APB_DWIDTH              : INTEGER := 32;
    NUM_LOCATIONS_DWIDTH32  : INTEGER := 8192;
    NUM_LOCATIONS_DWIDTH24  : INTEGER := 8192;
    NUM_LOCATIONS_DWIDTH16  : INTEGER := 16384;
    NUM_LOCATIONS_DWIDTH08  : INTEGER := 32768;
    -- ADDR_SCHEME
    -- 0 = word aligned
    -- 1 = sequential
    ADDR_SCHEME             : INTEGER := 0;
    APB_AWIDTH              : INTEGER := 17
   );
END coreapbsram_user_tb;

ARCHITECTURE test OF coreapbsram_user_tb IS

-- component declaration for DUT
COMPONENT COREAPBSRAM IS
   GENERIC (
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
   PORT (
      --APB IO
      --inputs
      PCLK                 : IN STD_LOGIC;
      PRESETN              : IN STD_LOGIC;
      PSEL                 : IN STD_LOGIC;
      PENABLE              : IN STD_LOGIC;
      PWRITE               : IN STD_LOGIC;
      PADDR                : IN STD_LOGIC_VECTOR(APB_AWIDTH-1 DOWNTO 0);
      PWDATA               : IN STD_LOGIC_VECTOR(APB_DWIDTH-1 DOWNTO 0);
      --outputs
      PRDATA               : OUT STD_LOGIC_VECTOR(APB_DWIDTH-1 DOWNTO 0);
      PREADY               : OUT STD_LOGIC;
      PSLVERR              : OUT STD_LOGIC
   );
END COMPONENT;

-- FUNCTIONS
FUNCTION locations_by_dwidth (
    APB_DWIDTH             : integer;
    NUM_LOCATIONS_DWIDTH32 : integer;
    NUM_LOCATIONS_DWIDTH24 : integer;
    NUM_LOCATIONS_DWIDTH16 : integer;
    NUM_LOCATIONS_DWIDTH08 : integer
)
RETURN INTEGER IS
BEGIN
    IF (APB_DWIDTH = 32) THEN
        RETURN NUM_LOCATIONS_DWIDTH32;
    ELSIF (APB_DWIDTH = 24) THEN
        RETURN NUM_LOCATIONS_DWIDTH24;
    ELSIF (APB_DWIDTH = 16) THEN
        RETURN NUM_LOCATIONS_DWIDTH16;
    ELSE
        RETURN NUM_LOCATIONS_DWIDTH08;
    END IF;
END FUNCTION locations_by_dwidth;


FUNCTION address_spacing (
    ADDR_SCHEME : integer
)
RETURN INTEGER IS
BEGIN
    IF (ADDR_SCHEME = 0) THEN
        RETURN 4;
    ELSE
        RETURN 1;
    END IF;
END FUNCTION address_spacing;


-- CONSTANT DECLARATIONS
CONSTANT SYS_CLK_CYCLE      : INTEGER :=  20  ;
CONSTANT NUM_LOCATIONS      : INTEGER := locations_by_dwidth(APB_DWIDTH, NUM_LOCATIONS_DWIDTH32, NUM_LOCATIONS_DWIDTH24, NUM_LOCATIONS_DWIDTH16, NUM_LOCATIONS_DWIDTH08);
CONSTANT ADDR_SPACING       : INTEGER := address_spacing(ADDR_SCHEME);

-- Printing constants
CONSTANT dash_str               :   string(1 to 77) :=
"-----------------------------------------------------------------------------";
CONSTANT uline_str              :   string(1 to 77) :=
"_____________________________________________________________________________";
CONSTANT pound_str              :   string(1 to 77) :=
"#############################################################################";
CONSTANT space77_str            :   string(1 to 77) :=
"                                                                             ";
CONSTANT copyright_str          :   string(1 to 77) :=
"(c) Copyright 2008 Actel Corporation. All rights reserved.                   ";
CONSTANT tb_name_str            :   string(1 to 77) :=
"Testbench for: CoreApbSram                                                   ";
CONSTANT tb_ver_str             :   string(1 to 77) :=
"Version: 1.0 12Nov08                                                         ";

TYPE STR_ARRAY1 is ARRAY (integer range 0 to 11) of string (1 to 77);

-- initialization of testbench string
CONSTANT init_str_mem       :STR_ARRAY1         := (
space77_str,space77_str,uline_str,space77_str,copyright_str,space77_str,
tb_name_str,tb_ver_str,uline_str,space77_str,space77_str,space77_str
);

-- Run simulation for given number of clock cycles
PROCEDURE cyc(
    CONSTANT    c:          IN  INTEGER RANGE 0 TO 65536) IS
BEGIN
    cloop: for i in 1 to c loop
        wait for SYS_CLK_CYCLE * 1 ns ;
    end loop cloop;
END cyc;

-- DUT SIGNAL DECLARATIONS
SIGNAL PCLK         : STD_LOGIC                                ;
SIGNAL PRESETN      : STD_LOGIC                                ;
SIGNAL PSEL         : STD_LOGIC                                ;
SIGNAL PENABLE      : STD_LOGIC                                ;
SIGNAL PWRITE       : STD_LOGIC                                ;
SIGNAL PADDR        : STD_LOGIC_VECTOR(APB_AWIDTH-1 DOWNTO 0)  ;
SIGNAL PWDATA       : STD_LOGIC_VECTOR(APB_DWIDTH-1 DOWNTO 0)  ;
SIGNAL PRDATA       : STD_LOGIC_VECTOR(APB_DWIDTH-1 DOWNTO 0)  ;
SIGNAL PREADY       : STD_LOGIC                                ;
SIGNAL PSLVERR      : STD_LOGIC                                ;

-- TESTBENCH SIGNALS
SIGNAL simerrors    : INTEGER;
SIGNAL stopsim      : BOOLEAN;
SIGNAL poll         : STD_LOGIC;

SIGNAL writeData    : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL readData     : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

  -- generate the system clock
  PCLK_proc: process
  begin
      if (stopsim) then
          wait;   -- end simulation
      else
          PCLK <= '0';
          wait for ((SYS_CLK_CYCLE * 1 ns)/2);
          PCLK <= '1';
          wait for ((SYS_CLK_CYCLE * 1 ns)/2);
      end if;
  end process;

  -- Instantiate DUT (CoreApbSram)
  DUT : COREAPBSRAM
  GENERIC MAP (
    FAMILY                 => FAMILY,
    APB_DWIDTH             => APB_DWIDTH,
    NUM_LOCATIONS_DWIDTH32 => NUM_LOCATIONS_DWIDTH32,
    NUM_LOCATIONS_DWIDTH24 => NUM_LOCATIONS_DWIDTH24,
    NUM_LOCATIONS_DWIDTH16 => NUM_LOCATIONS_DWIDTH16,
    NUM_LOCATIONS_DWIDTH08 => NUM_LOCATIONS_DWIDTH08,
    ADDR_SCHEME            => ADDR_SCHEME
  )
  PORT MAP (
    PCLK          => PCLK        ,
    PRESETN       => PRESETN     ,
    PSEL          => PSEL        ,
    PENABLE       => PENABLE     ,
    PWRITE        => PWRITE      ,
    PADDR         => PADDR       ,
    PWDATA        => PWDATA      ,
    PRDATA        => PRDATA      ,
    PREADY        => PREADY      ,
    PSLVERR       => PSLVERR
  );

  test: PROCESS
    VARIABLE i                  :   INTEGER;
    VARIABLE j                  :   INTEGER;
    VARIABLE simerrorsv         :   NATURAL range 0 to 2047;
  BEGIN
    i := 0;
    j := 0;

    simerrors <= simerrorsv;
    poll <= '0';

    -- print out copyright info, testbench version, name of testbench, etc.
    WHILE (i < 12) LOOP
      printf( init_str_mem(i));
      i := i + 1;
    END LOOP;

    -- initialize signals
    PRESETN <= '0';
    PENABLE <= '0';
    PSEL <= '0';
    PWRITE <= '0';
    PADDR <= (OTHERS => '0');
    PWDATA <= (OTHERS => '0');

    -- sync to pclk rising edge
    WAIT UNTIL (PCLK'EVENT AND PCLK = '1');

    wait for SYS_CLK_CYCLE * 20 ns ;
    PRESETN <= '1';

    printf(dash_str);
    printf("Testing in %0d bit mode", fmt(APB_DWIDTH));

    -- APB TESTS
    printf(dash_str);
    printf("APB TESTS");
    printf(dash_str);

    -- Test memory access
    printf("  Writing to memory");
    i := 0;
    while i < ADDR_SPACING*NUM_LOCATIONS loop
      writeData <= std_logic_vector(to_unsigned(i, 32));
      if (APB_DWIDTH = 8) then
        apb_write8((std_logic_vector(to_unsigned(i, APB_AWIDTH))),writeData(APB_DWIDTH-1 downto 0),PCLK,PADDR(APB_AWIDTH-1 downto 0),PWDATA,PSEL,PWRITE,PENABLE);
      elsif (APB_DWIDTH = 16) then
        apb_write16((std_logic_vector(to_unsigned(i, APB_AWIDTH))),writeData(APB_DWIDTH-1 downto 0),PCLK,PADDR(APB_AWIDTH-1 downto 0),PWDATA,PSEL,PWRITE,PENABLE);
      elsif (APB_DWIDTH = 24) then
        apb_write24((std_logic_vector(to_unsigned(i, APB_AWIDTH))),writeData(APB_DWIDTH-1 downto 0),PCLK,PADDR(APB_AWIDTH-1 downto 0),PWDATA,PSEL,PWRITE,PENABLE);
      else
        apb_write32((std_logic_vector(to_unsigned(i, APB_AWIDTH))),writeData(APB_DWIDTH-1 downto 0),PCLK,PADDR(APB_AWIDTH-1 downto 0),PWDATA,PSEL,PWRITE,PENABLE);
      end if;
      i := i + ADDR_SPACING;
    end loop;

    printf("  Reading from memory");
    i := 0;
    while i < ADDR_SPACING*NUM_LOCATIONS loop
      readData <= std_logic_vector(to_unsigned(i, 32));
      if (APB_DWIDTH = 8) then
        apb_read8((std_logic_vector(to_unsigned(i, APB_AWIDTH))),readData(APB_DWIDTH-1 downto 0),PCLK,PADDR(APB_AWIDTH-1 downto 0),PRDATA,PSEL,PWRITE,PENABLE,simerrorsv);
      elsif (APB_DWIDTH = 16) then
        apb_read16((std_logic_vector(to_unsigned(i, APB_AWIDTH))),readData(APB_DWIDTH-1 downto 0),PCLK,PADDR(APB_AWIDTH-1 downto 0),PRDATA,PSEL,PWRITE,PENABLE,simerrorsv);
      elsif (APB_DWIDTH = 24) then
        apb_read24((std_logic_vector(to_unsigned(i, APB_AWIDTH))),readData(APB_DWIDTH-1 downto 0),PCLK,PADDR(APB_AWIDTH-1 downto 0),PRDATA,PSEL,PWRITE,PENABLE,simerrorsv);
      else
        apb_read32((std_logic_vector(to_unsigned(i, APB_AWIDTH))),readData(APB_DWIDTH-1 downto 0),PCLK,PADDR(APB_AWIDTH-1 downto 0),PRDATA,PSEL,PWRITE,PENABLE,simerrorsv);
      end if;
      i := i + ADDR_SPACING;
    end loop;


    WAIT FOR SYS_CLK_CYCLE * 50 ns;

    printf(dash_str);
    printf("  All tests complete with %0d errors", fmt(simerrorsv));

    stopsim <= true;
    wait;

  END PROCESS test;

END test;
