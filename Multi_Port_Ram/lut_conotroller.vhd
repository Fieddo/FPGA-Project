library ieee;
use ieee.std_logic_1164.all;
use work.P.all;

entity lut_controller is
	Port (
			clk: in std_logic;
			re: in std_logic;
			we0: out std_logic := '1';
			addr: out natural range 0 to 9;
			we1, we2, we3, we4, we5, we6, we7, we8, we9: out std_logic := '0'
		);
end lut_controller;

architecture cntr of lut_controller is 
	shared variable count: natural range 0 to 9:= 0;
	shared variable turn: natural range 0 to 9:= 0;
begin

	func: process (clk, re) is
	begin
	if rising_edge(clk) then 
		if count = 9 then 
		count := 0;
		if turn = 0 then 
		we0 <= '1';
		we9 <= '0';
		turn := turn + 1;
		elsif turn = 1 then 
		we1 <= '1';
		we0 <= '0';
		turn := turn + 1;
		elsif turn = 2 then 
		we2 <= '1';
		we1 <= '0';
		turn := turn + 1;
		elsif turn = 3 then 
		we3 <= '1';
		we2 <= '0';
		turn := turn + 1;
		elsif turn = 4 then 
		we4 <= '1';
		we3 <= '0';
		turn := turn + 1;
		elsif turn = 5 then 
		we5 <= '1';
		we4 <= '0';
		turn := turn + 1;
		elsif turn = 6 then 
		we6 <= '1';
		we5 <= '0';
		turn := turn + 1;
		elsif turn = 7 then 
		we7 <= '1';
		we6 <= '0';
		turn := turn + 1;
		elsif turn = 8 then 
		we8 <= '1';
		we7 <= '0';
		turn := turn + 1;
		elsif turn = 9 then 
		we9 <= '1';
		we8 <= '0';
		turn := 0;
		end if;
	else
		count := count + 1;
		addr <= count;
	end if;
	end if;
	end process func;

end cntr;