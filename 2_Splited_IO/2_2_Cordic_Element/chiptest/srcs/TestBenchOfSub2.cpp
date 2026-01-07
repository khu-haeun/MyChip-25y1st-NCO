#include "TestBenchOfSub2.h"
#include <stdlib.h>
#include <time.h>
#include <fstream>
#include <iostream>

void TestBenchOfSub2::testMon(){
	int sampleNum = 100;

    for(uint32_t stg=0; stg < 8; ++stg){
		init();

		//set stg
    	tbInStg.write(sc_uint<3>(stg));

		//2. comp
		for(uint32_t i=0; i<mSampleNum; ++i){
			printf("[%3d][%3d] ", stg, i);
			generateRandomInput();
			readAndPrint();
			compare();
		}

		mTotalTestNum += mSampleNum;
    }

	//3. result
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

void TestBenchOfSub2::init(){
	tbInStg.write(sc_uint<3>(0));
	tbInIsNeg.write(0);
	tbInX.write((sc_uint<2>)0);
	tbInY.write((sc_uint<2>)0);
	tbInPhase.write((sc_uint<2>)0);

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

void TestBenchOfSub2::generateRandomInput(){

	if(mCnt == 6){
		tbInRdy.write(1);
		mCnt = 0;
	}
	else{
		tbInRdy.write(0);
		mCnt++;
	}
	int randomInput = rand();
	randomInput = randomInput & 0x7F; //0111_1111

	bool isNeg = (randomInput & 0x01) ? true : false; 
	randomInput = randomInput >> 1;
	uint32_t inX = randomInput & 0x3;
	randomInput = randomInput >> 2;
	uint32_t inY = randomInput & 0x3;
	randomInput = randomInput >> 2;
	uint32_t inA = randomInput & 0x3;
	randomInput = randomInput >> 2;
	tbInIsNeg.write(isNeg);
	tbInX.write((sc_uint<2>)inX);
	tbInY.write((sc_uint<2>)inY);
	tbInPhase.write((sc_uint<2>)inA);

	wait(clk.posedge_event());
}

void TestBenchOfSub2::readAndPrint(){
	printf("(Vld, isNeg, X, Y, Phase)");
	printf("REF(%d, %d, %d, %d, %d)", rtlOutVld.read(), rtlOutIsNeg.read(), (int)rtlOutX.read(), (int)rtlOutY.read(), (int)rtlOutPhase.read());
	printf(" | ");
	printf("MPW(%d, %d, %d, %d, %d)", mpwOutVld.read(), mpwOutIsNeg.read(), (int)mpwOutX.read(), (int)mpwOutY.read(), (int)mpwOutPhase.read());
}

void TestBenchOfSub2::compare(){
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
			rtlOutIsNeg.read() 	== mpwOutIsNeg.read() 	&&
			rtlOutX.read() 		== mpwOutX.read() 		&&
			rtlOutY.read() 		== mpwOutY.read() 		&&
			rtlOutPhase.read()  == mpwOutPhase.read()
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

void TestBenchOfSub2::printResult(){
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