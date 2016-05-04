-------------------------------------------------------------------------------
-- Copyright 2006 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- File:            extacs.vhd
--
-- Description:     External access comparator
--
--
-- Rev:             1.2  Dec06
--
-- Notes:
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use STD.TEXTIO.ALL;

   entity EXTERNAL_ACCESS_COMPARATOR is
      generic (
              MODE      : INTEGER := 2;  -- Comparator mode
                                         -- 0 - no occurrence
                                         -- 1 - the COMPFILE writer
                                         -- 2 - vectors comparator
              DATAWIDTH : INTEGER := 8;
              ADDRWIDTH : INTEGER := 16;
              TESTNAME  : STRING  := "test001";
              TESTPATH  : STRING  := "TESTS";
              COMPFILE  : STRING  := "ACSCOMP.TXT"; -- Compare file
              DIFFFILE  : STRING  := "ACSDIFF.TXT"  -- Differ. file
              );
      port (
           rst          : in  STD_LOGIC;
           addrbus      : in  STD_LOGIC_VECTOR (ADDRWIDTH-1 downto 0);
           databus      : in  STD_LOGIC_VECTOR (DATAWIDTH-1 downto 0);
           wr           : in  STD_LOGIC;
           PWRITE       : in  STD_LOGIC;
           PENABLE      : in  STD_LOGIC;
           PWDATA       : in  STD_LOGIC_VECTOR (7 downto 0);
           PADDR        : in  STD_LOGIC_VECTOR (11 downto 0)
           );
   end EXTERNAL_ACCESS_COMPARATOR;



