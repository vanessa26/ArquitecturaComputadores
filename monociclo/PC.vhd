-- VANESSA ARANGO - GERALDINE GARCIA
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:54:03 03/31/2016 
-- Design Name: 
-- Module Name:    PC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( Dato_In : in  STD_LOGIC_VECTOR (31 downto 0);
	        Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Dato_Out: out STD_LOGIC_VECTOR (31 downto 0));
			  

end PC;

architecture Behavioral of PC is

begin
	process(Dato_In , Clk , Reset)
			begin
				if (Reset='1') then
				Dato_Out <= "00000000000000000000000000000000";
				else
					if (rising_edge (Clk)) then
					Dato_Out <= Dato_In;
					end if;		
				end if;
			end process;


end Behavioral;

