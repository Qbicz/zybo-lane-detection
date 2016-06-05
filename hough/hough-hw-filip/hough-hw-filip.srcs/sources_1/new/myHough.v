`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Filip Kubicz
// 
// Create Date: 27.04.2016 11:21:26
// Design Name: 
// Module Name: myHough
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

// version for single theta
module myHough(
    input [10:0] pixel_x, // up to 2000px
    input [9:0] pixel_y,  // up to 1000px
    input pixel_value,    // 0 or 1, black or white, no edge or edge
    input clk,
    input ce,
    output [4:0] theta,   // up to 180, if step is greater than 1 degree theta can has less bits (30 values needed - 5 bits)
    output [10:0] rho     // up to ???
    );

    reg [4:0] theta1 = 5b'00000;
    wire [9:0] cos1; // 0c10u
    wire [9:0] sin1;
    
    wire [20:0] xcos1; // 11c10u lub 11c2u
    wire [19:0] ysin1;
    wire [10:0] rho1; // wystarczy integer
    
    // cos LUT
    
    dist_mem_gen_0 cosDistLUT (
       // Input Ports - Single Bit
       .clk      (clk),   
       .we       (ce),    
       // Input Ports - Busses
       .a[4:0]   (theta1[4:0]),
       // Output Ports - Single Bit
       // Output Ports - Busses
       .spo[4:0] (cos1[9:0])
       // InOut Ports - Single Bit
       // InOut Ports - Busses
    );
    
    assign xcos1 = pixel_x * cos1;
    

    

/*
//----------- INSTANTIATION Mnozarka ---------
// Latencja = 2 (optimum pipeline stages)
	Mnozarka Pomnoz_xcos1 (
	  .CLK(clk), // input clk
	  .A(cos1), // input
	  .B(pixel_x), // input
	  .CE(ce), // input ce
	  .P(xcos1) // output [24 : 0] p
	);
*/
	// ------- End INSTANTIATION Template ---------
    
    // sinus
    
    // Mnozarka Pomnoz_ysin1
    
    //----------- INSTANTIATION Sumator --------
	// Latencja = 2
	/*
	Sumator dodaj_AdoB (
	  .a(xcos1), // input [11 : 0] a
	  .b(ysin1), // input [11 : 0] b
	  .clk(clk), // input clk
	  .ce(ce), // input ce
	  .s(rho1) // output [12 : 0] s
	);
	*/
	// ------ End INSTANTIATION Template ---------
    
    
    // genvar theta_val;
    // generate
    // begin

    // endgenerate

    // Output MUX
    assign rho = ((pixel_value == 1'b1) ? rho1 : 11'd0);
    
    
endmodule
