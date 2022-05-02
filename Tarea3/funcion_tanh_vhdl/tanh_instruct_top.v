module d_tanh_top(
  input clk,
  input rst,
  input enable,
  input sel_instruct,
  input [31:0] num_entrada,
  input start,
  output done,
  output [31:0] result);

  //auxiliar variables
  wire [31:0] d_tanh_result, tanh_result;

  reg done0, done1, done2;
  
  d_tanh_mem_9k UUT (.clk(clk),
                   .result(d_tanh_result),
                   .dataa(num_entrada));

  tanh_mem_9k UUT1 (.clk(clk),
                   .result(tanh_result),
                   .dataa(num_entrada));
  // Selecting output according the selected instruction
  assign result = (sel_instruct)? d_tanh_result : tanh_result;

  // Adding the latency to stard/done signals
  always @(posedge clk ) 
  begin
    done0 <= start;
    done1 <= done0;
    done2 <= done1;    
  end

  assign done = done2;

endmodule


