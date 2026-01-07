//      // verilator_coverage annotation
        module phase_accumulator (
 034222 	input 			clk,
%000002 	input			En,
 000030 	input 	[19:0] 	FCW,
 004848 	output 			Vld,
 006918 	output 	reg [1:0]	Aout,
 000344 	output 	reg		ISout
        );
        	// Rdy_source (enable ring counter) ---------------
        	integer i;
 004850     reg     [6:0]   RdyCtl;
 017112 	always @(posedge clk) begin
 016968 		if(!En) RdyCtl <= 7'b0100000;
 016968 		else begin //activate
 016968 			RdyCtl[0] <= RdyCtl[6];
 101808 			for (i=0; i<6; i=i+1)
 101808 				RdyCtl[i+1] <= RdyCtl[i];
        		end	
        	end 
        	assign Vld = RdyCtl[6];
        	
        	// Accumulator & Quadrant Modification ------------
 000344 	reg [19:0] acc_reg;
 000234 	reg [11:0] Atmp;
        	
 017112 	always @(posedge clk) begin
 016968 		if (!En) begin
 000144 			acc_reg <= 20'd0;
 000144 			Atmp <= 12'd0;
        		end
 016968 		else begin
 014544 			if (RdyCtl[6]) begin
        				// Accumulator 
 002424 				acc_reg <= acc_reg + FCW; 
        				
        				// Quadrant Modification
 000230 				if 		(acc_reg[19:18] == 2'b01) 
 000230 					Atmp <= {2'b11, acc_reg[17:8]}; // 2->4 plane
 001376 				else if (acc_reg[19:18] == 2'b10) 
 000818 					Atmp <= {2'b00, acc_reg[17:8]}; // 3->1 plane
        				else 
 001376 					Atmp <= acc_reg[19:8];
        			end
        		end
        	end
        	
        	//Invert Sign ------------------------------------
 017112 	always @(posedge clk) begin
 014546 		if (RdyCtl[5]) begin
 001518 			if (acc_reg[19]^acc_reg[18]) ISout <= 1;
 001518 			else ISout <= 0;
        		end
        	end
        
        	// Xin & Xout ------------------------------------
 017114 	always @* begin
 002424 		if		(RdyCtl[0])		Aout = Atmp[1:0];
 002424 		else if (RdyCtl[1]) 	Aout = Atmp[3:2];
 002424 		else if (RdyCtl[2]) 	Aout = Atmp[5:4];
 002424 		else if (RdyCtl[3]) 	Aout = Atmp[7:6];
 002424 		else if (RdyCtl[4]) 	Aout = Atmp[9:8];
 002568 		else if (RdyCtl[5]) 	Aout = Atmp[11:10];
 002426 		else 					Aout = 2'bxx;
        	end
        	
        endmodule
        
