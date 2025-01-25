library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HVAC is
    port (
        HVAC_SIM : in boolean;
        clk : in std_logic;
        run : in std_logic;
        increase, decrease : in std_logic;
        temp : out std_logic_vector (3 downto 0)
    );
end entity;
architecture rtl of HVAC is

    signal clk_2hz : std_logic;
    signal HVAC_clock : std_logic;
    signal digital_counter : std_logic_vector(23 downto 0);
    signal cnt : unsigned(3 downto 0) := (others => '0');  -- Initialize to 0

begin

    -- clk_divider process generates a 2Hz Clck from the 50 Mhz clk
    clk_divider: process (clk)
        variable counter : unsigned(23 downto 0);
    begin
        -- Synchronously update counter
        if (rising_edge(clk)) then
            counter := counter + 1;
            digital_counter <= std_logic_vector(counter);  -- Moved inside rising_edge condition
        end if;
    end process;

    clk_2hz <= digital_counter(23);

    clk_mux: process (HVAC_SIM)
    begin
        if (HVAC_SIM) then
            HVAC_clock <= clk;
        else
            HVAC_clock <= clk_2hz;
        end if;
    end process;

    counter_process: process (HVAC_clock)
    begin
        if rising_edge(HVAC_clock) then
            if run = '1' then
                if increase = '1' and cnt < "1111" then
                    cnt <= cnt + 1;
                elsif decrease = '1' and cnt > "0000" then
                    cnt <= cnt - 1;
                end if;
            end if;
        end if;
        temp <= std_logic_vector(cnt);  -- Moved outside rising_edge condition
    end process;

end rtl;


