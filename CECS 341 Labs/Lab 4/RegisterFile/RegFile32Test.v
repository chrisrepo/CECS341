`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
/* 
	Chris Repanich
	CECS 341
	010696671
	
	Lab 4 Register File Test Module
*/
////////////////////////////////////////////////////////////////////////////////

module RegFile32Test;

	// Inputs
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [31:0] WriteData;
	reg clock;
	reg RegWrite;

	// Outputs
	wire [31:0] Data1;
	wire [31:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	RegFile32 uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.clock(clock), 
		.RegWrite(RegWrite), 
		.Data1(Data1), 
		.Data2(Data2)
	);

	integer i;
	
	always #5 clock = ~clock;
	
	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		clock = 0;
		RegWrite = 1;

		// Wait 100 ns for global reset to finish
		#100;
		$display("Writing to registers");
		$display("--------------------");
		
		for (i=0; i< 32; i = i + 1)
		begin
			@(negedge clock)
			begin
				WriteData = $random;
				WriteReg = i;
			end
			@(posedge clock)
				#0 $display("$%d <- 0x%h", WriteReg, WriteData);
		end
		#10;
		RegWrite = 0;
        
		// Add stimulus here
		$display("Reading from registers");
		$display("----------------------");
		
		for (i = 0; i< 32; i = i + 2)
		begin 
			@(negedge clock)
			begin
				Read1 = i;
				#0 $display("$%d <- 0x%h", Read1, Data1);
				Read2 = i+1;
				#0 $display("$%d <- 0x%h", Read2, Data2);
				i = i+2;
			end
			@(posedge clock)
			begin
				Read1 = i;
				#0 $display("$%d <- 0x%h", Read1, Data1);
				Read2 = i+1;
				#0 $display("$%d <- 0x%h", Read2, Data2);
			end
		end
		#10;
		$stop; 
	end
endmodule

