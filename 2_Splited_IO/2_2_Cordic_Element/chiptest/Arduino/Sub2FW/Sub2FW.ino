#define SOP01_L 52
#define SOP02_L 50
#define SOP03_L 48
#define SOP04_L 46
#define SOP05_L 53
#define SOP06_L 51
#define SOP07_L 49
#define SOP08_L 44
#define SOP09_L 42
#define SOP10_L 40
#define SOP11_L 38
#define SOP12_L 45
#define SOP13_L 43
#define SOP14_L 41

#define SOP28_R 25
#define SOP27_R 27
#define SOP26_R 29
#define SOP25_R 22
#define SOP24_R 24
#define SOP23_R 26
#define SOP22_R 28
#define SOP21_R 33
#define SOP20_R 35
#define SOP19_R 37
#define SOP18_R 30
#define SOP17_R 32
#define SOP16_R 34
#define SOP15_R 36

#define VDD   SOP01_L
#define RDY   SOP02_L
#define ISIN  SOP03_L
#define AIN01 SOP04_L
#define AIN00 SOP05_L
//#define NOUSE SOP06_L
#define CLK   SOP07_L
#define XIN01  SOP08_L
#define XIN00 SOP09_L
#define YIN01 SOP10_L
#define YIN00 SOP11_L
#define STG02 SOP12_L
#define STG01 SOP13_L
#define STG00 SOP14_L

#define VSS   SOP28_R
#define VLD   SOP27_R
#define ISOUT SOP26_R
#define AOUT1 SOP25_R
#define AOUT0 SOP24_R
//#define NOUSE SOP23_R
//#define NOUSE SOP22_R
#define XOUT1 SOP21_R
#define XOUT0 SOP20_R
#define YOUT1 SOP19_R
#define YOUT0 SOP18_R
//#define NOUSE SOP17_R
//#define NOUSE SOP16_R
//#define NOUSE SOP15_R

