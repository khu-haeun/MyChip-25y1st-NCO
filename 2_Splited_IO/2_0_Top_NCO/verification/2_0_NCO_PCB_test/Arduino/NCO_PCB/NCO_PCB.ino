#define CLK   24
#define EN    53
#define MODE  29
#define SELXY 28

#define FCW00 50
#define FCW01 51
#define FCW02 48
#define FCW03 49
#define FCW04 46
#define FCW05 47
#define FCW06 44
#define FCW07 45
#define FCW08 42
#define FCW09 43
#define FCW10 40
#define FCW11 41
#define FCW12 38
#define FCW13 39
#define FCW14 36
#define FCW15 37
#define FCW16 34
#define FCW17 35
#define FCW18 32
#define FCW19 33
#define VLD   54
#define D_11  2
#define D_10  3
#define D_09  4
#define D_08  5
#define D_07  6
#define D_06  7 
#define D_05  8
#define D_04  9
#define D_03  10
#define D_02  11
#define D_01  12
#define D_00  13


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
  //for (uint32_t dPins = 22; dPins < 54; dPins++)
  //  pinMode( dPins, INPUT);

  // Set Arduino's digital pins to output mode
  //    for DUT's input ports
  pinMode(CLK  ,OUTPUT);
  pinMode(EN   ,OUTPUT);
  pinMode(MODE ,OUTPUT);
  pinMode(SELXY,OUTPUT);
  pinMode(FCW00,OUTPUT);
  pinMode(FCW01,OUTPUT);
  pinMode(FCW02,OUTPUT);
  pinMode(FCW03,OUTPUT);
  pinMode(FCW04,OUTPUT);
  pinMode(FCW05,OUTPUT);
  pinMode(FCW06,OUTPUT);
  pinMode(FCW07,OUTPUT);
  pinMode(FCW08,OUTPUT);
  pinMode(FCW09,OUTPUT);
  pinMode(FCW10,OUTPUT);
  pinMode(FCW11,OUTPUT);
  pinMode(FCW12,OUTPUT);
  pinMode(FCW13,OUTPUT);
  pinMode(FCW14,OUTPUT);
  pinMode(FCW15,OUTPUT);
  pinMode(FCW16,OUTPUT);
  pinMode(FCW17,OUTPUT);
  pinMode(FCW18,OUTPUT);
  pinMode(FCW19,OUTPUT);
  pinMode(VLD,INPUT);
  pinMode(D_00,INPUT);
  pinMode(D_01,INPUT);
  pinMode(D_02,INPUT);
  pinMode(D_03,INPUT);
  pinMode(D_04,INPUT);
  pinMode(D_05,INPUT);
  pinMode(D_06,INPUT);
  pinMode(D_07,INPUT);
  pinMode(D_08,INPUT);
  pinMode(D_09,INPUT);
  pinMode(D_10,INPUT);
  pinMode(D_11,INPUT);

  // Preset for output pins
  digitalWrite(CLK,LOW);
  digitalWrite(EN,LOW);
  digitalWrite(MODE,HIGH);
  digitalWrite(SELXY,HIGH);
  digitalWrite(FCW00,LOW);
  digitalWrite(FCW01,LOW);
  digitalWrite(FCW02,LOW);
  digitalWrite(FCW03,LOW);
  digitalWrite(FCW04,LOW);
  digitalWrite(FCW05,LOW);
  digitalWrite(FCW06,LOW);
  digitalWrite(FCW07,LOW);
  digitalWrite(FCW08,LOW);
  digitalWrite(FCW09,LOW);
  digitalWrite(FCW10,LOW);
  digitalWrite(FCW11,LOW);
  digitalWrite(FCW12,LOW);
  digitalWrite(FCW13,LOW);
  digitalWrite(FCW14,LOW);
  digitalWrite(FCW15,LOW);
  digitalWrite(FCW16,LOW);
  digitalWrite(FCW17,LOW);
  digitalWrite(FCW18,LOW);
  digitalWrite(FCW19,LOW);

  // Monitoring ......
  //pinMode(LED_BUILTIN, OUTPUT);
  //digitalWrite(LED_BUILTIN, HIGH);
}
//---------------------------------------------------------------------
#define N_RX  3
uint8_t rxBuf[N_RX];
// [0] : | clk | En  | Mod | Sel |F[19]|F[18]|F[17]|F[16]|
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
	    digitalWrite(SELXY, (rxBuf[0]&0x10)? HIGH:LOW);
      digitalWrite(MODE , (rxBuf[0]&0x20)? HIGH:LOW);
      digitalWrite(EN   , (rxBuf[0]&0x40)? HIGH:LOW);
      //---------------------------------------------
      // Then Clocking ------------------------------
      //delay(100);
      digitalWrite(CLK  ,	(rxBuf[0]&0x80)? HIGH:LOW);
      //---------------------------------------------

      return;
    }
  }
}
//---------------------------------------------------------------------
#define N_TX  2
uint8_t txBuf[N_TX];
// rxPacket[-] | (7) | (6) | (5) | (4) | (3) | (2) | (1) | (0) |
// DATA    [0] | Vld | --- | --- | --- |D[11]|D[10]|D[ 9]|D[ 8]|
//         [1] |D[ 7]|D[ 6]|D[ 5]|D[ 4]|D[ 3]|D[ 2]|D[ 1]|D[ 0]|
void TxPacket()
{
  int txByte;

  while(1)
  {
    // Capture DUT's output ports
    txBuf[0] = digitalRead(VLD)<< 7 |
				       //digitalRead(ISNEG)<< 6 |
				       //digitalRead(ISNEG)<< 5 |
				       //digitalRead(ISNEG)<< 4 |
				       digitalRead(D_11)<< 3 |
				       digitalRead(D_10)<< 2 |
				       digitalRead(D_09)<< 1 |
				       digitalRead(D_08)<< 0 ;
    
    txBuf[1] = digitalRead(D_07)<< 7 |
				       digitalRead(D_06)<< 6 |
				       digitalRead(D_05)<< 5 |
				       digitalRead(D_04)<< 4 |
				       digitalRead(D_03)<< 3 |
				       digitalRead(D_02)<< 2 |
				       digitalRead(D_01)<< 1 |
				       digitalRead(D_00)<< 0 ;


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
