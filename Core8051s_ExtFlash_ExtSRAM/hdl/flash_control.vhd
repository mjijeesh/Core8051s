-- flash_control.vhd

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity FlashApb is
  port (
		PCLK		: in std_logic;
		PRESETn		: in std_logic;
		PENABLE		: in std_logic;
		PSEL		: in std_logic;
		PADDR		: in std_logic_vector(5 downto 2);
		PWRITE		: in std_logic;
		PWDATA		: in  std_logic_vector(7 downto 0);
		PRDATA		: out std_logic_vector(7 downto 0);

        memaddr     : in std_logic_vector(15 downto 0);   -- sfr addr for control/status
        memdatai    : in std_logic_vector(7 downto 0);
        memdatao    : out std_logic_vector(7 downto 0);
        memwr       : in std_logic;
        memrd       : in std_logic;
        memacko     : out std_logic
);
end FlashApb;


architecture one of FlashApb is 


component nvm64k 

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

end component;

signal flash_addr   : std_logic_vector(17 downto 0);
signal flash_wdata  : std_logic_vector(31 downto 0);
signal flash_rdata  : std_logic_vector(31 downto 0);

signal flash_busy   : std_logic;
signal flash_status : std_logic_vector(1 downto 0);
signal flash_clock  : std_logic;

signal flash_read    : std_logic;
signal flash_write   : std_logic;
signal flash_erase   : std_logic;
signal flash_program : std_logic;

-- control addr = D8  :=  1101  1000

constant FLASH_CTRL_ADDR      : std_logic_vector(5 downto 2) := "0000"  ;  -- 0x00
constant FLASH_STS_ADDR       : std_logic_vector(5 downto 2) := "0001"  ;  -- 0x04
constant FLASH_ADDRL_ADDR     : std_logic_vector(5 downto 2) := "0010"  ;  -- 0x08  
constant FLASH_ADDRH_ADDR     : std_logic_vector(5 downto 2) := "0011"  ;  -- 0x0C
constant FLASH_DATA_ADDR     : std_logic_vector(5 downto 2) := "0100"   ;  -- 0x10

signal FLASH_DATA_SEL    : std_logic;
signal FLASH_CTRL_SEL    : std_logic;
signal FLASH_STS_SEL    : std_logic;
signal FLASH_ADDRL_SEL    : std_logic;
signal FLASH_ADDRH_SEL    : std_logic;


signal  Flash_Ctrl_Reg : std_logic_vector(7 downto 0);
signal  Flash_Status_Reg : std_logic_vector(7 downto 0);
signal  Flash_addr_Reg : std_logic_vector(15 downto 0);
       

signal  FLASH_ADDRL_REG : std_logic_vector(7 downto 0);
signal  FLASH_ADDRH_REG : std_logic_vector(7 downto 0);
signal  FLASH_DATA_REG ,flash_rdata_reg : std_logic_vector(7 downto 0);

signal WRITE_EN,READ_EN : std_logic;


begin


--flash_addr(15 downto 0)   <= memaddr;
flash_addr(17 downto 16)    <= (others =>'0');
flash_wdata(31 downto 8)    <= (others =>'0'); -- no writing to flash from fpga
flash_wdata(7 downto 0)     <= PWDATA;


WRITE_EN        <= '1' when (PSEL = '1' and PWRITE = '1' and PENABLE = '0') else '0';
READ_EN         <= '1' when (PSEL = '1' and PWRITE = '0' and PENABLE = '0') else '0';


--- LCD_COMMAND_REGISTER ---------------




FLASH_DATA_SEL    <= '1' when PSEL = '1' and (PADDR(5 downto 2) = FLASH_DATA_ADDR ) else '0';
FLASH_CTRL_SEL    <= '1' when PSEL = '1' and (PADDR(5 downto 2) = FLASH_CTRL_ADDR)  else '0';
FLASH_STS_SEL     <= '1' when PSEL = '1' and (PADDR(5 downto 2) = FLASH_STS_ADDR)  else '0';

FLASH_ADDRL_SEL    <= '1' when PSEL = '1' and (PADDR(5 downto 2) = FLASH_ADDRL_ADDR)  else '0';
FLASH_ADDRH_SEL    <= '1' when PSEL = '1' and (PADDR(5 downto 2) = FLASH_ADDRH_ADDR)  else '0';

