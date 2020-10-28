`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2020 07:07:34 PM
// Design Name: 
// Module Name: DFD
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


module DFD(Q, Qbar, D, clk);
input D, clk;
output reg Q, Qbar;

// always block
always @(posedge clk)
begin
    Q <= D;
    Qbar <= ~ D; 
end 


endmodule


module DFF_TB;
 reg D, clk;
wire Q, Qbar;

DFD inst0(Q, Qbar, D, clk);

initial
begin
clk = 0; D = 1;
end 

always 
begin
#10 clk = ~ clk;
end 

always
#6  D = ~ D;


initial
#150 $stop;


   
endmodule 
