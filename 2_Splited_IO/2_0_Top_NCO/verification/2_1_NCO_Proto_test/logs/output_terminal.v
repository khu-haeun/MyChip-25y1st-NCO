//      // verilator_coverage annotation
        module output_terminal(
        	//vdd vss
 034222 	input 			clk,
        /* verilator coverage_off */
        	input			selXY, 	//1: X, 0: Y
        	input			selSign,//1: unsigned 0: signed
        /* verilator coverage_on */ 
 008376 	input 	[1:0] 	Xin,
 007648 	input 	[1:0] 	Yin,
 000734 	output 	[11:0] 	Dout,
 004816 	input			Rdy,
 004812 	output			Vld,
 000330 	input			ISin
        	//total 2+21pin
        );
        	// Load Control ------------------------------------------------------
        	integer i;
 004816     reg     [6:0]   LoadCtl;
 017112     always @(posedge clk)
 017112     begin
 017112         LoadCtl[0] <= Rdy;
 102672         for (i=0; i<6; i=i+1)
 102672             LoadCtl[i+1] <= LoadCtl[i];
            end
        	assign Vld = LoadCtl[6];	
        	
 000328 	reg ISreg;
 017112 	always @(posedge clk) if(LoadCtl[6]) ISreg <= ISin;    
        	
        	// Loading Xin, Yin --------------------------------------------------
~000522 	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
 000490 	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
        	
 017112 	always @(posedge clk) begin
 002408         if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; end
 002408         else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; end
 002408 		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; end
 002408         else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; end
 002408 		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; end
 002666         else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; end
            end
        	
        	// selSign ------------------------------------------------------
        /* verilator coverage_off */ 
        	reg [11:0] bias;
        /* verilator coverage_on */ 
 034392 	always@* begin
 017340 		if(selSign) bias = 12'h800;
 017340 		else bias = 12'h000;
        	end
        	
        	// Invert Sign --------------------------------------------------
~000522 	wire [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
 000490 	wire [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
 000722 	reg  [11:0] Xcalc, Ycalc;
 017112 	always@(posedge clk) begin
 014706 		if(LoadCtl[6]) begin
 001366 			if(ISreg) begin
 001040 				Xcalc <= ~Xin12b + 1 + bias;
 001040 				Ycalc <= ~Yin12b + 1 + bias;
        			end
 001366 			else begin
 001366 				Xcalc <= Xin12b + bias;
 001366 				Ycalc <= Yin12b + bias;
        			end
        		end
        	end
        	
        	//output select ------------------------------------------------------
 025968 	assign Dout = (selXY) ? Xcalc : Ycalc;
        	
        endmodule
        
