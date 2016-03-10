`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:40 02/15/2016 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A, B, ALU_Ctl, Zero_Flag, Output);
	input 		[31:0]	A, B;
	input 		[3:0]		ALU_Ctl;
	output reg			Zero_Flag;
	output reg	[31:0] 	Output;

	always@(A, B, ALU_Ctl, Output)
	begin
		casex(ALU_Ctl)
			4'b0000://A & B
					Output <= A&B;
			4'b0001://A | B
					Output <= A|B;
			4'b0010://A + B
					Output <= A + B;
			4'b0110://A - B
					Output <= A - B;
			4'b0111://set on less than
				begin
					if (A<B)
						Output <= 32'b1;
					else
						Output <= 32'b0;
				end
			4'b1100://nor
					Output <= ~(A|B);
			default:
				begin
					Output <= 32'hXXXXXXXX;
				end
		endcase
		
		if (Output == 0) 
			assign Zero_Flag = 1'b1;
			
	end
endmodule
