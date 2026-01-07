#ifndef _V_SUB2_H_
#define _V_SUB2_H_

#include <systemc.h>
#include "Vcordic_element.h"

SC_MODULE(VerilatedSub2)
{
//0. struct
    //verilated model wrapper
    //V_Sub2<in> =(signal<in>)=> [ Vcoridc_element.h ] =(signal<out>)=> V_Sub2<out>
    //
    //singal<in> = V_Sub2<in>.read          //thread
    //Vcordic_element->all_port(signal)     //constructor
    //V_Sub2<out>.write(signal<out>)        //thread

//1. i/o
    //ctrl
    sc_in<bool>             clk;
    sc_in<sc_uint<3>>       inStg;
    
    //input
    sc_in<bool>             inRdy;
    sc_in<bool>             inIsNeg;
    sc_in<sc_uint<2>>       inX;
    sc_in<sc_uint<2>>       inY;
    sc_in<sc_uint<2>>       inPhase;
	
    //output
    sc_out<bool>            outVld;
    sc_out<bool>            outIsNeg;
    sc_out<sc_uint<2>>      outX;
    sc_out<sc_uint<2>>      outY;
    sc_out<sc_uint<2>>      outPhase;

//2. component
    // instance of verilated model
    Vcordic_element*        vSub2;
    
    // signals for interconnect
    //input                       
    sc_signal<unsigned int> sInStg;      
    sc_signal<bool>         sInRdy;         
    sc_signal<bool>         sInIsNeg;     
    sc_signal<unsigned int>   sInX;         
    sc_signal<unsigned int>   sInY;         
    sc_signal<unsigned int>   sInPhase; 

    //output                            
    sc_signal<bool>         sOutVld;    
    sc_signal<bool>         sOutIsNeg;  
    sc_signal<unsigned int>   sOutX;
    sc_signal<unsigned int>   sOutY;
    sc_signal<unsigned int>   sOutPhase;

//3. behavior
    void vSub2Thread(void)
    {
        //input  
        sInStg      = inStg.read();                      
        sInRdy      = inRdy.read();             
        sInIsNeg    = inIsNeg.read();     
        sInX        = inX.read();             
        sInY        = inY.read();             
        sInPhase    = inPhase.read(); 

        //output              
        outVld.write(sOutVld);
        outIsNeg.write(sOutIsNeg);
        outX.write(sc_uint<2>(sOutX));
        outY.write(sc_uint<2>(sOutY));
        outPhase.write(sc_uint<2>(sOutPhase));
    }

//4. con/destructor
    SC_CTOR(VerilatedSub2):
        clk("clk"),
        inStg("inStg"),
        inRdy   ("inRdy"),
        inIsNeg ("inIsNeg"),
        inX     ("inX"),
        inY     ("inY"),
        inPhase ("inPhase"),
        outVld  ("outVld"),
        outIsNeg("outIsNeg"),
        outX    ("outX"),
        outY    ("outY"),
        outPhase("outPhase")
    {
        SC_METHOD(vSub2Thread);
        sensitive << clk << inStg
                  << inRdy << inIsNeg << inX << inY << inPhase;
        
        // Instantiate Verilated PE
        vSub2 = new Vcordic_element("vSub2");
        vSub2->clk     (clk);
        vSub2->Stg     (sInStg);
        vSub2->Rdy     (sInRdy);
        vSub2->ISin    (sInIsNeg);
        vSub2->Xin     (sInX);
        vSub2->Yin     (sInY);
        vSub2->Ain     (sInPhase);
        vSub2->Vld     (sOutVld);
        vSub2->ISout   (sOutIsNeg);
        vSub2->Xout    (sOutX);
        vSub2->Yout    (sOutY);
        vSub2->Aout    (sOutPhase);
    }
    
    ~VerilatedSub2(void)
    {
        delete vSub2;
    }
};

#endif