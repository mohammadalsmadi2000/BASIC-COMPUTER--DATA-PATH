library ieee;
use ieee.std_logic_1164.all;

entity state is
	port(x: in std_logic_vector(15 downto 0);--input
		 y: in std_logic;--enable
         z: out std_logic_vector(15 downto 0));--output
end state;

architecture TstateBody of state is
begin
	--when enable ==1 then input==output
	z <= x when y = '1' else
    "ZZZZZZZZZZZZZZZZ" when y = '0';
	
end TstateBody;