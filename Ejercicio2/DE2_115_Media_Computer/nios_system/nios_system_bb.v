
module nios_system (
	clk_50_2_in_clk,
	clk_50_3_in_clk,
	clk_50_in_clk,
	reset_bridge_in_reset_n,
	sys_clk_out_clk,
	sdram_clk_out_clk,
	vga_clk_out_clk,
	mtl_clk_out_clk,
	audio_clk_out_clk);	

	input		clk_50_2_in_clk;
	input		clk_50_3_in_clk;
	input		clk_50_in_clk;
	input		reset_bridge_in_reset_n;
	output		sys_clk_out_clk;
	output		sdram_clk_out_clk;
	output		vga_clk_out_clk;
	output		mtl_clk_out_clk;
	output		audio_clk_out_clk;
endmodule
