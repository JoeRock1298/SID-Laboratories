// Autor: Jose Rocabado
// Fecha: 21/02/2022

module contador (iCLOCK, iRESET_n, iENABLE, iUP_DOWN, oCOUNT, oTC);

	parameter fin_cuenta = 10;
	
	`include "MathFun.vh"
	
	parameter WIDTH = CLogB2(fin_cuenta-1);
	
	input iCLOCK, iRESET_n, iENABLE, iUP_DOWN;
	output reg [WIDTH-1:0] oCOUNT;
	output oTC;
	
	always @ (posedge iCLOCK or negedge iRESET_n)
		begin
		
			if ( !iRESET_n )
				oCOUNT <= 0;
				
			else
				begin
				if (iENABLE == 1'b1)
					if (iUP_DOWN)
						if (oCOUNT == fin_cuenta-1)
							oCOUNT <= 0;				 
						else
							oCOUNT <= oCOUNT + 1'b1;			
					else
						if( oCOUNT == 0)
							oCOUNT <= fin_cuenta - 1;
						else
							oCOUNT <= oCOUNT - 1'b1;
				else
					oCOUNT<=oCOUNT;
				end
		end
		
	assign oTC = ((oCOUNT == (fin_cuenta-1) && iUP_DOWN == 1'b1) || (oCOUNT == 0 && iUP_DOWN == 1'b0))? 1'b1 : 1'b0;
	
endmodule
