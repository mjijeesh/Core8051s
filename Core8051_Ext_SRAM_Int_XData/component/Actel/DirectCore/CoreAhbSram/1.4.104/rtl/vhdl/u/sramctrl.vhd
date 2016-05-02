-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2007 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  CoreAhbSram
--               State machine to control accesses to internal SRAM.
--
-- Revision Information:
-- Date     Description
-- 22Sep08  v1.4 Release
--
-- SVN Revision Information:
-- SVN $Revision: 3204 $
-- SVN $Date: 2008-10-01 19:37:51 +0100 (Wed, 01 Oct 2008) $
--
-- Resolved SARs
-- SAR      Date     Who   Description
--
-- Notes:
--
-- *********************************************************************/

library ieee;
    use ieee.std_logic_1164.all;

ENTITY SramCtrl IS
    PORT (
        -- ---------------------------------------------------------------------
        -- Parameters
        -- ---------------------------------------------------------------------
        -- ---------------------------------------------------------------------
        -- Port declarations
        -- ---------------------------------------------------------------------
        -- MP7Bridge interface
        -- Inputs

        HCLK                    : IN std_logic;
        HRESETn                 : IN std_logic;
        -- AhbFabric interface
        -- Inputs

        HWRITE                  : IN std_logic;
        -- Output

        HRDATA                  : OUT std_logic_vector(31 DOWNTO 0);
        -- AhbWrapper interface
        -- Inputs

        ahbReq                  : IN std_logic;
        nextAhbReq              : IN std_logic;
        ahbWrite                : IN std_logic;
        ahbSize                 : IN std_logic_vector(2 DOWNTO 0);
        ahbAddr                 : IN std_logic_vector(14 DOWNTO 0);
        -- Output

        ahbAck                  : OUT std_logic;
        -- Sram interface
        -- Input

        sramRD                  : IN std_logic_vector(31 DOWNTO 0);
        -- Outputs

        sramREN                 : OUT std_logic;
        sramWEN                 : OUT std_logic_vector(3 DOWNTO 0);
        sramWADDR               : OUT std_logic_vector(14 DOWNTO 0));
END SramCtrl;

library ieee;
    use ieee.std_logic_1164.all;

ARCHITECTURE RTL OF SramCtrl IS


    -- ---------------------------------------------------------------------
    -- Constant declarations
    -- ---------------------------------------------------------------------
    -- StateName constant definitions
    -- StateName constant definitions
	type sramctrl_state_names is (
	    IDLE,
		R,
		W
	);
    -- AHB HSIZE constant definitions
    constant SZ_BYTE : std_logic_vector(2 downto 0) := "000";
    constant SZ_HALF : std_logic_vector(2 downto 0) := "001";
    constant SZ_WORD : std_logic_vector(2 downto 0) := "010";

    -- ---------------------------------------------------------------------
    -- Signal declarations
    -- ---------------------------------------------------------------------
    SIGNAL sramCtrlSMCurrentState   :  sramctrl_state_names;
    SIGNAL sramCtrlSMNextState      :  sramctrl_state_names;
    SIGNAL sramWriteEnable          :  std_logic;
    SIGNAL ckAccessSize             :  std_logic_vector(2 DOWNTO 0);
    SIGNAL ckAccessAddr             :  std_logic_vector(14 DOWNTO 0);
    SIGNAL isramWADDR               :  std_logic_vector(14 DOWNTO 0);

