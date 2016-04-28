--Vanessa Arango - Geraldine García--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:45 04/25/2016 
-- Design Name: 
-- Module Name:    moduloprincipal - Behavioral 
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

entity moduloprincipal  is
    Port ( Reset : in  STD_LOGIC;
           ClK : in  STD_LOGIC;
           AluResult : out  STD_LOGIC_VECTOR (31 downto 0));
end moduloprincipal;



architecture Behavioral of moduloprincipal is

	COMPONENT ADDER
		PORT(
			ENTRADA1 : in  STD_LOGIC_VECTOR (31 downto 0);
         ENTRADA2 : in  STD_LOGIC_VECTOR (31 downto 0);
         SALIDA1 : out  STD_LOGIC_VECTOR (31 downto 0));
		END COMPONENT;
		
		
		
		COMPONENT Alu
		PORT(
			AluOp : in  STD_LOGIC_VECTOR (5 downto 0);
         ope1 : in  STD_LOGIC_VECTOR (31 downto 0);
         Ope2 : in  STD_LOGIC_VECTOR (31 downto 0);
         AluResult : out  STD_LOGIC_VECTOR (31 downto 0));
		END COMPONENT;
		
		
		COMPONENT CU
		PORT(
			Op : in  STD_LOGIC_VECTOR (1 downto 0);
         Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
         AluOp : out  STD_LOGIC_VECTOR (5 downto 0));
		END COMPONENT;
		
		
		COMPONENT MUX
		PORT(
			input0 : in  STD_LOGIC_VECTOR(31 downto 0);
			input1 : in  STD_LOGIC_VECTOR(31 downto 0);
			selector : in STD_LOGIC;
         output : out  STD_LOGIC_VECTOR(31 downto 0));
			END COMPONENT;


		  
		COMPONENT NPC
		PORT(
			Dato : in  STD_LOGIC_VECTOR (31 downto 0);
         Reset : in  STD_LOGIC;
         Clk : in  STD_LOGIC;
         Dout : out  STD_LOGIC_VECTOR (31 downto 0));
		END COMPONENT;
		
		
		COMPONENT PC
	PORT(
		Dato_In : IN std_logic_vector(31 downto 0);
		Reset : IN std_logic;
		Clk : IN std_logic;          
		Dato_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
			
		
		COMPONENT SEU
		PORT(
			disp13 : in  STD_LOGIC_VECTOR(12 downto 0);
         disp32 : out  STD_LOGIC_VECTOR(31 downto 0));
			END COMPONENT;
			
			
		COMPONENT instructionMemory
		PORT(
			--clk : in STD_LOGIC;
			address : in  STD_LOGIC_VECTOR (31 downto 0);
         reset : in  STD_LOGIC;
         outInstruction : out  STD_LOGIC_VECTOR (31 downto 0));
			END COMPONENT;
			
			
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


	signal CLKAll: std_logic;
	signal RestAll: std_logic;
	
	signal RegistroSalida: std_logic_vector(31 downto 0);
	signal ResultadoAlu: std_logic_vector(31 downto 0);
	signal SalidaSeu: std_logic_vector(31 downto 0);
	signal SalidaCRs1: std_logic_vector(31 downto 0);
	signal SalidaCRs2: std_logic_vector(31 downto 0);
	signal SalidaRs2: std_logic_vector(31 downto 0);
	signal SalidaAluop: std_logic_vector(5 downto 0);
	signal SalidaProgramCounter: std_logic_vector(31 downto 0);
	signal SalidaNProgramCounter: std_logic_vector(31 downto 0);
	signal SalidaSumador: std_logic_vector(31 downto 0);
	
begin

	CLKAll <= Clk;
	RestAll <= Reset;
	
	Inst_ADDER:ADDER PORT MAP(
		ENTRADA1 => "00000000000000000000000000000001",
		ENTRADA2 => SalidaNProgramCounter,
		SALIDA1 => SalidaSumador
	);
	
	Inst_NPC: NPC PORT MAP(
		Dato =>  SalidaSumador,
		Reset => RestALL,
		Clk => CLKALL,
		Dout => SalidaNProgramCounter
	);
	
	Inst_PC: PC PORT MAP(
		Dato_In => SalidaNProgramCounter,
		Reset => RestAll,
		Clk => CLKALL,
		Dato_Out => SalidaProgramCounter
	);
	
	Inst_InstructionMemory: instructionMemory PORT MAP(
		
		address => SalidaProgramCounter,
		reset => RestALL,
		outInstruction =>RegistroSalida
	);
	
	Inst_registerFile: registerFile PORT MAP(
		clk => CLKALL,
		Rs1 => RegistroSalida(18 downto 14),
		Rs2 => RegistroSalida(4 downto 0),
		Rd => RegistroSalida(29 downto 25),
		reset => RestALL,
		Dwr => ResultadoAlu,
		CRS1 => SalidaCRs1,
		CRS2 => SalidaCRs2
	);
	


	
	
	Inst_SEU: SEU PORT MAP(
		disp13 => RegistroSalida(12 downto 0),
		disp32 => SalidaSeu
	);
	
	Inst_CU: CU PORT MAP(
		Op => RegistroSalida(31 downto 30),
		Op3 => RegistroSalida(24 downto 19),
		AluOp => SalidaAluop
	);
	
	Inst_MUX: MUX PORT MAP(
		input0 => SalidaCRs2,
		selector => RegistroSalida(13),
		input1 => SalidaSeu,
		output => SalidaRs2
	);
	
	Inst_Alu: Alu PORT MAP(
		AluOp => SalidaAluop,
		Ope1 => SalidaCRs1,
		Ope2 => SalidaRs2,
		AluResult => ResultadoAlu
	);

									  
  
AluResult<=ResultadoAlu;

end Behavioral;

