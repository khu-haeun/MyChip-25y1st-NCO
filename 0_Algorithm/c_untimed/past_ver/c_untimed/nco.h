#ifndef _NCO_H_
#define _NCO_H_

//---< headers >---------------------------------------------------
#include <stdint.h>
//-----------------------------------------------------------------

//---< headers >---------------------------------------------------
#define F_SAMPLE 10000
#define TAP_NUM 8

//data types
typedef int16_t	data_t;  //x,y vector
typedef int16_t	angle_t; //angle(degree)

//TOP function: NCO(Numerically Controlled Oscillator)
void NCO(data_t* xout, data_t* yout, uint32_t fcw, bool selSign);

//1. phase accumulator
void phaseAcc(angle_t* phase_arr, bool* invert_sign_arr, uint32_t fcw);

//subs
void fcwCounter(angle_t* cnt_arr, uint32_t fcw);
void cnt2phase (angle_t* phase_arr, bool* invert_sign_arr);
	
//2. cordic
void cordic(data_t* xout, data_t* yout, angle_t phase_arr);

//subs
static int16_t oneOverK = 1242; //0.606
static int16_t arctanTable[TAP_NUM] = {
	511,//44.967033 degree
	301,//26.505495 degree
	159,//14.021978 degree
	80,	//7.076923 degree
	40,	//3.560440 degree
	19,	//1.714286 degree
	9,	//0.835165 degree
	4,	//0.395604 degree
};
		
//3. invert sign
void outputTerminal(data_t* xout, data_t* yout, bool invertSign, bool selSign);

#endif