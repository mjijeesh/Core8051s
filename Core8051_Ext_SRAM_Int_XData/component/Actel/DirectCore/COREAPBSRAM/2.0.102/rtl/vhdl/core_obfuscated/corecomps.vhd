-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- SVN Revision Information:
-- SVN $Revision: 5996 $
-- SVN $Date: 2009-01-16 11:28:16 +0000 (Fri, 16 Jan 2009) $
--
-- ********************************************************************/
library ieeE;
use IEee.STD_loGIC_1164.all;
package coRECOMPs is

component CoreApbSRAM_L
generic (CorEAPBSram_i: INTEger);
port (CoREAPBSram_ol: in STD_logic;
CoreApbSRAM_LL: in STD_logic;
CoreApbSRAM_IL: in std_lOGIC;
CoreAPBSRAm_oi: in std_logIC;
COREApbSram_LI: in std_LOGIC_vector(12 downto 0);
COReApbSraM_II: in STd_logic_VECTOr(12 downto 0);
COReApbSram_O0: in STd_logiC_VECTor(7 downto 0);
CoreApBSRAM_l0: out sTD_LOgic_vecTOR(7 downto 0));
end component;
end corecOMPS;
