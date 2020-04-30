LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY Mooretb IS
END Mooretb;
 
ARCHITECTURE behavior OF Mooretb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Moore
    PORT(
         Boton : IN  std_logic;
         Q1 : IN  std_logic;
         Q0 : IN  std_logic;
         M0 : OUT  std_logic;
         M1 : OUT  std_logic;
         D0 : OUT  std_logic;
         D1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Boton : std_logic := '0';
   signal Q1 : std_logic := '0';
   signal Q0 : std_logic := '0';

 	--Outputs
   signal M0 : std_logic;
   signal M1 : std_logic;
   signal D0 : std_logic;
   signal D1 : std_logic;
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Moore PORT MAP (
          Boton => Boton,
          Q1 => Q1,
          Q0 => Q0,
          M0 => M0,
          M1 => M1,
          D0 => D0,
          D1 => D1
        );

   -- Stimulus process
   stim_proc: process
   begin		
      Boton <= '0';
		Q1 <= '0';
		Q0 <= '0';
      wait for 20 ns;
		Boton <= '0';
		Q1 <= '0';
		Q0 <= '1';
      wait for 20 ns;
		Boton <= '0';
		Q1 <= '1';
		Q0 <= '0';
      wait for 20 ns;
		Boton <= '0';
		Q1 <= '1';
		Q0 <= '1';
      wait for 20 ns;
		Boton <= '1';
		Q1 <= '0';
		Q0 <= '0';
      wait for 20 ns;
		Boton <= '1';
		Q1 <= '0';
		Q0 <= '1';
      wait for 20 ns;
		Boton <= '1';
		Q1 <= '1';
		Q0 <= '0';
      wait for 20 ns;
		Boton <= '1';
		Q1 <= '1';
		Q0 <= '1';
      wait for 20 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
