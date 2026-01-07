#include <cmath>
#include <iostream>
#include <sstream>
#include "UntimedPhaseAccumulator.h"

using std::pow;
using std::cout, std::endl;
using std::stringstream;

UntimedPhaseAccumulator::UntimedPhaseAccumulator(){
	//init state
	mSub1.outIsNeg = false;
	mSub1.outPhase = 0;
	mSub1.accReg = 0;
}

UntimedPhaseAccumulator::~UntimedPhaseAccumulator(){
}

void UntimedPhaseAccumulator::runUntimedPhaseAccumulator(const uint32_t inFCW){
/* 20-bit PhaseAccumulator:
 *
 * - Frequency Control Word 
 *  <------------------------- 20 bits ----------------------->
 * |--------------------------- FCW ---------------------------|
 * |19|18|17|16|15|14|13|12|11|10|09|08|07|06|05|04|03|02|01|00|
 * 
 * - Accumulator register
 *  <---------- 12 bits -----------> <-------- 8 bits -------->
 * |-------- Phase (output) --------|--------------------------|
 * |19|18|17|16|15|14|13|12|11|10|09|08|07|06|05|04|03|02|01|00|
 */

	//0. read current inputs and state(accReg)
	mSub1.inFCW = inFCW;
	uint32_t currFCW = mSub1.inFCW;
	uint32_t currAccRegValue = mSub1.accReg;

	//1. Accumulation
	uint32_t tmpAccReg = currAccRegValue + currFCW;
	if(tmpAccReg > pow(2,FCW_WIDTH)-1){//Overflow
		tmpAccReg -= pow(2,FCW_WIDTH); 
	}

	//2. Rounding(take MSB 12bit)
	int16_t phase;
	phase = tmpAccReg >> 8;

	//3. process 12bit acc output to 12bit phase. this process is for CORDIC
	//3.1. if 12bit acc output is negative value, expand signed bit to 16bit width
	bool isNeg;
	if( (phase & SIGN_MASK_12B) == NEG_SIGN_BIT_12B ) {
		phase = phase | EXPAND_SIGN_12B;
	}
	
	//3.2. change quadrant. 2nd -> 4th / 3rd -> 1st (point symmetric way)
	int16_t PLANE = phase & QUADRANT_MASK_12B;
	if( PLANE == SECOND_PLANE_12B ){ //12b'01~ => 12b'11~ (MSB 0->1)
		phase = phase | SECOND_TO_FOURTH_PLANE;
		isNeg = true;
	}
	else if( PLANE == THIRD_PLANE_12B ){ //12b'10~ => 12b'00~ (MSB 1->0)
		phase = phase & THIRD_TO_FIRST_PLANE;
		isNeg = true;
	}
	else { // 1st or 4th plane
		isNeg = false;
	}

	//4. update state(accReg)
	mSub1.accReg = tmpAccReg;

	//5. update output
	mSub1.outPhase = phase;
	mSub1.outIsNeg = isNeg;
}

void UntimedPhaseAccumulator::resetUntimedPhaseAccumulator(){
	mSub1.outIsNeg = false;
	mSub1.outPhase = 0;
	mSub1.accReg = 0;
}

const MemberOfSub1& UntimedPhaseAccumulator::getMemberOfSub1(){
	return mSub1;
}
