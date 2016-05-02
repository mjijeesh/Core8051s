------------------------------------------------------------------------------
-- "numeric_std_additions" package contains the additions to the standard
-- "numeric_std" package proposed by the VHDL-200X-ft working group.
-- This package should be compiled into "ieee_proposed" and used as follows:
-- use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;
-- use ieee_proposed.numeric_std_additions.all;
-- (this package is independant of "std_logic_1164_additions")
-- Last Modified: $Date: 2007-09-24 17:19:02 +0100 (Mon, 24 Sep 2007) $
-- RCS ID: $Id: bfm_utils.vhd 1 2007-09-24 16:19:02Z ciaran.murphy $
--
--  Created for VHDL-200X par, David Bishop (dbishop@vhdl.org)
------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

package numeric_std_additions is
  -- Id: A.3R
  function "+"(L : UNSIGNED; R : STD_ULOGIC) return UNSIGNED;
  -- Result subtype: UNSIGNED(L'RANGE)
  -- Result: Similar to A.3 where R is a one bit UNSIGNED

  -- Id: A.3L
  function "+"(L : STD_ULOGIC; R : UNSIGNED) return UNSIGNED;
  -- Result subtype: UNSIGNED(R'RANGE)
  -- Result: Similar to A.3 where L is a one bit UNSIGNED

  -- Id: A.4R
  function "+"(L : SIGNED; R : STD_ULOGIC) return SIGNED;
  -- Result subtype: SIGNED(L'RANGE)
  -- Result: Similar to A.4 where R is bit 0 of a non-negative
  --         SIGNED

  -- Id: A.4L
  function "+"(L : STD_ULOGIC; R : SIGNED) return SIGNED;
  -- Result subtype: UNSIGNED(R'RANGE)
  -- Result: Similar to A.4 where L is bit 0 of a non-negative
  --         SIGNED
  -- Id: A.9R
  function "-"(L : UNSIGNED; R : STD_ULOGIC) return UNSIGNED;
  -- Result subtype: UNSIGNED(L'RANGE)
  -- Result: Similar to A.9 where R is a one bit UNSIGNED

  -- Id: A.9L
  function "-"(L : STD_ULOGIC; R : UNSIGNED) return UNSIGNED;
  -- Result subtype: UNSIGNED(R'RANGE)
  -- Result: Similar to A.9 where L is a one bit UNSIGNED

  -- Id: A.10R
  function "-"(L : SIGNED; R : STD_ULOGIC) return SIGNED;
  -- Result subtype: SIGNED(L'RANGE)
  -- Result: Similar to A.10 where R is bit 0 of a non-negative
  --         SIGNED

  -- Id: A.10L
  function "-"(L : STD_ULOGIC; R : SIGNED) return SIGNED;
  -- Result subtype: UNSIGNED(R'RANGE)
  -- Result: Similar to A.10 where R is bit 0 of a non-negative
  --         SIGNED

  function RESIZE (ARG, SIZE_RES : SIGNED) return SIGNED;
  -- size_res version, uses the size of the "size_res" input
  -- to resize the output

  function RESIZE (ARG, SIZE_RES : UNSIGNED) return UNSIGNED;
  -- size_res version, uses the size of the "size_res" input
  -- to resize the output
  function TO_UNSIGNED (ARG : NATURAL; SIZE_RES : UNSIGNED) return UNSIGNED;
  -- size_res version, uses the size of the "size_res" input
  -- to resize the output
  function TO_SIGNED (ARG : INTEGER; SIZE_RES : SIGNED) return SIGNED;
  -- size_res version, uses the size of the "size_res" input
  -- to resize the output
   -- Result subtype: BOOLEAN
  -- Id: M.2B
  -- %%% function "?=" (L, R : UNSIGNED) return std_ulogic;
  function \?=\ (L, R : UNSIGNED) return std_ulogic;
  -- Result subtype: STD_ULOGIC
  -- Result: terms compared per STD_LOGIC_1164 intent

  -- Id: M.3B
  -- %%% function "?=" (L, R : SIGNED) return std_ulogic;
  function \?=\ (L, R : SIGNED) return std_ulogic;
  -- Result subtype: std_ulogic
  -- Result: terms compared per STD_LOGIC_1164 intent

  -- Id: M.2A
  function MATCH (L, R : UNSIGNED) return BOOLEAN;
  -- Result subtype: BOOLEAN
  -- Result: terms compared per STD_LOGIC_1164 intent

  -- Id: M.3A
  function MATCH (L, R : SIGNED) return BOOLEAN;
  -- Result subtype: BOOLEAN
  -- Result: terms compared per STD_LOGIC_1164 intent
  -----------------------------------------------------------------------------
  -- New/updated funcitons for VHDL-200X fast track
  -----------------------------------------------------------------------------
  -- add_carry procedures, to provide a carry in and a carry out
  procedure add_carry (
    L, R   : in  UNSIGNED;
    c_in   : in  STD_ULOGIC;
    result : out UNSIGNED;
    c_out  : out STD_ULOGIC);
  -- Result subtype: UNSIGNED(MAX(L'LENGTH, R'LENGTH)-1 downto 0).
  -- Procedure takes a carry in into the adder, and provides a carry out.

   procedure add_carry (
    L, R   : in  SIGNED;
    c_in   : in  STD_ULOGIC;
    result : out SIGNED;
    c_out  : out STD_ULOGIC);
  -- Result subtype: SIGNED(MAX(L'LENGTH, R'LENGTH)-1 downto 0).
  -- Procedure takes a carry in into the adder, and provides a carry out.

  -- Overloaded functions from "std_logic_1164"
  function To_X01 (s : UNSIGNED) return UNSIGNED;
  function To_X01 (s : SIGNED) return SIGNED;

  function To_X01Z (s : UNSIGNED) return UNSIGNED;
  function To_X01Z (s : SIGNED) return SIGNED;

  function To_UX01 (s : UNSIGNED) return UNSIGNED;
  function To_UX01 (s : SIGNED) return SIGNED;

  function Is_X (s : UNSIGNED) return BOOLEAN;
  function Is_X (s : SIGNED) return BOOLEAN;

  function "sla" (ARG : SIGNED; COUNT : INTEGER) return SIGNED;
  function "sla" (ARG : UNSIGNED; COUNT : INTEGER) return UNSIGNED;

  function "sra" (ARG : SIGNED; COUNT : INTEGER) return SIGNED;
  function "sra" (ARG : UNSIGNED; COUNT : INTEGER) return UNSIGNED;

  -- New conversion functions, these drop or add sign bits only
  function remove_sign (arg : SIGNED) return UNSIGNED;
  function add_sign (arg : UNSIGNED) return SIGNED;

  -- Returns the maximum (or minimum) of the two numbers provided.
  -- All types (both inputs and the output) must be the same.
  -- These override the implicit funcitons, using the local ">" operator
  function maximum (
    l, r : UNSIGNED)                    -- inputs
    return UNSIGNED;

  function maximum (
    l, r : SIGNED)                      -- inputs
    return SIGNED;

  function minimum (
    l, r : UNSIGNED)                    -- inputs
    return UNSIGNED;

  function minimum (
    l, r : SIGNED)                      -- inputs
    return SIGNED;

  -- Finds the first "Y" in the input string. Returns an integer index
  -- into that string.  If "Y" does not exist in the string, then the
  -- "find_lsb" returns arg'low -1, and "find_msb" returns -1
  function find_lsb (
    arg : UNSIGNED;                     -- vector argument
    y   : STD_ULOGIC)                   -- look for this bit
    return INTEGER;

  function find_lsb (
    arg : SIGNED;                       -- vector argument
    y   : STD_ULOGIC)                   -- look for this bit
    return INTEGER;

  function find_msb (
    arg : UNSIGNED;                     -- vector argument
    y   : STD_ULOGIC)                   -- look for this bit
    return INTEGER;

  function find_msb (
    arg : SIGNED;                       -- vector argument
    y   : STD_ULOGIC)                   -- look for this bit
    return INTEGER;

  -- L.15
  function "and" (L : STD_ULOGIC; R : UNSIGNED) return UNSIGNED;

-- L.16
  function "and" (L : UNSIGNED; R : STD_ULOGIC) return UNSIGNED;

-- L.17
  function "or" (L : STD_ULOGIC; R : UNSIGNED) return UNSIGNED;

-- L.18
  function "or" (L : UNSIGNED; R : STD_ULOGIC) return UNSIGNED;

-- L.19
  function "nand" (L : STD_ULOGIC; R : UNSIGNED) return UNSIGNED;

-- L.20
  function "nand" (L : UNSIGNED; R : STD_ULOGIC) return UNSIGNED;

-- L.21
  function "nor" (L : STD_ULOGIC; R : UNSIGNED) return UNSIGNED;

-- L.22
  function "nor" (L : UNSIGNED; R : STD_ULOGIC) return UNSIGNED;

-- L.23
  function "xor" (L : STD_ULOGIC; R : UNSIGNED) return UNSIGNED;

-- L.24
  function "xor" (L : UNSIGNED; R : STD_ULOGIC) return UNSIGNED;

-- L.25
  function "xnor" (L : STD_ULOGIC; R : UNSIGNED) return UNSIGNED;

-- L.26
  function "xnor" (L : UNSIGNED; R : STD_ULOGIC) return UNSIGNED;

-- L.27
  function "and" (L : STD_ULOGIC; R : SIGNED) return SIGNED;

-- L.28
  function "and" (L : SIGNED; R : STD_ULOGIC) return SIGNED;

-- L.29
  function "or" (L : STD_ULOGIC; R : SIGNED) return SIGNED;

-- L.30
  function "or" (L : SIGNED; R : STD_ULOGIC) return SIGNED;

-- L.31
  function "nand" (L : STD_ULOGIC; R : SIGNED) return SIGNED;

-- L.32
  function "nand" (L : SIGNED; R : STD_ULOGIC) return SIGNED;

-- L.33
  function "nor" (L : STD_ULOGIC; R : SIGNED) return SIGNED;

-- L.34
  function "nor" (L : SIGNED; R : STD_ULOGIC) return SIGNED;

-- L.35
  function "xor" (L : STD_ULOGIC; R : SIGNED) return SIGNED;

-- L.36
  function "xor" (L : SIGNED; R : STD_ULOGIC) return SIGNED;

-- L.37
  function "xnor" (L : STD_ULOGIC; R : SIGNED) return SIGNED;

-- L.38
  function "xnor" (L : SIGNED; R : STD_ULOGIC) return SIGNED;

  -- %%% remove 12 functions (old syntax)
  function and_reduce(arg : SIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of and'ing all of the bits of the vector.

  function nand_reduce(arg : SIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of nand'ing all of the bits of the vector.

  function or_reduce(arg : SIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of or'ing all of the bits of the vector.

  function nor_reduce(arg : SIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of nor'ing all of the bits of the vector.

  function xor_reduce(arg : SIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of xor'ing all of the bits of the vector.

  function xnor_reduce(arg : SIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of xnor'ing all of the bits of the vector.

  function and_reduce(arg : UNSIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of and'ing all of the bits of the vector.

  function nand_reduce(arg : UNSIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of nand'ing all of the bits of the vector.

  function or_reduce(arg : UNSIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of or'ing all of the bits of the vector.

  function nor_reduce(arg : UNSIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of nor'ing all of the bits of the vector.

  function xor_reduce(arg : UNSIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of xor'ing all of the bits of the vector.

  function xnor_reduce(arg : UNSIGNED) return STD_ULOGIC;
  -- Result subtype: STD_LOGIC.
  -- Result: Result of xnor'ing all of the bits of the vector.

  -- %%% Uncomment the following 12 functions (new syntax)
  -- function "and" ( arg  : SIGNED ) RETURN std_ulogic;
  -- function "nand" ( arg  : SIGNED ) RETURN std_ulogic;
  -- function "or" ( arg  : SIGNED ) RETURN std_ulogic;
  -- function "nor" ( arg  : SIGNED ) RETURN std_ulogic;
  -- function "xor" ( arg  : SIGNED ) RETURN std_ulogic;
  -- function "xnor" ( arg  : SIGNED ) RETURN std_ulogic;
  -- function "and" ( arg  : UNSIGNED ) RETURN std_ulogic;
  -- function "nand" ( arg  : UNSIGNED ) RETURN std_ulogic;
  -- function "or" ( arg  : UNSIGNED ) RETURN std_ulogic;
  -- function "nor" ( arg  : UNSIGNED ) RETURN std_ulogic;
  -- function "xor" ( arg  : UNSIGNED ) RETURN std_ulogic;
  -- function "xnor" ( arg  : UNSIGNED ) RETURN std_ulogic;

  -- rtl_synthesis off
  -------------------------------------------------------------------
  -- string functions
  -------------------------------------------------------------------
  function to_string (
    value     : in SIGNED;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING;

  function to_bstring (
    value     : in SIGNED;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return string;

  function to_hstring (
    value     : in SIGNED;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING;

  function to_ostring (
    value     : in SIGNED;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING;

  function to_string (
    value     : in UNSIGNED;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING;

  function to_bstring (
    value     : in UNSIGNED;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return string;

  function to_hstring (
    value     : in UNSIGNED;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING;

  function to_ostring (
    value     : in UNSIGNED;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING;

  -----------------------------------------------------------------------------
  -- Read and Write routines
  -----------------------------------------------------------------------------
  procedure WRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    SIGNED;           -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0);

  procedure READ(L     : inout LINE;
                 VALUE : out   SIGNED);

  procedure READ(L     : inout LINE;
                 VALUE : out   SIGNED;
                 GOOD  : out   BOOLEAN);

  procedure WRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    UNSIGNED;         -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0);

  procedure READ(L     : inout LINE;
                 VALUE : out   UNSIGNED);

  procedure READ(L     : inout LINE;
                 VALUE : out   UNSIGNED;
                 GOOD  : out   BOOLEAN);

--  alias bread is read [line, SIGNED, BOOLEAN] ;
--  alias bread is read [line, SIGNED] ;
--  alias bwrite is write [line, SIGNED, side, width];
--  alias bread is read [line, UNSIGNED, BOOLEAN] ;
--  alias bread is read [line, UNSIGNED] ;
--  alias bwrite is write [line, UNSIGNED, side, width];

  procedure BWRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    SIGNED;           -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0);

  procedure BREAD(L     : inout LINE;
                 VALUE : out   SIGNED);

  procedure BREAD(L     : inout LINE;
                 VALUE : out   SIGNED;
                 GOOD  : out   BOOLEAN);

  procedure BWRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    UNSIGNED;         -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0);

  procedure BREAD(L     : inout LINE;
                 VALUE : out   UNSIGNED);

  procedure BREAD(L     : inout LINE;
                 VALUE : out   UNSIGNED;
                 GOOD  : out   BOOLEAN);

  -- Hex and Octal read and write, originally from "std_logic_textio",
  -- these procedures have been modified to be more forgiving.
  procedure HWRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    SIGNED;           -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0);

  procedure HREAD(L     : inout LINE;
                  VALUE : out   SIGNED);

  procedure HREAD(L     : inout LINE;
                  VALUE : out   SIGNED;
                  GOOD  : out   BOOLEAN);

  procedure HWRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    UNSIGNED;         -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0);

  procedure HREAD(L     : inout LINE;
                  VALUE : out   UNSIGNED);

  procedure HREAD(L     : inout LINE;
                  VALUE : out   UNSIGNED;
                  GOOD  : out   BOOLEAN);
  procedure OWRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    SIGNED;           -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0);

  procedure OREAD(L     : inout LINE;
                  VALUE : out   SIGNED);

  procedure OREAD(L     : inout LINE;
                  VALUE : out   SIGNED;
                  GOOD  : out   BOOLEAN);

  procedure OWRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    UNSIGNED;         -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0);

  procedure OREAD(L     : inout LINE;
                  VALUE : out   UNSIGNED);

  procedure OREAD(L     : inout LINE;
                  VALUE : out   UNSIGNED;
                  GOOD  : out   BOOLEAN);

  -- rtl_synthesis on
end package numeric_std_additions;

package body numeric_std_additions is
  constant NAU : UNSIGNED(1 downto 0) := (others => '0');
  constant NAS : SIGNED(1 downto 0)   := (others => '0');
  function MAX (LEFT, RIGHT : INTEGER) return INTEGER is
  begin
    if LEFT > RIGHT then return LEFT;
    else return RIGHT;
    end if;
  end function MAX;

  -- Id: A.3R
  function "+"(L : UNSIGNED; R: STD_ULOGIC) return UNSIGNED is
    variable XR : UNSIGNED(L'LENGTH-1 downto 0) := (others => '0');
  begin
    XR(0) := R;
    return (L + XR);
  end function "+";

  -- Id: A.3L
  function "+"(L : STD_ULOGIC; R: UNSIGNED) return UNSIGNED is
    variable XL : UNSIGNED(R'LENGTH-1 downto 0) := (others => '0');
  begin
    XL(0) := L;
    return (XL + R);
  end function "+";

  -- Id: A.4R
  function "+"(L : SIGNED; R: STD_ULOGIC) return SIGNED is
    variable XR : SIGNED(L'LENGTH-1 downto 0) := (others => '0');
  begin
    XR(0) := R;
    return (L + XR);
  end function "+";

  -- Id: A.4L
  function "+"(L : STD_ULOGIC; R: SIGNED) return SIGNED is
    variable XL : SIGNED(R'LENGTH-1 downto 0) := (others => '0');
  begin
    XL(0) := L;
    return (XL + R);
  end function "+";

  -- Id: A.9R
  function "-"(L : UNSIGNED; R: STD_ULOGIC) return UNSIGNED is
    variable XR : UNSIGNED(L'LENGTH-1 downto 0) := (others => '0');
  begin
    XR(0) := R;
    return (L - XR);
  end function "-";

  -- Id: A.9L
  function "-"(L : STD_ULOGIC; R: UNSIGNED) return UNSIGNED is
    variable XL : UNSIGNED(R'LENGTH-1 downto 0) := (others => '0');
  begin
    XL(0) := L;
    return (XL - R);
  end function "-";

  -- Id: A.10R
  function "-"(L : SIGNED; R: STD_ULOGIC) return SIGNED is
    variable XR : SIGNED(L'LENGTH-1 downto 0) := (others => '0');
  begin
    XR(0) := R;
    return (L - XR);
  end function "-";

  -- Id: A.10L
  function "-"(L : STD_ULOGIC; R: SIGNED) return SIGNED is
    variable XL : SIGNED(R'LENGTH-1 downto 0) := (others => '0');
  begin
    XL(0) := L;
    return (XL - R);
  end function "-";

  function RESIZE (ARG, SIZE_RES : SIGNED) return SIGNED is
  begin
    if (SIZE_RES'length = 0) then
      return NAS;
    else
      return resize (ARG, SIZE_RES'length);
    end if;
  end function RESIZE;

  function RESIZE (ARG, SIZE_RES : UNSIGNED) return UNSIGNED is
  begin
    if (SIZE_RES'length = 0) then
      return NAU;
    else
      return resize (ARG, SIZE_RES'length);
    end if;
  end function RESIZE;

  function TO_UNSIGNED (ARG : NATURAL; SIZE_RES : UNSIGNED) return UNSIGNED is
  begin
    if (SIZE_RES'length = 0) then
      return NAU;
    else
      return TO_UNSIGNED (ARG, SIZE_RES'length);
    end if;
  end function TO_UNSIGNED;

  function TO_SIGNED (ARG : INTEGER; SIZE_RES : SIGNED) return SIGNED is
    begin
    if (SIZE_RES'length = 0) then
      return NAS;
    else
      return TO_SIGNED (ARG, SIZE_RES'length);
    end if;
  end function TO_SIGNED;

  function match (L, R: UNSIGNED) return boolean is
  begin                                 -- ?=
    return std_match(L, R);
  end function match;

  -- Id: M.3A
  function match (L, R: signed) return boolean is
  begin                                 -- ?=
    return std_match(L, R);
  end function match;

  TYPE stdlogic_table IS ARRAY(std_ulogic, std_ulogic) OF std_ulogic;
  CONSTANT match_logic_table : stdlogic_table := (
    -----------------------------------------------------
    -- U    X    0    1    Z    W    L    H    -         |   |
    -----------------------------------------------------
    ( 'U', 'U', 'U', 'U', 'U', 'U', 'U', 'U', '1' ),  -- | U |
    ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '1' ),  -- | X |
    ( 'U', 'X', '1', '0', 'X', 'X', '1', '0', '1' ),  -- | 0 |
    ( 'U', 'X', '0', '1', 'X', 'X', '0', '1', '1' ),  -- | 1 |
    ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '1' ),  -- | Z |
    ( 'U', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '1' ),  -- | W |
    ( 'U', 'X', '1', '0', 'X', 'X', '1', '0', '1' ),  -- | L |
    ( 'U', 'X', '0', '1', 'X', 'X', '0', '1', '1' ),  -- | H |
    ( '1', '1', '1', '1', '1', '1', '1', '1', '1' )   -- | - |
    );
  -- %%% FUNCTION "?=" ( l, r : std_ulogic ) RETURN std_ulogic IS
  FUNCTION \?=\ ( l, r : std_ulogic ) RETURN std_ulogic IS
    VARIABLE value : std_ulogic;
  BEGIN
    RETURN match_logic_table (l, r);
  END FUNCTION \?=\;

  -- Id: M.2B
  FUNCTION \?=\ ( l, r : unsigned ) RETURN std_ulogic IS
    ALIAS lv : UNSIGNED (1 TO l'LENGTH) IS l;
    ALIAS rv : UNSIGNED (1 TO r'LENGTH) IS r;
    variable result : STD_ULOGIC;  -- result
  BEGIN
    IF ((l'LENGTH < 1) OR (r'LENGTH < 1)) THEN
      REPORT "numeric_std.""?="": null detected, returning X"
        SEVERITY WARNING;
      RETURN 'X';
    END IF;
    IF lv'LENGTH /= rv'LENGTH THEN
      REPORT "numeric_std.""?="": L'LENGTH /= R'LENGTH, returning X"
        SEVERITY WARNING;
      RETURN 'X';
    ELSE
      result := '1';
      FOR i IN lv'LOW TO lv'HIGH LOOP
        result := result and match_logic_table(lv(i), rv(i));
      END LOOP;
      RETURN result;
    END IF;
  END FUNCTION \?=\;
  -- Id: M.3B
  function \?=\ (L, R: signed) return std_ulogic is
  begin                                 -- ?=
    return \?=\ (unsigned(L), unsigned(R));
  end function \?=\;

    -- Result subtype: UNSIGNED(MAX(L'LENGTH, R'LENGTH)-1 downto 0).
  -- Procedure takes a carry in into the adder, and provides a carry out.
  procedure add_carry (
    L, R   : in  UNSIGNED;
    c_in   : in  STD_ULOGIC;
    result : out UNSIGNED;
    c_out  : out STD_ULOGIC) is
    constant SIZE : NATURAL := MAX(L'LENGTH, R'LENGTH);
    variable L01  : UNSIGNED(SIZE downto 0);
    variable R01  : UNSIGNED(SIZE downto 0);
    variable res_big : UNSIGNED (SIZE downto 0);  -- one bit too bit
  begin
    c_out := 'X';                       -- default to X
    if ((L'LENGTH < 1) or (R'LENGTH < 1)) then
      result := NAU;
      return;
    end if;
    L01 := TO_01(RESIZE(L, SIZE+1), 'X');
    R01 := TO_01(RESIZE(R, SIZE+1), 'X');
    if (to_X01(c_in) = 'X')
      or (L01(L01'LEFT) = 'X') or (R01(R01'LEFT) = 'X') then
      result (SIZE-1 downto 0) := (others => 'X');
      return;
    end if;
    res_big := L01 + R01 + c_in;
    c_out := res_big(SIZE);
    result := res_big(SIZE-1 downto 0);
  end procedure add_carry;

  -- Result subtype: SIGNED(MAX(L'LENGTH, R'LENGTH)-1 downto 0).
  -- Procedure takes a carry in into the adder, and provides a carry out.
  procedure add_carry (
    L, R   : in  SIGNED;
    c_in   : in  STD_ULOGIC;
    result : out SIGNED;
    c_out  : out STD_ULOGIC) is
    constant SIZE : NATURAL := MAX(L'LENGTH, R'LENGTH);
    variable L01  : SIGNED(SIZE downto 0);
    variable R01  : SIGNED(SIZE downto 0);
    variable res_big : SIGNED (SIZE downto 0);
  begin
    c_out := 'X';                       -- default to X
    if ((L'LENGTH < 1) or (R'LENGTH < 1)) then
      result := NAS;
      return;
    end if;
    L01 := TO_01(RESIZE(L, SIZE+1), 'X');
    R01 := TO_01(RESIZE(R, SIZE+1), 'X');
    if (to_X01(c_in) = 'X')
      or (L01(L01'LEFT) = 'X') or (R01(R01'LEFT) = 'X') then
      result (SIZE-1 downto 0) := (others => 'X');
      return;
    end if;
    res_big := L01 + R01 + c_in;
    c_out := res_big(size) xor res_big(size-1);
    result := res_big(size-1 downto 0);
  end procedure add_carry;
  -- These functions are in std_logic_1164 and are defined for
  -- std_logic_vector.  They are overloaded here.
  FUNCTION To_X01 ( s : UNSIGNED ) RETURN UNSIGNED is
  BEGIN
    return UNSIGNED (To_X01 (std_logic_vector (s)));
  end function To_X01;

  FUNCTION To_X01 ( s : SIGNED ) RETURN SIGNED is
  BEGIN
    return SIGNED (To_X01 (std_logic_vector (s)));
  end function To_X01;

  FUNCTION To_X01Z ( s : UNSIGNED ) RETURN UNSIGNED is
  BEGIN
    return UNSIGNED (To_X01Z (std_logic_vector (s)));
  end function To_X01Z;

  FUNCTION To_X01Z ( s : SIGNED ) RETURN SIGNED is
  BEGIN
    return SIGNED (To_X01Z (std_logic_vector (s)));
  end function To_X01Z;

  FUNCTION To_UX01 ( s : UNSIGNED ) RETURN UNSIGNED is
  BEGIN
    return UNSIGNED (To_UX01 (std_logic_vector (s)));
  end function To_UX01;

  FUNCTION To_UX01 ( s : SIGNED ) RETURN SIGNED is
  BEGIN
    return SIGNED (To_UX01 (std_logic_vector (s)));
  end function To_UX01;

  FUNCTION Is_X ( s : UNSIGNED ) RETURN BOOLEAN is
  BEGIN
    return Is_X (std_logic_vector (s));
  end function Is_X;

  FUNCTION Is_X ( s : SIGNED ) RETURN BOOLEAN is
  BEGIN
    return Is_X (std_logic_vector (s));
  end function Is_X;

  -- Arithmetic shifts
  -- Functionality NOT the same as the std_logic_vector or bit vector version
  function "sla" (ARG : SIGNED; COUNT : INTEGER) RETURN SIGNED is
  begin
    if (COUNT >= 0) then
      return SHIFT_LEFT(ARG, COUNT);
    else
      return SHIFT_RIGHT(ARG, -COUNT);
    end if;
  end function "sla";

  -- Functionality NOT the same as the std_logic_vector or bit vector version
  function "sla" (ARG : UNSIGNED; COUNT : INTEGER) RETURN UNSIGNED is
  begin
    if (COUNT >= 0) then
      return SHIFT_LEFT(ARG, COUNT);
    else
      return SHIFT_RIGHT(ARG, -COUNT);
    end if;
  end function "sla";

  -- Functionality NOT the same as the std_logic_vector or bit vector version
  function "sra" (ARG : SIGNED; COUNT : INTEGER) RETURN SIGNED is
  begin
    if (COUNT >= 0) then
      return SHIFT_RIGHT(ARG, COUNT);
    else
      return SHIFT_LEFT(ARG, -COUNT);
    end if;
  end function "sra";

  -- Functionality NOT the same as the std_logic_vector or bit vector version
  function "sra" (ARG : UNSIGNED; COUNT : INTEGER) RETURN UNSIGNED is
  begin
    if (COUNT >= 0) then
      return SHIFT_RIGHT(ARG, COUNT);
    else
      return SHIFT_LEFT(ARG, -COUNT);
    end if;
  end function "sra";

  -----------------------------------------------------------------------------
  -- New/updated functions for VHDL-200X fast track
  -----------------------------------------------------------------------------
  -- New conversion functions, these drop or add sign bits only
  function remove_sign (arg : SIGNED) return UNSIGNED is
    variable result : unsigned (arg'length-1 downto 0);
    alias XARG        : SIGNED(arg'length-1 downto 0) is ARG;
    variable yarg : SIGNED (XARG'range);
  begin
    if arg'length < 1 then
      return NAU;
    end if;
    if (to_x01(XARG(XARG'high)) = '1') then
      yarg := abs (xarg);
    else
      yarg := to_x01(xarg);
    end if;
    result := unsigned(yarg);
    return result;
  end function remove_sign;

  function add_sign (arg : UNSIGNED) return SIGNED is
    variable result : signed (arg'length downto 0);
    alias XARG        : UNSIGNED(arg'length-1 downto 0) is ARG;
  begin
    if arg'length < 1 then
      return NAS;
    end if;
    result := "0" & SIGNED (to_x01(XARG));
    return result;
  end function add_sign;

  -- Returns the maximum (or minimum) of the two numbers provided.
  -- All types (both inputs and the output) must be the same.
  -- These override the implicit functions, using the local ">" operator
  -- UNSIGNED output
  function maximum (
    l, r : UNSIGNED)                    -- inputs
    return UNSIGNED is
  begin  -- function max
    if l > r then return l;
    else return r;
    end if;
  end function maximum;

  -- signed output
  function maximum (
    l, r : signed)                      -- inputs
    return signed is
  begin  -- function max
    if l > r then return l;
    else return r;
    end if;
  end function maximum;

  -- UNSIGNED output
  function minimum (
    l, r : UNSIGNED)                    -- inputs
    return UNSIGNED is
  begin  -- function minimum
    if l < r then return l;
    else return r;
    end if;
  end function minimum;

  -- signed output
  function minimum (
    l, r : signed)                      -- inputs
    return signed is
  begin  -- function minimum
    if l < r then return l;
    else return r;
    end if;
  end function minimum;

  function find_lsb (
    arg : UNSIGNED;                         -- vector argument
    y   : std_ulogic)                       -- look for this bit
    return integer is
    alias xarg : UNSIGNED(arg'length-1 downto 0) is arg;
  begin
    for_loop: for i in xarg'reverse_range loop
      if xarg(i) = y then
        return i;
      end if;
    end loop;
    return -1;
  end function find_lsb;

  function find_lsb (
    arg : signed;                           -- vector argument
    y   : std_ulogic)                       -- look for this bit
    return integer is
    alias xarg : SIGNED(arg'length-1 downto 0) is arg;
  begin
    for_loop: for i in xarg'reverse_range loop
      if xarg(i) = y then
        return i;
      end if;
    end loop;
    return -1;
  end function find_lsb;

  function find_msb (
    arg : UNSIGNED;                        -- vector argument
    y   : std_ulogic)                      -- look for this bit
    return integer is
    alias xarg : UNSIGNED(arg'length-1 downto 0) is arg;
  begin
    for_loop: for i in xarg'range loop
      if xarg(i) = y then
        return i;
      end if;
    end loop;
    return -1;
  end function find_msb;

  function find_msb (
    arg : signed;                          -- vector argument
    y   : std_ulogic)                      -- look for this bit
    return integer is
    alias xarg : SIGNED(arg'length-1 downto 0) is arg;
  begin
    for_loop: for i in xarg'range loop
      if xarg(i) = y then
        return i;
      end if;
    end loop;
    return -1;
  end function find_msb;

  -- Performs the boolean operation on every bit in the vector
-- L.15
  function "and" (L: STD_ULOGIC; R: UNSIGNED) return UNSIGNED is
    ALIAS rv        : UNSIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : UNSIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "and" (l, rv(i));
    END LOOP;
    RETURN result;
  end function "and";

-- L.16
  function "and" (L: UNSIGNED; R: STD_ULOGIC) return UNSIGNED is
    ALIAS lv        : UNSIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : UNSIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "and" (lv(i), r);
    END LOOP;
    RETURN result;
  end function "and";

-- L.17
  function "or" (L: STD_ULOGIC; R: UNSIGNED) return UNSIGNED is
    ALIAS rv        : UNSIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : UNSIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "or" (l, rv(i));
    END LOOP;
    RETURN result;
  end function "or";

-- L.18
  function "or" (L: UNSIGNED; R: STD_ULOGIC) return UNSIGNED is
    ALIAS lv        : UNSIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : UNSIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "or" (lv(i), r);
    END LOOP;
    RETURN result;
  end function "or";

-- L.19
  function "nand" (L: STD_ULOGIC; R: UNSIGNED) return UNSIGNED is
    ALIAS rv        : UNSIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : UNSIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("and" (l, rv(i)));
    END LOOP;
    RETURN result;
  end function "nand";

-- L.20
  function "nand" (L: UNSIGNED; R: STD_ULOGIC) return UNSIGNED is
    ALIAS lv        : UNSIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : UNSIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("and" (lv(i), r));
    END LOOP;
    RETURN result;
  end function "nand";

-- L.21
  function "nor" (L: STD_ULOGIC; R: UNSIGNED) return UNSIGNED is
    ALIAS rv        : UNSIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : UNSIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("or" (l, rv(i)));
    END LOOP;
    RETURN result;
  end function "nor";

-- L.22
  function "nor" (L: UNSIGNED; R: STD_ULOGIC) return UNSIGNED is
    ALIAS lv        : UNSIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : UNSIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("or" (lv(i), r));
    END LOOP;
    RETURN result;
  end function "nor";

-- L.23
  function "xor" (L: STD_ULOGIC; R: UNSIGNED) return UNSIGNED is
    ALIAS rv        : UNSIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : UNSIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "xor" (l, rv(i));
    END LOOP;
    RETURN result;
  end function "xor";

-- L.24
  function "xor" (L: UNSIGNED; R: STD_ULOGIC) return UNSIGNED is
    ALIAS lv        : UNSIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : UNSIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "xor" (lv(i), r);
    END LOOP;
    RETURN result;
  end function "xor";

-- L.25
  function "xnor" (L: STD_ULOGIC; R: UNSIGNED) return UNSIGNED is
    ALIAS rv        : UNSIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : UNSIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("xor" (l, rv(i)));
    END LOOP;
    RETURN result;
  end function "xnor";

-- L.26
  function "xnor" (L: UNSIGNED; R: STD_ULOGIC) return UNSIGNED is
    ALIAS lv        : UNSIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : UNSIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("xor" (lv(i), r));
    END LOOP;
    RETURN result;
  end function "xnor";

-- L.27
  function "and" (L: STD_ULOGIC; R: SIGNED) return SIGNED is
    ALIAS rv        : SIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : SIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "and" (l, rv(i));
    END LOOP;
    RETURN result;
  end function "and";

-- L.28
  function "and" (L: SIGNED; R: STD_ULOGIC) return SIGNED is
    ALIAS lv        : SIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : SIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "and" (lv(i), r);
    END LOOP;
    RETURN result;
  end function "and";

-- L.29
  function "or" (L: STD_ULOGIC; R: SIGNED) return SIGNED is
    ALIAS rv        : SIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : SIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "or" (l, rv(i));
    END LOOP;
    RETURN result;
  end function "or";

-- L.30
  function "or" (L: SIGNED; R: STD_ULOGIC) return SIGNED is
    ALIAS lv        : SIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : SIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "or" (lv(i), r);
    END LOOP;
    RETURN result;
  end function "or";

-- L.31
  function "nand" (L: STD_ULOGIC; R: SIGNED) return SIGNED is
    ALIAS rv        : SIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : SIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("and" (l, rv(i)));
    END LOOP;
    RETURN result;
  end function "nand";

-- L.32
  function "nand" (L: SIGNED; R: STD_ULOGIC) return SIGNED is
    ALIAS lv        : SIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : SIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("and" (lv(i), r));
    END LOOP;
    RETURN result;
  end function "nand";

-- L.33
  function "nor" (L: STD_ULOGIC; R: SIGNED) return SIGNED is
    ALIAS rv        : SIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : SIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("or" (l, rv(i)));
    END LOOP;
    RETURN result;
  end function "nor";

-- L.34
  function "nor" (L: SIGNED; R: STD_ULOGIC) return SIGNED is
    ALIAS lv        : SIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : SIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("or" (lv(i), r));
    END LOOP;
    RETURN result;
  end function "nor";

-- L.35
  function "xor" (L: STD_ULOGIC; R: SIGNED) return SIGNED is
    ALIAS rv        : SIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : SIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "xor" (l, rv(i));
    END LOOP;
    RETURN result;
  end function "xor";

-- L.36
  function "xor" (L: SIGNED; R: STD_ULOGIC) return SIGNED is
    ALIAS lv        : SIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : SIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "xor" (lv(i), r);
    END LOOP;
    RETURN result;
  end function "xor";

-- L.37
  function "xnor" (L: STD_ULOGIC; R: SIGNED) return SIGNED is
    ALIAS rv        : SIGNED ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : SIGNED ( 1 TO r'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("xor" (l, rv(i)));
    END LOOP;
    RETURN result;
  end function "xnor";

-- L.38
  function "xnor" (L: SIGNED; R: STD_ULOGIC) return SIGNED is
    ALIAS lv        : SIGNED ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : SIGNED ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := "not"("xor" (lv(i), r));
    END LOOP;
    RETURN result;
  end function "xnor";

  --------------------------------------------------------------------------
  -- Reduction operations
  --------------------------------------------------------------------------
  -- %%% Remove the following 12 funcitons (old syntax)
  function and_reduce (arg : SIGNED ) return std_ulogic is
  begin
    return and_reduce (UNSIGNED ( arg ));
  end function and_reduce;

  FUNCTION and_reduce ( arg : UNSIGNED ) RETURN std_ulogic IS
    variable Upper, Lower : std_ulogic;
    variable Half : integer;
    variable BUS_int : UNSIGNED ( arg'length - 1 downto 0 );
    variable Result : std_ulogic := '1';    -- In the case of a NULL range
  BEGIN
    if (arg'LENGTH >= 1) then
      BUS_int := to_ux01 (arg);
      if ( BUS_int'length = 1 ) then
        Result := BUS_int ( BUS_int'left );
      elsif ( BUS_int'length = 2 ) then
        Result := "and" (BUS_int(BUS_int'right),BUS_int(BUS_int'left));
      else
        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
        Upper := and_reduce ( BUS_int ( BUS_int'left downto Half ));
        Lower := and_reduce ( BUS_int ( Half - 1 downto BUS_int'right ));
        Result := "and" (Upper, Lower);
      end if;
    end if;
    return Result;
  END FUNCTION and_reduce;

  function nand_reduce (arg : SIGNED ) return std_ulogic is
  begin
    return "not" (and_reduce ( arg ));
  end function nand_reduce;

  function nand_reduce (arg : UNSIGNED ) return std_ulogic is
  begin
    return "not" (and_reduce (arg ));
  end function nand_reduce;

  function or_reduce (arg : SIGNED ) return std_ulogic is
  begin
    return or_reduce (UNSIGNED ( arg ));
  end function or_reduce;

  function or_reduce (arg : UNSIGNED ) return std_ulogic is
    variable Upper, Lower : std_ulogic;
    variable Half : integer;
    variable BUS_int : UNSIGNED ( arg'length - 1 downto 0 );
    variable Result : std_ulogic := '0';    -- In the case of a NULL range
  BEGIN
    if (arg'LENGTH >= 1) then
      BUS_int := to_ux01 (arg);
      if ( BUS_int'length = 1 ) then
        Result := BUS_int ( BUS_int'left );
      elsif ( BUS_int'length = 2 ) then
        Result := "or" (BUS_int(BUS_int'right), BUS_int(BUS_int'left));
      else
        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
        Upper := or_reduce ( BUS_int ( BUS_int'left downto Half ));
        Lower := or_reduce ( BUS_int ( Half - 1 downto BUS_int'right ));
        Result := "or" (Upper, Lower);
      end if;
    end if;
    return Result;
  end function or_reduce;

  function nor_reduce (arg : SIGNED ) return std_ulogic is
  begin
    RETURN "not"(or_reduce(arg));
  end function nor_reduce;

  function nor_reduce (arg : UNSIGNED ) return std_ulogic is
  begin
    RETURN "not"(or_reduce(arg));
  end function nor_reduce;

  function xor_reduce (arg : SIGNED ) return std_ulogic is
  begin
    return xor_reduce (UNSIGNED ( arg ));
  end function xor_reduce;

  function xor_reduce (arg : UNSIGNED ) return std_ulogic is
    variable Upper, Lower : std_ulogic;
    variable Half : integer;
    variable BUS_int : UNSIGNED ( arg'length - 1 downto 0 );
    variable Result : std_ulogic := '0';    -- In the case of a NULL range
  BEGIN
    if (arg'LENGTH >= 1) then
      BUS_int := to_ux01 (arg);
      if ( BUS_int'length = 1 ) then
        Result := BUS_int ( BUS_int'left );
      elsif ( BUS_int'length = 2 ) then
        Result := "xor" (BUS_int(BUS_int'right), BUS_int(BUS_int'left));
      else
        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
        Upper := xor_reduce ( BUS_int ( BUS_int'left downto Half ));
        Lower := xor_reduce ( BUS_int ( Half - 1 downto BUS_int'right ));
        Result := "xor" (Upper, Lower);
      end if;
    end if;
    return Result;
  end function xor_reduce;

  function xnor_reduce (arg : SIGNED ) return std_ulogic is
  begin
    RETURN "not"(xor_reduce(arg));
  end function xnor_reduce;

  function xnor_reduce (arg : UNSIGNED ) return std_ulogic is
  begin
    RETURN "not"(xor_reduce(arg));
  end function xnor_reduce;

  -- %%% Replace the above with the following 12 functions (New syntax)
--  function "and" ( arg  : SIGNED ) return std_ulogic is
--  begin
--    return and (std_logic_vector ( arg ));
--  end function "and";

--  function "and" ( arg  : UNSIGNED ) return std_ulogic is
--  begin
--    return and (std_logic_vector ( arg ));
--  end function "and";

--  function "nand" ( arg  : SIGNED ) return std_ulogic is
--  begin
--    return nand (std_logic_vector ( arg ));
--  end function "nand";

--  function "nand" ( arg  : UNSIGNED ) return std_ulogic is
--  begin
--    return nand (std_logic_vector ( arg ));
--  end function "nand";

--  function "or" ( arg  : SIGNED ) return std_ulogic is
--  begin
--    return or (std_logic_vector ( arg ));
--  end function "or";

--  function "or" ( arg  : UNSIGNED ) return std_ulogic is
--  begin
--    return or (std_logic_vector ( arg ));
--  end function "or";

--  function "nor" ( arg  : SIGNED ) return std_ulogic is
--  begin
--    return nor (std_logic_vector ( arg ));
--  end function "nor";

--  function "nor" ( arg  : UNSIGNED ) return std_ulogic is
--  begin
--    return nor (std_logic_vector ( arg ));
--  end function "nor";

--  function "xor" ( arg  : SIGNED ) return std_ulogic is
--  begin
--    return xor (std_logic_vector ( arg ));
--  end function "xor";

--  function "xor" ( arg  : UNSIGNED ) return std_ulogic is
--  begin
--    return xor (std_logic_vector ( arg ));
--  end function "xor";

--  function "xnor" ( arg  : SIGNED ) return std_ulogic is
--  begin
--    return xnor (std_logic_vector ( arg ));
--  end function "xnor";

--  function "xnor" ( arg  : UNSIGNED ) return std_ulogic is
--  begin
--    return xnor (std_logic_vector ( arg ));
--  end function "xnor";

  -- rtl_synthesis off
  -------------------------------------------------------------------
  -- TO_STRING
  -------------------------------------------------------------------
  -- Type and constant definitions used to map STD_ULOGIC values
  -- into/from character values.
  type     MVL9plus is ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-', ERROR);
  type     char_indexed_by_MVL9 is array (STD_ULOGIC) of character;
  type     MVL9_indexed_by_char is array (character) of STD_ULOGIC;
  type     MVL9plus_indexed_by_char is array (character) of MVL9plus;
  constant MVL9_to_char : char_indexed_by_MVL9 := "UX01ZWLH-";
  constant char_to_MVL9 : MVL9_indexed_by_char :=
    ('U' => 'U', 'X' => 'X', '0' => '0', '1' => '1', 'Z' => 'Z',
     'W' => 'W', 'L' => 'L', 'H' => 'H', '-' => '-', others => 'U');
  constant char_to_MVL9plus : MVL9plus_indexed_by_char :=
    ('U' => 'U', 'X' => 'X', '0' => '0', '1' => '1', 'Z' => 'Z',
     'W' => 'W', 'L' => 'L', 'H' => 'H', '-' => '-', others => ERROR);

  constant NBSP : character := character'val(160);  -- space character
  constant NUS : string(2 downto 1)   := (others => ' ');  -- NULL array

  function justify (
    value     : STRING;
    justified : SIDE  := right;
    field     : width := 0)
    return STRING is
    constant VAL_LEN : INTEGER             := value'length;
    variable result  : STRING (1 to field) := (others => ' ');
  begin  -- function justify
    -- return value if field is too small
    if VAL_LEN >= field then
      return value;
    end if;
    if justified = left then
      result(1 to VAL_LEN) := value;
    elsif justified = right then
      result(field - VAL_LEN + 1 to field) := value;
    end if;
    return result;
  end function justify;

  function to_string (
    value     : in signed;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return string is
    alias ivalue    : signed(1 to value'length) is value;
    variable result : string(1 to value'length);
  begin
    if value'length < 1 then
      return NUS;
    else
      for i in ivalue'range loop
        result(i) := MVL9_to_char( iValue(i) );
      end loop;
      return justify(result, justified, field);
    end if;
  end function to_string;

  function to_bstring (
    value     : in SIGNED;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return STRING is
  begin
    return to_string (value, justified, field);
  end function to_bstring;

  function to_hstring (
    value     : in signed;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return string is
    constant ne     : integer  := (value'length+3)/4;
    variable pad    : std_logic_vector(0 to (ne*4 - value'length) - 1);
    variable ivalue : std_logic_vector(0 to ne*4 - 1);
    variable result : string(1 to ne);
    variable quad   : std_logic_vector(0 to 3);
  begin
    if value'length < 1 then
      return NUS;
    else
      if value (value'left) = 'Z' then
        pad := (others => 'Z');
      else
        pad := (others => value(value'high));  -- Extend sign bit
      end if;
      ivalue := pad & std_logic_vector (value);
      for i in 0 to ne-1 loop
        quad := To_X01Z(ivalue(4*i to 4*i+3));
        case quad is
          when x"0"   => result(i+1) := '0';
          when x"1"   => result(i+1) := '1';
          when x"2"   => result(i+1) := '2';
          when x"3"   => result(i+1) := '3';
          when x"4"   => result(i+1) := '4';
          when x"5"   => result(i+1) := '5';
          when x"6"   => result(i+1) := '6';
          when x"7"   => result(i+1) := '7';
          when x"8"   => result(i+1) := '8';
          when x"9"   => result(i+1) := '9';
          when x"A"   => result(i+1) := 'A';
          when x"B"   => result(i+1) := 'B';
          when x"C"   => result(i+1) := 'C';
          when x"D"   => result(i+1) := 'D';
          when x"E"   => result(i+1) := 'E';
          when x"F"   => result(i+1) := 'F';
          when "ZZZZ" => result(i+1) := 'Z';
          when others => result(i+1) := 'X';
        end case;
      end loop;
      return justify(result, justified, field);
    end if;
  end function to_hstring;

  function to_ostring (
    value     : in signed;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return string is
    constant ne     : integer := (value'length+2)/3;
    variable pad    : std_logic_vector(0 to (ne*3 - value'length) - 1);
    variable ivalue : std_logic_vector(0 to ne*3 - 1);
    variable result : string(1 to ne);
    variable tri    : std_logic_vector(0 to 2);
  begin
    if value'length < 1 then
      return NUS;
    else
      if value (value'left) = 'Z' then
        pad := (others => 'Z');
      else
        pad := (others => value (value'high));  -- Extend sign bit
      end if;
      ivalue := pad & std_logic_vector (value);
      for i in 0 to ne-1 loop
        tri := To_X01Z(ivalue(3*i to 3*i+2));
        case tri is
          when o"0"   => result(i+1) := '0';
          when o"1"   => result(i+1) := '1';
          when o"2"   => result(i+1) := '2';
          when o"3"   => result(i+1) := '3';
          when o"4"   => result(i+1) := '4';
          when o"5"   => result(i+1) := '5';
          when o"6"   => result(i+1) := '6';
          when o"7"   => result(i+1) := '7';
          when "ZZZ"  => result(i+1) := 'Z';
          when others => result(i+1) := 'X';
        end case;
      end loop;
      return justify(result, justified, field);
    end if;
  end function to_ostring;

  function to_string (
    value     : in UNSIGNED;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return string is
  begin
    return to_string(
      value     => SIGNED (value),
      justified => justified,
      field     => field);
  end function to_string;

  function to_bstring (
    value     : in UNSIGNED;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return STRING is
  begin
    return to_string (value, justified, field);
  end function to_bstring;

  function to_hstring (
    value     : in UNSIGNED;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return string is
    constant ne     : integer  := (value'length+3)/4;
    variable pad    : std_logic_vector(0 to (ne*4 - value'length) - 1);
    variable ivalue : std_logic_vector(0 to ne*4 - 1);
    variable result : string(1 to ne);
    variable quad   : std_logic_vector(0 to 3);
  begin
    if value'length < 1 then
      return NUS;
    else
      if value (value'left) = 'Z' then
        pad := (others => 'Z');
      else
        pad := (others => '0');
      end if;
      ivalue := pad & std_logic_vector (value);
      for i in 0 to ne-1 loop
        quad := To_X01Z(ivalue(4*i to 4*i+3));
        case quad is
          when x"0"   => result(i+1) := '0';
          when x"1"   => result(i+1) := '1';
          when x"2"   => result(i+1) := '2';
          when x"3"   => result(i+1) := '3';
          when x"4"   => result(i+1) := '4';
          when x"5"   => result(i+1) := '5';
          when x"6"   => result(i+1) := '6';
          when x"7"   => result(i+1) := '7';
          when x"8"   => result(i+1) := '8';
          when x"9"   => result(i+1) := '9';
          when x"A"   => result(i+1) := 'A';
          when x"B"   => result(i+1) := 'B';
          when x"C"   => result(i+1) := 'C';
          when x"D"   => result(i+1) := 'D';
          when x"E"   => result(i+1) := 'E';
          when x"F"   => result(i+1) := 'F';
          when "ZZZZ" => result(i+1) := 'Z';
          when others => result(i+1) := 'X';
        end case;
      end loop;
      return justify(result, justified, field);
    end if;
  end function to_hstring;

  function to_ostring (
    value     : in UNSIGNED;
    justified : in side  := RIGHT;
    field     : in width := 0
    ) return string is
    constant ne     : integer := (value'length+2)/3;
    variable pad    : std_logic_vector(0 to (ne*3 - value'length) - 1);
    variable ivalue : std_logic_vector(0 to ne*3 - 1);
    variable result : string(1 to ne);
    variable tri    : std_logic_vector(0 to 2);
  begin
    if value'length < 1 then
      return NUS;
    else
      if value (value'left) = 'Z' then
        pad := (others => 'Z');
      else
        pad := (others => '0');
      end if;
      ivalue := pad & std_logic_vector (value);
      for i in 0 to ne-1 loop
        tri := To_X01Z(ivalue(3*i to 3*i+2));
        case tri is
          when o"0"   => result(i+1) := '0';
          when o"1"   => result(i+1) := '1';
          when o"2"   => result(i+1) := '2';
          when o"3"   => result(i+1) := '3';
          when o"4"   => result(i+1) := '4';
          when o"5"   => result(i+1) := '5';
          when o"6"   => result(i+1) := '6';
          when o"7"   => result(i+1) := '7';
          when "ZZZ"  => result(i+1) := 'Z';
          when others => result(i+1) := 'X';
        end case;
      end loop;
      return justify(result, justified, field);
    end if;
  end function to_ostring;

  -----------------------------------------------------------------------------
  -- Read and Write routines
  -----------------------------------------------------------------------------
  procedure WRITE (
    L         : inout line;             -- input line
    VALUE     : in    signed;           -- fixed point input
    JUSTIFIED : in    SIDE  := RIGHT;
    FIELD     : in    WIDTH := 0) is
    variable s : string(1 to value'length);
    variable m : signed(1 to value'length) := value;
  begin
    for i in 1 to value'length loop
      s(i) := MVL9_to_char(m(i));
    end loop;
    write(l, s, justified, field);
  end procedure WRITE;

  procedure READ(L     : inout LINE;
                 VALUE : out   signed) is
    variable m    : STD_ULOGIC;
    variable c    : character;
    variable readOk : BOOLEAN;
    variable s    : string(1 to value'length-1);
    variable mv   : STD_LOGIC_VECTOR(0 to value'length-1);
  begin
    VALUE (VALUE'range) := (others => 'U');
    loop                                -- skip white space
      read(l, c, readOk);
      exit when ((readOk = false) or ((c /= ' ') and (c /= CR) and (c /= HT)));
    end loop;
    if readOk = false then            -- Bail out if there was a bad read
      report "STD_LOGIC_1164.READ(STD_ULOGIC_VECTOR) "
        & "Error end of string encountered"
        severity error;
      return;
    elsif char_to_MVL9plus(c) = ERROR then
      report
        "STD_LOGIC_1164.READ(STD_ULOGIC_VECTOR) Error: Character '" &
        c & "' read, expected STD_ULOGIC literal."
        severity error;
      return;
    end if;
    read(l, s, readOk);
    if readOk then
    for i in 1 to value'length-1 loop
      if char_to_MVL9plus(s(i)) = ERROR then
        report
          "STD_LOGIC_1164.READ(STD_ULOGIC_VECTOR) Error: Character '" &
          s(i) & "' read, expected STD_ULOGIC literal."
          severity error;
        return;
      end if;
    end loop;
   else
      report "STD_LOGIC_1164.READ(STD_ULOGIC_VECTOR) "
        & "Error end of string encountered"
        severity error;
      return;
    end if;
    mv(0) := char_to_MVL9(c);
    for i in 1 to value'length-1 loop
      mv(i) := char_to_MVL9(s(i));
    end loop;
    value := signed(mv);
  end procedure READ;

  procedure READ(L     : inout LINE;
                 VALUE : out   signed;
                 GOOD  : out   BOOLEAN) is
    variable m    : STD_ULOGIC;
    variable c    : character;
    variable s    : string(1 to value'length-1);
    variable mv   : STD_LOGIC_VECTOR(0 to value'length-1);
    variable readOk : BOOLEAN;
  begin
    VALUE (VALUE'range) := (others => 'U');
    loop                                -- skip white space
      read(l, c, readOk);
      exit when (readOk = FALSE) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not readOk then
      good := FALSE;
      return;
    end if;
    if char_to_MVL9plus(c) = ERROR then
      good  := FALSE;
      return;
    end if;
    read(l, s, readOk);
    -- Bail out if there was a bad read
    if not readOk then
      good := FALSE;
      return;
    end if;
    for i in 1 to value'length-1 loop
      if char_to_MVL9plus(s(i)) = ERROR then
        good  := FALSE;
        return;
      end if;
    end loop;
    mv(0) := char_to_MVL9(c);
    for i in 1 to value'length-1 loop
      mv(i) := char_to_MVL9(s(i));
    end loop;
    value := signed(mv);
    good  := TRUE;
  end procedure READ;

  procedure WRITE (
    L         : inout line;             -- input line
    VALUE     : in    UNSIGNED;         -- fixed point input
    JUSTIFIED : in    SIDE  := RIGHT;
    FIELD     : in    WIDTH := 0) is
    variable s : string(1 to value'length);
    variable m : UNSIGNED(1 to value'length) := value;
  begin
    for i in 1 to value'length loop
      s(i) := MVL9_to_char(m(i));
    end loop;
    write(l, s, justified, field);
  end procedure WRITE;

  procedure READ(L     : inout LINE;
                 VALUE : out   UNSIGNED) is
    variable m    : STD_LOGIC;
    variable c    : character;
    variable readOk : BOOLEAN;
    variable s    : string(1 to value'length-1);
    variable mv   : STD_LOGIC_VECTOR(0 to value'length-1);
  begin
    VALUE (VALUE'range) := (others => 'U');
    loop                                -- skip white space
      read(l, c, readOk);
      exit when ((readOk = false) or ((c /= ' ') and (c /= CR) and (c /= HT)));
    end loop;
    if readOk = false then            -- Bail out if there was a bad read
      report "STD_LOGIC_1164.READ(STD_ULOGIC_VECTOR) "
        & "Error end of string encountered"
        severity error;
      return;
    elsif char_to_MVL9plus(c) = ERROR then
      report
        "STD_LOGIC_1164.READ(STD_ULOGIC_VECTOR) Error: Character '" &
        c & "' read, expected STD_ULOGIC literal."
        severity error;
      return;
    end if;
    read(l, s, readOk);
    if readOk then
    for i in 1 to value'length-1 loop
      if char_to_MVL9plus(s(i)) = ERROR then
        report
          "STD_LOGIC_1164.READ(STD_ULOGIC_VECTOR) Error: Character '" &
          s(i) & "' read, expected STD_ULOGIC literal."
          severity error;
        return;
      end if;
    end loop;
   else
      report "STD_LOGIC_1164.READ(STD_ULOGIC_VECTOR) "
        & "Error end of string encountered"
        severity error;
      return;
    end if;
    mv(0) := char_to_MVL9(c);
    for i in 1 to value'length-1 loop
      mv(i) := char_to_MVL9(s(i));
    end loop;
    value := UNSIGNED(mv);
  end procedure READ;

  procedure READ(L     : inout LINE;
                 VALUE : out   UNSIGNED;
                 GOOD  : out   BOOLEAN) is
    variable m    : STD_LOGIC;
    variable c    : character;
    variable s    : string(1 to value'length-1);
    variable mv   : STD_LOGIC_VECTOR(0 to value'length-1);
    variable readOk : BOOLEAN;
  begin
    VALUE (VALUE'range) := (others => 'U');
    loop                                -- skip white space
      read(l, c, readOk);
      exit when (readOk = FALSE) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not readOk then
      good := FALSE;
      return;
    end if;
    if char_to_MVL9plus(c) = ERROR then
      good  := FALSE;
      return;
    end if;
    read(l, s, readOk);
    -- Bail out if there was a bad read
    if not readOk then
      good := FALSE;
      return;
    end if;
    for i in 1 to value'length-1 loop
      if char_to_MVL9plus(s(i)) = ERROR then
        good  := FALSE;
        return;
      end if;
    end loop;
    mv(0) := char_to_MVL9(c);
    for i in 1 to value'length-1 loop
      mv(i) := char_to_MVL9(s(i));
    end loop;
    value := UNSIGNED(mv);
    good  := TRUE;
  end procedure READ;

  procedure BWRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    SIGNED;           -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0) is
  begin
    WRITE (L, VALUE, JUSTIFIED, FIELD);
  end procedure BWRITE;

  procedure BREAD(L     : inout LINE;
                 VALUE : out   SIGNED) is
  begin
    READ (L, VALUE);
  end procedure BREAD;

  procedure BREAD(L     : inout LINE;
                 VALUE : out   SIGNED;
                 GOOD  : out   BOOLEAN) is
  begin
    READ (L, VALUE, GOOD);
  end procedure BREAD;

  procedure BWRITE (
    L         : inout LINE;             -- input line
    VALUE     : in    UNSIGNED;         -- fixed point input
    JUSTIFIED : in    SIDE  := right;
    FIELD     : in    WIDTH := 0) is
  begin
    WRITE (L, VALUE, JUSTIFIED, FIELD);
  end procedure BWRITE;

  procedure BREAD(L     : inout LINE;
                 VALUE : out   UNSIGNED) is
  begin
    READ (L, VALUE);
  end procedure BREAD;

  procedure BREAD(L     : inout LINE;
                 VALUE : out   UNSIGNED;
                 GOOD  : out   BOOLEAN) is
  begin
    READ (L, VALUE, GOOD);
  end procedure BREAD;
  -- Hex Read and Write procedures for STD_ULOGIC_VECTOR.
  -- Modified from the original to be more forgiving.

  procedure Char2QuadBits (C           :     Character;
                           RESULT      : out std_ulogic_vector(3 downto 0);
                           GOOD        : out Boolean;
                           ISSUE_ERROR : in  Boolean) is
  begin
    case c is
      when '0'       => result := x"0"; good := TRUE;
      when '1'       => result := x"1"; good := TRUE;
      when '2'       => result := x"2"; good := TRUE;
      when '3'       => result := x"3"; good := TRUE;
      when '4'       => result := x"4"; good := TRUE;
      when '5'       => result := x"5"; good := TRUE;
      when '6'       => result := x"6"; good := TRUE;
      when '7'       => result := x"7"; good := TRUE;
      when '8'       => result := x"8"; good := TRUE;
      when '9'       => result := x"9"; good := TRUE;
      when 'A' | 'a' => result := x"A"; good := TRUE;
      when 'B' | 'b' => result := x"B"; good := TRUE;
      when 'C' | 'c' => result := x"C"; good := TRUE;
      when 'D' | 'd' => result := x"D"; good := TRUE;
      when 'E' | 'e' => result := x"E"; good := TRUE;
      when 'F' | 'f' => result := x"F"; good := TRUE;
      when 'Z'       => result := "ZZZZ"; good := TRUE;
      when 'X'       => result := "XXXX"; good := TRUE;
      when others    =>
        assert not ISSUE_ERROR
          report
            "STD_LOGIC_1164.OREAD Error: Read a '" & c &
            "', expected an Octal character (0-7)."
            severity error;
        good := FALSE;
    end case;
  end procedure Char2QuadBits;

  procedure HWRITE (
    L         : inout line;             -- input line
    VALUE     : in    signed;
    JUSTIFIED : in    SIDE  := RIGHT;
    FIELD     : in    WIDTH := 0) is
  begin
    WRITE ( L         => L,
             VALUE     => to_hstring(VALUE),
             JUSTIFIED => JUSTIFIED,
             FIELD     => FIELD);
  end procedure HWRITE;

  procedure HREAD(L     : inout LINE;
                  VALUE : out   signed) is
    constant ne : INTEGER := (value'length+3)/4;
    constant pad : INTEGER := ne*4 - value'length;
    variable ivalue : unsigned(0 to ne*4-1);
  begin
    HREAD ( L     => L,
            VALUE => ivalue);           -- Read padded string
    if (pad > 0) then
      if (to_X01(ivalue(0)) = '0') then  -- positive
        if to_X01(ivalue(0)) = or_reduce(ivalue(0 to pad)) then
          VALUE := SIGNED (ivalue (pad to ivalue'high));
        else
          assert false
            report "NUMERIC_STD.HREAD Error: Signed vector truncated"
            severity error;
        end if;
      else        -- negative
        if to_X01(ivalue(0)) = and_reduce(ivalue(0 to pad)) then
          VALUE := SIGNED (ivalue (pad to ivalue'high));
        else
          assert false
            report "NUMERIC_STD.HREAD Error: Signed vector truncated"
            severity error;
        end if;
      end if;
    else
      VALUE := signed (ivalue);
    end if;
  end procedure HREAD;

  procedure HREAD(L     : inout LINE;
                  VALUE : out   signed;
                  GOOD  : out   BOOLEAN) is
    constant ne : INTEGER := (value'length+3)/4;
    constant pad : INTEGER := ne*4 - value'length;
    variable ivalue : UNSIGNED(0 to ne*4-1);
    variable ok : BOOLEAN;
  begin
    HREAD ( L     => L,
            VALUE => ivalue,           -- Read padded STRING
            good => ok);
    if not ok then
      good := FALSE;
      return;
    end if;
    if (pad > 0) then
      if (to_X01(ivalue(0)) = '0') then  -- positive
        if to_X01(ivalue(0)) = or_reduce(ivalue(0 to pad)) then
          GOOD := true;
          VALUE := SIGNED (ivalue (pad to ivalue'high));
        else
          GOOD := false;
        end if;
      else        -- negative
        if to_X01(ivalue(0)) = and_reduce(ivalue(0 to pad)) then
          GOOD := true;
          VALUE := SIGNED (ivalue (pad to ivalue'high));
        else
          GOOD := false;
        end if;
      end if;
    else
      GOOD := true;
      VALUE := signed (ivalue);
    end if;
  end procedure HREAD;

  procedure HWRITE (
    L         : inout line;             -- input line
    VALUE     : in    UNSIGNED;
    JUSTIFIED : in    SIDE  := RIGHT;
    FIELD     : in    WIDTH := 0) is
  begin
    WRITE ( L         => L,
             VALUE     => to_hstring(VALUE),
             JUSTIFIED => JUSTIFIED,
             FIELD     => FIELD);
  end procedure HWRITE;

  procedure HREAD(L     : inout LINE;
                  VALUE : out   UNSIGNED) is
    variable ok : boolean;
    variable c  : character;
    constant ne : INTEGER := (value'length+3)/4;
    constant pad : INTEGER := ne*4 - value'length;
    variable sv : std_ulogic_vector(0 to ne*4 - 1);
    variable s  : string(1 to ne-1);
  begin
    VALUE (VALUE'range) := (others => 'U');
    loop                                -- skip white space
      read(l, c, ok);
      exit when (ok = FALSE) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
      report "STD_LOGIC_1164.HREAD Error: Failed skipping white space"
        severity error;
      return;
    end if;
    Char2QuadBits(c, sv(0 to 3), ok, TRUE);
    if not ok then
      return;
    end if;
    read(L, s, ok);
    if not ok then
      report "STD_LOGIC_1164.HREAD Error: Failed to read the STRING"
        severity error;
      return;
    end if;
    for i in 1 to ne-1 loop
      Char2QuadBits(s(i), sv(4*i to 4*i+3), ok, TRUE);
      if not ok then
        return;
      end if;
    end loop;
    value := UNSIGNED(to_StdLogicVector(sv (pad to sv'high)));
    if or_reduce (UNSIGNED(sv (0 to pad-1))) = '1' then  -- %%% replace with "or"
      report "STD_LOGIC_1164.HREAD Error: Vector truncated"
        severity error;
    end if;
  end procedure HREAD;

  procedure HREAD(L     : inout LINE;
                  VALUE : out   UNSIGNED;
                  GOOD  : out   BOOLEAN) is
    variable ok : boolean;
    variable c  : character;
    constant ne : INTEGER := (value'length+3)/4;
    constant pad : INTEGER := ne*4 - value'length;
    variable sv : std_ulogic_vector(0 to ne*4 - 1);
    variable s  : string(1 to ne-1);
  begin
    VALUE (VALUE'range) := (others => 'U');
    loop                                -- skip white space
      read(l, c, ok);
      exit when (ok = FALSE) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
      good := FALSE;
      return;
    end if;
    Char2QuadBits(c, sv(0 to 3), ok, FALSE);
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
      Char2QuadBits(s(i), sv(4*i to 4*i+3), ok, FALSE);
      if not ok then
        good := FALSE;
        return;
      end if;
    end loop;
    if or_reduce (unsigned(sv (0 to pad-1))) = '1' then  -- %%% replace with "or"
      good := false;                    -- vector was truncated.
    else
      value := unsigned(to_stdlogicvector(sv (pad to sv'high)));
      good := true;
    end if;
  end procedure HREAD;

    -- Octal Read and Write procedures for STD_ULOGIC_VECTOR.
  -- Modified from the original to be more forgiving.

  procedure Char2TriBits (C           :     Character;
                          RESULT      : out std_ulogic_vector(2 downto 0);
                          GOOD        : out Boolean;
                          ISSUE_ERROR : in  Boolean) is
  begin
    case c is
      when '0'    => result := o"0"; good := TRUE;
      when '1'    => result := o"1"; good := TRUE;
      when '2'    => result := o"2"; good := TRUE;
      when '3'    => result := o"3"; good := TRUE;
      when '4'    => result := o"4"; good := TRUE;
      when '5'    => result := o"5"; good := TRUE;
      when '6'    => result := o"6"; good := TRUE;
      when '7'    => result := o"7"; good := TRUE;
      when 'Z'    => result := "ZZZ"; good := TRUE;
      when 'X'    => result := "XXX"; good := TRUE;
      when others =>
        assert not ISSUE_ERROR
          report
            "STD_LOGIC_1164.OREAD Error: Read a '" & c &
            "', expected an Octal character (0-7)."
          severity error;
        good := FALSE;
    end case;
  end procedure Char2TriBits;

  procedure OWRITE (
    L         : inout line;             -- input line
    VALUE     : in    signed;
    JUSTIFIED : in    SIDE  := RIGHT;
    FIELD     : in    WIDTH := 0) is
  begin
    WRITE ( L         => L,
             VALUE     => to_ostring(VALUE),
             JUSTIFIED => JUSTIFIED,
             FIELD     => FIELD);
  end procedure OWRITE;

  procedure OREAD(L     : inout LINE;
                  VALUE : out   signed) is
    constant ne : INTEGER := (value'length+2)/3;
    constant pad : INTEGER := ne*3 - value'length;
    variable ivalue : UNSIGNED (0 to ne*3-1);
  begin
    OREAD ( L     => L,
            VALUE => ivalue);           -- Read padded string
    if (pad > 0) then
      if (to_X01(ivalue(0)) = '0') then  -- positive
        if to_X01(ivalue(0)) = or_reduce(ivalue(0 to pad)) then
          VALUE := SIGNED (ivalue (pad to ivalue'high));
        else
          report "NUMERIC_STD.OREAD Error: Signed vector truncated"
            severity error;
        end if;
      else        -- negative
        if to_X01(ivalue(0)) = and_reduce(ivalue(0 to pad)) then
          VALUE := SIGNED (ivalue (pad to ivalue'high));
        else
          report "NUMERIC_STD.OREAD Error: Signed vector truncated"
            severity error;
        end if;
      end if;
    else
      VALUE := signed (ivalue);
    end if;
  end procedure OREAD;

  procedure OREAD(L     : inout LINE;
                  VALUE : out   signed;
                  GOOD  : out   BOOLEAN) is
    constant ne : INTEGER := (value'length+2)/3;
    constant pad : INTEGER := ne*3 - value'length;
    variable ivalue : UNSIGNED (0 to ne*3-1);
    variable ok : BOOLEAN;
  begin
    OREAD ( L     => L,
            VALUE => ivalue,           -- Read padded STRING
            good => ok);
    -- Bail out if there was a bad read
    if not ok then
      good := FALSE;
      return;
    end if;
    if (pad > 0) then
      if (to_X01(ivalue(0)) = '0') then  -- positive
        if to_X01(ivalue(0)) = or_reduce(ivalue(0 to pad)) then
          VALUE := SIGNED (ivalue (pad to ivalue'high));
          good := true;
        else
          good := false;
        end if;
      else        -- negative
        if to_X01(ivalue(0)) = and_reduce(ivalue(0 to pad)) then
          VALUE := SIGNED (ivalue (pad to ivalue'high));
          good := true;
        else
          good := false;
        end if;
      end if;
    else
      good := true;
      VALUE := signed (ivalue);
    end if;
  end procedure OREAD;

  procedure OWRITE (
    L         : inout line;             -- input line
    VALUE     : in    UNSIGNED;
    JUSTIFIED : in    SIDE  := RIGHT;
    FIELD     : in    WIDTH := 0) is
  begin
    WRITE ( L         => L,
             VALUE     => to_ostring(VALUE),
             JUSTIFIED => JUSTIFIED,
             FIELD     => FIELD);
  end procedure OWRITE;

  procedure OREAD(L     : inout LINE;
                  VALUE : out   UNSIGNED) is
    variable c  : character;
    variable ok : boolean;
    constant ne : INTEGER := (value'length+2)/3;
    constant pad : INTEGER := ne*3 - value'length;
    variable sv : std_ulogic_vector(0 to ne*3 - 1);
    variable s  : string(1 to ne-1);
  begin
    VALUE (VALUE'range) := (others => 'U');
    loop                                -- skip white space
      read(l, c, ok);
      exit when (ok = FALSE) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
        report "STD_LOGIC_1164.OREAD Error: Failed skipping white space"
        severity error;
      return;
    end if;
    Char2TriBits(c, sv(0 to 2), ok, TRUE);
    if not ok then
      return;
    end if;
    read(L, s, ok);
    if not ok then
        report "STD_LOGIC_1164.OREAD Error: Failed to read the STRING"
        severity error;
      return;
    end if;
    for i in 1 to ne-1 loop
      Char2TriBits(s(i), sv(3*i to 3*i+2), ok, TRUE);
      if not ok then
        return;
      end if;
    end loop;
    value := unsigned (to_stdlogicvector (sv (pad to sv'high)));
    if or_reduce (unsigned(sv (0 to pad-1))) = '1' then -- %%% replace with "or"
        report "STD_LOGIC_1164.OREAD Error: Vector truncated"
        severity error;
    end if;
  end procedure OREAD;

  procedure OREAD(L     : inout LINE;
                  VALUE : out   UNSIGNED;
                  GOOD  : out   BOOLEAN) is
    variable ok : boolean;
    variable c  : character;
    constant ne : INTEGER := (value'length+2)/3;
    constant pad : INTEGER := ne*3 - value'length;
    variable sv : std_ulogic_vector(0 to ne*3 - 1);
    variable s  : string(1 to ne-1);
  begin
    VALUE(VALUE'range) := (others => 'U');
    loop                                -- skip white space
      read(l, c, ok);
      exit when (ok = FALSE) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
      good := FALSE;
      return;
    end if;
    Char2TriBits(c, sv(0 to 2), ok, FALSE);
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
      Char2TriBits(s(i), sv(3*i to 3*i+2), ok, FALSE);
      if not ok then
        good := FALSE;
        return;
      end if;
    end loop;
    value := unsigned (to_stdlogicvector (sv (pad to sv'high)));
    if or_reduce (unsigned(sv (0 to pad-1))) = '1' then -- %%% replace with "or"
      good := false;                    -- vector was truncated.
    else
      good := true;
    end if;
  end procedure OREAD;

  -- rtl_synthesis on
end package body numeric_std_additions;

-- --------------------------------------------------------------------
--
--
-- Copyright©2004 by the Institute of Electrical and Electronics Engineers, Inc.
-- Three Park Avenue
-- New York, NY 10016-5997, USA
-- All rights reserved.
--
-- This document is an unapproved draft of a proposed IEEE Standard. As such,
-- this document is subject to change. USE AT YOUR OWN RISK! Because this
--  is an unapproved draft, this document must not be utilized for any
-- conformance/compliance purposes. Permission is hereby granted for IEEE
-- Standards Committee participants to reproduce this document for purposes
-- of IEEE standardization activities only. Prior to submitting this document
-- to another standards development organization for standardization
-- activities, permission must first be obtained from the Manager, Standards
-- Licensing and Contracts, IEEE Standards Activities Department. Other
-- entities seeking permission to reproduce this document, in whole or in
-- part, must obtain permission from the Manager, Standards Licensing and
-- Contracts, IEEE Standard Activities Department.
--
-- IEEE Standards Activities Department
-- Standards Licensing and Contracts
-- 445 Hoes Lane, P.O. Box 1331
-- Piscataway, NJ 08855-1331, USA

-- --------------------------------------------------------------------
-- Title      : Additions to package std.standard (1076 VHDL-200X-FT)
--
--             This is the updated (proposed) new package to be
--             balloted in January.
--
--             New subprograms are at the end of the package header
--             and the package body. These are to be revised, ID's
--             assigned, and voted into the ballot version.
--
--             Other changes will be noted here.
--
-- Last Modified: $Date: 2007-09-24 17:19:02 +0100 (Mon, 24 Sep 2007) $
-- RCS ID: $Id: bfm_utils.vhd 1 2007-09-24 16:19:02Z ciaran.murphy $
--
--  Created for VHDL-200X par, David Bishop (dbishop@vhdl.org)
-- ----------------------------------------------------------------------------
package standard_additions is
  constant CopyRightNotice : STRING
 := "Copyright 2005 IEEE. All rights reserved.";
  -- OS dependant string, New Line
  impure function NL return STRING;     -- new LINE

  -- This constant gives you your simulator resolution
  impure function Sim_Resolution return DELAY_LENGTH;

  -- New type definitions from 1076.1, etc
  type REAL_VECTOR is array (NATURAL range <>) of REAL;
  type INTEGER_VECTOR is array (NATURAL range <>) of INTEGER;
  type TIME_VECTOR is array (NATURAL range <>) of TIME;
  type BOOLEAN_VECTOR is array (NATURAL range <>) of BOOLEAN;

  -----------------------------------------------------------------------------
  -- The minimum and maximum functions are implicit functions which are
  -- dependant on the ">" implicit function
  -----------------------------------------------------------------------------
  -- function minimum (L, R: BOOLEAN) return BOOLEAN;
  -- function maximum (L, R: BOOLEAN) return BOOLEAN;

  -- function minimum (L, R: BIT) return BIT;
  -- function maximum (L, R: BIT) return BIT;

  -- function minimum (L, R: CHARACTER) return CHARACTER;
  -- function maximum (L, R: CHARACTER) return CHARACTER;

  -- function minimum (L, R: SEVERITY_LEVEL) return SEVERITY_LEVEL;
  -- function maximum (L, R: SEVERITY_LEVEL) return SEVERITY_LEVEL;

  -- function minimum (L, R: universal_integer) return universal_integer;
  -- function maximum (L, R: universal_integer) return universal_integer;

  -- function minimum (L, R: universal_real) return universal_real;
  -- function maximum (L, R: universal_real) return universal_real;

  -- function minimum (L, R : INTEGER) return INTEGER;
  -- function maximum (L, R : INTEGER) return INTEGER;

  -- function minimum (L, R: REAL) return REAL;
  -- function maximum (L, R: REAL) return REAL;

  -- function minimum (L, R: TIME) return TIME;
  -- function maximum (L, R: TIME) return TIME;

  -- function minimum (L, R: STRING) return STRING;
  -- function maximum (L, R: STRING) return STRING;

  -- function minimum (L, R : BIT_VECTOR) return BIT_VECTOR;
  -- function maximum (L, R : BIT_VECTOR) return BIT_VECTOR;

  -- function minimum (L, R: FILE_OPEN_KIND) return FILE_OPEN_KIND;
  -- function maximum (L, R: FILE_OPEN_KIND) return FILE_OPEN_KIND;

  -- function minimum (L, R: FILE_OPEN_STATUS) return FILE_OPEN_STATUS;
  -- function maximum (L, R: FILE_OPEN_STATUS) return FILE_OPEN_STATUS;

  -- function minimum (L, R: SIDE) return SIDE;
  -- function maximum (L, R: SIDE) return SIDE;

  -- function minimum (L, R: BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  -- function maximum (L, R: BOOLEAN_VECTOR) return BOOLEAN_VECTOR;

  -- function minimum (L, R : INTEGER_VECTOR) return INTEGER_VECTOR;
  -- function maximum (L, R : INTEGER_VECTOR) return INTEGER_VECTOR;

  -- function minimum (L, R: REAL_VECTOR) return REAL_VECTOR;
  -- function maximum (L, R: REAL_VECTOR) return REAL_VECTOR;

  -- function minimum (L, R: TIME_VECTOR) return TIME_VECTOR;
  -- function maximum (L, R: TIME_VECTOR) return TIME_VECTOR;

  -----------------------------------------------------------------------------
  -- Reduction operations, these perform the boolean operation on all
  -- of the bits in a vector.  In the case of a NULL array, and returns '1'
  -- and or returns '0'.
  -----------------------------------------------------------------------------
  -- %%% Replace the following 6 functions with the new syntax
  function and_reduce (ARG  : BIT_VECTOR) return BIT;
  function nand_reduce (ARG : BIT_VECTOR) return BIT;
  function or_reduce (ARG   : BIT_VECTOR) return BIT;
  function nor_reduce (ARG  : BIT_VECTOR) return BIT;
  function xor_reduce (ARG  : BIT_VECTOR) return BIT;
  function xnor_reduce (ARG : BIT_VECTOR) return BIT;
  function and_reduce (ARG  : BOOLEAN_VECTOR) return BOOLEAN;
  function nand_reduce (ARG : BOOLEAN_VECTOR) return BOOLEAN;
  function or_reduce (ARG   : BOOLEAN_VECTOR) return BOOLEAN;
  function nor_reduce (ARG  : BOOLEAN_VECTOR) return BOOLEAN;
  function xor_reduce (ARG  : BOOLEAN_VECTOR) return BOOLEAN;
  function xnor_reduce (ARG : BOOLEAN_VECTOR) return BOOLEAN;
  -- %%% New syntax for reduction operators
  -- function "and"  (ARG  : BIT_VECTOR ) return BIT;
  -- function "nand" (ARG  : BIT_VECTOR ) return BIT;
  -- function "or"   (ARG  : BIT_VECTOR ) return BIT;
  -- function "nor"  (ARG  : BIT_VECTOR ) return BIT;
  -- function "xor"  (ARG  : BIT_VECTOR ) return BIT;
  -- function "xnor" (ARG  : BIT_VECTOR ) return BIT;
  -- function "and"  (ARG  : BOOLEAN_VECTOR ) return BOOLEAN;
  -- function "nand" (ARG  : BOOLEAN_VECTOR ) return BOOLEAN;
  -- function "or"   (ARG  : BOOLEAN_VECTOR ) return BOOLEAN;
  -- function "nor"  (ARG  : BOOLEAN_VECTOR ) return BOOLEAN;
  -- function "xor"  (ARG  : BOOLEAN_VECTOR ) return BOOLEAN;
  -- function "xnor" (ARG  : BOOLEAN_VECTOR ) return BOOLEAN;

  -- Function to convert a bit to a boolean, replace the following function
  function \??\ (arg : BIT) return BOOLEAN;
  -- %%% With this operator (new syntax)
  --  function "??" (arg : BIT) return BOOLEAN;

  -----------------------------------------------------------------------------
  -- Vector and bit operations, these perform a boolean operation against
  -- every bit in a vector.
  -----------------------------------------------------------------------------
  function "and" (L  : BIT_VECTOR; R : BIT) return BIT_VECTOR;
  function "and" (L  : BIT; R : BIT_VECTOR) return BIT_VECTOR;
  function "nand" (L : BIT_VECTOR; R : BIT) return BIT_VECTOR;
  function "nand" (L : BIT; R : BIT_VECTOR) return BIT_VECTOR;
  function "or" (L   : BIT_VECTOR; R : BIT) return BIT_VECTOR;
  function "or" (L   : BIT; R : BIT_VECTOR) return BIT_VECTOR;
  function "nor" (L  : BIT_VECTOR; R : BIT) return BIT_VECTOR;
  function "nor" (L  : BIT; R : BIT_VECTOR) return BIT_VECTOR;
  function "xor" (L  : BIT_VECTOR; R : BIT) return BIT_VECTOR;
  function "xor" (L  : BIT; R : BIT_VECTOR) return BIT_VECTOR;
  function "xnor" (L : BIT_VECTOR; R : BIT) return BIT_VECTOR;
  function "xnor" (L : BIT; R : BIT_VECTOR) return BIT_VECTOR;
  function "and" (L  : BOOLEAN_VECTOR; R : BOOLEAN) return BOOLEAN_VECTOR;
  function "and" (L  : BOOLEAN; R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "nand" (L : BOOLEAN_VECTOR; R : BOOLEAN) return BOOLEAN_VECTOR;
  function "nand" (L : BOOLEAN; R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "or" (L   : BOOLEAN_VECTOR; R : BOOLEAN) return BOOLEAN_VECTOR;
  function "or" (L   : BOOLEAN; R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "nor" (L  : BOOLEAN_VECTOR; R : BOOLEAN) return BOOLEAN_VECTOR;
  function "nor" (L  : BOOLEAN; R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "xor" (L  : BOOLEAN_VECTOR; R : BOOLEAN) return BOOLEAN_VECTOR;
  function "xor" (L  : BOOLEAN; R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "xnor" (L : BOOLEAN_VECTOR; R : BOOLEAN) return BOOLEAN_VECTOR;
  function "xnor" (L : BOOLEAN; R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;

  -- BOOLEAN_VECTOR functions
  function "not" (L : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "and" (L, R  : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "nand" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "or" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "nor" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "xor" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  function "xnor" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR;
  -----------------------------------------------------------------------------
  -- boolean and bit operations, returning type "BIT".
  -----------------------------------------------------------------------------
  function "and" (L  : BIT; R : BOOLEAN) return BIT;
  function "and" (L  : BOOLEAN; R : BIT) return BIT;
  function "or" (L   : BIT; R : BOOLEAN) return BIT;
  function "or" (L   : BOOLEAN; R : BIT) return BIT;
  function "xor" (L  : BIT; R : BOOLEAN) return BIT;
  function "xor" (L  : BOOLEAN; R : BIT) return BIT;
  function "nand" (L : BIT; R : BOOLEAN) return BIT;
  function "nand" (L : BOOLEAN; R : BIT) return BIT;
  function "nor" (L  : BIT; R : BOOLEAN) return BIT;
  function "nor" (L  : BOOLEAN; R : BIT) return BIT;
  function "xnor" (L : BIT; R : BOOLEAN) return BIT;
  function "xnor" (L : BOOLEAN; R : BIT) return BIT;

  -------------------------------------------------------------------
  -- edge detection
  -------------------------------------------------------------------
  function rising_edge (signal s : BIT) return BOOLEAN;
  function falling_edge (signal s : BIT) return BOOLEAN;

end package standard_additions;


-------------------------------------------------------------------------------
-- Proposed package body for the VHDL-200x-FT additions to std.standard
-- This package body supplies a recommned implementation of these functions
-- Last Modified: $Date: 2007-09-24 17:19:02 +0100 (Mon, 24 Sep 2007) $
-- RCS ID: $Id: bfm_utils.vhd 1 2007-09-24 16:19:02Z ciaran.murphy $
--
--  Created for VHDL-200X par, David Bishop (dbishop@vhdl.org)
-------------------------------------------------------------------------------

package body standard_additions is
  -- OS dependent constant to be LF on a UNIX machine
  -- purpose: returns the new line constant
  impure function NL
    return STRING is
    constant UNIX_NEWLINE : STRING := (1 => LF);
    constant PC_NEWLINE   : STRING := (1 => CR, 2 => LF);
  begin
    return UNIX_NEWLINE;
    -- If on a PC, return PC_NEWLINE
  end function NL;

  constant BASE_TIME_ARRAY : time_vector :=
    (
      1 fs, 10 fs, 100 fs,
      1 ps, 10 ps, 100 ps,
      1 ns, 10 ns, 100 ns,
      1 us, 10 us, 100 us,
      1 ms, 10 ms, 100 ms,
      1 sec, 10 sec, 100 sec,
      1 min, 10 min, 100 min,
      1 hr, 10 hr, 100 hr
      ) ;

  impure function Sim_Resolution
    return DELAY_LENGTH is
  begin
    for i in BASE_TIME_ARRAY'range loop
      if BASE_TIME_ARRAY(i) > 0 hr then
        return BASE_TIME_ARRAY(i);
      end if;
    end loop;
    report "STANDATD.SIM_RESOLUTION: Simulator resolution not less than 100 hr"
      severity failure;
    return 1 ns;
  end function Sim_Resolution;

  --%%% Examples of how the maximum and minimum funcitons work. REMOVE
--  function maximum (L, R : integer) return integer is
--  begin
--    if L > R then return L;
--    else return R;
--    end if;
--  end function maximum;

--  function minimum (L, R : integer) return integer is
--  begin
--    if L > R then return R;
--    else return L;
--    end if;
--  end function minimum;

--  function maximum (L, R : bit_vector) return bit_vector is
--  begin
--    if L > R then return L;
--    else return R;
--    end if;
--  end function maximum;

--  function minimum (L, R : bit_vector) return bit_vector is
--  begin
--    if L > R then return R;
--    else return L;
--    end if;
--  end function minimum;

  ----------------------------------------------------------------------------
  -- Boolean_Vector array logical functions
  ----------------------------------------------------------------------------
  function "not" (l : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    ALIAS lv        : BOOLEAN_VECTOR ( 1 TO l'LENGTH ) IS l;
    VARIABLE result : BOOLEAN_VECTOR ( 1 TO l'LENGTH );
  BEGIN
    FOR i IN result'RANGE LOOP
      result(i) := not lv(i);
    END LOOP;
    RETURN result;
  end function "not";
  function "and" (L, R  : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    ALIAS lv        : BOOLEAN_VECTOR ( 1 TO l'LENGTH ) IS l;
    ALIAS rv        : BOOLEAN_VECTOR ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : BOOLEAN_VECTOR ( 1 TO l'LENGTH );
  BEGIN
    IF ( l'LENGTH /= r'LENGTH ) THEN
      ASSERT FALSE
        REPORT "standard.""and"" arguments are not of the same length"
        SEVERITY FAILURE;
    ELSE
      FOR i IN result'RANGE LOOP
        result(i) := lv(i) and rv(i);
      END LOOP;
    END IF;
    RETURN result;
  end function "and";
  function "nand" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    ALIAS lv        : BOOLEAN_VECTOR ( 1 TO l'LENGTH ) IS l;
    ALIAS rv        : BOOLEAN_VECTOR ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : BOOLEAN_VECTOR ( 1 TO l'LENGTH );
  BEGIN
    IF ( l'LENGTH /= r'LENGTH ) THEN
      ASSERT FALSE
        REPORT "standard.""nand"" arguments are not of the same length"
        SEVERITY FAILURE;
    ELSE
      FOR i IN result'RANGE LOOP
        result(i) := lv(i) nand rv(i);
      END LOOP;
    END IF;
    RETURN result;
  end function "nand";
  function "or" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    ALIAS lv        : BOOLEAN_VECTOR ( 1 TO l'LENGTH ) IS l;
    ALIAS rv        : BOOLEAN_VECTOR ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : BOOLEAN_VECTOR ( 1 TO l'LENGTH );
  BEGIN
    IF ( l'LENGTH /= r'LENGTH ) THEN
      ASSERT FALSE
        REPORT "standard.""or"" arguments are not of the same length"
        SEVERITY FAILURE;
    ELSE
      FOR i IN result'RANGE LOOP
        result(i) := lv(i) or rv(i);
      END LOOP;
    END IF;
    RETURN result;
  end function "or";
  function "nor" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    ALIAS lv        : BOOLEAN_VECTOR ( 1 TO l'LENGTH ) IS l;
    ALIAS rv        : BOOLEAN_VECTOR ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : BOOLEAN_VECTOR ( 1 TO l'LENGTH );
  BEGIN
    IF ( l'LENGTH /= r'LENGTH ) THEN
      ASSERT FALSE
        REPORT "standard.""nor"" arguments are not of the same length"
        SEVERITY FAILURE;
    ELSE
      FOR i IN result'RANGE LOOP
        result(i) := lv(i) nor rv(i);
      END LOOP;
    END IF;
    RETURN result;
  end function "nor";
  function "xor" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    ALIAS lv        : BOOLEAN_VECTOR ( 1 TO l'LENGTH ) IS l;
    ALIAS rv        : BOOLEAN_VECTOR ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : BOOLEAN_VECTOR ( 1 TO l'LENGTH );
  BEGIN
    IF ( l'LENGTH /= r'LENGTH ) THEN
      ASSERT FALSE
        REPORT "standard.""xor"" arguments are not of the same length"
        SEVERITY FAILURE;
    ELSE
      FOR i IN result'RANGE LOOP
        result(i) := lv(i) xor rv(i);
      END LOOP;
    END IF;
    RETURN result;
  end function "xor";
  function "xnor" (L, R : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    ALIAS lv        : BOOLEAN_VECTOR ( 1 TO l'LENGTH ) IS l;
    ALIAS rv        : BOOLEAN_VECTOR ( 1 TO r'LENGTH ) IS r;
    VARIABLE result : BOOLEAN_VECTOR ( 1 TO l'LENGTH );
  BEGIN
    IF ( l'LENGTH /= r'LENGTH ) THEN
      ASSERT FALSE
        REPORT "standard.""xnor"" arguments are not of the same length"
        SEVERITY FAILURE;
    ELSE
      FOR i IN result'RANGE LOOP
        result(i) := lv(i) xnor rv(i);
      END LOOP;
    END IF;
    RETURN result;
  end function "xnor";

  --%%% Uncomment the following functions (new syntax)
--  -------------------------------------------------------------------
--  -- and
--  -------------------------------------------------------------------
--  function "and" (arg : BIT_VECTOR) return BIT is
--    variable Upper, Lower : bit;
--    variable Half : integer;
--    alias BUS_int : bit_vector ( arg'length - 1 downto 0 ) is arg;
--    variable Result : bit := '1';    -- In the case of a NULL range
--  begin
--    if (arg'LENGTH >= 1) then
--      if ( BUS_int'length = 1 ) then
--        Result := BUS_int ( BUS_int'left );
--      elsif ( BUS_int'length = 2 ) then
--        Result := BUS_int(BUS_int'right) and BUS_int(BUS_int'left);
--      else
--        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
--        Upper := and ( BUS_int ( BUS_int'left downto Half ));
--        Lower := and ( BUS_int ( Half - 1 downto BUS_int'right ));
--        Result := Upper and Lower;
--      end if;
--    end if;
--    return Result;
--  end function "and";

--  -------------------------------------------------------------------
--  -- nand
--  -------------------------------------------------------------------
--  function "nand" (arg : BIT_VECTOR) return BIT is
--  begin
--    return not and arg;
--  end function "nand";

--  -------------------------------------------------------------------
--  -- or
--  -------------------------------------------------------------------
--  function "or" (arg : BIT_VECTOR) return BIT is
--    variable Upper, Lower : bit;
--    variable Half : integer;
--    alias BUS_int : bit_vector ( arg'length - 1 downto 0 ) is arg;
--    variable Result : bit := '0';    -- In the case of a NULL range
--  begin
--    if (arg'LENGTH >= 1) then
--      if ( BUS_int'length = 1 ) then
--        Result := BUS_int ( BUS_int'left );
--      elsif ( BUS_int'length = 2 ) then
--        Result := BUS_int(BUS_int'right) or BUS_int(BUS_int'left);
--      else
--        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
--        Upper := or ( BUS_int ( BUS_int'left downto Half ));
--        Lower := or ( BUS_int ( Half - 1 downto BUS_int'right ));
--        Result := Upper or Lower;
--      end if;
--    end if;
--    return Result;
--  end function "or";

--  -------------------------------------------------------------------
--  -- nor
--  -------------------------------------------------------------------
--  function nor (arg : BIT_VECTOR) return BIT is
--  begin
--    return not or arg;
--  end function nor;

--  -------------------------------------------------------------------
--  -- xor
--  -------------------------------------------------------------------
--  function "xor" (arg : BIT_VECTOR) return BIT is
--    variable Upper, Lower : bit;
--    variable Half : integer;
--    alias BUS_int : bit_vector ( arg'length - 1 downto 0 ) is arg;
--    variable Result : bit := '0';    -- In the case of a NULL range
--  begin
--    if (arg'LENGTH >= 1) then
--      if ( BUS_int'length = 1 ) then
--        Result := BUS_int ( BUS_int'left );
--      elsif ( BUS_int'length = 2 ) then
--        Result := BUS_int(BUS_int'right) xor BUS_int(BUS_int'left);
--      else
--        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
--        Upper := xor ( BUS_int ( BUS_int'left downto Half ));
--        Lower := xor ( BUS_int ( Half - 1 downto BUS_int'right ));
--        Result := Upper xor Lower;
--      end if;
--    end if;
--    return Result;
--  end function "xor";
--
--  -------------------------------------------------------------------
--  -- xnor
--  -------------------------------------------------------------------
--  function "xnor" (arg : BIT_VECTOR) return BIT is
--  begin
--    return not xor arg;
--  end function "xnor";
--
--  -- BOOLEAN_VECTOR routines
--  -------------------------------------------------------------------
--  -- and
--  -------------------------------------------------------------------
--  function "and" (arg : BOOLEAN_VECTOR) return BOOLEAN is
--    variable Upper, Lower : bit;
--    variable Half : integer;
--    alias BUS_int : bit_vector ( arg'length - 1 downto 0 ) is arg;
--    variable Result : bit := '1';    -- In the case of a NULL range
--  begin
--    if (arg'LENGTH >= 1) then
--      if ( BUS_int'length = 1 ) then
--        Result := BUS_int ( BUS_int'left );
--      elsif ( BUS_int'length = 2 ) then
--        Result := BUS_int(BUS_int'right) and BUS_int(BUS_int'left);
--      else
--        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
--        Upper := and ( BUS_int ( BUS_int'left downto Half ));
--        Lower := and ( BUS_int ( Half - 1 downto BUS_int'right ));
--        Result := Upper and Lower;
--      end if;
--    end if;
--    return Result;
--  end function "and";

--  -------------------------------------------------------------------
--  -- nand
--  -------------------------------------------------------------------
--  function "nand" (arg : BOOLEAN_VECTOR) return BOOLEAN is
--  begin
--    return not and arg;
--  end function "nand";

--  -------------------------------------------------------------------
--  -- or
--  -------------------------------------------------------------------
--  function "or" (arg : BOOLEAN_VECTOR) return BOOLEAN is
--    variable Upper, Lower : bit;
--    variable Half : integer;
--    alias BUS_int : bit_vector ( arg'length - 1 downto 0 ) is arg;
--    variable Result : bit := '0';    -- In the case of a NULL range
--  begin
--    if (arg'LENGTH >= 1) then
--      if ( BUS_int'length = 1 ) then
--        Result := BUS_int ( BUS_int'left );
--      elsif ( BUS_int'length = 2 ) then
--        Result := BUS_int(BUS_int'right) or BUS_int(BUS_int'left);
--      else
--        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
--        Upper := or ( BUS_int ( BUS_int'left downto Half ));
--        Lower := or ( BUS_int ( Half - 1 downto BUS_int'right ));
--        Result := Upper or Lower;
--      end if;
--    end if;
--    return Result;
--  end function "or";

--  -------------------------------------------------------------------
--  -- nor
--  -------------------------------------------------------------------
--  function nor (arg : BOOLEAN_VECTOR) return BOOLEAN is
--  begin
--    return not or arg;
--  end function nor;

--  -------------------------------------------------------------------
--  -- xor
--  -------------------------------------------------------------------
--  function "xor" (arg : BOOLEAN_VECTOR) return BOOLEAN is
--    variable Upper, Lower : bit;
--    variable Half : integer;
--    alias BUS_int : bit_vector ( arg'length - 1 downto 0 ) is arg;
--    variable Result : bit := '0';    -- In the case of a NULL range
--  begin
--    if (arg'LENGTH >= 1) then
--      if ( BUS_int'length = 1 ) then
--        Result := BUS_int ( BUS_int'left );
--      elsif ( BUS_int'length = 2 ) then
--        Result := BUS_int(BUS_int'right) xor BUS_int(BUS_int'left);
--      else
--        Half := ( BUS_int'length + 1 ) / 2 + BUS_int'right;
--        Upper := xor ( BUS_int ( BUS_int'left downto Half ));
--        Lower := xor ( BUS_int ( Half - 1 downto BUS_int'right ));
--        Result := Upper xor Lower;
--      end if;
--    end if;
--    return Result;
--  end function "xor";

--  -------------------------------------------------------------------
--  -- xnor
--  -------------------------------------------------------------------
--  function "xnor" (arg : BOOLEAN_VECTOR) return BOOLEAN is
--  begin
--    return not xor arg;
--  end function "xnor";
--%%% end uncomment
  --%%% REMOVE the following functions (old syntax)
  -------------------------------------------------------------------
  -- and
  -------------------------------------------------------------------
  function and_reduce (arg : BIT_VECTOR) return BIT is
    variable Upper, Lower : bit;
    variable Half         : integer;
    alias BUS_int         : bit_vector (arg'length - 1 downto 0) is arg;
    variable Result       : bit := '1';  -- In the case of a NULL range
  begin
    if (arg'LENGTH >= 1) then
      if (BUS_int'length = 1) then
        Result := BUS_int (BUS_int'left);
      elsif (BUS_int'length = 2) then
        Result := BUS_int(BUS_int'right) and BUS_int(BUS_int'left);
      else
        Half   := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper  := and_reduce (BUS_int (BUS_int'left downto Half));
        Lower  := and_reduce (BUS_int (Half - 1 downto BUS_int'right));
        Result := Upper and Lower;
      end if;
    end if;
    return Result;
  end function and_reduce;

  -------------------------------------------------------------------
  -- nand
  -------------------------------------------------------------------
  function nand_reduce (arg : BIT_VECTOR) return BIT is
  begin
    return not and_reduce(arg);
  end function nand_reduce;

  -------------------------------------------------------------------
  -- or
  -------------------------------------------------------------------
  function or_reduce (arg : BIT_VECTOR) return BIT is
    variable Upper, Lower : bit;
    variable Half         : integer;
    alias BUS_int         : bit_vector (arg'length - 1 downto 0) is arg;
    variable Result       : bit := '0';  -- In the case of a NULL range
  begin
    if (arg'LENGTH >= 1) then
      if (BUS_int'length = 1) then
        Result := BUS_int (BUS_int'left);
      elsif (BUS_int'length = 2) then
        Result := BUS_int(BUS_int'right) or BUS_int(BUS_int'left);
      else
        Half   := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper  := or_reduce (BUS_int (BUS_int'left downto Half));
        Lower  := or_reduce (BUS_int (Half - 1 downto BUS_int'right));
        Result := Upper or Lower;
      end if;
    end if;
    return Result;
  end function or_reduce;

  -------------------------------------------------------------------
  -- nor
  -------------------------------------------------------------------
  function nor_reduce (arg : BIT_VECTOR) return BIT is
  begin
    return not or_reduce(arg);
  end function nor_reduce;

  -------------------------------------------------------------------
  -- xor
  -------------------------------------------------------------------
  function xor_reduce (arg : BIT_VECTOR) return BIT is
    variable Upper, Lower : bit;
    variable Half         : integer;
    alias BUS_int         : bit_vector (arg'length - 1 downto 0) is arg;
    variable Result       : bit := '0';  -- In the case of a NULL range
  begin
    if (arg'LENGTH >= 1) then
      if (BUS_int'length = 1) then
        Result := BUS_int (BUS_int'left);
      elsif (BUS_int'length = 2) then
        Result := BUS_int(BUS_int'right) xor BUS_int(BUS_int'left);
      else
        Half   := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper  := xor_reduce (BUS_int (BUS_int'left downto Half));
        Lower  := xor_reduce (BUS_int (Half - 1 downto BUS_int'right));
        Result := Upper xor Lower;
      end if;
    end if;
    return Result;
  end function xor_reduce;

  -------------------------------------------------------------------
  -- xnor
  -------------------------------------------------------------------
  function xnor_reduce (arg : BIT_VECTOR) return BIT is
  begin
    return not xor_reduce(arg);
  end function xnor_reduce;

  -- BOOLEAN_VECTOR routines
  -------------------------------------------------------------------
  -- and
  -------------------------------------------------------------------
  function and_reduce (arg : BOOLEAN_VECTOR) return BOOLEAN is
    variable Upper, Lower : BOOLEAN;
    variable Half         : integer;
    alias BUS_int         : BOOLEAN_VECTOR (arg'length - 1 downto 0) is arg;
    variable Result       : BOOLEAN := TRUE;  -- In the case of a NULL range
  begin
    if (arg'LENGTH >= 1) then
      if (BUS_int'length = 1) then
        Result := BUS_int (BUS_int'left);
      elsif (BUS_int'length = 2) then
        Result := BUS_int(BUS_int'right) and BUS_int(BUS_int'left);
      else
        Half   := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper  := and_reduce (BUS_int (BUS_int'left downto Half));
        Lower  := and_reduce (BUS_int (Half - 1 downto BUS_int'right));
        Result := Upper and Lower;
      end if;
    end if;
    return Result;
  end function and_reduce;

  -------------------------------------------------------------------
  -- nand
  -------------------------------------------------------------------
  function nand_reduce (arg : BOOLEAN_VECTOR) return BOOLEAN is
  begin
    return not and_reduce(arg);
  end function nand_reduce;

  -------------------------------------------------------------------
  -- or
  -------------------------------------------------------------------
  function or_reduce (arg : BOOLEAN_VECTOR) return BOOLEAN is
    variable Upper, Lower : BOOLEAN;
    variable Half         : integer;
    alias BUS_int         : BOOLEAN_VECTOR (arg'length - 1 downto 0) is arg;
    variable Result       : BOOLEAN := FALSE;  -- In the case of a NULL range
  begin
    if (arg'LENGTH >= 1) then
      if (BUS_int'length = 1) then
        Result := BUS_int (BUS_int'left);
      elsif (BUS_int'length = 2) then
        Result := BUS_int(BUS_int'right) or BUS_int(BUS_int'left);
      else
        Half   := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper  := or_reduce (BUS_int (BUS_int'left downto Half));
        Lower  := or_reduce (BUS_int (Half - 1 downto BUS_int'right));
        Result := Upper or Lower;
      end if;
    end if;
    return Result;
  end function or_reduce;

  -------------------------------------------------------------------
  -- nor
  -------------------------------------------------------------------
  function nor_reduce (arg : BOOLEAN_VECTOR) return BOOLEAN is
  begin
    return not or_reduce(arg);
  end function nor_reduce;

  -------------------------------------------------------------------
  -- xor
  -------------------------------------------------------------------
  function xor_reduce (arg : BOOLEAN_VECTOR) return BOOLEAN is
    variable Upper, Lower : BOOLEAN;
    variable Half         : integer;
    alias BUS_int         : BOOLEAN_VECTOR (arg'length - 1 downto 0) is arg;
    variable Result       : BOOLEAN := FALSE;  -- In the case of a NULL range
  begin
    if (arg'LENGTH >= 1) then
      if (BUS_int'length = 1) then
        Result := BUS_int (BUS_int'left);
      elsif (BUS_int'length = 2) then
        Result := BUS_int(BUS_int'right) xor BUS_int(BUS_int'left);
      else
        Half   := (BUS_int'length + 1) / 2 + BUS_int'right;
        Upper  := xor_reduce (BUS_int (BUS_int'left downto Half));
        Lower  := xor_reduce (BUS_int (Half - 1 downto BUS_int'right));
        Result := Upper xor Lower;
      end if;
    end if;
    return Result;
  end function xor_reduce;

  -------------------------------------------------------------------
  -- xnor
  -------------------------------------------------------------------
  function xnor_reduce (arg : BOOLEAN_VECTOR) return BOOLEAN is
  begin
    return not xor_reduce(arg);
  end function xnor_reduce;
--%%% end remove

  -- purpose: Converts a bit to a boolean
  -- %%% function "??" (
  function \??\ (
    arg : BIT)
    return BOOLEAN is
  begin
    return arg = '1';
  end function \??\;
  -- %%% end function "??";

  -------------------------------------------------------------------
  -- and
  -------------------------------------------------------------------
  function "and" (l : BIT_VECTOR; r : BIT) return BIT_VECTOR is
    alias lv        : BIT_VECTOR (1 to l'length) is l;
    variable result : BIT_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := lv(i) and r;
    end loop;
    return result;
  end function "and";
  -------------------------------------------------------------------
  function "and" (l : BIT; r : BIT_VECTOR) return BIT_VECTOR is
    alias rv        : BIT_VECTOR (1 to r'length) is r;
    variable result : BIT_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := l and rv(i);
    end loop;
    return result;
  end function "and";

  -------------------------------------------------------------------
  -- nand
  -------------------------------------------------------------------
  function "nand" (l : BIT_VECTOR; r : BIT) return BIT_VECTOR is
    alias lv        : BIT_VECTOR (1 to l'length) is l;
    variable result : BIT_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := not (lv(i) and r);
    end loop;
    return result;
  end function "nand";
  -------------------------------------------------------------------
  function "nand" (l : BIT; r : BIT_VECTOR) return BIT_VECTOR is
    alias rv        : BIT_VECTOR (1 to r'length) is r;
    variable result : BIT_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := not (l and rv(i));
    end loop;
    return result;
  end function "nand";

  -------------------------------------------------------------------
  -- or
  -------------------------------------------------------------------
  function "or" (l : BIT_VECTOR; r : BIT) return BIT_VECTOR is
    alias lv        : BIT_VECTOR (1 to l'length) is l;
    variable result : BIT_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := lv(i) or r;
    end loop;
    return result;
  end function "or";
  -------------------------------------------------------------------
  function "or" (l : BIT; r : BIT_VECTOR) return BIT_VECTOR is
    alias rv        : BIT_VECTOR (1 to r'length) is r;
    variable result : BIT_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := l or rv(i);
    end loop;
    return result;
  end function "or";

  -------------------------------------------------------------------
  -- nor
  -------------------------------------------------------------------
  function "nor" (l : BIT_VECTOR; r : BIT) return BIT_VECTOR is
    alias lv        : BIT_VECTOR (1 to l'length) is l;
    variable result : BIT_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := not (lv(i) or r);
    end loop;
    return result;
  end function "nor";
  -------------------------------------------------------------------
  function "nor" (l : BIT; r : BIT_VECTOR) return BIT_VECTOR is
    alias rv        : BIT_VECTOR (1 to r'length) is r;
    variable result : BIT_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := not (l or rv(i));
    end loop;
    return result;
  end function "nor";

  -------------------------------------------------------------------
  -- xor
  -------------------------------------------------------------------
  function "xor" (l : BIT_VECTOR; r : BIT) return BIT_VECTOR is
    alias lv        : BIT_VECTOR (1 to l'length) is l;
    variable result : BIT_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := lv(i) xor r;
    end loop;
    return result;
  end function "xor";
  -------------------------------------------------------------------
  function "xor" (l : BIT; r : BIT_VECTOR) return BIT_VECTOR is
    alias rv        : BIT_VECTOR (1 to r'length) is r;
    variable result : BIT_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := l xor rv(i);
    end loop;
    return result;
  end function "xor";

  -------------------------------------------------------------------
  -- xnor
  -------------------------------------------------------------------
  function "xnor" (l : BIT_VECTOR; r : BIT) return BIT_VECTOR is
    alias lv        : BIT_VECTOR (1 to l'length) is l;
    variable result : BIT_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := not (lv(i) xor r);
    end loop;
    return result;
  end function "xnor";
  -------------------------------------------------------------------
  function "xnor" (l : BIT; r : BIT_VECTOR) return BIT_VECTOR is
    alias rv        : BIT_VECTOR (1 to r'length) is r;
    variable result : BIT_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := not (l xor rv(i));
    end loop;
    return result;
  end function "xnor";

  -------------------------------------------------------------------
  -- and
  -------------------------------------------------------------------
  function "and" (l : BOOLEAN_VECTOR; r : BOOLEAN) return BOOLEAN_VECTOR is
    alias lv        : BOOLEAN_VECTOR (1 to l'length) is l;
    variable result : BOOLEAN_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := lv(i) and r;
    end loop;
    return result;
  end function "and";
  -------------------------------------------------------------------
  function "and" (l : BOOLEAN; r : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    alias rv        : BOOLEAN_VECTOR (1 to r'length) is r;
    variable result : BOOLEAN_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := l and rv(i);
    end loop;
    return result;
  end function "and";

  -------------------------------------------------------------------
  -- nand
  -------------------------------------------------------------------
  function "nand" (l : BOOLEAN_VECTOR; r : BOOLEAN) return BOOLEAN_VECTOR is
    alias lv        : BOOLEAN_VECTOR (1 to l'length) is l;
    variable result : BOOLEAN_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := not (lv(i) and r);
    end loop;
    return result;
  end function "nand";
  -------------------------------------------------------------------
  function "nand" (l : BOOLEAN; r : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    alias rv        : BOOLEAN_VECTOR (1 to r'length) is r;
    variable result : BOOLEAN_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := not (l and rv(i));
    end loop;
    return result;
  end function "nand";

  -------------------------------------------------------------------
  -- or
  -------------------------------------------------------------------
  function "or" (l : BOOLEAN_VECTOR; r : BOOLEAN) return BOOLEAN_VECTOR is
    alias lv        : BOOLEAN_VECTOR (1 to l'length) is l;
    variable result : BOOLEAN_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := lv(i) or r;
    end loop;
    return result;
  end function "or";
  -------------------------------------------------------------------
  function "or" (l : BOOLEAN; r : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    alias rv        : BOOLEAN_VECTOR (1 to r'length) is r;
    variable result : BOOLEAN_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := l or rv(i);
    end loop;
    return result;
  end function "or";

  -------------------------------------------------------------------
  -- nor
  -------------------------------------------------------------------
  function "nor" (l : BOOLEAN_VECTOR; r : BOOLEAN) return BOOLEAN_VECTOR is
    alias lv        : BOOLEAN_VECTOR (1 to l'length) is l;
    variable result : BOOLEAN_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := not (lv(i) or r);
    end loop;
    return result;
  end function "nor";
  -------------------------------------------------------------------
  function "nor" (l : BOOLEAN; r : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    alias rv        : BOOLEAN_VECTOR (1 to r'length) is r;
    variable result : BOOLEAN_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := not (l or rv(i));
    end loop;
    return result;
  end function "nor";

  -------------------------------------------------------------------
  -- xor
  -------------------------------------------------------------------
  function "xor" (l : BOOLEAN_VECTOR; r : BOOLEAN) return BOOLEAN_VECTOR is
    alias lv        : BOOLEAN_VECTOR (1 to l'length) is l;
    variable result : BOOLEAN_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := lv(i) xor r;
    end loop;
    return result;
  end function "xor";
  -------------------------------------------------------------------
  function "xor" (l : BOOLEAN; r : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    alias rv        : BOOLEAN_VECTOR (1 to r'length) is r;
    variable result : BOOLEAN_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := l xor rv(i);
    end loop;
    return result;
  end function "xor";

  -------------------------------------------------------------------
  -- xnor
  -------------------------------------------------------------------
  function "xnor" (l : BOOLEAN_VECTOR; r : BOOLEAN) return BOOLEAN_VECTOR is
    alias lv        : BOOLEAN_VECTOR (1 to l'length) is l;
    variable result : BOOLEAN_VECTOR (1 to l'length);
  begin
    for i in result'range loop
      result(i) := not (lv(i) xor r);
    end loop;
    return result;
  end function "xnor";
  -------------------------------------------------------------------
  function "xnor" (l : BOOLEAN; r : BOOLEAN_VECTOR) return BOOLEAN_VECTOR is
    alias rv        : BOOLEAN_VECTOR (1 to r'length) is r;
    variable result : BOOLEAN_VECTOR (1 to r'length);
  begin
    for i in result'range loop
      result(i) := not (l xor rv(i));
    end loop;
    return result;
  end function "xnor";

  -- Function from Proposal FT18
  function "and" (L : BIT; R : BOOLEAN) return BIT is
  begin
    if R then
      return L;
    else
      return '0';
    end if;
  end function "and";
  function "and" (L : BOOLEAN; R : BIT) return BIT is
  begin
    if L then
      return R;
    else
      return '0';
    end if;
  end function "and";
  function "or" (L : BIT; R : BOOLEAN) return BIT is
  begin
    if R then
      return '1';
    else
      return L;
    end if;
  end function "or";
  function "or" (L : BOOLEAN; R : BIT) return BIT is
  begin
    if L then
      return '1';
    else
      return R;
    end if;
  end function "or";
  function "xor" (L : BIT; R : BOOLEAN) return BIT is
  begin
    if R then
      return not L;
    else
      return L;
    end if;
  end function "xor";
  function "xor" (L : BOOLEAN; R : BIT) return BIT is
  begin
    if L then
      return not R;
    else
      return R;
    end if;
  end function "xor";
  function "nand" (L : BIT; R : BOOLEAN) return BIT is
  begin
    if R then
      return not L;
    else
      return '1';
    end if;
  end function "nand";
  function "nand" (L : BOOLEAN; R : BIT) return BIT is
  begin
    if L then
      return not R;
    else
      return '1';
    end if;
  end function "nand";
  function "nor" (L : BIT; R : BOOLEAN) return BIT is
  begin
    if R then
      return '0';
    else
      return not L;
    end if;
  end function "nor";
  function "nor" (L : BOOLEAN; R : BIT) return BIT is
  begin
    if L then
      return '0';
    else
      return not R;
    end if;
  end function "nor";
  function "xnor" (L : BIT; R : BOOLEAN) return BIT is
  begin
    if R then
      return L;
    else
      return not L;
    end if;
  end function "xnor";
  function "xnor" (L : BOOLEAN; R : BIT) return BIT is
  begin
    if L then
      return R;
    else
      return not R;
    end if;
  end function "xnor";

  -------------------------------------------------------------------
  -- edge detection
  -------------------------------------------------------------------
  function rising_edge (signal s : BIT) return BOOLEAN is
  begin
    return (s'event and (s = '1') and (s'last_value = '0'));
  end function rising_edge;

  function falling_edge (signal s : BIT) return BOOLEAN is
  begin
    return (s'event and (s = '0') and (s'last_value = '1'));
  end function falling_edge;

end package body standard_additions;


-- Standards Committee participants to reproduce this document for purposes
-- of IEEE standardization activities only. Prior to submitting this document
-- to another standards development organization for standardization
-- activities, permission must first be obtained from the Manager, Standards
-- Licensing and Contracts, IEEE Standards Activities Department. Other
-- entities seeking permission to reproduce this document, in whole or in
-- part, must obtain permission from the Manager, Standards Licensing and
-- Contracts, IEEE Standard Activities Department.
--
-- IEEE Standards Activities Department
-- Standards Licensing and Contracts
-- 445 Hoes Lane, P.O. Box 1331
-- Piscataway, NJ 08855-1331, USA

-- --------------------------------------------------------------------
-- Title      : Additions to package std.textio (1076 VHDL-200X-FT)
--
--             This is the updated (proposed) package to be
--             balloted in January.
--
--             New subprograms are at the end of the package header
--             and the package body. These are to be revised, ID's
--             assigned, and voted into the ballot version.
--
--             Other changes will be noted here.
--
-- Last Modified: $Date: 2007-09-24 17:19:02 +0100 (Mon, 24 Sep 2007) $
-- RCS ID: $Id: bfm_utils.vhd 1 2007-09-24 16:19:02Z ciaran.murphy $
--
--  Created for VHDL-200X par, David Bishop (dbishop@vhdl.org)
-- ------------------------------------------------------------------
library ieee;        -- %%% For testing only.
use work.standard_additions.all;        -- %%% For testing only.
use std.textio.all;                     -- %%% For testing only.
package standard_textio_additions is
  constant CopyRightNotice : STRING
 := "Copyright 2004 IEEE. All rights reserved.";
  -- Writes L to a file and to the OUTPUT.  Similar to the UNIX tee command
  procedure tee (FILE F : TEXT; variable L : inout LINE);

  -- Read and Write procedure for strings
  -- token based string read.  STRLEN = 0 if the String read is bad
  procedure SREAD (L : inout LINE; VALUE : out STRING; STRLEN : out natural);
  alias SWRITE is WRITE [LINE, STRING, SIDE, WIDTH];

  -- Read and Write procedures for Hexadecimal values
  procedure HREAD (L : inout LINE; VALUE : out BIT_VECTOR; GOOD : out BOOLEAN);
  procedure HREAD (L : inout LINE; VALUE : out BIT_VECTOR);

  procedure HWRITE (L : inout LINE; VALUE : in BIT_VECTOR;
                    JUSTIFIED : in SIDE := right; FIELD : in WIDTH := 0);

  -- Read and Write procedures for Octal values
  procedure OREAD (L : inout LINE; VALUE : out BIT_VECTOR; GOOD : out BOOLEAN);
  procedure OREAD (L : inout LINE; VALUE : out BIT_VECTOR);

  procedure OWRITE (L : inout LINE; VALUE : in BIT_VECTOR;
                    JUSTIFIED : in SIDE := right; FIELD : in WIDTH := 0);

  -- Read and Write procedures for Binary values
  alias BREAD is READ [LINE, BIT_VECTOR, BOOLEAN];
  alias BREAD is READ [LINE, BIT_VECTOR];
  alias BWRITE is WRITE [LINE, BIT_VECTOR, SIDE, WIDTH];

  -- read and write for vector versions
  -- These versions produce "value1, value2, value3 ...."
  procedure read (L : inout LINE; VALUE : out boolean_vector;
                  GOOD : out BOOLEAN);
  procedure read (L : inout LINE; VALUE : out boolean_vector);
  procedure write (L : inout LINE; VALUE : in boolean_vector;
                   JUSTIFIED : in SIDE := right; FIELD : in WIDTH := 0);
  procedure read (L : inout LINE; VALUE : out integer_vector;
                  GOOD : out BOOLEAN);
  procedure read (L : inout LINE; VALUE : out integer_vector);
  procedure write (L : inout LINE; VALUE : in integer_vector;
                   JUSTIFIED : in SIDE := right; FIELD : in WIDTH := 0);
  procedure read (L : inout LINE; VALUE : out real_vector;
                  GOOD : out BOOLEAN);
  procedure read (L : inout LINE; VALUE : out real_vector);
  procedure write (L : inout LINE; VALUE : in real_vector;
                   JUSTIFIED : in SIDE := right; FIELD : in WIDTH := 0;
                   DIGITS : in NATURAL := 0);
  procedure read (L : inout LINE; VALUE : out time_vector;
                  GOOD : out BOOLEAN);
  procedure read (L : inout LINE; VALUE : out time_vector);
  procedure write (L : inout LINE; VALUE : in time_vector;
                   JUSTIFIED : in SIDE := right; FIELD : in WIDTH := 0;
                   UNIT : in TIME := ns);

  -- to_string routines
  -- Justify a string left or right, for a given width
  function justify (
    VALUE     : in STRING;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0)
    return STRING;
  -- Bit vector to string
  function to_string (
    VALUE     : in BIT_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  -- bit_vector to binary string (alias)
  alias to_bstring is to_string [BIT_VECTOR, SIDE, WIDTH return STRING];
  -- bit_vector to Hex string
  function to_hstring (
    VALUE     : in BIT_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  -- bit_vector to Octal string
  function to_ostring (
    VALUE     : in BIT_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;

  -- to_string functions for the type from std.standard
  function to_string (
    VALUE     : in INTEGER;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  function to_string (
    VALUE     : in BIT;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  function to_string (
    VALUE     : in BOOLEAN;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  function to_string (
    VALUE     : in SEVERITY_LEVEL;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  function to_string (
    VALUE     : in FILE_OPEN_KIND;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  function to_string (
    VALUE     : in FILE_OPEN_STATUS;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  function to_string (
    VALUE     : in SIDE;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  -- returns number of digits, similar to write (REAL, SIDE, FIELD, DIGITS)
  function to_string (
    VALUE     : in REAL;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0;
    DIGITS    : in NATURAL := 0
    ) return STRING ;
  -- Format is similar to the C printf format " " means real'image
  -- Example to_string (3.14159, "%5.3f") returns "3.142"
  function to_string (
    VALUE     : in REAL;
    format    : in STRING
    ) return STRING ;
  -- Returns the time in the units specified.
  -- similar to write (TIME, SIDE, FIELD, UNIT);
  function to_string (
    VALUE     : in TIME;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0;
    UNIT      : in TIME := ns
    ) return STRING ;

  -- vector versions
  function to_string (
    VALUE     : in BOOLEAN_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  function to_string (
    VALUE     : in INTEGER_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING ;
  function to_string (
    VALUE     : in REAL_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0;
    DIGITS    : in NATURAL := 0
    ) return STRING ;
  function to_string (
    VALUE     : in REAL_VECTOR;
    format    : in STRING
    ) return STRING ;
  function to_string (
    VALUE     : in TIME_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0;
    UNIT      : in TIME := ns
    ) return STRING ;
end package standard_textio_additions;


-------------------------------------------------------------------------------
-- Proposed package body for the VHDL-200x-FT additions to std.textio
-- This package body supplies a recommended implementation of these functions
-- Last Modified: $Date: 2007-09-24 17:19:02 +0100 (Mon, 24 Sep 2007) $
-- RCS ID: $Id: bfm_utils.vhd 1 2007-09-24 16:19:02Z ciaran.murphy $
--
--  Created for VHDL-200X par, David Bishop (dbishop@vhdl.org)
-------------------------------------------------------------------------------
library ieee;
use work.standard_additions.all;        -- %%% For testing only

package body standard_textio_additions is
  constant NUS  : STRING(2 downto 1) := (others => ' ');     -- NULL array
  constant NBSP : CHARACTER      := CHARACTER'val(160);  -- space character

  -- Writes L to a file without modifying the contents of the line
  procedure tee (file F : TEXT; variable L : inout LINE) is
  begin
    write (OUTPUT, L.all & NL);
    writeline(F, L);
  end procedure tee;

  -- Read and Write procedure for strings
  procedure SREAD (L      : inout LINE;
                   VALUE  : out   STRING;
                   STRLEN : out   natural) is
    variable ok     : BOOLEAN;
    variable c      : CHARACTER;
    -- Result is padded with space characters
    variable result : STRING (1 to VALUE'length) := (others => ' ');
  begin
    VALUE := result;
    loop                                -- skip white space
      read(L, c, ok);
      exit when (ok = false) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
      STRLEN := 0;
      return;
    end if;
    result (1) := c;
    STRLEN     := 1;
    for i in 2 to VALUE'length loop
      read(L, c, ok);
      if (ok = false) or ((c = ' ') or (c = NBSP) or (c = HT)) then
        exit;
      else
        result (i) := c;
      end if;
      STRLEN := i;
    end loop;
    VALUE := result;
  end procedure SREAD;

  -- alias SWRITE is WRITE [LINE, STRING, SIDE, WIDTH];

  -- Hex Read and Write procedures for bit_vector.
  -- Procedure only visible internally.
  procedure Char2QuadBits (C           :     CHARACTER;
                           RESULT      : out BIT_VECTOR(3 downto 0);
                           GOOD        : out BOOLEAN;
                           ISSUE_ERROR : in  BOOLEAN) is
  begin
    case c is
      when '0'       => result := x"0"; good := true;
      when '1'       => result := x"1"; good := true;
      when '2'       => result := x"2"; good := true;
      when '3'       => result := x"3"; good := true;
      when '4'       => result := x"4"; good := true;
      when '5'       => result := x"5"; good := true;
      when '6'       => result := x"6"; good := true;
      when '7'       => result := x"7"; good := true;
      when '8'       => result := x"8"; good := true;
      when '9'       => result := x"9"; good := true;
      when 'A' | 'a' => result := x"A"; good := true;
      when 'B' | 'b' => result := x"B"; good := true;
      when 'C' | 'c' => result := x"C"; good := true;
      when 'D' | 'd' => result := x"D"; good := true;
      when 'E' | 'e' => result := x"E"; good := true;
      when 'F' | 'f' => result := x"F"; good := true;
      when others    =>
        assert not ISSUE_ERROR report
          "TEXTIO.HREAD Error: Read a '" & c &
          "', expected a Hex character (0-F)." severity error;
        GOOD := false;
    end case;
  end procedure Char2QuadBits;

  procedure HREAD (L     : inout LINE;
                   VALUE : out   BIT_VECTOR;
                   GOOD  : out   BOOLEAN) is
    variable ok  : BOOLEAN;
    variable c   : CHARACTER;
    constant ne  : INTEGER                    := (VALUE'length+3)/4;
    constant pad : INTEGER                    := ne*4 - VALUE'length;
    variable sv  : BIT_VECTOR (0 to ne*4 - 1) := (others => '0');
    variable s   : STRING(1 to ne-1);
  begin
    VALUE (VALUE'range) := (others => '0');
    loop                                -- skip white space
      read(l, c, ok);
      exit when (ok = false) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
      GOOD := false;
      return;
    end if;
    Char2QuadBits(c, sv(0 to 3), ok, false);
    if not ok then
      GOOD := false;
      return;
    end if;
    read(L, s, ok);
    if not ok then
      GOOD := false;
      return;
    end if;
    for i in 1 to ne-1 loop
      Char2QuadBits(s(i), sv(4*i to 4*i+3), ok, false);
      if not ok then
        GOOD := false;
        return;
      end if;
    end loop;
    if or_reduce (sv (0 to pad-1)) = '1' then
      GOOD := false;                    -- vector was truncated.
    else
      GOOD  := true;
      VALUE := sv (pad to sv'high);
    end if;
  end procedure HREAD;

  procedure HREAD (L     : inout LINE;
                   VALUE : out   BIT_VECTOR) is
    variable ok  : BOOLEAN;
    variable c   : CHARACTER;
    constant ne  : INTEGER                   := (VALUE'length+3)/4;
    constant pad : INTEGER                   := ne*4 - VALUE'length;
    variable sv  : BIT_VECTOR(0 to ne*4 - 1) := (others => '0');
    variable s   : STRING(1 to ne-1);
  begin
    VALUE (VALUE'range) := (others => '0');
    loop                                -- skip white space
      read(l, c, ok);
      exit when (ok = false) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
      report "TEXTIO.HREAD Error: Failed skipping white space"
        severity error;
      return;
    end if;
    Char2QuadBits(c, sv(0 to 3), ok, true);
    if not ok then
      return;
    end if;
    read(L, s, ok);
    if not ok then
      report "TEXTIO.HREAD Error: Failed to read the STRING"
        severity error;
      return;
    end if;
    for i in 1 to ne-1 loop
      Char2QuadBits(s(i), sv(4*i to 4*i+3), ok, true);
      if not ok then
        return;
      end if;
    end loop;
    if or_reduce (sv (0 to pad-1)) = '1' then
      report "TEXTIO.HREAD Error: Vector truncated"
        severity error;
    else
      VALUE := sv (pad to sv'high);
    end if;
  end procedure HREAD;

  procedure HWRITE (L         : inout LINE;
                    VALUE     : in    BIT_VECTOR;
                    JUSTIFIED : in    SIDE  := right;
                    FIELD     : in    WIDTH := 0) is
  begin
    write (L          => L,
            VALUE     => to_hstring(VALUE),
            JUSTIFIED => JUSTIFIED,
            FIELD     => FIELD);
  end procedure HWRITE;

  -- Procedure only visible internally.
  procedure Char2TriBits (C           :     CHARACTER;
                          RESULT      : out BIT_VECTOR(2 downto 0);
                          GOOD        : out BOOLEAN;
                          ISSUE_ERROR : in  BOOLEAN) is
  begin
    case c is
      when '0'    => result := o"0"; good := true;
      when '1'    => result := o"1"; good := true;
      when '2'    => result := o"2"; good := true;
      when '3'    => result := o"3"; good := true;
      when '4'    => result := o"4"; good := true;
      when '5'    => result := o"5"; good := true;
      when '6'    => result := o"6"; good := true;
      when '7'    => result := o"7"; good := true;
      when others =>
        assert not ISSUE_ERROR
          report
          "TEXTIO.OREAD Error: Read a '" & c &
          "', expected an Octal character (0-7)."
          severity error;
        GOOD := false;
    end case;
  end procedure Char2TriBits;

  -- Read and Write procedures for Octal values
  procedure OREAD (L     : inout LINE;
                   VALUE : out   BIT_VECTOR;
                   GOOD  : out   BOOLEAN) is
    variable ok  : BOOLEAN;
    variable c   : CHARACTER;
    constant ne  : INTEGER                   := (VALUE'length+2)/3;
    constant pad : INTEGER                   := ne*3 - VALUE'length;
    variable sv  : BIT_VECTOR(0 to ne*3 - 1) := (others => '0');
    variable s   : STRING(1 to ne-1);
  begin
    VALUE (VALUE'range) := (others => '0');
    loop                                -- skip white space
      read(l, c, ok);
      exit when (ok = false) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
      GOOD := false;
      return;
    end if;
    Char2TriBits(c, sv(0 to 2), ok, false);
    if not ok then
      GOOD := false;
      return;
    end if;
    read(L, s, ok);
    if not ok then
      GOOD := false;
      return;
    end if;
    for i in 1 to ne-1 loop
      Char2TriBits(s(i), sv(3*i to 3*i+2), ok, false);
      if not ok then
        GOOD := false;
        return;
      end if;
    end loop;
    if or_reduce (sv (0 to pad-1)) = '1' then
      GOOD := false;                    -- vector was truncated.
    else
      GOOD  := true;
      VALUE := sv (pad to sv'high);
    end if;
  end procedure OREAD;

  procedure OREAD (L     : inout LINE;
                   VALUE : out   BIT_VECTOR) is
    variable c   : CHARACTER;
    variable ok  : BOOLEAN;
    constant ne  : INTEGER                   := (VALUE'length+2)/3;
    constant pad : INTEGER                   := ne*3 - VALUE'length;
    variable sv  : BIT_VECTOR(0 to ne*3 - 1) := (others => '0');
    variable s   : STRING(1 to ne-1);
  begin
    VALUE (VALUE'range) := (others => '0');
    loop                                -- skip white space
      read(l, c, ok);
      exit when (ok = false) or ((c /= ' ') and (c /= NBSP) and (c /= HT));
    end loop;
    -- Bail out if there was a bad read
    if not ok then
      report "TEXTIO.OREAD Error: Failed skipping white space"
        severity error;
      return;
    end if;
    Char2TriBits(c, sv(0 to 2), ok, true);
    if not ok then
      return;
    end if;
    read(L, s, ok);
    if not ok then
      report "TEXTIO.OREAD Error: Failed to read the STRING"
        severity error;
      return;
    end if;
    for i in 1 to ne-1 loop
      Char2TriBits(s(i), sv(3*i to 3*i+2), ok, true);
      if not ok then
        return;
      end if;
    end loop;
    if or_reduce (sv (0 to pad-1)) = '1' then
      report "TEXTIO.OREAD Error: Vector truncated"
        severity error;
    else
      VALUE := sv (pad to sv'high);
    end if;
  end procedure OREAD;

  procedure OWRITE (L         : inout LINE;
                    VALUE     : in    BIT_VECTOR;
                    JUSTIFIED : in    SIDE  := right;
                    FIELD     : in    WIDTH := 0) is
  begin
    write (L         => L,
           VALUE     => to_ostring(VALUE),
           JUSTIFIED => JUSTIFIED,
           FIELD     => FIELD);
  end procedure OWRITE;

  -- Read and Write procedures for Binary values
  -- alias BREAD is READ [LINE, BIT_VECTOR, BOOLEAN];
  -- alias BREAD is READ [LINE, BIT_VECTOR];
  -- alias BWRITE is WRITE [LINE, BIT_VECTOR, SIDE, WIDTH];

  -- read and write for vector versions
  -- These versions produce "value1, value2, value3 ...."
  procedure read (L     : inout LINE;
                  VALUE : out   boolean_vector;
                  GOOD  : out   BOOLEAN) is
    variable dummy : CHARACTER;
    variable igood : BOOLEAN := true;
  begin
    for i in VALUE'range loop
      read (L => L,
            VALUE => VALUE(i),
            GOOD => igood);
      if (igood) and (i /= value'right) then
       read (L => L,
              VALUE => dummy,           -- Toss the comma or seperator
              good => igood);
      end if;
      if (not igood) then
        good := false;
        return;
      end if;
    end loop;
    good := true;
  end procedure read;
  procedure read (L     : inout LINE;
                  VALUE : out   boolean_vector) is
    variable dummy : CHARACTER;
    variable igood : BOOLEAN;
  begin
    for i in VALUE'range loop
      read (L => L,
            VALUE => VALUE(i),
            good => igood);
      if (igood) and (i /= value'right) then
       read (L => L,
              VALUE => dummy,           -- Toss the comma or seperator
              good => igood);
      end if;
      if (not igood) then
        report "STANDARD.STD_TEXTIO(BOOLEAN_VECTOR) "
          & "Read error ecounted during vector read" severity error;
        return;
      end if;
    end loop;
  end procedure read;
  procedure write (L         : inout LINE;
                   VALUE     : in    boolean_vector;
                   JUSTIFIED : in    SIDE  := right;
                   FIELD     : in    WIDTH := 0) is
  begin
    for i in VALUE'range loop
      write (L         => L,
             VALUE     => VALUE(i),
             JUSTIFIED => JUSTIFIED,
             FIELD     => FIELD);
      if (i /= value'right) then
        swrite (L, ", ");
      end if;
    end loop;
  end procedure write;
  procedure read (L     : inout LINE;
                  VALUE : out   integer_vector;
                  GOOD  : out   BOOLEAN) is
    variable dummy : CHARACTER;
    variable igood : BOOLEAN := true;
  begin
    for i in VALUE'range loop
      read (L => L,
            VALUE => VALUE(i),
            GOOD => igood);
      if (igood) and (i /= value'right) then
       read (L => L,
              VALUE => dummy,           -- Toss the comma or seperator
              good => igood);
      end if;
      if (not igood) then
        good := false;
        return;
      end if;
    end loop;
    good := true;
  end procedure read;
  procedure read (L     : inout LINE;
                  VALUE : out   integer_vector) is
    variable dummy : CHARACTER;
    variable igood : BOOLEAN;
  begin
    for i in VALUE'range loop
      read (L => L,
            VALUE => VALUE(i),
            good => igood);
      if (igood) and (i /= value'right) then
       read (L => L,
              VALUE => dummy,           -- Toss the comma or seperator
              good => igood);
      end if;
      if (not igood) then
        report "STANDARD.STD_TEXTIO(INTEGER_VECTOR) "
          & "Read error ecounted during vector read" severity error;
        return;
      end if;
    end loop;
  end procedure read;
  procedure write (L         : inout LINE;
                   VALUE     : in    integer_vector;
                   JUSTIFIED : in    SIDE  := right;
                   FIELD     : in    WIDTH := 0) is
  begin
    for i in VALUE'range loop
      write (L         => L,
             VALUE     => VALUE(i),
             JUSTIFIED => JUSTIFIED,
             FIELD     => FIELD);
      if (i /= value'right) then
        swrite (L, ", ");
      end if;
    end loop;
  end procedure write;
  procedure read (L     : inout LINE;
                  VALUE : out   real_vector;
                  GOOD  : out   BOOLEAN) is
    variable dummy : CHARACTER;
    variable igood : BOOLEAN := true;
  begin
    for i in VALUE'range loop
      read (L => L,
            VALUE => VALUE(i),
            GOOD => igood);
      if (igood) and (i /= value'right) then
       read (L => L,
              VALUE => dummy,           -- Toss the comma or seperator
              good => igood);
      end if;
      if (not igood) then
        good := false;
        return;
      end if;
    end loop;
    good := true;
  end procedure read;
  procedure read (L     : inout LINE;
                  VALUE : out   real_vector) is
    variable dummy : CHARACTER;
    variable igood : BOOLEAN;
  begin
    for i in VALUE'range loop
      read (L => L,
            VALUE => VALUE(i),
            good => igood);
      if (igood) and (i /= value'right) then
       read (L => L,
              VALUE => dummy,           -- Toss the comma or seperator
              good => igood);
      end if;
      if (not igood) then
        report "STANDARD.STD_TEXTIO(REAL_VECTOR) "
          & "Read error ecounted during vector read" severity error;
        return;
      end if;
    end loop;
  end procedure read;
  procedure write (L         : inout LINE;
                   VALUE     : in    real_vector;
                   JUSTIFIED : in    SIDE    := right;
                   FIELD     : in    WIDTH   := 0;
                   DIGITS    : in    NATURAL := 0) is
  begin
    for i in VALUE'range loop
      write (L         => L,
             VALUE     => VALUE(i),
             JUSTIFIED => JUSTIFIED,
             FIELD     => FIELD,
             DIGITS    => DIGITS);
      if (i /= value'right) then
        swrite (L, ", ");
      end if;
    end loop;
  end procedure write;
  procedure read (L     : inout LINE;
                  VALUE : out   time_vector;
                  GOOD  : out   BOOLEAN) is
    variable dummy : CHARACTER;
    variable igood : BOOLEAN := true;
  begin
    for i in VALUE'range loop
      read (L => L,
            VALUE => VALUE(i),
            GOOD => igood);
      if (igood) and (i /= value'right) then
       read (L => L,
              VALUE => dummy,           -- Toss the comma or seperator
              good => igood);
      end if;
      if (not igood) then
        good := false;
        return;
      end if;
    end loop;
    good := true;
  end procedure read;
  procedure read (L     : inout LINE;
                  VALUE : out   time_vector) is
    variable dummy : CHARACTER;
    variable igood : BOOLEAN;
  begin
    for i in VALUE'range loop
      read (L => L,
            VALUE => VALUE(i),
            good => igood);
      if (igood) and (i /= value'right) then
       read (L => L,
              VALUE => dummy,           -- Toss the comma or seperator
              good => igood);
      end if;
      if (not igood) then
        report "STANDARD.STD_TEXTIO(TIME_VECTOR) "
          & "Read error ecounted during vector read" severity error;
        return;
      end if;
    end loop;
  end procedure read;
  procedure write (L         : inout LINE;
                   VALUE     : in    time_vector;
                   JUSTIFIED : in    SIDE  := right;
                   FIELD     : in    WIDTH := 0;
                   UNIT      : in    TIME  := ns) is
  begin
    for i in VALUE'range loop
      write (L         => L,
             VALUE     => VALUE(i),
             JUSTIFIED => JUSTIFIED,
             FIELD     => FIELD,
             UNIT      => UNIT);
      if (i /= value'right) then
        swrite (L, ", ");
      end if;
    end loop;
  end procedure write;

-------------------------------------------------------------------
-- TO_STRING
-------------------------------------------------------------------
  function justify (
    value     : in STRING;
    justified : in SIDE  := right;
    field     : in width := 0)
    return STRING is
    constant VAL_LEN : INTEGER             := value'length;
    variable result  : STRING (1 to field) := (others => ' ');
  begin  -- function justify
    -- return value if field is too small
    if VAL_LEN >= field then
      return value;
    end if;
    if justified = left then
      result(1 to VAL_LEN) := value;
    elsif justified = right then
      result(field - VAL_LEN + 1 to field) := value;
    end if;
    return result;
  end function justify;

  -----------------------------------------------------------------------------
  -- to_string funcitons for bit_vector
  -----------------------------------------------------------------------------
  function to_string (
    value     : in BIT_VECTOR;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING is
    alias ivalue    : BIT_VECTOR(1 to value'length) is value;
    variable result : STRING(1 to value'length);
  begin
    if value'length < 1 then
      return NUS;
    else
      for i in ivalue'range loop
        if iValue(i) = '0' then
          result(i) := '0';
        else
          result(i) := '1';
        end if;
      end loop;
      return justify(result, justified, field);
    end if;
  end function to_string;

  -- alias to_bstring is to_string [BIT_VECTOR, SIDE, WIDTH return STRING];
  -------------------------------------------------------------------
  -- TO_HSTRING
  -------------------------------------------------------------------
  function to_hstring (
    value     : in BIT_VECTOR;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING is
    constant ne     : INTEGER                                    := (value'length+3)/4;
    constant pad    : BIT_VECTOR(0 to (ne*4 - value'length) - 1) := (others => '0');
    variable ivalue : BIT_VECTOR(0 to ne*4 - 1);
    variable result : STRING(1 to ne);
    variable quad   : BIT_VECTOR(0 to 3);
  begin
    if value'length < 1 then
      return NUS;
    end if;
    ivalue := pad & value;
    for i in 0 to ne-1 loop
      quad := ivalue(4*i to 4*i+3);
      case quad is
        when x"0" => result(i+1) := '0';
        when x"1" => result(i+1) := '1';
        when x"2" => result(i+1) := '2';
        when x"3" => result(i+1) := '3';
        when x"4" => result(i+1) := '4';
        when x"5" => result(i+1) := '5';
        when x"6" => result(i+1) := '6';
        when x"7" => result(i+1) := '7';
        when x"8" => result(i+1) := '8';
        when x"9" => result(i+1) := '9';
        when x"A" => result(i+1) := 'A';
        when x"B" => result(i+1) := 'B';
        when x"C" => result(i+1) := 'C';
        when x"D" => result(i+1) := 'D';
        when x"E" => result(i+1) := 'E';
        when x"F" => result(i+1) := 'F';
      end case;
    end loop;
    return justify(result, justified, field);
  end function to_hstring;

  -------------------------------------------------------------------
  -- TO_OSTRING
  -------------------------------------------------------------------
  function to_ostring (
    value     : in BIT_VECTOR;
    justified : in SIDE  := right;
    field     : in width := 0
    ) return STRING is
    constant ne     : INTEGER                                    := (value'length+2)/3;
    constant pad    : BIT_VECTOR(0 to (ne*3 - value'length) - 1) := (others => '0');
    variable ivalue : BIT_VECTOR(0 to ne*3 - 1);
    variable result : STRING(1 to ne);
    variable tri    : BIT_VECTOR(0 to 2);
  begin
    if value'length < 1 then
      return NUS;
    end if;
    ivalue := pad & value;
    for i in 0 to ne-1 loop
      tri := ivalue(3*i to 3*i+2);
      case tri is
        when o"0" => result(i+1) := '0';
        when o"1" => result(i+1) := '1';
        when o"2" => result(i+1) := '2';
        when o"3" => result(i+1) := '3';
        when o"4" => result(i+1) := '4';
        when o"5" => result(i+1) := '5';
        when o"6" => result(i+1) := '6';
        when o"7" => result(i+1) := '7';
      end case;
    end loop;
    return justify(result, justified, field);
  end function to_ostring;

  -----------------------------------------------------------------------------
  -- To_string for integer, real, boolean, etc.
  -----------------------------------------------------------------------------
  function to_string (
    VALUE     : in INTEGER;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
  begin
    return justify (value     => INTEGER'image(VALUE),
                    justified => JUSTIFIED,
                    field     => FIELD);
  end function to_string;

  function to_string (
    VALUE     : in BIT;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
    variable result : STRING(1 to 1);
  begin
    if (value = '0') then
      result := "0";
    else
      result := "1";
    end if;
    return justify(value     => result,
                   justified => JUSTIFIED,
                   field     => FIELD);
  end function to_string;

  function to_string (
    VALUE     : in BOOLEAN;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
  begin
    return justify(value     => BOOLEAN'image(VALUE),
                   justified => JUSTIFIED,
                   field     => FIELD);
  end function to_string;

  function to_string (
    VALUE     : in SEVERITY_LEVEL;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
  begin
    return justify(value     => SEVERITY_LEVEL'image(VALUE),
                   justified => JUSTIFIED,
                   field     => FIELD);
  end function to_string;

  function to_string (
    VALUE     : in FILE_OPEN_KIND;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
  begin
    return justify(value     => FILE_OPEN_KIND'image(VALUE),
                   justified => JUSTIFIED,
                   field     => FIELD);
  end function to_string;

  function to_string (
    VALUE     : in FILE_OPEN_STATUS;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
  begin
    return justify(value     => FILE_OPEN_STATUS'image(VALUE),
                   justified => JUSTIFIED,
                   field     => FIELD);
  end function to_string;

  function to_string (
    VALUE     : in SIDE;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
  begin
    return justify(value     => SIDE'image(VALUE),
                   justified => JUSTIFIED,
                   field     => FIELD);
  end function to_string;

  function to_string (
    VALUE     : in REAL;
    JUSTIFIED : in SIDE    := right;
    FIELD     : in WIDTH   := 0;
    DIGITS    : in NATURAL := 0
    ) return STRING is
  begin
    if (DIGITS /= 0) then
      return justify (value => to_string (VALUE, "%1."
                                          & integer'image(DIGITS)
                                          & "f"),
                      JUSTIFIED => JUSTIFIED,
                      FIELD     => FIELD);
    else
      return justify (value     => REAL'image(VALUE),
                      JUSTIFIED => JUSTIFIED,
                      FIELD     => FIELD);
    end if;
  end function to_string;

  -- %%% Remove this funciton (will be implicit in vhdl 200x
  function maximum (l, r : integer)
    return integer is
  begin  -- function maximum
    if L > R then return L;
    else return R;
    end if;
  end function maximum;

  function to_string (
    VALUE  : in REAL;
--    JUSTIFIED : SIDE   := right;
--    FIELD     : WIDTH  := 0;
    format : in STRING                  -- %f6.2
    ) return STRING is
    constant czero      : CHARACTER := '0';   -- zero
    constant half       : REAL      := 0.4999999999;  -- almost 0.5
    -- Log10 funciton
    function log10 (arg : real) return integer is
      variable i : integer := 1;
    begin
      if ((arg = 0.0)) then
        return 0;
      elsif arg >= 1.0 then
        while arg >= 10.0**i loop
          i := i + 1;
        end loop;
        return (i-1);
      else
        while arg < 10.0**i loop
          i := i - 1;
        end loop;
        return i;
      end if;
    end function log10;
    -- purpose: writes a fractional real number into a line
    procedure writefrc (
      variable L         : inout LINE;  -- LINE
      variable cdes      : in    CHARACTER;
      variable precision : in    INTEGER;     -- number of decimal places
      variable value     : in    REAL) is     -- real value
      variable rvar  : REAL;            -- temp variable
      variable xint  : INTEGER;
      variable xreal : REAL;
    begin
      xreal := (10.0**(-precision));
      write (L, '.');
      rvar  := value;
      for i in 1 to precision loop
        rvar  := rvar * 10.0;
        xint  := integer(rvar-0.49999999999);         -- round
        write (L, xint);
        rvar  := rvar - real(xint);
        xreal := xreal * 10.0;
        if (cdes = 'g') and (rvar < xreal) then
          exit;
        end if;
      end loop;
    end procedure writefrc;
    -- purpose: replace the "." with a "@", and "e" with "j" to get around
    -- read ("6.") and read ("2e") issues.
    function subdot (
      constant format : STRING)
      return STRING is
      variable result : STRING (format'range);
    begin
      for i in format'range loop
        if (format(i) = '.') then
          result(i) := '@';             -- Because the parser reads 6.2 as REAL
        elsif (format(i) = 'e') then
          result(i) := 'j';             -- Because the parser read 2e as REAL
        elsif (format(i) = 'E') then
          result(i) := 'J';             -- Because the parser reads 2E as REAL
        else
          result(i) := format(i);
        end if;
      end loop;
      return result;
    end function subdot;
    -- purpose: find a . in a STRING
    function isdot (
      constant format : STRING)
      return BOOLEAN is
    begin
      for i in format'range loop
        if (format(i) = '@') then
          return true;
        end if;
      end loop;
      return false;
    end function isdot;
    variable exp            : INTEGER;  -- integer version of baseexp
    variable bvalue         : REAL;     -- base value
    variable roundvar, tvar : REAL;     -- Rounding values
    variable frcptr         : INTEGER;  -- integer version of number
    variable fwidth, dwidth : INTEGER;  -- field width and decimal width
    variable dash, dot      : BOOLEAN   := false;
    variable cdes, ddes     : CHARACTER := ' ';
    variable L              : LINE;     -- line type
  begin
    -- Perform the same function that "printf" does
    -- examples "%6.2f" "%-7e" "%g"
    if not (format(format'left) = '%') then
      report "to_string: Illegal format string """ & format & '"'
        severity error;
      return "";
    end if;
    L := new string'(subdot(format));
    read (L, ddes);                     -- toss the '%'
    case L.all(1) is
      when '-'                                     => dash := true;
      when '@'                                     => dash := true;  -- in FP, a "-" and a "." are the same
      when 'f'                                     => cdes := 'f';
      when 'F'                                     => cdes := 'F';
      when 'g'                                     => cdes := 'g';
      when 'G'                                     => cdes := 'G';
      when 'j'                                     => cdes := 'e';  -- parser reads 5e as real, thus we sub j
      when 'J'                                     => cdes := 'E';
      when '0'|'1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9' => null;
      when others                                  =>
        report "to_string: Illegal format string """ & format & '"'
          severity error;
        return "";
    end case;
    if (dash or (cdes /= ' ')) then
      read (L, ddes);                   -- toss the next character
    end if;
    if (cdes = ' ') then
      if (isdot(L.all)) then            -- if you see a . two numbers
        read (L, fwidth);               -- read field width
        read (L, ddes);                 -- toss the next character .
        read (L, dwidth);               -- read decimal width
      else
        read (L, fwidth);               -- read field width
        dwidth := 6;                    -- the default decimal width is 6
      end if;
      read (L, cdes);
      if (cdes = 'j') then
        cdes := 'e';                    -- because 2e reads as "REAL".
      elsif (cdes = 'J') then
        cdes := 'E';
      end if;
    else
      if (cdes = 'E' or cdes = 'e') then
        fwidth := 10;                   -- default for e and E is %10.6e
      else
        fwidth := 0;                    -- default for f and g is %0.6f
      end if;
      dwidth := 6;
    end if;
    deallocate (L);                     -- reclame the pointer L.
--      assert (not debug) report "Format: " & format & " "
--        & INTEGER'image(fwidth) & "." & INTEGER'image(dwidth) & cdes
--        severity note;
    if (not (cdes = 'f' or cdes = 'F' or cdes = 'g' or cdes = 'G'
             or cdes = 'e' or cdes = 'E')) then
      report "to_string: Illegal format """ & format & '"' severity error;
      return "";
    end if;
    if (VALUE < 0.0) then
      bvalue := -value;
      write (L, '-');
    else
      bvalue := value;
    end if;
    case cdes is
      when 'e' | 'E' =>                 -- 7.000E+01
        exp      := log10(bvalue);
        roundvar := half*(10.0**(exp-dwidth));
        bvalue   := bvalue + roundvar;  -- round
        exp      := log10(bvalue);      -- because we CAN overflow
        bvalue   := bvalue * (10.0**(-exp));  -- result is D.XXXXXX
        frcptr   := integer(bvalue-half);     -- Write a single digit.
        write (L, frcptr);
        bvalue   := bvalue - real(frcptr);
        writefrc (                      -- Write out the fraction
          L         => L,
          cdes      => cdes,
          precision => dwidth,
          value     => bvalue);
        write (L, cdes);                -- e or E
        if (exp < 0) then
          write (L, '-');
        else
          write (L, '+');
        end if;
        exp := abs(exp);
        if (exp < 10) then              -- we need another "0".
          write (L, czero);
        end if;
        write (L, exp);
      when 'f' | 'F' =>                 -- 70.0
        exp      := log10(bvalue);
        roundvar := half*(10.0**(-dwidth));
        bvalue   := bvalue + roundvar;  -- round
        exp      := log10(bvalue);      -- because we CAN overflow
        if (exp < 0) then               -- 0.X case
          write (L, czero);
        else                            -- loop because real'high > integer'high
          while (exp >= 0) loop
            frcptr := integer(bvalue * (10.0**(-exp)) - half);
            write (L, frcptr);
            bvalue := bvalue - (real(frcptr) * (10.0**exp));
            exp    := exp-1;
          end loop;
        end if;
        writefrc (
          L         => L,
          cdes      => cdes,
          precision => dwidth,
          value     => bvalue);
      when 'g' | 'G' =>                 -- 70
        exp      := log10(bvalue);
        roundvar := half*(10.0**(exp-dwidth));        -- small number
        bvalue   := bvalue + roundvar;  -- round
        exp      := log10(bvalue);      -- because we CAN overflow
        frcptr   := integer(bvalue-half);
        tvar     := bvalue-roundvar - real(frcptr);   -- even smaller number
        if (exp < dwidth)
          and (tvar < roundvar and tvar > -roundvar) then
--            and ((bvalue-roundvar) = real(frcptr)) then
          write (L, frcptr);            -- Just a short integer, write it.
        elsif (exp >= dwidth) or (exp < -4) then
          -- in "e" format (modified)
          bvalue := bvalue * (10.0**(-exp));  -- result is D.XXXXXX
          frcptr := integer(bvalue-half);
          write (L, frcptr);
          bvalue := bvalue - real(frcptr);
          if (bvalue > (10.0**(1-dwidth))) then
            dwidth := dwidth - 1;
            writefrc (
              L         => L,
              cdes      => cdes,
              precision => dwidth,
              value     => bvalue);
          end if;
          if (cdes = 'G') then
            write (L, 'E');
          else
            write (L, 'e');
          end if;
          if (exp < 0) then
            write (L, '-');
          else
            write (L, '+');
          end if;
          exp := abs(exp);
          if (exp < 10) then
            write (L, czero);
          end if;
          write (L, exp);
        else
          -- in "f" format (modified)
          if (exp < 0) then
            write (L, czero);
            dwidth   := maximum (dwidth, 4);  -- if exp < -4 or > precision.
            bvalue   := bvalue - roundvar;    -- recalculate rounding
            roundvar := half*(10.0**(-dwidth));
            bvalue   := bvalue + roundvar;
          else
            write (L, frcptr);          -- integer part (always small)
            bvalue := bvalue - (real(frcptr));
            dwidth := dwidth - exp - 1;
          end if;
          if (bvalue > roundvar) then
            writefrc (
              L         => L,
              cdes      => cdes,
              precision => dwidth,
              value     => bvalue);
          end if;
        end if;
      when others => return "";
    end case;
    -- You don't truncate real numbers.
--      if (dot) then                 -- truncate
--        if (L.all'length > fwidth) then
--          return justify (value => L.all (1 to fwidth),
--                          justified => RIGHT,
--                          field => fwidth);
--        else
--          return justify (value => L.all,
--                          justified => RIGHT,
--                          field => fwidth);
--        end if;
    if (dash) then                      -- fill to fwidth
      return justify (value     => L.all,
                      justified => LEFT,
                      field     => fwidth);
    else
      return justify (value     => L.all,
                      justified => RIGHT,
                      field     => fwidth);
    end if;
  end function to_string;

  -- if the time is 1 ns, and the unit is 1 ps,
  -- then to_string(now) = 1000.0 ps;
  function to_string (
    VALUE     : in TIME;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0;
    UNIT      : in TIME  := ns
    ) return STRING is
    variable L : LINE;                  -- pointer
  begin
    deallocate (L);
    write (L         => L,
           VALUE     => VALUE,
           JUSTIFIED => JUSTIFIED,
           FIELD     => FIELD,
           UNIT      => UNIT);
    return L.all;
  end function to_string;

  -- vector versions
  function to_string (
    VALUE     : in BOOLEAN_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
    variable L : LINE;
  begin
    deallocate (L);
    write (L         => L,
           VALUE     => VALUE,
           JUSTIFIED => JUSTIFIED,
           FIELD     => FIELD);
    return L.all;
  end function to_string;
  function to_string (
    VALUE     : in INTEGER_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0
    ) return STRING is
    variable L : LINE;
  begin
    deallocate (L);
    write (L         => L,
           VALUE     => VALUE,
           JUSTIFIED => JUSTIFIED,
           FIELD     => FIELD);
    return L.all;
  end function to_string;
  function to_string (
    VALUE     : in REAL_VECTOR;
    JUSTIFIED : in SIDE    := right;
    FIELD     : in WIDTH   := 0;
    DIGITS    : in NATURAL := 0
    ) return STRING is
    variable L : LINE;
  begin
    deallocate (L);
    write (L         => L,
           VALUE     => VALUE,
           JUSTIFIED => JUSTIFIED,
           FIELD     => FIELD,
           DIGITS    => DIGITS);
    return L.all;
  end function to_string;
  function to_string (
    VALUE  : in REAL_VECTOR;
    format : in STRING
    ) return STRING is
    variable L : LINE;
  begin
    deallocate (L);
    for i in VALUE'range loop
      write ( L => L,
              VALUE => to_string ( VALUE => VALUE(i),
                                    format => format));
      if (i /= VALUE'right) then
        SWRITE (L => L,
               VALUE => ", ");
      end if;
    end loop;
    return L.all;
  end function to_string;
  function to_string (
    VALUE     : in TIME_VECTOR;
    JUSTIFIED : in SIDE  := right;
    FIELD     : in WIDTH := 0;
    UNIT      : in TIME  := ns
    ) return STRING is
    variable L : LINE;
  begin
    deallocate (L);
    write (L         => L,
           VALUE     => VALUE,
           JUSTIFIED => JUSTIFIED,
           FIELD     => FIELD,
           UNIT      => UNIT);
    return L.all;
  end function to_string;
end package body standard_textio_additions;

USE std.textio.ALL;
PACKAGE io_utils IS

    PROCEDURE write_string(l : INOUT line;
                           value : IN string;
                           justified : IN side := right;
                           field : IN width := 0);

    TYPE radix IS (binary, octal, decimal, hex);

    -- read a number from the line
    -- use this if you have hex numbers that are not in VHDL pound-sign format
    PROCEDURE read(l : INOUT line; value : OUT integer;  radix : IN positive);

    -- read a number that might be in VHDL pound-sign format
    PROCEDURE read_based(l : INOUT line; value : OUT integer);

    PROCEDURE write(l : INOUT line;
                    value : IN bit_vector;
                    justified : IN side := right;
                    field : IN width := 0;
                    base : IN radix;
                    use_pound : boolean := false);

    PROCEDURE write(l : INOUT line;
                    value : IN integer;
                    justified : IN side := right;
                    field : IN width := 0;
                    base : IN radix;
                    use_pound : boolean := false);
END io_utils;

PACKAGE BODY io_utils IS

    PROCEDURE write_string(l : INOUT line;
                           value : IN string;
                           justified : IN side := right;
                           field : IN width := 0)
    IS
    BEGIN
        write(l, value, justified, field);
    END;

    PROCEDURE shrink_line(l : INOUT line; pos : integer) IS
        VARIABLE tmpl : line;
    BEGIN
        tmpl := l;
        l := NEW string'(tmpl(pos TO tmpl'high));
        deallocate(tmpl);
    END;

    PROCEDURE read(l : INOUT line;
                   value : OUT integer;
                   radix : IN positive)
    IS
        CONSTANT not_digit : integer := -999;

        -- convert a character to a value from 0 to 15
        FUNCTION digit_value(c : character) RETURN integer IS
        BEGIN
            IF (c >= '0') AND (c <= '9') THEN
                RETURN (character'pos(c) - character'pos('0'));
            ELSIF (c >= 'a') AND (c <= 'f') THEN
                RETURN (character'pos(c) - character'pos('a') + 10);
            ELSIF (c >= 'A') AND (c <= 'F') THEN
                RETURN (character'pos(c) - character'pos('A') + 10);
            ELSE
                RETURN not_digit;
            END IF;
        END;

        -- skip leading white space in the line
        PROCEDURE skip_white(VARIABLE l : IN line; pos : OUT integer) IS
        BEGIN
            pos := l'low;
            FOR i IN l'low TO l'high LOOP
                CASE l(i) IS
                    WHEN ' ' | ht  =>
                        pos := i + 1;
                    WHEN OTHERS =>
                        EXIT;
                END CASE;
            END LOOP;
        END;

        VARIABLE digit : integer;
        VARIABLE result : integer := 0;
        VARIABLE pos : integer;
    BEGIN
        -- skip white space
        skip_white(l, pos);

        -- calculate the value
        FOR i IN pos TO l'right LOOP
            digit := digit_value(l(i));
            EXIT WHEN (digit = not_digit) OR (digit >= radix);
            result := result * radix + digit;
            pos := i + 1;
        END LOOP;
        value := result;

        -- remove the "used" characters from the line
        shrink_line(l, pos);
    END;

    PROCEDURE read_based(l : INOUT line; value : OUT integer) IS
        VARIABLE digit : integer;
        VARIABLE num : integer;
        VARIABLE base : integer;
    BEGIN
        read(l, num, 10);
        IF (l'length > 1) AND (l(l'left) = '#') THEN
            shrink_line(l, l'left+1);
            base := num;
            read(l, num, base);
            IF (l'length >= 1) AND (l(l'left) = '#') THEN
                shrink_line(l, l'left+1);
            END IF;
        END IF;
        value := num;
    END;

    PROCEDURE write(l : INOUT line;
                    value : IN bit_vector;
                    justified : IN side := right;
                    field : IN width := 0;
                    base : IN radix;
                    use_pound : boolean := false)
    IS
        FUNCTION to_int(bv : bit_vector) RETURN integer
        IS
            VARIABLE result : integer := 0;
        BEGIN
            FOR i IN bv'RANGE LOOP
                result := result * 2;
                IF (bv(i) = '1') THEN
                    result := result + 1;
                END IF;
            END LOOP;
            RETURN result;
        END;

        TYPE array_of_widths IS ARRAY(radix) OF natural;
        CONSTANT nibble_widths : array_of_widths := (
            binary => 1,
            octal  => 3,
            hex    => 4,
            decimal=> 32);
        CONSTANT hex_digit : string(1 TO 16) := "0123456789ABCDEF";

        ALIAS input_val : bit_vector(value'length DOWNTO 1) IS value;
        CONSTANT nibble_width : natural := nibble_widths(base);
        CONSTANT result_width : natural := (value'length + nibble_width - 1)/nibble_width;

        VARIABLE result : string(1 TO result_width);  -- longest possible value
        VARIABLE result_pos : positive := 1;
        VARIABLE nibble_val : integer;
        VARIABLE bitcnt : integer;
    BEGIN
        IF base = decimal THEN
            write(l, to_int(value), justified, field, base, use_pound);
            RETURN;
        END IF;

        bitcnt := value'length MOD nibble_width;
        IF (bitcnt = 0) THEN
            bitcnt := nibble_width;
        END IF;
        FOR i IN input_val'RANGE LOOP
            nibble_val := nibble_val * 2;
            IF (input_val(i) = '1') THEN
                nibble_val := nibble_val + 1;
            END IF;
            bitcnt := bitcnt - 1;
            IF (bitcnt = 0) THEN
                result(result_pos) := hex_digit(nibble_val + 1);
                result_pos := result_pos + 1;
                nibble_val := 0;
                bitcnt := nibble_width;
            END IF;
        END LOOP;
        write(l, result, justified, field);
    END;

    PROCEDURE write(l : INOUT line;
                    value : IN integer;
                    justified : IN side := right;
                    field : IN width := 0;
                    base : IN radix;
                    use_pound : boolean := false)
    IS
        FUNCTION to_bv(int : integer) RETURN bit_vector
        IS
            VARIABLE bv : bit_vector(32 DOWNTO 1) := (OTHERS => '0');
            VARIABLE pos : integer := 0;
            VARIABLE tmpval : integer := int;
        BEGIN
            FOR i IN 1 TO 32 LOOP
                pos := pos + 1;
                IF (tmpval MOD 2) = 1 THEN
                    bv(i) := '1';
                END IF;
                tmpval := tmpval / 2;
                EXIT WHEN tmpval = 0;
            END LOOP;
            RETURN bv(pos DOWNTO 1);
        END;

        VARIABLE tmp : line;
    BEGIN
        IF (base = decimal) THEN
            IF (use_pound) THEN
                write_string(tmp, "10#");
            END IF;
            write(tmp, value);
            IF (use_pound) THEN
                write_string(tmp, "#");
            END IF;
            write(l, tmp.ALL, justified, field);
            deallocate(tmp);
        ELSE
            write(l, to_bv(value), justified, field, base, use_pound);
        END IF;
    END;

END io_utils;



-- test the hex number reader
ENTITY test IS END;

USE std.textio.ALL;
USE work.io_utils.ALL;
ARCHITECTURE hex_test OF test IS
BEGIN
    PROCESS
        VARIABLE val : integer;
        FILE myfile : text IS IN "values";
        VARIABLE inline : line;
        VARIABLE outline : line;
    BEGIN
        WHILE NOT endfile(myfile) LOOP
            readline(myfile, inline);

            write(outline, inline.ALL);

            read_based(inline, val);
            write_string(outline, " binary: ");
            write(outline, val, base => binary);
            write_string(outline, " octal: ");
            write(outline, val, base => octal);
            write_string(outline, " decimal: ");
            write(outline, val, base => decimal);
            write_string(outline, " hex: ");
            write(outline, val, base => hex);
            writeline(output, outline);
        END LOOP;
        WAIT;
    END PROCESS;
END;

