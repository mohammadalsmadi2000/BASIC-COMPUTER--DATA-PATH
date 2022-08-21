library ieee;
use ieee.std_logic_1164.all;


package components is 
			  
	component state is
	
	port(x: in std_logic_vector(15 downto 0);
		 y: in std_logic;
         z: out std_logic_vector(15 downto 0));
	end component;
	
	component decoder is 
      port (s: in std_logic_vector(2 downto 0) ;
       op:out std_logic_vector (7 downto 0));
	end component;
	
end;