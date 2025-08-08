`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 15:00:32
// Design Name: 
// Module Name: alu
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


`define plus        3'd0
`define minus       3'd1
`define band        3'd2
`define bor         3'd3
`define unegate     3'd4
module alu(
    output reg [7:0] out,
    input      [2:0] opcode,
    input      [7:0] a,
    input      [7:0] b
);            

always @(*) begin
    case(opcode)
        `plus:      out=a+b;
        `minus:     out=a-b;
        `band:      out=a&b;
        `bor:       out=a|b;
        `unegate:   out=~a;
        default:    out=8'hxx;
    endcase
end

endmodule       
