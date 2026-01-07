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

	//VerilatedNCO*			mDUT;
	WrapperOfNCO*			mDUT;

	uint32_t mFCW;
	int mErrUnsigned;
	int mErrSigned;

	int bitSerial;
	int bitWidth;
	int bitSerialLatency;
	int phaseAccNum;
	int cordicElmtNum;
	int outputTermNum;
	int pipelineLatency;

//3. methods
	void testMon();
	void disableDUT();
	void enableDUT();		

//4. con/destructor
	TestBench(sc_module_name name, uint32_t inFCW) :
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

		//mDUT = new VerilatedNCO("mpwNCO");
		mDUT = new WrapperOfNCO("mpwNCO");
		mDUT->clk(clk);
		mDUT->en(tbEn);
		mDUT->inMode(tbInMode);
		mDUT->inFCW(tbInFCW);
		mDUT->outX(mpwOutX);
		mDUT->outY(mpwOutY);
		mDUT->outVldX(mpwOutVldX);
		mDUT->outVldY(mpwOutVldY);

		//member init
		mFCW = inFCW;
		mErrUnsigned = 0;
		mErrSigned = 0;

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