library ieee;
use ieee.std_logic_1164.all;

use work.components.all;

entity task8 is
	port(memory, DR, AC, IR, TR: in std_logic_vector(15 downto 0);-- input 16-bit
		 AR, PC: in std_logic_vector(11 downto 0);-- input 12-bit
		 s: in std_logic_vector(2 downto 0);--selection
		 output: out std_logic_vector(15 downto 0));--output 16-bit
end task8;

architecture task8 of task8 is
signal decOut: std_logic_vector(7 downto 0);
begin

	d1: Decoder port map(s, decOut);
	T1: state port map(b"0000" & AR, decOut(1), output);
	T2 : state port map(b"0000" & PC, decOut(2), output);
	T3: state port map(DR, decOut(3), output);
	T4: state port map(AC, decOut(4), output);
	T5: state port map(IR, decOut(5), output);
	T6: state port map(TR, decOut(6), output);
	T7: state port map(memory, decOut(7), output);

end task8;