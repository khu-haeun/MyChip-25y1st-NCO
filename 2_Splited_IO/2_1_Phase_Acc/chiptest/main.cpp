#include "TestBenchOfSub1.h"
using std::stoul;
using std::cout, std::endl;

int sc_main(int argc, char** argv)
{
    if(argc < 3) {
		cout << "Usage: " << argv[0] << " SNUM=<sample num> CNUM=<chip num>\n";
		cout << "ex   : " << argv[0] << " SNUM=1024 CNUM=7\n";
		return 1;
	}
	uint32_t SNUM = stoul(argv[1]);
    int      CNUM = stoul(argv[2]);

    //TB
    TestBenchOfSub1 u_sc_nco_tb("u_sc_nco_tb", SNUM, CNUM);

    //sim start
    sc_start();

    return 0;
}