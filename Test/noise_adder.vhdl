library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity noise_adder is 
	Port(
		noise: in ns_vec;
		inter_in_n: in o_vec_array;
		continue_n: in natural range 0 to 1;
		blip_n: out natural range 0 to 1;
		inter_out_n: out ns_vec_array
		);
end noise_adder;

architecture nse_add of noise_adder is
	shared variable iter: natural range 0 to 1:= 0;
	constant zero: std_logic_vector (12 downto 0) := "0000000000000";
begin

	add0: process (continue_n) is
	begin
		if (continue_n > iter) then 
			inter_out_n(0) <= std_logic_vector(resize(unsigned(noise(0)),13) + resize(unsigned(inter_in_n(0)),13));
			iter := iter + 1;
			blip_n <= iter;
		else
			inter_out_n(0) <= zero;
		end if;
	end process add0;
	
	add1: process (continue_n) is
	begin
		if (continue_n >= iter) then 
			inter_out_n(1) <= std_logic_vector(resize(unsigned(noise(1)),13) + resize(unsigned(inter_in_n(1)),13));
		else
			inter_out_n(1) <= zero;
		end if;
	end process add1;
	
	add2: process (continue_n) is
	begin
		if (continue_n >= iter) then
			inter_out_n(2) <= std_logic_vector(resize(unsigned(noise(2)),13) + resize(unsigned(inter_in_n(2)),13));
		else
			inter_out_n(2) <= zero;
		end if;
	end process add2;
	
	add3: process (continue_n) is
	begin
		if (continue_n >= iter) then
			inter_out_n(3) <= std_logic_vector(resize(unsigned(noise(3)),13) + resize(unsigned(inter_in_n(3)),13));
		else
			inter_out_n(3) <= zero;
		end if;
	end process add3;
	
	add4: process (continue_n) is
	begin
		if (continue_n >= iter) then 
			inter_out_n(4) <= std_logic_vector(resize(unsigned(noise(4)),13) + resize(unsigned(inter_in_n(4)),13));
		else
			inter_out_n(4) <= zero;
		end if;
	end process add4;
	
	add5: process (continue_n) is 
	begin
		if (continue_n >= iter) then 
			inter_out_n(5) <= std_logic_vector(resize(unsigned(noise(5)),13) + resize(unsigned(inter_in_n(5)),13));
		else
			inter_out_n(5) <= zero;
		end if;
	end process add5;
	
	add6: process (continue_n) is
	begin
		if (continue_n >= iter) then
			inter_out_n(6) <= std_logic_vector(resize(unsigned(noise(6)),13) + resize(unsigned(inter_in_n(6)),13));
		else
			inter_out_n(6) <= zero;
		end if;
	end process add6;
	
	add7: process (continue_n) is
	begin
		if (continue_n >= iter) then 
			inter_out_n(7) <= std_logic_vector(resize(unsigned(noise(7)),13) + resize(unsigned(inter_in_n(7)),13));
		else
			inter_out_n(7) <= zero;
		end if;
	end process add7;
	
	add8: process (continue_n) is
	begin
		if (continue_n >= iter) then 
			inter_out_n(8) <= std_logic_vector(resize(unsigned(noise(8)),13) + resize(unsigned(inter_in_n(8)),13));
		else
			inter_out_n(8) <= zero;
		end if;
	end process add8;
	
	add9: process (continue_n) is
	begin
		if (continue_n >= iter) then 
			inter_out_n(9) <= std_logic_vector(resize(unsigned(noise(9)),13) + resize(unsigned(inter_in_n(9)),13));
		else
			inter_out_n(9) <= zero;
		end if;
	end process add9;
end nse_add;