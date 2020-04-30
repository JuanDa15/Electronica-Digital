library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mealy is
    Port ( Boton : in  STD_LOGIC;
           Q0 : in  STD_LOGIC;
           M0 : out  STD_LOGIC;
           M1 : out  STD_LOGIC;
           D : out  STD_LOGIC);
end Mealy;

architecture Behavioral of Mealy is

begin
M1 <= not(Boton) or not(Q0);
M0 <= not(Boton) or Q0;
D <= (not(Boton) and Q0) or (Boton and not(Q0));
end Behavioral;

