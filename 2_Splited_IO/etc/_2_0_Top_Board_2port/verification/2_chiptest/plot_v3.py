import re
import sys
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
from collections import deque
import threading
import time

# --- 설정 ---
MAX_POINTS = 2000  # 화면에 표시할 최대 데이터 포인트 수
# C++ 출력에서 xDUT와 yDUT를 추출하는 정규 표현식
# 패턴: vs [mpw/(xDUT, xVldDUT), (yDUT, yVldDUT)]
# (-?\d+)는 부호가 있는 정수(-123, 456 등)를 캡처합니다.
# 그룹 1: xDUT, 그룹 2: yDUT
DATA_REGEX = re.compile(r'vs\s*\[mpw/\(\s*(-?\d+),\s*\d+\),\s*\(\s*(-?\d+),\s*\d+\)\]')

# --- 데이터 저장소 (Deque) ---
# Deque는 고정된 크기(MAX_POINTS)를 유지하며 오래된 데이터를 자동으로 제거합니다.
data_x = deque(maxlen=MAX_POINTS)
data_y = deque(maxlen=MAX_POINTS)
lock = threading.Lock() # 데이터 접근 시 동시성 문제를 방지하기 위한 Lock

# --- 데이터 읽기 스레드 ---
def read_input():
    """표준 입력에서 데이터를 읽고 파싱하여 deque에 추가하는 함수."""
    print("--- 실시간 NCO 플로팅 시작 ---", file=sys.stderr)
    
    # stdin에서 한 줄씩 무한히 읽습니다. (파이프가 닫힐 때까지)
    for line in sys.stdin:
        match = DATA_REGEX.search(line)
        
        if match:
            try:
                # 정규식 캡처 그룹에서 xDUT (그룹 1)와 yDUT (그룹 2)를 추출
                x_val = int(match.group(1))
                y_val = int(match.group(2))
                
                with lock:
                    data_x.append(x_val)
                    data_y.append(y_val)
                
            except ValueError:
                # 숫자로 변환할 수 없는 경우 (거의 발생하지 않음)
                print(f"파싱 오류: 추출된 값이 정수가 아닙니다. Line: {line.strip()}", file=sys.stderr)
        
        # 데이터가 너무 빨리 들어올 경우 플롯 스레드에 부담을 줄 수 있으므로 잠시 대기
        # time.sleep(0.0001) 

    print("--- 입력 스트림 종료 ---", file=sys.stderr)
    # 입력이 끝나면 애니메이션을 멈추기 위해 종료 플래그를 설정할 수도 있지만,
    # Matplotlib의 FuncAnimation은 종료 시점 처리가 복잡하므로 여기서는 생략합니다.

# --- 플롯 업데이트 함수 ---
def update_plot(frame):
    """애니메이션 프레임마다 호출되어 그래프를 업데이트하는 함수."""
    with lock:
        # 현재 저장된 모든 데이터를 numpy 배열로 변환
        x_data_list = list(data_x)
        y_data_list = list(data_y)
    
    if not x_data_list:
        return line_x, line_y # 데이터가 없으면 업데이트 생략
    
    # x 축은 데이터 인덱스 (0부터 N-1)
    indices = range(len(x_data_list))

    # X 플롯 업데이트 (빨간색)
    line_x.set_data(indices, x_data_list)
    # Y 플롯 업데이트 (파란색)
    line_y.set_data(indices, y_data_list)

    # 그래프 x축 범위 자동 업데이트 (데이터 개수 500개 유지)
    ax.set_xlim(indices[0], indices[-1])
    
    # Y축 범위 자동 업데이트 (데이터의 최소/최대 값에 맞춤)
    # NCO 출력은 -2048 ~ 2047 범위이므로 수동 설정 가능.
    # 안전하게 자동 범위를 설정하여 데이터가 화면을 벗어나지 않게 함.
    y_min = min(min(x_data_list), min(y_data_list)) if x_data_list and y_data_list else -2048
    y_max = max(max(x_data_list), max(y_data_list)) if x_data_list and y_data_list else 2047
    
    # 적절한 마진을 주어 Y축을 설정
    ax.set_ylim(y_min - 100, y_max + 100)
    
    # 제목 업데이트
    ax.set_title(f"NCO Output (Points: {len(x_data_list)} / {MAX_POINTS})")

    return line_x, line_y

# --- 메인 실행 ---
if __name__ == "__main__":
    # 1. Matplotlib 초기화
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.set_xlabel("Sample Index")
    ax.set_ylabel("Amplitude (Signed)")
    
    # 초기 플롯 객체 생성
    # x: 빨간색 선, y: 파란색 선
    line_x, = ax.plot([], [], 'r-', label='X (Cosine, DUT)') 
    line_y, = ax.plot([], [], 'b-', label='Y (Sine, DUT)')
    ax.legend()
    ax.grid(True)
    
    # 초기 Y축 범위 설정 (NCO 12bit signed: -2048 ~ 2047)
    ax.set_ylim(-2100, 2100)
    
    # 2. 데이터 읽기 스레드 시작
    # 데몬 스레드로 설정하여 메인 스레드(플롯)가 종료되면 같이 종료되도록 함
    input_thread = threading.Thread(target=read_input, daemon=True)
    input_thread.start()
    
    # 3. 애니메이션 시작
    # interval=50ms 마다 update_plot 함수 호출
    # blit=True를 사용하면 더 빠르지만, x/y 범위가 바뀌는 경우 제대로 작동하지 않을 수 있어 False로 설정
    ani = FuncAnimation(fig, update_plot, interval=50, blit=False)
    
    plt.tight_layout()
    plt.show()
