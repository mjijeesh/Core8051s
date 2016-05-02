-- Version: v11.7 11.7.0.119

library ieee;
use ieee.std_logic_1164.all;
library fusion;
use fusion.all;

entity rc_osc is

    port( CLKOUT : out   std_logic
        );

end rc_osc;

architecture DEF_ARCH of rc_osc is 

  component RCOSC
    port( CLKOUT : out   std_logic
        );
  end component;


begin 


    RCOSC1 : RCOSC
      port map(CLKOUT => CLKOUT);
    

end DEF_ARCH; 

-- _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


-- _GEN_File_Contents_

-- Version:11.7.0.119
-- ACTGENU_CALL:1
-- BATCH:T
-- FAM:PA3SOC
-- OUTFORMAT:VHDL
-- LPMTYPE:LPM_CCC_RCOSC
-- LPM_HINT:NONE
-- INSERT_PAD:NO
-- INSERT_IOREG:NO
-- GEN_BHV_VHDL_VAL:F
-- GEN_BHV_VERILOG_VAL:F
-- MGNTIMER:F
-- MGNCMPL:T
-- DESDIR:C:/proj/dev-kits/m1afs-adv-dev-kit/Core8051_Ext_SRAM_Int_XData/smartgen\rc_osc
-- GEN_BEHV_MODULE:F
-- SMARTGEN_DIE:M1IR10X10M3
-- SMARTGEN_PACKAGE:fg484
-- AGENIII_IS_SUBPROJECT_LIBERO:T
-- DRIVE_MODE:1

-- _End_Comments_

