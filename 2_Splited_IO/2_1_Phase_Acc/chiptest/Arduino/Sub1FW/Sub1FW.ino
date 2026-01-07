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
#define CLK   SOP02_L
#define EN    SOP03_L
#define FCW00 SOP04_L
#define FCW01 SOP05_L
#define FCW02 SOP06_L
#define FCW03 SOP07_L
#define FCW04 SOP08_L
#define FCW05 SOP09_L
#define FCW06 SOP10_L
#define FCW07 SOP11_L
#define FCW08 SOP12_L
#define FCW09 SOP13_L
#define FCW10 SOP14_L

#define VSS   SOP28_R
#define VLD   SOP27_R
#define ISNEG SOP26_R
#define AOUT1 SOP25_R
#define AOUT0 SOP24_R
#define FCW19 SOP23_R
#define FCW18 SOP22_R
#define FCW17 SOP21_R
#define FCW16 SOP20_R
#define FCW15 SOP19_R
#define FCW14 SOP18_R
#define FCW13 SOP17_R
#define FCW12 SOP16_R
#define FCW11 SOP15_R

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
  pinMode(CLK  , OUTPUT);
  pinMode(EN   , OUTPUT);
  pinMode(FCW00, OUTPUT);
  pinMode(FCW01, OUTPUT);
  pinMode(FCW02, OUTPUT);
  pinMode(FCW03, OUTPUT);
  pinMode(FCW04, OUTPUT);
  pinMode(FCW05, OUTPUT);
  pinMode(FCW06, OUTPUT);
  pinMode(FCW07, OUTPUT);
  pinMode(FCW08, OUTPUT);
  pinMode(FCW09, OUTPUT);
  pinMode(FCW10, OUTPUT);
  
  pinMode(VSS  , OUTPUT);
  pinMode(VLD  , INPUT );
  pinMode(ISNEG, INPUT );
  pinMode(AOUT1, INPUT );
  pinMode(AOUT0, INPUT );
  pinMode(FCW19, OUTPUT);
  pinMode(FCW18, OUTPUT);
  pinMode(FCW17, OUTPUT);
  pinMode(FCW16, OUTPUT);
  pinMode(FCW15, OUTPUT);
  pinMode(FCW14, OUTPUT);
  pinMode(FCW13, OUTPUT);
  pinMode(FCW12, OUTPUT);
  pinMode(FCW11, OUTPUT);

  // Preset for output pins
  digitalWrite(VDD  , HIGH);
  digitalWrite(CLK  , LOW);
  digitalWrite(EN   , LOW);
  digitalWrite(FCW00, LOW);
  digitalWrite(FCW01, LOW);
  digitalWrite(FCW02, LOW);
  digitalWrite(FCW03, LOW);
  digitalWrite(FCW04, LOW);
  digitalWrite(FCW05, LOW);
  digitalWrite(FCW06, LOW);
  digitalWrite(FCW07, LOW);
  digitalWrite(FCW08, LOW);
  digitalWrite(FCW09, LOW);
  digitalWrite(FCW10, LOW);
  
  digitalWrite(VSS  , LOW);
  //pinMode(VLD  , INPUT );
  //pinMode(ISNEG, INPUT );
  //pinMode(AOUT1, INPUT );
  //pinMode(AOUT0, INPUT );
  digitalWrite(FCW19, LOW);
  digitalWrite(FCW18, LOW);
  digitalWrite(FCW17, LOW);
  digitalWrite(FCW16, LOW);
  digitalWrite(FCW15, LOW);
  digitalWrite(FCW14, LOW);
  digitalWrite(FCW13, LOW);
  digitalWrite(FCW12, LOW);
  digitalWrite(FCW11, LOW);

  // Monitoring ......
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
}
//---------------------------------------------------------------------
#define N_RX  3
uint8_t rxBuf[N_RX];
// [0] : | clk | En  | --- | --- |F[19]|F[18]|F[17]|F[16]|
// [1] : |F[15]|F[14]|F[13]|F[12]|F[11]|F[10]|F[ 9]|F[ 8]|
// [2] : |F[ 7]|F[ 6]|F[ 5]|F[ 4]|F[ 3]|F[ 2]|F[ 1]|F[ 0]|
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
      digitalWrite(FCW00,	(rxBuf[2]&0x01)? HIGH:LOW);
      digitalWrite(FCW01, (rxBuf[2]&0x02)? HIGH:LOW);
      digitalWrite(FCW02, (rxBuf[2]&0x04)? HIGH:LOW);
      digitalWrite(FCW03, (rxBuf[2]&0x08)? HIGH:LOW);
      digitalWrite(FCW04, (rxBuf[2]&0x10)? HIGH:LOW);
      digitalWrite(FCW05, (rxBuf[2]&0x20)? HIGH:LOW);
      digitalWrite(FCW06, (rxBuf[2]&0x40)? HIGH:LOW);
      digitalWrite(FCW07, (rxBuf[2]&0x80)? HIGH:LOW);
      //---------------------------------------------
	    digitalWrite(FCW08, (rxBuf[1]&0x01)? HIGH:LOW);
      digitalWrite(FCW09, (rxBuf[1]&0x02)? HIGH:LOW);
      digitalWrite(FCW10, (rxBuf[1]&0x04)? HIGH:LOW);
      digitalWrite(FCW11, (rxBuf[1]&0x08)? HIGH:LOW);
      digitalWrite(FCW12, (rxBuf[1]&0x10)? HIGH:LOW);
      digitalWrite(FCW13, (rxBuf[1]&0x20)? HIGH:LOW);
      digitalWrite(FCW14, (rxBuf[1]&0x40)? HIGH:LOW);
      digitalWrite(FCW15, (rxBuf[1]&0x80)? HIGH:LOW);
      //---------------------------------------------
	    digitalWrite(FCW16, (rxBuf[0]&0x01)? HIGH:LOW);
      digitalWrite(FCW17, (rxBuf[0]&0x02)? HIGH:LOW);
      digitalWrite(FCW18, (rxBuf[0]&0x04)? HIGH:LOW);
      digitalWrite(FCW19, (rxBuf[0]&0x08)? HIGH:LOW);
      digitalWrite(EN   , (rxBuf[0]&0x40)? HIGH:LOW);
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
// [0] : | Vld | Neg | --- | --- | --- | --- |P[ 1]|P[ 0]| 
void TxPacket()
{
  int txByte;

  while(1)
  {
    // Capture DUT's output ports
    txBuf[0] = digitalRead(VLD  )<< 7 |
				       digitalRead(ISNEG)<< 6 |
				       digitalRead(AOUT1)<< 1 |
				       digitalRead(AOUT0)<< 0 ;
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
