//      // verilator_coverage annotation
        module nco(
 655829 	input clk,
 000159 	input En,
%000008 	input [19:0] FCW,
%000003 	input selXY,
%000001 	input selSign,
 004942 	output Vld,
 000712 	output [11:0] Dout
        );
        /* verilator coverage_off */
        	wire [1:0] x [8:0];
        	wire [1:0] y [8:0];
        	wire [1:0] a [8:0];
        	wire [8:0] is, rdy;
        	wire [2:0] stg [8:0];
        /* verilator coverage_on */ 
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
        
