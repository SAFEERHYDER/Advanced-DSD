`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 05:40:39 PM
// Design Name: 
// Module Name: Comparator_8bit
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


module Comparator_8bit(LT, GT, Eq, A, B);
input [7:0] A, B;
output LT, GT, Eq;

assign LT = A < B;
assign GT = A > B;
assign Eq = A == B;

endmodule
