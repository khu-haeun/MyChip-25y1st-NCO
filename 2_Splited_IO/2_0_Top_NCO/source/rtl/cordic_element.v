module cordic_element ( 
	//timing issue
	input 			clk,
	input 	[1:0] 	Xin,
	output 	[1:0] 	Xout,
	input 	[1:0] 	Yin,
	output 	[1:0] 	Yout,
	input 	[1:0]	Ain,
	output 	[1:0]	Aout, //13
	input 			ISin, 
	output	reg		ISout, //15
/* verilator coverage_off */ 
	input	[2:0]	Stg, //20
/* verilator coverage_on */ 
	input 			Rdy, 
	output 			Vld //24
);
/* verilator coverage_off */ 
	reg signed [11:0] oneOverK = 12'd1242;
	reg signed [11:0] atan0 = 12'd511;//44.96 degree
	reg signed [11:0] atan1 = 12'd301;//26.50 degree
	reg signed [11:0] atan2 = 12'd159;//14.02 degree
	reg signed [11:0] atan3 = 12'd80; // 7.07 degree
	reg signed [11:0] atan4 = 12'd40; // 3.56 degree
	reg signed [11:0] atan5 = 12'd19; // 1.71 degree
	reg signed [11:0] atan6 = 12'd9;  // 0.83 degree
	reg signed [11:0] atan7 = 12'd4;  // 0.39 degree
/* verilator coverage_on */ 
	
	// Load Control -----------------------------------------------------------
	integer i;
    reg     [6:0]   LoadCtl;
    always @(posedge clk)
    begin
        LoadCtl[0] <= Rdy;
        for (i=0; i<6; i=i+1)
            LoadCtl[i+1] <= LoadCtl[i];
    end
	assign Vld = LoadCtl[6];
	
	// Invert Sign ------------------------------------------------------------
	always @(posedge clk) if(LoadCtl[6]) ISout <= ISin;    
	
	// Loading Xin, Yin, Ain --------------------------------------------------
	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
	reg [1:0] Ain5, Ain4, Ain3, Ain2, Ain1, Ain0;
	
	always @(posedge clk) begin
        if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; Ain0 <= Ain; end
        else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; Ain1 <= Ain; end
		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; Ain2 <= Ain; end
        else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; Ain3 <= Ain; end
		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; Ain4 <= Ain; end
        else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; Ain5 <= Ain; end
    end
	
	// atan mapping ----------------------------------------------------------
/* verilator coverage_off */ 
	reg signed [11:0] atan;
	
	always@* begin
		case(Stg)
			3'd0:atan = atan0;
			3'd1:atan = atan1;
			3'd2:atan = atan2;
			3'd3:atan = atan3;
			3'd4:atan = atan4;
			3'd5:atan = atan5;
			3'd6:atan = atan6;
			3'd7:atan = atan7;
		endcase
	end
/* verilator coverage_on */ 
	
	// cordic element(shift & add/sub) ---------------------------------------
	wire signed [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
	wire signed [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
	wire signed [11:0] Ain12b = {Ain5, Ain4, Ain3, Ain2, Ain1, Ain0};

	reg signed [11:0] Xcalc, Ycalc, Acalc;
	always@(posedge clk) begin
		if (LoadCtl[6]) begin
			if(Stg != 3'd0) begin
				if(Ain12b[11] == 0) begin //postive angle
					Xcalc <= Xin12b - ( Yin12b >>> Stg );
					Ycalc <= Yin12b + ( Xin12b >>> Stg );
					Acalc <= Ain12b - atan;
				end
				else begin
					Xcalc <= Xin12b + ( Yin12b >>> Stg );
					Ycalc <= Yin12b - ( Xin12b >>> Stg );
					Acalc <= Ain12b + atan;
				end
			end
			else begin // Stg == 0
				if(Ain12b[11] == 0) begin //postive angle
					Xcalc <= oneOverK;
					Ycalc <= oneOverK;
					Acalc <= Ain12b - atan;
				end
				else begin
					Xcalc <= oneOverK;
					Ycalc <= -oneOverK;
					Acalc <= Ain12b + atan;
				end
			end
		end
	end
	
	// X, Y, A Output -------------------------------------------------------
	reg [1:0] X_, Y_, A_;
	always@* begin
		if 		(LoadCtl[0]) begin X_ = Xcalc[1:0]  ; Y_ = Ycalc[1:0]  ; A_ = Acalc[1:0]  ; end
		else if (LoadCtl[1]) begin X_ = Xcalc[3:2]  ; Y_ = Ycalc[3:2]  ; A_ = Acalc[3:2]  ; end
		else if (LoadCtl[2]) begin X_ = Xcalc[5:4]  ; Y_ = Ycalc[5:4]  ; A_ = Acalc[5:4]  ; end
		else if (LoadCtl[3]) begin X_ = Xcalc[7:6]  ; Y_ = Ycalc[7:6]  ; A_ = Acalc[7:6]  ; end
		else if (LoadCtl[4]) begin X_ = Xcalc[9:8]  ; Y_ = Ycalc[9:8]  ; A_ = Acalc[9:8]  ; end
		else if (LoadCtl[5]) begin X_ = Xcalc[11:10]; Y_ = Ycalc[11:10]; A_ = Acalc[11:10]; end
		else 				 begin X_ = 2'bxx		; Y_ = 2'bxx	   ; A_ = 2'bxx		  ; end			 
	end
	
	assign Xout = X_;
	assign Yout = Y_;
	assign Aout = A_;
	
endmodule
