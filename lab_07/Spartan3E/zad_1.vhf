--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : zad_1.vhf
-- /___/   /\     Timestamp : 01/20/2020 13:31:27
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
   signal XLXN_1                   : std_logic_vector (7 downto 0);
   signal XLXN_7                   : std_logic;
   signal XLXN_25                  : std_logic;
   signal XLXN_31                  : std_logic;
   signal XLXN_32                  : std_logic;
   signal XLXN_33                  : std_logic_vector (7 downto 0);
   signal XLXN_34                  : std_logic;
   signal XLXI_8_Blink_openSignal  : std_logic;
   signal XLXI_8_Cursor_openSignal : std_logic;
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
   
   component LCDWrite
      port ( WE        : in    std_logic; 
             DnI       : in    std_logic; 
             Reset     : in    std_logic; 
             Cursor    : in    std_logic; 
             Blink     : in    std_logic; 
             DI        : in    std_logic_vector (7 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RS    : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             SF_CE     : out   std_logic; 
             Busy      : out   std_logic; 
             Clk_50MHz : in    std_logic; 
             Clk_Sys   : in    std_logic);
   end component;
   
   component zamek
      port ( CLK    : in    std_logic; 
             Reset  : in    std_logic; 
             DO_Rdy : in    std_logic; 
             F0     : in    std_logic; 
             Busy   : in    std_logic; 
             x      : in    std_logic_vector (7 downto 0); 
             y      : out   std_logic; 
             we     : out   std_logic; 
             DnI    : out   std_logic; 
             nr     : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_4 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_31,
                E0=>open,
                F0=>XLXN_7);
   
   XLXI_8 : LCDWrite
      port map (Blink=>XLXI_8_Blink_openSignal,
                Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                Cursor=>XLXI_8_Cursor_openSignal,
                DI(7 downto 0)=>XLXN_33(7 downto 0),
                DnI=>XLXN_34,
                Reset=>reset,
                WE=>XLXN_25,
                Busy=>XLXN_32,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_9 : zamek
      port map (Busy=>XLXN_32,
                CLK=>Clk_50MHz,
                DO_Rdy=>XLXN_31,
                F0=>XLXN_7,
                Reset=>reset,
                x(7 downto 0)=>XLXN_1(7 downto 0),
                DnI=>XLXN_34,
                nr(7 downto 0)=>XLXN_33(7 downto 0),
                we=>XLXN_25,
                y=>y);
   
end BEHAVIORAL;


