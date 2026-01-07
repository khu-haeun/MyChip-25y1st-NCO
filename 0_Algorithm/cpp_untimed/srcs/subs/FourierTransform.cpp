#include <cmath>
#include <iostream>
#include "FourierTransform.h"

using std::cout, std::endl;
using std::cos, std::sin;
using std::log, std::pow;

FourierTransform::FourierTransform(const uint32_t sampleNum)
{
    mSampleNum = sampleNum;

    //gsl
    mWavetable = gsl_fft_complex_wavetable_alloc(mSampleNum);
    mWorkspace = gsl_fft_complex_workspace_alloc(mSampleNum);
}

FourierTransform::~FourierTransform()
{
    gsl_fft_complex_wavetable_free(mWavetable);
    gsl_fft_complex_workspace_free(mWorkspace);
}

void FourierTransform::calcFFT(const vector<int16_t>& Xn, const vector<int16_t>& Yn, const bool isUnsignedMode, const uint32_t sampleNum) {
    //1. Xn -> mXComplexPack / Yn -> mYComplexPack
    saveDataToComplexPack(Xn,Yn);

    //2. calcFFT with mXComplexPack, mYComplexPack
    gsl_fft_complex_forward(mXComplexPack.data(), 1, mSampleNum, mWavetable, mWorkspace);
    gsl_fft_complex_forward(mYComplexPack.data(), 1, mSampleNum, mWavetable, mWorkspace);

    //3. mXComplexPack[i]:Real / mXComplexPack[i+1]:Imag => calc power
    for(uint32_t i = 0; i < mSampleNum; ++i){ 
        double magX = sqrt(
            mXComplexPack[2*i]   * mXComplexPack[2*i] + //REAL
            mXComplexPack[2*i+1] * mXComplexPack[2*i+1] //IMAG
        );
        double magY = sqrt(
            mYComplexPack[2*i]   * mYComplexPack[2*i] + //REAL
            mYComplexPack[2*i+1] * mYComplexPack[2*i+1] //IMAG
        );

        if( magX == 0) {
            magX = 1e-15;
        }
        if( magY == 0) {
            magY = 1e-15;
        }

		mFourier.X.data.push_back(20.0 * log10(magX));
        mFourier.Y.data.push_back(20.0 * log10(magY));
	}

    //4. calc SFDR
    calcSFDR(isUnsignedMode);
}

void FourierTransform::clearVectors(){
    mXComplexPack.clear();
    mYComplexPack.clear();
    mFourier.X.data.clear();
    mFourier.Y.data.clear();
}

const OutputSetOfFT& FourierTransform::getOutputOfFT() const {
    return mFourier;
}

uint32_t FourierTransform::getSampleNum() const {
    return mSampleNum;
}

void FourierTransform::findPeaks(const bool isUnsignedMode){
    uint32_t x1stIndex, x2ndIndex;
    double x1stPeak, x2ndPeak;
    uint32_t y1stIndex, y2ndIndex;    
    double y1stPeak, y2ndPeak;

    double data;
    uint32_t N = (mSampleNum >> 1) + 1;
    uint32_t startIndex;
    
    if(isUnsignedMode == true){
        startIndex = 1;
    }
    else {
        startIndex = 0;
    }

    //init value
    x1stIndex = startIndex;
    x2ndIndex = startIndex;
    x2ndPeak = mFourier.X.data[startIndex];
    x1stPeak = mFourier.X.data[startIndex];
    y1stIndex = startIndex;
    y2ndIndex = startIndex;
    y1stPeak = mFourier.Y.data[startIndex];
    y2ndPeak = mFourier.Y.data[startIndex];

    //find peak 1 & 2
    for(uint32_t i = startIndex; i < N; i++){
        //X
        data = mFourier.X.data[i];
        if(data > x1stPeak){
            x2ndIndex = x1stIndex;
            x1stIndex = i;

            x2ndPeak = x1stPeak;
            x1stPeak = data;
        }
        else if(data > x2ndPeak && data != x1stPeak){
            x2ndIndex = i;
            x2ndPeak = data;
        }

        //Y
        data = mFourier.Y.data[i];
        if(data > y1stPeak){
            y2ndIndex = y1stIndex;
            y1stIndex = i;
            
            y2ndPeak = y1stPeak;
            y1stPeak = data;
        }
        else if(data > y2ndPeak && data != y1stPeak){
            y2ndIndex = i;
            y2ndPeak = data;
        }
    }

    //X update
    mFourier.X.peak1stIndex = x1stIndex;
    mFourier.X.peak2ndIndex = x2ndIndex;
    mFourier.X.peak1st = x1stPeak;
    mFourier.X.peak2nd = x2ndPeak;

    //Y update
    mFourier.Y.peak1stIndex = y1stIndex;
    mFourier.Y.peak2ndIndex = y2ndIndex;
    mFourier.Y.peak1st = y1stPeak;
    mFourier.Y.peak2nd = y2ndPeak;

    //test code
    /*
    cout << "X" << endl;
    cout << "data[x1stindex]: " << mFourier.X.data[mFourier.X.peak1stIndex] << endl;
    cout << "data[x2ndindex]: " << mFourier.X.data[mFourier.X.peak2ndIndex] << endl;
    cout << "x1stPeak       : " << mFourier.X.peak1st << endl;
    cout << "x2ndPeak       : " << mFourier.X.peak2nd << endl;
    cout << endl;
    cout << "Y" << endl;
    cout << "data[y1stindex]: " << mFourier.Y.data[mFourier.Y.peak1stIndex] << endl;
    cout << "data[y2ndindex]: " << mFourier.Y.data[mFourier.Y.peak2ndIndex] << endl;
    cout << "y1stPeak       : " << mFourier.Y.peak1st << endl;
    cout << "y2ndPeak       : " << mFourier.Y.peak2nd << endl;
    */
}

void FourierTransform::calcSFDR(const bool isUnsignedMode){
    findPeaks(isUnsignedMode);
    mFourier.X.SFDR = mFourier.X.peak1st - mFourier.X.peak2nd;
    mFourier.Y.SFDR = mFourier.Y.peak1st - mFourier.Y.peak2nd;
};

void FourierTransform::saveDataToComplexPack(const vector<int16_t>& Xn, const vector<int16_t>& Yn){
    for(uint32_t i = 0; i < mSampleNum; ++i){
        mXComplexPack.push_back(Xn[i]);    //REAL
        mXComplexPack.push_back(0);        //IMAG
        mYComplexPack.push_back(Yn[i]);    //REAL
        mYComplexPack.push_back(0);        //IMAG
    }
}

