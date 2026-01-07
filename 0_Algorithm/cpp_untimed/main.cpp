#include <iostream>
#include "UntimedNCO.h"
#include "define.h"
using std::stoul;
using std::stoi;
using std::cout, std::endl;

#if TEST //Activate Test code of UntimedNCO
int main(int argc, char* argv[]) {
	//CLA
	if(argc < 2) {
		cout << "*** Usage ***: " << argv[0] << " option=<1,2,3>\n";
		cout << "ex. testFreqAccuracy : " << argv[0] << " 1\n";
		cout << "ex. testSFDR  		  : " << argv[0] << " 2\n";
		cout << "ex. testCORDIC  	  : " << argv[0] << " 3\n";
		return 1;
	}
	int option = stoi(argv[1]);

	//gen UntimedNCO object
	UntimedNCO uNCO(10*MHz);

	switch(option)
	{
	case TEST1_FREQ_ACCURACY:
		uNCO.testFreqAccuracy();
		break;
	case TEST2_SFDR:
		uNCO.testSFDR();
		break;
	case TEST3_CORDIC:
		uNCO.testCORDIC();
		break;
	default:
		cout << "Error: input cla option=1~3\n";
		break;
	}
}
#endif

#if CLA //Activate FCW application
int main(int argc, char* argv[]) {
	//CLA
	if(argc < 3) {
		cout << "*** Usage ***: " << argv[0] << " FCW=<FCW value> MODE=<BOOL>\n";
		cout << "ex. unsigned : " << argv[0] << " 1024 1\n";
		cout << "ex.   signed : " << argv[0] << " 1024 0\n";
		return 1;
	}
	uint32_t FCW  = stoul(argv[1]);
	bool     MODE = stoi(argv[2]);

	//NCO
	UntimedNCO uNCO(10*MHz);
	uNCO.generateTestVectorOfUntimedNCO(FCW, MODE);//use proper sampleNum for input FCW
	//uNCO.generateTestVectorOfUntimedNCO(FCW, MODE, false);//use default sampleNum 16384
	//uNCO.generateTestVectorOfUntimedNCO(FCW, UNSIGNED_MODE, false, 1024); //use user defined sampleNum
	
	uNCO.saveTestVecFile();
}
#endif



