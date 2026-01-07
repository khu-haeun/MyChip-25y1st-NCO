#include "TestBenchOfSub3.h"
#include <stdlib.h>
#include <time.h>
#include <fstream>
#include <iostream>

#define UNSIGNED 1
#define SIGNED	 0
#define SEL_X	 1
#define SEL_Y	 0

void TestBenchOfSub3::testMon(){
	int sampleNum = 100;

    for(uint32_t tbCase=0; tbCase < 4; ++tbCase){
		bool currMode  = (tbCase & 0x01) ? SIGNED : UNSIGNED;
		bool currSelXY = (tbCase & 0x02) ? SEL_X  : SEL_Y;

		init(currMode, currSelXY);

		for(uint32_t i=0; i<mSampleNum; ++i){
			printf("[%s][%s][%3d] ",
				((currMode) ? "unsigned" : "__signed"),
				((currSelXY) ? "Y" : "X"), 
				i
			);
			generateRandomInput();
			readAndPrint();
			compare();
		}

		mTotalTestNum += mSampleNum;
    }

	printResult();

	Verilated::threadContextp()->coveragep()->write("./logs/coverage.dat");

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

void TestBenchOfSub3::init(bool mode, bool sel){
	//curr test case
	tbInMode.write(mode);
	tbInSelXY.write(sel);

	//init
	tbInIsNeg.write(0);
	tbInX.write(0);
	tbInY.write(0);

	bool isFirst = true;
	for(int i = 0; i < 10; i++){
		if(mCnt == 6){
			if(!isFirst) break;
			tbInRdy.write(1);
			isFirst = false;
			mCnt = 0;
			wait(clk.posedge_event());
		}
		else{
			tbInRdy.write(0);
			mCnt++;
			wait(clk.posedge_event());
		}
	}
}

void TestBenchOfSub3::generateRandomInput(){
	if(mCnt == 6){
		tbInRdy.write(1);
		mCnt = 0;
	}
	else{
		tbInRdy.write(0);
		mCnt++;
	}
	int randomInput = rand();
	randomInput = randomInput & 0x1F; //0001_1111
	bool isNeg = (randomInput & 0x01) ? true : false; 
	randomInput = randomInput >> 1;
	uint32_t inX = randomInput & 0x3;
	randomInput = randomInput >> 2;
	uint32_t inY = randomInput & 0x3;
	tbInIsNeg.write(isNeg);
	tbInX.write((sc_uint<2>)inX);
	tbInY.write((sc_uint<2>)inY);

	wait(clk.posedge_event());
}

void TestBenchOfSub3::readAndPrint(){
	printf("(Vld, Data) = ");
	printf("REF(%d, %5d)", rtlOutVld.read(), (int)rtlOutData.read());
	printf(" | ");
	printf("MPW(%d, %5d)", mpwOutVld.read(), (int)mpwOutData.read());
}

void TestBenchOfSub3::compare(){
	bool isPass;
	if( rtlOutVld.read() == 1) { //rtl output 2'bxx
		if(
			mpwOutVld.read() == 1 //&&
			//rtlOutIsNeg.read() == mpwOutIsNeg.read()
		){
			isPass = true;
		}
		else {
			isPass = false;
		}
	}
	else {
		if(
			rtlOutVld.read() 	== mpwOutVld.read() 	&&
			rtlOutData.read()	== mpwOutData.read()
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
}

void TestBenchOfSub3::printResult(){
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