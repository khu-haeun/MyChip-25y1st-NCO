module tb_nco();
	
	reg clk;
	reg En;
	reg [19:0]FCW;
	wire VldX,VldY;
	wire [11:0] Xout, Yout;
	
	
	nco dutX(
		.clk(clk),
		.En(En),
		.FCW(FCW),
		.selXY(1'b1),
		.selSign(1'b1),
		.Vld(VldX),
		.Dout(Xout)
	);
	
	nco dutY(
		.clk(clk),
		.En(En),
		.FCW(FCW),
		.selXY(1'b0),
		.selSign(1'b1),
		.Vld(VldY),
		.Dout(Yout)
	);

	always #10 clk = ~clk;
	
	initial begin
		$dumpfile("nco_test.vcd"); 
		$dumpvars(0, dutX);
		$dumpvars(0, dutY);
		
		clk <= 0;
		FCW <= 0;//5
		
		//deactivate
		En <= 0;
		repeat (2) @(posedge clk);
		
		//activate
		#10
		FCW <= 20'd4096;
		En <= 1;
		repeat (5) @(posedge clk);
		
		#10
		repeat (5) @(posedge clk);
		
		repeat (4000) @(posedge clk);
		$finish;
	end
	
endmodule