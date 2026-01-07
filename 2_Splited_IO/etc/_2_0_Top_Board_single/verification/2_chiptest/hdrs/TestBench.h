#ifndef _PCB_NCO_TB_H_
#define _PCB_NCO_TB_H_

#include <systemc.h>

// Constants ---------------------
//0. clk
#define SYS_CLK	 50
	
#include "VerilatedNCO.h"
#include "WrapperOfNCO.h"

//#define DEV
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
	sc_signal<bool>			refOutVld;

 	sc_signal<sc_uint<12>>	dutOutData;
	sc_signal<bool>			dutOutVld;




//2. tb component
	VerilatedNCO*			mRef;

#ifdef DEV
	VerilatedNCO*			mDUT;
#else
	WrapperOfNCO*			mDUT;
#endif

	uint32_t mSampleNum;
	uint32_t mTotalSample;
	int	mErrNum;


	int bitSerial;
	int bitWidth;
	int bitSerialLatency;
	int phaseAccNum;
	int cordicElmtNum;
	int outputTermNum;
	int pipelineLatency;

//3. methods
	void testMon();
	void runTest(bool testMode, bool testSelXY, uint32_t fcw);
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
		
		//untimed model(ref)
		mRef = new VerilatedNCO("refNCO");

	#ifdef DEV
		mDUT = new VerilatedNCO("mpwNCO");
	#else
		mDUT = new WrapperOfNCO("mpwNCO");
	#endif

		//inputs
		mRef->clk(clk);				mDUT->clk(clk);
		mRef->en(tbEn);				mDUT->en(tbEn);
		mRef->inMode(tbInMode);		mDUT->inMode(tbInMode);
		mRef->inSelXY(tbInSelXY);	mDUT->inSelXY(tbInSelXY);
		mRef->inFCW(tbInFCW);		mDUT->inFCW(tbInFCW);

		//outputs
		mRef->outData(refOutData);	mDUT->outData(dutOutData);
		mRef->outVld(refOutVld);   mDUT->outVld(dutOutVld);

		//member init
		mSampleNum = sampleNum;
		mTotalSample = 0;
		mErrNum = 0;

		bitSerial = 2;
		bitWidth = 12;
		bitSerialLatency = 12/2;
		phaseAccNum = 1;
		cordicElmtNum = 8;
		outputTermNum = 1;
		pipelineLatency = phaseAccNum + cordicElmtNum + outputTermNum + 1;
		//pipelineLatency = 0;
	}
	
	~TestBench(void)
    {
		printf("end");
		delete mRef;
		delete mDUT;
    }
};
#endif