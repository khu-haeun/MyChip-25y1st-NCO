//#include "TestBenchOfSub1.h"
#include "TestBench.h"
using std::stoul;
using std::cout, std::endl;

int sc_main(int argc, char** argv)
{
    if(argc < 2) {
		cout << "Usage: " << argv[0] << " SNUM=<sampleNum>\n";
		cout << "ex   : " << argv[0] << " SNUM=1024\n";
		return 1;
	}
	uint32_t SNUM = stoul(argv[1]);

    //TB
    TestBench u_sc_nco_tb("u_sc_nco_tb", SNUM);

    //sim start
    sc_start();

    return 0;
}