
#include <fstream>
#include <iostream>
#include "QPSK.h"
#include "FourierTransform.h"

void QPSK::simulateMoDeM(){
	tbInFCW.write(mQPSK.inFCW);
	tbInMode.write(0);
	disableDUT();
	enableDUT();
	
	convertMsgToBitstream();
	convertBitstreamToNRZ();
	std::cout << "DATA_SIZE " << mQPSK.nrzI.size() << "\n"; 
    std::cout << std::flush;


	//modulation
	modulateSignal();	
	
	//demodulation
	deModulateSignal();

	applyLPF();
	convertNRZToBitstream();
	convertBitstreamToMsg();

	//FT modFT(mQPSK.txMsgBitstream.size());
	//modFT.calcFFT(mQPSK.modI, mQPSK.modQ, 0, mQPSK.txMsgBitstream.size());
	//modFT.getOutputOfFT();
	
	// 1. 출력 파일 스트림 객체 생성
    std::ofstream outFile("./utils/out.txt");

    // 2. 파일 열기 성공 여부 확인
    if (!outFile.is_open()) {
        // 파일 열기에 실패하면 오류 메시지 출력 후 종료
        std::cerr << "Error: Could not open ./utils/out.txt for writing.\n";
        return; 
    }

    // 3. 헤더 라인 (선택 사항: 데이터 식별에 도움을 줍니다)
    outFile << "txMsgBitstream nrzI nrzQ modI modQ modOut deModI deModQ lpfI lpfQ sampledStreamI sampledStreamQ rxMsgToBitstream\n";

    // 4. 데이터 배열 루프를 돌며 파일에 쓰기
    for(int i = 0; i < mQPSK.txMsgBitstream.size(); i++){
        outFile << mQPSK.txMsgBitstream[i] << " "
                << mQPSK.nrzI[i]   << " "
                << mQPSK.nrzQ[i]   << " "  
                << mQPSK.modI[i]   << " "
                << mQPSK.modQ[i]   << " "
                << mQPSK.modOut[i] << " "
                << mQPSK.deModI[i] << " "
                << mQPSK.deModQ[i] << " "
                << mQPSK.lpfI[i]   << " "
                << mQPSK.lpfQ[i]   << " "
                << mQPSK.sampledStreamI[i] << " "
                << mQPSK.sampledStreamQ[i] << " "
                << mQPSK.rxMsgToBitstream[i] << "\n";
    }

    // 5. 요약 정보 쓰기
    // 하나의 공백 라인으로 데이터와 요약 정보 구분
    outFile << "\n"; 
    outFile << mQPSK.inFCW << " " 
            << mQPSK.carrierFreq << " " 
            << mQPSK.bitrate << " " 
            << mQPSK.samplePerSymbol << "\n";
            
    // 6. 최종 수신 메시지 쓰기
    outFile << mQPSK.rxMsg << "\n";

    // 7. 파일 스트림 닫기
    outFile.close();

	sc_stop();
}

//mod
void QPSK::convertMsgToBitstream(){
	mQPSK.txMsgToBit.clear();

	for(char ch : mQPSK.txMsg){
		uint8_t byte = ch;

		for(int i = 7; i>=0; --i){
			int bit = (byte >> i) & 1;
			mQPSK.txMsgToBit.push_back((int16_t)bit);
		}
	}

	mQPSK.txMsgBitstream.clear();
	for(int16_t bit : mQPSK.txMsgToBit){
		for(int i = 0; i < (int)mQPSK.samplePerBit; ++i){
			mQPSK.txMsgBitstream.push_back((int16_t)bit);
		}
	}
}

void QPSK::convertBitstreamToNRZ(){
	mQPSK.nrzI.clear();
	mQPSK.nrzQ.clear();
	for(int i=0; i < mQPSK.txMsgToBit.size(); i += 2){
		int16_t bit0 = mQPSK.txMsgToBit[i];
		int16_t bit1 = mQPSK.txMsgToBit[i+1];

		int16_t bitOfI = (bit0 == 0) ? mQPSK.nrz[0] : mQPSK.nrz[1];
		int16_t bitOfQ = (bit1 == 0) ? mQPSK.nrz[0] : mQPSK.nrz[1];

		for(int j = 0; j < (int)mQPSK.samplePerSymbol; ++j){
			mQPSK.nrzI.push_back(bitOfI);
			mQPSK.nrzQ.push_back(bitOfQ);
		}
	}
}

void QPSK::modulateSignal(){
	mQPSK.modI.clear();
	mQPSK.modQ.clear();
	mQPSK.modOut.clear();
	
	disableDUT();
	int cnt = 0;
	tbInSelXY.write(1);
	enableDUT();
	
	while(cnt < mQPSK.nrzI.size()){
		if(tbOutVld.read() == 1) {
			int16_t outX = (sc_int<12>)tbOutData.read();
			int16_t modI = (int16_t)outX * mQPSK.nrzI[cnt]; 

			//print modI
			std::cout << "ModI " << cnt << " " << modI << "\n"; // ModI [Index] [modI]
    		std::cout << std::flush;

			mQPSK.modI.push_back(modI);
			mQPSK.modOut.push_back(modI);
			cnt++;
		}
		wait(clk.posedge_event());
	}

	disableDUT();
	cnt=0;
	tbInSelXY.write(0);
	enableDUT();
	
	while(cnt < mQPSK.nrzI.size()){
		if(tbOutVld.read() == 1) {
			int16_t outY = (sc_int<12>)tbOutData.read();
			int16_t modQ = (int16_t)outY * mQPSK.nrzQ[cnt];

			//print modQ
			std::cout << "ModQ " << cnt << " " << modQ << "\n"; // ModQ [Index] [modQ]
    		std::cout << std::flush;

			mQPSK.modQ.push_back(modQ);
			mQPSK.modOut[cnt] += modQ;
			
			//print modOut
			//std::cout << "ModOut " << cnt << " " << mQPSK.modOut[cnt] << "\n"; // ModOut [Index] [modOut]
    		//std::cout << std::flush;
			
			cnt++;
		}
		wait(clk.posedge_event());
	}
}

