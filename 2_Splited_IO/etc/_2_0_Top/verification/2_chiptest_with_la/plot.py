import serial
import time
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from collections import deque

# --- 설정 (Configuration) ---
SERIAL_PORT = '/dev/ttyUSB0'  # 아두이노가 연결된 포트로 변경하세요 (Windows는 'COM3' 등)
BAUD_RATE = 115200             # 아두이노의 Serial.begin(115200)과 일치해야 합니다.
PACKET_SIZE = 4                # 아두이노에서 전송하는 패킷 크기 (4 바이트)
PLOT_WINDOW_SIZE = 100         # 그래프에 표시할 데이터 포인트 개수
API_KEY = "" # API 키는 비워 둡니다.

# --- 데이터 처리 및 버퍼링 클래스 ---
class SerialData:
    """
    시리얼 통신을 관리하고, 수신된 4바이트 데이터를 파싱하여 X, Y 값을 추출합니다.
    """
    def __init__(self, port, baudrate, packet_size):
        self.packet_size = packet_size
        self.time_data = deque(maxlen=PLOT_WINDOW_SIZE)
        self.x_data = deque(maxlen=PLOT_WINDOW_SIZE)
        self.y_data = deque(maxlen=PLOT_WINDOW_SIZE)
        self.start_time = time.time()
        
        try:
            # 시리얼 포트 초기화
            self.ser = serial.Serial(port, baudrate, timeout=0.1)
            self.ser.flushInput()
            print(f"[{port}] 포트 연결 성공. 데이터 수신 대기 중...")

            # SC 래퍼와 유사한 핸드셰이크 시도 (A를 기다리고 A를 응답)
            # 아두이노가 먼저 'A'를 보낼 때까지 기다립니다.
            print("아두이노의 초기 'A' 응답 대기...")
            while self.ser.in_waiting == 0:
                time.sleep(0.001)

            # 아두이노의 'A'를 읽고 응답 'A'를 보냅니다.
            handshake_byte = self.ser.read(1)
            if handshake_byte == b'A':
                self.ser.write(b'A')
                print("핸드셰이크 완료 (아두이노 <-> PC)")
            else:
                print("핸드셰이크 실패 또는 첫 바이트가 'A'가 아님.")
            
        except serial.SerialException as e:
            print(f"시리얼 포트 연결 오류: {e}")
            self.ser = None

    def read_and_parse_data(self):
        """
        시리얼 포트에서 4바이트를 읽고 X, Y (12비트) 값을 추출합니다.
        """
        if self.ser and self.ser.in_waiting >= self.packet_size:
            # 정확히 4바이트를 읽습니다.
            raw_data = self.ser.read(self.packet_size)
            
            # --- 4바이트 프로토콜 해석 ---
            # Byte 0: | VldX | --- | --- | --- |D[11]|D[10]|D[ 9]|D[ 8]|
            # Byte 1: |D[ 7]|D[ 6]|D[ 5]|D[ 4]|D[ 3]|D[ 2]|D[ 1]|D[ 0]|
            # Byte 2: | VldY | --- | --- | --- |D[11]|D[10]|D[ 9]|D[ 8]|
            # Byte 3: |D[ 7]|D[ 6]|D[ 5]|D[ 4]|D[ 3]|D[ 2]|D[ 1]|D[ 0]|

            byte0, byte1, byte2, byte3 = raw_data[0], raw_data[1], raw_data[2], raw_data[3]

            # X 값 (12비트 재조합): MSB 4비트 (0x0F) 쉬프트 후 LSB 8비트 (byte1)와 OR 연산
            x_val = ((byte0 & 0x0F) << 8) | byte1
            # Y 값 (12비트 재조합)
            y_val = ((byte2 & 0x0F) << 8) | byte3

            # Vld 값은 플로팅에 사용하지 않지만 확인용으로 추출 가능
            # vld_x = (byte0 & 0x80) >> 7
            # vld_y = (byte2 & 0x80) >> 7

            # 시간 및 데이터 저장
            current_time = time.time() - self.start_time
            self.time_data.append(current_time)
            self.x_data.append(x_val)
            self.y_data.append(y_val)

            # 디버깅 출력 (선택 사항)
            # print(f"Time: {current_time:.3f}s, X: {x_val:4d}, Y: {y_val:4d}")
            
            return True
        return False

# --- Matplotlib 애니메이션 함수 ---
def update_plot(frame, serial_data, line_x, line_y, ax):
    """
    Matplotlib 애니메이션의 각 프레임에서 호출됩니다.
    새 데이터를 읽고 그래프를 업데이트합니다.
    """
    if serial_data.read_and_parse_data():
        # 1. 데이터 업데이트
        line_x.set_data(serial_data.time_data, serial_data.x_data)
        line_y.set_data(serial_data.time_data, serial_data.y_data)

        # 2. X축 (시간축) 범위 조정 (가장 최근 데이터가 오른쪽에 표시되도록)
        ax.set_xlim(serial_data.time_data[0], serial_data.time_data[-1])

        # 3. Y축 (값 축) 범위 조정 (NCO 출력 최대값인 4095에 맞춤)
        # NCO 12비트 값의 최대 범위는 0 ~ 4095입니다.
        if len(serial_data.x_data) > 0:
            current_max = max(max(serial_data.x_data), max(serial_data.y_data))
            # Y축 범위를 0 ~ 4095 + 여유분으로 고정하여 안정적인 플롯을 유지
            ax.set_ylim(0, 4100) 

        return line_x, line_y
    
    return line_x, line_y # 데이터가 없을 경우 기존 라인 반환

# --- 메인 실행 ---
if __name__ == '__main__':
    # 시리얼 통신 객체 생성
    data_source = SerialData(SERIAL_PORT, BAUD_RATE, PACKET_SIZE)

    if data_source.ser is None:
        exit()

    # 1. Matplotlib 초기 설정
    fig, ax = plt.subplots(figsize=(10, 6))
    plt.title("Real-time NCO Output (X: Cosine, Y: Sine)")
    plt.xlabel("Time (seconds)")
    plt.ylabel("Value (0-4095)")
    plt.grid(True)

    # X 데이터 라인 (청색)
    line_x, = ax.plot([], [], label='X Output (12bit)', color='dodgerblue')
    # Y 데이터 라인 (적색)
    line_y, = ax.plot([], [], label='Y Output (12bit)', color='tomato')
    
    ax.legend()
    
    # 2. 애니메이션 시작
    # interval=10ms는 약 100FPS로 업데이트를 시도합니다. 
    # 실제 속도는 시리얼 통신 속도에 따라 달라집니다.
    ani = animation.FuncAnimation(
        fig, 
        update_plot, 
        fargs=(data_source, line_x, line_y, ax), 
        interval=10, 
        blit=False, 
        cache_frame_data=False
    )

    # 3. 플롯 표시
    plt.show()

    # 종료 시 시리얼 포트 닫기
    if data_source.ser:
        data_source.ser.close()
        print("시리얼 포트를 닫았습니다.")
