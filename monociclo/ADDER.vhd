-- VANESSA ARANGO - GERALDINE GARCIA
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:53 04/05/2016 
-- Design Name: 
-- Module Name:    ADDER - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ADDER is
    Port ( ENTRADA1 : in  STD_LOGIC_VECTOR (31 downto 0);
           ENTRADA2 : in  STD_LOGIC_VECTOR (31 downto 0);
           SALIDA1 : out  STD_LOGIC_VECTOR (31 downto 0));
end ADDER;

architecture Behavioral of ADDER is

begin
	process (ENTRADA1, ENTRADA2)
		begin
			SALIDA1 <= ENTRADA1 + ENTRADA2;
	end process;

end Behavioral;

