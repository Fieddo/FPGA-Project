library ieee;
use ieee.std_logic_1164.all;

entity controller is 
	Port (
		switch: in natural range 0 to 1023;
		re: in std_logic;
		clk: in std_logic;
		we0: out std_logic := '1';
		we1, we2, we3, we4, we5, we6, we7, we8, we9: out std_logic := '0';
		addr: out natural range 0 to 1023
		);
end controller;

architecture contr of controller is 
	shared variable count: natural range 0 to 9999;
	shared variable turn: natural range 0 to 9 := 0;
begin
	loading: process (clk, re, switch) is 
	begin
	if re = '0' then 
	if rising_edge(clk) then 
		count := count + 1;
		turn := count mod 10;
		addr <= (count - turn)/10;
		if turn = 0 then 
		we0 <= '1';
		we9 <= '0';
		elsif turn = 1 then 
		we1 <= '1';
		we0 <= '0';
		elsif turn = 2 then 
		we2 <= '1';
		we1 <= '0';
		elsif turn = 3 then 
		we3 <= '1';
		we2 <= '0';
		elsif turn = 4 then 
		we4 <= '1';
		we3 <= '0';
		elsif turn = 5 then 
		we5 <= '1';
		we4 <= '0';
		elsif turn = 6 then 
		we6 <= '1';
		we5 <= '0';
		elsif turn = 7 then 
		we7 <= '1';
		we6 <= '0';
		elsif turn = 8 then 
		we8 <= '1';
		we7 <= '0';
		elsif turn = 9 then 
		we9 <= '1';
		we8 <= '0';
		end if;
	end if;
	elsif re = '1' then 
		addr <= switch;
	end if;
	end process loading;
end contr;