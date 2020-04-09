----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:59:19 11/04/2019 
-- Design Name: 
-- Module Name:    vhdl_modul_2 - Behavioral 
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

entity vhdl_modul_2 is
port (
	CLR : in STD_LOGIC;
	CE : in STD_LOGIC;
	CLK : in STD_LOGIC;
	OUTPUT : out STD_LOGIC_VECTOR (2 downto 0)
	);
end vhdl_modul_2;

architecture Dataflow of vhdl_modul_2 is
	signal D : STD_LOGIC_VECTOR (2 downto 0);
	signal Q :  STD_LOGIC_VECTOR (2 downto 0);
begin
	FDCE2 : FDCE port map (Q(2), CLK, CE, CLR, D(2));
	FDCE1 : FDCE port map (Q(1), CLK, CE, CLR, D(1));
	FDCE0 : FDCE port map (Q(0), CLK, CE, CLR, D(0));
	OUTPUT <= Q;
	
	with Q select
	D <= 	O"6" when O"0",
					O"7" when O"6",
					O"1" when O"7",
					O"2" when O"1",
					O"3" when O"2",
					O"4" when O"3",
					O"5" when O"4",
					O"0" when O"5",
					O"0" when others;

end Dataflow;


