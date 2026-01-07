#ifndef _SUB3_H_
#define _SUB3_H_

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
//-----------------------------------------------------------------

//---< Class >-----------------------------------------------------
typedef struct MemberOfUntimedOutputTerminal{
	//inputs
	bool inMode;
	bool inIsNeg;
	int16_t inX;
	int16_t inY;

	//outputs
	int16_t outX;
	int16_t outY;

	//const
	const int16_t BIAS_12B = 0x0800;
} MemberOfSub3;

typedef class UntimedOutputTerminal
{   
public:
    //con/destructor
    UntimedOutputTerminal();
    ~UntimedOutputTerminal();

    //one unit
    void runUntimedOutputTerminal(const int16_t inX, const int16_t inY, const bool inIsNeg, const bool inMode);                                    //for UntimedNCO
	void resetUntimedOutputTerminal(const bool inMode);

    //get/setter
    const MemberOfSub3& getMemberOfSub3();
private:
    
public:
private:
    //Member
    MemberOfSub3 mSub3;
} Sub3;


//-----------------------------------------------------------------
#endif