library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity layer_sum_1 is
	Port (
			a: in wise_mult_t;
			c: out sum_layer_1);
end layer_sum_1;

architecture layer_1 of layer_sum_1 is  
begin
	c(0) <= std_logic_vector (resize(unsigned(a(0)), 9) + resize(unsigned(a(1)),9));
	c(1) <= std_logic_vector (resize(unsigned(a(2)), 9) + resize(unsigned(a(3)),9));
	c(2) <= std_logic_vector (resize(unsigned(a(4)), 9) + resize(unsigned(a(5)),9));
	c(3) <= std_logic_vector (resize(unsigned(a(6)), 9) + resize(unsigned(a(7)),9));
	c(4) <= std_logic_vector (resize(unsigned(a(8)), 9) + resize(unsigned(a(9)),9));
end layer_1;

