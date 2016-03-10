`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Chris Repanich
// Control Unit Lab
// ControlUnitTest file
////////////////////////////////////////////////////////////////////////////////

module ControlUnitTest;

	// Inputs
	reg [5:0] opCode;

	// Outputs
	wire [1:0] ALUOp;
	wire RegDst;
	wire Jump;
	wire Branch;
	wire MemRead;
	wire MemtoReg;
	wire MemWrite;
	wire ALUSrc;
	wire RegWrite;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.opCode(opCode), 
		.ALUOp(ALUOp), 
		.RegDst(RegDst), 
		.Jump(Jump), 
		.Branch(Branch), 
		.MemRead(MemRead), 
		.MemtoReg(MemtoReg), 
		.MemWrite(MemWrite), 
		.ALUSrc(ALUSrc), 
		.RegWrite(RegWrite)
	);

	initial begin
		// Initialize Inputs
		opCode = 6'b000000;
		//wait 10
		#10;
		
		opCode = 6'b100011;
		#10;
		
		opCode = 6'b101011;
		#10;
		
		opCode = 6'b000100;
		#10;
		
		opCode = 6'b000010;
		// Wait 100 ns for global reset to finish
		#10;
		$stop;
		#100;
        
		// Add stimulus here

	end
      
endmodule

