-- File................: textio.vhd
-- Function............: Implements Basic Printing Routines for the Test Harness
-- Person Responsible..: I Bryant
-- Version.............: 5.11
-- Last Updated........: 8-24-98
-- Component of........:
-- Components Required.:
-- Compilation Notes...:
--             %d decimal
--             %h hexadecimal Integer or known vector
--             %x hexadecimal Integer or vector with X's
--             %b binary
--             %s string
--
-- Also Supports %6 i.e Width Field
--               %0 Fill with Zeros
--
-- Revision History:
-- Copyright 1998 by ACTEL
--
-- Functional Description:
--


library std;
use std.textio.all;

use work.misc.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


---------------------------------------------------------------------------
-- Declarations etc
--

package textio is

constant MAXSTRLEN : INTEGER := 128;
subtype  TEXTSTR is string;
type     T_NUMTYPE is ( NONE, INT, VECT, STRG);
--type line is access string;----SB
type T_FMT is record
   f_type      : T_NUMTYPE;
   f_integer   : INTEGER;
   f_vector    : DWORD;
   f_length    : INTEGER;
   f_string    : STRING (1 to MAXSTRLEN);
end record;
type T_FMT_ARRAY is array ( integer range <> ) of T_FMT;

function is01 ( v: std_logic) return BOOLEAN;
function is01 ( v: std_logic_vector; len : INTEGER) return BOOLEAN;

function strlen( str: STRING) return INTEGER;
function strcopy ( instr : STRING) return TEXTSTR;

function fmt ( x : INTEGER) return T_FMT;
function fmt ( x : std_logic_vector) return T_FMT;
function fmt ( x : string ) return T_FMT;
function fmt ( x : boolean ) return T_FMT;
function fmt ( x : std_logic) return T_FMT;

procedure printf( str : TEXTSTR; params : T_FMT_ARRAY);
procedure printf( str : TEXTSTR; params : T_FMT);
procedure printf( str : TEXTSTR );

procedure ifprintf( enable : BOOLEAN; str : TEXTSTR; params : T_FMT_ARRAY);
procedure ifprintf( enable : BOOLEAN; str : TEXTSTR; params : T_FMT);
procedure ifprintf( enable : BOOLEAN; str : TEXTSTR );


----------------------------------------------------------------------------
--
-- Copyright (c) 1990, 1991, 1992 by Synopsys, Inc.  All rights reserved.
-- 
-- This source file may be used and distributed without restriction 
-- provided that this copyright statement is not removed from the file 
-- and that any derivative work contains this copyright notice.
--
--	Package name: STD_LOGIC_TEXTIO
--
--	Purpose: This package overloads the standard TEXTIO procedures
--		 READ and WRITE.
--
--	Author: CRC, TS
--
----------------------------------------------------------------------------  
procedure HREAD(L:inout LINE; VALUE:out STD_ULOGIC_VECTOR);
procedure HREAD(L:inout LINE; VALUE:out STD_ULOGIC_VECTOR; GOOD: out BOOLEAN);
procedure HREAD(L:inout LINE; VALUE:out STD_LOGIC_VECTOR);
procedure HREAD(L:inout LINE; VALUE:out STD_LOGIC_VECTOR; GOOD: out BOOLEAN);

end textio;


---------------------------------------------------------------------------
-- The Body
--

