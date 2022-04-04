 
package cmath;
import "DPI-C" function shortreal sin_c(input shortreal x);
//import "DPI-C" function shortreal sqrt(input shortreal x);
endpackage
`timescale 1 ns / 1 ps

module senoide_tb;
import cmath::*;
  shortreal count_real,entrada,salida,salida_deseada,salida_deseada_reg1,salida_deseada_reg2,salida_deseada_reg3,error;
   logic clk,reset;
   logic [31:0] salida_bits;      
 assign entrada=count_real;
 assign salida=$bitstoshortreal(salida_bits);
   
funcion_senoide UUT (.clk(clk),.num_salida1(salida_bits),
.num_entrada($shortrealtobits(count_real)));

 

 initial 
 
 begin 
 clk = 1'b0;
 count_real=-25;
 forever #50  clk = !clk;
 end
         

always @(posedge clk)
begin
 //  salida_deseada<=sin_c(entrada); 
salida_deseada<=$sin(entrada)	;
salida_deseada_reg1<=salida_deseada;
salida_deseada_reg2<=salida_deseada_reg1;//latencia 3
salida_deseada_reg3<=salida_deseada_reg2;//latencia 3
count_real<=count_real+0.01;   
end

assign error=salida_deseada_reg3-salida;

endmodule


