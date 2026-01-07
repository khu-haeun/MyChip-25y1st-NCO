#ifndef _SC_NCO_SUB1_
#define _SC_NCO_SUB1_

#include <systemc.h>

SC_MODULE(TimedPhaseAccumulator)
{
//1. i/o
	//ctrl
	sc_in		< bool > 			clk;
    sc_in		< bool >            en;
	
	//input
	sc_in 		< sc_uint<20> >		inFCW;

	//output
    sc_out 		< sc_int<12> >		outPhase;
	sc_out 		< bool >			outIsNeg;
	
//2. component
	sc_signal	< sc_uint<20> > 	accReg;// f/f model
	const sc_uint<12> QUADRANT_MASK_12B 	 = 0xC00;
	const sc_uint<12> SECOND_PLANE_12B 		 = 0x400;
	const sc_uint<12> THIRD_PLANE_12B		 = 0x800;
	const sc_uint<12> SECOND_TO_FOURTH_PLANE = 0x800; //MSB 0 -> 1 by ORing
	const sc_uint<12> THIRD_TO_FIRST_PLANE 	 = 0x3FF; //MSB 1 -> 0 by Anding
	
//3. behavior
	void phaseAccThread(void){
        //vars
		sc_int<12> 	phase;
		bool		isNeg;
		
        //behavior
		while (true)
        {
			//posedge trig
			wait(clk.posedge_event());

            if(en.read() == 0){
                resetPhaseAcc();
                continue;
			}
			else {
				//1. Accumulation
				accReg = accReg.read() + inFCW.read();
				phase = accReg.read() >> 8;
				
				//2. processing acc_reg value to fit CORDIC input
				if( (phase & QUADRANT_MASK_12B) == SECOND_PLANE_12B ){ //12b'01~ => 12b'11~ (MSB 0->1)
					phase = phase | SECOND_TO_FOURTH_PLANE;
					isNeg = true;
				}
				else if( (phase & QUADRANT_MASK_12B) == THIRD_PLANE_12B ){ //12b'10~ => 12b'00~ (MSB 1->0)
					phase = phase & THIRD_TO_FIRST_PLANE;
					isNeg = true;
				}
				else {
					isNeg = false;
				}

				//3. write on output port
				outPhase.write(phase);
				outIsNeg.write(isNeg);
			}
		}
	}
    void resetPhaseAcc(void){
        accReg = 0;
        outPhase.write(0);
        outIsNeg.write(0);
    }
	
	SC_CTOR(TimedPhaseAccumulator):
        clk("clk"),
        en("En"),
        inFCW("inFCW"),
        outPhase("outPhase"),
        outIsNeg("outIsNeg")
    {
		//init
		accReg = 0;

		//thread
        SC_THREAD(phaseAccThread);
        sensitive << clk;
    }
	
	~TimedPhaseAccumulator(void){}
};

#endif