library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity layer_sum_3 is
	Port (
			a: in sum_layer_2;
			c: out sum_layer_3);
end layer_sum_3;

architecture layer_3 of layer_sum_3 is  
begin
	c(0) <= std_logic_vector (resize(unsigned(a(0)),11) + resize(unsigned(a(1)),11));
	c(1) <= std_logic_vector(resize(unsigned(a(2)),11));
end layer_3;