#ifndef _NCO_H_
#define _NCO_H_

//---< headers >---------------------------------------------------
#include <stdint.h>
#include <stdbool.h>
#include <define.h>
//-----------------------------------------------------------------

//---< Macros >----------------------------------------------------
#define SIGN_MASK_12B 			0x0800
#define NEG_SIGN_BIT_12B		0x0800
#define EXPAND_SIGN_12B			0xF000
#define QUADRANT_MASK_12B 		0x0C00
#define SECOND_PLANE_12B 		0x0400
#define THIRD_PLANE_12B			0x0800
#define SECOND_TO_FOURTH_PLANE	0xF800 //MSB 0 -> 1 by ORing
#define THIRD_TO_FIRST_PLANE 	0x03FF //MSB 1 -> 0 by Anding
//-----------------------------------------------------------------

//---< Struct >---------------------------------------------------
typedef struct OutputOfNumericallyControlledOscillator{
	int16_t xArr[SAMPLE_NUM];
	int16_t yArr[SAMPLE_NUM];
} OutputOfNCO;

typedef struct MemberOfNumericallyControlledOscillator {
	//inputs
	uint32_t freqCtrlWord;
	bool mode;
	
	//internals
	int16_t* phaseArr;
	bool* isNegArr;

	//outputs
	OutputOfNCO* oNCO;
	
	//constants
	int16_t oneOverK; //0.606
	int16_t arctanTable[TAP_NUM];
} MemberOfNCO;

typedef struct UntimedNumericallyControlledOscillator UntimedNCO;
struct UntimedNumericallyControlledOscillator {
//method(member function)
	//run untiemd NCO
	void (*runNCO)(UntimedNCO*);

	//sub models
	void (*untimedPhaseAccumulator)(UntimedNCO*);
	void (*untimedCORDIC)(UntimedNCO*);
	void (*untimedOutputTerminal)(UntimedNCO*);

//member
	MemberOfNCO* mNCO;
};

//Con/destructor
UntimedNCO* constructNCO(uint32_t freqCtrlWord, bool mode);
void destructNCO(UntimedNCO* goldenRef);
//-----------------------------------------------------------------

//---< Func. >-----------------------------------------------------
//run untiemd NCO
void runNCO(UntimedNCO*);

//NCO sub models
void untimedPhaseAccumulator(UntimedNCO*);
void untimedCORDIC(UntimedNCO*);
void untimedOutputTerminal(UntimedNCO*);
//-----------------------------------------------------------------

#endif