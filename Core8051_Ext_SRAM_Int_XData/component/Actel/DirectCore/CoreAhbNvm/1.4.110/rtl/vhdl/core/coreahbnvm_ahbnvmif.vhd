-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAhbNvm AHB wrapper and NVM I/F control logic,
--				instantiates the following modules:
--				COREAHBNVM_AHBWRAPPER, COREAHBNVM_NVMCTRL
--
-- Revision Information:
-- Date			Description
-- ----			-----------------------------------------
-- 04Dec09		Production Release Version 1.4
--
-- SVN Revision Information:
-- SVN $Revision: 11366 $
-- SVN $Date: 2009-12-05 21:56:54 -0800 (Sat, 05 Dec 2009) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
-- 1. best viewed with tabstops set to "4" (tabs used throughout file)
--
-- *********************************************************************/
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity COREAHBNVM_AHBNVMIF is
generic (
THROUGHPUT_MODE      : integer range 0 to 1:= 1
);
port (
HCLK                 : in std_logic;
HRESETN              : in std_logic;
HWRITE               : in std_logic;
HSIZE                : in std_logic_vector(2 downto 0);
HTRANS               : in std_logic_vector(1 downto 0);
HWDATA               : in std_logic_vector(31 downto 0);
HREADYIN             : in std_logic;
HSEL                 : in std_logic;
HADDR                : in std_logic_vector(20 downto 0);
HRDATA               : out std_logic_vector(31 downto 0);
HRESP                : out std_logic_vector(1 downto 0);
HREADY               : out std_logic;
nvmSize              : out std_logic_vector(1 downto 0);
nvmAddr              : out std_logic_vector(17 downto 0);
nvmWData             : out std_logic_vector(31 downto 0);
nvmAuxBlock          : out std_logic;
nvmOverwriteProtect  : out std_logic;
nvmOverwritePage     : out std_logic;
nvmPageLossProtect   : out std_logic;
nvmReadNext          : out std_logic;
nvmPipe              : out std_logic;
nvmLockRequest       : out std_logic;
nvmSparePage         : out std_logic;
nvmUnprotectPage     : out std_logic;
nvmPageStatus        : out std_logic;
nvm0Status           : in std_logic_vector(1 downto 0);
nvm0Busy             : in std_logic;
nvm0ReadData         : in std_logic_vector(31 downto 0);
nvm0DiscardPage      : out std_logic;
nvm0ErasePage        : out std_logic;
nvm0Program          : out std_logic;
nvm0ReadEnable       : out std_logic;
nvm0WriteEnable      : out std_logic;
nvm1Status           : in std_logic_vector(1 downto 0);
nvm1Busy             : in std_logic;
nvm1ReadData         : in std_logic_vector(31 downto 0);
nvm1DiscardPage      : out std_logic;
nvm1ErasePage        : out std_logic;
nvm1Program          : out std_logic;
nvm1ReadEnable       : out std_logic;
nvm1WriteEnable      : out std_logic;
nvm2Status           : in std_logic_vector(1 downto 0);
nvm2Busy             : in std_logic;
nvm2ReadData         : in std_logic_vector(31 downto 0);
nvm2DiscardPage      : out std_logic;
nvm2ErasePage        : out std_logic;
nvm2Program          : out std_logic;
nvm2ReadEnable       : out std_logic;
nvm2WriteEnable      : out std_logic;
nvm3Status           : in std_logic_vector(1 downto 0);
nvm3Busy             : in std_logic;
nvm3ReadData         : in std_logic_vector(31 downto 0);
nvm3DiscardPage      : out std_logic;
nvm3ErasePage        : out std_logic;
nvm3Program          : out std_logic;
nvm3ReadEnable       : out std_logic;
nvm3WriteEnable      : out std_logic
);
end entity COREAHBNVM_AHBNVMIF;

architecture COREAHBNVM_AHBNVMIF_arch of COREAHBNVM_AHBNVMIF is

component COREAHBNVM_AHBWRAPPER is
generic (
THROUGHPUT_MODE      : integer range 0 to 1:= 1
);
port (
HCLK                 : in std_logic;
HRESETN              : in std_logic;
HWRITE               : in std_logic;
HSIZE                : in std_logic_vector(2 downto 0);
HTRANS               : in std_logic_vector(1 downto 0);
HREADYIN             : in std_logic;
HSEL                 : in std_logic;
HADDR                : in std_logic_vector(20 downto 0);
HWDATA               : in std_logic_vector(31 downto 0);
HRESP                : out std_logic_vector(1 downto 0);
HREADY               : out std_logic;
ahbAck               : in std_logic;
ahbReq               : out std_logic;
nextAhbReq           : out std_logic;
ahbWrite             : out std_logic;
ahbSize              : out std_logic_vector(2 downto 0);
ahbAddr              : out std_logic_vector(20 downto 0);
ahbWData             : out std_logic_vector(31 downto 0)
);
end component;

