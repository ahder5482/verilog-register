`timescale 1ns / 1ps
module register_tb;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/06 17:29:17
// Design Name: 
// Module Name: register_tb
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
reg clk;
reg rst;
reg en;
reg [7:0] d;
wire [7:0] q;

register uut(
    .clk(clk),
    .rst(rst),
    .en(en),
    .d(d),
    .q(q)
);

//產生時鐘:每 5ns 翻轉一次，週期 = 10ns
always #5 clk = ~clk;

initial begin
    //初始化
    clk = 0;
    rst = 1; en = 0; d = 8'h00;
    #10 rst = 0;
    
    //測試寫入
    #10 d = 8'hA5; en = 1;
    #10 en = 0;
    
    //測試保持
    #10 d = 8'hFF;
    #10;
    
    $stop;  // 模擬暫停
end                                   



endmodule
