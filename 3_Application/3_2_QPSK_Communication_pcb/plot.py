import sys
import collections
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import numpy as np
import signal

# --- 설정 ---
GLOBAL_MAX_POINTS = 0  # C++에서 'DATA_SIZE'로 전달받아 설정됨
INTERVAL_MS = 10       # 업데이트 간격 (ms)

# 각 플롯의 Y축 범위 설정
Y_LIMITS = {
    'ModI': (-3000, 3000),         # ModI (16-bit)
    'ModQ': (-3000, 3000),         # ModQ (16-bit)
    'ModOut': (-6000, 6000),       # ModOut (ModI + ModQ)
    'DeModI': (-5000000, 5000000), # DeModI (32-bit)
    'DeModQ': (-5000000, 5000000), # DeModQ (32-bit)
}

PLOT_IDS = list(Y_LIMITS.keys())

# --- 전역 변수 (초기에는 None) ---
data_store = {}
plot_lines = {}
axs = None
fig = None
demodq_count = 0 

# --- 플롯 초기화 함수 ---
def initialize_plots(max_points):
    """
    최대 데이터 크기를 받아 Matplotlib Figure와 Axes,
    그리고 데이터 저장소(deque)를 초기화합니다.
    """
    global data_store, plot_lines, fig, axs
    
    # 데이터 저장소 초기화 (maxlen을 전체 크기로 설정)
    # 각 ID는 (x_vals: deque[index], y_vals: deque[value]) 쌍을 가짐
    data_store = {
        id: (collections.deque(maxlen=max_points), collections.deque(maxlen=max_points))
        for id in PLOT_IDS
    }

    # Matplotlib Figure 및 Axes 생성
    fig, axs = plt.subplots(len(PLOT_IDS), 1, figsize=(12, 10))
    plt.subplots_adjust(hspace=0.5)

    plot_titles = {
        'ModI': "1. ModI (I-Component)",
        'ModQ': "2. ModQ (Q-Component)",
        'ModOut': "3. ModOut (I+Q Computed)", # 제목 변경: Computed임을 명시
        'DeModI': "4. DeModI (Demodulated I)",
        'DeModQ': "5. DeModQ (Demodulated Q)",
    }

    plot_colors = {'ModI': 'red', 'ModQ': 'blue', 'ModOut': 'green', 'DeModI': 'darkorange', 'DeModQ': 'purple'}

    for i, id in enumerate(PLOT_IDS):
        ax = axs[i]
        line, = ax.plot([], [], lw=2, color=plot_colors[id])
        plot_lines[id] = line
        
        ax.set_title(plot_titles[id], fontsize=12)
        ax.set_xlabel("Index")
        ax.set_ylabel("Value")
        ax.grid(True)
        ax.set_ylim(Y_LIMITS[id])
        # X축 범위를 전체 데이터 크기로 고정
        ax.set_xlim(0, max_points) 

# --- 데이터 제너레이터 ---
def data_generator():
    """
    C++ stdout에서 데이터를 읽어와 파싱하고 yield 합니다.
    """
    global GLOBAL_MAX_POINTS, demodq_count
    is_running = True

    # 실시간 데이터 스트리밍 시작
    while is_running:
        try:
            line = sys.stdin.readline()
            if not line:
                is_running = False
                break
            
            line = line.strip()
            if not line: continue
            
            parts = line.split()
            # ModOut은 C++에서 보내지 않고 계산하므로 파싱 대상에서 제외
            valid_ids = [id for id in PLOT_IDS if id != 'ModOut']

            if len(parts) == 3 and parts[0] in valid_ids:
                data_id = parts[0]
                index = int(parts[1])
                value = float(parts[2])
                
                # DeModQ 카운트 및 종료 조건 확인
                if data_id == 'DeModQ':
                    demodq_count += 1
                    if demodq_count >= GLOBAL_MAX_POINTS:
                        print("\nDeModQ complete. Stopping data reading and animation.")
                        is_running = False
                
                # 유효한 데이터를 yield
                yield data_id, index, value

        except Exception as e:
            print(f"Error during data streaming: {e}", file=sys.stderr)
            is_running = False
            break


