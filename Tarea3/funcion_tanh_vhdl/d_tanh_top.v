module d_tanh_top(
  input clk,
  input rst,
  input enable,
  input [31:0] num_entrada,
  output [31:0] result);
  
  d_tanh_mem_9k UUT (.clk(clk),
                   .result(result),
                   .dataa(num_entrada)); 

endmodule


