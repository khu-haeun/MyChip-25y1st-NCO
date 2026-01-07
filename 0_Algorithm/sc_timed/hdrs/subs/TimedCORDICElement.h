#ifndef _SC_NCO_SUB2_
#define _SC_NCO_SUB2_

#include <systemc.h>

SC_MODULE(TimedCORDICElement)
{
//1. i/o
	//ctrl
	sc_in	< bool > 			clk;
	sc_in	< sc_uint<3> >		inStg;

	//input
	sc_in   < bool >			inIsNeg;
	sc_in 	< sc_int<12> >		inPhase;
	sc_in 	< sc_int<12> >		inX;
	sc_in 	< sc_int<12> >		inY;

	//output
	sc_out 	< bool > 			outIsNeg;
	sc_out	< sc_int<12> >		outPhase;
	sc_out	< sc_int<12> >		outX;
	sc_out	< sc_int<12> >		outY;
	
    const sc_int<12> arctanTable[8] = {
		511,//44.96 degree
		301,//26.50 degree
		159,//14.02 degree
		80,	//7.07 degree
		40,	//3.56 degree
		19,	//1.71 degree
		9,	//0.83 degree
		4,	//0.39 degree
	};

	void ceThread(void){
		while (true)
        {
			//posedge trig
            wait(clk.posedge_event());

			//cordic element
			if(inPhase.read() >= 0) {
				outX.write( inX.read() - ( inY.read() >> inStg.read() ));
				outY.write( inY.read() + ( inX.read() >> inStg.read() ));
				outPhase.write( inPhase.read() - arctanTable[inStg.read()] );
			}
			else {
				outX.write( inX.read() + ( inY.read() >> inStg.read() ));
				outY.write( inY.read() - ( inX.read() >> inStg.read() ));
				outPhase.write( inPhase.read() + arctanTable[inStg.read()] );
			}

			//pass through
			outIsNeg.write(inIsNeg.read());
		}
	};
	
	SC_CTOR(TimedCORDICElement):
		clk  	("clk"  ),
		inStg  	("inStg"  ),
		inIsNeg ("inIsNeg" ), 
		inPhase ("inPhase"  ),  
		inX	 	("inX"  ),
		inY	 	("inY"  ),
		outIsNeg("outIsNeg"),
		outPhase("outPhase" ),
		outY 	("outY" ), 
		outX 	("outX" )    
    {
        SC_THREAD(ceThread);
        sensitive << clk;
    }
	
	~TimedCORDICElement(void)
    {
    }
};

SC_MODULE(TimedCORDIC)
{
//1. i/o
	//ctrl
	sc_in	< bool > 			clk;
	
	//input
	//sc_in 	< sc_int<12> >	Xin;//=oneOverK
	//sc_in 	< sc_int<12> >	Yin;//=0
	sc_in 	< sc_int<12> >		inPhase;
	sc_in  	< bool >			inIsNeg;

	//output
	sc_out	< sc_int<12> >		outX;
	sc_out	< sc_int<12> >		outY;
	sc_out	< sc_int<12> >		outPhase;
	sc_out 	< bool >			outIsNeg;
	
    //2. component
	TimedCORDICElement* 		mCE[8];
	sc_signal<sc_uint<3>>  		wStg[8];
	sc_signal<sc_int<12>>       wX[8];
	sc_signal<sc_int<12>>       wY[8];
	sc_signal<sc_int<12>>       wPhase[8];
	sc_signal<bool>  			wIsNeg[8];

	const sc_int<12> oneOverK = 1242;

	SC_CTOR(TimedCORDIC):
		clk  	("clk"),
		inPhase	("inPhase"),
		inIsNeg ("inIsNeg"),
		outX 	("outX"),
		outY 	("outY"),
		outPhase("outPhase"),
		outIsNeg("outIsNeg")
    {
		//1. alloc ce
        char ceName[16];
		for (int i=0; i<8; i++){
			sprintf(ceName, "CE_%d", i);
			mCE[i] = new TimedCORDICElement(ceName);
		}

		//2. conect ports
		//common	
		for(int i=0; i<8; i++){
			mCE[i]->clk(clk);
			wStg[i].write(sc_uint<3>(i));	  	//inStg
			mCE[i]->inStg(wStg[i]);
		}	
		
		//connect CEs
		wX[0].write(oneOverK);		//this->inX(wX[0]);
		wY[0].write(0);				//this->inY(wY[0]);
		mCE[0]->inX(wX[0]);				mCE[0]->outX(wX[1]);
		mCE[0]->inY(wY[0]);				mCE[0]->outY(wY[1]);
		mCE[0]->inPhase(this->inPhase);	mCE[0]->outPhase(wPhase[1]);
		mCE[0]->inIsNeg(this->inIsNeg);	mCE[0]->outIsNeg(wIsNeg[1]);
		for (int i=1; i<7; i++){
			mCE[i]->inX(wX[i]);			mCE[i]->outX(wX[i+1]);
			mCE[i]->inY(wY[i]);			mCE[i]->outY(wY[i+1]);
			mCE[i]->inPhase(wPhase[i]);	mCE[i]->outPhase(wPhase[i+1]);
			mCE[i]->inIsNeg(wIsNeg[i]);	mCE[i]->outIsNeg(wIsNeg[i+1]);
		}
		mCE[7]->inX(wX[7]);			mCE[7]->outX(this->outX);
		mCE[7]->inY(wY[7]);			mCE[7]->outY(this->outY);
		mCE[7]->inPhase(wPhase[7]);	mCE[7]->outPhase(this->outPhase);
		mCE[7]->inIsNeg(wIsNeg[7]);	mCE[7]->outIsNeg(this->outIsNeg);
    }
	
	~TimedCORDIC(void)
    {
        for(auto inst : mCE){
            delete inst;
        }
    }
};
#endif