`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2016 11:48:05
// Design Name: 
// Module Name: tb_myHough
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


module tb_myHough
(
    // UUT Inputs
    wire [10:0] tb_x;
    wire [9:0] tb_y;
    wire tb_value;
    wire clk;
    wire ce;
    
    // UUT Outputs
    wire theta;
    wire rho;
    
    // ile blockramów? 2048 x ? tyle blockramów ile theta, długość to rho

    myHough HoughInstance(
        .pixel_x (tb_x), // up to 2000px
        .pixel_y (tb_y),  // up to 1000px
        .pixel_value (tb_value),    // 0 or 1, black or white, no edge or edge
        .clk (clk),
        .ce (ce),
        .theta (theta),   // up to 180, if step is greater than 1 degree theta can has less bits (30 values needed - 5 bits)
        .rho (rho)     // up to ???
    );

    );
endmodule
