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
	for(uint32_t mode=0; mode < 2; ++mode){
		mCurrMode = mode;
		
		for(int exp = 0; exp < 20; ++exp){
			mFCW = 1 << exp;
			//init
			disable();
			init();
			enable();
			flush();
			for(uint32_t i=0; i<mSampleNum; i++){
				printf("[%3d]",i);
				readAndPrint();
				compare();

				wait(clk.posedge_event());
			}	
			mTotalTestNum += mSampleNum;	
		}
		//mFCW = 524287;
		////init
		//disable();
		//init();
		//enable();
		//flush();
		//for(uint32_t i=0; i<mSampleNum; i++){
		//	printf("[%3d]",i);
		//	readAndPrint();
		//	compare();
		//	wait(clk.posedge_event());
		//}	
		//mTotalTestNum += mSampleNum;
	}


	//3. result
	printResult();

	Verilated::threadContextp()->coveragep()->write("./logs/coverage.dat");

    sc_stop();
}

void TestBench::disable(){
	tbEn.write(0);
	wait(clk.posedge_event());
}

void TestBench::init(){
	tbInFCW.write(mFCW);
	tbInMode.write(mCurrMode);
}

void TestBench::enable(){
	tbEn.write(1);
	wait(clk.posedge_event());
}

void TestBench::flush(){
	printf("flushing...\n");
	for(int i = 0; i < 71; i++){
		wait(clk.posedge_event());
	}
}

void TestBench::readAndPrint(){
	if(mCurrMode){
		int refX = (sc_uint<12>)refOutX.read();
		int refY = (sc_uint<12>)refOutY.read();
		int mpwX = (sc_uint<12>)mpwOutX.read();
		int mpwY = (sc_uint<12>)mpwOutY.read();
		printf("[%s][%d] ",
			((mCurrMode) ? "unsigned" : "__signed"),
			mFCW
		);
		printf("{X(vld, data), Y(vld, data)}");
		printf(" | ");
		printf("REF:{X(%d, %4d), Y(%d, %4d)}", refOutVldX.read(), (int)refX, refOutVldY.read(), (int)refY);
		printf(" | ");
		printf("DUT:{X(%d, %4d), Y(%d, %4d)}", mpwOutVldX.read(), (int)mpwX, mpwOutVldY.read(), (int)mpwY);
	}
	else {
		int refX = (sc_int<12>)refOutX.read();
		int refY = (sc_int<12>)refOutY.read();
		int mpwX = (sc_int<12>)mpwOutX.read();
		int mpwY = (sc_int<12>)mpwOutY.read();
		printf("[%s][%d] ",
			((mCurrMode) ? "unsigned" : "__signed"),
			mFCW
		);
		printf("{X(vld, data), Y(vld, data)}");
		printf(" | ");
		printf("REF:{X(%d, %4d), Y(%d, %4d)}", refOutVldX.read(), (int)refX, refOutVldY.read(), (int)refY);
		printf(" | ");
		printf("DUT:{X(%d, %4d), Y(%d, %4d)}", mpwOutVldX.read(), (int)mpwX, mpwOutVldY.read(), (int)mpwY);
	}
}

void TestBench::compare(){
	if(mCurrMode){
		int refX = (sc_uint<12>)refOutX.read();
		int refY = (sc_uint<12>)refOutY.read();
		int mpwX = (sc_uint<12>)mpwOutX.read();
		int mpwY = (sc_uint<12>)mpwOutY.read();

		if(
			refX == mpwX &&
			refY == mpwY &&
			refOutVldX.read() == mpwOutVldX.read() &&
			refOutVldY.read() == mpwOutVldY.read()
		){
			printf(" ==> PASS\n");
		}
		else {
			printf(" ==> FAIL\n");
			mErrNum++;
		}
	}
	else {
		int refX = (sc_int<12>)refOutX.read();
		int refY = (sc_int<12>)refOutY.read();
		int mpwX = (sc_int<12>)mpwOutX.read();
		int mpwY = (sc_int<12>)mpwOutY.read();

		if(
			refX == mpwX &&
			refY == mpwY &&
			refOutVldX.read() == mpwOutVldX.read() &&
			refOutVldY.read() == mpwOutVldY.read()
		){
			printf(" ==> PASS\n");
		}
		else {
			printf(" ==> FAIL\n");
			mErrNum++;
		}
	}
}


void TestBench::printResult(){
	printf( "-------------<Result>--------------\n" );
	printf("sampleNum: %d\n", mTotalTestNum);
	if(mErrNum == 0) {
		printf("TEST PASS :)\n");
	}
	else {
		printf("TEST FAIL :(\n");
	}
	printf("errors: %d\n",mErrNum);
	printf( "-----------------------------------\n" );
}