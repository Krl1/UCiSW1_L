-- Vhdl test bench created from schematic C:\Users\lab\Desktop\lab_06\Spartan3E\zad_1.sch - Mon Dec 16 13:17:01 2019
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY zad_1_zad_1_sch_tb IS
END zad_1_zad_1_sch_tb;
ARCHITECTURE behavioral OF zad_1_zad_1_sch_tb IS 

   COMPONENT zad_1
   PORT( PS2_Clk	:	IN	STD_LOGIC; 
          Clk_50MHz	:	IN	STD_LOGIC; 
          PS2_Data	:	IN	STD_LOGIC; 
          y	:	OUT	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          LCD_E	:	OUT	STD_LOGIC; 
          LCD_RS	:	OUT	STD_LOGIC; 
          LCD_RW	:	OUT	STD_LOGIC; 
          LCD_D	:	INOUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          SF_CE	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL PS2_Clk	:	STD_LOGIC;
   SIGNAL Clk_50MHz	:	STD_LOGIC;
   SIGNAL PS2_Data	:	STD_LOGIC;
   SIGNAL y	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL LCD_E	:	STD_LOGIC;
   SIGNAL LCD_RS	:	STD_LOGIC;
   SIGNAL LCD_RW	:	STD_LOGIC;
   SIGNAL LCD_D	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL SF_CE	:	STD_LOGIC;

BEGIN

   UUT: zad_1 PORT MAP(
		PS2_Clk => PS2_Clk, 
		Clk_50MHz => Clk_50MHz, 
		PS2_Data => PS2_Data, 
		y => y, 
		reset => reset, 
		LCD_E => LCD_E, 
		LCD_RS => LCD_RS, 
		LCD_RW => LCD_RW, 
		LCD_D => LCD_D, 
		SF_CE => SF_CE
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
