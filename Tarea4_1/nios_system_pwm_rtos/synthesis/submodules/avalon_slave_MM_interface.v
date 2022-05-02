module avalon_slave_MM_interface(//Avalon MM interface signals
											 input reset,
											 input clock,
											 input chipselect,
											 input [2:0]  address, 
											 input write,
											 input [31:0] writedata,
											 input read,                   
											 output reg [31:0] readdata,
											 input [11:0]oREG_X,
											 input [11:0]oREG_Y,
											 input dataReady,
											 output reg int_uc);
											 
											 
reg dataReady_q;
always @(posedge clock)
begin
	dataReady_q <= dataReady;
	if(dataReady_q== 1'b1 && dataReady==1'b0)
		int_uc <= 1'b1;
	if (reset)
	begin
		readdata <= 32'd0;
		int_uc <= 1'b0;
	end                                
	else
	begin
		if (chipselect)
		begin
			// Proceso de escritura en el interface Avalon MM
			if (write)
			begin
				case(address)
					3'd0 : int_uc <= 1'b0;
				endcase           
			end
			// Proceso de lectura del interface Avalon MM
			if (read)
			begin
				case(address)
					3'd1: readdata <= {4'b0, oREG_X, 4'b0, oREG_Y};
					default: readdata <= 32'hAABBCCDD;
				endcase
			end
		end
	end       
end	
endmodule
