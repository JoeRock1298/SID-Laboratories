module mi_primer_niosii (input iCLK_50,
								 input iSW0,
								 input iSW1,
								 output [6:0] oHEX,
								 output [7:0] oLEDG);
	
	wire reset_n;
	assign reset_n = 1'b1;
	
	nios_system u0 (
			.clock_50_clk              (iCLK_50),
			.reset_reset_n             (reset_n),
			.led_green_external_export (oLEDG)
		);
		
	mi_primer_contador u1 (.CLOCK (iCLK_50), 
								  .KEY (reset_n), 
								  .SW0 (iSW0), 
								  .SW1 (iSW1), 
								  .HEX (oHEX));

endmodule 