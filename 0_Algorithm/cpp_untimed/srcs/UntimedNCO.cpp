#include <cmath>
#include <iostream>
#include <chrono>
#include <random>
#include <ctime>

#include "UntimedNCO.h"
#include "FourierTransform.h"
#include "gsl/gsl_sf_trig.h"

using std::to_string;
using std::stringstream;
using std::cout, std::endl;
using std::pow, std::sqrt, std::abs, std::log, std::fabs, std::fmod;

//---< con/destructor >---------------------------------------------------------------
UntimedNCO::UntimedNCO(const double clkSys)
{
	//UntimedNCO init
	mNCO.inFCW = 0;
	mNCO.inMode = 0;

	mNCO.sub1 = &(this->mPhaseAcc);
	mNCO.sub2 = &(this->mCORDIC);
	mNCO.sub3 = &(this->mOutTerminal);

	mNCO.clkSys = clkSys;
	mNCO.clkNCO = this->calcClkNCO();

	//test vec init
	mNCOTestVec.isValidTestVec = false;

	mNCOTestVec.inFCW = 0;
	mNCOTestVec.inMode = false;

	mNCOTestVec.clkSys = clkSys;
	mNCOTestVec.clkNCO = this->calcClkNCO();
}

UntimedNCO::~UntimedNCO(){
}	
//------------------------------------------------------------------------------------

//Control NCO(Numerically Controlled Oscillator)
void UntimedNCO::runUntimedNCO(const uint32_t inFCW, const bool inMode)
{
	//NCO inputs
	mNCO.inFCW = inFCW;
	mNCO.inMode = inMode;
	
	//sub module(cpp function) connection
	//sub1
	mNCO.sub1->runUntimedPhaseAccumulator(mNCO.inFCW);

	//sub2
	mNCO.sub2->runUntimedCORDIC(mNCO.sub1->getMemberOfSub1().outPhase);

	//sub3
	mNCO.sub3->runUntimedOutputTerminal(
		mNCO.sub2->getMemberOfSub2().outX,
		mNCO.sub2->getMemberOfSub2().outY,
		mNCO.sub1->getMemberOfSub1().outIsNeg,
		mNCO.inMode
	);

	//outputs
	mNCO.out.X = mNCO.sub3->getMemberOfSub3().outX;
	mNCO.out.Y = mNCO.sub3->getMemberOfSub3().outY;
}

void UntimedNCO::resetUntimedNCO(const bool inMode) {
	mNCO.sub1->resetUntimedPhaseAccumulator();
	mNCO.sub2->resetUntimedCORDIC();
	mNCO.sub3->resetUntimedOutputTerminal(inMode);
}

void UntimedNCO::calcAndSetSampleNum(const uint32_t inFCW) {
	//calculate sampleNum that accReg become zero again 
	bool isOdd = inFCW & 1;
	bool isEven = !isOdd;

	if(isEven){
		uint32_t GCD = calcGCD(inFCW, POWER_2_20);
		mNCOTestVec.sampleNum = POWER_2_20/GCD;
	}

	if(isOdd){
		mNCOTestVec.sampleNum = POWER_2_20;
	}
}

