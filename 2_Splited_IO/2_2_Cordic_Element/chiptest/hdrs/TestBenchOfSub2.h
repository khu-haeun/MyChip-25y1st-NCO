#ifndef _SC_SUB2_TB_H_
#define _SC_SUB2_TB_H_

#include <systemc.h>
#include "VerilatedSub2.h"
#include "WrapperOfSub2.h"
#include <stdlib.h>
#include <time.h>

//#define DEV

SC_MODULE(TestBenchOfSub2)
{
//1. tb signal
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
	sc_signal<bool>			rtlOutVld;
	sc_signal<bool>			rtlOutIsNeg;
	sc_signal<sc_uint<2>>	rtlOutX;
	sc_signal<sc_uint<2>>	rtlOutY;
	sc_signal<sc_uint<2>>	rtlOutPhase;

	//outputs for DUT
#ifdef DEV
	VerilatedSub2*			mDUT;
#else
	WrapperOfSub2*			mDUT;
#endif
	
	sc_signal<bool>			mpwOutVld;
	sc_signal<bool>			mpwOutIsNeg;
	sc_signal<sc_uint<2>>	mpwOutX;
	sc_signal<sc_uint<2>>	mpwOutY;
	sc_signal<sc_uint<2>>	mpwOutPhase;

	uint32_t mSampleNum;
	uint32_t mChipNum;
	uint32_t mTotalTestNum;
	int mErrNum;
	int mCnt;

//3. methods
	void testMon();
	void init();
	void generateRandomInput();
	void readAndPrint();
	void compare();
	void printResult();

//4. con/destructor
	TestBenchOfSub2(sc_module_name name, uint32_t sampleNum, uint32_t chipNum) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbInStg("tbInStg"),
		tbInRdy("tbInRdy"),
		tbInIsNeg("tbInIsNeg"),
		tbInX("tbInX"),
		tbInY("tbInY"),
		tbInPhase("tbInPhase"),

		rtlOutVld	("refOutVld"),		mpwOutVld	("mpwOutVld"),
		rtlOutIsNeg	("refOutIsNeg"),	mpwOutIsNeg	("mpwOutIsNeg"),
		rtlOutX		("refOutX"),		mpwOutX		("mpwOutX"),
		rtlOutY		("refOutY"),		mpwOutY		("mpwOutY"),
		rtlOutPhase	("refOutPhase"),	mpwOutPhase	("mpwOutPhase")
	{
		SC_THREAD(testMon);
        sensitive << clk;
		
		//ref
		mRef  = new VerilatedSub2("Verilated_sub2");
#ifdef DEV
		mDUT  = new VerilatedSub2("Wrapper_of_sub2");
#else
		mDUT  = new WrapperOfSub2("Wrapper_of_sub2");
#endif
		//inputs(common)
		mRef->clk(clk);					mDUT->clk(clk);
		mRef->inStg		(tbInStg);		mDUT->inStg		(tbInStg);
		mRef->inRdy		(tbInRdy);		mDUT->inRdy		(tbInRdy);		
		mRef->inIsNeg	(tbInIsNeg);	mDUT->inIsNeg	(tbInIsNeg);	
		mRef->inX		(tbInX);		mDUT->inX		(tbInX);		
		mRef->inY		(tbInY);		mDUT->inY		(tbInY);		
		mRef->inPhase	(tbInPhase);	mDUT->inPhase	(tbInPhase);	

		//outputs
		mRef->outVld	(rtlOutVld);	mDUT->outVld	(mpwOutVld);		
		mRef->outIsNeg	(rtlOutIsNeg);	mDUT->outIsNeg	(mpwOutIsNeg);	
		mRef->outX		(rtlOutX);		mDUT->outX		(mpwOutX);		
		mRef->outY		(rtlOutY);		mDUT->outY		(mpwOutY);		
		mRef->outPhase	(rtlOutPhase);	mDUT->outPhase	(mpwOutPhase);

		//member init
		mCnt = 6;
		mErrNum = 0;
		mSampleNum = sampleNum;
		mChipNum = chipNum;
		mTotalTestNum = 0;
		srand(time(NULL));
	}
	
	~TestBenchOfSub2(void)
    {
		delete mRef;
		delete mDUT;
    }
};
#endif