--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:44:22 04/05/2016
-- Design Name:   
-- Module Name:   C:/Users/Vanessa/monociclo/ADDER_TESTBENCH.vhd
-- Project Name:  monociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADDER
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
 
ENTITY ADDER_TESTBENCH IS
END ADDER_TESTBENCH;
 
ARCHITECTURE behavior OF ADDER_TESTBENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADDER
    PORT(
         ENTRADA1 : IN  std_logic_vector(31 downto 0);
         ENTRADA2 : IN  std_logic_vector(31 downto 0);
         SALIDA1 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENTRADA1 : std_logic_vector(31 downto 0) := (others => '0');
   signal ENTRADA2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal SALIDA1 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDER PORT MAP (
          ENTRADA1 => ENTRADA1,
          ENTRADA2 => ENTRADA2,
          SALIDA1 => SALIDA1
        );

   

  

 

   
END;
