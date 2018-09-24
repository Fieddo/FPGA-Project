library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.P.all;

entity th_checker is 
	Port(
		th: in thresholds;
		inter_in_t: in ns_vec_array;
		continue_t: in natural range 0 to 1023;
		blip_t: out natural range 0 to 1023;
		inter_out_t: out vec_array
		);
end th_checker;

architecture th_chck of th_checker is 
	shared variable iter: natural range 0 to 1023 := 0;
begin
	cmp0: process (continue_t) is
	begin
		if (continue_t > iter) then
			if (unsigned(inter_in_t(0)) >= unsigned(th (0))) then 
				inter_out_t(0) <= "0001";
			else
				inter_out_t(0) <= "0000";
			end if;
			iter := iter + 1;
			blip_t <= iter;
		end if;
	end process cmp0;
	
	cmp1: process (continue_t) is
	begin
		if (continue_t >= iter) then
			if (unsigned(inter_in_t(1)) >= unsigned(th (1))) then 
				inter_out_t(1) <= "0001";
			else
				inter_out_t(1) <= "0000";
			end if;
		end if;
	end process cmp1;
	
	cmp2: process (continue_t) is
	begin
		if (continue_t >= iter) then
			if (unsigned(inter_in_t(2)) >= unsigned(th (2))) then 
				inter_out_t(2) <= "0001";
			else
				inter_out_t(2) <= "0000";
			end if;
		end if;
	end process cmp2;
	
	cmp3: process (continue_t) is
	begin
		if (continue_t >= iter) then
			if (unsigned(inter_in_t(3)) >= unsigned(th (3))) then 
				inter_out_t(3) <= "0001";
			else
				inter_out_t(3) <= "0000";
			end if;
		end if;
	end process cmp3;
	
	cmp4: process (continue_t) is
	begin
		if (continue_t >= iter) then 
			if (unsigned(inter_in_t(4)) >= unsigned(th (4))) then 
				inter_out_t(4) <= "0001";
			else
				inter_out_t(4) <= "0000";
			end if;
		end if;
	end process cmp4;
	
	cmp5: process (continue_t) is
	begin
		if (continue_t >= iter) then
			if (unsigned(inter_in_t(5)) >= unsigned(th (5))) then 
				inter_out_t(5) <= "0001";
			else
				inter_out_t(5) <= "0000";
			end if;
		end if;
	end process cmp5;
	
	cmp6: process (continue_t) is
	begin
		if (continue_t >= iter) then
			if (unsigned(inter_in_t(6)) >= unsigned(th (6))) then 
				inter_out_t(6) <= "0001";
			else
				inter_out_t(6) <= "0000";
			end if;
		end if;
	end process cmp6;
	
	cmp7: process (continue_t) is
	begin
		if (continue_t >= iter) then
			if (unsigned(inter_in_t(7)) >= unsigned(th (7))) then 
				inter_out_t(7) <= "0001";
			else
				inter_out_t(7) <= "0000";
			end if;
		end if;
	end process cmp7;
	
	cmp8: process (continue_t) is
	begin
		if (continue_t >= iter) then 
			if (unsigned(inter_in_t(8)) >= unsigned(th (8))) then 
				inter_out_t(8) <= "0001";
			else
				inter_out_t(8) <= "0000";
			end if;
		end if;
	end process cmp8;
	
	cmp9: process (continue_t) is
	begin
		if (continue_t >= iter) then
			if (unsigned(inter_in_t(9)) >= unsigned(th (9))) then 
				inter_out_t(9) <= "0001";
			else
				inter_out_t(9) <= "0000";
			end if;
		end if;
	end process cmp9;
	
end th_chck;