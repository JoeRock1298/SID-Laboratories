
package cmath;
import "DPI-C" function shortreal sin_c(input shortreal x);
//import "DPI-C" function shortreal sqrt(input shortreal x);
endpackage
`timescale 1 ns / 1 ps

module senoide_tb;
import cmath::*;
  shortreal count_real,entrada,salida,salida_deseada;
   logic clk,reset;
   logic [31:0] salida_bits;      
 assign entrada=count_real;
 assign salida=$bitstoshortreal(salida_bits);
   
sine_mem_9k UUT (.clk(clk),.result(salida_bits),
.dataa($shortrealtobits(count_real)));

 

 initial 
 
 begin 
 clk = 1'b0;
 count_real=-25;
 forever #50  clk = !clk;
 end
         

always @(posedge clk)
begin
   salida_deseada<=sin_c(entrada);   
count_real<=count_real+0.01;   
end
endmodule


