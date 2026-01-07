//#include "TestBenchOfSub1.h"
#include "QPSK.h"
using std::stoul;
using std::cout, std::endl;

#define kHz 1000
#define kbps 1000
int sc_main(int argc, char** argv)
{
    if(argc < 2) {
		cout << "Usage: " << argv[0] << " FCW=<FCW value>\n";
		cout << "ex   : " << argv[0] << " FCW=1024\n";
		return 1;
	}
	uint32_t freq = stoul(argv[1]);
    string msg = argv[2];

    //TB
    QPSK uQPSK("u_QPSK", msg, 320*kbps, (double)freq*kHz);

    //sim start
    sc_start();

    return 0;
}