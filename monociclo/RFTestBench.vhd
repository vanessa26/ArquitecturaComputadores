--Vanessa Arango y Geraldine García---------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:15:18 04/25/2016
-- Design Name:   
-- Module Name:   C:/Users/Vanessa/Desktop/ArquitecturaComputadores/monociclo/RFTestBench.vhd
-- Project Name:  monociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registerFile
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RFTestBench IS
END RFTestBench;
 
ARCHITECTURE behavioral OF RFTestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerFile
    PORT(
         clk : IN  std_logic;
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rd : IN  std_logic_vector(4 downto 0);
         reset : IN  std_logic;
         Dwr : IN  std_logic_vector(31 downto 0);
         Crs1 : OUT  std_logic_vector(31 downto 0);
         Crs2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rd : std_logic_vector(4 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal Dwr : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Crs1 : std_logic_vector(31 downto 0);
   signal Crs2 : std_logic_vector(31 downto 0);

   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          clk => clk,
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rd => Rd,
          reset => reset,
          Dwr => Dwr,
          Crs1 => Crs1,
          Crs2 => Crs2
        );

  
 -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		Rs1 <="01000";
		Rs2 <="10000";
		Rd <="00110";
		
		Dwr<="00000000000000000000000000000111";
		
		wait for 5 ms;
      
   end process;

   
 

END;
