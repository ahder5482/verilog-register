`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/06 17:28:25
// Design Name: 
// Module Name: register
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


module register(
    input clk,
    input rst,
    input en,
    input [7:0] d,
    output reg [7:0] q
    );
    
always @(posedge clk) begin
    if (rst)
        q <= 8'b0;
    else if (en)
        q <= d;
end

endmodule
