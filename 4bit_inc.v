`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2026 08:30:40 AM
// Design Name: 
// Module Name: 4bit_inc
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


module inc_4bit
(
    input  [3:0] a,
    output [3:0] out,
    output cout
);

wire cin = 1'b1;
wire [3:0] b = 4'b0000;

add_4bit inc_alu(a[3:0], b[3:0], cin, out[3:0], cout);

endmodule
