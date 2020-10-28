`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 04:30:55 PM
// Design Name: 
// Module Name: Four_to_One_Mux_Case_State
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




module Four_to_One_Mux_Case_State(data, ss, out);
input wire [3:0] data;
input wire [1:0] ss;
output reg out;


// logic
always @ (*)
begin
    case(ss)
    0 : out = data [0];
    1 : out = data [1]; 
    2 : out = data [2];
    3 : out = data [3];
    default: out = 1'bz;
    endcase
end 



endmodule
