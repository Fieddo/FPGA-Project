library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity wise_mult is 
	Port(
			a, b: in vec_array;
			c: out wise_mult_t
			);
end wise_mult;

architecture wise of wise_mult is
begin
	c(0) <= std_logic_vector(unsigned (a(0))* unsigned (b(0)));
	c(1) <= std_logic_vector(unsigned (a(1))* unsigned (b(1)));
	c(2) <= std_logic_vector(unsigned (a(2))* unsigned (b(2)));
	c(3) <= std_logic_vector(unsigned (a(3))* unsigned (b(3)));
	c(4) <= std_logic_vector(unsigned (a(4))* unsigned (b(4)));
	c(5) <= std_logic_vector(unsigned (a(5))* unsigned (b(5)));
	c(6) <= std_logic_vector(unsigned (a(6))* unsigned (b(6)));
	c(7) <= std_logic_vector(unsigned (a(7))* unsigned (b(7)));
	c(8) <= std_logic_vector(unsigned (a(8))* unsigned (b(8)));
	c(9) <= std_logic_vector(unsigned (a(9))* unsigned (b(9)));

end wise;