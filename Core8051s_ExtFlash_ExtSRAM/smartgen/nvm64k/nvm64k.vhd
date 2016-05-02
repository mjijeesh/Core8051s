-- Version: 9.0 9.0.0.15

library ieee;
use ieee.std_logic_1164.all;
library fusion;
use fusion.all;

entity nvm64k is

    port( USER_CLK            : in    std_logic;
          USER_RESET          : in    std_logic;
          USER_ADD            : in    std_logic_vector(17 downto 0);
          USER_AUX_BLOCK      : in    std_logic;
          USER_DATA           : in    std_logic_vector(31 downto 0);
          USER_DISCARD_PAGE   : in    std_logic;
          USER_ERASE_PAGE     : in    std_logic;
          USER_OVERWRITE_PAGE : in    std_logic;
          USER_OVERWRITE_PROT : in    std_logic;
          USER_PAGELOSS_PROT  : in    std_logic;
          USER_PROGRAM        : in    std_logic;
          USER_READ           : in    std_logic;
          USER_READ_NEXT      : in    std_logic;
          USER_LOCK           : in    std_logic;
          USER_SPARE_PAGE     : in    std_logic;
          USER_UNPROT_PAGE    : in    std_logic;
          USER_WIDTH          : in    std_logic_vector(1 downto 0);
          USER_WRITE          : in    std_logic;
          USER_DOUT           : out   std_logic_vector(31 downto 0);
          USER_PAGE_STATUS    : in    std_logic;
          USER_NVM_STATUS     : out   std_logic_vector(1 downto 0);
          USER_NVM_BUSY       : out   std_logic
        );

end nvm64k;

