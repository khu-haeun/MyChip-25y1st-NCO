#include <fstream>
#include <iostream>
#include "TestBenchOfSub1.h"

void TestBenchOfSub1::testMon(){
	
	//1. reset
	for(int exp = 0; exp < 20; ++exp){
		//set FCW
		disable();
		mFCW = 1 << exp;//power of 2, 2^0 ~ 2^19(524288)
		tbInFCW.write(sc_uint<20>(mFCW));
		enable();

		//run test
		for(uint32_t i=0; i < mSampleNum; ++i){
			printf("[%6d][%4d] ",mFCW, i);
			readAndPrint();
			compare();
		}
		mTotalTestNum += mSampleNum;
	}
	disable();
	mFCW = 524287;//power of 2, 2^0 ~ 2^19(524288)
	tbInFCW.write(sc_uint<20>(mFCW));
	enable();

	//run test
	for(uint32_t i=0; i < mSampleNum; ++i){
		printf("[%6d][%4d] ",mFCW, i);
		readAndPrint();
		compare();
	}
	mTotalTestNum += mSampleNum;

	//3. result
	printResult();
	
	//4. coverage
	Verilated::threadContextp()->coveragep()->write("./logs/coverage.dat");

	//5. write result
	std::ofstream resultFile("./yield/result.txt", std::ios::app);
	if(resultFile.is_open()){
		resultFile << "chip " << mChipNum << " result: " << ((mErrNum) ? "FAIL":"PASS") << " / err=" << mErrNum << "\n";
		resultFile.close();
	}
	else {
		printf("no such file\n");
	}
	sc_stop();
}

void TestBenchOfSub1::disable(){
	tbEn.write(0);
	wait(clk.posedge_event());
}

void TestBenchOfSub1::enable(){
	tbEn.write(1);
	wait(clk.posedge_event());
	wait(clk.posedge_event());
}

void TestBenchOfSub1::readAndPrint(){
	printf("REF(Vld, isNeg, Phase) = (%d, %d, %d)", rtlOutVld.read(), rtlOutIsNeg.read(), (int)rtlOutPhase.read());
	printf(" | ");
	printf("MPW(Vld, isNeg, Phase) = (%d, %d, %d)", mpwOutVld.read(), mpwOutIsNeg.read(), (int)mpwOutPhase.read());
}

void TestBenchOfSub1::compare(){
	bool isPass;
	if( rtlOutVld.read() == 1) { //rtl output 2'bxx
		if(
			mpwOutVld.read() == 1 &&
			rtlOutIsNeg.read() == mpwOutIsNeg.read()
		){
			isPass = true;
		}
		else {
			isPass = false;
		}
	}
	else {
		if(
			rtlOutVld.read() == mpwOutVld.read() &&
			rtlOutIsNeg.read() == mpwOutIsNeg.read() &&
			rtlOutPhase.read() == mpwOutPhase.read()
		){
			isPass = true;
		}
		else {
			isPass = false;
		}
	}

	//result
	if(isPass){
		printf(" ==> PASS\n");
	}
	else {
		printf(" ==> FAIL\n");
		mErrNum++;
	}

	wait(clk.posedge_event());
}

void TestBenchOfSub1::printResult(){
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