//      // verilator_coverage annotation
        module output_terminal(
        	//vdd vss
 004075 	input 			clk,
%000001 	input			selXY, 	//1: X, 0: Y
%000004 	input			selSign,//1: unsigned 0: signed
 001033 	input 	[1:0] 	Xin,
 001013 	input 	[1:0] 	Yin,
 000166 	output 	[11:0] 	Dout,
 000582 	input			Rdy,
 000581 	output			Vld,
 001002 	input			ISin
        	//total 2+21pin
        );
        	// Load Control ------------------------------------------------------
        	integer i;
 000582     reg     [6:0]   LoadCtl;
 002038     always @(posedge clk)
 002038     begin
 002038         LoadCtl[0] <= Rdy;
 012228         for (i=0; i<6; i=i+1)
 012228             LoadCtl[i+1] <= LoadCtl[i];
            end
        	assign Vld = LoadCtl[6];	
        	
 000151 	reg ISreg;
 002038 	always @(posedge clk) if(LoadCtl[6]) ISreg <= ISin;    
        	
        	// Loading Xin, Yin --------------------------------------------------
 000163 	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
 000154 	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
        	
 002038 	always @(posedge clk) begin
 000291         if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; end
 000291         else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; end
 000291 		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; end
 000291         else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; end
 000291 		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; end
 000292         else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; end
            end
        	
        	// selSign ------------------------------------------------------
%000004 	reg [11:0] bias;
 006047 	always@* begin
 003027 		if(selSign) bias = 12'h800;
 003027 		else bias = 12'h000;
        	end
        	
        	// Invert Sign --------------------------------------------------
 000163 	wire [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
 000154 	wire [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
 000158 	reg  [11:0] Xcalc, Ycalc;
 002038 	always@(posedge clk) begin
 001748 		if(LoadCtl[6]) begin
 000151 			if(ISreg) begin
 000139 				Xcalc <= ~Xin12b + 1 + bias;
 000139 				Ycalc <= ~Yin12b + 1 + bias;
        			end
 000151 			else begin
 000151 				Xcalc <= Xin12b + bias;
 000151 				Ycalc <= Yin12b + bias;
        			end
        		end
        	end
        	
        	//output select ------------------------------------------------------
 004047 	assign Dout = (selXY) ? Xcalc : Ycalc;
        	
        endmodule
        
