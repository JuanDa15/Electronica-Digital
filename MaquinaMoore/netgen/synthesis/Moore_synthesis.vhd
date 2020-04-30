--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Moore_synthesis.vhd
-- /___/   /\     Timestamp: Sun Apr 19 21:37:33 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Moore -w -dir netgen/synthesis -ofmt vhdl -sim Moore.ngc Moore_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: Moore.ngc
-- Output file	: C:\Users\Jdoo1\Documents\ElectronicaDigital\MaquinaMoore\netgen\synthesis\Moore_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Moore
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

entity Moore is
  port (
    D0 : out STD_LOGIC; 
    D1 : out STD_LOGIC; 
    Boton : in STD_LOGIC := 'X'; 
    M0 : out STD_LOGIC; 
    M1 : out STD_LOGIC; 
    Q0 : in STD_LOGIC := 'X'; 
    Q1 : in STD_LOGIC := 'X' 
  );
end Moore;

architecture Structure of Moore is
  signal Boton_IBUF_1 : STD_LOGIC; 
  signal D0_OBUF_3 : STD_LOGIC; 
  signal D1_OBUF_5 : STD_LOGIC; 
  signal M0_OBUF_7 : STD_LOGIC; 
  signal M1_OBUF_9 : STD_LOGIC; 
  signal Q0_IBUF_11 : STD_LOGIC; 
begin
  M11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => D0_OBUF_3,
      I1 => Q0_IBUF_11,
      O => M1_OBUF_9
    );
  M01 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => Q0_IBUF_11,
      I1 => D0_OBUF_3,
      O => M0_OBUF_7
    );
  D11 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => Boton_IBUF_1,
      I1 => Q0_IBUF_11,
      I2 => D0_OBUF_3,
      O => D1_OBUF_5
    );
  Boton_IBUF : IBUF
    port map (
      I => Boton,
      O => Boton_IBUF_1
    );
  Q0_IBUF : IBUF
    port map (
      I => Q0,
      O => Q0_IBUF_11
    );
  Q1_IBUF : IBUF
    port map (
      I => Q1,
      O => D0_OBUF_3
    );
  D0_OBUF : OBUF
    port map (
      I => D0_OBUF_3,
      O => D0
    );
  D1_OBUF : OBUF
    port map (
      I => D1_OBUF_5,
      O => D1
    );
  M0_OBUF : OBUF
    port map (
      I => M0_OBUF_7,
      O => M0
    );
  M1_OBUF : OBUF
    port map (
      I => M1_OBUF_9,
      O => M1
    );

end Structure;

