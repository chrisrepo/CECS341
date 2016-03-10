`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:18:57 02/15/2016
// Design Name:   ALU
// Module Name:   F:/CECS 341 Labs/Lab 3/Lab3Xilinx/ALU_Test.v
// Project Name:  Lab3Xilinx
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

module ALU_Test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0]  ALU_Ctl;

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
		B = 32'h12345678;
		ALU_Ctl = 4'b0000;//AND
		#10;

		ALU_Ctl = 4'b0001;//OR
		#10;
		
		ALU_Ctl = 4'b0010;//ADD
		#10;
		
		ALU_Ctl = 4'b0110;//SUBTRACT
		#10;
		
		ALU_Ctl = 4'b0111;//Setlessthan
		#10; 
		
		ALU_Ctl = 4'b1100;//NOR
		#10;
		
		ALU_Ctl = 4'b1111;//ERROR
		#10;
      $stop;
		// Add stimulus here

	end
      
endmodule

