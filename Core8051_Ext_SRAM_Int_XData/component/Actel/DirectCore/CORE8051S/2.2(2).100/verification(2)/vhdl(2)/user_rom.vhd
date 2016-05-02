-------------------------------------------------------------------------------
-- Copyright 2006 Actel Corporation.  All rights reserved.
-- IP Engineering
--
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--
-- File:            user_rom.vhd
--
-- Description:     ROM that reads external .dat ASCII file with one
--                  Hexadecimal byte per line - hex ASCII byte must be first
--                  character on line - anything after hex byte will be ignored
--
-- Rev:             1.2  Dec06
--
-- Notes:
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;

entity USER_ROM is
generic (
	WIDTH	:	integer	:= 8;			-- data width
	DEPTH	:	integer	:= 4096;		-- ROM depth
	ASIZE	:	integer	:= 12;			-- address width
	ROMFILE	:	string	:= "rom.hex"
);
port (
		clk		:	in		std_logic;  -- Clock input
		-- ROM address (for now, fixed for depth of 256)
		addr	:	in		std_logic_vector(ASIZE-1 downto 0);
		-- ROM data out (for now, fixed for width of 8), this will be
		-- available on next rising edge of clk
		dout	:	out		std_logic_vector(WIDTH-1 downto 0)
);

end USER_ROM;

architecture behv of USER_ROM is
	type memory is array (0 to DEPTH-1) of std_logic_vector(WIDTH-1 downto 0);
	signal store:		memory;
	signal initialized:	boolean := false;

	--------------------------------------------------------------------
	-- Converts std_logic_vector to natural
	--------------------------------------------------------------------
	function to_nat (input : std_logic_vector) return natural is
		variable result : natural;
		variable weight : natural;
	begin
		result:=0;
		weight:=1;
		for i in input'LOW to input'HIGH loop
			if (input(i)='1' or input(i)='H') then
				result := result + weight;
			end if;
			weight := weight * 2;
		end loop;
		return result;
	end to_nat;
	--------------------------------------------------------------------
	-- Converts hexadecimal string to natural
	--------------------------------------------------------------------
	function to_nat (input : string) return natural is
		variable result : natural;
	begin
		result:=0;
		for i in input'LEFT to input'RIGHT loop
			result := result * 16;
			case input(i) is
				when '0'      => result := result + 0;
				when '1'      => result := result + 1;
				when '2'      => result := result + 2;
				when '3'      => result := result + 3;
				when '4'      => result := result + 4;
				when '5'      => result := result + 5;
				when '6'      => result := result + 6;
				when '7'      => result := result + 7;
				when '8'      => result := result + 8;
				when '9'      => result := result + 9;
				when 'A'      => result := result + 10;
				when 'B'      => result := result + 11;
				when 'C'      => result := result + 12;
				when 'D'      => result := result + 13;
				when 'E'      => result := result + 14;
				when 'F'      => result := result + 15;
				when others   => null;
			end case;
		end loop;
		return result;
	end to_nat;
	--------------------------------------------------------------------
	-- Converts hexadecimal string to binary vector
	--------------------------------------------------------------------
	function to_std_logic_vector (input : string)
		return std_logic_vector is
		variable result : std_logic_vector(0 to 4*input'LENGTH-1);
	begin
		result := (others => '0');
		for i in input'LEFT to input'RIGHT loop
			case input(i) is
				when '0'      => result((i-1)*4 to 3+(i-1)*4):="0000";
				when '1'      => result((i-1)*4 to 3+(i-1)*4):="0001";
				when '2'      => result((i-1)*4 to 3+(i-1)*4):="0010";
				when '3'      => result((i-1)*4 to 3+(i-1)*4):="0011";
				when '4'      => result((i-1)*4 to 3+(i-1)*4):="0100";
				when '5'      => result((i-1)*4 to 3+(i-1)*4):="0101";
				when '6'      => result((i-1)*4 to 3+(i-1)*4):="0110";
				when '7'      => result((i-1)*4 to 3+(i-1)*4):="0111";
				when '8'      => result((i-1)*4 to 3+(i-1)*4):="1000";
				when '9'      => result((i-1)*4 to 3+(i-1)*4):="1001";
				when 'A'      => result((i-1)*4 to 3+(i-1)*4):="1010";
				when 'B'      => result((i-1)*4 to 3+(i-1)*4):="1011";
				when 'C'      => result((i-1)*4 to 3+(i-1)*4):="1100";
				when 'D'      => result((i-1)*4 to 3+(i-1)*4):="1101";
				when 'E'      => result((i-1)*4 to 3+(i-1)*4):="1110";
				when 'F'      => result((i-1)*4 to 3+(i-1)*4):="1111";
				when others   => null;
			end case;
		end loop;
		return result;
	end to_std_logic_vector;
	--------------------------------------------------------------------
	-- Initializing memory contents :
	--------------------------------------------------------------------
	function initmem return memory is
		file     source   : text is in ROMFILE;
		variable row      : line;
		variable char     : character;
		variable addr     : string(1 to 4);
		variable data     : string(1 to 2);
		variable data1    : string(1 to 2);
		variable number   : natural;
		variable address  : natural;
		variable checksum : natural;
		variable sum      : natural;
		variable vector   : std_logic_vector(7 downto 0);
		variable mem      : memory;
	begin
		for i in mem'range loop
			mem(i) := (others => '0');
		end loop;
		while not endfile(source) loop
			readline(source, row);
			if row'LENGTH>1 and row(1)=':' then
				READ(row, char);
				READ(row, data);
				number:=to_nat(data);
				sum      :=number;
				READ(row, data);
				checksum :=to_nat(data);
				sum      :=(sum+checksum) mod 256;
				READ(row, data1);
				checksum :=to_nat(data1);
				sum      :=(sum+checksum) mod 256;
				addr     :=data & data1;
				address  :=to_nat(addr);
				READ(row, data);
				checksum :=to_nat(data);
				sum      :=(sum+checksum) mod 256;
				while number>0 loop
					READ(row, data);
					vector   :=to_std_logic_vector(data);
					checksum :=to_nat(data);
					sum      :=(sum+checksum) mod 256;
					mem(address) := vector;
					address  :=address+1;
					number   :=number-1;
				end loop;
				READ(row, data);
				checksum :=to_nat(data);
				sum      :=(sum+checksum) mod 256;
				assert (sum=0)
					report "Invalid check sum" &
					" in the program memory init file."
					severity error;
			end if;
		end loop;
		return mem;
	end initmem;

-------------------------------------------------------------------------
-- main
-------------------------------------------------------------------------
begin

	----------------------------------------
	init_rom_proc :
	----------------------------------------
	process
		variable	storevar	: memory;
	begin
		if not initialized then
			storevar	:= initmem;
			initialized	<= true;
		end if;
		store	<= storevar;
		wait;	-- wait forever ...
	end process;

	---------------------------------------------------------------------
	read_rom_proc :
	---------------------------------------------------------------------
	process (clk)
		variable	doutvar	: std_logic_vector(WIDTH-1 downto 0);
	begin
		if clk'event and clk = '1' then
			doutvar	:= store(to_nat(addr));
		end if;
		dout	<= doutvar;
	end process;

end behv;
