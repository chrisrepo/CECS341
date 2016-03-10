`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:43:21 03/09/2016 
// Design Name: 
// Module Name:    SignExtend_16to32 
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
module SignExtend_16to32(SE_In, SE_Out);
	input		[15:0]	SE_In;
	output		[31:0]	SE_Out;
	assign SE_Out = {{16{SE_In[15]}},SE_In};

endmodule
