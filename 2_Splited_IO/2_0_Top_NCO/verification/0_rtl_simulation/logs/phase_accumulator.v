//      // verilator_coverage annotation
        module phase_accumulator (
 045281 	input 			clk,
 000159 	input			En,
%000008 	input 	[19:0] 	FCW,
 004960 	output 			Vld,
 002680 	output 	reg [1:0]	Aout,
 000248 	output 	reg		ISout
        );
        	// Rdy_source (enable ring counter) ---------------
        	integer i;
 004960     reg     [6:0]   RdyCtl;
 022641 	always @(posedge clk) begin
 016960 		if(!En) RdyCtl <= 7'b0100000;
 016960 		else begin //activate
 016960 			RdyCtl[0] <= RdyCtl[6];
 101760 			for (i=0; i<6; i=i+1)
 101760 				RdyCtl[i+1] <= RdyCtl[i];
        		end	
        	end 
        	assign Vld = RdyCtl[6];
        	
        	// Accumulator & Quadrant Modification ------------
 000248 	reg [19:0] acc_reg;
 000240 	reg [11:0] Atmp;
        	
 022641 	always @(posedge clk) begin
 016960 		if (!En) begin
 005681 			acc_reg <= 20'd0;
 005681 			Atmp <= 12'd0;
        		end
 016960 		else begin
 014480 			if (RdyCtl[6]) begin
        				// Accumulator 
 002480 				acc_reg <= acc_reg + FCW; 
        				
        				// Quadrant Modification
 000188 				if 		(acc_reg[19:18] == 2'b01) 
 000188 					Atmp <= {2'b11, acc_reg[17:8]}; // 2->4 plane
 002104 				else if (acc_reg[19:18] == 2'b10) 
 000188 					Atmp <= {2'b00, acc_reg[17:8]}; // 3->1 plane
        				else 
 002104 					Atmp <= acc_reg[19:8];
        			end
        		end
        	end
        	
        	//Invert Sign ------------------------------------
 022641 	always @(posedge clk) begin
 014560 		if (RdyCtl[5]) begin
 007705 			if (acc_reg[19]^acc_reg[18]) ISout <= 1;
 007705 			else ISout <= 0;
        		end
        	end
        
        	// Xin & Xout ------------------------------------
 022642 	always @* begin
 002480 		if		(RdyCtl[0])		Aout = Atmp[1:0];
 002400 		else if (RdyCtl[1]) 	Aout = Atmp[3:2];
 002400 		else if (RdyCtl[2]) 	Aout = Atmp[5:4];
 002400 		else if (RdyCtl[3]) 	Aout = Atmp[7:6];
 002400 		else if (RdyCtl[4]) 	Aout = Atmp[9:8];
 008081 		else if (RdyCtl[5]) 	Aout = Atmp[11:10];
 002481 		else 					Aout = 2'bxx;
        	end
        	
        endmodule
        
