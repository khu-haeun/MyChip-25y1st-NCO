#ifndef _SC_SUB1_TB_H_
#define _SC_SUB1_TB_H_

#include <systemc.h>
#include "VerilatedSub1.h"
#include "WrapperOfSub1.h"
#define BIT_SERIAL 2
#define BIT_WIDTH 12
#define L_PIPE 		6	// splited i/o, bitSerial struct
#define L_OUTPUT	10 	// {sub1: 1} + {pipelined sub2: 8} + {sub3: 1}

//#define DEV

SC_MODULE(TestBenchOfSub1)
{
//1. tb signal
	//inputs(common)
	sc_clock                clk;
	sc_signal<bool>			tbEn;
	sc_signal<sc_uint<20>>	tbInFCW;

	//RTL(REF)
	VerilatedSub1*			mRTL;
	sc_signal<bool>			rtlOutVld;
	sc_signal<bool>			rtlOutIsNeg;
 	sc_signal<sc_uint<2>>	rtlOutPhase;

	//MPW(DUT)
#ifdef DEV
	VerilatedSub1*			mMPW;
#else
	WrapperOfSub1*			mMPW;
#endif
	sc_signal<bool>			mpwOutVld;
	sc_signal<bool>			mpwOutIsNeg;
 	sc_signal<sc_uint<2>>	mpwOutPhase;

	uint32_t mFCW;
	uint32_t mSampleNum;
	uint32_t mTotalTestNum;
	uint32_t mErrNum;
	uint32_t mChipNum;

//3. methods
	void testMon();
	void disable();
	void enable();
	void readAndPrint();
	void compare();
	void printResult();

//4. con/destructor
	TestBenchOfSub1(sc_module_name name, uint32_t sampleNum, uint32_t chipNum) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbEn("tbEn"),
        tbInFCW("tbInFCW"),

		//RTL						//MPW(DUT)
		rtlOutVld("rtlOutVld"),		mpwOutVld("mpwOutVld"),
		rtlOutIsNeg("rtlOutIsNeg"),	mpwOutIsNeg("mpwOutIsNeg"),
        rtlOutPhase("rtlOutPhase"),	mpwOutPhase("mpwOutPhase")
	{
		SC_THREAD(testMon);
        sensitive << clk;
		
		//duts
		mRTL = new VerilatedSub1("REF_RTL_sub1");
#ifdef DEV
		mMPW = new VerilatedSub1("DUT_MPW_sub1");
#else
		mMPW = new WrapperOfSub1("DUT_MPW_sub1");
#endif

		//inputs(common)
		mRTL->clk(clk);				mMPW->clk(clk);
		mRTL->en(tbEn);				mMPW->en(tbEn);
		mRTL->inFCW(tbInFCW);		mMPW->inFCW(tbInFCW);

		//outputs
		mRTL->outVld(rtlOutVld);	mMPW->outVld(mpwOutVld);
		mRTL->outIsNeg(rtlOutIsNeg);mMPW->outIsNeg(mpwOutIsNeg);
		mRTL->outPhase(rtlOutPhase);mMPW->outPhase(mpwOutPhase);

		//member init
		mSampleNum = sampleNum;
		mChipNum = chipNum;
		mTotalTestNum = 0;
		mErrNum = 0;
	}
	
	~TestBenchOfSub1(void)
    {
		delete mRTL;
		delete mMPW;
    }
};
#endif