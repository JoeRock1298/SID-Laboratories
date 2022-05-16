module avalon_ltm_touch_config(//Avalon MM interface signals
							input reset,
							input clock,
							input chipselect,
							input [2:0]  address,
							input write,
							input [31:0] writedata,
							input read,
							output [31:0] readdata,
							output int_uc,
							input iADC_DOUT,
							input iADC_BUSY,
							input iADC_PENIRQ_n,
							output oADC_DIN,
							output oADC_DCLK,
							output oADC_CS);
                                    
                                    
                                   
                               
wire [11:0]oREG_X;
wire [11:0]oREG_Y;

wire oTOUCH_IRQ;
// Instancia del interface con el bus Avalon MM

avalon_slave_MM_interface u1_av_sl_MM (//Avalon MM interface signals
                                        .reset(reset),
                                        .clock(clock),
                                        .chipselect(chipselect),
                                        .address(address), 
                                        .write(write),
                                        .writedata(writedata),
                                        .read(read),                                          
                                        .readdata(readdata),
													 .dataReady(oTOUCH_IRQ),
                                        .oREG_X(oREG_X),
                                        .oREG_Y(oREG_Y),
													 .int_uc(int_uc));

 ADC_CONTROL adc_touch_inst(
					.iCLK(clock),
					.iRST_n(~reset),
					.iADC_DOUT(iADC_DOUT),
					.iADC_BUSY(iADC_BUSY),
					.iADC_PENIRQ_n(iADC_PENIRQ_n),
					.oADC_DIN(oADC_DIN),
					.oADC_DCLK(oADC_DCLK),
					.oADC_CS(oADC_CS),
					.oTOUCH_IRQ(oTOUCH_IRQ),
					.oX_COORD(oREG_X),
					.oY_COORD(oREG_Y));
endmodule
