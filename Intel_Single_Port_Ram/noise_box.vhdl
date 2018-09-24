library ieee;
use ieee.std_logic_1164.all;
use work.P.all;

entity noise_box is 
	Port(
		clk: in std_logic;
		re: in std_logic;
		load: in std_logic_vector (3 downto 0);
		switch: in natural range 0 to 1023;
		noise: out vec_array
		);
end noise_box;

architecture bx of noise_box is 

component im_noise_box is 
	Port(
			data: in std_logic_vector (3 downto 0);
			addr: in natural range 0 to 1023;
			we0: in std_logic := '1';
			we1, we2, we3, we4, we5, we6, we7, we8, we9: in std_logic;
			clk: in std_logic;
			q: out vec_array
			);
end component im_noise_box;

component controller is 
	Port(
		switch: in natural range 0 to 1023;
		re: in std_logic;
		clk: in std_logic;
		we0: out std_logic := '1';
		we1, we2, we3, we4, we5, we6, we7, we8, we9: out std_logic := '0';
		addr: out natural range 0 to 1023
		);
end component controller;
	
	signal we0, we1, we2, we3, we4, we5, we6, we7, we8, we9: std_logic;
	signal addr: natural range 0 to 1023;

begin
	
	nb: im_noise_box port map (
										data => load,
										clk => clk,
										we0 => we0,
										we1 => we1,
										we2 => we2,
										we3 => we3,
										we4 => we4,
										we5 => we5,
										we6 => we6,
										we7 => we7,
										we8 => we8,
										we9 => we9,
										addr => addr,
										q => noise
										);
	
	contr1: controller port map (
											switch => switch,
											re => re,
											clk => clk,
											we0 => we0,
											we1 => we1,
											we2 => we2,
											we3 => we3,
											we4 => we4,
											we5 => we5,
											we6 => we6,
											we7 => we7,
											we8 => we8,
											we9 => we9,
											addr => addr
										);
end bx;