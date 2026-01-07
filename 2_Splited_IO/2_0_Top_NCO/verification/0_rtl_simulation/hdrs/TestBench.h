#ifndef _RTL_NCO_TB_H_
#define _RTL_NCO_TB_H_

#include <systemc.h>
#include <queue>
#include "TimedNCO.h"
#include "VerilatedNCO.h"
using std::queue;

//2. Latencies
#ifdef DUT_VERILATED
	#define L_PIPE 		6	// splited i/o, bitSerial struct
#else
	#define L_PIPE 		0	// parallel i/o, no bitSerial
#endif

#define L_OUTPUT	10 	// {sub1: 1} + {pipelined sub2: 8} + {sub3: 1}
//--------------------------------

SC_MODULE(TestBench)
{
//1. tb signal
	//ctrl
	sc_clock                clk;
	sc_signal<bool>			tbEn;
	sc_signal<bool>			tbInMode;
	sc_signal<bool>			tbInSelXY;

	//input 
	sc_signal<sc_uint<20>>	tbInFCW;

	//output
 	sc_signal<sc_uint<12>>	refOutData;
 	sc_signal<sc_uint<12>>	dutOutData;
	sc_signal<bool>			dutOutVld;

//2. tb component
//Ref.
	TimedNCO*				mRef;	//Ref.

//DUT
	VerilatedNCO*			mDUT;

	//members
	int mPipeLatency;

	int mSampleNum;
	int mClockCnt;
	int mTestNum;
	int mErrNum;

//3. methods
	void testMon();
	void testPowerOfTwoFCW(bool mode, bool selXY, uint32_t sampleNum = 1000);
	void setTest(bool mode, bool selXY, uint32_t fcw);
	template<typename Cast>
	void runTest(bool mode, bool selXY, uint32_t fcw, uint32_t sampleNum);
	void reportTest();

	void disableDUT();
	void enableDUT();

	

//4. con/destructor
	TestBench(sc_module_name name, uint32_t sampleNum) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbEn("tbEn"),
		tbInMode("tbInMode"),
		tbInSelXY("inSelXY"),
        tbInFCW("tbInFCW"),
    	refOutData("refOutData"),
        dutOutData("dutOutData"),
        dutOutVld("dutOutVld")
	{
		SC_THREAD(testMon);
        sensitive << clk;
		
		//timed model(ref)
		mRef = new TimedNCO("ref_TimedNCO");

		//verilated model(dut)
		mDUT = new VerilatedNCO("dut_VerilatledNCO");

		//inputs
		mRef->clk(clk);				mDUT->clk(clk);
		mRef->en(tbEn);				mDUT->en(tbEn);
		mRef->inMode(tbInMode);		mDUT->inMode(tbInMode);
		mRef->inSelXY(tbInSelXY);	mDUT->inSelXY(tbInSelXY);
		mRef->inFCW(tbInFCW);		mDUT->inFCW(tbInFCW);

		//outputs
		mRef->outData(refOutData);	mDUT->outData(dutOutData);
									mDUT->outVld(dutOutVld);

		//member init
		mSampleNum = sampleNum;
		mErrNum = 0;
		mTestNum = 0;
		mClockCnt = 0;
		mPipeLatency = L_PIPE * L_OUTPUT;
	}
	
	~TestBench(void)
    {
		delete mRef;
		delete mDUT;
    }
};
#endif