package body textio is


	-- Hex Read and Write procedures.
	--

	--
	-- Hex, and Octal Read and Write procedures for BIT_VECTOR
	--  (these procedures are not exported, they are only used
	--   by the STD_ULOGIC hex/octal reads and writes below.
	--
	--

	procedure Char2QuadBits(C: Character; 
				RESULT: out Bit_Vector(3 downto 0);
				GOOD: out Boolean;
				ISSUE_ERROR: in Boolean) is
	begin
		case c is
			when '0' => result :=  x"0"; good := TRUE;
			when '1' => result :=  x"1"; good := TRUE;
			when '2' => result :=  x"2"; good := TRUE;
			when '3' => result :=  x"3"; good := TRUE;
			when '4' => result :=  x"4"; good := TRUE;
			when '5' => result :=  x"5"; good := TRUE;
			when '6' => result :=  x"6"; good := TRUE;
			when '7' => result :=  x"7"; good := TRUE;
			when '8' => result :=  x"8"; good := TRUE;
			when '9' => result :=  x"9"; good := TRUE;
			when 'A' => result :=  x"A"; good := TRUE;
			when 'B' => result :=  x"B"; good := TRUE;
			when 'C' => result :=  x"C"; good := TRUE;
			when 'D' => result :=  x"D"; good := TRUE;
			when 'E' => result :=  x"E"; good := TRUE;
			when 'F' => result :=  x"F"; good := TRUE;
 
			when 'a' => result :=  x"A"; good := TRUE;
			when 'b' => result :=  x"B"; good := TRUE;
			when 'c' => result :=  x"C"; good := TRUE;
			when 'd' => result :=  x"D"; good := TRUE;
			when 'e' => result :=  x"E"; good := TRUE;
			when 'f' => result :=  x"F"; good := TRUE;
			when others =>
			   if ISSUE_ERROR then 
				   assert FALSE report
					"HREAD Error: Read a '" & c &
					   "', expected a Hex character (0-F).";
			   end if;
			   good := FALSE;
		end case;
	end;

	procedure HREAD(L:inout LINE; VALUE:out BIT_VECTOR)  is
		variable ok: boolean;
		variable c:  character;
		constant ne: integer := value'length/4;
		variable bv: bit_vector(0 to value'length-1);
		variable s:  string(1 to ne-1);
	begin
		if value'length mod 4 /= 0 then
			assert FALSE report 
				"HREAD Error: Trying to read vector " &
				   "with an odd (non multiple of 4) length";
			return;
		end if;

		loop					-- skip white space
			read(l,c);
			exit when ((c /= ' ') and (c /= CR) and (c /= HT));
		end loop;

		Char2QuadBits(c, bv(0 to 3), ok, TRUE);
		if not ok then 
			return;
		end if;

		read(L, s, ok);
		if not ok then
			assert FALSE 
				report "HREAD Error: Failed to read the STRING";
			return;
		end if;

		for i in 1 to ne-1 loop
			Char2QuadBits(s(i), bv(4*i to 4*i+3), ok, TRUE);
			if not ok then
				return;
			end if;
		end loop;
		value := bv;
	end HREAD; 

       procedure HREAD(L:inout LINE; VALUE:out BIT_VECTOR;GOOD: out BOOLEAN) is
		variable ok: boolean;
		variable c:  character;
		constant ne: integer := value'length/4;
		variable bv: bit_vector(0 to value'length-1);
		variable s:  string(1 to ne-1);
	begin
		if value'length mod 4 /= 0 then
			good := FALSE;
			return;
		end if;

		loop					-- skip white space
			read(l,c);
			exit when ((c /= ' ') and (c /= CR) and (c /= HT));
		end loop;

		Char2QuadBits(c, bv(0 to 3), ok, FALSE);
		if not ok then 
			good := FALSE;
			return;
		end if;

		read(L, s, ok);
		if not ok then
			good := FALSE;
			return;
		end if;

		for i in 1 to ne-1 loop
			Char2QuadBits(s(i), bv(4*i to 4*i+3), ok, FALSE);
			if not ok then
				good := FALSE;
				return;
			end if;
		end loop;
		good := TRUE;
		value := bv;
	end HREAD; 

        procedure HREAD(L:inout LINE; VALUE:out STD_ULOGIC_VECTOR;GOOD:out BOOLEAN) is
		variable tmp: bit_vector(VALUE'length-1 downto 0);
	begin
		HREAD(L, tmp, GOOD);
		VALUE := To_X01(tmp);
	end HREAD;
	
	procedure HREAD(L:inout LINE; VALUE:out STD_ULOGIC_VECTOR) is
		variable tmp: bit_vector(VALUE'length-1 downto 0);
	begin
		HREAD(L, tmp);
		VALUE := To_X01(tmp);
	end HREAD;

	procedure HREAD(L:inout LINE; VALUE:out STD_LOGIC_VECTOR) is
		variable tmp: STD_ULOGIC_VECTOR(VALUE'length-1 downto 0);
	begin
		HREAD(L, tmp);
		VALUE := STD_LOGIC_VECTOR(tmp);
	end HREAD;

	procedure HREAD(L:inout LINE; VALUE:out STD_LOGIC_VECTOR; GOOD: out BOOLEAN) is
		variable tmp: STD_ULOGIC_VECTOR(VALUE'length-1 downto 0);
	begin
		HREAD(L, tmp, GOOD);
		VALUE := STD_LOGIC_VECTOR(tmp);
	end HREAD;

---------------------------------------------------------------------------
-- Basic Character Converters
--

function to_char( x : INTEGER range 0 to 15) return character is
 begin
  case x is
    when 0 => return('0');
    when 1 => return('1');   
    when 2 => return('2');    
    when 3 => return('3');
    when 4 => return('4');
    when 5 => return('5');   
    when 6 => return('6');    
    when 7 => return('7');
    when 8 => return('8');
    when 9 => return('9');   
    when 10 => return('A');    
    when 11 => return('B');
    when 12 => return('C');
    when 13 => return('D');   
    when 14 => return('E');    
    when 15 => return('F');
  end case;
end to_char;

function to_char( v : std_logic ) return CHARACTER is
 begin
   case v is
    when '0' => return('0');
    when '1' => return('1');
    when 'L' => return('L');
    when 'H' => return('H');
    when 'Z' => return('Z');
    when 'X' => return('X');
    when 'U' => return('U');
    when '-' => return('-');
    when 'W' => return('W');
   end case;
 end to_char;

---------------------------------------------------------------------------
-- special std_logic_vector handling
--

function is01 ( v: std_logic) return BOOLEAN is
 begin
  return ( v='0' or v='1');
 end is01;

function is01 ( v: std_logic_vector; len : INTEGER) return BOOLEAN is
 variable ok : BOOLEAN;
 begin
  ok := TRUE;
  for i in 0 to len-1 loop
    ok := ok and is01( v(i));
  end loop;
  return (ok);
 end is01;

---------------------------------------------------------------------------
-- String Functions
--

function strlen( str: STRING) return INTEGER is
 variable i: INTEGER;
 begin
  i:=1;
  while i<= MAXSTRLEN and str(i)/=NUL loop
   i:=i+1;
  end loop;
  return(i-1);
 end strlen;

function strcopy ( instr : STRING) return TEXTSTR is
 variable outstr : STRING (1 to MAXSTRLEN);
 variable i: INTEGER;
 begin
  outstr(1 to instr'length) := instr;
  outstr(instr'length+1) := NUL;
  return(outstr);
 end strcopy;

---------------------------------------------------------------------------
-- Number Printing Routines
--

function hexchar ( vect : std_logic_vector) return character is
 variable v : std_logic_vector ( 3 downto 0);
 variable char : CHARACTER;
 begin
   v := vect;
   if is01(v(0)) and is01(v(1)) and is01(v(2)) and is01(v(3)) then
      char := to_char (conv_integer(v));
   elsif v(0)=v(1) and v(0)=v(2) and v(0)=v(3) then
      char:= to_char(v(0));
   else 
      char:='?';
   end if;
   return(char);
 end hexchar;

function inttostr( value : INTEGER; base : INTEGER;
                   numlen : INTEGER :=0; zeros: BOOLEAN:=FALSE) return STRING is
 variable str : STRING (1 to MAXSTRLEN);
 variable s1  : STRING (MAXSTRLEN downto 1);
 variable pos,x,xn,x1 : INTEGER;
 begin
  x := abs(value);
  pos := 0;
  while x>0 or pos=0 loop
    pos:=pos+1;
    xn := x / base;
    x1 := x - xn * base ;
    x  := xn;
    s1(pos) := to_char(x1);
  end loop;
  if value<0  then
    pos:=pos+1;
    s1(pos):='-';
  end if;
  if pos>numlen then
    str(1 to pos) := s1 (pos downto 1);
    str(pos+1) := NUL;
  else
    case ZEROS is
      when TRUE  => str := (others => '0');
      when FALSE => str := (others => ' ');
    end case;  
    str( (1+numlen-pos) to numlen) := s1(pos downto 1);
    str(numlen+1) := NUL;
  end if;
  return(str);
 end inttostr;


function vecttostr( value : std_logic_vector; len : INTEGER; base : INTEGER; 
                    numlen : INTEGER :=0; 
                    zeros: BOOLEAN:=FALSE) return STRING is
 variable str : STRING (1 to MAXSTRLEN);
 variable s1  : STRING (MAXSTRLEN downto 1);
 variable pos, len4 : INTEGER;
 variable x : DWORD;
 variable vect4 : std_logic_vector(3 downto 0);
 begin
  x:=value;
  if len<32 then
    x(31 downto len) := (others =>'0');
  end if;
  case base is
   when 2   => for i in 0 to len-1 loop
                   s1(i+1) := to_char(value(i));
               end loop;
               pos:=len;
   when 16  => len4 := ((len+3)/4);
               for i in 0 to len4-1 loop
                 vect4 := x( 3+(4*i) downto 4*i);
                 s1(i+1) := hexchar(vect4);
               end loop;
               pos:=len4;
   when others =>  s1:=strcopy("ESAB LAGELLI");
  end case;
  if pos>numlen then
    str(1 to pos) := s1 (pos downto 1);
    str(pos+1) := NUL;
  else
    case ZEROS is
      when TRUE  => str := (others => '0');
      when FALSE => str := (others => ' ');
    end case;  
    str( (1+numlen-pos) to numlen) := s1(pos downto 1);
    str(numlen+1) := NUL;
  end if;
  return(str); 
 end vecttostr;

---------------------------------------------------------------------------
-- Multi Type input handlers
--

function fmt ( x : BOOLEAN) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type := INT;
  if x then fm.f_integer := 1;
       else fm.f_integer := 0;
  end if;
  return(fm);
 end fmt;

function fmt ( x : INTEGER) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type := INT;
  fm.f_integer := x;
  return(fm);
 end fmt;

function fmt ( x : std_logic_vector) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type   := VECT;
  fm.f_vector(x'length-1 downto 0) := x;
  fm.f_length := x'length;
  return(fm);
 end fmt;

function fmt ( x : string ) return T_FMT is
 variable fm : T_FMT;
 begin
  fm.f_type   := STRG;
  fm.f_string(x'range) := x;
  if x'length+1<MAXSTRLEN then
    fm.f_string(x'length+1) := NUL;
  end if;
  fm.f_length := x'length;
  return(fm);
 end fmt;

function fmt ( x : std_logic) return T_FMT is
 variable fm : T_FMT;
 variable x1 : std_logic_vector ( 0 downto 0);
 begin
  x1(0) := x;
  fm.f_type   := VECT;
  fm.f_vector(x1'length-1 downto 0) := x1;
  fm.f_length := x1'length;
  return(fm);
 end fmt;

---------------------------------------------------------------------------
-- The Main Print Routine
--

procedure printf( str    : TEXTSTR; 
                  Params : T_FMT_ARRAY ) is
 --file FSTR : TEXT is out "STD_OUTPUT";           -- Required for MTI Simulation (Veribest change)
 --file FSTR : TEXT is out "./output.out";         -- Substitute for Cadence Leapfrog
 variable ll : LINE;
 variable str1,pstr : STRING (1 to MAXSTRLEN); 
 variable ip,op,pp,iplen : INTEGER;
 variable numlen : INTEGER;
 variable zeros  : BOOLEAN;
 variable more   : BOOLEAN;
 variable intval : INTEGER;
 variable vectval: DWORD;
 variable len    : INTEGER;
 variable ftype  : T_NUMTYPE;
 begin
   iplen := str'length;
   ip:=1; op:=0; pp:=params'low;
   while ip<= iplen and str(ip)/=NUL loop
     if str(ip) = '%' then
       more:=TRUE;
       numlen:=0; zeros:=FALSE; 
       while more loop
          more:=FALSE;
          ip:=ip+1;
          ftype  := params(pp).f_type;
          intval := params(pp).f_integer;
          vectval:= params(pp).f_vector;
          len    := params(pp).f_length;
          case str(ip) is
            when '0'     => ZEROS:=TRUE;
                            more:=TRUE;
            when '1' to '9' => 
                            numlen:= 10* numlen + character'pos(str(ip))-48;
                            more := TRUE;
            when '%'     => pstr := strcopy("%");
            when 'd'     => case ftype is
                              when INT  => pstr := inttostr(intval,10,numlen,zeros);
                              when VECT => if is01(vectval,len) then
                                             intval:= conv_integer(vectval(len-1 downto 0));
                                             pstr := inttostr(intval,10,numlen,zeros);
                                           end if;
                              when others => pstr := strcopy("INVALID PRINTF d:" & str);
                            end case;
                            pp:=pp+1;  
            when 'h'     => case ftype is
                              when INT  => pstr := inttostr(intval,16,numlen,zeros);
                              when VECT => if is01(vectval,len) then
                                             intval:= conv_integer(vectval(len-1 downto 0));
                                             pstr := inttostr(intval,16,numlen,zeros);
                                           end if;
                              when others => pstr := strcopy("INVALID PRINTF h:" & str);
                            end case;
                            pp:=pp+1;  
            when 'b'     => case ftype is
                              when INT    => vectval:= conv_std_logic_vector(intval,32);
                                             len:=1;
					       for i in 1 to 31 loop
                                               if vectval(i)='1' then
 						 len:=i;
					       end if;
					     end loop;
                                             pstr := vecttostr(vectval,len,2,numlen,zeros);
                              when VECT   => pstr := vecttostr(vectval,len,2,numlen,zeros);
                              when others => pstr := strcopy("INVALID PRINTF b:" & str);
                            end case;                   
                            pp:=pp+1;  
            when 'x'     => case ftype is
                              when INT  => pstr := inttostr(intval,16,numlen,zeros);
                              when VECT => pstr := vecttostr(vectval,len,16,numlen,zeros);
                              when others => pstr := strcopy("INVALID PRINTF x:" & str);
                            end case;
                            pp:=pp+1;  
            when 's'     => case ftype is
                              when STRG   => pstr:=params(pp).f_string;
                              when others => pstr := strcopy("INVALID PRINTF s:" & str);
                            end case;
                            pp:=pp+1;
            when others  => pstr := strcopy("ILLEGAL FORMAT");
          end case;
       end loop;
       len := strlen(pstr);
       for i in 1 to len loop
          str1(op+i) := pstr(i);
       end loop;
       ip:=ip+1;
       op:=op+len;
     elsif str(ip)='\' then
       case str(ip+1) is
         when 'n' => str1(op+1):= NUL;
                     write( ll , str1 );
--                     writeline( FSTR, ll);                 -- MTI
                     writeline(STD.TEXTIO.OUTPUT, ll);       -- Veribest
                     op := 0; ip:=ip+1;
                     str1(op+1) := NUL;
         when others => 
       end case;
       ip:=ip+1;
     else
      op:=op+1;
      str1(op) := str(ip);
      ip:=ip+1;
     end if;
   end loop;
   if op>0 then
     str1(op+1):=NUL; 
     write( ll , str1 );
  --   writeline(FSTR, ll);                          -- MTI
     writeline(STD.TEXTIO.OUTPUT, ll);               -- Veribest
   end if;
 end printf;


procedure printf( str : TEXTSTR; params : T_FMT ) is
variable f_fmt : T_FMT_ARRAY ( 1 to 1);
begin
  f_fmt(1) := params;
  printf(str,f_fmt);
end printf;

procedure printf( str : TEXTSTR ) is
variable fm : T_FMT_ARRAY ( 1 to 1);
begin
  fm(1).f_type := NONE;
  printf(str,fm);
end printf;

procedure ifprintf( enable : BOOLEAN;
                    str    : TEXTSTR; 
                   Params : T_FMT_ARRAY ) is
begin
 if enable then
   printf(str,params);
 end if;
end ifprintf;

procedure ifprintf( enable : BOOLEAN; str : TEXTSTR; params : T_FMT ) is
variable f_fmt : T_FMT_ARRAY ( 1 to 1);
begin
 if enable then
    f_fmt(1) := params;
    printf(str,f_fmt);
 end if;
end ifprintf;

procedure ifprintf( enable : BOOLEAN; str : TEXTSTR ) is
variable fm : T_FMT_ARRAY ( 1 to 1);
begin
 if enable then
   fm(1).f_type := NONE;
   printf(str,fm);
 end if;
end ifprintf;


end textio;



---------------------------------------------------------------------------
-- This a Test For the above Routines
--

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;


use work.textio.all;


entity textio_test is

end textio_test;

architecture TB of textio_test is
begin

process
variable dw : std_logic_vector ( 9 downto 0);
variable xx : std_logic_vector(15 downto 0);
begin
  wait for 1 ns ;
  printf("Textio Test strings v1.2");
  printf("Note I think MTI uses variable width Fonts");
  xx:= conv_std_logic_vector( 16#AAAA#,16);
  printf("Using 04x %04x",fmt(xx));
  printf("Using 04u %04u",fmt(xx));
  printf("-d...123456 = %d",fmt(123456));
  printf("-8d..123456 = %8d",fmt(123456));
  printf("-08d.123456 = %08d",fmt(123456));
  printf("-02d.123456 = %02d",fmt(123456));
  printf("This is a Binary %016b",fmt(16#55AA#));
  printf("This is a Decimal %d",fmt(1234));
  printf("This is a Hex %h",fmt(16#1234#));
  printf("This is a Simple String");
  printf("This is a Simple String with a CRLF\nin the middle");
  printf("Read Location %d = %h",fmt(123456)&fmt(16#654321#));
  printf("-d...-123456 = %d",fmt(-123456));
  printf("-d...-123456 = %08d",fmt(-123456));
  dw := ( others => '0'); 
  printf("-x...000 = %x",fmt(dw));  
  dw := "0101010101";
  printf("-x...155 = %x",fmt(dw));  
  printf("-b...155 = %b",fmt(dw));   
  dw := "0101U10101";
  printf("-x...1?5 = %x",fmt(dw));  
  printf("-b...1?5 = %b",fmt(dw));     
  dw := "01UUUU0101";
  printf("-x...1U5 = %x",fmt(dw));  
  printf("-b...1U5 = %b",fmt(dw));     
  wait for 1 ns;
  wait;
 end process;

end TB;

