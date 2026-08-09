`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2026 10:30:27
// Design Name: 
// Module Name: fifomem
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


module fifomem #(parameter DATASIZE=8,
                 parameter ADDRSIZE=4)
(
    input [DATASIZE-1:0] wdata,
    input [ADDRSIZE-1:0] waddr,
    input [ADDRSIZE-1:0] raddr,
    input wclk,
    input wclken,
    input wfull,
    output [DATASIZE-1:0] rdata
    );
    
    localparam DEPTH = 1 << ADDRSIZE ;
    reg [DATASIZE-1 :0] mem [0:DEPTH-1];
    assign rdata = mem[raddr];
    
    always @(posedge wclk)begin 
    if(wclken && !wfull)
    mem[waddr] <= wdata;
    end 
    
endmodule
