# sc_timed_v5.md
## valid files
## done v2
1. subs 폴더에 sub모델들 모아둠, 그에 맞게 Makefile도 수정
2. sub1에 En신호 추가
## done v3
1. 파일명, 변수명, 함수명 정리
2. En 신호 포함하여 테스트 진행
## done v4
1. 헤더파일 Makefile에 인클루드 패스 수정하기(cpp_v7, sc_v4)
2. C++ 모델 새로 만든 것으로 레퍼런스 대체
## todo v5
1. TB 내용을 En, inMode 경우의 수로 나누어 진행
2. FCW를 CLA로 입력 받아서 컴파일 반복 제거
3. TB를 FCW에 맞는 샘플 수로 진행
4. (ref)gcd기반으로 샘플수 계산해서 사용하면 마지막 샘플에서 초기상태로 돌아오는지 확인하는 코드 작성(untimed)
5. untimed모델에서 default를 sample수 받는 거로 바꾸기
6. 칩테스트 준비, plot!