    `define INPUT_SAMPLES   1000
    
    parameter FLOATSIZE         = 64;
    parameter FIXEDSIZE         = 64;
    parameter RADIXPOINTSIZE    = 6;
    parameter EXPONENTBITS      = 11;
    parameter MANTISSABITS      = 52;

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
	$display("############### TEST CASE 5  ################");
	$display("#############################################\n");
        InRadixPoint = 6'd48;
        $readmemh("../TC/TC05/FixedInput.txt",FixedInputDump);
        $readmemh("../TC/TC05/FloatOutput.txt",FloatOutputDump);
    end
