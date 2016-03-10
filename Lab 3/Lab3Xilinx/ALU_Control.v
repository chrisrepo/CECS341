`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:35 02/15/2016 
// Design Name: 
// Module Name:    ALU_Control 
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
module ALU_Control(FuncCode, ALU_op, ALU_Ctl);
	input [5:0] FuncCode;
	input [1:0] ALU_op;
	output reg [3:0] ALU_Ctl;
	
	always@(FuncCode, ALU_op)
	begin
		casex(FuncCode)
		6'b100000://ADD
				ALU_Ctl <= 4'b0010;
		6'b100010://SUB
				ALU_Ctl <= 4'b0110;
		6'b100100://AND
				ALU_Ctl <= 4'b0000;
		6'b100101://OR
				ALU_Ctl <= 4'b0001;
		6'b101010://SLT
				ALU_Ctl <= 4'b0111;
		6'b100111://NOR
				ALU_Ctl <= 4'b1100;
		6'bXXXXXX://Address Calculation, Equality Comparison
			begin
				if (ALU_op == 2'b00)
					ALU_Ctl <= 4'b0010;
				else
					ALU_Ctl <= 4'b0110;
			end
		endcase
	end

endmodule
