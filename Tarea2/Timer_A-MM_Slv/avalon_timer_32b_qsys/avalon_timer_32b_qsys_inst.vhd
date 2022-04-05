	component avalon_timer_32b_qsys is
		port (
			clk_clk                                      : in  std_logic := 'X'; -- clk
			reset_reset_n                                : in  std_logic := 'X'; -- reset_n
			avalon_timer_32b_external_interface_conduit0 : out std_logic         -- conduit0
		);
	end component avalon_timer_32b_qsys;

	u0 : component avalon_timer_32b_qsys
		port map (
			clk_clk                                      => CONNECTED_TO_clk_clk,                                      --                                 clk.clk
			reset_reset_n                                => CONNECTED_TO_reset_reset_n,                                --                               reset.reset_n
			avalon_timer_32b_external_interface_conduit0 => CONNECTED_TO_avalon_timer_32b_external_interface_conduit0  -- avalon_timer_32b_external_interface.conduit0
		);

