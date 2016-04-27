--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:15:31 04/26/2016
-- Design Name:   
-- Module Name:   C:/Users/Vanessa/Desktop/ArquitecturaComputadores/monociclo/moduloprincipalTB.vhd
-- Project Name:  monociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: moduloprincipal
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
 
ENTITY moduloprincipalTB IS
END moduloprincipalTB;
 
ARCHITECTURE behavior OF moduloprincipalTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT moduloprincipal
    PORT(
         Reset : IN  std_logic;
         ClK : IN  std_logic;
         AluResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reset : std_logic := '0';
   signal ClK : std_logic := '0';

 	--Outputs
   signal AluResult : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant ClK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: moduloprincipal PORT MAP (
          Reset => Reset,
          ClK => ClK,
          AluResult => AluResult
        );

   -- Clock process definitions
   ClK_process :process
   begin
		ClK <= '0';
		wait for ClK_period/2;
		ClK <= '1';
		wait for ClK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		Reset <= '1';
		wait for 100 ns;
		Reset <= '0';
		wait;
   end process;

END;
