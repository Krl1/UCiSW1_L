----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:49 11/18/2019 
-- Design Name: 
-- Module Name:    sekwencja - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.

library UNISIM;
use UNISIM.VComponents.all;


entity sekwencja is
    Port ( X : in  STD_LOGIC;
           Y : out  STD_LOGIC;
           CE : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
			  wej : in STD_LOGIC_VECTOR(17 downto 0));
end sekwencja;

architecture Behavioral of sekwencja is

	signal D : STD_LOGIC_VECTOR (2 downto 0);
	signal Q :  STD_LOGIC_VECTOR (2 downto 0);
	signal Q1 :  STD_LOGIC_VECTOR (3 downto 0);

begin
	FDCE2 : FDCE port map (Q(2), CLK, CE, CLR, D(2));
	FDCE1 : FDCE port map (Q(1), CLK, CE, CLR, D(1));
	FDCE0 : FDCE port map (Q(0), CLK, CE, CLR, D(0));
	
	Q1 <= Q & X; 
	Y <= '1' when Q = O"6" else '0';
	
	with Q1 select
	D <= 	O"1" when X"0",
			O"0" when X"1",
			O"2" when X"2",
			O"0" when X"3",
			O"3" when X"4",
			O"0" when X"5",
			O"3" when X"6",
			O"4" when X"7",
			O"1" when X"8",
			O"5" when X"9",
			O"1" when X"A",
			O"6" when X"B",
			O"1" when X"C",
			O"0" when X"D",
			O"0" when others;
					
	

	
	
end Behavioral;

