`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2020 04:09:11 PM
// Design Name: 
// Module Name: Register_File
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


module Register_File(clk, wr_en, w_addr, r_addr, w_data, r_data);

// size of the memory
parameter B = 8;    // register size
parameter Add = 10; // number of address bits

// ports 
input wire clk, wr_en;
input wire  [Add-1 : 0] w_addr, r_addr;
input wire [B-1: 0] w_data;
output reg [B-1: 0] r_data;

// memory generation 
reg [B-1 : 0] array_mem [(2**Add)-1 :0];


always@(posedge clk)
if (wr_en)
    array_mem [w_addr] <= w_data;
    else 
    r_data = array_mem[r_addr];
    
    
// 
//assign r_data = array_mem[r_addr];

endmodule      


module TB;
// size of the memory
parameter B = 8;    // register size
parameter Add = 10; // number of address bits

// ports 
reg  clk, wr_en;
reg  [Add-1 : 0] w_addr, r_addr;
reg [B-1: 0] w_data;
wire [B-1: 0] r_data;

Register_File inst0(clk, wr_en, w_addr, r_addr, w_data, r_data);

// clk generation
initial
clk = 0;
always 
#5 clk = ~ clk;

// testing signals
initial
begin
///////// Testing writing operation
    @(negedge clk);
    wr_en = 1;
    w_addr = 0;
    w_data = 255;
    
    @(negedge clk);
    w_addr = 1;
    w_data = 254;
    
    @(negedge clk);
    w_addr = 2;
    w_data = 100;
    
///////// Testing reading operation
    @(negedge clk);
    wr_en = 0;
    r_addr = 0;
    
    @(negedge clk);
    r_addr = 1;
    
    @(negedge clk);
    r_addr = 2;
    
/////// Finish simulation
    repeat (2) @(negedge clk);
    $finish;    
    
    
end


endmodule 


