`timescale 1ns / 1ps
//-----------------------------------------------------------------------------
// Project      : Arizona Float<->Fixed Hardware Library (AFFHL)
//
// Authors      : Lysecky, R., Saldanha, L., Kamath Nileshwar, V.
//
// Module Name  : Fixed2FloatTb
//
// Description  : Test bench for Floating point to fixed point converter
//
// Date modified: 12.29.2008
//-----------------------------------------------------------------------------

`define CLK_PERIOD          5
`define CLK_PERIOD_BY_2     2.5
`define ERR_LIMIT           10
`define PRINT_INTERVAL      100
`define TC8


module Fixed2FloatTb;

    // Normal test case - Fixed Width = 32, Radix Point = 16, Float = Single Precision
    `ifdef TC1
        `include "../TC/TC01/TestCase01.v"
    `endif
    
    // Normal test case - Fixed Width = 32, Radix Point = 24, Float = Single Precision
    `ifdef TC2
        `include "../TC/TC02/TestCase02.v"
    `endif

    // Normal test case - Fixed Width = 32, Radix Point = 8, Float = Single Precision
    `ifdef TC3
        `include "../TC/TC03/TestCase03.v"
    `endif

    // Normal test case - Fixed Width = 64, Radix Point = 32, Float = Double Precision
    `ifdef TC4
        `include "../TC/TC04/TestCase04.v"
    `endif

    // Normal test case - Fixed Width = 64, Radix Point = 48, Float = Double Precision
    `ifdef TC5
        `include "../TC/TC05/TestCase05.v"
    `endif

    // Normal test case - Fixed Width = 64, Radix Point = 16, Float = Double Precision
    `ifdef TC6
        `include "../TC/TC06/TestCase06.v"
    `endif

    // Special Cases - Fixed Width = 32
    `ifdef TC7
        `include "../TC/TC07/TestCase07.v"
    `endif

    // Special Cases - Fixed Width = 64
    `ifdef TC8
        `include "../TC/TC08/TestCase08.v"
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
    wire [FIXEDSIZE - 1 : 0] FixedInputTmp  = FixedInputDump[Count];
    wire [FLOATSIZE - 1 : 0] FloatOutputTmp = FloatOutputDump[Count];
    reg  [FLOATSIZE - 1 : 0] FloatOutputGold;

    always @(posedge Clock)
    begin
        InFixed         <= FixedInputTmp;
        FloatOutputGold <= FloatOutputTmp;
        Count           <= Count + 1;
        
        if (OutFloat != FloatOutputGold)
        begin
            OutErrCount <= OutErrCount + 1;
            $display("Mismatch in Output %d. RTL = %x, C Output = %x",Count,OutFloat,FloatOutputGold);
        end

        if(Count > `INPUT_SAMPLES)
        begin
            if(OutErrCount != 0)
            begin
                $display("#############################################");
                $display("############### ERROR REPORT ################");
                $display("#############################################\n");
                $display("Output Error               = %d\n",OutErrCount);
                $display("Number of Outputs verified = %d\n",Count-1);
                $display("****** SIMULATION COMPLETED WITH ERROR ******");
                $stop;
            end
            else
            begin
                $display("#############################################");
                $display("########### SIMULATION SUMMARY ##############");
                $display("#############################################\n");
                $display("Number of Outputs verified     = %d\n",Count-1);
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
    Fixed2Float  #(
        .FLOATSIZE      (FLOATSIZE      ),
        .FIXEDSIZE      (FIXEDSIZE      ),
        .RADIXPOINTSIZE (RADIXPOINTSIZE ),
        .EXPONENTBITS   (EXPONENTBITS   ),
        .MANTISSABITS   (MANTISSABITS   )
        ) 
    Fixed2Float_Inst0 (
        .InFixed        (InFixed        ),
        .InRadixPoint   (InRadixPoint   ),
        .OutFloat       (OutFloat       )
        );

endmodule