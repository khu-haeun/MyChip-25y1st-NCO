#include "GenerateSinusoid.h"
using std::stoul;
using std::cout;
using std::endl;

int sc_main(int argc, char** argv)
{
    if(argc < 4) {
		cout << "Usage: " << argv[0] << " FCW=<sampleNum value> BIAS=<bool> XY=<bool> \n";
		cout << "ex   : " << argv[0] << " 1024 1 1\n";
		return 1;
	}
	uint32_t FCW = stoul(argv[1]);
	bool BIAS    = stoul(argv[2]);
	bool XY      = stoul(argv[3]);

    //TB
    GenerateSinusoid u_gen_sinu("u_gen_sinu", FCW, BIAS, XY);

    sc_start();

    return 0;
}