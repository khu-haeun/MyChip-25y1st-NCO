#include <cmath>
#include <fstream>
#include <iostream>
#include <sstream>
#include "UntimedCORDIC.h"

using std::cout, std::endl;
using std::stringstream;


UntimedCORDIC::UntimedCORDIC(){
	mSub2.outX = 2043;
	mSub2.outY = -16;
}

UntimedCORDIC::~UntimedCORDIC(){
}

void UntimedCORDIC::runUntimedCORDIC(const int16_t inPhase){                                  //for UntimedNCO
	//0. read inputs and load state
	mSub2.inPhase = inPhase;
	int16_t phase = mSub2.inPhase;

	//1. prepare const
	int16_t initVal = mSub2.oneOverK;
	const int16_t* arctanTable = mSub2.arctanTable;

	//2. pipelined CORDIC
	int16_t x = initVal;
	int16_t y = 0;
	int16_t x_;

	for(int i = 0; i < TAP_NUM; i++){
		x_ = x;
		if(phase >= 0){
			x = x_ - (y  >> i);
			y = y  + (x_ >> i);
			phase = phase - arctanTable[i];
		}
		else {
			x = x_ + (y  >> i);
			y = y  - (x_ >> i);
			phase = phase + arctanTable[i];
		};
	};

	//3. update output
	mSub2.outX = x;
	mSub2.outY = y;
}

void UntimedCORDIC::resetUntimedCORDIC(){
	runUntimedCORDIC(0);
}

const MemberOfSub2& UntimedCORDIC::getMemberOfSub2(){
	return mSub2;
}