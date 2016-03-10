`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:18 03/09/2016 
// Design Name: 
// Module Name:    CPU_EU 
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
module CPU_EU(clk, RegDst, ALUSrc, ALUOp, RegWrite, MemtoReg, Instruction, SEImm,
RAM_Address, Data_to_RAM, Data_from_RAM, Zero);

input 			clk, RegDst, ALUSrc, RegWrite, MemtoReg;
input [1:0]		ALUOp;
input [25:0]	Instruction;
input [31:0]	Data_from_RAM;

output [31:0]	SEImm, RAM_Address, Data_to_RAM;
output			Zero;

wire	[4:0]		WriteRegister;
wire	[3:0]		ALUCtl;
wire	[31:0]	SE, ReadData1, ReadData2, ALU_InputB, RegWriteData, ALU_Result;

Mux2to1_5bit 	RegDstMux(.DataIn0(Instruction[20:16]), .DataIn1(Instruction[15:11]), .Sel(RegDst), .DataOut(WriteRegister));

Mux2to1_32bit  MemToRegMux(.DataIn0(ALU_Result), .DataIn1(Data_from_RAM), .Sel(MemtoReg), .DataOut(RegWriteData));

Mux2to1_32bit	ALUSrcMux(.DataIn0(ReadData2), .DataIn1(SE), .Sel(ALUSrc), .DataOut(ALU_InputB));

RegFile32		RF32(.Read1(Instruction[25:21]), .Read2(Instruction[20:16]), .WriteReg(WriteRegister), .WriteData(RegWriteData), .clock(clk), .RegWrite(RegWrite), .Data1(ReadData1), .Data2(ReadData2));

SignExtend_16to32	SE32(.SE_In(Instruction[15:0]), .SE_Out(SE));

ALU_Control		ALUCtlr(.FuncCode(Instruction[5:0]), .ALU_op(ALUOp), .ALU_Ctl(ALUCtl));

ALU	 			ALU(.A(ReadData1), .B(ALU_InputB), .ALU_Ctl(ALUCtl), .Zero_Flag(Zero), .Output(ALU_Result));

assign RAM_Address = ALU_Result;
assign Data_to_RAM = ReadData2;
assign SEImm = SE;

endmodule
