library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package P is 
	type vec_array is array (0 to 9) of std_logic_vector(3 downto 0);
	type thresholds is array (0 to 9) of std_logic_vector (7 downto 0);
	type o_vec_array is array (0 to 9) of std_logic_vector (11 downto 0);
end P;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.P.all;

entity lut is 
	Port (
		clk : in std_logic;
		load : in std_logic_vector (3 downto 0);
		re : in bit;
		R0, R1, R2, R3, R4, R5, R6, R7, R8, R9: out vec_array;
		th: out thresholds
		);
end lut;

architecture lut_arc of lut is 
	type memory_t is array (0 to 9) of vec_array;
	shared variable memory: memory_t;
	shared variable theta: thresholds := (others => (others => '0'));
	shared variable i: integer := 0;
	shared variable j: integer := 0;
begin
	loading: process (clk) is
	variable count : natural := 0;
	begin
		if rising_edge(clk) then
			if (count < 100) then
				memory((count - (count mod 10))/10)(count mod 10):= load;
			elsif (count >= 100) and (j < 10) then
				theta (j) := std_logic_vector (unsigned (theta (j)) + unsigned (memory(j)(i)));
				i := i + 1;
				if (i = 10) then 
					i := 0;
					j := j + 1;
				end if;
			end if;
		count := count + 1;
		end if;
	end process loading;
	with re select R0 <=
    memory(0) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R1 <=
    memory(1) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R2 <=
    memory(2) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R3 <=
    memory(3) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R4 <=
    memory(4) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R5 <=
    memory(5) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R6 <=
    memory(6) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R7 <=
    memory(7) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R8 <=
    memory(8) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select R9 <=
    memory(9) when '1',
    ("0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000", "0000") when '0';
	with re select th <=
	 theta when '1',
	 ("00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000") when '0';
end lut_arc;
