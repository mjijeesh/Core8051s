-------------------------------------------------------------------------------
-- (c) Copyright 2008 Actel Corporation
--
-- name:		coreapbnvm_user_tb.vhd
-- function:	User Testbench for CoreApbNvm, instantiates 1 core.
-- history:		9/01/08 - AS
--		        
--
-- Rev:			
--
-------------------------------------------------------------------------------

LIBRARY ieee;
  USE ieee.std_logic_1164.all;
  USE ieee.std_logic_unsigned.all;
  USE ieee.numeric_std.all;

LIBRARY work;
  USE work.coreapbnvm_pkg.all;

 
ENTITY coreapbnvm_user_tb IS
  GENERIC (
    -- FIXED
    FAMILY               : INTEGER := 17;
    APB_AWIDTH           : INTEGER := 8;
    APB_DWIDTH           : INTEGER := 8;
    NUM_INSTANCES        : INTEGER := 4;
    -- Init/Config parameters
    INIT_ENABLED         : INTEGER := 1;
    INIT_AWIDTH          : INTEGER := 16;
    INIT_BASE_ADDRESS_RST : INTEGER := 0;
    --INIT_WORD_COUNT_RST  : INTEGER := 2**INIT_AWIDTH-1;
    INIT_WORD_COUNT_RST  : INTEGER := 65535;
    INIT_SPARE_PAGE_RST  : INTEGER := 0;
    INIT_BASE_ADDRESS_0  : INTEGER := 256;
    INIT_WORD_COUNT_0    : INTEGER := 256;
    INIT_SPARE_PAGE_0    : INTEGER := 0;
    INIT_BASE_ADDRESS_1  : INTEGER := 512;
    INIT_WORD_COUNT_1    : INTEGER := 512;
    INIT_SPARE_PAGE_1    : INTEGER := 0;
    INIT_BASE_ADDRESS_2  : INTEGER := 1024;
    INIT_WORD_COUNT_2    : INTEGER := 1024;
    INIT_SPARE_PAGE_2    : INTEGER := 1;
    INIT_BASE_ADDRESS_3  : INTEGER := 2048;
    INIT_WORD_COUNT_3    : INTEGER := 2048;
    INIT_SPARE_PAGE_3    : INTEGER := 0
   );
END coreapbnvm_user_tb;

ARCHITECTURE translated OF coreapbnvm_user_tb IS

-- component declaration for DUT
COMPONENT COREAPBNVM IS
   GENERIC (
      FAMILY               : INTEGER := 17;
      APB_AWIDTH           : INTEGER := 8;
      APB_DWIDTH           : INTEGER := 8;
      NUM_INSTANCES        : INTEGER := 1;
      -- Init/Config parameters
      INIT_ENABLED         : INTEGER := 0;
      INIT_AWIDTH          : INTEGER := 11;
      INIT_BASE_ADDRESS_RST : INTEGER := 0;
      INIT_WORD_COUNT_RST  : INTEGER := 0;
      INIT_SPARE_PAGE_RST  : INTEGER := 0;
      INIT_BASE_ADDRESS_0  : INTEGER := 0;
      INIT_WORD_COUNT_0    : INTEGER := 0;
      INIT_SPARE_PAGE_0    : INTEGER := 0;
      INIT_BASE_ADDRESS_1  : INTEGER := 0;
      INIT_WORD_COUNT_1    : INTEGER := 0;
      INIT_SPARE_PAGE_1    : INTEGER := 0;
      INIT_BASE_ADDRESS_2  : INTEGER := 0;
      INIT_WORD_COUNT_2    : INTEGER := 0;
      INIT_SPARE_PAGE_2    : INTEGER := 0;
      INIT_BASE_ADDRESS_3  : INTEGER := 0;
      INIT_WORD_COUNT_3    : INTEGER := 0;
      INIT_SPARE_PAGE_3    : INTEGER := 0
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
      PSLVERR              : OUT STD_LOGIC;
      -- 14Aug08, AS added:
      -- INIT / CFG signals
      -- inputs
      INIT_BASE0           : IN STD_LOGIC;
      INIT_BASE1           : IN STD_LOGIC;
      INIT_BASE2           : IN STD_LOGIC;
      INIT_BASE3           : IN STD_LOGIC;
      -- outputs
      INIT_DONE            : OUT STD_LOGIC;
      INIT_DATA            : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      INIT_ADDR            : OUT STD_LOGIC_VECTOR(INIT_AWIDTH-1 DOWNTO 0);
      INIT_DATVAL          : OUT STD_LOGIC
   );
