#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <queue>
#include "define.h"
using std::queue;

//ref
#include "TestBench.h"

//dut
//#include "verilated.h"


void TestBench::testMon(){
	// 00 signed Y
	// 01 signed X
	// 10 unsigned Y
	// 11 unsigned X

	//test case sweep
	for(int caseCnt = 0; caseCnt < 4; caseCnt++){
		bool testMode  = (caseCnt & 2) ? 1:0;
		bool testSelXY = (caseCnt & 1) ? 1:0;
		testPowerOfTwoFCW(testMode, testSelXY, mSampleNum);
	}

	reportTest();

	//tb
#ifdef DUT_VERILATED
	Verilated::threadContextp()->coveragep()->write("./logs/coverage.dat");
#endif
    sc_stop();
}

void TestBench::testPowerOfTwoFCW(bool mode, bool selXY, uint32_t sampleNum){
	//printf("test fcw=power of two\n");
	if(mode){
		for(uint32_t fcw = 1; fcw < 524289; fcw <<= 1){
			setTest(mode, selXY, fcw);
			runTest<sc_uint<12>>(mode, selXY, fcw, sampleNum);
		}
	}
	else {
		for(uint32_t fcw = 1; fcw < 524289; fcw <<= 1){
			setTest(mode, selXY, fcw);
			runTest<sc_int<12>>(mode, selXY, fcw, sampleNum);
		}
	}
}

template<typename Cast>
void TestBench::runTest(bool mode, bool selXY, uint32_t fcw, uint32_t sampleNum){
	bool postVld = false;
	bool currVld = false;
	bool isFirst = true;
	queue<sc_uint<12>> refQ;

	for(uint32_t i = 0; i < sampleNum; i++){
		//enqueue reference
		refQ.push(refOutData.read());

		//valid at Vld 1->0
		postVld = currVld;
		currVld = dutOutVld.read();

		if(postVld == true){
			if(isFirst) {
				isFirst = false;
			} else {
				//signed
				int16_t refData = (Cast)refQ.front(); refQ.pop();
				int16_t dutData = (Cast)dutOutData.read();
				bool isEqual = (refData == dutData);
				printf(	"[MODE:%d][Sel:%s][FCW:%8d][%8d]Ref = %6d vs DUT = %6d ==> %s\n",
					mode, 
					(selXY) ? "X":"Y", 
					fcw,
					i, 
					refData, 
					dutData, 
					isEqual ? "PASS":"FAIL"
				);

				//cnt update
				if(!isEqual){
					mErrNum++;
				}
				mTestNum++;
			}
		}
		wait(clk.posedge_event());
		mClockCnt++;
	}
}

void TestBench::setTest(bool mode, bool selXY, uint32_t fcw){
	//1. disable
	disableDUT();

	//2. flush dut vld
	for(int i=0; i<70; i++){
		wait(clk.posedge_event()); //잔여 vld 제거
		mClockCnt++;
	}

	//3. ctrl ready
	tbInFCW.write(fcw);
	tbInMode.write(mode);
	tbInSelXY.write(selXY);

	//4. apply ctrl signals and enable
	enableDUT();

	//5. flush ref latency
	for(int i=0; i<11; i++){
		wait(clk.posedge_event());
		mClockCnt++;
	}
}

void TestBench::reportTest(){
	printf("\n");
	printf("---------------------------------------\n");
	printf("[Report]\n");
	printf("    Result: %s\n", mErrNum ? "FAIL":"PASS" );
	printf("    Total err: %d\n",mErrNum);
	printf("---------------------------------------\n");
	printf("[Test cond.]\n");
	printf("   Clock consumed : %d\n",mClockCnt);
	printf("   Test sample num: %d\n",mTestNum);
	printf("---------------------------------------\n");
}


void TestBench::disableDUT(){
	//main
	tbEn.write(0);
	wait(clk.posedge_event());

	//cnt update
	mClockCnt++;
}

void TestBench::enableDUT(){
	//main
	tbEn.write(1);
	wait(clk.posedge_event());

	//cnt update
	mClockCnt++;
}

void TestBench::setSampleNum(uint32_t sampleNum){
	mSampleNum = sampleNum;
}
/* one FCW test
void TestBench::testMon(){
	// 00 signed Y
	// 01 signed X
	// 10 unsigned Y
	// 11 unsigned X

	for(int caseCnt = 0; caseCnt < 4; caseCnt++){
		bool testMode  = (caseCnt & 2) ? 1:0;
		bool testSelXY = (caseCnt & 1) ? 1:0;
		//testPowerOfTwoFCW(testMode, testSelXY, 500);

		queue<sc_uint<12>> refQ;

		disableDUT();
		for(int i=0; i<70; i++){
			wait(clk.posedge_event()); //잔여 vld 제거
		}

		tbInFCW.write(10000);
		tbInMode.write(testMode);
		tbInSelXY.write(testSelXY);
		enableDUT();

		for(int i=0; i<11; i++){
			printf("flush\n");
			wait(clk.posedge_event());
		}

		bool currVld = false;
		bool postVld = false;
		bool isFirst = true;
		for(int i=0; i<1000; i++){
			//enqueue
			refQ.push(refOutData.read());

			postVld = currVld;
			currVld = dutOutVld.read();
			if(postVld == true){
				if(isFirst){
					isFirst = false;
				} else {
					int16_t refData = (sc_int<12>)refQ.front(); refQ.pop();
					int16_t dutData = (sc_int<12>)dutOutData.read();
					printf(	"[%8d]Ref = %6d / DUT = %6d,%d \n", i, refData, dutData, currVld);
				}
			}


			wait(clk.posedge_event()); 
		}
	}

	Verilated::threadContextp()->coveragep()->write("./logs/coverage.dat");
    sc_stop();
}
*/