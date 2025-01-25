library IEEE;
use IEEE.std_logic_1164.all;

entity energy_monitor is 
    port (
        AGTB, AEQB, ALTB : in std_logic;
        vacation_mode : in std_logic;
        MC_test_mode : in std_logic;
        window_open : in std_logic;
        door_open : in std_logic;
        furnace : out std_logic;
        at_temp : out std_logic;
        AC : out std_logic;
        blower : out std_logic;
        window : out std_logic;
        door : out std_logic;
        vacation : out std_logic;
        run : out std_logic;
        increase : out std_logic;
        decrease : out std_logic
    );
end entity energy_monitor;

architecture behaviour of energy_monitor is
begin
    -- Sequentially update the run signal based on various conditions
    process (AGTB, AEQB, ALTB, vacation_mode, MC_test_mode, window_open, door_open)
    begin
        if AEQB = '1' or window_open = '1' or door_open = '1' or MC_test_mode = '1' then
            run <= '0';
        else
            run <= '1';
        end if;
    end process;

    -- Update the increase and decrease signals based on AGTB and ALTB
    process (AGTB, ALTB)
    begin
        if AGTB = '1' then
            increase <= '1';
            decrease <= '0';
        elsif ALTB = '1' then
            increase <= '0';
            decrease <= '1';
        else
            increase <= '0';
            decrease <= '0';
        end if;
    end process;

    -- Assign values to other output signals based on input conditions
    AC <= '1' when ALTB = '1' else '0';
    furnace <= '1' when AGTB = '1' else '0';
    at_temp <= '1' when AEQB = '1' else '0';
    blower <= '1' when AEQB = '0' and (MC_test_mode = '0' and window_open = '0' and door_open = '0') else '0';
    door <= '1' when door_open = '1' else '0';
    window <= '1' when window_open = '1' else '0';
    vacation <= '1' when vacation_mode = '1' else '0';
end architecture behaviour;