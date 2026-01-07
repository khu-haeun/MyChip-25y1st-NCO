#include <stdio.h>
#include <math.h>

#include "define.h"
#include "UntimedNCO.h"
#include "calcFourier.h"

void printTestOutput(UntimedNCO* uNCO, OutputOfFourier* oFourier){
	for (int i=0; i<SAMPLE_NUM; i++){
        printf("%d %d %5.3f %d %5.3f\n", i,
			//X
			uNCO->mNCO->oNCO->xArr[i], 
			log(1.0+sqrt((double)(oFourier->Xr[i]*oFourier->Xr[i]+oFourier->Xi[i]*oFourier->Xi[i]))),
			
			//Y
			uNCO->mNCO->oNCO->yArr[i], 
			log(1.0+sqrt((double)(oFourier->Yr[i]*oFourier->Yr[i]+oFourier->Yi[i]*oFourier->Yi[i])))
        );
	}
	printf("%d %d %d %d\n", SAMPLE_NUM, FCW, CLK, MODE);
}

int main(void){

	//1. Construct NCO
	UntimedNCO* refNCO = constructNCO(FCW, MODE);

	//2. Run NCO
	refNCO->runNCO(refNCO);

	//3. Calculate Frequency response(FFT)
	OutputOfFourier* freqResp = constructOutputOfFourier();
	calcFFT(
		freqResp, 
		refNCO->mNCO->oNCO->xArr, 
		refNCO->mNCO->oNCO->yArr
	);

	//4. print > UntimedNCO_out.txt
	printTestOutput(refNCO, freqResp);

	//5. destruct NCO
	destructNCO(refNCO);
	desturctOutputOfFourier(freqResp);

	return 0;
}


