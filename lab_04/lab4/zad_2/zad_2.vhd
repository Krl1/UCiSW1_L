----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:20 11/18/2019 
-- Design Name: 
-- Module Name:    zad_2 - Behavioral 
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

entity zad_2 is
    Port ( X : in  STD_LOGIC;
           Y : out  STD_LOGIC;
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
			  wej : in STD_LOGIC_VECTOR(17 downto 0);
           CE : in  STD_LOGIC);
end zad_2;

architecture Behavioral of zad_2 is

	type state_type is ( A, B, C, D, E, F, G);
	signal state, next_state : state_type;

begin

	process1 : process(CLK)
	begin
		if rising_edge(CLK) then
			if CLR = '1' then
				state <= A;
			else
				state <= next_state;
			end if;
		end if;
	end process process1;
	
	process2: process( state, X)
	begin
	next_state <= state;
	
	case state is
	
	when A =>
		if X = '0' then 
			next_state <= B;
		end if;
		
	when B =>
		if X = '0' then
			next_state <= C;
		else 
			next_state <= A;
		end if;
		
	when C =>
		if X = '0' then
			next_state <= D;
		else 
			next_state <= A;
		end if;
		
	when D =>
		if X = '1' then
			next_state <= E;
		end if;
		
	when E =>
		if X = '0' then
			next_state <= B;
		else 
			next_state <= F;
		end if;
		
	when F =>
		if X = '0' then
			next_state <= B;
		else 
			next_state <= G;
		end if;
		
	when G =>
		if X = '0' then
			next_state <= B;
		else 
			next_state <= A;
		end if;
		
	end case;
end process process2;

Y <= '1' when state = G else '0';
	

end Behavioral;

























