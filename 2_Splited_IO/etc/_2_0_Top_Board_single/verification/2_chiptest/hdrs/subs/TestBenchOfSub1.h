#ifndef _SC_SUB1_TB_H_
#define _SC_SUB1_TB_H_

#include <systemc.h>
#include "VerilatedSub1.h"
#include "WrapperOfSub1.h"

SC_MODULE(TestBenchOfSub1)
{
//1. tb signal
	//inputs(common)
	sc_clock                clk;
	sc_signal<bool>			tbEn;
	sc_signal<sc_uint<20>>	tbInFCW;

	//outputs for Ref
	VerilatedSub1*			mRef;
	sc_signal<bool>			refOutVld;
	sc_signal<bool>			refOutIsNeg;
 	sc_signal<sc_uint<2>>	refOutPhase;

	//outputs for DUT
	//VerilatedSub1*			mDUT;
	WrapperOfSub1*			mDUT;
	sc_signal<bool>			dutOutVld;
	sc_signal<bool>			dutOutIsNeg;
 	sc_signal<sc_uint<2>>	dutOutPhase;

	uint32_t mFCW;
	int mErrNum;

//3. methods
	void testMon();
	void disableDUT();

//4. con/destructor
	TestBenchOfSub1(sc_module_name name, uint32_t inFCW) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbEn("tbEn"),
        tbInFCW("tbInFCW"),
		refOutVld("refOutVld"),		dutOutVld("dutOutVld"),
		refOutIsNeg("refOutIsNeg"),	dutOutIsNeg("dutOutIsNeg"),
        refOutPhase("refOutPhase"),	dutOutPhase("dutOutPhase")
	{
		SC_THREAD(testMon);
        sensitive << clk;
		
		//ref
		mRef = new VerilatedSub1("Verilated_sub1");
		mDUT = new WrapperOfSub1("Wrapper_of_sub1");
		//mDUT = new VerilatedSub1("Wrapper_of_sub1");
		//inputs(common)
		mRef->clk(clk);				mDUT->clk(clk);
		mRef->en(tbEn);				mDUT->en(tbEn);
		mRef->inFCW(tbInFCW);		mDUT->inFCW(tbInFCW);

		//outputs
		mRef->outVld(refOutVld);	mDUT->outVld(dutOutVld);
		mRef->outIsNeg(refOutIsNeg);mDUT->outIsNeg(dutOutIsNeg);
		mRef->outPhase(refOutPhase);mDUT->outPhase(dutOutPhase);

		//member init
		mFCW = inFCW;
		mErrNum = 0;
	}
	
	~TestBenchOfSub1(void)
    {
		delete mRef;
		delete mDUT;
    }
};
#endif