# --- 업데이트 함수 (핵심 수정 부분) ---
def update(data):
    """
    애니메이션 프레임마다 호출되어 데이터를 업데이트하고,
    ModQ 수신 시 ModOut을 계산하여 동시에 업데이트합니다.
    """
    data_id, index, value = data
    
    # 1. ModQ 수신 시 ModOut(ModI + ModQ) 계산 및 저장
    if data_id == 'ModQ':
        modi_y_vals = data_store['ModI'][1]
        modq_x_vals, modq_y_vals = data_store['ModQ']

        # ModI 데이터가 존재하면, ModI의 마지막 값과 현재 ModQ 값을 합산하여 ModOut 계산
        if modi_y_vals:
            # ModI의 마지막으로 수신된 값 (아직 ModQ와 짝지어지지 않은 값)
            last_modi_value = modi_y_vals[-1]
            modout_value = last_modi_value + value
            
            # ModOut 저장소에 계산된 값 추가
            modout_x, modout_y = data_store['ModOut']
            modout_x.append(index)
            modout_y.append(modout_value)
            
            # 이제 ModQ 데이터도 저장소에 추가 (ModI와 ModOut 계산 후)
            modq_x_vals.append(index)
            modq_y_vals.append(value)
            
        else:
            # ModI 없이 ModQ가 먼저 온 경우 (데이터 짝이 맞지 않음)
            pass
            
    # 2. ModQ가 아닌 다른 데이터 (ModI, DeModI, DeModQ)는 바로 저장소에 추가
    else:
        x_vals, y_vals = data_store[data_id]
        x_vals.append(index)
        y_vals.append(value)

    # 3. 플롯 객체 업데이트
    # 데이터가 추가된 모든 라인을 업데이트합니다.
    # ModQ가 들어온 경우, ModQ와 ModOut이 모두 업데이트됩니다.
    lines_to_update = [plot_lines[id] for id in PLOT_IDS if data_store[id][0]] 
    
    for line in lines_to_update:
        current_id = next(id for id, l in plot_lines.items() if l == line)
        
        # NumPy 배열로 변환하여 set_data에 전달 (효율적)
        x_np = np.array(data_store[current_id][0])
        y_np = np.array(data_store[current_id][1])
        line.set_data(x_np, y_np) 
        
    # 모든 라인 객체를 반환합니다.
    return plot_lines.values()


# --- 메인 함수 ---
def main():
    global GLOBAL_MAX_POINTS, fig

    # Ctrl+C 핸들러 설정
    signal.signal(signal.SIGINT, lambda signum, frame: sys.exit(0))
    
    # **초기화 단계 1: DATA_SIZE를 먼저 읽고 fig를 생성**
    while fig is None:
        try:
            line = sys.stdin.readline()
            if not line:
                print("Error: Could not read DATA_SIZE. Stream ended prematurely.", file=sys.stderr)
                return 
            
            parts = line.strip().split()
            if len(parts) == 2 and parts[0] == "DATA_SIZE":
                GLOBAL_MAX_POINTS = int(parts[1])
                initialize_plots(GLOBAL_MAX_POINTS)
                print(f"Plot initialized with Max Data Size: {GLOBAL_MAX_POINTS}")
                break
        except Exception as e:
            print(f"Error during initial data read: {e}", file=sys.stderr)
            return
            
    # **초기화 단계 2: FuncAnimation 호출**
    if fig:
        ani = animation.FuncAnimation(
            fig,
            update,
            frames=data_generator,
            interval=INTERVAL_MS, 
            blit=False, 
            cache_frame_data=False
        )

        plt.tight_layout()
        plt.show()
    
    # 그래프 창이 닫힌 후 프로그램 종료
    sys.exit(0)

if __name__ == "__main__":
    main()