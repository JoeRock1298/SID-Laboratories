// -------------------------------------------------------------------- 
// Universitat Politècnica de València 
// Escuela Técnica Superior de Ingenieros de Telecomunicación 
// -------------------------------------------------------------------- 
// Sistemas Digitales Programables 
// Curso 2013 - 2014 
// -------------------------------------------------------------------- 
// Nombre del archivo:  ADC_CONTROL.v 
// 
// Descripción: Este código Verilog implementa un controlador para obtener
// las coordenadas pulsadas en la pantalla tactil
// 
// -------------------------------------------------------------------- 
// Versión: V1.0 | Fecha Modificación: 28/05/2014 
// 
// Autor: Claudio Barriuso Medrano
// Ordenador de trabajo: DISE04
// Compartido con: Elena Rita Pelejero Ibañez
// --------------------------------------------------------------------

module ADC_CONTROL(
					iCLK,
					iRST_n,
					iADC_DOUT,
					iADC_BUSY,
					iADC_PENIRQ_n,
					oADC_DIN,
					oADC_DCLK,
					oADC_CS,
					oTOUCH_IRQ,
					oX_COORD,
					oY_COORD);
					
input					iCLK;
input					iRST_n;
input					iADC_DOUT;
input					iADC_PENIRQ_n;
input					iADC_BUSY;

output	reg		oADC_DIN;
output				oADC_DCLK;
output				oADC_CS;
output				oTOUCH_IRQ;
output reg [11:0]	oX_COORD;
output reg [11:0]	oY_COORD;

reg [19:0] countEspera;
reg enableContador;
reg [6:0] countTC;
reg [1:0] estado_actual;
reg [1:0] estado_siguiente;
reg [9:0] countmaster;
reg TCmaster;
reg [1:0] Q0=2'b00, Q1=2'b01, Q2=2'b10, Q3=2'b11;
reg enableContadorEspera;
//contador del controlador físico
assign oADC_DCLK = countTC[0];

reg SCEN;
reg SCENq;
assign oADC_CS = SCEN;


assign oTOUCH_IRQ = (SCENq == 1'b1 && SCEN==1'b0);
//Contador principal
always@ (posedge iCLK)
begin
	if(!iRST_n)
	begin
		countmaster <=0;
		SCENq <=0;
	end
	else
	begin
	  SCENq<= SCEN;
		if(countmaster==714)
		begin
			countmaster<=0;
			TCmaster<=1;
		end
		else
		begin
			countmaster=countmaster+1;
			TCmaster<=0;
		end
	end
end
//contador 25 veces mÃƒÆ’Ã‚Â¡s lento (2MHz)
always@ (posedge TCmaster or negedge iRST_n)
begin
	if(!iRST_n)
	begin
		countTC =80;
		oX_COORD<=0;
		oY_COORD<=0;
	end
	else
	begin
		if(enableContador)
		begin
			if (countTC>=79)
			begin
				countTC=0;
			end
			else
				countTC = countTC +1;
			case(countTC)
				0: oADC_DIN=1;
				2: oADC_DIN=0;
				4: oADC_DIN=0;
				6: oADC_DIN=1;
				8: oADC_DIN=0;
				10: oADC_DIN=0;
				12: oADC_DIN=1;
				14: oADC_DIN=0;
				
				32: oADC_DIN=1;
				34: oADC_DIN=1;
				36: oADC_DIN=0;
				38: oADC_DIN=1;
				40: oADC_DIN=0;
				42: oADC_DIN=0;
				44: oADC_DIN=1;
				46: oADC_DIN=0;
				
				19: oX_COORD[11]<=iADC_DOUT;
				21: oX_COORD[10]<=iADC_DOUT;
				23: oX_COORD[9]<=iADC_DOUT;
				25: oX_COORD[8]<=iADC_DOUT;
				27: oX_COORD[7]<=iADC_DOUT;
				29: oX_COORD[6]<=iADC_DOUT;
				31: oX_COORD[5]<=iADC_DOUT;
				33: oX_COORD[4]<=iADC_DOUT;
				35: oX_COORD[3]<=iADC_DOUT;
				37: oX_COORD[2]<=iADC_DOUT;
				39: oX_COORD[1]<=iADC_DOUT;
				41: oX_COORD[0]<=iADC_DOUT;
				
				
				51: oY_COORD[11]<=iADC_DOUT;
				53: oY_COORD[10]<=iADC_DOUT;
				55: oY_COORD[9]<=iADC_DOUT;
				57: oY_COORD[8]<=iADC_DOUT;
				59: oY_COORD[7]<=iADC_DOUT;
				61: oY_COORD[6]<=iADC_DOUT;
				63: oY_COORD[5]<=iADC_DOUT;
				65: oY_COORD[4]<=iADC_DOUT;
				67: oY_COORD[3]<=iADC_DOUT;
				69: oY_COORD[2]<=iADC_DOUT;
				71: oY_COORD[1]<=iADC_DOUT;
				73: oY_COORD[0]<=iADC_DOUT;
			
			endcase
		end
	end
end



always @ (posedge TCmaster )
begin
	if(!iRST_n)
		estado_actual<= 0;
	else
		estado_actual<=estado_siguiente;

	case(estado_actual)
		Q0: if(countEspera==0) 
			 begin 
			 estado_siguiente<=Q1;
			 end
			 else if(countEspera==20000)
				enableContadorEspera<=0;
		Q1:
			if(!iADC_PENIRQ_n)
			 begin
			 SCEN<=1;
				enableContador<=1;
				estado_siguiente <= Q2;
			 end
		Q2: if(countTC==79)
			 begin
				enableContador=0;
				estado_siguiente<=Q3;
			 end
		Q3: 
			begin	
				SCEN<=0;
				enableContadorEspera=1;
				estado_siguiente<=Q0;
			end
		default:estado_siguiente<=Q0;
	endcase
end




//Contador de espera
always @ (posedge TCmaster)
	if(!iRST_n)
		begin
			countEspera <=0;
		end
	else
	begin
	if(enableContadorEspera)
	begin
		if (countEspera==1000)
		begin
			countEspera<=0;
		end
		else
		begin
			if(countEspera<1000)
			begin
				countEspera<=countEspera+1;
			end
		end
	end
	else
	begin
			countEspera<=0;
	end
end

endmodule