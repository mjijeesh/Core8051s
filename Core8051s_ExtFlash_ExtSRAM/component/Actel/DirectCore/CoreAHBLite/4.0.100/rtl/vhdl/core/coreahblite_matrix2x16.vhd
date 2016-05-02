-- ********************************************************************/
-- Actel Corporation Proprietary and Confidential
-- Copyright 2010 Actel Corporation.  All rights reserved.
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- Description:	CoreAHBLite matrix logic for
--				2 masters by 16 slaves,
--				instantiates the following modules:
--				COREAHBLITE_MASTERSTAGE, COREAHBLITE_SLAVESTAGE,
--				COREAHBLITE_INITCFG
--
-- Revision Information:
-- Date			Description
-- ----			-----------------------------------------
-- 10Feb10		Production Release Version 3.1
--
-- SVN Revision Information:
-- SVN $Revision: 18409 $
-- SVN $Date: 2012-11-12 07:08:50 -0800 (Mon, 12 Nov 2012) $
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
entity COREAHBLITE_MATRIX2X16 is
    generic (
        MEMSPACE          : integer range 0 to 6 := 0;
        HADDR_SHG_CFG     : integer range 0 to 1 := 1;
        SC                : integer range 0 to (2**16)-1:= 0;
        M0_AHBSLOTENABLE  : integer range 0 to (2**17)-1:= (2**17)-1;
        M1_AHBSLOTENABLE  : integer range 0 to (2**17)-1:= (2**17)-1
    );
    port (
        HCLK              : in std_logic;
        HRESETN           : in std_logic;
        REMAP_M0          : in std_logic;
        HADDR_M0          : in std_logic_vector(31 downto 0);
        HMASTLOCK_M0      : in std_logic;
        HSIZE_M0          : in std_logic_vector(2 downto 0);
        HTRANS_M0         : in std_logic;
        HWRITE_M0         : in std_logic;
        HWDATA_M0         : in std_logic_vector(31 downto 0);
        HRESP_M0          : out std_logic;
        HRDATA_M0         : out std_logic_vector(31 downto 0);
        HREADY_M0         : out std_logic;
        HADDR_M1          : in std_logic_vector(31 downto 0);
        HMASTLOCK_M1      : in std_logic;
        HSIZE_M1          : in std_logic_vector(2 downto 0);
        HTRANS_M1         : in std_logic;
        HWRITE_M1         : in std_logic;
        HWDATA_M1         : in std_logic_vector(31 downto 0);
        HRESP_M1          : out std_logic;
        HRDATA_M1         : out std_logic_vector(31 downto 0);
        HREADY_M1         : out std_logic;
        HRDATA_S0         : in std_logic_vector(31 downto 0);
        HREADYOUT_S0      : in std_logic;
        HRESP_S0          : in std_logic;
        HSEL_S0           : out std_logic;
        HADDR_S0          : out std_logic_vector(31 downto 0);
        HSIZE_S0          : out std_logic_vector(2 downto 0);
        HTRANS_S0         : out std_logic;
        HWRITE_S0         : out std_logic;
        HWDATA_S0         : out std_logic_vector(31 downto 0);
        HREADY_S0         : out std_logic;
        HMASTLOCK_S0      : out std_logic;
        HRDATA_S1         : in std_logic_vector(31 downto 0);
        HREADYOUT_S1      : in std_logic;
        HRESP_S1          : in std_logic;
        HSEL_S1           : out std_logic;
        HADDR_S1          : out std_logic_vector(31 downto 0);
        HSIZE_S1          : out std_logic_vector(2 downto 0);
        HTRANS_S1         : out std_logic;
        HWRITE_S1         : out std_logic;
        HWDATA_S1         : out std_logic_vector(31 downto 0);
        HREADY_S1         : out std_logic;
        HMASTLOCK_S1      : out std_logic;
        HRDATA_S2         : in std_logic_vector(31 downto 0);
        HREADYOUT_S2      : in std_logic;
        HRESP_S2          : in std_logic;
        HSEL_S2           : out std_logic;
        HADDR_S2          : out std_logic_vector(31 downto 0);
        HSIZE_S2          : out std_logic_vector(2 downto 0);
        HTRANS_S2         : out std_logic;
        HWRITE_S2         : out std_logic;
        HWDATA_S2         : out std_logic_vector(31 downto 0);
        HREADY_S2         : out std_logic;
        HMASTLOCK_S2      : out std_logic;
        HRDATA_S3         : in std_logic_vector(31 downto 0);
        HREADYOUT_S3      : in std_logic;
        HRESP_S3          : in std_logic;
        HSEL_S3           : out std_logic;
        HADDR_S3          : out std_logic_vector(31 downto 0);
        HSIZE_S3          : out std_logic_vector(2 downto 0);
        HTRANS_S3         : out std_logic;
        HWRITE_S3         : out std_logic;
        HWDATA_S3         : out std_logic_vector(31 downto 0);
        HREADY_S3         : out std_logic;
        HMASTLOCK_S3      : out std_logic;
        HRDATA_S4         : in std_logic_vector(31 downto 0);
        HREADYOUT_S4      : in std_logic;
        HRESP_S4          : in std_logic;
        HSEL_S4           : out std_logic;
        HADDR_S4          : out std_logic_vector(31 downto 0);
        HSIZE_S4          : out std_logic_vector(2 downto 0);
        HTRANS_S4         : out std_logic;
        HWRITE_S4         : out std_logic;
        HWDATA_S4         : out std_logic_vector(31 downto 0);
        HREADY_S4         : out std_logic;
        HMASTLOCK_S4      : out std_logic;
        HRDATA_S5         : in std_logic_vector(31 downto 0);
        HREADYOUT_S5      : in std_logic;
        HRESP_S5          : in std_logic;
        HSEL_S5           : out std_logic;
        HADDR_S5          : out std_logic_vector(31 downto 0);
        HSIZE_S5          : out std_logic_vector(2 downto 0);
        HTRANS_S5         : out std_logic;
        HWRITE_S5         : out std_logic;
        HWDATA_S5         : out std_logic_vector(31 downto 0);
        HREADY_S5         : out std_logic;
        HMASTLOCK_S5      : out std_logic;
        HRDATA_S6         : in std_logic_vector(31 downto 0);
        HREADYOUT_S6      : in std_logic;
        HRESP_S6          : in std_logic;
        HSEL_S6           : out std_logic;
        HADDR_S6          : out std_logic_vector(31 downto 0);
        HSIZE_S6          : out std_logic_vector(2 downto 0);
        HTRANS_S6         : out std_logic;
        HWRITE_S6         : out std_logic;
        HWDATA_S6         : out std_logic_vector(31 downto 0);
        HREADY_S6         : out std_logic;
        HMASTLOCK_S6      : out std_logic;
        HRDATA_S7         : in std_logic_vector(31 downto 0);
        HREADYOUT_S7      : in std_logic;
        HRESP_S7          : in std_logic;
        HSEL_S7           : out std_logic;
        HADDR_S7          : out std_logic_vector(31 downto 0);
        HSIZE_S7          : out std_logic_vector(2 downto 0);
        HTRANS_S7         : out std_logic;
        HWRITE_S7         : out std_logic;
        HWDATA_S7         : out std_logic_vector(31 downto 0);
        HREADY_S7         : out std_logic;
        HMASTLOCK_S7      : out std_logic;
        HRDATA_S8         : in std_logic_vector(31 downto 0);
        HREADYOUT_S8      : in std_logic;
        HRESP_S8          : in std_logic;
        HSEL_S8           : out std_logic;
        HADDR_S8          : out std_logic_vector(31 downto 0);
        HSIZE_S8          : out std_logic_vector(2 downto 0);
        HTRANS_S8         : out std_logic;
        HWRITE_S8         : out std_logic;
        HWDATA_S8         : out std_logic_vector(31 downto 0);
        HREADY_S8         : out std_logic;
        HMASTLOCK_S8      : out std_logic;
        HRDATA_S9         : in std_logic_vector(31 downto 0);
        HREADYOUT_S9      : in std_logic;
        HRESP_S9          : in std_logic;
        HSEL_S9           : out std_logic;
        HADDR_S9          : out std_logic_vector(31 downto 0);
        HSIZE_S9          : out std_logic_vector(2 downto 0);
        HTRANS_S9         : out std_logic;
        HWRITE_S9         : out std_logic;
        HWDATA_S9         : out std_logic_vector(31 downto 0);
        HREADY_S9         : out std_logic;
        HMASTLOCK_S9      : out std_logic;
        HRDATA_S10        : in std_logic_vector(31 downto 0);
        HREADYOUT_S10     : in std_logic;
        HRESP_S10         : in std_logic;
        HSEL_S10          : out std_logic;
        HADDR_S10         : out std_logic_vector(31 downto 0);
        HSIZE_S10         : out std_logic_vector(2 downto 0);
        HTRANS_S10        : out std_logic;
        HWRITE_S10        : out std_logic;
        HWDATA_S10        : out std_logic_vector(31 downto 0);
        HREADY_S10        : out std_logic;
        HMASTLOCK_S10     : out std_logic;
        HRDATA_S11        : in std_logic_vector(31 downto 0);
        HREADYOUT_S11     : in std_logic;
        HRESP_S11         : in std_logic;
        HSEL_S11          : out std_logic;
        HADDR_S11         : out std_logic_vector(31 downto 0);
        HSIZE_S11         : out std_logic_vector(2 downto 0);
        HTRANS_S11        : out std_logic;
        HWRITE_S11        : out std_logic;
        HWDATA_S11        : out std_logic_vector(31 downto 0);
        HREADY_S11        : out std_logic;
        HMASTLOCK_S11     : out std_logic;
        HRDATA_S12        : in std_logic_vector(31 downto 0);
        HREADYOUT_S12     : in std_logic;
        HRESP_S12         : in std_logic;
        HSEL_S12          : out std_logic;
        HADDR_S12         : out std_logic_vector(31 downto 0);
        HSIZE_S12         : out std_logic_vector(2 downto 0);
        HTRANS_S12        : out std_logic;
        HWRITE_S12        : out std_logic;
        HWDATA_S12        : out std_logic_vector(31 downto 0);
        HREADY_S12        : out std_logic;
        HMASTLOCK_S12     : out std_logic;
        HRDATA_S13        : in std_logic_vector(31 downto 0);
        HREADYOUT_S13     : in std_logic;
        HRESP_S13         : in std_logic;
        HSEL_S13          : out std_logic;
        HADDR_S13         : out std_logic_vector(31 downto 0);
        HSIZE_S13         : out std_logic_vector(2 downto 0);
        HTRANS_S13        : out std_logic;
        HWRITE_S13        : out std_logic;
        HWDATA_S13        : out std_logic_vector(31 downto 0);
        HREADY_S13        : out std_logic;
        HMASTLOCK_S13     : out std_logic;
        HRDATA_S14        : in std_logic_vector(31 downto 0);
        HREADYOUT_S14     : in std_logic;
        HRESP_S14         : in std_logic;
        HSEL_S14          : out std_logic;
        HADDR_S14         : out std_logic_vector(31 downto 0);
        HSIZE_S14         : out std_logic_vector(2 downto 0);
        HTRANS_S14        : out std_logic;
        HWRITE_S14        : out std_logic;
        HWDATA_S14        : out std_logic_vector(31 downto 0);
        HREADY_S14        : out std_logic;
        HMASTLOCK_S14     : out std_logic;
        HRDATA_S15        : in std_logic_vector(31 downto 0);
        HREADYOUT_S15     : in std_logic;
        HRESP_S15         : in std_logic;
        HSEL_S15          : out std_logic;
        HADDR_S15         : out std_logic_vector(31 downto 0);
        HSIZE_S15         : out std_logic_vector(2 downto 0);
        HTRANS_S15        : out std_logic;
        HWRITE_S15        : out std_logic;
        HWDATA_S15        : out std_logic_vector(31 downto 0);
        HREADY_S15        : out std_logic;
        HMASTLOCK_S15     : out std_logic;
        HRDATA_S16        : in std_logic_vector(31 downto 0);
        HREADYOUT_S16     : in std_logic;
        HRESP_S16         : in std_logic;
        HSEL_S16          : out std_logic;
        HADDR_S16         : out std_logic_vector(31 downto 0);
        HSIZE_S16         : out std_logic_vector(2 downto 0);
        HTRANS_S16        : out std_logic;
        HWRITE_S16        : out std_logic;
        HWDATA_S16        : out std_logic_vector(31 downto 0);
        HREADY_S16        : out std_logic;
        HMASTLOCK_S16     : out std_logic
    );
end entity COREAHBLITE_MATRIX2X16;

architecture COREAHBLITE_MATRIX2X16_arch of COREAHBLITE_MATRIX2X16 is

constant M0_AHBSLOTENABLE_slv  : std_logic_vector(16 downto 0):=
	std_logic_vector(to_unsigned(M0_AHBSLOTENABLE,17));
constant M1_AHBSLOTENABLE_slv  : std_logic_vector(16 downto 0):=
	std_logic_vector(to_unsigned(M1_AHBSLOTENABLE,17));
