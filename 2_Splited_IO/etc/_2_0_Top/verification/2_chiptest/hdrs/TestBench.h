#ifndef _SC_NCO_TB_H_
#define _SC_NCO_TB_H_

#include <systemc.h>
#include "define.h"
#include "UntimedNCO.h"

// Constants ---------------------
//0. clk
#define SYS_CLK	 50
	
#include "VerilatedNCO.h"
#include "WrapperOfNCO.h"

#define TB_TEST

SC_MODULE(TestBench)
{
//1. tb signal
	//ctrl
	sc_clock                clk;
	sc_signal<bool>			tbEn;
	sc_signal<bool>			tbInMode;

	//input 
	sc_signal<sc_uint<20>>	tbInFCW;

	//output ref
 	sc_signal<sc_uint<12>>	refOutX;
 	sc_signal<sc_uint<12>>	refOutY;
	sc_signal<bool>			refOutVldX;
	sc_signal<bool>			refOutVldY;

	//output mpw
	sc_signal<sc_uint<12>>	mpwOutX;
 	sc_signal<sc_uint<12>>	mpwOutY;
	sc_signal<bool>			mpwOutVldX;
	sc_signal<bool>			mpwOutVldY;



//2. tb component
	VerilatedNCO*			mRef;

#ifdef TB_TEST
	VerilatedNCO*			mDUT;
#else
	WrapperOfNCO*			mDUT;
#endif

	uint32_t mSampleNum;
	uint32_t mFCW;
	bool mCurrMode;
	int mTotalTestNum;
	int mErrNum;

//3. methods
	void testMon();
	void disable();
	void init();
	void enable();	
	void flush();
	void readAndPrint();
	void compare();
	void printResult();	

//4. con/destructor
	TestBench(sc_module_name name, uint32_t sampleNum) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbEn("tbEn"),
		tbInMode("tbInMode"),
        tbInFCW("tbInFCW"),
        refOutVldX("refOutVldX"),
        refOutVldY("refOutVldY"),
        refOutX("refOutX"),
        refOutY("refOutY"),
		mpwOutVldX("mpwOutVldX"),
        mpwOutVldY("mpwOutVldY"),
        mpwOutX("mpwOutX"),
        mpwOutY("mpwOutY")
	{
		SC_THREAD(testMon);
        sensitive << clk;
		
		//untimed model(ref)
		mRef = new VerilatedNCO("refNCO");
		mRef->clk(clk);
		mRef->en(tbEn);
		mRef->inMode(tbInMode);
		mRef->inFCW(tbInFCW);
		mRef->outX(refOutX);
		mRef->outY(refOutY);
		mRef->outVldX(refOutVldX);
		mRef->outVldY(refOutVldY);

#ifdef TB_TEST
		mDUT = new VerilatedNCO("mpwNCO");
#else
		mDUT = new WrapperOfNCO("mpwNCO");
#endif
		mDUT->clk(clk);
		mDUT->en(tbEn);
		mDUT->inMode(tbInMode);
		mDUT->inFCW(tbInFCW);
		mDUT->outX(mpwOutX);
		mDUT->outY(mpwOutY);
		mDUT->outVldX(mpwOutVldX);
		mDUT->outVldY(mpwOutVldY);

		//member init
		mSampleNum = sampleNum;
		mFCW = 0;
		mCurrMode = false;
		mTotalTestNum = 0;
		mErrNum = 0;
	}
	
	~TestBench(void)
    {
		delete mRef;
		delete mDUT;
    }
};
#endif