`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2022 10:46:06 AM
// Design Name: 
// Module Name: shift
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


module shifter(
    input clk,
    wire [15:0] sineOut,
    output reg [31:0] sine2Output
    );
    
    sine_gen baseSineGen(
        .clk (clk),
        .sineOutput (sineOut)
    );
    
    //reg [255:0] bits;
    always @ (posedge clk)
    begin
    //sine2Output <= bits[256];
    //bits <= {bits[254:0],sineOutput};
    sine2Output <= repeat (512) @(posedge clk) 2*sineOut;
    end
    
endmodule

