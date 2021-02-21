library ieee;
use ieee.std_logic_1164.all;
entity dff2 is
port (d: in std_logic;
rst: in std_logic;
clk: in std logic;
q: out std_logic;
qbar: out std_logic );
end dff2;

architecture rtl of dff2 is
signal qt: std_logic;
begin
process(d,clk,rst)
begin
if rst='1' then
qt <= '0';
elsif clk'event and clk='1' then
qt <= d;
end if;
end process;
q <= qt;
qbar <= not qt;
end rtl;