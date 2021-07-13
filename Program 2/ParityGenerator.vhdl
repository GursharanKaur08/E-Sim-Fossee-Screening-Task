library ieee;
use ieee.std_logic_1164.all;

Entity paritygen is
Port (a0, a1, a2, a3: in std_logic; 
      p_odd, p_even: out std_logic);
end paritygen;

Architecture RTL of paritygen is
begin
    process (a0, a1, a2, a3)
begin
    if (a0 ='0' and a1 ='0' and a2 ='0' and a3 ='0')
    then p_odd <= '0';
         p_even <= '0';
    else
     p_odd <= (((a0 xor a1) xor a2) xor a3);
    p_even <= not(((a0 xor a1) xor a2) xor a3);
end if;
end process;
end RTL;
