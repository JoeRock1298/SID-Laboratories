	component nios_system is
		port (
			clk_50_2_in_clk         : in  std_logic := 'X'; -- clk
			clk_50_3_in_clk         : in  std_logic := 'X'; -- clk
			clk_50_in_clk           : in  std_logic := 'X'; -- clk
			reset_bridge_in_reset_n : in  std_logic := 'X'; -- reset_n
			sys_clk_out_clk         : out std_logic;        -- clk
			sdram_clk_out_clk       : out std_logic;        -- clk
			vga_clk_out_clk         : out std_logic;        -- clk
			mtl_clk_out_clk         : out std_logic;        -- clk
			audio_clk_out_clk       : out std_logic         -- clk
		);
	end component nios_system;

	u0 : component nios_system
		port map (
			clk_50_2_in_clk         => CONNECTED_TO_clk_50_2_in_clk,         --     clk_50_2_in.clk
			clk_50_3_in_clk         => CONNECTED_TO_clk_50_3_in_clk,         --     clk_50_3_in.clk
			clk_50_in_clk           => CONNECTED_TO_clk_50_in_clk,           --       clk_50_in.clk
			reset_bridge_in_reset_n => CONNECTED_TO_reset_bridge_in_reset_n, -- reset_bridge_in.reset_n
			sys_clk_out_clk         => CONNECTED_TO_sys_clk_out_clk,         --     sys_clk_out.clk
			sdram_clk_out_clk       => CONNECTED_TO_sdram_clk_out_clk,       --   sdram_clk_out.clk
			vga_clk_out_clk         => CONNECTED_TO_vga_clk_out_clk,         --     vga_clk_out.clk
			mtl_clk_out_clk         => CONNECTED_TO_mtl_clk_out_clk,         --     mtl_clk_out.clk
			audio_clk_out_clk       => CONNECTED_TO_audio_clk_out_clk        --   audio_clk_out.clk
		);

