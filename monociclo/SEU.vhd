--VANESSA Y GERALDINE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SEU is
    Port ( disp13 : in  STD_LOGIC_VECTOR(12 downto 0);
           disp32 : out  STD_LOGIC_VECTOR(31 downto 0)
			  );
end SEU;

architecture Behavioral of SEU is

begin
process(disp13)
	begin
		if(disp13(12) = '1')then
			disp32(12 downto 0) <= disp13;
			disp32(31 downto 13) <= (others=>'1');
		else
			disp32(12 downto 0) <= disp13;
			disp32(31 downto 13) <= (others=>'0');
		end if;
	end process;
end Behavioral;