component COREAHBNVM_NVMCTRL is
generic (
THROUGHPUT_MODE      : integer range 0 to 1:= 1
);
port (
HCLK                 : in std_logic;
HRESETN              : in std_logic;
HWRITE               : in std_logic;
ctrl_wdata           : in std_logic_vector(7 downto 0);
HRDATA               : out std_logic_vector(31 downto 0);
ahbReq               : in std_logic;
nextAhbReq           : in std_logic;
ahbWrite             : in std_logic;
ahbSize              : in std_logic_vector(2 downto 0);
ahbAddr              : in std_logic_vector(20 downto 0);
ahbAck               : out std_logic;
nvmSize              : out std_logic_vector(1 downto 0);
nvmAddr              : out std_logic_vector(17 downto 0);
nvmAuxBlock          : out std_logic;
nvmOverwriteProtect  : out std_logic;
nvmOverwritePage     : out std_logic;
nvmPageLossProtect   : out std_logic;
nvmReadNext          : out std_logic;
nvmPipe              : out std_logic;
nvmLockRequest       : out std_logic;
nvmSparePage         : out std_logic;
nvmUnprotectPage     : out std_logic;
nvmPageStatus        : out std_logic;
nvm0Status           : in std_logic_vector(1 downto 0);
nvm0Busy             : in std_logic;
nvm0ReadData         : in std_logic_vector(31 downto 0);
nvm0DiscardPage      : out std_logic;
nvm0ErasePage        : out std_logic;
nvm0Program          : out std_logic;
nvm0ReadEnable       : out std_logic;
nvm0WriteEnable      : out std_logic;
nvm1Status           : in std_logic_vector(1 downto 0);
nvm1Busy             : in std_logic;
nvm1ReadData         : in std_logic_vector(31 downto 0);
nvm1DiscardPage      : out std_logic;
nvm1ErasePage        : out std_logic;
nvm1Program          : out std_logic;
nvm1ReadEnable       : out std_logic;
nvm1WriteEnable      : out std_logic;
nvm2Status           : in std_logic_vector(1 downto 0);
nvm2Busy             : in std_logic;
nvm2ReadData         : in std_logic_vector(31 downto 0);
nvm2DiscardPage      : out std_logic;
nvm2ErasePage        : out std_logic;
nvm2Program          : out std_logic;
nvm2ReadEnable       : out std_logic;
nvm2WriteEnable      : out std_logic;
nvm3Status           : in std_logic_vector(1 downto 0);
nvm3Busy             : in std_logic;
nvm3ReadData         : in std_logic_vector(31 downto 0);
nvm3DiscardPage      : out std_logic;
nvm3ErasePage        : out std_logic;
nvm3Program          : out std_logic;
nvm3ReadEnable       : out std_logic;
nvm3WriteEnable      : out std_logic
);
end component;

signal ahbReq                     : std_logic;
signal nextAhbReq                 : std_logic;
signal ahbWrite                   : std_logic;
signal ahbAddr                    : std_logic_vector(20 downto 0);
signal ahbAck                     : std_logic;
signal ahbSize                    : std_logic_vector(2 downto 0);
signal ahbWData                   : std_logic_vector(31 downto 0);
signal ctrl_wdata                 : std_logic_vector(7 downto 0);

