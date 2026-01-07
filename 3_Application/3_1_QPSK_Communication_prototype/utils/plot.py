# plot_qpsk_final_v5.py (result 옵션 수정: Tx/Rx Bitstream만 플롯)

import sys
import matplotlib.pyplot as plt

# --- 1. 명령줄 인자 처리 및 사용법 안내 ---

if len(sys.argv) < 2:
    print("사용법: python plot_qpsk_final_v5.py <option> <filename>", file=sys.stderr)
    print("  <option>: mod, demod, all, quad, result", file=sys.stderr)
    print("  <filename>: 읽을 데이터 파일 (예: out.txt)", file=sys.stderr)
    sys.exit(1)

option = sys.argv[1].lower()
filename = "utils/out.txt"
    
# --- 2. 데이터 파일 읽기 및 파싱 ---

data = []
param_line = None
rx_msg_line = None
line_count = 0
FIELD_COUNT = 13
PARAM_COUNT = 4 # inFCW, carrierFreq, bitrate, samplePerSymbol

try:
    with open(filename, 'r') as f:
        for line in f:
            line_count += 1
            line = line.strip()
            if not line or line.startswith('#'):
                continue

            fields = line.split()
            
            if len(fields) == FIELD_COUNT: 
                data.append([float(f) for f in fields])
            elif len(fields) == PARAM_COUNT and not param_line:
                param_line = [float(f) for f in fields]
            elif len(fields) >= 1 and not rx_msg_line:
                rx_msg_line = line
except FileNotFoundError:
    print(f"오류: 파일을 찾을 수 없습니다: {filename}", file=sys.stderr)
    sys.exit(1)
except ValueError:
    print(f"오류: {line_count}번째 줄의 데이터 형식 오류. 숫자를 변환하는 데 실패했습니다. 파라미터 줄의 공백을 확인하세요.", file=sys.stderr)
    sys.exit(1)


if not data:
    print("오류: 플롯할 유효한 샘플 데이터가 없습니다.", file=sys.stderr)
    sys.exit(1)
        
# --- 3. 신호 이름 및 파라미터 추출 ---

# 총 13개 필드에 대한 이름 정의 (인덱스 0부터 12까지)
signal_names = [
    "Tx Bitstream (0)", "NRZ-I (1)", "NRZ-Q (2)", 
    "Modulated I (3)", "Modulated Q (4)", "Modulated Output (5)",
    "DeModulated I (6)", "DeModulated Q (7)",
    "LPF-I (8)", "LPF-Q (9)",
    "Sampled I (10)", "Sampled Q (11)",
    "Rx Bitstream (12)"
]

time_samples = list(range(len(data)))

# samplePerSymbol 추출 및 심볼 경계선 준비 (param_line[3] 사용)
sample_per_symbol = int(param_line[3]) if param_line and len(param_line) == PARAM_COUNT else None
symbol_boundaries = []
if sample_per_symbol and sample_per_symbol > 0:
    for i in range(sample_per_symbol, len(data), sample_per_symbol):
        symbol_boundaries.append(i)


# --- 4. 파라미터 및 메시지 타이틀 준비 ---
title_suffix = ""
if param_line:
    title_suffix += f"\nFCW={param_line[0]:.0f}, F_c={param_line[1]:.2f}Hz, BitRate={param_line[2]:.2f}bps, Samples/Symbol={param_line[3]:.0f}"
if rx_msg_line:
    title_suffix += f"\nRx Msg: \"{rx_msg_line}\""

# --- 5. 옵션별 플롯/출력 실행 ---

