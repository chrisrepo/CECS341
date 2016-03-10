`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Chris Repanich
// Lab 2 Control Unit
// ControlUnit.v
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit(opCode, ALUOp, RegDst, Jump, Branch, 
MemRead, MemtoReg,MemWrite, ALUSrc, RegWrite);
	input			[5:0]		opCode;
	output reg	[1:0]		ALUOp;
	output reg				RegDst, Jump, Branch, MemRead, MemtoReg,MemWrite, ALUSrc, RegWrite;
	
	always@(opCode)
	begin
		case(opCode)
			6'b000000://R-type
				begin
					ALUOp 	<= 2'b10;
					RegDst 	<= 1'b1;
					ALUSrc 	<= 1'b0;
					MemtoReg <= 1'b0;
					RegWrite <= 1'b1;
					MemRead 	<= 1'b0;
					MemWrite <= 1'b0;
					Branch 	<= 1'b0;
					Jump		<= 1'b0;
				end
			6'b100011://LW
				begin
					ALUOp 	<= 2'b00;
					RegDst 	<= 1'b0;
					ALUSrc 	<= 1'b1;
					MemtoReg <= 1'b1;
					RegWrite <= 1'b1;
					MemRead 	<= 1'b1;
					MemWrite <= 1'b0;
					Branch 	<= 1'b0;
					Jump		<= 1'b0;
				end
			6'b101011://SW
				begin
					ALUOp 	<= 2'b00;
					RegDst 	<= 1'b0;//X
					ALUSrc 	<= 1'b1;
					MemtoReg <= 1'b0;//X
					RegWrite <= 1'b0;
					MemRead 	<= 1'b0;
					MemWrite <= 1'b1;
					Branch 	<= 1'b0;
					Jump		<= 1'b0;
				end
			6'b000100://BEQ
				begin
					ALUOp 	<= 2'b01;
					RegDst 	<= 1'b0;//X
					ALUSrc 	<= 1'b0;
					MemtoReg <= 1'b0;//X
					RegWrite <= 1'b0;
					MemRead 	<= 1'b0;
					MemWrite <= 1'b0;
					Branch 	<= 1'b1;
					Jump		<= 1'b0;
				end
			6'b000010:// J
				begin
					ALUOp 	<= 2'b00;
					RegDst 	<= 1'b0;//X
					ALUSrc 	<= 1'b0;//X
					MemtoReg <= 1'b0;//X
					RegWrite <= 1'b0;
					MemRead 	<= 1'b0;
					MemWrite <= 1'b0;
					Branch 	<= 1'b0;
					Jump		<= 1'b1;
				end
			default://invalide opcode
				begin
					ALUOp 	<= 2'b00;//X
					RegDst 	<= 1'b0;//X
					ALUSrc 	<= 1'b0;//X
					MemtoReg <= 1'b0;//X
					RegWrite <= 1'b0;//X
					MemRead 	<= 1'b0;//X
					MemWrite <= 1'b0;//X
					Branch 	<= 1'b0;//X
					Jump		<= 1'b0;//X
				end
			//invalid opcode
		endcase
	end

endmodule
