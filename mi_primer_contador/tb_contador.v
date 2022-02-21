// Autor: Jose Rocabado
// Fecha: 21/02/2022

`timescale 1ns/1ps

module tb_contador ();

	localparam T = 20;
	localparam modulo = 10;
	
	reg CLK;
	reg RESET_A;
	reg ENABLE;
	reg UP_DOWN;
	
	wire [3:0] COUNT;
	wire TC;
	
	/*contador #(.fin_cuenta(modulo)) i1 (.iCLOCK (CLK),
													.iRESET_n (RESET_A),
													.iENABLE (ENABLE),
													.iUP_DOWN (UP_DOWN),
													.oCOUNT (COUNT),
													.oTC (TC));*/
													
	contador i1 (.iCLOCK (CLK),
					.iRESET_n (RESET_A),
					.iENABLE (ENABLE),
					.iUP_DOWN (UP_DOWN),
					.oCOUNT (COUNT),
					.oTC (TC));
													
	initial 
		begin
			RESET_A = 1'b0;
			CLK = 1'b0;
			ENABLE = 1'b0;
			UP_DOWN = 1'b1;
			$display("SIMULANDO!!!");
			CASO_1(); // Caso de Verificacion 1
			#(T*5)
			CASO_2(); // Caso de Verificacion 2. RESET_A con ENABLE
			#(T*5)
			CASO_3(); // Caso de Verificacion 3. ENABLE con TC
			#(T*4)
			CASO_4(); // Caso de Verificacion 4
			#(T*4)
			CASO_5(); // Caso de Verificacion 5
			#(T*4)
			$display("Fin Simulacion!!!");
			$stop;
		end
	
	always
		begin
			#(T/2) CLK <= ~CLK;
		end
	
	task CASO_1;
		begin
			UP_DOWN = 1'b1;
			#(T*2) RESET_A = 1'b1;
			@(negedge CLK) ENABLE = 1'b1;
			#(T*20)
			@(negedge CLK) ENABLE = 1'b0;
		end
	endtask
	
	task CASO_2;
		begin
			fork
				RESET_A = 1'b0;
				UP_DOWN = 1'b1;
				#(T*4) RESET_A = 1'b1;
				ENABLE = 1'b1;
				#(T*2) ENABLE = 1'b0;
			join
		end
	endtask
	
	task CASO_3;
		begin
			ENABLE = 1'b1;
			UP_DOWN = 1'b1;
			#(T*14)
			@(negedge CLK) ENABLE = 1'b0;
			#(T*5)
			@(negedge CLK) ENABLE = 1'b1;
		end
	endtask
	
	task CASO_4;
		begin
			UP_DOWN = 1'b0;
			@(negedge CLK) ENABLE = 1'b1;
			#(T*20)
			@(negedge CLK) ENABLE = 1'b0;
		end
	endtask
	
	task CASO_5;
		begin
			UP_DOWN = 1'b0;
			RESET_A = 1'b0;
			#(T*2) RESET_A = 1'b1;
			@(negedge CLK) ENABLE = 1'b1;
			#(T*20)
			@(negedge CLK) ENABLE = 1'b0;
		end
	endtask
	
endmodule 