library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package P is 
	type vec_array is array (0 to 9) of std_logic_vector(3 downto 0);
	type thresholds is array (0 to 9) of std_logic_vector (7 downto 0);
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

entity simulator is 
	Port(
			clk: in std_logic;
			re: in std_logic;
			load: in std_logic_vector (3 downto 0);
			x: in vec_array;
			y: out o_vec_array);
end simulator;

architecture sim of simulator is 

	component engine is
		Port(
				re: in std_logic;
				R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: in vec_array;
				x: in vec_array;
				noise: in vec_array;
				th: in thresholds;
				switch: out natural range 0 to 1023;
				y: out o_vec_array);
	end component engine;
	
	component noise_box is
		Port(
			clk: in std_logic;
			re: in std_logic;
			load: in std_logic_vector (3 downto 0);
			switch: in natural range 0 to 1023;
			noise: out vec_array
			);
	end component noise_box;
	
	component im_lut is
		Port(
			clk : in std_logic;
			load : in std_logic_vector (3 downto 0);
			re : in std_logic;
			R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: out vec_array;
			th: out thresholds);
	end component im_lut;
	
	signal R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: vec_array; 
	signal th: thresholds;
	signal noise: vec_array;
	signal switch: natural range 0 to 1023;
	
begin
	
	lut_s: im_lut port map (
								clk => clk,
								re => re,
								load => load,
								R0 => R0,
								R1 => R1,
								R2 => R2,
								R3 => R3,
								R4 => R4,
								R5 => R5,
								R6 => R6, 
								R7 => R7,
								R8 => R8, 
								R9 => R9,
								th => th
								);
	
	engine_s: engine port map (
										re => re,
										R0 => R0, 
										R1 => R1,
										R2 => R2,
										R3 => R3,
										R4 => R4,
										R5 => R5,
										R6 => R6,
										R7 => R7,
										R8 => R8,
										R9 => R9,
										x => x,
										noise => noise,
										th => th,
										switch => switch,
										y => y
										);
	
	noise_box_x: noise_box port map (
												clk => clk,
												load => load,
												re => re,
												switch => switch,
												noise => noise);
	
end sim;