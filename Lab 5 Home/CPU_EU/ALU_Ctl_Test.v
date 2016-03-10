`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:35:07 03/09/2016
// Design Name:   ALU_Control
// Module Name:   E:/CECS 341 Labs/Lab 5/CPU_EU/ALU_Ctl_Test.v
// Project Name:  CPU_EU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Ctl_Test;

	// Inputs
	reg [5:0] FuncCode;
	reg [1:0] ALU_op;

	// Outputs
	wire [3:0] ALU_Ctl;

	// Instantiate the Unit Under Test (UUT)
	ALU_Control uut (
		.FuncCode(FuncCode), 
		.ALU_op(ALU_op), 
		.ALU_Ctl(ALU_Ctl)
	);

	initial begin
		// Initialize Inputs
		FuncCode = 6'b100111;
		ALU_op = 0;

		// Wait 100 ns for global reset to finish
		#100;
      $display("Expected result: func b1100");
		$display("Actual Result: %b", ALU_Ctl);  
		// Add stimulus here
		#1;
		$stop;
	end
      
endmodule

