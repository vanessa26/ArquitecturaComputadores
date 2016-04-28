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
	process(Op, Op3) --clk)
		begin
		--if rising_edge(clk) then
			if(Op = "10") then
				case Op3 is
					when "000000" => --add
						AluOp<="000000";
					
					when "000001" => --and
						AluOp <= "000001";
						
					when "000101" => --and not
						AluOp <= "000101";
						
					when "000010" => -- or
						AluOp <= "000010";
						
					when "000110" => --or not
						AluOp <= "000110";
						
					when "000011" => --xor
						AluOp <= "000011";
					
					when "000111" => --xnor
						AluOp <= "000111";
					
					when "000100" => -- sub
						AluOp <= "000100";
					when others => -- Cae el nop
						ALUOP <= (others=>'1');
				end case;
			else 
			AluOp<="111111";
			
			end if;
	end process;
end Behavioral;