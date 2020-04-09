--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:53:28 01/20/2020
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/lab_06/Spartan3E/lab7tb.vhd
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
 
ENTITY lab7tb IS
END lab7tb;
 
ARCHITECTURE behavior OF lab7tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zamek
    PORT(
         CLK : IN  std_logic;
         Reset : IN  std_logic;
         x : IN  std_logic_vector(7 downto 0);
         y : OUT  std_logic;
         we : OUT  std_logic;
         nr : OUT  std_logic_vector(7 downto 0);
         DO_Rdy : IN  std_logic;
         F0 : IN  std_logic;
			Busy : IN std_logic;
			DnI : OUT std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Reset : std_logic := '0';
   signal x : std_logic_vector(7 downto 0) := (others => '0');
   signal DO_Rdy : std_logic := '0';
   signal F0 : std_logic := '0';
	signal Busy : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   signal DnI : std_logic;
   signal we : std_logic;
   signal nr : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zamek PORT MAP (
          CLK => CLK,
          Reset => Reset,
          x => x,
          y => y,
          we => we,
			 DnI => DnI,
          nr => nr,
          DO_Rdy => DO_Rdy,
          F0 => F0,
			 Busy => Busy
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
	
	process begin 
	loop wait until rising_edge( Clk ) and we = '1';
	Busy <= '1'; 
	wait for 11 * CLK_period;  -- e.g. 11 * CLK_period 
	Busy <= '0'; 
	end loop; 
	end process; 

END;
