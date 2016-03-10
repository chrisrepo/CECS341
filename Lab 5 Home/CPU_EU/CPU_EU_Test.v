`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:18:05 03/09/2016
// Design Name:   CPU_EU
// Module Name:   E:/CECS 341 Labs/Lab 5/CPU_EU/CPU_EU_Test.v
// Project Name:  CPU_EU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CPU_EU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CPU_EU_Test;

	// Inputs
	reg clk;
	reg RegDst;
	reg ALUSrc;
	reg [1:0] ALUOp;
	reg RegWrite;
	reg MemtoReg;
	reg [25:0] Instruction;
	reg [31:0] Data_from_RAM;

	// Outputs
	wire [31:0] SEImm;
	wire [31:0] RAM_Address;
	wire [31:0] Data_to_RAM;
	wire Zero;

	wire [4:0] rs, rt, rd;
	assign rs = Instruction[25:21], rt = Instruction[20:16], rd = Instruction[15:11];
	// Instantiate the Unit Under Test (UUT)
	CPU_EU uut (
		.clk(clk), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.ALUOp(ALUOp), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.Instruction(Instruction), 
		.SEImm(SEImm), 
		.RAM_Address(RAM_Address), 
		.Data_to_RAM(Data_to_RAM), 
		.Data_from_RAM(Data_from_RAM), 
		.Zero(Zero)
	);
	always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		RegDst = 0;
		ALUSrc = 0;
		ALUOp = 0;
		RegWrite = 0;
		MemtoReg = 0;
		Instruction = 0;
		Data_from_RAM = 0;
		uut.RF32.RF[ 31 ] = 32'h10696671;
		
		#10;
      $display("");
		$display("--------------------------Test R-Type Instructions------------------------------");
		$display("");
		// Add stimulus here
		
		/*
		Comments:
		This file goes through 9 test cases that display the functionality of my CPU_EU given unique input. 
		Each case sets values (that would usually be handled by the Control Unit) to mimic input and test the function of the module
		There is not too much to comment here. It is pretty straightforward
		*/
		
		//Case 1 NOR CASE
		@(posedge clk)
			begin
				//set values according to the given instruction and the Control Unit output
				RegDst					= 1'b1; //rd determines dest reg
				ALUSrc					= 1'b0; //pass register val to ALU
				ALUOp						= 2'b10; //RType Instruction
				RegWrite					= 1'b1;//Write data to register
				MemtoReg					= 1'b0;//pass alu result to regfile
				Instruction[25:21]	= 5'b11111;//rs = 31
				Instruction[20:16]	= 5'b11111;//rt = 31
				Instruction[15:11]	= 5'b11110;//rd = 30
				Instruction[5:0]		= 6'b100111;//function code val for nor
			end
		@(negedge clk)
			begin
				#1;
				$display("Test case 1: nor $30, $31, $31");
				$display("Expected result: $30 <-0x%h", ~(uut.RF32.RF[rs] | uut.RF32.RF[rt]));
				$display("Actual Result: $%d = 0x%h", rd, uut.RF32.RF[rd]);
			end
		$display("");
		//Case 2 SLT CASE
		$display("");
		@(posedge clk)
			begin
				//set values according to the given instruction and the Control Unit output
				RegDst					= 1'b1; //rd determines dest reg
				ALUSrc					= 1'b0; //pass register val to ALU
				ALUOp						= 2'b10; //RType Instruction
				RegWrite					= 1'b1;//Write data to register
				MemtoReg					= 1'b0;//pass alu result to regfile
				Instruction[25:21]	= 5'b11111;//rs = 31
				Instruction[20:16]	= 5'b11110;//rt = 30
				Instruction[15:11]	= 5'b11101;//rd = 29
				Instruction[5:0]		= 6'b101010;//function code val for slt
			end
		@(negedge clk)
			begin
				#1;
				$display("Test case 2: slt $29, $31, $30");
				$display("Expected result: $29 <-0x%h", (uut.RF32.RF[rs] < uut.RF32.RF[rt]));
				$display("Actual Result: $%d = 0x%h", rd, uut.RF32.RF[rd]);
			end
		$display("");
		//Case 3 OR CASE
		$display("");
		@(posedge clk)
			begin
			//set values according to the given instruction and the Control Unit output
				RegDst					= 1'b1; //rd determines dest reg
				ALUSrc					= 1'b0; //pass register val to ALU
				ALUOp						= 2'b10; //RType Instruction
				RegWrite					= 1'b1;//Write data to register
				MemtoReg					= 1'b0;//pass alu result to regfile
				Instruction[25:21]	= 5'b11110;//rs = 30
				Instruction[20:16]	= 5'b11111;//rt = 31
				Instruction[15:11]	= 5'b11100;//rd = 28
				Instruction[5:0]		= 6'b100101;//function code val for or
			end
		@(negedge clk)
			begin
				#1;
				$display("Test case 3: OR $28, $30, $31");
				$display("Expected result: $28 <-0x%h", (uut.RF32.RF[rs] | uut.RF32.RF[rt]));
				$display("Actual Result: $%d = 0x%h", rd, uut.RF32.RF[rd]);
			end
		$display("");
		//case 4 AND
		$display("");
		@(posedge clk)
			begin
			//set values according to the given instruction and the Control Unit output
				RegDst					= 1'b1; //rd determines dest reg
				ALUSrc					= 1'b0; //pass register val to ALU
				ALUOp						= 2'b10; //RType Instruction
				RegWrite					= 1'b1;//Write data to register
				MemtoReg					= 1'b0;//pass alu result to regfile
				Instruction[25:21]	= 5'b11100;//rs = 28
				Instruction[20:16]	= 5'b11101;//rt = 29
				Instruction[15:11]	= 5'b11011;//rd = 27
				Instruction[5:0]		= 6'b100100;//function code val for and
			end
		@(negedge clk)
			begin
				#1;
				$display("Test case 4: AND $27, $28, $29");
				$display("Expected result of 0x%h & 0x%h: $27 <-0x%h",uut.RF32.RF[rs], uut.RF32.RF[rt], (uut.RF32.RF[rs] & uut.RF32.RF[rt]));
				$display("Actual Result: $%d = 0x%h", rd, uut.RF32.RF[rd]);
			end
		$display("");
		//case 5 SUB
		$display("");
		@(posedge clk)
			begin
			//set values according to the given instruction and the Control Unit output
				RegDst					= 1'b1; //rd determines dest reg
				ALUSrc					= 1'b0; //pass register val to ALU
				ALUOp						= 2'b10; //RType Instruction
				RegWrite					= 1'b1;//Write data to register
				MemtoReg					= 1'b0;//pass alu result to regfile
				Instruction[25:21]	= 5'b11110;//rs = 30
				Instruction[20:16]	= 5'b11011;//rt = 27
				Instruction[15:11]	= 5'b11010;//rd = 26
				Instruction[5:0]		= 6'b100010;//function code val for or
			end
		@(negedge clk)
			begin
				#1;
				$display("Test case 5: SUB $26, $30, $27");
				$display("Expected result of 0x%h - 0x%h: $26 <-0x%h", uut.RF32.RF[rs], uut.RF32.RF[rt], (uut.RF32.RF[rs] - uut.RF32.RF[rt]));
				$display("Actual Result: $%d = 0x%h", rd, uut.RF32.RF[rd]);
			end
		$display("");
		//case 6 ADD
		$display("");
		@(posedge clk)
			begin
			//set values according to the given instruction and the Control Unit output
				RegDst					= 1'b1; //rd determines dest reg
				ALUSrc					= 1'b0; //pass register val to ALU
				ALUOp						= 2'b10; //RType Instruction
				RegWrite					= 1'b1;//Write data to register
				MemtoReg					= 1'b0;//pass alu result to regfile
				Instruction[25:21]	= 5'b11111;//rs = 31
				Instruction[20:16]	= 5'b11111;//rt = 31
				Instruction[15:11]	= 5'b11001;//rd = 25
				Instruction[5:0]		= 6'b100000;//function code val for or
			end
		@(negedge clk)
			begin
				#1;
				$display("Test case 6: ADD $25, $31, $31");
				$display("Expected result of 0x%h + 0x%h: $25 <-0x%h", uut.RF32.RF[rs], uut.RF32.RF[rt], (uut.RF32.RF[rs] + uut.RF32.RF[rt]));
				$display("Actual Result: $%d = 0x%h", rd, uut.RF32.RF[rd]);
			end
			//END R TYPE TEST CASES
		$display("");
		$display("--------------------------Test I-Type Memory Access Instructions------------------------------");
		$display("");
		//START I TYPE TEST CASES
		
		//case 7 LW
		@(posedge clk)
			begin
			//set values according to the given instruction and the Control Unit output
				RegDst					= 1'b0; //rd determines dest reg
				ALUSrc					= 1'b1; //pass register val to ALU
				ALUOp						= 2'b00; //IType Memory Instruction
				RegWrite					= 1'b1;//Write data to register
				MemtoReg					= 1'b1;//pass alu result to regfile
				Data_from_RAM			= 32'h12341234;
				Instruction[25:21]	= 5'b00000;//rs = 0
				Instruction[20:16]	= 5'b11000;//rt = 24
				Instruction[15:0]		= 16'h0004;//imm = 4
			end
		@(negedge clk)
			begin
				#1;
				$display("Test case 7: lw $24, 4($0) Data_From_RAM = 0x12341234");
				$display("Expected Results: ");
				$display("\tRAM_Address = 0x00000004");
				$display("\t$24 <- 0x%h", Data_from_RAM);
				$display("Actual Result: ");
				$display("\tRAM_Address = %h", RAM_Address);
				$display("\t$%d <- 0x%h", rt, uut.RF32.RF[rt]);
			end
		$display("");
		//case 8 SW
		$display("");
		@(posedge clk)
			begin
			//set values according to the given instruction and the Control Unit output
				RegDst					= 1'bX; //rd determines dest reg
				ALUSrc					= 1'b1; //pass register val to ALU
				ALUOp						= 2'b00; //IType memory Instruction
				RegWrite					= 1'b0;//Write data to register
				MemtoReg					= 1'bX;//pass alu result to regfile
				Instruction[25:21]	= 5'b11000;//rs = 24
				Instruction[20:16]	= 5'b11111;//rt = 31
				Instruction[15:0]		= 16'h000C;//imm = 4
			end
		@(negedge clk)
			begin 
				#1;
				#1;
				$display("Test case 8: sw $31, 12($24)");
				$display("Expected Results: ");
				$display("\tRAM_Address = 0x12341240");
				$display("\tData_to_RAM = 0x%h", Data_to_RAM);
				$display("Actual Result: ");
				$display("\tRAM_Address = 0x%h", RAM_Address);
				$display("\tData_to_RAM = 0x%h", Data_to_RAM);
			end
		//case 9 BEQ
		$display("");
		$display("--------------------------Test I-Type BEQ Instruction------------------------------");
		$display("");
		@(posedge clk)
			begin
			//set values according to the given instruction and the Control Unit output
				RegDst					= 1'bX; //rd determines dest reg
				ALUSrc					= 1'b0; //pass register val to ALU
				ALUOp						= 2'b01; //IType beq Instruction
				RegWrite					= 1'b0;//Write data to register
				MemtoReg					= 1'bX;//pass alu result to regfile
				Instruction[25:21]	= 5'b11000;//rs = 24
				Instruction[20:16]	= 5'b11000;//rt = 24
				Instruction[15:0]		= 16'h0003;//imm = 3
			end
		@(negedge clk)
			begin
				#1;
				#1;
				$display("Test case 9: beq $24, $24, 0x0003");
				$display("Expected Results: ");
				$display("\tZero = 1");
				$display("\tALU_Result = %h", RAM_Address);
				$display("Actual Result: ");
				$display("\tZero = %d", Zero);
				$display("\tALU_Result = %h", RAM_Address);
			end
		$display("");
		#100
		$stop;
	end
      
endmodule

