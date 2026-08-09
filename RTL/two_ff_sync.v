`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2026 11:48:26
// Design Name: 
// Module Name: two_ff_sync
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


module two_ff_sync #(parameter ADDRSIZE=4)(
    input clk,
    input rst_n,
    input [ADDRSIZE:0] din,
    output reg [ADDRSIZE:0] q2
    );
    reg [ADDRSIZE:0]q1 ;
    
    always@(posedge clk or negedge rst_n) begin
    if(!rst_n)
    {q2,q1} <= 0;
    
    else {q2,q1} <= {q1,din};
     end
endmodule
