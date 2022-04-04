`timescale 1ns / 1ps
//-----------------------------------------------------------------------------
// Project      : Arizona Float<->Fixed Hardware Library (AFFHL)
//
// Authors      : Lysecky, R., Saldanha, L., Kamath Nileshwar, V.
//
// Module Name  : Float2FixedTb
//
// Description  : Test bench for Floating point to fixed point converter
//
// Date modified: 11.17.2008
//-----------------------------------------------------------------------------

`define CLK_PERIOD          5
`define CLK_PERIOD_BY_2     2.5
`define ERR_LIMIT           10
`define PRINT_INTERVAL      100
`define TC1


module Float2FixedTb;

    // Normal test case - Fixed Width = 32, Radix Point = 16
    `ifdef TC1
        `include "../TC/TC01/TestCase01.v"
    `endif
    
    // Normal test case - Fixed Width = 32, Radix Point = 24
    `ifdef TC2
        `include "../TC/TC02/TestCase02.v"
    `endif

    // Normal test case - Fixed Width = 32, Radix Point = 8
    `ifdef TC3
        `include "../TC/TC03/TestCase03.v"
    `endif

    // Normal test case - Fixed Width = 64, Radix Point = 32
    `ifdef TC4
        `include "../TC/TC04/TestCase04.v"
    `endif

    // Normal test case - Fixed Width = 64, Radix Point = 48
    `ifdef TC5
        `include "../TC/TC05/TestCase05.v"
    `endif

    // Normal test case - Fixed Width = 64, Radix Point = 16
    `ifdef TC6
        `include "../TC/TC06/TestCase06.v"
    `endif

    // Denormalized input vectors - Double Precision
    `ifdef TC7
        `include "../TC/TC07/TestCase07.v"
    `endif

    // Denormalized input vectors - Single Precision
    `ifdef TC8
        `include "../TC/TC08/TestCase08.v"
    `endif

    // Normal test case - Testing of numbers between -1 and 1
	 // Fixed Width = 32, Radix Point = 16
    `ifdef TC9
        `include "../TC/TC09/TestCase09.v"
    `endif

    // Special Cases
    `ifdef TC10
        `include "../TC/TC10/TestCase10.v"
    `endif

    // Clock to feed input on
    reg  Clock;
    
    integer Count;
    integer OutErrCount;
    
    // Define intial conditions
    initial
    begin
        Clock       = 1;
        Count       = 0;
        OutErrCount = 0;
    end

    // Clock definations
    always 
    begin
        # (`CLK_PERIOD_BY_2);
        Clock = ~Clock;
    end


    // Feed the input
    wire [FLOATSIZE - 1 : 0] FloatInputTmp  = FloatInputDump[Count];
    wire [FIXEDSIZE - 1 : 0] FixedOutputTmp = FixedOutputDump[Count];
    reg  [FIXEDSIZE - 1 : 0] FixedOutputGold;

    always @(posedge Clock)
    begin
        InFloat         <= FloatInputTmp;
        FixedOutputGold <= FixedOutputTmp;
        Count           <= Count + 1;
        
        if (OutFixed != FixedOutputGold)
        begin
            OutErrCount <= OutErrCount + 1;
            $display("Mismatch in Output %d. RTL = %x, C Output = %x",Count,OutFixed,FixedOutputGold);
        end

        if(Count >= `INPUT_SAMPLES)
        begin
            if(OutErrCount != 0)
            begin
                $display("#############################################");
                $display("############### ERROR REPORT ################");
                $display("#############################################\n");
                $display("Output Error               = %d\n",OutErrCount);
                $display("Number of Outputs verified = %d\n",Count);
                $display("****** SIMULATION COMPLETED WITH ERROR ******");
                $stop;
            end
            else
            begin
                $display("#############################################");
                $display("########### SIMULATION SUMMARY ##############");
                $display("#############################################\n");
                $display("Number of Outputs verified     = %d\n",Count);
                $display("<<<<<<<<<<<< SIMULATION PASSED >>>>>>>>>>>>>>");
                $stop;
            end
        end
        else
        begin
            if(OutErrCount > `ERR_LIMIT)
            begin
                $display("=============================================");
                $display("=SIMULATION INTERRUPTED DUE TO EXCESS ERRORS=");
                $display("=============================================");
                $display("Output Error               = %d\n",OutErrCount);
                $display("Number of Outputs verified = %d\n",Count);
                $stop;
            end
            else
            begin
                if((Count % `PRINT_INTERVAL) == 0)
                begin
                    $display("~~~~~~  %d Inputs Processed  ~~~~~~",Count);
                end
            end
        end
    end

    // Instantiation of DUT
    Float2Fixed  #(
        .FLOATSIZE      (FLOATSIZE      ),
        .FIXEDSIZE      (FIXEDSIZE      ),
        .RADIXPOINTSIZE (RADIXPOINTSIZE ),
        .EXPONENTBITS   (EXPONENTBITS   ),
        .MANTISSABITS   (MANTISSABITS   ),
		  .OVERFLOWBITS   (OVERFLOWBITS   )
        ) 
    Float2Fixed_Inst0 (
        .InFloat        (InFloat        ),
        .InRadixPoint   (InRadixPoint   ),
        .OutFixed       (OutFixed       ),
        .OutOverflow    (OutOverflow    ),
        .OutException   (OutException   )
        );

endmodule