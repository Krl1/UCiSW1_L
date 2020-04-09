----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:16 11/04/2019 
-- Design Name: 
-- Module Name:    vhdl_modul_1 - Behavioral 
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity vhdl_modul_1 is
port ( 
	X : in STD_LOGIC_VECTOR (3 downto 0);
	Y : out STD_LOGIC_VECTOR (3 downto 0) 
);	
		
end vhdl_modul_1;

architecture Dataflow of vhdl_modul_1 is
begin
	with X select
	Y <=  X"3" when X"0",
			X"4" when X"1",
			X"5" when X"2",
			X"6" when X"3",
			X"7" when X"4",
			X"8" when X"5",
			X"9" when X"6",
			X"A" when X"7",
			X"B" when X"8",
			X"C" when X"9",
			X"D" when X"A",
			X"E" when X"B",
			X"F" when X"C",
			X"0" when X"D",
			X"1" when X"E",
			X"2" when X"F",
			X"0" when others;
end Dataflow;

