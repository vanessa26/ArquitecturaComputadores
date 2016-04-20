--VANESSA Y GERALDINE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Alu is
    Port ( AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
           ope1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Ope2 : in  STD_LOGIC_VECTOR (31 downto 0);
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0));
end Alu;

architecture Behavioral of Alu is

begin
	process(Aluop,ope1,Ope2)
		begin	
			if AluOp="000001" then
				AluResult <= ope1 - Ope2;
			elsif AluOp = "000000" then
				AluResult <= ope1 + Ope2;
			end if;
		end process;
end Behavioral;
