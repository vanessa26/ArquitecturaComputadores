--Vanessa y Geraldine
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity registerFile is
    Port ( clk : in STD_LOGIC;
			  Rs1 : in  STD_LOGIC_VECTOR(5 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR(5 downto 0);
           Rd : in  STD_LOGIC_VECTOR(5 downto 0);
           wren : in  STD_LOGIC;
			  reset : in STD_LOGIC;
			  Dwr : in STD_LOGIC_VECTOR(31 downto 0);
           Crs1 : out  STD_LOGIC_VECTOR(31 downto 0);
           Crs2 : out  STD_LOGIC_VECTOR(31 downto 0)
			  );
end registerFile;

architecture syn of registerFile is
    type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
    signal RAM : ram_type := ((others=>(others=>'0')));

begin

process (clk, reset)
    begin
        if rising_edge(clk) then
            if (wren = '1' and not(Rd = "00000")) then
                RAM(conv_integer(Rd)) <= Dwr;
            end if;
        end if;
    end process;
Crs1<=RAM(conv_integer(Rs1));
Crs2<=RAM(conv_integer(Rs2));

end syn;
