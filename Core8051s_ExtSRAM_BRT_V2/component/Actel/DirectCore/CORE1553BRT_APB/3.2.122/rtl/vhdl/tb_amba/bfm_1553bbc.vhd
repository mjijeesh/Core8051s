-- *********************************************************************/ 
-- Copyright 2007 Actel Corporation.  All rights reserved.
-- IP Solutions Group
--  
-- File:  bfm_1553bbc.vhd
--     
-- Description: 1553B RT Testbench
--              Bus Controller for APB Testbench  
--
-- Rev: 3.2  01Oct07 IPB  : APB Release 
--
--
-- SVN Revision Information:
-- SVN $Revision: 171 $
-- SVN $Date: 2007-11-06 01:33:54 -0800 (Tue, 06 Nov 2007) $
--
-- Notes:
--  
--
-- *********************************************************************/ 
--
-- Extention Bus Register Set
-- Addr 0 : Bit 0 = W: Start
--          Bit 1 = W: Single
--          Bit 15 = R: Busy
-- Addr 1 : Block Pointer  (BP)
-- 
-- BP+0 : Blk control   
--        bit  3:0: Command  0=STOP  
--                           1=Do MSG and Stop
--                           2=Do MSG and Continue  
--        bit  4: RTRT
--        bit  5: USEBUSB
-- BP+1 : CW1   (RTRT is RX CW)
-- BP+2 : CW2   (RTRT is RX CW)
-- BP+3 : SW1
-- BP+4 : SW2
-- BP+5 : DataPtr or Data 
-- BP+6 : Status
--		  bits 7:0 =  Num DW received
--        bit  8: Done
--        bit  9: Error Detected
--        bit  10: Got SW 1
--		  bit  11: Got SW 2
-- BP+7 : Reserved      

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.bfm_textio.all;
use work.bfm_misc.all;
use work.bfm_package.all;


entity BFM_1553BBC is
   PORT (
      ECLK      : in    std_logic;   
      ERESETN   : in    std_logic;   
      EXT_SEL   : in    std_logic;   
      EXT_WR    : in    std_logic;   
      EXT_RD    : in    std_logic;   
      EXT_ADDR  : in    std_logic_vector(31 downto 0);   
      EXT_DATA  : inout std_logic_vector(31 downto 0);   
      EXT_WAIT  : out   std_logic;   
      STOPCLK   : in    boolean;   
      BUSY      : out   std_logic;   
      BUSAPOS   : inout std_logic;   
      BUSANEG   : inout std_logic;   
      BUSBPOS   : inout std_logic;   
      BUSBNEG   : inout std_logic
	);   
end  BFM_1553BBC;

architecture test of BFM_1553BBC IS

component ENCODER 
  port ( CLK        : in  std_logic;
         RSTn       : in  std_logic;
         CLKSPD     : in  std_logic_vector(1 downto 0);
         STROBE     : in  std_logic;
         ABORTX     : in  std_logic;
         DATAIN     : in  std_logic_vector(15 downto 0);
         CMDSTAT    : in  std_logic;
         TXENABLE   : out std_logic;
         TXBUSY     : out std_logic;
         TXREADY    : out std_logic;
         DOUT       : out std_logic;
         TXENA      : in  std_logic;
         RXSTROBEA  : in  std_logic;
         RXERRORA   : in  std_logic;
         RXDATAA    : in  std_logic_vector(15 downto 0);
         RXDATAAS   : in  std_logic;
         LOOPFAILA  : out std_logic;
         TXENB      : in  std_logic;
         RXSTROBEB  : in  std_logic;
         RXERRORB   : in  std_logic;
         RXDATAB    : in  std_logic_vector(15 downto 0);
         RXDATABS   : in  std_logic;
         LOOPFAILB  : out std_logic;
         CLRERRORS  : in  std_logic;
         FSM_ERROR  : out std_logic
      );
