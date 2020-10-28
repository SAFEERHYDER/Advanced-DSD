`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2020 05:18:51 PM
// Design Name: 
// Module Name: Mux4_test
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


module Mux4_test();
reg S0, S1, A, B, C,D;
wire Out;

initial
begin
    #00 S1 = 0 ; S0 = 0; {D,C,B,A} = 4'bzzz1;
    #10 S1 = 0 ; S0 = 1; {D,C,B,A} = 4'bzz1z;
    #10 S1 = 1 ; S0 = 0; {D,C,B,A} = 4'bz1zz;
    #10 S1 = 1 ; S0 = 1; {D,C,B,A} = 4'b1zzz;
    #10 $stop;

end 

 Multiplexer_4to1 Mux0(Out, S0, S1, A, B, C,D);


endmodule
