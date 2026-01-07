import sys
import re
import collections
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import signal
import numpy as np # NumPy는 이제 사용되지 않지만, 다른 확장을 대비해 유지합니다.

# --- 설정 ---
# 화면에 표시할 최대 데이터 포인트 개수 (FIFO 버퍼 크기)
MAX_POINTS = 500

# --- 데이터 저장을 위한 Deque 설정 ---
# x축 데이터 (샘플 인덱스)
x_vals = collections.deque(maxlen=MAX_POINTS)
# y축 데이터 (xDUT 값)
y_vals = collections.deque(maxlen=MAX_POINTS)
# 샘플 인덱스를 추적하기 위한 전역 변수
sample_index = 0

# --- 데이터 파싱을 위한 정규식 ---
# C++ 출력 형식: "... vs [mpw/(   -21, 1)] ---> ..."
# xDUT 값(-21)만 사용하며, xVldDUT 값은 무시합니다.
# 정규식은 기존과 동일하게 xDUT와 xVldDUT 모두 매칭하지만, 스크립트는 xDUT만 플롯합니다.
line_regex = re.compile(r"mpw/\(\s*(-?\d+),\s*(\d)\)")

# --- Matplotlib 그래프 초기 설정 ---
fig, ax = plt.subplots(figsize=(10, 6))

# 🟢 선 그래프 객체 초기화 (파란색 실선)
# 이제 선 그래프만 사용합니다.
line, = ax.plot([], [], 'b-', linewidth=1.5, label='xDUT Value', animated=True)

# 그래프 제목 및 축 레이블 설정
ax.set_title(f"실시간 DUT 출력 (xDUT, MAX {MAX_POINTS} samples)", fontsize=16)
ax.set_xlabel("샘플 인덱스", fontsize=12)
ax.set_ylabel("xDUT 값 (12-bit Signed)", fontsize=12)
ax.grid(True)
# 선 그래프 레이블만 표시합니다.
ax.legend(loc='upper left') 
# 12비트 부호 있는 정수 범위: -2048 ~ 2047
ax.set_ylim(-2048, 2047)

def signal_handler(signum, frame):
    """Ctrl+C를 처리하여 스크립트를 깔끔하게 종료합니다."""
    print("\n스크립트를 종료합니다.")
    sys.exit(0)

def data_generator():
    """표준 입력(stdin)에서 데이터를 한 줄씩 읽어와 파싱하고 결과를 반환하는 제너레이터입니다."""
    try:
        # sys.stdin을 순회하며 각 라인을 처리합니다.
        for line in sys.stdin:
            if not line:
                plt.pause(0.01)
                continue

            # 정규식을 사용하여 라인에서 원하는 데이터를 찾습니다.
            match = line_regex.search(line)
            if match:
                # 매칭된 그룹에서 xDUT와 xVldDUT 값을 정수로 변환합니다.
                x_dut = int(match.group(1))
                x_vld_dut = int(match.group(2)) # xVldDUT는 받지만, update 함수에서 무시됩니다.
                # 파싱된 데이터를 update 함수로 전달합니다.
                yield x_dut, x_vld_dut
    except Exception as e:
        # 입력 스트림 종료 (EOF)는 정상적인 종료로 간주
        if isinstance(e, EOFError):
             print("\n입력 스트림이 종료되었습니다.")
        else:
            print(f"데이터 처리 중 오류 발생: {e}", file=sys.stderr)

def update(data):
    """FuncAnimation에 의해 주기적으로 호출되어 그래프를 업데이트합니다."""
    global sample_index
    try:
        # x_vld_dut 값은 받지만, 플롯 로직에서는 사용하지 않습니다.
        x_dut, x_vld_dut = data 
    except ValueError:
        # 데이터가 없거나 형식이 잘못된 경우 스킵
        return line, # 선 그래프 객체만 반환

    # 새 데이터를 deque에 추가합니다.
    x_vals.append(sample_index)
    y_vals.append(x_dut)
    
    sample_index += 1

    # 🟢 선 그래프 데이터 업데이트
    line.set_data(x_vals, y_vals)
    
    # 🔴 xVldDUT를 사용한 산점도 마커 로직은 모두 제거되었습니다.

    # x축 범위를 동적으로 조절하여 데이터 창을 유지합니다 (FIFO 슬라이딩 윈도우).
    if x_vals:
        ax.set_xlim(x_vals[0], x_vals[-1] + 1)
        
    # blitting을 위해 업데이트된 객체를 반환합니다.
    return line,

def main():
    """메인 함수: 애니메이션을 시작합니다."""
    print("표준 입력으로부터 데이터를 기다립니다...")
    print("사용법: ./your_cpp_program | python realtime_nco_plotter.py")
    
    # Ctrl+C와 같은 종료 신호를 처리하기 위한 핸들러 등록
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)

    # Matplotlib 애니메이션을 생성합니다.
    ani = animation.FuncAnimation(
        fig,
        update,                 # 프레임마다 호출할 함수
        frames=data_generator,  # 데이터 소스 (제너레이터)
        interval=10,            # 업데이트 간격 (ms)
        blit=True,             # 환경 문제 방지를 위해 blitting을 끄고 시도합니다.
        cache_frame_data=False  # 제너레이터 사용 시 필수 설정
    )

    # 그래프 창을 표시합니다.
    plt.tight_layout()
    plt.show()

    print("플롯 창이 닫혔거나 입력 스트림이 종료되었습니다.")

if __name__ == "__main__":
    main()