//generate Testvector from Untimed NCO
int UntimedNCO::generateTestVectorOfUntimedNCO(const uint32_t inFCW, const bool inMode, const bool calcProperSampleNum, const uint32_t sampleNum){
	//0. reset
	resetUntimedNCO(inMode);
	clearVectors();
	
	//1. check validity of inFCW
	if(inFCW <= 0 || inFCW > POWER_2_19){
		mNCOTestVec.isValidTestVec = false;
		cout << "FCW range: 1 ~ 524288" << endl;
		return -1;
	}
	
	//2. set NCO
	mNCOTestVec.inFCW = inFCW;
	mNCOTestVec.inMode = inMode;

	//3. calc and set proper sample number
	if(calcProperSampleNum == true){
		calcAndSetSampleNum(mNCOTestVec.inFCW);
	}
	else {
		mNCOTestVec.sampleNum = sampleNum;
	}
	
	//4. run NCO & save output to test vec
	//resetUntimedNCO(mNCOTestVec.inMode);
	
	for(uint32_t i = 0; i < mNCOTestVec.sampleNum; ++i){
		//save sub1 output
		mNCOTestVec.sub1.outIsNeg.push_back(mNCO.sub1->getMemberOfSub1().outIsNeg);
		mNCOTestVec.sub1.outPhase.push_back(mNCO.sub1->getMemberOfSub1().outPhase);

		//save sub2 output
		mNCOTestVec.sub2.outX.push_back(mNCO.sub2->getMemberOfSub2().outX);
		mNCOTestVec.sub2.outY.push_back(mNCO.sub2->getMemberOfSub2().outY);

		//save sub3 output
		mNCOTestVec.sub3.outX.push_back(mNCO.sub3->getMemberOfSub3().outX);
		mNCOTestVec.sub3.outY.push_back(mNCO.sub3->getMemberOfSub3().outY);
		runUntimedNCO(mNCOTestVec.inFCW, mNCOTestVec.inMode);
	}

	//FFT
	FT freqResp(mNCOTestVec.sampleNum);
	freqResp.calcFFT(
		mNCOTestVec.sub3.outX, 
		mNCOTestVec.sub3.outY, 
		mNCOTestVec.inMode,
		mNCOTestVec.sampleNum
	);
	mNCOTestVec.freqResp = freqResp.getOutputOfFT();

	//set flag, for saveTestVecFile()
	mNCOTestVec.isValidTestVec = true;
	return 0;
}

//validation test
// 1 testFreqAccuracy
// 2 testSFDR
// 3 testCORDIC
void UntimedNCO::testFreqAccuracy(){

	//1. timer on
	auto start = std::chrono::high_resolution_clock::now();//start time

	//2. init
	stringstream buf;
	buf.str("");
	buf.clear();

	uint32_t sampleNum;
	long long index;
	bool isNotValid;
	uint32_t errNum=0;

	//3. run test
	//3.1. signed mode
	for(uint32_t fcw=1; fcw < 524289; ++fcw){
		generateTestVectorOfUntimedNCO(fcw,0,false,65536);
		sampleNum = mNCOTestVec.sampleNum;
		index = ((long long)(fcw) * sampleNum) >> 20;//formula for finding the index of the freq that corresponding to fcw

		isNotValid = (//true when index difference between target and 1st peak bigger then 1
			abs(mNCOTestVec.freqResp.X.peak1stIndex - index) > 1 ||
			abs(mNCOTestVec.freqResp.Y.peak1stIndex - index) > 1
		);
		
		if(isNotValid){
			++errNum;
			buf << "test[0][" << fcw << "] " << isNotValid << "\n";
		}
	}

	//3.2. unsigned mode
	for(uint32_t fcw=1; fcw < 524289; ++fcw){
		generateTestVectorOfUntimedNCO(fcw,1,false,65536);
		sampleNum = mNCOTestVec.sampleNum;
		index = ((long long)(fcw) * sampleNum) >> 20;//formula for finding the index of the freq that corresponding to fcw
		
		isNotValid = (
			abs(mNCOTestVec.freqResp.X.peak1stIndex - index) > 1 ||
			abs(mNCOTestVec.freqResp.Y.peak1stIndex - index) > 1
		);
		
		
		if(isNotValid){//true when index difference between target and 1st peak bigger then 1
			++errNum;
			buf << "test[1][" << fcw << "] " << isNotValid << "\n";
		}
	}

	//4. calc operating time
	auto end = std::chrono::high_resolution_clock::now();//end time
	auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end-start);//operating time
	auto duration_ms = duration.count();
	long long hours = duration_ms / (1000 * 60 * 60);
	long long minutes = (duration_ms % (1000 * 60 * 60)) / (1000 * 60);
	long long seconds = (duration_ms % (1000 * 60)) / 1000;
	long long remaining_ms = duration_ms % 1000;

	//print opterating time
	printf("Total execution time: %lldh %lldm %llds %lldms\n", 
        hours, minutes, seconds, remaining_ms);

	//5. print result
	printf("Err: %d\n", errNum);
	if(errNum ==0){
		printf("valid Model\n");
	}
	else {
		printf("invalid Model..\n");
		const char* name = "log.txt";
		ofstream log(name);
		log << buf.str();
		log.close();
	}	
}