END COMPONENT;

-- CONSTANT DECLARATIONS
CONSTANT SYS_CLK_CYCLE      : INTEGER :=  20  ; 

-- REGISTER ADDRESSES
CONSTANT REG_ADDR1          : INTEGER :=  0   ;         -- HEX 00
CONSTANT REG_ADDR2          : INTEGER :=  4   ;         -- HEX 04
CONSTANT REG_ADDR3          : INTEGER :=  8   ;         -- HEX 08
CONSTANT REG_WDATA          : INTEGER :=  12  ;         -- HEX 0C
CONSTANT REG_CTL            : INTEGER :=  16  ;         -- HEX 10
CONSTANT REG_STA            : INTEGER :=  20  ;         -- HEX 14
CONSTANT REG_RDATA          : INTEGER :=  24  ;         -- HEX 18

CONSTANT NUM_WRITES         : INTEGER := 128 / (APB_DWIDTH / 8) - 1;

-- Printing constants
CONSTANT dash_str                 :   string(1 to 77)   :=
"-----------------------------------------------------------------------------";
CONSTANT uline_str              :   string(1 to 77) :=
"_____________________________________________________________________________";
CONSTANT pound_str              :   string(1 to 77) :=
"#############################################################################";
CONSTANT space77_str            :   string(1 to 77) :=
"                                                                             ";
CONSTANT copyright_str          :   string(1 to 77)   :=
"(c) Copyright 2008 Actel Corporation. All rights reserved.                   ";
CONSTANT tb_name_str            :   string(1 to 77) :=
"Testbench for: CoreApbNvm                                                    ";
CONSTANT tb_ver_str             :   string(1 to 77) :=
"Version: 1.0 20Aug08                                                         ";

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

SIGNAL INIT_BASE0   : STD_LOGIC                                ;
SIGNAL INIT_BASE1   : STD_LOGIC                                ;
SIGNAL INIT_BASE2   : STD_LOGIC                                ;
SIGNAL INIT_BASE3   : STD_LOGIC                                ;

SIGNAL INIT_DONE    : STD_LOGIC                                ;
SIGNAL INIT_DATA    : STD_LOGIC_VECTOR(8 DOWNTO 0)             ;
SIGNAL INIT_ADDR    : STD_LOGIC_VECTOR(INIT_AWIDTH-1 DOWNTO 0) ;
SIGNAL INIT_DATVAL  : STD_LOGIC                                ;

