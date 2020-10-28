`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 04:16:12 PM
// Design Name: 
// Module Name: FourAdder_test
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


module FourAdder_test();
reg [3:0] A, B;
wire [4:0] Sum;
reg Cin;

initial
begin
    #00 A = 10; B = 5; Cin = 1;
    #10 A = 11; B = 6; Cin = 1;
    #10 A = 12; B = 7; Cin = 1;
    #10 A = 13; B = 8; Cin = 1;
    #10 A = 14; B = 9; Cin = 1;
    #10 $stop;
end 

// instatiate design here
Four_bit_Adder_assign FourAdd1(Sum, A, B, Cin);



endmodule
