#include "TestBenchOfTimedNCO.h"
using std::stoul;
using std::cout, std::endl;

int sc_main(int argc, char** argv)
{
    //CLA
    if(argc < 2) {
		cout << "Usage: " << argv[0] << " FCW=<FCW value>\n";
		cout << "ex   : " << argv[0] << " FCW=1024\n";
		return 1;
	}
	uint32_t FCW = stoul(argv[1]);

    //TB
    TestBenchOfTimedNCO u_sc_nco_tb("u_sc_nco_tb", FCW);

    //sim start
    sc_start();

    return 0;
}