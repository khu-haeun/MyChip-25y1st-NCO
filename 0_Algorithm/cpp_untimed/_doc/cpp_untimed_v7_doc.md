# cpp_untimed_v7.md
## valid files
* cpp
  * main.cpp define.h
  * UntimedNCO.cpp FourierTransform.cpp
  * UntimedNCO.h	 FourierTransform.h
  * ./subs/UntimedPhaseAccumulator.cpp ./subs/UntimedCORDIC.cpp ./subs/UntimedOutputTerminal.cpp
  * ./subs/UntimedPhaseAccumulator.h   ./subs/UntimedCORDIC.h   ./subs/UntimedOutputTerminal.h
* python
  * plotDFT.py
* etc.
  * Makefile
## done v5
1. UntimedNCO 클래스에 매서드로 구현된 서브모듈들을 개별적인 클래스(위치: ./subs/)로 만듬
2. generateTestVecOf 계열 매서드들에 파일 저장기능을 추가
3. 파이썬 래퍼를 만들어서 FCW 전 범위에 대한 테스트벡터 생성기능 추가 -> 너무 느려서(개당 0.2초) 최적화 시도
## done v6
1. make run FCW=1234 처럼 FCW를 명령줄 인수로 넘기도록 구현함. 이전의 불필요한 반복적인 컴파일을 줄임
2. 파일 열어서 쓰지않고, sstream으로 버퍼에 저장후 파일에 씀. 속도 최적화
3. gsl라이브러리의 fft활용하도록 변경
4. 파이썬 래퍼를 만들어서 FCW 전 범위에 대한 테스트벡터 생성하는데 무리가 없도록 최적화 하기 -> 20bit 범위 7시간 정도
## done v7
1. 배열을 vector로 바꿈, 활용에 더 용이한듯
2. FCW 가변 샘플수 적용
3. SFDR 추가 및 저장 기능 => 약간 문제 있음 피크1,2가 이상하게 나옴 + 바이어스 모드 고려해서 설계
4. 테스트 벡터 저장시 서브 모듈들의 출력까지 저장
## todo v7
1. 플롯 가다듬기. SFPR, 피크 표시, 레이아웃
2. FCW값을 IPC로 받아서 CPP에서 처리 후 플롯하는 구조 만들기, 한 화면에 7개의 플롯 그리기
   * phase, isNeg, outx/y(sub2), outx/y(sub3), FFT 
3. Communication클래스 만들어서 BPSK QPSK 변복조 구현