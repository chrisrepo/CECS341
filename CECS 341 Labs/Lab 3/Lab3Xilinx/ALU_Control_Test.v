`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:43:08 02/15/2016
// Design Name:   ALU_Control
// Module Name:   F:/CECS 341 Labs/Lab 3/Lab3Xilinx/ALU_Control_Test.v
// Project Name:  Lab3Xilinx
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

module ALU_Control_Test;

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
		ALU_op = 2'b10;
		FuncCode = 6'b100000;
		#10;
		
		FuncCode = 6'b100010;
		#10;
		
		FuncCode = 6'b100100;
		#10;
		
		FuncCode = 6'b100101;
		#10;
		
		FuncCode = 6'b101010;
		#10;
		
		FuncCode = 6'b100111;
		#10; 
		
		ALU_op = 2'b00;
		FuncCode = 6'bXXXXXX;
		#10;
		
		ALU_op = 2'bX1;
		FuncCode = 6'bXXXXXX;
		#10;
		// Wait 100 ns for global reset to finish
		$stop;
        
		// Add stimulus here

	end
      
endmodule

