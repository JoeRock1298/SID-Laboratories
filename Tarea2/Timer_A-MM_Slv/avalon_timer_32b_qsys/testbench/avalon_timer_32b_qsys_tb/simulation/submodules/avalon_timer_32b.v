module avalon_timer_32b(//Avalon MM interface signals
                            input reset,
                            input clock,
                            input chipselect,
                            input [2:0]  address,
                            input write,
                            input [31:0] writedata,
                            input read, 
                            output [31:0] readdata,
                        //Conduit - Interface que contiene la señal del threshold - salida externa.
                            output o_THR,
                        //Interrupt sender - Interface que genera la interrupción
                            output o_IRQ);
                                    
// reg0 is the TC_config, reg1 is the config_THR
// reg2 has the start in bit 0 and clear_IRQ in bit 1
wire [31:0] reg0, reg1, reg2, count_read;                                 
                               

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
                                       //Interface con nuestra logica.
                                         // Registros 0 y 1 de lectura 
                                        .reg0(reg0), 
                                        .reg1(reg1),
                                        .reg2(reg2), 
                                         //Datos para el registro interno reg3
                                        .data(count_read), 
                                        .we(1'b1)); // Write enabl. de reg3
                                                  
                                                  
timer_32b u2_timer (.i_clk(clock),
		    .i_reset(reset), // reset activo a nivel alto
		    .i_start(reg2[0]),
		    .i_clearIRQ(reg2[1]),
		    .i_configTC(reg0), //Terminal count
		    .i_configTHR(reg1), // Threshold
		    .o_IRQ(o_IRQ),
		    .o_THR(o_THR),
		    .o_count(count_read));

endmodule
