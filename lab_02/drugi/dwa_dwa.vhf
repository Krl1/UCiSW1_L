--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : dwa_dwa.vhf
-- /___/   /\     Timestamp : 10/21/2019 13:45:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/Users/lab/Desktop/nw/drugi/dwa_dwa.vhf -w C:/Users/lab/Desktop/nw/drugi/dwa_dwa.sch
--Design Name: dwa_dwa
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

entity COMP8_MXILINX_dwa_dwa is
   port ( A  : in    std_logic_vector (7 downto 0); 
          B  : in    std_logic_vector (7 downto 0); 
          EQ : out   std_logic);
end COMP8_MXILINX_dwa_dwa;

architecture BEHAVIORAL of COMP8_MXILINX_dwa_dwa is
   attribute BOX_TYPE   : string ;
   signal AB0  : std_logic;
   signal AB1  : std_logic;
   signal AB2  : std_logic;
   signal AB3  : std_logic;
   signal AB4  : std_logic;
   signal AB5  : std_logic;
   signal AB6  : std_logic;
   signal AB7  : std_logic;
   signal AB03 : std_logic;
   signal AB47 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component XNOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XNOR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   I_36_32 : AND4
      port map (I0=>AB7,
                I1=>AB6,
                I2=>AB5,
                I3=>AB4,
                O=>AB47);
   
   I_36_33 : XNOR2
      port map (I0=>B(6),
                I1=>A(6),
                O=>AB6);
   
   I_36_34 : XNOR2
      port map (I0=>B(7),
                I1=>A(7),
                O=>AB7);
   
   I_36_35 : XNOR2
      port map (I0=>B(5),
                I1=>A(5),
                O=>AB5);
   
   I_36_36 : XNOR2
      port map (I0=>B(4),
                I1=>A(4),
                O=>AB4);
   
   I_36_41 : AND4
      port map (I0=>AB3,
                I1=>AB2,
                I2=>AB1,
                I3=>AB0,
                O=>AB03);
   
   I_36_42 : XNOR2
      port map (I0=>B(2),
                I1=>A(2),
                O=>AB2);
   
   I_36_43 : XNOR2
      port map (I0=>B(3),
                I1=>A(3),
                O=>AB3);
   
   I_36_44 : XNOR2
      port map (I0=>B(1),
                I1=>A(1),
                O=>AB1);
   
   I_36_45 : XNOR2
      port map (I0=>B(0),
                I1=>A(0),
                O=>AB0);
   
   I_36_50 : AND2
      port map (I0=>AB47,
                I1=>AB03,
                O=>EQ);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity AND9_MXILINX_dwa_dwa is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          I4 : in    std_logic; 
          I5 : in    std_logic; 
          I6 : in    std_logic; 
          I7 : in    std_logic; 
          I8 : in    std_logic; 
          O  : out   std_logic);
end AND9_MXILINX_dwa_dwa;

architecture BEHAVIORAL of AND9_MXILINX_dwa_dwa is
   attribute BOX_TYPE   : string ;
   signal S0 : std_logic;
   signal S1 : std_logic;
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
begin
   I_36_110 : AND4
      port map (I0=>I0,
                I1=>I1,
                I2=>I2,
                I3=>I3,
                O=>S0);
   
   I_36_127 : AND4
      port map (I0=>I4,
                I1=>I5,
                I2=>I6,
                I3=>I7,
                O=>S1);
   
   I_36_176 : AND3
      port map (I0=>S0,
                I1=>S1,
                I2=>I8,
                O=>O);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity INV4_MXILINX_dwa_dwa is
   port ( I0 : in    std_logic; 
          I1 : in    std_logic; 
          I2 : in    std_logic; 
          I3 : in    std_logic; 
          O0 : out   std_logic; 
          O1 : out   std_logic; 
          O2 : out   std_logic; 
          O3 : out   std_logic);
end INV4_MXILINX_dwa_dwa;

