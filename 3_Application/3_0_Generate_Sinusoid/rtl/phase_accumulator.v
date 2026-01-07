module phase_accumulator (
	input 			clk,
	input			En,
	input 	[19:0] 	FCW,
	output 			Vld,
	output 	reg [1:0]	Aout,
	output 	reg		ISout
);
	// Rdy_source (enable ring counter) ---------------
	integer i;
    reg     [6:0]   RdyCtl;
	always @(posedge clk) begin
		if(!En) RdyCtl <= 7'b0100000;
		else begin //activate
			RdyCtl[0] <= RdyCtl[6];
			for (i=0; i<6; i=i+1)
				RdyCtl[i+1] <= RdyCtl[i];
		end	
	end 
	assign Vld = RdyCtl[6];
	
	// Accumulator & Quadrant Modification ------------
	reg [19:0] acc_reg;
	reg [11:0] Atmp;
	
	always @(posedge clk) begin
		if (!En) begin
			acc_reg <= 20'd0;
			Atmp <= 12'd0;
		end
		else begin
			if (RdyCtl[6]) begin
				// Accumulator 
				acc_reg <= acc_reg + FCW; 
				
				// Quadrant Modification
				if 		(acc_reg[19:18] == 2'b01) 
					Atmp <= {2'b11, acc_reg[17:8]}; // 2->4 plane
				else if (acc_reg[19:18] == 2'b10) 
					Atmp <= {2'b00, acc_reg[17:8]}; // 3->1 plane
				else 
					Atmp <= acc_reg[19:8];
			end
		end
	end
	
	//Invert Sign ------------------------------------
	always @(posedge clk) begin
		if (RdyCtl[5]) begin
			if (acc_reg[19]^acc_reg[18]) ISout <= 1;
			else ISout <= 0;
		end
	end

	// Xin & Xout ------------------------------------
	always @* begin
		if		(RdyCtl[0])		Aout = Atmp[1:0];
		else if (RdyCtl[1]) 	Aout = Atmp[3:2];
		else if (RdyCtl[2]) 	Aout = Atmp[5:4];
		else if (RdyCtl[3]) 	Aout = Atmp[7:6];
		else if (RdyCtl[4]) 	Aout = Atmp[9:8];
		else if (RdyCtl[5]) 	Aout = Atmp[11:10];
		else 					Aout = 2'bxx;
	end
	
endmodule
