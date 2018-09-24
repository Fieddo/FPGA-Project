library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package P is 
	type ns_vec is array (0 to 9) of std_logic_vector (1 downto 0);
	type vec_array is array (0 to 9) of std_logic_vector(3 downto 0);
	type wise_mult_t is array (0 to 9) of std_logic_vector (7 downto 0);
	type thresholds is array (0 to 9) of std_logic_vector (3 downto 0);
	type sum_layer_1 is array (0 to 4) of std_logic_vector (8 downto 0);
	type sum_layer_2 is array (0 to 2) of std_logic_vector (9 downto 0);
	type sum_layer_3 is array (0 to 1) of std_logic_vector (10 downto 0);
	type o_vec_array is array (0 to 9) of std_logic_vector (11 downto 0);
	type ns_vec_array is array (0 to 9) of std_logic_vector (12 downto 0);
end P;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.P.all;

entity mult is 
	Port(
		R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: in vec_array;
		x: in vec_array;
		blip_m: out natural range 0 to 1;
		y: out o_vec_array
		);
end mult;

architecture ml of mult is

component dot_mult_par is 

	Port (a, b: in vec_array;
			c: out std_logic_vector (11 downto 0));
end component dot_mult_par;
	
begin 
				  
	d0: dot_mult_par port map (
									a => R0,
									b => x,
									c => y (0));
	d1: dot_mult_par port map (
									a => R1,
									b => x,
									c => y (1));
	d2: dot_mult_par port map (
									a => R2,
									b => x,
									c => y (2));
	d3: dot_mult_par port map (
									a => R3,
									b => x,
									c => y (3));
	d4: dot_mult_par port map (
									a => R4,
									b => x,
									c => y (4));
	d5: dot_mult_par port map (
									a => R5,
									b => x,
									c => y (5));
	d6: dot_mult_par port map (
									a => R6,
									b => x,
									c => y (6));
	d7: dot_mult_par port map (
									a => R7,
									b => x,
									c => y (7));
	d8: dot_mult_par port map (
									a => R8,
									b => x,
									c => y (8));
	d9: dot_mult_par port map (
									a => R9,
									b => x,
									c => y (9));
end ml;