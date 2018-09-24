library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity layer_sum_4 is
	Port (
			a: in sum_layer_3;
			c: out std_logic_vector (11 downto 0));
end layer_sum_4;

architecture layer_4 of layer_sum_4 is  
begin
	c <= std_logic_vector (resize(unsigned(a(0)),12) + resize(unsigned(a(1)),12));
end layer_4;