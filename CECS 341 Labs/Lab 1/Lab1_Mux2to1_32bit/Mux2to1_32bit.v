`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Christopher Repanich
// Lab1: Mux2to1_32bit 
// Description: 2 to 1 32 bit multiplexer
//////////////////////////////////////////////////////////////////////////////////
module Mux2to1_32bit(DataIn0, DataIn1, Sel, DataOut);
	input 					Sel;
	input 		[31:0] 	DataIn0, DataIn1;
	output reg 	[31:0]	DataOut;

	always@(Sel, DataIn0, DataIn1) 
	begin
		case(Sel)
			1'b0: 	DataOut <= DataIn0; 
			1'b1: 	DataOut <= DataIn1;
			default: DataOut <= 32'bX; //assign X unknown by defaults
		endcase
	end
endmodule
