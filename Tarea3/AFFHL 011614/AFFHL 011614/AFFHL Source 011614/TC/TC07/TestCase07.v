    `define INPUT_SAMPLES   1000
    
    parameter FLOATSIZE         = 64;
    parameter FIXEDSIZE         = 64;
    parameter RADIXPOINTSIZE    = 6;
    parameter EXPONENTBITS      = 11;
    parameter MANTISSABITS      = 52;
    parameter OVERFLOWBITS      = 6;

    // Inputs to DUT
    reg  [FLOATSIZE-1:0] InFloat;
    reg  [RADIXPOINTSIZE-1:0] InRadixPoint;

    // Outputs of the DUT
    wire [FIXEDSIZE-1:0] OutFixed;
    wire [RADIXPOINTSIZE-1:0] OutOverflow;
    wire OutException;

    // Registers to hold the dump values from file
    reg [FLOATSIZE - 1 : 0] FloatInputDump     [0 : `INPUT_SAMPLES-1];
    reg [FIXEDSIZE - 1 : 0] FixedOutputDump    [0 : `INPUT_SAMPLES-1];

    initial
    begin
	$display("#############################################");
	$display("############### TEST CASE 7  ################");
	$display("#############################################\n");
        InRadixPoint = 6'd32;
        $readmemh("../TC/TC07/FloatInputNormal.txt",FloatInputDump);
        $readmemh("../TC/TC07/FixedOutputNormal.txt",FixedOutputDump);
    end
