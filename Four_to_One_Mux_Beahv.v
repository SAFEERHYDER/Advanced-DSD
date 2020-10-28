`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2020 04:19:40 PM
// Design Name: 
// Module Name: Four_to_One_Mux_Beahv
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


module Four_to_One_Mux_Beahv(data, ss, out);
input wire [3:0] data;
input wire [1:0] ss;
output reg out;


// logic
always @ (*)
begin
    if (ss  == 2'b00)
    out = data [0];
    else if (ss == 2'b01)
    out = data [1];
    else if (ss == 2'b10)
    out = data [2];
    else if (ss == 2'b11)
    out = data [3];
    else out = 1'bz; // in case of abnormal ss condition
end 



endmodule
