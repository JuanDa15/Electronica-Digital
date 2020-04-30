--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Mealy_synthesis.vhd
-- /___/   /\     Timestamp: Sun Apr 19 18:55:42 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Mealy -w -dir netgen/synthesis -ofmt vhdl -sim Mealy.ngc Mealy_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: Mealy.ngc
-- Output file	: C:\Users\Jdoo1\Documents\ElectronicaDigital\MaquinaMealy\netgen\synthesis\Mealy_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Mealy
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Mealy is
  port (
    Boton : in STD_LOGIC := 'X'; 
    M0 : out STD_LOGIC; 
    M1 : out STD_LOGIC; 
    Q0 : in STD_LOGIC := 'X'; 
    D : out STD_LOGIC 
  );
end Mealy;

architecture Structure of Mealy is
  signal Boton_IBUF_1 : STD_LOGIC; 
  signal D_OBUF_3 : STD_LOGIC; 
  signal M0_OBUF_5 : STD_LOGIC; 
  signal M1_OBUF_7 : STD_LOGIC; 
  signal Q0_IBUF_9 : STD_LOGIC; 
begin
  M11 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Boton_IBUF_1,
      I1 => Q0_IBUF_9,
      O => M1_OBUF_7
    );
  M01 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => Q0_IBUF_9,
      I1 => Boton_IBUF_1,
      O => M0_OBUF_5
    );
  D1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Boton_IBUF_1,
      I1 => Q0_IBUF_9,
      O => D_OBUF_3
    );
  Boton_IBUF : IBUF
    port map (
      I => Boton,
      O => Boton_IBUF_1
    );
  Q0_IBUF : IBUF
    port map (
      I => Q0,
      O => Q0_IBUF_9
    );
  M0_OBUF : OBUF
    port map (
      I => M0_OBUF_5,
      O => M0
    );
  M1_OBUF : OBUF
    port map (
      I => M1_OBUF_7,
      O => M1
    );
  D_OBUF : OBUF
    port map (
      I => D_OBUF_3,
      O => D
    );

end Structure;

