library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.P.all;

entity test is
	Port (
			R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: in vec_array;
			x: in vec_array;
			th: in thresholds;
			noise: in ns_vec;
			result: out ns_vec);
end test;

architecture tst of test is 
component mult is 
	Port(
		R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: in vec_array;
		x: in vec_array;
		blip_m: out natural range 0 to 1;
		y: out o_vec_array
		);
end component mult;

component noise_adder is 
	Port(
		noise: in ns_vec;
		inter_in_n: in o_vec_array;
		continue_n: in natural range 0 to 1;
		blip_n: out natural range 0 to 1;
		inter_out_n: out ns_vec_array
		);
end component noise_adder;

component th_checker is 
	Port(
		th: in thresholds;
		inter_in_t: in ns_vec_array;
		continue_t: in natural range 0 to 1;
		inter_out_t: out ns_vec
		);
end component th_checker;

signal mul_out: o_vec_array;
signal ns_out: ns_vec_array;
signal blip_m, blip_n: natural range 0 to 1;

begin

m: mult port map (
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
						blip_m => blip_m,
						y => mul_out);

ns_add: noise_adder port map (
										inter_in_n => mul_out,
										noise => noise,
										continue_n => blip_m,
										blip_n => blip_n,
										inter_out_n => ns_out);

th_chck: th_checker port map (
										th => th,
										inter_in_t => ns_out,
										continue_t => blip_n,
										inter_out_t => result);
end tst;