architecture BEHAVIORAL of INV4_MXILINX_dwa_dwa is
   attribute BOX_TYPE   : string ;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   I_36_37 : INV
      port map (I=>I3,
                O=>O3);
   
   I_36_38 : INV
      port map (I=>I2,
                O=>O2);
   
   I_36_39 : INV
      port map (I=>I1,
                O=>O1);
   
   I_36_40 : INV
      port map (I=>I0,
                O=>O0);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity licznik_MUSER_dwa_dwa is
   port ( CE  : in    std_logic; 
          CLK : in    std_logic; 
          CLR : in    std_logic; 
          Q   : out   std_logic_vector (2 downto 0));
end licznik_MUSER_dwa_dwa;

architecture BEHAVIORAL of licznik_MUSER_dwa_dwa is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity dwa_dwa is
   port ( CLK   : in    std_logic; 
          RS_RX : in    std_logic; 
          D7S_S : out   std_logic_vector (6 downto 0));
end dwa_dwa;

architecture BEHAVIORAL of dwa_dwa is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal CE      : std_logic;
   signal CLR     : std_logic;
   signal DO      : std_logic_vector (7 downto 0);
   signal wej     : std_logic_vector (3 downto 0);
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_31 : std_logic_vector (7 downto 0);
   component licznik_MUSER_dwa_dwa
      port ( CLK : in    std_logic; 
             CLR : in    std_logic; 
             CE  : in    std_logic; 
             Q   : out   std_logic_vector (2 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component HexTo7Seg
      port ( Hex     : in    std_logic_vector (3 downto 0); 
             Displ7S : out   std_logic_vector (6 downto 0));
   end component;
   
   component RS232_RX
      port ( Reset  : in    std_logic; 
             Clk_XT : in    std_logic; 
             Rdy    : out   std_logic; 
             DO     : out   std_logic_vector (7 downto 0); 
             RS_RX  : in    std_logic);
   end component;
   
   component INV4_MXILINX_dwa_dwa
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O0 : out   std_logic; 
             O1 : out   std_logic; 
             O2 : out   std_logic; 
             O3 : out   std_logic);
   end component;
   
   component AND9_MXILINX_dwa_dwa
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             I7 : in    std_logic; 
             I8 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component COMP8_MXILINX_dwa_dwa
      port ( A  : in    std_logic_vector (7 downto 0); 
             B  : in    std_logic_vector (7 downto 0); 
             EQ : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_6 : label is "XLXI_6_0";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_1";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_2";
begin
   XLXN_31(7 downto 0) <= x"72";
   XLXI_1 : licznik_MUSER_dwa_dwa
      port map (CE=>CE,
                CLK=>CLK,
                CLR=>CLR,
                Q(2 downto 0)=>wej(2 downto 0));
   
   XLXI_2 : GND
      port map (G=>wej(3));
   
   XLXI_3 : HexTo7Seg
      port map (Hex(3 downto 0)=>wej(3 downto 0),
                Displ7S(6 downto 0)=>D7S_S(6 downto 0));
   
   XLXI_4 : RS232_RX
      port map (Clk_XT=>CLK,
                Reset=>CLR,
                RS_RX=>RS_RX,
                DO(7 downto 0)=>DO(7 downto 0),
                Rdy=>XLXN_22);
   
   XLXI_6 : INV4_MXILINX_dwa_dwa
      port map (I0=>DO(7),
                I1=>DO(4),
                I2=>DO(2),
                I3=>DO(1),
                O0=>XLXN_21,
                O1=>XLXN_20,
                O2=>XLXN_18,
                O3=>XLXN_17);
   
   XLXI_8 : AND9_MXILINX_dwa_dwa
      port map (I0=>XLXN_22,
                I1=>XLXN_21,
                I2=>DO(6),
                I3=>DO(5),
                I4=>XLXN_20,
                I5=>DO(3),
                I6=>XLXN_18,
                I7=>XLXN_17,
                I8=>DO(0),
                O=>CE);
   
   XLXI_12 : COMP8_MXILINX_dwa_dwa
      port map (A(7 downto 0)=>DO(7 downto 0),
                B(7 downto 0)=>XLXN_31(7 downto 0),
                EQ=>CLR);
   
end BEHAVIORAL;


