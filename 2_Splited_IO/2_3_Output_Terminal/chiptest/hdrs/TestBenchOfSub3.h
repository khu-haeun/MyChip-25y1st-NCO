#ifndef _SC_SUB3_TB_H_
#define _SC_SUB3_TB_H_

#include <systemc.h>
#include "VerilatedSub3.h"
#include "WrapperOfSub3.h"
#include <stdlib.h>
#include <time.h>

#define BIT_WIDTH 12
#define BIT_SERIAL 2

//#define DEV

SC_MODULE(TestBenchOfSub3)
{
//1. tb signal
	//inputs(common)
	sc_clock                clk;
	sc_signal<bool>			tbInRdy;
	sc_signal<bool>			tbInSelXY;
	sc_signal<bool>			tbInMode;
	sc_signal<bool>			tbInIsNeg;
	sc_signal<sc_uint<2>>	tbInX;
	sc_signal<sc_uint<2>>	tbInY;

	//outputs for Ref
	VerilatedSub3*			mRef;
	sc_signal<bool>			rtlOutVld;
	sc_signal<sc_uint<12>>	rtlOutData;

	//outputs for DUT
#ifdef DEV
	VerilatedSub3*			mDUT;
#else
	WrapperOfSub3*			mDUT;
#endif
	sc_signal<bool>			mpwOutVld;
	sc_signal<sc_uint<12>>	mpwOutData;

	uint32_t mSampleNum;
	uint32_t mTotalTestNum;
	uint32_t mChipNum;
	int mErrNum;
	int mCnt;

//3. methods
	void testMon();
	void init(bool mode, bool sel);
	void generateRandomInput();
	void readAndPrint();
	void compare();
	void printResult();

//4. con/destructor
	TestBenchOfSub3(sc_module_name name, uint32_t sampleNum, uint32_t chipNum) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbInRdy		("tbInRdy"),
		tbInSelXY	("tbInSelXY"),
		tbInMode	("tbInMode"),
		tbInIsNeg	("tbInIsNeg"),
		tbInX		("tbInX"),
		tbInY		("tbInY"),

		rtlOutVld	("refOutVld"),		mpwOutVld	("mpwOutVld"),
		rtlOutData	("refOutPhase"),	mpwOutData	("mpwOutPhase")
	{
		SC_THREAD(testMon);
        sensitive << clk;
		
		//ref
		mRef  = new VerilatedSub3("Verilated_sub3");
#ifdef DEV
		mDUT  = new VerilatedSub3("Wrapper_of_sub2");
#else
		mDUT  = new WrapperOfSub3("Wrapper_of_sub2");
#endif

		//inputs(common)
		mRef->clk(clk);					mDUT->clk(clk);
		mRef->inRdy		(tbInRdy	);	mDUT->inRdy		(tbInRdy	);
		mRef->inSelXY	(tbInSelXY	);	mDUT->inSelXY	(tbInSelXY	);		
		mRef->inMode	(tbInMode	);	mDUT->inMode	(tbInMode	);	
		mRef->inIsNeg	(tbInIsNeg	);	mDUT->inIsNeg	(tbInIsNeg	);		
		mRef->inX		(tbInX		);	mDUT->inX		(tbInX		);		
		mRef->inY		(tbInY		);	mDUT->inY		(tbInY		);	

		//outputs
		mRef->outVld	(rtlOutVld);	mDUT->outVld	(mpwOutVld);			
		mRef->outData	(rtlOutData);	mDUT->outData	(mpwOutData);

		//member init
		mErrNum = 0;
		mCnt = 6;
		mSampleNum = sampleNum;
		mTotalTestNum = 0;
		mChipNum = chipNum;
		srand(time(NULL));
	}
	
	~TestBenchOfSub3(void)
    {
		delete mRef;
		delete mDUT;
    }
};
#endif