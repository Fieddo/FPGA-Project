library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.P.all;

entity dot_mult is 
	Port(
		a, b : in vec_array;
		c : out std_logic_vector (11 downto 0));
end dot_mult;

architecture dot_mult_arc of dot_mult is 
begin
	inner_mult: process (a, b) is 
	variable summ : unsigned (11 downto 0);
	begin
	summ := (others => '0');
	for i in 0 to 9 loop
		summ := summ + unsigned (a(i))*unsigned (b(i));
	end loop;
	c <= std_logic_vector(summ);
	end process inner_mult;
end dot_mult_arc;