--*******************************************************************--

   architecture SIM of EXTERNAL_ACCESS_COMPARATOR is

      signal apb_write : std_logic;

   --------------------------------------------------------------------
   -- Converts STD_LOGIC bit to CHARACTER :
   --------------------------------------------------------------------
      function TO_CHARACTER (data : STD_LOGIC) return CHARACTER is
         variable result : CHARACTER;
      begin
         case data is
            when 'U'    => result:='U';
            when 'X'    => result:='X';
            when '0'    => result:='0';
            when '1'    => result:='1';
            when 'Z'    => result:='Z';
            when 'W'    => result:='W';
            when 'L'    => result:='L';
            when 'H'    => result:='H';
            when '-'    => result:='-';
            when others => result:='X';
         end case;
         return result;
      end TO_CHARACTER;


   --------------------------------------------------------------------
   -- Converts CHARACTER to STD_LOGIC bit :
   --------------------------------------------------------------------
      function TO_STD_LOGIC (data : CHARACTER) return STD_LOGIC is
         variable result : STD_LOGIC;
      begin
         case data is
            when 'U'    => result:='U';
            when 'X'    => result:='X';
            when '0'    => result:='0';
            when '1'    => result:='1';
            when 'Z'    => result:='Z';
            when 'W'    => result:='W';
            when 'L'    => result:='L';
            when 'H'    => result:='H';
            when '-'    => result:='-';
            when others => result:='X';
         end case;
         return result;
      end TO_STD_LOGIC;


   --------------------------------------------------------------------
   -- Reads STD_LOGIC bit from string line :
   --------------------------------------------------------------------
      procedure READ (row : inout LINE; data : out STD_LOGIC) is
         variable char   : CHARACTER;
      begin
         while row'length>0 and row(row'left)=' ' loop
            READ(row, char);
         end loop;
         if row'length>0 then
            READ(row, char);
            data:=TO_STD_LOGIC(char);
         else
            data:='X';
         end if;
      end READ;


   --------------------------------------------------------------------
   -- Reads STD_LOGIC_VECTOR from string line :
   --------------------------------------------------------------------
      procedure READ (row : inout LINE; data : out STD_LOGIC_VECTOR) is
      begin
         for i in data'range loop
            READ(row, data(i));
         end loop;
      end READ;


   --------------------------------------------------------------------
   -- Writes STD_LOGIC_VECTOR to string line :
   --------------------------------------------------------------------
      procedure WRITE (row : inout LINE; data : in STD_LOGIC_VECTOR) is
         variable char : CHARACTER;
      begin
         for i in data'range loop
            char:=TO_CHARACTER(data(i));
            WRITE(row,char);
         end loop;
      end WRITE;


   --------------------------------------------------------------------
   -- Converts STD_LOGIC bit to '0', '1' or 'X' value
   --------------------------------------------------------------------
      function TO_01X (data : STD_LOGIC) return STD_LOGIC is
         variable result : STD_LOGIC;
      begin
         if (data='0') or (data='L') then
            result:='0';
         elsif (data='1') or (data='H') then
            result:='1';
         else
            result:='X';
         end if;
         return result;
      end TO_01X;


   ---------------------------------------------------------------------------
   -- Converts STD_LOGIC_VECTOR bit to '0', '1' or 'X' value
   ---------------------------------------------------------------------------
      function TO_01X (data : STD_LOGIC_VECTOR) return STD_LOGIC_VECTOR is
         variable result : STD_LOGIC_VECTOR(data'range);
      begin
         for i in data'range loop
            result(i) := TO_01X(data(i));
         end loop;
         return result;
      end TO_01X;


   begin

   apb_write <= PWRITE and PENABLE;

   --------------------------------------------------------------------
   main :
   --------------------------------------------------------------------
      block
      begin

      -----------------------------------------------------------------
      writer :
      -----------------------------------------------------------------
         if MODE=1 generate

         --------------------------------------------------------------
         create :
         --------------------------------------------------------------
            process (rst, wr)
               --file     comp   : TEXT is out TESTPATH & '/' & TESTNAME & '/' & COMPFILE;
               file     comp   : TEXT is out "opcode_" & TESTNAME & "_" & COMPFILE;
               variable row    : LINE;
               variable init   : BOOLEAN :=false;
            begin
               if rst='1' then
               elsif wr'event and wr='1' then
                  if not init then
                     WRITE(row,STRING'
                              ("   Time     Address         Data"));
                     WRITELINE(comp,row);
                     init :=true;
                  end if;
                  WRITE(row,now,right,10);
                  WRITE(row,STRING'("  "));
                  WRITE(row,addrbus);
                  WRITE(row,STRING'("  "));
                  WRITE(row,databus);
                  WRITE(row,STRING'("  "));
                  WRITELINE(comp,row);
               end if;
            end process;
         end generate;


      -----------------------------------------------------------------
      reader :
      -----------------------------------------------------------------
         if MODE=2 generate

         --------------------------------------------------------------
         compare :
         --------------------------------------------------------------
            process (rst, wr, apb_write)
               --file     comp     : TEXT is in  TESTPATH & '/' & TESTNAME & '/' & COMPFILE;
               --file     diff     : TEXT is out TESTPATH & '/' & TESTNAME & '/' & DIFFFILE;
               file     comp     : TEXT is in  "opcode_" & TESTNAME & "_" & COMPFILE;
               file     diff     : TEXT is out "opcode_" & TESTNAME & "_" & DIFFFILE;
               variable row_in   : LINE;
               variable row_out  : LINE;
               variable init     : BOOLEAN := false;
               variable stop     : BOOLEAN := false;
               variable time_v   : TIME;
               variable address_v : STD_LOGIC_VECTOR(ADDRWIDTH-1 downto 0);
               variable data_v   : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
               variable errors   : NATURAL := 0;
            begin
               ----------------------------------
               -- Vectors comparing
               ----------------------------------
               if rst='1' then
                  -------------------------------
                  -- Reading first line
                  -------------------------------
                  if not init then
                     READLINE(comp,row_in);
                     init := true;
                  end if;

               -- Check for correct write data in APB writes
               elsif apb_write'event and apb_write='1' then
                  if not ENDFILE(comp) then
                     READLINE(comp,row_in);
                     READ(row_in,time_v);

                     READ(row_in,address_v);
                     READ(row_in,data_v);

		    		 if TO_01X(data_v) /= TO_01X(PWDATA(7 downto 0)) then
                        errors:=errors+1;
                        WRITE(row_out,now);
                        WRITE(row_out,string'(" : PWDATA[7:0] is "));
                        WRITE(row_out,PWDATA(7 downto 0));
                        WRITE(row_out,string'(" but expected is "));
                        WRITE(row_out,data_v);
                        WRITEline(diff,row_out);
		    		 end if;
		    		 if TO_01X(address_v(11 downto 0)) /= TO_01X(PADDR(11 downto 0)) then
                        errors:=errors+1;
                        WRITE(row_out,now);
                        WRITE(row_out,string'(" : PADDR[11:0] is "));
                        WRITE(row_out,PADDR(11 downto 0));
                        WRITE(row_out,string'(" but expected is "));
                        WRITE(row_out,address_v(11 downto 0));
                        WRITEline(diff,row_out);
		    		 end if;
		    	  end if;

               elsif wr'event and wr='1' then
                  if not ENDFILE(comp) then
                     READLINE(comp,row_in);
                     READ(row_in,time_v);

                     READ(row_in,address_v);
                     READ(row_in,data_v);

                     if TO_01X(data_v)/=TO_01X(databus) then
                        errors:=errors+1;
                        WRITE(row_out,now);
                        WRITE(row_out,string'(" : Data is "));
                        WRITE(row_out,databus);
                        WRITE(row_out,string'(" but expected is "));
                        WRITE(row_out,data_v);
                        WRITEline(diff,row_out);
                     end if;
                     if TO_01X(address_v(addrwidth-1 downto 0))/=TO_01X(addrbus) then
                        errors:=errors+1;
                        WRITE(row_out,now);
                        WRITE(row_out,string'(" : address is "));
                        WRITE(row_out,addrbus);
                        WRITE(row_out,string'(" but expected is "));
                        WRITE(row_out,address_v(addrwidth-1 downto 0));
                        WRITEline(diff,row_out);
                     end if;
                  end if;

		       end if;

               ----------------------------------
               -- Report writing
               ----------------------------------
               if ENDFILE(comp) and not stop then
                  assert false
                     report "End of the external access test detected."
                     severity note;
                  WRITE(row_out,now);
                  WRITE(row_out,string'
                           (" : End of the external access test detected."));
                  WRITELINE(diff,row_out);
                  if errors=0 then
                     assert false
                        report "The external access test " & TESTNAME &
                        " passed."
                        severity note;
                     WRITE(row_out,string'
                              ("The external access test passed."));
                     WRITELINE(diff,row_out);
                  else
                     assert false
                        report "The external access test " & TESTNAME &
                        " failed. Differences are in the file " &
                        --TESTPATH & '/' & TESTNAME & '/' & DIFFFILE
                        "opcode_" & TESTNAME & "_" & DIFFFILE
                        severity note;
                     WRITE(row_out,string'("The external access test failed."));
                     WRITEline(diff,row_out);
                     WRITE(row_out,errors);
                     WRITE(row_out,string'(" difference(s) detected"));
                     WRITELINE(diff,row_out);
                  end if;
                  stop := true;
               end if;

            end process;
         end generate;

      end block;

   end SIM;
