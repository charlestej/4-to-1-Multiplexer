library IEEE;
use IEEE.std_logic_1164.all;

entity mplex is
port (s : in std_logic_vector(1 downto 0);
      d0 : in std_logic;
      d1 : in std_logic;
      d2 : in std_logic;
      d3 : in std_logic;
      y : out std_logic);
end mplex;

architecture behav of mplex is
begin
  process(s, d0, d1, d2, d3)
  begin
    Case s is
    when "00" =>
    Y <= d0;
    when "01" =>
	Y <= d1;
    when "10" =>
	Y <= d2;
    when "11" =>
	Y <= d3;
    when others =>
    Y <= '0';
end case;
end process;
end behav;
    
    