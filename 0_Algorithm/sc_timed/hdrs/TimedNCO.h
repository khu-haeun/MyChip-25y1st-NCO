#ifndef _SC_NCO_H_
#define _SC_NCO_H_

#include <systemc.h>
#include "TimedPhaseAccumulator.h"
#include "TimedCORDICElement.h"
#include "TimedOutputTerminal.h"

SC_MODULE(TimedNCO){
//1. i/o
	//ctrl
	sc_in	< bool > 			clk;
	sc_in	< bool >			en;
	sc_in	< bool >			inMode;
	sc_in	< bool >			inSelXY;

	//input
	sc_in 	< sc_uint<20> >		inFCW;

	//output
	sc_out 	< sc_uint<12> >		outData;
	
//2. component
	TimedPhaseAccumulator*	mSub1;
	TimedCORDIC*			mSub2;
	TimedOutputTerminal*	mSub3;
	
	sc_signal< bool > wIsNeg[2];
	sc_signal< sc_int<12> > wPhase;
	sc_signal< sc_int<12> > wX, wY;
	sc_signal< sc_int<12> > noUse;
	
	SC_CTOR(TimedNCO):
		clk ("clk"),
		en 	("En"),
		inMode("inMode"),
		inSelXY("inSelXY"),
		inFCW("inFCW"),
		outData("outData")
	{
		mSub1 = new TimedPhaseAccumulator("s1_phase_accumulator");
		mSub2 = new TimedCORDIC("s2_CORDIC");
		mSub3 = new TimedOutputTerminal("s3_output_terminal");
		
		//1. phase accumulator
		mSub1->clk(clk);			//sc_nco input port
		mSub1->en(en);				//sc_nco input port
		mSub1->inFCW(inFCW);		//sc_nco input port
		mSub1->outPhase(wPhase);
		mSub1->outIsNeg(wIsNeg[0]);
		
		//2. cordic
		mSub2->clk(clk);
		mSub2->inIsNeg(wIsNeg[0]);
		mSub2->inPhase(wPhase);
		mSub2->outPhase(noUse);//no use
		mSub2->outIsNeg(wIsNeg[1]);
		mSub2->outX(wX);
		mSub2->outY(wY);
		
		//3. invert sign
		mSub3->clk(clk);
		mSub3->inMode(inMode);
		mSub3->inSelXY(inSelXY);	//sc_nco input port
		mSub3->inIsNeg(wIsNeg[1]);
		mSub3->inX(wX);
		mSub3->inY(wY);
		mSub3->outData(outData);	//sc_nco output port
	}
	
	~TimedNCO(void)
	{
		delete mSub1;
		delete mSub2;
		delete mSub3;
	}
};
#endif

