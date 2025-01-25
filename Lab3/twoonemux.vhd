library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity twoonemux is
    Port (
        Sel : in STD_LOGIC;
        A, B : in STD_LOGIC_VECTOR(3 downto 0);
        Y : out STD_LOGIC_VECTOR(3 downto 0)
    );
end twoonemux;

architecture Behavioral of twoonemux is
begin
    process(Sel, A, B)
    begin
        if (Sel = '0') then
            Y <= A;
        else
            Y <= B;
        end if;
    end process;
end Behavioral;