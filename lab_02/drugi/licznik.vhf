--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : licznik.vhf
-- /___/   /\     Timestamp : 10/21/2019 13:05:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/Users/lab/Desktop/nw/drugi/licznik.vhf -w C:/Users/lab/Desktop/nw/drugi/licznik.sch
--Design Name: licznik
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

entity licznik is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          Q   : out   std_logic_vector (2 downto 0));
end licznik;

architecture BEHAVIORAL of licznik is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_20 : std_logic;
   signal Q_DUMMY : std_logic_vector (2 downto 0);
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   Q(2 downto 0) <= Q_DUMMY(2 downto 0);
   XLXI_2 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>XLXN_4,
                Q=>Q_DUMMY(1));
   
   XLXI_3 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>XLXN_1,
                Q=>Q_DUMMY(2));
   
   XLXI_4 : FDCE
      port map (C=>CLK,
                CE=>CE,
                CLR=>CLR,
                D=>XLXN_15,
                Q=>Q_DUMMY(0));
   
   XLXI_5 : XOR2
      port map (I0=>Q_DUMMY(0),
                I1=>Q_DUMMY(2),
                O=>XLXN_1);
   
   XLXI_6 : OR2
      port map (I0=>XLXN_6,
                I1=>XLXN_7,
                O=>XLXN_4);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_9,
                I1=>Q_DUMMY(1),
                O=>XLXN_7);
   
   XLXI_8 : AND2
      port map (I0=>XLXN_12,
                I1=>XLXN_11,
                O=>XLXN_6);
   
   XLXI_9 : INV
      port map (I=>Q_DUMMY(0),
                O=>XLXN_9);
   
   XLXI_10 : INV
      port map (I=>Q_DUMMY(1),
                O=>XLXN_11);
   
   XLXI_11 : INV
      port map (I=>Q_DUMMY(2),
                O=>XLXN_12);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_20,
                I1=>XLXN_7,
                O=>XLXN_15);
   
   XLXI_13 : AND2
      port map (I0=>XLXN_11,
                I1=>Q_DUMMY(2),
                O=>XLXN_20);
   
end BEHAVIORAL;