//--------------------------------------------------------------------
void establishContact()
{
  while (Serial.available() <= 0)
  {
    Serial.print('A');  // send a capital A
    delay(300);
    if (Serial.read()==(int)'A')
      break;
  }
}
//---------------------------------------------------------------------
void setup()
{
  // start serial port at 9600 bps:
  Serial.begin(115200);
  while (!Serial)
  {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
  establishContact();  // send a byte to establish contact until receiver responds

  // Set all Arduino's digital pins as INPUT mode
  for (uint32_t dPins = 22; dPins < 54; dPins++)
    pinMode( dPins, INPUT);

  // Set Arduino's digital pins to output mode
  //    for DUT's input ports
  pinMode(VDD  , OUTPUT);
  pinMode(RDY  , OUTPUT);
  pinMode(ISIN , OUTPUT);
  pinMode(AIN01, OUTPUT);
  pinMode(AIN00, OUTPUT);
  //pinMode(NOUSE, OUTPUT);
  pinMode(CLK  , OUTPUT);
  pinMode(XIN01, OUTPUT);
  pinMode(XIN00, OUTPUT);
  pinMode(YIN01, OUTPUT);
  pinMode(YIN00, OUTPUT);
  pinMode(STG02, OUTPUT);
  pinMode(STG01, OUTPUT);
  pinMode(STG00, OUTPUT);
  
  pinMode(VSS  , OUTPUT);
  pinMode(VLD  , INPUT );
  pinMode(ISOUT, INPUT );
  pinMode(AOUT1, INPUT );
  pinMode(AOUT0, INPUT );
  //pinMode(NOUSE, OUTPUT);
  //pinMode(NOUSE, OUTPUT);
  pinMode(XOUT1, INPUT);
  pinMode(XOUT0, INPUT);
  pinMode(YOUT1, INPUT);
  pinMode(YOUT0, INPUT);
  //pinMode(NOUSE, OUTPUT);
  //pinMode(NOUSE, OUTPUT);
  //pinMode(NOUSE, OUTPUT);

  // Preset for output pins
  digitalWrite(VDD  , HIGH);
  digitalWrite(RDY  , LOW);
  digitalWrite(ISIN , LOW);
  digitalWrite(AIN01, LOW);
  digitalWrite(AIN00, LOW);
  //digitalWrite(NOUSE, LOW);
  digitalWrite(CLK  , LOW);
  digitalWrite(XIN01, LOW);
  digitalWrite(XIN00, LOW);
  digitalWrite(YIN01, LOW);
  digitalWrite(YIN00, LOW);
  digitalWrite(STG02, LOW);
  digitalWrite(STG01, LOW);
  digitalWrite(STG00, LOW);
  
  digitalWrite(VSS  , LOW);
  //digitalWrite(VLD  , LOW);
  //digitalWrite(ISOUT, LOW);
  //digitalWrite(AOUT1, LOW);
  //digitalWrite(AOUT0, LOW);
  //digitalWrite(NOUSE, LOW);
  //digitalWrite(NOUSE, LOW);
  //digitalWrite(XOUT1, LOW);
  //digitalWrite(XOUT0, LOW);
  //digitalWrite(YOUT1, LOW);
  //digitalWrite(YOUT0, LOW);
  //digitalWrite(NOUSE, LOW);
  //digitalWrite(NOUSE, LOW);
  //digitalWrite(NOUSE, LOW);

  // Monitoring ......
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
}
//---------------------------------------------------------------------
#define N_RX  2
uint8_t rxBuf[N_RX];
// [0] : | clk |S[ 2]|S[ 1]|S[ 0]| (3) | (2) | (1) | (0) |
// [1] : | Rdy | Neg |P[ 1]|P[ 0]|X[ 1]|X[ 0]|Y[ 1]|Y[ 0]|
void RxPacket()
{
  int rxByte;

  while(true)
  {
    // Resceive test vector from SC testbench
    if (Serial.available() >= N_RX)
    {
      for(int i=0; i<N_RX; i++)
      {
        rxByte = Serial.read();
        rxBuf[i] = (uint8_t)rxByte;
      }
      // Apply received test vector to DUT's input ports

      // Set IO firstly -----------------------------
      //digitalWrite(FCW00,	(rxBuf[2]&0x01)? HIGH:LOW);
      //digitalWrite(FCW01, (rxBuf[2]&0x02)? HIGH:LOW);
      //digitalWrite(FCW02, (rxBuf[2]&0x04)? HIGH:LOW);
      //digitalWrite(FCW03, (rxBuf[2]&0x08)? HIGH:LOW);
      digitalWrite(STG00, (rxBuf[0]&0x10)? HIGH:LOW);
      digitalWrite(STG01, (rxBuf[0]&0x20)? HIGH:LOW);
      digitalWrite(STG02, (rxBuf[0]&0x40)? HIGH:LOW);
      //---------------------------------------------
	    digitalWrite(YIN00, (rxBuf[1]&0x01)? HIGH:LOW);
      digitalWrite(YIN01, (rxBuf[1]&0x02)? HIGH:LOW);
      digitalWrite(XIN00, (rxBuf[1]&0x04)? HIGH:LOW);
      digitalWrite(XIN01, (rxBuf[1]&0x08)? HIGH:LOW);
      digitalWrite(AIN00, (rxBuf[1]&0x10)? HIGH:LOW);
      digitalWrite(AIN01, (rxBuf[1]&0x20)? HIGH:LOW);
      digitalWrite(ISIN , (rxBuf[1]&0x40)? HIGH:LOW);
      digitalWrite(RDY  , (rxBuf[1]&0x80)? HIGH:LOW);
      //---------------------------------------------

      // Then Clocking ------------------------------
      digitalWrite(CLK  ,	(rxBuf[0]&0x80)? HIGH:LOW);
      //---------------------------------------------

      return;
    }
  }
}
//---------------------------------------------------------------------
#define N_TX  1
uint8_t txBuf[N_TX];
// [0] : | Vld | Neg |P[ 1]|P[ 0]|X[ 1]|X[ 0]|Y[ 1]|Y[ 0]|
void TxPacket()
{
  int txByte;

  while(1)
  {
    // Capture DUT's output ports
    txBuf[0] = digitalRead(VLD  )<< 7 |
				       digitalRead(ISOUT)<< 6 |
				       digitalRead(AOUT1)<< 5 |
				       digitalRead(AOUT0)<< 4 |
               digitalRead(XOUT1)<< 3 |
				       digitalRead(XOUT0)<< 2 |
               digitalRead(YOUT1)<< 1 |
				       digitalRead(YOUT0)<< 0 ;
    // Send ports' captured value back to SC testbench
    if (Serial.availableForWrite() >= N_TX)
    {
      for(int i=0; i<N_TX; i++)
      {
        txByte = (int)txBuf[i];
        Serial.write(txByte);
      }

      return;
    }
  }
}
//----------------------------------------------------------------
void loop()
{
  RxPacket();
  TxPacket();
}
