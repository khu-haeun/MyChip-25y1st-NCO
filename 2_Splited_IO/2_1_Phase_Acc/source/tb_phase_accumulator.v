module tb_phase_accumulator();
	reg clk;
	reg En;
	reg [19:0]FCW;
	wire Vld;
	wire [1:0] Aout;
	wire ISout;
	
	phase_accumulator dut(
		.clk(clk),
		.En(En),
		.FCW(FCW),
		.Vld(Vld),
		.Aout(Aout),
		.ISout(ISout)
	);
	
	always #10 clk = ~clk;
	
	initial begin
		$dumpfile("pa_test.vcd"); 
		$dumpvars(0, dut);
		
		clk <= 0;
		FCW <= 0;//5
		//deactivate
		En <= 0;
		repeat (2) @(posedge clk);
		
		//activate
		#10
		FCW <= 20'h80000;
		En <= 1;
		repeat (5) @(posedge clk);
		
		#10
		repeat (5) @(posedge clk);
		
		repeat (1000) @(posedge clk);
		$finish;
	end
	
endmodule