#include <cmath>
#include <fstream>
#include <iostream>
#include <sstream>
#include "UntimedOutputTerminal.h"

using std::pow;
using std::cout, std::endl;
using std::stringstream;

UntimedOutputTerminal::UntimedOutputTerminal(){
	mSub3.outX = 2043;
	mSub3.outY = -16;
}

UntimedOutputTerminal::~UntimedOutputTerminal(){
}

void UntimedOutputTerminal::runUntimedOutputTerminal(const int16_t inX, const int16_t inY, const bool inIsNeg, const bool inMode){                                  //for UntimedNCO
	//0. read inputs and load state
    mSub3.inMode = inMode;
	mSub3.inIsNeg = inIsNeg;
	mSub3.inX = inX;
	mSub3.inY = inY;

	bool mode = mSub3.inMode;
	bool isNeg = mSub3.inIsNeg;
	int16_t x = mSub3.inX;
	int16_t y = mSub3.inY;
	
	
	//1. inverted sign
	if(isNeg == true) {
		x = -x;
		y = -y;
	}

	//2. add bias
	if(mode) {
		x += mSub3.BIAS_12B;
		y += mSub3.BIAS_12B;
	}

	//3. apply changes(final output)
	mSub3.outX = x;
	mSub3.outY = y;
}

void UntimedOutputTerminal::resetUntimedOutputTerminal(const bool inMode){
	if(inMode == true){
		mSub3.outX = 4091;
		mSub3.outY = 2032;
	}
	else {
		mSub3.outX = 2043;
		mSub3.outY = -16;
	}
}

const MemberOfSub3& UntimedOutputTerminal::getMemberOfSub3(){
    return mSub3;
}