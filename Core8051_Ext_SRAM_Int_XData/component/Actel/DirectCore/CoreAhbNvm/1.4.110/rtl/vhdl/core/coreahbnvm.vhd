-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAhbNvm - AHB interface to Fusion eNVM Flash memory,
--				instantiates the following modules:
--				COREAHBNVM_AHBNVMIF, NVM
--
-- Revision Information:
-- Date			Description
-- ----			-----------------------------------------
-- 04Dec09		Production Release Version 1.4
--
-- SVN Revision Information:
-- SVN $Revision: 11348 $
-- SVN $Date: 2009-12-04 21:00:06 -0800 (Fri, 04 Dec 2009) $
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
library fusion;

entity CoreAhbNvm is
generic (
NVM_INSTANCES       : integer range 1 to 4:= 1;
MAP_NVM0_TO_BLOCK0  : integer range 0 to 1:= 0;
THROUGHPUT_MODE     : integer range 0 to 1:= 1
);
port (
HCLK                : in std_logic;
HRESETn             : in std_logic;
HWRITE              : in std_logic;
HSIZE               : in std_logic_vector(2 downto 0);
HTRANS              : in std_logic_vector(1 downto 0);
HWDATA              : in std_logic_vector(31 downto 0);
HREADYIN            : in std_logic;
HSEL                : in std_logic;
HADDR               : in std_logic_vector(20 downto 0);
HRDATA              : out std_logic_vector(31 downto 0);
HRESP               : out std_logic_vector(1 downto 0);
HREADY              : out std_logic
);
end entity CoreAhbNvm;

architecture CoreAhbNvm_arch of CoreAhbNvm is

component NVM
generic (
MEMORYFILE            : string  := "";
ACT_CALIBRATIONDATA   : integer := 0
);
port (
ADDR             : in std_logic_vector(17 downto 0);
WD               : in std_logic_vector(31 downto 0);
DATAWIDTH        : in std_logic_vector(1 downto 0);
REN              : in std_logic ;
READNEXT         : in std_logic ;
PAGESTATUS       : in std_logic ;
WEN              : in std_logic ;
ERASEPAGE        : in std_logic ;
PROGRAM          : in std_logic ;
SPAREPAGE        : in std_logic ;
AUXBLOCK         : in std_logic ;
UNPROTECTPAGE    : in std_logic ;
OVERWRITEPAGE    : in std_logic ;
DISCARDPAGE      : in std_logic ;
OVERWRITEPROTECT : in std_logic ;
PAGELOSSPROTECT  : in std_logic ;
PIPE             : in std_logic ;
LOCKREQUEST      : in std_logic ;
CLK              : in std_logic ;
RESET            : in std_logic ;
RD               : out std_logic_vector(31 downto 0);
BUSY             : out std_logic;
STATUS           : out std_logic_vector(1 downto 0)
);
end component;

component COREAHBNVM_AHBNVMIF is
generic (
THROUGHPUT_MODE     : integer range 0 to 1:= 1
);
port (
HCLK                : in std_logic;
HRESETN             : in std_logic;
HWRITE              : in std_logic;
HSIZE               : in std_logic_vector(2 downto 0);
HTRANS              : in std_logic_vector(1 downto 0);
HWDATA              : in std_logic_vector(31 downto 0);
HREADYIN            : in std_logic;
HSEL                : in std_logic;
HADDR               : in std_logic_vector(20 downto 0);
HRDATA              : out std_logic_vector(31 downto 0);
HRESP               : out std_logic_vector(1 downto 0);
HREADY              : out std_logic;
nvmSize             : out std_logic_vector(1 downto 0);
nvmAddr             : out std_logic_vector(17 downto 0);
nvmWData            : out std_logic_vector(31 downto 0);
nvmAuxBlock         : out std_logic;
nvmOverwriteProtect : out std_logic;
nvmOverwritePage    : out std_logic;
nvmPageLossProtect  : out std_logic;
nvmReadNext         : out std_logic;
nvmPipe             : out std_logic;
nvmLockRequest      : out std_logic;
nvmSparePage        : out std_logic;
nvmUnprotectPage    : out std_logic;
nvmPageStatus       : out std_logic;
nvm0Status          : in std_logic_vector(1 downto 0);
nvm0Busy            : in std_logic;
nvm0ReadData        : in std_logic_vector(31 downto 0);
nvm0DiscardPage     : out std_logic;
nvm0ErasePage       : out std_logic;
nvm0Program         : out std_logic;
nvm0ReadEnable      : out std_logic;
nvm0WriteEnable     : out std_logic;
nvm1Status          : in std_logic_vector(1 downto 0);
nvm1Busy            : in std_logic;
nvm1ReadData        : in std_logic_vector(31 downto 0);
nvm1DiscardPage     : out std_logic;
nvm1ErasePage       : out std_logic;
nvm1Program         : out std_logic;
nvm1ReadEnable      : out std_logic;
nvm1WriteEnable     : out std_logic;
nvm2Status          : in std_logic_vector(1 downto 0);
nvm2Busy            : in std_logic;
nvm2ReadData        : in std_logic_vector(31 downto 0);
nvm2DiscardPage     : out std_logic;
nvm2ErasePage       : out std_logic;
nvm2Program         : out std_logic;
nvm2ReadEnable      : out std_logic;
nvm2WriteEnable     : out std_logic;
nvm3Status          : in std_logic_vector(1 downto 0);
nvm3Busy            : in std_logic;
nvm3ReadData        : in std_logic_vector(31 downto 0);
nvm3DiscardPage     : out std_logic;
nvm3ErasePage       : out std_logic;
nvm3Program         : out std_logic;
nvm3ReadEnable      : out std_logic;
nvm3WriteEnable     : out std_logic
);
end component;

