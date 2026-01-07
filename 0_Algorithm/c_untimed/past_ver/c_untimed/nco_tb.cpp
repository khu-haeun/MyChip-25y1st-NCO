#include <stdio.h>
#include <math.h>
#include "nco.h"

// Variables ---------------------
//1. Frequency Control Word(< 262144)
	#define FCW_ 5000//524287//131070 //262140

//2. signed/unsigned mode select
	#define UNSIGNED_ 1
	#define SIGNED_ 0
	#define SEL_SIGN SIGNED_
	//#define SEL_SIGN UNSIGNED_
//-------------------------------

void calcDFT(int16_t *xn, uint16_t len, uint16_t N, double *Xr, double *Xi);

int main(void){
	
	data_t x [F_SAMPLE], y [F_SAMPLE];
	double Xr[F_SAMPLE], Xi[F_SAMPLE];
    double Yr[F_SAMPLE], Yi[F_SAMPLE];
	
	NCO(x, y, FCW_, SEL_SIGN);

	calcDFT(x, F_SAMPLE, F_SAMPLE, Xr, Xi);
    calcDFT(y, F_SAMPLE, F_SAMPLE, Yr, Yi);
	
	for (int i=0; i<F_SAMPLE; i++){
        printf("%d %d %5.3f %d %5.3f\n", i,
			x[i], log(1.0+sqrt((double)(Xr[i]*Xr[i]+Xi[i]*Xi[i]))),//(Xr[i]*Xr[i]+Xi[i]*Xi[i]),
			y[i], log(1.0+sqrt((double)(Yr[i]*Yr[i]+Yi[i]*Yi[i]))) //(Yr[i]*Yr[i]+Yi[i]*Yi[i])
        );
	}
	
	printf("%d %d\n", F_SAMPLE, FCW_);
		
	return 0;
}
