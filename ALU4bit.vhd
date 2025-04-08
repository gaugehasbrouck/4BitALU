library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU4bit is 
	port (
		a, b	:		in std_logic_vector(3 downto 0);
		s		:		in std_logic_vector(2 downto 0);
		f		:		out std_logic_vector(3 downto 0)
	);
	
end ALU4bit;

architecture behavior of ALU4bit is
begin
	process(s, a, b)
	begin
		case s is
			when "000" => 
				f <= "0000";
			when "001" => 
				f <= b - a;
			when "010" =>
				f <= a - b;
			when "011" => 
				f <= a + b;
			when "100" => 
				f <= a xor b;
			when "101" => 
				f <= a or b;
			when "110" => 
				f <= a and b;
			when "111" => 
				f <= "1111";
		end case;
	end process;
end behavior;