
module timer_32b (input i_clk,
						input i_reset, // reset activo a nivel alto
						input i_start,
						input i_clearIRQ,
						input [31:0] i_configTC, //Terminal count
						input [31:0] i_configTHR, // Threshold
						output o_IRQ,
						output o_THR,
						output o_we,
						output [31:0] o_count
						);
	//declaring auxiliar registers
	reg IRQ, THR, we;
	reg [31:0] count;
	
	always @(posedge i_clk )
	begin 
		if(i_reset)
		begin
			count <= 0;
			IRQ <= 0;
			THR <= 0;
			we <= 0;
		end
		else
		begin
			if (i_start)
			begin
				count <= count + 1'b1;
				we <= 1'b1;
				if (count == (i_configTC - 1'b1))
				begin
					count <= 1'b0;
					IRQ <= 1'b1;
				end

			end
			else
			begin
				count <= count;
				we <= 0;
			end

			if (i_clearIRQ)
				IRQ <= 1'b0;

			if (count > i_configTHR)
				THR <= 1'b1;
			else
				THR <= 1'b0;
		end
	end
	
	assign o_THR = THR;
	assign o_IRQ = IRQ;
	assign o_we = we;
	assign o_count = count;

endmodule 


/*Preguntas a realizar*/
// No hay reset?
// con que valor se inicializan los registros
// si el timer se para, y luego se continúa, ¿vuelve a empezar?
// el reset a que modulo va? y como funciona?
// Como se activa la interrupción del dispositivo?