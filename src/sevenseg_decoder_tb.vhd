----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 04:07:03 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    component sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
   end component sevenseg_decoder;
   
    signal w_in  : std_logic_vector(3 downto 0) := x"0"; -- the numbers being added
	signal w_out : std_logic_vector(6 downto 0) := "0000000";
begin
	  sevenseg_decoder_uut : sevenseg_decoder port map (
	   i_Hex      => w_in(3 downto 0),
	   o_seg_n    => w_out(6 downto 0)
	);
test_process : process 
	begin
	   -- Test some inputs
	   w_in <= "0000"; wait for 10 ns;
	   w_in <= "0001"; wait for 10 ns;
	   w_in <= "0010"; wait for 10 ns;
	   w_in <= "0011"; wait for 10 ns;
	   w_in <= "0100"; wait for 10 ns;
	   w_in <= "0101"; wait for 10 ns;
	   w_in <= "0110"; wait for 10 ns;
	   w_in <= "0111"; wait for 10 ns;
		wait; -- wait forever
	end process;	

end Behavioral;
