//      // verilator_coverage annotation
        module phase_accumulator (
 004327 	input 			clk,
 000041 	input			En,
%000003 	input 	[19:0] 	FCW,
 000630 	output 			Vld,
 000291 	output 	reg [1:0]	Aout,
 000044 	output 	reg		ISout
        );
        	// Rdy_source (enable ring counter) ---------------
        	integer i;
 000630     reg     [6:0]   RdyCtl;
 002164 	always @(posedge clk) begin
 002142 		if(!En) RdyCtl <= 7'b0100000;
 002142 		else begin //activate
 002142 			RdyCtl[0] <= RdyCtl[6];
 012852 			for (i=0; i<6; i=i+1)
 012852 				RdyCtl[i+1] <= RdyCtl[i];
        		end	
        	end 
        	assign Vld = RdyCtl[6];
        	
        	// Accumulator & Quadrant Modification ------------
 000044 	reg [19:0] acc_reg;
 000029 	reg [11:0] Atmp;
        	
 002164 	always @(posedge clk) begin
 002142 		if (!En) begin
 000022 			acc_reg <= 20'd0;
 000022 			Atmp <= 12'd0;
        		end
 002142 		else begin
 001827 			if (RdyCtl[6]) begin
        				// Accumulator 
 000315 				acc_reg <= acc_reg + FCW; 
        				
        				// Quadrant Modification
 000026 				if 		(acc_reg[19:18] == 2'b01) 
 000026 					Atmp <= {2'b11, acc_reg[17:8]}; // 2->4 plane
 000270 				else if (acc_reg[19:18] == 2'b10) 
 000019 					Atmp <= {2'b00, acc_reg[17:8]}; // 3->1 plane
        				else 
 000270 					Atmp <= acc_reg[19:8];
        			end
        		end
        	end
        	
        	//Invert Sign ------------------------------------
 002164 	always @(posedge clk) begin
 001848 		if (RdyCtl[5]) begin
 000271 			if (acc_reg[19]^acc_reg[18]) ISout <= 1;
 000271 			else ISout <= 0;
        		end
        	end
        
        	// Xin & Xout ------------------------------------
 002165 	always @* begin
 000315 		if		(RdyCtl[0])		Aout = Atmp[1:0];
 000315 		else if (RdyCtl[1]) 	Aout = Atmp[3:2];
 000315 		else if (RdyCtl[2]) 	Aout = Atmp[5:4];
 000294 		else if (RdyCtl[3]) 	Aout = Atmp[7:6];
 000294 		else if (RdyCtl[4]) 	Aout = Atmp[9:8];
 000316 		else if (RdyCtl[5]) 	Aout = Atmp[11:10];
 000316 		else 					Aout = 2'bxx;
        	end
        	
        endmodule
        
