library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Unidad_Control is
    Port ( Opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           Functions : in  STD_LOGIC_VECTOR (5 downto 0);
           Zero : in  STD_LOGIC;
           AluOp : out  STD_LOGIC_VECTOR (2 downto 0);
           Mux4 : out  STD_LOGIC_VECTOR (1 downto 0);
           S_E : out  STD_LOGIC;
           W_R : out  STD_LOGIC;
           W_D : out  STD_LOGIC);
end Unidad_Control;

architecture arq_Unidad_Control of Unidad_Control is

begin
		
		Process (Opcode, Functions, Zero)
				Begin
						If (Opcode= "000000") then
								Mux1	<= '0';
								Mux2	<= "01";
								Mux3	<= "10";
								Mux4	<= "01";
								S_E	<= '0';
								W_R	<=	'1';
								W_D	<=	'0';
							CASE (Functions) is
									When "100000" =>	AluOp <= "000";  --Suma--
									When "100010" =>	AluOp <= "001";	--Resta--
									When "100100" =>	AluOp <= "010";	--AND--
									When "100101" =>	AluOp <= "011";	--OR-
									When "100110" =>	AluOp <= "111";  --XOR--
									When "000000" =>	AluOp <= "100"; --SLL--
									When "000010" =>	AluOp <= "101"; --SLR--
									When "101010" =>	AluOp <= "110"; --SLT--
									When Others	  =>	AluOp <= "000"; 
							End Case;
						
						Else 
						
							CASE (Opcode) is
									
							When "001000" =>	AluOp <= "000"; --Addi--
													Mux1	<= '1';
													Mux2	<= "00";
													Mux3	<= "10";
													Mux4	<= "01";
													S_E	<= '0';
													W_R	<=	'1';
													W_D	<=	'0';
													
							 When "001101" =>	AluOp <= "011"; --Ori--
													Mux1	<= '1';
													Mux2	<= "00";
													Mux3	<= "10";
													Mux4	<= "01";
													S_E	<= '1';
													W_R	<=	'1';
													W_D	<=	'0';
													
							When "001100" =>	AluOp <= "010"; --Andi--
													Mux1	<= '1';
													Mux2	<= "00";
													Mux3	<= "10";
													Mux4	<= "01";
													S_E	<= '1';
													W_R	<=	'1';
													W_D	<=	'0';
													
							When "001110" =>	AluOp <= "111"; --Xori--
													Mux1	<= '1';
													Mux2	<= "00";
													Mux3	<= "10";
													Mux4	<= "01";
													S_E	<= '1';
													W_R	<=	'1';
													W_D	<=	'0';
																		
						  When "100011" =>	AluOp <= "000"; --LW--
													Mux1	<= '1';
													Mux2	<= "00";
													Mux3	<= "01";
													Mux4	<= "01";
													S_E	<= '0';
													W_R	<=	'1';
													W_D	<=	'0';
								
						 When "101011" =>	AluOp <= "000"; --SW--
													Mux1	<= '1';
													Mux2	<= "00";
													Mux3	<= "01";
													Mux4	<= "01";
													S_E	<= '0';
													W_R	<=	'0';
													W_D	<=	'1';
													
						  When "000010" =>	AluOp <= "000"; --Jump--
													Mux1	<= '0';
													Mux2	<= "00";
													Mux3	<= "00";
													Mux4	<= "00";
													S_E	<= '0';
													W_R	<=	'0';
													W_D	<=	'0';
													
													
							When "000011" =>	AluOp <= "000"; --JumpAndLink--
													Mux1	<= '0';
													Mux2	<= "10";
													Mux3	<= "00";
													Mux4	<= "00";
													S_E	<= '0';
													W_R	<=	'1';
													W_D	<=	'0';
							
							When "000100" =>	 			AluOp <= "111";  --Branch or Equal--
																Mux2	<= "00";
																W_R	<=	'0';
																Mux1	<= '0';
																Mux3	<= "00";
																W_D	<=	'0';
																
																If (Zero ='0') then
																	Mux4	<= "10";
																	S_E	<= '0';
																	
																Else
																	Mux4	<= "01";
																	S_E	<= '0';
																End If;
													

									When "000101" =>	 										
																AluOp <= "111"; --Branch or not Equal--
																Mux2	<= "00";
																W_R	<=	'0';
																Mux1	<= '0';
																Mux3	<= "00";
																W_D	<=	'0';
																
																If (Zero = '1') then
																	Mux4	<= "10";
																	S_E	<= '0';
																	
																Else
																	Mux4	<= "01";
																	S_E	<= '0';
																End If;
																
									When Others =>		Mux1	<= '0';
															Mux2	<= "01";
															Mux3	<= "10";
															Mux4	<= "01";
															S_E	<= '0';
															W_R	<=	'1';
															W_D	<=	'0';
															AluOp <= "111"; 
															

									End Case;
						
							
						End If;		
				End Process;
								
					
end arq_Unidad_Control;

