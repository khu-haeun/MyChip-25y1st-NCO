//
// Function to calculate the DFT
//
#include <math.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "define.h"
#include "calcFourier.h"
#include "complex.h"

OutputOfFourier* constructOutputOfFourier(){
    OutputOfFourier* this = (OutputOfFourier*)malloc(sizeof(OutputOfFourier));
    this-> Xr = (double*)malloc(sizeof(double)*SAMPLE_NUM);
    this-> Xi = (double*)malloc(sizeof(double)*SAMPLE_NUM);
    this-> Yr = (double*)malloc(sizeof(double)*SAMPLE_NUM);
    this-> Yi = (double*)malloc(sizeof(double)*SAMPLE_NUM);
    return this;
};

void desturctOutputOfFourier(OutputOfFourier* this){
    free(this->Xr);
    free(this->Xi);
    free(this->Yr);
    free(this->Yi);
    free(this);
}

void calcDFT(OutputOfFourier* oDFT, int16_t *xn, int16_t *yn)
{
    int k, n;
    for (k = 0; k < SAMPLE_NUM; k++)
    {
        oDFT->Xr[k] = 0;
        oDFT->Xi[k] = 0;
        oDFT->Yr[k] = 0;
        oDFT->Yi[k] = 0;


        for (n = 0; n < SAMPLE_NUM; n++) //DFT
        {
            oDFT->Xr[k] = (oDFT->Xr[k] + (double)xn[n] * cos((double)(2.0 * M_PI * k * n / SAMPLE_NUM)));
            oDFT->Xi[k] = (oDFT->Xi[k] - (double)xn[n] * sin((double)(2.0 * M_PI * k * n / SAMPLE_NUM)));
            oDFT->Yr[k] = (oDFT->Yr[k] - (double)yn[n] * sin((double)(2.0 * M_PI * k * n / SAMPLE_NUM)));
            oDFT->Yi[k] = (oDFT->Yi[k] - (double)yn[n] * sin((double)(2.0 * M_PI * k * n / SAMPLE_NUM)));
        }
    }
}

void reverseBit(double complex *x, int N) {
    int i, j;
    for (i = 1, j = 0; i < N; i++) {
        int bit = N >> 1;
        while (j >= bit) {
            j -= bit;
            bit >>= 1;
        }
        j += bit;
        if (i < j) {
            double complex temp = x[i];
            x[i] = x[j];
            x[j] = temp;
        }
    }
}

void calcFFT(OutputOfFourier* oDFT, int16_t *xn, int16_t *yn) {
    int N = SAMPLE_NUM;

    // Use a single complex array for xn and yn to perform FFT
    double complex *x_complex = (double complex*)malloc(sizeof(double complex) * N);
    double complex *y_complex = (double complex*)malloc(sizeof(double complex) * N);

    // Populate complex arrays with input data. Assuming no imaginary part.
    for (int i = 0; i < N; i++) {
        x_complex[i] = (double)xn[i] + I * 0.0;
        y_complex[i] = (double)yn[i] + I * 0.0;
    }
    
    // Perform bit-reversal for both signals
    reverseBit(x_complex, N);
    reverseBit(y_complex, N);

    // Iterative FFT calculation (main butterfly loop)
    for (int len = 2; len <= N; len <<= 1) {
        double theta = -2.0 * M_PI / len;
        double complex wlen = cos(theta) + I * sin(theta);
        
        for (int i = 0; i < N; i += len) {
            double complex w = 1.0;
            for (int j = 0; j < len / 2; j++) {
                // Butterfly for xn
                double complex ux = x_complex[i + j];
                double complex vx = x_complex[i + j + len / 2] * w;
                x_complex[i + j] = ux + vx;
                x_complex[i + j + len / 2] = ux - vx;
                
                // Butterfly for yn
                double complex uy = y_complex[i + j];
                double complex vy = y_complex[i + j + len / 2] * w;
                y_complex[i + j] = uy + vy;
                y_complex[i + j + len / 2] = uy - vy;

                w *= wlen;
            }
        }
    }
    
    // Copy the results to the output structure
    for (int i = 0; i < N; i++) {
        oDFT->Xr[i] = creal(x_complex[i]);
        oDFT->Xi[i] = cimag(x_complex[i]);
        oDFT->Yr[i] = creal(y_complex[i]);
        oDFT->Yi[i] = cimag(y_complex[i]);
    }

    // Free temporary memory
    free(x_complex);
    free(y_complex);
}