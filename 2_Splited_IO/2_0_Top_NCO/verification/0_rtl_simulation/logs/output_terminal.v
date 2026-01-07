//      // verilator_coverage annotation
        module output_terminal(
        	//vdd vss
 173281 	input 			clk,
%000003 	input			selXY, 	//1: X, 0: Y
%000001 	input			selSign,//1: unsigned 0: signed
 037899 	input 	[1:0] 	Xin,
 031377 	input 	[1:0] 	Yin,
 003216 	output 	[11:0] 	Dout,
 023184 	input			Rdy,
 023182 	output			Vld,
 001161 	input			ISin
        	//total 2+21pin
        );
        	// Load Control ------------------------------------------------------
        	integer i;
 023184     reg     [6:0]   LoadCtl;
 086641     always @(posedge clk)
 086641     begin
 086641         LoadCtl[0] <= Rdy;
 519846         for (i=0; i<6; i=i+1)
 519846             LoadCtl[i+1] <= LoadCtl[i];
            end
        	assign Vld = LoadCtl[6];	
        	
 001160 	reg ISreg;
 086641 	always @(posedge clk) if(LoadCtl[6]) ISreg <= ISin;    
        	
        	// Loading Xin, Yin --------------------------------------------------
 002744 	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
 003231 	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
        	
 086641 	always @(posedge clk) begin
 011592         if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; end
 011592         else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; end
 011591 		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; end
 011591         else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; end
 011591 		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; end
 017093         else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; end
            end
        	
        	// selSign ------------------------------------------------------
        /* verilator coverage_off */ 
        	reg [11:0] bias;
        /* verilator coverage_on */ 
 173441 	always@* begin
 086864 		if(selSign) bias = 12'h800;
 086864 		else bias = 12'h000;
        	end
        	
        	// Invert Sign --------------------------------------------------
 002744 	wire [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
 003231 	wire [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
 003560 	reg  [11:0] Xcalc, Ycalc;
 086641 	always@(posedge clk) begin
 075050 		if(LoadCtl[6]) begin
 009243 			if(ISreg) begin
 002348 				Xcalc <= ~Xin12b + 1 + bias;
 002348 				Ycalc <= ~Yin12b + 1 + bias;
        			end
 009243 			else begin
 009243 				Xcalc <= Xin12b + bias;
 009243 				Ycalc <= Yin12b + bias;
        			end
        		end
        	end
        	
        	//output select ------------------------------------------------------
 130256 	assign Dout = (selXY) ? Xcalc : Ycalc;
        	
        endmodule
        
