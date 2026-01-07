#ifndef _SC_NCO_SUB3_
#define _SC_NCO_SUB3_

#include <systemc.h>

SC_MODULE(TimedOutputTerminal)
{
//1. i/o
	//ctrl
	sc_in	< bool > 			clk;
	sc_in	< bool >			inMode;
	sc_in	< bool >			inSelXY;

	//input
	sc_in	< bool >			inIsNeg;
	sc_in 	< sc_int<12> >		inX;
	sc_in 	< sc_int<12> >		inY;

	//output
	sc_out 	< sc_uint<12> >		outData;
	
	void outputTerminalThread(void){
		sc_int<12> bias;
		sc_int<12>	iX, iY;
		sc_uint<12>	oX, oY;
		sc_uint<12> oData;

		while (true)
        {
			//posedge trig
            wait(clk.posedge_event());

			//0. read input port
			iX = inX.read();
			iY = inY.read();

			//1. if input is Neg, *(-1)
			if(inIsNeg.read() == true){
				iX = -iX;
				iY = -iY;
			}

			//2. if inMode is Unsigned(true) add bias
			bias = (inMode.read() == true) ? 0x800 : 0;
			oX = iX + bias;
			oY = iY + bias;

			//3. write on output port
			oData = (inSelXY.read()) ? oX : oY;
			outData.write(oData);
		}
	}
	
	SC_CTOR(TimedOutputTerminal):
        clk("clk"),
		inMode("inMode"),
		inSelXY("inSelXY"),
		inIsNeg("inIsNeg"),
		inX("inX"),
		inY("inY"),
		outData("outData")
    {
        SC_THREAD(outputTerminalThread);
        sensitive << clk << inSelXY;
    }
	
	~TimedOutputTerminal(void)
    {
    }
};
#endif