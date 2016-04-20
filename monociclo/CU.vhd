--VANESSA Y GERLADINE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CU is
    Port ( Op : in  STD_LOGIC_VECTOR (1 downto 0);
           Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           AluOp : out  STD_LOGIC_VECTOR (5 downto 0));
end CU;

architecture Behavioral of CU is

begin
	process(Op,Op3)
		begin
			if Op="10" then
				if Op3="000000" or Op3="000010" then
					AluOp <= "000000";--Suma
				elsif Op3 ="000100" then
					AluOp <= "000001";--Resta
				end if;
			end if;
		end process;
end Behavioral;