void UntimedNCO::testSFDR(){
	//srand(time(NULL));
    std::mt19937 gen(time(NULL));
	std::uniform_int_distribution<uint32_t> distrib;

	//2. init
	double worstCosSFDR = 100.0;
	double worstSinSFDR = 100.0;
	double avgCosSFDR = 0;
	double avgSinSFDR = 0;
	const int num = 1000;

	//3. run test
	//3.1. generate fcw randomly range of 1~4095
    distrib.param(std::uniform_int_distribution<uint32_t>::param_type(1, 4095));
	for(int i = 0; i < num; ++i){
		uint32_t fcw = distrib(gen);//1~524288
		generateTestVectorOfUntimedNCO(fcw,0);

		double cosSFDR = getTestVectorOfUntimedNCO().freqResp.X.SFDR;
		double sinSFDR = getTestVectorOfUntimedNCO().freqResp.Y.SFDR;
		printf("[     0~  4095][%4d][%8d] SFDR(COS, SIN) = (%8.3lf, %8.3lf)\n",i,fcw, cosSFDR, sinSFDR);

		//max
		if(cosSFDR < worstCosSFDR) worstCosSFDR = cosSFDR;
		if(sinSFDR < worstSinSFDR) worstSinSFDR = sinSFDR;
		
		//avg
		avgCosSFDR += cosSFDR;
		avgSinSFDR += sinSFDR;
	}

	//3.2. generate fcw randomly range of 4096~262143
    distrib.param(std::uniform_int_distribution<uint32_t>::param_type(4096, 262143));
	for(int i = 0; i < num; ++i){
		uint32_t fcw = distrib(gen);//1~524288
		generateTestVectorOfUntimedNCO(fcw,0);

		double cosSFDR = getTestVectorOfUntimedNCO().freqResp.X.SFDR;
		double sinSFDR = getTestVectorOfUntimedNCO().freqResp.Y.SFDR;
		printf("[  4096~262143][%4d][%8d] SFDR(COS, SIN) = (%8.3lf, %8.3lf)\n",i,fcw, cosSFDR, sinSFDR);

		//max
		if(cosSFDR < worstCosSFDR) worstCosSFDR = cosSFDR;
		if(sinSFDR < worstSinSFDR) worstSinSFDR = sinSFDR;
		
		//avg
		avgCosSFDR += cosSFDR;
		avgSinSFDR += sinSFDR;
	}

	//3.2. generate fcw randomly range of 262144~524288
    distrib.param(std::uniform_int_distribution<uint32_t>::param_type(262144, 524288));
	for(int i = 0; i < num; ++i){
		uint32_t fcw = distrib(gen);//1~524288
		generateTestVectorOfUntimedNCO(fcw,0);

		double cosSFDR = getTestVectorOfUntimedNCO().freqResp.X.SFDR;
		double sinSFDR = getTestVectorOfUntimedNCO().freqResp.Y.SFDR;
		printf("[262144~524288][%4d][%8d] SFDR(COS, SIN) = (%8.3lf, %8.3lf)\n",i,fcw, cosSFDR, sinSFDR);

		//max
		if(cosSFDR < worstCosSFDR) worstCosSFDR = cosSFDR;
		if(sinSFDR < worstSinSFDR) worstSinSFDR = sinSFDR;
		
		//avg
		avgCosSFDR += cosSFDR;
		avgSinSFDR += sinSFDR;
	}

	avgCosSFDR /= (double)(num * 3);
	avgSinSFDR /= (double)(num * 3);

	printf("worst SFDR(Cos, Sin): (%8.3lf, %8.3lf)\n", worstCosSFDR, worstSinSFDR);
	printf("avg SFDR(Cos, Sin): (%8.3lf, %8.3lf)\n", avgCosSFDR, avgSinSFDR);
}