BEGIN
    sramWADDR <= isramWADDR;

    ------------------------------------------------------------------------
    -- Main body of code
    ------------------------------------------------------------------------
    -- SramCtrl State Machine (next state decode and output decode)

    PROCESS (sramCtrlSMCurrentState, ahbReq, ahbWrite, nextAhbReq, HWRITE)
    BEGIN
        ahbAck <= '0';
        sramREN <= '0';
        sramWriteEnable <= '0';

        CASE sramCtrlSMCurrentState IS
            WHEN IDLE =>
                        IF (ahbReq = '1') THEN
                            IF (ahbWrite = '1') THEN
                                sramCtrlSMNextState <= W;
                            ELSE
                                sramREN <= '1';
                                sramCtrlSMNextState <= R;
                            END IF;
                        ELSE
                            sramCtrlSMNextState <= IDLE;
                        END IF;
            WHEN W =>
                        ahbAck <= '1';
                        sramWriteEnable <= '1';
                        IF (nextAhbReq = '1') THEN
                            IF (HWRITE = '1') THEN
                                sramCtrlSMNextState <= W;
                            ELSE
                                sramCtrlSMNextState <= IDLE;
                            END IF;
                        ELSE
                            sramCtrlSMNextState <= IDLE;
                        END IF;
            WHEN R =>
                        ahbAck <= '1';
                        IF (nextAhbReq = '1') THEN
                            IF (HWRITE = '1') THEN
                                sramCtrlSMNextState <= W;
                            ELSE
                                sramREN <= '1';
                                sramCtrlSMNextState <= R;
                            END IF;
                        ELSE
                            sramCtrlSMNextState <= IDLE;
                        END IF;
            WHEN OTHERS  =>
                        sramCtrlSMNextState <= IDLE;

        END CASE;
    END PROCESS;

    PROCESS (HCLK, HRESETn)
    BEGIN
        IF (NOT HRESETn = '1') THEN
            sramCtrlSMCurrentState <= IDLE;
        ELSIF (HCLK'EVENT AND HCLK = '1') THEN
            sramCtrlSMCurrentState <= sramCtrlSMNextState;
        END IF;
    END PROCESS;

    -- Implement clocking of Sram write address

    PROCESS (HCLK, HRESETn)
    BEGIN
        IF (NOT HRESETn = '1') THEN
            ckAccessAddr <= "000000000000000";
            ckAccessSize <= "000";
        ELSIF (HCLK'EVENT AND HCLK = '1') THEN
            ckAccessAddr <= ahbAddr;
            ckAccessSize <= ahbSize;
        END IF;
    END PROCESS;
    isramWADDR <= ckAccessAddr ;

    -- Implement decoding of byte write enables

    PROCESS (ckAccessSize, isramWADDR, sramWriteEnable)
    BEGIN
        sramWEN <= "0000";
        CASE ckAccessSize(1 DOWNTO 0) IS
            WHEN "00" =>
                        CASE isramWADDR(1 DOWNTO 0) IS
                            WHEN "00" =>
                                        sramWEN(0) <= sramWriteEnable;
                            WHEN "01" =>
                                        sramWEN(1) <= sramWriteEnable;
                            WHEN "10" =>
                                        sramWEN(2) <= sramWriteEnable;
                            WHEN "11" =>
                                        sramWEN(3) <= sramWriteEnable;
                            WHEN OTHERS =>
                                        NULL;

                        END CASE;
            WHEN "01" =>
                        CASE isramWADDR(1) IS
                            WHEN '0' =>
                                        sramWEN(0) <= sramWriteEnable;
                                        sramWEN(1) <= sramWriteEnable;
                            WHEN '1' =>
                                        sramWEN(2) <= sramWriteEnable;
                                        sramWEN(3) <= sramWriteEnable;
                            WHEN OTHERS =>
                                        NULL;

                        END CASE;
            WHEN OTHERS  =>
                        sramWEN <= sramWriteEnable & sramWriteEnable & sramWriteEnable & sramWriteEnable;

        END CASE;
    END PROCESS;

    -- Byte-lane replication
    -- No need to replicate byte lanes on writes, as processor does that.
    -- For byte or halfword reads, need lane replication.

    PROCESS (ckAccessSize, sramRD, ckAccessAddr)
    BEGIN
        CASE ckAccessSize(1 DOWNTO 0) IS
            WHEN "00" =>
                        CASE ckAccessAddr(1 DOWNTO 0) IS
                            WHEN "00" =>
                                        HRDATA <= sramRD(7 DOWNTO 0) & sramRD(7 DOWNTO 0) & sramRD(7 DOWNTO 0) & sramRD(7 DOWNTO 0);
                            WHEN "01" =>
                                        HRDATA <= sramRD(15 DOWNTO 8) & sramRD(15 DOWNTO 8) & sramRD(15 DOWNTO 8) & sramRD(15 DOWNTO 8);
                            WHEN "10" =>
                                        HRDATA <= sramRD(23 DOWNTO 16) & sramRD(23 DOWNTO 16) & sramRD(23 DOWNTO 16) & sramRD(23 DOWNTO 16);
                            WHEN "11" =>
                                        HRDATA <= sramRD(31 DOWNTO 24) & sramRD(31 DOWNTO 24) & sramRD(31 DOWNTO 24) & sramRD(31 DOWNTO 24);
                            WHEN OTHERS =>
                                        NULL;

                        END CASE;
            WHEN "01" =>
                        CASE ckAccessAddr(1) IS
                            WHEN '0' =>
                                        HRDATA <= sramRD(15 DOWNTO 0) & sramRD(15 DOWNTO 0);
                            WHEN '1' =>
                                        HRDATA <= sramRD(31 DOWNTO 16) & sramRD(31 DOWNTO 16);
                            WHEN OTHERS =>
                                        NULL;

                        END CASE;
            WHEN OTHERS  =>
                        HRDATA <= sramRD;

        END CASE;
    END PROCESS;

END RTL;
