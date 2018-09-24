library IEEE;
use IEEE.std_logic_1164.all;

entity learning is 
	port(
		A, B, C: in std_logic;
		F: out std_logic);
end learning;

architecture behavioral of learning is
	begin 
		my_process: process (A, B, C) is
			begin
				if (A = '1' and B = '0' and C = '0') then 
					F <= '1';
				elsif (B = '1' and C = '1') then 
					F <= '1';
				else
					F <= '0';
				end if;
			end process my_process;
	end behavioral;
