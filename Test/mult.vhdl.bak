library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.P.all;

entity mult is 
	Port(
		R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: in vec_array;
		x: in vec_array;
		re: in std_logic;
		inter_in_m: in vec_array;
		continue_m: in natural range 0 to 1023;
		blip_m: out natural range 0 to 1023;
		inter_out_m: out o_vec_array;
		y: out o_vec_array
		);
end mult;

architecture ml of mult is

component dot_mult_par is 
	Port (a, b: in vec_array;
			c: out std_logic_vector (11 downto 0));
end component dot_mult_par;
	
	signal info: vec_array;
	signal info_out: o_vec_array;
	shared variable zero_out: o_vec_array := (others => (others => '0'));
	shared variable zero_in: vec_array := (others => (others => '0'));
	
begin 
	
	update: process (re ,continue_m)
	begin
		if (continue_m = 0 and re = '1') then 
		info <= x;
		elsif (continue_m > 0 and re = '1') then 
		info <= inter_in_m;
		else
		info <= zero_in;
		end if;
	end process update;
	
	y <= info_out when (continue_m >= 100 and re = '1') else
		  zero_out;
	
	inter_out_m <= info_out when (continue_m < 100 and re = '1') else
						zero_out;
				  
	d0: dot_mult_par port map (
									a => R0,
									b => info,
									c => info_out (0));
	d1: dot_mult_par port map (
									a => R1,
									b => info,
									c => info_out (1));
	d2: dot_mult_par port map (
									a => R2,
									b => info,
									c => info_out (2));
	d3: dot_mult_par port map (
									a => R3,
									b => info,
									c => info_out (3));
	d4: dot_mult_par port map (
									a => R4,
									b => info,
									c => info_out (4));
	d5: dot_mult_par port map (
									a => R5,
									b => info,
									c => info_out (5));
	d6: dot_mult_par port map (
									a => R6,
									b => info,
									c => info_out (6));
	d7: dot_mult_par port map (
									a => R7,
									b => info,
									c => info_out (7));
	d8: dot_mult_par port map (
									a => R8,
									b => info,
									c => info_out (8));
	d9: dot_mult_par port map (
									a => R9,
									b => info,
									c => info_out (9));
end ml;