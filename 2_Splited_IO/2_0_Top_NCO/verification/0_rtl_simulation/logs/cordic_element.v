//      // verilator_coverage annotation
        module cordic_element ( 
        	//timing issue
 22863624 	input 			clk,
 3296260 	input 	[1:0] 	Xin,
 3744653 	output 	[1:0] 	Xout,
 3333145 	input 	[1:0] 	Yin,
 3758025 	output 	[1:0] 	Yout,
 2967542 	input 	[1:0]	Ain,
 2772718 	output 	[1:0]	Aout, //13
 527587 	input 			ISin, 
 527580 	output	reg		ISout, //15
%000007 	input	[2:0]	Stg, //20
 2126792 	input 			Rdy, 
 2126776 	output 			Vld //24
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
 2126792     reg     [6:0]   LoadCtl;
 11431816     always @(posedge clk)
 11431816     begin
 11431816         LoadCtl[0] <= Rdy;
 68590896         for (i=0; i<6; i=i+1)
 68590896             LoadCtl[i+1] <= LoadCtl[i];
            end
        	assign Vld = LoadCtl[6];
        	
        	// Invert Sign ------------------------------------------------------------
 11431816 	always @(posedge clk) if(LoadCtl[6]) ISout <= ISin;    
        	
        	// Loading Xin, Yin, Ain --------------------------------------------------
 402009 	reg [1:0] Xin5, Xin4, Xin3, Xin2, Xin1, Xin0;
 477934 	reg [1:0] Yin5, Yin4, Yin3, Yin2, Yin1, Yin0;
 542157 	reg [1:0] Ain5, Ain4, Ain3, Ain2, Ain1, Ain0;
        	
 11431816 	always @(posedge clk) begin
 1063396         if 		(LoadCtl[0]) begin Xin0 <= Xin; Yin0 <= Yin; Ain0 <= Ain; end
 1063396         else if (LoadCtl[1]) begin Xin1 <= Xin; Yin1 <= Yin; Ain1 <= Ain; end
 1063396 		else if (LoadCtl[2]) begin Xin2 <= Xin; Yin2 <= Yin; Ain2 <= Ain; end
 1063396         else if (LoadCtl[3]) begin Xin3 <= Xin; Yin3 <= Yin; Ain3 <= Ain; end
 1063388 		else if (LoadCtl[4]) begin Xin4 <= Xin; Yin4 <= Yin; Ain4 <= Ain; end
 5051456         else if (LoadCtl[5]) begin Xin5 <= Xin; Yin5 <= Yin; Ain5 <= Ain; end
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
 402009 	wire signed [11:0] Xin12b = {Xin5, Xin4, Xin3, Xin2, Xin1, Xin0}; 
 477934 	wire signed [11:0] Yin12b = {Yin5, Yin4, Yin3, Yin2, Yin1, Yin0};
 542157 	wire signed [11:0] Ain12b = {Ain5, Ain4, Ain3, Ain2, Ain1, Ain0};
        
 550933 	reg signed [11:0] Xcalc, Ycalc, Acalc;
 11431816 	always@(posedge clk) begin
 10368428 		if (LoadCtl[6]) begin
 930461 			if(Stg != 3'd0) begin
 480931 				if(Ain12b[11] == 0) begin //postive angle
 480931 					Xcalc <= Xin12b - ( Yin12b >>> Stg );
 480931 					Ycalc <= Yin12b + ( Xin12b >>> Stg );
 480931 					Acalc <= Ain12b - atan;
        				end
 449530 				else begin
 449530 					Xcalc <= Xin12b + ( Yin12b >>> Stg );
 449530 					Ycalc <= Yin12b - ( Xin12b >>> Stg );
 449530 					Acalc <= Ain12b + atan;
        				end
        			end
 132927 			else begin // Stg == 0
 075227 				if(Ain12b[11] == 0) begin //postive angle
 075227 					Xcalc <= oneOverK;
 075227 					Ycalc <= oneOverK;
 075227 					Acalc <= Ain12b - atan;
        				end
 057700 				else begin
 057700 					Xcalc <= oneOverK;
 057700 					Ycalc <= -oneOverK;
 057700 					Acalc <= Ain12b + atan;
        				end
        			end
        		end
        	end
        	
        	// X, Y, A Output -------------------------------------------------------
 3758025 	reg [1:0] X_, Y_, A_;
 11431824 	always@* begin
 1063396 		if 		(LoadCtl[0]) begin X_ = Xcalc[1:0]  ; Y_ = Ycalc[1:0]  ; A_ = Acalc[1:0]  ; end
 1063396 		else if (LoadCtl[1]) begin X_ = Xcalc[3:2]  ; Y_ = Ycalc[3:2]  ; A_ = Acalc[3:2]  ; end
 1063396 		else if (LoadCtl[2]) begin X_ = Xcalc[5:4]  ; Y_ = Ycalc[5:4]  ; A_ = Acalc[5:4]  ; end
 1063396 		else if (LoadCtl[3]) begin X_ = Xcalc[7:6]  ; Y_ = Ycalc[7:6]  ; A_ = Acalc[7:6]  ; end
 1063396 		else if (LoadCtl[4]) begin X_ = Xcalc[9:8]  ; Y_ = Ycalc[9:8]  ; A_ = Acalc[9:8]  ; end
 5051456 		else if (LoadCtl[5]) begin X_ = Xcalc[11:10]; Y_ = Ycalc[11:10]; A_ = Acalc[11:10]; end
 5051456 		else 				 begin X_ = 2'bxx		; Y_ = 2'bxx	   ; A_ = 2'bxx		  ; end			 
        	end
        	
        	assign Xout = X_;
        	assign Yout = Y_;
        	assign Aout = A_;
        	
        endmodule
        
