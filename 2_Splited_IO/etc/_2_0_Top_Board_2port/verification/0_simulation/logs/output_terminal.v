//      // verilator_coverage annotation
        module output_terminal(
        	//vdd vss
 117441665 	input 			clk,
%000007 	input			selXY, 	//1: X, 0: Y
%000003 	input			selSign,//1: unsigned 0: signed
 29974816 	input 	[1:0] 	Xin,
 29515948 	input 	[1:0] 	Yin,
 004265 	output 	[11:0] 	Dout,
 16777375 	input			Rdy,
 16777373 	output			Vld,
 000032 	input			ISin
        	//total 2+21pin
        );
        	// Load Control ------------------------------------------------------
        	integer i;
 16777374     reg     [6:0]   LoadCtl;
 58720833     always @(posedge clk)
 58720833     begin
 58720833         LoadCtl[0] <= Rdy;
 352324998         for (i=0; i<6; i=i+1)
 352324998             LoadCtl[i+1] <= LoadCtl[i];
            end
        	assign Vld = LoadCtl[6];	
        	
 000032 	reg ISreg;
 58720833 	always @(posedge clk) if(LoadCtl[6]) ISreg <= ISin;    
        	
        	// Loading Xin, Yin --------------------------------------------------
 004239 	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
 004289 	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
        	
 58720833 	always @(posedge clk) begin
 8388687         if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; end
 8388687         else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; end
 8388680 		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; end
 8388680         else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; end
 8388680 		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; end
 8388739         else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; end
            end
        	
        	// selSign ------------------------------------------------------
%000003 	reg [11:0] bias;
 117441681 	always@* begin
 58720844 		if(selSign) bias = 12'h800;
 58720844 		else bias = 12'h000;
        	end
        	
        	// Invert Sign --------------------------------------------------
 004239 	wire [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
 004289 	wire [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
 004271 	reg  [11:0] Xcalc, Ycalc;
 58720833 	always@(posedge clk) begin
 50332147 		if(LoadCtl[6]) begin
 4194382 			if(ISreg) begin
 4194304 				Xcalc <= ~Xin12b + 1 + bias;
 4194304 				Ycalc <= ~Yin12b + 1 + bias;
        			end
 4194382 			else begin
 4194382 				Xcalc <= Xin12b + bias;
 4194382 				Ycalc <= Yin12b + bias;
        			end
        		end
        	end
        	
        	//output select ------------------------------------------------------
 88081262 	assign Dout = (selXY) ? Xcalc : Ycalc;
        	
        endmodule
        
