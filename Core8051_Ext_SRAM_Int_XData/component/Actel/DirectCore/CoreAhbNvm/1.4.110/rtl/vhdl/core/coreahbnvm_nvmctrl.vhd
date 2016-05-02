-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2009 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAhbNvm NVM control logic - state machine to control
--              CFI sequencing and direct NVM accesses.
--
-- Revision Information:
-- Date			Description
-- ----			-----------------------------------------
-- 04Dec09		Production Release Version 1.4
--
-- SVN Revision Information:
-- SVN $Revision: 11365 $
-- SVN $Date: 2009-12-05 21:51:58 -0800 (Sat, 05 Dec 2009) $
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

entity COREAHBNVM_NVMCTRL is
generic (
THROUGHPUT_MODE     : integer range 0 to 1:= 1
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
end entity COREAHBNVM_NVMCTRL;

architecture COREAHBNVM_NVMCTRL_arch of COREAHBNVM_NVMCTRL is

-- StateName constant definitions
type state_names_0 is (
    RA0_0,
    RA1_0,
    START_0,
    STARTa_0,
    WC_0,
    EP0_0,
    EPa_0,
    EP1_0,
    SW0_0,
    SW0a_0,
    SWa_0,
    SW1_0,
    MW0_0,
    MWa_0,
    MW1_0,
    MW2_0,
    MW2a_0,
    MWb_0,
    MW3_0,
    MW4_0,
    MWc_0,
    MW5_0,
    BUSY_0,
    BUSYa_0,
    RBY_0
);

--constant RA0_0       : std_logic_vector(4 downto 0) := "00000"; --  0
--constant RA1_0       : std_logic_vector(4 downto 0) := "00001"; --  1
--constant START_0     : std_logic_vector(4 downto 0) := "00010"; --  2
--constant STARTa_0    : std_logic_vector(4 downto 0) := "00011"; --  3
--constant WC_0        : std_logic_vector(4 downto 0) := "00100"; --  4
--constant EP0_0       : std_logic_vector(4 downto 0) := "00101"; --  5
--constant EPa_0       : std_logic_vector(4 downto 0) := "00110"; --  6
--constant EP1_0       : std_logic_vector(4 downto 0) := "00111"; --  7
--constant SW0_0       : std_logic_vector(4 downto 0) := "01000"; --  8
--constant SW0a_0      : std_logic_vector(4 downto 0) := "10111"; -- 23
--constant SWa_0       : std_logic_vector(4 downto 0) := "01001"; --  9
--constant SW1_0       : std_logic_vector(4 downto 0) := "01010"; -- 10
--constant MW0_0       : std_logic_vector(4 downto 0) := "01011"; -- 11
--constant MWa_0       : std_logic_vector(4 downto 0) := "01100"; -- 12
--constant MW1_0       : std_logic_vector(4 downto 0) := "01101"; -- 13
--constant MW2_0       : std_logic_vector(4 downto 0) := "01110"; -- 14
--constant MW2a_0      : std_logic_vector(4 downto 0) := "11000"; -- 24
--constant MWb_0       : std_logic_vector(4 downto 0) := "01111"; -- 15
--constant MW3_0       : std_logic_vector(4 downto 0) := "10000"; -- 16
--constant MW4_0       : std_logic_vector(4 downto 0) := "10001"; -- 17
--constant MWc_0       : std_logic_vector(4 downto 0) := "10010"; -- 18
--constant MW5_0       : std_logic_vector(4 downto 0) := "10011"; -- 19
--constant BUSY_0      : std_logic_vector(4 downto 0) := "10100"; -- 20
--constant BUSYa_0     : std_logic_vector(4 downto 0) := "10101"; -- 21
--constant RBY_0       : std_logic_vector(4 downto 0) := "10110"; -- 22

constant RA0_1       : std_logic_vector(26 downto 0) := "000000000000000000000000001";
constant RA1_1       : std_logic_vector(26 downto 0) := "000000000000000000000000010";
constant START_1     : std_logic_vector(26 downto 0) := "000000000000000000000000100";
constant STARTa_1    : std_logic_vector(26 downto 0) := "000000000000000000000001000";
constant WC_1        : std_logic_vector(26 downto 0) := "000000000000000000000010000";
constant EP0_1       : std_logic_vector(26 downto 0) := "000000000000000000000100000";
constant EPa_1       : std_logic_vector(26 downto 0) := "000000000000000000001000000";
constant EP1_1       : std_logic_vector(26 downto 0) := "000000000000000000010000000";
constant SW0_1       : std_logic_vector(26 downto 0) := "000000000000000000100000000";
constant SW0a_1      : std_logic_vector(26 downto 0) := "000000000000000001000000000";
constant SWa_1       : std_logic_vector(26 downto 0) := "000000000000000010000000000";
constant SW1_1       : std_logic_vector(26 downto 0) := "000000000000000100000000000";
constant MW0_1       : std_logic_vector(26 downto 0) := "000000000000001000000000000";
constant MWa_1       : std_logic_vector(26 downto 0) := "000000000000010000000000000";
constant MW1_1       : std_logic_vector(26 downto 0) := "000000000000100000000000000";
constant MW2_1       : std_logic_vector(26 downto 0) := "000000000001000000000000000";
constant MW2a_1      : std_logic_vector(26 downto 0) := "000000000010000000000000000";
constant MWb_1       : std_logic_vector(26 downto 0) := "000000000100000000000000000";
constant MW3_1       : std_logic_vector(26 downto 0) := "000000001000000000000000000";
constant MW4_1       : std_logic_vector(26 downto 0) := "000000010000000000000000000";
constant MWc_1       : std_logic_vector(26 downto 0) := "000000100000000000000000000";
constant MW5_1       : std_logic_vector(26 downto 0) := "000001000000000000000000000";
constant BUSY_1      : std_logic_vector(26 downto 0) := "000010000000000000000000000";
constant BUSYa_1     : std_logic_vector(26 downto 0) := "000100000000000000000000000";
constant RBY_1       : std_logic_vector(26 downto 0) := "001000000000000000000000000";
constant SW1_a_1     : std_logic_vector(26 downto 0) := "010000000000000000000000000";
constant MW3_a_1     : std_logic_vector(26 downto 0) := "100000000000000000000000000";

constant READ_QUERY  : std_logic_vector(7 downto 0) := x"98";
constant READ_ID     : std_logic_vector(7 downto 0) := x"90";
constant READ_ARRAY  : std_logic_vector(7 downto 0) := x"FF";
constant READ_STATUS : std_logic_vector(7 downto 0) := x"70";
constant CLEAR_STATUS: std_logic_vector(7 downto 0) := x"50";
constant ERASE_PAGE  : std_logic_vector(7 downto 0) := x"20";
constant CONFIRM     : std_logic_vector(7 downto 0) := x"d0";
constant SINGLE_WRITE: std_logic_vector(7 downto 0) := x"40";
constant MULTI_WRITE : std_logic_vector(7 downto 0) := x"e8";

constant SZ_BYTE     : std_logic_vector(2 downto 0) := "000";
constant SZ_HALF     : std_logic_vector(2 downto 0) := "001";
constant SZ_WORD     : std_logic_vector(2 downto 0) := "010";

signal nvmReadEnable    : std_logic;
signal selRdData        : std_logic;
signal latchPageAddr    : std_logic;
signal latchCfiStatus   : std_logic;
signal latchCfiRdStatus : std_logic;
signal latchCfiWrStatus : std_logic;
signal clrCfiStatus     : std_logic;
signal nvmErasePage     : std_logic;
signal selPageAddr      : std_logic;
signal nvmWriteEnable   : std_logic;
signal nvmProgram       : std_logic;
signal latchWriteCount  : std_logic;
signal decWriteCount    : std_logic;
signal nvmDiscardPage   : std_logic;
signal nvmPageSize      : std_logic_vector(1 downto 0);
signal nvmPageAddr      : std_logic_vector(20 downto 0);
signal nvmStatus        : std_logic_vector(1 downto 0);
signal nvmReadData      : std_logic_vector(31 downto 0);
signal nvmBusy          : std_logic;
signal nvm0Select       : std_logic;
signal nvm1Select       : std_logic;
signal nvm2Select       : std_logic;
signal nvm3Select       : std_logic;
signal cfiRdError       : std_logic;
signal cfiWrError       : std_logic;
signal cfiProgError     : std_logic;
signal cfiStatus        : std_logic_vector(31 downto 0);
signal remainingWrites  : std_logic_vector(7 downto 0);
signal replicatedRdData : std_logic_vector(31 downto 0);
signal ckAhbAddr        : std_logic_vector(20 downto 0);
signal ckAhbSize        : std_logic_vector(2 downto 0);
--signal stateName        : integer;


begin
    xhdl0 : if (THROUGHPUT_MODE = 0) generate
--      signal nvmCtrlSMCurrentState_0 : std_logic_vector(4 downto 0);
--      signal nvmCtrlSMNextState_0    : std_logic_vector(4 downto 0);
        signal nvmCtrlSMCurrentState_0 : state_names_0;
        signal nvmCtrlSMNextState_0    : state_names_0;
    begin
        process (nvmCtrlSMCurrentState_0, nvmBusy, ahbReq, ahbWrite,
                 nextAhbReq, HWRITE, ctrl_wdata, remainingWrites)
        begin
            nvmReadEnable <= '0';
            selRdData <= '0';
            latchPageAddr <= '0';
            ahbAck <= '0';
            latchCfiStatus <= '0';
            latchCfiRdStatus <= '0';
            latchCfiWrStatus <= '0';
            clrCfiStatus <= '0';
            nvmErasePage <= '0';
            selPageAddr <= '0';
            nvmWriteEnable <= '0';
            nvmProgram <= '0';
            latchWriteCount <= '0';
            decWriteCount <= '0';
            nvmDiscardPage <= '0';
            case nvmCtrlSMCurrentState_0 is
                when RBY_0 =>
                    --stateName <= 5390937;
                    if (nvmBusy = '1') then
                        nvmCtrlSMNextState_0 <= RBY_0;
                    else
                        nvmCtrlSMNextState_0 <= RA0_0;
                    end if;
                when RA0_0 =>
                    --stateName <= 5390640;
                    selRdData <= '1';
                    if (ahbReq = '1') then
                        if (ahbWrite = '1') then
                            nvmCtrlSMNextState_0 <= START_0;
                        else
                            nvmReadEnable <= '1';
                            latchPageAddr <= '1';
                            nvmCtrlSMNextState_0 <= RA1_0;
                        end if;
                    else
                        nvmCtrlSMNextState_0 <= RA0_0;
                    end if;
                when RA1_0 =>
                    --stateName <= 5390641;
                    selRdData <= '1';
                    if (nvmBusy = '1') then
                        nvmReadEnable <= '1';
                        nvmCtrlSMNextState_0 <= RA1_0;
                    else
                        ahbAck <= '1';
                        latchCfiRdStatus <= '1';
                        if (nextAhbReq = '1') then
                            if (HWRITE = '1') then
                                nvmCtrlSMNextState_0 <= START_0;
                            else
                                nvmReadEnable <= '1';
                                latchPageAddr <= '1';
                                nvmCtrlSMNextState_0 <= RA1_0;
                            end if;
                        else
                            nvmCtrlSMNextState_0 <= RA0_0;
                        end if;
                    end if;
                when START_0 =>
                    --stateName <= 1398035028;
                    if (ahbReq = '1') then
                        if (ahbWrite = '1') then
                            latchPageAddr <= '1';
                            nvmCtrlSMNextState_0 <= WC_0;
                        else
                            nvmCtrlSMNextState_0 <= STARTa_0;
                        end if;
                    else
                        nvmCtrlSMNextState_0 <= START_0;
                    end if;
                when STARTa_0 =>
                    --stateName <= 1398035553;
                    ahbAck <= '1';
                    nvmCtrlSMNextState_0 <= START_0;
                when WC_0 =>
                    --stateName <= 22339;
                    ahbAck <= '1';
                    case ctrl_wdata(7 downto 0) is
                        when READ_ARRAY =>
                            nvmCtrlSMNextState_0 <= RA0_0;
                        when CLEAR_STATUS =>
                            clrCfiStatus <= '1';
                            nvmCtrlSMNextState_0 <= START_0;
                        when ERASE_PAGE =>
                            nvmCtrlSMNextState_0 <= EP0_0;
                        when SINGLE_WRITE =>
                            nvmCtrlSMNextState_0 <= SW0_0;
                        when MULTI_WRITE =>
                            nvmCtrlSMNextState_0 <= MW0_0;
                        when others =>
                            nvmCtrlSMNextState_0 <= START_0;
                    end case;
                when EP0_0 =>
                    --stateName <= 4542512;
                    if (ahbReq = '1') then
                        if (ahbWrite = '1') then
                            nvmCtrlSMNextState_0 <= EP1_0;
                        else
                            nvmCtrlSMNextState_0 <= EPa_0;
                        end if;
                    else
                        nvmCtrlSMNextState_0 <= EP0_0;
                    end if;
                when EPa_0 =>
                    --stateName <= 4542561;
                    ahbAck <= '1';
                    nvmCtrlSMNextState_0 <= EP0_0;
                when EP1_0 =>
                    --stateName <= 4542513;
                    ahbAck <= '1';
                    if (ctrl_wdata(7 downto 0) = CONFIRM) then
                        nvmErasePage <= '1';
                        selPageAddr <= '1';
                        nvmCtrlSMNextState_0 <= BUSY_0;
                    else
                        nvmCtrlSMNextState_0 <= START_0;
                    end if;
                when SW0_0 =>
                    --stateName <= 5461808;
                    if (ahbReq = '1') then
                        if (ahbWrite = '1') then
                            nvmCtrlSMNextState_0 <= SW0a_0;
                        else
                            nvmCtrlSMNextState_0 <= SWa_0;
                        end if;
                    else
                        nvmCtrlSMNextState_0 <= SW0_0;
                    end if;
                when SW0a_0 =>
                    --stateName <= 1398222945;
                    nvmWriteEnable <= '1';
                    nvmCtrlSMNextState_0 <= SW1_0;
                when SWa_0 =>
                    --stateName <= 5461857;
                    ahbAck <= '1';
                    nvmCtrlSMNextState_0 <= SW0_0;
                when SW1_0 =>
                    --stateName <= 5461809;
                    if (nvmBusy = '1') then
                        nvmWriteEnable <= '1';
                        nvmCtrlSMNextState_0 <= SW1_0;
                    else
                        ahbAck <= '1';
                        latchCfiWrStatus <= '1';
                        nvmProgram <= '1';
                        selPageAddr <= '1';
                        nvmCtrlSMNextState_0 <= BUSY_0;
                    end if;
                when MW0_0 =>
                    --stateName <= 5068592;
                    if (ahbReq = '1') then
                        if (ahbWrite = '1') then
                            nvmCtrlSMNextState_0 <= MW1_0;
                        else
                            nvmCtrlSMNextState_0 <= MWa_0;
                        end if;
                    else
                        nvmCtrlSMNextState_0 <= MW0_0;
                    end if;
                when MWa_0 =>
                    --stateName <= 5068641;
                    ahbAck <= '1';
                    nvmCtrlSMNextState_0 <= MW0_0;
                when MW1_0 =>
                    --stateName <= 5068593;
                    ahbAck <= '1';
                    latchWriteCount <= '1';
                    nvmCtrlSMNextState_0 <= MW2_0;
                when MW2_0 =>
                    --stateName <= 5068594;
                    if (ahbReq = '1') then
                        if (ahbWrite = '1') then
                            nvmCtrlSMNextState_0 <= MW2a_0;
                        else
                            nvmCtrlSMNextState_0 <= MWb_0;
                        end if;
                    else
                        nvmCtrlSMNextState_0 <= MW2_0;
                    end if;
                when MW2a_0 =>
                    --stateName <= 1297560161;
                    nvmWriteEnable <= '1';
                    nvmCtrlSMNextState_0 <= MW3_0;
                when MWb_0 =>
                    --stateName <= 5068642;
                    ahbAck <= '1';
                    nvmCtrlSMNextState_0 <= MW2_0;
                when MW3_0 =>
                    --stateName <= 5068595;
                    if (nvmBusy = '1') then
                        nvmWriteEnable <= '1';
                        nvmCtrlSMNextState_0 <= MW3_0;
                    else
                        latchCfiWrStatus <= '1';
                        ahbAck <= '1';
                        if (remainingWrites = "00000000") then
                            nvmCtrlSMNextState_0 <= MW4_0;
                        else
                            decWriteCount <= '1';
                            nvmCtrlSMNextState_0 <= MW2_0;
                        end if;
                    end if;
                when MW4_0 =>
                    --stateName <= 5068596;
                    if (ahbReq = '1') then
                        if (ahbWrite = '1') then
                            nvmCtrlSMNextState_0 <= MW5_0;
                        else
                            nvmCtrlSMNextState_0 <= MWc_0;
                        end if;
                    else
                        nvmCtrlSMNextState_0 <= MW4_0;
                    end if;
                when MWc_0 =>
                    --stateName <= 5068643;
                    ahbAck <= '1';
                    nvmCtrlSMNextState_0 <= MW4_0;
                when MW5_0 =>
                    --stateName <= 5068597;
                    ahbAck <= '1';
                    selPageAddr <= '1';
                    nvmCtrlSMNextState_0 <= BUSY_0;
                    if (ctrl_wdata(7 downto 0) = CONFIRM) then
                        nvmProgram <= '1';
                    else
                        nvmDiscardPage <= '1';
                    end if;
                when BUSY_0 =>
                    --stateName <= 1112888153;
                    if (nvmBusy = '1') then
                        selPageAddr <= '1';
                        if (ahbReq = '1') then
                            nvmCtrlSMNextState_0 <= BUSYa_0;
                        else
                            nvmCtrlSMNextState_0 <= BUSY_0;
                        end if;
                    else
                        latchCfiStatus <= '1';
                        nvmCtrlSMNextState_0 <= START_0;
                    end if;
                when BUSYa_0 =>
                    --stateName <= 1112758625;
                    ahbAck <= '1';
                    if (nvmBusy = '1') then
                        selPageAddr <= '1';
                        nvmCtrlSMNextState_0 <= BUSY_0;
                    else
                        latchCfiStatus <= '1';
                        nvmCtrlSMNextState_0 <= START_0;
                    end if;
                when others =>
                    nvmCtrlSMNextState_0 <= RA0_0;
            end case;
        end process;
        
        process (HCLK, HRESETN)
        begin
            if ((not(HRESETN)) = '1') then
                nvmCtrlSMCurrentState_0 <= RBY_0;
            elsif (HCLK'event and HCLK = '1') then
                nvmCtrlSMCurrentState_0 <= nvmCtrlSMNextState_0;
            end if;
        end process;
        
        process (selRdData, replicatedRdData, cfiStatus)
        begin
            if (selRdData = '1') then
                HRDATA <= replicatedRdData;
            else
                HRDATA <= cfiStatus;
            end if;
        end process;
        
        process (selPageAddr, nvmPageSize, nvmPageAddr, ahbSize, ahbAddr)
        begin
            if (selPageAddr = '1') then
                nvmSize <= nvmPageSize(1 downto 0);
                nvmAddr <= nvmPageAddr(17 downto 0);
            else
                nvmSize <= ahbSize(1 downto 0);
                nvmAddr <= ahbAddr(17 downto 0);
            end if;
        end process;
        
    end generate;
    xhdl1 : if (not(THROUGHPUT_MODE = 0)) generate
        xhdl2 : if (THROUGHPUT_MODE = 1) generate
             -- X-HDL generated signals
             signal xhdl3                   : std_logic_vector(26 downto 0);
             signal xhdl4                   : std_logic;
             signal xhdl5                   : std_logic;
             signal xhdl6                   : std_logic_vector(26 downto 0);

             signal HRDATA_q                : std_logic_vector(31 downto 0);
             signal HRDATA_d                : std_logic_vector(31 downto 0);
             signal nvmCtrlSMCurrentState_1 : std_logic_vector(26 downto 0);
             signal nvmCtrlSMNextState_1    : std_logic_vector(26 downto 0);
             signal nvmReadEnable_RA0       : std_logic;
             signal nvmReadEnable_RA1       : std_logic;
             signal selRdData_q             : std_logic;
             signal stateName               : integer;

             attribute syn_state_machine: boolean;
             attribute syn_state_machine of nvmCtrlSMCurrentState_1 : signal is false;
        begin
            xhdl3 <= START_1 when (ahbWrite = '1') else RA1_1;
            xhdl4 <= '1' when ((not(ahbWrite)) = '1') else '0';
            xhdl5 <= '1' when ((not(ahbWrite)) = '1') else '0';
            xhdl6 <= BUSYa_1 when (ahbReq = '1') else BUSY_1;

            process (ahbSize, ahbAddr, nvmCtrlSMCurrentState_1, nvmBusy, ahbWrite,
                     ahbReq, ctrl_wdata, nvmPageSize, nvmPageAddr, remainingWrites)
            begin
                nvmReadEnable_RA0 <= '0';
                nvmReadEnable_RA1 <= '0';
                selRdData <= '0';
                latchPageAddr <= '0';
                ahbAck <= '0';
                latchCfiStatus <= '0';
                latchCfiRdStatus <= '0';
                latchCfiWrStatus <= '0';
                clrCfiStatus <= '0';
                nvmErasePage <= '0';
                selPageAddr <= '0';
                nvmWriteEnable <= '0';
                nvmProgram <= '0';
                latchWriteCount <= '0';
                decWriteCount <= '0';
                nvmDiscardPage <= '0';
                nvmSize <= ahbSize(1 downto 0);
                nvmAddr <= ahbAddr(17 downto 0);
                case nvmCtrlSMCurrentState_1 is --synthesis parallel_case
                    when RBY_1 =>
                        stateName <= 5390937;
                        if (nvmBusy = '1') then
                            nvmCtrlSMNextState_1 <= RBY_1;
                        else
                            nvmCtrlSMNextState_1 <= RA0_1;
                        end if;
                    when RA0_1 =>
                        stateName <= 5390640;
                        selRdData <= '1';
                        nvmCtrlSMNextState_1 <= xhdl3;
                        nvmReadEnable_RA0 <= xhdl4;
                        latchPageAddr <= xhdl5;
                        if ((not(ahbReq)) = '1') then
                            nvmReadEnable_RA0 <= '0';
                            latchPageAddr <= '0';
                            nvmCtrlSMNextState_1 <= RA0_1;
                        end if;
                    when RA1_1 =>
                        stateName <= 5390641;
                        selRdData <= '1';
                        if (nvmBusy = '1') then
                            nvmReadEnable_RA1 <= '1';
                            nvmCtrlSMNextState_1 <= RA1_1;
                        else
                            ahbAck <= '1';
                            latchCfiRdStatus <= '1';
                            nvmCtrlSMNextState_1 <= RBY_1;
                        end if;
                    when START_1 =>
                        stateName <= 1398035028;
                        if (ahbReq = '1') then
                            if (ahbWrite = '1') then
                                latchPageAddr <= '1';
                                nvmCtrlSMNextState_1 <= WC_1;
                            else
                                nvmCtrlSMNextState_1 <= STARTa_1;
                            end if;
                        else
                            nvmCtrlSMNextState_1 <= START_1;
                        end if;
                    when STARTa_1 =>
                        stateName <= 1398035553;
                        ahbAck <= '1';
                        nvmCtrlSMNextState_1 <= START_1;
                    when WC_1 =>
                        stateName <= 22339;
                        ahbAck <= '1';
                        case ctrl_wdata(7 downto 0) is --synthesis parallel_case
                            when READ_ARRAY =>
                                nvmCtrlSMNextState_1 <= RA0_1;
                            when CLEAR_STATUS =>
                                clrCfiStatus <= '1';
                                nvmCtrlSMNextState_1 <= START_1;
                            when ERASE_PAGE =>
                                nvmCtrlSMNextState_1 <= EP0_1;
                            when SINGLE_WRITE =>
                                nvmCtrlSMNextState_1 <= SW0_1;
                            when MULTI_WRITE =>
                                nvmCtrlSMNextState_1 <= MW0_1;
                            when others =>
                                nvmCtrlSMNextState_1 <= START_1;
                        end case;
                    when EP0_1 =>
                        stateName <= 4542512;
                        if (ahbReq = '1') then
                            if (ahbWrite = '1') then
                                nvmCtrlSMNextState_1 <= EP1_1;
                            else
                                nvmCtrlSMNextState_1 <= EPa_1;
                            end if;
                        else
                            nvmCtrlSMNextState_1 <= EP0_1;
                        end if;
                    when EPa_1 =>
                        stateName <= 4542561;
                        ahbAck <= '1';
                        nvmCtrlSMNextState_1 <= EP0_1;
                    when EP1_1 =>
                        stateName <= 4542513;
                        ahbAck <= '1';
                        if (ctrl_wdata(7 downto 0) = CONFIRM) then
                            nvmErasePage <= '1';
                            selPageAddr <= '1';
                            nvmSize <= nvmPageSize(1 downto 0);
                            nvmAddr <= nvmPageAddr(17 downto 0);
                            nvmCtrlSMNextState_1 <= BUSY_1;
                        else
                            nvmCtrlSMNextState_1 <= START_1;
                        end if;
                    when SW0_1 =>
                        stateName <= 5461808;
                        if (ahbReq = '1') then
                            if (ahbWrite = '1') then
                                nvmCtrlSMNextState_1 <= SW0a_1;
                            else
                                nvmCtrlSMNextState_1 <= SWa_1;
                            end if;
                        else
                            nvmCtrlSMNextState_1 <= SW0_1;
                        end if;
                    when SW0a_1 =>
                        stateName <= 1398222945;
                        nvmWriteEnable <= '1';
                        nvmCtrlSMNextState_1 <= SW1_1;
                    when SWa_1 =>
                        stateName <= 5461857;
                        ahbAck <= '1';
                        nvmCtrlSMNextState_1 <= SW0_1;
                    when SW1_1 =>
                        stateName <= 5461809;
                        if (nvmBusy = '1') then
                            nvmWriteEnable <= '1';
                            nvmCtrlSMNextState_1 <= SW1_1;
                        else
                            nvmCtrlSMNextState_1 <= SW1_a_1;
                            ahbAck <= '0';
                        end if;
                    when SW1_a_1 =>
                        ahbAck <= '1';
                        latchCfiWrStatus <= '1';
                        nvmProgram <= '1';
                        selPageAddr <= '1';
                        nvmSize <= nvmPageSize(1 downto 0);
                        nvmAddr <= nvmPageAddr(17 downto 0);
                        nvmCtrlSMNextState_1 <= BUSY_1;
                    when MW0_1 =>
                        stateName <= 5068592;
                        if (ahbReq = '1') then
                            if (ahbWrite = '1') then
                                nvmCtrlSMNextState_1 <= MW1_1;
                            else
                                nvmCtrlSMNextState_1 <= MWa_1;
                            end if;
                        else
                            nvmCtrlSMNextState_1 <= MW0_1;
                        end if;
                    when MWa_1 =>
                        stateName <= 5068641;
                        ahbAck <= '1';
                        nvmCtrlSMNextState_1 <= MW0_1;
                    when MW1_1 =>
                        stateName <= 5068593;
                        ahbAck <= '1';
                        latchWriteCount <= '1';
                        nvmCtrlSMNextState_1 <= MW2_1;
                    when MW2_1 =>
                        stateName <= 5068594;
                        if (ahbReq = '1') then
                            if (ahbWrite = '1') then
                                nvmCtrlSMNextState_1 <= MW2a_1;
                            else
                                nvmCtrlSMNextState_1 <= MWb_1;
                            end if;
                        else
                            nvmCtrlSMNextState_1 <= MW2_1;
                        end if;
                    when MW2a_1 =>
                        stateName <= 1297560161;
                        nvmWriteEnable <= '1';
                        nvmCtrlSMNextState_1 <= MW3_1;
                    when MWb_1 =>
                        stateName <= 5068642;
                        ahbAck <= '1';
                        nvmCtrlSMNextState_1 <= MW2_1;
                    when MW3_1 =>
                        stateName <= 5068595;
                        if (nvmBusy = '1') then
                            nvmWriteEnable <= '1';
                            nvmCtrlSMNextState_1 <= MW3_1;
                        else
                            nvmCtrlSMNextState_1 <= MW3_a_1;
                            ahbAck <= '0';
                            latchCfiWrStatus <= '1';
                        end if;
                    when MW3_a_1 =>
                        ahbAck <= '1';
                        if (remainingWrites = "00000000") then
                            nvmCtrlSMNextState_1 <= MW4_1;
                        else
                            decWriteCount <= '1';
                            nvmCtrlSMNextState_1 <= MW2_1;
                        end if;
                    when MW4_1 =>
                        stateName <= 5068596;
                        if (ahbReq = '1') then
                            if (ahbWrite = '1') then
                                nvmCtrlSMNextState_1 <= MW5_1;
                            else
                                nvmCtrlSMNextState_1 <= MWc_1;
                            end if;
                        else
                            nvmCtrlSMNextState_1 <= MW4_1;
                        end if;
                    when MWc_1 =>
                        stateName <= 5068643;
                        ahbAck <= '1';
                        nvmCtrlSMNextState_1 <= MW4_1;
                    when MW5_1 =>
                        stateName <= 5068597;
                        ahbAck <= '1';
                        selPageAddr <= '1';
                        nvmSize <= nvmPageSize(1 downto 0);
                        nvmAddr <= nvmPageAddr(17 downto 0);
                        nvmCtrlSMNextState_1 <= BUSY_1;
                        if (ctrl_wdata(7 downto 0) = CONFIRM) then
                            nvmProgram <= '1';
                        else
                            nvmDiscardPage <= '1';
                        end if;
                    when BUSY_1 =>
                        stateName <= 1112888153;
                        nvmCtrlSMNextState_1 <= xhdl6;
                        selPageAddr <= nvmBusy;
                        if (nvmBusy = '1') then
                            nvmSize <= nvmPageSize(1 downto 0);
                            nvmAddr <= nvmPageAddr(17 downto 0);
                        end if;
                        latchCfiStatus <= not(nvmBusy);
                        if ((not(nvmBusy)) = '1') then
                            nvmCtrlSMNextState_1 <= START_1;
                        end if;
                    when BUSYa_1 =>
                        stateName <= 1112758625;
                        ahbAck <= '1';
                        if (nvmBusy = '1') then
                            selPageAddr <= '1';
                            nvmSize <= nvmPageSize(1 downto 0);
                            nvmAddr <= nvmPageAddr(17 downto 0);
                            nvmCtrlSMNextState_1 <= BUSY_1;
                        else
                            latchCfiStatus <= '1';
                            nvmCtrlSMNextState_1 <= START_1;
                        end if;
                    when others =>
                        nvmCtrlSMNextState_1 <= RA0_1;
                end case;
            end process;
            
            process (HCLK, HRESETN)
            begin
                if ((not(HRESETN)) = '1') then
                    nvmCtrlSMCurrentState_1 <= RBY_1;
                elsif (HCLK'event and HCLK = '1') then
                    nvmCtrlSMCurrentState_1 <= nvmCtrlSMNextState_1;
                end if;
            end process;
            
            process (nvmReadEnable_RA0, nvmReadEnable_RA1)
            begin
                nvmReadEnable <= nvmReadEnable_RA0 or nvmReadEnable_RA1;
            end process;
            
            process (selRdData_q, replicatedRdData, cfiStatus)
            begin
                if (selRdData_q = '1') then
                    HRDATA_d <= replicatedRdData;
                else
                    HRDATA_d <= cfiStatus;
                end if;
            end process;
            
            process (HCLK, HRESETN)
            begin
                if ((not(HRESETN)) = '1') then
                    HRDATA_q <= (others => '0');
                    selRdData_q <= '0';
                elsif (HCLK'event and HCLK = '1') then
                    HRDATA_q <= HRDATA_d;
                    selRdData_q <= selRdData;
                end if;
            end process;
            
            process (HRDATA_q)
            begin
                HRDATA <= HRDATA_q;
            end process;
            
        end generate;
    end generate;

    nvmSparePage <= nvmPageAddr(20) when (selPageAddr = '1') else ahbAddr(20);

    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            nvmPageSize <= (others => '0');
            nvmPageAddr <= (others => '0');
        elsif (HCLK'event and HCLK = '1') then
            if (latchPageAddr = '1') then
                nvmPageSize <= ahbSize(1 downto 0);
                nvmPageAddr <= ahbAddr(20 downto 0);
            end if;
        end if;
    end process;
    
    process (nvmPageAddr, nvm0Status, nvm1Status, nvm2Status, nvm3Status)
    begin
        case nvmPageAddr(19 downto 18) is --synthesis parallel_case
            when "00" =>
                nvmStatus <= nvm0Status;
            when "01" =>
                nvmStatus <= nvm1Status;
            when "10" =>
                nvmStatus <= nvm2Status;
            when others =>
                nvmStatus <= nvm3Status;
        end case;
    end process;
    
    nvmBusy <= (nvm0Busy or nvm1Busy or nvm2Busy) or nvm3Busy;

    nvm0Select <= '1' when (nvmPageAddr(19 downto 18) = "00") else '0';
    nvm1Select <= '1' when (nvmPageAddr(19 downto 18) = "01") else '0';
    nvm2Select <= '1' when (nvmPageAddr(19 downto 18) = "10") else '0';
    nvm3Select <= '1' when (nvmPageAddr(19 downto 18) = "11") else '0';

    nvm0DiscardPage <= nvmDiscardPage and nvm0Select;
    nvm0ErasePage <= nvmErasePage and nvm0Select;
    nvm0Program <= nvmProgram and nvm0Select;
    nvm0WriteEnable <= nvmWriteEnable and nvm0Select;

    nvm1DiscardPage <= nvmDiscardPage and nvm1Select;
    nvm1ErasePage <= nvmErasePage and nvm1Select;
    nvm1Program <= nvmProgram and nvm1Select;
    nvm1WriteEnable <= nvmWriteEnable and nvm1Select;

    nvm2DiscardPage <= nvmDiscardPage and nvm2Select;
    nvm2ErasePage <= nvmErasePage and nvm2Select;
    nvm2Program <= nvmProgram and nvm2Select;
    nvm2WriteEnable <= nvmWriteEnable and nvm2Select;

    nvm3DiscardPage <= nvmDiscardPage and nvm3Select;
    nvm3ErasePage <= nvmErasePage and nvm3Select;
    nvm3Program <= nvmProgram and nvm3Select;
    nvm3WriteEnable <= nvmWriteEnable and nvm3Select;

    nvm0ReadEnable <= '1' when (nvmReadEnable='1' and (ahbAddr(19 downto 18) = "00")) else '0';
    nvm1ReadEnable <= '1' when (nvmReadEnable='1' and (ahbAddr(19 downto 18) = "01")) else '0';
    nvm2ReadEnable <= '1' when (nvmReadEnable='1' and (ahbAddr(19 downto 18) = "10")) else '0';
    nvm3ReadEnable <= '1' when (nvmReadEnable='1' and (ahbAddr(19 downto 18) = "11")) else '0';

    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            ckAhbAddr <= (others => '0');
            ckAhbSize <= (others => '0');
        elsif (HCLK'event and HCLK = '1') then
            ckAhbAddr <= ahbAddr;
            ckAhbSize <= ahbSize;
        end if;
    end process;
    
    process (ckAhbAddr, nvm0ReadData, nvm1ReadData, nvm2ReadData, nvm3ReadData)
    begin
        case ckAhbAddr(19 downto 18) is		--synthesis parallel_case
            when "00" =>
                nvmReadData <= nvm0ReadData;
            when "01" =>
                nvmReadData <= nvm1ReadData;
            when "10" =>
                nvmReadData <= nvm2ReadData;
            when others =>
                nvmReadData <= nvm3ReadData;
        end case;
    end process;
    
    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            cfiRdError <= '0';
        elsif (HCLK'event and HCLK = '1') then
            if (clrCfiStatus = '1') then
                cfiRdError <= '0';
            elsif (latchCfiRdStatus = '1') then
                cfiRdError <= nvmStatus(1) or nvmStatus(0) or cfiRdError;
            end if;
        end if;
    end process;
    
    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            cfiWrError <= '0';
        elsif (HCLK'event and HCLK = '1') then
            if (clrCfiStatus = '1') then
                cfiWrError <= '0';
            elsif (latchCfiWrStatus = '1') then
                cfiWrError <= nvmStatus(1) or nvmStatus(0) or cfiWrError;
            end if;
        end if;
    end process;
    
    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            cfiProgError <= '0';
        elsif (HCLK'event and HCLK = '1') then
            if (clrCfiStatus = '1') then
                cfiProgError <= '0';
            elsif (latchCfiStatus = '1') then
                cfiProgError <= nvmStatus(1) or nvmStatus(0) or cfiProgError;
            end if;
        end if;
    end process;
    
    cfiStatus <= ("000000000000000000000000" & not(nvmBusy) & '0' &
                  cfiProgError & cfiWrError & "00" & cfiRdError & '0');

    process (HCLK, HRESETN)
    begin
        if ((not(HRESETN)) = '1') then
            remainingWrites <= (others => '0');
        elsif (HCLK'event and HCLK = '1') then
            if (latchWriteCount = '1') then
                remainingWrites <= ctrl_wdata(7 downto 0);
            elsif (decWriteCount = '1') then
                remainingWrites <= std_logic_vector(unsigned(remainingWrites) - 1);
            end if;
        end if;
    end process;
    
    process (ckAhbSize, nvmReadData)
    begin
        case ckAhbSize(2 downto 0) is --synthesis parallel_case
            when SZ_BYTE =>
                replicatedRdData <= (nvmReadData(7 downto 0) & nvmReadData(7 downto 0) &
                                     nvmReadData(7 downto 0) & nvmReadData(7 downto 0));
            when SZ_HALF =>
                replicatedRdData <= (nvmReadData(15 downto 0) & nvmReadData(15 downto 0));
            when others =>
                replicatedRdData <= nvmReadData;
        end case;
    end process;
    
    nvmAuxBlock <= '0';
    nvmOverwriteProtect <= '0';
    nvmOverwritePage <= '0';
    nvmPageLossProtect <= '0';
    nvmReadNext <= '0';
    nvmPipe <= '1';
    nvmLockRequest <= '0';
    nvmUnprotectPage <= '0';
    nvmPageStatus <= '0';
    
end architecture COREAHBNVM_NVMCTRL_arch;

