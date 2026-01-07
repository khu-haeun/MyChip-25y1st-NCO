#ifndef _SC_NCO_TB_H_
#define _SC_NCO_TB_H_

#include <systemc.h>

// Constants ---------------------
//0. clk
#define SYS_CLK	 50
#include "VerilatedNCO.h"
#include "WrapperOfNCO.h"

//#define DEV
SC_MODULE(GenerateSinusoid)
{
//1. tb signal
	//ctrl
	sc_clock                clk;
	sc_signal<bool>			tbEn;
	sc_signal<bool>			tbInMode;
	sc_signal<bool>			tbInSelXY;

	//input 
	sc_signal<sc_uint<20>>	tbInFCW;

	//output ref
 	sc_signal<sc_uint<12>>	refOutData;
	sc_signal<bool>			refOutVld;

	//output mpw
	sc_signal<sc_uint<12>>	mpwOutData;
	sc_signal<bool>			mpwOutVld;

//2. tb component
	VerilatedNCO*			mRef;

#ifdef DEV
	VerilatedNCO*			mDUT;
#else
	WrapperOfNCO*			mDUT;
#endif

	uint32_t mFCW;
	bool mBIAS;
	bool mXY;
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
	void genSinusoid();
	void disableDUT();
	void enableDUT();		

//4. con/destructor
	GenerateSinusoid(sc_module_name name, uint32_t inFCW, bool inBIAS, bool inXY) :
		sc_module(name),
		clk("clk", 20, SC_NS, 0.5, 0.0, SC_NS, false),
		tbEn("tbEn"),
		tbInMode("tbInMode"),
        tbInFCW("tbInFCW"),
        tbInSelXY("tbInSelXY"),
        refOutVld("refOutVld"),
        refOutData("refOutData"),
		mpwOutVld("mpwOutVld"),
        mpwOutData("mpwOutData")
	{
		SC_THREAD(genSinusoid);
        sensitive << clk;
		
		mRef = new VerilatedNCO("refNCO");
		mRef->clk(clk);
		mRef->en(tbEn);
		mRef->inMode(tbInMode);
		mRef->inSelXY(tbInSelXY);
		mRef->inFCW(tbInFCW);
		mRef->outData(refOutData);
		mRef->outVld(refOutVld);

	#ifdef DEV
		mDUT = new VerilatedNCO("mpwNCO");
	#else
		mDUT = new WrapperOfNCO("mpwNCO");
	#endif
		mDUT->clk(clk);
		mDUT->en(tbEn);
		mDUT->inMode(tbInMode);
		mDUT->inSelXY(tbInSelXY);
		mDUT->inFCW(tbInFCW);
		mDUT->outData(mpwOutData);
		mDUT->outVld(mpwOutVld);

		//member init
		mFCW = inFCW;
		mBIAS = inBIAS;
		mXY = inXY;
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
	
	~GenerateSinusoid(void)
    {
		delete mRef;
		delete mDUT;
    }
};
#endif