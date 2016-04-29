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
	   case (Aluop) is
		   when "000000" => -- ADD
				AluResult <= ope1 + Ope2;
			when "000001" => -- AND
				AluResult <= ope1 and Ope2;
			when "000010" => -- OR
				AluResult <= ope1 or Ope2;
			when "000011" => -- XOR
				AluResult <= ope1 xor Ope2;
			when "000100" => -- SUB
				AluResult <= ope1 - Ope2;
			when "000101" => -- ANDN
				AluResult <= ope1 nand Ope2;
			when "000110" => -- ORN
				AluResult <= ope1 nor Ope2;
			when "000111" => -- XORN
				AluResult <= ope1 xnor Ope2;
			when others => 
				AluResult <= (others=>'0');
		end case;
		
  end process;


end Behavioral;
