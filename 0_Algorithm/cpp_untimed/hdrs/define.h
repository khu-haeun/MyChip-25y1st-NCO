#ifndef _DEFINE_H_
#define _DEFINE_H_

//---< NCO >-----------------------------------------------
//CLK speed
    #define MEGA        1000000
    #define MHz         MEGA

//Mode
    #define UNSIGNED_MODE 1
    #define SIGNED_MODE 0

//---< Main.cpp option >-----------------------------------
#define TEST1_FREQ_ACCURACY 1
#define TEST2_SFDR          2
#define TEST3_CORDIC        3

//---< constexpr utils >-----------------------------------
constexpr uint32_t calcConstexprPowerOfTwo(int exp){
    int powerOfTwo = 1 << exp;
    return powerOfTwo;
}

#endif