#ifndef _V_SUB3_H_
#define _V_SUB3_H_

#include <systemc.h>
#include "Voutput_terminal.h"

SC_MODULE(V_Sub3)
{
//0. struct
    //verilated model wrapper
    //V_Sub3<in> =(signal<in>)=> [ Voutput_terminal.h ] =(signal<out>)=> V_Sub3<out>
    //
    //singal<in> = V_Sub3<in>.read          //thread
    //Voutput_terminal->all_port(signal)     //constructor
    //V_Sub3<out>.write(signal<out>)        //thread

//1. i/o
    //ctrl
    sc_in<bool>             clk;
    sc_in<bool>             inSelXY;
    sc_in<bool>             inMode;
    
    //input
    sc_in<bool>             inRdy;
    sc_in<bool>             inIsNeg;
    sc_in<sc_uint<2>>       inX;
    sc_in<sc_uint<2>>       inY;
	
    //output
    sc_out<bool>            outVld;
    sc_out<sc_uint<12>>     outData;

//2. component
    // instance of verilated model
    Voutput_terminal*       vSub3;
    
    // signals for interconnect
    //ctrl
    sc_signal<bool>         sInSelXY;
    sc_signal<bool>         sInMode;

    //input                             
    sc_signal<bool>         sInRdy;         
    sc_signal<bool>         sInIsNeg;     
    sc_signal<sc_uint<2>>   sInX;         
    sc_signal<sc_uint<2>>   sInY;         

    //output                            
    sc_signal<bool>         sOutVld;
    sc_signal<sc_uint<12>>  sOutData;

//3. behavior
    void vSub3Thread(void)
    {
        //ctrl
        sInSelXY    = inSelXY.read();
        sInMode     = inMode.read();

        //input                        
        sInRdy      = inRdy.read();             
        sInIsNeg    = inIsNeg.read();     
        sInX        = inX.read();             
        sInY        = inY.read();             

        //output              
        outVld.write(sOutVld);
        outData.write(sc_uint<12>(sOutData));
    }

//4. con/destructor
    SC_CTOR(V_Sub3):
        clk("clk"),
        inSelXY ("inSelXY"),
        inMode  ("inMode"),
        inRdy   ("inRdy"),
        inIsNeg ("inIsNeg"),
        inX     ("inX"),
        inY     ("inY"),
        outVld  ("outVld"),
        outData ("outData")
    {
        SC_METHOD(vSub3Thread);
        sensitive << clk
                  << inSelXY << inMode 
                  << inRdy << inIsNeg << inX << inY << inPhase;
        
        // Instantiate Verilated PE
        vSub3 = new Vcordic_element("vSub3");
        vSub3->clk     (clk);
        vSub3->inSelXY (sInSelXY);
        vSub3->inMode  (sInMode);
        vSub3->inRdy   (sInRdy);
        vSub3->inIsNeg (sInIsNeg);
        vSub3->inX     (sInX);
        vSub3->inY     (sInY);
        vSub3->outVld  (sOutVld);
        vSub3->outData (sOutData);
    }
    
    ~V_Sub3(void)
    {
        delete vSub3;
    }
};

#endif