constant SC_slv  : std_logic_vector(15 downto 0):=
    std_logic_vector(to_unsigned(SC,16));

    component COREAHBLITE_MASTERSTAGE is
        generic (
            MEMSPACE            : integer range 0 to 6 := 0;
            HADDR_SHG_CFG       : integer range 0 to 1 := 0;
            SC                  : integer range 0 to (2**16)-1 := 0;
            M_AHBSLOTENABLE     : integer range 0 to (2**17)-1 := (2**17)-1
        );
        port (
            HCLK              : in std_logic;
            HRESETN           : in std_logic;
            HADDR             : in std_logic_vector(31 downto 0);
            HMASTLOCK         : in std_logic;
            HSIZE             : in std_logic_vector(2 downto 0);
            HTRANS            : in std_logic;
            HWRITE            : in std_logic;
            HRESP             : out std_logic;
            HRDATA            : out std_logic_vector(31 downto 0);
            HREADY_M          : out std_logic;
            REMAP             : in std_logic;
            SADDRREADY        : in std_logic_vector(16 downto 0);
            SDATAREADY        : in std_logic_vector(16 downto 0);
            SHRESP            : in std_logic_vector(16 downto 0);
            GATEDHADDR        : out std_logic_vector(31 downto 0);
            GATEDHMASTLOCK    : out std_logic;
            GATEDHSIZE        : out std_logic_vector(2 downto 0);
            GATEDHTRANS       : out std_logic;
            GATEDHWRITE       : out std_logic;
            SADDRSEL          : out std_logic_vector(16 downto 0);
            SDATASEL          : out std_logic_vector(16 downto 0);
            PREVDATASLAVEREADY : out std_logic;
            HRDATA_S0         : in std_logic_vector(31 downto 0);
            HREADYOUT_S0      : in std_logic;
            HRDATA_S1         : in std_logic_vector(31 downto 0);
            HREADYOUT_S1      : in std_logic;
            HRDATA_S2         : in std_logic_vector(31 downto 0);
            HREADYOUT_S2      : in std_logic;
            HRDATA_S3         : in std_logic_vector(31 downto 0);
            HREADYOUT_S3      : in std_logic;
            HRDATA_S4         : in std_logic_vector(31 downto 0);
            HREADYOUT_S4      : in std_logic;
            HRDATA_S5         : in std_logic_vector(31 downto 0);
            HREADYOUT_S5      : in std_logic;
            HRDATA_S6         : in std_logic_vector(31 downto 0);
            HREADYOUT_S6      : in std_logic;
            HRDATA_S7         : in std_logic_vector(31 downto 0);
            HREADYOUT_S7      : in std_logic;
            HRDATA_S8         : in std_logic_vector(31 downto 0);
            HREADYOUT_S8      : in std_logic;
            HRDATA_S9         : in std_logic_vector(31 downto 0);
            HREADYOUT_S9      : in std_logic;
            HRDATA_S10        : in std_logic_vector(31 downto 0);
            HREADYOUT_S10     : in std_logic;
            HRDATA_S11        : in std_logic_vector(31 downto 0);
            HREADYOUT_S11     : in std_logic;
            HRDATA_S12        : in std_logic_vector(31 downto 0);
            HREADYOUT_S12     : in std_logic;
            HRDATA_S13        : in std_logic_vector(31 downto 0);
            HREADYOUT_S13     : in std_logic;
            HRDATA_S14        : in std_logic_vector(31 downto 0);
            HREADYOUT_S14     : in std_logic;
            HRDATA_S15        : in std_logic_vector(31 downto 0);
            HREADYOUT_S15     : in std_logic;
            HRDATA_S16        : in std_logic_vector(31 downto 0);
            HREADYOUT_S16     : in std_logic
        );
    end component;

    component COREAHBLITE_SLAVESTAGE is
        port (
            HCLK              : in std_logic;
            HRESETN           : in std_logic;
            HREADYOUT         : in std_logic;
            HRESP             : in std_logic;
            HSEL              : out std_logic;
            HADDR             : out std_logic_vector(31 downto 0);
            HSIZE             : out std_logic_vector(2 downto 0);
            HTRANS            : out std_logic;
            HWRITE            : out std_logic;
            HWDATA            : out std_logic_vector(31 downto 0);
            HREADY_S          : out std_logic;
            HMASTLOCK         : out std_logic;
            MADDRSEL          : in std_logic_vector(1 downto 0);
            MDATASEL          : in std_logic_vector(1 downto 0);
            MPREVDATASLAVEREADY : in std_logic_vector(1 downto 0);
            MADDRREADY        : out std_logic_vector(1 downto 0);
            MDATAREADY        : out std_logic_vector(1 downto 0);
            MHRESP            : out std_logic_vector(1 downto 0);
            M0GATEDHADDR      : in std_logic_vector(31 downto 0);
            M0GATEDHMASTLOCK  : in std_logic;
            M0GATEDHSIZE      : in std_logic_vector(2 downto 0);
            M0GATEDHTRANS     : in std_logic;
            M0GATEDHWRITE     : in std_logic;
            M1GATEDHADDR      : in std_logic_vector(31 downto 0);
            M1GATEDHMASTLOCK  : in std_logic;
            M1GATEDHSIZE      : in std_logic_vector(2 downto 0);
            M1GATEDHTRANS     : in std_logic;
            M1GATEDHWRITE     : in std_logic;
            HWDATA_M0         : in std_logic_vector(31 downto 0);
            HWDATA_M1         : in std_logic_vector(31 downto 0)
        );
    end component;

    signal M0GATEDHADDR            : std_logic_vector(31 downto 0);
    signal M0GATEDHMASTLOCK        : std_logic;
    signal M0GATEDHSIZE            : std_logic_vector(2 downto 0);
    signal M0GATEDHTRANS           : std_logic;
    signal M0GATEDHWRITE           : std_logic;
    signal m0PrevDataSlaveReady    : std_logic;
    signal m0s0AddrSel             : std_logic;
    signal m0s0DataSel             : std_logic;
    signal s0m0AddrReady           : std_logic;
    signal s0m0DataReady           : std_logic;
    signal s0m0HResp               : std_logic;
    signal m0s0AddrSel_int         : std_logic;
    signal m0s0DataSel_int         : std_logic;
    signal s0m0AddrReady_int       : std_logic;
    signal s0m0DataReady_int       : std_logic;
    signal s0m0HResp_int           : std_logic;
    signal m0s1AddrSel             : std_logic;
    signal m0s1DataSel             : std_logic;
    signal s1m0AddrReady           : std_logic;
    signal s1m0DataReady           : std_logic;
    signal s1m0HResp               : std_logic;
    signal m0s1AddrSel_int         : std_logic;
    signal m0s1DataSel_int         : std_logic;
    signal s1m0AddrReady_int       : std_logic;
    signal s1m0DataReady_int       : std_logic;
    signal s1m0HResp_int           : std_logic;
    signal m0s2AddrSel             : std_logic;
    signal m0s2DataSel             : std_logic;
    signal s2m0AddrReady           : std_logic;
    signal s2m0DataReady           : std_logic;
    signal s2m0HResp               : std_logic;
    signal m0s2AddrSel_int         : std_logic;
    signal m0s2DataSel_int         : std_logic;
    signal s2m0AddrReady_int       : std_logic;
    signal s2m0DataReady_int       : std_logic;
    signal s2m0HResp_int           : std_logic;
    signal m0s3AddrSel             : std_logic;
    signal m0s3DataSel             : std_logic;
    signal s3m0AddrReady           : std_logic;
    signal s3m0DataReady           : std_logic;
    signal s3m0HResp               : std_logic;
    signal m0s3AddrSel_int         : std_logic;
    signal m0s3DataSel_int         : std_logic;
    signal s3m0AddrReady_int       : std_logic;
    signal s3m0DataReady_int       : std_logic;
    signal s3m0HResp_int           : std_logic;
    signal m0s4AddrSel             : std_logic;
    signal m0s4DataSel             : std_logic;
    signal s4m0AddrReady           : std_logic;
    signal s4m0DataReady           : std_logic;
    signal s4m0HResp               : std_logic;
    signal m0s4AddrSel_int         : std_logic;
    signal m0s4DataSel_int         : std_logic;
    signal s4m0AddrReady_int       : std_logic;
    signal s4m0DataReady_int       : std_logic;
    signal s4m0HResp_int           : std_logic;
    signal m0s5AddrSel             : std_logic;
    signal m0s5DataSel             : std_logic;
    signal s5m0AddrReady           : std_logic;
    signal s5m0DataReady           : std_logic;
    signal s5m0HResp               : std_logic;
    signal m0s5AddrSel_int         : std_logic;
    signal m0s5DataSel_int         : std_logic;
    signal s5m0AddrReady_int       : std_logic;
    signal s5m0DataReady_int       : std_logic;
    signal s5m0HResp_int           : std_logic;
    signal m0s6AddrSel             : std_logic;
    signal m0s6DataSel             : std_logic;
    signal s6m0AddrReady           : std_logic;
    signal s6m0DataReady           : std_logic;
    signal s6m0HResp               : std_logic;
    signal m0s6AddrSel_int         : std_logic;
    signal m0s6DataSel_int         : std_logic;
    signal s6m0AddrReady_int       : std_logic;
    signal s6m0DataReady_int       : std_logic;
    signal s6m0HResp_int           : std_logic;
    signal m0s7AddrSel             : std_logic;
    signal m0s7DataSel             : std_logic;
    signal s7m0AddrReady           : std_logic;
    signal s7m0DataReady           : std_logic;
    signal s7m0HResp               : std_logic;
    signal m0s7AddrSel_int         : std_logic;
    signal m0s7DataSel_int         : std_logic;
    signal s7m0AddrReady_int       : std_logic;
    signal s7m0DataReady_int       : std_logic;
    signal s7m0HResp_int           : std_logic;
    signal m0s8AddrSel             : std_logic;
    signal m0s8DataSel             : std_logic;
    signal s8m0AddrReady           : std_logic;
    signal s8m0DataReady           : std_logic;
    signal s8m0HResp               : std_logic;
    signal m0s8AddrSel_int         : std_logic;
    signal m0s8DataSel_int         : std_logic;
    signal s8m0AddrReady_int       : std_logic;
    signal s8m0DataReady_int       : std_logic;
    signal s8m0HResp_int           : std_logic;
    signal m0s9AddrSel             : std_logic;
    signal m0s9DataSel             : std_logic;
    signal s9m0AddrReady           : std_logic;
    signal s9m0DataReady           : std_logic;
    signal s9m0HResp               : std_logic;
    signal m0s9AddrSel_int         : std_logic;
    signal m0s9DataSel_int         : std_logic;
    signal s9m0AddrReady_int       : std_logic;
    signal s9m0DataReady_int       : std_logic;
    signal s9m0HResp_int           : std_logic;
    signal m0s10AddrSel            : std_logic;
    signal m0s10DataSel            : std_logic;
    signal s10m0AddrReady          : std_logic;
    signal s10m0DataReady          : std_logic;
    signal s10m0HResp              : std_logic;
    signal m0s10AddrSel_int        : std_logic;
    signal m0s10DataSel_int        : std_logic;
    signal s10m0AddrReady_int      : std_logic;
    signal s10m0DataReady_int      : std_logic;
    signal s10m0HResp_int          : std_logic;
    signal m0s11AddrSel            : std_logic;
    signal m0s11DataSel            : std_logic;
    signal s11m0AddrReady          : std_logic;
    signal s11m0DataReady          : std_logic;
    signal s11m0HResp              : std_logic;
    signal m0s11AddrSel_int        : std_logic;
    signal m0s11DataSel_int        : std_logic;
    signal s11m0AddrReady_int      : std_logic;
    signal s11m0DataReady_int      : std_logic;
    signal s11m0HResp_int          : std_logic;
    signal m0s12AddrSel            : std_logic;
    signal m0s12DataSel            : std_logic;
    signal s12m0AddrReady          : std_logic;
    signal s12m0DataReady          : std_logic;
    signal s12m0HResp              : std_logic;
    signal m0s12AddrSel_int        : std_logic;
    signal m0s12DataSel_int        : std_logic;
    signal s12m0AddrReady_int      : std_logic;
    signal s12m0DataReady_int      : std_logic;
    signal s12m0HResp_int          : std_logic;
    signal m0s13AddrSel            : std_logic;
    signal m0s13DataSel            : std_logic;
    signal s13m0AddrReady          : std_logic;
    signal s13m0DataReady          : std_logic;
    signal s13m0HResp              : std_logic;
    signal m0s13AddrSel_int        : std_logic;
    signal m0s13DataSel_int        : std_logic;
    signal s13m0AddrReady_int      : std_logic;
    signal s13m0DataReady_int      : std_logic;
    signal s13m0HResp_int          : std_logic;
    signal m0s14AddrSel            : std_logic;
    signal m0s14DataSel            : std_logic;
    signal s14m0AddrReady          : std_logic;
    signal s14m0DataReady          : std_logic;
    signal s14m0HResp              : std_logic;
    signal m0s14AddrSel_int        : std_logic;
    signal m0s14DataSel_int        : std_logic;
    signal s14m0AddrReady_int      : std_logic;
    signal s14m0DataReady_int      : std_logic;
    signal s14m0HResp_int          : std_logic;
    signal m0s15AddrSel            : std_logic;
    signal m0s15DataSel            : std_logic;
    signal s15m0AddrReady          : std_logic;
    signal s15m0DataReady          : std_logic;
    signal s15m0HResp              : std_logic;
    signal m0s15AddrSel_int        : std_logic;
    signal m0s15DataSel_int        : std_logic;
    signal s15m0AddrReady_int      : std_logic;
    signal s15m0DataReady_int      : std_logic;
    signal s15m0HResp_int          : std_logic;
    signal m0s16AddrSel            : std_logic;
    signal m0s16DataSel            : std_logic;
    signal s16m0AddrReady          : std_logic;
    signal s16m0DataReady          : std_logic;
    signal s16m0HResp              : std_logic;
    signal m0s16AddrSel_int        : std_logic;
    signal m0s16DataSel_int        : std_logic;
    signal s16m0AddrReady_int      : std_logic;
    signal s16m0DataReady_int      : std_logic;
    signal s16m0HResp_int          : std_logic;
    signal M1GATEDHADDR            : std_logic_vector(31 downto 0);
    signal M1GATEDHMASTLOCK        : std_logic;
    signal M1GATEDHSIZE            : std_logic_vector(2 downto 0);
    signal M1GATEDHTRANS           : std_logic;
    signal M1GATEDHWRITE           : std_logic;
    signal m1PrevDataSlaveReady    : std_logic;
    signal m1s0AddrSel             : std_logic;
    signal m1s0DataSel             : std_logic;
    signal s0m1AddrReady           : std_logic;
    signal s0m1DataReady           : std_logic;
    signal s0m1HResp               : std_logic;
    signal m1s0AddrSel_int         : std_logic;
    signal m1s0DataSel_int         : std_logic;
    signal s0m1AddrReady_int       : std_logic;
    signal s0m1DataReady_int       : std_logic;
    signal s0m1HResp_int           : std_logic;
    signal m1s1AddrSel             : std_logic;
    signal m1s1DataSel             : std_logic;
    signal s1m1AddrReady           : std_logic;
    signal s1m1DataReady           : std_logic;
    signal s1m1HResp               : std_logic;
    signal m1s1AddrSel_int         : std_logic;
    signal m1s1DataSel_int         : std_logic;
    signal s1m1AddrReady_int       : std_logic;
    signal s1m1DataReady_int       : std_logic;
    signal s1m1HResp_int           : std_logic;
    signal m1s2AddrSel             : std_logic;
    signal m1s2DataSel             : std_logic;
    signal s2m1AddrReady           : std_logic;
    signal s2m1DataReady           : std_logic;
    signal s2m1HResp               : std_logic;
    signal m1s2AddrSel_int         : std_logic;
    signal m1s2DataSel_int         : std_logic;
    signal s2m1AddrReady_int       : std_logic;
    signal s2m1DataReady_int       : std_logic;
    signal s2m1HResp_int           : std_logic;
    signal m1s3AddrSel             : std_logic;
    signal m1s3DataSel             : std_logic;
    signal s3m1AddrReady           : std_logic;
    signal s3m1DataReady           : std_logic;
    signal s3m1HResp               : std_logic;
    signal m1s3AddrSel_int         : std_logic;
    signal m1s3DataSel_int         : std_logic;
    signal s3m1AddrReady_int       : std_logic;
    signal s3m1DataReady_int       : std_logic;
    signal s3m1HResp_int           : std_logic;
    signal m1s4AddrSel             : std_logic;
    signal m1s4DataSel             : std_logic;
    signal s4m1AddrReady           : std_logic;
    signal s4m1DataReady           : std_logic;
    signal s4m1HResp               : std_logic;
    signal m1s4AddrSel_int         : std_logic;
    signal m1s4DataSel_int         : std_logic;
    signal s4m1AddrReady_int       : std_logic;
    signal s4m1DataReady_int       : std_logic;
    signal s4m1HResp_int           : std_logic;
    signal m1s5AddrSel             : std_logic;
    signal m1s5DataSel             : std_logic;
    signal s5m1AddrReady           : std_logic;
    signal s5m1DataReady           : std_logic;
    signal s5m1HResp               : std_logic;
    signal m1s5AddrSel_int         : std_logic;
    signal m1s5DataSel_int         : std_logic;
    signal s5m1AddrReady_int       : std_logic;
    signal s5m1DataReady_int       : std_logic;
    signal s5m1HResp_int           : std_logic;
    signal m1s6AddrSel             : std_logic;
    signal m1s6DataSel             : std_logic;
    signal s6m1AddrReady           : std_logic;
    signal s6m1DataReady           : std_logic;
    signal s6m1HResp               : std_logic;
    signal m1s6AddrSel_int         : std_logic;
    signal m1s6DataSel_int         : std_logic;
    signal s6m1AddrReady_int       : std_logic;
    signal s6m1DataReady_int       : std_logic;
    signal s6m1HResp_int           : std_logic;
    signal m1s7AddrSel             : std_logic;
    signal m1s7DataSel             : std_logic;
    signal s7m1AddrReady           : std_logic;
    signal s7m1DataReady           : std_logic;
    signal s7m1HResp               : std_logic;
    signal m1s7AddrSel_int         : std_logic;
    signal m1s7DataSel_int         : std_logic;
    signal s7m1AddrReady_int       : std_logic;
    signal s7m1DataReady_int       : std_logic;
    signal s7m1HResp_int           : std_logic;
    signal m1s8AddrSel             : std_logic;
    signal m1s8DataSel             : std_logic;
    signal s8m1AddrReady           : std_logic;
    signal s8m1DataReady           : std_logic;
    signal s8m1HResp               : std_logic;
    signal m1s8AddrSel_int         : std_logic;
    signal m1s8DataSel_int         : std_logic;
    signal s8m1AddrReady_int       : std_logic;
    signal s8m1DataReady_int       : std_logic;
    signal s8m1HResp_int           : std_logic;
    signal m1s9AddrSel             : std_logic;
    signal m1s9DataSel             : std_logic;
    signal s9m1AddrReady           : std_logic;
    signal s9m1DataReady           : std_logic;
    signal s9m1HResp               : std_logic;
    signal m1s9AddrSel_int         : std_logic;
    signal m1s9DataSel_int         : std_logic;
    signal s9m1AddrReady_int       : std_logic;
    signal s9m1DataReady_int       : std_logic;
    signal s9m1HResp_int           : std_logic;
    signal m1s10AddrSel            : std_logic;
    signal m1s10DataSel            : std_logic;
    signal s10m1AddrReady          : std_logic;
    signal s10m1DataReady          : std_logic;
    signal s10m1HResp              : std_logic;
    signal m1s10AddrSel_int        : std_logic;
    signal m1s10DataSel_int        : std_logic;
    signal s10m1AddrReady_int      : std_logic;
    signal s10m1DataReady_int      : std_logic;
    signal s10m1HResp_int          : std_logic;
    signal m1s11AddrSel            : std_logic;
    signal m1s11DataSel            : std_logic;
    signal s11m1AddrReady          : std_logic;
    signal s11m1DataReady          : std_logic;
    signal s11m1HResp              : std_logic;
    signal m1s11AddrSel_int        : std_logic;
    signal m1s11DataSel_int        : std_logic;
    signal s11m1AddrReady_int      : std_logic;
    signal s11m1DataReady_int      : std_logic;
    signal s11m1HResp_int          : std_logic;
    signal m1s12AddrSel            : std_logic;
    signal m1s12DataSel            : std_logic;
    signal s12m1AddrReady          : std_logic;
    signal s12m1DataReady          : std_logic;
    signal s12m1HResp              : std_logic;
    signal m1s12AddrSel_int        : std_logic;
    signal m1s12DataSel_int        : std_logic;
    signal s12m1AddrReady_int      : std_logic;
    signal s12m1DataReady_int      : std_logic;
    signal s12m1HResp_int          : std_logic;
    signal m1s13AddrSel            : std_logic;
    signal m1s13DataSel            : std_logic;
    signal s13m1AddrReady          : std_logic;
    signal s13m1DataReady          : std_logic;
    signal s13m1HResp              : std_logic;
    signal m1s13AddrSel_int        : std_logic;
    signal m1s13DataSel_int        : std_logic;
    signal s13m1AddrReady_int      : std_logic;
    signal s13m1DataReady_int      : std_logic;
    signal s13m1HResp_int          : std_logic;
    signal m1s14AddrSel            : std_logic;
    signal m1s14DataSel            : std_logic;
    signal s14m1AddrReady          : std_logic;
    signal s14m1DataReady          : std_logic;
    signal s14m1HResp              : std_logic;
    signal m1s14AddrSel_int        : std_logic;
    signal m1s14DataSel_int        : std_logic;
    signal s14m1AddrReady_int      : std_logic;
    signal s14m1DataReady_int      : std_logic;
    signal s14m1HResp_int          : std_logic;
    signal m1s15AddrSel            : std_logic;
    signal m1s15DataSel            : std_logic;
    signal s15m1AddrReady          : std_logic;
    signal s15m1DataReady          : std_logic;
    signal s15m1HResp              : std_logic;
    signal m1s15AddrSel_int        : std_logic;
    signal m1s15DataSel_int        : std_logic;
    signal s15m1AddrReady_int      : std_logic;
    signal s15m1DataReady_int      : std_logic;
    signal s15m1HResp_int          : std_logic;
    signal m1s16AddrSel            : std_logic;
    signal m1s16DataSel            : std_logic;
    signal s16m1AddrReady          : std_logic;
    signal s16m1DataReady          : std_logic;
    signal s16m1HResp              : std_logic;
    signal m1s16AddrSel_int        : std_logic;
    signal m1s16DataSel_int        : std_logic;
    signal s16m1AddrReady_int      : std_logic;
    signal s16m1DataReady_int      : std_logic;
    signal s16m1HResp_int          : std_logic;
    signal HREADYOUT_cl            : std_logic;
    signal M0_HRDATA_S0            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S1            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S2            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S3            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S4            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S5            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S6            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S7            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S8            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S9            : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S10           : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S11           : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S12           : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S13           : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S14           : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S15           : std_logic_vector(31 downto 0);
    signal M0_HRDATA_S16           : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S0            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S1            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S2            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S3            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S4            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S5            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S6            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S7            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S8            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S9            : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S10           : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S11           : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S12           : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S13           : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S14           : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S15           : std_logic_vector(31 downto 0);
    signal M1_HRDATA_S16           : std_logic_vector(31 downto 0);
    signal M0_HREADYOUT_S0         : std_logic;
    signal M0_HREADYOUT_S1         : std_logic;
    signal M0_HREADYOUT_S2         : std_logic;
    signal M0_HREADYOUT_S3         : std_logic;
    signal M0_HREADYOUT_S4         : std_logic;
    signal M0_HREADYOUT_S5         : std_logic;
    signal M0_HREADYOUT_S6         : std_logic;
    signal M0_HREADYOUT_S7         : std_logic;
    signal M0_HREADYOUT_S8         : std_logic;
    signal M0_HREADYOUT_S9         : std_logic;
    signal M0_HREADYOUT_S10        : std_logic;
    signal M0_HREADYOUT_S11        : std_logic;
    signal M0_HREADYOUT_S12        : std_logic;
    signal M0_HREADYOUT_S13        : std_logic;
    signal M0_HREADYOUT_S14        : std_logic;
    signal M0_HREADYOUT_S15        : std_logic;
    signal M0_HREADYOUT_S16        : std_logic;
    signal M0_HREADYOUT_cl         : std_logic;
    signal M1_HREADYOUT_S0         : std_logic;
    signal M1_HREADYOUT_S1         : std_logic;
    signal M1_HREADYOUT_S2         : std_logic;
    signal M1_HREADYOUT_S3         : std_logic;
    signal M1_HREADYOUT_S4         : std_logic;
    signal M1_HREADYOUT_S5         : std_logic;
    signal M1_HREADYOUT_S6         : std_logic;
    signal M1_HREADYOUT_S7         : std_logic;
    signal M1_HREADYOUT_S8         : std_logic;
    signal M1_HREADYOUT_S9         : std_logic;
    signal M1_HREADYOUT_S10        : std_logic;
    signal M1_HREADYOUT_S11        : std_logic;
    signal M1_HREADYOUT_S12        : std_logic;
    signal M1_HREADYOUT_S13        : std_logic;
    signal M1_HREADYOUT_S14        : std_logic;
    signal M1_HREADYOUT_S15        : std_logic;
    signal M1_HREADYOUT_S16        : std_logic;
    signal M1_HREADYOUT_cl         : std_logic;
    signal INT_HREADYOUT_S0        : std_logic;
    signal INT_HREADYOUT_S1        : std_logic;
    signal INT_HREADYOUT_S2        : std_logic;
    signal INT_HREADYOUT_S3        : std_logic;
    signal INT_HREADYOUT_S4        : std_logic;
    signal INT_HREADYOUT_S5        : std_logic;
    signal INT_HREADYOUT_S6        : std_logic;
    signal INT_HREADYOUT_S7        : std_logic;
    signal INT_HREADYOUT_S8        : std_logic;
    signal INT_HREADYOUT_S9        : std_logic;
    signal INT_HREADYOUT_S10       : std_logic;
    signal INT_HREADYOUT_S11       : std_logic;
    signal INT_HREADYOUT_S12       : std_logic;
    signal INT_HREADYOUT_S13       : std_logic;
    signal INT_HREADYOUT_S14       : std_logic;
    signal INT_HREADYOUT_S15       : std_logic;
    signal INT_HREADYOUT_S16       : std_logic;
    signal INT_HRESP_S0            : std_logic;
    signal INT_HRESP_S1            : std_logic;
    signal INT_HRESP_S2            : std_logic;
    signal INT_HRESP_S3            : std_logic;
    signal INT_HRESP_S4            : std_logic;
    signal INT_HRESP_S5            : std_logic;
    signal INT_HRESP_S6            : std_logic;
    signal INT_HRESP_S7            : std_logic;
    signal INT_HRESP_S8            : std_logic;
    signal INT_HRESP_S9            : std_logic;
    signal INT_HRESP_S10           : std_logic;
    signal INT_HRESP_S11           : std_logic;
    signal INT_HRESP_S12           : std_logic;
    signal INT_HRESP_S13           : std_logic;
    signal INT_HRESP_S14           : std_logic;
    signal INT_HRESP_S15           : std_logic;
    signal INT_HRESP_S16           : std_logic;
    signal HWDATA_M0S0             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S1             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S2             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S3             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S4             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S5             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S6             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S7             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S8             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S9             : std_logic_vector(31 downto 0);
    signal HWDATA_M0S10            : std_logic_vector(31 downto 0);
    signal HWDATA_M0S11            : std_logic_vector(31 downto 0);
    signal HWDATA_M0S12            : std_logic_vector(31 downto 0);
    signal HWDATA_M0S13            : std_logic_vector(31 downto 0);
    signal HWDATA_M0S14            : std_logic_vector(31 downto 0);
    signal HWDATA_M0S15            : std_logic_vector(31 downto 0);
    signal HWDATA_M0S16            : std_logic_vector(31 downto 0);
    signal HWDATA_M1S0             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S1             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S2             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S3             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S4             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S5             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S6             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S7             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S8             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S9             : std_logic_vector(31 downto 0);
    signal HWDATA_M1S10            : std_logic_vector(31 downto 0);
    signal HWDATA_M1S11            : std_logic_vector(31 downto 0);
    signal HWDATA_M1S12            : std_logic_vector(31 downto 0);
    signal HWDATA_M1S13            : std_logic_vector(31 downto 0);
    signal HWDATA_M1S14            : std_logic_vector(31 downto 0);
    signal HWDATA_M1S15            : std_logic_vector(31 downto 0);
    signal HWDATA_M1S16            : std_logic_vector(31 downto 0);
    signal m0s0GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s1GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s2GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s3GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s4GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s5GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s6GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s7GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s8GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s9GatedHADDR          : std_logic_vector(31 downto 0);
    signal m0s10GatedHADDR         : std_logic_vector(31 downto 0);
    signal m0s11GatedHADDR         : std_logic_vector(31 downto 0);
    signal m0s12GatedHADDR         : std_logic_vector(31 downto 0);
    signal m0s13GatedHADDR         : std_logic_vector(31 downto 0);
    signal m0s14GatedHADDR         : std_logic_vector(31 downto 0);
    signal m0s15GatedHADDR         : std_logic_vector(31 downto 0);
    signal m0s16GatedHADDR         : std_logic_vector(31 downto 0);
    signal m1s0GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s1GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s2GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s3GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s4GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s5GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s6GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s7GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s8GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s9GatedHADDR          : std_logic_vector(31 downto 0);
    signal m1s10GatedHADDR         : std_logic_vector(31 downto 0);
    signal m1s11GatedHADDR         : std_logic_vector(31 downto 0);
    signal m1s12GatedHADDR         : std_logic_vector(31 downto 0);
    signal m1s13GatedHADDR         : std_logic_vector(31 downto 0);
    signal m1s14GatedHADDR         : std_logic_vector(31 downto 0);
    signal m1s15GatedHADDR         : std_logic_vector(31 downto 0);
    signal m1s16GatedHADDR         : std_logic_vector(31 downto 0);
    signal m0s0GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s1GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s2GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s3GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s4GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s5GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s6GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s7GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s8GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s9GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m0s10GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m0s11GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m0s12GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m0s13GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m0s14GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m0s15GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m0s16GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m1s0GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s1GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s2GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s3GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s4GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s5GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s6GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s7GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s8GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s9GatedHSIZE          : std_logic_vector(2 downto 0);
    signal m1s10GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m1s11GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m1s12GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m1s13GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m1s14GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m1s15GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m1s16GatedHSIZE         : std_logic_vector(2 downto 0);
    signal m0s0GatedHMASTLOCK      : std_logic;
    signal m0s1GatedHMASTLOCK      : std_logic;
    signal m0s2GatedHMASTLOCK      : std_logic;
    signal m0s3GatedHMASTLOCK      : std_logic;
    signal m0s4GatedHMASTLOCK      : std_logic;
    signal m0s5GatedHMASTLOCK      : std_logic;
    signal m0s6GatedHMASTLOCK      : std_logic;
    signal m0s7GatedHMASTLOCK      : std_logic;
    signal m0s8GatedHMASTLOCK      : std_logic;
    signal m0s9GatedHMASTLOCK      : std_logic;
    signal m0s10GatedHMASTLOCK     : std_logic;
    signal m0s11GatedHMASTLOCK     : std_logic;
    signal m0s12GatedHMASTLOCK     : std_logic;
    signal m0s13GatedHMASTLOCK     : std_logic;
    signal m0s14GatedHMASTLOCK     : std_logic;
    signal m0s15GatedHMASTLOCK     : std_logic;
    signal m0s16GatedHMASTLOCK     : std_logic;
    signal m1s0GatedHMASTLOCK      : std_logic;
    signal m1s1GatedHMASTLOCK      : std_logic;
    signal m1s2GatedHMASTLOCK      : std_logic;
    signal m1s3GatedHMASTLOCK      : std_logic;
    signal m1s4GatedHMASTLOCK      : std_logic;
    signal m1s5GatedHMASTLOCK      : std_logic;
    signal m1s6GatedHMASTLOCK      : std_logic;
    signal m1s7GatedHMASTLOCK      : std_logic;
    signal m1s8GatedHMASTLOCK      : std_logic;
    signal m1s9GatedHMASTLOCK      : std_logic;
    signal m1s10GatedHMASTLOCK     : std_logic;
    signal m1s11GatedHMASTLOCK     : std_logic;
    signal m1s12GatedHMASTLOCK     : std_logic;
    signal m1s13GatedHMASTLOCK     : std_logic;
    signal m1s14GatedHMASTLOCK     : std_logic;
    signal m1s15GatedHMASTLOCK     : std_logic;
    signal m1s16GatedHMASTLOCK     : std_logic;
    signal m0s0GatedHTRANS         : std_logic;
    signal m0s1GatedHTRANS         : std_logic;
    signal m0s2GatedHTRANS         : std_logic;
    signal m0s3GatedHTRANS         : std_logic;
    signal m0s4GatedHTRANS         : std_logic;
    signal m0s5GatedHTRANS         : std_logic;
    signal m0s6GatedHTRANS         : std_logic;
    signal m0s7GatedHTRANS         : std_logic;
    signal m0s8GatedHTRANS         : std_logic;
    signal m0s9GatedHTRANS         : std_logic;
    signal m0s10GatedHTRANS        : std_logic;
    signal m0s11GatedHTRANS        : std_logic;
    signal m0s12GatedHTRANS        : std_logic;
    signal m0s13GatedHTRANS        : std_logic;
    signal m0s14GatedHTRANS        : std_logic;
    signal m0s15GatedHTRANS        : std_logic;
    signal m0s16GatedHTRANS        : std_logic;
    signal m1s0GatedHTRANS         : std_logic;
    signal m1s1GatedHTRANS         : std_logic;
    signal m1s2GatedHTRANS         : std_logic;
    signal m1s3GatedHTRANS         : std_logic;
    signal m1s4GatedHTRANS         : std_logic;
    signal m1s5GatedHTRANS         : std_logic;
    signal m1s6GatedHTRANS         : std_logic;
    signal m1s7GatedHTRANS         : std_logic;
    signal m1s8GatedHTRANS         : std_logic;
    signal m1s9GatedHTRANS         : std_logic;
    signal m1s10GatedHTRANS        : std_logic;
    signal m1s11GatedHTRANS        : std_logic;
    signal m1s12GatedHTRANS        : std_logic;
    signal m1s13GatedHTRANS        : std_logic;
    signal m1s14GatedHTRANS        : std_logic;
    signal m1s15GatedHTRANS        : std_logic;
    signal m1s16GatedHTRANS        : std_logic;
    signal m0s0GatedHWRITE         : std_logic;
    signal m0s1GatedHWRITE         : std_logic;
    signal m0s2GatedHWRITE         : std_logic;
    signal m0s3GatedHWRITE         : std_logic;
    signal m0s4GatedHWRITE         : std_logic;
    signal m0s5GatedHWRITE         : std_logic;
    signal m0s6GatedHWRITE         : std_logic;
    signal m0s7GatedHWRITE         : std_logic;
    signal m0s8GatedHWRITE         : std_logic;
    signal m0s9GatedHWRITE         : std_logic;
    signal m0s10GatedHWRITE        : std_logic;
    signal m0s11GatedHWRITE        : std_logic;
    signal m0s12GatedHWRITE        : std_logic;
    signal m0s13GatedHWRITE        : std_logic;
    signal m0s14GatedHWRITE        : std_logic;
    signal m0s15GatedHWRITE        : std_logic;
    signal m0s16GatedHWRITE        : std_logic;
    signal m1s0GatedHWRITE         : std_logic;
    signal m1s1GatedHWRITE         : std_logic;
    signal m1s2GatedHWRITE         : std_logic;
    signal m1s3GatedHWRITE         : std_logic;
    signal m1s4GatedHWRITE         : std_logic;
    signal m1s5GatedHWRITE         : std_logic;
    signal m1s6GatedHWRITE         : std_logic;
    signal m1s7GatedHWRITE         : std_logic;
    signal m1s8GatedHWRITE         : std_logic;
    signal m1s9GatedHWRITE         : std_logic;
    signal m1s10GatedHWRITE        : std_logic;
    signal m1s11GatedHWRITE        : std_logic;
    signal m1s12GatedHWRITE        : std_logic;
    signal m1s13GatedHWRITE        : std_logic;
    signal m1s14GatedHWRITE        : std_logic;
    signal m1s15GatedHWRITE        : std_logic;
    signal m1s16GatedHWRITE        : std_logic;
    signal m0s0PrevDataSlaveReady  : std_logic;
    signal m0s1PrevDataSlaveReady  : std_logic;
    signal m0s2PrevDataSlaveReady  : std_logic;
    signal m0s3PrevDataSlaveReady  : std_logic;
    signal m0s4PrevDataSlaveReady  : std_logic;
    signal m0s5PrevDataSlaveReady  : std_logic;
    signal m0s6PrevDataSlaveReady  : std_logic;
    signal m0s7PrevDataSlaveReady  : std_logic;
    signal m0s8PrevDataSlaveReady  : std_logic;
    signal m0s9PrevDataSlaveReady  : std_logic;
    signal m0s10PrevDataSlaveReady : std_logic;
    signal m0s11PrevDataSlaveReady : std_logic;
    signal m0s12PrevDataSlaveReady : std_logic;
    signal m0s13PrevDataSlaveReady : std_logic;
    signal m0s14PrevDataSlaveReady : std_logic;
    signal m0s15PrevDataSlaveReady : std_logic;
    signal m0s16PrevDataSlaveReady : std_logic;
    signal m1s0PrevDataSlaveReady  : std_logic;
    signal m1s1PrevDataSlaveReady  : std_logic;
    signal m1s2PrevDataSlaveReady  : std_logic;
    signal m1s3PrevDataSlaveReady  : std_logic;
    signal m1s4PrevDataSlaveReady  : std_logic;
    signal m1s5PrevDataSlaveReady  : std_logic;
    signal m1s6PrevDataSlaveReady  : std_logic;
    signal m1s7PrevDataSlaveReady  : std_logic;
    signal m1s8PrevDataSlaveReady  : std_logic;
    signal m1s9PrevDataSlaveReady  : std_logic;
    signal m1s10PrevDataSlaveReady : std_logic;
    signal m1s11PrevDataSlaveReady : std_logic;
    signal m1s12PrevDataSlaveReady : std_logic;
    signal m1s13PrevDataSlaveReady : std_logic;
    signal m1s14PrevDataSlaveReady : std_logic;
    signal m1s15PrevDataSlaveReady : std_logic;
    signal m1s16PrevDataSlaveReady : std_logic;
    signal HREADY_M0_pre           : std_logic;
    signal HREADY_M1_pre           : std_logic;

    -- X-HDL generated signals

    signal xhdl1218 : std_logic_vector(16 downto 0);
    signal xhdl1219 : std_logic_vector(16 downto 0);
    signal xhdl1220 : std_logic_vector(16 downto 0);
    signal xhdl1221 : std_logic_vector(16 downto 0);
    signal xhdl1222 : std_logic_vector(16 downto 0);
    signal xhdl1223 : std_logic_vector(16 downto 0);
    signal xhdl1224 : std_logic_vector(16 downto 0);
    signal xhdl1225 : std_logic_vector(16 downto 0);
    signal xhdl1226 : std_logic_vector(16 downto 0);
    signal xhdl1227 : std_logic_vector(16 downto 0);
    signal xhdl1228 : std_logic_vector(1 downto 0);
    signal xhdl1229 : std_logic_vector(1 downto 0);
    signal xhdl1230 : std_logic_vector(1 downto 0);
    signal xhdl1231 : std_logic_vector(1 downto 0);
    signal xhdl1232 : std_logic_vector(1 downto 0);
    signal xhdl1233 : std_logic_vector(1 downto 0);
    signal xhdl1234 : std_logic_vector(1 downto 0);
    signal xhdl1235 : std_logic_vector(1 downto 0);
    signal xhdl1236 : std_logic_vector(1 downto 0);
    signal xhdl1237 : std_logic_vector(1 downto 0);
    signal xhdl1238 : std_logic_vector(1 downto 0);
    signal xhdl1239 : std_logic_vector(1 downto 0);
    signal xhdl1240 : std_logic_vector(1 downto 0);
    signal xhdl1241 : std_logic_vector(1 downto 0);
    signal xhdl1242 : std_logic_vector(1 downto 0);
    signal xhdl1243 : std_logic_vector(1 downto 0);
    signal xhdl1244 : std_logic_vector(1 downto 0);
    signal xhdl1245 : std_logic_vector(1 downto 0);
    signal xhdl1246 : std_logic_vector(1 downto 0);
    signal xhdl1247 : std_logic_vector(1 downto 0);
    signal xhdl1248 : std_logic_vector(1 downto 0);
    signal xhdl1249 : std_logic_vector(1 downto 0);
    signal xhdl1250 : std_logic_vector(1 downto 0);
    signal xhdl1251 : std_logic_vector(1 downto 0);
    signal xhdl1252 : std_logic_vector(1 downto 0);
    signal xhdl1253 : std_logic_vector(1 downto 0);
    signal xhdl1254 : std_logic_vector(1 downto 0);
    signal xhdl1255 : std_logic_vector(1 downto 0);
    signal xhdl1256 : std_logic_vector(1 downto 0);
    signal xhdl1257 : std_logic_vector(1 downto 0);
    signal xhdl1258 : std_logic_vector(1 downto 0);
    signal xhdl1259 : std_logic_vector(1 downto 0);
    signal xhdl1260 : std_logic_vector(1 downto 0);
    signal xhdl1261 : std_logic_vector(1 downto 0);
    signal xhdl1262 : std_logic_vector(1 downto 0);
    signal xhdl1263 : std_logic_vector(1 downto 0);
    signal xhdl1264 : std_logic_vector(1 downto 0);
    signal xhdl1265 : std_logic_vector(1 downto 0);
    signal xhdl1266 : std_logic_vector(1 downto 0);
    signal xhdl1267 : std_logic_vector(1 downto 0);
    signal xhdl1268 : std_logic_vector(1 downto 0);
    signal xhdl1269 : std_logic_vector(1 downto 0);
    signal xhdl1270 : std_logic_vector(1 downto 0);
    signal xhdl1271 : std_logic_vector(1 downto 0);
    signal xhdl1272 : std_logic_vector(1 downto 0);
    signal xhdl1273 : std_logic_vector(1 downto 0);
    signal xhdl1274 : std_logic_vector(1 downto 0);
    signal xhdl1275 : std_logic_vector(1 downto 0);
    signal xhdl1276 : std_logic_vector(1 downto 0);
    signal xhdl1277 : std_logic_vector(1 downto 0);
    signal xhdl1278 : std_logic_vector(1 downto 0);
    signal xhdl1279 : std_logic_vector(1 downto 0);
    signal xhdl1280 : std_logic_vector(1 downto 0);
    signal xhdl1281 : std_logic_vector(1 downto 0);
    signal xhdl1282 : std_logic_vector(1 downto 0);
    signal xhdl1283 : std_logic_vector(1 downto 0);
    signal xhdl1284 : std_logic_vector(1 downto 0);
    signal xhdl1285 : std_logic_vector(1 downto 0);
    signal xhdl1286 : std_logic_vector(1 downto 0);
    signal xhdl1287 : std_logic_vector(1 downto 0);
    signal xhdl1288 : std_logic_vector(1 downto 0);
    signal xhdl1289 : std_logic_vector(1 downto 0);
    signal xhdl1290 : std_logic_vector(1 downto 0);
    signal xhdl1291 : std_logic_vector(1 downto 0);
    signal xhdl1292 : std_logic_vector(1 downto 0);
    signal xhdl1293 : std_logic_vector(1 downto 0);
    signal xhdl1294 : std_logic_vector(1 downto 0);
    signal xhdl1295 : std_logic_vector(1 downto 0);
    signal xhdl1296 : std_logic_vector(1 downto 0);
    signal xhdl1297 : std_logic_vector(1 downto 0);
    signal xhdl1298 : std_logic_vector(1 downto 0);
    signal xhdl1299 : std_logic_vector(1 downto 0);
    signal xhdl1300 : std_logic_vector(1 downto 0);
    signal xhdl1301 : std_logic_vector(1 downto 0);
    signal xhdl1302 : std_logic_vector(1 downto 0);
    signal xhdl1303 : std_logic_vector(1 downto 0);
    signal xhdl1304 : std_logic_vector(1 downto 0);
    signal xhdl1305 : std_logic_vector(1 downto 0);
    signal xhdl1306 : std_logic_vector(1 downto 0);
    signal xhdl1307 : std_logic_vector(1 downto 0);
    signal xhdl1308 : std_logic_vector(1 downto 0);
    signal xhdl1309 : std_logic_vector(1 downto 0);
    signal xhdl1310 : std_logic_vector(1 downto 0);
    signal xhdl1311 : std_logic_vector(1 downto 0);
    signal xhdl1312 : std_logic_vector(1 downto 0);
    signal xhdl1313 : std_logic_vector(1 downto 0);
    signal xhdl1314 : std_logic_vector(1 downto 0);
    signal xhdl1315 : std_logic_vector(1 downto 0);
    signal xhdl1316 : std_logic_vector(1 downto 0);
    signal xhdl1317 : std_logic_vector(1 downto 0);
    signal xhdl1318 : std_logic_vector(1 downto 0);
    signal xhdl1319 : std_logic_vector(1 downto 0);
    signal xhdl1320 : std_logic_vector(1 downto 0);
    signal xhdl1321 : std_logic_vector(1 downto 0);
    signal xhdl1322 : std_logic_vector(1 downto 0);
    signal xhdl1323 : std_logic_vector(1 downto 0);
    signal xhdl1324 : std_logic_vector(1 downto 0);
    signal xhdl1325 : std_logic_vector(1 downto 0);
    signal xhdl1326 : std_logic_vector(1 downto 0);
    signal xhdl1327 : std_logic_vector(1 downto 0);
    signal xhdl1328 : std_logic_vector(1 downto 0);
    signal xhdl1329 : std_logic_vector(1 downto 0);
    --signal xhdl1330 : std_logic_vector(1 downto 0);
    --signal xhdl1331 : std_logic_vector(1 downto 0);
    --signal xhdl1332 : std_logic_vector(1 downto 0);
    --signal xhdl1333 : std_logic_vector(1 downto 0);
    --signal xhdl1334 : std_logic_vector(1 downto 0);
    --signal xhdl1335 : std_logic_vector(1 downto 0);

    -- Declare intermediate signals for referenced outputs
    signal HRESP_M0_xhdl55         : std_logic;
    signal HRDATA_M0_xhdl34        : std_logic_vector(31 downto 0);
    signal HREADY_M0_xhdl36        : std_logic;
    signal HRESP_M1_xhdl56         : std_logic;
    signal HRDATA_M1_xhdl35        : std_logic_vector(31 downto 0);
    signal HREADY_M1_xhdl37        : std_logic;
    signal HSEL_S0_xhdl57          : std_logic;
    signal HADDR_S0_xhdl0          : std_logic_vector(31 downto 0);
    signal HSIZE_S0_xhdl74         : std_logic_vector(2 downto 0);
    signal HTRANS_S0_xhdl91        : std_logic;
    signal HWRITE_S0_xhdl125       : std_logic;
    signal HWDATA_S0_xhdl108       : std_logic_vector(31 downto 0);
    signal HREADY_S0_xhdl38        : std_logic;
    signal HMASTLOCK_S0_xhdl17     : std_logic;
    signal HSEL_S1_xhdl58          : std_logic;
    signal HADDR_S1_xhdl1          : std_logic_vector(31 downto 0);
    signal HSIZE_S1_xhdl75         : std_logic_vector(2 downto 0);
    signal HTRANS_S1_xhdl92        : std_logic;
    signal HWRITE_S1_xhdl126       : std_logic;
    signal HWDATA_S1_xhdl109       : std_logic_vector(31 downto 0);
    signal HREADY_S1_xhdl39        : std_logic;
    signal HMASTLOCK_S1_xhdl18     : std_logic;
    signal HSEL_S2_xhdl65          : std_logic;
    signal HADDR_S2_xhdl8          : std_logic_vector(31 downto 0);
    signal HSIZE_S2_xhdl82         : std_logic_vector(2 downto 0);
    signal HTRANS_S2_xhdl99        : std_logic;
    signal HWRITE_S2_xhdl133       : std_logic;
    signal HWDATA_S2_xhdl116       : std_logic_vector(31 downto 0);
    signal HREADY_S2_xhdl46        : std_logic;
    signal HMASTLOCK_S2_xhdl25     : std_logic;
    signal HSEL_S3_xhdl66          : std_logic;
    signal HADDR_S3_xhdl9          : std_logic_vector(31 downto 0);
    signal HSIZE_S3_xhdl83         : std_logic_vector(2 downto 0);
    signal HTRANS_S3_xhdl100       : std_logic;
    signal HWRITE_S3_xhdl134       : std_logic;
    signal HWDATA_S3_xhdl117       : std_logic_vector(31 downto 0);
    signal HREADY_S3_xhdl47        : std_logic;
    signal HMASTLOCK_S3_xhdl26     : std_logic;
    signal HSEL_S4_xhdl67          : std_logic;
    signal HADDR_S4_xhdl10         : std_logic_vector(31 downto 0);
    signal HSIZE_S4_xhdl84         : std_logic_vector(2 downto 0);
    signal HTRANS_S4_xhdl101       : std_logic;
    signal HWRITE_S4_xhdl135       : std_logic;
    signal HWDATA_S4_xhdl118       : std_logic_vector(31 downto 0);
    signal HREADY_S4_xhdl48        : std_logic;
    signal HMASTLOCK_S4_xhdl27     : std_logic;
    signal HSEL_S5_xhdl68          : std_logic;
    signal HADDR_S5_xhdl11         : std_logic_vector(31 downto 0);
    signal HSIZE_S5_xhdl85         : std_logic_vector(2 downto 0);
    signal HTRANS_S5_xhdl102       : std_logic;
    signal HWRITE_S5_xhdl136       : std_logic;
    signal HWDATA_S5_xhdl119       : std_logic_vector(31 downto 0);
    signal HREADY_S5_xhdl49        : std_logic;
    signal HMASTLOCK_S5_xhdl28     : std_logic;
    signal HSEL_S6_xhdl69          : std_logic;
    signal HADDR_S6_xhdl12         : std_logic_vector(31 downto 0);
    signal HSIZE_S6_xhdl86         : std_logic_vector(2 downto 0);
    signal HTRANS_S6_xhdl103       : std_logic;
    signal HWRITE_S6_xhdl137       : std_logic;
    signal HWDATA_S6_xhdl120       : std_logic_vector(31 downto 0);
    signal HREADY_S6_xhdl50        : std_logic;
    signal HMASTLOCK_S6_xhdl29     : std_logic;
    signal HSEL_S7_xhdl70          : std_logic;
    signal HADDR_S7_xhdl13         : std_logic_vector(31 downto 0);
    signal HSIZE_S7_xhdl87         : std_logic_vector(2 downto 0);
    signal HTRANS_S7_xhdl104       : std_logic;
    signal HWRITE_S7_xhdl138       : std_logic;
    signal HWDATA_S7_xhdl121       : std_logic_vector(31 downto 0);
    signal HREADY_S7_xhdl51        : std_logic;
    signal HMASTLOCK_S7_xhdl30     : std_logic;
    signal HSEL_S8_xhdl71          : std_logic;
    signal HADDR_S8_xhdl14         : std_logic_vector(31 downto 0);
    signal HSIZE_S8_xhdl88         : std_logic_vector(2 downto 0);
    signal HTRANS_S8_xhdl105       : std_logic;
    signal HWRITE_S8_xhdl139       : std_logic;
    signal HWDATA_S8_xhdl122       : std_logic_vector(31 downto 0);
    signal HREADY_S8_xhdl52        : std_logic;
    signal HMASTLOCK_S8_xhdl31     : std_logic;
    signal HSEL_S9_xhdl72          : std_logic;
    signal HADDR_S9_xhdl15         : std_logic_vector(31 downto 0);
    signal HSIZE_S9_xhdl89         : std_logic_vector(2 downto 0);
    signal HTRANS_S9_xhdl106       : std_logic;
    signal HWRITE_S9_xhdl140       : std_logic;
    signal HWDATA_S9_xhdl123       : std_logic_vector(31 downto 0);
    signal HREADY_S9_xhdl53        : std_logic;
    signal HMASTLOCK_S9_xhdl32     : std_logic;
    signal HSEL_S10_xhdl59         : std_logic;
    signal HADDR_S10_xhdl2         : std_logic_vector(31 downto 0);
    signal HSIZE_S10_xhdl76        : std_logic_vector(2 downto 0);
    signal HTRANS_S10_xhdl93       : std_logic;
    signal HWRITE_S10_xhdl127      : std_logic;
    signal HWDATA_S10_xhdl110      : std_logic_vector(31 downto 0);
    signal HREADY_S10_xhdl40       : std_logic;
    signal HMASTLOCK_S10_xhdl19    : std_logic;
    signal HSEL_S11_xhdl60         : std_logic;
    signal HADDR_S11_xhdl3         : std_logic_vector(31 downto 0);
    signal HSIZE_S11_xhdl77        : std_logic_vector(2 downto 0);
    signal HTRANS_S11_xhdl94       : std_logic;
    signal HWRITE_S11_xhdl128      : std_logic;
    signal HWDATA_S11_xhdl111      : std_logic_vector(31 downto 0);
    signal HREADY_S11_xhdl41       : std_logic;
    signal HMASTLOCK_S11_xhdl20    : std_logic;
    signal HSEL_S12_xhdl61         : std_logic;
    signal HADDR_S12_xhdl4         : std_logic_vector(31 downto 0);
    signal HSIZE_S12_xhdl78        : std_logic_vector(2 downto 0);
    signal HTRANS_S12_xhdl95       : std_logic;
    signal HWRITE_S12_xhdl129      : std_logic;
    signal HWDATA_S12_xhdl112      : std_logic_vector(31 downto 0);
    signal HREADY_S12_xhdl42       : std_logic;
    signal HMASTLOCK_S12_xhdl21    : std_logic;
    signal HSEL_S13_xhdl62         : std_logic;
    signal HADDR_S13_xhdl5         : std_logic_vector(31 downto 0);
    signal HSIZE_S13_xhdl79        : std_logic_vector(2 downto 0);
    signal HTRANS_S13_xhdl96       : std_logic;
    signal HWRITE_S13_xhdl130      : std_logic;
    signal HWDATA_S13_xhdl113      : std_logic_vector(31 downto 0);
    signal HREADY_S13_xhdl43       : std_logic;
    signal HMASTLOCK_S13_xhdl22    : std_logic;
    signal HSEL_S14_xhdl63         : std_logic;
    signal HADDR_S14_xhdl6         : std_logic_vector(31 downto 0);
    signal HSIZE_S14_xhdl80        : std_logic_vector(2 downto 0);
    signal HTRANS_S14_xhdl97       : std_logic;
    signal HWRITE_S14_xhdl131      : std_logic;
    signal HWDATA_S14_xhdl114      : std_logic_vector(31 downto 0);
    signal HREADY_S14_xhdl44       : std_logic;
    signal HMASTLOCK_S14_xhdl23    : std_logic;
    signal HSEL_S15_xhdl64         : std_logic;
    signal HADDR_S15_xhdl7         : std_logic_vector(31 downto 0);
    signal HSIZE_S15_xhdl81        : std_logic_vector(2 downto 0);
    signal HTRANS_S15_xhdl98       : std_logic;
    signal HWRITE_S15_xhdl132      : std_logic;
    signal HWDATA_S15_xhdl115      : std_logic_vector(31 downto 0);
    signal HREADY_S15_xhdl45       : std_logic;
    signal HMASTLOCK_S15_xhdl24    : std_logic;
    signal HSEL_S16_xhdl73         : std_logic;
    signal HADDR_S16_xhdl16        : std_logic_vector(31 downto 0);
    signal HSIZE_S16_xhdl90        : std_logic_vector(2 downto 0);
    signal HTRANS_S16_xhdl107      : std_logic;
    signal HWRITE_S16_xhdl141      : std_logic;
    signal HWDATA_S16_xhdl124      : std_logic_vector(31 downto 0);
    signal HREADY_S16_xhdl54       : std_logic;
    signal HMASTLOCK_S16_xhdl33    : std_logic;
