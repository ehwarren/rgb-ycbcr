----------------------------------------------------------------------------------
-- Create Date:    22:15:43 07/23/2014 
-- Course Name: 	 SENG 440 - Embedded Systems
-- Instructor:		 Dr. Mihai Sima
-- Authors:			 Shane Jagdis, Austin Warren
-- Module Name:    rgbycbcr - Behavioral 
-- Description:	  Converts RGB values to YCbCr values and averages
--						  every 4 Cb & Cr values if bit 24 of the input is
--						  high. If bit 24 is low it still outputs the Cb &
--						  Cr values for that input
-- Revision 2.0 - Included downsampling
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
	signal avg_bit: STD_LOGIC;
	signal r, g, b: STD_LOGIC_VECTOR(7 downto 0);
	signal y, cb, cr: unsigned(7 downto 0);
begin
	-- Unpack the RGB values from the input
	avg_bit <= compact_in(24);
	r <= compact_in(23 downto 16);
	g <= compact_in(15 downto 8);
	b <= compact_in(7 downto 0);
	
			
	-- Pack the output back into a 32 bit vector
	--compact_out <= "00000000" & STD_LOGIC_VECTOR(y) & STD_LOGIC_VECTOR(cb) & STD_LOGIC_VECTOR(cr);
	
	pout:	process (y, cb, cr) is
		variable cb_avg: integer := 0;
		variable cr_avg: integer := 0;
		variable avg_count: integer := 0;
	begin
		-- Add the new values to the averages and increment the avg_count
		cb_avg := cb_avg + to_integer(cb);
		cr_avg := cr_avg + to_integer(cr);
		avg_count := avg_count + 1;
		
		-- If bit 24 of compact_in was '1'
		if (avg_bit = '1') then
			-- Calculate final averaged values
			cb_avg := cb_avg / avg_count;
			cr_avg := cr_avg / avg_count;
			-- Pack the output back into a 32 bit vector
			compact_out <= "00000000" & STD_LOGIC_VECTOR(y) & STD_LOGIC_VECTOR(to_unsigned(cb_avg, 8)) & STD_LOGIC_VECTOR(to_unsigned(cr_avg,8));
			-- Reset the average variables for next iteration
			cb_avg := 0;
			cr_avg := 0;
			avg_count := 0;
			
		-- Otherwise just put the new calculated values on output (Cb and Cr will not be used)
		else
			-- Pack the output back into a 32 bit vector
			compact_out <= "00000000" & STD_LOGIC_VECTOR(y) & STD_LOGIC_VECTOR(cb) & STD_LOGIC_VECTOR(cr);
		end if;
	end process pout;


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

		y <= y_temp(7 downto 0);		-- Output value to signal y (unsafe, but acceptable with threshold check)
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

		cb <= cb_temp(7 downto 0);		-- Output value to signal y (unsafe, but acceptable with threshold check)
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

		cr <= cr_temp(7 downto 0);		-- Output value to signal y (unsafe, but acceptable with threshold check)
	end process pcr;
end Behavioral;