-- Declare intermediate signals for referenced outputs
signal HRDATA_xhdl0               : std_logic_vector(31 downto 0);
signal HRESP_xhdl2                : std_logic_vector(1 downto 0);
signal HREADY_xhdl1               : std_logic;
signal nvmSize_xhdl32             : std_logic_vector(1 downto 0);
signal nvmAddr_xhdl23             : std_logic_vector(17 downto 0);
signal nvmAuxBlock_xhdl24         : std_logic;
signal nvmOverwriteProtect_xhdl27 : std_logic;
signal nvmOverwritePage_xhdl26    : std_logic;
signal nvmPageLossProtect_xhdl28  : std_logic;
signal nvmReadNext_xhdl31         : std_logic;
signal nvmPipe_xhdl30             : std_logic;
signal nvmLockRequest_xhdl25      : std_logic;
signal nvmSparePage_xhdl33        : std_logic;
signal nvmUnprotectPage_xhdl34    : std_logic;
signal nvmPageStatus_xhdl29       : std_logic;
signal nvm0DiscardPage_xhdl3      : std_logic;
signal nvm0ErasePage_xhdl4        : std_logic;
signal nvm0Program_xhdl5          : std_logic;
signal nvm0ReadEnable_xhdl6       : std_logic;
signal nvm0WriteEnable_xhdl7      : std_logic;
signal nvm1DiscardPage_xhdl8      : std_logic;
signal nvm1ErasePage_xhdl9        : std_logic;
signal nvm1Program_xhdl10         : std_logic;
signal nvm1ReadEnable_xhdl11      : std_logic;
signal nvm1WriteEnable_xhdl12     : std_logic;
signal nvm2DiscardPage_xhdl13     : std_logic;
signal nvm2ErasePage_xhdl14       : std_logic;
signal nvm2Program_xhdl15         : std_logic;
signal nvm2ReadEnable_xhdl16      : std_logic;
signal nvm2WriteEnable_xhdl17     : std_logic;
signal nvm3DiscardPage_xhdl18     : std_logic;
signal nvm3ErasePage_xhdl19       : std_logic;
signal nvm3Program_xhdl20         : std_logic;
signal nvm3ReadEnable_xhdl21      : std_logic;
signal nvm3WriteEnable_xhdl22     : std_logic;

