library ieee;
use ieee.std_logic_1164.all;
library work;
entity shiftreg4bit is
port (rst,clk,din : in std_logic;
q : out std_logic_vector (3 downto 0));
end shiftreg4bit;
architecture rtl of shiftreg4bit is
component dff2 is
port (d: in std_logic;
rst: in std_logic;
clk: in std_logic;
q: out std_logic;
qbar: out std_logic );
end component;
signal qt : std_logic_vector (3 downto 0);

begin
g1 : for j in 0 to 3 generate
do : if j=0 generate
uo : dff2 port map ( din, rst, clk, qt(j),open );
end generate do;
d1: if j>0 generate
u1 : dff2 port map (qt(j-1), rst, clk, qt(j),open);
end generate d1;
end generate g1;
q <= qt;
end rtl;
