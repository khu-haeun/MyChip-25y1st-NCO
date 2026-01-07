//      // verilator_coverage annotation
        module cordic_element ( 
        	//timing issue
 320034 	input 			clk,
 080094 	input 	[1:0] 	Xin,
 081960 	output 	[1:0] 	Xout,
 079930 	input 	[1:0] 	Yin,
 084250 	output 	[1:0] 	Yout,
 079908 	input 	[1:0]	Ain,
 080536 	output 	[1:0]	Aout, //13
 080010 	input 			ISin, 
 011608 	output	reg		ISout, //15
~000014 	input	[2:0]	Stg, //20
 045716 	input 			Rdy, 
 045712 	output 			Vld //24
        );
%000002 	reg signed [11:0] oneOverK = 12'd1242;
%000002 	reg signed [11:0] atan0 = 12'd511;//44.96 degree
%000002 	reg signed [11:0] atan1 = 12'd301;//26.50 degree
%000002 	reg signed [11:0] atan2 = 12'd159;//14.02 degree
%000002 	reg signed [11:0] atan3 = 12'd80; // 7.07 degree
%000002 	reg signed [11:0] atan4 = 12'd40; // 3.56 degree
%000002 	reg signed [11:0] atan5 = 12'd19; // 1.71 degree
%000002 	reg signed [11:0] atan6 = 12'd9;  // 0.83 degree
%000002 	reg signed [11:0] atan7 = 12'd4;  // 0.39 degree
        	
        	// Load Control -----------------------------------------------------------
        	integer i;
 045716     reg     [6:0]   LoadCtl;
 160018     always @(posedge clk)
 160018     begin
 160018         LoadCtl[0] <= Rdy;
 960108         for (i=0; i<6; i=i+1)
 960108             LoadCtl[i+1] <= LoadCtl[i];
            end
        	assign Vld = LoadCtl[6];
        	
        	// Invert Sign ------------------------------------------------------------
 160018 	always @(posedge clk) if(LoadCtl[6]) ISout <= ISin;    
        	
        	// Loading Xin, Yin, Ain --------------------------------------------------
 011664 	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
 011622 	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
 011586 	reg [1:0] Ain5, Ain4, Ain3, Ain2, Ain1, Ain0;
        	
 160018 	always @(posedge clk) begin
 022858         if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; Ain0 <= Ain; end
 022858         else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; Ain1 <= Ain; end
 022858 		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; Ain2 <= Ain; end
 022858         else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; Ain3 <= Ain; end
 022858 		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; Ain4 <= Ain; end
 022872         else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; Ain5 <= Ain; end
            end
        	
        	// atan mapping ----------------------------------------------------------
~000012 	reg signed [11:0] atan;
        	
 479188 	always@* begin
 479188 		case(Stg)
 059916 			3'd0:atan = atan0;
 059886 			3'd1:atan = atan1;
 059890 			3'd2:atan = atan2;
 059896 			3'd3:atan = atan3;
 059900 			3'd4:atan = atan4;
 059892 			3'd5:atan = atan5;
 059924 			3'd6:atan = atan6;
 059884 			3'd7:atan = atan7;
        		endcase
        	end
        	
        	// cordic element(shift & add/sub) ---------------------------------------
 011664 	wire signed [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
 011622 	wire signed [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
 011586 	wire signed [11:0] Ain12b = {Ain5, Ain4, Ain3, Ain2, Ain1, Ain0};
        
 011570 	reg signed [11:0] Xcalc, Ycalc, Acalc;
 160018 	always@(posedge clk) begin
 137162 		if (LoadCtl[6]) begin
 020002 			if(Stg != 3'd0) begin
 010042 				if(Ain12b[11] == 0) begin //postive angle
 009960 					Xcalc <= Xin12b - ( Yin12b >>> Stg );
 009960 					Ycalc <= Yin12b + ( Xin12b >>> Stg );
 009960 					Acalc <= Ain12b - atan;
        				end
 010042 				else begin
 010042 					Xcalc <= Xin12b + ( Yin12b >>> Stg );
 010042 					Ycalc <= Yin12b - ( Xin12b >>> Stg );
 010042 					Acalc <= Ain12b + atan;
        				end
        			end
 002854 			else begin // Stg == 0
 001456 				if(Ain12b[11] == 0) begin //postive angle
 001456 					Xcalc <= oneOverK;
 001456 					Ycalc <= oneOverK;
 001456 					Acalc <= Ain12b - atan;
        				end
 001398 				else begin
 001398 					Xcalc <= oneOverK;
 001398 					Ycalc <= -oneOverK;
 001398 					Acalc <= Ain12b + atan;
        				end
        			end
        		end
        	end
        	
        	// X, Y, A Output -------------------------------------------------------
 084250 	reg [1:0] X_, Y_, A_;
 160020 	always@* begin
 022858 		if 		(LoadCtl[0]) begin X_ = Xcalc[1:0]  ; Y_ = Ycalc[1:0]  ; A_ = Acalc[1:0]  ; end
 022858 		else if (LoadCtl[1]) begin X_ = Xcalc[3:2]  ; Y_ = Ycalc[3:2]  ; A_ = Acalc[3:2]  ; end
 022858 		else if (LoadCtl[2]) begin X_ = Xcalc[5:4]  ; Y_ = Ycalc[5:4]  ; A_ = Acalc[5:4]  ; end
 022858 		else if (LoadCtl[3]) begin X_ = Xcalc[7:6]  ; Y_ = Ycalc[7:6]  ; A_ = Acalc[7:6]  ; end
 022858 		else if (LoadCtl[4]) begin X_ = Xcalc[9:8]  ; Y_ = Ycalc[9:8]  ; A_ = Acalc[9:8]  ; end
 022872 		else if (LoadCtl[5]) begin X_ = Xcalc[11:10]; Y_ = Ycalc[11:10]; A_ = Acalc[11:10]; end
 022872 		else 				 begin X_ = 2'bxx		; Y_ = 2'bxx	   ; A_ = 2'bxx		  ; end			 
        	end
        	
        	assign Xout = X_;
        	assign Yout = Y_;
        	assign Aout = A_;
        	
        endmodule
        
