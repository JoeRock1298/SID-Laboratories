module funcion_senoide (
          input [31:0] num_entrada,
          output [31:0] num_salida1,
		 
          input clk
          );


localparam uno= 31'h3f800000;	
localparam cero=31'h00000000;	
localparam uno_div_pi=24'b	101000101111100110000011;//en realidad es 1/pi
	 
wire [10:0] salida_fix;
wire [9:0] addr;
wire [8:0] q1;
wire [31:0] salida_float1, salida_float2,num_salida1_reg2, num_salida2_reg2 ;
reg [31:0]  num_entrada_reg1,num_entrada_reg2, num_salida1_reg3,num_salida2_reg3;



wire unsigned [23:0] intermedio;
wire  [47:0] mantisa_divid_pi;
wire  [7:0] exponente_divid_pi;
wire  signed [8:0] exponente_divid_pi_c2;


wire signo=num_entrada_reg1[31];

wire unsigned [173:0] punt_fijo_divid_pi;

wire signed [9:0] valor ; //uno de signo y 9 de parte fraccionaria
wire signed [9:0] q_2={1'b0,q1};

reg signo_reg,consigno_reg,signo_reg2,consigno_reg2;

assign intermedio={1'b1,num_entrada_reg2[22:0]} ;
assign mantisa_divid_pi=intermedio*uno_div_pi;//mantisa dividdida por pi
assign exponente_divid_pi=num_entrada_reg2[30:23]-127;
assign exponente_divid_pi_c2={exponente_divid_pi[7],exponente_divid_pi}-2;
 //exceso de 127 y -2 del exponente
assign punt_fijo_divid_pi=(exponente_divid_pi_c2[8]==1'b0)?(mantisa_divid_pi<<exponente_divid_pi_c2):(mantisa_divid_pi>>(~(exponente_divid_pi_c2))+1);
//assign punt_fijo_divid_pi=(exponente_divid_pi[7]==1'b0)?(mantisa_divid_pi<<(exponente_divid_pi)):(mantisa_divid_pi>>(~(exponente_divid_pi))+1);
 /*Float2Fixed #(.FIXEDSIZE(11)) float2fix (
    .InFloat({1'b0,punt_fijo_divid_pi_medios[22:13]}),
    .InRadixPoint(10),
    .OutFixed(salida_fix),
	 .OutException(),
	 .OutOverflow()

    ); */
	assign addr=punt_fijo_divid_pi[45:36];  
memoria_single_port #(.DATA_WIDTH(9),.ADDR_WIDTH(10), .CONTENIDO("sen_3.txt"))  my_memory_tanh  //forma parte del ciclo 2
						(   
                              .addr(addr),
                              .clk(clk),
                              .q(q1)
                              );
							
assign	valor={1'b0,q1}	;						
Fixed2Float #(.FIXEDSIZE(10)) fix2float1 (
    .InFixed(valor),
    .InRadixPoint(6'd9),
    .OutFloat(salida_float1)
    ); 
 

always_ff @(posedge clk)
begin
signo_reg<=signo; //forma parte del ciclo 2
consigno_reg<=punt_fijo_divid_pi[46];//forma parte del ciclo 3
signo_reg2<=signo_reg; //forma parte del ciclo 3
//consigno_reg2<=consigno_reg;//forma parte del ciclo 2
num_entrada_reg1<=num_entrada;//ciclo 1
num_entrada_reg2<=num_entrada_reg1;//ciclo 2
num_salida1_reg3<=num_salida1_reg2;//ciclo 4
end	



 
assign num_salida1_reg2= ((consigno_reg~^signo_reg2)==1'b1)?salida_float1:{1'b1,salida_float1[30:0]};


assign num_salida1=num_salida1_reg3;       
 
endmodule
