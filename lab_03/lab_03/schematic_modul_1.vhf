--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schematic_modul_1.vhf
-- /___/   /\     Timestamp : 11/04/2019 11:50:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/Users/lab/Desktop/pn_11_lab_03/lab_03/schematic_modul_1.vhf -w C:/Users/lab/Desktop/pn_11_lab_03/lab_03/schematic_modul_1.sch
--Design Name: schematic_modul_1
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity schematic_modul_1 is
   port ( X     : in    std_logic_vector (3 downto 0); 
          D7S_S : out   std_logic_vector (6 downto 0));
end schematic_modul_1;

architecture BEHAVIORAL of schematic_modul_1 is
   signal XLXN_2 : std_logic_vector (3 downto 0);
   component vhdl_modul_1
      port ( X : in    std_logic_vector (3 downto 0); 
             Y : out   std_logic_vector (3 downto 0));
   end component;
   
   component HexTo7Seg
      port ( Hex     : in    std_logic_vector (3 downto 0); 
             Displ7S : out   std_logic_vector (6 downto 0));
   end component;
   
begin
   XLXI_1 : vhdl_modul_1
      port map (X(3 downto 0)=>X(3 downto 0),
                Y(3 downto 0)=>XLXN_2(3 downto 0));
   
   XLXI_2 : HexTo7Seg
      port map (Hex(3 downto 0)=>XLXN_2(3 downto 0),
                Displ7S(6 downto 0)=>D7S_S(6 downto 0));
   
end BEHAVIORAL;