end component;

   component DECODER 
     port ( CLK       : in  std_logic;
            RSTn      : in  std_logic;
            CLKSPD    : in  std_logic_vector(1 downto 0);
            DATAINP   : in  std_logic;
            DATAINN   : in  std_logic;
            TXENABLE  : in  std_logic;
            FROMUS    : out std_logic;
            STROBE    : out std_logic;
            DATAOUT   : out std_logic_vector(15 downto 0);
            CMDSTAT   : out std_logic;
            GOTSYNC   : out std_logic;
            PARERR    : out std_logic;
            MANERR    : out std_logic;
            ACTIVE    : out std_logic;
            CONTIG    : out std_logic
         );
   end component;

   component BACKEND  
     port ( CLK       : in  std_logic;
            RSTn      : in  std_logic;
            CLKSPD    : in  std_logic_vector(1 downto 0);
            ASYNCIF   : in  std_logic;
            BEND10US  : in  std_logic;
                    
            -- Interface from the RT logic
            BENDREQ   : in  std_logic;
            BENDWRT   : in  std_logic;
            BENDBUSY  : out std_logic;
            BENDFAIL  : out std_logic;
            BENDADDR  : in  std_logic_vector(10 downto 0);
            BENDOPER  : in  std_logic_vector( 1 downto 0);
            BENDDOUT  : in  std_logic_vector(15 downto 0);
            BENDDIN   : out std_logic_vector(15 downto 0);
            
            -- Backend Memory interface
            MEMREQn   : out std_logic;
            MEMGNTn   : in  std_logic;
            MEMWRn    : out std_logic;
            MEMRDn    : out std_logic;
            MEMCSn    : out std_logic;
            MEMWAITn  : in  std_logic;
            MEMCEN    : out std_logic;
            MEMDEN    : out std_logic;
            MEMADDR   : out std_logic_vector(10 downto 0);
            MEMOPER   : out std_logic_vector( 1 downto 0);
            MEMDOUT   : out std_logic_vector(15 downto 0);
            MEMDIN    : in  std_logic_vector(15 downto 0);
            FSM_ERROR : out std_logic
          );
   end component;

   type array_4096x16 is array (0 TO 4095) of std_logic_vector(15 downto 0);
   type array_34x17   is array (0 TO 33)   of std_logic_vector(16 downto 0);
   type array_64x20   is array (0 TO 63)   of std_logic_vector(19 downto 0);

   signal CLK16            :  std_logic;   
   signal EXT_DOUT         :  std_logic_vector(31 downto 0);   
   signal EXT_DIN          :  std_logic_vector(31 downto 0);   
   signal EXT_RDEN         :  std_logic;   
   signal USEBUSB          :  std_logic;   
   signal BCSTART          :  std_logic;   
   signal BCSTART_DELAYED  :  std_logic;   
   signal SINGLE           :  std_logic;   
   signal ENCREADY         :  std_logic;   
   signal ENCSTROBE        :  std_logic;   
   signal ENCDATA          :  std_logic_vector(15 downto 0);   
   signal ENCCW            :  std_logic;   
   signal RXSTROBE         :  std_logic;   
   signal DECODEROUT       :  std_logic_vector(19 downto 0);   
   signal IMG              :  std_logic;   
   signal DEC_DATAOUT      :  std_logic_vector(15 downto 0);   
   signal RXBUSY           :  std_logic;   
   signal TXBUSY           :  std_logic;   
   signal iBUSY            :  std_logic;   
  
   type   TBCSTATE is ( IDLE, INIT, WIMG, TXT, RCV, RCV2, CHK, DONE, DOMSG);
   signal BCSTATE          :  TBCSTATE;   
  
   signal MEM              :  array_4096x16;   
  
   signal CLKSPDX          :  std_logic_vector(1 downto 0);   
   signal TXENABLEA        :  std_logic;   
   signal TXENABLEB        :  std_logic;   
 
   signal BUSPOSX          :  std_logic;   
   signal BUSNEGX          :  std_logic;   
   signal DECERR           :  std_logic;   
   signal BUSOUT           :  std_logic;   
   signal DEC_CMDSTAT      :  std_logic;   
   signal DEC_CONTIG       :  std_logic;   
   signal DEC_MANERR       :  std_logic;   
   signal DEC_PARERR       :  std_logic;   
   signal FROMUS           :  std_logic;   
   signal RXSTROBEX        :  std_logic;   
   signal TXENABLE         :  std_logic;   

   signal Logic0           :  std_logic;   
   signal Logic1           :  std_logic;   
   signal Zero16           :  std_logic_vector(15 downto 0);   