void UntimedNCO::testCORDIC(){
	//1. init
	double phase = 0;
	double deltaX = 0;
	double deltaY = 0;

	double refX = 0; double dutX = 0;
	double refY = 0; double dutY = 0;
	
	double maxErrX = 0; double avgErrX = 0;
	double maxErrY = 0; double avgErrY = 0;

	//2. run test
	//2.0 nco spec
	printf("[12bit CORDIC Based NCO spec.]\n");
	printf("    phase bit        : 12 [bit]\n");
	printf("    phase resolution : %.2lf [degree/step]\n",(double)360/4096);
	printf("\n");

	//2.1 signed 
	generateTestVectorOfUntimedNCO(256,0);
	for(uint32_t i=0; i<getTestVectorOfUntimedNCO().sampleNum; ++i){
		//test phase
		phase = (double)i * 2*M_PI / 4096;//bit

		//ref
		refX = gsl_sf_cos(phase);
		refY = gsl_sf_sin(phase);

		//dut
		dutX = (double)getTestVectorOfUntimedNCO().sub3.outX[i] / 2048.0;
		dutY = (double)getTestVectorOfUntimedNCO().sub3.outY[i] / 2048.0;

		//delta
		deltaX = fabs(refX - dutX); avgErrX += deltaX;
		deltaY = fabs(refY - dutY); avgErrY += deltaY;

		if(deltaX > maxErrX){
			maxErrX = deltaX;
		}

		if(deltaY > maxErrY){
			maxErrY = deltaY;
		}
		//printf("[%4d] %.2lf %.2lf\n",i, deltaX*100, deltaY*100);
	}
	avgErrX = avgErrX / getTestVectorOfUntimedNCO().sampleNum * 100;
	avgErrY = avgErrY / getTestVectorOfUntimedNCO().sampleNum * 100;
	maxErrX *= 100;
	maxErrY *= 100;
	printf("[Signed Mode]\n");
	printf("    Avg Err: (X, Y) = (%.2lf%%, %.2lf%%)\n", avgErrX, avgErrY);
	printf("    Max Err: (X, Y) = (%.2lf%%, %.2lf%%)\n", maxErrX, maxErrY);
	printf("\n");


	//2.2. unsigned
	deltaX = 0;
	deltaY = 0;
	maxErrX = 0; avgErrX = 0;
	maxErrY = 0; avgErrY = 0;
	generateTestVectorOfUntimedNCO(256,1);
	for(uint32_t i=0; i<getTestVectorOfUntimedNCO().sampleNum; ++i){
		//test phase
		phase = (double)i * 2*M_PI / 4096;

		//ref
		refX = gsl_sf_cos(phase);
		refY = gsl_sf_sin(phase);

		//dut
		dutX = (double)getTestVectorOfUntimedNCO().sub3.outX[i] / 2048.0 - 1.0;//remove bias
		dutY = (double)getTestVectorOfUntimedNCO().sub3.outY[i] / 2048.0 - 1.0;//remove bias

		//delta
		deltaX = fabs(refX - dutX); avgErrX += deltaX;
		deltaY = fabs(refY - dutY); avgErrY += deltaY;

		if(deltaX > maxErrX){
			maxErrX = deltaX;
		}

		if(deltaY > maxErrY){
			maxErrY = deltaY;
		}
		//printf("[%4d] %.2lf %.2lf\n",i, deltaX*100, deltaY*100);
	}
	avgErrX = avgErrX / getTestVectorOfUntimedNCO().sampleNum * 100;
	avgErrY = avgErrY / getTestVectorOfUntimedNCO().sampleNum * 100;
	maxErrX *= 100;
	maxErrY *= 100;
	printf("[Unsigned Mode]\n");
	printf("    Avg Err: (X, Y) = (%.2lf%%, %.2lf%%)\n", avgErrX, avgErrY);
	printf("    Max Err: (X, Y) = (%.2lf%%, %.2lf%%)\n", maxErrX, maxErrY);
}