APB_CTRL_WRITE:process (PCLK,PRESETn)
			  begin
				if (PRESETn = '0') then
					FLASH_CTRL_REG <= ( others => '0');
				elsif (PCLK'event and PCLK = '1') then
				  if (WRITE_EN = '1' and FLASH_CTRL_SEL ='1') then
					FLASH_CTRL_REG <= PWDATA(7 downto 0);
				  end if;
				end if;
			  end process;


APB_ADDRL_WRITE:process (PCLK,PRESETn)
			  begin
				if (PRESETn = '0') then
					FLASH_ADDRL_REG <= ( others => '0');
				elsif (PCLK'event and PCLK = '1') then
				  if (WRITE_EN = '1' and FLASH_ADDRL_SEL ='1') then
					FLASH_ADDRL_REG <= PWDATA(7 downto 0);
				  end if;
				end if;
			  end process;

APB_ADDRH_WRITE:process (PCLK,PRESETn)
			  begin
				if (PRESETn = '0') then
					FLASH_ADDRH_REG <= ( others => '0');
				elsif (PCLK'event and PCLK = '1') then
				  if (WRITE_EN = '1' and FLASH_ADDRH_SEL ='1') then
					FLASH_ADDRH_REG <= PWDATA(7 downto 0);
				  end if;
				end if;
			  end process;
			  
APB_DATA_WRITE:process (PCLK,PRESETn)
			  begin
				if (PRESETn = '0') then
					FLASH_DATA_REG <= ( others => '0');
				elsif (PCLK'event and PCLK = '1') then
				  if (WRITE_EN = '1' and FLASH_DATA_SEL ='1') then
					FLASH_DATA_REG <= PWDATA(7 downto 0);
				  end if;
				end if;
			  end process;			  

flash_addr_reg(15 downto 8) <= FLASH_ADDRH_REG;
flash_addr_reg(7 downto 0)  <= FLASH_ADDRL_REG;

flash_write <= FLASH_DATA_SEL and WRITE_EN;
flash_clock <= not PCLK;
flash_program   <= '1' when WRITE_EN = '1'  and FLASH_CTRL_SEL = '1' and PWDATA(7) = '1' else '0';
flash_erase     <= '1' when WRITE_EN = '1'  and FLASH_CTRL_SEL = '1' and PWDATA(6) = '1' else '0';

flash_status_reg(7)          <= ( not  flash_busy);
flash_status_reg(1 downto 0) <= flash_status;
flash_status_reg(6 downto 2) <= (others =>'0');


flash_addr(17 downto 16)  <= (others =>'0');
flash_addr(15 downto 0)   <= MEMADDR  when memrd = '1' else flash_addr_reg ;

memdatao   <= flash_rdata(7 downto 0);  -- for xmem access;
flash_read <= memrd or (READ_EN and FLASH_DATA_SEL);
memacko    <= (not flash_busy);




FLASH_CODE : nvm64k port map 

        ( USER_CLK            => flash_clock,
          USER_RESET          => PRESETN,
          USER_ADD            => flash_addr,
          USER_AUX_BLOCK      => '0',
          USER_DATA           => flash_wdata,
          USER_DISCARD_PAGE   => '0',
          USER_ERASE_PAGE     =>  flash_erase,
          USER_OVERWRITE_PAGE => '0',
          USER_OVERWRITE_PROT => '0',
          USER_PAGELOSS_PROT  => '0',
          USER_PROGRAM        => flash_program,
          USER_READ           => flash_read,
          USER_READ_NEXT      => '0',
          USER_LOCK           => '0',
          USER_SPARE_PAGE     => '0',
          USER_UNPROT_PAGE    => '0',
          USER_WIDTH          =>  "00",
          USER_WRITE          => flash_write,
          USER_DOUT           => flash_rdata,
          USER_PAGE_STATUS    => '0',
          USER_NVM_STATUS     => flash_status,
          USER_NVM_BUSY       => flash_busy
        );


process(PCLK,presetn)
begin
  if (presetn = '0')then
     flash_rdata_reg <= (others =>'0');
  elsif pclk'event and pclk = '1' then
     if flash_read = '1' then
       flash_rdata_reg <= flash_rdata(7 downto 0);
     end if;
  end if;
end process;

PRDATA  <=  flash_status_reg  when FLASH_STS_SEL = '1'  else
            flash_rdata_reg(7 downto 0)   when FLASH_DATA_SEL ='1'  else
            flash_ctrl_reg    when FLASH_CTRL_SEL ='1'  else
            "00000000";

end one;