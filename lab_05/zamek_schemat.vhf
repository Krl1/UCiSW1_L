--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : zamek_schemat.vhf
-- /___/   /\     Timestamp : 11/21/2019 15:25:47
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/Users/lab/lab5/zamek_schemat.vhf -w C:/Users/lab/lab5/zamek_schemat.sch
--Design Name: zamek_schemat
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

entity zamek_schemat is
   port ( CLK      : in    std_logic; 
          PS2_Clk  : in    std_logic; 
          PS2_Data : in    std_logic; 
          Reset    : in    std_logic; 
          y        : out   std_logic);
end zamek_schemat;

architecture BEHAVIORAL of zamek_schemat is
   signal XLXN_1   : std_logic_vector (7 downto 0);
   signal XLXN_2   : std_logic;
   component zamek
      port ( CLK    : in    std_logic; 
             Reset  : in    std_logic; 
             DO_Rdy : in    std_logic; 
             x      : in    std_logic_vector (7 downto 0); 
             y      : out   std_logic);
   end component;
   
   component PS2_RX
      port ( PS2_Clk  : in    std_logic; 
             PS2_Data : in    std_logic; 
             Clk      : in    std_logic; 
             Reset    : in    std_logic; 
             DO_Rdy   : out   std_logic; 
             DO       : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : zamek
      port map (CLK=>CLK,
                DO_Rdy=>XLXN_2,
                Reset=>Reset,
                x(7 downto 0)=>XLXN_1(7 downto 0),
                y=>y);
   
   XLXI_2 : PS2_RX
      port map (Clk=>CLK,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                Reset=>Reset,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_2);
   
end BEHAVIORAL;


