-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:  CoreApbSram
--               components package
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

library ieee;
use ieee.std_logic_1164.all;

package components is

component COREAPBSRAM
   GENERIC (
      FAMILY               : INTEGER := 17;
      RAM_BLOCK_INSTANCES  : INTEGER := 4;
      APB_DWIDTH           : INTEGER := 32
   );
   PORT (
      --APB IO
      --inputs
      PCLK                 : IN STD_LOGIC;
      PRESETN              : IN STD_LOGIC;
      PSEL                 : IN STD_LOGIC;
      PENABLE              : IN STD_LOGIC;
      PWRITE               : IN STD_LOGIC;
      PADDR                : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
      PWDATA               : IN STD_LOGIC_VECTOR(APB_DWIDTH-1 DOWNTO 0);
      --outputs
      PRDATA               : OUT STD_LOGIC_VECTOR(APB_DWIDTH-1 DOWNTO 0);
      PREADY               : OUT STD_LOGIC;
      PSLVERR              : OUT STD_LOGIC
   );
end component;

end components;
