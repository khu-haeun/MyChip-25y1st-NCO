#ifndef _DEFINE_H_
#define _DEFINE_H_

#define UNSIGNED        1
#define SIGNED          0

// NCO Ctrl ---------------------
//0. Number of Samples
    #define SAMPLE_NUM 	16384//1048576//8192//16384//32768//65536//131072

//1. HW Config
    #define CLK         200 //MHz
    #define TAP_NUM 	8

//2. Frequency Control Word(< 524289)
	#define FCW         424288//524288//131070 //262140

//3. signed/unsigned mode select
	#define MODE        SIGNED//UNSIGEND
//-------------------------------

#endif