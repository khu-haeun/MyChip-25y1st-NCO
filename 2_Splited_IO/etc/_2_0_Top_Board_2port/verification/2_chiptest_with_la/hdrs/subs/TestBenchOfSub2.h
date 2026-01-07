#ifndef _SC_SUB2_TB_H_
#define _SC_SUB2_TB_H_

#include <systemc.h>
#include "VerilatedSub1.h"
#include "VerilatedSub2.h"
#include "WrapperOfSub2.h"

SC_MODULE(TestBenchOfSub2)
{
//1. tb signal
	//prev model(interconnect: sub1 <-> sub2)
	VerilatedSub1*			mSub1;
	sc_signal<bool>			tbEn;
	sc_signal<sc_uint<20>>	tbInFCW;
	sc_signal<bool>			tbOutVld;
	sc_signal<bool>			tbOutIsNeg;
 	sc_signal<sc_uint<2>>	tbOutPhase;

	//inputs(common)
	sc_clock                clk;
	sc_signal<sc_uint<3>>	tbInStg;
	sc_signal<bool>			tbInRdy;
	sc_signal<bool>			tbInIsNeg;
	sc_signal<sc_uint<2>>	tbInX;
	sc_signal<sc_uint<2>>	tbInY;
	sc_signal<sc_uint<2>>	tbInPhase;

	//outputs for Ref
	VerilatedSub2*			mRef;
	sc_signal<bool>			refOutVld;
	sc_signal<bool>			refOutIsNeg;
	sc_signal<sc_uint<2>>	refOutX;
	sc_signal<sc_uint<2>>	refOutY;
	sc_signal<sc_uint<2>>	refOutPhase;

	//outputs for DUT
	WrapperOfSub2*			mDUT;
	sc_signal<bool>			dutOutVld;
	sc_signal<bool>			dutOutIsNeg;
	sc_signal<sc_uint<2>>	dutOutX;
	sc_signal<sc_uint<2>>	dutOutY;
	sc_signal<sc_uint<2>>	dutOutPhase;

	uint32_t mFCW;
	int mErrNum;

//3. methods
	void testMon();
	void disableDUT();

//4. con/destructor
	TestBenchOfSub2(sc_module_name name, uint32_t inFCW) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbEn("tbEn"),
        tbInFCW("tbInFCW"),
		tbOutVld("refOutVld"),	
		tbOutIsNeg("refOutIsNeg"),
        tbOutPhase("refOutPhase"),

		tbInStg("tbInStg"),
		tbInRdy("tbInRdy"),
		tbInIsNeg("tbInIsNeg"),
		tbInX("tbInX"),
		tbInY("tbInY"),
		tbInPhase("tbInPhase"),

		refOutVld("refOutVld"),		dutOutVld("dutOutVld"),
		refOutIsNeg("refOutIsNeg"),	dutOutIsNeg("dutOutIsNeg"),
		refOutX("refOutX"),			dutOutX("dutOutX"),
		refOutY("refOutY"),			dutOutY("dutOutY"),
		refOutPhase("refOutPhase"),	dutOutPhase("dutOutPhase")
	{
		SC_THREAD(testMon);
        sensitive << clk;
		
		//ref
		mSub1 = new VerilatedSub1("Verilated_sub1");
		mRef  = new VerilatedSub2("Verilated_sub2");
		mDUT  = new WrapperOfSub2("Wrapper_of_sub2");

		//interconnect
		mSub1->clk(clk);	
		mSub1->en(tbEn);	
		mSub1->inFCW(tbInFCW);
		mSub1->outVld(tbOutVld);	
		mSub1->outIsNeg(tbOutIsNeg);
		mSub1->outPhase(tbOutPhase);

		//inputs(common)
		mRef->clk(clk);
		mRef->inStg		(tbInStg);		mDUT->inStg		(tbInStg);
		mRef->inRdy		(tbInRdy);		mDUT->inRdy		(tbInRdy);		
		mRef->inIsNeg	(tbInIsNeg);	mDUT->inIsNeg	(tbInIsNeg);	
		mRef->inX		(tbInX);		mDUT->inX		(tbInX);		
		mRef->inY		(tbInY);		mDUT->inY		(tbInY);		
		mRef->inPhase	(tbInPhase);	mDUT->inPhase	(tbInPhase);	

		//outputs
		mRef->outVld	(refOutVld);	mDUT->outVld	(dutOutVld);		
		mRef->outIsNeg	(refOutIsNeg);	mDUT->outIsNeg	(dutOutIsNeg);	
		mRef->outX		(refOutX);		mDUT->outX		(dutOutX);		
		mRef->outY		(refOutY);		mDUT->outY		(dutOutY);		
		mRef->outPhase	(refOutPhase);	mDUT->outPhase	(dutOutPhase);

		//member init
		mFCW = inFCW;
		mErrNum = 0;
	}
	
	~TestBenchOfSub2(void)
    {
		delete mSub1;
		delete mRef;
		delete mDUT;
    }
};
#endif