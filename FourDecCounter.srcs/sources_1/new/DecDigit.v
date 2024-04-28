`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/04 22:35:25
// Design Name: 
// Module Name: Top
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
`timescale 1ns/1ns

module DecDigit
(
    clk,
    rst_n,
    in,
    out,
    cout,
);
    input  wire            clk;
    input  wire            rst_n;
    input  wire            in;
    output reg[3:0]        out;
    output reg             cout;

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            out <= 3'b0;
        end
        else if(in)begin
            out <= (out + in > 9) ? (out + in - 10) : (out + in);
        end
    end
    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n) begin
            cout <= 1'b0;
        end
        else begin
            cout <= (out + in > 9) ? 1 : 0;
        end
    end

endmodule

//module jdoodle;
    
//    wire rst;
//    reg[2:0] d0;
//    reg[2:0] d1;
//    reg[2:0] d2;
//    reg[2:0] d3;
    
//    wire[2:0] w0;
//    wire[2:0] w1;    
//    wire[2:0] w2;
//    wire[2:0] w3;
    
//    wire cw0;
//    wire cw1;
//    wire cw2;
//    wire cw3;
    
//    assign w0 = d0;
//    assign w1 = d1;
//    assign w2 = d2;
//    assign w3 = d3;
    
//    wire clk;
    
//    initial begin
//        assign clk = 1'b0;
//    end
    
//    always(*) begin
//        clk = ~clk;
//        #10
//    end
    
//    DecDigit inst0(.clk(clk), .rst(~rst), .in(w0), .out(w1), cin(1'b1), cout(cw0));
//    DecDigit inst1(.clk(clk), .rst(~rst), .in(w1), .out(w2), cin(cw0), cout(cw1));
//    DecDigit inst2(.clk(clk), .rst(~rst), .in(w2), .out(w3), cin(cw1), cout(cw2));
//    DecDigit inst3(.clk(clk), .rst(~rst), .in(w3), .out(w4), cin(cw2), cout(cw3));
    
//endmodule
