library ieee;
use ieee.std_logic_1164.all;

Entity parity_checker is
Port (a0,a1,a2,a3 : in std_logic;
p : out std_logic);
end parity_checker;

Architecture RTL of parity_checker is
begin
p <= (((a0 xor a1) xor a2) xor a3);
end RTL;