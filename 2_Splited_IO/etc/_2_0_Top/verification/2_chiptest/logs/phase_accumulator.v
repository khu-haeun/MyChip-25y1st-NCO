//      // verilator_coverage annotation
        module phase_accumulator (
 027682 	input 			clk,
 000158 	input			En,
%000008 	input 	[19:0] 	FCW,
 004000 	output 			Vld,
 001984 	output 	reg [1:0]	Aout,
 000200 	output 	reg		ISout
        );
        	// Rdy_source (enable ring counter) ---------------
        	integer i;
 004000     reg     [6:0]   RdyCtl;
 013842 	always @(posedge clk) begin
 013760 		if(!En) RdyCtl <= 7'b0100000;
 013760 		else begin //activate
 013760 			RdyCtl[0] <= RdyCtl[6];
 082560 			for (i=0; i<6; i=i+1)
 082560 				RdyCtl[i+1] <= RdyCtl[i];
        		end	
        	end 
        	assign Vld = RdyCtl[6];
        	
        	// Accumulator & Quadrant Modification ------------
 000200 	reg [19:0] acc_reg;
 000192 	reg [11:0] Atmp;
        	
 013842 	always @(posedge clk) begin
 013760 		if (!En) begin
 000082 			acc_reg <= 20'd0;
 000082 			Atmp <= 12'd0;
        		end
 013760 		else begin
 011760 			if (RdyCtl[6]) begin
        				// Accumulator 
 002000 				acc_reg <= acc_reg + FCW; 
        				
        				// Quadrant Modification
 000148 				if 		(acc_reg[19:18] == 2'b01) 
 000148 					Atmp <= {2'b11, acc_reg[17:8]}; // 2->4 plane
 001704 				else if (acc_reg[19:18] == 2'b10) 
 000148 					Atmp <= {2'b00, acc_reg[17:8]}; // 3->1 plane
        				else 
 001704 					Atmp <= acc_reg[19:8];
        			end
        		end
        	end
        	
        	//Invert Sign ------------------------------------
 013842 	always @(posedge clk) begin
 011840 		if (RdyCtl[5]) begin
 001706 			if (acc_reg[19]^acc_reg[18]) ISout <= 1;
 001706 			else ISout <= 0;
        		end
        	end
        
        	// Xin & Xout ------------------------------------
 013844 	always @* begin
 002000 		if		(RdyCtl[0])		Aout = Atmp[1:0];
 002000 		else if (RdyCtl[1]) 	Aout = Atmp[3:2];
 002000 		else if (RdyCtl[2]) 	Aout = Atmp[5:4];
 001920 		else if (RdyCtl[3]) 	Aout = Atmp[7:6];
 001920 		else if (RdyCtl[4]) 	Aout = Atmp[9:8];
 002002 		else if (RdyCtl[5]) 	Aout = Atmp[11:10];
 002002 		else 					Aout = 2'bxx;
        	end
        	
        endmodule
        