begin
    -- Drive referenced outputs
    HRESP_M0 <= HRESP_M0_xhdl55;
    HRDATA_M0 <= HRDATA_M0_xhdl34;
    HREADY_M0 <= HREADY_M0_xhdl36;
    HRESP_M1 <= HRESP_M1_xhdl56;
    HRDATA_M1 <= HRDATA_M1_xhdl35;
    HREADY_M1 <= HREADY_M1_xhdl37;
    HSEL_S0 <= HSEL_S0_xhdl57;
    HADDR_S0 <= HADDR_S0_xhdl0;
    HSIZE_S0 <= HSIZE_S0_xhdl74;
    HTRANS_S0 <= HTRANS_S0_xhdl91;
    HWRITE_S0 <= HWRITE_S0_xhdl125;
    HWDATA_S0 <= HWDATA_S0_xhdl108;
    HREADY_S0 <= HREADY_S0_xhdl38;
    HMASTLOCK_S0 <= HMASTLOCK_S0_xhdl17;
    HSEL_S1 <= HSEL_S1_xhdl58;
    HADDR_S1 <= HADDR_S1_xhdl1;
    HSIZE_S1 <= HSIZE_S1_xhdl75;
    HTRANS_S1 <= HTRANS_S1_xhdl92;
    HWRITE_S1 <= HWRITE_S1_xhdl126;
    HWDATA_S1 <= HWDATA_S1_xhdl109;
    HREADY_S1 <= HREADY_S1_xhdl39;
    HMASTLOCK_S1 <= HMASTLOCK_S1_xhdl18;
    HSEL_S2 <= HSEL_S2_xhdl65;
    HADDR_S2 <= HADDR_S2_xhdl8;
    HSIZE_S2 <= HSIZE_S2_xhdl82;
    HTRANS_S2 <= HTRANS_S2_xhdl99;
    HWRITE_S2 <= HWRITE_S2_xhdl133;
    HWDATA_S2 <= HWDATA_S2_xhdl116;
    HREADY_S2 <= HREADY_S2_xhdl46;
    HMASTLOCK_S2 <= HMASTLOCK_S2_xhdl25;
    HSEL_S3 <= HSEL_S3_xhdl66;
    HADDR_S3 <= HADDR_S3_xhdl9;
    HSIZE_S3 <= HSIZE_S3_xhdl83;
    HTRANS_S3 <= HTRANS_S3_xhdl100;
    HWRITE_S3 <= HWRITE_S3_xhdl134;
    HWDATA_S3 <= HWDATA_S3_xhdl117;
    HREADY_S3 <= HREADY_S3_xhdl47;
    HMASTLOCK_S3 <= HMASTLOCK_S3_xhdl26;
    HSEL_S4 <= HSEL_S4_xhdl67;
    HADDR_S4 <= HADDR_S4_xhdl10;
    HSIZE_S4 <= HSIZE_S4_xhdl84;
    HTRANS_S4 <= HTRANS_S4_xhdl101;
    HWRITE_S4 <= HWRITE_S4_xhdl135;
    HWDATA_S4 <= HWDATA_S4_xhdl118;
    HREADY_S4 <= HREADY_S4_xhdl48;
    HMASTLOCK_S4 <= HMASTLOCK_S4_xhdl27;
    HSEL_S5 <= HSEL_S5_xhdl68;
    HADDR_S5 <= HADDR_S5_xhdl11;
    HSIZE_S5 <= HSIZE_S5_xhdl85;
    HTRANS_S5 <= HTRANS_S5_xhdl102;
    HWRITE_S5 <= HWRITE_S5_xhdl136;
    HWDATA_S5 <= HWDATA_S5_xhdl119;
    HREADY_S5 <= HREADY_S5_xhdl49;
    HMASTLOCK_S5 <= HMASTLOCK_S5_xhdl28;
    HSEL_S6 <= HSEL_S6_xhdl69;
    HADDR_S6 <= HADDR_S6_xhdl12;
    HSIZE_S6 <= HSIZE_S6_xhdl86;
    HTRANS_S6 <= HTRANS_S6_xhdl103;
    HWRITE_S6 <= HWRITE_S6_xhdl137;
    HWDATA_S6 <= HWDATA_S6_xhdl120;
    HREADY_S6 <= HREADY_S6_xhdl50;
    HMASTLOCK_S6 <= HMASTLOCK_S6_xhdl29;
    HSEL_S7 <= HSEL_S7_xhdl70;
    HADDR_S7 <= HADDR_S7_xhdl13;
    HSIZE_S7 <= HSIZE_S7_xhdl87;
    HTRANS_S7 <= HTRANS_S7_xhdl104;
    HWRITE_S7 <= HWRITE_S7_xhdl138;
    HWDATA_S7 <= HWDATA_S7_xhdl121;
    HREADY_S7 <= HREADY_S7_xhdl51;
    HMASTLOCK_S7 <= HMASTLOCK_S7_xhdl30;
    HSEL_S8 <= HSEL_S8_xhdl71;
    HADDR_S8 <= HADDR_S8_xhdl14;
    HSIZE_S8 <= HSIZE_S8_xhdl88;
    HTRANS_S8 <= HTRANS_S8_xhdl105;
    HWRITE_S8 <= HWRITE_S8_xhdl139;
    HWDATA_S8 <= HWDATA_S8_xhdl122;
    HREADY_S8 <= HREADY_S8_xhdl52;
    HMASTLOCK_S8 <= HMASTLOCK_S8_xhdl31;
    HSEL_S9 <= HSEL_S9_xhdl72;
    HADDR_S9 <= HADDR_S9_xhdl15;
    HSIZE_S9 <= HSIZE_S9_xhdl89;
    HTRANS_S9 <= HTRANS_S9_xhdl106;
    HWRITE_S9 <= HWRITE_S9_xhdl140;
    HWDATA_S9 <= HWDATA_S9_xhdl123;
    HREADY_S9 <= HREADY_S9_xhdl53;
    HMASTLOCK_S9 <= HMASTLOCK_S9_xhdl32;
    HSEL_S10 <= HSEL_S10_xhdl59;
    HADDR_S10 <= HADDR_S10_xhdl2;
    HSIZE_S10 <= HSIZE_S10_xhdl76;
    HTRANS_S10 <= HTRANS_S10_xhdl93;
    HWRITE_S10 <= HWRITE_S10_xhdl127;
    HWDATA_S10 <= HWDATA_S10_xhdl110;
    HREADY_S10 <= HREADY_S10_xhdl40;
    HMASTLOCK_S10 <= HMASTLOCK_S10_xhdl19;
    HSEL_S11 <= HSEL_S11_xhdl60;
    HADDR_S11 <= HADDR_S11_xhdl3;
    HSIZE_S11 <= HSIZE_S11_xhdl77;
    HTRANS_S11 <= HTRANS_S11_xhdl94;
    HWRITE_S11 <= HWRITE_S11_xhdl128;
    HWDATA_S11 <= HWDATA_S11_xhdl111;
    HREADY_S11 <= HREADY_S11_xhdl41;
    HMASTLOCK_S11 <= HMASTLOCK_S11_xhdl20;
    HSEL_S12 <= HSEL_S12_xhdl61;
    HADDR_S12 <= HADDR_S12_xhdl4;
    HSIZE_S12 <= HSIZE_S12_xhdl78;
    HTRANS_S12 <= HTRANS_S12_xhdl95;
    HWRITE_S12 <= HWRITE_S12_xhdl129;
    HWDATA_S12 <= HWDATA_S12_xhdl112;
    HREADY_S12 <= HREADY_S12_xhdl42;
    HMASTLOCK_S12 <= HMASTLOCK_S12_xhdl21;
    HSEL_S13 <= HSEL_S13_xhdl62;
    HADDR_S13 <= HADDR_S13_xhdl5;
    HSIZE_S13 <= HSIZE_S13_xhdl79;
    HTRANS_S13 <= HTRANS_S13_xhdl96;
    HWRITE_S13 <= HWRITE_S13_xhdl130;
    HWDATA_S13 <= HWDATA_S13_xhdl113;
    HREADY_S13 <= HREADY_S13_xhdl43;
    HMASTLOCK_S13 <= HMASTLOCK_S13_xhdl22;
    HSEL_S14 <= HSEL_S14_xhdl63;
    HADDR_S14 <= HADDR_S14_xhdl6;
    HSIZE_S14 <= HSIZE_S14_xhdl80;
    HTRANS_S14 <= HTRANS_S14_xhdl97;
    HWRITE_S14 <= HWRITE_S14_xhdl131;
    HWDATA_S14 <= HWDATA_S14_xhdl114;
    HREADY_S14 <= HREADY_S14_xhdl44;
    HMASTLOCK_S14 <= HMASTLOCK_S14_xhdl23;
    HSEL_S15 <= HSEL_S15_xhdl64;
    HADDR_S15 <= HADDR_S15_xhdl7;
    HSIZE_S15 <= HSIZE_S15_xhdl81;
    HTRANS_S15 <= HTRANS_S15_xhdl98;
    HWRITE_S15 <= HWRITE_S15_xhdl132;
    HWDATA_S15 <= HWDATA_S15_xhdl115;
    HREADY_S15 <= HREADY_S15_xhdl45;
    HMASTLOCK_S15 <= HMASTLOCK_S15_xhdl24;
    HSEL_S16 <= HSEL_S16_xhdl73;
    HADDR_S16 <= HADDR_S16_xhdl16;
    HSIZE_S16 <= HSIZE_S16_xhdl90;
    HTRANS_S16 <= HTRANS_S16_xhdl107;
    HWRITE_S16 <= HWRITE_S16_xhdl141;
    HWDATA_S16 <= HWDATA_S16_xhdl124;
    HREADY_S16 <= HREADY_S16_xhdl54;
    HMASTLOCK_S16 <= HMASTLOCK_S16_xhdl33;
    xhdl146 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        s0m0AddrReady_int <= s0m0AddrReady;
    end generate;
    xhdl147 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        s0m0AddrReady_int <= '1';
    end generate;
    xhdl148 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        s1m0AddrReady_int <= s1m0AddrReady;
    end generate;
    xhdl149 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        s1m0AddrReady_int <= '1';
    end generate;
    xhdl150 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        s2m0AddrReady_int <= s2m0AddrReady;
    end generate;
    xhdl151 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        s2m0AddrReady_int <= '1';
    end generate;
    xhdl152 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        s3m0AddrReady_int <= s3m0AddrReady;
    end generate;
    xhdl153 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        s3m0AddrReady_int <= '1';
    end generate;
    xhdl154 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        s4m0AddrReady_int <= s4m0AddrReady;
    end generate;
    xhdl155 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        s4m0AddrReady_int <= '1';
    end generate;
    xhdl156 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        s5m0AddrReady_int <= s5m0AddrReady;
    end generate;
    xhdl157 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        s5m0AddrReady_int <= '1';
    end generate;
    xhdl158 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        s6m0AddrReady_int <= s6m0AddrReady;
    end generate;
    xhdl159 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        s6m0AddrReady_int <= '1';
    end generate;
    xhdl160 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        s7m0AddrReady_int <= s7m0AddrReady;
    end generate;
    xhdl161 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        s7m0AddrReady_int <= '1';
    end generate;
    xhdl162 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        s8m0AddrReady_int <= s8m0AddrReady;
    end generate;
    xhdl163 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        s8m0AddrReady_int <= '1';
    end generate;
    xhdl164 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        s9m0AddrReady_int <= s9m0AddrReady;
    end generate;
    xhdl165 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        s9m0AddrReady_int <= '1';
    end generate;
    xhdl166 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        s10m0AddrReady_int <= s10m0AddrReady;
    end generate;
    xhdl167 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        s10m0AddrReady_int <= '1';
    end generate;
    xhdl168 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        s11m0AddrReady_int <= s11m0AddrReady;
    end generate;
    xhdl169 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        s11m0AddrReady_int <= '1';
    end generate;
    xhdl170 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        s12m0AddrReady_int <= s12m0AddrReady;
    end generate;
    xhdl171 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        s12m0AddrReady_int <= '1';
    end generate;
    xhdl172 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        s13m0AddrReady_int <= s13m0AddrReady;
    end generate;
    xhdl173 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        s13m0AddrReady_int <= '1';
    end generate;
    xhdl174 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        s14m0AddrReady_int <= s14m0AddrReady;
    end generate;
    xhdl175 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        s14m0AddrReady_int <= '1';
    end generate;
    xhdl176 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        s15m0AddrReady_int <= s15m0AddrReady;
    end generate;
    xhdl177 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        s15m0AddrReady_int <= '1';
    end generate;
    xhdl178 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        s16m0AddrReady_int <= s16m0AddrReady;
    end generate;
    xhdl179 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        s16m0AddrReady_int <= '1';
    end generate;
    xhdl182 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        s0m1AddrReady_int <= s0m1AddrReady;
    end generate;
    xhdl183 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        s0m1AddrReady_int <= '1';
    end generate;
    xhdl184 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        s1m1AddrReady_int <= s1m1AddrReady;
    end generate;
    xhdl185 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        s1m1AddrReady_int <= '1';
    end generate;
    xhdl186 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        s2m1AddrReady_int <= s2m1AddrReady;
    end generate;
    xhdl187 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        s2m1AddrReady_int <= '1';
    end generate;
    xhdl188 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        s3m1AddrReady_int <= s3m1AddrReady;
    end generate;
    xhdl189 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        s3m1AddrReady_int <= '1';
    end generate;
    xhdl190 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        s4m1AddrReady_int <= s4m1AddrReady;
    end generate;
    xhdl191 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        s4m1AddrReady_int <= '1';
    end generate;
    xhdl192 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        s5m1AddrReady_int <= s5m1AddrReady;
    end generate;
    xhdl193 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        s5m1AddrReady_int <= '1';
    end generate;
    xhdl194 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        s6m1AddrReady_int <= s6m1AddrReady;
    end generate;
    xhdl195 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        s6m1AddrReady_int <= '1';
    end generate;
    xhdl196 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        s7m1AddrReady_int <= s7m1AddrReady;
    end generate;
    xhdl197 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        s7m1AddrReady_int <= '1';
    end generate;
    xhdl198 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        s8m1AddrReady_int <= s8m1AddrReady;
    end generate;
    xhdl199 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        s8m1AddrReady_int <= '1';
    end generate;
    xhdl200 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        s9m1AddrReady_int <= s9m1AddrReady;
    end generate;
    xhdl201 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        s9m1AddrReady_int <= '1';
    end generate;
    xhdl202 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        s10m1AddrReady_int <= s10m1AddrReady;
    end generate;
    xhdl203 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        s10m1AddrReady_int <= '1';
    end generate;
    xhdl204 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        s11m1AddrReady_int <= s11m1AddrReady;
    end generate;
    xhdl205 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        s11m1AddrReady_int <= '1';
    end generate;
    xhdl206 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        s12m1AddrReady_int <= s12m1AddrReady;
    end generate;
    xhdl207 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        s12m1AddrReady_int <= '1';
    end generate;
    xhdl208 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        s13m1AddrReady_int <= s13m1AddrReady;
    end generate;
    xhdl209 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        s13m1AddrReady_int <= '1';
    end generate;
    xhdl210 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        s14m1AddrReady_int <= s14m1AddrReady;
    end generate;
    xhdl211 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        s14m1AddrReady_int <= '1';
    end generate;
    xhdl212 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        s15m1AddrReady_int <= s15m1AddrReady;
    end generate;
    xhdl213 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        s15m1AddrReady_int <= '1';
    end generate;
    xhdl214 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        s16m1AddrReady_int <= s16m1AddrReady;
    end generate;
    xhdl215 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        s16m1AddrReady_int <= '1';
    end generate;
    xhdl218 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        s0m0DataReady_int <= s0m0DataReady;
    end generate;
    xhdl219 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        s0m0DataReady_int <= '1';
    end generate;
    xhdl220 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        s1m0DataReady_int <= s1m0DataReady;
    end generate;
    xhdl221 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        s1m0DataReady_int <= '1';
    end generate;
    xhdl222 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        s2m0DataReady_int <= s2m0DataReady;
    end generate;
    xhdl223 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        s2m0DataReady_int <= '1';
    end generate;
    xhdl224 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        s3m0DataReady_int <= s3m0DataReady;
    end generate;
    xhdl225 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        s3m0DataReady_int <= '1';
    end generate;
    xhdl226 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        s4m0DataReady_int <= s4m0DataReady;
    end generate;
    xhdl227 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        s4m0DataReady_int <= '1';
    end generate;
    xhdl228 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        s5m0DataReady_int <= s5m0DataReady;
    end generate;
    xhdl229 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        s5m0DataReady_int <= '1';
    end generate;
    xhdl230 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        s6m0DataReady_int <= s6m0DataReady;
    end generate;
    xhdl231 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        s6m0DataReady_int <= '1';
    end generate;
    xhdl232 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        s7m0DataReady_int <= s7m0DataReady;
    end generate;
    xhdl233 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        s7m0DataReady_int <= '1';
    end generate;
    xhdl234 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        s8m0DataReady_int <= s8m0DataReady;
    end generate;
    xhdl235 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        s8m0DataReady_int <= '1';
    end generate;
    xhdl236 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        s9m0DataReady_int <= s9m0DataReady;
    end generate;
    xhdl237 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        s9m0DataReady_int <= '1';
    end generate;
    xhdl238 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        s10m0DataReady_int <= s10m0DataReady;
    end generate;
    xhdl239 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        s10m0DataReady_int <= '1';
    end generate;
    xhdl240 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        s11m0DataReady_int <= s11m0DataReady;
    end generate;
    xhdl241 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        s11m0DataReady_int <= '1';
    end generate;
    xhdl242 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        s12m0DataReady_int <= s12m0DataReady;
    end generate;
    xhdl243 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        s12m0DataReady_int <= '1';
    end generate;
    xhdl244 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        s13m0DataReady_int <= s13m0DataReady;
    end generate;
    xhdl245 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        s13m0DataReady_int <= '1';
    end generate;
    xhdl246 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        s14m0DataReady_int <= s14m0DataReady;
    end generate;
    xhdl247 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        s14m0DataReady_int <= '1';
    end generate;
    xhdl248 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        s15m0DataReady_int <= s15m0DataReady;
    end generate;
    xhdl249 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        s15m0DataReady_int <= '1';
    end generate;
    xhdl250 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        s16m0DataReady_int <= s16m0DataReady;
    end generate;
    xhdl251 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        s16m0DataReady_int <= '1';
    end generate;
    xhdl254 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        s0m1DataReady_int <= s0m1DataReady;
    end generate;
    xhdl255 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        s0m1DataReady_int <= '1';
    end generate;
    xhdl256 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        s1m1DataReady_int <= s1m1DataReady;
    end generate;
    xhdl257 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        s1m1DataReady_int <= '1';
    end generate;
    xhdl258 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        s2m1DataReady_int <= s2m1DataReady;
    end generate;
    xhdl259 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        s2m1DataReady_int <= '1';
    end generate;
    xhdl260 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        s3m1DataReady_int <= s3m1DataReady;
    end generate;
    xhdl261 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        s3m1DataReady_int <= '1';
    end generate;
    xhdl262 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        s4m1DataReady_int <= s4m1DataReady;
    end generate;
    xhdl263 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        s4m1DataReady_int <= '1';
    end generate;
    xhdl264 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        s5m1DataReady_int <= s5m1DataReady;
    end generate;
    xhdl265 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        s5m1DataReady_int <= '1';
    end generate;
    xhdl266 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        s6m1DataReady_int <= s6m1DataReady;
    end generate;
    xhdl267 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        s6m1DataReady_int <= '1';
    end generate;
    xhdl268 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        s7m1DataReady_int <= s7m1DataReady;
    end generate;
    xhdl269 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        s7m1DataReady_int <= '1';
    end generate;
    xhdl270 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        s8m1DataReady_int <= s8m1DataReady;
    end generate;
    xhdl271 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        s8m1DataReady_int <= '1';
    end generate;
    xhdl272 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        s9m1DataReady_int <= s9m1DataReady;
    end generate;
    xhdl273 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        s9m1DataReady_int <= '1';
    end generate;
    xhdl274 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        s10m1DataReady_int <= s10m1DataReady;
    end generate;
    xhdl275 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        s10m1DataReady_int <= '1';
    end generate;
    xhdl276 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        s11m1DataReady_int <= s11m1DataReady;
    end generate;
    xhdl277 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        s11m1DataReady_int <= '1';
    end generate;
    xhdl278 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        s12m1DataReady_int <= s12m1DataReady;
    end generate;
    xhdl279 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        s12m1DataReady_int <= '1';
    end generate;
    xhdl280 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        s13m1DataReady_int <= s13m1DataReady;
    end generate;
    xhdl281 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        s13m1DataReady_int <= '1';
    end generate;
    xhdl282 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        s14m1DataReady_int <= s14m1DataReady;
    end generate;
    xhdl283 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        s14m1DataReady_int <= '1';
    end generate;
    xhdl284 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        s15m1DataReady_int <= s15m1DataReady;
    end generate;
    xhdl285 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        s15m1DataReady_int <= '1';
    end generate;
    xhdl286 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        s16m1DataReady_int <= s16m1DataReady;
    end generate;
    xhdl287 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        s16m1DataReady_int <= '1';
    end generate;
    xhdl290 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        s0m0HResp_int <= s0m0HResp;
    end generate;
    xhdl291 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        s0m0HResp_int <= '0';
    end generate;
    xhdl292 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        s1m0HResp_int <= s1m0HResp;
    end generate;
    xhdl293 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        s1m0HResp_int <= '0';
    end generate;
    xhdl294 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        s2m0HResp_int <= s2m0HResp;
    end generate;
    xhdl295 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        s2m0HResp_int <= '0';
    end generate;
    xhdl296 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        s3m0HResp_int <= s3m0HResp;
    end generate;
    xhdl297 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        s3m0HResp_int <= '0';
    end generate;
    xhdl298 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        s4m0HResp_int <= s4m0HResp;
    end generate;
    xhdl299 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        s4m0HResp_int <= '0';
    end generate;
    xhdl300 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        s5m0HResp_int <= s5m0HResp;
    end generate;
    xhdl301 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        s5m0HResp_int <= '0';
    end generate;
    xhdl302 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        s6m0HResp_int <= s6m0HResp;
    end generate;
    xhdl303 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        s6m0HResp_int <= '0';
    end generate;
    xhdl304 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        s7m0HResp_int <= s7m0HResp;
    end generate;
    xhdl305 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        s7m0HResp_int <= '0';
    end generate;
    xhdl306 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        s8m0HResp_int <= s8m0HResp;
    end generate;
    xhdl307 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        s8m0HResp_int <= '0';
    end generate;
    xhdl308 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        s9m0HResp_int <= s9m0HResp;
    end generate;
    xhdl309 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        s9m0HResp_int <= '0';
    end generate;
    xhdl310 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        s10m0HResp_int <= s10m0HResp;
    end generate;
    xhdl311 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        s10m0HResp_int <= '0';
    end generate;
    xhdl312 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        s11m0HResp_int <= s11m0HResp;
    end generate;
    xhdl313 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        s11m0HResp_int <= '0';
    end generate;
    xhdl314 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        s12m0HResp_int <= s12m0HResp;
    end generate;
    xhdl315 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        s12m0HResp_int <= '0';
    end generate;
    xhdl316 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        s13m0HResp_int <= s13m0HResp;
    end generate;
    xhdl317 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        s13m0HResp_int <= '0';
    end generate;
    xhdl318 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        s14m0HResp_int <= s14m0HResp;
    end generate;
    xhdl319 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        s14m0HResp_int <= '0';
    end generate;
    xhdl320 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        s15m0HResp_int <= s15m0HResp;
    end generate;
    xhdl321 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        s15m0HResp_int <= '0';
    end generate;
    xhdl322 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        s16m0HResp_int <= s16m0HResp;
    end generate;
    xhdl323 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        s16m0HResp_int <= '0';
    end generate;
    xhdl326 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        s0m1HResp_int <= s0m1HResp;
    end generate;
    xhdl327 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        s0m1HResp_int <= '0';
    end generate;
    xhdl328 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        s1m1HResp_int <= s1m1HResp;
    end generate;
    xhdl329 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        s1m1HResp_int <= '0';
    end generate;
    xhdl330 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        s2m1HResp_int <= s2m1HResp;
    end generate;
    xhdl331 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        s2m1HResp_int <= '0';
    end generate;
    xhdl332 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        s3m1HResp_int <= s3m1HResp;
    end generate;
    xhdl333 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        s3m1HResp_int <= '0';
    end generate;
    xhdl334 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        s4m1HResp_int <= s4m1HResp;
    end generate;
    xhdl335 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        s4m1HResp_int <= '0';
    end generate;
    xhdl336 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        s5m1HResp_int <= s5m1HResp;
    end generate;
    xhdl337 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        s5m1HResp_int <= '0';
    end generate;
    xhdl338 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        s6m1HResp_int <= s6m1HResp;
    end generate;
    xhdl339 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        s6m1HResp_int <= '0';
    end generate;
    xhdl340 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        s7m1HResp_int <= s7m1HResp;
    end generate;
    xhdl341 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        s7m1HResp_int <= '0';
    end generate;
    xhdl342 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        s8m1HResp_int <= s8m1HResp;
    end generate;
    xhdl343 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        s8m1HResp_int <= '0';
    end generate;
    xhdl344 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        s9m1HResp_int <= s9m1HResp;
    end generate;
    xhdl345 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        s9m1HResp_int <= '0';
    end generate;
    xhdl346 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        s10m1HResp_int <= s10m1HResp;
    end generate;
    xhdl347 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        s10m1HResp_int <= '0';
    end generate;
    xhdl348 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        s11m1HResp_int <= s11m1HResp;
    end generate;
    xhdl349 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        s11m1HResp_int <= '0';
    end generate;
    xhdl350 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        s12m1HResp_int <= s12m1HResp;
    end generate;
    xhdl351 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        s12m1HResp_int <= '0';
    end generate;
    xhdl352 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        s13m1HResp_int <= s13m1HResp;
    end generate;
    xhdl353 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        s13m1HResp_int <= '0';
    end generate;
    xhdl354 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        s14m1HResp_int <= s14m1HResp;
    end generate;
    xhdl355 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        s14m1HResp_int <= '0';
    end generate;
    xhdl356 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        s15m1HResp_int <= s15m1HResp;
    end generate;
    xhdl357 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        s15m1HResp_int <= '0';
    end generate;
    xhdl358 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        s16m1HResp_int <= s16m1HResp;
    end generate;
    xhdl359 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        s16m1HResp_int <= '0';
    end generate;
    xhdl362 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        m0s0AddrSel_int <= m0s0AddrSel;
    end generate;
    xhdl363 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        m0s0AddrSel_int <= '0';
    end generate;
    xhdl364 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        m0s1AddrSel_int <= m0s1AddrSel;
    end generate;
    xhdl365 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        m0s1AddrSel_int <= '0';
    end generate;
    xhdl366 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        m0s2AddrSel_int <= m0s2AddrSel;
    end generate;
    xhdl367 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        m0s2AddrSel_int <= '0';
    end generate;
    xhdl368 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        m0s3AddrSel_int <= m0s3AddrSel;
    end generate;
    xhdl369 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        m0s3AddrSel_int <= '0';
    end generate;
    xhdl370 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        m0s4AddrSel_int <= m0s4AddrSel;
    end generate;
    xhdl371 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        m0s4AddrSel_int <= '0';
    end generate;
    xhdl372 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        m0s5AddrSel_int <= m0s5AddrSel;
    end generate;
    xhdl373 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        m0s5AddrSel_int <= '0';
    end generate;
    xhdl374 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        m0s6AddrSel_int <= m0s6AddrSel;
    end generate;
    xhdl375 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        m0s6AddrSel_int <= '0';
    end generate;
    xhdl376 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        m0s7AddrSel_int <= m0s7AddrSel;
    end generate;
    xhdl377 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        m0s7AddrSel_int <= '0';
    end generate;
    xhdl378 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        m0s8AddrSel_int <= m0s8AddrSel;
    end generate;
    xhdl379 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        m0s8AddrSel_int <= '0';
    end generate;
    xhdl380 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        m0s9AddrSel_int <= m0s9AddrSel;
    end generate;
    xhdl381 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        m0s9AddrSel_int <= '0';
    end generate;
    xhdl382 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        m0s10AddrSel_int <= m0s10AddrSel;
    end generate;
    xhdl383 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        m0s10AddrSel_int <= '0';
    end generate;
    xhdl384 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        m0s11AddrSel_int <= m0s11AddrSel;
    end generate;
    xhdl385 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        m0s11AddrSel_int <= '0';
    end generate;
    xhdl386 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        m0s12AddrSel_int <= m0s12AddrSel;
    end generate;
    xhdl387 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        m0s12AddrSel_int <= '0';
    end generate;
    xhdl388 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        m0s13AddrSel_int <= m0s13AddrSel;
    end generate;
    xhdl389 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        m0s13AddrSel_int <= '0';
    end generate;
    xhdl390 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        m0s14AddrSel_int <= m0s14AddrSel;
    end generate;
    xhdl391 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        m0s14AddrSel_int <= '0';
    end generate;
    xhdl392 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        m0s15AddrSel_int <= m0s15AddrSel;
    end generate;
    xhdl393 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        m0s15AddrSel_int <= '0';
    end generate;
    xhdl394 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        m0s16AddrSel_int <= m0s16AddrSel;
    end generate;
    xhdl395 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        m0s16AddrSel_int <= '0';
    end generate;
    xhdl398 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        m1s0AddrSel_int <= m1s0AddrSel;
    end generate;
    xhdl399 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        m1s0AddrSel_int <= '0';
    end generate;
    xhdl400 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        m1s1AddrSel_int <= m1s1AddrSel;
    end generate;
    xhdl401 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        m1s1AddrSel_int <= '0';
    end generate;
    xhdl402 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        m1s2AddrSel_int <= m1s2AddrSel;
    end generate;
    xhdl403 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        m1s2AddrSel_int <= '0';
    end generate;
    xhdl404 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        m1s3AddrSel_int <= m1s3AddrSel;
    end generate;
    xhdl405 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        m1s3AddrSel_int <= '0';
    end generate;
    xhdl406 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        m1s4AddrSel_int <= m1s4AddrSel;
    end generate;
    xhdl407 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        m1s4AddrSel_int <= '0';
    end generate;
    xhdl408 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        m1s5AddrSel_int <= m1s5AddrSel;
    end generate;
    xhdl409 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        m1s5AddrSel_int <= '0';
    end generate;
    xhdl410 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        m1s6AddrSel_int <= m1s6AddrSel;
    end generate;
    xhdl411 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        m1s6AddrSel_int <= '0';
    end generate;
    xhdl412 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        m1s7AddrSel_int <= m1s7AddrSel;
    end generate;
    xhdl413 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        m1s7AddrSel_int <= '0';
    end generate;
    xhdl414 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        m1s8AddrSel_int <= m1s8AddrSel;
    end generate;
    xhdl415 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        m1s8AddrSel_int <= '0';
    end generate;
    xhdl416 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        m1s9AddrSel_int <= m1s9AddrSel;
    end generate;
    xhdl417 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        m1s9AddrSel_int <= '0';
    end generate;
    xhdl418 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        m1s10AddrSel_int <= m1s10AddrSel;
    end generate;
    xhdl419 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        m1s10AddrSel_int <= '0';
    end generate;
    xhdl420 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        m1s11AddrSel_int <= m1s11AddrSel;
    end generate;
    xhdl421 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        m1s11AddrSel_int <= '0';
    end generate;
    xhdl422 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        m1s12AddrSel_int <= m1s12AddrSel;
    end generate;
    xhdl423 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        m1s12AddrSel_int <= '0';
    end generate;
    xhdl424 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        m1s13AddrSel_int <= m1s13AddrSel;
    end generate;
    xhdl425 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        m1s13AddrSel_int <= '0';
    end generate;
    xhdl426 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        m1s14AddrSel_int <= m1s14AddrSel;
    end generate;
    xhdl427 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        m1s14AddrSel_int <= '0';
    end generate;
    xhdl428 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        m1s15AddrSel_int <= m1s15AddrSel;
    end generate;
    xhdl429 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        m1s15AddrSel_int <= '0';
    end generate;
    xhdl430 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        m1s16AddrSel_int <= m1s16AddrSel;
    end generate;
    xhdl431 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        m1s16AddrSel_int <= '0';
    end generate;
    xhdl434 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        m0s0DataSel_int <= m0s0DataSel;
    end generate;
    xhdl435 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        m0s0DataSel_int <= '0';
    end generate;
    xhdl436 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        m0s1DataSel_int <= m0s1DataSel;
    end generate;
    xhdl437 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        m0s1DataSel_int <= '0';
    end generate;
    xhdl438 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        m0s2DataSel_int <= m0s2DataSel;
    end generate;
    xhdl439 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        m0s2DataSel_int <= '0';
    end generate;
    xhdl440 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        m0s3DataSel_int <= m0s3DataSel;
    end generate;
    xhdl441 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        m0s3DataSel_int <= '0';
    end generate;
    xhdl442 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        m0s4DataSel_int <= m0s4DataSel;
    end generate;
    xhdl443 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        m0s4DataSel_int <= '0';
    end generate;
    xhdl444 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        m0s5DataSel_int <= m0s5DataSel;
    end generate;
    xhdl445 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        m0s5DataSel_int <= '0';
    end generate;
    xhdl446 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        m0s6DataSel_int <= m0s6DataSel;
    end generate;
    xhdl447 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        m0s6DataSel_int <= '0';
    end generate;
    xhdl448 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        m0s7DataSel_int <= m0s7DataSel;
    end generate;
    xhdl449 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        m0s7DataSel_int <= '0';
    end generate;
    xhdl450 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        m0s8DataSel_int <= m0s8DataSel;
    end generate;
    xhdl451 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        m0s8DataSel_int <= '0';
    end generate;
    xhdl452 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        m0s9DataSel_int <= m0s9DataSel;
    end generate;
    xhdl453 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        m0s9DataSel_int <= '0';
    end generate;
    xhdl454 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        m0s10DataSel_int <= m0s10DataSel;
    end generate;
    xhdl455 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        m0s10DataSel_int <= '0';
    end generate;
    xhdl456 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        m0s11DataSel_int <= m0s11DataSel;
    end generate;
    xhdl457 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        m0s11DataSel_int <= '0';
    end generate;
    xhdl458 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        m0s12DataSel_int <= m0s12DataSel;
    end generate;
    xhdl459 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        m0s12DataSel_int <= '0';
    end generate;
    xhdl460 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        m0s13DataSel_int <= m0s13DataSel;
    end generate;
    xhdl461 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        m0s13DataSel_int <= '0';
    end generate;
    xhdl462 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        m0s14DataSel_int <= m0s14DataSel;
    end generate;
    xhdl463 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        m0s14DataSel_int <= '0';
    end generate;
    xhdl464 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        m0s15DataSel_int <= m0s15DataSel;
    end generate;
    xhdl465 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        m0s15DataSel_int <= '0';
    end generate;
    xhdl466 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        m0s16DataSel_int <= m0s16DataSel;
    end generate;
    xhdl467 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        m0s16DataSel_int <= '0';
    end generate;
    xhdl470 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        m1s0DataSel_int <= m1s0DataSel;
    end generate;
    xhdl471 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        m1s0DataSel_int <= '0';
    end generate;
    xhdl472 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        m1s1DataSel_int <= m1s1DataSel;
    end generate;
    xhdl473 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        m1s1DataSel_int <= '0';
    end generate;
    xhdl474 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        m1s2DataSel_int <= m1s2DataSel;
    end generate;
    xhdl475 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        m1s2DataSel_int <= '0';
    end generate;
    xhdl476 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        m1s3DataSel_int <= m1s3DataSel;
    end generate;
    xhdl477 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        m1s3DataSel_int <= '0';
    end generate;
    xhdl478 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        m1s4DataSel_int <= m1s4DataSel;
    end generate;
    xhdl479 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        m1s4DataSel_int <= '0';
    end generate;
    xhdl480 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        m1s5DataSel_int <= m1s5DataSel;
    end generate;
    xhdl481 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        m1s5DataSel_int <= '0';
    end generate;
    xhdl482 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        m1s6DataSel_int <= m1s6DataSel;
    end generate;
    xhdl483 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        m1s6DataSel_int <= '0';
    end generate;
    xhdl484 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        m1s7DataSel_int <= m1s7DataSel;
    end generate;
    xhdl485 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        m1s7DataSel_int <= '0';
    end generate;
    xhdl486 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        m1s8DataSel_int <= m1s8DataSel;
    end generate;
    xhdl487 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        m1s8DataSel_int <= '0';
    end generate;
    xhdl488 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        m1s9DataSel_int <= m1s9DataSel;
    end generate;
    xhdl489 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        m1s9DataSel_int <= '0';
    end generate;
    xhdl490 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        m1s10DataSel_int <= m1s10DataSel;
    end generate;
    xhdl491 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        m1s10DataSel_int <= '0';
    end generate;
    xhdl492 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        m1s11DataSel_int <= m1s11DataSel;
    end generate;
    xhdl493 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        m1s11DataSel_int <= '0';
    end generate;
    xhdl494 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        m1s12DataSel_int <= m1s12DataSel;
    end generate;
    xhdl495 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        m1s12DataSel_int <= '0';
    end generate;
    xhdl496 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        m1s13DataSel_int <= m1s13DataSel;
    end generate;
    xhdl497 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        m1s13DataSel_int <= '0';
    end generate;
    xhdl498 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        m1s14DataSel_int <= m1s14DataSel;
    end generate;
    xhdl499 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        m1s14DataSel_int <= '0';
    end generate;
    xhdl500 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        m1s15DataSel_int <= m1s15DataSel;
    end generate;
    xhdl501 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        m1s15DataSel_int <= '0';
    end generate;
    xhdl502 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        m1s16DataSel_int <= m1s16DataSel;
    end generate;
    xhdl503 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        m1s16DataSel_int <= '0';
    end generate;
    xhdl506 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        m0s0GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl507 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        m0s0GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl508 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        m0s1GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl509 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        m0s1GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl510 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        m0s2GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl511 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        m0s2GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl512 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        m0s3GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl513 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        m0s3GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl514 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        m0s4GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl515 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        m0s4GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl516 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        m0s5GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl517 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        m0s5GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl518 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        m0s6GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl519 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        m0s6GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl520 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        m0s7GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl521 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        m0s7GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl522 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        m0s8GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl523 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        m0s8GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl524 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        m0s9GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl525 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        m0s9GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl526 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        m0s10GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl527 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        m0s10GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl528 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        m0s11GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl529 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        m0s11GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl530 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        m0s12GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl531 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        m0s12GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl532 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        m0s13GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl533 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        m0s13GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl534 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        m0s14GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl535 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        m0s14GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl536 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        m0s15GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl537 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        m0s15GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl538 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        m0s16GatedHADDR <= M0GATEDHADDR;
    end generate;
    xhdl539 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        m0s16GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl542 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        m1s0GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl543 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        m1s0GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl544 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        m1s1GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl545 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        m1s1GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl546 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        m1s2GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl547 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        m1s2GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl548 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        m1s3GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl549 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        m1s3GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl550 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        m1s4GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl551 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        m1s4GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl552 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        m1s5GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl553 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        m1s5GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl554 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        m1s6GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl555 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        m1s6GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl556 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        m1s7GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl557 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        m1s7GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl558 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        m1s8GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl559 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        m1s8GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl560 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        m1s9GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl561 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        m1s9GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl562 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        m1s10GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl563 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        m1s10GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl564 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        m1s11GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl565 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        m1s11GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl566 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        m1s12GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl567 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        m1s12GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl568 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        m1s13GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl569 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        m1s13GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl570 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        m1s14GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl571 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        m1s14GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl572 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        m1s15GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl573 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        m1s15GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl574 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        m1s16GatedHADDR <= M1GATEDHADDR;
    end generate;
    xhdl575 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        m1s16GatedHADDR <= "00000000000000000000000000000000";
    end generate;
    xhdl578 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        m0s0GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl579 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        m0s0GatedHMASTLOCK <= '0';
    end generate;
    xhdl580 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        m0s1GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl581 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        m0s1GatedHMASTLOCK <= '0';
    end generate;
    xhdl582 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        m0s2GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl583 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        m0s2GatedHMASTLOCK <= '0';
    end generate;
    xhdl584 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        m0s3GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl585 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        m0s3GatedHMASTLOCK <= '0';
    end generate;
    xhdl586 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        m0s4GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl587 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        m0s4GatedHMASTLOCK <= '0';
    end generate;
    xhdl588 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        m0s5GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl589 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        m0s5GatedHMASTLOCK <= '0';
    end generate;
    xhdl590 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        m0s6GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl591 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        m0s6GatedHMASTLOCK <= '0';
    end generate;
    xhdl592 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        m0s7GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl593 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        m0s7GatedHMASTLOCK <= '0';
    end generate;
    xhdl594 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        m0s8GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl595 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        m0s8GatedHMASTLOCK <= '0';
    end generate;
    xhdl596 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        m0s9GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl597 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        m0s9GatedHMASTLOCK <= '0';
    end generate;
    xhdl598 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        m0s10GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl599 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        m0s10GatedHMASTLOCK <= '0';
    end generate;
    xhdl600 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        m0s11GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl601 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        m0s11GatedHMASTLOCK <= '0';
    end generate;
    xhdl602 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        m0s12GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl603 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        m0s12GatedHMASTLOCK <= '0';
    end generate;
    xhdl604 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        m0s13GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl605 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        m0s13GatedHMASTLOCK <= '0';
    end generate;
    xhdl606 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        m0s14GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl607 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        m0s14GatedHMASTLOCK <= '0';
    end generate;
    xhdl608 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        m0s15GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl609 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        m0s15GatedHMASTLOCK <= '0';
    end generate;
    xhdl610 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        m0s16GatedHMASTLOCK <= M0GATEDHMASTLOCK;
    end generate;
    xhdl611 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        m0s16GatedHMASTLOCK <= '0';
    end generate;
    xhdl614 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        m1s0GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl615 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        m1s0GatedHMASTLOCK <= '0';
    end generate;
    xhdl616 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        m1s1GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl617 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        m1s1GatedHMASTLOCK <= '0';
    end generate;
    xhdl618 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        m1s2GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl619 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        m1s2GatedHMASTLOCK <= '0';
    end generate;
    xhdl620 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        m1s3GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl621 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        m1s3GatedHMASTLOCK <= '0';
    end generate;
    xhdl622 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        m1s4GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl623 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        m1s4GatedHMASTLOCK <= '0';
    end generate;
    xhdl624 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        m1s5GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl625 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        m1s5GatedHMASTLOCK <= '0';
    end generate;
    xhdl626 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        m1s6GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl627 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        m1s6GatedHMASTLOCK <= '0';
    end generate;
    xhdl628 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        m1s7GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl629 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        m1s7GatedHMASTLOCK <= '0';
    end generate;
    xhdl630 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        m1s8GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl631 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        m1s8GatedHMASTLOCK <= '0';
    end generate;
    xhdl632 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        m1s9GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl633 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        m1s9GatedHMASTLOCK <= '0';
    end generate;
    xhdl634 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        m1s10GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl635 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        m1s10GatedHMASTLOCK <= '0';
    end generate;
    xhdl636 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        m1s11GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl637 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        m1s11GatedHMASTLOCK <= '0';
    end generate;
    xhdl638 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        m1s12GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl639 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        m1s12GatedHMASTLOCK <= '0';
    end generate;
    xhdl640 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        m1s13GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl641 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        m1s13GatedHMASTLOCK <= '0';
    end generate;
    xhdl642 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        m1s14GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl643 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        m1s14GatedHMASTLOCK <= '0';
    end generate;
    xhdl644 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        m1s15GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl645 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        m1s15GatedHMASTLOCK <= '0';
    end generate;
    xhdl646 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        m1s16GatedHMASTLOCK <= M1GATEDHMASTLOCK;
    end generate;
    xhdl647 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        m1s16GatedHMASTLOCK <= '0';
    end generate;
    xhdl650 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        m0s0GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl651 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        m0s0GatedHSIZE <= "000";
    end generate;
    xhdl652 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        m0s1GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl653 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        m0s1GatedHSIZE <= "000";
    end generate;
    xhdl654 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        m0s2GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl655 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        m0s2GatedHSIZE <= "000";
    end generate;
    xhdl656 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        m0s3GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl657 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        m0s3GatedHSIZE <= "000";
    end generate;
    xhdl658 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        m0s4GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl659 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        m0s4GatedHSIZE <= "000";
    end generate;
    xhdl660 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        m0s5GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl661 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        m0s5GatedHSIZE <= "000";
    end generate;
    xhdl662 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        m0s6GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl663 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        m0s6GatedHSIZE <= "000";
    end generate;
    xhdl664 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        m0s7GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl665 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        m0s7GatedHSIZE <= "000";
    end generate;
    xhdl666 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        m0s8GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl667 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        m0s8GatedHSIZE <= "000";
    end generate;
    xhdl668 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        m0s9GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl669 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        m0s9GatedHSIZE <= "000";
    end generate;
    xhdl670 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        m0s10GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl671 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        m0s10GatedHSIZE <= "000";
    end generate;
    xhdl672 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        m0s11GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl673 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        m0s11GatedHSIZE <= "000";
    end generate;
    xhdl674 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        m0s12GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl675 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        m0s12GatedHSIZE <= "000";
    end generate;
    xhdl676 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        m0s13GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl677 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        m0s13GatedHSIZE <= "000";
    end generate;
    xhdl678 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        m0s14GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl679 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        m0s14GatedHSIZE <= "000";
    end generate;
    xhdl680 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        m0s15GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl681 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        m0s15GatedHSIZE <= "000";
    end generate;
    xhdl682 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        m0s16GatedHSIZE <= M0GATEDHSIZE;
    end generate;
    xhdl683 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        m0s16GatedHSIZE <= "000";
    end generate;
    xhdl686 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        m1s0GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl687 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        m1s0GatedHSIZE <= "000";
    end generate;
    xhdl688 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        m1s1GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl689 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        m1s1GatedHSIZE <= "000";
    end generate;
    xhdl690 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        m1s2GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl691 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        m1s2GatedHSIZE <= "000";
    end generate;
    xhdl692 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        m1s3GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl693 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        m1s3GatedHSIZE <= "000";
    end generate;
    xhdl694 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        m1s4GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl695 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        m1s4GatedHSIZE <= "000";
    end generate;
    xhdl696 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        m1s5GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl697 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        m1s5GatedHSIZE <= "000";
    end generate;
    xhdl698 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        m1s6GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl699 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        m1s6GatedHSIZE <= "000";
    end generate;
    xhdl700 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        m1s7GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl701 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        m1s7GatedHSIZE <= "000";
    end generate;
    xhdl702 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        m1s8GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl703 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        m1s8GatedHSIZE <= "000";
    end generate;
    xhdl704 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        m1s9GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl705 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        m1s9GatedHSIZE <= "000";
    end generate;
    xhdl706 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        m1s10GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl707 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        m1s10GatedHSIZE <= "000";
    end generate;
    xhdl708 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        m1s11GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl709 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        m1s11GatedHSIZE <= "000";
    end generate;
    xhdl710 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        m1s12GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl711 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        m1s12GatedHSIZE <= "000";
    end generate;
    xhdl712 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        m1s13GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl713 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        m1s13GatedHSIZE <= "000";
    end generate;
    xhdl714 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        m1s14GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl715 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        m1s14GatedHSIZE <= "000";
    end generate;
    xhdl716 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        m1s15GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl717 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        m1s15GatedHSIZE <= "000";
    end generate;
    xhdl718 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        m1s16GatedHSIZE <= M1GATEDHSIZE;
    end generate;
    xhdl719 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        m1s16GatedHSIZE <= "000";
    end generate;
    xhdl722 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        m0s0GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl723 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        m0s0GatedHTRANS <= '0';
    end generate;
    xhdl724 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        m0s1GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl725 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        m0s1GatedHTRANS <= '0';
    end generate;
    xhdl726 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        m0s2GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl727 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        m0s2GatedHTRANS <= '0';
    end generate;
    xhdl728 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        m0s3GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl729 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        m0s3GatedHTRANS <= '0';
    end generate;
    xhdl730 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        m0s4GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl731 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        m0s4GatedHTRANS <= '0';
    end generate;
    xhdl732 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        m0s5GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl733 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        m0s5GatedHTRANS <= '0';
    end generate;
    xhdl734 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        m0s6GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl735 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        m0s6GatedHTRANS <= '0';
    end generate;
    xhdl736 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        m0s7GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl737 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        m0s7GatedHTRANS <= '0';
    end generate;
    xhdl738 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        m0s8GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl739 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        m0s8GatedHTRANS <= '0';
    end generate;
    xhdl740 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        m0s9GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl741 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        m0s9GatedHTRANS <= '0';
    end generate;
    xhdl742 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        m0s10GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl743 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        m0s10GatedHTRANS <= '0';
    end generate;
    xhdl744 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        m0s11GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl745 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        m0s11GatedHTRANS <= '0';
    end generate;
    xhdl746 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        m0s12GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl747 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        m0s12GatedHTRANS <= '0';
    end generate;
    xhdl748 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        m0s13GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl749 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        m0s13GatedHTRANS <= '0';
    end generate;
    xhdl750 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        m0s14GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl751 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        m0s14GatedHTRANS <= '0';
    end generate;
    xhdl752 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        m0s15GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl753 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        m0s15GatedHTRANS <= '0';
    end generate;
    xhdl754 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        m0s16GatedHTRANS <= M0GATEDHTRANS;
    end generate;
    xhdl755 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        m0s16GatedHTRANS <= '0';
    end generate;
    xhdl758 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        m1s0GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl759 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        m1s0GatedHTRANS <= '0';
    end generate;
    xhdl760 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        m1s1GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl761 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        m1s1GatedHTRANS <= '0';
    end generate;
    xhdl762 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        m1s2GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl763 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        m1s2GatedHTRANS <= '0';
    end generate;
    xhdl764 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        m1s3GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl765 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        m1s3GatedHTRANS <= '0';
    end generate;
    xhdl766 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        m1s4GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl767 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        m1s4GatedHTRANS <= '0';
    end generate;
    xhdl768 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        m1s5GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl769 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        m1s5GatedHTRANS <= '0';
    end generate;
    xhdl770 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        m1s6GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl771 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        m1s6GatedHTRANS <= '0';
    end generate;
    xhdl772 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        m1s7GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl773 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        m1s7GatedHTRANS <= '0';
    end generate;
    xhdl774 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        m1s8GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl775 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        m1s8GatedHTRANS <= '0';
    end generate;
    xhdl776 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        m1s9GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl777 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        m1s9GatedHTRANS <= '0';
    end generate;
    xhdl778 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        m1s10GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl779 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        m1s10GatedHTRANS <= '0';
    end generate;
    xhdl780 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        m1s11GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl781 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        m1s11GatedHTRANS <= '0';
    end generate;
    xhdl782 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        m1s12GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl783 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        m1s12GatedHTRANS <= '0';
    end generate;
    xhdl784 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        m1s13GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl785 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        m1s13GatedHTRANS <= '0';
    end generate;
    xhdl786 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        m1s14GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl787 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        m1s14GatedHTRANS <= '0';
    end generate;
    xhdl788 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        m1s15GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl789 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        m1s15GatedHTRANS <= '0';
    end generate;
    xhdl790 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        m1s16GatedHTRANS <= M1GATEDHTRANS;
    end generate;
    xhdl791 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        m1s16GatedHTRANS <= '0';
    end generate;
    xhdl794 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        m0s0GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl795 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        m0s0GatedHWRITE <= '0';
    end generate;
    xhdl796 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        m0s1GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl797 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        m0s1GatedHWRITE <= '0';
    end generate;
    xhdl798 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        m0s2GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl799 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        m0s2GatedHWRITE <= '0';
    end generate;
    xhdl800 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        m0s3GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl801 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        m0s3GatedHWRITE <= '0';
    end generate;
    xhdl802 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        m0s4GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl803 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        m0s4GatedHWRITE <= '0';
    end generate;
    xhdl804 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        m0s5GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl805 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        m0s5GatedHWRITE <= '0';
    end generate;
    xhdl806 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        m0s6GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl807 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        m0s6GatedHWRITE <= '0';
    end generate;
    xhdl808 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        m0s7GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl809 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        m0s7GatedHWRITE <= '0';
    end generate;
    xhdl810 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        m0s8GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl811 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        m0s8GatedHWRITE <= '0';
    end generate;
    xhdl812 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        m0s9GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl813 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        m0s9GatedHWRITE <= '0';
    end generate;
    xhdl814 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        m0s10GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl815 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        m0s10GatedHWRITE <= '0';
    end generate;
    xhdl816 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        m0s11GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl817 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        m0s11GatedHWRITE <= '0';
    end generate;
    xhdl818 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        m0s12GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl819 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        m0s12GatedHWRITE <= '0';
    end generate;
    xhdl820 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        m0s13GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl821 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        m0s13GatedHWRITE <= '0';
    end generate;
    xhdl822 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        m0s14GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl823 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        m0s14GatedHWRITE <= '0';
    end generate;
    xhdl824 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        m0s15GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl825 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        m0s15GatedHWRITE <= '0';
    end generate;
    xhdl826 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        m0s16GatedHWRITE <= M0GATEDHWRITE;
    end generate;
    xhdl827 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        m0s16GatedHWRITE <= '0';
    end generate;
    xhdl830 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        m1s0GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl831 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        m1s0GatedHWRITE <= '0';
    end generate;
    xhdl832 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        m1s1GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl833 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        m1s1GatedHWRITE <= '0';
    end generate;
    xhdl834 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        m1s2GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl835 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        m1s2GatedHWRITE <= '0';
    end generate;
    xhdl836 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        m1s3GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl837 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        m1s3GatedHWRITE <= '0';
    end generate;
    xhdl838 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        m1s4GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl839 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        m1s4GatedHWRITE <= '0';
    end generate;
    xhdl840 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        m1s5GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl841 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        m1s5GatedHWRITE <= '0';
    end generate;
    xhdl842 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        m1s6GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl843 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        m1s6GatedHWRITE <= '0';
    end generate;
    xhdl844 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        m1s7GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl845 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        m1s7GatedHWRITE <= '0';
    end generate;
    xhdl846 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        m1s8GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl847 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        m1s8GatedHWRITE <= '0';
    end generate;
    xhdl848 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        m1s9GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl849 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        m1s9GatedHWRITE <= '0';
    end generate;
    xhdl850 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        m1s10GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl851 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        m1s10GatedHWRITE <= '0';
    end generate;
    xhdl852 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        m1s11GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl853 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        m1s11GatedHWRITE <= '0';
    end generate;
    xhdl854 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        m1s12GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl855 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        m1s12GatedHWRITE <= '0';
    end generate;
    xhdl856 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        m1s13GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl857 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        m1s13GatedHWRITE <= '0';
    end generate;
    xhdl858 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        m1s14GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl859 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        m1s14GatedHWRITE <= '0';
    end generate;
    xhdl860 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        m1s15GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl861 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        m1s15GatedHWRITE <= '0';
    end generate;
    xhdl862 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        m1s16GatedHWRITE <= M1GATEDHWRITE;
    end generate;
    xhdl863 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        m1s16GatedHWRITE <= '0';
    end generate;
    xhdl866 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        m0s0PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl867 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        m0s0PrevDataSlaveReady <= '1';
    end generate;
    xhdl868 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        m0s1PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl869 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        m0s1PrevDataSlaveReady <= '1';
    end generate;
    xhdl870 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        m0s2PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl871 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        m0s2PrevDataSlaveReady <= '1';
    end generate;
    xhdl872 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        m0s3PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl873 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        m0s3PrevDataSlaveReady <= '1';
    end generate;
    xhdl874 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        m0s4PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl875 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        m0s4PrevDataSlaveReady <= '1';
    end generate;
    xhdl876 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        m0s5PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl877 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        m0s5PrevDataSlaveReady <= '1';
    end generate;
    xhdl878 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        m0s6PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl879 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        m0s6PrevDataSlaveReady <= '1';
    end generate;
    xhdl880 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        m0s7PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl881 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        m0s7PrevDataSlaveReady <= '1';
    end generate;
    xhdl882 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        m0s8PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl883 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        m0s8PrevDataSlaveReady <= '1';
    end generate;
    xhdl884 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        m0s9PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl885 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        m0s9PrevDataSlaveReady <= '1';
    end generate;
    xhdl886 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        m0s10PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl887 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        m0s10PrevDataSlaveReady <= '1';
    end generate;
    xhdl888 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        m0s11PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl889 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        m0s11PrevDataSlaveReady <= '1';
    end generate;
    xhdl890 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        m0s12PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl891 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        m0s12PrevDataSlaveReady <= '1';
    end generate;
    xhdl892 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        m0s13PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl893 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        m0s13PrevDataSlaveReady <= '1';
    end generate;
    xhdl894 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        m0s14PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl895 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        m0s14PrevDataSlaveReady <= '1';
    end generate;
    xhdl896 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        m0s15PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl897 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        m0s15PrevDataSlaveReady <= '1';
    end generate;
    xhdl898 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        m0s16PrevDataSlaveReady <= m0PrevDataSlaveReady;
    end generate;
    xhdl899 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        m0s16PrevDataSlaveReady <= '1';
    end generate;
    xhdl902 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        m1s0PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl903 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        m1s0PrevDataSlaveReady <= '1';
    end generate;
    xhdl904 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        m1s1PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl905 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        m1s1PrevDataSlaveReady <= '1';
    end generate;
    xhdl906 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        m1s2PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl907 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        m1s2PrevDataSlaveReady <= '1';
    end generate;
    xhdl908 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        m1s3PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl909 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        m1s3PrevDataSlaveReady <= '1';
    end generate;
    xhdl910 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        m1s4PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl911 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        m1s4PrevDataSlaveReady <= '1';
    end generate;
    xhdl912 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        m1s5PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl913 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        m1s5PrevDataSlaveReady <= '1';
    end generate;
    xhdl914 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        m1s6PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl915 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        m1s6PrevDataSlaveReady <= '1';
    end generate;
    xhdl916 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        m1s7PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl917 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        m1s7PrevDataSlaveReady <= '1';
    end generate;
    xhdl918 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        m1s8PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl919 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        m1s8PrevDataSlaveReady <= '1';
    end generate;
    xhdl920 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        m1s9PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl921 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        m1s9PrevDataSlaveReady <= '1';
    end generate;
    xhdl922 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        m1s10PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl923 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        m1s10PrevDataSlaveReady <= '1';
    end generate;
    xhdl924 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        m1s11PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl925 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        m1s11PrevDataSlaveReady <= '1';
    end generate;
    xhdl926 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        m1s12PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl927 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        m1s12PrevDataSlaveReady <= '1';
    end generate;
    xhdl928 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        m1s13PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl929 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        m1s13PrevDataSlaveReady <= '1';
    end generate;
    xhdl930 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        m1s14PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl931 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        m1s14PrevDataSlaveReady <= '1';
    end generate;
    xhdl932 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        m1s15PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl933 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        m1s15PrevDataSlaveReady <= '1';
    end generate;
    xhdl934 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        m1s16PrevDataSlaveReady <= m1PrevDataSlaveReady;
    end generate;
    xhdl935 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        m1s16PrevDataSlaveReady <= '1';
    end generate;
    xhdl938 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        M0_HRDATA_S0 <= HRDATA_S0;
    end generate;
    xhdl939 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        M0_HRDATA_S0 <= "00000000000000000000000000000000";
    end generate;
    xhdl940 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        M0_HRDATA_S1 <= HRDATA_S1;
    end generate;
    xhdl941 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        M0_HRDATA_S1 <= "00000000000000000000000000000000";
    end generate;
    xhdl942 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        M0_HRDATA_S2 <= HRDATA_S2;
    end generate;
    xhdl943 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        M0_HRDATA_S2 <= "00000000000000000000000000000000";
    end generate;
    xhdl944 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        M0_HRDATA_S3 <= HRDATA_S3;
    end generate;
    xhdl945 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        M0_HRDATA_S3 <= "00000000000000000000000000000000";
    end generate;
    xhdl946 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        M0_HRDATA_S4 <= HRDATA_S4;
    end generate;
    xhdl947 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        M0_HRDATA_S4 <= "00000000000000000000000000000000";
    end generate;
    xhdl948 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        M0_HRDATA_S5 <= HRDATA_S5;
    end generate;
    xhdl949 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        M0_HRDATA_S5 <= "00000000000000000000000000000000";
    end generate;
    xhdl950 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        M0_HRDATA_S6 <= HRDATA_S6;
    end generate;
    xhdl951 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        M0_HRDATA_S6 <= "00000000000000000000000000000000";
    end generate;
    xhdl952 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        M0_HRDATA_S7 <= HRDATA_S7;
    end generate;
    xhdl953 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        M0_HRDATA_S7 <= "00000000000000000000000000000000";
    end generate;
    xhdl954 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        M0_HRDATA_S8 <= HRDATA_S8;
    end generate;
    xhdl955 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        M0_HRDATA_S8 <= "00000000000000000000000000000000";
    end generate;
    xhdl956 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        M0_HRDATA_S9 <= HRDATA_S9;
    end generate;
    xhdl957 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        M0_HRDATA_S9 <= "00000000000000000000000000000000";
    end generate;
    xhdl958 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        M0_HRDATA_S10 <= HRDATA_S10;
    end generate;
    xhdl959 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        M0_HRDATA_S10 <= "00000000000000000000000000000000";
    end generate;
    xhdl960 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        M0_HRDATA_S11 <= HRDATA_S11;
    end generate;
    xhdl961 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        M0_HRDATA_S11 <= "00000000000000000000000000000000";
    end generate;
    xhdl962 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        M0_HRDATA_S12 <= HRDATA_S12;
    end generate;
    xhdl963 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        M0_HRDATA_S12 <= "00000000000000000000000000000000";
    end generate;
    xhdl964 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        M0_HRDATA_S13 <= HRDATA_S13;
    end generate;
    xhdl965 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        M0_HRDATA_S13 <= "00000000000000000000000000000000";
    end generate;
    xhdl966 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        M0_HRDATA_S14 <= HRDATA_S14;
    end generate;
    xhdl967 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        M0_HRDATA_S14 <= "00000000000000000000000000000000";
    end generate;
    xhdl968 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        M0_HRDATA_S15 <= HRDATA_S15;
    end generate;
    xhdl969 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        M0_HRDATA_S15 <= "00000000000000000000000000000000";
    end generate;
    xhdl970 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        M0_HRDATA_S16 <= HRDATA_S16;
    end generate;
    xhdl971 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        M0_HRDATA_S16 <= "00000000000000000000000000000000";
    end generate;
    xhdl972 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        M1_HRDATA_S0 <= HRDATA_S0;
    end generate;
    xhdl973 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        M1_HRDATA_S0 <= "00000000000000000000000000000000";
    end generate;
    xhdl974 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        M1_HRDATA_S1 <= HRDATA_S1;
    end generate;
    xhdl975 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        M1_HRDATA_S1 <= "00000000000000000000000000000000";
    end generate;
    xhdl976 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        M1_HRDATA_S2 <= HRDATA_S2;
    end generate;
    xhdl977 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        M1_HRDATA_S2 <= "00000000000000000000000000000000";
    end generate;
    xhdl978 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        M1_HRDATA_S3 <= HRDATA_S3;
    end generate;
    xhdl979 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        M1_HRDATA_S3 <= "00000000000000000000000000000000";
    end generate;
    xhdl980 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        M1_HRDATA_S4 <= HRDATA_S4;
    end generate;
    xhdl981 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        M1_HRDATA_S4 <= "00000000000000000000000000000000";
    end generate;
    xhdl982 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        M1_HRDATA_S5 <= HRDATA_S5;
    end generate;
    xhdl983 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        M1_HRDATA_S5 <= "00000000000000000000000000000000";
    end generate;
    xhdl984 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        M1_HRDATA_S6 <= HRDATA_S6;
    end generate;
    xhdl985 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        M1_HRDATA_S6 <= "00000000000000000000000000000000";
    end generate;
    xhdl986 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        M1_HRDATA_S7 <= HRDATA_S7;
    end generate;
    xhdl987 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        M1_HRDATA_S7 <= "00000000000000000000000000000000";
    end generate;
    xhdl988 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        M1_HRDATA_S8 <= HRDATA_S8;
    end generate;
    xhdl989 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        M1_HRDATA_S8 <= "00000000000000000000000000000000";
    end generate;
    xhdl990 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        M1_HRDATA_S9 <= HRDATA_S9;
    end generate;
    xhdl991 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        M1_HRDATA_S9 <= "00000000000000000000000000000000";
    end generate;
    xhdl992 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        M1_HRDATA_S10 <= HRDATA_S10;
    end generate;
    xhdl993 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        M1_HRDATA_S10 <= "00000000000000000000000000000000";
    end generate;
    xhdl994 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        M1_HRDATA_S11 <= HRDATA_S11;
    end generate;
    xhdl995 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        M1_HRDATA_S11 <= "00000000000000000000000000000000";
    end generate;
    xhdl996 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        M1_HRDATA_S12 <= HRDATA_S12;
    end generate;
    xhdl997 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        M1_HRDATA_S12 <= "00000000000000000000000000000000";
    end generate;
    xhdl998 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        M1_HRDATA_S13 <= HRDATA_S13;
    end generate;
    xhdl999 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        M1_HRDATA_S13 <= "00000000000000000000000000000000";
    end generate;
    xhdl1000 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        M1_HRDATA_S14 <= HRDATA_S14;
    end generate;
    xhdl1001 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        M1_HRDATA_S14 <= "00000000000000000000000000000000";
    end generate;
    xhdl1002 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        M1_HRDATA_S15 <= HRDATA_S15;
    end generate;
    xhdl1003 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        M1_HRDATA_S15 <= "00000000000000000000000000000000";
    end generate;
    xhdl1004 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        M1_HRDATA_S16 <= HRDATA_S16;
    end generate;
    xhdl1005 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        M1_HRDATA_S16 <= "00000000000000000000000000000000";
    end generate;
    xhdl1006 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        HWDATA_M0S0 <= HWDATA_M0;
    end generate;
    xhdl1007 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        HWDATA_M0S0 <= "00000000000000000000000000000000";
    end generate;
    xhdl1008 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        HWDATA_M0S1 <= HWDATA_M0;
    end generate;
    xhdl1009 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        HWDATA_M0S1 <= "00000000000000000000000000000000";
    end generate;
    xhdl1010 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        HWDATA_M0S2 <= HWDATA_M0;
    end generate;
    xhdl1011 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        HWDATA_M0S2 <= "00000000000000000000000000000000";
    end generate;
    xhdl1012 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        HWDATA_M0S3 <= HWDATA_M0;
    end generate;
    xhdl1013 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        HWDATA_M0S3 <= "00000000000000000000000000000000";
    end generate;
    xhdl1014 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        HWDATA_M0S4 <= HWDATA_M0;
    end generate;
    xhdl1015 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        HWDATA_M0S4 <= "00000000000000000000000000000000";
    end generate;
    xhdl1016 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        HWDATA_M0S5 <= HWDATA_M0;
    end generate;
    xhdl1017 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        HWDATA_M0S5 <= "00000000000000000000000000000000";
    end generate;
    xhdl1018 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        HWDATA_M0S6 <= HWDATA_M0;
    end generate;
    xhdl1019 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        HWDATA_M0S6 <= "00000000000000000000000000000000";
    end generate;
    xhdl1020 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        HWDATA_M0S7 <= HWDATA_M0;
    end generate;
    xhdl1021 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        HWDATA_M0S7 <= "00000000000000000000000000000000";
    end generate;
    xhdl1022 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        HWDATA_M0S8 <= HWDATA_M0;
    end generate;
    xhdl1023 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        HWDATA_M0S8 <= "00000000000000000000000000000000";
    end generate;
    xhdl1024 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        HWDATA_M0S9 <= HWDATA_M0;
    end generate;
    xhdl1025 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        HWDATA_M0S9 <= "00000000000000000000000000000000";
    end generate;
    xhdl1026 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        HWDATA_M0S10 <= HWDATA_M0;
    end generate;
    xhdl1027 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        HWDATA_M0S10 <= "00000000000000000000000000000000";
    end generate;
    xhdl1028 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        HWDATA_M0S11 <= HWDATA_M0;
    end generate;
    xhdl1029 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        HWDATA_M0S11 <= "00000000000000000000000000000000";
    end generate;
    xhdl1030 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        HWDATA_M0S12 <= HWDATA_M0;
    end generate;
    xhdl1031 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        HWDATA_M0S12 <= "00000000000000000000000000000000";
    end generate;
    xhdl1032 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        HWDATA_M0S13 <= HWDATA_M0;
    end generate;
    xhdl1033 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        HWDATA_M0S13 <= "00000000000000000000000000000000";
    end generate;
    xhdl1034 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        HWDATA_M0S14 <= HWDATA_M0;
    end generate;
    xhdl1035 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        HWDATA_M0S14 <= "00000000000000000000000000000000";
    end generate;
    xhdl1036 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        HWDATA_M0S15 <= HWDATA_M0;
    end generate;
    xhdl1037 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        HWDATA_M0S15 <= "00000000000000000000000000000000";
    end generate;
    xhdl1038 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        HWDATA_M0S16 <= HWDATA_M0;
    end generate;
    xhdl1039 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        HWDATA_M0S16 <= "00000000000000000000000000000000";
    end generate;
    xhdl1042 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        HWDATA_M1S0 <= HWDATA_M1;
    end generate;
    xhdl1043 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        HWDATA_M1S0 <= "00000000000000000000000000000000";
    end generate;
    xhdl1044 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        HWDATA_M1S1 <= HWDATA_M1;
    end generate;
    xhdl1045 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        HWDATA_M1S1 <= "00000000000000000000000000000000";
    end generate;
    xhdl1046 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        HWDATA_M1S2 <= HWDATA_M1;
    end generate;
    xhdl1047 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        HWDATA_M1S2 <= "00000000000000000000000000000000";
    end generate;
    xhdl1048 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        HWDATA_M1S3 <= HWDATA_M1;
    end generate;
    xhdl1049 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        HWDATA_M1S3 <= "00000000000000000000000000000000";
    end generate;
    xhdl1050 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        HWDATA_M1S4 <= HWDATA_M1;
    end generate;
    xhdl1051 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        HWDATA_M1S4 <= "00000000000000000000000000000000";
    end generate;
    xhdl1052 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        HWDATA_M1S5 <= HWDATA_M1;
    end generate;
    xhdl1053 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        HWDATA_M1S5 <= "00000000000000000000000000000000";
    end generate;
    xhdl1054 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        HWDATA_M1S6 <= HWDATA_M1;
    end generate;
    xhdl1055 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        HWDATA_M1S6 <= "00000000000000000000000000000000";
    end generate;
    xhdl1056 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        HWDATA_M1S7 <= HWDATA_M1;
    end generate;
    xhdl1057 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        HWDATA_M1S7 <= "00000000000000000000000000000000";
    end generate;
    xhdl1058 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        HWDATA_M1S8 <= HWDATA_M1;
    end generate;
    xhdl1059 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        HWDATA_M1S8 <= "00000000000000000000000000000000";
    end generate;
    xhdl1060 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        HWDATA_M1S9 <= HWDATA_M1;
    end generate;
    xhdl1061 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        HWDATA_M1S9 <= "00000000000000000000000000000000";
    end generate;
    xhdl1062 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        HWDATA_M1S10 <= HWDATA_M1;
    end generate;
    xhdl1063 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        HWDATA_M1S10 <= "00000000000000000000000000000000";
    end generate;
    xhdl1064 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        HWDATA_M1S11 <= HWDATA_M1;
    end generate;
    xhdl1065 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        HWDATA_M1S11 <= "00000000000000000000000000000000";
    end generate;
    xhdl1066 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        HWDATA_M1S12 <= HWDATA_M1;
    end generate;
    xhdl1067 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        HWDATA_M1S12 <= "00000000000000000000000000000000";
    end generate;
    xhdl1068 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        HWDATA_M1S13 <= HWDATA_M1;
    end generate;
    xhdl1069 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        HWDATA_M1S13 <= "00000000000000000000000000000000";
    end generate;
    xhdl1070 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        HWDATA_M1S14 <= HWDATA_M1;
    end generate;
    xhdl1071 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        HWDATA_M1S14 <= "00000000000000000000000000000000";
    end generate;
    xhdl1072 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        HWDATA_M1S15 <= HWDATA_M1;
    end generate;
    xhdl1073 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        HWDATA_M1S15 <= "00000000000000000000000000000000";
    end generate;
    xhdl1074 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        HWDATA_M1S16 <= HWDATA_M1;
    end generate;
    xhdl1075 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        HWDATA_M1S16 <= "00000000000000000000000000000000";
    end generate;
    xhdl1078 : if ((M0_AHBSLOTENABLE_slv(0)) = '1') generate
        M0_HREADYOUT_S0 <= HREADYOUT_S0;
    end generate;
    xhdl1079 : if (not((M0_AHBSLOTENABLE_slv(0)) = '1')) generate
        M0_HREADYOUT_S0 <= '1';
    end generate;
    xhdl1080 : if ((M0_AHBSLOTENABLE_slv(1)) = '1') generate
        M0_HREADYOUT_S1 <= HREADYOUT_S1;
    end generate;
    xhdl1081 : if (not((M0_AHBSLOTENABLE_slv(1)) = '1')) generate
        M0_HREADYOUT_S1 <= '1';
    end generate;
    xhdl1082 : if ((M0_AHBSLOTENABLE_slv(2)) = '1') generate
        M0_HREADYOUT_S2 <= HREADYOUT_S2;
    end generate;
    xhdl1083 : if (not((M0_AHBSLOTENABLE_slv(2)) = '1')) generate
        M0_HREADYOUT_S2 <= '1';
    end generate;
    xhdl1084 : if ((M0_AHBSLOTENABLE_slv(3)) = '1') generate
        M0_HREADYOUT_S3 <= HREADYOUT_S3;
    end generate;
    xhdl1085 : if (not((M0_AHBSLOTENABLE_slv(3)) = '1')) generate
        M0_HREADYOUT_S3 <= '1';
    end generate;
    xhdl1086 : if ((M0_AHBSLOTENABLE_slv(4)) = '1') generate
        M0_HREADYOUT_S4 <= HREADYOUT_S4;
    end generate;
    xhdl1087 : if (not((M0_AHBSLOTENABLE_slv(4)) = '1')) generate
        M0_HREADYOUT_S4 <= '1';
    end generate;
    xhdl1088 : if ((M0_AHBSLOTENABLE_slv(5)) = '1') generate
        M0_HREADYOUT_S5 <= HREADYOUT_S5;
    end generate;
    xhdl1089 : if (not((M0_AHBSLOTENABLE_slv(5)) = '1')) generate
        M0_HREADYOUT_S5 <= '1';
    end generate;
    xhdl1090 : if ((M0_AHBSLOTENABLE_slv(6)) = '1') generate
        M0_HREADYOUT_S6 <= HREADYOUT_S6;
    end generate;
    xhdl1091 : if (not((M0_AHBSLOTENABLE_slv(6)) = '1')) generate
        M0_HREADYOUT_S6 <= '1';
    end generate;
    xhdl1092 : if ((M0_AHBSLOTENABLE_slv(7)) = '1') generate
        M0_HREADYOUT_S7 <= HREADYOUT_S7;
    end generate;
    xhdl1093 : if (not((M0_AHBSLOTENABLE_slv(7)) = '1')) generate
        M0_HREADYOUT_S7 <= '1';
    end generate;
    xhdl1094 : if ((M0_AHBSLOTENABLE_slv(8)) = '1') generate
        M0_HREADYOUT_S8 <= HREADYOUT_S8;
    end generate;
    xhdl1095 : if (not((M0_AHBSLOTENABLE_slv(8)) = '1')) generate
        M0_HREADYOUT_S8 <= '1';
    end generate;
    xhdl1096 : if ((M0_AHBSLOTENABLE_slv(9)) = '1') generate
        M0_HREADYOUT_S9 <= HREADYOUT_S9;
    end generate;
    xhdl1097 : if (not((M0_AHBSLOTENABLE_slv(9)) = '1')) generate
        M0_HREADYOUT_S9 <= '1';
    end generate;
    xhdl1098 : if ((M0_AHBSLOTENABLE_slv(10)) = '1') generate
        M0_HREADYOUT_S10 <= HREADYOUT_S10;
    end generate;
    xhdl1099 : if (not((M0_AHBSLOTENABLE_slv(10)) = '1')) generate
        M0_HREADYOUT_S10 <= '1';
    end generate;
    xhdl1100 : if ((M0_AHBSLOTENABLE_slv(11)) = '1') generate
        M0_HREADYOUT_S11 <= HREADYOUT_S11;
    end generate;
    xhdl1101 : if (not((M0_AHBSLOTENABLE_slv(11)) = '1')) generate
        M0_HREADYOUT_S11 <= '1';
    end generate;
    xhdl1102 : if ((M0_AHBSLOTENABLE_slv(12)) = '1') generate
        M0_HREADYOUT_S12 <= HREADYOUT_S12;
    end generate;
    xhdl1103 : if (not((M0_AHBSLOTENABLE_slv(12)) = '1')) generate
        M0_HREADYOUT_S12 <= '1';
    end generate;
    xhdl1104 : if ((M0_AHBSLOTENABLE_slv(13)) = '1') generate
        M0_HREADYOUT_S13 <= HREADYOUT_S13;
    end generate;
    xhdl1105 : if (not((M0_AHBSLOTENABLE_slv(13)) = '1')) generate
        M0_HREADYOUT_S13 <= '1';
    end generate;
    xhdl1106 : if ((M0_AHBSLOTENABLE_slv(14)) = '1') generate
        M0_HREADYOUT_S14 <= HREADYOUT_S14;
    end generate;
    xhdl1107 : if (not((M0_AHBSLOTENABLE_slv(14)) = '1')) generate
        M0_HREADYOUT_S14 <= '1';
    end generate;
    xhdl1108 : if ((M0_AHBSLOTENABLE_slv(15)) = '1') generate
        M0_HREADYOUT_S15 <= HREADYOUT_S15;
    end generate;
    xhdl1109 : if (not((M0_AHBSLOTENABLE_slv(15)) = '1')) generate
        M0_HREADYOUT_S15 <= '1';
    end generate;
    xhdl1110 : if ((M0_AHBSLOTENABLE_slv(16)) = '1') generate
        M0_HREADYOUT_S16 <= HREADYOUT_S16;
    end generate;
    xhdl1111 : if (not((M0_AHBSLOTENABLE_slv(16)) = '1')) generate
        M0_HREADYOUT_S16 <= '1';
    end generate;
    xhdl1114 : if ((M1_AHBSLOTENABLE_slv(0)) = '1') generate
        M1_HREADYOUT_S0 <= HREADYOUT_S0;
    end generate;
    xhdl1115 : if (not((M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        M1_HREADYOUT_S0 <= '1';
    end generate;
    xhdl1116 : if ((M1_AHBSLOTENABLE_slv(1)) = '1') generate
        M1_HREADYOUT_S1 <= HREADYOUT_S1;
    end generate;
    xhdl1117 : if (not((M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        M1_HREADYOUT_S1 <= '1';
    end generate;
    xhdl1118 : if ((M1_AHBSLOTENABLE_slv(2)) = '1') generate
        M1_HREADYOUT_S2 <= HREADYOUT_S2;
    end generate;
    xhdl1119 : if (not((M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        M1_HREADYOUT_S2 <= '1';
    end generate;
    xhdl1120 : if ((M1_AHBSLOTENABLE_slv(3)) = '1') generate
        M1_HREADYOUT_S3 <= HREADYOUT_S3;
    end generate;
    xhdl1121 : if (not((M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        M1_HREADYOUT_S3 <= '1';
    end generate;
    xhdl1122 : if ((M1_AHBSLOTENABLE_slv(4)) = '1') generate
        M1_HREADYOUT_S4 <= HREADYOUT_S4;
    end generate;
    xhdl1123 : if (not((M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        M1_HREADYOUT_S4 <= '1';
    end generate;
    xhdl1124 : if ((M1_AHBSLOTENABLE_slv(5)) = '1') generate
        M1_HREADYOUT_S5 <= HREADYOUT_S5;
    end generate;
    xhdl1125 : if (not((M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        M1_HREADYOUT_S5 <= '1';
    end generate;
    xhdl1126 : if ((M1_AHBSLOTENABLE_slv(6)) = '1') generate
        M1_HREADYOUT_S6 <= HREADYOUT_S6;
    end generate;
    xhdl1127 : if (not((M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        M1_HREADYOUT_S6 <= '1';
    end generate;
    xhdl1128 : if ((M1_AHBSLOTENABLE_slv(7)) = '1') generate
        M1_HREADYOUT_S7 <= HREADYOUT_S7;
    end generate;
    xhdl1129 : if (not((M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        M1_HREADYOUT_S7 <= '1';
    end generate;
    xhdl1130 : if ((M1_AHBSLOTENABLE_slv(8)) = '1') generate
        M1_HREADYOUT_S8 <= HREADYOUT_S8;
    end generate;
    xhdl1131 : if (not((M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        M1_HREADYOUT_S8 <= '1';
    end generate;
    xhdl1132 : if ((M1_AHBSLOTENABLE_slv(9)) = '1') generate
        M1_HREADYOUT_S9 <= HREADYOUT_S9;
    end generate;
    xhdl1133 : if (not((M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        M1_HREADYOUT_S9 <= '1';
    end generate;
    xhdl1134 : if ((M1_AHBSLOTENABLE_slv(10)) = '1') generate
        M1_HREADYOUT_S10 <= HREADYOUT_S10;
    end generate;
    xhdl1135 : if (not((M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        M1_HREADYOUT_S10 <= '1';
    end generate;
    xhdl1136 : if ((M1_AHBSLOTENABLE_slv(11)) = '1') generate
        M1_HREADYOUT_S11 <= HREADYOUT_S11;
    end generate;
    xhdl1137 : if (not((M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        M1_HREADYOUT_S11 <= '1';
    end generate;
    xhdl1138 : if ((M1_AHBSLOTENABLE_slv(12)) = '1') generate
        M1_HREADYOUT_S12 <= HREADYOUT_S12;
    end generate;
    xhdl1139 : if (not((M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        M1_HREADYOUT_S12 <= '1';
    end generate;
    xhdl1140 : if ((M1_AHBSLOTENABLE_slv(13)) = '1') generate
        M1_HREADYOUT_S13 <= HREADYOUT_S13;
    end generate;
    xhdl1141 : if (not((M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        M1_HREADYOUT_S13 <= '1';
    end generate;
    xhdl1142 : if ((M1_AHBSLOTENABLE_slv(14)) = '1') generate
        M1_HREADYOUT_S14 <= HREADYOUT_S14;
    end generate;
    xhdl1143 : if (not((M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        M1_HREADYOUT_S14 <= '1';
    end generate;
    xhdl1144 : if ((M1_AHBSLOTENABLE_slv(15)) = '1') generate
        M1_HREADYOUT_S15 <= HREADYOUT_S15;
    end generate;
    xhdl1145 : if (not((M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        M1_HREADYOUT_S15 <= '1';
    end generate;
    xhdl1146 : if ((M1_AHBSLOTENABLE_slv(16)) = '1') generate
        M1_HREADYOUT_S16 <= HREADYOUT_S16;
    end generate;
    xhdl1147 : if (not((M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        M1_HREADYOUT_S16 <= '1';
    end generate;
    xhdl1150 : if ((M0_AHBSLOTENABLE_slv(0) or M1_AHBSLOTENABLE_slv(0)) = '1') generate
        INT_HREADYOUT_S0 <= HREADYOUT_S0;
    end generate;
    xhdl1151 : if (not((M0_AHBSLOTENABLE_slv(0) or M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        INT_HREADYOUT_S0 <= '1';
    end generate;
    xhdl1152 : if ((M0_AHBSLOTENABLE_slv(1) or M1_AHBSLOTENABLE_slv(1)) = '1') generate
        INT_HREADYOUT_S1 <= HREADYOUT_S1;
    end generate;
    xhdl1153 : if (not((M0_AHBSLOTENABLE_slv(1) or M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        INT_HREADYOUT_S1 <= '1';
    end generate;
    xhdl1154 : if ((M0_AHBSLOTENABLE_slv(2) or M1_AHBSLOTENABLE_slv(2)) = '1') generate
        INT_HREADYOUT_S2 <= HREADYOUT_S2;
    end generate;
    xhdl1155 : if (not((M0_AHBSLOTENABLE_slv(2) or M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        INT_HREADYOUT_S2 <= '1';
    end generate;
    xhdl1156 : if ((M0_AHBSLOTENABLE_slv(3) or M1_AHBSLOTENABLE_slv(3)) = '1') generate
        INT_HREADYOUT_S3 <= HREADYOUT_S3;
    end generate;
    xhdl1157 : if (not((M0_AHBSLOTENABLE_slv(3) or M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        INT_HREADYOUT_S3 <= '1';
    end generate;
    xhdl1158 : if ((M0_AHBSLOTENABLE_slv(4) or M1_AHBSLOTENABLE_slv(4)) = '1') generate
        INT_HREADYOUT_S4 <= HREADYOUT_S4;
    end generate;
    xhdl1159 : if (not((M0_AHBSLOTENABLE_slv(4) or M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        INT_HREADYOUT_S4 <= '1';
    end generate;
    xhdl1160 : if ((M0_AHBSLOTENABLE_slv(5) or M1_AHBSLOTENABLE_slv(5)) = '1') generate
        INT_HREADYOUT_S5 <= HREADYOUT_S5;
    end generate;
    xhdl1161 : if (not((M0_AHBSLOTENABLE_slv(5) or M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        INT_HREADYOUT_S5 <= '1';
    end generate;
    xhdl1162 : if ((M0_AHBSLOTENABLE_slv(6) or M1_AHBSLOTENABLE_slv(6)) = '1') generate
        INT_HREADYOUT_S6 <= HREADYOUT_S6;
    end generate;
    xhdl1163 : if (not((M0_AHBSLOTENABLE_slv(6) or M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        INT_HREADYOUT_S6 <= '1';
    end generate;
    xhdl1164 : if ((M0_AHBSLOTENABLE_slv(7) or M1_AHBSLOTENABLE_slv(7)) = '1') generate
        INT_HREADYOUT_S7 <= HREADYOUT_S7;
    end generate;
    xhdl1165 : if (not((M0_AHBSLOTENABLE_slv(7) or M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        INT_HREADYOUT_S7 <= '1';
    end generate;
    xhdl1166 : if ((M0_AHBSLOTENABLE_slv(8) or M1_AHBSLOTENABLE_slv(8)) = '1') generate
        INT_HREADYOUT_S8 <= HREADYOUT_S8;
    end generate;
    xhdl1167 : if (not((M0_AHBSLOTENABLE_slv(8) or M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        INT_HREADYOUT_S8 <= '1';
    end generate;
    xhdl1168 : if ((M0_AHBSLOTENABLE_slv(9) or M1_AHBSLOTENABLE_slv(9)) = '1') generate
        INT_HREADYOUT_S9 <= HREADYOUT_S9;
    end generate;
    xhdl1169 : if (not((M0_AHBSLOTENABLE_slv(9) or M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        INT_HREADYOUT_S9 <= '1';
    end generate;
    xhdl1170 : if ((M0_AHBSLOTENABLE_slv(10) or M1_AHBSLOTENABLE_slv(10)) = '1') generate
        INT_HREADYOUT_S10 <= HREADYOUT_S10;
    end generate;
    xhdl1171 : if (not((M0_AHBSLOTENABLE_slv(10) or M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        INT_HREADYOUT_S10 <= '1';
    end generate;
    xhdl1172 : if ((M0_AHBSLOTENABLE_slv(11) or M1_AHBSLOTENABLE_slv(11)) = '1') generate
        INT_HREADYOUT_S11 <= HREADYOUT_S11;
    end generate;
    xhdl1173 : if (not((M0_AHBSLOTENABLE_slv(11) or M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        INT_HREADYOUT_S11 <= '1';
    end generate;
    xhdl1174 : if ((M0_AHBSLOTENABLE_slv(12) or M1_AHBSLOTENABLE_slv(12)) = '1') generate
        INT_HREADYOUT_S12 <= HREADYOUT_S12;
    end generate;
    xhdl1175 : if (not((M0_AHBSLOTENABLE_slv(12) or M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        INT_HREADYOUT_S12 <= '1';
    end generate;
    xhdl1176 : if ((M0_AHBSLOTENABLE_slv(13) or M1_AHBSLOTENABLE_slv(13)) = '1') generate
        INT_HREADYOUT_S13 <= HREADYOUT_S13;
    end generate;
    xhdl1177 : if (not((M0_AHBSLOTENABLE_slv(13) or M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        INT_HREADYOUT_S13 <= '1';
    end generate;
    xhdl1178 : if ((M0_AHBSLOTENABLE_slv(14) or M1_AHBSLOTENABLE_slv(14)) = '1') generate
        INT_HREADYOUT_S14 <= HREADYOUT_S14;
    end generate;
    xhdl1179 : if (not((M0_AHBSLOTENABLE_slv(14) or M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        INT_HREADYOUT_S14 <= '1';
    end generate;
    xhdl1180 : if ((M0_AHBSLOTENABLE_slv(15) or M1_AHBSLOTENABLE_slv(15)) = '1') generate
        INT_HREADYOUT_S15 <= HREADYOUT_S15;
    end generate;
    xhdl1181 : if (not((M0_AHBSLOTENABLE_slv(15) or M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        INT_HREADYOUT_S15 <= '1';
    end generate;
    xhdl1182 : if ((M0_AHBSLOTENABLE_slv(16) or M1_AHBSLOTENABLE_slv(16)) = '1') generate
        INT_HREADYOUT_S16 <= HREADYOUT_S16;
    end generate;
    xhdl1183 : if (not((M0_AHBSLOTENABLE_slv(16) or M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        INT_HREADYOUT_S16 <= '1';
    end generate;
    xhdl1184 : if ((M0_AHBSLOTENABLE_slv(0) or M1_AHBSLOTENABLE_slv(0)) = '1') generate
        INT_HRESP_S0 <= HRESP_S0;
    end generate;
    xhdl1185 : if (not((M0_AHBSLOTENABLE_slv(0) or M1_AHBSLOTENABLE_slv(0)) = '1')) generate
        INT_HRESP_S0 <= '0';
    end generate;
    xhdl1186 : if ((M0_AHBSLOTENABLE_slv(1) or M1_AHBSLOTENABLE_slv(1)) = '1') generate
        INT_HRESP_S1 <= HRESP_S1;
    end generate;
    xhdl1187 : if (not((M0_AHBSLOTENABLE_slv(1) or M1_AHBSLOTENABLE_slv(1)) = '1')) generate
        INT_HRESP_S1 <= '0';
    end generate;
    xhdl1188 : if ((M0_AHBSLOTENABLE_slv(2) or M1_AHBSLOTENABLE_slv(2)) = '1') generate
        INT_HRESP_S2 <= HRESP_S2;
    end generate;
    xhdl1189 : if (not((M0_AHBSLOTENABLE_slv(2) or M1_AHBSLOTENABLE_slv(2)) = '1')) generate
        INT_HRESP_S2 <= '0';
    end generate;
    xhdl1190 : if ((M0_AHBSLOTENABLE_slv(3) or M1_AHBSLOTENABLE_slv(3)) = '1') generate
        INT_HRESP_S3 <= HRESP_S3;
    end generate;
    xhdl1191 : if (not((M0_AHBSLOTENABLE_slv(3) or M1_AHBSLOTENABLE_slv(3)) = '1')) generate
        INT_HRESP_S3 <= '0';
    end generate;
    xhdl1192 : if ((M0_AHBSLOTENABLE_slv(4) or M1_AHBSLOTENABLE_slv(4)) = '1') generate
        INT_HRESP_S4 <= HRESP_S4;
    end generate;
    xhdl1193 : if (not((M0_AHBSLOTENABLE_slv(4) or M1_AHBSLOTENABLE_slv(4)) = '1')) generate
        INT_HRESP_S4 <= '0';
    end generate;
    xhdl1194 : if ((M0_AHBSLOTENABLE_slv(5) or M1_AHBSLOTENABLE_slv(5)) = '1') generate
        INT_HRESP_S5 <= HRESP_S5;
    end generate;
    xhdl1195 : if (not((M0_AHBSLOTENABLE_slv(5) or M1_AHBSLOTENABLE_slv(5)) = '1')) generate
        INT_HRESP_S5 <= '0';
    end generate;
    xhdl1196 : if ((M0_AHBSLOTENABLE_slv(6) or M1_AHBSLOTENABLE_slv(6)) = '1') generate
        INT_HRESP_S6 <= HRESP_S6;
    end generate;
    xhdl1197 : if (not((M0_AHBSLOTENABLE_slv(6) or M1_AHBSLOTENABLE_slv(6)) = '1')) generate
        INT_HRESP_S6 <= '0';
    end generate;
    xhdl1198 : if ((M0_AHBSLOTENABLE_slv(7) or M1_AHBSLOTENABLE_slv(7)) = '1') generate
        INT_HRESP_S7 <= HRESP_S7;
    end generate;
    xhdl1199 : if (not((M0_AHBSLOTENABLE_slv(7) or M1_AHBSLOTENABLE_slv(7)) = '1')) generate
        INT_HRESP_S7 <= '0';
    end generate;
    xhdl1200 : if ((M0_AHBSLOTENABLE_slv(8) or M1_AHBSLOTENABLE_slv(8)) = '1') generate
        INT_HRESP_S8 <= HRESP_S8;
    end generate;
    xhdl1201 : if (not((M0_AHBSLOTENABLE_slv(8) or M1_AHBSLOTENABLE_slv(8)) = '1')) generate
        INT_HRESP_S8 <= '0';
    end generate;
    xhdl1202 : if ((M0_AHBSLOTENABLE_slv(9) or M1_AHBSLOTENABLE_slv(9)) = '1') generate
        INT_HRESP_S9 <= HRESP_S9;
    end generate;
    xhdl1203 : if (not((M0_AHBSLOTENABLE_slv(9) or M1_AHBSLOTENABLE_slv(9)) = '1')) generate
        INT_HRESP_S9 <= '0';
    end generate;
    xhdl1204 : if ((M0_AHBSLOTENABLE_slv(10) or M1_AHBSLOTENABLE_slv(10)) = '1') generate
        INT_HRESP_S10 <= HRESP_S10;
    end generate;
    xhdl1205 : if (not((M0_AHBSLOTENABLE_slv(10) or M1_AHBSLOTENABLE_slv(10)) = '1')) generate
        INT_HRESP_S10 <= '0';
    end generate;
    xhdl1206 : if ((M0_AHBSLOTENABLE_slv(11) or M1_AHBSLOTENABLE_slv(11)) = '1') generate
        INT_HRESP_S11 <= HRESP_S11;
    end generate;
    xhdl1207 : if (not((M0_AHBSLOTENABLE_slv(11) or M1_AHBSLOTENABLE_slv(11)) = '1')) generate
        INT_HRESP_S11 <= '0';
    end generate;
    xhdl1208 : if ((M0_AHBSLOTENABLE_slv(12) or M1_AHBSLOTENABLE_slv(12)) = '1') generate
        INT_HRESP_S12 <= HRESP_S12;
    end generate;
    xhdl1209 : if (not((M0_AHBSLOTENABLE_slv(12) or M1_AHBSLOTENABLE_slv(12)) = '1')) generate
        INT_HRESP_S12 <= '0';
    end generate;
    xhdl1210 : if ((M0_AHBSLOTENABLE_slv(13) or M1_AHBSLOTENABLE_slv(13)) = '1') generate
        INT_HRESP_S13 <= HRESP_S13;
    end generate;
    xhdl1211 : if (not((M0_AHBSLOTENABLE_slv(13) or M1_AHBSLOTENABLE_slv(13)) = '1')) generate
        INT_HRESP_S13 <= '0';
    end generate;
    xhdl1212 : if ((M0_AHBSLOTENABLE_slv(14) or M1_AHBSLOTENABLE_slv(14)) = '1') generate
        INT_HRESP_S14 <= HRESP_S14;
    end generate;
    xhdl1213 : if (not((M0_AHBSLOTENABLE_slv(14) or M1_AHBSLOTENABLE_slv(14)) = '1')) generate
        INT_HRESP_S14 <= '0';
    end generate;
    xhdl1214 : if ((M0_AHBSLOTENABLE_slv(15) or M1_AHBSLOTENABLE_slv(15)) = '1') generate
        INT_HRESP_S15 <= HRESP_S15;
    end generate;
    xhdl1215 : if (not((M0_AHBSLOTENABLE_slv(15) or M1_AHBSLOTENABLE_slv(15)) = '1')) generate
        INT_HRESP_S15 <= '0';
    end generate;
    xhdl1216 : if ((M0_AHBSLOTENABLE_slv(16) or M1_AHBSLOTENABLE_slv(16)) = '1') generate
        INT_HRESP_S16 <= HRESP_S16;
    end generate;
    xhdl1217 : if (not((M0_AHBSLOTENABLE_slv(16) or M1_AHBSLOTENABLE_slv(16)) = '1')) generate
        INT_HRESP_S16 <= '0';
    end generate;


    xhdl1218 <= (s16m0AddrReady_int & s15m0AddrReady_int & s14m0AddrReady_int & s13m0AddrReady_int & s12m0AddrReady_int & s11m0AddrReady_int & s10m0AddrReady_int & s9m0AddrReady_int & s8m0AddrReady_int & s7m0AddrReady_int & s6m0AddrReady_int & s5m0AddrReady_int & s4m0AddrReady_int & s3m0AddrReady_int & s2m0AddrReady_int & s1m0AddrReady_int & s0m0AddrReady_int);
    xhdl1219 <= (s16m0DataReady_int & s15m0DataReady_int & s14m0DataReady_int & s13m0DataReady_int & s12m0DataReady_int & s11m0DataReady_int & s10m0DataReady_int & s9m0DataReady_int & s8m0DataReady_int & s7m0DataReady_int & s6m0DataReady_int & s5m0DataReady_int & s4m0DataReady_int & s3m0DataReady_int & s2m0DataReady_int & s1m0DataReady_int & s0m0DataReady_int);
    xhdl1220 <= (s16m0HResp_int & s15m0HResp_int & s14m0HResp_int & s13m0HResp_int & s12m0HResp_int & s11m0HResp_int & s10m0HResp_int & s9m0HResp_int & s8m0HResp_int & s7m0HResp_int & s6m0HResp_int & s5m0HResp_int & s4m0HResp_int & s3m0HResp_int & s2m0HResp_int & s1m0HResp_int & s0m0HResp_int);
    (m0s16AddrSel, m0s15AddrSel, m0s14AddrSel, m0s13AddrSel, m0s12AddrSel, m0s11AddrSel, m0s10AddrSel, m0s9AddrSel, m0s8AddrSel, m0s7AddrSel, m0s6AddrSel, m0s5AddrSel, m0s4AddrSel, m0s3AddrSel, m0s2AddrSel, m0s1AddrSel, m0s0AddrSel) <= xhdl1221;
    (m0s16DataSel, m0s15DataSel, m0s14DataSel, m0s13DataSel, m0s12DataSel, m0s11DataSel, m0s10DataSel, m0s9DataSel, m0s8DataSel, m0s7DataSel, m0s6DataSel, m0s5DataSel, m0s4DataSel, m0s3DataSel, m0s2DataSel, m0s1DataSel, m0s0DataSel) <= xhdl1222;
    masterstage_0 : COREAHBLITE_MASTERSTAGE
        generic map (
            MEMSPACE         => MEMSPACE,
            HADDR_SHG_CFG    => HADDR_SHG_CFG,
            SC               => SC,
            M_AHBSLOTENABLE  => M0_AHBSLOTENABLE
        )
        port map (
            HCLK                => HCLK,
            HRESETN             => HRESETN,
            HADDR               => HADDR_M0,
            HMASTLOCK           => HMASTLOCK_M0,
            HSIZE               => HSIZE_M0,
            HTRANS              => HTRANS_M0,
            HWRITE              => HWRITE_M0,
            REMAP               => REMAP_M0,
            HRESP               => HRESP_M0_xhdl55,
            HRDATA              => HRDATA_M0_xhdl34,
            HREADY_M            => HREADY_M0_pre,
            SADDRREADY          => xhdl1218,
            SDATAREADY          => xhdl1219,
            SHRESP              => xhdl1220,
            GATEDHADDR          => M0GATEDHADDR,
            GATEDHMASTLOCK      => M0GATEDHMASTLOCK,
            GATEDHSIZE          => M0GATEDHSIZE,
            GATEDHTRANS         => M0GATEDHTRANS,
            GATEDHWRITE         => M0GATEDHWRITE,
            SADDRSEL            => xhdl1221,
            SDATASEL            => xhdl1222,
            PREVDATASLAVEREADY  => m0PrevDataSlaveReady,
            HRDATA_S0           => M0_HRDATA_S0,
            HREADYOUT_S0        => M0_HREADYOUT_S0,
            HRDATA_S1           => M0_HRDATA_S1,
            HREADYOUT_S1        => M0_HREADYOUT_S1,
            HRDATA_S2           => M0_HRDATA_S2,
            HREADYOUT_S2        => M0_HREADYOUT_S2,
            HRDATA_S3           => M0_HRDATA_S3,
            HREADYOUT_S3        => M0_HREADYOUT_S3,
            HRDATA_S4           => M0_HRDATA_S4,
            HREADYOUT_S4        => M0_HREADYOUT_S4,
            HRDATA_S5           => M0_HRDATA_S5,
            HREADYOUT_S5        => M0_HREADYOUT_S5,
            HRDATA_S6           => M0_HRDATA_S6,
            HREADYOUT_S6        => M0_HREADYOUT_S6,
            HRDATA_S7           => M0_HRDATA_S7,
            HREADYOUT_S7        => M0_HREADYOUT_S7,
            HRDATA_S8           => M0_HRDATA_S8,
            HREADYOUT_S8        => M0_HREADYOUT_S8,
            HRDATA_S9           => M0_HRDATA_S9,
            HREADYOUT_S9        => M0_HREADYOUT_S9,
            HRDATA_S10          => M0_HRDATA_S10,
            HREADYOUT_S10       => M0_HREADYOUT_S10,
            HRDATA_S11          => M0_HRDATA_S11,
            HREADYOUT_S11       => M0_HREADYOUT_S11,
            HRDATA_S12          => M0_HRDATA_S12,
            HREADYOUT_S12       => M0_HREADYOUT_S12,
            HRDATA_S13          => M0_HRDATA_S13,
            HREADYOUT_S13       => M0_HREADYOUT_S13,
            HRDATA_S14          => M0_HRDATA_S14,
            HREADYOUT_S14       => M0_HREADYOUT_S14,
            HRDATA_S15          => M0_HRDATA_S15,
            HREADYOUT_S15       => M0_HREADYOUT_S15,
            HRDATA_S16          => M0_HRDATA_S16,
            HREADYOUT_S16       => M0_HREADYOUT_S16
        );


    xhdl1223 <= (s16m1AddrReady_int & s15m1AddrReady_int & s14m1AddrReady_int & s13m1AddrReady_int & s12m1AddrReady_int & s11m1AddrReady_int & s10m1AddrReady_int & s9m1AddrReady_int & s8m1AddrReady_int & s7m1AddrReady_int & s6m1AddrReady_int & s5m1AddrReady_int & s4m1AddrReady_int & s3m1AddrReady_int & s2m1AddrReady_int & s1m1AddrReady_int & s0m1AddrReady_int);
    xhdl1224 <= (s16m1DataReady_int & s15m1DataReady_int & s14m1DataReady_int & s13m1DataReady_int & s12m1DataReady_int & s11m1DataReady_int & s10m1DataReady_int & s9m1DataReady_int & s8m1DataReady_int & s7m1DataReady_int & s6m1DataReady_int & s5m1DataReady_int & s4m1DataReady_int & s3m1DataReady_int & s2m1DataReady_int & s1m1DataReady_int & s0m1DataReady_int);
    xhdl1225 <= (s16m1HResp_int & s15m1HResp_int & s14m1HResp_int & s13m1HResp_int & s12m1HResp_int & s11m1HResp_int & s10m1HResp_int & s9m1HResp_int & s8m1HResp_int & s7m1HResp_int & s6m1HResp_int & s5m1HResp_int & s4m1HResp_int & s3m1HResp_int & s2m1HResp_int & s1m1HResp_int & s0m1HResp_int);
    (m1s16AddrSel, m1s15AddrSel, m1s14AddrSel, m1s13AddrSel, m1s12AddrSel, m1s11AddrSel, m1s10AddrSel, m1s9AddrSel, m1s8AddrSel, m1s7AddrSel, m1s6AddrSel, m1s5AddrSel, m1s4AddrSel, m1s3AddrSel, m1s2AddrSel, m1s1AddrSel, m1s0AddrSel) <= xhdl1226;
    (m1s16DataSel, m1s15DataSel, m1s14DataSel, m1s13DataSel, m1s12DataSel, m1s11DataSel, m1s10DataSel, m1s9DataSel, m1s8DataSel, m1s7DataSel, m1s6DataSel, m1s5DataSel, m1s4DataSel, m1s3DataSel, m1s2DataSel, m1s1DataSel, m1s0DataSel) <= xhdl1227;
    masterstage_1 : COREAHBLITE_MASTERSTAGE
        generic map (
            MEMSPACE         => MEMSPACE,
            HADDR_SHG_CFG    => HADDR_SHG_CFG,
            SC               => SC,
            M_AHBSLOTENABLE  => M1_AHBSLOTENABLE
        )
        port map (
            HCLK                => HCLK,
            HRESETN             => HRESETN,
            REMAP               => '0',
            HADDR               => HADDR_M1,
            HMASTLOCK           => HMASTLOCK_M1,
            HSIZE               => HSIZE_M1,
            HTRANS              => HTRANS_M1,
            HWRITE              => HWRITE_M1,
            HRESP               => HRESP_M1_xhdl56,
            HRDATA              => HRDATA_M1_xhdl35,
            HREADY_M            => HREADY_M1_pre,
            SADDRREADY          => xhdl1223,
            SDATAREADY          => xhdl1224,
            SHRESP              => xhdl1225,
            GATEDHADDR          => M1GATEDHADDR,
            GATEDHMASTLOCK      => M1GATEDHMASTLOCK,
            GATEDHSIZE          => M1GATEDHSIZE,
            GATEDHTRANS         => M1GATEDHTRANS,
            GATEDHWRITE         => M1GATEDHWRITE,
            SADDRSEL            => xhdl1226,
            SDATASEL            => xhdl1227,
            PREVDATASLAVEREADY  => m1PrevDataSlaveReady,
            HRDATA_S0           => M1_HRDATA_S0,
            HREADYOUT_S0        => M1_HREADYOUT_S0,
            HRDATA_S1           => M1_HRDATA_S1,
            HREADYOUT_S1        => M1_HREADYOUT_S1,
            HRDATA_S2           => M1_HRDATA_S2,
            HREADYOUT_S2        => M1_HREADYOUT_S2,
            HRDATA_S3           => M1_HRDATA_S3,
            HREADYOUT_S3        => M1_HREADYOUT_S3,
            HRDATA_S4           => M1_HRDATA_S4,
            HREADYOUT_S4        => M1_HREADYOUT_S4,
            HRDATA_S5           => M1_HRDATA_S5,
            HREADYOUT_S5        => M1_HREADYOUT_S5,
            HRDATA_S6           => M1_HRDATA_S6,
            HREADYOUT_S6        => M1_HREADYOUT_S6,
            HRDATA_S7           => M1_HRDATA_S7,
            HREADYOUT_S7        => M1_HREADYOUT_S7,
            HRDATA_S8           => M1_HRDATA_S8,
            HREADYOUT_S8        => M1_HREADYOUT_S8,
            HRDATA_S9           => M1_HRDATA_S9,
            HREADYOUT_S9        => M1_HREADYOUT_S9,
            HRDATA_S10          => M1_HRDATA_S10,
            HREADYOUT_S10       => M1_HREADYOUT_S10,
            HRDATA_S11          => M1_HRDATA_S11,
            HREADYOUT_S11       => M1_HREADYOUT_S11,
            HRDATA_S12          => M1_HRDATA_S12,
            HREADYOUT_S12       => M1_HREADYOUT_S12,
            HRDATA_S13          => M1_HRDATA_S13,
            HREADYOUT_S13       => M1_HREADYOUT_S13,
            HRDATA_S14          => M1_HRDATA_S14,
            HREADYOUT_S14       => M1_HREADYOUT_S14,
            HRDATA_S15          => M1_HRDATA_S15,
            HREADYOUT_S15       => M1_HREADYOUT_S15,
            HRDATA_S16          => M1_HRDATA_S16,
            HREADYOUT_S16       => M1_HREADYOUT_S16
        );


    xhdl1228 <= (m1s0AddrSel_int & m0s0AddrSel_int);
    xhdl1229 <= (m1s0DataSel_int & m0s0DataSel_int);
    xhdl1230 <= (m1s0PrevDataSlaveReady & m0s0PrevDataSlaveReady);
    (s0m1AddrReady, s0m0AddrReady) <= xhdl1231;
    (s0m1DataReady, s0m0DataReady) <= xhdl1232;
    (s0m1HResp, s0m0HResp) <= xhdl1233;
    slavestage_0 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S0,
            HRESP                => INT_HRESP_S0,
            HSEL                 => HSEL_S0_xhdl57,
            HADDR                => HADDR_S0_xhdl0,
            HSIZE                => HSIZE_S0_xhdl74,
            HTRANS               => HTRANS_S0_xhdl91,
            HWRITE               => HWRITE_S0_xhdl125,
            HWDATA               => HWDATA_S0_xhdl108,
            HREADY_S             => HREADY_S0_xhdl38,
            HMASTLOCK            => HMASTLOCK_S0_xhdl17,
            MADDRSEL             => xhdl1228,
            MDATASEL             => xhdl1229,
            MPREVDATASLAVEREADY  => xhdl1230,
            MADDRREADY           => xhdl1231,
            MDATAREADY           => xhdl1232,
            MHRESP               => xhdl1233,
            M0GATEDHADDR         => m0s0GatedHADDR,
            M0GATEDHMASTLOCK     => m0s0GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s0GatedHSIZE,
            M0GATEDHTRANS        => m0s0GatedHTRANS,
            M0GATEDHWRITE        => m0s0GatedHWRITE,
            M1GATEDHADDR         => m1s0GatedHADDR,
            M1GATEDHMASTLOCK     => m1s0GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s0GatedHSIZE,
            M1GATEDHTRANS        => m1s0GatedHTRANS,
            M1GATEDHWRITE        => m1s0GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S0,
            HWDATA_M1            => HWDATA_M1S0
        );


    xhdl1234 <= (m1s1AddrSel_int & m0s1AddrSel_int);
    xhdl1235 <= (m1s1DataSel_int & m0s1DataSel_int);
    xhdl1236 <= (m1s1PrevDataSlaveReady & m0s1PrevDataSlaveReady);
    (s1m1AddrReady, s1m0AddrReady) <= xhdl1237;
    (s1m1DataReady, s1m0DataReady) <= xhdl1238;
    (s1m1HResp, s1m0HResp) <= xhdl1239;
    slavestage_1 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S1,
            HRESP                => INT_HRESP_S1,
            HSEL                 => HSEL_S1_xhdl58,
            HADDR                => HADDR_S1_xhdl1,
            HSIZE                => HSIZE_S1_xhdl75,
            HTRANS               => HTRANS_S1_xhdl92,
            HWRITE               => HWRITE_S1_xhdl126,
            HWDATA               => HWDATA_S1_xhdl109,
            HREADY_S             => HREADY_S1_xhdl39,
            HMASTLOCK            => HMASTLOCK_S1_xhdl18,
            MADDRSEL             => xhdl1234,
            MDATASEL             => xhdl1235,
            MPREVDATASLAVEREADY  => xhdl1236,
            MADDRREADY           => xhdl1237,
            MDATAREADY           => xhdl1238,
            MHRESP               => xhdl1239,
            M0GATEDHADDR         => m0s1GatedHADDR,
            M0GATEDHMASTLOCK     => m0s1GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s1GatedHSIZE,
            M0GATEDHTRANS        => m0s1GatedHTRANS,
            M0GATEDHWRITE        => m0s1GatedHWRITE,
            M1GATEDHADDR         => m1s1GatedHADDR,
            M1GATEDHMASTLOCK     => m1s1GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s1GatedHSIZE,
            M1GATEDHTRANS        => m1s1GatedHTRANS,
            M1GATEDHWRITE        => m1s1GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S1,
            HWDATA_M1            => HWDATA_M1S1
        );


    xhdl1240 <= (m1s2AddrSel_int & m0s2AddrSel_int);
    xhdl1241 <= (m1s2DataSel_int & m0s2DataSel_int);
    xhdl1242 <= (m1s2PrevDataSlaveReady & m0s2PrevDataSlaveReady);
    (s2m1AddrReady, s2m0AddrReady) <= xhdl1243;
    (s2m1DataReady, s2m0DataReady) <= xhdl1244;
    (s2m1HResp, s2m0HResp) <= xhdl1245;
    slavestage_2 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S2,
            HRESP                => INT_HRESP_S2,
            HSEL                 => HSEL_S2_xhdl65,
            HADDR                => HADDR_S2_xhdl8,
            HSIZE                => HSIZE_S2_xhdl82,
            HTRANS               => HTRANS_S2_xhdl99,
            HWRITE               => HWRITE_S2_xhdl133,
            HWDATA               => HWDATA_S2_xhdl116,
            HREADY_S             => HREADY_S2_xhdl46,
            HMASTLOCK            => HMASTLOCK_S2_xhdl25,
            MADDRSEL             => xhdl1240,
            MDATASEL             => xhdl1241,
            MPREVDATASLAVEREADY  => xhdl1242,
            MADDRREADY           => xhdl1243,
            MDATAREADY           => xhdl1244,
            MHRESP               => xhdl1245,
            M0GATEDHADDR         => m0s2GatedHADDR,
            M0GATEDHMASTLOCK     => m0s2GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s2GatedHSIZE,
            M0GATEDHTRANS        => m0s2GatedHTRANS,
            M0GATEDHWRITE        => m0s2GatedHWRITE,
            M1GATEDHADDR         => m1s2GatedHADDR,
            M1GATEDHMASTLOCK     => m1s2GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s2GatedHSIZE,
            M1GATEDHTRANS        => m1s2GatedHTRANS,
            M1GATEDHWRITE        => m1s2GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S2,
            HWDATA_M1            => HWDATA_M1S2
        );


    xhdl1246 <= (m1s3AddrSel_int & m0s3AddrSel_int);
    xhdl1247 <= (m1s3DataSel_int & m0s3DataSel_int);
    xhdl1248 <= (m1s3PrevDataSlaveReady & m0s3PrevDataSlaveReady);
    (s3m1AddrReady, s3m0AddrReady) <= xhdl1249;
    (s3m1DataReady, s3m0DataReady) <= xhdl1250;
    (s3m1HResp, s3m0HResp) <= xhdl1251;
    slavestage_3 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S3,
            HRESP                => INT_HRESP_S3,
            HSEL                 => HSEL_S3_xhdl66,
            HADDR                => HADDR_S3_xhdl9,
            HSIZE                => HSIZE_S3_xhdl83,
            HTRANS               => HTRANS_S3_xhdl100,
            HWRITE               => HWRITE_S3_xhdl134,
            HWDATA               => HWDATA_S3_xhdl117,
            HREADY_S             => HREADY_S3_xhdl47,
            HMASTLOCK            => HMASTLOCK_S3_xhdl26,
            MADDRSEL             => xhdl1246,
            MDATASEL             => xhdl1247,
            MPREVDATASLAVEREADY  => xhdl1248,
            MADDRREADY           => xhdl1249,
            MDATAREADY           => xhdl1250,
            MHRESP               => xhdl1251,
            M0GATEDHADDR         => m0s3GatedHADDR,
            M0GATEDHMASTLOCK     => m0s3GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s3GatedHSIZE,
            M0GATEDHTRANS        => m0s3GatedHTRANS,
            M0GATEDHWRITE        => m0s3GatedHWRITE,
            M1GATEDHADDR         => m1s3GatedHADDR,
            M1GATEDHMASTLOCK     => m1s3GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s3GatedHSIZE,
            M1GATEDHTRANS        => m1s3GatedHTRANS,
            M1GATEDHWRITE        => m1s3GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S3,
            HWDATA_M1            => HWDATA_M1S3
        );


    xhdl1252 <= (m1s4AddrSel_int & m0s4AddrSel_int);
    xhdl1253 <= (m1s4DataSel_int & m0s4DataSel_int);
    xhdl1254 <= (m1s4PrevDataSlaveReady & m0s4PrevDataSlaveReady);
    (s4m1AddrReady, s4m0AddrReady) <= xhdl1255;
    (s4m1DataReady, s4m0DataReady) <= xhdl1256;
    (s4m1HResp, s4m0HResp) <= xhdl1257;
    slavestage_4 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S4,
            HRESP                => INT_HRESP_S4,
            HSEL                 => HSEL_S4_xhdl67,
            HADDR                => HADDR_S4_xhdl10,
            HSIZE                => HSIZE_S4_xhdl84,
            HTRANS               => HTRANS_S4_xhdl101,
            HWRITE               => HWRITE_S4_xhdl135,
            HWDATA               => HWDATA_S4_xhdl118,
            HREADY_S             => HREADY_S4_xhdl48,
            HMASTLOCK            => HMASTLOCK_S4_xhdl27,
            MADDRSEL             => xhdl1252,
            MDATASEL             => xhdl1253,
            MPREVDATASLAVEREADY  => xhdl1254,
            MADDRREADY           => xhdl1255,
            MDATAREADY           => xhdl1256,
            MHRESP               => xhdl1257,
            M0GATEDHADDR         => m0s4GatedHADDR,
            M0GATEDHMASTLOCK     => m0s4GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s4GatedHSIZE,
            M0GATEDHTRANS        => m0s4GatedHTRANS,
            M0GATEDHWRITE        => m0s4GatedHWRITE,
            M1GATEDHADDR         => m1s4GatedHADDR,
            M1GATEDHMASTLOCK     => m1s4GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s4GatedHSIZE,
            M1GATEDHTRANS        => m1s4GatedHTRANS,
            M1GATEDHWRITE        => m1s4GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S4,
            HWDATA_M1            => HWDATA_M1S4
        );


    xhdl1258 <= (m1s5AddrSel_int & m0s5AddrSel_int);
    xhdl1259 <= (m1s5DataSel_int & m0s5DataSel_int);
    xhdl1260 <= (m1s5PrevDataSlaveReady & m0s5PrevDataSlaveReady);
    (s5m1AddrReady, s5m0AddrReady) <= xhdl1261;
    (s5m1DataReady, s5m0DataReady) <= xhdl1262;
    (s5m1HResp, s5m0HResp) <= xhdl1263;
    slavestage_5 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S5,
            HRESP                => INT_HRESP_S5,
            HSEL                 => HSEL_S5_xhdl68,
            HADDR                => HADDR_S5_xhdl11,
            HSIZE                => HSIZE_S5_xhdl85,
            HTRANS               => HTRANS_S5_xhdl102,
            HWRITE               => HWRITE_S5_xhdl136,
            HWDATA               => HWDATA_S5_xhdl119,
            HREADY_S             => HREADY_S5_xhdl49,
            HMASTLOCK            => HMASTLOCK_S5_xhdl28,
            MADDRSEL             => xhdl1258,
            MDATASEL             => xhdl1259,
            MPREVDATASLAVEREADY  => xhdl1260,
            MADDRREADY           => xhdl1261,
            MDATAREADY           => xhdl1262,
            MHRESP               => xhdl1263,
            M0GATEDHADDR         => m0s5GatedHADDR,
            M0GATEDHMASTLOCK     => m0s5GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s5GatedHSIZE,
            M0GATEDHTRANS        => m0s5GatedHTRANS,
            M0GATEDHWRITE        => m0s5GatedHWRITE,
            M1GATEDHADDR         => m1s5GatedHADDR,
            M1GATEDHMASTLOCK     => m1s5GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s5GatedHSIZE,
            M1GATEDHTRANS        => m1s5GatedHTRANS,
            M1GATEDHWRITE        => m1s5GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S5,
            HWDATA_M1            => HWDATA_M1S5
        );


    xhdl1264 <= (m1s6AddrSel_int & m0s6AddrSel_int);
    xhdl1265 <= (m1s6DataSel_int & m0s6DataSel_int);
    xhdl1266 <= (m1s6PrevDataSlaveReady & m0s6PrevDataSlaveReady);
    (s6m1AddrReady, s6m0AddrReady) <= xhdl1267;
    (s6m1DataReady, s6m0DataReady) <= xhdl1268;
    (s6m1HResp, s6m0HResp) <= xhdl1269;
    slavestage_6 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S6,
            HRESP                => INT_HRESP_S6,
            HSEL                 => HSEL_S6_xhdl69,
            HADDR                => HADDR_S6_xhdl12,
            HSIZE                => HSIZE_S6_xhdl86,
            HTRANS               => HTRANS_S6_xhdl103,
            HWRITE               => HWRITE_S6_xhdl137,
            HWDATA               => HWDATA_S6_xhdl120,
            HREADY_S             => HREADY_S6_xhdl50,
            HMASTLOCK            => HMASTLOCK_S6_xhdl29,
            MADDRSEL             => xhdl1264,
            MDATASEL             => xhdl1265,
            MPREVDATASLAVEREADY  => xhdl1266,
            MADDRREADY           => xhdl1267,
            MDATAREADY           => xhdl1268,
            MHRESP               => xhdl1269,
            M0GATEDHADDR         => m0s6GatedHADDR,
            M0GATEDHMASTLOCK     => m0s6GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s6GatedHSIZE,
            M0GATEDHTRANS        => m0s6GatedHTRANS,
            M0GATEDHWRITE        => m0s6GatedHWRITE,
            M1GATEDHADDR         => m1s6GatedHADDR,
            M1GATEDHMASTLOCK     => m1s6GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s6GatedHSIZE,
            M1GATEDHTRANS        => m1s6GatedHTRANS,
            M1GATEDHWRITE        => m1s6GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S6,
            HWDATA_M1            => HWDATA_M1S6
        );


    xhdl1270 <= (m1s7AddrSel_int & m0s7AddrSel_int);
    xhdl1271 <= (m1s7DataSel_int & m0s7DataSel_int);
    xhdl1272 <= (m1s7PrevDataSlaveReady & m0s7PrevDataSlaveReady);
    (s7m1AddrReady, s7m0AddrReady) <= xhdl1273;
    (s7m1DataReady, s7m0DataReady) <= xhdl1274;
    (s7m1HResp, s7m0HResp) <= xhdl1275;
    slavestage_7 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S7,
            HRESP                => INT_HRESP_S7,
            HSEL                 => HSEL_S7_xhdl70,
            HADDR                => HADDR_S7_xhdl13,
            HSIZE                => HSIZE_S7_xhdl87,
            HTRANS               => HTRANS_S7_xhdl104,
            HWRITE               => HWRITE_S7_xhdl138,
            HWDATA               => HWDATA_S7_xhdl121,
            HREADY_S             => HREADY_S7_xhdl51,
            HMASTLOCK            => HMASTLOCK_S7_xhdl30,
            MADDRSEL             => xhdl1270,
            MDATASEL             => xhdl1271,
            MPREVDATASLAVEREADY  => xhdl1272,
            MADDRREADY           => xhdl1273,
            MDATAREADY           => xhdl1274,
            MHRESP               => xhdl1275,
            M0GATEDHADDR         => m0s7GatedHADDR,
            M0GATEDHMASTLOCK     => m0s7GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s7GatedHSIZE,
            M0GATEDHTRANS        => m0s7GatedHTRANS,
            M0GATEDHWRITE        => m0s7GatedHWRITE,
            M1GATEDHADDR         => m1s7GatedHADDR,
            M1GATEDHMASTLOCK     => m1s7GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s7GatedHSIZE,
            M1GATEDHTRANS        => m1s7GatedHTRANS,
            M1GATEDHWRITE        => m1s7GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S7,
            HWDATA_M1            => HWDATA_M1S7
        );


    xhdl1276 <= (m1s8AddrSel_int & m0s8AddrSel_int);
    xhdl1277 <= (m1s8DataSel_int & m0s8DataSel_int);
    xhdl1278 <= (m1s8PrevDataSlaveReady & m0s8PrevDataSlaveReady);
    (s8m1AddrReady, s8m0AddrReady) <= xhdl1279;
    (s8m1DataReady, s8m0DataReady) <= xhdl1280;
    (s8m1HResp, s8m0HResp) <= xhdl1281;
    slavestage_8 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S8,
            HRESP                => INT_HRESP_S8,
            HSEL                 => HSEL_S8_xhdl71,
            HADDR                => HADDR_S8_xhdl14,
            HSIZE                => HSIZE_S8_xhdl88,
            HTRANS               => HTRANS_S8_xhdl105,
            HWRITE               => HWRITE_S8_xhdl139,
            HWDATA               => HWDATA_S8_xhdl122,
            HREADY_S             => HREADY_S8_xhdl52,
            HMASTLOCK            => HMASTLOCK_S8_xhdl31,
            MADDRSEL             => xhdl1276,
            MDATASEL             => xhdl1277,
            MPREVDATASLAVEREADY  => xhdl1278,
            MADDRREADY           => xhdl1279,
            MDATAREADY           => xhdl1280,
            MHRESP               => xhdl1281,
            M0GATEDHADDR         => m0s8GatedHADDR,
            M0GATEDHMASTLOCK     => m0s8GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s8GatedHSIZE,
            M0GATEDHTRANS        => m0s8GatedHTRANS,
            M0GATEDHWRITE        => m0s8GatedHWRITE,
            M1GATEDHADDR         => m1s8GatedHADDR,
            M1GATEDHMASTLOCK     => m1s8GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s8GatedHSIZE,
            M1GATEDHTRANS        => m1s8GatedHTRANS,
            M1GATEDHWRITE        => m1s8GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S8,
            HWDATA_M1            => HWDATA_M1S8
        );


    xhdl1282 <= (m1s9AddrSel_int & m0s9AddrSel_int);
    xhdl1283 <= (m1s9DataSel_int & m0s9DataSel_int);
    xhdl1284 <= (m1s9PrevDataSlaveReady & m0s9PrevDataSlaveReady);
    (s9m1AddrReady, s9m0AddrReady) <= xhdl1285;
    (s9m1DataReady, s9m0DataReady) <= xhdl1286;
    (s9m1HResp, s9m0HResp) <= xhdl1287;
    slavestage_9 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S9,
            HRESP                => INT_HRESP_S9,
            HSEL                 => HSEL_S9_xhdl72,
            HADDR                => HADDR_S9_xhdl15,
            HSIZE                => HSIZE_S9_xhdl89,
            HTRANS               => HTRANS_S9_xhdl106,
            HWRITE               => HWRITE_S9_xhdl140,
            HWDATA               => HWDATA_S9_xhdl123,
            HREADY_S             => HREADY_S9_xhdl53,
            HMASTLOCK            => HMASTLOCK_S9_xhdl32,
            MADDRSEL             => xhdl1282,
            MDATASEL             => xhdl1283,
            MPREVDATASLAVEREADY  => xhdl1284,
            MADDRREADY           => xhdl1285,
            MDATAREADY           => xhdl1286,
            MHRESP               => xhdl1287,
            M0GATEDHADDR         => m0s9GatedHADDR,
            M0GATEDHMASTLOCK     => m0s9GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s9GatedHSIZE,
            M0GATEDHTRANS        => m0s9GatedHTRANS,
            M0GATEDHWRITE        => m0s9GatedHWRITE,
            M1GATEDHADDR         => m1s9GatedHADDR,
            M1GATEDHMASTLOCK     => m1s9GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s9GatedHSIZE,
            M1GATEDHTRANS        => m1s9GatedHTRANS,
            M1GATEDHWRITE        => m1s9GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S9,
            HWDATA_M1            => HWDATA_M1S9
        );


    xhdl1288 <= (m1s10AddrSel_int & m0s10AddrSel_int);
    xhdl1289 <= (m1s10DataSel_int & m0s10DataSel_int);
    xhdl1290 <= (m1s10PrevDataSlaveReady & m0s10PrevDataSlaveReady);
    (s10m1AddrReady, s10m0AddrReady) <= xhdl1291;
    (s10m1DataReady, s10m0DataReady) <= xhdl1292;
    (s10m1HResp, s10m0HResp) <= xhdl1293;
    slavestage_10 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S10,
            HRESP                => INT_HRESP_S10,
            HSEL                 => HSEL_S10_xhdl59,
            HADDR                => HADDR_S10_xhdl2,
            HSIZE                => HSIZE_S10_xhdl76,
            HTRANS               => HTRANS_S10_xhdl93,
            HWRITE               => HWRITE_S10_xhdl127,
            HWDATA               => HWDATA_S10_xhdl110,
            HREADY_S             => HREADY_S10_xhdl40,
            HMASTLOCK            => HMASTLOCK_S10_xhdl19,
            MADDRSEL             => xhdl1288,
            MDATASEL             => xhdl1289,
            MPREVDATASLAVEREADY  => xhdl1290,
            MADDRREADY           => xhdl1291,
            MDATAREADY           => xhdl1292,
            MHRESP               => xhdl1293,
            M0GATEDHADDR         => m0s10GatedHADDR,
            M0GATEDHMASTLOCK     => m0s10GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s10GatedHSIZE,
            M0GATEDHTRANS        => m0s10GatedHTRANS,
            M0GATEDHWRITE        => m0s10GatedHWRITE,
            M1GATEDHADDR         => m1s10GatedHADDR,
            M1GATEDHMASTLOCK     => m1s10GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s10GatedHSIZE,
            M1GATEDHTRANS        => m1s10GatedHTRANS,
            M1GATEDHWRITE        => m1s10GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S10,
            HWDATA_M1            => HWDATA_M1S10
        );


    xhdl1294 <= (m1s11AddrSel_int & m0s11AddrSel_int);
    xhdl1295 <= (m1s11DataSel_int & m0s11DataSel_int);
    xhdl1296 <= (m1s11PrevDataSlaveReady & m0s11PrevDataSlaveReady);
    (s11m1AddrReady, s11m0AddrReady) <= xhdl1297;
    (s11m1DataReady, s11m0DataReady) <= xhdl1298;
    (s11m1HResp, s11m0HResp) <= xhdl1299;
    slavestage_11 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S11,
            HRESP                => INT_HRESP_S11,
            HSEL                 => HSEL_S11_xhdl60,
            HADDR                => HADDR_S11_xhdl3,
            HSIZE                => HSIZE_S11_xhdl77,
            HTRANS               => HTRANS_S11_xhdl94,
            HWRITE               => HWRITE_S11_xhdl128,
            HWDATA               => HWDATA_S11_xhdl111,
            HREADY_S             => HREADY_S11_xhdl41,
            HMASTLOCK            => HMASTLOCK_S11_xhdl20,
            MADDRSEL             => xhdl1294,
            MDATASEL             => xhdl1295,
            MPREVDATASLAVEREADY  => xhdl1296,
            MADDRREADY           => xhdl1297,
            MDATAREADY           => xhdl1298,
            MHRESP               => xhdl1299,
            M0GATEDHADDR         => m0s11GatedHADDR,
            M0GATEDHMASTLOCK     => m0s11GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s11GatedHSIZE,
            M0GATEDHTRANS        => m0s11GatedHTRANS,
            M0GATEDHWRITE        => m0s11GatedHWRITE,
            M1GATEDHADDR         => m1s11GatedHADDR,
            M1GATEDHMASTLOCK     => m1s11GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s11GatedHSIZE,
            M1GATEDHTRANS        => m1s11GatedHTRANS,
            M1GATEDHWRITE        => m1s11GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S11,
            HWDATA_M1            => HWDATA_M1S11
        );


    xhdl1300 <= (m1s12AddrSel_int & m0s12AddrSel_int);
    xhdl1301 <= (m1s12DataSel_int & m0s12DataSel_int);
    xhdl1302 <= (m1s12PrevDataSlaveReady & m0s12PrevDataSlaveReady);
    (s12m1AddrReady, s12m0AddrReady) <= xhdl1303;
    (s12m1DataReady, s12m0DataReady) <= xhdl1304;
    (s12m1HResp, s12m0HResp) <= xhdl1305;
    slavestage_12 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S12,
            HRESP                => INT_HRESP_S12,
            HSEL                 => HSEL_S12_xhdl61,
            HADDR                => HADDR_S12_xhdl4,
            HSIZE                => HSIZE_S12_xhdl78,
            HTRANS               => HTRANS_S12_xhdl95,
            HWRITE               => HWRITE_S12_xhdl129,
            HWDATA               => HWDATA_S12_xhdl112,
            HREADY_S             => HREADY_S12_xhdl42,
            HMASTLOCK            => HMASTLOCK_S12_xhdl21,
            MADDRSEL             => xhdl1300,
            MDATASEL             => xhdl1301,
            MPREVDATASLAVEREADY  => xhdl1302,
            MADDRREADY           => xhdl1303,
            MDATAREADY           => xhdl1304,
            MHRESP               => xhdl1305,
            M0GATEDHADDR         => m0s12GatedHADDR,
            M0GATEDHMASTLOCK     => m0s12GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s12GatedHSIZE,
            M0GATEDHTRANS        => m0s12GatedHTRANS,
            M0GATEDHWRITE        => m0s12GatedHWRITE,
            M1GATEDHADDR         => m1s12GatedHADDR,
            M1GATEDHMASTLOCK     => m1s12GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s12GatedHSIZE,
            M1GATEDHTRANS        => m1s12GatedHTRANS,
            M1GATEDHWRITE        => m1s12GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S12,
            HWDATA_M1            => HWDATA_M1S12
        );


    xhdl1306 <= (m1s13AddrSel_int & m0s13AddrSel_int);
    xhdl1307 <= (m1s13DataSel_int & m0s13DataSel_int);
    xhdl1308 <= (m1s13PrevDataSlaveReady & m0s13PrevDataSlaveReady);
    (s13m1AddrReady, s13m0AddrReady) <= xhdl1309;
    (s13m1DataReady, s13m0DataReady) <= xhdl1310;
    (s13m1HResp, s13m0HResp) <= xhdl1311;
    slavestage_13 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S13,
            HRESP                => INT_HRESP_S13,
            HSEL                 => HSEL_S13_xhdl62,
            HADDR                => HADDR_S13_xhdl5,
            HSIZE                => HSIZE_S13_xhdl79,
            HTRANS               => HTRANS_S13_xhdl96,
            HWRITE               => HWRITE_S13_xhdl130,
            HWDATA               => HWDATA_S13_xhdl113,
            HREADY_S             => HREADY_S13_xhdl43,
            HMASTLOCK            => HMASTLOCK_S13_xhdl22,
            MADDRSEL             => xhdl1306,
            MDATASEL             => xhdl1307,
            MPREVDATASLAVEREADY  => xhdl1308,
            MADDRREADY           => xhdl1309,
            MDATAREADY           => xhdl1310,
            MHRESP               => xhdl1311,
            M0GATEDHADDR         => m0s13GatedHADDR,
            M0GATEDHMASTLOCK     => m0s13GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s13GatedHSIZE,
            M0GATEDHTRANS        => m0s13GatedHTRANS,
            M0GATEDHWRITE        => m0s13GatedHWRITE,
            M1GATEDHADDR         => m1s13GatedHADDR,
            M1GATEDHMASTLOCK     => m1s13GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s13GatedHSIZE,
            M1GATEDHTRANS        => m1s13GatedHTRANS,
            M1GATEDHWRITE        => m1s13GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S13,
            HWDATA_M1            => HWDATA_M1S13
        );


    xhdl1312 <= (m1s14AddrSel_int & m0s14AddrSel_int);
    xhdl1313 <= (m1s14DataSel_int & m0s14DataSel_int);
    xhdl1314 <= (m1s14PrevDataSlaveReady & m0s14PrevDataSlaveReady);
    (s14m1AddrReady, s14m0AddrReady) <= xhdl1315;
    (s14m1DataReady, s14m0DataReady) <= xhdl1316;
    (s14m1HResp, s14m0HResp) <= xhdl1317;
    slavestage_14 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S14,
            HRESP                => INT_HRESP_S14,
            HSEL                 => HSEL_S14_xhdl63,
            HADDR                => HADDR_S14_xhdl6,
            HSIZE                => HSIZE_S14_xhdl80,
            HTRANS               => HTRANS_S14_xhdl97,
            HWRITE               => HWRITE_S14_xhdl131,
            HWDATA               => HWDATA_S14_xhdl114,
            HREADY_S             => HREADY_S14_xhdl44,
            HMASTLOCK            => HMASTLOCK_S14_xhdl23,
            MADDRSEL             => xhdl1312,
            MDATASEL             => xhdl1313,
            MPREVDATASLAVEREADY  => xhdl1314,
            MADDRREADY           => xhdl1315,
            MDATAREADY           => xhdl1316,
            MHRESP               => xhdl1317,
            M0GATEDHADDR         => m0s14GatedHADDR,
            M0GATEDHMASTLOCK     => m0s14GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s14GatedHSIZE,
            M0GATEDHTRANS        => m0s14GatedHTRANS,
            M0GATEDHWRITE        => m0s14GatedHWRITE,
            M1GATEDHADDR         => m1s14GatedHADDR,
            M1GATEDHMASTLOCK     => m1s14GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s14GatedHSIZE,
            M1GATEDHTRANS        => m1s14GatedHTRANS,
            M1GATEDHWRITE        => m1s14GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S14,
            HWDATA_M1            => HWDATA_M1S14
        );


    xhdl1318 <= (m1s15AddrSel_int & m0s15AddrSel_int);
    xhdl1319 <= (m1s15DataSel_int & m0s15DataSel_int);
    xhdl1320 <= (m1s15PrevDataSlaveReady & m0s15PrevDataSlaveReady);
    (s15m1AddrReady, s15m0AddrReady) <= xhdl1321;
    (s15m1DataReady, s15m0DataReady) <= xhdl1322;
    (s15m1HResp, s15m0HResp) <= xhdl1323;
    slavestage_15 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S15,
            HRESP                => INT_HRESP_S15,
            HSEL                 => HSEL_S15_xhdl64,
            HADDR                => HADDR_S15_xhdl7,
            HSIZE                => HSIZE_S15_xhdl81,
            HTRANS               => HTRANS_S15_xhdl98,
            HWRITE               => HWRITE_S15_xhdl132,
            HWDATA               => HWDATA_S15_xhdl115,
            HREADY_S             => HREADY_S15_xhdl45,
            HMASTLOCK            => HMASTLOCK_S15_xhdl24,
            MADDRSEL             => xhdl1318,
            MDATASEL             => xhdl1319,
            MPREVDATASLAVEREADY  => xhdl1320,
            MADDRREADY           => xhdl1321,
            MDATAREADY           => xhdl1322,
            MHRESP               => xhdl1323,
            M0GATEDHADDR         => m0s15GatedHADDR,
            M0GATEDHMASTLOCK     => m0s15GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s15GatedHSIZE,
            M0GATEDHTRANS        => m0s15GatedHTRANS,
            M0GATEDHWRITE        => m0s15GatedHWRITE,
            M1GATEDHADDR         => m1s15GatedHADDR,
            M1GATEDHMASTLOCK     => m1s15GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s15GatedHSIZE,
            M1GATEDHTRANS        => m1s15GatedHTRANS,
            M1GATEDHWRITE        => m1s15GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S15,
            HWDATA_M1            => HWDATA_M1S15
        );


    xhdl1324 <= (m1s16AddrSel_int & m0s16AddrSel_int);
    xhdl1325 <= (m1s16DataSel_int & m0s16DataSel_int);
    xhdl1326 <= (m1s16PrevDataSlaveReady & m0s16PrevDataSlaveReady);
    (s16m1AddrReady, s16m0AddrReady) <= xhdl1327;
    (s16m1DataReady, s16m0DataReady) <= xhdl1328;
    (s16m1HResp, s16m0HResp) <= xhdl1329;
    slavestage_16 : COREAHBLITE_SLAVESTAGE
        port map (
            HCLK                 => HCLK,
            HRESETN              => HRESETN,
            HREADYOUT            => INT_HREADYOUT_S16,
            HRESP                => INT_HRESP_S16,
            HSEL                 => HSEL_S16_xhdl73,
            HADDR                => HADDR_S16_xhdl16,
            HSIZE                => HSIZE_S16_xhdl90,
            HTRANS               => HTRANS_S16_xhdl107,
            HWRITE               => HWRITE_S16_xhdl141,
            HWDATA               => HWDATA_S16_xhdl124,
            HREADY_S             => HREADY_S16_xhdl54,
            HMASTLOCK            => HMASTLOCK_S16_xhdl33,
            MADDRSEL             => xhdl1324,
            MDATASEL             => xhdl1325,
            MPREVDATASLAVEREADY  => xhdl1326,
            MADDRREADY           => xhdl1327,
            MDATAREADY           => xhdl1328,
            MHRESP               => xhdl1329,
            M0GATEDHADDR         => m0s16GatedHADDR,
            M0GATEDHMASTLOCK     => m0s16GatedHMASTLOCK,
            M0GATEDHSIZE         => m0s16GatedHSIZE,
            M0GATEDHTRANS        => m0s16GatedHTRANS,
            M0GATEDHWRITE        => m0s16GatedHWRITE,
            M1GATEDHADDR         => m1s16GatedHADDR,
            M1GATEDHMASTLOCK     => m1s16GatedHMASTLOCK,
            M1GATEDHSIZE         => m1s16GatedHSIZE,
            M1GATEDHTRANS        => m1s16GatedHTRANS,
            M1GATEDHWRITE        => m1s16GatedHWRITE,
            HWDATA_M0            => HWDATA_M0S16,
            HWDATA_M1            => HWDATA_M1S16
        );

HREADY_M0_xhdl36 <= HREADY_M0_pre ;
HREADY_M1_xhdl37 <= HREADY_M1_pre ;

end architecture COREAHBLITE_MATRIX2X16_arch;
