//      // verilator_coverage annotation
        module phase_accumulator (
 117441665 	input 			clk,
 000015 	input			En,
%000001 	input 	[19:0] 	FCW,
 16777391 	output 			Vld,
 29360128 	output 	reg [1:0]	Aout,
 000032 	output 	reg		ISout
        );
        	// Rdy_source (enable ring counter) ---------------
        	integer i;
 16777392     reg     [6:0]   RdyCtl;
 58720833 	always @(posedge clk) begin
~58720824 		if(!En) RdyCtl <= 7'b0100000;
 58720824 		else begin //activate
 58720824 			RdyCtl[0] <= RdyCtl[6];
 352324944 			for (i=0; i<6; i=i+1)
 352324944 				RdyCtl[i+1] <= RdyCtl[i];
        		end	
        	end 
        	assign Vld = RdyCtl[6];
        	
        	// Accumulator & Quadrant Modification ------------
 8388688 	reg [19:0] acc_reg;
 065536 	reg [11:0] Atmp;
        	
 58720833 	always @(posedge clk) begin
~58720824 		if (!En) begin
%000009 			acc_reg <= 20'd0;
%000009 			Atmp <= 12'd0;
        		end
 58720824 		else begin
 50332136 			if (RdyCtl[6]) begin
        				// Accumulator 
 8388688 				acc_reg <= acc_reg + FCW; 
        				
        				// Quadrant Modification
 2097152 				if 		(acc_reg[19:18] == 2'b01) 
 2097152 					Atmp <= {2'b11, acc_reg[17:8]}; // 2->4 plane
 4194384 				else if (acc_reg[19:18] == 2'b10) 
 2097152 					Atmp <= {2'b00, acc_reg[17:8]}; // 3->1 plane
        				else 
 4194384 					Atmp <= acc_reg[19:8];
        			end
        		end
        	end
        	
        	//Invert Sign ------------------------------------
 58720833 	always @(posedge clk) begin
 50332136 		if (RdyCtl[5]) begin
 4194393 			if (acc_reg[19]^acc_reg[18]) ISout <= 1;
 4194393 			else ISout <= 0;
        		end
        	end
        
        	// Xin & Xout ------------------------------------
 58720834 	always @* begin
 8388688 		if		(RdyCtl[0])		Aout = Atmp[1:0];
 8388688 		else if (RdyCtl[1]) 	Aout = Atmp[3:2];
 8388688 		else if (RdyCtl[2]) 	Aout = Atmp[5:4];
 8388688 		else if (RdyCtl[3]) 	Aout = Atmp[7:6];
 8388688 		else if (RdyCtl[4]) 	Aout = Atmp[9:8];
 8388697 		else if (RdyCtl[5]) 	Aout = Atmp[11:10];
 8388697 		else 					Aout = 2'bxx;
        	end
        	
        endmodule
        
