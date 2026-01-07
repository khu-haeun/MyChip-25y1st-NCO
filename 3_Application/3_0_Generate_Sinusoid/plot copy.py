import sys
import collections
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import signal

# --- 설정 ---
MAX_POINTS = 1000
Y_MIN, Y_MAX = -2048, 2047 

# --- 데이터 저장 ---
x_vals = collections.deque(maxlen=MAX_POINTS)
y_vals = collections.deque(maxlen=MAX_POINTS)
colors = collections.deque(maxlen=MAX_POINTS)

# --- Matplotlib 그래프 초기 설정 ---
fig, ax = plt.subplots(figsize=(10, 6))
scat = ax.scatter([], [], s=15) 

ax.set_title("NCO plot", fontsize=16)
ax.set_xlabel("index", fontsize=12)
ax.set_ylabel("", fontsize=12) 
ax.grid(True)
ax.set_ylim(Y_MIN, Y_MAX)

# --- 신호 처리 ---

def signal_handler(signum, frame):
    sys.exit(0)

# --- 데이터 제너레이터 ---

def data_generator():
    try:
        for line in sys.stdin:
            line = line.strip()
            if not line:
                continue

            try:
                parts = line.split()
                if len(parts) != 3:
                    continue

                index = int(parts[0])
                data = float(parts[1])
                valid = int(parts[2])

                yield index, data, valid

            except ValueError:
                pass
                
    except Exception:
        pass

# --- 업데이트 함수 ---

def update(data):
    index, data_val, valid = data

    x_vals.append(index)
    y_vals.append(data_val)
    colors.append('red' if valid == 1 else 'royalblue')
    
    points = list(zip(x_vals, y_vals))
    if points:
        scat.set_offsets(points)
        scat.set_facecolors(list(colors))

        ax.set_xlim(x_vals[0], x_vals[-1] + 1)
        ax.set_title("NCO plot", fontsize=16) 

    return scat,

# --- 메인 함수 ---

def main():
    
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)

    ani = animation.FuncAnimation(
        fig,
        update,
        frames=data_generator,
        interval=10,
        blit=True,
        cache_frame_data=False
    )

    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    main()