void UntimedNCO::clearVectors(){
	mNCOTestVec.sub1.outIsNeg.clear();
	mNCOTestVec.sub1.outPhase.clear();

	mNCOTestVec.sub2.outX.clear();
	mNCOTestVec.sub2.outY.clear();

	mNCOTestVec.sub3.outX.clear();
	mNCOTestVec.sub3.outY.clear();
}

void UntimedNCO::saveTestVecFile(){
	if(mNCOTestVec.isValidTestVec == true) {
		//write test vec on buffer
		mBuffer << "index s1_phase s1_isNeg s2_x s2_y s3_x s3_y s3_xFT s3_yFT\n";
		for(uint32_t i = 0; i < mNCOTestVec.sampleNum; ++i){
			mBuffer 
			//index
			<< i << " "

			//sub1
			<< mNCOTestVec.sub1.outPhase[i] << " "
			<< mNCOTestVec.sub1.outIsNeg[i] << " "

			//sub2
			<< mNCOTestVec.sub2.outX[i] << " "
			<< mNCOTestVec.sub2.outY[i] << " "

			//sub3
			<< mNCOTestVec.sub3.outX[i] << " "
			<< mNCOTestVec.sub3.outY[i] << " "

			//FT
			<< mNCOTestVec.freqResp.X.data[i] << " "
			<< mNCOTestVec.freqResp.Y.data[i] << " "
			<< '\n';
		}
		mBuffer << "sample_num nco_fcw nco_mode sys_clk nco_clk xPeak1 xPeak2 xSFDR yPeak1 yPeak2 ySFDR\n";
		mBuffer << mNCOTestVec.sampleNum << " "
				<< mNCOTestVec.inFCW << " " << mNCOTestVec.inMode << " "
				<< mNCOTestVec.clkSys << " " << mNCOTestVec.clkNCO << " "
				<< mNCOTestVec.freqResp.X.peak1stIndex << " " 
				<< mNCOTestVec.freqResp.X.peak2ndIndex << " " 
				<< mNCOTestVec.freqResp.X.SFDR << " "
				<< mNCOTestVec.freqResp.Y.peak1stIndex << " " 
				<< mNCOTestVec.freqResp.Y.peak2ndIndex << " " 
				<< mNCOTestVec.freqResp.Y.SFDR << " "
				<< '\n'; //NCO setting

		//open file and write test vec at once
		string fileName = fDir 						   + "/"	// ./test_vec/
						+ fModeNCO[mNCOTestVec.inMode] 			// us or s
						+ to_string(mNCOTestVec.inFCW) + "_" 	// FCW
						+ fName 								// _NCO
						+ fType;								// .txt
		mFile.open(fileName);
		mFile << mBuffer.str();
		mBuffer.str("");
		mBuffer.clear();
		mFile.close();
	}
	else {
		cout << "Generate test vector first" << endl;
	}
}

const TestVectorOfNCO& UntimedNCO::getTestVectorOfUntimedNCO(){
	return mNCOTestVec;
}

const MemberOfNCO& UntimedNCO::getMemberOfNCO() const {
	return mNCO;
}

const OutputOfNCO& UntimedNCO::getOutputOfNCO() const {
	return mNCO.out;
}

double UntimedNCO::calcClkNCO() {
	double clkNCO = (double)mNCO.inFCW * mNCO.clkSys / pow(2,20);
	return clkNCO;
}

uint32_t UntimedNCO::calcGCD(uint32_t a, uint32_t b) {
    if (b == 0) {
        return a;
    }
    return calcGCD(b, a % b);
}