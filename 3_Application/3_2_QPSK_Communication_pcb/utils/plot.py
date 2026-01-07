import sys
import matplotlib.pyplot as plt

# --- 1. 명령줄 인자 처리 및 사용법 안내 ---

if len(sys.argv) < 2:
    print("사용법: python plot_qpsk_final_v5.py <option> <filename>", file=sys.stderr)
    print("  <option>: mod, demod, all, quad, result", file=sys.stderr)
    print("  <filename>: 읽을 데이터 파일 (예: out.txt)", file=sys.stderr)
    sys.exit(1)

option = sys.argv[1].lower()
filename = sys.argv[2] if len(sys.argv) > 2 else "utils/out.txt" # 파일명을 인자로 받을 수 있도록 수정
    
# --- 2. 데이터 파일 읽기 및 파싱 ---

data = []
param_line = None
rx_msg_line = None
signal_names = None # ⚠️ 첫 줄에서 읽어올 변수
line_count = 0
FIELD_COUNT = 0     # ⚠️ 동적으로 설정될 변수
PARAM_COUNT = 4     # inFCW, carrierFreq, bitrate, samplePerSymbol

try:
    with open(filename, 'r') as f:
        for line in f:
            line_count += 1
            line = line.strip()
            if not line or line.startswith('#'):
                continue

            fields = line.split()
            
            # ⚠️ 1. 첫 번째 유효한 라인을 헤더(signal_names)로 사용
            if signal_names is None:
                signal_names = fields
                FIELD_COUNT = len(signal_names)
                continue # 헤더 줄은 데이터로 추가하지 않음
            
            # 2. 파라미터 라인 처리 (헤더 이후에 와야 함)
            if len(fields) == PARAM_COUNT and param_line is None:
                param_line = [float(f) for f in fields]
                continue
            
            # 3. Rx 메시지 라인 처리
            if len(fields) >= 1 and param_line is not None and rx_msg_line is None:
                rx_msg_line = line
                continue

            # 4. 데이터 라인 처리
            if len(fields) == FIELD_COUNT: 
                try:
                    data.append([float(f) for f in fields])
                except ValueError:
                    # 데이터 중간에 문자열이나 파라미터가 끼어있을 경우 무시
                    # 이전에 파라미터와 메시지를 처리했으므로, 여기서는 데이터만 남아야 함
                    pass
            # ⚠️ FIELD_COUNT와 맞지 않는 라인은 무시되거나 오류 발생 가능
            
except FileNotFoundError:
    print(f"오류: 파일을 찾을 수 없습니다: {filename}", file=sys.stderr)
    sys.exit(1)
except ValueError:
    print(f"오류: {line_count}번째 줄의 데이터 형식 오류. 숫자를 변환하는 데 실패했습니다.", file=sys.stderr)
    sys.exit(1)


if not data:
    print("오류: 플롯할 유효한 샘플 데이터가 없습니다. 헤더와 파라미터 외 데이터가 비어있거나 형식이 잘못되었습니다.", file=sys.stderr)
    sys.exit(1)
if signal_names is None:
    print("오류: 데이터 파일에서 신호 이름(헤더)을 찾을 수 없습니다.", file=sys.stderr)
    sys.exit(1)
        
# --- 3. 신호 이름 및 파라미터 추출 ---

# signal_names는 이미 파싱되었으며, 인덱스 매핑을 위해 Dictionary를 사용합니다.
signal_map = {name: i for i, name in enumerate(signal_names)}

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

# 인덱스 대신 신호 이름 문자열 리스트를 사용하여 딕셔너리에서 인덱스를 가져오는 헬퍼 함수
def get_indices(name_list):
    indices = []
    for name in name_list:
        if name in signal_map:
            indices.append(signal_map[name])
        else:
            print(f"경고: 알 수 없는 신호 이름 '{name}'. 플롯에서 제외합니다.", file=sys.stderr)
    return indices

