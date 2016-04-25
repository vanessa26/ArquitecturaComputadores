--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:01:44 04/25/2016
-- Design Name:   
-- Module Name:   C:/Users/Vanessa/Desktop/ArquitecturaComputadores/monociclo/AluTesteBench.vhd
-- Project Name:  monociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Alu
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
 
ENTITY AluTesteBench IS
END AluTesteBench;
 
ARCHITECTURE behavioral OF AluTesteBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu
    PORT(
         AluOp : IN  std_logic_vector(5 downto 0);
         ope1 : IN  std_logic_vector(31 downto 0);
         Ope2 : IN  std_logic_vector(31 downto 0);
         AluResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal AluOp : std_logic_vector(5 downto 0) := (others => '0');
   signal ope1 : std_logic_vector(31 downto 0) := (others => '0');
   signal Ope2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal AluResult : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu PORT MAP (
          AluOp => AluOp,
          ope1 => ope1,
          Ope2 => Ope2,
          AluResult => AluResult
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		ope1 <= "00000000000000000000000000000111";
		ope2 <= "00000000000000000000000000000111";
		ALUop <= "000000"; --add
		wait for 5 ms;
		ope1 <= "00000000000000000000000000000011";
		ope2 <= "00000000000000000000000000000001";
		ALUop <= "000000"; --add
		wait for 5 ms;
		ope1 <= "00000000000000000000000000000011";
		ope2 <= "00000000000000000000000000000001";
		ALUop <= "000100"; --sub
		wait for 5 ms;
		ope1 <= "10000000000000000000000000000011";
		ope2 <= "00000000000000000001000000000001";
		ALUop <= "000010"; --or
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
