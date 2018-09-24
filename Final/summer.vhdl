library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity summer is 
	Port(
		R: in vec_array;
		th: out std_logic_vector (7 downto 0));
end summer;

architecture arc of summer is 
	shared variable result: std_logic_vector (7 downto 0);
begin
	summ: process (R) is 
	begin
		result := "00000000";
		for i in 0 to 9 loop
			result := std_logic_vector(unsigned(result) + unsigned(R(i)));
		end loop;
	th <= result;
	end process summ;
end arc;