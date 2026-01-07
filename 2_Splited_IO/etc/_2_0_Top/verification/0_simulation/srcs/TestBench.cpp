#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include "verilated.h"

//untimed model(reference)
#include "UntimedNCO.h"

//timed model
#include "TestBench.h"

void TestBench::testMon(){
	setCase(eTestCase::SIGNED_Y);
	compOutput(eTestCase::SIGNED_Y, mRef->getTestVectorOfUntimedNCO().sampleNum);

	setCase(eTestCase::SIGNED_X);
	compOutput(eTestCase::SIGNED_X, mRef->getTestVectorOfUntimedNCO().sampleNum);	
	
	setCase(eTestCase::UNSIGN_Y);
	compOutput(eTestCase::UNSIGN_Y, mRef->getTestVectorOfUntimedNCO().sampleNum);	
	
	setCase(eTestCase::UNSIGN_X);
	compOutput(eTestCase::UNSIGN_X, mRef->getTestVectorOfUntimedNCO().sampleNum);

	printf( "\n----------<Result>-----------\n" );
	printf("SIGNED_Y : %d \n", mCaseResult[0]); 
	printf("SIGNED_X : %d \n", mCaseResult[1]);
	printf("UNSIGN_Y : %d \n", mCaseResult[2]);
	printf("UNSIGN_X : %d \n", mCaseResult[3]);
	printf( "-----------------------------\n" );

	Verilated::threadContextp()->coveragep()->write("./logs/coverage.dat");

    sc_stop();
}

void TestBench::setCase(eTestCase testCase){
	mCurrCase = testCase;
	mCurrMode = (int)mCurrCase & 0b10;
	mCurrSelXY = (int)mCurrCase & 0b01;

	//Untimed Ref.
	mRef->generateTestVectorOfUntimedNCO(mFCW, mCurrMode);

	//Timed model
	this->disableDUT();
	tbInFCW.write( sc_uint<20>(mFCW) );
	tbInMode.write(mCurrMode);
	tbInSelXY.write(mCurrSelXY);
	tbEn.write(1);
	wait(clk.posedge_event());
}

void TestBench::compOutput(eTestCase currCase, uint32_t sampleNum){
	//0. init
	mErrNum = 0;

	//1. pipeline latency
	int latency = mOutputLatency * (mPipeLatency+1);
	for(int i=0; i < latency; i++){
		wait(clk.posedge_event());
	}

	//2. comp
	bool isEqual;
	
	switch(currCase){
	case eTestCase::SIGNED_Y:
		for(uint32_t i = 0; i < sampleNum; ++i){
			int16_t DUT = (sc_int<12>)tbOutData.read();
			int16_t Ref = mRef->getTestVectorOfUntimedNCO().sub3.outY[i];
			isEqual = (DUT == Ref) ? true : false;
			//printf(	"[%d][%8d]Ref = %6d / DUT = %6d ==> %d\n", (int)currCase, i, Ref, DUT, isEqual);
			
			if(!isEqual) {
				mErrNum++;
			}

			for(int i=0; i < mPipeLatency + 1; ++i){
				wait(clk.posedge_event());
			}
		}
		break;
	case eTestCase::SIGNED_X:
		for(uint32_t i = 0; i < sampleNum; ++i){
			int16_t DUT = (sc_int<12>)tbOutData.read();
			int16_t Ref = mRef->getTestVectorOfUntimedNCO().sub3.outX[i];
			isEqual = (DUT == Ref) ? true : false;
			//printf(	"[%d][%8d]Ref = %6d / DUT = %6d ==> %d\n", (int)currCase, i, Ref, DUT, isEqual);
			
			if(!isEqual) {
				mErrNum++;
			}

			for(int i=0; i < mPipeLatency + 1; ++i){
				wait(clk.posedge_event());
			}
		}
		break;
	case eTestCase::UNSIGN_Y:
		for(uint32_t i = 0; i < sampleNum; ++i){
			uint16_t DUT = (sc_uint<12>)tbOutData.read();
			int16_t Ref = mRef->getTestVectorOfUntimedNCO().sub3.outY[i];
			isEqual = (DUT == Ref) ? true : false;
			//printf(	"[%d][%8d]Ref = %6d / DUT = %6d ==> %d\n", (int)currCase, i, Ref, DUT, isEqual);
			
			if(!isEqual) {
				mErrNum++;
			}
			
			for(int i=0; i < mPipeLatency + 1; ++i){
				wait(clk.posedge_event());
			}
		}
		break;
	case eTestCase::UNSIGN_X:
		for(uint32_t i = 0; i < sampleNum; ++i){
			uint16_t DUT = (sc_uint<12>)tbOutData.read();
			int16_t Ref = mRef->getTestVectorOfUntimedNCO().sub3.outX[i];
			isEqual = (DUT == Ref) ? true : false;
			//printf(	"[%d][%8d]Ref = %6d / DUT = %6d ==> %d\n", (int)currCase, i, Ref, DUT, isEqual);
			
			if(!isEqual) {
				mErrNum++;
			}
			
			for(int i=0; i < mPipeLatency + 1; ++i){
				wait(clk.posedge_event());
			}
		}
		break;
	}

	//3. result
	printf( "\n----------<case:%d>-----------\n", (int)currCase);
	printf("sampleNum: %d\n", sampleNum);
	printf("FCW: %d\n", mFCW);
	if(mErrNum == 0) {
		mCaseResult[(int)currCase] = true;
		printf("TEST PASS :)\n");
	}
	else {
		mCaseResult[(int)currCase] = false;
		printf("TEST FAIL :(\n");
	}
	printf("errors: %d\n",mErrNum);
	printf( "-----------------------------\n" );
}

void TestBench::disableDUT(){
	tbEn.write(0);
	wait(clk.posedge_event());
}