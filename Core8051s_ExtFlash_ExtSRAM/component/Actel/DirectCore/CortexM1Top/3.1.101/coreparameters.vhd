----------------------------------------------------------------------
-- Created by Actel SmartDesign Tue Apr 30 13:05:36 2013
-- Parameters for CortexM1Top
----------------------------------------------------------------------


package coreparameters is
    constant CONFIG : integer := 289;
    constant DEBUG_CONFIG : integer := 1;
    constant DEBUG_IF : integer := 0;
    constant DEBUG_INCL : integer := 0;
    constant DEBUG_RESET : integer := 0;
    constant DIE : string( 1 to 9 ) := "M1AFS1500";
    constant ITCM_ALIAS : integer := 1;
    constant UJ_CLK_ON_GLOBAL : integer := 1;
    constant UJ_RST_ON_GLOBAL : integer := 0;
end coreparameters;
