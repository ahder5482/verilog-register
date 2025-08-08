`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 15:20:18
// Design Name: 
// Module Name: alu_tb
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


`timescale 1ns / 1ps

module alu_tb;

reg [2:0] opcode;
reg [7:0] a, b;
wire [7:0] out;

// 實例化 ALU
alu dut (
    .out(out),
    .opcode(opcode),
    .a(a),
    .b(b)
);

initial begin
    // 測試加法
    a = 8'd10; b = 8'd5; opcode = 3'd0; #10;
    $display("PLUS    : a=%d b=%d => out=%d", a, b, out);

    // 測試減法
    a = 8'd15; b = 8'd6; opcode = 3'd1; #10;
    $display("MINUS   : a=%d b=%d => out=%d", a, b, out);

    // 測試 AND
    a = 8'b10101010; b = 8'b11001100; opcode = 3'd2; #10;
    $display("AND     : a=%b b=%b => out=%b", a, b, out);

    // 測試 OR
    a = 8'b10101010; b = 8'b11001100; opcode = 3'd3; #10;
    $display("OR      : a=%b b=%b => out=%b", a, b, out);

    // 測試 NOT a
    a = 8'b00001111; b = 8'b00000000; opcode = 3'd4; #10;
    $display("NEGATE  : a=%b => out=%b", a, out);

    // 測試 default (不合法opcode)
    opcode = 3'd7; #10;
    $display("DEFAULT : a=%d b=%d => out=%b", a, b, out);

    $stop;
end

endmodule

    
