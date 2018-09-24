library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.P.all;

entity im_mult is 
	Port(
		clk_m : in std_logic;
		load_m : in std_logic_vector (3 downto 0);
		re_m : in bit;
		x : in vec_array;
		y : out o_vec_array;
		th_m: out thresholds
		);
end im_mult;

architecture im_mult_arc of im_mult is 
	signal Rm0, Rm1, Rm2, Rm3, Rm4, Rm5, Rm6, Rm7, Rm8, Rm9: vec_array;
	component lut is 
			Port (
				clk : in std_logic;
				load : in std_logic_vector (3 downto 0);
				re : in bit;
				R0, R1, R2, R3, R4, R5, R6, R7, R8, R9 : out vec_array;
				th : out thresholds
				);
	end component lut;
	component dot_mult is 
			Port (
				a, b : in vec_array;
				c : out std_logic_vector (11 downto 0));
	end component dot_mult;
begin
	lut_1: lut port map (clk => clk_m,
								load => load_m,
								re => re_m,
								R0 => Rm0,
								R1 => Rm1,
								R2 => Rm2,
								R3 => Rm3,
								R4 => Rm4,
								R5 => Rm5,
								R6 => Rm6,
								R7 => Rm7,
								R8 => Rm8,
								R9 => Rm9,
								th => th_m
								);
	x0: dot_mult port map (a => Rm0,
								  b => x,
								  c => y(0)
								  );
	x1: dot_mult port map (a => Rm1,
								  b => x,
								  c => y(1)
								  );
	x2: dot_mult port map (a => Rm2,
								  b => x,
								  c => y(2)
								  );
	x3: dot_mult port map (a => Rm3,
								  b => x,
								  c => y(3)
								  );
	x4: dot_mult port map (a => Rm4,
								  b => x,
								  c => y(4)
								  );
	x5: dot_mult port map (a => Rm5,
								  b => x,
								  c => y(5)
								  );
	x6: dot_mult port map (a => Rm6,
								  b => x,
								  c => y(6)
								  );
	x7: dot_mult port map (a => Rm7,
								  b => x,
								  c => y(7)
								  );
	x8: dot_mult port map (a => Rm8,
								  b => x,
								  c => y(8)
								  );
	x9: dot_mult port map (a => Rm9,
								  b => x,
								  c => y(9)
								  );
end im_mult_arc;
