library ieee;
use ieee.std_logic_1164.all;

entity LAB04 is
port(
	A3, A2, A1, A0: in bit;
	S0, S1, S2, S3, S4, S5, S6: out bit
);
end LAB04;

architecture main of LAB04 is

signal out_aux: BIT_VECTOR(6 DOWNTO 0);
signal in_aux : BIT_VECTOR(3 DOWNTO 0);

begin
	in_aux <= A3 & A2 & A1 & A0 ; -- Usado para concatenar os sinais de entrada
	with in_aux select
	out_aux <= "1000000" when "0000",
				  "1111001" when "0001",
				  "0100100" when "0010",
				  "0110000" when "0011",
				  "0011001" when "0100",
				  "0010010" when "0101",
				  "0000010" when "0110",
				  "1111000" when "0111",
				  "0000000" when "1000",
				  "0010000" when "1001",
				  "0000000" when others;
	
	S0 <= out_aux(0);
	S1 <= out_aux(1);
	S2 <= out_aux(2);
	S3 <= out_aux(3);
	S4 <= out_aux(4);
	S5 <= out_aux(5);
	S6 <= out_aux(6);

end architecture main;
