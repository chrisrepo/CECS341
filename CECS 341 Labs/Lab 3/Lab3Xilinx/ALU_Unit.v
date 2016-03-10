`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:41 02/15/2016 
// Design Name: 
// Module Name:    ALU_Unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU_Unit(FuncCode, ALU_op, A, B, Zero_Flag, Output);
	input			[31:0]	A,B;
	input			[5:0]		FuncCode;
	input			[1:0]		ALU_op;
	
	wire 			[3:0]		ALU_Ctl;
	
	output			Zero_Flag;
	output [31:0]	Output;
	
	ALU_Control aluctl(FuncCode, ALU_op, ALU_Ctl);
	ALU			alu1(A,B,ALU_Ctl, Zero_Flag,Output);

endmodule
