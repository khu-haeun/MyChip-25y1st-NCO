#include "TestBench.h"
#include "define.h"
using std::stoul;
using std::cout;
using std::endl;

int sc_main(int argc, char** argv)
{
#ifdef DUT_VERILATED
    if(argc < 2) {
		cout << "Usage: " << argv[0] << " SNUM=<sampleNum value>\n";
		cout << "ex   : " << argv[0] << " SNUM=1024\n";
		return 1;
	}
	uint32_t SNUM = stoul(argv[1]);

    //TB
    TestBench u_sc_nco_tb("u_sc_nco_tb");
    u_sc_nco_tb.setSampleNum(SNUM);
#endif

#ifdef DUT_VERILOG
    TestBench u_sc_nco_tb("u_sc_nco_tb");
    u_sc_nco_tb.setSampleNum(SNUM);
#endif
    //sim start
    sc_start();

    return 0;
}