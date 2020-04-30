LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Mealytb IS
END Mealytb;
 
ARCHITECTURE behavior OF Mealytb IS 
 
    COMPONENT Mealy
    PORT(
         Boton : IN  std_logic;
         Q0 : IN  std_logic;
         M0 : OUT  std_logic;
         M1 : OUT  std_logic;
         D : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Boton : std_logic := '0';
   signal Q0 : std_logic := '0';

 	--Outputs
   signal M0 : std_logic;
   signal M1 : std_logic;
   signal D : std_logic;
 
   uut: Mealy PORT MAP (
          Boton => Boton,
          Q0 => Q0,
          M0 => M0,
          M1 => M1,
          D => D
        );
		  
   stim_proc: process
   begin		
      Boton <= "0";
		Q0 <= "0";
      wait for 20 ns;	
		Boton <= "0";
		Q0 <= "1";
      wait for 20 ns;
		Boton <= "1";
		Q0 <= "0";
      wait for 20 ns;
		Boton <= "1";
		Q0 <= "1";
      wait for 20 ns; 
   end process;
END;
