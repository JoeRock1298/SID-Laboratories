
module avalon_displays7seg_qsys (
	clk_clk,
	reset_reset_n,
	displays7seg_external_interface_conduit0,
	displays7seg_external_interface_conduit1,
	displays7seg_external_interface_conduit2,
	displays7seg_external_interface_conduit3,
	displays7seg_external_interface_conduit4,
	displays7seg_external_interface_conduit5,
	displays7seg_external_interface_conduit6,
	displays7seg_external_interface_conduit7);	

	input		clk_clk;
	input		reset_reset_n;
	output	[6:0]	displays7seg_external_interface_conduit0;
	output	[6:0]	displays7seg_external_interface_conduit1;
	output	[6:0]	displays7seg_external_interface_conduit2;
	output	[6:0]	displays7seg_external_interface_conduit3;
	output	[6:0]	displays7seg_external_interface_conduit4;
	output	[6:0]	displays7seg_external_interface_conduit5;
	output	[6:0]	displays7seg_external_interface_conduit6;
	output	[6:0]	displays7seg_external_interface_conduit7;
endmodule
