library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Moore is
    Port ( Boton : in  STD_LOGIC;
           Q1 : in  STD_LOGIC;
           Q0 : in  STD_LOGIC;
           M0 : out  STD_LOGIC;
           M1 : out  STD_LOGIC;
           D0 : out  STD_LOGIC;
           D1 : out  STD_LOGIC);
end Moore;

architecture Behavioral of Moore is

begin
M0<= not(Q1) or Q0;
M1<= not(Q0) or Q1;
D0<= Q1;
D1<= (not(Boton) and Q1) or (not(Q0) and Boton);

end Behavioral;

