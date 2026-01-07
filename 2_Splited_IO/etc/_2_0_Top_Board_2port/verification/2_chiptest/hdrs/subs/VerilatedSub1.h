#ifndef _V_SUB1_H_
#define _V_SUB1_H_

#include <systemc.h>
#include "Vphase_accumulator.h"

SC_MODULE(VerilatedSub1)
{
//0. struct
    //* verilated model wrapper
    //V_Sub1<in> =(signal<in>)=> [ Vphase_accumulator.h ] =(signal<out>)=> V_Sub2<out>
    //
    //* code
    //singal<in> = V_Sub1in>.read          //thread
    //Vphase_accumulator->all_port(signal)     //constructor
    //V_Sub1<out>.write(signal<out>)        //thread

//1. i/o
    //ctrl
    sc_in<bool>             clk;
    sc_in<bool>             en;

    //input
    sc_in<sc_uint<20>>      inFCW;
	
    //output
    sc_out<bool>      		outVld;
    sc_out<bool>            outIsNeg;
    sc_out<sc_uint<2> >     outPhase;

//2. component
    // instance of verilated model
    Vphase_accumulator*     vSub1;
    
    // signals for interconnect
    sc_signal<bool>         sEn;
    sc_signal<unsigned int> sInFCW;
    sc_signal<bool>      	sOutVld;
    sc_signal<bool>         sOutIsNeg;
    sc_signal<unsigned int> sOutPhase;
    
//3. behavior 
    void vSub1Thread(void)
    {
        sEn 	= en.read();
        sInFCW  = inFCW.read();
        
        outVld.write(sOutVld);
		outIsNeg.write(sOutIsNeg);
        outPhase.write(sc_uint<2>(sOutPhase));
    }

//4. con/destructor
    SC_CTOR(VerilatedSub1):
        clk     ("clk"),
        en      ("en"),
        inFCW   ("inFCW"),
        outVld  ("outVld"),
        outIsNeg("outIsNeg"),
        outPhase("outPhase")
    {
        SC_METHOD(vSub1Thread);
        sensitive << clk << en 
                  << inFCW;
        
        // Instantiate Verilated PE
        vSub1 = new Vphase_accumulator("vSub1");
        vSub1->clk(clk);
        vSub1->En(sEn);
        vSub1->FCW(sInFCW);
		vSub1->Vld(sOutVld);
        vSub1->ISout(sOutIsNeg);
        vSub1->Aout(sOutPhase);
    }
    
    ~VerilatedSub1(void)
    {
        delete vSub1;
    }
};

#endif