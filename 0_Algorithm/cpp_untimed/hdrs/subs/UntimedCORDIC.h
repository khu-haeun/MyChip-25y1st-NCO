#ifndef _SUB2_H_
#define _SUB2_H_

//---< headers >---------------------------------------------------
#include <cstdint>
#include <string>
#include <fstream>
using std::int16_t, std::uint32_t;
using std::ofstream;
using std::string;

#include "define.h"
//-----------------------------------------------------------------

//---< Macros >----------------------------------------------------
constexpr int TAP_NUM                 = 8;
//-----------------------------------------------------------------

//---< Class >-----------------------------------------------------
typedef struct MemberOfUntimedCORDIC{
    //inputs
	int16_t inPhase;

	//outputs
	int16_t outX;
	int16_t outY;

	//const
	const int16_t oneOverK = 1242; //0.606
	const int16_t arctanTable[TAP_NUM] = {
		511,//atan(2^0 )44.967033 degree
		301,//atan(2^-1)26.505495 degree
		159,//atan(2^-2)14.021978 degree
		80,	//atan(2^-3)7.076923 degree
		40,	//atan(2^-4)3.560440 degree
		19,	//atan(2^-5)1.714286 degree
		9,	//atan(2^-6)0.835165 degree
		4,	//atan(2^-7)0.395604 degree
	};
	const int16_t _arctanTable[TAP_NUM] = {
		512,//atan(2^0 )44.967033 degree
		302,//atan(2^-1)26.505495 degree
		160,//atan(2^-2)14.021978 degree
		81,	//atan(2^-3)7.076923 degree
		41,	//atan(2^-4)3.560440 degree
		20,	//atan(2^-5)1.714286 degree
		10,	//atan(2^-6)0.835165 degree
		5,	//atan(2^-7)0.395604 degree
	};
} MemberOfSub2;

typedef class UntimedCORDIC
{   
public:
    //con/destructor
    UntimedCORDIC();
    ~UntimedCORDIC();

    //one unit
    void runUntimedCORDIC(const int16_t inPhase);                                    //for UntimedNCO             
	void resetUntimedCORDIC();

    //get/setter
    const MemberOfSub2& getMemberOfSub2();
private:
    
public:
private:
    //Member
    MemberOfSub2 mSub2;
} Sub2;


//-----------------------------------------------------------------
#endif