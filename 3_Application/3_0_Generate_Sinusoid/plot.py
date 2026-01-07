import sys
import collections
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import signal
from matplotlib.ticker import MaxNLocator

# --- define ---
MAX_POINTS = 1000
Y_MIN, Y_MAX = -2500, 5000
BIAS_LEVEL = 2048 # BIAS가 활성화될 때의 레벨
TARGET_INDEX = 70 # 빨간 점을 찍을 목표 인덱스

# --- 데이터 덱 ---
x_vals = collections.deque(maxlen=MAX_POINTS)
y_vals = collections.deque(maxlen=MAX_POINTS)

# --- plot 객체 선언  ---
fig, ax = None, None
line = None
target_point = None 

def signal_handler(signum, frame):
    sys.exit(0)

# --- plot 그래프 초기 설정 함수 ---

def setup_plot(FCW, BIAS_ENABLED, SIGNAL_AXIS):
    global fig, ax, line, target_point
    
    fig, ax = plt.subplots(figsize=(10, 6))
    line, = ax.plot([], [], color='darkgreen', linewidth=1.5, linestyle='-') 
    
    # 목표 인덱스에 빨간 점을 찍을 scatter 객체 초기화
    target_point = ax.scatter([], [], s=100, color='red', marker='o', zorder=5) 

    # Y축 (x=0) 보조선
    ax.axvline(0, color='gray', linestyle='--', linewidth=0.8, alpha=0.7)
    
    # X축 (y=0) 보조선 시각적 강조
    ax.axhline(0, color='black', linestyle='-', linewidth=1.5, alpha=1.0) 

    # BIAS 선 처리 (BIAS=0인 경우 포함)
    current_bias_level = BIAS_LEVEL if BIAS_ENABLED else 0
    bias_color = 'firebrick' if BIAS_ENABLED else 'darkorange'
    
    ax.axhline(current_bias_level, color=bias_color, linestyle=':', linewidth=1.0, alpha=0.9, label=f'BIAS ({current_bias_level})')
    ax.legend(loc='upper right')
    
    ax.set_title("NCO plot", fontsize=16)
    ax.set_xlabel("index", fontsize=12)
    
    # X축 틱을 정수로 표시하도록 설정
    ax.xaxis.set_major_locator(MaxNLocator(integer=True))
    
    # 초기 X축 범위 설정 (0 ~ MAX_POINTS)
    ax.set_xlim(0, MAX_POINTS + 1)
    
    # Y축 레이블 설정
    y_label = "Amplitude"
    signal_name = "Undefined"
    if SIGNAL_AXIS == 1:
        y_label = "Cos Data"
        signal_name = "Cos"
    elif SIGNAL_AXIS == 0:
        y_label = "Sin Data"
        signal_name = "Sin"
        
    ax.set_ylabel(y_label, fontsize=12) 
    
    ax.grid(True)
    ax.set_ylim(Y_MIN, Y_MAX)
    
    # FCW 및 축 라벨링 추가 (플롯 하단)
    plt.figtext(0.02, 0.02, 
                f"FCW: {FCW} | NCO output: {signal_name}", 
                fontsize=10, 
                bbox={"facecolor": "lightgray", "alpha": 0.5, "pad": 5})

# --- 데이터 제너레이터 ---

def data_generator():
    for line in sys.stdin:
        line = line.strip()
        if not line:
            continue

        parts = line.split()
        if len(parts) != 3:
            continue

        # try...except ValueError 구문 제거
        index = int(parts[0])
        data = float(parts[1])
        valid = int(parts[2])
        yield index, data, valid

# --- 업데이트 함수 ---

def update(data):
    global target_point
    index, data_val, valid = data

    if index == TARGET_INDEX:
        # data_val이 valid와 관계없이 인덱스 70의 Y값으로 사용됨
        target_point.set_offsets([(index, data_val)]) 

    # valid가 1인 경우에만 덱에 추가합니다. (라인을 그리기 위함)
    if valid == 1:
        x_vals.append(index)
        y_vals.append(data_val)
            
    # 라인 업데이트 (valid = 1 인 데이터 포인트만 연결)
    points_exist = len(x_vals) > 0

    if points_exist:
        line.set_data(list(x_vals), list(y_vals))

        # X축 범위 업데이트 로직: 1000을 넘을 때만 스크롤
        last_index = x_vals[-1]
        
        if last_index > MAX_POINTS:
            # 1000을 넘으면 윈도우를 이동시킵니다 (스크롤).
            min_x = last_index - MAX_POINTS
            max_x = last_index + 1
            ax.set_xlim(min_x, max_x)
        else:
            # 1000까지는 0 ~ 1000+1 범위로 고정합니다.
            ax.set_xlim(0, MAX_POINTS + 1)
            
        ax.set_title("NCO plot", fontsize=16) 

    # target_point 객체도 반환하여 blitting에 포함
    return line, target_point,

# --- 메인 함수 ---

def main():
    
    # 명령줄 인자 처리 
    if len(sys.argv) < 4:
        print("Usage: python3 plot.py <FCW> <BIAS> <XY>", file=sys.stderr)
        sys.exit(1)
        
    # 인자 읽기 (try...except 제거 상태 유지)
    FCW = sys.argv[1] # FCW는 문자열로 저장
    BIAS_ENABLED = int(sys.argv[2]) == 1
    SIGNAL_AXIS = int(sys.argv[3])
        
    # 플롯 설정 함수 호출 
    setup_plot(FCW, BIAS_ENABLED, SIGNAL_AXIS)

    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)

    ani = animation.FuncAnimation(
        fig,
        update,
        frames=data_generator,
        interval=1, 
        blit=True,
        cache_frame_data=False
    )

    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    main()