-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
end testbench;

architecture testbench_arc of testbench is

component mplex is
port(S : in std_logic_vector (1 downto 0); D0, D1, D2, D3 : in std_logic; Y : out std_logic);
end component;

signal s_in : std_logic_vector (1 downto 0);
signal d0_in, d1_in, d2_in, d3_in, y_out : std_logic;

begin

DUT: mplex port map (s_in, d0_in, d1_in, d2_in, d3_in, y_out);

process
begin

s_in <= "00";
d0_in <= '0';
d1_in <= '1';
d2_in <= '1';
d3_in <= '1';
wait for 1 ns;

s_in <= "01";
d0_in <= '0';
d1_in <= '1';
d2_in <= '0';
d3_in <= '0';
wait for 1 ns;

s_in <= "10";
d0_in <= '1';
d1_in <= '1';
d2_in <= '0';
d3_in <= '1';
wait for 1 ns;

s_in <= "11";
d0_in <= '0';
d1_in <= '0';
d2_in <= '0';
d3_in <= '1';
wait for 1 ns;


wait;

end process;

end testbench_arc;