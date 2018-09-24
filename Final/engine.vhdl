library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity engine is 
	Port(
			re: in std_logic;
			R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: in vec_array;
			x: in vec_array;
			noise: in vec_array;
			th: in thresholds;
			switch: out natural range 0 to 1023;
			y: out o_vec_array
			);
end engine;

architecture engine_arc of engine is 
	component mult is 
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
	end component mult;
	
	component noise_adder is 
	Port(
		noise: in vec_array;
		inter_in_n: in o_vec_array;
		continue_n: in natural range 0 to 1023;
		blip_n: out natural range 0 to 1023;
		inter_out_n: out ns_vec_array
		);
	end component noise_adder;
	
	component th_checker is
	Port(
		th: in thresholds;
		inter_in_t: in ns_vec_array;
		continue_t: in natural range 0 to 1023;
		blip_t: out natural range 0 to 1023;
		inter_out_t: out vec_array
		);
	end component th_checker;
	
	signal blip_m, blip_n, blip_t: natural range 0 to 1023;
	signal inter_m: o_vec_array;
	signal inter_n : ns_vec_array;
	signal inter_t: vec_array;

begin
	
	switch <= blip_n;
	
	mult_e: mult port map (
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
								  re => re,
								  inter_in_m => inter_t,
								  continue_m => blip_t,
								  blip_m => blip_m,
								  inter_out_m => inter_m,
								  y => y
								  );
	noise_add_e: noise_adder port map (
												  noise => noise,
												  inter_in_n => inter_m,
												  continue_n => blip_m,
												  blip_n => blip_n,
												  inter_out_n => inter_n
												  );
	th_check_e: th_checker port map(
											  th => th,
											  inter_in_t => inter_n,
											  continue_t => blip_n,
											  blip_t => blip_t,
											  inter_out_t => inter_t
											  );
end engine_arc;