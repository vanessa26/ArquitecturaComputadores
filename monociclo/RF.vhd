--Vanessa y Geraldine
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity registerFile is
    Port ( clk : in STD_LOGIC;
			  Rs1 : in  STD_LOGIC_VECTOR(4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR(4 downto 0);
           Rd : in  STD_LOGIC_VECTOR(4 downto 0);
			  reset : in STD_LOGIC;
			  Dwr : in STD_LOGIC_VECTOR(31 downto 0);
           Crs1 : out  STD_LOGIC_VECTOR(31 downto 0);
           Crs2 : out  STD_LOGIC_VECTOR(31 downto 0)
			  );
end registerFile;

architecture Behavioral of registerFile is
	type registerFile is array(0 to 31) of std_logic_vector(31 downto 0);
	signal registers : registerFile:= (others => x"00000000");
begin
	process(reset, Rs1, Rs2, Rd, DWR)
		begin
		--registers(0) <= "00000000000000000000000000000000";
			if (reset = '1')then
				Crs1 <= (others => '0');
				Crs2 <= (others => '0');
				registers <= (others => x"00000000");
			else
				CRS1 <= registers(conv_integer(Rs1));
				CRS2 <= registers(conv_integer(Rs2));
				
				if (Rd /= "00000") then 
					registers(conv_integer(Rd)) <= DWR;
				end if;
				
			--	CRS1 <= registers(conv_integer(Rs1));
			--	CRS2 <= registers(conv_integer(Rs2));
				
			end if;			
	end process;
end Behavioral;
