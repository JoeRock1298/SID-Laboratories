//import cmath::*;

`timescale 1 ns / 1 ps

module tanh_tb;
  
  // Parameter
  parameter P = 100;
  // Definition of auxiliar variables.
  shortreal count_real, salida_real, salida_deseada1, salida_deseada2, salida_deseada, error;
  logic clk, reset;
  logic [31:0] salida_bits;
  //shortreal stop_value = 25;      

  tanh_mem_9k UUT (.clk(clk),
                   .result(salida_bits),
                   .dataa($shortrealtobits(count_real))); 
  initial 
  begin 
    clk = 1'b0;
    count_real=-25;
  end 

   //Generating stimulus
  always #(P/2) clk = !clk;

  always @(posedge clk)
  begin
    salida_deseada <= $tanh(count_real); // latency 1
    salida_deseada1 <= salida_deseada; // latency 2
    salida_deseada2 <= salida_deseada1; // latency 3
    #(P/10) count_real<=count_real + 0.01;
    if ( $rtoi(count_real) == 25)
    begin
      $display("end of simulation");
      $stop;
    end
  end

  assign salida_real = $bitstoshortreal(salida_bits);

  //Calculating error
  assign error = salida_deseada2 - salida_real;

endmodule


