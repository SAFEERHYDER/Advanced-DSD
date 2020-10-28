`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 04:54:12 PM
// Design Name: 
// Module Name: Multiplexer_4to1
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


module Multiplexer_4to1(Out, S0, S1, A, B, C,D);
input S0, S1, A, B, C,D;
output Out;

assign S0_bar = ~ S0;
assign S1_bar = ~ S1;
assign and1 = S0_bar & S1_bar & A;
assign and2 = S1_bar & S0 & B; 
assign and3 = S0_bar & S1 & C; 
assign and4 = S0 & S1 & D;
assign Out = and1 | and2 | and3 | and4;



endmodule