begin
    -- Drive referenced outputs
    HRDATA <= HRDATA_xhdl0;
    HRESP <= HRESP_xhdl2;
    HREADY <= HREADY_xhdl1;
    nvmSize <= nvmSize_xhdl32;
    nvmAddr <= nvmAddr_xhdl23;
    nvmAuxBlock <= nvmAuxBlock_xhdl24;
    nvmOverwriteProtect <= nvmOverwriteProtect_xhdl27;
    nvmOverwritePage <= nvmOverwritePage_xhdl26;
    nvmPageLossProtect <= nvmPageLossProtect_xhdl28;
    nvmReadNext <= nvmReadNext_xhdl31;
    nvmPipe <= nvmPipe_xhdl30;
    nvmLockRequest <= nvmLockRequest_xhdl25;
    nvmSparePage <= nvmSparePage_xhdl33;
    nvmUnprotectPage <= nvmUnprotectPage_xhdl34;
    nvmPageStatus <= nvmPageStatus_xhdl29;
    nvm0DiscardPage <= nvm0DiscardPage_xhdl3;
    nvm0ErasePage <= nvm0ErasePage_xhdl4;
    nvm0Program <= nvm0Program_xhdl5;
    nvm0ReadEnable <= nvm0ReadEnable_xhdl6;
    nvm0WriteEnable <= nvm0WriteEnable_xhdl7;
    nvm1DiscardPage <= nvm1DiscardPage_xhdl8;
    nvm1ErasePage <= nvm1ErasePage_xhdl9;
    nvm1Program <= nvm1Program_xhdl10;
    nvm1ReadEnable <= nvm1ReadEnable_xhdl11;
    nvm1WriteEnable <= nvm1WriteEnable_xhdl12;
    nvm2DiscardPage <= nvm2DiscardPage_xhdl13;
    nvm2ErasePage <= nvm2ErasePage_xhdl14;
    nvm2Program <= nvm2Program_xhdl15;
    nvm2ReadEnable <= nvm2ReadEnable_xhdl16;
    nvm2WriteEnable <= nvm2WriteEnable_xhdl17;
    nvm3DiscardPage <= nvm3DiscardPage_xhdl18;
    nvm3ErasePage <= nvm3ErasePage_xhdl19;
    nvm3Program <= nvm3Program_xhdl20;
    nvm3ReadEnable <= nvm3ReadEnable_xhdl21;
    nvm3WriteEnable <= nvm3WriteEnable_xhdl22;
    
    
    u_AhbWrapper : COREAHBNVM_AHBWRAPPER
        generic map (
            THROUGHPUT_MODE  => THROUGHPUT_MODE
        )
        port map (
            HCLK        => HCLK,
            HRESETN     => HRESETN,
            HWRITE      => HWRITE,
            HSIZE       => HSIZE,
            HTRANS      => HTRANS,
            HREADYIN    => HREADYIN,
            HSEL        => HSEL,
            HADDR       => HADDR,
            HWDATA      => HWDATA,
            HRESP       => HRESP_xhdl2,
            HREADY      => HREADY_xhdl1,
            ahbAck      => ahbAck,
            ahbReq      => ahbReq,
            nextAhbReq  => nextAhbReq,
            ahbWrite    => ahbWrite,
            ahbSize     => ahbSize,
            ahbAddr     => ahbAddr,
            ahbWData    => ahbWData
        );
    xhdl35 : if (THROUGHPUT_MODE = 1) generate
        nvmWData <= ahbWData(31 downto 0);
        ctrl_wdata <= ahbWData(7 downto 0);
    end generate;
    xhdl36 : if (not(THROUGHPUT_MODE = 1)) generate
        xhdl37 : if (THROUGHPUT_MODE = 0) generate
            nvmWData <= HWDATA(31 downto 0);
            ctrl_wdata <= HWDATA(7 downto 0);
        end generate;
    end generate;
    
    
    u_NvmCtrl : COREAHBNVM_NVMCTRL
        generic map (
            THROUGHPUT_MODE  => THROUGHPUT_MODE
        )
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HWRITE               => HWRITE,
            ctrl_wdata           => ctrl_wdata,
            HRDATA               => HRDATA_xhdl0,
            ahbReq               => ahbReq,
            nextAhbReq           => nextAhbReq,
            ahbWrite             => ahbWrite,
            ahbSize              => ahbSize,
            ahbAddr              => ahbAddr,
            ahbAck               => ahbAck,
            nvmSize              => nvmSize_xhdl32,
            nvmAddr              => nvmAddr_xhdl23,
            nvmAuxBlock          => nvmAuxBlock_xhdl24,
            nvmOverwriteProtect  => nvmOverwriteProtect_xhdl27,
            nvmOverwritePage     => nvmOverwritePage_xhdl26,
            nvmPageLossProtect   => nvmPageLossProtect_xhdl28,
            nvmReadNext          => nvmReadNext_xhdl31,
            nvmPipe              => nvmPipe_xhdl30,
            nvmLockRequest       => nvmLockRequest_xhdl25,
            nvmSparePage         => nvmSparePage_xhdl33,
            nvmUnprotectPage     => nvmUnprotectPage_xhdl34,
            nvmPageStatus        => nvmPageStatus_xhdl29,
            nvm0Status           => nvm0Status,
            nvm0Busy             => nvm0Busy,
            nvm0ReadData         => nvm0ReadData,
            nvm0DiscardPage      => nvm0DiscardPage_xhdl3,
            nvm0ErasePage        => nvm0ErasePage_xhdl4,
            nvm0Program          => nvm0Program_xhdl5,
            nvm0ReadEnable       => nvm0ReadEnable_xhdl6,
            nvm0WriteEnable      => nvm0WriteEnable_xhdl7,
            nvm1Status           => nvm1Status,
            nvm1Busy             => nvm1Busy,
            nvm1ReadData         => nvm1ReadData,
            nvm1DiscardPage      => nvm1DiscardPage_xhdl8,
            nvm1ErasePage        => nvm1ErasePage_xhdl9,
            nvm1Program          => nvm1Program_xhdl10,
            nvm1ReadEnable       => nvm1ReadEnable_xhdl11,
            nvm1WriteEnable      => nvm1WriteEnable_xhdl12,
            nvm2Status           => nvm2Status,
            nvm2Busy             => nvm2Busy,
            nvm2ReadData         => nvm2ReadData,
            nvm2DiscardPage      => nvm2DiscardPage_xhdl13,
            nvm2ErasePage        => nvm2ErasePage_xhdl14,
            nvm2Program          => nvm2Program_xhdl15,
            nvm2ReadEnable       => nvm2ReadEnable_xhdl16,
            nvm2WriteEnable      => nvm2WriteEnable_xhdl17,
            nvm3Status           => nvm3Status,
            nvm3Busy             => nvm3Busy,
            nvm3ReadData         => nvm3ReadData,
            nvm3DiscardPage      => nvm3DiscardPage_xhdl18,
            nvm3ErasePage        => nvm3ErasePage_xhdl19,
            nvm3Program          => nvm3Program_xhdl20,
            nvm3ReadEnable       => nvm3ReadEnable_xhdl21,
            nvm3WriteEnable      => nvm3WriteEnable_xhdl22
        );
    
end architecture COREAHBNVM_AHBNVMIF_arch;

