#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include "verilated.h"


//timed model
#include "TestBench.h"

void TestBench::testMon(){

	for(int caseCnt = 0; caseCnt < 4; caseCnt++){
		this->disableDUT();
		bool testMode  = (caseCnt & 2) ? 1:0;
		bool testSelXY = (caseCnt & 1) ? 1:0;
		
		for(uint32_t fcw = 1; fcw < 524289; fcw <<= 1){
			runTest(testMode, testSelXY, fcw);
		}
		runTest(testMode, testSelXY, 524287);
	}
	
	//3. result
	printf( "-----------< Result >-----------\n" );
	if(mErrNum == 0) {
		printf("TEST PASS :)\n");
	} else {
		printf("TEST FAIL :(\n");
	}
	printf( "-----------------------------\n" );
	printf("sampleNum: %d\n", mTotalSample);
	printf("ErrNum: %d\n", mErrNum);
	printf( "-----------< Result >-----------\n" );
	
    sc_stop();
}

void TestBench::disableDUT(){
	tbEn.write(0);
	wait(clk.posedge_event());
}

void TestBench::enableDUT(){
	tbEn.write(1);
	wait(clk.posedge_event());
}

void TestBench::runTest(bool testMode, bool testSelXY, uint32_t fcw){
	bool isEqual;
	
	tbInMode.write(testMode);
	tbInSelXY.write(testSelXY);
	tbInFCW.write(sc_uint<20>(fcw));
	this->enableDUT();
		
	for(uint32_t i = 0; i< 70; ++i){
		printf(	"[MODE:%d][Sel:%s][FCW:%8d][%8d] : [ref/(%s,%s)] vs [mpw/(%s, %s)] ---> %s | Err=%d\n",
			testMode, 
			(testSelXY) ? "X":"Y", 
			fcw,
			i, 
			"xxxxx", "x",
			"xxxxx", "x",
			"FLUSH",
			mErrNum
		);
		//pipeline delay
		wait(clk.posedge_event());
	}

	for(uint32_t i = 70; i < mSampleNum; ++i){
		int16_t outDataDUT = (sc_int<12>)dutOutData.read();
		bool outVldDUT = dutOutVld.read();
		int16_t outDataRef = (sc_int<12>)refOutData.read();
		bool outVldRef = refOutVld.read();
		isEqual = ((outDataDUT == outDataRef) && (outVldDUT == outVldRef)) ? true : false;
		
		printf(	"[MODE:%d][Sel:%s][FCW:%8d][%8d] : [ref/(%5d,%d)] vs [mpw/(%5d, %d)] ---> %s | Err=%d\n",
			testMode, 
			(testSelXY) ? "X":"Y", 
			fcw,
			i, 
			outDataRef, outVldRef,
			outDataDUT, outVldDUT, 
			isEqual ? "PASS ":"FAIL ",
			mErrNum
		);
		
		if(!isEqual){
			mErrNum++;
		}
		
		fflush(stdout);
		wait(clk.posedge_event());
	}

	mTotalSample += mSampleNum;
}