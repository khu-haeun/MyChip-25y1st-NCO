//      // verilator_coverage annotation
        module nco2out(
 027682 	input clk,
        
 000158 	input En,
%000008 	input [19:0] FCW,
        /* verilator coverage_off */ 
        	input selSign,
        /* verilator coverage_on */ 
        
 003964 	output VldX,
 003964 	output VldY,
 000566 	output [11:0] outX,
 000704 	output [11:0] outY
        );
~007988 	wire [1:0] x [8:0];
~008404 	wire [1:0] y [8:0];
 007512 	wire [1:0] a [8:0];
 004000 	wire [8:0] is, rdy;
        /* verilator coverage_off */ 
        	wire [2:0] stg [8:0];
        	wire selX; assign selX = 1'b1;
        	wire selY; assign selY = 1'b0;
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
        	
        	output_terminal u_ot_x(
        		.clk(clk),
        		.selXY(selX),
        		.selSign(selSign),
        		.Xin(x[8]),
        		.Yin(y[8]),
        		.Dout(outX),
        		.Rdy(rdy[8]),
        		.Vld(VldX),
        		.ISin(is[8])
        	);
        
        	output_terminal u_ot_y(
        		.clk(clk),
        		.selXY(selY),
        		.selSign(selSign),
        		.Xin(x[8]),
        		.Yin(y[8]),
        		.Dout(outY),
        		.Rdy(rdy[8]),
        		.Vld(VldY),
        		.ISin(is[8])
        	);
        
        endmodule
        
