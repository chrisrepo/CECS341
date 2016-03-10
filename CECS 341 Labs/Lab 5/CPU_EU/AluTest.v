`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:07:54 03/09/2016
// Design Name:   ALU
// Module Name:   E:/CECS 341 Labs/Lab 5/CPU_EU/AluTest.v
// Project Name:  CPU_EU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AluTest;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] ALU_Ctl;

	// Outputs
	wire Zero_Flag;
	wire [31:0] Output;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALU_Ctl(ALU_Ctl), 
		.Zero_Flag(Zero_Flag), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		A = 32'h10696671;
		B = 32'h10696671;
		ALU_Ctl = 4'b1100;

		// Wait 100 ns for global reset to finish
		#100;
      $display("Expected result: A NOR B 0x%h", ~(A | B));
		$display("Actual Result: 0x%h", Output);
		// Add stimulus here
		$stop;
	end
      
endmodule

