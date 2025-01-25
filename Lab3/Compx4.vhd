library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Compx4 is

	port (
	
	sw1  : in std_logic_vector(3 downto 0);
	sw2  : in std_logic_vector(3 downto 0);
	agb  : out std_logic;
	aeb  : out std_logic;
	alb  : out std_logic
	
	);
	
end entity Compx4;


architecture comparator of Compx4 is

	component Compx1 port (
	
	a : in std_logic;
	b : in std_logic;
	agreaterb : out std_logic;
	aequalb   : out std_logic;
	alessb	 : out std_logic
	
	);
	end component;
	
	signal greater: std_logic_vector(3 downto 0);
	signal equal: std_logic_vector(3 downto 0);
	signal less : std_logic_vector(3 downto 0);

begin

	co1: Compx1 port map (sw1(0), sw2(0), greater(0), equal(0), less(0));
	co2: Compx1 port map (sw1(1), sw2(1), greater(1), equal(1), less(1));
	co3: Compx1 port map (sw1(2), sw2(2), greater(2), equal(2), less(2));
	co4: Compx1 port map (sw1(3), sw2(3), greater(3), equal(3), less(3));
	
	agb <= (greater(3) or (equal(3) and greater(2)) or (equal(3) and equal(2) and greater(1)) or (equal(3) and equal(2) and equal(1) and greater(0)));
	aeb <= (equal(3) and equal(2) and equal(1) and equal(0));
	alb <= (less(3) or (equal(3) and less(2)) or (equal(3) and equal(2) and less(1)) or (equal(3) and equal(2) and equal(1) and less(0)));

end architecture comparator;
	