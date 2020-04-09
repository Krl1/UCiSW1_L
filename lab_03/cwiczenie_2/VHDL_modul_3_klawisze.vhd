----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:04:54 11/04/2019 
-- Design Name: 
-- Module Name:    VHDL_modul_3_klawisze - Behavioral 
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

entity VHDL_modul_3_klawisze is
port (
		RD : in STD_LOGIC;
		WEJ : in STD_LOGIC_VECTOR(7 downto 0);
		CLR : out STD_LOGIC;
		CE : out STD_LOGIC
		);

end VHDL_modul_3_klawisze;

architecture Dataflow of VHDL_modul_3_klawisze is
begin

	CLR <= 	'1' when WEJ = X"72" and RD = '1' else
				'0';
	CE <=	'1' when WEJ = X"69" and RD = '1' else
			'0';

end Dataflow;

