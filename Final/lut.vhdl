library ieee;
use ieee.std_logic_1164.all;
use work.P.all;

entity im_lut is
	Port (
		clk : in std_logic;
		load : in std_logic_vector (3 downto 0);
		re : in std_logic;
		R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: out vec_array;
		th: out thresholds
		);
end im_lut;

architecture arc of im_lut is 
component multi_port_ram is
	port
	(
		data	: in std_logic_vector(3 downto 0);
		addr	: in natural range 0 to 9;
		we		: in std_logic := '1';
		clk		: in std_logic;
		q		: out vec_array
	);
	
end component;

component summer is 
	Port(
		R: in vec_array;
		th: out std_logic_vector (7 downto 0));
end component summer;

component lut_controller is
	Port (
			clk: in std_logic;
			re: in std_logic;
			we0: out std_logic := '1';
			addr: out natural range 0 to 9;
			we1, we2, we3, we4, we5, we6, we7, we8, we9: out std_logic := '0'
		);
end component lut_controller;

signal we0, we1, we2, we3, we4, we5, we6, we7, we8, we9: std_logic;
signal SR0, SR1, SR2, SR3, SR4, SR5, SR6, SR7, SR8, SR9: vec_array;
signal addr: natural range 0 to 9;

begin

multi_pr_0: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we0,
													clk => clk,
													q => SR0);

multi_pr_1: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we1,
													clk => clk,
													q => SR1);
multi_pr_2: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we2,
													clk => clk,
													q => SR2);
multi_pr_3: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we3,
													clk => clk,
													q => SR3);
multi_pr_4: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we4,
													clk => clk,
													q => SR4);
multi_pr_5: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we5,
													clk => clk,
													q => SR5);
multi_pr_6: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we6,
													clk => clk,
													q => SR6);
multi_pr_7: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we7,
													clk => clk,
													q => SR7);
multi_pr_8: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we8,
													clk => clk,
													q => SR8);
multi_pr_9: multi_port_ram port map (
													data => load,
													addr => addr,
													we => we9,
													clk => clk,
													q => SR9);

summr_0: summer port map (
									R => SR0,
									th => th(0)
								);

summr_1: summer port map (
									R => SR1,
									th => th(1)
								);

summr_2: summer port map (
									R => SR2,
									th => th(2)
								);

summr_3: summer port map (
									R => SR3,
									th => th(3)
								);

summr_4: summer port map (
									R => SR4,
									th => th(4)
								);

summr_5: summer port map (
									R => SR5,
									th => th(5)
								);

summr_6: summer port map (
									R => SR6,
									th => th(6)
								);

summr_7: summer port map (
									R => SR7,
									th => th(7)
								);

summr_8: summer port map (
									R => SR8,
									th => th(8)
								);

summr_9: summer port map (
									R => SR9,
									th => th(9)
								);
													
lut_contr: lut_controller port map (
												clk => clk,
												re => re,
												we0 => we0,
												we1 => we1,
												we2 => we2,
												we3 => we3,
												we4 => we4,
												we5 => we5,
												we6 => we6,
												we7 => we7,
												we8 => we8,
												we9 => we9,
												addr => addr
												);

R0 <= SR0;
R1 <= SR1;
R2 <= SR2;
R3 <= SR3;
R4 <= SR4;
R5 <= SR5;
R6 <= SR6;
R7 <= SR7;
R8 <= SR8;
R9 <= SR9;

end arc;