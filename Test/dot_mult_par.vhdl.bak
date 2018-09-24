library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.P.all;

entity dot_mult_par is 
	Port (a, b: in vec_array;
			c: out std_logic_vector (11 downto 0));
end dot_mult_par;

architecture parallel of dot_mult_par is 

component wise_mult is 
	Port(
			a, b: in vec_array;
			c: out thresholds
			);
end component wise_mult;

component layer_sum_1 is
	Port (
			a: in thresholds;
			c: out sum_layer_1);
end component layer_sum_1;

component layer_sum_2 is
	Port (
			a: in sum_layer_1;
			c: out sum_layer_2);
end component layer_sum_2;

component layer_sum_3 is
	Port (
			a: in sum_layer_2;
			c: out sum_layer_3);
end component layer_sum_3;

component layer_sum_4 is
	Port (
			a: in sum_layer_3;
			c: out std_logic_vector (11 downto 0));
end component layer_sum_4;

signal mult_p: thresholds;
signal l_1: sum_layer_1;
signal l_2: sum_layer_2;
signal l_3: sum_layer_3;

begin

w_mult: wise_mult port map (
										a => a,
										b => b,
										c => mult_p);

ls_1: layer_sum_1 port map (
										a => mult_p,
										c => l_1);

ls_2: layer_sum_2 port map (
										a => l_1,
										c => l_2);

ls_3: layer_sum_3 port map (
										a => l_2,
										c => l_3);

ls_4: layer_sum_4 port map (
										a => l_3,
										c => c);

end parallel;