architecture DEF_ARCH of nvm64k is 

  component NVM
    generic (MEMORYFILE:string := ""; ACT_PROGFILE:string := ""; 
        ACT_CALIBRATIONDATA:integer := 0);

    port( RD               : out   std_logic_vector(31 downto 0);
          BUSY             : out   std_logic;
          STATUS           : out   std_logic_vector(1 downto 0);
          ADDR             : in    std_logic_vector(17 downto 0) := (others => 'U');
          WD               : in    std_logic_vector(31 downto 0) := (others => 'U');
          DATAWIDTH        : in    std_logic_vector(1 downto 0) := (others => 'U');
          REN              : in    std_logic := 'U';
          WEN              : in    std_logic := 'U';
          PROGRAM          : in    std_logic := 'U';
          SPAREPAGE        : in    std_logic := 'U';
          AUXBLOCK         : in    std_logic := 'U';
          READNEXT         : in    std_logic := 'U';
          ERASEPAGE        : in    std_logic := 'U';
          UNPROTECTPAGE    : in    std_logic := 'U';
          DISCARDPAGE      : in    std_logic := 'U';
          OVERWRITEPROTECT : in    std_logic := 'U';
          PAGELOSSPROTECT  : in    std_logic := 'U';
          CLK              : in    std_logic := 'U';
          RESET            : in    std_logic := 'U';
          PAGESTATUS       : in    std_logic := 'U';
          OVERWRITEPAGE    : in    std_logic := 'U';
          PIPE             : in    std_logic := 'U';
          LOCKREQUEST      : in    std_logic := 'U'
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal GND_net, VCC_net : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    GND_net <= GND_power_net1;
    VCC_net <= VCC_power_net1;

    NVM_INST : NVM
      generic map(MEMORYFILE => "nvm64k.mem",
         ACT_PROGFILE => "nvm64k.efc", ACT_CALIBRATIONDATA => 0)

      port map(RD(31) => USER_DOUT(31), RD(30) => USER_DOUT(30), 
        RD(29) => USER_DOUT(29), RD(28) => USER_DOUT(28), RD(27)
         => USER_DOUT(27), RD(26) => USER_DOUT(26), RD(25) => 
        USER_DOUT(25), RD(24) => USER_DOUT(24), RD(23) => 
        USER_DOUT(23), RD(22) => USER_DOUT(22), RD(21) => 
        USER_DOUT(21), RD(20) => USER_DOUT(20), RD(19) => 
        USER_DOUT(19), RD(18) => USER_DOUT(18), RD(17) => 
        USER_DOUT(17), RD(16) => USER_DOUT(16), RD(15) => 
        USER_DOUT(15), RD(14) => USER_DOUT(14), RD(13) => 
        USER_DOUT(13), RD(12) => USER_DOUT(12), RD(11) => 
        USER_DOUT(11), RD(10) => USER_DOUT(10), RD(9) => 
        USER_DOUT(9), RD(8) => USER_DOUT(8), RD(7) => 
        USER_DOUT(7), RD(6) => USER_DOUT(6), RD(5) => 
        USER_DOUT(5), RD(4) => USER_DOUT(4), RD(3) => 
        USER_DOUT(3), RD(2) => USER_DOUT(2), RD(1) => 
        USER_DOUT(1), RD(0) => USER_DOUT(0), BUSY => 
        USER_NVM_BUSY, STATUS(1) => USER_NVM_STATUS(1), STATUS(0)
         => USER_NVM_STATUS(0), ADDR(17) => USER_ADD(17), 
        ADDR(16) => USER_ADD(16), ADDR(15) => USER_ADD(15), 
        ADDR(14) => USER_ADD(14), ADDR(13) => USER_ADD(13), 
        ADDR(12) => USER_ADD(12), ADDR(11) => USER_ADD(11), 
        ADDR(10) => USER_ADD(10), ADDR(9) => USER_ADD(9), ADDR(8)
         => USER_ADD(8), ADDR(7) => USER_ADD(7), ADDR(6) => 
        USER_ADD(6), ADDR(5) => USER_ADD(5), ADDR(4) => 
        USER_ADD(4), ADDR(3) => USER_ADD(3), ADDR(2) => 
        USER_ADD(2), ADDR(1) => USER_ADD(1), ADDR(0) => 
        USER_ADD(0), WD(31) => USER_DATA(31), WD(30) => 
        USER_DATA(30), WD(29) => USER_DATA(29), WD(28) => 
        USER_DATA(28), WD(27) => USER_DATA(27), WD(26) => 
        USER_DATA(26), WD(25) => USER_DATA(25), WD(24) => 
        USER_DATA(24), WD(23) => USER_DATA(23), WD(22) => 
        USER_DATA(22), WD(21) => USER_DATA(21), WD(20) => 
        USER_DATA(20), WD(19) => USER_DATA(19), WD(18) => 
        USER_DATA(18), WD(17) => USER_DATA(17), WD(16) => 
        USER_DATA(16), WD(15) => USER_DATA(15), WD(14) => 
        USER_DATA(14), WD(13) => USER_DATA(13), WD(12) => 
        USER_DATA(12), WD(11) => USER_DATA(11), WD(10) => 
        USER_DATA(10), WD(9) => USER_DATA(9), WD(8) => 
        USER_DATA(8), WD(7) => USER_DATA(7), WD(6) => 
        USER_DATA(6), WD(5) => USER_DATA(5), WD(4) => 
        USER_DATA(4), WD(3) => USER_DATA(3), WD(2) => 
        USER_DATA(2), WD(1) => USER_DATA(1), WD(0) => 
        USER_DATA(0), DATAWIDTH(1) => USER_WIDTH(1), DATAWIDTH(0)
         => USER_WIDTH(0), REN => USER_READ, WEN => USER_WRITE, 
        PROGRAM => USER_PROGRAM, SPAREPAGE => USER_SPARE_PAGE, 
        AUXBLOCK => USER_AUX_BLOCK, READNEXT => USER_READ_NEXT, 
        ERASEPAGE => USER_ERASE_PAGE, UNPROTECTPAGE => 
        USER_UNPROT_PAGE, DISCARDPAGE => USER_DISCARD_PAGE, 
        OVERWRITEPROTECT => USER_OVERWRITE_PROT, PAGELOSSPROTECT
         => USER_PAGELOSS_PROT, CLK => USER_CLK, RESET => 
        USER_RESET, PAGESTATUS => USER_PAGE_STATUS, OVERWRITEPAGE
         => USER_OVERWRITE_PAGE, PIPE => GND_net, LOCKREQUEST => 
        USER_LOCK);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 

-- _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._

-- _CFG_File_Contents_

-- nvm_set_engine \
--    -toplevel {nvm64k}  \
--    -HDL VHDL \
--    -die M1AFS1500 \
--    -package {484 FBGA}  \
--    -workdir {.}  \
--    -commondir {./common}  \
--    -verbosity 0
-- nvm_set_system \
--    -pipe 0
-- nvm_set_data_storage_client \
--    -client_name {nvm_64k}  \
--    -number_of_words 8192 \
--    -word_size 8 \
--    -content_type 1 \
--    -static_fill_pattern {0}  \
--    -base_address 0 \
--    -jtag_read 0 \
--    -jtag_write 0 \
--    -is_spare_page 0 \
--    -lock_address 0

-- _GEN_File_Contents_

-- DESIGN:nvm64k
-- DESDIR:C:/Actelprj/AFS_ADV_KIT_8051/smartgen\nvm64k
-- FAM:Fusion
-- MGNCMPL:F
-- MGNTIMER:F
-- OUTFORMAT:VHDL
-- LPMTYPE:LPM_NVM
-- LPMHINT:NONE
-- CONFIGFILE:nvm64k.cfg

-- _End_Comments_