-- TESTBENCH SIGNALS
SIGNAL simerrors    :   INTEGER;
SIGNAL stopsim      :   BOOLEAN;
SIGNAL poll         : STD_LOGIC;

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

  -- Instantiate DUT (CoreApbNvm)
  COREAPBNVM_0 : COREAPBNVM
  GENERIC MAP (
    FAMILY                 => FAMILY,
    APB_AWIDTH             => APB_AWIDTH,
    APB_DWIDTH             => APB_DWIDTH,
    NUM_INSTANCES          => NUM_INSTANCES,
    INIT_ENABLED           => INIT_ENABLED,
    INIT_AWIDTH            => INIT_AWIDTH,
    INIT_BASE_ADDRESS_RST  => INIT_BASE_ADDRESS_RST,
    INIT_WORD_COUNT_RST    => INIT_WORD_COUNT_RST,
    INIT_SPARE_PAGE_RST    => INIT_SPARE_PAGE_RST,
    INIT_BASE_ADDRESS_0    => INIT_BASE_ADDRESS_0,
    INIT_WORD_COUNT_0      => INIT_WORD_COUNT_0,
    INIT_SPARE_PAGE_0      => INIT_SPARE_PAGE_0,
    INIT_BASE_ADDRESS_1    => INIT_BASE_ADDRESS_1,
    INIT_WORD_COUNT_1      => INIT_WORD_COUNT_1,
    INIT_SPARE_PAGE_1      => INIT_SPARE_PAGE_1,
    INIT_BASE_ADDRESS_2    => INIT_BASE_ADDRESS_2,
    INIT_WORD_COUNT_2      => INIT_WORD_COUNT_2,
    INIT_SPARE_PAGE_2      => INIT_SPARE_PAGE_2,
    INIT_BASE_ADDRESS_3    => INIT_BASE_ADDRESS_3,
    INIT_WORD_COUNT_3      => INIT_WORD_COUNT_3,
    INIT_SPARE_PAGE_3      => INIT_SPARE_PAGE_3
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
    PSLVERR       => PSLVERR     ,

    INIT_BASE0    => INIT_BASE0  ,
    INIT_BASE1    => INIT_BASE1  ,
    INIT_BASE2    => INIT_BASE2  ,
    INIT_BASE3    => INIT_BASE3  ,

    INIT_DONE     => INIT_DONE   ,
    INIT_DATA     => INIT_DATA   ,
    INIT_ADDR     => INIT_ADDR   ,
    INIT_DATVAL   => INIT_DATVAL
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
    INIT_BASE0 <= '0';
    INIT_BASE1 <= '0';
    INIT_BASE2 <= '0';
    INIT_BASE3 <= '0';
    
    -- sync to pclk rising edge
    WAIT UNTIL (PCLK'EVENT AND PCLK = '1');

    wait for SYS_CLK_CYCLE * 20 ns ;
    PRESETN <= '1';
    
    printf(dash_str);
    printf("Testing in %0d bit mode", fmt(APB_DWIDTH));
    
    -- INIT/CFG TESTS
    printf(dash_str);
    printf("INIT CONFIG TESTS");
    printf(dash_str);
    printf("  Beginning reset initialization.");
    printf("    BASE ADDRESS %0d", fmt(INIT_BASE_ADDRESS_RST));
    printf("    WORD COUNT: %0d", fmt(INIT_WORD_COUNT_RST));
    printf("    SPARE PAGE: %0d", fmt(INIT_SPARE_PAGE_RST));
    WAIT UNTIL (INIT_DONE'EVENT AND INIT_DONE = '1');
    printf("  Done reset initialization.");
    WAIT FOR SYS_CLK_CYCLE * 200 ns;

    printf("  Beginning custom initialization 0");
    printf("    BASE ADDRESS: %0d", fmt(INIT_BASE_ADDRESS_0));
    printf("    WORD COUNT: %0d", fmt(INIT_WORD_COUNT_0));
    printf("    SPARE PAGE: %0d", fmt(INIT_SPARE_PAGE_0));
    INIT_BASE0 <= '1';
    WAIT FOR SYS_CLK_CYCLE * 4 ns;
    INIT_BASE0 <= '0';
    WAIT UNTIL (INIT_DONE'EVENT AND INIT_DONE = '1');
    printf("  Done custom initialization.");
    WAIT FOR SYS_CLK_CYCLE * 200 ns;    
    
    printf("  Beginning custom initialization 1");
    printf("    BASE ADDRESS: %0d", fmt(INIT_BASE_ADDRESS_1));
    printf("    WORD COUNT: %0d", fmt(INIT_WORD_COUNT_1));
    printf("    SPARE PAGE: %0d", fmt(INIT_SPARE_PAGE_1));
    INIT_BASE1 <= '1';
    WAIT FOR SYS_CLK_CYCLE * 4 ns;
    INIT_BASE1 <= '0';
    WAIT UNTIL (INIT_DONE'EVENT AND INIT_DONE = '1');
    printf("  Done custom initialization.");
    WAIT FOR SYS_CLK_CYCLE * 200 ns;
    
    printf("  Beginning custom initialization 2");
    printf("    BASE ADDRESS: %0d", fmt(INIT_BASE_ADDRESS_2));
    printf("    WORD COUNT: %0d", fmt(INIT_WORD_COUNT_2));
    printf("    SPARE PAGE: %0d", fmt(INIT_SPARE_PAGE_2));
    INIT_BASE2 <= '1';
    WAIT FOR SYS_CLK_CYCLE * 4 ns;
    INIT_BASE2 <= '0';
    WAIT UNTIL (INIT_DONE'EVENT AND INIT_DONE = '1');
    printf("  Done custom initialization.");
    WAIT FOR SYS_CLK_CYCLE * 200 ns;
    
    printf("  Beginning custom initialization 3");
    printf("    BASE ADDRESS: %0d", fmt(INIT_BASE_ADDRESS_3));
    printf("    WORD COUNT: %0d", fmt(INIT_WORD_COUNT_3));
    printf("    SPARE PAGE: %0d", fmt(INIT_SPARE_PAGE_3));
    INIT_BASE3 <= '1';
    WAIT FOR SYS_CLK_CYCLE * 4 ns;
    INIT_BASE3 <= '0';
    WAIT UNTIL (INIT_DONE'EVENT AND INIT_DONE = '1');
    printf("  Done custom initialization.");
    WAIT FOR SYS_CLK_CYCLE * 200 ns;
    
    -- APB TESTS
    printf(dash_str);
    printf("APB TESTS");
    printf(dash_str);
    
    -- APB register tests
    printf("  Writing APB registers");
    i := 0;
    while i <= 12 loop
      apb_write((std_logic_vector(to_unsigned(i, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      i := i + 4;
    end loop;
    printf("  Reading APB registers");
    -- control register should be clear
    -- apb_read((std_logic_vector(to_unsigned(REG_CTL, 8))),X"00",PCLK,  PADDR(7 downto 0),  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    -- all other register should retain their values
--    i := 0;
--    while i <= 12 loop
--      apb_read((std_logic_vector(to_unsigned(i, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR(7 downto 0),  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
--      i := i + 4;
--    end loop;
    
    -- auto-increment toggle
    printf("  Checking auto-increment bit");
    apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"80",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"00",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"80",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    
    -- -------------------------------------
    -- write to NVM, one page, then program
    printf("  Writing one page to NVM");
    i := 0;
    while i < NUM_WRITES loop
      apb_write((std_logic_vector(to_unsigned(REG_WDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"04",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      if (i < NUM_WRITES - 1) then
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      else
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"90",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      end if;
      i := i + 1;
    end loop;
    -- program and poll busy for 0
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"10",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    
    -- --------------------------------------
    -- read back from NVM, confirm read data
    printf("  Reading one page from NVM");
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    i := 0;
    while i < NUM_WRITES loop
      apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"08",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      if (i < NUM_WRITES - 1) then
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      else
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"90",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      end if;
      apb_read((std_logic_vector(to_unsigned(REG_RDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      i := i + 1;
    end loop;
    
    -- --------------------------------------
    -- try to cross page boundary: should not
    -- be able to do so!
    printf("  Crossing page boundary test");
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"7c",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    i := 0;
    while i < 5 loop
    apb_write((std_logic_vector(to_unsigned(REG_WDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"04",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    if (i < 2) then
      apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    else
      apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"90",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    end if;
    i := i + 1;
    end loop;
    
    -- --------------------------------------
    -- write to NVMW 3, one page, then program
    printf("  Writing one page to NVM 3");
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"18",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    i := 0;
    while i < NUM_WRITES loop
      apb_write((std_logic_vector(to_unsigned(REG_WDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"04",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      if (i < NUM_WRITES - 1) then
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      else
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"90",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      end if;
      i := i + 1;
    end loop;
    -- program and poll busy for 0
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"10",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    
    
    -- --------------------------------------
    -- read back from NVM 3, confirm read data
    printf("  Reading one page from NVM 3");
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"18",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    i := 0;
    while i < NUM_WRITES loop
      apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"08",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      if (i < NUM_WRITES - 1) then
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      else
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"90",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      end if;
      apb_read((std_logic_vector(to_unsigned(REG_RDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      i := i + 1;
    end loop;
    
    WAIT FOR SYS_CLK_CYCLE * 200 ns;
    
    -- --------------------------------------
    -- induce an error (cross page boundary
    -- without programming)
    printf("  Error test");
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    i := 0;
    while i < NUM_WRITES loop
      apb_write((std_logic_vector(to_unsigned(REG_WDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"04",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      if (i < NUM_WRITES - 1) then
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      else
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"90",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      end if;
      i := i + 1;
    end loop;
    -- Do not program!
    -- Force cross page boundary
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"80",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);

    i := 0;
    while i < NUM_WRITES loop
      apb_write((std_logic_vector(to_unsigned(REG_WDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"04",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      -- don't read status
      i := i + 1;
    end loop;
    
    -- check for error bit AND error status "11"
    apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"B3",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    -- clear error bit
    apb_write((std_logic_vector(to_unsigned(REG_STA, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    -- check cleared error bit AND error status "11"
    apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"93",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    -- reset address
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    -- program page
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"10",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    -- poll busy bit for 0 (not busy)
    apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    -- check cleared error bit AND status "00"
    apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
    
    -- Spare page write (sector 1)
    -- Note that sector 0 spage page is
    -- inaccessbile to the user
    printf("  Spare Page test");
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"10",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"04",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);

    -- write
    i := 0;
    while i < NUM_WRITES loop
      apb_write((std_logic_vector(to_unsigned(REG_WDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"04",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      if (i < NUM_WRITES - 1) then
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      else
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"90",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      end if;
      i := i + 1;
    end loop;
    -- program and poll busy for 0
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"10",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);

    -- read
    apb_write((std_logic_vector(to_unsigned(REG_ADDR1, 8))),X"00",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR2, 8))),X"10",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_ADDR3, 8))),X"04",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"01",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
    i := 0;
    while i < NUM_WRITES loop
      apb_write((std_logic_vector(to_unsigned(REG_CTL, 8))),X"08",PCLK,  PADDR(7 downto 0),  PWDATA, PSEL,PWRITE,PENABLE);
      apb_read_poll((std_logic_vector(to_unsigned(REG_STA, 8))),2,'0', PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      if (i < NUM_WRITES - 1) then
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"80",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      else
        apb_read((std_logic_vector(to_unsigned(REG_STA, 8))),X"90",PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      end if;
      apb_read((std_logic_vector(to_unsigned(REG_RDATA, 8))),(std_logic_vector(to_unsigned(i, 8))),PCLK,  PADDR,  PRDATA, PSEL,PWRITE,PENABLE,simerrorsv);
      i := i + 1;
    end loop;

    WAIT FOR SYS_CLK_CYCLE * 200 ns;
    
    printf(dash_str);
    printf("  All tests complete with %0d errors", fmt(simerrorsv));
    
    stopsim <= true;
    wait;
    
    
    
    
  END PROCESS test;
  
  
END translated;


--    apb_read(REG_STA, 8'hA3);                         // check for error bit AND error status "11"
--    apb_write(REG_STA, 8'h00);                        // clear error bit
--    apb_read(REG_STA, 8'h83);                         // check cleared error bit AND error status "11"
--    apb_write(REG_ADDR1, 8'h00);                      // reset address 1
--    apb_write(REG_ADDR2, 8'h00);                      // reset address 2
--    apb_write(REG_ADDR3, 8'h00);                      // reset address 3
--    apb_write(REG_CTL,8'h01);                         // load address
--    apb_write(REG_CTL, 8'h10);                        // program page
--    apb_read_poll(REG_STA,2,1'b0);                    // pol busy bit for 0
--    apb_read(REG_STA, 8'h80);                         // check cleared error bit AND status "00"
--        
--    #(HALFPERIOD * 200);
--    $display("%0s", dash_str);
--    $display("  All tests complete with %d errors", simerrors);
