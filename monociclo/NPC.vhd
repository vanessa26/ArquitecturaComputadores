--VANESSA ARANGO - GERALDINE GARCIA
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:01 03/31/2016 
-- Design Name: 
-- Module Name:    NPC - Behavioral 
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

entity NPC is
    Port ( Dato : in  STD_LOGIC_VECTOR (31 downto 0);
           Reset : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end NPC;

architecture Behavioral of NPC is

begin
	process(Dato,Clk,Reset)
			begin
				if (Reset='1') then
					Dout <= "00000000000000000000000000000000";
				else
						if (rising_edge (Clk)) then
						Dout<= Dato;
						end if;
				end if;
			end process;


end Behavioral;

