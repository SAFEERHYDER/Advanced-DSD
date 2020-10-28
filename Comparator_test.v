`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 05:45:20 PM
// Design Name: 
// Module Name: Comparator_test
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


module Comparator_test();
reg [7:0] A, B;
wire LT, GT, Eq;

Comparator_8bit comp0(LT, GT, Eq, A, B);

initial
begin
    #00 A = 50; B = 70; // A < B
    #10 A = 80; B = 30; // A > B
    #10 A = 100; B = 100;
    #10 $stop;  
end 



endmodule
