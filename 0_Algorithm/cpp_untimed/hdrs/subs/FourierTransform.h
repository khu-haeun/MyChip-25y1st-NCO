#ifndef _FT_H_
#define _FT_H_

#include <cstdint>
#include <complex>
#include <vector>
#include <gsl/gsl_fft_complex.h>
#include "define.h"

using std::int16_t;
using std::vector;
using std::complex;

typedef struct OutputOfFourierTransform{
    vector<double> data;
    uint32_t peak1stIndex;
    double peak1st;
    uint32_t peak2ndIndex;
    double peak2nd;
    double SFDR;
} OutputOfFT;

typedef struct OutputSetOfFourierTransform{
    uint32_t sampleNum;
    OutputOfFT X;
    OutputOfFT Y;
} OutputSetOfFT;

typedef class FourierTransform
{
//method
public:
    FourierTransform(const uint32_t sampleNum);
    ~FourierTransform();

    void calcFFT(const vector<int16_t>& Xn, const vector<int16_t>& Yn,  const bool isUnsignedMode,//python plot for all FCW
        const uint32_t sampleNum                                        //python plot with slider, use default sampleNum
    ); 
    void clearVectors();

    const OutputSetOfFT& getOutputOfFT() const;
    uint32_t getSampleNum() const;
protected:
private:
    void findPeaks(const bool isUnsignedMode);
    void calcSFDR(const bool isUnsignedMode);
    void saveDataToComplexPack(const vector<int16_t>& Xn, const vector<int16_t>& Yn);

//member
public:
protected:
private:
    vector<double> mXComplexPack;
    vector<double> mYComplexPack;
    gsl_fft_complex_wavetable* mWavetable;
    gsl_fft_complex_workspace* mWorkspace;

    uint32_t mSampleNum;
    OutputSetOfFT mFourier;
} FT;


#endif