-- File................: misc.vhd
-- Function............: Miscellanious Routines used by PCI Testharness
-- Person Responsible..: I Bryant
-- Version.............: 5.11
-- Last Updated........: 8-24-98
-- Component of........:
-- Components Required.:
-- Compilation Notes...:
--
-- Revision History:
-- Copyright 1998 by ACTEL
--
-- Functional Description:
--


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


package misc is

type INTEGER_ARRAY is array ( INTEGER range <>) of INTEGER;

subtype NIBBLE     is std_logic_vector ( 3 downto 0);
subtype BYTE       is std_logic_vector ( 7 downto 0);
subtype WORD       is std_logic_vector (15 downto 0);
subtype DWORD      is std_logic_vector (31 downto 0);

type BYTE_ARRAY    is array ( INTEGER range <>) of BYTE;
type WORD_ARRAY    is array ( INTEGER range <>) of WORD;
type DWORD_ARRAY   is array ( INTEGER range <>) of DWORD;

type BOOLEAN_VECTOR is array ( INTEGER range <>) of BOOLEAN;

constant ZERO : DWORD := (others => '0');
constant ALLONES : std_logic_vector (31 downto 0) := (others => '0');
constant UNKNOWN : std_logic_vector (31 downto 0) := (others => 'U');

procedure waitclocks(signal clock : std_logic;
                     N : INTEGER);

function to_std_logic( tmp : BOOLEAN ) return std_logic;
function to_std_logic_invert( tmp : BOOLEAN ) return std_logic;
function to_boolean( tmp : std_logic ) return BOOLEAN;
function to_boolean_invert( tmp : std_logic ) return BOOLEAN;

function to_integer ( din : std_logic_vector ) return integer;

function to_byte  ( x : INTEGER ) return BYTE;
function to_word  ( x : INTEGER ) return WORD;
function to_dword ( x : INTEGER ) return DWORD;

function to_byte  ( str : STRING ) return BYTE;
function to_word  ( str : STRING ) return WORD;
function to_dword ( str : STRING ) return DWORD;


function init_data( seed : INTEGER; size : INTEGER) return DWORD_ARRAY;
function init_data( seed : STRING; size : INTEGER) return DWORD_ARRAY;

end misc;


package body misc is

function to_std_logic_invert( tmp : BOOLEAN ) return std_logic is
 begin
   if tmp then return ('0');
          else return ('1');
   end if;
 end to_std_logic_invert;

function to_std_logic( tmp : BOOLEAN ) return std_logic is
 begin
   if tmp then return ('1');
          else return ('0');
   end if;
 end to_std_logic;

function to_boolean_invert( tmp : std_logic ) return BOOLEAN is
 begin
   if to_X01(tmp)='0' then return (TRUE);
                      else return (FALSE);
   end if;
 end to_boolean_invert;

function to_boolean( tmp : std_logic ) return BOOLEAN is
 begin
   if to_X01(tmp)='1' then return (TRUE);
                      else return (FALSE);
   end if;
 end to_boolean;

procedure waitclocks(signal clock : std_logic;
                     N : INTEGER) is
 begin
  for i in 1 to N loop
   wait until clock'event and clock='0';
  end loop;
 end waitclocks;

function to_byte ( x : INTEGER ) return BYTE is
 variable x1 : BYTE;
 begin
   x1 := conv_std_logic_vector( x,8);
   return(x1);
 end to_byte;

function to_word ( x : INTEGER ) return WORD is
 variable x1 : WORD;
 begin
   x1 := conv_std_logic_vector( x,16);
   return(x1);
 end to_word;

function to_dword ( x : INTEGER ) return DWORD is
 variable x1 : DWORD;
 variable xh,xl : WORD;
 variable xi : INTEGER;
 begin
  -- Note this causes an integer overflow on VSS and QuickVHDL
  -- Cannout handle -ve numbers 
  -- x1 := conv_std_logic_vector( x,32);
  if x<0 then
     xi:= x + 2 ** 30 + 2 ** 30;
     x1(30 downto 0) := conv_std_logic_vector( xi,31);
     x1(31) := '1';
  else
     x1(30 downto 0) := conv_std_logic_vector( x,31);
     x1(31) := '0';
  end if;
  return(x1);
 end to_dword;


function to_byte( str : STRING ) return BYTE is
 variable str1 : string ( 1 to 2);
 variable x  : INTEGER;
 variable dw : byte;
 begin
  str1 := str;
  for i in 1 to 2 loop 
     case str1(i) is
      when '0' to '9' => x:= CHARACTER'POS(str1(i)) - CHARACTER'POS('0');
      when 'A' to 'F' => x:= 10 + CHARACTER'POS(str1(i)) - CHARACTER'POS('A');
      when 'a' to 'z' => x:= 10 + CHARACTER'POS(str1(i)) - CHARACTER'POS('a');
      when others => assert  FALSE
                        report "Illegal Character in the Hex String"
                        severity failure;
     end case;
     dw(11- (i*4)  downto 8 - (i*4) ) := conv_std_logic_vector(x,4);
  end loop;
  return(dw);
 end to_byte;

function to_word( str : STRING ) return WORD is
 variable str1 : string (1 to 4);
 variable dw : word;
 begin
  str1 := str;
  dw(15 downto 8) := to_byte( str1(1 to 2));
  dw( 7 downto 0) := to_byte( str1(3 to 4));
  return(dw);
 end to_word;

function to_dword( str : STRING ) return DWORD is
 variable str1 : string (1 to 8);
 variable dw : dword;
 begin
  str1 := str;
  dw(31 downto 16) := to_word( str1(1 to 4));
  dw(15 downto  0) := to_word( str1(5 to 8));
  return(dw);
 end to_dword;

function to_integer ( din : std_logic_vector ) return integer is
 variable x: integer;
 begin
  x := 0;
  if din'length/=32 then
     x := conv_integer( din);
  elsif din(31)='0' then 
     x := conv_integer( din (30 downto 0));
  else
     x := conv_integer( din (30 downto 0));
     x := x - 2 ** 30 - 2 ** 30;
  end if;
  return(x);
 end to_integer;


function init_data( seed : INTEGER; size : INTEGER) return DWORD_ARRAY is
 variable xdata : DWORD_ARRAY (0 to 255);
 begin
  -- In case there are any 16#FFFFFFFF# type constants Causes VSS to complain
  assert seed>0
    report "INIT_DATA with integer Seed cannot be negative"
    severity failure;
  for i in 0 to size-1 loop
    xdata(i) := to_dword(seed+i);
  end loop;
  return(xdata(0 to size-1));
end init_data;

function init_data( seed : STRING; size : INTEGER) return DWORD_ARRAY is
 variable xdata : DWORD_ARRAY (0 to 255);
 variable seedxx : DWORD;
 begin
  seedxx := to_dword(seed);
  for i in 0 to size-1 loop
    xdata(i) := seedxx +i ;
  end loop;
  return(xdata(0 to size-1));
end init_data;



end misc;





