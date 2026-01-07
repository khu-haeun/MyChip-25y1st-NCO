#include "nco.h"
#include "math.h"

//TOP function: NCO(Numerically Controlled Oscillator)
void NCO(data_t* xout, data_t* yout, uint32_t fcw, bool selSign){// angle_t fcw){//
	angle_t phase_arr[F_SAMPLE];
	bool is_arr[F_SAMPLE];
	
	phaseAcc(phase_arr, is_arr, fcw);
	for(int i=0; i<F_SAMPLE; i++){
		cordic(&xout[i], &yout[i], phase_arr[i]);
		outputTerminal(&xout[i], &yout[i], is_arr[i], selSign);
	}
}

//1. phase accumulator ----------------------------------------------------------
void phaseAcc(angle_t* phase_arr, bool* invert_sign_arr, uint32_t fcw){ // angle_t fcw){/
	fcwCounter(phase_arr, fcw);
	cnt2phase(phase_arr, invert_sign_arr);
}

void fcwCounter(angle_t* phase_arr, uint32_t fcw){
	uint32_t tmp_arr[F_SAMPLE];
	uint32_t tmp = 0;
	phase_arr[0] = 0;
	tmp_arr[0] = 0;
	for(int i=0; i<F_SAMPLE-1; i++){
		tmp_arr[i+1] = tmp + fcw;
		
		//reset at 1cycle
		if(tmp_arr[i+1] > pow(2,20)-1) 
			tmp_arr[i+1] = uint32_t(fcw + tmp - pow(2,20));
		
		tmp = tmp_arr[i+1];
		phase_arr[i+1] = (angle_t)(tmp >> 8);
	}
}

void cnt2phase(angle_t* phase_arr, bool* invert_sign_arr){
	uint16_t	sign	= 0x0800;
	uint16_t	quadrant= 0x0C00;
	uint16_t	plane2	= 0x0400;
	uint16_t	plane3	= 0x0800;
	uint16_t	minus180= 0xF800;
	uint16_t	plus180 = 0x03FF;
	
	//calculate phase & gen phase array
	for(int i=0; i<F_SAMPLE; i++){
		//sign expand
		if( (phase_arr[i] & sign) == 0x0800 ) phase_arr[i] = phase_arr[i] | 0xF000;
		
		//cnt2phase
		if( (phase_arr[i] & quadrant) == plane2 ){ //12b'01~ => 12b'11~ (MSB 0->1)
			phase_arr[i] = phase_arr[i] | minus180;
			invert_sign_arr[i] = true;
		}
		else if( (phase_arr[i] & quadrant) == plane3 ){ //12b'10~ => 12b'00~ (MSB 1->0)
			phase_arr[i] = phase_arr[i] & plus180;
			invert_sign_arr[i] = true;
		}
		else invert_sign_arr[i] = false;
	}
}

//2. cordic ---------------------------------------------------------------------
void cordic(data_t* xout, data_t* yout, angle_t phase_arr){
	data_t x = oneOverK;
	data_t y = 0;
	data_t x_;
	angle_t a = phase_arr;
	
	for(int i=0; i<TAP_NUM; i++){
		x_ = x;
		if(a >= 0){
			x = x_ - (y  >> i);
			y = y  + (x_ >> i);
			a = a  - arctanTable[i];
		}
		else {
			x = x_ + (y  >> i);
			y = y  - (x_ >> i);
			a = a  + arctanTable[i];
		};
	};
	
	*xout = x;
	*yout = y;
}

//3. invert sign -----------------------------------------------------------------
void outputTerminal(data_t* xout, data_t* yout, bool invertSign, bool selSign){
	data_t x, y;
	data_t bias=0;
	x = *xout;
	y = *yout;
	
	if(selSign) bias=0x0800;
	
	if(invertSign) {
		x = -x+bias;
		y = -y+bias;
	}
	else {
		x = x+bias;
		y = y+bias;
	}
	
	*xout = x;
	*yout = y;
}