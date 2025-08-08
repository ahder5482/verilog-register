`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 09:34:58
// Design Name: 
// Module Name: regena
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


// File: regena.v
// Description: 8-bit register with enable and asynchronous active-low reset

module regena(clock, ena, reset, R, Q);
    parameter n = 8;

    input [n-1:0] R;
    input clock, ena, reset;
    output reg [n-1:0] Q;

    always @(posedge clock or negedge reset) begin
        if (!reset)
            Q <= 0;
        else if (ena)
            Q <= R;
    end
endmodule

