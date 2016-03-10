`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:03 02/15/2016
// Design Name:   ALU_Unit
// Module Name:   F:/CECS 341 Labs/Lab 3/Lab3Xilinx/ALU_Unit_Test.v
// Project Name:  Lab3Xilinx
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Unit_Test;

	// Inputs
	reg [5:0] FuncCode;
	reg [1:0] ALU_op;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire Zero_Flag;
	wire [31:0] Output;

	// Instantiate the Unit Under Test (UUT)
	ALU_Unit uut (
		.FuncCode(FuncCode), 
		.ALU_op(ALU_op), 
		.A(A), 
		.B(B), 
		.Zero_Flag(Zero_Flag), 
		.Output(Output)
	);

	initial begin
		A = 32'h10696671;
		B = 32'h12345678;
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

