--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:40:46 11/04/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/pn_11_lab_03/cwiczenie_2/vhdl_modul_2_tb.vhd
-- Project Name:  cwiczenie_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vhdl_modul_2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY vhdl_modul_2_tb IS
END vhdl_modul_2_tb;
 
ARCHITECTURE behavior OF vhdl_modul_2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vhdl_modul_2
    PORT(
         CLR : IN  std_logic;
         CE : IN  std_logic;
         CLK : IN  std_logic;
         OUTPUT : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLR : std_logic := '0';
   signal CE : std_logic := '1';
   signal CLK : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vhdl_modul_2 PORT MAP (
          CLR => CLR,
          CE => CE,
          CLK => CLK,
          OUTPUT => OUTPUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
