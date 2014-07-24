--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:26:35 07/24/2014
-- Design Name:   
-- Module Name:   /home/sjagdis/SENG440/colourspaceHW/rgbtest.vhd
-- Project Name:  colourspaceHW
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rgbycbcr
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
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
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
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


      -- insert stimulus here
		compact_in <= "00000000111111111111111111111111";
		wait for 40 ns;
		
		--compact_in <= "00000000 11111111 11111111 11111111";
		compact_in <= "00000000000000000000000000000000";
		wait for 40 ns;
		
		compact_in <= "00000000100001111100010110010101";
		wait for 40 ns;

      wait;
   end process;

END;
