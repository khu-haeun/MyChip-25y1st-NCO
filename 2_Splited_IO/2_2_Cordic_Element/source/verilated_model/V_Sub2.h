#ifndef _V_SUB2_H_
#define _V_SUB2_H_

#include <systemc.h>
#include "Vcordic_element.h"

SC_MODULE(V_Sub2)
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
    sc_signal<bool>         sInRdy;         
    sc_signal<bool>         sInIsNeg;     
    sc_signal<sc_uint<2>>   sInX;         
    sc_signal<sc_uint<2>>   sInY;         
    sc_signal<sc_uint<2>>   sInPhase; 

    //output                            
    sc_signal<bool>         sOutVld;    
    sc_signal<bool>         sOutIsNeg;  
    sc_signal<sc_uint<2>>   sOutX;
    sc_signal<sc_uint<2>>   sOutY;
    sc_signal<sc_uint<2>>   sOutPhase;

//3. behavior
    void vSub2Thread(void)
    {
        //input                        
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
    SC_CTOR(V_Sub2):
        clk("clk"),
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
        sensitive << clk 
                  << inRdy << inIsNeg << inX << inY << inPhase;
        
        // Instantiate Verilated PE
        vSub2 = new Vcordic_element("vSub2");
        vSub2->clk     (clk);
        vSub2->inRdy   (sInRdy);
        vSub2->inIsNeg (sInIsNeg);
        vSub2->inX     (sInX);
        vSub2->inY     (sInY);
        vSub2->inPhase (sInPhase);
        vSub2->outVld  (sOutVld);
        vSub2->outIsNeg(sOutIsNeg);
        vSub2->outX    (sOutX);
        vSub2->outY    (sOutY);
        vSub2->outPhase(sOutPhase);
    }
    
    ~V_Sub2(void)
    {
        delete vSub2;
    }
};

#endif