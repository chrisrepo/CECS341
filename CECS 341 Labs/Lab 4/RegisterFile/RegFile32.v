`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
/* 
	Chris Repanich
	CECS 341
	010696671
	
	Lab 4 Register File Test Module
*/
////////////////////////////////////////////////////////////////////////////////
module RegFile32(Read1, Read2, WriteReg, WriteData, clock, RegWrite, Data1, Data2);
	input [4:0] 	Read1, Read2, WriteReg;
	input [31:0] 	WriteData;
	input 			RegWrite, clock;
	
	output[31:0] 	Data1, Data2;
	reg 	[31:0] 	RF [31:0];
	
	assign Data1 = RF[Read1];
	assign Data2 = RF[Read2];
	
	always@(negedge clock)
	begin
		if (RegWrite == 1 && WriteReg != 5'h000) RF[WriteReg] <= WriteData;
		
		RF[0] <= 32'h00000000;
	end
endmodule
