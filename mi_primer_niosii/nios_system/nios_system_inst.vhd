	component nios_system is
		port (
			clock_50_clk              : in  std_logic                    := 'X'; -- clk
			reset_reset_n             : in  std_logic                    := 'X'; -- reset_n
			led_green_external_export : out std_logic_vector(7 downto 0)         -- export
		);
	end component nios_system;

	u0 : component nios_system
		port map (
			clock_50_clk              => CONNECTED_TO_clock_50_clk,              --           clock_50.clk
			reset_reset_n             => CONNECTED_TO_reset_reset_n,             --              reset.reset_n
			led_green_external_export => CONNECTED_TO_led_green_external_export  -- led_green_external.export
		);

