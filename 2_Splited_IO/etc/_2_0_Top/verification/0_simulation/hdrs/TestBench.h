#ifndef _SC_NCO_TB_H_
#define _SC_NCO_TB_H_

#include <systemc.h>
#include "define.h"
#include "UntimedNCO.h"

// Constants ---------------------
//0. clk
#define SYS_CLK	 50
	
//1. test model
//REF
#define REF_UNTIMED
//#define REF_TIMED

//DUT
//#define DUT_TIMED
#define DUT_VERILATED
#ifdef DUT_VERILATED
	#include "VerilatedNCO.h"
#endif


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
 	sc_signal<sc_uint<12>>	tbOutData;

//2. tb component
//Ref.
#ifdef REF_UNTIMED
	UntimedNCO*				mRef;	//Ref.
#endif
#ifdef REF_TIMED
	TimedNCO*				mRef;	//Ref.
#endif

//DUT
#ifdef DUT_TIMED
	TimedNCO*				mDUT;			
#endif
#ifdef DUT_VERILATED
	VerilatedNCO*			mDUT;
	sc_signal<bool>			sOutVld;
#endif

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
	TestBench(sc_module_name name, uint32_t inFCW) :
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
#ifdef DUT_TIMED
		mDUT = new TimedNCO("timed_NCO");
#endif
#ifdef DUT_VERILATED
		mDUT = new VerilatedNCO("Veriatled_NCO");
		mDUT->outVld(sOutVld);
#endif
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
	
	~TestBench(void)
    {
		printf("end");
		delete mRef;
		delete mDUT;
    }
};
#endif