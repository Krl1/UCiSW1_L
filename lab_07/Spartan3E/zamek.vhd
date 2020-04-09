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
			  we : out  STD_LOGIC;
			  nr: out STD_LOGIC_VECTOR (7 downto 0);
           DO_Rdy : in  STD_LOGIC;
			  F0 : in STD_LOGIC;
			  Busy : in STD_LOGIC;
			  DnI : out STD_LOGIC
			  );
end zamek;

architecture Behavioral of zamek is

	type state_type is ( A, B, C, D, E, F, G, H, I, J, K, L);
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
	
		case state is
		when A => if x = X"1C" and Do_Rdy = '1' and F0 = '0' then next_state <= B; end if;
		when B => if x = X"32" and Do_Rdy = '1' and F0 = '0' then next_state <= C; elsif x = X"1C" and Do_Rdy = '1' and F0 = '0' then next_state <= B; elsif  Do_Rdy = '1' and F0 = '0'  then next_state <= A; end if;
		when C => if x = X"21" and Do_Rdy = '1' and F0 = '0' then next_state <= D; elsif x = X"1C" and Do_Rdy = '1' and F0 = '0' then next_state <= B; elsif Do_Rdy = '1' and F0 = '0' then next_state <= A; end if;
		when D => if x = X"23" and Do_Rdy = '1' and F0 = '0' then next_state <= E; elsif x = X"1C" and Do_Rdy = '1' and F0 = '0' then next_state <= B; elsif  Do_Rdy = '1' and F0 = '0' then next_state <= A; end if;
		when E => next_state <= F;
		when F => if Busy = '0' then next_state <= G; end if; 
		when G => next_state <= H;
		when H => if x = X"1C" and Do_Rdy = '1' and F0 = '0' then next_state <= I; elsif Do_Rdy = '1' and F0 = '0' then next_state <= K; end if;
		when I => if Busy = '0' then next_state <= J; end if; 
		when J => next_state <= B;
		when K => if Busy = '0' then next_state <= L; end if;
		when L => next_state <= A;
		end case;
	
	
end process process2;

y <= '1' when state = H else '0';
we <= '1' when state = E or state = G or state = J or state = L else '0';
DnI <= '0' when state = I  or state = K or state = J or state = L else '1';


with state select
	nr<= X"4F" when E,
	X"4B" when G,
	X"01" when J,
	X"01" when L,
	X"00" when others;
end Behavioral;

