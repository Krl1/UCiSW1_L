--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:17:41 12/16/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/lab_06/Spartan3E/zad1tb.vhd
-- Project Name:  Spartan3E
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: zamek
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
 
ENTITY zad1tb IS
END zad1tb;
 
ARCHITECTURE behavior OF zad1tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zamek
    PORT(
         CLK : IN  std_logic;
         Reset : IN  std_logic;
         x : IN  std_logic_vector(7 downto 0);
         y : OUT  std_logic;
         nr : OUT  std_logic_vector(3 downto 0);
         DO_Rdy : IN  std_logic;
         F0 : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Reset : std_logic := '0';
   signal x : std_logic_vector(7 downto 0) := (others => '0');
   signal DO_Rdy : std_logic := '0';
   signal F0 : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   signal nr : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zamek PORT MAP (
          CLK => CLK,
          Reset => Reset,
          x => x,
          y => y,
          nr => nr,
          DO_Rdy => DO_Rdy,
          F0 => F0
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
	
	type typeByteArray is array (NATURAL range <> ) of STD_LOGIC_VECTOR ( 7 downto 0);
	variable arrBytes : typeByteArray(0 to 16) 
		:= (X"22", X"35", X"1C", X"32", X"21", X"23", X"22", X"35", X"1C", X"32", X"21", X"1C", X"32", X"21", X"23", X"22", X"35");
		
   begin		
      wait for 100 ns;	
		
		for i in arrBytes'RANGE loop
			F0 <= '0';
			
			
			
			x <= arrBytes(i);
			wait for CLK_period;
			DO_Rdy <= '1';
			wait for CLK_period;
			DO_Rdy <= '0';
			wait for 2*CLK_period;
			
			
			F0 <= '1';
			wait for CLK_period;
			DO_Rdy <= '1';
			wait for CLK_period;
			DO_Rdy <= '0';
			wait for 2*CLK_period;
			
		
		
		
		end loop;

      wait;
   end process;

END;
