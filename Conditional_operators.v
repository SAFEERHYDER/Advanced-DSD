`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2020 05:20:49 PM
// Design Name: 
// Module Name: Conditional_operators
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


module Conditional_operators(Out, In, S);
input [7:0] In; // vectored
input [2:0] S;
output Out;

// Conditional operator
//assign Out = Condition ? True : False;
//assign Out = S ? In2 : In1;
//assign Out = S1 ? (S0 ? In4: In3) : (S0 ? In2 : In1);
assign Out = S[2] ? (S[1] ? (S[0] ? In[7] : In[6]) : (S[0] ? In[5]: In[4]) ) : (S[1] ? (S[0] ? In[3]: In[2]) :(S[0] ? In[1]: In[0])); 

endmodule


module TB;
reg [7:0] In; 
reg [2:0] S;
wire Out;

Conditional_operators inst0(Out, In, S);

initial
begin
    #00 S = 3'b000; In = 8'bxxxx_xxx1;
    #10 S = 3'b001; In = 8'bxxxx_xx1x;
    #10 S = 3'b010; In = 8'bxxxx_x1xx;
    #10 S = 3'b011; In = 8'bxxxx_1xxx;
    #10 S = 3'b100; In = 8'bxxx1_xxxx;
    #10 S = 3'b101; In = 8'bxx1x_xxxx;
    #10 S = 3'b110; In = 8'bx1xx_xxxx;
    #10 S = 3'b111; In = 8'b1xxx_xxxx;


    #10 $stop;
end

endmodule 