# 모든 시계열 플롯을 처리하는 공통 함수 (plot_time_series)는 그대로 유지
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
        titles = signal_names[idx] # ⚠️ titles는 동적으로 읽은 signal_names에서 가져옴
        
        # 신호 플롯
        # ⚠️ 인덱스 대신 신호 이름으로 특수 처리를 변경 (ModI/Q, Sampled I/Q 등)
        if titles == signal_names[0]: # txMsgBitstream
            color = 'k' 
            axes[i].step(time_samples, signal_data, where='post', label=titles, color=color)
        elif titles == signal_names[-1]: # rxMsgToBitstream
            color = 'r' 
            axes[i].step(time_samples, signal_data, where='post', label=titles, color=color)
        elif titles in ["sampledStreamI", "sampledStreamQ"]: # Sampled I/Q
             axes[i].step(time_samples, signal_data, where='post', label=titles, color='r')
        else:
            axes[i].plot(time_samples, signal_data, label=titles, color=cmap(i/num_plots))
            
        # 🔴 심볼 경계선 추가 (검은색, 얇게)
        for boundary in symbol_boundaries:
            axes[i].axvline(x=boundary, color='k', linestyle='--', linewidth=0.8, alpha=0.7)
            
        # 🔴 그래프 이름(신호 이름)을 그래프 밑 (y축 라벨)에 표시
        axes[i].set_ylabel(titles, fontsize=7, rotation=0, labelpad=40, ha='right')
        axes[i].grid(True, linestyle='--')
        
        # y축 틱 라벨 제거 (깔끔하게)
        axes[i].set_yticklabels([])

    axes[-1].set_xlabel("Sample Index (n)")
    plt.tight_layout(rect=[0, 0.03, 1, 0.95])
    plt.show()

# ----------------------------------------------------------------------------------------------------------------------
# (A) MOD 옵션: 변조 과정 (txMsgBitstream ~ modOut)
if option == 'mod':
    names = ["txMsgBitstream", "nrzI", "nrzQ", "modI", "modQ", "modOut"]
    plot_time_series(get_indices(names), 'QPSK Modulation (I/Q)', 'plasma')

# ----------------------------------------------------------------------------------------------------------------------
# (B) DEMOD 옵션: 복조 및 필터링 과정 (deModI ~ rxMsgToBitstream)
elif option == 'demod':
    names = ["deModI", "deModQ", "lpfI", "lpfQ", "sampledStreamI", "sampledStreamQ", "rxMsgToBitstream"]
    plot_time_series(get_indices(names), 'QPSK Demodulation & Filtering (I/Q)', 'plasma')

# ----------------------------------------------------------------------------------------------------------------------
# (C) ALL 옵션: 전체 과정 
elif option == 'all':
    plot_time_series(list(signal_map.values()), 'QPSK Full Signal Flow', 'cool')

# ----------------------------------------------------------------------------------------------------------------------
# (D) QUAD 옵션: Sampled I/Q (sampledStreamI, sampledStreamQ)를 4분면에 표시
elif option == 'quad':
    # 폰트 깨짐 방지
    plt.rcParams['font.size'] = 10 
    
    idx_i = signal_map.get("sampledStreamI")
    idx_q = signal_map.get("sampledStreamQ")
    
    if idx_i is None or idx_q is None:
        print("오류: 'sampledStreamI' 또는 'sampledStreamQ' 헤더를 찾을 수 없습니다.", file=sys.stderr)
        sys.exit(1)

    sampled_i = [sample[idx_i] for sample in data] 
    sampled_q = [sample[idx_q] for sample in data]
    
    plt.figure(figsize=(8, 8))
    plt.scatter(sampled_i, sampled_q, color='blue', s=20, alpha=0.7) 
    
    plt.title('Sampled I vs Sampled Q (Constellation Diagram) - 4분면' + title_suffix, fontsize=10)
    plt.xlabel(signal_names[idx_i])
    plt.ylabel(signal_names[idx_q])
    plt.axhline(0, color='gray', linestyle='--')
    plt.axvline(0, color='gray', linestyle='--')
    plt.grid(True, linestyle=':')
    plt.gca().set_aspect('equal', adjustable='box')
    plt.tight_layout(rect=[0, 0.03, 1, 0.95])
    plt.show()

# ----------------------------------------------------------------------------------------------------------------------
# (E) RESULT 옵션: Tx Bitstream과 Rx Bitstream만 플롯
elif option == 'result':
    names = ["txMsgBitstream", "rxMsgToBitstream"]
    plot_time_series(get_indices(names), 'Tx/Rx Bitstream Comparison', 'cool')

# ----------------------------------------------------------------------------------------------------------------------
else:
    print(f"오류: 알 수 없는 옵션 '{option}'. 'mod', 'demod', 'all', 'quad', 'result' 중 하나를 선택하세요.", file=sys.stderr)
    sys.exit(1)