#ifndef _SUB1_H_
#define _SUB1_H_

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
constexpr uint16_t FCW_WIDTH				= 20;//bit	
constexpr uint16_t SIGN_MASK_12B 			= 0x0800;
constexpr uint16_t NEG_SIGN_BIT_12B		    = 0x0800;
constexpr uint16_t EXPAND_SIGN_12B			= 0xF000;
constexpr uint16_t QUADRANT_MASK_12B 		= 0x0C00;
constexpr uint16_t SECOND_PLANE_12B 		= 0x0400;
constexpr uint16_t THIRD_PLANE_12B			= 0x0800;
constexpr uint16_t SECOND_TO_FOURTH_PLANE	= 0xF800; //MSB 0 -> 1 by ORing
constexpr uint16_t THIRD_TO_FIRST_PLANE 	= 0x03FF; //MSB 1 -> 0 by Anding
//-----------------------------------------------------------------

//---< Class >-----------------------------------------------------
typedef struct MemberOfUntimedPhaseAccumulator{
    //inputs
	uint32_t inFCW;

	//outputs
	int16_t outPhase;
	bool outIsNeg;

	//internal component
	uint32_t accReg;
} MemberOfSub1;

typedef class UntimedPhaseAccumulator
{   
public:
    //con/destructor
    UntimedPhaseAccumulator();
    ~UntimedPhaseAccumulator();

    //main function
    void runUntimedPhaseAccumulator(const uint32_t inFCW);//run one unit
    void resetUntimedPhaseAccumulator();                    

    //get/setter
    const MemberOfSub1& getMemberOfSub1();
private:
    
public:
private:
    //Member
    MemberOfSub1 mSub1;
} Sub1;


//-----------------------------------------------------------------
#endif