--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : zad_1.vhf
-- /___/   /\     Timestamp : 12/16/2019 13:15:12
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/lab_06/Spartan3E/zad_1.vhf -w C:/Users/lab/Desktop/lab_06/Spartan3E/zad_1.sch
--Design Name: zad_1
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity zad_1 is
   port ( Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          reset     : in    std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          SF_CE     : out   std_logic; 
          y         : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0));
end zad_1;

architecture BEHAVIORAL of zad_1 is
   signal line      : std_logic_vector (63 downto 0);
   signal XLXN_1    : std_logic_vector (7 downto 0);
   signal XLXN_7    : std_logic;
   signal XLXN_8    : std_logic;
   signal XLXN_17   : std_logic_vector (15 downto 0);
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component zamek
      port ( CLK    : in    std_logic; 
             Reset  : in    std_logic; 
             DO_Rdy : in    std_logic; 
             F0     : in    std_logic; 
             x      : in    std_logic_vector (7 downto 0); 
             y      : out   std_logic; 
             nr     : out   std_logic_vector (3 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
begin
   line(63 downto 4) <= x"000000000000000";
   XLXN_17(15 downto 0) <= x"FFFE";
   XLXI_4 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_8,
                E0=>open,
                F0=>XLXN_7);
   
   XLXI_6 : zamek
      port map (CLK=>Clk_50MHz,
                DO_Rdy=>XLXN_8,
                F0=>XLXN_7,
                Reset=>reset,
                x(7 downto 0)=>XLXN_1(7 downto 0),
                nr(3 downto 0)=>line(3 downto 0),
                y=>y);
   
   XLXI_7 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_17(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>line(63 downto 0),
                Reset=>reset,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
end BEHAVIORAL;


