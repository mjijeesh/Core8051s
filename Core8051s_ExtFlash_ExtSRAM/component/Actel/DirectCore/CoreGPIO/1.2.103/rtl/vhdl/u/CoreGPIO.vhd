--  --========================================================================--
--
--  Module      : CoreGPIO
--
--  ----------------------------------------------------------------------------
--  Purpose     : Provides memory mapped locations for reading up to 32 input
--                lines and for controlling up to 32 output lines.
--
--                There are two registers in this block:
--                  - Out Control Reg (write only)
--                  - In Status Reg   (cleared on read)
--
--                A write to any address in this APB slot write the Out Control Reg.
--                A read from any address in this APB slot reads the In Status Reg.
--
--  --========================================================================--


library ieee;
use     ieee.std_logic_1164.all;

entity CoreGPIO is
    generic (
        NUM_INPUTS      : integer := 32; -- Number of inputs.  Range: 1 - 32.
        NUM_OUTPUTS     : integer := 32  -- Number of outputs. Range: 1 - 32.
    );
    port (
        PCLK            : in  std_logic;
        PRESETn         : in  std_logic;
        PENABLE         : in  std_logic;
        PSEL            : in  std_logic;
        PADDR           : in  std_logic_vector(5 downto 2);
        PWRITE          : in  std_logic;
        PWDATA          : in  std_logic_vector(NUM_OUTPUTS-1 downto 0);
        PRDATA          : out std_logic_vector( NUM_INPUTS-1 downto 0);

        dataIn          : in  std_logic_vector( NUM_INPUTS-1 downto 0);
        dataOut         : out std_logic_vector(NUM_OUTPUTS-1 downto 0)
    );
end CoreGPIO;


architecture synth of CoreGPIO is

--------------------------------------------------------------------------------
-- Signal declarations
--------------------------------------------------------------------------------

  signal NxtPrdataEn    : std_logic;
  signal regWrReq       : std_logic;
  signal inData         : std_logic_vector(NUM_INPUTS-1 downto 0);
  signal inData_s1      : std_logic_vector(NUM_INPUTS-1 downto 0);
  signal inData_s2      : std_logic_vector(NUM_INPUTS-1 downto 0);


--------------------------------------------------------------------------------
-- Beginning of main code
--------------------------------------------------------------------------------
begin

    --------------------------------------------------------------------------------
    -- Out Control Register
    --------------------------------------------------------------------------------
    regWrReq <= '1' when ( PSEL = '1' and
                           PWRITE = '1' and
                           PENABLE = '0' ) else
                '0';

    p_DOutSeq : process ( PCLK, PRESETn )
    begin
        if ( PRESETn = '0' ) then
            dataOut <= ( others => '0' );
        elsif ( PCLK'event and PCLK = '1' ) then
            if ( regWrReq = '1' ) then
                dataOut <= PWDATA(NUM_OUTPUTS-1 downto 0);
            end if;
        end if;
    end process p_DOutSeq;


    --------------------------------------------------------------------------------
    -- PRDATA generation
    --------------------------------------------------------------------------------
    -- Address decoding for register reads.
    NxtPrdataEn <= '1' when ( PSEL = '1' and
                              PWRITE = '0' and
                              PENABLE = '0' ) else
                   '0';

    -- PRDATA output register
    p_PrdataSeq : process ( PCLK, PRESETn )
    begin
        if ( PRESETn = '0' ) then
            PRDATA <= ( others => '0' );
        elsif ( PCLK'event and PCLK = '1' ) then
            PRDATA <= inData;
        end if;
    end process p_PrdataSeq;


    p_InDataSeq : process ( PCLK, PRESETn )
    begin
        if ( PRESETn = '0' ) then
            inData    <= ( others => '0' );
            inData_s1 <= ( others => '0' );
            inData_s2 <= ( others => '0' );
        elsif ( PCLK'event and PCLK = '1' ) then
            inData_s1 <= dataIn;
            inData_s2 <= inData_s1;

            if ( NxtPrdataEn = '1' ) then
                inData <= ( others => '0' );
            else
                inData <= ( inData_s1 and inData_s2 );
            end if;
        end if;
    end process p_InDataSeq;

end synth;

-- --================================= End ===================================--
