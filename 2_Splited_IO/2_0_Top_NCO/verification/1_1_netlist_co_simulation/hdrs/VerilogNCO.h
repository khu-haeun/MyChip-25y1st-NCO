#ifndef _Verilog_NCO_H_
#define _Verilog_NCO_H_

#include <systemc.h>

class VerilogNCO : public sc_foreign_module
{
public : 
    //ctrl
	sc_in	< bool > 			clk;
	sc_in	< bool >			En;
	sc_in	< bool >			selSign;
	sc_in	< bool >			selXY;

	//input
	sc_in 	< sc_uint<20> >		FCW;

	//output
    sc_out  < bool >            Vld;
	sc_out 	< sc_uint<12> >		Dout;

    VerilogNCO(sc_module_name name) :
        sc_foreign_module(name, "nco"),
        clk     ("clk")     ,
        En      ("En")      ,
        selSign ("selSign")	,
        selXY   ("selXY")  ,
        FCW     ("FCW")	,
        Vld     ("Vld")  ,
        Dout    ("Dout") 
    {
    };
};

#endif