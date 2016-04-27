
-- VHDL Instantiation Created from source file registerFile.vhd -- 20:04:45 04/26/2016
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT registerFile
	PORT(
		clk : IN std_logic;
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		Rd : IN std_logic_vector(4 downto 0);
		reset : IN std_logic;
		Dwr : IN std_logic_vector(31 downto 0);          
		Crs1 : OUT std_logic_vector(31 downto 0);
		Crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_registerFile: registerFile PORT MAP(
		clk => ,
		Rs1 => ,
		Rs2 => ,
		Rd => ,
		reset => ,
		Dwr => ,
		Crs1 => ,
		Crs2 => 
	);


