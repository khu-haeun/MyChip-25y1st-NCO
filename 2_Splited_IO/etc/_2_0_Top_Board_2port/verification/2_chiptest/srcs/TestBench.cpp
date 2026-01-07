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

//signed test
	uint32_t sampleNum = 524288;
	this->disableDUT();
	tbInFCW.write( sc_uint<20>(mFCW) );
	tbInMode.write(0);
	tbEn.write(1);
	//this->enableDUT();

	for(int i = 0; i<pipelineLatency*bitSerialLatency; i++){
		int16_t xDUT = (sc_int<12>)mpwOutX.read();
		bool xVldDUT = mpwOutVldX.read();
		int16_t yDUT = (sc_int<12>)mpwOutY.read();
		bool yVldDUT = mpwOutVldY.read();

		int16_t xRef = (sc_int<12>)refOutX.read();
		bool xVldRef = refOutVldX.read();
		int16_t yRef = (sc_int<12>)refOutY.read();
		bool yVldRef = refOutVldY.read();
		printf("[FCW=%8d] | [(X, VldX), (Y, VldY)] : [ref/(%5d,%d), (%5d,%d)] vs [mpw/(%5d, %d), (%5d,%d)] ---> Flush, ErrNum: %d\n", 
			mFCW,
			xRef, xVldRef, yRef, yVldRef,
			xDUT, xVldDUT, yDUT, yVldDUT,
			mErrSigned
		);
		fflush(stdout);
		wait(clk.posedge_event());
	}

	//0. init
	bool isEqual;

	for(uint32_t i = pipelineLatency*bitSerialLatency; i < sampleNum; ++i){
		int16_t xDUT = (sc_int<12>)mpwOutX.read();
		bool xVldDUT = mpwOutVldX.read();
		int16_t yDUT = (sc_int<12>)mpwOutY.read();
		bool yVldDUT = mpwOutVldY.read();

		int16_t xRef = (sc_int<12>)refOutX.read();
		bool xVldRef = refOutVldX.read();
		int16_t yRef = (sc_int<12>)refOutY.read();
		bool yVldRef = refOutVldY.read();
		isEqual = ((xDUT == xRef) && (yDUT == yRef)) ? true : false;

		printf("[FCW=%8d] | [(X, VldX), (Y, VldY)] : [ref/(%5d,%d), (%5d,%d)] vs [mpw/(%5d, %d), (%5d,%d)] ---> %s, ErrNum: %d\n", 
			mFCW,
			xRef, xVldRef, yRef, yVldRef,
			xDUT, xVldDUT, yDUT, yVldDUT,
			isEqual ? "PASS": "FAIL",

			mErrSigned
		);

		fflush(stdout);

		if(!isEqual){
			mErrSigned++;
		}

		wait(clk.posedge_event());
	}

	//3. result
	printf( "-----------< Result >-----------\n" );
	if(mErrUnsigned == 0 && mErrSigned == 0) {
		printf("TEST PASS :)\n");
	} else {
		printf("TEST FAIL :(\n");
	}
	printf( "-----------------------------\n" );
	printf("sampleNum: %d\n", sampleNum);
	printf("FCW: %d\n", mFCW);
	printf("ErrNum: %d)\n", mErrUnsigned+mErrSigned);
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