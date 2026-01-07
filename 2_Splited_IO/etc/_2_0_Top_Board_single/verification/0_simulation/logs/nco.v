//      // verilator_coverage annotation
        module nco(
 117441665 	input clk,
 000015 	input En,
%000001 	input [19:0] FCW,
%000007 	input selXY,
%000003 	input selSign,
 16777373 	output Vld,
 004265 	output [11:0] Dout
        );
~36053186 	wire [1:0] x [8:0];
~41943356 	wire [1:0] y [8:0];
 29360128 	wire [1:0] a [8:0];
 16777391 	wire [8:0] is, rdy;
%000001 	wire [2:0] stg [8:0];
        	assign stg[0] = 3'd0;
        	assign stg[1] = 3'd1;
        	assign stg[2] = 3'd2;
        	assign stg[3] = 3'd3;
        	assign stg[4] = 3'd4;
        	assign stg[5] = 3'd5;
        	assign stg[6] = 3'd6;
        	assign stg[7] = 3'd7;
        
        	phase_accumulator u_pa(
        		.clk(clk),
        		.En(En),
        		.FCW(FCW),
        		.Vld(rdy[0]),
        		.Aout(a[0]),
        		.ISout(is[0])
        	);
        	
        	genvar i;
        	generate
        		for(i=0; i<8; i++) begin
        			cordic_element u_ce(
        				.clk	(clk),
        				.Xin	(x[i]),
        				.Xout	(x[i+1]),
        				.Yin	(y[i]),
        				.Yout	(y[i+1]),
        				.Ain	(a[i]),
        				.Aout	(a[i+1]),
        				.ISin	(is[i]),
        				.ISout	(is[i+1]),
        				.Stg	(stg[i]),
        				.Rdy	(rdy[i]),
        				.Vld	(rdy[i+1])
        			);
        		end
        	endgenerate
        	
        	output_terminal u_ot(
        		.clk(clk),
        		.selXY(selXY),
        		.selSign(selSign),
        		.Xin(x[8]),
        		.Yin(y[8]),
        		.Dout(Dout),
        		.Rdy(rdy[8]),
        		.Vld(Vld),
        		.ISin(is[8])
        	);
        
        endmodule
        