BEGIN

   Logic0 <= '0' ;
   Logic1 <= '1' ;
   Zero16 <= "0000000000000000" ;

   process
    begin
       CLK16 <= '0';
       wait for 31250 ps;
       CLK16 <= '1';
       wait for 31250 ps;
       if STOPCLK then
         wait;
       end if;
   end process;
   
   --------------------------------------------------------------------

   EXT_DIN  <= EXT_DATA ;
   EXT_DATA <= EXT_DOUT when (EXT_RDEN = '1') else  ( others => 'Z');

   bbc_regs : 
   process(ECLK,ERESETN,CLK16)
   variable addr  :  integer;   
   variable TXDATA     :  array_34x17;   
   variable RXDATA     :  array_64x20;   
   variable MSG_CW     :  std_logic_vector(15 downto 0);   
   variable MSG_CW2    :  std_logic_vector(15 downto 0);   
   variable MSG_SW1    :  std_logic_vector(15 downto 0);   
   variable MSG_SW2    :  std_logic_vector(15 downto 0);   
   variable MSG_RT     :  integer;   
   variable MSG_SA     :  integer;   
   variable MSG_WC     :  integer;   
   variable MSG_MC     :  boolean;   
   variable MSG_BC     :  boolean;   
   variable MSG_TX     :  boolean;   
   variable MSG_RTRT   :  boolean;   
   variable MSG_DONXT  :  boolean;   
   variable TX_CNT     :  integer;   
   variable RX_CNT     :  integer;   
   variable GOT_SW1    :  integer;   
   variable GOT_SW2    :  integer;   
   variable tp         :  integer;   
   variable rp         :  integer;   
   variable np         :  integer;   
   variable i          :  integer;   
   variable RESP_TIMER :  integer;   
   variable CMD        :  integer;   
   variable MSGERROR   :  integer;   
   variable DP         :  integer;   
   variable BP         :  integer;   
   begin
     
	  ------------------------------------------------------------------
   	  -- This is triggered by ECLK
	 
	  if (ERESETN = '0') then
         BCSTART <= '0';    
         BCSTART_DELAYED <= '0';    
         EXT_RDEN <= '0';    
         SINGLE <= '1';    
      elsif ECLK'event and ECLK='1' then
         -- Memory Interface Read and write
         EXT_RDEN <= EXT_SEL and EXT_RD;    
         if (EXT_SEL = '1' and (EXT_WR = '1' OR EXT_RD = '1')) then
            addr := to_int_unsigned(EXT_ADDR);    
            if (EXT_WR = '1') then
               MEM(addr) <= EXT_DIN(15 downto 0);    
               if ((BCSTATE = IDLE and addr = 0) and (EXT_DIN(0)) = '1') then
                  BCSTART <= '1';    
                  SINGLE  <= EXT_DIN(1);    
               end if;
            end if;
            if (EXT_RD = '1') then
               EXT_DOUT <= ( others => '0');    
               case addr IS
                  when 0 =>
                           if (BCSTATE /= IDLE) then
                              EXT_DOUT(15) <= '1';    
                           end if;
                  when 1 =>
                           EXT_DOUT <= to_slv32(BP);    
                  when OTHERS  =>
                           EXT_DOUT <= "0000000000000000" & MEM(addr);    
                  
               end case;
            end if;
         end if;
         if (BCSTATE /= IDLE) then
            BCSTART <= '0';    
         end if;
         BCSTART_DELAYED <= BCSTART;    --  incase BP set up a clock cycle later!
      end if;

      -----------------------------------------------
	  -- This is table drive 1553 BBC
   	  -- This is triggered by CLK16
      if (ERESETN = '0') then
         BCSTATE   <= IDLE;    
         iBUSY     <= '0';    
         ENCSTROBE <= '0';    
         ENCDATA   <= "0000000000000000";    
         ENCCW     <= '0';    
         USEBUSB   <= '0';    
         for i in 0 to 7 loop
           MEM(i) <= "0000000000000000";    
         end loop;
      elsif CLK16'event and CLK16='1' then
         ENCSTROBE <= '0';    
         case BCSTATE IS
            when IDLE =>
                     iBUSY <= '0';    
                     if (BCSTART_DELAYED = '1') then
                        BCSTATE <= INIT;    
                        iBUSY <= '1';    
                        BP    := to_int_unsigned(MEM(1));    
                     end if;
            when INIT =>
                     CMD := to_int_unsigned(MEM(BP + 0)(3 downto 0));    
                     case CMD IS
                        when 0 =>
                                 BCSTATE <= IDLE;    
                                 iBUSY <= '0';    
                        when 1 |
                             2 =>
                                 printf("BC: Doing Message Block BC at %04x",fmt(BP));   
                                 BCSTATE <= DOMSG;    
                        when others  =>
                                 printf("BC: ERROR Unimplemented Message Block %04x=%04x",fmt(BP)&fmt(MEM(BP)));
                                 BCSTATE <= IDLE;    
                                 iBUSY    <= '0';    
                        
                     end case;
            when DOMSG =>
                     MSG_RTRT := (MEM(BP + 0)(4)='1');    
                     MSG_CW := MEM(BP + 1);    
                     MSG_RT := to_int_unsigned(MSG_CW(15 downto 11));    
                     MSG_TX := (MSG_CW(10)='1');    
                     MSG_SA := to_int_unsigned(MSG_CW(9 downto 5));    
                     MSG_WC := to_int_unsigned(MSG_CW(4 downto 0));    
                     DP     := to_int_unsigned(MEM(BP + 5));    
                     MSG_MC := FALSE;    
                     MSG_BC := FALSE;    
                     if (MSG_SA = 0 OR MSG_SA = 31) then
                        MSG_MC := TRUE;    
                     end if;
                     if (MSG_RT = 31) then
                        MSG_BC := TRUE;    
                     end if;
                     if (not MSG_MC and MSG_WC = 0) then
                        MSG_WC := 32;    
                     end if;
                     if (MSG_MC  and MSG_WC<=15) then
                        MSG_WC := 0;    
                     end if;
                     if (MSG_MC  and MSG_WC >= 16) then
                        MSG_WC := 1;    
                     end if;
                     MSG_CW2 := MEM(BP + 2);    
                     MEM(BP + 3) <= "1111111111111111";    
                     MEM(BP + 4) <= "1111111111111111";    
                     MSG_SW1     := "1111111111111111";    
                     MSG_SW2     := "1111111111111111";    
                     GOT_SW1 := 0;    
                     GOT_SW2 := 0;    
                     TX_CNT := 0;    
                     RX_CNT := 0;    
                     USEBUSB <= MEM(BP + 0)(5);    
                     -- Debug
                     -- Create DATA Stream
                     
                     if (not MSG_TX ) then
                        -- RT to recieve
                        if (MSG_RTRT ) then
                           TXDATA(0) := '1' & MSG_CW;    
                           TXDATA(1) := '1' & MSG_CW2;    
                           TX_CNT := 2;    
                           RX_CNT := MSG_WC + 2;    
                        else
                           --Non RTRT messages
                           TXDATA(0) := '1' & MSG_CW;    
                           TX_CNT := 1;    
                           if (not MSG_MC ) then
                              i := 0;
                              while (i < MSG_WC) loop
                                 TXDATA(TX_CNT + i) := '0' & MEM(DP + i)(15 downto 0);    
                                 i := i + 1;
                              end loop;
                              TX_CNT := TX_CNT + MSG_WC;    
                              RX_CNT := 1;    
                           else
                              i := 0;
                              while (i < MSG_WC) loop
                                 TXDATA(TX_CNT + i) := '0' & MEM(5)(15 downto 0);    
                                 i := i + 1;
                              end loop;
                              TX_CNT := TX_CNT + MSG_WC;    
                              RX_CNT := 1;    
                           end if;
                        end if;
                        if (MSG_BC) then
                           RX_CNT := RX_CNT - 1;    
                        end if;
                     else
                        -- RT to transmit
                        if (MSG_RTRT ) then
                           TXDATA(0) := '1' & MSG_CW;    
                           TXDATA(1) := '1' & MSG_CW2;    
                           TX_CNT := 2;    
                           RX_CNT := MSG_WC + 2;    
                        else
                           TXDATA(0) := '1' & MSG_CW;    
                           TX_CNT := 1;    
                           RX_CNT := MSG_WC + 1;    
                        end if;
                        if (MSG_BC) then
                           RX_CNT := RX_CNT - 1;    
                        end if;
                     end if;
                     -- Now do the Message
                     
                     tp := 0;    
                     rp := 0;    
                     np := 0;    
                     BCSTATE <= WIMG;    
            when WIMG =>
                     if (IMG = '0') then
                        BCSTATE <= TXT;    
                     end if;
                     RESP_TIMER := 0;    
                     MSGERROR := 0;    
            when TXT =>
                     if ((ENCREADY = '1' and ENCSTROBE = '0') and tp < TX_CNT) then
                        ENCSTROBE <= '1';    
                        ENCDATA <= TXDATA(tp)(15 downto 0);    
                        ENCCW <= TXDATA(tp)(16);    
                        if (TXDATA(tp)(16) = '1') then
                           printf("BC: TX CW %04x ",fmt(TXDATA(tp)(15 downto 0)));   
                        end if;
                        if (NOT TXDATA(tp)(16) = '1') then
                           printf("BC: TX DW %04x ",fmt(TXDATA(tp)(15 downto 0)));   
                        end if;
                        tp := tp + 1;    
                     end if;
                     if (((ENCREADY = '1' and ENCSTROBE = '0') and TXBUSY = '0') and tp >= TX_CNT) then
                        BCSTATE <= RCV;    
                        RESP_TIMER := 0;    
                        
                     end if;
            when RCV =>
                     RESP_TIMER := RESP_TIMER + 1;    
                     if (RXSTROBE = '1') then
                        RXDATA(rp) := DECODEROUT;    
                        if (DECODEROUT(16) = '1') then
                           printf("BC: RX SW %04x",fmt(DECODEROUT(15 downto 0)));   
                        end if;
                        if (NOT DECODEROUT(16) = '1') then
                           printf("BC: RX DW %04x",fmt(DECODEROUT(15 downto 0)));   
                        end if;
                        rp := rp + 1;    
                        if (DECODEROUT(17) = '1') then
                           MSGERROR := 1;    
                        end if;
                     end if;
                     if ((RESP_TIMER > (40 * 16) and RXBUSY = '0') and TXBUSY = '0') then
                        if (MSG_RTRT) then
                           BCSTATE <= RCV2;    
                           RESP_TIMER := 0;    
                        else
                           BCSTATE <= CHK;    
                        end if;
                     end if;
            when RCV2 =>
                     RESP_TIMER := RESP_TIMER + 1;    
                     if (RXSTROBE = '1') then
                        RXDATA(rp) := DECODEROUT;    
                        if (DECODEROUT(16) = '1') then
                           printf("BC: RX SW %04x",fmt(DECODEROUT(15 downto 0)));   
                        end if;
                        if (NOT DECODEROUT(16) = '1') then
                           printf("BC: RX DW %04x",fmt(DECODEROUT(15 downto 0)));   
                        end if;
                        rp := rp + 1;    
                        if (DECODEROUT(17) = '1') then
                           MSGERROR := 1;    
                        end if;
                     end if;
                     if ((RESP_TIMER > (40 * 16) and RXBUSY = '0') and TXBUSY = '0') then
                        BCSTATE <= CHK;    
                     end if;
            when CHK =>
                     np := 0;    
                     i := 0;
                     while (i < rp) loop
                        if (RXDATA(i)(16) = '1' and GOT_SW1 = 0) then
                           MEM(BP + 3) <= RXDATA(i)(15 downto 0);    
                           GOT_SW1 := 1;    
                        end if;
                        if (RXDATA(i)(16) = '1' and GOT_SW1 = 1) then
                           MEM(BP + 3) <= RXDATA(i)(15 downto 0);    
                           GOT_SW1 := 2;    
                        end if;
                        if (RXDATA(i)(16) = '1' and GOT_SW1 = 1) then
                           MEM(BP + 3) <= RXDATA(i)(15 downto 0);    
                           GOT_SW1 := 2;    
                        end if;
                        if (RXDATA(i)(16) = '0' and not MSG_MC) then
                           MEM(DP + np) <= RXDATA(i)(15 downto 0);    
                           np := np + 1;    
                        end if;
                        if (RXDATA(i)(16) = '0' and MSG_MC) then
                           MEM(BP + 5) <= RXDATA(i)(15 downto 0);    
                           np := np + 1;    
                        end if;
                        i := i + 1;
                     end loop;
                     if (rp /= RX_CNT) then
                        MSGERROR := 1;    
                     end if;
                     MEM(BP + 6)(7 downto 0) <= to_slv32(np)(7 downto 0);    
                     MEM(BP + 6)(8)  <= '1';    
                     MEM(BP + 6)(9)  <= to_std_logic(MSGERROR);    
                     MEM(BP + 6)(10) <= to_std_logic(GOT_SW1);    
                     MEM(BP + 6)(11) <= to_std_logic(GOT_SW2);    
                     MEM(BP + 6)(8)  <= '1';    
                     BCSTATE <= DONE;    
                     if (MSGERROR /= 0) then
                        printf("BC: WARNING A 1553 ERROR WAS DETECTED - No of Received words %0d",fmt(rp));   
                     end if;
            when DONE =>
                     MSG_DONXT := (MEM(BP + 0)(1)='1');    
                     if (CMD = 2 and SINGLE = '0') then
                        BP := BP + 8;    
                        BCSTATE <= INIT;    
                     else
                        BCSTATE <= IDLE;    
                     end if;
            when others =>
                     NULL;
            
         end case;
      end if;
   end process;
   
   
   EXT_WAIT <= iBUSY OR BCSTART OR BCSTART_DELAYED ;
   BUSY     <= iBUSY;
   
   
   --**********************************************************************
   -- An Encoder, reuse the one in the core
   --
  
   CLKSPDX <= "01" ;
   
   BUSAENC : ENCODER 
      PORT MAP (
         CLK       => CLK16,
         RSTn      => ERESETN,
         CLKSPD    => CLKSPDX,
         STROBE    => ENCSTROBE,
         ABORTX    => Logic0,
         DATAIN    => ENCDATA,
         CMDSTAT   => ENCCW,
         TXREADY   => ENCREADY,
         TXBUSY    => TXBUSY,
         TXENABLE  => TXENABLE,
         DOUT      => BUSOUT,
         TXENA     => Logic0,
         RXSTROBEA => Logic0,
         RXERRORA  => Logic0,
         RXDATAA   => Zero16,
         RXDATAAS  => Logic0,
         TXENB     => Logic0,
         RXSTROBEB => Logic0,
         RXERRORB  => Logic0,
         RXDATAB   => Zero16,
         RXDATABS  => Logic0,
         CLRERRORS => Logic0,
         loopFAILA => open,
         loopFAILB => open,
         FSM_ERROR => open);   
   
   TXENABLEA <= TXENABLE and NOT USEBUSB ;
   TXENABLEB <= TXENABLE and USEBUSB ;
 
   BUSAPOS <= BUSOUT when TXENABLEA = '1' else 'Z';  
   BUSANEG <= NOT BUSOUT when TXENABLEA = '1' else 'Z';
 
   BUSBPOS <= BUSOUT when TXENABLEB = '1' else 'Z';
   BUSBNEG <= NOT BUSOUT when TXENABLEB = '1' else 'Z';

   PROCESS (ERESETN,USEBUSB,BUSAPOS,BUSANEG,BUSBPOS,BUSBNEG)
   BEGIN
      if (ERESETN = '0') then
         BUSPOSX <= '1';    
         BUSNEGX <= '1';    
      end if;
      if (USEBUSB = '0') then
         if (BUSAPOS = '1') then
            BUSPOSX <= '1';    
         else
            BUSPOSX <= '0';    
         end if;
         if (BUSANEG = '0') then
            BUSNEGX <= '0';    
         else
            BUSNEGX <= '1';    
         end if;
      end if;
      if (USEBUSB = '1') then
         if (BUSBPOS = '1') then
            BUSPOSX <= '1';    
         else
            BUSPOSX <= '0';    
         end if;
         if (BUSBNEG = '0') then
            BUSNEGX <= '0';    
         else
            BUSNEGX <= '1';    
         end if;
      end if;
   end PROCESS;
   
   --**********************************************************************
   -- A Decoder, reuse the one in the core
   --

   BUSADEC : DECODER 
      PORT MAP (
         CLK      => CLK16,
         RSTn     => ERESETN,
         CLKSPD   => CLKSPDX,
         DATAINP  => BUSPOSX,
         DATAINN  => BUSNEGX,
         FROMUS   => FROMUS,
         TXENABLE => TXENABLE,
         STROBE   => RXSTROBEX,
         DATAOUT  => DEC_DATAOUT,
         CMDSTAT  => DEC_CMDSTAT,
         GOTSYNC  => open,
         PARERR   => DEC_PARERR,
         MANERR   => DEC_MANERR,
         ACTIVE   => RXBUSY,
         CONTIG   => DEC_CONTIG
	);   
   

   -- Hold IMG for 1us after RXBUSY, since RXBUSY goes inactive after 3us this makes sure the 
   -- IMG is 4us
   
   process (ERESETN,RXBUSY)
   begin
      if (ERESETN = '0') then
         IMG <= '0';    
      else
         IMG <= RXBUSY after 1 us;    
      end if;
   end process;
   
   
   RXSTROBE   <= RXSTROBEX and NOT FROMUS ;
   DECERR     <= DEC_PARERR OR DEC_MANERR ;
   DECODEROUT <= FROMUS & DEC_CONTIG & DECERR & DEC_CMDSTAT & DEC_DATAOUT ;

end test;
