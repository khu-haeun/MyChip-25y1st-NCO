import sys
import re
import collections
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import signal

# --- 설정 ---
# 화면에 표시할 최대 데이터 포인트 개수
MAX_POINTS = 35536

# --- 데이터 저장을 위한 Deque 설정 ---
# Deque는 최대 길이를 유지하며, 새 데이터가 들어오면 가장 오래된 데이터는 자동으로 삭제됩니다.
# x축 데이터 (샘플 인덱스)
x_vals = collections.deque(maxlen=MAX_POINTS)
# y축 데이터 (xDUT 값)
y_vals = collections.deque(maxlen=MAX_POINTS)
# 각 점의 색상 정보
colors = collections.deque(maxlen=MAX_POINTS)
# 샘플 인덱스를 추적하기 위한 전역 변수
sample_index = 0

# --- 데이터 파싱을 위한 정규식 ---
# C++ 출력 형식: "... vs [mpw/(  -21, 0)] ---> ..."
# 여기서 'xDUT' 값(-21)과 'xVldDUT' 값(0)을 추출합니다.
line_regex = re.compile(r"mpw/\(\s*(-?\d+),\s*(\d)\)")

# --- Matplotlib 그래프 초기 설정 ---
fig, ax = plt.subplots(figsize=(10, 6))
# 데이터를 표시할 scatter 객체를 초기화합니다.
scat = ax.scatter([], [], s=15) # s는 마커 크기입니다.

# 그래프 제목 및 축 레이블 설정
ax.set_title("실시간 DUT 출력 (xDUT)", fontsize=16)
ax.set_xlabel("샘플 인덱스", fontsize=12)
ax.set_ylabel("xDUT 값", fontsize=12)
ax.grid(True)
# y축 범위를 12비트 정수(-2048 ~ 2047)에 맞춰 고정합니다.
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
                x_vld_dut = int(match.group(2))
                # 파싱된 데이터를 update 함수로 전달합니다.
                yield x_dut, x_vld_dut
    except Exception as e:
        print(f"데이터 처리 중 오류 발생: {e}", file=sys.stderr)

def update(data):
    """FuncAnimation에 의해 주기적으로 호출되어 그래프를 업데이트합니다."""
    global sample_index
    x_dut, x_vld_dut = data

    # 새 데이터를 deque에 추가합니다.
    x_vals.append(sample_index)
    y_vals.append(x_dut)
    # xVldDUT 값에 따라 색상을 결정합니다 (1이면 'red', 아니면 'royalblue').
    colors.append('red' if x_vld_dut == 1 else 'royalblue')
    
    sample_index += 1

    # scatter 객체에 새로운 좌표와 색상 정보를 설정합니다.
    # set_offsets는 (N, 2) 형태의 배열을 인자로 받으므로 zip을 사용합니다.
    points = list(zip(x_vals, y_vals))
    if points:
        scat.set_offsets(points)
        scat.set_facecolors(list(colors)) # 마커 내부 색상

        # x축 범위를 동적으로 조절하여 데이터 창을 유지합니다.
        ax.set_xlim(x_vals[0], x_vals[-1] + 1)
        
    # blitting을 위해 업데이트된 객체를 반환합니다.
    return scat,

def main():
    """메인 함수: 애니메이션을 시작합니다."""
    print("표준 입력으로부터 데이터를 기다립니다...")
    print("사용법: ./your_cpp_program | python realtime_plotter.py")
    
    # Ctrl+C와 같은 종료 신호를 처리하기 위한 핸들러 등록
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)

    # Matplotlib 애니메이션을 생성합니다.
    ani = animation.FuncAnimation(
        fig,
        update,                 # 프레임마다 호출할 함수
        frames=data_generator,  # 데이터 소스 (제너레이터)
        interval=10,            # 업데이트 간격 (ms)
        blit=True,              # 성능 향상을 위한 blitting 사용
        cache_frame_data=False  # 제너레이터 사용 시 필수 설정
    )

    # 그래프 창을 표시합니다.
    plt.tight_layout()
    plt.show()

    print("플롯 창이 닫혔거나 입력 스트림이 종료되었습니다.")

if __name__ == "__main__":
    main()

