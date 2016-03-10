`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

module Mux2to1_Tester;

	// Inputs
	reg Sel;
	reg [31:0] DataIn0;
	reg [31:0] DataIn1;

	// Outputs
	wire [31:0] DataOut;

	// Instantiate the Unit Under Test (UUT)
	Mux2to1_32bit uut (
		.Sel(Sel), 
		.DataIn0(DataIn0), 
		.DataIn1(DataIn1), 
		.DataOut(DataOut)
	);

	initial begin
		// Initialize Inputs (first test case)
		Sel = 0;
		DataIn0 = 32'h10696671; //random value (student ID missing first digit)
		DataIn1 = 32'hABABCDCD; //random value
		
		#10; //10 unit time delay
		
		//Test Case 2
		Sel = 1;

		#10;
		
		//Test Case 3
		Sel = 0;
		DataIn0 = 32'h12345678; //random value (student ID missing first digit)
		DataIn1 = 32'h87654321; //random value


		#10;
		
		Sel = 1;
		
		#10;
		
		$stop;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

