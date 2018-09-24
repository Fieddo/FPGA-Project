library ieee;
use ieee.std_logic_1164.all;
use work.P.all;

entity im_noise_box is 
	Port(
			data: in std_logic_vector (3 downto 0);
			addr: in natural range 0 to 1023;
			we0: in std_logic := '1';
			we1, we2, we3, we4, we5, we6, we7, we8, we9: in std_logic;
			clk: in std_logic;
			q: out vec_array
			);
end im_noise_box;

architecture struc of im_noise_box is 

component single_port_ram is 

	port
	(
		data	: in std_logic_vector(3 downto 0);
		addr	: in natural range 0 to 1023;
		we		: in std_logic := '1';
		clk		: in std_logic;
		q		: out std_logic_vector(3 downto 0)
	);
end component single_port_ram;

begin
	s_ram0: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we0,
													q => q(0));
	
	s_ram1: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we1,
													q => q(1));
	s_ram2: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we2,
													q => q(2));
	s_ram3: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we3,
													q => q(3));
	s_ram4: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we4,
													q => q(4));
	s_ram5: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we5,
													q => q(5));
	s_ram6: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we6,
													q => q(6));
	s_ram7: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we7,
													q => q(7));
	s_ram8: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we8,
													q => q(8));
	s_ram9: single_port_ram port map (
													clk => clk,
													addr => addr,
													data => data,
													we => we9,
													q => q(9));
end struc;