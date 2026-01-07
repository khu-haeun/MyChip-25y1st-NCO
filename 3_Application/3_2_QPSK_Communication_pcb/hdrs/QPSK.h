#ifndef _SC_NCO_QPSK_H_
#define _SC_NCO_QPSK_H_

#include <systemc.h>
#include <string>
#include <vector>
#include "FourierTransform.h"
using std::vector;
using std::string;

// Constants ---------------------
//0. clk
#define SYS_CLK	20 //50MHz
#define F10MHz 10000000
#define P10MHz_NS 100
#define F50MHz 50000000
#define P50MHz_NS 20
#define F100MHz 100000000
#define P100MHz_NS 10

//1. XY
#define X 1
#define Y 0
	
#include "VerilatedNCO.h"
#include "WrapperOfNCO.h"

//#define DEV
typedef struct MemberOfQPSK{
    //comm spec
    int bitrate; //init when constructed
    int symbolrate; //init when constructed
    int samplePerBit; //init when constructed
    int samplePerSymbol; //init when constructed
	double carrierFreq; //init when constructed

	//HW
#ifdef DEV
	VerilatedNCO*		NCO; //init when constructed
#else
	WrapperOfNCO*		NCO;
#endif

	uint32_t				inFCW; //init when constructed
	const int bitSerialLatency = 7;

	//component
    string 	 txMsg;			//init when constructed
	vector<int16_t> txMsgToBit;
	vector<int16_t> txMsgBitstream;
	//		   |
	//         v			
	vector<int16_t> nrzI;   //
	vector<int16_t> nrzQ;   //
	//		   |
	//         v
	vector<int16_t> modI;   //carrier multiplied //use HW NCO
	vector<int16_t> modQ;   //carrier multiplied //use HW NCO
	//		   |
	//         v
	vector<int16_t> modOut; //modI + modQ
	//		   |
	//         v
	vector<int32_t> deModI;
	vector<int32_t> deModQ;
	//		   |
	//         v
	vector<double> lpfI; //
	vector<double> lpfQ; //
	//		   |
	//         v
	vector<double> sampledI;
	vector<double> sampledQ;
	vector<double> sampledStreamI;
	vector<double> sampledStreamQ;
	vector<int16_t> rxMsgToBitstream;
	vector<int16_t> rxMsgToBit;
	string 	 rxMsg;

    //const
    const string commType = "QPSK";
	const int bitPerSymbol = 2;
	const int nrz[2] = {-1, 1};
	const int TAB = 59;
	const double LPF_COEFFS[59] = { //https://fiiir.com/ 
		0.000000000000000000,
		0.000005699590406889,
		0.000030907531051529,
		0.000089545034189875,
		0.000198436957395816,
		0.000377852938886577,
		0.000651752649363578,
		0.001047630881378094,
		0.001595889354773163,
		0.002328703156848112,
		0.003278397299388885,
		0.004475398857258455,
		0.005945878055615647,
		0.007709232996012373,
		0.009775603361987220,
		0.012143615113127004,
		0.014798558656517564,
		0.017711186400586661,
		0.020837282519842088,
		0.024118110199136667,
		0.027481782895068429,
		0.030845540613903426,
		0.034118844928206098,
		0.037207142795910371,
		0.040016094406278686,
		0.042456018859681151,
		0.044446287101268495,
		0.045919386470986048,
		0.046824396283054376,
		0.047129648183753349,
		0.046824396283054383,
		0.045919386470986048,
		0.044446287101268495,
		0.042456018859681151,
		0.040016094406278679,
		0.037207142795910385,
		0.034118844928206112,
		0.030845540613903422,
		0.027481782895068436,
		0.024118110199136688,
		0.020837282519842099,
		0.017711186400586668,
		0.014798558656517564,
		0.012143615113127015,
		0.009775603361987234,
		0.007709232996012376,
		0.005945878055615655,
		0.004475398857258461,
		0.003278397299388884,
		0.002328703156848113,
		0.001595889354773161,
		0.001047630881378094,
		0.000651752649363577,
		0.000377852938886577,
		0.000198436957395816,
		0.000089545034189875,
		0.000030907531051529,
		0.000005699590406890,
		0.000000000000000000
	};
} MemberOfQPSK;

SC_MODULE(QPSK)
{
//1. HW signal
	//ctrl
	sc_clock                clk;
	sc_signal<bool>			tbEn;
	sc_signal<bool>			tbInMode;
	sc_signal<bool>			tbInSelXY;

	//input 
	sc_signal<sc_uint<20>>	tbInFCW;

	//output mpw
	sc_signal<sc_uint<12>>	tbOutData;
	sc_signal<bool>			tbOutVld;

//2. member
	MemberOfQPSK			mQPSK;

//3. method
	//TOP
	void simulateMoDeM();
	//mod
	void convertMsgToBitstream();
	void convertBitstreamToNRZ();
	void modulateSignal(); //HW
	//demod
	void deModulateSignal(); //HW
	void applyLPF();
	void convertNRZToBitstream();
	void convertBitstreamToMsg();

	uint32_t calcFCW();
	void disableDUT();
	void enableDUT();

//4. con/destructor
	QPSK(sc_module_name name, string msg, double bitrate, double carrierFreq) : //double carrierFreq
		sc_module(name),
		clk("clk", P10MHz_NS, SC_NS, 0.5, 0.0, SC_NS, false),
		tbEn("tbEn"),
		tbInMode("tbInMode"),
		tbInSelXY("tbInSelXY"),
        tbInFCW("tbInFCW"),
        tbOutVld("tbOutVld"),
        tbOutData("tbOutData")
	{
		SC_THREAD(simulateMoDeM);
        sensitive << clk;

	#ifdef DEV
		mQPSK.NCO = new VerilatedNCO("HW_NCO");
	#else
		mQPSK.NCO = new WrapperOfNCO("mpwNCO");
	#endif
		mQPSK.NCO->clk(clk);
		mQPSK.NCO->en(tbEn);
		mQPSK.NCO->inMode(tbInMode);
		mQPSK.NCO->inSelXY(tbInSelXY);
		mQPSK.NCO->inFCW(tbInFCW);
		mQPSK.NCO->outData(tbOutData);
		mQPSK.NCO->outVld(tbOutVld);

		//member init
		mQPSK.bitrate = bitrate;
		mQPSK.samplePerBit = (double)F10MHz  / mQPSK.bitrate;

		mQPSK.symbolrate = mQPSK.bitrate / mQPSK.bitPerSymbol;
		mQPSK.samplePerSymbol = (double)F10MHz / mQPSK.symbolrate;

		mQPSK.carrierFreq = carrierFreq;
		mQPSK.inFCW = calcFCW();

    	mQPSK.txMsg = msg;
	}
	
	~QPSK(void)
    {
		printf("end");
		delete mQPSK.NCO;
    }
};
#endif