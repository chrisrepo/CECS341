`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:31 03/09/2016 
// Design Name: 
// Module Name:    Mux2to1_5bit 
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
module Mux2to1_5bit(DataIn0, DataIn1, Sel, DataOut);
	input 					Sel;
	input 		[4:0] 	DataIn0, DataIn1;
	output reg 	[4:0]	DataOut;

	always@(Sel, DataIn0, DataIn1) 
	begin
		case(Sel)
			1'b0: 	DataOut <= DataIn0; 
			1'b1: 	DataOut <= DataIn1;
			default: DataOut <= 32'bX; //assign X unknown by defaults
		endcase
	end
endmodule
