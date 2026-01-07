#ifndef _NCO_H_
#define _NCO_H_

//---< headers >---------------------------------------------------
#include <cstdint>
#include <string>
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
using std::int16_t, std::uint32_t;
using std::string;
using std::ofstream;
using std::stringstream;
using std::vector;

#include "define.h"
#include "FourierTransform.h"
#include "UntimedPhaseAccumulator.h"
#include "UntimedCORDIC.h"
#include "UntimedOutputTerminal.h"
//-----------------------------------------------------------------

//---< Macros >----------------------------------------------------
constexpr uint32_t POWER_2_20 = calcConstexprPowerOfTwo(20);
constexpr uint32_t POWER_2_19 = calcConstexprPowerOfTwo(19);
constexpr uint32_t DEFAULT_SAMPLE_NUM = calcConstexprPowerOfTwo(14);//min sample num for under 1kHz freq res at 10MHz sampling freq
//-----------------------------------------------------------------

//---< Struct >----------------------------------------------------
typedef struct OutputOfNumericallyControlledOscillator {
	int16_t X;
	int16_t Y;
} OutputOfNCO;

typedef struct MemberOfNumericallyControlledOscillator {
	//inputs
	uint32_t inFCW;
	bool inMode;

	//outputs
	OutputOfNCO out;

	//component
	Sub1* sub1;
	Sub2* sub2;
	Sub3* sub3;

	//system clk
	double clkSys;
	double clkNCO;
} MemberOfNCO;

//test vector
typedef struct OutputVectorOfPhaseAccumulator{
	vector<int16_t> outPhase;
    vector<bool> outIsNeg;
}OutputVecOfSub1;

typedef struct OutputVectorOfCORDIC{
	vector<int16_t> outX;
    vector<int16_t> outY;
}OutputVecOfSub2;

typedef struct OutputVectorOfOutputTerminal{
	vector<int16_t> outX;
    vector<int16_t> outY;
}OutputVecOfSub3;

typedef struct TestVectorOfNumericallyControlledOscillator{
	bool isValidTestVec;

	//test conditions
	uint32_t sampleNum;
	uint32_t inFCW;
	bool inMode;

	//clk
	double clkSys;
	double clkNCO;

	//output vectors
	OutputVecOfSub1 sub1;
	OutputVecOfSub2 sub2;
	OutputVecOfSub3 sub3;
	OutputSetOfFT	freqResp;
} TestVectorOfNCO;
//-----------------------------------------------------------------

class UntimedNCO
{
//method
public:
	UntimedNCO(const double clkSys);
	~UntimedNCO();

	//1. ctrl NCO
	void runUntimedNCO(const uint32_t inFCW, const bool inMode);
	void resetUntimedNCO(const bool inMode);
	double calcClkNCO();
	void calcAndSetSampleNum(const uint32_t inFCW);

	//2. generate Test Vector
	int generateTestVectorOfUntimedNCO(
		//NCO config
		const uint32_t inFCW,
		const bool inMode,
		
		//Func. config
		const bool calcProperSampleNum = true,
		const uint32_t sampleNum = DEFAULT_SAMPLE_NUM
	);
	void saveTestVecFile();
	void clearVectors();
    const TestVectorOfNCO& getTestVectorOfUntimedNCO();
	
	//3. UntimedNCO test code(validation code)
	void testFreqAccuracy();
	void testSFDR();
	void testCORDIC();

	//4. get/setter
	const MemberOfNCO& getMemberOfNCO() const;
	const OutputOfNCO& getOutputOfNCO() const;

	//5. etc
	uint32_t calcGCD(uint32_t a, uint32_t b);//for calcAndSetSampleNum()
protected:
private:

//member
public:
protected:
private:
	//NCO member
	MemberOfNCO mNCO;
	Sub1 mPhaseAcc;
	Sub2 mCORDIC;
	Sub3 mOutTerminal;

	//test vec
	TestVectorOfNCO mNCOTestVec;
	ofstream mFile;
	stringstream mBuffer;
	const string fModeNCO[2] = {"s", "us"};
	const string fDir = "./test_vec";
	const string fType = ".txt";
	const string fName = "NCO";
};

#endif