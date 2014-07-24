----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:15:43 07/23/2014 
-- Design Name: 
-- Module Name:    rgbycbcr - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;

entity rgbycbcr is
			-- compact_in:	XXXX XXXX RRRR RRRR GGGG GGGG BBBB BBBB
			-- compact_out:	XXXX XXXX YYYY YYYY CbCbCbCb CbCbCbCb CrCrCrCr CrCrCrCr
    Port ( compact_in : in  STD_LOGIC_VECTOR (31 downto 0);
           compact_out : out  STD_LOGIC_VECTOR (31 downto 0));
end rgbycbcr;

architecture Behavioral of rgbycbcr is
	signal r, g, b: STD_LOGIC_VECTOR(7 downto 0);
	signal y, cb, cr: unsigned(7 downto 0);
begin
	-- Unpack the RGB values from the input
	r <= compact_in(23 downto 16);
	g <= compact_in(15 downto 8);
	b <= compact_in(7 downto 0);
	
	-- Pack the output back into a 32 bit vector
	compact_out <= "00000000" & STD_LOGIC_VECTOR(y) & STD_LOGIC_VECTOR(cb) & STD_LOGIC_VECTOR(cr);

	-- Process to calculate Y value if r, g, b change
	py:	process (r, g, b) is
		variable y_temp: unsigned(15 downto 0);
	begin
		-- y = 16.0 + 0.257 * r + 0.504 * g + 0.098 * b;
		y_temp := 256 + 4 * unsigned(r) + 8 * unsigned(g) + 2 * unsigned(b);	-- Scale factor = 2^4
		
		-- Scale back down
		y_temp := y_temp / 16;
		
		-- y range: 16 -> 235
		if (y_temp < 16) then
			y_temp := to_unsigned(16, 16);
		elsif (y_temp > 235) then
			y_temp := to_unsigned(235, 16);
		end if;

		y <= y_temp(7 downto 0);		-- Output value to signal y (unsafe, but acceptable with if statement)
	end process py;

	-- Process to calculate Cb value if r, g, b change
	pcb:	process (r, g, b) is
		variable cb_temp: unsigned(15 downto 0);
	begin
		-- cb = 128.0 - 0.148 * r - 0.291* g + 0.439 * b;
		cb_temp := 2048 - 2 * unsigned(r) - 5 * unsigned(g) + 7 * unsigned(b);	-- Scale factor = 2^4

		-- Scale back down
		cb_temp := cb_temp / 16;

		-- cb range: 16 -> 240
		if (cb_temp < 16) then
			cb_temp := to_unsigned(16, 16);
		elsif (cb_temp > 240) then
			cb_temp := to_unsigned(240, 16);
		end if;

		cb <= cb_temp(7 downto 0);		-- Output value to signal y (unsafe, but acceptable with if statement)
	end process pcb;

	-- Process to calculate Cr value if r, g, b change
	pcr:	process (r, g, b) is
		variable cr_temp: unsigned(15 downto 0);
	begin
		-- cr = 128.0 + 0.439 * r - 0.368 * g - 0.071 * b;
		cr_temp := 2048 + 7 * unsigned(r) - 6 * unsigned(g) - unsigned(b);	-- Scale factor = 2^4
		
		-- Scale back down
		cr_temp := cr_temp / 16;

		-- cr range: 16 -> 240
		if (cr_temp < 16) then
			cr_temp := to_unsigned(16, 16);
		elsif (cr_temp > 240) then
			cr_temp := to_unsigned(240, 16);
		end if;

		cr <= cr_temp(7 downto 0);		-- Output value to signal y (unsafe, but acceptable with if statement)
	end process pcr;
end Behavioral;

