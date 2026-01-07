#ifndef _V_SUB1_H_
#define _V_SUB1_H_

#include <systemc.h>
#include "Vnco_board.h"

SC_MODULE(VerilatedNCOBoard)
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
    sc_in<bool>             inMode;

    //input
    sc_in<sc_uint<20>>      inFCW;

	
    //output
    sc_out<bool>      		outVldX;
    sc_out<bool>      		outVldY;
    sc_out<sc_uint<12>>     outX;
    sc_out<sc_uint<12>>     outY;
    

//2. component
    // instance of verilated model
    Vnco_board*             vNCO;
    
    // signals for interconnect
    sc_signal<bool>         sEn;
    sc_signal<bool>         sInMode;

    sc_signal<unsigned int> sInFCW;
    sc_signal<bool>      	sOutVldX;
    sc_signal<bool>      	sOutVldY;
    sc_signal<unsigned int> sOutX;
    sc_signal<unsigned int> sOutY;
    
//3. behavior 
    void vNCOThread(void)
    {
        sEn 	= en.read();
        sInMode = inMode.read();
        sInFCW  = inFCW.read();
        
        outVldX.write(sOutVldX);
        outVldY.write(sOutVldY);
        outX.write(sc_uint<12>(sOutX));
        outY.write(sc_uint<12>(sOutY));
    }

//4. con/destructor
    SC_CTOR(VerilatedNCOBoard):
        clk     ("clk"),
        en      ("en"),
        inMode  ("inMode"),
        inFCW   ("inFCW"),
        outVldX  ("outVldX"),
        outVldY  ("outVldY"),
        outX    ("outX"),
        outY    ("outY")
    {
        SC_METHOD(vNCOThread);
        sensitive << clk << en 
                  << inFCW << inMode;
        
        // Instantiate Verilated PE
        vNCO = new Vnco_board("vNCO");
        vNCO->clk(clk);
        vNCO->En(sEn);
        vNCO->selSign(sInMode);
        vNCO->FCW(sInFCW);
		vNCO->VldX(sOutVldX);
		vNCO->VldY(sOutVldY);
        vNCO->outX(sOutX);
        vNCO->outY(sOutY);
    }
    
    ~VerilatedNCOBoard(void)
    {
        delete vNCO;
    }
};

#endif