signal nvmWData            : std_logic_vector(31 downto 0);
signal nvmAddr             : std_logic_vector(17 downto 0);
signal nvmSize             : std_logic_vector(1 downto 0);
signal nvmAuxBlock         : std_logic;
signal nvmOverwriteProtect : std_logic;
signal nvmOverwritePage    : std_logic;
signal nvmPageLossProtect  : std_logic;
signal nvmReadNext         : std_logic;
signal nvmPipe             : std_logic;
signal nvmLockRequest      : std_logic;
signal nvmSparePage        : std_logic;
signal nvmUnprotectPage    : std_logic;
signal nvmPageStatus       : std_logic;
signal nvm0Status          : std_logic_vector(1 downto 0);
signal nvm0Busy            : std_logic;
signal nvm0ReadData        : std_logic_vector(31 downto 0);
signal nvm0DiscardPage     : std_logic;
signal nvm0ErasePage       : std_logic;
signal nvm0Program         : std_logic;
signal nvm0ReadEnable      : std_logic;
signal nvm0WriteEnable     : std_logic;
signal nvm1Status          : std_logic_vector(1 downto 0);
signal nvm1Busy            : std_logic;
signal nvm1ReadData        : std_logic_vector(31 downto 0);
signal nvm1DiscardPage     : std_logic;
signal nvm1ErasePage       : std_logic;
signal nvm1Program         : std_logic;
signal nvm1ReadEnable      : std_logic;
signal nvm1WriteEnable     : std_logic;
signal nvm2Status          : std_logic_vector(1 downto 0);
signal nvm2Busy            : std_logic;
signal nvm2ReadData        : std_logic_vector(31 downto 0);
signal nvm2DiscardPage     : std_logic;
signal nvm2ErasePage       : std_logic;
signal nvm2Program         : std_logic;
signal nvm2ReadEnable      : std_logic;
signal nvm2WriteEnable     : std_logic;
signal nvm3Status          : std_logic_vector(1 downto 0);
signal nvm3Busy            : std_logic;
signal nvm3ReadData        : std_logic_vector(31 downto 0);
signal nvm3DiscardPage     : std_logic;
signal nvm3ErasePage       : std_logic;
signal nvm3Program         : std_logic;
signal nvm3ReadEnable      : std_logic;
signal nvm3WriteEnable     : std_logic;

-- Declare intermediate signals for referenced outputs
signal HRDATA_xhdl0        : std_logic_vector(31 downto 0);
signal HRESP_xhdl2         : std_logic_vector(1 downto 0);
signal HREADY_xhdl1        : std_logic;

