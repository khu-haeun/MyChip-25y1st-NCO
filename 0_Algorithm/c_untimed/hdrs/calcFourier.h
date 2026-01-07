#ifndef _CALC_DFT_H_
#define _CALC_DFT_H_

#include <math.h>
#include <stdint.h>
#include <complex.h>

typedef struct OutputOfFourier{
    double* Xr;
    double* Xi;
    double* Yr;
    double* Yi;
} OutputOfFourier;

OutputOfFourier* constructOutputOfFourier();
void desturctOutputOfFourier(OutputOfFourier*);
void calcDFT(OutputOfFourier* oDFT, int16_t *xn, int16_t *yn);
void reverseBit(double complex *x, int N);
void calcFFT(OutputOfFourier* oDFT, int16_t *xn, int16_t *yn);


#endif