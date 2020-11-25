`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:43:46 11/25/2020
// Design Name:   HW6Code
// Module Name:   C:/.Xilinx/HW6475LP/HW6Test.v
// Project Name:  HW6475LP
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HW6Code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module HW6Test;

	// Inputs
	reg clock;
	reg selector;
	reg [7:0] jumpTo;

	// Outputs
	wire [7:0] R15output;
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	HW6Code uut (
		.clock(clock), 
		.selector(selector), 
		.jumpTo(jumpTo), 
		.R15output(R15output), 
		.out(out)
	);
	always #5 clock=!clock;
	initial begin
		// Initialize Inputs
		clock = 0;
		selector = 0;
		jumpTo = 5;

		// Wait 100 ns for global reset to finish
		#100;
		
      selector = 1;
		jumpTo = 3; 
		// Add stimulus here

	end
      
endmodule