begin
    -- Drive referenced outputs
    HRDATA <= HRDATA_xhdl0;
    HRESP <= HRESP_xhdl2;
    HREADY <= HREADY_xhdl1;

    u_AhbNvmIf : COREAHBNVM_AHBNVMIF
        generic map (
            THROUGHPUT_MODE  => THROUGHPUT_MODE
        )
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETn,
            HWRITE               => HWRITE,
            HSIZE                => HSIZE,
            HTRANS               => HTRANS,
            HWDATA               => HWDATA,
            HREADYIN             => HREADYIN,
            HSEL                 => HSEL,
            HADDR                => HADDR,
            HRDATA               => HRDATA_xhdl0,
            HRESP                => HRESP_xhdl2,
            HREADY               => HREADY_xhdl1,
            nvmSize              => nvmSize,
            nvmAddr              => nvmAddr,
            nvmAuxBlock          => nvmAuxBlock,
            nvmOverwriteProtect  => nvmOverwriteProtect,
            nvmOverwritePage     => nvmOverwritePage,
            nvmPageLossProtect   => nvmPageLossProtect,
            nvmReadNext          => nvmReadNext,
            nvmPipe              => nvmPipe,
            nvmLockRequest       => nvmLockRequest,
            nvmSparePage         => nvmSparePage,
            nvmUnprotectPage     => nvmUnprotectPage,
            nvmPageStatus        => nvmPageStatus,
            nvmWData             => nvmWData,
            nvm0Status           => nvm0Status,
            nvm0Busy             => nvm0Busy,
            nvm0ReadData         => nvm0ReadData,
            nvm0DiscardPage      => nvm0DiscardPage,
            nvm0ErasePage        => nvm0ErasePage,
            nvm0Program          => nvm0Program,
            nvm0ReadEnable       => nvm0ReadEnable,
            nvm0WriteEnable      => nvm0WriteEnable,
            nvm1Status           => nvm1Status,
            nvm1Busy             => nvm1Busy,
            nvm1ReadData         => nvm1ReadData,
            nvm1DiscardPage      => nvm1DiscardPage,
            nvm1ErasePage        => nvm1ErasePage,
            nvm1Program          => nvm1Program,
            nvm1ReadEnable       => nvm1ReadEnable,
            nvm1WriteEnable      => nvm1WriteEnable,
            nvm2Status           => nvm2Status,
            nvm2Busy             => nvm2Busy,
            nvm2ReadData         => nvm2ReadData,
            nvm2DiscardPage      => nvm2DiscardPage,
            nvm2ErasePage        => nvm2ErasePage,
            nvm2Program          => nvm2Program,
            nvm2ReadEnable       => nvm2ReadEnable,
            nvm2WriteEnable      => nvm2WriteEnable,
            nvm3Status           => nvm3Status,
            nvm3Busy             => nvm3Busy,
            nvm3ReadData         => nvm3ReadData,
            nvm3DiscardPage      => nvm3DiscardPage,
            nvm3ErasePage        => nvm3ErasePage,
            nvm3Program          => nvm3Program,
            nvm3ReadEnable       => nvm3ReadEnable,
            nvm3WriteEnable      => nvm3WriteEnable
        );
    
    
    nvm0 : NVM
        generic map (
            MEMORYFILE           => "./nvm0.mem",
            ACT_CALIBRATIONDATA  => MAP_NVM0_TO_BLOCK0
        )
        port map (
            ADDR              => nvmAddr,
            WD                => nvmWData,
            DATAWIDTH         => nvmSize,
            REN               => nvm0ReadEnable,
            READNEXT          => nvmReadNext,
            PAGESTATUS        => nvmPageStatus,
            WEN               => nvm0WriteEnable,
            ERASEPAGE         => nvm0ErasePage,
            PROGRAM           => nvm0Program,
            SPAREPAGE         => nvmSparePage,
            AUXBLOCK          => nvmAuxBlock,
            UNPROTECTPAGE     => nvmUnprotectPage,
            OVERWRITEPAGE     => nvmOverwritePage,
            DISCARDPAGE       => nvm0DiscardPage,
            OVERWRITEPROTECT  => nvmOverwriteProtect,
            PAGELOSSPROTECT   => nvmPageLossProtect,
            PIPE              => nvmPipe,
            LOCKREQUEST       => nvmLockRequest,
            CLK               => HCLK,
            RESET             => HRESETn,
            RD                => nvm0ReadData,
            BUSY              => nvm0Busy,
            STATUS            => nvm0Status
        );

    xhdl3 : if (NVM_INSTANCES > 1) generate
        nvm1 : NVM
            generic map (
                MEMORYFILE  => "./nvm1.mem"
            )
            port map (
                ADDR              => nvmAddr,
                WD                => nvmWData,
                DATAWIDTH         => nvmSize,
                REN               => nvm1ReadEnable,
                READNEXT          => nvmReadNext,
                PAGESTATUS        => nvmPageStatus,
                WEN               => nvm1WriteEnable,
                ERASEPAGE         => nvm1ErasePage,
                PROGRAM           => nvm1Program,
                SPAREPAGE         => nvmSparePage,
                AUXBLOCK          => nvmAuxBlock,
                UNPROTECTPAGE     => nvmUnprotectPage,
                OVERWRITEPAGE     => nvmOverwritePage,
                DISCARDPAGE       => nvm1DiscardPage,
                OVERWRITEPROTECT  => nvmOverwriteProtect,
                PAGELOSSPROTECT   => nvmPageLossProtect,
                PIPE              => nvmPipe,
                LOCKREQUEST       => nvmLockRequest,
                CLK               => HCLK,
                RESET             => HRESETn,
                RD                => nvm1ReadData,
                BUSY              => nvm1Busy,
                STATUS            => nvm1Status
            );
    end generate;
    xhdl4 : if (not(NVM_INSTANCES > 1)) generate
        nvm1ReadData <= (others=>'0');
        nvm1Busy <= '0';
        nvm1Status <= "00";
    end generate;
    xhdl5 : if (NVM_INSTANCES > 2) generate
        nvm2 : NVM
            generic map (
                MEMORYFILE  => "./nvm2.mem"
            )
            port map (
                ADDR              => nvmAddr,
                WD                => nvmWData,
                DATAWIDTH         => nvmSize,
                REN               => nvm2ReadEnable,
                READNEXT          => nvmReadNext,
                PAGESTATUS        => nvmPageStatus,
                WEN               => nvm2WriteEnable,
                ERASEPAGE         => nvm2ErasePage,
                PROGRAM           => nvm2Program,
                SPAREPAGE         => nvmSparePage,
                AUXBLOCK          => nvmAuxBlock,
                UNPROTECTPAGE     => nvmUnprotectPage,
                OVERWRITEPAGE     => nvmOverwritePage,
                DISCARDPAGE       => nvm2DiscardPage,
                OVERWRITEPROTECT  => nvmOverwriteProtect,
                PAGELOSSPROTECT   => nvmPageLossProtect,
                PIPE              => nvmPipe,
                LOCKREQUEST       => nvmLockRequest,
                CLK               => HCLK,
                RESET             => HRESETn,
                RD                => nvm2ReadData,
                BUSY              => nvm2Busy,
                STATUS            => nvm2Status
            );
    end generate;
    xhdl6 : if (not(NVM_INSTANCES > 2)) generate
        nvm2ReadData <= (others=>'0');
        nvm2Busy <= '0';
        nvm2Status <= "00";
    end generate;
    xhdl7 : if (NVM_INSTANCES > 3) generate
        nvm3 : NVM
            generic map (
                MEMORYFILE  => "./nvm3.mem"
            )
            port map (
                ADDR              => nvmAddr,
                WD                => nvmWData,
                DATAWIDTH         => nvmSize,
                REN               => nvm3ReadEnable,
                READNEXT          => nvmReadNext,
                PAGESTATUS        => nvmPageStatus,
                WEN               => nvm3WriteEnable,
                ERASEPAGE         => nvm3ErasePage,
                PROGRAM           => nvm3Program,
                SPAREPAGE         => nvmSparePage,
                AUXBLOCK          => nvmAuxBlock,
                UNPROTECTPAGE     => nvmUnprotectPage,
                OVERWRITEPAGE     => nvmOverwritePage,
                DISCARDPAGE       => nvm3DiscardPage,
                OVERWRITEPROTECT  => nvmOverwriteProtect,
                PAGELOSSPROTECT   => nvmPageLossProtect,
                PIPE              => nvmPipe,
                LOCKREQUEST       => nvmLockRequest,
                CLK               => HCLK,
                RESET             => HRESETn,
                RD                => nvm3ReadData,
                BUSY              => nvm3Busy,
                STATUS            => nvm3Status
            );
    end generate;
    xhdl8 : if (not(NVM_INSTANCES > 3)) generate
        nvm3ReadData <= (others=>'0');
        nvm3Busy <= '0';
        nvm3Status <= "00";
    end generate;
    
end architecture CoreAhbNvm_arch;

