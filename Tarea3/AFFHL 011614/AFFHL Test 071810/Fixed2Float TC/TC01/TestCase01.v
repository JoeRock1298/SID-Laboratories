    `define INPUT_SAMPLES   1000
    
    parameter FLOATSIZE         = 32;
    parameter FIXEDSIZE         = 32;
    parameter RADIXPOINTSIZE    = 6;
    parameter EXPONENTBITS      = 8;
    parameter MANTISSABITS      = 23;

    // Inputs to DUT
    reg  [FIXEDSIZE-1:0] InFixed;
    reg  [RADIXPOINTSIZE-1:0] InRadixPoint;

    // Outputs of the DUT
    wire [FLOATSIZE-1:0] OutFloat;

    // Registers to hold the dump values from file
    reg [FIXEDSIZE - 1 : 0] FixedInputDump     [0 : `INPUT_SAMPLES-1];
    reg [FLOATSIZE - 1 : 0] FloatOutputDump    [0 : `INPUT_SAMPLES-1];

    initial
    begin
	$display("#############################################");
	$display("############### TEST CASE 1  ################");
	$display("#############################################\n");
        InRadixPoint = 6'd16;
        $readmemh("../TC/TC01/FixedInput.txt",FixedInputDump);
        $readmemh("../TC/TC01/FloatOutput.txt",FloatOutputDump);
    end