# 모든 시계열 플롯을 처리하는 공통 함수
def plot_time_series(indices, suptitle_text, colormap_name):
    # 폰트 깨짐 방지 및 y축 라벨 크기 조정
    plt.rcParams['font.size'] = 9 

    num_plots = len(indices)
    
    # figsize 조정: 2개 플롯일 경우 높이를 줄임
    fig, axes = plt.subplots(num_plots, 1, figsize=(12, 1.8 * num_plots if num_plots > 2 else 3.0 * num_plots), sharex=True)
    if num_plots == 1:
        axes = [axes]
        
    fig.suptitle(suptitle_text + title_suffix, fontsize=10)
    cmap = plt.cm.get_cmap(colormap_name)
    
    for i, idx in enumerate(indices):
        signal_data = [sample[idx] for sample in data]
        titles = signal_names[idx]
        
        # 신호 플롯
        if idx == 0:
            color = 'k' # Tx Bitstream은 검은색
            axes[i].step(time_samples, signal_data, where='post', label=titles, color=color)
        elif idx == 12:
            color = 'r' # Rx Bitstream은 빨간색
            axes[i].step(time_samples, signal_data, where='post', label=titles, color=color)
        elif idx >= 10: 
             axes[i].step(time_samples, signal_data, where='post', label=titles, color='r')
        else:
            axes[i].plot(time_samples, signal_data, label=titles, color=cmap(i/num_plots))
            
        # 🔴 심볼 경계선 추가 (검은색, 얇게)
        for boundary in symbol_boundaries:
            axes[i].axvline(x=boundary, color='k', linestyle='--', linewidth=0.8, alpha=0.7)
            
        # 🔴 그래프 이름(신호 이름)을 그래프 밑 (y축 라벨)에 표시
        # ha='right'로 설정하여 y축에 가깝게 배치
        axes[i].set_ylabel(titles, fontsize=7, rotation=0, labelpad=40, ha='right')
        axes[i].grid(True, linestyle='--')
        
        # y축 틱 라벨 제거 (깔끔하게)
        axes[i].set_yticklabels([])

    axes[-1].set_xlabel("Sample Index (n)")
    plt.tight_layout(rect=[0, 0.03, 1, 0.95])
    plt.show()

# ----------------------------------------------------------------------------------------------------------------------
# (A) MOD 옵션: 변조 과정 (인덱스 0 ~ 5)
if option == 'mod':
    plot_time_series([0, 1, 2, 3, 4, 5], 'QPSK Modulation (I/Q)', 'plasma')

# ----------------------------------------------------------------------------------------------------------------------
# (B) DEMOD 옵션: 복조 및 필터링 과정 (인덱스 6 ~ 12)
elif option == 'demod':
    plot_time_series([6, 7, 8, 9, 10, 11, 12], 'QPSK Demodulation & Filtering (I/Q)', 'plasma')

# ----------------------------------------------------------------------------------------------------------------------
# (C) ALL 옵션: 전체 과정 (인덱스 0 ~ 12)
elif option == 'all':
    plot_time_series(list(range(13)), 'QPSK Full Signal Flow', 'cool')

# ----------------------------------------------------------------------------------------------------------------------
# (D) QUAD 옵션: Sampled I/Q (인덱스 10, 11)를 4분면에 표시 (색상막대 제거)
elif option == 'quad':
    # 폰트 깨짐 방지
    plt.rcParams['font.size'] = 10 
    
    sampled_i = [sample[10] for sample in data] 
    sampled_q = [sample[11] for sample in data]
    
    plt.figure(figsize=(8, 8))
    plt.scatter(sampled_i, sampled_q, color='blue', s=20, alpha=0.7) 
    
    plt.title('Sampled I vs Sampled Q (Constellation Diagram) - 4분면' + title_suffix, fontsize=10)
    plt.xlabel(signal_names[10])
    plt.ylabel(signal_names[11])
    plt.axhline(0, color='gray', linestyle='--')
    plt.axvline(0, color='gray', linestyle='--')
    plt.grid(True, linestyle=':')
    plt.gca().set_aspect('equal', adjustable='box')
    plt.tight_layout(rect=[0, 0.03, 1, 0.95])
    plt.show()

# ----------------------------------------------------------------------------------------------------------------------
# (E) RESULT 옵션: Tx Bitstream (0)와 Rx Bitstream (12)만 플롯
elif option == 'result':
    plot_time_series([0, 12], 'Tx/Rx Bitstream Comparison', 'cool')

# ----------------------------------------------------------------------------------------------------------------------
else:
    print(f"오류: 알 수 없는 옵션 '{option}'. 'mod', 'demod', 'all', 'quad', 'result' 중 하나를 선택하세요.", file=sys.stderr)
    sys.exit(1)