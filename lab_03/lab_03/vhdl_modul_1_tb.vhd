--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:31:27 11/04/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/pn_11_lab_03/lab_03/vhdl_modul_1_tb.vhd
-- Project Name:  lab_03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vhdl_modul_1
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
 
ENTITY vhdl_modul_1_tb IS
END vhdl_modul_1_tb;
 
ARCHITECTURE behavior OF vhdl_modul_1_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vhdl_modul_1
    PORT(
         X : IN  std_logic_vector(3 downto 0);
         Y : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vhdl_modul_1 PORT MAP (
          X => X,
          Y => Y
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--  end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

--      wait for <clock>_period*10;
		
		X <= X"0", X"1" after 50 ns, X"2" after 100 ns, X"3" after 150 ns, X"4" after 200 ns, X"5" after 250 ns, X"6" after 300 ns, X"7" after 350 ns, X"8" after 400 ns, X"9" after 450 ns, X"A" after 500 ns, X"B" after 550 ns, X"C" after 600 ns, X"D" after 650 ns, X"E" after 700 ns, X"F" after 750 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
