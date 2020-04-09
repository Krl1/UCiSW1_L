----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:17 11/21/2019 
-- Design Name: 
-- Module Name:    zamek - Behavioral 
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

entity zamek is
    Port ( CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           x : in  STD_LOGIC_VECTOR (7 downto 0);
           y : out  STD_LOGIC;
			  nr: out STD_LOGIC_VECTOR (3 downto 0);
           DO_Rdy : in  STD_LOGIC;
			  F0 : in STD_LOGIC
			  );
end zamek;

architecture Behavioral of zamek is

	type state_type is ( A, B, C, D, E);
	signal state, next_state : state_type;
	
begin

	process1 : process(CLK)
	begin
		if rising_edge(CLK) then
			if Reset = '1' then
				state <= A;
			else
				state <= next_state;
			end if;
		end if;
	end process process1;
	
	process2: process(Do_Rdy, state, X)
	begin
	next_state <= state;
	if Do_Rdy = '1' and F0 = '0' then
		case state is
		when A => if x = X"1C" then next_state <= B; end if;
		when B => if x = X"32" then next_state <= C; elsif x = X"1C" then next_state <= B; else next_state <= A; end if;
		when C => if x = X"21" then next_state <= D; elsif x = X"1C" then next_state <= B; else next_state <= A; end if;
		when D => if x = X"23" then next_state <= E; elsif x = X"1C" then next_state <= B; else next_state <= A; end if;
		when E => if x = X"1C" then next_state <= B; else next_state <= A; end if;
		end case;
	end if;
end process process2;

y <= '1' when state = E else '0';

with state select
	nr<= X"A" when A,
	X"B" when B,
	X"C" when C,
	X"D" when D,
	X"E" when E,
	X"A" when others;

end Behavioral;

