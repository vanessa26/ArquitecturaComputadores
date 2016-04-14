
-- VHDL Instantiation Created from source file ADDER.vhd -- 17:50:44 04/11/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ADDER
	PORT(
		ENTRADA1 : IN std_logic_vector(31 downto 0);
		ENTRADA2 : IN std_logic_vector(31 downto 0);          
		SALIDA1 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ADDER: ADDER PORT MAP(
		ENTRADA1 => ,
		ENTRADA2 => ,
		SALIDA1 => 
	);


