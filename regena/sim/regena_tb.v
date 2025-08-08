`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 09:37:35
// Design Name: 
// Module Name: regena_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// File: regena_tb.v
// Testbench for regena

`timescale 1ns / 1ps

module regena_tb;

    reg clk, reset, ena;
    reg [7:0] R;
    wire [7:0] Q;

    // Instantiate the module
    regena uut (
        .clock(clk),
        .ena(ena),
        .reset(reset),
        .R(R),
        .Q(Q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $display("Starting regena_tb...");
        $dumpfile("regena_tb.vcd");  // for waveform viewing (if using GTKWave)
        $dumpvars(0, regena_tb);

        clk = 0;
        reset = 0;
        ena = 0;
        R = 8'h00;

        // Reset active
        #10;
        reset = 1;

        // Write data with enable
        #10; ena = 1; R = 8'hAA;
        #10; R = 8'h55;
        #10; ena = 0; R = 8'hFF;

        // Reset again
        #10; reset = 0;
        #10; reset = 1;

        #20;
        $finish;
    end

endmodule

