--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schemat_3.vhf
-- /___/   /\     Timestamp : 11/04/2019 13:35:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/Users/lab/Desktop/pn_11_lab_03/cwiczenie_2/schemat_3.vhf -w C:/Users/lab/Desktop/pn_11_lab_03/cwiczenie_2/schemat_3.sch
--Design Name: schemat_3
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

entity schemat_3 is
   port ( CLK   : in    std_logic; 
          RS_RX : in    std_logic; 
          D7S_S : out   std_logic_vector (6 downto 0));
end schemat_3;

architecture BEHAVIORAL of schemat_3 is
   attribute BOX_TYPE   : string ;
   signal Hex     : std_logic_vector (3 downto 0);
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_9  : std_logic_vector (7 downto 0);
   signal XLXN_10 : std_logic;
   component vhdl_modul_2
      port ( OUTPUT : out   std_logic_vector (2 downto 0); 
             CLR    : in    std_logic; 
             CE     : in    std_logic; 
             CLK    : in    std_logic);
   end component;
   
   component RS232_RX
      port ( Reset  : in    std_logic; 
             Clk_XT : in    std_logic; 
             Rdy    : out   std_logic; 
             DO     : out   std_logic_vector (7 downto 0); 
             RS_RX  : in    std_logic);
   end component;
   
   component VHDL_modul_3_klawisze
      port ( WEJ : in    std_logic_vector (7 downto 0); 
             CLR : out   std_logic; 
             CE  : out   std_logic; 
             RD  : in    std_logic);
   end component;
   
   component HexTo7Seg
      port ( Hex     : in    std_logic_vector (3 downto 0); 
             Displ7S : out   std_logic_vector (6 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : vhdl_modul_2
      port map (CE=>XLXN_2,
                CLK=>CLK,
                CLR=>XLXN_1,
                OUTPUT(2 downto 0)=>Hex(2 downto 0));
   
   XLXI_2 : RS232_RX
      port map (Clk_XT=>CLK,
                Reset=>CLK,
                RS_RX=>RS_RX,
                DO(7 downto 0)=>XLXN_9(7 downto 0),
                Rdy=>XLXN_10);
   
   XLXI_3 : VHDL_modul_3_klawisze
      port map (RD=>XLXN_10,
                WEJ(7 downto 0)=>XLXN_9(7 downto 0),
                CE=>XLXN_2,
                CLR=>XLXN_1);
   
   XLXI_4 : HexTo7Seg
      port map (Hex(3 downto 0)=>Hex(3 downto 0),
                Displ7S(6 downto 0)=>D7S_S(6 downto 0));
   
   XLXI_5 : GND
      port map (G=>Hex(3));
   
end BEHAVIORAL;


