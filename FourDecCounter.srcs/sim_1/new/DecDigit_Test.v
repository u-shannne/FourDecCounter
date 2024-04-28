`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/28 23:14:21
// Design Name: 
// Module Name: Top_test
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


module Top_test
(

);

reg         clk;
reg         rst_n;
wire        w0,w1,w2;
wire[3:0]   out0, out1, out2, out3;


always #5 clk <= ~clk;

initial begin
    clk <= 0;
    rst_n <= 1'b0;
    #5;
    rst_n <= 1'b1;
end


    DecDigit d0(.clk(clk), .rst_n(rst_n), .in(1'b1), .cout(w0), .out(out0));
    DecDigit d1(.clk(clk), .rst_n(rst_n), .in(w0), .cout(w1), .out(out1));
    DecDigit d2(.clk(clk), .rst_n(rst_n), .in(w1), .cout(w2), .out(out2));
    DecDigit d3(.clk(clk), .rst_n(rst_n), .in(w2),            .out(out3));


endmodule
