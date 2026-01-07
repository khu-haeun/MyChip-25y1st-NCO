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
//unsigned test
	uint32_t sampleNum = 2000;
	this->disableDUT();
	tbInFCW.write( sc_uint<20>(mFCW) );
	tbInMode.write(1);
	this->enableDUT();
	wait(clk.posedge_event());
	wait(clk.posedge_event());
	wait(clk.posedge_event());
	wait(clk.posedge_event());

	

	//0. init
	mErrNum = 0;

	bool isEqual;
	for(uint32_t i = 0; i < sampleNum; ++i){
		uint16_t xDUT = (sc_uint<12>)mpwOutX.read();
		bool xVldDUT = mpwOutVldX.read();
		uint16_t yDUT = 0;//(sc_uint<12>)mpwOutY.read();
		bool yVldDUT = 0;//mpwOutVldY.read();

		uint16_t xRef = (sc_uint<12>)refOutX.read();
		bool xVldRef = refOutVldX.read();
		uint16_t yRef = (sc_uint<12>)refOutY.read();
		bool yVldRef = refOutVldY.read();
		
		isEqual = ((xDUT == xRef) /*&& (yDUT == yRef)*/) ? true : false;
		printf("[%8d] (X,Y) : ref/(%5d_%d,%5d_%d) | dut/(%5d_%d,%5d_%d) ==> ", i, 
			xRef, xVldRef, yRef, yVldRef,
			xDUT, xVldDUT, yDUT, yVldDUT
		);
		
		if(isEqual) {
			printf("PASS, ErrNum: %d\n",mErrNum);
		} else {
			printf("FAIL, ErrNum: %d\n",mErrNum);
			mErrNum++;
		}
		wait(clk.posedge_event());
	}

	//3. result
	printf( "-----------< Result >-----------\n" );
	printf("sampleNum: %d\n", sampleNum);
	printf("FCW: %d\n", mFCW);
	printf( "-----------------------------\n" );
	if(mErrNum == 0) {
		printf("TEST PASS :)\n");
	} else {
		printf("TEST FAIL :( ==> errors: %d\n",mErrNum);
	}
	printf( "-----------< Result >-----------\n" );

//signed test
	this->disableDUT();
	tbInFCW.write( sc_uint<20>(mFCW) );
	tbInMode.write(0);
	this->enableDUT();

	//0. init
	for(uint32_t i = 0; i < sampleNum; ++i){
		int16_t xDUT = (sc_int<12>)mpwOutX.read();
		bool xVldDUT = mpwOutVldX.read();
		int16_t yDUT = 0;//(sc_int<12>)mpwOutY.read();
		bool yVldDUT = 0;//mpwOutVldY.read();

		int16_t xRef = (sc_int<12>)refOutX.read();
		bool xVldRef = refOutVldX.read();
		int16_t yRef = (sc_int<12>)refOutY.read();
		bool yVldRef = refOutVldY.read();
		
		isEqual = ((xDUT == xRef)/* && (yDUT == yRef)*/) ? true : false;

		printf("[%8d] (X,Y) : ref/(%5d_%d,%5d_%d) | dut/(%5d_%d,%5d_%d) ==> ", i, 
			xRef, xVldRef, yRef, yVldRef,
			xDUT, xVldDUT, yDUT, yVldDUT
		);

		if(isEqual) {
			printf("PASS, ErrNum: %d\n",mErrNum);
		} else {
			printf("FAIL, ErrNum: %d\n",mErrNum);
			mErrNum++;
		}
		wait(clk.posedge_event());
	}

	//3. result
	printf( "-----------< Result >-----------\n" );
	printf("sampleNum: %d\n", sampleNum);
	printf("FCW: %d\n", mFCW);
	printf( "-----------------------------\n" );
	if(mErrNum == 0) {
		printf("TEST PASS :)\n");
	} else {
		printf("TEST FAIL :( ==> errors: %d\n",mErrNum);
	}
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