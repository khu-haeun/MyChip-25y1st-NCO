#ifndef _SC_NCO_TB_H_
#define _SC_NCO_TB_H_

#include <systemc.h>
#include "define.h"
#include "UntimedNCO.h"
#include "TimedNCO.h"
#include "TimedPhaseAccumulator.h"
#include "TimedCORDICElement.h"
#include "TimedOutputTerminal.h"

// Constants ---------------------
//0. clk
#define SYS_CLK	 50

//1. Latencies
#define BIT_SERIAL OFF
#if !(BIT_SERIAL)
	#define L_PIPE 		0	// parallel i/o, no bitSerial
#else
	#define L_PIPE 		6	// splited i/o, bitSerial struct
#endif
	#define L_OUTPUT	10 	// {sub1: 1} + {pipelined sub2: 8} + {sub3: 1}

//2. test model
#define DUT_TIMED
//--------------------------------


SC_MODULE(TestBenchOfTimedNCO)
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
 	sc_signal<sc_uint<12>>	tbOutData;

//2. tb component
	//Ref
	UntimedNCO*				mRef;

	//DUT
	TimedNCO*				mDUT;

	//case
	enum class eTestCase {//	   InMode	InSelXY
		SIGNED_Y,		  //0 : 0b 0		0
		SIGNED_X,		  //1 : 0b 0		1
		UNSIGN_Y,		  //2 : 0b 1		0
		UNSIGN_X,		  //3 : 0b 1		1
	};

	//members
	int mPipeLatency;
	int mOutputLatency;

	uint32_t mFCW;
	int mErrNum;
	bool mCaseResult[4];

	eTestCase mCurrCase;
	bool mCurrMode;
	bool mCurrSelXY;

//3. methods
	void testMon();
	void setCase(eTestCase testCase);
	void compOutput(eTestCase currCase, uint32_t sampleNum);
	void disableDUT();
	void print(bool isEqual);

//4. con/destructor
	TestBenchOfTimedNCO(sc_module_name name, uint32_t inFCW) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbEn("tbEn"),
		tbInMode("tbInMode"),
		tbInSelXY("inSelXY"),
        tbInFCW("tbInFCW"),
        tbOutData("tbOutData")
	{
		SC_THREAD(testMon);
        sensitive << clk;
		
		//untimed model(ref)
		mRef = new UntimedNCO(SYS_CLK);

		//timed model
		mDUT = new TimedNCO("timed_NCO");
		mDUT->clk(clk);
		mDUT->en(tbEn);
		mDUT->inMode(tbInMode);
		mDUT->inSelXY(tbInSelXY);
		mDUT->inFCW(tbInFCW);
		mDUT->outData(tbOutData);

		//member init
		mFCW = inFCW;
		mErrNum = 0;
		mCaseResult[0] = true;
		mCaseResult[1] = true;
		mCaseResult[2] = true;
		mCaseResult[3] = true;
		mPipeLatency = L_PIPE;
		mOutputLatency = L_OUTPUT;
	}
	
	~TestBenchOfTimedNCO(void)
    {
		delete mRef;
		delete mDUT;
    }
};
#endif