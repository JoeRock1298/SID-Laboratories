module avalon_servoCTRL(//Avalon MM interface signals
                            input reset,
                            input clock,
                            input chipselect,
                            input [5:0]  address,
                            input write,
                            input [31:0] writedata,
                            input read, 
                            output reg [31:0] readdata,
														output [23:0]servoPWMOut);
                                                                       
reg [31:0] ctrl; 		//Control: inicio, parada, clr int etc
reg [31:0] load;
reg [31:0] high_dur[23:0];
reg [31:0] total_dur[23:0];


genvar i;
generate
	for(i=0;i<24;i =i+1) begin:pwmsInst
		PWM_Generator pwms(
		  .clk(clock),
			.reset_n(~reset),
			//
			.total_dur(total_dur[i]),
			.high_dur(high_dur[i]),
			
			//
			.PWM(servoPWMOut[i])
		);
	end
endgenerate


always @(posedge clock)
    if (reset)
    begin
			ctrl 					<= 32'd0;
			load				  <= 32'd0;
			total_dur[0] 	<= 32'd0;
			total_dur[1] 	<= 32'd0;
			total_dur[2] 	<= 32'd0;
			total_dur[3] 	<= 32'd0;
			total_dur[4] 	<= 32'd0;
			total_dur[5] 	<= 32'd0;
			total_dur[6] 	<= 32'd0;
			total_dur[7] 	<= 32'd0;
			total_dur[8] 	<= 32'd0;
			total_dur[9] 	<= 32'd0;
			total_dur[10] <= 32'd0;
			total_dur[11] <= 32'd0;
			total_dur[12] <= 32'd0;
			total_dur[13] <= 32'd0;
			total_dur[14] <= 32'd0;
			total_dur[15] <= 32'd0;
			total_dur[16] <= 32'd0;
			total_dur[17] <= 32'd0;
			total_dur[18] <= 32'd0;
			total_dur[19] <= 32'd0;
			total_dur[20] <= 32'd0;
			total_dur[21] <= 32'd0;
			total_dur[22] <= 32'd0;
			total_dur[23] <= 32'd0;
			high_dur[0]	<= 32'd0;
			high_dur[1] 	<= 32'd0;
			high_dur[2] 	<= 32'd0;
			high_dur[3] 	<= 32'd0;
			high_dur[4] 	<= 32'd0;
			high_dur[5] 	<= 32'd0;
			high_dur[6] 	<= 32'd0;
			high_dur[7] 	<= 32'd0;
			high_dur[8] 	<= 32'd0;
			high_dur[9]  <= 32'd0;
			high_dur[10] <= 32'd0;
			high_dur[11] <= 32'd0;
			high_dur[12] <= 32'd0;
			high_dur[13] <= 32'd0;
			high_dur[14] <= 32'd0;
			high_dur[15] <= 32'd0;
			high_dur[16] <= 32'd0;
			high_dur[17] <= 32'd0;
			high_dur[18] <= 32'd0;
			high_dur[19] <= 32'd0;
			high_dur[20] <= 32'd0;
			high_dur[21] <= 32'd0;
			high_dur[22] <= 32'd0;
			total_dur[23] <= 32'd0;
		end
		else
    begin
		ctrl <= ctrl & 32'hFFFFFFFD;
          if (chipselect)
          begin
              // Proceso de escritura en el interface Avalon MM
              if (write)
							begin
							case(address)	
								6'd0:  ctrl 					<= writedata;
								6'd1:  load 					<= writedata;
								6'd2:  total_dur[0] 	<= writedata;
								6'd3:  total_dur[1] 	<= writedata;
								6'd4:  total_dur[2] 	<= writedata;
								6'd5:  total_dur[3] 	<= writedata;
								6'd6:  total_dur[4] 	<= writedata;
								6'd7:  total_dur[5] 	<= writedata;
								6'd8:  total_dur[6] 	<= writedata;
								6'd9:  total_dur[7] 	<= writedata;
								6'd10: total_dur[8] 	<= writedata;
								6'd11: total_dur[9] 	<= writedata;
								6'd12: total_dur[10] 	<= writedata;
								6'd13: total_dur[11] 	<= writedata;
								6'd14: total_dur[12] 	<= writedata;
								6'd15: total_dur[13] 	<= writedata;
								6'd16: total_dur[14] 	<= writedata;
								6'd17: total_dur[15] 	<= writedata;
								6'd18: total_dur[16] 	<= writedata;
								6'd19: total_dur[17] 	<= writedata;
								6'd20: total_dur[18] 	<= writedata;
								6'd21: total_dur[19] 	<= writedata;
								6'd22: total_dur[20] 	<= writedata;
								6'd23: total_dur[21] 	<= writedata;
								6'd24: total_dur[22] 	<= writedata;
								6'd25: total_dur[23] 	<= writedata;
								6'd26: high_dur[0]	  <= writedata;
								6'd27: high_dur[1] 	<= writedata;
								6'd28: high_dur[2] 	<= writedata;
								6'd29: high_dur[3] 	<= writedata;
								6'd30: high_dur[4] 	<= writedata;
								6'd31: high_dur[5] 	<= writedata; 
								6'd32: high_dur[6] 	<= writedata;
								6'd33: high_dur[7] 	<= writedata;
								6'd34: high_dur[8] 	<= writedata;
								6'd35: high_dur[9]  	<= writedata;
								6'd36: high_dur[10] 	<= writedata;
								6'd37: high_dur[11] 	<= writedata;
								6'd38: high_dur[12] 	<= writedata;
								6'd39: high_dur[13] 	<= writedata;
								6'd40: high_dur[14] 	<= writedata;
								6'd41: high_dur[15] 	<= writedata;
								6'd42: high_dur[16] 	<= writedata;
								6'd43: high_dur[17] 	<= writedata;
								6'd44: high_dur[18] 	<= writedata;
								6'd45: high_dur[19] 	<= writedata;
								6'd46: high_dur[20] 	<= writedata;
								6'd47: high_dur[21] 	<= writedata;
                6'd48: high_dur[22] 	<= writedata;
								6'd49: high_dur[23] 	<= writedata;
								endcase            
              end else
								
              // Proceso de lectura del interface Avalon MM
              if (read)
              begin
                    case(address)
                    6'd0: readdata 	<= ctrl;
										6'd1: readdata 	<= load;
										6'd2:  readdata <= total_dur[0];
										6'd3:  readdata <= total_dur[1];
										6'd4:  readdata <= total_dur[2];
										6'd5:  readdata <= total_dur[3];
										6'd6:  readdata <= total_dur[4];
										6'd7:  readdata <= total_dur[5];
										6'd8:  readdata <= total_dur[6];
										6'd9:  readdata <= total_dur[7];
										6'd10: readdata <= total_dur[8];
										6'd11: readdata <= total_dur[9];
										6'd12: readdata <= total_dur[10];
										6'd13: readdata <= total_dur[11];
										6'd14: readdata <= total_dur[12];
										6'd15: readdata <= total_dur[13];
										6'd16: readdata <= total_dur[14];
										6'd17: readdata <= total_dur[15];
										6'd18: readdata <= total_dur[16];
										6'd19: readdata <= total_dur[17];
										6'd20: readdata <= total_dur[18];
										6'd21: readdata <= total_dur[19];
										6'd22: readdata <= total_dur[20];
										6'd23: readdata <= total_dur[21];
										6'd24: readdata <= total_dur[22];
										6'd25: readdata <= total_dur[23];
										6'd26: readdata <= high_dur[0];
										6'd27: readdata <= high_dur[1];
										6'd28: readdata <= high_dur[2];
										6'd29: readdata <= high_dur[3];
										6'd30: readdata <= high_dur[4];
										6'd31: readdata <= high_dur[5]; 
										6'd32: readdata <= high_dur[6];
										6'd33: readdata <= high_dur[7];
										6'd34: readdata <= high_dur[8];
										6'd35: readdata <= high_dur[9];
										6'd36: readdata <= high_dur[10];
										6'd37: readdata <= high_dur[11];
										6'd38: readdata <= high_dur[12];
										6'd39: readdata <= high_dur[13];
										6'd40: readdata <= high_dur[14];
										6'd41: readdata <= high_dur[15];
										6'd42: readdata <= high_dur[16];
										6'd43: readdata <= high_dur[17];
										6'd44: readdata <= high_dur[18];
										6'd45: readdata <= high_dur[19];
										6'd46: readdata <= high_dur[20];
										6'd47: readdata <= high_dur[21];
										6'd48: readdata <= high_dur[22];
										6'd49: readdata <= high_dur[23];
                    // Si la direccion es incorrecta devuelvo todo ceros.
                   default: readdata <= 32'd0; 
                   endcase  
              end
              // Proceso de escritura en el registro 2
           end	   
    end          



endmodule
