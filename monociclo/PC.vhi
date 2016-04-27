
-- VHDL Instantiation Created from source file PC.vhd -- 19:51:10 04/26/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PC
	PORT(
		Dato_In : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;
		Clk : IN std_logic;          
		Dato_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_PC: PC PORT MAP(
		Dato_In => ,
		Reset => ,
		Clk => ,
		Dato_Out => 
	);


