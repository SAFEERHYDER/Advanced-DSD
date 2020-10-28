`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 04:56:06 PM
// Design Name: 
// Module Name: Universal_shift_register
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


module Universal_shift_register(clk, reset, ctrl, d, q);

// size of the register
parameter scale = 8;

//ports
input wire clk, reset;
input wire [1:0] ctrl;
input wire [scale-1:0] d;
output wire [scale-1:0] q;

// internal registers
reg [scale-1 : 0] r_reg, r_next;

// current_state 
always@(posedge clk, posedge reset)
begin
    if (reset)
    r_reg <= 0;
    else 
    r_reg <= r_next;
end 

// next_state
always@(*)
begin
    case(ctrl)
    2'b00 : r_next = r_reg;
    2'b01 : r_next = {r_reg[scale-2:0],d[0]};
    2'b10 : r_next = {d[scale-1],r_reg[scale-1:1]};
    2'b11 : r_next = d;
    default : r_next = 0;
    endcase
end 

// output_state
assign q = r_reg;


endmodule
