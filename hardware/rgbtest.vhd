----------------------------------------------------------------------------------
-- Create Date:    22:15:43 07/23/2014 
-- Course Name: 	 SENG 440 - Embedded Systems
-- Instructor:		 Dr. Mihai Sima
-- Authors:			 Shane Jagdis, Austin Warren
-- Module Name:    rgbtest.vhd 
-- Description:	  Tests the rgbycbcr.vhd code
-- Revision 2.0 - Included downsampling
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY rgbtest IS
END rgbtest;
 
ARCHITECTURE behavior OF rgbtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT rgbycbcr
    PORT(
         compact_in : IN  std_logic_vector(31 downto 0);
         compact_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal compact_in : std_logic_vector(31 downto 0) := (others => '0');
 	--Outputs
   signal compact_out : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rgbycbcr PORT MAP (
          compact_in => compact_in,
          compact_out => compact_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		-- Reset the averaging calculation
		compact_in <= "00000001111111111111111111111111";
		wait for 10 ns;
		
		compact_in <= "00000000100001111100010110010101";			--(00 87 C5 95)
		-- Expected output: "0000 0000 1010 0110 0111 0010 0110 0111" (00 A6 72 67)
		wait for 10 ns;
		
		compact_in <= "00000000010000001010011111000011";			--(00 40 A7 C3)
		-- Expected output: "0000 0000 1000 1011 1001 1001 0101 0001" (00 8B 99 51)
		wait for 10 ns;
		
		compact_in <= "00000000110100100001111001111000";			--(00 D2 1E 78)
		-- Expected output: "0000 0000 0110 0010 1001 0000 1100 1001" (00 62 90 C9)
		wait for 10 ns;
		
		-- This input asks for the average all the values for Cb and Cr so far
		compact_in <= "00000001100011001000100011101010";			--(01 8C 88 EA)
		-- Expected output: "0000 0000 1001 0100 1001 0001 0111 1111" (00 94 91 7F)
		wait for 10 ns;
		
		compact_in <= "00000000111111111111111111111111"; 			--(00 FF FF FF)
		-- Expected output: "0000 0000 1110 1011 1000 0000 1000 0000" (00 EB 80 80)
		wait for 10 ns;
		
		compact_in <= "00000000000000000000000000000000";			--(00 00 00 00)
		-- Expected output: "0000 0000 0001 0000 1000 0000 1000 0000" (00 10 80 80)
		wait for 10 ns;
		
		compact_in <= "00000000000000000000000011111111";			--(00 00 00 FF)
		-- Expected output: "0000 0000 0010 1111 1110 1111 0111 0000" (00 2F EF 70)
		wait for 10 ns;
		
		compact_in <= "00000000111111111111111100000000";			--(00 FF FF 00)
		-- Expected output: "0000 0000 1100 1111 0001 0000 1000 1111" (00 CF 10 8F)
		wait for 10 ns;
		
		compact_in <= "00000000000000001111111111111111";			--(00 00 FF FF)
		-- Expected output: "0000 0000 1010 1111 1001 1111 0001 0000" (00 AF 9F 10)
		wait for 10 ns;
		
		compact_in <= "00000000111111110000000000000000";			--(00 FF 00 00)
		-- Expected output: "0000 0000 0100 1111 0110 0000 1110 1111" (00 4F 60 EF)
		wait for 10 ns;

      wait;
   end process;

END;
