//16-BIT ADDER TESTBENCH

`timescale 1ns/1ps
`include "MULTI_BIT_ADDER.v"

module MULTI_BIT_ADDER_TB();

    reg [7:0] A_TB;
    reg [7:0] B_TB;
    reg C_TB;
    wire [7:0] F_TB;
    wire E_TB;

    integer i, j;

    MULTI_BIT_ADDER DUT(E_TB, F_TB, A_TB, B_TB, C_TB);

    initial

        begin
            
            $dumpfile("MULTI_BIT_ADDER_TB.vcd");
            $dumpvars(0, MULTI_BIT_ADDER_TB);

            for (i = 0; i < 32; i = i + 1) begin

                for (j = 0; j < 32; j = j + 1) begin

                        A_TB = i;
                        B_TB = j;

                        C_TB = 0;

                        #10;

                        C_TB = 1;

                        #10;
                    
                end
                
            end
        
        end

endmodule