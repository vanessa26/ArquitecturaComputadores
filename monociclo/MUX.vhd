--VANESSA Y GERALDINE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port ( input0 : in  STD_LOGIC_VECTOR(31 downto 0);
           input1 : in  STD_LOGIC_VECTOR(31 downto 0);
			  selector : in STD_LOGIC;
           output : out  STD_LOGIC_VECTOR(31 downto 0)
			  );
end MUX;

architecture Behavioral of MUX is

signal tmp : STD_LOGIC_VECTOR(31 downto 0) :=(others =>'0');

begin
process(input0, input1, selector)
	begin
		if(selector = '0') then
			tmp<=input0;
		else
			tmp<=input1;
		end if;
	end process;
output<=tmp;
end Behavioral;

