#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include "GenerateSinusoid.h"

void GenerateSinusoid::genSinusoid(){
//signed test
	//uint32_t sampleNum = 524288;
	this->disableDUT();
	tbInFCW.write( sc_uint<20>(mFCW) );
	tbInMode.write(mBIAS);
	tbInSelXY.write(mXY);
	this->enableDUT();

	for(uint32_t i = 0; ; ++i){
		int16_t dataDUT;
		bool vldDUT;
		if(!mBIAS) {
			dataDUT = (sc_int<12>)mpwOutData.read();
			vldDUT = mpwOutVld.read();
		}
		else {
			dataDUT = (sc_uint<12>)mpwOutData.read();
			vldDUT = mpwOutVld.read();
		}
		

		printf("%d %d %d\n",
		i,
		(int)dataDUT,
		(int)vldDUT
		);

		fflush(stdout);

		wait(clk.posedge_event());
	}
	
    sc_stop();
}

void GenerateSinusoid::disableDUT(){
	tbEn.write(0);
	wait(clk.posedge_event());
}

void GenerateSinusoid::enableDUT(){
	tbEn.write(1);
	wait(clk.posedge_event());
}