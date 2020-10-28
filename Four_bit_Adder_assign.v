`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 04:08:42 PM
// Design Name: 
// Module Name: Four_bit_Adder_assign
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


module Four_bit_Adder_assign(Sum, A, B, Cin);

input [3:0] A, B;
output [4:0] Sum; // MSB represents  Cout
input Cin;

// logic 
// data flow modelling ; design using operators
// assign LHS = operand operator operand
assign Sum = A + B + Cin;


endmodule
