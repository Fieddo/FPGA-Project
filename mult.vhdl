library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.P.all;

entity mult is 
	Port(
		R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: in vec_array;
		re: in std_logic;
		x: in vec_array;
		inter_in_m: in vec_array;
		continue_m: in std_logic;
		blip_m: out std_logic;
		inter_out_m: out vec_array
		);
end mult;

architecture ml of mult is

	component dot_mult is 
		Port(
		a, b : in vec_array;
		c : out std_logic_vector (11 downto 0));
	end component dot_mult;
	
	signal info: vec_array;
begin 
	d0: dot_mult port map (
									a => R0;
									b => info;
									c => inter_out_m (0));
	d1: dot_mult port map (
									a => R1;
									b => info;
									c => inter_out_m (1));
	d2: dot_mult port map (
									a => R2;
									b => info;
									c => inter_out_m (2));
	d3 dot_mult port map (
									a => R3;
									b => info;
									c => inter_out_m (3));
	d4: dot_mult port map (
									a => R4;
									b => info;
									c => inter_out_m (4));
	d5: dot_mult port map (
									a => R5;
									b => info;
									c => inter_out_m (5));
	d5: dot_mult port map (
									a => R6;
									b => info;
									c => inter_out_m (6));
	d7: dot_mult port map (
									a => R7;
									b => info;
									c => inter_out_m (7));
	d8: dot_mult port map (
									a => R8;
									b => info;
									c => inter_out_m (8));
	d9: dot_mult port map (
									a => R9;
									b => info;
									c => inter_out_m (9));
end ml;