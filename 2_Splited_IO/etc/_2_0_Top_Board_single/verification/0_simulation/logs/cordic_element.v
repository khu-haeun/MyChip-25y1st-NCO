//      // verilator_coverage annotation
        module cordic_element ( 
        	//timing issue
 939533320 	input 			clk,
 222545632 	input 	[1:0] 	Xin,
 252520448 	output 	[1:0] 	Xout,
 226428524 	input 	[1:0] 	Yin,
 255944472 	output 	[1:0] 	Yout,
 186590736 	input 	[1:0]	Ain,
 171689646 	output 	[1:0]	Aout, //13
 000256 	input 			ISin, 
 000256 	output	reg		ISout, //15
%000007 	input	[2:0]	Stg, //20
 134219072 	input 			Rdy, 
 134219056 	output 			Vld //24
        );
%000008 	reg signed [11:0] oneOverK = 12'd1242;
%000008 	reg signed [11:0] atan0 = 12'd511;//44.96 degree
%000008 	reg signed [11:0] atan1 = 12'd301;//26.50 degree
%000008 	reg signed [11:0] atan2 = 12'd159;//14.02 degree
%000008 	reg signed [11:0] atan3 = 12'd80; // 7.07 degree
%000008 	reg signed [11:0] atan4 = 12'd40; // 3.56 degree
%000008 	reg signed [11:0] atan5 = 12'd19; // 1.71 degree
%000008 	reg signed [11:0] atan6 = 12'd9;  // 0.83 degree
%000008 	reg signed [11:0] atan7 = 12'd4;  // 0.39 degree
        	
        	// Load Control -----------------------------------------------------------
        	integer i;
 134219064     reg     [6:0]   LoadCtl;
 469766664     always @(posedge clk)
 469766664     begin
 469766664         LoadCtl[0] <= Rdy;
 2818599984         for (i=0; i<6; i=i+1)
 2818599984             LoadCtl[i+1] <= LoadCtl[i];
            end
        	assign Vld = LoadCtl[6];
        	
        	// Invert Sign ------------------------------------------------------------
 469766664 	always @(posedge clk) if(LoadCtl[6]) ISout <= ISin;    
        	
        	// Loading Xin, Yin, Ain --------------------------------------------------
 003567 	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
 004325 	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
 524349 	reg [1:0] Ain5, Ain4, Ain3, Ain2, Ain1, Ain0;
        	
 469766664 	always @(posedge clk) begin
 67109532         if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; Ain0 <= Ain; end
 67109532         else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; Ain1 <= Ain; end
 67109476 		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; Ain2 <= Ain; end
 67109476         else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; Ain3 <= Ain; end
 67109476 		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; Ain4 <= Ain; end
 67109696         else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; Ain5 <= Ain; end
            end
        	
        	// atan mapping ----------------------------------------------------------
%000005 	reg signed [11:0] atan;
        	
%000008 	always@* begin
%000008 		case(Stg)
%000001 			3'd0:atan = atan0;
%000001 			3'd1:atan = atan1;
%000001 			3'd2:atan = atan2;
%000001 			3'd3:atan = atan3;
%000001 			3'd4:atan = atan4;
%000001 			3'd5:atan = atan5;
%000001 			3'd6:atan = atan6;
%000001 			3'd7:atan = atan7;
        		endcase
        	end
        	
        	// cordic element(shift & add/sub) ---------------------------------------
 003567 	wire signed [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
 004325 	wire signed [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
 524349 	wire signed [11:0] Ain12b = {Ain5, Ain4, Ain3, Ain2, Ain1, Ain0};
        
 524294 	reg signed [11:0] Xcalc, Ycalc, Acalc;
 469766664 	always@(posedge clk) begin
 402657140 		if (LoadCtl[6]) begin
 58720830 			if(Stg != 3'd0) begin
 29360540 				if(Ain12b[11] == 0) begin //postive angle
 29360290 					Xcalc <= Xin12b - ( Yin12b >>> Stg );
 29360290 					Ycalc <= Yin12b + ( Xin12b >>> Stg );
 29360290 					Acalc <= Ain12b - atan;
        				end
 29360540 				else begin
 29360540 					Xcalc <= Xin12b + ( Yin12b >>> Stg );
 29360540 					Ycalc <= Yin12b - ( Xin12b >>> Stg );
 29360540 					Acalc <= Ain12b + atan;
        				end
        			end
 8388694 			else begin // Stg == 0
 4194390 				if(Ain12b[11] == 0) begin //postive angle
 4194390 					Xcalc <= oneOverK;
 4194390 					Ycalc <= oneOverK;
 4194390 					Acalc <= Ain12b - atan;
        				end
 4194304 				else begin
 4194304 					Xcalc <= oneOverK;
 4194304 					Ycalc <= -oneOverK;
 4194304 					Acalc <= Ain12b + atan;
        				end
        			end
        		end
        	end
        	
        	// X, Y, A Output -------------------------------------------------------
 255944472 	reg [1:0] X_, Y_, A_;
 469766672 	always@* begin
 67109532 		if 		(LoadCtl[0]) begin X_ = Xcalc[1:0]  ; Y_ = Ycalc[1:0]  ; A_ = Acalc[1:0]  ; end
 67109532 		else if (LoadCtl[1]) begin X_ = Xcalc[3:2]  ; Y_ = Ycalc[3:2]  ; A_ = Acalc[3:2]  ; end
 67109476 		else if (LoadCtl[2]) begin X_ = Xcalc[5:4]  ; Y_ = Ycalc[5:4]  ; A_ = Acalc[5:4]  ; end
 67109476 		else if (LoadCtl[3]) begin X_ = Xcalc[7:6]  ; Y_ = Ycalc[7:6]  ; A_ = Acalc[7:6]  ; end
 67109476 		else if (LoadCtl[4]) begin X_ = Xcalc[9:8]  ; Y_ = Ycalc[9:8]  ; A_ = Acalc[9:8]  ; end
 67109704 		else if (LoadCtl[5]) begin X_ = Xcalc[11:10]; Y_ = Ycalc[11:10]; A_ = Acalc[11:10]; end
 67109704 		else 				 begin X_ = 2'bxx		; Y_ = 2'bxx	   ; A_ = 2'bxx		  ; end			 
        	end
        	
        	assign Xout = X_;
        	assign Yout = Y_;
        	assign Aout = A_;
        	
        endmodule
        