//demod
void QPSK::deModulateSignal(){
	mQPSK.deModI.clear();
	mQPSK.deModQ.clear();

	disableDUT();
	int cnt = 0;
	tbInSelXY.write(1);
	enableDUT();

	while(cnt < mQPSK.nrzI.size()){
		if(tbOutVld.read() == 1) {
			int32_t outX = (sc_int<12>)tbOutData.read();
			int32_t deModI = (int32_t)outX * (int32_t)mQPSK.modOut[cnt]; 

			//print deModI
			std::cout << "DeModI " << cnt << " " << deModI << "\n"; // DeModI [Index] [deModI]
    		std::cout << std::flush;

			mQPSK.deModI.push_back(deModI);
			cnt++;
		}
		wait(clk.posedge_event());
	}

	disableDUT();
	cnt=0;
	tbInSelXY.write(0);
	enableDUT();

	while(cnt < mQPSK.nrzI.size()){
		if(tbOutVld.read() == 1) {
			int32_t outY = (sc_int<12>)tbOutData.read();
			int32_t deModQ = (int32_t)outY * (int32_t)mQPSK.modOut[cnt];

			//print deModQ
			std::cout << "DeModQ " << cnt << " " << deModQ << "\n"; // DeModQ [Index] [deModQ]
    		std::cout << std::flush;

			mQPSK.deModQ.push_back(deModQ);
			cnt++;
		}
		wait(clk.posedge_event());
	}

	std::cout << std::flush;
}

void QPSK::applyLPF(){
	mQPSK.lpfI.clear();
	mQPSK.lpfQ.clear();
    
    // 필터 연산을 위해 입력 벡터의 크기만큼 루프를 돕니다.
    for (int n = 0; n < mQPSK.deModI.size(); ++n) {
        double lpfI = 0.0;
        double lpfQ = 0.0;
        
        // FIR Convolution (합성곱)
        for (int k = 0; k < mQPSK.TAB; ++k) {
            // 입력 벡터의 인덱스 계산: n - k
            int input_index = n - k;
            
            // 경계 조건 처리 (필터가 시작될 때, 이전 데이터가 없으므로 0으로 가정)
            if (input_index >= 0) {
                lpfI += mQPSK.LPF_COEFFS[k] * mQPSK.deModI[input_index];
                lpfQ += mQPSK.LPF_COEFFS[k] * mQPSK.deModQ[input_index];
            }
            // else: 초기값은 0이므로 y_n에 더하지 않아도 됩니다.
        }
        
        mQPSK.lpfI.push_back(lpfI);
        mQPSK.lpfQ.push_back(lpfQ);
    }
}

void QPSK::convertNRZToBitstream(){
	mQPSK.rxMsgToBit.clear();
	mQPSK.rxMsgToBitstream.clear();
	mQPSK.sampledI.clear();
	mQPSK.sampledQ.clear();
	mQPSK.sampledStreamI.clear();
	mQPSK.sampledStreamQ.clear();

	for(int i = mQPSK.TAB; i < mQPSK.lpfI.size(); i += mQPSK.samplePerSymbol){
		int16_t bit0 = (mQPSK.lpfI[i] < 0)? 0:1;
		int16_t bit1 = (mQPSK.lpfQ[i] < 0)? 0:1;

		mQPSK.rxMsgToBit.push_back(bit0);
		mQPSK.rxMsgToBit.push_back(bit1);
		mQPSK.sampledI.push_back(mQPSK.lpfI[i]);
		mQPSK.sampledQ.push_back(mQPSK.lpfQ[i]);
	}

	for(int i= 0; i < mQPSK.sampledI.size(); ++i){
		for(int j=0; j < (int)mQPSK.samplePerSymbol; ++j){
			mQPSK.sampledStreamI.push_back(mQPSK.sampledI[i]);
			mQPSK.sampledStreamQ.push_back(mQPSK.sampledQ[i]);
		}
	}

	for(int i= 0; i < mQPSK.rxMsgToBit.size(); ++i){
		for(int j=0; j < mQPSK.samplePerBit; ++j){
			mQPSK.rxMsgToBitstream.push_back(mQPSK.rxMsgToBit[i]);
		}
	}
};

void QPSK::convertBitstreamToMsg(){
	for(int firstBitIdx = 0; firstBitIdx< mQPSK.rxMsgToBit.size(); firstBitIdx += 8){
		uint8_t ch = 0;

		for(int i=0; i<8; ++i){
			uint8_t bit = mQPSK.rxMsgToBit[firstBitIdx+i];
			bit = bit << (7-i);
			ch = ch | bit;
		}

		mQPSK.rxMsg += (char)ch;
	}
};

//HW
uint32_t QPSK::calcFCW(){
	double fcw = mQPSK.carrierFreq * pow(2.0,20.0) / F10MHz; 
	return fcw;
}




void QPSK::disableDUT(){
	tbEn.write(0);
	wait(clk.posedge_event());
}

void QPSK::enableDUT(){
	tbEn.write(1);
	wait(clk.posedge_event());

	for(int i = 0; i < 70; i++){
		wait(clk.posedge_event());
	}
}