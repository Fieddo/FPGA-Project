library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity layer_sum_2 is
	Port (
			a: in sum_layer_1;
			c: out sum_layer_2);
end layer_sum_2;

architecture layer_2 of layer_sum_2 is  
begin
	c(0) <= std_logic_vector (resize(unsigned(a(0)),10) + resize(unsigned(a(1)),10));
	c(1) <= std_logic_vector (resize(unsigned(a(2)),10) + resize(unsigned(a(3)),10));
	c(2) <= std_logic_vector (resize(unsigned(a(4)),10));
end layer_2;