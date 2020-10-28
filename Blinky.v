`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 06:42:34 PM
// Design Name: 
// Module Name: Blinky
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


module Blinky(Clkin, Clkout);
input Clkin;
output reg Clkout;

reg [31:0] counter;

initial 
begin
counter  = 0;
Clkout = 0;
end 

always@(posedge Clkin)
begin
    counter  = counter + 1;
    if (counter == 100000000)
    begin
        counter = 0;
        Clkout = ~ Clkout;
    end
end 

endmodule


module TB;
reg Clkin;
wire Clkout;

initial // once-time activity 
Clkin = 0;

always // continous time activity
#5 Clkin = ~ Clkin;

Blinky inst0(Clkin, Clkout);

endmodule 