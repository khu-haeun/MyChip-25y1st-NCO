#include <stdlib.h>
#include "UntimedNCO.h"
#include "math.h"

UntimedNCO* constructNCO(uint32_t freqCtrlWord, bool mode){
	//0. construct UntimedNCO
	UntimedNCO* this = (UntimedNCO*)malloc(sizeof(UntimedNCO));

	//1. construct MemberOfNCO
	this->mNCO = (MemberOfNCO*)malloc(sizeof(MemberOfNCO));				//allocate mNCO
	this->mNCO->freqCtrlWord = freqCtrlWord;								
	this->mNCO->mode = mode;
	this->mNCO->phaseArr = (int16_t*)malloc(sizeof(int16_t)*SAMPLE_NUM);
	this->mNCO->isNegArr = (bool*)malloc(sizeof(bool)*SAMPLE_NUM);
	this->mNCO->oNCO = (OutputOfNCO*)malloc(sizeof(OutputOfNCO));

	//2. initialize constants
	this->mNCO->oneOverK = 1242;
	this->mNCO->arctanTable[0] = 511;//44.967033 degree
	this->mNCO->arctanTable[1] = 301;//26.505495 degree
	this->mNCO->arctanTable[2] = 159;//14.021978 degree
	this->mNCO->arctanTable[3] = 80 ;// 7.076923 degree
	this->mNCO->arctanTable[4] = 40 ;// 3.560440 degree
	this->mNCO->arctanTable[5] = 19 ;// 1.714286 degree
	this->mNCO->arctanTable[6] = 9  ;// 0.835165 degree
	this->mNCO->arctanTable[7] = 4  ;// 0.395604 degree

	//3. link function
	this->runNCO = runNCO;
	this->untimedPhaseAccumulator = untimedPhaseAccumulator;
	this->untimedCORDIC = untimedCORDIC;
	this->untimedOutputTerminal = untimedOutputTerminal;

	return this;
}

void destructNCO(UntimedNCO* this){
	free(this->mNCO->phaseArr);
	free(this->mNCO->isNegArr);
	free(this->mNCO->oNCO);
	free(this->mNCO);
	free(this);
}

//TOP function: NCO(Numerically Controlled Oscillator)
void runNCO(UntimedNCO* this){
	this->untimedPhaseAccumulator(this);
	this->untimedCORDIC(this);
	this->untimedOutputTerminal(this);
}

//NCO sub1. phase accumulator
void untimedPhaseAccumulator(UntimedNCO* this){
/*
 * 20-bit PhaseAccumulator:
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
 *
 * This function is c untimed model of 20-bit phase accumulator.
 * It receives a 20-bit Frequency Control Word (FCW) and accumulates it
 * The phase output is then derived from the upper 12 bits of the 20-bit accumulator register.
 */
	//used member of this->mNCO
	int16_t* phaseArr = this->mNCO->phaseArr;
	bool* isNegArr = this->mNCO->isNegArr;
	uint32_t freqCtrlWord = this->mNCO->freqCtrlWord;

	//registers
	uint32_t count = 0;
	int16_t phase = 0;

	phaseArr[0] = 0;
	isNegArr[0] = false;
	for(int i = 1; i<SAMPLE_NUM; i++) {
	//1. add fcw to counter
		count = count + freqCtrlWord;
		if(count > pow(2,20)-1){
			count -= pow(2,20);
		}

	//2. convert counter to angle
		phase = count >> 8;

	//3. process angle to 12bit phase. this process is for CORDIC
		//3.1. if angle is negative, expand signed bit to 16bit width
		if( (phase & SIGN_MASK_12B) == NEG_SIGN_BIT_12B ) {
			phase = phase | EXPAND_SIGN_12B;
		}
		
		//3.2. change quadrant. 2nd -> 4th / 3rd -> 1st (point symmetric way)
		if( (phase & QUADRANT_MASK_12B) == SECOND_PLANE_12B ){ //12b'01~ => 12b'11~ (MSB 0->1)
			phase = phase | SECOND_TO_FOURTH_PLANE;
			isNegArr[i] = true;
		}
		else if( (phase & QUADRANT_MASK_12B) == THIRD_PLANE_12B ){ //12b'10~ => 12b'00~ (MSB 1->0)
			phase = phase & THIRD_TO_FIRST_PLANE;
			isNegArr[i] = true;
		}
		else {
			isNegArr[i] = false;
		}
		phaseArr[i] = phase;
	}
}

//NCO sub2. CORDIC
void untimedCORDIC(UntimedNCO* this){
	//used member of this->mNCO
	int16_t* xArr = this->mNCO->oNCO->xArr;
	int16_t* yArr = this->mNCO->oNCO->yArr;
	int16_t* phaseArr = this->mNCO->phaseArr;

	for(int i = 0; i<SAMPLE_NUM; i++){
		int16_t x = this->mNCO->oneOverK;
		int16_t y = 0;
		int16_t x_;
		int16_t a = phaseArr[i];
		
		//pipelined CORDIC
		for(int j = 0; j < TAP_NUM; j++){
			x_ = x;
			if(a >= 0){
				x = x_ - (y  >> j);
				y = y  + (x_ >> j);
				a = a  - this->mNCO->arctanTable[j];
			}
			else {
				x = x_ + (y  >> j);
				y = y  - (x_ >> j);
				a = a  + this->mNCO->arctanTable[j];
			};
		};

		xArr[i] = x;
		yArr[i] = y;
	}
}

//NCO sub3. invert sign
void untimedOutputTerminal(UntimedNCO* this){
	//used member of this->mNCO
	int16_t* xArr = this->mNCO->oNCO->xArr;
	int16_t* yArr = this->mNCO->oNCO->yArr;
	bool* isNegArr = this->mNCO->isNegArr;
	bool mode = this->mNCO->mode;

	for(int i = 0; i<SAMPLE_NUM; i++){
		int16_t x, y;
		int16_t bias=0;
		x = xArr[i];
		y = yArr[i];
		
		//1. apply mode 
		if(mode) {
			bias=0x0800;
		}
		
		//2. inverted sign
		if(isNegArr[i]) {
			x = -x+bias;
			y = -y+bias;
		}
		else {
			x = x+bias;
			y = y+bias;
		}

		//3. apply changes(final output)
		xArr[i] = x;
		yArr[i] = y;
	}
}