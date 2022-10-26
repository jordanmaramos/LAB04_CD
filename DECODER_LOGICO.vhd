library ieee;
use ieee.std_logic_1164.all;

entity DECODER_LOGICO is
port(
	A3, A2, A1, A0: in bit;
	S0, S1, S2, S3, S4, S5, S6: out bit
);
end DECODER_LOGICO;

architecture main of DECODER_LOGICO is
	
	signal A: bit;
	signal NA0: bit;
	signal NA1: bit;
	signal NA2: bit;
	signal NA3: bit;
	
begin
	
	A <= A3 and (A2 or A1);
	NA0 <= not A0;
	NA1 <= not A1;
	NA2 <= not A2;
	NA3 <= not A3;
	
	S0 <= A or (not A1 and ((A2 and NA0) or (NA3 and NA2 and A0)));
	
	S1 <= A or (A2 and (A1 xor A0));
	
	S2 <= A or (NA2 and A1 and NA0);
	
	S3 <= A or (A2 and(A1 xnor A0)) or (NA3 and NA2 and NA1 and A0);
	
	S4 <= A0 or (A2 and NA1) or (A3 and A1);
	
	S5 <= A or (A1 and (NA2 or A0)) or (NA3 and NA2 and A0);
	
	S6 <= A or (NA3 and NA2 and NA1) or (A2 and A1 and A0);
	
end architecture main;