library ieee;
use ieee.std_logic_1164.all;
use work.P.all;

entity multi_port_ram is
	port
	(
		data	: in std_logic_vector(3 downto 0);
		addr	: in natural range 0 to 9;
		we		: in std_logic := '1';
		clk		: in std_logic;
		q		: out vec_array
	);
	
end entity;

architecture rtl of multi_port_ram is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector(3 downto 0);
	type memory_t is array(9 downto 0) of word_t;
	
	-- Declare the RAM signal.
	signal ram : memory_t;
	
	-- Register to hold the address
	signal addr_reg : natural range 0 to 9;

begin

	process(clk)
	begin
		if(rising_edge(clk)) then
			if(we = '1') then
				ram(addr) <= data;
			end if;
			
			-- Register the address for reading
			addr_reg <= addr;
		end if;
	
	end process;
	
	q(0) <= ram(0);
	q(1) <= ram(1);
	q(2) <= ram(2);
	q(3) <= ram(3);
	q(4) <= ram(4);
	q(5) <= ram(5);
	q(6) <= ram(6);
	q(7) <= ram(7);
	q(8) <= ram(8);
	q(9) <= ram(9);
	
end rtl;
