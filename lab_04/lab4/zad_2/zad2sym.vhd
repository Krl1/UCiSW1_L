--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:40:50 11/18/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/lab4/zad_2/zad2sym.vhd
-- Project Name:  zad_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: zad_2
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
 
ENTITY zad2sym IS
END zad2sym;
 
ARCHITECTURE behavior OF zad2sym IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zad_2
    PORT(
         X : IN  std_logic;
         Y : OUT  std_logic;
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         CE : IN  std_logic;
--			wej : IN std_logic_vector
        );
    END COMPONENT;
    

 
   --Inputs
   signal X : std_logic := '0';
   signal CE : std_logic := '1';
   signal CLR : std_logic := '0';
   signal CLK : std_logic := '0';
	signal wej : STD_LOGIC_VECTOR(17 DOWNTO 0) := "100001111100011001";
	

 	--Outputs
   signal Y : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zad_2 PORT MAP (
          X => X,
          Y => Y,
          CE => CE,
          CLR => CLR,
          CLK => CLK,
			 wej => wej
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '1';
		wait for CLK_period/2;
		CLK <= '0';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
      -- hold reset state for 100 ns.
      wait for 100 ns;		
		
		for i in 17 downto 0 loop
			wait for 5 ns;
			X<= wej(i);
			wait for 5 ns;
		end loop;
      --wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
