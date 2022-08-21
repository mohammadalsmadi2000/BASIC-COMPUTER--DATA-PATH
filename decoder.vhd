library ieee;
use ieee.std_logic_1164.all;

entity decoder is 
port (s: in std_logic_vector(2 downto 0) ;
       op:out std_logic_vector (7 downto 0));
end;

architecture decoder of decoder is
begin 
	   op <= x"01" when s = b"000" else
			  x"02" when s = b"001" else
			  x"04" when s = b"010" else
			  x"08" when s = b"011" else
			  x"10" when s = b"100" else
			  x"20" when s = b"101" else
			  x"40" when s = b"110" else
			  x"80" when s = b"111";
end; 