#ifndef _V_NCO_H_
#define _V_NCO_H_

#include <systemc.h>
#include "define.h"

#ifdef DUT_VERILATED
#include "Vnco.h"
#endif
#ifdef DUT_VERILOG
#include "VerilogNCO.h"
#endif

SC_MODULE(VerilatedNCO)
{
//1. i/o
	//ctrl
	sc_in	< bool > 			clk;
	sc_in	< bool >			en;
	sc_in	< bool >			inMode;
	sc_in	< bool >			inSelXY;

	//input
	sc_in 	< sc_uint<20> >		inFCW;

	//output
    sc_out  < bool >            outVld;
	sc_out 	< sc_uint<12> >		outData;

//2. signal
#ifdef DUT_VERILATED
	Vnco*            		    vNCO;
    sc_signal<bool> 		    sEn;
    sc_signal<bool> 		    sInSelXY;
	sc_signal<bool>			    sInMode;
	sc_signal<uint32_t> 	    sInFCW;
    sc_signal<bool>     	    sOutVld;
    sc_signal<uint32_t> 	    sOutData;

    void MethodOfVerilatedNCO(void)
    {
        sEn 	= en.read();
        sInSelXY= inSelXY.read();
		sInMode = inMode.read();
        sInFCW 	= (uint32_t)inFCW.read();
        
        outVld.write(sOutVld);
		outData.write(sc_uint<12>(sOutData));
    }
#endif

#ifdef DUT_VERILOG
	VerilogNCO*                 vNCO;
    sc_signal<bool> 		    sEn;
    sc_signal<bool> 		    sInSelXY;
	sc_signal<bool>			    sInMode;
	sc_signal<sc_uint<20>> 	    sInFCW;
    sc_signal<bool>     	    sOutVld;
    sc_signal<sc_uint<12>> 	    sOutData;

    void MethodOfVerilatedNCO(void)
    {
        sEn 	= en.read();
        sInSelXY= inSelXY.read();
		sInMode = inMode.read();
        sInFCW 	= inFCW.read();
        
        outVld.write(sOutVld);
		outData.write(sOutData);
    }
#endif

    SC_CTOR(VerilatedNCO):
        clk("clk"),
        en      ("en")      , sEn       ("sEn"),
		inSelXY ("inSelXY")	, sInSelXY  ("sInSelXY"),
		inMode  ("inMode")  , sInMode   ("sInMode"),
		inFCW   ("inFCW")	, sInFCW    ("sInFCW"),
		outVld  ("outVld")  , sOutVld   ("sOutVld"),        
        outData ("outData") , sOutData  ("sOutData")
    {
        SC_METHOD(MethodOfVerilatedNCO);
        sensitive << clk << en << inSelXY << inMode << inFCW;
        
        // Instantiate Verilated PE
#ifdef DUT_VERILATED
	    vNCO = new Vnco("vNCO");
#endif

#ifdef DUT_VERILOG
	    vNCO = new VerilogNCO("vNCO");
#endif
        vNCO->clk(clk);
        vNCO->En(sEn);
        vNCO->selXY(sInSelXY);
		vNCO->selSign(sInMode);
        vNCO->FCW(sInFCW);
        vNCO->Vld(sOutVld);
        vNCO->Dout(sOutData);
        
    }
    
    ~VerilatedNCO(void)
    {
        delete vNCO;
    }
};

#endif