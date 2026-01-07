module output_terminal(
	//vdd vss
	input 			clk,
/* verilator coverage_off */ 
	input			selXY, 	//1: X, 0: Y
	input			selSign,//1: unsigned 0: signed
/* verilator coverage_on */ 
	input 	[1:0] 	Xin,
	input 	[1:0] 	Yin,
	output 	[11:0] 	Dout,
	input			Rdy,
	output			Vld,
	input			ISin
	//total 2+21pin
);
	// Load Control ------------------------------------------------------
	integer i;
    reg     [6:0]   LoadCtl;
    always @(posedge clk)
    begin
        LoadCtl[0] <= Rdy;
        for (i=0; i<6; i=i+1)
            LoadCtl[i+1] <= LoadCtl[i];
    end
	assign Vld = LoadCtl[6];	
	
	reg ISreg;
	always @(posedge clk) if(LoadCtl[6]) ISreg <= ISin;    
	
	// Loading Xin, Yin --------------------------------------------------
	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
	
	always @(posedge clk) begin
        if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; end
        else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; end
		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; end
        else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; end
		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; end
        else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; end
    end
	
	// selSign ------------------------------------------------------
/* verilator coverage_off */ 
	reg [11:0] bias;
/* verilator coverage_on */ 
	always@* begin
		if(selSign) bias = 12'h800;
		else bias = 12'h000;
	end
	
	// Invert Sign --------------------------------------------------
	wire [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
	wire [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
	reg  [11:0] Xcalc, Ycalc;
	always@(posedge clk) begin
		if(LoadCtl[6]) begin
			if(ISreg) begin
				Xcalc <= ~Xin12b + 1 + bias;
				Ycalc <= ~Yin12b + 1 + bias;
			end
			else begin
				Xcalc <= Xin12b + bias;
				Ycalc <= Yin12b + bias;
			end
		end
	end
	
	//output select ------------------------------------------------------
	assign Dout = (selXY) ? Xcalc : Ycalc;
	
endmodule
